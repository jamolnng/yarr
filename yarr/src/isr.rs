#[no_mangle]
pub unsafe extern "C" fn yarr_sys_interrupt_handler(mcause: usize) {
    const MCAUSE_MASK: usize = 0x7FFFFFFF;
    const IRQ_M_TIMER: usize = 7;
    let mcause = mcause & MCAUSE_MASK;
    if mcause == IRQ_M_TIMER {
        // TODO: tick
        // TODO: set timer
        crate::scheduler::schedule();
    } else {
        loop {} // panic?
    }
}

#[no_mangle]
pub unsafe extern "C" fn yarr_sys_exception_handler(mcause: usize) {
    const ERQ_M_ECALL: usize = 11;
    if mcause == ERQ_M_ECALL {
        crate::scheduler::schedule();
    } else {
        loop {} // panic?
    }
}
