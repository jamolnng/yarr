/*
context frame:
# TODO: conditionally save floating point registers on system with them
32(sp)  mepc/pc          machine exception program counter / program counter
31(sp)  mstatus          machine status register
30(sp)  x31      t6      temporary register 6
29(sp)  x30      t5      temporary register 5
28(sp)  x29      t4      temporary register 4
27(sp)  x28      t3      temporary register 3
26(sp)  x27      s11     saved register 11
25(sp)  x26      s10     saved register 10
24(sp)  x25      s9      saved register 9
23(sp)  x24      s8      saved register 8
22(sp)  x23      s7      saved register 7
21(sp)  x22      s6      saved register 6
20(sp)  x21      s5      saved register 5
19(sp)  x20      s4      saved register 4
18(sp)  x19      s3      saved register 3
17(sp)  x18      s2      saved register 2
16(sp)  x17      a7      function argument 7
15(sp)  x16      a6      function argument 6
14(sp)  x15      a5      function argument 5
13(sp)  x14      a4      function argument 4
12(sp)  x13      a3      function argument 3
11(sp)  x12      a2      function argument 2
10(sp)  x11      a1      function argument 1 / return value 1
9(sp)   x10      a0      function argument 0 / return value 0
8(sp)   x9       s1      saved register 1
7(sp)   x8       s0/fp   saved register 0 / frame pointer
6(sp)   x7       t2      temporary register 2
5(sp)   x6       t1      temporary register 1
4(sp)   x5       t0      temporary register 0
3(sp)   x4       tp      thread pointer
2(sp)   x3       gp      global pointer
1(sp)   x2       sp      stack pointer
0(sp)   x1       ra      return address
*/
.set CONTEXT_SIZE, (33 * REGBYTES)

.global _sstack

.section .text
.global yarr_trap_vec
.align 4
yarr_trap_vec:
    addi sp, sp, -CONTEXT_SIZE
    
    # store registers x1-x31
    .set i, 0
    .rept 31
        .set i, i + 1
        save_xreg %i
    .endr

    # TODO: conditionally save floating point registers on system with them

    csrr a0, mstatus
    save_reg a0 31

    csrr a0, mcause
    csrr a1, mepc

    # test for synchronous interrupt
    srli a2, a0, __riscv_xlen - 1
    bnez a2, yarr_synchronous_exception

yarr_asynchronous_exception:
    save_reg a1 32 # save mepc program counter
    load sp _sstack
    call yarr_sys_interrupt_handler
    j yarr_restore_context

yarr_synchronous_exception:
    addi a1, a1, REGBYTES # make program counter go to next step
    save_reg a1 32 # save mepc program counter
    load sp _sstack
    call yarr_sys_exception_handler

yarr_restore_context:
    # TODO: get stack pointer (maybe from return value 0?)

    # load registers
    .set i, 0
    .rept 31
        .set i, i + 1
        load_xreg %i
    .endr

    # TODO: conditionally load floating point registers on system with them

    # load mstatus
    load_reg t0, 31
    csrw mstatus, t0

    # load mepc return address
    load_reg t0 32
    csrw mepc, t0

    addi sp, sp, CONTEXT_SIZE
    mret