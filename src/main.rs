#![no_std]
#![no_main]

extern crate panic_halt;
extern crate riscv_rt;

use riscv_rt::entry;

pub mod clock;
pub mod process;
pub mod scheduler;
pub mod stack;
pub mod timer;

use scheduler::Scheduler;

const CLINT_REG_MTIMECMP: usize = 0x4000;
const CLINT_CTRL_ADDR: usize = 0x02000000;

unsafe fn mmio_write(address: usize, offset: usize, value: usize) {
    let reg = address as *mut usize;
    reg.add(offset).write_volatile(value);
}

unsafe fn mmio_read(address: usize, offset: usize) -> usize {
    let reg = address as *mut usize;
    reg.add(offset).read_volatile()
}

struct HiFiveRTC;

impl clock::Clock for HiFiveRTC {
    fn freq() -> u64 {
        32768
    }

    fn ticks() -> u64 {
        unsafe {
            let lo = mmio_read(CLINT_CTRL_ADDR, CLINT_REG_MTIMECMP);
            let hi = mmio_read(CLINT_CTRL_ADDR, CLINT_REG_MTIMECMP + 4);
            ((hi as u64) << 32) | lo as u64
        }
    }

    fn set_cmp(next: u64) {
        unsafe {
            mmio_write(CLINT_CTRL_ADDR, CLINT_REG_MTIMECMP, (next) as usize);
            mmio_write(
                CLINT_CTRL_ADDR,
                CLINT_REG_MTIMECMP + 4,
                (next >> 32) as usize,
            );
        }
    }
}

#[entry]
fn main() -> ! {
    let mut idle_data = [0; 64];
    let mut test_data = [0; 128];
    let mut test_data2 = [0; 256];

    let idle = process::RoundRobinProcess::idle(&mut idle_data);
    let mut processes = [
        process::RoundRobinProcess::new(
            || loop {
                // TODO
            },
            &mut test_data,
        ),
        process::RoundRobinProcess::new(
            || loop {
                // TODO
            },
            &mut test_data2,
        ),
    ];

    let mut sched = scheduler::RoundRobin::<HiFiveRTC>::new(1000, &mut processes, &idle);
    sched.start();
}
