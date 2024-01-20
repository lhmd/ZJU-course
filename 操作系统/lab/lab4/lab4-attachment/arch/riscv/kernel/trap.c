// trap.c 
#include "printk.h"
#include "clock.h"
#include "proc.h"
#include "syscall.h"

// 用于保存寄存器状态
struct pt_regs
{
    uint64 ra, gp, tp;
    uint64 t0, t1, t2;
    uint64 s0, s1;
    uint64 a0, a1, a2, a3, a4, a5, a6, a7;
    uint64 s2, s3, s4, s5, s6, s7, s8, s9, s10, s11;
    uint64 t3, t4, t5, t6;
    uint64 sepc;
};


void trap_handler(unsigned long scause, unsigned long sepc, struct pt_regs *regs) {
    // 通过 `scause` 判断trap类型
    // 如果是interrupt 判断是否是timer interrupt
    // 如果是timer interrupt 则打印输出相关信息, 并通过 `clock_set_next_event()` 设置下一次时钟中断
    // `clock_set_next_event()` 见 4.3.4 节
    // 其他interrupt / exception 可以直接忽略

    // YOUR CODE HERE
    unsigned long temp = 1;
    if(scause & (temp << 63)) { // interrupt
        switch (scause & ~(temp << 63))
        {
        case 0x5:
            printk("[INTERRUPT] S mode timer interrupt!\n");
            clock_set_next_event();
            do_timer();
            break;
        
        default:
            break;
        }
    } else {
        switch (scause & ~(temp << 63))
        {
        case 0x8: // ECALL_FROM_U_MODE
            // 系统调用参数使用 a0 - a5 ，系统调用号使用 a7 ， 系统调用的返回值会被保存到 a0, a1 中
            uint64 syscall_id = regs->a7;
            switch (syscall_id)
            {
            case 64: // sys_write
                regs->a0 = sys_write(regs->a0, regs->a1, regs->a2);
                break;
            case 172: // sys_getpid
                regs->a0 = sys_getpid();
                break;
            }
            // 针对系统调用这一类异常， 我们需要手动将 sepc + 4
            regs->sepc += 4;
            break;

        default:
            break;
        }
    } // exception
}