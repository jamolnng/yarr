.option norvc
.altmacro
.macro zero_stub reg
    mv x\reg, x0
.endm

.set WORD_SIZE 4

.section .init
_start:
    csrci mstatus, 8 # disable interrupts
    .set i, 1
    .rept 31
        zero_stub %i # clear registers
        .set i, i + 1
    .endr
    .cfi_startproc
    .cfi_undefined ra

    .option push
    .option norelax
    la gp, __global_pointer$ # load global pointer
    .option pop

    la t0, early_unhandled_exception # set early exception trap
    csrw mtvec, t0

    la sp, _stack_end # load stack pointer

    call _start_rust
    .global machine_trap_vector
    call machine_trap_vector
    .cfi_endproc

.section .text.abort
.global abort
abort:
    wfi
    j abort

.section .trap
early_unhandled_exception:
    wfi
    j early_unhandled_exception