#[macro_export]
macro_rules! entry {
    ($path:path) => {
        #[export_name = "main"]
        pub extern "C" fn __impl_main() -> ! {
            let f: fn() -> ! = $path;

            f()
        }
    };
}