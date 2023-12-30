use riscv::register::{self, Permission, Range};

pub fn init(
    index: usize,
    memory_region: usize,
    range: Range,
    permission: Permission,
    locked: bool,
) {
    let region = memory_region >> 2;
    match index {
         0 => register::pmpaddr0::write(region),
         1 => register::pmpaddr1::write(region),
         2 => register::pmpaddr2::write(region),
         3 => register::pmpaddr3::write(region),
         4 => register::pmpaddr4::write(region),
         5 => register::pmpaddr5::write(region),
         6 => register::pmpaddr6::write(region),
         7 => register::pmpaddr7::write(region),
         8 => register::pmpaddr8::write(region),
         9 => register::pmpaddr9::write(region),
        10 => register::pmpaddr10::write(region),
        11 => register::pmpaddr11::write(region),
        12 => register::pmpaddr12::write(region),
        13 => register::pmpaddr13::write(region),
        14 => register::pmpaddr14::write(region),
        15 => register::pmpaddr15::write(region),
        _ => unimplemented!("Invalid PMP region: index: {:#x?} region: {:#x?} range: {:#x?} permission: {:#x?} locked: {:#x?}",
                            index, memory_region, range, permission, locked)
    }
    let cfg_idx = index % 4;
    unsafe {
        match index {
         0 |  1 |  2 |  3 => {
            register::pmpcfg0::set_pmp(cfg_idx, range, permission, locked);
         },
         4 |  5 |  6 |  7 => {
            register::pmpcfg1::set_pmp(cfg_idx, range, permission, locked);
         },
         8 |  9 | 10 | 11 => {
            register::pmpcfg2::set_pmp(cfg_idx, range, permission, locked);
         },
        12 | 13 | 14 | 15 => {
            register::pmpcfg3::set_pmp(cfg_idx, range, permission, locked);
        },
        _ => unimplemented!("Invalid PMP region: index: {:#x?} region: {:#x?} range: {:#x?} permission: {:#x?} locked: {:#x?}",
                            index, memory_region, range, permission, locked)
    }
    }
    unsafe {
        riscv::register::pmpaddr0::write(memory_region >> 2);
        riscv::register::pmpcfg0::set_pmp(
            0,
            riscv::register::Range::TOR,
            riscv::register::Permission::RWX,
            false,
        );
    }
}
