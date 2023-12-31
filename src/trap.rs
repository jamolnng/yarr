use hifive1::sprintln;
// use hifive1::sprintln;
use riscv::register::mcause::{self, Trap};

use crate::{
    cpu::TrapFrame,
    schedule::{self, schedule}, process::Process,
};

extern "C" {
    pub fn m_trap_vec() -> !;
    pub fn m_switch_task(frame: *mut TrapFrame) -> !;
}

#[inline]
pub fn switch_task(frame: *mut TrapFrame) -> ! {
    unsafe {
        m_switch_task(frame)
    }
}

#[no_mangle]
#[inline(never)]
#[link_section = ".trap"]
extern "C" fn m_trap_vec_impl(epc: usize, _frame: *mut Process) -> usize {
    let mcause = mcause::read();

    // sprintln!("mcause: {:#x?},\r\nepc: {:#x?}", mcause, epc);

    match mcause.cause() {
        // async
        Trap::Interrupt(interrupt) => {
            match interrupt {
                riscv::register::mcause::Interrupt::MachineTimer => {
                    // sprintln!("Machine timer interrupt");
                    schedule::yarr_set_timer(32);
                    switch_task(schedule())
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
