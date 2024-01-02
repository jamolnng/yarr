use crate::process::Process;

extern "C" {
    fn yarr_m_switch_task(process: *mut Process) -> !;
}

extern "Rust" {
    fn yarr_schedule() -> *mut Process;
}

const MMIO_MTIMECMP: *mut u64 = 0x0200_4000usize as *mut u64;
const MMIO_MTIME: *const u64 = 0x0200_BFF8 as *const u64;
pub fn set_timer(switch_time: u64) {
    unsafe {
        MMIO_MTIMECMP.write_volatile(MMIO_MTIME.read_volatile().wrapping_add(switch_time));
    }
}

pub fn schedule_and_switch() -> ! {
    unsafe {
        set_timer(SWITCH_TIME);
        yarr_m_switch_task(yarr_schedule())
    }
}

static mut SWITCH_TIME: u64 = u64::MAX;

pub(crate) unsafe fn init(switch_time: u64) {
    SWITCH_TIME = switch_time;
}
