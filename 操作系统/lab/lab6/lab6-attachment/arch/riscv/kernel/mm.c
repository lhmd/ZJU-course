#include "defs.h"
#include "string.h"
#include "mm.h"
#include "stdint.h"
#include "printk.h"

extern char _ekernel[];

#define VA2PA(x) ((x - (uint64_t)PA2VA_OFFSET))
#define PA2VA(x) ((x + (uint64_t)PA2VA_OFFSET))
#define PFN2PHYS(x) (((uint64_t)(x) << 12) + PHY_START)
#define PHYS2PFN(x) ((((uint64_t)(x) - PHY_START) >> 12))

struct {
    struct run *freelist;
} kmem;



void kfreerange(char *start, char *end) {
    // char *addr = (char *)PGROUNDUP((uint64_t)start);
    // for (; (uint64_t)(addr) + PGSIZE <= (uint64_t)end; addr += PGSIZE) {
    //     kfree((uint64_t)addr);
    // }
    return;
}



// fine, write buddy system here

#define LEFT_LEAF(index) ((index) * 2 + 1)
#define RIGHT_LEAF(index) ((index) * 2 + 2)
#define PARENT(index) ( ((index) + 1) / 2 - 1)

#define IS_POWER_OF_2(x) (!((x)&((x)-1)))

#define MAX(a, b) ((a) > (b) ? (a) : (b))

extern char _ekernel[];
void *free_page_start = &_ekernel;
struct buddy buddy;

static uint64_t fixsize(uint64_t size) {
    size --;
    size |= size >> 1;
    size |= size >> 2;
    size |= size >> 4;
    size |= size >> 8;
    size |= size >> 16;
    size |= size >> 32;
    return size + 1;
}

void buddy_init() {
    uint64_t buddy_size = (uint64_t)PHY_SIZE / PGSIZE;

    if (!IS_POWER_OF_2(buddy_size))
        buddy_size = fixsize(buddy_size);

    buddy.size = buddy_size;
    buddy.bitmap = free_page_start;
    free_page_start += 2 * buddy.size * sizeof(*buddy.bitmap);
    memset(buddy.bitmap, 0, 2 * buddy.size * sizeof(*buddy.bitmap));

    uint64_t node_size = buddy.size * 2;
    for (uint64_t i = 0; i < 2 * buddy.size - 1; ++i) {
        if (IS_POWER_OF_2(i + 1))
            node_size /= 2;
        buddy.bitmap[i] = node_size;
    }

    for (uint64_t pfn = 0; (uint64_t)PFN2PHYS(pfn) < VA2PA((uint64_t)free_page_start); pfn++) {
        buddy_alloc(1);
    }

    printk("...buddy_init done!\n");
    return;
}

void buddy_free(uint64_t pfn)
{
    uint64_t node_size, index = 0;
    uint64_t left_longest, right_longest;

    node_size = 1;
    index = pfn + buddy.size - 1;

    for (; buddy.bitmap[index] ; index = PARENT(index)) {
    node_size *= 2;
    if (index == 0)
        break;
    }

    buddy.bitmap[index] = node_size;

    while (index) {
    index = PARENT(index);
    node_size *= 2;

    left_longest = buddy.bitmap[LEFT_LEAF(index)];
    right_longest = buddy.bitmap[RIGHT_LEAF(index)];

    if (left_longest + right_longest == node_size) 
        buddy.bitmap[index] = node_size;
    else
        buddy.bitmap[index] = MAX(left_longest, right_longest);
    }
}

uint64_t buddy_alloc(uint64_t nrpages) {

    uint64_t index = 0;
    uint64_t node_size;
    uint64_t pfn = 0;

    if (nrpages <= 0)
        nrpages = 1;
    else if (!IS_POWER_OF_2(nrpages))
        nrpages = fixsize(nrpages);

    if (buddy.bitmap[index] < nrpages)
        return 0;

    for(node_size = buddy.size; node_size != nrpages; node_size /= 2 ) {
    if (buddy.bitmap[LEFT_LEAF(index)] >= nrpages)
        index = LEFT_LEAF(index);
    else
        index = RIGHT_LEAF(index);
    }

    buddy.bitmap[index] = 0;
    pfn = (index + 1) * node_size - buddy.size;

    while (index) {
    index = PARENT(index);
    buddy.bitmap[index] = 
        MAX(buddy.bitmap[LEFT_LEAF(index)], buddy.bitmap[RIGHT_LEAF(index)]);
    }

    // printk("pfn: %lx\n", pfn);
    // while(1);
    
    return pfn;
}


uint64_t alloc_pages(uint64_t nrpages){
    uint64_t pfn = buddy_alloc(nrpages);
    if (pfn == 0)
        return 0;
    return (PA2VA(PFN2PHYS(pfn)));
}

uint64_t alloc_page(){
    uint64_t pfn = buddy_alloc(1);
    if (pfn == 0)
        return 0;
    return (PA2VA(PFN2PHYS(pfn)));
}

void free_pages(uint64_t va){
    buddy_free(PHYS2PFN(VA2PA(va)));
}

void mm_init(void) {
    // kfreerange(_ekernel, (char *)0xffffffe008000000);
    // printk("_ekernel: %lx\n", (uint64_t)_ekernel);
    // printk("...mm_init done!\n");
    buddy_init();
}

uint64_t kalloc() {
    // struct run *r;
    // r = kmem.freelist;
    // // printk("r is %lx\n", (uint64_t)r);
    // kmem.freelist = r->next;
    
    // memset((void *)r, 0x0, PGSIZE);
    // return (uint64_t) r;
    return alloc_page();
}

void kfree(uint64_t addr) {
    // struct run *r;

    // // PGSIZE align 
    // addr = addr & ~(PGSIZE - 1);

    // memset((void *)addr, 0x0, (uint64_t)PGSIZE);

    // r = (struct run *)addr;
    // r->next = kmem.freelist;
    // kmem.freelist = r;

    // return ;
    free_pages(addr);
}
