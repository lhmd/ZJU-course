#include <virtio.h>
#include <mm.h>
#include <debug.h>
#include <clock.h>

uint64 virt_to_phys(uint64 va) {
    return va - PA2VA_OFFSET;
}

volatile struct virtio_regs * virtio_blk_regs = NULL;
struct vring virtio_blk_ring;
uint64_t virtio_blk_capacity;

void virtio_blk_driver_init() {
    virtio_blk_regs->Status = 0;
    virtio_blk_regs->Status |= DEVICE_ACKNOWLEDGE;
    virtio_blk_regs->Status |= DEVICE_DRIVER;
    memory_barrier();

    // printk("[S] virtio_blk_regs->Status: %08x\n", virtio_blk_regs->Status);

    memory_barrier();

    // printk("[S] virtio_blk_regs->Status: %08x\n", virtio_blk_regs->Status);

    // printk("[S] virtio_blk_regs->QueueNumMax: %08x\n", virtio_blk_regs->QueueNumMax);
    memory_barrier();
}

void virtio_blk_feature_init() {
    virtio_blk_regs->DeviceFeaturesSel = 0;
    virtio_blk_regs->DeviceFeaturesSel = 1;
    virtio_blk_regs->DriverFeaturesSel = 0;
    virtio_blk_regs->DriverFeatures = 0x30000200;
    virtio_blk_regs->DriverFeaturesSel = 1;
    virtio_blk_regs->DriverFeatures = 0x0;


    virtio_blk_regs->Status |= DEVICE_FEATURES_OK;
    memory_barrier();
    // printk("[S] virtio_blk_regs->DeviceFeatures: %08x\n", virtio_blk_regs->DeviceFeatures);

    // printk("[S] virtio_blk_regs->DriverFeatures: %08x\n", virtio_blk_regs->DriverFeatures);
}

void virtio_blk_queue_init() {
    virtio_blk_ring.num = VIRTIO_QUEUE_SIZE;
    
    uint64_t size_of_descs = VIRTIO_QUEUE_SIZE * sizeof(struct virtio_desc);
    uint64_t size_of_avail = sizeof(struct virtio_avail);
    uint64_t size_of_used = sizeof(struct virtio_used);

    uint64_t pages = alloc_pages(3);
    virtio_blk_ring.desc = (struct virtio_desc*)(pages);
    virtio_blk_ring.avail = (struct virtio_avail*)(pages + PGSIZE);
    virtio_blk_ring.used = (struct virtio_used*)(pages + 2*PGSIZE);

    virtio_blk_ring.avail->flags = VIRTQ_AVAIL_F_NO_INTERRUPT;

    for (int i = 1; i < VIRTIO_QUEUE_SIZE; i++) {
        virtio_blk_ring.desc[i - 1].next = i;
    }

    virtio_blk_regs->QueueSel = 0;
    virtio_blk_regs->QueueNum = VIRTIO_QUEUE_SIZE;
    virtio_blk_regs->QueueAvailLow = 0xffffffff & virt_to_phys((uint64_t)virtio_blk_ring.avail);
    virtio_blk_regs->QueueAvailHigh = virt_to_phys((uint64_t)virtio_blk_ring.avail) >> 32;
    virtio_blk_regs->QueueDescLow = 0xffffffff & virt_to_phys((uint64_t)virtio_blk_ring.desc);
    virtio_blk_regs->QueueDescHigh = virt_to_phys((uint64_t)virtio_blk_ring.desc) >> 32;
    virtio_blk_regs->QueueUsedLow = 0xffffffff & virt_to_phys((uint64_t)virtio_blk_ring.used);
    virtio_blk_regs->QueueUsedHigh = virt_to_phys((uint64_t)virtio_blk_ring.used) >> 32;
    memory_barrier();

    // virtio_blk_regs->Queue

    virtio_blk_regs->QueueReady = 1;
    memory_barrier();
}

void virtio_blk_config_init() {
    volatile struct virtio_blk_config *config = (struct virtio_blk_config*)(&virtio_blk_regs->Config);
    uint64_t capacity = ((uint64_t)config->capacity_hi << 32) | config->capacity_lo;
    // printk("[S] virtio-blk Disk Capacity: %016llx\n", capacity);
}

// char virtio_blk_buf[VIRTIO_BLK_SECTOR_SIZE];
char virtio_blk_status;
struct virtio_blk_req virtio_blk_req;

