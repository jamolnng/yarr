
pub struct Scheduler {}

impl yarr::scheduler::Scheduler for Scheduler {
    fn start() -> ! {
        loop {}
    }
}
