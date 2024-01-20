// arch/riscv/include/proc.h
#ifndef __PROC_H
#define __PROC_H
#include "types.h"

#define NR_TASKS  (1 + 3) // 用于控制 最大线程数量 （idle 线程 + 31 内核线程）

#define TASK_RUNNING    0 // 为了简化实验, 所有的线程都只有一种状态

#define PRIORITY_MIN 1
#define PRIORITY_MAX 10

/* 用于记录 `线程` 的 `内核栈与用户栈指针` */
/* (lab2 中无需考虑, 在这里引入是为了之后实验的使用) */
// struct thread_info {
//     uint64 kernel_sp;
//     uint64 user_sp;
// };

typedef unsigned long* pagetable_t;

struct thread_struct {
    uint64 ra;
    uint64 sp;                     
    uint64 s[12];

    uint64 sepc, sstatus, sscratch; 
};

struct task_struct {
    // struct thread_info* thread_info;
    uint64 state;
    uint64 counter;
    uint64 priority;
    uint64 pid;

    struct thread_struct thread;

    pagetable_t pgd;
};

/* 线程初始化 创建 NR_TASKS 个线程 */
void task_init();

/* 在时钟中断处理中被调用 用于判断是否需要进行调度 */
void do_timer();

/* 调度程序 选择出下一个运行的线程 */
void schedule();

/* 线程切换入口函数*/
void switch_to(struct task_struct* next);

/* dummy funciton: 一个循环程序, 循环输出自己的 pid 以及一个自增的局部变量 */
void dummy();

#endif