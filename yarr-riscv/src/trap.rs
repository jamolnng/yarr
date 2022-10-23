#[no_mangle]
pub unsafe extern "C" fn yarr_m_trap(
    mcause: usize,
    _mtval: usize,
    _mhartid: usize,
    _mstatus: usize,
    _mscratch: usize,
) -> usize {
    let new_frame;
    let is_async = (mcause >> ((core::mem::size_of::<usize>() * 8) - 1)) & 1 == 1;
    if is_async {
        const MCAUSE_MASK: usize = 0x7FFFFFFF;
        let mcause = mcause & MCAUSE_MASK;
        const IRQ_M_TIMER: usize = 7;
        if mcause == IRQ_M_TIMER {
            // TODO: tick
            // TODO: set timer
            new_frame = yarr::scheduler::schedule().context.as_ptr() as usize;
        } else {
            panic!(); // TODO: unhandled trap
        }
    } else {
        const ERQ_M_ECALL: usize = 11;
        if mcause == ERQ_M_ECALL {
            new_frame = yarr::scheduler::schedule().context.as_ptr() as usize;
        } else {
            panic!(); // TODO: unhandled trap
        }
    }
    new_frame
}
