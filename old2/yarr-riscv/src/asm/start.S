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
.global yarr_trap_vec

.global yarr_start_first_task
.align 4
yarr_start_first_task:
    csrsi mie, 0
    csrsi mstatus, 0

    # a0 = context frame
    # save heart local context pointer
    csrw mscratch, a0

    # set machine trap vector to ours
    la t0, yarr_trap_vec
    csrw mtvec, t0

    # load return address to jump to when ret is called
    load ra, (32 * REGBYTES)(a0)

    # load mstatus
    load t0, (31 * REGBYTES)(a0)
    csrw mstatus, t0

    # load rest of gp registers, except do a0 last so we don't overwrite it
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

    load a0, (9 * REGBYTES)(a0)
    
    # TODO: conditionally load floating point registers on system with them

    li t0, 0x80
    csrs mie, t0
    csrsi mstatus, 8

    ret