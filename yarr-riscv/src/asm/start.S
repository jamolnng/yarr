.global yarr_trap_vec

.global yarr_start_first_task
yarr_start_first_task:
    # set machine trap vector to ours
    la t0, yarr_trap_vec
    csrw mtvec, t0

    # get stack pointer from function argument 0
    mv sp, a0
    
    load_reg ra 32

    # load registers x3-x31 from (2 * REGBYTES)(sp)-(30 * REGBYTES)(sp)
    # skip x1 (ra) and x2 (sp) since we pre-loaded them
    .set i, 2
    .rept 29
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