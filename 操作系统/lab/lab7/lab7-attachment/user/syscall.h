#ifndef _SYSCALL_H
#define _SYSCALL_H

#define SYS_OPENAT  56
#define SYS_CLOSE   57
#define SYS_LSEEK   62
#define SYS_READ    63
#define SYS_WRITE   64
#define SYS_GETPID  172
#define SYS_CLONE   220

typedef unsigned long uint64_t;

// uint64_t sys_write(unsigned int fd, const char* buf, uint64_t count);

// uint64_t sys_getpid();

#endif