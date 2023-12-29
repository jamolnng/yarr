
target/riscv32imac-unknown-none-elf/debug/examples/basic:     file format elf32-littleriscv


Disassembly of section .text:

20010000 <_start>:
20010000:	200100b7          	lui	ra,0x20010
20010004:	00808067          	jr	8(ra) # 20010008 <_abs_start>

20010008 <_abs_start>:
20010008:	30405073          	.insn	4, 0x30405073
2001000c:	34405073          	.insn	4, 0x34405073
20010010:	4081                	li	ra,0
20010012:	4101                	li	sp,0
20010014:	4181                	li	gp,0
20010016:	4201                	li	tp,0
20010018:	4281                	li	t0,0
2001001a:	4301                	li	t1,0
2001001c:	4381                	li	t2,0
2001001e:	4401                	li	s0,0
20010020:	4481                	li	s1,0
20010022:	4681                	li	a3,0
20010024:	4701                	li	a4,0
20010026:	4781                	li	a5,0
20010028:	4801                	li	a6,0
2001002a:	4881                	li	a7,0
2001002c:	4901                	li	s2,0
2001002e:	4981                	li	s3,0
20010030:	4a01                	li	s4,0
20010032:	4a81                	li	s5,0
20010034:	4b01                	li	s6,0
20010036:	4b81                	li	s7,0
20010038:	4c01                	li	s8,0
2001003a:	4c81                	li	s9,0
2001003c:	4d01                	li	s10,0
2001003e:	4d81                	li	s11,0
20010040:	4e01                	li	t3,0
20010042:	4e81                	li	t4,0
20010044:	4f01                	li	t5,0
20010046:	4f81                	li	t6,0
20010048:	5fff0197          	auipc	gp,0x5fff0
2001004c:	7b818193          	add	gp,gp,1976 # 80000800 <__global_pointer$>
20010050:	f14023f3          	.insn	4, 0xf14023f3
20010054:	000002b7          	lui	t0,0x0
20010058:	00028293          	mv	t0,t0
2001005c:	0072f463          	bgeu	t0,t2,20010064 <_abs_start+0x5c>
20010060:	4560506f          	j	200154b6 <abort>
20010064:	5fff4117          	auipc	sp,0x5fff4
20010068:	f9c10113          	add	sp,sp,-100 # 80004000 <_sstack>
2001006c:	000012b7          	lui	t0,0x1
20010070:	80028293          	add	t0,t0,-2048 # 800 <_hart_stack_size>
20010074:	025382b3          	mul	t0,t2,t0
20010078:	40510133          	sub	sp,sp,t0
2001007c:	00010433          	add	s0,sp,zero
20010080:	0040006f          	j	20010084 <_start_rust>

20010084 <_start_rust>:
///
/// Zeros bss section, initializes data section and calls main. This function
/// never returns.
#[link_section = ".init.rust"]
#[export_name = "_start_rust"]
pub unsafe extern "C" fn start_rust(a0: usize, a1: usize, a2: usize) -> ! {
20010084:	1101                	add	sp,sp,-32
20010086:	ce06                	sw	ra,28(sp)
20010088:	c032                	sw	a2,0(sp)
2001008a:	c22e                	sw	a1,4(sp)
2001008c:	c42a                	sw	a0,8(sp)
2001008e:	c62a                	sw	a0,12(sp)
20010090:	c82e                	sw	a1,16(sp)
20010092:	ca32                	sw	a2,20(sp)

    // sbi passes hartid as first parameter (a0)
    #[cfg(feature = "s-mode")]
    let hartid = a0;
    #[cfg(not(feature = "s-mode"))]
    let hartid = mhartid::read();
20010094:	00004097          	auipc	ra,0x4
20010098:	990080e7          	jalr	-1648(ra) # 20013a24 <riscv::register::mhartid::read>
2001009c:	cc2a                	sw	a0,24(sp)

    if _mp_hook(hartid) {
2001009e:	00004097          	auipc	ra,0x4
200100a2:	9b4080e7          	jalr	-1612(ra) # 20013a52 <default_mp_hook>
200100a6:	ed11                	bnez	a0,200100c2 <_start_rust+0x3e>
200100a8:	a009                	j	200100aa <_start_rust+0x26>
        r0::init_data(&mut _sdata, &mut _edata, &_sidata);
    }

    // TODO: Enable FPU when available

    _setup_interrupts();
200100aa:	00004097          	auipc	ra,0x4
200100ae:	9c4080e7          	jalr	-1596(ra) # 20013a6e <default_setup_interrupts>
200100b2:	4522                	lw	a0,8(sp)
200100b4:	4592                	lw	a1,4(sp)
200100b6:	4602                	lw	a2,0(sp)

    main(a0, a1, a2);
200100b8:	00000097          	auipc	ra,0x0
200100bc:	3b8080e7          	jalr	952(ra) # 20010470 <main>
200100c0:	0000                	unimp
        __pre_init();
200100c2:	00004097          	auipc	ra,0x4
200100c6:	98e080e7          	jalr	-1650(ra) # 20013a50 <default_pre_init>
        r0::zero_bss(&mut _sbss, &mut _ebss);
200100ca:	80000537          	lui	a0,0x80000
200100ce:	07850513          	add	a0,a0,120 # 80000078 <.L__unnamed_7>
200100d2:	800015b7          	lui	a1,0x80001
200100d6:	aa058593          	add	a1,a1,-1376 # 80000aa0 <_ebss>
200100da:	00003097          	auipc	ra,0x3
200100de:	7cc080e7          	jalr	1996(ra) # 200138a6 <r0::zero_bss>
        r0::init_data(&mut _sdata, &mut _edata, &_sidata);
200100e2:	80000537          	lui	a0,0x80000
200100e6:	00050513          	mv	a0,a0
200100ea:	800005b7          	lui	a1,0x80000
200100ee:	07858593          	add	a1,a1,120 # 80000078 <.L__unnamed_7>
200100f2:	20017637          	lui	a2,0x20017
200100f6:	be860613          	add	a2,a2,-1048 # 20016be8 <_sidata>
200100fa:	00003097          	auipc	ra,0x3
200100fe:	7fe080e7          	jalr	2046(ra) # 200138f8 <r0::init_data>
20010102:	b765                	j	200100aa <_start_rust+0x26>

20010104 <_start_trap>:
20010104:	7139                	add	sp,sp,-64
20010106:	c006                	sw	ra,0(sp)
20010108:	c216                	sw	t0,4(sp)
2001010a:	c41a                	sw	t1,8(sp)
2001010c:	c61e                	sw	t2,12(sp)
2001010e:	c872                	sw	t3,16(sp)
20010110:	ca76                	sw	t4,20(sp)
20010112:	cc7a                	sw	t5,24(sp)
20010114:	ce7e                	sw	t6,28(sp)
20010116:	d02a                	sw	a0,32(sp)
20010118:	d22e                	sw	a1,36(sp)
2001011a:	d432                	sw	a2,40(sp)
2001011c:	d636                	sw	a3,44(sp)
2001011e:	d83a                	sw	a4,48(sp)
20010120:	da3e                	sw	a5,52(sp)
20010122:	dc42                	sw	a6,56(sp)
20010124:	de46                	sw	a7,60(sp)
20010126:	00010533          	add	a0,sp,zero
2001012a:	02a000ef          	jal	20010154 <_start_trap_rust>
2001012e:	4082                	lw	ra,0(sp)
20010130:	4292                	lw	t0,4(sp)
20010132:	4322                	lw	t1,8(sp)
20010134:	43b2                	lw	t2,12(sp)
20010136:	4e42                	lw	t3,16(sp)
20010138:	4ed2                	lw	t4,20(sp)
2001013a:	4f62                	lw	t5,24(sp)
2001013c:	4ff2                	lw	t6,28(sp)
2001013e:	5502                	lw	a0,32(sp)
20010140:	5592                	lw	a1,36(sp)
20010142:	5622                	lw	a2,40(sp)
20010144:	56b2                	lw	a3,44(sp)
20010146:	5742                	lw	a4,48(sp)
20010148:	57d2                	lw	a5,52(sp)
2001014a:	5862                	lw	a6,56(sp)
2001014c:	58f2                	lw	a7,60(sp)
2001014e:	6121                	add	sp,sp,64
20010150:	30200073          	mret

20010154 <_start_trap_rust>:
/// `scause`/`mcause` is read to determine the cause of the trap. XLEN-1 bit indicates
/// if it's an interrupt or an exception. The result is examined and ExceptionHandler
/// or one of the core interrupt handlers is called.
#[link_section = ".trap.rust"]
#[export_name = "_start_trap_rust"]
pub extern "C" fn start_trap_rust(trap_frame: *const TrapFrame) {
20010154:	1101                	add	sp,sp,-32
20010156:	ce06                	sw	ra,28(sp)
20010158:	c62a                	sw	a0,12(sp)
2001015a:	ca2a                	sw	a0,20(sp)
        fn ExceptionHandler(trap_frame: &TrapFrame);
        fn DefaultHandler();
    }

    unsafe {
        let cause = xcause::read();
2001015c:	00004097          	auipc	ra,0x4
20010160:	86c080e7          	jalr	-1940(ra) # 200139c8 <riscv::register::mcause::read>
20010164:	c82a                	sw	a0,16(sp)
20010166:	0808                	add	a0,sp,16

        if cause.is_exception() {
20010168:	00004097          	auipc	ra,0x4
2001016c:	884080e7          	jalr	-1916(ra) # 200139ec <riscv::register::mcause::Mcause::is_exception>
20010170:	e919                	bnez	a0,20010186 <_start_trap_rust+0x32>
20010172:	a009                	j	20010174 <_start_trap_rust+0x20>
20010174:	0808                	add	a0,sp,16
            ExceptionHandler(&*trap_frame)
        } else {
            if cause.code() < __INTERRUPTS.len() {
20010176:	00004097          	auipc	ra,0x4
2001017a:	8a0080e7          	jalr	-1888(ra) # 20013a16 <riscv::register::mcause::Mcause::code>
2001017e:	45b1                	li	a1,12
20010180:	00b56e63          	bltu	a0,a1,2001019c <_start_trap_rust+0x48>
20010184:	a039                	j	20010192 <_start_trap_rust+0x3e>
            ExceptionHandler(&*trap_frame)
20010186:	4532                	lw	a0,12(sp)
20010188:	00004097          	auipc	ra,0x4
2001018c:	8bc080e7          	jalr	-1860(ra) # 20013a44 <DefaultExceptionHandler>
20010190:	a00d                	j	200101b2 <_start_trap_rust+0x5e>
                    DefaultHandler();
                } else {
                    (h.handler)();
                }
            } else {
                DefaultHandler();
20010192:	00004097          	auipc	ra,0x4
20010196:	8ba080e7          	jalr	-1862(ra) # 20013a4c <DefaultInterruptHandler>
2001019a:	a821                	j	200101b2 <_start_trap_rust+0x5e>
2001019c:	0808                	add	a0,sp,16
                let h = &__INTERRUPTS[cause.code()];
2001019e:	00004097          	auipc	ra,0x4
200101a2:	878080e7          	jalr	-1928(ra) # 20013a16 <riscv::register::mcause::Mcause::code>
200101a6:	85aa                	mv	a1,a0
200101a8:	c42e                	sw	a1,8(sp)
200101aa:	45b1                	li	a1,12
200101ac:	00b56663          	bltu	a0,a1,200101b8 <_start_trap_rust+0x64>
200101b0:	a00d                	j	200101d2 <_start_trap_rust+0x7e>
            }
        }
    }
}
200101b2:	40f2                	lw	ra,28(sp)
200101b4:	6105                	add	sp,sp,32
200101b6:	8082                	ret
                let h = &__INTERRUPTS[cause.code()];
200101b8:	4522                	lw	a0,8(sp)
200101ba:	00251593          	sll	a1,a0,0x2
200101be:	20016537          	lui	a0,0x20016
200101c2:	6b850513          	add	a0,a0,1720 # 200166b8 <__INTERRUPTS>
200101c6:	952e                	add	a0,a0,a1
200101c8:	c22a                	sw	a0,4(sp)
200101ca:	cc2a                	sw	a0,24(sp)
                if h.reserved == 0 {
200101cc:	4108                	lw	a0,0(a0)
200101ce:	cd09                	beqz	a0,200101e8 <_start_trap_rust+0x94>
200101d0:	a00d                	j	200101f2 <_start_trap_rust+0x9e>
                let h = &__INTERRUPTS[cause.code()];
200101d2:	4522                	lw	a0,8(sp)
200101d4:	200165b7          	lui	a1,0x20016
200101d8:	6a858613          	add	a2,a1,1704 # 200166a8 <.L__unnamed_4>
200101dc:	45b1                	li	a1,12
200101de:	00004097          	auipc	ra,0x4
200101e2:	7a0080e7          	jalr	1952(ra) # 2001497e <core::panicking::panic_bounds_check>
200101e6:	0000                	unimp
                    DefaultHandler();
200101e8:	00004097          	auipc	ra,0x4
200101ec:	864080e7          	jalr	-1948(ra) # 20013a4c <DefaultInterruptHandler>
200101f0:	b7c9                	j	200101b2 <_start_trap_rust+0x5e>
                    (h.handler)();
200101f2:	4512                	lw	a0,4(sp)
200101f4:	4108                	lw	a0,0(a0)
200101f6:	9502                	jalr	a0
200101f8:	bf6d                	j	200101b2 <_start_trap_rust+0x5e>

200101fa <core::fmt::Arguments::new_v1>:
200101fa:	711d                	add	sp,sp,-96
200101fc:	c63a                	sw	a4,12(sp)
200101fe:	c836                	sw	a3,16(sp)
20010200:	ca32                	sw	a2,20(sp)
20010202:	cc2e                	sw	a1,24(sp)
20010204:	ce2a                	sw	a0,28(sp)
20010206:	c4ae                	sw	a1,72(sp)
20010208:	c6b2                	sw	a2,76(sp)
2001020a:	c8b6                	sw	a3,80(sp)
2001020c:	caba                	sw	a4,84(sp)
2001020e:	00e66963          	bltu	a2,a4,20010220 <core::fmt::Arguments::new_v1+0x26>
20010212:	a009                	j	20010214 <core::fmt::Arguments::new_v1+0x1a>
20010214:	45d2                	lw	a1,20(sp)
20010216:	4532                	lw	a0,12(sp)
20010218:	0505                	add	a0,a0,1
2001021a:	02b56563          	bltu	a0,a1,20010244 <core::fmt::Arguments::new_v1+0x4a>
2001021e:	a011                	j	20010222 <core::fmt::Arguments::new_v1+0x28>
20010220:	a015                	j	20010244 <core::fmt::Arguments::new_v1+0x4a>
20010222:	4532                	lw	a0,12(sp)
20010224:	45f2                	lw	a1,28(sp)
20010226:	4642                	lw	a2,16(sp)
20010228:	46d2                	lw	a3,20(sp)
2001022a:	4762                	lw	a4,24(sp)
2001022c:	4781                	li	a5,0
2001022e:	dc3e                	sw	a5,56(sp)
20010230:	c198                	sw	a4,0(a1)
20010232:	c1d4                	sw	a3,4(a1)
20010234:	5762                	lw	a4,56(sp)
20010236:	56f2                	lw	a3,60(sp)
20010238:	c998                	sw	a4,16(a1)
2001023a:	c9d4                	sw	a3,20(a1)
2001023c:	c590                	sw	a2,8(a1)
2001023e:	c5c8                	sw	a0,12(a1)
20010240:	6125                	add	sp,sp,96
20010242:	8082                	ret
20010244:	20015537          	lui	a0,0x20015
20010248:	4cc50613          	add	a2,a0,1228 # 200154cc <.L__unnamed_1>
2001024c:	ccb2                	sw	a2,88(sp)
2001024e:	4585                	li	a1,1
20010250:	ceae                	sw	a1,92(sp)
20010252:	4501                	li	a0,0
20010254:	c0aa                	sw	a0,64(sp)
20010256:	d032                	sw	a2,32(sp)
20010258:	d22e                	sw	a1,36(sp)
2001025a:	4606                	lw	a2,64(sp)
2001025c:	4596                	lw	a1,68(sp)
2001025e:	d832                	sw	a2,48(sp)
20010260:	da2e                	sw	a1,52(sp)
20010262:	200155b7          	lui	a1,0x20015
20010266:	4d458593          	add	a1,a1,1236 # 200154d4 <.L__unnamed_5>
2001026a:	d42e                	sw	a1,40(sp)
2001026c:	d62a                	sw	a0,44(sp)
2001026e:	20015537          	lui	a0,0x20015
20010272:	52050593          	add	a1,a0,1312 # 20015520 <.L__unnamed_3>
20010276:	1008                	add	a0,sp,32
20010278:	00004097          	auipc	ra,0x4
2001027c:	6ac080e7          	jalr	1708(ra) # 20014924 <core::panicking::panic_fmt>
	...

20010282 <riscv::interrupt::free>:
/// way to enter a critical section which provides a `CriticalSection` token.
///
/// This crate provides an implementation for `critical-section` suitable for single-hart systems,
/// based on disabling all interrupts. It can be enabled with the `critical-section-single-hart` feature.
#[inline]
pub fn free<F, R>(f: F) -> R
20010282:	1141                	add	sp,sp,-16
where
    F: FnOnce() -> R,
{
    let mstatus = mstatus::read();
20010284:	c606                	sw	ra,12(sp)
20010286:	00001097          	auipc	ra,0x1
2001028a:	85e080e7          	jalr	-1954(ra) # 20010ae4 <riscv::register::mstatus::read>
2001028e:	c22a                	sw	a0,4(sp)

    // disable interrupts
    unsafe {
        disable();
20010290:	00001097          	auipc	ra,0x1
20010294:	cfc080e7          	jalr	-772(ra) # 20010f8c <riscv::interrupt::disable>
    }

    let r = f();
20010298:	00000097          	auipc	ra,0x0
2001029c:	12a080e7          	jalr	298(ra) # 200103c2 <hifive1::stdout::configure::{{closure}}>
200102a0:	0048                	add	a0,sp,4

    // If the interrupts were active before our `disable` call, then re-enable
    // them. Otherwise, keep them disabled
    if mstatus.mie() {
200102a2:	00001097          	auipc	ra,0x1
200102a6:	872080e7          	jalr	-1934(ra) # 20010b14 <riscv::register::mstatus::Mstatus::mie>
200102aa:	e509                	bnez	a0,200102b4 <riscv::interrupt::free+0x32>
200102ac:	a009                	j	200102ae <riscv::interrupt::free+0x2c>
            enable();
        }
    }

    r
}
200102ae:	40b2                	lw	ra,12(sp)
200102b0:	0141                	add	sp,sp,16
200102b2:	8082                	ret
            enable();
200102b4:	00001097          	auipc	ra,0x1
200102b8:	cc6080e7          	jalr	-826(ra) # 20010f7a <riscv::interrupt::enable>
200102bc:	bfcd                	j	200102ae <riscv::interrupt::free+0x2c>

200102be <core::option::Option<T>::map>:
200102be:	7139                	add	sp,sp,-64
200102c0:	de06                	sw	ra,60(sp)
200102c2:	c62a                	sw	a0,12(sp)
200102c4:	00b109a3          	sb	a1,19(sp)
200102c8:	4505                	li	a0,1
200102ca:	02a10ca3          	sb	a0,57(sp)
200102ce:	01314503          	lbu	a0,19(sp)
200102d2:	8905                	and	a0,a0,1
200102d4:	e511                	bnez	a0,200102e0 <core::option::Option<T>::map+0x22>
200102d6:	a009                	j	200102d8 <core::option::Option<T>::map+0x1a>
200102d8:	45b2                	lw	a1,12(sp)
200102da:	4501                	li	a0,0
200102dc:	c188                	sw	a0,0(a1)
200102de:	a03d                	j	2001030c <core::option::Option<T>::map+0x4e>
200102e0:	4501                	li	a0,0
200102e2:	02a10ca3          	sb	a0,57(sp)
200102e6:	0848                	add	a0,sp,20
200102e8:	c42a                	sw	a0,8(sp)
200102ea:	00001097          	auipc	ra,0x1
200102ee:	ad4080e7          	jalr	-1324(ra) # 20010dbe <core::ops::function::FnOnce::call_once>
200102f2:	45a2                	lw	a1,8(sp)
200102f4:	4532                	lw	a0,12(sp)
200102f6:	0511                	add	a0,a0,4
200102f8:	02400613          	li	a2,36
200102fc:	00005097          	auipc	ra,0x5
20010300:	102080e7          	jalr	258(ra) # 200153fe <memcpy>
20010304:	45b2                	lw	a1,12(sp)
20010306:	4505                	li	a0,1
20010308:	c188                	sw	a0,0(a1)
2001030a:	a009                	j	2001030c <core::option::Option<T>::map+0x4e>
2001030c:	03914503          	lbu	a0,57(sp)
20010310:	8905                	and	a0,a0,1
20010312:	e509                	bnez	a0,2001031c <core::option::Option<T>::map+0x5e>
20010314:	a009                	j	20010316 <core::option::Option<T>::map+0x58>
20010316:	50f2                	lw	ra,60(sp)
20010318:	6121                	add	sp,sp,64
2001031a:	8082                	ret
2001031c:	bfed                	j	20010316 <core::option::Option<T>::map+0x58>

2001031e <core::option::Option<T>::unwrap>:
2001031e:	1141                	add	sp,sp,-16
20010320:	c606                	sw	ra,12(sp)
20010322:	c032                	sw	a2,0(sp)
20010324:	c22e                	sw	a1,4(sp)
20010326:	c42a                	sw	a0,8(sp)
20010328:	4188                	lw	a0,0(a1)
2001032a:	ed11                	bnez	a0,20010346 <core::option::Option<T>::unwrap+0x28>
2001032c:	a009                	j	2001032e <core::option::Option<T>::unwrap+0x10>
2001032e:	4602                	lw	a2,0(sp)
20010330:	20015537          	lui	a0,0x20015
20010334:	53050513          	add	a0,a0,1328 # 20015530 <.L__unnamed_1>
20010338:	02b00593          	li	a1,43
2001033c:	00004097          	auipc	ra,0x4
20010340:	616080e7          	jalr	1558(ra) # 20014952 <core::panicking::panic>
20010344:	0000                	unimp
20010346:	4522                	lw	a0,8(sp)
20010348:	4592                	lw	a1,4(sp)
2001034a:	0591                	add	a1,a1,4
2001034c:	02400613          	li	a2,36
20010350:	00005097          	auipc	ra,0x5
20010354:	0ae080e7          	jalr	174(ra) # 200153fe <memcpy>
20010358:	40b2                	lw	ra,12(sp)
2001035a:	0141                	add	sp,sp,16
2001035c:	8082                	ret

2001035e <core::option::Option<T>::replace>:
2001035e:	1141                	add	sp,sp,-16
20010360:	862a                	mv	a2,a0
20010362:	c432                	sw	a2,8(sp)
20010364:	4505                	li	a0,1
20010366:	00a103a3          	sb	a0,7(sp)
2001036a:	00064503          	lbu	a0,0(a2)
2001036e:	00a107a3          	sb	a0,15(sp)
20010372:	00714583          	lbu	a1,7(sp)
20010376:	00b60023          	sb	a1,0(a2)
2001037a:	0141                	add	sp,sp,16
2001037c:	8082                	ret

2001037e <hifive1::stdout::configure>:
        Ok(())
    }
}

/// Configures stdout
pub fn configure<X, Y>(
2001037e:	7179                	add	sp,sp,-48
20010380:	d606                	sw	ra,44(sp)
20010382:	c832                	sw	a2,16(sp)
20010384:	c62e                	sw	a1,12(sp)
    clocks: Clocks,
) -> Rx<UART0> {
    let tx = tx.into_iof0();
    let rx = rx.into_iof0();
    let serial = Serial::new(uart, (tx, rx), baud_rate, clocks);
    let (tx, rx) = serial.split();
20010386:	c42a                	sw	a0,8(sp)
20010388:	d02a                	sw	a0,32(sp)
2001038a:	d22e                	sw	a1,36(sp)
2001038c:	d432                	sw	a2,40(sp)
    let tx = tx.into_iof0();
2001038e:	00000097          	auipc	ra,0x0
20010392:	6aa080e7          	jalr	1706(ra) # 20010a38 <e310x_hal::gpio::gpio0::Pin17<MODE>::into_iof0>
    let rx = rx.into_iof0();
20010396:	00000097          	auipc	ra,0x0
2001039a:	670080e7          	jalr	1648(ra) # 20010a06 <e310x_hal::gpio::gpio0::Pin16<MODE>::into_iof0>
2001039e:	4522                	lw	a0,8(sp)
200103a0:	45b2                	lw	a1,12(sp)
200103a2:	4642                	lw	a2,16(sp)
    let serial = Serial::new(uart, (tx, rx), baud_rate, clocks);
200103a4:	00000097          	auipc	ra,0x0
200103a8:	1bc080e7          	jalr	444(ra) # 20010560 <e310x_hal::serial::Serial<UART,(TX,RX)>::new>
    let (tx, rx) = serial.split();
200103ac:	00000097          	auipc	ra,0x0
200103b0:	440080e7          	jalr	1088(ra) # 200107ec <e310x_hal::serial::Serial<UART,(TX,RX)>::split>

    interrupt::free(|| unsafe {
200103b4:	00000097          	auipc	ra,0x0
200103b8:	ece080e7          	jalr	-306(ra) # 20010282 <riscv::interrupt::free>
        STDOUT.replace(SerialWrapper(tx));
    });
    rx
}
200103bc:	50b2                	lw	ra,44(sp)
200103be:	6145                	add	sp,sp,48
200103c0:	8082                	ret

200103c2 <hifive1::stdout::configure::{{closure}}>:
    interrupt::free(|| unsafe {
200103c2:	1141                	add	sp,sp,-16
        STDOUT.replace(SerialWrapper(tx));
200103c4:	c606                	sw	ra,12(sp)
200103c6:	80001537          	lui	a0,0x80001
200103ca:	a8850513          	add	a0,a0,-1400 # 80000a88 <hifive1::stdout::STDOUT>
200103ce:	00000097          	auipc	ra,0x0
200103d2:	f90080e7          	jalr	-112(ra) # 2001035e <core::option::Option<T>::replace>
    });
200103d6:	40b2                	lw	ra,12(sp)
200103d8:	0141                	add	sp,sp,16
200103da:	8082                	ret

200103dc <basic::mmio_write>:
const GPIO_REG_OUTPUT_EN: usize = 0x08 / 4;
const RED_LED: usize = 0x00400000;
const GREEN_LED: usize = 0x00080000;
const BLUE_LED: usize = 0x00200000;

unsafe fn mmio_write(address: usize, offset: usize, value: usize) {
200103dc:	1101                	add	sp,sp,-32
200103de:	c02a                	sw	a0,0(sp)
200103e0:	c22e                	sw	a1,4(sp)
200103e2:	c432                	sw	a2,8(sp)
    let reg = address as *mut usize;
200103e4:	c62a                	sw	a0,12(sp)
200103e6:	cc2a                	sw	a0,24(sp)
200103e8:	ce2e                	sw	a1,28(sp)
200103ea:	058a                	sll	a1,a1,0x2
200103ec:	952e                	add	a0,a0,a1
200103ee:	c82a                	sw	a0,16(sp)
200103f0:	ca32                	sw	a2,20(sp)
200103f2:	c110                	sw	a2,0(a0)
    reg.add(offset).write_volatile(value);
}
200103f4:	6105                	add	sp,sp,32
200103f6:	8082                	ret

200103f8 <basic::mmio_read>:

unsafe fn mmio_read(address: usize, offset: usize) -> usize {
200103f8:	1101                	add	sp,sp,-32
200103fa:	c02a                	sw	a0,0(sp)
200103fc:	c22e                	sw	a1,4(sp)
    let reg = address as *mut usize;
200103fe:	c42a                	sw	a0,8(sp)
20010400:	cc2a                	sw	a0,24(sp)
20010402:	ce2e                	sw	a1,28(sp)
20010404:	058a                	sll	a1,a1,0x2
20010406:	952e                	add	a0,a0,a1
20010408:	c62a                	sw	a0,12(sp)
2001040a:	c82a                	sw	a0,16(sp)
2001040c:	4108                	lw	a0,0(a0)
2001040e:	ca2a                	sw	a0,20(sp)
20010410:	4552                	lw	a0,20(sp)
    reg.add(offset).read_volatile()
}
20010412:	6105                	add	sp,sp,32
20010414:	8082                	ret

20010416 <rust_begin_unwind>:
    }
);

#[inline(never)]
#[panic_handler]
fn panic(info: &core::panic::PanicInfo) -> ! {
20010416:	7139                	add	sp,sp,-64
20010418:	de06                	sw	ra,60(sp)
2001041a:	c22a                	sw	a0,4(sp)
2001041c:	004c                	add	a1,sp,4
2001041e:	da2e                	sw	a1,52(sp)
20010420:	20011537          	lui	a0,0x20011
20010424:	9ee50513          	add	a0,a0,-1554 # 200109ee <<&T as core::fmt::Display>::fmt>
20010428:	dc2a                	sw	a0,56(sp)
2001042a:	d62e                	sw	a1,44(sp)
2001042c:	d82a                	sw	a0,48(sp)
2001042e:	55b2                	lw	a1,44(sp)
20010430:	5542                	lw	a0,48(sp)
    sprintln!("info: {info}", info = info);
20010432:	d02e                	sw	a1,32(sp)
20010434:	d22a                	sw	a0,36(sp)
20010436:	20015537          	lui	a0,0x20015
2001043a:	56450593          	add	a1,a0,1380 # 20015564 <.L__unnamed_1>
2001043e:	0028                	add	a0,sp,8
20010440:	c02a                	sw	a0,0(sp)
20010442:	4609                	li	a2,2
20010444:	1014                	add	a3,sp,32
20010446:	4705                	li	a4,1
20010448:	00000097          	auipc	ra,0x0
2001044c:	db2080e7          	jalr	-590(ra) # 200101fa <core::fmt::Arguments::new_v1>
20010450:	4502                	lw	a0,0(sp)
20010452:	00001097          	auipc	ra,0x1
20010456:	44e080e7          	jalr	1102(ra) # 200118a0 <hifive1::stdout::write_fmt>
2001045a:	a009                	j	2001045c <rust_begin_unwind+0x46>
2001045c:	4511                	li	a0,4
    loop {
        core::sync::atomic::compiler_fence(core::sync::atomic::Ordering::SeqCst);
2001045e:	02a105a3          	sb	a0,43(sp)
20010462:	02b14503          	lbu	a0,43(sp)
20010466:	00001097          	auipc	ra,0x1
2001046a:	99a080e7          	jalr	-1638(ra) # 20010e00 <core::sync::atomic::compiler_fence>
2001046e:	b7fd                	j	2001045c <rust_begin_unwind+0x46>

20010470 <main>:
#[entry]
20010470:	7135                	add	sp,sp,-160
20010472:	cf06                	sw	ra,156(sp)
20010474:	4501                	li	a0,0
    let context_switch_time = 32768; // context switch 1000 times per second
20010476:	d42a                	sw	a0,40(sp)
20010478:	da2a                	sw	a0,52(sp)
2001047a:	6521                	lui	a0,0x8
2001047c:	d22a                	sw	a0,36(sp)
2001047e:	d82a                	sw	a0,48(sp)
20010480:	08e8                	add	a0,sp,92
    let dr = DeviceResources::take().unwrap();
20010482:	c42a                	sw	a0,8(sp)
20010484:	00000097          	auipc	ra,0x0
20010488:	6d6080e7          	jalr	1750(ra) # 20010b5a <e310x_hal::device::DeviceResources::take>
2001048c:	45a2                	lw	a1,8(sp)
2001048e:	20015537          	lui	a0,0x20015
20010492:	59850613          	add	a2,a0,1432 # 20015598 <.L__unnamed_2>
20010496:	1828                	add	a0,sp,56
20010498:	00000097          	auipc	ra,0x0
2001049c:	e86080e7          	jalr	-378(ra) # 2001031e <core::option::Option<T>::unwrap>
200104a0:	14000513          	li	a0,320
    let clock_freq = 320.mhz().into();
200104a4:	00003097          	auipc	ra,0x3
200104a8:	e82080e7          	jalr	-382(ra) # 20013326 <<u32 as e310x_hal::time::U32Ext>::mhz>
200104ac:	00003097          	auipc	ra,0x3
200104b0:	e86080e7          	jalr	-378(ra) # 20013332 <<e310x_hal::time::MegaHertz as core::convert::Into<e310x_hal::time::Hertz>>::into>
200104b4:	c92a                	sw	a0,144(sp)
    let clocks = hifive1::clock::configure(p.PRCI, p.AONCLK, clock_freq);
200104b6:	00001097          	auipc	ra,0x1
200104ba:	23c080e7          	jalr	572(ra) # 200116f2 <hifive1::clock::configure>
200104be:	c62a                	sw	a0,12(sp)
200104c0:	c82e                	sw	a1,16(sp)
200104c2:	cb2a                	sw	a0,148(sp)
200104c4:	cd2e                	sw	a1,152(sp)
200104c6:	6571                	lui	a0,0x1c
200104c8:	20050513          	add	a0,a0,512 # 1c200 <.Lline_table_start0+0xbd33>
        115_200.bps(),
200104cc:	00003097          	auipc	ra,0x3
200104d0:	e4e080e7          	jalr	-434(ra) # 2001331a <<u32 as e310x_hal::time::U32Ext>::bps>
200104d4:	45b2                	lw	a1,12(sp)
200104d6:	4642                	lw	a2,16(sp)
    hifive1::stdout::configure(
200104d8:	00000097          	auipc	ra,0x0
200104dc:	ea6080e7          	jalr	-346(ra) # 2001037e <hifive1::stdout::configure>
    sprintln!("hello, rust");
200104e0:	20015537          	lui	a0,0x20015
200104e4:	5a850513          	add	a0,a0,1448 # 200155a8 <.L__unnamed_3>
200104e8:	45b1                	li	a1,12
200104ea:	00001097          	auipc	ra,0x1
200104ee:	362080e7          	jalr	866(ra) # 2001184c <hifive1::stdout::write_str>
200104f2:	10012537          	lui	a0,0x10012
200104f6:	d02a                	sw	a0,32(sp)
200104f8:	458d                	li	a1,3
        let mut state = mmio_read(GPIO_CTRL_ADDR, GPIO_REG_OUTPUT_VAL);
200104fa:	ca2e                	sw	a1,20(sp)
200104fc:	00000097          	auipc	ra,0x0
20010500:	efc080e7          	jalr	-260(ra) # 200103f8 <basic::mmio_read>
20010504:	45d2                	lw	a1,20(sp)
20010506:	862a                	mv	a2,a0
20010508:	5502                	lw	a0,32(sp)
2001050a:	c332                	sw	a2,132(sp)
        state |= RED_LED | GREEN_LED | BLUE_LED;
2001050c:	461a                	lw	a2,132(sp)
2001050e:	006806b7          	lui	a3,0x680
20010512:	cc36                	sw	a3,24(sp)
20010514:	8e55                	or	a2,a2,a3
20010516:	c332                	sw	a2,132(sp)
        mmio_write(GPIO_CTRL_ADDR, GPIO_REG_OUTPUT_VAL, state);
20010518:	461a                	lw	a2,132(sp)
2001051a:	00000097          	auipc	ra,0x0
2001051e:	ec2080e7          	jalr	-318(ra) # 200103dc <basic::mmio_write>
20010522:	5502                	lw	a0,32(sp)
20010524:	4589                	li	a1,2
        let mut state = mmio_read(GPIO_CTRL_ADDR, GPIO_REG_OUTPUT_EN);
20010526:	ce2e                	sw	a1,28(sp)
20010528:	00000097          	auipc	ra,0x0
2001052c:	ed0080e7          	jalr	-304(ra) # 200103f8 <basic::mmio_read>
20010530:	46e2                	lw	a3,24(sp)
20010532:	45f2                	lw	a1,28(sp)
20010534:	862a                	mv	a2,a0
20010536:	5502                	lw	a0,32(sp)
20010538:	c532                	sw	a2,136(sp)
        state |= RED_LED | GREEN_LED | BLUE_LED;
2001053a:	462a                	lw	a2,136(sp)
2001053c:	8e55                	or	a2,a2,a3
2001053e:	c532                	sw	a2,136(sp)
        mmio_write(GPIO_CTRL_ADDR, GPIO_REG_OUTPUT_EN, state);
20010540:	462a                	lw	a2,136(sp)
20010542:	00000097          	auipc	ra,0x0
20010546:	e9a080e7          	jalr	-358(ra) # 200103dc <basic::mmio_write>
2001054a:	5592                	lw	a1,36(sp)
2001054c:	5622                	lw	a2,40(sp)
    yarr::scheduler::start(Scheduler::RoundRobin, context_switch_time)
2001054e:	08c107a3          	sb	a2,143(sp)
20010552:	08f14503          	lbu	a0,143(sp)
20010556:	00003097          	auipc	ra,0x3
2001055a:	6ec080e7          	jalr	1772(ra) # 20013c42 <yarr::scheduler::start>
	...

20010560 <e310x_hal::serial::Serial<UART,(TX,RX)>::new>:
    uart: UART,
}

impl<UART: UartX, TX, RX> Serial<UART, (TX, RX)> {
    /// Configures a UART peripheral to provide serial communication
    pub fn new(uart: UART, pins: (TX, RX), baud_rate: Bps, clocks: Clocks) -> Self
20010560:	7151                	add	sp,sp,-240
20010562:	d786                	sw	ra,236(sp)
20010564:	d22a                	sw	a0,36(sp)
20010566:	d82e                	sw	a1,48(sp)
20010568:	da32                	sw	a2,52(sp)
2001056a:	c2aa                	sw	a0,68(sp)
2001056c:	1808                	add	a0,sp,48
    where
        TX: TxPin<UART>,
        RX: RxPin<UART>,
    {
        let div = clocks.tlclk().0 / baud_rate.0 - 1;
2001056e:	00003097          	auipc	ra,0x3
20010572:	a7c080e7          	jalr	-1412(ra) # 20012fea <e310x_hal::clock::Clocks::tlclk>
20010576:	85aa                	mv	a1,a0
20010578:	5512                	lw	a0,36(sp)
2001057a:	d42e                	sw	a1,40(sp)
2001057c:	cd01                	beqz	a0,20010594 <e310x_hal::serial::Serial<UART,(TX,RX)>::new+0x34>
2001057e:	a009                	j	20010580 <e310x_hal::serial::Serial<UART,(TX,RX)>::new+0x20>
20010580:	5522                	lw	a0,40(sp)
20010582:	5592                	lw	a1,36(sp)
20010584:	02b55533          	divu	a0,a0,a1
20010588:	fff50593          	add	a1,a0,-1 # 10011fff <.Lline_table_start2+0xffd11e7>
2001058c:	d02e                	sw	a1,32(sp)
2001058e:	12050763          	beqz	a0,200106bc <e310x_hal::serial::Serial<UART,(TX,RX)>::new+0x15c>
20010592:	a839                	j	200105b0 <e310x_hal::serial::Serial<UART,(TX,RX)>::new+0x50>
20010594:	20015537          	lui	a0,0x20015
20010598:	63050513          	add	a0,a0,1584 # 20015630 <str.0>
2001059c:	200155b7          	lui	a1,0x20015
200105a0:	61458613          	add	a2,a1,1556 # 20015614 <.L__unnamed_1>
200105a4:	45e5                	li	a1,25
200105a6:	00004097          	auipc	ra,0x4
200105aa:	3ac080e7          	jalr	940(ra) # 20014952 <core::panicking::panic>
200105ae:	0000                	unimp
200105b0:	5502                	lw	a0,32(sp)
200105b2:	dc2a                	sw	a0,56(sp)
200105b4:	02f10513          	add	a0,sp,47
200105b8:	c82a                	sw	a0,16(sp)
200105ba:	caaa                	sw	a0,84(sp)
200105bc:	10013537          	lui	a0,0x10013
200105c0:	ca2a                	sw	a0,20(sp)
200105c2:	0541                	add	a0,a0,16 # 10013010 <.Lline_table_start2+0xffd21f8>
200105c4:	c22a                	sw	a0,4(sp)
200105c6:	d2aa                	sw	a0,100(sp)
200105c8:	4501                	li	a0,0
    pub fn write<F>(&self, f: F)
    where
        F: FnOnce(&mut REG::Writer) -> &mut W<REG>,
    {
        self.register.set(
            f(&mut REG::Writer::from(W {
200105ca:	cc2a                	sw	a0,24(sp)
200105cc:	d0aa                	sw	a0,96(sp)
200105ce:	5506                	lw	a0,96(sp)
200105d0:	d6aa                	sw	a0,108(sp)
    }
}
impl From<crate::W<IE_SPEC>> for W {
    #[inline(always)]
    fn from(writer: crate::W<IE_SPEC>) -> Self {
        W(writer)
200105d2:	d4aa                	sw	a0,104(sp)
    }
200105d4:	5526                	lw	a0,104(sp)
200105d6:	ceaa                	sw	a0,92(sp)
200105d8:	08e8                	add	a0,sp,92
200105da:	ccaa                	sw	a0,88(sp)
200105dc:	4566                	lw	a0,88(sp)
200105de:	00000097          	auipc	ra,0x0
200105e2:	16e080e7          	jalr	366(ra) # 2001074c <e310x_hal::serial::Serial<UART,(TX,RX)>::new::{{closure}}>
200105e6:	85aa                	mv	a1,a0
200105e8:	4512                	lw	a0,4(sp)
200105ea:	418c                	lw	a1,0(a1)
200105ec:	d1aa                	sw	a0,224(sp)
200105ee:	d3ae                	sw	a1,228(sp)
200105f0:	d5aa                	sw	a0,232(sp)
    /// Sets the contained value
    #[inline(always)]
    pub fn set(&self, value: T)
        where T: Copy
    {
        unsafe { ptr::write_volatile(self.value.get(), value) }
200105f2:	00003097          	auipc	ra,0x3
200105f6:	356080e7          	jalr	854(ra) # 20013948 <core::ptr::write_volatile>
200105fa:	4542                	lw	a0,16(sp)
200105fc:	4652                	lw	a2,20(sp)
200105fe:	45e2                	lw	a1,24(sp)
20010600:	c8aa                	sw	a0,80(sp)
20010602:	1828                	add	a0,sp,56
        unsafe {
            uart.ie.write(|w| w.txwm().bit(false).rxwm().bit(false));
            uart.div.write(|w| w.bits(div));
20010604:	de2a                	sw	a0,60(sp)
20010606:	5572                	lw	a0,60(sp)
20010608:	0661                	add	a2,a2,24
2001060a:	c432                	sw	a2,8(sp)
2001060c:	cb32                	sw	a2,148(sp)
2001060e:	cd2a                	sw	a0,152(sp)
20010610:	c92e                	sw	a1,144(sp)
20010612:	45ca                	lw	a1,144(sp)
20010614:	d12e                	sw	a1,160(sp)
    }
}
impl From<crate::W<DIV_SPEC>> for W {
    #[inline(always)]
    fn from(writer: crate::W<DIV_SPEC>) -> Self {
        W(writer)
20010616:	cf2e                	sw	a1,156(sp)
    }
20010618:	45fa                	lw	a1,156(sp)
2001061a:	c72e                	sw	a1,140(sp)
2001061c:	016c                	add	a1,sp,140
2001061e:	c52e                	sw	a1,136(sp)
20010620:	45aa                	lw	a1,136(sp)
20010622:	00000097          	auipc	ra,0x0
20010626:	17a080e7          	jalr	378(ra) # 2001079c <e310x_hal::serial::Serial<UART,(TX,RX)>::new::{{closure}}>
2001062a:	85aa                	mv	a1,a0
2001062c:	4522                	lw	a0,8(sp)
2001062e:	418c                	lw	a1,0(a1)
20010630:	c5aa                	sw	a0,200(sp)
20010632:	c7ae                	sw	a1,204(sp)
20010634:	c9aa                	sw	a0,208(sp)
20010636:	00003097          	auipc	ra,0x3
2001063a:	312080e7          	jalr	786(ra) # 20013948 <core::ptr::write_volatile>
2001063e:	4642                	lw	a2,16(sp)
20010640:	45d2                	lw	a1,20(sp)
20010642:	4562                	lw	a0,24(sp)
20010644:	c6b2                	sw	a2,76(sp)
20010646:	05a1                	add	a1,a1,8
20010648:	c62e                	sw	a1,12(sp)
2001064a:	deae                	sw	a1,124(sp)
2001064c:	dcaa                	sw	a0,120(sp)
2001064e:	5566                	lw	a0,120(sp)
20010650:	c32a                	sw	a0,132(sp)
    }
}
impl From<crate::W<TXCTRL_SPEC>> for W {
    #[inline(always)]
    fn from(writer: crate::W<TXCTRL_SPEC>) -> Self {
        W(writer)
20010652:	c12a                	sw	a0,128(sp)
    }
20010654:	450a                	lw	a0,128(sp)
20010656:	daaa                	sw	a0,116(sp)
20010658:	18c8                	add	a0,sp,116
2001065a:	d8aa                	sw	a0,112(sp)
2001065c:	5546                	lw	a0,112(sp)
2001065e:	00000097          	auipc	ra,0x0
20010662:	07c080e7          	jalr	124(ra) # 200106da <e310x_hal::serial::Serial<UART,(TX,RX)>::new::{{closure}}>
20010666:	85aa                	mv	a1,a0
20010668:	4532                	lw	a0,12(sp)
2001066a:	418c                	lw	a1,0(a1)
2001066c:	cbaa                	sw	a0,212(sp)
2001066e:	cdae                	sw	a1,216(sp)
20010670:	cfaa                	sw	a0,220(sp)
20010672:	00003097          	auipc	ra,0x3
20010676:	2d6080e7          	jalr	726(ra) # 20013948 <core::ptr::write_volatile>
2001067a:	4642                	lw	a2,16(sp)
2001067c:	45d2                	lw	a1,20(sp)
2001067e:	4562                	lw	a0,24(sp)
20010680:	c4b2                	sw	a2,72(sp)
20010682:	05b1                	add	a1,a1,12
20010684:	ce2e                	sw	a1,28(sp)
20010686:	d92e                	sw	a1,176(sp)
20010688:	d72a                	sw	a0,172(sp)
2001068a:	553a                	lw	a0,172(sp)
2001068c:	dd2a                	sw	a0,184(sp)
    }
}
impl From<crate::W<RXCTRL_SPEC>> for W {
    #[inline(always)]
    fn from(writer: crate::W<RXCTRL_SPEC>) -> Self {
        W(writer)
2001068e:	db2a                	sw	a0,180(sp)
    }
20010690:	555a                	lw	a0,180(sp)
20010692:	d52a                	sw	a0,168(sp)
20010694:	1128                	add	a0,sp,168
20010696:	d32a                	sw	a0,164(sp)
20010698:	551a                	lw	a0,164(sp)
2001069a:	00000097          	auipc	ra,0x0
2001069e:	122080e7          	jalr	290(ra) # 200107bc <e310x_hal::serial::Serial<UART,(TX,RX)>::new::{{closure}}>
200106a2:	85aa                	mv	a1,a0
200106a4:	4572                	lw	a0,28(sp)
200106a6:	418c                	lw	a1,0(a1)
200106a8:	df2a                	sw	a0,188(sp)
200106aa:	c1ae                	sw	a1,192(sp)
200106ac:	c3aa                	sw	a0,196(sp)
200106ae:	00003097          	auipc	ra,0x3
200106b2:	29a080e7          	jalr	666(ra) # 20013948 <core::ptr::write_volatile>
                .write(|w| w.counter().bits(1).enable().bit(true));
            uart.rxctrl.write(|w| w.enable().bit(true));
        }

        Serial { uart, pins }
    }
200106b6:	50be                	lw	ra,236(sp)
200106b8:	616d                	add	sp,sp,240
200106ba:	8082                	ret
        let div = clocks.tlclk().0 / baud_rate.0 - 1;
200106bc:	20015537          	lui	a0,0x20015
200106c0:	65050513          	add	a0,a0,1616 # 20015650 <str.1>
200106c4:	200155b7          	lui	a1,0x20015
200106c8:	61458613          	add	a2,a1,1556 # 20015614 <.L__unnamed_1>
200106cc:	02100593          	li	a1,33
200106d0:	00004097          	auipc	ra,0x4
200106d4:	282080e7          	jalr	642(ra) # 20014952 <core::panicking::panic>
	...

200106da <e310x_hal::serial::Serial<UART,(TX,RX)>::new::{{closure}}>:
                .write(|w| w.counter().bits(1).enable().bit(true));
200106da:	715d                	add	sp,sp,-80
200106dc:	c686                	sw	ra,76(sp)
200106de:	c62a                	sw	a0,12(sp)
200106e0:	ca2a                	sw	a0,20(sp)
200106e2:	d22a                	sw	a0,36(sp)
{
    /// Creates a new instance of the writer
    #[allow(unused)]
    #[inline(always)]
    pub(crate) fn new(w: &'a mut REG::Writer) -> Self {
        Self {
200106e4:	d02a                	sw	a0,32(sp)
            w,
            _field: marker::PhantomData,
        }
    }
200106e6:	5502                	lw	a0,32(sp)
200106e8:	d82a                	sw	a0,48(sp)
200106ea:	4505                	li	a0,1
200106ec:	c02a                	sw	a0,0(sp)
200106ee:	02a10ba3          	sb	a0,55(sp)
            /// # Safety
            ///
            /// Passing incorrect value can cause undefined behaviour. See reference manual
            #[inline(always)]
            pub unsafe fn bits(self, value: N) -> &'a mut REG::Writer {
                self.w.bits = (self.w.bits & !(Self::MASK << { OF }))
200106f2:	55c2                	lw	a1,48(sp)
200106f4:	dc2e                	sw	a1,56(sp)
200106f6:	418c                	lw	a1,0(a1)
200106f8:	fff90637          	lui	a2,0xfff90
200106fc:	167d                	add	a2,a2,-1 # fff8ffff <_sstack+0x7ff8bfff>
200106fe:	8df1                	and	a1,a1,a2
                    | ((value.into() & Self::MASK) << { OF });
20010700:	c22e                	sw	a1,4(sp)
20010702:	00001097          	auipc	ra,0x1
20010706:	278080e7          	jalr	632(ra) # 2001197a <<T as core::convert::Into<U>>::into>
2001070a:	4582                	lw	a1,0(sp)
2001070c:	862a                	mv	a2,a0
2001070e:	4512                	lw	a0,4(sp)
20010710:	8a1d                	and	a2,a2,7
20010712:	01061693          	sll	a3,a2,0x10
                self.w.bits = (self.w.bits & !(Self::MASK << { OF }))
20010716:	5642                	lw	a2,48(sp)
20010718:	c0b2                	sw	a2,64(sp)
2001071a:	8d55                	or	a0,a0,a3
2001071c:	c208                	sw	a0,0(a2)
                self.w
2001071e:	5542                	lw	a0,48(sp)
20010720:	c82a                	sw	a0,16(sp)
20010722:	ce2a                	sw	a0,28(sp)
        Self {
20010724:	cc2a                	sw	a0,24(sp)
    }
20010726:	4562                	lw	a0,24(sp)
20010728:	d42a                	sw	a0,40(sp)
2001072a:	02b10723          	sb	a1,46(sp)
                self.w.bits = (self.w.bits & !(1 << { OF })) | ((<$U>::from(value) & 1) << { OF });
2001072e:	5522                	lw	a0,40(sp)
20010730:	de2a                	sw	a0,60(sp)
20010732:	4108                	lw	a0,0(a0)
20010734:	02b107a3          	sb	a1,47(sp)
20010738:	55a2                	lw	a1,40(sp)
2001073a:	c2ae                	sw	a1,68(sp)
2001073c:	00156513          	or	a0,a0,1
20010740:	c188                	sw	a0,0(a1)
                self.w
20010742:	5522                	lw	a0,40(sp)
20010744:	c4aa                	sw	a0,72(sp)
20010746:	40b6                	lw	ra,76(sp)
20010748:	6161                	add	sp,sp,80
2001074a:	8082                	ret

2001074c <e310x_hal::serial::Serial<UART,(TX,RX)>::new::{{closure}}>:
            uart.ie.write(|w| w.txwm().bit(false).rxwm().bit(false));
2001074c:	715d                	add	sp,sp,-80
2001074e:	c82a                	sw	a0,16(sp)
20010750:	cc2a                	sw	a0,24(sp)
20010752:	d02a                	sw	a0,32(sp)
        Self {
20010754:	ce2a                	sw	a0,28(sp)
    }
20010756:	4572                	lw	a0,28(sp)
20010758:	da2a                	sw	a0,52(sp)
2001075a:	4581                	li	a1,0
2001075c:	02b10d23          	sb	a1,58(sp)
                self.w.bits = (self.w.bits & !(1 << { OF })) | ((<$U>::from(value) & 1) << { OF });
20010760:	5552                	lw	a0,52(sp)
20010762:	de2a                	sw	a0,60(sp)
20010764:	4108                	lw	a0,0(a0)
20010766:	9979                	and	a0,a0,-2
20010768:	02b10da3          	sb	a1,59(sp)
2001076c:	5652                	lw	a2,52(sp)
2001076e:	c2b2                	sw	a2,68(sp)
20010770:	c208                	sw	a0,0(a2)
                self.w
20010772:	5552                	lw	a0,52(sp)
20010774:	ca2a                	sw	a0,20(sp)
20010776:	d42a                	sw	a0,40(sp)
        Self {
20010778:	d22a                	sw	a0,36(sp)
    }
2001077a:	5512                	lw	a0,36(sp)
2001077c:	d62a                	sw	a0,44(sp)
2001077e:	02b10923          	sb	a1,50(sp)
                self.w.bits = (self.w.bits & !(1 << { OF })) | ((<$U>::from(value) & 1) << { OF });
20010782:	5532                	lw	a0,44(sp)
20010784:	c0aa                	sw	a0,64(sp)
20010786:	4108                	lw	a0,0(a0)
20010788:	9975                	and	a0,a0,-3
2001078a:	02b109a3          	sb	a1,51(sp)
2001078e:	55b2                	lw	a1,44(sp)
20010790:	c4ae                	sw	a1,72(sp)
20010792:	c188                	sw	a0,0(a1)
                self.w
20010794:	5532                	lw	a0,44(sp)
20010796:	c6aa                	sw	a0,76(sp)
20010798:	6161                	add	sp,sp,80
2001079a:	8082                	ret

2001079c <e310x_hal::serial::Serial<UART,(TX,RX)>::new::{{closure}}>:
            uart.div.write(|w| w.bits(div));
2001079c:	1101                	add	sp,sp,-32
2001079e:	c02e                	sw	a1,0(sp)
200107a0:	85aa                	mv	a1,a0
200107a2:	4502                	lw	a0,0(sp)
200107a4:	c22e                	sw	a1,4(sp)
200107a6:	c42a                	sw	a0,8(sp)
200107a8:	4592                	lw	a1,4(sp)
200107aa:	418c                	lw	a1,0(a1)
200107ac:	c62a                	sw	a0,12(sp)
200107ae:	c82e                	sw	a1,16(sp)
200107b0:	ca2a                	sw	a0,20(sp)
200107b2:	cc2e                	sw	a1,24(sp)
        self.bits = bits;
200107b4:	c10c                	sw	a1,0(a0)
200107b6:	ce2a                	sw	a0,28(sp)
200107b8:	6105                	add	sp,sp,32
200107ba:	8082                	ret

200107bc <e310x_hal::serial::Serial<UART,(TX,RX)>::new::{{closure}}>:
            uart.rxctrl.write(|w| w.enable().bit(true));
200107bc:	7179                	add	sp,sp,-48
200107be:	c62a                	sw	a0,12(sp)
200107c0:	c82a                	sw	a0,16(sp)
200107c2:	cc2a                	sw	a0,24(sp)
        Self {
200107c4:	ca2a                	sw	a0,20(sp)
    }
200107c6:	4552                	lw	a0,20(sp)
200107c8:	ce2a                	sw	a0,28(sp)
200107ca:	4585                	li	a1,1
200107cc:	02b10123          	sb	a1,34(sp)
                self.w.bits = (self.w.bits & !(1 << { OF })) | ((<$U>::from(value) & 1) << { OF });
200107d0:	4572                	lw	a0,28(sp)
200107d2:	d22a                	sw	a0,36(sp)
200107d4:	4108                	lw	a0,0(a0)
200107d6:	02b101a3          	sb	a1,35(sp)
200107da:	45f2                	lw	a1,28(sp)
200107dc:	d42e                	sw	a1,40(sp)
200107de:	00156513          	or	a0,a0,1
200107e2:	c188                	sw	a0,0(a1)
                self.w
200107e4:	4572                	lw	a0,28(sp)
200107e6:	d62a                	sw	a0,44(sp)
200107e8:	6145                	add	sp,sp,48
200107ea:	8082                	ret

200107ec <e310x_hal::serial::Serial<UART,(TX,RX)>::split>:
        self
    }

    /// Splits the `Serial` abstraction into a transmitter and a
    /// receiver half
    pub fn split(self) -> (Tx<UART>, Rx<UART>) {
200107ec:	1101                	add	sp,sp,-32
200107ee:	4581                	li	a1,0
200107f0:	00b105a3          	sb	a1,11(sp)
200107f4:	4505                	li	a0,1
200107f6:	c62a                	sw	a0,12(sp)
200107f8:	00b109a3          	sb	a1,19(sp)
200107fc:	ca2a                	sw	a0,20(sp)
200107fe:	01b10513          	add	a0,sp,27
20010802:	ce2a                	sw	a0,28(sp)
            Tx {
                uart: unsafe { mem::zeroed() },
            },
            Rx { uart: self.uart },
        )
    }
20010804:	6105                	add	sp,sp,32
20010806:	8082                	ret

20010808 <basic::PROCESS_LIST::{{closure}}>:
        exec: || {
20010808:	7179                	add	sp,sp,-48
2001080a:	d606                	sw	ra,44(sp)
2001080c:	d42a                	sw	a0,40(sp)
            loop {
2001080e:	a009                	j	20010810 <basic::PROCESS_LIST::{{closure}}+0x8>
20010810:	10012537          	lui	a0,0x10012
20010814:	c42a                	sw	a0,8(sp)
20010816:	458d                	li	a1,3
                    let mut state = mmio_read(GPIO_CTRL_ADDR, GPIO_REG_OUTPUT_VAL);
20010818:	c22e                	sw	a1,4(sp)
2001081a:	00000097          	auipc	ra,0x0
2001081e:	bde080e7          	jalr	-1058(ra) # 200103f8 <basic::mmio_read>
20010822:	4592                	lw	a1,4(sp)
20010824:	862a                	mv	a2,a0
20010826:	4522                	lw	a0,8(sp)
20010828:	c632                	sw	a2,12(sp)
                    state ^= RED_LED;
2001082a:	4632                	lw	a2,12(sp)
2001082c:	004006b7          	lui	a3,0x400
20010830:	8e35                	xor	a2,a2,a3
20010832:	c632                	sw	a2,12(sp)
                    state ^= GREEN_LED;
20010834:	4632                	lw	a2,12(sp)
20010836:	000806b7          	lui	a3,0x80
2001083a:	8e35                	xor	a2,a2,a3
2001083c:	c632                	sw	a2,12(sp)
                    mmio_write(GPIO_CTRL_ADDR, GPIO_REG_OUTPUT_VAL, state);
2001083e:	4632                	lw	a2,12(sp)
20010840:	00000097          	auipc	ra,0x0
20010844:	b9c080e7          	jalr	-1124(ra) # 200103dc <basic::mmio_write>
20010848:	4501                	li	a0,0
                for _ in 0..200000 {}
2001084a:	c82a                	sw	a0,16(sp)
2001084c:	00031537          	lui	a0,0x31
20010850:	d4050513          	add	a0,a0,-704 # 30d40 <.Lline_table_start0+0x20873>
20010854:	ca2a                	sw	a0,20(sp)
20010856:	4542                	lw	a0,16(sp)
20010858:	45d2                	lw	a1,20(sp)
2001085a:	00000097          	auipc	ra,0x0
2001085e:	224080e7          	jalr	548(ra) # 20010a7e <<I as core::iter::traits::collect::IntoIterator>::into_iter>
20010862:	cc2a                	sw	a0,24(sp)
20010864:	ce2e                	sw	a1,28(sp)
20010866:	a009                	j	20010868 <basic::PROCESS_LIST::{{closure}}+0x60>
20010868:	0828                	add	a0,sp,24
2001086a:	00000097          	auipc	ra,0x0
2001086e:	200080e7          	jalr	512(ra) # 20010a6a <core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next>
20010872:	d22e                	sw	a1,36(sp)
20010874:	d02a                	sw	a0,32(sp)
20010876:	5502                	lw	a0,32(sp)
20010878:	dd41                	beqz	a0,20010810 <basic::PROCESS_LIST::{{closure}}+0x8>
2001087a:	b7fd                	j	20010868 <basic::PROCESS_LIST::{{closure}}+0x60>

2001087c <basic::PROCESS_LIST::{{closure}}>:
        exec: || {
2001087c:	7179                	add	sp,sp,-48
2001087e:	d606                	sw	ra,44(sp)
20010880:	d42a                	sw	a0,40(sp)
            loop {
20010882:	a009                	j	20010884 <basic::PROCESS_LIST::{{closure}}+0x8>
20010884:	10012537          	lui	a0,0x10012
20010888:	c42a                	sw	a0,8(sp)
2001088a:	458d                	li	a1,3
                    let mut state = mmio_read(GPIO_CTRL_ADDR, GPIO_REG_OUTPUT_VAL);
2001088c:	c22e                	sw	a1,4(sp)
2001088e:	00000097          	auipc	ra,0x0
20010892:	b6a080e7          	jalr	-1174(ra) # 200103f8 <basic::mmio_read>
20010896:	4592                	lw	a1,4(sp)
20010898:	862a                	mv	a2,a0
2001089a:	4522                	lw	a0,8(sp)
2001089c:	c632                	sw	a2,12(sp)
                    state ^= GREEN_LED;
2001089e:	4632                	lw	a2,12(sp)
200108a0:	000806b7          	lui	a3,0x80
200108a4:	8e35                	xor	a2,a2,a3
200108a6:	c632                	sw	a2,12(sp)
                    mmio_write(GPIO_CTRL_ADDR, GPIO_REG_OUTPUT_VAL, state);
200108a8:	4632                	lw	a2,12(sp)
200108aa:	00000097          	auipc	ra,0x0
200108ae:	b32080e7          	jalr	-1230(ra) # 200103dc <basic::mmio_write>
200108b2:	4501                	li	a0,0
                for _ in 0..400000 {}
200108b4:	c82a                	sw	a0,16(sp)
200108b6:	00062537          	lui	a0,0x62
200108ba:	a8050513          	add	a0,a0,-1408 # 61a80 <.Lline_table_start2+0x20c68>
200108be:	ca2a                	sw	a0,20(sp)
200108c0:	4542                	lw	a0,16(sp)
200108c2:	45d2                	lw	a1,20(sp)
200108c4:	00000097          	auipc	ra,0x0
200108c8:	1ba080e7          	jalr	442(ra) # 20010a7e <<I as core::iter::traits::collect::IntoIterator>::into_iter>
200108cc:	cc2a                	sw	a0,24(sp)
200108ce:	ce2e                	sw	a1,28(sp)
200108d0:	a009                	j	200108d2 <basic::PROCESS_LIST::{{closure}}+0x56>
200108d2:	0828                	add	a0,sp,24
200108d4:	00000097          	auipc	ra,0x0
200108d8:	196080e7          	jalr	406(ra) # 20010a6a <core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next>
200108dc:	d22e                	sw	a1,36(sp)
200108de:	d02a                	sw	a0,32(sp)
200108e0:	5502                	lw	a0,32(sp)
200108e2:	d14d                	beqz	a0,20010884 <basic::PROCESS_LIST::{{closure}}+0x8>
200108e4:	b7fd                	j	200108d2 <basic::PROCESS_LIST::{{closure}}+0x56>

200108e6 <basic::PROCESS_LIST::{{closure}}>:
        exec: || {
200108e6:	7179                	add	sp,sp,-48
200108e8:	d606                	sw	ra,44(sp)
200108ea:	d42a                	sw	a0,40(sp)
            loop {
200108ec:	a009                	j	200108ee <basic::PROCESS_LIST::{{closure}}+0x8>
200108ee:	10012537          	lui	a0,0x10012
200108f2:	c42a                	sw	a0,8(sp)
200108f4:	458d                	li	a1,3
                    let mut state = mmio_read(GPIO_CTRL_ADDR, GPIO_REG_OUTPUT_VAL);
200108f6:	c22e                	sw	a1,4(sp)
200108f8:	00000097          	auipc	ra,0x0
200108fc:	b00080e7          	jalr	-1280(ra) # 200103f8 <basic::mmio_read>
20010900:	4592                	lw	a1,4(sp)
20010902:	862a                	mv	a2,a0
20010904:	4522                	lw	a0,8(sp)
20010906:	c632                	sw	a2,12(sp)
                    state ^= BLUE_LED;
20010908:	4632                	lw	a2,12(sp)
2001090a:	002006b7          	lui	a3,0x200
2001090e:	8e35                	xor	a2,a2,a3
20010910:	c632                	sw	a2,12(sp)
                    mmio_write(GPIO_CTRL_ADDR, GPIO_REG_OUTPUT_VAL, state);
20010912:	4632                	lw	a2,12(sp)
20010914:	00000097          	auipc	ra,0x0
20010918:	ac8080e7          	jalr	-1336(ra) # 200103dc <basic::mmio_write>
2001091c:	4501                	li	a0,0
                for _ in 0..200000 {}
2001091e:	c82a                	sw	a0,16(sp)
20010920:	00031537          	lui	a0,0x31
20010924:	d4050513          	add	a0,a0,-704 # 30d40 <.Lline_table_start0+0x20873>
20010928:	ca2a                	sw	a0,20(sp)
2001092a:	4542                	lw	a0,16(sp)
2001092c:	45d2                	lw	a1,20(sp)
2001092e:	00000097          	auipc	ra,0x0
20010932:	150080e7          	jalr	336(ra) # 20010a7e <<I as core::iter::traits::collect::IntoIterator>::into_iter>
20010936:	cc2a                	sw	a0,24(sp)
20010938:	ce2e                	sw	a1,28(sp)
2001093a:	a009                	j	2001093c <basic::PROCESS_LIST::{{closure}}+0x56>
2001093c:	0828                	add	a0,sp,24
2001093e:	00000097          	auipc	ra,0x0
20010942:	12c080e7          	jalr	300(ra) # 20010a6a <core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next>
20010946:	d22e                	sw	a1,36(sp)
20010948:	d02a                	sw	a0,32(sp)
2001094a:	5502                	lw	a0,32(sp)
2001094c:	d14d                	beqz	a0,200108ee <basic::PROCESS_LIST::{{closure}}+0x8>
2001094e:	b7fd                	j	2001093c <basic::PROCESS_LIST::{{closure}}+0x56>

20010950 <basic::PROCESS_LIST::{{closure}}>:
        pub static mut PROCESS_LIST: &'static mut [yarr::process::Process] = &mut [
            $($a,)+
            yarr::process::Process {
                context: context!(),
                stack: &mut [0 as usize; 128],
                exec: || {
20010950:	1141                	add	sp,sp,-16
20010952:	c62a                	sw	a0,12(sp)
                    extern "Rust" {
                        fn yarr_idle_task() -> !;
                    }
                    unsafe{ yarr_idle_task() }
20010954:	00003097          	auipc	ra,0x3
20010958:	a26080e7          	jalr	-1498(ra) # 2001337a <yarr_idle_task>
	...

2001095e <<usize as bit_field::BitField>::get_bit>:
        impl BitField for $t {
            const BIT_LENGTH: usize = ::core::mem::size_of::<Self>() as usize * 8;

            #[track_caller]
            #[inline]
            fn get_bit(&self, bit: usize) -> bool {
2001095e:	1101                	add	sp,sp,-32
20010960:	c632                	sw	a2,12(sp)
20010962:	c82e                	sw	a1,16(sp)
20010964:	ca2a                	sw	a0,20(sp)
20010966:	cc2a                	sw	a0,24(sp)
20010968:	ce2e                	sw	a1,28(sp)
2001096a:	02000513          	li	a0,32
                assert!(bit < Self::BIT_LENGTH);
2001096e:	00a5ef63          	bltu	a1,a0,2001098c <<usize as bit_field::BitField>::get_bit+0x2e>
20010972:	a009                	j	20010974 <<usize as bit_field::BitField>::get_bit+0x16>
20010974:	4632                	lw	a2,12(sp)
20010976:	20015537          	lui	a0,0x20015
2001097a:	67150513          	add	a0,a0,1649 # 20015671 <.L__unnamed_1>
2001097e:	02800593          	li	a1,40
20010982:	00004097          	auipc	ra,0x4
20010986:	fd0080e7          	jalr	-48(ra) # 20014952 <core::panicking::panic>
2001098a:	0000                	unimp

                (*self & (1 << bit)) != 0
2001098c:	45c2                	lw	a1,16(sp)
2001098e:	4552                	lw	a0,20(sp)
20010990:	4108                	lw	a0,0(a0)
20010992:	c42a                	sw	a0,8(sp)
20010994:	457d                	li	a0,31
20010996:	00b56a63          	bltu	a0,a1,200109aa <<usize as bit_field::BitField>::get_bit+0x4c>
2001099a:	a009                	j	2001099c <<usize as bit_field::BitField>::get_bit+0x3e>
2001099c:	4522                	lw	a0,8(sp)
2001099e:	45c2                	lw	a1,16(sp)
200109a0:	00b55533          	srl	a0,a0,a1
            }
200109a4:	8905                	and	a0,a0,1
200109a6:	6105                	add	sp,sp,32
200109a8:	8082                	ret
                (*self & (1 << bit)) != 0
200109aa:	4632                	lw	a2,12(sp)
200109ac:	20015537          	lui	a0,0x20015
200109b0:	6a050513          	add	a0,a0,1696 # 200156a0 <str.0>
200109b4:	02300593          	li	a1,35
200109b8:	00004097          	auipc	ra,0x4
200109bc:	f9a080e7          	jalr	-102(ra) # 20014952 <core::panicking::panic>
	...

200109c2 <e310x::Peripherals::take>:
}
impl Peripherals {
    #[doc = r" Returns all the peripherals *once*."]
    #[cfg(feature = "critical-section")]
    #[inline]
    pub fn take() -> Option<Self> {
200109c2:	1141                	add	sp,sp,-16
        critical_section::with(|_| {
200109c4:	c606                	sw	ra,12(sp)
200109c6:	00000097          	auipc	ra,0x0
200109ca:	57c080e7          	jalr	1404(ra) # 20010f42 <critical_section::with>
            if unsafe { DEVICE_PERIPHERALS } {
                return None;
            }
            Some(unsafe { Peripherals::steal() })
        })
    }
200109ce:	40b2                	lw	ra,12(sp)
200109d0:	0141                	add	sp,sp,16
200109d2:	8082                	ret

200109d4 <e310x::Peripherals::steal>:
    #[doc = r" # Safety"]
    #[doc = r""]
    #[doc = r" Each of the returned peripherals must be used at most once."]
    #[inline]
    pub unsafe fn steal() -> Self {
        DEVICE_PERIPHERALS = true;
200109d4:	800015b7          	lui	a1,0x80001
200109d8:	4505                	li	a0,1
200109da:	a8a584a3          	sb	a0,-1399(a1) # 80000a89 <DEVICE_PERIPHERALS>
            },
            PWM2: PWM2 {
                _marker: PhantomData,
            },
        }
    }
200109de:	8082                	ret

200109e0 <<i32 as core::iter::range::Step>::forward_unchecked>:
200109e0:	1141                	add	sp,sp,-16
200109e2:	c22a                	sw	a0,4(sp)
200109e4:	c42e                	sw	a1,8(sp)
200109e6:	c62e                	sw	a1,12(sp)
200109e8:	952e                	add	a0,a0,a1
200109ea:	0141                	add	sp,sp,16
200109ec:	8082                	ret

200109ee <<&T as core::fmt::Display>::fmt>:
200109ee:	1141                	add	sp,sp,-16
200109f0:	c606                	sw	ra,12(sp)
200109f2:	c22a                	sw	a0,4(sp)
200109f4:	c42e                	sw	a1,8(sp)
200109f6:	4108                	lw	a0,0(a0)
200109f8:	00004097          	auipc	ra,0x4
200109fc:	df0080e7          	jalr	-528(ra) # 200147e8 <<core::panic::panic_info::PanicInfo as core::fmt::Display>::fmt>
20010a00:	40b2                	lw	ra,12(sp)
20010a02:	0141                	add	sp,sp,16
20010a04:	8082                	ret

20010a06 <e310x_hal::gpio::gpio0::Pin16<MODE>::into_iof0>:
                    const INDEX: usize = $i;
                }

                impl<MODE> $PXi<MODE> {
                    /// Configures the pin to serve as alternate function 0 (AF0)
                    pub fn into_iof0(self) -> $PXi<IOF0<NoInvert>> {
20010a06:	1141                	add	sp,sp,-16
20010a08:	c606                	sw	ra,12(sp)
20010a0a:	4541                	li	a0,16
20010a0c:	c22a                	sw	a0,4(sp)
20010a0e:	4581                	li	a1,0
                        $GPIOX::set_out_xor(Self::INDEX, false);
20010a10:	c02e                	sw	a1,0(sp)
20010a12:	00000097          	auipc	ra,0x0
20010a16:	2d8080e7          	jalr	728(ra) # 20010cea <e310x_hal::gpio::PeripheralAccess::set_out_xor>
20010a1a:	4582                	lw	a1,0(sp)
20010a1c:	4512                	lw	a0,4(sp)
                        $GPIOX::set_iof_sel(Self::INDEX, false);
20010a1e:	00000097          	auipc	ra,0x0
20010a22:	22e080e7          	jalr	558(ra) # 20010c4c <e310x_hal::gpio::PeripheralAccess::set_iof_sel>
20010a26:	4512                	lw	a0,4(sp)
20010a28:	4585                	li	a1,1
                        $GPIOX::set_iof_en(Self::INDEX, true);
20010a2a:	00000097          	auipc	ra,0x0
20010a2e:	184080e7          	jalr	388(ra) # 20010bae <e310x_hal::gpio::PeripheralAccess::set_iof_en>
                        $PXi { _mode: PhantomData }
                    }
20010a32:	40b2                	lw	ra,12(sp)
20010a34:	0141                	add	sp,sp,16
20010a36:	8082                	ret

20010a38 <e310x_hal::gpio::gpio0::Pin17<MODE>::into_iof0>:
                    pub fn into_iof0(self) -> $PXi<IOF0<NoInvert>> {
20010a38:	1141                	add	sp,sp,-16
20010a3a:	c606                	sw	ra,12(sp)
20010a3c:	4545                	li	a0,17
20010a3e:	c22a                	sw	a0,4(sp)
20010a40:	4581                	li	a1,0
                        $GPIOX::set_out_xor(Self::INDEX, false);
20010a42:	c02e                	sw	a1,0(sp)
20010a44:	00000097          	auipc	ra,0x0
20010a48:	2a6080e7          	jalr	678(ra) # 20010cea <e310x_hal::gpio::PeripheralAccess::set_out_xor>
20010a4c:	4582                	lw	a1,0(sp)
20010a4e:	4512                	lw	a0,4(sp)
                        $GPIOX::set_iof_sel(Self::INDEX, false);
20010a50:	00000097          	auipc	ra,0x0
20010a54:	1fc080e7          	jalr	508(ra) # 20010c4c <e310x_hal::gpio::PeripheralAccess::set_iof_sel>
20010a58:	4512                	lw	a0,4(sp)
20010a5a:	4585                	li	a1,1
                        $GPIOX::set_iof_en(Self::INDEX, true);
20010a5c:	00000097          	auipc	ra,0x0
20010a60:	152080e7          	jalr	338(ra) # 20010bae <e310x_hal::gpio::PeripheralAccess::set_iof_en>
                    }
20010a64:	40b2                	lw	ra,12(sp)
20010a66:	0141                	add	sp,sp,16
20010a68:	8082                	ret

20010a6a <core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next>:
20010a6a:	1141                	add	sp,sp,-16
20010a6c:	c606                	sw	ra,12(sp)
20010a6e:	c42a                	sw	a0,8(sp)
20010a70:	00000097          	auipc	ra,0x0
20010a74:	018080e7          	jalr	24(ra) # 20010a88 <<core::ops::range::Range<T> as core::iter::range::RangeIteratorImpl>::spec_next>
20010a78:	40b2                	lw	ra,12(sp)
20010a7a:	0141                	add	sp,sp,16
20010a7c:	8082                	ret

20010a7e <<I as core::iter::traits::collect::IntoIterator>::into_iter>:
20010a7e:	1141                	add	sp,sp,-16
20010a80:	c42a                	sw	a0,8(sp)
20010a82:	c62e                	sw	a1,12(sp)
20010a84:	0141                	add	sp,sp,16
20010a86:	8082                	ret

20010a88 <<core::ops::range::Range<T> as core::iter::range::RangeIteratorImpl>::spec_next>:
20010a88:	7179                	add	sp,sp,-48
20010a8a:	d606                	sw	ra,44(sp)
20010a8c:	85aa                	mv	a1,a0
20010a8e:	c82e                	sw	a1,16(sp)
20010a90:	ce2e                	sw	a1,28(sp)
20010a92:	00458513          	add	a0,a1,4
20010a96:	d22e                	sw	a1,36(sp)
20010a98:	d42a                	sw	a0,40(sp)
20010a9a:	4188                	lw	a0,0(a1)
20010a9c:	41cc                	lw	a1,4(a1)
20010a9e:	00b54663          	blt	a0,a1,20010aaa <<core::ops::range::Range<T> as core::iter::range::RangeIteratorImpl>::spec_next+0x22>
20010aa2:	a009                	j	20010aa4 <<core::ops::range::Range<T> as core::iter::range::RangeIteratorImpl>::spec_next+0x1c>
20010aa4:	4501                	li	a0,0
20010aa6:	ca2a                	sw	a0,20(sp)
20010aa8:	a01d                	j	20010ace <<core::ops::range::Range<T> as core::iter::range::RangeIteratorImpl>::spec_next+0x46>
20010aaa:	4542                	lw	a0,16(sp)
20010aac:	4108                	lw	a0,0(a0)
20010aae:	c42a                	sw	a0,8(sp)
20010ab0:	d02a                	sw	a0,32(sp)
20010ab2:	4585                	li	a1,1
20010ab4:	c62e                	sw	a1,12(sp)
20010ab6:	00000097          	auipc	ra,0x0
20010aba:	f2a080e7          	jalr	-214(ra) # 200109e0 <<i32 as core::iter::range::Step>::forward_unchecked>
20010abe:	46c2                	lw	a3,16(sp)
20010ac0:	45a2                	lw	a1,8(sp)
20010ac2:	862a                	mv	a2,a0
20010ac4:	4532                	lw	a0,12(sp)
20010ac6:	c290                	sw	a2,0(a3)
20010ac8:	cc2e                	sw	a1,24(sp)
20010aca:	ca2a                	sw	a0,20(sp)
20010acc:	a009                	j	20010ace <<core::ops::range::Range<T> as core::iter::range::RangeIteratorImpl>::spec_next+0x46>
20010ace:	4552                	lw	a0,20(sp)
20010ad0:	45e2                	lw	a1,24(sp)
20010ad2:	50b2                	lw	ra,44(sp)
20010ad4:	6145                	add	sp,sp,48
20010ad6:	8082                	ret

20010ad8 <riscv::register::mstatus::_set>:
macro_rules! set {
    ($csr_number:literal) => {
        /// Set the CSR
        #[inline]
        #[allow(unused_variables)]
        unsafe fn _set(bits: usize) {
20010ad8:	1141                	add	sp,sp,-16
20010ada:	c62a                	sw	a0,12(sp)
            match () {
                #[cfg(riscv)]
                () => core::arch::asm!(concat!("csrrs x0, ", stringify!($csr_number), ", {0}"), in(reg) bits),
20010adc:	30052073          	.insn	4, 0x30052073

                #[cfg(not(riscv))]
                () => unimplemented!(),
            }
        }
20010ae0:	0141                	add	sp,sp,16
20010ae2:	8082                	ret

20010ae4 <riscv::register::mstatus::read>:
        pub fn read() -> $register {
20010ae4:	1141                	add	sp,sp,-16
                bits: unsafe { _read() },
20010ae6:	c606                	sw	ra,12(sp)
20010ae8:	00000097          	auipc	ra,0x0
20010aec:	012080e7          	jalr	18(ra) # 20010afa <riscv::register::mstatus::_read>
            $register {
20010af0:	c42a                	sw	a0,8(sp)
        }
20010af2:	4522                	lw	a0,8(sp)
20010af4:	40b2                	lw	ra,12(sp)
20010af6:	0141                	add	sp,sp,16
20010af8:	8082                	ret

20010afa <riscv::register::mstatus::_read>:
        unsafe fn _read() -> usize {
20010afa:	1141                	add	sp,sp,-16
                    core::arch::asm!(concat!("csrrs {0}, ", stringify!($csr_number), ", x0"), out(reg) r);
20010afc:	30002573          	.insn	4, 0x30002573
20010b00:	c62a                	sw	a0,12(sp)
                    r
20010b02:	4532                	lw	a0,12(sp)
        }
20010b04:	0141                	add	sp,sp,16
20010b06:	8082                	ret

20010b08 <riscv::register::mstatus::_clear>:
macro_rules! clear {
    ($csr_number:literal) => {
        /// Clear the CSR
        #[inline]
        #[allow(unused_variables)]
        unsafe fn _clear(bits: usize) {
20010b08:	1141                	add	sp,sp,-16
20010b0a:	c62a                	sw	a0,12(sp)
            match () {
                #[cfg(riscv)]
                () => core::arch::asm!(concat!("csrrc x0, ", stringify!($csr_number), ", {0}"), in(reg) bits),
20010b0c:	30053073          	.insn	4, 0x30053073

                #[cfg(not(riscv))]
                () => unimplemented!(),
            }
        }
20010b10:	0141                	add	sp,sp,16
20010b12:	8082                	ret

20010b14 <riscv::register::mstatus::Mstatus::mie>:
        self.bits.get_bit(1)
    }

    /// Machine Interrupt Enable
    #[inline]
    pub fn mie(&self) -> bool {
20010b14:	1141                	add	sp,sp,-16
20010b16:	c606                	sw	ra,12(sp)
20010b18:	c42a                	sw	a0,8(sp)
        self.bits.get_bit(3)
20010b1a:	200155b7          	lui	a1,0x20015
20010b1e:	72858613          	add	a2,a1,1832 # 20015728 <.L__unnamed_1>
20010b22:	458d                	li	a1,3
20010b24:	00000097          	auipc	ra,0x0
20010b28:	e3a080e7          	jalr	-454(ra) # 2001095e <<usize as bit_field::BitField>::get_bit>
    }
20010b2c:	40b2                	lw	ra,12(sp)
20010b2e:	0141                	add	sp,sp,16
20010b30:	8082                	ret

20010b32 <riscv::register::mstatus::set_mie>:

macro_rules! set_csr {
    ($(#[$attr:meta])*, $set_field:ident, $e:expr) => {
        $(#[$attr])*
        #[inline]
        pub unsafe fn $set_field() {
20010b32:	1141                	add	sp,sp,-16
20010b34:	c606                	sw	ra,12(sp)
20010b36:	4521                	li	a0,8
            _set($e);
20010b38:	00000097          	auipc	ra,0x0
20010b3c:	fa0080e7          	jalr	-96(ra) # 20010ad8 <riscv::register::mstatus::_set>
        }
20010b40:	40b2                	lw	ra,12(sp)
20010b42:	0141                	add	sp,sp,16
20010b44:	8082                	ret

20010b46 <riscv::register::mstatus::clear_mie>:

macro_rules! clear_csr {
    ($(#[$attr:meta])*, $clear_field:ident, $e:expr) => {
        $(#[$attr])*
        #[inline]
        pub unsafe fn $clear_field() {
20010b46:	1141                	add	sp,sp,-16
20010b48:	c606                	sw	ra,12(sp)
20010b4a:	4521                	li	a0,8
            _clear($e);
20010b4c:	00000097          	auipc	ra,0x0
20010b50:	fbc080e7          	jalr	-68(ra) # 20010b08 <riscv::register::mstatus::_clear>
        }
20010b54:	40b2                	lw	ra,12(sp)
20010b56:	0141                	add	sp,sp,16
20010b58:	8082                	ret

20010b5a <e310x_hal::device::DeviceResources::take>:
}

impl DeviceResources {
    /// Returns all the device resources *once*
    #[inline]
    pub fn take() -> Option<Self> {
20010b5a:	1141                	add	sp,sp,-16
        e310x::Peripherals::take().map(DeviceResources::from)
20010b5c:	c606                	sw	ra,12(sp)
20010b5e:	c42a                	sw	a0,8(sp)
20010b60:	00000097          	auipc	ra,0x0
20010b64:	e62080e7          	jalr	-414(ra) # 200109c2 <e310x::Peripherals::take>
20010b68:	85aa                	mv	a1,a0
20010b6a:	4522                	lw	a0,8(sp)
20010b6c:	fffff097          	auipc	ra,0xfffff
20010b70:	752080e7          	jalr	1874(ra) # 200102be <core::option::Option<T>::map>
    }
20010b74:	40b2                	lw	ra,12(sp)
20010b76:	0141                	add	sp,sp,16
20010b78:	8082                	ret

20010b7a <e310x::Peripherals::take::{{closure}}>:
        critical_section::with(|_| {
20010b7a:	1141                	add	sp,sp,-16
            if unsafe { DEVICE_PERIPHERALS } {
20010b7c:	c606                	sw	ra,12(sp)
20010b7e:	80001537          	lui	a0,0x80001
20010b82:	a8954503          	lbu	a0,-1399(a0) # 80000a89 <DEVICE_PERIPHERALS>
20010b86:	8905                	and	a0,a0,1
20010b88:	e911                	bnez	a0,20010b9c <e310x::Peripherals::take::{{closure}}+0x22>
20010b8a:	a009                	j	20010b8c <e310x::Peripherals::take::{{closure}}+0x12>
            Some(unsafe { Peripherals::steal() })
20010b8c:	00000097          	auipc	ra,0x0
20010b90:	e48080e7          	jalr	-440(ra) # 200109d4 <e310x::Peripherals::steal>
20010b94:	4505                	li	a0,1
20010b96:	00a104a3          	sb	a0,9(sp)
        })
20010b9a:	a029                	j	20010ba4 <e310x::Peripherals::take::{{closure}}+0x2a>
20010b9c:	4501                	li	a0,0
                return None;
20010b9e:	00a104a3          	sb	a0,9(sp)
        })
20010ba2:	a009                	j	20010ba4 <e310x::Peripherals::take::{{closure}}+0x2a>
20010ba4:	00914503          	lbu	a0,9(sp)
20010ba8:	40b2                	lw	ra,12(sp)
20010baa:	0141                	add	sp,sp,16
20010bac:	8082                	ret

20010bae <e310x_hal::gpio::PeripheralAccess::set_iof_en>:
    fn set_iof_en(index: usize, bit: bool) {
20010bae:	7139                	add	sp,sp,-64
20010bb0:	de06                	sw	ra,60(sp)
20010bb2:	862e                	mv	a2,a1
20010bb4:	c432                	sw	a2,8(sp)
20010bb6:	ca2a                	sw	a0,20(sp)
20010bb8:	00b10da3          	sb	a1,27(sp)
20010bbc:	10012637          	lui	a2,0x10012
        let p = Self::peripheral();
20010bc0:	ce32                	sw	a2,28(sp)
20010bc2:	03860613          	add	a2,a2,56 # 10012038 <.Lline_table_start2+0xffd1220>
        let r: &AtomicU32 = unsafe { core::mem::transmute(&p.iof_en) };
20010bc6:	c632                	sw	a2,12(sp)
20010bc8:	d032                	sw	a2,32(sp)
20010bca:	d632                	sw	a2,44(sp)
20010bcc:	d82a                	sw	a0,48(sp)
20010bce:	02b10ba3          	sb	a1,55(sp)
    let mask = 1 << (index & 31);
20010bd2:	897d                	and	a0,a0,31
20010bd4:	c82a                	sw	a0,16(sp)
20010bd6:	4501                	li	a0,0
20010bd8:	ed01                	bnez	a0,20010bf0 <e310x_hal::gpio::PeripheralAccess::set_iof_en+0x42>
20010bda:	a009                	j	20010bdc <e310x_hal::gpio::PeripheralAccess::set_iof_en+0x2e>
20010bdc:	4522                	lw	a0,8(sp)
20010bde:	4642                	lw	a2,16(sp)
20010be0:	4585                	li	a1,1
20010be2:	00c595b3          	sll	a1,a1,a2
20010be6:	c22e                	sw	a1,4(sp)
20010be8:	dc2e                	sw	a1,56(sp)
    match bit {
20010bea:	8905                	and	a0,a0,1
20010bec:	e121                	bnez	a0,20010c2c <e310x_hal::gpio::PeripheralAccess::set_iof_en+0x7e>
20010bee:	a005                	j	20010c0e <e310x_hal::gpio::PeripheralAccess::set_iof_en+0x60>
    let mask = 1 << (index & 31);
20010bf0:	20015537          	lui	a0,0x20015
20010bf4:	7b050513          	add	a0,a0,1968 # 200157b0 <str.0>
20010bf8:	200155b7          	lui	a1,0x20015
20010bfc:	79858613          	add	a2,a1,1944 # 20015798 <.L__unnamed_1>
20010c00:	02300593          	li	a1,35
20010c04:	00004097          	auipc	ra,0x4
20010c08:	d4e080e7          	jalr	-690(ra) # 20014952 <core::panicking::panic>
20010c0c:	0000                	unimp
        false => r.fetch_and(!mask, Ordering::SeqCst),
20010c0e:	4532                	lw	a0,12(sp)
20010c10:	4592                	lw	a1,4(sp)
20010c12:	fff5c593          	not	a1,a1
20010c16:	4611                	li	a2,4
20010c18:	02c105a3          	sb	a2,43(sp)
20010c1c:	02b14603          	lbu	a2,43(sp)
20010c20:	00000097          	auipc	ra,0x0
20010c24:	2b6080e7          	jalr	694(ra) # 20010ed6 <core::sync::atomic::AtomicU32::fetch_and>
20010c28:	d22a                	sw	a0,36(sp)
20010c2a:	a831                	j	20010c46 <e310x_hal::gpio::PeripheralAccess::set_iof_en+0x98>
20010c2c:	4592                	lw	a1,4(sp)
20010c2e:	4532                	lw	a0,12(sp)
20010c30:	4611                	li	a2,4
        true => r.fetch_or(mask, Ordering::SeqCst),
20010c32:	02c10523          	sb	a2,42(sp)
20010c36:	02a14603          	lbu	a2,42(sp)
20010c3a:	00000097          	auipc	ra,0x0
20010c3e:	230080e7          	jalr	560(ra) # 20010e6a <core::sync::atomic::AtomicU32::fetch_or>
20010c42:	d22a                	sw	a0,36(sp)
20010c44:	a009                	j	20010c46 <e310x_hal::gpio::PeripheralAccess::set_iof_en+0x98>
    }
20010c46:	50f2                	lw	ra,60(sp)
20010c48:	6121                	add	sp,sp,64
20010c4a:	8082                	ret

20010c4c <e310x_hal::gpio::PeripheralAccess::set_iof_sel>:
    fn set_iof_sel(index: usize, bit: bool) {
20010c4c:	7139                	add	sp,sp,-64
20010c4e:	de06                	sw	ra,60(sp)
20010c50:	862e                	mv	a2,a1
20010c52:	c432                	sw	a2,8(sp)
20010c54:	ca2a                	sw	a0,20(sp)
20010c56:	00b10da3          	sb	a1,27(sp)
20010c5a:	10012637          	lui	a2,0x10012
        let p = Self::peripheral();
20010c5e:	ce32                	sw	a2,28(sp)
20010c60:	03c60613          	add	a2,a2,60 # 1001203c <.Lline_table_start2+0xffd1224>
        let r: &AtomicU32 = unsafe { core::mem::transmute(&p.iof_sel) };
20010c64:	c632                	sw	a2,12(sp)
20010c66:	d032                	sw	a2,32(sp)
20010c68:	d632                	sw	a2,44(sp)
20010c6a:	d82a                	sw	a0,48(sp)
20010c6c:	02b10ba3          	sb	a1,55(sp)
    let mask = 1 << (index & 31);
20010c70:	897d                	and	a0,a0,31
20010c72:	c82a                	sw	a0,16(sp)
20010c74:	4501                	li	a0,0
20010c76:	ed01                	bnez	a0,20010c8e <e310x_hal::gpio::PeripheralAccess::set_iof_sel+0x42>
20010c78:	a009                	j	20010c7a <e310x_hal::gpio::PeripheralAccess::set_iof_sel+0x2e>
20010c7a:	4522                	lw	a0,8(sp)
20010c7c:	4642                	lw	a2,16(sp)
20010c7e:	4585                	li	a1,1
20010c80:	00c595b3          	sll	a1,a1,a2
20010c84:	c22e                	sw	a1,4(sp)
20010c86:	dc2e                	sw	a1,56(sp)
    match bit {
20010c88:	8905                	and	a0,a0,1
20010c8a:	e121                	bnez	a0,20010cca <e310x_hal::gpio::PeripheralAccess::set_iof_sel+0x7e>
20010c8c:	a005                	j	20010cac <e310x_hal::gpio::PeripheralAccess::set_iof_sel+0x60>
    let mask = 1 << (index & 31);
20010c8e:	20015537          	lui	a0,0x20015
20010c92:	7b050513          	add	a0,a0,1968 # 200157b0 <str.0>
20010c96:	200155b7          	lui	a1,0x20015
20010c9a:	79858613          	add	a2,a1,1944 # 20015798 <.L__unnamed_1>
20010c9e:	02300593          	li	a1,35
20010ca2:	00004097          	auipc	ra,0x4
20010ca6:	cb0080e7          	jalr	-848(ra) # 20014952 <core::panicking::panic>
20010caa:	0000                	unimp
        false => r.fetch_and(!mask, Ordering::SeqCst),
20010cac:	4532                	lw	a0,12(sp)
20010cae:	4592                	lw	a1,4(sp)
20010cb0:	fff5c593          	not	a1,a1
20010cb4:	4611                	li	a2,4
20010cb6:	02c105a3          	sb	a2,43(sp)
20010cba:	02b14603          	lbu	a2,43(sp)
20010cbe:	00000097          	auipc	ra,0x0
20010cc2:	218080e7          	jalr	536(ra) # 20010ed6 <core::sync::atomic::AtomicU32::fetch_and>
20010cc6:	d22a                	sw	a0,36(sp)
20010cc8:	a831                	j	20010ce4 <e310x_hal::gpio::PeripheralAccess::set_iof_sel+0x98>
20010cca:	4592                	lw	a1,4(sp)
20010ccc:	4532                	lw	a0,12(sp)
20010cce:	4611                	li	a2,4
        true => r.fetch_or(mask, Ordering::SeqCst),
20010cd0:	02c10523          	sb	a2,42(sp)
20010cd4:	02a14603          	lbu	a2,42(sp)
20010cd8:	00000097          	auipc	ra,0x0
20010cdc:	192080e7          	jalr	402(ra) # 20010e6a <core::sync::atomic::AtomicU32::fetch_or>
20010ce0:	d22a                	sw	a0,36(sp)
20010ce2:	a009                	j	20010ce4 <e310x_hal::gpio::PeripheralAccess::set_iof_sel+0x98>
    }
20010ce4:	50f2                	lw	ra,60(sp)
20010ce6:	6121                	add	sp,sp,64
20010ce8:	8082                	ret

20010cea <e310x_hal::gpio::PeripheralAccess::set_out_xor>:
    fn set_out_xor(index: usize, bit: bool) {
20010cea:	7139                	add	sp,sp,-64
20010cec:	de06                	sw	ra,60(sp)
20010cee:	862e                	mv	a2,a1
20010cf0:	c432                	sw	a2,8(sp)
20010cf2:	ca2a                	sw	a0,20(sp)
20010cf4:	00b10da3          	sb	a1,27(sp)
20010cf8:	10012637          	lui	a2,0x10012
        let p = Self::peripheral();
20010cfc:	ce32                	sw	a2,28(sp)
20010cfe:	04060613          	add	a2,a2,64 # 10012040 <.Lline_table_start2+0xffd1228>
        let r: &AtomicU32 = unsafe { core::mem::transmute(&p.out_xor) };
20010d02:	c632                	sw	a2,12(sp)
20010d04:	d032                	sw	a2,32(sp)
20010d06:	d632                	sw	a2,44(sp)
20010d08:	d82a                	sw	a0,48(sp)
20010d0a:	02b10ba3          	sb	a1,55(sp)
    let mask = 1 << (index & 31);
20010d0e:	897d                	and	a0,a0,31
20010d10:	c82a                	sw	a0,16(sp)
20010d12:	4501                	li	a0,0
20010d14:	ed01                	bnez	a0,20010d2c <e310x_hal::gpio::PeripheralAccess::set_out_xor+0x42>
20010d16:	a009                	j	20010d18 <e310x_hal::gpio::PeripheralAccess::set_out_xor+0x2e>
20010d18:	4522                	lw	a0,8(sp)
20010d1a:	4642                	lw	a2,16(sp)
20010d1c:	4585                	li	a1,1
20010d1e:	00c595b3          	sll	a1,a1,a2
20010d22:	c22e                	sw	a1,4(sp)
20010d24:	dc2e                	sw	a1,56(sp)
    match bit {
20010d26:	8905                	and	a0,a0,1
20010d28:	e121                	bnez	a0,20010d68 <e310x_hal::gpio::PeripheralAccess::set_out_xor+0x7e>
20010d2a:	a005                	j	20010d4a <e310x_hal::gpio::PeripheralAccess::set_out_xor+0x60>
    let mask = 1 << (index & 31);
20010d2c:	20015537          	lui	a0,0x20015
20010d30:	7b050513          	add	a0,a0,1968 # 200157b0 <str.0>
20010d34:	200155b7          	lui	a1,0x20015
20010d38:	79858613          	add	a2,a1,1944 # 20015798 <.L__unnamed_1>
20010d3c:	02300593          	li	a1,35
20010d40:	00004097          	auipc	ra,0x4
20010d44:	c12080e7          	jalr	-1006(ra) # 20014952 <core::panicking::panic>
20010d48:	0000                	unimp
        false => r.fetch_and(!mask, Ordering::SeqCst),
20010d4a:	4532                	lw	a0,12(sp)
20010d4c:	4592                	lw	a1,4(sp)
20010d4e:	fff5c593          	not	a1,a1
20010d52:	4611                	li	a2,4
20010d54:	02c105a3          	sb	a2,43(sp)
20010d58:	02b14603          	lbu	a2,43(sp)
20010d5c:	00000097          	auipc	ra,0x0
20010d60:	17a080e7          	jalr	378(ra) # 20010ed6 <core::sync::atomic::AtomicU32::fetch_and>
20010d64:	d22a                	sw	a0,36(sp)
20010d66:	a831                	j	20010d82 <e310x_hal::gpio::PeripheralAccess::set_out_xor+0x98>
20010d68:	4592                	lw	a1,4(sp)
20010d6a:	4532                	lw	a0,12(sp)
20010d6c:	4611                	li	a2,4
        true => r.fetch_or(mask, Ordering::SeqCst),
20010d6e:	02c10523          	sb	a2,42(sp)
20010d72:	02a14603          	lbu	a2,42(sp)
20010d76:	00000097          	auipc	ra,0x0
20010d7a:	0f4080e7          	jalr	244(ra) # 20010e6a <core::sync::atomic::AtomicU32::fetch_or>
20010d7e:	d22a                	sw	a0,36(sp)
20010d80:	a009                	j	20010d82 <e310x_hal::gpio::PeripheralAccess::set_out_xor+0x98>
    }
20010d82:	50f2                	lw	ra,60(sp)
20010d84:	6121                	add	sp,sp,64
20010d86:	8082                	ret

20010d88 <core::ops::function::FnOnce::call_once>:
20010d88:	1141                	add	sp,sp,-16
20010d8a:	00e10513          	add	a0,sp,14
20010d8e:	00000097          	auipc	ra,0x0
20010d92:	b58080e7          	jalr	-1192(ra) # 200108e6 <basic::PROCESS_LIST::{{closure}}>
20010d96:	0000                	unimp
	...

20010d9a <core::ops::function::FnOnce::call_once>:
20010d9a:	1141                	add	sp,sp,-16
20010d9c:	00e10513          	add	a0,sp,14
20010da0:	00000097          	auipc	ra,0x0
20010da4:	a68080e7          	jalr	-1432(ra) # 20010808 <basic::PROCESS_LIST::{{closure}}>
20010da8:	0000                	unimp
	...

20010dac <core::ops::function::FnOnce::call_once>:
20010dac:	1141                	add	sp,sp,-16
20010dae:	00e10513          	add	a0,sp,14
20010db2:	00000097          	auipc	ra,0x0
20010db6:	b9e080e7          	jalr	-1122(ra) # 20010950 <basic::PROCESS_LIST::{{closure}}>
20010dba:	0000                	unimp
	...

20010dbe <core::ops::function::FnOnce::call_once>:
20010dbe:	1141                	add	sp,sp,-16
20010dc0:	c606                	sw	ra,12(sp)
20010dc2:	00002097          	auipc	ra,0x2
20010dc6:	528080e7          	jalr	1320(ra) # 200132ea <<e310x_hal::device::DeviceResources as core::convert::From<e310x::Peripherals>>::from>
20010dca:	40b2                	lw	ra,12(sp)
20010dcc:	0141                	add	sp,sp,16
20010dce:	8082                	ret

20010dd0 <core::ops::function::FnOnce::call_once>:
20010dd0:	1141                	add	sp,sp,-16
20010dd2:	00e10513          	add	a0,sp,14
20010dd6:	00000097          	auipc	ra,0x0
20010dda:	aa6080e7          	jalr	-1370(ra) # 2001087c <basic::PROCESS_LIST::{{closure}}>
20010dde:	0000                	unimp
	...

20010de2 <core::ptr::drop_in_place<critical_section::with::Guard>>:
20010de2:	1141                	add	sp,sp,-16
20010de4:	c606                	sw	ra,12(sp)
20010de6:	c02a                	sw	a0,0(sp)
20010de8:	c22a                	sw	a0,4(sp)
    }

    impl Drop for Guard {
        #[inline(always)]
        fn drop(&mut self) {
            unsafe { release(self.state) }
20010dea:	00054503          	lbu	a0,0(a0)
20010dee:	00a105a3          	sb	a0,11(sp)
    _critical_section_1_0_release(restore_state.0)
20010df2:	00003097          	auipc	ra,0x3
20010df6:	da0080e7          	jalr	-608(ra) # 20013b92 <_critical_section_1_0_release>
20010dfa:	40b2                	lw	ra,12(sp)
20010dfc:	0141                	add	sp,sp,16
20010dfe:	8082                	ret

20010e00 <core::sync::atomic::compiler_fence>:
20010e00:	7179                	add	sp,sp,-48
20010e02:	00a103a3          	sb	a0,7(sp)
20010e06:	00714503          	lbu	a0,7(sp)
20010e0a:	c02a                	sw	a0,0(sp)
20010e0c:	4502                	lw	a0,0(sp)
20010e0e:	050a                	sll	a0,a0,0x2
20010e10:	200155b7          	lui	a1,0x20015
20010e14:	7d458593          	add	a1,a1,2004 # 200157d4 <.LJTI0_0>
20010e18:	952e                	add	a0,a0,a1
20010e1a:	4108                	lw	a0,0(a0)
20010e1c:	8502                	jr	a0
	...

20010e20 <.LBB0_3>:
20010e20:	20016537          	lui	a0,0x20016
20010e24:	84450613          	add	a2,a0,-1980 # 20015844 <.L__unnamed_1>
20010e28:	d432                	sw	a2,40(sp)
20010e2a:	4585                	li	a1,1
20010e2c:	d62e                	sw	a1,44(sp)
20010e2e:	4501                	li	a0,0
20010e30:	d02a                	sw	a0,32(sp)
20010e32:	c432                	sw	a2,8(sp)
20010e34:	c62e                	sw	a1,12(sp)
20010e36:	5602                	lw	a2,32(sp)
20010e38:	5592                	lw	a1,36(sp)
20010e3a:	cc32                	sw	a2,24(sp)
20010e3c:	ce2e                	sw	a1,28(sp)
20010e3e:	200165b7          	lui	a1,0x20016
20010e42:	84c58593          	add	a1,a1,-1972 # 2001584c <.L__unnamed_5>
20010e46:	c82e                	sw	a1,16(sp)
20010e48:	ca2a                	sw	a0,20(sp)
20010e4a:	20016537          	lui	a0,0x20016
20010e4e:	89c50593          	add	a1,a0,-1892 # 2001589c <.L__unnamed_3>
20010e52:	0028                	add	a0,sp,8
20010e54:	00004097          	auipc	ra,0x4
20010e58:	ad0080e7          	jalr	-1328(ra) # 20014924 <core::panicking::panic_fmt>
	...

20010e5e <.LBB0_4>:
20010e5e:	a021                	j	20010e66 <.LBB0_7+0x2>

20010e60 <.LBB0_5>:
20010e60:	a019                	j	20010e66 <.LBB0_7+0x2>

20010e62 <.LBB0_6>:
20010e62:	a011                	j	20010e66 <.LBB0_7+0x2>

20010e64 <.LBB0_7>:
20010e64:	a009                	j	20010e66 <.LBB0_7+0x2>
20010e66:	6145                	add	sp,sp,48
20010e68:	8082                	ret

20010e6a <core::sync::atomic::AtomicU32::fetch_or>:
20010e6a:	1101                	add	sp,sp,-32
20010e6c:	c02e                	sw	a1,0(sp)
20010e6e:	c22a                	sw	a0,4(sp)
20010e70:	00c107a3          	sb	a2,15(sp)
20010e74:	ca2a                	sw	a0,20(sp)
20010e76:	cc2e                	sw	a1,24(sp)
20010e78:	ce2a                	sw	a0,28(sp)
20010e7a:	00f14503          	lbu	a0,15(sp)
20010e7e:	c42a                	sw	a0,8(sp)
20010e80:	4522                	lw	a0,8(sp)
20010e82:	050a                	sll	a0,a0,0x2
20010e84:	200155b7          	lui	a1,0x20015
20010e88:	7e858593          	add	a1,a1,2024 # 200157e8 <.LJTI1_0>
20010e8c:	952e                	add	a0,a0,a1
20010e8e:	4108                	lw	a0,0(a0)
20010e90:	8502                	jr	a0
	...

20010e94 <.LBB1_3>:
20010e94:	4512                	lw	a0,4(sp)
20010e96:	4582                	lw	a1,0(sp)
20010e98:	40b5252f          	amoor.w	a0,a1,(a0)
20010e9c:	c82a                	sw	a0,16(sp)
20010e9e:	a80d                	j	20010ed0 <.LBB1_7+0xc>

20010ea0 <.LBB1_4>:
20010ea0:	4512                	lw	a0,4(sp)
20010ea2:	4582                	lw	a1,0(sp)
20010ea4:	42b5252f          	amoor.w.rl	a0,a1,(a0)
20010ea8:	c82a                	sw	a0,16(sp)
20010eaa:	a01d                	j	20010ed0 <.LBB1_7+0xc>

20010eac <.LBB1_5>:
20010eac:	4512                	lw	a0,4(sp)
20010eae:	4582                	lw	a1,0(sp)
20010eb0:	44b5252f          	amoor.w.aq	a0,a1,(a0)
20010eb4:	c82a                	sw	a0,16(sp)
20010eb6:	a829                	j	20010ed0 <.LBB1_7+0xc>

20010eb8 <.LBB1_6>:
20010eb8:	4512                	lw	a0,4(sp)
20010eba:	4582                	lw	a1,0(sp)
20010ebc:	46b5252f          	amoor.w.aqrl	a0,a1,(a0)
20010ec0:	c82a                	sw	a0,16(sp)
20010ec2:	a039                	j	20010ed0 <.LBB1_7+0xc>

20010ec4 <.LBB1_7>:
20010ec4:	4512                	lw	a0,4(sp)
20010ec6:	4582                	lw	a1,0(sp)
20010ec8:	46b5252f          	amoor.w.aqrl	a0,a1,(a0)
20010ecc:	c82a                	sw	a0,16(sp)
20010ece:	a009                	j	20010ed0 <.LBB1_7+0xc>
20010ed0:	4542                	lw	a0,16(sp)
20010ed2:	6105                	add	sp,sp,32
20010ed4:	8082                	ret

20010ed6 <core::sync::atomic::AtomicU32::fetch_and>:
20010ed6:	1101                	add	sp,sp,-32
20010ed8:	c02e                	sw	a1,0(sp)
20010eda:	c22a                	sw	a0,4(sp)
20010edc:	00c107a3          	sb	a2,15(sp)
20010ee0:	ca2a                	sw	a0,20(sp)
20010ee2:	cc2e                	sw	a1,24(sp)
20010ee4:	ce2a                	sw	a0,28(sp)
20010ee6:	00f14503          	lbu	a0,15(sp)
20010eea:	c42a                	sw	a0,8(sp)
20010eec:	4522                	lw	a0,8(sp)
20010eee:	050a                	sll	a0,a0,0x2
20010ef0:	200155b7          	lui	a1,0x20015
20010ef4:	7fc58593          	add	a1,a1,2044 # 200157fc <.LJTI2_0>
20010ef8:	952e                	add	a0,a0,a1
20010efa:	4108                	lw	a0,0(a0)
20010efc:	8502                	jr	a0
	...

20010f00 <.LBB2_3>:
20010f00:	4512                	lw	a0,4(sp)
20010f02:	4582                	lw	a1,0(sp)
20010f04:	60b5252f          	amoand.w	a0,a1,(a0)
20010f08:	c82a                	sw	a0,16(sp)
20010f0a:	a80d                	j	20010f3c <.LBB2_7+0xc>

20010f0c <.LBB2_4>:
20010f0c:	4512                	lw	a0,4(sp)
20010f0e:	4582                	lw	a1,0(sp)
20010f10:	62b5252f          	amoand.w.rl	a0,a1,(a0)
20010f14:	c82a                	sw	a0,16(sp)
20010f16:	a01d                	j	20010f3c <.LBB2_7+0xc>

20010f18 <.LBB2_5>:
20010f18:	4512                	lw	a0,4(sp)
20010f1a:	4582                	lw	a1,0(sp)
20010f1c:	64b5252f          	amoand.w.aq	a0,a1,(a0)
20010f20:	c82a                	sw	a0,16(sp)
20010f22:	a829                	j	20010f3c <.LBB2_7+0xc>

20010f24 <.LBB2_6>:
20010f24:	4512                	lw	a0,4(sp)
20010f26:	4582                	lw	a1,0(sp)
20010f28:	66b5252f          	amoand.w.aqrl	a0,a1,(a0)
20010f2c:	c82a                	sw	a0,16(sp)
20010f2e:	a039                	j	20010f3c <.LBB2_7+0xc>

20010f30 <.LBB2_7>:
20010f30:	4512                	lw	a0,4(sp)
20010f32:	4582                	lw	a1,0(sp)
20010f34:	66b5252f          	amoand.w.aqrl	a0,a1,(a0)
20010f38:	c82a                	sw	a0,16(sp)
20010f3a:	a009                	j	20010f3c <.LBB2_7+0xc>
20010f3c:	4542                	lw	a0,16(sp)
20010f3e:	6105                	add	sp,sp,32
20010f40:	8082                	ret

20010f42 <critical_section::with>:
pub fn with<R>(f: impl FnOnce(CriticalSection) -> R) -> R {
20010f42:	1141                	add	sp,sp,-16
    RestoreState(_critical_section_1_0_acquire())
20010f44:	c606                	sw	ra,12(sp)
20010f46:	00003097          	auipc	ra,0x3
20010f4a:	c3a080e7          	jalr	-966(ra) # 20013b80 <_critical_section_1_0_acquire>
20010f4e:	00a105a3          	sb	a0,11(sp)
}
20010f52:	00b14503          	lbu	a0,11(sp)
        }
    }

    let state = unsafe { acquire() };
20010f56:	00a10523          	sb	a0,10(sp)
    let _guard = Guard { state };
20010f5a:	00a10423          	sb	a0,8(sp)

    unsafe { f(CriticalSection::new()) }
20010f5e:	00000097          	auipc	ra,0x0
20010f62:	c1c080e7          	jalr	-996(ra) # 20010b7a <e310x::Peripherals::take::{{closure}}>
}
20010f66:	c22a                	sw	a0,4(sp)
20010f68:	0028                	add	a0,sp,8
20010f6a:	00000097          	auipc	ra,0x0
20010f6e:	e78080e7          	jalr	-392(ra) # 20010de2 <core::ptr::drop_in_place<critical_section::with::Guard>>
20010f72:	4512                	lw	a0,4(sp)
20010f74:	40b2                	lw	ra,12(sp)
20010f76:	0141                	add	sp,sp,16
20010f78:	8082                	ret

20010f7a <riscv::interrupt::enable>:
pub unsafe fn enable() {
20010f7a:	1141                	add	sp,sp,-16
        () => mstatus::set_mie(),
20010f7c:	c606                	sw	ra,12(sp)
20010f7e:	00000097          	auipc	ra,0x0
20010f82:	bb4080e7          	jalr	-1100(ra) # 20010b32 <riscv::register::mstatus::set_mie>
}
20010f86:	40b2                	lw	ra,12(sp)
20010f88:	0141                	add	sp,sp,16
20010f8a:	8082                	ret

20010f8c <riscv::interrupt::disable>:
pub unsafe fn disable() {
20010f8c:	1141                	add	sp,sp,-16
        () => mstatus::clear_mie(),
20010f8e:	c606                	sw	ra,12(sp)
20010f90:	00000097          	auipc	ra,0x0
20010f94:	bb6080e7          	jalr	-1098(ra) # 20010b46 <riscv::register::mstatus::clear_mie>
}
20010f98:	40b2                	lw	ra,12(sp)
20010f9a:	0141                	add	sp,sp,16
20010f9c:	8082                	ret

20010f9e <<core::ops::range::Range<usize> as core::slice::index::SliceIndex<[T]>>::index_mut>:
20010f9e:	711d                	add	sp,sp,-96
20010fa0:	c63a                	sw	a4,12(sp)
20010fa2:	c836                	sw	a3,16(sp)
20010fa4:	ca32                	sw	a2,20(sp)
20010fa6:	cc2e                	sw	a1,24(sp)
20010fa8:	ce2a                	sw	a0,28(sp)
20010faa:	d82a                	sw	a0,48(sp)
20010fac:	da2e                	sw	a1,52(sp)
20010fae:	dc32                	sw	a2,56(sp)
20010fb0:	de36                	sw	a3,60(sp)
20010fb2:	00a5e863          	bltu	a1,a0,20010fc2 <<core::ops::range::Range<usize> as core::slice::index::SliceIndex<[T]>>::index_mut+0x24>
20010fb6:	a009                	j	20010fb8 <<core::ops::range::Range<usize> as core::slice::index::SliceIndex<[T]>>::index_mut+0x1a>
20010fb8:	4542                	lw	a0,16(sp)
20010fba:	45e2                	lw	a1,24(sp)
20010fbc:	04b56363          	bltu	a0,a1,20011002 <<core::ops::range::Range<usize> as core::slice::index::SliceIndex<[T]>>::index_mut+0x64>
20010fc0:	a809                	j	20010fd2 <<core::ops::range::Range<usize> as core::slice::index::SliceIndex<[T]>>::index_mut+0x34>
20010fc2:	4632                	lw	a2,12(sp)
20010fc4:	45e2                	lw	a1,24(sp)
20010fc6:	4572                	lw	a0,28(sp)
20010fc8:	00004097          	auipc	ra,0x4
20010fcc:	07c080e7          	jalr	124(ra) # 20015044 <core::slice::index::slice_index_order_fail>
20010fd0:	0000                	unimp
20010fd2:	45d2                	lw	a1,20(sp)
20010fd4:	4672                	lw	a2,28(sp)
20010fd6:	4562                	lw	a0,24(sp)
20010fd8:	46c2                	lw	a3,16(sp)
20010fda:	c0b2                	sw	a2,64(sp)
20010fdc:	c2aa                	sw	a0,68(sp)
20010fde:	c4ae                	sw	a1,72(sp)
20010fe0:	c6b6                	sw	a3,76(sp)
20010fe2:	8d11                	sub	a0,a0,a2
20010fe4:	c8aa                	sw	a0,80(sp)
20010fe6:	caae                	sw	a1,84(sp)
20010fe8:	95b2                	add	a1,a1,a2
20010fea:	ccae                	sw	a1,88(sp)
20010fec:	ceae                	sw	a1,92(sp)
20010fee:	d42e                	sw	a1,40(sp)
20010ff0:	d62a                	sw	a0,44(sp)
20010ff2:	55a2                	lw	a1,40(sp)
20010ff4:	5532                	lw	a0,44(sp)
20010ff6:	d02e                	sw	a1,32(sp)
20010ff8:	d22a                	sw	a0,36(sp)
20010ffa:	5502                	lw	a0,32(sp)
20010ffc:	5592                	lw	a1,36(sp)
20010ffe:	6125                	add	sp,sp,96
20011000:	8082                	ret
20011002:	4632                	lw	a2,12(sp)
20011004:	45c2                	lw	a1,16(sp)
20011006:	4562                	lw	a0,24(sp)
20011008:	00004097          	auipc	ra,0x4
2001100c:	ffc080e7          	jalr	-4(ra) # 20015004 <core::slice::index::slice_end_index_len_fail>
	...

20011012 <<usize as bit_field::BitField>::get_bit>:
            fn get_bit(&self, bit: usize) -> bool {
20011012:	1101                	add	sp,sp,-32
20011014:	c632                	sw	a2,12(sp)
20011016:	c82e                	sw	a1,16(sp)
20011018:	ca2a                	sw	a0,20(sp)
2001101a:	cc2a                	sw	a0,24(sp)
2001101c:	ce2e                	sw	a1,28(sp)
2001101e:	02000513          	li	a0,32
                assert!(bit < Self::BIT_LENGTH);
20011022:	00a5ef63          	bltu	a1,a0,20011040 <<usize as bit_field::BitField>::get_bit+0x2e>
20011026:	a009                	j	20011028 <<usize as bit_field::BitField>::get_bit+0x16>
20011028:	4632                	lw	a2,12(sp)
2001102a:	20016537          	lui	a0,0x20016
2001102e:	8ac50513          	add	a0,a0,-1876 # 200158ac <.L__unnamed_3>
20011032:	02800593          	li	a1,40
20011036:	00004097          	auipc	ra,0x4
2001103a:	91c080e7          	jalr	-1764(ra) # 20014952 <core::panicking::panic>
2001103e:	0000                	unimp
                (*self & (1 << bit)) != 0
20011040:	45c2                	lw	a1,16(sp)
20011042:	4552                	lw	a0,20(sp)
20011044:	4108                	lw	a0,0(a0)
20011046:	c42a                	sw	a0,8(sp)
20011048:	457d                	li	a0,31
2001104a:	00b56a63          	bltu	a0,a1,2001105e <<usize as bit_field::BitField>::get_bit+0x4c>
2001104e:	a009                	j	20011050 <<usize as bit_field::BitField>::get_bit+0x3e>
20011050:	4522                	lw	a0,8(sp)
20011052:	45c2                	lw	a1,16(sp)
20011054:	00b55533          	srl	a0,a0,a1
            }
20011058:	8905                	and	a0,a0,1
2001105a:	6105                	add	sp,sp,32
2001105c:	8082                	ret
                (*self & (1 << bit)) != 0
2001105e:	4632                	lw	a2,12(sp)
20011060:	20016537          	lui	a0,0x20016
20011064:	8e050513          	add	a0,a0,-1824 # 200158e0 <str.0>
20011068:	02300593          	li	a1,35
2001106c:	00004097          	auipc	ra,0x4
20011070:	8e6080e7          	jalr	-1818(ra) # 20014952 <core::panicking::panic>
	...

20011076 <core::fmt::Write::write_char>:
20011076:	7179                	add	sp,sp,-48
20011078:	d606                	sw	ra,44(sp)
2001107a:	c22e                	sw	a1,4(sp)
2001107c:	85aa                	mv	a1,a0
2001107e:	4512                	lw	a0,4(sp)
20011080:	c42e                	sw	a1,8(sp)
20011082:	ca2e                	sw	a1,20(sp)
20011084:	cc2a                	sw	a0,24(sp)
20011086:	4581                	li	a1,0
20011088:	c82e                	sw	a1,16(sp)
2001108a:	080c                	add	a1,sp,16
2001108c:	ce2e                	sw	a1,28(sp)
2001108e:	4611                	li	a2,4
20011090:	d032                	sw	a2,32(sp)
20011092:	00000097          	auipc	ra,0x0
20011096:	0c8080e7          	jalr	200(ra) # 2001115a <core::char::methods::encode_utf8_raw>
2001109a:	862a                	mv	a2,a0
2001109c:	4522                	lw	a0,8(sp)
2001109e:	c632                	sw	a2,12(sp)
200110a0:	862e                	mv	a2,a1
200110a2:	45b2                	lw	a1,12(sp)
200110a4:	d22e                	sw	a1,36(sp)
200110a6:	d432                	sw	a2,40(sp)
200110a8:	00000097          	auipc	ra,0x0
200110ac:	6d0080e7          	jalr	1744(ra) # 20011778 <<hifive1::stdout::SerialWrapper as core::fmt::Write>::write_str>
200110b0:	50b2                	lw	ra,44(sp)
200110b2:	6145                	add	sp,sp,48
200110b4:	8082                	ret

200110b6 <core::fmt::Write::write_fmt>:
200110b6:	1141                	add	sp,sp,-16
200110b8:	c606                	sw	ra,12(sp)
200110ba:	c42a                	sw	a0,8(sp)
200110bc:	00000097          	auipc	ra,0x0
200110c0:	40e080e7          	jalr	1038(ra) # 200114ca <<&mut W as core::fmt::Write::write_fmt::SpecWriteFmt>::spec_write_fmt>
200110c4:	40b2                	lw	ra,12(sp)
200110c6:	0141                	add	sp,sp,16
200110c8:	8082                	ret

200110ca <core::fmt::Arguments::new_v1>:
200110ca:	711d                	add	sp,sp,-96
200110cc:	c63a                	sw	a4,12(sp)
200110ce:	c836                	sw	a3,16(sp)
200110d0:	ca32                	sw	a2,20(sp)
200110d2:	cc2e                	sw	a1,24(sp)
200110d4:	ce2a                	sw	a0,28(sp)
200110d6:	c4ae                	sw	a1,72(sp)
200110d8:	c6b2                	sw	a2,76(sp)
200110da:	c8b6                	sw	a3,80(sp)
200110dc:	caba                	sw	a4,84(sp)
200110de:	00e66963          	bltu	a2,a4,200110f0 <core::fmt::Arguments::new_v1+0x26>
200110e2:	a009                	j	200110e4 <core::fmt::Arguments::new_v1+0x1a>
200110e4:	45d2                	lw	a1,20(sp)
200110e6:	4532                	lw	a0,12(sp)
200110e8:	0505                	add	a0,a0,1
200110ea:	02b56563          	bltu	a0,a1,20011114 <core::fmt::Arguments::new_v1+0x4a>
200110ee:	a011                	j	200110f2 <core::fmt::Arguments::new_v1+0x28>
200110f0:	a015                	j	20011114 <core::fmt::Arguments::new_v1+0x4a>
200110f2:	4532                	lw	a0,12(sp)
200110f4:	45f2                	lw	a1,28(sp)
200110f6:	4642                	lw	a2,16(sp)
200110f8:	46d2                	lw	a3,20(sp)
200110fa:	4762                	lw	a4,24(sp)
200110fc:	4781                	li	a5,0
200110fe:	dc3e                	sw	a5,56(sp)
20011100:	c198                	sw	a4,0(a1)
20011102:	c1d4                	sw	a3,4(a1)
20011104:	5762                	lw	a4,56(sp)
20011106:	56f2                	lw	a3,60(sp)
20011108:	c998                	sw	a4,16(a1)
2001110a:	c9d4                	sw	a3,20(a1)
2001110c:	c590                	sw	a2,8(a1)
2001110e:	c5c8                	sw	a0,12(a1)
20011110:	6125                	add	sp,sp,96
20011112:	8082                	ret
20011114:	20016537          	lui	a0,0x20016
20011118:	91050613          	add	a2,a0,-1776 # 20015910 <.L__unnamed_4>
2001111c:	ccb2                	sw	a2,88(sp)
2001111e:	4585                	li	a1,1
20011120:	ceae                	sw	a1,92(sp)
20011122:	4501                	li	a0,0
20011124:	c0aa                	sw	a0,64(sp)
20011126:	d032                	sw	a2,32(sp)
20011128:	d22e                	sw	a1,36(sp)
2001112a:	4606                	lw	a2,64(sp)
2001112c:	4596                	lw	a1,68(sp)
2001112e:	d832                	sw	a2,48(sp)
20011130:	da2e                	sw	a1,52(sp)
20011132:	200165b7          	lui	a1,0x20016
20011136:	91858593          	add	a1,a1,-1768 # 20015918 <.L__unnamed_21>
2001113a:	d42e                	sw	a1,40(sp)
2001113c:	d62a                	sw	a0,44(sp)
2001113e:	20016537          	lui	a0,0x20016
20011142:	96450593          	add	a1,a0,-1692 # 20015964 <.L__unnamed_6>
20011146:	1008                	add	a0,sp,32
20011148:	00003097          	auipc	ra,0x3
2001114c:	7dc080e7          	jalr	2012(ra) # 20014924 <core::panicking::panic_fmt>
	...

20011152 <core::ptr::drop_in_place<hifive1::stdout::SerialWrapper>>:
20011152:	1141                	add	sp,sp,-16
20011154:	c62a                	sw	a0,12(sp)
20011156:	0141                	add	sp,sp,16
20011158:	8082                	ret

2001115a <core::char::methods::encode_utf8_raw>:
2001115a:	7135                	add	sp,sp,-160
2001115c:	cf06                	sw	ra,156(sp)
2001115e:	c432                	sw	a2,8(sp)
20011160:	c62e                	sw	a1,12(sp)
20011162:	cc2a                	sw	a0,24(sp)
20011164:	daae                	sw	a1,116(sp)
20011166:	dcb2                	sw	a2,120(sp)
20011168:	4562                	lw	a0,24(sp)
2001116a:	c82a                	sw	a0,16(sp)
2001116c:	deaa                	sw	a0,124(sp)
2001116e:	08000593          	li	a1,128
20011172:	00b56763          	bltu	a0,a1,20011180 <core::char::methods::encode_utf8_raw+0x26>
20011176:	a009                	j	20011178 <core::char::methods::encode_utf8_raw+0x1e>
20011178:	4542                	lw	a0,16(sp)
2001117a:	812d                	srl	a0,a0,0xb
2001117c:	c909                	beqz	a0,2001118e <core::char::methods::encode_utf8_raw+0x34>
2001117e:	a021                	j	20011186 <core::char::methods::encode_utf8_raw+0x2c>
20011180:	4505                	li	a0,1
20011182:	ce2a                	sw	a0,28(sp)
20011184:	a005                	j	200111a4 <core::char::methods::encode_utf8_raw+0x4a>
20011186:	4542                	lw	a0,16(sp)
20011188:	8141                	srl	a0,a0,0x10
2001118a:	c901                	beqz	a0,2001119a <core::char::methods::encode_utf8_raw+0x40>
2001118c:	a021                	j	20011194 <core::char::methods::encode_utf8_raw+0x3a>
2001118e:	4509                	li	a0,2
20011190:	ce2a                	sw	a0,28(sp)
20011192:	a801                	j	200111a2 <core::char::methods::encode_utf8_raw+0x48>
20011194:	4511                	li	a0,4
20011196:	ce2a                	sw	a0,28(sp)
20011198:	a021                	j	200111a0 <core::char::methods::encode_utf8_raw+0x46>
2001119a:	450d                	li	a0,3
2001119c:	ce2a                	sw	a0,28(sp)
2001119e:	a009                	j	200111a0 <core::char::methods::encode_utf8_raw+0x46>
200111a0:	a009                	j	200111a2 <core::char::methods::encode_utf8_raw+0x48>
200111a2:	a009                	j	200111a4 <core::char::methods::encode_utf8_raw+0x4a>
200111a4:	4572                	lw	a0,28(sp)
200111a6:	c22a                	sw	a0,4(sp)
200111a8:	4585                	li	a1,1
200111aa:	08b50e63          	beq	a0,a1,20011246 <core::char::methods::encode_utf8_raw+0xec>
200111ae:	a009                	j	200111b0 <core::char::methods::encode_utf8_raw+0x56>
200111b0:	4512                	lw	a0,4(sp)
200111b2:	4589                	li	a1,2
200111b4:	08b50c63          	beq	a0,a1,2001124c <core::char::methods::encode_utf8_raw+0xf2>
200111b8:	a009                	j	200111ba <core::char::methods::encode_utf8_raw+0x60>
200111ba:	4512                	lw	a0,4(sp)
200111bc:	458d                	li	a1,3
200111be:	08b50c63          	beq	a0,a1,20011256 <core::char::methods::encode_utf8_raw+0xfc>
200111c2:	a009                	j	200111c4 <core::char::methods::encode_utf8_raw+0x6a>
200111c4:	4512                	lw	a0,4(sp)
200111c6:	4591                	li	a1,4
200111c8:	08b50c63          	beq	a0,a1,20011260 <core::char::methods::encode_utf8_raw+0x106>
200111cc:	a009                	j	200111ce <core::char::methods::encode_utf8_raw+0x74>
200111ce:	45a2                	lw	a1,8(sp)
200111d0:	0870                	add	a2,sp,28
200111d2:	c332                	sw	a2,132(sp)
200111d4:	20015537          	lui	a0,0x20015
200111d8:	3e050513          	add	a0,a0,992 # 200153e0 <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt>
200111dc:	c52a                	sw	a0,136(sp)
200111de:	c8b2                	sw	a2,80(sp)
200111e0:	caaa                	sw	a0,84(sp)
200111e2:	0834                	add	a3,sp,24
200111e4:	c736                	sw	a3,140(sp)
200111e6:	20015637          	lui	a2,0x20015
200111ea:	1fe60613          	add	a2,a2,510 # 200151fe <core::fmt::num::<impl core::fmt::UpperHex for i32>::fmt>
200111ee:	c932                	sw	a2,144(sp)
200111f0:	ccb6                	sw	a3,88(sp)
200111f2:	ceb2                	sw	a2,92(sp)
200111f4:	d4ae                	sw	a1,104(sp)
200111f6:	10ac                	add	a1,sp,104
200111f8:	cb2e                	sw	a1,148(sp)
200111fa:	cd2a                	sw	a0,152(sp)
200111fc:	d0ae                	sw	a1,96(sp)
200111fe:	d2aa                	sw	a0,100(sp)
20011200:	45c6                	lw	a1,80(sp)
20011202:	4556                	lw	a0,84(sp)
20011204:	dc2e                	sw	a1,56(sp)
20011206:	de2a                	sw	a0,60(sp)
20011208:	45e6                	lw	a1,88(sp)
2001120a:	4576                	lw	a0,92(sp)
2001120c:	c0ae                	sw	a1,64(sp)
2001120e:	c2aa                	sw	a0,68(sp)
20011210:	5586                	lw	a1,96(sp)
20011212:	5516                	lw	a0,100(sp)
20011214:	c4ae                	sw	a1,72(sp)
20011216:	c6aa                	sw	a0,76(sp)
20011218:	20016537          	lui	a0,0x20016
2001121c:	a1050593          	add	a1,a0,-1520 # 20015a10 <.L__unnamed_7>
20011220:	1008                	add	a0,sp,32
20011222:	c02a                	sw	a0,0(sp)
20011224:	1834                	add	a3,sp,56
20011226:	470d                	li	a4,3
20011228:	863a                	mv	a2,a4
2001122a:	00000097          	auipc	ra,0x0
2001122e:	ea0080e7          	jalr	-352(ra) # 200110ca <core::fmt::Arguments::new_v1>
20011232:	4502                	lw	a0,0(sp)
20011234:	200165b7          	lui	a1,0x20016
20011238:	a2858593          	add	a1,a1,-1496 # 20015a28 <.L__unnamed_8>
2001123c:	00003097          	auipc	ra,0x3
20011240:	6e8080e7          	jalr	1768(ra) # 20014924 <core::panicking::panic_fmt>
20011244:	0000                	unimp
20011246:	4522                	lw	a0,8(sp)
20011248:	e10d                	bnez	a0,2001126a <core::char::methods::encode_utf8_raw+0x110>
2001124a:	b751                	j	200111ce <core::char::methods::encode_utf8_raw+0x74>
2001124c:	45a2                	lw	a1,8(sp)
2001124e:	4505                	li	a0,1
20011250:	04b56663          	bltu	a0,a1,2001129c <core::char::methods::encode_utf8_raw+0x142>
20011254:	bfad                	j	200111ce <core::char::methods::encode_utf8_raw+0x74>
20011256:	45a2                	lw	a1,8(sp)
20011258:	4509                	li	a0,2
2001125a:	06b56263          	bltu	a0,a1,200112be <core::char::methods::encode_utf8_raw+0x164>
2001125e:	bf85                	j	200111ce <core::char::methods::encode_utf8_raw+0x74>
20011260:	45a2                	lw	a1,8(sp)
20011262:	450d                	li	a0,3
20011264:	08b56563          	bltu	a0,a1,200112ee <core::char::methods::encode_utf8_raw+0x194>
20011268:	b79d                	j	200111ce <core::char::methods::encode_utf8_raw+0x74>
2001126a:	45b2                	lw	a1,12(sp)
2001126c:	4562                	lw	a0,24(sp)
2001126e:	00a58023          	sb	a0,0(a1)
20011272:	a009                	j	20011274 <core::char::methods::encode_utf8_raw+0x11a>
20011274:	46a2                	lw	a3,8(sp)
20011276:	4632                	lw	a2,12(sp)
20011278:	4572                	lw	a0,28(sp)
2001127a:	c12a                	sw	a0,128(sp)
2001127c:	4581                	li	a1,0
2001127e:	d6ae                	sw	a1,108(sp)
20011280:	d8aa                	sw	a0,112(sp)
20011282:	5536                	lw	a0,108(sp)
20011284:	55c6                	lw	a1,112(sp)
20011286:	20016737          	lui	a4,0x20016
2001128a:	9c470713          	add	a4,a4,-1596 # 200159c4 <.L__unnamed_9>
2001128e:	00000097          	auipc	ra,0x0
20011292:	d10080e7          	jalr	-752(ra) # 20010f9e <<core::ops::range::Range<usize> as core::slice::index::SliceIndex<[T]>>::index_mut>
20011296:	40fa                	lw	ra,156(sp)
20011298:	610d                	add	sp,sp,160
2001129a:	8082                	ret
2001129c:	45b2                	lw	a1,12(sp)
2001129e:	4562                	lw	a0,24(sp)
200112a0:	0556                	sll	a0,a0,0x15
200112a2:	816d                	srl	a0,a0,0x1b
200112a4:	0c050513          	add	a0,a0,192
200112a8:	00a58023          	sb	a0,0(a1)
200112ac:	01814503          	lbu	a0,24(sp)
200112b0:	03f57513          	and	a0,a0,63
200112b4:	08050513          	add	a0,a0,128
200112b8:	00a580a3          	sb	a0,1(a1)
200112bc:	bf65                	j	20011274 <core::char::methods::encode_utf8_raw+0x11a>
200112be:	45b2                	lw	a1,12(sp)
200112c0:	4562                	lw	a0,24(sp)
200112c2:	0542                	sll	a0,a0,0x10
200112c4:	8171                	srl	a0,a0,0x1c
200112c6:	0e050513          	add	a0,a0,224
200112ca:	00a58023          	sb	a0,0(a1)
200112ce:	4562                	lw	a0,24(sp)
200112d0:	0552                	sll	a0,a0,0x14
200112d2:	8169                	srl	a0,a0,0x1a
200112d4:	08050513          	add	a0,a0,128
200112d8:	00a580a3          	sb	a0,1(a1)
200112dc:	01814503          	lbu	a0,24(sp)
200112e0:	03f57513          	and	a0,a0,63
200112e4:	08050513          	add	a0,a0,128
200112e8:	00a58123          	sb	a0,2(a1)
200112ec:	b761                	j	20011274 <core::char::methods::encode_utf8_raw+0x11a>
200112ee:	45b2                	lw	a1,12(sp)
200112f0:	4562                	lw	a0,24(sp)
200112f2:	052e                	sll	a0,a0,0xb
200112f4:	8175                	srl	a0,a0,0x1d
200112f6:	0f050513          	add	a0,a0,240
200112fa:	00a58023          	sb	a0,0(a1)
200112fe:	4562                	lw	a0,24(sp)
20011300:	053a                	sll	a0,a0,0xe
20011302:	8169                	srl	a0,a0,0x1a
20011304:	08050513          	add	a0,a0,128
20011308:	00a580a3          	sb	a0,1(a1)
2001130c:	4562                	lw	a0,24(sp)
2001130e:	0552                	sll	a0,a0,0x14
20011310:	8169                	srl	a0,a0,0x1a
20011312:	08050513          	add	a0,a0,128
20011316:	00a58123          	sb	a0,2(a1)
2001131a:	01814503          	lbu	a0,24(sp)
2001131e:	03f57513          	and	a0,a0,63
20011322:	08050513          	add	a0,a0,128
20011326:	00a581a3          	sb	a0,3(a1)
2001132a:	b7a9                	j	20011274 <core::char::methods::encode_utf8_raw+0x11a>

2001132c <core::slice::iter::<impl core::iter::traits::collect::IntoIterator for &[T]>::into_iter>:
2001132c:	7179                	add	sp,sp,-48
2001132e:	c02e                	sw	a1,0(sp)
20011330:	c22a                	sw	a0,4(sp)
20011332:	cc2a                	sw	a0,24(sp)
20011334:	ce2e                	sw	a1,28(sp)
20011336:	d02a                	sw	a0,32(sp)
20011338:	4501                	li	a0,0
2001133a:	e901                	bnez	a0,2001134a <core::slice::iter::<impl core::iter::traits::collect::IntoIterator for &[T]>::into_iter+0x1e>
2001133c:	a009                	j	2001133e <core::slice::iter::<impl core::iter::traits::collect::IntoIterator for &[T]>::into_iter+0x12>
2001133e:	4512                	lw	a0,4(sp)
20011340:	4582                	lw	a1,0(sp)
20011342:	d22e                	sw	a1,36(sp)
20011344:	952e                	add	a0,a0,a1
20011346:	c82a                	sw	a0,16(sp)
20011348:	a029                	j	20011352 <core::slice::iter::<impl core::iter::traits::collect::IntoIterator for &[T]>::into_iter+0x26>
2001134a:	4502                	lw	a0,0(sp)
2001134c:	d42a                	sw	a0,40(sp)
2001134e:	c82a                	sw	a0,16(sp)
20011350:	a009                	j	20011352 <core::slice::iter::<impl core::iter::traits::collect::IntoIterator for &[T]>::into_iter+0x26>
20011352:	4512                	lw	a0,4(sp)
20011354:	d62a                	sw	a0,44(sp)
20011356:	ca2a                	sw	a0,20(sp)
20011358:	4542                	lw	a0,16(sp)
2001135a:	45d2                	lw	a1,20(sp)
2001135c:	c42e                	sw	a1,8(sp)
2001135e:	c62a                	sw	a0,12(sp)
20011360:	4522                	lw	a0,8(sp)
20011362:	45b2                	lw	a1,12(sp)
20011364:	6145                	add	sp,sp,48
20011366:	8082                	ret

20011368 <core::option::Option<T>::as_mut>:
20011368:	1141                	add	sp,sp,-16
2001136a:	c22a                	sw	a0,4(sp)
2001136c:	c62a                	sw	a0,12(sp)
2001136e:	00054503          	lbu	a0,0(a0)
20011372:	8905                	and	a0,a0,1
20011374:	e509                	bnez	a0,2001137e <core::option::Option<T>::as_mut+0x16>
20011376:	a009                	j	20011378 <core::option::Option<T>::as_mut+0x10>
20011378:	4501                	li	a0,0
2001137a:	c42a                	sw	a0,8(sp)
2001137c:	a029                	j	20011386 <core::option::Option<T>::as_mut+0x1e>
2001137e:	4512                	lw	a0,4(sp)
20011380:	0505                	add	a0,a0,1
20011382:	c42a                	sw	a0,8(sp)
20011384:	a009                	j	20011386 <core::option::Option<T>::as_mut+0x1e>
20011386:	4522                	lw	a0,8(sp)
20011388:	0141                	add	sp,sp,16
2001138a:	8082                	ret

2001138c <core::result::Result<T,E>::is_err>:
2001138c:	1141                	add	sp,sp,-16
2001138e:	c62a                	sw	a0,12(sp)
20011390:	4501                	li	a0,0
20011392:	0141                	add	sp,sp,16
20011394:	8082                	ret

20011396 <<T as core::convert::Into<U>>::into>:
20011396:	1141                	add	sp,sp,-16
20011398:	c42a                	sw	a0,8(sp)
2001139a:	c62a                	sw	a0,12(sp)
2001139c:	0141                	add	sp,sp,16
2001139e:	8082                	ret

200113a0 <riscv::register::mstatus::_set>:
        unsafe fn _set(bits: usize) {
200113a0:	1141                	add	sp,sp,-16
200113a2:	c62a                	sw	a0,12(sp)
                () => core::arch::asm!(concat!("csrrs x0, ", stringify!($csr_number), ", {0}"), in(reg) bits),
200113a4:	30052073          	.insn	4, 0x30052073
        }
200113a8:	0141                	add	sp,sp,16
200113aa:	8082                	ret

200113ac <riscv::register::mstatus::read>:
        pub fn read() -> $register {
200113ac:	1141                	add	sp,sp,-16
                bits: unsafe { _read() },
200113ae:	c606                	sw	ra,12(sp)
200113b0:	00000097          	auipc	ra,0x0
200113b4:	012080e7          	jalr	18(ra) # 200113c2 <riscv::register::mstatus::_read>
            $register {
200113b8:	c42a                	sw	a0,8(sp)
        }
200113ba:	4522                	lw	a0,8(sp)
200113bc:	40b2                	lw	ra,12(sp)
200113be:	0141                	add	sp,sp,16
200113c0:	8082                	ret

200113c2 <riscv::register::mstatus::_read>:
        unsafe fn _read() -> usize {
200113c2:	1141                	add	sp,sp,-16
                    core::arch::asm!(concat!("csrrs {0}, ", stringify!($csr_number), ", x0"), out(reg) r);
200113c4:	30002573          	.insn	4, 0x30002573
200113c8:	c62a                	sw	a0,12(sp)
                    r
200113ca:	4532                	lw	a0,12(sp)
        }
200113cc:	0141                	add	sp,sp,16
200113ce:	8082                	ret

200113d0 <riscv::register::mstatus::_clear>:
        unsafe fn _clear(bits: usize) {
200113d0:	1141                	add	sp,sp,-16
200113d2:	c62a                	sw	a0,12(sp)
                () => core::arch::asm!(concat!("csrrc x0, ", stringify!($csr_number), ", {0}"), in(reg) bits),
200113d4:	30053073          	.insn	4, 0x30053073
        }
200113d8:	0141                	add	sp,sp,16
200113da:	8082                	ret

200113dc <riscv::register::mstatus::Mstatus::mie>:
    pub fn mie(&self) -> bool {
200113dc:	1141                	add	sp,sp,-16
200113de:	c606                	sw	ra,12(sp)
200113e0:	c42a                	sw	a0,8(sp)
        self.bits.get_bit(3)
200113e2:	200165b7          	lui	a1,0x20016
200113e6:	aa058613          	add	a2,a1,-1376 # 20015aa0 <.L__unnamed_11>
200113ea:	458d                	li	a1,3
200113ec:	00000097          	auipc	ra,0x0
200113f0:	c26080e7          	jalr	-986(ra) # 20011012 <<usize as bit_field::BitField>::get_bit>
    }
200113f4:	40b2                	lw	ra,12(sp)
200113f6:	0141                	add	sp,sp,16
200113f8:	8082                	ret

200113fa <riscv::register::mstatus::set_mie>:
        pub unsafe fn $set_field() {
200113fa:	1141                	add	sp,sp,-16
200113fc:	c606                	sw	ra,12(sp)
200113fe:	4521                	li	a0,8
            _set($e);
20011400:	00000097          	auipc	ra,0x0
20011404:	fa0080e7          	jalr	-96(ra) # 200113a0 <riscv::register::mstatus::_set>
        }
20011408:	40b2                	lw	ra,12(sp)
2001140a:	0141                	add	sp,sp,16
2001140c:	8082                	ret

2001140e <riscv::register::mstatus::clear_mie>:
        pub unsafe fn $clear_field() {
2001140e:	1141                	add	sp,sp,-16
20011410:	c606                	sw	ra,12(sp)
20011412:	4521                	li	a0,8
            _clear($e);
20011414:	00000097          	auipc	ra,0x0
20011418:	fbc080e7          	jalr	-68(ra) # 200113d0 <riscv::register::mstatus::_clear>
        }
2001141c:	40b2                	lw	ra,12(sp)
2001141e:	0141                	add	sp,sp,16
20011420:	8082                	ret

20011422 <riscv::interrupt::free>:
pub fn free<F, R>(f: F) -> R
20011422:	1101                	add	sp,sp,-32
20011424:	ce06                	sw	ra,28(sp)
20011426:	c62a                	sw	a0,12(sp)
20011428:	ca2a                	sw	a0,20(sp)
    let mstatus = mstatus::read();
2001142a:	00000097          	auipc	ra,0x0
2001142e:	f82080e7          	jalr	-126(ra) # 200113ac <riscv::register::mstatus::read>
20011432:	c82a                	sw	a0,16(sp)
        disable();
20011434:	00000097          	auipc	ra,0x0
20011438:	084080e7          	jalr	132(ra) # 200114b8 <riscv::interrupt::disable>
2001143c:	4532                	lw	a0,12(sp)
    let r = f();
2001143e:	00000097          	auipc	ra,0x0
20011442:	478080e7          	jalr	1144(ra) # 200118b6 <hifive1::stdout::write_fmt::{{closure}}>
20011446:	0808                	add	a0,sp,16
    if mstatus.mie() {
20011448:	00000097          	auipc	ra,0x0
2001144c:	f94080e7          	jalr	-108(ra) # 200113dc <riscv::register::mstatus::Mstatus::mie>
20011450:	e509                	bnez	a0,2001145a <riscv::interrupt::free+0x38>
20011452:	a009                	j	20011454 <riscv::interrupt::free+0x32>
}
20011454:	40f2                	lw	ra,28(sp)
20011456:	6105                	add	sp,sp,32
20011458:	8082                	ret
            enable();
2001145a:	00000097          	auipc	ra,0x0
2001145e:	04c080e7          	jalr	76(ra) # 200114a6 <riscv::interrupt::enable>
20011462:	bfcd                	j	20011454 <riscv::interrupt::free+0x32>

20011464 <riscv::interrupt::free>:
pub fn free<F, R>(f: F) -> R
20011464:	1101                	add	sp,sp,-32
20011466:	ce06                	sw	ra,28(sp)
20011468:	c62a                	sw	a0,12(sp)
2001146a:	ca2a                	sw	a0,20(sp)
    let mstatus = mstatus::read();
2001146c:	00000097          	auipc	ra,0x0
20011470:	f40080e7          	jalr	-192(ra) # 200113ac <riscv::register::mstatus::read>
20011474:	c82a                	sw	a0,16(sp)
        disable();
20011476:	00000097          	auipc	ra,0x0
2001147a:	042080e7          	jalr	66(ra) # 200114b8 <riscv::interrupt::disable>
2001147e:	4532                	lw	a0,12(sp)
    let r = f();
20011480:	00000097          	auipc	ra,0x0
20011484:	3e8080e7          	jalr	1000(ra) # 20011868 <hifive1::stdout::write_str::{{closure}}>
20011488:	0808                	add	a0,sp,16
    if mstatus.mie() {
2001148a:	00000097          	auipc	ra,0x0
2001148e:	f52080e7          	jalr	-174(ra) # 200113dc <riscv::register::mstatus::Mstatus::mie>
20011492:	e509                	bnez	a0,2001149c <riscv::interrupt::free+0x38>
20011494:	a009                	j	20011496 <riscv::interrupt::free+0x32>
}
20011496:	40f2                	lw	ra,28(sp)
20011498:	6105                	add	sp,sp,32
2001149a:	8082                	ret
            enable();
2001149c:	00000097          	auipc	ra,0x0
200114a0:	00a080e7          	jalr	10(ra) # 200114a6 <riscv::interrupt::enable>
200114a4:	bfcd                	j	20011496 <riscv::interrupt::free+0x32>

200114a6 <riscv::interrupt::enable>:
pub unsafe fn enable() {
200114a6:	1141                	add	sp,sp,-16
        () => mstatus::set_mie(),
200114a8:	c606                	sw	ra,12(sp)
200114aa:	00000097          	auipc	ra,0x0
200114ae:	f50080e7          	jalr	-176(ra) # 200113fa <riscv::register::mstatus::set_mie>
}
200114b2:	40b2                	lw	ra,12(sp)
200114b4:	0141                	add	sp,sp,16
200114b6:	8082                	ret

200114b8 <riscv::interrupt::disable>:
pub unsafe fn disable() {
200114b8:	1141                	add	sp,sp,-16
        () => mstatus::clear_mie(),
200114ba:	c606                	sw	ra,12(sp)
200114bc:	00000097          	auipc	ra,0x0
200114c0:	f52080e7          	jalr	-174(ra) # 2001140e <riscv::register::mstatus::clear_mie>
}
200114c4:	40b2                	lw	ra,12(sp)
200114c6:	0141                	add	sp,sp,16
200114c8:	8082                	ret

200114ca <<&mut W as core::fmt::Write::write_fmt::SpecWriteFmt>::spec_write_fmt>:
200114ca:	1141                	add	sp,sp,-16
200114cc:	c606                	sw	ra,12(sp)
200114ce:	862e                	mv	a2,a1
200114d0:	c42a                	sw	a0,8(sp)
200114d2:	200165b7          	lui	a1,0x20016
200114d6:	ab058593          	add	a1,a1,-1360 # 20015ab0 <.L__unnamed_2>
200114da:	00003097          	auipc	ra,0x3
200114de:	4e4080e7          	jalr	1252(ra) # 200149be <core::fmt::write>
200114e2:	40b2                	lw	ra,12(sp)
200114e4:	0141                	add	sp,sp,16
200114e6:	8082                	ret

200114e8 <<e310x_hal::serial::Tx<UART> as embedded_hal::serial::Write<u8>>::write>:
}

impl<UART: UartX> serial::Write<u8> for Tx<UART> {
    type Error = Infallible;

    fn write(&mut self, byte: u8) -> nb::Result<(), Infallible> {
200114e8:	7119                	add	sp,sp,-128
200114ea:	de86                	sw	ra,124(sp)
200114ec:	c42a                	sw	a0,8(sp)
200114ee:	00b10723          	sb	a1,14(sp)
200114f2:	ce2a                	sw	a0,28(sp)
200114f4:	d22a                	sw	a0,36(sp)
200114f6:	10013537          	lui	a0,0x10013
200114fa:	d82a                	sw	a0,48(sp)
200114fc:	d2aa                	sw	a0,100(sp)
200114fe:	d4aa                	sw	a0,104(sp)
        unsafe { ptr::read_volatile(self.value.get()) }
20011500:	00000097          	auipc	ra,0x0
20011504:	44e080e7          	jalr	1102(ra) # 2001194e <core::ptr::read_volatile>
        REG::Reader::from(R {
20011508:	d62a                	sw	a0,44(sp)
2001150a:	5532                	lw	a0,44(sp)
2001150c:	dc2a                	sw	a0,56(sp)
    }
}
impl From<crate::R<TXDATA_SPEC>> for R {
    #[inline(always)]
    fn from(reader: crate::R<TXDATA_SPEC>) -> Self {
        R(reader)
2001150e:	da2a                	sw	a0,52(sp)
    }
20011510:	5552                	lw	a0,52(sp)
        let txdata = self.uart.txdata.read();
20011512:	c82a                	sw	a0,16(sp)
20011514:	0808                	add	a0,sp,16
20011516:	d42a                	sw	a0,40(sp)
20011518:	dcaa                	sw	a0,120(sp)
        DATA_R::new((self.bits & 0xff) as u8)
    }
    #[doc = "Bit 31"]
    #[inline(always)]
    pub fn full(&self) -> FULL_R {
        FULL_R::new(((self.bits >> 31) & 1) != 0)
2001151a:	4542                	lw	a0,16(sp)
2001151c:	817d                	srl	a0,a0,0x1f
2001151e:	06a101a3          	sb	a0,99(sp)
        Self {
20011522:	06a10123          	sb	a0,98(sp)
    }
20011526:	06214503          	lbu	a0,98(sp)

        if txdata.full().bit_is_set() {
2001152a:	00a10ba3          	sb	a0,23(sp)
2001152e:	01710513          	add	a0,sp,23
20011532:	ccaa                	sw	a0,88(sp)
20011534:	ceaa                	sw	a0,92(sp)
        self.bits
20011536:	01714503          	lbu	a0,23(sp)
2001153a:	8905                	and	a0,a0,1
2001153c:	e931                	bnez	a0,20011590 <<e310x_hal::serial::Tx<UART> as embedded_hal::serial::Write<u8>>::write+0xa8>
2001153e:	a009                	j	20011540 <<e310x_hal::serial::Tx<UART> as embedded_hal::serial::Write<u8>>::write+0x58>
20011540:	4522                	lw	a0,8(sp)
20011542:	d02a                	sw	a0,32(sp)
20011544:	00e10513          	add	a0,sp,14
            Err(::nb::Error::WouldBlock)
        } else {
            unsafe {
                self.uart.txdata.write(|w| w.data().bits(byte));
20011548:	cc2a                	sw	a0,24(sp)
2001154a:	4562                	lw	a0,24(sp)
2001154c:	100135b7          	lui	a1,0x10013
20011550:	c02e                	sw	a1,0(sp)
20011552:	c4ae                	sw	a1,72(sp)
20011554:	c6aa                	sw	a0,76(sp)
20011556:	4581                	li	a1,0
            f(&mut REG::Writer::from(W {
20011558:	c22e                	sw	a1,4(sp)
2001155a:	c2ae                	sw	a1,68(sp)
2001155c:	4596                	lw	a1,68(sp)
2001155e:	caae                	sw	a1,84(sp)
        W(writer)
20011560:	c8ae                	sw	a1,80(sp)
    }
20011562:	45c6                	lw	a1,80(sp)
20011564:	c0ae                	sw	a1,64(sp)
20011566:	008c                	add	a1,sp,64
20011568:	de2e                	sw	a1,60(sp)
2001156a:	55f2                	lw	a1,60(sp)
2001156c:	00000097          	auipc	ra,0x0
20011570:	036080e7          	jalr	54(ra) # 200115a2 <<e310x_hal::serial::Tx<UART> as embedded_hal::serial::Write<u8>>::write::{{closure}}>
20011574:	85aa                	mv	a1,a0
20011576:	4502                	lw	a0,0(sp)
20011578:	418c                	lw	a1,0(a1)
2001157a:	d6aa                	sw	a0,108(sp)
2001157c:	d8ae                	sw	a1,112(sp)
2001157e:	daaa                	sw	a0,116(sp)
        unsafe { ptr::write_volatile(self.value.get(), value) }
20011580:	00000097          	auipc	ra,0x0
20011584:	3dc080e7          	jalr	988(ra) # 2001195c <core::ptr::write_volatile>
20011588:	4512                	lw	a0,4(sp)
            }
            Ok(())
2001158a:	00a107a3          	sb	a0,15(sp)
        if txdata.full().bit_is_set() {
2001158e:	a029                	j	20011598 <<e310x_hal::serial::Tx<UART> as embedded_hal::serial::Write<u8>>::write+0xb0>
20011590:	4505                	li	a0,1
            Err(::nb::Error::WouldBlock)
20011592:	00a107a3          	sb	a0,15(sp)
        if txdata.full().bit_is_set() {
20011596:	a009                	j	20011598 <<e310x_hal::serial::Tx<UART> as embedded_hal::serial::Write<u8>>::write+0xb0>
        }
    }
20011598:	00f14503          	lbu	a0,15(sp)
2001159c:	50f6                	lw	ra,124(sp)
2001159e:	6109                	add	sp,sp,128
200115a0:	8082                	ret

200115a2 <<e310x_hal::serial::Tx<UART> as embedded_hal::serial::Write<u8>>::write::{{closure}}>:
                self.uart.txdata.write(|w| w.data().bits(byte));
200115a2:	7179                	add	sp,sp,-48
200115a4:	d606                	sw	ra,44(sp)
200115a6:	c22a                	sw	a0,4(sp)
200115a8:	c42e                	sw	a1,8(sp)
200115aa:	c62e                	sw	a1,12(sp)
200115ac:	ca2e                	sw	a1,20(sp)
        Self {
200115ae:	c82e                	sw	a1,16(sp)
    }
200115b0:	45c2                	lw	a1,16(sp)
200115b2:	4512                	lw	a0,4(sp)
200115b4:	00054503          	lbu	a0,0(a0) # 10013000 <.Lline_table_start2+0xffd21e8>
200115b8:	cc2e                	sw	a1,24(sp)
200115ba:	00a10fa3          	sb	a0,31(sp)
                self.w.bits = (self.w.bits & !(Self::MASK << { OF }))
200115be:	45e2                	lw	a1,24(sp)
200115c0:	d02e                	sw	a1,32(sp)
200115c2:	418c                	lw	a1,0(a1)
200115c4:	f005f593          	and	a1,a1,-256
                    | ((value.into() & Self::MASK) << { OF });
200115c8:	c02e                	sw	a1,0(sp)
200115ca:	00000097          	auipc	ra,0x0
200115ce:	3b0080e7          	jalr	944(ra) # 2001197a <<T as core::convert::Into<U>>::into>
200115d2:	85aa                	mv	a1,a0
200115d4:	4502                	lw	a0,0(sp)
200115d6:	0ff5f613          	zext.b	a2,a1
                self.w.bits = (self.w.bits & !(Self::MASK << { OF }))
200115da:	45e2                	lw	a1,24(sp)
200115dc:	d22e                	sw	a1,36(sp)
200115de:	8d51                	or	a0,a0,a2
200115e0:	c188                	sw	a0,0(a1)
                self.w
200115e2:	4562                	lw	a0,24(sp)
200115e4:	d42a                	sw	a0,40(sp)
200115e6:	50b2                	lw	ra,44(sp)
200115e8:	6145                	add	sp,sp,48
200115ea:	8082                	ret

200115ec <e310x_hal::clock::AonClk::use_external>:
    lfaltclk: Option<Hertz>,
}

impl AonClk {
    /// Uses `LFALTCLK` (external low-frequency clock) instead of `LFROSC` (internal ring oscillator) as the clock source.
    pub fn use_external<F: Into<Hertz>>(mut self, freq: F) -> Self {
200115ec:	7179                	add	sp,sp,-48
200115ee:	d606                	sw	ra,44(sp)
200115f0:	c632                	sw	a2,12(sp)
200115f2:	862a                	mv	a2,a0
200115f4:	4532                	lw	a0,12(sp)
200115f6:	ca32                	sw	a2,20(sp)
200115f8:	cc2e                	sw	a1,24(sp)
200115fa:	d22a                	sw	a0,36(sp)
        let hz: Hertz = freq.into();
200115fc:	00000097          	auipc	ra,0x0
20011600:	d9a080e7          	jalr	-614(ra) # 20011396 <<T as core::convert::Into<U>>::into>
20011604:	85aa                	mv	a1,a0
20011606:	c82e                	sw	a1,16(sp)
20011608:	d42a                	sw	a0,40(sp)
2001160a:	0007a5b7          	lui	a1,0x7a
2001160e:	12058593          	add	a1,a1,288 # 7a120 <.Lline_table_start2+0x39308>
        assert!(hz.0 < 500_000);
20011612:	02b56263          	bltu	a0,a1,20011636 <e310x_hal::clock::AonClk::use_external+0x4a>
20011616:	a009                	j	20011618 <e310x_hal::clock::AonClk::use_external+0x2c>
20011618:	20016537          	lui	a0,0x20016
2001161c:	ae850513          	add	a0,a0,-1304 # 20015ae8 <.L__unnamed_2+0x38>
20011620:	200165b7          	lui	a1,0x20016
20011624:	b6858613          	add	a2,a1,-1176 # 20015b68 <.L__unnamed_15>
20011628:	02000593          	li	a1,32
2001162c:	00003097          	auipc	ra,0x3
20011630:	326080e7          	jalr	806(ra) # 20014952 <core::panicking::panic>
20011634:	0000                	unimp

        self.lfaltclk = Some(hz);
20011636:	4542                	lw	a0,16(sp)
20011638:	d02a                	sw	a0,32(sp)
2001163a:	4505                	li	a0,1
2001163c:	ce2a                	sw	a0,28(sp)
2001163e:	45f2                	lw	a1,28(sp)
20011640:	5502                	lw	a0,32(sp)
20011642:	ca2e                	sw	a1,20(sp)
20011644:	cc2a                	sw	a0,24(sp)
        self
20011646:	4552                	lw	a0,20(sp)
20011648:	45e2                	lw	a1,24(sp)
    }
2001164a:	50b2                	lw	ra,44(sp)
2001164c:	6145                	add	sp,sp,48
2001164e:	8082                	ret

20011650 <e310x_hal::clock::CoreClk::use_external>:
    pub fn use_external<F: Into<Hertz>>(mut self, freq: F) -> Self {
20011650:	7179                	add	sp,sp,-48
20011652:	d606                	sw	ra,44(sp)
20011654:	c832                	sw	a2,16(sp)
20011656:	c62e                	sw	a1,12(sp)
20011658:	85aa                	mv	a1,a0
2001165a:	4542                	lw	a0,16(sp)
2001165c:	ca2e                	sw	a1,20(sp)
2001165e:	d22a                	sw	a0,36(sp)
        let hz: Hertz = freq.into();
20011660:	00000097          	auipc	ra,0x0
20011664:	d36080e7          	jalr	-714(ra) # 20011396 <<T as core::convert::Into<U>>::into>
20011668:	85aa                	mv	a1,a0
2001166a:	cc2e                	sw	a1,24(sp)
2001166c:	d42a                	sw	a0,40(sp)
2001166e:	013135b7          	lui	a1,0x1313
20011672:	d0058593          	add	a1,a1,-768 # 1312d00 <.Lline_table_start2+0x12d1ee8>
        assert!(hz.0 < 20_000_000);
20011676:	02b56263          	bltu	a0,a1,2001169a <e310x_hal::clock::CoreClk::use_external+0x4a>
2001167a:	a009                	j	2001167c <e310x_hal::clock::CoreClk::use_external+0x2c>
2001167c:	20016537          	lui	a0,0x20016
20011680:	b7850513          	add	a0,a0,-1160 # 20015b78 <.L__unnamed_16>
20011684:	200165b7          	lui	a1,0x20016
20011688:	b9c58613          	add	a2,a1,-1124 # 20015b9c <.L__unnamed_17>
2001168c:	02300593          	li	a1,35
20011690:	00003097          	auipc	ra,0x3
20011694:	2c2080e7          	jalr	706(ra) # 20014952 <core::panicking::panic>
20011698:	0000                	unimp
        self.hfxosc = Some(hz);
2001169a:	45d2                	lw	a1,20(sp)
2001169c:	4532                	lw	a0,12(sp)
2001169e:	4662                	lw	a2,24(sp)
200116a0:	d032                	sw	a2,32(sp)
200116a2:	4605                	li	a2,1
200116a4:	ce32                	sw	a2,28(sp)
200116a6:	46f2                	lw	a3,28(sp)
200116a8:	5602                	lw	a2,32(sp)
200116aa:	c114                	sw	a3,0(a0)
200116ac:	c150                	sw	a2,4(a0)
        self
200116ae:	4510                	lw	a2,8(a0)
200116b0:	c590                	sw	a2,8(a1)
200116b2:	4150                	lw	a2,4(a0)
200116b4:	c1d0                	sw	a2,4(a1)
200116b6:	4108                	lw	a0,0(a0)
200116b8:	c188                	sw	a0,0(a1)
    }
200116ba:	50b2                	lw	ra,44(sp)
200116bc:	6145                	add	sp,sp,48
200116be:	8082                	ret

200116c0 <e310x_hal::clock::CoreClk::coreclk>:
    pub fn coreclk<F: Into<Hertz>>(mut self, freq: F) -> Self {
200116c0:	1101                	add	sp,sp,-32
200116c2:	ce06                	sw	ra,28(sp)
200116c4:	c632                	sw	a2,12(sp)
200116c6:	ca2e                	sw	a1,20(sp)
200116c8:	85aa                	mv	a1,a0
200116ca:	4532                	lw	a0,12(sp)
200116cc:	c82e                	sw	a1,16(sp)
200116ce:	cc2a                	sw	a0,24(sp)
        self.coreclk = freq.into();
200116d0:	00000097          	auipc	ra,0x0
200116d4:	cc6080e7          	jalr	-826(ra) # 20011396 <<T as core::convert::Into<U>>::into>
200116d8:	45c2                	lw	a1,16(sp)
200116da:	862a                	mv	a2,a0
200116dc:	4552                	lw	a0,20(sp)
200116de:	c510                	sw	a2,8(a0)
        self
200116e0:	4510                	lw	a2,8(a0)
200116e2:	c590                	sw	a2,8(a1)
200116e4:	4150                	lw	a2,4(a0)
200116e6:	c1d0                	sw	a2,4(a1)
200116e8:	4108                	lw	a0,0(a0)
200116ea:	c188                	sw	a0,0(a1)
    }
200116ec:	40f2                	lw	ra,28(sp)
200116ee:	6105                	add	sp,sp,32
200116f0:	8082                	ret

200116f2 <hifive1::clock::configure>:
))]
/// Configures clock generation system.
///
/// For HiFive1 and HiFive1 Rev B boards external oscillators are enabled for
/// both high-frequency and low-frequency clocks.
pub fn configure(prci: PRCI, aonclk: AONCLK, target_coreclk: Hertz) -> Clocks {
200116f2:	7159                	add	sp,sp,-112
200116f4:	d686                	sw	ra,108(sp)
200116f6:	c22a                	sw	a0,4(sp)
200116f8:	ccaa                	sw	a0,88(sp)
200116fa:	0808                	add	a0,sp,16
    let coreclk = prci.constrain();
200116fc:	00000097          	auipc	ra,0x0
20011700:	2b4080e7          	jalr	692(ra) # 200119b0 <<e310x::PRCI as e310x_hal::clock::PrciExt>::constrain>
    let coreclk = coreclk
20011704:	4562                	lw	a0,24(sp)
20011706:	de2a                	sw	a0,60(sp)
20011708:	4552                	lw	a0,20(sp)
2001170a:	dc2a                	sw	a0,56(sp)
2001170c:	4542                	lw	a0,16(sp)
2001170e:	da2a                	sw	a0,52(sp)
20011710:	00f42537          	lui	a0,0xf42
20011714:	40050513          	add	a0,a0,1024 # f42400 <.Lline_table_start2+0xf015e8>
        .use_external(Hertz(16_000_000))
20011718:	c0aa                	sw	a0,64(sp)
    let coreclk = coreclk
2001171a:	4606                	lw	a2,64(sp)
2001171c:	1028                	add	a0,sp,40
2001171e:	c02a                	sw	a0,0(sp)
20011720:	184c                	add	a1,sp,52
20011722:	00000097          	auipc	ra,0x0
20011726:	f2e080e7          	jalr	-210(ra) # 20011650 <e310x_hal::clock::CoreClk::use_external>
2001172a:	4582                	lw	a1,0(sp)
2001172c:	4612                	lw	a2,4(sp)
2001172e:	0868                	add	a0,sp,28
20011730:	00000097          	auipc	ra,0x0
20011734:	f90080e7          	jalr	-112(ra) # 200116c0 <e310x_hal::clock::CoreClk::coreclk>
        .coreclk(target_coreclk);

    let aonclk = aonclk.constrain();
20011738:	00000097          	auipc	ra,0x0
2001173c:	29a080e7          	jalr	666(ra) # 200119d2 <<e310x::AONCLK as e310x_hal::clock::AonExt>::constrain>
20011740:	ceaa                	sw	a0,92(sp)
20011742:	d0ae                	sw	a1,96(sp)
20011744:	6621                	lui	a2,0x8
    let aonclk = aonclk.use_external(Hertz(32_768));
20011746:	c2b2                	sw	a2,68(sp)
20011748:	4616                	lw	a2,68(sp)
2001174a:	00000097          	auipc	ra,0x0
2001174e:	ea2080e7          	jalr	-350(ra) # 200115ec <e310x_hal::clock::AonClk::use_external>
20011752:	c42a                	sw	a0,8(sp)
20011754:	862e                	mv	a2,a1
20011756:	45a2                	lw	a1,8(sp)
20011758:	d2ae                	sw	a1,100(sp)
2001175a:	d4b2                	sw	a2,104(sp)

    Clocks::freeze(coreclk, aonclk)
2001175c:	5512                	lw	a0,36(sp)
2001175e:	c8aa                	sw	a0,80(sp)
20011760:	5502                	lw	a0,32(sp)
20011762:	c6aa                	sw	a0,76(sp)
20011764:	4572                	lw	a0,28(sp)
20011766:	c4aa                	sw	a0,72(sp)
20011768:	00a8                	add	a0,sp,72
2001176a:	00002097          	auipc	ra,0x2
2001176e:	848080e7          	jalr	-1976(ra) # 20012fb2 <e310x_hal::clock::Clocks::freeze>
}
20011772:	50b6                	lw	ra,108(sp)
20011774:	6165                	add	sp,sp,112
20011776:	8082                	ret

20011778 <<hifive1::stdout::SerialWrapper as core::fmt::Write>::write_str>:
    fn write_str(&mut self, s: &str) -> fmt::Result {
20011778:	715d                	add	sp,sp,-80
2001177a:	c686                	sw	ra,76(sp)
2001177c:	c832                	sw	a2,16(sp)
2001177e:	862e                	mv	a2,a1
20011780:	45c2                	lw	a1,16(sp)
20011782:	ca32                	sw	a2,20(sp)
20011784:	862a                	mv	a2,a0
            let res = block!(self.0.write(*byte));
20011786:	4552                	lw	a0,20(sp)
20011788:	cc32                	sw	a2,24(sp)
2001178a:	da32                	sw	a2,52(sp)
2001178c:	dc2a                	sw	a0,56(sp)
2001178e:	de2e                	sw	a1,60(sp)
20011790:	c2aa                	sw	a0,68(sp)
20011792:	c4ae                	sw	a1,72(sp)
        for byte in s.as_bytes() {
20011794:	00000097          	auipc	ra,0x0
20011798:	b98080e7          	jalr	-1128(ra) # 2001132c <core::slice::iter::<impl core::iter::traits::collect::IntoIterator for &[T]>::into_iter>
2001179c:	d22a                	sw	a0,36(sp)
2001179e:	d42e                	sw	a1,40(sp)
200117a0:	a009                	j	200117a2 <<hifive1::stdout::SerialWrapper as core::fmt::Write>::write_str+0x2a>
200117a2:	1048                	add	a0,sp,36
200117a4:	00002097          	auipc	ra,0x2
200117a8:	404080e7          	jalr	1028(ra) # 20013ba8 <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next>
200117ac:	d62a                	sw	a0,44(sp)
200117ae:	5532                	lw	a0,44(sp)
200117b0:	e511                	bnez	a0,200117bc <<hifive1::stdout::SerialWrapper as core::fmt::Write>::write_str+0x44>
200117b2:	a009                	j	200117b4 <<hifive1::stdout::SerialWrapper as core::fmt::Write>::write_str+0x3c>
200117b4:	4501                	li	a0,0
        Ok(())
200117b6:	02a101a3          	sb	a0,35(sp)
    }
200117ba:	a811                	j	200117ce <<hifive1::stdout::SerialWrapper as core::fmt::Write>::write_str+0x56>
        for byte in s.as_bytes() {
200117bc:	5532                	lw	a0,44(sp)
200117be:	c62a                	sw	a0,12(sp)
200117c0:	c0aa                	sw	a0,64(sp)
            if *byte == b'\n' {
200117c2:	00054503          	lbu	a0,0(a0)
200117c6:	45a9                	li	a1,10
200117c8:	00b50863          	beq	a0,a1,200117d8 <<hifive1::stdout::SerialWrapper as core::fmt::Write>::write_str+0x60>
200117cc:	a01d                	j	200117f2 <<hifive1::stdout::SerialWrapper as core::fmt::Write>::write_str+0x7a>
    }
200117ce:	02314503          	lbu	a0,35(sp)
200117d2:	40b6                	lw	ra,76(sp)
200117d4:	6161                	add	sp,sp,80
200117d6:	8082                	ret
                let res = block!(self.0.write(b'\r'));
200117d8:	4562                	lw	a0,24(sp)
200117da:	45b5                	li	a1,13
200117dc:	00000097          	auipc	ra,0x0
200117e0:	d0c080e7          	jalr	-756(ra) # 200114e8 <<e310x_hal::serial::Tx<UART> as embedded_hal::serial::Write<u8>>::write>
200117e4:	02a108a3          	sb	a0,49(sp)
200117e8:	03114503          	lbu	a0,49(sp)
200117ec:	8905                	and	a0,a0,1
200117ee:	c10d                	beqz	a0,20011810 <<hifive1::stdout::SerialWrapper as core::fmt::Write>::write_str+0x98>
200117f0:	a03d                	j	2001181e <<hifive1::stdout::SerialWrapper as core::fmt::Write>::write_str+0xa6>
            let res = block!(self.0.write(*byte));
200117f2:	4562                	lw	a0,24(sp)
200117f4:	45b2                	lw	a1,12(sp)
200117f6:	0005c583          	lbu	a1,0(a1)
200117fa:	00000097          	auipc	ra,0x0
200117fe:	cee080e7          	jalr	-786(ra) # 200114e8 <<e310x_hal::serial::Tx<UART> as embedded_hal::serial::Write<u8>>::write>
20011802:	02a109a3          	sb	a0,51(sp)
20011806:	03314503          	lbu	a0,51(sp)
2001180a:	8905                	and	a0,a0,1
2001180c:	c10d                	beqz	a0,2001182e <<hifive1::stdout::SerialWrapper as core::fmt::Write>::write_str+0xb6>
2001180e:	a805                	j	2001183e <<hifive1::stdout::SerialWrapper as core::fmt::Write>::write_str+0xc6>
20011810:	1808                	add	a0,sp,48
                if res.is_err() {
20011812:	00000097          	auipc	ra,0x0
20011816:	b7a080e7          	jalr	-1158(ra) # 2001138c <core::result::Result<T,E>::is_err>
2001181a:	e509                	bnez	a0,20011824 <<hifive1::stdout::SerialWrapper as core::fmt::Write>::write_str+0xac>
2001181c:	bfd9                	j	200117f2 <<hifive1::stdout::SerialWrapper as core::fmt::Write>::write_str+0x7a>
2001181e:	4505                	li	a0,1
                let res = block!(self.0.write(b'\r'));
20011820:	fd45                	bnez	a0,200117d8 <<hifive1::stdout::SerialWrapper as core::fmt::Write>::write_str+0x60>
20011822:	a029                	j	2001182c <<hifive1::stdout::SerialWrapper as core::fmt::Write>::write_str+0xb4>
20011824:	4505                	li	a0,1
                    return Err(::core::fmt::Error);
20011826:	02a101a3          	sb	a0,35(sp)
//! Board support crate for HiFive1 and LoFive boards
2001182a:	b755                	j	200117ce <<hifive1::stdout::SerialWrapper as core::fmt::Write>::write_str+0x56>
        for byte in s.as_bytes() {
2001182c:	0000                	unimp
2001182e:	03210513          	add	a0,sp,50
            if res.is_err() {
20011832:	00000097          	auipc	ra,0x0
20011836:	b5a080e7          	jalr	-1190(ra) # 2001138c <core::result::Result<T,E>::is_err>
2001183a:	e509                	bnez	a0,20011844 <<hifive1::stdout::SerialWrapper as core::fmt::Write>::write_str+0xcc>
2001183c:	b79d                	j	200117a2 <<hifive1::stdout::SerialWrapper as core::fmt::Write>::write_str+0x2a>
2001183e:	4505                	li	a0,1
            let res = block!(self.0.write(*byte));
20011840:	f94d                	bnez	a0,200117f2 <<hifive1::stdout::SerialWrapper as core::fmt::Write>::write_str+0x7a>
20011842:	b7ed                	j	2001182c <<hifive1::stdout::SerialWrapper as core::fmt::Write>::write_str+0xb4>
20011844:	4505                	li	a0,1
                return Err(::core::fmt::Error);
20011846:	02a101a3          	sb	a0,35(sp)
2001184a:	b751                	j	200117ce <<hifive1::stdout::SerialWrapper as core::fmt::Write>::write_str+0x56>

2001184c <hifive1::stdout::write_str>:

/// Writes string to stdout
pub fn write_str(s: &str) {
2001184c:	1141                	add	sp,sp,-16
2001184e:	c606                	sw	ra,12(sp)
20011850:	c02a                	sw	a0,0(sp)
20011852:	c22e                	sw	a1,4(sp)
20011854:	850a                	mv	a0,sp
    interrupt::free(|| unsafe {
20011856:	c42a                	sw	a0,8(sp)
20011858:	4522                	lw	a0,8(sp)
2001185a:	00000097          	auipc	ra,0x0
2001185e:	c0a080e7          	jalr	-1014(ra) # 20011464 <riscv::interrupt::free>
        if let Some(stdout) = STDOUT.as_mut() {
            let _ = stdout.write_str(s);
        }
    })
}
20011862:	40b2                	lw	ra,12(sp)
20011864:	0141                	add	sp,sp,16
20011866:	8082                	ret

20011868 <hifive1::stdout::write_str::{{closure}}>:
    interrupt::free(|| unsafe {
20011868:	1141                	add	sp,sp,-16
2001186a:	c606                	sw	ra,12(sp)
2001186c:	c02a                	sw	a0,0(sp)
        if let Some(stdout) = STDOUT.as_mut() {
2001186e:	80001537          	lui	a0,0x80001
20011872:	a8850513          	add	a0,a0,-1400 # 80000a88 <hifive1::stdout::STDOUT>
20011876:	00000097          	auipc	ra,0x0
2001187a:	af2080e7          	jalr	-1294(ra) # 20011368 <core::option::Option<T>::as_mut>
2001187e:	c22a                	sw	a0,4(sp)
20011880:	4512                	lw	a0,4(sp)
20011882:	cd01                	beqz	a0,2001189a <hifive1::stdout::write_str::{{closure}}+0x32>
20011884:	a009                	j	20011886 <hifive1::stdout::write_str::{{closure}}+0x1e>
20011886:	4512                	lw	a0,4(sp)
20011888:	c42a                	sw	a0,8(sp)
            let _ = stdout.write_str(s);
2001188a:	4602                	lw	a2,0(sp)
2001188c:	420c                	lw	a1,0(a2)
2001188e:	4250                	lw	a2,4(a2)
20011890:	00000097          	auipc	ra,0x0
20011894:	ee8080e7          	jalr	-280(ra) # 20011778 <<hifive1::stdout::SerialWrapper as core::fmt::Write>::write_str>
20011898:	a009                	j	2001189a <hifive1::stdout::write_str::{{closure}}+0x32>
    })
2001189a:	40b2                	lw	ra,12(sp)
2001189c:	0141                	add	sp,sp,16
2001189e:	8082                	ret

200118a0 <hifive1::stdout::write_fmt>:

/// Writes formatted string to stdout
pub fn write_fmt(args: fmt::Arguments) {
200118a0:	1141                	add	sp,sp,-16
    interrupt::free(|| unsafe {
200118a2:	c606                	sw	ra,12(sp)
200118a4:	c42a                	sw	a0,8(sp)
200118a6:	4522                	lw	a0,8(sp)
200118a8:	00000097          	auipc	ra,0x0
200118ac:	b7a080e7          	jalr	-1158(ra) # 20011422 <riscv::interrupt::free>
        if let Some(stdout) = STDOUT.as_mut() {
            let _ = stdout.write_fmt(args);
        }
    })
}
200118b0:	40b2                	lw	ra,12(sp)
200118b2:	0141                	add	sp,sp,16
200118b4:	8082                	ret

200118b6 <hifive1::stdout::write_fmt::{{closure}}>:
    interrupt::free(|| unsafe {
200118b6:	7179                	add	sp,sp,-48
200118b8:	d606                	sw	ra,44(sp)
200118ba:	c42a                	sw	a0,8(sp)
        if let Some(stdout) = STDOUT.as_mut() {
200118bc:	80001537          	lui	a0,0x80001
200118c0:	a8850513          	add	a0,a0,-1400 # 80000a88 <hifive1::stdout::STDOUT>
200118c4:	00000097          	auipc	ra,0x0
200118c8:	aa4080e7          	jalr	-1372(ra) # 20011368 <core::option::Option<T>::as_mut>
200118cc:	c62a                	sw	a0,12(sp)
200118ce:	4532                	lw	a0,12(sp)
200118d0:	c51d                	beqz	a0,200118fe <hifive1::stdout::write_fmt::{{closure}}+0x48>
200118d2:	a009                	j	200118d4 <hifive1::stdout::write_fmt::{{closure}}+0x1e>
200118d4:	4532                	lw	a0,12(sp)
200118d6:	d42a                	sw	a0,40(sp)
            let _ = stdout.write_fmt(args);
200118d8:	45a2                	lw	a1,8(sp)
200118da:	49d0                	lw	a2,20(a1)
200118dc:	d232                	sw	a2,36(sp)
200118de:	4990                	lw	a2,16(a1)
200118e0:	d032                	sw	a2,32(sp)
200118e2:	45d0                	lw	a2,12(a1)
200118e4:	ce32                	sw	a2,28(sp)
200118e6:	4590                	lw	a2,8(a1)
200118e8:	cc32                	sw	a2,24(sp)
200118ea:	41d0                	lw	a2,4(a1)
200118ec:	ca32                	sw	a2,20(sp)
200118ee:	418c                	lw	a1,0(a1)
200118f0:	c82e                	sw	a1,16(sp)
200118f2:	080c                	add	a1,sp,16
200118f4:	fffff097          	auipc	ra,0xfffff
200118f8:	7c2080e7          	jalr	1986(ra) # 200110b6 <core::fmt::Write::write_fmt>
200118fc:	a009                	j	200118fe <hifive1::stdout::write_fmt::{{closure}}+0x48>
    })
200118fe:	50b2                	lw	ra,44(sp)
20011900:	6145                	add	sp,sp,48
20011902:	8082                	ret

20011904 <core::num::<impl i32>::abs>:
20011904:	1141                	add	sp,sp,-16
20011906:	c22a                	sw	a0,4(sp)
20011908:	c62a                	sw	a0,12(sp)
2001190a:	00054663          	bltz	a0,20011916 <core::num::<impl i32>::abs+0x12>
2001190e:	a009                	j	20011910 <core::num::<impl i32>::abs+0xc>
20011910:	4512                	lw	a0,4(sp)
20011912:	c42a                	sw	a0,8(sp)
20011914:	a039                	j	20011922 <core::num::<impl i32>::abs+0x1e>
20011916:	4512                	lw	a0,4(sp)
20011918:	800005b7          	lui	a1,0x80000
2001191c:	00b50b63          	beq	a0,a1,20011932 <core::num::<impl i32>::abs+0x2e>
20011920:	a021                	j	20011928 <core::num::<impl i32>::abs+0x24>
20011922:	4522                	lw	a0,8(sp)
20011924:	0141                	add	sp,sp,16
20011926:	8082                	ret
20011928:	4592                	lw	a1,4(sp)
2001192a:	4501                	li	a0,0
2001192c:	8d0d                	sub	a0,a0,a1
2001192e:	c42a                	sw	a0,8(sp)
20011930:	bfcd                	j	20011922 <core::num::<impl i32>::abs+0x1e>
20011932:	20016537          	lui	a0,0x20016
20011936:	c3050513          	add	a0,a0,-976 # 20015c30 <str.1>
2001193a:	200165b7          	lui	a1,0x20016
2001193e:	c2058613          	add	a2,a1,-992 # 20015c20 <.L__unnamed_4>
20011942:	45fd                	li	a1,31
20011944:	00003097          	auipc	ra,0x3
20011948:	00e080e7          	jalr	14(ra) # 20014952 <core::panicking::panic>
	...

2001194e <core::ptr::read_volatile>:
2001194e:	1141                	add	sp,sp,-16
20011950:	c42a                	sw	a0,8(sp)
20011952:	4108                	lw	a0,0(a0)
20011954:	c62a                	sw	a0,12(sp)
20011956:	4532                	lw	a0,12(sp)
20011958:	0141                	add	sp,sp,16
2001195a:	8082                	ret

2001195c <core::ptr::write_volatile>:
2001195c:	1141                	add	sp,sp,-16
2001195e:	c42a                	sw	a0,8(sp)
20011960:	c62e                	sw	a1,12(sp)
20011962:	c10c                	sw	a1,0(a0)
20011964:	0141                	add	sp,sp,16
20011966:	8082                	ret

20011968 <<T as core::convert::Into<U>>::into>:
20011968:	1141                	add	sp,sp,-16
2001196a:	c606                	sw	ra,12(sp)
2001196c:	00001097          	auipc	ra,0x1
20011970:	73e080e7          	jalr	1854(ra) # 200130aa <<e310x_hal::core::clint::Clint as core::convert::From<e310x::CLINT>>::from>
20011974:	40b2                	lw	ra,12(sp)
20011976:	0141                	add	sp,sp,16
20011978:	8082                	ret

2001197a <<T as core::convert::Into<U>>::into>:
2001197a:	1141                	add	sp,sp,-16
2001197c:	00a10723          	sb	a0,14(sp)
20011980:	00a107a3          	sb	a0,15(sp)
20011984:	0ff57513          	zext.b	a0,a0
20011988:	0141                	add	sp,sp,16
2001198a:	8082                	ret

2001198c <<T as core::convert::Into<U>>::into>:
2001198c:	1141                	add	sp,sp,-16
2001198e:	c606                	sw	ra,12(sp)
20011990:	00002097          	auipc	ra,0x2
20011994:	948080e7          	jalr	-1720(ra) # 200132d8 <<e310x_hal::device::DeviceGpioPins as core::convert::From<e310x::GPIO0>>::from>
20011998:	40b2                	lw	ra,12(sp)
2001199a:	0141                	add	sp,sp,16
2001199c:	8082                	ret

2001199e <<T as core::convert::Into<U>>::into>:
2001199e:	1141                	add	sp,sp,-16
200119a0:	c606                	sw	ra,12(sp)
200119a2:	00001097          	auipc	ra,0x1
200119a6:	710080e7          	jalr	1808(ra) # 200130b2 <<e310x_hal::core::plic::Plic as core::convert::From<e310x::PLIC>>::from>
200119aa:	40b2                	lw	ra,12(sp)
200119ac:	0141                	add	sp,sp,16
200119ae:	8082                	ret

200119b0 <<e310x::PRCI as e310x_hal::clock::PrciExt>::constrain>:
    fn constrain(self) -> CoreClk {
200119b0:	1101                	add	sp,sp,-32
200119b2:	85aa                	mv	a1,a0
200119b4:	4501                	li	a0,0
            hfxosc: None,
200119b6:	c82a                	sw	a0,16(sp)
200119b8:	00d29537          	lui	a0,0xd29
200119bc:	24050513          	add	a0,a0,576 # d29240 <.Lline_table_start2+0xce8428>
            coreclk: Hertz(13_800_000), // Default after reset
200119c0:	cc2a                	sw	a0,24(sp)
        CoreClk {
200119c2:	4642                	lw	a2,16(sp)
200119c4:	4552                	lw	a0,20(sp)
200119c6:	c190                	sw	a2,0(a1)
200119c8:	c1c8                	sw	a0,4(a1)
200119ca:	4562                	lw	a0,24(sp)
200119cc:	c588                	sw	a0,8(a1)
    }
200119ce:	6105                	add	sp,sp,32
200119d0:	8082                	ret

200119d2 <<e310x::AONCLK as e310x_hal::clock::AonExt>::constrain>:
    fn constrain(self) -> AonClk {
200119d2:	1101                	add	sp,sp,-32
200119d4:	4501                	li	a0,0
        AonClk { lfaltclk: None }
200119d6:	ca2a                	sw	a0,20(sp)
200119d8:	45d2                	lw	a1,20(sp)
200119da:	4562                	lw	a0,24(sp)
200119dc:	c62e                	sw	a1,12(sp)
200119de:	c82a                	sw	a0,16(sp)
    }
200119e0:	4532                	lw	a0,12(sp)
200119e2:	45c2                	lw	a1,16(sp)
200119e4:	6105                	add	sp,sp,32
200119e6:	8082                	ret

200119e8 <e310x_hal::clock::CoreClk::freeze>:
    pub(crate) fn freeze(self) -> Hertz {
200119e8:	7119                	add	sp,sp,-128
200119ea:	de86                	sw	ra,124(sp)
200119ec:	c62a                	sw	a0,12(sp)
200119ee:	100085b7          	lui	a1,0x10008
        let prci = unsafe { &*PRCI::ptr() };
200119f2:	c02e                	sw	a1,0(sp)
200119f4:	d62e                	sw	a1,44(sp)
        let hfrosc_freq = self.configure_hfrosc();
200119f6:	00000097          	auipc	ra,0x0
200119fa:	74e080e7          	jalr	1870(ra) # 20012144 <e310x_hal::clock::CoreClk::configure_hfrosc>
200119fe:	85aa                	mv	a1,a0
20011a00:	4502                	lw	a0,0(sp)
20011a02:	862e                	mv	a2,a1
20011a04:	c232                	sw	a2,4(sp)
20011a06:	d82e                	sw	a1,48(sp)
20011a08:	0521                	add	a0,a0,8
20011a0a:	c42a                	sw	a0,8(sp)
20011a0c:	c8aa                	sw	a0,80(sp)
20011a0e:	d4aa                	sw	a0,104(sp)
20011a10:	d6aa                	sw	a0,108(sp)
        unsafe { ptr::read_volatile(self.value.get()) }
20011a12:	00000097          	auipc	ra,0x0
20011a16:	f3c080e7          	jalr	-196(ra) # 2001194e <core::ptr::read_volatile>
        let bits = self.register.get();
20011a1a:	caaa                	sw	a0,84(sp)
                &REG::Reader::from(R {
20011a1c:	c2aa                	sw	a0,68(sp)
20011a1e:	4596                	lw	a1,68(sp)
20011a20:	ceae                	sw	a1,92(sp)
    }
}
impl From<crate::R<PLLCFG_SPEC>> for R {
    #[inline(always)]
    fn from(reader: crate::R<PLLCFG_SPEC>) -> Self {
        R(reader)
20011a22:	ccae                	sw	a1,88(sp)
    }
20011a24:	45e6                	lw	a1,88(sp)
20011a26:	c0ae                	sw	a1,64(sp)
                &mut REG::Writer::from(W {
20011a28:	c6aa                	sw	a0,76(sp)
20011a2a:	4536                	lw	a0,76(sp)
20011a2c:	d2aa                	sw	a0,100(sp)
    }
}
impl From<crate::W<PLLCFG_SPEC>> for W {
    #[inline(always)]
    fn from(writer: crate::W<PLLCFG_SPEC>) -> Self {
        W(writer)
20011a2e:	d0aa                	sw	a0,96(sp)
    }
20011a30:	5506                	lw	a0,96(sp)
20011a32:	c4aa                	sw	a0,72(sp)
20011a34:	0088                	add	a0,sp,64
            f(
20011a36:	dc2a                	sw	a0,56(sp)
20011a38:	00a8                	add	a0,sp,72
20011a3a:	de2a                	sw	a0,60(sp)
20011a3c:	5562                	lw	a0,56(sp)
20011a3e:	55f2                	lw	a1,60(sp)
20011a40:	00000097          	auipc	ra,0x0
20011a44:	06a080e7          	jalr	106(ra) # 20011aaa <e310x_hal::clock::CoreClk::freeze::{{closure}}>
20011a48:	85aa                	mv	a1,a0
20011a4a:	4522                	lw	a0,8(sp)
20011a4c:	418c                	lw	a1,0(a1)
20011a4e:	d8aa                	sw	a0,112(sp)
20011a50:	daae                	sw	a1,116(sp)
20011a52:	dcaa                	sw	a0,120(sp)
        unsafe { ptr::write_volatile(self.value.get(), value) }
20011a54:	00000097          	auipc	ra,0x0
20011a58:	f08080e7          	jalr	-248(ra) # 2001195c <core::ptr::write_volatile>
20011a5c:	4532                	lw	a0,12(sp)
        if let Some(freq) = self.hfxosc {
20011a5e:	4108                	lw	a0,0(a0)
20011a60:	c115                	beqz	a0,20011a84 <e310x_hal::clock::CoreClk::freeze+0x9c>
20011a62:	a009                	j	20011a64 <e310x_hal::clock::CoreClk::freeze+0x7c>
20011a64:	4532                	lw	a0,12(sp)
20011a66:	414c                	lw	a1,4(a0)
20011a68:	da2e                	sw	a1,52(sp)
            self.configure_with_external(freq)
20011a6a:	4510                	lw	a2,8(a0)
20011a6c:	ce32                	sw	a2,28(sp)
20011a6e:	4150                	lw	a2,4(a0)
20011a70:	cc32                	sw	a2,24(sp)
20011a72:	4108                	lw	a0,0(a0)
20011a74:	ca2a                	sw	a0,20(sp)
20011a76:	0848                	add	a0,sp,20
20011a78:	00000097          	auipc	ra,0x0
20011a7c:	08e080e7          	jalr	142(ra) # 20011b06 <e310x_hal::clock::CoreClk::configure_with_external>
20011a80:	c82a                	sw	a0,16(sp)
20011a82:	a005                	j	20011aa2 <e310x_hal::clock::CoreClk::freeze+0xba>
            self.configure_with_internal(hfrosc_freq)
20011a84:	4592                	lw	a1,4(sp)
20011a86:	4532                	lw	a0,12(sp)
20011a88:	4510                	lw	a2,8(a0)
20011a8a:	d432                	sw	a2,40(sp)
20011a8c:	4150                	lw	a2,4(a0)
20011a8e:	d232                	sw	a2,36(sp)
20011a90:	4108                	lw	a0,0(a0)
20011a92:	d02a                	sw	a0,32(sp)
20011a94:	1008                	add	a0,sp,32
20011a96:	00000097          	auipc	ra,0x0
20011a9a:	432080e7          	jalr	1074(ra) # 20011ec8 <e310x_hal::clock::CoreClk::configure_with_internal>
20011a9e:	c82a                	sw	a0,16(sp)
20011aa0:	a009                	j	20011aa2 <e310x_hal::clock::CoreClk::freeze+0xba>
    }
20011aa2:	4542                	lw	a0,16(sp)
20011aa4:	50f6                	lw	ra,124(sp)
20011aa6:	6109                	add	sp,sp,128
20011aa8:	8082                	ret

20011aaa <e310x_hal::clock::CoreClk::freeze::{{closure}}>:
            .modify(|_, w| w.sel().bit(false).bypass().bit(true));
20011aaa:	715d                	add	sp,sp,-80
20011aac:	c62a                	sw	a0,12(sp)
20011aae:	c82e                	sw	a1,16(sp)
20011ab0:	ca2e                	sw	a1,20(sp)
20011ab2:	d42e                	sw	a1,40(sp)
        Self {
20011ab4:	d22e                	sw	a1,36(sp)
    }
20011ab6:	5512                	lw	a0,36(sp)
20011ab8:	d62a                	sw	a0,44(sp)
20011aba:	4581                	li	a1,0
20011abc:	02b10923          	sb	a1,50(sp)
                self.w.bits = (self.w.bits & !(1 << { OF })) | ((<$U>::from(value) & 1) << { OF });
20011ac0:	5532                	lw	a0,44(sp)
20011ac2:	c0aa                	sw	a0,64(sp)
20011ac4:	4108                	lw	a0,0(a0)
20011ac6:	7641                	lui	a2,0xffff0
20011ac8:	167d                	add	a2,a2,-1 # fffeffff <_sstack+0x7ffebfff>
20011aca:	8d71                	and	a0,a0,a2
20011acc:	02b109a3          	sb	a1,51(sp)
20011ad0:	55b2                	lw	a1,44(sp)
20011ad2:	c4ae                	sw	a1,72(sp)
20011ad4:	c188                	sw	a0,0(a1)
                self.w
20011ad6:	5532                	lw	a0,44(sp)
20011ad8:	cc2a                	sw	a0,24(sp)
20011ada:	d02a                	sw	a0,32(sp)
        Self {
20011adc:	ce2a                	sw	a0,28(sp)
    }
20011ade:	4572                	lw	a0,28(sp)
20011ae0:	da2a                	sw	a0,52(sp)
20011ae2:	4585                	li	a1,1
20011ae4:	02b10d23          	sb	a1,58(sp)
                self.w.bits = (self.w.bits & !(1 << { OF })) | ((<$U>::from(value) & 1) << { OF });
20011ae8:	5552                	lw	a0,52(sp)
20011aea:	de2a                	sw	a0,60(sp)
20011aec:	4108                	lw	a0,0(a0)
20011aee:	02b10da3          	sb	a1,59(sp)
20011af2:	55d2                	lw	a1,52(sp)
20011af4:	c2ae                	sw	a1,68(sp)
20011af6:	00040637          	lui	a2,0x40
20011afa:	8d51                	or	a0,a0,a2
20011afc:	c188                	sw	a0,0(a1)
                self.w
20011afe:	5552                	lw	a0,52(sp)
20011b00:	c6aa                	sw	a0,76(sp)
20011b02:	6161                	add	sp,sp,80
20011b04:	8082                	ret

20011b06 <e310x_hal::clock::CoreClk::configure_with_external>:
    fn configure_with_external(self, source_freq: Hertz) -> Hertz {
20011b06:	7125                	add	sp,sp,-416
20011b08:	18112e23          	sw	ra,412(sp)
20011b0c:	cc2e                	sw	a1,24(sp)
20011b0e:	ce2a                	sw	a0,28(sp)
20011b10:	d82e                	sw	a1,48(sp)
20011b12:	10008537          	lui	a0,0x10008
        let prci = unsafe { &*PRCI::ptr() };
20011b16:	da2a                	sw	a0,52(sp)
20011b18:	0511                	add	a0,a0,4 # 10008004 <.Lline_table_start2+0xffc71ec>
20011b1a:	d02a                	sw	a0,32(sp)
20011b1c:	c52a                	sw	a0,136(sp)
20011b1e:	4501                	li	a0,0
            f(&mut REG::Writer::from(W {
20011b20:	c32a                	sw	a0,132(sp)
20011b22:	451a                	lw	a0,132(sp)
20011b24:	c92a                	sw	a0,144(sp)
    }
}
impl From<crate::W<HFXOSCCFG_SPEC>> for W {
    #[inline(always)]
    fn from(writer: crate::W<HFXOSCCFG_SPEC>) -> Self {
        W(writer)
20011b26:	c72a                	sw	a0,140(sp)
    }
20011b28:	453a                	lw	a0,140(sp)
20011b2a:	c12a                	sw	a0,128(sp)
20011b2c:	0108                	add	a0,sp,128
20011b2e:	deaa                	sw	a0,124(sp)
20011b30:	5576                	lw	a0,124(sp)
20011b32:	00000097          	auipc	ra,0x0
20011b36:	266080e7          	jalr	614(ra) # 20011d98 <e310x_hal::clock::CoreClk::configure_with_external::{{closure}}>
20011b3a:	85aa                	mv	a1,a0
20011b3c:	5502                	lw	a0,32(sp)
20011b3e:	418c                	lw	a1,0(a1)
20011b40:	16a12a23          	sw	a0,372(sp)
20011b44:	16b12c23          	sw	a1,376(sp)
20011b48:	16a12e23          	sw	a0,380(sp)
20011b4c:	00000097          	auipc	ra,0x0
20011b50:	e10080e7          	jalr	-496(ra) # 2001195c <core::ptr::write_volatile>
        prci.hfxosccfg.write(|w| w.enable().bit(true));
20011b54:	a009                	j	20011b56 <e310x_hal::clock::CoreClk::configure_with_external+0x50>
20011b56:	10008537          	lui	a0,0x10008
20011b5a:	0511                	add	a0,a0,4 # 10008004 <.Lline_table_start2+0xffc71ec>
20011b5c:	c0aa                	sw	a0,64(sp)
20011b5e:	14a12423          	sw	a0,328(sp)
20011b62:	14a12623          	sw	a0,332(sp)
        unsafe { ptr::read_volatile(self.value.get()) }
20011b66:	00000097          	auipc	ra,0x0
20011b6a:	de8080e7          	jalr	-536(ra) # 2001194e <core::ptr::read_volatile>
        REG::Reader::from(R {
20011b6e:	de2a                	sw	a0,60(sp)
20011b70:	5572                	lw	a0,60(sp)
20011b72:	c4aa                	sw	a0,72(sp)
        R(reader)
20011b74:	c2aa                	sw	a0,68(sp)
    }
20011b76:	4516                	lw	a0,68(sp)
        while !prci.hfxosccfg.read().ready().bit_is_set() {}
20011b78:	d42a                	sw	a0,40(sp)
20011b7a:	1028                	add	a0,sp,40
20011b7c:	dc2a                	sw	a0,56(sp)
20011b7e:	18a12c23          	sw	a0,408(sp)
        ENABLE_R::new(((self.bits >> 30) & 1) != 0)
    }
    #[doc = "Bit 31"]
    #[inline(always)]
    pub fn ready(&self) -> READY_R {
        READY_R::new(((self.bits >> 31) & 1) != 0)
20011b82:	5522                	lw	a0,40(sp)
20011b84:	817d                	srl	a0,a0,0x1f
20011b86:	12a107a3          	sb	a0,303(sp)
        Self {
20011b8a:	12a10723          	sb	a0,302(sp)
    }
20011b8e:	12e14503          	lbu	a0,302(sp)
20011b92:	02a103a3          	sb	a0,39(sp)
20011b96:	02710513          	add	a0,sp,39
20011b9a:	12a12223          	sw	a0,292(sp)
20011b9e:	12a12423          	sw	a0,296(sp)
        self.bits
20011ba2:	02714503          	lbu	a0,39(sp)
20011ba6:	8905                	and	a0,a0,1
20011ba8:	d55d                	beqz	a0,20011b56 <e310x_hal::clock::CoreClk::configure_with_external+0x50>
20011baa:	a009                	j	20011bac <e310x_hal::clock::CoreClk::configure_with_external+0xa6>
20011bac:	10008537          	lui	a0,0x10008
20011bb0:	0521                	add	a0,a0,8 # 10008008 <.Lline_table_start2+0xffc71f0>
20011bb2:	ca2a                	sw	a0,20(sp)
20011bb4:	cfaa                	sw	a0,220(sp)
20011bb6:	12a12c23          	sw	a0,312(sp)
20011bba:	12a12e23          	sw	a0,316(sp)
20011bbe:	00000097          	auipc	ra,0x0
20011bc2:	d90080e7          	jalr	-624(ra) # 2001194e <core::ptr::read_volatile>
        let bits = self.register.get();
20011bc6:	d1aa                	sw	a0,224(sp)
                &REG::Reader::from(R {
20011bc8:	c9aa                	sw	a0,208(sp)
20011bca:	45ce                	lw	a1,208(sp)
20011bcc:	d5ae                	sw	a1,232(sp)
        R(reader)
20011bce:	d3ae                	sw	a1,228(sp)
    }
20011bd0:	559e                	lw	a1,228(sp)
20011bd2:	c7ae                	sw	a1,204(sp)
                &mut REG::Writer::from(W {
20011bd4:	cdaa                	sw	a0,216(sp)
20011bd6:	456e                	lw	a0,216(sp)
20011bd8:	d9aa                	sw	a0,240(sp)
        W(writer)
20011bda:	d7aa                	sw	a0,236(sp)
    }
20011bdc:	553e                	lw	a0,236(sp)
20011bde:	cbaa                	sw	a0,212(sp)
20011be0:	01e8                	add	a0,sp,204
            f(
20011be2:	c3aa                	sw	a0,196(sp)
20011be4:	09c8                	add	a0,sp,212
20011be6:	c5aa                	sw	a0,200(sp)
20011be8:	451e                	lw	a0,196(sp)
20011bea:	45ae                	lw	a1,200(sp)
20011bec:	00000097          	auipc	ra,0x0
20011bf0:	1de080e7          	jalr	478(ra) # 20011dca <e310x_hal::clock::CoreClk::configure_with_external::{{closure}}>
20011bf4:	85aa                	mv	a1,a0
20011bf6:	4552                	lw	a0,20(sp)
20011bf8:	418c                	lw	a1,0(a1)
20011bfa:	14a12e23          	sw	a0,348(sp)
20011bfe:	16b12023          	sw	a1,352(sp)
20011c02:	16a12223          	sw	a0,356(sp)
        unsafe { ptr::write_volatile(self.value.get(), value) }
20011c06:	00000097          	auipc	ra,0x0
20011c0a:	d56080e7          	jalr	-682(ra) # 2001195c <core::ptr::write_volatile>
20011c0e:	45f2                	lw	a1,28(sp)
20011c10:	4562                	lw	a0,24(sp)
        if source_freq.0 == self.coreclk.0 {
20011c12:	458c                	lw	a1,8(a1)
20011c14:	00b50c63          	beq	a0,a1,20011c2c <e310x_hal::clock::CoreClk::configure_with_external+0x126>
20011c18:	a009                	j	20011c1a <e310x_hal::clock::CoreClk::configure_with_external+0x114>
            freq = self.configure_pll(source_freq, self.coreclk);
20011c1a:	45e2                	lw	a1,24(sp)
20011c1c:	4572                	lw	a0,28(sp)
20011c1e:	4510                	lw	a2,8(a0)
20011c20:	00000097          	auipc	ra,0x0
20011c24:	66a080e7          	jalr	1642(ra) # 2001228a <e310x_hal::clock::CoreClk::configure_pll>
20011c28:	d62a                	sw	a0,44(sp)
        if source_freq.0 == self.coreclk.0 {
20011c2a:	a0d9                	j	20011cf0 <e310x_hal::clock::CoreClk::configure_with_external+0x1ea>
            freq = source_freq;
20011c2c:	4562                	lw	a0,24(sp)
20011c2e:	d62a                	sw	a0,44(sp)
20011c30:	10008537          	lui	a0,0x10008
20011c34:	c62a                	sw	a0,12(sp)
20011c36:	0521                	add	a0,a0,8 # 10008008 <.Lline_table_start2+0xffc71f0>
20011c38:	c42a                	sw	a0,8(sp)
20011c3a:	10a12623          	sw	a0,268(sp)
20011c3e:	12a12823          	sw	a0,304(sp)
20011c42:	12a12a23          	sw	a0,308(sp)
        unsafe { ptr::read_volatile(self.value.get()) }
20011c46:	00000097          	auipc	ra,0x0
20011c4a:	d08080e7          	jalr	-760(ra) # 2001194e <core::ptr::read_volatile>
        let bits = self.register.get();
20011c4e:	10a12823          	sw	a0,272(sp)
                &REG::Reader::from(R {
20011c52:	10a12023          	sw	a0,256(sp)
20011c56:	10012583          	lw	a1,256(sp)
20011c5a:	10b12c23          	sw	a1,280(sp)
        R(reader)
20011c5e:	10b12a23          	sw	a1,276(sp)
    }
20011c62:	11412583          	lw	a1,276(sp)
20011c66:	dfae                	sw	a1,252(sp)
                &mut REG::Writer::from(W {
20011c68:	10a12423          	sw	a0,264(sp)
20011c6c:	10812503          	lw	a0,264(sp)
20011c70:	12a12023          	sw	a0,288(sp)
        W(writer)
20011c74:	10a12e23          	sw	a0,284(sp)
    }
20011c78:	11c12503          	lw	a0,284(sp)
20011c7c:	10a12223          	sw	a0,260(sp)
20011c80:	19e8                	add	a0,sp,252
            f(
20011c82:	dbaa                	sw	a0,244(sp)
20011c84:	0248                	add	a0,sp,260
20011c86:	ddaa                	sw	a0,248(sp)
20011c88:	555e                	lw	a0,244(sp)
20011c8a:	55ee                	lw	a1,248(sp)
20011c8c:	00000097          	auipc	ra,0x0
20011c90:	172080e7          	jalr	370(ra) # 20011dfe <e310x_hal::clock::CoreClk::configure_with_external::{{closure}}>
20011c94:	85aa                	mv	a1,a0
20011c96:	4522                	lw	a0,8(sp)
20011c98:	418c                	lw	a1,0(a1)
20011c9a:	14a12823          	sw	a0,336(sp)
20011c9e:	14b12a23          	sw	a1,340(sp)
20011ca2:	14a12c23          	sw	a0,344(sp)
        unsafe { ptr::write_volatile(self.value.get(), value) }
20011ca6:	00000097          	auipc	ra,0x0
20011caa:	cb6080e7          	jalr	-842(ra) # 2001195c <core::ptr::write_volatile>
20011cae:	4532                	lw	a0,12(sp)
20011cb0:	0531                	add	a0,a0,12
20011cb2:	c82a                	sw	a0,16(sp)
20011cb4:	ccaa                	sw	a0,88(sp)
20011cb6:	10000513          	li	a0,256
            f(&mut REG::Writer::from(W {
20011cba:	caaa                	sw	a0,84(sp)
20011cbc:	4556                	lw	a0,84(sp)
20011cbe:	d0aa                	sw	a0,96(sp)
    }
}
impl From<crate::W<PLLOUTDIV_SPEC>> for W {
    #[inline(always)]
    fn from(writer: crate::W<PLLOUTDIV_SPEC>) -> Self {
        W(writer)
20011cc0:	ceaa                	sw	a0,92(sp)
    }
20011cc2:	4576                	lw	a0,92(sp)
20011cc4:	c8aa                	sw	a0,80(sp)
20011cc6:	0888                	add	a0,sp,80
20011cc8:	c6aa                	sw	a0,76(sp)
20011cca:	4536                	lw	a0,76(sp)
20011ccc:	00000097          	auipc	ra,0x0
20011cd0:	166080e7          	jalr	358(ra) # 20011e32 <e310x_hal::clock::CoreClk::configure_with_external::{{closure}}>
20011cd4:	85aa                	mv	a1,a0
20011cd6:	4542                	lw	a0,16(sp)
20011cd8:	418c                	lw	a1,0(a1)
20011cda:	18a12623          	sw	a0,396(sp)
20011cde:	18b12823          	sw	a1,400(sp)
20011ce2:	18a12a23          	sw	a0,404(sp)
20011ce6:	00000097          	auipc	ra,0x0
20011cea:	c76080e7          	jalr	-906(ra) # 2001195c <core::ptr::write_volatile>
            prci.plloutdiv.write(|w| w.divby1().bit(true));
20011cee:	a009                	j	20011cf0 <e310x_hal::clock::CoreClk::configure_with_external+0x1ea>
20011cf0:	10008537          	lui	a0,0x10008
20011cf4:	c22a                	sw	a0,4(sp)
20011cf6:	0521                	add	a0,a0,8 # 10008008 <.Lline_table_start2+0xffc71f0>
20011cf8:	c02a                	sw	a0,0(sp)
20011cfa:	d72a                	sw	a0,172(sp)
20011cfc:	14a12023          	sw	a0,320(sp)
20011d00:	14a12223          	sw	a0,324(sp)
        unsafe { ptr::read_volatile(self.value.get()) }
20011d04:	00000097          	auipc	ra,0x0
20011d08:	c4a080e7          	jalr	-950(ra) # 2001194e <core::ptr::read_volatile>
        let bits = self.register.get();
20011d0c:	d92a                	sw	a0,176(sp)
                &REG::Reader::from(R {
20011d0e:	d12a                	sw	a0,160(sp)
20011d10:	558a                	lw	a1,160(sp)
20011d12:	dd2e                	sw	a1,184(sp)
        R(reader)
20011d14:	db2e                	sw	a1,180(sp)
    }
20011d16:	55da                	lw	a1,180(sp)
20011d18:	cf2e                	sw	a1,156(sp)
                &mut REG::Writer::from(W {
20011d1a:	d52a                	sw	a0,168(sp)
20011d1c:	552a                	lw	a0,168(sp)
20011d1e:	c1aa                	sw	a0,192(sp)
        W(writer)
20011d20:	df2a                	sw	a0,188(sp)
    }
20011d22:	557a                	lw	a0,188(sp)
20011d24:	d32a                	sw	a0,164(sp)
20011d26:	0968                	add	a0,sp,156
            f(
20011d28:	cb2a                	sw	a0,148(sp)
20011d2a:	1148                	add	a0,sp,164
20011d2c:	cd2a                	sw	a0,152(sp)
20011d2e:	455a                	lw	a0,148(sp)
20011d30:	45ea                	lw	a1,152(sp)
20011d32:	00000097          	auipc	ra,0x0
20011d36:	130080e7          	jalr	304(ra) # 20011e62 <e310x_hal::clock::CoreClk::configure_with_external::{{closure}}>
20011d3a:	85aa                	mv	a1,a0
20011d3c:	4502                	lw	a0,0(sp)
20011d3e:	418c                	lw	a1,0(a1)
20011d40:	16a12423          	sw	a0,360(sp)
20011d44:	16b12623          	sw	a1,364(sp)
20011d48:	16a12823          	sw	a0,368(sp)
        unsafe { ptr::write_volatile(self.value.get(), value) }
20011d4c:	00000097          	auipc	ra,0x0
20011d50:	c10080e7          	jalr	-1008(ra) # 2001195c <core::ptr::write_volatile>
20011d54:	4512                	lw	a0,4(sp)
20011d56:	d8aa                	sw	a0,112(sp)
20011d58:	4501                	li	a0,0
            f(&mut REG::Writer::from(W {
20011d5a:	d6aa                	sw	a0,108(sp)
20011d5c:	5536                	lw	a0,108(sp)
20011d5e:	dcaa                	sw	a0,120(sp)
    }
}
impl From<crate::W<HFROSCCFG_SPEC>> for W {
    #[inline(always)]
    fn from(writer: crate::W<HFROSCCFG_SPEC>) -> Self {
        W(writer)
20011d60:	daaa                	sw	a0,116(sp)
    }
20011d62:	5556                	lw	a0,116(sp)
20011d64:	d4aa                	sw	a0,104(sp)
20011d66:	10a8                	add	a0,sp,104
20011d68:	d2aa                	sw	a0,100(sp)
20011d6a:	5516                	lw	a0,100(sp)
20011d6c:	00000097          	auipc	ra,0x0
20011d70:	128080e7          	jalr	296(ra) # 20011e94 <e310x_hal::clock::CoreClk::configure_with_external::{{closure}}>
20011d74:	85aa                	mv	a1,a0
20011d76:	4512                	lw	a0,4(sp)
20011d78:	418c                	lw	a1,0(a1)
20011d7a:	18a12023          	sw	a0,384(sp)
20011d7e:	18b12223          	sw	a1,388(sp)
20011d82:	18a12423          	sw	a0,392(sp)
20011d86:	00000097          	auipc	ra,0x0
20011d8a:	bd6080e7          	jalr	-1066(ra) # 2001195c <core::ptr::write_volatile>
        freq
20011d8e:	5532                	lw	a0,44(sp)
    }
20011d90:	19c12083          	lw	ra,412(sp)
20011d94:	611d                	add	sp,sp,416
20011d96:	8082                	ret

20011d98 <e310x_hal::clock::CoreClk::configure_with_external::{{closure}}>:
        prci.hfxosccfg.write(|w| w.enable().bit(true));
20011d98:	7179                	add	sp,sp,-48
20011d9a:	c62a                	sw	a0,12(sp)
20011d9c:	c82a                	sw	a0,16(sp)
20011d9e:	cc2a                	sw	a0,24(sp)
        Self {
20011da0:	ca2a                	sw	a0,20(sp)
    }
20011da2:	4552                	lw	a0,20(sp)
20011da4:	ce2a                	sw	a0,28(sp)
20011da6:	4585                	li	a1,1
20011da8:	02b10123          	sb	a1,34(sp)
                self.w.bits = (self.w.bits & !(1 << { OF })) | ((<$U>::from(value) & 1) << { OF });
20011dac:	4572                	lw	a0,28(sp)
20011dae:	d22a                	sw	a0,36(sp)
20011db0:	4108                	lw	a0,0(a0)
20011db2:	02b101a3          	sb	a1,35(sp)
20011db6:	45f2                	lw	a1,28(sp)
20011db8:	d42e                	sw	a1,40(sp)
20011dba:	40000637          	lui	a2,0x40000
20011dbe:	8d51                	or	a0,a0,a2
20011dc0:	c188                	sw	a0,0(a1)
                self.w
20011dc2:	4572                	lw	a0,28(sp)
20011dc4:	d62a                	sw	a0,44(sp)
20011dc6:	6145                	add	sp,sp,48
20011dc8:	8082                	ret

20011dca <e310x_hal::clock::CoreClk::configure_with_external::{{closure}}>:
        prci.pllcfg.modify(|_, w| w.refsel().bit(true));
20011dca:	7179                	add	sp,sp,-48
20011dcc:	c42a                	sw	a0,8(sp)
20011dce:	c62e                	sw	a1,12(sp)
20011dd0:	c82e                	sw	a1,16(sp)
20011dd2:	cc2e                	sw	a1,24(sp)
        Self {
20011dd4:	ca2e                	sw	a1,20(sp)
    }
20011dd6:	4552                	lw	a0,20(sp)
20011dd8:	ce2a                	sw	a0,28(sp)
20011dda:	4585                	li	a1,1
20011ddc:	02b10123          	sb	a1,34(sp)
                self.w.bits = (self.w.bits & !(1 << { OF })) | ((<$U>::from(value) & 1) << { OF });
20011de0:	4572                	lw	a0,28(sp)
20011de2:	d22a                	sw	a0,36(sp)
20011de4:	4108                	lw	a0,0(a0)
20011de6:	02b101a3          	sb	a1,35(sp)
20011dea:	45f2                	lw	a1,28(sp)
20011dec:	d42e                	sw	a1,40(sp)
20011dee:	00020637          	lui	a2,0x20
20011df2:	8d51                	or	a0,a0,a2
20011df4:	c188                	sw	a0,0(a1)
                self.w
20011df6:	4572                	lw	a0,28(sp)
20011df8:	d62a                	sw	a0,44(sp)
20011dfa:	6145                	add	sp,sp,48
20011dfc:	8082                	ret

20011dfe <e310x_hal::clock::CoreClk::configure_with_external::{{closure}}>:
            prci.pllcfg.modify(|_, w| w.bypass().bit(true));
20011dfe:	7179                	add	sp,sp,-48
20011e00:	c42a                	sw	a0,8(sp)
20011e02:	c62e                	sw	a1,12(sp)
20011e04:	c82e                	sw	a1,16(sp)
20011e06:	cc2e                	sw	a1,24(sp)
        Self {
20011e08:	ca2e                	sw	a1,20(sp)
    }
20011e0a:	4552                	lw	a0,20(sp)
20011e0c:	ce2a                	sw	a0,28(sp)
20011e0e:	4585                	li	a1,1
20011e10:	02b10123          	sb	a1,34(sp)
                self.w.bits = (self.w.bits & !(1 << { OF })) | ((<$U>::from(value) & 1) << { OF });
20011e14:	4572                	lw	a0,28(sp)
20011e16:	d22a                	sw	a0,36(sp)
20011e18:	4108                	lw	a0,0(a0)
20011e1a:	02b101a3          	sb	a1,35(sp)
20011e1e:	45f2                	lw	a1,28(sp)
20011e20:	d42e                	sw	a1,40(sp)
20011e22:	00040637          	lui	a2,0x40
20011e26:	8d51                	or	a0,a0,a2
20011e28:	c188                	sw	a0,0(a1)
                self.w
20011e2a:	4572                	lw	a0,28(sp)
20011e2c:	d62a                	sw	a0,44(sp)
20011e2e:	6145                	add	sp,sp,48
20011e30:	8082                	ret

20011e32 <e310x_hal::clock::CoreClk::configure_with_external::{{closure}}>:
            prci.plloutdiv.write(|w| w.divby1().bit(true));
20011e32:	7179                	add	sp,sp,-48
20011e34:	c62a                	sw	a0,12(sp)
20011e36:	c82a                	sw	a0,16(sp)
20011e38:	cc2a                	sw	a0,24(sp)
        Self {
20011e3a:	ca2a                	sw	a0,20(sp)
    }
20011e3c:	4552                	lw	a0,20(sp)
20011e3e:	ce2a                	sw	a0,28(sp)
20011e40:	4585                	li	a1,1
20011e42:	02b10123          	sb	a1,34(sp)
                self.w.bits = (self.w.bits & !(1 << { OF })) | ((<$U>::from(value) & 1) << { OF });
20011e46:	4572                	lw	a0,28(sp)
20011e48:	d22a                	sw	a0,36(sp)
20011e4a:	4108                	lw	a0,0(a0)
20011e4c:	02b101a3          	sb	a1,35(sp)
20011e50:	45f2                	lw	a1,28(sp)
20011e52:	d42e                	sw	a1,40(sp)
20011e54:	10056513          	or	a0,a0,256
20011e58:	c188                	sw	a0,0(a1)
                self.w
20011e5a:	4572                	lw	a0,28(sp)
20011e5c:	d62a                	sw	a0,44(sp)
20011e5e:	6145                	add	sp,sp,48
20011e60:	8082                	ret

20011e62 <e310x_hal::clock::CoreClk::configure_with_external::{{closure}}>:
        prci.pllcfg.modify(|_, w| w.sel().bit(true));
20011e62:	7179                	add	sp,sp,-48
20011e64:	c42a                	sw	a0,8(sp)
20011e66:	c62e                	sw	a1,12(sp)
20011e68:	c82e                	sw	a1,16(sp)
20011e6a:	cc2e                	sw	a1,24(sp)
        Self {
20011e6c:	ca2e                	sw	a1,20(sp)
    }
20011e6e:	4552                	lw	a0,20(sp)
20011e70:	ce2a                	sw	a0,28(sp)
20011e72:	4585                	li	a1,1
20011e74:	02b10123          	sb	a1,34(sp)
                self.w.bits = (self.w.bits & !(1 << { OF })) | ((<$U>::from(value) & 1) << { OF });
20011e78:	4572                	lw	a0,28(sp)
20011e7a:	d22a                	sw	a0,36(sp)
20011e7c:	4108                	lw	a0,0(a0)
20011e7e:	02b101a3          	sb	a1,35(sp)
20011e82:	45f2                	lw	a1,28(sp)
20011e84:	d42e                	sw	a1,40(sp)
20011e86:	6641                	lui	a2,0x10
20011e88:	8d51                	or	a0,a0,a2
20011e8a:	c188                	sw	a0,0(a1)
                self.w
20011e8c:	4572                	lw	a0,28(sp)
20011e8e:	d62a                	sw	a0,44(sp)
20011e90:	6145                	add	sp,sp,48
20011e92:	8082                	ret

20011e94 <e310x_hal::clock::CoreClk::configure_with_external::{{closure}}>:
        prci.hfrosccfg.write(|w| w.enable().bit(false));
20011e94:	7179                	add	sp,sp,-48
20011e96:	c62a                	sw	a0,12(sp)
20011e98:	c82a                	sw	a0,16(sp)
20011e9a:	cc2a                	sw	a0,24(sp)
        Self {
20011e9c:	ca2a                	sw	a0,20(sp)
    }
20011e9e:	4552                	lw	a0,20(sp)
20011ea0:	ce2a                	sw	a0,28(sp)
20011ea2:	4581                	li	a1,0
20011ea4:	02b10123          	sb	a1,34(sp)
                self.w.bits = (self.w.bits & !(1 << { OF })) | ((<$U>::from(value) & 1) << { OF });
20011ea8:	4572                	lw	a0,28(sp)
20011eaa:	d22a                	sw	a0,36(sp)
20011eac:	4108                	lw	a0,0(a0)
20011eae:	c0000637          	lui	a2,0xc0000
20011eb2:	167d                	add	a2,a2,-1 # bfffffff <_sstack+0x3fffbfff>
20011eb4:	8d71                	and	a0,a0,a2
20011eb6:	02b101a3          	sb	a1,35(sp)
20011eba:	45f2                	lw	a1,28(sp)
20011ebc:	d42e                	sw	a1,40(sp)
20011ebe:	c188                	sw	a0,0(a1)
                self.w
20011ec0:	4572                	lw	a0,28(sp)
20011ec2:	d62a                	sw	a0,44(sp)
20011ec4:	6145                	add	sp,sp,48
20011ec6:	8082                	ret

20011ec8 <e310x_hal::clock::CoreClk::configure_with_internal>:
    fn configure_with_internal(self, hfrosc_freq: Hertz) -> Hertz {
20011ec8:	712d                	add	sp,sp,-288
20011eca:	10112e23          	sw	ra,284(sp)
20011ece:	cc2e                	sw	a1,24(sp)
20011ed0:	ce2a                	sw	a0,28(sp)
20011ed2:	d22e                	sw	a1,36(sp)
20011ed4:	10008637          	lui	a2,0x10008
        let prci = unsafe { &*PRCI::ptr() };
20011ed8:	d432                	sw	a2,40(sp)
        if hfrosc_freq.0 == self.coreclk.0 {
20011eda:	4508                	lw	a0,8(a0)
20011edc:	06a58863          	beq	a1,a0,20011f4c <e310x_hal::clock::CoreClk::configure_with_internal+0x84>
20011ee0:	a009                	j	20011ee2 <e310x_hal::clock::CoreClk::configure_with_internal+0x1a>
            freq = self.configure_pll(hfrosc_freq, self.coreclk);
20011ee2:	45e2                	lw	a1,24(sp)
20011ee4:	4572                	lw	a0,28(sp)
20011ee6:	4510                	lw	a2,8(a0)
20011ee8:	00000097          	auipc	ra,0x0
20011eec:	3a2080e7          	jalr	930(ra) # 2001228a <e310x_hal::clock::CoreClk::configure_pll>
20011ef0:	d02a                	sw	a0,32(sp)
20011ef2:	10008537          	lui	a0,0x10008
20011ef6:	0521                	add	a0,a0,8 # 10008008 <.Lline_table_start2+0xffc71f0>
20011ef8:	ca2a                	sw	a0,20(sp)
20011efa:	df2a                	sw	a0,188(sp)
20011efc:	cbaa                	sw	a0,212(sp)
20011efe:	cdaa                	sw	a0,216(sp)
        unsafe { ptr::read_volatile(self.value.get()) }
20011f00:	00000097          	auipc	ra,0x0
20011f04:	a4e080e7          	jalr	-1458(ra) # 2001194e <core::ptr::read_volatile>
        let bits = self.register.get();
20011f08:	c1aa                	sw	a0,192(sp)
                &REG::Reader::from(R {
20011f0a:	d92a                	sw	a0,176(sp)
20011f0c:	55ca                	lw	a1,176(sp)
20011f0e:	c5ae                	sw	a1,200(sp)
        R(reader)
20011f10:	c3ae                	sw	a1,196(sp)
    }
20011f12:	459e                	lw	a1,196(sp)
20011f14:	d72e                	sw	a1,172(sp)
                &mut REG::Writer::from(W {
20011f16:	dd2a                	sw	a0,184(sp)
20011f18:	556a                	lw	a0,184(sp)
20011f1a:	c9aa                	sw	a0,208(sp)
        W(writer)
20011f1c:	c7aa                	sw	a0,204(sp)
    }
20011f1e:	453e                	lw	a0,204(sp)
20011f20:	db2a                	sw	a0,180(sp)
20011f22:	1168                	add	a0,sp,172
            f(
20011f24:	d32a                	sw	a0,164(sp)
20011f26:	1948                	add	a0,sp,180
20011f28:	d52a                	sw	a0,168(sp)
20011f2a:	551a                	lw	a0,164(sp)
20011f2c:	55aa                	lw	a1,168(sp)
20011f2e:	00000097          	auipc	ra,0x0
20011f32:	1b0080e7          	jalr	432(ra) # 200120de <e310x_hal::clock::CoreClk::configure_with_internal::{{closure}}>
20011f36:	85aa                	mv	a1,a0
20011f38:	4552                	lw	a0,20(sp)
20011f3a:	418c                	lw	a1,0(a1)
20011f3c:	d7aa                	sw	a0,236(sp)
20011f3e:	d9ae                	sw	a1,240(sp)
20011f40:	dbaa                	sw	a0,244(sp)
        unsafe { ptr::write_volatile(self.value.get(), value) }
20011f42:	00000097          	auipc	ra,0x0
20011f46:	a1a080e7          	jalr	-1510(ra) # 2001195c <core::ptr::write_volatile>
            prci.pllcfg.modify(|_, w| w.sel().bit(true));
20011f4a:	a86d                	j	20012004 <e310x_hal::clock::CoreClk::configure_with_internal+0x13c>
            freq = hfrosc_freq;
20011f4c:	4562                	lw	a0,24(sp)
20011f4e:	d02a                	sw	a0,32(sp)
20011f50:	10008537          	lui	a0,0x10008
20011f54:	0521                	add	a0,a0,8 # 10008008 <.Lline_table_start2+0xffc71f0>
20011f56:	c82a                	sw	a0,16(sp)
20011f58:	ceaa                	sw	a0,92(sp)
20011f5a:	d3aa                	sw	a0,228(sp)
20011f5c:	d5aa                	sw	a0,232(sp)
        unsafe { ptr::read_volatile(self.value.get()) }
20011f5e:	00000097          	auipc	ra,0x0
20011f62:	9f0080e7          	jalr	-1552(ra) # 2001194e <core::ptr::read_volatile>
        let bits = self.register.get();
20011f66:	d0aa                	sw	a0,96(sp)
                &REG::Reader::from(R {
20011f68:	c8aa                	sw	a0,80(sp)
20011f6a:	45c6                	lw	a1,80(sp)
20011f6c:	d4ae                	sw	a1,104(sp)
        R(reader)
20011f6e:	d2ae                	sw	a1,100(sp)
    }
20011f70:	5596                	lw	a1,100(sp)
20011f72:	c6ae                	sw	a1,76(sp)
                &mut REG::Writer::from(W {
20011f74:	ccaa                	sw	a0,88(sp)
20011f76:	4566                	lw	a0,88(sp)
20011f78:	d8aa                	sw	a0,112(sp)
        W(writer)
20011f7a:	d6aa                	sw	a0,108(sp)
    }
20011f7c:	5536                	lw	a0,108(sp)
20011f7e:	caaa                	sw	a0,84(sp)
20011f80:	00e8                	add	a0,sp,76
            f(
20011f82:	c2aa                	sw	a0,68(sp)
20011f84:	08c8                	add	a0,sp,84
20011f86:	c4aa                	sw	a0,72(sp)
20011f88:	4516                	lw	a0,68(sp)
20011f8a:	45a6                	lw	a1,72(sp)
20011f8c:	00000097          	auipc	ra,0x0
20011f90:	0c2080e7          	jalr	194(ra) # 2001204e <e310x_hal::clock::CoreClk::configure_with_internal::{{closure}}>
20011f94:	85aa                	mv	a1,a0
20011f96:	4542                	lw	a0,16(sp)
20011f98:	418c                	lw	a1,0(a1)
20011f9a:	10a12223          	sw	a0,260(sp)
20011f9e:	10b12423          	sw	a1,264(sp)
20011fa2:	10a12623          	sw	a0,268(sp)
        unsafe { ptr::write_volatile(self.value.get(), value) }
20011fa6:	00000097          	auipc	ra,0x0
20011faa:	9b6080e7          	jalr	-1610(ra) # 2001195c <core::ptr::write_volatile>
20011fae:	4542                	lw	a0,16(sp)
20011fb0:	c72a                	sw	a0,140(sp)
20011fb2:	cfaa                	sw	a0,220(sp)
20011fb4:	d1aa                	sw	a0,224(sp)
        unsafe { ptr::read_volatile(self.value.get()) }
20011fb6:	00000097          	auipc	ra,0x0
20011fba:	998080e7          	jalr	-1640(ra) # 2001194e <core::ptr::read_volatile>
        let bits = self.register.get();
20011fbe:	c92a                	sw	a0,144(sp)
                &REG::Reader::from(R {
20011fc0:	c12a                	sw	a0,128(sp)
20011fc2:	458a                	lw	a1,128(sp)
20011fc4:	cd2e                	sw	a1,152(sp)
        R(reader)
20011fc6:	cb2e                	sw	a1,148(sp)
    }
20011fc8:	45da                	lw	a1,148(sp)
20011fca:	deae                	sw	a1,124(sp)
                &mut REG::Writer::from(W {
20011fcc:	c52a                	sw	a0,136(sp)
20011fce:	452a                	lw	a0,136(sp)
20011fd0:	d12a                	sw	a0,160(sp)
        W(writer)
20011fd2:	cf2a                	sw	a0,156(sp)
    }
20011fd4:	457a                	lw	a0,156(sp)
20011fd6:	c32a                	sw	a0,132(sp)
20011fd8:	18e8                	add	a0,sp,124
            f(
20011fda:	daaa                	sw	a0,116(sp)
20011fdc:	0148                	add	a0,sp,132
20011fde:	dcaa                	sw	a0,120(sp)
20011fe0:	5556                	lw	a0,116(sp)
20011fe2:	55e6                	lw	a1,120(sp)
20011fe4:	00000097          	auipc	ra,0x0
20011fe8:	0c6080e7          	jalr	198(ra) # 200120aa <e310x_hal::clock::CoreClk::configure_with_internal::{{closure}}>
20011fec:	85aa                	mv	a1,a0
20011fee:	4542                	lw	a0,16(sp)
20011ff0:	418c                	lw	a1,0(a1)
20011ff2:	ddaa                	sw	a0,248(sp)
20011ff4:	dfae                	sw	a1,252(sp)
20011ff6:	10a12023          	sw	a0,256(sp)
        unsafe { ptr::write_volatile(self.value.get(), value) }
20011ffa:	00000097          	auipc	ra,0x0
20011ffe:	962080e7          	jalr	-1694(ra) # 2001195c <core::ptr::write_volatile>
            prci.pllcfg.modify(|_, w| w.bypass().bit(true));
20012002:	a009                	j	20012004 <e310x_hal::clock::CoreClk::configure_with_internal+0x13c>
20012004:	10008537          	lui	a0,0x10008
20012008:	0511                	add	a0,a0,4 # 10008004 <.Lline_table_start2+0xffc71ec>
2001200a:	c62a                	sw	a0,12(sp)
2001200c:	dc2a                	sw	a0,56(sp)
2001200e:	4501                	li	a0,0
            f(&mut REG::Writer::from(W {
20012010:	da2a                	sw	a0,52(sp)
20012012:	5552                	lw	a0,52(sp)
20012014:	c0aa                	sw	a0,64(sp)
        W(writer)
20012016:	de2a                	sw	a0,60(sp)
    }
20012018:	5572                	lw	a0,60(sp)
2001201a:	d82a                	sw	a0,48(sp)
2001201c:	1808                	add	a0,sp,48
2001201e:	d62a                	sw	a0,44(sp)
20012020:	5532                	lw	a0,44(sp)
20012022:	00000097          	auipc	ra,0x0
20012026:	0ee080e7          	jalr	238(ra) # 20012110 <e310x_hal::clock::CoreClk::configure_with_internal::{{closure}}>
2001202a:	85aa                	mv	a1,a0
2001202c:	4532                	lw	a0,12(sp)
2001202e:	418c                	lw	a1,0(a1)
20012030:	10a12823          	sw	a0,272(sp)
20012034:	10b12a23          	sw	a1,276(sp)
20012038:	10a12c23          	sw	a0,280(sp)
2001203c:	00000097          	auipc	ra,0x0
20012040:	920080e7          	jalr	-1760(ra) # 2001195c <core::ptr::write_volatile>
        freq
20012044:	5502                	lw	a0,32(sp)
    }
20012046:	11c12083          	lw	ra,284(sp)
2001204a:	6115                	add	sp,sp,288
2001204c:	8082                	ret

2001204e <e310x_hal::clock::CoreClk::configure_with_internal::{{closure}}>:
                .modify(|_, w| w.sel().bit(false).bypass().bit(true));
2001204e:	715d                	add	sp,sp,-80
20012050:	c62a                	sw	a0,12(sp)
20012052:	c82e                	sw	a1,16(sp)
20012054:	ca2e                	sw	a1,20(sp)
20012056:	d42e                	sw	a1,40(sp)
        Self {
20012058:	d22e                	sw	a1,36(sp)
    }
2001205a:	5512                	lw	a0,36(sp)
2001205c:	d62a                	sw	a0,44(sp)
2001205e:	4581                	li	a1,0
20012060:	02b10923          	sb	a1,50(sp)
                self.w.bits = (self.w.bits & !(1 << { OF })) | ((<$U>::from(value) & 1) << { OF });
20012064:	5532                	lw	a0,44(sp)
20012066:	c0aa                	sw	a0,64(sp)
20012068:	4108                	lw	a0,0(a0)
2001206a:	7641                	lui	a2,0xffff0
2001206c:	167d                	add	a2,a2,-1 # fffeffff <_sstack+0x7ffebfff>
2001206e:	8d71                	and	a0,a0,a2
20012070:	02b109a3          	sb	a1,51(sp)
20012074:	55b2                	lw	a1,44(sp)
20012076:	c4ae                	sw	a1,72(sp)
20012078:	c188                	sw	a0,0(a1)
                self.w
2001207a:	5532                	lw	a0,44(sp)
2001207c:	cc2a                	sw	a0,24(sp)
2001207e:	d02a                	sw	a0,32(sp)
        Self {
20012080:	ce2a                	sw	a0,28(sp)
    }
20012082:	4572                	lw	a0,28(sp)
20012084:	da2a                	sw	a0,52(sp)
20012086:	4585                	li	a1,1
20012088:	02b10d23          	sb	a1,58(sp)
                self.w.bits = (self.w.bits & !(1 << { OF })) | ((<$U>::from(value) & 1) << { OF });
2001208c:	5552                	lw	a0,52(sp)
2001208e:	de2a                	sw	a0,60(sp)
20012090:	4108                	lw	a0,0(a0)
20012092:	02b10da3          	sb	a1,59(sp)
20012096:	55d2                	lw	a1,52(sp)
20012098:	c2ae                	sw	a1,68(sp)
2001209a:	00040637          	lui	a2,0x40
2001209e:	8d51                	or	a0,a0,a2
200120a0:	c188                	sw	a0,0(a1)
                self.w
200120a2:	5552                	lw	a0,52(sp)
200120a4:	c6aa                	sw	a0,76(sp)
200120a6:	6161                	add	sp,sp,80
200120a8:	8082                	ret

200120aa <e310x_hal::clock::CoreClk::configure_with_internal::{{closure}}>:
            prci.pllcfg.modify(|_, w| w.bypass().bit(true));
200120aa:	7179                	add	sp,sp,-48
200120ac:	c42a                	sw	a0,8(sp)
200120ae:	c62e                	sw	a1,12(sp)
200120b0:	c82e                	sw	a1,16(sp)
200120b2:	cc2e                	sw	a1,24(sp)
        Self {
200120b4:	ca2e                	sw	a1,20(sp)
    }
200120b6:	4552                	lw	a0,20(sp)
200120b8:	ce2a                	sw	a0,28(sp)
200120ba:	4585                	li	a1,1
200120bc:	02b10123          	sb	a1,34(sp)
                self.w.bits = (self.w.bits & !(1 << { OF })) | ((<$U>::from(value) & 1) << { OF });
200120c0:	4572                	lw	a0,28(sp)
200120c2:	d22a                	sw	a0,36(sp)
200120c4:	4108                	lw	a0,0(a0)
200120c6:	02b101a3          	sb	a1,35(sp)
200120ca:	45f2                	lw	a1,28(sp)
200120cc:	d42e                	sw	a1,40(sp)
200120ce:	00040637          	lui	a2,0x40
200120d2:	8d51                	or	a0,a0,a2
200120d4:	c188                	sw	a0,0(a1)
                self.w
200120d6:	4572                	lw	a0,28(sp)
200120d8:	d62a                	sw	a0,44(sp)
200120da:	6145                	add	sp,sp,48
200120dc:	8082                	ret

200120de <e310x_hal::clock::CoreClk::configure_with_internal::{{closure}}>:
            prci.pllcfg.modify(|_, w| w.sel().bit(true));
200120de:	7179                	add	sp,sp,-48
200120e0:	c42a                	sw	a0,8(sp)
200120e2:	c62e                	sw	a1,12(sp)
200120e4:	c82e                	sw	a1,16(sp)
200120e6:	cc2e                	sw	a1,24(sp)
        Self {
200120e8:	ca2e                	sw	a1,20(sp)
    }
200120ea:	4552                	lw	a0,20(sp)
200120ec:	ce2a                	sw	a0,28(sp)
200120ee:	4585                	li	a1,1
200120f0:	02b10123          	sb	a1,34(sp)
                self.w.bits = (self.w.bits & !(1 << { OF })) | ((<$U>::from(value) & 1) << { OF });
200120f4:	4572                	lw	a0,28(sp)
200120f6:	d22a                	sw	a0,36(sp)
200120f8:	4108                	lw	a0,0(a0)
200120fa:	02b101a3          	sb	a1,35(sp)
200120fe:	45f2                	lw	a1,28(sp)
20012100:	d42e                	sw	a1,40(sp)
20012102:	6641                	lui	a2,0x10
20012104:	8d51                	or	a0,a0,a2
20012106:	c188                	sw	a0,0(a1)
                self.w
20012108:	4572                	lw	a0,28(sp)
2001210a:	d62a                	sw	a0,44(sp)
2001210c:	6145                	add	sp,sp,48
2001210e:	8082                	ret

20012110 <e310x_hal::clock::CoreClk::configure_with_internal::{{closure}}>:
        prci.hfxosccfg.write(|w| w.enable().bit(false));
20012110:	7179                	add	sp,sp,-48
20012112:	c62a                	sw	a0,12(sp)
20012114:	c82a                	sw	a0,16(sp)
20012116:	cc2a                	sw	a0,24(sp)
        Self {
20012118:	ca2a                	sw	a0,20(sp)
    }
2001211a:	4552                	lw	a0,20(sp)
2001211c:	ce2a                	sw	a0,28(sp)
2001211e:	4581                	li	a1,0
20012120:	02b10123          	sb	a1,34(sp)
                self.w.bits = (self.w.bits & !(1 << { OF })) | ((<$U>::from(value) & 1) << { OF });
20012124:	4572                	lw	a0,28(sp)
20012126:	d22a                	sw	a0,36(sp)
20012128:	4108                	lw	a0,0(a0)
2001212a:	c0000637          	lui	a2,0xc0000
2001212e:	167d                	add	a2,a2,-1 # bfffffff <_sstack+0x3fffbfff>
20012130:	8d71                	and	a0,a0,a2
20012132:	02b101a3          	sb	a1,35(sp)
20012136:	45f2                	lw	a1,28(sp)
20012138:	d42e                	sw	a1,40(sp)
2001213a:	c188                	sw	a0,0(a1)
                self.w
2001213c:	4572                	lw	a0,28(sp)
2001213e:	d62a                	sw	a0,44(sp)
20012140:	6145                	add	sp,sp,48
20012142:	8082                	ret

20012144 <e310x_hal::clock::CoreClk::configure_hfrosc>:
    fn configure_hfrosc(&self) -> Hertz {
20012144:	7159                	add	sp,sp,-112
20012146:	d686                	sw	ra,108(sp)
20012148:	ca2a                	sw	a0,20(sp)
2001214a:	10008537          	lui	a0,0x10008
        let prci = unsafe { &*PRCI::ptr() };
2001214e:	c22a                	sw	a0,4(sp)
20012150:	cc2a                	sw	a0,24(sp)
20012152:	de2a                	sw	a0,60(sp)
20012154:	4501                	li	a0,0
            f(&mut REG::Writer::from(W {
20012156:	dc2a                	sw	a0,56(sp)
20012158:	5562                	lw	a0,56(sp)
2001215a:	c2aa                	sw	a0,68(sp)
        W(writer)
2001215c:	c0aa                	sw	a0,64(sp)
    }
2001215e:	4506                	lw	a0,64(sp)
20012160:	da2a                	sw	a0,52(sp)
20012162:	1848                	add	a0,sp,52
20012164:	d82a                	sw	a0,48(sp)
20012166:	5542                	lw	a0,48(sp)
20012168:	00000097          	auipc	ra,0x0
2001216c:	07a080e7          	jalr	122(ra) # 200121e2 <e310x_hal::clock::CoreClk::configure_hfrosc::{{closure}}>
20012170:	85aa                	mv	a1,a0
20012172:	4512                	lw	a0,4(sp)
20012174:	418c                	lw	a1,0(a1)
20012176:	ceaa                	sw	a0,92(sp)
20012178:	d0ae                	sw	a1,96(sp)
2001217a:	d2aa                	sw	a0,100(sp)
2001217c:	fffff097          	auipc	ra,0xfffff
20012180:	7e0080e7          	jalr	2016(ra) # 2001195c <core::ptr::write_volatile>
        prci.hfrosccfg
20012184:	a009                	j	20012186 <e310x_hal::clock::CoreClk::configure_hfrosc+0x42>
20012186:	10008537          	lui	a0,0x10008
2001218a:	d22a                	sw	a0,36(sp)
2001218c:	caaa                	sw	a0,84(sp)
2001218e:	ccaa                	sw	a0,88(sp)
        unsafe { ptr::read_volatile(self.value.get()) }
20012190:	fffff097          	auipc	ra,0xfffff
20012194:	7be080e7          	jalr	1982(ra) # 2001194e <core::ptr::read_volatile>
        REG::Reader::from(R {
20012198:	d02a                	sw	a0,32(sp)
2001219a:	5502                	lw	a0,32(sp)
2001219c:	d62a                	sw	a0,44(sp)
        R(reader)
2001219e:	d42a                	sw	a0,40(sp)
    }
200121a0:	5522                	lw	a0,40(sp)
        while !prci.hfrosccfg.read().ready().bit_is_set() {}
200121a2:	c82a                	sw	a0,16(sp)
200121a4:	0808                	add	a0,sp,16
200121a6:	ce2a                	sw	a0,28(sp)
200121a8:	d4aa                	sw	a0,104(sp)
        ENABLE_R::new(((self.bits >> 30) & 1) != 0)
    }
    #[doc = "Bit 31"]
    #[inline(always)]
    pub fn ready(&self) -> READY_R {
        READY_R::new(((self.bits >> 31) & 1) != 0)
200121aa:	4542                	lw	a0,16(sp)
200121ac:	817d                	srl	a0,a0,0x1f
200121ae:	04a109a3          	sb	a0,83(sp)
        Self {
200121b2:	04a10923          	sb	a0,82(sp)
    }
200121b6:	05214503          	lbu	a0,82(sp)
200121ba:	00a107a3          	sb	a0,15(sp)
200121be:	00f10513          	add	a0,sp,15
200121c2:	c4aa                	sw	a0,72(sp)
200121c4:	c6aa                	sw	a0,76(sp)
        self.bits
200121c6:	00f14503          	lbu	a0,15(sp)
200121ca:	8905                	and	a0,a0,1
200121cc:	dd4d                	beqz	a0,20012186 <e310x_hal::clock::CoreClk::configure_hfrosc+0x42>
200121ce:	a009                	j	200121d0 <e310x_hal::clock::CoreClk::configure_hfrosc+0x8c>
200121d0:	00d29537          	lui	a0,0xd29
200121d4:	24050513          	add	a0,a0,576 # d29240 <.Lline_table_start2+0xce8428>
        Hertz(13_800_000)
200121d8:	c42a                	sw	a0,8(sp)
    }
200121da:	4522                	lw	a0,8(sp)
200121dc:	50b6                	lw	ra,108(sp)
200121de:	6165                	add	sp,sp,112
200121e0:	8082                	ret

200121e2 <e310x_hal::clock::CoreClk::configure_hfrosc::{{closure}}>:
            .write(|w| unsafe { w.div().bits(4).trim().bits(16).enable().bit(true) });
200121e2:	7159                	add	sp,sp,-112
200121e4:	d686                	sw	ra,108(sp)
200121e6:	c82a                	sw	a0,16(sp)
200121e8:	ca2a                	sw	a0,20(sp)
200121ea:	da2a                	sw	a0,52(sp)
        Self {
200121ec:	d82a                	sw	a0,48(sp)
    }
200121ee:	5542                	lw	a0,48(sp)
200121f0:	c0aa                	sw	a0,64(sp)
200121f2:	4511                	li	a0,4
200121f4:	04a103a3          	sb	a0,71(sp)
                self.w.bits = (self.w.bits & !(Self::MASK << { OF }))
200121f8:	4586                	lw	a1,64(sp)
200121fa:	caae                	sw	a1,84(sp)
200121fc:	418c                	lw	a1,0(a1)
200121fe:	fc05f593          	and	a1,a1,-64
                    | ((value.into() & Self::MASK) << { OF });
20012202:	c22e                	sw	a1,4(sp)
20012204:	fffff097          	auipc	ra,0xfffff
20012208:	776080e7          	jalr	1910(ra) # 2001197a <<T as core::convert::Into<U>>::into>
2001220c:	85aa                	mv	a1,a0
2001220e:	4512                	lw	a0,4(sp)
20012210:	03f5f613          	and	a2,a1,63
                self.w.bits = (self.w.bits & !(Self::MASK << { OF }))
20012214:	4586                	lw	a1,64(sp)
20012216:	d0ae                	sw	a1,96(sp)
20012218:	8d51                	or	a0,a0,a2
2001221a:	c188                	sw	a0,0(a1)
                self.w
2001221c:	4506                	lw	a0,64(sp)
2001221e:	cc2a                	sw	a0,24(sp)
20012220:	d62a                	sw	a0,44(sp)
        Self {
20012222:	d42a                	sw	a0,40(sp)
    }
20012224:	5522                	lw	a0,40(sp)
20012226:	c4aa                	sw	a0,72(sp)
20012228:	4541                	li	a0,16
2001222a:	04a107a3          	sb	a0,79(sp)
                self.w.bits = (self.w.bits & !(Self::MASK << { OF }))
2001222e:	45a6                	lw	a1,72(sp)
20012230:	c8ae                	sw	a1,80(sp)
20012232:	418c                	lw	a1,0(a1)
20012234:	ffe10637          	lui	a2,0xffe10
20012238:	167d                	add	a2,a2,-1 # ffe0ffff <_sstack+0x7fe0bfff>
2001223a:	8df1                	and	a1,a1,a2
                    | ((value.into() & Self::MASK) << { OF });
2001223c:	c42e                	sw	a1,8(sp)
2001223e:	fffff097          	auipc	ra,0xfffff
20012242:	73c080e7          	jalr	1852(ra) # 2001197a <<T as core::convert::Into<U>>::into>
20012246:	85aa                	mv	a1,a0
20012248:	4522                	lw	a0,8(sp)
2001224a:	89fd                	and	a1,a1,31
2001224c:	01059613          	sll	a2,a1,0x10
                self.w.bits = (self.w.bits & !(Self::MASK << { OF }))
20012250:	45a6                	lw	a1,72(sp)
20012252:	ceae                	sw	a1,92(sp)
20012254:	8d51                	or	a0,a0,a2
20012256:	c188                	sw	a0,0(a1)
                self.w
20012258:	4526                	lw	a0,72(sp)
2001225a:	ce2a                	sw	a0,28(sp)
2001225c:	d22a                	sw	a0,36(sp)
        Self {
2001225e:	d02a                	sw	a0,32(sp)
    }
20012260:	5502                	lw	a0,32(sp)
20012262:	dc2a                	sw	a0,56(sp)
20012264:	4585                	li	a1,1
20012266:	02b10f23          	sb	a1,62(sp)
                self.w.bits = (self.w.bits & !(1 << { OF })) | ((<$U>::from(value) & 1) << { OF });
2001226a:	5562                	lw	a0,56(sp)
2001226c:	ccaa                	sw	a0,88(sp)
2001226e:	4108                	lw	a0,0(a0)
20012270:	02b10fa3          	sb	a1,63(sp)
20012274:	55e2                	lw	a1,56(sp)
20012276:	d2ae                	sw	a1,100(sp)
20012278:	40000637          	lui	a2,0x40000
2001227c:	8d51                	or	a0,a0,a2
2001227e:	c188                	sw	a0,0(a1)
                self.w
20012280:	5562                	lw	a0,56(sp)
20012282:	d4aa                	sw	a0,104(sp)
20012284:	50b6                	lw	ra,108(sp)
20012286:	6165                	add	sp,sp,112
20012288:	8082                	ret

2001228a <e310x_hal::clock::CoreClk::configure_pll>:
    fn configure_pll(&self, pllref_freq: Hertz, divout_freq: Hertz) -> Hertz {
2001228a:	7145                	add	sp,sp,-464
2001228c:	1c112623          	sw	ra,460(sp)
20012290:	c932                	sw	a2,144(sp)
20012292:	cb2e                	sw	a1,148(sp)
        let mtime = MTIME;
20012294:	cfaa                	sw	a0,220(sp)
20012296:	d1ae                	sw	a1,224(sp)
20012298:	d3b2                	sw	a2,228(sp)
        let pllref_freq = pllref_freq.0;
2001229a:	d5ae                	sw	a1,232(sp)
2001229c:	005b9537          	lui	a0,0x5b9
200122a0:	d7f50513          	add	a0,a0,-641 # 5b8d7f <.Lline_table_start2+0x577f67>
        assert!(PLLREF_MIN <= pllref_freq && pllref_freq <= PLLREF_MAX);
200122a4:	02b56263          	bltu	a0,a1,200122c8 <e310x_hal::clock::CoreClk::configure_pll+0x3e>
200122a8:	a009                	j	200122aa <e310x_hal::clock::CoreClk::configure_pll+0x20>
200122aa:	20016537          	lui	a0,0x20016
200122ae:	c4f50513          	add	a0,a0,-945 # 20015c4f <.L__unnamed_9>
200122b2:	200165b7          	lui	a1,0x20016
200122b6:	cf858613          	add	a2,a1,-776 # 20015cf8 <.L__unnamed_10>
200122ba:	04800593          	li	a1,72
200122be:	00002097          	auipc	ra,0x2
200122c2:	694080e7          	jalr	1684(ra) # 20014952 <core::panicking::panic>
200122c6:	0000                	unimp
200122c8:	45da                	lw	a1,148(sp)
200122ca:	02dc7537          	lui	a0,0x2dc7
200122ce:	c0050513          	add	a0,a0,-1024 # 2dc6c00 <.Lline_table_start2+0x2d85de8>
200122d2:	fcb56ce3          	bltu	a0,a1,200122aa <e310x_hal::clock::CoreClk::configure_pll+0x20>
200122d6:	a009                	j	200122d8 <e310x_hal::clock::CoreClk::configure_pll+0x4e>
        let divout_freq = divout_freq.0;
200122d8:	45ca                	lw	a1,144(sp)
200122da:	d7ae                	sw	a1,236(sp)
200122dc:	0005c537          	lui	a0,0x5c
200122e0:	8d750513          	add	a0,a0,-1833 # 5b8d7 <.Lline_table_start2+0x1aabf>
        assert!(DIVOUT_MIN <= divout_freq && divout_freq <= DIVOUT_MAX);
200122e4:	02b56263          	bltu	a0,a1,20012308 <e310x_hal::clock::CoreClk::configure_pll+0x7e>
200122e8:	a009                	j	200122ea <e310x_hal::clock::CoreClk::configure_pll+0x60>
200122ea:	20016537          	lui	a0,0x20016
200122ee:	d0850513          	add	a0,a0,-760 # 20015d08 <.L__unnamed_11>
200122f2:	200165b7          	lui	a1,0x20016
200122f6:	d5058613          	add	a2,a1,-688 # 20015d50 <.L__unnamed_12>
200122fa:	04800593          	li	a1,72
200122fe:	00002097          	auipc	ra,0x2
20012302:	654080e7          	jalr	1620(ra) # 20014952 <core::panicking::panic>
20012306:	0000                	unimp
20012308:	45ca                	lw	a1,144(sp)
2001230a:	16e36537          	lui	a0,0x16e36
2001230e:	fcb56ee3          	bltu	a0,a1,200122ea <e310x_hal::clock::CoreClk::configure_pll+0x60>
20012312:	a009                	j	20012314 <e310x_hal::clock::CoreClk::configure_pll+0x8a>
        let d = PLLOUT_MAX / divout_freq;
20012314:	454a                	lw	a0,144(sp)
20012316:	cd09                	beqz	a0,20012330 <e310x_hal::clock::CoreClk::configure_pll+0xa6>
20012318:	a009                	j	2001231a <e310x_hal::clock::CoreClk::configure_pll+0x90>
2001231a:	45ca                	lw	a1,144(sp)
2001231c:	16e36537          	lui	a0,0x16e36
20012320:	02b555b3          	divu	a1,a0,a1
20012324:	c72e                	sw	a1,140(sp)
20012326:	d9ae                	sw	a1,240(sp)
20012328:	4505                	li	a0,1
        if d > 1 {
2001232a:	02b56763          	bltu	a0,a1,20012358 <e310x_hal::clock::CoreClk::configure_pll+0xce>
2001232e:	a839                	j	2001234c <e310x_hal::clock::CoreClk::configure_pll+0xc2>
        let d = PLLOUT_MAX / divout_freq;
20012330:	20016537          	lui	a0,0x20016
20012334:	d7050513          	add	a0,a0,-656 # 20015d70 <str.2>
20012338:	200165b7          	lui	a1,0x20016
2001233c:	d6058613          	add	a2,a1,-672 # 20015d60 <.L__unnamed_13>
20012340:	45e5                	li	a1,25
20012342:	00002097          	auipc	ra,0x2
20012346:	610080e7          	jalr	1552(ra) # 20014952 <core::panicking::panic>
2001234a:	0000                	unimp
2001234c:	4501                	li	a0,0
            divider_div = 0;
2001234e:	d12a                	sw	a0,160(sp)
20012350:	4505                	li	a0,1
            divider_bypass = true;
20012352:	0aa103a3          	sb	a0,167(sp)
        if d > 1 {
20012356:	a811                	j	2001236a <e310x_hal::clock::CoreClk::configure_pll+0xe0>
20012358:	45ba                	lw	a1,140(sp)
2001235a:	4501                	li	a0,0
            divider_bypass = false;
2001235c:	0aa103a3          	sb	a0,167(sp)
20012360:	08000513          	li	a0,128
            if d > 128 {
20012364:	00b56f63          	bltu	a0,a1,20012382 <e310x_hal::clock::CoreClk::configure_pll+0xf8>
20012368:	a031                	j	20012374 <e310x_hal::clock::CoreClk::configure_pll+0xea>
        let d = if divider_bypass {
2001236a:	0a714503          	lbu	a0,167(sp)
2001236e:	8905                	and	a0,a0,1
20012370:	e521                	bnez	a0,200123b8 <e310x_hal::clock::CoreClk::configure_pll+0x12e>
20012372:	a835                	j	200123ae <e310x_hal::clock::CoreClk::configure_pll+0x124>
                divider_div = (d / 2) - 1;
20012374:	453a                	lw	a0,140(sp)
20012376:	8105                	srl	a0,a0,0x1
20012378:	fff50593          	add	a1,a0,-1
2001237c:	c52e                	sw	a1,136(sp)
2001237e:	c909                	beqz	a0,20012390 <e310x_hal::clock::CoreClk::configure_pll+0x106>
20012380:	a029                	j	2001238a <e310x_hal::clock::CoreClk::configure_pll+0x100>
20012382:	03f00513          	li	a0,63
                divider_div = (128 / 2) - 1;
20012386:	d12a                	sw	a0,160(sp)
            if d > 128 {
20012388:	b7cd                	j	2001236a <e310x_hal::clock::CoreClk::configure_pll+0xe0>
                divider_div = (d / 2) - 1;
2001238a:	452a                	lw	a0,136(sp)
2001238c:	d12a                	sw	a0,160(sp)
            if d > 128 {
2001238e:	bff1                	j	2001236a <e310x_hal::clock::CoreClk::configure_pll+0xe0>
                divider_div = (d / 2) - 1;
20012390:	20016537          	lui	a0,0x20016
20012394:	da050513          	add	a0,a0,-608 # 20015da0 <str.3>
20012398:	200165b7          	lui	a1,0x20016
2001239c:	d8c58613          	add	a2,a1,-628 # 20015d8c <.L__unnamed_14>
200123a0:	02100593          	li	a1,33
200123a4:	00002097          	auipc	ra,0x2
200123a8:	5ae080e7          	jalr	1454(ra) # 20014952 <core::panicking::panic>
200123ac:	0000                	unimp
            2 * (divider_div + 1)
200123ae:	550a                	lw	a0,160(sp)
200123b0:	0505                	add	a0,a0,1
200123b2:	c32a                	sw	a0,132(sp)
200123b4:	cd01                	beqz	a0,200123cc <e310x_hal::clock::CoreClk::configure_pll+0x142>
200123b6:	a021                	j	200123be <e310x_hal::clock::CoreClk::configure_pll+0x134>
200123b8:	4505                	li	a0,1
            1
200123ba:	d52a                	sw	a0,168(sp)
        let d = if divider_bypass {
200123bc:	a881                	j	2001240c <e310x_hal::clock::CoreClk::configure_pll+0x182>
            2 * (divider_div + 1)
200123be:	459a                	lw	a1,132(sp)
200123c0:	00b58533          	add	a0,a1,a1
200123c4:	c12a                	sw	a0,128(sp)
200123c6:	02b56463          	bltu	a0,a1,200123ee <e310x_hal::clock::CoreClk::configure_pll+0x164>
200123ca:	a839                	j	200123e8 <e310x_hal::clock::CoreClk::configure_pll+0x15e>
200123cc:	20016537          	lui	a0,0x20016
200123d0:	de050513          	add	a0,a0,-544 # 20015de0 <str.4>
200123d4:	200165b7          	lui	a1,0x20016
200123d8:	dc458613          	add	a2,a1,-572 # 20015dc4 <.L__unnamed_15>
200123dc:	45f1                	li	a1,28
200123de:	00002097          	auipc	ra,0x2
200123e2:	574080e7          	jalr	1396(ra) # 20014952 <core::panicking::panic>
200123e6:	0000                	unimp
200123e8:	450a                	lw	a0,128(sp)
200123ea:	d52a                	sw	a0,168(sp)
        let d = if divider_bypass {
200123ec:	a005                	j	2001240c <e310x_hal::clock::CoreClk::configure_pll+0x182>
            2 * (divider_div + 1)
200123ee:	20016537          	lui	a0,0x20016
200123f2:	e1050513          	add	a0,a0,-496 # 20015e10 <str.5>
200123f6:	200165b7          	lui	a1,0x20016
200123fa:	dfc58613          	add	a2,a1,-516 # 20015dfc <.L__unnamed_16>
200123fe:	02100593          	li	a1,33
20012402:	00002097          	auipc	ra,0x2
20012406:	550080e7          	jalr	1360(ra) # 20014952 <core::panicking::panic>
2001240a:	0000                	unimp
        let pllout_freq = divout_freq * d;
2001240c:	454a                	lw	a0,144(sp)
2001240e:	55aa                	lw	a1,168(sp)
20012410:	02b50633          	mul	a2,a0,a1
20012414:	deb2                	sw	a2,124(sp)
20012416:	02b53533          	mulhu	a0,a0,a1
2001241a:	e919                	bnez	a0,20012430 <e310x_hal::clock::CoreClk::configure_pll+0x1a6>
2001241c:	a009                	j	2001241e <e310x_hal::clock::CoreClk::configure_pll+0x194>
2001241e:	55f6                	lw	a1,124(sp)
20012420:	dbae                	sw	a1,244(sp)
20012422:	02dc7537          	lui	a0,0x2dc7
20012426:	bff50513          	add	a0,a0,-1025 # 2dc6bff <.Lline_table_start2+0x2d85de7>
        assert!(PLLOUT_MIN <= pllout_freq && pllout_freq <= PLLOUT_MAX);
2001242a:	04b56163          	bltu	a0,a1,2001246c <e310x_hal::clock::CoreClk::configure_pll+0x1e2>
2001242e:	a005                	j	2001244e <e310x_hal::clock::CoreClk::configure_pll+0x1c4>
        let pllout_freq = divout_freq * d;
20012430:	20016537          	lui	a0,0x20016
20012434:	e1050513          	add	a0,a0,-496 # 20015e10 <str.5>
20012438:	200165b7          	lui	a1,0x20016
2001243c:	e3458613          	add	a2,a1,-460 # 20015e34 <.L__unnamed_17>
20012440:	02100593          	li	a1,33
20012444:	00002097          	auipc	ra,0x2
20012448:	50e080e7          	jalr	1294(ra) # 20014952 <core::panicking::panic>
2001244c:	0000                	unimp
        assert!(PLLOUT_MIN <= pllout_freq && pllout_freq <= PLLOUT_MAX);
2001244e:	20016537          	lui	a0,0x20016
20012452:	e4450513          	add	a0,a0,-444 # 20015e44 <.L__unnamed_18>
20012456:	200165b7          	lui	a1,0x20016
2001245a:	e8c58613          	add	a2,a1,-372 # 20015e8c <.L__unnamed_19>
2001245e:	04800593          	li	a1,72
20012462:	00002097          	auipc	ra,0x2
20012466:	4f0080e7          	jalr	1264(ra) # 20014952 <core::panicking::panic>
2001246a:	0000                	unimp
2001246c:	55f6                	lw	a1,124(sp)
2001246e:	16e36537          	lui	a0,0x16e36
20012472:	fcb56ee3          	bltu	a0,a1,2001244e <e310x_hal::clock::CoreClk::configure_pll+0x1c4>
20012476:	a009                	j	20012478 <e310x_hal::clock::CoreClk::configure_pll+0x1ee>
20012478:	45da                	lw	a1,148(sp)
2001247a:	016e3537          	lui	a0,0x16e3
2001247e:	5ff50513          	add	a0,a0,1535 # 16e35ff <.Lline_table_start2+0x16a27e7>
            24_000_000..=48_000_000 => 4,
20012482:	00b56b63          	bltu	a0,a1,20012498 <e310x_hal::clock::CoreClk::configure_pll+0x20e>
20012486:	a009                	j	20012488 <e310x_hal::clock::CoreClk::configure_pll+0x1fe>
20012488:	45da                	lw	a1,148(sp)
2001248a:	0112b537          	lui	a0,0x112b
2001248e:	87f50513          	add	a0,a0,-1921 # 112a87f <.Lline_table_start2+0x10e9a67>
            18_000_000..=23_999_999 => 3,
20012492:	02b56663          	bltu	a0,a1,200124be <e310x_hal::clock::CoreClk::configure_pll+0x234>
20012496:	a821                	j	200124ae <e310x_hal::clock::CoreClk::configure_pll+0x224>
20012498:	45da                	lw	a1,148(sp)
2001249a:	02dc7537          	lui	a0,0x2dc7
2001249e:	c0050513          	add	a0,a0,-1024 # 2dc6c00 <.Lline_table_start2+0x2d85de8>
            24_000_000..=48_000_000 => 4,
200124a2:	feb563e3          	bltu	a0,a1,20012488 <e310x_hal::clock::CoreClk::configure_pll+0x1fe>
200124a6:	a009                	j	200124a8 <e310x_hal::clock::CoreClk::configure_pll+0x21e>
200124a8:	4511                	li	a0,4
200124aa:	d72a                	sw	a0,172(sp)
200124ac:	a049                	j	2001252e <e310x_hal::clock::CoreClk::configure_pll+0x2a4>
200124ae:	45da                	lw	a1,148(sp)
200124b0:	00b72537          	lui	a0,0xb72
200124b4:	aff50513          	add	a0,a0,-1281 # b71aff <.Lline_table_start2+0xb30ce7>
            12_000_000..=17_999_999 => 2,
200124b8:	02b56663          	bltu	a0,a1,200124e4 <e310x_hal::clock::CoreClk::configure_pll+0x25a>
200124bc:	a821                	j	200124d4 <e310x_hal::clock::CoreClk::configure_pll+0x24a>
200124be:	45da                	lw	a1,148(sp)
200124c0:	016e3537          	lui	a0,0x16e3
200124c4:	5ff50513          	add	a0,a0,1535 # 16e35ff <.Lline_table_start2+0x16a27e7>
            18_000_000..=23_999_999 => 3,
200124c8:	feb563e3          	bltu	a0,a1,200124ae <e310x_hal::clock::CoreClk::configure_pll+0x224>
200124cc:	a009                	j	200124ce <e310x_hal::clock::CoreClk::configure_pll+0x244>
200124ce:	450d                	li	a0,3
200124d0:	d72a                	sw	a0,172(sp)
200124d2:	a8b1                	j	2001252e <e310x_hal::clock::CoreClk::configure_pll+0x2a4>
200124d4:	45da                	lw	a1,148(sp)
200124d6:	005b9537          	lui	a0,0x5b9
200124da:	d7f50513          	add	a0,a0,-641 # 5b8d7f <.Lline_table_start2+0x577f67>
            6_000_000..=11_999_999 => 1,
200124de:	02b56d63          	bltu	a0,a1,20012518 <e310x_hal::clock::CoreClk::configure_pll+0x28e>
200124e2:	a821                	j	200124fa <e310x_hal::clock::CoreClk::configure_pll+0x270>
200124e4:	45da                	lw	a1,148(sp)
200124e6:	0112b537          	lui	a0,0x112b
200124ea:	87f50513          	add	a0,a0,-1921 # 112a87f <.Lline_table_start2+0x10e9a67>
            12_000_000..=17_999_999 => 2,
200124ee:	feb563e3          	bltu	a0,a1,200124d4 <e310x_hal::clock::CoreClk::configure_pll+0x24a>
200124f2:	a009                	j	200124f4 <e310x_hal::clock::CoreClk::configure_pll+0x26a>
200124f4:	4509                	li	a0,2
200124f6:	d72a                	sw	a0,172(sp)
200124f8:	a81d                	j	2001252e <e310x_hal::clock::CoreClk::configure_pll+0x2a4>
            _ => unreachable!(),
200124fa:	20016537          	lui	a0,0x20016
200124fe:	e9c50513          	add	a0,a0,-356 # 20015e9c <.L__unnamed_20>
20012502:	200165b7          	lui	a1,0x20016
20012506:	ec458613          	add	a2,a1,-316 # 20015ec4 <.L__unnamed_21>
2001250a:	02800593          	li	a1,40
2001250e:	00002097          	auipc	ra,0x2
20012512:	444080e7          	jalr	1092(ra) # 20014952 <core::panicking::panic>
20012516:	0000                	unimp
20012518:	45da                	lw	a1,148(sp)
2001251a:	00b72537          	lui	a0,0xb72
2001251e:	aff50513          	add	a0,a0,-1281 # b71aff <.Lline_table_start2+0xb30ce7>
            6_000_000..=11_999_999 => 1,
20012522:	fcb56ce3          	bltu	a0,a1,200124fa <e310x_hal::clock::CoreClk::configure_pll+0x270>
20012526:	a009                	j	20012528 <e310x_hal::clock::CoreClk::configure_pll+0x29e>
20012528:	4505                	li	a0,1
2001252a:	d72a                	sw	a0,172(sp)
2001252c:	a009                	j	2001252e <e310x_hal::clock::CoreClk::configure_pll+0x2a4>
        let refr_freq = pllref_freq / r;
2001252e:	553a                	lw	a0,172(sp)
20012530:	dcaa                	sw	a0,120(sp)
20012532:	cd19                	beqz	a0,20012550 <e310x_hal::clock::CoreClk::configure_pll+0x2c6>
20012534:	a009                	j	20012536 <e310x_hal::clock::CoreClk::configure_pll+0x2ac>
20012536:	455a                	lw	a0,148(sp)
20012538:	55e6                	lw	a1,120(sp)
2001253a:	02b555b3          	divu	a1,a0,a1
2001253e:	daae                	sw	a1,116(sp)
20012540:	ddae                	sw	a1,248(sp)
20012542:	005b9537          	lui	a0,0x5b9
20012546:	d7f50513          	add	a0,a0,-641 # 5b8d7f <.Lline_table_start2+0x577f67>
        assert!(REFR_MIN <= refr_freq && refr_freq <= REFR_MAX);
2001254a:	04b56063          	bltu	a0,a1,2001258a <e310x_hal::clock::CoreClk::configure_pll+0x300>
2001254e:	a839                	j	2001256c <e310x_hal::clock::CoreClk::configure_pll+0x2e2>
        let refr_freq = pllref_freq / r;
20012550:	20016537          	lui	a0,0x20016
20012554:	d7050513          	add	a0,a0,-656 # 20015d70 <str.2>
20012558:	200165b7          	lui	a1,0x20016
2001255c:	ed458613          	add	a2,a1,-300 # 20015ed4 <.L__unnamed_22>
20012560:	45e5                	li	a1,25
20012562:	00002097          	auipc	ra,0x2
20012566:	3f0080e7          	jalr	1008(ra) # 20014952 <core::panicking::panic>
2001256a:	0000                	unimp
        assert!(REFR_MIN <= refr_freq && refr_freq <= REFR_MAX);
2001256c:	20016537          	lui	a0,0x20016
20012570:	ee450513          	add	a0,a0,-284 # 20015ee4 <.L__unnamed_23>
20012574:	200165b7          	lui	a1,0x20016
20012578:	f2458613          	add	a2,a1,-220 # 20015f24 <.L__unnamed_24>
2001257c:	04000593          	li	a1,64
20012580:	00002097          	auipc	ra,0x2
20012584:	3d2080e7          	jalr	978(ra) # 20014952 <core::panicking::panic>
20012588:	0000                	unimp
2001258a:	55d6                	lw	a1,116(sp)
2001258c:	00b72537          	lui	a0,0xb72
20012590:	b0050513          	add	a0,a0,-1280 # b71b00 <.Lline_table_start2+0xb30ce8>
20012594:	fcb56ce3          	bltu	a0,a1,2001256c <e310x_hal::clock::CoreClk::configure_pll+0x2e2>
20012598:	a009                	j	2001259a <e310x_hal::clock::CoreClk::configure_pll+0x310>
2001259a:	55f6                	lw	a1,124(sp)
2001259c:	0b71b537          	lui	a0,0xb71b
200125a0:	157d                	add	a0,a0,-1 # b71afff <.Lline_table_start2+0xb6da1e7>
            192_000_000..=384_000_000 => 2,
200125a2:	00b56b63          	bltu	a0,a1,200125b8 <e310x_hal::clock::CoreClk::configure_pll+0x32e>
200125a6:	a009                	j	200125a8 <e310x_hal::clock::CoreClk::configure_pll+0x31e>
200125a8:	55f6                	lw	a1,124(sp)
200125aa:	05b8d537          	lui	a0,0x5b8d
200125ae:	7ff50513          	add	a0,a0,2047 # 5b8d7ff <.Lline_table_start2+0x5b4c9e7>
            96_000_000..=191_999_999 => 4,
200125b2:	02b56463          	bltu	a0,a1,200125da <e310x_hal::clock::CoreClk::configure_pll+0x350>
200125b6:	a811                	j	200125ca <e310x_hal::clock::CoreClk::configure_pll+0x340>
200125b8:	55f6                	lw	a1,124(sp)
200125ba:	16e36537          	lui	a0,0x16e36
            192_000_000..=384_000_000 => 2,
200125be:	feb565e3          	bltu	a0,a1,200125a8 <e310x_hal::clock::CoreClk::configure_pll+0x31e>
200125c2:	a009                	j	200125c4 <e310x_hal::clock::CoreClk::configure_pll+0x33a>
200125c4:	4509                	li	a0,2
200125c6:	d92a                	sw	a0,176(sp)
200125c8:	a8a9                	j	20012622 <e310x_hal::clock::CoreClk::configure_pll+0x398>
200125ca:	55f6                	lw	a1,124(sp)
200125cc:	02dc7537          	lui	a0,0x2dc7
200125d0:	bff50513          	add	a0,a0,-1025 # 2dc6bff <.Lline_table_start2+0x2d85de7>
            48_000_000..=95_999_999 => 8,
200125d4:	02b56c63          	bltu	a0,a1,2001260c <e310x_hal::clock::CoreClk::configure_pll+0x382>
200125d8:	a819                	j	200125ee <e310x_hal::clock::CoreClk::configure_pll+0x364>
200125da:	55f6                	lw	a1,124(sp)
200125dc:	0b71b537          	lui	a0,0xb71b
200125e0:	157d                	add	a0,a0,-1 # b71afff <.Lline_table_start2+0xb6da1e7>
            96_000_000..=191_999_999 => 4,
200125e2:	feb564e3          	bltu	a0,a1,200125ca <e310x_hal::clock::CoreClk::configure_pll+0x340>
200125e6:	a009                	j	200125e8 <e310x_hal::clock::CoreClk::configure_pll+0x35e>
200125e8:	4511                	li	a0,4
200125ea:	d92a                	sw	a0,176(sp)
200125ec:	a81d                	j	20012622 <e310x_hal::clock::CoreClk::configure_pll+0x398>
            _ => unreachable!(),
200125ee:	20016537          	lui	a0,0x20016
200125f2:	e9c50513          	add	a0,a0,-356 # 20015e9c <.L__unnamed_20>
200125f6:	200165b7          	lui	a1,0x20016
200125fa:	f3458613          	add	a2,a1,-204 # 20015f34 <.L__unnamed_25>
200125fe:	02800593          	li	a1,40
20012602:	00002097          	auipc	ra,0x2
20012606:	350080e7          	jalr	848(ra) # 20014952 <core::panicking::panic>
2001260a:	0000                	unimp
2001260c:	55f6                	lw	a1,124(sp)
2001260e:	05b8d537          	lui	a0,0x5b8d
20012612:	7ff50513          	add	a0,a0,2047 # 5b8d7ff <.Lline_table_start2+0x5b4c9e7>
            48_000_000..=95_999_999 => 8,
20012616:	fcb56ce3          	bltu	a0,a1,200125ee <e310x_hal::clock::CoreClk::configure_pll+0x364>
2001261a:	a009                	j	2001261c <e310x_hal::clock::CoreClk::configure_pll+0x392>
2001261c:	4521                	li	a0,8
2001261e:	d92a                	sw	a0,176(sp)
20012620:	a009                	j	20012622 <e310x_hal::clock::CoreClk::configure_pll+0x398>
        let target_vco_freq = pllout_freq * q;
20012622:	5576                	lw	a0,124(sp)
20012624:	55ca                	lw	a1,176(sp)
20012626:	02b50633          	mul	a2,a0,a1
2001262a:	d8b2                	sw	a2,112(sp)
2001262c:	02b53533          	mulhu	a0,a0,a1
20012630:	e911                	bnez	a0,20012644 <e310x_hal::clock::CoreClk::configure_pll+0x3ba>
20012632:	a009                	j	20012634 <e310x_hal::clock::CoreClk::configure_pll+0x3aa>
20012634:	55c6                	lw	a1,112(sp)
20012636:	dfae                	sw	a1,252(sp)
20012638:	16e36537          	lui	a0,0x16e36
2001263c:	157d                	add	a0,a0,-1 # 16e35fff <.Lline_table_start2+0x16df51e7>
        assert!(VCO_MIN <= target_vco_freq && target_vco_freq <= VCO_MAX);
2001263e:	04b56163          	bltu	a0,a1,20012680 <e310x_hal::clock::CoreClk::configure_pll+0x3f6>
20012642:	a005                	j	20012662 <e310x_hal::clock::CoreClk::configure_pll+0x3d8>
        let target_vco_freq = pllout_freq * q;
20012644:	20016537          	lui	a0,0x20016
20012648:	e1050513          	add	a0,a0,-496 # 20015e10 <str.5>
2001264c:	200165b7          	lui	a1,0x20016
20012650:	f4458613          	add	a2,a1,-188 # 20015f44 <.L__unnamed_26>
20012654:	02100593          	li	a1,33
20012658:	00002097          	auipc	ra,0x2
2001265c:	2fa080e7          	jalr	762(ra) # 20014952 <core::panicking::panic>
20012660:	0000                	unimp
        assert!(VCO_MIN <= target_vco_freq && target_vco_freq <= VCO_MAX);
20012662:	20016537          	lui	a0,0x20016
20012666:	f5450513          	add	a0,a0,-172 # 20015f54 <.L__unnamed_27>
2001266a:	200165b7          	lui	a1,0x20016
2001266e:	fa058613          	add	a2,a1,-96 # 20015fa0 <.L__unnamed_28>
20012672:	04a00593          	li	a1,74
20012676:	00002097          	auipc	ra,0x2
2001267a:	2dc080e7          	jalr	732(ra) # 20014952 <core::panicking::panic>
2001267e:	0000                	unimp
20012680:	55c6                	lw	a1,112(sp)
20012682:	2dc6c537          	lui	a0,0x2dc6c
20012686:	fcb56ee3          	bltu	a0,a1,20012662 <e310x_hal::clock::CoreClk::configure_pll+0x3d8>
2001268a:	a009                	j	2001268c <e310x_hal::clock::CoreClk::configure_pll+0x402>
        let f = target_vco_freq / refr_freq;
2001268c:	5556                	lw	a0,116(sp)
2001268e:	cd11                	beqz	a0,200126aa <e310x_hal::clock::CoreClk::configure_pll+0x420>
20012690:	a009                	j	20012692 <e310x_hal::clock::CoreClk::configure_pll+0x408>
20012692:	5546                	lw	a0,112(sp)
20012694:	55d6                	lw	a1,116(sp)
20012696:	02b55533          	divu	a0,a0,a1
2001269a:	d6aa                	sw	a0,108(sp)
2001269c:	10a12023          	sw	a0,256(sp)
200126a0:	08100593          	li	a1,129
        assert!(f <= 128);
200126a4:	02b56f63          	bltu	a0,a1,200126e2 <e310x_hal::clock::CoreClk::configure_pll+0x458>
200126a8:	a839                	j	200126c6 <e310x_hal::clock::CoreClk::configure_pll+0x43c>
        let f = target_vco_freq / refr_freq;
200126aa:	20016537          	lui	a0,0x20016
200126ae:	d7050513          	add	a0,a0,-656 # 20015d70 <str.2>
200126b2:	200165b7          	lui	a1,0x20016
200126b6:	fb058613          	add	a2,a1,-80 # 20015fb0 <.L__unnamed_29>
200126ba:	45e5                	li	a1,25
200126bc:	00002097          	auipc	ra,0x2
200126c0:	296080e7          	jalr	662(ra) # 20014952 <core::panicking::panic>
200126c4:	0000                	unimp
        assert!(f <= 128);
200126c6:	20016537          	lui	a0,0x20016
200126ca:	fc050513          	add	a0,a0,-64 # 20015fc0 <.L__unnamed_30>
200126ce:	200165b7          	lui	a1,0x20016
200126d2:	fdc58613          	add	a2,a1,-36 # 20015fdc <.L__unnamed_31>
200126d6:	45e9                	li	a1,26
200126d8:	00002097          	auipc	ra,0x2
200126dc:	27a080e7          	jalr	634(ra) # 20014952 <core::panicking::panic>
200126e0:	0000                	unimp
        let f_lo = (f / 2) * 2; // F must be a multiple of 2
200126e2:	5536                	lw	a0,108(sp)
200126e4:	8105                	srl	a0,a0,0x1
200126e6:	952a                	add	a0,a0,a0
200126e8:	d4aa                	sw	a0,104(sp)
200126ea:	4501                	li	a0,0
200126ec:	ed09                	bnez	a0,20012706 <e310x_hal::clock::CoreClk::configure_pll+0x47c>
200126ee:	a009                	j	200126f0 <e310x_hal::clock::CoreClk::configure_pll+0x466>
200126f0:	5556                	lw	a0,116(sp)
200126f2:	55a6                	lw	a1,104(sp)
200126f4:	10b12223          	sw	a1,260(sp)
        let vco_lo = refr_freq * f_lo;
200126f8:	02b50633          	mul	a2,a0,a1
200126fc:	d2b2                	sw	a2,100(sp)
200126fe:	02b53533          	mulhu	a0,a0,a1
20012702:	e91d                	bnez	a0,20012738 <e310x_hal::clock::CoreClk::configure_pll+0x4ae>
20012704:	a005                	j	20012724 <e310x_hal::clock::CoreClk::configure_pll+0x49a>
        let f_lo = (f / 2) * 2; // F must be a multiple of 2
20012706:	20016537          	lui	a0,0x20016
2001270a:	e1050513          	add	a0,a0,-496 # 20015e10 <str.5>
2001270e:	200165b7          	lui	a1,0x20016
20012712:	fec58613          	add	a2,a1,-20 # 20015fec <.L__unnamed_32>
20012716:	02100593          	li	a1,33
2001271a:	00002097          	auipc	ra,0x2
2001271e:	238080e7          	jalr	568(ra) # 20014952 <core::panicking::panic>
20012722:	0000                	unimp
        let vco_lo = refr_freq * f_lo;
20012724:	55a6                	lw	a1,104(sp)
20012726:	5516                	lw	a0,100(sp)
20012728:	10a12423          	sw	a0,264(sp)
        let f_hi = f_lo + 2;
2001272c:	00258513          	add	a0,a1,2
20012730:	d0aa                	sw	a0,96(sp)
20012732:	02b56d63          	bltu	a0,a1,2001276c <e310x_hal::clock::CoreClk::configure_pll+0x4e2>
20012736:	a005                	j	20012756 <e310x_hal::clock::CoreClk::configure_pll+0x4cc>
        let vco_lo = refr_freq * f_lo;
20012738:	20016537          	lui	a0,0x20016
2001273c:	e1050513          	add	a0,a0,-496 # 20015e10 <str.5>
20012740:	200165b7          	lui	a1,0x20016
20012744:	ffc58613          	add	a2,a1,-4 # 20015ffc <.L__unnamed_33>
20012748:	02100593          	li	a1,33
2001274c:	00002097          	auipc	ra,0x2
20012750:	206080e7          	jalr	518(ra) # 20014952 <core::panicking::panic>
20012754:	0000                	unimp
        let f_hi = f_lo + 2;
20012756:	5556                	lw	a0,116(sp)
20012758:	5586                	lw	a1,96(sp)
2001275a:	10b12623          	sw	a1,268(sp)
        let vco_hi = refr_freq * f_hi;
2001275e:	02b50633          	mul	a2,a0,a1
20012762:	ceb2                	sw	a2,92(sp)
20012764:	02b53533          	mulhu	a0,a0,a1
20012768:	e90d                	bnez	a0,2001279a <e310x_hal::clock::CoreClk::configure_pll+0x510>
2001276a:	a839                	j	20012788 <e310x_hal::clock::CoreClk::configure_pll+0x4fe>
        let f_hi = f_lo + 2;
2001276c:	20016537          	lui	a0,0x20016
20012770:	de050513          	add	a0,a0,-544 # 20015de0 <str.4>
20012774:	200165b7          	lui	a1,0x20016
20012778:	00c58613          	add	a2,a1,12 # 2001600c <.L__unnamed_34>
2001277c:	45f1                	li	a1,28
2001277e:	00002097          	auipc	ra,0x2
20012782:	1d4080e7          	jalr	468(ra) # 20014952 <core::panicking::panic>
20012786:	0000                	unimp
        let vco_hi = refr_freq * f_hi;
20012788:	5506                	lw	a0,96(sp)
2001278a:	45f6                	lw	a1,92(sp)
2001278c:	10b12823          	sw	a1,272(sp)
20012790:	08100593          	li	a1,129
        let (f, vco_freq) = if (f_hi <= 128 && vco_hi <= VCO_MAX)
20012794:	02b56763          	bltu	a0,a1,200127c2 <e310x_hal::clock::CoreClk::configure_pll+0x538>
20012798:	a005                	j	200127b8 <e310x_hal::clock::CoreClk::configure_pll+0x52e>
        let vco_hi = refr_freq * f_hi;
2001279a:	20016537          	lui	a0,0x20016
2001279e:	e1050513          	add	a0,a0,-496 # 20015e10 <str.5>
200127a2:	200165b7          	lui	a1,0x20016
200127a6:	01c58613          	add	a2,a1,28 # 2001601c <.L__unnamed_35>
200127aa:	02100593          	li	a1,33
200127ae:	00002097          	auipc	ra,0x2
200127b2:	1a4080e7          	jalr	420(ra) # 20014952 <core::panicking::panic>
200127b6:	0000                	unimp
            (f_lo, vco_lo)
200127b8:	5516                	lw	a0,100(sp)
200127ba:	55a6                	lw	a1,104(sp)
200127bc:	db2e                	sw	a1,180(sp)
200127be:	dd2a                	sw	a0,184(sp)
        let (f, vco_freq) = if (f_hi <= 128 && vco_hi <= VCO_MAX)
200127c0:	a065                	j	20012868 <e310x_hal::clock::CoreClk::configure_pll+0x5de>
200127c2:	45f6                	lw	a1,92(sp)
200127c4:	2dc6c537          	lui	a0,0x2dc6c
200127c8:	feb568e3          	bltu	a0,a1,200127b8 <e310x_hal::clock::CoreClk::configure_pll+0x52e>
200127cc:	a009                	j	200127ce <e310x_hal::clock::CoreClk::configure_pll+0x544>
200127ce:	5646                	lw	a2,112(sp)
200127d0:	45f6                	lw	a1,92(sp)
200127d2:	4501                	li	a0,0
            && (target_vco_freq as i32 - vco_hi as i32).abs()
200127d4:	00b52533          	slt	a0,a0,a1
200127d8:	40b605b3          	sub	a1,a2,a1
200127dc:	ccae                	sw	a1,88(sp)
200127de:	00c5a5b3          	slt	a1,a1,a2
200127e2:	02b51663          	bne	a0,a1,2001280e <e310x_hal::clock::CoreClk::configure_pll+0x584>
200127e6:	a009                	j	200127e8 <e310x_hal::clock::CoreClk::configure_pll+0x55e>
200127e8:	4566                	lw	a0,88(sp)
200127ea:	fffff097          	auipc	ra,0xfffff
200127ee:	11a080e7          	jalr	282(ra) # 20011904 <core::num::<impl i32>::abs>
200127f2:	5596                	lw	a1,100(sp)
200127f4:	5646                	lw	a2,112(sp)
200127f6:	c8aa                	sw	a0,80(sp)
200127f8:	4501                	li	a0,0
                < (target_vco_freq as i32 - vco_lo as i32).abs()
200127fa:	00b52533          	slt	a0,a0,a1
200127fe:	40b605b3          	sub	a1,a2,a1
20012802:	caae                	sw	a1,84(sp)
20012804:	00c5a5b3          	slt	a1,a1,a2
20012808:	02b51c63          	bne	a0,a1,20012840 <e310x_hal::clock::CoreClk::configure_pll+0x5b6>
2001280c:	a005                	j	2001282c <e310x_hal::clock::CoreClk::configure_pll+0x5a2>
            && (target_vco_freq as i32 - vco_hi as i32).abs()
2001280e:	20016537          	lui	a0,0x20016
20012812:	da050513          	add	a0,a0,-608 # 20015da0 <str.3>
20012816:	200165b7          	lui	a1,0x20016
2001281a:	02c58613          	add	a2,a1,44 # 2001602c <.L__unnamed_36>
2001281e:	02100593          	li	a1,33
20012822:	00002097          	auipc	ra,0x2
20012826:	130080e7          	jalr	304(ra) # 20014952 <core::panicking::panic>
2001282a:	0000                	unimp
                < (target_vco_freq as i32 - vco_lo as i32).abs()
2001282c:	4556                	lw	a0,84(sp)
2001282e:	fffff097          	auipc	ra,0xfffff
20012832:	0d6080e7          	jalr	214(ra) # 20011904 <core::num::<impl i32>::abs>
20012836:	85aa                	mv	a1,a0
            && (target_vco_freq as i32 - vco_hi as i32).abs()
20012838:	4546                	lw	a0,80(sp)
2001283a:	02b54263          	blt	a0,a1,2001285e <e310x_hal::clock::CoreClk::configure_pll+0x5d4>
2001283e:	bfad                	j	200127b8 <e310x_hal::clock::CoreClk::configure_pll+0x52e>
                < (target_vco_freq as i32 - vco_lo as i32).abs()
20012840:	20016537          	lui	a0,0x20016
20012844:	da050513          	add	a0,a0,-608 # 20015da0 <str.3>
20012848:	200165b7          	lui	a1,0x20016
2001284c:	03c58613          	add	a2,a1,60 # 2001603c <.L__unnamed_37>
20012850:	02100593          	li	a1,33
20012854:	00002097          	auipc	ra,0x2
20012858:	0fe080e7          	jalr	254(ra) # 20014952 <core::panicking::panic>
2001285c:	0000                	unimp
            (f_hi, vco_hi)
2001285e:	4576                	lw	a0,92(sp)
20012860:	5586                	lw	a1,96(sp)
20012862:	db2e                	sw	a1,180(sp)
20012864:	dd2a                	sw	a0,184(sp)
        let (f, vco_freq) = if (f_hi <= 128 && vco_hi <= VCO_MAX)
20012866:	a009                	j	20012868 <e310x_hal::clock::CoreClk::configure_pll+0x5de>
20012868:	555a                	lw	a0,180(sp)
2001286a:	c4aa                	sw	a0,72(sp)
2001286c:	10a12a23          	sw	a0,276(sp)
20012870:	55ea                	lw	a1,184(sp)
20012872:	c6ae                	sw	a1,76(sp)
20012874:	10b12c23          	sw	a1,280(sp)
20012878:	16e36537          	lui	a0,0x16e36
2001287c:	157d                	add	a0,a0,-1 # 16e35fff <.Lline_table_start2+0x16df51e7>
        assert!(VCO_MIN <= vco_freq && vco_freq <= VCO_MAX);
2001287e:	02b56263          	bltu	a0,a1,200128a2 <e310x_hal::clock::CoreClk::configure_pll+0x618>
20012882:	a009                	j	20012884 <e310x_hal::clock::CoreClk::configure_pll+0x5fa>
20012884:	20016537          	lui	a0,0x20016
20012888:	04c50513          	add	a0,a0,76 # 2001604c <.L__unnamed_38>
2001288c:	200165b7          	lui	a1,0x20016
20012890:	08858613          	add	a2,a1,136 # 20016088 <.L__unnamed_39>
20012894:	03c00593          	li	a1,60
20012898:	00002097          	auipc	ra,0x2
2001289c:	0ba080e7          	jalr	186(ra) # 20014952 <core::panicking::panic>
200128a0:	0000                	unimp
200128a2:	45b6                	lw	a1,76(sp)
200128a4:	2dc6c537          	lui	a0,0x2dc6c
200128a8:	fcb56ee3          	bltu	a0,a1,20012884 <e310x_hal::clock::CoreClk::configure_pll+0x5fa>
200128ac:	a009                	j	200128ae <e310x_hal::clock::CoreClk::configure_pll+0x624>
        let pllout_freq = vco_freq / q;
200128ae:	554a                	lw	a0,176(sp)
200128b0:	c2aa                	sw	a0,68(sp)
200128b2:	c105                	beqz	a0,200128d2 <e310x_hal::clock::CoreClk::configure_pll+0x648>
200128b4:	a009                	j	200128b6 <e310x_hal::clock::CoreClk::configure_pll+0x62c>
200128b6:	4536                	lw	a0,76(sp)
200128b8:	4596                	lw	a1,68(sp)
200128ba:	02b555b3          	divu	a1,a0,a1
200128be:	c0ae                	sw	a1,64(sp)
200128c0:	10b12e23          	sw	a1,284(sp)
200128c4:	02dc7537          	lui	a0,0x2dc7
200128c8:	bff50513          	add	a0,a0,-1025 # 2dc6bff <.Lline_table_start2+0x2d85de7>
        assert!(PLLOUT_MIN <= pllout_freq && pllout_freq <= PLLOUT_MAX);
200128cc:	04b56063          	bltu	a0,a1,2001290c <e310x_hal::clock::CoreClk::configure_pll+0x682>
200128d0:	a839                	j	200128ee <e310x_hal::clock::CoreClk::configure_pll+0x664>
        let pllout_freq = vco_freq / q;
200128d2:	20016537          	lui	a0,0x20016
200128d6:	d7050513          	add	a0,a0,-656 # 20015d70 <str.2>
200128da:	200165b7          	lui	a1,0x20016
200128de:	09858613          	add	a2,a1,152 # 20016098 <.L__unnamed_40>
200128e2:	45e5                	li	a1,25
200128e4:	00002097          	auipc	ra,0x2
200128e8:	06e080e7          	jalr	110(ra) # 20014952 <core::panicking::panic>
200128ec:	0000                	unimp
        assert!(PLLOUT_MIN <= pllout_freq && pllout_freq <= PLLOUT_MAX);
200128ee:	20016537          	lui	a0,0x20016
200128f2:	e4450513          	add	a0,a0,-444 # 20015e44 <.L__unnamed_18>
200128f6:	200165b7          	lui	a1,0x20016
200128fa:	0a858613          	add	a2,a1,168 # 200160a8 <.L__unnamed_41>
200128fe:	04800593          	li	a1,72
20012902:	00002097          	auipc	ra,0x2
20012906:	050080e7          	jalr	80(ra) # 20014952 <core::panicking::panic>
2001290a:	0000                	unimp
2001290c:	4586                	lw	a1,64(sp)
2001290e:	16e36537          	lui	a0,0x16e36
20012912:	fcb56ee3          	bltu	a0,a1,200128ee <e310x_hal::clock::CoreClk::configure_pll+0x664>
20012916:	a009                	j	20012918 <e310x_hal::clock::CoreClk::configure_pll+0x68e>
        let divout_freq = pllout_freq / d;
20012918:	552a                	lw	a0,168(sp)
2001291a:	de2a                	sw	a0,60(sp)
2001291c:	c105                	beqz	a0,2001293c <e310x_hal::clock::CoreClk::configure_pll+0x6b2>
2001291e:	a009                	j	20012920 <e310x_hal::clock::CoreClk::configure_pll+0x696>
20012920:	4506                	lw	a0,64(sp)
20012922:	55f2                	lw	a1,60(sp)
20012924:	02b555b3          	divu	a1,a0,a1
20012928:	dc2e                	sw	a1,56(sp)
2001292a:	12b12023          	sw	a1,288(sp)
2001292e:	0005c537          	lui	a0,0x5c
20012932:	8d750513          	add	a0,a0,-1833 # 5b8d7 <.Lline_table_start2+0x1aabf>
        assert!(DIVOUT_MIN <= divout_freq && divout_freq <= DIVOUT_MAX);
20012936:	04b56063          	bltu	a0,a1,20012976 <e310x_hal::clock::CoreClk::configure_pll+0x6ec>
2001293a:	a839                	j	20012958 <e310x_hal::clock::CoreClk::configure_pll+0x6ce>
        let divout_freq = pllout_freq / d;
2001293c:	20016537          	lui	a0,0x20016
20012940:	d7050513          	add	a0,a0,-656 # 20015d70 <str.2>
20012944:	200165b7          	lui	a1,0x20016
20012948:	0b858613          	add	a2,a1,184 # 200160b8 <.L__unnamed_42>
2001294c:	45e5                	li	a1,25
2001294e:	00002097          	auipc	ra,0x2
20012952:	004080e7          	jalr	4(ra) # 20014952 <core::panicking::panic>
20012956:	0000                	unimp
        assert!(DIVOUT_MIN <= divout_freq && divout_freq <= DIVOUT_MAX);
20012958:	20016537          	lui	a0,0x20016
2001295c:	d0850513          	add	a0,a0,-760 # 20015d08 <.L__unnamed_11>
20012960:	200165b7          	lui	a1,0x20016
20012964:	0c858613          	add	a2,a1,200 # 200160c8 <.L__unnamed_43>
20012968:	04800593          	li	a1,72
2001296c:	00002097          	auipc	ra,0x2
20012970:	fe6080e7          	jalr	-26(ra) # 20014952 <core::panicking::panic>
20012974:	0000                	unimp
20012976:	55e2                	lw	a1,56(sp)
20012978:	16e36537          	lui	a0,0x16e36
2001297c:	fcb56ee3          	bltu	a0,a1,20012958 <e310x_hal::clock::CoreClk::configure_pll+0x6ce>
20012980:	a009                	j	20012982 <e310x_hal::clock::CoreClk::configure_pll+0x6f8>
        let r: u8 = (r - 1) as u8;
20012982:	553a                	lw	a0,172(sp)
20012984:	fff50593          	add	a1,a0,-1 # 16e35fff <.Lline_table_start2+0x16df51e7>
20012988:	da2e                	sw	a1,52(sp)
2001298a:	cd01                	beqz	a0,200129a2 <e310x_hal::clock::CoreClk::configure_pll+0x718>
2001298c:	a009                	j	2001298e <e310x_hal::clock::CoreClk::configure_pll+0x704>
2001298e:	4526                	lw	a0,72(sp)
20012990:	55d2                	lw	a1,52(sp)
20012992:	0ab10ea3          	sb	a1,189(sp)
        let f: u8 = (f / 2 - 1) as u8;
20012996:	8105                	srl	a0,a0,0x1
20012998:	fff50593          	add	a1,a0,-1
2001299c:	d82e                	sw	a1,48(sp)
2001299e:	c521                	beqz	a0,200129e6 <e310x_hal::clock::CoreClk::configure_pll+0x75c>
200129a0:	a005                	j	200129c0 <e310x_hal::clock::CoreClk::configure_pll+0x736>
        let r: u8 = (r - 1) as u8;
200129a2:	20016537          	lui	a0,0x20016
200129a6:	da050513          	add	a0,a0,-608 # 20015da0 <str.3>
200129aa:	200165b7          	lui	a1,0x20016
200129ae:	0d858613          	add	a2,a1,216 # 200160d8 <.L__unnamed_44>
200129b2:	02100593          	li	a1,33
200129b6:	00002097          	auipc	ra,0x2
200129ba:	f9c080e7          	jalr	-100(ra) # 20014952 <core::panicking::panic>
200129be:	0000                	unimp
        let f: u8 = (f / 2 - 1) as u8;
200129c0:	5542                	lw	a0,48(sp)
200129c2:	0aa10f23          	sb	a0,190(sp)
        let q: u8 = match q {
200129c6:	554a                	lw	a0,176(sp)
200129c8:	d62a                	sw	a0,44(sp)
200129ca:	4589                	li	a1,2
200129cc:	04b50b63          	beq	a0,a1,20012a22 <e310x_hal::clock::CoreClk::configure_pll+0x798>
200129d0:	a009                	j	200129d2 <e310x_hal::clock::CoreClk::configure_pll+0x748>
200129d2:	5532                	lw	a0,44(sp)
200129d4:	4591                	li	a1,4
200129d6:	04b50a63          	beq	a0,a1,20012a2a <e310x_hal::clock::CoreClk::configure_pll+0x7a0>
200129da:	a009                	j	200129dc <e310x_hal::clock::CoreClk::configure_pll+0x752>
200129dc:	5532                	lw	a0,44(sp)
200129de:	45a1                	li	a1,8
200129e0:	04b50963          	beq	a0,a1,20012a32 <e310x_hal::clock::CoreClk::configure_pll+0x7a8>
200129e4:	a005                	j	20012a04 <e310x_hal::clock::CoreClk::configure_pll+0x77a>
        let f: u8 = (f / 2 - 1) as u8;
200129e6:	20016537          	lui	a0,0x20016
200129ea:	da050513          	add	a0,a0,-608 # 20015da0 <str.3>
200129ee:	200165b7          	lui	a1,0x20016
200129f2:	0e858613          	add	a2,a1,232 # 200160e8 <.L__unnamed_45>
200129f6:	02100593          	li	a1,33
200129fa:	00002097          	auipc	ra,0x2
200129fe:	f58080e7          	jalr	-168(ra) # 20014952 <core::panicking::panic>
20012a02:	0000                	unimp
            _ => unreachable!(),
20012a04:	20016537          	lui	a0,0x20016
20012a08:	e9c50513          	add	a0,a0,-356 # 20015e9c <.L__unnamed_20>
20012a0c:	200165b7          	lui	a1,0x20016
20012a10:	10858613          	add	a2,a1,264 # 20016108 <.L__unnamed_46>
20012a14:	02800593          	li	a1,40
20012a18:	00002097          	auipc	ra,0x2
20012a1c:	f3a080e7          	jalr	-198(ra) # 20014952 <core::panicking::panic>
20012a20:	0000                	unimp
20012a22:	4505                	li	a0,1
            2 => 0b01,
20012a24:	0aa10fa3          	sb	a0,191(sp)
20012a28:	a809                	j	20012a3a <e310x_hal::clock::CoreClk::configure_pll+0x7b0>
20012a2a:	4509                	li	a0,2
            4 => 0b10,
20012a2c:	0aa10fa3          	sb	a0,191(sp)
20012a30:	a029                	j	20012a3a <e310x_hal::clock::CoreClk::configure_pll+0x7b0>
20012a32:	450d                	li	a0,3
            8 => 0b11,
20012a34:	0aa10fa3          	sb	a0,191(sp)
20012a38:	a009                	j	20012a3a <e310x_hal::clock::CoreClk::configure_pll+0x7b0>
20012a3a:	10008537          	lui	a0,0x10008
        let prci = unsafe { &*PRCI::ptr() };
20012a3e:	cc2a                	sw	a0,24(sp)
20012a40:	12a12223          	sw	a0,292(sp)
20012a44:	0bd10593          	add	a1,sp,189
        prci.pllcfg.modify(|_, w| unsafe {
20012a48:	c1ae                	sw	a1,192(sp)
20012a4a:	0be10593          	add	a1,sp,190
20012a4e:	c3ae                	sw	a1,196(sp)
20012a50:	0bf10593          	add	a1,sp,191
20012a54:	c5ae                	sw	a1,200(sp)
20012a56:	0521                	add	a0,a0,8 # 10008008 <.Lline_table_start2+0xffc71f0>
20012a58:	ca2a                	sw	a0,20(sp)
20012a5a:	16a12e23          	sw	a0,380(sp)
20012a5e:	1aa12023          	sw	a0,416(sp)
20012a62:	1aa12223          	sw	a0,420(sp)
20012a66:	fffff097          	auipc	ra,0xfffff
20012a6a:	ee8080e7          	jalr	-280(ra) # 2001194e <core::ptr::read_volatile>
        let bits = self.register.get();
20012a6e:	18a12023          	sw	a0,384(sp)
                &REG::Reader::from(R {
20012a72:	16a12823          	sw	a0,368(sp)
20012a76:	17012583          	lw	a1,368(sp)
20012a7a:	18b12423          	sw	a1,392(sp)
        R(reader)
20012a7e:	18b12223          	sw	a1,388(sp)
    }
20012a82:	18412583          	lw	a1,388(sp)
20012a86:	16b12623          	sw	a1,364(sp)
                &mut REG::Writer::from(W {
20012a8a:	16a12c23          	sw	a0,376(sp)
20012a8e:	17812503          	lw	a0,376(sp)
20012a92:	18a12823          	sw	a0,400(sp)
        W(writer)
20012a96:	18a12623          	sw	a0,396(sp)
    }
20012a9a:	18c12503          	lw	a0,396(sp)
20012a9e:	16a12a23          	sw	a0,372(sp)
20012aa2:	12e8                	add	a0,sp,364
            f(
20012aa4:	16a12223          	sw	a0,356(sp)
20012aa8:	1ac8                	add	a0,sp,372
20012aaa:	16a12423          	sw	a0,360(sp)
20012aae:	16412583          	lw	a1,356(sp)
20012ab2:	16812603          	lw	a2,360(sp)
20012ab6:	0188                	add	a0,sp,192
20012ab8:	00000097          	auipc	ra,0x0
20012abc:	17e080e7          	jalr	382(ra) # 20012c36 <e310x_hal::clock::CoreClk::configure_pll::{{closure}}>
20012ac0:	85aa                	mv	a1,a0
20012ac2:	4552                	lw	a0,20(sp)
20012ac4:	418c                	lw	a1,0(a1)
20012ac6:	1aa12823          	sw	a0,432(sp)
20012aca:	1ab12a23          	sw	a1,436(sp)
20012ace:	1aa12c23          	sw	a0,440(sp)
        unsafe { ptr::write_volatile(self.value.get(), value) }
20012ad2:	fffff097          	auipc	ra,0xfffff
20012ad6:	e8a080e7          	jalr	-374(ra) # 2001195c <core::ptr::write_volatile>
20012ada:	4662                	lw	a2,24(sp)
20012adc:	1108                	add	a0,sp,160
            .write(|w| unsafe { w.div().bits(divider_div as u8).divby1().bit(divider_bypass) });
20012ade:	c7aa                	sw	a0,204(sp)
20012ae0:	0a710513          	add	a0,sp,167
20012ae4:	c9aa                	sw	a0,208(sp)
        prci.plloutdiv
20012ae6:	453e                	lw	a0,204(sp)
20012ae8:	45ce                	lw	a1,208(sp)
20012aea:	0631                	add	a2,a2,12 # 4000000c <_sidata+0x1ffe9424>
20012aec:	ce32                	sw	a2,28(sp)
20012aee:	14c12823          	sw	a2,336(sp)
20012af2:	14a12a23          	sw	a0,340(sp)
20012af6:	14b12c23          	sw	a1,344(sp)
20012afa:	10000613          	li	a2,256
            f(&mut REG::Writer::from(W {
20012afe:	14c12623          	sw	a2,332(sp)
20012b02:	14c12603          	lw	a2,332(sp)
20012b06:	16c12023          	sw	a2,352(sp)
        W(writer)
20012b0a:	14c12e23          	sw	a2,348(sp)
    }
20012b0e:	15c12603          	lw	a2,348(sp)
20012b12:	14c12423          	sw	a2,328(sp)
20012b16:	02b0                	add	a2,sp,328
20012b18:	14c12223          	sw	a2,324(sp)
20012b1c:	14412603          	lw	a2,324(sp)
20012b20:	00000097          	auipc	ra,0x0
20012b24:	20c080e7          	jalr	524(ra) # 20012d2c <e310x_hal::clock::CoreClk::configure_pll::{{closure}}>
20012b28:	85aa                	mv	a1,a0
20012b2a:	4572                	lw	a0,28(sp)
20012b2c:	418c                	lw	a1,0(a1)
20012b2e:	1aa12e23          	sw	a0,444(sp)
20012b32:	1cb12023          	sw	a1,448(sp)
20012b36:	1ca12223          	sw	a0,452(sp)
20012b3a:	fffff097          	auipc	ra,0xfffff
20012b3e:	e22080e7          	jalr	-478(ra) # 2001195c <core::ptr::write_volatile>
20012b42:	0d610513          	add	a0,sp,214
        let time = mtime.mtime() + 4;
20012b46:	00000097          	auipc	ra,0x0
20012b4a:	516080e7          	jalr	1302(ra) # 2001305c <e310x_hal::core::clint::MTIME::mtime>
20012b4e:	d02a                	sw	a0,32(sp)
20012b50:	862e                	mv	a2,a1
20012b52:	5582                	lw	a1,32(sp)
20012b54:	00458513          	add	a0,a1,4
20012b58:	d22a                	sw	a0,36(sp)
20012b5a:	00b53533          	sltu	a0,a0,a1
20012b5e:	00a605b3          	add	a1,a2,a0
20012b62:	d42e                	sw	a1,40(sp)
20012b64:	00c5b5b3          	sltu	a1,a1,a2
20012b68:	8d6d                	and	a0,a0,a1
20012b6a:	e909                	bnez	a0,20012b7c <e310x_hal::clock::CoreClk::configure_pll+0x8f2>
20012b6c:	a009                	j	20012b6e <e310x_hal::clock::CoreClk::configure_pll+0x8e4>
20012b6e:	5522                	lw	a0,40(sp)
20012b70:	5592                	lw	a1,36(sp)
20012b72:	12b12423          	sw	a1,296(sp)
20012b76:	12a12623          	sw	a0,300(sp)
        while mtime.mtime() < time {}
20012b7a:	a839                	j	20012b98 <e310x_hal::clock::CoreClk::configure_pll+0x90e>
        let time = mtime.mtime() + 4;
20012b7c:	20016537          	lui	a0,0x20016
20012b80:	de050513          	add	a0,a0,-544 # 20015de0 <str.4>
20012b84:	200165b7          	lui	a1,0x20016
20012b88:	0f858613          	add	a2,a1,248 # 200160f8 <.L__unnamed_47>
20012b8c:	45f1                	li	a1,28
20012b8e:	00002097          	auipc	ra,0x2
20012b92:	dc4080e7          	jalr	-572(ra) # 20014952 <core::panicking::panic>
20012b96:	0000                	unimp
20012b98:	0d610513          	add	a0,sp,214
        while mtime.mtime() < time {}
20012b9c:	00000097          	auipc	ra,0x0
20012ba0:	4c0080e7          	jalr	1216(ra) # 2001305c <e310x_hal::core::clint::MTIME::mtime>
20012ba4:	5692                	lw	a3,36(sp)
20012ba6:	862a                	mv	a2,a0
20012ba8:	5522                	lw	a0,40(sp)
20012baa:	00a5b733          	sltu	a4,a1,a0
20012bae:	c63a                	sw	a4,12(sp)
20012bb0:	00d63633          	sltu	a2,a2,a3
20012bb4:	c832                	sw	a2,16(sp)
20012bb6:	00a58463          	beq	a1,a0,20012bbe <e310x_hal::clock::CoreClk::configure_pll+0x934>
20012bba:	4532                	lw	a0,12(sp)
20012bbc:	c82a                	sw	a0,16(sp)
20012bbe:	4542                	lw	a0,16(sp)
20012bc0:	fd61                	bnez	a0,20012b98 <e310x_hal::clock::CoreClk::configure_pll+0x90e>
20012bc2:	a009                	j	20012bc4 <e310x_hal::clock::CoreClk::configure_pll+0x93a>
20012bc4:	10008537          	lui	a0,0x10008
20012bc8:	0521                	add	a0,a0,8 # 10008008 <.Lline_table_start2+0xffc71f0>
20012bca:	12a12c23          	sw	a0,312(sp)
20012bce:	1aa12423          	sw	a0,424(sp)
20012bd2:	1aa12623          	sw	a0,428(sp)
        unsafe { ptr::read_volatile(self.value.get()) }
20012bd6:	fffff097          	auipc	ra,0xfffff
20012bda:	d78080e7          	jalr	-648(ra) # 2001194e <core::ptr::read_volatile>
        REG::Reader::from(R {
20012bde:	12a12a23          	sw	a0,308(sp)
20012be2:	13412503          	lw	a0,308(sp)
20012be6:	14a12023          	sw	a0,320(sp)
        R(reader)
20012bea:	12a12e23          	sw	a0,316(sp)
    }
20012bee:	13c12503          	lw	a0,316(sp)
        while !prci.pllcfg.read().lock().bit_is_set() {}
20012bf2:	cdaa                	sw	a0,216(sp)
20012bf4:	09a8                	add	a0,sp,216
20012bf6:	12a12823          	sw	a0,304(sp)
20012bfa:	1ca12423          	sw	a0,456(sp)
        BYPASS_R::new(((self.bits >> 18) & 1) != 0)
    }
    #[doc = "Bit 31"]
    #[inline(always)]
    pub fn lock(&self) -> LOCK_R {
        LOCK_R::new(((self.bits >> 31) & 1) != 0)
20012bfe:	456e                	lw	a0,216(sp)
20012c00:	817d                	srl	a0,a0,0x1f
20012c02:	18a10fa3          	sb	a0,415(sp)
        Self {
20012c06:	18a10f23          	sb	a0,414(sp)
    }
20012c0a:	19e14503          	lbu	a0,414(sp)
20012c0e:	0ca10ba3          	sb	a0,215(sp)
20012c12:	0d710513          	add	a0,sp,215
20012c16:	18a12a23          	sw	a0,404(sp)
20012c1a:	18a12c23          	sw	a0,408(sp)
        self.bits
20012c1e:	0d714503          	lbu	a0,215(sp)
20012c22:	8905                	and	a0,a0,1
20012c24:	d145                	beqz	a0,20012bc4 <e310x_hal::clock::CoreClk::configure_pll+0x93a>
20012c26:	a009                	j	20012c28 <e310x_hal::clock::CoreClk::configure_pll+0x99e>
        Hertz(divout_freq)
20012c28:	5562                	lw	a0,56(sp)
20012c2a:	cf2a                	sw	a0,156(sp)
    }
20012c2c:	457a                	lw	a0,156(sp)
20012c2e:	1cc12083          	lw	ra,460(sp)
20012c32:	6179                	add	sp,sp,464
20012c34:	8082                	ret

20012c36 <e310x_hal::clock::CoreClk::configure_pll::{{closure}}>:
        prci.pllcfg.modify(|_, w| unsafe {
20012c36:	7175                	add	sp,sp,-144
        let r: u8 = (r - 1) as u8;
20012c38:	c706                	sw	ra,140(sp)
20012c3a:	c42a                	sw	a0,8(sp)
20012c3c:	c82e                	sw	a1,16(sp)
20012c3e:	ca32                	sw	a2,20(sp)
20012c40:	d032                	sw	a2,32(sp)
20012c42:	de32                	sw	a2,60(sp)
        Self {
20012c44:	dc32                	sw	a2,56(sp)
    }
20012c46:	55e2                	lw	a1,56(sp)
                .bits(r)
20012c48:	4108                	lw	a0,0(a0)
20012c4a:	00054503          	lbu	a0,0(a0)
20012c4e:	c8ae                	sw	a1,80(sp)
20012c50:	04a10ba3          	sb	a0,87(sp)
                self.w.bits = (self.w.bits & !(Self::MASK << { OF }))
20012c54:	45c6                	lw	a1,80(sp)
20012c56:	d8ae                	sw	a1,112(sp)
20012c58:	418c                	lw	a1,0(a1)
20012c5a:	99e1                	and	a1,a1,-8
                    | ((value.into() & Self::MASK) << { OF });
20012c5c:	c02e                	sw	a1,0(sp)
20012c5e:	fffff097          	auipc	ra,0xfffff
20012c62:	d1c080e7          	jalr	-740(ra) # 2001197a <<T as core::convert::Into<U>>::into>
20012c66:	4582                	lw	a1,0(sp)
20012c68:	862a                	mv	a2,a0
20012c6a:	4522                	lw	a0,8(sp)
20012c6c:	00767693          	and	a3,a2,7
                self.w.bits = (self.w.bits & !(Self::MASK << { OF }))
20012c70:	4646                	lw	a2,80(sp)
20012c72:	c132                	sw	a2,128(sp)
20012c74:	8dd5                	or	a1,a1,a3
20012c76:	c20c                	sw	a1,0(a2)
                self.w
20012c78:	45c6                	lw	a1,80(sp)
20012c7a:	cc2e                	sw	a1,24(sp)
20012c7c:	da2e                	sw	a1,52(sp)
        Self {
20012c7e:	d82e                	sw	a1,48(sp)
    }
20012c80:	55c2                	lw	a1,48(sp)
                .bits(f)
20012c82:	4148                	lw	a0,4(a0)
20012c84:	00054503          	lbu	a0,0(a0)
20012c88:	d0ae                	sw	a1,96(sp)
20012c8a:	06a103a3          	sb	a0,103(sp)
                self.w.bits = (self.w.bits & !(Self::MASK << { OF }))
20012c8e:	5586                	lw	a1,96(sp)
20012c90:	d4ae                	sw	a1,104(sp)
20012c92:	418c                	lw	a1,0(a1)
20012c94:	c0f5f593          	and	a1,a1,-1009
                    | ((value.into() & Self::MASK) << { OF });
20012c98:	c22e                	sw	a1,4(sp)
20012c9a:	fffff097          	auipc	ra,0xfffff
20012c9e:	ce0080e7          	jalr	-800(ra) # 2001197a <<T as core::convert::Into<U>>::into>
20012ca2:	4592                	lw	a1,4(sp)
20012ca4:	862a                	mv	a2,a0
20012ca6:	4522                	lw	a0,8(sp)
20012ca8:	03f67613          	and	a2,a2,63
20012cac:	00461693          	sll	a3,a2,0x4
                self.w.bits = (self.w.bits & !(Self::MASK << { OF }))
20012cb0:	5606                	lw	a2,96(sp)
20012cb2:	dcb2                	sw	a2,120(sp)
20012cb4:	8dd5                	or	a1,a1,a3
20012cb6:	c20c                	sw	a1,0(a2)
                self.w
20012cb8:	5586                	lw	a1,96(sp)
20012cba:	ce2e                	sw	a1,28(sp)
20012cbc:	c2ae                	sw	a1,68(sp)
        Self {
20012cbe:	c0ae                	sw	a1,64(sp)
    }
20012cc0:	4586                	lw	a1,64(sp)
                .bits(q)
20012cc2:	4508                	lw	a0,8(a0)
20012cc4:	00054503          	lbu	a0,0(a0)
20012cc8:	ccae                	sw	a1,88(sp)
20012cca:	04a10fa3          	sb	a0,95(sp)
                self.w.bits = (self.w.bits & !(Self::MASK << { OF }))
20012cce:	45e6                	lw	a1,88(sp)
20012cd0:	d6ae                	sw	a1,108(sp)
20012cd2:	418c                	lw	a1,0(a1)
20012cd4:	767d                	lui	a2,0xfffff
20012cd6:	3ff60613          	add	a2,a2,1023 # fffff3ff <_sstack+0x7fffb3ff>
20012cda:	8df1                	and	a1,a1,a2
                    | ((value.into() & Self::MASK) << { OF });
20012cdc:	c62e                	sw	a1,12(sp)
20012cde:	fffff097          	auipc	ra,0xfffff
20012ce2:	c9c080e7          	jalr	-868(ra) # 2001197a <<T as core::convert::Into<U>>::into>
20012ce6:	85aa                	mv	a1,a0
20012ce8:	4532                	lw	a0,12(sp)
20012cea:	898d                	and	a1,a1,3
20012cec:	00a59613          	sll	a2,a1,0xa
                self.w.bits = (self.w.bits & !(Self::MASK << { OF }))
20012cf0:	45e6                	lw	a1,88(sp)
20012cf2:	deae                	sw	a1,124(sp)
20012cf4:	8d51                	or	a0,a0,a2
20012cf6:	c188                	sw	a0,0(a1)
                self.w
20012cf8:	4566                	lw	a0,88(sp)
20012cfa:	d22a                	sw	a0,36(sp)
20012cfc:	d62a                	sw	a0,44(sp)
        Self {
20012cfe:	d42a                	sw	a0,40(sp)
    }
20012d00:	5522                	lw	a0,40(sp)
20012d02:	c4aa                	sw	a0,72(sp)
20012d04:	4581                	li	a1,0
20012d06:	04b10723          	sb	a1,78(sp)
                self.w.bits = (self.w.bits & !(1 << { OF })) | ((<$U>::from(value) & 1) << { OF });
20012d0a:	4526                	lw	a0,72(sp)
20012d0c:	daaa                	sw	a0,116(sp)
20012d0e:	4108                	lw	a0,0(a0)
20012d10:	fffc0637          	lui	a2,0xfffc0
20012d14:	167d                	add	a2,a2,-1 # fffbffff <_sstack+0x7ffbbfff>
20012d16:	8d71                	and	a0,a0,a2
20012d18:	04b107a3          	sb	a1,79(sp)
20012d1c:	45a6                	lw	a1,72(sp)
20012d1e:	c32e                	sw	a1,132(sp)
20012d20:	c188                	sw	a0,0(a1)
                self.w
20012d22:	4526                	lw	a0,72(sp)
20012d24:	c52a                	sw	a0,136(sp)
        });
20012d26:	40ba                	lw	ra,140(sp)
20012d28:	6149                	add	sp,sp,144
20012d2a:	8082                	ret

20012d2c <e310x_hal::clock::CoreClk::configure_pll::{{closure}}>:
            .write(|w| unsafe { w.div().bits(divider_div as u8).divby1().bit(divider_bypass) });
20012d2c:	715d                	add	sp,sp,-80
20012d2e:	c686                	sw	ra,76(sp)
20012d30:	c22a                	sw	a0,4(sp)
20012d32:	c42e                	sw	a1,8(sp)
20012d34:	c632                	sw	a2,12(sp)
20012d36:	c832                	sw	a2,16(sp)
20012d38:	d232                	sw	a2,36(sp)
        Self {
20012d3a:	d032                	sw	a2,32(sp)
    }
20012d3c:	5582                	lw	a1,32(sp)
20012d3e:	4512                	lw	a0,4(sp)
20012d40:	4108                	lw	a0,0(a0)
20012d42:	d82e                	sw	a1,48(sp)
20012d44:	02a10ba3          	sb	a0,55(sp)
                self.w.bits = (self.w.bits & !(Self::MASK << { OF }))
20012d48:	55c2                	lw	a1,48(sp)
20012d4a:	dc2e                	sw	a1,56(sp)
20012d4c:	418c                	lw	a1,0(a1)
20012d4e:	fc05f593          	and	a1,a1,-64
                    | ((value.into() & Self::MASK) << { OF });
20012d52:	c02e                	sw	a1,0(sp)
20012d54:	fffff097          	auipc	ra,0xfffff
20012d58:	c26080e7          	jalr	-986(ra) # 2001197a <<T as core::convert::Into<U>>::into>
20012d5c:	85aa                	mv	a1,a0
20012d5e:	4502                	lw	a0,0(sp)
20012d60:	03f5f613          	and	a2,a1,63
                self.w.bits = (self.w.bits & !(Self::MASK << { OF }))
20012d64:	55c2                	lw	a1,48(sp)
20012d66:	c0ae                	sw	a1,64(sp)
20012d68:	8d51                	or	a0,a0,a2
20012d6a:	c188                	sw	a0,0(a1)
                self.w
20012d6c:	5542                	lw	a0,48(sp)
20012d6e:	ca2a                	sw	a0,20(sp)
20012d70:	ce2a                	sw	a0,28(sp)
        Self {
20012d72:	cc2a                	sw	a0,24(sp)
    }
20012d74:	4562                	lw	a0,24(sp)
20012d76:	45a2                	lw	a1,8(sp)
20012d78:	0005c583          	lbu	a1,0(a1)
20012d7c:	d42a                	sw	a0,40(sp)
20012d7e:	02b10723          	sb	a1,46(sp)
                self.w.bits = (self.w.bits & !(1 << { OF })) | ((<$U>::from(value) & 1) << { OF });
20012d82:	5522                	lw	a0,40(sp)
20012d84:	de2a                	sw	a0,60(sp)
20012d86:	4108                	lw	a0,0(a0)
20012d88:	eff57513          	and	a0,a0,-257
20012d8c:	02b107a3          	sb	a1,47(sp)
20012d90:	00859613          	sll	a2,a1,0x8
20012d94:	55a2                	lw	a1,40(sp)
20012d96:	c2ae                	sw	a1,68(sp)
20012d98:	8d51                	or	a0,a0,a2
20012d9a:	c188                	sw	a0,0(a1)
                self.w
20012d9c:	5522                	lw	a0,40(sp)
20012d9e:	c4aa                	sw	a0,72(sp)
20012da0:	40b6                	lw	ra,76(sp)
20012da2:	6161                	add	sp,sp,80
20012da4:	8082                	ret

20012da6 <e310x_hal::clock::AonClk::freeze>:

    /// Freezes low-frequency clock configuration, making it effective
    pub(crate) fn freeze(self) -> Hertz {
20012da6:	7131                	add	sp,sp,-192
20012da8:	df06                	sw	ra,188(sp)
20012daa:	4641                	li	a2,16

            freq
        } else {
            // Use internal oscillator.

            let trim = 16;
20012dac:	00c10b23          	sb	a2,22(sp)
20012db0:	4611                	li	a2,4
            let div = 4; // LFROSC/5
20012db2:	00c10ba3          	sb	a2,23(sp)
20012db6:	cc2a                	sw	a0,24(sp)
20012db8:	ce2e                	sw	a1,28(sp)
20012dba:	10000537          	lui	a0,0x10000
        let aonclk = unsafe { &*AONCLK::ptr() };
20012dbe:	dc2a                	sw	a0,56(sp)
        if let Some(freq) = self.lfaltclk {
20012dc0:	4562                	lw	a0,24(sp)
20012dc2:	c531                	beqz	a0,20012e0e <e310x_hal::clock::AonClk::freeze+0x68>
20012dc4:	a009                	j	20012dc6 <e310x_hal::clock::AonClk::freeze+0x20>
20012dc6:	4572                	lw	a0,28(sp)
20012dc8:	c82a                	sw	a0,16(sp)
20012dca:	de2a                	sw	a0,60(sp)
20012dcc:	10000537          	lui	a0,0x10000
20012dd0:	07050513          	add	a0,a0,112 # 10000070 <.Lline_table_start2+0xffbf258>
20012dd4:	c62a                	sw	a0,12(sp)
20012dd6:	c12a                	sw	a0,128(sp)
20012dd8:	4501                	li	a0,0
            f(&mut REG::Writer::from(W {
20012dda:	deaa                	sw	a0,124(sp)
20012ddc:	5576                	lw	a0,124(sp)
20012dde:	c52a                	sw	a0,136(sp)
    }
}
impl From<crate::W<LFROSCCFG_SPEC>> for W {
    #[inline(always)]
    fn from(writer: crate::W<LFROSCCFG_SPEC>) -> Self {
        W(writer)
20012de0:	c32a                	sw	a0,132(sp)
    }
20012de2:	451a                	lw	a0,132(sp)
20012de4:	dcaa                	sw	a0,120(sp)
20012de6:	18a8                	add	a0,sp,120
20012de8:	daaa                	sw	a0,116(sp)
20012dea:	5556                	lw	a0,116(sp)
20012dec:	00000097          	auipc	ra,0x0
20012df0:	0dc080e7          	jalr	220(ra) # 20012ec8 <e310x_hal::clock::AonClk::freeze::{{closure}}>
20012df4:	85aa                	mv	a1,a0
20012df6:	4532                	lw	a0,12(sp)
20012df8:	418c                	lw	a1,0(a1)
20012dfa:	d12a                	sw	a0,160(sp)
20012dfc:	d32e                	sw	a1,164(sp)
20012dfe:	d52a                	sw	a0,168(sp)
        unsafe { ptr::write_volatile(self.value.get(), value) }
20012e00:	fffff097          	auipc	ra,0xfffff
20012e04:	b5c080e7          	jalr	-1188(ra) # 2001195c <core::ptr::write_volatile>
20012e08:	4542                	lw	a0,16(sp)
            freq
20012e0a:	d02a                	sw	a0,32(sp)
        if let Some(freq) = self.lfaltclk {
20012e0c:	a085                	j	20012e6c <e310x_hal::clock::AonClk::freeze+0xc6>
20012e0e:	4541                	li	a0,16
            let trim = 16;
20012e10:	02a10323          	sb	a0,38(sp)
20012e14:	4511                	li	a0,4
            let div = 4; // LFROSC/5
20012e16:	02a103a3          	sb	a0,39(sp)
20012e1a:	02610513          	add	a0,sp,38

            // Configure LFROSC
            aonclk.lfrosccfg.write(|w| unsafe {
20012e1e:	d42a                	sw	a0,40(sp)
20012e20:	02710513          	add	a0,sp,39
20012e24:	d62a                	sw	a0,44(sp)
20012e26:	5522                	lw	a0,40(sp)
20012e28:	55b2                	lw	a1,44(sp)
20012e2a:	10000637          	lui	a2,0x10000
20012e2e:	07060613          	add	a2,a2,112 # 10000070 <.Lline_table_start2+0xffbf258>
20012e32:	c432                	sw	a2,8(sp)
20012e34:	d0b2                	sw	a2,96(sp)
20012e36:	d2aa                	sw	a0,100(sp)
20012e38:	d4ae                	sw	a1,104(sp)
20012e3a:	4601                	li	a2,0
20012e3c:	ceb2                	sw	a2,92(sp)
20012e3e:	4676                	lw	a2,92(sp)
20012e40:	d8b2                	sw	a2,112(sp)
        W(writer)
20012e42:	d6b2                	sw	a2,108(sp)
    }
20012e44:	5636                	lw	a2,108(sp)
20012e46:	ccb2                	sw	a2,88(sp)
20012e48:	08b0                	add	a2,sp,88
20012e4a:	cab2                	sw	a2,84(sp)
20012e4c:	4656                	lw	a2,84(sp)
20012e4e:	00000097          	auipc	ra,0x0
20012e52:	0ae080e7          	jalr	174(ra) # 20012efc <e310x_hal::clock::AonClk::freeze::{{closure}}>
20012e56:	85aa                	mv	a1,a0
20012e58:	4522                	lw	a0,8(sp)
20012e5a:	418c                	lw	a1,0(a1)
20012e5c:	d72a                	sw	a0,172(sp)
20012e5e:	d92e                	sw	a1,176(sp)
20012e60:	db2a                	sw	a0,180(sp)
20012e62:	fffff097          	auipc	ra,0xfffff
20012e66:	afa080e7          	jalr	-1286(ra) # 2001195c <core::ptr::write_volatile>
20012e6a:	a029                	j	20012e74 <e310x_hal::clock::AonClk::freeze+0xce>
            // Wait for LFROSC to stabilize
            while !aonclk.lfrosccfg.read().ready().bit_is_set() {}

            Hertz(32_768) // It's not so accurate: ≈30 kHz according to the datasheet
        }
    }
20012e6c:	5502                	lw	a0,32(sp)
20012e6e:	50fa                	lw	ra,188(sp)
20012e70:	6129                	add	sp,sp,192
20012e72:	8082                	ret
20012e74:	10000537          	lui	a0,0x10000
20012e78:	07050513          	add	a0,a0,112 # 10000070 <.Lline_table_start2+0xffbf258>
20012e7c:	c4aa                	sw	a0,72(sp)
20012e7e:	cd2a                	sw	a0,152(sp)
20012e80:	cf2a                	sw	a0,156(sp)
        unsafe { ptr::read_volatile(self.value.get()) }
20012e82:	fffff097          	auipc	ra,0xfffff
20012e86:	acc080e7          	jalr	-1332(ra) # 2001194e <core::ptr::read_volatile>
        REG::Reader::from(R {
20012e8a:	c2aa                	sw	a0,68(sp)
20012e8c:	4516                	lw	a0,68(sp)
20012e8e:	c8aa                	sw	a0,80(sp)
        R(reader)
20012e90:	c6aa                	sw	a0,76(sp)
    }
20012e92:	4536                	lw	a0,76(sp)
            while !aonclk.lfrosccfg.read().ready().bit_is_set() {}
20012e94:	da2a                	sw	a0,52(sp)
20012e96:	1848                	add	a0,sp,52
20012e98:	c0aa                	sw	a0,64(sp)
20012e9a:	dd2a                	sw	a0,184(sp)
        ENABLE_R::new(((self.bits >> 30) & 1) != 0)
    }
    #[doc = "Bit 31"]
    #[inline(always)]
    pub fn ready(&self) -> READY_R {
        READY_R::new(((self.bits >> 31) & 1) != 0)
20012e9c:	5552                	lw	a0,52(sp)
20012e9e:	817d                	srl	a0,a0,0x1f
20012ea0:	08a10ba3          	sb	a0,151(sp)
        Self {
20012ea4:	08a10b23          	sb	a0,150(sp)
    }
20012ea8:	09614503          	lbu	a0,150(sp)
20012eac:	02a109a3          	sb	a0,51(sp)
20012eb0:	03310513          	add	a0,sp,51
20012eb4:	c72a                	sw	a0,140(sp)
20012eb6:	c92a                	sw	a0,144(sp)
        self.bits
20012eb8:	03314503          	lbu	a0,51(sp)
20012ebc:	8905                	and	a0,a0,1
20012ebe:	d95d                	beqz	a0,20012e74 <e310x_hal::clock::AonClk::freeze+0xce>
20012ec0:	a009                	j	20012ec2 <e310x_hal::clock::AonClk::freeze+0x11c>
20012ec2:	6521                	lui	a0,0x8
            Hertz(32_768) // It's not so accurate: ≈30 kHz according to the datasheet
20012ec4:	d02a                	sw	a0,32(sp)
        if let Some(freq) = self.lfaltclk {
20012ec6:	b75d                	j	20012e6c <e310x_hal::clock::AonClk::freeze+0xc6>

20012ec8 <e310x_hal::clock::AonClk::freeze::{{closure}}>:
            aonclk.lfrosccfg.write(|w| w.enable().bit(false));
20012ec8:	7179                	add	sp,sp,-48
20012eca:	c62a                	sw	a0,12(sp)
20012ecc:	c82a                	sw	a0,16(sp)
20012ece:	cc2a                	sw	a0,24(sp)
        Self {
20012ed0:	ca2a                	sw	a0,20(sp)
    }
20012ed2:	4552                	lw	a0,20(sp)
20012ed4:	ce2a                	sw	a0,28(sp)
20012ed6:	4581                	li	a1,0
20012ed8:	02b10123          	sb	a1,34(sp)
                self.w.bits = (self.w.bits & !(1 << { OF })) | ((<$U>::from(value) & 1) << { OF });
20012edc:	4572                	lw	a0,28(sp)
20012ede:	d22a                	sw	a0,36(sp)
20012ee0:	4108                	lw	a0,0(a0)
20012ee2:	c0000637          	lui	a2,0xc0000
20012ee6:	167d                	add	a2,a2,-1 # bfffffff <_sstack+0x3fffbfff>
20012ee8:	8d71                	and	a0,a0,a2
20012eea:	02b101a3          	sb	a1,35(sp)
20012eee:	45f2                	lw	a1,28(sp)
20012ef0:	d42e                	sw	a1,40(sp)
20012ef2:	c188                	sw	a0,0(a1)
                self.w
20012ef4:	4572                	lw	a0,28(sp)
20012ef6:	d62a                	sw	a0,44(sp)
20012ef8:	6145                	add	sp,sp,48
20012efa:	8082                	ret

20012efc <e310x_hal::clock::AonClk::freeze::{{closure}}>:
            aonclk.lfrosccfg.write(|w| unsafe {
20012efc:	7119                	add	sp,sp,-128
20012efe:	de86                	sw	ra,124(sp)
20012f00:	c832                	sw	a2,16(sp)
20012f02:	cc2a                	sw	a0,24(sp)
20012f04:	ce2e                	sw	a1,28(sp)
20012f06:	d032                	sw	a2,32(sp)
20012f08:	d432                	sw	a2,40(sp)
20012f0a:	c2b2                	sw	a2,68(sp)
        Self {
20012f0c:	c0b2                	sw	a2,64(sp)
    }
20012f0e:	4586                	lw	a1,64(sp)
                w.trim().bits(trim);
20012f10:	4562                	lw	a0,24(sp)
20012f12:	00054503          	lbu	a0,0(a0) # 8000 <.Lline_table_start0+0x4635>
20012f16:	ccae                	sw	a1,88(sp)
20012f18:	04a10fa3          	sb	a0,95(sp)
                self.w.bits = (self.w.bits & !(Self::MASK << { OF }))
20012f1c:	45e6                	lw	a1,88(sp)
20012f1e:	d0ae                	sw	a1,96(sp)
20012f20:	418c                	lw	a1,0(a1)
20012f22:	ffe10637          	lui	a2,0xffe10
20012f26:	167d                	add	a2,a2,-1 # ffe0ffff <_sstack+0x7fe0bfff>
20012f28:	8df1                	and	a1,a1,a2
                    | ((value.into() & Self::MASK) << { OF });
20012f2a:	c62e                	sw	a1,12(sp)
20012f2c:	fffff097          	auipc	ra,0xfffff
20012f30:	a4e080e7          	jalr	-1458(ra) # 2001197a <<T as core::convert::Into<U>>::into>
20012f34:	4642                	lw	a2,16(sp)
20012f36:	85aa                	mv	a1,a0
20012f38:	4532                	lw	a0,12(sp)
20012f3a:	89fd                	and	a1,a1,31
20012f3c:	01059693          	sll	a3,a1,0x10
                self.w.bits = (self.w.bits & !(Self::MASK << { OF }))
20012f40:	45e6                	lw	a1,88(sp)
20012f42:	d6ae                	sw	a1,108(sp)
20012f44:	8d55                	or	a0,a0,a3
20012f46:	c188                	sw	a0,0(a1)
20012f48:	d232                	sw	a2,36(sp)
20012f4a:	de32                	sw	a2,60(sp)
        Self {
20012f4c:	dc32                	sw	a2,56(sp)
    }
20012f4e:	55e2                	lw	a1,56(sp)
                w.div().bits(div);
20012f50:	4572                	lw	a0,28(sp)
20012f52:	00054503          	lbu	a0,0(a0)
20012f56:	c8ae                	sw	a1,80(sp)
20012f58:	04a10ba3          	sb	a0,87(sp)
                self.w.bits = (self.w.bits & !(Self::MASK << { OF }))
20012f5c:	45c6                	lw	a1,80(sp)
20012f5e:	d2ae                	sw	a1,100(sp)
20012f60:	418c                	lw	a1,0(a1)
20012f62:	fc05f593          	and	a1,a1,-64
                    | ((value.into() & Self::MASK) << { OF });
20012f66:	ca2e                	sw	a1,20(sp)
20012f68:	fffff097          	auipc	ra,0xfffff
20012f6c:	a12080e7          	jalr	-1518(ra) # 2001197a <<T as core::convert::Into<U>>::into>
20012f70:	4642                	lw	a2,16(sp)
20012f72:	85aa                	mv	a1,a0
20012f74:	4552                	lw	a0,20(sp)
20012f76:	03f5f693          	and	a3,a1,63
                self.w.bits = (self.w.bits & !(Self::MASK << { OF }))
20012f7a:	45c6                	lw	a1,80(sp)
20012f7c:	d8ae                	sw	a1,112(sp)
20012f7e:	8d55                	or	a0,a0,a3
20012f80:	c188                	sw	a0,0(a1)
20012f82:	d632                	sw	a2,44(sp)
20012f84:	da32                	sw	a2,52(sp)
        Self {
20012f86:	d832                	sw	a2,48(sp)
    }
20012f88:	5542                	lw	a0,48(sp)
20012f8a:	c4aa                	sw	a0,72(sp)
20012f8c:	4585                	li	a1,1
20012f8e:	04b10723          	sb	a1,78(sp)
                self.w.bits = (self.w.bits & !(1 << { OF })) | ((<$U>::from(value) & 1) << { OF });
20012f92:	4526                	lw	a0,72(sp)
20012f94:	d4aa                	sw	a0,104(sp)
20012f96:	4108                	lw	a0,0(a0)
20012f98:	04b107a3          	sb	a1,79(sp)
20012f9c:	45a6                	lw	a1,72(sp)
20012f9e:	daae                	sw	a1,116(sp)
20012fa0:	40000637          	lui	a2,0x40000
20012fa4:	8d51                	or	a0,a0,a2
20012fa6:	c188                	sw	a0,0(a1)
                self.w
20012fa8:	4526                	lw	a0,72(sp)
20012faa:	dcaa                	sw	a0,120(sp)
            });
20012fac:	50f6                	lw	ra,124(sp)
20012fae:	6109                	add	sp,sp,128
20012fb0:	8082                	ret

20012fb2 <e310x_hal::clock::Clocks::freeze>:
    lfclk: Hertz,
}

impl Clocks {
    /// Freezes the coreclk and aonclk frequencies.
    pub fn freeze(coreclk: CoreClk, aonclk: AonClk) -> Self {
20012fb2:	7179                	add	sp,sp,-48
20012fb4:	d606                	sw	ra,44(sp)
20012fb6:	c432                	sw	a2,8(sp)
20012fb8:	c62e                	sw	a1,12(sp)
20012fba:	ce2e                	sw	a1,28(sp)
20012fbc:	d032                	sw	a2,32(sp)
        let coreclk = coreclk.freeze();
20012fbe:	fffff097          	auipc	ra,0xfffff
20012fc2:	a2a080e7          	jalr	-1494(ra) # 200119e8 <e310x_hal::clock::CoreClk::freeze>
20012fc6:	45a2                	lw	a1,8(sp)
20012fc8:	862a                	mv	a2,a0
20012fca:	4532                	lw	a0,12(sp)
20012fcc:	c832                	sw	a2,16(sp)
20012fce:	d232                	sw	a2,36(sp)
        let lfclk = aonclk.freeze();
20012fd0:	00000097          	auipc	ra,0x0
20012fd4:	dd6080e7          	jalr	-554(ra) # 20012da6 <e310x_hal::clock::AonClk::freeze>
20012fd8:	45c2                	lw	a1,16(sp)
20012fda:	d42a                	sw	a0,40(sp)
        Clocks { coreclk, lfclk }
20012fdc:	ca2e                	sw	a1,20(sp)
20012fde:	cc2a                	sw	a0,24(sp)
    }
20012fe0:	4552                	lw	a0,20(sp)
20012fe2:	45e2                	lw	a1,24(sp)
20012fe4:	50b2                	lw	ra,44(sp)
20012fe6:	6145                	add	sp,sp,48
20012fe8:	8082                	ret

20012fea <e310x_hal::clock::Clocks::tlclk>:
    pub fn coreclk(&self) -> Hertz {
        self.coreclk
    }

    /// Returns the frozen tlclk frequency
    pub fn tlclk(&self) -> Hertz {
20012fea:	1141                	add	sp,sp,-16
20012fec:	c62a                	sw	a0,12(sp)
        // For the FE310-G000, the TileLink bus clock (tlclk) is fixed to be
        // the same as the processor core clock (coreclk)
        self.coreclk
20012fee:	4108                	lw	a0,0(a0)
    }
20012ff0:	0141                	add	sp,sp,16
20012ff2:	8082                	ret

20012ff4 <e310x_hal::core::clint::MTIME::mtime_lo>:
pub struct MTIME;

impl MTIME {
    /// Read mtime register.
    #[inline]
    pub fn mtime_lo(&self) -> u32 {
20012ff4:	7179                	add	sp,sp,-48
20012ff6:	d606                	sw	ra,44(sp)
20012ff8:	c42a                	sw	a0,8(sp)
20012ffa:	0200c537          	lui	a0,0x200c
20012ffe:	1561                	add	a0,a0,-8 # 200bff8 <.Lline_table_start2+0x1fcb1e0>
20013000:	ca2a                	sw	a0,20(sp)
20013002:	d02a                	sw	a0,32(sp)
20013004:	d22a                	sw	a0,36(sp)
20013006:	fffff097          	auipc	ra,0xfffff
2001300a:	948080e7          	jalr	-1720(ra) # 2001194e <core::ptr::read_volatile>
        REG::Reader::from(R {
2001300e:	c82a                	sw	a0,16(sp)
20013010:	4542                	lw	a0,16(sp)
20013012:	ce2a                	sw	a0,28(sp)
    }
}
impl From<crate::R<MTIME_SPEC>> for R {
    #[inline(always)]
    fn from(reader: crate::R<MTIME_SPEC>) -> Self {
        R(reader)
20013014:	cc2a                	sw	a0,24(sp)
    }
20013016:	4562                	lw	a0,24(sp)
        unsafe { (*CLINT::ptr()).mtime.read().bits() }
20013018:	c22a                	sw	a0,4(sp)
2001301a:	0048                	add	a0,sp,4
2001301c:	d42a                	sw	a0,40(sp)
2001301e:	c62a                	sw	a0,12(sp)
        self.bits
20013020:	4512                	lw	a0,4(sp)
    }
20013022:	50b2                	lw	ra,44(sp)
20013024:	6145                	add	sp,sp,48
20013026:	8082                	ret

20013028 <e310x_hal::core::clint::MTIME::mtime_hi>:

    /// Read mtimeh register.
    #[inline]
    pub fn mtime_hi(&self) -> u32 {
20013028:	7179                	add	sp,sp,-48
2001302a:	d606                	sw	ra,44(sp)
2001302c:	c42a                	sw	a0,8(sp)
2001302e:	0200c537          	lui	a0,0x200c
20013032:	1571                	add	a0,a0,-4 # 200bffc <.Lline_table_start2+0x1fcb1e4>
20013034:	ca2a                	sw	a0,20(sp)
20013036:	d02a                	sw	a0,32(sp)
20013038:	d22a                	sw	a0,36(sp)
2001303a:	fffff097          	auipc	ra,0xfffff
2001303e:	914080e7          	jalr	-1772(ra) # 2001194e <core::ptr::read_volatile>
        REG::Reader::from(R {
20013042:	c82a                	sw	a0,16(sp)
20013044:	4542                	lw	a0,16(sp)
20013046:	ce2a                	sw	a0,28(sp)
    }
}
impl From<crate::R<MTIMEH_SPEC>> for R {
    #[inline(always)]
    fn from(reader: crate::R<MTIMEH_SPEC>) -> Self {
        R(reader)
20013048:	cc2a                	sw	a0,24(sp)
    }
2001304a:	4562                	lw	a0,24(sp)
        unsafe { (*CLINT::ptr()).mtimeh.read().bits() }
2001304c:	c22a                	sw	a0,4(sp)
2001304e:	0048                	add	a0,sp,4
20013050:	d42a                	sw	a0,40(sp)
20013052:	c62a                	sw	a0,12(sp)
        self.bits
20013054:	4512                	lw	a0,4(sp)
    }
20013056:	50b2                	lw	ra,44(sp)
20013058:	6145                	add	sp,sp,48
2001305a:	8082                	ret

2001305c <e310x_hal::core::clint::MTIME::mtime>:

    /// Read mtime and mtimeh registers.
    pub fn mtime(&self) -> u64 {
2001305c:	1101                	add	sp,sp,-32
2001305e:	ce06                	sw	ra,28(sp)
20013060:	c62a                	sw	a0,12(sp)
20013062:	c82a                	sw	a0,16(sp)
        read64!(self.mtime_hi(), self.mtime_lo())
20013064:	a009                	j	20013066 <e310x_hal::core::clint::MTIME::mtime+0xa>
20013066:	4532                	lw	a0,12(sp)
20013068:	00000097          	auipc	ra,0x0
2001306c:	fc0080e7          	jalr	-64(ra) # 20013028 <e310x_hal::core::clint::MTIME::mtime_hi>
20013070:	85aa                	mv	a1,a0
20013072:	4532                	lw	a0,12(sp)
20013074:	c42e                	sw	a1,8(sp)
20013076:	862e                	mv	a2,a1
20013078:	c032                	sw	a2,0(sp)
2001307a:	ca2e                	sw	a1,20(sp)
2001307c:	00000097          	auipc	ra,0x0
20013080:	f78080e7          	jalr	-136(ra) # 20012ff4 <e310x_hal::core::clint::MTIME::mtime_lo>
20013084:	85aa                	mv	a1,a0
20013086:	4532                	lw	a0,12(sp)
20013088:	862e                	mv	a2,a1
2001308a:	c232                	sw	a2,4(sp)
2001308c:	cc2e                	sw	a1,24(sp)
2001308e:	00000097          	auipc	ra,0x0
20013092:	f9a080e7          	jalr	-102(ra) # 20013028 <e310x_hal::core::clint::MTIME::mtime_hi>
20013096:	85aa                	mv	a1,a0
20013098:	4522                	lw	a0,8(sp)
2001309a:	fcb516e3          	bne	a0,a1,20013066 <e310x_hal::core::clint::MTIME::mtime+0xa>
2001309e:	a009                	j	200130a0 <e310x_hal::core::clint::MTIME::mtime+0x44>
    }
200130a0:	4582                	lw	a1,0(sp)
200130a2:	4512                	lw	a0,4(sp)
200130a4:	40f2                	lw	ra,28(sp)
200130a6:	6105                	add	sp,sp,32
200130a8:	8082                	ret

200130aa <<e310x_hal::core::clint::Clint as core::convert::From<e310x::CLINT>>::from>:
    /// Opaque mtime register
    pub mtime: MTIME,
}

impl From<CLINT> for Clint {
    fn from(_: CLINT) -> Self {
200130aa:	1141                	add	sp,sp,-16
        Clint {
            msip: MSIP { _0: () },
            mtimecmp: MTIMECMP { _0: () },
            mtime: MTIME,
        }
    }
200130ac:	0141                	add	sp,sp,16
200130ae:	8082                	ret

200130b0 <e310x_hal::core::counters::PerformanceCounters::new>:
            mcycle: MCYCLE,
            minstret: MINSTRET,
            mhpmcounter3: MHPMCOUNTER3,
            mhpmcounter4: MHPMCOUNTER4,
        }
    }
200130b0:	8082                	ret

200130b2 <<e310x_hal::core::plic::Plic as core::convert::From<e310x::PLIC>>::from>:
    /// Opaque uart0 register
    pub uart0: INTERRUPT<IrqUart0>,
}

impl From<PLIC> for Plic {
    fn from(_: PLIC) -> Self {
200130b2:	711d                	add	sp,sp,-96
200130b4:	d82a                	sw	a0,48(sp)
200130b6:	4505                	li	a0,1
200130b8:	da2a                	sw	a0,52(sp)
200130ba:	4501                	li	a0,0
            mext: MEXT { _0: () },
            threshold: THRESHOLD { _0: () },
            claim: CLAIM { _0: () },
            wdog: INTERRUPT {
                offset: 0,
                mask: 1 << (Interrupt::WATCHDOG as u8),
200130bc:	e919                	bnez	a0,200130d2 <<e310x_hal::core::plic::Plic as core::convert::From<e310x::PLIC>>::from+0x20>
200130be:	a009                	j	200130c0 <<e310x_hal::core::plic::Plic as core::convert::From<e310x::PLIC>>::from+0xe>
200130c0:	55d2                	lw	a1,52(sp)
200130c2:	0ff5f513          	zext.b	a0,a1
200130c6:	d62e                	sw	a1,44(sp)
200130c8:	02000593          	li	a1,32
200130cc:	02b56163          	bltu	a0,a1,200130ee <<e310x_hal::core::plic::Plic as core::convert::From<e310x::PLIC>>::from+0x3c>
200130d0:	a805                	j	20013100 <<e310x_hal::core::plic::Plic as core::convert::From<e310x::PLIC>>::from+0x4e>
200130d2:	20016537          	lui	a0,0x20016
200130d6:	de050513          	add	a0,a0,-544 # 20015de0 <str.4>
200130da:	200165b7          	lui	a1,0x20016
200130de:	17c58613          	add	a2,a1,380 # 2001617c <.L__unnamed_54>
200130e2:	45f1                	li	a1,28
200130e4:	00002097          	auipc	ra,0x2
200130e8:	86e080e7          	jalr	-1938(ra) # 20014952 <core::panicking::panic>
200130ec:	0000                	unimp
200130ee:	55b2                	lw	a1,44(sp)
200130f0:	4505                	li	a0,1
200130f2:	d22a                	sw	a0,36(sp)
200130f4:	00b51533          	sll	a0,a0,a1
200130f8:	d42a                	sw	a0,40(sp)
200130fa:	4501                	li	a0,0
                priority_offset: Interrupt::WATCHDOG as usize,
200130fc:	ed15                	bnez	a0,20013138 <<e310x_hal::core::plic::Plic as core::convert::From<e310x::PLIC>>::from+0x86>
200130fe:	a005                	j	2001311e <<e310x_hal::core::plic::Plic as core::convert::From<e310x::PLIC>>::from+0x6c>
                mask: 1 << (Interrupt::WATCHDOG as u8),
20013100:	20016537          	lui	a0,0x20016
20013104:	bb050513          	add	a0,a0,-1104 # 20015bb0 <str.0>
20013108:	200165b7          	lui	a1,0x20016
2001310c:	18c58613          	add	a2,a1,396 # 2001618c <.L__unnamed_55>
20013110:	02300593          	li	a1,35
20013114:	00002097          	auipc	ra,0x2
20013118:	83e080e7          	jalr	-1986(ra) # 20014952 <core::panicking::panic>
2001311c:	0000                	unimp
                priority_offset: Interrupt::WATCHDOG as usize,
2001311e:	5622                	lw	a2,40(sp)
20013120:	5512                	lw	a0,36(sp)
20013122:	0542                	sll	a0,a0,0x10
20013124:	01055593          	srl	a1,a0,0x10
20013128:	4501                	li	a0,0
            wdog: INTERRUPT {
2001312a:	dc2a                	sw	a0,56(sp)
2001312c:	de32                	sw	a2,60(sp)
2001312e:	c0ae                	sw	a1,64(sp)
20013130:	4589                	li	a1,2
                _marker: PhantomData,
            },
            rtc: INTERRUPT {
                offset: 0,
                mask: 1 << (Interrupt::RTC as u8),
20013132:	d02e                	sw	a1,32(sp)
20013134:	e90d                	bnez	a0,20013166 <<e310x_hal::core::plic::Plic as core::convert::From<e310x::PLIC>>::from+0xb4>
20013136:	a839                	j	20013154 <<e310x_hal::core::plic::Plic as core::convert::From<e310x::PLIC>>::from+0xa2>
                priority_offset: Interrupt::WATCHDOG as usize,
20013138:	20016537          	lui	a0,0x20016
2001313c:	de050513          	add	a0,a0,-544 # 20015de0 <str.4>
20013140:	200165b7          	lui	a1,0x20016
20013144:	19c58613          	add	a2,a1,412 # 2001619c <.L__unnamed_56>
20013148:	45f1                	li	a1,28
2001314a:	00002097          	auipc	ra,0x2
2001314e:	808080e7          	jalr	-2040(ra) # 20014952 <core::panicking::panic>
20013152:	0000                	unimp
                mask: 1 << (Interrupt::RTC as u8),
20013154:	5582                	lw	a1,32(sp)
20013156:	0ff5f513          	zext.b	a0,a1
2001315a:	ce2e                	sw	a1,28(sp)
2001315c:	02000593          	li	a1,32
20013160:	02b56163          	bltu	a0,a1,20013182 <<e310x_hal::core::plic::Plic as core::convert::From<e310x::PLIC>>::from+0xd0>
20013164:	a80d                	j	20013196 <<e310x_hal::core::plic::Plic as core::convert::From<e310x::PLIC>>::from+0xe4>
20013166:	20016537          	lui	a0,0x20016
2001316a:	de050513          	add	a0,a0,-544 # 20015de0 <str.4>
2001316e:	200165b7          	lui	a1,0x20016
20013172:	1ac58613          	add	a2,a1,428 # 200161ac <.L__unnamed_57>
20013176:	45f1                	li	a1,28
20013178:	00001097          	auipc	ra,0x1
2001317c:	7da080e7          	jalr	2010(ra) # 20014952 <core::panicking::panic>
20013180:	0000                	unimp
20013182:	45f2                	lw	a1,28(sp)
20013184:	4505                	li	a0,1
20013186:	00b51533          	sll	a0,a0,a1
2001318a:	ca2a                	sw	a0,20(sp)
2001318c:	4509                	li	a0,2
2001318e:	cc2a                	sw	a0,24(sp)
20013190:	4501                	li	a0,0
                priority_offset: Interrupt::RTC as usize,
20013192:	ed15                	bnez	a0,200131ce <<e310x_hal::core::plic::Plic as core::convert::From<e310x::PLIC>>::from+0x11c>
20013194:	a005                	j	200131b4 <<e310x_hal::core::plic::Plic as core::convert::From<e310x::PLIC>>::from+0x102>
                mask: 1 << (Interrupt::RTC as u8),
20013196:	20016537          	lui	a0,0x20016
2001319a:	bb050513          	add	a0,a0,-1104 # 20015bb0 <str.0>
2001319e:	200165b7          	lui	a1,0x20016
200131a2:	1bc58613          	add	a2,a1,444 # 200161bc <.L__unnamed_58>
200131a6:	02300593          	li	a1,35
200131aa:	00001097          	auipc	ra,0x1
200131ae:	7a8080e7          	jalr	1960(ra) # 20014952 <core::panicking::panic>
200131b2:	0000                	unimp
                priority_offset: Interrupt::RTC as usize,
200131b4:	4652                	lw	a2,20(sp)
200131b6:	4562                	lw	a0,24(sp)
200131b8:	0542                	sll	a0,a0,0x10
200131ba:	01055593          	srl	a1,a0,0x10
200131be:	4501                	li	a0,0
            rtc: INTERRUPT {
200131c0:	c2aa                	sw	a0,68(sp)
200131c2:	c4b2                	sw	a2,72(sp)
200131c4:	c6ae                	sw	a1,76(sp)
200131c6:	458d                	li	a1,3
                _marker: PhantomData,
            },
            uart0: INTERRUPT {
                offset: 0,
                mask: 1 << (Interrupt::UART0 as u8),
200131c8:	c82e                	sw	a1,16(sp)
200131ca:	e90d                	bnez	a0,200131fc <<e310x_hal::core::plic::Plic as core::convert::From<e310x::PLIC>>::from+0x14a>
200131cc:	a839                	j	200131ea <<e310x_hal::core::plic::Plic as core::convert::From<e310x::PLIC>>::from+0x138>
                priority_offset: Interrupt::RTC as usize,
200131ce:	20016537          	lui	a0,0x20016
200131d2:	de050513          	add	a0,a0,-544 # 20015de0 <str.4>
200131d6:	200165b7          	lui	a1,0x20016
200131da:	1cc58613          	add	a2,a1,460 # 200161cc <.L__unnamed_59>
200131de:	45f1                	li	a1,28
200131e0:	00001097          	auipc	ra,0x1
200131e4:	772080e7          	jalr	1906(ra) # 20014952 <core::panicking::panic>
200131e8:	0000                	unimp
                mask: 1 << (Interrupt::UART0 as u8),
200131ea:	45c2                	lw	a1,16(sp)
200131ec:	0ff5f513          	zext.b	a0,a1
200131f0:	c62e                	sw	a1,12(sp)
200131f2:	02000593          	li	a1,32
200131f6:	02b56163          	bltu	a0,a1,20013218 <<e310x_hal::core::plic::Plic as core::convert::From<e310x::PLIC>>::from+0x166>
200131fa:	a80d                	j	2001322c <<e310x_hal::core::plic::Plic as core::convert::From<e310x::PLIC>>::from+0x17a>
200131fc:	20016537          	lui	a0,0x20016
20013200:	de050513          	add	a0,a0,-544 # 20015de0 <str.4>
20013204:	200165b7          	lui	a1,0x20016
20013208:	1dc58613          	add	a2,a1,476 # 200161dc <.L__unnamed_60>
2001320c:	45f1                	li	a1,28
2001320e:	00001097          	auipc	ra,0x1
20013212:	744080e7          	jalr	1860(ra) # 20014952 <core::panicking::panic>
20013216:	0000                	unimp
20013218:	45b2                	lw	a1,12(sp)
2001321a:	4505                	li	a0,1
2001321c:	00b51533          	sll	a0,a0,a1
20013220:	c22a                	sw	a0,4(sp)
20013222:	450d                	li	a0,3
20013224:	c42a                	sw	a0,8(sp)
20013226:	4501                	li	a0,0
                priority_offset: Interrupt::UART0 as usize,
20013228:	ed31                	bnez	a0,20013284 <<e310x_hal::core::plic::Plic as core::convert::From<e310x::PLIC>>::from+0x1d2>
2001322a:	a005                	j	2001324a <<e310x_hal::core::plic::Plic as core::convert::From<e310x::PLIC>>::from+0x198>
                mask: 1 << (Interrupt::UART0 as u8),
2001322c:	20016537          	lui	a0,0x20016
20013230:	bb050513          	add	a0,a0,-1104 # 20015bb0 <str.0>
20013234:	200165b7          	lui	a1,0x20016
20013238:	1ec58613          	add	a2,a1,492 # 200161ec <.L__unnamed_61>
2001323c:	02300593          	li	a1,35
20013240:	00001097          	auipc	ra,0x1
20013244:	712080e7          	jalr	1810(ra) # 20014952 <core::panicking::panic>
20013248:	0000                	unimp
                priority_offset: Interrupt::UART0 as usize,
2001324a:	55c2                	lw	a1,48(sp)
2001324c:	4612                	lw	a2,4(sp)
2001324e:	4522                	lw	a0,8(sp)
20013250:	0542                	sll	a0,a0,0x10
20013252:	8141                	srl	a0,a0,0x10
20013254:	4681                	li	a3,0
            uart0: INTERRUPT {
20013256:	c8b6                	sw	a3,80(sp)
20013258:	cab2                	sw	a2,84(sp)
2001325a:	ccaa                	sw	a0,88(sp)
        Plic {
2001325c:	4506                	lw	a0,64(sp)
2001325e:	c588                	sw	a0,8(a1)
20013260:	5572                	lw	a0,60(sp)
20013262:	c1c8                	sw	a0,4(a1)
20013264:	5562                	lw	a0,56(sp)
20013266:	c188                	sw	a0,0(a1)
20013268:	4536                	lw	a0,76(sp)
2001326a:	c9c8                	sw	a0,20(a1)
2001326c:	4526                	lw	a0,72(sp)
2001326e:	c988                	sw	a0,16(a1)
20013270:	4516                	lw	a0,68(sp)
20013272:	c5c8                	sw	a0,12(a1)
20013274:	4566                	lw	a0,88(sp)
20013276:	d188                	sw	a0,32(a1)
20013278:	4556                	lw	a0,84(sp)
2001327a:	cdc8                	sw	a0,28(a1)
2001327c:	4546                	lw	a0,80(sp)
2001327e:	cd88                	sw	a0,24(a1)
                _marker: PhantomData,
            },
        }
    }
20013280:	6125                	add	sp,sp,96
20013282:	8082                	ret
                priority_offset: Interrupt::UART0 as usize,
20013284:	20016537          	lui	a0,0x20016
20013288:	de050513          	add	a0,a0,-544 # 20015de0 <str.4>
2001328c:	200165b7          	lui	a1,0x20016
20013290:	1fc58613          	add	a2,a1,508 # 200161fc <.L__unnamed_62>
20013294:	45f1                	li	a1,28
20013296:	00001097          	auipc	ra,0x1
2001329a:	6bc080e7          	jalr	1724(ra) # 20014952 <core::panicking::panic>
	...

200132a0 <e310x_hal::core::CorePeripherals::new>:
    /// Performance counters
    pub counters: counters::PerformanceCounters,
}

impl CorePeripherals {
    pub(crate) fn new(clint: e310x::CLINT, plic: e310x::PLIC) -> Self {
200132a0:	7139                	add	sp,sp,-64
        Self {
            clint: clint.into(),
200132a2:	de06                	sw	ra,60(sp)
200132a4:	c42a                	sw	a0,8(sp)
200132a6:	ffffe097          	auipc	ra,0xffffe
200132aa:	6c2080e7          	jalr	1730(ra) # 20011968 <<T as core::convert::Into<U>>::into>
200132ae:	0848                	add	a0,sp,20
            plic: plic.into(),
200132b0:	c62a                	sw	a0,12(sp)
200132b2:	ffffe097          	auipc	ra,0xffffe
200132b6:	6ec080e7          	jalr	1772(ra) # 2001199e <<T as core::convert::Into<U>>::into>
            counters: counters::PerformanceCounters::new(),
200132ba:	00000097          	auipc	ra,0x0
200132be:	df6080e7          	jalr	-522(ra) # 200130b0 <e310x_hal::core::counters::PerformanceCounters::new>
200132c2:	4522                	lw	a0,8(sp)
200132c4:	45b2                	lw	a1,12(sp)
200132c6:	02400613          	li	a2,36
        Self {
200132ca:	00002097          	auipc	ra,0x2
200132ce:	134080e7          	jalr	308(ra) # 200153fe <memcpy>
        }
    }
200132d2:	50f2                	lw	ra,60(sp)
200132d4:	6121                	add	sp,sp,64
200132d6:	8082                	ret

200132d8 <<e310x_hal::device::DeviceGpioPins as core::convert::From<e310x::GPIO0>>::from>:
    fn from(gpio: GPIO0) -> Self {
200132d8:	1141                	add	sp,sp,-16
        let parts = gpio.split();
200132da:	c606                	sw	ra,12(sp)
200132dc:	00000097          	auipc	ra,0x0
200132e0:	098080e7          	jalr	152(ra) # 20013374 <e310x_hal::gpio::gpio0::<impl e310x_hal::gpio::GpioExt for e310x::GPIO0>::split>
    }
200132e4:	40b2                	lw	ra,12(sp)
200132e6:	0141                	add	sp,sp,16
200132e8:	8082                	ret

200132ea <<e310x_hal::device::DeviceResources as core::convert::From<e310x::Peripherals>>::from>:
    fn from(p: Peripherals) -> Self {
200132ea:	7139                	add	sp,sp,-64
            core_peripherals: CorePeripherals::new(p.CLINT, p.PLIC),
200132ec:	de06                	sw	ra,60(sp)
200132ee:	c42a                	sw	a0,8(sp)
200132f0:	0848                	add	a0,sp,20
200132f2:	c62a                	sw	a0,12(sp)
200132f4:	00000097          	auipc	ra,0x0
200132f8:	fac080e7          	jalr	-84(ra) # 200132a0 <e310x_hal::core::CorePeripherals::new>
            pins: p.GPIO0.into(),
200132fc:	ffffe097          	auipc	ra,0xffffe
20013300:	690080e7          	jalr	1680(ra) # 2001198c <<T as core::convert::Into<U>>::into>
20013304:	4522                	lw	a0,8(sp)
20013306:	45b2                	lw	a1,12(sp)
20013308:	02400613          	li	a2,36
        DeviceResources {
2001330c:	00002097          	auipc	ra,0x2
20013310:	0f2080e7          	jalr	242(ra) # 200153fe <memcpy>
    }
20013314:	50f2                	lw	ra,60(sp)
20013316:	6121                	add	sp,sp,64
20013318:	8082                	ret

2001331a <<u32 as e310x_hal::time::U32Ext>::bps>:
    /// Wrap in `MegaHertz`
    fn mhz(self) -> MegaHertz;
}

impl U32Ext for u32 {
    fn bps(self) -> Bps {
2001331a:	1141                	add	sp,sp,-16
2001331c:	c62a                	sw	a0,12(sp)
        Bps(self)
2001331e:	c42a                	sw	a0,8(sp)
    }
20013320:	4522                	lw	a0,8(sp)
20013322:	0141                	add	sp,sp,16
20013324:	8082                	ret

20013326 <<u32 as e310x_hal::time::U32Ext>::mhz>:

    fn khz(self) -> KiloHertz {
        KiloHertz(self)
    }

    fn mhz(self) -> MegaHertz {
20013326:	1141                	add	sp,sp,-16
20013328:	c62a                	sw	a0,12(sp)
        MegaHertz(self)
2001332a:	c42a                	sw	a0,8(sp)
    }
2001332c:	4522                	lw	a0,8(sp)
2001332e:	0141                	add	sp,sp,16
20013330:	8082                	ret

20013332 <<e310x_hal::time::MegaHertz as core::convert::Into<e310x_hal::time::Hertz>>::into>:
        Hertz(self.0 * 1_000)
    }
}

impl Into<Hertz> for MegaHertz {
    fn into(self) -> Hertz {
20013332:	1141                	add	sp,sp,-16
20013334:	c62a                	sw	a0,12(sp)
20013336:	000f45b7          	lui	a1,0xf4
2001333a:	24058593          	add	a1,a1,576 # f4240 <.Lline_table_start2+0xb3428>
        Hertz(self.0 * 1_000_000)
2001333e:	02b50633          	mul	a2,a0,a1
20013342:	c232                	sw	a2,4(sp)
20013344:	02b53533          	mulhu	a0,a0,a1
20013348:	e519                	bnez	a0,20013356 <<e310x_hal::time::MegaHertz as core::convert::Into<e310x_hal::time::Hertz>>::into+0x24>
2001334a:	a009                	j	2001334c <<e310x_hal::time::MegaHertz as core::convert::Into<e310x_hal::time::Hertz>>::into+0x1a>
2001334c:	4512                	lw	a0,4(sp)
2001334e:	c42a                	sw	a0,8(sp)
    }
20013350:	4522                	lw	a0,8(sp)
20013352:	0141                	add	sp,sp,16
20013354:	8082                	ret
        Hertz(self.0 * 1_000_000)
20013356:	20016537          	lui	a0,0x20016
2001335a:	e1050513          	add	a0,a0,-496 # 20015e10 <str.5>
2001335e:	200165b7          	lui	a1,0x20016
20013362:	26c58613          	add	a2,a1,620 # 2001626c <.L__unnamed_84>
20013366:	02100593          	li	a1,33
2001336a:	00001097          	auipc	ra,0x1
2001336e:	5e8080e7          	jalr	1512(ra) # 20014952 <core::panicking::panic>
	...

20013374 <e310x_hal::gpio::gpio0::<impl e310x_hal::gpio::GpioExt for e310x::GPIO0>::split>:
                fn split(self) -> Parts {
20013374:	1141                	add	sp,sp,-16
                }
20013376:	0141                	add	sp,sp,16
20013378:	8082                	ret

2001337a <yarr_idle_task>:

pub use riscv_rt::entry;
use yarr::process::Process;

#[no_mangle]
fn yarr_idle_task() -> ! {
2001337a:	1141                	add	sp,sp,-16
    loop {
2001337c:	c606                	sw	ra,12(sp)
2001337e:	a009                	j	20013380 <yarr_idle_task+0x6>
20013380:	4511                	li	a0,4
        core::sync::atomic::compiler_fence(core::sync::atomic::Ordering::SeqCst);
20013382:	00a105a3          	sb	a0,11(sp)
20013386:	00b14503          	lbu	a0,11(sp)
2001338a:	00000097          	auipc	ra,0x0
2001338e:	13e080e7          	jalr	318(ra) # 200134c8 <core::sync::atomic::compiler_fence>
        unsafe {
            riscv::asm::wfi();
20013392:	00000097          	auipc	ra,0x0
20013396:	4b2080e7          	jalr	1202(ra) # 20013844 <riscv::asm::wfi>
2001339a:	b7dd                	j	20013380 <yarr_idle_task+0x6>

2001339c <yarr_init_process>:
        }
    }
}

#[no_mangle]
fn yarr_init_process(process: &mut Process) {
2001339c:	7139                	add	sp,sp,-64
2001339e:	de06                	sw	ra,60(sp)
200133a0:	ce2a                	sw	a0,28(sp)
200133a2:	d82a                	sw	a0,48(sp)
200133a4:	4511                	li	a0,4
    core::sync::atomic::compiler_fence(core::sync::atomic::Ordering::SeqCst);
200133a6:	02a105a3          	sb	a0,43(sp)
200133aa:	02b14503          	lbu	a0,43(sp)
200133ae:	00000097          	auipc	ra,0x0
200133b2:	11a080e7          	jalr	282(ra) # 200134c8 <core::sync::atomic::compiler_fence>
200133b6:	4572                	lw	a0,28(sp)
    let mut mstatus: usize;
    unsafe {
        core::arch::asm!(
200133b8:	300025f3          	.insn	4, 0x300025f3
200133bc:	d62e                	sw	a1,44(sp)
            "csrr {0}, mstatus",
            out(reg) mstatus,
        );
    }
    // (0x188 << 4) | 8 = 0x1888 = 6280 = 0b0001100010001000 // enable MPP, MPIE, and MIE bits
    mstatus |= 0x1888;
200133be:	55b2                	lw	a1,44(sp)
200133c0:	6609                	lui	a2,0x2
200133c2:	88860613          	add	a2,a2,-1912 # 1888 <.Lline_table_start0+0xd6>
200133c6:	8dd1                	or	a1,a1,a2
200133c8:	d62e                	sw	a1,44(sp)

    // store mepc/pc program counter for when initial ret is called
    process.context[process.context.len() - 1] = process.exec as *const () as usize;
200133ca:	490c                	lw	a1,16(a0)
200133cc:	d02e                	sw	a1,32(sp)
200133ce:	4148                	lw	a0,4(a0)
200133d0:	fff50593          	add	a1,a0,-1
200133d4:	d22e                	sw	a1,36(sp)
200133d6:	c909                	beqz	a0,200133e8 <yarr_init_process+0x4c>
200133d8:	a009                	j	200133da <yarr_init_process+0x3e>
200133da:	5512                	lw	a0,36(sp)
200133dc:	45f2                	lw	a1,28(sp)
200133de:	41cc                	lw	a1,4(a1)
200133e0:	cc2e                	sw	a1,24(sp)
200133e2:	02b56263          	bltu	a0,a1,20013406 <yarr_init_process+0x6a>
200133e6:	a089                	j	20013428 <yarr_init_process+0x8c>
200133e8:	20016537          	lui	a0,0x20016
200133ec:	2b050513          	add	a0,a0,688 # 200162b0 <str.0>
200133f0:	200165b7          	lui	a1,0x20016
200133f4:	29458613          	add	a2,a1,660 # 20016294 <.L__unnamed_1>
200133f8:	02100593          	li	a1,33
200133fc:	00001097          	auipc	ra,0x1
20013400:	556080e7          	jalr	1366(ra) # 20014952 <core::panicking::panic>
20013404:	0000                	unimp
20013406:	4572                	lw	a0,28(sp)
20013408:	5582                	lw	a1,32(sp)
2001340a:	5692                	lw	a3,36(sp)
2001340c:	4110                	lw	a2,0(a0)
2001340e:	068a                	sll	a3,a3,0x2
20013410:	9636                	add	a2,a2,a3
20013412:	c20c                	sw	a1,0(a2)
    process.context[process.context.len() - 2] = mstatus;
20013414:	55b2                	lw	a1,44(sp)
20013416:	c82e                	sw	a1,16(sp)
20013418:	4148                	lw	a0,4(a0)
2001341a:	ffe50593          	add	a1,a0,-2
2001341e:	ca2e                	sw	a1,20(sp)
20013420:	4589                	li	a1,2
20013422:	02b56563          	bltu	a0,a1,2001344c <yarr_init_process+0xb0>
20013426:	a821                	j	2001343e <yarr_init_process+0xa2>
    process.context[process.context.len() - 1] = process.exec as *const () as usize;
20013428:	45e2                	lw	a1,24(sp)
2001342a:	5512                	lw	a0,36(sp)
2001342c:	20016637          	lui	a2,0x20016
20013430:	2d460613          	add	a2,a2,724 # 200162d4 <.L__unnamed_2>
20013434:	00001097          	auipc	ra,0x1
20013438:	54a080e7          	jalr	1354(ra) # 2001497e <core::panicking::panic_bounds_check>
2001343c:	0000                	unimp
    process.context[process.context.len() - 2] = mstatus;
2001343e:	4552                	lw	a0,20(sp)
20013440:	45f2                	lw	a1,28(sp)
20013442:	41cc                	lw	a1,4(a1)
20013444:	c62e                	sw	a1,12(sp)
20013446:	02b56263          	bltu	a0,a1,2001346a <yarr_init_process+0xce>
2001344a:	a091                	j	2001348e <yarr_init_process+0xf2>
2001344c:	20016537          	lui	a0,0x20016
20013450:	2b050513          	add	a0,a0,688 # 200162b0 <str.0>
20013454:	200165b7          	lui	a1,0x20016
20013458:	2e458613          	add	a2,a1,740 # 200162e4 <.L__unnamed_3>
2001345c:	02100593          	li	a1,33
20013460:	00001097          	auipc	ra,0x1
20013464:	4f2080e7          	jalr	1266(ra) # 20014952 <core::panicking::panic>
20013468:	0000                	unimp
2001346a:	4572                	lw	a0,28(sp)
2001346c:	45c2                	lw	a1,16(sp)
2001346e:	46d2                	lw	a3,20(sp)
20013470:	4110                	lw	a2,0(a0)
20013472:	068a                	sll	a3,a3,0x2
20013474:	9636                	add	a2,a2,a3
20013476:	c20c                	sw	a1,0(a2)
    // store stack pointer
    process.context[1] = process.stack.as_ptr() as usize;
20013478:	4510                	lw	a2,8(a0)
2001347a:	c232                	sw	a2,4(sp)
2001347c:	454c                	lw	a1,12(a0)
2001347e:	da32                	sw	a2,52(sp)
20013480:	dc2e                	sw	a1,56(sp)
20013482:	414c                	lw	a1,4(a0)
20013484:	c42e                	sw	a1,8(sp)
20013486:	4505                	li	a0,1
20013488:	00b56e63          	bltu	a0,a1,200134a4 <yarr_init_process+0x108>
2001348c:	a01d                	j	200134b2 <yarr_init_process+0x116>
    process.context[process.context.len() - 2] = mstatus;
2001348e:	45b2                	lw	a1,12(sp)
20013490:	4552                	lw	a0,20(sp)
20013492:	20016637          	lui	a2,0x20016
20013496:	2f460613          	add	a2,a2,756 # 200162f4 <.L__unnamed_4>
2001349a:	00001097          	auipc	ra,0x1
2001349e:	4e4080e7          	jalr	1252(ra) # 2001497e <core::panicking::panic_bounds_check>
200134a2:	0000                	unimp
    process.context[1] = process.stack.as_ptr() as usize;
200134a4:	4512                	lw	a0,4(sp)
200134a6:	45f2                	lw	a1,28(sp)
200134a8:	418c                	lw	a1,0(a1)
200134aa:	c1c8                	sw	a0,4(a1)
    // process.stack[process.stack.len() - 1] = process.exec as *const () as usize;
    // process.stack[process.stack.len() - 2] = mstatus;
    // // store stack pointer
    // process.stack[process.stack.len() - 32] =
    //     unsafe { process.stack.as_ptr().add(process.stack.len() - 33) } as usize;
}
200134ac:	50f2                	lw	ra,60(sp)
200134ae:	6121                	add	sp,sp,64
200134b0:	8082                	ret
    process.context[1] = process.stack.as_ptr() as usize;
200134b2:	45a2                	lw	a1,8(sp)
200134b4:	20016537          	lui	a0,0x20016
200134b8:	30450613          	add	a2,a0,772 # 20016304 <.L__unnamed_5>
200134bc:	4505                	li	a0,1
200134be:	00001097          	auipc	ra,0x1
200134c2:	4c0080e7          	jalr	1216(ra) # 2001497e <core::panicking::panic_bounds_check>
	...

200134c8 <core::sync::atomic::compiler_fence>:
200134c8:	7179                	add	sp,sp,-48
200134ca:	00a103a3          	sb	a0,7(sp)
200134ce:	00714503          	lbu	a0,7(sp)
200134d2:	c02a                	sw	a0,0(sp)
200134d4:	4502                	lw	a0,0(sp)
200134d6:	050a                	sll	a0,a0,0x2
200134d8:	200165b7          	lui	a1,0x20016
200134dc:	31458593          	add	a1,a1,788 # 20016314 <.LJTI0_0>
200134e0:	952e                	add	a0,a0,a1
200134e2:	4108                	lw	a0,0(a0)
200134e4:	8502                	jr	a0
	...

200134e8 <.LBB0_3>:
200134e8:	20016537          	lui	a0,0x20016
200134ec:	35c50613          	add	a2,a0,860 # 2001635c <.L__unnamed_1>
200134f0:	d432                	sw	a2,40(sp)
200134f2:	4585                	li	a1,1
200134f4:	d62e                	sw	a1,44(sp)
200134f6:	4501                	li	a0,0
200134f8:	d02a                	sw	a0,32(sp)
200134fa:	c432                	sw	a2,8(sp)
200134fc:	c62e                	sw	a1,12(sp)
200134fe:	5602                	lw	a2,32(sp)
20013500:	5592                	lw	a1,36(sp)
20013502:	cc32                	sw	a2,24(sp)
20013504:	ce2e                	sw	a1,28(sp)
20013506:	200165b7          	lui	a1,0x20016
2001350a:	36458593          	add	a1,a1,868 # 20016364 <.L__unnamed_5>
2001350e:	c82e                	sw	a1,16(sp)
20013510:	ca2a                	sw	a0,20(sp)
20013512:	20016537          	lui	a0,0x20016
20013516:	3b450593          	add	a1,a0,948 # 200163b4 <.L__unnamed_3>
2001351a:	0028                	add	a0,sp,8
2001351c:	00001097          	auipc	ra,0x1
20013520:	408080e7          	jalr	1032(ra) # 20014924 <core::panicking::panic_fmt>
	...

20013526 <.LBB0_4>:
20013526:	a021                	j	2001352e <.LBB0_7+0x2>

20013528 <.LBB0_5>:
20013528:	a019                	j	2001352e <.LBB0_7+0x2>

2001352a <.LBB0_6>:
2001352a:	a011                	j	2001352e <.LBB0_7+0x2>

2001352c <.LBB0_7>:
2001352c:	a009                	j	2001352e <.LBB0_7+0x2>
2001352e:	6145                	add	sp,sp,48
20013530:	8082                	ret

20013532 <yarr_m_trap>:
#[no_mangle]
pub unsafe extern "C" fn yarr_m_trap(
20013532:	7149                	add	sp,sp,-368
20013534:	16112623          	sw	ra,364(sp)
20013538:	ce2a                	sw	a0,28(sp)
2001353a:	d02e                	sw	a1,32(sp)
2001353c:	d232                	sw	a2,36(sp)
2001353e:	d436                	sw	a3,40(sp)
20013540:	d63a                	sw	a4,44(sp)
    mhartid: usize,
    mstatus: usize,
    mscratch: usize,
) -> usize {
    let new_frame;
    let is_async = (mcause >> ((core::mem::size_of::<usize>() * 8) - 1)) & 1 == 1;
20013542:	4572                	lw	a0,28(sp)
20013544:	ca2a                	sw	a0,20(sp)
20013546:	02000513          	li	a0,32
2001354a:	cc2a                	sw	a0,24(sp)
2001354c:	4501                	li	a0,0
2001354e:	e901                	bnez	a0,2001355e <yarr_m_trap+0x2c>
20013550:	a009                	j	20013552 <yarr_m_trap+0x20>
20013552:	4562                	lw	a0,24(sp)
20013554:	fff50593          	add	a1,a0,-1
20013558:	c82e                	sw	a1,16(sp)
2001355a:	c51d                	beqz	a0,20013588 <yarr_m_trap+0x56>
2001355c:	a005                	j	2001357c <yarr_m_trap+0x4a>
2001355e:	20016537          	lui	a0,0x20016
20013562:	3f050513          	add	a0,a0,1008 # 200163f0 <str.0>
20013566:	200165b7          	lui	a1,0x20016
2001356a:	3dc58613          	add	a2,a1,988 # 200163dc <.L__unnamed_1>
2001356e:	02100593          	li	a1,33
20013572:	00001097          	auipc	ra,0x1
20013576:	3e0080e7          	jalr	992(ra) # 20014952 <core::panicking::panic>
2001357a:	0000                	unimp
2001357c:	4542                	lw	a0,16(sp)
2001357e:	02000593          	li	a1,32
20013582:	02b56263          	bltu	a0,a1,200135a6 <yarr_m_trap+0x74>
20013586:	a80d                	j	200135b8 <yarr_m_trap+0x86>
20013588:	20016537          	lui	a0,0x20016
2001358c:	43050513          	add	a0,a0,1072 # 20016430 <str.1>
20013590:	200165b7          	lui	a1,0x20016
20013594:	41458613          	add	a2,a1,1044 # 20016414 <.L__unnamed_2>
20013598:	02100593          	li	a1,33
2001359c:	00001097          	auipc	ra,0x1
200135a0:	3b6080e7          	jalr	950(ra) # 20014952 <core::panicking::panic>
200135a4:	0000                	unimp
200135a6:	4552                	lw	a0,20(sp)
200135a8:	45c2                	lw	a1,16(sp)
200135aa:	00b55533          	srl	a0,a0,a1
200135ae:	8905                	and	a0,a0,1
200135b0:	0aa10da3          	sb	a0,187(sp)
    if is_async {
200135b4:	e10d                	bnez	a0,200135d6 <yarr_m_trap+0xa4>
200135b6:	a80d                	j	200135e8 <yarr_m_trap+0xb6>
    let is_async = (mcause >> ((core::mem::size_of::<usize>() * 8) - 1)) & 1 == 1;
200135b8:	20016537          	lui	a0,0x20016
200135bc:	47050513          	add	a0,a0,1136 # 20016470 <str.2>
200135c0:	200165b7          	lui	a1,0x20016
200135c4:	45458613          	add	a2,a1,1108 # 20016454 <.L__unnamed_3>
200135c8:	02400593          	li	a1,36
200135cc:	00001097          	auipc	ra,0x1
200135d0:	386080e7          	jalr	902(ra) # 20014952 <core::panicking::panic>
200135d4:	0000                	unimp
        const MCAUSE_MASK: usize = 0x7FFFFFFF;
        let mcause = mcause & MCAUSE_MASK;
200135d6:	4572                	lw	a0,28(sp)
200135d8:	0506                	sll	a0,a0,0x1
200135da:	8105                	srl	a0,a0,0x1
200135dc:	da2a                	sw	a0,52(sp)
        const IRQ_M_TIMER: usize = 7;
        if mcause == IRQ_M_TIMER {
200135de:	5552                	lw	a0,52(sp)
200135e0:	459d                	li	a1,7
200135e2:	0cb50e63          	beq	a0,a1,200136be <yarr_m_trap+0x18c>
200135e6:	a031                	j	200135f2 <yarr_m_trap+0xc0>
        } else {
            panic!("unhandled async trap: {mcause}  {mtval}  {mhartid}  {mstatus}  {mscratch} "); // TODO: unhandled trap
        }
    } else {
        const ERQ_M_ECALL: usize = 11;
        if mcause == ERQ_M_ECALL {
200135e8:	4572                	lw	a0,28(sp)
200135ea:	45ad                	li	a1,11
200135ec:	1ab50163          	beq	a0,a1,2001378e <yarr_m_trap+0x25c>
200135f0:	a219                	j	200136f6 <yarr_m_trap+0x1c4>
200135f2:	184c                	add	a1,sp,52
200135f4:	14b12a23          	sw	a1,340(sp)
200135f8:	20015537          	lui	a0,0x20015
200135fc:	3e050513          	add	a0,a0,992 # 200153e0 <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt>
20013600:	14a12c23          	sw	a0,344(sp)
20013604:	14b12623          	sw	a1,332(sp)
20013608:	14a12823          	sw	a0,336(sp)
2001360c:	14c12303          	lw	t1,332(sp)
20013610:	15012283          	lw	t0,336(sp)
20013614:	100c                	add	a1,sp,32
20013616:	14b12223          	sw	a1,324(sp)
2001361a:	14a12423          	sw	a0,328(sp)
2001361e:	12b12e23          	sw	a1,316(sp)
20013622:	14a12023          	sw	a0,320(sp)
20013626:	13c12883          	lw	a7,316(sp)
2001362a:	14012803          	lw	a6,320(sp)
2001362e:	104c                	add	a1,sp,36
20013630:	12b12a23          	sw	a1,308(sp)
20013634:	12a12c23          	sw	a0,312(sp)
20013638:	12b12623          	sw	a1,300(sp)
2001363c:	12a12823          	sw	a0,304(sp)
20013640:	12c12783          	lw	a5,300(sp)
20013644:	13012703          	lw	a4,304(sp)
20013648:	102c                	add	a1,sp,40
2001364a:	12b12223          	sw	a1,292(sp)
2001364e:	12a12423          	sw	a0,296(sp)
20013652:	10b12e23          	sw	a1,284(sp)
20013656:	12a12023          	sw	a0,288(sp)
2001365a:	11c12683          	lw	a3,284(sp)
2001365e:	12012603          	lw	a2,288(sp)
20013662:	106c                	add	a1,sp,44
20013664:	10b12a23          	sw	a1,276(sp)
20013668:	10a12c23          	sw	a0,280(sp)
2001366c:	10b12623          	sw	a1,268(sp)
20013670:	10a12823          	sw	a0,272(sp)
20013674:	10c12583          	lw	a1,268(sp)
20013678:	11012503          	lw	a0,272(sp)
            panic!("unhandled async trap: {mcause}  {mtval}  {mhartid}  {mstatus}  {mscratch} "); // TODO: unhandled trap
2001367c:	c89a                	sw	t1,80(sp)
2001367e:	ca96                	sw	t0,84(sp)
20013680:	ccc6                	sw	a7,88(sp)
20013682:	cec2                	sw	a6,92(sp)
20013684:	d0be                	sw	a5,96(sp)
20013686:	d2ba                	sw	a4,100(sp)
20013688:	d4b6                	sw	a3,104(sp)
2001368a:	d6b2                	sw	a2,108(sp)
2001368c:	d8ae                	sw	a1,112(sp)
2001368e:	daaa                	sw	a0,116(sp)
20013690:	20016537          	lui	a0,0x20016
20013694:	4b050593          	add	a1,a0,1200 # 200164b0 <.L__unnamed_4>
20013698:	1828                	add	a0,sp,56
2001369a:	c62a                	sw	a0,12(sp)
2001369c:	4619                	li	a2,6
2001369e:	0894                	add	a3,sp,80
200136a0:	4715                	li	a4,5
200136a2:	00000097          	auipc	ra,0x0
200136a6:	11a080e7          	jalr	282(ra) # 200137bc <core::fmt::Arguments::new_v1>
200136aa:	4532                	lw	a0,12(sp)
200136ac:	200165b7          	lui	a1,0x20016
200136b0:	4e058593          	add	a1,a1,1248 # 200164e0 <.L__unnamed_5>
200136b4:	00001097          	auipc	ra,0x1
200136b8:	270080e7          	jalr	624(ra) # 20014924 <core::panicking::panic_fmt>
200136bc:	0000                	unimp
            yarr::timer::yarr_set_timer(yarr::scheduler::CONTEXT_SWITCH_TIME);
200136be:	80001537          	lui	a0,0x80001
200136c2:	a9c52583          	lw	a1,-1380(a0) # 80000a9c <yarr::scheduler::CONTEXT_SWITCH_TIME+0x4>
200136c6:	a9852503          	lw	a0,-1384(a0)
200136ca:	00000097          	auipc	ra,0x0
200136ce:	180080e7          	jalr	384(ra) # 2001384a <yarr_set_timer>
            new_frame = yarr::scheduler::schedule().context.as_ptr() as usize;
200136d2:	00000097          	auipc	ra,0x0
200136d6:	658080e7          	jalr	1624(ra) # 20013d2a <yarr::scheduler::schedule>
200136da:	85aa                	mv	a1,a0
200136dc:	4188                	lw	a0,0(a1)
200136de:	41cc                	lw	a1,4(a1)
200136e0:	16a12223          	sw	a0,356(sp)
200136e4:	16b12423          	sw	a1,360(sp)
200136e8:	d82a                	sw	a0,48(sp)
    if is_async {
200136ea:	a009                	j	200136ec <yarr_m_trap+0x1ba>
            new_frame = yarr::scheduler::schedule().context.as_ptr() as usize;
        } else {
            panic!("unhandled sync trap: {mcause}  {mtval}  {mhartid}  {mstatus}  {mscratch} "); // TODO: unhandled trap
        }
    }
    new_frame
200136ec:	5542                	lw	a0,48(sp)
}
200136ee:	16c12083          	lw	ra,364(sp)
200136f2:	6175                	add	sp,sp,368
200136f4:	8082                	ret
200136f6:	086c                	add	a1,sp,28
200136f8:	10b12223          	sw	a1,260(sp)
200136fc:	20015537          	lui	a0,0x20015
20013700:	3e050513          	add	a0,a0,992 # 200153e0 <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt>
20013704:	10a12423          	sw	a0,264(sp)
20013708:	dfae                	sw	a1,252(sp)
2001370a:	10a12023          	sw	a0,256(sp)
2001370e:	537e                	lw	t1,252(sp)
20013710:	10012283          	lw	t0,256(sp)
20013714:	100c                	add	a1,sp,32
20013716:	dbae                	sw	a1,244(sp)
20013718:	ddaa                	sw	a0,248(sp)
2001371a:	d7ae                	sw	a1,236(sp)
2001371c:	d9aa                	sw	a0,240(sp)
2001371e:	58be                	lw	a7,236(sp)
20013720:	584e                	lw	a6,240(sp)
20013722:	104c                	add	a1,sp,36
20013724:	d3ae                	sw	a1,228(sp)
20013726:	d5aa                	sw	a0,232(sp)
20013728:	cfae                	sw	a1,220(sp)
2001372a:	d1aa                	sw	a0,224(sp)
2001372c:	47fe                	lw	a5,220(sp)
2001372e:	570e                	lw	a4,224(sp)
20013730:	102c                	add	a1,sp,40
20013732:	cbae                	sw	a1,212(sp)
20013734:	cdaa                	sw	a0,216(sp)
20013736:	c7ae                	sw	a1,204(sp)
20013738:	c9aa                	sw	a0,208(sp)
2001373a:	46be                	lw	a3,204(sp)
2001373c:	464e                	lw	a2,208(sp)
2001373e:	106c                	add	a1,sp,44
20013740:	c3ae                	sw	a1,196(sp)
20013742:	c5aa                	sw	a0,200(sp)
20013744:	df2e                	sw	a1,188(sp)
20013746:	c1aa                	sw	a0,192(sp)
20013748:	55fa                	lw	a1,188(sp)
2001374a:	450e                	lw	a0,192(sp)
            panic!("unhandled sync trap: {mcause}  {mtval}  {mhartid}  {mstatus}  {mscratch} "); // TODO: unhandled trap
2001374c:	c91a                	sw	t1,144(sp)
2001374e:	cb16                	sw	t0,148(sp)
20013750:	cd46                	sw	a7,152(sp)
20013752:	cf42                	sw	a6,156(sp)
20013754:	d13e                	sw	a5,160(sp)
20013756:	d33a                	sw	a4,164(sp)
20013758:	d536                	sw	a3,168(sp)
2001375a:	d732                	sw	a2,172(sp)
2001375c:	d92e                	sw	a1,176(sp)
2001375e:	db2a                	sw	a0,180(sp)
20013760:	20016537          	lui	a0,0x20016
20013764:	50850593          	add	a1,a0,1288 # 20016508 <.L__unnamed_6>
20013768:	18a8                	add	a0,sp,120
2001376a:	c42a                	sw	a0,8(sp)
2001376c:	4619                	li	a2,6
2001376e:	0914                	add	a3,sp,144
20013770:	4715                	li	a4,5
20013772:	00000097          	auipc	ra,0x0
20013776:	04a080e7          	jalr	74(ra) # 200137bc <core::fmt::Arguments::new_v1>
2001377a:	4522                	lw	a0,8(sp)
2001377c:	200165b7          	lui	a1,0x20016
20013780:	53858593          	add	a1,a1,1336 # 20016538 <.L__unnamed_7>
20013784:	00001097          	auipc	ra,0x1
20013788:	1a0080e7          	jalr	416(ra) # 20014924 <core::panicking::panic_fmt>
2001378c:	0000                	unimp
            yarr::timer::yarr_set_timer(yarr::scheduler::CONTEXT_SWITCH_TIME);
2001378e:	80001537          	lui	a0,0x80001
20013792:	a9c52583          	lw	a1,-1380(a0) # 80000a9c <yarr::scheduler::CONTEXT_SWITCH_TIME+0x4>
20013796:	a9852503          	lw	a0,-1384(a0)
2001379a:	00000097          	auipc	ra,0x0
2001379e:	0b0080e7          	jalr	176(ra) # 2001384a <yarr_set_timer>
            new_frame = yarr::scheduler::schedule().context.as_ptr() as usize;
200137a2:	00000097          	auipc	ra,0x0
200137a6:	588080e7          	jalr	1416(ra) # 20013d2a <yarr::scheduler::schedule>
200137aa:	85aa                	mv	a1,a0
200137ac:	4188                	lw	a0,0(a1)
200137ae:	41cc                	lw	a1,4(a1)
200137b0:	14a12e23          	sw	a0,348(sp)
200137b4:	16b12023          	sw	a1,352(sp)
200137b8:	d82a                	sw	a0,48(sp)
    if is_async {
200137ba:	bf0d                	j	200136ec <yarr_m_trap+0x1ba>

200137bc <core::fmt::Arguments::new_v1>:
200137bc:	711d                	add	sp,sp,-96
200137be:	c63a                	sw	a4,12(sp)
200137c0:	c836                	sw	a3,16(sp)
200137c2:	ca32                	sw	a2,20(sp)
200137c4:	cc2e                	sw	a1,24(sp)
200137c6:	ce2a                	sw	a0,28(sp)
200137c8:	c4ae                	sw	a1,72(sp)
200137ca:	c6b2                	sw	a2,76(sp)
200137cc:	c8b6                	sw	a3,80(sp)
200137ce:	caba                	sw	a4,84(sp)
200137d0:	00e66963          	bltu	a2,a4,200137e2 <core::fmt::Arguments::new_v1+0x26>
200137d4:	a009                	j	200137d6 <core::fmt::Arguments::new_v1+0x1a>
200137d6:	45d2                	lw	a1,20(sp)
200137d8:	4532                	lw	a0,12(sp)
200137da:	0505                	add	a0,a0,1
200137dc:	02b56563          	bltu	a0,a1,20013806 <core::fmt::Arguments::new_v1+0x4a>
200137e0:	a011                	j	200137e4 <core::fmt::Arguments::new_v1+0x28>
200137e2:	a015                	j	20013806 <core::fmt::Arguments::new_v1+0x4a>
200137e4:	4532                	lw	a0,12(sp)
200137e6:	45f2                	lw	a1,28(sp)
200137e8:	4642                	lw	a2,16(sp)
200137ea:	46d2                	lw	a3,20(sp)
200137ec:	4762                	lw	a4,24(sp)
200137ee:	4781                	li	a5,0
200137f0:	dc3e                	sw	a5,56(sp)
200137f2:	c198                	sw	a4,0(a1)
200137f4:	c1d4                	sw	a3,4(a1)
200137f6:	5762                	lw	a4,56(sp)
200137f8:	56f2                	lw	a3,60(sp)
200137fa:	c998                	sw	a4,16(a1)
200137fc:	c9d4                	sw	a3,20(a1)
200137fe:	c590                	sw	a2,8(a1)
20013800:	c5c8                	sw	a0,12(a1)
20013802:	6125                	add	sp,sp,96
20013804:	8082                	ret
20013806:	20016537          	lui	a0,0x20016
2001380a:	55450613          	add	a2,a0,1364 # 20016554 <.L__unnamed_1>
2001380e:	ccb2                	sw	a2,88(sp)
20013810:	4585                	li	a1,1
20013812:	ceae                	sw	a1,92(sp)
20013814:	4501                	li	a0,0
20013816:	c0aa                	sw	a0,64(sp)
20013818:	d032                	sw	a2,32(sp)
2001381a:	d22e                	sw	a1,36(sp)
2001381c:	4606                	lw	a2,64(sp)
2001381e:	4596                	lw	a1,68(sp)
20013820:	d832                	sw	a2,48(sp)
20013822:	da2e                	sw	a1,52(sp)
20013824:	200165b7          	lui	a1,0x20016
20013828:	55c58593          	add	a1,a1,1372 # 2001655c <.L__unnamed_5>
2001382c:	d42e                	sw	a1,40(sp)
2001382e:	d62a                	sw	a0,44(sp)
20013830:	20016537          	lui	a0,0x20016
20013834:	5a850593          	add	a1,a0,1448 # 200165a8 <.L__unnamed_3>
20013838:	1008                	add	a0,sp,32
2001383a:	00001097          	auipc	ra,0x1
2001383e:	0ea080e7          	jalr	234(ra) # 20014924 <core::panicking::panic_fmt>
	...

20013844 <riscv::asm::wfi>:
        $(#[$attr])*
        #[inline]
        pub unsafe fn $fnname() {
            match () {
                #[cfg(riscv)]
                () => core::arch::asm!($asm),
20013844:	10500073          	wfi

                #[cfg(not(riscv))]
                () => unimplemented!(),
            }
        }
20013848:	8082                	ret

2001384a <yarr_set_timer>:

#[no_mangle]
#[allow(unused_variables)]
#[allow(dead_code)]
#[allow(unused_unsafe)]
pub fn yarr_set_timer(switch_time: u64) {
2001384a:	7139                	add	sp,sp,-64
2001384c:	de06                	sw	ra,60(sp)
2001384e:	c42e                	sw	a1,8(sp)
20013850:	c62a                	sw	a0,12(sp)
20013852:	ca2e                	sw	a1,20(sp)
20013854:	c82a                	sw	a0,16(sp)
20013856:	0200c537          	lui	a0,0x200c
2001385a:	1561                	add	a0,a0,-8 # 200bff8 <.Lline_table_start2+0x1fcb1e0>
    unsafe {
        MMIO_MTIMECMP.write_volatile(MMIO_MTIME.read_volatile().wrapping_add(switch_time));
2001385c:	00000097          	auipc	ra,0x0
20013860:	034080e7          	jalr	52(ra) # 20013890 <core::ptr::const_ptr::<impl *const T>::read_volatile>
20013864:	46a2                	lw	a3,8(sp)
20013866:	862a                	mv	a2,a0
20013868:	4532                	lw	a0,12(sp)
2001386a:	ce2e                	sw	a1,28(sp)
2001386c:	cc32                	sw	a2,24(sp)
2001386e:	d236                	sw	a3,36(sp)
20013870:	d02a                	sw	a0,32(sp)
20013872:	95b6                	add	a1,a1,a3
20013874:	9532                	add	a0,a0,a2
20013876:	00c53633          	sltu	a2,a0,a2
2001387a:	962e                	add	a2,a2,a1
2001387c:	020045b7          	lui	a1,0x2004
20013880:	d62e                	sw	a1,44(sp)
20013882:	da32                	sw	a2,52(sp)
20013884:	d82a                	sw	a0,48(sp)
20013886:	c1d0                	sw	a2,4(a1)
20013888:	c188                	sw	a0,0(a1)
    }
}
2001388a:	50f2                	lw	ra,60(sp)
2001388c:	6121                	add	sp,sp,64
2001388e:	8082                	ret

20013890 <core::ptr::const_ptr::<impl *const T>::read_volatile>:
20013890:	1141                	add	sp,sp,-16
20013892:	85aa                	mv	a1,a0
20013894:	c22e                	sw	a1,4(sp)
20013896:	4188                	lw	a0,0(a1)
20013898:	41cc                	lw	a1,4(a1)
2001389a:	c62e                	sw	a1,12(sp)
2001389c:	c42a                	sw	a0,8(sp)
2001389e:	4522                	lw	a0,8(sp)
200138a0:	45b2                	lw	a1,12(sp)
200138a2:	0141                	add	sp,sp,16
200138a4:	8082                	ret

200138a6 <r0::zero_bss>:
/// # Safety
///
/// - Must be called exactly once, before the application has started.
/// - `ebss >= sbss`.
/// - `sbss` and `ebss` must be `T` aligned.
pub unsafe fn zero_bss<T>(mut sbss: *mut T, ebss: *mut T)
200138a6:	7139                	add	sp,sp,-64
200138a8:	de06                	sw	ra,60(sp)
200138aa:	c42e                	sw	a1,8(sp)
200138ac:	c62a                	sw	a0,12(sp)
200138ae:	c82e                	sw	a1,16(sp)
where
    T: Word,
{
    while sbss < ebss {
200138b0:	a009                	j	200138b2 <r0::zero_bss+0xc>
200138b2:	45a2                	lw	a1,8(sp)
200138b4:	4532                	lw	a0,12(sp)
200138b6:	00b56663          	bltu	a0,a1,200138c2 <r0::zero_bss+0x1c>
200138ba:	a009                	j	200138bc <r0::zero_bss+0x16>
        // NOTE(volatile) to prevent this from being transformed into `memclr`
        ptr::write_volatile(sbss, mem::zeroed());
        sbss = sbss.offset(1);
    }
}
200138bc:	50f2                	lw	ra,60(sp)
200138be:	6121                	add	sp,sp,64
200138c0:	8082                	ret
        ptr::write_volatile(sbss, mem::zeroed());
200138c2:	4532                	lw	a0,12(sp)
200138c4:	4581                	li	a1,0
200138c6:	00b10ba3          	sb	a1,23(sp)
200138ca:	4605                	li	a2,1
200138cc:	c232                	sw	a2,4(sp)
200138ce:	cc32                	sw	a2,24(sp)
200138d0:	00b10fa3          	sb	a1,31(sp)
200138d4:	d032                	sw	a2,32(sp)
200138d6:	1050                	add	a2,sp,36
200138d8:	d432                	sw	a2,40(sp)
200138da:	d22e                	sw	a1,36(sp)
200138dc:	5592                	lw	a1,36(sp)
200138de:	d62e                	sw	a1,44(sp)
200138e0:	d82e                	sw	a1,48(sp)
200138e2:	00000097          	auipc	ra,0x0
200138e6:	066080e7          	jalr	102(ra) # 20013948 <core::ptr::write_volatile>
200138ea:	4592                	lw	a1,4(sp)
        sbss = sbss.offset(1);
200138ec:	4532                	lw	a0,12(sp)
200138ee:	da2a                	sw	a0,52(sp)
200138f0:	dc2e                	sw	a1,56(sp)
200138f2:	0511                	add	a0,a0,4
200138f4:	c62a                	sw	a0,12(sp)
    while sbss < ebss {
200138f6:	bf75                	j	200138b2 <r0::zero_bss+0xc>

200138f8 <r0::init_data>:
pub unsafe fn init_data<T>(mut sdata: *mut T, edata: *mut T, mut sidata: *const T)
200138f8:	7179                	add	sp,sp,-48
200138fa:	d606                	sw	ra,44(sp)
200138fc:	c62e                	sw	a1,12(sp)
200138fe:	c82a                	sw	a0,16(sp)
20013900:	ca32                	sw	a2,20(sp)
20013902:	cc2e                	sw	a1,24(sp)
    while sdata < edata {
20013904:	a009                	j	20013906 <r0::init_data+0xe>
20013906:	45b2                	lw	a1,12(sp)
20013908:	4542                	lw	a0,16(sp)
2001390a:	00b56663          	bltu	a0,a1,20013916 <r0::init_data+0x1e>
2001390e:	a009                	j	20013910 <r0::init_data+0x18>
}
20013910:	50b2                	lw	ra,44(sp)
20013912:	6145                	add	sp,sp,48
20013914:	8082                	ret
        ptr::write(sdata, ptr::read(sidata));
20013916:	4542                	lw	a0,16(sp)
20013918:	c42a                	sw	a0,8(sp)
2001391a:	4552                	lw	a0,20(sp)
2001391c:	00000097          	auipc	ra,0x0
20013920:	038080e7          	jalr	56(ra) # 20013954 <core::ptr::read>
20013924:	85aa                	mv	a1,a0
20013926:	4522                	lw	a0,8(sp)
20013928:	00000097          	auipc	ra,0x0
2001392c:	036080e7          	jalr	54(ra) # 2001395e <core::ptr::write>
        sdata = sdata.offset(1);
20013930:	4542                	lw	a0,16(sp)
20013932:	ce2a                	sw	a0,28(sp)
20013934:	4585                	li	a1,1
20013936:	d02e                	sw	a1,32(sp)
20013938:	0511                	add	a0,a0,4
2001393a:	c82a                	sw	a0,16(sp)
        sidata = sidata.offset(1);
2001393c:	4552                	lw	a0,20(sp)
2001393e:	d22a                	sw	a0,36(sp)
20013940:	d42e                	sw	a1,40(sp)
20013942:	0511                	add	a0,a0,4
20013944:	ca2a                	sw	a0,20(sp)
    while sdata < edata {
20013946:	b7c1                	j	20013906 <r0::init_data+0xe>

20013948 <core::ptr::write_volatile>:
20013948:	1141                	add	sp,sp,-16
2001394a:	c42a                	sw	a0,8(sp)
2001394c:	c62e                	sw	a1,12(sp)
2001394e:	c10c                	sw	a1,0(a0)
20013950:	0141                	add	sp,sp,16
20013952:	8082                	ret

20013954 <core::ptr::read>:
20013954:	1141                	add	sp,sp,-16
20013956:	c62a                	sw	a0,12(sp)
20013958:	4108                	lw	a0,0(a0)
2001395a:	0141                	add	sp,sp,16
2001395c:	8082                	ret

2001395e <core::ptr::write>:
2001395e:	1141                	add	sp,sp,-16
20013960:	c42a                	sw	a0,8(sp)
20013962:	c62e                	sw	a1,12(sp)
20013964:	c10c                	sw	a1,0(a0)
20013966:	0141                	add	sp,sp,16
20013968:	8082                	ret

2001396a <riscv::asm::wfi>:
                () => core::arch::asm!($asm),
2001396a:	10500073          	wfi
        }
2001396e:	8082                	ret

20013970 <riscv::register::mtvec::write>:

write_csr!(0x305);

/// Writes the CSR
#[inline]
pub unsafe fn write(addr: usize, mode: TrapMode) {
20013970:	1101                	add	sp,sp,-32
20013972:	ce06                	sw	ra,28(sp)
20013974:	c42e                	sw	a1,8(sp)
20013976:	85aa                	mv	a1,a0
20013978:	4522                	lw	a0,8(sp)
2001397a:	00a109a3          	sb	a0,19(sp)
2001397e:	ca2e                	sw	a1,20(sp)
    let bits = addr + mode as usize;
20013980:	01314503          	lbu	a0,19(sp)
20013984:	952e                	add	a0,a0,a1
20013986:	c62a                	sw	a0,12(sp)
20013988:	00b56c63          	bltu	a0,a1,200139a0 <riscv::register::mtvec::write+0x30>
2001398c:	a009                	j	2001398e <riscv::register::mtvec::write+0x1e>
2001398e:	4532                	lw	a0,12(sp)
20013990:	cc2a                	sw	a0,24(sp)
    _write(bits);
20013992:	00000097          	auipc	ra,0x0
20013996:	02a080e7          	jalr	42(ra) # 200139bc <riscv::register::mtvec::_write>
}
2001399a:	40f2                	lw	ra,28(sp)
2001399c:	6105                	add	sp,sp,32
2001399e:	8082                	ret
    let bits = addr + mode as usize;
200139a0:	20016537          	lui	a0,0x20016
200139a4:	63050513          	add	a0,a0,1584 # 20016630 <str.0>
200139a8:	200165b7          	lui	a1,0x20016
200139ac:	61c58613          	add	a2,a1,1564 # 2001661c <.L__unnamed_3>
200139b0:	45f1                	li	a1,28
200139b2:	00001097          	auipc	ra,0x1
200139b6:	fa0080e7          	jalr	-96(ra) # 20014952 <core::panicking::panic>
	...

200139bc <riscv::register::mtvec::_write>:
        unsafe fn _write(bits: usize) {
200139bc:	1141                	add	sp,sp,-16
200139be:	c62a                	sw	a0,12(sp)
                () => core::arch::asm!(concat!("csrrw x0, ", stringify!($csr_number), ", {0}"), in(reg) bits),
200139c0:	30551073          	.insn	4, 0x30551073
        }
200139c4:	0141                	add	sp,sp,16
200139c6:	8082                	ret

200139c8 <riscv::register::mcause::read>:
        pub fn read() -> $register {
200139c8:	1141                	add	sp,sp,-16
                bits: unsafe { _read() },
200139ca:	c606                	sw	ra,12(sp)
200139cc:	00000097          	auipc	ra,0x0
200139d0:	012080e7          	jalr	18(ra) # 200139de <riscv::register::mcause::_read>
            $register {
200139d4:	c42a                	sw	a0,8(sp)
        }
200139d6:	4522                	lw	a0,8(sp)
200139d8:	40b2                	lw	ra,12(sp)
200139da:	0141                	add	sp,sp,16
200139dc:	8082                	ret

200139de <riscv::register::mcause::_read>:
        unsafe fn _read() -> usize {
200139de:	1141                	add	sp,sp,-16
                    core::arch::asm!(concat!("csrrs {0}, ", stringify!($csr_number), ", x0"), out(reg) r);
200139e0:	34202573          	.insn	4, 0x34202573
200139e4:	c62a                	sw	a0,12(sp)
                    r
200139e6:	4532                	lw	a0,12(sp)
        }
200139e8:	0141                	add	sp,sp,16
200139ea:	8082                	ret

200139ec <riscv::register::mcause::Mcause::is_exception>:
        }
    }

    /// Is trap cause an exception.
    #[inline]
    pub fn is_exception(&self) -> bool {
200139ec:	1141                	add	sp,sp,-16
200139ee:	c606                	sw	ra,12(sp)
200139f0:	c42a                	sw	a0,8(sp)
        !self.is_interrupt()
200139f2:	00000097          	auipc	ra,0x0
200139f6:	012080e7          	jalr	18(ra) # 20013a04 <riscv::register::mcause::Mcause::is_interrupt>
200139fa:	00154513          	xor	a0,a0,1
    }
200139fe:	40b2                	lw	ra,12(sp)
20013a00:	0141                	add	sp,sp,16
20013a02:	8082                	ret

20013a04 <riscv::register::mcause::Mcause::is_interrupt>:
    pub fn is_interrupt(&self) -> bool {
20013a04:	1141                	add	sp,sp,-16
20013a06:	c62a                	sw	a0,12(sp)
            () => self.bits & (1 << 31) == 1 << 31,
20013a08:	4108                	lw	a0,0(a0)
20013a0a:	817d                	srl	a0,a0,0x1f
20013a0c:	157d                	add	a0,a0,-1
20013a0e:	00153513          	seqz	a0,a0
    }
20013a12:	0141                	add	sp,sp,16
20013a14:	8082                	ret

20013a16 <riscv::register::mcause::Mcause::code>:
    pub fn code(&self) -> usize {
20013a16:	1141                	add	sp,sp,-16
20013a18:	c62a                	sw	a0,12(sp)
            () => self.bits & !(1 << 31),
20013a1a:	4108                	lw	a0,0(a0)
20013a1c:	0506                	sll	a0,a0,0x1
20013a1e:	8105                	srl	a0,a0,0x1
    }
20013a20:	0141                	add	sp,sp,16
20013a22:	8082                	ret

20013a24 <riscv::register::mhartid::read>:
        pub fn read() -> usize {
20013a24:	1141                	add	sp,sp,-16
            unsafe { _read() }
20013a26:	c606                	sw	ra,12(sp)
20013a28:	00000097          	auipc	ra,0x0
20013a2c:	00e080e7          	jalr	14(ra) # 20013a36 <riscv::register::mhartid::_read>
        }
20013a30:	40b2                	lw	ra,12(sp)
20013a32:	0141                	add	sp,sp,16
20013a34:	8082                	ret

20013a36 <riscv::register::mhartid::_read>:
        unsafe fn _read() -> usize {
20013a36:	1141                	add	sp,sp,-16
                    core::arch::asm!(concat!("csrrs {0}, ", stringify!($csr_number), ", x0"), out(reg) r);
20013a38:	f1402573          	.insn	4, 0xf1402573
20013a3c:	c62a                	sw	a0,12(sp)
                    r
20013a3e:	4532                	lw	a0,12(sp)
        }
20013a40:	0141                	add	sp,sp,16
20013a42:	8082                	ret

20013a44 <DefaultExceptionHandler>:

#[doc(hidden)]
#[no_mangle]
#[allow(unused_variables, non_snake_case)]
pub fn DefaultExceptionHandler(trap_frame: &TrapFrame) -> ! {
20013a44:	1141                	add	sp,sp,-16
20013a46:	c62a                	sw	a0,12(sp)
    loop {
20013a48:	a009                	j	20013a4a <DefaultExceptionHandler+0x6>
20013a4a:	a001                	j	20013a4a <DefaultExceptionHandler+0x6>

20013a4c <DefaultInterruptHandler>:

#[doc(hidden)]
#[no_mangle]
#[allow(unused_variables, non_snake_case)]
pub fn DefaultInterruptHandler() {
    loop {
20013a4c:	a009                	j	20013a4e <DefaultInterruptHandler+0x2>
20013a4e:	a001                	j	20013a4e <DefaultInterruptHandler+0x2>

20013a50 <default_pre_init>:
];

#[doc(hidden)]
#[no_mangle]
#[rustfmt::skip]
pub unsafe extern "Rust" fn default_pre_init() {}
20013a50:	8082                	ret

20013a52 <default_mp_hook>:

#[doc(hidden)]
#[no_mangle]
#[rustfmt::skip]
pub extern "Rust" fn default_mp_hook(hartid: usize) -> bool {
20013a52:	1141                	add	sp,sp,-16
20013a54:	c606                	sw	ra,12(sp)
20013a56:	c42a                	sw	a0,8(sp)
    match hartid {
20013a58:	e511                	bnez	a0,20013a64 <default_mp_hook+0x12>
20013a5a:	a009                	j	20013a5c <default_mp_hook+0xa>
20013a5c:	4505                	li	a0,1
        0 => true,
        _ => loop {
            unsafe { riscv::asm::wfi() }
        },
    }
}
20013a5e:	40b2                	lw	ra,12(sp)
20013a60:	0141                	add	sp,sp,16
20013a62:	8082                	ret
            unsafe { riscv::asm::wfi() }
20013a64:	00000097          	auipc	ra,0x0
20013a68:	f06080e7          	jalr	-250(ra) # 2001396a <riscv::asm::wfi>
20013a6c:	bfe5                	j	20013a64 <default_mp_hook+0x12>

20013a6e <default_setup_interrupts>:

/// Default implementation of `_setup_interrupts` that sets `mtvec`/`stvec` to a trap handler address.
#[doc(hidden)]
#[no_mangle]
#[rustfmt::skip]
pub unsafe extern "Rust" fn default_setup_interrupts() {
20013a6e:	1141                	add	sp,sp,-16
20013a70:	c606                	sw	ra,12(sp)
20013a72:	4501                	li	a0,0
    extern "C" {
        fn _start_trap();
    }

    xtvec::write(_start_trap as usize, xTrapMode::Direct);
20013a74:	00a105a3          	sb	a0,11(sp)
20013a78:	00b14583          	lbu	a1,11(sp)
20013a7c:	20010537          	lui	a0,0x20010
20013a80:	10450513          	add	a0,a0,260 # 20010104 <_start_trap>
20013a84:	00000097          	auipc	ra,0x0
20013a88:	eec080e7          	jalr	-276(ra) # 20013970 <riscv::register::mtvec::write>
}
20013a8c:	40b2                	lw	ra,12(sp)
20013a8e:	0141                	add	sp,sp,16
20013a90:	8082                	ret

20013a92 <<usize as bit_field::BitField>::get_bit>:
            fn get_bit(&self, bit: usize) -> bool {
20013a92:	1101                	add	sp,sp,-32
20013a94:	c632                	sw	a2,12(sp)
20013a96:	c82e                	sw	a1,16(sp)
20013a98:	ca2a                	sw	a0,20(sp)
20013a9a:	cc2a                	sw	a0,24(sp)
20013a9c:	ce2e                	sw	a1,28(sp)
20013a9e:	02000513          	li	a0,32
                assert!(bit < Self::BIT_LENGTH);
20013aa2:	00a5ef63          	bltu	a1,a0,20013ac0 <<usize as bit_field::BitField>::get_bit+0x2e>
20013aa6:	a009                	j	20013aa8 <<usize as bit_field::BitField>::get_bit+0x16>
20013aa8:	4632                	lw	a2,12(sp)
20013aaa:	20016537          	lui	a0,0x20016
20013aae:	6e850513          	add	a0,a0,1768 # 200166e8 <.L__unnamed_12>
20013ab2:	02800593          	li	a1,40
20013ab6:	00001097          	auipc	ra,0x1
20013aba:	e9c080e7          	jalr	-356(ra) # 20014952 <core::panicking::panic>
20013abe:	0000                	unimp
                (*self & (1 << bit)) != 0
20013ac0:	45c2                	lw	a1,16(sp)
20013ac2:	4552                	lw	a0,20(sp)
20013ac4:	4108                	lw	a0,0(a0)
20013ac6:	c42a                	sw	a0,8(sp)
20013ac8:	457d                	li	a0,31
20013aca:	00b56a63          	bltu	a0,a1,20013ade <<usize as bit_field::BitField>::get_bit+0x4c>
20013ace:	a009                	j	20013ad0 <<usize as bit_field::BitField>::get_bit+0x3e>
20013ad0:	4522                	lw	a0,8(sp)
20013ad2:	45c2                	lw	a1,16(sp)
20013ad4:	00b55533          	srl	a0,a0,a1
            }
20013ad8:	8905                	and	a0,a0,1
20013ada:	6105                	add	sp,sp,32
20013adc:	8082                	ret
                (*self & (1 << bit)) != 0
20013ade:	4632                	lw	a2,12(sp)
20013ae0:	20016537          	lui	a0,0x20016
20013ae4:	71050513          	add	a0,a0,1808 # 20016710 <str.0>
20013ae8:	02300593          	li	a1,35
20013aec:	00001097          	auipc	ra,0x1
20013af0:	e66080e7          	jalr	-410(ra) # 20014952 <core::panicking::panic>
	...

20013af6 <riscv::interrupt::enable>:
pub unsafe fn enable() {
20013af6:	1141                	add	sp,sp,-16
        () => mstatus::set_mie(),
20013af8:	c606                	sw	ra,12(sp)
20013afa:	00000097          	auipc	ra,0x0
20013afe:	072080e7          	jalr	114(ra) # 20013b6c <riscv::register::mstatus::set_mie>
}
20013b02:	40b2                	lw	ra,12(sp)
20013b04:	0141                	add	sp,sp,16
20013b06:	8082                	ret

20013b08 <riscv::register::mstatus::Mstatus::mie>:
    pub fn mie(&self) -> bool {
20013b08:	1141                	add	sp,sp,-16
20013b0a:	c606                	sw	ra,12(sp)
20013b0c:	c42a                	sw	a0,8(sp)
        self.bits.get_bit(3)
20013b0e:	200165b7          	lui	a1,0x20016
20013b12:	79858613          	add	a2,a1,1944 # 20016798 <.L__unnamed_13>
20013b16:	458d                	li	a1,3
20013b18:	00000097          	auipc	ra,0x0
20013b1c:	f7a080e7          	jalr	-134(ra) # 20013a92 <<usize as bit_field::BitField>::get_bit>
    }
20013b20:	40b2                	lw	ra,12(sp)
20013b22:	0141                	add	sp,sp,16
20013b24:	8082                	ret

20013b26 <<riscv::critical_section::SingleHartCriticalSection as critical_section::Impl>::acquire>:

struct SingleHartCriticalSection;
set_impl!(SingleHartCriticalSection);

unsafe impl Impl for SingleHartCriticalSection {
    unsafe fn acquire() -> RawRestoreState {
20013b26:	1141                	add	sp,sp,-16
        let mut mstatus: usize;
        core::arch::asm!("csrrci {}, mstatus, 0b1000", out(reg) mstatus);
20013b28:	c606                	sw	ra,12(sp)
20013b2a:	30047573          	.insn	4, 0x30047573
20013b2e:	c22a                	sw	a0,4(sp)
        core::mem::transmute::<_, mstatus::Mstatus>(mstatus).mie()
20013b30:	4512                	lw	a0,4(sp)
20013b32:	c42a                	sw	a0,8(sp)
20013b34:	0028                	add	a0,sp,8
20013b36:	00000097          	auipc	ra,0x0
20013b3a:	fd2080e7          	jalr	-46(ra) # 20013b08 <riscv::register::mstatus::Mstatus::mie>
    }
20013b3e:	40b2                	lw	ra,12(sp)
20013b40:	0141                	add	sp,sp,16
20013b42:	8082                	ret

20013b44 <<riscv::critical_section::SingleHartCriticalSection as critical_section::Impl>::release>:

    unsafe fn release(was_active: RawRestoreState) {
20013b44:	1141                	add	sp,sp,-16
20013b46:	c606                	sw	ra,12(sp)
20013b48:	00a105a3          	sb	a0,11(sp)
        // Only re-enable interrupts if they were enabled before the critical section.
        if was_active {
20013b4c:	e509                	bnez	a0,20013b56 <<riscv::critical_section::SingleHartCriticalSection as critical_section::Impl>::release+0x12>
20013b4e:	a009                	j	20013b50 <<riscv::critical_section::SingleHartCriticalSection as critical_section::Impl>::release+0xc>
            interrupt::enable()
        }
    }
20013b50:	40b2                	lw	ra,12(sp)
20013b52:	0141                	add	sp,sp,16
20013b54:	8082                	ret
            interrupt::enable()
20013b56:	00000097          	auipc	ra,0x0
20013b5a:	fa0080e7          	jalr	-96(ra) # 20013af6 <riscv::interrupt::enable>
20013b5e:	bfcd                	j	20013b50 <<riscv::critical_section::SingleHartCriticalSection as critical_section::Impl>::release+0xc>

20013b60 <riscv::register::mstatus::_set>:
        unsafe fn _set(bits: usize) {
20013b60:	1141                	add	sp,sp,-16
20013b62:	c62a                	sw	a0,12(sp)
                () => core::arch::asm!(concat!("csrrs x0, ", stringify!($csr_number), ", {0}"), in(reg) bits),
20013b64:	30052073          	.insn	4, 0x30052073
        }
20013b68:	0141                	add	sp,sp,16
20013b6a:	8082                	ret

20013b6c <riscv::register::mstatus::set_mie>:
        pub unsafe fn $set_field() {
20013b6c:	1141                	add	sp,sp,-16
20013b6e:	c606                	sw	ra,12(sp)
20013b70:	4521                	li	a0,8
            _set($e);
20013b72:	00000097          	auipc	ra,0x0
20013b76:	fee080e7          	jalr	-18(ra) # 20013b60 <riscv::register::mstatus::_set>
        }
20013b7a:	40b2                	lw	ra,12(sp)
20013b7c:	0141                	add	sp,sp,16
20013b7e:	8082                	ret

20013b80 <_critical_section_1_0_acquire>:
/// # }
#[macro_export]
macro_rules! set_impl {
    ($t: ty) => {
        #[no_mangle]
        unsafe fn _critical_section_1_0_acquire() -> $crate::RawRestoreState {
20013b80:	1141                	add	sp,sp,-16
            <$t as $crate::Impl>::acquire()
20013b82:	c606                	sw	ra,12(sp)
20013b84:	00000097          	auipc	ra,0x0
20013b88:	fa2080e7          	jalr	-94(ra) # 20013b26 <<riscv::critical_section::SingleHartCriticalSection as critical_section::Impl>::acquire>
        }
20013b8c:	40b2                	lw	ra,12(sp)
20013b8e:	0141                	add	sp,sp,16
20013b90:	8082                	ret

20013b92 <_critical_section_1_0_release>:
        #[no_mangle]
        unsafe fn _critical_section_1_0_release(restore_state: $crate::RawRestoreState) {
20013b92:	1141                	add	sp,sp,-16
20013b94:	c606                	sw	ra,12(sp)
20013b96:	00a105a3          	sb	a0,11(sp)
            <$t as $crate::Impl>::release(restore_state)
20013b9a:	00000097          	auipc	ra,0x0
20013b9e:	faa080e7          	jalr	-86(ra) # 20013b44 <<riscv::critical_section::SingleHartCriticalSection as critical_section::Impl>::release>
        }
20013ba2:	40b2                	lw	ra,12(sp)
20013ba4:	0141                	add	sp,sp,16
20013ba6:	8082                	ret

20013ba8 <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next>:
20013ba8:	711d                	add	sp,sp,-96
20013baa:	c22a                	sw	a0,4(sp)
20013bac:	4585                	li	a1,1
20013bae:	c42e                	sw	a1,8(sp)
20013bb0:	c62e                	sw	a1,12(sp)
20013bb2:	c82e                	sw	a1,16(sp)
20013bb4:	ca2e                	sw	a1,20(sp)
20013bb6:	d22a                	sw	a0,36(sp)
20013bb8:	4501                	li	a0,0
20013bba:	e10d                	bnez	a0,20013bdc <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next+0x34>
20013bbc:	a009                	j	20013bbe <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next+0x16>
20013bbe:	4512                	lw	a0,4(sp)
20013bc0:	00450593          	add	a1,a0,4
20013bc4:	d42e                	sw	a1,40(sp)
20013bc6:	414c                	lw	a1,4(a0)
20013bc8:	d62e                	sw	a1,44(sp)
20013bca:	4108                	lw	a0,0(a0)
20013bcc:	d82a                	sw	a0,48(sp)
20013bce:	da2e                	sw	a1,52(sp)
20013bd0:	8d2d                	xor	a0,a0,a1
20013bd2:	00153513          	seqz	a0,a0
20013bd6:	00a10fa3          	sb	a0,31(sp)
20013bda:	a811                	j	20013bee <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next+0x46>
20013bdc:	4512                	lw	a0,4(sp)
20013bde:	4148                	lw	a0,4(a0)
20013be0:	dc2a                	sw	a0,56(sp)
20013be2:	de2a                	sw	a0,60(sp)
20013be4:	00153513          	seqz	a0,a0
20013be8:	00a10fa3          	sb	a0,31(sp)
20013bec:	a009                	j	20013bee <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next+0x46>
20013bee:	01f14503          	lbu	a0,31(sp)
20013bf2:	8905                	and	a0,a0,1
20013bf4:	e909                	bnez	a0,20013c06 <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next+0x5e>
20013bf6:	a009                	j	20013bf8 <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next+0x50>
20013bf8:	4512                	lw	a0,4(sp)
20013bfa:	4108                	lw	a0,0(a0)
20013bfc:	c02a                	sw	a0,0(sp)
20013bfe:	c0aa                	sw	a0,64(sp)
20013c00:	4501                	li	a0,0
20013c02:	ed11                	bnez	a0,20013c1e <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next+0x76>
20013c04:	a021                	j	20013c0c <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next+0x64>
20013c06:	4501                	li	a0,0
20013c08:	cc2a                	sw	a0,24(sp)
20013c0a:	a80d                	j	20013c3c <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next+0x94>
20013c0c:	4592                	lw	a1,4(sp)
20013c0e:	4188                	lw	a0,0(a1)
20013c10:	c2aa                	sw	a0,68(sp)
20013c12:	c4aa                	sw	a0,72(sp)
20013c14:	0505                	add	a0,a0,1
20013c16:	d02a                	sw	a0,32(sp)
20013c18:	5502                	lw	a0,32(sp)
20013c1a:	c188                	sw	a0,0(a1)
20013c1c:	a819                	j	20013c32 <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next+0x8a>
20013c1e:	4592                	lw	a1,4(sp)
20013c20:	00458513          	add	a0,a1,4
20013c24:	c6aa                	sw	a0,76(sp)
20013c26:	c8aa                	sw	a0,80(sp)
20013c28:	41c8                	lw	a0,4(a1)
20013c2a:	caaa                	sw	a0,84(sp)
20013c2c:	157d                	add	a0,a0,-1
20013c2e:	c1c8                	sw	a0,4(a1)
20013c30:	a009                	j	20013c32 <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next+0x8a>
20013c32:	4502                	lw	a0,0(sp)
20013c34:	ccaa                	sw	a0,88(sp)
20013c36:	ceaa                	sw	a0,92(sp)
20013c38:	cc2a                	sw	a0,24(sp)
20013c3a:	a009                	j	20013c3c <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next+0x94>
20013c3c:	4562                	lw	a0,24(sp)
20013c3e:	6125                	add	sp,sp,96
20013c40:	8082                	ret

20013c42 <yarr::scheduler::start>:

extern "Rust" {
    pub fn yarr_init_process(process: &mut Process);
}

pub fn start(sched: Scheduler, context_switch_time: u64) -> ! {
20013c42:	715d                	add	sp,sp,-80
20013c44:	c686                	sw	ra,76(sp)
20013c46:	86b2                	mv	a3,a2
20013c48:	02a107a3          	sb	a0,47(sp)
20013c4c:	da36                	sw	a3,52(sp)
20013c4e:	d82e                	sw	a1,48(sp)
    unsafe {
        CONTEXT_SWITCH_TIME = context_switch_time;
20013c50:	80001637          	lui	a2,0x80001
20013c54:	a8d62e23          	sw	a3,-1380(a2) # 80000a9c <yarr::scheduler::CONTEXT_SWITCH_TIME+0x4>
20013c58:	a8b62c23          	sw	a1,-1384(a2)
        SCHEDULER_TYPE = sched;
20013c5c:	800015b7          	lui	a1,0x80001
20013c60:	a8a58823          	sb	a0,-1392(a1) # 80000a90 <yarr::scheduler::SCHEDULER_TYPE>
        for i in 0..PROCESS_LIST.len() {
20013c64:	80000537          	lui	a0,0x80000
20013c68:	00050513          	mv	a0,a0
20013c6c:	4148                	lw	a0,4(a0)
20013c6e:	4581                	li	a1,0
20013c70:	ca2e                	sw	a1,20(sp)
20013c72:	cc2a                	sw	a0,24(sp)
20013c74:	4552                	lw	a0,20(sp)
20013c76:	45e2                	lw	a1,24(sp)
20013c78:	00000097          	auipc	ra,0x0
20013c7c:	408080e7          	jalr	1032(ra) # 20014080 <<I as core::iter::traits::collect::IntoIterator>::into_iter>
20013c80:	ce2a                	sw	a0,28(sp)
20013c82:	d02e                	sw	a1,32(sp)
20013c84:	a009                	j	20013c86 <yarr::scheduler::start+0x44>
20013c86:	0868                	add	a0,sp,28
20013c88:	00000097          	auipc	ra,0x0
20013c8c:	3e4080e7          	jalr	996(ra) # 2001406c <core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next>
20013c90:	d42e                	sw	a1,40(sp)
20013c92:	d22a                	sw	a0,36(sp)
20013c94:	5512                	lw	a0,36(sp)
20013c96:	e529                	bnez	a0,20013ce0 <yarr::scheduler::start+0x9e>
20013c98:	a009                	j	20013c9a <yarr::scheduler::start+0x58>
            yarr_init_process(&mut PROCESS_LIST[i]);
        }
        let fisrt_task = schedule();
20013c9a:	00000097          	auipc	ra,0x0
20013c9e:	090080e7          	jalr	144(ra) # 20013d2a <yarr::scheduler::schedule>
20013ca2:	c82a                	sw	a0,16(sp)
20013ca4:	de2a                	sw	a0,60(sp)
20013ca6:	4511                	li	a0,4
        core::sync::atomic::compiler_fence(core::sync::atomic::Ordering::SeqCst);
20013ca8:	02a10723          	sb	a0,46(sp)
20013cac:	02e14503          	lbu	a0,46(sp)
20013cb0:	00001097          	auipc	ra,0x1
20013cb4:	a50080e7          	jalr	-1456(ra) # 20014700 <core::sync::atomic::compiler_fence>
        crate::timer::yarr_set_timer(CONTEXT_SWITCH_TIME);
20013cb8:	80001537          	lui	a0,0x80001
20013cbc:	a9c52583          	lw	a1,-1380(a0) # 80000a9c <yarr::scheduler::CONTEXT_SWITCH_TIME+0x4>
20013cc0:	a9852503          	lw	a0,-1384(a0)
20013cc4:	00000097          	auipc	ra,0x0
20013cc8:	b86080e7          	jalr	-1146(ra) # 2001384a <yarr_set_timer>
20013ccc:	45c2                	lw	a1,16(sp)
        yarr_start_first_task(fisrt_task.context.as_ptr() as usize)
20013cce:	4188                	lw	a0,0(a1)
20013cd0:	41cc                	lw	a1,4(a1)
20013cd2:	c2aa                	sw	a0,68(sp)
20013cd4:	c4ae                	sw	a1,72(sp)
20013cd6:	00000097          	auipc	ra,0x0
20013cda:	2ea080e7          	jalr	746(ra) # 20013fc0 <yarr_start_first_task>
20013cde:	0000                	unimp
        for i in 0..PROCESS_LIST.len() {
20013ce0:	5522                	lw	a0,40(sp)
20013ce2:	c42a                	sw	a0,8(sp)
20013ce4:	c0aa                	sw	a0,64(sp)
            yarr_init_process(&mut PROCESS_LIST[i]);
20013ce6:	800005b7          	lui	a1,0x80000
20013cea:	00058593          	mv	a1,a1
20013cee:	41cc                	lw	a1,4(a1)
20013cf0:	c62e                	sw	a1,12(sp)
20013cf2:	02b57163          	bgeu	a0,a1,20013d14 <yarr::scheduler::start+0xd2>
20013cf6:	a009                	j	20013cf8 <yarr::scheduler::start+0xb6>
20013cf8:	45a2                	lw	a1,8(sp)
20013cfa:	80000537          	lui	a0,0x80000
20013cfe:	00052503          	lw	a0,0(a0) # 80000000 <PROCESS_LIST>
20013d02:	4671                	li	a2,28
20013d04:	02c585b3          	mul	a1,a1,a2
20013d08:	952e                	add	a0,a0,a1
20013d0a:	fffff097          	auipc	ra,0xfffff
20013d0e:	692080e7          	jalr	1682(ra) # 2001339c <yarr_init_process>
20013d12:	bf95                	j	20013c86 <yarr::scheduler::start+0x44>
20013d14:	45b2                	lw	a1,12(sp)
20013d16:	4522                	lw	a0,8(sp)
20013d18:	20016637          	lui	a2,0x20016
20013d1c:	7c060613          	add	a2,a2,1984 # 200167c0 <.L__unnamed_1>
20013d20:	00001097          	auipc	ra,0x1
20013d24:	c5e080e7          	jalr	-930(ra) # 2001497e <core::panicking::panic_bounds_check>
	...

20013d2a <yarr::scheduler::schedule>:
    }
}

pub unsafe fn schedule() -> &'static Process {
20013d2a:	7179                	add	sp,sp,-48
20013d2c:	d606                	sw	ra,44(sp)
20013d2e:	4511                	li	a0,4
    core::sync::atomic::compiler_fence(core::sync::atomic::Ordering::SeqCst);
20013d30:	02a103a3          	sb	a0,39(sp)
20013d34:	02714503          	lbu	a0,39(sp)
20013d38:	00001097          	auipc	ra,0x1
20013d3c:	9c8080e7          	jalr	-1592(ra) # 20014700 <core::sync::atomic::compiler_fence>
    match SCHEDULER_TYPE {
20013d40:	80001537          	lui	a0,0x80001
20013d44:	a9054503          	lbu	a0,-1392(a0) # 80000a90 <yarr::scheduler::SCHEDULER_TYPE>
20013d48:	8905                	and	a0,a0,1
20013d4a:	e105                	bnez	a0,20013d6a <yarr::scheduler::schedule+0x40>
20013d4c:	a009                	j	20013d4e <yarr::scheduler::schedule+0x24>
        Scheduler::RoundRobin => {
            // while !PROCESS_LIST[ROUND_ROBIN_ITER].ready {
            //     ROUND_ROBIN_ITER = (ROUND_ROBIN_ITER + 1) % PROCESS_LIST.len();
            // }
            let r = &PROCESS_LIST[ROUND_ROBIN_ITER];
20013d4e:	80001537          	lui	a0,0x80001
20013d52:	a9452503          	lw	a0,-1388(a0) # 80000a94 <yarr::scheduler::ROUND_ROBIN_ITER>
20013d56:	cc2a                	sw	a0,24(sp)
20013d58:	800005b7          	lui	a1,0x80000
20013d5c:	00058593          	mv	a1,a1
20013d60:	41cc                	lw	a1,4(a1)
20013d62:	ce2e                	sw	a1,28(sp)
20013d64:	04b56063          	bltu	a0,a1,20013da4 <yarr::scheduler::schedule+0x7a>
20013d68:	a08d                	j	20013dca <yarr::scheduler::schedule+0xa0>
            ROUND_ROBIN_ITER = (ROUND_ROBIN_ITER + 1) % (PROCESS_LIST.len() - 1);
            r
        }
        Scheduler::RealTime => {
            process::PROCESS_LIST
20013d6a:	800005b7          	lui	a1,0x80000
20013d6e:	0005a503          	lw	a0,0(a1) # 80000000 <PROCESS_LIST>
20013d72:	00058593          	mv	a1,a1
20013d76:	41cc                	lw	a1,4(a1)
20013d78:	00001097          	auipc	ra,0x1
20013d7c:	9f2080e7          	jalr	-1550(ra) # 2001476a <core::slice::<impl [T]>::iter>
20013d80:	00000097          	auipc	ra,0x0
20013d84:	75c080e7          	jalr	1884(ra) # 200144dc <core::iter::traits::iterator::Iterator::filter>
20013d88:	00000097          	auipc	ra,0x0
20013d8c:	398080e7          	jalr	920(ra) # 20014120 <core::iter::traits::iterator::Iterator::max_by_key>
20013d90:	200175b7          	lui	a1,0x20017
20013d94:	88c58593          	add	a1,a1,-1908 # 2001688c <.L__unnamed_2>
20013d98:	00000097          	auipc	ra,0x0
20013d9c:	342080e7          	jalr	834(ra) # 200140da <core::option::Option<T>::unwrap_unchecked>
20013da0:	d02a                	sw	a0,32(sp)
                .iter()
                .filter(|p| p.ready)
                .max_by_key(|p| p.priority)
                .unwrap_unchecked() // unwrap unchecked because idle process always ready
        }
20013da2:	a0d9                	j	20013e68 <yarr::scheduler::schedule+0x13e>
            let r = &PROCESS_LIST[ROUND_ROBIN_ITER];
20013da4:	45e2                	lw	a1,24(sp)
20013da6:	80000537          	lui	a0,0x80000
20013daa:	00052503          	lw	a0,0(a0) # 80000000 <PROCESS_LIST>
20013dae:	4671                	li	a2,28
20013db0:	02c585b3          	mul	a1,a1,a2
20013db4:	952e                	add	a0,a0,a1
20013db6:	c82a                	sw	a0,16(sp)
20013db8:	d42a                	sw	a0,40(sp)
            ROUND_ROBIN_ITER = (ROUND_ROBIN_ITER + 1) % (PROCESS_LIST.len() - 1);
20013dba:	80001537          	lui	a0,0x80001
20013dbe:	a9452503          	lw	a0,-1388(a0) # 80000a94 <yarr::scheduler::ROUND_ROBIN_ITER>
20013dc2:	0505                	add	a0,a0,1
20013dc4:	ca2a                	sw	a0,20(sp)
20013dc6:	c51d                	beqz	a0,20013df4 <yarr::scheduler::schedule+0xca>
20013dc8:	a821                	j	20013de0 <yarr::scheduler::schedule+0xb6>
            let r = &PROCESS_LIST[ROUND_ROBIN_ITER];
20013dca:	45f2                	lw	a1,28(sp)
20013dcc:	4562                	lw	a0,24(sp)
20013dce:	20016637          	lui	a2,0x20016
20013dd2:	7d060613          	add	a2,a2,2000 # 200167d0 <.L__unnamed_3>
20013dd6:	00001097          	auipc	ra,0x1
20013dda:	ba8080e7          	jalr	-1112(ra) # 2001497e <core::panicking::panic_bounds_check>
20013dde:	0000                	unimp
            ROUND_ROBIN_ITER = (ROUND_ROBIN_ITER + 1) % (PROCESS_LIST.len() - 1);
20013de0:	80000537          	lui	a0,0x80000
20013de4:	00050513          	mv	a0,a0
20013de8:	4148                	lw	a0,4(a0)
20013dea:	fff50593          	add	a1,a0,-1 # 7fffffff <_sidata+0x5ffe9417>
20013dee:	c62e                	sw	a1,12(sp)
20013df0:	c11d                	beqz	a0,20013e16 <yarr::scheduler::schedule+0xec>
20013df2:	a839                	j	20013e10 <yarr::scheduler::schedule+0xe6>
20013df4:	20016537          	lui	a0,0x20016
20013df8:	7f050513          	add	a0,a0,2032 # 200167f0 <str.0>
20013dfc:	200165b7          	lui	a1,0x20016
20013e00:	7e058613          	add	a2,a1,2016 # 200167e0 <.L__unnamed_4>
20013e04:	45f1                	li	a1,28
20013e06:	00001097          	auipc	ra,0x1
20013e0a:	b4c080e7          	jalr	-1204(ra) # 20014952 <core::panicking::panic>
20013e0e:	0000                	unimp
20013e10:	4532                	lw	a0,12(sp)
20013e12:	cd05                	beqz	a0,20013e4a <yarr::scheduler::schedule+0x120>
20013e14:	a005                	j	20013e34 <yarr::scheduler::schedule+0x10a>
20013e16:	20017537          	lui	a0,0x20017
20013e1a:	82050513          	add	a0,a0,-2016 # 20016820 <str.1>
20013e1e:	200175b7          	lui	a1,0x20017
20013e22:	80c58613          	add	a2,a1,-2036 # 2001680c <.L__unnamed_5>
20013e26:	02100593          	li	a1,33
20013e2a:	00001097          	auipc	ra,0x1
20013e2e:	b28080e7          	jalr	-1240(ra) # 20014952 <core::panicking::panic>
20013e32:	0000                	unimp
20013e34:	4542                	lw	a0,16(sp)
20013e36:	45d2                	lw	a1,20(sp)
20013e38:	4632                	lw	a2,12(sp)
20013e3a:	02c5f5b3          	remu	a1,a1,a2
20013e3e:	80001637          	lui	a2,0x80001
20013e42:	a8b62a23          	sw	a1,-1388(a2) # 80000a94 <yarr::scheduler::ROUND_ROBIN_ITER>
            r
20013e46:	d02a                	sw	a0,32(sp)
        }
20013e48:	a005                	j	20013e68 <yarr::scheduler::schedule+0x13e>
            ROUND_ROBIN_ITER = (ROUND_ROBIN_ITER + 1) % (PROCESS_LIST.len() - 1);
20013e4a:	20017537          	lui	a0,0x20017
20013e4e:	85050513          	add	a0,a0,-1968 # 20016850 <str.2>
20013e52:	200165b7          	lui	a1,0x20016
20013e56:	7e058613          	add	a2,a1,2016 # 200167e0 <.L__unnamed_4>
20013e5a:	03900593          	li	a1,57
20013e5e:	00001097          	auipc	ra,0x1
20013e62:	af4080e7          	jalr	-1292(ra) # 20014952 <core::panicking::panic>
20013e66:	0000                	unimp
    }
}
20013e68:	5502                	lw	a0,32(sp)
20013e6a:	50b2                	lw	ra,44(sp)
20013e6c:	6145                	add	sp,sp,48
20013e6e:	8082                	ret

20013e70 <yarr_trap_vec>:
20013e70:	340f9ff3          	.insn	4, 0x340f9ff3
20013e74:	001fa023          	sw	ra,0(t6)
20013e78:	002fa223          	sw	sp,4(t6)
20013e7c:	003fa423          	sw	gp,8(t6)
20013e80:	004fa623          	sw	tp,12(t6)
20013e84:	005fa823          	sw	t0,16(t6)
20013e88:	006faa23          	sw	t1,20(t6)
20013e8c:	007fac23          	sw	t2,24(t6)
20013e90:	008fae23          	sw	s0,28(t6)
20013e94:	029fa023          	sw	s1,32(t6)
20013e98:	02afa223          	sw	a0,36(t6)
20013e9c:	02bfa423          	sw	a1,40(t6)
20013ea0:	02cfa623          	sw	a2,44(t6)
20013ea4:	02dfa823          	sw	a3,48(t6)
20013ea8:	02efaa23          	sw	a4,52(t6)
20013eac:	02ffac23          	sw	a5,56(t6)
20013eb0:	030fae23          	sw	a6,60(t6)
20013eb4:	051fa023          	sw	a7,64(t6)
20013eb8:	052fa223          	sw	s2,68(t6)
20013ebc:	053fa423          	sw	s3,72(t6)
20013ec0:	054fa623          	sw	s4,76(t6)
20013ec4:	055fa823          	sw	s5,80(t6)
20013ec8:	056faa23          	sw	s6,84(t6)
20013ecc:	057fac23          	sw	s7,88(t6)
20013ed0:	058fae23          	sw	s8,92(t6)
20013ed4:	079fa023          	sw	s9,96(t6)
20013ed8:	07afa223          	sw	s10,100(t6)
20013edc:	07bfa423          	sw	s11,104(t6)
20013ee0:	07cfa623          	sw	t3,108(t6)
20013ee4:	07dfa823          	sw	t4,112(t6)
20013ee8:	07efaa23          	sw	t5,116(t6)
20013eec:	34002f73          	.insn	4, 0x34002f73
20013ef0:	07efac23          	sw	t5,120(t6)
20013ef4:	30002f73          	.insn	4, 0x30002f73
20013ef8:	07efae23          	sw	t5,124(t6)
20013efc:	34102f73          	.insn	4, 0x34102f73
20013f00:	09efa023          	sw	t5,128(t6)
20013f04:	340f9073          	.insn	4, 0x340f9073
20013f08:	34202573          	.insn	4, 0x34202573
20013f0c:	343025f3          	.insn	4, 0x343025f3
20013f10:	f1402673          	.insn	4, 0xf1402673
20013f14:	300026f3          	.insn	4, 0x300026f3
20013f18:	34002773          	.insn	4, 0x34002773
20013f1c:	fffff097          	auipc	ra,0xfffff
20013f20:	616080e7          	jalr	1558(ra) # 20013532 <yarr_m_trap>

20013f24 <yarr_restore_context>:
20013f24:	34002573          	.insn	4, 0x34002573
20013f28:	08052283          	lw	t0,128(a0)
20013f2c:	34129073          	.insn	4, 0x34129073
20013f30:	07c52283          	lw	t0,124(a0)
20013f34:	30029073          	.insn	4, 0x30029073
20013f38:	00052083          	lw	ra,0(a0)
20013f3c:	00452103          	lw	sp,4(a0)
20013f40:	00852183          	lw	gp,8(a0)
20013f44:	00c52203          	lw	tp,12(a0)
20013f48:	01052283          	lw	t0,16(a0)
20013f4c:	01452303          	lw	t1,20(a0)
20013f50:	01852383          	lw	t2,24(a0)
20013f54:	01c52403          	lw	s0,28(a0)
20013f58:	02052483          	lw	s1,32(a0)
20013f5c:	02852583          	lw	a1,40(a0)
20013f60:	02c52603          	lw	a2,44(a0)
20013f64:	03052683          	lw	a3,48(a0)
20013f68:	03452703          	lw	a4,52(a0)
20013f6c:	03852783          	lw	a5,56(a0)
20013f70:	03c52803          	lw	a6,60(a0)
20013f74:	04052883          	lw	a7,64(a0)
20013f78:	04452903          	lw	s2,68(a0)
20013f7c:	04852983          	lw	s3,72(a0)
20013f80:	04c52a03          	lw	s4,76(a0)
20013f84:	05052a83          	lw	s5,80(a0)
20013f88:	05452b03          	lw	s6,84(a0)
20013f8c:	05852b83          	lw	s7,88(a0)
20013f90:	05c52c03          	lw	s8,92(a0)
20013f94:	06052c83          	lw	s9,96(a0)
20013f98:	06452d03          	lw	s10,100(a0)
20013f9c:	06852d83          	lw	s11,104(a0)
20013fa0:	06c52e03          	lw	t3,108(a0)
20013fa4:	07052e83          	lw	t4,112(a0)
20013fa8:	07452f03          	lw	t5,116(a0)
20013fac:	07852f83          	lw	t6,120(a0)
20013fb0:	34051073          	.insn	4, 0x34051073
20013fb4:	02452503          	lw	a0,36(a0)
20013fb8:	30200073          	mret
20013fbc:	00000013          	nop

20013fc0 <yarr_start_first_task>:
20013fc0:	30406073          	.insn	4, 0x30406073
20013fc4:	30006073          	.insn	4, 0x30006073
20013fc8:	34051073          	.insn	4, 0x34051073

20013fcc <.Lpcrel_hi0>:
20013fcc:	00000297          	auipc	t0,0x0
20013fd0:	ea428293          	add	t0,t0,-348 # 20013e70 <yarr_trap_vec>
20013fd4:	30529073          	.insn	4, 0x30529073
20013fd8:	08052083          	lw	ra,128(a0)
20013fdc:	07c52283          	lw	t0,124(a0)
20013fe0:	30029073          	.insn	4, 0x30029073
20013fe4:	00452103          	lw	sp,4(a0)
20013fe8:	00852183          	lw	gp,8(a0)
20013fec:	00c52203          	lw	tp,12(a0)
20013ff0:	01052283          	lw	t0,16(a0)
20013ff4:	01452303          	lw	t1,20(a0)
20013ff8:	01852383          	lw	t2,24(a0)
20013ffc:	01c52403          	lw	s0,28(a0)
20014000:	02052483          	lw	s1,32(a0)
20014004:	02852583          	lw	a1,40(a0)
20014008:	02c52603          	lw	a2,44(a0)
2001400c:	03052683          	lw	a3,48(a0)
20014010:	03452703          	lw	a4,52(a0)
20014014:	03852783          	lw	a5,56(a0)
20014018:	03c52803          	lw	a6,60(a0)
2001401c:	04052883          	lw	a7,64(a0)
20014020:	04452903          	lw	s2,68(a0)
20014024:	04852983          	lw	s3,72(a0)
20014028:	04c52a03          	lw	s4,76(a0)
2001402c:	05052a83          	lw	s5,80(a0)
20014030:	05452b03          	lw	s6,84(a0)
20014034:	05852b83          	lw	s7,88(a0)
20014038:	05c52c03          	lw	s8,92(a0)
2001403c:	06052c83          	lw	s9,96(a0)
20014040:	06452d03          	lw	s10,100(a0)
20014044:	06852d83          	lw	s11,104(a0)
20014048:	06c52e03          	lw	t3,108(a0)
2001404c:	07052e83          	lw	t4,112(a0)
20014050:	07452f03          	lw	t5,116(a0)
20014054:	07852f83          	lw	t6,120(a0)
20014058:	02452503          	lw	a0,36(a0)
2001405c:	08000293          	li	t0,128
20014060:	3042a073          	.insn	4, 0x3042a073
20014064:	30046073          	.insn	4, 0x30046073
20014068:	00008067          	ret

2001406c <core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next>:
2001406c:	1141                	add	sp,sp,-16
2001406e:	c606                	sw	ra,12(sp)
20014070:	c42a                	sw	a0,8(sp)
20014072:	00000097          	auipc	ra,0x0
20014076:	018080e7          	jalr	24(ra) # 2001408a <<core::ops::range::Range<T> as core::iter::range::RangeIteratorImpl>::spec_next>
2001407a:	40b2                	lw	ra,12(sp)
2001407c:	0141                	add	sp,sp,16
2001407e:	8082                	ret

20014080 <<I as core::iter::traits::collect::IntoIterator>::into_iter>:
20014080:	1141                	add	sp,sp,-16
20014082:	c42a                	sw	a0,8(sp)
20014084:	c62e                	sw	a1,12(sp)
20014086:	0141                	add	sp,sp,16
20014088:	8082                	ret

2001408a <<core::ops::range::Range<T> as core::iter::range::RangeIteratorImpl>::spec_next>:
2001408a:	7179                	add	sp,sp,-48
2001408c:	d606                	sw	ra,44(sp)
2001408e:	85aa                	mv	a1,a0
20014090:	c82e                	sw	a1,16(sp)
20014092:	ce2e                	sw	a1,28(sp)
20014094:	00458513          	add	a0,a1,4
20014098:	d22e                	sw	a1,36(sp)
2001409a:	d42a                	sw	a0,40(sp)
2001409c:	4188                	lw	a0,0(a1)
2001409e:	41cc                	lw	a1,4(a1)
200140a0:	00b56663          	bltu	a0,a1,200140ac <<core::ops::range::Range<T> as core::iter::range::RangeIteratorImpl>::spec_next+0x22>
200140a4:	a009                	j	200140a6 <<core::ops::range::Range<T> as core::iter::range::RangeIteratorImpl>::spec_next+0x1c>
200140a6:	4501                	li	a0,0
200140a8:	ca2a                	sw	a0,20(sp)
200140aa:	a01d                	j	200140d0 <<core::ops::range::Range<T> as core::iter::range::RangeIteratorImpl>::spec_next+0x46>
200140ac:	4542                	lw	a0,16(sp)
200140ae:	4108                	lw	a0,0(a0)
200140b0:	c42a                	sw	a0,8(sp)
200140b2:	d02a                	sw	a0,32(sp)
200140b4:	4585                	li	a1,1
200140b6:	c62e                	sw	a1,12(sp)
200140b8:	00000097          	auipc	ra,0x0
200140bc:	6f4080e7          	jalr	1780(ra) # 200147ac <<usize as core::iter::range::Step>::forward_unchecked>
200140c0:	46c2                	lw	a3,16(sp)
200140c2:	45a2                	lw	a1,8(sp)
200140c4:	862a                	mv	a2,a0
200140c6:	4532                	lw	a0,12(sp)
200140c8:	c290                	sw	a2,0(a3)
200140ca:	cc2e                	sw	a1,24(sp)
200140cc:	ca2a                	sw	a0,20(sp)
200140ce:	a009                	j	200140d0 <<core::ops::range::Range<T> as core::iter::range::RangeIteratorImpl>::spec_next+0x46>
200140d0:	4552                	lw	a0,20(sp)
200140d2:	45e2                	lw	a1,24(sp)
200140d4:	50b2                	lw	ra,44(sp)
200140d6:	6145                	add	sp,sp,48
200140d8:	8082                	ret

200140da <core::option::Option<T>::unwrap_unchecked>:
200140da:	1141                	add	sp,sp,-16
200140dc:	c42a                	sw	a0,8(sp)
200140de:	4522                	lw	a0,8(sp)
200140e0:	c511                	beqz	a0,200140ec <core::option::Option<T>::unwrap_unchecked+0x12>
200140e2:	a009                	j	200140e4 <core::option::Option<T>::unwrap_unchecked+0xa>
200140e4:	4522                	lw	a0,8(sp)
200140e6:	c62a                	sw	a0,12(sp)
200140e8:	0141                	add	sp,sp,16
200140ea:	8082                	ret
	...

200140ee <<core::iter::adapters::filter::Filter<I,P> as core::iter::traits::iterator::Iterator>::fold>:
200140ee:	1101                	add	sp,sp,-32
200140f0:	ce06                	sw	ra,28(sp)
200140f2:	c42a                	sw	a0,8(sp)
200140f4:	c62e                	sw	a1,12(sp)
200140f6:	c832                	sw	a2,16(sp)
200140f8:	ca36                	sw	a3,20(sp)
200140fa:	00000097          	auipc	ra,0x0
200140fe:	440080e7          	jalr	1088(ra) # 2001453a <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::fold>
20014102:	40f2                	lw	ra,28(sp)
20014104:	6105                	add	sp,sp,32
20014106:	8082                	ret

20014108 <<core::iter::adapters::filter::Filter<I,P> as core::iter::traits::iterator::Iterator>::next>:
20014108:	1141                	add	sp,sp,-16
2001410a:	c606                	sw	ra,12(sp)
2001410c:	c42a                	sw	a0,8(sp)
2001410e:	00850593          	add	a1,a0,8
20014112:	00000097          	auipc	ra,0x0
20014116:	3dc080e7          	jalr	988(ra) # 200144ee <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::find>
2001411a:	40b2                	lw	ra,12(sp)
2001411c:	0141                	add	sp,sp,16
2001411e:	8082                	ret

20014120 <core::iter::traits::iterator::Iterator::max_by_key>:
20014120:	715d                	add	sp,sp,-80
20014122:	c686                	sw	ra,76(sp)
20014124:	d22a                	sw	a0,36(sp)
20014126:	d42e                	sw	a1,40(sp)
20014128:	00000097          	auipc	ra,0x0
2001412c:	05a080e7          	jalr	90(ra) # 20014182 <core::iter::traits::iterator::Iterator::map>
20014130:	d82a                	sw	a0,48(sp)
20014132:	da2e                	sw	a1,52(sp)
20014134:	00000097          	auipc	ra,0x0
20014138:	136080e7          	jalr	310(ra) # 2001426a <core::iter::traits::iterator::Iterator::reduce>
2001413c:	d02e                	sw	a1,32(sp)
2001413e:	ce2a                	sw	a0,28(sp)
20014140:	5502                	lw	a0,32(sp)
20014142:	e509                	bnez	a0,2001414c <core::iter::traits::iterator::Iterator::max_by_key+0x2c>
20014144:	a009                	j	20014146 <core::iter::traits::iterator::Iterator::max_by_key+0x26>
20014146:	4501                	li	a0,0
20014148:	cc2a                	sw	a0,24(sp)
2001414a:	a801                	j	2001415a <core::iter::traits::iterator::Iterator::max_by_key+0x3a>
2001414c:	45f2                	lw	a1,28(sp)
2001414e:	5502                	lw	a0,32(sp)
20014150:	dc2e                	sw	a1,56(sp)
20014152:	de2a                	sw	a0,60(sp)
20014154:	ca2e                	sw	a1,20(sp)
20014156:	cc2a                	sw	a0,24(sp)
20014158:	a009                	j	2001415a <core::iter::traits::iterator::Iterator::max_by_key+0x3a>
2001415a:	4562                	lw	a0,24(sp)
2001415c:	cd01                	beqz	a0,20014174 <core::iter::traits::iterator::Iterator::max_by_key+0x54>
2001415e:	a009                	j	20014160 <core::iter::traits::iterator::Iterator::max_by_key+0x40>
20014160:	45d2                	lw	a1,20(sp)
20014162:	4562                	lw	a0,24(sp)
20014164:	c0ae                	sw	a1,64(sp)
20014166:	c2aa                	sw	a0,68(sp)
20014168:	c62e                	sw	a1,12(sp)
2001416a:	c82a                	sw	a0,16(sp)
2001416c:	4542                	lw	a0,16(sp)
2001416e:	c4aa                	sw	a0,72(sp)
20014170:	c42a                	sw	a0,8(sp)
20014172:	a021                	j	2001417a <core::iter::traits::iterator::Iterator::max_by_key+0x5a>
20014174:	4501                	li	a0,0
20014176:	c42a                	sw	a0,8(sp)
20014178:	a009                	j	2001417a <core::iter::traits::iterator::Iterator::max_by_key+0x5a>
2001417a:	4522                	lw	a0,8(sp)
2001417c:	40b6                	lw	ra,76(sp)
2001417e:	6161                	add	sp,sp,80
20014180:	8082                	ret

20014182 <core::iter::traits::iterator::Iterator::map>:
20014182:	1101                	add	sp,sp,-32
20014184:	ca2a                	sw	a0,20(sp)
20014186:	cc2e                	sw	a1,24(sp)
20014188:	c62a                	sw	a0,12(sp)
2001418a:	c82e                	sw	a1,16(sp)
2001418c:	4532                	lw	a0,12(sp)
2001418e:	45c2                	lw	a1,16(sp)
20014190:	6105                	add	sp,sp,32
20014192:	8082                	ret

20014194 <core::iter::adapters::filter::filter_fold::{{closure}}>:
20014194:	7139                	add	sp,sp,-64
20014196:	de06                	sw	ra,60(sp)
20014198:	c232                	sw	a2,4(sp)
2001419a:	c42e                	sw	a1,8(sp)
2001419c:	c62a                	sw	a0,12(sp)
2001419e:	c836                	sw	a3,16(sp)
200141a0:	d82a                	sw	a0,48(sp)
200141a2:	da2e                	sw	a1,52(sp)
200141a4:	dc32                	sw	a2,56(sp)
200141a6:	4585                	li	a1,1
200141a8:	02b107a3          	sb	a1,47(sp)
200141ac:	080c                	add	a1,sp,16
200141ae:	ce2e                	sw	a1,28(sp)
200141b0:	45f2                	lw	a1,28(sp)
200141b2:	00000097          	auipc	ra,0x0
200141b6:	238080e7          	jalr	568(ra) # 200143ea <yarr::scheduler::schedule::{{closure}}>
200141ba:	e519                	bnez	a0,200141c8 <core::iter::adapters::filter::filter_fold::{{closure}}+0x34>
200141bc:	a009                	j	200141be <core::iter::adapters::filter::filter_fold::{{closure}}+0x2a>
200141be:	4512                	lw	a0,4(sp)
200141c0:	45a2                	lw	a1,8(sp)
200141c2:	ca2e                	sw	a1,20(sp)
200141c4:	cc2a                	sw	a0,24(sp)
200141c6:	a02d                	j	200141f0 <core::iter::adapters::filter::filter_fold::{{closure}}+0x5c>
200141c8:	4532                	lw	a0,12(sp)
200141ca:	4612                	lw	a2,4(sp)
200141cc:	46a2                	lw	a3,8(sp)
200141ce:	4581                	li	a1,0
200141d0:	02b107a3          	sb	a1,47(sp)
200141d4:	45c2                	lw	a1,16(sp)
200141d6:	d036                	sw	a3,32(sp)
200141d8:	d232                	sw	a2,36(sp)
200141da:	d42e                	sw	a1,40(sp)
200141dc:	5582                	lw	a1,32(sp)
200141de:	5612                	lw	a2,36(sp)
200141e0:	56a2                	lw	a3,40(sp)
200141e2:	00000097          	auipc	ra,0x0
200141e6:	0e8080e7          	jalr	232(ra) # 200142ca <core::iter::adapters::map::map_fold::{{closure}}>
200141ea:	cc2e                	sw	a1,24(sp)
200141ec:	ca2a                	sw	a0,20(sp)
200141ee:	a009                	j	200141f0 <core::iter::adapters::filter::filter_fold::{{closure}}+0x5c>
200141f0:	02f14503          	lbu	a0,47(sp)
200141f4:	8905                	and	a0,a0,1
200141f6:	e519                	bnez	a0,20014204 <core::iter::adapters::filter::filter_fold::{{closure}}+0x70>
200141f8:	a009                	j	200141fa <core::iter::adapters::filter::filter_fold::{{closure}}+0x66>
200141fa:	4552                	lw	a0,20(sp)
200141fc:	45e2                	lw	a1,24(sp)
200141fe:	50f2                	lw	ra,60(sp)
20014200:	6121                	add	sp,sp,64
20014202:	8082                	ret
20014204:	bfdd                	j	200141fa <core::iter::adapters::filter::filter_fold::{{closure}}+0x66>

20014206 <<core::iter::adapters::map::Map<I,F> as core::iter::traits::iterator::Iterator>::fold>:
20014206:	1101                	add	sp,sp,-32
20014208:	ce06                	sw	ra,28(sp)
2001420a:	c42a                	sw	a0,8(sp)
2001420c:	c62e                	sw	a1,12(sp)
2001420e:	c832                	sw	a2,16(sp)
20014210:	ca36                	sw	a3,20(sp)
20014212:	00000097          	auipc	ra,0x0
20014216:	edc080e7          	jalr	-292(ra) # 200140ee <<core::iter::adapters::filter::Filter<I,P> as core::iter::traits::iterator::Iterator>::fold>
2001421a:	40f2                	lw	ra,28(sp)
2001421c:	6105                	add	sp,sp,32
2001421e:	8082                	ret

20014220 <<core::iter::adapters::map::Map<I,F> as core::iter::traits::iterator::Iterator>::next>:
20014220:	7179                	add	sp,sp,-48
20014222:	d606                	sw	ra,44(sp)
20014224:	c42a                	sw	a0,8(sp)
20014226:	d02a                	sw	a0,32(sp)
20014228:	00000097          	auipc	ra,0x0
2001422c:	ee0080e7          	jalr	-288(ra) # 20014108 <<core::iter::adapters::filter::Filter<I,P> as core::iter::traits::iterator::Iterator>::next>
20014230:	85aa                	mv	a1,a0
20014232:	4522                	lw	a0,8(sp)
20014234:	cc2e                	sw	a1,24(sp)
20014236:	0521                	add	a0,a0,8
20014238:	c62a                	sw	a0,12(sp)
2001423a:	d22a                	sw	a0,36(sp)
2001423c:	4562                	lw	a0,24(sp)
2001423e:	e509                	bnez	a0,20014248 <<core::iter::adapters::map::Map<I,F> as core::iter::traits::iterator::Iterator>::next+0x28>
20014240:	a009                	j	20014242 <<core::iter::adapters::map::Map<I,F> as core::iter::traits::iterator::Iterator>::next+0x22>
20014242:	4501                	li	a0,0
20014244:	ca2a                	sw	a0,20(sp)
20014246:	a829                	j	20014260 <<core::iter::adapters::map::Map<I,F> as core::iter::traits::iterator::Iterator>::next+0x40>
20014248:	4532                	lw	a0,12(sp)
2001424a:	45e2                	lw	a1,24(sp)
2001424c:	d42e                	sw	a1,40(sp)
2001424e:	ce2e                	sw	a1,28(sp)
20014250:	45f2                	lw	a1,28(sp)
20014252:	00000097          	auipc	ra,0x0
20014256:	0bc080e7          	jalr	188(ra) # 2001430e <core::ops::function::impls::<impl core::ops::function::FnOnce<A> for &mut F>::call_once>
2001425a:	c82a                	sw	a0,16(sp)
2001425c:	ca2e                	sw	a1,20(sp)
2001425e:	a009                	j	20014260 <<core::iter::adapters::map::Map<I,F> as core::iter::traits::iterator::Iterator>::next+0x40>
20014260:	4542                	lw	a0,16(sp)
20014262:	45d2                	lw	a1,20(sp)
20014264:	50b2                	lw	ra,44(sp)
20014266:	6145                	add	sp,sp,48
20014268:	8082                	ret

2001426a <core::iter::traits::iterator::Iterator::reduce>:
2001426a:	7139                	add	sp,sp,-64
2001426c:	de06                	sw	ra,60(sp)
2001426e:	c42a                	sw	a0,8(sp)
20014270:	c62e                	sw	a1,12(sp)
20014272:	0028                	add	a0,sp,8
20014274:	00000097          	auipc	ra,0x0
20014278:	fac080e7          	jalr	-84(ra) # 20014220 <<core::iter::adapters::map::Map<I,F> as core::iter::traits::iterator::Iterator>::next>
2001427c:	d22e                	sw	a1,36(sp)
2001427e:	d02a                	sw	a0,32(sp)
20014280:	5512                	lw	a0,36(sp)
20014282:	e509                	bnez	a0,2001428c <core::iter::traits::iterator::Iterator::reduce+0x22>
20014284:	a009                	j	20014286 <core::iter::traits::iterator::Iterator::reduce+0x1c>
20014286:	4501                	li	a0,0
20014288:	ce2a                	sw	a0,28(sp)
2001428a:	a801                	j	2001429a <core::iter::traits::iterator::Iterator::reduce+0x30>
2001428c:	5582                	lw	a1,32(sp)
2001428e:	5512                	lw	a0,36(sp)
20014290:	d62e                	sw	a1,44(sp)
20014292:	d82a                	sw	a0,48(sp)
20014294:	cc2e                	sw	a1,24(sp)
20014296:	ce2a                	sw	a0,28(sp)
20014298:	a009                	j	2001429a <core::iter::traits::iterator::Iterator::reduce+0x30>
2001429a:	4572                	lw	a0,28(sp)
2001429c:	cd19                	beqz	a0,200142ba <core::iter::traits::iterator::Iterator::reduce+0x50>
2001429e:	a009                	j	200142a0 <core::iter::traits::iterator::Iterator::reduce+0x36>
200142a0:	4662                	lw	a2,24(sp)
200142a2:	46f2                	lw	a3,28(sp)
200142a4:	da32                	sw	a2,52(sp)
200142a6:	dc36                	sw	a3,56(sp)
200142a8:	4522                	lw	a0,8(sp)
200142aa:	45b2                	lw	a1,12(sp)
200142ac:	00000097          	auipc	ra,0x0
200142b0:	f5a080e7          	jalr	-166(ra) # 20014206 <<core::iter::adapters::map::Map<I,F> as core::iter::traits::iterator::Iterator>::fold>
200142b4:	c82a                	sw	a0,16(sp)
200142b6:	ca2e                	sw	a1,20(sp)
200142b8:	a021                	j	200142c0 <core::iter::traits::iterator::Iterator::reduce+0x56>
200142ba:	4501                	li	a0,0
200142bc:	ca2a                	sw	a0,20(sp)
200142be:	a009                	j	200142c0 <core::iter::traits::iterator::Iterator::reduce+0x56>
200142c0:	4542                	lw	a0,16(sp)
200142c2:	45d2                	lw	a1,20(sp)
200142c4:	50f2                	lw	ra,60(sp)
200142c6:	6121                	add	sp,sp,64
200142c8:	8082                	ret

200142ca <core::iter::adapters::map::map_fold::{{closure}}>:
200142ca:	7139                	add	sp,sp,-64
200142cc:	de06                	sw	ra,60(sp)
200142ce:	c832                	sw	a2,16(sp)
200142d0:	c62e                	sw	a1,12(sp)
200142d2:	ca2a                	sw	a0,20(sp)
200142d4:	d62a                	sw	a0,44(sp)
200142d6:	d82e                	sw	a1,48(sp)
200142d8:	da32                	sw	a2,52(sp)
200142da:	dc36                	sw	a3,56(sp)
200142dc:	d436                	sw	a3,40(sp)
200142de:	55a2                	lw	a1,40(sp)
200142e0:	00000097          	auipc	ra,0x0
200142e4:	062080e7          	jalr	98(ra) # 20014342 <core::iter::traits::iterator::Iterator::max_by_key::key::{{closure}}>
200142e8:	4732                	lw	a4,12(sp)
200142ea:	46c2                	lw	a3,16(sp)
200142ec:	862a                	mv	a2,a0
200142ee:	4552                	lw	a0,20(sp)
200142f0:	cc3a                	sw	a4,24(sp)
200142f2:	ce36                	sw	a3,28(sp)
200142f4:	d032                	sw	a2,32(sp)
200142f6:	d22e                	sw	a1,36(sp)
200142f8:	45e2                	lw	a1,24(sp)
200142fa:	4672                	lw	a2,28(sp)
200142fc:	5682                	lw	a3,32(sp)
200142fe:	5712                	lw	a4,36(sp)
20014300:	00000097          	auipc	ra,0x0
20014304:	080080e7          	jalr	128(ra) # 20014380 <core::iter::traits::iterator::Iterator::max_by::fold::{{closure}}>
20014308:	50f2                	lw	ra,60(sp)
2001430a:	6121                	add	sp,sp,64
2001430c:	8082                	ret

2001430e <core::ops::function::impls::<impl core::ops::function::FnOnce<A> for &mut F>::call_once>:
2001430e:	1141                	add	sp,sp,-16
20014310:	c606                	sw	ra,12(sp)
20014312:	c22e                	sw	a1,4(sp)
20014314:	c42a                	sw	a0,8(sp)
20014316:	4592                	lw	a1,4(sp)
20014318:	00000097          	auipc	ra,0x0
2001431c:	02a080e7          	jalr	42(ra) # 20014342 <core::iter::traits::iterator::Iterator::max_by_key::key::{{closure}}>
20014320:	40b2                	lw	ra,12(sp)
20014322:	0141                	add	sp,sp,16
20014324:	8082                	ret

20014326 <core::ops::function::impls::<impl core::ops::function::FnOnce<A> for &mut F>::call_once>:
20014326:	1141                	add	sp,sp,-16
20014328:	c606                	sw	ra,12(sp)
2001432a:	c02e                	sw	a1,0(sp)
2001432c:	c232                	sw	a2,4(sp)
2001432e:	c42a                	sw	a0,8(sp)
20014330:	4582                	lw	a1,0(sp)
20014332:	4612                	lw	a2,4(sp)
20014334:	00000097          	auipc	ra,0x0
20014338:	080080e7          	jalr	128(ra) # 200143b4 <core::ops::function::FnMut::call_mut>
2001433c:	40b2                	lw	ra,12(sp)
2001433e:	0141                	add	sp,sp,16
20014340:	8082                	ret

20014342 <core::iter::traits::iterator::Iterator::max_by_key::key::{{closure}}>:
20014342:	1101                	add	sp,sp,-32
20014344:	ce06                	sw	ra,28(sp)
20014346:	c42e                	sw	a1,8(sp)
20014348:	cc2a                	sw	a0,24(sp)
2001434a:	002c                	add	a1,sp,8
2001434c:	ca2e                	sw	a1,20(sp)
2001434e:	45d2                	lw	a1,20(sp)
20014350:	00000097          	auipc	ra,0x0
20014354:	0aa080e7          	jalr	170(ra) # 200143fa <yarr::scheduler::schedule::{{closure}}>
20014358:	85aa                	mv	a1,a0
2001435a:	4522                	lw	a0,8(sp)
2001435c:	c62e                	sw	a1,12(sp)
2001435e:	c82a                	sw	a0,16(sp)
20014360:	4532                	lw	a0,12(sp)
20014362:	45c2                	lw	a1,16(sp)
20014364:	40f2                	lw	ra,28(sp)
20014366:	6105                	add	sp,sp,32
20014368:	8082                	ret

2001436a <core::iter::traits::iterator::Iterator::max_by_key::compare>:
2001436a:	1141                	add	sp,sp,-16
2001436c:	c606                	sw	ra,12(sp)
2001436e:	c22a                	sw	a0,4(sp)
20014370:	c42e                	sw	a1,8(sp)
20014372:	00000097          	auipc	ra,0x0
20014376:	124080e7          	jalr	292(ra) # 20014496 <core::cmp::impls::<impl core::cmp::Ord for usize>::cmp>
2001437a:	40b2                	lw	ra,12(sp)
2001437c:	0141                	add	sp,sp,16
2001437e:	8082                	ret

20014380 <core::iter::traits::iterator::Iterator::max_by::fold::{{closure}}>:
20014380:	7179                	add	sp,sp,-48
20014382:	d606                	sw	ra,44(sp)
20014384:	c43a                	sw	a4,8(sp)
20014386:	8736                	mv	a4,a3
20014388:	46a2                	lw	a3,8(sp)
2001438a:	c63a                	sw	a4,12(sp)
2001438c:	8732                	mv	a4,a2
2001438e:	4632                	lw	a2,12(sp)
20014390:	c83a                	sw	a4,16(sp)
20014392:	872e                	mv	a4,a1
20014394:	45c2                	lw	a1,16(sp)
20014396:	ca3a                	sw	a4,20(sp)
20014398:	872a                	mv	a4,a0
2001439a:	4552                	lw	a0,20(sp)
2001439c:	cc3a                	sw	a4,24(sp)
2001439e:	ce2a                	sw	a0,28(sp)
200143a0:	d02e                	sw	a1,32(sp)
200143a2:	d232                	sw	a2,36(sp)
200143a4:	d436                	sw	a3,40(sp)
200143a6:	00000097          	auipc	ra,0x0
200143aa:	062080e7          	jalr	98(ra) # 20014408 <core::cmp::max_by>
200143ae:	50b2                	lw	ra,44(sp)
200143b0:	6145                	add	sp,sp,48
200143b2:	8082                	ret

200143b4 <core::ops::function::FnMut::call_mut>:
200143b4:	1141                	add	sp,sp,-16
200143b6:	c606                	sw	ra,12(sp)
200143b8:	c02e                	sw	a1,0(sp)
200143ba:	c232                	sw	a2,4(sp)
200143bc:	c42a                	sw	a0,8(sp)
200143be:	4502                	lw	a0,0(sp)
200143c0:	4592                	lw	a1,4(sp)
200143c2:	00000097          	auipc	ra,0x0
200143c6:	fa8080e7          	jalr	-88(ra) # 2001436a <core::iter::traits::iterator::Iterator::max_by_key::compare>
200143ca:	40b2                	lw	ra,12(sp)
200143cc:	0141                	add	sp,sp,16
200143ce:	8082                	ret

200143d0 <core::ops::function::impls::<impl core::ops::function::FnMut<A> for &mut F>::call_mut>:
200143d0:	1141                	add	sp,sp,-16
200143d2:	c606                	sw	ra,12(sp)
200143d4:	c22e                	sw	a1,4(sp)
200143d6:	c42a                	sw	a0,8(sp)
200143d8:	4108                	lw	a0,0(a0)
200143da:	4592                	lw	a1,4(sp)
200143dc:	00000097          	auipc	ra,0x0
200143e0:	00e080e7          	jalr	14(ra) # 200143ea <yarr::scheduler::schedule::{{closure}}>
200143e4:	40b2                	lw	ra,12(sp)
200143e6:	0141                	add	sp,sp,16
200143e8:	8082                	ret

200143ea <yarr::scheduler::schedule::{{closure}}>:
                .filter(|p| p.ready)
200143ea:	1141                	add	sp,sp,-16
200143ec:	c42a                	sw	a0,8(sp)
200143ee:	c62e                	sw	a1,12(sp)
200143f0:	4188                	lw	a0,0(a1)
200143f2:	01854503          	lbu	a0,24(a0)
200143f6:	0141                	add	sp,sp,16
200143f8:	8082                	ret

200143fa <yarr::scheduler::schedule::{{closure}}>:
                .max_by_key(|p| p.priority)
200143fa:	1141                	add	sp,sp,-16
200143fc:	c42a                	sw	a0,8(sp)
200143fe:	c62e                	sw	a1,12(sp)
20014400:	4188                	lw	a0,0(a1)
20014402:	4948                	lw	a0,20(a0)
20014404:	0141                	add	sp,sp,16
20014406:	8082                	ret

20014408 <core::cmp::max_by>:
20014408:	7139                	add	sp,sp,-64
2001440a:	de06                	sw	ra,60(sp)
2001440c:	c63a                	sw	a4,12(sp)
2001440e:	872a                	mv	a4,a0
20014410:	4532                	lw	a0,12(sp)
20014412:	c83a                	sw	a4,16(sp)
20014414:	ca2e                	sw	a1,20(sp)
20014416:	cc32                	sw	a2,24(sp)
20014418:	ce36                	sw	a3,28(sp)
2001441a:	dc2a                	sw	a0,56(sp)
2001441c:	4585                	li	a1,1
2001441e:	02b10ba3          	sb	a1,55(sp)
20014422:	02b10b23          	sb	a1,54(sp)
20014426:	080c                	add	a1,sp,16
20014428:	d62e                	sw	a1,44(sp)
2001442a:	082c                	add	a1,sp,24
2001442c:	d82e                	sw	a1,48(sp)
2001442e:	55b2                	lw	a1,44(sp)
20014430:	5642                	lw	a2,48(sp)
20014432:	00000097          	auipc	ra,0x0
20014436:	ef4080e7          	jalr	-268(ra) # 20014326 <core::ops::function::impls::<impl core::ops::function::FnOnce<A> for &mut F>::call_once>
2001443a:	02a105a3          	sb	a0,43(sp)
2001443e:	02b14503          	lbu	a0,43(sp)
20014442:	0505                	add	a0,a0,1
20014444:	0ff57513          	zext.b	a0,a0
20014448:	4589                	li	a1,2
2001444a:	00b56563          	bltu	a0,a1,20014454 <core::cmp::max_by+0x4c>
2001444e:	a009                	j	20014450 <core::cmp::max_by+0x48>
20014450:	a811                	j	20014464 <core::cmp::max_by+0x5c>
20014452:	0000                	unimp
20014454:	4501                	li	a0,0
20014456:	02a10b23          	sb	a0,54(sp)
2001445a:	45e2                	lw	a1,24(sp)
2001445c:	4572                	lw	a0,28(sp)
2001445e:	d02e                	sw	a1,32(sp)
20014460:	d22a                	sw	a0,36(sp)
20014462:	a809                	j	20014474 <core::cmp::max_by+0x6c>
20014464:	4501                	li	a0,0
20014466:	02a10ba3          	sb	a0,55(sp)
2001446a:	45c2                	lw	a1,16(sp)
2001446c:	4552                	lw	a0,20(sp)
2001446e:	d02e                	sw	a1,32(sp)
20014470:	d22a                	sw	a0,36(sp)
20014472:	a009                	j	20014474 <core::cmp::max_by+0x6c>
20014474:	03614503          	lbu	a0,54(sp)
20014478:	8905                	and	a0,a0,1
2001447a:	e519                	bnez	a0,20014488 <core::cmp::max_by+0x80>
2001447c:	a009                	j	2001447e <core::cmp::max_by+0x76>
2001447e:	03714503          	lbu	a0,55(sp)
20014482:	8905                	and	a0,a0,1
20014484:	e901                	bnez	a0,20014494 <core::cmp::max_by+0x8c>
20014486:	a011                	j	2001448a <core::cmp::max_by+0x82>
20014488:	bfdd                	j	2001447e <core::cmp::max_by+0x76>
2001448a:	5502                	lw	a0,32(sp)
2001448c:	5592                	lw	a1,36(sp)
2001448e:	50f2                	lw	ra,60(sp)
20014490:	6121                	add	sp,sp,64
20014492:	8082                	ret
20014494:	bfdd                	j	2001448a <core::cmp::max_by+0x82>

20014496 <core::cmp::impls::<impl core::cmp::Ord for usize>::cmp>:
20014496:	1101                	add	sp,sp,-32
20014498:	c62e                	sw	a1,12(sp)
2001449a:	c82a                	sw	a0,16(sp)
2001449c:	cc2a                	sw	a0,24(sp)
2001449e:	ce2e                	sw	a1,28(sp)
200144a0:	4108                	lw	a0,0(a0)
200144a2:	418c                	lw	a1,0(a1)
200144a4:	00b56a63          	bltu	a0,a1,200144b8 <core::cmp::impls::<impl core::cmp::Ord for usize>::cmp+0x22>
200144a8:	a009                	j	200144aa <core::cmp::impls::<impl core::cmp::Ord for usize>::cmp+0x14>
200144aa:	45b2                	lw	a1,12(sp)
200144ac:	4542                	lw	a0,16(sp)
200144ae:	4108                	lw	a0,0(a0)
200144b0:	418c                	lw	a1,0(a1)
200144b2:	00b50c63          	beq	a0,a1,200144ca <core::cmp::impls::<impl core::cmp::Ord for usize>::cmp+0x34>
200144b6:	a031                	j	200144c2 <core::cmp::impls::<impl core::cmp::Ord for usize>::cmp+0x2c>
200144b8:	0ff00513          	li	a0,255
200144bc:	00a10ba3          	sb	a0,23(sp)
200144c0:	a811                	j	200144d4 <core::cmp::impls::<impl core::cmp::Ord for usize>::cmp+0x3e>
200144c2:	4505                	li	a0,1
200144c4:	00a10ba3          	sb	a0,23(sp)
200144c8:	a029                	j	200144d2 <core::cmp::impls::<impl core::cmp::Ord for usize>::cmp+0x3c>
200144ca:	4501                	li	a0,0
200144cc:	00a10ba3          	sb	a0,23(sp)
200144d0:	a009                	j	200144d2 <core::cmp::impls::<impl core::cmp::Ord for usize>::cmp+0x3c>
200144d2:	a009                	j	200144d4 <core::cmp::impls::<impl core::cmp::Ord for usize>::cmp+0x3e>
200144d4:	01714503          	lbu	a0,23(sp)
200144d8:	6105                	add	sp,sp,32
200144da:	8082                	ret

200144dc <core::iter::traits::iterator::Iterator::filter>:
200144dc:	1101                	add	sp,sp,-32
200144de:	ca2a                	sw	a0,20(sp)
200144e0:	cc2e                	sw	a1,24(sp)
200144e2:	c62a                	sw	a0,12(sp)
200144e4:	c82e                	sw	a1,16(sp)
200144e6:	4532                	lw	a0,12(sp)
200144e8:	45c2                	lw	a1,16(sp)
200144ea:	6105                	add	sp,sp,32
200144ec:	8082                	ret

200144ee <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::find>:
200144ee:	1101                	add	sp,sp,-32
200144f0:	ce06                	sw	ra,28(sp)
200144f2:	c02a                	sw	a0,0(sp)
200144f4:	c22e                	sw	a1,4(sp)
200144f6:	cc2a                	sw	a0,24(sp)
200144f8:	a009                	j	200144fa <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::find+0xc>
200144fa:	4502                	lw	a0,0(sp)
200144fc:	00000097          	auipc	ra,0x0
20014500:	16a080e7          	jalr	362(ra) # 20014666 <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next>
20014504:	c62a                	sw	a0,12(sp)
20014506:	4532                	lw	a0,12(sp)
20014508:	cd11                	beqz	a0,20014524 <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::find+0x36>
2001450a:	a009                	j	2001450c <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::find+0x1e>
2001450c:	4532                	lw	a0,12(sp)
2001450e:	c82a                	sw	a0,16(sp)
20014510:	0808                	add	a0,sp,16
20014512:	ca2a                	sw	a0,20(sp)
20014514:	45d2                	lw	a1,20(sp)
20014516:	0048                	add	a0,sp,4
20014518:	00000097          	auipc	ra,0x0
2001451c:	eb8080e7          	jalr	-328(ra) # 200143d0 <core::ops::function::impls::<impl core::ops::function::FnMut<A> for &mut F>::call_mut>
20014520:	e511                	bnez	a0,2001452c <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::find+0x3e>
20014522:	a021                	j	2001452a <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::find+0x3c>
20014524:	4501                	li	a0,0
20014526:	c42a                	sw	a0,8(sp)
20014528:	a029                	j	20014532 <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::find+0x44>
2001452a:	bfc1                	j	200144fa <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::find+0xc>
2001452c:	4542                	lw	a0,16(sp)
2001452e:	c42a                	sw	a0,8(sp)
20014530:	a009                	j	20014532 <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::find+0x44>
20014532:	4522                	lw	a0,8(sp)
20014534:	40f2                	lw	ra,28(sp)
20014536:	6105                	add	sp,sp,32
20014538:	8082                	ret

2001453a <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::fold>:
2001453a:	7135                	add	sp,sp,-160
2001453c:	cf06                	sw	ra,156(sp)
2001453e:	c436                	sw	a3,8(sp)
20014540:	c632                	sw	a2,12(sp)
20014542:	4705                	li	a4,1
20014544:	c83a                	sw	a4,16(sp)
20014546:	ca2a                	sw	a0,20(sp)
20014548:	cc2e                	sw	a1,24(sp)
2001454a:	c6b2                	sw	a2,76(sp)
2001454c:	c8b6                	sw	a3,80(sp)
2001454e:	4501                	li	a0,0
20014550:	ed19                	bnez	a0,2001456e <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::fold+0x34>
20014552:	a009                	j	20014554 <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::fold+0x1a>
20014554:	0828                	add	a0,sp,24
20014556:	caaa                	sw	a0,84(sp)
20014558:	45e2                	lw	a1,24(sp)
2001455a:	ccae                	sw	a1,88(sp)
2001455c:	4552                	lw	a0,20(sp)
2001455e:	ceaa                	sw	a0,92(sp)
20014560:	d0ae                	sw	a1,96(sp)
20014562:	8d2d                	xor	a0,a0,a1
20014564:	00153513          	seqz	a0,a0
20014568:	02a105a3          	sb	a0,43(sp)
2001456c:	a809                	j	2001457e <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::fold+0x44>
2001456e:	4562                	lw	a0,24(sp)
20014570:	d2aa                	sw	a0,100(sp)
20014572:	d4aa                	sw	a0,104(sp)
20014574:	00153513          	seqz	a0,a0
20014578:	02a105a3          	sb	a0,43(sp)
2001457c:	a009                	j	2001457e <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::fold+0x44>
2001457e:	02b14503          	lbu	a0,43(sp)
20014582:	8905                	and	a0,a0,1
20014584:	e911                	bnez	a0,20014598 <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::fold+0x5e>
20014586:	a009                	j	20014588 <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::fold+0x4e>
20014588:	4522                	lw	a0,8(sp)
2001458a:	45b2                	lw	a1,12(sp)
2001458c:	d62e                	sw	a1,44(sp)
2001458e:	d82a                	sw	a0,48(sp)
20014590:	4501                	li	a0,0
20014592:	da2a                	sw	a0,52(sp)
20014594:	e515                	bnez	a0,200145c0 <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::fold+0x86>
20014596:	a031                	j	200145a2 <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::fold+0x68>
20014598:	4522                	lw	a0,8(sp)
2001459a:	45b2                	lw	a1,12(sp)
2001459c:	d02e                	sw	a1,32(sp)
2001459e:	d22a                	sw	a0,36(sp)
200145a0:	a875                	j	2001465c <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::fold+0x122>
200145a2:	0828                	add	a0,sp,24
200145a4:	d6aa                	sw	a0,108(sp)
200145a6:	45e2                	lw	a1,24(sp)
200145a8:	c02e                	sw	a1,0(sp)
200145aa:	d8ae                	sw	a1,112(sp)
200145ac:	4552                	lw	a0,20(sp)
200145ae:	c22a                	sw	a0,4(sp)
200145b0:	daaa                	sw	a0,116(sp)
200145b2:	dcae                	sw	a1,120(sp)
200145b4:	deaa                	sw	a0,124(sp)
200145b6:	4571                	li	a0,28
200145b8:	c12a                	sw	a0,128(sp)
200145ba:	4505                	li	a0,1
200145bc:	e515                	bnez	a0,200145e8 <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::fold+0xae>
200145be:	a031                	j	200145ca <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::fold+0x90>
200145c0:	4562                	lw	a0,24(sp)
200145c2:	c32a                	sw	a0,132(sp)
200145c4:	c52a                	sw	a0,136(sp)
200145c6:	dc2a                	sw	a0,56(sp)
200145c8:	a83d                	j	20014606 <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::fold+0xcc>
200145ca:	20017537          	lui	a0,0x20017
200145ce:	89c50513          	add	a0,a0,-1892 # 2001689c <.L__unnamed_1>
200145d2:	200175b7          	lui	a1,0x20017
200145d6:	93858613          	add	a2,a1,-1736 # 20016938 <.L__unnamed_2>
200145da:	04900593          	li	a1,73
200145de:	00000097          	auipc	ra,0x0
200145e2:	374080e7          	jalr	884(ra) # 20014952 <core::panicking::panic>
200145e6:	0000                	unimp
200145e8:	4501                	li	a0,0
200145ea:	f165                	bnez	a0,200145ca <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::fold+0x90>
200145ec:	a009                	j	200145ee <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::fold+0xb4>
200145ee:	4502                	lw	a0,0(sp)
200145f0:	4592                	lw	a1,4(sp)
200145f2:	8d0d                	sub	a0,a0,a1
200145f4:	8109                	srl	a0,a0,0x2
200145f6:	249255b7          	lui	a1,0x24925
200145fa:	92558593          	add	a1,a1,-1755 # 24924925 <_sidata+0x490dd3d>
200145fe:	02b53533          	mulhu	a0,a0,a1
20014602:	dc2a                	sw	a0,56(sp)
20014604:	a009                	j	20014606 <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::fold+0xcc>
20014606:	a009                	j	20014608 <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::fold+0xce>
20014608:	5632                	lw	a2,44(sp)
2001460a:	55c2                	lw	a1,48(sp)
2001460c:	4552                	lw	a0,20(sp)
2001460e:	c72a                	sw	a0,140(sp)
20014610:	56d2                	lw	a3,52(sp)
20014612:	c936                	sw	a3,144(sp)
20014614:	cb2a                	sw	a0,148(sp)
20014616:	4771                	li	a4,28
20014618:	02e686b3          	mul	a3,a3,a4
2001461c:	9536                	add	a0,a0,a3
2001461e:	c4aa                	sw	a0,72(sp)
20014620:	4526                	lw	a0,72(sp)
20014622:	de32                	sw	a2,60(sp)
20014624:	c0ae                	sw	a1,64(sp)
20014626:	c2aa                	sw	a0,68(sp)
20014628:	55f2                	lw	a1,60(sp)
2001462a:	4606                	lw	a2,64(sp)
2001462c:	4696                	lw	a3,68(sp)
2001462e:	01f10513          	add	a0,sp,31
20014632:	00000097          	auipc	ra,0x0
20014636:	b62080e7          	jalr	-1182(ra) # 20014194 <core::iter::adapters::filter::filter_fold::{{closure}}>
2001463a:	d62a                	sw	a0,44(sp)
2001463c:	d82e                	sw	a1,48(sp)
2001463e:	5552                	lw	a0,52(sp)
20014640:	cd2a                	sw	a0,152(sp)
20014642:	0505                	add	a0,a0,1
20014644:	da2a                	sw	a0,52(sp)
20014646:	5552                	lw	a0,52(sp)
20014648:	55e2                	lw	a1,56(sp)
2001464a:	00b50463          	beq	a0,a1,20014652 <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::fold+0x118>
2001464e:	a009                	j	20014650 <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::fold+0x116>
20014650:	bf65                	j	20014608 <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::fold+0xce>
20014652:	55b2                	lw	a1,44(sp)
20014654:	5542                	lw	a0,48(sp)
20014656:	d02e                	sw	a1,32(sp)
20014658:	d22a                	sw	a0,36(sp)
2001465a:	a009                	j	2001465c <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::fold+0x122>
2001465c:	5502                	lw	a0,32(sp)
2001465e:	5592                	lw	a1,36(sp)
20014660:	40fa                	lw	ra,156(sp)
20014662:	610d                	add	sp,sp,160
20014664:	8082                	ret

20014666 <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next>:
20014666:	711d                	add	sp,sp,-96
20014668:	c22a                	sw	a0,4(sp)
2001466a:	4585                	li	a1,1
2001466c:	c42e                	sw	a1,8(sp)
2001466e:	c62e                	sw	a1,12(sp)
20014670:	c82e                	sw	a1,16(sp)
20014672:	ca2e                	sw	a1,20(sp)
20014674:	d22a                	sw	a0,36(sp)
20014676:	4501                	li	a0,0
20014678:	e10d                	bnez	a0,2001469a <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next+0x34>
2001467a:	a009                	j	2001467c <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next+0x16>
2001467c:	4512                	lw	a0,4(sp)
2001467e:	00450593          	add	a1,a0,4
20014682:	d42e                	sw	a1,40(sp)
20014684:	414c                	lw	a1,4(a0)
20014686:	d62e                	sw	a1,44(sp)
20014688:	4108                	lw	a0,0(a0)
2001468a:	d82a                	sw	a0,48(sp)
2001468c:	da2e                	sw	a1,52(sp)
2001468e:	8d2d                	xor	a0,a0,a1
20014690:	00153513          	seqz	a0,a0
20014694:	00a10fa3          	sb	a0,31(sp)
20014698:	a811                	j	200146ac <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next+0x46>
2001469a:	4512                	lw	a0,4(sp)
2001469c:	4148                	lw	a0,4(a0)
2001469e:	dc2a                	sw	a0,56(sp)
200146a0:	de2a                	sw	a0,60(sp)
200146a2:	00153513          	seqz	a0,a0
200146a6:	00a10fa3          	sb	a0,31(sp)
200146aa:	a009                	j	200146ac <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next+0x46>
200146ac:	01f14503          	lbu	a0,31(sp)
200146b0:	8905                	and	a0,a0,1
200146b2:	e909                	bnez	a0,200146c4 <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next+0x5e>
200146b4:	a009                	j	200146b6 <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next+0x50>
200146b6:	4512                	lw	a0,4(sp)
200146b8:	4108                	lw	a0,0(a0)
200146ba:	c02a                	sw	a0,0(sp)
200146bc:	c0aa                	sw	a0,64(sp)
200146be:	4501                	li	a0,0
200146c0:	ed11                	bnez	a0,200146dc <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next+0x76>
200146c2:	a021                	j	200146ca <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next+0x64>
200146c4:	4501                	li	a0,0
200146c6:	cc2a                	sw	a0,24(sp)
200146c8:	a80d                	j	200146fa <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next+0x94>
200146ca:	4592                	lw	a1,4(sp)
200146cc:	4188                	lw	a0,0(a1)
200146ce:	c2aa                	sw	a0,68(sp)
200146d0:	c4aa                	sw	a0,72(sp)
200146d2:	0571                	add	a0,a0,28
200146d4:	d02a                	sw	a0,32(sp)
200146d6:	5502                	lw	a0,32(sp)
200146d8:	c188                	sw	a0,0(a1)
200146da:	a819                	j	200146f0 <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next+0x8a>
200146dc:	4592                	lw	a1,4(sp)
200146de:	00458513          	add	a0,a1,4
200146e2:	c6aa                	sw	a0,76(sp)
200146e4:	c8aa                	sw	a0,80(sp)
200146e6:	41c8                	lw	a0,4(a1)
200146e8:	caaa                	sw	a0,84(sp)
200146ea:	157d                	add	a0,a0,-1
200146ec:	c1c8                	sw	a0,4(a1)
200146ee:	a009                	j	200146f0 <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next+0x8a>
200146f0:	4502                	lw	a0,0(sp)
200146f2:	ccaa                	sw	a0,88(sp)
200146f4:	ceaa                	sw	a0,92(sp)
200146f6:	cc2a                	sw	a0,24(sp)
200146f8:	a009                	j	200146fa <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next+0x94>
200146fa:	4562                	lw	a0,24(sp)
200146fc:	6125                	add	sp,sp,96
200146fe:	8082                	ret

20014700 <core::sync::atomic::compiler_fence>:
20014700:	7179                	add	sp,sp,-48
20014702:	00a103a3          	sb	a0,7(sp)
20014706:	00714503          	lbu	a0,7(sp)
2001470a:	c02a                	sw	a0,0(sp)
2001470c:	4502                	lw	a0,0(sp)
2001470e:	050a                	sll	a0,a0,0x2
20014710:	200175b7          	lui	a1,0x20017
20014714:	94858593          	add	a1,a1,-1720 # 20016948 <.LJTI0_0>
20014718:	952e                	add	a0,a0,a1
2001471a:	4108                	lw	a0,0(a0)
2001471c:	8502                	jr	a0
	...

20014720 <.LBB0_3>:
20014720:	20017537          	lui	a0,0x20017
20014724:	99050613          	add	a2,a0,-1648 # 20016990 <.L__unnamed_1>
20014728:	d432                	sw	a2,40(sp)
2001472a:	4585                	li	a1,1
2001472c:	d62e                	sw	a1,44(sp)
2001472e:	4501                	li	a0,0
20014730:	d02a                	sw	a0,32(sp)
20014732:	c432                	sw	a2,8(sp)
20014734:	c62e                	sw	a1,12(sp)
20014736:	5602                	lw	a2,32(sp)
20014738:	5592                	lw	a1,36(sp)
2001473a:	cc32                	sw	a2,24(sp)
2001473c:	ce2e                	sw	a1,28(sp)
2001473e:	200175b7          	lui	a1,0x20017
20014742:	99858593          	add	a1,a1,-1640 # 20016998 <.L__unnamed_5>
20014746:	c82e                	sw	a1,16(sp)
20014748:	ca2a                	sw	a0,20(sp)
2001474a:	20017537          	lui	a0,0x20017
2001474e:	9e850593          	add	a1,a0,-1560 # 200169e8 <.L__unnamed_3>
20014752:	0028                	add	a0,sp,8
20014754:	00000097          	auipc	ra,0x0
20014758:	1d0080e7          	jalr	464(ra) # 20014924 <core::panicking::panic_fmt>
	...

2001475e <.LBB0_4>:
2001475e:	a021                	j	20014766 <.LBB0_7+0x2>

20014760 <.LBB0_5>:
20014760:	a019                	j	20014766 <.LBB0_7+0x2>

20014762 <.LBB0_6>:
20014762:	a011                	j	20014766 <.LBB0_7+0x2>

20014764 <.LBB0_7>:
20014764:	a009                	j	20014766 <.LBB0_7+0x2>
20014766:	6145                	add	sp,sp,48
20014768:	8082                	ret

2001476a <core::slice::<impl [T]>::iter>:
2001476a:	7179                	add	sp,sp,-48
2001476c:	c02e                	sw	a1,0(sp)
2001476e:	c22a                	sw	a0,4(sp)
20014770:	cc2a                	sw	a0,24(sp)
20014772:	ce2e                	sw	a1,28(sp)
20014774:	d02a                	sw	a0,32(sp)
20014776:	4501                	li	a0,0
20014778:	e919                	bnez	a0,2001478e <core::slice::<impl [T]>::iter+0x24>
2001477a:	a009                	j	2001477c <core::slice::<impl [T]>::iter+0x12>
2001477c:	4512                	lw	a0,4(sp)
2001477e:	4582                	lw	a1,0(sp)
20014780:	d22e                	sw	a1,36(sp)
20014782:	4671                	li	a2,28
20014784:	02c585b3          	mul	a1,a1,a2
20014788:	952e                	add	a0,a0,a1
2001478a:	c82a                	sw	a0,16(sp)
2001478c:	a029                	j	20014796 <core::slice::<impl [T]>::iter+0x2c>
2001478e:	4502                	lw	a0,0(sp)
20014790:	d42a                	sw	a0,40(sp)
20014792:	c82a                	sw	a0,16(sp)
20014794:	a009                	j	20014796 <core::slice::<impl [T]>::iter+0x2c>
20014796:	4512                	lw	a0,4(sp)
20014798:	d62a                	sw	a0,44(sp)
2001479a:	ca2a                	sw	a0,20(sp)
2001479c:	4542                	lw	a0,16(sp)
2001479e:	45d2                	lw	a1,20(sp)
200147a0:	c42e                	sw	a1,8(sp)
200147a2:	c62a                	sw	a0,12(sp)
200147a4:	4522                	lw	a0,8(sp)
200147a6:	45b2                	lw	a1,12(sp)
200147a8:	6145                	add	sp,sp,48
200147aa:	8082                	ret

200147ac <<usize as core::iter::range::Step>::forward_unchecked>:
200147ac:	1141                	add	sp,sp,-16
200147ae:	c42a                	sw	a0,8(sp)
200147b0:	c62e                	sw	a1,12(sp)
200147b2:	952e                	add	a0,a0,a1
200147b4:	0141                	add	sp,sp,16
200147b6:	8082                	ret

200147b8 <core::ops::function::FnOnce::call_once>:
200147b8:	4108                	lw	a0,0(a0)
200147ba:	a001                	j	200147ba <core::ops::function::FnOnce::call_once+0x2>

200147bc <core::ptr::drop_in_place<core::fmt::Error>>:
200147bc:	8082                	ret

200147be <<T as core::any::Any>::type_id>:
200147be:	6629d5b7          	lui	a1,0x6629d
200147c2:	6ea58593          	add	a1,a1,1770 # 6629d6ea <_sidata+0x46286b02>
200147c6:	c54c                	sw	a1,12(a0)
200147c8:	758765b7          	lui	a1,0x75876
200147cc:	c6758593          	add	a1,a1,-921 # 75875c67 <_sidata+0x5585f07f>
200147d0:	c50c                	sw	a1,8(a0)
200147d2:	8ae865b7          	lui	a1,0x8ae86
200147d6:	b4e58593          	add	a1,a1,-1202 # 8ae85b4e <_sstack+0xae81b4e>
200147da:	c14c                	sw	a1,4(a0)
200147dc:	d727d5b7          	lui	a1,0xd727d
200147e0:	d0758593          	add	a1,a1,-761 # d727cd07 <_sstack+0x57278d07>
200147e4:	c10c                	sw	a1,0(a0)
200147e6:	8082                	ret

200147e8 <<core::panic::panic_info::PanicInfo as core::fmt::Display>::fmt>:
200147e8:	711d                	add	sp,sp,-96
200147ea:	ce86                	sw	ra,92(sp)
200147ec:	cca2                	sw	s0,88(sp)
200147ee:	caa6                	sw	s1,84(sp)
200147f0:	c8ca                	sw	s2,80(sp)
200147f2:	c6ce                	sw	s3,76(sp)
200147f4:	c4d2                	sw	s4,72(sp)
200147f6:	c2d6                	sw	s5,68(sp)
200147f8:	4d80                	lw	s0,24(a1)
200147fa:	0145a983          	lw	s3,20(a1)
200147fe:	00c42a03          	lw	s4,12(s0)
20014802:	84aa                	mv	s1,a0
20014804:	20017537          	lui	a0,0x20017
20014808:	a2450593          	add	a1,a0,-1500 # 20016a24 <.Lanon.0b3f1f583507122567b66d8a7d95b554.258>
2001480c:	4631                	li	a2,12
2001480e:	854e                	mv	a0,s3
20014810:	9a02                	jalr	s4
20014812:	4905                	li	s2,1
20014814:	ed75                	bnez	a0,20014910 <<core::panic::panic_info::PanicInfo as core::fmt::Display>::fmt+0x128>
20014816:	44c8                	lw	a0,12(s1)
20014818:	00850593          	add	a1,a0,8
2001481c:	00c50613          	add	a2,a0,12
20014820:	d62a                	sw	a0,44(sp)
20014822:	20015537          	lui	a0,0x20015
20014826:	3ee50513          	add	a0,a0,1006 # 200153ee <<&T as core::fmt::Display>::fmt>
2001482a:	d82a                	sw	a0,48(sp)
2001482c:	da2e                	sw	a1,52(sp)
2001482e:	20015537          	lui	a0,0x20015
20014832:	3e050513          	add	a0,a0,992 # 200153e0 <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt>
20014836:	dc2a                	sw	a0,56(sp)
20014838:	de32                	sw	a2,60(sp)
2001483a:	c0aa                	sw	a0,64(sp)
2001483c:	20017537          	lui	a0,0x20017
20014840:	a0c50513          	add	a0,a0,-1524 # 20016a0c <.Lanon.0b3f1f583507122567b66d8a7d95b554.257>
20014844:	ca2a                	sw	a0,20(sp)
20014846:	450d                	li	a0,3
20014848:	cc2a                	sw	a0,24(sp)
2001484a:	d202                	sw	zero,36(sp)
2001484c:	106c                	add	a1,sp,44
2001484e:	ce2e                	sw	a1,28(sp)
20014850:	d02a                	sw	a0,32(sp)
20014852:	0850                	add	a2,sp,20
20014854:	854e                	mv	a0,s3
20014856:	85a2                	mv	a1,s0
20014858:	00000097          	auipc	ra,0x0
2001485c:	166080e7          	jalr	358(ra) # 200149be <core::fmt::write>
20014860:	e945                	bnez	a0,20014910 <<core::panic::panic_info::PanicInfo as core::fmt::Display>::fmt+0x128>
20014862:	0084aa83          	lw	s5,8(s1)
20014866:	040a8563          	beqz	s5,200148b0 <<core::panic::panic_info::PanicInfo as core::fmt::Display>::fmt+0xc8>
2001486a:	20017537          	lui	a0,0x20017
2001486e:	a3050593          	add	a1,a0,-1488 # 20016a30 <.Lanon.0b3f1f583507122567b66d8a7d95b554.259>
20014872:	4609                	li	a2,2
20014874:	854e                	mv	a0,s3
20014876:	9a02                	jalr	s4
20014878:	ed41                	bnez	a0,20014910 <<core::panic::panic_info::PanicInfo as core::fmt::Display>::fmt+0x128>
2001487a:	014aa503          	lw	a0,20(s5)
2001487e:	c0aa                	sw	a0,64(sp)
20014880:	010aa503          	lw	a0,16(s5)
20014884:	de2a                	sw	a0,60(sp)
20014886:	00caa503          	lw	a0,12(s5)
2001488a:	dc2a                	sw	a0,56(sp)
2001488c:	008aa503          	lw	a0,8(s5)
20014890:	da2a                	sw	a0,52(sp)
20014892:	004aa503          	lw	a0,4(s5)
20014896:	d82a                	sw	a0,48(sp)
20014898:	000aa503          	lw	a0,0(s5)
2001489c:	d62a                	sw	a0,44(sp)
2001489e:	1070                	add	a2,sp,44
200148a0:	854e                	mv	a0,s3
200148a2:	85a2                	mv	a1,s0
200148a4:	00000097          	auipc	ra,0x0
200148a8:	11a080e7          	jalr	282(ra) # 200149be <core::fmt::write>
200148ac:	c12d                	beqz	a0,2001490e <<core::panic::panic_info::PanicInfo as core::fmt::Display>::fmt+0x126>
200148ae:	a08d                	j	20014910 <<core::panic::panic_info::PanicInfo as core::fmt::Display>::fmt+0x128>
200148b0:	40c8                	lw	a0,4(s1)
200148b2:	4080                	lw	s0,0(s1)
200148b4:	4550                	lw	a2,12(a0)
200148b6:	850a                	mv	a0,sp
200148b8:	85a2                	mv	a1,s0
200148ba:	9602                	jalr	a2
200148bc:	4502                	lw	a0,0(sp)
200148be:	45a2                	lw	a1,8(sp)
200148c0:	4632                	lw	a2,12(sp)
200148c2:	4692                	lw	a3,4(sp)
200148c4:	fdbc1737          	lui	a4,0xfdbc1
200148c8:	68170713          	add	a4,a4,1665 # fdbc1681 <_sstack+0x7dbbd681>
200148cc:	8e39                	xor	a2,a2,a4
200148ce:	c1a2d737          	lui	a4,0xc1a2d
200148d2:	89c70713          	add	a4,a4,-1892 # c1a2c89c <_sstack+0x41a2889c>
200148d6:	8eb9                	xor	a3,a3,a4
200148d8:	8e55                	or	a2,a2,a3
200148da:	00b1f6b7          	lui	a3,0xb1f
200148de:	f6468693          	add	a3,a3,-156 # b1ef64 <.Lline_table_start2+0xade14c>
200148e2:	8db5                	xor	a1,a1,a3
200148e4:	cd1e86b7          	lui	a3,0xcd1e8
200148e8:	bc168693          	add	a3,a3,-1087 # cd1e7bc1 <_sstack+0x4d1e3bc1>
200148ec:	8d35                	xor	a0,a0,a3
200148ee:	8d4d                	or	a0,a0,a1
200148f0:	8d51                	or	a0,a0,a2
200148f2:	ed11                	bnez	a0,2001490e <<core::panic::panic_info::PanicInfo as core::fmt::Display>::fmt+0x126>
200148f4:	20017537          	lui	a0,0x20017
200148f8:	a3050593          	add	a1,a0,-1488 # 20016a30 <.Lanon.0b3f1f583507122567b66d8a7d95b554.259>
200148fc:	4609                	li	a2,2
200148fe:	854e                	mv	a0,s3
20014900:	9a02                	jalr	s4
20014902:	e519                	bnez	a0,20014910 <<core::panic::panic_info::PanicInfo as core::fmt::Display>::fmt+0x128>
20014904:	400c                	lw	a1,0(s0)
20014906:	4050                	lw	a2,4(s0)
20014908:	854e                	mv	a0,s3
2001490a:	9a02                	jalr	s4
2001490c:	e111                	bnez	a0,20014910 <<core::panic::panic_info::PanicInfo as core::fmt::Display>::fmt+0x128>
2001490e:	4901                	li	s2,0
20014910:	854a                	mv	a0,s2
20014912:	40f6                	lw	ra,92(sp)
20014914:	4466                	lw	s0,88(sp)
20014916:	44d6                	lw	s1,84(sp)
20014918:	4946                	lw	s2,80(sp)
2001491a:	49b6                	lw	s3,76(sp)
2001491c:	4a26                	lw	s4,72(sp)
2001491e:	4a96                	lw	s5,68(sp)
20014920:	6125                	add	sp,sp,96
20014922:	8082                	ret

20014924 <core::panicking::panic_fmt>:
20014924:	1101                	add	sp,sp,-32
20014926:	ce06                	sw	ra,28(sp)
20014928:	20017637          	lui	a2,0x20017
2001492c:	9f860613          	add	a2,a2,-1544 # 200169f8 <.Lanon.0b3f1f583507122567b66d8a7d95b554.2>
20014930:	c432                	sw	a2,8(sp)
20014932:	20017637          	lui	a2,0x20017
20014936:	a3460613          	add	a2,a2,-1484 # 20016a34 <.Lanon.0b3f1f583507122567b66d8a7d95b554.260>
2001493a:	c632                	sw	a2,12(sp)
2001493c:	c82a                	sw	a0,16(sp)
2001493e:	ca2e                	sw	a1,20(sp)
20014940:	4505                	li	a0,1
20014942:	00a11c23          	sh	a0,24(sp)
20014946:	0028                	add	a0,sp,8
20014948:	ffffc097          	auipc	ra,0xffffc
2001494c:	ace080e7          	jalr	-1330(ra) # 20010416 <rust_begin_unwind>
	...

20014952 <core::panicking::panic>:
20014952:	7179                	add	sp,sp,-48
20014954:	d606                	sw	ra,44(sp)
20014956:	d22a                	sw	a0,36(sp)
20014958:	d42e                	sw	a1,40(sp)
2001495a:	1048                	add	a0,sp,36
2001495c:	c62a                	sw	a0,12(sp)
2001495e:	4505                	li	a0,1
20014960:	c82a                	sw	a0,16(sp)
20014962:	ce02                	sw	zero,28(sp)
20014964:	20017537          	lui	a0,0x20017
20014968:	9f850513          	add	a0,a0,-1544 # 200169f8 <.Lanon.0b3f1f583507122567b66d8a7d95b554.2>
2001496c:	ca2a                	sw	a0,20(sp)
2001496e:	cc02                	sw	zero,24(sp)
20014970:	0068                	add	a0,sp,12
20014972:	85b2                	mv	a1,a2
20014974:	00000097          	auipc	ra,0x0
20014978:	fb0080e7          	jalr	-80(ra) # 20014924 <core::panicking::panic_fmt>
	...

2001497e <core::panicking::panic_bounds_check>:
2001497e:	7139                	add	sp,sp,-64
20014980:	de06                	sw	ra,60(sp)
20014982:	c62a                	sw	a0,12(sp)
20014984:	c82e                	sw	a1,16(sp)
20014986:	0808                	add	a0,sp,16
20014988:	d62a                	sw	a0,44(sp)
2001498a:	20015537          	lui	a0,0x20015
2001498e:	3e050513          	add	a0,a0,992 # 200153e0 <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt>
20014992:	d82a                	sw	a0,48(sp)
20014994:	006c                	add	a1,sp,12
20014996:	da2e                	sw	a1,52(sp)
20014998:	dc2a                	sw	a0,56(sp)
2001499a:	20017537          	lui	a0,0x20017
2001499e:	a5850513          	add	a0,a0,-1448 # 20016a58 <.Lanon.0b3f1f583507122567b66d8a7d95b554.266>
200149a2:	ca2a                	sw	a0,20(sp)
200149a4:	4509                	li	a0,2
200149a6:	cc2a                	sw	a0,24(sp)
200149a8:	d202                	sw	zero,36(sp)
200149aa:	106c                	add	a1,sp,44
200149ac:	ce2e                	sw	a1,28(sp)
200149ae:	d02a                	sw	a0,32(sp)
200149b0:	0848                	add	a0,sp,20
200149b2:	85b2                	mv	a1,a2
200149b4:	00000097          	auipc	ra,0x0
200149b8:	f70080e7          	jalr	-144(ra) # 20014924 <core::panicking::panic_fmt>
	...

200149be <core::fmt::write>:
200149be:	715d                	add	sp,sp,-80
200149c0:	c686                	sw	ra,76(sp)
200149c2:	c4a2                	sw	s0,72(sp)
200149c4:	c2a6                	sw	s1,68(sp)
200149c6:	c0ca                	sw	s2,64(sp)
200149c8:	de4e                	sw	s3,60(sp)
200149ca:	dc52                	sw	s4,56(sp)
200149cc:	da56                	sw	s5,52(sp)
200149ce:	d85a                	sw	s6,48(sp)
200149d0:	d65e                	sw	s7,44(sp)
200149d2:	89b2                	mv	s3,a2
200149d4:	d202                	sw	zero,36(sp)
200149d6:	02000613          	li	a2,32
200149da:	cc32                	sw	a2,24(sp)
200149dc:	460d                	li	a2,3
200149de:	02c10423          	sb	a2,40(sp)
200149e2:	0109a483          	lw	s1,16(s3)
200149e6:	c402                	sw	zero,8(sp)
200149e8:	c802                	sw	zero,16(sp)
200149ea:	ce2a                	sw	a0,28(sp)
200149ec:	d02e                	sw	a1,32(sp)
200149ee:	cccd                	beqz	s1,20014aa8 <core::fmt::write+0xea>
200149f0:	0149aa83          	lw	s5,20(s3)
200149f4:	100a8463          	beqz	s5,20014afc <core::fmt::write+0x13e>
200149f8:	0009a403          	lw	s0,0(s3)
200149fc:	0089aa03          	lw	s4,8(s3)
20014a00:	fffa8513          	add	a0,s5,-1
20014a04:	0516                	sll	a0,a0,0x5
20014a06:	8115                	srl	a0,a0,0x5
20014a08:	00150913          	add	s2,a0,1
20014a0c:	0411                	add	s0,s0,4
20014a0e:	0a96                	sll	s5,s5,0x5
20014a10:	04c1                	add	s1,s1,16
20014a12:	4b05                	li	s6,1
20014a14:	20014537          	lui	a0,0x20014
20014a18:	7b850b93          	add	s7,a0,1976 # 200147b8 <core::ops::function::FnOnce::call_once>
20014a1c:	4010                	lw	a2,0(s0)
20014a1e:	ca01                	beqz	a2,20014a2e <core::fmt::write+0x70>
20014a20:	5682                	lw	a3,32(sp)
20014a22:	4572                	lw	a0,28(sp)
20014a24:	ffc42583          	lw	a1,-4(s0)
20014a28:	46d4                	lw	a3,12(a3)
20014a2a:	9682                	jalr	a3
20014a2c:	e975                	bnez	a0,20014b20 <core::fmt::write+0x162>
20014a2e:	4088                	lw	a0,0(s1)
20014a30:	cc2a                	sw	a0,24(sp)
20014a32:	00c4c503          	lbu	a0,12(s1)
20014a36:	02a10423          	sb	a0,40(sp)
20014a3a:	4488                	lw	a0,8(s1)
20014a3c:	d22a                	sw	a0,36(sp)
20014a3e:	ff84a583          	lw	a1,-8(s1)
20014a42:	ffc4a503          	lw	a0,-4(s1)
20014a46:	cd81                	beqz	a1,20014a5e <core::fmt::write+0xa0>
20014a48:	01659763          	bne	a1,s6,20014a56 <core::fmt::write+0x98>
20014a4c:	050e                	sll	a0,a0,0x3
20014a4e:	9552                	add	a0,a0,s4
20014a50:	414c                	lw	a1,4(a0)
20014a52:	01758463          	beq	a1,s7,20014a5a <core::fmt::write+0x9c>
20014a56:	4581                	li	a1,0
20014a58:	a021                	j	20014a60 <core::fmt::write+0xa2>
20014a5a:	4108                	lw	a0,0(a0)
20014a5c:	4108                	lw	a0,0(a0)
20014a5e:	4585                	li	a1,1
20014a60:	c42e                	sw	a1,8(sp)
20014a62:	c62a                	sw	a0,12(sp)
20014a64:	ff04a583          	lw	a1,-16(s1)
20014a68:	ff44a503          	lw	a0,-12(s1)
20014a6c:	cd81                	beqz	a1,20014a84 <core::fmt::write+0xc6>
20014a6e:	01659763          	bne	a1,s6,20014a7c <core::fmt::write+0xbe>
20014a72:	050e                	sll	a0,a0,0x3
20014a74:	9552                	add	a0,a0,s4
20014a76:	414c                	lw	a1,4(a0)
20014a78:	01758463          	beq	a1,s7,20014a80 <core::fmt::write+0xc2>
20014a7c:	4581                	li	a1,0
20014a7e:	a021                	j	20014a86 <core::fmt::write+0xc8>
20014a80:	4108                	lw	a0,0(a0)
20014a82:	4108                	lw	a0,0(a0)
20014a84:	4585                	li	a1,1
20014a86:	c82e                	sw	a1,16(sp)
20014a88:	ca2a                	sw	a0,20(sp)
20014a8a:	40c8                	lw	a0,4(s1)
20014a8c:	050e                	sll	a0,a0,0x3
20014a8e:	9552                	add	a0,a0,s4
20014a90:	4150                	lw	a2,4(a0)
20014a92:	4108                	lw	a0,0(a0)
20014a94:	002c                	add	a1,sp,8
20014a96:	9602                	jalr	a2
20014a98:	e541                	bnez	a0,20014b20 <core::fmt::write+0x162>
20014a9a:	0421                	add	s0,s0,8
20014a9c:	1a81                	add	s5,s5,-32
20014a9e:	02048493          	add	s1,s1,32
20014aa2:	f60a9de3          	bnez	s5,20014a1c <core::fmt::write+0x5e>
20014aa6:	a0b1                	j	20014af2 <core::fmt::write+0x134>
20014aa8:	00c9aa03          	lw	s4,12(s3)
20014aac:	040a0863          	beqz	s4,20014afc <core::fmt::write+0x13e>
20014ab0:	0089a483          	lw	s1,8(s3)
20014ab4:	0009a403          	lw	s0,0(s3)
20014ab8:	fffa0513          	add	a0,s4,-1
20014abc:	050e                	sll	a0,a0,0x3
20014abe:	810d                	srl	a0,a0,0x3
20014ac0:	00150913          	add	s2,a0,1
20014ac4:	0411                	add	s0,s0,4
20014ac6:	0a0e                	sll	s4,s4,0x3
20014ac8:	0491                	add	s1,s1,4
20014aca:	4010                	lw	a2,0(s0)
20014acc:	ca01                	beqz	a2,20014adc <core::fmt::write+0x11e>
20014ace:	5682                	lw	a3,32(sp)
20014ad0:	4572                	lw	a0,28(sp)
20014ad2:	ffc42583          	lw	a1,-4(s0)
20014ad6:	46d4                	lw	a3,12(a3)
20014ad8:	9682                	jalr	a3
20014ada:	e139                	bnez	a0,20014b20 <core::fmt::write+0x162>
20014adc:	4090                	lw	a2,0(s1)
20014ade:	ffc4a503          	lw	a0,-4(s1)
20014ae2:	002c                	add	a1,sp,8
20014ae4:	9602                	jalr	a2
20014ae6:	ed0d                	bnez	a0,20014b20 <core::fmt::write+0x162>
20014ae8:	0421                	add	s0,s0,8
20014aea:	1a61                	add	s4,s4,-8
20014aec:	04a1                	add	s1,s1,8
20014aee:	fc0a1ee3          	bnez	s4,20014aca <core::fmt::write+0x10c>
20014af2:	0049a503          	lw	a0,4(s3)
20014af6:	00a96863          	bltu	s2,a0,20014b06 <core::fmt::write+0x148>
20014afa:	a02d                	j	20014b24 <core::fmt::write+0x166>
20014afc:	4901                	li	s2,0
20014afe:	0049a503          	lw	a0,4(s3)
20014b02:	02a07163          	bgeu	zero,a0,20014b24 <core::fmt::write+0x166>
20014b06:	0009a503          	lw	a0,0(s3)
20014b0a:	090e                	sll	s2,s2,0x3
20014b0c:	992a                	add	s2,s2,a0
20014b0e:	5682                	lw	a3,32(sp)
20014b10:	4572                	lw	a0,28(sp)
20014b12:	00092583          	lw	a1,0(s2)
20014b16:	00492603          	lw	a2,4(s2)
20014b1a:	46d4                	lw	a3,12(a3)
20014b1c:	9682                	jalr	a3
20014b1e:	c119                	beqz	a0,20014b24 <core::fmt::write+0x166>
20014b20:	4505                	li	a0,1
20014b22:	a011                	j	20014b26 <core::fmt::write+0x168>
20014b24:	4501                	li	a0,0
20014b26:	40b6                	lw	ra,76(sp)
20014b28:	4426                	lw	s0,72(sp)
20014b2a:	4496                	lw	s1,68(sp)
20014b2c:	4906                	lw	s2,64(sp)
20014b2e:	59f2                	lw	s3,60(sp)
20014b30:	5a62                	lw	s4,56(sp)
20014b32:	5ad2                	lw	s5,52(sp)
20014b34:	5b42                	lw	s6,48(sp)
20014b36:	5bb2                	lw	s7,44(sp)
20014b38:	6161                	add	sp,sp,80
20014b3a:	8082                	ret

20014b3c <core::fmt::Formatter::pad_integral>:
20014b3c:	7139                	add	sp,sp,-64
20014b3e:	de06                	sw	ra,60(sp)
20014b40:	dc22                	sw	s0,56(sp)
20014b42:	da26                	sw	s1,52(sp)
20014b44:	d84a                	sw	s2,48(sp)
20014b46:	d64e                	sw	s3,44(sp)
20014b48:	d452                	sw	s4,40(sp)
20014b4a:	d256                	sw	s5,36(sp)
20014b4c:	d05a                	sw	s6,32(sp)
20014b4e:	ce5e                	sw	s7,28(sp)
20014b50:	cc62                	sw	s8,24(sp)
20014b52:	ca66                	sw	s9,20(sp)
20014b54:	c86a                	sw	s10,16(sp)
20014b56:	c66e                	sw	s11,12(sp)
20014b58:	89be                	mv	s3,a5
20014b5a:	893a                	mv	s2,a4
20014b5c:	8b36                	mv	s6,a3
20014b5e:	8a32                	mv	s4,a2
20014b60:	8c2a                	mv	s8,a0
20014b62:	c1b1                	beqz	a1,20014ba6 <core::fmt::Formatter::pad_integral+0x6a>
20014b64:	01cc2403          	lw	s0,28(s8)
20014b68:	00147c93          	and	s9,s0,1
20014b6c:	00110ab7          	lui	s5,0x110
20014b70:	000c8463          	beqz	s9,20014b78 <core::fmt::Formatter::pad_integral+0x3c>
20014b74:	02b00a93          	li	s5,43
20014b78:	9cce                	add	s9,s9,s3
20014b7a:	00447513          	and	a0,s0,4
20014b7e:	cd0d                	beqz	a0,20014bb8 <core::fmt::Formatter::pad_integral+0x7c>
20014b80:	4541                	li	a0,16
20014b82:	04ab7063          	bgeu	s6,a0,20014bc2 <core::fmt::Formatter::pad_integral+0x86>
20014b86:	4501                	li	a0,0
20014b88:	040b0363          	beqz	s6,20014bce <core::fmt::Formatter::pad_integral+0x92>
20014b8c:	85d2                	mv	a1,s4
20014b8e:	865a                	mv	a2,s6
20014b90:	00058683          	lb	a3,0(a1)
20014b94:	fc06a693          	slti	a3,a3,-64
20014b98:	0016c693          	xor	a3,a3,1
20014b9c:	9536                	add	a0,a0,a3
20014b9e:	167d                	add	a2,a2,-1
20014ba0:	0585                	add	a1,a1,1
20014ba2:	f67d                	bnez	a2,20014b90 <core::fmt::Formatter::pad_integral+0x54>
20014ba4:	a02d                	j	20014bce <core::fmt::Formatter::pad_integral+0x92>
20014ba6:	01cc2403          	lw	s0,28(s8)
20014baa:	00198c93          	add	s9,s3,1
20014bae:	02d00a93          	li	s5,45
20014bb2:	00447513          	and	a0,s0,4
20014bb6:	f569                	bnez	a0,20014b80 <core::fmt::Formatter::pad_integral+0x44>
20014bb8:	4a01                	li	s4,0
20014bba:	000c2503          	lw	a0,0(s8)
20014bbe:	ed01                	bnez	a0,20014bd6 <core::fmt::Formatter::pad_integral+0x9a>
20014bc0:	a815                	j	20014bf4 <core::fmt::Formatter::pad_integral+0xb8>
20014bc2:	8552                	mv	a0,s4
20014bc4:	85da                	mv	a1,s6
20014bc6:	00000097          	auipc	ra,0x0
20014bca:	4be080e7          	jalr	1214(ra) # 20015084 <core::str::count::do_count_chars>
20014bce:	9caa                	add	s9,s9,a0
20014bd0:	000c2503          	lw	a0,0(s8)
20014bd4:	c105                	beqz	a0,20014bf4 <core::fmt::Formatter::pad_integral+0xb8>
20014bd6:	004c2d03          	lw	s10,4(s8)
20014bda:	01acfd63          	bgeu	s9,s10,20014bf4 <core::fmt::Formatter::pad_integral+0xb8>
20014bde:	8821                	and	s0,s0,8
20014be0:	ec25                	bnez	s0,20014c58 <core::fmt::Formatter::pad_integral+0x11c>
20014be2:	020c4503          	lbu	a0,32(s8)
20014be6:	4585                	li	a1,1
20014be8:	419d0cb3          	sub	s9,s10,s9
20014bec:	0aa5cd63          	blt	a1,a0,20014ca6 <core::fmt::Formatter::pad_integral+0x16a>
20014bf0:	e561                	bnez	a0,20014cb8 <core::fmt::Formatter::pad_integral+0x17c>
20014bf2:	a0e9                	j	20014cbc <core::fmt::Formatter::pad_integral+0x180>
20014bf4:	014c2403          	lw	s0,20(s8)
20014bf8:	018c2483          	lw	s1,24(s8)
20014bfc:	8522                	mv	a0,s0
20014bfe:	85a6                	mv	a1,s1
20014c00:	8656                	mv	a2,s5
20014c02:	86d2                	mv	a3,s4
20014c04:	875a                	mv	a4,s6
20014c06:	00000097          	auipc	ra,0x0
20014c0a:	140080e7          	jalr	320(ra) # 20014d46 <core::fmt::Formatter::pad_integral::write_prefix>
20014c0e:	4b85                	li	s7,1
20014c10:	c10d                	beqz	a0,20014c32 <core::fmt::Formatter::pad_integral+0xf6>
20014c12:	855e                	mv	a0,s7
20014c14:	50f2                	lw	ra,60(sp)
20014c16:	5462                	lw	s0,56(sp)
20014c18:	54d2                	lw	s1,52(sp)
20014c1a:	5942                	lw	s2,48(sp)
20014c1c:	59b2                	lw	s3,44(sp)
20014c1e:	5a22                	lw	s4,40(sp)
20014c20:	5a92                	lw	s5,36(sp)
20014c22:	5b02                	lw	s6,32(sp)
20014c24:	4bf2                	lw	s7,28(sp)
20014c26:	4c62                	lw	s8,24(sp)
20014c28:	4cd2                	lw	s9,20(sp)
20014c2a:	4d42                	lw	s10,16(sp)
20014c2c:	4db2                	lw	s11,12(sp)
20014c2e:	6121                	add	sp,sp,64
20014c30:	8082                	ret
20014c32:	44dc                	lw	a5,12(s1)
20014c34:	8522                	mv	a0,s0
20014c36:	85ca                	mv	a1,s2
20014c38:	864e                	mv	a2,s3
20014c3a:	50f2                	lw	ra,60(sp)
20014c3c:	5462                	lw	s0,56(sp)
20014c3e:	54d2                	lw	s1,52(sp)
20014c40:	5942                	lw	s2,48(sp)
20014c42:	59b2                	lw	s3,44(sp)
20014c44:	5a22                	lw	s4,40(sp)
20014c46:	5a92                	lw	s5,36(sp)
20014c48:	5b02                	lw	s6,32(sp)
20014c4a:	4bf2                	lw	s7,28(sp)
20014c4c:	4c62                	lw	s8,24(sp)
20014c4e:	4cd2                	lw	s9,20(sp)
20014c50:	4d42                	lw	s10,16(sp)
20014c52:	4db2                	lw	s11,12(sp)
20014c54:	6121                	add	sp,sp,64
20014c56:	8782                	jr	a5
20014c58:	010c2403          	lw	s0,16(s8)
20014c5c:	03000513          	li	a0,48
20014c60:	020c4583          	lbu	a1,32(s8)
20014c64:	c42e                	sw	a1,8(sp)
20014c66:	014c2d83          	lw	s11,20(s8)
20014c6a:	018c2483          	lw	s1,24(s8)
20014c6e:	00ac2823          	sw	a0,16(s8)
20014c72:	4b85                	li	s7,1
20014c74:	037c0023          	sb	s7,32(s8)
20014c78:	856e                	mv	a0,s11
20014c7a:	85a6                	mv	a1,s1
20014c7c:	8656                	mv	a2,s5
20014c7e:	86d2                	mv	a3,s4
20014c80:	875a                	mv	a4,s6
20014c82:	00000097          	auipc	ra,0x0
20014c86:	0c4080e7          	jalr	196(ra) # 20014d46 <core::fmt::Formatter::pad_integral::write_prefix>
20014c8a:	f541                	bnez	a0,20014c12 <core::fmt::Formatter::pad_integral+0xd6>
20014c8c:	8a22                	mv	s4,s0
20014c8e:	419d0433          	sub	s0,s10,s9
20014c92:	0405                	add	s0,s0,1
20014c94:	147d                	add	s0,s0,-1
20014c96:	c451                	beqz	s0,20014d22 <core::fmt::Formatter::pad_integral+0x1e6>
20014c98:	4890                	lw	a2,16(s1)
20014c9a:	03000593          	li	a1,48
20014c9e:	856e                	mv	a0,s11
20014ca0:	9602                	jalr	a2
20014ca2:	d96d                	beqz	a0,20014c94 <core::fmt::Formatter::pad_integral+0x158>
20014ca4:	b7bd                	j	20014c12 <core::fmt::Formatter::pad_integral+0xd6>
20014ca6:	4589                	li	a1,2
20014ca8:	00b51863          	bne	a0,a1,20014cb8 <core::fmt::Formatter::pad_integral+0x17c>
20014cac:	001cd513          	srl	a0,s9,0x1
20014cb0:	0c85                	add	s9,s9,1
20014cb2:	001cdc93          	srl	s9,s9,0x1
20014cb6:	a019                	j	20014cbc <core::fmt::Formatter::pad_integral+0x180>
20014cb8:	8566                	mv	a0,s9
20014cba:	4c81                	li	s9,0
20014cbc:	014c2d03          	lw	s10,20(s8)
20014cc0:	018c2483          	lw	s1,24(s8)
20014cc4:	010c2c03          	lw	s8,16(s8)
20014cc8:	00150413          	add	s0,a0,1
20014ccc:	147d                	add	s0,s0,-1
20014cce:	c801                	beqz	s0,20014cde <core::fmt::Formatter::pad_integral+0x1a2>
20014cd0:	4890                	lw	a2,16(s1)
20014cd2:	856a                	mv	a0,s10
20014cd4:	85e2                	mv	a1,s8
20014cd6:	9602                	jalr	a2
20014cd8:	d975                	beqz	a0,20014ccc <core::fmt::Formatter::pad_integral+0x190>
20014cda:	4b85                	li	s7,1
20014cdc:	bf1d                	j	20014c12 <core::fmt::Formatter::pad_integral+0xd6>
20014cde:	856a                	mv	a0,s10
20014ce0:	85a6                	mv	a1,s1
20014ce2:	8656                	mv	a2,s5
20014ce4:	86d2                	mv	a3,s4
20014ce6:	875a                	mv	a4,s6
20014ce8:	00000097          	auipc	ra,0x0
20014cec:	05e080e7          	jalr	94(ra) # 20014d46 <core::fmt::Formatter::pad_integral::write_prefix>
20014cf0:	4b85                	li	s7,1
20014cf2:	f105                	bnez	a0,20014c12 <core::fmt::Formatter::pad_integral+0xd6>
20014cf4:	44d4                	lw	a3,12(s1)
20014cf6:	856a                	mv	a0,s10
20014cf8:	85ca                	mv	a1,s2
20014cfa:	864e                	mv	a2,s3
20014cfc:	9682                	jalr	a3
20014cfe:	f911                	bnez	a0,20014c12 <core::fmt::Formatter::pad_integral+0xd6>
20014d00:	41900933          	neg	s2,s9
20014d04:	59fd                	li	s3,-1
20014d06:	547d                	li	s0,-1
20014d08:	00890533          	add	a0,s2,s0
20014d0c:	03350963          	beq	a0,s3,20014d3e <core::fmt::Formatter::pad_integral+0x202>
20014d10:	4890                	lw	a2,16(s1)
20014d12:	856a                	mv	a0,s10
20014d14:	85e2                	mv	a1,s8
20014d16:	9602                	jalr	a2
20014d18:	0405                	add	s0,s0,1
20014d1a:	d57d                	beqz	a0,20014d08 <core::fmt::Formatter::pad_integral+0x1cc>
20014d1c:	01943bb3          	sltu	s7,s0,s9
20014d20:	bdcd                	j	20014c12 <core::fmt::Formatter::pad_integral+0xd6>
20014d22:	44d4                	lw	a3,12(s1)
20014d24:	856e                	mv	a0,s11
20014d26:	85ca                	mv	a1,s2
20014d28:	864e                	mv	a2,s3
20014d2a:	9682                	jalr	a3
20014d2c:	ee0513e3          	bnez	a0,20014c12 <core::fmt::Formatter::pad_integral+0xd6>
20014d30:	4b81                	li	s7,0
20014d32:	014c2823          	sw	s4,16(s8)
20014d36:	4522                	lw	a0,8(sp)
20014d38:	02ac0023          	sb	a0,32(s8)
20014d3c:	bdd9                	j	20014c12 <core::fmt::Formatter::pad_integral+0xd6>
20014d3e:	8466                	mv	s0,s9
20014d40:	019cbbb3          	sltu	s7,s9,s9
20014d44:	b5f9                	j	20014c12 <core::fmt::Formatter::pad_integral+0xd6>

20014d46 <core::fmt::Formatter::pad_integral::write_prefix>:
20014d46:	1101                	add	sp,sp,-32
20014d48:	ce06                	sw	ra,28(sp)
20014d4a:	cc22                	sw	s0,24(sp)
20014d4c:	ca26                	sw	s1,20(sp)
20014d4e:	c84a                	sw	s2,16(sp)
20014d50:	c64e                	sw	s3,12(sp)
20014d52:	001107b7          	lui	a5,0x110
20014d56:	893a                	mv	s2,a4
20014d58:	84b6                	mv	s1,a3
20014d5a:	842e                	mv	s0,a1
20014d5c:	89aa                	mv	s3,a0
20014d5e:	00f60963          	beq	a2,a5,20014d70 <core::fmt::Formatter::pad_integral::write_prefix+0x2a>
20014d62:	4814                	lw	a3,16(s0)
20014d64:	854e                	mv	a0,s3
20014d66:	85b2                	mv	a1,a2
20014d68:	9682                	jalr	a3
20014d6a:	85aa                	mv	a1,a0
20014d6c:	4505                	li	a0,1
20014d6e:	ed91                	bnez	a1,20014d8a <core::fmt::Formatter::pad_integral::write_prefix+0x44>
20014d70:	cc81                	beqz	s1,20014d88 <core::fmt::Formatter::pad_integral::write_prefix+0x42>
20014d72:	445c                	lw	a5,12(s0)
20014d74:	854e                	mv	a0,s3
20014d76:	85a6                	mv	a1,s1
20014d78:	864a                	mv	a2,s2
20014d7a:	40f2                	lw	ra,28(sp)
20014d7c:	4462                	lw	s0,24(sp)
20014d7e:	44d2                	lw	s1,20(sp)
20014d80:	4942                	lw	s2,16(sp)
20014d82:	49b2                	lw	s3,12(sp)
20014d84:	6105                	add	sp,sp,32
20014d86:	8782                	jr	a5
20014d88:	4501                	li	a0,0
20014d8a:	40f2                	lw	ra,28(sp)
20014d8c:	4462                	lw	s0,24(sp)
20014d8e:	44d2                	lw	s1,20(sp)
20014d90:	4942                	lw	s2,16(sp)
20014d92:	49b2                	lw	s3,12(sp)
20014d94:	6105                	add	sp,sp,32
20014d96:	8082                	ret

20014d98 <core::fmt::Formatter::pad>:
20014d98:	1101                	add	sp,sp,-32
20014d9a:	ce06                	sw	ra,28(sp)
20014d9c:	cc22                	sw	s0,24(sp)
20014d9e:	ca26                	sw	s1,20(sp)
20014da0:	c84a                	sw	s2,16(sp)
20014da2:	c64e                	sw	s3,12(sp)
20014da4:	c452                	sw	s4,8(sp)
20014da6:	c256                	sw	s5,4(sp)
20014da8:	c05a                	sw	s6,0(sp)
20014daa:	8b2a                	mv	s6,a0
20014dac:	00052283          	lw	t0,0(a0)
20014db0:	4508                	lw	a0,8(a0)
20014db2:	00a2e6b3          	or	a3,t0,a0
20014db6:	89b2                	mv	s3,a2
20014db8:	892e                	mv	s2,a1
20014dba:	16068763          	beqz	a3,20014f28 <core::fmt::Formatter::pad+0x190>
20014dbe:	10050963          	beqz	a0,20014ed0 <core::fmt::Formatter::pad+0x138>
20014dc2:	00cb2703          	lw	a4,12(s6)
20014dc6:	4501                	li	a0,0
20014dc8:	013906b3          	add	a3,s2,s3
20014dcc:	0705                	add	a4,a4,1
20014dce:	00110337          	lui	t1,0x110
20014dd2:	0df00893          	li	a7,223
20014dd6:	0f000813          	li	a6,240
20014dda:	864a                	mv	a2,s2
20014ddc:	a801                	j	20014dec <core::fmt::Formatter::pad+0x54>
20014dde:	00160593          	add	a1,a2,1
20014de2:	8d11                	sub	a0,a0,a2
20014de4:	952e                	add	a0,a0,a1
20014de6:	862e                	mv	a2,a1
20014de8:	0e640463          	beq	s0,t1,20014ed0 <core::fmt::Formatter::pad+0x138>
20014dec:	177d                	add	a4,a4,-1
20014dee:	c725                	beqz	a4,20014e56 <core::fmt::Formatter::pad+0xbe>
20014df0:	0ed60063          	beq	a2,a3,20014ed0 <core::fmt::Formatter::pad+0x138>
20014df4:	00060583          	lb	a1,0(a2)
20014df8:	0ff5f413          	zext.b	s0,a1
20014dfc:	fe05d1e3          	bgez	a1,20014dde <core::fmt::Formatter::pad+0x46>
20014e00:	00164583          	lbu	a1,1(a2)
20014e04:	01f47493          	and	s1,s0,31
20014e08:	03f5f793          	and	a5,a1,63
20014e0c:	0288f963          	bgeu	a7,s0,20014e3e <core::fmt::Formatter::pad+0xa6>
20014e10:	00264583          	lbu	a1,2(a2)
20014e14:	079a                	sll	a5,a5,0x6
20014e16:	03f5f593          	and	a1,a1,63
20014e1a:	8fcd                	or	a5,a5,a1
20014e1c:	03046763          	bltu	s0,a6,20014e4a <core::fmt::Formatter::pad+0xb2>
20014e20:	00364583          	lbu	a1,3(a2)
20014e24:	04f6                	sll	s1,s1,0x1d
20014e26:	80ad                	srl	s1,s1,0xb
20014e28:	079a                	sll	a5,a5,0x6
20014e2a:	03f5f593          	and	a1,a1,63
20014e2e:	8ddd                	or	a1,a1,a5
20014e30:	0095e433          	or	s0,a1,s1
20014e34:	08640e63          	beq	s0,t1,20014ed0 <core::fmt::Formatter::pad+0x138>
20014e38:	00460593          	add	a1,a2,4
20014e3c:	b75d                	j	20014de2 <core::fmt::Formatter::pad+0x4a>
20014e3e:	00260593          	add	a1,a2,2
20014e42:	00649413          	sll	s0,s1,0x6
20014e46:	8c5d                	or	s0,s0,a5
20014e48:	bf69                	j	20014de2 <core::fmt::Formatter::pad+0x4a>
20014e4a:	00360593          	add	a1,a2,3
20014e4e:	00c49413          	sll	s0,s1,0xc
20014e52:	8c5d                	or	s0,s0,a5
20014e54:	b779                	j	20014de2 <core::fmt::Formatter::pad+0x4a>
20014e56:	06d60d63          	beq	a2,a3,20014ed0 <core::fmt::Formatter::pad+0x138>
20014e5a:	00060583          	lb	a1,0(a2)
20014e5e:	0405d363          	bgez	a1,20014ea4 <core::fmt::Formatter::pad+0x10c>
20014e62:	0ff5f593          	zext.b	a1,a1
20014e66:	0e000693          	li	a3,224
20014e6a:	02d5ed63          	bltu	a1,a3,20014ea4 <core::fmt::Formatter::pad+0x10c>
20014e6e:	0f000693          	li	a3,240
20014e72:	02d5e963          	bltu	a1,a3,20014ea4 <core::fmt::Formatter::pad+0x10c>
20014e76:	00164683          	lbu	a3,1(a2)
20014e7a:	00264703          	lbu	a4,2(a2)
20014e7e:	03f6f693          	and	a3,a3,63
20014e82:	03f77713          	and	a4,a4,63
20014e86:	00364603          	lbu	a2,3(a2)
20014e8a:	05f6                	sll	a1,a1,0x1d
20014e8c:	81ad                	srl	a1,a1,0xb
20014e8e:	06b2                	sll	a3,a3,0xc
20014e90:	071a                	sll	a4,a4,0x6
20014e92:	8ed9                	or	a3,a3,a4
20014e94:	03f67613          	and	a2,a2,63
20014e98:	8e55                	or	a2,a2,a3
20014e9a:	8dd1                	or	a1,a1,a2
20014e9c:	00110637          	lui	a2,0x110
20014ea0:	02c58863          	beq	a1,a2,20014ed0 <core::fmt::Formatter::pad+0x138>
20014ea4:	c10d                	beqz	a0,20014ec6 <core::fmt::Formatter::pad+0x12e>
20014ea6:	01357e63          	bgeu	a0,s3,20014ec2 <core::fmt::Formatter::pad+0x12a>
20014eaa:	00a905b3          	add	a1,s2,a0
20014eae:	00058583          	lb	a1,0(a1)
20014eb2:	fc000613          	li	a2,-64
20014eb6:	00c5d863          	bge	a1,a2,20014ec6 <core::fmt::Formatter::pad+0x12e>
20014eba:	4581                	li	a1,0
20014ebc:	00001863          	bnez	zero,20014ecc <core::fmt::Formatter::pad+0x134>
20014ec0:	a801                	j	20014ed0 <core::fmt::Formatter::pad+0x138>
20014ec2:	ff351ce3          	bne	a0,s3,20014eba <core::fmt::Formatter::pad+0x122>
20014ec6:	85ca                	mv	a1,s2
20014ec8:	00090463          	beqz	s2,20014ed0 <core::fmt::Formatter::pad+0x138>
20014ecc:	89aa                	mv	s3,a0
20014ece:	892e                	mv	s2,a1
20014ed0:	04028c63          	beqz	t0,20014f28 <core::fmt::Formatter::pad+0x190>
20014ed4:	004b2403          	lw	s0,4(s6)
20014ed8:	4541                	li	a0,16
20014eda:	02a9ff63          	bgeu	s3,a0,20014f18 <core::fmt::Formatter::pad+0x180>
20014ede:	4501                	li	a0,0
20014ee0:	00098e63          	beqz	s3,20014efc <core::fmt::Formatter::pad+0x164>
20014ee4:	85ca                	mv	a1,s2
20014ee6:	864e                	mv	a2,s3
20014ee8:	00058683          	lb	a3,0(a1)
20014eec:	fc06a693          	slti	a3,a3,-64
20014ef0:	0016c693          	xor	a3,a3,1
20014ef4:	9536                	add	a0,a0,a3
20014ef6:	167d                	add	a2,a2,-1 # 10ffff <.Lline_table_start2+0xcf1e7>
20014ef8:	0585                	add	a1,a1,1
20014efa:	f67d                	bnez	a2,20014ee8 <core::fmt::Formatter::pad+0x150>
20014efc:	02857663          	bgeu	a0,s0,20014f28 <core::fmt::Formatter::pad+0x190>
20014f00:	020b4603          	lbu	a2,32(s6)
20014f04:	4581                	li	a1,0
20014f06:	4685                	li	a3,1
20014f08:	40a40a33          	sub	s4,s0,a0
20014f0c:	02c6cf63          	blt	a3,a2,20014f4a <core::fmt::Formatter::pad+0x1b2>
20014f10:	c629                	beqz	a2,20014f5a <core::fmt::Formatter::pad+0x1c2>
20014f12:	85d2                	mv	a1,s4
20014f14:	4a01                	li	s4,0
20014f16:	a091                	j	20014f5a <core::fmt::Formatter::pad+0x1c2>
20014f18:	854a                	mv	a0,s2
20014f1a:	85ce                	mv	a1,s3
20014f1c:	00000097          	auipc	ra,0x0
20014f20:	168080e7          	jalr	360(ra) # 20015084 <core::str::count::do_count_chars>
20014f24:	fc856ee3          	bltu	a0,s0,20014f00 <core::fmt::Formatter::pad+0x168>
20014f28:	018b2583          	lw	a1,24(s6)
20014f2c:	014b2503          	lw	a0,20(s6)
20014f30:	45dc                	lw	a5,12(a1)
20014f32:	85ca                	mv	a1,s2
20014f34:	864e                	mv	a2,s3
20014f36:	40f2                	lw	ra,28(sp)
20014f38:	4462                	lw	s0,24(sp)
20014f3a:	44d2                	lw	s1,20(sp)
20014f3c:	4942                	lw	s2,16(sp)
20014f3e:	49b2                	lw	s3,12(sp)
20014f40:	4a22                	lw	s4,8(sp)
20014f42:	4a92                	lw	s5,4(sp)
20014f44:	4b02                	lw	s6,0(sp)
20014f46:	6105                	add	sp,sp,32
20014f48:	8782                	jr	a5
20014f4a:	4509                	li	a0,2
20014f4c:	00a61763          	bne	a2,a0,20014f5a <core::fmt::Formatter::pad+0x1c2>
20014f50:	001a5593          	srl	a1,s4,0x1
20014f54:	0a05                	add	s4,s4,1
20014f56:	001a5a13          	srl	s4,s4,0x1
20014f5a:	014b2a83          	lw	s5,20(s6)
20014f5e:	018b2403          	lw	s0,24(s6)
20014f62:	010b2b03          	lw	s6,16(s6)
20014f66:	00158493          	add	s1,a1,1
20014f6a:	14fd                	add	s1,s1,-1
20014f6c:	c881                	beqz	s1,20014f7c <core::fmt::Formatter::pad+0x1e4>
20014f6e:	4810                	lw	a2,16(s0)
20014f70:	8556                	mv	a0,s5
20014f72:	85da                	mv	a1,s6
20014f74:	9602                	jalr	a2
20014f76:	d975                	beqz	a0,20014f6a <core::fmt::Formatter::pad+0x1d2>
20014f78:	4505                	li	a0,1
20014f7a:	a81d                	j	20014fb0 <core::fmt::Formatter::pad+0x218>
20014f7c:	4454                	lw	a3,12(s0)
20014f7e:	8556                	mv	a0,s5
20014f80:	85ca                	mv	a1,s2
20014f82:	864e                	mv	a2,s3
20014f84:	9682                	jalr	a3
20014f86:	85aa                	mv	a1,a0
20014f88:	4505                	li	a0,1
20014f8a:	e19d                	bnez	a1,20014fb0 <core::fmt::Formatter::pad+0x218>
20014f8c:	41400933          	neg	s2,s4
20014f90:	59fd                	li	s3,-1
20014f92:	54fd                	li	s1,-1
20014f94:	00990533          	add	a0,s2,s1
20014f98:	01350963          	beq	a0,s3,20014faa <core::fmt::Formatter::pad+0x212>
20014f9c:	4810                	lw	a2,16(s0)
20014f9e:	8556                	mv	a0,s5
20014fa0:	85da                	mv	a1,s6
20014fa2:	9602                	jalr	a2
20014fa4:	0485                	add	s1,s1,1
20014fa6:	d57d                	beqz	a0,20014f94 <core::fmt::Formatter::pad+0x1fc>
20014fa8:	a011                	j	20014fac <core::fmt::Formatter::pad+0x214>
20014faa:	84d2                	mv	s1,s4
20014fac:	0144b533          	sltu	a0,s1,s4
20014fb0:	40f2                	lw	ra,28(sp)
20014fb2:	4462                	lw	s0,24(sp)
20014fb4:	44d2                	lw	s1,20(sp)
20014fb6:	4942                	lw	s2,16(sp)
20014fb8:	49b2                	lw	s3,12(sp)
20014fba:	4a22                	lw	s4,8(sp)
20014fbc:	4a92                	lw	s5,4(sp)
20014fbe:	4b02                	lw	s6,0(sp)
20014fc0:	6105                	add	sp,sp,32
20014fc2:	8082                	ret

20014fc4 <core::slice::index::slice_start_index_len_fail>:
20014fc4:	7139                	add	sp,sp,-64
20014fc6:	de06                	sw	ra,60(sp)
20014fc8:	c62a                	sw	a0,12(sp)
20014fca:	c82e                	sw	a1,16(sp)
20014fcc:	0068                	add	a0,sp,12
20014fce:	d62a                	sw	a0,44(sp)
20014fd0:	20015537          	lui	a0,0x20015
20014fd4:	3e050513          	add	a0,a0,992 # 200153e0 <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt>
20014fd8:	d82a                	sw	a0,48(sp)
20014fda:	080c                	add	a1,sp,16
20014fdc:	da2e                	sw	a1,52(sp)
20014fde:	dc2a                	sw	a0,56(sp)
20014fe0:	20017537          	lui	a0,0x20017
20014fe4:	b9450513          	add	a0,a0,-1132 # 20016b94 <.Lanon.0b3f1f583507122567b66d8a7d95b554.346>
20014fe8:	ca2a                	sw	a0,20(sp)
20014fea:	4509                	li	a0,2
20014fec:	cc2a                	sw	a0,24(sp)
20014fee:	d202                	sw	zero,36(sp)
20014ff0:	106c                	add	a1,sp,44
20014ff2:	ce2e                	sw	a1,28(sp)
20014ff4:	d02a                	sw	a0,32(sp)
20014ff6:	0848                	add	a0,sp,20
20014ff8:	85b2                	mv	a1,a2
20014ffa:	00000097          	auipc	ra,0x0
20014ffe:	92a080e7          	jalr	-1750(ra) # 20014924 <core::panicking::panic_fmt>
	...

20015004 <core::slice::index::slice_end_index_len_fail>:
20015004:	7139                	add	sp,sp,-64
20015006:	de06                	sw	ra,60(sp)
20015008:	c62a                	sw	a0,12(sp)
2001500a:	c82e                	sw	a1,16(sp)
2001500c:	0068                	add	a0,sp,12
2001500e:	d62a                	sw	a0,44(sp)
20015010:	20015537          	lui	a0,0x20015
20015014:	3e050513          	add	a0,a0,992 # 200153e0 <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt>
20015018:	d82a                	sw	a0,48(sp)
2001501a:	080c                	add	a1,sp,16
2001501c:	da2e                	sw	a1,52(sp)
2001501e:	dc2a                	sw	a0,56(sp)
20015020:	20017537          	lui	a0,0x20017
20015024:	ba450513          	add	a0,a0,-1116 # 20016ba4 <.Lanon.0b3f1f583507122567b66d8a7d95b554.348>
20015028:	ca2a                	sw	a0,20(sp)
2001502a:	4509                	li	a0,2
2001502c:	cc2a                	sw	a0,24(sp)
2001502e:	d202                	sw	zero,36(sp)
20015030:	106c                	add	a1,sp,44
20015032:	ce2e                	sw	a1,28(sp)
20015034:	d02a                	sw	a0,32(sp)
20015036:	0848                	add	a0,sp,20
20015038:	85b2                	mv	a1,a2
2001503a:	00000097          	auipc	ra,0x0
2001503e:	8ea080e7          	jalr	-1814(ra) # 20014924 <core::panicking::panic_fmt>
	...

20015044 <core::slice::index::slice_index_order_fail>:
20015044:	7139                	add	sp,sp,-64
20015046:	de06                	sw	ra,60(sp)
20015048:	c62a                	sw	a0,12(sp)
2001504a:	c82e                	sw	a1,16(sp)
2001504c:	0068                	add	a0,sp,12
2001504e:	d62a                	sw	a0,44(sp)
20015050:	20015537          	lui	a0,0x20015
20015054:	3e050513          	add	a0,a0,992 # 200153e0 <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt>
20015058:	d82a                	sw	a0,48(sp)
2001505a:	080c                	add	a1,sp,16
2001505c:	da2e                	sw	a1,52(sp)
2001505e:	dc2a                	sw	a0,56(sp)
20015060:	20017537          	lui	a0,0x20017
20015064:	bd850513          	add	a0,a0,-1064 # 20016bd8 <.Lanon.0b3f1f583507122567b66d8a7d95b554.351>
20015068:	ca2a                	sw	a0,20(sp)
2001506a:	4509                	li	a0,2
2001506c:	cc2a                	sw	a0,24(sp)
2001506e:	d202                	sw	zero,36(sp)
20015070:	106c                	add	a1,sp,44
20015072:	ce2e                	sw	a1,28(sp)
20015074:	d02a                	sw	a0,32(sp)
20015076:	0848                	add	a0,sp,20
20015078:	85b2                	mv	a1,a2
2001507a:	00000097          	auipc	ra,0x0
2001507e:	8aa080e7          	jalr	-1878(ra) # 20014924 <core::panicking::panic_fmt>
	...

20015084 <core::str::count::do_count_chars>:
20015084:	862a                	mv	a2,a0
20015086:	00350793          	add	a5,a0,3
2001508a:	9bf1                	and	a5,a5,-4
2001508c:	40a788b3          	sub	a7,a5,a0
20015090:	1115e463          	bltu	a1,a7,20015198 <core::str::count::do_count_chars+0x114>
20015094:	41158833          	sub	a6,a1,a7
20015098:	00285293          	srl	t0,a6,0x2
2001509c:	0e028e63          	beqz	t0,20015198 <core::str::count::do_count_chars+0x114>
200150a0:	00387593          	and	a1,a6,3
200150a4:	4501                	li	a0,0
200150a6:	00c78f63          	beq	a5,a2,200150c4 <core::str::count::do_count_chars+0x40>
200150aa:	40f607b3          	sub	a5,a2,a5
200150ae:	8732                	mv	a4,a2
200150b0:	00070683          	lb	a3,0(a4)
200150b4:	fc06a693          	slti	a3,a3,-64
200150b8:	0016c693          	xor	a3,a3,1
200150bc:	9536                	add	a0,a0,a3
200150be:	0785                	add	a5,a5,1 # 110001 <.Lline_table_start2+0xcf1e9>
200150c0:	0705                	add	a4,a4,1
200150c2:	f7fd                	bnez	a5,200150b0 <core::str::count::do_count_chars+0x2c>
200150c4:	011606b3          	add	a3,a2,a7
200150c8:	4601                	li	a2,0
200150ca:	cd91                	beqz	a1,200150e6 <core::str::count::do_count_chars+0x62>
200150cc:	ffc87713          	and	a4,a6,-4
200150d0:	9736                	add	a4,a4,a3
200150d2:	00070783          	lb	a5,0(a4)
200150d6:	fc07a793          	slti	a5,a5,-64
200150da:	0017c793          	xor	a5,a5,1
200150de:	963e                	add	a2,a2,a5
200150e0:	15fd                	add	a1,a1,-1
200150e2:	0705                	add	a4,a4,1
200150e4:	f5fd                	bnez	a1,200150d2 <core::str::count::do_count_chars+0x4e>
200150e6:	010105b7          	lui	a1,0x1010
200150ea:	10158e93          	add	t4,a1,257 # 1010101 <.Lline_table_start2+0xfcf2e9>
200150ee:	00ff0737          	lui	a4,0xff0
200150f2:	0ff70893          	add	a7,a4,255 # ff00ff <.Lline_table_start2+0xfaf2e7>
200150f6:	6841                	lui	a6,0x10
200150f8:	0805                	add	a6,a6,1 # 10001 <.Lline_table_start0+0x581>
200150fa:	9532                	add	a0,a0,a2
200150fc:	a01d                	j	20015122 <core::str::count::do_count_chars+0x9e>
200150fe:	00239693          	sll	a3,t2,0x2
20015102:	969a                	add	a3,a3,t1
20015104:	407e02b3          	sub	t0,t3,t2
20015108:	0033f593          	and	a1,t2,3
2001510c:	01167733          	and	a4,a2,a7
20015110:	8221                	srl	a2,a2,0x8
20015112:	01167633          	and	a2,a2,a7
20015116:	963a                	add	a2,a2,a4
20015118:	03060633          	mul	a2,a2,a6
2001511c:	8241                	srl	a2,a2,0x10
2001511e:	9532                	add	a0,a0,a2
20015120:	e9c9                	bnez	a1,200151b2 <core::str::count::do_count_chars+0x12e>
20015122:	08028763          	beqz	t0,200151b0 <core::str::count::do_count_chars+0x12c>
20015126:	8e16                	mv	t3,t0
20015128:	8336                	mv	t1,a3
2001512a:	0c000613          	li	a2,192
2001512e:	8396                	mv	t2,t0
20015130:	00c2e463          	bltu	t0,a2,20015138 <core::str::count::do_count_chars+0xb4>
20015134:	0c000393          	li	t2,192
20015138:	4601                	li	a2,0
2001513a:	0023d693          	srl	a3,t2,0x2
2001513e:	d2e1                	beqz	a3,200150fe <core::str::count::do_count_chars+0x7a>
20015140:	0692                	sll	a3,a3,0x4
20015142:	00d302b3          	add	t0,t1,a3
20015146:	871a                	mv	a4,t1
20015148:	431c                	lw	a5,0(a4)
2001514a:	fff7c693          	not	a3,a5
2001514e:	829d                	srl	a3,a3,0x7
20015150:	8399                	srl	a5,a5,0x6
20015152:	434c                	lw	a1,4(a4)
20015154:	8edd                	or	a3,a3,a5
20015156:	01d6f6b3          	and	a3,a3,t4
2001515a:	9636                	add	a2,a2,a3
2001515c:	fff5c693          	not	a3,a1
20015160:	829d                	srl	a3,a3,0x7
20015162:	471c                	lw	a5,8(a4)
20015164:	8199                	srl	a1,a1,0x6
20015166:	8dd5                	or	a1,a1,a3
20015168:	01d5f5b3          	and	a1,a1,t4
2001516c:	fff7c693          	not	a3,a5
20015170:	829d                	srl	a3,a3,0x7
20015172:	8399                	srl	a5,a5,0x6
20015174:	8edd                	or	a3,a3,a5
20015176:	475c                	lw	a5,12(a4)
20015178:	01d6f6b3          	and	a3,a3,t4
2001517c:	95b6                	add	a1,a1,a3
2001517e:	95b2                	add	a1,a1,a2
20015180:	fff7c613          	not	a2,a5
20015184:	821d                	srl	a2,a2,0x7
20015186:	8399                	srl	a5,a5,0x6
20015188:	8e5d                	or	a2,a2,a5
2001518a:	01d67633          	and	a2,a2,t4
2001518e:	0741                	add	a4,a4,16
20015190:	962e                	add	a2,a2,a1
20015192:	fa571be3          	bne	a4,t0,20015148 <core::str::count::do_count_chars+0xc4>
20015196:	b7a5                	j	200150fe <core::str::count::do_count_chars+0x7a>
20015198:	4501                	li	a0,0
2001519a:	c999                	beqz	a1,200151b0 <core::str::count::do_count_chars+0x12c>
2001519c:	00060683          	lb	a3,0(a2)
200151a0:	fc06a693          	slti	a3,a3,-64
200151a4:	0016c693          	xor	a3,a3,1
200151a8:	9536                	add	a0,a0,a3
200151aa:	15fd                	add	a1,a1,-1
200151ac:	0605                	add	a2,a2,1
200151ae:	f5fd                	bnez	a1,2001519c <core::str::count::do_count_chars+0x118>
200151b0:	8082                	ret
200151b2:	4601                	li	a2,0
200151b4:	0fc3f593          	and	a1,t2,252
200151b8:	058a                	sll	a1,a1,0x2
200151ba:	932e                	add	t1,t1,a1
200151bc:	0c0e3593          	sltiu	a1,t3,192
200151c0:	40b005b3          	neg	a1,a1
200151c4:	00be75b3          	and	a1,t3,a1
200151c8:	898d                	and	a1,a1,3
200151ca:	00259693          	sll	a3,a1,0x2
200151ce:	00032583          	lw	a1,0(t1) # 110000 <.Lline_table_start2+0xcf1e8>
200151d2:	0311                	add	t1,t1,4
200151d4:	fff5c713          	not	a4,a1
200151d8:	831d                	srl	a4,a4,0x7
200151da:	8199                	srl	a1,a1,0x6
200151dc:	8dd9                	or	a1,a1,a4
200151de:	01d5f5b3          	and	a1,a1,t4
200151e2:	16f1                	add	a3,a3,-4
200151e4:	962e                	add	a2,a2,a1
200151e6:	f6e5                	bnez	a3,200151ce <core::str::count::do_count_chars+0x14a>
200151e8:	011675b3          	and	a1,a2,a7
200151ec:	8221                	srl	a2,a2,0x8
200151ee:	01167633          	and	a2,a2,a7
200151f2:	95b2                	add	a1,a1,a2
200151f4:	030585b3          	mul	a1,a1,a6
200151f8:	81c1                	srl	a1,a1,0x10
200151fa:	952e                	add	a0,a0,a1
200151fc:	8082                	ret

200151fe <core::fmt::num::<impl core::fmt::UpperHex for i32>::fmt>:
200151fe:	7175                	add	sp,sp,-144
20015200:	c706                	sw	ra,140(sp)
20015202:	4108                	lw	a0,0(a0)
20015204:	882e                	mv	a6,a1
20015206:	4781                	li	a5,0
20015208:	0170                	add	a2,sp,140
2001520a:	48a9                	li	a7,10
2001520c:	a811                	j	20015220 <core::fmt::num::<impl core::fmt::UpperHex for i32>::fmt+0x22>
2001520e:	fff60713          	add	a4,a2,-1
20015212:	8111                	srl	a0,a0,0x4
20015214:	95b6                	add	a1,a1,a3
20015216:	feb60fa3          	sb	a1,-1(a2)
2001521a:	0785                	add	a5,a5,1
2001521c:	863a                	mv	a2,a4
2001521e:	c911                	beqz	a0,20015232 <core::fmt::num::<impl core::fmt::UpperHex for i32>::fmt+0x34>
20015220:	00f57693          	and	a3,a0,15
20015224:	03000593          	li	a1,48
20015228:	ff16e3e3          	bltu	a3,a7,2001520e <core::fmt::num::<impl core::fmt::UpperHex for i32>::fmt+0x10>
2001522c:	03700593          	li	a1,55
20015230:	bff9                	j	2001520e <core::fmt::num::<impl core::fmt::UpperHex for i32>::fmt+0x10>
20015232:	08000593          	li	a1,128
20015236:	40f58533          	sub	a0,a1,a5
2001523a:	02a5e063          	bltu	a1,a0,2001525a <core::fmt::num::<impl core::fmt::UpperHex for i32>::fmt+0x5c>
2001523e:	20017537          	lui	a0,0x20017
20015242:	a6850613          	add	a2,a0,-1432 # 20016a68 <.Lanon.0b3f1f583507122567b66d8a7d95b554.317>
20015246:	4585                	li	a1,1
20015248:	4689                	li	a3,2
2001524a:	8542                	mv	a0,a6
2001524c:	00000097          	auipc	ra,0x0
20015250:	8f0080e7          	jalr	-1808(ra) # 20014b3c <core::fmt::Formatter::pad_integral>
20015254:	40ba                	lw	ra,140(sp)
20015256:	6149                	add	sp,sp,144
20015258:	8082                	ret
2001525a:	200175b7          	lui	a1,0x20017
2001525e:	a8858613          	add	a2,a1,-1400 # 20016a88 <.Lanon.0b3f1f583507122567b66d8a7d95b554.319>
20015262:	08000593          	li	a1,128
20015266:	00000097          	auipc	ra,0x0
2001526a:	d5e080e7          	jalr	-674(ra) # 20014fc4 <core::slice::index::slice_start_index_len_fail>
	...

20015270 <core::fmt::num::imp::fmt_u32>:
20015270:	7139                	add	sp,sp,-64
20015272:	de06                	sw	ra,60(sp)
20015274:	dc22                	sw	s0,56(sp)
20015276:	da26                	sw	s1,52(sp)
20015278:	8832                	mv	a6,a2
2001527a:	00455693          	srl	a3,a0,0x4
2001527e:	27100713          	li	a4,625
20015282:	02700613          	li	a2,39
20015286:	02e6f263          	bgeu	a3,a4,200152aa <core::fmt::num::imp::fmt_u32+0x3a>
2001528a:	06300693          	li	a3,99
2001528e:	0aa6ed63          	bltu	a3,a0,20015348 <core::fmt::num::imp::fmt_u32+0xd8>
20015292:	46a9                	li	a3,10
20015294:	0ed57f63          	bgeu	a0,a3,20015392 <core::fmt::num::imp::fmt_u32+0x122>
20015298:	167d                	add	a2,a2,-1
2001529a:	00d10693          	add	a3,sp,13
2001529e:	96b2                	add	a3,a3,a2
200152a0:	03050513          	add	a0,a0,48
200152a4:	00a68023          	sb	a0,0(a3)
200152a8:	a239                	j	200153b6 <core::fmt::num::imp::fmt_u32+0x146>
200152aa:	4601                	li	a2,0
200152ac:	03010893          	add	a7,sp,48
200152b0:	03210293          	add	t0,sp,50
200152b4:	d1b716b7          	lui	a3,0xd1b71
200152b8:	75968393          	add	t2,a3,1881 # d1b71759 <_sstack+0x51b6d759>
200152bc:	6689                	lui	a3,0x2
200152be:	71068e13          	add	t3,a3,1808 # 2710 <.Lline_table_start0+0x65b>
200152c2:	6685                	lui	a3,0x1
200152c4:	47b68e93          	add	t4,a3,1147 # 147b <.Lline_table_start0+0x10e>
200152c8:	06400313          	li	t1,100
200152cc:	200176b7          	lui	a3,0x20017
200152d0:	a9868f93          	add	t6,a3,-1384 # 20016a98 <.Lanon.0b3f1f583507122567b66d8a7d95b554.322>
200152d4:	05f5e737          	lui	a4,0x5f5e
200152d8:	0ff70f13          	add	t5,a4,255 # 5f5e0ff <.Lline_table_start2+0x5f1d2e7>
200152dc:	86aa                	mv	a3,a0
200152de:	02753533          	mulhu	a0,a0,t2
200152e2:	8135                	srl	a0,a0,0xd
200152e4:	03c50733          	mul	a4,a0,t3
200152e8:	40e687b3          	sub	a5,a3,a4
200152ec:	01079713          	sll	a4,a5,0x10
200152f0:	8349                	srl	a4,a4,0x12
200152f2:	03d70733          	mul	a4,a4,t4
200152f6:	01175413          	srl	s0,a4,0x11
200152fa:	8341                	srl	a4,a4,0x10
200152fc:	7fe77713          	and	a4,a4,2046
20015300:	02640433          	mul	s0,s0,t1
20015304:	8f81                	sub	a5,a5,s0
20015306:	07c6                	sll	a5,a5,0x11
20015308:	977e                	add	a4,a4,t6
2001530a:	00174403          	lbu	s0,1(a4)
2001530e:	83c1                	srl	a5,a5,0x10
20015310:	00c884b3          	add	s1,a7,a2
20015314:	00074703          	lbu	a4,0(a4)
20015318:	008480a3          	sb	s0,1(s1)
2001531c:	97fe                	add	a5,a5,t6
2001531e:	0017c403          	lbu	s0,1(a5)
20015322:	0007c783          	lbu	a5,0(a5)
20015326:	00e48023          	sb	a4,0(s1)
2001532a:	00c28733          	add	a4,t0,a2
2001532e:	008700a3          	sb	s0,1(a4)
20015332:	00f70023          	sb	a5,0(a4)
20015336:	1671                	add	a2,a2,-4
20015338:	fadf62e3          	bltu	t5,a3,200152dc <core::fmt::num::imp::fmt_u32+0x6c>
2001533c:	02760613          	add	a2,a2,39
20015340:	06300693          	li	a3,99
20015344:	f4a6f7e3          	bgeu	a3,a0,20015292 <core::fmt::num::imp::fmt_u32+0x22>
20015348:	01051693          	sll	a3,a0,0x10
2001534c:	82c9                	srl	a3,a3,0x12
2001534e:	6705                	lui	a4,0x1
20015350:	47b70713          	add	a4,a4,1147 # 147b <.Lline_table_start0+0x10e>
20015354:	02e686b3          	mul	a3,a3,a4
20015358:	82c5                	srl	a3,a3,0x11
2001535a:	06400713          	li	a4,100
2001535e:	02e68733          	mul	a4,a3,a4
20015362:	8d19                	sub	a0,a0,a4
20015364:	0546                	sll	a0,a0,0x11
20015366:	8141                	srl	a0,a0,0x10
20015368:	1679                	add	a2,a2,-2
2001536a:	20017737          	lui	a4,0x20017
2001536e:	a9870713          	add	a4,a4,-1384 # 20016a98 <.Lanon.0b3f1f583507122567b66d8a7d95b554.322>
20015372:	953a                	add	a0,a0,a4
20015374:	00154703          	lbu	a4,1(a0)
20015378:	00054503          	lbu	a0,0(a0)
2001537c:	00d10793          	add	a5,sp,13
20015380:	97b2                	add	a5,a5,a2
20015382:	00e780a3          	sb	a4,1(a5)
20015386:	00a78023          	sb	a0,0(a5)
2001538a:	8536                	mv	a0,a3
2001538c:	46a9                	li	a3,10
2001538e:	f0d565e3          	bltu	a0,a3,20015298 <core::fmt::num::imp::fmt_u32+0x28>
20015392:	0506                	sll	a0,a0,0x1
20015394:	1679                	add	a2,a2,-2
20015396:	200176b7          	lui	a3,0x20017
2001539a:	a9868693          	add	a3,a3,-1384 # 20016a98 <.Lanon.0b3f1f583507122567b66d8a7d95b554.322>
2001539e:	9536                	add	a0,a0,a3
200153a0:	00154683          	lbu	a3,1(a0)
200153a4:	00054503          	lbu	a0,0(a0)
200153a8:	00d10713          	add	a4,sp,13
200153ac:	9732                	add	a4,a4,a2
200153ae:	00d700a3          	sb	a3,1(a4)
200153b2:	00a70023          	sb	a0,0(a4)
200153b6:	00d10713          	add	a4,sp,13
200153ba:	9732                	add	a4,a4,a2
200153bc:	02700793          	li	a5,39
200153c0:	8f91                	sub	a5,a5,a2
200153c2:	20017537          	lui	a0,0x20017
200153c6:	9f850613          	add	a2,a0,-1544 # 200169f8 <.Lanon.0b3f1f583507122567b66d8a7d95b554.2>
200153ca:	8542                	mv	a0,a6
200153cc:	4681                	li	a3,0
200153ce:	fffff097          	auipc	ra,0xfffff
200153d2:	76e080e7          	jalr	1902(ra) # 20014b3c <core::fmt::Formatter::pad_integral>
200153d6:	50f2                	lw	ra,60(sp)
200153d8:	5462                	lw	s0,56(sp)
200153da:	54d2                	lw	s1,52(sp)
200153dc:	6121                	add	sp,sp,64
200153de:	8082                	ret

200153e0 <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt>:
200153e0:	4108                	lw	a0,0(a0)
200153e2:	862e                	mv	a2,a1
200153e4:	4585                	li	a1,1
200153e6:	00000317          	auipc	t1,0x0
200153ea:	e8a30067          	jr	-374(t1) # 20015270 <core::fmt::num::imp::fmt_u32>

200153ee <<&T as core::fmt::Display>::fmt>:
200153ee:	4114                	lw	a3,0(a0)
200153f0:	4150                	lw	a2,4(a0)
200153f2:	852e                	mv	a0,a1
200153f4:	85b6                	mv	a1,a3
200153f6:	00000317          	auipc	t1,0x0
200153fa:	9a230067          	jr	-1630(t1) # 20014d98 <core::fmt::Formatter::pad>

200153fe <memcpy>:
200153fe:	00000317          	auipc	t1,0x0
20015402:	00830067          	jr	8(t1) # 20015406 <compiler_builtins::mem::memcpy>

20015406 <compiler_builtins::mem::memcpy>:
20015406:	46c1                	li	a3,16
20015408:	06d66b63          	bltu	a2,a3,2001547e <compiler_builtins::mem::memcpy+0x78>
2001540c:	40a006b3          	neg	a3,a0
20015410:	0036f813          	and	a6,a3,3
20015414:	010503b3          	add	t2,a0,a6
20015418:	00080c63          	beqz	a6,20015430 <compiler_builtins::mem::memcpy+0x2a>
2001541c:	87aa                	mv	a5,a0
2001541e:	86ae                	mv	a3,a1
20015420:	0006c703          	lbu	a4,0(a3)
20015424:	00e78023          	sb	a4,0(a5)
20015428:	0785                	add	a5,a5,1
2001542a:	0685                	add	a3,a3,1
2001542c:	fe77eae3          	bltu	a5,t2,20015420 <compiler_builtins::mem::memcpy+0x1a>
20015430:	010588b3          	add	a7,a1,a6
20015434:	41060833          	sub	a6,a2,a6
20015438:	ffc87293          	and	t0,a6,-4
2001543c:	0038f593          	and	a1,a7,3
20015440:	005386b3          	add	a3,t2,t0
20015444:	c1a1                	beqz	a1,20015484 <compiler_builtins::mem::memcpy+0x7e>
20015446:	04505963          	blez	t0,20015498 <compiler_builtins::mem::memcpy+0x92>
2001544a:	00389593          	sll	a1,a7,0x3
2001544e:	0185f313          	and	t1,a1,24
20015452:	ffc8f793          	and	a5,a7,-4
20015456:	4390                	lw	a2,0(a5)
20015458:	40b005b3          	neg	a1,a1
2001545c:	0185fe13          	and	t3,a1,24
20015460:	0791                	add	a5,a5,4
20015462:	4398                	lw	a4,0(a5)
20015464:	00665633          	srl	a2,a2,t1
20015468:	01c715b3          	sll	a1,a4,t3
2001546c:	8dd1                	or	a1,a1,a2
2001546e:	00b3a023          	sw	a1,0(t2)
20015472:	0391                	add	t2,t2,4
20015474:	0791                	add	a5,a5,4
20015476:	863a                	mv	a2,a4
20015478:	fed3e5e3          	bltu	t2,a3,20015462 <compiler_builtins::mem::memcpy+0x5c>
2001547c:	a831                	j	20015498 <compiler_builtins::mem::memcpy+0x92>
2001547e:	86aa                	mv	a3,a0
20015480:	e20d                	bnez	a2,200154a2 <compiler_builtins::mem::memcpy+0x9c>
20015482:	a80d                	j	200154b4 <compiler_builtins::mem::memcpy+0xae>
20015484:	00505a63          	blez	t0,20015498 <compiler_builtins::mem::memcpy+0x92>
20015488:	85c6                	mv	a1,a7
2001548a:	4190                	lw	a2,0(a1)
2001548c:	00c3a023          	sw	a2,0(t2)
20015490:	0391                	add	t2,t2,4
20015492:	0591                	add	a1,a1,4
20015494:	fed3ebe3          	bltu	t2,a3,2001548a <compiler_builtins::mem::memcpy+0x84>
20015498:	005885b3          	add	a1,a7,t0
2001549c:	00387613          	and	a2,a6,3
200154a0:	ca11                	beqz	a2,200154b4 <compiler_builtins::mem::memcpy+0xae>
200154a2:	9636                	add	a2,a2,a3
200154a4:	0005c703          	lbu	a4,0(a1)
200154a8:	00e68023          	sb	a4,0(a3)
200154ac:	0685                	add	a3,a3,1
200154ae:	0585                	add	a1,a1,1
200154b0:	fec6eae3          	bltu	a3,a2,200154a4 <compiler_builtins::mem::memcpy+0x9e>
200154b4:	8082                	ret

200154b6 <abort>:
200154b6:	a001                	j	200154b6 <abort>
