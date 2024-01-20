    .section .text.entry
    .align 2
    .globl _traps 
    .global __dummy
    .globl __switch_to
_traps:
	csrrw sp, sscratch, sp
    bnez sp, 2f
    csrrw sp, sscratch, sp
2:
    addi sp, sp, -280 # 35*8 space to save
    # 1. save 35 registers to stack
    sd ra, 0(sp)
    sd gp, 8(sp)
    sd tp, 16(sp)
    sd t0, 24(sp)
    sd t1, 32(sp)
    sd t2, 40(sp)
    sd s0, 48(sp)
    sd s1, 56(sp)
    sd a0, 64(sp)
    sd a1, 72(sp)
    sd a2, 80(sp)
    sd a3, 88(sp)
    sd a4, 96(sp)
    sd a5, 104(sp)
    sd a6, 112(sp)
    sd a7, 120(sp)
    sd s2, 128(sp)
    sd s3, 136(sp)
    sd s4, 144(sp)
    sd s5, 152(sp)
    sd s6, 160(sp)
    sd s7, 168(sp)
    sd s8, 176(sp)
    sd s9, 184(sp)
    sd s10, 192(sp)
    sd s11, 200(sp)
    sd t3, 208(sp)
    sd t4, 216(sp)
    sd t5, 224(sp)
    sd t6, 232(sp)
    csrr t0, sepc
    sd t0, 240(sp)
    csrr t0, scause
    sd t0, 248(sp)
    csrr t0, sstatus
    sd t0, 256(sp)
    csrr t0, stval
    sd t0, 264(sp)
    csrr t0, sscratch
    sd t0, 272(sp)

    
    # 2. call trap_handler
    csrr a0, scause # 原因
    csrr a1, sepc # addr
    addi a2, sp, 0 # regs
    jal trap_handler
    
    .global __ret_from_fork
__ret_from_fork:

    # 3. restore sepc and 32 registers (x2(sp) should be restore last) from stack
    ld t0, 240(sp)
    csrw sepc, t0
    ld t0, 248(sp)
    csrw scause, t0
    ld t0, 256(sp)
    csrw sstatus, t0
    ld t0, 264(sp)
    csrw stval, t0
    ld t0, 272(sp)
    csrw sscratch, t0
    ld ra, 0(sp)
    ld gp, 8(sp)
    ld tp, 16(sp)
    ld t0, 24(sp)
    ld t1, 32(sp)
    ld t2, 40(sp)
    ld s0, 48(sp)
    ld s1, 56(sp)
    ld a0, 64(sp)
    ld a1, 72(sp)
    ld a2, 80(sp)
    ld a3, 88(sp)
    ld a4, 96(sp)
    ld a5, 104(sp)
    ld a6, 112(sp)
    ld a7, 120(sp)
    ld s2, 128(sp)
    ld s3, 136(sp)
    ld s4, 144(sp)
    ld s5, 152(sp)
    ld s6, 160(sp)
    ld s7, 168(sp)
    ld s8, 176(sp)
    ld s9, 184(sp)
    ld s10, 192(sp)
    ld s11, 200(sp)
    ld t3, 208(sp)
    ld t4, 216(sp)
    ld t5, 224(sp)
    ld t6, 232(sp)
    addi sp, sp, 280 # restore
    
	csrrw sp, sscratch, sp
    bnez sp, 3f
    csrrw sp, sscratch, sp
3:
    # 4. return from trap
    sret

__dummy:
    csrrw sp, sscratch, sp
    sret

__switch_to:
    # save state to prev process
    # YOUR CODE HERE
    add t0, a0, 32
    sd ra, 0(t0)
    sd sp, 8(t0)
    sd s0, 16(t0)
    sd s1, 24(t0)
    sd s2, 32(t0)
    sd s3, 40(t0)
    sd s4, 48(t0)
    sd s5, 56(t0)
    sd s6, 64(t0)
    sd s7, 72(t0)
    sd s8, 80(t0)
    sd s9, 88(t0)
    sd s10, 96(t0)
    sd s11, 104(t0)

    csrr t1, sepc
    sd t1, 112(t0)
    csrr t1, sstatus
    sd t1, 120(t0)
    csrr t1, sscratch
    sd t1, 128(t0)

    # restore state from next process
    # YOUR CODE HERE
    add t0, a1, 32
    ld ra, 0(t0)
    ld sp, 8(t0)
    ld s0, 16(t0)
    ld s1, 24(t0)
    ld s2, 32(t0)
    ld s3, 40(t0)
    ld s4, 48(t0)
    ld s5, 56(t0)
    ld s6, 64(t0)
    ld s7, 72(t0)
    ld s8, 80(t0)
    ld s9, 88(t0)
    ld s10, 96(t0)
    ld s11, 104(t0)

    ld t1, 112(t0)
    csrw sepc, t1
    ld t1, 120(t0)
    csrw sstatus, t1
    ld t1, 128(t0)
    csrw sscratch, t1

    # page table
    addi a1, a1, 168 # thread struct
    ld t0, 0(a1)
    li t1, 0xffffffdf80000000
    sub t0, t0, t1
    srl t0, t0, 12
    # sv39
    li t1, 0x8000000000000000
    or t0, t0, t1
    csrw satp, t0

    sfence.vma zero, zero
    fence.i

    
    ret