#ifndef _UNISTD_H
#define _UNISTD_H

#include "stddef.h"

#define AT_FDCWD	-100 
#define O_RDONLY    0x0001
#define O_WRONLY    0x0002
#define O_RDWR      0x0003

#define SEEK_SET    0x0001
#define SEEK_CUR    0x0002
#define SEEK_END    0x0003

int64_t open(char *filename, int flags);
int64_t write(int fd, const void *buf, uint64_t count);
int64_t read(int fd, void *buf, uint64_t count);
int close(int fd);
int64_t lseek(int fd, int64_t offset, int whence);

#endif