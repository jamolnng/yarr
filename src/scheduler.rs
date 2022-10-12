use crate::process;

pub trait Scheduler {
  fn next(&self) -> process::Process;

  fn swap(&self, _proc: &process::Process) { }

  fn start(&self) -> ! {
    loop { }
  }
}

pub struct RoundRobin {}
pub struct RealTime {}

impl Scheduler for RoundRobin {
  fn next(&self) -> process::Process {
    process::Process { }
  }
}

impl Scheduler for RealTime {
  fn next(&self) -> process::Process {
    process::Process {  }
  }
}