#ifndef _VM_H
#define _VM_H
#include "defs.h"
#include "string.h"
#include "printk.h"
#include "mm.h"

void create_mapping(uint64 *pgtbl, uint64 va, uint64 pa, uint64 sz, uint64 perm);

#endif