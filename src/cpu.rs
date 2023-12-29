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
#[derive(Clone, Copy, Debug)]
pub struct Registers {
    regs: [usize; 32],
}

impl Registers {
    pub const fn new() -> Self {
        Self { regs: [0; 32] }
    }

    #[inline]
    #[allow(dead_code)]
    pub fn at(&mut self, reg: Register) -> &mut usize {
        &mut self.regs[reg as usize]
    }
}

#[repr(C)]
#[derive(Clone, Copy, Debug)]
pub struct ProgramCounter(usize);

impl ProgramCounter {
    pub const fn new() -> Self {
        Self { 0: 0 }
    }

    pub const fn from(pc: usize) -> Self {
        Self { 0: pc }
    }
}

#[repr(C)]
#[derive(Clone, Copy, Debug)]
pub struct TrapFrame {
    regs: Registers,    // 0-31
    pc: ProgramCounter, // 32
    mode: CPUMode,      // 33
}

impl TrapFrame {
    pub const fn new() -> Self {
        Self {
            regs: Registers::new(),
            pc: ProgramCounter::new(),
            mode: CPUMode::Machine,
        }
    }

    #[inline]
    pub fn registers(&mut self) -> &mut Registers {
        &mut self.regs
    }

    #[inline]
    pub fn pc(&mut self, pc: ProgramCounter) {
        self.pc = pc;
    }
}
