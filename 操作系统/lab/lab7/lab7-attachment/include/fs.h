#ifndef _FS_H
#define _FS_H

#include <defs.h>
// #include <fat32.h>

#define MAX_PATH_LENGTH 80
#define MAX_FILE_NUMBER (PGSIZE / sizeof(file_open))

#define SEEK_SET 0
#define SEEK_CUR 1
#define SEEK_END 2

#define ERROR_FILE_NOT_OPEN 255

#define FILE_READABLE 0x1
#define FILE_WRITABLE 0x2

#define FS_TYPE_FAT32 0x1
#define FS_TYPE_EXT2  0x2

struct fat32_dir {
	uint32_t cluster;
    // entry index in the cluster
    uint32_t index;
};

struct fat32_file {
    uint32_t cluster;
    struct fat32_dir dir;
};

// Opened file in a thread.
struct file {
    uint32_t opened;
    uint32_t perms;
    int64_t cfo;
    uint32_t fs_type;

    union {
        struct fat32_file fat32_file;
    };

    int64_t (*lseek) (struct file* file, int64_t offset, uint64_t whence);
    int64_t (*write) (struct file* file, const void* buf, uint64_t len);
    int64_t (*read)  (struct file* file, void* buf, uint64_t len);

    char path[MAX_PATH_LENGTH];
};

// Return a file array, that can contain MAX_FILE_NUMBER opened files.
struct file* file_init();

void file_open(struct file* file, const char* path, int flags);

struct volumn {};

#endif