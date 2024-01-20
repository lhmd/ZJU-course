.extern start_kernel
.extern mm_init
.extern task_init

    .section .text.init
    .globl _start
_start:
    # ------------------
    # - your code here -
    # 设置sp到boot_stack的顶部
    la sp, boot_stack_top

    call mm_init
    call task_init

    # set stvec = _traps
    la t0, _traps
    csrw stvec, t0
    # set sie[STIE] = 1
    li t0, 0x20
    csrs sie, t0
    # set first time interrupt
    rdtime a0
    li t0, 10000000
    add a0, a0, t0
    li a6, 0
    li a7, 0
    ecall
    # set sstatus[SIE] = 1
    li t0, 0x2
    csrs sstatus, t0

    jal start_kernel
    # start_kernel返回，停机
    j .
    # ------------------

    .section .bss.stack
    .globl boot_stack
boot_stack:
    .space 4096 # <-- change to your stack size

    .globl boot_stack_top
boot_stack_top: