#include "syscall.h"
#include "stdio.h"


static inline long getpid() {
    long ret;
    asm volatile ("li a7, %1\n"
                  "ecall\n"
                  "mv %0, a0\n"
                : "+r" (ret) 
                : "i" (SYS_GETPID));
    return ret;
}

static inline long fork()
{
  long ret;
  asm volatile ("li a7, %1\n"
                "ecall\n"
                "mv %0, a0\n"
                : "+r" (ret) : "i" (SYS_CLONE));
  return ret;
}

int global_variable = 0;

// int main() {

//   int pid;

//     while(1) {
//         printf("[PID = %d] is running, variable: %d\n", getpid(), global_variable++);
//         for (unsigned int i = 0; i < 0x7FFFFFF; i++);
//     }
// }

/*
    Test your `fork` using the following `main`s
*/
// int main() {
//     int pid;

//     pid = fork();

//     if (pid == 0) {
//         while (1) {
//             printf("[U-CHILD] pid: %ld is running!, global_variable: %d\n", getpid(), global_variable++);
//             for (unsigned int i = 0; i < 0x7FFFFFF; i++);
//         } 
//     } else {
//         while (1) {
//             printf("[U-PARENT] pid: %ld is running!, global_variable: %d\n", getpid(), global_variable++);
//             for (unsigned int i = 0; i < 0x7FFFFFF; i++);
//         } 
//     }
//     return 0;
// }

// int main() {
//     int pid;

//     for (int i = 0; i < 3; i++)
//         printf("[U] pid: %ld is running!, global_variable: %d\n", getpid(), global_variable++);

//     pid = fork();

//     if (pid == 0) {
//         while (1) {
//             printf("[U-CHILD] pid: %ld is running!, global_variable: %d\n", getpid(), global_variable++);
//             for (unsigned int i = 0; i < 0x7FFFFFF; i++);
//         } 
//     } else {
//         while (1) {
//             printf("[U-PARENT] pid: %ld is running!, global_variable: %d\n", getpid(), global_variable++);
//             for (unsigned int i = 0; i < 0x7FFFFFF; i++);
//         } 
//     }
//     return 0;
// }

int main() {

    printf("[U] pid: %ld is running!, global_variable: %d\n", getpid(), global_variable++);
    fork();

    printf("[U] pid: %ld is running!, global_variable: %d\n", getpid(), global_variable++);
    fork();

    while(1) {
        printf("[U] pid: %ld is running!, global_variable: %d\n", getpid(), global_variable++);
        for (unsigned int i = 0; i < 0x7FFFFFF; i++);
    }
}

// #define LARGE 1000

// unsigned long something_large_here[LARGE] = {0};

// int fib(int times) {
//   if (times <= 2) {
//     return 1;
//   } else {
//     return fib(times - 1) + fib(times - 2);
//   }
// }

// int main() {
//   for (int i = 0; i < LARGE; i++) {
//     something_large_here[i] = i;
//   }
//   int pid = fork();
//   printf("[U] fork returns %d\n", pid);

//   if (pid == 0) {
//     while(1) {
//       printf("[U-CHILD] pid: %ld is running! the %dth fibonacci number is %d and the number @ %d in the large array is %d\n", getpid(), global_variable, fib(global_variable), LARGE - global_variable, something_large_here[LARGE - global_variable]);
//       global_variable++;
//       for (int i = 0; i < 0xFFFFFF; i++);
//     }
//   } else {
//     while (1) {
//       printf("[U-PARENT] pid: %ld is running! the %dth fibonacci number is %d and the number @ %d in the large array is %d\n", getpid(), global_variable, fib(global_variable), LARGE - global_variable, something_large_here[LARGE - global_variable]);
//       global_variable++;
//       for (int i = 0; i < 0xFFFFFF; i++);
//     }
//   }
// }