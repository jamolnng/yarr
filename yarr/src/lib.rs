#![no_std]

pub mod process;
pub mod scheduler;
pub mod timer;

#[macro_export]
macro_rules! processes {
    ($($a:expr),+) => {
        extern "Rust" {
            fn yarr_idle_task() -> !;
        }
        #[no_mangle]
        pub static mut PROCESS_LIST: &'static [yarr::process::Process] = &[
            $($a,)+
            yarr::process::Process {
                stack: &mut [0 as usize; 128],
                exec: || { unsafe{ yarr_idle_task() } },
                priority: 0,
                ready: true,
            }
        ];
    }
}
