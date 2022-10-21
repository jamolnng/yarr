extern "Rust" {
    pub static mut PROCESS_LIST: &'static [Process];
}

#[repr(C)]
pub struct Process {
    pub stack: &'static [usize],
    pub exec: fn() -> !,
    pub priority: usize,
    pub ready: bool,
}
