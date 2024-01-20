#include "syscall.h"

extern struct task_struct *current;
extern struct task_struct *task[NR_TASKS];
extern void __ret_from_fork();
extern struct task_struct* current;
extern unsigned long swapper_pg_dir[];

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

int IsValid(uint64 *pgd, uint64 va) {
    uint64 VPN[3];
    VPN[2] = (va >> 30) & 0x1ff; // 9 bit
    VPN[1] = (va >> 21) & 0x1ff;
    VPN[0] = (va >> 12) & 0x1ff;
    uint64 *pte = pgd;
    for (int j = 2; j > 0; j--) {
        if ((pte[VPN[j]] & 0x1) == 0) {
            return 0;
        }
        else {
            pte = (uint64 *)((pte[VPN[j]] >> 10 << 12) + PA2VA_OFFSET);
        }
    }
    if ((pte[VPN[0]] & 0x1) == 0) {
        return 0;
    }
    return 1;
}

uint64_t sys_clone(struct pt_regs *regs) {
    /*
     1. 参考 task_init 创建一个新的 task，将的 parent task 的整个页复制到新创建的 
        task_struct 页上(这一步复制了哪些东西?）。将 thread.ra 设置为 
        __ret_from_fork，并正确设置 thread.sp
        (仔细想想，这个应该设置成什么值?可以根据 child task 的返回路径来倒推)

     2. 利用参数 regs 来计算出 child task 的对应的 pt_regs 的地址，
        并将其中的 a0, sp, sepc 设置成正确的值(为什么还要设置 sp?)

     3. 为 child task 申请 user stack，并将 parent task 的 user stack 
        数据复制到其中。 (既然 user stack 也在 vma 中，这一步也可以直接在 5 中做，无需特殊处理)

     3.1. 同时将子 task 的 user stack 的地址保存在 thread_info->
        user_sp 中，如果你已经去掉了 thread_info，那么无需执行这一步

     4. 为 child task 分配一个根页表，并仿照 setup_vm_final 来创建内核空间的映射

     5. 根据 parent task 的页表和 vma 来分配并拷贝 child task 在用户态会用到的内存

     6. 返回子 task 的 pid
    */

    // 创建一个新的 task
    struct task_struct *child = (struct task_struct *)kalloc();
    memcpy((void*)child,(void*)current,PGSIZE);
    for (int i = 0; i < NR_TASKS; ++i) {
        if (task[i] == NULL) {
            task[i] = child;
            child->pid = i;
            // printk("sys_clone: child->pid = %d\n", child->pid);
            break;
        }
    }
    child->thread.ra = (uint64)__ret_from_fork;

    // 利用参数 regs 来计算出 child task 的对应的 pt_regs 的地址
    uint64 offset = (uint64)regs - PGROUNDDOWN((uint64)regs);
    struct pt_regs *child_regs = (struct pt_regs *)((uint64)child + offset);
    child->thread.sp = (uint64)child_regs;
    child_regs->a0 = 0;
    // child_regs->sscratch = regs->sscratch;
    child_regs->sepc = regs->sepc + 4;

    // 为 child task 分配一个根页表
    child->pgd = (pagetable_t)alloc_page();
    memcpy((void *)child->pgd, (void *)swapper_pg_dir, PGSIZE);

    // 根据 parent task 的页表和 vma 来分配并拷贝 child task 在用户态会用到的内存
    for (int i = 0; i < current->vma_cnt; ++i) {
        struct vm_area_struct *vma = &current->vmas[i];
        uint64 now_page = PGROUNDDOWN(vma->vm_start);
        while (now_page < vma->vm_end) {
            if (IsValid(current->pgd, now_page)) {
                // printk("sys_clone: now_page = %lx\n", now_page);
                uint64 page = alloc_page();
                memcpy((void *)page, (void *)(now_page), PGSIZE);
                create_mapping(child->pgd, now_page, page - PA2VA_OFFSET, PGSIZE, (vma->vm_flags & 0b1110) | 0x11); // UXWRV
            }
            now_page += PGSIZE;
        }
    }
    printk("[S] New task: %d\n", child->pid);

    return child->pid;

}