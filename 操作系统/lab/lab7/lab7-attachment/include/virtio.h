#ifndef _VIRTIO_H
#define _VIRTIO_H

#include <defs.h>
#include <vm.h>
#include <printk.h>

#define DEVICE_ACKNOWLEDGE 1
#define DEVICE_DRIVER 2
#define DEVICE_DRIVER_OK 4
#define DEVICE_FEATURES_OK 8
#define DEVICE_NEEDS_RESET 64
#define DEVICE_FAILED 128

#define ID_VIRTIO_BLK 2
// #define VIRTIO_QUEUE_NUM 16

#define VIRTIO_QUEUE_SIZE 16
#define VIRTIO_BLK_SECTOR_SIZE 512

/* This marks a buffer as continuing via the next field. */
#define VIRTQ_DESC_F_NEXT       1
/* This marks a buffer as write-only (otherwise read-only). */
#define VIRTQ_DESC_F_WRITE      2
/* This means the buffer contains a list of buffer descriptors. */
#define VIRTQ_DESC_F_INDIRECT   4

/* The device uses this in used->flags to advise the driver: don't kick me
 * when you add a buffer.  It's unreliable, so it's simply an
 * optimization. */
#define VIRTQ_USED_F_NO_NOTIFY  1
/* The driver uses this in avail->flags to advise the device: don't
 * interrupt me when you consume a buffer.  It's unreliable, so it's
 * simply an optimization.  */
#define VIRTQ_AVAIL_F_NO_INTERRUPT      1

/* Support for indirect descriptors */
#define VIRTIO_F_INDIRECT_DESC    28

/* Support for avail_event and used_event fields */
#define VIRTIO_F_EVENT_IDX        29

/* Arbitrary descriptor layouts. */
#define VIRTIO_F_ANY_LAYOUT       27


#define VIRTIO_START (0x10001000)
#define VIRTIO_SIZE  (0x1000)
#define VIRTIO_COUNT (8)
#define IOMAP_OFFSET (0xffffffc800000000)

struct virtio_regs {
	uint32_t MagicValue;
	uint32_t Version;
	uint32_t DeviceID;
	uint32_t VendorID;
	uint32_t DeviceFeatures;
	uint32_t DeviceFeaturesSel;
	uint32_t _reserved0[2];
	uint32_t DriverFeatures;
	uint32_t DriverFeaturesSel;
	uint32_t _reserved1[2];
	uint32_t QueueSel;
	uint32_t QueueNumMax;
	uint32_t QueueNum;
	uint32_t _reserved2[2];
	uint32_t QueueReady;
	uint32_t _reserved3[2];
	uint32_t QueueNotify;
	uint32_t _reserved4[3];
	uint32_t InterruptStatus;
	uint32_t InterruptACK;
	uint32_t _reserved5[2];
	uint32_t Status;
	uint32_t _reserved6[3];
	uint32_t QueueDescLow;
	uint32_t QueueDescHigh;
	uint32_t _reserved7[2];
	uint32_t QueueAvailLow;
	uint32_t QueueAvailHigh;
	uint32_t _reserved8[2];
	uint32_t QueueUsedLow;
	uint32_t QueueUsedHigh;
	uint32_t _reserved9[21];
	uint32_t ConfigGeneration;
	uint32_t Config[0];
};

struct virtio_desc {
	uint64_t addr;
	uint32_t len;
	uint16_t flags;
	uint16_t next;
};

struct virtio_avail {
	uint16_t flags;
	uint16_t idx;
	uint16_t ring[VIRTIO_QUEUE_SIZE];
	uint16_t used_event;
};

struct virtio_used_elem {
	uint32_t id;
	uint32_t len;
};

struct virtio_used {
	uint16_t flags;
	uint16_t idx;
	struct virtio_used_elem ring[VIRTIO_QUEUE_SIZE];
	uint16_t avail_event;
};

struct vring {
	uint16_t num;
	struct virtio_desc *desc;
	struct virtio_avail *avail;
	struct virtio_used *used;
};

struct virtio_blk_req {
        uint32_t type;
        uint32_t reserved;
        uint64_t sector;
        // uint8_t  status;
};

struct virtio_blk_config {
	uint32_t capacity_lo;
	uint32_t capacity_hi;
	uint32_t size_max;
	uint32_t seg_max;
	uint16_t geometry[4];
	uint32_t blk_size;
	uint8_t  physical_block_exp;
	uint8_t  alignment_offset;
	uint16_t min_io_size;
	uint32_t opt_io_size;
	uint8_t  wce;
	uint8_t  unused;
	uint16_t num_queues;
	uint32_t reserved;
};

enum blk_request_type {
	VIRTIO_BLK_T_IN = 0,
	VIRTIO_BLK_T_OUT = 1,
	/* This bit says it's a scsi command, not an actual read or write. */
	VIRTIO_BLK_T_SCSI_CMD = 2,
	/* Cache flush command */
	VIRTIO_BLK_T_FLUSH = 4,
	/* Get device ID command */
	VIRTIO_BLK_T_GET_ID = 8,
	/* Barrier before this op. */
	VIRTIO_BLK_T_BARRIER = 0x80000000,
};
 

static inline uint32_t in32(uint32_t *memory_address) {
    uint32_t result;
    asm volatile (
        "lw %0, 0(%1)"  // Load 32-bit value from memory into result
        : "=r" (result) // Output constraint - tells the compiler to put the output in 'result'
        : "r" (memory_address) // Input constraint - memory_address is used as the memory location
    );
    return result;
}

static inline void out32(uint32_t *memory_address, uint32_t data) {
    asm volatile (
        "sw %0, 0(%1)"  // Store 32-bit value from data to the memory address
        :
        : "r" (data), "r" (memory_address) // Inputs: data and memory_address
    );
}

int virtio_dev_test(uint64_t virtio_addr);
void virtio_dev_init();


void vring_init(struct vring *vr, uint32_t num, void *p, uint64_t align);

void virtio_blk_read_sector(uint64_t sector, void* buf);

void virtio_blk_write_sector(uint64_t sector, const void *buf);

static inline void memory_barrier() {
  asm volatile ("fence rw, rw"); // Full memory fence for both read and write
}

static inline uint64_t io_to_virt(uint64_t pa) {
    return pa + IOMAP_OFFSET;
}

#endif