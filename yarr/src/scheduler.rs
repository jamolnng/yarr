use crate::process::{self, Process, PROCESS_LIST};

pub enum Scheduler {
    RoundRobin,
    RealTime,
}
static mut SCHEDULER_TYPE: Scheduler = Scheduler::RoundRobin;
static mut ROUND_ROBIN_ITER: usize = 0;

extern "C" {
    pub fn start_first_task() -> !;
}

extern "Rust" {
    pub fn yarr_init_process(process: &mut Process);
}

pub fn start(sched: Scheduler) -> ! {
    core::sync::atomic::compiler_fence(core::sync::atomic::Ordering::SeqCst);
    unsafe {
        SCHEDULER_TYPE = sched;
        for i in 0..PROCESS_LIST.len() {
            yarr_init_process(&mut PROCESS_LIST[i]);
        }
        crate::scheduler::start_first_task()
    }
}

pub unsafe fn schedule() -> &'static Process {
    core::sync::atomic::compiler_fence(core::sync::atomic::Ordering::SeqCst);
    match SCHEDULER_TYPE {
        Scheduler::RoundRobin => {
            while !PROCESS_LIST[ROUND_ROBIN_ITER].ready {
                ROUND_ROBIN_ITER = (ROUND_ROBIN_ITER + 1) % PROCESS_LIST.len();
            }
            let r = &PROCESS_LIST[ROUND_ROBIN_ITER];
            ROUND_ROBIN_ITER = (ROUND_ROBIN_ITER + 1) % PROCESS_LIST.len();
            r
        }
        Scheduler::RealTime => {
            process::PROCESS_LIST
                .iter()
                .filter(|p| p.ready)
                .max_by_key(|p| p.priority)
                .unwrap_unchecked() // unwrap unchecked because idle process always ready
        }
    }
}
