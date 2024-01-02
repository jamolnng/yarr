use riscv::register::mcause::{self, Trap};

use crate::{process::Process, schedule::schedule_and_switch, syscall::handle_syscall};

extern "C" {
    fn yarr_m_trap_vec() -> !;
}

extern "Rust" {
    fn yarr_tick() -> *mut Process;
}

#[no_mangle]
#[inline(never)]
#[link_section = ".trap"]
extern "C" fn yarr_m_trap_vec_impl(epc: usize, frame: *mut Process) -> usize {
    let mcause = mcause::read();
    match mcause.cause() {
        // async
        Trap::Interrupt(interrupt) => match interrupt {
            mcause::Interrupt::MachineTimer => {
                unsafe { yarr_tick() };
                schedule_and_switch()
            }
            _ => unsafe {
                panic!(
                    "Unhandled interrupt: \
                    frame: {:#x?}, \
                        mcause: {mcause:#x?}, \
                        epc: {epc:#x?}, \
                        interrupt: {interrupt:#x?}",
                    *frame
                )
            },
        },
        // sync
        Trap::Exception(exception) => match exception {
            mcause::Exception::MachineEnvCall
            | mcause::Exception::SupervisorEnvCall
            | mcause::Exception::UserEnvCall => unsafe {
                handle_syscall(epc, frame);
                schedule_and_switch()
            },
            mcause::Exception::Breakpoint => epc + 2,
            _ => unsafe {
                panic!(
                    "Unhandled interrupt: \
                    frame: {:#x?}, \
                            mcause: {mcause:#x?}, \
                            epc: {epc:#x?}, \
                            exception: {exception:#x?}",
                    *frame
                )
            },
        },
    }
}

pub(crate) unsafe fn init() {
    riscv::register::mtvec::write(
        yarr_m_trap_vec as *const () as usize,
        riscv::register::mtvec::TrapMode::Direct,
    );
}
