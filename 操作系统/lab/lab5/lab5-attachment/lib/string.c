#include "string.h"

void *memset(void *dst, int c, uint64 n) {
    char *cdst = (char *)dst;
    for (uint64 i = 0; i < n; ++i)
        cdst[i] = c;

    return dst;
}

void *memcpy(void *dst, void *src, uint64 len) {
    for (uint64 i = 0; i < len; ++i)
        ((char *)dst)[i] = ((char *)src)[i];
    return dst;
}