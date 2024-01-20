#include "printk.h"
#include "sbi.h"
#include "defs.h"
#include "proc.h"

extern void test();

int start_kernel() {
    printk("2023");
    printk(" Hello RISC-V\n\n");

    // printk("sstatus = %lx\n", csr_read(sstatus));
    // csr_write(sscratch, 123);
    // printk("sscratch = %d\n", csr_read(sscratch));
    schedule();
    test(); // DO NOT DELETE !!!

	return 0;
}
