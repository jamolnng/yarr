#![no_std]

pub mod process;
pub mod scheduler;
pub mod timer;

#[macro_export]
macro_rules! processes {
    ($($a:expr),+) => {
        #[no_mangle]
        pub static mut PROCESS_LIST: &'static mut [yarr::process::Process] = &mut [
            $($a,)+
            yarr::process::Process {
                stack: &mut [0 as usize; 128],
                exec: || {
                    extern "Rust" {
                        fn yarr_idle_task() -> !;
                    }
                    unsafe{ yarr_idle_task() }
                },
                priority: 0,
                ready: true,
            }
        ];
    }
}
