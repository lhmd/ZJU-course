#ifndef _DEBUG_H
#define _DEBUG_H

#include <defs.h>
#include <printk.h>

static inline void dump_page(uint64_t va) {
    for (int i = 0; i < 0x1000; i++) {
        if (i % 16 == 0) {
            printk("%04x: ", i);
        }
        printk("%02x", ((char*)va)[i]);
        if ((i + 1) % 16 == 0) {
            printk("\n");
        } else if ((i + 1) % 4 == 0) {
            printk(" ");
        }
    }
}

static inline void dump_memory(uint64_t va, uint64_t size) {
    printk("----------------------------------------------------\n");
    for (int i = 0; i < size / 4; i += 1) {
        if (i % 16 == 0) {
            printk("%04x: ", i * 4);
        }
        printk("%08x", ((uint32_t*)va)[i]);
        if ((i + 1) % 16 == 0) {
            printk("\n");
        } else if ((i + 1) % 4 == 0) {
            printk(" ");
        } else {
            printk("|");
        }
    }
}

static inline int isalnum(char c) {
    return (c >= '0' && c <= '9') ||
           (c >= 'a' && c <= 'z') ||
           (c >= 'A' && c <= 'Z');
}

static inline void dump_char(uint64_t va, uint64_t size) {
    for (int i = 0; i < size; i += 1) {
        if (i % 32 == 0) {
            printk("%04x: ", i * 4);
        }

        if (isalnum(((uint8_t*)va)[i]))
            printk("%c", ((uint8_t*)va)[i]);
        else
            printk(".");

        if ((i + 1) % 32 == 0) {
            printk("\n");
        } else if ((i + 1) % 8 == 0) {
            printk(" ");
        // } else {
        //     printk("|");
        }
    }
}

#endif