void virtio_blk_cmd(uint32_t type, uint32_t sector, void* buf) {

    // printk("avail->idx: %d, used->idx: %d\n", virtio_blk_ring.avail->idx, virtio_blk_ring.used->idx);

    // for (int i = 1; i < VIRTIO_QUEUE_SIZE; i++) {
    //     virtio_blk_ring.desc[i - 1].next = i;
    // }

	virtio_blk_req.type = type;
    virtio_blk_req.sector = sector;

    virtio_blk_ring.desc[0].addr = virt_to_phys((uint64_t)&virtio_blk_req);
    virtio_blk_ring.desc[0].len = sizeof(struct virtio_blk_req);
    virtio_blk_ring.desc[0].flags = VIRTQ_DESC_F_NEXT;
    virtio_blk_ring.desc[0].next = 1;

    virtio_blk_ring.desc[1].addr = virt_to_phys((uint64_t)buf);
    virtio_blk_ring.desc[1].len = VIRTIO_BLK_SECTOR_SIZE;
    if (type == VIRTIO_BLK_T_IN) {
        virtio_blk_ring.desc[1].flags = VIRTQ_DESC_F_WRITE | VIRTQ_DESC_F_NEXT; 
    } else {
        virtio_blk_ring.desc[1].flags = VIRTQ_DESC_F_NEXT;
    }
    virtio_blk_ring.desc[1].next = 2;

    virtio_blk_ring.desc[2].addr = virt_to_phys((uint64_t)&virtio_blk_status);
    virtio_blk_ring.desc[2].len = sizeof(virtio_blk_status);
    virtio_blk_ring.desc[2].flags = VIRTQ_DESC_F_WRITE;

    virtio_blk_regs->Status |= DEVICE_DRIVER_OK;

    virtio_blk_ring.avail->ring[(virtio_blk_ring.avail->idx + 1) % VIRTIO_QUEUE_SIZE] = 0;
    virtio_blk_ring.avail->idx += 1;

    virtio_blk_regs->QueueNotify = 0;
    memory_barrier();
}

void virtio_blk_read_sector(uint64_t sector, void *buf) {
    uint64_t original_idx = virtio_blk_ring.used->idx;
    virtio_blk_cmd(VIRTIO_BLK_T_IN, sector, buf);
    while (1) {
        if (virtio_blk_ring.used->idx != original_idx) {
            break;
        } else {
            // printk("[S] wait for disk read  to finish...\n");
        }
    }
    // printk("[S] virtio_blk_ring.used len: %d\n", virtio_blk_ring.desc[virtio_blk_ring.used->ring[virtio_blk_ring.used->idx].id].len);
    uint64_t used_index = (virtio_blk_ring.used->idx - 1) % VIRTIO_QUEUE_SIZE;
    uint64_t used_len = virtio_blk_ring.used->ring[used_index].len;
    // printk("[S] used_len: %d\n", used_len);
    uint64_t descriptor_id = virtio_blk_ring.used->ring[used_index].id;
    uint64_t descriptor_len = virtio_blk_ring.desc[descriptor_id].len;
}

void virtio_blk_write_sector(uint64_t sector, const void *buf) {
    uint64_t original_idx = virtio_blk_ring.used->idx;
    // virtio_blk_cmd(VIRTIO_BLK_T_IN | VIRTIO_BLK_T_OUT, sector, (void*)buf);
    virtio_blk_cmd(VIRTIO_BLK_T_OUT, sector, (void*)buf);
    while (1) {
        if (virtio_blk_ring.used->idx != original_idx) {
            break;
        } else {
            // printk("[S] wait for disk write to finish...\n");
        }
    }
    uint64_t used_index = (virtio_blk_ring.used->idx - 1) % VIRTIO_QUEUE_SIZE;
    uint64_t used_len = virtio_blk_ring.used->ring[used_index].len;
    // printk("[S] used_len: %d\n", used_len);
    uint64_t descriptor_id = virtio_blk_ring.used->ring[used_index].id;
    uint64_t descriptor_len = virtio_blk_ring.desc[descriptor_id].len;
}

void virtio_blk_init() {

    // First, tell the device that the driver is ok
    virtio_blk_driver_init();
    // Second, initialize the features
    virtio_blk_feature_init();
    // Then, initialize the configs
    virtio_blk_config_init();
    // Now, start initialize the vring
    virtio_blk_queue_init();

    // virtio_blk_cmd(VIRTIO_BLK_T_IN, 1);
    char buf[VIRTIO_BLK_SECTOR_SIZE];

    virtio_blk_read_sector(0, buf);
    // dump_memory((uint64_t)buf, 512);

    // test if the disk is added properly
    char boot_signature[2];
    boot_signature[0] = buf[510];
    boot_signature[1] = buf[511];

    if (boot_signature[0] != 0x55 || boot_signature[1] != 0xaa) {
        printk("[S] mbr boot signature not found!\n");
        while (1);
    } else {
        // printk("[S] mbr boot signature found!\n");
    }

    printk("[S] virtio_blk_init done!\n");
}

int virtio_dev_test(uint64_t virtio_addr) {
    void *virtio_space = (char*)(virtio_addr);

    struct virtio_regs *virtio_header = virtio_space;
    if (in32(&virtio_header->DeviceID) == ID_VIRTIO_BLK) {
        // printk("[S] virtio_blk found!\n");
        virtio_blk_regs = virtio_space;
    }

    return 0;
}

void virtio_dev_init() {
    for (int i = 0; i < VIRTIO_COUNT; i++) {
        uint64_t addr = VIRTIO_START + i * VIRTIO_SIZE;
        virtio_dev_test(io_to_virt(addr));
    }

    if (virtio_blk_regs) {
        virtio_blk_init();
    }
}