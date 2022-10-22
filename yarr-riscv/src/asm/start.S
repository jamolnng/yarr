.global yarr_trap_vec

.global yarr_start_first_task
yarr_start_first_task:
    # set machine trap vector to ours
    la t0, yarr_trap_vec
    csrw mtvec, t0

    # get stack pointer from function argument 0
    mv sp, a0

.global yarr_load_return_addr
yarr_load_return_addr:
    load_reg ra 32

    # load registers x1-x31 to 0(sp)-30(sp)
    .set i, 1
    .rept 30
        .set i, i + 1
        load_xreg %i
    .endr

    # TODO: conditionally load floating point registers on system with them

    # load mstatus
    load_reg t0, 31
    csrw mstatus, t0

    # reset stack
    addi sp, sp, CONTEXT_SIZE
    ret