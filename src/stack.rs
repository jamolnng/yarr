pub struct Stack<'a> {
    _data: &'a mut [usize],
}

impl<'a> Stack<'a> {
    pub fn new(_data: &'a mut [usize]) -> Self {
        Self { _data }
    }
}
