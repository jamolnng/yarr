extern "Rust" {
    pub static mut PROCESS_LIST: &'static mut [Process];
}

// pub type Context = &'static mut [usize];
// pub type Stack = &'static mut [usize];

#[repr(C)]
pub struct Process {
    pub context: &'static mut [usize],
    pub stack: &'static mut [usize],
    pub exec: fn() -> !,
    pub priority: usize,
    pub ready: bool,
}