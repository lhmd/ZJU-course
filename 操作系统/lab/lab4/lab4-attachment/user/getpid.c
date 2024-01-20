#include "syscall.h"
#include "stdio.h"

int counter = 0;

static inline long getpid() {
    long ret;
    asm volatile ("li a7, %1\n"
                  "ecall\n"
                  "mv %0, a0\n"
                : "+r" (ret) 
                : "i" (SYS_GETPID));
    return ret;
}

int main() {
    register unsigned long current_sp __asm__("sp");
    while (1) {
        printf("[U-MODE] pid: %ld, sp is %lx, this is print No.%d\n", getpid(), current_sp, ++counter);
        for (unsigned int i = 0; i < 0x4FFFFFFF; i++);
    }

    return 0;
}
