use crate::{
    cpu::{Register, TrapFrame},
    process::Process,
    time::machine_time,
};

extern "C" {
    pub fn yarr_make_syscall(
        sysno: usize,
        arg0: usize,
        arg1: usize,
        arg2: usize,
        arg3: usize,
        arg4: usize,
        arg5: usize,
    );
}

pub(crate) unsafe fn handle_syscall(mepc: usize, process: *mut Process) {
    let frame = (*process).frame();
    let sysno = frame.registers().get(Register::A7);
    frame.pc(mepc + 4);
    match sysno {
        0 => {
            // yield
        }
        10 => {
            // sleep for
            #[cfg(target_arch = "riscv32")]
            {
                let durationhi = frame.registers().get(Register::A0);
                let durationlo = frame.registers().get(Register::A1);
                let duration = (durationhi as u64) << 32 | durationlo as u64;
                (*process).sleep_for(duration + machine_time());
            }
            #[cfg(target_arch = "riscv64")]
            {
                let duration = frame.registers().get(Register::A0);
                (*process).sleep_for(duration + machine_time());
            }
        }
        11 => {
            // sleep ticks
            #[cfg(target_arch = "riscv32")]
            {
                let tickshi = frame.registers().get(Register::A0);
                let tickslo = frame.registers().get(Register::A1);
                (*process).sleep_ticks((tickshi as u64) << 32 | tickslo as u64);
            }
            #[cfg(target_arch = "riscv64")]
            {
                let ticks = frame.registers().get(Register::A0) as u64;
                (*process).sleep_ticks(ticks);
            }
        }
        _ => unsafe {
            match USER_SYSCALL {
                Some(syscall) => syscall(sysno, (*process).frame()),
                None => panic!(
                    "Uknown syscall {:#x?} from process {:#x?} at {:#010x?}",
                    sysno, *process, mepc
                ),
            }
        },
    }
}

pub type SyscallF = fn(id: usize, trap_frame: *mut TrapFrame);

pub static mut USER_SYSCALL: Option<SyscallF> = None;

pub(crate) unsafe fn init(syscall: Option<SyscallF>) {
    unsafe {
        USER_SYSCALL = syscall;
    }
}
