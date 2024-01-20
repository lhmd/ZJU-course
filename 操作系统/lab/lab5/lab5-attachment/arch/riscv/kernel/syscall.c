#include "syscall.h"

extern struct task_struct *current;

uint64 sys_write(unsigned int fd, const char* buf, size_t count) {
    if (fd != STDOUT) {
        printk("sys_write: fd != STDOUT\n");
        return -1;
    }
    if (count <= 0) {
        printk("sys_write: count <= 0\n");
        return -1;
    }
    uint64 cnt = printk("%s", buf);
    return cnt;
}

uint64 sys_getpid() {
    return current->pid;
}