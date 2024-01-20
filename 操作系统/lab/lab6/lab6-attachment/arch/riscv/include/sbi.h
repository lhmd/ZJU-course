#ifndef _SBI_H
#define _SBI_H

#define SBI_PUTCHAR 0x1

#include "types.h"

struct sbiret {
	long error;
	long value;
};

struct sbiret sbi_ecall(int ext, int fid, uint64 arg0,
			            uint64 arg1, uint64 arg2,
			            uint64 arg3, uint64 arg4,
			            uint64 arg5);
 
#endif
