#![allow(dead_code)]

use core::ptr::NonNull;

use riscv::register;

use crate::process::MemoryRegion;

pub type Range = register::Range;
pub type Permission = register::Permission;

#[derive(Clone, Copy, Debug)]
pub struct PMPError(usize);

impl core::fmt::Display for PMPError {
    fn fmt(&self, f: &mut core::fmt::Formatter<'_>) -> core::fmt::Result {
        match self.0 {
            0 => write!(f, "Null pointer memory region"),
            _ => write!(f, "Invalid index: {}", self.0),
        }
    }
}

pub fn clear() {
    register::pmpcfg0::write(0);
    register::pmpcfg1::write(0);
    register::pmpcfg2::write(0);
    register::pmpcfg3::write(0);
}

pub fn lock(
    index: usize,
    address: usize,
    range: Range,
    permission: Permission,
    locked: bool,
) -> Result<(), PMPError> {
    match index {
        00 => register::pmpaddr0::write(address >> 2),
        01 => register::pmpaddr1::write(address >> 2),
        02 => register::pmpaddr2::write(address >> 2),
        03 => register::pmpaddr3::write(address >> 2),
        04 => register::pmpaddr4::write(address >> 2),
        05 => register::pmpaddr5::write(address >> 2),
        06 => register::pmpaddr6::write(address >> 2),
        07 => register::pmpaddr7::write(address >> 2),
        08 => register::pmpaddr8::write(address >> 2),
        09 => register::pmpaddr9::write(address >> 2),
        10 => register::pmpaddr10::write(address >> 2),
        11 => register::pmpaddr11::write(address >> 2),
        12 => register::pmpaddr12::write(address >> 2),
        13 => register::pmpaddr13::write(address >> 2),
        14 => register::pmpaddr14::write(address >> 2),
        15 => register::pmpaddr15::write(address >> 2),
        _ => Err(PMPError(index))?,
    }
    let cfg_idx = index % 4;
    unsafe {
        match index {
            00 | 01 | 02 | 03 => register::pmpcfg0::set_pmp(cfg_idx, range, permission, locked),
            04 | 05 | 06 | 07 => register::pmpcfg1::set_pmp(cfg_idx, range, permission, locked),
            08 | 09 | 10 | 11 => register::pmpcfg2::set_pmp(cfg_idx, range, permission, locked),
            12 | 13 | 14 | 15 => register::pmpcfg3::set_pmp(cfg_idx, range, permission, locked),
            _ => Err(PMPError(index))?,
        }
    }
    Ok(())
}

pub fn unlock(index: usize) -> Result<(), PMPError> {
    let cfg_idx = index % 4;
    unsafe {
        match index {
            00 | 01 | 02 | 03 => register::pmpcfg0::clear_pmp(cfg_idx),
            04 | 05 | 06 | 07 => register::pmpcfg0::clear_pmp(cfg_idx),
            08 | 09 | 10 | 11 => register::pmpcfg0::clear_pmp(cfg_idx),
            12 | 13 | 14 | 15 => register::pmpcfg0::clear_pmp(cfg_idx),
            _ => Err(PMPError(index))?,
        }
    }
    Ok(())
}

#[inline]
pub fn lock_top_of_range(
    index: usize,
    address: usize,
    range: Range,
    permission: Permission,
    locked: bool,
) -> Result<(), PMPError> {
    lock(index, address, range, permission, locked)
}

pub fn lock_region(
    index: usize,
    start: usize,
    len: usize,
    permission: Permission,
    locked: bool,
) -> Result<(), PMPError> {
    lock(index, start + len, Range::NAPOT, permission, locked)
}

pub fn lock_memory_region(
    index: usize,
    region: &mut dyn MemoryRegion,
    permission: Permission,
    locked: bool,
) -> Result<(), PMPError> {
    let region = NonNull::new(region).ok_or(PMPError(0))?;
    lock_region(
        index,
        unsafe { region.as_ref().begin() },
        unsafe { region.as_ref().len() },
        permission,
        locked,
    )
}
