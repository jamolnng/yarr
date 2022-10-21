extern "Rust" {
    pub static mut PROCESS_LIST: &'static [Process<'static>];
}

#[repr(C)]
pub struct Process<'a> {
    pub stack: &'a [usize],
    pub exec: fn() -> !,
    pub priority: usize,
    pub ready: bool,
}
