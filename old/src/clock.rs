pub trait Clock {
    fn freq() -> u64;
    fn ticks() -> u64;
    fn set_cmp(next: u64);
}