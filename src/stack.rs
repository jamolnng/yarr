pub struct Stack<'a> {
    #[allow(dead_code)]
    data: &'a mut [usize],
}

impl<'a> Stack<'a> {
    pub fn new(data: &'a mut [usize]) -> Self {
        Self { data }
    }
}
