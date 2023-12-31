use hifive1::sprintln;
// use hifive1::sprintln;
use riscv::register::mcause::{self, Trap};

use crate::{
    process::Process,
    schedule
};

extern "C" {
    fn m_trap_vec() -> !;
    fn m_switch_task(process: *mut Process) -> !;
}

#[inline]
pub(crate) fn switch_task(process: *mut Process) -> ! {
    unsafe { m_switch_task(process) }
}

#[no_mangle]
#[inline(never)]
#[link_section = ".trap"]
extern "C" fn m_trap_vec_impl(epc: usize, _process: *mut Process) -> usize {
    let mcause = mcause::read();

    // sprintln!("mcause: {:#x?},\r\nepc: {:#x?}", mcause, epc);

    match mcause.cause() {
        // async
        Trap::Interrupt(interrupt) => {
            match interrupt {
                riscv::register::mcause::Interrupt::MachineTimer => {
                    // sprintln!("Machine timer interrupt");
                    schedule::set_timer(32);
                    schedule::schedule_and_switch()
                },
                _ => panic!("Unhandled interrupt: mcause {mcause:#x?}, epc: {epc:#x?}, interrupt: {interrupt:#x?}")
            }
        }
        // sync
        Trap::Exception(exception) => {
            match exception {
                mcause::Exception::MachineEnvCall => {
                    sprintln!("Machine environment call");
                }
                mcause::Exception::UserEnvCall => {
                    sprintln!("User environment call");
                }
                _ => panic!("Unhandled exception: mcause {mcause:#x?}, epc: {epc:#x?}, exception: {exception:#x?}")
            }
            epc + 4
        }
    }
}

pub fn init() {
    unsafe {
        riscv::register::mtvec::write(
            m_trap_vec as *const () as usize,
            riscv::register::mtvec::TrapMode::Direct,
        );
    }
}
