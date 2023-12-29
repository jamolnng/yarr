#[no_mangle]
pub unsafe extern "C" fn yarr_m_trap(
    mcause: usize,
    mtval: usize,
    mhartid: usize,
    mstatus: usize,
    mscratch: usize,
) -> usize {
    let new_frame;
    let is_async = (mcause >> ((core::mem::size_of::<usize>() * 8) - 1)) & 1 == 1;
    if is_async {
        const MCAUSE_MASK: usize = 0x7FFFFFFF;
        let mcause = mcause & MCAUSE_MASK;
        const IRQ_M_TIMER: usize = 7;
        if mcause == IRQ_M_TIMER {
            // TODO: tick
            yarr::timer::yarr_set_timer(yarr::scheduler::CONTEXT_SWITCH_TIME);
            new_frame = yarr::scheduler::schedule().context.as_ptr() as usize;
        } else {
            panic!("unhandled async trap: {mcause}  {mtval}  {mhartid}  {mstatus}  {mscratch} "); // TODO: unhandled trap
        }
    } else {
        const ERQ_M_ECALL: usize = 11;
        if mcause == ERQ_M_ECALL {
            yarr::timer::yarr_set_timer(yarr::scheduler::CONTEXT_SWITCH_TIME);
            new_frame = yarr::scheduler::schedule().context.as_ptr() as usize;
        } else {
            panic!("unhandled sync trap: {mcause}  {mtval}  {mhartid}  {mstatus}  {mscratch} "); // TODO: unhandled trap
        }
    }
    new_frame
}
