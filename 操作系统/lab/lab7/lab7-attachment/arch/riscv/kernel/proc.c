//arch/riscv/kernel/proc.c
#include "proc.h"

extern void __dummy();
extern void __switch_to(struct task_struct* prev, struct task_struct* next);
extern unsigned long swapper_pg_dir[];

struct task_struct* idle;           // idle process
struct task_struct* current;        // 指向当前运行线程的 `task_struct`
struct task_struct* task[NR_TASKS]; // 线程数组, 所有的线程都保存在此

/**
 * new content for unit test of 2023 OS lab2
*/
extern char _sramdisk[], _eramdisk[];

static uint64_t load_program(struct task_struct* task) {
    Elf64_Ehdr* ehdr = (Elf64_Ehdr*)_sramdisk;

    // check ELF header
    // printk("ehdr->e_ident = %lx\n", ehdr->e_ident[0]);
    if (ehdr->e_ident[0] != 0x7f || ehdr->e_ident[1] != 'E' ||
        ehdr->e_ident[2] != 'L' || ehdr->e_ident[3] != 'F') {
        printk("not elf format\n");
        return -1;
    }

    uint64_t phdr_start = (uint64_t)ehdr + ehdr->e_phoff;
    int phdr_cnt = ehdr->e_phnum;

    Elf64_Phdr* phdr;
    int load_phdr_cnt = 0;
    for (int i = 0; i < phdr_cnt; i++) {
        phdr = (Elf64_Phdr*)(phdr_start + sizeof(Elf64_Phdr) * i);
        if (phdr->p_type == PT_LOAD) {
            // alloc space and copy content
            // do mapping
            uint64 flags = (phdr->p_flags & PF_R) >> 1 | (phdr->p_flags & PF_W) << 1 | (phdr->p_flags & PF_X) << 3;
            // char* va = (char*)alloc_pages((size + PGSIZE - 1) / PGSIZE);
            // // memcpy(va + offset, (char*)ehdr + phdr->p_offset, phdr->p_filesz);
            // for (int j = 0; j < phdr->p_filesz; ++j) {
            //     va[offset + j] = ((char*)ehdr)[phdr->p_offset + j];
            // }
            // memset(va + offset + phdr->p_filesz, 0, phdr->p_memsz - phdr->p_filesz);
            do_mmap(task, phdr->p_vaddr, phdr->p_memsz, flags, phdr->p_offset, phdr->p_filesz);
            // create_mapping(task->pgd, phdr->p_vaddr, (uint64)va - PA2VA_OFFSET, size, 1 << 4 | 1 << 0 | (phdr->p_flags & 0x4) >> 1 | (phdr->p_flags & 0x2) << 1 | (phdr->p_flags & 0x1) << 3);
        }
    }

    // allocate user stack and do mapping
    
    // uint64 user_stack = (uint64)alloc_page();
    do_mmap(task, USER_END - PGSIZE, PGSIZE, 0x7, 0, 0);
    // create_mapping(task->pgd, USER_END - PGSIZE, user_stack - PA2VA_OFFSET, PGSIZE, 0x17);
    // pc for the user program
    task->thread.sepc = ehdr->e_entry;
    return 0;
}

static uint64_t load_binary(struct task_struct* task) {
    uint64 user_stack = (uint64)alloc_page();
    create_mapping(task->pgd, USER_END - PGSIZE, user_stack - PA2VA_OFFSET, PGSIZE, 0x17);
    
    uint64 uapp_size = _eramdisk - _sramdisk;
    char *uapp = (char *)alloc_pages((uapp_size + PGSIZE - 1) / PGSIZE);
    // memcpy(uapp, _sramdisk, uapp_size);
    for (int j = 0; j < uapp_size; ++j) {
        uapp[j] = _sramdisk[j];
    }
    create_mapping(task->pgd, USER_START, (uint64)uapp - PA2VA_OFFSET, uapp_size, 0x1F);
    task->thread.sepc = USER_START;
    return 0;   
}

void task_init() {
    idle = (struct task_struct*)kalloc();
    idle->state = TASK_RUNNING;
    idle->counter = 0;
    idle->priority = 0;
    idle->pid = 0;
    current = idle;
    task[0] = idle;

    // for(int i = 1; i < NR_TASKS; ++i){
    for(int i = 1; i < INIT_TASKS; ++i){
        task[i] = (struct task_struct*)kalloc();
        task[i]->state = TASK_RUNNING;
        task[i]->counter = rand() % 10 + 1;
        task[i]->priority = task[i]->counter;
        task[i]->pid = i;
        task[i]->thread.ra = (uint64)__dummy;
        task[i]->thread.sp = (uint64)task[i] + PGSIZE;
        // 配置 sstatus 中的 SPP（使得 sret 返回至 U-Mode）， SPIE （sret 之后开启中断）， SUM（S-Mode 可以访问 User 页面）
        // spp = 0, spie = 1, sum = 1
        task[i]->thread.sstatus = (1 << 18) | (1 << 5);
        // 将 sscratch 设置为 U-Mode 的 sp，其值为 USER_END （即，用户态栈被放置在 user space 的最后一个页面）
        task[i]->thread.sscratch = USER_END;

        task[i]->pgd = (pagetable_t)alloc_page();
        memcpy(task[i]->pgd, swapper_pg_dir, PGSIZE);

        // select how to load the program
        load_program(task[i]);
        // load_binary(task[i]);
        
        task[i]->files = file_init();

    }

    printk("...proc_init done!\n");
}

