.set REGBYTES, 4
.set CONTEXT_SIZE, (31 * REGBYTES)

.option norvc
.altmacro

.macro save_xreg reg
    sw x\reg, ((\reg - 1) * REGBYTES)(sp)
.endm

.macro save_reg reg n
    sw \reg, (\n * REGBYTES)(sp)
.endm