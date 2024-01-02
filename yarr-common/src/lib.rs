#![no_std]

pub mod process;

pub mod spin_lock {

    use core::cell::UnsafeCell;
    use core::ops::{Deref, DerefMut, Drop};
    use core::sync::atomic::{AtomicBool, Ordering};

    #[derive(Debug)]
    pub struct Mutex<T> {
        lock: AtomicBool,
        inner: UnsafeCell<T>,
    }

    #[derive(Debug)]
    pub struct MutexGuard<'a, T>
    where
        T: 'a,
    {
        mutex: &'a Mutex<T>,
    }

    #[derive(Debug)]
    pub struct MutexErr<'a>(&'a str);

    impl<T> Mutex<T> {
        pub const fn new(value: T) -> Mutex<T> {
            Mutex {
                lock: AtomicBool::new(false),
                inner: UnsafeCell::new(value),
            }
        }

        pub fn try_lock(&self) -> Result<MutexGuard<T>, MutexErr> {
            if !self.lock.swap(true, Ordering::Acquire) {
                Ok(MutexGuard { mutex: self })
            } else {
                Err(MutexErr("lock error"))
            }
        }

        pub fn lock(&self) -> MutexGuard<T> {
            loop {
                if let Ok(mutex_guard) = self.try_lock() {
                    return mutex_guard;
                }
            }
        }
    }

    impl<T> Drop for Mutex<T> {
        fn drop(&mut self) {
            unsafe {
                self.inner.get().drop_in_place();
            }
        }
    }

    unsafe impl<T> Send for Mutex<T> {}
    unsafe impl<T> Sync for Mutex<T> {}

    impl<T> Drop for MutexGuard<'_, T> {
        fn drop(&mut self) {
            let _a = self.mutex.lock.swap(false, Ordering::Release);
        }
    }

    impl<T> Deref for MutexGuard<'_, T> {
        type Target = T;
        fn deref(&self) -> &Self::Target {
            unsafe { &*self.mutex.inner.get() }
        }
    }

    impl<T> DerefMut for MutexGuard<'_, T> {
        fn deref_mut(&mut self) -> &mut Self::Target {
            unsafe { &mut *self.mutex.inner.get() }
        }
    }
}
