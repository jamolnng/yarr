use crate::process;

pub struct Scheduler {}

impl Scheduler {
    pub fn test(&self) -> bool {
        unsafe { process::PROCESS_LIST.len() > 1 }
    }
}
