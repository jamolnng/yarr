pub fn machine_time() -> u64 {
    const MMIO_MTIME: *const u64 = 0x0200_BFF8 as *const u64;
    unsafe { MMIO_MTIME.read_volatile() }
}
