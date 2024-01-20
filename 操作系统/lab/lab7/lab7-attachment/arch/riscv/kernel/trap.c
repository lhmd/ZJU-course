// trap.c 
#include "printk.h"
#include "clock.h"
#include "proc.h"
#include "syscall.h"

extern struct task_struct* current;
extern char _sramdisk[], _eramdisk[];

void unhandled_trap(struct pt_regs *regs) {
    printk("Unhandled trap:\n");
    printk("sepc: %lx, scause: %lx, stval: %lx\n", regs->sepc, regs->scause, regs->stval);
    while(1);
}

void do_page_fault(struct pt_regs *regs) {
    /*
     1. 通过 stval 获得访问出错的虚拟内存地址（Bad Address）
     2. 通过 find_vma() 查找 Bad Address 是否在某个 vma 中
     3. 分配一个页，将这个页映射到对应的用户地址空间
     4. 通过 (vma->vm_flags & VM_ANONYM) 获得当前的 VMA 是否是匿名空间
     5. 根据 VMA 匿名与否决定将新的页清零或是拷贝 uapp 中的内容
    */
    // printk("Page Fault: ");
    // printk("sepc: %lx, scause: %lx, stval: %lx\n", regs->sepc, regs->scause, regs->stval);
    uint64 bad_addr = regs->stval;
    struct vm_area_struct *vma = find_vma(current, bad_addr);
    // 范围检查 权限检查
    if(vma == NULL || 
        (regs->scause == 0xc && !(vma->vm_flags & VM_X_MASK)) ||
        (regs->scause == 0xd && !(vma->vm_flags & VM_R_MASK)) ||
        (regs->scause == 0xf && !(vma->vm_flags & VM_W_MASK))) {
        printk("Bad Address: %lx\n", bad_addr);
        unhandled_trap(regs);
    }
    uint64 page = alloc_page();
    create_mapping(current->pgd, bad_addr, page - PA2VA_OFFSET, PGSIZE, (vma->vm_flags & 0b1110) | 0x11); // UXWRV
    memset((void *)page, 0, PGSIZE);
    if (!(vma->vm_flags & VM_ANONYM)) {
        // segment start location in file
        uint64 start_seg = (uint64)(_sramdisk) + vma->vm_content_offset_in_file;
        uint64 offset = 0;
        uint64 end_seg= (uint64)(_sramdisk) + vma->vm_content_offset_in_file +vma->vm_content_size_in_file;
        uint64 start_bad_seg_page = start_seg + PGROUNDDOWN(bad_addr) - vma->vm_start;
        uint64 start_bad_seg = start_bad_seg_page;
        if (PGROUNDDOWN(start_seg) == PGROUNDDOWN(bad_addr)) {
            start_bad_seg = start_seg;
            offset = start_seg & 0xfff;
        }
        if (end_seg <= start_bad_seg_page + PGSIZE && end_seg > start_bad_seg_page){
            uint64 valid_seg = end_seg - start_bad_seg_page - offset;
            memcpy((void *)(page + offset), (void *)(start_bad_seg), valid_seg);
        } else if (end_seg > start_bad_seg_page + PGSIZE) {
            memcpy((void *)(page + offset), (void *)(start_bad_seg), PGSIZE - offset);
        }
    }
}

void trap_handler(unsigned long scause, unsigned long sepc, struct pt_regs *regs) {
    unsigned long temp = 1;
    if(scause & (temp << 63)) { // interrupt
        switch (scause & ~(temp << 63))
        {
        case 0x5:
            // printk("[INTERRUPT] S mode timer interrupt!\n");
            clock_set_next_event();
            do_timer();
            break;
        
        default:
            unhandled_trap(regs);
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
            case SYS_READ: // sys_read
                regs->a0 = sys_read((unsigned int)regs->a0, (char*)regs->a1, (uint64_t)regs->a2);
                break;
            case SYS_WRITE: // sys_write
                regs->a0 = sys_write((unsigned int)regs->a0, (char*)regs->a1, (size_t)regs->a2);
                break;
            case SYS_GETPID: // sys_getpid
                regs->a0 = sys_getpid();
                break;
            case SYS_CLONE: // sys_clone
                regs->a0 = sys_clone(regs);
                break;
            }
            // 针对系统调用这一类异常， 我们需要手动将 sepc + 4
            regs->sepc += 4;
            break;
        
        case 0xc:
        case 0xd:
        case 0xf:
            do_page_fault(regs);
            break;

        default:
            unhandled_trap(regs);
            break;
        }
    } // exception
}