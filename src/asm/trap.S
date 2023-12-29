/*
stack pointer already being saved to _yarr_current_task
global pointer does not change
thread pointer does not change
trap frame:
33(t6)  mode
32(t6)  mepc/pc
31(t6)  x31
        x30
        x29
        x28
        x27
        x26
        x25
        x24
        x23
        x22
        x21
        x20
        x19
        x18
        x17
        x16
        x15
        x14
        x13
        x12
        x11
        x10
        x9
        x8
        x7
        x6
        x5
        x4
        x3
        x2
        x1
0(t6)   x0 // stored for code convience, always 0
*/

.set TRAP_MODE_OFFSET, (TRAPSIZE - 1) * REGBYTES
.set TRAP_PC_OFFSET,   (TRAP_MODE_OFFSET - REGBYTES)
.set TRAP_REG_END,     (TRAP_PC_OFFSET - REGBYTES)

.global _sstack
.set KERNEL_STACK_END, _sstack

.global _yarr_current_task
.global m_trap_vec_impl

.global m_trap_vec
.section .trap, "ax"
.balign 4
m_trap_vec:
    .cfi_startproc

    # mscratch contains the address of the current process TrapFrame
    csrrw t6, mscratch, t6

    .set i, 0 # skip x0
    .rept 31 # skip t6 since it currently holds our TrapFrame
        storex %i, (i * REGBYTES)(t6)
        .set i, i+1
    .endr

    # read original t6 back and store it
    csrr t5, mscratch
    store t5, (TRAP_REG_END)(t6)

    # restore mscratch
    csrw mscratch, t6

    # a0 = mepc, a1 = *TrapFrame
    csrr a0, mepc
    store a0, (TRAP_PC_OFFSET)(t6)
    mv a1, t6

    # so we don't clobber the task's stack
    la sp, KERNEL_STACK_END

    call m_trap_vec_impl

    # returns from synchronous
    # asynchronous returns to m_switch_task
    # a0/return value contains new mepc
    csrw mepc, a0

    # get mscratch/TrapFrame
    csrr t6, mscratch

    .set i, 1 # skip restoring x0
    .rept 31 # 31 so we automatically restore t6 to its original value
        loadx %i, (i * REGBYTES)(t6)
        .set i, i+1
    .endr

    mret
    .cfi_endproc

.global m_switch_task
m_switch_task:
    .cfi_startproc
    # a0 contains new TrapFrame
    # store new TrapFrame to mscratch
    csrw mscratch, a0

    # load pc
    load a1, (TRAP_PC_OFFSET)(a0)

    # load cpu mode
    load a2, (TRAP_MODE_OFFSET)(a0)

    # set upie (4), mpie (7), FS (14:13) = 1 (initial/some dirty or clean, some on)
    li t0, 1 << 4 | 1 << 7 | 1 << 13

    # shift CPU mode bits 1:0 to 12:11
    slli a2, a2, 11

    # or CPU mode bits into new mstatus and set mstatus
    or t0, t0, a2
    csrw mstatus, t0
    csrw mepc, a1

    # set MEIE, MTIE, MSIE
    li t1, 0x888
    csrw mie, t1

    la t2, m_trap_vec
    csrw mtvec, t2

    mv t6, a0
    .set i, 1 # skip restoring x0
    .rept 31 # 31 so we automatically restore t6 to its original value
        loadx %i, (i * REGBYTES)(t6)
        .set i, i+1
    .endr

    mret
    .cfi_endproc