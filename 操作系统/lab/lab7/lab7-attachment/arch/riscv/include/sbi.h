#ifndef _SBI_H
#define _SBI_H

#define SBI_PUTCHAR 0x1
#define SBI_GETCHAR 0x2

#include "types.h"

struct sbiret {
	long error;
	long value;
};

struct sbiret sbi_ecall(int ext, int fid, uint64_t arg0,
			            uint64_t arg1, uint64_t arg2,
			            uint64_t arg3, uint64_t arg4,
			            uint64_t arg5);
 
#endif
