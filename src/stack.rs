pub struct Stack {
    _data: &'static [usize],
}

impl Stack {
    pub fn new(_data: &'static [usize]) -> Self {
        Self {
            _data,
        }
    }
}