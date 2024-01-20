#ifndef _MBR_H
#define _MBR_H

#include <defs.h>

#define FAT_ENTRY_SIZE 32
#define FAT_PARTITION_NUMBER 1
#define EXT_PARTITION_NUMBER 2

struct __attribute__((packed)) partition_entry {
    uint8_t status;
    uint8_t chs_first_sector[3];
    uint8_t type;
    uint8_t chs_last_sector[3];
    uint32_t lba_first_sector;
    uint32_t sector_count;
};

struct __attribute__((packed)) mbr_layout {
    uint8_t boot_code[446];
    struct partition_entry partition_table[4];
    uint8_t signature[2];
};

struct __attribute__((packed)) ext2_super_block {
    uint32_t s_inodes_count;
    uint32_t s_blocks_count;
    uint32_t s_r_blocks_count;
    uint32_t s_free_blocks_count;
    uint32_t s_free_inodes_count;
    uint32_t s_first_data_block;
    uint32_t s_log_block_size;
    uint32_t s_log_frag_size;
    uint32_t s_blocks_per_group;
    uint32_t s_frags_per_group;
    uint32_t s_inodes_per_group;
    uint32_t s_mtime;
    uint32_t s_wtime;
    uint16_t s_mnt_count;
    uint16_t s_max_mnt_count;
    uint16_t s_magic;
    uint16_t s_state;
    uint16_t s_errors;
    uint16_t s_minor_rev_level;
    uint32_t s_lastcheck;
    uint32_t s_checkinterval;
    uint32_t s_creator_os;
    uint32_t s_rev_level;
    uint16_t s_def_resuid;
    uint16_t s_def_resgid;
    uint32_t s_first_ino;
    uint16_t s_inode_size;
    uint16_t s_block_group_nr;
    uint32_t s_feature_compat;
    uint32_t s_feature_incompat;
    uint32_t s_feature_ro_compat;
    uint8_t s_uuid[16];
    uint8_t s_volume_name[16];
    uint8_t s_last_mounted[64];
    uint32_t s_algorithm_usage_bitmap;
    uint8_t s_prealloc_blocks;
    uint8_t s_prealloc_dir_blocks;
    uint16_t s_padding1;
    uint8_t s_journal_uuid[16];
    uint32_t s_journal_inum;
    uint32_t s_journal_dev;
    uint32_t s_last_orphan;
    uint32_t s_hash_seed[4];
    uint8_t s_def_hash_version;
    uint8_t s_reserved_char_pad;
    uint16_t s_reserved_word_pad;
    uint32_t s_default_mount_opts;
    uint32_t s_first_meta_bg;
    uint8_t s_reserved[760];
};

struct partition_info {
	uint32_t lba;
	uint32_t size;
	uint8_t status;
	uint8_t type;
};

#define MBR_MAX_PARTITIONS 4

void mbr_init();

void partition_init(int partion_number, uint64_t start_lba, uint64_t sector_count);

// void bpb_print(struct bpb_layout *bpb);

#endif