use core::fmt::Debug;

#[repr(usize)]
#[derive(Clone, Copy, Debug)]
#[allow(dead_code)]
pub enum CPUMode {
    User = 0,
    Supervisor = 1,
    Machine = 3,
}

#[repr(usize)]
#[derive(Clone, Copy, Debug)]
pub enum Register {
    X0 = 0,
    X1,
    X2,
    X3,
    X4,
    X5,
    X6,
    X7,
    X8,
    X9,
    X10,
    X11,
    X12,
    X13,
    X14,
    X15,
    X16,
    X17,
    X18,
    X19,
    X20,
    X21,
    X22,
    X23,
    X24,
    X25,
    X26,
    X27,
    X28,
    X29,
    X30,
    X31,
}

impl Register {
    pub const ZERO: Register = Register::X0;
    pub const RA: Register = Register::X1;
    pub const SP: Register = Register::X2;
    pub const GP: Register = Register::X3;
    pub const TP: Register = Register::X4;
    pub const T0: Register = Register::X5;
    pub const T1: Register = Register::X6;
    pub const T2: Register = Register::X7;

    pub const S0: Register = Register::X8;
    pub const FP: Register = Register::X8;

    pub const S1: Register = Register::X9;
    pub const A0: Register = Register::X10;
    pub const A1: Register = Register::X11;
    pub const A2: Register = Register::X12;
    pub const A3: Register = Register::X13;
    pub const A4: Register = Register::X14;
    pub const A5: Register = Register::X15;
    pub const A6: Register = Register::X16;
    pub const A7: Register = Register::X17;
    pub const S2: Register = Register::X18;
    pub const S3: Register = Register::X19;
    pub const S4: Register = Register::X20;
    pub const S5: Register = Register::X21;
    pub const S6: Register = Register::X22;
    pub const S7: Register = Register::X23;
    pub const S8: Register = Register::X24;
    pub const S9: Register = Register::X25;
    pub const S10: Register = Register::X26;
    pub const S11: Register = Register::X27;
    pub const T3: Register = Register::X28;
    pub const T4: Register = Register::X29;
    pub const T5: Register = Register::X30;
    pub const T6: Register = Register::X31;
}

#[repr(C)]
#[derive(Clone, Copy)]
pub struct Registers {
    regs: [usize; 32],
}

impl Registers {
    pub const fn new() -> Self {
        Self { regs: [0; 32] }
    }

    pub const fn from(sp: usize) -> Self {
        let mut regs = [0; 32];
        regs[Register::SP as usize] = sp;
        Self { regs }
    }

    #[inline]
    pub fn set(&mut self, reg: Register, val: usize) {
        self.regs[reg as usize] = val;
    }

    #[inline]
    pub fn get(&mut self, reg: Register) -> usize {
        self.regs[reg as usize]
    }
}

impl Debug for Registers {
    fn fmt(&self, f: &mut core::fmt::Formatter<'_>) -> core::fmt::Result {
        f.debug_struct("Registers")
            .field("ZERO", &self.regs[Register::ZERO as usize])
            .field("RA", &self.regs[Register::RA as usize])
            .field("SP", &self.regs[Register::SP as usize])
            .field("GP", &self.regs[Register::GP as usize])
            .field("TP", &self.regs[Register::TP as usize])
            .field("T0", &self.regs[Register::T0 as usize])
            .field("T1", &self.regs[Register::T1 as usize])
            .field("T2", &self.regs[Register::T2 as usize])
            .field("S0/FP", &self.regs[Register::S0 as usize])
            .field("S1", &self.regs[Register::S1 as usize])
            .field("A0", &self.regs[Register::A0 as usize])
            .field("A1", &self.regs[Register::A1 as usize])
            .field("A2", &self.regs[Register::A2 as usize])
            .field("A3", &self.regs[Register::A3 as usize])
            .field("A4", &self.regs[Register::A4 as usize])
            .field("A5", &self.regs[Register::A5 as usize])
            .field("A6", &self.regs[Register::A6 as usize])
            .field("A7", &self.regs[Register::A7 as usize])
            .field("S2", &self.regs[Register::S2 as usize])
            .field("S3", &self.regs[Register::S3 as usize])
            .field("S4", &self.regs[Register::S4 as usize])
            .field("S5", &self.regs[Register::S5 as usize])
            .field("S6", &self.regs[Register::S6 as usize])
            .field("S7", &self.regs[Register::S7 as usize])
            .field("S8", &self.regs[Register::S8 as usize])
            .field("S9", &self.regs[Register::S9 as usize])
            .field("S10", &self.regs[Register::S10 as usize])
            .field("S11", &self.regs[Register::S11 as usize])
            .field("T3", &self.regs[Register::T3 as usize])
            .field("T4", &self.regs[Register::T4 as usize])
            .field("T5", &self.regs[Register::T5 as usize])
            .field("T6", &self.regs[Register::T6 as usize])
            .finish()
    }
}

#[repr(C)]
#[derive(Clone, Copy, Debug)]
pub struct TrapFrame {
    regs: Registers, // 0-31
    pc: usize,       // 32
    mode: CPUMode,   // 33
}

impl TrapFrame {
    pub const fn new() -> Self {
        Self {
            regs: Registers::new(),
            pc: 0,
            mode: CPUMode::Machine,
        }
    }

    pub fn init(&mut self, sp: usize, pc: usize) {
        self.regs.set(Register::SP, sp);
        self.pc = pc;
    }

    #[inline]
    pub fn registers(&mut self) -> &mut Registers {
        &mut self.regs
    }

    #[inline]
    pub fn pc(&mut self, pc: usize) {
        self.pc = pc;
    }
}
