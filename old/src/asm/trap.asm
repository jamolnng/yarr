.option norvc
.altmacro

.set WORD_SIZE, 4
.set CONTEXT_SIZE, 31 * WORD_SIZE

.macro save_xreg reg
    sw x\reg, ((\reg - 1) * WORD_SIZE)(sp)
.endm

.macro save_reg reg n
    sw \reg, (\n * WORD_SIZE)(sp)
.endm

.section .text
.global machine_trap_vector
.align 4
machine_trap_vector:
    addi sp, sp, -CONTEXT_SIZE
    
    # store registers
    .set i, 0
    .rept 31
        .set i, i + 1
        save_xreg %i
    .endr

    csrr a0, mstatus
    save_reg a0 %i

    csrr a0, mcause
    csrr a1, mepc

    call 

