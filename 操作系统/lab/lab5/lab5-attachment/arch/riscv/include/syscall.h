#ifndef _SYS_SYSCALL_H
#define _SYS_SYSCALL_H

#include "types.h"
#include "printk.h"
#include "proc.h"

#define STDOUT 1
#define SYS_WRITE 64
#define SYS_GETPID 172

uint64 sys_write(unsigned int fd, const char* buf, size_t count);
uint64 sys_getpid();

#endif