void dummy() {
    uint64 MOD = 1000000007;
    uint64 auto_inc_local_var = 0;
    int last_counter = -1;
    while(1) {
        if ((last_counter == -1 || current->counter != last_counter) && current->counter > 0) {
            if(current->counter == 1){
                --(current->counter);   // forced the counter to be zero if this thread is going to be scheduled
            }                           // in case that the new counter is also 1, leading the information not printed.
            last_counter = current->counter;
            auto_inc_local_var = (auto_inc_local_var + 1) % MOD;
            printk("[PID = %d] is running. auto_inc_local_var = %d\n", current->pid, auto_inc_local_var);
        }
    }
}

void switch_to(struct task_struct* next) {
    /* YOUR CODE HERE */
    if(next == current) return;
    struct task_struct* prev = current;
    current = next;
    // printk("\nswitch to [PID = %d COUNTER = %d PRIORITY = %d]\n", current->pid, current->counter, current->priority);
    __switch_to(prev, next);
}

void do_timer(void) {
    // 1. 如果当前线程是 idle 线程 直接进行调度
    // 2. 如果当前线程不是 idle 对当前线程的运行剩余时间减1 若剩余时间仍然大于0 则直接返回 否则进行调度

    /* YOUR CODE HERE */
    if(current == idle){
        schedule();
        return;
    }
    if(!current->counter || !--(current->counter)) schedule();
}

#ifdef SJF
void schedule(void) {
    uint64 min = -1;
    int min_index = 0;
    int is_no_task_running = 1;
    for(int i = 1; i < NR_TASKS; ++i){
        if(task[i] != NULL && task[i]->state == TASK_RUNNING) {
            is_no_task_running = 0;
            if(task[i]->counter > 0 && task[i]->counter < min){
                min = task[i]->counter;
                min_index = i;
            }
        }
    }
    if(min != -1 || is_no_task_running){
        switch_to(task[min_index]);
        return;
    }
    for(int i = 1; i < NR_TASKS; ++i){
        if(task[i] && task[i]->state == TASK_RUNNING) {
            task[i]->counter = rand();
            // printk("SET [PID = %d COUNTER = %d]\n", task[i]->pid, task[i]->counter);
        }
    }
    schedule();
}
#endif

#ifdef PRIORITY
void schedule(void) {
    /* YOUR CODE HERE */
    int c, next, i;
	while (1) {
		c = -1, next = 0, i = NR_TASKS;
		struct task_struct **p = &task[NR_TASKS];
		while (--i) {
			if (!*--p)
				continue;
			if ((*p)->state == TASK_RUNNING && (int)((*p)->counter) > c)
				c = (*p)->counter, next = i;
		}
		if (c) break;
		for(p = &task[NR_TASKS - 1] ; p > &task[0] ; --p)
			if (*p) {
                (*p)->counter = ((*p)->counter >> 1) + (*p)->priority;
                // printk("SET [PID = %d COUNTER = %d PRIORITY = %d]\n", task[i]->pid, task[i]->counter, task[i]->priority);
            }
				
	}
    switch_to(task[next]);
}
#endif


/* 创建一个新的 vma */
void do_mmap(struct task_struct *task, uint64_t addr, uint64_t length, uint64_t flags, 
            uint64_t vm_content_offset_in_file, uint64_t vm_content_size_in_file) {
    struct vm_area_struct *vma = &(task->vmas[task->vma_cnt++]); // find last vma
    vma->vm_start = addr;
    vma->vm_end = addr + length;
    vma->vm_flags = flags;
    vma->vm_content_offset_in_file = vm_content_offset_in_file;
    vma->vm_content_size_in_file = vm_content_size_in_file;
}

/* 查找包含某个 addr 的 vma，该函数主要在 Page Fault 处理时起作用 */
struct vm_area_struct *find_vma(struct task_struct *task, uint64_t addr) {
    for (int i = 0; i < task->vma_cnt; ++i) {
        if (task->vmas[i].vm_start <= addr && addr < task->vmas[i].vm_end) {
            return &(task->vmas[i]);
        }
    }
    return NULL;
}
