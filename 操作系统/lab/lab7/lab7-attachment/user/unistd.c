#include "unistd.h"
#include "syscall.h"

int64_t write(int fd, const void *buf, uint64_t count) {
    char temp_buf[count + 1];
    for (int i = 0; i < count; i++) {
        temp_buf[i] = ((char*)buf)[i];
    }
    temp_buf[count] = 0;

    long syscall_ret;
    asm volatile ("li a7, %1\n"
                  "mv a0, %2\n"
                  "mv a1, %3\n"
                  "mv a2, %4\n"
                  "ecall\n"
                  "mv %0, a0\n"
                  : "+r" (syscall_ret)
                  : "i" (SYS_WRITE), "r" (fd), "r" (&temp_buf), "r" (count));
    return syscall_ret;
}

int64_t read(int fd, void *buf, uint64_t count) {
    long syscall_ret;
    asm volatile ("li a7, %1\n"
                  "mv a0, %2\n"
                  "mv a1, %3\n"
                  "mv a2, %4\n"
                  "ecall\n"
                  "mv %0, a0\n"
                  : "+r" (syscall_ret)
                  : "i" (SYS_READ), "r" (fd), "r" (buf), "r" (count));
    return syscall_ret;   
}

int64_t sys_openat(int dfd, char *filename, int flags) {
    long syscall_ret;
    asm volatile ("li a7, %1\n"
                  "mv a0, %2\n"
                  "mv a1, %3\n"
                  "mv a2, %4\n"
                  "ecall\n"
                  "mv %0, a0\n"
                  : "+r" (syscall_ret)
                  : "i" (SYS_OPENAT), "r" (dfd), "r" (filename), "r" (flags));
    return syscall_ret;   
}

int64_t open(char *filename, int flags) {
    return sys_openat(AT_FDCWD, filename, flags);
}

int close(int fd) {
    long syscall_ret;
    asm volatile ("li a7, %1\n"
                  "mv a0, %2\n"
                  "ecall\n"
                  "mv %0, a0\n"
                  : "+r" (syscall_ret)
                  : "i" (SYS_CLOSE), "r" (fd));
    return syscall_ret;
}

int64_t lseek(int fd, int64_t offset, int whence) {
    long syscall_ret;
    asm volatile ("li a7, %1\n"
                  "mv a0, %2\n"
                  "mv a1, %3\n"
                  "mv a2, %4\n"
                  "ecall\n"
                  "mv %0, a0\n"
                  : "+r" (syscall_ret)
                  : "i" (SYS_LSEEK), "r" (fd), "r" (offset), "r" (whence));
    return syscall_ret;
}