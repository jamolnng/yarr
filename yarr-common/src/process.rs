#[repr(C)]
#[derive(Debug, PartialEq, Eq, PartialOrd, Ord)]
#[allow(dead_code)]
pub enum Sleep {
    Ticks(u64),
    Until(u64),
}

#[repr(C)]
#[derive(Debug, PartialEq, Eq, PartialOrd, Ord)]
#[allow(dead_code)]
pub enum State {
    Running,
    Waiting,
    Sleeping(Sleep),
}
