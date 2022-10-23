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
    # swap t6 into mscratch and put context frame into t6
    csrrw t6, mscratch, t6

    # save registers to context frame
    store  x1, ( 0 * REGBYTES)(t6)
    store  x2, ( 1 * REGBYTES)(t6)
    store  x3, ( 2 * REGBYTES)(t6)
    store  x4, ( 3 * REGBYTES)(t6)
    store  x5, ( 4 * REGBYTES)(t6)
    store  x6, ( 5 * REGBYTES)(t6)
    store  x7, ( 6 * REGBYTES)(t6)
    store  x8, ( 7 * REGBYTES)(t6)
    store  x9, ( 8 * REGBYTES)(t6)
    store x10, ( 9 * REGBYTES)(t6)
    store x11, (10 * REGBYTES)(t6)
    store x12, (11 * REGBYTES)(t6)
    store x13, (12 * REGBYTES)(t6)
    store x14, (13 * REGBYTES)(t6)
    store x15, (14 * REGBYTES)(t6)
    store x16, (15 * REGBYTES)(t6)
    store x17, (16 * REGBYTES)(t6)
    store x18, (17 * REGBYTES)(t6)
    store x19, (18 * REGBYTES)(t6)
    store x20, (19 * REGBYTES)(t6)
    store x21, (20 * REGBYTES)(t6)
    store x22, (21 * REGBYTES)(t6)
    store x23, (22 * REGBYTES)(t6)
    store x24, (23 * REGBYTES)(t6)
    store x25, (24 * REGBYTES)(t6)
    store x26, (25 * REGBYTES)(t6)
    store x27, (26 * REGBYTES)(t6)
    store x28, (27 * REGBYTES)(t6)
    store x29, (28 * REGBYTES)(t6)
    store x30, (29 * REGBYTES)(t6)
    # skip x31/t6

    # TODO: conditionally save floating point registers on system with them

    # now grab t6 and save it to the context
    csrr t5, mscratch
    store t5, (30 * REGBYTES)(t6)

    # save mstatus to context
    csrr t5, mstatus
    store t5 (31 * REGBYTES)(t6)

    # save mepc to context
    csrr t5, mepc
    store t5 (32 * REGBYTES)(t6)

    # restore context back to mscratch
    csrw mscratch, t6

    csrr a0, mcause
    csrr a1, mtval
    csrr a2, mhartid
    csrr a3, mstatus
    csrr a4, mscratch

    call yarr_m_trap

    # restore context
    # a0 is new context

    # load return address to jump to when mret is called
    load t0, (32 * REGBYTES)(a0)
    csrw mepc, t0

    # load mstatus
    load t0, (31 * REGBYTES)(a0)
    csrw mstatus, t0

    load  x1, ( 0 * REGBYTES)(a0)
    load  x2, ( 1 * REGBYTES)(a0)
    load  x3, ( 2 * REGBYTES)(a0)
    load  x4, ( 3 * REGBYTES)(a0)
    load  x5, ( 4 * REGBYTES)(a0)
    load  x6, ( 5 * REGBYTES)(a0)
    load  x7, ( 6 * REGBYTES)(a0)
    load  x8, ( 7 * REGBYTES)(a0)
    load  x9, ( 8 * REGBYTES)(a0)
    # skip x10/a0
    load x11, (10 * REGBYTES)(a0)
    load x12, (11 * REGBYTES)(a0)
    load x13, (12 * REGBYTES)(a0)
    load x14, (13 * REGBYTES)(a0)
    load x15, (14 * REGBYTES)(a0)
    load x16, (15 * REGBYTES)(a0)
    load x17, (16 * REGBYTES)(a0)
    load x18, (17 * REGBYTES)(a0)
    load x19, (18 * REGBYTES)(a0)
    load x20, (19 * REGBYTES)(a0)
    load x21, (20 * REGBYTES)(a0)
    load x22, (21 * REGBYTES)(a0)
    load x23, (22 * REGBYTES)(a0)
    load x24, (23 * REGBYTES)(a0)
    load x25, (24 * REGBYTES)(a0)
    load x26, (25 * REGBYTES)(a0)
    load x27, (26 * REGBYTES)(a0)
    load x28, (27 * REGBYTES)(a0)
    load x29, (28 * REGBYTES)(a0)
    load x30, (29 * REGBYTES)(a0)
    load x31, (30 * REGBYTES)(a0)

    # save heart local context pointer before we swap
    csrw mscratch, a0

    load a0, (9 * REGBYTES)(a0)

    # TODO: conditionally load floating point registers on system with them

    mret