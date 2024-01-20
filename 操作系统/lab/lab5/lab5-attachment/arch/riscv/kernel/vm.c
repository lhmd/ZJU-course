#include "vm.h"

/* early_pgtbl: 用于 setup_vm 进行 1GB 的 映射。 */
unsigned long  early_pgtbl[512] __attribute__((__aligned__(0x1000)));

void setup_vm(void) {
    /* 
    1. 由于是进行 1GB 的映射 这里不需要使用多级页表 
    2. 将 va 的 64bit 作为如下划分： | high bit | 9 bit | 30 bit |
        high bit 可以忽略
        中间9 bit 作为 early_pgtbl 的 index
        低 30 bit 作为 页内偏移 这里注意到 30 = 9 + 9 + 12， 即我们只使用根页表， 根页表的每个 entry 都对应 1GB 的区域。 
    3. Page Table Entry 的权限 V | R | W | X 位设置为 1
    */
    unsigned long PA, VA_EQ, VA_DIRECT, PPN, PTE;
    int index;
    PA = PHY_START;
    VA_EQ = PA;
    index = (VA_EQ >> 30) & 0x1ff;
    PPN = PA >> 30 & 0x3ffffff;
    PTE = (PPN << 28) | 0xf; // V R W X = 1
    early_pgtbl[index] = PTE;

    VA_DIRECT = PA + PA2VA_OFFSET;
    index = (VA_DIRECT >> 30) & 0x1ff;
    PPN = PA >> 30 & 0x3ffffff;
    PTE = (PPN << 28) | 0xf;
    early_pgtbl[index] = PTE;

    printk("...setup_vm done!\n");
}

/* swapper_pg_dir: kernel pagetable 根目录， 在 setup_vm_final 进行映射。 */
unsigned long  swapper_pg_dir[512] __attribute__((__aligned__(0x1000)));
extern char _stext[], _etext[];
extern char _srodata[], _erodata[];
extern char _sdata[], _edata[];

void setup_vm_final(void) {
    memset(swapper_pg_dir, 0x0, PGSIZE);

    // No OpenSBI mapping required

    // mapping kernel text X|-|R|V
    create_mapping((uint64 *)swapper_pg_dir, (uint64)_stext, (uint64)_stext - PA2VA_OFFSET, (uint64)(_etext - _stext), 0xb);

    // mapping kernel rodata -|-|R|V
    create_mapping((uint64 *)swapper_pg_dir, (uint64)_srodata, (uint64)_srodata - PA2VA_OFFSET, (uint64)(_erodata - _srodata), 0x3);
    
    // mapping other memory -|W|R|V
    create_mapping((uint64 *)swapper_pg_dir, (uint64)_sdata, (uint64)_sdata - PA2VA_OFFSET, PHY_END + PA2VA_OFFSET - (uint64)_sdata, 0x7);

    // set satp with swapper_pg_dir
    unsigned long satp = 0x8000000000000000 | ((unsigned long)swapper_pg_dir - PA2VA_OFFSET) >> 12;
    csr_write(satp, satp);

    // flush TLB
    asm volatile("sfence.vma zero, zero");

    // flush icache
    asm volatile("fence.i");

    printk("...setup_vm_final done!\n");

    // printk("_stext = %x\n", *_stext);
    // printk("_srodata = %x\n", *_srodata);

    // *_stext = 0x00;
    // printk("*_stext = %x\n", *_stext);
    // *_srodata = 0x00;
    // printk("*_srodata = %x\n", *_srodata);

    return;
}


/**** 创建多级页表映射关系 *****/
/* 不要修改该接口的参数和返回值 */
void create_mapping(uint64 *pgtbl, uint64 va, uint64 pa, uint64 sz, uint64 perm) {
    /*
    pgtbl 为根页表的基地址
    va, pa 为需要映射的虚拟地址、物理地址
    sz 为映射的大小，单位为字节
    perm 为映射的权限 (即页表项的低 8 位)

    创建多级页表的时候可以使用 kalloc() 来获取一页作为页表目录
    可以使用 V bit 来判断页表项是否存在
    */
    int page_num = (sz + PGSIZE - 1) / PGSIZE; // 取整
    for (int i = 0; i < page_num; i++) {
        uint64 VPN[3];
        VPN[2] = (va >> 30) & 0x1ff; // 9 bit
        VPN[1] = (va >> 21) & 0x1ff;
        VPN[0] = (va >> 12) & 0x1ff;
        uint64 *pte = pgtbl;
        for (int j = 2; j > 0; j--) {
            if ((pte[VPN[j]] & 0x1) == 0) {
                uint64 new_pte = kalloc();
                pte[VPN[j]] = (((new_pte - PA2VA_OFFSET) >> 12) & 0xfffffffffff) << 10 | 0x1;
                pte = (uint64 *)new_pte;
            }
            else {
                pte = (uint64 *)((pte[VPN[j]] >> 10 << 12) + PA2VA_OFFSET);
            }
        }
        pte[VPN[0]] = (((pa >> 12) & 0xfffffffffff) << 10) | perm;
        va += PGSIZE;
        pa += PGSIZE;
    }
}