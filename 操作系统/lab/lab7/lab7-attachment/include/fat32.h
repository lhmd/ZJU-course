#ifndef _FAT32_H
#define _FAT32_H

#include <defs.h>
// #include <fs.h>
#include <fs.h>


struct __attribute__((packed)) fat32_bpb {
    uint8_t jmp_boot[3];
    uint8_t oem_name[8];
    uint16_t bytes_per_sec;
    uint8_t sec_per_clus;
    uint16_t rsvd_sec_cnt;
    uint8_t num_fats;
    uint16_t root_ent_cnt;
    uint16_t tot_sec16;
    uint8_t media;
    uint16_t fat_sz16;
    uint16_t sec_per_trk;
    uint16_t num_heads;
    uint32_t hidd_sec;
    uint32_t tot_sec32;
    uint32_t fat_sz32;
    uint16_t ext_flags;
    uint16_t fs_ver;
    uint32_t root_clus;
    uint16_t fs_info;
    uint16_t bk_boot_sec;
    uint8_t reserved[12];
    uint8_t drv_num;
    uint8_t reserved1;
    uint8_t boot_sig;
    uint32_t vol_id;
    uint8_t vol_lab[11];
    uint8_t fil_sys_type[8];
    uint8_t boot_code[420];
    uint16_t boot_sector_signature;
};

struct fat32_volume {
    uint64_t first_data_sec;
    uint64_t first_fat_sec;
    uint64_t sec_per_cluster;
    uint64_t fat_sz;
};

struct fat32_dir_entry {
    uint8_t name[8];
    uint8_t ext[3];
    uint8_t attr;
    uint8_t lcase;
    uint8_t ctime_cs;
    uint16_t ctime;
    uint16_t cdate;
    uint16_t adate;
    uint16_t starthi;
    uint16_t time;
    uint16_t date;
    uint16_t startlow;
    uint32_t size;
};

void dump_fat32_bpb(struct fat32_bpb *bpb);

void fat32_init(uint64_t lba, uint64_t size);

int is_fat32(uint64_t lba);

// void fat32_open_dir(struct fat32_dir* dir, const char* path);

struct fat32_file fat32_open_file(const char *path);

int64_t fat32_lseek(struct file* file, int64_t offset, uint64_t whence);
int64_t fat32_write(struct file* file, const void* buf, uint64_t len);
int64_t fat32_read(struct file* file, void* buf, uint64_t len);

#define FAT32_ENTRY_PER_SECTOR (VIRTIO_BLK_SECTOR_SIZE / sizeof(struct fat32_dir_entry))

#endif