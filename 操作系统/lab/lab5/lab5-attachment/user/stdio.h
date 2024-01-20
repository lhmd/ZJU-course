#pragma once

#include "stddef.h"

#ifdef DEBUG_LOG
#define Log(format, ...) \
    printf("[%s:%d %s] " format "\n", __FILE__, __LINE__, __func__, ## __VA_ARGS__);
#else
#define Log(format, ...);
#endif


int printf(const char *, ...);
