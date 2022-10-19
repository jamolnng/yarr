use crate::clock::Clock;

pub struct Timer<C: Clock> {
    tick_min: u64,
    tick_max: u64,
    tick_mod: u64,
    tick_count: u64,
    tick_rate: u64,

    phantom: core::marker::PhantomData<C>,
}

impl<C: Clock> Timer<C> {
    pub fn new(tick_rate: u64) -> Self {
        let freq = C::freq();
        let tick_min = freq / tick_rate;
        let tick_max = tick_min + 1;
        let tick_mod = tick_rate - (freq % tick_rate);
        Self {
            tick_min,
            tick_max,
            tick_mod,
            tick_count: 0,
            tick_rate,

            phantom: core::marker::PhantomData,
        }
    }

    pub fn set(&mut self) {
        let mut next = C::ticks();
        if self.tick_count >= self.tick_mod {
            next += self.tick_max;
        } else {
            next += self.tick_min;
        }
        self.tick_count += 1;
        if self.tick_count == self.tick_rate {
            self.tick_count = 0;
        }
        C::set_cmp(next);
    }
}
