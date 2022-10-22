extern "Rust" {
    pub static mut PROCESS_LIST: &'static mut [Process];
}

#[repr(C)]
pub struct Process {
    pub stack: &'static mut [usize],
    pub exec: fn() -> !,
    pub priority: usize,
    pub ready: bool,
}