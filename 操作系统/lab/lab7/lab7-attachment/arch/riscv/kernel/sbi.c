#include "types.h"
#include "sbi.h"


struct sbiret sbi_ecall(int ext, int fid, uint64 arg0,
			            uint64 arg1, uint64 arg2,
			            uint64 arg3, uint64 arg4,
			            uint64 arg5) 
{
	struct sbiret ret;
    asm volatile (
        "mv a7, %[ext]\n"          // 将 ext 放入寄存器 a7
        "mv a6, %[fid]\n"          // 将 fid 放入寄存器 a6
        "mv a0, %[arg0]\n"          // 将 arg0 放入寄存器 a0
        "mv a1, %[arg1]\n"          // 将 arg1 放入寄存器 a1
        "mv a2, %[arg2]\n"          // 将 arg2 放入寄存器 a2
        "mv a3, %[arg3]\n"          // 将 arg3 放入寄存器 a3
        "mv a4, %[arg4]\n"          // 将 arg4 放入寄存器 a4
        "mv a5, %[arg5]\n"          // 将 arg5 放入寄存器 a5
        "ecall\n"              // 使用 ecall 指令进入 M 模式
        "mv %[error], a0\n"
        "mv %[value], a1"
        : [error] "=r" (ret.error), [value] "=r" (ret.value)  // 输出操作数，使用 ret.error 和 ret.value 来接受返回值
        : [ext] "r" (ext),[fid] "r" (fid),
		  [arg0] "r" (arg0), [arg1] "r" (arg1), [arg2] "r" (arg2),
		  [arg3] "r" (arg3), [arg4] "r" (arg4), [arg5] "r" (arg5)
        : "memory"
    );

    return ret;          
}
