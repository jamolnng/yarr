use core::{
    alloc::{GlobalAlloc, Layout},
    cell::UnsafeCell,
    ptr::null_mut,
    sync::atomic::{AtomicUsize, Ordering},
};

const HEAP_SIZE: usize = 8192; // half of FE310-G002 RAM
const MAX_SUPPORTED_ALIGN: usize = 4096; // half of FE310-G002 RAM
#[repr(C, align(32))]
#[derive(Debug)]
pub struct SimpleAllocator {
    heap: UnsafeCell<[u8; HEAP_SIZE]>,
    remaining: AtomicUsize,
}

#[global_allocator]
pub static ALLOCATOR: SimpleAllocator = SimpleAllocator {
    heap: UnsafeCell::new([0x55; HEAP_SIZE]),
    remaining: AtomicUsize::new(HEAP_SIZE),
};

unsafe impl Sync for SimpleAllocator {}

unsafe impl GlobalAlloc for SimpleAllocator {
    unsafe fn alloc(&self, layout: Layout) -> *mut u8 {
        let size = layout.size();
        let align = layout.align();

        // `Layout` contract forbids making a `Layout` with align=0, or align not power of 2.
        // So we can safely use a mask to ensure alignment without worrying about UB.
        let align_mask_to_round_down = !(align - 1);

        if align > MAX_SUPPORTED_ALIGN {
            return null_mut();
        }

        if size > self.remaining.fetch_add(0, Ordering::SeqCst) {
            return null_mut();
        }
        self.remaining.fetch_sub(size, Ordering::SeqCst); // remaining -= size
        self.remaining.fetch_and(align_mask_to_round_down, Ordering::SeqCst); // remaing &= align_mask_to_round_down
        let allocated = self.remaining.fetch_add(0, Ordering::SeqCst); // allocated = remaining
        self.heap.get().cast::<u8>().add(allocated)

        // lr/sc operations not supported on the DTIM of the FE310 :/
        // let t = self
        //     .remaining
        //     .fetch_update(Ordering::SeqCst, Ordering::Relaxed, |mut remaining| {
        //         if size > remaining {
        //             return None;
        //         }

        //         remaining -= size;
        //         remaining &= align_mask_to_round_down;
        //         allocated = remaining;
        //         Some(remaining)
        //     });

        // if t.is_err() {
        //     return null_mut();
        // };
        // self.heap.get().cast::<u8>().add(allocated)
    }
    unsafe fn dealloc(&self, _ptr: *mut u8, _layout: Layout) {}
}
