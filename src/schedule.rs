use crate::{PROCESS_LIST, cpu::TrapFrame};

#[allow(unused_variables)]
#[allow(dead_code)]

const MMIO_MTIMECMP: *mut u64 = 0x0200_4000usize as *mut u64;

#[allow(unused_variables)]
#[allow(dead_code)]
const MMIO_MTIME: *const u64 = 0x0200_BFF8 as *const u64;

#[no_mangle]
#[allow(unused_variables)]
#[allow(dead_code)]
#[allow(unused_unsafe)]
pub fn yarr_set_timer(switch_time: u64) {
    unsafe {
        MMIO_MTIMECMP.write_volatile(MMIO_MTIME.read_volatile().wrapping_add(switch_time));
    }
}

pub static mut PID: usize = unsafe { PROCESS_LIST.len() };

pub fn schedule() -> *mut TrapFrame {
    unsafe {
        PID += 1;
        if PID >= PROCESS_LIST.len() {
            PID = 0;
        }
        match &mut PROCESS_LIST[PID] {
            Some(process) => process.take(),
            None => schedule(),
        }
    }
}