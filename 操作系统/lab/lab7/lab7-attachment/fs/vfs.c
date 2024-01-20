#include <fs.h>
#include <proc.h>
#include <mm.h>
#include <string.h>
#include <printk.h>
#include <sbi.h>
#include <fat32.h>

int64_t stdout_write(struct file* file, const void* buf, uint64_t len);
int64_t stderr_write(struct file* file, const void* buf, uint64_t len);
int64_t stdin_read(struct file* file, void* buf, uint64_t len);

struct file* file_init() {
    struct file *ret = (struct file*)alloc_page();

    // stdin
    ret[0].opened = 1;
    ret[0].perms = FILE_READABLE;
    ret[0].cfo = 0;
    ret[0].lseek = NULL;
    ret[0].write = NULL;
    ret[0].read = stdin_read;
    memcpy(ret[0].path, "stdin", 6);

    // stdout
    ret[1].opened = 1;
    ret[1].perms = FILE_WRITABLE;
    ret[1].cfo = 0;
    ret[1].lseek = NULL;
    ret[1].write = stdout_write;
    ret[1].read = NULL;
    memcpy(ret[1].path, "stdout", 7);

    // stderr
    ret[2].opened = 1;
    ret[2].perms = FILE_WRITABLE;
    ret[2].cfo = 0;
    ret[2].lseek = NULL;
    ret[2].write = stderr_write;
    ret[2].read = NULL;
    memcpy(ret[2].path, "stderr", 7);

    return ret;
}

char uart_getchar() {
    char ret;
    while (1) {
        struct sbiret sbi_result = sbi_ecall(SBI_GETCHAR, 0, 0, 0, 0, 0, 0, 0);
        if (sbi_result.error != -1) {
            ret = sbi_result.error;
            break;
        }
    }
    return ret;
}

int64_t stdin_read(struct file* file, void* buf, uint64_t len) {
    char* buf_c = (char*)buf;
    for (int i = 0; i < len; i++) {
        char c = uart_getchar();
        if (c == '\0') {
            i--;
            continue;
        }
        buf_c[i] = c;
    }
    return len;
}

int64_t stdout_write(struct file* file, const void* buf, uint64_t len) {
    char to_print[len + 1];
    for (int i = 0; i < len; i++) {
        to_print[i] = ((const char*)buf)[i];
    }
    to_print[len] = 0;
    return printk(buf);
}

int64_t stderr_write(struct file* file, const void* buf, uint64_t len) {
    char to_print[len + 1];
    for (int i = 0; i < len; i++) {
        to_print[i] = ((const char*)buf)[i];
    }
    to_print[len] = 0;
    return printk(buf);
}

uint32_t get_fs_type(const char* filename) {
    uint32_t ret;
    if (memcmp(filename, "/fat32/", 7) == 0) {
        ret = FS_TYPE_FAT32;
    } else if (memcmp(filename, "/ext2/", 6) == 0) {
        ret = FS_TYPE_EXT2;
    } else {
        printk("Unknown fs type: %s\n", filename);
        while (1);
    }
    return ret;
}

void file_open(struct file* file, const char* path, int flags) {
    file->opened = 1;
    file->perms = flags;
    file->cfo = 0;
    file->fs_type = get_fs_type(path);
    memcpy(file->path, path, strlen(path) + 1);

    if (file->fs_type == FS_TYPE_FAT32) {
        file->lseek = fat32_lseek;
        file->write = fat32_write;
        file->read = fat32_read;
        file->fat32_file = fat32_open_file(path);
    } else if (file->fs_type == FS_TYPE_EXT2) {
        // file->lseek = ext2_lseek;
        printk("Unsupport ext2\n");
        while (1);
        // file->write = ext2_write;
        // file->read = ext2_read;
    } else {
        printk("Unknown fs type: %s\n", path);
        while (1);
    }
    // file->cfo = fat32_open(filename, flags);
    // memcpy(file->path, filename);
}