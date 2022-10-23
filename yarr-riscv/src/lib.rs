#![no_std]

/*
context frame:
TODO: conditionally save floating point registers on system with them
-1  32(sp)  mepc/pc          machine exception program counter / program counter
-2  31(sp)  mstatus          machine status register
-3  30(sp)  x31      t6      temporary register 6
-4  29(sp)  x30      t5      temporary register 5
-5  28(sp)  x29      t4      temporary register 4
-6  27(sp)  x28      t3      temporary register 3
-7  26(sp)  x27      s11     saved register 11
-8  25(sp)  x26      s10     saved register 10
-9  24(sp)  x25      s9      saved register 9
-10 23(sp)  x24      s8      saved register 8
-11 22(sp)  x23      s7      saved register 7
-12 21(sp)  x22      s6      saved register 6
-13 20(sp)  x21      s5      saved register 5
-14 19(sp)  x20      s4      saved register 4
-15 18(sp)  x19      s3      saved register 3
-16 17(sp)  x18      s2      saved register 2
-17 16(sp)  x17      a7      function argument 7
-18 15(sp)  x16      a6      function argument 6
-19 14(sp)  x15      a5      function argument 5
-20 13(sp)  x14      a4      function argument 4
-21 12(sp)  x13      a3      function argument 3
-22 11(sp)  x12      a2      function argument 2
-23 10(sp)  x11      a1      function argument 1 / return value 1
-24 9(sp)   x10      a0      function argument 0 / return value 0
-25 8(sp)   x9       s1      saved register 1
-26 7(sp)   x8       s0/fp   saved register 0 / frame pointer
-27 6(sp)   x7       t2      temporary register 2
-28 5(sp)   x6       t1      temporary register 1
-29 4(sp)   x5       t0      temporary register 0
-30 3(sp)   x4       tp      thread pointer
-31 2(sp)   x3       gp      global pointer
-32 1(sp)   x2       sp      stack pointer
-33 0(sp)   x1       ra      return address
*/

pub mod asm;
pub mod trap;
pub mod timer;

pub use riscv_rt::entry;
use yarr::process::Process;

#[no_mangle]
fn yarr_idle_task() -> ! {
    loop {
        core::sync::atomic::compiler_fence(core::sync::atomic::Ordering::SeqCst);
        unsafe {
            riscv::asm::wfi();
        }
    }
}

#[no_mangle]
fn yarr_init_process(process: &mut Process) {
    core::sync::atomic::compiler_fence(core::sync::atomic::Ordering::SeqCst);
    let mut mstatus: usize;
    unsafe {
        core::arch::asm!(
            "csrr {0}, mstatus",
            out(reg) mstatus,
        );
    }
    // (0x188 << 4) | 8 = 0x1888 = 6280 = 0b0001100010001000 // enable MPP, MPIE, and MIE bits
    mstatus |= 0x1888;

    // store mepc/pc program counter for when initial ret is called
    process.context[process.context.len() - 1] = process.exec as *const () as usize;
    process.context[process.context.len() - 2] = mstatus;
    // store stack pointer
    process.context[1] = process.stack.as_ptr() as usize;

    // // store mepc/pc program counter for when initial ret is called
    // process.stack[process.stack.len() - 1] = process.exec as *const () as usize;
    // process.stack[process.stack.len() - 2] = mstatus;
    // // store stack pointer
    // process.stack[process.stack.len() - 32] =
    //     unsafe { process.stack.as_ptr().add(process.stack.len() - 33) } as usize;
}

// context len: 33
// fp registers len: 32
#[cfg(any(target_feature="f", target_feature="d"))]
#[macro_export]
macro_rules! context {
    () => {
        &mut [0 as usize; 33 + 32]
    };
}

// context len: 33
#[cfg(not(any(target_feature="f", target_feature="d")))]
#[macro_export]
macro_rules! context {
    () => {
        &mut [0 as usize; 33]
    };
}