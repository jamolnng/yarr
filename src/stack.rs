pub struct Stack<'a> {
    _data: &'a [usize],
}

impl<'a> Stack<'a> {
    pub fn new(_data: &'a [usize]) -> Self {
        Self { _data }
    }
}
