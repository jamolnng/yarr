.set REGBYTES, 8
.set CONTEXT_SIZE, (31 * REGBYTES)

.option norvc
.altmacro

.macro save_xreg reg
    sd x\reg, ((\reg - 1) * REGBYTES)(sp)
.endm

.macro save_reg reg n
    sd \reg, (\n * REGBYTES)(sp)
.endm