use crate::process::{self, Process, PROCESS_LIST};

extern "C" {
    pub fn start_first_task() -> !;
}

extern "Rust" {
    pub fn yarr_init_process(stack: &mut Process);
}

pub fn start() -> ! {
    core::sync::atomic::compiler_fence(core::sync::atomic::Ordering::SeqCst);
    unsafe {
        for i in 0..PROCESS_LIST.len() {
            yarr_init_process(&mut PROCESS_LIST[i]);
        }
        crate::scheduler::start_first_task()
    }
}

pub fn schedule() -> &'static Process {
    unsafe {
        process::PROCESS_LIST
            .iter()
            .filter(|p| p.ready)
            .max_by_key(|p| p.priority)
            .unwrap_unchecked() // unwrap unchecked because idle process always ready
    }
}
