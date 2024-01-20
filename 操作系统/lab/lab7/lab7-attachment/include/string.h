#pragma once

#include "types.h"

void* memset(void *, int, uint64_t);
void *memcpy(void *str1, const void *str2, size_t n);
int memcmp(const void *cs, const void *ct, size_t count);

static inline int strlen(const char *str)
{
    int len = 0;
    while (*str++)
        len++;
    return len;
}