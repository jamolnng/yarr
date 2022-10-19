extern "C" {
    // Boundaries of the .bss section
    static mut _bss_end: usize;
    static mut _bss_start: usize;

    // Boundaries of the .data section
    static mut _data_end: usize;
    static mut _data_start: usize;

    // Initial values of the .data section (stored in Flash)
    static _data: usize;
}

pub fn zero_bss() {
    unsafe {
        let mut sbss: *mut usize = &mut _bss_start;
        let ebss: *mut usize = &mut _bss_end;
        while sbss < ebss {
            core::ptr::write_volatile(sbss as *mut usize, core::mem::zeroed());
            sbss = sbss.offset(1);
        }
    }
    core::sync::atomic::compiler_fence(core::sync::atomic::Ordering::SeqCst);
}

pub fn init_data() {
    unsafe {
        let mut sdata: *mut usize = &mut _data_start;
        let edata: *mut usize = &mut _data_end;
        let mut data: *const usize = &_data;
        while sdata < edata {
            core::ptr::write(sdata, core::ptr::read(data));
            sdata = sdata.offset(1);
            data = data.offset(1);
        }
    }
    core::sync::atomic::compiler_fence(core::sync::atomic::Ordering::SeqCst);
}
