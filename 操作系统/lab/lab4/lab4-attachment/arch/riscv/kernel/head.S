.extern start_kernel
.extern mm_init
.extern task_init

    .section .text.init
    .globl _start
_start:
    # ------------------
    # - your code here -
    # 设置sp到boot_stack的顶部
    li t0, 0xffffffdf80000000
    la sp, boot_stack_top
    sub sp, sp, t0

    call setup_vm
    call relocate

    call mm_init
    call setup_vm_final
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
    # li t0, 0x2
    # csrs sstatus, t0

    jal start_kernel
    # start_kernel返回，停机
    j .
    # ------------------

relocate:
    # relocate return address
    li t1, 0xffffffdf80000000
    add ra, ra, t1
    add sp, sp, t1

    # point stvec to virtual address of instruction after satp write
    # la t0, 1f
    # csrw stvec, t0

    # set satp with early_pgtbl
    la t0, early_pgtbl
    sub t0, t0, t1
    srl t0, t0, 12
    li t1, 0x8000000000000000
    or t0, t0, t1
    csrw satp, t0


    # flush tlb
    sfence.vma zero, zero

    # flush icache
    fence.i

    ret

1:
    csrr t0, sepc
    li t1, 0xffffffdf80000000
    add t0, t0, t1
    csrw sepc, t0
    ret

    .section .bss.stack
    .globl boot_stack
boot_stack:
    .space 4096 # <-- change to your stack size

    .globl boot_stack_top
boot_stack_top: