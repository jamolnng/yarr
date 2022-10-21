use crate::process::{self, Process};

pub trait Scheduler {
    fn start() -> !;

    fn schedule() -> &'static Process {
        unsafe {
            process::PROCESS_LIST
                .iter()
                .filter(|p| p.ready)
                .max_by_key(|p| p.priority)
                .unwrap_unchecked() // unwrap unchecked because idle process always ready
        }
    }
}
