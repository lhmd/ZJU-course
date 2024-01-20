#include "types.h"

struct run {
    struct run *next;
};

void mm_init();

uint64 kalloc();
void kfree(uint64);
