mod internal;
use crate::internal::entry;

use core::arch::asm;

extern "C" {
  fn main() -> !;
}

#[export_name = "_enter"]
pub extern "C" fn __impl_enter() -> ! {
  enter();
}

fn enter() -> ! {

  initialize_data();
  initialize_bss();
  start();
}

fn clear_registers() {
  asm!(
    "mv  x1, x0",
    "mv  x2, x0",
    "mv  x3, x0",
    "mv  x4, x0",
    "mv  x5, x0",
    "mv  x6, x0",
    "mv  x7, x0",
    "mv  x8, x0",
    "mv  x9, x0",
    "mv x10, x0",
    "mv x11, x0",
    "mv x12, x0",
    "mv x13, x0",
    "mv x14, x0",
    "mv x15, x0",
    "mv x16, x0",
    "mv x17, x0",
    "mv x18, x0",
    "mv x19, x0",
    "mv x21, x0",
    "mv x22, x0",
    "mv x23, x0",
    "mv x24, x0",
    "mv x25, x0",
    "mv x26, x0",
    "mv x27, x0",
    "mv x28, x0",
    "mv x29, x0",
    "mv x30, x0",
    "mv x31, x0",
  );
}

fn initialize_global_ptr() {
}

fn set_early_exception_handler() {
  asm!(
    "la t0, [ptr]",
    "crsw mtvec, t0",
    in("ptr") &early_unhandled_exception,
  );
}

fn initialize_stack_ptr() {

}

fn initialize_data() {
  let data_source_start = 0;
  let data_target_start = 0;
  let data_target_end = 0;

  let mut data_source = data_source_start;
  let mut data_target = data_target_start;

  if data_source == data_target {
    return;
  }

  if data_target >= data_target_end {
    return;
  }

  while data_source < data_init_end {
    asm!(
      "lw a0, 0([data])".
      in("data"),
    );
  }
}

fn initialize_bss() {

}

fn start() -> ! {
  main();
}

fn early_unhandled_exception() -> ! {
  loop {
    asm!(
      "csrr t0, mcause",
      "csrr t0, mpec",
      "csrr t0, mtval",
    );
  }
}