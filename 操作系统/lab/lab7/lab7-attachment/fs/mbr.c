#include <mbr.h>
#include <virtio.h>
#include <fat32.h>

uint8_t mbr_buf[VIRTIO_BLK_SECTOR_SIZE];

struct partition_info partitions[MBR_MAX_PARTITIONS];

void mbr_init() {
    virtio_blk_read_sector(0, mbr_buf);
    struct mbr_layout *mbr = (struct mbr_layout *)mbr_buf;
    for (int i = 0; i < 4; i++) {
        if (mbr->partition_table[i].type == 0x83) {
            uint32_t lba = mbr->partition_table[i].lba_first_sector;
            // virtio_blk_read_sector(lba, mbr_buf);
            // printk("[S] Detect partition%d offset: %d, len:%d, type:%x\n", i+1, lba, mbr->partition_table[i].sector_count, mbr->partition_table[i].type);
            partition_init(i + 1, lba, mbr->partition_table[i].sector_count);
        }
    }
}

void partition_init(int partion_number, uint64_t start_lba, uint64_t sector_count) {
    if (is_fat32(start_lba)) {
        fat32_init(start_lba, sector_count);
        printk("[S] fat32 partition init done!\n", partion_number);
    }
}