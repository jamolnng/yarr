
target/riscv32imac-unknown-none-elf/debug/yarr2:     file format elf32-littleriscv


Disassembly of section .text:

20010000 <_start>:
20010000:	200100b7          	lui	ra,0x20010
20010004:	00808067          	jr	8(ra) # 20010008 <_abs_start>

20010008 <_abs_start>:
20010008:	30405073          	csrw	mie,0
2001000c:	34405073          	csrw	mip,0
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
20010050:	f14023f3          	csrr	t2,mhartid
20010054:	000002b7          	lui	t0,0x0
20010058:	00028293          	mv	t0,t0
2001005c:	0072f463          	bgeu	t0,t2,20010064 <_abs_start+0x5c>
20010060:	3700706f          	j	200173d0 <abort>
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
20010094:	00002097          	auipc	ra,0x2
20010098:	63e080e7          	jalr	1598(ra) # 200126d2 <riscv::register::mhartid::read>
2001009c:	cc2a                	sw	a0,24(sp)

    if _mp_hook(hartid) {
2001009e:	00002097          	auipc	ra,0x2
200100a2:	662080e7          	jalr	1634(ra) # 20012700 <default_mp_hook>
200100a6:	ed11                	bnez	a0,200100c2 <_start_rust+0x3e>
200100a8:	a009                	j	200100aa <_start_rust+0x26>
        r0::init_data(&mut _sdata, &mut _edata, &_sidata);
    }

    // TODO: Enable FPU when available

    _setup_interrupts();
200100aa:	00002097          	auipc	ra,0x2
200100ae:	672080e7          	jalr	1650(ra) # 2001271c <default_setup_interrupts>
200100b2:	4522                	lw	a0,8(sp)
200100b4:	4592                	lw	a1,4(sp)
200100b6:	4602                	lw	a2,0(sp)

    main(a0, a1, a2);
200100b8:	00002097          	auipc	ra,0x2
200100bc:	96c080e7          	jalr	-1684(ra) # 20011a24 <main>
200100c0:	0000                	unimp
        __pre_init();
200100c2:	00002097          	auipc	ra,0x2
200100c6:	63c080e7          	jalr	1596(ra) # 200126fe <default_pre_init>
        r0::zero_bss(&mut _sbss, &mut _ebss);
200100ca:	80001537          	lui	a0,0x80001
200100ce:	da850513          	add	a0,a0,-600 # 80000da8 <yarr2::schedule::PID>
200100d2:	800015b7          	lui	a1,0x80001
200100d6:	db058593          	add	a1,a1,-592 # 80000db0 <_ebss>
200100da:	00002097          	auipc	ra,0x2
200100de:	478080e7          	jalr	1144(ra) # 20012552 <r0::zero_bss>
        r0::init_data(&mut _sdata, &mut _edata, &_sidata);
200100e2:	80000537          	lui	a0,0x80000
200100e6:	00050513          	mv	a0,a0
200100ea:	800015b7          	lui	a1,0x80001
200100ee:	da858593          	add	a1,a1,-600 # 80000da8 <yarr2::schedule::PID>
200100f2:	2001a637          	lui	a2,0x2001a
200100f6:	80460613          	add	a2,a2,-2044 # 20019804 <_sidata>
200100fa:	00002097          	auipc	ra,0x2
200100fe:	4ac080e7          	jalr	1196(ra) # 200125a6 <r0::init_data>
20010102:	b765                	j	200100aa <_start_rust+0x26>

20010104 <m_trap_vec>:
20010104:	340f9ff3          	csrrw	t6,mscratch,t6
20010108:	000fa023          	sw	zero,0(t6)
2001010c:	001fa223          	sw	ra,4(t6)
20010110:	002fa423          	sw	sp,8(t6)
20010114:	003fa623          	sw	gp,12(t6)
20010118:	004fa823          	sw	tp,16(t6)
2001011c:	005faa23          	sw	t0,20(t6)
20010120:	006fac23          	sw	t1,24(t6)
20010124:	007fae23          	sw	t2,28(t6)
20010128:	028fa023          	sw	s0,32(t6)
2001012c:	029fa223          	sw	s1,36(t6)
20010130:	02afa423          	sw	a0,40(t6)
20010134:	02bfa623          	sw	a1,44(t6)
20010138:	02cfa823          	sw	a2,48(t6)
2001013c:	02dfaa23          	sw	a3,52(t6)
20010140:	02efac23          	sw	a4,56(t6)
20010144:	02ffae23          	sw	a5,60(t6)
20010148:	050fa023          	sw	a6,64(t6)
2001014c:	051fa223          	sw	a7,68(t6)
20010150:	052fa423          	sw	s2,72(t6)
20010154:	053fa623          	sw	s3,76(t6)
20010158:	054fa823          	sw	s4,80(t6)
2001015c:	055faa23          	sw	s5,84(t6)
20010160:	056fac23          	sw	s6,88(t6)
20010164:	057fae23          	sw	s7,92(t6)
20010168:	078fa023          	sw	s8,96(t6)
2001016c:	079fa223          	sw	s9,100(t6)
20010170:	07afa423          	sw	s10,104(t6)
20010174:	07bfa623          	sw	s11,108(t6)
20010178:	07cfa823          	sw	t3,112(t6)
2001017c:	07dfaa23          	sw	t4,116(t6)
20010180:	07efac23          	sw	t5,120(t6)
20010184:	34002f73          	csrr	t5,mscratch
20010188:	07efae23          	sw	t5,124(t6)
2001018c:	340f9073          	csrw	mscratch,t6
20010190:	34102573          	csrr	a0,mepc
20010194:	08afa023          	sw	a0,128(t6)
20010198:	000f8593          	mv	a1,t6

2001019c <.Lpcrel_hi0>:
2001019c:	5fff4117          	auipc	sp,0x5fff4
200101a0:	e6410113          	add	sp,sp,-412 # 80004000 <_sstack>
200101a4:	00000097          	auipc	ra,0x0
200101a8:	150080e7          	jalr	336(ra) # 200102f4 <m_trap_vec_impl>
200101ac:	34151073          	csrw	mepc,a0
200101b0:	34002ff3          	csrr	t6,mscratch
200101b4:	004fa083          	lw	ra,4(t6)
200101b8:	008fa103          	lw	sp,8(t6)
200101bc:	00cfa183          	lw	gp,12(t6)
200101c0:	010fa203          	lw	tp,16(t6)
200101c4:	014fa283          	lw	t0,20(t6)
200101c8:	018fa303          	lw	t1,24(t6)
200101cc:	01cfa383          	lw	t2,28(t6)
200101d0:	020fa403          	lw	s0,32(t6)
200101d4:	024fa483          	lw	s1,36(t6)
200101d8:	028fa503          	lw	a0,40(t6)
200101dc:	02cfa583          	lw	a1,44(t6)
200101e0:	030fa603          	lw	a2,48(t6)
200101e4:	034fa683          	lw	a3,52(t6)
200101e8:	038fa703          	lw	a4,56(t6)
200101ec:	03cfa783          	lw	a5,60(t6)
200101f0:	040fa803          	lw	a6,64(t6)
200101f4:	044fa883          	lw	a7,68(t6)
200101f8:	048fa903          	lw	s2,72(t6)
200101fc:	04cfa983          	lw	s3,76(t6)
20010200:	050faa03          	lw	s4,80(t6)
20010204:	054faa83          	lw	s5,84(t6)
20010208:	058fab03          	lw	s6,88(t6)
2001020c:	05cfab83          	lw	s7,92(t6)
20010210:	060fac03          	lw	s8,96(t6)
20010214:	064fac83          	lw	s9,100(t6)
20010218:	068fad03          	lw	s10,104(t6)
2001021c:	06cfad83          	lw	s11,108(t6)
20010220:	070fae03          	lw	t3,112(t6)
20010224:	074fae83          	lw	t4,116(t6)
20010228:	078faf03          	lw	t5,120(t6)
2001022c:	07cfaf83          	lw	t6,124(t6)
20010230:	30200073          	mret

20010234 <m_switch_task>:
20010234:	34051073          	csrw	mscratch,a0
20010238:	08052583          	lw	a1,128(a0) # 80000080 <.L__unnamed_7+0x7c>
2001023c:	08452603          	lw	a2,132(a0)
20010240:	000022b7          	lui	t0,0x2
20010244:	09028293          	add	t0,t0,144 # 2090 <.Lline_table_start0+0x87>
20010248:	00b61613          	sll	a2,a2,0xb
2001024c:	00c2e2b3          	or	t0,t0,a2
20010250:	30029073          	csrw	mstatus,t0
20010254:	34159073          	csrw	mepc,a1
20010258:	00001337          	lui	t1,0x1
2001025c:	88830313          	add	t1,t1,-1912 # 888 <_hart_stack_size+0x88>
20010260:	30431073          	csrw	mie,t1

20010264 <.Lpcrel_hi1>:
20010264:	00000397          	auipc	t2,0x0
20010268:	ea038393          	add	t2,t2,-352 # 20010104 <m_trap_vec>
2001026c:	30539073          	csrw	mtvec,t2
20010270:	00050f93          	mv	t6,a0
20010274:	004fa083          	lw	ra,4(t6)
20010278:	008fa103          	lw	sp,8(t6)
2001027c:	00cfa183          	lw	gp,12(t6)
20010280:	010fa203          	lw	tp,16(t6)
20010284:	014fa283          	lw	t0,20(t6)
20010288:	018fa303          	lw	t1,24(t6)
2001028c:	01cfa383          	lw	t2,28(t6)
20010290:	020fa403          	lw	s0,32(t6)
20010294:	024fa483          	lw	s1,36(t6)
20010298:	028fa503          	lw	a0,40(t6)
2001029c:	02cfa583          	lw	a1,44(t6)
200102a0:	030fa603          	lw	a2,48(t6)
200102a4:	034fa683          	lw	a3,52(t6)
200102a8:	038fa703          	lw	a4,56(t6)
200102ac:	03cfa783          	lw	a5,60(t6)
200102b0:	040fa803          	lw	a6,64(t6)
200102b4:	044fa883          	lw	a7,68(t6)
200102b8:	048fa903          	lw	s2,72(t6)
200102bc:	04cfa983          	lw	s3,76(t6)
200102c0:	050faa03          	lw	s4,80(t6)
200102c4:	054faa83          	lw	s5,84(t6)
200102c8:	058fab03          	lw	s6,88(t6)
200102cc:	05cfab83          	lw	s7,92(t6)
200102d0:	060fac03          	lw	s8,96(t6)
200102d4:	064fac83          	lw	s9,100(t6)
200102d8:	068fad03          	lw	s10,104(t6)
200102dc:	06cfad83          	lw	s11,108(t6)
200102e0:	070fae03          	lw	t3,112(t6)
200102e4:	074fae83          	lw	t4,116(t6)
200102e8:	078faf03          	lw	t5,120(t6)
200102ec:	07cfaf83          	lw	t6,124(t6)
200102f0:	30200073          	mret

200102f4 <m_trap_vec_impl>:
}

#[no_mangle]
#[inline(never)]
#[link_section = ".trap"]
extern "C" fn m_trap_vec_impl(epc: usize, _frame: *mut TrapFrame) -> usize {
200102f4:	bd010113          	add	sp,sp,-1072
200102f8:	42112623          	sw	ra,1068(sp)
200102fc:	cc2a                	sw	a0,24(sp)
200102fe:	30b12423          	sw	a1,776(sp)
    let mcause = mcause::read();
20010302:	00000097          	auipc	ra,0x0
20010306:	78c080e7          	jalr	1932(ra) # 20010a8e <riscv::register::mcause::read>
2001030a:	ce2a                	sw	a0,28(sp)
2001030c:	0868                	add	a0,sp,28

    // sprintln!("mcause: {:#x?},\r\nepc: {:#x?}", mcause, epc);

    match mcause.cause() {
2001030e:	00000097          	auipc	ra,0x0
20010312:	7c4080e7          	jalr	1988(ra) # 20010ad2 <riscv::register::mcause::Mcause::cause>
20010316:	02b10123          	sb	a1,34(sp)
2001031a:	02a100a3          	sb	a0,33(sp)
2001031e:	02114503          	lbu	a0,33(sp)
20010322:	8905                	and	a0,a0,1
20010324:	ed01                	bnez	a0,2001033c <m_trap_vec_impl+0x48>
20010326:	a009                	j	20010328 <m_trap_vec_impl+0x34>
        // async
        Trap::Interrupt(interrupt) => {
20010328:	02214503          	lbu	a0,34(sp)
2001032c:	02a101a3          	sb	a0,35(sp)
            match interrupt {
20010330:	02314503          	lbu	a0,35(sp)
20010334:	4595                	li	a1,5
20010336:	00b50d63          	beq	a0,a1,20010350 <m_trap_vec_impl+0x5c>
2001033a:	a835                	j	20010376 <m_trap_vec_impl+0x82>
                },
                _ => panic!("Unhandled interrupt: mcause {mcause:#x?}, epc: {epc:#x?}, interrupt: {interrupt:#x?}")
            }
        },
        // sync
        Trap::Exception(exception) => {
2001033c:	02214503          	lbu	a0,34(sp)
20010340:	1ca10da3          	sb	a0,475(sp)
            match exception {
20010344:	1db14503          	lbu	a0,475(sp)
20010348:	45a9                	li	a1,10
2001034a:	2ab50663          	beq	a0,a1,200105f6 <m_trap_vec_impl+0x302>
2001034e:	ac5d                	j	20010604 <m_trap_vec_impl+0x310>
20010350:	7d000513          	li	a0,2000
20010354:	4581                	li	a1,0
                    schedule::yarr_set_timer(2000);
20010356:	00002097          	auipc	ra,0x2
2001035a:	ede080e7          	jalr	-290(ra) # 20012234 <yarr_set_timer>
2001035e:	1048                	add	a0,sp,36
                    switch_task(&mut schedule())
20010360:	ca2a                	sw	a0,20(sp)
20010362:	00002097          	auipc	ra,0x2
20010366:	f18080e7          	jalr	-232(ra) # 2001227a <yarr2::schedule::schedule>
2001036a:	4552                	lw	a0,20(sp)
2001036c:	00001097          	auipc	ra,0x1
20010370:	58c080e7          	jalr	1420(ra) # 200118f8 <yarr2::trap::switch_task>
20010374:	0000                	unimp
20010376:	086c                	add	a1,sp,28
20010378:	3eb12a23          	sw	a1,1012(sp)
2001037c:	20011537          	lui	a0,0x20011
20010380:	c4c50513          	add	a0,a0,-948 # 20010c4c <<riscv::register::mcause::Mcause as core::fmt::Debug>::fmt>
20010384:	3ea12c23          	sw	a0,1016(sp)
20010388:	3eb12623          	sw	a1,1004(sp)
2001038c:	3ea12823          	sw	a0,1008(sp)
20010390:	3ec12783          	lw	a5,1004(sp)
20010394:	3f012703          	lw	a4,1008(sp)
20010398:	082c                	add	a1,sp,24
2001039a:	40b12a23          	sw	a1,1044(sp)
2001039e:	20012537          	lui	a0,0x20012
200103a2:	f0450513          	add	a0,a0,-252 # 20011f04 <core::fmt::num::<impl core::fmt::Debug for usize>::fmt>
200103a6:	40a12c23          	sw	a0,1048(sp)
200103aa:	40b12623          	sw	a1,1036(sp)
200103ae:	40a12823          	sw	a0,1040(sp)
200103b2:	40c12683          	lw	a3,1036(sp)
200103b6:	41012603          	lw	a2,1040(sp)
200103ba:	02310593          	add	a1,sp,35
200103be:	3cb12a23          	sw	a1,980(sp)
200103c2:	20011537          	lui	a0,0x20011
200103c6:	db050513          	add	a0,a0,-592 # 20010db0 <<riscv::register::mcause::Interrupt as core::fmt::Debug>::fmt>
200103ca:	3ca12c23          	sw	a0,984(sp)
200103ce:	3cb12623          	sw	a1,972(sp)
200103d2:	3ca12823          	sw	a0,976(sp)
200103d6:	3cc12583          	lw	a1,972(sp)
200103da:	3d012503          	lw	a0,976(sp)
                _ => panic!("Unhandled interrupt: mcause {mcause:#x?}, epc: {epc:#x?}, interrupt: {interrupt:#x?}")
200103de:	c3be                	sw	a5,196(sp)
200103e0:	c5ba                	sw	a4,200(sp)
200103e2:	c7b6                	sw	a3,204(sp)
200103e4:	c9b2                	sw	a2,208(sp)
200103e6:	cbae                	sw	a1,212(sp)
200103e8:	cdaa                	sw	a0,216(sp)
200103ea:	480d                	li	a6,3
200103ec:	15010fa3          	sb	a6,351(sp)
200103f0:	4289                	li	t0,2
200103f2:	16512023          	sw	t0,352(sp)
200103f6:	16512423          	sw	t0,360(sp)
200103fa:	15f14783          	lbu	a5,351(sp)
200103fe:	16012683          	lw	a3,352(sp)
20010402:	16412603          	lw	a2,356(sp)
20010406:	16812583          	lw	a1,360(sp)
2001040a:	16c12503          	lw	a0,364(sp)
2001040e:	4301                	li	t1,0
20010410:	3a612623          	sw	t1,940(sp)
20010414:	02000893          	li	a7,32
20010418:	3b112823          	sw	a7,944(sp)
2001041c:	3af10ba3          	sb	a5,951(sp)
20010420:	4751                	li	a4,20
20010422:	3ae12c23          	sw	a4,952(sp)
20010426:	3ad12e23          	sw	a3,956(sp)
2001042a:	3cc12023          	sw	a2,960(sp)
2001042e:	3cb12223          	sw	a1,964(sp)
20010432:	3ca12423          	sw	a0,968(sp)
20010436:	14612823          	sw	t1,336(sp)
2001043a:	15112623          	sw	a7,332(sp)
2001043e:	14f10c23          	sb	a5,344(sp)
20010442:	14e12a23          	sw	a4,340(sp)
20010446:	12d12e23          	sw	a3,316(sp)
2001044a:	14c12023          	sw	a2,320(sp)
2001044e:	14b12223          	sw	a1,324(sp)
20010452:	14a12423          	sw	a0,328(sp)
20010456:	190109a3          	sb	a6,403(sp)
2001045a:	18512a23          	sw	t0,404(sp)
2001045e:	18512e23          	sw	t0,412(sp)
20010462:	19314783          	lbu	a5,403(sp)
20010466:	19412683          	lw	a3,404(sp)
2001046a:	19812603          	lw	a2,408(sp)
2001046e:	19c12583          	lw	a1,412(sp)
20010472:	1a012503          	lw	a0,416(sp)
20010476:	4305                	li	t1,1
20010478:	38612623          	sw	t1,908(sp)
2001047c:	39112823          	sw	a7,912(sp)
20010480:	38f10ba3          	sb	a5,919(sp)
20010484:	38e12c23          	sw	a4,920(sp)
20010488:	38d12e23          	sw	a3,924(sp)
2001048c:	3ac12023          	sw	a2,928(sp)
20010490:	3ab12223          	sw	a1,932(sp)
20010494:	3aa12423          	sw	a0,936(sp)
20010498:	18612223          	sw	t1,388(sp)
2001049c:	19112023          	sw	a7,384(sp)
200104a0:	18f10623          	sb	a5,396(sp)
200104a4:	18e12423          	sw	a4,392(sp)
200104a8:	16d12823          	sw	a3,368(sp)
200104ac:	16c12a23          	sw	a2,372(sp)
200104b0:	16b12c23          	sw	a1,376(sp)
200104b4:	16a12e23          	sw	a0,380(sp)
200104b8:	1d0103a3          	sb	a6,455(sp)
200104bc:	1c512423          	sw	t0,456(sp)
200104c0:	1c512823          	sw	t0,464(sp)
200104c4:	1c714783          	lbu	a5,455(sp)
200104c8:	1c812683          	lw	a3,456(sp)
200104cc:	1cc12603          	lw	a2,460(sp)
200104d0:	1d012583          	lw	a1,464(sp)
200104d4:	1d412503          	lw	a0,468(sp)
200104d8:	36512623          	sw	t0,876(sp)
200104dc:	37112823          	sw	a7,880(sp)
200104e0:	36f10ba3          	sb	a5,887(sp)
200104e4:	36e12c23          	sw	a4,888(sp)
200104e8:	36d12e23          	sw	a3,892(sp)
200104ec:	38c12023          	sw	a2,896(sp)
200104f0:	38b12223          	sw	a1,900(sp)
200104f4:	38a12423          	sw	a0,904(sp)
200104f8:	1a512c23          	sw	t0,440(sp)
200104fc:	1b112a23          	sw	a7,436(sp)
20010500:	1cf10023          	sb	a5,448(sp)
20010504:	1ae12e23          	sw	a4,444(sp)
20010508:	1ad12223          	sw	a3,420(sp)
2001050c:	1ac12423          	sw	a2,424(sp)
20010510:	1ab12623          	sw	a1,428(sp)
20010514:	1aa12823          	sw	a0,432(sp)
20010518:	15812503          	lw	a0,344(sp)
2001051c:	ddaa                	sw	a0,248(sp)
2001051e:	15412503          	lw	a0,340(sp)
20010522:	dbaa                	sw	a0,244(sp)
20010524:	15012503          	lw	a0,336(sp)
20010528:	d9aa                	sw	a0,240(sp)
2001052a:	14c12503          	lw	a0,332(sp)
2001052e:	d7aa                	sw	a0,236(sp)
20010530:	14812503          	lw	a0,328(sp)
20010534:	d5aa                	sw	a0,232(sp)
20010536:	14412503          	lw	a0,324(sp)
2001053a:	d3aa                	sw	a0,228(sp)
2001053c:	14012503          	lw	a0,320(sp)
20010540:	d1aa                	sw	a0,224(sp)
20010542:	13c12503          	lw	a0,316(sp)
20010546:	cfaa                	sw	a0,220(sp)
20010548:	18c12503          	lw	a0,396(sp)
2001054c:	10a12c23          	sw	a0,280(sp)
20010550:	18812503          	lw	a0,392(sp)
20010554:	10a12a23          	sw	a0,276(sp)
20010558:	18412503          	lw	a0,388(sp)
2001055c:	10a12823          	sw	a0,272(sp)
20010560:	18012503          	lw	a0,384(sp)
20010564:	10a12623          	sw	a0,268(sp)
20010568:	17c12503          	lw	a0,380(sp)
2001056c:	10a12423          	sw	a0,264(sp)
20010570:	17812503          	lw	a0,376(sp)
20010574:	10a12223          	sw	a0,260(sp)
20010578:	17412503          	lw	a0,372(sp)
2001057c:	10a12023          	sw	a0,256(sp)
20010580:	17012503          	lw	a0,368(sp)
20010584:	dfaa                	sw	a0,252(sp)
20010586:	1c012503          	lw	a0,448(sp)
2001058a:	12a12c23          	sw	a0,312(sp)
2001058e:	1bc12503          	lw	a0,444(sp)
20010592:	12a12a23          	sw	a0,308(sp)
20010596:	1b812503          	lw	a0,440(sp)
2001059a:	12a12823          	sw	a0,304(sp)
2001059e:	1b412503          	lw	a0,436(sp)
200105a2:	12a12623          	sw	a0,300(sp)
200105a6:	1b012503          	lw	a0,432(sp)
200105aa:	12a12423          	sw	a0,296(sp)
200105ae:	1ac12503          	lw	a0,428(sp)
200105b2:	12a12223          	sw	a0,292(sp)
200105b6:	1a812503          	lw	a0,424(sp)
200105ba:	12a12023          	sw	a0,288(sp)
200105be:	1a412503          	lw	a0,420(sp)
200105c2:	10a12e23          	sw	a0,284(sp)
200105c6:	20018537          	lui	a0,0x20018
200105ca:	a0850593          	add	a1,a0,-1528 # 20017a08 <.L__unnamed_1>
200105ce:	1168                	add	a0,sp,172
200105d0:	c82a                	sw	a0,16(sp)
200105d2:	01d4                	add	a3,sp,196
200105d4:	09fc                	add	a5,sp,220
200105d6:	8642                	mv	a2,a6
200105d8:	8742                	mv	a4,a6
200105da:	00001097          	auipc	ra,0x1
200105de:	0bc080e7          	jalr	188(ra) # 20011696 <core::fmt::Arguments::new_v1_formatted>
200105e2:	4542                	lw	a0,16(sp)
200105e4:	200185b7          	lui	a1,0x20018
200105e8:	a2c58593          	add	a1,a1,-1492 # 20017a2c <.L__unnamed_2>
200105ec:	00005097          	auipc	ra,0x5
200105f0:	e72080e7          	jalr	-398(ra) # 2001545e <core::panicking::panic_fmt>
200105f4:	0000                	unimp
                mcause::Exception::MachineEnvCall => {
                    // sprintln!("Machine environment call");
                }
                _ => panic!("Unhandled exception: mcause {mcause:#x?}, epc: {epc:#x?}, exception: {exception:#x?}")
            }
            epc + 4
200105f6:	45e2                	lw	a1,24(sp)
200105f8:	00458513          	add	a0,a1,4
200105fc:	c62a                	sw	a0,12(sp)
200105fe:	2ab56863          	bltu	a0,a1,200108ae <m_trap_vec_impl+0x5ba>
20010602:	a445                	j	200108a2 <m_trap_vec_impl+0x5ae>
20010604:	086c                	add	a1,sp,28
20010606:	3eb12223          	sw	a1,996(sp)
2001060a:	20011537          	lui	a0,0x20011
2001060e:	c4c50513          	add	a0,a0,-948 # 20010c4c <<riscv::register::mcause::Mcause as core::fmt::Debug>::fmt>
20010612:	3ea12423          	sw	a0,1000(sp)
20010616:	3cb12e23          	sw	a1,988(sp)
2001061a:	3ea12023          	sw	a0,992(sp)
2001061e:	3dc12783          	lw	a5,988(sp)
20010622:	3e012703          	lw	a4,992(sp)
20010626:	082c                	add	a1,sp,24
20010628:	40b12223          	sw	a1,1028(sp)
2001062c:	20012537          	lui	a0,0x20012
20010630:	f0450513          	add	a0,a0,-252 # 20011f04 <core::fmt::num::<impl core::fmt::Debug for usize>::fmt>
20010634:	40a12423          	sw	a0,1032(sp)
20010638:	3eb12e23          	sw	a1,1020(sp)
2001063c:	40a12023          	sw	a0,1024(sp)
20010640:	3fc12683          	lw	a3,1020(sp)
20010644:	40012603          	lw	a2,1024(sp)
20010648:	1db10593          	add	a1,sp,475
2001064c:	42b12223          	sw	a1,1060(sp)
20010650:	20011537          	lui	a0,0x20011
20010654:	c8850513          	add	a0,a0,-888 # 20010c88 <<riscv::register::mcause::Exception as core::fmt::Debug>::fmt>
20010658:	42a12423          	sw	a0,1064(sp)
2001065c:	40b12e23          	sw	a1,1052(sp)
20010660:	42a12023          	sw	a0,1056(sp)
20010664:	41c12583          	lw	a1,1052(sp)
20010668:	42012503          	lw	a0,1056(sp)
                _ => panic!("Unhandled exception: mcause {mcause:#x?}, epc: {epc:#x?}, exception: {exception:#x?}")
2001066c:	1ef12a23          	sw	a5,500(sp)
20010670:	1ee12c23          	sw	a4,504(sp)
20010674:	1ed12e23          	sw	a3,508(sp)
20010678:	20c12023          	sw	a2,512(sp)
2001067c:	20b12223          	sw	a1,516(sp)
20010680:	20a12423          	sw	a0,520(sp)
20010684:	480d                	li	a6,3
20010686:	290107a3          	sb	a6,655(sp)
2001068a:	4289                	li	t0,2
2001068c:	28512823          	sw	t0,656(sp)
20010690:	28512c23          	sw	t0,664(sp)
20010694:	28f14783          	lbu	a5,655(sp)
20010698:	29012683          	lw	a3,656(sp)
2001069c:	29412603          	lw	a2,660(sp)
200106a0:	29812583          	lw	a1,664(sp)
200106a4:	29c12503          	lw	a0,668(sp)
200106a8:	4301                	li	t1,0
200106aa:	34612623          	sw	t1,844(sp)
200106ae:	02000893          	li	a7,32
200106b2:	35112823          	sw	a7,848(sp)
200106b6:	34f10ba3          	sb	a5,855(sp)
200106ba:	4751                	li	a4,20
200106bc:	34e12c23          	sw	a4,856(sp)
200106c0:	34d12e23          	sw	a3,860(sp)
200106c4:	36c12023          	sw	a2,864(sp)
200106c8:	36b12223          	sw	a1,868(sp)
200106cc:	36a12423          	sw	a0,872(sp)
200106d0:	28612023          	sw	t1,640(sp)
200106d4:	27112e23          	sw	a7,636(sp)
200106d8:	28f10423          	sb	a5,648(sp)
200106dc:	28e12223          	sw	a4,644(sp)
200106e0:	26d12623          	sw	a3,620(sp)
200106e4:	26c12823          	sw	a2,624(sp)
200106e8:	26b12a23          	sw	a1,628(sp)
200106ec:	26a12c23          	sw	a0,632(sp)
200106f0:	2d0101a3          	sb	a6,707(sp)
200106f4:	2c512223          	sw	t0,708(sp)
200106f8:	2c512623          	sw	t0,716(sp)
200106fc:	2c314783          	lbu	a5,707(sp)
20010700:	2c412683          	lw	a3,708(sp)
20010704:	2c812603          	lw	a2,712(sp)
20010708:	2cc12583          	lw	a1,716(sp)
2001070c:	2d012503          	lw	a0,720(sp)
20010710:	4305                	li	t1,1
20010712:	32612623          	sw	t1,812(sp)
20010716:	33112823          	sw	a7,816(sp)
2001071a:	32f10ba3          	sb	a5,823(sp)
2001071e:	32e12c23          	sw	a4,824(sp)
20010722:	32d12e23          	sw	a3,828(sp)
20010726:	34c12023          	sw	a2,832(sp)
2001072a:	34b12223          	sw	a1,836(sp)
2001072e:	34a12423          	sw	a0,840(sp)
20010732:	2a612a23          	sw	t1,692(sp)
20010736:	2b112823          	sw	a7,688(sp)
2001073a:	2af10e23          	sb	a5,700(sp)
2001073e:	2ae12c23          	sw	a4,696(sp)
20010742:	2ad12023          	sw	a3,672(sp)
20010746:	2ac12223          	sw	a2,676(sp)
2001074a:	2ab12423          	sw	a1,680(sp)
2001074e:	2aa12623          	sw	a0,684(sp)
20010752:	2f010ba3          	sb	a6,759(sp)
20010756:	2e512c23          	sw	t0,760(sp)
2001075a:	30512023          	sw	t0,768(sp)
2001075e:	2f714783          	lbu	a5,759(sp)
20010762:	2f812683          	lw	a3,760(sp)
20010766:	2fc12603          	lw	a2,764(sp)
2001076a:	30012583          	lw	a1,768(sp)
2001076e:	30412503          	lw	a0,772(sp)
20010772:	30512623          	sw	t0,780(sp)
20010776:	31112823          	sw	a7,784(sp)
2001077a:	30f10ba3          	sb	a5,791(sp)
2001077e:	30e12c23          	sw	a4,792(sp)
20010782:	30d12e23          	sw	a3,796(sp)
20010786:	32c12023          	sw	a2,800(sp)
2001078a:	32b12223          	sw	a1,804(sp)
2001078e:	32a12423          	sw	a0,808(sp)
20010792:	2e512423          	sw	t0,744(sp)
20010796:	2f112223          	sw	a7,740(sp)
2001079a:	2ef10823          	sb	a5,752(sp)
2001079e:	2ee12623          	sw	a4,748(sp)
200107a2:	2cd12a23          	sw	a3,724(sp)
200107a6:	2cc12c23          	sw	a2,728(sp)
200107aa:	2cb12e23          	sw	a1,732(sp)
200107ae:	2ea12023          	sw	a0,736(sp)
200107b2:	28812503          	lw	a0,648(sp)
200107b6:	22a12423          	sw	a0,552(sp)
200107ba:	28412503          	lw	a0,644(sp)
200107be:	22a12223          	sw	a0,548(sp)
200107c2:	28012503          	lw	a0,640(sp)
200107c6:	22a12023          	sw	a0,544(sp)
200107ca:	27c12503          	lw	a0,636(sp)
200107ce:	20a12e23          	sw	a0,540(sp)
200107d2:	27812503          	lw	a0,632(sp)
200107d6:	20a12c23          	sw	a0,536(sp)
200107da:	27412503          	lw	a0,628(sp)
200107de:	20a12a23          	sw	a0,532(sp)
200107e2:	27012503          	lw	a0,624(sp)
200107e6:	20a12823          	sw	a0,528(sp)
200107ea:	26c12503          	lw	a0,620(sp)
200107ee:	20a12623          	sw	a0,524(sp)
200107f2:	2bc12503          	lw	a0,700(sp)
200107f6:	24a12423          	sw	a0,584(sp)
200107fa:	2b812503          	lw	a0,696(sp)
200107fe:	24a12223          	sw	a0,580(sp)
20010802:	2b412503          	lw	a0,692(sp)
20010806:	24a12023          	sw	a0,576(sp)
2001080a:	2b012503          	lw	a0,688(sp)
2001080e:	22a12e23          	sw	a0,572(sp)
20010812:	2ac12503          	lw	a0,684(sp)
20010816:	22a12c23          	sw	a0,568(sp)
2001081a:	2a812503          	lw	a0,680(sp)
2001081e:	22a12a23          	sw	a0,564(sp)
20010822:	2a412503          	lw	a0,676(sp)
20010826:	22a12823          	sw	a0,560(sp)
2001082a:	2a012503          	lw	a0,672(sp)
2001082e:	22a12623          	sw	a0,556(sp)
20010832:	2f012503          	lw	a0,752(sp)
20010836:	26a12423          	sw	a0,616(sp)
2001083a:	2ec12503          	lw	a0,748(sp)
2001083e:	26a12223          	sw	a0,612(sp)
20010842:	2e812503          	lw	a0,744(sp)
20010846:	26a12023          	sw	a0,608(sp)
2001084a:	2e412503          	lw	a0,740(sp)
2001084e:	24a12e23          	sw	a0,604(sp)
20010852:	2e012503          	lw	a0,736(sp)
20010856:	24a12c23          	sw	a0,600(sp)
2001085a:	2dc12503          	lw	a0,732(sp)
2001085e:	24a12a23          	sw	a0,596(sp)
20010862:	2d812503          	lw	a0,728(sp)
20010866:	24a12823          	sw	a0,592(sp)
2001086a:	2d412503          	lw	a0,724(sp)
2001086e:	24a12623          	sw	a0,588(sp)
20010872:	20018537          	lui	a0,0x20018
20010876:	a9850593          	add	a1,a0,-1384 # 20017a98 <.L__unnamed_3>
2001087a:	0be8                	add	a0,sp,476
2001087c:	c42a                	sw	a0,8(sp)
2001087e:	1bd4                	add	a3,sp,500
20010880:	047c                	add	a5,sp,524
20010882:	8642                	mv	a2,a6
20010884:	8742                	mv	a4,a6
20010886:	00001097          	auipc	ra,0x1
2001088a:	e10080e7          	jalr	-496(ra) # 20011696 <core::fmt::Arguments::new_v1_formatted>
2001088e:	4522                	lw	a0,8(sp)
20010890:	200185b7          	lui	a1,0x20018
20010894:	ab058593          	add	a1,a1,-1360 # 20017ab0 <.L__unnamed_4>
20010898:	00005097          	auipc	ra,0x5
2001089c:	bc6080e7          	jalr	-1082(ra) # 2001545e <core::panicking::panic_fmt>
200108a0:	0000                	unimp
        }
    }
}
200108a2:	4532                	lw	a0,12(sp)
200108a4:	42c12083          	lw	ra,1068(sp)
200108a8:	43010113          	add	sp,sp,1072
200108ac:	8082                	ret
            epc + 4
200108ae:	20018537          	lui	a0,0x20018
200108b2:	a5050513          	add	a0,a0,-1456 # 20017a50 <str.0>
200108b6:	200185b7          	lui	a1,0x20018
200108ba:	a3c58613          	add	a2,a1,-1476 # 20017a3c <.L__unnamed_5>
200108be:	45f1                	li	a1,28
200108c0:	00005097          	auipc	ra,0x5
200108c4:	bcc080e7          	jalr	-1076(ra) # 2001548c <core::panicking::panic>
	...

200108ca <_start_trap>:
200108ca:	7139                	add	sp,sp,-64
200108cc:	c006                	sw	ra,0(sp)
200108ce:	c216                	sw	t0,4(sp)
200108d0:	c41a                	sw	t1,8(sp)
200108d2:	c61e                	sw	t2,12(sp)
200108d4:	c872                	sw	t3,16(sp)
200108d6:	ca76                	sw	t4,20(sp)
200108d8:	cc7a                	sw	t5,24(sp)
200108da:	ce7e                	sw	t6,28(sp)
200108dc:	d02a                	sw	a0,32(sp)
200108de:	d22e                	sw	a1,36(sp)
200108e0:	d432                	sw	a2,40(sp)
200108e2:	d636                	sw	a3,44(sp)
200108e4:	d83a                	sw	a4,48(sp)
200108e6:	da3e                	sw	a5,52(sp)
200108e8:	dc42                	sw	a6,56(sp)
200108ea:	de46                	sw	a7,60(sp)
200108ec:	00010533          	add	a0,sp,zero
200108f0:	02a000ef          	jal	2001091a <_start_trap_rust>
200108f4:	4082                	lw	ra,0(sp)
200108f6:	4292                	lw	t0,4(sp)
200108f8:	4322                	lw	t1,8(sp)
200108fa:	43b2                	lw	t2,12(sp)
200108fc:	4e42                	lw	t3,16(sp)
200108fe:	4ed2                	lw	t4,20(sp)
20010900:	4f62                	lw	t5,24(sp)
20010902:	4ff2                	lw	t6,28(sp)
20010904:	5502                	lw	a0,32(sp)
20010906:	5592                	lw	a1,36(sp)
20010908:	5622                	lw	a2,40(sp)
2001090a:	56b2                	lw	a3,44(sp)
2001090c:	5742                	lw	a4,48(sp)
2001090e:	57d2                	lw	a5,52(sp)
20010910:	5862                	lw	a6,56(sp)
20010912:	58f2                	lw	a7,60(sp)
20010914:	6121                	add	sp,sp,64
20010916:	30200073          	mret

2001091a <_start_trap_rust>:
/// `scause`/`mcause` is read to determine the cause of the trap. XLEN-1 bit indicates
/// if it's an interrupt or an exception. The result is examined and ExceptionHandler
/// or one of the core interrupt handlers is called.
#[link_section = ".trap.rust"]
#[export_name = "_start_trap_rust"]
pub extern "C" fn start_trap_rust(trap_frame: *const TrapFrame) {
2001091a:	1101                	add	sp,sp,-32
2001091c:	ce06                	sw	ra,28(sp)
2001091e:	c62a                	sw	a0,12(sp)
20010920:	ca2a                	sw	a0,20(sp)
        fn ExceptionHandler(trap_frame: &TrapFrame);
        fn DefaultHandler();
    }

    unsafe {
        let cause = xcause::read();
20010922:	00002097          	auipc	ra,0x2
20010926:	d54080e7          	jalr	-684(ra) # 20012676 <riscv::register::mcause::read>
2001092a:	c82a                	sw	a0,16(sp)
2001092c:	0808                	add	a0,sp,16

        if cause.is_exception() {
2001092e:	00002097          	auipc	ra,0x2
20010932:	d6c080e7          	jalr	-660(ra) # 2001269a <riscv::register::mcause::Mcause::is_exception>
20010936:	e919                	bnez	a0,2001094c <_start_trap_rust+0x32>
20010938:	a009                	j	2001093a <_start_trap_rust+0x20>
2001093a:	0808                	add	a0,sp,16
            ExceptionHandler(&*trap_frame)
        } else {
            if cause.code() < __INTERRUPTS.len() {
2001093c:	00002097          	auipc	ra,0x2
20010940:	d88080e7          	jalr	-632(ra) # 200126c4 <riscv::register::mcause::Mcause::code>
20010944:	45b1                	li	a1,12
20010946:	00b56e63          	bltu	a0,a1,20010962 <_start_trap_rust+0x48>
2001094a:	a039                	j	20010958 <_start_trap_rust+0x3e>
            ExceptionHandler(&*trap_frame)
2001094c:	4532                	lw	a0,12(sp)
2001094e:	00002097          	auipc	ra,0x2
20010952:	da4080e7          	jalr	-604(ra) # 200126f2 <DefaultExceptionHandler>
20010956:	a00d                	j	20010978 <_start_trap_rust+0x5e>
                    DefaultHandler();
                } else {
                    (h.handler)();
                }
            } else {
                DefaultHandler();
20010958:	00002097          	auipc	ra,0x2
2001095c:	da2080e7          	jalr	-606(ra) # 200126fa <DefaultInterruptHandler>
20010960:	a821                	j	20010978 <_start_trap_rust+0x5e>
20010962:	0808                	add	a0,sp,16
                let h = &__INTERRUPTS[cause.code()];
20010964:	00002097          	auipc	ra,0x2
20010968:	d60080e7          	jalr	-672(ra) # 200126c4 <riscv::register::mcause::Mcause::code>
2001096c:	85aa                	mv	a1,a0
2001096e:	c42e                	sw	a1,8(sp)
20010970:	45b1                	li	a1,12
20010972:	00b56663          	bltu	a0,a1,2001097e <_start_trap_rust+0x64>
20010976:	a00d                	j	20010998 <_start_trap_rust+0x7e>
            }
        }
    }
}
20010978:	40f2                	lw	ra,28(sp)
2001097a:	6105                	add	sp,sp,32
2001097c:	8082                	ret
                let h = &__INTERRUPTS[cause.code()];
2001097e:	4522                	lw	a0,8(sp)
20010980:	00251593          	sll	a1,a0,0x2
20010984:	20018537          	lui	a0,0x20018
20010988:	e1850513          	add	a0,a0,-488 # 20017e18 <__INTERRUPTS>
2001098c:	952e                	add	a0,a0,a1
2001098e:	c22a                	sw	a0,4(sp)
20010990:	cc2a                	sw	a0,24(sp)
                if h.reserved == 0 {
20010992:	4108                	lw	a0,0(a0)
20010994:	cd09                	beqz	a0,200109ae <_start_trap_rust+0x94>
20010996:	a00d                	j	200109b8 <_start_trap_rust+0x9e>
                let h = &__INTERRUPTS[cause.code()];
20010998:	4522                	lw	a0,8(sp)
2001099a:	200185b7          	lui	a1,0x20018
2001099e:	e0858613          	add	a2,a1,-504 # 20017e08 <.L__unnamed_2>
200109a2:	45b1                	li	a1,12
200109a4:	00005097          	auipc	ra,0x5
200109a8:	b14080e7          	jalr	-1260(ra) # 200154b8 <core::panicking::panic_bounds_check>
200109ac:	0000                	unimp
                    DefaultHandler();
200109ae:	00002097          	auipc	ra,0x2
200109b2:	d4c080e7          	jalr	-692(ra) # 200126fa <DefaultInterruptHandler>
200109b6:	b7c9                	j	20010978 <_start_trap_rust+0x5e>
                    (h.handler)();
200109b8:	4512                	lw	a0,4(sp)
200109ba:	4108                	lw	a0,0(a0)
200109bc:	9502                	jalr	a0
200109be:	bf6d                	j	20010978 <_start_trap_rust+0x5e>

200109c0 <core::ops::function::FnOnce::call_once>:
200109c0:	1141                	add	sp,sp,-16
200109c2:	00e10513          	add	a0,sp,14
200109c6:	00001097          	auipc	ra,0x1
200109ca:	93a080e7          	jalr	-1734(ra) # 20011300 <yarr2::__risc_v_rt__main::{{closure}}>
200109ce:	0000                	unimp
	...

200109d2 <core::ops::function::FnOnce::call_once>:
200109d2:	1141                	add	sp,sp,-16
200109d4:	00e10513          	add	a0,sp,14
200109d8:	00001097          	auipc	ra,0x1
200109dc:	8b4080e7          	jalr	-1868(ra) # 2001128c <yarr2::__risc_v_rt__main::{{closure}}>
200109e0:	0000                	unimp
	...

200109e4 <core::ops::function::FnOnce::call_once>:
200109e4:	1141                	add	sp,sp,-16
200109e6:	c606                	sw	ra,12(sp)
200109e8:	00004097          	auipc	ra,0x4
200109ec:	60c080e7          	jalr	1548(ra) # 20014ff4 <<e310x_hal::device::DeviceResources as core::convert::From<e310x::Peripherals>>::from>
200109f0:	40b2                	lw	ra,12(sp)
200109f2:	0141                	add	sp,sp,16
200109f4:	8082                	ret

200109f6 <core::ops::function::FnOnce::call_once>:
200109f6:	1141                	add	sp,sp,-16
200109f8:	00e10513          	add	a0,sp,14
200109fc:	00001097          	auipc	ra,0x1
20010a00:	978080e7          	jalr	-1672(ra) # 20011374 <yarr2::__risc_v_rt__main::{{closure}}>
20010a04:	0000                	unimp
	...

20010a08 <core::ptr::drop_in_place<e310x_hal::gpio::gpio0::Pin19<e310x_hal::gpio::Output<e310x_hal::gpio::Regular<e310x_hal::gpio::Invert>>>>>:
20010a08:	1141                	add	sp,sp,-16
20010a0a:	c62a                	sw	a0,12(sp)
20010a0c:	0141                	add	sp,sp,16
20010a0e:	8082                	ret

20010a10 <core::ptr::drop_in_place<e310x_hal::gpio::gpio0::Pin21<e310x_hal::gpio::Output<e310x_hal::gpio::Regular<e310x_hal::gpio::Invert>>>>>:
20010a10:	1141                	add	sp,sp,-16
20010a12:	c62a                	sw	a0,12(sp)
20010a14:	0141                	add	sp,sp,16
20010a16:	8082                	ret

20010a18 <core::ptr::drop_in_place<e310x_hal::gpio::gpio0::Pin22<e310x_hal::gpio::Output<e310x_hal::gpio::Regular<e310x_hal::gpio::Invert>>>>>:
20010a18:	1141                	add	sp,sp,-16
20010a1a:	c62a                	sw	a0,12(sp)
20010a1c:	0141                	add	sp,sp,16
20010a1e:	8082                	ret

20010a20 <core::ptr::drop_in_place<u32>>:
20010a20:	1141                	add	sp,sp,-16
20010a22:	c62a                	sw	a0,12(sp)
20010a24:	0141                	add	sp,sp,16
20010a26:	8082                	ret

20010a28 <core::ptr::drop_in_place<bool>>:
20010a28:	1141                	add	sp,sp,-16
20010a2a:	c62a                	sw	a0,12(sp)
20010a2c:	0141                	add	sp,sp,16
20010a2e:	8082                	ret

20010a30 <core::ptr::drop_in_place<&str>>:
20010a30:	1141                	add	sp,sp,-16
20010a32:	c62a                	sw	a0,12(sp)
20010a34:	0141                	add	sp,sp,16
20010a36:	8082                	ret

20010a38 <core::ptr::drop_in_place<&u32>>:
20010a38:	1141                	add	sp,sp,-16
20010a3a:	c62a                	sw	a0,12(sp)
20010a3c:	0141                	add	sp,sp,16
20010a3e:	8082                	ret

20010a40 <core::ptr::drop_in_place<&bool>>:
20010a40:	1141                	add	sp,sp,-16
20010a42:	c62a                	sw	a0,12(sp)
20010a44:	0141                	add	sp,sp,16
20010a46:	8082                	ret

20010a48 <core::ptr::drop_in_place<&usize>>:
20010a48:	1141                	add	sp,sp,-16
20010a4a:	c62a                	sw	a0,12(sp)
20010a4c:	0141                	add	sp,sp,16
20010a4e:	8082                	ret

20010a50 <core::ptr::drop_in_place<&&core::fmt::Arguments>>:
20010a50:	1141                	add	sp,sp,-16
20010a52:	c62a                	sw	a0,12(sp)
20010a54:	0141                	add	sp,sp,16
20010a56:	8082                	ret

20010a58 <core::ptr::drop_in_place<critical_section::with::Guard>>:
20010a58:	1141                	add	sp,sp,-16
20010a5a:	c606                	sw	ra,12(sp)
20010a5c:	c02a                	sw	a0,0(sp)
20010a5e:	c22a                	sw	a0,4(sp)
    }

    impl Drop for Guard {
        #[inline(always)]
        fn drop(&mut self) {
            unsafe { release(self.state) }
20010a60:	00054503          	lbu	a0,0(a0)
20010a64:	00a105a3          	sb	a0,11(sp)
    _critical_section_1_0_release(restore_state.0)
20010a68:	00004097          	auipc	ra,0x4
20010a6c:	71c080e7          	jalr	1820(ra) # 20015184 <_critical_section_1_0_release>
20010a70:	40b2                	lw	ra,12(sp)
20010a72:	0141                	add	sp,sp,16
20010a74:	8082                	ret

20010a76 <core::ptr::drop_in_place<&core::panic::location::Location>>:
20010a76:	1141                	add	sp,sp,-16
20010a78:	c62a                	sw	a0,12(sp)
20010a7a:	0141                	add	sp,sp,16
20010a7c:	8082                	ret

20010a7e <core::ptr::drop_in_place<&dyn core::any::Any+core::marker::Send>>:
20010a7e:	1141                	add	sp,sp,-16
20010a80:	c62a                	sw	a0,12(sp)
20010a82:	0141                	add	sp,sp,16
20010a84:	8082                	ret

20010a86 <core::ptr::drop_in_place<core::option::Option<&core::fmt::Arguments>>>:
20010a86:	1141                	add	sp,sp,-16
20010a88:	c62a                	sw	a0,12(sp)
20010a8a:	0141                	add	sp,sp,16
20010a8c:	8082                	ret

20010a8e <riscv::register::mcause::read>:
    ($register:ident, $csr_number:literal) => {
        read_csr!($csr_number);

        /// Reads the CSR
        #[inline]
        pub fn read() -> $register {
20010a8e:	1141                	add	sp,sp,-16
            $register {
                bits: unsafe { _read() },
20010a90:	c606                	sw	ra,12(sp)
20010a92:	00000097          	auipc	ra,0x0
20010a96:	012080e7          	jalr	18(ra) # 20010aa4 <riscv::register::mcause::_read>
            $register {
20010a9a:	c42a                	sw	a0,8(sp)
            }
        }
20010a9c:	4522                	lw	a0,8(sp)
20010a9e:	40b2                	lw	ra,12(sp)
20010aa0:	0141                	add	sp,sp,16
20010aa2:	8082                	ret

20010aa4 <riscv::register::mcause::_read>:
        unsafe fn _read() -> usize {
20010aa4:	1141                	add	sp,sp,-16
                    core::arch::asm!(concat!("csrrs {0}, ", stringify!($csr_number), ", x0"), out(reg) r);
20010aa6:	34202573          	csrr	a0,mcause
20010aaa:	c62a                	sw	a0,12(sp)
                    r
20010aac:	4532                	lw	a0,12(sp)
        }
20010aae:	0141                	add	sp,sp,16
20010ab0:	8082                	ret

20010ab2 <riscv::register::mcause::Mcause::is_interrupt>:
        }
    }

    /// Is trap cause an interrupt.
    #[inline]
    pub fn is_interrupt(&self) -> bool {
20010ab2:	1141                	add	sp,sp,-16
20010ab4:	c62a                	sw	a0,12(sp)
        match () {
            #[cfg(target_pointer_width = "32")]
            () => self.bits & (1 << 31) == 1 << 31,
20010ab6:	4108                	lw	a0,0(a0)
20010ab8:	817d                	srl	a0,a0,0x1f
20010aba:	157d                	add	a0,a0,-1
20010abc:	00153513          	seqz	a0,a0
            #[cfg(target_pointer_width = "64")]
            () => self.bits & (1 << 63) == 1 << 63,
            #[cfg(target_pointer_width = "128")]
            () => self.bits & (1 << 127) == 1 << 127,
        }
    }
20010ac0:	0141                	add	sp,sp,16
20010ac2:	8082                	ret

20010ac4 <riscv::register::mcause::Mcause::code>:
    pub fn code(&self) -> usize {
20010ac4:	1141                	add	sp,sp,-16
20010ac6:	c62a                	sw	a0,12(sp)
            () => self.bits & !(1 << 31),
20010ac8:	4108                	lw	a0,0(a0)
20010aca:	0506                	sll	a0,a0,0x1
20010acc:	8105                	srl	a0,a0,0x1
    }
20010ace:	0141                	add	sp,sp,16
20010ad0:	8082                	ret

20010ad2 <riscv::register::mcause::Mcause::cause>:
    pub fn cause(&self) -> Trap {
20010ad2:	1141                	add	sp,sp,-16
20010ad4:	c606                	sw	ra,12(sp)
20010ad6:	c02a                	sw	a0,0(sp)
20010ad8:	c42a                	sw	a0,8(sp)
        if self.is_interrupt() {
20010ada:	00000097          	auipc	ra,0x0
20010ade:	fd8080e7          	jalr	-40(ra) # 20010ab2 <riscv::register::mcause::Mcause::is_interrupt>
20010ae2:	e10d                	bnez	a0,20010b04 <riscv::register::mcause::Mcause::cause+0x32>
20010ae4:	a009                	j	20010ae6 <riscv::register::mcause::Mcause::cause+0x14>
            Trap::Exception(Exception::from(self.code()))
20010ae6:	4502                	lw	a0,0(sp)
20010ae8:	00000097          	auipc	ra,0x0
20010aec:	fdc080e7          	jalr	-36(ra) # 20010ac4 <riscv::register::mcause::Mcause::code>
20010af0:	00000097          	auipc	ra,0x0
20010af4:	040080e7          	jalr	64(ra) # 20010b30 <riscv::register::mcause::Exception::from>
20010af8:	00a103a3          	sb	a0,7(sp)
20010afc:	4505                	li	a0,1
20010afe:	00a10323          	sb	a0,6(sp)
        if self.is_interrupt() {
20010b02:	a005                	j	20010b22 <riscv::register::mcause::Mcause::cause+0x50>
            Trap::Interrupt(Interrupt::from(self.code()))
20010b04:	4502                	lw	a0,0(sp)
20010b06:	00000097          	auipc	ra,0x0
20010b0a:	fbe080e7          	jalr	-66(ra) # 20010ac4 <riscv::register::mcause::Mcause::code>
20010b0e:	00000097          	auipc	ra,0x0
20010b12:	0c4080e7          	jalr	196(ra) # 20010bd2 <riscv::register::mcause::Interrupt::from>
20010b16:	00a103a3          	sb	a0,7(sp)
20010b1a:	4501                	li	a0,0
20010b1c:	00a10323          	sb	a0,6(sp)
        if self.is_interrupt() {
20010b20:	a009                	j	20010b22 <riscv::register::mcause::Mcause::cause+0x50>
    }
20010b22:	00614503          	lbu	a0,6(sp)
20010b26:	00714583          	lbu	a1,7(sp)
20010b2a:	40b2                	lw	ra,12(sp)
20010b2c:	0141                	add	sp,sp,16
20010b2e:	8082                	ret

20010b30 <riscv::register::mcause::Exception::from>:
    pub fn from(nr: usize) -> Self {
20010b30:	1141                	add	sp,sp,-16
20010b32:	85aa                	mv	a1,a0
20010b34:	c62e                	sw	a1,12(sp)
        match nr {
20010b36:	852e                	mv	a0,a1
20010b38:	c22a                	sw	a0,4(sp)
20010b3a:	453d                	li	a0,15
20010b3c:	00b56b63          	bltu	a0,a1,20010b52 <.LBB5_2>
20010b40:	4512                	lw	a0,4(sp)
20010b42:	050a                	sll	a0,a0,0x2
20010b44:	200175b7          	lui	a1,0x20017
20010b48:	3e058593          	add	a1,a1,992 # 200173e0 <.LJTI5_0>
20010b4c:	952e                	add	a0,a0,a1
20010b4e:	4108                	lw	a0,0(a0)
20010b50:	8502                	jr	a0

20010b52 <.LBB5_2>:
20010b52:	4539                	li	a0,14
            _ => Exception::Unknown,
20010b54:	00a105a3          	sb	a0,11(sp)
20010b58:	a88d                	j	20010bca <.LBB5_16+0x8>

20010b5a <.LBB5_3>:
20010b5a:	4501                	li	a0,0
            0 => Exception::InstructionMisaligned,
20010b5c:	00a105a3          	sb	a0,11(sp)
20010b60:	a0ad                	j	20010bca <.LBB5_16+0x8>

20010b62 <.LBB5_4>:
20010b62:	4505                	li	a0,1
            1 => Exception::InstructionFault,
20010b64:	00a105a3          	sb	a0,11(sp)
20010b68:	a08d                	j	20010bca <.LBB5_16+0x8>

20010b6a <.LBB5_5>:
20010b6a:	4509                	li	a0,2
            2 => Exception::IllegalInstruction,
20010b6c:	00a105a3          	sb	a0,11(sp)
20010b70:	a8a9                	j	20010bca <.LBB5_16+0x8>

20010b72 <.LBB5_6>:
20010b72:	450d                	li	a0,3
            3 => Exception::Breakpoint,
20010b74:	00a105a3          	sb	a0,11(sp)
20010b78:	a889                	j	20010bca <.LBB5_16+0x8>

20010b7a <.LBB5_7>:
20010b7a:	4511                	li	a0,4
            4 => Exception::LoadMisaligned,
20010b7c:	00a105a3          	sb	a0,11(sp)
20010b80:	a0a9                	j	20010bca <.LBB5_16+0x8>

20010b82 <.LBB5_8>:
20010b82:	4515                	li	a0,5
            5 => Exception::LoadFault,
20010b84:	00a105a3          	sb	a0,11(sp)
20010b88:	a089                	j	20010bca <.LBB5_16+0x8>

20010b8a <.LBB5_9>:
20010b8a:	4519                	li	a0,6
            6 => Exception::StoreMisaligned,
20010b8c:	00a105a3          	sb	a0,11(sp)
20010b90:	a82d                	j	20010bca <.LBB5_16+0x8>

20010b92 <.LBB5_10>:
20010b92:	451d                	li	a0,7
            7 => Exception::StoreFault,
20010b94:	00a105a3          	sb	a0,11(sp)
20010b98:	a80d                	j	20010bca <.LBB5_16+0x8>

20010b9a <.LBB5_11>:
20010b9a:	4521                	li	a0,8
            8 => Exception::UserEnvCall,
20010b9c:	00a105a3          	sb	a0,11(sp)
20010ba0:	a02d                	j	20010bca <.LBB5_16+0x8>

20010ba2 <.LBB5_12>:
20010ba2:	4525                	li	a0,9
            9 => Exception::SupervisorEnvCall,
20010ba4:	00a105a3          	sb	a0,11(sp)
20010ba8:	a00d                	j	20010bca <.LBB5_16+0x8>

20010baa <.LBB5_13>:
20010baa:	4529                	li	a0,10
            11 => Exception::MachineEnvCall,
20010bac:	00a105a3          	sb	a0,11(sp)
20010bb0:	a829                	j	20010bca <.LBB5_16+0x8>

20010bb2 <.LBB5_14>:
20010bb2:	452d                	li	a0,11
            12 => Exception::InstructionPageFault,
20010bb4:	00a105a3          	sb	a0,11(sp)
20010bb8:	a809                	j	20010bca <.LBB5_16+0x8>

20010bba <.LBB5_15>:
20010bba:	4531                	li	a0,12
            13 => Exception::LoadPageFault,
20010bbc:	00a105a3          	sb	a0,11(sp)
20010bc0:	a029                	j	20010bca <.LBB5_16+0x8>

20010bc2 <.LBB5_16>:
20010bc2:	4535                	li	a0,13
            15 => Exception::StorePageFault,
20010bc4:	00a105a3          	sb	a0,11(sp)
20010bc8:	a009                	j	20010bca <.LBB5_16+0x8>
    }
20010bca:	00b14503          	lbu	a0,11(sp)
20010bce:	0141                	add	sp,sp,16
20010bd0:	8082                	ret

20010bd2 <riscv::register::mcause::Interrupt::from>:
    pub fn from(nr: usize) -> Self {
20010bd2:	1141                	add	sp,sp,-16
20010bd4:	85aa                	mv	a1,a0
20010bd6:	c62e                	sw	a1,12(sp)
        match nr {
20010bd8:	852e                	mv	a0,a1
20010bda:	c22a                	sw	a0,4(sp)
20010bdc:	452d                	li	a0,11
20010bde:	00b56b63          	bltu	a0,a1,20010bf4 <.LBB6_2>
20010be2:	4512                	lw	a0,4(sp)
20010be4:	050a                	sll	a0,a0,0x2
20010be6:	200175b7          	lui	a1,0x20017
20010bea:	42058593          	add	a1,a1,1056 # 20017420 <.LJTI6_0>
20010bee:	952e                	add	a0,a0,a1
20010bf0:	4108                	lw	a0,0(a0)
20010bf2:	8502                	jr	a0

20010bf4 <.LBB6_2>:
20010bf4:	4525                	li	a0,9
            _ => Interrupt::Unknown,
20010bf6:	00a105a3          	sb	a0,11(sp)
20010bfa:	a0a9                	j	20010c44 <.LBB6_11+0x8>

20010bfc <.LBB6_3>:
20010bfc:	4501                	li	a0,0
            0 => Interrupt::UserSoft,
20010bfe:	00a105a3          	sb	a0,11(sp)
20010c02:	a089                	j	20010c44 <.LBB6_11+0x8>

20010c04 <.LBB6_4>:
20010c04:	4505                	li	a0,1
            1 => Interrupt::SupervisorSoft,
20010c06:	00a105a3          	sb	a0,11(sp)
20010c0a:	a82d                	j	20010c44 <.LBB6_11+0x8>

20010c0c <.LBB6_5>:
20010c0c:	4509                	li	a0,2
            3 => Interrupt::MachineSoft,
20010c0e:	00a105a3          	sb	a0,11(sp)
20010c12:	a80d                	j	20010c44 <.LBB6_11+0x8>

20010c14 <.LBB6_6>:
20010c14:	450d                	li	a0,3
            4 => Interrupt::UserTimer,
20010c16:	00a105a3          	sb	a0,11(sp)
20010c1a:	a02d                	j	20010c44 <.LBB6_11+0x8>

20010c1c <.LBB6_7>:
20010c1c:	4511                	li	a0,4
            5 => Interrupt::SupervisorTimer,
20010c1e:	00a105a3          	sb	a0,11(sp)
20010c22:	a00d                	j	20010c44 <.LBB6_11+0x8>

20010c24 <.LBB6_8>:
20010c24:	4515                	li	a0,5
            7 => Interrupt::MachineTimer,
20010c26:	00a105a3          	sb	a0,11(sp)
20010c2a:	a829                	j	20010c44 <.LBB6_11+0x8>

20010c2c <.LBB6_9>:
20010c2c:	4519                	li	a0,6
            8 => Interrupt::UserExternal,
20010c2e:	00a105a3          	sb	a0,11(sp)
20010c32:	a809                	j	20010c44 <.LBB6_11+0x8>

20010c34 <.LBB6_10>:
20010c34:	451d                	li	a0,7
            9 => Interrupt::SupervisorExternal,
20010c36:	00a105a3          	sb	a0,11(sp)
20010c3a:	a029                	j	20010c44 <.LBB6_11+0x8>

20010c3c <.LBB6_11>:
20010c3c:	4521                	li	a0,8
            11 => Interrupt::MachineExternal,
20010c3e:	00a105a3          	sb	a0,11(sp)
20010c42:	a009                	j	20010c44 <.LBB6_11+0x8>
    }
20010c44:	00b14503          	lbu	a0,11(sp)
20010c48:	0141                	add	sp,sp,16
20010c4a:	8082                	ret

20010c4c <<riscv::register::mcause::Mcause as core::fmt::Debug>::fmt>:
#[derive(Clone, Copy, Debug)]
20010c4c:	1101                	add	sp,sp,-32
20010c4e:	ce06                	sw	ra,28(sp)
20010c50:	c62e                	sw	a1,12(sp)
20010c52:	85aa                	mv	a1,a0
20010c54:	4532                	lw	a0,12(sp)
20010c56:	ca2e                	sw	a1,20(sp)
20010c58:	cc2a                	sw	a0,24(sp)
    bits: usize,
20010c5a:	c82e                	sw	a1,16(sp)
#[derive(Clone, Copy, Debug)]
20010c5c:	200175b7          	lui	a1,0x20017
20010c60:	4b458593          	add	a1,a1,1204 # 200174b4 <.L__unnamed_2>
20010c64:	20017637          	lui	a2,0x20017
20010c68:	4ba60693          	add	a3,a2,1210 # 200174ba <.L__unnamed_2+0x6>
20010c6c:	20017637          	lui	a2,0x20017
20010c70:	4dc60813          	add	a6,a2,1244 # 200174dc <.L__unnamed_1>
20010c74:	4619                	li	a2,6
20010c76:	4711                	li	a4,4
20010c78:	081c                	add	a5,sp,16
20010c7a:	00005097          	auipc	ra,0x5
20010c7e:	39a080e7          	jalr	922(ra) # 20016014 <core::fmt::Formatter::debug_struct_field1_finish>
20010c82:	40f2                	lw	ra,28(sp)
20010c84:	6105                	add	sp,sp,32
20010c86:	8082                	ret

20010c88 <<riscv::register::mcause::Exception as core::fmt::Debug>::fmt>:
#[derive(Copy, Clone, Debug, PartialEq, Eq)]
20010c88:	1101                	add	sp,sp,-32
20010c8a:	ce06                	sw	ra,28(sp)
20010c8c:	c22e                	sw	a1,4(sp)
20010c8e:	ca2a                	sw	a0,20(sp)
20010c90:	cc2e                	sw	a1,24(sp)
20010c92:	00054503          	lbu	a0,0(a0)
20010c96:	c42a                	sw	a0,8(sp)
20010c98:	4522                	lw	a0,8(sp)
20010c9a:	050a                	sll	a0,a0,0x2
20010c9c:	200175b7          	lui	a1,0x20017
20010ca0:	45058593          	add	a1,a1,1104 # 20017450 <.LJTI8_0>
20010ca4:	952e                	add	a0,a0,a1
20010ca6:	4108                	lw	a0,0(a0)
20010ca8:	8502                	jr	a0
	...

20010cac <.LBB8_3>:
20010cac:	20017537          	lui	a0,0x20017
20010cb0:	4ec50513          	add	a0,a0,1260 # 200174ec <.L__unnamed_4>
20010cb4:	c62a                	sw	a0,12(sp)
20010cb6:	4555                	li	a0,21
20010cb8:	c82a                	sw	a0,16(sp)
20010cba:	a0cd                	j	20010d9c <.LBB8_17+0x10>

20010cbc <.LBB8_4>:
20010cbc:	20017537          	lui	a0,0x20017
20010cc0:	51150513          	add	a0,a0,1297 # 20017511 <.L__unnamed_4+0x25>
20010cc4:	c62a                	sw	a0,12(sp)
20010cc6:	4541                	li	a0,16
20010cc8:	c82a                	sw	a0,16(sp)
20010cca:	a8c9                	j	20010d9c <.LBB8_17+0x10>

20010ccc <.LBB8_5>:
20010ccc:	20017537          	lui	a0,0x20017
20010cd0:	54150513          	add	a0,a0,1345 # 20017541 <.L__unnamed_6>
20010cd4:	c62a                	sw	a0,12(sp)
20010cd6:	4549                	li	a0,18
20010cd8:	c82a                	sw	a0,16(sp)
20010cda:	a0c9                	j	20010d9c <.LBB8_17+0x10>

20010cdc <.LBB8_6>:
20010cdc:	20017537          	lui	a0,0x20017
20010ce0:	55350513          	add	a0,a0,1363 # 20017553 <.L__unnamed_7>
20010ce4:	c62a                	sw	a0,12(sp)
20010ce6:	4529                	li	a0,10
20010ce8:	c82a                	sw	a0,16(sp)
20010cea:	a84d                	j	20010d9c <.LBB8_17+0x10>

20010cec <.LBB8_7>:
20010cec:	20017537          	lui	a0,0x20017
20010cf0:	55d50513          	add	a0,a0,1373 # 2001755d <.L__unnamed_8>
20010cf4:	c62a                	sw	a0,12(sp)
20010cf6:	4539                	li	a0,14
20010cf8:	c82a                	sw	a0,16(sp)
20010cfa:	a04d                	j	20010d9c <.LBB8_17+0x10>

20010cfc <.LBB8_8>:
20010cfc:	20017537          	lui	a0,0x20017
20010d00:	56b50513          	add	a0,a0,1387 # 2001756b <.L__unnamed_9>
20010d04:	c62a                	sw	a0,12(sp)
20010d06:	4525                	li	a0,9
20010d08:	c82a                	sw	a0,16(sp)
20010d0a:	a849                	j	20010d9c <.LBB8_17+0x10>

20010d0c <.LBB8_9>:
20010d0c:	20017537          	lui	a0,0x20017
20010d10:	57450513          	add	a0,a0,1396 # 20017574 <.L__unnamed_10>
20010d14:	c62a                	sw	a0,12(sp)
20010d16:	453d                	li	a0,15
20010d18:	c82a                	sw	a0,16(sp)
20010d1a:	a049                	j	20010d9c <.LBB8_17+0x10>

20010d1c <.LBB8_10>:
20010d1c:	20017537          	lui	a0,0x20017
20010d20:	58350513          	add	a0,a0,1411 # 20017583 <.L__unnamed_11>
20010d24:	c62a                	sw	a0,12(sp)
20010d26:	4529                	li	a0,10
20010d28:	c82a                	sw	a0,16(sp)
20010d2a:	a88d                	j	20010d9c <.LBB8_17+0x10>

20010d2c <.LBB8_11>:
20010d2c:	20017537          	lui	a0,0x20017
20010d30:	58d50513          	add	a0,a0,1421 # 2001758d <.L__unnamed_12>
20010d34:	c62a                	sw	a0,12(sp)
20010d36:	452d                	li	a0,11
20010d38:	c82a                	sw	a0,16(sp)
20010d3a:	a08d                	j	20010d9c <.LBB8_17+0x10>

20010d3c <.LBB8_12>:
20010d3c:	20017537          	lui	a0,0x20017
20010d40:	59850513          	add	a0,a0,1432 # 20017598 <.L__unnamed_13>
20010d44:	c62a                	sw	a0,12(sp)
20010d46:	4545                	li	a0,17
20010d48:	c82a                	sw	a0,16(sp)
20010d4a:	a889                	j	20010d9c <.LBB8_17+0x10>

20010d4c <.LBB8_13>:
20010d4c:	20017537          	lui	a0,0x20017
20010d50:	5a950513          	add	a0,a0,1449 # 200175a9 <.L__unnamed_14>
20010d54:	c62a                	sw	a0,12(sp)
20010d56:	4539                	li	a0,14
20010d58:	c82a                	sw	a0,16(sp)
20010d5a:	a089                	j	20010d9c <.LBB8_17+0x10>

20010d5c <.LBB8_14>:
20010d5c:	20017537          	lui	a0,0x20017
20010d60:	5b750513          	add	a0,a0,1463 # 200175b7 <.L__unnamed_15>
20010d64:	c62a                	sw	a0,12(sp)
20010d66:	4551                	li	a0,20
20010d68:	c82a                	sw	a0,16(sp)
20010d6a:	a80d                	j	20010d9c <.LBB8_17+0x10>

20010d6c <.LBB8_15>:
20010d6c:	20017537          	lui	a0,0x20017
20010d70:	5cb50513          	add	a0,a0,1483 # 200175cb <.L__unnamed_16>
20010d74:	c62a                	sw	a0,12(sp)
20010d76:	4535                	li	a0,13
20010d78:	c82a                	sw	a0,16(sp)
20010d7a:	a00d                	j	20010d9c <.LBB8_17+0x10>

20010d7c <.LBB8_16>:
20010d7c:	20017537          	lui	a0,0x20017
20010d80:	5d850513          	add	a0,a0,1496 # 200175d8 <.L__unnamed_17>
20010d84:	c62a                	sw	a0,12(sp)
20010d86:	4539                	li	a0,14
20010d88:	c82a                	sw	a0,16(sp)
20010d8a:	a809                	j	20010d9c <.LBB8_17+0x10>

20010d8c <.LBB8_17>:
20010d8c:	20017537          	lui	a0,0x20017
20010d90:	5e650513          	add	a0,a0,1510 # 200175e6 <.L__unnamed_18>
20010d94:	c62a                	sw	a0,12(sp)
20010d96:	451d                	li	a0,7
20010d98:	c82a                	sw	a0,16(sp)
20010d9a:	a009                	j	20010d9c <.LBB8_17+0x10>
20010d9c:	4512                	lw	a0,4(sp)
20010d9e:	45b2                	lw	a1,12(sp)
20010da0:	4642                	lw	a2,16(sp)
20010da2:	00005097          	auipc	ra,0x5
20010da6:	26a080e7          	jalr	618(ra) # 2001600c <core::fmt::Formatter::write_str>
20010daa:	40f2                	lw	ra,28(sp)
20010dac:	6105                	add	sp,sp,32
20010dae:	8082                	ret

20010db0 <<riscv::register::mcause::Interrupt as core::fmt::Debug>::fmt>:
#[derive(Copy, Clone, Debug, PartialEq, Eq)]
20010db0:	1101                	add	sp,sp,-32
20010db2:	ce06                	sw	ra,28(sp)
20010db4:	c22e                	sw	a1,4(sp)
20010db6:	ca2a                	sw	a0,20(sp)
20010db8:	cc2e                	sw	a1,24(sp)
20010dba:	00054503          	lbu	a0,0(a0)
20010dbe:	c42a                	sw	a0,8(sp)
20010dc0:	4522                	lw	a0,8(sp)
20010dc2:	050a                	sll	a0,a0,0x2
20010dc4:	200175b7          	lui	a1,0x20017
20010dc8:	48c58593          	add	a1,a1,1164 # 2001748c <.LJTI9_0>
20010dcc:	952e                	add	a0,a0,a1
20010dce:	4108                	lw	a0,0(a0)
20010dd0:	8502                	jr	a0
	...

20010dd4 <.LBB9_3>:
20010dd4:	20017537          	lui	a0,0x20017
20010dd8:	5f550513          	add	a0,a0,1525 # 200175f5 <.L__unnamed_18+0xf>
20010ddc:	c62a                	sw	a0,12(sp)
20010dde:	4521                	li	a0,8
20010de0:	c82a                	sw	a0,16(sp)
20010de2:	a849                	j	20010e74 <.LBB9_12+0x10>

20010de4 <.LBB9_4>:
20010de4:	20017537          	lui	a0,0x20017
20010de8:	60d50513          	add	a0,a0,1549 # 2001760d <.L__unnamed_20>
20010dec:	c62a                	sw	a0,12(sp)
20010dee:	4539                	li	a0,14
20010df0:	c82a                	sw	a0,16(sp)
20010df2:	a049                	j	20010e74 <.LBB9_12+0x10>

20010df4 <.LBB9_5>:
20010df4:	20017537          	lui	a0,0x20017
20010df8:	61b50513          	add	a0,a0,1563 # 2001761b <.L__unnamed_21>
20010dfc:	c62a                	sw	a0,12(sp)
20010dfe:	452d                	li	a0,11
20010e00:	c82a                	sw	a0,16(sp)
20010e02:	a88d                	j	20010e74 <.LBB9_12+0x10>

20010e04 <.LBB9_6>:
20010e04:	20017537          	lui	a0,0x20017
20010e08:	62650513          	add	a0,a0,1574 # 20017626 <.L__unnamed_22>
20010e0c:	c62a                	sw	a0,12(sp)
20010e0e:	4525                	li	a0,9
20010e10:	c82a                	sw	a0,16(sp)
20010e12:	a08d                	j	20010e74 <.LBB9_12+0x10>

20010e14 <.LBB9_7>:
20010e14:	20017537          	lui	a0,0x20017
20010e18:	62f50513          	add	a0,a0,1583 # 2001762f <.L__unnamed_23>
20010e1c:	c62a                	sw	a0,12(sp)
20010e1e:	453d                	li	a0,15
20010e20:	c82a                	sw	a0,16(sp)
20010e22:	a889                	j	20010e74 <.LBB9_12+0x10>

20010e24 <.LBB9_8>:
20010e24:	20017537          	lui	a0,0x20017
20010e28:	63e50513          	add	a0,a0,1598 # 2001763e <.L__unnamed_24>
20010e2c:	c62a                	sw	a0,12(sp)
20010e2e:	4531                	li	a0,12
20010e30:	c82a                	sw	a0,16(sp)
20010e32:	a089                	j	20010e74 <.LBB9_12+0x10>

20010e34 <.LBB9_9>:
20010e34:	20017537          	lui	a0,0x20017
20010e38:	64a50513          	add	a0,a0,1610 # 2001764a <.L__unnamed_25>
20010e3c:	c62a                	sw	a0,12(sp)
20010e3e:	4531                	li	a0,12
20010e40:	c82a                	sw	a0,16(sp)
20010e42:	a80d                	j	20010e74 <.LBB9_12+0x10>

20010e44 <.LBB9_10>:
20010e44:	20017537          	lui	a0,0x20017
20010e48:	65650513          	add	a0,a0,1622 # 20017656 <.L__unnamed_26>
20010e4c:	c62a                	sw	a0,12(sp)
20010e4e:	4549                	li	a0,18
20010e50:	c82a                	sw	a0,16(sp)
20010e52:	a00d                	j	20010e74 <.LBB9_12+0x10>

20010e54 <.LBB9_11>:
20010e54:	20017537          	lui	a0,0x20017
20010e58:	66850513          	add	a0,a0,1640 # 20017668 <.L__unnamed_27>
20010e5c:	c62a                	sw	a0,12(sp)
20010e5e:	453d                	li	a0,15
20010e60:	c82a                	sw	a0,16(sp)
20010e62:	a809                	j	20010e74 <.LBB9_12+0x10>

20010e64 <.LBB9_12>:
20010e64:	20017537          	lui	a0,0x20017
20010e68:	5e650513          	add	a0,a0,1510 # 200175e6 <.L__unnamed_18>
20010e6c:	c62a                	sw	a0,12(sp)
20010e6e:	451d                	li	a0,7
20010e70:	c82a                	sw	a0,16(sp)
20010e72:	a009                	j	20010e74 <.LBB9_12+0x10>
20010e74:	4512                	lw	a0,4(sp)
20010e76:	45b2                	lw	a1,12(sp)
20010e78:	4642                	lw	a2,16(sp)
20010e7a:	00005097          	auipc	ra,0x5
20010e7e:	192080e7          	jalr	402(ra) # 2001600c <core::fmt::Formatter::write_str>
20010e82:	40f2                	lw	ra,28(sp)
20010e84:	6105                	add	sp,sp,32
20010e86:	8082                	ret

20010e88 <<core::panic::panic_info::PanicInfo as core::fmt::Debug>::fmt>:
20010e88:	715d                	add	sp,sp,-80
20010e8a:	c686                	sw	ra,76(sp)
20010e8c:	de2e                	sw	a1,60(sp)
20010e8e:	87aa                	mv	a5,a0
20010e90:	5572                	lw	a0,60(sp)
20010e92:	c2be                	sw	a5,68(sp)
20010e94:	c4aa                	sw	a0,72(sp)
20010e96:	00878613          	add	a2,a5,8
20010e9a:	00c78693          	add	a3,a5,12
20010e9e:	01078713          	add	a4,a5,16
20010ea2:	01178593          	add	a1,a5,17
20010ea6:	c0ae                	sw	a1,64(sp)
20010ea8:	200175b7          	lui	a1,0x20017
20010eac:	6f058813          	add	a6,a1,1776 # 200176f0 <.L__unnamed_5>
20010eb0:	858a                	mv	a1,sp
20010eb2:	0305ac23          	sw	a6,56(a1)
20010eb6:	04010813          	add	a6,sp,64
20010eba:	0305aa23          	sw	a6,52(a1)
20010ebe:	4849                	li	a6,18
20010ec0:	0305a823          	sw	a6,48(a1)
20010ec4:	20017837          	lui	a6,0x20017
20010ec8:	6dc80813          	add	a6,a6,1756 # 200176dc <.L__unnamed_6>
20010ecc:	0305a623          	sw	a6,44(a1)
20010ed0:	20017837          	lui	a6,0x20017
20010ed4:	6cc80813          	add	a6,a6,1740 # 200176cc <.L__unnamed_4>
20010ed8:	0305a423          	sw	a6,40(a1)
20010edc:	d1d8                	sw	a4,36(a1)
20010ede:	4729                	li	a4,10
20010ee0:	d198                	sw	a4,32(a1)
20010ee2:	20017737          	lui	a4,0x20017
20010ee6:	6c070713          	add	a4,a4,1728 # 200176c0 <.L__unnamed_7>
20010eea:	cdd8                	sw	a4,28(a1)
20010eec:	20017737          	lui	a4,0x20017
20010ef0:	6b070713          	add	a4,a4,1712 # 200176b0 <.L__unnamed_3>
20010ef4:	cd98                	sw	a4,24(a1)
20010ef6:	c9d4                	sw	a3,20(a1)
20010ef8:	46a1                	li	a3,8
20010efa:	c994                	sw	a3,16(a1)
20010efc:	200176b7          	lui	a3,0x20017
20010f00:	5fd68693          	add	a3,a3,1533 # 200175fd <.L__unnamed_18+0x17>
20010f04:	c5d4                	sw	a3,12(a1)
20010f06:	200176b7          	lui	a3,0x20017
20010f0a:	6a068693          	add	a3,a3,1696 # 200176a0 <.L__unnamed_2>
20010f0e:	c594                	sw	a3,8(a1)
20010f10:	c1d0                	sw	a2,4(a1)
20010f12:	471d                	li	a4,7
20010f14:	c198                	sw	a4,0(a1)
20010f16:	200175b7          	lui	a1,0x20017
20010f1a:	67758593          	add	a1,a1,1655 # 20017677 <.L__unnamed_9>
20010f1e:	20017637          	lui	a2,0x20017
20010f22:	68060693          	add	a3,a2,1664 # 20017680 <.L__unnamed_10>
20010f26:	20017637          	lui	a2,0x20017
20010f2a:	68860813          	add	a6,a2,1672 # 20017688 <.L__unnamed_1>
20010f2e:	20017637          	lui	a2,0x20017
20010f32:	69860893          	add	a7,a2,1688 # 20017698 <.L__unnamed_11>
20010f36:	4625                	li	a2,9
20010f38:	00005097          	auipc	ra,0x5
20010f3c:	250080e7          	jalr	592(ra) # 20016188 <core::fmt::Formatter::debug_struct_field5_finish>
20010f40:	40b6                	lw	ra,76(sp)
20010f42:	6161                	add	sp,sp,80
20010f44:	8082                	ret

20010f46 <e310x::Peripherals::take::{{closure}}>:
impl Peripherals {
    #[doc = r" Returns all the peripherals *once*."]
    #[cfg(feature = "critical-section")]
    #[inline]
    pub fn take() -> Option<Self> {
        critical_section::with(|_| {
20010f46:	1141                	add	sp,sp,-16
            if unsafe { DEVICE_PERIPHERALS } {
20010f48:	c606                	sw	ra,12(sp)
20010f4a:	80001537          	lui	a0,0x80001
20010f4e:	dad54503          	lbu	a0,-595(a0) # 80000dad <DEVICE_PERIPHERALS>
20010f52:	8905                	and	a0,a0,1
20010f54:	e911                	bnez	a0,20010f68 <e310x::Peripherals::take::{{closure}}+0x22>
20010f56:	a009                	j	20010f58 <e310x::Peripherals::take::{{closure}}+0x12>
                return None;
            }
            Some(unsafe { Peripherals::steal() })
20010f58:	00000097          	auipc	ra,0x0
20010f5c:	776080e7          	jalr	1910(ra) # 200116ce <e310x::Peripherals::steal>
20010f60:	4505                	li	a0,1
20010f62:	00a104a3          	sb	a0,9(sp)
        })
20010f66:	a029                	j	20010f70 <e310x::Peripherals::take::{{closure}}+0x2a>
20010f68:	4501                	li	a0,0
                return None;
20010f6a:	00a104a3          	sb	a0,9(sp)
        })
20010f6e:	a009                	j	20010f70 <e310x::Peripherals::take::{{closure}}+0x2a>
20010f70:	00914503          	lbu	a0,9(sp)
20010f74:	40b2                	lw	ra,12(sp)
20010f76:	0141                	add	sp,sp,16
20010f78:	8082                	ret

20010f7a <e310x_hal::gpio::PeripheralAccess::set_iof_en>:
        let p = Self::peripheral();
        let r: &AtomicU32 = unsafe { core::mem::transmute(&p.out_xor) };
        atomic_set_bit(r, index, bit);
    }

    fn set_iof_en(index: usize, bit: bool) {
20010f7a:	7139                	add	sp,sp,-64
20010f7c:	de06                	sw	ra,60(sp)
20010f7e:	862e                	mv	a2,a1
20010f80:	c432                	sw	a2,8(sp)
20010f82:	ca2a                	sw	a0,20(sp)
20010f84:	00b10da3          	sb	a1,27(sp)
20010f88:	10012637          	lui	a2,0x10012
        let p = Self::peripheral();
20010f8c:	ce32                	sw	a2,28(sp)
20010f8e:	03860613          	add	a2,a2,56 # 10012038 <.Lline_table_start1+0xffe2bc2>
        let r: &AtomicU32 = unsafe { core::mem::transmute(&p.iof_en) };
20010f92:	c632                	sw	a2,12(sp)
20010f94:	d032                	sw	a2,32(sp)
20010f96:	d632                	sw	a2,44(sp)
20010f98:	d82a                	sw	a0,48(sp)
20010f9a:	02b10ba3          	sb	a1,55(sp)
    let mask = 1 << (index & 31);
20010f9e:	897d                	and	a0,a0,31
20010fa0:	c82a                	sw	a0,16(sp)
20010fa2:	4501                	li	a0,0
20010fa4:	ed01                	bnez	a0,20010fbc <e310x_hal::gpio::PeripheralAccess::set_iof_en+0x42>
20010fa6:	a009                	j	20010fa8 <e310x_hal::gpio::PeripheralAccess::set_iof_en+0x2e>
20010fa8:	4522                	lw	a0,8(sp)
20010faa:	4642                	lw	a2,16(sp)
20010fac:	4585                	li	a1,1
20010fae:	00c595b3          	sll	a1,a1,a2
20010fb2:	c22e                	sw	a1,4(sp)
20010fb4:	dc2e                	sw	a1,56(sp)
    match bit {
20010fb6:	8905                	and	a0,a0,1
20010fb8:	e121                	bnez	a0,20010ff8 <e310x_hal::gpio::PeripheralAccess::set_iof_en+0x7e>
20010fba:	a005                	j	20010fda <e310x_hal::gpio::PeripheralAccess::set_iof_en+0x60>
    let mask = 1 << (index & 31);
20010fbc:	20017537          	lui	a0,0x20017
20010fc0:	77050513          	add	a0,a0,1904 # 20017770 <str.0>
20010fc4:	200175b7          	lui	a1,0x20017
20010fc8:	76058613          	add	a2,a1,1888 # 20017760 <.L__unnamed_1>
20010fcc:	02300593          	li	a1,35
20010fd0:	00004097          	auipc	ra,0x4
20010fd4:	4bc080e7          	jalr	1212(ra) # 2001548c <core::panicking::panic>
20010fd8:	0000                	unimp
        false => r.fetch_and(!mask, Ordering::SeqCst),
20010fda:	4532                	lw	a0,12(sp)
20010fdc:	4592                	lw	a1,4(sp)
20010fde:	fff5c593          	not	a1,a1
20010fe2:	4611                	li	a2,4
20010fe4:	02c105a3          	sb	a2,43(sp)
20010fe8:	02b14603          	lbu	a2,43(sp)
20010fec:	00000097          	auipc	ra,0x0
20010ff0:	4c8080e7          	jalr	1224(ra) # 200114b4 <core::sync::atomic::AtomicU32::fetch_and>
20010ff4:	d22a                	sw	a0,36(sp)
20010ff6:	a831                	j	20011012 <e310x_hal::gpio::PeripheralAccess::set_iof_en+0x98>
20010ff8:	4592                	lw	a1,4(sp)
20010ffa:	4532                	lw	a0,12(sp)
20010ffc:	4611                	li	a2,4
        true => r.fetch_or(mask, Ordering::SeqCst),
20010ffe:	02c10523          	sb	a2,42(sp)
20011002:	02a14603          	lbu	a2,42(sp)
20011006:	00000097          	auipc	ra,0x0
2001100a:	440080e7          	jalr	1088(ra) # 20011446 <core::sync::atomic::AtomicU32::fetch_or>
2001100e:	d22a                	sw	a0,36(sp)
20011010:	a009                	j	20011012 <e310x_hal::gpio::PeripheralAccess::set_iof_en+0x98>
        atomic_set_bit(r, index, bit);
    }
20011012:	50f2                	lw	ra,60(sp)
20011014:	6121                	add	sp,sp,64
20011016:	8082                	ret

20011018 <e310x_hal::gpio::PeripheralAccess::set_iof_sel>:

    fn set_iof_sel(index: usize, bit: bool) {
20011018:	7139                	add	sp,sp,-64
2001101a:	de06                	sw	ra,60(sp)
2001101c:	862e                	mv	a2,a1
2001101e:	c432                	sw	a2,8(sp)
20011020:	ca2a                	sw	a0,20(sp)
20011022:	00b10da3          	sb	a1,27(sp)
20011026:	10012637          	lui	a2,0x10012
        let p = Self::peripheral();
2001102a:	ce32                	sw	a2,28(sp)
2001102c:	03c60613          	add	a2,a2,60 # 1001203c <.Lline_table_start1+0xffe2bc6>
        let r: &AtomicU32 = unsafe { core::mem::transmute(&p.iof_sel) };
20011030:	c632                	sw	a2,12(sp)
20011032:	d032                	sw	a2,32(sp)
20011034:	d632                	sw	a2,44(sp)
20011036:	d82a                	sw	a0,48(sp)
20011038:	02b10ba3          	sb	a1,55(sp)
    let mask = 1 << (index & 31);
2001103c:	897d                	and	a0,a0,31
2001103e:	c82a                	sw	a0,16(sp)
20011040:	4501                	li	a0,0
20011042:	ed01                	bnez	a0,2001105a <e310x_hal::gpio::PeripheralAccess::set_iof_sel+0x42>
20011044:	a009                	j	20011046 <e310x_hal::gpio::PeripheralAccess::set_iof_sel+0x2e>
20011046:	4522                	lw	a0,8(sp)
20011048:	4642                	lw	a2,16(sp)
2001104a:	4585                	li	a1,1
2001104c:	00c595b3          	sll	a1,a1,a2
20011050:	c22e                	sw	a1,4(sp)
20011052:	dc2e                	sw	a1,56(sp)
    match bit {
20011054:	8905                	and	a0,a0,1
20011056:	e121                	bnez	a0,20011096 <e310x_hal::gpio::PeripheralAccess::set_iof_sel+0x7e>
20011058:	a005                	j	20011078 <e310x_hal::gpio::PeripheralAccess::set_iof_sel+0x60>
    let mask = 1 << (index & 31);
2001105a:	20017537          	lui	a0,0x20017
2001105e:	77050513          	add	a0,a0,1904 # 20017770 <str.0>
20011062:	200175b7          	lui	a1,0x20017
20011066:	76058613          	add	a2,a1,1888 # 20017760 <.L__unnamed_1>
2001106a:	02300593          	li	a1,35
2001106e:	00004097          	auipc	ra,0x4
20011072:	41e080e7          	jalr	1054(ra) # 2001548c <core::panicking::panic>
20011076:	0000                	unimp
        false => r.fetch_and(!mask, Ordering::SeqCst),
20011078:	4532                	lw	a0,12(sp)
2001107a:	4592                	lw	a1,4(sp)
2001107c:	fff5c593          	not	a1,a1
20011080:	4611                	li	a2,4
20011082:	02c105a3          	sb	a2,43(sp)
20011086:	02b14603          	lbu	a2,43(sp)
2001108a:	00000097          	auipc	ra,0x0
2001108e:	42a080e7          	jalr	1066(ra) # 200114b4 <core::sync::atomic::AtomicU32::fetch_and>
20011092:	d22a                	sw	a0,36(sp)
20011094:	a831                	j	200110b0 <e310x_hal::gpio::PeripheralAccess::set_iof_sel+0x98>
20011096:	4592                	lw	a1,4(sp)
20011098:	4532                	lw	a0,12(sp)
2001109a:	4611                	li	a2,4
        true => r.fetch_or(mask, Ordering::SeqCst),
2001109c:	02c10523          	sb	a2,42(sp)
200110a0:	02a14603          	lbu	a2,42(sp)
200110a4:	00000097          	auipc	ra,0x0
200110a8:	3a2080e7          	jalr	930(ra) # 20011446 <core::sync::atomic::AtomicU32::fetch_or>
200110ac:	d22a                	sw	a0,36(sp)
200110ae:	a009                	j	200110b0 <e310x_hal::gpio::PeripheralAccess::set_iof_sel+0x98>
        atomic_set_bit(r, index, bit);
    }
200110b0:	50f2                	lw	ra,60(sp)
200110b2:	6121                	add	sp,sp,64
200110b4:	8082                	ret

200110b6 <e310x_hal::gpio::PeripheralAccess::set_out_xor>:
    fn set_out_xor(index: usize, bit: bool) {
200110b6:	7139                	add	sp,sp,-64
200110b8:	de06                	sw	ra,60(sp)
200110ba:	862e                	mv	a2,a1
200110bc:	c432                	sw	a2,8(sp)
200110be:	ca2a                	sw	a0,20(sp)
200110c0:	00b10da3          	sb	a1,27(sp)
200110c4:	10012637          	lui	a2,0x10012
        let p = Self::peripheral();
200110c8:	ce32                	sw	a2,28(sp)
200110ca:	04060613          	add	a2,a2,64 # 10012040 <.Lline_table_start1+0xffe2bca>
        let r: &AtomicU32 = unsafe { core::mem::transmute(&p.out_xor) };
200110ce:	c632                	sw	a2,12(sp)
200110d0:	d032                	sw	a2,32(sp)
200110d2:	d632                	sw	a2,44(sp)
200110d4:	d82a                	sw	a0,48(sp)
200110d6:	02b10ba3          	sb	a1,55(sp)
    let mask = 1 << (index & 31);
200110da:	897d                	and	a0,a0,31
200110dc:	c82a                	sw	a0,16(sp)
200110de:	4501                	li	a0,0
200110e0:	ed01                	bnez	a0,200110f8 <e310x_hal::gpio::PeripheralAccess::set_out_xor+0x42>
200110e2:	a009                	j	200110e4 <e310x_hal::gpio::PeripheralAccess::set_out_xor+0x2e>
200110e4:	4522                	lw	a0,8(sp)
200110e6:	4642                	lw	a2,16(sp)
200110e8:	4585                	li	a1,1
200110ea:	00c595b3          	sll	a1,a1,a2
200110ee:	c22e                	sw	a1,4(sp)
200110f0:	dc2e                	sw	a1,56(sp)
    match bit {
200110f2:	8905                	and	a0,a0,1
200110f4:	e121                	bnez	a0,20011134 <e310x_hal::gpio::PeripheralAccess::set_out_xor+0x7e>
200110f6:	a005                	j	20011116 <e310x_hal::gpio::PeripheralAccess::set_out_xor+0x60>
    let mask = 1 << (index & 31);
200110f8:	20017537          	lui	a0,0x20017
200110fc:	77050513          	add	a0,a0,1904 # 20017770 <str.0>
20011100:	200175b7          	lui	a1,0x20017
20011104:	76058613          	add	a2,a1,1888 # 20017760 <.L__unnamed_1>
20011108:	02300593          	li	a1,35
2001110c:	00004097          	auipc	ra,0x4
20011110:	380080e7          	jalr	896(ra) # 2001548c <core::panicking::panic>
20011114:	0000                	unimp
        false => r.fetch_and(!mask, Ordering::SeqCst),
20011116:	4532                	lw	a0,12(sp)
20011118:	4592                	lw	a1,4(sp)
2001111a:	fff5c593          	not	a1,a1
2001111e:	4611                	li	a2,4
20011120:	02c105a3          	sb	a2,43(sp)
20011124:	02b14603          	lbu	a2,43(sp)
20011128:	00000097          	auipc	ra,0x0
2001112c:	38c080e7          	jalr	908(ra) # 200114b4 <core::sync::atomic::AtomicU32::fetch_and>
20011130:	d22a                	sw	a0,36(sp)
20011132:	a831                	j	2001114e <e310x_hal::gpio::PeripheralAccess::set_out_xor+0x98>
20011134:	4592                	lw	a1,4(sp)
20011136:	4532                	lw	a0,12(sp)
20011138:	4611                	li	a2,4
        true => r.fetch_or(mask, Ordering::SeqCst),
2001113a:	02c10523          	sb	a2,42(sp)
2001113e:	02a14603          	lbu	a2,42(sp)
20011142:	00000097          	auipc	ra,0x0
20011146:	304080e7          	jalr	772(ra) # 20011446 <core::sync::atomic::AtomicU32::fetch_or>
2001114a:	d22a                	sw	a0,36(sp)
2001114c:	a009                	j	2001114e <e310x_hal::gpio::PeripheralAccess::set_out_xor+0x98>
    }
2001114e:	50f2                	lw	ra,60(sp)
20011150:	6121                	add	sp,sp,64
20011152:	8082                	ret

20011154 <e310x_hal::gpio::PeripheralAccess::set_output_en>:
    fn set_output_en(index: usize, bit: bool) {
20011154:	7139                	add	sp,sp,-64
20011156:	de06                	sw	ra,60(sp)
20011158:	862e                	mv	a2,a1
2001115a:	c432                	sw	a2,8(sp)
2001115c:	ca2a                	sw	a0,20(sp)
2001115e:	00b10da3          	sb	a1,27(sp)
20011162:	10012637          	lui	a2,0x10012
        let p = Self::peripheral();
20011166:	ce32                	sw	a2,28(sp)
20011168:	0621                	add	a2,a2,8 # 10012008 <.Lline_table_start1+0xffe2b92>
        let r: &AtomicU32 = unsafe { core::mem::transmute(&p.output_en) };
2001116a:	c632                	sw	a2,12(sp)
2001116c:	d032                	sw	a2,32(sp)
2001116e:	d632                	sw	a2,44(sp)
20011170:	d82a                	sw	a0,48(sp)
20011172:	02b10ba3          	sb	a1,55(sp)
    let mask = 1 << (index & 31);
20011176:	897d                	and	a0,a0,31
20011178:	c82a                	sw	a0,16(sp)
2001117a:	4501                	li	a0,0
2001117c:	ed01                	bnez	a0,20011194 <e310x_hal::gpio::PeripheralAccess::set_output_en+0x40>
2001117e:	a009                	j	20011180 <e310x_hal::gpio::PeripheralAccess::set_output_en+0x2c>
20011180:	4522                	lw	a0,8(sp)
20011182:	4642                	lw	a2,16(sp)
20011184:	4585                	li	a1,1
20011186:	00c595b3          	sll	a1,a1,a2
2001118a:	c22e                	sw	a1,4(sp)
2001118c:	dc2e                	sw	a1,56(sp)
    match bit {
2001118e:	8905                	and	a0,a0,1
20011190:	e121                	bnez	a0,200111d0 <e310x_hal::gpio::PeripheralAccess::set_output_en+0x7c>
20011192:	a005                	j	200111b2 <e310x_hal::gpio::PeripheralAccess::set_output_en+0x5e>
    let mask = 1 << (index & 31);
20011194:	20017537          	lui	a0,0x20017
20011198:	77050513          	add	a0,a0,1904 # 20017770 <str.0>
2001119c:	200175b7          	lui	a1,0x20017
200111a0:	76058613          	add	a2,a1,1888 # 20017760 <.L__unnamed_1>
200111a4:	02300593          	li	a1,35
200111a8:	00004097          	auipc	ra,0x4
200111ac:	2e4080e7          	jalr	740(ra) # 2001548c <core::panicking::panic>
200111b0:	0000                	unimp
        false => r.fetch_and(!mask, Ordering::SeqCst),
200111b2:	4532                	lw	a0,12(sp)
200111b4:	4592                	lw	a1,4(sp)
200111b6:	fff5c593          	not	a1,a1
200111ba:	4611                	li	a2,4
200111bc:	02c105a3          	sb	a2,43(sp)
200111c0:	02b14603          	lbu	a2,43(sp)
200111c4:	00000097          	auipc	ra,0x0
200111c8:	2f0080e7          	jalr	752(ra) # 200114b4 <core::sync::atomic::AtomicU32::fetch_and>
200111cc:	d22a                	sw	a0,36(sp)
200111ce:	a831                	j	200111ea <e310x_hal::gpio::PeripheralAccess::set_output_en+0x96>
200111d0:	4592                	lw	a1,4(sp)
200111d2:	4532                	lw	a0,12(sp)
200111d4:	4611                	li	a2,4
        true => r.fetch_or(mask, Ordering::SeqCst),
200111d6:	02c10523          	sb	a2,42(sp)
200111da:	02a14603          	lbu	a2,42(sp)
200111de:	00000097          	auipc	ra,0x0
200111e2:	268080e7          	jalr	616(ra) # 20011446 <core::sync::atomic::AtomicU32::fetch_or>
200111e6:	d22a                	sw	a0,36(sp)
200111e8:	a009                	j	200111ea <e310x_hal::gpio::PeripheralAccess::set_output_en+0x96>
    }
200111ea:	50f2                	lw	ra,60(sp)
200111ec:	6121                	add	sp,sp,64
200111ee:	8082                	ret

200111f0 <e310x_hal::gpio::PeripheralAccess::set_drive>:
    fn set_drive(index: usize, bit: bool) {
200111f0:	7139                	add	sp,sp,-64
200111f2:	de06                	sw	ra,60(sp)
200111f4:	862e                	mv	a2,a1
200111f6:	c432                	sw	a2,8(sp)
200111f8:	ca2a                	sw	a0,20(sp)
200111fa:	00b10da3          	sb	a1,27(sp)
200111fe:	10012637          	lui	a2,0x10012
        let p = Self::peripheral();
20011202:	ce32                	sw	a2,28(sp)
20011204:	0651                	add	a2,a2,20 # 10012014 <.Lline_table_start1+0xffe2b9e>
        let r: &AtomicU32 = unsafe { core::mem::transmute(&p.drive) };
20011206:	c632                	sw	a2,12(sp)
20011208:	d032                	sw	a2,32(sp)
2001120a:	d632                	sw	a2,44(sp)
2001120c:	d82a                	sw	a0,48(sp)
2001120e:	02b10ba3          	sb	a1,55(sp)
    let mask = 1 << (index & 31);
20011212:	897d                	and	a0,a0,31
20011214:	c82a                	sw	a0,16(sp)
20011216:	4501                	li	a0,0
20011218:	ed01                	bnez	a0,20011230 <e310x_hal::gpio::PeripheralAccess::set_drive+0x40>
2001121a:	a009                	j	2001121c <e310x_hal::gpio::PeripheralAccess::set_drive+0x2c>
2001121c:	4522                	lw	a0,8(sp)
2001121e:	4642                	lw	a2,16(sp)
20011220:	4585                	li	a1,1
20011222:	00c595b3          	sll	a1,a1,a2
20011226:	c22e                	sw	a1,4(sp)
20011228:	dc2e                	sw	a1,56(sp)
    match bit {
2001122a:	8905                	and	a0,a0,1
2001122c:	e121                	bnez	a0,2001126c <e310x_hal::gpio::PeripheralAccess::set_drive+0x7c>
2001122e:	a005                	j	2001124e <e310x_hal::gpio::PeripheralAccess::set_drive+0x5e>
    let mask = 1 << (index & 31);
20011230:	20017537          	lui	a0,0x20017
20011234:	77050513          	add	a0,a0,1904 # 20017770 <str.0>
20011238:	200175b7          	lui	a1,0x20017
2001123c:	76058613          	add	a2,a1,1888 # 20017760 <.L__unnamed_1>
20011240:	02300593          	li	a1,35
20011244:	00004097          	auipc	ra,0x4
20011248:	248080e7          	jalr	584(ra) # 2001548c <core::panicking::panic>
2001124c:	0000                	unimp
        false => r.fetch_and(!mask, Ordering::SeqCst),
2001124e:	4532                	lw	a0,12(sp)
20011250:	4592                	lw	a1,4(sp)
20011252:	fff5c593          	not	a1,a1
20011256:	4611                	li	a2,4
20011258:	02c105a3          	sb	a2,43(sp)
2001125c:	02b14603          	lbu	a2,43(sp)
20011260:	00000097          	auipc	ra,0x0
20011264:	254080e7          	jalr	596(ra) # 200114b4 <core::sync::atomic::AtomicU32::fetch_and>
20011268:	d22a                	sw	a0,36(sp)
2001126a:	a831                	j	20011286 <e310x_hal::gpio::PeripheralAccess::set_drive+0x96>
2001126c:	4592                	lw	a1,4(sp)
2001126e:	4532                	lw	a0,12(sp)
20011270:	4611                	li	a2,4
        true => r.fetch_or(mask, Ordering::SeqCst),
20011272:	02c10523          	sb	a2,42(sp)
20011276:	02a14603          	lbu	a2,42(sp)
2001127a:	00000097          	auipc	ra,0x0
2001127e:	1cc080e7          	jalr	460(ra) # 20011446 <core::sync::atomic::AtomicU32::fetch_or>
20011282:	d22a                	sw	a0,36(sp)
20011284:	a009                	j	20011286 <e310x_hal::gpio::PeripheralAccess::set_drive+0x96>
    }
20011286:	50f2                	lw	ra,60(sp)
20011288:	6121                	add	sp,sp,64
2001128a:	8082                	ret

2001128c <yarr2::__risc_v_rt__main::{{closure}}>:

    // let mut frame = cpu::TrapFrame::new();
    // mscratch::write(&mut frame as *mut cpu::TrapFrame as usize);

    unsafe {
        PROCESS_LIST[0].init(|| {
2001128c:	7179                	add	sp,sp,-48
2001128e:	d606                	sw	ra,44(sp)
20011290:	d42a                	sw	a0,40(sp)
            loop {
20011292:	a009                	j	20011294 <yarr2::__risc_v_rt__main::{{closure}}+0x8>
20011294:	10012537          	lui	a0,0x10012
20011298:	c42a                	sw	a0,8(sp)
2001129a:	458d                	li	a1,3
                let mut state = mmio_read(GPIO_CTRL_ADDR, GPIO_REG_OUTPUT_VAL);
2001129c:	c22e                	sw	a1,4(sp)
2001129e:	00000097          	auipc	ra,0x0
200112a2:	6a8080e7          	jalr	1704(ra) # 20011946 <yarr2::mmio_read>
200112a6:	4592                	lw	a1,4(sp)
200112a8:	862a                	mv	a2,a0
200112aa:	4522                	lw	a0,8(sp)
200112ac:	c632                	sw	a2,12(sp)
                state ^= RED_LED;
200112ae:	4632                	lw	a2,12(sp)
200112b0:	004006b7          	lui	a3,0x400
200112b4:	8e35                	xor	a2,a2,a3
200112b6:	c632                	sw	a2,12(sp)
                mmio_write(GPIO_CTRL_ADDR, GPIO_REG_OUTPUT_VAL, state);
200112b8:	4632                	lw	a2,12(sp)
200112ba:	00000097          	auipc	ra,0x0
200112be:	670080e7          	jalr	1648(ra) # 2001192a <yarr2::mmio_write>
200112c2:	4501                	li	a0,0
                for _ in 0..20000000 {
200112c4:	c82a                	sw	a0,16(sp)
200112c6:	01313537          	lui	a0,0x1313
200112ca:	d0050513          	add	a0,a0,-768 # 1312d00 <.Lline_table_start1+0x12e388a>
200112ce:	ca2a                	sw	a0,20(sp)
200112d0:	4542                	lw	a0,16(sp)
200112d2:	45d2                	lw	a1,20(sp)
200112d4:	00000097          	auipc	ra,0x0
200112d8:	43a080e7          	jalr	1082(ra) # 2001170e <<I as core::iter::traits::collect::IntoIterator>::into_iter>
200112dc:	cc2a                	sw	a0,24(sp)
200112de:	ce2e                	sw	a1,28(sp)
200112e0:	a009                	j	200112e2 <yarr2::__risc_v_rt__main::{{closure}}+0x56>
200112e2:	0828                	add	a0,sp,24
200112e4:	00000097          	auipc	ra,0x0
200112e8:	416080e7          	jalr	1046(ra) # 200116fa <core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next>
200112ec:	d22e                	sw	a1,36(sp)
200112ee:	d02a                	sw	a0,32(sp)
200112f0:	5502                	lw	a0,32(sp)
200112f2:	d14d                	beqz	a0,20011294 <yarr2::__risc_v_rt__main::{{closure}}+0x8>
200112f4:	a009                	j	200112f6 <yarr2::__risc_v_rt__main::{{closure}}+0x6a>
                    riscv::asm::nop();
200112f6:	00001097          	auipc	ra,0x1
200112fa:	134080e7          	jalr	308(ra) # 2001242a <riscv::asm::nop>
200112fe:	b7d5                	j	200112e2 <yarr2::__risc_v_rt__main::{{closure}}+0x56>

20011300 <yarr2::__risc_v_rt__main::{{closure}}>:
                }
            }
        });
        PROCESS_LIST[1].init(|| {
20011300:	7179                	add	sp,sp,-48
20011302:	d606                	sw	ra,44(sp)
20011304:	d42a                	sw	a0,40(sp)
            loop {
20011306:	a009                	j	20011308 <yarr2::__risc_v_rt__main::{{closure}}+0x8>
20011308:	10012537          	lui	a0,0x10012
2001130c:	c42a                	sw	a0,8(sp)
2001130e:	458d                	li	a1,3
                let mut state = mmio_read(GPIO_CTRL_ADDR, GPIO_REG_OUTPUT_VAL);
20011310:	c22e                	sw	a1,4(sp)
20011312:	00000097          	auipc	ra,0x0
20011316:	634080e7          	jalr	1588(ra) # 20011946 <yarr2::mmio_read>
2001131a:	4592                	lw	a1,4(sp)
2001131c:	862a                	mv	a2,a0
2001131e:	4522                	lw	a0,8(sp)
20011320:	c632                	sw	a2,12(sp)
                state ^= GREEN_LED;
20011322:	4632                	lw	a2,12(sp)
20011324:	000806b7          	lui	a3,0x80
20011328:	8e35                	xor	a2,a2,a3
2001132a:	c632                	sw	a2,12(sp)
                mmio_write(GPIO_CTRL_ADDR, GPIO_REG_OUTPUT_VAL, state);
2001132c:	4632                	lw	a2,12(sp)
2001132e:	00000097          	auipc	ra,0x0
20011332:	5fc080e7          	jalr	1532(ra) # 2001192a <yarr2::mmio_write>
20011336:	4501                	li	a0,0
                for _ in 0..20000000 {
20011338:	c82a                	sw	a0,16(sp)
2001133a:	01313537          	lui	a0,0x1313
2001133e:	d0050513          	add	a0,a0,-768 # 1312d00 <.Lline_table_start1+0x12e388a>
20011342:	ca2a                	sw	a0,20(sp)
20011344:	4542                	lw	a0,16(sp)
20011346:	45d2                	lw	a1,20(sp)
20011348:	00000097          	auipc	ra,0x0
2001134c:	3c6080e7          	jalr	966(ra) # 2001170e <<I as core::iter::traits::collect::IntoIterator>::into_iter>
20011350:	cc2a                	sw	a0,24(sp)
20011352:	ce2e                	sw	a1,28(sp)
20011354:	a009                	j	20011356 <yarr2::__risc_v_rt__main::{{closure}}+0x56>
20011356:	0828                	add	a0,sp,24
20011358:	00000097          	auipc	ra,0x0
2001135c:	3a2080e7          	jalr	930(ra) # 200116fa <core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next>
20011360:	d22e                	sw	a1,36(sp)
20011362:	d02a                	sw	a0,32(sp)
20011364:	5502                	lw	a0,32(sp)
20011366:	d14d                	beqz	a0,20011308 <yarr2::__risc_v_rt__main::{{closure}}+0x8>
20011368:	a009                	j	2001136a <yarr2::__risc_v_rt__main::{{closure}}+0x6a>
                    riscv::asm::nop();
2001136a:	00001097          	auipc	ra,0x1
2001136e:	0c0080e7          	jalr	192(ra) # 2001242a <riscv::asm::nop>
20011372:	b7d5                	j	20011356 <yarr2::__risc_v_rt__main::{{closure}}+0x56>

20011374 <yarr2::__risc_v_rt__main::{{closure}}>:
                }
            }
        });
        PROCESS_LIST[2].init(|| {
20011374:	7179                	add	sp,sp,-48
20011376:	d606                	sw	ra,44(sp)
20011378:	d22a                	sw	a0,36(sp)
            loop {
2001137a:	a009                	j	2001137c <yarr2::__risc_v_rt__main::{{closure}}+0x8>
2001137c:	10012537          	lui	a0,0x10012
20011380:	c42a                	sw	a0,8(sp)
20011382:	458d                	li	a1,3
                let mut state = mmio_read(GPIO_CTRL_ADDR, GPIO_REG_OUTPUT_VAL);
20011384:	c22e                	sw	a1,4(sp)
20011386:	00000097          	auipc	ra,0x0
2001138a:	5c0080e7          	jalr	1472(ra) # 20011946 <yarr2::mmio_read>
2001138e:	4592                	lw	a1,4(sp)
20011390:	862a                	mv	a2,a0
20011392:	4522                	lw	a0,8(sp)
20011394:	d432                	sw	a2,40(sp)
                // state ^= BLUE_LED;
                mmio_write(GPIO_CTRL_ADDR, GPIO_REG_OUTPUT_VAL, state);
20011396:	00000097          	auipc	ra,0x0
2001139a:	594080e7          	jalr	1428(ra) # 2001192a <yarr2::mmio_write>
2001139e:	4501                	li	a0,0
                for _ in 0..20000000 {
200113a0:	c62a                	sw	a0,12(sp)
200113a2:	01313537          	lui	a0,0x1313
200113a6:	d0050513          	add	a0,a0,-768 # 1312d00 <.Lline_table_start1+0x12e388a>
200113aa:	c82a                	sw	a0,16(sp)
200113ac:	4532                	lw	a0,12(sp)
200113ae:	45c2                	lw	a1,16(sp)
200113b0:	00000097          	auipc	ra,0x0
200113b4:	35e080e7          	jalr	862(ra) # 2001170e <<I as core::iter::traits::collect::IntoIterator>::into_iter>
200113b8:	ca2a                	sw	a0,20(sp)
200113ba:	cc2e                	sw	a1,24(sp)
200113bc:	a009                	j	200113be <yarr2::__risc_v_rt__main::{{closure}}+0x4a>
200113be:	0848                	add	a0,sp,20
200113c0:	00000097          	auipc	ra,0x0
200113c4:	33a080e7          	jalr	826(ra) # 200116fa <core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next>
200113c8:	d02e                	sw	a1,32(sp)
200113ca:	ce2a                	sw	a0,28(sp)
200113cc:	4572                	lw	a0,28(sp)
200113ce:	d55d                	beqz	a0,2001137c <yarr2::__risc_v_rt__main::{{closure}}+0x8>
200113d0:	a009                	j	200113d2 <yarr2::__risc_v_rt__main::{{closure}}+0x5e>
                    riscv::asm::nop();
200113d2:	00001097          	auipc	ra,0x1
200113d6:	058080e7          	jalr	88(ra) # 2001242a <riscv::asm::nop>
200113da:	b7d5                	j	200113be <yarr2::__risc_v_rt__main::{{closure}}+0x4a>

200113dc <core::sync::atomic::compiler_fence>:
200113dc:	7179                	add	sp,sp,-48
200113de:	00a103a3          	sb	a0,7(sp)
200113e2:	00714503          	lbu	a0,7(sp)
200113e6:	c02a                	sw	a0,0(sp)
200113e8:	4502                	lw	a0,0(sp)
200113ea:	050a                	sll	a0,a0,0x2
200113ec:	200175b7          	lui	a1,0x20017
200113f0:	79458593          	add	a1,a1,1940 # 20017794 <.LJTI0_0>
200113f4:	952e                	add	a0,a0,a1
200113f6:	4108                	lw	a0,0(a0)
200113f8:	8502                	jr	a0
	...

200113fc <.LBB0_3>:
200113fc:	20018537          	lui	a0,0x20018
20011400:	80450613          	add	a2,a0,-2044 # 20017804 <.L__unnamed_1>
20011404:	d432                	sw	a2,40(sp)
20011406:	4585                	li	a1,1
20011408:	d62e                	sw	a1,44(sp)
2001140a:	4501                	li	a0,0
2001140c:	d02a                	sw	a0,32(sp)
2001140e:	c432                	sw	a2,8(sp)
20011410:	c62e                	sw	a1,12(sp)
20011412:	5602                	lw	a2,32(sp)
20011414:	5592                	lw	a1,36(sp)
20011416:	cc32                	sw	a2,24(sp)
20011418:	ce2e                	sw	a1,28(sp)
2001141a:	200185b7          	lui	a1,0x20018
2001141e:	80c58593          	add	a1,a1,-2036 # 2001780c <.L__unnamed_5>
20011422:	c82e                	sw	a1,16(sp)
20011424:	ca2a                	sw	a0,20(sp)
20011426:	20018537          	lui	a0,0x20018
2001142a:	85c50593          	add	a1,a0,-1956 # 2001785c <.L__unnamed_3>
2001142e:	0028                	add	a0,sp,8
20011430:	00004097          	auipc	ra,0x4
20011434:	02e080e7          	jalr	46(ra) # 2001545e <core::panicking::panic_fmt>
	...

2001143a <.LBB0_4>:
2001143a:	a021                	j	20011442 <.LBB0_7+0x2>

2001143c <.LBB0_5>:
2001143c:	a019                	j	20011442 <.LBB0_7+0x2>

2001143e <.LBB0_6>:
2001143e:	a011                	j	20011442 <.LBB0_7+0x2>

20011440 <.LBB0_7>:
20011440:	a009                	j	20011442 <.LBB0_7+0x2>
20011442:	6145                	add	sp,sp,48
20011444:	8082                	ret

20011446 <core::sync::atomic::AtomicU32::fetch_or>:
20011446:	7179                	add	sp,sp,-48
20011448:	c62e                	sw	a1,12(sp)
2001144a:	c82a                	sw	a0,16(sp)
2001144c:	00c10da3          	sb	a2,27(sp)
20011450:	d02a                	sw	a0,32(sp)
20011452:	d22e                	sw	a1,36(sp)
20011454:	d42a                	sw	a0,40(sp)
20011456:	d62a                	sw	a0,44(sp)
20011458:	01b14503          	lbu	a0,27(sp)
2001145c:	ca2a                	sw	a0,20(sp)
2001145e:	4552                	lw	a0,20(sp)
20011460:	050a                	sll	a0,a0,0x2
20011462:	200175b7          	lui	a1,0x20017
20011466:	7a858593          	add	a1,a1,1960 # 200177a8 <.LJTI1_0>
2001146a:	952e                	add	a0,a0,a1
2001146c:	4108                	lw	a0,0(a0)
2001146e:	8502                	jr	a0
	...

20011472 <.LBB1_3>:
20011472:	4542                	lw	a0,16(sp)
20011474:	45b2                	lw	a1,12(sp)
20011476:	40b5252f          	amoor.w	a0,a1,(a0)
2001147a:	ce2a                	sw	a0,28(sp)
2001147c:	a80d                	j	200114ae <.LBB1_7+0xc>

2001147e <.LBB1_4>:
2001147e:	4542                	lw	a0,16(sp)
20011480:	45b2                	lw	a1,12(sp)
20011482:	42b5252f          	amoor.w.rl	a0,a1,(a0)
20011486:	ce2a                	sw	a0,28(sp)
20011488:	a01d                	j	200114ae <.LBB1_7+0xc>

2001148a <.LBB1_5>:
2001148a:	4542                	lw	a0,16(sp)
2001148c:	45b2                	lw	a1,12(sp)
2001148e:	44b5252f          	amoor.w.aq	a0,a1,(a0)
20011492:	ce2a                	sw	a0,28(sp)
20011494:	a829                	j	200114ae <.LBB1_7+0xc>

20011496 <.LBB1_6>:
20011496:	4542                	lw	a0,16(sp)
20011498:	45b2                	lw	a1,12(sp)
2001149a:	46b5252f          	amoor.w.aqrl	a0,a1,(a0)
2001149e:	ce2a                	sw	a0,28(sp)
200114a0:	a039                	j	200114ae <.LBB1_7+0xc>

200114a2 <.LBB1_7>:
200114a2:	4542                	lw	a0,16(sp)
200114a4:	45b2                	lw	a1,12(sp)
200114a6:	46b5252f          	amoor.w.aqrl	a0,a1,(a0)
200114aa:	ce2a                	sw	a0,28(sp)
200114ac:	a009                	j	200114ae <.LBB1_7+0xc>
200114ae:	4572                	lw	a0,28(sp)
200114b0:	6145                	add	sp,sp,48
200114b2:	8082                	ret

200114b4 <core::sync::atomic::AtomicU32::fetch_and>:
200114b4:	7179                	add	sp,sp,-48
200114b6:	c62e                	sw	a1,12(sp)
200114b8:	c82a                	sw	a0,16(sp)
200114ba:	00c10da3          	sb	a2,27(sp)
200114be:	d02a                	sw	a0,32(sp)
200114c0:	d22e                	sw	a1,36(sp)
200114c2:	d42a                	sw	a0,40(sp)
200114c4:	d62a                	sw	a0,44(sp)
200114c6:	01b14503          	lbu	a0,27(sp)
200114ca:	ca2a                	sw	a0,20(sp)
200114cc:	4552                	lw	a0,20(sp)
200114ce:	050a                	sll	a0,a0,0x2
200114d0:	200175b7          	lui	a1,0x20017
200114d4:	7bc58593          	add	a1,a1,1980 # 200177bc <.LJTI2_0>
200114d8:	952e                	add	a0,a0,a1
200114da:	4108                	lw	a0,0(a0)
200114dc:	8502                	jr	a0
	...

200114e0 <.LBB2_3>:
200114e0:	4542                	lw	a0,16(sp)
200114e2:	45b2                	lw	a1,12(sp)
200114e4:	60b5252f          	amoand.w	a0,a1,(a0)
200114e8:	ce2a                	sw	a0,28(sp)
200114ea:	a80d                	j	2001151c <.LBB2_7+0xc>

200114ec <.LBB2_4>:
200114ec:	4542                	lw	a0,16(sp)
200114ee:	45b2                	lw	a1,12(sp)
200114f0:	62b5252f          	amoand.w.rl	a0,a1,(a0)
200114f4:	ce2a                	sw	a0,28(sp)
200114f6:	a01d                	j	2001151c <.LBB2_7+0xc>

200114f8 <.LBB2_5>:
200114f8:	4542                	lw	a0,16(sp)
200114fa:	45b2                	lw	a1,12(sp)
200114fc:	64b5252f          	amoand.w.aq	a0,a1,(a0)
20011500:	ce2a                	sw	a0,28(sp)
20011502:	a829                	j	2001151c <.LBB2_7+0xc>

20011504 <.LBB2_6>:
20011504:	4542                	lw	a0,16(sp)
20011506:	45b2                	lw	a1,12(sp)
20011508:	66b5252f          	amoand.w.aqrl	a0,a1,(a0)
2001150c:	ce2a                	sw	a0,28(sp)
2001150e:	a039                	j	2001151c <.LBB2_7+0xc>

20011510 <.LBB2_7>:
20011510:	4542                	lw	a0,16(sp)
20011512:	45b2                	lw	a1,12(sp)
20011514:	66b5252f          	amoand.w.aqrl	a0,a1,(a0)
20011518:	ce2a                	sw	a0,28(sp)
2001151a:	a009                	j	2001151c <.LBB2_7+0xc>
2001151c:	4572                	lw	a0,28(sp)
2001151e:	6145                	add	sp,sp,48
20011520:	8082                	ret

20011522 <riscv::register::mtvec::write>:

write_csr!(0x305);

/// Writes the CSR
#[inline]
pub unsafe fn write(addr: usize, mode: TrapMode) {
20011522:	1101                	add	sp,sp,-32
20011524:	ce06                	sw	ra,28(sp)
20011526:	c42e                	sw	a1,8(sp)
20011528:	85aa                	mv	a1,a0
2001152a:	4522                	lw	a0,8(sp)
2001152c:	00a109a3          	sb	a0,19(sp)
20011530:	ca2e                	sw	a1,20(sp)
    let bits = addr + mode as usize;
20011532:	01314503          	lbu	a0,19(sp)
20011536:	952e                	add	a0,a0,a1
20011538:	c62a                	sw	a0,12(sp)
2001153a:	00b56c63          	bltu	a0,a1,20011552 <riscv::register::mtvec::write+0x30>
2001153e:	a009                	j	20011540 <riscv::register::mtvec::write+0x1e>
20011540:	4532                	lw	a0,12(sp)
20011542:	cc2a                	sw	a0,24(sp)
    _write(bits);
20011544:	00000097          	auipc	ra,0x0
20011548:	02a080e7          	jalr	42(ra) # 2001156e <riscv::register::mtvec::_write>
}
2001154c:	40f2                	lw	ra,28(sp)
2001154e:	6105                	add	sp,sp,32
20011550:	8082                	ret
    let bits = addr + mode as usize;
20011552:	20018537          	lui	a0,0x20018
20011556:	8e050513          	add	a0,a0,-1824 # 200178e0 <str.0>
2001155a:	200185b7          	lui	a1,0x20018
2001155e:	8d058613          	add	a2,a1,-1840 # 200178d0 <.L__unnamed_1>
20011562:	45f1                	li	a1,28
20011564:	00004097          	auipc	ra,0x4
20011568:	f28080e7          	jalr	-216(ra) # 2001548c <core::panicking::panic>
	...

2001156e <riscv::register::mtvec::_write>:
macro_rules! write_csr {
    ($csr_number:literal) => {
        /// Writes the CSR
        #[inline]
        #[allow(unused_variables)]
        unsafe fn _write(bits: usize) {
2001156e:	1141                	add	sp,sp,-16
20011570:	c62a                	sw	a0,12(sp)
            match () {
                #[cfg(riscv)]
                () => core::arch::asm!(concat!("csrrw x0, ", stringify!($csr_number), ", {0}"), in(reg) bits),
20011572:	30551073          	csrw	mtvec,a0

                #[cfg(not(riscv))]
                () => unimplemented!(),
            }
        }
20011576:	0141                	add	sp,sp,16
20011578:	8082                	ret

2001157a <<usize as bit_field::BitField>::get_bit>:
        impl BitField for $t {
            const BIT_LENGTH: usize = ::core::mem::size_of::<Self>() as usize * 8;

            #[track_caller]
            #[inline]
            fn get_bit(&self, bit: usize) -> bool {
2001157a:	1101                	add	sp,sp,-32
2001157c:	c632                	sw	a2,12(sp)
2001157e:	c82e                	sw	a1,16(sp)
20011580:	ca2a                	sw	a0,20(sp)
20011582:	cc2a                	sw	a0,24(sp)
20011584:	ce2e                	sw	a1,28(sp)
20011586:	02000513          	li	a0,32
                assert!(bit < Self::BIT_LENGTH);
2001158a:	00a5ef63          	bltu	a1,a0,200115a8 <<usize as bit_field::BitField>::get_bit+0x2e>
2001158e:	a009                	j	20011590 <<usize as bit_field::BitField>::get_bit+0x16>
20011590:	4632                	lw	a2,12(sp)
20011592:	20018537          	lui	a0,0x20018
20011596:	8fc50513          	add	a0,a0,-1796 # 200178fc <.L__unnamed_1>
2001159a:	02800593          	li	a1,40
2001159e:	00004097          	auipc	ra,0x4
200115a2:	eee080e7          	jalr	-274(ra) # 2001548c <core::panicking::panic>
200115a6:	0000                	unimp

                (*self & (1 << bit)) != 0
200115a8:	45c2                	lw	a1,16(sp)
200115aa:	4552                	lw	a0,20(sp)
200115ac:	4108                	lw	a0,0(a0)
200115ae:	c42a                	sw	a0,8(sp)
200115b0:	457d                	li	a0,31
200115b2:	00b56a63          	bltu	a0,a1,200115c6 <<usize as bit_field::BitField>::get_bit+0x4c>
200115b6:	a009                	j	200115b8 <<usize as bit_field::BitField>::get_bit+0x3e>
200115b8:	4522                	lw	a0,8(sp)
200115ba:	45c2                	lw	a1,16(sp)
200115bc:	00b55533          	srl	a0,a0,a1
            }
200115c0:	8905                	and	a0,a0,1
200115c2:	6105                	add	sp,sp,32
200115c4:	8082                	ret
                (*self & (1 << bit)) != 0
200115c6:	4632                	lw	a2,12(sp)
200115c8:	20018537          	lui	a0,0x20018
200115cc:	93050513          	add	a0,a0,-1744 # 20017930 <str.0>
200115d0:	02300593          	li	a1,35
200115d4:	00004097          	auipc	ra,0x4
200115d8:	eb8080e7          	jalr	-328(ra) # 2001548c <core::panicking::panic>
	...

200115de <yarr2::process::Process::init>:
        // *r.frame.registers().at(Register::SP) = &r.stack as *const u8 as usize;
        // r.frame.pc(ProgramCounter::from(exec as *const () as usize));
        // r
    }

    pub fn init(&mut self, exec: fn() -> !) {
200115de:	7179                	add	sp,sp,-48
200115e0:	d606                	sw	ra,44(sp)
200115e2:	c42e                	sw	a1,8(sp)
200115e4:	c62a                	sw	a0,12(sp)
200115e6:	cc2a                	sw	a0,24(sp)
200115e8:	ce2e                	sw	a1,28(sp)
        *self.frame.registers().at(Register::SP) = self.stack.as_ptr() as usize + self.stack.len();
200115ea:	08850593          	add	a1,a0,136
200115ee:	d22e                	sw	a1,36(sp)
200115f0:	40000613          	li	a2,1024
200115f4:	d432                	sw	a2,40(sp)
200115f6:	48850513          	add	a0,a0,1160
200115fa:	c82a                	sw	a0,16(sp)
200115fc:	04b56263          	bltu	a0,a1,20011640 <yarr2::process::Process::init+0x62>
20011600:	a009                	j	20011602 <yarr2::process::Process::init+0x24>
20011602:	4532                	lw	a0,12(sp)
20011604:	00001097          	auipc	ra,0x1
20011608:	9a8080e7          	jalr	-1624(ra) # 20011fac <yarr2::cpu::TrapFrame::registers>
2001160c:	4589                	li	a1,2
2001160e:	00001097          	auipc	ra,0x1
20011612:	95a080e7          	jalr	-1702(ra) # 20011f68 <yarr2::cpu::Registers::at>
20011616:	45c2                	lw	a1,16(sp)
20011618:	862a                	mv	a2,a0
2001161a:	4522                	lw	a0,8(sp)
2001161c:	c20c                	sw	a1,0(a2)
        self.frame
            .pc(ProgramCounter::from(exec as *const () as usize));
2001161e:	00001097          	auipc	ra,0x1
20011622:	982080e7          	jalr	-1662(ra) # 20011fa0 <yarr2::cpu::ProgramCounter::from>
20011626:	85aa                	mv	a1,a0
20011628:	4532                	lw	a0,12(sp)
2001162a:	d02e                	sw	a1,32(sp)
2001162c:	5582                	lw	a1,32(sp)
2001162e:	ca2e                	sw	a1,20(sp)
        self.frame
20011630:	45d2                	lw	a1,20(sp)
20011632:	00001097          	auipc	ra,0x1
20011636:	982080e7          	jalr	-1662(ra) # 20011fb4 <yarr2::cpu::TrapFrame::pc>
    }
2001163a:	50b2                	lw	ra,44(sp)
2001163c:	6145                	add	sp,sp,48
2001163e:	8082                	ret
        *self.frame.registers().at(Register::SP) = self.stack.as_ptr() as usize + self.stack.len();
20011640:	20018537          	lui	a0,0x20018
20011644:	98050513          	add	a0,a0,-1664 # 20017980 <str.0>
20011648:	200185b7          	lui	a1,0x20018
2001164c:	96458613          	add	a2,a1,-1692 # 20017964 <.L__unnamed_1>
20011650:	45f1                	li	a1,28
20011652:	00004097          	auipc	ra,0x4
20011656:	e3a080e7          	jalr	-454(ra) # 2001548c <core::panicking::panic>
	...

2001165c <riscv::interrupt::enable>:
///
/// # Safety
///
/// - Do not call this function inside a critical section.
#[inline]
pub unsafe fn enable() {
2001165c:	1141                	add	sp,sp,-16
    match () {
        #[cfg(riscv)]
        () => mstatus::set_mie(),
2001165e:	c606                	sw	ra,12(sp)
20011660:	00001097          	auipc	ra,0x1
20011664:	bac080e7          	jalr	-1108(ra) # 2001220c <riscv::register::mstatus::set_mie>
        #[cfg(not(riscv))]
        () => unimplemented!(),
    }
}
20011668:	40b2                	lw	ra,12(sp)
2001166a:	0141                	add	sp,sp,16
2001166c:	8082                	ret

2001166e <riscv::interrupt::disable>:
pub unsafe fn disable() {
2001166e:	1141                	add	sp,sp,-16
        () => mstatus::clear_mie(),
20011670:	c606                	sw	ra,12(sp)
20011672:	00001097          	auipc	ra,0x1
20011676:	bae080e7          	jalr	-1106(ra) # 20012220 <riscv::register::mstatus::clear_mie>
}
2001167a:	40b2                	lw	ra,12(sp)
2001167c:	0141                	add	sp,sp,16
2001167e:	8082                	ret

20011680 <<bool as core::fmt::Debug>::fmt>:
20011680:	1141                	add	sp,sp,-16
20011682:	c606                	sw	ra,12(sp)
20011684:	c22a                	sw	a0,4(sp)
20011686:	c42e                	sw	a1,8(sp)
20011688:	00005097          	auipc	ra,0x5
2001168c:	cc8080e7          	jalr	-824(ra) # 20016350 <<bool as core::fmt::Display>::fmt>
20011690:	40b2                	lw	ra,12(sp)
20011692:	0141                	add	sp,sp,16
20011694:	8082                	ret

20011696 <core::fmt::Arguments::new_v1_formatted>:
20011696:	7179                	add	sp,sp,-48
20011698:	ca2e                	sw	a1,20(sp)
2001169a:	cc32                	sw	a2,24(sp)
2001169c:	ce36                	sw	a3,28(sp)
2001169e:	d03a                	sw	a4,32(sp)
200116a0:	d23e                	sw	a5,36(sp)
200116a2:	d442                	sw	a6,40(sp)
200116a4:	c63e                	sw	a5,12(sp)
200116a6:	c842                	sw	a6,16(sp)
200116a8:	c10c                	sw	a1,0(a0)
200116aa:	c150                	sw	a2,4(a0)
200116ac:	4632                	lw	a2,12(sp)
200116ae:	45c2                	lw	a1,16(sp)
200116b0:	c910                	sw	a2,16(a0)
200116b2:	c94c                	sw	a1,20(a0)
200116b4:	c514                	sw	a3,8(a0)
200116b6:	c558                	sw	a4,12(a0)
200116b8:	6145                	add	sp,sp,48
200116ba:	8082                	ret

200116bc <e310x::Peripherals::take>:
    pub fn take() -> Option<Self> {
200116bc:	1141                	add	sp,sp,-16
        critical_section::with(|_| {
200116be:	c606                	sw	ra,12(sp)
200116c0:	00001097          	auipc	ra,0x1
200116c4:	cbc080e7          	jalr	-836(ra) # 2001237c <critical_section::with>
    }
200116c8:	40b2                	lw	ra,12(sp)
200116ca:	0141                	add	sp,sp,16
200116cc:	8082                	ret

200116ce <e310x::Peripherals::steal>:
    #[doc = r" # Safety"]
    #[doc = r""]
    #[doc = r" Each of the returned peripherals must be used at most once."]
    #[inline]
    pub unsafe fn steal() -> Self {
        DEVICE_PERIPHERALS = true;
200116ce:	800015b7          	lui	a1,0x80001
200116d2:	4505                	li	a0,1
200116d4:	daa586a3          	sb	a0,-595(a1) # 80000dad <DEVICE_PERIPHERALS>
            },
            PWM2: PWM2 {
                _marker: PhantomData,
            },
        }
    }
200116d8:	8082                	ret

200116da <e310x_hal::device::DeviceResources::take>:
}

impl DeviceResources {
    /// Returns all the device resources *once*
    #[inline]
    pub fn take() -> Option<Self> {
200116da:	1141                	add	sp,sp,-16
        e310x::Peripherals::take().map(DeviceResources::from)
200116dc:	c606                	sw	ra,12(sp)
200116de:	c42a                	sw	a0,8(sp)
200116e0:	00000097          	auipc	ra,0x0
200116e4:	fdc080e7          	jalr	-36(ra) # 200116bc <e310x::Peripherals::take>
200116e8:	85aa                	mv	a1,a0
200116ea:	4522                	lw	a0,8(sp)
200116ec:	00000097          	auipc	ra,0x0
200116f0:	0b8080e7          	jalr	184(ra) # 200117a4 <core::option::Option<T>::map>
    }
200116f4:	40b2                	lw	ra,12(sp)
200116f6:	0141                	add	sp,sp,16
200116f8:	8082                	ret

200116fa <core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next>:
200116fa:	1141                	add	sp,sp,-16
200116fc:	c606                	sw	ra,12(sp)
200116fe:	c42a                	sw	a0,8(sp)
20011700:	00000097          	auipc	ra,0x0
20011704:	018080e7          	jalr	24(ra) # 20011718 <<core::ops::range::Range<T> as core::iter::range::RangeIteratorImpl>::spec_next>
20011708:	40b2                	lw	ra,12(sp)
2001170a:	0141                	add	sp,sp,16
2001170c:	8082                	ret

2001170e <<I as core::iter::traits::collect::IntoIterator>::into_iter>:
2001170e:	1141                	add	sp,sp,-16
20011710:	c42a                	sw	a0,8(sp)
20011712:	c62e                	sw	a1,12(sp)
20011714:	0141                	add	sp,sp,16
20011716:	8082                	ret

20011718 <<core::ops::range::Range<T> as core::iter::range::RangeIteratorImpl>::spec_next>:
20011718:	7179                	add	sp,sp,-48
2001171a:	d606                	sw	ra,44(sp)
2001171c:	85aa                	mv	a1,a0
2001171e:	c82e                	sw	a1,16(sp)
20011720:	ce2e                	sw	a1,28(sp)
20011722:	00458513          	add	a0,a1,4
20011726:	d22e                	sw	a1,36(sp)
20011728:	d42a                	sw	a0,40(sp)
2001172a:	4188                	lw	a0,0(a1)
2001172c:	41cc                	lw	a1,4(a1)
2001172e:	00b54663          	blt	a0,a1,2001173a <<core::ops::range::Range<T> as core::iter::range::RangeIteratorImpl>::spec_next+0x22>
20011732:	a009                	j	20011734 <<core::ops::range::Range<T> as core::iter::range::RangeIteratorImpl>::spec_next+0x1c>
20011734:	4501                	li	a0,0
20011736:	ca2a                	sw	a0,20(sp)
20011738:	a01d                	j	2001175e <<core::ops::range::Range<T> as core::iter::range::RangeIteratorImpl>::spec_next+0x46>
2001173a:	4542                	lw	a0,16(sp)
2001173c:	4108                	lw	a0,0(a0)
2001173e:	c42a                	sw	a0,8(sp)
20011740:	d02a                	sw	a0,32(sp)
20011742:	4585                	li	a1,1
20011744:	c62e                	sw	a1,12(sp)
20011746:	00001097          	auipc	ra,0x1
2001174a:	91e080e7          	jalr	-1762(ra) # 20012064 <<i32 as core::iter::range::Step>::forward_unchecked>
2001174e:	46c2                	lw	a3,16(sp)
20011750:	45a2                	lw	a1,8(sp)
20011752:	862a                	mv	a2,a0
20011754:	4532                	lw	a0,12(sp)
20011756:	c290                	sw	a2,0(a3)
20011758:	cc2e                	sw	a1,24(sp)
2001175a:	ca2a                	sw	a0,20(sp)
2001175c:	a009                	j	2001175e <<core::ops::range::Range<T> as core::iter::range::RangeIteratorImpl>::spec_next+0x46>
2001175e:	4552                	lw	a0,20(sp)
20011760:	45e2                	lw	a1,24(sp)
20011762:	50b2                	lw	ra,44(sp)
20011764:	6145                	add	sp,sp,48
20011766:	8082                	ret

20011768 <riscv::interrupt::free>:
/// way to enter a critical section which provides a `CriticalSection` token.
///
/// This crate provides an implementation for `critical-section` suitable for single-hart systems,
/// based on disabling all interrupts. It can be enabled with the `critical-section-single-hart` feature.
#[inline]
pub fn free<F, R>(f: F) -> R
20011768:	1141                	add	sp,sp,-16
where
    F: FnOnce() -> R,
{
    let mstatus = mstatus::read();
2001176a:	c606                	sw	ra,12(sp)
2001176c:	00001097          	auipc	ra,0x1
20011770:	a52080e7          	jalr	-1454(ra) # 200121be <riscv::register::mstatus::read>
20011774:	c22a                	sw	a0,4(sp)

    // disable interrupts
    unsafe {
        disable();
20011776:	00000097          	auipc	ra,0x0
2001177a:	ef8080e7          	jalr	-264(ra) # 2001166e <riscv::interrupt::disable>
    }

    let r = f();
2001177e:	00001097          	auipc	ra,0x1
20011782:	c92080e7          	jalr	-878(ra) # 20012410 <hifive1::stdout::configure::{{closure}}>
20011786:	0048                	add	a0,sp,4

    // If the interrupts were active before our `disable` call, then re-enable
    // them. Otherwise, keep them disabled
    if mstatus.mie() {
20011788:	00001097          	auipc	ra,0x1
2001178c:	a66080e7          	jalr	-1434(ra) # 200121ee <riscv::register::mstatus::Mstatus::mie>
20011790:	e509                	bnez	a0,2001179a <riscv::interrupt::free+0x32>
20011792:	a009                	j	20011794 <riscv::interrupt::free+0x2c>
            enable();
        }
    }

    r
}
20011794:	40b2                	lw	ra,12(sp)
20011796:	0141                	add	sp,sp,16
20011798:	8082                	ret
            enable();
2001179a:	00000097          	auipc	ra,0x0
2001179e:	ec2080e7          	jalr	-318(ra) # 2001165c <riscv::interrupt::enable>
200117a2:	bfcd                	j	20011794 <riscv::interrupt::free+0x2c>

200117a4 <core::option::Option<T>::map>:
200117a4:	7139                	add	sp,sp,-64
200117a6:	de06                	sw	ra,60(sp)
200117a8:	c62a                	sw	a0,12(sp)
200117aa:	00b109a3          	sb	a1,19(sp)
200117ae:	4505                	li	a0,1
200117b0:	02a10ca3          	sb	a0,57(sp)
200117b4:	01314503          	lbu	a0,19(sp)
200117b8:	8905                	and	a0,a0,1
200117ba:	e511                	bnez	a0,200117c6 <core::option::Option<T>::map+0x22>
200117bc:	a009                	j	200117be <core::option::Option<T>::map+0x1a>
200117be:	45b2                	lw	a1,12(sp)
200117c0:	4501                	li	a0,0
200117c2:	c188                	sw	a0,0(a1)
200117c4:	a03d                	j	200117f2 <core::option::Option<T>::map+0x4e>
200117c6:	4501                	li	a0,0
200117c8:	02a10ca3          	sb	a0,57(sp)
200117cc:	0848                	add	a0,sp,20
200117ce:	c42a                	sw	a0,8(sp)
200117d0:	fffff097          	auipc	ra,0xfffff
200117d4:	214080e7          	jalr	532(ra) # 200109e4 <core::ops::function::FnOnce::call_once>
200117d8:	45a2                	lw	a1,8(sp)
200117da:	4532                	lw	a0,12(sp)
200117dc:	0511                	add	a0,a0,4
200117de:	02400613          	li	a2,36
200117e2:	00006097          	auipc	ra,0x6
200117e6:	be6080e7          	jalr	-1050(ra) # 200173c8 <memcpy>
200117ea:	45b2                	lw	a1,12(sp)
200117ec:	4505                	li	a0,1
200117ee:	c188                	sw	a0,0(a1)
200117f0:	a009                	j	200117f2 <core::option::Option<T>::map+0x4e>
200117f2:	03914503          	lbu	a0,57(sp)
200117f6:	8905                	and	a0,a0,1
200117f8:	e509                	bnez	a0,20011802 <core::option::Option<T>::map+0x5e>
200117fa:	a009                	j	200117fc <core::option::Option<T>::map+0x58>
200117fc:	50f2                	lw	ra,60(sp)
200117fe:	6121                	add	sp,sp,64
20011800:	8082                	ret
20011802:	bfed                	j	200117fc <core::option::Option<T>::map+0x58>

20011804 <core::option::Option<T>::unwrap>:
20011804:	1141                	add	sp,sp,-16
20011806:	c606                	sw	ra,12(sp)
20011808:	c032                	sw	a2,0(sp)
2001180a:	c22e                	sw	a1,4(sp)
2001180c:	c42a                	sw	a0,8(sp)
2001180e:	4188                	lw	a0,0(a1)
20011810:	ed11                	bnez	a0,2001182c <core::option::Option<T>::unwrap+0x28>
20011812:	a009                	j	20011814 <core::option::Option<T>::unwrap+0x10>
20011814:	4602                	lw	a2,0(sp)
20011816:	20018537          	lui	a0,0x20018
2001181a:	99c50513          	add	a0,a0,-1636 # 2001799c <.L__unnamed_2>
2001181e:	02b00593          	li	a1,43
20011822:	00004097          	auipc	ra,0x4
20011826:	c6a080e7          	jalr	-918(ra) # 2001548c <core::panicking::panic>
2001182a:	0000                	unimp
2001182c:	4522                	lw	a0,8(sp)
2001182e:	4592                	lw	a1,4(sp)
20011830:	0591                	add	a1,a1,4
20011832:	02400613          	li	a2,36
20011836:	00006097          	auipc	ra,0x6
2001183a:	b92080e7          	jalr	-1134(ra) # 200173c8 <memcpy>
2001183e:	40b2                	lw	ra,12(sp)
20011840:	0141                	add	sp,sp,16
20011842:	8082                	ret

20011844 <core::option::Option<T>::replace>:
20011844:	1141                	add	sp,sp,-16
20011846:	862a                	mv	a2,a0
20011848:	c432                	sw	a2,8(sp)
2001184a:	4505                	li	a0,1
2001184c:	00a103a3          	sb	a0,7(sp)
20011850:	00064503          	lbu	a0,0(a2)
20011854:	00a107a3          	sb	a0,15(sp)
20011858:	00714583          	lbu	a1,7(sp)
2001185c:	00b60023          	sb	a1,0(a2)
20011860:	0141                	add	sp,sp,16
20011862:	8082                	ret

20011864 <<core::option::Option<T> as core::fmt::Debug>::fmt>:
20011864:	1101                	add	sp,sp,-32
20011866:	ce06                	sw	ra,28(sp)
20011868:	c22e                	sw	a1,4(sp)
2001186a:	c42a                	sw	a0,8(sp)
2001186c:	ca2a                	sw	a0,20(sp)
2001186e:	cc2e                	sw	a1,24(sp)
20011870:	4108                	lw	a0,0(a0)
20011872:	ed19                	bnez	a0,20011890 <<core::option::Option<T> as core::fmt::Debug>::fmt+0x2c>
20011874:	a009                	j	20011876 <<core::option::Option<T> as core::fmt::Debug>::fmt+0x12>
20011876:	4512                	lw	a0,4(sp)
20011878:	200175b7          	lui	a1,0x20017
2001187c:	4ca58593          	add	a1,a1,1226 # 200174ca <.L__unnamed_2+0x16>
20011880:	4611                	li	a2,4
20011882:	00004097          	auipc	ra,0x4
20011886:	78a080e7          	jalr	1930(ra) # 2001600c <core::fmt::Formatter::write_str>
2001188a:	00a107a3          	sb	a0,15(sp)
2001188e:	a02d                	j	200118b8 <<core::option::Option<T> as core::fmt::Debug>::fmt+0x54>
20011890:	4512                	lw	a0,4(sp)
20011892:	45a2                	lw	a1,8(sp)
20011894:	c82e                	sw	a1,16(sp)
20011896:	200175b7          	lui	a1,0x20017
2001189a:	4be58593          	add	a1,a1,1214 # 200174be <.L__unnamed_2+0xa>
2001189e:	20018637          	lui	a2,0x20018
200118a2:	9c860713          	add	a4,a2,-1592 # 200179c8 <.L__unnamed_1>
200118a6:	4611                	li	a2,4
200118a8:	0814                	add	a3,sp,16
200118aa:	00005097          	auipc	ra,0x5
200118ae:	a04080e7          	jalr	-1532(ra) # 200162ae <core::fmt::Formatter::debug_tuple_field1_finish>
200118b2:	00a107a3          	sb	a0,15(sp)
200118b6:	a009                	j	200118b8 <<core::option::Option<T> as core::fmt::Debug>::fmt+0x54>
200118b8:	00f14503          	lbu	a0,15(sp)
200118bc:	40f2                	lw	ra,28(sp)
200118be:	6105                	add	sp,sp,32
200118c0:	8082                	ret

200118c2 <<&T as core::fmt::Debug>::fmt>:
200118c2:	1141                	add	sp,sp,-16
200118c4:	c606                	sw	ra,12(sp)
200118c6:	c22a                	sw	a0,4(sp)
200118c8:	c42e                	sw	a1,8(sp)
200118ca:	4108                	lw	a0,0(a0)
200118cc:	00000097          	auipc	ra,0x0
200118d0:	702080e7          	jalr	1794(ra) # 20011fce <<core::panic::location::Location as core::fmt::Debug>::fmt>
200118d4:	40b2                	lw	ra,12(sp)
200118d6:	0141                	add	sp,sp,16
200118d8:	8082                	ret

200118da <<&T as core::fmt::Debug>::fmt>:
200118da:	1141                	add	sp,sp,-16
200118dc:	c606                	sw	ra,12(sp)
200118de:	862e                	mv	a2,a1
200118e0:	85aa                	mv	a1,a0
200118e2:	c22e                	sw	a1,4(sp)
200118e4:	c432                	sw	a2,8(sp)
200118e6:	4188                	lw	a0,0(a1)
200118e8:	41cc                	lw	a1,4(a1)
200118ea:	00004097          	auipc	ra,0x4
200118ee:	946080e7          	jalr	-1722(ra) # 20015230 <<dyn core::any::Any+core::marker::Sync+core::marker::Send as core::fmt::Debug>::fmt>
200118f2:	40b2                	lw	ra,12(sp)
200118f4:	0141                	add	sp,sp,16
200118f6:	8082                	ret

200118f8 <yarr2::trap::switch_task>:
pub fn switch_task(frame: *mut TrapFrame) -> ! {
200118f8:	1141                	add	sp,sp,-16
200118fa:	c62a                	sw	a0,12(sp)
    unsafe { m_switch_task(frame) }
200118fc:	fffff097          	auipc	ra,0xfffff
20011900:	938080e7          	jalr	-1736(ra) # 20010234 <m_switch_task>
	...

20011906 <yarr2::trap::init>:

pub fn init() {
20011906:	1141                	add	sp,sp,-16
20011908:	c606                	sw	ra,12(sp)
2001190a:	4501                	li	a0,0
    unsafe {
        riscv::register::mtvec::write(
            m_trap_vec as *const () as usize,
            riscv::register::mtvec::TrapMode::Direct,
2001190c:	00a105a3          	sb	a0,11(sp)
        riscv::register::mtvec::write(
20011910:	00b14583          	lbu	a1,11(sp)
20011914:	20010537          	lui	a0,0x20010
20011918:	10450513          	add	a0,a0,260 # 20010104 <m_trap_vec>
2001191c:	00000097          	auipc	ra,0x0
20011920:	c06080e7          	jalr	-1018(ra) # 20011522 <riscv::register::mtvec::write>
        );
    }
}
20011924:	40b2                	lw	ra,12(sp)
20011926:	0141                	add	sp,sp,16
20011928:	8082                	ret

2001192a <yarr2::mmio_write>:
unsafe fn mmio_write(address: usize, offset: usize, value: usize) {
2001192a:	1101                	add	sp,sp,-32
2001192c:	c02a                	sw	a0,0(sp)
2001192e:	c22e                	sw	a1,4(sp)
20011930:	c432                	sw	a2,8(sp)
    let reg = address as *mut usize;
20011932:	c62a                	sw	a0,12(sp)
20011934:	cc2a                	sw	a0,24(sp)
20011936:	ce2e                	sw	a1,28(sp)
20011938:	058a                	sll	a1,a1,0x2
2001193a:	952e                	add	a0,a0,a1
2001193c:	c82a                	sw	a0,16(sp)
2001193e:	ca32                	sw	a2,20(sp)
20011940:	c110                	sw	a2,0(a0)
}
20011942:	6105                	add	sp,sp,32
20011944:	8082                	ret

20011946 <yarr2::mmio_read>:
unsafe fn mmio_read(address: usize, offset: usize) -> usize {
20011946:	1101                	add	sp,sp,-32
20011948:	c02a                	sw	a0,0(sp)
2001194a:	c22e                	sw	a1,4(sp)
    let reg = address as *mut usize;
2001194c:	c42a                	sw	a0,8(sp)
2001194e:	cc2a                	sw	a0,24(sp)
20011950:	ce2e                	sw	a1,28(sp)
20011952:	058a                	sll	a1,a1,0x2
20011954:	952e                	add	a0,a0,a1
20011956:	c62a                	sw	a0,12(sp)
20011958:	c82a                	sw	a0,16(sp)
2001195a:	4108                	lw	a0,0(a0)
2001195c:	ca2a                	sw	a0,20(sp)
2001195e:	4552                	lw	a0,20(sp)
}
20011960:	6105                	add	sp,sp,32
20011962:	8082                	ret

20011964 <rust_begin_unwind>:
    }
}

#[inline(never)]
#[panic_handler]
fn panic(info: &core::panic::PanicInfo) -> ! {
20011964:	7131                	add	sp,sp,-192
20011966:	df06                	sw	ra,188(sp)
20011968:	c82a                	sw	a0,16(sp)
2001196a:	080c                	add	a1,sp,16
2001196c:	db2e                	sw	a1,180(sp)
2001196e:	20012537          	lui	a0,0x20012
20011972:	3b450513          	add	a0,a0,948 # 200123b4 <<&T as core::fmt::Debug>::fmt>
20011976:	dd2a                	sw	a0,184(sp)
20011978:	d72e                	sw	a1,172(sp)
2001197a:	d92a                	sw	a0,176(sp)
2001197c:	55ba                	lw	a1,172(sp)
2001197e:	554a                	lw	a0,176(sp)
    sprintln!("panic: {:#?}", info);
20011980:	d62e                	sw	a1,44(sp)
20011982:	d82a                	sw	a0,48(sp)
20011984:	450d                	li	a0,3
20011986:	06a10ba3          	sb	a0,119(sp)
2001198a:	4609                	li	a2,2
2001198c:	dcb2                	sw	a2,120(sp)
2001198e:	c132                	sw	a2,128(sp)
20011990:	07714803          	lbu	a6,119(sp)
20011994:	5766                	lw	a4,120(sp)
20011996:	56f6                	lw	a3,124(sp)
20011998:	458a                	lw	a1,128(sp)
2001199a:	451a                	lw	a0,132(sp)
2001199c:	4281                	li	t0,0
2001199e:	c716                	sw	t0,140(sp)
200119a0:	02000893          	li	a7,32
200119a4:	c946                	sw	a7,144(sp)
200119a6:	09010ba3          	sb	a6,151(sp)
200119aa:	4791                	li	a5,4
200119ac:	cd3e                	sw	a5,152(sp)
200119ae:	cf3a                	sw	a4,156(sp)
200119b0:	d136                	sw	a3,160(sp)
200119b2:	d32e                	sw	a1,164(sp)
200119b4:	d52a                	sw	a0,168(sp)
200119b6:	d496                	sw	t0,104(sp)
200119b8:	d2c6                	sw	a7,100(sp)
200119ba:	07010823          	sb	a6,112(sp)
200119be:	d6be                	sw	a5,108(sp)
200119c0:	caba                	sw	a4,84(sp)
200119c2:	ccb6                	sw	a3,88(sp)
200119c4:	ceae                	sw	a1,92(sp)
200119c6:	d0aa                	sw	a0,96(sp)
200119c8:	5546                	lw	a0,112(sp)
200119ca:	c8aa                	sw	a0,80(sp)
200119cc:	5536                	lw	a0,108(sp)
200119ce:	c6aa                	sw	a0,76(sp)
200119d0:	5526                	lw	a0,104(sp)
200119d2:	c4aa                	sw	a0,72(sp)
200119d4:	5516                	lw	a0,100(sp)
200119d6:	c2aa                	sw	a0,68(sp)
200119d8:	5506                	lw	a0,96(sp)
200119da:	c0aa                	sw	a0,64(sp)
200119dc:	4576                	lw	a0,92(sp)
200119de:	de2a                	sw	a0,60(sp)
200119e0:	4566                	lw	a0,88(sp)
200119e2:	dc2a                	sw	a0,56(sp)
200119e4:	4556                	lw	a0,84(sp)
200119e6:	da2a                	sw	a0,52(sp)
200119e8:	20018537          	lui	a0,0x20018
200119ec:	ac850593          	add	a1,a0,-1336 # 20017ac8 <.L__unnamed_4>
200119f0:	0848                	add	a0,sp,20
200119f2:	c62a                	sw	a0,12(sp)
200119f4:	1074                	add	a3,sp,44
200119f6:	185c                	add	a5,sp,52
200119f8:	4805                	li	a6,1
200119fa:	8742                	mv	a4,a6
200119fc:	00000097          	auipc	ra,0x0
20011a00:	c9a080e7          	jalr	-870(ra) # 20011696 <core::fmt::Arguments::new_v1_formatted>
20011a04:	4532                	lw	a0,12(sp)
20011a06:	00002097          	auipc	ra,0x2
20011a0a:	a60080e7          	jalr	-1440(ra) # 20013466 <hifive1::stdout::write_fmt>
20011a0e:	a009                	j	20011a10 <rust_begin_unwind+0xac>
20011a10:	4511                	li	a0,4
    loop {
        core::sync::atomic::compiler_fence(core::sync::atomic::Ordering::SeqCst);
20011a12:	08a105a3          	sb	a0,139(sp)
20011a16:	08b14503          	lbu	a0,139(sp)
20011a1a:	00000097          	auipc	ra,0x0
20011a1e:	9c2080e7          	jalr	-1598(ra) # 200113dc <core::sync::atomic::compiler_fence>
20011a22:	b7fd                	j	20011a10 <rust_begin_unwind+0xac>

20011a24 <main>:
#[entry]
20011a24:	7131                	add	sp,sp,-192
        riscv::interrupt::disable();
20011a26:	df06                	sw	ra,188(sp)
20011a28:	00000097          	auipc	ra,0x0
20011a2c:	c46080e7          	jalr	-954(ra) # 2001166e <riscv::interrupt::disable>
    trap::init();
20011a30:	00000097          	auipc	ra,0x0
20011a34:	ed6080e7          	jalr	-298(ra) # 20011906 <yarr2::trap::init>
20011a38:	08c8                	add	a0,sp,84
    let dr = DeviceResources::take().unwrap();
20011a3a:	c82a                	sw	a0,16(sp)
20011a3c:	00000097          	auipc	ra,0x0
20011a40:	c9e080e7          	jalr	-866(ra) # 200116da <e310x_hal::device::DeviceResources::take>
20011a44:	45c2                	lw	a1,16(sp)
20011a46:	20018537          	lui	a0,0x20018
20011a4a:	ae450613          	add	a2,a0,-1308 # 20017ae4 <.L__unnamed_5>
20011a4e:	1808                	add	a0,sp,48
20011a50:	00000097          	auipc	ra,0x0
20011a54:	db4080e7          	jalr	-588(ra) # 20011804 <core::option::Option<T>::unwrap>
20011a58:	14000513          	li	a0,320
    let clock_freq = 320.mhz().into();
20011a5c:	00003097          	auipc	ra,0x3
20011a60:	5d4080e7          	jalr	1492(ra) # 20015030 <<u32 as e310x_hal::time::U32Ext>::mhz>
20011a64:	00003097          	auipc	ra,0x3
20011a68:	5d8080e7          	jalr	1496(ra) # 2001503c <<e310x_hal::time::MegaHertz as core::convert::Into<e310x_hal::time::Hertz>>::into>
20011a6c:	d72a                	sw	a0,172(sp)
    let clocks = hifive1::clock::configure(p.PRCI, p.AONCLK, clock_freq);
20011a6e:	00002097          	auipc	ra,0x2
20011a72:	85c080e7          	jalr	-1956(ra) # 200132ca <hifive1::clock::configure>
20011a76:	ca2a                	sw	a0,20(sp)
20011a78:	cc2e                	sw	a1,24(sp)
20011a7a:	d92a                	sw	a0,176(sp)
20011a7c:	db2e                	sw	a1,180(sp)
20011a7e:	6571                	lui	a0,0x1c
20011a80:	20050513          	add	a0,a0,512 # 1c200 <.Lline_table_start0+0xfcde>
        115_200.bps(),
20011a84:	00003097          	auipc	ra,0x3
20011a88:	5a0080e7          	jalr	1440(ra) # 20015024 <<u32 as e310x_hal::time::U32Ext>::bps>
20011a8c:	45d2                	lw	a1,20(sp)
20011a8e:	4662                	lw	a2,24(sp)
    hifive1::stdout::configure(
20011a90:	00001097          	auipc	ra,0x1
20011a94:	93c080e7          	jalr	-1732(ra) # 200123cc <hifive1::stdout::configure>
    sprintln!("Hello, World!");
20011a98:	20018537          	lui	a0,0x20018
20011a9c:	af450513          	add	a0,a0,-1292 # 20017af4 <.L__unnamed_6>
20011aa0:	45b9                	li	a1,14
20011aa2:	00002097          	auipc	ra,0x2
20011aa6:	970080e7          	jalr	-1680(ra) # 20013412 <hifive1::stdout::write_str>
20011aaa:	10012537          	lui	a0,0x10012
20011aae:	d42a                	sw	a0,40(sp)
20011ab0:	458d                	li	a1,3
        let mut state = mmio_read(GPIO_CTRL_ADDR, GPIO_REG_OUTPUT_VAL);
20011ab2:	ce2e                	sw	a1,28(sp)
20011ab4:	00000097          	auipc	ra,0x0
20011ab8:	e92080e7          	jalr	-366(ra) # 20011946 <yarr2::mmio_read>
20011abc:	45f2                	lw	a1,28(sp)
20011abe:	862a                	mv	a2,a0
20011ac0:	5522                	lw	a0,40(sp)
20011ac2:	deb2                	sw	a2,124(sp)
        state |= RED_LED | GREEN_LED | BLUE_LED;
20011ac4:	5676                	lw	a2,124(sp)
20011ac6:	006806b7          	lui	a3,0x680
20011aca:	d036                	sw	a3,32(sp)
20011acc:	8e55                	or	a2,a2,a3
20011ace:	deb2                	sw	a2,124(sp)
        mmio_write(GPIO_CTRL_ADDR, GPIO_REG_OUTPUT_VAL, state);
20011ad0:	5676                	lw	a2,124(sp)
20011ad2:	00000097          	auipc	ra,0x0
20011ad6:	e58080e7          	jalr	-424(ra) # 2001192a <yarr2::mmio_write>
20011ada:	5522                	lw	a0,40(sp)
20011adc:	4589                	li	a1,2
        let mut state = mmio_read(GPIO_CTRL_ADDR, GPIO_REG_OUTPUT_EN);
20011ade:	d22e                	sw	a1,36(sp)
20011ae0:	00000097          	auipc	ra,0x0
20011ae4:	e66080e7          	jalr	-410(ra) # 20011946 <yarr2::mmio_read>
20011ae8:	5682                	lw	a3,32(sp)
20011aea:	5592                	lw	a1,36(sp)
20011aec:	862a                	mv	a2,a0
20011aee:	5522                	lw	a0,40(sp)
20011af0:	c132                	sw	a2,128(sp)
        state |= RED_LED | GREEN_LED | BLUE_LED;
20011af2:	460a                	lw	a2,128(sp)
20011af4:	8e55                	or	a2,a2,a3
20011af6:	c132                	sw	a2,128(sp)
        mmio_write(GPIO_CTRL_ADDR, GPIO_REG_OUTPUT_EN, state);
20011af8:	460a                	lw	a2,128(sp)
20011afa:	00000097          	auipc	ra,0x0
20011afe:	e30080e7          	jalr	-464(ra) # 2001192a <yarr2::mmio_write>
    let mut tleds = hifive1::rgb(rgb_pins.0, rgb_pins.1, rgb_pins.2);
20011b02:	00001097          	auipc	ra,0x1
20011b06:	858080e7          	jalr	-1960(ra) # 2001235a <hifive1::led::rgb>
20011b0a:	08710513          	add	a0,sp,135
    let mut ileds: [&mut dyn Led; 3] = [&mut tleds.0, &mut tleds.1, &mut tleds.2];
20011b0e:	c52a                	sw	a0,136(sp)
20011b10:	200185b7          	lui	a1,0x20018
20011b14:	b0458593          	add	a1,a1,-1276 # 20017b04 <.L__unnamed_1>
20011b18:	c72e                	sw	a1,140(sp)
20011b1a:	c92a                	sw	a0,144(sp)
20011b1c:	200185b7          	lui	a1,0x20018
20011b20:	b1c58593          	add	a1,a1,-1252 # 20017b1c <.L__unnamed_2>
20011b24:	cb2e                	sw	a1,148(sp)
20011b26:	cd2a                	sw	a0,152(sp)
20011b28:	20018537          	lui	a0,0x20018
20011b2c:	b3450513          	add	a0,a0,-1228 # 20017b34 <.L__unnamed_3>
20011b30:	cf2a                	sw	a0,156(sp)
20011b32:	0128                	add	a0,sp,136
    for led in &mut ileds {
20011b34:	00000097          	auipc	ra,0x0
20011b38:	7ea080e7          	jalr	2026(ra) # 2001231e <core::array::<impl core::iter::traits::collect::IntoIterator for &mut [T; N]>::into_iter>
20011b3c:	d12a                	sw	a0,160(sp)
20011b3e:	d32e                	sw	a1,164(sp)
20011b40:	a009                	j	20011b42 <main+0x11e>
20011b42:	1108                	add	a0,sp,160
20011b44:	00000097          	auipc	ra,0x0
20011b48:	5c4080e7          	jalr	1476(ra) # 20012108 <<core::slice::iter::IterMut<T> as core::iter::traits::iterator::Iterator>::next>
20011b4c:	d52a                	sw	a0,168(sp)
20011b4e:	552a                	lw	a0,168(sp)
20011b50:	e149                	bnez	a0,20011bd2 <main+0x1ae>
20011b52:	a009                	j	20011b54 <main+0x130>
        PROCESS_LIST[0].init(|| {
20011b54:	80000537          	lui	a0,0x80000
20011b58:	c62a                	sw	a0,12(sp)
20011b5a:	00052503          	lw	a0,0(a0) # 80000000 <yarr2::PROCESS_LIST>
20011b5e:	200115b7          	lui	a1,0x20011
20011b62:	9d258593          	add	a1,a1,-1582 # 200109d2 <core::ops::function::FnOnce::call_once>
20011b66:	00000097          	auipc	ra,0x0
20011b6a:	a78080e7          	jalr	-1416(ra) # 200115de <yarr2::process::Process::init>
20011b6e:	4532                	lw	a0,12(sp)
        PROCESS_LIST[1].init(|| {
20011b70:	00052503          	lw	a0,0(a0)
20011b74:	48c50513          	add	a0,a0,1164
20011b78:	200115b7          	lui	a1,0x20011
20011b7c:	9c058593          	add	a1,a1,-1600 # 200109c0 <core::ops::function::FnOnce::call_once>
20011b80:	00000097          	auipc	ra,0x0
20011b84:	a5e080e7          	jalr	-1442(ra) # 200115de <yarr2::process::Process::init>
20011b88:	4532                	lw	a0,12(sp)
        PROCESS_LIST[2].init(|| {
20011b8a:	00052503          	lw	a0,0(a0)
20011b8e:	7ff50513          	add	a0,a0,2047
20011b92:	11950513          	add	a0,a0,281
20011b96:	200115b7          	lui	a1,0x20011
20011b9a:	9f658593          	add	a1,a1,-1546 # 200109f6 <core::ops::function::FnOnce::call_once>
20011b9e:	00000097          	auipc	ra,0x0
20011ba2:	a40080e7          	jalr	-1472(ra) # 200115de <yarr2::process::Process::init>
20011ba6:	4532                	lw	a0,12(sp)
        mscratch::write(&mut PROCESS_LIST[0].frame as *mut cpu::TrapFrame as usize);
20011ba8:	00052503          	lw	a0,0(a0)
20011bac:	00000097          	auipc	ra,0x0
20011bb0:	498080e7          	jalr	1176(ra) # 20012044 <riscv::register::mscratch::write>
20011bb4:	7d000513          	li	a0,2000
20011bb8:	4581                	li	a1,0
        schedule::yarr_set_timer(2000);
20011bba:	00000097          	auipc	ra,0x0
20011bbe:	67a080e7          	jalr	1658(ra) # 20012234 <yarr_set_timer>
20011bc2:	4532                	lw	a0,12(sp)
        trap::switch_task(&mut PROCESS_LIST[0].frame)
20011bc4:	00052503          	lw	a0,0(a0)
20011bc8:	00000097          	auipc	ra,0x0
20011bcc:	d30080e7          	jalr	-720(ra) # 200118f8 <yarr2::trap::switch_task>
20011bd0:	0000                	unimp
    for led in &mut ileds {
20011bd2:	55aa                	lw	a1,168(sp)
20011bd4:	dd2e                	sw	a1,184(sp)
        led.off();
20011bd6:	4188                	lw	a0,0(a1)
20011bd8:	41cc                	lw	a1,4(a1)
20011bda:	45cc                	lw	a1,12(a1)
20011bdc:	9582                	jalr	a1
20011bde:	b795                	j	20011b42 <main+0x11e>

20011be0 <e310x_hal::serial::Serial<UART,(TX,RX)>::new>:
    uart: UART,
}

impl<UART: UartX, TX, RX> Serial<UART, (TX, RX)> {
    /// Configures a UART peripheral to provide serial communication
    pub fn new(uart: UART, pins: (TX, RX), baud_rate: Bps, clocks: Clocks) -> Self
20011be0:	7151                	add	sp,sp,-240
20011be2:	d786                	sw	ra,236(sp)
20011be4:	d22a                	sw	a0,36(sp)
20011be6:	d82e                	sw	a1,48(sp)
20011be8:	da32                	sw	a2,52(sp)
20011bea:	c2aa                	sw	a0,68(sp)
20011bec:	1808                	add	a0,sp,48
    where
        TX: TxPin<UART>,
        RX: RxPin<UART>,
    {
        let div = clocks.tlclk().0 / baud_rate.0 - 1;
20011bee:	00003097          	auipc	ra,0x3
20011bf2:	106080e7          	jalr	262(ra) # 20014cf4 <e310x_hal::clock::Clocks::tlclk>
20011bf6:	85aa                	mv	a1,a0
20011bf8:	5512                	lw	a0,36(sp)
20011bfa:	d42e                	sw	a1,40(sp)
20011bfc:	cd01                	beqz	a0,20011c14 <e310x_hal::serial::Serial<UART,(TX,RX)>::new+0x34>
20011bfe:	a009                	j	20011c00 <e310x_hal::serial::Serial<UART,(TX,RX)>::new+0x20>
20011c00:	5522                	lw	a0,40(sp)
20011c02:	5592                	lw	a1,36(sp)
20011c04:	02b55533          	divu	a0,a0,a1
20011c08:	fff50593          	add	a1,a0,-1
20011c0c:	d02e                	sw	a1,32(sp)
20011c0e:	12050763          	beqz	a0,20011d3c <e310x_hal::serial::Serial<UART,(TX,RX)>::new+0x15c>
20011c12:	a839                	j	20011c30 <e310x_hal::serial::Serial<UART,(TX,RX)>::new+0x50>
20011c14:	20018537          	lui	a0,0x20018
20011c18:	bc050513          	add	a0,a0,-1088 # 20017bc0 <str.0>
20011c1c:	200185b7          	lui	a1,0x20018
20011c20:	bac58613          	add	a2,a1,-1108 # 20017bac <.L__unnamed_1>
20011c24:	45e5                	li	a1,25
20011c26:	00004097          	auipc	ra,0x4
20011c2a:	866080e7          	jalr	-1946(ra) # 2001548c <core::panicking::panic>
20011c2e:	0000                	unimp
20011c30:	5502                	lw	a0,32(sp)
20011c32:	dc2a                	sw	a0,56(sp)
20011c34:	02f10513          	add	a0,sp,47
20011c38:	c82a                	sw	a0,16(sp)
20011c3a:	caaa                	sw	a0,84(sp)
20011c3c:	10013537          	lui	a0,0x10013
20011c40:	ca2a                	sw	a0,20(sp)
20011c42:	0541                	add	a0,a0,16 # 10013010 <.Lline_table_start1+0xffe3b9a>
20011c44:	c22a                	sw	a0,4(sp)
20011c46:	cb2a                	sw	a0,148(sp)
20011c48:	4501                	li	a0,0
    pub fn write<F>(&self, f: F)
    where
        F: FnOnce(&mut REG::Writer) -> &mut W<REG>,
    {
        self.register.set(
            f(&mut REG::Writer::from(W {
20011c4a:	cc2a                	sw	a0,24(sp)
20011c4c:	c92a                	sw	a0,144(sp)
20011c4e:	454a                	lw	a0,144(sp)
20011c50:	cf2a                	sw	a0,156(sp)
    }
}
impl From<crate::W<IE_SPEC>> for W {
    #[inline(always)]
    fn from(writer: crate::W<IE_SPEC>) -> Self {
        W(writer)
20011c52:	cd2a                	sw	a0,152(sp)
    }
20011c54:	456a                	lw	a0,152(sp)
20011c56:	c72a                	sw	a0,140(sp)
20011c58:	0168                	add	a0,sp,140
20011c5a:	c52a                	sw	a0,136(sp)
20011c5c:	452a                	lw	a0,136(sp)
20011c5e:	00000097          	auipc	ra,0x0
20011c62:	19e080e7          	jalr	414(ra) # 20011dfc <e310x_hal::serial::Serial<UART,(TX,RX)>::new::{{closure}}>
20011c66:	85aa                	mv	a1,a0
20011c68:	4512                	lw	a0,4(sp)
20011c6a:	418c                	lw	a1,0(a1)
20011c6c:	c5aa                	sw	a0,200(sp)
20011c6e:	c7ae                	sw	a1,204(sp)
20011c70:	c9aa                	sw	a0,208(sp)
    /// Sets the contained value
    #[inline(always)]
    pub fn set(&self, value: T)
        where T: Copy
    {
        unsafe { ptr::write_volatile(self.value.get(), value) }
20011c72:	00002097          	auipc	ra,0x2
20011c76:	9f4080e7          	jalr	-1548(ra) # 20013666 <core::ptr::write_volatile>
20011c7a:	4542                	lw	a0,16(sp)
20011c7c:	4652                	lw	a2,20(sp)
20011c7e:	45e2                	lw	a1,24(sp)
20011c80:	c8aa                	sw	a0,80(sp)
20011c82:	1828                	add	a0,sp,56
        unsafe {
            uart.ie.write(|w| w.txwm().bit(false).rxwm().bit(false));
            uart.div.write(|w| w.bits(div));
20011c84:	de2a                	sw	a0,60(sp)
20011c86:	5572                	lw	a0,60(sp)
20011c88:	0661                	add	a2,a2,24
20011c8a:	c432                	sw	a2,8(sp)
20011c8c:	d732                	sw	a2,172(sp)
20011c8e:	d92a                	sw	a0,176(sp)
20011c90:	d52e                	sw	a1,168(sp)
20011c92:	55aa                	lw	a1,168(sp)
20011c94:	dd2e                	sw	a1,184(sp)
    }
}
impl From<crate::W<DIV_SPEC>> for W {
    #[inline(always)]
    fn from(writer: crate::W<DIV_SPEC>) -> Self {
        W(writer)
20011c96:	db2e                	sw	a1,180(sp)
    }
20011c98:	55da                	lw	a1,180(sp)
20011c9a:	d32e                	sw	a1,164(sp)
20011c9c:	114c                	add	a1,sp,164
20011c9e:	d12e                	sw	a1,160(sp)
20011ca0:	558a                	lw	a1,160(sp)
20011ca2:	00000097          	auipc	ra,0x0
20011ca6:	1aa080e7          	jalr	426(ra) # 20011e4c <e310x_hal::serial::Serial<UART,(TX,RX)>::new::{{closure}}>
20011caa:	85aa                	mv	a1,a0
20011cac:	4522                	lw	a0,8(sp)
20011cae:	418c                	lw	a1,0(a1)
20011cb0:	df2a                	sw	a0,188(sp)
20011cb2:	c1ae                	sw	a1,192(sp)
20011cb4:	c3aa                	sw	a0,196(sp)
20011cb6:	00002097          	auipc	ra,0x2
20011cba:	9b0080e7          	jalr	-1616(ra) # 20013666 <core::ptr::write_volatile>
20011cbe:	4642                	lw	a2,16(sp)
20011cc0:	45d2                	lw	a1,20(sp)
20011cc2:	4562                	lw	a0,24(sp)
20011cc4:	c6b2                	sw	a2,76(sp)
20011cc6:	05a1                	add	a1,a1,8
20011cc8:	c62e                	sw	a1,12(sp)
20011cca:	deae                	sw	a1,124(sp)
20011ccc:	dcaa                	sw	a0,120(sp)
20011cce:	5566                	lw	a0,120(sp)
20011cd0:	c32a                	sw	a0,132(sp)
    }
}
impl From<crate::W<TXCTRL_SPEC>> for W {
    #[inline(always)]
    fn from(writer: crate::W<TXCTRL_SPEC>) -> Self {
        W(writer)
20011cd2:	c12a                	sw	a0,128(sp)
    }
20011cd4:	450a                	lw	a0,128(sp)
20011cd6:	daaa                	sw	a0,116(sp)
20011cd8:	18c8                	add	a0,sp,116
20011cda:	d8aa                	sw	a0,112(sp)
20011cdc:	5546                	lw	a0,112(sp)
20011cde:	00000097          	auipc	ra,0x0
20011ce2:	0ac080e7          	jalr	172(ra) # 20011d8a <e310x_hal::serial::Serial<UART,(TX,RX)>::new::{{closure}}>
20011ce6:	85aa                	mv	a1,a0
20011ce8:	4532                	lw	a0,12(sp)
20011cea:	418c                	lw	a1,0(a1)
20011cec:	cbaa                	sw	a0,212(sp)
20011cee:	cdae                	sw	a1,216(sp)
20011cf0:	cfaa                	sw	a0,220(sp)
20011cf2:	00002097          	auipc	ra,0x2
20011cf6:	974080e7          	jalr	-1676(ra) # 20013666 <core::ptr::write_volatile>
20011cfa:	4642                	lw	a2,16(sp)
20011cfc:	45d2                	lw	a1,20(sp)
20011cfe:	4562                	lw	a0,24(sp)
20011d00:	c4b2                	sw	a2,72(sp)
20011d02:	05b1                	add	a1,a1,12
20011d04:	ce2e                	sw	a1,28(sp)
20011d06:	d2ae                	sw	a1,100(sp)
20011d08:	d0aa                	sw	a0,96(sp)
20011d0a:	5506                	lw	a0,96(sp)
20011d0c:	d6aa                	sw	a0,108(sp)
    }
}
impl From<crate::W<RXCTRL_SPEC>> for W {
    #[inline(always)]
    fn from(writer: crate::W<RXCTRL_SPEC>) -> Self {
        W(writer)
20011d0e:	d4aa                	sw	a0,104(sp)
    }
20011d10:	5526                	lw	a0,104(sp)
20011d12:	ceaa                	sw	a0,92(sp)
20011d14:	08e8                	add	a0,sp,92
20011d16:	ccaa                	sw	a0,88(sp)
20011d18:	4566                	lw	a0,88(sp)
20011d1a:	00000097          	auipc	ra,0x0
20011d1e:	040080e7          	jalr	64(ra) # 20011d5a <e310x_hal::serial::Serial<UART,(TX,RX)>::new::{{closure}}>
20011d22:	85aa                	mv	a1,a0
20011d24:	4572                	lw	a0,28(sp)
20011d26:	418c                	lw	a1,0(a1)
20011d28:	d1aa                	sw	a0,224(sp)
20011d2a:	d3ae                	sw	a1,228(sp)
20011d2c:	d5aa                	sw	a0,232(sp)
20011d2e:	00002097          	auipc	ra,0x2
20011d32:	938080e7          	jalr	-1736(ra) # 20013666 <core::ptr::write_volatile>
                .write(|w| w.counter().bits(1).enable().bit(true));
            uart.rxctrl.write(|w| w.enable().bit(true));
        }

        Serial { uart, pins }
    }
20011d36:	50be                	lw	ra,236(sp)
20011d38:	616d                	add	sp,sp,240
20011d3a:	8082                	ret
        let div = clocks.tlclk().0 / baud_rate.0 - 1;
20011d3c:	20018537          	lui	a0,0x20018
20011d40:	be050513          	add	a0,a0,-1056 # 20017be0 <str.1>
20011d44:	200185b7          	lui	a1,0x20018
20011d48:	bac58613          	add	a2,a1,-1108 # 20017bac <.L__unnamed_1>
20011d4c:	02100593          	li	a1,33
20011d50:	00003097          	auipc	ra,0x3
20011d54:	73c080e7          	jalr	1852(ra) # 2001548c <core::panicking::panic>
	...

20011d5a <e310x_hal::serial::Serial<UART,(TX,RX)>::new::{{closure}}>:
            uart.rxctrl.write(|w| w.enable().bit(true));
20011d5a:	7179                	add	sp,sp,-48
20011d5c:	c62a                	sw	a0,12(sp)
20011d5e:	c82a                	sw	a0,16(sp)
20011d60:	cc2a                	sw	a0,24(sp)
{
    /// Creates a new instance of the writer
    #[allow(unused)]
    #[inline(always)]
    pub(crate) fn new(w: &'a mut REG::Writer) -> Self {
        Self {
20011d62:	ca2a                	sw	a0,20(sp)
            w,
            _field: marker::PhantomData,
        }
    }
20011d64:	4552                	lw	a0,20(sp)
20011d66:	ce2a                	sw	a0,28(sp)
20011d68:	4585                	li	a1,1
20011d6a:	02b10123          	sb	a1,34(sp)
            FI: Into<bool>,
        {
            /// Writes bit to the field
            #[inline(always)]
            pub fn bit(self, value: bool) -> &'a mut REG::Writer {
                self.w.bits = (self.w.bits & !(1 << { OF })) | ((<$U>::from(value) & 1) << { OF });
20011d6e:	4572                	lw	a0,28(sp)
20011d70:	d22a                	sw	a0,36(sp)
20011d72:	4108                	lw	a0,0(a0)
20011d74:	02b101a3          	sb	a1,35(sp)
20011d78:	45f2                	lw	a1,28(sp)
20011d7a:	d42e                	sw	a1,40(sp)
20011d7c:	00156513          	or	a0,a0,1
20011d80:	c188                	sw	a0,0(a1)
                self.w
20011d82:	4572                	lw	a0,28(sp)
20011d84:	d62a                	sw	a0,44(sp)
20011d86:	6145                	add	sp,sp,48
20011d88:	8082                	ret

20011d8a <e310x_hal::serial::Serial<UART,(TX,RX)>::new::{{closure}}>:
                .write(|w| w.counter().bits(1).enable().bit(true));
20011d8a:	715d                	add	sp,sp,-80
20011d8c:	c686                	sw	ra,76(sp)
20011d8e:	c62a                	sw	a0,12(sp)
20011d90:	ca2a                	sw	a0,20(sp)
20011d92:	d22a                	sw	a0,36(sp)
        Self {
20011d94:	d02a                	sw	a0,32(sp)
    }
20011d96:	5502                	lw	a0,32(sp)
20011d98:	d82a                	sw	a0,48(sp)
20011d9a:	4505                	li	a0,1
20011d9c:	c02a                	sw	a0,0(sp)
20011d9e:	02a10ba3          	sb	a0,55(sp)
            /// # Safety
            ///
            /// Passing incorrect value can cause undefined behaviour. See reference manual
            #[inline(always)]
            pub unsafe fn bits(self, value: N) -> &'a mut REG::Writer {
                self.w.bits = (self.w.bits & !(Self::MASK << { OF }))
20011da2:	55c2                	lw	a1,48(sp)
20011da4:	dc2e                	sw	a1,56(sp)
20011da6:	418c                	lw	a1,0(a1)
20011da8:	fff90637          	lui	a2,0xfff90
20011dac:	167d                	add	a2,a2,-1 # fff8ffff <_sstack+0x7ff8bfff>
20011dae:	8df1                	and	a1,a1,a2
                    | ((value.into() & Self::MASK) << { OF });
20011db0:	c22e                	sw	a1,4(sp)
20011db2:	00002097          	auipc	ra,0x2
20011db6:	8f6080e7          	jalr	-1802(ra) # 200136a8 <<T as core::convert::Into<U>>::into>
20011dba:	4582                	lw	a1,0(sp)
20011dbc:	862a                	mv	a2,a0
20011dbe:	4512                	lw	a0,4(sp)
20011dc0:	8a1d                	and	a2,a2,7
20011dc2:	01061693          	sll	a3,a2,0x10
                self.w.bits = (self.w.bits & !(Self::MASK << { OF }))
20011dc6:	5642                	lw	a2,48(sp)
20011dc8:	c0b2                	sw	a2,64(sp)
20011dca:	8d55                	or	a0,a0,a3
20011dcc:	c208                	sw	a0,0(a2)
                self.w
20011dce:	5542                	lw	a0,48(sp)
20011dd0:	c82a                	sw	a0,16(sp)
20011dd2:	ce2a                	sw	a0,28(sp)
        Self {
20011dd4:	cc2a                	sw	a0,24(sp)
    }
20011dd6:	4562                	lw	a0,24(sp)
20011dd8:	d42a                	sw	a0,40(sp)
20011dda:	02b10723          	sb	a1,46(sp)
                self.w.bits = (self.w.bits & !(1 << { OF })) | ((<$U>::from(value) & 1) << { OF });
20011dde:	5522                	lw	a0,40(sp)
20011de0:	de2a                	sw	a0,60(sp)
20011de2:	4108                	lw	a0,0(a0)
20011de4:	02b107a3          	sb	a1,47(sp)
20011de8:	55a2                	lw	a1,40(sp)
20011dea:	c2ae                	sw	a1,68(sp)
20011dec:	00156513          	or	a0,a0,1
20011df0:	c188                	sw	a0,0(a1)
                self.w
20011df2:	5522                	lw	a0,40(sp)
20011df4:	c4aa                	sw	a0,72(sp)
20011df6:	40b6                	lw	ra,76(sp)
20011df8:	6161                	add	sp,sp,80
20011dfa:	8082                	ret

20011dfc <e310x_hal::serial::Serial<UART,(TX,RX)>::new::{{closure}}>:
            uart.ie.write(|w| w.txwm().bit(false).rxwm().bit(false));
20011dfc:	715d                	add	sp,sp,-80
20011dfe:	c82a                	sw	a0,16(sp)
20011e00:	cc2a                	sw	a0,24(sp)
20011e02:	d02a                	sw	a0,32(sp)
        Self {
20011e04:	ce2a                	sw	a0,28(sp)
    }
20011e06:	4572                	lw	a0,28(sp)
20011e08:	d62a                	sw	a0,44(sp)
20011e0a:	4581                	li	a1,0
20011e0c:	02b10923          	sb	a1,50(sp)
                self.w.bits = (self.w.bits & !(1 << { OF })) | ((<$U>::from(value) & 1) << { OF });
20011e10:	5532                	lw	a0,44(sp)
20011e12:	c0aa                	sw	a0,64(sp)
20011e14:	4108                	lw	a0,0(a0)
20011e16:	9979                	and	a0,a0,-2
20011e18:	02b109a3          	sb	a1,51(sp)
20011e1c:	5632                	lw	a2,44(sp)
20011e1e:	c4b2                	sw	a2,72(sp)
20011e20:	c208                	sw	a0,0(a2)
                self.w
20011e22:	5532                	lw	a0,44(sp)
20011e24:	ca2a                	sw	a0,20(sp)
20011e26:	d42a                	sw	a0,40(sp)
        Self {
20011e28:	d22a                	sw	a0,36(sp)
    }
20011e2a:	5512                	lw	a0,36(sp)
20011e2c:	da2a                	sw	a0,52(sp)
20011e2e:	02b10d23          	sb	a1,58(sp)
                self.w.bits = (self.w.bits & !(1 << { OF })) | ((<$U>::from(value) & 1) << { OF });
20011e32:	5552                	lw	a0,52(sp)
20011e34:	de2a                	sw	a0,60(sp)
20011e36:	4108                	lw	a0,0(a0)
20011e38:	9975                	and	a0,a0,-3
20011e3a:	02b10da3          	sb	a1,59(sp)
20011e3e:	55d2                	lw	a1,52(sp)
20011e40:	c2ae                	sw	a1,68(sp)
20011e42:	c188                	sw	a0,0(a1)
                self.w
20011e44:	5552                	lw	a0,52(sp)
20011e46:	c6aa                	sw	a0,76(sp)
20011e48:	6161                	add	sp,sp,80
20011e4a:	8082                	ret

20011e4c <e310x_hal::serial::Serial<UART,(TX,RX)>::new::{{closure}}>:
            uart.div.write(|w| w.bits(div));
20011e4c:	1101                	add	sp,sp,-32
20011e4e:	c02e                	sw	a1,0(sp)
20011e50:	85aa                	mv	a1,a0
20011e52:	4502                	lw	a0,0(sp)
20011e54:	c22e                	sw	a1,4(sp)
20011e56:	c42a                	sw	a0,8(sp)
20011e58:	4592                	lw	a1,4(sp)
20011e5a:	418c                	lw	a1,0(a1)
20011e5c:	c62a                	sw	a0,12(sp)
20011e5e:	c82e                	sw	a1,16(sp)
20011e60:	ca2a                	sw	a0,20(sp)
20011e62:	cc2e                	sw	a1,24(sp)
        self.bits = bits;
20011e64:	c10c                	sw	a1,0(a0)
20011e66:	ce2a                	sw	a0,28(sp)
20011e68:	6105                	add	sp,sp,32
20011e6a:	8082                	ret

20011e6c <e310x_hal::serial::Serial<UART,(TX,RX)>::split>:
        self
    }

    /// Splits the `Serial` abstraction into a transmitter and a
    /// receiver half
    pub fn split(self) -> (Tx<UART>, Rx<UART>) {
20011e6c:	1101                	add	sp,sp,-32
20011e6e:	4581                	li	a1,0
20011e70:	00b103a3          	sb	a1,7(sp)
20011e74:	4505                	li	a0,1
20011e76:	c42a                	sw	a0,8(sp)
20011e78:	00b107a3          	sb	a1,15(sp)
20011e7c:	c82a                	sw	a0,16(sp)
20011e7e:	01710513          	add	a0,sp,23
20011e82:	cc2a                	sw	a0,24(sp)
20011e84:	ce2a                	sw	a0,28(sp)
            Tx {
                uart: unsafe { mem::zeroed() },
            },
            Rx { uart: self.uart },
        )
    }
20011e86:	6105                	add	sp,sp,32
20011e88:	8082                	ret

20011e8a <core::ptr::const_ptr::<impl *const T>::read_volatile>:
20011e8a:	1141                	add	sp,sp,-16
20011e8c:	85aa                	mv	a1,a0
20011e8e:	c22e                	sw	a1,4(sp)
20011e90:	4188                	lw	a0,0(a1)
20011e92:	41cc                	lw	a1,4(a1)
20011e94:	c62e                	sw	a1,12(sp)
20011e96:	c42a                	sw	a0,8(sp)
20011e98:	4522                	lw	a0,8(sp)
20011e9a:	45b2                	lw	a1,12(sp)
20011e9c:	0141                	add	sp,sp,16
20011e9e:	8082                	ret

20011ea0 <core::fmt::num::<impl core::fmt::Debug for u32>::fmt>:
20011ea0:	1101                	add	sp,sp,-32
20011ea2:	ce06                	sw	ra,28(sp)
20011ea4:	c42e                	sw	a1,8(sp)
20011ea6:	c62a                	sw	a0,12(sp)
20011ea8:	ca2a                	sw	a0,20(sp)
20011eaa:	cc2e                	sw	a1,24(sp)
20011eac:	01c5c503          	lbu	a0,28(a1)
20011eb0:	8941                	and	a0,a0,16
20011eb2:	e909                	bnez	a0,20011ec4 <core::fmt::num::<impl core::fmt::Debug for u32>::fmt+0x24>
20011eb4:	a009                	j	20011eb6 <core::fmt::num::<impl core::fmt::Debug for u32>::fmt+0x16>
20011eb6:	4522                	lw	a0,8(sp)
20011eb8:	01c54503          	lbu	a0,28(a0)
20011ebc:	02057513          	and	a0,a0,32
20011ec0:	c919                	beqz	a0,20011ed6 <core::fmt::num::<impl core::fmt::Debug for u32>::fmt+0x36>
20011ec2:	a01d                	j	20011ee8 <core::fmt::num::<impl core::fmt::Debug for u32>::fmt+0x48>
20011ec4:	45a2                	lw	a1,8(sp)
20011ec6:	4532                	lw	a0,12(sp)
20011ec8:	00005097          	auipc	ra,0x5
20011ecc:	ffa080e7          	jalr	-6(ra) # 20016ec2 <core::fmt::num::<impl core::fmt::LowerHex for i32>::fmt>
20011ed0:	00a109a3          	sb	a0,19(sp)
20011ed4:	a01d                	j	20011efa <core::fmt::num::<impl core::fmt::Debug for u32>::fmt+0x5a>
20011ed6:	45a2                	lw	a1,8(sp)
20011ed8:	4532                	lw	a0,12(sp)
20011eda:	00005097          	auipc	ra,0x5
20011ede:	2fc080e7          	jalr	764(ra) # 200171d6 <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt>
20011ee2:	00a109a3          	sb	a0,19(sp)
20011ee6:	a811                	j	20011efa <core::fmt::num::<impl core::fmt::Debug for u32>::fmt+0x5a>
20011ee8:	45a2                	lw	a1,8(sp)
20011eea:	4532                	lw	a0,12(sp)
20011eec:	00005097          	auipc	ra,0x5
20011ef0:	048080e7          	jalr	72(ra) # 20016f34 <core::fmt::num::<impl core::fmt::UpperHex for i32>::fmt>
20011ef4:	00a109a3          	sb	a0,19(sp)
20011ef8:	a009                	j	20011efa <core::fmt::num::<impl core::fmt::Debug for u32>::fmt+0x5a>
20011efa:	01314503          	lbu	a0,19(sp)
20011efe:	40f2                	lw	ra,28(sp)
20011f00:	6105                	add	sp,sp,32
20011f02:	8082                	ret

20011f04 <core::fmt::num::<impl core::fmt::Debug for usize>::fmt>:
20011f04:	1101                	add	sp,sp,-32
20011f06:	ce06                	sw	ra,28(sp)
20011f08:	c42e                	sw	a1,8(sp)
20011f0a:	c62a                	sw	a0,12(sp)
20011f0c:	ca2a                	sw	a0,20(sp)
20011f0e:	cc2e                	sw	a1,24(sp)
20011f10:	01c5c503          	lbu	a0,28(a1)
20011f14:	8941                	and	a0,a0,16
20011f16:	e909                	bnez	a0,20011f28 <core::fmt::num::<impl core::fmt::Debug for usize>::fmt+0x24>
20011f18:	a009                	j	20011f1a <core::fmt::num::<impl core::fmt::Debug for usize>::fmt+0x16>
20011f1a:	4522                	lw	a0,8(sp)
20011f1c:	01c54503          	lbu	a0,28(a0)
20011f20:	02057513          	and	a0,a0,32
20011f24:	c919                	beqz	a0,20011f3a <core::fmt::num::<impl core::fmt::Debug for usize>::fmt+0x36>
20011f26:	a01d                	j	20011f4c <core::fmt::num::<impl core::fmt::Debug for usize>::fmt+0x48>
20011f28:	45a2                	lw	a1,8(sp)
20011f2a:	4532                	lw	a0,12(sp)
20011f2c:	00005097          	auipc	ra,0x5
20011f30:	f96080e7          	jalr	-106(ra) # 20016ec2 <core::fmt::num::<impl core::fmt::LowerHex for i32>::fmt>
20011f34:	00a109a3          	sb	a0,19(sp)
20011f38:	a01d                	j	20011f5e <core::fmt::num::<impl core::fmt::Debug for usize>::fmt+0x5a>
20011f3a:	45a2                	lw	a1,8(sp)
20011f3c:	4532                	lw	a0,12(sp)
20011f3e:	00005097          	auipc	ra,0x5
20011f42:	298080e7          	jalr	664(ra) # 200171d6 <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt>
20011f46:	00a109a3          	sb	a0,19(sp)
20011f4a:	a811                	j	20011f5e <core::fmt::num::<impl core::fmt::Debug for usize>::fmt+0x5a>
20011f4c:	45a2                	lw	a1,8(sp)
20011f4e:	4532                	lw	a0,12(sp)
20011f50:	00005097          	auipc	ra,0x5
20011f54:	fe4080e7          	jalr	-28(ra) # 20016f34 <core::fmt::num::<impl core::fmt::UpperHex for i32>::fmt>
20011f58:	00a109a3          	sb	a0,19(sp)
20011f5c:	a009                	j	20011f5e <core::fmt::num::<impl core::fmt::Debug for usize>::fmt+0x5a>
20011f5e:	01314503          	lbu	a0,19(sp)
20011f62:	40f2                	lw	ra,28(sp)
20011f64:	6105                	add	sp,sp,32
20011f66:	8082                	ret

20011f68 <yarr2::cpu::Registers::at>:
        Self { regs: [0; 32] }
    }

    #[inline]
    #[allow(dead_code)]
    pub fn at(&mut self, reg: Register) -> &mut usize {
20011f68:	1141                	add	sp,sp,-16
20011f6a:	c02a                	sw	a0,0(sp)
20011f6c:	c42e                	sw	a1,8(sp)
20011f6e:	c62a                	sw	a0,12(sp)
        &mut self.regs[reg as usize]
20011f70:	45a2                	lw	a1,8(sp)
20011f72:	c22e                	sw	a1,4(sp)
20011f74:	457d                	li	a0,31
20011f76:	00b56963          	bltu	a0,a1,20011f88 <yarr2::cpu::Registers::at+0x20>
20011f7a:	a009                	j	20011f7c <yarr2::cpu::Registers::at+0x14>
20011f7c:	4502                	lw	a0,0(sp)
20011f7e:	4592                	lw	a1,4(sp)
20011f80:	058a                	sll	a1,a1,0x2
20011f82:	952e                	add	a0,a0,a1
    }
20011f84:	0141                	add	sp,sp,16
20011f86:	8082                	ret
        &mut self.regs[reg as usize]
20011f88:	4512                	lw	a0,4(sp)
20011f8a:	200185b7          	lui	a1,0x20018
20011f8e:	c0c58613          	add	a2,a1,-1012 # 20017c0c <.L__unnamed_1>
20011f92:	02000593          	li	a1,32
20011f96:	00003097          	auipc	ra,0x3
20011f9a:	522080e7          	jalr	1314(ra) # 200154b8 <core::panicking::panic_bounds_check>
	...

20011fa0 <yarr2::cpu::ProgramCounter::from>:
impl ProgramCounter {
    pub const fn new() -> Self {
        Self { 0: 0 }
    }

    pub const fn from(pc: usize) -> Self {
20011fa0:	1141                	add	sp,sp,-16
20011fa2:	c62a                	sw	a0,12(sp)
        Self { 0: pc }
20011fa4:	c42a                	sw	a0,8(sp)
    }
20011fa6:	4522                	lw	a0,8(sp)
20011fa8:	0141                	add	sp,sp,16
20011faa:	8082                	ret

20011fac <yarr2::cpu::TrapFrame::registers>:
            mode: CPUMode::Machine,
        }
    }

    #[inline]
    pub fn registers(&mut self) -> &mut Registers {
20011fac:	1141                	add	sp,sp,-16
20011fae:	c62a                	sw	a0,12(sp)
        &mut self.regs
    }
20011fb0:	0141                	add	sp,sp,16
20011fb2:	8082                	ret

20011fb4 <yarr2::cpu::TrapFrame::pc>:

    #[inline]
    pub fn pc(&mut self, pc: ProgramCounter) {
20011fb4:	1141                	add	sp,sp,-16
20011fb6:	c02e                	sw	a1,0(sp)
20011fb8:	85aa                	mv	a1,a0
20011fba:	4502                	lw	a0,0(sp)
20011fbc:	c42a                	sw	a0,8(sp)
20011fbe:	4522                	lw	a0,8(sp)
20011fc0:	c22a                	sw	a0,4(sp)
20011fc2:	c62e                	sw	a1,12(sp)
        self.pc = pc;
20011fc4:	4512                	lw	a0,4(sp)
20011fc6:	08a5a023          	sw	a0,128(a1)
    }
20011fca:	0141                	add	sp,sp,16
20011fcc:	8082                	ret

20011fce <<core::panic::location::Location as core::fmt::Debug>::fmt>:
20011fce:	7179                	add	sp,sp,-48
20011fd0:	d606                	sw	ra,44(sp)
20011fd2:	ce2e                	sw	a1,28(sp)
20011fd4:	87aa                	mv	a5,a0
20011fd6:	4572                	lw	a0,28(sp)
20011fd8:	d23e                	sw	a5,36(sp)
20011fda:	d42a                	sw	a0,40(sp)
20011fdc:	00878613          	add	a2,a5,8
20011fe0:	00c78593          	add	a1,a5,12
20011fe4:	d02e                	sw	a1,32(sp)
20011fe6:	200185b7          	lui	a1,0x20018
20011fea:	c4058693          	add	a3,a1,-960 # 20017c40 <.L__unnamed_3>
20011fee:	858a                	mv	a1,sp
20011ff0:	cd94                	sw	a3,24(a1)
20011ff2:	1014                	add	a3,sp,32
20011ff4:	c9d4                	sw	a3,20(a1)
20011ff6:	468d                	li	a3,3
20011ff8:	c994                	sw	a3,16(a1)
20011ffa:	200186b7          	lui	a3,0x20018
20011ffe:	c3c68693          	add	a3,a3,-964 # 20017c3c <.L__unnamed_4>
20012002:	c5d4                	sw	a3,12(a1)
20012004:	200186b7          	lui	a3,0x20018
20012008:	c2c68693          	add	a3,a3,-980 # 20017c2c <.L__unnamed_2>
2001200c:	c594                	sw	a3,8(a1)
2001200e:	c1d0                	sw	a2,4(a1)
20012010:	4711                	li	a4,4
20012012:	c198                	sw	a4,0(a1)
20012014:	200175b7          	lui	a1,0x20017
20012018:	5ed58593          	add	a1,a1,1517 # 200175ed <.L__unnamed_18+0x7>
2001201c:	20017637          	lui	a2,0x20017
20012020:	4d660693          	add	a3,a2,1238 # 200174d6 <.L__unnamed_2+0x22>
20012024:	20018637          	lui	a2,0x20018
20012028:	c1c60813          	add	a6,a2,-996 # 20017c1c <.L__unnamed_1>
2001202c:	20017637          	lui	a2,0x20017
20012030:	4ce60893          	add	a7,a2,1230 # 200174ce <.L__unnamed_2+0x1a>
20012034:	4621                	li	a2,8
20012036:	00004097          	auipc	ra,0x4
2001203a:	070080e7          	jalr	112(ra) # 200160a6 <core::fmt::Formatter::debug_struct_field3_finish>
2001203e:	50b2                	lw	ra,44(sp)
20012040:	6145                	add	sp,sp,48
20012042:	8082                	ret

20012044 <riscv::register::mscratch::write>:
    ($csr_number:literal) => {
        write_csr!($csr_number);

        /// Writes the CSR
        #[inline]
        pub fn write(bits: usize) {
20012044:	1141                	add	sp,sp,-16
20012046:	c606                	sw	ra,12(sp)
20012048:	c42a                	sw	a0,8(sp)
            unsafe { _write(bits) }
2001204a:	00000097          	auipc	ra,0x0
2001204e:	00e080e7          	jalr	14(ra) # 20012058 <riscv::register::mscratch::_write>
        }
20012052:	40b2                	lw	ra,12(sp)
20012054:	0141                	add	sp,sp,16
20012056:	8082                	ret

20012058 <riscv::register::mscratch::_write>:
        unsafe fn _write(bits: usize) {
20012058:	1141                	add	sp,sp,-16
2001205a:	c62a                	sw	a0,12(sp)
                () => core::arch::asm!(concat!("csrrw x0, ", stringify!($csr_number), ", {0}"), in(reg) bits),
2001205c:	34051073          	csrw	mscratch,a0
        }
20012060:	0141                	add	sp,sp,16
20012062:	8082                	ret

20012064 <<i32 as core::iter::range::Step>::forward_unchecked>:
20012064:	1141                	add	sp,sp,-16
20012066:	c22a                	sw	a0,4(sp)
20012068:	c42e                	sw	a1,8(sp)
2001206a:	c62e                	sw	a1,12(sp)
2001206c:	952e                	add	a0,a0,a1
2001206e:	0141                	add	sp,sp,16
20012070:	8082                	ret

20012072 <<&T as core::fmt::Debug>::fmt>:
20012072:	1141                	add	sp,sp,-16
20012074:	c606                	sw	ra,12(sp)
20012076:	c22a                	sw	a0,4(sp)
20012078:	c42e                	sw	a1,8(sp)
2001207a:	4108                	lw	a0,0(a0)
2001207c:	00000097          	auipc	ra,0x0
20012080:	e88080e7          	jalr	-376(ra) # 20011f04 <core::fmt::num::<impl core::fmt::Debug for usize>::fmt>
20012084:	40b2                	lw	ra,12(sp)
20012086:	0141                	add	sp,sp,16
20012088:	8082                	ret

2001208a <<&T as core::fmt::Debug>::fmt>:
2001208a:	1141                	add	sp,sp,-16
2001208c:	c606                	sw	ra,12(sp)
2001208e:	c22a                	sw	a0,4(sp)
20012090:	c42e                	sw	a1,8(sp)
20012092:	4108                	lw	a0,0(a0)
20012094:	00000097          	auipc	ra,0x0
20012098:	e0c080e7          	jalr	-500(ra) # 20011ea0 <core::fmt::num::<impl core::fmt::Debug for u32>::fmt>
2001209c:	40b2                	lw	ra,12(sp)
2001209e:	0141                	add	sp,sp,16
200120a0:	8082                	ret

200120a2 <<&T as core::fmt::Debug>::fmt>:
200120a2:	1141                	add	sp,sp,-16
200120a4:	c606                	sw	ra,12(sp)
200120a6:	c22a                	sw	a0,4(sp)
200120a8:	c42e                	sw	a1,8(sp)
200120aa:	4108                	lw	a0,0(a0)
200120ac:	00000097          	auipc	ra,0x0
200120b0:	044080e7          	jalr	68(ra) # 200120f0 <<&T as core::fmt::Debug>::fmt>
200120b4:	40b2                	lw	ra,12(sp)
200120b6:	0141                	add	sp,sp,16
200120b8:	8082                	ret

200120ba <<&T as core::fmt::Debug>::fmt>:
200120ba:	1141                	add	sp,sp,-16
200120bc:	c606                	sw	ra,12(sp)
200120be:	c22a                	sw	a0,4(sp)
200120c0:	c42e                	sw	a1,8(sp)
200120c2:	4108                	lw	a0,0(a0)
200120c4:	fffff097          	auipc	ra,0xfffff
200120c8:	5bc080e7          	jalr	1468(ra) # 20011680 <<bool as core::fmt::Debug>::fmt>
200120cc:	40b2                	lw	ra,12(sp)
200120ce:	0141                	add	sp,sp,16
200120d0:	8082                	ret

200120d2 <<&T as core::fmt::Debug>::fmt>:
200120d2:	1141                	add	sp,sp,-16
200120d4:	c606                	sw	ra,12(sp)
200120d6:	862e                	mv	a2,a1
200120d8:	85aa                	mv	a1,a0
200120da:	c22e                	sw	a1,4(sp)
200120dc:	c432                	sw	a2,8(sp)
200120de:	4188                	lw	a0,0(a1)
200120e0:	41cc                	lw	a1,4(a1)
200120e2:	00004097          	auipc	ra,0x4
200120e6:	29a080e7          	jalr	666(ra) # 2001637c <<str as core::fmt::Debug>::fmt>
200120ea:	40b2                	lw	ra,12(sp)
200120ec:	0141                	add	sp,sp,16
200120ee:	8082                	ret

200120f0 <<&T as core::fmt::Debug>::fmt>:
200120f0:	1141                	add	sp,sp,-16
200120f2:	c606                	sw	ra,12(sp)
200120f4:	c22a                	sw	a0,4(sp)
200120f6:	c42e                	sw	a1,8(sp)
200120f8:	4108                	lw	a0,0(a0)
200120fa:	00004097          	auipc	ra,0x4
200120fe:	8fe080e7          	jalr	-1794(ra) # 200159f8 <<core::fmt::Arguments as core::fmt::Debug>::fmt>
20012102:	40b2                	lw	ra,12(sp)
20012104:	0141                	add	sp,sp,16
20012106:	8082                	ret

20012108 <<core::slice::iter::IterMut<T> as core::iter::traits::iterator::Iterator>::next>:
20012108:	7159                	add	sp,sp,-112
2001210a:	c22a                	sw	a0,4(sp)
2001210c:	4585                	li	a1,1
2001210e:	c42e                	sw	a1,8(sp)
20012110:	c62e                	sw	a1,12(sp)
20012112:	c82e                	sw	a1,16(sp)
20012114:	ca2e                	sw	a1,20(sp)
20012116:	d62a                	sw	a0,44(sp)
20012118:	4501                	li	a0,0
2001211a:	e50d                	bnez	a0,20012144 <<core::slice::iter::IterMut<T> as core::iter::traits::iterator::Iterator>::next+0x3c>
2001211c:	a009                	j	2001211e <<core::slice::iter::IterMut<T> as core::iter::traits::iterator::Iterator>::next+0x16>
2001211e:	4512                	lw	a0,4(sp)
20012120:	00450593          	add	a1,a0,4
20012124:	d82e                	sw	a1,48(sp)
20012126:	414c                	lw	a1,4(a0)
20012128:	d02e                	sw	a1,32(sp)
2001212a:	da2a                	sw	a0,52(sp)
2001212c:	100c                	add	a1,sp,32
2001212e:	dc2e                	sw	a1,56(sp)
20012130:	4108                	lw	a0,0(a0)
20012132:	de2a                	sw	a0,60(sp)
20012134:	5582                	lw	a1,32(sp)
20012136:	c0ae                	sw	a1,64(sp)
20012138:	8d2d                	xor	a0,a0,a1
2001213a:	00153513          	seqz	a0,a0
2001213e:	00a10fa3          	sb	a0,31(sp)
20012142:	a811                	j	20012156 <<core::slice::iter::IterMut<T> as core::iter::traits::iterator::Iterator>::next+0x4e>
20012144:	4512                	lw	a0,4(sp)
20012146:	4148                	lw	a0,4(a0)
20012148:	c2aa                	sw	a0,68(sp)
2001214a:	c4aa                	sw	a0,72(sp)
2001214c:	00153513          	seqz	a0,a0
20012150:	00a10fa3          	sb	a0,31(sp)
20012154:	a009                	j	20012156 <<core::slice::iter::IterMut<T> as core::iter::traits::iterator::Iterator>::next+0x4e>
20012156:	01f14503          	lbu	a0,31(sp)
2001215a:	8905                	and	a0,a0,1
2001215c:	e901                	bnez	a0,2001216c <<core::slice::iter::IterMut<T> as core::iter::traits::iterator::Iterator>::next+0x64>
2001215e:	a009                	j	20012160 <<core::slice::iter::IterMut<T> as core::iter::traits::iterator::Iterator>::next+0x58>
20012160:	4512                	lw	a0,4(sp)
20012162:	4108                	lw	a0,0(a0)
20012164:	d22a                	sw	a0,36(sp)
20012166:	4501                	li	a0,0
20012168:	e115                	bnez	a0,2001218c <<core::slice::iter::IterMut<T> as core::iter::traits::iterator::Iterator>::next+0x84>
2001216a:	a021                	j	20012172 <<core::slice::iter::IterMut<T> as core::iter::traits::iterator::Iterator>::next+0x6a>
2001216c:	4501                	li	a0,0
2001216e:	cc2a                	sw	a0,24(sp)
20012170:	a835                	j	200121ac <<core::slice::iter::IterMut<T> as core::iter::traits::iterator::Iterator>::next+0xa4>
20012172:	4592                	lw	a1,4(sp)
20012174:	00458513          	add	a0,a1,4
20012178:	c6aa                	sw	a0,76(sp)
2001217a:	c8aa                	sw	a0,80(sp)
2001217c:	4188                	lw	a0,0(a1)
2001217e:	caaa                	sw	a0,84(sp)
20012180:	ccaa                	sw	a0,88(sp)
20012182:	0521                	add	a0,a0,8
20012184:	d42a                	sw	a0,40(sp)
20012186:	5522                	lw	a0,40(sp)
20012188:	c188                	sw	a0,0(a1)
2001218a:	a819                	j	200121a0 <<core::slice::iter::IterMut<T> as core::iter::traits::iterator::Iterator>::next+0x98>
2001218c:	4592                	lw	a1,4(sp)
2001218e:	00458513          	add	a0,a1,4
20012192:	ceaa                	sw	a0,92(sp)
20012194:	d0aa                	sw	a0,96(sp)
20012196:	41c8                	lw	a0,4(a1)
20012198:	d2aa                	sw	a0,100(sp)
2001219a:	157d                	add	a0,a0,-1
2001219c:	c1c8                	sw	a0,4(a1)
2001219e:	a009                	j	200121a0 <<core::slice::iter::IterMut<T> as core::iter::traits::iterator::Iterator>::next+0x98>
200121a0:	1048                	add	a0,sp,36
200121a2:	d4aa                	sw	a0,104(sp)
200121a4:	5512                	lw	a0,36(sp)
200121a6:	d6aa                	sw	a0,108(sp)
200121a8:	cc2a                	sw	a0,24(sp)
200121aa:	a009                	j	200121ac <<core::slice::iter::IterMut<T> as core::iter::traits::iterator::Iterator>::next+0xa4>
200121ac:	4562                	lw	a0,24(sp)
200121ae:	6165                	add	sp,sp,112
200121b0:	8082                	ret

200121b2 <riscv::register::mstatus::_set>:
macro_rules! set {
    ($csr_number:literal) => {
        /// Set the CSR
        #[inline]
        #[allow(unused_variables)]
        unsafe fn _set(bits: usize) {
200121b2:	1141                	add	sp,sp,-16
200121b4:	c62a                	sw	a0,12(sp)
            match () {
                #[cfg(riscv)]
                () => core::arch::asm!(concat!("csrrs x0, ", stringify!($csr_number), ", {0}"), in(reg) bits),
200121b6:	30052073          	csrs	mstatus,a0

                #[cfg(not(riscv))]
                () => unimplemented!(),
            }
        }
200121ba:	0141                	add	sp,sp,16
200121bc:	8082                	ret

200121be <riscv::register::mstatus::read>:
        pub fn read() -> $register {
200121be:	1141                	add	sp,sp,-16
                bits: unsafe { _read() },
200121c0:	c606                	sw	ra,12(sp)
200121c2:	00000097          	auipc	ra,0x0
200121c6:	012080e7          	jalr	18(ra) # 200121d4 <riscv::register::mstatus::_read>
            $register {
200121ca:	c42a                	sw	a0,8(sp)
        }
200121cc:	4522                	lw	a0,8(sp)
200121ce:	40b2                	lw	ra,12(sp)
200121d0:	0141                	add	sp,sp,16
200121d2:	8082                	ret

200121d4 <riscv::register::mstatus::_read>:
        unsafe fn _read() -> usize {
200121d4:	1141                	add	sp,sp,-16
                    core::arch::asm!(concat!("csrrs {0}, ", stringify!($csr_number), ", x0"), out(reg) r);
200121d6:	30002573          	csrr	a0,mstatus
200121da:	c62a                	sw	a0,12(sp)
                    r
200121dc:	4532                	lw	a0,12(sp)
        }
200121de:	0141                	add	sp,sp,16
200121e0:	8082                	ret

200121e2 <riscv::register::mstatus::_clear>:
macro_rules! clear {
    ($csr_number:literal) => {
        /// Clear the CSR
        #[inline]
        #[allow(unused_variables)]
        unsafe fn _clear(bits: usize) {
200121e2:	1141                	add	sp,sp,-16
200121e4:	c62a                	sw	a0,12(sp)
            match () {
                #[cfg(riscv)]
                () => core::arch::asm!(concat!("csrrc x0, ", stringify!($csr_number), ", {0}"), in(reg) bits),
200121e6:	30053073          	csrc	mstatus,a0

                #[cfg(not(riscv))]
                () => unimplemented!(),
            }
        }
200121ea:	0141                	add	sp,sp,16
200121ec:	8082                	ret

200121ee <riscv::register::mstatus::Mstatus::mie>:
        self.bits.get_bit(1)
    }

    /// Machine Interrupt Enable
    #[inline]
    pub fn mie(&self) -> bool {
200121ee:	1141                	add	sp,sp,-16
200121f0:	c606                	sw	ra,12(sp)
200121f2:	c42a                	sw	a0,8(sp)
        self.bits.get_bit(3)
200121f4:	200185b7          	lui	a1,0x20018
200121f8:	cb858613          	add	a2,a1,-840 # 20017cb8 <.L__unnamed_1>
200121fc:	458d                	li	a1,3
200121fe:	fffff097          	auipc	ra,0xfffff
20012202:	37c080e7          	jalr	892(ra) # 2001157a <<usize as bit_field::BitField>::get_bit>
    }
20012206:	40b2                	lw	ra,12(sp)
20012208:	0141                	add	sp,sp,16
2001220a:	8082                	ret

2001220c <riscv::register::mstatus::set_mie>:

macro_rules! set_csr {
    ($(#[$attr:meta])*, $set_field:ident, $e:expr) => {
        $(#[$attr])*
        #[inline]
        pub unsafe fn $set_field() {
2001220c:	1141                	add	sp,sp,-16
2001220e:	c606                	sw	ra,12(sp)
20012210:	4521                	li	a0,8
            _set($e);
20012212:	00000097          	auipc	ra,0x0
20012216:	fa0080e7          	jalr	-96(ra) # 200121b2 <riscv::register::mstatus::_set>
        }
2001221a:	40b2                	lw	ra,12(sp)
2001221c:	0141                	add	sp,sp,16
2001221e:	8082                	ret

20012220 <riscv::register::mstatus::clear_mie>:

macro_rules! clear_csr {
    ($(#[$attr:meta])*, $clear_field:ident, $e:expr) => {
        $(#[$attr])*
        #[inline]
        pub unsafe fn $clear_field() {
20012220:	1141                	add	sp,sp,-16
20012222:	c606                	sw	ra,12(sp)
20012224:	4521                	li	a0,8
            _clear($e);
20012226:	00000097          	auipc	ra,0x0
2001222a:	fbc080e7          	jalr	-68(ra) # 200121e2 <riscv::register::mstatus::_clear>
        }
2001222e:	40b2                	lw	ra,12(sp)
20012230:	0141                	add	sp,sp,16
20012232:	8082                	ret

20012234 <yarr_set_timer>:

#[no_mangle]
#[allow(unused_variables)]
#[allow(dead_code)]
#[allow(unused_unsafe)]
pub fn yarr_set_timer(switch_time: u64) {
20012234:	7139                	add	sp,sp,-64
20012236:	de06                	sw	ra,60(sp)
20012238:	c42e                	sw	a1,8(sp)
2001223a:	c62a                	sw	a0,12(sp)
2001223c:	ca2e                	sw	a1,20(sp)
2001223e:	c82a                	sw	a0,16(sp)
20012240:	0200c537          	lui	a0,0x200c
20012244:	1561                	add	a0,a0,-8 # 200bff8 <.Lline_table_start1+0x1fdcb82>
    unsafe {
        MMIO_MTIMECMP.write_volatile(MMIO_MTIME.read_volatile().wrapping_add(switch_time));
20012246:	00000097          	auipc	ra,0x0
2001224a:	c44080e7          	jalr	-956(ra) # 20011e8a <core::ptr::const_ptr::<impl *const T>::read_volatile>
2001224e:	46a2                	lw	a3,8(sp)
20012250:	862a                	mv	a2,a0
20012252:	4532                	lw	a0,12(sp)
20012254:	ce2e                	sw	a1,28(sp)
20012256:	cc32                	sw	a2,24(sp)
20012258:	d236                	sw	a3,36(sp)
2001225a:	d02a                	sw	a0,32(sp)
2001225c:	95b6                	add	a1,a1,a3
2001225e:	9532                	add	a0,a0,a2
20012260:	00c53633          	sltu	a2,a0,a2
20012264:	962e                	add	a2,a2,a1
20012266:	020045b7          	lui	a1,0x2004
2001226a:	d62e                	sw	a1,44(sp)
2001226c:	da32                	sw	a2,52(sp)
2001226e:	d82a                	sw	a0,48(sp)
20012270:	c1d0                	sw	a2,4(a1)
20012272:	c188                	sw	a0,0(a1)
    }
}
20012274:	50f2                	lw	ra,60(sp)
20012276:	6121                	add	sp,sp,64
20012278:	8082                	ret

2001227a <yarr2::schedule::schedule>:

pub static mut PID: usize = 0;

pub fn schedule() -> TrapFrame {
2001227a:	1141                	add	sp,sp,-16
    unsafe {
        PID += 1;
2001227c:	c606                	sw	ra,12(sp)
2001227e:	c22a                	sw	a0,4(sp)
20012280:	80001537          	lui	a0,0x80001
20012284:	da852503          	lw	a0,-600(a0) # 80000da8 <yarr2::schedule::PID>
20012288:	0505                	add	a0,a0,1
2001228a:	c42a                	sw	a0,8(sp)
2001228c:	cd09                	beqz	a0,200122a6 <yarr2::schedule::schedule+0x2c>
2001228e:	a009                	j	20012290 <yarr2::schedule::schedule+0x16>
20012290:	45a2                	lw	a1,8(sp)
20012292:	80001537          	lui	a0,0x80001
20012296:	dab52423          	sw	a1,-600(a0) # 80000da8 <yarr2::schedule::PID>
        if PID >= PROCESS_LIST.len() {
2001229a:	da852583          	lw	a1,-600(a0)
2001229e:	4509                	li	a0,2
200122a0:	02b56a63          	bltu	a0,a1,200122d4 <yarr2::schedule::schedule+0x5a>
200122a4:	a839                	j	200122c2 <yarr2::schedule::schedule+0x48>
        PID += 1;
200122a6:	20018537          	lui	a0,0x20018
200122aa:	cf050513          	add	a0,a0,-784 # 20017cf0 <str.0>
200122ae:	200185b7          	lui	a1,0x20018
200122b2:	cd858613          	add	a2,a1,-808 # 20017cd8 <.L__unnamed_1>
200122b6:	45f1                	li	a1,28
200122b8:	00003097          	auipc	ra,0x3
200122bc:	1d4080e7          	jalr	468(ra) # 2001548c <core::panicking::panic>
200122c0:	0000                	unimp
            PID = 0;
        }
        PROCESS_LIST[PID].frame
200122c2:	80001537          	lui	a0,0x80001
200122c6:	da852503          	lw	a0,-600(a0) # 80000da8 <yarr2::schedule::PID>
200122ca:	c02a                	sw	a0,0(sp)
200122cc:	458d                	li	a1,3
200122ce:	00b56963          	bltu	a0,a1,200122e0 <yarr2::schedule::schedule+0x66>
200122d2:	a81d                	j	20012308 <yarr2::schedule::schedule+0x8e>
            PID = 0;
200122d4:	800015b7          	lui	a1,0x80001
200122d8:	4501                	li	a0,0
200122da:	daa5a423          	sw	a0,-600(a1) # 80000da8 <yarr2::schedule::PID>
        if PID >= PROCESS_LIST.len() {
200122de:	b7d5                	j	200122c2 <yarr2::schedule::schedule+0x48>
        PROCESS_LIST[PID].frame
200122e0:	4512                	lw	a0,4(sp)
200122e2:	4602                	lw	a2,0(sp)
200122e4:	800005b7          	lui	a1,0x80000
200122e8:	0005a583          	lw	a1,0(a1) # 80000000 <yarr2::PROCESS_LIST>
200122ec:	48c00693          	li	a3,1164
200122f0:	02d60633          	mul	a2,a2,a3
200122f4:	95b2                	add	a1,a1,a2
200122f6:	08800613          	li	a2,136
200122fa:	00005097          	auipc	ra,0x5
200122fe:	0ce080e7          	jalr	206(ra) # 200173c8 <memcpy>
    }
20012302:	40b2                	lw	ra,12(sp)
20012304:	0141                	add	sp,sp,16
20012306:	8082                	ret
        PROCESS_LIST[PID].frame
20012308:	4502                	lw	a0,0(sp)
2001230a:	200185b7          	lui	a1,0x20018
2001230e:	d0c58613          	add	a2,a1,-756 # 20017d0c <.L__unnamed_2>
20012312:	458d                	li	a1,3
20012314:	00003097          	auipc	ra,0x3
20012318:	1a4080e7          	jalr	420(ra) # 200154b8 <core::panicking::panic_bounds_check>
	...

2001231e <core::array::<impl core::iter::traits::collect::IntoIterator for &mut [T; N]>::into_iter>:
2001231e:	7179                	add	sp,sp,-48
20012320:	c22a                	sw	a0,4(sp)
20012322:	cc2a                	sw	a0,24(sp)
20012324:	ce2a                	sw	a0,28(sp)
20012326:	458d                	li	a1,3
20012328:	d02e                	sw	a1,32(sp)
2001232a:	d22a                	sw	a0,36(sp)
2001232c:	4501                	li	a0,0
2001232e:	e901                	bnez	a0,2001233e <core::array::<impl core::iter::traits::collect::IntoIterator for &mut [T; N]>::into_iter+0x20>
20012330:	a009                	j	20012332 <core::array::<impl core::iter::traits::collect::IntoIterator for &mut [T; N]>::into_iter+0x14>
20012332:	4512                	lw	a0,4(sp)
20012334:	458d                	li	a1,3
20012336:	d42e                	sw	a1,40(sp)
20012338:	0561                	add	a0,a0,24
2001233a:	c82a                	sw	a0,16(sp)
2001233c:	a029                	j	20012346 <core::array::<impl core::iter::traits::collect::IntoIterator for &mut [T; N]>::into_iter+0x28>
2001233e:	450d                	li	a0,3
20012340:	d62a                	sw	a0,44(sp)
20012342:	c82a                	sw	a0,16(sp)
20012344:	a009                	j	20012346 <core::array::<impl core::iter::traits::collect::IntoIterator for &mut [T; N]>::into_iter+0x28>
20012346:	4512                	lw	a0,4(sp)
20012348:	ca2a                	sw	a0,20(sp)
2001234a:	4542                	lw	a0,16(sp)
2001234c:	45d2                	lw	a1,20(sp)
2001234e:	c42e                	sw	a1,8(sp)
20012350:	c62a                	sw	a0,12(sp)
20012352:	4522                	lw	a0,8(sp)
20012354:	45b2                	lw	a1,12(sp)
20012356:	6145                	add	sp,sp,48
20012358:	8082                	ret

2001235a <hifive1::led::rgb>:
/// Blue LED
pub type BLUE = Pin5<Output<Regular<Invert>>>;

#[cfg(any(feature = "board-hifive1", feature = "board-hifive1-revb"))]
/// Returns RED, GREEN and BLUE LEDs.
pub fn rgb<X, Y, Z>(red: Pin22<X>, green: Pin19<Y>, blue: Pin21<Z>) -> (RED, GREEN, BLUE) {
2001235a:	1141                	add	sp,sp,-16
    let red: RED = red.into_inverted_output();
2001235c:	c606                	sw	ra,12(sp)
2001235e:	00000097          	auipc	ra,0x0
20012362:	1b4080e7          	jalr	436(ra) # 20012512 <e310x_hal::gpio::gpio0::Pin22<MODE>::into_inverted_output>
    let green: GREEN = green.into_inverted_output();
20012366:	00000097          	auipc	ra,0x0
2001236a:	12c080e7          	jalr	300(ra) # 20012492 <e310x_hal::gpio::gpio0::Pin19<MODE>::into_inverted_output>
    let blue: BLUE = blue.into_inverted_output();
2001236e:	00000097          	auipc	ra,0x0
20012372:	164080e7          	jalr	356(ra) # 200124d2 <e310x_hal::gpio::gpio0::Pin21<MODE>::into_inverted_output>
    (red, green, blue)
}
20012376:	40b2                	lw	ra,12(sp)
20012378:	0141                	add	sp,sp,16
2001237a:	8082                	ret

2001237c <critical_section::with>:
pub fn with<R>(f: impl FnOnce(CriticalSection) -> R) -> R {
2001237c:	1141                	add	sp,sp,-16
    RestoreState(_critical_section_1_0_acquire())
2001237e:	c606                	sw	ra,12(sp)
20012380:	00003097          	auipc	ra,0x3
20012384:	df2080e7          	jalr	-526(ra) # 20015172 <_critical_section_1_0_acquire>
20012388:	00a105a3          	sb	a0,11(sp)
}
2001238c:	00b14503          	lbu	a0,11(sp)
        }
    }

    let state = unsafe { acquire() };
20012390:	00a10523          	sb	a0,10(sp)
    let _guard = Guard { state };
20012394:	00a10423          	sb	a0,8(sp)

    unsafe { f(CriticalSection::new()) }
20012398:	fffff097          	auipc	ra,0xfffff
2001239c:	bae080e7          	jalr	-1106(ra) # 20010f46 <e310x::Peripherals::take::{{closure}}>
}
200123a0:	c22a                	sw	a0,4(sp)
200123a2:	0028                	add	a0,sp,8
200123a4:	ffffe097          	auipc	ra,0xffffe
200123a8:	6b4080e7          	jalr	1716(ra) # 20010a58 <core::ptr::drop_in_place<critical_section::with::Guard>>
200123ac:	4512                	lw	a0,4(sp)
200123ae:	40b2                	lw	ra,12(sp)
200123b0:	0141                	add	sp,sp,16
200123b2:	8082                	ret

200123b4 <<&T as core::fmt::Debug>::fmt>:
200123b4:	1141                	add	sp,sp,-16
200123b6:	c606                	sw	ra,12(sp)
200123b8:	c22a                	sw	a0,4(sp)
200123ba:	c42e                	sw	a1,8(sp)
200123bc:	4108                	lw	a0,0(a0)
200123be:	fffff097          	auipc	ra,0xfffff
200123c2:	aca080e7          	jalr	-1334(ra) # 20010e88 <<core::panic::panic_info::PanicInfo as core::fmt::Debug>::fmt>
200123c6:	40b2                	lw	ra,12(sp)
200123c8:	0141                	add	sp,sp,16
200123ca:	8082                	ret

200123cc <hifive1::stdout::configure>:
        Ok(())
    }
}

/// Configures stdout
pub fn configure<X, Y>(
200123cc:	7179                	add	sp,sp,-48
200123ce:	d606                	sw	ra,44(sp)
200123d0:	c832                	sw	a2,16(sp)
200123d2:	c62e                	sw	a1,12(sp)
    clocks: Clocks,
) -> Rx<UART0> {
    let tx = tx.into_iof0();
    let rx = rx.into_iof0();
    let serial = Serial::new(uart, (tx, rx), baud_rate, clocks);
    let (tx, rx) = serial.split();
200123d4:	c42a                	sw	a0,8(sp)
200123d6:	d02a                	sw	a0,32(sp)
200123d8:	d22e                	sw	a1,36(sp)
200123da:	d432                	sw	a2,40(sp)
    let tx = tx.into_iof0();
200123dc:	00000097          	auipc	ra,0x0
200123e0:	084080e7          	jalr	132(ra) # 20012460 <e310x_hal::gpio::gpio0::Pin17<MODE>::into_iof0>
    let rx = rx.into_iof0();
200123e4:	00000097          	auipc	ra,0x0
200123e8:	04a080e7          	jalr	74(ra) # 2001242e <e310x_hal::gpio::gpio0::Pin16<MODE>::into_iof0>
200123ec:	4522                	lw	a0,8(sp)
200123ee:	45b2                	lw	a1,12(sp)
200123f0:	4642                	lw	a2,16(sp)
    let serial = Serial::new(uart, (tx, rx), baud_rate, clocks);
200123f2:	fffff097          	auipc	ra,0xfffff
200123f6:	7ee080e7          	jalr	2030(ra) # 20011be0 <e310x_hal::serial::Serial<UART,(TX,RX)>::new>
    let (tx, rx) = serial.split();
200123fa:	00000097          	auipc	ra,0x0
200123fe:	a72080e7          	jalr	-1422(ra) # 20011e6c <e310x_hal::serial::Serial<UART,(TX,RX)>::split>

    interrupt::free(|| unsafe {
20012402:	fffff097          	auipc	ra,0xfffff
20012406:	366080e7          	jalr	870(ra) # 20011768 <riscv::interrupt::free>
        STDOUT.replace(SerialWrapper(tx));
    });
    rx
}
2001240a:	50b2                	lw	ra,44(sp)
2001240c:	6145                	add	sp,sp,48
2001240e:	8082                	ret

20012410 <hifive1::stdout::configure::{{closure}}>:
    interrupt::free(|| unsafe {
20012410:	1141                	add	sp,sp,-16
        STDOUT.replace(SerialWrapper(tx));
20012412:	c606                	sw	ra,12(sp)
20012414:	80001537          	lui	a0,0x80001
20012418:	dac50513          	add	a0,a0,-596 # 80000dac <hifive1::stdout::STDOUT>
2001241c:	fffff097          	auipc	ra,0xfffff
20012420:	428080e7          	jalr	1064(ra) # 20011844 <core::option::Option<T>::replace>
    });
20012424:	40b2                	lw	ra,12(sp)
20012426:	0141                	add	sp,sp,16
20012428:	8082                	ret

2001242a <riscv::asm::nop>:
        $(#[$attr])*
        #[inline]
        pub unsafe fn $fnname() {
            match () {
                #[cfg(riscv)]
                () => core::arch::asm!($asm),
2001242a:	0001                	nop

                #[cfg(not(riscv))]
                () => unimplemented!(),
            }
        }
2001242c:	8082                	ret

2001242e <e310x_hal::gpio::gpio0::Pin16<MODE>::into_iof0>:
                    const INDEX: usize = $i;
                }

                impl<MODE> $PXi<MODE> {
                    /// Configures the pin to serve as alternate function 0 (AF0)
                    pub fn into_iof0(self) -> $PXi<IOF0<NoInvert>> {
2001242e:	1141                	add	sp,sp,-16
20012430:	c606                	sw	ra,12(sp)
20012432:	4541                	li	a0,16
20012434:	c22a                	sw	a0,4(sp)
20012436:	4581                	li	a1,0
                        $GPIOX::set_out_xor(Self::INDEX, false);
20012438:	c02e                	sw	a1,0(sp)
2001243a:	fffff097          	auipc	ra,0xfffff
2001243e:	c7c080e7          	jalr	-900(ra) # 200110b6 <e310x_hal::gpio::PeripheralAccess::set_out_xor>
20012442:	4582                	lw	a1,0(sp)
20012444:	4512                	lw	a0,4(sp)
                        $GPIOX::set_iof_sel(Self::INDEX, false);
20012446:	fffff097          	auipc	ra,0xfffff
2001244a:	bd2080e7          	jalr	-1070(ra) # 20011018 <e310x_hal::gpio::PeripheralAccess::set_iof_sel>
2001244e:	4512                	lw	a0,4(sp)
20012450:	4585                	li	a1,1
                        $GPIOX::set_iof_en(Self::INDEX, true);
20012452:	fffff097          	auipc	ra,0xfffff
20012456:	b28080e7          	jalr	-1240(ra) # 20010f7a <e310x_hal::gpio::PeripheralAccess::set_iof_en>
                        $PXi { _mode: PhantomData }
                    }
2001245a:	40b2                	lw	ra,12(sp)
2001245c:	0141                	add	sp,sp,16
2001245e:	8082                	ret

20012460 <e310x_hal::gpio::gpio0::Pin17<MODE>::into_iof0>:
                    pub fn into_iof0(self) -> $PXi<IOF0<NoInvert>> {
20012460:	1141                	add	sp,sp,-16
20012462:	c606                	sw	ra,12(sp)
20012464:	4545                	li	a0,17
20012466:	c22a                	sw	a0,4(sp)
20012468:	4581                	li	a1,0
                        $GPIOX::set_out_xor(Self::INDEX, false);
2001246a:	c02e                	sw	a1,0(sp)
2001246c:	fffff097          	auipc	ra,0xfffff
20012470:	c4a080e7          	jalr	-950(ra) # 200110b6 <e310x_hal::gpio::PeripheralAccess::set_out_xor>
20012474:	4582                	lw	a1,0(sp)
20012476:	4512                	lw	a0,4(sp)
                        $GPIOX::set_iof_sel(Self::INDEX, false);
20012478:	fffff097          	auipc	ra,0xfffff
2001247c:	ba0080e7          	jalr	-1120(ra) # 20011018 <e310x_hal::gpio::PeripheralAccess::set_iof_sel>
20012480:	4512                	lw	a0,4(sp)
20012482:	4585                	li	a1,1
                        $GPIOX::set_iof_en(Self::INDEX, true);
20012484:	fffff097          	auipc	ra,0xfffff
20012488:	af6080e7          	jalr	-1290(ra) # 20010f7a <e310x_hal::gpio::PeripheralAccess::set_iof_en>
                    }
2001248c:	40b2                	lw	ra,12(sp)
2001248e:	0141                	add	sp,sp,16
20012490:	8082                	ret

20012492 <e310x_hal::gpio::gpio0::Pin19<MODE>::into_inverted_output>:
                        $GPIOX::set_iof_en(Self::INDEX, false);
                        $PXi { _mode: PhantomData }
                    }

                    /// Configures the pin to operate as an inverted output pin
                    pub fn into_inverted_output(self) -> $PXi<Output<Regular<Invert>>> {
20012492:	1101                	add	sp,sp,-32
20012494:	ce06                	sw	ra,28(sp)
20012496:	454d                	li	a0,19
20012498:	c82a                	sw	a0,16(sp)
2001249a:	4581                	li	a1,0
                        $GPIOX::set_drive(Self::INDEX, false);
2001249c:	ca2e                	sw	a1,20(sp)
2001249e:	fffff097          	auipc	ra,0xfffff
200124a2:	d52080e7          	jalr	-686(ra) # 200111f0 <e310x_hal::gpio::PeripheralAccess::set_drive>
200124a6:	4542                	lw	a0,16(sp)
200124a8:	4585                	li	a1,1
                        $GPIOX::set_out_xor(Self::INDEX, true);
200124aa:	c62e                	sw	a1,12(sp)
200124ac:	fffff097          	auipc	ra,0xfffff
200124b0:	c0a080e7          	jalr	-1014(ra) # 200110b6 <e310x_hal::gpio::PeripheralAccess::set_out_xor>
200124b4:	45b2                	lw	a1,12(sp)
200124b6:	4542                	lw	a0,16(sp)
                        $GPIOX::set_output_en(Self::INDEX, true);
200124b8:	fffff097          	auipc	ra,0xfffff
200124bc:	c9c080e7          	jalr	-868(ra) # 20011154 <e310x_hal::gpio::PeripheralAccess::set_output_en>
200124c0:	4542                	lw	a0,16(sp)
200124c2:	45d2                	lw	a1,20(sp)
                        $GPIOX::set_iof_en(Self::INDEX, false);
200124c4:	fffff097          	auipc	ra,0xfffff
200124c8:	ab6080e7          	jalr	-1354(ra) # 20010f7a <e310x_hal::gpio::PeripheralAccess::set_iof_en>
                        $PXi { _mode: PhantomData }
                    }
200124cc:	40f2                	lw	ra,28(sp)
200124ce:	6105                	add	sp,sp,32
200124d0:	8082                	ret

200124d2 <e310x_hal::gpio::gpio0::Pin21<MODE>::into_inverted_output>:
                    pub fn into_inverted_output(self) -> $PXi<Output<Regular<Invert>>> {
200124d2:	1101                	add	sp,sp,-32
200124d4:	ce06                	sw	ra,28(sp)
200124d6:	4555                	li	a0,21
200124d8:	c82a                	sw	a0,16(sp)
200124da:	4581                	li	a1,0
                        $GPIOX::set_drive(Self::INDEX, false);
200124dc:	ca2e                	sw	a1,20(sp)
200124de:	fffff097          	auipc	ra,0xfffff
200124e2:	d12080e7          	jalr	-750(ra) # 200111f0 <e310x_hal::gpio::PeripheralAccess::set_drive>
200124e6:	4542                	lw	a0,16(sp)
200124e8:	4585                	li	a1,1
                        $GPIOX::set_out_xor(Self::INDEX, true);
200124ea:	c62e                	sw	a1,12(sp)
200124ec:	fffff097          	auipc	ra,0xfffff
200124f0:	bca080e7          	jalr	-1078(ra) # 200110b6 <e310x_hal::gpio::PeripheralAccess::set_out_xor>
200124f4:	45b2                	lw	a1,12(sp)
200124f6:	4542                	lw	a0,16(sp)
                        $GPIOX::set_output_en(Self::INDEX, true);
200124f8:	fffff097          	auipc	ra,0xfffff
200124fc:	c5c080e7          	jalr	-932(ra) # 20011154 <e310x_hal::gpio::PeripheralAccess::set_output_en>
20012500:	4542                	lw	a0,16(sp)
20012502:	45d2                	lw	a1,20(sp)
                        $GPIOX::set_iof_en(Self::INDEX, false);
20012504:	fffff097          	auipc	ra,0xfffff
20012508:	a76080e7          	jalr	-1418(ra) # 20010f7a <e310x_hal::gpio::PeripheralAccess::set_iof_en>
                    }
2001250c:	40f2                	lw	ra,28(sp)
2001250e:	6105                	add	sp,sp,32
20012510:	8082                	ret

20012512 <e310x_hal::gpio::gpio0::Pin22<MODE>::into_inverted_output>:
                    pub fn into_inverted_output(self) -> $PXi<Output<Regular<Invert>>> {
20012512:	1101                	add	sp,sp,-32
20012514:	ce06                	sw	ra,28(sp)
20012516:	4559                	li	a0,22
20012518:	c82a                	sw	a0,16(sp)
2001251a:	4581                	li	a1,0
                        $GPIOX::set_drive(Self::INDEX, false);
2001251c:	ca2e                	sw	a1,20(sp)
2001251e:	fffff097          	auipc	ra,0xfffff
20012522:	cd2080e7          	jalr	-814(ra) # 200111f0 <e310x_hal::gpio::PeripheralAccess::set_drive>
20012526:	4542                	lw	a0,16(sp)
20012528:	4585                	li	a1,1
                        $GPIOX::set_out_xor(Self::INDEX, true);
2001252a:	c62e                	sw	a1,12(sp)
2001252c:	fffff097          	auipc	ra,0xfffff
20012530:	b8a080e7          	jalr	-1142(ra) # 200110b6 <e310x_hal::gpio::PeripheralAccess::set_out_xor>
20012534:	45b2                	lw	a1,12(sp)
20012536:	4542                	lw	a0,16(sp)
                        $GPIOX::set_output_en(Self::INDEX, true);
20012538:	fffff097          	auipc	ra,0xfffff
2001253c:	c1c080e7          	jalr	-996(ra) # 20011154 <e310x_hal::gpio::PeripheralAccess::set_output_en>
20012540:	4542                	lw	a0,16(sp)
20012542:	45d2                	lw	a1,20(sp)
                        $GPIOX::set_iof_en(Self::INDEX, false);
20012544:	fffff097          	auipc	ra,0xfffff
20012548:	a36080e7          	jalr	-1482(ra) # 20010f7a <e310x_hal::gpio::PeripheralAccess::set_iof_en>
                    }
2001254c:	40f2                	lw	ra,28(sp)
2001254e:	6105                	add	sp,sp,32
20012550:	8082                	ret

20012552 <r0::zero_bss>:
/// # Safety
///
/// - Must be called exactly once, before the application has started.
/// - `ebss >= sbss`.
/// - `sbss` and `ebss` must be `T` aligned.
pub unsafe fn zero_bss<T>(mut sbss: *mut T, ebss: *mut T)
20012552:	7139                	add	sp,sp,-64
20012554:	de06                	sw	ra,60(sp)
20012556:	c22e                	sw	a1,4(sp)
20012558:	c42a                	sw	a0,8(sp)
2001255a:	c62e                	sw	a1,12(sp)
where
    T: Word,
{
    while sbss < ebss {
2001255c:	a009                	j	2001255e <r0::zero_bss+0xc>
2001255e:	4592                	lw	a1,4(sp)
20012560:	4522                	lw	a0,8(sp)
20012562:	00b56663          	bltu	a0,a1,2001256e <r0::zero_bss+0x1c>
20012566:	a009                	j	20012568 <r0::zero_bss+0x16>
        // NOTE(volatile) to prevent this from being transformed into `memclr`
        ptr::write_volatile(sbss, mem::zeroed());
        sbss = sbss.offset(1);
    }
}
20012568:	50f2                	lw	ra,60(sp)
2001256a:	6121                	add	sp,sp,64
2001256c:	8082                	ret
        ptr::write_volatile(sbss, mem::zeroed());
2001256e:	4522                	lw	a0,8(sp)
20012570:	4581                	li	a1,0
20012572:	00b109a3          	sb	a1,19(sp)
20012576:	4605                	li	a2,1
20012578:	c032                	sw	a2,0(sp)
2001257a:	ca32                	sw	a2,20(sp)
2001257c:	00b10da3          	sb	a1,27(sp)
20012580:	ce32                	sw	a2,28(sp)
20012582:	1010                	add	a2,sp,32
20012584:	d232                	sw	a2,36(sp)
20012586:	d432                	sw	a2,40(sp)
20012588:	d02e                	sw	a1,32(sp)
2001258a:	5582                	lw	a1,32(sp)
2001258c:	d62e                	sw	a1,44(sp)
2001258e:	d82e                	sw	a1,48(sp)
20012590:	00000097          	auipc	ra,0x0
20012594:	066080e7          	jalr	102(ra) # 200125f6 <core::ptr::write_volatile>
20012598:	4582                	lw	a1,0(sp)
        sbss = sbss.offset(1);
2001259a:	4522                	lw	a0,8(sp)
2001259c:	da2a                	sw	a0,52(sp)
2001259e:	dc2e                	sw	a1,56(sp)
200125a0:	0511                	add	a0,a0,4
200125a2:	c42a                	sw	a0,8(sp)
    while sbss < ebss {
200125a4:	bf6d                	j	2001255e <r0::zero_bss+0xc>

200125a6 <r0::init_data>:
pub unsafe fn init_data<T>(mut sdata: *mut T, edata: *mut T, mut sidata: *const T)
200125a6:	7179                	add	sp,sp,-48
200125a8:	d606                	sw	ra,44(sp)
200125aa:	c62e                	sw	a1,12(sp)
200125ac:	c82a                	sw	a0,16(sp)
200125ae:	ca32                	sw	a2,20(sp)
200125b0:	cc2e                	sw	a1,24(sp)
    while sdata < edata {
200125b2:	a009                	j	200125b4 <r0::init_data+0xe>
200125b4:	45b2                	lw	a1,12(sp)
200125b6:	4542                	lw	a0,16(sp)
200125b8:	00b56663          	bltu	a0,a1,200125c4 <r0::init_data+0x1e>
200125bc:	a009                	j	200125be <r0::init_data+0x18>
}
200125be:	50b2                	lw	ra,44(sp)
200125c0:	6145                	add	sp,sp,48
200125c2:	8082                	ret
        ptr::write(sdata, ptr::read(sidata));
200125c4:	4542                	lw	a0,16(sp)
200125c6:	c42a                	sw	a0,8(sp)
200125c8:	4552                	lw	a0,20(sp)
200125ca:	00000097          	auipc	ra,0x0
200125ce:	038080e7          	jalr	56(ra) # 20012602 <core::ptr::read>
200125d2:	85aa                	mv	a1,a0
200125d4:	4522                	lw	a0,8(sp)
200125d6:	00000097          	auipc	ra,0x0
200125da:	036080e7          	jalr	54(ra) # 2001260c <core::ptr::write>
        sdata = sdata.offset(1);
200125de:	4542                	lw	a0,16(sp)
200125e0:	ce2a                	sw	a0,28(sp)
200125e2:	4585                	li	a1,1
200125e4:	d02e                	sw	a1,32(sp)
200125e6:	0511                	add	a0,a0,4
200125e8:	c82a                	sw	a0,16(sp)
        sidata = sidata.offset(1);
200125ea:	4552                	lw	a0,20(sp)
200125ec:	d22a                	sw	a0,36(sp)
200125ee:	d42e                	sw	a1,40(sp)
200125f0:	0511                	add	a0,a0,4
200125f2:	ca2a                	sw	a0,20(sp)
    while sdata < edata {
200125f4:	b7c1                	j	200125b4 <r0::init_data+0xe>

200125f6 <core::ptr::write_volatile>:
200125f6:	1141                	add	sp,sp,-16
200125f8:	c42a                	sw	a0,8(sp)
200125fa:	c62e                	sw	a1,12(sp)
200125fc:	c10c                	sw	a1,0(a0)
200125fe:	0141                	add	sp,sp,16
20012600:	8082                	ret

20012602 <core::ptr::read>:
20012602:	1141                	add	sp,sp,-16
20012604:	c62a                	sw	a0,12(sp)
20012606:	4108                	lw	a0,0(a0)
20012608:	0141                	add	sp,sp,16
2001260a:	8082                	ret

2001260c <core::ptr::write>:
2001260c:	1141                	add	sp,sp,-16
2001260e:	c42a                	sw	a0,8(sp)
20012610:	c62e                	sw	a1,12(sp)
20012612:	c10c                	sw	a1,0(a0)
20012614:	0141                	add	sp,sp,16
20012616:	8082                	ret

20012618 <riscv::asm::wfi>:
                () => core::arch::asm!($asm),
20012618:	10500073          	wfi
        }
2001261c:	8082                	ret

2001261e <riscv::register::mtvec::write>:
pub unsafe fn write(addr: usize, mode: TrapMode) {
2001261e:	1101                	add	sp,sp,-32
20012620:	ce06                	sw	ra,28(sp)
20012622:	c42e                	sw	a1,8(sp)
20012624:	85aa                	mv	a1,a0
20012626:	4522                	lw	a0,8(sp)
20012628:	00a109a3          	sb	a0,19(sp)
2001262c:	ca2e                	sw	a1,20(sp)
    let bits = addr + mode as usize;
2001262e:	01314503          	lbu	a0,19(sp)
20012632:	952e                	add	a0,a0,a1
20012634:	c62a                	sw	a0,12(sp)
20012636:	00b56c63          	bltu	a0,a1,2001264e <riscv::register::mtvec::write+0x30>
2001263a:	a009                	j	2001263c <riscv::register::mtvec::write+0x1e>
2001263c:	4532                	lw	a0,12(sp)
2001263e:	cc2a                	sw	a0,24(sp)
    _write(bits);
20012640:	00000097          	auipc	ra,0x0
20012644:	02a080e7          	jalr	42(ra) # 2001266a <riscv::register::mtvec::_write>
}
20012648:	40f2                	lw	ra,28(sp)
2001264a:	6105                	add	sp,sp,32
2001264c:	8082                	ret
    let bits = addr + mode as usize;
2001264e:	20018537          	lui	a0,0x20018
20012652:	d9050513          	add	a0,a0,-624 # 20017d90 <str.0>
20012656:	200185b7          	lui	a1,0x20018
2001265a:	d8058613          	add	a2,a1,-640 # 20017d80 <.L__unnamed_1>
2001265e:	45f1                	li	a1,28
20012660:	00003097          	auipc	ra,0x3
20012664:	e2c080e7          	jalr	-468(ra) # 2001548c <core::panicking::panic>
	...

2001266a <riscv::register::mtvec::_write>:
        unsafe fn _write(bits: usize) {
2001266a:	1141                	add	sp,sp,-16
2001266c:	c62a                	sw	a0,12(sp)
                () => core::arch::asm!(concat!("csrrw x0, ", stringify!($csr_number), ", {0}"), in(reg) bits),
2001266e:	30551073          	csrw	mtvec,a0
        }
20012672:	0141                	add	sp,sp,16
20012674:	8082                	ret

20012676 <riscv::register::mcause::read>:
        pub fn read() -> $register {
20012676:	1141                	add	sp,sp,-16
                bits: unsafe { _read() },
20012678:	c606                	sw	ra,12(sp)
2001267a:	00000097          	auipc	ra,0x0
2001267e:	012080e7          	jalr	18(ra) # 2001268c <riscv::register::mcause::_read>
            $register {
20012682:	c42a                	sw	a0,8(sp)
        }
20012684:	4522                	lw	a0,8(sp)
20012686:	40b2                	lw	ra,12(sp)
20012688:	0141                	add	sp,sp,16
2001268a:	8082                	ret

2001268c <riscv::register::mcause::_read>:
        unsafe fn _read() -> usize {
2001268c:	1141                	add	sp,sp,-16
                    core::arch::asm!(concat!("csrrs {0}, ", stringify!($csr_number), ", x0"), out(reg) r);
2001268e:	34202573          	csrr	a0,mcause
20012692:	c62a                	sw	a0,12(sp)
                    r
20012694:	4532                	lw	a0,12(sp)
        }
20012696:	0141                	add	sp,sp,16
20012698:	8082                	ret

2001269a <riscv::register::mcause::Mcause::is_exception>:

    /// Is trap cause an exception.
    #[inline]
    pub fn is_exception(&self) -> bool {
2001269a:	1141                	add	sp,sp,-16
2001269c:	c606                	sw	ra,12(sp)
2001269e:	c42a                	sw	a0,8(sp)
        !self.is_interrupt()
200126a0:	00000097          	auipc	ra,0x0
200126a4:	012080e7          	jalr	18(ra) # 200126b2 <riscv::register::mcause::Mcause::is_interrupt>
200126a8:	00154513          	xor	a0,a0,1
    }
200126ac:	40b2                	lw	ra,12(sp)
200126ae:	0141                	add	sp,sp,16
200126b0:	8082                	ret

200126b2 <riscv::register::mcause::Mcause::is_interrupt>:
    pub fn is_interrupt(&self) -> bool {
200126b2:	1141                	add	sp,sp,-16
200126b4:	c62a                	sw	a0,12(sp)
            () => self.bits & (1 << 31) == 1 << 31,
200126b6:	4108                	lw	a0,0(a0)
200126b8:	817d                	srl	a0,a0,0x1f
200126ba:	157d                	add	a0,a0,-1
200126bc:	00153513          	seqz	a0,a0
    }
200126c0:	0141                	add	sp,sp,16
200126c2:	8082                	ret

200126c4 <riscv::register::mcause::Mcause::code>:
    pub fn code(&self) -> usize {
200126c4:	1141                	add	sp,sp,-16
200126c6:	c62a                	sw	a0,12(sp)
            () => self.bits & !(1 << 31),
200126c8:	4108                	lw	a0,0(a0)
200126ca:	0506                	sll	a0,a0,0x1
200126cc:	8105                	srl	a0,a0,0x1
    }
200126ce:	0141                	add	sp,sp,16
200126d0:	8082                	ret

200126d2 <riscv::register::mhartid::read>:
        pub fn read() -> usize {
200126d2:	1141                	add	sp,sp,-16
            unsafe { _read() }
200126d4:	c606                	sw	ra,12(sp)
200126d6:	00000097          	auipc	ra,0x0
200126da:	00e080e7          	jalr	14(ra) # 200126e4 <riscv::register::mhartid::_read>
        }
200126de:	40b2                	lw	ra,12(sp)
200126e0:	0141                	add	sp,sp,16
200126e2:	8082                	ret

200126e4 <riscv::register::mhartid::_read>:
        unsafe fn _read() -> usize {
200126e4:	1141                	add	sp,sp,-16
                    core::arch::asm!(concat!("csrrs {0}, ", stringify!($csr_number), ", x0"), out(reg) r);
200126e6:	f1402573          	csrr	a0,mhartid
200126ea:	c62a                	sw	a0,12(sp)
                    r
200126ec:	4532                	lw	a0,12(sp)
        }
200126ee:	0141                	add	sp,sp,16
200126f0:	8082                	ret

200126f2 <DefaultExceptionHandler>:

#[doc(hidden)]
#[no_mangle]
#[allow(unused_variables, non_snake_case)]
pub fn DefaultExceptionHandler(trap_frame: &TrapFrame) -> ! {
200126f2:	1141                	add	sp,sp,-16
200126f4:	c62a                	sw	a0,12(sp)
    loop {
200126f6:	a009                	j	200126f8 <DefaultExceptionHandler+0x6>
200126f8:	a001                	j	200126f8 <DefaultExceptionHandler+0x6>

200126fa <DefaultInterruptHandler>:

#[doc(hidden)]
#[no_mangle]
#[allow(unused_variables, non_snake_case)]
pub fn DefaultInterruptHandler() {
    loop {
200126fa:	a009                	j	200126fc <DefaultInterruptHandler+0x2>
200126fc:	a001                	j	200126fc <DefaultInterruptHandler+0x2>

200126fe <default_pre_init>:
];

#[doc(hidden)]
#[no_mangle]
#[rustfmt::skip]
pub unsafe extern "Rust" fn default_pre_init() {}
200126fe:	8082                	ret

20012700 <default_mp_hook>:

#[doc(hidden)]
#[no_mangle]
#[rustfmt::skip]
pub extern "Rust" fn default_mp_hook(hartid: usize) -> bool {
20012700:	1141                	add	sp,sp,-16
20012702:	c606                	sw	ra,12(sp)
20012704:	c42a                	sw	a0,8(sp)
    match hartid {
20012706:	e511                	bnez	a0,20012712 <default_mp_hook+0x12>
20012708:	a009                	j	2001270a <default_mp_hook+0xa>
2001270a:	4505                	li	a0,1
        0 => true,
        _ => loop {
            unsafe { riscv::asm::wfi() }
        },
    }
}
2001270c:	40b2                	lw	ra,12(sp)
2001270e:	0141                	add	sp,sp,16
20012710:	8082                	ret
            unsafe { riscv::asm::wfi() }
20012712:	00000097          	auipc	ra,0x0
20012716:	f06080e7          	jalr	-250(ra) # 20012618 <riscv::asm::wfi>
2001271a:	bfe5                	j	20012712 <default_mp_hook+0x12>

2001271c <default_setup_interrupts>:

/// Default implementation of `_setup_interrupts` that sets `mtvec`/`stvec` to a trap handler address.
#[doc(hidden)]
#[no_mangle]
#[rustfmt::skip]
pub unsafe extern "Rust" fn default_setup_interrupts() {
2001271c:	1141                	add	sp,sp,-16
2001271e:	c606                	sw	ra,12(sp)
20012720:	4501                	li	a0,0
    extern "C" {
        fn _start_trap();
    }

    xtvec::write(_start_trap as usize, xTrapMode::Direct);
20012722:	00a105a3          	sb	a0,11(sp)
20012726:	00b14583          	lbu	a1,11(sp)
2001272a:	20011537          	lui	a0,0x20011
2001272e:	8ca50513          	add	a0,a0,-1846 # 200108ca <_start_trap>
20012732:	00000097          	auipc	ra,0x0
20012736:	eec080e7          	jalr	-276(ra) # 2001261e <riscv::register::mtvec::write>
}
2001273a:	40b2                	lw	ra,12(sp)
2001273c:	0141                	add	sp,sp,16
2001273e:	8082                	ret

20012740 <<core::ops::range::Range<usize> as core::slice::index::SliceIndex<[T]>>::index_mut>:
20012740:	711d                	add	sp,sp,-96
20012742:	c63a                	sw	a4,12(sp)
20012744:	c836                	sw	a3,16(sp)
20012746:	ca32                	sw	a2,20(sp)
20012748:	cc2e                	sw	a1,24(sp)
2001274a:	ce2a                	sw	a0,28(sp)
2001274c:	d82a                	sw	a0,48(sp)
2001274e:	da2e                	sw	a1,52(sp)
20012750:	dc32                	sw	a2,56(sp)
20012752:	de36                	sw	a3,60(sp)
20012754:	00a5e863          	bltu	a1,a0,20012764 <<core::ops::range::Range<usize> as core::slice::index::SliceIndex<[T]>>::index_mut+0x24>
20012758:	a009                	j	2001275a <<core::ops::range::Range<usize> as core::slice::index::SliceIndex<[T]>>::index_mut+0x1a>
2001275a:	4542                	lw	a0,16(sp)
2001275c:	45e2                	lw	a1,24(sp)
2001275e:	04b56363          	bltu	a0,a1,200127a4 <<core::ops::range::Range<usize> as core::slice::index::SliceIndex<[T]>>::index_mut+0x64>
20012762:	a809                	j	20012774 <<core::ops::range::Range<usize> as core::slice::index::SliceIndex<[T]>>::index_mut+0x34>
20012764:	4632                	lw	a2,12(sp)
20012766:	45e2                	lw	a1,24(sp)
20012768:	4572                	lw	a0,28(sp)
2001276a:	00004097          	auipc	ra,0x4
2001276e:	096080e7          	jalr	150(ra) # 20016800 <core::slice::index::slice_index_order_fail>
20012772:	0000                	unimp
20012774:	45d2                	lw	a1,20(sp)
20012776:	4672                	lw	a2,28(sp)
20012778:	4562                	lw	a0,24(sp)
2001277a:	46c2                	lw	a3,16(sp)
2001277c:	c0b2                	sw	a2,64(sp)
2001277e:	c2aa                	sw	a0,68(sp)
20012780:	c4ae                	sw	a1,72(sp)
20012782:	c6b6                	sw	a3,76(sp)
20012784:	8d11                	sub	a0,a0,a2
20012786:	c8aa                	sw	a0,80(sp)
20012788:	caae                	sw	a1,84(sp)
2001278a:	95b2                	add	a1,a1,a2
2001278c:	ccae                	sw	a1,88(sp)
2001278e:	ceae                	sw	a1,92(sp)
20012790:	d42e                	sw	a1,40(sp)
20012792:	d62a                	sw	a0,44(sp)
20012794:	55a2                	lw	a1,40(sp)
20012796:	5532                	lw	a0,44(sp)
20012798:	d02e                	sw	a1,32(sp)
2001279a:	d22a                	sw	a0,36(sp)
2001279c:	5502                	lw	a0,32(sp)
2001279e:	5592                	lw	a1,36(sp)
200127a0:	6125                	add	sp,sp,96
200127a2:	8082                	ret
200127a4:	4632                	lw	a2,12(sp)
200127a6:	45c2                	lw	a1,16(sp)
200127a8:	4562                	lw	a0,24(sp)
200127aa:	00004097          	auipc	ra,0x4
200127ae:	016080e7          	jalr	22(ra) # 200167c0 <core::slice::index::slice_end_index_len_fail>
	...

200127b4 <<e310x_hal::gpio::gpio0::Pin19<e310x_hal::gpio::Output<MODE>> as embedded_hal::digital::v2::OutputPin>::set_low>:
                    fn set_high(&mut self) -> Result<(), Infallible> {
                        $GPIOX::set_output_value(Self::INDEX, true);
                        Ok(())
                    }

                    fn set_low(&mut self) -> Result<(), Infallible> {
200127b4:	1141                	add	sp,sp,-16
200127b6:	c606                	sw	ra,12(sp)
200127b8:	c42a                	sw	a0,8(sp)
200127ba:	454d                	li	a0,19
200127bc:	4581                	li	a1,0
                        $GPIOX::set_output_value(Self::INDEX, false);
200127be:	00001097          	auipc	ra,0x1
200127c2:	96a080e7          	jalr	-1686(ra) # 20013128 <e310x_hal::gpio::PeripheralAccess::set_output_value>
                        Ok(())
                    }
200127c6:	40b2                	lw	ra,12(sp)
200127c8:	0141                	add	sp,sp,16
200127ca:	8082                	ret

200127cc <<e310x_hal::gpio::gpio0::Pin19<e310x_hal::gpio::Output<MODE>> as embedded_hal::digital::v2::OutputPin>::set_high>:
                    fn set_high(&mut self) -> Result<(), Infallible> {
200127cc:	1141                	add	sp,sp,-16
200127ce:	c606                	sw	ra,12(sp)
200127d0:	c42a                	sw	a0,8(sp)
200127d2:	454d                	li	a0,19
200127d4:	4585                	li	a1,1
                        $GPIOX::set_output_value(Self::INDEX, true);
200127d6:	00001097          	auipc	ra,0x1
200127da:	952080e7          	jalr	-1710(ra) # 20013128 <e310x_hal::gpio::PeripheralAccess::set_output_value>
                    }
200127de:	40b2                	lw	ra,12(sp)
200127e0:	0141                	add	sp,sp,16
200127e2:	8082                	ret

200127e4 <<e310x_hal::gpio::gpio0::Pin21<e310x_hal::gpio::Output<MODE>> as embedded_hal::digital::v2::OutputPin>::set_low>:
                    fn set_low(&mut self) -> Result<(), Infallible> {
200127e4:	1141                	add	sp,sp,-16
200127e6:	c606                	sw	ra,12(sp)
200127e8:	c42a                	sw	a0,8(sp)
200127ea:	4555                	li	a0,21
200127ec:	4581                	li	a1,0
                        $GPIOX::set_output_value(Self::INDEX, false);
200127ee:	00001097          	auipc	ra,0x1
200127f2:	93a080e7          	jalr	-1734(ra) # 20013128 <e310x_hal::gpio::PeripheralAccess::set_output_value>
                    }
200127f6:	40b2                	lw	ra,12(sp)
200127f8:	0141                	add	sp,sp,16
200127fa:	8082                	ret

200127fc <<e310x_hal::gpio::gpio0::Pin21<e310x_hal::gpio::Output<MODE>> as embedded_hal::digital::v2::OutputPin>::set_high>:
                    fn set_high(&mut self) -> Result<(), Infallible> {
200127fc:	1141                	add	sp,sp,-16
200127fe:	c606                	sw	ra,12(sp)
20012800:	c42a                	sw	a0,8(sp)
20012802:	4555                	li	a0,21
20012804:	4585                	li	a1,1
                        $GPIOX::set_output_value(Self::INDEX, true);
20012806:	00001097          	auipc	ra,0x1
2001280a:	922080e7          	jalr	-1758(ra) # 20013128 <e310x_hal::gpio::PeripheralAccess::set_output_value>
                    }
2001280e:	40b2                	lw	ra,12(sp)
20012810:	0141                	add	sp,sp,16
20012812:	8082                	ret

20012814 <<e310x_hal::gpio::gpio0::Pin22<e310x_hal::gpio::Output<MODE>> as embedded_hal::digital::v2::OutputPin>::set_low>:
                    fn set_low(&mut self) -> Result<(), Infallible> {
20012814:	1141                	add	sp,sp,-16
20012816:	c606                	sw	ra,12(sp)
20012818:	c42a                	sw	a0,8(sp)
2001281a:	4559                	li	a0,22
2001281c:	4581                	li	a1,0
                        $GPIOX::set_output_value(Self::INDEX, false);
2001281e:	00001097          	auipc	ra,0x1
20012822:	90a080e7          	jalr	-1782(ra) # 20013128 <e310x_hal::gpio::PeripheralAccess::set_output_value>
                    }
20012826:	40b2                	lw	ra,12(sp)
20012828:	0141                	add	sp,sp,16
2001282a:	8082                	ret

2001282c <<e310x_hal::gpio::gpio0::Pin22<e310x_hal::gpio::Output<MODE>> as embedded_hal::digital::v2::OutputPin>::set_high>:
                    fn set_high(&mut self) -> Result<(), Infallible> {
2001282c:	1141                	add	sp,sp,-16
2001282e:	c606                	sw	ra,12(sp)
20012830:	c42a                	sw	a0,8(sp)
20012832:	4559                	li	a0,22
20012834:	4585                	li	a1,1
                        $GPIOX::set_output_value(Self::INDEX, true);
20012836:	00001097          	auipc	ra,0x1
2001283a:	8f2080e7          	jalr	-1806(ra) # 20013128 <e310x_hal::gpio::PeripheralAccess::set_output_value>
                    }
2001283e:	40b2                	lw	ra,12(sp)
20012840:	0141                	add	sp,sp,16
20012842:	8082                	ret

20012844 <<e310x_hal::gpio::gpio0::Pin19<e310x_hal::gpio::Output<MODE>> as embedded_hal::digital::v2::ToggleableOutputPin>::toggle>:

                impl<MODE> ToggleableOutputPin for $PXi<Output<MODE>> {
                    type Error = Infallible;

                    /// Toggles the pin state.
                    fn toggle(&mut self) -> Result<(), Infallible> {
20012844:	1141                	add	sp,sp,-16
20012846:	c606                	sw	ra,12(sp)
20012848:	c42a                	sw	a0,8(sp)
2001284a:	454d                	li	a0,19
                        $GPIOX::toggle_pin(Self::INDEX);
2001284c:	00001097          	auipc	ra,0x1
20012850:	87a080e7          	jalr	-1926(ra) # 200130c6 <e310x_hal::gpio::PeripheralAccess::toggle_pin>
                        Ok(())
                    }
20012854:	40b2                	lw	ra,12(sp)
20012856:	0141                	add	sp,sp,16
20012858:	8082                	ret

2001285a <<e310x_hal::gpio::gpio0::Pin21<e310x_hal::gpio::Output<MODE>> as embedded_hal::digital::v2::ToggleableOutputPin>::toggle>:
                    fn toggle(&mut self) -> Result<(), Infallible> {
2001285a:	1141                	add	sp,sp,-16
2001285c:	c606                	sw	ra,12(sp)
2001285e:	c42a                	sw	a0,8(sp)
20012860:	4555                	li	a0,21
                        $GPIOX::toggle_pin(Self::INDEX);
20012862:	00001097          	auipc	ra,0x1
20012866:	864080e7          	jalr	-1948(ra) # 200130c6 <e310x_hal::gpio::PeripheralAccess::toggle_pin>
                    }
2001286a:	40b2                	lw	ra,12(sp)
2001286c:	0141                	add	sp,sp,16
2001286e:	8082                	ret

20012870 <<e310x_hal::gpio::gpio0::Pin22<e310x_hal::gpio::Output<MODE>> as embedded_hal::digital::v2::ToggleableOutputPin>::toggle>:
                    fn toggle(&mut self) -> Result<(), Infallible> {
20012870:	1141                	add	sp,sp,-16
20012872:	c606                	sw	ra,12(sp)
20012874:	c42a                	sw	a0,8(sp)
20012876:	4559                	li	a0,22
                        $GPIOX::toggle_pin(Self::INDEX);
20012878:	00001097          	auipc	ra,0x1
2001287c:	84e080e7          	jalr	-1970(ra) # 200130c6 <e310x_hal::gpio::PeripheralAccess::toggle_pin>
                    }
20012880:	40b2                	lw	ra,12(sp)
20012882:	0141                	add	sp,sp,16
20012884:	8082                	ret

20012886 <<usize as bit_field::BitField>::get_bit>:
            fn get_bit(&self, bit: usize) -> bool {
20012886:	1101                	add	sp,sp,-32
20012888:	c632                	sw	a2,12(sp)
2001288a:	c82e                	sw	a1,16(sp)
2001288c:	ca2a                	sw	a0,20(sp)
2001288e:	cc2a                	sw	a0,24(sp)
20012890:	ce2e                	sw	a1,28(sp)
20012892:	02000513          	li	a0,32
                assert!(bit < Self::BIT_LENGTH);
20012896:	00a5ef63          	bltu	a1,a0,200128b4 <<usize as bit_field::BitField>::get_bit+0x2e>
2001289a:	a009                	j	2001289c <<usize as bit_field::BitField>::get_bit+0x16>
2001289c:	4632                	lw	a2,12(sp)
2001289e:	20018537          	lui	a0,0x20018
200128a2:	e8450513          	add	a0,a0,-380 # 20017e84 <.L__unnamed_3>
200128a6:	02800593          	li	a1,40
200128aa:	00003097          	auipc	ra,0x3
200128ae:	be2080e7          	jalr	-1054(ra) # 2001548c <core::panicking::panic>
200128b2:	0000                	unimp
                (*self & (1 << bit)) != 0
200128b4:	45c2                	lw	a1,16(sp)
200128b6:	4552                	lw	a0,20(sp)
200128b8:	4108                	lw	a0,0(a0)
200128ba:	c42a                	sw	a0,8(sp)
200128bc:	457d                	li	a0,31
200128be:	00b56a63          	bltu	a0,a1,200128d2 <<usize as bit_field::BitField>::get_bit+0x4c>
200128c2:	a009                	j	200128c4 <<usize as bit_field::BitField>::get_bit+0x3e>
200128c4:	4522                	lw	a0,8(sp)
200128c6:	45c2                	lw	a1,16(sp)
200128c8:	00b55533          	srl	a0,a0,a1
            }
200128cc:	8905                	and	a0,a0,1
200128ce:	6105                	add	sp,sp,32
200128d0:	8082                	ret
                (*self & (1 << bit)) != 0
200128d2:	4632                	lw	a2,12(sp)
200128d4:	20018537          	lui	a0,0x20018
200128d8:	eb050513          	add	a0,a0,-336 # 20017eb0 <str.0>
200128dc:	02300593          	li	a1,35
200128e0:	00003097          	auipc	ra,0x3
200128e4:	bac080e7          	jalr	-1108(ra) # 2001548c <core::panicking::panic>
	...

200128ea <core::fmt::Write::write_char>:
200128ea:	7179                	add	sp,sp,-48
200128ec:	d606                	sw	ra,44(sp)
200128ee:	c22e                	sw	a1,4(sp)
200128f0:	85aa                	mv	a1,a0
200128f2:	4512                	lw	a0,4(sp)
200128f4:	c42e                	sw	a1,8(sp)
200128f6:	ca2e                	sw	a1,20(sp)
200128f8:	cc2a                	sw	a0,24(sp)
200128fa:	4581                	li	a1,0
200128fc:	c82e                	sw	a1,16(sp)
200128fe:	080c                	add	a1,sp,16
20012900:	ce2e                	sw	a1,28(sp)
20012902:	4611                	li	a2,4
20012904:	d032                	sw	a2,32(sp)
20012906:	00000097          	auipc	ra,0x0
2001290a:	0d0080e7          	jalr	208(ra) # 200129d6 <core::char::methods::encode_utf8_raw>
2001290e:	862a                	mv	a2,a0
20012910:	4522                	lw	a0,8(sp)
20012912:	c632                	sw	a2,12(sp)
20012914:	862e                	mv	a2,a1
20012916:	45b2                	lw	a1,12(sp)
20012918:	d22e                	sw	a1,36(sp)
2001291a:	d432                	sw	a2,40(sp)
2001291c:	00001097          	auipc	ra,0x1
20012920:	a22080e7          	jalr	-1502(ra) # 2001333e <<hifive1::stdout::SerialWrapper as core::fmt::Write>::write_str>
20012924:	50b2                	lw	ra,44(sp)
20012926:	6145                	add	sp,sp,48
20012928:	8082                	ret

2001292a <core::fmt::Write::write_fmt>:
2001292a:	1141                	add	sp,sp,-16
2001292c:	c606                	sw	ra,12(sp)
2001292e:	c42a                	sw	a0,8(sp)
20012930:	00000097          	auipc	ra,0x0
20012934:	5c8080e7          	jalr	1480(ra) # 20012ef8 <<&mut W as core::fmt::Write::write_fmt::SpecWriteFmt>::spec_write_fmt>
20012938:	40b2                	lw	ra,12(sp)
2001293a:	0141                	add	sp,sp,16
2001293c:	8082                	ret

2001293e <core::fmt::Arguments::new_v1>:
2001293e:	711d                	add	sp,sp,-96
20012940:	c63a                	sw	a4,12(sp)
20012942:	c836                	sw	a3,16(sp)
20012944:	ca32                	sw	a2,20(sp)
20012946:	cc2e                	sw	a1,24(sp)
20012948:	ce2a                	sw	a0,28(sp)
2001294a:	c4ae                	sw	a1,72(sp)
2001294c:	c6b2                	sw	a2,76(sp)
2001294e:	c8b6                	sw	a3,80(sp)
20012950:	caba                	sw	a4,84(sp)
20012952:	00e66963          	bltu	a2,a4,20012964 <core::fmt::Arguments::new_v1+0x26>
20012956:	a009                	j	20012958 <core::fmt::Arguments::new_v1+0x1a>
20012958:	45d2                	lw	a1,20(sp)
2001295a:	4532                	lw	a0,12(sp)
2001295c:	0505                	add	a0,a0,1
2001295e:	02b56563          	bltu	a0,a1,20012988 <core::fmt::Arguments::new_v1+0x4a>
20012962:	a011                	j	20012966 <core::fmt::Arguments::new_v1+0x28>
20012964:	a015                	j	20012988 <core::fmt::Arguments::new_v1+0x4a>
20012966:	4532                	lw	a0,12(sp)
20012968:	45f2                	lw	a1,28(sp)
2001296a:	4642                	lw	a2,16(sp)
2001296c:	46d2                	lw	a3,20(sp)
2001296e:	4762                	lw	a4,24(sp)
20012970:	4781                	li	a5,0
20012972:	dc3e                	sw	a5,56(sp)
20012974:	c198                	sw	a4,0(a1)
20012976:	c1d4                	sw	a3,4(a1)
20012978:	5762                	lw	a4,56(sp)
2001297a:	56f2                	lw	a3,60(sp)
2001297c:	c998                	sw	a4,16(a1)
2001297e:	c9d4                	sw	a3,20(a1)
20012980:	c590                	sw	a2,8(a1)
20012982:	c5c8                	sw	a0,12(a1)
20012984:	6125                	add	sp,sp,96
20012986:	8082                	ret
20012988:	20018537          	lui	a0,0x20018
2001298c:	ee050613          	add	a2,a0,-288 # 20017ee0 <.L__unnamed_4>
20012990:	ccb2                	sw	a2,88(sp)
20012992:	4585                	li	a1,1
20012994:	ceae                	sw	a1,92(sp)
20012996:	4501                	li	a0,0
20012998:	c0aa                	sw	a0,64(sp)
2001299a:	d032                	sw	a2,32(sp)
2001299c:	d22e                	sw	a1,36(sp)
2001299e:	4606                	lw	a2,64(sp)
200129a0:	4596                	lw	a1,68(sp)
200129a2:	d832                	sw	a2,48(sp)
200129a4:	da2e                	sw	a1,52(sp)
200129a6:	200185b7          	lui	a1,0x20018
200129aa:	ee858593          	add	a1,a1,-280 # 20017ee8 <.L__unnamed_21>
200129ae:	d42e                	sw	a1,40(sp)
200129b0:	d62a                	sw	a0,44(sp)
200129b2:	20018537          	lui	a0,0x20018
200129b6:	f3450593          	add	a1,a0,-204 # 20017f34 <.L__unnamed_6>
200129ba:	1008                	add	a0,sp,32
200129bc:	00003097          	auipc	ra,0x3
200129c0:	aa2080e7          	jalr	-1374(ra) # 2001545e <core::panicking::panic_fmt>
	...

200129c6 <core::ptr::drop_in_place<core::convert::Infallible>>:
200129c6:	1141                	add	sp,sp,-16
200129c8:	c62a                	sw	a0,12(sp)
200129ca:	0141                	add	sp,sp,16
200129cc:	8082                	ret

200129ce <core::ptr::drop_in_place<hifive1::stdout::SerialWrapper>>:
200129ce:	1141                	add	sp,sp,-16
200129d0:	c62a                	sw	a0,12(sp)
200129d2:	0141                	add	sp,sp,16
200129d4:	8082                	ret

200129d6 <core::char::methods::encode_utf8_raw>:
200129d6:	7155                	add	sp,sp,-208
200129d8:	c786                	sw	ra,204(sp)
200129da:	c832                	sw	a2,16(sp)
200129dc:	ca2e                	sw	a1,20(sp)
200129de:	d02a                	sw	a0,32(sp)
200129e0:	deae                	sw	a1,124(sp)
200129e2:	c132                	sw	a2,128(sp)
200129e4:	5502                	lw	a0,32(sp)
200129e6:	cc2a                	sw	a0,24(sp)
200129e8:	c32a                	sw	a0,132(sp)
200129ea:	08000593          	li	a1,128
200129ee:	00b56763          	bltu	a0,a1,200129fc <core::char::methods::encode_utf8_raw+0x26>
200129f2:	a009                	j	200129f4 <core::char::methods::encode_utf8_raw+0x1e>
200129f4:	4562                	lw	a0,24(sp)
200129f6:	812d                	srl	a0,a0,0xb
200129f8:	c909                	beqz	a0,20012a0a <core::char::methods::encode_utf8_raw+0x34>
200129fa:	a021                	j	20012a02 <core::char::methods::encode_utf8_raw+0x2c>
200129fc:	4505                	li	a0,1
200129fe:	d22a                	sw	a0,36(sp)
20012a00:	a005                	j	20012a20 <core::char::methods::encode_utf8_raw+0x4a>
20012a02:	4562                	lw	a0,24(sp)
20012a04:	8141                	srl	a0,a0,0x10
20012a06:	c901                	beqz	a0,20012a16 <core::char::methods::encode_utf8_raw+0x40>
20012a08:	a021                	j	20012a10 <core::char::methods::encode_utf8_raw+0x3a>
20012a0a:	4509                	li	a0,2
20012a0c:	d22a                	sw	a0,36(sp)
20012a0e:	a801                	j	20012a1e <core::char::methods::encode_utf8_raw+0x48>
20012a10:	4511                	li	a0,4
20012a12:	d22a                	sw	a0,36(sp)
20012a14:	a021                	j	20012a1c <core::char::methods::encode_utf8_raw+0x46>
20012a16:	450d                	li	a0,3
20012a18:	d22a                	sw	a0,36(sp)
20012a1a:	a009                	j	20012a1c <core::char::methods::encode_utf8_raw+0x46>
20012a1c:	a009                	j	20012a1e <core::char::methods::encode_utf8_raw+0x48>
20012a1e:	a009                	j	20012a20 <core::char::methods::encode_utf8_raw+0x4a>
20012a20:	5512                	lw	a0,36(sp)
20012a22:	c62a                	sw	a0,12(sp)
20012a24:	4585                	li	a1,1
20012a26:	08b50e63          	beq	a0,a1,20012ac2 <core::char::methods::encode_utf8_raw+0xec>
20012a2a:	a009                	j	20012a2c <core::char::methods::encode_utf8_raw+0x56>
20012a2c:	4532                	lw	a0,12(sp)
20012a2e:	4589                	li	a1,2
20012a30:	08b50c63          	beq	a0,a1,20012ac8 <core::char::methods::encode_utf8_raw+0xf2>
20012a34:	a009                	j	20012a36 <core::char::methods::encode_utf8_raw+0x60>
20012a36:	4532                	lw	a0,12(sp)
20012a38:	458d                	li	a1,3
20012a3a:	08b50c63          	beq	a0,a1,20012ad2 <core::char::methods::encode_utf8_raw+0xfc>
20012a3e:	a009                	j	20012a40 <core::char::methods::encode_utf8_raw+0x6a>
20012a40:	4532                	lw	a0,12(sp)
20012a42:	4591                	li	a1,4
20012a44:	08b50c63          	beq	a0,a1,20012adc <core::char::methods::encode_utf8_raw+0x106>
20012a48:	a009                	j	20012a4a <core::char::methods::encode_utf8_raw+0x74>
20012a4a:	45c2                	lw	a1,16(sp)
20012a4c:	1050                	add	a2,sp,36
20012a4e:	db32                	sw	a2,180(sp)
20012a50:	20017537          	lui	a0,0x20017
20012a54:	1d650513          	add	a0,a0,470 # 200171d6 <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt>
20012a58:	dd2a                	sw	a0,184(sp)
20012a5a:	ccb2                	sw	a2,88(sp)
20012a5c:	ceaa                	sw	a0,92(sp)
20012a5e:	1014                	add	a3,sp,32
20012a60:	df36                	sw	a3,188(sp)
20012a62:	20017637          	lui	a2,0x20017
20012a66:	f3460613          	add	a2,a2,-204 # 20016f34 <core::fmt::num::<impl core::fmt::UpperHex for i32>::fmt>
20012a6a:	c1b2                	sw	a2,192(sp)
20012a6c:	d0b6                	sw	a3,96(sp)
20012a6e:	d2b2                	sw	a2,100(sp)
20012a70:	d8ae                	sw	a1,112(sp)
20012a72:	188c                	add	a1,sp,112
20012a74:	c3ae                	sw	a1,196(sp)
20012a76:	c5aa                	sw	a0,200(sp)
20012a78:	d4ae                	sw	a1,104(sp)
20012a7a:	d6aa                	sw	a0,108(sp)
20012a7c:	45e6                	lw	a1,88(sp)
20012a7e:	4576                	lw	a0,92(sp)
20012a80:	c0ae                	sw	a1,64(sp)
20012a82:	c2aa                	sw	a0,68(sp)
20012a84:	5586                	lw	a1,96(sp)
20012a86:	5516                	lw	a0,100(sp)
20012a88:	c4ae                	sw	a1,72(sp)
20012a8a:	c6aa                	sw	a0,76(sp)
20012a8c:	55a6                	lw	a1,104(sp)
20012a8e:	5536                	lw	a0,108(sp)
20012a90:	c8ae                	sw	a1,80(sp)
20012a92:	caaa                	sw	a0,84(sp)
20012a94:	20018537          	lui	a0,0x20018
20012a98:	fe050593          	add	a1,a0,-32 # 20017fe0 <.L__unnamed_7>
20012a9c:	1028                	add	a0,sp,40
20012a9e:	c42a                	sw	a0,8(sp)
20012aa0:	0094                	add	a3,sp,64
20012aa2:	470d                	li	a4,3
20012aa4:	863a                	mv	a2,a4
20012aa6:	00000097          	auipc	ra,0x0
20012aaa:	e98080e7          	jalr	-360(ra) # 2001293e <core::fmt::Arguments::new_v1>
20012aae:	4522                	lw	a0,8(sp)
20012ab0:	200185b7          	lui	a1,0x20018
20012ab4:	ff858593          	add	a1,a1,-8 # 20017ff8 <.L__unnamed_8>
20012ab8:	00003097          	auipc	ra,0x3
20012abc:	9a6080e7          	jalr	-1626(ra) # 2001545e <core::panicking::panic_fmt>
20012ac0:	0000                	unimp
20012ac2:	4542                	lw	a0,16(sp)
20012ac4:	e10d                	bnez	a0,20012ae6 <core::char::methods::encode_utf8_raw+0x110>
20012ac6:	b751                	j	20012a4a <core::char::methods::encode_utf8_raw+0x74>
20012ac8:	45c2                	lw	a1,16(sp)
20012aca:	4505                	li	a0,1
20012acc:	04b56763          	bltu	a0,a1,20012b1a <core::char::methods::encode_utf8_raw+0x144>
20012ad0:	bfad                	j	20012a4a <core::char::methods::encode_utf8_raw+0x74>
20012ad2:	45c2                	lw	a1,16(sp)
20012ad4:	4509                	li	a0,2
20012ad6:	06b56763          	bltu	a0,a1,20012b44 <core::char::methods::encode_utf8_raw+0x16e>
20012ada:	bf85                	j	20012a4a <core::char::methods::encode_utf8_raw+0x74>
20012adc:	45c2                	lw	a1,16(sp)
20012ade:	450d                	li	a0,3
20012ae0:	0ab56163          	bltu	a0,a1,20012b82 <core::char::methods::encode_utf8_raw+0x1ac>
20012ae4:	b79d                	j	20012a4a <core::char::methods::encode_utf8_raw+0x74>
20012ae6:	45d2                	lw	a1,20(sp)
20012ae8:	c52e                	sw	a1,136(sp)
20012aea:	5502                	lw	a0,32(sp)
20012aec:	00a58023          	sb	a0,0(a1)
20012af0:	a009                	j	20012af2 <core::char::methods::encode_utf8_raw+0x11c>
20012af2:	46c2                	lw	a3,16(sp)
20012af4:	4652                	lw	a2,20(sp)
20012af6:	5512                	lw	a0,36(sp)
20012af8:	d92a                	sw	a0,176(sp)
20012afa:	4581                	li	a1,0
20012afc:	daae                	sw	a1,116(sp)
20012afe:	dcaa                	sw	a0,120(sp)
20012b00:	5556                	lw	a0,116(sp)
20012b02:	55e6                	lw	a1,120(sp)
20012b04:	20018737          	lui	a4,0x20018
20012b08:	f9470713          	add	a4,a4,-108 # 20017f94 <.L__unnamed_9>
20012b0c:	00000097          	auipc	ra,0x0
20012b10:	c34080e7          	jalr	-972(ra) # 20012740 <<core::ops::range::Range<usize> as core::slice::index::SliceIndex<[T]>>::index_mut>
20012b14:	40be                	lw	ra,204(sp)
20012b16:	6169                	add	sp,sp,208
20012b18:	8082                	ret
20012b1a:	45d2                	lw	a1,20(sp)
20012b1c:	c72e                	sw	a1,140(sp)
20012b1e:	00158513          	add	a0,a1,1
20012b22:	c92a                	sw	a0,144(sp)
20012b24:	5502                	lw	a0,32(sp)
20012b26:	0556                	sll	a0,a0,0x15
20012b28:	816d                	srl	a0,a0,0x1b
20012b2a:	0c050513          	add	a0,a0,192
20012b2e:	00a58023          	sb	a0,0(a1)
20012b32:	02014503          	lbu	a0,32(sp)
20012b36:	03f57513          	and	a0,a0,63
20012b3a:	08050513          	add	a0,a0,128
20012b3e:	00a580a3          	sb	a0,1(a1)
20012b42:	bf45                	j	20012af2 <core::char::methods::encode_utf8_raw+0x11c>
20012b44:	45d2                	lw	a1,20(sp)
20012b46:	cb2e                	sw	a1,148(sp)
20012b48:	00158513          	add	a0,a1,1
20012b4c:	cd2a                	sw	a0,152(sp)
20012b4e:	00258513          	add	a0,a1,2
20012b52:	cf2a                	sw	a0,156(sp)
20012b54:	5502                	lw	a0,32(sp)
20012b56:	0542                	sll	a0,a0,0x10
20012b58:	8171                	srl	a0,a0,0x1c
20012b5a:	0e050513          	add	a0,a0,224
20012b5e:	00a58023          	sb	a0,0(a1)
20012b62:	5502                	lw	a0,32(sp)
20012b64:	0552                	sll	a0,a0,0x14
20012b66:	8169                	srl	a0,a0,0x1a
20012b68:	08050513          	add	a0,a0,128
20012b6c:	00a580a3          	sb	a0,1(a1)
20012b70:	02014503          	lbu	a0,32(sp)
20012b74:	03f57513          	and	a0,a0,63
20012b78:	08050513          	add	a0,a0,128
20012b7c:	00a58123          	sb	a0,2(a1)
20012b80:	bf8d                	j	20012af2 <core::char::methods::encode_utf8_raw+0x11c>
20012b82:	45d2                	lw	a1,20(sp)
20012b84:	d12e                	sw	a1,160(sp)
20012b86:	00158513          	add	a0,a1,1
20012b8a:	d32a                	sw	a0,164(sp)
20012b8c:	00258513          	add	a0,a1,2
20012b90:	d52a                	sw	a0,168(sp)
20012b92:	00358513          	add	a0,a1,3
20012b96:	d72a                	sw	a0,172(sp)
20012b98:	5502                	lw	a0,32(sp)
20012b9a:	052e                	sll	a0,a0,0xb
20012b9c:	8175                	srl	a0,a0,0x1d
20012b9e:	0f050513          	add	a0,a0,240
20012ba2:	00a58023          	sb	a0,0(a1)
20012ba6:	5502                	lw	a0,32(sp)
20012ba8:	053a                	sll	a0,a0,0xe
20012baa:	8169                	srl	a0,a0,0x1a
20012bac:	08050513          	add	a0,a0,128
20012bb0:	00a580a3          	sb	a0,1(a1)
20012bb4:	5502                	lw	a0,32(sp)
20012bb6:	0552                	sll	a0,a0,0x14
20012bb8:	8169                	srl	a0,a0,0x1a
20012bba:	08050513          	add	a0,a0,128
20012bbe:	00a58123          	sb	a0,2(a1)
20012bc2:	02014503          	lbu	a0,32(sp)
20012bc6:	03f57513          	and	a0,a0,63
20012bca:	08050513          	add	a0,a0,128
20012bce:	00a581a3          	sb	a0,3(a1)
20012bd2:	b705                	j	20012af2 <core::char::methods::encode_utf8_raw+0x11c>

20012bd4 <core::sync::atomic::AtomicU32::fetch_or>:
20012bd4:	7179                	add	sp,sp,-48
20012bd6:	c62e                	sw	a1,12(sp)
20012bd8:	c82a                	sw	a0,16(sp)
20012bda:	00c10da3          	sb	a2,27(sp)
20012bde:	d02a                	sw	a0,32(sp)
20012be0:	d22e                	sw	a1,36(sp)
20012be2:	d42a                	sw	a0,40(sp)
20012be4:	d62a                	sw	a0,44(sp)
20012be6:	01b14503          	lbu	a0,27(sp)
20012bea:	ca2a                	sw	a0,20(sp)
20012bec:	4552                	lw	a0,20(sp)
20012bee:	050a                	sll	a0,a0,0x2
20012bf0:	200185b7          	lui	a1,0x20018
20012bf4:	e4858593          	add	a1,a1,-440 # 20017e48 <.LJTI17_0>
20012bf8:	952e                	add	a0,a0,a1
20012bfa:	4108                	lw	a0,0(a0)
20012bfc:	8502                	jr	a0
	...

20012c00 <.LBB17_3>:
20012c00:	4542                	lw	a0,16(sp)
20012c02:	45b2                	lw	a1,12(sp)
20012c04:	40b5252f          	amoor.w	a0,a1,(a0)
20012c08:	ce2a                	sw	a0,28(sp)
20012c0a:	a80d                	j	20012c3c <.LBB17_7+0xc>

20012c0c <.LBB17_4>:
20012c0c:	4542                	lw	a0,16(sp)
20012c0e:	45b2                	lw	a1,12(sp)
20012c10:	42b5252f          	amoor.w.rl	a0,a1,(a0)
20012c14:	ce2a                	sw	a0,28(sp)
20012c16:	a01d                	j	20012c3c <.LBB17_7+0xc>

20012c18 <.LBB17_5>:
20012c18:	4542                	lw	a0,16(sp)
20012c1a:	45b2                	lw	a1,12(sp)
20012c1c:	44b5252f          	amoor.w.aq	a0,a1,(a0)
20012c20:	ce2a                	sw	a0,28(sp)
20012c22:	a829                	j	20012c3c <.LBB17_7+0xc>

20012c24 <.LBB17_6>:
20012c24:	4542                	lw	a0,16(sp)
20012c26:	45b2                	lw	a1,12(sp)
20012c28:	46b5252f          	amoor.w.aqrl	a0,a1,(a0)
20012c2c:	ce2a                	sw	a0,28(sp)
20012c2e:	a039                	j	20012c3c <.LBB17_7+0xc>

20012c30 <.LBB17_7>:
20012c30:	4542                	lw	a0,16(sp)
20012c32:	45b2                	lw	a1,12(sp)
20012c34:	46b5252f          	amoor.w.aqrl	a0,a1,(a0)
20012c38:	ce2a                	sw	a0,28(sp)
20012c3a:	a009                	j	20012c3c <.LBB17_7+0xc>
20012c3c:	4572                	lw	a0,28(sp)
20012c3e:	6145                	add	sp,sp,48
20012c40:	8082                	ret

20012c42 <core::sync::atomic::AtomicU32::fetch_and>:
20012c42:	7179                	add	sp,sp,-48
20012c44:	c62e                	sw	a1,12(sp)
20012c46:	c82a                	sw	a0,16(sp)
20012c48:	00c10da3          	sb	a2,27(sp)
20012c4c:	d02a                	sw	a0,32(sp)
20012c4e:	d22e                	sw	a1,36(sp)
20012c50:	d42a                	sw	a0,40(sp)
20012c52:	d62a                	sw	a0,44(sp)
20012c54:	01b14503          	lbu	a0,27(sp)
20012c58:	ca2a                	sw	a0,20(sp)
20012c5a:	4552                	lw	a0,20(sp)
20012c5c:	050a                	sll	a0,a0,0x2
20012c5e:	200185b7          	lui	a1,0x20018
20012c62:	e5c58593          	add	a1,a1,-420 # 20017e5c <.LJTI18_0>
20012c66:	952e                	add	a0,a0,a1
20012c68:	4108                	lw	a0,0(a0)
20012c6a:	8502                	jr	a0
	...

20012c6e <.LBB18_3>:
20012c6e:	4542                	lw	a0,16(sp)
20012c70:	45b2                	lw	a1,12(sp)
20012c72:	60b5252f          	amoand.w	a0,a1,(a0)
20012c76:	ce2a                	sw	a0,28(sp)
20012c78:	a80d                	j	20012caa <.LBB18_7+0xc>

20012c7a <.LBB18_4>:
20012c7a:	4542                	lw	a0,16(sp)
20012c7c:	45b2                	lw	a1,12(sp)
20012c7e:	62b5252f          	amoand.w.rl	a0,a1,(a0)
20012c82:	ce2a                	sw	a0,28(sp)
20012c84:	a01d                	j	20012caa <.LBB18_7+0xc>

20012c86 <.LBB18_5>:
20012c86:	4542                	lw	a0,16(sp)
20012c88:	45b2                	lw	a1,12(sp)
20012c8a:	64b5252f          	amoand.w.aq	a0,a1,(a0)
20012c8e:	ce2a                	sw	a0,28(sp)
20012c90:	a829                	j	20012caa <.LBB18_7+0xc>

20012c92 <.LBB18_6>:
20012c92:	4542                	lw	a0,16(sp)
20012c94:	45b2                	lw	a1,12(sp)
20012c96:	66b5252f          	amoand.w.aqrl	a0,a1,(a0)
20012c9a:	ce2a                	sw	a0,28(sp)
20012c9c:	a039                	j	20012caa <.LBB18_7+0xc>

20012c9e <.LBB18_7>:
20012c9e:	4542                	lw	a0,16(sp)
20012ca0:	45b2                	lw	a1,12(sp)
20012ca2:	66b5252f          	amoand.w.aqrl	a0,a1,(a0)
20012ca6:	ce2a                	sw	a0,28(sp)
20012ca8:	a009                	j	20012caa <.LBB18_7+0xc>
20012caa:	4572                	lw	a0,28(sp)
20012cac:	6145                	add	sp,sp,48
20012cae:	8082                	ret

20012cb0 <core::sync::atomic::AtomicU32::fetch_xor>:
20012cb0:	7179                	add	sp,sp,-48
20012cb2:	c62e                	sw	a1,12(sp)
20012cb4:	c82a                	sw	a0,16(sp)
20012cb6:	00c10da3          	sb	a2,27(sp)
20012cba:	d02a                	sw	a0,32(sp)
20012cbc:	d22e                	sw	a1,36(sp)
20012cbe:	d42a                	sw	a0,40(sp)
20012cc0:	d62a                	sw	a0,44(sp)
20012cc2:	01b14503          	lbu	a0,27(sp)
20012cc6:	ca2a                	sw	a0,20(sp)
20012cc8:	4552                	lw	a0,20(sp)
20012cca:	050a                	sll	a0,a0,0x2
20012ccc:	200185b7          	lui	a1,0x20018
20012cd0:	e7058593          	add	a1,a1,-400 # 20017e70 <.LJTI19_0>
20012cd4:	952e                	add	a0,a0,a1
20012cd6:	4108                	lw	a0,0(a0)
20012cd8:	8502                	jr	a0
	...

20012cdc <.LBB19_3>:
20012cdc:	4542                	lw	a0,16(sp)
20012cde:	45b2                	lw	a1,12(sp)
20012ce0:	20b5252f          	amoxor.w	a0,a1,(a0)
20012ce4:	ce2a                	sw	a0,28(sp)
20012ce6:	a80d                	j	20012d18 <.LBB19_7+0xc>

20012ce8 <.LBB19_4>:
20012ce8:	4542                	lw	a0,16(sp)
20012cea:	45b2                	lw	a1,12(sp)
20012cec:	22b5252f          	amoxor.w.rl	a0,a1,(a0)
20012cf0:	ce2a                	sw	a0,28(sp)
20012cf2:	a01d                	j	20012d18 <.LBB19_7+0xc>

20012cf4 <.LBB19_5>:
20012cf4:	4542                	lw	a0,16(sp)
20012cf6:	45b2                	lw	a1,12(sp)
20012cf8:	24b5252f          	amoxor.w.aq	a0,a1,(a0)
20012cfc:	ce2a                	sw	a0,28(sp)
20012cfe:	a829                	j	20012d18 <.LBB19_7+0xc>

20012d00 <.LBB19_6>:
20012d00:	4542                	lw	a0,16(sp)
20012d02:	45b2                	lw	a1,12(sp)
20012d04:	26b5252f          	amoxor.w.aqrl	a0,a1,(a0)
20012d08:	ce2a                	sw	a0,28(sp)
20012d0a:	a039                	j	20012d18 <.LBB19_7+0xc>

20012d0c <.LBB19_7>:
20012d0c:	4542                	lw	a0,16(sp)
20012d0e:	45b2                	lw	a1,12(sp)
20012d10:	26b5252f          	amoxor.w.aqrl	a0,a1,(a0)
20012d14:	ce2a                	sw	a0,28(sp)
20012d16:	a009                	j	20012d18 <.LBB19_7+0xc>
20012d18:	4572                	lw	a0,28(sp)
20012d1a:	6145                	add	sp,sp,48
20012d1c:	8082                	ret

20012d1e <core::slice::iter::<impl core::iter::traits::collect::IntoIterator for &[T]>::into_iter>:
20012d1e:	7179                	add	sp,sp,-48
20012d20:	c02e                	sw	a1,0(sp)
20012d22:	c22a                	sw	a0,4(sp)
20012d24:	cc2a                	sw	a0,24(sp)
20012d26:	ce2e                	sw	a1,28(sp)
20012d28:	d02a                	sw	a0,32(sp)
20012d2a:	4501                	li	a0,0
20012d2c:	e901                	bnez	a0,20012d3c <core::slice::iter::<impl core::iter::traits::collect::IntoIterator for &[T]>::into_iter+0x1e>
20012d2e:	a009                	j	20012d30 <core::slice::iter::<impl core::iter::traits::collect::IntoIterator for &[T]>::into_iter+0x12>
20012d30:	4512                	lw	a0,4(sp)
20012d32:	4582                	lw	a1,0(sp)
20012d34:	d22e                	sw	a1,36(sp)
20012d36:	952e                	add	a0,a0,a1
20012d38:	c82a                	sw	a0,16(sp)
20012d3a:	a029                	j	20012d44 <core::slice::iter::<impl core::iter::traits::collect::IntoIterator for &[T]>::into_iter+0x26>
20012d3c:	4502                	lw	a0,0(sp)
20012d3e:	d42a                	sw	a0,40(sp)
20012d40:	c82a                	sw	a0,16(sp)
20012d42:	a009                	j	20012d44 <core::slice::iter::<impl core::iter::traits::collect::IntoIterator for &[T]>::into_iter+0x26>
20012d44:	4512                	lw	a0,4(sp)
20012d46:	d62a                	sw	a0,44(sp)
20012d48:	ca2a                	sw	a0,20(sp)
20012d4a:	4542                	lw	a0,16(sp)
20012d4c:	45d2                	lw	a1,20(sp)
20012d4e:	c42e                	sw	a1,8(sp)
20012d50:	c62a                	sw	a0,12(sp)
20012d52:	4522                	lw	a0,8(sp)
20012d54:	45b2                	lw	a1,12(sp)
20012d56:	6145                	add	sp,sp,48
20012d58:	8082                	ret

20012d5a <core::option::Option<T>::as_mut>:
20012d5a:	1141                	add	sp,sp,-16
20012d5c:	c02a                	sw	a0,0(sp)
20012d5e:	c42a                	sw	a0,8(sp)
20012d60:	00054503          	lbu	a0,0(a0)
20012d64:	8905                	and	a0,a0,1
20012d66:	e509                	bnez	a0,20012d70 <core::option::Option<T>::as_mut+0x16>
20012d68:	a009                	j	20012d6a <core::option::Option<T>::as_mut+0x10>
20012d6a:	4501                	li	a0,0
20012d6c:	c22a                	sw	a0,4(sp)
20012d6e:	a031                	j	20012d7a <core::option::Option<T>::as_mut+0x20>
20012d70:	4502                	lw	a0,0(sp)
20012d72:	0505                	add	a0,a0,1
20012d74:	c62a                	sw	a0,12(sp)
20012d76:	c22a                	sw	a0,4(sp)
20012d78:	a009                	j	20012d7a <core::option::Option<T>::as_mut+0x20>
20012d7a:	4512                	lw	a0,4(sp)
20012d7c:	0141                	add	sp,sp,16
20012d7e:	8082                	ret

20012d80 <core::result::Result<T,E>::is_err>:
20012d80:	1141                	add	sp,sp,-16
20012d82:	c62a                	sw	a0,12(sp)
20012d84:	4501                	li	a0,0
20012d86:	0141                	add	sp,sp,16
20012d88:	8082                	ret

20012d8a <core::result::Result<T,E>::unwrap>:
20012d8a:	1141                	add	sp,sp,-16
20012d8c:	c42a                	sw	a0,8(sp)
20012d8e:	4501                	li	a0,0
20012d90:	e501                	bnez	a0,20012d98 <core::result::Result<T,E>::unwrap+0xe>
20012d92:	a009                	j	20012d94 <core::result::Result<T,E>::unwrap+0xa>
20012d94:	0141                	add	sp,sp,16
20012d96:	8082                	ret
20012d98:	4722                	lw	a4,8(sp)
20012d9a:	20018537          	lui	a0,0x20018
20012d9e:	00850513          	add	a0,a0,8 # 20018008 <.L__unnamed_10>
20012da2:	200185b7          	lui	a1,0x20018
20012da6:	03458693          	add	a3,a1,52 # 20018034 <.L__unnamed_1>
20012daa:	02b00593          	li	a1,43
20012dae:	00e10613          	add	a2,sp,14
20012db2:	00002097          	auipc	ra,0x2
20012db6:	746080e7          	jalr	1862(ra) # 200154f8 <core::result::unwrap_failed>
	...

20012dbc <<T as core::convert::Into<U>>::into>:
20012dbc:	1141                	add	sp,sp,-16
20012dbe:	c42a                	sw	a0,8(sp)
20012dc0:	c62a                	sw	a0,12(sp)
20012dc2:	0141                	add	sp,sp,16
20012dc4:	8082                	ret

20012dc6 <riscv::register::mstatus::_set>:
        unsafe fn _set(bits: usize) {
20012dc6:	1141                	add	sp,sp,-16
20012dc8:	c62a                	sw	a0,12(sp)
                () => core::arch::asm!(concat!("csrrs x0, ", stringify!($csr_number), ", {0}"), in(reg) bits),
20012dca:	30052073          	csrs	mstatus,a0
        }
20012dce:	0141                	add	sp,sp,16
20012dd0:	8082                	ret

20012dd2 <riscv::register::mstatus::read>:
        pub fn read() -> $register {
20012dd2:	1141                	add	sp,sp,-16
                bits: unsafe { _read() },
20012dd4:	c606                	sw	ra,12(sp)
20012dd6:	00000097          	auipc	ra,0x0
20012dda:	012080e7          	jalr	18(ra) # 20012de8 <riscv::register::mstatus::_read>
            $register {
20012dde:	c42a                	sw	a0,8(sp)
        }
20012de0:	4522                	lw	a0,8(sp)
20012de2:	40b2                	lw	ra,12(sp)
20012de4:	0141                	add	sp,sp,16
20012de6:	8082                	ret

20012de8 <riscv::register::mstatus::_read>:
        unsafe fn _read() -> usize {
20012de8:	1141                	add	sp,sp,-16
                    core::arch::asm!(concat!("csrrs {0}, ", stringify!($csr_number), ", x0"), out(reg) r);
20012dea:	30002573          	csrr	a0,mstatus
20012dee:	c62a                	sw	a0,12(sp)
                    r
20012df0:	4532                	lw	a0,12(sp)
        }
20012df2:	0141                	add	sp,sp,16
20012df4:	8082                	ret

20012df6 <riscv::register::mstatus::_clear>:
        unsafe fn _clear(bits: usize) {
20012df6:	1141                	add	sp,sp,-16
20012df8:	c62a                	sw	a0,12(sp)
                () => core::arch::asm!(concat!("csrrc x0, ", stringify!($csr_number), ", {0}"), in(reg) bits),
20012dfa:	30053073          	csrc	mstatus,a0
        }
20012dfe:	0141                	add	sp,sp,16
20012e00:	8082                	ret

20012e02 <riscv::register::mstatus::Mstatus::mie>:
    pub fn mie(&self) -> bool {
20012e02:	1141                	add	sp,sp,-16
20012e04:	c606                	sw	ra,12(sp)
20012e06:	c42a                	sw	a0,8(sp)
        self.bits.get_bit(3)
20012e08:	200185b7          	lui	a1,0x20018
20012e0c:	0ac58613          	add	a2,a1,172 # 200180ac <.L__unnamed_11>
20012e10:	458d                	li	a1,3
20012e12:	00000097          	auipc	ra,0x0
20012e16:	a74080e7          	jalr	-1420(ra) # 20012886 <<usize as bit_field::BitField>::get_bit>
    }
20012e1a:	40b2                	lw	ra,12(sp)
20012e1c:	0141                	add	sp,sp,16
20012e1e:	8082                	ret

20012e20 <riscv::register::mstatus::set_mie>:
        pub unsafe fn $set_field() {
20012e20:	1141                	add	sp,sp,-16
20012e22:	c606                	sw	ra,12(sp)
20012e24:	4521                	li	a0,8
            _set($e);
20012e26:	00000097          	auipc	ra,0x0
20012e2a:	fa0080e7          	jalr	-96(ra) # 20012dc6 <riscv::register::mstatus::_set>
        }
20012e2e:	40b2                	lw	ra,12(sp)
20012e30:	0141                	add	sp,sp,16
20012e32:	8082                	ret

20012e34 <riscv::register::mstatus::clear_mie>:
        pub unsafe fn $clear_field() {
20012e34:	1141                	add	sp,sp,-16
20012e36:	c606                	sw	ra,12(sp)
20012e38:	4521                	li	a0,8
            _clear($e);
20012e3a:	00000097          	auipc	ra,0x0
20012e3e:	fbc080e7          	jalr	-68(ra) # 20012df6 <riscv::register::mstatus::_clear>
        }
20012e42:	40b2                	lw	ra,12(sp)
20012e44:	0141                	add	sp,sp,16
20012e46:	8082                	ret

20012e48 <riscv::interrupt::free>:
pub fn free<F, R>(f: F) -> R
20012e48:	1101                	add	sp,sp,-32
20012e4a:	ce06                	sw	ra,28(sp)
20012e4c:	c62a                	sw	a0,12(sp)
20012e4e:	cc2a                	sw	a0,24(sp)
    let mstatus = mstatus::read();
20012e50:	00000097          	auipc	ra,0x0
20012e54:	f82080e7          	jalr	-126(ra) # 20012dd2 <riscv::register::mstatus::read>
20012e58:	c82a                	sw	a0,16(sp)
        disable();
20012e5a:	00000097          	auipc	ra,0x0
20012e5e:	084080e7          	jalr	132(ra) # 20012ede <riscv::interrupt::disable>
20012e62:	4532                	lw	a0,12(sp)
    let r = f();
20012e64:	00000097          	auipc	ra,0x0
20012e68:	5ca080e7          	jalr	1482(ra) # 2001342e <hifive1::stdout::write_str::{{closure}}>
20012e6c:	0808                	add	a0,sp,16
    if mstatus.mie() {
20012e6e:	00000097          	auipc	ra,0x0
20012e72:	f94080e7          	jalr	-108(ra) # 20012e02 <riscv::register::mstatus::Mstatus::mie>
20012e76:	e509                	bnez	a0,20012e80 <riscv::interrupt::free+0x38>
20012e78:	a009                	j	20012e7a <riscv::interrupt::free+0x32>
}
20012e7a:	40f2                	lw	ra,28(sp)
20012e7c:	6105                	add	sp,sp,32
20012e7e:	8082                	ret
            enable();
20012e80:	00000097          	auipc	ra,0x0
20012e84:	04c080e7          	jalr	76(ra) # 20012ecc <riscv::interrupt::enable>
20012e88:	bfcd                	j	20012e7a <riscv::interrupt::free+0x32>

20012e8a <riscv::interrupt::free>:
pub fn free<F, R>(f: F) -> R
20012e8a:	1101                	add	sp,sp,-32
20012e8c:	ce06                	sw	ra,28(sp)
20012e8e:	c62a                	sw	a0,12(sp)
20012e90:	cc2a                	sw	a0,24(sp)
    let mstatus = mstatus::read();
20012e92:	00000097          	auipc	ra,0x0
20012e96:	f40080e7          	jalr	-192(ra) # 20012dd2 <riscv::register::mstatus::read>
20012e9a:	c82a                	sw	a0,16(sp)
        disable();
20012e9c:	00000097          	auipc	ra,0x0
20012ea0:	042080e7          	jalr	66(ra) # 20012ede <riscv::interrupt::disable>
20012ea4:	4532                	lw	a0,12(sp)
    let r = f();
20012ea6:	00000097          	auipc	ra,0x0
20012eaa:	5d6080e7          	jalr	1494(ra) # 2001347c <hifive1::stdout::write_fmt::{{closure}}>
20012eae:	0808                	add	a0,sp,16
    if mstatus.mie() {
20012eb0:	00000097          	auipc	ra,0x0
20012eb4:	f52080e7          	jalr	-174(ra) # 20012e02 <riscv::register::mstatus::Mstatus::mie>
20012eb8:	e509                	bnez	a0,20012ec2 <riscv::interrupt::free+0x38>
20012eba:	a009                	j	20012ebc <riscv::interrupt::free+0x32>
}
20012ebc:	40f2                	lw	ra,28(sp)
20012ebe:	6105                	add	sp,sp,32
20012ec0:	8082                	ret
            enable();
20012ec2:	00000097          	auipc	ra,0x0
20012ec6:	00a080e7          	jalr	10(ra) # 20012ecc <riscv::interrupt::enable>
20012eca:	bfcd                	j	20012ebc <riscv::interrupt::free+0x32>

20012ecc <riscv::interrupt::enable>:
pub unsafe fn enable() {
20012ecc:	1141                	add	sp,sp,-16
        () => mstatus::set_mie(),
20012ece:	c606                	sw	ra,12(sp)
20012ed0:	00000097          	auipc	ra,0x0
20012ed4:	f50080e7          	jalr	-176(ra) # 20012e20 <riscv::register::mstatus::set_mie>
}
20012ed8:	40b2                	lw	ra,12(sp)
20012eda:	0141                	add	sp,sp,16
20012edc:	8082                	ret

20012ede <riscv::interrupt::disable>:
pub unsafe fn disable() {
20012ede:	1141                	add	sp,sp,-16
        () => mstatus::clear_mie(),
20012ee0:	c606                	sw	ra,12(sp)
20012ee2:	00000097          	auipc	ra,0x0
20012ee6:	f52080e7          	jalr	-174(ra) # 20012e34 <riscv::register::mstatus::clear_mie>
}
20012eea:	40b2                	lw	ra,12(sp)
20012eec:	0141                	add	sp,sp,16
20012eee:	8082                	ret

20012ef0 <<core::convert::Infallible as core::fmt::Debug>::fmt>:
20012ef0:	1141                	add	sp,sp,-16
20012ef2:	c42a                	sw	a0,8(sp)
20012ef4:	c62e                	sw	a1,12(sp)
	...

20012ef8 <<&mut W as core::fmt::Write::write_fmt::SpecWriteFmt>::spec_write_fmt>:
20012ef8:	1141                	add	sp,sp,-16
20012efa:	c606                	sw	ra,12(sp)
20012efc:	862e                	mv	a2,a1
20012efe:	c42a                	sw	a0,8(sp)
20012f00:	200185b7          	lui	a1,0x20018
20012f04:	0bc58593          	add	a1,a1,188 # 200180bc <.L__unnamed_2>
20012f08:	00003097          	auipc	ra,0x3
20012f0c:	b02080e7          	jalr	-1278(ra) # 20015a0a <core::fmt::write>
20012f10:	40b2                	lw	ra,12(sp)
20012f12:	0141                	add	sp,sp,16
20012f14:	8082                	ret

20012f16 <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next>:
20012f16:	7159                	add	sp,sp,-112
20012f18:	c02a                	sw	a0,0(sp)
20012f1a:	4585                	li	a1,1
20012f1c:	c22e                	sw	a1,4(sp)
20012f1e:	c42e                	sw	a1,8(sp)
20012f20:	c62e                	sw	a1,12(sp)
20012f22:	c82e                	sw	a1,16(sp)
20012f24:	d42a                	sw	a0,40(sp)
20012f26:	4501                	li	a0,0
20012f28:	e50d                	bnez	a0,20012f52 <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next+0x3c>
20012f2a:	a009                	j	20012f2c <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next+0x16>
20012f2c:	4502                	lw	a0,0(sp)
20012f2e:	00450593          	add	a1,a0,4
20012f32:	d62e                	sw	a1,44(sp)
20012f34:	414c                	lw	a1,4(a0)
20012f36:	ce2e                	sw	a1,28(sp)
20012f38:	d82a                	sw	a0,48(sp)
20012f3a:	086c                	add	a1,sp,28
20012f3c:	da2e                	sw	a1,52(sp)
20012f3e:	4108                	lw	a0,0(a0)
20012f40:	dc2a                	sw	a0,56(sp)
20012f42:	45f2                	lw	a1,28(sp)
20012f44:	de2e                	sw	a1,60(sp)
20012f46:	8d2d                	xor	a0,a0,a1
20012f48:	00153513          	seqz	a0,a0
20012f4c:	00a10da3          	sb	a0,27(sp)
20012f50:	a811                	j	20012f64 <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next+0x4e>
20012f52:	4502                	lw	a0,0(sp)
20012f54:	4148                	lw	a0,4(a0)
20012f56:	c0aa                	sw	a0,64(sp)
20012f58:	c2aa                	sw	a0,68(sp)
20012f5a:	00153513          	seqz	a0,a0
20012f5e:	00a10da3          	sb	a0,27(sp)
20012f62:	a009                	j	20012f64 <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next+0x4e>
20012f64:	01b14503          	lbu	a0,27(sp)
20012f68:	8905                	and	a0,a0,1
20012f6a:	e901                	bnez	a0,20012f7a <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next+0x64>
20012f6c:	a009                	j	20012f6e <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next+0x58>
20012f6e:	4502                	lw	a0,0(sp)
20012f70:	4108                	lw	a0,0(a0)
20012f72:	d02a                	sw	a0,32(sp)
20012f74:	4501                	li	a0,0
20012f76:	e115                	bnez	a0,20012f9a <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next+0x84>
20012f78:	a021                	j	20012f80 <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next+0x6a>
20012f7a:	4501                	li	a0,0
20012f7c:	ca2a                	sw	a0,20(sp)
20012f7e:	a83d                	j	20012fbc <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next+0xa6>
20012f80:	4582                	lw	a1,0(sp)
20012f82:	00458513          	add	a0,a1,4
20012f86:	c4aa                	sw	a0,72(sp)
20012f88:	c6aa                	sw	a0,76(sp)
20012f8a:	4188                	lw	a0,0(a1)
20012f8c:	c8aa                	sw	a0,80(sp)
20012f8e:	caaa                	sw	a0,84(sp)
20012f90:	0505                	add	a0,a0,1
20012f92:	d22a                	sw	a0,36(sp)
20012f94:	5512                	lw	a0,36(sp)
20012f96:	c188                	sw	a0,0(a1)
20012f98:	a819                	j	20012fae <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next+0x98>
20012f9a:	4582                	lw	a1,0(sp)
20012f9c:	00458513          	add	a0,a1,4
20012fa0:	ccaa                	sw	a0,88(sp)
20012fa2:	ceaa                	sw	a0,92(sp)
20012fa4:	41c8                	lw	a0,4(a1)
20012fa6:	d0aa                	sw	a0,96(sp)
20012fa8:	157d                	add	a0,a0,-1
20012faa:	c1c8                	sw	a0,4(a1)
20012fac:	a009                	j	20012fae <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next+0x98>
20012fae:	1008                	add	a0,sp,32
20012fb0:	d2aa                	sw	a0,100(sp)
20012fb2:	5502                	lw	a0,32(sp)
20012fb4:	d4aa                	sw	a0,104(sp)
20012fb6:	d6aa                	sw	a0,108(sp)
20012fb8:	ca2a                	sw	a0,20(sp)
20012fba:	a009                	j	20012fbc <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next+0xa6>
20012fbc:	4552                	lw	a0,20(sp)
20012fbe:	6165                	add	sp,sp,112
20012fc0:	8082                	ret

20012fc2 <<e310x_hal::serial::Tx<UART> as embedded_hal::serial::Write<u8>>::write>:
}

impl<UART: UartX> serial::Write<u8> for Tx<UART> {
    type Error = Infallible;

    fn write(&mut self, byte: u8) -> nb::Result<(), Infallible> {
20012fc2:	7119                	add	sp,sp,-128
20012fc4:	de86                	sw	ra,124(sp)
20012fc6:	c42a                	sw	a0,8(sp)
20012fc8:	00b10723          	sb	a1,14(sp)
20012fcc:	ce2a                	sw	a0,28(sp)
20012fce:	d22a                	sw	a0,36(sp)
20012fd0:	10013537          	lui	a0,0x10013
20012fd4:	d82a                	sw	a0,48(sp)
20012fd6:	d2aa                	sw	a0,100(sp)
20012fd8:	d4aa                	sw	a0,104(sp)
        unsafe { ptr::read_volatile(self.value.get()) }
20012fda:	00000097          	auipc	ra,0x0
20012fde:	67e080e7          	jalr	1662(ra) # 20013658 <core::ptr::read_volatile>
        REG::Reader::from(R {
20012fe2:	d62a                	sw	a0,44(sp)
20012fe4:	5532                	lw	a0,44(sp)
20012fe6:	dc2a                	sw	a0,56(sp)
    }
}
impl From<crate::R<TXDATA_SPEC>> for R {
    #[inline(always)]
    fn from(reader: crate::R<TXDATA_SPEC>) -> Self {
        R(reader)
20012fe8:	da2a                	sw	a0,52(sp)
    }
20012fea:	5552                	lw	a0,52(sp)
        let txdata = self.uart.txdata.read();
20012fec:	c82a                	sw	a0,16(sp)
20012fee:	0808                	add	a0,sp,16
20012ff0:	d42a                	sw	a0,40(sp)
20012ff2:	dcaa                	sw	a0,120(sp)
        DATA_R::new((self.bits & 0xff) as u8)
    }
    #[doc = "Bit 31"]
    #[inline(always)]
    pub fn full(&self) -> FULL_R {
        FULL_R::new(((self.bits >> 31) & 1) != 0)
20012ff4:	4542                	lw	a0,16(sp)
20012ff6:	817d                	srl	a0,a0,0x1f
20012ff8:	06a101a3          	sb	a0,99(sp)
        Self {
20012ffc:	06a10123          	sb	a0,98(sp)
    }
20013000:	06214503          	lbu	a0,98(sp)

        if txdata.full().bit_is_set() {
20013004:	00a10ba3          	sb	a0,23(sp)
20013008:	01710513          	add	a0,sp,23
2001300c:	ccaa                	sw	a0,88(sp)
2001300e:	ceaa                	sw	a0,92(sp)
        self.bits
20013010:	01714503          	lbu	a0,23(sp)
20013014:	8905                	and	a0,a0,1
20013016:	e931                	bnez	a0,2001306a <<e310x_hal::serial::Tx<UART> as embedded_hal::serial::Write<u8>>::write+0xa8>
20013018:	a009                	j	2001301a <<e310x_hal::serial::Tx<UART> as embedded_hal::serial::Write<u8>>::write+0x58>
2001301a:	4522                	lw	a0,8(sp)
2001301c:	d02a                	sw	a0,32(sp)
2001301e:	00e10513          	add	a0,sp,14
            Err(::nb::Error::WouldBlock)
        } else {
            unsafe {
                self.uart.txdata.write(|w| w.data().bits(byte));
20013022:	cc2a                	sw	a0,24(sp)
20013024:	4562                	lw	a0,24(sp)
20013026:	100135b7          	lui	a1,0x10013
2001302a:	c02e                	sw	a1,0(sp)
2001302c:	c4ae                	sw	a1,72(sp)
2001302e:	c6aa                	sw	a0,76(sp)
20013030:	4581                	li	a1,0
            f(&mut REG::Writer::from(W {
20013032:	c22e                	sw	a1,4(sp)
20013034:	c2ae                	sw	a1,68(sp)
20013036:	4596                	lw	a1,68(sp)
20013038:	caae                	sw	a1,84(sp)
        W(writer)
2001303a:	c8ae                	sw	a1,80(sp)
    }
2001303c:	45c6                	lw	a1,80(sp)
2001303e:	c0ae                	sw	a1,64(sp)
20013040:	008c                	add	a1,sp,64
20013042:	de2e                	sw	a1,60(sp)
20013044:	55f2                	lw	a1,60(sp)
20013046:	00000097          	auipc	ra,0x0
2001304a:	036080e7          	jalr	54(ra) # 2001307c <<e310x_hal::serial::Tx<UART> as embedded_hal::serial::Write<u8>>::write::{{closure}}>
2001304e:	85aa                	mv	a1,a0
20013050:	4502                	lw	a0,0(sp)
20013052:	418c                	lw	a1,0(a1)
20013054:	d6aa                	sw	a0,108(sp)
20013056:	d8ae                	sw	a1,112(sp)
20013058:	daaa                	sw	a0,116(sp)
        unsafe { ptr::write_volatile(self.value.get(), value) }
2001305a:	00000097          	auipc	ra,0x0
2001305e:	60c080e7          	jalr	1548(ra) # 20013666 <core::ptr::write_volatile>
20013062:	4512                	lw	a0,4(sp)
            }
            Ok(())
20013064:	00a107a3          	sb	a0,15(sp)
        if txdata.full().bit_is_set() {
20013068:	a029                	j	20013072 <<e310x_hal::serial::Tx<UART> as embedded_hal::serial::Write<u8>>::write+0xb0>
2001306a:	4505                	li	a0,1
            Err(::nb::Error::WouldBlock)
2001306c:	00a107a3          	sb	a0,15(sp)
        if txdata.full().bit_is_set() {
20013070:	a009                	j	20013072 <<e310x_hal::serial::Tx<UART> as embedded_hal::serial::Write<u8>>::write+0xb0>
        }
    }
20013072:	00f14503          	lbu	a0,15(sp)
20013076:	50f6                	lw	ra,124(sp)
20013078:	6109                	add	sp,sp,128
2001307a:	8082                	ret

2001307c <<e310x_hal::serial::Tx<UART> as embedded_hal::serial::Write<u8>>::write::{{closure}}>:
                self.uart.txdata.write(|w| w.data().bits(byte));
2001307c:	7179                	add	sp,sp,-48
2001307e:	d606                	sw	ra,44(sp)
20013080:	c22a                	sw	a0,4(sp)
20013082:	c42e                	sw	a1,8(sp)
20013084:	c62e                	sw	a1,12(sp)
20013086:	ca2e                	sw	a1,20(sp)
        Self {
20013088:	c82e                	sw	a1,16(sp)
    }
2001308a:	45c2                	lw	a1,16(sp)
2001308c:	4512                	lw	a0,4(sp)
2001308e:	00054503          	lbu	a0,0(a0) # 10013000 <.Lline_table_start1+0xffe3b8a>
20013092:	cc2e                	sw	a1,24(sp)
20013094:	00a10fa3          	sb	a0,31(sp)
                self.w.bits = (self.w.bits & !(Self::MASK << { OF }))
20013098:	45e2                	lw	a1,24(sp)
2001309a:	d02e                	sw	a1,32(sp)
2001309c:	418c                	lw	a1,0(a1)
2001309e:	f005f593          	and	a1,a1,-256
                    | ((value.into() & Self::MASK) << { OF });
200130a2:	c02e                	sw	a1,0(sp)
200130a4:	00000097          	auipc	ra,0x0
200130a8:	604080e7          	jalr	1540(ra) # 200136a8 <<T as core::convert::Into<U>>::into>
200130ac:	85aa                	mv	a1,a0
200130ae:	4502                	lw	a0,0(sp)
200130b0:	0ff5f613          	zext.b	a2,a1
                self.w.bits = (self.w.bits & !(Self::MASK << { OF }))
200130b4:	45e2                	lw	a1,24(sp)
200130b6:	d22e                	sw	a1,36(sp)
200130b8:	8d51                	or	a0,a0,a2
200130ba:	c188                	sw	a0,0(a1)
                self.w
200130bc:	4562                	lw	a0,24(sp)
200130be:	d42a                	sw	a0,40(sp)
200130c0:	50b2                	lw	ra,44(sp)
200130c2:	6145                	add	sp,sp,48
200130c4:	8082                	ret

200130c6 <e310x_hal::gpio::PeripheralAccess::toggle_pin>:
    fn toggle_pin(index: usize) {
200130c6:	1101                	add	sp,sp,-32
200130c8:	ce06                	sw	ra,28(sp)
200130ca:	c62a                	sw	a0,12(sp)
200130cc:	100125b7          	lui	a1,0x10012
        let p = Self::peripheral();
200130d0:	c82e                	sw	a1,16(sp)
200130d2:	05b1                	add	a1,a1,12 # 1001200c <.Lline_table_start1+0xffe2b96>
        let r: &AtomicU32 = unsafe { core::mem::transmute(&p.output_val) };
200130d4:	c02e                	sw	a1,0(sp)
200130d6:	ca2e                	sw	a1,20(sp)
        let mask = 1 << (index & 31);
200130d8:	01f57593          	and	a1,a0,31
200130dc:	c22e                	sw	a1,4(sp)
200130de:	457d                	li	a0,31
200130e0:	02b56563          	bltu	a0,a1,2001310a <e310x_hal::gpio::PeripheralAccess::toggle_pin+0x44>
200130e4:	a009                	j	200130e6 <e310x_hal::gpio::PeripheralAccess::toggle_pin+0x20>
200130e6:	4502                	lw	a0,0(sp)
200130e8:	4612                	lw	a2,4(sp)
200130ea:	4585                	li	a1,1
200130ec:	00c595b3          	sll	a1,a1,a2
200130f0:	cc2e                	sw	a1,24(sp)
200130f2:	4611                	li	a2,4
        r.fetch_xor(mask, Ordering::SeqCst);
200130f4:	00c105a3          	sb	a2,11(sp)
200130f8:	00b14603          	lbu	a2,11(sp)
200130fc:	00000097          	auipc	ra,0x0
20013100:	bb4080e7          	jalr	-1100(ra) # 20012cb0 <core::sync::atomic::AtomicU32::fetch_xor>
    }
20013104:	40f2                	lw	ra,28(sp)
20013106:	6105                	add	sp,sp,32
20013108:	8082                	ret
        let mask = 1 << (index & 31);
2001310a:	20018537          	lui	a0,0x20018
2001310e:	eb050513          	add	a0,a0,-336 # 20017eb0 <str.0>
20013112:	200185b7          	lui	a1,0x20018
20013116:	14458613          	add	a2,a1,324 # 20018144 <.L__unnamed_12>
2001311a:	02300593          	li	a1,35
2001311e:	00002097          	auipc	ra,0x2
20013122:	36e080e7          	jalr	878(ra) # 2001548c <core::panicking::panic>
	...

20013128 <e310x_hal::gpio::PeripheralAccess::set_output_value>:
    fn set_output_value(index: usize, bit: bool) {
20013128:	7139                	add	sp,sp,-64
2001312a:	de06                	sw	ra,60(sp)
2001312c:	862e                	mv	a2,a1
2001312e:	c432                	sw	a2,8(sp)
20013130:	ca2a                	sw	a0,20(sp)
20013132:	00b10da3          	sb	a1,27(sp)
20013136:	10012637          	lui	a2,0x10012
        let p = Self::peripheral();
2001313a:	ce32                	sw	a2,28(sp)
2001313c:	0631                	add	a2,a2,12 # 1001200c <.Lline_table_start1+0xffe2b96>
        let r: &AtomicU32 = unsafe { core::mem::transmute(&p.output_val) };
2001313e:	c632                	sw	a2,12(sp)
20013140:	d032                	sw	a2,32(sp)
20013142:	d632                	sw	a2,44(sp)
20013144:	d82a                	sw	a0,48(sp)
20013146:	02b10ba3          	sb	a1,55(sp)
    let mask = 1 << (index & 31);
2001314a:	897d                	and	a0,a0,31
2001314c:	c82a                	sw	a0,16(sp)
2001314e:	4501                	li	a0,0
20013150:	ed01                	bnez	a0,20013168 <e310x_hal::gpio::PeripheralAccess::set_output_value+0x40>
20013152:	a009                	j	20013154 <e310x_hal::gpio::PeripheralAccess::set_output_value+0x2c>
20013154:	4522                	lw	a0,8(sp)
20013156:	4642                	lw	a2,16(sp)
20013158:	4585                	li	a1,1
2001315a:	00c595b3          	sll	a1,a1,a2
2001315e:	c22e                	sw	a1,4(sp)
20013160:	dc2e                	sw	a1,56(sp)
    match bit {
20013162:	8905                	and	a0,a0,1
20013164:	e121                	bnez	a0,200131a4 <e310x_hal::gpio::PeripheralAccess::set_output_value+0x7c>
20013166:	a005                	j	20013186 <e310x_hal::gpio::PeripheralAccess::set_output_value+0x5e>
    let mask = 1 << (index & 31);
20013168:	20018537          	lui	a0,0x20018
2001316c:	eb050513          	add	a0,a0,-336 # 20017eb0 <str.0>
20013170:	200185b7          	lui	a1,0x20018
20013174:	13458613          	add	a2,a1,308 # 20018134 <.L__unnamed_13>
20013178:	02300593          	li	a1,35
2001317c:	00002097          	auipc	ra,0x2
20013180:	310080e7          	jalr	784(ra) # 2001548c <core::panicking::panic>
20013184:	0000                	unimp
        false => r.fetch_and(!mask, Ordering::SeqCst),
20013186:	4532                	lw	a0,12(sp)
20013188:	4592                	lw	a1,4(sp)
2001318a:	fff5c593          	not	a1,a1
2001318e:	4611                	li	a2,4
20013190:	02c105a3          	sb	a2,43(sp)
20013194:	02b14603          	lbu	a2,43(sp)
20013198:	00000097          	auipc	ra,0x0
2001319c:	aaa080e7          	jalr	-1366(ra) # 20012c42 <core::sync::atomic::AtomicU32::fetch_and>
200131a0:	d22a                	sw	a0,36(sp)
200131a2:	a831                	j	200131be <e310x_hal::gpio::PeripheralAccess::set_output_value+0x96>
200131a4:	4592                	lw	a1,4(sp)
200131a6:	4532                	lw	a0,12(sp)
200131a8:	4611                	li	a2,4
        true => r.fetch_or(mask, Ordering::SeqCst),
200131aa:	02c10523          	sb	a2,42(sp)
200131ae:	02a14603          	lbu	a2,42(sp)
200131b2:	00000097          	auipc	ra,0x0
200131b6:	a22080e7          	jalr	-1502(ra) # 20012bd4 <core::sync::atomic::AtomicU32::fetch_or>
200131ba:	d22a                	sw	a0,36(sp)
200131bc:	a009                	j	200131be <e310x_hal::gpio::PeripheralAccess::set_output_value+0x96>
    }
200131be:	50f2                	lw	ra,60(sp)
200131c0:	6121                	add	sp,sp,64
200131c2:	8082                	ret

200131c4 <e310x_hal::clock::AonClk::use_external>:
    lfaltclk: Option<Hertz>,
}

impl AonClk {
    /// Uses `LFALTCLK` (external low-frequency clock) instead of `LFROSC` (internal ring oscillator) as the clock source.
    pub fn use_external<F: Into<Hertz>>(mut self, freq: F) -> Self {
200131c4:	7179                	add	sp,sp,-48
200131c6:	d606                	sw	ra,44(sp)
200131c8:	c632                	sw	a2,12(sp)
200131ca:	862a                	mv	a2,a0
200131cc:	4532                	lw	a0,12(sp)
200131ce:	ca32                	sw	a2,20(sp)
200131d0:	cc2e                	sw	a1,24(sp)
200131d2:	d22a                	sw	a0,36(sp)
        let hz: Hertz = freq.into();
200131d4:	00000097          	auipc	ra,0x0
200131d8:	be8080e7          	jalr	-1048(ra) # 20012dbc <<T as core::convert::Into<U>>::into>
200131dc:	85aa                	mv	a1,a0
200131de:	c82e                	sw	a1,16(sp)
200131e0:	d42a                	sw	a0,40(sp)
200131e2:	0007a5b7          	lui	a1,0x7a
200131e6:	12058593          	add	a1,a1,288 # 7a120 <.Lline_table_start1+0x4acaa>
        assert!(hz.0 < 500_000);
200131ea:	02b56263          	bltu	a0,a1,2001320e <e310x_hal::clock::AonClk::use_external+0x4a>
200131ee:	a009                	j	200131f0 <e310x_hal::clock::AonClk::use_external+0x2c>
200131f0:	20018537          	lui	a0,0x20018
200131f4:	17450513          	add	a0,a0,372 # 20018174 <.L__unnamed_12+0x30>
200131f8:	200185b7          	lui	a1,0x20018
200131fc:	1f458613          	add	a2,a1,500 # 200181f4 <.L__unnamed_15>
20013200:	02000593          	li	a1,32
20013204:	00002097          	auipc	ra,0x2
20013208:	288080e7          	jalr	648(ra) # 2001548c <core::panicking::panic>
2001320c:	0000                	unimp

        self.lfaltclk = Some(hz);
2001320e:	4542                	lw	a0,16(sp)
20013210:	d02a                	sw	a0,32(sp)
20013212:	4505                	li	a0,1
20013214:	ce2a                	sw	a0,28(sp)
20013216:	45f2                	lw	a1,28(sp)
20013218:	5502                	lw	a0,32(sp)
2001321a:	ca2e                	sw	a1,20(sp)
2001321c:	cc2a                	sw	a0,24(sp)
        self
2001321e:	4552                	lw	a0,20(sp)
20013220:	45e2                	lw	a1,24(sp)
    }
20013222:	50b2                	lw	ra,44(sp)
20013224:	6145                	add	sp,sp,48
20013226:	8082                	ret

20013228 <e310x_hal::clock::CoreClk::use_external>:
    pub fn use_external<F: Into<Hertz>>(mut self, freq: F) -> Self {
20013228:	7179                	add	sp,sp,-48
2001322a:	d606                	sw	ra,44(sp)
2001322c:	c832                	sw	a2,16(sp)
2001322e:	c62e                	sw	a1,12(sp)
20013230:	85aa                	mv	a1,a0
20013232:	4542                	lw	a0,16(sp)
20013234:	ca2e                	sw	a1,20(sp)
20013236:	d22a                	sw	a0,36(sp)
        let hz: Hertz = freq.into();
20013238:	00000097          	auipc	ra,0x0
2001323c:	b84080e7          	jalr	-1148(ra) # 20012dbc <<T as core::convert::Into<U>>::into>
20013240:	85aa                	mv	a1,a0
20013242:	cc2e                	sw	a1,24(sp)
20013244:	d42a                	sw	a0,40(sp)
20013246:	013135b7          	lui	a1,0x1313
2001324a:	d0058593          	add	a1,a1,-768 # 1312d00 <.Lline_table_start1+0x12e388a>
        assert!(hz.0 < 20_000_000);
2001324e:	02b56263          	bltu	a0,a1,20013272 <e310x_hal::clock::CoreClk::use_external+0x4a>
20013252:	a009                	j	20013254 <e310x_hal::clock::CoreClk::use_external+0x2c>
20013254:	20018537          	lui	a0,0x20018
20013258:	20450513          	add	a0,a0,516 # 20018204 <.L__unnamed_16>
2001325c:	200185b7          	lui	a1,0x20018
20013260:	22858613          	add	a2,a1,552 # 20018228 <.L__unnamed_17>
20013264:	02300593          	li	a1,35
20013268:	00002097          	auipc	ra,0x2
2001326c:	224080e7          	jalr	548(ra) # 2001548c <core::panicking::panic>
20013270:	0000                	unimp
        self.hfxosc = Some(hz);
20013272:	45d2                	lw	a1,20(sp)
20013274:	4532                	lw	a0,12(sp)
20013276:	4662                	lw	a2,24(sp)
20013278:	d032                	sw	a2,32(sp)
2001327a:	4605                	li	a2,1
2001327c:	ce32                	sw	a2,28(sp)
2001327e:	46f2                	lw	a3,28(sp)
20013280:	5602                	lw	a2,32(sp)
20013282:	c114                	sw	a3,0(a0)
20013284:	c150                	sw	a2,4(a0)
        self
20013286:	4510                	lw	a2,8(a0)
20013288:	c590                	sw	a2,8(a1)
2001328a:	4150                	lw	a2,4(a0)
2001328c:	c1d0                	sw	a2,4(a1)
2001328e:	4108                	lw	a0,0(a0)
20013290:	c188                	sw	a0,0(a1)
    }
20013292:	50b2                	lw	ra,44(sp)
20013294:	6145                	add	sp,sp,48
20013296:	8082                	ret

20013298 <e310x_hal::clock::CoreClk::coreclk>:
    pub fn coreclk<F: Into<Hertz>>(mut self, freq: F) -> Self {
20013298:	1101                	add	sp,sp,-32
2001329a:	ce06                	sw	ra,28(sp)
2001329c:	c632                	sw	a2,12(sp)
2001329e:	ca2e                	sw	a1,20(sp)
200132a0:	85aa                	mv	a1,a0
200132a2:	4532                	lw	a0,12(sp)
200132a4:	c82e                	sw	a1,16(sp)
200132a6:	cc2a                	sw	a0,24(sp)
        self.coreclk = freq.into();
200132a8:	00000097          	auipc	ra,0x0
200132ac:	b14080e7          	jalr	-1260(ra) # 20012dbc <<T as core::convert::Into<U>>::into>
200132b0:	45c2                	lw	a1,16(sp)
200132b2:	862a                	mv	a2,a0
200132b4:	4552                	lw	a0,20(sp)
200132b6:	c510                	sw	a2,8(a0)
        self
200132b8:	4510                	lw	a2,8(a0)
200132ba:	c590                	sw	a2,8(a1)
200132bc:	4150                	lw	a2,4(a0)
200132be:	c1d0                	sw	a2,4(a1)
200132c0:	4108                	lw	a0,0(a0)
200132c2:	c188                	sw	a0,0(a1)
    }
200132c4:	40f2                	lw	ra,28(sp)
200132c6:	6105                	add	sp,sp,32
200132c8:	8082                	ret

200132ca <hifive1::clock::configure>:
))]
/// Configures clock generation system.
///
/// For HiFive1 and HiFive1 Rev B boards external oscillators are enabled for
/// both high-frequency and low-frequency clocks.
pub fn configure(prci: PRCI, aonclk: AONCLK, target_coreclk: Hertz) -> Clocks {
200132ca:	711d                	add	sp,sp,-96
200132cc:	ce86                	sw	ra,92(sp)
200132ce:	c42a                	sw	a0,8(sp)
200132d0:	c4aa                	sw	a0,72(sp)
200132d2:	0828                	add	a0,sp,24
    let coreclk = prci.constrain();
200132d4:	c02a                	sw	a0,0(sp)
200132d6:	00000097          	auipc	ra,0x0
200132da:	3e4080e7          	jalr	996(ra) # 200136ba <<e310x::PRCI as e310x_hal::clock::PrciExt>::constrain>
200132de:	4582                	lw	a1,0(sp)
200132e0:	00f42537          	lui	a0,0xf42
200132e4:	40050513          	add	a0,a0,1024 # f42400 <.Lline_table_start1+0xf12f8a>
    let coreclk = coreclk
        .use_external(Hertz(16_000_000))
200132e8:	de2a                	sw	a0,60(sp)
    let coreclk = coreclk
200132ea:	5672                	lw	a2,60(sp)
200132ec:	1808                	add	a0,sp,48
200132ee:	c22a                	sw	a0,4(sp)
200132f0:	00000097          	auipc	ra,0x0
200132f4:	f38080e7          	jalr	-200(ra) # 20013228 <e310x_hal::clock::CoreClk::use_external>
200132f8:	4592                	lw	a1,4(sp)
200132fa:	4622                	lw	a2,8(sp)
200132fc:	1048                	add	a0,sp,36
200132fe:	c62a                	sw	a0,12(sp)
20013300:	00000097          	auipc	ra,0x0
20013304:	f98080e7          	jalr	-104(ra) # 20013298 <e310x_hal::clock::CoreClk::coreclk>
        .coreclk(target_coreclk);

    let aonclk = aonclk.constrain();
20013308:	00000097          	auipc	ra,0x0
2001330c:	3d4080e7          	jalr	980(ra) # 200136dc <<e310x::AONCLK as e310x_hal::clock::AonExt>::constrain>
20013310:	c6aa                	sw	a0,76(sp)
20013312:	c8ae                	sw	a1,80(sp)
20013314:	6621                	lui	a2,0x8
    let aonclk = aonclk.use_external(Hertz(32_768));
20013316:	c0b2                	sw	a2,64(sp)
20013318:	4606                	lw	a2,64(sp)
2001331a:	00000097          	auipc	ra,0x0
2001331e:	eaa080e7          	jalr	-342(ra) # 200131c4 <e310x_hal::clock::AonClk::use_external>
20013322:	862a                	mv	a2,a0
20013324:	4532                	lw	a0,12(sp)
20013326:	c832                	sw	a2,16(sp)
20013328:	862e                	mv	a2,a1
2001332a:	45c2                	lw	a1,16(sp)
2001332c:	caae                	sw	a1,84(sp)
2001332e:	ccb2                	sw	a2,88(sp)

    Clocks::freeze(coreclk, aonclk)
20013330:	00002097          	auipc	ra,0x2
20013334:	98c080e7          	jalr	-1652(ra) # 20014cbc <e310x_hal::clock::Clocks::freeze>
}
20013338:	40f6                	lw	ra,92(sp)
2001333a:	6125                	add	sp,sp,96
2001333c:	8082                	ret

2001333e <<hifive1::stdout::SerialWrapper as core::fmt::Write>::write_str>:
    fn write_str(&mut self, s: &str) -> fmt::Result {
2001333e:	715d                	add	sp,sp,-80
20013340:	c686                	sw	ra,76(sp)
20013342:	c832                	sw	a2,16(sp)
20013344:	862e                	mv	a2,a1
20013346:	45c2                	lw	a1,16(sp)
20013348:	ca32                	sw	a2,20(sp)
2001334a:	862a                	mv	a2,a0
            let res = block!(self.0.write(*byte));
2001334c:	4552                	lw	a0,20(sp)
2001334e:	cc32                	sw	a2,24(sp)
20013350:	da32                	sw	a2,52(sp)
20013352:	dc2a                	sw	a0,56(sp)
20013354:	de2e                	sw	a1,60(sp)
20013356:	c2aa                	sw	a0,68(sp)
20013358:	c4ae                	sw	a1,72(sp)
        for byte in s.as_bytes() {
2001335a:	00000097          	auipc	ra,0x0
2001335e:	9c4080e7          	jalr	-1596(ra) # 20012d1e <core::slice::iter::<impl core::iter::traits::collect::IntoIterator for &[T]>::into_iter>
20013362:	d22a                	sw	a0,36(sp)
20013364:	d42e                	sw	a1,40(sp)
20013366:	a009                	j	20013368 <<hifive1::stdout::SerialWrapper as core::fmt::Write>::write_str+0x2a>
20013368:	1048                	add	a0,sp,36
2001336a:	00000097          	auipc	ra,0x0
2001336e:	bac080e7          	jalr	-1108(ra) # 20012f16 <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next>
20013372:	d62a                	sw	a0,44(sp)
20013374:	5532                	lw	a0,44(sp)
20013376:	e511                	bnez	a0,20013382 <<hifive1::stdout::SerialWrapper as core::fmt::Write>::write_str+0x44>
20013378:	a009                	j	2001337a <<hifive1::stdout::SerialWrapper as core::fmt::Write>::write_str+0x3c>
2001337a:	4501                	li	a0,0
        Ok(())
2001337c:	02a101a3          	sb	a0,35(sp)
    }
20013380:	a811                	j	20013394 <<hifive1::stdout::SerialWrapper as core::fmt::Write>::write_str+0x56>
        for byte in s.as_bytes() {
20013382:	5532                	lw	a0,44(sp)
20013384:	c62a                	sw	a0,12(sp)
20013386:	c0aa                	sw	a0,64(sp)
            if *byte == b'\n' {
20013388:	00054503          	lbu	a0,0(a0)
2001338c:	45a9                	li	a1,10
2001338e:	00b50863          	beq	a0,a1,2001339e <<hifive1::stdout::SerialWrapper as core::fmt::Write>::write_str+0x60>
20013392:	a01d                	j	200133b8 <<hifive1::stdout::SerialWrapper as core::fmt::Write>::write_str+0x7a>
    }
20013394:	02314503          	lbu	a0,35(sp)
20013398:	40b6                	lw	ra,76(sp)
2001339a:	6161                	add	sp,sp,80
2001339c:	8082                	ret
                let res = block!(self.0.write(b'\r'));
2001339e:	4562                	lw	a0,24(sp)
200133a0:	45b5                	li	a1,13
200133a2:	00000097          	auipc	ra,0x0
200133a6:	c20080e7          	jalr	-992(ra) # 20012fc2 <<e310x_hal::serial::Tx<UART> as embedded_hal::serial::Write<u8>>::write>
200133aa:	02a108a3          	sb	a0,49(sp)
200133ae:	03114503          	lbu	a0,49(sp)
200133b2:	8905                	and	a0,a0,1
200133b4:	c10d                	beqz	a0,200133d6 <<hifive1::stdout::SerialWrapper as core::fmt::Write>::write_str+0x98>
200133b6:	a03d                	j	200133e4 <<hifive1::stdout::SerialWrapper as core::fmt::Write>::write_str+0xa6>
            let res = block!(self.0.write(*byte));
200133b8:	4562                	lw	a0,24(sp)
200133ba:	45b2                	lw	a1,12(sp)
200133bc:	0005c583          	lbu	a1,0(a1)
200133c0:	00000097          	auipc	ra,0x0
200133c4:	c02080e7          	jalr	-1022(ra) # 20012fc2 <<e310x_hal::serial::Tx<UART> as embedded_hal::serial::Write<u8>>::write>
200133c8:	02a109a3          	sb	a0,51(sp)
200133cc:	03314503          	lbu	a0,51(sp)
200133d0:	8905                	and	a0,a0,1
200133d2:	c10d                	beqz	a0,200133f4 <<hifive1::stdout::SerialWrapper as core::fmt::Write>::write_str+0xb6>
200133d4:	a805                	j	20013404 <<hifive1::stdout::SerialWrapper as core::fmt::Write>::write_str+0xc6>
200133d6:	1808                	add	a0,sp,48
                if res.is_err() {
200133d8:	00000097          	auipc	ra,0x0
200133dc:	9a8080e7          	jalr	-1624(ra) # 20012d80 <core::result::Result<T,E>::is_err>
200133e0:	e509                	bnez	a0,200133ea <<hifive1::stdout::SerialWrapper as core::fmt::Write>::write_str+0xac>
200133e2:	bfd9                	j	200133b8 <<hifive1::stdout::SerialWrapper as core::fmt::Write>::write_str+0x7a>
200133e4:	4505                	li	a0,1
                let res = block!(self.0.write(b'\r'));
200133e6:	fd45                	bnez	a0,2001339e <<hifive1::stdout::SerialWrapper as core::fmt::Write>::write_str+0x60>
200133e8:	a029                	j	200133f2 <<hifive1::stdout::SerialWrapper as core::fmt::Write>::write_str+0xb4>
200133ea:	4505                	li	a0,1
                    return Err(::core::fmt::Error);
200133ec:	02a101a3          	sb	a0,35(sp)
//! Board support crate for HiFive1 and LoFive boards
200133f0:	b755                	j	20013394 <<hifive1::stdout::SerialWrapper as core::fmt::Write>::write_str+0x56>
        for byte in s.as_bytes() {
200133f2:	0000                	unimp
200133f4:	03210513          	add	a0,sp,50
            if res.is_err() {
200133f8:	00000097          	auipc	ra,0x0
200133fc:	988080e7          	jalr	-1656(ra) # 20012d80 <core::result::Result<T,E>::is_err>
20013400:	e509                	bnez	a0,2001340a <<hifive1::stdout::SerialWrapper as core::fmt::Write>::write_str+0xcc>
20013402:	b79d                	j	20013368 <<hifive1::stdout::SerialWrapper as core::fmt::Write>::write_str+0x2a>
20013404:	4505                	li	a0,1
            let res = block!(self.0.write(*byte));
20013406:	f94d                	bnez	a0,200133b8 <<hifive1::stdout::SerialWrapper as core::fmt::Write>::write_str+0x7a>
20013408:	b7ed                	j	200133f2 <<hifive1::stdout::SerialWrapper as core::fmt::Write>::write_str+0xb4>
2001340a:	4505                	li	a0,1
                return Err(::core::fmt::Error);
2001340c:	02a101a3          	sb	a0,35(sp)
20013410:	b751                	j	20013394 <<hifive1::stdout::SerialWrapper as core::fmt::Write>::write_str+0x56>

20013412 <hifive1::stdout::write_str>:

/// Writes string to stdout
pub fn write_str(s: &str) {
20013412:	1141                	add	sp,sp,-16
20013414:	c606                	sw	ra,12(sp)
20013416:	c02a                	sw	a0,0(sp)
20013418:	c22e                	sw	a1,4(sp)
2001341a:	850a                	mv	a0,sp
    interrupt::free(|| unsafe {
2001341c:	c42a                	sw	a0,8(sp)
2001341e:	4522                	lw	a0,8(sp)
20013420:	00000097          	auipc	ra,0x0
20013424:	a28080e7          	jalr	-1496(ra) # 20012e48 <riscv::interrupt::free>
        if let Some(stdout) = STDOUT.as_mut() {
            let _ = stdout.write_str(s);
        }
    })
}
20013428:	40b2                	lw	ra,12(sp)
2001342a:	0141                	add	sp,sp,16
2001342c:	8082                	ret

2001342e <hifive1::stdout::write_str::{{closure}}>:
    interrupt::free(|| unsafe {
2001342e:	1141                	add	sp,sp,-16
20013430:	c606                	sw	ra,12(sp)
20013432:	c02a                	sw	a0,0(sp)
        if let Some(stdout) = STDOUT.as_mut() {
20013434:	80001537          	lui	a0,0x80001
20013438:	dac50513          	add	a0,a0,-596 # 80000dac <hifive1::stdout::STDOUT>
2001343c:	00000097          	auipc	ra,0x0
20013440:	91e080e7          	jalr	-1762(ra) # 20012d5a <core::option::Option<T>::as_mut>
20013444:	c22a                	sw	a0,4(sp)
20013446:	4512                	lw	a0,4(sp)
20013448:	cd01                	beqz	a0,20013460 <hifive1::stdout::write_str::{{closure}}+0x32>
2001344a:	a009                	j	2001344c <hifive1::stdout::write_str::{{closure}}+0x1e>
2001344c:	4512                	lw	a0,4(sp)
2001344e:	c42a                	sw	a0,8(sp)
            let _ = stdout.write_str(s);
20013450:	4602                	lw	a2,0(sp)
20013452:	420c                	lw	a1,0(a2)
20013454:	4250                	lw	a2,4(a2)
20013456:	00000097          	auipc	ra,0x0
2001345a:	ee8080e7          	jalr	-280(ra) # 2001333e <<hifive1::stdout::SerialWrapper as core::fmt::Write>::write_str>
2001345e:	a009                	j	20013460 <hifive1::stdout::write_str::{{closure}}+0x32>
    })
20013460:	40b2                	lw	ra,12(sp)
20013462:	0141                	add	sp,sp,16
20013464:	8082                	ret

20013466 <hifive1::stdout::write_fmt>:

/// Writes formatted string to stdout
pub fn write_fmt(args: fmt::Arguments) {
20013466:	1141                	add	sp,sp,-16
    interrupt::free(|| unsafe {
20013468:	c606                	sw	ra,12(sp)
2001346a:	c42a                	sw	a0,8(sp)
2001346c:	4522                	lw	a0,8(sp)
2001346e:	00000097          	auipc	ra,0x0
20013472:	a1c080e7          	jalr	-1508(ra) # 20012e8a <riscv::interrupt::free>
        if let Some(stdout) = STDOUT.as_mut() {
            let _ = stdout.write_fmt(args);
        }
    })
}
20013476:	40b2                	lw	ra,12(sp)
20013478:	0141                	add	sp,sp,16
2001347a:	8082                	ret

2001347c <hifive1::stdout::write_fmt::{{closure}}>:
    interrupt::free(|| unsafe {
2001347c:	7179                	add	sp,sp,-48
2001347e:	d606                	sw	ra,44(sp)
20013480:	c42a                	sw	a0,8(sp)
        if let Some(stdout) = STDOUT.as_mut() {
20013482:	80001537          	lui	a0,0x80001
20013486:	dac50513          	add	a0,a0,-596 # 80000dac <hifive1::stdout::STDOUT>
2001348a:	00000097          	auipc	ra,0x0
2001348e:	8d0080e7          	jalr	-1840(ra) # 20012d5a <core::option::Option<T>::as_mut>
20013492:	c62a                	sw	a0,12(sp)
20013494:	4532                	lw	a0,12(sp)
20013496:	c51d                	beqz	a0,200134c4 <hifive1::stdout::write_fmt::{{closure}}+0x48>
20013498:	a009                	j	2001349a <hifive1::stdout::write_fmt::{{closure}}+0x1e>
2001349a:	4532                	lw	a0,12(sp)
2001349c:	d42a                	sw	a0,40(sp)
            let _ = stdout.write_fmt(args);
2001349e:	45a2                	lw	a1,8(sp)
200134a0:	49d0                	lw	a2,20(a1)
200134a2:	d232                	sw	a2,36(sp)
200134a4:	4990                	lw	a2,16(a1)
200134a6:	d032                	sw	a2,32(sp)
200134a8:	45d0                	lw	a2,12(a1)
200134aa:	ce32                	sw	a2,28(sp)
200134ac:	4590                	lw	a2,8(a1)
200134ae:	cc32                	sw	a2,24(sp)
200134b0:	41d0                	lw	a2,4(a1)
200134b2:	ca32                	sw	a2,20(sp)
200134b4:	418c                	lw	a1,0(a1)
200134b6:	c82e                	sw	a1,16(sp)
200134b8:	080c                	add	a1,sp,16
200134ba:	fffff097          	auipc	ra,0xfffff
200134be:	470080e7          	jalr	1136(ra) # 2001292a <core::fmt::Write::write_fmt>
200134c2:	a009                	j	200134c4 <hifive1::stdout::write_fmt::{{closure}}+0x48>
    })
200134c4:	50b2                	lw	ra,44(sp)
200134c6:	6145                	add	sp,sp,48
200134c8:	8082                	ret

200134ca <<e310x_hal::gpio::gpio0::Pin22<e310x_hal::gpio::Output<e310x_hal::gpio::Regular<e310x_hal::gpio::Invert>>> as hifive1::led::Led>::off>:
/// Macro to implement the Led trait for each of the board LEDs
macro_rules! led_impl {
    ($($LEDTYPE:ident),+) => {
        $(
            impl Led for $LEDTYPE {
                fn off(&mut self) {
200134ca:	1141                	add	sp,sp,-16
200134cc:	c606                	sw	ra,12(sp)
200134ce:	c42a                	sw	a0,8(sp)
                    self.set_low().unwrap();
200134d0:	fffff097          	auipc	ra,0xfffff
200134d4:	344080e7          	jalr	836(ra) # 20012814 <<e310x_hal::gpio::gpio0::Pin22<e310x_hal::gpio::Output<MODE>> as embedded_hal::digital::v2::OutputPin>::set_low>
200134d8:	20018537          	lui	a0,0x20018
200134dc:	29450513          	add	a0,a0,660 # 20018294 <.L__unnamed_18>
200134e0:	00000097          	auipc	ra,0x0
200134e4:	8aa080e7          	jalr	-1878(ra) # 20012d8a <core::result::Result<T,E>::unwrap>
                }
200134e8:	40b2                	lw	ra,12(sp)
200134ea:	0141                	add	sp,sp,16
200134ec:	8082                	ret

200134ee <<e310x_hal::gpio::gpio0::Pin22<e310x_hal::gpio::Output<e310x_hal::gpio::Regular<e310x_hal::gpio::Invert>>> as hifive1::led::Led>::on>:

                fn on(&mut self) {
200134ee:	1141                	add	sp,sp,-16
200134f0:	c606                	sw	ra,12(sp)
200134f2:	c42a                	sw	a0,8(sp)
                    self.set_high().unwrap();
200134f4:	fffff097          	auipc	ra,0xfffff
200134f8:	338080e7          	jalr	824(ra) # 2001282c <<e310x_hal::gpio::gpio0::Pin22<e310x_hal::gpio::Output<MODE>> as embedded_hal::digital::v2::OutputPin>::set_high>
200134fc:	20018537          	lui	a0,0x20018
20013500:	29450513          	add	a0,a0,660 # 20018294 <.L__unnamed_18>
20013504:	00000097          	auipc	ra,0x0
20013508:	886080e7          	jalr	-1914(ra) # 20012d8a <core::result::Result<T,E>::unwrap>
                }
2001350c:	40b2                	lw	ra,12(sp)
2001350e:	0141                	add	sp,sp,16
20013510:	8082                	ret

20013512 <<e310x_hal::gpio::gpio0::Pin22<e310x_hal::gpio::Output<e310x_hal::gpio::Regular<e310x_hal::gpio::Invert>>> as hifive1::led::Led>::toggle>:

                fn toggle(&mut self) {
20013512:	1141                	add	sp,sp,-16
20013514:	c606                	sw	ra,12(sp)
20013516:	c42a                	sw	a0,8(sp)
                    ToggleableOutputPin::toggle(self).unwrap();
20013518:	fffff097          	auipc	ra,0xfffff
2001351c:	358080e7          	jalr	856(ra) # 20012870 <<e310x_hal::gpio::gpio0::Pin22<e310x_hal::gpio::Output<MODE>> as embedded_hal::digital::v2::ToggleableOutputPin>::toggle>
20013520:	20018537          	lui	a0,0x20018
20013524:	29450513          	add	a0,a0,660 # 20018294 <.L__unnamed_18>
20013528:	00000097          	auipc	ra,0x0
2001352c:	862080e7          	jalr	-1950(ra) # 20012d8a <core::result::Result<T,E>::unwrap>
                }
20013530:	40b2                	lw	ra,12(sp)
20013532:	0141                	add	sp,sp,16
20013534:	8082                	ret

20013536 <<e310x_hal::gpio::gpio0::Pin19<e310x_hal::gpio::Output<e310x_hal::gpio::Regular<e310x_hal::gpio::Invert>>> as hifive1::led::Led>::off>:
                fn off(&mut self) {
20013536:	1141                	add	sp,sp,-16
20013538:	c606                	sw	ra,12(sp)
2001353a:	c42a                	sw	a0,8(sp)
                    self.set_low().unwrap();
2001353c:	fffff097          	auipc	ra,0xfffff
20013540:	278080e7          	jalr	632(ra) # 200127b4 <<e310x_hal::gpio::gpio0::Pin19<e310x_hal::gpio::Output<MODE>> as embedded_hal::digital::v2::OutputPin>::set_low>
20013544:	20018537          	lui	a0,0x20018
20013548:	29450513          	add	a0,a0,660 # 20018294 <.L__unnamed_18>
2001354c:	00000097          	auipc	ra,0x0
20013550:	83e080e7          	jalr	-1986(ra) # 20012d8a <core::result::Result<T,E>::unwrap>
                }
20013554:	40b2                	lw	ra,12(sp)
20013556:	0141                	add	sp,sp,16
20013558:	8082                	ret

2001355a <<e310x_hal::gpio::gpio0::Pin19<e310x_hal::gpio::Output<e310x_hal::gpio::Regular<e310x_hal::gpio::Invert>>> as hifive1::led::Led>::on>:
                fn on(&mut self) {
2001355a:	1141                	add	sp,sp,-16
2001355c:	c606                	sw	ra,12(sp)
2001355e:	c42a                	sw	a0,8(sp)
                    self.set_high().unwrap();
20013560:	fffff097          	auipc	ra,0xfffff
20013564:	26c080e7          	jalr	620(ra) # 200127cc <<e310x_hal::gpio::gpio0::Pin19<e310x_hal::gpio::Output<MODE>> as embedded_hal::digital::v2::OutputPin>::set_high>
20013568:	20018537          	lui	a0,0x20018
2001356c:	29450513          	add	a0,a0,660 # 20018294 <.L__unnamed_18>
20013570:	00000097          	auipc	ra,0x0
20013574:	81a080e7          	jalr	-2022(ra) # 20012d8a <core::result::Result<T,E>::unwrap>
                }
20013578:	40b2                	lw	ra,12(sp)
2001357a:	0141                	add	sp,sp,16
2001357c:	8082                	ret

2001357e <<e310x_hal::gpio::gpio0::Pin19<e310x_hal::gpio::Output<e310x_hal::gpio::Regular<e310x_hal::gpio::Invert>>> as hifive1::led::Led>::toggle>:
                fn toggle(&mut self) {
2001357e:	1141                	add	sp,sp,-16
20013580:	c606                	sw	ra,12(sp)
20013582:	c42a                	sw	a0,8(sp)
                    ToggleableOutputPin::toggle(self).unwrap();
20013584:	fffff097          	auipc	ra,0xfffff
20013588:	2c0080e7          	jalr	704(ra) # 20012844 <<e310x_hal::gpio::gpio0::Pin19<e310x_hal::gpio::Output<MODE>> as embedded_hal::digital::v2::ToggleableOutputPin>::toggle>
2001358c:	20018537          	lui	a0,0x20018
20013590:	29450513          	add	a0,a0,660 # 20018294 <.L__unnamed_18>
20013594:	fffff097          	auipc	ra,0xfffff
20013598:	7f6080e7          	jalr	2038(ra) # 20012d8a <core::result::Result<T,E>::unwrap>
                }
2001359c:	40b2                	lw	ra,12(sp)
2001359e:	0141                	add	sp,sp,16
200135a0:	8082                	ret

200135a2 <<e310x_hal::gpio::gpio0::Pin21<e310x_hal::gpio::Output<e310x_hal::gpio::Regular<e310x_hal::gpio::Invert>>> as hifive1::led::Led>::off>:
                fn off(&mut self) {
200135a2:	1141                	add	sp,sp,-16
200135a4:	c606                	sw	ra,12(sp)
200135a6:	c42a                	sw	a0,8(sp)
                    self.set_low().unwrap();
200135a8:	fffff097          	auipc	ra,0xfffff
200135ac:	23c080e7          	jalr	572(ra) # 200127e4 <<e310x_hal::gpio::gpio0::Pin21<e310x_hal::gpio::Output<MODE>> as embedded_hal::digital::v2::OutputPin>::set_low>
200135b0:	20018537          	lui	a0,0x20018
200135b4:	2a450513          	add	a0,a0,676 # 200182a4 <.L__unnamed_19>
200135b8:	fffff097          	auipc	ra,0xfffff
200135bc:	7d2080e7          	jalr	2002(ra) # 20012d8a <core::result::Result<T,E>::unwrap>
                }
200135c0:	40b2                	lw	ra,12(sp)
200135c2:	0141                	add	sp,sp,16
200135c4:	8082                	ret

200135c6 <<e310x_hal::gpio::gpio0::Pin21<e310x_hal::gpio::Output<e310x_hal::gpio::Regular<e310x_hal::gpio::Invert>>> as hifive1::led::Led>::on>:
                fn on(&mut self) {
200135c6:	1141                	add	sp,sp,-16
200135c8:	c606                	sw	ra,12(sp)
200135ca:	c42a                	sw	a0,8(sp)
                    self.set_high().unwrap();
200135cc:	fffff097          	auipc	ra,0xfffff
200135d0:	230080e7          	jalr	560(ra) # 200127fc <<e310x_hal::gpio::gpio0::Pin21<e310x_hal::gpio::Output<MODE>> as embedded_hal::digital::v2::OutputPin>::set_high>
200135d4:	20018537          	lui	a0,0x20018
200135d8:	2a450513          	add	a0,a0,676 # 200182a4 <.L__unnamed_19>
200135dc:	fffff097          	auipc	ra,0xfffff
200135e0:	7ae080e7          	jalr	1966(ra) # 20012d8a <core::result::Result<T,E>::unwrap>
                }
200135e4:	40b2                	lw	ra,12(sp)
200135e6:	0141                	add	sp,sp,16
200135e8:	8082                	ret

200135ea <<e310x_hal::gpio::gpio0::Pin21<e310x_hal::gpio::Output<e310x_hal::gpio::Regular<e310x_hal::gpio::Invert>>> as hifive1::led::Led>::toggle>:
                fn toggle(&mut self) {
200135ea:	1141                	add	sp,sp,-16
200135ec:	c606                	sw	ra,12(sp)
200135ee:	c42a                	sw	a0,8(sp)
                    ToggleableOutputPin::toggle(self).unwrap();
200135f0:	fffff097          	auipc	ra,0xfffff
200135f4:	26a080e7          	jalr	618(ra) # 2001285a <<e310x_hal::gpio::gpio0::Pin21<e310x_hal::gpio::Output<MODE>> as embedded_hal::digital::v2::ToggleableOutputPin>::toggle>
200135f8:	20018537          	lui	a0,0x20018
200135fc:	2a450513          	add	a0,a0,676 # 200182a4 <.L__unnamed_19>
20013600:	fffff097          	auipc	ra,0xfffff
20013604:	78a080e7          	jalr	1930(ra) # 20012d8a <core::result::Result<T,E>::unwrap>
                }
20013608:	40b2                	lw	ra,12(sp)
2001360a:	0141                	add	sp,sp,16
2001360c:	8082                	ret

2001360e <core::num::<impl i32>::abs>:
2001360e:	1141                	add	sp,sp,-16
20013610:	c22a                	sw	a0,4(sp)
20013612:	c62a                	sw	a0,12(sp)
20013614:	00054663          	bltz	a0,20013620 <core::num::<impl i32>::abs+0x12>
20013618:	a009                	j	2001361a <core::num::<impl i32>::abs+0xc>
2001361a:	4512                	lw	a0,4(sp)
2001361c:	c42a                	sw	a0,8(sp)
2001361e:	a039                	j	2001362c <core::num::<impl i32>::abs+0x1e>
20013620:	4512                	lw	a0,4(sp)
20013622:	800005b7          	lui	a1,0x80000
20013626:	00b50b63          	beq	a0,a1,2001363c <core::num::<impl i32>::abs+0x2e>
2001362a:	a021                	j	20013632 <core::num::<impl i32>::abs+0x24>
2001362c:	4522                	lw	a0,8(sp)
2001362e:	0141                	add	sp,sp,16
20013630:	8082                	ret
20013632:	4592                	lw	a1,4(sp)
20013634:	4501                	li	a0,0
20013636:	8d0d                	sub	a0,a0,a1
20013638:	c42a                	sw	a0,8(sp)
2001363a:	bfcd                	j	2001362c <core::num::<impl i32>::abs+0x1e>
2001363c:	20018537          	lui	a0,0x20018
20013640:	34050513          	add	a0,a0,832 # 20018340 <str.1>
20013644:	200185b7          	lui	a1,0x20018
20013648:	33058613          	add	a2,a1,816 # 20018330 <.L__unnamed_5>
2001364c:	45fd                	li	a1,31
2001364e:	00002097          	auipc	ra,0x2
20013652:	e3e080e7          	jalr	-450(ra) # 2001548c <core::panicking::panic>
	...

20013658 <core::ptr::read_volatile>:
20013658:	1141                	add	sp,sp,-16
2001365a:	c42a                	sw	a0,8(sp)
2001365c:	4108                	lw	a0,0(a0)
2001365e:	c62a                	sw	a0,12(sp)
20013660:	4532                	lw	a0,12(sp)
20013662:	0141                	add	sp,sp,16
20013664:	8082                	ret

20013666 <core::ptr::write_volatile>:
20013666:	1141                	add	sp,sp,-16
20013668:	c42a                	sw	a0,8(sp)
2001366a:	c62e                	sw	a1,12(sp)
2001366c:	c10c                	sw	a1,0(a0)
2001366e:	0141                	add	sp,sp,16
20013670:	8082                	ret

20013672 <<T as core::convert::Into<U>>::into>:
20013672:	1141                	add	sp,sp,-16
20013674:	c606                	sw	ra,12(sp)
20013676:	00001097          	auipc	ra,0x1
2001367a:	73e080e7          	jalr	1854(ra) # 20014db4 <<e310x_hal::core::clint::Clint as core::convert::From<e310x::CLINT>>::from>
2001367e:	40b2                	lw	ra,12(sp)
20013680:	0141                	add	sp,sp,16
20013682:	8082                	ret

20013684 <<T as core::convert::Into<U>>::into>:
20013684:	1141                	add	sp,sp,-16
20013686:	c606                	sw	ra,12(sp)
20013688:	00001097          	auipc	ra,0x1
2001368c:	734080e7          	jalr	1844(ra) # 20014dbc <<e310x_hal::core::plic::Plic as core::convert::From<e310x::PLIC>>::from>
20013690:	40b2                	lw	ra,12(sp)
20013692:	0141                	add	sp,sp,16
20013694:	8082                	ret

20013696 <<T as core::convert::Into<U>>::into>:
20013696:	1141                	add	sp,sp,-16
20013698:	c606                	sw	ra,12(sp)
2001369a:	00002097          	auipc	ra,0x2
2001369e:	948080e7          	jalr	-1720(ra) # 20014fe2 <<e310x_hal::device::DeviceGpioPins as core::convert::From<e310x::GPIO0>>::from>
200136a2:	40b2                	lw	ra,12(sp)
200136a4:	0141                	add	sp,sp,16
200136a6:	8082                	ret

200136a8 <<T as core::convert::Into<U>>::into>:
200136a8:	1141                	add	sp,sp,-16
200136aa:	00a10723          	sb	a0,14(sp)
200136ae:	00a107a3          	sb	a0,15(sp)
200136b2:	0ff57513          	zext.b	a0,a0
200136b6:	0141                	add	sp,sp,16
200136b8:	8082                	ret

200136ba <<e310x::PRCI as e310x_hal::clock::PrciExt>::constrain>:
    fn constrain(self) -> CoreClk {
200136ba:	1101                	add	sp,sp,-32
200136bc:	85aa                	mv	a1,a0
200136be:	4501                	li	a0,0
            hfxosc: None,
200136c0:	c82a                	sw	a0,16(sp)
200136c2:	00d29537          	lui	a0,0xd29
200136c6:	24050513          	add	a0,a0,576 # d29240 <.Lline_table_start1+0xcf9dca>
            coreclk: Hertz(13_800_000), // Default after reset
200136ca:	cc2a                	sw	a0,24(sp)
        CoreClk {
200136cc:	4642                	lw	a2,16(sp)
200136ce:	4552                	lw	a0,20(sp)
200136d0:	c190                	sw	a2,0(a1)
200136d2:	c1c8                	sw	a0,4(a1)
200136d4:	4562                	lw	a0,24(sp)
200136d6:	c588                	sw	a0,8(a1)
    }
200136d8:	6105                	add	sp,sp,32
200136da:	8082                	ret

200136dc <<e310x::AONCLK as e310x_hal::clock::AonExt>::constrain>:
    fn constrain(self) -> AonClk {
200136dc:	1101                	add	sp,sp,-32
200136de:	4501                	li	a0,0
        AonClk { lfaltclk: None }
200136e0:	ca2a                	sw	a0,20(sp)
200136e2:	45d2                	lw	a1,20(sp)
200136e4:	4562                	lw	a0,24(sp)
200136e6:	c62e                	sw	a1,12(sp)
200136e8:	c82a                	sw	a0,16(sp)
    }
200136ea:	4532                	lw	a0,12(sp)
200136ec:	45c2                	lw	a1,16(sp)
200136ee:	6105                	add	sp,sp,32
200136f0:	8082                	ret

200136f2 <e310x_hal::clock::CoreClk::freeze>:
    pub(crate) fn freeze(self) -> Hertz {
200136f2:	7119                	add	sp,sp,-128
200136f4:	de86                	sw	ra,124(sp)
200136f6:	c62a                	sw	a0,12(sp)
200136f8:	100085b7          	lui	a1,0x10008
        let prci = unsafe { &*PRCI::ptr() };
200136fc:	c02e                	sw	a1,0(sp)
200136fe:	d62e                	sw	a1,44(sp)
        let hfrosc_freq = self.configure_hfrosc();
20013700:	00000097          	auipc	ra,0x0
20013704:	74e080e7          	jalr	1870(ra) # 20013e4e <e310x_hal::clock::CoreClk::configure_hfrosc>
20013708:	85aa                	mv	a1,a0
2001370a:	4502                	lw	a0,0(sp)
2001370c:	862e                	mv	a2,a1
2001370e:	c232                	sw	a2,4(sp)
20013710:	d82e                	sw	a1,48(sp)
20013712:	0521                	add	a0,a0,8
20013714:	c42a                	sw	a0,8(sp)
20013716:	c8aa                	sw	a0,80(sp)
20013718:	d4aa                	sw	a0,104(sp)
2001371a:	d6aa                	sw	a0,108(sp)
        unsafe { ptr::read_volatile(self.value.get()) }
2001371c:	00000097          	auipc	ra,0x0
20013720:	f3c080e7          	jalr	-196(ra) # 20013658 <core::ptr::read_volatile>
        let bits = self.register.get();
20013724:	caaa                	sw	a0,84(sp)
                &REG::Reader::from(R {
20013726:	c2aa                	sw	a0,68(sp)
20013728:	4596                	lw	a1,68(sp)
2001372a:	ceae                	sw	a1,92(sp)
    }
}
impl From<crate::R<PLLCFG_SPEC>> for R {
    #[inline(always)]
    fn from(reader: crate::R<PLLCFG_SPEC>) -> Self {
        R(reader)
2001372c:	ccae                	sw	a1,88(sp)
    }
2001372e:	45e6                	lw	a1,88(sp)
20013730:	c0ae                	sw	a1,64(sp)
                &mut REG::Writer::from(W {
20013732:	c6aa                	sw	a0,76(sp)
20013734:	4536                	lw	a0,76(sp)
20013736:	d2aa                	sw	a0,100(sp)
    }
}
impl From<crate::W<PLLCFG_SPEC>> for W {
    #[inline(always)]
    fn from(writer: crate::W<PLLCFG_SPEC>) -> Self {
        W(writer)
20013738:	d0aa                	sw	a0,96(sp)
    }
2001373a:	5506                	lw	a0,96(sp)
2001373c:	c4aa                	sw	a0,72(sp)
2001373e:	0088                	add	a0,sp,64
            f(
20013740:	dc2a                	sw	a0,56(sp)
20013742:	00a8                	add	a0,sp,72
20013744:	de2a                	sw	a0,60(sp)
20013746:	5562                	lw	a0,56(sp)
20013748:	55f2                	lw	a1,60(sp)
2001374a:	00000097          	auipc	ra,0x0
2001374e:	06a080e7          	jalr	106(ra) # 200137b4 <e310x_hal::clock::CoreClk::freeze::{{closure}}>
20013752:	85aa                	mv	a1,a0
20013754:	4522                	lw	a0,8(sp)
20013756:	418c                	lw	a1,0(a1)
20013758:	d8aa                	sw	a0,112(sp)
2001375a:	daae                	sw	a1,116(sp)
2001375c:	dcaa                	sw	a0,120(sp)
        unsafe { ptr::write_volatile(self.value.get(), value) }
2001375e:	00000097          	auipc	ra,0x0
20013762:	f08080e7          	jalr	-248(ra) # 20013666 <core::ptr::write_volatile>
20013766:	4532                	lw	a0,12(sp)
        if let Some(freq) = self.hfxosc {
20013768:	4108                	lw	a0,0(a0)
2001376a:	c115                	beqz	a0,2001378e <e310x_hal::clock::CoreClk::freeze+0x9c>
2001376c:	a009                	j	2001376e <e310x_hal::clock::CoreClk::freeze+0x7c>
2001376e:	4532                	lw	a0,12(sp)
20013770:	414c                	lw	a1,4(a0)
20013772:	da2e                	sw	a1,52(sp)
            self.configure_with_external(freq)
20013774:	4510                	lw	a2,8(a0)
20013776:	ce32                	sw	a2,28(sp)
20013778:	4150                	lw	a2,4(a0)
2001377a:	cc32                	sw	a2,24(sp)
2001377c:	4108                	lw	a0,0(a0)
2001377e:	ca2a                	sw	a0,20(sp)
20013780:	0848                	add	a0,sp,20
20013782:	00000097          	auipc	ra,0x0
20013786:	08e080e7          	jalr	142(ra) # 20013810 <e310x_hal::clock::CoreClk::configure_with_external>
2001378a:	c82a                	sw	a0,16(sp)
2001378c:	a005                	j	200137ac <e310x_hal::clock::CoreClk::freeze+0xba>
            self.configure_with_internal(hfrosc_freq)
2001378e:	4592                	lw	a1,4(sp)
20013790:	4532                	lw	a0,12(sp)
20013792:	4510                	lw	a2,8(a0)
20013794:	d432                	sw	a2,40(sp)
20013796:	4150                	lw	a2,4(a0)
20013798:	d232                	sw	a2,36(sp)
2001379a:	4108                	lw	a0,0(a0)
2001379c:	d02a                	sw	a0,32(sp)
2001379e:	1008                	add	a0,sp,32
200137a0:	00000097          	auipc	ra,0x0
200137a4:	432080e7          	jalr	1074(ra) # 20013bd2 <e310x_hal::clock::CoreClk::configure_with_internal>
200137a8:	c82a                	sw	a0,16(sp)
200137aa:	a009                	j	200137ac <e310x_hal::clock::CoreClk::freeze+0xba>
    }
200137ac:	4542                	lw	a0,16(sp)
200137ae:	50f6                	lw	ra,124(sp)
200137b0:	6109                	add	sp,sp,128
200137b2:	8082                	ret

200137b4 <e310x_hal::clock::CoreClk::freeze::{{closure}}>:
            .modify(|_, w| w.sel().bit(false).bypass().bit(true));
200137b4:	715d                	add	sp,sp,-80
200137b6:	c62a                	sw	a0,12(sp)
200137b8:	c82e                	sw	a1,16(sp)
200137ba:	ca2e                	sw	a1,20(sp)
200137bc:	d42e                	sw	a1,40(sp)
        Self {
200137be:	d22e                	sw	a1,36(sp)
    }
200137c0:	5512                	lw	a0,36(sp)
200137c2:	d62a                	sw	a0,44(sp)
200137c4:	4581                	li	a1,0
200137c6:	02b10923          	sb	a1,50(sp)
                self.w.bits = (self.w.bits & !(1 << { OF })) | ((<$U>::from(value) & 1) << { OF });
200137ca:	5532                	lw	a0,44(sp)
200137cc:	c0aa                	sw	a0,64(sp)
200137ce:	4108                	lw	a0,0(a0)
200137d0:	7641                	lui	a2,0xffff0
200137d2:	167d                	add	a2,a2,-1 # fffeffff <_sstack+0x7ffebfff>
200137d4:	8d71                	and	a0,a0,a2
200137d6:	02b109a3          	sb	a1,51(sp)
200137da:	55b2                	lw	a1,44(sp)
200137dc:	c4ae                	sw	a1,72(sp)
200137de:	c188                	sw	a0,0(a1)
                self.w
200137e0:	5532                	lw	a0,44(sp)
200137e2:	cc2a                	sw	a0,24(sp)
200137e4:	d02a                	sw	a0,32(sp)
        Self {
200137e6:	ce2a                	sw	a0,28(sp)
    }
200137e8:	4572                	lw	a0,28(sp)
200137ea:	da2a                	sw	a0,52(sp)
200137ec:	4585                	li	a1,1
200137ee:	02b10d23          	sb	a1,58(sp)
                self.w.bits = (self.w.bits & !(1 << { OF })) | ((<$U>::from(value) & 1) << { OF });
200137f2:	5552                	lw	a0,52(sp)
200137f4:	de2a                	sw	a0,60(sp)
200137f6:	4108                	lw	a0,0(a0)
200137f8:	02b10da3          	sb	a1,59(sp)
200137fc:	55d2                	lw	a1,52(sp)
200137fe:	c2ae                	sw	a1,68(sp)
20013800:	00040637          	lui	a2,0x40
20013804:	8d51                	or	a0,a0,a2
20013806:	c188                	sw	a0,0(a1)
                self.w
20013808:	5552                	lw	a0,52(sp)
2001380a:	c6aa                	sw	a0,76(sp)
2001380c:	6161                	add	sp,sp,80
2001380e:	8082                	ret

20013810 <e310x_hal::clock::CoreClk::configure_with_external>:
    fn configure_with_external(self, source_freq: Hertz) -> Hertz {
20013810:	7125                	add	sp,sp,-416
20013812:	18112e23          	sw	ra,412(sp)
20013816:	cc2e                	sw	a1,24(sp)
20013818:	ce2a                	sw	a0,28(sp)
2001381a:	d82e                	sw	a1,48(sp)
2001381c:	10008537          	lui	a0,0x10008
        let prci = unsafe { &*PRCI::ptr() };
20013820:	da2a                	sw	a0,52(sp)
20013822:	0511                	add	a0,a0,4 # 10008004 <.Lline_table_start1+0xffd8b8e>
20013824:	d02a                	sw	a0,32(sp)
20013826:	ccaa                	sw	a0,88(sp)
20013828:	4501                	li	a0,0
            f(&mut REG::Writer::from(W {
2001382a:	caaa                	sw	a0,84(sp)
2001382c:	4556                	lw	a0,84(sp)
2001382e:	d0aa                	sw	a0,96(sp)
    }
}
impl From<crate::W<HFXOSCCFG_SPEC>> for W {
    #[inline(always)]
    fn from(writer: crate::W<HFXOSCCFG_SPEC>) -> Self {
        W(writer)
20013830:	ceaa                	sw	a0,92(sp)
    }
20013832:	4576                	lw	a0,92(sp)
20013834:	c8aa                	sw	a0,80(sp)
20013836:	0888                	add	a0,sp,80
20013838:	c6aa                	sw	a0,76(sp)
2001383a:	4536                	lw	a0,76(sp)
2001383c:	00000097          	auipc	ra,0x0
20013840:	266080e7          	jalr	614(ra) # 20013aa2 <e310x_hal::clock::CoreClk::configure_with_external::{{closure}}>
20013844:	85aa                	mv	a1,a0
20013846:	5502                	lw	a0,32(sp)
20013848:	418c                	lw	a1,0(a1)
2001384a:	18a12623          	sw	a0,396(sp)
2001384e:	18b12823          	sw	a1,400(sp)
20013852:	18a12a23          	sw	a0,404(sp)
20013856:	00000097          	auipc	ra,0x0
2001385a:	e10080e7          	jalr	-496(ra) # 20013666 <core::ptr::write_volatile>
        prci.hfxosccfg.write(|w| w.enable().bit(true));
2001385e:	a009                	j	20013860 <e310x_hal::clock::CoreClk::configure_with_external+0x50>
20013860:	10008537          	lui	a0,0x10008
20013864:	0511                	add	a0,a0,4 # 10008004 <.Lline_table_start1+0xffd8b8e>
20013866:	c0aa                	sw	a0,64(sp)
20013868:	14a12423          	sw	a0,328(sp)
2001386c:	14a12623          	sw	a0,332(sp)
        unsafe { ptr::read_volatile(self.value.get()) }
20013870:	00000097          	auipc	ra,0x0
20013874:	de8080e7          	jalr	-536(ra) # 20013658 <core::ptr::read_volatile>
        REG::Reader::from(R {
20013878:	de2a                	sw	a0,60(sp)
2001387a:	5572                	lw	a0,60(sp)
2001387c:	c4aa                	sw	a0,72(sp)
        R(reader)
2001387e:	c2aa                	sw	a0,68(sp)
    }
20013880:	4516                	lw	a0,68(sp)
        while !prci.hfxosccfg.read().ready().bit_is_set() {}
20013882:	d42a                	sw	a0,40(sp)
20013884:	1028                	add	a0,sp,40
20013886:	dc2a                	sw	a0,56(sp)
20013888:	18a12c23          	sw	a0,408(sp)
        ENABLE_R::new(((self.bits >> 30) & 1) != 0)
    }
    #[doc = "Bit 31"]
    #[inline(always)]
    pub fn ready(&self) -> READY_R {
        READY_R::new(((self.bits >> 31) & 1) != 0)
2001388c:	5522                	lw	a0,40(sp)
2001388e:	817d                	srl	a0,a0,0x1f
20013890:	12a107a3          	sb	a0,303(sp)
        Self {
20013894:	12a10723          	sb	a0,302(sp)
    }
20013898:	12e14503          	lbu	a0,302(sp)
2001389c:	02a103a3          	sb	a0,39(sp)
200138a0:	02710513          	add	a0,sp,39
200138a4:	12a12223          	sw	a0,292(sp)
200138a8:	12a12423          	sw	a0,296(sp)
        self.bits
200138ac:	02714503          	lbu	a0,39(sp)
200138b0:	8905                	and	a0,a0,1
200138b2:	d55d                	beqz	a0,20013860 <e310x_hal::clock::CoreClk::configure_with_external+0x50>
200138b4:	a009                	j	200138b6 <e310x_hal::clock::CoreClk::configure_with_external+0xa6>
200138b6:	10008537          	lui	a0,0x10008
200138ba:	0521                	add	a0,a0,8 # 10008008 <.Lline_table_start1+0xffd8b92>
200138bc:	ca2a                	sw	a0,20(sp)
200138be:	cfaa                	sw	a0,220(sp)
200138c0:	12a12c23          	sw	a0,312(sp)
200138c4:	12a12e23          	sw	a0,316(sp)
200138c8:	00000097          	auipc	ra,0x0
200138cc:	d90080e7          	jalr	-624(ra) # 20013658 <core::ptr::read_volatile>
        let bits = self.register.get();
200138d0:	d1aa                	sw	a0,224(sp)
                &REG::Reader::from(R {
200138d2:	c9aa                	sw	a0,208(sp)
200138d4:	45ce                	lw	a1,208(sp)
200138d6:	d5ae                	sw	a1,232(sp)
        R(reader)
200138d8:	d3ae                	sw	a1,228(sp)
    }
200138da:	559e                	lw	a1,228(sp)
200138dc:	c7ae                	sw	a1,204(sp)
                &mut REG::Writer::from(W {
200138de:	cdaa                	sw	a0,216(sp)
200138e0:	456e                	lw	a0,216(sp)
200138e2:	d9aa                	sw	a0,240(sp)
        W(writer)
200138e4:	d7aa                	sw	a0,236(sp)
    }
200138e6:	553e                	lw	a0,236(sp)
200138e8:	cbaa                	sw	a0,212(sp)
200138ea:	01e8                	add	a0,sp,204
            f(
200138ec:	c3aa                	sw	a0,196(sp)
200138ee:	09c8                	add	a0,sp,212
200138f0:	c5aa                	sw	a0,200(sp)
200138f2:	451e                	lw	a0,196(sp)
200138f4:	45ae                	lw	a1,200(sp)
200138f6:	00000097          	auipc	ra,0x0
200138fa:	1de080e7          	jalr	478(ra) # 20013ad4 <e310x_hal::clock::CoreClk::configure_with_external::{{closure}}>
200138fe:	85aa                	mv	a1,a0
20013900:	4552                	lw	a0,20(sp)
20013902:	418c                	lw	a1,0(a1)
20013904:	14a12e23          	sw	a0,348(sp)
20013908:	16b12023          	sw	a1,352(sp)
2001390c:	16a12223          	sw	a0,356(sp)
        unsafe { ptr::write_volatile(self.value.get(), value) }
20013910:	00000097          	auipc	ra,0x0
20013914:	d56080e7          	jalr	-682(ra) # 20013666 <core::ptr::write_volatile>
20013918:	45f2                	lw	a1,28(sp)
2001391a:	4562                	lw	a0,24(sp)
        if source_freq.0 == self.coreclk.0 {
2001391c:	458c                	lw	a1,8(a1)
2001391e:	00b50c63          	beq	a0,a1,20013936 <e310x_hal::clock::CoreClk::configure_with_external+0x126>
20013922:	a009                	j	20013924 <e310x_hal::clock::CoreClk::configure_with_external+0x114>
            freq = self.configure_pll(source_freq, self.coreclk);
20013924:	45e2                	lw	a1,24(sp)
20013926:	4572                	lw	a0,28(sp)
20013928:	4510                	lw	a2,8(a0)
2001392a:	00000097          	auipc	ra,0x0
2001392e:	66a080e7          	jalr	1642(ra) # 20013f94 <e310x_hal::clock::CoreClk::configure_pll>
20013932:	d62a                	sw	a0,44(sp)
        if source_freq.0 == self.coreclk.0 {
20013934:	a0d9                	j	200139fa <e310x_hal::clock::CoreClk::configure_with_external+0x1ea>
            freq = source_freq;
20013936:	4562                	lw	a0,24(sp)
20013938:	d62a                	sw	a0,44(sp)
2001393a:	10008537          	lui	a0,0x10008
2001393e:	c62a                	sw	a0,12(sp)
20013940:	0521                	add	a0,a0,8 # 10008008 <.Lline_table_start1+0xffd8b92>
20013942:	c42a                	sw	a0,8(sp)
20013944:	10a12623          	sw	a0,268(sp)
20013948:	12a12823          	sw	a0,304(sp)
2001394c:	12a12a23          	sw	a0,308(sp)
        unsafe { ptr::read_volatile(self.value.get()) }
20013950:	00000097          	auipc	ra,0x0
20013954:	d08080e7          	jalr	-760(ra) # 20013658 <core::ptr::read_volatile>
        let bits = self.register.get();
20013958:	10a12823          	sw	a0,272(sp)
                &REG::Reader::from(R {
2001395c:	10a12023          	sw	a0,256(sp)
20013960:	10012583          	lw	a1,256(sp)
20013964:	10b12c23          	sw	a1,280(sp)
        R(reader)
20013968:	10b12a23          	sw	a1,276(sp)
    }
2001396c:	11412583          	lw	a1,276(sp)
20013970:	dfae                	sw	a1,252(sp)
                &mut REG::Writer::from(W {
20013972:	10a12423          	sw	a0,264(sp)
20013976:	10812503          	lw	a0,264(sp)
2001397a:	12a12023          	sw	a0,288(sp)
        W(writer)
2001397e:	10a12e23          	sw	a0,284(sp)
    }
20013982:	11c12503          	lw	a0,284(sp)
20013986:	10a12223          	sw	a0,260(sp)
2001398a:	19e8                	add	a0,sp,252
            f(
2001398c:	dbaa                	sw	a0,244(sp)
2001398e:	0248                	add	a0,sp,260
20013990:	ddaa                	sw	a0,248(sp)
20013992:	555e                	lw	a0,244(sp)
20013994:	55ee                	lw	a1,248(sp)
20013996:	00000097          	auipc	ra,0x0
2001399a:	172080e7          	jalr	370(ra) # 20013b08 <e310x_hal::clock::CoreClk::configure_with_external::{{closure}}>
2001399e:	85aa                	mv	a1,a0
200139a0:	4522                	lw	a0,8(sp)
200139a2:	418c                	lw	a1,0(a1)
200139a4:	14a12823          	sw	a0,336(sp)
200139a8:	14b12a23          	sw	a1,340(sp)
200139ac:	14a12c23          	sw	a0,344(sp)
        unsafe { ptr::write_volatile(self.value.get(), value) }
200139b0:	00000097          	auipc	ra,0x0
200139b4:	cb6080e7          	jalr	-842(ra) # 20013666 <core::ptr::write_volatile>
200139b8:	4532                	lw	a0,12(sp)
200139ba:	0531                	add	a0,a0,12
200139bc:	c82a                	sw	a0,16(sp)
200139be:	c52a                	sw	a0,136(sp)
200139c0:	10000513          	li	a0,256
            f(&mut REG::Writer::from(W {
200139c4:	c32a                	sw	a0,132(sp)
200139c6:	451a                	lw	a0,132(sp)
200139c8:	c92a                	sw	a0,144(sp)
    }
}
impl From<crate::W<PLLOUTDIV_SPEC>> for W {
    #[inline(always)]
    fn from(writer: crate::W<PLLOUTDIV_SPEC>) -> Self {
        W(writer)
200139ca:	c72a                	sw	a0,140(sp)
    }
200139cc:	453a                	lw	a0,140(sp)
200139ce:	c12a                	sw	a0,128(sp)
200139d0:	0108                	add	a0,sp,128
200139d2:	deaa                	sw	a0,124(sp)
200139d4:	5576                	lw	a0,124(sp)
200139d6:	00000097          	auipc	ra,0x0
200139da:	166080e7          	jalr	358(ra) # 20013b3c <e310x_hal::clock::CoreClk::configure_with_external::{{closure}}>
200139de:	85aa                	mv	a1,a0
200139e0:	4542                	lw	a0,16(sp)
200139e2:	418c                	lw	a1,0(a1)
200139e4:	16a12a23          	sw	a0,372(sp)
200139e8:	16b12c23          	sw	a1,376(sp)
200139ec:	16a12e23          	sw	a0,380(sp)
200139f0:	00000097          	auipc	ra,0x0
200139f4:	c76080e7          	jalr	-906(ra) # 20013666 <core::ptr::write_volatile>
            prci.plloutdiv.write(|w| w.divby1().bit(true));
200139f8:	a009                	j	200139fa <e310x_hal::clock::CoreClk::configure_with_external+0x1ea>
200139fa:	10008537          	lui	a0,0x10008
200139fe:	c22a                	sw	a0,4(sp)
20013a00:	0521                	add	a0,a0,8 # 10008008 <.Lline_table_start1+0xffd8b92>
20013a02:	c02a                	sw	a0,0(sp)
20013a04:	d72a                	sw	a0,172(sp)
20013a06:	14a12023          	sw	a0,320(sp)
20013a0a:	14a12223          	sw	a0,324(sp)
        unsafe { ptr::read_volatile(self.value.get()) }
20013a0e:	00000097          	auipc	ra,0x0
20013a12:	c4a080e7          	jalr	-950(ra) # 20013658 <core::ptr::read_volatile>
        let bits = self.register.get();
20013a16:	d92a                	sw	a0,176(sp)
                &REG::Reader::from(R {
20013a18:	d12a                	sw	a0,160(sp)
20013a1a:	558a                	lw	a1,160(sp)
20013a1c:	dd2e                	sw	a1,184(sp)
        R(reader)
20013a1e:	db2e                	sw	a1,180(sp)
    }
20013a20:	55da                	lw	a1,180(sp)
20013a22:	cf2e                	sw	a1,156(sp)
                &mut REG::Writer::from(W {
20013a24:	d52a                	sw	a0,168(sp)
20013a26:	552a                	lw	a0,168(sp)
20013a28:	c1aa                	sw	a0,192(sp)
        W(writer)
20013a2a:	df2a                	sw	a0,188(sp)
    }
20013a2c:	557a                	lw	a0,188(sp)
20013a2e:	d32a                	sw	a0,164(sp)
20013a30:	0968                	add	a0,sp,156
            f(
20013a32:	cb2a                	sw	a0,148(sp)
20013a34:	1148                	add	a0,sp,164
20013a36:	cd2a                	sw	a0,152(sp)
20013a38:	455a                	lw	a0,148(sp)
20013a3a:	45ea                	lw	a1,152(sp)
20013a3c:	00000097          	auipc	ra,0x0
20013a40:	130080e7          	jalr	304(ra) # 20013b6c <e310x_hal::clock::CoreClk::configure_with_external::{{closure}}>
20013a44:	85aa                	mv	a1,a0
20013a46:	4502                	lw	a0,0(sp)
20013a48:	418c                	lw	a1,0(a1)
20013a4a:	16a12423          	sw	a0,360(sp)
20013a4e:	16b12623          	sw	a1,364(sp)
20013a52:	16a12823          	sw	a0,368(sp)
        unsafe { ptr::write_volatile(self.value.get(), value) }
20013a56:	00000097          	auipc	ra,0x0
20013a5a:	c10080e7          	jalr	-1008(ra) # 20013666 <core::ptr::write_volatile>
20013a5e:	4512                	lw	a0,4(sp)
20013a60:	d8aa                	sw	a0,112(sp)
20013a62:	4501                	li	a0,0
            f(&mut REG::Writer::from(W {
20013a64:	d6aa                	sw	a0,108(sp)
20013a66:	5536                	lw	a0,108(sp)
20013a68:	dcaa                	sw	a0,120(sp)
    }
}
impl From<crate::W<HFROSCCFG_SPEC>> for W {
    #[inline(always)]
    fn from(writer: crate::W<HFROSCCFG_SPEC>) -> Self {
        W(writer)
20013a6a:	daaa                	sw	a0,116(sp)
    }
20013a6c:	5556                	lw	a0,116(sp)
20013a6e:	d4aa                	sw	a0,104(sp)
20013a70:	10a8                	add	a0,sp,104
20013a72:	d2aa                	sw	a0,100(sp)
20013a74:	5516                	lw	a0,100(sp)
20013a76:	00000097          	auipc	ra,0x0
20013a7a:	128080e7          	jalr	296(ra) # 20013b9e <e310x_hal::clock::CoreClk::configure_with_external::{{closure}}>
20013a7e:	85aa                	mv	a1,a0
20013a80:	4512                	lw	a0,4(sp)
20013a82:	418c                	lw	a1,0(a1)
20013a84:	18a12023          	sw	a0,384(sp)
20013a88:	18b12223          	sw	a1,388(sp)
20013a8c:	18a12423          	sw	a0,392(sp)
20013a90:	00000097          	auipc	ra,0x0
20013a94:	bd6080e7          	jalr	-1066(ra) # 20013666 <core::ptr::write_volatile>
        freq
20013a98:	5532                	lw	a0,44(sp)
    }
20013a9a:	19c12083          	lw	ra,412(sp)
20013a9e:	611d                	add	sp,sp,416
20013aa0:	8082                	ret

20013aa2 <e310x_hal::clock::CoreClk::configure_with_external::{{closure}}>:
        prci.hfxosccfg.write(|w| w.enable().bit(true));
20013aa2:	7179                	add	sp,sp,-48
20013aa4:	c62a                	sw	a0,12(sp)
20013aa6:	c82a                	sw	a0,16(sp)
20013aa8:	cc2a                	sw	a0,24(sp)
        Self {
20013aaa:	ca2a                	sw	a0,20(sp)
    }
20013aac:	4552                	lw	a0,20(sp)
20013aae:	ce2a                	sw	a0,28(sp)
20013ab0:	4585                	li	a1,1
20013ab2:	02b10123          	sb	a1,34(sp)
                self.w.bits = (self.w.bits & !(1 << { OF })) | ((<$U>::from(value) & 1) << { OF });
20013ab6:	4572                	lw	a0,28(sp)
20013ab8:	d22a                	sw	a0,36(sp)
20013aba:	4108                	lw	a0,0(a0)
20013abc:	02b101a3          	sb	a1,35(sp)
20013ac0:	45f2                	lw	a1,28(sp)
20013ac2:	d42e                	sw	a1,40(sp)
20013ac4:	40000637          	lui	a2,0x40000
20013ac8:	8d51                	or	a0,a0,a2
20013aca:	c188                	sw	a0,0(a1)
                self.w
20013acc:	4572                	lw	a0,28(sp)
20013ace:	d62a                	sw	a0,44(sp)
20013ad0:	6145                	add	sp,sp,48
20013ad2:	8082                	ret

20013ad4 <e310x_hal::clock::CoreClk::configure_with_external::{{closure}}>:
        prci.pllcfg.modify(|_, w| w.refsel().bit(true));
20013ad4:	7179                	add	sp,sp,-48
20013ad6:	c42a                	sw	a0,8(sp)
20013ad8:	c62e                	sw	a1,12(sp)
20013ada:	c82e                	sw	a1,16(sp)
20013adc:	cc2e                	sw	a1,24(sp)
        Self {
20013ade:	ca2e                	sw	a1,20(sp)
    }
20013ae0:	4552                	lw	a0,20(sp)
20013ae2:	ce2a                	sw	a0,28(sp)
20013ae4:	4585                	li	a1,1
20013ae6:	02b10123          	sb	a1,34(sp)
                self.w.bits = (self.w.bits & !(1 << { OF })) | ((<$U>::from(value) & 1) << { OF });
20013aea:	4572                	lw	a0,28(sp)
20013aec:	d22a                	sw	a0,36(sp)
20013aee:	4108                	lw	a0,0(a0)
20013af0:	02b101a3          	sb	a1,35(sp)
20013af4:	45f2                	lw	a1,28(sp)
20013af6:	d42e                	sw	a1,40(sp)
20013af8:	00020637          	lui	a2,0x20
20013afc:	8d51                	or	a0,a0,a2
20013afe:	c188                	sw	a0,0(a1)
                self.w
20013b00:	4572                	lw	a0,28(sp)
20013b02:	d62a                	sw	a0,44(sp)
20013b04:	6145                	add	sp,sp,48
20013b06:	8082                	ret

20013b08 <e310x_hal::clock::CoreClk::configure_with_external::{{closure}}>:
            prci.pllcfg.modify(|_, w| w.bypass().bit(true));
20013b08:	7179                	add	sp,sp,-48
20013b0a:	c42a                	sw	a0,8(sp)
20013b0c:	c62e                	sw	a1,12(sp)
20013b0e:	c82e                	sw	a1,16(sp)
20013b10:	cc2e                	sw	a1,24(sp)
        Self {
20013b12:	ca2e                	sw	a1,20(sp)
    }
20013b14:	4552                	lw	a0,20(sp)
20013b16:	ce2a                	sw	a0,28(sp)
20013b18:	4585                	li	a1,1
20013b1a:	02b10123          	sb	a1,34(sp)
                self.w.bits = (self.w.bits & !(1 << { OF })) | ((<$U>::from(value) & 1) << { OF });
20013b1e:	4572                	lw	a0,28(sp)
20013b20:	d22a                	sw	a0,36(sp)
20013b22:	4108                	lw	a0,0(a0)
20013b24:	02b101a3          	sb	a1,35(sp)
20013b28:	45f2                	lw	a1,28(sp)
20013b2a:	d42e                	sw	a1,40(sp)
20013b2c:	00040637          	lui	a2,0x40
20013b30:	8d51                	or	a0,a0,a2
20013b32:	c188                	sw	a0,0(a1)
                self.w
20013b34:	4572                	lw	a0,28(sp)
20013b36:	d62a                	sw	a0,44(sp)
20013b38:	6145                	add	sp,sp,48
20013b3a:	8082                	ret

20013b3c <e310x_hal::clock::CoreClk::configure_with_external::{{closure}}>:
            prci.plloutdiv.write(|w| w.divby1().bit(true));
20013b3c:	7179                	add	sp,sp,-48
20013b3e:	c62a                	sw	a0,12(sp)
20013b40:	c82a                	sw	a0,16(sp)
20013b42:	cc2a                	sw	a0,24(sp)
        Self {
20013b44:	ca2a                	sw	a0,20(sp)
    }
20013b46:	4552                	lw	a0,20(sp)
20013b48:	ce2a                	sw	a0,28(sp)
20013b4a:	4585                	li	a1,1
20013b4c:	02b10123          	sb	a1,34(sp)
                self.w.bits = (self.w.bits & !(1 << { OF })) | ((<$U>::from(value) & 1) << { OF });
20013b50:	4572                	lw	a0,28(sp)
20013b52:	d22a                	sw	a0,36(sp)
20013b54:	4108                	lw	a0,0(a0)
20013b56:	02b101a3          	sb	a1,35(sp)
20013b5a:	45f2                	lw	a1,28(sp)
20013b5c:	d42e                	sw	a1,40(sp)
20013b5e:	10056513          	or	a0,a0,256
20013b62:	c188                	sw	a0,0(a1)
                self.w
20013b64:	4572                	lw	a0,28(sp)
20013b66:	d62a                	sw	a0,44(sp)
20013b68:	6145                	add	sp,sp,48
20013b6a:	8082                	ret

20013b6c <e310x_hal::clock::CoreClk::configure_with_external::{{closure}}>:
        prci.pllcfg.modify(|_, w| w.sel().bit(true));
20013b6c:	7179                	add	sp,sp,-48
20013b6e:	c42a                	sw	a0,8(sp)
20013b70:	c62e                	sw	a1,12(sp)
20013b72:	c82e                	sw	a1,16(sp)
20013b74:	cc2e                	sw	a1,24(sp)
        Self {
20013b76:	ca2e                	sw	a1,20(sp)
    }
20013b78:	4552                	lw	a0,20(sp)
20013b7a:	ce2a                	sw	a0,28(sp)
20013b7c:	4585                	li	a1,1
20013b7e:	02b10123          	sb	a1,34(sp)
                self.w.bits = (self.w.bits & !(1 << { OF })) | ((<$U>::from(value) & 1) << { OF });
20013b82:	4572                	lw	a0,28(sp)
20013b84:	d22a                	sw	a0,36(sp)
20013b86:	4108                	lw	a0,0(a0)
20013b88:	02b101a3          	sb	a1,35(sp)
20013b8c:	45f2                	lw	a1,28(sp)
20013b8e:	d42e                	sw	a1,40(sp)
20013b90:	6641                	lui	a2,0x10
20013b92:	8d51                	or	a0,a0,a2
20013b94:	c188                	sw	a0,0(a1)
                self.w
20013b96:	4572                	lw	a0,28(sp)
20013b98:	d62a                	sw	a0,44(sp)
20013b9a:	6145                	add	sp,sp,48
20013b9c:	8082                	ret

20013b9e <e310x_hal::clock::CoreClk::configure_with_external::{{closure}}>:
        prci.hfrosccfg.write(|w| w.enable().bit(false));
20013b9e:	7179                	add	sp,sp,-48
20013ba0:	c62a                	sw	a0,12(sp)
20013ba2:	c82a                	sw	a0,16(sp)
20013ba4:	cc2a                	sw	a0,24(sp)
        Self {
20013ba6:	ca2a                	sw	a0,20(sp)
    }
20013ba8:	4552                	lw	a0,20(sp)
20013baa:	ce2a                	sw	a0,28(sp)
20013bac:	4581                	li	a1,0
20013bae:	02b10123          	sb	a1,34(sp)
                self.w.bits = (self.w.bits & !(1 << { OF })) | ((<$U>::from(value) & 1) << { OF });
20013bb2:	4572                	lw	a0,28(sp)
20013bb4:	d22a                	sw	a0,36(sp)
20013bb6:	4108                	lw	a0,0(a0)
20013bb8:	c0000637          	lui	a2,0xc0000
20013bbc:	167d                	add	a2,a2,-1 # bfffffff <_sstack+0x3fffbfff>
20013bbe:	8d71                	and	a0,a0,a2
20013bc0:	02b101a3          	sb	a1,35(sp)
20013bc4:	45f2                	lw	a1,28(sp)
20013bc6:	d42e                	sw	a1,40(sp)
20013bc8:	c188                	sw	a0,0(a1)
                self.w
20013bca:	4572                	lw	a0,28(sp)
20013bcc:	d62a                	sw	a0,44(sp)
20013bce:	6145                	add	sp,sp,48
20013bd0:	8082                	ret

20013bd2 <e310x_hal::clock::CoreClk::configure_with_internal>:
    fn configure_with_internal(self, hfrosc_freq: Hertz) -> Hertz {
20013bd2:	712d                	add	sp,sp,-288
20013bd4:	10112e23          	sw	ra,284(sp)
20013bd8:	cc2e                	sw	a1,24(sp)
20013bda:	ce2a                	sw	a0,28(sp)
20013bdc:	d22e                	sw	a1,36(sp)
20013bde:	10008637          	lui	a2,0x10008
        let prci = unsafe { &*PRCI::ptr() };
20013be2:	d432                	sw	a2,40(sp)
        if hfrosc_freq.0 == self.coreclk.0 {
20013be4:	4508                	lw	a0,8(a0)
20013be6:	06a58963          	beq	a1,a0,20013c58 <e310x_hal::clock::CoreClk::configure_with_internal+0x86>
20013bea:	a009                	j	20013bec <e310x_hal::clock::CoreClk::configure_with_internal+0x1a>
            freq = self.configure_pll(hfrosc_freq, self.coreclk);
20013bec:	45e2                	lw	a1,24(sp)
20013bee:	4572                	lw	a0,28(sp)
20013bf0:	4510                	lw	a2,8(a0)
20013bf2:	00000097          	auipc	ra,0x0
20013bf6:	3a2080e7          	jalr	930(ra) # 20013f94 <e310x_hal::clock::CoreClk::configure_pll>
20013bfa:	d02a                	sw	a0,32(sp)
20013bfc:	10008537          	lui	a0,0x10008
20013c00:	0521                	add	a0,a0,8 # 10008008 <.Lline_table_start1+0xffd8b92>
20013c02:	ca2a                	sw	a0,20(sp)
20013c04:	c72a                	sw	a0,140(sp)
20013c06:	cfaa                	sw	a0,220(sp)
20013c08:	d1aa                	sw	a0,224(sp)
        unsafe { ptr::read_volatile(self.value.get()) }
20013c0a:	00000097          	auipc	ra,0x0
20013c0e:	a4e080e7          	jalr	-1458(ra) # 20013658 <core::ptr::read_volatile>
        let bits = self.register.get();
20013c12:	c92a                	sw	a0,144(sp)
                &REG::Reader::from(R {
20013c14:	c12a                	sw	a0,128(sp)
20013c16:	458a                	lw	a1,128(sp)
20013c18:	cd2e                	sw	a1,152(sp)
        R(reader)
20013c1a:	cb2e                	sw	a1,148(sp)
    }
20013c1c:	45da                	lw	a1,148(sp)
20013c1e:	deae                	sw	a1,124(sp)
                &mut REG::Writer::from(W {
20013c20:	c52a                	sw	a0,136(sp)
20013c22:	452a                	lw	a0,136(sp)
20013c24:	d12a                	sw	a0,160(sp)
        W(writer)
20013c26:	cf2a                	sw	a0,156(sp)
    }
20013c28:	457a                	lw	a0,156(sp)
20013c2a:	c32a                	sw	a0,132(sp)
20013c2c:	18e8                	add	a0,sp,124
            f(
20013c2e:	daaa                	sw	a0,116(sp)
20013c30:	0148                	add	a0,sp,132
20013c32:	dcaa                	sw	a0,120(sp)
20013c34:	5556                	lw	a0,116(sp)
20013c36:	55e6                	lw	a1,120(sp)
20013c38:	00000097          	auipc	ra,0x0
20013c3c:	1b0080e7          	jalr	432(ra) # 20013de8 <e310x_hal::clock::CoreClk::configure_with_internal::{{closure}}>
20013c40:	85aa                	mv	a1,a0
20013c42:	4552                	lw	a0,20(sp)
20013c44:	418c                	lw	a1,0(a1)
20013c46:	ddaa                	sw	a0,248(sp)
20013c48:	dfae                	sw	a1,252(sp)
20013c4a:	10a12023          	sw	a0,256(sp)
        unsafe { ptr::write_volatile(self.value.get(), value) }
20013c4e:	00000097          	auipc	ra,0x0
20013c52:	a18080e7          	jalr	-1512(ra) # 20013666 <core::ptr::write_volatile>
            prci.pllcfg.modify(|_, w| w.sel().bit(true));
20013c56:	a865                	j	20013d0e <e310x_hal::clock::CoreClk::configure_with_internal+0x13c>
            freq = hfrosc_freq;
20013c58:	4562                	lw	a0,24(sp)
20013c5a:	d02a                	sw	a0,32(sp)
20013c5c:	10008537          	lui	a0,0x10008
20013c60:	0521                	add	a0,a0,8 # 10008008 <.Lline_table_start1+0xffd8b92>
20013c62:	c82a                	sw	a0,16(sp)
20013c64:	df2a                	sw	a0,188(sp)
20013c66:	cbaa                	sw	a0,212(sp)
20013c68:	cdaa                	sw	a0,216(sp)
        unsafe { ptr::read_volatile(self.value.get()) }
20013c6a:	00000097          	auipc	ra,0x0
20013c6e:	9ee080e7          	jalr	-1554(ra) # 20013658 <core::ptr::read_volatile>
        let bits = self.register.get();
20013c72:	c1aa                	sw	a0,192(sp)
                &REG::Reader::from(R {
20013c74:	d92a                	sw	a0,176(sp)
20013c76:	55ca                	lw	a1,176(sp)
20013c78:	c5ae                	sw	a1,200(sp)
        R(reader)
20013c7a:	c3ae                	sw	a1,196(sp)
    }
20013c7c:	459e                	lw	a1,196(sp)
20013c7e:	d72e                	sw	a1,172(sp)
                &mut REG::Writer::from(W {
20013c80:	dd2a                	sw	a0,184(sp)
20013c82:	556a                	lw	a0,184(sp)
20013c84:	c9aa                	sw	a0,208(sp)
        W(writer)
20013c86:	c7aa                	sw	a0,204(sp)
    }
20013c88:	453e                	lw	a0,204(sp)
20013c8a:	db2a                	sw	a0,180(sp)
20013c8c:	1168                	add	a0,sp,172
            f(
20013c8e:	d32a                	sw	a0,164(sp)
20013c90:	1948                	add	a0,sp,180
20013c92:	d52a                	sw	a0,168(sp)
20013c94:	551a                	lw	a0,164(sp)
20013c96:	55aa                	lw	a1,168(sp)
20013c98:	00000097          	auipc	ra,0x0
20013c9c:	0c0080e7          	jalr	192(ra) # 20013d58 <e310x_hal::clock::CoreClk::configure_with_internal::{{closure}}>
20013ca0:	85aa                	mv	a1,a0
20013ca2:	4542                	lw	a0,16(sp)
20013ca4:	418c                	lw	a1,0(a1)
20013ca6:	d7aa                	sw	a0,236(sp)
20013ca8:	d9ae                	sw	a1,240(sp)
20013caa:	dbaa                	sw	a0,244(sp)
        unsafe { ptr::write_volatile(self.value.get(), value) }
20013cac:	00000097          	auipc	ra,0x0
20013cb0:	9ba080e7          	jalr	-1606(ra) # 20013666 <core::ptr::write_volatile>
20013cb4:	4542                	lw	a0,16(sp)
20013cb6:	ceaa                	sw	a0,92(sp)
20013cb8:	d3aa                	sw	a0,228(sp)
20013cba:	d5aa                	sw	a0,232(sp)
        unsafe { ptr::read_volatile(self.value.get()) }
20013cbc:	00000097          	auipc	ra,0x0
20013cc0:	99c080e7          	jalr	-1636(ra) # 20013658 <core::ptr::read_volatile>
        let bits = self.register.get();
20013cc4:	d0aa                	sw	a0,96(sp)
                &REG::Reader::from(R {
20013cc6:	c8aa                	sw	a0,80(sp)
20013cc8:	45c6                	lw	a1,80(sp)
20013cca:	d4ae                	sw	a1,104(sp)
        R(reader)
20013ccc:	d2ae                	sw	a1,100(sp)
    }
20013cce:	5596                	lw	a1,100(sp)
20013cd0:	c6ae                	sw	a1,76(sp)
                &mut REG::Writer::from(W {
20013cd2:	ccaa                	sw	a0,88(sp)
20013cd4:	4566                	lw	a0,88(sp)
20013cd6:	d8aa                	sw	a0,112(sp)
        W(writer)
20013cd8:	d6aa                	sw	a0,108(sp)
    }
20013cda:	5536                	lw	a0,108(sp)
20013cdc:	caaa                	sw	a0,84(sp)
20013cde:	00e8                	add	a0,sp,76
            f(
20013ce0:	c2aa                	sw	a0,68(sp)
20013ce2:	08c8                	add	a0,sp,84
20013ce4:	c4aa                	sw	a0,72(sp)
20013ce6:	4516                	lw	a0,68(sp)
20013ce8:	45a6                	lw	a1,72(sp)
20013cea:	00000097          	auipc	ra,0x0
20013cee:	0ca080e7          	jalr	202(ra) # 20013db4 <e310x_hal::clock::CoreClk::configure_with_internal::{{closure}}>
20013cf2:	85aa                	mv	a1,a0
20013cf4:	4542                	lw	a0,16(sp)
20013cf6:	418c                	lw	a1,0(a1)
20013cf8:	10a12223          	sw	a0,260(sp)
20013cfc:	10b12423          	sw	a1,264(sp)
20013d00:	10a12623          	sw	a0,268(sp)
        unsafe { ptr::write_volatile(self.value.get(), value) }
20013d04:	00000097          	auipc	ra,0x0
20013d08:	962080e7          	jalr	-1694(ra) # 20013666 <core::ptr::write_volatile>
            prci.pllcfg.modify(|_, w| w.bypass().bit(true));
20013d0c:	a009                	j	20013d0e <e310x_hal::clock::CoreClk::configure_with_internal+0x13c>
20013d0e:	10008537          	lui	a0,0x10008
20013d12:	0511                	add	a0,a0,4 # 10008004 <.Lline_table_start1+0xffd8b8e>
20013d14:	c62a                	sw	a0,12(sp)
20013d16:	dc2a                	sw	a0,56(sp)
20013d18:	4501                	li	a0,0
            f(&mut REG::Writer::from(W {
20013d1a:	da2a                	sw	a0,52(sp)
20013d1c:	5552                	lw	a0,52(sp)
20013d1e:	c0aa                	sw	a0,64(sp)
        W(writer)
20013d20:	de2a                	sw	a0,60(sp)
    }
20013d22:	5572                	lw	a0,60(sp)
20013d24:	d82a                	sw	a0,48(sp)
20013d26:	1808                	add	a0,sp,48
20013d28:	d62a                	sw	a0,44(sp)
20013d2a:	5532                	lw	a0,44(sp)
20013d2c:	00000097          	auipc	ra,0x0
20013d30:	0ee080e7          	jalr	238(ra) # 20013e1a <e310x_hal::clock::CoreClk::configure_with_internal::{{closure}}>
20013d34:	85aa                	mv	a1,a0
20013d36:	4532                	lw	a0,12(sp)
20013d38:	418c                	lw	a1,0(a1)
20013d3a:	10a12823          	sw	a0,272(sp)
20013d3e:	10b12a23          	sw	a1,276(sp)
20013d42:	10a12c23          	sw	a0,280(sp)
20013d46:	00000097          	auipc	ra,0x0
20013d4a:	920080e7          	jalr	-1760(ra) # 20013666 <core::ptr::write_volatile>
        freq
20013d4e:	5502                	lw	a0,32(sp)
    }
20013d50:	11c12083          	lw	ra,284(sp)
20013d54:	6115                	add	sp,sp,288
20013d56:	8082                	ret

20013d58 <e310x_hal::clock::CoreClk::configure_with_internal::{{closure}}>:
                .modify(|_, w| w.sel().bit(false).bypass().bit(true));
20013d58:	715d                	add	sp,sp,-80
20013d5a:	c62a                	sw	a0,12(sp)
20013d5c:	c82e                	sw	a1,16(sp)
20013d5e:	ca2e                	sw	a1,20(sp)
20013d60:	d42e                	sw	a1,40(sp)
        Self {
20013d62:	d22e                	sw	a1,36(sp)
    }
20013d64:	5512                	lw	a0,36(sp)
20013d66:	d62a                	sw	a0,44(sp)
20013d68:	4581                	li	a1,0
20013d6a:	02b10923          	sb	a1,50(sp)
                self.w.bits = (self.w.bits & !(1 << { OF })) | ((<$U>::from(value) & 1) << { OF });
20013d6e:	5532                	lw	a0,44(sp)
20013d70:	c0aa                	sw	a0,64(sp)
20013d72:	4108                	lw	a0,0(a0)
20013d74:	7641                	lui	a2,0xffff0
20013d76:	167d                	add	a2,a2,-1 # fffeffff <_sstack+0x7ffebfff>
20013d78:	8d71                	and	a0,a0,a2
20013d7a:	02b109a3          	sb	a1,51(sp)
20013d7e:	55b2                	lw	a1,44(sp)
20013d80:	c4ae                	sw	a1,72(sp)
20013d82:	c188                	sw	a0,0(a1)
                self.w
20013d84:	5532                	lw	a0,44(sp)
20013d86:	cc2a                	sw	a0,24(sp)
20013d88:	d02a                	sw	a0,32(sp)
        Self {
20013d8a:	ce2a                	sw	a0,28(sp)
    }
20013d8c:	4572                	lw	a0,28(sp)
20013d8e:	da2a                	sw	a0,52(sp)
20013d90:	4585                	li	a1,1
20013d92:	02b10d23          	sb	a1,58(sp)
                self.w.bits = (self.w.bits & !(1 << { OF })) | ((<$U>::from(value) & 1) << { OF });
20013d96:	5552                	lw	a0,52(sp)
20013d98:	de2a                	sw	a0,60(sp)
20013d9a:	4108                	lw	a0,0(a0)
20013d9c:	02b10da3          	sb	a1,59(sp)
20013da0:	55d2                	lw	a1,52(sp)
20013da2:	c2ae                	sw	a1,68(sp)
20013da4:	00040637          	lui	a2,0x40
20013da8:	8d51                	or	a0,a0,a2
20013daa:	c188                	sw	a0,0(a1)
                self.w
20013dac:	5552                	lw	a0,52(sp)
20013dae:	c6aa                	sw	a0,76(sp)
20013db0:	6161                	add	sp,sp,80
20013db2:	8082                	ret

20013db4 <e310x_hal::clock::CoreClk::configure_with_internal::{{closure}}>:
            prci.pllcfg.modify(|_, w| w.bypass().bit(true));
20013db4:	7179                	add	sp,sp,-48
20013db6:	c42a                	sw	a0,8(sp)
20013db8:	c62e                	sw	a1,12(sp)
20013dba:	c82e                	sw	a1,16(sp)
20013dbc:	cc2e                	sw	a1,24(sp)
        Self {
20013dbe:	ca2e                	sw	a1,20(sp)
    }
20013dc0:	4552                	lw	a0,20(sp)
20013dc2:	ce2a                	sw	a0,28(sp)
20013dc4:	4585                	li	a1,1
20013dc6:	02b10123          	sb	a1,34(sp)
                self.w.bits = (self.w.bits & !(1 << { OF })) | ((<$U>::from(value) & 1) << { OF });
20013dca:	4572                	lw	a0,28(sp)
20013dcc:	d22a                	sw	a0,36(sp)
20013dce:	4108                	lw	a0,0(a0)
20013dd0:	02b101a3          	sb	a1,35(sp)
20013dd4:	45f2                	lw	a1,28(sp)
20013dd6:	d42e                	sw	a1,40(sp)
20013dd8:	00040637          	lui	a2,0x40
20013ddc:	8d51                	or	a0,a0,a2
20013dde:	c188                	sw	a0,0(a1)
                self.w
20013de0:	4572                	lw	a0,28(sp)
20013de2:	d62a                	sw	a0,44(sp)
20013de4:	6145                	add	sp,sp,48
20013de6:	8082                	ret

20013de8 <e310x_hal::clock::CoreClk::configure_with_internal::{{closure}}>:
            prci.pllcfg.modify(|_, w| w.sel().bit(true));
20013de8:	7179                	add	sp,sp,-48
20013dea:	c42a                	sw	a0,8(sp)
20013dec:	c62e                	sw	a1,12(sp)
20013dee:	c82e                	sw	a1,16(sp)
20013df0:	cc2e                	sw	a1,24(sp)
        Self {
20013df2:	ca2e                	sw	a1,20(sp)
    }
20013df4:	4552                	lw	a0,20(sp)
20013df6:	ce2a                	sw	a0,28(sp)
20013df8:	4585                	li	a1,1
20013dfa:	02b10123          	sb	a1,34(sp)
                self.w.bits = (self.w.bits & !(1 << { OF })) | ((<$U>::from(value) & 1) << { OF });
20013dfe:	4572                	lw	a0,28(sp)
20013e00:	d22a                	sw	a0,36(sp)
20013e02:	4108                	lw	a0,0(a0)
20013e04:	02b101a3          	sb	a1,35(sp)
20013e08:	45f2                	lw	a1,28(sp)
20013e0a:	d42e                	sw	a1,40(sp)
20013e0c:	6641                	lui	a2,0x10
20013e0e:	8d51                	or	a0,a0,a2
20013e10:	c188                	sw	a0,0(a1)
                self.w
20013e12:	4572                	lw	a0,28(sp)
20013e14:	d62a                	sw	a0,44(sp)
20013e16:	6145                	add	sp,sp,48
20013e18:	8082                	ret

20013e1a <e310x_hal::clock::CoreClk::configure_with_internal::{{closure}}>:
        prci.hfxosccfg.write(|w| w.enable().bit(false));
20013e1a:	7179                	add	sp,sp,-48
20013e1c:	c62a                	sw	a0,12(sp)
20013e1e:	c82a                	sw	a0,16(sp)
20013e20:	cc2a                	sw	a0,24(sp)
        Self {
20013e22:	ca2a                	sw	a0,20(sp)
    }
20013e24:	4552                	lw	a0,20(sp)
20013e26:	ce2a                	sw	a0,28(sp)
20013e28:	4581                	li	a1,0
20013e2a:	02b10123          	sb	a1,34(sp)
                self.w.bits = (self.w.bits & !(1 << { OF })) | ((<$U>::from(value) & 1) << { OF });
20013e2e:	4572                	lw	a0,28(sp)
20013e30:	d22a                	sw	a0,36(sp)
20013e32:	4108                	lw	a0,0(a0)
20013e34:	c0000637          	lui	a2,0xc0000
20013e38:	167d                	add	a2,a2,-1 # bfffffff <_sstack+0x3fffbfff>
20013e3a:	8d71                	and	a0,a0,a2
20013e3c:	02b101a3          	sb	a1,35(sp)
20013e40:	45f2                	lw	a1,28(sp)
20013e42:	d42e                	sw	a1,40(sp)
20013e44:	c188                	sw	a0,0(a1)
                self.w
20013e46:	4572                	lw	a0,28(sp)
20013e48:	d62a                	sw	a0,44(sp)
20013e4a:	6145                	add	sp,sp,48
20013e4c:	8082                	ret

20013e4e <e310x_hal::clock::CoreClk::configure_hfrosc>:
    fn configure_hfrosc(&self) -> Hertz {
20013e4e:	7159                	add	sp,sp,-112
20013e50:	d686                	sw	ra,108(sp)
20013e52:	ca2a                	sw	a0,20(sp)
20013e54:	10008537          	lui	a0,0x10008
        let prci = unsafe { &*PRCI::ptr() };
20013e58:	c22a                	sw	a0,4(sp)
20013e5a:	cc2a                	sw	a0,24(sp)
20013e5c:	de2a                	sw	a0,60(sp)
20013e5e:	4501                	li	a0,0
            f(&mut REG::Writer::from(W {
20013e60:	dc2a                	sw	a0,56(sp)
20013e62:	5562                	lw	a0,56(sp)
20013e64:	c2aa                	sw	a0,68(sp)
        W(writer)
20013e66:	c0aa                	sw	a0,64(sp)
    }
20013e68:	4506                	lw	a0,64(sp)
20013e6a:	da2a                	sw	a0,52(sp)
20013e6c:	1848                	add	a0,sp,52
20013e6e:	d82a                	sw	a0,48(sp)
20013e70:	5542                	lw	a0,48(sp)
20013e72:	00000097          	auipc	ra,0x0
20013e76:	07a080e7          	jalr	122(ra) # 20013eec <e310x_hal::clock::CoreClk::configure_hfrosc::{{closure}}>
20013e7a:	85aa                	mv	a1,a0
20013e7c:	4512                	lw	a0,4(sp)
20013e7e:	418c                	lw	a1,0(a1)
20013e80:	ceaa                	sw	a0,92(sp)
20013e82:	d0ae                	sw	a1,96(sp)
20013e84:	d2aa                	sw	a0,100(sp)
20013e86:	fffff097          	auipc	ra,0xfffff
20013e8a:	7e0080e7          	jalr	2016(ra) # 20013666 <core::ptr::write_volatile>
        prci.hfrosccfg
20013e8e:	a009                	j	20013e90 <e310x_hal::clock::CoreClk::configure_hfrosc+0x42>
20013e90:	10008537          	lui	a0,0x10008
20013e94:	d22a                	sw	a0,36(sp)
20013e96:	caaa                	sw	a0,84(sp)
20013e98:	ccaa                	sw	a0,88(sp)
        unsafe { ptr::read_volatile(self.value.get()) }
20013e9a:	fffff097          	auipc	ra,0xfffff
20013e9e:	7be080e7          	jalr	1982(ra) # 20013658 <core::ptr::read_volatile>
        REG::Reader::from(R {
20013ea2:	d02a                	sw	a0,32(sp)
20013ea4:	5502                	lw	a0,32(sp)
20013ea6:	d62a                	sw	a0,44(sp)
        R(reader)
20013ea8:	d42a                	sw	a0,40(sp)
    }
20013eaa:	5522                	lw	a0,40(sp)
        while !prci.hfrosccfg.read().ready().bit_is_set() {}
20013eac:	c82a                	sw	a0,16(sp)
20013eae:	0808                	add	a0,sp,16
20013eb0:	ce2a                	sw	a0,28(sp)
20013eb2:	d4aa                	sw	a0,104(sp)
        ENABLE_R::new(((self.bits >> 30) & 1) != 0)
    }
    #[doc = "Bit 31"]
    #[inline(always)]
    pub fn ready(&self) -> READY_R {
        READY_R::new(((self.bits >> 31) & 1) != 0)
20013eb4:	4542                	lw	a0,16(sp)
20013eb6:	817d                	srl	a0,a0,0x1f
20013eb8:	04a109a3          	sb	a0,83(sp)
        Self {
20013ebc:	04a10923          	sb	a0,82(sp)
    }
20013ec0:	05214503          	lbu	a0,82(sp)
20013ec4:	00a107a3          	sb	a0,15(sp)
20013ec8:	00f10513          	add	a0,sp,15
20013ecc:	c4aa                	sw	a0,72(sp)
20013ece:	c6aa                	sw	a0,76(sp)
        self.bits
20013ed0:	00f14503          	lbu	a0,15(sp)
20013ed4:	8905                	and	a0,a0,1
20013ed6:	dd4d                	beqz	a0,20013e90 <e310x_hal::clock::CoreClk::configure_hfrosc+0x42>
20013ed8:	a009                	j	20013eda <e310x_hal::clock::CoreClk::configure_hfrosc+0x8c>
20013eda:	00d29537          	lui	a0,0xd29
20013ede:	24050513          	add	a0,a0,576 # d29240 <.Lline_table_start1+0xcf9dca>
        Hertz(13_800_000)
20013ee2:	c42a                	sw	a0,8(sp)
    }
20013ee4:	4522                	lw	a0,8(sp)
20013ee6:	50b6                	lw	ra,108(sp)
20013ee8:	6165                	add	sp,sp,112
20013eea:	8082                	ret

20013eec <e310x_hal::clock::CoreClk::configure_hfrosc::{{closure}}>:
            .write(|w| unsafe { w.div().bits(4).trim().bits(16).enable().bit(true) });
20013eec:	7159                	add	sp,sp,-112
20013eee:	d686                	sw	ra,108(sp)
20013ef0:	c82a                	sw	a0,16(sp)
20013ef2:	ca2a                	sw	a0,20(sp)
20013ef4:	da2a                	sw	a0,52(sp)
        Self {
20013ef6:	d82a                	sw	a0,48(sp)
    }
20013ef8:	5542                	lw	a0,48(sp)
20013efa:	c0aa                	sw	a0,64(sp)
20013efc:	4511                	li	a0,4
20013efe:	04a103a3          	sb	a0,71(sp)
                self.w.bits = (self.w.bits & !(Self::MASK << { OF }))
20013f02:	4586                	lw	a1,64(sp)
20013f04:	caae                	sw	a1,84(sp)
20013f06:	418c                	lw	a1,0(a1)
20013f08:	fc05f593          	and	a1,a1,-64
                    | ((value.into() & Self::MASK) << { OF });
20013f0c:	c22e                	sw	a1,4(sp)
20013f0e:	fffff097          	auipc	ra,0xfffff
20013f12:	79a080e7          	jalr	1946(ra) # 200136a8 <<T as core::convert::Into<U>>::into>
20013f16:	85aa                	mv	a1,a0
20013f18:	4512                	lw	a0,4(sp)
20013f1a:	03f5f613          	and	a2,a1,63
                self.w.bits = (self.w.bits & !(Self::MASK << { OF }))
20013f1e:	4586                	lw	a1,64(sp)
20013f20:	d0ae                	sw	a1,96(sp)
20013f22:	8d51                	or	a0,a0,a2
20013f24:	c188                	sw	a0,0(a1)
                self.w
20013f26:	4506                	lw	a0,64(sp)
20013f28:	cc2a                	sw	a0,24(sp)
20013f2a:	d62a                	sw	a0,44(sp)
        Self {
20013f2c:	d42a                	sw	a0,40(sp)
    }
20013f2e:	5522                	lw	a0,40(sp)
20013f30:	c4aa                	sw	a0,72(sp)
20013f32:	4541                	li	a0,16
20013f34:	04a107a3          	sb	a0,79(sp)
                self.w.bits = (self.w.bits & !(Self::MASK << { OF }))
20013f38:	45a6                	lw	a1,72(sp)
20013f3a:	c8ae                	sw	a1,80(sp)
20013f3c:	418c                	lw	a1,0(a1)
20013f3e:	ffe10637          	lui	a2,0xffe10
20013f42:	167d                	add	a2,a2,-1 # ffe0ffff <_sstack+0x7fe0bfff>
20013f44:	8df1                	and	a1,a1,a2
                    | ((value.into() & Self::MASK) << { OF });
20013f46:	c42e                	sw	a1,8(sp)
20013f48:	fffff097          	auipc	ra,0xfffff
20013f4c:	760080e7          	jalr	1888(ra) # 200136a8 <<T as core::convert::Into<U>>::into>
20013f50:	85aa                	mv	a1,a0
20013f52:	4522                	lw	a0,8(sp)
20013f54:	89fd                	and	a1,a1,31
20013f56:	01059613          	sll	a2,a1,0x10
                self.w.bits = (self.w.bits & !(Self::MASK << { OF }))
20013f5a:	45a6                	lw	a1,72(sp)
20013f5c:	ceae                	sw	a1,92(sp)
20013f5e:	8d51                	or	a0,a0,a2
20013f60:	c188                	sw	a0,0(a1)
                self.w
20013f62:	4526                	lw	a0,72(sp)
20013f64:	ce2a                	sw	a0,28(sp)
20013f66:	d22a                	sw	a0,36(sp)
        Self {
20013f68:	d02a                	sw	a0,32(sp)
    }
20013f6a:	5502                	lw	a0,32(sp)
20013f6c:	dc2a                	sw	a0,56(sp)
20013f6e:	4585                	li	a1,1
20013f70:	02b10f23          	sb	a1,62(sp)
                self.w.bits = (self.w.bits & !(1 << { OF })) | ((<$U>::from(value) & 1) << { OF });
20013f74:	5562                	lw	a0,56(sp)
20013f76:	ccaa                	sw	a0,88(sp)
20013f78:	4108                	lw	a0,0(a0)
20013f7a:	02b10fa3          	sb	a1,63(sp)
20013f7e:	55e2                	lw	a1,56(sp)
20013f80:	d2ae                	sw	a1,100(sp)
20013f82:	40000637          	lui	a2,0x40000
20013f86:	8d51                	or	a0,a0,a2
20013f88:	c188                	sw	a0,0(a1)
                self.w
20013f8a:	5562                	lw	a0,56(sp)
20013f8c:	d4aa                	sw	a0,104(sp)
20013f8e:	50b6                	lw	ra,108(sp)
20013f90:	6165                	add	sp,sp,112
20013f92:	8082                	ret

20013f94 <e310x_hal::clock::CoreClk::configure_pll>:
    fn configure_pll(&self, pllref_freq: Hertz, divout_freq: Hertz) -> Hertz {
20013f94:	7145                	add	sp,sp,-464
20013f96:	1c112623          	sw	ra,460(sp)
20013f9a:	c932                	sw	a2,144(sp)
20013f9c:	cb2e                	sw	a1,148(sp)
        let mtime = MTIME;
20013f9e:	cfaa                	sw	a0,220(sp)
20013fa0:	d1ae                	sw	a1,224(sp)
20013fa2:	d3b2                	sw	a2,228(sp)
        let pllref_freq = pllref_freq.0;
20013fa4:	d5ae                	sw	a1,232(sp)
20013fa6:	005b9537          	lui	a0,0x5b9
20013faa:	d7f50513          	add	a0,a0,-641 # 5b8d7f <.Lline_table_start1+0x589909>
        assert!(PLLREF_MIN <= pllref_freq && pllref_freq <= PLLREF_MAX);
20013fae:	02b56263          	bltu	a0,a1,20013fd2 <e310x_hal::clock::CoreClk::configure_pll+0x3e>
20013fb2:	a009                	j	20013fb4 <e310x_hal::clock::CoreClk::configure_pll+0x20>
20013fb4:	20018537          	lui	a0,0x20018
20013fb8:	35f50513          	add	a0,a0,863 # 2001835f <.L__unnamed_11>
20013fbc:	200185b7          	lui	a1,0x20018
20013fc0:	40858613          	add	a2,a1,1032 # 20018408 <.L__unnamed_12>
20013fc4:	04800593          	li	a1,72
20013fc8:	00001097          	auipc	ra,0x1
20013fcc:	4c4080e7          	jalr	1220(ra) # 2001548c <core::panicking::panic>
20013fd0:	0000                	unimp
20013fd2:	45da                	lw	a1,148(sp)
20013fd4:	02dc7537          	lui	a0,0x2dc7
20013fd8:	c0050513          	add	a0,a0,-1024 # 2dc6c00 <.Lline_table_start1+0x2d9778a>
20013fdc:	fcb56ce3          	bltu	a0,a1,20013fb4 <e310x_hal::clock::CoreClk::configure_pll+0x20>
20013fe0:	a009                	j	20013fe2 <e310x_hal::clock::CoreClk::configure_pll+0x4e>
        let divout_freq = divout_freq.0;
20013fe2:	45ca                	lw	a1,144(sp)
20013fe4:	d7ae                	sw	a1,236(sp)
20013fe6:	0005c537          	lui	a0,0x5c
20013fea:	8d750513          	add	a0,a0,-1833 # 5b8d7 <.Lline_table_start1+0x2c461>
        assert!(DIVOUT_MIN <= divout_freq && divout_freq <= DIVOUT_MAX);
20013fee:	02b56263          	bltu	a0,a1,20014012 <e310x_hal::clock::CoreClk::configure_pll+0x7e>
20013ff2:	a009                	j	20013ff4 <e310x_hal::clock::CoreClk::configure_pll+0x60>
20013ff4:	20018537          	lui	a0,0x20018
20013ff8:	41850513          	add	a0,a0,1048 # 20018418 <.L__unnamed_13>
20013ffc:	200185b7          	lui	a1,0x20018
20014000:	46058613          	add	a2,a1,1120 # 20018460 <.L__unnamed_14>
20014004:	04800593          	li	a1,72
20014008:	00001097          	auipc	ra,0x1
2001400c:	484080e7          	jalr	1156(ra) # 2001548c <core::panicking::panic>
20014010:	0000                	unimp
20014012:	45ca                	lw	a1,144(sp)
20014014:	16e36537          	lui	a0,0x16e36
20014018:	fcb56ee3          	bltu	a0,a1,20013ff4 <e310x_hal::clock::CoreClk::configure_pll+0x60>
2001401c:	a009                	j	2001401e <e310x_hal::clock::CoreClk::configure_pll+0x8a>
        let d = PLLOUT_MAX / divout_freq;
2001401e:	454a                	lw	a0,144(sp)
20014020:	cd09                	beqz	a0,2001403a <e310x_hal::clock::CoreClk::configure_pll+0xa6>
20014022:	a009                	j	20014024 <e310x_hal::clock::CoreClk::configure_pll+0x90>
20014024:	45ca                	lw	a1,144(sp)
20014026:	16e36537          	lui	a0,0x16e36
2001402a:	02b555b3          	divu	a1,a0,a1
2001402e:	c72e                	sw	a1,140(sp)
20014030:	d9ae                	sw	a1,240(sp)
20014032:	4505                	li	a0,1
        if d > 1 {
20014034:	02b56763          	bltu	a0,a1,20014062 <e310x_hal::clock::CoreClk::configure_pll+0xce>
20014038:	a839                	j	20014056 <e310x_hal::clock::CoreClk::configure_pll+0xc2>
        let d = PLLOUT_MAX / divout_freq;
2001403a:	20018537          	lui	a0,0x20018
2001403e:	48050513          	add	a0,a0,1152 # 20018480 <str.2>
20014042:	200185b7          	lui	a1,0x20018
20014046:	47058613          	add	a2,a1,1136 # 20018470 <.L__unnamed_15>
2001404a:	45e5                	li	a1,25
2001404c:	00001097          	auipc	ra,0x1
20014050:	440080e7          	jalr	1088(ra) # 2001548c <core::panicking::panic>
20014054:	0000                	unimp
20014056:	4501                	li	a0,0
            divider_div = 0;
20014058:	d12a                	sw	a0,160(sp)
2001405a:	4505                	li	a0,1
            divider_bypass = true;
2001405c:	0aa103a3          	sb	a0,167(sp)
        if d > 1 {
20014060:	a811                	j	20014074 <e310x_hal::clock::CoreClk::configure_pll+0xe0>
20014062:	45ba                	lw	a1,140(sp)
20014064:	4501                	li	a0,0
            divider_bypass = false;
20014066:	0aa103a3          	sb	a0,167(sp)
2001406a:	08000513          	li	a0,128
            if d > 128 {
2001406e:	00b56f63          	bltu	a0,a1,2001408c <e310x_hal::clock::CoreClk::configure_pll+0xf8>
20014072:	a031                	j	2001407e <e310x_hal::clock::CoreClk::configure_pll+0xea>
        let d = if divider_bypass {
20014074:	0a714503          	lbu	a0,167(sp)
20014078:	8905                	and	a0,a0,1
2001407a:	e521                	bnez	a0,200140c2 <e310x_hal::clock::CoreClk::configure_pll+0x12e>
2001407c:	a835                	j	200140b8 <e310x_hal::clock::CoreClk::configure_pll+0x124>
                divider_div = (d / 2) - 1;
2001407e:	453a                	lw	a0,140(sp)
20014080:	8105                	srl	a0,a0,0x1
20014082:	fff50593          	add	a1,a0,-1
20014086:	c52e                	sw	a1,136(sp)
20014088:	c909                	beqz	a0,2001409a <e310x_hal::clock::CoreClk::configure_pll+0x106>
2001408a:	a029                	j	20014094 <e310x_hal::clock::CoreClk::configure_pll+0x100>
2001408c:	03f00513          	li	a0,63
                divider_div = (128 / 2) - 1;
20014090:	d12a                	sw	a0,160(sp)
            if d > 128 {
20014092:	b7cd                	j	20014074 <e310x_hal::clock::CoreClk::configure_pll+0xe0>
                divider_div = (d / 2) - 1;
20014094:	452a                	lw	a0,136(sp)
20014096:	d12a                	sw	a0,160(sp)
            if d > 128 {
20014098:	bff1                	j	20014074 <e310x_hal::clock::CoreClk::configure_pll+0xe0>
                divider_div = (d / 2) - 1;
2001409a:	20018537          	lui	a0,0x20018
2001409e:	4b050513          	add	a0,a0,1200 # 200184b0 <str.3>
200140a2:	200185b7          	lui	a1,0x20018
200140a6:	49c58613          	add	a2,a1,1180 # 2001849c <.L__unnamed_16>
200140aa:	02100593          	li	a1,33
200140ae:	00001097          	auipc	ra,0x1
200140b2:	3de080e7          	jalr	990(ra) # 2001548c <core::panicking::panic>
200140b6:	0000                	unimp
            2 * (divider_div + 1)
200140b8:	550a                	lw	a0,160(sp)
200140ba:	0505                	add	a0,a0,1
200140bc:	c32a                	sw	a0,132(sp)
200140be:	cd01                	beqz	a0,200140d6 <e310x_hal::clock::CoreClk::configure_pll+0x142>
200140c0:	a021                	j	200140c8 <e310x_hal::clock::CoreClk::configure_pll+0x134>
200140c2:	4505                	li	a0,1
            1
200140c4:	d52a                	sw	a0,168(sp)
        let d = if divider_bypass {
200140c6:	a881                	j	20014116 <e310x_hal::clock::CoreClk::configure_pll+0x182>
            2 * (divider_div + 1)
200140c8:	459a                	lw	a1,132(sp)
200140ca:	00b58533          	add	a0,a1,a1
200140ce:	c12a                	sw	a0,128(sp)
200140d0:	02b56463          	bltu	a0,a1,200140f8 <e310x_hal::clock::CoreClk::configure_pll+0x164>
200140d4:	a839                	j	200140f2 <e310x_hal::clock::CoreClk::configure_pll+0x15e>
200140d6:	20018537          	lui	a0,0x20018
200140da:	4f050513          	add	a0,a0,1264 # 200184f0 <str.4>
200140de:	200185b7          	lui	a1,0x20018
200140e2:	4d458613          	add	a2,a1,1236 # 200184d4 <.L__unnamed_17>
200140e6:	45f1                	li	a1,28
200140e8:	00001097          	auipc	ra,0x1
200140ec:	3a4080e7          	jalr	932(ra) # 2001548c <core::panicking::panic>
200140f0:	0000                	unimp
200140f2:	450a                	lw	a0,128(sp)
200140f4:	d52a                	sw	a0,168(sp)
        let d = if divider_bypass {
200140f6:	a005                	j	20014116 <e310x_hal::clock::CoreClk::configure_pll+0x182>
            2 * (divider_div + 1)
200140f8:	20018537          	lui	a0,0x20018
200140fc:	52050513          	add	a0,a0,1312 # 20018520 <str.5>
20014100:	200185b7          	lui	a1,0x20018
20014104:	50c58613          	add	a2,a1,1292 # 2001850c <.L__unnamed_18>
20014108:	02100593          	li	a1,33
2001410c:	00001097          	auipc	ra,0x1
20014110:	380080e7          	jalr	896(ra) # 2001548c <core::panicking::panic>
20014114:	0000                	unimp
        let pllout_freq = divout_freq * d;
20014116:	454a                	lw	a0,144(sp)
20014118:	55aa                	lw	a1,168(sp)
2001411a:	02b50633          	mul	a2,a0,a1
2001411e:	deb2                	sw	a2,124(sp)
20014120:	02b53533          	mulhu	a0,a0,a1
20014124:	e919                	bnez	a0,2001413a <e310x_hal::clock::CoreClk::configure_pll+0x1a6>
20014126:	a009                	j	20014128 <e310x_hal::clock::CoreClk::configure_pll+0x194>
20014128:	55f6                	lw	a1,124(sp)
2001412a:	dbae                	sw	a1,244(sp)
2001412c:	02dc7537          	lui	a0,0x2dc7
20014130:	bff50513          	add	a0,a0,-1025 # 2dc6bff <.Lline_table_start1+0x2d97789>
        assert!(PLLOUT_MIN <= pllout_freq && pllout_freq <= PLLOUT_MAX);
20014134:	04b56163          	bltu	a0,a1,20014176 <e310x_hal::clock::CoreClk::configure_pll+0x1e2>
20014138:	a005                	j	20014158 <e310x_hal::clock::CoreClk::configure_pll+0x1c4>
        let pllout_freq = divout_freq * d;
2001413a:	20018537          	lui	a0,0x20018
2001413e:	52050513          	add	a0,a0,1312 # 20018520 <str.5>
20014142:	200185b7          	lui	a1,0x20018
20014146:	54458613          	add	a2,a1,1348 # 20018544 <.L__unnamed_19>
2001414a:	02100593          	li	a1,33
2001414e:	00001097          	auipc	ra,0x1
20014152:	33e080e7          	jalr	830(ra) # 2001548c <core::panicking::panic>
20014156:	0000                	unimp
        assert!(PLLOUT_MIN <= pllout_freq && pllout_freq <= PLLOUT_MAX);
20014158:	20018537          	lui	a0,0x20018
2001415c:	55450513          	add	a0,a0,1364 # 20018554 <.L__unnamed_20>
20014160:	200185b7          	lui	a1,0x20018
20014164:	59c58613          	add	a2,a1,1436 # 2001859c <.L__unnamed_21>
20014168:	04800593          	li	a1,72
2001416c:	00001097          	auipc	ra,0x1
20014170:	320080e7          	jalr	800(ra) # 2001548c <core::panicking::panic>
20014174:	0000                	unimp
20014176:	55f6                	lw	a1,124(sp)
20014178:	16e36537          	lui	a0,0x16e36
2001417c:	fcb56ee3          	bltu	a0,a1,20014158 <e310x_hal::clock::CoreClk::configure_pll+0x1c4>
20014180:	a009                	j	20014182 <e310x_hal::clock::CoreClk::configure_pll+0x1ee>
20014182:	45da                	lw	a1,148(sp)
20014184:	016e3537          	lui	a0,0x16e3
20014188:	5ff50513          	add	a0,a0,1535 # 16e35ff <.Lline_table_start1+0x16b4189>
            24_000_000..=48_000_000 => 4,
2001418c:	00b56b63          	bltu	a0,a1,200141a2 <e310x_hal::clock::CoreClk::configure_pll+0x20e>
20014190:	a009                	j	20014192 <e310x_hal::clock::CoreClk::configure_pll+0x1fe>
20014192:	45da                	lw	a1,148(sp)
20014194:	0112b537          	lui	a0,0x112b
20014198:	87f50513          	add	a0,a0,-1921 # 112a87f <.Lline_table_start1+0x10fb409>
            18_000_000..=23_999_999 => 3,
2001419c:	02b56663          	bltu	a0,a1,200141c8 <e310x_hal::clock::CoreClk::configure_pll+0x234>
200141a0:	a821                	j	200141b8 <e310x_hal::clock::CoreClk::configure_pll+0x224>
200141a2:	45da                	lw	a1,148(sp)
200141a4:	02dc7537          	lui	a0,0x2dc7
200141a8:	c0050513          	add	a0,a0,-1024 # 2dc6c00 <.Lline_table_start1+0x2d9778a>
            24_000_000..=48_000_000 => 4,
200141ac:	feb563e3          	bltu	a0,a1,20014192 <e310x_hal::clock::CoreClk::configure_pll+0x1fe>
200141b0:	a009                	j	200141b2 <e310x_hal::clock::CoreClk::configure_pll+0x21e>
200141b2:	4511                	li	a0,4
200141b4:	d72a                	sw	a0,172(sp)
200141b6:	a049                	j	20014238 <e310x_hal::clock::CoreClk::configure_pll+0x2a4>
200141b8:	45da                	lw	a1,148(sp)
200141ba:	00b72537          	lui	a0,0xb72
200141be:	aff50513          	add	a0,a0,-1281 # b71aff <.Lline_table_start1+0xb42689>
            12_000_000..=17_999_999 => 2,
200141c2:	02b56663          	bltu	a0,a1,200141ee <e310x_hal::clock::CoreClk::configure_pll+0x25a>
200141c6:	a821                	j	200141de <e310x_hal::clock::CoreClk::configure_pll+0x24a>
200141c8:	45da                	lw	a1,148(sp)
200141ca:	016e3537          	lui	a0,0x16e3
200141ce:	5ff50513          	add	a0,a0,1535 # 16e35ff <.Lline_table_start1+0x16b4189>
            18_000_000..=23_999_999 => 3,
200141d2:	feb563e3          	bltu	a0,a1,200141b8 <e310x_hal::clock::CoreClk::configure_pll+0x224>
200141d6:	a009                	j	200141d8 <e310x_hal::clock::CoreClk::configure_pll+0x244>
200141d8:	450d                	li	a0,3
200141da:	d72a                	sw	a0,172(sp)
200141dc:	a8b1                	j	20014238 <e310x_hal::clock::CoreClk::configure_pll+0x2a4>
200141de:	45da                	lw	a1,148(sp)
200141e0:	005b9537          	lui	a0,0x5b9
200141e4:	d7f50513          	add	a0,a0,-641 # 5b8d7f <.Lline_table_start1+0x589909>
            6_000_000..=11_999_999 => 1,
200141e8:	02b56d63          	bltu	a0,a1,20014222 <e310x_hal::clock::CoreClk::configure_pll+0x28e>
200141ec:	a821                	j	20014204 <e310x_hal::clock::CoreClk::configure_pll+0x270>
200141ee:	45da                	lw	a1,148(sp)
200141f0:	0112b537          	lui	a0,0x112b
200141f4:	87f50513          	add	a0,a0,-1921 # 112a87f <.Lline_table_start1+0x10fb409>
            12_000_000..=17_999_999 => 2,
200141f8:	feb563e3          	bltu	a0,a1,200141de <e310x_hal::clock::CoreClk::configure_pll+0x24a>
200141fc:	a009                	j	200141fe <e310x_hal::clock::CoreClk::configure_pll+0x26a>
200141fe:	4509                	li	a0,2
20014200:	d72a                	sw	a0,172(sp)
20014202:	a81d                	j	20014238 <e310x_hal::clock::CoreClk::configure_pll+0x2a4>
            _ => unreachable!(),
20014204:	20018537          	lui	a0,0x20018
20014208:	5ac50513          	add	a0,a0,1452 # 200185ac <.L__unnamed_22>
2001420c:	200185b7          	lui	a1,0x20018
20014210:	5d458613          	add	a2,a1,1492 # 200185d4 <.L__unnamed_23>
20014214:	02800593          	li	a1,40
20014218:	00001097          	auipc	ra,0x1
2001421c:	274080e7          	jalr	628(ra) # 2001548c <core::panicking::panic>
20014220:	0000                	unimp
20014222:	45da                	lw	a1,148(sp)
20014224:	00b72537          	lui	a0,0xb72
20014228:	aff50513          	add	a0,a0,-1281 # b71aff <.Lline_table_start1+0xb42689>
            6_000_000..=11_999_999 => 1,
2001422c:	fcb56ce3          	bltu	a0,a1,20014204 <e310x_hal::clock::CoreClk::configure_pll+0x270>
20014230:	a009                	j	20014232 <e310x_hal::clock::CoreClk::configure_pll+0x29e>
20014232:	4505                	li	a0,1
20014234:	d72a                	sw	a0,172(sp)
20014236:	a009                	j	20014238 <e310x_hal::clock::CoreClk::configure_pll+0x2a4>
        let refr_freq = pllref_freq / r;
20014238:	553a                	lw	a0,172(sp)
2001423a:	dcaa                	sw	a0,120(sp)
2001423c:	cd19                	beqz	a0,2001425a <e310x_hal::clock::CoreClk::configure_pll+0x2c6>
2001423e:	a009                	j	20014240 <e310x_hal::clock::CoreClk::configure_pll+0x2ac>
20014240:	455a                	lw	a0,148(sp)
20014242:	55e6                	lw	a1,120(sp)
20014244:	02b555b3          	divu	a1,a0,a1
20014248:	daae                	sw	a1,116(sp)
2001424a:	ddae                	sw	a1,248(sp)
2001424c:	005b9537          	lui	a0,0x5b9
20014250:	d7f50513          	add	a0,a0,-641 # 5b8d7f <.Lline_table_start1+0x589909>
        assert!(REFR_MIN <= refr_freq && refr_freq <= REFR_MAX);
20014254:	04b56063          	bltu	a0,a1,20014294 <e310x_hal::clock::CoreClk::configure_pll+0x300>
20014258:	a839                	j	20014276 <e310x_hal::clock::CoreClk::configure_pll+0x2e2>
        let refr_freq = pllref_freq / r;
2001425a:	20018537          	lui	a0,0x20018
2001425e:	48050513          	add	a0,a0,1152 # 20018480 <str.2>
20014262:	200185b7          	lui	a1,0x20018
20014266:	5e458613          	add	a2,a1,1508 # 200185e4 <.L__unnamed_24>
2001426a:	45e5                	li	a1,25
2001426c:	00001097          	auipc	ra,0x1
20014270:	220080e7          	jalr	544(ra) # 2001548c <core::panicking::panic>
20014274:	0000                	unimp
        assert!(REFR_MIN <= refr_freq && refr_freq <= REFR_MAX);
20014276:	20018537          	lui	a0,0x20018
2001427a:	5f450513          	add	a0,a0,1524 # 200185f4 <.L__unnamed_25>
2001427e:	200185b7          	lui	a1,0x20018
20014282:	63458613          	add	a2,a1,1588 # 20018634 <.L__unnamed_26>
20014286:	04000593          	li	a1,64
2001428a:	00001097          	auipc	ra,0x1
2001428e:	202080e7          	jalr	514(ra) # 2001548c <core::panicking::panic>
20014292:	0000                	unimp
20014294:	55d6                	lw	a1,116(sp)
20014296:	00b72537          	lui	a0,0xb72
2001429a:	b0050513          	add	a0,a0,-1280 # b71b00 <.Lline_table_start1+0xb4268a>
2001429e:	fcb56ce3          	bltu	a0,a1,20014276 <e310x_hal::clock::CoreClk::configure_pll+0x2e2>
200142a2:	a009                	j	200142a4 <e310x_hal::clock::CoreClk::configure_pll+0x310>
200142a4:	55f6                	lw	a1,124(sp)
200142a6:	0b71b537          	lui	a0,0xb71b
200142aa:	157d                	add	a0,a0,-1 # b71afff <.Lline_table_start1+0xb6ebb89>
            192_000_000..=384_000_000 => 2,
200142ac:	00b56b63          	bltu	a0,a1,200142c2 <e310x_hal::clock::CoreClk::configure_pll+0x32e>
200142b0:	a009                	j	200142b2 <e310x_hal::clock::CoreClk::configure_pll+0x31e>
200142b2:	55f6                	lw	a1,124(sp)
200142b4:	05b8d537          	lui	a0,0x5b8d
200142b8:	7ff50513          	add	a0,a0,2047 # 5b8d7ff <.Lline_table_start1+0x5b5e389>
            96_000_000..=191_999_999 => 4,
200142bc:	02b56463          	bltu	a0,a1,200142e4 <e310x_hal::clock::CoreClk::configure_pll+0x350>
200142c0:	a811                	j	200142d4 <e310x_hal::clock::CoreClk::configure_pll+0x340>
200142c2:	55f6                	lw	a1,124(sp)
200142c4:	16e36537          	lui	a0,0x16e36
            192_000_000..=384_000_000 => 2,
200142c8:	feb565e3          	bltu	a0,a1,200142b2 <e310x_hal::clock::CoreClk::configure_pll+0x31e>
200142cc:	a009                	j	200142ce <e310x_hal::clock::CoreClk::configure_pll+0x33a>
200142ce:	4509                	li	a0,2
200142d0:	d92a                	sw	a0,176(sp)
200142d2:	a8a9                	j	2001432c <e310x_hal::clock::CoreClk::configure_pll+0x398>
200142d4:	55f6                	lw	a1,124(sp)
200142d6:	02dc7537          	lui	a0,0x2dc7
200142da:	bff50513          	add	a0,a0,-1025 # 2dc6bff <.Lline_table_start1+0x2d97789>
            48_000_000..=95_999_999 => 8,
200142de:	02b56c63          	bltu	a0,a1,20014316 <e310x_hal::clock::CoreClk::configure_pll+0x382>
200142e2:	a819                	j	200142f8 <e310x_hal::clock::CoreClk::configure_pll+0x364>
200142e4:	55f6                	lw	a1,124(sp)
200142e6:	0b71b537          	lui	a0,0xb71b
200142ea:	157d                	add	a0,a0,-1 # b71afff <.Lline_table_start1+0xb6ebb89>
            96_000_000..=191_999_999 => 4,
200142ec:	feb564e3          	bltu	a0,a1,200142d4 <e310x_hal::clock::CoreClk::configure_pll+0x340>
200142f0:	a009                	j	200142f2 <e310x_hal::clock::CoreClk::configure_pll+0x35e>
200142f2:	4511                	li	a0,4
200142f4:	d92a                	sw	a0,176(sp)
200142f6:	a81d                	j	2001432c <e310x_hal::clock::CoreClk::configure_pll+0x398>
            _ => unreachable!(),
200142f8:	20018537          	lui	a0,0x20018
200142fc:	5ac50513          	add	a0,a0,1452 # 200185ac <.L__unnamed_22>
20014300:	200185b7          	lui	a1,0x20018
20014304:	64458613          	add	a2,a1,1604 # 20018644 <.L__unnamed_27>
20014308:	02800593          	li	a1,40
2001430c:	00001097          	auipc	ra,0x1
20014310:	180080e7          	jalr	384(ra) # 2001548c <core::panicking::panic>
20014314:	0000                	unimp
20014316:	55f6                	lw	a1,124(sp)
20014318:	05b8d537          	lui	a0,0x5b8d
2001431c:	7ff50513          	add	a0,a0,2047 # 5b8d7ff <.Lline_table_start1+0x5b5e389>
            48_000_000..=95_999_999 => 8,
20014320:	fcb56ce3          	bltu	a0,a1,200142f8 <e310x_hal::clock::CoreClk::configure_pll+0x364>
20014324:	a009                	j	20014326 <e310x_hal::clock::CoreClk::configure_pll+0x392>
20014326:	4521                	li	a0,8
20014328:	d92a                	sw	a0,176(sp)
2001432a:	a009                	j	2001432c <e310x_hal::clock::CoreClk::configure_pll+0x398>
        let target_vco_freq = pllout_freq * q;
2001432c:	5576                	lw	a0,124(sp)
2001432e:	55ca                	lw	a1,176(sp)
20014330:	02b50633          	mul	a2,a0,a1
20014334:	d8b2                	sw	a2,112(sp)
20014336:	02b53533          	mulhu	a0,a0,a1
2001433a:	e911                	bnez	a0,2001434e <e310x_hal::clock::CoreClk::configure_pll+0x3ba>
2001433c:	a009                	j	2001433e <e310x_hal::clock::CoreClk::configure_pll+0x3aa>
2001433e:	55c6                	lw	a1,112(sp)
20014340:	dfae                	sw	a1,252(sp)
20014342:	16e36537          	lui	a0,0x16e36
20014346:	157d                	add	a0,a0,-1 # 16e35fff <.Lline_table_start1+0x16e06b89>
        assert!(VCO_MIN <= target_vco_freq && target_vco_freq <= VCO_MAX);
20014348:	04b56163          	bltu	a0,a1,2001438a <e310x_hal::clock::CoreClk::configure_pll+0x3f6>
2001434c:	a005                	j	2001436c <e310x_hal::clock::CoreClk::configure_pll+0x3d8>
        let target_vco_freq = pllout_freq * q;
2001434e:	20018537          	lui	a0,0x20018
20014352:	52050513          	add	a0,a0,1312 # 20018520 <str.5>
20014356:	200185b7          	lui	a1,0x20018
2001435a:	65458613          	add	a2,a1,1620 # 20018654 <.L__unnamed_28>
2001435e:	02100593          	li	a1,33
20014362:	00001097          	auipc	ra,0x1
20014366:	12a080e7          	jalr	298(ra) # 2001548c <core::panicking::panic>
2001436a:	0000                	unimp
        assert!(VCO_MIN <= target_vco_freq && target_vco_freq <= VCO_MAX);
2001436c:	20018537          	lui	a0,0x20018
20014370:	66450513          	add	a0,a0,1636 # 20018664 <.L__unnamed_29>
20014374:	200185b7          	lui	a1,0x20018
20014378:	6b058613          	add	a2,a1,1712 # 200186b0 <.L__unnamed_30>
2001437c:	04a00593          	li	a1,74
20014380:	00001097          	auipc	ra,0x1
20014384:	10c080e7          	jalr	268(ra) # 2001548c <core::panicking::panic>
20014388:	0000                	unimp
2001438a:	55c6                	lw	a1,112(sp)
2001438c:	2dc6c537          	lui	a0,0x2dc6c
20014390:	fcb56ee3          	bltu	a0,a1,2001436c <e310x_hal::clock::CoreClk::configure_pll+0x3d8>
20014394:	a009                	j	20014396 <e310x_hal::clock::CoreClk::configure_pll+0x402>
        let f = target_vco_freq / refr_freq;
20014396:	5556                	lw	a0,116(sp)
20014398:	cd11                	beqz	a0,200143b4 <e310x_hal::clock::CoreClk::configure_pll+0x420>
2001439a:	a009                	j	2001439c <e310x_hal::clock::CoreClk::configure_pll+0x408>
2001439c:	5546                	lw	a0,112(sp)
2001439e:	55d6                	lw	a1,116(sp)
200143a0:	02b55533          	divu	a0,a0,a1
200143a4:	d6aa                	sw	a0,108(sp)
200143a6:	10a12023          	sw	a0,256(sp)
200143aa:	08100593          	li	a1,129
        assert!(f <= 128);
200143ae:	02b56f63          	bltu	a0,a1,200143ec <e310x_hal::clock::CoreClk::configure_pll+0x458>
200143b2:	a839                	j	200143d0 <e310x_hal::clock::CoreClk::configure_pll+0x43c>
        let f = target_vco_freq / refr_freq;
200143b4:	20018537          	lui	a0,0x20018
200143b8:	48050513          	add	a0,a0,1152 # 20018480 <str.2>
200143bc:	200185b7          	lui	a1,0x20018
200143c0:	6c058613          	add	a2,a1,1728 # 200186c0 <.L__unnamed_31>
200143c4:	45e5                	li	a1,25
200143c6:	00001097          	auipc	ra,0x1
200143ca:	0c6080e7          	jalr	198(ra) # 2001548c <core::panicking::panic>
200143ce:	0000                	unimp
        assert!(f <= 128);
200143d0:	20018537          	lui	a0,0x20018
200143d4:	6d050513          	add	a0,a0,1744 # 200186d0 <.L__unnamed_32>
200143d8:	200185b7          	lui	a1,0x20018
200143dc:	6ec58613          	add	a2,a1,1772 # 200186ec <.L__unnamed_33>
200143e0:	45e9                	li	a1,26
200143e2:	00001097          	auipc	ra,0x1
200143e6:	0aa080e7          	jalr	170(ra) # 2001548c <core::panicking::panic>
200143ea:	0000                	unimp
        let f_lo = (f / 2) * 2; // F must be a multiple of 2
200143ec:	5536                	lw	a0,108(sp)
200143ee:	8105                	srl	a0,a0,0x1
200143f0:	952a                	add	a0,a0,a0
200143f2:	d4aa                	sw	a0,104(sp)
200143f4:	4501                	li	a0,0
200143f6:	ed09                	bnez	a0,20014410 <e310x_hal::clock::CoreClk::configure_pll+0x47c>
200143f8:	a009                	j	200143fa <e310x_hal::clock::CoreClk::configure_pll+0x466>
200143fa:	5556                	lw	a0,116(sp)
200143fc:	55a6                	lw	a1,104(sp)
200143fe:	10b12223          	sw	a1,260(sp)
        let vco_lo = refr_freq * f_lo;
20014402:	02b50633          	mul	a2,a0,a1
20014406:	d2b2                	sw	a2,100(sp)
20014408:	02b53533          	mulhu	a0,a0,a1
2001440c:	e91d                	bnez	a0,20014442 <e310x_hal::clock::CoreClk::configure_pll+0x4ae>
2001440e:	a005                	j	2001442e <e310x_hal::clock::CoreClk::configure_pll+0x49a>
        let f_lo = (f / 2) * 2; // F must be a multiple of 2
20014410:	20018537          	lui	a0,0x20018
20014414:	52050513          	add	a0,a0,1312 # 20018520 <str.5>
20014418:	200185b7          	lui	a1,0x20018
2001441c:	6fc58613          	add	a2,a1,1788 # 200186fc <.L__unnamed_34>
20014420:	02100593          	li	a1,33
20014424:	00001097          	auipc	ra,0x1
20014428:	068080e7          	jalr	104(ra) # 2001548c <core::panicking::panic>
2001442c:	0000                	unimp
        let vco_lo = refr_freq * f_lo;
2001442e:	55a6                	lw	a1,104(sp)
20014430:	5516                	lw	a0,100(sp)
20014432:	10a12423          	sw	a0,264(sp)
        let f_hi = f_lo + 2;
20014436:	00258513          	add	a0,a1,2
2001443a:	d0aa                	sw	a0,96(sp)
2001443c:	02b56d63          	bltu	a0,a1,20014476 <e310x_hal::clock::CoreClk::configure_pll+0x4e2>
20014440:	a005                	j	20014460 <e310x_hal::clock::CoreClk::configure_pll+0x4cc>
        let vco_lo = refr_freq * f_lo;
20014442:	20018537          	lui	a0,0x20018
20014446:	52050513          	add	a0,a0,1312 # 20018520 <str.5>
2001444a:	200185b7          	lui	a1,0x20018
2001444e:	70c58613          	add	a2,a1,1804 # 2001870c <.L__unnamed_35>
20014452:	02100593          	li	a1,33
20014456:	00001097          	auipc	ra,0x1
2001445a:	036080e7          	jalr	54(ra) # 2001548c <core::panicking::panic>
2001445e:	0000                	unimp
        let f_hi = f_lo + 2;
20014460:	5556                	lw	a0,116(sp)
20014462:	5586                	lw	a1,96(sp)
20014464:	10b12623          	sw	a1,268(sp)
        let vco_hi = refr_freq * f_hi;
20014468:	02b50633          	mul	a2,a0,a1
2001446c:	ceb2                	sw	a2,92(sp)
2001446e:	02b53533          	mulhu	a0,a0,a1
20014472:	e90d                	bnez	a0,200144a4 <e310x_hal::clock::CoreClk::configure_pll+0x510>
20014474:	a839                	j	20014492 <e310x_hal::clock::CoreClk::configure_pll+0x4fe>
        let f_hi = f_lo + 2;
20014476:	20018537          	lui	a0,0x20018
2001447a:	4f050513          	add	a0,a0,1264 # 200184f0 <str.4>
2001447e:	200185b7          	lui	a1,0x20018
20014482:	71c58613          	add	a2,a1,1820 # 2001871c <.L__unnamed_36>
20014486:	45f1                	li	a1,28
20014488:	00001097          	auipc	ra,0x1
2001448c:	004080e7          	jalr	4(ra) # 2001548c <core::panicking::panic>
20014490:	0000                	unimp
        let vco_hi = refr_freq * f_hi;
20014492:	5506                	lw	a0,96(sp)
20014494:	45f6                	lw	a1,92(sp)
20014496:	10b12823          	sw	a1,272(sp)
2001449a:	08100593          	li	a1,129
        let (f, vco_freq) = if (f_hi <= 128 && vco_hi <= VCO_MAX)
2001449e:	02b56763          	bltu	a0,a1,200144cc <e310x_hal::clock::CoreClk::configure_pll+0x538>
200144a2:	a005                	j	200144c2 <e310x_hal::clock::CoreClk::configure_pll+0x52e>
        let vco_hi = refr_freq * f_hi;
200144a4:	20018537          	lui	a0,0x20018
200144a8:	52050513          	add	a0,a0,1312 # 20018520 <str.5>
200144ac:	200185b7          	lui	a1,0x20018
200144b0:	72c58613          	add	a2,a1,1836 # 2001872c <.L__unnamed_37>
200144b4:	02100593          	li	a1,33
200144b8:	00001097          	auipc	ra,0x1
200144bc:	fd4080e7          	jalr	-44(ra) # 2001548c <core::panicking::panic>
200144c0:	0000                	unimp
            (f_lo, vco_lo)
200144c2:	5516                	lw	a0,100(sp)
200144c4:	55a6                	lw	a1,104(sp)
200144c6:	db2e                	sw	a1,180(sp)
200144c8:	dd2a                	sw	a0,184(sp)
        let (f, vco_freq) = if (f_hi <= 128 && vco_hi <= VCO_MAX)
200144ca:	a065                	j	20014572 <e310x_hal::clock::CoreClk::configure_pll+0x5de>
200144cc:	45f6                	lw	a1,92(sp)
200144ce:	2dc6c537          	lui	a0,0x2dc6c
200144d2:	feb568e3          	bltu	a0,a1,200144c2 <e310x_hal::clock::CoreClk::configure_pll+0x52e>
200144d6:	a009                	j	200144d8 <e310x_hal::clock::CoreClk::configure_pll+0x544>
200144d8:	5646                	lw	a2,112(sp)
200144da:	45f6                	lw	a1,92(sp)
200144dc:	4501                	li	a0,0
            && (target_vco_freq as i32 - vco_hi as i32).abs()
200144de:	00b52533          	slt	a0,a0,a1
200144e2:	40b605b3          	sub	a1,a2,a1
200144e6:	ccae                	sw	a1,88(sp)
200144e8:	00c5a5b3          	slt	a1,a1,a2
200144ec:	02b51663          	bne	a0,a1,20014518 <e310x_hal::clock::CoreClk::configure_pll+0x584>
200144f0:	a009                	j	200144f2 <e310x_hal::clock::CoreClk::configure_pll+0x55e>
200144f2:	4566                	lw	a0,88(sp)
200144f4:	fffff097          	auipc	ra,0xfffff
200144f8:	11a080e7          	jalr	282(ra) # 2001360e <core::num::<impl i32>::abs>
200144fc:	5596                	lw	a1,100(sp)
200144fe:	5646                	lw	a2,112(sp)
20014500:	c8aa                	sw	a0,80(sp)
20014502:	4501                	li	a0,0
                < (target_vco_freq as i32 - vco_lo as i32).abs()
20014504:	00b52533          	slt	a0,a0,a1
20014508:	40b605b3          	sub	a1,a2,a1
2001450c:	caae                	sw	a1,84(sp)
2001450e:	00c5a5b3          	slt	a1,a1,a2
20014512:	02b51c63          	bne	a0,a1,2001454a <e310x_hal::clock::CoreClk::configure_pll+0x5b6>
20014516:	a005                	j	20014536 <e310x_hal::clock::CoreClk::configure_pll+0x5a2>
            && (target_vco_freq as i32 - vco_hi as i32).abs()
20014518:	20018537          	lui	a0,0x20018
2001451c:	4b050513          	add	a0,a0,1200 # 200184b0 <str.3>
20014520:	200185b7          	lui	a1,0x20018
20014524:	73c58613          	add	a2,a1,1852 # 2001873c <.L__unnamed_38>
20014528:	02100593          	li	a1,33
2001452c:	00001097          	auipc	ra,0x1
20014530:	f60080e7          	jalr	-160(ra) # 2001548c <core::panicking::panic>
20014534:	0000                	unimp
                < (target_vco_freq as i32 - vco_lo as i32).abs()
20014536:	4556                	lw	a0,84(sp)
20014538:	fffff097          	auipc	ra,0xfffff
2001453c:	0d6080e7          	jalr	214(ra) # 2001360e <core::num::<impl i32>::abs>
20014540:	85aa                	mv	a1,a0
            && (target_vco_freq as i32 - vco_hi as i32).abs()
20014542:	4546                	lw	a0,80(sp)
20014544:	02b54263          	blt	a0,a1,20014568 <e310x_hal::clock::CoreClk::configure_pll+0x5d4>
20014548:	bfad                	j	200144c2 <e310x_hal::clock::CoreClk::configure_pll+0x52e>
                < (target_vco_freq as i32 - vco_lo as i32).abs()
2001454a:	20018537          	lui	a0,0x20018
2001454e:	4b050513          	add	a0,a0,1200 # 200184b0 <str.3>
20014552:	200185b7          	lui	a1,0x20018
20014556:	74c58613          	add	a2,a1,1868 # 2001874c <.L__unnamed_39>
2001455a:	02100593          	li	a1,33
2001455e:	00001097          	auipc	ra,0x1
20014562:	f2e080e7          	jalr	-210(ra) # 2001548c <core::panicking::panic>
20014566:	0000                	unimp
            (f_hi, vco_hi)
20014568:	4576                	lw	a0,92(sp)
2001456a:	5586                	lw	a1,96(sp)
2001456c:	db2e                	sw	a1,180(sp)
2001456e:	dd2a                	sw	a0,184(sp)
        let (f, vco_freq) = if (f_hi <= 128 && vco_hi <= VCO_MAX)
20014570:	a009                	j	20014572 <e310x_hal::clock::CoreClk::configure_pll+0x5de>
20014572:	555a                	lw	a0,180(sp)
20014574:	c4aa                	sw	a0,72(sp)
20014576:	10a12a23          	sw	a0,276(sp)
2001457a:	55ea                	lw	a1,184(sp)
2001457c:	c6ae                	sw	a1,76(sp)
2001457e:	10b12c23          	sw	a1,280(sp)
20014582:	16e36537          	lui	a0,0x16e36
20014586:	157d                	add	a0,a0,-1 # 16e35fff <.Lline_table_start1+0x16e06b89>
        assert!(VCO_MIN <= vco_freq && vco_freq <= VCO_MAX);
20014588:	02b56263          	bltu	a0,a1,200145ac <e310x_hal::clock::CoreClk::configure_pll+0x618>
2001458c:	a009                	j	2001458e <e310x_hal::clock::CoreClk::configure_pll+0x5fa>
2001458e:	20018537          	lui	a0,0x20018
20014592:	75c50513          	add	a0,a0,1884 # 2001875c <.L__unnamed_40>
20014596:	200185b7          	lui	a1,0x20018
2001459a:	79858613          	add	a2,a1,1944 # 20018798 <.L__unnamed_41>
2001459e:	03c00593          	li	a1,60
200145a2:	00001097          	auipc	ra,0x1
200145a6:	eea080e7          	jalr	-278(ra) # 2001548c <core::panicking::panic>
200145aa:	0000                	unimp
200145ac:	45b6                	lw	a1,76(sp)
200145ae:	2dc6c537          	lui	a0,0x2dc6c
200145b2:	fcb56ee3          	bltu	a0,a1,2001458e <e310x_hal::clock::CoreClk::configure_pll+0x5fa>
200145b6:	a009                	j	200145b8 <e310x_hal::clock::CoreClk::configure_pll+0x624>
        let pllout_freq = vco_freq / q;
200145b8:	554a                	lw	a0,176(sp)
200145ba:	c2aa                	sw	a0,68(sp)
200145bc:	c105                	beqz	a0,200145dc <e310x_hal::clock::CoreClk::configure_pll+0x648>
200145be:	a009                	j	200145c0 <e310x_hal::clock::CoreClk::configure_pll+0x62c>
200145c0:	4536                	lw	a0,76(sp)
200145c2:	4596                	lw	a1,68(sp)
200145c4:	02b555b3          	divu	a1,a0,a1
200145c8:	c0ae                	sw	a1,64(sp)
200145ca:	10b12e23          	sw	a1,284(sp)
200145ce:	02dc7537          	lui	a0,0x2dc7
200145d2:	bff50513          	add	a0,a0,-1025 # 2dc6bff <.Lline_table_start1+0x2d97789>
        assert!(PLLOUT_MIN <= pllout_freq && pllout_freq <= PLLOUT_MAX);
200145d6:	04b56063          	bltu	a0,a1,20014616 <e310x_hal::clock::CoreClk::configure_pll+0x682>
200145da:	a839                	j	200145f8 <e310x_hal::clock::CoreClk::configure_pll+0x664>
        let pllout_freq = vco_freq / q;
200145dc:	20018537          	lui	a0,0x20018
200145e0:	48050513          	add	a0,a0,1152 # 20018480 <str.2>
200145e4:	200185b7          	lui	a1,0x20018
200145e8:	7a858613          	add	a2,a1,1960 # 200187a8 <.L__unnamed_42>
200145ec:	45e5                	li	a1,25
200145ee:	00001097          	auipc	ra,0x1
200145f2:	e9e080e7          	jalr	-354(ra) # 2001548c <core::panicking::panic>
200145f6:	0000                	unimp
        assert!(PLLOUT_MIN <= pllout_freq && pllout_freq <= PLLOUT_MAX);
200145f8:	20018537          	lui	a0,0x20018
200145fc:	55450513          	add	a0,a0,1364 # 20018554 <.L__unnamed_20>
20014600:	200185b7          	lui	a1,0x20018
20014604:	7b858613          	add	a2,a1,1976 # 200187b8 <.L__unnamed_43>
20014608:	04800593          	li	a1,72
2001460c:	00001097          	auipc	ra,0x1
20014610:	e80080e7          	jalr	-384(ra) # 2001548c <core::panicking::panic>
20014614:	0000                	unimp
20014616:	4586                	lw	a1,64(sp)
20014618:	16e36537          	lui	a0,0x16e36
2001461c:	fcb56ee3          	bltu	a0,a1,200145f8 <e310x_hal::clock::CoreClk::configure_pll+0x664>
20014620:	a009                	j	20014622 <e310x_hal::clock::CoreClk::configure_pll+0x68e>
        let divout_freq = pllout_freq / d;
20014622:	552a                	lw	a0,168(sp)
20014624:	de2a                	sw	a0,60(sp)
20014626:	c105                	beqz	a0,20014646 <e310x_hal::clock::CoreClk::configure_pll+0x6b2>
20014628:	a009                	j	2001462a <e310x_hal::clock::CoreClk::configure_pll+0x696>
2001462a:	4506                	lw	a0,64(sp)
2001462c:	55f2                	lw	a1,60(sp)
2001462e:	02b555b3          	divu	a1,a0,a1
20014632:	dc2e                	sw	a1,56(sp)
20014634:	12b12023          	sw	a1,288(sp)
20014638:	0005c537          	lui	a0,0x5c
2001463c:	8d750513          	add	a0,a0,-1833 # 5b8d7 <.Lline_table_start1+0x2c461>
        assert!(DIVOUT_MIN <= divout_freq && divout_freq <= DIVOUT_MAX);
20014640:	04b56063          	bltu	a0,a1,20014680 <e310x_hal::clock::CoreClk::configure_pll+0x6ec>
20014644:	a839                	j	20014662 <e310x_hal::clock::CoreClk::configure_pll+0x6ce>
        let divout_freq = pllout_freq / d;
20014646:	20018537          	lui	a0,0x20018
2001464a:	48050513          	add	a0,a0,1152 # 20018480 <str.2>
2001464e:	200185b7          	lui	a1,0x20018
20014652:	7c858613          	add	a2,a1,1992 # 200187c8 <.L__unnamed_44>
20014656:	45e5                	li	a1,25
20014658:	00001097          	auipc	ra,0x1
2001465c:	e34080e7          	jalr	-460(ra) # 2001548c <core::panicking::panic>
20014660:	0000                	unimp
        assert!(DIVOUT_MIN <= divout_freq && divout_freq <= DIVOUT_MAX);
20014662:	20018537          	lui	a0,0x20018
20014666:	41850513          	add	a0,a0,1048 # 20018418 <.L__unnamed_13>
2001466a:	200185b7          	lui	a1,0x20018
2001466e:	7d858613          	add	a2,a1,2008 # 200187d8 <.L__unnamed_45>
20014672:	04800593          	li	a1,72
20014676:	00001097          	auipc	ra,0x1
2001467a:	e16080e7          	jalr	-490(ra) # 2001548c <core::panicking::panic>
2001467e:	0000                	unimp
20014680:	55e2                	lw	a1,56(sp)
20014682:	16e36537          	lui	a0,0x16e36
20014686:	fcb56ee3          	bltu	a0,a1,20014662 <e310x_hal::clock::CoreClk::configure_pll+0x6ce>
2001468a:	a009                	j	2001468c <e310x_hal::clock::CoreClk::configure_pll+0x6f8>
        let r: u8 = (r - 1) as u8;
2001468c:	553a                	lw	a0,172(sp)
2001468e:	fff50593          	add	a1,a0,-1 # 16e35fff <.Lline_table_start1+0x16e06b89>
20014692:	da2e                	sw	a1,52(sp)
20014694:	cd01                	beqz	a0,200146ac <e310x_hal::clock::CoreClk::configure_pll+0x718>
20014696:	a009                	j	20014698 <e310x_hal::clock::CoreClk::configure_pll+0x704>
20014698:	4526                	lw	a0,72(sp)
2001469a:	55d2                	lw	a1,52(sp)
2001469c:	0ab10ea3          	sb	a1,189(sp)
        let f: u8 = (f / 2 - 1) as u8;
200146a0:	8105                	srl	a0,a0,0x1
200146a2:	fff50593          	add	a1,a0,-1
200146a6:	d82e                	sw	a1,48(sp)
200146a8:	c521                	beqz	a0,200146f0 <e310x_hal::clock::CoreClk::configure_pll+0x75c>
200146aa:	a005                	j	200146ca <e310x_hal::clock::CoreClk::configure_pll+0x736>
        let r: u8 = (r - 1) as u8;
200146ac:	20018537          	lui	a0,0x20018
200146b0:	4b050513          	add	a0,a0,1200 # 200184b0 <str.3>
200146b4:	200185b7          	lui	a1,0x20018
200146b8:	7e858613          	add	a2,a1,2024 # 200187e8 <.L__unnamed_46>
200146bc:	02100593          	li	a1,33
200146c0:	00001097          	auipc	ra,0x1
200146c4:	dcc080e7          	jalr	-564(ra) # 2001548c <core::panicking::panic>
200146c8:	0000                	unimp
        let f: u8 = (f / 2 - 1) as u8;
200146ca:	5542                	lw	a0,48(sp)
200146cc:	0aa10f23          	sb	a0,190(sp)
        let q: u8 = match q {
200146d0:	554a                	lw	a0,176(sp)
200146d2:	d62a                	sw	a0,44(sp)
200146d4:	4589                	li	a1,2
200146d6:	04b50b63          	beq	a0,a1,2001472c <e310x_hal::clock::CoreClk::configure_pll+0x798>
200146da:	a009                	j	200146dc <e310x_hal::clock::CoreClk::configure_pll+0x748>
200146dc:	5532                	lw	a0,44(sp)
200146de:	4591                	li	a1,4
200146e0:	04b50a63          	beq	a0,a1,20014734 <e310x_hal::clock::CoreClk::configure_pll+0x7a0>
200146e4:	a009                	j	200146e6 <e310x_hal::clock::CoreClk::configure_pll+0x752>
200146e6:	5532                	lw	a0,44(sp)
200146e8:	45a1                	li	a1,8
200146ea:	04b50963          	beq	a0,a1,2001473c <e310x_hal::clock::CoreClk::configure_pll+0x7a8>
200146ee:	a005                	j	2001470e <e310x_hal::clock::CoreClk::configure_pll+0x77a>
        let f: u8 = (f / 2 - 1) as u8;
200146f0:	20018537          	lui	a0,0x20018
200146f4:	4b050513          	add	a0,a0,1200 # 200184b0 <str.3>
200146f8:	200185b7          	lui	a1,0x20018
200146fc:	7f858613          	add	a2,a1,2040 # 200187f8 <.L__unnamed_47>
20014700:	02100593          	li	a1,33
20014704:	00001097          	auipc	ra,0x1
20014708:	d88080e7          	jalr	-632(ra) # 2001548c <core::panicking::panic>
2001470c:	0000                	unimp
            _ => unreachable!(),
2001470e:	20018537          	lui	a0,0x20018
20014712:	5ac50513          	add	a0,a0,1452 # 200185ac <.L__unnamed_22>
20014716:	200195b7          	lui	a1,0x20019
2001471a:	81858613          	add	a2,a1,-2024 # 20018818 <.L__unnamed_48>
2001471e:	02800593          	li	a1,40
20014722:	00001097          	auipc	ra,0x1
20014726:	d6a080e7          	jalr	-662(ra) # 2001548c <core::panicking::panic>
2001472a:	0000                	unimp
2001472c:	4505                	li	a0,1
            2 => 0b01,
2001472e:	0aa10fa3          	sb	a0,191(sp)
20014732:	a809                	j	20014744 <e310x_hal::clock::CoreClk::configure_pll+0x7b0>
20014734:	4509                	li	a0,2
            4 => 0b10,
20014736:	0aa10fa3          	sb	a0,191(sp)
2001473a:	a029                	j	20014744 <e310x_hal::clock::CoreClk::configure_pll+0x7b0>
2001473c:	450d                	li	a0,3
            8 => 0b11,
2001473e:	0aa10fa3          	sb	a0,191(sp)
20014742:	a009                	j	20014744 <e310x_hal::clock::CoreClk::configure_pll+0x7b0>
20014744:	10008537          	lui	a0,0x10008
        let prci = unsafe { &*PRCI::ptr() };
20014748:	cc2a                	sw	a0,24(sp)
2001474a:	12a12223          	sw	a0,292(sp)
2001474e:	0bd10593          	add	a1,sp,189
        prci.pllcfg.modify(|_, w| unsafe {
20014752:	c1ae                	sw	a1,192(sp)
20014754:	0be10593          	add	a1,sp,190
20014758:	c3ae                	sw	a1,196(sp)
2001475a:	0bf10593          	add	a1,sp,191
2001475e:	c5ae                	sw	a1,200(sp)
20014760:	0521                	add	a0,a0,8 # 10008008 <.Lline_table_start1+0xffd8b92>
20014762:	ca2a                	sw	a0,20(sp)
20014764:	16a12e23          	sw	a0,380(sp)
20014768:	1aa12023          	sw	a0,416(sp)
2001476c:	1aa12223          	sw	a0,420(sp)
20014770:	fffff097          	auipc	ra,0xfffff
20014774:	ee8080e7          	jalr	-280(ra) # 20013658 <core::ptr::read_volatile>
        let bits = self.register.get();
20014778:	18a12023          	sw	a0,384(sp)
                &REG::Reader::from(R {
2001477c:	16a12823          	sw	a0,368(sp)
20014780:	17012583          	lw	a1,368(sp)
20014784:	18b12423          	sw	a1,392(sp)
        R(reader)
20014788:	18b12223          	sw	a1,388(sp)
    }
2001478c:	18412583          	lw	a1,388(sp)
20014790:	16b12623          	sw	a1,364(sp)
                &mut REG::Writer::from(W {
20014794:	16a12c23          	sw	a0,376(sp)
20014798:	17812503          	lw	a0,376(sp)
2001479c:	18a12823          	sw	a0,400(sp)
        W(writer)
200147a0:	18a12623          	sw	a0,396(sp)
    }
200147a4:	18c12503          	lw	a0,396(sp)
200147a8:	16a12a23          	sw	a0,372(sp)
200147ac:	12e8                	add	a0,sp,364
            f(
200147ae:	16a12223          	sw	a0,356(sp)
200147b2:	1ac8                	add	a0,sp,372
200147b4:	16a12423          	sw	a0,360(sp)
200147b8:	16412583          	lw	a1,356(sp)
200147bc:	16812603          	lw	a2,360(sp)
200147c0:	0188                	add	a0,sp,192
200147c2:	00000097          	auipc	ra,0x0
200147c6:	17e080e7          	jalr	382(ra) # 20014940 <e310x_hal::clock::CoreClk::configure_pll::{{closure}}>
200147ca:	85aa                	mv	a1,a0
200147cc:	4552                	lw	a0,20(sp)
200147ce:	418c                	lw	a1,0(a1)
200147d0:	1aa12823          	sw	a0,432(sp)
200147d4:	1ab12a23          	sw	a1,436(sp)
200147d8:	1aa12c23          	sw	a0,440(sp)
        unsafe { ptr::write_volatile(self.value.get(), value) }
200147dc:	fffff097          	auipc	ra,0xfffff
200147e0:	e8a080e7          	jalr	-374(ra) # 20013666 <core::ptr::write_volatile>
200147e4:	4662                	lw	a2,24(sp)
200147e6:	1108                	add	a0,sp,160
            .write(|w| unsafe { w.div().bits(divider_div as u8).divby1().bit(divider_bypass) });
200147e8:	c7aa                	sw	a0,204(sp)
200147ea:	0a710513          	add	a0,sp,167
200147ee:	c9aa                	sw	a0,208(sp)
        prci.plloutdiv
200147f0:	453e                	lw	a0,204(sp)
200147f2:	45ce                	lw	a1,208(sp)
200147f4:	0631                	add	a2,a2,12 # 4000000c <_sidata+0x1ffe6808>
200147f6:	ce32                	sw	a2,28(sp)
200147f8:	14c12823          	sw	a2,336(sp)
200147fc:	14a12a23          	sw	a0,340(sp)
20014800:	14b12c23          	sw	a1,344(sp)
20014804:	10000613          	li	a2,256
            f(&mut REG::Writer::from(W {
20014808:	14c12623          	sw	a2,332(sp)
2001480c:	14c12603          	lw	a2,332(sp)
20014810:	16c12023          	sw	a2,352(sp)
        W(writer)
20014814:	14c12e23          	sw	a2,348(sp)
    }
20014818:	15c12603          	lw	a2,348(sp)
2001481c:	14c12423          	sw	a2,328(sp)
20014820:	02b0                	add	a2,sp,328
20014822:	14c12223          	sw	a2,324(sp)
20014826:	14412603          	lw	a2,324(sp)
2001482a:	00000097          	auipc	ra,0x0
2001482e:	20c080e7          	jalr	524(ra) # 20014a36 <e310x_hal::clock::CoreClk::configure_pll::{{closure}}>
20014832:	85aa                	mv	a1,a0
20014834:	4572                	lw	a0,28(sp)
20014836:	418c                	lw	a1,0(a1)
20014838:	1aa12e23          	sw	a0,444(sp)
2001483c:	1cb12023          	sw	a1,448(sp)
20014840:	1ca12223          	sw	a0,452(sp)
20014844:	fffff097          	auipc	ra,0xfffff
20014848:	e22080e7          	jalr	-478(ra) # 20013666 <core::ptr::write_volatile>
2001484c:	0d610513          	add	a0,sp,214
        let time = mtime.mtime() + 4;
20014850:	00000097          	auipc	ra,0x0
20014854:	516080e7          	jalr	1302(ra) # 20014d66 <e310x_hal::core::clint::MTIME::mtime>
20014858:	d02a                	sw	a0,32(sp)
2001485a:	862e                	mv	a2,a1
2001485c:	5582                	lw	a1,32(sp)
2001485e:	00458513          	add	a0,a1,4
20014862:	d22a                	sw	a0,36(sp)
20014864:	00b53533          	sltu	a0,a0,a1
20014868:	00a605b3          	add	a1,a2,a0
2001486c:	d42e                	sw	a1,40(sp)
2001486e:	00c5b5b3          	sltu	a1,a1,a2
20014872:	8d6d                	and	a0,a0,a1
20014874:	e909                	bnez	a0,20014886 <e310x_hal::clock::CoreClk::configure_pll+0x8f2>
20014876:	a009                	j	20014878 <e310x_hal::clock::CoreClk::configure_pll+0x8e4>
20014878:	5522                	lw	a0,40(sp)
2001487a:	5592                	lw	a1,36(sp)
2001487c:	12b12423          	sw	a1,296(sp)
20014880:	12a12623          	sw	a0,300(sp)
        while mtime.mtime() < time {}
20014884:	a839                	j	200148a2 <e310x_hal::clock::CoreClk::configure_pll+0x90e>
        let time = mtime.mtime() + 4;
20014886:	20018537          	lui	a0,0x20018
2001488a:	4f050513          	add	a0,a0,1264 # 200184f0 <str.4>
2001488e:	200195b7          	lui	a1,0x20019
20014892:	80858613          	add	a2,a1,-2040 # 20018808 <.L__unnamed_49>
20014896:	45f1                	li	a1,28
20014898:	00001097          	auipc	ra,0x1
2001489c:	bf4080e7          	jalr	-1036(ra) # 2001548c <core::panicking::panic>
200148a0:	0000                	unimp
200148a2:	0d610513          	add	a0,sp,214
        while mtime.mtime() < time {}
200148a6:	00000097          	auipc	ra,0x0
200148aa:	4c0080e7          	jalr	1216(ra) # 20014d66 <e310x_hal::core::clint::MTIME::mtime>
200148ae:	5692                	lw	a3,36(sp)
200148b0:	862a                	mv	a2,a0
200148b2:	5522                	lw	a0,40(sp)
200148b4:	00a5b733          	sltu	a4,a1,a0
200148b8:	c63a                	sw	a4,12(sp)
200148ba:	00d63633          	sltu	a2,a2,a3
200148be:	c832                	sw	a2,16(sp)
200148c0:	00a58463          	beq	a1,a0,200148c8 <e310x_hal::clock::CoreClk::configure_pll+0x934>
200148c4:	4532                	lw	a0,12(sp)
200148c6:	c82a                	sw	a0,16(sp)
200148c8:	4542                	lw	a0,16(sp)
200148ca:	fd61                	bnez	a0,200148a2 <e310x_hal::clock::CoreClk::configure_pll+0x90e>
200148cc:	a009                	j	200148ce <e310x_hal::clock::CoreClk::configure_pll+0x93a>
200148ce:	10008537          	lui	a0,0x10008
200148d2:	0521                	add	a0,a0,8 # 10008008 <.Lline_table_start1+0xffd8b92>
200148d4:	12a12c23          	sw	a0,312(sp)
200148d8:	1aa12423          	sw	a0,424(sp)
200148dc:	1aa12623          	sw	a0,428(sp)
        unsafe { ptr::read_volatile(self.value.get()) }
200148e0:	fffff097          	auipc	ra,0xfffff
200148e4:	d78080e7          	jalr	-648(ra) # 20013658 <core::ptr::read_volatile>
        REG::Reader::from(R {
200148e8:	12a12a23          	sw	a0,308(sp)
200148ec:	13412503          	lw	a0,308(sp)
200148f0:	14a12023          	sw	a0,320(sp)
        R(reader)
200148f4:	12a12e23          	sw	a0,316(sp)
    }
200148f8:	13c12503          	lw	a0,316(sp)
        while !prci.pllcfg.read().lock().bit_is_set() {}
200148fc:	cdaa                	sw	a0,216(sp)
200148fe:	09a8                	add	a0,sp,216
20014900:	12a12823          	sw	a0,304(sp)
20014904:	1ca12423          	sw	a0,456(sp)
        BYPASS_R::new(((self.bits >> 18) & 1) != 0)
    }
    #[doc = "Bit 31"]
    #[inline(always)]
    pub fn lock(&self) -> LOCK_R {
        LOCK_R::new(((self.bits >> 31) & 1) != 0)
20014908:	456e                	lw	a0,216(sp)
2001490a:	817d                	srl	a0,a0,0x1f
2001490c:	18a10fa3          	sb	a0,415(sp)
        Self {
20014910:	18a10f23          	sb	a0,414(sp)
    }
20014914:	19e14503          	lbu	a0,414(sp)
20014918:	0ca10ba3          	sb	a0,215(sp)
2001491c:	0d710513          	add	a0,sp,215
20014920:	18a12a23          	sw	a0,404(sp)
20014924:	18a12c23          	sw	a0,408(sp)
        self.bits
20014928:	0d714503          	lbu	a0,215(sp)
2001492c:	8905                	and	a0,a0,1
2001492e:	d145                	beqz	a0,200148ce <e310x_hal::clock::CoreClk::configure_pll+0x93a>
20014930:	a009                	j	20014932 <e310x_hal::clock::CoreClk::configure_pll+0x99e>
        Hertz(divout_freq)
20014932:	5562                	lw	a0,56(sp)
20014934:	cf2a                	sw	a0,156(sp)
    }
20014936:	457a                	lw	a0,156(sp)
20014938:	1cc12083          	lw	ra,460(sp)
2001493c:	6179                	add	sp,sp,464
2001493e:	8082                	ret

20014940 <e310x_hal::clock::CoreClk::configure_pll::{{closure}}>:
        prci.pllcfg.modify(|_, w| unsafe {
20014940:	7175                	add	sp,sp,-144
        let r: u8 = (r - 1) as u8;
20014942:	c706                	sw	ra,140(sp)
20014944:	c42a                	sw	a0,8(sp)
20014946:	c82e                	sw	a1,16(sp)
20014948:	ca32                	sw	a2,20(sp)
2001494a:	d032                	sw	a2,32(sp)
2001494c:	de32                	sw	a2,60(sp)
        Self {
2001494e:	dc32                	sw	a2,56(sp)
    }
20014950:	55e2                	lw	a1,56(sp)
                .bits(r)
20014952:	4108                	lw	a0,0(a0)
20014954:	00054503          	lbu	a0,0(a0)
20014958:	ccae                	sw	a1,88(sp)
2001495a:	04a10fa3          	sb	a0,95(sp)
                self.w.bits = (self.w.bits & !(Self::MASK << { OF }))
2001495e:	45e6                	lw	a1,88(sp)
20014960:	d6ae                	sw	a1,108(sp)
20014962:	418c                	lw	a1,0(a1)
20014964:	99e1                	and	a1,a1,-8
                    | ((value.into() & Self::MASK) << { OF });
20014966:	c02e                	sw	a1,0(sp)
20014968:	fffff097          	auipc	ra,0xfffff
2001496c:	d40080e7          	jalr	-704(ra) # 200136a8 <<T as core::convert::Into<U>>::into>
20014970:	4582                	lw	a1,0(sp)
20014972:	862a                	mv	a2,a0
20014974:	4522                	lw	a0,8(sp)
20014976:	00767693          	and	a3,a2,7
                self.w.bits = (self.w.bits & !(Self::MASK << { OF }))
2001497a:	4666                	lw	a2,88(sp)
2001497c:	deb2                	sw	a2,124(sp)
2001497e:	8dd5                	or	a1,a1,a3
20014980:	c20c                	sw	a1,0(a2)
                self.w
20014982:	45e6                	lw	a1,88(sp)
20014984:	cc2e                	sw	a1,24(sp)
20014986:	da2e                	sw	a1,52(sp)
        Self {
20014988:	d82e                	sw	a1,48(sp)
    }
2001498a:	55c2                	lw	a1,48(sp)
                .bits(f)
2001498c:	4148                	lw	a0,4(a0)
2001498e:	00054503          	lbu	a0,0(a0)
20014992:	c8ae                	sw	a1,80(sp)
20014994:	04a10ba3          	sb	a0,87(sp)
                self.w.bits = (self.w.bits & !(Self::MASK << { OF }))
20014998:	45c6                	lw	a1,80(sp)
2001499a:	d8ae                	sw	a1,112(sp)
2001499c:	418c                	lw	a1,0(a1)
2001499e:	c0f5f593          	and	a1,a1,-1009
                    | ((value.into() & Self::MASK) << { OF });
200149a2:	c22e                	sw	a1,4(sp)
200149a4:	fffff097          	auipc	ra,0xfffff
200149a8:	d04080e7          	jalr	-764(ra) # 200136a8 <<T as core::convert::Into<U>>::into>
200149ac:	4592                	lw	a1,4(sp)
200149ae:	862a                	mv	a2,a0
200149b0:	4522                	lw	a0,8(sp)
200149b2:	03f67613          	and	a2,a2,63
200149b6:	00461693          	sll	a3,a2,0x4
                self.w.bits = (self.w.bits & !(Self::MASK << { OF }))
200149ba:	4646                	lw	a2,80(sp)
200149bc:	c132                	sw	a2,128(sp)
200149be:	8dd5                	or	a1,a1,a3
200149c0:	c20c                	sw	a1,0(a2)
                self.w
200149c2:	45c6                	lw	a1,80(sp)
200149c4:	ce2e                	sw	a1,28(sp)
200149c6:	c2ae                	sw	a1,68(sp)
        Self {
200149c8:	c0ae                	sw	a1,64(sp)
    }
200149ca:	4586                	lw	a1,64(sp)
                .bits(q)
200149cc:	4508                	lw	a0,8(a0)
200149ce:	00054503          	lbu	a0,0(a0)
200149d2:	d0ae                	sw	a1,96(sp)
200149d4:	06a103a3          	sb	a0,103(sp)
                self.w.bits = (self.w.bits & !(Self::MASK << { OF }))
200149d8:	5586                	lw	a1,96(sp)
200149da:	d4ae                	sw	a1,104(sp)
200149dc:	418c                	lw	a1,0(a1)
200149de:	767d                	lui	a2,0xfffff
200149e0:	3ff60613          	add	a2,a2,1023 # fffff3ff <_sstack+0x7fffb3ff>
200149e4:	8df1                	and	a1,a1,a2
                    | ((value.into() & Self::MASK) << { OF });
200149e6:	c62e                	sw	a1,12(sp)
200149e8:	fffff097          	auipc	ra,0xfffff
200149ec:	cc0080e7          	jalr	-832(ra) # 200136a8 <<T as core::convert::Into<U>>::into>
200149f0:	85aa                	mv	a1,a0
200149f2:	4532                	lw	a0,12(sp)
200149f4:	898d                	and	a1,a1,3
200149f6:	00a59613          	sll	a2,a1,0xa
                self.w.bits = (self.w.bits & !(Self::MASK << { OF }))
200149fa:	5586                	lw	a1,96(sp)
200149fc:	dcae                	sw	a1,120(sp)
200149fe:	8d51                	or	a0,a0,a2
20014a00:	c188                	sw	a0,0(a1)
                self.w
20014a02:	5506                	lw	a0,96(sp)
20014a04:	d22a                	sw	a0,36(sp)
20014a06:	d62a                	sw	a0,44(sp)
        Self {
20014a08:	d42a                	sw	a0,40(sp)
    }
20014a0a:	5522                	lw	a0,40(sp)
20014a0c:	c4aa                	sw	a0,72(sp)
20014a0e:	4581                	li	a1,0
20014a10:	04b10723          	sb	a1,78(sp)
                self.w.bits = (self.w.bits & !(1 << { OF })) | ((<$U>::from(value) & 1) << { OF });
20014a14:	4526                	lw	a0,72(sp)
20014a16:	daaa                	sw	a0,116(sp)
20014a18:	4108                	lw	a0,0(a0)
20014a1a:	fffc0637          	lui	a2,0xfffc0
20014a1e:	167d                	add	a2,a2,-1 # fffbffff <_sstack+0x7ffbbfff>
20014a20:	8d71                	and	a0,a0,a2
20014a22:	04b107a3          	sb	a1,79(sp)
20014a26:	45a6                	lw	a1,72(sp)
20014a28:	c32e                	sw	a1,132(sp)
20014a2a:	c188                	sw	a0,0(a1)
                self.w
20014a2c:	4526                	lw	a0,72(sp)
20014a2e:	c52a                	sw	a0,136(sp)
        });
20014a30:	40ba                	lw	ra,140(sp)
20014a32:	6149                	add	sp,sp,144
20014a34:	8082                	ret

20014a36 <e310x_hal::clock::CoreClk::configure_pll::{{closure}}>:
            .write(|w| unsafe { w.div().bits(divider_div as u8).divby1().bit(divider_bypass) });
20014a36:	715d                	add	sp,sp,-80
20014a38:	c686                	sw	ra,76(sp)
20014a3a:	c22a                	sw	a0,4(sp)
20014a3c:	c42e                	sw	a1,8(sp)
20014a3e:	c632                	sw	a2,12(sp)
20014a40:	c832                	sw	a2,16(sp)
20014a42:	d232                	sw	a2,36(sp)
        Self {
20014a44:	d032                	sw	a2,32(sp)
    }
20014a46:	5582                	lw	a1,32(sp)
20014a48:	4512                	lw	a0,4(sp)
20014a4a:	4108                	lw	a0,0(a0)
20014a4c:	d82e                	sw	a1,48(sp)
20014a4e:	02a10ba3          	sb	a0,55(sp)
                self.w.bits = (self.w.bits & !(Self::MASK << { OF }))
20014a52:	55c2                	lw	a1,48(sp)
20014a54:	dc2e                	sw	a1,56(sp)
20014a56:	418c                	lw	a1,0(a1)
20014a58:	fc05f593          	and	a1,a1,-64
                    | ((value.into() & Self::MASK) << { OF });
20014a5c:	c02e                	sw	a1,0(sp)
20014a5e:	fffff097          	auipc	ra,0xfffff
20014a62:	c4a080e7          	jalr	-950(ra) # 200136a8 <<T as core::convert::Into<U>>::into>
20014a66:	85aa                	mv	a1,a0
20014a68:	4502                	lw	a0,0(sp)
20014a6a:	03f5f613          	and	a2,a1,63
                self.w.bits = (self.w.bits & !(Self::MASK << { OF }))
20014a6e:	55c2                	lw	a1,48(sp)
20014a70:	c0ae                	sw	a1,64(sp)
20014a72:	8d51                	or	a0,a0,a2
20014a74:	c188                	sw	a0,0(a1)
                self.w
20014a76:	5542                	lw	a0,48(sp)
20014a78:	ca2a                	sw	a0,20(sp)
20014a7a:	ce2a                	sw	a0,28(sp)
        Self {
20014a7c:	cc2a                	sw	a0,24(sp)
    }
20014a7e:	4562                	lw	a0,24(sp)
20014a80:	45a2                	lw	a1,8(sp)
20014a82:	0005c583          	lbu	a1,0(a1)
20014a86:	d42a                	sw	a0,40(sp)
20014a88:	02b10723          	sb	a1,46(sp)
                self.w.bits = (self.w.bits & !(1 << { OF })) | ((<$U>::from(value) & 1) << { OF });
20014a8c:	5522                	lw	a0,40(sp)
20014a8e:	de2a                	sw	a0,60(sp)
20014a90:	4108                	lw	a0,0(a0)
20014a92:	eff57513          	and	a0,a0,-257
20014a96:	02b107a3          	sb	a1,47(sp)
20014a9a:	00859613          	sll	a2,a1,0x8
20014a9e:	55a2                	lw	a1,40(sp)
20014aa0:	c2ae                	sw	a1,68(sp)
20014aa2:	8d51                	or	a0,a0,a2
20014aa4:	c188                	sw	a0,0(a1)
                self.w
20014aa6:	5522                	lw	a0,40(sp)
20014aa8:	c4aa                	sw	a0,72(sp)
20014aaa:	40b6                	lw	ra,76(sp)
20014aac:	6161                	add	sp,sp,80
20014aae:	8082                	ret

20014ab0 <e310x_hal::clock::AonClk::freeze>:

    /// Freezes low-frequency clock configuration, making it effective
    pub(crate) fn freeze(self) -> Hertz {
20014ab0:	7131                	add	sp,sp,-192
20014ab2:	df06                	sw	ra,188(sp)
20014ab4:	4641                	li	a2,16

            freq
        } else {
            // Use internal oscillator.

            let trim = 16;
20014ab6:	00c10b23          	sb	a2,22(sp)
20014aba:	4611                	li	a2,4
            let div = 4; // LFROSC/5
20014abc:	00c10ba3          	sb	a2,23(sp)
20014ac0:	cc2a                	sw	a0,24(sp)
20014ac2:	ce2e                	sw	a1,28(sp)
20014ac4:	10000537          	lui	a0,0x10000
        let aonclk = unsafe { &*AONCLK::ptr() };
20014ac8:	dc2a                	sw	a0,56(sp)
        if let Some(freq) = self.lfaltclk {
20014aca:	4562                	lw	a0,24(sp)
20014acc:	c531                	beqz	a0,20014b18 <e310x_hal::clock::AonClk::freeze+0x68>
20014ace:	a009                	j	20014ad0 <e310x_hal::clock::AonClk::freeze+0x20>
20014ad0:	4572                	lw	a0,28(sp)
20014ad2:	c82a                	sw	a0,16(sp)
20014ad4:	de2a                	sw	a0,60(sp)
20014ad6:	10000537          	lui	a0,0x10000
20014ada:	07050513          	add	a0,a0,112 # 10000070 <.Lline_table_start1+0xffd0bfa>
20014ade:	c62a                	sw	a0,12(sp)
20014ae0:	d0aa                	sw	a0,96(sp)
20014ae2:	4501                	li	a0,0
            f(&mut REG::Writer::from(W {
20014ae4:	ceaa                	sw	a0,92(sp)
20014ae6:	4576                	lw	a0,92(sp)
20014ae8:	d4aa                	sw	a0,104(sp)
    }
}
impl From<crate::W<LFROSCCFG_SPEC>> for W {
    #[inline(always)]
    fn from(writer: crate::W<LFROSCCFG_SPEC>) -> Self {
        W(writer)
20014aea:	d2aa                	sw	a0,100(sp)
    }
20014aec:	5516                	lw	a0,100(sp)
20014aee:	ccaa                	sw	a0,88(sp)
20014af0:	08a8                	add	a0,sp,88
20014af2:	caaa                	sw	a0,84(sp)
20014af4:	4556                	lw	a0,84(sp)
20014af6:	00000097          	auipc	ra,0x0
20014afa:	0dc080e7          	jalr	220(ra) # 20014bd2 <e310x_hal::clock::AonClk::freeze::{{closure}}>
20014afe:	85aa                	mv	a1,a0
20014b00:	4532                	lw	a0,12(sp)
20014b02:	418c                	lw	a1,0(a1)
20014b04:	d72a                	sw	a0,172(sp)
20014b06:	d92e                	sw	a1,176(sp)
20014b08:	db2a                	sw	a0,180(sp)
        unsafe { ptr::write_volatile(self.value.get(), value) }
20014b0a:	fffff097          	auipc	ra,0xfffff
20014b0e:	b5c080e7          	jalr	-1188(ra) # 20013666 <core::ptr::write_volatile>
20014b12:	4542                	lw	a0,16(sp)
            freq
20014b14:	d02a                	sw	a0,32(sp)
        if let Some(freq) = self.lfaltclk {
20014b16:	a085                	j	20014b76 <e310x_hal::clock::AonClk::freeze+0xc6>
20014b18:	4541                	li	a0,16
            let trim = 16;
20014b1a:	02a10323          	sb	a0,38(sp)
20014b1e:	4511                	li	a0,4
            let div = 4; // LFROSC/5
20014b20:	02a103a3          	sb	a0,39(sp)
20014b24:	02610513          	add	a0,sp,38

            // Configure LFROSC
            aonclk.lfrosccfg.write(|w| unsafe {
20014b28:	d42a                	sw	a0,40(sp)
20014b2a:	02710513          	add	a0,sp,39
20014b2e:	d62a                	sw	a0,44(sp)
20014b30:	5522                	lw	a0,40(sp)
20014b32:	55b2                	lw	a1,44(sp)
20014b34:	10000637          	lui	a2,0x10000
20014b38:	07060613          	add	a2,a2,112 # 10000070 <.Lline_table_start1+0xffd0bfa>
20014b3c:	c432                	sw	a2,8(sp)
20014b3e:	dcb2                	sw	a2,120(sp)
20014b40:	deaa                	sw	a0,124(sp)
20014b42:	c12e                	sw	a1,128(sp)
20014b44:	4601                	li	a2,0
20014b46:	dab2                	sw	a2,116(sp)
20014b48:	5656                	lw	a2,116(sp)
20014b4a:	c532                	sw	a2,136(sp)
        W(writer)
20014b4c:	c332                	sw	a2,132(sp)
    }
20014b4e:	461a                	lw	a2,132(sp)
20014b50:	d8b2                	sw	a2,112(sp)
20014b52:	1890                	add	a2,sp,112
20014b54:	d6b2                	sw	a2,108(sp)
20014b56:	5636                	lw	a2,108(sp)
20014b58:	00000097          	auipc	ra,0x0
20014b5c:	0ae080e7          	jalr	174(ra) # 20014c06 <e310x_hal::clock::AonClk::freeze::{{closure}}>
20014b60:	85aa                	mv	a1,a0
20014b62:	4522                	lw	a0,8(sp)
20014b64:	418c                	lw	a1,0(a1)
20014b66:	d12a                	sw	a0,160(sp)
20014b68:	d32e                	sw	a1,164(sp)
20014b6a:	d52a                	sw	a0,168(sp)
20014b6c:	fffff097          	auipc	ra,0xfffff
20014b70:	afa080e7          	jalr	-1286(ra) # 20013666 <core::ptr::write_volatile>
20014b74:	a029                	j	20014b7e <e310x_hal::clock::AonClk::freeze+0xce>
            // Wait for LFROSC to stabilize
            while !aonclk.lfrosccfg.read().ready().bit_is_set() {}

            Hertz(32_768) // It's not so accurate: ≈30 kHz according to the datasheet
        }
    }
20014b76:	5502                	lw	a0,32(sp)
20014b78:	50fa                	lw	ra,188(sp)
20014b7a:	6129                	add	sp,sp,192
20014b7c:	8082                	ret
20014b7e:	10000537          	lui	a0,0x10000
20014b82:	07050513          	add	a0,a0,112 # 10000070 <.Lline_table_start1+0xffd0bfa>
20014b86:	c4aa                	sw	a0,72(sp)
20014b88:	cd2a                	sw	a0,152(sp)
20014b8a:	cf2a                	sw	a0,156(sp)
        unsafe { ptr::read_volatile(self.value.get()) }
20014b8c:	fffff097          	auipc	ra,0xfffff
20014b90:	acc080e7          	jalr	-1332(ra) # 20013658 <core::ptr::read_volatile>
        REG::Reader::from(R {
20014b94:	c2aa                	sw	a0,68(sp)
20014b96:	4516                	lw	a0,68(sp)
20014b98:	c8aa                	sw	a0,80(sp)
        R(reader)
20014b9a:	c6aa                	sw	a0,76(sp)
    }
20014b9c:	4536                	lw	a0,76(sp)
            while !aonclk.lfrosccfg.read().ready().bit_is_set() {}
20014b9e:	da2a                	sw	a0,52(sp)
20014ba0:	1848                	add	a0,sp,52
20014ba2:	c0aa                	sw	a0,64(sp)
20014ba4:	dd2a                	sw	a0,184(sp)
        ENABLE_R::new(((self.bits >> 30) & 1) != 0)
    }
    #[doc = "Bit 31"]
    #[inline(always)]
    pub fn ready(&self) -> READY_R {
        READY_R::new(((self.bits >> 31) & 1) != 0)
20014ba6:	5552                	lw	a0,52(sp)
20014ba8:	817d                	srl	a0,a0,0x1f
20014baa:	08a10ba3          	sb	a0,151(sp)
        Self {
20014bae:	08a10b23          	sb	a0,150(sp)
    }
20014bb2:	09614503          	lbu	a0,150(sp)
20014bb6:	02a109a3          	sb	a0,51(sp)
20014bba:	03310513          	add	a0,sp,51
20014bbe:	c72a                	sw	a0,140(sp)
20014bc0:	c92a                	sw	a0,144(sp)
        self.bits
20014bc2:	03314503          	lbu	a0,51(sp)
20014bc6:	8905                	and	a0,a0,1
20014bc8:	d95d                	beqz	a0,20014b7e <e310x_hal::clock::AonClk::freeze+0xce>
20014bca:	a009                	j	20014bcc <e310x_hal::clock::AonClk::freeze+0x11c>
20014bcc:	6521                	lui	a0,0x8
            Hertz(32_768) // It's not so accurate: ≈30 kHz according to the datasheet
20014bce:	d02a                	sw	a0,32(sp)
        if let Some(freq) = self.lfaltclk {
20014bd0:	b75d                	j	20014b76 <e310x_hal::clock::AonClk::freeze+0xc6>

20014bd2 <e310x_hal::clock::AonClk::freeze::{{closure}}>:
            aonclk.lfrosccfg.write(|w| w.enable().bit(false));
20014bd2:	7179                	add	sp,sp,-48
20014bd4:	c62a                	sw	a0,12(sp)
20014bd6:	c82a                	sw	a0,16(sp)
20014bd8:	cc2a                	sw	a0,24(sp)
        Self {
20014bda:	ca2a                	sw	a0,20(sp)
    }
20014bdc:	4552                	lw	a0,20(sp)
20014bde:	ce2a                	sw	a0,28(sp)
20014be0:	4581                	li	a1,0
20014be2:	02b10123          	sb	a1,34(sp)
                self.w.bits = (self.w.bits & !(1 << { OF })) | ((<$U>::from(value) & 1) << { OF });
20014be6:	4572                	lw	a0,28(sp)
20014be8:	d22a                	sw	a0,36(sp)
20014bea:	4108                	lw	a0,0(a0)
20014bec:	c0000637          	lui	a2,0xc0000
20014bf0:	167d                	add	a2,a2,-1 # bfffffff <_sstack+0x3fffbfff>
20014bf2:	8d71                	and	a0,a0,a2
20014bf4:	02b101a3          	sb	a1,35(sp)
20014bf8:	45f2                	lw	a1,28(sp)
20014bfa:	d42e                	sw	a1,40(sp)
20014bfc:	c188                	sw	a0,0(a1)
                self.w
20014bfe:	4572                	lw	a0,28(sp)
20014c00:	d62a                	sw	a0,44(sp)
20014c02:	6145                	add	sp,sp,48
20014c04:	8082                	ret

20014c06 <e310x_hal::clock::AonClk::freeze::{{closure}}>:
            aonclk.lfrosccfg.write(|w| unsafe {
20014c06:	7119                	add	sp,sp,-128
20014c08:	de86                	sw	ra,124(sp)
20014c0a:	c832                	sw	a2,16(sp)
20014c0c:	cc2a                	sw	a0,24(sp)
20014c0e:	ce2e                	sw	a1,28(sp)
20014c10:	d032                	sw	a2,32(sp)
20014c12:	d432                	sw	a2,40(sp)
20014c14:	de32                	sw	a2,60(sp)
        Self {
20014c16:	dc32                	sw	a2,56(sp)
    }
20014c18:	55e2                	lw	a1,56(sp)
                w.trim().bits(trim);
20014c1a:	4562                	lw	a0,24(sp)
20014c1c:	00054503          	lbu	a0,0(a0) # 8000 <.Lline_table_start0+0x1feb>
20014c20:	ccae                	sw	a1,88(sp)
20014c22:	04a10fa3          	sb	a0,95(sp)
                self.w.bits = (self.w.bits & !(Self::MASK << { OF }))
20014c26:	45e6                	lw	a1,88(sp)
20014c28:	d0ae                	sw	a1,96(sp)
20014c2a:	418c                	lw	a1,0(a1)
20014c2c:	ffe10637          	lui	a2,0xffe10
20014c30:	167d                	add	a2,a2,-1 # ffe0ffff <_sstack+0x7fe0bfff>
20014c32:	8df1                	and	a1,a1,a2
                    | ((value.into() & Self::MASK) << { OF });
20014c34:	c62e                	sw	a1,12(sp)
20014c36:	fffff097          	auipc	ra,0xfffff
20014c3a:	a72080e7          	jalr	-1422(ra) # 200136a8 <<T as core::convert::Into<U>>::into>
20014c3e:	4642                	lw	a2,16(sp)
20014c40:	85aa                	mv	a1,a0
20014c42:	4532                	lw	a0,12(sp)
20014c44:	89fd                	and	a1,a1,31
20014c46:	01059693          	sll	a3,a1,0x10
                self.w.bits = (self.w.bits & !(Self::MASK << { OF }))
20014c4a:	45e6                	lw	a1,88(sp)
20014c4c:	d6ae                	sw	a1,108(sp)
20014c4e:	8d55                	or	a0,a0,a3
20014c50:	c188                	sw	a0,0(a1)
20014c52:	d232                	sw	a2,36(sp)
20014c54:	c2b2                	sw	a2,68(sp)
        Self {
20014c56:	c0b2                	sw	a2,64(sp)
    }
20014c58:	4586                	lw	a1,64(sp)
                w.div().bits(div);
20014c5a:	4572                	lw	a0,28(sp)
20014c5c:	00054503          	lbu	a0,0(a0)
20014c60:	c8ae                	sw	a1,80(sp)
20014c62:	04a10ba3          	sb	a0,87(sp)
                self.w.bits = (self.w.bits & !(Self::MASK << { OF }))
20014c66:	45c6                	lw	a1,80(sp)
20014c68:	d2ae                	sw	a1,100(sp)
20014c6a:	418c                	lw	a1,0(a1)
20014c6c:	fc05f593          	and	a1,a1,-64
                    | ((value.into() & Self::MASK) << { OF });
20014c70:	ca2e                	sw	a1,20(sp)
20014c72:	fffff097          	auipc	ra,0xfffff
20014c76:	a36080e7          	jalr	-1482(ra) # 200136a8 <<T as core::convert::Into<U>>::into>
20014c7a:	4642                	lw	a2,16(sp)
20014c7c:	85aa                	mv	a1,a0
20014c7e:	4552                	lw	a0,20(sp)
20014c80:	03f5f693          	and	a3,a1,63
                self.w.bits = (self.w.bits & !(Self::MASK << { OF }))
20014c84:	45c6                	lw	a1,80(sp)
20014c86:	d8ae                	sw	a1,112(sp)
20014c88:	8d55                	or	a0,a0,a3
20014c8a:	c188                	sw	a0,0(a1)
20014c8c:	d632                	sw	a2,44(sp)
20014c8e:	da32                	sw	a2,52(sp)
        Self {
20014c90:	d832                	sw	a2,48(sp)
    }
20014c92:	5542                	lw	a0,48(sp)
20014c94:	c4aa                	sw	a0,72(sp)
20014c96:	4585                	li	a1,1
20014c98:	04b10723          	sb	a1,78(sp)
                self.w.bits = (self.w.bits & !(1 << { OF })) | ((<$U>::from(value) & 1) << { OF });
20014c9c:	4526                	lw	a0,72(sp)
20014c9e:	d4aa                	sw	a0,104(sp)
20014ca0:	4108                	lw	a0,0(a0)
20014ca2:	04b107a3          	sb	a1,79(sp)
20014ca6:	45a6                	lw	a1,72(sp)
20014ca8:	daae                	sw	a1,116(sp)
20014caa:	40000637          	lui	a2,0x40000
20014cae:	8d51                	or	a0,a0,a2
20014cb0:	c188                	sw	a0,0(a1)
                self.w
20014cb2:	4526                	lw	a0,72(sp)
20014cb4:	dcaa                	sw	a0,120(sp)
            });
20014cb6:	50f6                	lw	ra,124(sp)
20014cb8:	6109                	add	sp,sp,128
20014cba:	8082                	ret

20014cbc <e310x_hal::clock::Clocks::freeze>:
    lfclk: Hertz,
}

impl Clocks {
    /// Freezes the coreclk and aonclk frequencies.
    pub fn freeze(coreclk: CoreClk, aonclk: AonClk) -> Self {
20014cbc:	7179                	add	sp,sp,-48
20014cbe:	d606                	sw	ra,44(sp)
20014cc0:	c432                	sw	a2,8(sp)
20014cc2:	c62e                	sw	a1,12(sp)
20014cc4:	ce2e                	sw	a1,28(sp)
20014cc6:	d032                	sw	a2,32(sp)
        let coreclk = coreclk.freeze();
20014cc8:	fffff097          	auipc	ra,0xfffff
20014ccc:	a2a080e7          	jalr	-1494(ra) # 200136f2 <e310x_hal::clock::CoreClk::freeze>
20014cd0:	45a2                	lw	a1,8(sp)
20014cd2:	862a                	mv	a2,a0
20014cd4:	4532                	lw	a0,12(sp)
20014cd6:	c832                	sw	a2,16(sp)
20014cd8:	d232                	sw	a2,36(sp)
        let lfclk = aonclk.freeze();
20014cda:	00000097          	auipc	ra,0x0
20014cde:	dd6080e7          	jalr	-554(ra) # 20014ab0 <e310x_hal::clock::AonClk::freeze>
20014ce2:	45c2                	lw	a1,16(sp)
20014ce4:	d42a                	sw	a0,40(sp)
        Clocks { coreclk, lfclk }
20014ce6:	ca2e                	sw	a1,20(sp)
20014ce8:	cc2a                	sw	a0,24(sp)
    }
20014cea:	4552                	lw	a0,20(sp)
20014cec:	45e2                	lw	a1,24(sp)
20014cee:	50b2                	lw	ra,44(sp)
20014cf0:	6145                	add	sp,sp,48
20014cf2:	8082                	ret

20014cf4 <e310x_hal::clock::Clocks::tlclk>:
    pub fn coreclk(&self) -> Hertz {
        self.coreclk
    }

    /// Returns the frozen tlclk frequency
    pub fn tlclk(&self) -> Hertz {
20014cf4:	1141                	add	sp,sp,-16
20014cf6:	c62a                	sw	a0,12(sp)
        // For the FE310-G000, the TileLink bus clock (tlclk) is fixed to be
        // the same as the processor core clock (coreclk)
        self.coreclk
20014cf8:	4108                	lw	a0,0(a0)
    }
20014cfa:	0141                	add	sp,sp,16
20014cfc:	8082                	ret

20014cfe <e310x_hal::core::clint::MTIME::mtime_lo>:
pub struct MTIME;

impl MTIME {
    /// Read mtime register.
    #[inline]
    pub fn mtime_lo(&self) -> u32 {
20014cfe:	7179                	add	sp,sp,-48
20014d00:	d606                	sw	ra,44(sp)
20014d02:	c42a                	sw	a0,8(sp)
20014d04:	0200c537          	lui	a0,0x200c
20014d08:	1561                	add	a0,a0,-8 # 200bff8 <.Lline_table_start1+0x1fdcb82>
20014d0a:	ca2a                	sw	a0,20(sp)
20014d0c:	d02a                	sw	a0,32(sp)
20014d0e:	d22a                	sw	a0,36(sp)
20014d10:	fffff097          	auipc	ra,0xfffff
20014d14:	948080e7          	jalr	-1720(ra) # 20013658 <core::ptr::read_volatile>
        REG::Reader::from(R {
20014d18:	c82a                	sw	a0,16(sp)
20014d1a:	4542                	lw	a0,16(sp)
20014d1c:	ce2a                	sw	a0,28(sp)
    }
}
impl From<crate::R<MTIME_SPEC>> for R {
    #[inline(always)]
    fn from(reader: crate::R<MTIME_SPEC>) -> Self {
        R(reader)
20014d1e:	cc2a                	sw	a0,24(sp)
    }
20014d20:	4562                	lw	a0,24(sp)
        unsafe { (*CLINT::ptr()).mtime.read().bits() }
20014d22:	c22a                	sw	a0,4(sp)
20014d24:	0048                	add	a0,sp,4
20014d26:	d42a                	sw	a0,40(sp)
20014d28:	c62a                	sw	a0,12(sp)
        self.bits
20014d2a:	4512                	lw	a0,4(sp)
    }
20014d2c:	50b2                	lw	ra,44(sp)
20014d2e:	6145                	add	sp,sp,48
20014d30:	8082                	ret

20014d32 <e310x_hal::core::clint::MTIME::mtime_hi>:

    /// Read mtimeh register.
    #[inline]
    pub fn mtime_hi(&self) -> u32 {
20014d32:	7179                	add	sp,sp,-48
20014d34:	d606                	sw	ra,44(sp)
20014d36:	c42a                	sw	a0,8(sp)
20014d38:	0200c537          	lui	a0,0x200c
20014d3c:	1571                	add	a0,a0,-4 # 200bffc <.Lline_table_start1+0x1fdcb86>
20014d3e:	ca2a                	sw	a0,20(sp)
20014d40:	d02a                	sw	a0,32(sp)
20014d42:	d22a                	sw	a0,36(sp)
20014d44:	fffff097          	auipc	ra,0xfffff
20014d48:	914080e7          	jalr	-1772(ra) # 20013658 <core::ptr::read_volatile>
        REG::Reader::from(R {
20014d4c:	c82a                	sw	a0,16(sp)
20014d4e:	4542                	lw	a0,16(sp)
20014d50:	ce2a                	sw	a0,28(sp)
    }
}
impl From<crate::R<MTIMEH_SPEC>> for R {
    #[inline(always)]
    fn from(reader: crate::R<MTIMEH_SPEC>) -> Self {
        R(reader)
20014d52:	cc2a                	sw	a0,24(sp)
    }
20014d54:	4562                	lw	a0,24(sp)
        unsafe { (*CLINT::ptr()).mtimeh.read().bits() }
20014d56:	c22a                	sw	a0,4(sp)
20014d58:	0048                	add	a0,sp,4
20014d5a:	d42a                	sw	a0,40(sp)
20014d5c:	c62a                	sw	a0,12(sp)
        self.bits
20014d5e:	4512                	lw	a0,4(sp)
    }
20014d60:	50b2                	lw	ra,44(sp)
20014d62:	6145                	add	sp,sp,48
20014d64:	8082                	ret

20014d66 <e310x_hal::core::clint::MTIME::mtime>:

    /// Read mtime and mtimeh registers.
    pub fn mtime(&self) -> u64 {
20014d66:	1101                	add	sp,sp,-32
20014d68:	ce06                	sw	ra,28(sp)
20014d6a:	c62a                	sw	a0,12(sp)
20014d6c:	c82a                	sw	a0,16(sp)
        read64!(self.mtime_hi(), self.mtime_lo())
20014d6e:	a009                	j	20014d70 <e310x_hal::core::clint::MTIME::mtime+0xa>
20014d70:	4532                	lw	a0,12(sp)
20014d72:	00000097          	auipc	ra,0x0
20014d76:	fc0080e7          	jalr	-64(ra) # 20014d32 <e310x_hal::core::clint::MTIME::mtime_hi>
20014d7a:	85aa                	mv	a1,a0
20014d7c:	4532                	lw	a0,12(sp)
20014d7e:	c42e                	sw	a1,8(sp)
20014d80:	862e                	mv	a2,a1
20014d82:	c032                	sw	a2,0(sp)
20014d84:	ca2e                	sw	a1,20(sp)
20014d86:	00000097          	auipc	ra,0x0
20014d8a:	f78080e7          	jalr	-136(ra) # 20014cfe <e310x_hal::core::clint::MTIME::mtime_lo>
20014d8e:	85aa                	mv	a1,a0
20014d90:	4532                	lw	a0,12(sp)
20014d92:	862e                	mv	a2,a1
20014d94:	c232                	sw	a2,4(sp)
20014d96:	cc2e                	sw	a1,24(sp)
20014d98:	00000097          	auipc	ra,0x0
20014d9c:	f9a080e7          	jalr	-102(ra) # 20014d32 <e310x_hal::core::clint::MTIME::mtime_hi>
20014da0:	85aa                	mv	a1,a0
20014da2:	4522                	lw	a0,8(sp)
20014da4:	fcb516e3          	bne	a0,a1,20014d70 <e310x_hal::core::clint::MTIME::mtime+0xa>
20014da8:	a009                	j	20014daa <e310x_hal::core::clint::MTIME::mtime+0x44>
    }
20014daa:	4582                	lw	a1,0(sp)
20014dac:	4512                	lw	a0,4(sp)
20014dae:	40f2                	lw	ra,28(sp)
20014db0:	6105                	add	sp,sp,32
20014db2:	8082                	ret

20014db4 <<e310x_hal::core::clint::Clint as core::convert::From<e310x::CLINT>>::from>:
    /// Opaque mtime register
    pub mtime: MTIME,
}

impl From<CLINT> for Clint {
    fn from(_: CLINT) -> Self {
20014db4:	1141                	add	sp,sp,-16
        Clint {
            msip: MSIP { _0: () },
            mtimecmp: MTIMECMP { _0: () },
            mtime: MTIME,
        }
    }
20014db6:	0141                	add	sp,sp,16
20014db8:	8082                	ret

20014dba <e310x_hal::core::counters::PerformanceCounters::new>:
            mcycle: MCYCLE,
            minstret: MINSTRET,
            mhpmcounter3: MHPMCOUNTER3,
            mhpmcounter4: MHPMCOUNTER4,
        }
    }
20014dba:	8082                	ret

20014dbc <<e310x_hal::core::plic::Plic as core::convert::From<e310x::PLIC>>::from>:
    /// Opaque uart0 register
    pub uart0: INTERRUPT<IrqUart0>,
}

impl From<PLIC> for Plic {
    fn from(_: PLIC) -> Self {
20014dbc:	711d                	add	sp,sp,-96
20014dbe:	d82a                	sw	a0,48(sp)
20014dc0:	4505                	li	a0,1
20014dc2:	da2a                	sw	a0,52(sp)
20014dc4:	4501                	li	a0,0
            mext: MEXT { _0: () },
            threshold: THRESHOLD { _0: () },
            claim: CLAIM { _0: () },
            wdog: INTERRUPT {
                offset: 0,
                mask: 1 << (Interrupt::WATCHDOG as u8),
20014dc6:	e919                	bnez	a0,20014ddc <<e310x_hal::core::plic::Plic as core::convert::From<e310x::PLIC>>::from+0x20>
20014dc8:	a009                	j	20014dca <<e310x_hal::core::plic::Plic as core::convert::From<e310x::PLIC>>::from+0xe>
20014dca:	55d2                	lw	a1,52(sp)
20014dcc:	0ff5f513          	zext.b	a0,a1
20014dd0:	d62e                	sw	a1,44(sp)
20014dd2:	02000593          	li	a1,32
20014dd6:	02b56163          	bltu	a0,a1,20014df8 <<e310x_hal::core::plic::Plic as core::convert::From<e310x::PLIC>>::from+0x3c>
20014dda:	a805                	j	20014e0a <<e310x_hal::core::plic::Plic as core::convert::From<e310x::PLIC>>::from+0x4e>
20014ddc:	20018537          	lui	a0,0x20018
20014de0:	4f050513          	add	a0,a0,1264 # 200184f0 <str.4>
20014de4:	200195b7          	lui	a1,0x20019
20014de8:	88c58613          	add	a2,a1,-1908 # 2001888c <.L__unnamed_56>
20014dec:	45f1                	li	a1,28
20014dee:	00000097          	auipc	ra,0x0
20014df2:	69e080e7          	jalr	1694(ra) # 2001548c <core::panicking::panic>
20014df6:	0000                	unimp
20014df8:	55b2                	lw	a1,44(sp)
20014dfa:	4505                	li	a0,1
20014dfc:	d22a                	sw	a0,36(sp)
20014dfe:	00b51533          	sll	a0,a0,a1
20014e02:	d42a                	sw	a0,40(sp)
20014e04:	4501                	li	a0,0
                priority_offset: Interrupt::WATCHDOG as usize,
20014e06:	ed15                	bnez	a0,20014e42 <<e310x_hal::core::plic::Plic as core::convert::From<e310x::PLIC>>::from+0x86>
20014e08:	a005                	j	20014e28 <<e310x_hal::core::plic::Plic as core::convert::From<e310x::PLIC>>::from+0x6c>
                mask: 1 << (Interrupt::WATCHDOG as u8),
20014e0a:	20018537          	lui	a0,0x20018
20014e0e:	2c050513          	add	a0,a0,704 # 200182c0 <str.0>
20014e12:	200195b7          	lui	a1,0x20019
20014e16:	89c58613          	add	a2,a1,-1892 # 2001889c <.L__unnamed_57>
20014e1a:	02300593          	li	a1,35
20014e1e:	00000097          	auipc	ra,0x0
20014e22:	66e080e7          	jalr	1646(ra) # 2001548c <core::panicking::panic>
20014e26:	0000                	unimp
                priority_offset: Interrupt::WATCHDOG as usize,
20014e28:	5622                	lw	a2,40(sp)
20014e2a:	5512                	lw	a0,36(sp)
20014e2c:	0542                	sll	a0,a0,0x10
20014e2e:	01055593          	srl	a1,a0,0x10
20014e32:	4501                	li	a0,0
            wdog: INTERRUPT {
20014e34:	dc2a                	sw	a0,56(sp)
20014e36:	de32                	sw	a2,60(sp)
20014e38:	c0ae                	sw	a1,64(sp)
20014e3a:	4589                	li	a1,2
                _marker: PhantomData,
            },
            rtc: INTERRUPT {
                offset: 0,
                mask: 1 << (Interrupt::RTC as u8),
20014e3c:	d02e                	sw	a1,32(sp)
20014e3e:	e90d                	bnez	a0,20014e70 <<e310x_hal::core::plic::Plic as core::convert::From<e310x::PLIC>>::from+0xb4>
20014e40:	a839                	j	20014e5e <<e310x_hal::core::plic::Plic as core::convert::From<e310x::PLIC>>::from+0xa2>
                priority_offset: Interrupt::WATCHDOG as usize,
20014e42:	20018537          	lui	a0,0x20018
20014e46:	4f050513          	add	a0,a0,1264 # 200184f0 <str.4>
20014e4a:	200195b7          	lui	a1,0x20019
20014e4e:	8ac58613          	add	a2,a1,-1876 # 200188ac <.L__unnamed_58>
20014e52:	45f1                	li	a1,28
20014e54:	00000097          	auipc	ra,0x0
20014e58:	638080e7          	jalr	1592(ra) # 2001548c <core::panicking::panic>
20014e5c:	0000                	unimp
                mask: 1 << (Interrupt::RTC as u8),
20014e5e:	5582                	lw	a1,32(sp)
20014e60:	0ff5f513          	zext.b	a0,a1
20014e64:	ce2e                	sw	a1,28(sp)
20014e66:	02000593          	li	a1,32
20014e6a:	02b56163          	bltu	a0,a1,20014e8c <<e310x_hal::core::plic::Plic as core::convert::From<e310x::PLIC>>::from+0xd0>
20014e6e:	a80d                	j	20014ea0 <<e310x_hal::core::plic::Plic as core::convert::From<e310x::PLIC>>::from+0xe4>
20014e70:	20018537          	lui	a0,0x20018
20014e74:	4f050513          	add	a0,a0,1264 # 200184f0 <str.4>
20014e78:	200195b7          	lui	a1,0x20019
20014e7c:	8bc58613          	add	a2,a1,-1860 # 200188bc <.L__unnamed_59>
20014e80:	45f1                	li	a1,28
20014e82:	00000097          	auipc	ra,0x0
20014e86:	60a080e7          	jalr	1546(ra) # 2001548c <core::panicking::panic>
20014e8a:	0000                	unimp
20014e8c:	45f2                	lw	a1,28(sp)
20014e8e:	4505                	li	a0,1
20014e90:	00b51533          	sll	a0,a0,a1
20014e94:	ca2a                	sw	a0,20(sp)
20014e96:	4509                	li	a0,2
20014e98:	cc2a                	sw	a0,24(sp)
20014e9a:	4501                	li	a0,0
                priority_offset: Interrupt::RTC as usize,
20014e9c:	ed15                	bnez	a0,20014ed8 <<e310x_hal::core::plic::Plic as core::convert::From<e310x::PLIC>>::from+0x11c>
20014e9e:	a005                	j	20014ebe <<e310x_hal::core::plic::Plic as core::convert::From<e310x::PLIC>>::from+0x102>
                mask: 1 << (Interrupt::RTC as u8),
20014ea0:	20018537          	lui	a0,0x20018
20014ea4:	2c050513          	add	a0,a0,704 # 200182c0 <str.0>
20014ea8:	200195b7          	lui	a1,0x20019
20014eac:	8cc58613          	add	a2,a1,-1844 # 200188cc <.L__unnamed_60>
20014eb0:	02300593          	li	a1,35
20014eb4:	00000097          	auipc	ra,0x0
20014eb8:	5d8080e7          	jalr	1496(ra) # 2001548c <core::panicking::panic>
20014ebc:	0000                	unimp
                priority_offset: Interrupt::RTC as usize,
20014ebe:	4652                	lw	a2,20(sp)
20014ec0:	4562                	lw	a0,24(sp)
20014ec2:	0542                	sll	a0,a0,0x10
20014ec4:	01055593          	srl	a1,a0,0x10
20014ec8:	4501                	li	a0,0
            rtc: INTERRUPT {
20014eca:	c2aa                	sw	a0,68(sp)
20014ecc:	c4b2                	sw	a2,72(sp)
20014ece:	c6ae                	sw	a1,76(sp)
20014ed0:	458d                	li	a1,3
                _marker: PhantomData,
            },
            uart0: INTERRUPT {
                offset: 0,
                mask: 1 << (Interrupt::UART0 as u8),
20014ed2:	c82e                	sw	a1,16(sp)
20014ed4:	e90d                	bnez	a0,20014f06 <<e310x_hal::core::plic::Plic as core::convert::From<e310x::PLIC>>::from+0x14a>
20014ed6:	a839                	j	20014ef4 <<e310x_hal::core::plic::Plic as core::convert::From<e310x::PLIC>>::from+0x138>
                priority_offset: Interrupt::RTC as usize,
20014ed8:	20018537          	lui	a0,0x20018
20014edc:	4f050513          	add	a0,a0,1264 # 200184f0 <str.4>
20014ee0:	200195b7          	lui	a1,0x20019
20014ee4:	8dc58613          	add	a2,a1,-1828 # 200188dc <.L__unnamed_61>
20014ee8:	45f1                	li	a1,28
20014eea:	00000097          	auipc	ra,0x0
20014eee:	5a2080e7          	jalr	1442(ra) # 2001548c <core::panicking::panic>
20014ef2:	0000                	unimp
                mask: 1 << (Interrupt::UART0 as u8),
20014ef4:	45c2                	lw	a1,16(sp)
20014ef6:	0ff5f513          	zext.b	a0,a1
20014efa:	c62e                	sw	a1,12(sp)
20014efc:	02000593          	li	a1,32
20014f00:	02b56163          	bltu	a0,a1,20014f22 <<e310x_hal::core::plic::Plic as core::convert::From<e310x::PLIC>>::from+0x166>
20014f04:	a80d                	j	20014f36 <<e310x_hal::core::plic::Plic as core::convert::From<e310x::PLIC>>::from+0x17a>
20014f06:	20018537          	lui	a0,0x20018
20014f0a:	4f050513          	add	a0,a0,1264 # 200184f0 <str.4>
20014f0e:	200195b7          	lui	a1,0x20019
20014f12:	8ec58613          	add	a2,a1,-1812 # 200188ec <.L__unnamed_62>
20014f16:	45f1                	li	a1,28
20014f18:	00000097          	auipc	ra,0x0
20014f1c:	574080e7          	jalr	1396(ra) # 2001548c <core::panicking::panic>
20014f20:	0000                	unimp
20014f22:	45b2                	lw	a1,12(sp)
20014f24:	4505                	li	a0,1
20014f26:	00b51533          	sll	a0,a0,a1
20014f2a:	c22a                	sw	a0,4(sp)
20014f2c:	450d                	li	a0,3
20014f2e:	c42a                	sw	a0,8(sp)
20014f30:	4501                	li	a0,0
                priority_offset: Interrupt::UART0 as usize,
20014f32:	ed31                	bnez	a0,20014f8e <<e310x_hal::core::plic::Plic as core::convert::From<e310x::PLIC>>::from+0x1d2>
20014f34:	a005                	j	20014f54 <<e310x_hal::core::plic::Plic as core::convert::From<e310x::PLIC>>::from+0x198>
                mask: 1 << (Interrupt::UART0 as u8),
20014f36:	20018537          	lui	a0,0x20018
20014f3a:	2c050513          	add	a0,a0,704 # 200182c0 <str.0>
20014f3e:	200195b7          	lui	a1,0x20019
20014f42:	8fc58613          	add	a2,a1,-1796 # 200188fc <.L__unnamed_63>
20014f46:	02300593          	li	a1,35
20014f4a:	00000097          	auipc	ra,0x0
20014f4e:	542080e7          	jalr	1346(ra) # 2001548c <core::panicking::panic>
20014f52:	0000                	unimp
                priority_offset: Interrupt::UART0 as usize,
20014f54:	55c2                	lw	a1,48(sp)
20014f56:	4612                	lw	a2,4(sp)
20014f58:	4522                	lw	a0,8(sp)
20014f5a:	0542                	sll	a0,a0,0x10
20014f5c:	8141                	srl	a0,a0,0x10
20014f5e:	4681                	li	a3,0
            uart0: INTERRUPT {
20014f60:	c8b6                	sw	a3,80(sp)
20014f62:	cab2                	sw	a2,84(sp)
20014f64:	ccaa                	sw	a0,88(sp)
        Plic {
20014f66:	4506                	lw	a0,64(sp)
20014f68:	c588                	sw	a0,8(a1)
20014f6a:	5572                	lw	a0,60(sp)
20014f6c:	c1c8                	sw	a0,4(a1)
20014f6e:	5562                	lw	a0,56(sp)
20014f70:	c188                	sw	a0,0(a1)
20014f72:	4536                	lw	a0,76(sp)
20014f74:	c9c8                	sw	a0,20(a1)
20014f76:	4526                	lw	a0,72(sp)
20014f78:	c988                	sw	a0,16(a1)
20014f7a:	4516                	lw	a0,68(sp)
20014f7c:	c5c8                	sw	a0,12(a1)
20014f7e:	4566                	lw	a0,88(sp)
20014f80:	d188                	sw	a0,32(a1)
20014f82:	4556                	lw	a0,84(sp)
20014f84:	cdc8                	sw	a0,28(a1)
20014f86:	4546                	lw	a0,80(sp)
20014f88:	cd88                	sw	a0,24(a1)
                _marker: PhantomData,
            },
        }
    }
20014f8a:	6125                	add	sp,sp,96
20014f8c:	8082                	ret
                priority_offset: Interrupt::UART0 as usize,
20014f8e:	20018537          	lui	a0,0x20018
20014f92:	4f050513          	add	a0,a0,1264 # 200184f0 <str.4>
20014f96:	200195b7          	lui	a1,0x20019
20014f9a:	90c58613          	add	a2,a1,-1780 # 2001890c <.L__unnamed_64>
20014f9e:	45f1                	li	a1,28
20014fa0:	00000097          	auipc	ra,0x0
20014fa4:	4ec080e7          	jalr	1260(ra) # 2001548c <core::panicking::panic>
	...

20014faa <e310x_hal::core::CorePeripherals::new>:
    /// Performance counters
    pub counters: counters::PerformanceCounters,
}

impl CorePeripherals {
    pub(crate) fn new(clint: e310x::CLINT, plic: e310x::PLIC) -> Self {
20014faa:	7139                	add	sp,sp,-64
        Self {
            clint: clint.into(),
20014fac:	de06                	sw	ra,60(sp)
20014fae:	c42a                	sw	a0,8(sp)
20014fb0:	ffffe097          	auipc	ra,0xffffe
20014fb4:	6c2080e7          	jalr	1730(ra) # 20013672 <<T as core::convert::Into<U>>::into>
20014fb8:	0848                	add	a0,sp,20
            plic: plic.into(),
20014fba:	c62a                	sw	a0,12(sp)
20014fbc:	ffffe097          	auipc	ra,0xffffe
20014fc0:	6c8080e7          	jalr	1736(ra) # 20013684 <<T as core::convert::Into<U>>::into>
            counters: counters::PerformanceCounters::new(),
20014fc4:	00000097          	auipc	ra,0x0
20014fc8:	df6080e7          	jalr	-522(ra) # 20014dba <e310x_hal::core::counters::PerformanceCounters::new>
20014fcc:	4522                	lw	a0,8(sp)
20014fce:	45b2                	lw	a1,12(sp)
20014fd0:	02400613          	li	a2,36
        Self {
20014fd4:	00002097          	auipc	ra,0x2
20014fd8:	3f4080e7          	jalr	1012(ra) # 200173c8 <memcpy>
        }
    }
20014fdc:	50f2                	lw	ra,60(sp)
20014fde:	6121                	add	sp,sp,64
20014fe0:	8082                	ret

20014fe2 <<e310x_hal::device::DeviceGpioPins as core::convert::From<e310x::GPIO0>>::from>:
    fn from(gpio: GPIO0) -> Self {
20014fe2:	1141                	add	sp,sp,-16
        let parts = gpio.split();
20014fe4:	c606                	sw	ra,12(sp)
20014fe6:	00000097          	auipc	ra,0x0
20014fea:	098080e7          	jalr	152(ra) # 2001507e <e310x_hal::gpio::gpio0::<impl e310x_hal::gpio::GpioExt for e310x::GPIO0>::split>
    }
20014fee:	40b2                	lw	ra,12(sp)
20014ff0:	0141                	add	sp,sp,16
20014ff2:	8082                	ret

20014ff4 <<e310x_hal::device::DeviceResources as core::convert::From<e310x::Peripherals>>::from>:
    fn from(p: Peripherals) -> Self {
20014ff4:	7139                	add	sp,sp,-64
            core_peripherals: CorePeripherals::new(p.CLINT, p.PLIC),
20014ff6:	de06                	sw	ra,60(sp)
20014ff8:	c42a                	sw	a0,8(sp)
20014ffa:	0848                	add	a0,sp,20
20014ffc:	c62a                	sw	a0,12(sp)
20014ffe:	00000097          	auipc	ra,0x0
20015002:	fac080e7          	jalr	-84(ra) # 20014faa <e310x_hal::core::CorePeripherals::new>
            pins: p.GPIO0.into(),
20015006:	ffffe097          	auipc	ra,0xffffe
2001500a:	690080e7          	jalr	1680(ra) # 20013696 <<T as core::convert::Into<U>>::into>
2001500e:	4522                	lw	a0,8(sp)
20015010:	45b2                	lw	a1,12(sp)
20015012:	02400613          	li	a2,36
        DeviceResources {
20015016:	00002097          	auipc	ra,0x2
2001501a:	3b2080e7          	jalr	946(ra) # 200173c8 <memcpy>
    }
2001501e:	50f2                	lw	ra,60(sp)
20015020:	6121                	add	sp,sp,64
20015022:	8082                	ret

20015024 <<u32 as e310x_hal::time::U32Ext>::bps>:
    /// Wrap in `MegaHertz`
    fn mhz(self) -> MegaHertz;
}

impl U32Ext for u32 {
    fn bps(self) -> Bps {
20015024:	1141                	add	sp,sp,-16
20015026:	c62a                	sw	a0,12(sp)
        Bps(self)
20015028:	c42a                	sw	a0,8(sp)
    }
2001502a:	4522                	lw	a0,8(sp)
2001502c:	0141                	add	sp,sp,16
2001502e:	8082                	ret

20015030 <<u32 as e310x_hal::time::U32Ext>::mhz>:

    fn khz(self) -> KiloHertz {
        KiloHertz(self)
    }

    fn mhz(self) -> MegaHertz {
20015030:	1141                	add	sp,sp,-16
20015032:	c62a                	sw	a0,12(sp)
        MegaHertz(self)
20015034:	c42a                	sw	a0,8(sp)
    }
20015036:	4522                	lw	a0,8(sp)
20015038:	0141                	add	sp,sp,16
2001503a:	8082                	ret

2001503c <<e310x_hal::time::MegaHertz as core::convert::Into<e310x_hal::time::Hertz>>::into>:
        Hertz(self.0 * 1_000)
    }
}

impl Into<Hertz> for MegaHertz {
    fn into(self) -> Hertz {
2001503c:	1141                	add	sp,sp,-16
2001503e:	c62a                	sw	a0,12(sp)
20015040:	000f45b7          	lui	a1,0xf4
20015044:	24058593          	add	a1,a1,576 # f4240 <.Lline_table_start1+0xc4dca>
        Hertz(self.0 * 1_000_000)
20015048:	02b50633          	mul	a2,a0,a1
2001504c:	c232                	sw	a2,4(sp)
2001504e:	02b53533          	mulhu	a0,a0,a1
20015052:	e519                	bnez	a0,20015060 <<e310x_hal::time::MegaHertz as core::convert::Into<e310x_hal::time::Hertz>>::into+0x24>
20015054:	a009                	j	20015056 <<e310x_hal::time::MegaHertz as core::convert::Into<e310x_hal::time::Hertz>>::into+0x1a>
20015056:	4512                	lw	a0,4(sp)
20015058:	c42a                	sw	a0,8(sp)
    }
2001505a:	4522                	lw	a0,8(sp)
2001505c:	0141                	add	sp,sp,16
2001505e:	8082                	ret
        Hertz(self.0 * 1_000_000)
20015060:	20018537          	lui	a0,0x20018
20015064:	52050513          	add	a0,a0,1312 # 20018520 <str.5>
20015068:	200195b7          	lui	a1,0x20019
2001506c:	97c58613          	add	a2,a1,-1668 # 2001897c <.L__unnamed_86>
20015070:	02100593          	li	a1,33
20015074:	00000097          	auipc	ra,0x0
20015078:	418080e7          	jalr	1048(ra) # 2001548c <core::panicking::panic>
	...

2001507e <e310x_hal::gpio::gpio0::<impl e310x_hal::gpio::GpioExt for e310x::GPIO0>::split>:
                fn split(self) -> Parts {
2001507e:	1141                	add	sp,sp,-16
                }
20015080:	0141                	add	sp,sp,16
20015082:	8082                	ret

20015084 <<usize as bit_field::BitField>::get_bit>:
            fn get_bit(&self, bit: usize) -> bool {
20015084:	1101                	add	sp,sp,-32
20015086:	c632                	sw	a2,12(sp)
20015088:	c82e                	sw	a1,16(sp)
2001508a:	ca2a                	sw	a0,20(sp)
2001508c:	cc2a                	sw	a0,24(sp)
2001508e:	ce2e                	sw	a1,28(sp)
20015090:	02000513          	li	a0,32
                assert!(bit < Self::BIT_LENGTH);
20015094:	00a5ef63          	bltu	a1,a0,200150b2 <<usize as bit_field::BitField>::get_bit+0x2e>
20015098:	a009                	j	2001509a <<usize as bit_field::BitField>::get_bit+0x16>
2001509a:	4632                	lw	a2,12(sp)
2001509c:	20019537          	lui	a0,0x20019
200150a0:	98c50513          	add	a0,a0,-1652 # 2001898c <.L__unnamed_1>
200150a4:	02800593          	li	a1,40
200150a8:	00000097          	auipc	ra,0x0
200150ac:	3e4080e7          	jalr	996(ra) # 2001548c <core::panicking::panic>
200150b0:	0000                	unimp
                (*self & (1 << bit)) != 0
200150b2:	45c2                	lw	a1,16(sp)
200150b4:	4552                	lw	a0,20(sp)
200150b6:	4108                	lw	a0,0(a0)
200150b8:	c42a                	sw	a0,8(sp)
200150ba:	457d                	li	a0,31
200150bc:	00b56a63          	bltu	a0,a1,200150d0 <<usize as bit_field::BitField>::get_bit+0x4c>
200150c0:	a009                	j	200150c2 <<usize as bit_field::BitField>::get_bit+0x3e>
200150c2:	4522                	lw	a0,8(sp)
200150c4:	45c2                	lw	a1,16(sp)
200150c6:	00b55533          	srl	a0,a0,a1
            }
200150ca:	8905                	and	a0,a0,1
200150cc:	6105                	add	sp,sp,32
200150ce:	8082                	ret
                (*self & (1 << bit)) != 0
200150d0:	4632                	lw	a2,12(sp)
200150d2:	20019537          	lui	a0,0x20019
200150d6:	9c050513          	add	a0,a0,-1600 # 200189c0 <str.0>
200150da:	02300593          	li	a1,35
200150de:	00000097          	auipc	ra,0x0
200150e2:	3ae080e7          	jalr	942(ra) # 2001548c <core::panicking::panic>
	...

200150e8 <riscv::interrupt::enable>:
pub unsafe fn enable() {
200150e8:	1141                	add	sp,sp,-16
        () => mstatus::set_mie(),
200150ea:	c606                	sw	ra,12(sp)
200150ec:	00000097          	auipc	ra,0x0
200150f0:	072080e7          	jalr	114(ra) # 2001515e <riscv::register::mstatus::set_mie>
}
200150f4:	40b2                	lw	ra,12(sp)
200150f6:	0141                	add	sp,sp,16
200150f8:	8082                	ret

200150fa <riscv::register::mstatus::Mstatus::mie>:
    pub fn mie(&self) -> bool {
200150fa:	1141                	add	sp,sp,-16
200150fc:	c606                	sw	ra,12(sp)
200150fe:	c42a                	sw	a0,8(sp)
        self.bits.get_bit(3)
20015100:	200195b7          	lui	a1,0x20019
20015104:	a4858613          	add	a2,a1,-1464 # 20018a48 <.L__unnamed_2>
20015108:	458d                	li	a1,3
2001510a:	00000097          	auipc	ra,0x0
2001510e:	f7a080e7          	jalr	-134(ra) # 20015084 <<usize as bit_field::BitField>::get_bit>
    }
20015112:	40b2                	lw	ra,12(sp)
20015114:	0141                	add	sp,sp,16
20015116:	8082                	ret

20015118 <<riscv::critical_section::SingleHartCriticalSection as critical_section::Impl>::acquire>:

struct SingleHartCriticalSection;
set_impl!(SingleHartCriticalSection);

unsafe impl Impl for SingleHartCriticalSection {
    unsafe fn acquire() -> RawRestoreState {
20015118:	1141                	add	sp,sp,-16
        let mut mstatus: usize;
        core::arch::asm!("csrrci {}, mstatus, 0b1000", out(reg) mstatus);
2001511a:	c606                	sw	ra,12(sp)
2001511c:	30047573          	csrrc	a0,mstatus,8
20015120:	c22a                	sw	a0,4(sp)
        core::mem::transmute::<_, mstatus::Mstatus>(mstatus).mie()
20015122:	4512                	lw	a0,4(sp)
20015124:	c42a                	sw	a0,8(sp)
20015126:	0028                	add	a0,sp,8
20015128:	00000097          	auipc	ra,0x0
2001512c:	fd2080e7          	jalr	-46(ra) # 200150fa <riscv::register::mstatus::Mstatus::mie>
    }
20015130:	40b2                	lw	ra,12(sp)
20015132:	0141                	add	sp,sp,16
20015134:	8082                	ret

20015136 <<riscv::critical_section::SingleHartCriticalSection as critical_section::Impl>::release>:

    unsafe fn release(was_active: RawRestoreState) {
20015136:	1141                	add	sp,sp,-16
20015138:	c606                	sw	ra,12(sp)
2001513a:	00a105a3          	sb	a0,11(sp)
        // Only re-enable interrupts if they were enabled before the critical section.
        if was_active {
2001513e:	e509                	bnez	a0,20015148 <<riscv::critical_section::SingleHartCriticalSection as critical_section::Impl>::release+0x12>
20015140:	a009                	j	20015142 <<riscv::critical_section::SingleHartCriticalSection as critical_section::Impl>::release+0xc>
            interrupt::enable()
        }
    }
20015142:	40b2                	lw	ra,12(sp)
20015144:	0141                	add	sp,sp,16
20015146:	8082                	ret
            interrupt::enable()
20015148:	00000097          	auipc	ra,0x0
2001514c:	fa0080e7          	jalr	-96(ra) # 200150e8 <riscv::interrupt::enable>
20015150:	bfcd                	j	20015142 <<riscv::critical_section::SingleHartCriticalSection as critical_section::Impl>::release+0xc>

20015152 <riscv::register::mstatus::_set>:
        unsafe fn _set(bits: usize) {
20015152:	1141                	add	sp,sp,-16
20015154:	c62a                	sw	a0,12(sp)
                () => core::arch::asm!(concat!("csrrs x0, ", stringify!($csr_number), ", {0}"), in(reg) bits),
20015156:	30052073          	csrs	mstatus,a0
        }
2001515a:	0141                	add	sp,sp,16
2001515c:	8082                	ret

2001515e <riscv::register::mstatus::set_mie>:
        pub unsafe fn $set_field() {
2001515e:	1141                	add	sp,sp,-16
20015160:	c606                	sw	ra,12(sp)
20015162:	4521                	li	a0,8
            _set($e);
20015164:	00000097          	auipc	ra,0x0
20015168:	fee080e7          	jalr	-18(ra) # 20015152 <riscv::register::mstatus::_set>
        }
2001516c:	40b2                	lw	ra,12(sp)
2001516e:	0141                	add	sp,sp,16
20015170:	8082                	ret

20015172 <_critical_section_1_0_acquire>:
/// # }
#[macro_export]
macro_rules! set_impl {
    ($t: ty) => {
        #[no_mangle]
        unsafe fn _critical_section_1_0_acquire() -> $crate::RawRestoreState {
20015172:	1141                	add	sp,sp,-16
            <$t as $crate::Impl>::acquire()
20015174:	c606                	sw	ra,12(sp)
20015176:	00000097          	auipc	ra,0x0
2001517a:	fa2080e7          	jalr	-94(ra) # 20015118 <<riscv::critical_section::SingleHartCriticalSection as critical_section::Impl>::acquire>
        }
2001517e:	40b2                	lw	ra,12(sp)
20015180:	0141                	add	sp,sp,16
20015182:	8082                	ret

20015184 <_critical_section_1_0_release>:
        #[no_mangle]
        unsafe fn _critical_section_1_0_release(restore_state: $crate::RawRestoreState) {
20015184:	1141                	add	sp,sp,-16
20015186:	c606                	sw	ra,12(sp)
20015188:	00a105a3          	sb	a0,11(sp)
            <$t as $crate::Impl>::release(restore_state)
2001518c:	00000097          	auipc	ra,0x0
20015190:	faa080e7          	jalr	-86(ra) # 20015136 <<riscv::critical_section::SingleHartCriticalSection as critical_section::Impl>::release>
        }
20015194:	40b2                	lw	ra,12(sp)
20015196:	0141                	add	sp,sp,16
20015198:	8082                	ret

2001519a <core::ops::function::FnOnce::call_once>:
2001519a:	4108                	lw	a0,0(a0)
2001519c:	a001                	j	2001519c <core::ops::function::FnOnce::call_once+0x2>

2001519e <core::ptr::drop_in_place<char>>:
2001519e:	8082                	ret

200151a0 <core::ptr::drop_in_place<core::fmt::Error>>:
200151a0:	8082                	ret

200151a2 <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt>:
200151a2:	7179                	add	sp,sp,-48
200151a4:	d606                	sw	ra,44(sp)
200151a6:	d422                	sw	s0,40(sp)
200151a8:	d226                	sw	s1,36(sp)
200151aa:	842e                	mv	s0,a1
200151ac:	84aa                	mv	s1,a0
200151ae:	00002097          	auipc	ra,0x2
200151b2:	df8080e7          	jalr	-520(ra) # 20016fa6 <core::fmt::num::<impl core::fmt::Debug for u32>::fmt>
200151b6:	e51d                	bnez	a0,200151e4 <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt+0x42>
200151b8:	20019537          	lui	a0,0x20019
200151bc:	b4450513          	add	a0,a0,-1212 # 20018b44 <.Lanon.f68147c55be82c2fe41eccee53b7e689.158>
200151c0:	c62a                	sw	a0,12(sp)
200151c2:	4505                	li	a0,1
200151c4:	c82a                	sw	a0,16(sp)
200151c6:	ce02                	sw	zero,28(sp)
200151c8:	20019637          	lui	a2,0x20019
200151cc:	4848                	lw	a0,20(s0)
200151ce:	4c0c                	lw	a1,24(s0)
200151d0:	af860613          	add	a2,a2,-1288 # 20018af8 <.Lanon.f68147c55be82c2fe41eccee53b7e689.92>
200151d4:	ca32                	sw	a2,20(sp)
200151d6:	cc02                	sw	zero,24(sp)
200151d8:	0070                	add	a2,sp,12
200151da:	00001097          	auipc	ra,0x1
200151de:	830080e7          	jalr	-2000(ra) # 20015a0a <core::fmt::write>
200151e2:	c519                	beqz	a0,200151f0 <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt+0x4e>
200151e4:	4505                	li	a0,1
200151e6:	50b2                	lw	ra,44(sp)
200151e8:	5422                	lw	s0,40(sp)
200151ea:	5492                	lw	s1,36(sp)
200151ec:	6145                	add	sp,sp,48
200151ee:	8082                	ret
200151f0:	00448513          	add	a0,s1,4
200151f4:	85a2                	mv	a1,s0
200151f6:	50b2                	lw	ra,44(sp)
200151f8:	5422                	lw	s0,40(sp)
200151fa:	5492                	lw	s1,36(sp)
200151fc:	6145                	add	sp,sp,48
200151fe:	00002317          	auipc	t1,0x2
20015202:	da830067          	jr	-600(t1) # 20016fa6 <core::fmt::num::<impl core::fmt::Debug for u32>::fmt>

20015206 <<T as core::any::Any>::type_id>:
20015206:	00b8c5b7          	lui	a1,0xb8c
2001520a:	f3f58593          	add	a1,a1,-193 # b8bf3f <.Lline_table_start1+0xb5cac9>
2001520e:	c54c                	sw	a1,12(a0)
20015210:	d0c725b7          	lui	a1,0xd0c72
20015214:	48258593          	add	a1,a1,1154 # d0c72482 <_sstack+0x50c6e482>
20015218:	c50c                	sw	a1,8(a0)
2001521a:	0b3535b7          	lui	a1,0xb353
2001521e:	43458593          	add	a1,a1,1076 # b353434 <.Lline_table_start1+0xb323fbe>
20015222:	c14c                	sw	a1,4(a0)
20015224:	0f7275b7          	lui	a1,0xf727
20015228:	fae58593          	add	a1,a1,-82 # f726fae <.Lline_table_start1+0xf6f7b38>
2001522c:	c10c                	sw	a1,0(a0)
2001522e:	8082                	ret

20015230 <<dyn core::any::Any+core::marker::Sync+core::marker::Send as core::fmt::Debug>::fmt>:
20015230:	1141                	add	sp,sp,-16
20015232:	c606                	sw	ra,12(sp)
20015234:	c422                	sw	s0,8(sp)
20015236:	4e08                	lw	a0,24(a2)
20015238:	4a40                	lw	s0,20(a2)
2001523a:	455c                	lw	a5,12(a0)
2001523c:	20019537          	lui	a0,0x20019
20015240:	b4c50593          	add	a1,a0,-1204 # 20018b4c <.Lanon.f68147c55be82c2fe41eccee53b7e689.159>
20015244:	460d                	li	a2,3
20015246:	8522                	mv	a0,s0
20015248:	c23e                	sw	a5,4(sp)
2001524a:	9782                	jalr	a5
2001524c:	c511                	beqz	a0,20015258 <<dyn core::any::Any+core::marker::Sync+core::marker::Send as core::fmt::Debug>::fmt+0x28>
2001524e:	4505                	li	a0,1
20015250:	40b2                	lw	ra,12(sp)
20015252:	4422                	lw	s0,8(sp)
20015254:	0141                	add	sp,sp,16
20015256:	8082                	ret
20015258:	20019537          	lui	a0,0x20019
2001525c:	bba50593          	add	a1,a0,-1094 # 20018bba <.Lanon.f68147c55be82c2fe41eccee53b7e689.282>
20015260:	461d                	li	a2,7
20015262:	8522                	mv	a0,s0
20015264:	4792                	lw	a5,4(sp)
20015266:	40b2                	lw	ra,12(sp)
20015268:	4422                	lw	s0,8(sp)
2001526a:	0141                	add	sp,sp,16
2001526c:	8782                	jr	a5

2001526e <core::char::methods::<impl char>::escape_debug_ext>:
2001526e:	1101                	add	sp,sp,-32
20015270:	ce06                	sw	ra,28(sp)
20015272:	cc22                	sw	s0,24(sp)
20015274:	ca26                	sw	s1,20(sp)
20015276:	c84a                	sw	s2,16(sp)
20015278:	02700693          	li	a3,39
2001527c:	84ae                	mv	s1,a1
2001527e:	842a                	mv	s0,a0
20015280:	00b6ef63          	bltu	a3,a1,2001529e <.LBB72_2+0x8>
20015284:	00249513          	sll	a0,s1,0x2
20015288:	200195b7          	lui	a1,0x20019
2001528c:	a5858593          	add	a1,a1,-1448 # 20018a58 <.LJTI72_0>
20015290:	952e                	add	a0,a0,a1
20015292:	4108                	lw	a0,0(a0)
20015294:	8502                	jr	a0

20015296 <.LBB72_2>:
20015296:	650d                	lui	a0,0x3
20015298:	05c50513          	add	a0,a0,92 # 305c <.Lline_table_start0+0xdb>
2001529c:	a269                	j	20015426 <.LBB72_12+0x14c>
2001529e:	05c00513          	li	a0,92
200152a2:	02a49c63          	bne	s1,a0,200152da <.LBB72_12>
200152a6:	6519                	lui	a0,0x6
200152a8:	c5c50513          	add	a0,a0,-932 # 5c5c <.Lline_table_start0+0x1815>
200152ac:	aaad                	j	20015426 <.LBB72_12+0x14c>

200152ae <.LBB72_5>:
200152ae:	651d                	lui	a0,0x7
200152b0:	45c50513          	add	a0,a0,1116 # 745c <.Lline_table_start0+0x1447>
200152b4:	aa8d                	j	20015426 <.LBB72_12+0x14c>

200152b6 <.LBB72_6>:
200152b6:	651d                	lui	a0,0x7
200152b8:	e5c50513          	add	a0,a0,-420 # 6e5c <.Lline_table_start0+0xe47>
200152bc:	a2ad                	j	20015426 <.LBB72_12+0x14c>

200152be <.LBB72_7>:
200152be:	651d                	lui	a0,0x7
200152c0:	a031                	j	200152cc <.LBB72_8+0xa>

200152c2 <.LBB72_8>:
200152c2:	00f61513          	sll	a0,a2,0xf
200152c6:	00055a63          	bgez	a0,200152da <.LBB72_12>
200152ca:	6509                	lui	a0,0x2
200152cc:	25c50513          	add	a0,a0,604 # 225c <.Lline_table_start0+0x253>
200152d0:	aa99                	j	20015426 <.LBB72_12+0x14c>

200152d2 <.LBB72_11>:
200152d2:	10067513          	and	a0,a2,256
200152d6:	14051563          	bnez	a0,20015420 <.LBB72_12+0x146>

200152da <.LBB72_12>:
200152da:	8a05                	and	a2,a2,1
200152dc:	c619                	beqz	a2,200152ea <.LBB72_12+0x10>
200152de:	8526                	mv	a0,s1
200152e0:	00002097          	auipc	ra,0x2
200152e4:	f1c080e7          	jalr	-228(ra) # 200171fc <core::unicode::unicode_data::grapheme_extend::lookup>
200152e8:	ed09                	bnez	a0,20015302 <.LBB72_12+0x28>
200152ea:	8526                	mv	a0,s1
200152ec:	00002097          	auipc	ra,0x2
200152f0:	ab0080e7          	jalr	-1360(ra) # 20016d9c <core::unicode::printable::is_printable>
200152f4:	c519                	beqz	a0,20015302 <.LBB72_12+0x28>
200152f6:	08000513          	li	a0,128
200152fa:	00a40023          	sb	a0,0(s0)
200152fe:	c044                	sw	s1,4(s0)
20015300:	aa35                	j	2001543c <.LBB72_12+0x162>
20015302:	00010423          	sb	zero,8(sp)
20015306:	00849513          	sll	a0,s1,0x8
2001530a:	8171                	srl	a0,a0,0x1c
2001530c:	200175b7          	lui	a1,0x20017
20015310:	53158593          	add	a1,a1,1329 # 20017531 <.L__unnamed_4+0x45>
20015314:	952e                	add	a0,a0,a1
20015316:	00054503          	lbu	a0,0(a0)
2001531a:	00011323          	sh	zero,6(sp)
2001531e:	07d00613          	li	a2,125
20015322:	00c107a3          	sb	a2,15(sp)
20015326:	00a104a3          	sb	a0,9(sp)
2001532a:	00c49513          	sll	a0,s1,0xc
2001532e:	8171                	srl	a0,a0,0x1c
20015330:	952e                	add	a0,a0,a1
20015332:	00054503          	lbu	a0,0(a0)
20015336:	01049613          	sll	a2,s1,0x10
2001533a:	8271                	srl	a2,a2,0x1c
2001533c:	962e                	add	a2,a2,a1
2001533e:	00064603          	lbu	a2,0(a2)
20015342:	01449693          	sll	a3,s1,0x14
20015346:	82f1                	srl	a3,a3,0x1c
20015348:	96ae                	add	a3,a3,a1
2001534a:	0006c683          	lbu	a3,0(a3)
2001534e:	01849713          	sll	a4,s1,0x18
20015352:	8371                	srl	a4,a4,0x1c
20015354:	972e                	add	a4,a4,a1
20015356:	00074703          	lbu	a4,0(a4)
2001535a:	00a10523          	sb	a0,10(sp)
2001535e:	00c105a3          	sb	a2,11(sp)
20015362:	00d10623          	sb	a3,12(sp)
20015366:	00e106a3          	sb	a4,13(sp)
2001536a:	00f4f513          	and	a0,s1,15
2001536e:	952e                	add	a0,a0,a1
20015370:	0014d593          	srl	a1,s1,0x1
20015374:	8dc5                	or	a1,a1,s1
20015376:	0025d613          	srl	a2,a1,0x2
2001537a:	8dd1                	or	a1,a1,a2
2001537c:	0045d613          	srl	a2,a1,0x4
20015380:	8dd1                	or	a1,a1,a2
20015382:	0085d613          	srl	a2,a1,0x8
20015386:	8dd1                	or	a1,a1,a2
20015388:	0105d613          	srl	a2,a1,0x10
2001538c:	8dd1                	or	a1,a1,a2
2001538e:	fff5c593          	not	a1,a1
20015392:	0015d613          	srl	a2,a1,0x1
20015396:	555556b7          	lui	a3,0x55555
2001539a:	55568693          	add	a3,a3,1365 # 55555555 <_sidata+0x3553bd51>
2001539e:	8e75                	and	a2,a2,a3
200153a0:	99f9                	and	a1,a1,-2
200153a2:	8d91                	sub	a1,a1,a2
200153a4:	33333637          	lui	a2,0x33333
200153a8:	33360613          	add	a2,a2,819 # 33333333 <_sidata+0x13319b2f>
200153ac:	00c5f6b3          	and	a3,a1,a2
200153b0:	8189                	srl	a1,a1,0x2
200153b2:	8df1                	and	a1,a1,a2
200153b4:	00054503          	lbu	a0,0(a0)
200153b8:	95b6                	add	a1,a1,a3
200153ba:	0045d613          	srl	a2,a1,0x4
200153be:	95b2                	add	a1,a1,a2
200153c0:	0f0f1637          	lui	a2,0xf0f1
200153c4:	f0f60613          	add	a2,a2,-241 # f0f0f0f <.Lline_table_start1+0xf0c1a99>
200153c8:	8df1                	and	a1,a1,a2
200153ca:	01010637          	lui	a2,0x1010
200153ce:	10160613          	add	a2,a2,257 # 1010101 <.Lline_table_start1+0xfe0c8b>
200153d2:	02c585b3          	mul	a1,a1,a2
200153d6:	81e9                	srl	a1,a1,0x1a
200153d8:	ffe58493          	add	s1,a1,-2
200153dc:	45ad                	li	a1,11
200153de:	00a10723          	sb	a0,14(sp)
200153e2:	06b4f363          	bgeu	s1,a1,20015448 <.LBB72_12+0x16e>
200153e6:	00610513          	add	a0,sp,6
200153ea:	9526                	add	a0,a0,s1
200153ec:	07b00593          	li	a1,123
200153f0:	00b50123          	sb	a1,2(a0)
200153f4:	07500593          	li	a1,117
200153f8:	00b500a3          	sb	a1,1(a0)
200153fc:	05c00593          	li	a1,92
20015400:	00b50023          	sb	a1,0(a0)
20015404:	00610593          	add	a1,sp,6
20015408:	4629                	li	a2,10
2001540a:	4929                	li	s2,10
2001540c:	8522                	mv	a0,s0
2001540e:	00002097          	auipc	ra,0x2
20015412:	fba080e7          	jalr	-70(ra) # 200173c8 <memcpy>
20015416:	00940523          	sb	s1,10(s0)
2001541a:	012405a3          	sb	s2,11(s0)
2001541e:	a839                	j	2001543c <.LBB72_12+0x162>
20015420:	6509                	lui	a0,0x2
20015422:	75c50513          	add	a0,a0,1884 # 275c <.Lline_table_start0+0x486>
20015426:	c008                	sw	a0,0(s0)
20015428:	00041423          	sh	zero,8(s0)
2001542c:	00041323          	sh	zero,6(s0)
20015430:	00041223          	sh	zero,4(s0)
20015434:	20000513          	li	a0,512
20015438:	00a41523          	sh	a0,10(s0)
2001543c:	40f2                	lw	ra,28(sp)
2001543e:	4462                	lw	s0,24(sp)
20015440:	44d2                	lw	s1,20(sp)
20015442:	4942                	lw	s2,16(sp)
20015444:	6105                	add	sp,sp,32
20015446:	8082                	ret
20015448:	20019537          	lui	a0,0x20019
2001544c:	48850613          	add	a2,a0,1160 # 20019488 <.Lanon.f68147c55be82c2fe41eccee53b7e689.428>
20015450:	45a9                	li	a1,10
20015452:	8526                	mv	a0,s1
20015454:	00001097          	auipc	ra,0x1
20015458:	32c080e7          	jalr	812(ra) # 20016780 <core::slice::index::slice_start_index_len_fail>
	...

2001545e <core::panicking::panic_fmt>:
2001545e:	1101                	add	sp,sp,-32
20015460:	ce06                	sw	ra,28(sp)
20015462:	20019637          	lui	a2,0x20019
20015466:	af860613          	add	a2,a2,-1288 # 20018af8 <.Lanon.f68147c55be82c2fe41eccee53b7e689.92>
2001546a:	c432                	sw	a2,8(sp)
2001546c:	20019637          	lui	a2,0x20019
20015470:	b5060613          	add	a2,a2,-1200 # 20018b50 <.Lanon.f68147c55be82c2fe41eccee53b7e689.247>
20015474:	c632                	sw	a2,12(sp)
20015476:	c82a                	sw	a0,16(sp)
20015478:	ca2e                	sw	a1,20(sp)
2001547a:	4505                	li	a0,1
2001547c:	00a11c23          	sh	a0,24(sp)
20015480:	0028                	add	a0,sp,8
20015482:	ffffc097          	auipc	ra,0xffffc
20015486:	4e2080e7          	jalr	1250(ra) # 20011964 <rust_begin_unwind>
	...

2001548c <core::panicking::panic>:
2001548c:	7179                	add	sp,sp,-48
2001548e:	d606                	sw	ra,44(sp)
20015490:	d22a                	sw	a0,36(sp)
20015492:	d42e                	sw	a1,40(sp)
20015494:	1048                	add	a0,sp,36
20015496:	c62a                	sw	a0,12(sp)
20015498:	4505                	li	a0,1
2001549a:	c82a                	sw	a0,16(sp)
2001549c:	ce02                	sw	zero,28(sp)
2001549e:	20019537          	lui	a0,0x20019
200154a2:	af850513          	add	a0,a0,-1288 # 20018af8 <.Lanon.f68147c55be82c2fe41eccee53b7e689.92>
200154a6:	ca2a                	sw	a0,20(sp)
200154a8:	cc02                	sw	zero,24(sp)
200154aa:	0068                	add	a0,sp,12
200154ac:	85b2                	mv	a1,a2
200154ae:	00000097          	auipc	ra,0x0
200154b2:	fb0080e7          	jalr	-80(ra) # 2001545e <core::panicking::panic_fmt>
	...

200154b8 <core::panicking::panic_bounds_check>:
200154b8:	7139                	add	sp,sp,-64
200154ba:	de06                	sw	ra,60(sp)
200154bc:	c62a                	sw	a0,12(sp)
200154be:	c82e                	sw	a1,16(sp)
200154c0:	0808                	add	a0,sp,16
200154c2:	d62a                	sw	a0,44(sp)
200154c4:	20017537          	lui	a0,0x20017
200154c8:	1d650513          	add	a0,a0,470 # 200171d6 <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt>
200154cc:	d82a                	sw	a0,48(sp)
200154ce:	006c                	add	a1,sp,12
200154d0:	da2e                	sw	a1,52(sp)
200154d2:	dc2a                	sw	a0,56(sp)
200154d4:	20019537          	lui	a0,0x20019
200154d8:	b7450513          	add	a0,a0,-1164 # 20018b74 <.Lanon.f68147c55be82c2fe41eccee53b7e689.255>
200154dc:	ca2a                	sw	a0,20(sp)
200154de:	4509                	li	a0,2
200154e0:	cc2a                	sw	a0,24(sp)
200154e2:	d202                	sw	zero,36(sp)
200154e4:	106c                	add	a1,sp,44
200154e6:	ce2e                	sw	a1,28(sp)
200154e8:	d02a                	sw	a0,32(sp)
200154ea:	0848                	add	a0,sp,20
200154ec:	85b2                	mv	a1,a2
200154ee:	00000097          	auipc	ra,0x0
200154f2:	f70080e7          	jalr	-144(ra) # 2001545e <core::panicking::panic_fmt>
	...

200154f8 <core::result::unwrap_failed>:
200154f8:	7139                	add	sp,sp,-64
200154fa:	de06                	sw	ra,60(sp)
200154fc:	c22a                	sw	a0,4(sp)
200154fe:	c42e                	sw	a1,8(sp)
20015500:	c632                	sw	a2,12(sp)
20015502:	c836                	sw	a3,16(sp)
20015504:	0048                	add	a0,sp,4
20015506:	d62a                	sw	a0,44(sp)
20015508:	20017537          	lui	a0,0x20017
2001550c:	1ec50513          	add	a0,a0,492 # 200171ec <<&T as core::fmt::Display>::fmt>
20015510:	d82a                	sw	a0,48(sp)
20015512:	0068                	add	a0,sp,12
20015514:	da2a                	sw	a0,52(sp)
20015516:	20017537          	lui	a0,0x20017
2001551a:	1e450513          	add	a0,a0,484 # 200171e4 <<&T as core::fmt::Debug>::fmt>
2001551e:	dc2a                	sw	a0,56(sp)
20015520:	20019537          	lui	a0,0x20019
20015524:	b8850513          	add	a0,a0,-1144 # 20018b88 <.Lanon.f68147c55be82c2fe41eccee53b7e689.275>
20015528:	ca2a                	sw	a0,20(sp)
2001552a:	4509                	li	a0,2
2001552c:	cc2a                	sw	a0,24(sp)
2001552e:	d202                	sw	zero,36(sp)
20015530:	106c                	add	a1,sp,44
20015532:	ce2e                	sw	a1,28(sp)
20015534:	d02a                	sw	a0,32(sp)
20015536:	0848                	add	a0,sp,20
20015538:	85ba                	mv	a1,a4
2001553a:	00000097          	auipc	ra,0x0
2001553e:	f24080e7          	jalr	-220(ra) # 2001545e <core::panicking::panic_fmt>
	...

20015544 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str>:
20015544:	715d                	add	sp,sp,-80
20015546:	c686                	sw	ra,76(sp)
20015548:	c4a2                	sw	s0,72(sp)
2001554a:	c2a6                	sw	s1,68(sp)
2001554c:	c0ca                	sw	s2,64(sp)
2001554e:	de4e                	sw	s3,60(sp)
20015550:	dc52                	sw	s4,56(sp)
20015552:	da56                	sw	s5,52(sp)
20015554:	d85a                	sw	s6,48(sp)
20015556:	d65e                	sw	s7,44(sp)
20015558:	d462                	sw	s8,40(sp)
2001555a:	d266                	sw	s9,36(sp)
2001555c:	d06a                	sw	s10,32(sp)
2001555e:	ce6e                	sw	s11,28(sp)
20015560:	8932                	mv	s2,a2
20015562:	842e                	mv	s0,a1
20015564:	4b81                	li	s7,0
20015566:	4c81                	li	s9,0
20015568:	4981                	li	s3,0
2001556a:	feff05b7          	lui	a1,0xfeff0
2001556e:	eff58b13          	add	s6,a1,-257 # fefefeff <_sstack+0x7efebeff>
20015572:	0a0a15b7          	lui	a1,0xa0a1
20015576:	a0a58a13          	add	s4,a1,-1526 # a0a0a0a <.Lline_table_start1+0xa071594>
2001557a:	4504                	lw	s1,8(a0)
2001557c:	410c                	lw	a1,0(a0)
2001557e:	cc2e                	sw	a1,24(sp)
20015580:	4148                	lw	a0,4(a0)
20015582:	ca2a                	sw	a0,20(sp)
20015584:	00440513          	add	a0,s0,4
20015588:	c42a                	sw	a0,8(sp)
2001558a:	20017537          	lui	a0,0x20017
2001558e:	4d250513          	add	a0,a0,1234 # 200174d2 <.L__unnamed_2+0x1e>
20015592:	c82a                	sw	a0,16(sp)
20015594:	4da9                	li	s11,10
20015596:	80808537          	lui	a0,0x80808
2001559a:	08050c13          	add	s8,a0,128 # 80808080 <_sstack+0x804080>
2001559e:	c622                	sw	s0,12(sp)
200155a0:	a00d                	j	200155c2 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str+0x7e>
200155a2:	00b60533          	add	a0,a2,a1
200155a6:	fff54503          	lbu	a0,-1(a0)
200155aa:	1559                	add	a0,a0,-10
200155ac:	00153513          	seqz	a0,a0
200155b0:	00a48023          	sb	a0,0(s1)
200155b4:	4552                	lw	a0,20(sp)
200155b6:	4554                	lw	a3,12(a0)
200155b8:	4562                	lw	a0,24(sp)
200155ba:	9682                	jalr	a3
200155bc:	8bea                	mv	s7,s10
200155be:	12051b63          	bnez	a0,200156f4 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str+0x1b0>
200155c2:	0ff9f513          	zext.b	a0,s3
200155c6:	12051563          	bnez	a0,200156f0 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str+0x1ac>
200155ca:	01997563          	bgeu	s2,s9,200155d4 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str+0x90>
200155ce:	a8f9                	j	200156ac <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str+0x168>
200155d0:	0d996e63          	bltu	s2,s9,200156ac <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str+0x168>
200155d4:	41990533          	sub	a0,s2,s9
200155d8:	019405b3          	add	a1,s0,s9
200155dc:	4621                	li	a2,8
200155de:	00c57f63          	bgeu	a0,a2,200155fc <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str+0xb8>
200155e2:	0d990463          	beq	s2,s9,200156aa <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str+0x166>
200155e6:	4681                	li	a3,0
200155e8:	00d58633          	add	a2,a1,a3
200155ec:	00064603          	lbu	a2,0(a2)
200155f0:	09b60f63          	beq	a2,s11,2001568e <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str+0x14a>
200155f4:	0685                	add	a3,a3,1
200155f6:	fed519e3          	bne	a0,a3,200155e8 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str+0xa4>
200155fa:	a845                	j	200156aa <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str+0x166>
200155fc:	8826                	mv	a6,s1
200155fe:	00358613          	add	a2,a1,3
20015602:	ffc67693          	and	a3,a2,-4
20015606:	40b684b3          	sub	s1,a3,a1
2001560a:	8ead                	xor	a3,a3,a1
2001560c:	0016b693          	seqz	a3,a3
20015610:	0014b713          	seqz	a4,s1
20015614:	8ed9                	or	a3,a3,a4
20015616:	c2a1                	beqz	a3,20015656 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str+0x112>
20015618:	4481                	li	s1,0
2001561a:	ff850693          	add	a3,a0,-8
2001561e:	4722                	lw	a4,8(sp)
20015620:	9766                	add	a4,a4,s9
20015622:	009587b3          	add	a5,a1,s1
20015626:	4380                	lw	s0,0(a5)
20015628:	00970633          	add	a2,a4,s1
2001562c:	4210                	lw	a2,0(a2)
2001562e:	014447b3          	xor	a5,s0,s4
20015632:	97da                	add	a5,a5,s6
20015634:	fff44413          	not	s0,s0
20015638:	8fe1                	and	a5,a5,s0
2001563a:	01464433          	xor	s0,a2,s4
2001563e:	945a                	add	s0,s0,s6
20015640:	fff64613          	not	a2,a2
20015644:	8e61                	and	a2,a2,s0
20015646:	8e5d                	or	a2,a2,a5
20015648:	01867633          	and	a2,a2,s8
2001564c:	e215                	bnez	a2,20015670 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str+0x12c>
2001564e:	04a1                	add	s1,s1,8
20015650:	fc96f9e3          	bgeu	a3,s1,20015622 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str+0xde>
20015654:	a831                	j	20015670 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str+0x12c>
20015656:	00d58733          	add	a4,a1,a3
2001565a:	00074703          	lbu	a4,0(a4)
2001565e:	03b70763          	beq	a4,s11,2001568c <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str+0x148>
20015662:	0685                	add	a3,a3,1
20015664:	fed499e3          	bne	s1,a3,20015656 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str+0x112>
20015668:	ff850693          	add	a3,a0,-8
2001566c:	fa96f9e3          	bgeu	a3,s1,2001561e <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str+0xda>
20015670:	06a48d63          	beq	s1,a0,200156ea <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str+0x1a6>
20015674:	4432                	lw	s0,12(sp)
20015676:	00958633          	add	a2,a1,s1
2001567a:	00064603          	lbu	a2,0(a2)
2001567e:	01b60663          	beq	a2,s11,2001568a <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str+0x146>
20015682:	0485                	add	s1,s1,1
20015684:	fe9519e3          	bne	a0,s1,20015676 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str+0x132>
20015688:	a889                	j	200156da <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str+0x196>
2001568a:	86a6                	mv	a3,s1
2001568c:	84c2                	mv	s1,a6
2001568e:	96e6                	add	a3,a3,s9
20015690:	00168c93          	add	s9,a3,1
20015694:	f326fee3          	bgeu	a3,s2,200155d0 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str+0x8c>
20015698:	96a2                	add	a3,a3,s0
2001569a:	0006c503          	lbu	a0,0(a3)
2001569e:	f3b519e3          	bne	a0,s11,200155d0 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str+0x8c>
200156a2:	4981                	li	s3,0
200156a4:	8d66                	mv	s10,s9
200156a6:	8ae6                	mv	s5,s9
200156a8:	a039                	j	200156b6 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str+0x172>
200156aa:	8cca                	mv	s9,s2
200156ac:	4985                	li	s3,1
200156ae:	8d5e                	mv	s10,s7
200156b0:	8aca                	mv	s5,s2
200156b2:	032b8f63          	beq	s7,s2,200156f0 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str+0x1ac>
200156b6:	0004c503          	lbu	a0,0(s1)
200156ba:	c901                	beqz	a0,200156ca <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str+0x186>
200156bc:	4552                	lw	a0,20(sp)
200156be:	4554                	lw	a3,12(a0)
200156c0:	4611                	li	a2,4
200156c2:	4562                	lw	a0,24(sp)
200156c4:	45c2                	lw	a1,16(sp)
200156c6:	9682                	jalr	a3
200156c8:	e515                	bnez	a0,200156f4 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str+0x1b0>
200156ca:	417a8633          	sub	a2,s5,s7
200156ce:	017405b3          	add	a1,s0,s7
200156d2:	ed7a98e3          	bne	s5,s7,200155a2 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str+0x5e>
200156d6:	4501                	li	a0,0
200156d8:	bde1                	j	200155b0 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str+0x6c>
200156da:	8cca                	mv	s9,s2
200156dc:	84c2                	mv	s1,a6
200156de:	4985                	li	s3,1
200156e0:	8d5e                	mv	s10,s7
200156e2:	8aca                	mv	s5,s2
200156e4:	fd2b99e3          	bne	s7,s2,200156b6 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str+0x172>
200156e8:	a021                	j	200156f0 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str+0x1ac>
200156ea:	8cca                	mv	s9,s2
200156ec:	4432                	lw	s0,12(sp)
200156ee:	b7fd                	j	200156dc <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str+0x198>
200156f0:	4501                	li	a0,0
200156f2:	a011                	j	200156f6 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str+0x1b2>
200156f4:	4505                	li	a0,1
200156f6:	40b6                	lw	ra,76(sp)
200156f8:	4426                	lw	s0,72(sp)
200156fa:	4496                	lw	s1,68(sp)
200156fc:	4906                	lw	s2,64(sp)
200156fe:	59f2                	lw	s3,60(sp)
20015700:	5a62                	lw	s4,56(sp)
20015702:	5ad2                	lw	s5,52(sp)
20015704:	5b42                	lw	s6,48(sp)
20015706:	5bb2                	lw	s7,44(sp)
20015708:	5c22                	lw	s8,40(sp)
2001570a:	5c92                	lw	s9,36(sp)
2001570c:	5d02                	lw	s10,32(sp)
2001570e:	4df2                	lw	s11,28(sp)
20015710:	6161                	add	sp,sp,80
20015712:	8082                	ret

20015714 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_char>:
20015714:	1101                	add	sp,sp,-32
20015716:	ce06                	sw	ra,28(sp)
20015718:	cc22                	sw	s0,24(sp)
2001571a:	ca26                	sw	s1,20(sp)
2001571c:	c84a                	sw	s2,16(sp)
2001571e:	c64e                	sw	s3,12(sp)
20015720:	4500                	lw	s0,8(a0)
20015722:	00044603          	lbu	a2,0(s0)
20015726:	00052903          	lw	s2,0(a0)
2001572a:	4144                	lw	s1,4(a0)
2001572c:	89ae                	mv	s3,a1
2001572e:	c215                	beqz	a2,20015752 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_char+0x3e>
20015730:	44d4                	lw	a3,12(s1)
20015732:	20017537          	lui	a0,0x20017
20015736:	4d250593          	add	a1,a0,1234 # 200174d2 <.L__unnamed_2+0x1e>
2001573a:	4611                	li	a2,4
2001573c:	854a                	mv	a0,s2
2001573e:	9682                	jalr	a3
20015740:	c909                	beqz	a0,20015752 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_char+0x3e>
20015742:	4505                	li	a0,1
20015744:	40f2                	lw	ra,28(sp)
20015746:	4462                	lw	s0,24(sp)
20015748:	44d2                	lw	s1,20(sp)
2001574a:	4942                	lw	s2,16(sp)
2001574c:	49b2                	lw	s3,12(sp)
2001574e:	6105                	add	sp,sp,32
20015750:	8082                	ret
20015752:	ff698513          	add	a0,s3,-10
20015756:	00153513          	seqz	a0,a0
2001575a:	00a40023          	sb	a0,0(s0)
2001575e:	489c                	lw	a5,16(s1)
20015760:	854a                	mv	a0,s2
20015762:	85ce                	mv	a1,s3
20015764:	40f2                	lw	ra,28(sp)
20015766:	4462                	lw	s0,24(sp)
20015768:	44d2                	lw	s1,20(sp)
2001576a:	4942                	lw	s2,16(sp)
2001576c:	49b2                	lw	s3,12(sp)
2001576e:	6105                	add	sp,sp,32
20015770:	8782                	jr	a5

20015772 <core::fmt::builders::DebugStruct::field>:
20015772:	711d                	add	sp,sp,-96
20015774:	ce86                	sw	ra,92(sp)
20015776:	cca2                	sw	s0,88(sp)
20015778:	caa6                	sw	s1,84(sp)
2001577a:	c8ca                	sw	s2,80(sp)
2001577c:	c6ce                	sw	s3,76(sp)
2001577e:	c4d2                	sw	s4,72(sp)
20015780:	c2d6                	sw	s5,68(sp)
20015782:	c0da                	sw	s6,64(sp)
20015784:	de5e                	sw	s7,60(sp)
20015786:	842a                	mv	s0,a0
20015788:	00454503          	lbu	a0,4(a0)
2001578c:	4b85                	li	s7,1
2001578e:	4485                	li	s1,1
20015790:	c10d                	beqz	a0,200157b2 <core::fmt::builders::DebugStruct::field+0x40>
20015792:	00940223          	sb	s1,4(s0)
20015796:	017402a3          	sb	s7,5(s0)
2001579a:	8522                	mv	a0,s0
2001579c:	40f6                	lw	ra,92(sp)
2001579e:	4466                	lw	s0,88(sp)
200157a0:	44d6                	lw	s1,84(sp)
200157a2:	4946                	lw	s2,80(sp)
200157a4:	49b6                	lw	s3,76(sp)
200157a6:	4a26                	lw	s4,72(sp)
200157a8:	4a96                	lw	s5,68(sp)
200157aa:	4b06                	lw	s6,64(sp)
200157ac:	5bf2                	lw	s7,60(sp)
200157ae:	6125                	add	sp,sp,96
200157b0:	8082                	ret
200157b2:	89ba                	mv	s3,a4
200157b4:	8936                	mv	s2,a3
200157b6:	8a32                	mv	s4,a2
200157b8:	8aae                	mv	s5,a1
200157ba:	00042b03          	lw	s6,0(s0)
200157be:	01cb2503          	lw	a0,28(s6)
200157c2:	00544583          	lbu	a1,5(s0)
200157c6:	00457613          	and	a2,a0,4
200157ca:	ea09                	bnez	a2,200157dc <core::fmt::builders::DebugStruct::field+0x6a>
200157cc:	0015b613          	seqz	a2,a1
200157d0:	c1e1                	beqz	a1,20015890 <core::fmt::builders::DebugStruct::field+0x11e>
200157d2:	20019537          	lui	a0,0x20019
200157d6:	bb350593          	add	a1,a0,-1101 # 20018bb3 <.Lanon.f68147c55be82c2fe41eccee53b7e689.279>
200157da:	a87d                	j	20015898 <core::fmt::builders::DebugStruct::field+0x126>
200157dc:	e185                	bnez	a1,200157fc <core::fmt::builders::DebugStruct::field+0x8a>
200157de:	018b2583          	lw	a1,24(s6)
200157e2:	014b2503          	lw	a0,20(s6)
200157e6:	45d4                	lw	a3,12(a1)
200157e8:	200195b7          	lui	a1,0x20019
200157ec:	bb558593          	add	a1,a1,-1099 # 20018bb5 <.Lanon.f68147c55be82c2fe41eccee53b7e689.280>
200157f0:	460d                	li	a2,3
200157f2:	9682                	jalr	a3
200157f4:	4485                	li	s1,1
200157f6:	fd51                	bnez	a0,20015792 <core::fmt::builders::DebugStruct::field+0x20>
200157f8:	01cb2503          	lw	a0,28(s6)
200157fc:	4485                	li	s1,1
200157fe:	00910ba3          	sb	s1,23(sp)
20015802:	014b2583          	lw	a1,20(s6)
20015806:	018b2603          	lw	a2,24(s6)
2001580a:	c42e                	sw	a1,8(sp)
2001580c:	c632                	sw	a2,12(sp)
2001580e:	01710593          	add	a1,sp,23
20015812:	c82e                	sw	a1,16(sp)
20015814:	010b2583          	lw	a1,16(s6)
20015818:	020b4603          	lbu	a2,32(s6)
2001581c:	000b2683          	lw	a3,0(s6)
20015820:	004b2703          	lw	a4,4(s6)
20015824:	008b2783          	lw	a5,8(s6)
20015828:	00cb2803          	lw	a6,12(s6)
2001582c:	da2a                	sw	a0,52(sp)
2001582e:	d42e                	sw	a1,40(sp)
20015830:	02c10c23          	sb	a2,56(sp)
20015834:	cc36                	sw	a3,24(sp)
20015836:	ce3a                	sw	a4,28(sp)
20015838:	d03e                	sw	a5,32(sp)
2001583a:	d242                	sw	a6,36(sp)
2001583c:	0028                	add	a0,sp,8
2001583e:	d62a                	sw	a0,44(sp)
20015840:	20019537          	lui	a0,0x20019
20015844:	b9850513          	add	a0,a0,-1128 # 20018b98 <.Lanon.f68147c55be82c2fe41eccee53b7e689.276>
20015848:	d82a                	sw	a0,48(sp)
2001584a:	0028                	add	a0,sp,8
2001584c:	85d6                	mv	a1,s5
2001584e:	8652                	mv	a2,s4
20015850:	00000097          	auipc	ra,0x0
20015854:	cf4080e7          	jalr	-780(ra) # 20015544 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str>
20015858:	fd0d                	bnez	a0,20015792 <core::fmt::builders::DebugStruct::field+0x20>
2001585a:	20019537          	lui	a0,0x20019
2001585e:	b8450593          	add	a1,a0,-1148 # 20018b84 <.Lanon.f68147c55be82c2fe41eccee53b7e689.274>
20015862:	0028                	add	a0,sp,8
20015864:	4609                	li	a2,2
20015866:	00000097          	auipc	ra,0x0
2001586a:	cde080e7          	jalr	-802(ra) # 20015544 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str>
2001586e:	f115                	bnez	a0,20015792 <core::fmt::builders::DebugStruct::field+0x20>
20015870:	00c9a603          	lw	a2,12(s3)
20015874:	082c                	add	a1,sp,24
20015876:	854a                	mv	a0,s2
20015878:	9602                	jalr	a2
2001587a:	fd01                	bnez	a0,20015792 <core::fmt::builders::DebugStruct::field+0x20>
2001587c:	55c2                	lw	a1,48(sp)
2001587e:	5532                	lw	a0,44(sp)
20015880:	45d4                	lw	a3,12(a1)
20015882:	200195b7          	lui	a1,0x20019
20015886:	bb858593          	add	a1,a1,-1096 # 20018bb8 <.Lanon.f68147c55be82c2fe41eccee53b7e689.281>
2001588a:	4609                	li	a2,2
2001588c:	9682                	jalr	a3
2001588e:	a8a9                	j	200158e8 <core::fmt::builders::DebugStruct::field+0x176>
20015890:	20019537          	lui	a0,0x20019
20015894:	bb050593          	add	a1,a0,-1104 # 20018bb0 <.Lanon.f68147c55be82c2fe41eccee53b7e689.278>
20015898:	018b2683          	lw	a3,24(s6)
2001589c:	014b2503          	lw	a0,20(s6)
200158a0:	46d4                	lw	a3,12(a3)
200158a2:	0609                	add	a2,a2,2
200158a4:	9682                	jalr	a3
200158a6:	4485                	li	s1,1
200158a8:	ee0515e3          	bnez	a0,20015792 <core::fmt::builders::DebugStruct::field+0x20>
200158ac:	018b2583          	lw	a1,24(s6)
200158b0:	014b2503          	lw	a0,20(s6)
200158b4:	45d4                	lw	a3,12(a1)
200158b6:	85d6                	mv	a1,s5
200158b8:	8652                	mv	a2,s4
200158ba:	9682                	jalr	a3
200158bc:	4485                	li	s1,1
200158be:	ec051ae3          	bnez	a0,20015792 <core::fmt::builders::DebugStruct::field+0x20>
200158c2:	018b2583          	lw	a1,24(s6)
200158c6:	014b2503          	lw	a0,20(s6)
200158ca:	45d4                	lw	a3,12(a1)
200158cc:	200195b7          	lui	a1,0x20019
200158d0:	b8458593          	add	a1,a1,-1148 # 20018b84 <.Lanon.f68147c55be82c2fe41eccee53b7e689.274>
200158d4:	4609                	li	a2,2
200158d6:	9682                	jalr	a3
200158d8:	4485                	li	s1,1
200158da:	ea051ce3          	bnez	a0,20015792 <core::fmt::builders::DebugStruct::field+0x20>
200158de:	00c9a603          	lw	a2,12(s3)
200158e2:	854a                	mv	a0,s2
200158e4:	85da                	mv	a1,s6
200158e6:	9602                	jalr	a2
200158e8:	84aa                	mv	s1,a0
200158ea:	b565                	j	20015792 <core::fmt::builders::DebugStruct::field+0x20>

200158ec <core::fmt::builders::DebugTuple::field>:
200158ec:	715d                	add	sp,sp,-80
200158ee:	c686                	sw	ra,76(sp)
200158f0:	c4a2                	sw	s0,72(sp)
200158f2:	c2a6                	sw	s1,68(sp)
200158f4:	c0ca                	sw	s2,64(sp)
200158f6:	de4e                	sw	s3,60(sp)
200158f8:	dc52                	sw	s4,56(sp)
200158fa:	da56                	sw	s5,52(sp)
200158fc:	842a                	mv	s0,a0
200158fe:	00854503          	lbu	a0,8(a0)
20015902:	00042a83          	lw	s5,0(s0)
20015906:	4a05                	li	s4,1
20015908:	ed55                	bnez	a0,200159c4 <core::fmt::builders::DebugTuple::field+0xd8>
2001590a:	89b2                	mv	s3,a2
2001590c:	892e                	mv	s2,a1
2001590e:	4044                	lw	s1,4(s0)
20015910:	4cc8                	lw	a0,28(s1)
20015912:	00457593          	and	a1,a0,4
20015916:	e991                	bnez	a1,2001592a <core::fmt::builders::DebugTuple::field+0x3e>
20015918:	01503633          	snez	a2,s5
2001591c:	080a8463          	beqz	s5,200159a4 <core::fmt::builders::DebugTuple::field+0xb8>
20015920:	20019537          	lui	a0,0x20019
20015924:	bb350593          	add	a1,a0,-1101 # 20018bb3 <.Lanon.f68147c55be82c2fe41eccee53b7e689.279>
20015928:	a051                	j	200159ac <core::fmt::builders::DebugTuple::field+0xc0>
2001592a:	000a9d63          	bnez	s5,20015944 <core::fmt::builders::DebugTuple::field+0x58>
2001592e:	4c8c                	lw	a1,24(s1)
20015930:	48c8                	lw	a0,20(s1)
20015932:	45d4                	lw	a3,12(a1)
20015934:	200195b7          	lui	a1,0x20019
20015938:	bc558593          	add	a1,a1,-1083 # 20018bc5 <.Lanon.f68147c55be82c2fe41eccee53b7e689.288>
2001593c:	4609                	li	a2,2
2001593e:	9682                	jalr	a3
20015940:	e151                	bnez	a0,200159c4 <core::fmt::builders::DebugTuple::field+0xd8>
20015942:	4cc8                	lw	a0,28(s1)
20015944:	4a05                	li	s4,1
20015946:	014107a3          	sb	s4,15(sp)
2001594a:	48cc                	lw	a1,20(s1)
2001594c:	4c90                	lw	a2,24(s1)
2001594e:	c02e                	sw	a1,0(sp)
20015950:	c232                	sw	a2,4(sp)
20015952:	00f10593          	add	a1,sp,15
20015956:	c42e                	sw	a1,8(sp)
20015958:	488c                	lw	a1,16(s1)
2001595a:	0204c603          	lbu	a2,32(s1)
2001595e:	4094                	lw	a3,0(s1)
20015960:	40d8                	lw	a4,4(s1)
20015962:	449c                	lw	a5,8(s1)
20015964:	44c4                	lw	s1,12(s1)
20015966:	d62a                	sw	a0,44(sp)
20015968:	d02e                	sw	a1,32(sp)
2001596a:	02c10823          	sb	a2,48(sp)
2001596e:	c836                	sw	a3,16(sp)
20015970:	ca3a                	sw	a4,20(sp)
20015972:	cc3e                	sw	a5,24(sp)
20015974:	ce26                	sw	s1,28(sp)
20015976:	850a                	mv	a0,sp
20015978:	d22a                	sw	a0,36(sp)
2001597a:	00c9a603          	lw	a2,12(s3)
2001597e:	20019537          	lui	a0,0x20019
20015982:	b9850513          	add	a0,a0,-1128 # 20018b98 <.Lanon.f68147c55be82c2fe41eccee53b7e689.276>
20015986:	d42a                	sw	a0,40(sp)
20015988:	080c                	add	a1,sp,16
2001598a:	854a                	mv	a0,s2
2001598c:	9602                	jalr	a2
2001598e:	e91d                	bnez	a0,200159c4 <core::fmt::builders::DebugTuple::field+0xd8>
20015990:	55a2                	lw	a1,40(sp)
20015992:	5512                	lw	a0,36(sp)
20015994:	45d4                	lw	a3,12(a1)
20015996:	200195b7          	lui	a1,0x20019
2001599a:	bb858593          	add	a1,a1,-1096 # 20018bb8 <.Lanon.f68147c55be82c2fe41eccee53b7e689.281>
2001599e:	4609                	li	a2,2
200159a0:	9682                	jalr	a3
200159a2:	a005                	j	200159c2 <core::fmt::builders::DebugTuple::field+0xd6>
200159a4:	20019537          	lui	a0,0x20019
200159a8:	bc450593          	add	a1,a0,-1084 # 20018bc4 <.Lanon.f68147c55be82c2fe41eccee53b7e689.287>
200159ac:	4c94                	lw	a3,24(s1)
200159ae:	48c8                	lw	a0,20(s1)
200159b0:	46d4                	lw	a3,12(a3)
200159b2:	0605                	add	a2,a2,1
200159b4:	9682                	jalr	a3
200159b6:	e519                	bnez	a0,200159c4 <core::fmt::builders::DebugTuple::field+0xd8>
200159b8:	00c9a603          	lw	a2,12(s3)
200159bc:	854a                	mv	a0,s2
200159be:	85a6                	mv	a1,s1
200159c0:	9602                	jalr	a2
200159c2:	8a2a                	mv	s4,a0
200159c4:	01440423          	sb	s4,8(s0)
200159c8:	0a85                	add	s5,s5,1
200159ca:	01542023          	sw	s5,0(s0)
200159ce:	8522                	mv	a0,s0
200159d0:	40b6                	lw	ra,76(sp)
200159d2:	4426                	lw	s0,72(sp)
200159d4:	4496                	lw	s1,68(sp)
200159d6:	4906                	lw	s2,64(sp)
200159d8:	59f2                	lw	s3,60(sp)
200159da:	5a62                	lw	s4,56(sp)
200159dc:	5ad2                	lw	s5,52(sp)
200159de:	6161                	add	sp,sp,80
200159e0:	8082                	ret

200159e2 <core::fmt::Write::write_fmt>:
200159e2:	20019637          	lui	a2,0x20019
200159e6:	b9860613          	add	a2,a2,-1128 # 20018b98 <.Lanon.f68147c55be82c2fe41eccee53b7e689.276>
200159ea:	86ae                	mv	a3,a1
200159ec:	85b2                	mv	a1,a2
200159ee:	8636                	mv	a2,a3
200159f0:	00000317          	auipc	t1,0x0
200159f4:	01a30067          	jr	26(t1) # 20015a0a <core::fmt::write>

200159f8 <<core::fmt::Arguments as core::fmt::Debug>::fmt>:
200159f8:	49d0                	lw	a2,20(a1)
200159fa:	4d8c                	lw	a1,24(a1)
200159fc:	86aa                	mv	a3,a0
200159fe:	8532                	mv	a0,a2
20015a00:	8636                	mv	a2,a3
20015a02:	00000317          	auipc	t1,0x0
20015a06:	00830067          	jr	8(t1) # 20015a0a <core::fmt::write>

20015a0a <core::fmt::write>:
20015a0a:	715d                	add	sp,sp,-80
20015a0c:	c686                	sw	ra,76(sp)
20015a0e:	c4a2                	sw	s0,72(sp)
20015a10:	c2a6                	sw	s1,68(sp)
20015a12:	c0ca                	sw	s2,64(sp)
20015a14:	de4e                	sw	s3,60(sp)
20015a16:	dc52                	sw	s4,56(sp)
20015a18:	da56                	sw	s5,52(sp)
20015a1a:	d85a                	sw	s6,48(sp)
20015a1c:	d65e                	sw	s7,44(sp)
20015a1e:	89b2                	mv	s3,a2
20015a20:	d202                	sw	zero,36(sp)
20015a22:	02000613          	li	a2,32
20015a26:	cc32                	sw	a2,24(sp)
20015a28:	460d                	li	a2,3
20015a2a:	02c10423          	sb	a2,40(sp)
20015a2e:	0109a483          	lw	s1,16(s3)
20015a32:	c402                	sw	zero,8(sp)
20015a34:	c802                	sw	zero,16(sp)
20015a36:	ce2a                	sw	a0,28(sp)
20015a38:	d02e                	sw	a1,32(sp)
20015a3a:	ccd5                	beqz	s1,20015af6 <core::fmt::write+0xec>
20015a3c:	0149aa83          	lw	s5,20(s3)
20015a40:	100a8263          	beqz	s5,20015b44 <core::fmt::write+0x13a>
20015a44:	0009a403          	lw	s0,0(s3)
20015a48:	0089aa03          	lw	s4,8(s3)
20015a4c:	fffa8513          	add	a0,s5,-1
20015a50:	0516                	sll	a0,a0,0x5
20015a52:	8115                	srl	a0,a0,0x5
20015a54:	00150913          	add	s2,a0,1
20015a58:	0411                	add	s0,s0,4
20015a5a:	0a96                	sll	s5,s5,0x5
20015a5c:	04c1                	add	s1,s1,16
20015a5e:	4b05                	li	s6,1
20015a60:	20015537          	lui	a0,0x20015
20015a64:	19a50b93          	add	s7,a0,410 # 2001519a <core::ops::function::FnOnce::call_once>
20015a68:	4010                	lw	a2,0(s0)
20015a6a:	ca01                	beqz	a2,20015a7a <core::fmt::write+0x70>
20015a6c:	5682                	lw	a3,32(sp)
20015a6e:	4572                	lw	a0,28(sp)
20015a70:	ffc42583          	lw	a1,-4(s0)
20015a74:	46d4                	lw	a3,12(a3)
20015a76:	9682                	jalr	a3
20015a78:	e965                	bnez	a0,20015b68 <core::fmt::write+0x15e>
20015a7a:	4088                	lw	a0,0(s1)
20015a7c:	cc2a                	sw	a0,24(sp)
20015a7e:	00c4c503          	lbu	a0,12(s1)
20015a82:	02a10423          	sb	a0,40(sp)
20015a86:	4488                	lw	a0,8(s1)
20015a88:	d22a                	sw	a0,36(sp)
20015a8a:	ff84a583          	lw	a1,-8(s1)
20015a8e:	ffc4a503          	lw	a0,-4(s1)
20015a92:	cd81                	beqz	a1,20015aaa <core::fmt::write+0xa0>
20015a94:	01659763          	bne	a1,s6,20015aa2 <core::fmt::write+0x98>
20015a98:	050e                	sll	a0,a0,0x3
20015a9a:	9552                	add	a0,a0,s4
20015a9c:	414c                	lw	a1,4(a0)
20015a9e:	01758463          	beq	a1,s7,20015aa6 <core::fmt::write+0x9c>
20015aa2:	4581                	li	a1,0
20015aa4:	a021                	j	20015aac <core::fmt::write+0xa2>
20015aa6:	4108                	lw	a0,0(a0)
20015aa8:	4108                	lw	a0,0(a0)
20015aaa:	4585                	li	a1,1
20015aac:	c42e                	sw	a1,8(sp)
20015aae:	c62a                	sw	a0,12(sp)
20015ab0:	ff04a583          	lw	a1,-16(s1)
20015ab4:	ff44a503          	lw	a0,-12(s1)
20015ab8:	cd81                	beqz	a1,20015ad0 <core::fmt::write+0xc6>
20015aba:	01659763          	bne	a1,s6,20015ac8 <core::fmt::write+0xbe>
20015abe:	050e                	sll	a0,a0,0x3
20015ac0:	9552                	add	a0,a0,s4
20015ac2:	414c                	lw	a1,4(a0)
20015ac4:	01758463          	beq	a1,s7,20015acc <core::fmt::write+0xc2>
20015ac8:	4581                	li	a1,0
20015aca:	a021                	j	20015ad2 <core::fmt::write+0xc8>
20015acc:	4108                	lw	a0,0(a0)
20015ace:	4108                	lw	a0,0(a0)
20015ad0:	4585                	li	a1,1
20015ad2:	c82e                	sw	a1,16(sp)
20015ad4:	ca2a                	sw	a0,20(sp)
20015ad6:	40c8                	lw	a0,4(s1)
20015ad8:	050e                	sll	a0,a0,0x3
20015ada:	00aa05b3          	add	a1,s4,a0
20015ade:	4188                	lw	a0,0(a1)
20015ae0:	41d0                	lw	a2,4(a1)
20015ae2:	002c                	add	a1,sp,8
20015ae4:	9602                	jalr	a2
20015ae6:	e149                	bnez	a0,20015b68 <core::fmt::write+0x15e>
20015ae8:	0421                	add	s0,s0,8
20015aea:	1a81                	add	s5,s5,-32
20015aec:	02048493          	add	s1,s1,32
20015af0:	f60a9ce3          	bnez	s5,20015a68 <core::fmt::write+0x5e>
20015af4:	a099                	j	20015b3a <core::fmt::write+0x130>
20015af6:	00c9a503          	lw	a0,12(s3)
20015afa:	c529                	beqz	a0,20015b44 <core::fmt::write+0x13a>
20015afc:	0089a403          	lw	s0,8(s3)
20015b00:	00351a13          	sll	s4,a0,0x3
20015b04:	9a22                	add	s4,s4,s0
20015b06:	0009a483          	lw	s1,0(s3)
20015b0a:	157d                	add	a0,a0,-1
20015b0c:	050e                	sll	a0,a0,0x3
20015b0e:	810d                	srl	a0,a0,0x3
20015b10:	00150913          	add	s2,a0,1
20015b14:	0491                	add	s1,s1,4
20015b16:	4090                	lw	a2,0(s1)
20015b18:	ca01                	beqz	a2,20015b28 <core::fmt::write+0x11e>
20015b1a:	5682                	lw	a3,32(sp)
20015b1c:	4572                	lw	a0,28(sp)
20015b1e:	ffc4a583          	lw	a1,-4(s1)
20015b22:	46d4                	lw	a3,12(a3)
20015b24:	9682                	jalr	a3
20015b26:	e129                	bnez	a0,20015b68 <core::fmt::write+0x15e>
20015b28:	4008                	lw	a0,0(s0)
20015b2a:	4050                	lw	a2,4(s0)
20015b2c:	002c                	add	a1,sp,8
20015b2e:	9602                	jalr	a2
20015b30:	ed05                	bnez	a0,20015b68 <core::fmt::write+0x15e>
20015b32:	0421                	add	s0,s0,8
20015b34:	04a1                	add	s1,s1,8
20015b36:	ff4410e3          	bne	s0,s4,20015b16 <core::fmt::write+0x10c>
20015b3a:	0049a503          	lw	a0,4(s3)
20015b3e:	00a96863          	bltu	s2,a0,20015b4e <core::fmt::write+0x144>
20015b42:	a02d                	j	20015b6c <core::fmt::write+0x162>
20015b44:	4901                	li	s2,0
20015b46:	0049a503          	lw	a0,4(s3)
20015b4a:	02a07163          	bgeu	zero,a0,20015b6c <core::fmt::write+0x162>
20015b4e:	0009a503          	lw	a0,0(s3)
20015b52:	090e                	sll	s2,s2,0x3
20015b54:	992a                	add	s2,s2,a0
20015b56:	5682                	lw	a3,32(sp)
20015b58:	4572                	lw	a0,28(sp)
20015b5a:	00092583          	lw	a1,0(s2)
20015b5e:	00492603          	lw	a2,4(s2)
20015b62:	46d4                	lw	a3,12(a3)
20015b64:	9682                	jalr	a3
20015b66:	c119                	beqz	a0,20015b6c <core::fmt::write+0x162>
20015b68:	4505                	li	a0,1
20015b6a:	a011                	j	20015b6e <core::fmt::write+0x164>
20015b6c:	4501                	li	a0,0
20015b6e:	40b6                	lw	ra,76(sp)
20015b70:	4426                	lw	s0,72(sp)
20015b72:	4496                	lw	s1,68(sp)
20015b74:	4906                	lw	s2,64(sp)
20015b76:	59f2                	lw	s3,60(sp)
20015b78:	5a62                	lw	s4,56(sp)
20015b7a:	5ad2                	lw	s5,52(sp)
20015b7c:	5b42                	lw	s6,48(sp)
20015b7e:	5bb2                	lw	s7,44(sp)
20015b80:	6161                	add	sp,sp,80
20015b82:	8082                	ret

20015b84 <core::fmt::Formatter::pad_integral>:
20015b84:	7139                	add	sp,sp,-64
20015b86:	de06                	sw	ra,60(sp)
20015b88:	dc22                	sw	s0,56(sp)
20015b8a:	da26                	sw	s1,52(sp)
20015b8c:	d84a                	sw	s2,48(sp)
20015b8e:	d64e                	sw	s3,44(sp)
20015b90:	d452                	sw	s4,40(sp)
20015b92:	d256                	sw	s5,36(sp)
20015b94:	d05a                	sw	s6,32(sp)
20015b96:	ce5e                	sw	s7,28(sp)
20015b98:	cc62                	sw	s8,24(sp)
20015b9a:	ca66                	sw	s9,20(sp)
20015b9c:	c86a                	sw	s10,16(sp)
20015b9e:	c66e                	sw	s11,12(sp)
20015ba0:	89be                	mv	s3,a5
20015ba2:	893a                	mv	s2,a4
20015ba4:	8b36                	mv	s6,a3
20015ba6:	8a32                	mv	s4,a2
20015ba8:	8c2a                	mv	s8,a0
20015baa:	c1b1                	beqz	a1,20015bee <core::fmt::Formatter::pad_integral+0x6a>
20015bac:	01cc2403          	lw	s0,28(s8)
20015bb0:	00147c93          	and	s9,s0,1
20015bb4:	00110ab7          	lui	s5,0x110
20015bb8:	000c8463          	beqz	s9,20015bc0 <core::fmt::Formatter::pad_integral+0x3c>
20015bbc:	02b00a93          	li	s5,43
20015bc0:	9cce                	add	s9,s9,s3
20015bc2:	00447513          	and	a0,s0,4
20015bc6:	cd0d                	beqz	a0,20015c00 <core::fmt::Formatter::pad_integral+0x7c>
20015bc8:	4541                	li	a0,16
20015bca:	04ab7063          	bgeu	s6,a0,20015c0a <core::fmt::Formatter::pad_integral+0x86>
20015bce:	4501                	li	a0,0
20015bd0:	040b0363          	beqz	s6,20015c16 <core::fmt::Formatter::pad_integral+0x92>
20015bd4:	85d2                	mv	a1,s4
20015bd6:	865a                	mv	a2,s6
20015bd8:	00058683          	lb	a3,0(a1)
20015bdc:	fc06a693          	slti	a3,a3,-64
20015be0:	0016c693          	xor	a3,a3,1
20015be4:	9536                	add	a0,a0,a3
20015be6:	167d                	add	a2,a2,-1
20015be8:	0585                	add	a1,a1,1
20015bea:	f67d                	bnez	a2,20015bd8 <core::fmt::Formatter::pad_integral+0x54>
20015bec:	a02d                	j	20015c16 <core::fmt::Formatter::pad_integral+0x92>
20015bee:	01cc2403          	lw	s0,28(s8)
20015bf2:	00198c93          	add	s9,s3,1
20015bf6:	02d00a93          	li	s5,45
20015bfa:	00447513          	and	a0,s0,4
20015bfe:	f569                	bnez	a0,20015bc8 <core::fmt::Formatter::pad_integral+0x44>
20015c00:	4a01                	li	s4,0
20015c02:	000c2503          	lw	a0,0(s8)
20015c06:	ed01                	bnez	a0,20015c1e <core::fmt::Formatter::pad_integral+0x9a>
20015c08:	a815                	j	20015c3c <core::fmt::Formatter::pad_integral+0xb8>
20015c0a:	8552                	mv	a0,s4
20015c0c:	85da                	mv	a1,s6
20015c0e:	00001097          	auipc	ra,0x1
20015c12:	c32080e7          	jalr	-974(ra) # 20016840 <core::str::count::do_count_chars>
20015c16:	9caa                	add	s9,s9,a0
20015c18:	000c2503          	lw	a0,0(s8)
20015c1c:	c105                	beqz	a0,20015c3c <core::fmt::Formatter::pad_integral+0xb8>
20015c1e:	004c2d03          	lw	s10,4(s8)
20015c22:	01acfd63          	bgeu	s9,s10,20015c3c <core::fmt::Formatter::pad_integral+0xb8>
20015c26:	8821                	and	s0,s0,8
20015c28:	ec25                	bnez	s0,20015ca0 <core::fmt::Formatter::pad_integral+0x11c>
20015c2a:	020c4503          	lbu	a0,32(s8)
20015c2e:	4585                	li	a1,1
20015c30:	419d0cb3          	sub	s9,s10,s9
20015c34:	0aa5cd63          	blt	a1,a0,20015cee <core::fmt::Formatter::pad_integral+0x16a>
20015c38:	e561                	bnez	a0,20015d00 <core::fmt::Formatter::pad_integral+0x17c>
20015c3a:	a0e9                	j	20015d04 <core::fmt::Formatter::pad_integral+0x180>
20015c3c:	014c2403          	lw	s0,20(s8)
20015c40:	018c2483          	lw	s1,24(s8)
20015c44:	8522                	mv	a0,s0
20015c46:	85a6                	mv	a1,s1
20015c48:	8656                	mv	a2,s5
20015c4a:	86d2                	mv	a3,s4
20015c4c:	875a                	mv	a4,s6
20015c4e:	00000097          	auipc	ra,0x0
20015c52:	140080e7          	jalr	320(ra) # 20015d8e <core::fmt::Formatter::pad_integral::write_prefix>
20015c56:	4b85                	li	s7,1
20015c58:	c10d                	beqz	a0,20015c7a <core::fmt::Formatter::pad_integral+0xf6>
20015c5a:	855e                	mv	a0,s7
20015c5c:	50f2                	lw	ra,60(sp)
20015c5e:	5462                	lw	s0,56(sp)
20015c60:	54d2                	lw	s1,52(sp)
20015c62:	5942                	lw	s2,48(sp)
20015c64:	59b2                	lw	s3,44(sp)
20015c66:	5a22                	lw	s4,40(sp)
20015c68:	5a92                	lw	s5,36(sp)
20015c6a:	5b02                	lw	s6,32(sp)
20015c6c:	4bf2                	lw	s7,28(sp)
20015c6e:	4c62                	lw	s8,24(sp)
20015c70:	4cd2                	lw	s9,20(sp)
20015c72:	4d42                	lw	s10,16(sp)
20015c74:	4db2                	lw	s11,12(sp)
20015c76:	6121                	add	sp,sp,64
20015c78:	8082                	ret
20015c7a:	44dc                	lw	a5,12(s1)
20015c7c:	8522                	mv	a0,s0
20015c7e:	85ca                	mv	a1,s2
20015c80:	864e                	mv	a2,s3
20015c82:	50f2                	lw	ra,60(sp)
20015c84:	5462                	lw	s0,56(sp)
20015c86:	54d2                	lw	s1,52(sp)
20015c88:	5942                	lw	s2,48(sp)
20015c8a:	59b2                	lw	s3,44(sp)
20015c8c:	5a22                	lw	s4,40(sp)
20015c8e:	5a92                	lw	s5,36(sp)
20015c90:	5b02                	lw	s6,32(sp)
20015c92:	4bf2                	lw	s7,28(sp)
20015c94:	4c62                	lw	s8,24(sp)
20015c96:	4cd2                	lw	s9,20(sp)
20015c98:	4d42                	lw	s10,16(sp)
20015c9a:	4db2                	lw	s11,12(sp)
20015c9c:	6121                	add	sp,sp,64
20015c9e:	8782                	jr	a5
20015ca0:	010c2403          	lw	s0,16(s8)
20015ca4:	03000513          	li	a0,48
20015ca8:	020c4583          	lbu	a1,32(s8)
20015cac:	c42e                	sw	a1,8(sp)
20015cae:	014c2d83          	lw	s11,20(s8)
20015cb2:	018c2483          	lw	s1,24(s8)
20015cb6:	00ac2823          	sw	a0,16(s8)
20015cba:	4b85                	li	s7,1
20015cbc:	037c0023          	sb	s7,32(s8)
20015cc0:	856e                	mv	a0,s11
20015cc2:	85a6                	mv	a1,s1
20015cc4:	8656                	mv	a2,s5
20015cc6:	86d2                	mv	a3,s4
20015cc8:	875a                	mv	a4,s6
20015cca:	00000097          	auipc	ra,0x0
20015cce:	0c4080e7          	jalr	196(ra) # 20015d8e <core::fmt::Formatter::pad_integral::write_prefix>
20015cd2:	f541                	bnez	a0,20015c5a <core::fmt::Formatter::pad_integral+0xd6>
20015cd4:	8a22                	mv	s4,s0
20015cd6:	419d0433          	sub	s0,s10,s9
20015cda:	0405                	add	s0,s0,1
20015cdc:	147d                	add	s0,s0,-1
20015cde:	c451                	beqz	s0,20015d6a <core::fmt::Formatter::pad_integral+0x1e6>
20015ce0:	4890                	lw	a2,16(s1)
20015ce2:	03000593          	li	a1,48
20015ce6:	856e                	mv	a0,s11
20015ce8:	9602                	jalr	a2
20015cea:	d96d                	beqz	a0,20015cdc <core::fmt::Formatter::pad_integral+0x158>
20015cec:	b7bd                	j	20015c5a <core::fmt::Formatter::pad_integral+0xd6>
20015cee:	4589                	li	a1,2
20015cf0:	00b51863          	bne	a0,a1,20015d00 <core::fmt::Formatter::pad_integral+0x17c>
20015cf4:	001cd513          	srl	a0,s9,0x1
20015cf8:	0c85                	add	s9,s9,1
20015cfa:	001cdc93          	srl	s9,s9,0x1
20015cfe:	a019                	j	20015d04 <core::fmt::Formatter::pad_integral+0x180>
20015d00:	8566                	mv	a0,s9
20015d02:	4c81                	li	s9,0
20015d04:	014c2d03          	lw	s10,20(s8)
20015d08:	018c2483          	lw	s1,24(s8)
20015d0c:	010c2c03          	lw	s8,16(s8)
20015d10:	00150413          	add	s0,a0,1
20015d14:	147d                	add	s0,s0,-1
20015d16:	c801                	beqz	s0,20015d26 <core::fmt::Formatter::pad_integral+0x1a2>
20015d18:	4890                	lw	a2,16(s1)
20015d1a:	856a                	mv	a0,s10
20015d1c:	85e2                	mv	a1,s8
20015d1e:	9602                	jalr	a2
20015d20:	d975                	beqz	a0,20015d14 <core::fmt::Formatter::pad_integral+0x190>
20015d22:	4b85                	li	s7,1
20015d24:	bf1d                	j	20015c5a <core::fmt::Formatter::pad_integral+0xd6>
20015d26:	856a                	mv	a0,s10
20015d28:	85a6                	mv	a1,s1
20015d2a:	8656                	mv	a2,s5
20015d2c:	86d2                	mv	a3,s4
20015d2e:	875a                	mv	a4,s6
20015d30:	00000097          	auipc	ra,0x0
20015d34:	05e080e7          	jalr	94(ra) # 20015d8e <core::fmt::Formatter::pad_integral::write_prefix>
20015d38:	4b85                	li	s7,1
20015d3a:	f105                	bnez	a0,20015c5a <core::fmt::Formatter::pad_integral+0xd6>
20015d3c:	44d4                	lw	a3,12(s1)
20015d3e:	856a                	mv	a0,s10
20015d40:	85ca                	mv	a1,s2
20015d42:	864e                	mv	a2,s3
20015d44:	9682                	jalr	a3
20015d46:	f911                	bnez	a0,20015c5a <core::fmt::Formatter::pad_integral+0xd6>
20015d48:	41900933          	neg	s2,s9
20015d4c:	59fd                	li	s3,-1
20015d4e:	547d                	li	s0,-1
20015d50:	00890533          	add	a0,s2,s0
20015d54:	03350963          	beq	a0,s3,20015d86 <core::fmt::Formatter::pad_integral+0x202>
20015d58:	4890                	lw	a2,16(s1)
20015d5a:	856a                	mv	a0,s10
20015d5c:	85e2                	mv	a1,s8
20015d5e:	9602                	jalr	a2
20015d60:	0405                	add	s0,s0,1
20015d62:	d57d                	beqz	a0,20015d50 <core::fmt::Formatter::pad_integral+0x1cc>
20015d64:	01943bb3          	sltu	s7,s0,s9
20015d68:	bdcd                	j	20015c5a <core::fmt::Formatter::pad_integral+0xd6>
20015d6a:	44d4                	lw	a3,12(s1)
20015d6c:	856e                	mv	a0,s11
20015d6e:	85ca                	mv	a1,s2
20015d70:	864e                	mv	a2,s3
20015d72:	9682                	jalr	a3
20015d74:	ee0513e3          	bnez	a0,20015c5a <core::fmt::Formatter::pad_integral+0xd6>
20015d78:	4b81                	li	s7,0
20015d7a:	014c2823          	sw	s4,16(s8)
20015d7e:	4522                	lw	a0,8(sp)
20015d80:	02ac0023          	sb	a0,32(s8)
20015d84:	bdd9                	j	20015c5a <core::fmt::Formatter::pad_integral+0xd6>
20015d86:	8466                	mv	s0,s9
20015d88:	019cbbb3          	sltu	s7,s9,s9
20015d8c:	b5f9                	j	20015c5a <core::fmt::Formatter::pad_integral+0xd6>

20015d8e <core::fmt::Formatter::pad_integral::write_prefix>:
20015d8e:	1101                	add	sp,sp,-32
20015d90:	ce06                	sw	ra,28(sp)
20015d92:	cc22                	sw	s0,24(sp)
20015d94:	ca26                	sw	s1,20(sp)
20015d96:	c84a                	sw	s2,16(sp)
20015d98:	c64e                	sw	s3,12(sp)
20015d9a:	001107b7          	lui	a5,0x110
20015d9e:	893a                	mv	s2,a4
20015da0:	84b6                	mv	s1,a3
20015da2:	842e                	mv	s0,a1
20015da4:	89aa                	mv	s3,a0
20015da6:	00f60963          	beq	a2,a5,20015db8 <core::fmt::Formatter::pad_integral::write_prefix+0x2a>
20015daa:	4814                	lw	a3,16(s0)
20015dac:	854e                	mv	a0,s3
20015dae:	85b2                	mv	a1,a2
20015db0:	9682                	jalr	a3
20015db2:	85aa                	mv	a1,a0
20015db4:	4505                	li	a0,1
20015db6:	ed91                	bnez	a1,20015dd2 <core::fmt::Formatter::pad_integral::write_prefix+0x44>
20015db8:	cc81                	beqz	s1,20015dd0 <core::fmt::Formatter::pad_integral::write_prefix+0x42>
20015dba:	445c                	lw	a5,12(s0)
20015dbc:	854e                	mv	a0,s3
20015dbe:	85a6                	mv	a1,s1
20015dc0:	864a                	mv	a2,s2
20015dc2:	40f2                	lw	ra,28(sp)
20015dc4:	4462                	lw	s0,24(sp)
20015dc6:	44d2                	lw	s1,20(sp)
20015dc8:	4942                	lw	s2,16(sp)
20015dca:	49b2                	lw	s3,12(sp)
20015dcc:	6105                	add	sp,sp,32
20015dce:	8782                	jr	a5
20015dd0:	4501                	li	a0,0
20015dd2:	40f2                	lw	ra,28(sp)
20015dd4:	4462                	lw	s0,24(sp)
20015dd6:	44d2                	lw	s1,20(sp)
20015dd8:	4942                	lw	s2,16(sp)
20015dda:	49b2                	lw	s3,12(sp)
20015ddc:	6105                	add	sp,sp,32
20015dde:	8082                	ret

20015de0 <core::fmt::Formatter::pad>:
20015de0:	1101                	add	sp,sp,-32
20015de2:	ce06                	sw	ra,28(sp)
20015de4:	cc22                	sw	s0,24(sp)
20015de6:	ca26                	sw	s1,20(sp)
20015de8:	c84a                	sw	s2,16(sp)
20015dea:	c64e                	sw	s3,12(sp)
20015dec:	c452                	sw	s4,8(sp)
20015dee:	c256                	sw	s5,4(sp)
20015df0:	c05a                	sw	s6,0(sp)
20015df2:	8b2a                	mv	s6,a0
20015df4:	00052283          	lw	t0,0(a0)
20015df8:	4508                	lw	a0,8(a0)
20015dfa:	00a2e6b3          	or	a3,t0,a0
20015dfe:	89b2                	mv	s3,a2
20015e00:	892e                	mv	s2,a1
20015e02:	16068763          	beqz	a3,20015f70 <core::fmt::Formatter::pad+0x190>
20015e06:	10050963          	beqz	a0,20015f18 <core::fmt::Formatter::pad+0x138>
20015e0a:	00cb2703          	lw	a4,12(s6)
20015e0e:	4501                	li	a0,0
20015e10:	013906b3          	add	a3,s2,s3
20015e14:	0705                	add	a4,a4,1
20015e16:	00110337          	lui	t1,0x110
20015e1a:	0df00893          	li	a7,223
20015e1e:	0f000813          	li	a6,240
20015e22:	864a                	mv	a2,s2
20015e24:	a801                	j	20015e34 <core::fmt::Formatter::pad+0x54>
20015e26:	00160593          	add	a1,a2,1
20015e2a:	8d11                	sub	a0,a0,a2
20015e2c:	952e                	add	a0,a0,a1
20015e2e:	862e                	mv	a2,a1
20015e30:	0e640463          	beq	s0,t1,20015f18 <core::fmt::Formatter::pad+0x138>
20015e34:	177d                	add	a4,a4,-1
20015e36:	c725                	beqz	a4,20015e9e <core::fmt::Formatter::pad+0xbe>
20015e38:	0ed60063          	beq	a2,a3,20015f18 <core::fmt::Formatter::pad+0x138>
20015e3c:	00060583          	lb	a1,0(a2)
20015e40:	0ff5f413          	zext.b	s0,a1
20015e44:	fe05d1e3          	bgez	a1,20015e26 <core::fmt::Formatter::pad+0x46>
20015e48:	00164583          	lbu	a1,1(a2)
20015e4c:	01f47493          	and	s1,s0,31
20015e50:	03f5f793          	and	a5,a1,63
20015e54:	0288f963          	bgeu	a7,s0,20015e86 <core::fmt::Formatter::pad+0xa6>
20015e58:	00264583          	lbu	a1,2(a2)
20015e5c:	079a                	sll	a5,a5,0x6
20015e5e:	03f5f593          	and	a1,a1,63
20015e62:	8fcd                	or	a5,a5,a1
20015e64:	03046763          	bltu	s0,a6,20015e92 <core::fmt::Formatter::pad+0xb2>
20015e68:	00364583          	lbu	a1,3(a2)
20015e6c:	04f6                	sll	s1,s1,0x1d
20015e6e:	80ad                	srl	s1,s1,0xb
20015e70:	079a                	sll	a5,a5,0x6
20015e72:	03f5f593          	and	a1,a1,63
20015e76:	8ddd                	or	a1,a1,a5
20015e78:	0095e433          	or	s0,a1,s1
20015e7c:	08640e63          	beq	s0,t1,20015f18 <core::fmt::Formatter::pad+0x138>
20015e80:	00460593          	add	a1,a2,4
20015e84:	b75d                	j	20015e2a <core::fmt::Formatter::pad+0x4a>
20015e86:	00260593          	add	a1,a2,2
20015e8a:	00649413          	sll	s0,s1,0x6
20015e8e:	8c5d                	or	s0,s0,a5
20015e90:	bf69                	j	20015e2a <core::fmt::Formatter::pad+0x4a>
20015e92:	00360593          	add	a1,a2,3
20015e96:	00c49413          	sll	s0,s1,0xc
20015e9a:	8c5d                	or	s0,s0,a5
20015e9c:	b779                	j	20015e2a <core::fmt::Formatter::pad+0x4a>
20015e9e:	06d60d63          	beq	a2,a3,20015f18 <core::fmt::Formatter::pad+0x138>
20015ea2:	00060583          	lb	a1,0(a2)
20015ea6:	0405d363          	bgez	a1,20015eec <core::fmt::Formatter::pad+0x10c>
20015eaa:	0ff5f593          	zext.b	a1,a1
20015eae:	0e000693          	li	a3,224
20015eb2:	02d5ed63          	bltu	a1,a3,20015eec <core::fmt::Formatter::pad+0x10c>
20015eb6:	0f000693          	li	a3,240
20015eba:	02d5e963          	bltu	a1,a3,20015eec <core::fmt::Formatter::pad+0x10c>
20015ebe:	00164683          	lbu	a3,1(a2)
20015ec2:	00264703          	lbu	a4,2(a2)
20015ec6:	03f6f693          	and	a3,a3,63
20015eca:	03f77713          	and	a4,a4,63
20015ece:	00364603          	lbu	a2,3(a2)
20015ed2:	05f6                	sll	a1,a1,0x1d
20015ed4:	81ad                	srl	a1,a1,0xb
20015ed6:	06b2                	sll	a3,a3,0xc
20015ed8:	071a                	sll	a4,a4,0x6
20015eda:	8ed9                	or	a3,a3,a4
20015edc:	03f67613          	and	a2,a2,63
20015ee0:	8e55                	or	a2,a2,a3
20015ee2:	8dd1                	or	a1,a1,a2
20015ee4:	00110637          	lui	a2,0x110
20015ee8:	02c58863          	beq	a1,a2,20015f18 <core::fmt::Formatter::pad+0x138>
20015eec:	c10d                	beqz	a0,20015f0e <core::fmt::Formatter::pad+0x12e>
20015eee:	01357e63          	bgeu	a0,s3,20015f0a <core::fmt::Formatter::pad+0x12a>
20015ef2:	00a905b3          	add	a1,s2,a0
20015ef6:	00058583          	lb	a1,0(a1)
20015efa:	fc000613          	li	a2,-64
20015efe:	00c5d863          	bge	a1,a2,20015f0e <core::fmt::Formatter::pad+0x12e>
20015f02:	4581                	li	a1,0
20015f04:	00001863          	bnez	zero,20015f14 <core::fmt::Formatter::pad+0x134>
20015f08:	a801                	j	20015f18 <core::fmt::Formatter::pad+0x138>
20015f0a:	ff351ce3          	bne	a0,s3,20015f02 <core::fmt::Formatter::pad+0x122>
20015f0e:	85ca                	mv	a1,s2
20015f10:	00090463          	beqz	s2,20015f18 <core::fmt::Formatter::pad+0x138>
20015f14:	89aa                	mv	s3,a0
20015f16:	892e                	mv	s2,a1
20015f18:	04028c63          	beqz	t0,20015f70 <core::fmt::Formatter::pad+0x190>
20015f1c:	004b2403          	lw	s0,4(s6)
20015f20:	4541                	li	a0,16
20015f22:	02a9ff63          	bgeu	s3,a0,20015f60 <core::fmt::Formatter::pad+0x180>
20015f26:	4501                	li	a0,0
20015f28:	00098e63          	beqz	s3,20015f44 <core::fmt::Formatter::pad+0x164>
20015f2c:	85ca                	mv	a1,s2
20015f2e:	864e                	mv	a2,s3
20015f30:	00058683          	lb	a3,0(a1)
20015f34:	fc06a693          	slti	a3,a3,-64
20015f38:	0016c693          	xor	a3,a3,1
20015f3c:	9536                	add	a0,a0,a3
20015f3e:	167d                	add	a2,a2,-1 # 10ffff <.Lline_table_start1+0xe0b89>
20015f40:	0585                	add	a1,a1,1
20015f42:	f67d                	bnez	a2,20015f30 <core::fmt::Formatter::pad+0x150>
20015f44:	02857663          	bgeu	a0,s0,20015f70 <core::fmt::Formatter::pad+0x190>
20015f48:	020b4603          	lbu	a2,32(s6)
20015f4c:	4581                	li	a1,0
20015f4e:	4685                	li	a3,1
20015f50:	40a40a33          	sub	s4,s0,a0
20015f54:	02c6cf63          	blt	a3,a2,20015f92 <core::fmt::Formatter::pad+0x1b2>
20015f58:	c629                	beqz	a2,20015fa2 <core::fmt::Formatter::pad+0x1c2>
20015f5a:	85d2                	mv	a1,s4
20015f5c:	4a01                	li	s4,0
20015f5e:	a091                	j	20015fa2 <core::fmt::Formatter::pad+0x1c2>
20015f60:	854a                	mv	a0,s2
20015f62:	85ce                	mv	a1,s3
20015f64:	00001097          	auipc	ra,0x1
20015f68:	8dc080e7          	jalr	-1828(ra) # 20016840 <core::str::count::do_count_chars>
20015f6c:	fc856ee3          	bltu	a0,s0,20015f48 <core::fmt::Formatter::pad+0x168>
20015f70:	018b2583          	lw	a1,24(s6)
20015f74:	014b2503          	lw	a0,20(s6)
20015f78:	45dc                	lw	a5,12(a1)
20015f7a:	85ca                	mv	a1,s2
20015f7c:	864e                	mv	a2,s3
20015f7e:	40f2                	lw	ra,28(sp)
20015f80:	4462                	lw	s0,24(sp)
20015f82:	44d2                	lw	s1,20(sp)
20015f84:	4942                	lw	s2,16(sp)
20015f86:	49b2                	lw	s3,12(sp)
20015f88:	4a22                	lw	s4,8(sp)
20015f8a:	4a92                	lw	s5,4(sp)
20015f8c:	4b02                	lw	s6,0(sp)
20015f8e:	6105                	add	sp,sp,32
20015f90:	8782                	jr	a5
20015f92:	4509                	li	a0,2
20015f94:	00a61763          	bne	a2,a0,20015fa2 <core::fmt::Formatter::pad+0x1c2>
20015f98:	001a5593          	srl	a1,s4,0x1
20015f9c:	0a05                	add	s4,s4,1
20015f9e:	001a5a13          	srl	s4,s4,0x1
20015fa2:	014b2a83          	lw	s5,20(s6)
20015fa6:	018b2403          	lw	s0,24(s6)
20015faa:	010b2b03          	lw	s6,16(s6)
20015fae:	00158493          	add	s1,a1,1
20015fb2:	14fd                	add	s1,s1,-1
20015fb4:	c881                	beqz	s1,20015fc4 <core::fmt::Formatter::pad+0x1e4>
20015fb6:	4810                	lw	a2,16(s0)
20015fb8:	8556                	mv	a0,s5
20015fba:	85da                	mv	a1,s6
20015fbc:	9602                	jalr	a2
20015fbe:	d975                	beqz	a0,20015fb2 <core::fmt::Formatter::pad+0x1d2>
20015fc0:	4505                	li	a0,1
20015fc2:	a81d                	j	20015ff8 <core::fmt::Formatter::pad+0x218>
20015fc4:	4454                	lw	a3,12(s0)
20015fc6:	8556                	mv	a0,s5
20015fc8:	85ca                	mv	a1,s2
20015fca:	864e                	mv	a2,s3
20015fcc:	9682                	jalr	a3
20015fce:	85aa                	mv	a1,a0
20015fd0:	4505                	li	a0,1
20015fd2:	e19d                	bnez	a1,20015ff8 <core::fmt::Formatter::pad+0x218>
20015fd4:	41400933          	neg	s2,s4
20015fd8:	59fd                	li	s3,-1
20015fda:	54fd                	li	s1,-1
20015fdc:	00990533          	add	a0,s2,s1
20015fe0:	01350963          	beq	a0,s3,20015ff2 <core::fmt::Formatter::pad+0x212>
20015fe4:	4810                	lw	a2,16(s0)
20015fe6:	8556                	mv	a0,s5
20015fe8:	85da                	mv	a1,s6
20015fea:	9602                	jalr	a2
20015fec:	0485                	add	s1,s1,1
20015fee:	d57d                	beqz	a0,20015fdc <core::fmt::Formatter::pad+0x1fc>
20015ff0:	a011                	j	20015ff4 <core::fmt::Formatter::pad+0x214>
20015ff2:	84d2                	mv	s1,s4
20015ff4:	0144b533          	sltu	a0,s1,s4
20015ff8:	40f2                	lw	ra,28(sp)
20015ffa:	4462                	lw	s0,24(sp)
20015ffc:	44d2                	lw	s1,20(sp)
20015ffe:	4942                	lw	s2,16(sp)
20016000:	49b2                	lw	s3,12(sp)
20016002:	4a22                	lw	s4,8(sp)
20016004:	4a92                	lw	s5,4(sp)
20016006:	4b02                	lw	s6,0(sp)
20016008:	6105                	add	sp,sp,32
2001600a:	8082                	ret

2001600c <core::fmt::Formatter::write_str>:
2001600c:	4d14                	lw	a3,24(a0)
2001600e:	4948                	lw	a0,20(a0)
20016010:	46dc                	lw	a5,12(a3)
20016012:	8782                	jr	a5

20016014 <core::fmt::Formatter::debug_struct_field1_finish>:
20016014:	7179                	add	sp,sp,-48
20016016:	d606                	sw	ra,44(sp)
20016018:	d422                	sw	s0,40(sp)
2001601a:	d226                	sw	s1,36(sp)
2001601c:	d04a                	sw	s2,32(sp)
2001601e:	ce4e                	sw	s3,28(sp)
20016020:	cc52                	sw	s4,24(sp)
20016022:	ca56                	sw	s5,20(sp)
20016024:	842a                	mv	s0,a0
20016026:	4d04                	lw	s1,24(a0)
20016028:	4948                	lw	a0,20(a0)
2001602a:	44c4                	lw	s1,12(s1)
2001602c:	8942                	mv	s2,a6
2001602e:	89be                	mv	s3,a5
20016030:	8a3a                	mv	s4,a4
20016032:	8ab6                	mv	s5,a3
20016034:	9482                	jalr	s1
20016036:	c622                	sw	s0,12(sp)
20016038:	00a10823          	sb	a0,16(sp)
2001603c:	000108a3          	sb	zero,17(sp)
20016040:	0068                	add	a0,sp,12
20016042:	85d6                	mv	a1,s5
20016044:	8652                	mv	a2,s4
20016046:	86ce                	mv	a3,s3
20016048:	874a                	mv	a4,s2
2001604a:	fffff097          	auipc	ra,0xfffff
2001604e:	728080e7          	jalr	1832(ra) # 20015772 <core::fmt::builders::DebugStruct::field>
20016052:	01114503          	lbu	a0,17(sp)
20016056:	01014583          	lbu	a1,16(sp)
2001605a:	c10d                	beqz	a0,2001607c <core::fmt::Formatter::debug_struct_field1_finish+0x68>
2001605c:	4505                	li	a0,1
2001605e:	e99d                	bnez	a1,20016094 <core::fmt::Formatter::debug_struct_field1_finish+0x80>
20016060:	4532                	lw	a0,12(sp)
20016062:	01c54583          	lbu	a1,28(a0)
20016066:	8991                	and	a1,a1,4
20016068:	ed89                	bnez	a1,20016082 <core::fmt::Formatter::debug_struct_field1_finish+0x6e>
2001606a:	4d0c                	lw	a1,24(a0)
2001606c:	4948                	lw	a0,20(a0)
2001606e:	45d4                	lw	a3,12(a1)
20016070:	200195b7          	lui	a1,0x20019
20016074:	bc258593          	add	a1,a1,-1086 # 20018bc2 <.Lanon.f68147c55be82c2fe41eccee53b7e689.286>
20016078:	4609                	li	a2,2
2001607a:	a821                	j	20016092 <core::fmt::Formatter::debug_struct_field1_finish+0x7e>
2001607c:	00b03533          	snez	a0,a1
20016080:	a811                	j	20016094 <core::fmt::Formatter::debug_struct_field1_finish+0x80>
20016082:	4d0c                	lw	a1,24(a0)
20016084:	4948                	lw	a0,20(a0)
20016086:	45d4                	lw	a3,12(a1)
20016088:	200195b7          	lui	a1,0x20019
2001608c:	bc158593          	add	a1,a1,-1087 # 20018bc1 <.Lanon.f68147c55be82c2fe41eccee53b7e689.285>
20016090:	4605                	li	a2,1
20016092:	9682                	jalr	a3
20016094:	50b2                	lw	ra,44(sp)
20016096:	5422                	lw	s0,40(sp)
20016098:	5492                	lw	s1,36(sp)
2001609a:	5902                	lw	s2,32(sp)
2001609c:	49f2                	lw	s3,28(sp)
2001609e:	4a62                	lw	s4,24(sp)
200160a0:	4ad2                	lw	s5,20(sp)
200160a2:	6145                	add	sp,sp,48
200160a4:	8082                	ret

200160a6 <core::fmt::Formatter::debug_struct_field3_finish>:
200160a6:	715d                	add	sp,sp,-80
200160a8:	c686                	sw	ra,76(sp)
200160aa:	c4a2                	sw	s0,72(sp)
200160ac:	c2a6                	sw	s1,68(sp)
200160ae:	c0ca                	sw	s2,64(sp)
200160b0:	de4e                	sw	s3,60(sp)
200160b2:	dc52                	sw	s4,56(sp)
200160b4:	da56                	sw	s5,52(sp)
200160b6:	d85a                	sw	s6,48(sp)
200160b8:	d65e                	sw	s7,44(sp)
200160ba:	d462                	sw	s8,40(sp)
200160bc:	d266                	sw	s9,36(sp)
200160be:	d06a                	sw	s10,32(sp)
200160c0:	ce6e                	sw	s11,28(sp)
200160c2:	842a                	mv	s0,a0
200160c4:	4af6                	lw	s5,92(sp)
200160c6:	5506                	lw	a0,96(sp)
200160c8:	c82a                	sw	a0,16(sp)
200160ca:	5516                	lw	a0,100(sp)
200160cc:	c62a                	sw	a0,12(sp)
200160ce:	5a26                	lw	s4,104(sp)
200160d0:	4b46                	lw	s6,80(sp)
200160d2:	4c04                	lw	s1,24(s0)
200160d4:	4c56                	lw	s8,84(sp)
200160d6:	4be6                	lw	s7,88(sp)
200160d8:	4848                	lw	a0,20(s0)
200160da:	44c4                	lw	s1,12(s1)
200160dc:	8cc6                	mv	s9,a7
200160de:	8d42                	mv	s10,a6
200160e0:	8dbe                	mv	s11,a5
200160e2:	89ba                	mv	s3,a4
200160e4:	8936                	mv	s2,a3
200160e6:	9482                	jalr	s1
200160e8:	ca22                	sw	s0,20(sp)
200160ea:	00a10c23          	sb	a0,24(sp)
200160ee:	00010ca3          	sb	zero,25(sp)
200160f2:	0848                	add	a0,sp,20
200160f4:	85ca                	mv	a1,s2
200160f6:	864e                	mv	a2,s3
200160f8:	86ee                	mv	a3,s11
200160fa:	876a                	mv	a4,s10
200160fc:	fffff097          	auipc	ra,0xfffff
20016100:	676080e7          	jalr	1654(ra) # 20015772 <core::fmt::builders::DebugStruct::field>
20016104:	0848                	add	a0,sp,20
20016106:	85e6                	mv	a1,s9
20016108:	865a                	mv	a2,s6
2001610a:	86e2                	mv	a3,s8
2001610c:	875e                	mv	a4,s7
2001610e:	fffff097          	auipc	ra,0xfffff
20016112:	664080e7          	jalr	1636(ra) # 20015772 <core::fmt::builders::DebugStruct::field>
20016116:	0848                	add	a0,sp,20
20016118:	85d6                	mv	a1,s5
2001611a:	4642                	lw	a2,16(sp)
2001611c:	46b2                	lw	a3,12(sp)
2001611e:	8752                	mv	a4,s4
20016120:	fffff097          	auipc	ra,0xfffff
20016124:	652080e7          	jalr	1618(ra) # 20015772 <core::fmt::builders::DebugStruct::field>
20016128:	01914503          	lbu	a0,25(sp)
2001612c:	01814583          	lbu	a1,24(sp)
20016130:	c10d                	beqz	a0,20016152 <core::fmt::Formatter::debug_struct_field3_finish+0xac>
20016132:	4505                	li	a0,1
20016134:	e99d                	bnez	a1,2001616a <core::fmt::Formatter::debug_struct_field3_finish+0xc4>
20016136:	4552                	lw	a0,20(sp)
20016138:	01c54583          	lbu	a1,28(a0)
2001613c:	8991                	and	a1,a1,4
2001613e:	ed89                	bnez	a1,20016158 <core::fmt::Formatter::debug_struct_field3_finish+0xb2>
20016140:	4d0c                	lw	a1,24(a0)
20016142:	4948                	lw	a0,20(a0)
20016144:	45d4                	lw	a3,12(a1)
20016146:	200195b7          	lui	a1,0x20019
2001614a:	bc258593          	add	a1,a1,-1086 # 20018bc2 <.Lanon.f68147c55be82c2fe41eccee53b7e689.286>
2001614e:	4609                	li	a2,2
20016150:	a821                	j	20016168 <core::fmt::Formatter::debug_struct_field3_finish+0xc2>
20016152:	00b03533          	snez	a0,a1
20016156:	a811                	j	2001616a <core::fmt::Formatter::debug_struct_field3_finish+0xc4>
20016158:	4d0c                	lw	a1,24(a0)
2001615a:	4948                	lw	a0,20(a0)
2001615c:	45d4                	lw	a3,12(a1)
2001615e:	200195b7          	lui	a1,0x20019
20016162:	bc158593          	add	a1,a1,-1087 # 20018bc1 <.Lanon.f68147c55be82c2fe41eccee53b7e689.285>
20016166:	4605                	li	a2,1
20016168:	9682                	jalr	a3
2001616a:	40b6                	lw	ra,76(sp)
2001616c:	4426                	lw	s0,72(sp)
2001616e:	4496                	lw	s1,68(sp)
20016170:	4906                	lw	s2,64(sp)
20016172:	59f2                	lw	s3,60(sp)
20016174:	5a62                	lw	s4,56(sp)
20016176:	5ad2                	lw	s5,52(sp)
20016178:	5b42                	lw	s6,48(sp)
2001617a:	5bb2                	lw	s7,44(sp)
2001617c:	5c22                	lw	s8,40(sp)
2001617e:	5c92                	lw	s9,36(sp)
20016180:	5d02                	lw	s10,32(sp)
20016182:	4df2                	lw	s11,28(sp)
20016184:	6161                	add	sp,sp,80
20016186:	8082                	ret

20016188 <core::fmt::Formatter::debug_struct_field5_finish>:
20016188:	7159                	add	sp,sp,-112
2001618a:	d686                	sw	ra,108(sp)
2001618c:	d4a2                	sw	s0,104(sp)
2001618e:	d2a6                	sw	s1,100(sp)
20016190:	d0ca                	sw	s2,96(sp)
20016192:	cece                	sw	s3,92(sp)
20016194:	ccd2                	sw	s4,88(sp)
20016196:	cad6                	sw	s5,84(sp)
20016198:	c8da                	sw	s6,80(sp)
2001619a:	c6de                	sw	s7,76(sp)
2001619c:	c4e2                	sw	s8,72(sp)
2001619e:	c2e6                	sw	s9,68(sp)
200161a0:	c0ea                	sw	s10,64(sp)
200161a2:	de6e                	sw	s11,60(sp)
200161a4:	842a                	mv	s0,a0
200161a6:	457a                	lw	a0,156(sp)
200161a8:	d82a                	sw	a0,48(sp)
200161aa:	550a                	lw	a0,160(sp)
200161ac:	d62a                	sw	a0,44(sp)
200161ae:	551a                	lw	a0,164(sp)
200161b0:	d42a                	sw	a0,40(sp)
200161b2:	552a                	lw	a0,168(sp)
200161b4:	d22a                	sw	a0,36(sp)
200161b6:	453a                	lw	a0,140(sp)
200161b8:	d02a                	sw	a0,32(sp)
200161ba:	454a                	lw	a0,144(sp)
200161bc:	ce2a                	sw	a0,28(sp)
200161be:	455a                	lw	a0,148(sp)
200161c0:	cc2a                	sw	a0,24(sp)
200161c2:	456a                	lw	a0,152(sp)
200161c4:	ca2a                	sw	a0,20(sp)
200161c6:	5576                	lw	a0,124(sp)
200161c8:	c82a                	sw	a0,16(sp)
200161ca:	4d0a                	lw	s10,128(sp)
200161cc:	4d9a                	lw	s11,132(sp)
200161ce:	452a                	lw	a0,136(sp)
200161d0:	c62a                	sw	a0,12(sp)
200161d2:	59c6                	lw	s3,112(sp)
200161d4:	4c04                	lw	s1,24(s0)
200161d6:	5a56                	lw	s4,116(sp)
200161d8:	5ae6                	lw	s5,120(sp)
200161da:	4848                	lw	a0,20(s0)
200161dc:	44c4                	lw	s1,12(s1)
200161de:	8b46                	mv	s6,a7
200161e0:	8bc2                	mv	s7,a6
200161e2:	8c3e                	mv	s8,a5
200161e4:	8cba                	mv	s9,a4
200161e6:	8936                	mv	s2,a3
200161e8:	9482                	jalr	s1
200161ea:	da22                	sw	s0,52(sp)
200161ec:	02a10c23          	sb	a0,56(sp)
200161f0:	02010ca3          	sb	zero,57(sp)
200161f4:	1848                	add	a0,sp,52
200161f6:	85ca                	mv	a1,s2
200161f8:	8666                	mv	a2,s9
200161fa:	86e2                	mv	a3,s8
200161fc:	875e                	mv	a4,s7
200161fe:	fffff097          	auipc	ra,0xfffff
20016202:	574080e7          	jalr	1396(ra) # 20015772 <core::fmt::builders::DebugStruct::field>
20016206:	1848                	add	a0,sp,52
20016208:	85da                	mv	a1,s6
2001620a:	864e                	mv	a2,s3
2001620c:	86d2                	mv	a3,s4
2001620e:	8756                	mv	a4,s5
20016210:	fffff097          	auipc	ra,0xfffff
20016214:	562080e7          	jalr	1378(ra) # 20015772 <core::fmt::builders::DebugStruct::field>
20016218:	1848                	add	a0,sp,52
2001621a:	45c2                	lw	a1,16(sp)
2001621c:	866a                	mv	a2,s10
2001621e:	86ee                	mv	a3,s11
20016220:	4732                	lw	a4,12(sp)
20016222:	fffff097          	auipc	ra,0xfffff
20016226:	550080e7          	jalr	1360(ra) # 20015772 <core::fmt::builders::DebugStruct::field>
2001622a:	1848                	add	a0,sp,52
2001622c:	5582                	lw	a1,32(sp)
2001622e:	4672                	lw	a2,28(sp)
20016230:	46e2                	lw	a3,24(sp)
20016232:	4752                	lw	a4,20(sp)
20016234:	fffff097          	auipc	ra,0xfffff
20016238:	53e080e7          	jalr	1342(ra) # 20015772 <core::fmt::builders::DebugStruct::field>
2001623c:	1848                	add	a0,sp,52
2001623e:	55c2                	lw	a1,48(sp)
20016240:	5632                	lw	a2,44(sp)
20016242:	56a2                	lw	a3,40(sp)
20016244:	5712                	lw	a4,36(sp)
20016246:	fffff097          	auipc	ra,0xfffff
2001624a:	52c080e7          	jalr	1324(ra) # 20015772 <core::fmt::builders::DebugStruct::field>
2001624e:	03914503          	lbu	a0,57(sp)
20016252:	03814583          	lbu	a1,56(sp)
20016256:	c10d                	beqz	a0,20016278 <core::fmt::Formatter::debug_struct_field5_finish+0xf0>
20016258:	4505                	li	a0,1
2001625a:	e99d                	bnez	a1,20016290 <core::fmt::Formatter::debug_struct_field5_finish+0x108>
2001625c:	5552                	lw	a0,52(sp)
2001625e:	01c54583          	lbu	a1,28(a0)
20016262:	8991                	and	a1,a1,4
20016264:	ed89                	bnez	a1,2001627e <core::fmt::Formatter::debug_struct_field5_finish+0xf6>
20016266:	4d0c                	lw	a1,24(a0)
20016268:	4948                	lw	a0,20(a0)
2001626a:	45d4                	lw	a3,12(a1)
2001626c:	200195b7          	lui	a1,0x20019
20016270:	bc258593          	add	a1,a1,-1086 # 20018bc2 <.Lanon.f68147c55be82c2fe41eccee53b7e689.286>
20016274:	4609                	li	a2,2
20016276:	a821                	j	2001628e <core::fmt::Formatter::debug_struct_field5_finish+0x106>
20016278:	00b03533          	snez	a0,a1
2001627c:	a811                	j	20016290 <core::fmt::Formatter::debug_struct_field5_finish+0x108>
2001627e:	4d0c                	lw	a1,24(a0)
20016280:	4948                	lw	a0,20(a0)
20016282:	45d4                	lw	a3,12(a1)
20016284:	200195b7          	lui	a1,0x20019
20016288:	bc158593          	add	a1,a1,-1087 # 20018bc1 <.Lanon.f68147c55be82c2fe41eccee53b7e689.285>
2001628c:	4605                	li	a2,1
2001628e:	9682                	jalr	a3
20016290:	50b6                	lw	ra,108(sp)
20016292:	5426                	lw	s0,104(sp)
20016294:	5496                	lw	s1,100(sp)
20016296:	5906                	lw	s2,96(sp)
20016298:	49f6                	lw	s3,92(sp)
2001629a:	4a66                	lw	s4,88(sp)
2001629c:	4ad6                	lw	s5,84(sp)
2001629e:	4b46                	lw	s6,80(sp)
200162a0:	4bb6                	lw	s7,76(sp)
200162a2:	4c26                	lw	s8,72(sp)
200162a4:	4c96                	lw	s9,68(sp)
200162a6:	4d06                	lw	s10,64(sp)
200162a8:	5df2                	lw	s11,60(sp)
200162aa:	6165                	add	sp,sp,112
200162ac:	8082                	ret

200162ae <core::fmt::Formatter::debug_tuple_field1_finish>:
200162ae:	1101                	add	sp,sp,-32
200162b0:	ce06                	sw	ra,28(sp)
200162b2:	cc22                	sw	s0,24(sp)
200162b4:	ca26                	sw	s1,20(sp)
200162b6:	c84a                	sw	s2,16(sp)
200162b8:	c64e                	sw	s3,12(sp)
200162ba:	842a                	mv	s0,a0
200162bc:	4d1c                	lw	a5,24(a0)
200162be:	4948                	lw	a0,20(a0)
200162c0:	47dc                	lw	a5,12(a5)
200162c2:	893a                	mv	s2,a4
200162c4:	89b6                	mv	s3,a3
200162c6:	84b2                	mv	s1,a2
200162c8:	9782                	jalr	a5
200162ca:	0014b593          	seqz	a1,s1
200162ce:	c222                	sw	s0,4(sp)
200162d0:	00a10423          	sb	a0,8(sp)
200162d4:	c002                	sw	zero,0(sp)
200162d6:	00b104a3          	sb	a1,9(sp)
200162da:	850a                	mv	a0,sp
200162dc:	85ce                	mv	a1,s3
200162de:	864a                	mv	a2,s2
200162e0:	fffff097          	auipc	ra,0xfffff
200162e4:	60c080e7          	jalr	1548(ra) # 200158ec <core::fmt::builders::DebugTuple::field>
200162e8:	4502                	lw	a0,0(sp)
200162ea:	00814583          	lbu	a1,8(sp)
200162ee:	c539                	beqz	a0,2001633c <core::fmt::Formatter::debug_tuple_field1_finish+0x8e>
200162f0:	4405                	li	s0,1
200162f2:	e5b9                	bnez	a1,20016340 <core::fmt::Formatter::debug_tuple_field1_finish+0x92>
200162f4:	00914583          	lbu	a1,9(sp)
200162f8:	157d                	add	a0,a0,-1
200162fa:	00a03533          	snez	a0,a0
200162fe:	4492                	lw	s1,4(sp)
20016300:	0015b593          	seqz	a1,a1
20016304:	8d4d                	or	a0,a0,a1
20016306:	e105                	bnez	a0,20016326 <core::fmt::Formatter::debug_tuple_field1_finish+0x78>
20016308:	01c4c503          	lbu	a0,28(s1)
2001630c:	8911                	and	a0,a0,4
2001630e:	ed01                	bnez	a0,20016326 <core::fmt::Formatter::debug_tuple_field1_finish+0x78>
20016310:	4c8c                	lw	a1,24(s1)
20016312:	48c8                	lw	a0,20(s1)
20016314:	45d4                	lw	a3,12(a1)
20016316:	200195b7          	lui	a1,0x20019
2001631a:	bc758593          	add	a1,a1,-1081 # 20018bc7 <.Lanon.f68147c55be82c2fe41eccee53b7e689.289>
2001631e:	4605                	li	a2,1
20016320:	4405                	li	s0,1
20016322:	9682                	jalr	a3
20016324:	ed11                	bnez	a0,20016340 <core::fmt::Formatter::debug_tuple_field1_finish+0x92>
20016326:	4c8c                	lw	a1,24(s1)
20016328:	48c8                	lw	a0,20(s1)
2001632a:	45d4                	lw	a3,12(a1)
2001632c:	200195b7          	lui	a1,0x20019
20016330:	b2358593          	add	a1,a1,-1245 # 20018b23 <.Lanon.f68147c55be82c2fe41eccee53b7e689.153>
20016334:	4605                	li	a2,1
20016336:	9682                	jalr	a3
20016338:	842a                	mv	s0,a0
2001633a:	a019                	j	20016340 <core::fmt::Formatter::debug_tuple_field1_finish+0x92>
2001633c:	00b03433          	snez	s0,a1
20016340:	8522                	mv	a0,s0
20016342:	40f2                	lw	ra,28(sp)
20016344:	4462                	lw	s0,24(sp)
20016346:	44d2                	lw	s1,20(sp)
20016348:	4942                	lw	s2,16(sp)
2001634a:	49b2                	lw	s3,12(sp)
2001634c:	6105                	add	sp,sp,32
2001634e:	8082                	ret

20016350 <<bool as core::fmt::Display>::fmt>:
20016350:	00054603          	lbu	a2,0(a0)
20016354:	852e                	mv	a0,a1
20016356:	ca11                	beqz	a2,2001636a <<bool as core::fmt::Display>::fmt+0x1a>
20016358:	200175b7          	lui	a1,0x20017
2001635c:	4c658593          	add	a1,a1,1222 # 200174c6 <.L__unnamed_2+0x12>
20016360:	4611                	li	a2,4
20016362:	00000317          	auipc	t1,0x0
20016366:	a7e30067          	jr	-1410(t1) # 20015de0 <core::fmt::Formatter::pad>
2001636a:	200195b7          	lui	a1,0x20019
2001636e:	cc058593          	add	a1,a1,-832 # 20018cc0 <.Lanon.f68147c55be82c2fe41eccee53b7e689.317>
20016372:	4615                	li	a2,5
20016374:	00000317          	auipc	t1,0x0
20016378:	a6c30067          	jr	-1428(t1) # 20015de0 <core::fmt::Formatter::pad>

2001637c <<str as core::fmt::Debug>::fmt>:
2001637c:	711d                	add	sp,sp,-96
2001637e:	ce86                	sw	ra,92(sp)
20016380:	cca2                	sw	s0,88(sp)
20016382:	caa6                	sw	s1,84(sp)
20016384:	c8ca                	sw	s2,80(sp)
20016386:	c6ce                	sw	s3,76(sp)
20016388:	c4d2                	sw	s4,72(sp)
2001638a:	c2d6                	sw	s5,68(sp)
2001638c:	c0da                	sw	s6,64(sp)
2001638e:	de5e                	sw	s7,60(sp)
20016390:	dc62                	sw	s8,56(sp)
20016392:	da66                	sw	s9,52(sp)
20016394:	d86a                	sw	s10,48(sp)
20016396:	d66e                	sw	s11,44(sp)
20016398:	4e04                	lw	s1,24(a2)
2001639a:	01462c83          	lw	s9,20(a2)
2001639e:	489c                	lw	a5,16(s1)
200163a0:	89ae                	mv	s3,a1
200163a2:	8c2a                	mv	s8,a0
200163a4:	02200593          	li	a1,34
200163a8:	8566                	mv	a0,s9
200163aa:	c83e                	sw	a5,16(sp)
200163ac:	9782                	jalr	a5
200163ae:	c10d                	beqz	a0,200163d0 <<str as core::fmt::Debug>::fmt+0x54>
200163b0:	4505                	li	a0,1
200163b2:	40f6                	lw	ra,92(sp)
200163b4:	4466                	lw	s0,88(sp)
200163b6:	44d6                	lw	s1,84(sp)
200163b8:	4946                	lw	s2,80(sp)
200163ba:	49b6                	lw	s3,76(sp)
200163bc:	4a26                	lw	s4,72(sp)
200163be:	4a96                	lw	s5,68(sp)
200163c0:	4b06                	lw	s6,64(sp)
200163c2:	5bf2                	lw	s7,60(sp)
200163c4:	5c62                	lw	s8,56(sp)
200163c6:	5cd2                	lw	s9,52(sp)
200163c8:	5d42                	lw	s10,48(sp)
200163ca:	5db2                	lw	s11,44(sp)
200163cc:	6125                	add	sp,sp,96
200163ce:	8082                	ret
200163d0:	4b01                	li	s6,0
200163d2:	20098263          	beqz	s3,200165d6 <<str as core::fmt::Debug>::fmt+0x25a>
200163d6:	4b81                	li	s7,0
200163d8:	013c0a33          	add	s4,s8,s3
200163dc:	6541                	lui	a0,0x10
200163de:	00150413          	add	s0,a0,1 # 10001 <.Lline_table_start0+0x3adf>
200163e2:	08000d13          	li	s10,128
200163e6:	8962                	mv	s2,s8
200163e8:	c662                	sw	s8,12(sp)
200163ea:	c426                	sw	s1,8(sp)
200163ec:	c252                	sw	s4,4(sp)
200163ee:	c022                	sw	s0,0(sp)
200163f0:	a821                	j	20016408 <<str as core::fmt::Debug>::fmt+0x8c>
200163f2:	9b5e                	add	s6,s6,s7
200163f4:	4c32                	lw	s8,12(sp)
200163f6:	44a2                	lw	s1,8(sp)
200163f8:	4a12                	lw	s4,4(sp)
200163fa:	4402                	lw	s0,0(sp)
200163fc:	412b8bb3          	sub	s7,s7,s2
20016400:	9bee                	add	s7,s7,s11
20016402:	896e                	mv	s2,s11
20016404:	1b4d8b63          	beq	s11,s4,200165ba <<str as core::fmt::Debug>::fmt+0x23e>
20016408:	00090503          	lb	a0,0(s2)
2001640c:	0ff57a93          	zext.b	s5,a0
20016410:	00054563          	bltz	a0,2001641a <<str as core::fmt::Debug>::fmt+0x9e>
20016414:	00190d93          	add	s11,s2,1
20016418:	a08d                	j	2001647a <<str as core::fmt::Debug>::fmt+0xfe>
2001641a:	00194583          	lbu	a1,1(s2)
2001641e:	01faf513          	and	a0,s5,31
20016422:	03f5f593          	and	a1,a1,63
20016426:	0df00613          	li	a2,223
2001642a:	03567f63          	bgeu	a2,s5,20016468 <<str as core::fmt::Debug>::fmt+0xec>
2001642e:	00294603          	lbu	a2,2(s2)
20016432:	00390d93          	add	s11,s2,3
20016436:	059a                	sll	a1,a1,0x6
20016438:	03f67613          	and	a2,a2,63
2001643c:	8dd1                	or	a1,a1,a2
2001643e:	0f000613          	li	a2,240
20016442:	02cae963          	bltu	s5,a2,20016474 <<str as core::fmt::Debug>::fmt+0xf8>
20016446:	000dc603          	lbu	a2,0(s11)
2001644a:	0576                	sll	a0,a0,0x1d
2001644c:	812d                	srl	a0,a0,0xb
2001644e:	059a                	sll	a1,a1,0x6
20016450:	03f67613          	and	a2,a2,63
20016454:	8dd1                	or	a1,a1,a2
20016456:	00a5eab3          	or	s5,a1,a0
2001645a:	00110537          	lui	a0,0x110
2001645e:	14aa8e63          	beq	s5,a0,200165ba <<str as core::fmt::Debug>::fmt+0x23e>
20016462:	00490d93          	add	s11,s2,4
20016466:	a811                	j	2001647a <<str as core::fmt::Debug>::fmt+0xfe>
20016468:	00290d93          	add	s11,s2,2
2001646c:	051a                	sll	a0,a0,0x6
2001646e:	00b56ab3          	or	s5,a0,a1
20016472:	a021                	j	2001647a <<str as core::fmt::Debug>::fmt+0xfe>
20016474:	0532                	sll	a0,a0,0xc
20016476:	00a5eab3          	or	s5,a1,a0
2001647a:	0848                	add	a0,sp,20
2001647c:	85d6                	mv	a1,s5
2001647e:	8622                	mv	a2,s0
20016480:	fffff097          	auipc	ra,0xfffff
20016484:	dee080e7          	jalr	-530(ra) # 2001526e <core::char::methods::<impl char>::escape_debug_ext>
20016488:	01414503          	lbu	a0,20(sp)
2001648c:	01f14583          	lbu	a1,31(sp)
20016490:	01e14603          	lbu	a2,30(sp)
20016494:	f8050513          	add	a0,a0,-128 # 10ff80 <.Lline_table_start1+0xe0b0a>
20016498:	00153513          	seqz	a0,a0
2001649c:	8d91                	sub	a1,a1,a2
2001649e:	0ff5f593          	zext.b	a1,a1
200164a2:	15fd                	add	a1,a1,-1
200164a4:	0015b593          	seqz	a1,a1
200164a8:	8d4d                	or	a0,a0,a1
200164aa:	f929                	bnez	a0,200163fc <<str as core::fmt::Debug>::fmt+0x80>
200164ac:	196bea63          	bltu	s7,s6,20016640 <<str as core::fmt::Debug>::fmt+0x2c4>
200164b0:	016c05b3          	add	a1,s8,s6
200164b4:	000b0d63          	beqz	s6,200164ce <<str as core::fmt::Debug>::fmt+0x152>
200164b8:	013b7963          	bgeu	s6,s3,200164ca <<str as core::fmt::Debug>::fmt+0x14e>
200164bc:	00058503          	lb	a0,0(a1)
200164c0:	fc000613          	li	a2,-64
200164c4:	00c55563          	bge	a0,a2,200164ce <<str as core::fmt::Debug>::fmt+0x152>
200164c8:	aaa5                	j	20016640 <<str as core::fmt::Debug>::fmt+0x2c4>
200164ca:	173b1b63          	bne	s6,s3,20016640 <<str as core::fmt::Debug>::fmt+0x2c4>
200164ce:	000b8f63          	beqz	s7,200164ec <<str as core::fmt::Debug>::fmt+0x170>
200164d2:	013bfb63          	bgeu	s7,s3,200164e8 <<str as core::fmt::Debug>::fmt+0x16c>
200164d6:	017c0533          	add	a0,s8,s7
200164da:	00050503          	lb	a0,0(a0)
200164de:	fbf00613          	li	a2,-65
200164e2:	00a64563          	blt	a2,a0,200164ec <<str as core::fmt::Debug>::fmt+0x170>
200164e6:	aaa9                	j	20016640 <<str as core::fmt::Debug>::fmt+0x2c4>
200164e8:	153b9c63          	bne	s7,s3,20016640 <<str as core::fmt::Debug>::fmt+0x2c4>
200164ec:	44d4                	lw	a3,12(s1)
200164ee:	416b8633          	sub	a2,s7,s6
200164f2:	8566                	mv	a0,s9
200164f4:	9682                	jalr	a3
200164f6:	ea051de3          	bnez	a0,200163b0 <<str as core::fmt::Debug>::fmt+0x34>
200164fa:	4572                	lw	a0,28(sp)
200164fc:	45e2                	lw	a1,24(sp)
200164fe:	4652                	lw	a2,20(sp)
20016500:	d42a                	sw	a0,40(sp)
20016502:	d22e                	sw	a1,36(sp)
20016504:	0ff67513          	zext.b	a0,a2
20016508:	d032                	sw	a2,32(sp)
2001650a:	05a51563          	bne	a0,s10,20016554 <<str as core::fmt::Debug>::fmt+0x1d8>
2001650e:	08000413          	li	s0,128
20016512:	a819                	j	20016528 <<str as core::fmt::Debug>::fmt+0x1ac>
20016514:	4401                	li	s0,0
20016516:	5592                	lw	a1,36(sp)
20016518:	d002                	sw	zero,32(sp)
2001651a:	d402                	sw	zero,40(sp)
2001651c:	d202                	sw	zero,36(sp)
2001651e:	8566                	mv	a0,s9
20016520:	47c2                	lw	a5,16(sp)
20016522:	9782                	jalr	a5
20016524:	e80516e3          	bnez	a0,200163b0 <<str as core::fmt::Debug>::fmt+0x34>
20016528:	0ff47513          	zext.b	a0,s0
2001652c:	ffa504e3          	beq	a0,s10,20016514 <<str as core::fmt::Debug>::fmt+0x198>
20016530:	02a14b03          	lbu	s6,42(sp)
20016534:	02b14503          	lbu	a0,43(sp)
20016538:	06ab7363          	bgeu	s6,a0,2001659e <<str as core::fmt::Debug>::fmt+0x222>
2001653c:	001b0513          	add	a0,s6,1
20016540:	02a10523          	sb	a0,42(sp)
20016544:	4529                	li	a0,10
20016546:	0eab7263          	bgeu	s6,a0,2001662a <<str as core::fmt::Debug>::fmt+0x2ae>
2001654a:	1008                	add	a0,sp,32
2001654c:	9b2a                	add	s6,s6,a0
2001654e:	000b4583          	lbu	a1,0(s6)
20016552:	b7f1                	j	2001651e <<str as core::fmt::Debug>::fmt+0x1a2>
20016554:	02a14c03          	lbu	s8,42(sp)
20016558:	4529                	li	a0,10
2001655a:	8b62                	mv	s6,s8
2001655c:	01856363          	bltu	a0,s8,20016562 <<str as core::fmt::Debug>::fmt+0x1e6>
20016560:	4b29                	li	s6,10
20016562:	02b14503          	lbu	a0,43(sp)
20016566:	418b0433          	sub	s0,s6,s8
2001656a:	418505b3          	sub	a1,a0,s8
2001656e:	00b53533          	sltu	a0,a0,a1
20016572:	157d                	add	a0,a0,-1
20016574:	00b574b3          	and	s1,a0,a1
20016578:	02010a13          	add	s4,sp,32
2001657c:	9a62                	add	s4,s4,s8
2001657e:	0c05                	add	s8,s8,1
20016580:	cc99                	beqz	s1,2001659e <<str as core::fmt::Debug>::fmt+0x222>
20016582:	03810523          	sb	s8,42(sp)
20016586:	c055                	beqz	s0,2001662a <<str as core::fmt::Debug>::fmt+0x2ae>
20016588:	000a4583          	lbu	a1,0(s4)
2001658c:	8566                	mv	a0,s9
2001658e:	47c2                	lw	a5,16(sp)
20016590:	9782                	jalr	a5
20016592:	147d                	add	s0,s0,-1
20016594:	14fd                	add	s1,s1,-1
20016596:	0a05                	add	s4,s4,1
20016598:	0c05                	add	s8,s8,1
2001659a:	d17d                	beqz	a0,20016580 <<str as core::fmt::Debug>::fmt+0x204>
2001659c:	bd11                	j	200163b0 <<str as core::fmt::Debug>::fmt+0x34>
2001659e:	4b05                	li	s6,1
200165a0:	e5aae9e3          	bltu	s5,s10,200163f2 <<str as core::fmt::Debug>::fmt+0x76>
200165a4:	00bad513          	srl	a0,s5,0xb
200165a8:	4b09                	li	s6,2
200165aa:	e40504e3          	beqz	a0,200163f2 <<str as core::fmt::Debug>::fmt+0x76>
200165ae:	010ad513          	srl	a0,s5,0x10
200165b2:	00a03b33          	snez	s6,a0
200165b6:	0b0d                	add	s6,s6,3
200165b8:	bd2d                	j	200163f2 <<str as core::fmt::Debug>::fmt+0x76>
200165ba:	000b0e63          	beqz	s6,200165d6 <<str as core::fmt::Debug>::fmt+0x25a>
200165be:	053b7763          	bgeu	s6,s3,2001660c <<str as core::fmt::Debug>::fmt+0x290>
200165c2:	016c0533          	add	a0,s8,s6
200165c6:	00050503          	lb	a0,0(a0)
200165ca:	fbf00593          	li	a1,-65
200165ce:	04a5d163          	bge	a1,a0,20016610 <<str as core::fmt::Debug>::fmt+0x294>
200165d2:	416989b3          	sub	s3,s3,s6
200165d6:	44d4                	lw	a3,12(s1)
200165d8:	016c05b3          	add	a1,s8,s6
200165dc:	8566                	mv	a0,s9
200165de:	864e                	mv	a2,s3
200165e0:	9682                	jalr	a3
200165e2:	dc0517e3          	bnez	a0,200163b0 <<str as core::fmt::Debug>::fmt+0x34>
200165e6:	02200593          	li	a1,34
200165ea:	8566                	mv	a0,s9
200165ec:	47c2                	lw	a5,16(sp)
200165ee:	40f6                	lw	ra,92(sp)
200165f0:	4466                	lw	s0,88(sp)
200165f2:	44d6                	lw	s1,84(sp)
200165f4:	4946                	lw	s2,80(sp)
200165f6:	49b6                	lw	s3,76(sp)
200165f8:	4a26                	lw	s4,72(sp)
200165fa:	4a96                	lw	s5,68(sp)
200165fc:	4b06                	lw	s6,64(sp)
200165fe:	5bf2                	lw	s7,60(sp)
20016600:	5c62                	lw	s8,56(sp)
20016602:	5cd2                	lw	s9,52(sp)
20016604:	5d42                	lw	s10,48(sp)
20016606:	5db2                	lw	s11,44(sp)
20016608:	6125                	add	sp,sp,96
2001660a:	8782                	jr	a5
2001660c:	fd6983e3          	beq	s3,s6,200165d2 <<str as core::fmt::Debug>::fmt+0x256>
20016610:	20019537          	lui	a0,0x20019
20016614:	cc850713          	add	a4,a0,-824 # 20018cc8 <.Lanon.f68147c55be82c2fe41eccee53b7e689.319>
20016618:	8562                	mv	a0,s8
2001661a:	85ce                	mv	a1,s3
2001661c:	865a                	mv	a2,s6
2001661e:	86ce                	mv	a3,s3
20016620:	00000097          	auipc	ra,0x0
20016624:	39a080e7          	jalr	922(ra) # 200169ba <core::str::slice_error_fail>
20016628:	0000                	unimp
2001662a:	20019537          	lui	a0,0x20019
2001662e:	49850613          	add	a2,a0,1176 # 20019498 <.Lanon.f68147c55be82c2fe41eccee53b7e689.431>
20016632:	45a9                	li	a1,10
20016634:	855a                	mv	a0,s6
20016636:	fffff097          	auipc	ra,0xfffff
2001663a:	e82080e7          	jalr	-382(ra) # 200154b8 <core::panicking::panic_bounds_check>
2001663e:	0000                	unimp
20016640:	20019537          	lui	a0,0x20019
20016644:	cd850713          	add	a4,a0,-808 # 20018cd8 <.Lanon.f68147c55be82c2fe41eccee53b7e689.320>
20016648:	8562                	mv	a0,s8
2001664a:	85ce                	mv	a1,s3
2001664c:	865a                	mv	a2,s6
2001664e:	86de                	mv	a3,s7
20016650:	00000097          	auipc	ra,0x0
20016654:	36a080e7          	jalr	874(ra) # 200169ba <core::str::slice_error_fail>
	...

2001665a <<char as core::fmt::Debug>::fmt>:
2001665a:	7179                	add	sp,sp,-48
2001665c:	d606                	sw	ra,44(sp)
2001665e:	d422                	sw	s0,40(sp)
20016660:	d226                	sw	s1,36(sp)
20016662:	d04a                	sw	s2,32(sp)
20016664:	ce4e                	sw	s3,28(sp)
20016666:	cc52                	sw	s4,24(sp)
20016668:	ca56                	sw	s5,20(sp)
2001666a:	c85a                	sw	s6,16(sp)
2001666c:	4d90                	lw	a2,24(a1)
2001666e:	0145aa83          	lw	s5,20(a1)
20016672:	4a1c                	lw	a5,16(a2)
20016674:	84aa                	mv	s1,a0
20016676:	02700593          	li	a1,39
2001667a:	8556                	mv	a0,s5
2001667c:	c03e                	sw	a5,0(sp)
2001667e:	9782                	jalr	a5
20016680:	cd01                	beqz	a0,20016698 <<char as core::fmt::Debug>::fmt+0x3e>
20016682:	4505                	li	a0,1
20016684:	50b2                	lw	ra,44(sp)
20016686:	5422                	lw	s0,40(sp)
20016688:	5492                	lw	s1,36(sp)
2001668a:	5902                	lw	s2,32(sp)
2001668c:	49f2                	lw	s3,28(sp)
2001668e:	4a62                	lw	s4,24(sp)
20016690:	4ad2                	lw	s5,20(sp)
20016692:	4b42                	lw	s6,16(sp)
20016694:	6145                	add	sp,sp,48
20016696:	8082                	ret
20016698:	408c                	lw	a1,0(s1)
2001669a:	0048                	add	a0,sp,4
2001669c:	10100613          	li	a2,257
200166a0:	00410913          	add	s2,sp,4
200166a4:	fffff097          	auipc	ra,0xfffff
200166a8:	bca080e7          	jalr	-1078(ra) # 2001526e <core::char::methods::<impl char>::escape_debug_ext>
200166ac:	00414503          	lbu	a0,4(sp)
200166b0:	08000993          	li	s3,128
200166b4:	05351763          	bne	a0,s3,20016702 <<char as core::fmt::Debug>::fmt+0xa8>
200166b8:	4a29                	li	s4,10
200166ba:	08000413          	li	s0,128
200166be:	a811                	j	200166d2 <<char as core::fmt::Debug>::fmt+0x78>
200166c0:	4401                	li	s0,0
200166c2:	45a2                	lw	a1,8(sp)
200166c4:	c202                	sw	zero,4(sp)
200166c6:	c602                	sw	zero,12(sp)
200166c8:	c402                	sw	zero,8(sp)
200166ca:	8556                	mv	a0,s5
200166cc:	4782                	lw	a5,0(sp)
200166ce:	9782                	jalr	a5
200166d0:	f94d                	bnez	a0,20016682 <<char as core::fmt::Debug>::fmt+0x28>
200166d2:	0ff47513          	zext.b	a0,s0
200166d6:	ff3505e3          	beq	a0,s3,200166c0 <<char as core::fmt::Debug>::fmt+0x66>
200166da:	00e14b03          	lbu	s6,14(sp)
200166de:	00f14503          	lbu	a0,15(sp)
200166e2:	06ab7663          	bgeu	s6,a0,2001674e <<char as core::fmt::Debug>::fmt+0xf4>
200166e6:	001b0513          	add	a0,s6,1
200166ea:	00a10723          	sb	a0,14(sp)
200166ee:	074b7e63          	bgeu	s6,s4,2001676a <<char as core::fmt::Debug>::fmt+0x110>
200166f2:	9b4a                	add	s6,s6,s2
200166f4:	000b4583          	lbu	a1,0(s6)
200166f8:	8556                	mv	a0,s5
200166fa:	4782                	lw	a5,0(sp)
200166fc:	9782                	jalr	a5
200166fe:	d971                	beqz	a0,200166d2 <<char as core::fmt::Debug>::fmt+0x78>
20016700:	b749                	j	20016682 <<char as core::fmt::Debug>::fmt+0x28>
20016702:	00e14483          	lbu	s1,14(sp)
20016706:	00f14503          	lbu	a0,15(sp)
2001670a:	45a9                	li	a1,10
2001670c:	8b26                	mv	s6,s1
2001670e:	0095e363          	bltu	a1,s1,20016714 <<char as core::fmt::Debug>::fmt+0xba>
20016712:	4b29                	li	s6,10
20016714:	409b0933          	sub	s2,s6,s1
20016718:	409505b3          	sub	a1,a0,s1
2001671c:	00b53533          	sltu	a0,a0,a1
20016720:	157d                	add	a0,a0,-1
20016722:	00b579b3          	and	s3,a0,a1
20016726:	0040                	add	s0,sp,4
20016728:	9426                	add	s0,s0,s1
2001672a:	0485                	add	s1,s1,1
2001672c:	02098163          	beqz	s3,2001674e <<char as core::fmt::Debug>::fmt+0xf4>
20016730:	00910723          	sb	s1,14(sp)
20016734:	02090b63          	beqz	s2,2001676a <<char as core::fmt::Debug>::fmt+0x110>
20016738:	00044583          	lbu	a1,0(s0)
2001673c:	8556                	mv	a0,s5
2001673e:	4782                	lw	a5,0(sp)
20016740:	9782                	jalr	a5
20016742:	197d                	add	s2,s2,-1
20016744:	19fd                	add	s3,s3,-1
20016746:	0405                	add	s0,s0,1
20016748:	0485                	add	s1,s1,1
2001674a:	d16d                	beqz	a0,2001672c <<char as core::fmt::Debug>::fmt+0xd2>
2001674c:	bf1d                	j	20016682 <<char as core::fmt::Debug>::fmt+0x28>
2001674e:	02700593          	li	a1,39
20016752:	8556                	mv	a0,s5
20016754:	4782                	lw	a5,0(sp)
20016756:	50b2                	lw	ra,44(sp)
20016758:	5422                	lw	s0,40(sp)
2001675a:	5492                	lw	s1,36(sp)
2001675c:	5902                	lw	s2,32(sp)
2001675e:	49f2                	lw	s3,28(sp)
20016760:	4a62                	lw	s4,24(sp)
20016762:	4ad2                	lw	s5,20(sp)
20016764:	4b42                	lw	s6,16(sp)
20016766:	6145                	add	sp,sp,48
20016768:	8782                	jr	a5
2001676a:	20019537          	lui	a0,0x20019
2001676e:	49850613          	add	a2,a0,1176 # 20019498 <.Lanon.f68147c55be82c2fe41eccee53b7e689.431>
20016772:	45a9                	li	a1,10
20016774:	855a                	mv	a0,s6
20016776:	fffff097          	auipc	ra,0xfffff
2001677a:	d42080e7          	jalr	-702(ra) # 200154b8 <core::panicking::panic_bounds_check>
	...

20016780 <core::slice::index::slice_start_index_len_fail>:
20016780:	7139                	add	sp,sp,-64
20016782:	de06                	sw	ra,60(sp)
20016784:	c62a                	sw	a0,12(sp)
20016786:	c82e                	sw	a1,16(sp)
20016788:	0068                	add	a0,sp,12
2001678a:	d62a                	sw	a0,44(sp)
2001678c:	20017537          	lui	a0,0x20017
20016790:	1d650513          	add	a0,a0,470 # 200171d6 <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt>
20016794:	d82a                	sw	a0,48(sp)
20016796:	080c                	add	a1,sp,16
20016798:	da2e                	sw	a1,52(sp)
2001679a:	dc2a                	sw	a0,56(sp)
2001679c:	20019537          	lui	a0,0x20019
200167a0:	d1c50513          	add	a0,a0,-740 # 20018d1c <.Lanon.f68147c55be82c2fe41eccee53b7e689.327>
200167a4:	ca2a                	sw	a0,20(sp)
200167a6:	4509                	li	a0,2
200167a8:	cc2a                	sw	a0,24(sp)
200167aa:	d202                	sw	zero,36(sp)
200167ac:	106c                	add	a1,sp,44
200167ae:	ce2e                	sw	a1,28(sp)
200167b0:	d02a                	sw	a0,32(sp)
200167b2:	0848                	add	a0,sp,20
200167b4:	85b2                	mv	a1,a2
200167b6:	fffff097          	auipc	ra,0xfffff
200167ba:	ca8080e7          	jalr	-856(ra) # 2001545e <core::panicking::panic_fmt>
	...

200167c0 <core::slice::index::slice_end_index_len_fail>:
200167c0:	7139                	add	sp,sp,-64
200167c2:	de06                	sw	ra,60(sp)
200167c4:	c62a                	sw	a0,12(sp)
200167c6:	c82e                	sw	a1,16(sp)
200167c8:	0068                	add	a0,sp,12
200167ca:	d62a                	sw	a0,44(sp)
200167cc:	20017537          	lui	a0,0x20017
200167d0:	1d650513          	add	a0,a0,470 # 200171d6 <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt>
200167d4:	d82a                	sw	a0,48(sp)
200167d6:	080c                	add	a1,sp,16
200167d8:	da2e                	sw	a1,52(sp)
200167da:	dc2a                	sw	a0,56(sp)
200167dc:	20019537          	lui	a0,0x20019
200167e0:	d2c50513          	add	a0,a0,-724 # 20018d2c <.Lanon.f68147c55be82c2fe41eccee53b7e689.329>
200167e4:	ca2a                	sw	a0,20(sp)
200167e6:	4509                	li	a0,2
200167e8:	cc2a                	sw	a0,24(sp)
200167ea:	d202                	sw	zero,36(sp)
200167ec:	106c                	add	a1,sp,44
200167ee:	ce2e                	sw	a1,28(sp)
200167f0:	d02a                	sw	a0,32(sp)
200167f2:	0848                	add	a0,sp,20
200167f4:	85b2                	mv	a1,a2
200167f6:	fffff097          	auipc	ra,0xfffff
200167fa:	c68080e7          	jalr	-920(ra) # 2001545e <core::panicking::panic_fmt>
	...

20016800 <core::slice::index::slice_index_order_fail>:
20016800:	7139                	add	sp,sp,-64
20016802:	de06                	sw	ra,60(sp)
20016804:	c62a                	sw	a0,12(sp)
20016806:	c82e                	sw	a1,16(sp)
20016808:	0068                	add	a0,sp,12
2001680a:	d62a                	sw	a0,44(sp)
2001680c:	20017537          	lui	a0,0x20017
20016810:	1d650513          	add	a0,a0,470 # 200171d6 <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt>
20016814:	d82a                	sw	a0,48(sp)
20016816:	080c                	add	a1,sp,16
20016818:	da2e                	sw	a1,52(sp)
2001681a:	dc2a                	sw	a0,56(sp)
2001681c:	20019537          	lui	a0,0x20019
20016820:	d6050513          	add	a0,a0,-672 # 20018d60 <.Lanon.f68147c55be82c2fe41eccee53b7e689.332>
20016824:	ca2a                	sw	a0,20(sp)
20016826:	4509                	li	a0,2
20016828:	cc2a                	sw	a0,24(sp)
2001682a:	d202                	sw	zero,36(sp)
2001682c:	106c                	add	a1,sp,44
2001682e:	ce2e                	sw	a1,28(sp)
20016830:	d02a                	sw	a0,32(sp)
20016832:	0848                	add	a0,sp,20
20016834:	85b2                	mv	a1,a2
20016836:	fffff097          	auipc	ra,0xfffff
2001683a:	c28080e7          	jalr	-984(ra) # 2001545e <core::panicking::panic_fmt>
	...

20016840 <core::str::count::do_count_chars>:
20016840:	862a                	mv	a2,a0
20016842:	00350793          	add	a5,a0,3
20016846:	9bf1                	and	a5,a5,-4
20016848:	40a788b3          	sub	a7,a5,a0
2001684c:	1115e463          	bltu	a1,a7,20016954 <core::str::count::do_count_chars+0x114>
20016850:	41158833          	sub	a6,a1,a7
20016854:	00285293          	srl	t0,a6,0x2
20016858:	0e028e63          	beqz	t0,20016954 <core::str::count::do_count_chars+0x114>
2001685c:	00387593          	and	a1,a6,3
20016860:	4501                	li	a0,0
20016862:	00c78f63          	beq	a5,a2,20016880 <core::str::count::do_count_chars+0x40>
20016866:	40f607b3          	sub	a5,a2,a5
2001686a:	8732                	mv	a4,a2
2001686c:	00070683          	lb	a3,0(a4)
20016870:	fc06a693          	slti	a3,a3,-64
20016874:	0016c693          	xor	a3,a3,1
20016878:	9536                	add	a0,a0,a3
2001687a:	0785                	add	a5,a5,1 # 110001 <.Lline_table_start1+0xe0b8b>
2001687c:	0705                	add	a4,a4,1
2001687e:	f7fd                	bnez	a5,2001686c <core::str::count::do_count_chars+0x2c>
20016880:	011606b3          	add	a3,a2,a7
20016884:	4601                	li	a2,0
20016886:	cd91                	beqz	a1,200168a2 <core::str::count::do_count_chars+0x62>
20016888:	ffc87713          	and	a4,a6,-4
2001688c:	9736                	add	a4,a4,a3
2001688e:	00070783          	lb	a5,0(a4)
20016892:	fc07a793          	slti	a5,a5,-64
20016896:	0017c793          	xor	a5,a5,1
2001689a:	963e                	add	a2,a2,a5
2001689c:	15fd                	add	a1,a1,-1
2001689e:	0705                	add	a4,a4,1
200168a0:	f5fd                	bnez	a1,2001688e <core::str::count::do_count_chars+0x4e>
200168a2:	010105b7          	lui	a1,0x1010
200168a6:	10158e93          	add	t4,a1,257 # 1010101 <.Lline_table_start1+0xfe0c8b>
200168aa:	00ff0737          	lui	a4,0xff0
200168ae:	0ff70893          	add	a7,a4,255 # ff00ff <.Lline_table_start1+0xfc0c89>
200168b2:	6841                	lui	a6,0x10
200168b4:	0805                	add	a6,a6,1 # 10001 <.Lline_table_start0+0x3adf>
200168b6:	9532                	add	a0,a0,a2
200168b8:	a01d                	j	200168de <core::str::count::do_count_chars+0x9e>
200168ba:	00239693          	sll	a3,t2,0x2
200168be:	969a                	add	a3,a3,t1
200168c0:	407e02b3          	sub	t0,t3,t2
200168c4:	0033f593          	and	a1,t2,3
200168c8:	01167733          	and	a4,a2,a7
200168cc:	8221                	srl	a2,a2,0x8
200168ce:	01167633          	and	a2,a2,a7
200168d2:	963a                	add	a2,a2,a4
200168d4:	03060633          	mul	a2,a2,a6
200168d8:	8241                	srl	a2,a2,0x10
200168da:	9532                	add	a0,a0,a2
200168dc:	e9c9                	bnez	a1,2001696e <core::str::count::do_count_chars+0x12e>
200168de:	08028763          	beqz	t0,2001696c <core::str::count::do_count_chars+0x12c>
200168e2:	8e16                	mv	t3,t0
200168e4:	8336                	mv	t1,a3
200168e6:	0c000613          	li	a2,192
200168ea:	8396                	mv	t2,t0
200168ec:	00c2e463          	bltu	t0,a2,200168f4 <core::str::count::do_count_chars+0xb4>
200168f0:	0c000393          	li	t2,192
200168f4:	4601                	li	a2,0
200168f6:	0023d693          	srl	a3,t2,0x2
200168fa:	d2e1                	beqz	a3,200168ba <core::str::count::do_count_chars+0x7a>
200168fc:	0692                	sll	a3,a3,0x4
200168fe:	00d302b3          	add	t0,t1,a3
20016902:	871a                	mv	a4,t1
20016904:	431c                	lw	a5,0(a4)
20016906:	fff7c693          	not	a3,a5
2001690a:	829d                	srl	a3,a3,0x7
2001690c:	8399                	srl	a5,a5,0x6
2001690e:	434c                	lw	a1,4(a4)
20016910:	8edd                	or	a3,a3,a5
20016912:	01d6f6b3          	and	a3,a3,t4
20016916:	9636                	add	a2,a2,a3
20016918:	fff5c693          	not	a3,a1
2001691c:	829d                	srl	a3,a3,0x7
2001691e:	471c                	lw	a5,8(a4)
20016920:	8199                	srl	a1,a1,0x6
20016922:	8dd5                	or	a1,a1,a3
20016924:	01d5f5b3          	and	a1,a1,t4
20016928:	fff7c693          	not	a3,a5
2001692c:	829d                	srl	a3,a3,0x7
2001692e:	8399                	srl	a5,a5,0x6
20016930:	8edd                	or	a3,a3,a5
20016932:	475c                	lw	a5,12(a4)
20016934:	01d6f6b3          	and	a3,a3,t4
20016938:	95b6                	add	a1,a1,a3
2001693a:	95b2                	add	a1,a1,a2
2001693c:	fff7c613          	not	a2,a5
20016940:	821d                	srl	a2,a2,0x7
20016942:	8399                	srl	a5,a5,0x6
20016944:	8e5d                	or	a2,a2,a5
20016946:	01d67633          	and	a2,a2,t4
2001694a:	0741                	add	a4,a4,16
2001694c:	962e                	add	a2,a2,a1
2001694e:	fa571be3          	bne	a4,t0,20016904 <core::str::count::do_count_chars+0xc4>
20016952:	b7a5                	j	200168ba <core::str::count::do_count_chars+0x7a>
20016954:	4501                	li	a0,0
20016956:	c999                	beqz	a1,2001696c <core::str::count::do_count_chars+0x12c>
20016958:	00060683          	lb	a3,0(a2)
2001695c:	fc06a693          	slti	a3,a3,-64
20016960:	0016c693          	xor	a3,a3,1
20016964:	9536                	add	a0,a0,a3
20016966:	15fd                	add	a1,a1,-1
20016968:	0605                	add	a2,a2,1
2001696a:	f5fd                	bnez	a1,20016958 <core::str::count::do_count_chars+0x118>
2001696c:	8082                	ret
2001696e:	4601                	li	a2,0
20016970:	0fc3f593          	and	a1,t2,252
20016974:	058a                	sll	a1,a1,0x2
20016976:	932e                	add	t1,t1,a1
20016978:	0c0e3593          	sltiu	a1,t3,192
2001697c:	40b005b3          	neg	a1,a1
20016980:	00be75b3          	and	a1,t3,a1
20016984:	898d                	and	a1,a1,3
20016986:	00259693          	sll	a3,a1,0x2
2001698a:	00032583          	lw	a1,0(t1)
2001698e:	0311                	add	t1,t1,4
20016990:	fff5c713          	not	a4,a1
20016994:	831d                	srl	a4,a4,0x7
20016996:	8199                	srl	a1,a1,0x6
20016998:	8dd9                	or	a1,a1,a4
2001699a:	01d5f5b3          	and	a1,a1,t4
2001699e:	16f1                	add	a3,a3,-4
200169a0:	962e                	add	a2,a2,a1
200169a2:	f6e5                	bnez	a3,2001698a <core::str::count::do_count_chars+0x14a>
200169a4:	011675b3          	and	a1,a2,a7
200169a8:	8221                	srl	a2,a2,0x8
200169aa:	01167633          	and	a2,a2,a7
200169ae:	95b2                	add	a1,a1,a2
200169b0:	030585b3          	mul	a1,a1,a6
200169b4:	81c1                	srl	a1,a1,0x10
200169b6:	952e                	add	a0,a0,a1
200169b8:	8082                	ret

200169ba <core::str::slice_error_fail>:
200169ba:	1141                	add	sp,sp,-16
200169bc:	c606                	sw	ra,12(sp)
200169be:	00000097          	auipc	ra,0x0
200169c2:	00a080e7          	jalr	10(ra) # 200169c8 <core::str::slice_error_fail_rt>
	...

200169c8 <core::str::slice_error_fail_rt>:
200169c8:	7159                	add	sp,sp,-112
200169ca:	d686                	sw	ra,108(sp)
200169cc:	c232                	sw	a2,4(sp)
200169ce:	10100793          	li	a5,257
200169d2:	c436                	sw	a3,8(sp)
200169d4:	04f5eb63          	bltu	a1,a5,20016a2a <core::str::slice_error_fail_rt+0x62>
200169d8:	10050883          	lb	a7,256(a0)
200169dc:	fbf00813          	li	a6,-65
200169e0:	10000293          	li	t0,256
200169e4:	03184263          	blt	a6,a7,20016a08 <core::str::slice_error_fail_rt+0x40>
200169e8:	0ff50883          	lb	a7,255(a0)
200169ec:	0ff00293          	li	t0,255
200169f0:	01184c63          	blt	a6,a7,20016a08 <core::str::slice_error_fail_rt+0x40>
200169f4:	0fe50803          	lb	a6,254(a0)
200169f8:	fbf00893          	li	a7,-65
200169fc:	0fe00293          	li	t0,254
20016a00:	0108c463          	blt	a7,a6,20016a08 <core::str::slice_error_fail_rt+0x40>
20016a04:	0fd00293          	li	t0,253
20016a08:	02b2f963          	bgeu	t0,a1,20016a3a <core::str::slice_error_fail_rt+0x72>
20016a0c:	005507b3          	add	a5,a0,t0
20016a10:	00078803          	lb	a6,0(a5)
20016a14:	fbf00793          	li	a5,-65
20016a18:	0307c363          	blt	a5,a6,20016a3e <core::str::slice_error_fail_rt+0x76>
20016a1c:	4601                	li	a2,0
20016a1e:	8696                	mv	a3,t0
20016a20:	00000097          	auipc	ra,0x0
20016a24:	f9a080e7          	jalr	-102(ra) # 200169ba <core::str::slice_error_fail>
20016a28:	0000                	unimp
20016a2a:	4801                	li	a6,0
20016a2c:	c62a                	sw	a0,12(sp)
20016a2e:	c82e                	sw	a1,16(sp)
20016a30:	200197b7          	lui	a5,0x20019
20016a34:	af878893          	add	a7,a5,-1288 # 20018af8 <.Lanon.f68147c55be82c2fe41eccee53b7e689.92>
20016a38:	a035                	j	20016a64 <core::str::slice_error_fail_rt+0x9c>
20016a3a:	feb291e3          	bne	t0,a1,20016a1c <core::str::slice_error_fail_rt+0x54>
20016a3e:	c62a                	sw	a0,12(sp)
20016a40:	c816                	sw	t0,16(sp)
20016a42:	00b2b833          	sltu	a6,t0,a1
20016a46:	00b2e763          	bltu	t0,a1,20016a54 <core::str::slice_error_fail_rt+0x8c>
20016a4a:	200197b7          	lui	a5,0x20019
20016a4e:	af878893          	add	a7,a5,-1288 # 20018af8 <.Lanon.f68147c55be82c2fe41eccee53b7e689.92>
20016a52:	a029                	j	20016a5c <core::str::slice_error_fail_rt+0x94>
20016a54:	200197b7          	lui	a5,0x20019
20016a58:	d7078893          	add	a7,a5,-656 # 20018d70 <.Lanon.f68147c55be82c2fe41eccee53b7e689.374>
20016a5c:	410007b3          	neg	a5,a6
20016a60:	0057f813          	and	a6,a5,5
20016a64:	ca46                	sw	a7,20(sp)
20016a66:	00c5b8b3          	sltu	a7,a1,a2
20016a6a:	00d5b7b3          	sltu	a5,a1,a3
20016a6e:	00f8e7b3          	or	a5,a7,a5
20016a72:	cc42                	sw	a6,24(sp)
20016a74:	cf8d                	beqz	a5,20016aae <core::str::slice_error_fail_rt+0xe6>
20016a76:	00c5e363          	bltu	a1,a2,20016a7c <core::str::slice_error_fail_rt+0xb4>
20016a7a:	8636                	mv	a2,a3
20016a7c:	d232                	sw	a2,36(sp)
20016a7e:	1048                	add	a0,sp,36
20016a80:	c2aa                	sw	a0,68(sp)
20016a82:	20017537          	lui	a0,0x20017
20016a86:	1d650513          	add	a0,a0,470 # 200171d6 <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt>
20016a8a:	c4aa                	sw	a0,72(sp)
20016a8c:	0068                	add	a0,sp,12
20016a8e:	c6aa                	sw	a0,76(sp)
20016a90:	20017537          	lui	a0,0x20017
20016a94:	1ec50513          	add	a0,a0,492 # 200171ec <<&T as core::fmt::Display>::fmt>
20016a98:	c8aa                	sw	a0,80(sp)
20016a9a:	084c                	add	a1,sp,20
20016a9c:	caae                	sw	a1,84(sp)
20016a9e:	ccaa                	sw	a0,88(sp)
20016aa0:	20019537          	lui	a0,0x20019
20016aa4:	e1c50513          	add	a0,a0,-484 # 20018e1c <.Lanon.f68147c55be82c2fe41eccee53b7e689.386>
20016aa8:	d62a                	sw	a0,44(sp)
20016aaa:	450d                	li	a0,3
20016aac:	a2e9                	j	20016c76 <core::str::slice_error_fail_rt+0x2ae>
20016aae:	02c6fd63          	bgeu	a3,a2,20016ae8 <core::str::slice_error_fail_rt+0x120>
20016ab2:	0048                	add	a0,sp,4
20016ab4:	c2aa                	sw	a0,68(sp)
20016ab6:	20017537          	lui	a0,0x20017
20016aba:	1d650513          	add	a0,a0,470 # 200171d6 <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt>
20016abe:	c4aa                	sw	a0,72(sp)
20016ac0:	002c                	add	a1,sp,8
20016ac2:	c6ae                	sw	a1,76(sp)
20016ac4:	c8aa                	sw	a0,80(sp)
20016ac6:	0068                	add	a0,sp,12
20016ac8:	caaa                	sw	a0,84(sp)
20016aca:	20017537          	lui	a0,0x20017
20016ace:	1ec50513          	add	a0,a0,492 # 200171ec <<&T as core::fmt::Display>::fmt>
20016ad2:	ccaa                	sw	a0,88(sp)
20016ad4:	084c                	add	a1,sp,20
20016ad6:	ceae                	sw	a1,92(sp)
20016ad8:	d0aa                	sw	a0,96(sp)
20016ada:	20019537          	lui	a0,0x20019
20016ade:	d8450513          	add	a0,a0,-636 # 20018d84 <.Lanon.f68147c55be82c2fe41eccee53b7e689.379>
20016ae2:	d62a                	sw	a0,44(sp)
20016ae4:	4511                	li	a0,4
20016ae6:	aa41                	j	20016c76 <core::str::slice_error_fail_rt+0x2ae>
20016ae8:	00c03833          	snez	a6,a2
20016aec:	00b637b3          	sltu	a5,a2,a1
20016af0:	00f877b3          	and	a5,a6,a5
20016af4:	cb89                	beqz	a5,20016b06 <core::str::slice_error_fail_rt+0x13e>
20016af6:	00c507b3          	add	a5,a0,a2
20016afa:	00078803          	lb	a6,0(a5)
20016afe:	fc000793          	li	a5,-64
20016b02:	00f84363          	blt	a6,a5,20016b08 <core::str::slice_error_fail_rt+0x140>
20016b06:	8636                	mv	a2,a3
20016b08:	ce32                	sw	a2,28(sp)
20016b0a:	86ae                	mv	a3,a1
20016b0c:	04b67863          	bgeu	a2,a1,20016b5c <core::str::slice_error_fail_rt+0x194>
20016b10:	ffd60693          	add	a3,a2,-3
20016b14:	00d637b3          	sltu	a5,a2,a3
20016b18:	17fd                	add	a5,a5,-1
20016b1a:	00d7f833          	and	a6,a5,a3
20016b1e:	00160793          	add	a5,a2,1
20016b22:	0107fd63          	bgeu	a5,a6,20016b3c <core::str::slice_error_fail_rt+0x174>
20016b26:	20019537          	lui	a0,0x20019
20016b2a:	e5050613          	add	a2,a0,-432 # 20018e50 <.Lanon.f68147c55be82c2fe41eccee53b7e689.388>
20016b2e:	8542                	mv	a0,a6
20016b30:	85be                	mv	a1,a5
20016b32:	00000097          	auipc	ra,0x0
20016b36:	cce080e7          	jalr	-818(ra) # 20016800 <core::slice::index::slice_index_order_fail>
20016b3a:	0000                	unimp
20016b3c:	010506b3          	add	a3,a0,a6
20016b40:	97aa                	add	a5,a5,a0
20016b42:	8f95                	sub	a5,a5,a3
20016b44:	962a                	add	a2,a2,a0
20016b46:	fc000893          	li	a7,-64
20016b4a:	c799                	beqz	a5,20016b58 <core::str::slice_error_fail_rt+0x190>
20016b4c:	00060683          	lb	a3,0(a2)
20016b50:	17fd                	add	a5,a5,-1
20016b52:	167d                	add	a2,a2,-1
20016b54:	ff16cbe3          	blt	a3,a7,20016b4a <core::str::slice_error_fail_rt+0x182>
20016b58:	010786b3          	add	a3,a5,a6
20016b5c:	ce81                	beqz	a3,20016b74 <core::str::slice_error_fail_rt+0x1ac>
20016b5e:	04b6f263          	bgeu	a3,a1,20016ba2 <core::str::slice_error_fail_rt+0x1da>
20016b62:	00d50633          	add	a2,a0,a3
20016b66:	00060603          	lb	a2,0(a2)
20016b6a:	fbf00793          	li	a5,-65
20016b6e:	02c7dc63          	bge	a5,a2,20016ba6 <core::str::slice_error_fail_rt+0x1de>
20016b72:	8d95                	sub	a1,a1,a3
20016b74:	ed89                	bnez	a1,20016b8e <core::str::slice_error_fail_rt+0x1c6>
20016b76:	20019537          	lui	a0,0x20019
20016b7a:	af850513          	add	a0,a0,-1288 # 20018af8 <.Lanon.f68147c55be82c2fe41eccee53b7e689.92>
20016b7e:	02b00593          	li	a1,43
20016b82:	863a                	mv	a2,a4
20016b84:	fffff097          	auipc	ra,0xfffff
20016b88:	908080e7          	jalr	-1784(ra) # 2001548c <core::panicking::panic>
20016b8c:	0000                	unimp
20016b8e:	9536                	add	a0,a0,a3
20016b90:	00050603          	lb	a2,0(a0)
20016b94:	0ff67593          	zext.b	a1,a2
20016b98:	00064e63          	bltz	a2,20016bb4 <core::str::slice_error_fail_rt+0x1ec>
20016b9c:	d02e                	sw	a1,32(sp)
20016b9e:	4585                	li	a1,1
20016ba0:	a059                	j	20016c26 <core::str::slice_error_fail_rt+0x25e>
20016ba2:	fcd588e3          	beq	a1,a3,20016b72 <core::str::slice_error_fail_rt+0x1aa>
20016ba6:	8636                	mv	a2,a3
20016ba8:	86ae                	mv	a3,a1
20016baa:	00000097          	auipc	ra,0x0
20016bae:	e10080e7          	jalr	-496(ra) # 200169ba <core::str::slice_error_fail>
20016bb2:	0000                	unimp
20016bb4:	00154783          	lbu	a5,1(a0)
20016bb8:	01f5f613          	and	a2,a1,31
20016bbc:	0df00813          	li	a6,223
20016bc0:	03f7f793          	and	a5,a5,63
20016bc4:	02b87c63          	bgeu	a6,a1,20016bfc <core::str::slice_error_fail_rt+0x234>
20016bc8:	00254803          	lbu	a6,2(a0)
20016bcc:	00679893          	sll	a7,a5,0x6
20016bd0:	03f87793          	and	a5,a6,63
20016bd4:	0f000813          	li	a6,240
20016bd8:	00f8e7b3          	or	a5,a7,a5
20016bdc:	0305e463          	bltu	a1,a6,20016c04 <core::str::slice_error_fail_rt+0x23c>
20016be0:	00354503          	lbu	a0,3(a0)
20016be4:	0676                	sll	a2,a2,0x1d
20016be6:	822d                	srl	a2,a2,0xb
20016be8:	079a                	sll	a5,a5,0x6
20016bea:	03f57513          	and	a0,a0,63
20016bee:	8d5d                	or	a0,a0,a5
20016bf0:	8d51                	or	a0,a0,a2
20016bf2:	001105b7          	lui	a1,0x110
20016bf6:	f8b500e3          	beq	a0,a1,20016b76 <core::str::slice_error_fail_rt+0x1ae>
20016bfa:	a801                	j	20016c0a <core::str::slice_error_fail_rt+0x242>
20016bfc:	00661513          	sll	a0,a2,0x6
20016c00:	8d5d                	or	a0,a0,a5
20016c02:	a021                	j	20016c0a <core::str::slice_error_fail_rt+0x242>
20016c04:	00c61513          	sll	a0,a2,0xc
20016c08:	8d5d                	or	a0,a0,a5
20016c0a:	d02a                	sw	a0,32(sp)
20016c0c:	08000613          	li	a2,128
20016c10:	4585                	li	a1,1
20016c12:	00c56a63          	bltu	a0,a2,20016c26 <core::str::slice_error_fail_rt+0x25e>
20016c16:	00b55613          	srl	a2,a0,0xb
20016c1a:	4589                	li	a1,2
20016c1c:	c609                	beqz	a2,20016c26 <core::str::slice_error_fail_rt+0x25e>
20016c1e:	8141                	srl	a0,a0,0x10
20016c20:	00a035b3          	snez	a1,a0
20016c24:	058d                	add	a1,a1,3 # 110003 <.Lline_table_start1+0xe0b8d>
20016c26:	95b6                	add	a1,a1,a3
20016c28:	d236                	sw	a3,36(sp)
20016c2a:	d42e                	sw	a1,40(sp)
20016c2c:	0868                	add	a0,sp,28
20016c2e:	c2aa                	sw	a0,68(sp)
20016c30:	20017537          	lui	a0,0x20017
20016c34:	1d650513          	add	a0,a0,470 # 200171d6 <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt>
20016c38:	c4aa                	sw	a0,72(sp)
20016c3a:	1008                	add	a0,sp,32
20016c3c:	c6aa                	sw	a0,76(sp)
20016c3e:	20016537          	lui	a0,0x20016
20016c42:	65a50513          	add	a0,a0,1626 # 2001665a <<char as core::fmt::Debug>::fmt>
20016c46:	c8aa                	sw	a0,80(sp)
20016c48:	1048                	add	a0,sp,36
20016c4a:	caaa                	sw	a0,84(sp)
20016c4c:	20015537          	lui	a0,0x20015
20016c50:	1a250513          	add	a0,a0,418 # 200151a2 <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt>
20016c54:	ccaa                	sw	a0,88(sp)
20016c56:	0068                	add	a0,sp,12
20016c58:	ceaa                	sw	a0,92(sp)
20016c5a:	20017537          	lui	a0,0x20017
20016c5e:	1ec50513          	add	a0,a0,492 # 200171ec <<&T as core::fmt::Display>::fmt>
20016c62:	d0aa                	sw	a0,96(sp)
20016c64:	084c                	add	a1,sp,20
20016c66:	d2ae                	sw	a1,100(sp)
20016c68:	d4aa                	sw	a0,104(sp)
20016c6a:	20019537          	lui	a0,0x20019
20016c6e:	ddc50513          	add	a0,a0,-548 # 20018ddc <.Lanon.f68147c55be82c2fe41eccee53b7e689.384>
20016c72:	d62a                	sw	a0,44(sp)
20016c74:	4515                	li	a0,5
20016c76:	d82a                	sw	a0,48(sp)
20016c78:	de02                	sw	zero,60(sp)
20016c7a:	00cc                	add	a1,sp,68
20016c7c:	da2e                	sw	a1,52(sp)
20016c7e:	dc2a                	sw	a0,56(sp)
20016c80:	1068                	add	a0,sp,44
20016c82:	85ba                	mv	a1,a4
20016c84:	ffffe097          	auipc	ra,0xffffe
20016c88:	7da080e7          	jalr	2010(ra) # 2001545e <core::panicking::panic_fmt>
	...

20016c8e <core::unicode::printable::check>:
20016c8e:	1141                	add	sp,sp,-16
20016c90:	c606                	sw	ra,12(sp)
20016c92:	01051293          	sll	t0,a0,0x10
20016c96:	ce29                	beqz	a2,20016cf0 <core::unicode::printable::check+0x62>
20016c98:	88aa                	mv	a7,a0
20016c9a:	4501                	li	a0,0
20016c9c:	0182d313          	srl	t1,t0,0x18
20016ca0:	0606                	sll	a2,a2,0x1
20016ca2:	00c583b3          	add	t2,a1,a2
20016ca6:	0ff8fe13          	zext.b	t3,a7
20016caa:	a811                	j	20016cbe <core::unicode::printable::check+0x30>
20016cac:	01d33533          	sltu	a0,t1,t4
20016cb0:	0075c633          	xor	a2,a1,t2
20016cb4:	00163613          	seqz	a2,a2
20016cb8:	8e49                	or	a2,a2,a0
20016cba:	8546                	mv	a0,a7
20016cbc:	ea15                	bnez	a2,20016cf0 <core::unicode::printable::check+0x62>
20016cbe:	0005ce83          	lbu	t4,0(a1)
20016cc2:	0015c603          	lbu	a2,1(a1)
20016cc6:	0589                	add	a1,a1,2
20016cc8:	00c508b3          	add	a7,a0,a2
20016ccc:	fe6e90e3          	bne	t4,t1,20016cac <core::unicode::printable::check+0x1e>
20016cd0:	0aa8e163          	bltu	a7,a0,20016d72 <core::unicode::printable::check+0xe4>
20016cd4:	0b176963          	bltu	a4,a7,20016d86 <core::unicode::printable::check+0xf8>
20016cd8:	9536                	add	a0,a0,a3
20016cda:	ca01                	beqz	a2,20016cea <core::unicode::printable::check+0x5c>
20016cdc:	00054e83          	lbu	t4,0(a0)
20016ce0:	0505                	add	a0,a0,1
20016ce2:	167d                	add	a2,a2,-1
20016ce4:	ffce9be3          	bne	t4,t3,20016cda <core::unicode::printable::check+0x4c>
20016ce8:	a8a1                	j	20016d40 <core::unicode::printable::check+0xb2>
20016cea:	8546                	mv	a0,a7
20016cec:	fc7599e3          	bne	a1,t2,20016cbe <core::unicode::printable::check+0x30>
20016cf0:	04080d63          	beqz	a6,20016d4a <core::unicode::printable::check+0xbc>
20016cf4:	983e                	add	a6,a6,a5
20016cf6:	0102d593          	srl	a1,t0,0x10
20016cfa:	4505                	li	a0,1
20016cfc:	0007c603          	lbu	a2,0(a5)
20016d00:	01861693          	sll	a3,a2,0x18
20016d04:	00178713          	add	a4,a5,1
20016d08:	0006c763          	bltz	a3,20016d16 <core::unicode::printable::check+0x88>
20016d0c:	87ba                	mv	a5,a4
20016d0e:	8d91                	sub	a1,a1,a2
20016d10:	0205d063          	bgez	a1,20016d30 <core::unicode::printable::check+0xa2>
20016d14:	a015                	j	20016d38 <core::unicode::printable::check+0xaa>
20016d16:	03070f63          	beq	a4,a6,20016d54 <core::unicode::printable::check+0xc6>
20016d1a:	86e1                	sra	a3,a3,0x18
20016d1c:	0017c603          	lbu	a2,1(a5)
20016d20:	0789                	add	a5,a5,2
20016d22:	07f6f693          	and	a3,a3,127
20016d26:	06a2                	sll	a3,a3,0x8
20016d28:	8e55                	or	a2,a2,a3
20016d2a:	8d91                	sub	a1,a1,a2
20016d2c:	0005c663          	bltz	a1,20016d38 <core::unicode::printable::check+0xaa>
20016d30:	00154513          	xor	a0,a0,1
20016d34:	fd0794e3          	bne	a5,a6,20016cfc <core::unicode::printable::check+0x6e>
20016d38:	8905                	and	a0,a0,1
20016d3a:	40b2                	lw	ra,12(sp)
20016d3c:	0141                	add	sp,sp,16
20016d3e:	8082                	ret
20016d40:	00107513          	and	a0,zero,1
20016d44:	40b2                	lw	ra,12(sp)
20016d46:	0141                	add	sp,sp,16
20016d48:	8082                	ret
20016d4a:	4505                	li	a0,1
20016d4c:	8905                	and	a0,a0,1
20016d4e:	40b2                	lw	ra,12(sp)
20016d50:	0141                	add	sp,sp,16
20016d52:	8082                	ret
20016d54:	20019537          	lui	a0,0x20019
20016d58:	af850513          	add	a0,a0,-1288 # 20018af8 <.Lanon.f68147c55be82c2fe41eccee53b7e689.92>
20016d5c:	200195b7          	lui	a1,0x20019
20016d60:	e8858613          	add	a2,a1,-376 # 20018e88 <.Lanon.f68147c55be82c2fe41eccee53b7e689.404>
20016d64:	02b00593          	li	a1,43
20016d68:	ffffe097          	auipc	ra,0xffffe
20016d6c:	724080e7          	jalr	1828(ra) # 2001548c <core::panicking::panic>
20016d70:	0000                	unimp
20016d72:	200195b7          	lui	a1,0x20019
20016d76:	e9858613          	add	a2,a1,-360 # 20018e98 <.Lanon.f68147c55be82c2fe41eccee53b7e689.405>
20016d7a:	85c6                	mv	a1,a7
20016d7c:	00000097          	auipc	ra,0x0
20016d80:	a84080e7          	jalr	-1404(ra) # 20016800 <core::slice::index::slice_index_order_fail>
20016d84:	0000                	unimp
20016d86:	20019537          	lui	a0,0x20019
20016d8a:	e9850613          	add	a2,a0,-360 # 20018e98 <.Lanon.f68147c55be82c2fe41eccee53b7e689.405>
20016d8e:	8546                	mv	a0,a7
20016d90:	85ba                	mv	a1,a4
20016d92:	00000097          	auipc	ra,0x0
20016d96:	a2e080e7          	jalr	-1490(ra) # 200167c0 <core::slice::index::slice_end_index_len_fail>
	...

20016d9c <core::unicode::printable::is_printable>:
20016d9c:	02000593          	li	a1,32
20016da0:	00b57463          	bgeu	a0,a1,20016da8 <core::unicode::printable::is_printable+0xc>
20016da4:	4501                	li	a0,0
20016da6:	8082                	ret
20016da8:	07f00613          	li	a2,127
20016dac:	4585                	li	a1,1
20016dae:	00c57463          	bgeu	a0,a2,20016db6 <core::unicode::printable::is_printable+0x1a>
20016db2:	852e                	mv	a0,a1
20016db4:	8082                	ret
20016db6:	01055593          	srl	a1,a0,0x10
20016dba:	e59d                	bnez	a1,20016de8 <core::unicode::printable::is_printable+0x4c>
20016dbc:	200195b7          	lui	a1,0x20019
20016dc0:	18658593          	add	a1,a1,390 # 20019186 <.Lanon.f68147c55be82c2fe41eccee53b7e689.409>
20016dc4:	20019637          	lui	a2,0x20019
20016dc8:	1d660693          	add	a3,a2,470 # 200191d6 <.Lanon.f68147c55be82c2fe41eccee53b7e689.410>
20016dcc:	20019637          	lui	a2,0x20019
20016dd0:	2f560793          	add	a5,a2,757 # 200192f5 <.Lanon.f68147c55be82c2fe41eccee53b7e689.411>
20016dd4:	02800613          	li	a2,40
20016dd8:	11f00713          	li	a4,287
20016ddc:	12f00813          	li	a6,303
20016de0:	00000317          	auipc	t1,0x0
20016de4:	eae30067          	jr	-338(t1) # 20016c8e <core::unicode::printable::check>
20016de8:	01155593          	srl	a1,a0,0x11
20016dec:	e59d                	bnez	a1,20016e1a <core::unicode::printable::is_printable+0x7e>
20016dee:	200195b7          	lui	a1,0x20019
20016df2:	ea858593          	add	a1,a1,-344 # 20018ea8 <.Lanon.f68147c55be82c2fe41eccee53b7e689.406>
20016df6:	20019637          	lui	a2,0x20019
20016dfa:	f0060693          	add	a3,a2,-256 # 20018f00 <.Lanon.f68147c55be82c2fe41eccee53b7e689.407>
20016dfe:	20019637          	lui	a2,0x20019
20016e02:	fc460793          	add	a5,a2,-60 # 20018fc4 <.Lanon.f68147c55be82c2fe41eccee53b7e689.408>
20016e06:	02c00613          	li	a2,44
20016e0a:	0c400713          	li	a4,196
20016e0e:	1c200813          	li	a6,450
20016e12:	00000317          	auipc	t1,0x0
20016e16:	e7c30067          	jr	-388(t1) # 20016c8e <core::unicode::printable::check>
20016e1a:	00555593          	srl	a1,a0,0x5
20016e1e:	6605                	lui	a2,0x1
20016e20:	53760693          	add	a3,a2,1335 # 1537 <.Lline_table_start0+0x4e>
20016e24:	8db5                	xor	a1,a1,a3
20016e26:	0015b593          	seqz	a1,a1
20016e2a:	fffd56b7          	lui	a3,0xfffd5
20016e2e:	8c668693          	add	a3,a3,-1850 # fffd48c6 <_sstack+0x7ffd08c6>
20016e32:	96aa                	add	a3,a3,a0
20016e34:	0066b693          	sltiu	a3,a3,6
20016e38:	8dd5                	or	a1,a1,a3
20016e3a:	00155693          	srl	a3,a0,0x1
20016e3e:	6759                	lui	a4,0x16
20016e40:	c0f70713          	add	a4,a4,-1009 # 15c0f <.Lline_table_start0+0x96ed>
20016e44:	8eb9                	xor	a3,a3,a4
20016e46:	0016b693          	seqz	a3,a3
20016e4a:	fffd3737          	lui	a4,0xfffd3
20016e4e:	15e70713          	add	a4,a4,350 # fffd315e <_sstack+0x7ffcf15e>
20016e52:	972a                	add	a4,a4,a0
20016e54:	00e73713          	sltiu	a4,a4,14
20016e58:	8ed9                	or	a3,a3,a4
20016e5a:	8ecd                	or	a3,a3,a1
20016e5c:	fffd15b7          	lui	a1,0xfffd1
20016e60:	41f58593          	add	a1,a1,1055 # fffd141f <_sstack+0x7ffcd41f>
20016e64:	95aa                	add	a1,a1,a0
20016e66:	c1f60613          	add	a2,a2,-993
20016e6a:	00c5b633          	sltu	a2,a1,a2
20016e6e:	fffd05b7          	lui	a1,0xfffd0
20016e72:	5e258713          	add	a4,a1,1506 # fffd05e2 <_sstack+0x7ffcc5e2>
20016e76:	972a                	add	a4,a4,a0
20016e78:	5e273713          	sltiu	a4,a4,1506
20016e7c:	8e59                	or	a2,a2,a4
20016e7e:	fffcf737          	lui	a4,0xfffcf
20016e82:	cb570713          	add	a4,a4,-843 # fffcecb5 <_sstack+0x7ffcacb5>
20016e86:	972a                	add	a4,a4,a0
20016e88:	00573713          	sltiu	a4,a4,5
20016e8c:	8e59                	or	a2,a2,a4
20016e8e:	8e55                	or	a2,a2,a3
20016e90:	fffce6b7          	lui	a3,0xfffce
20016e94:	c5068693          	add	a3,a3,-944 # fffcdc50 <_sstack+0x7ffc9c50>
20016e98:	96aa                	add	a3,a3,a0
20016e9a:	000ae737          	lui	a4,0xae
20016e9e:	d5070713          	add	a4,a4,-688 # add50 <.Lline_table_start1+0x7e8da>
20016ea2:	00e6b6b3          	sltu	a3,a3,a4
20016ea6:	8e55                	or	a2,a2,a3
20016ea8:	8a05                	and	a2,a2,1
20016eaa:	c219                	beqz	a2,20016eb0 <core::unicode::printable::is_printable+0x114>
20016eac:	4501                	li	a0,0
20016eae:	8082                	ret
20016eb0:	ffef0637          	lui	a2,0xffef0
20016eb4:	9532                	add	a0,a0,a2
20016eb6:	1f058593          	add	a1,a1,496
20016eba:	00b535b3          	sltu	a1,a0,a1
20016ebe:	852e                	mv	a0,a1
20016ec0:	8082                	ret

20016ec2 <core::fmt::num::<impl core::fmt::LowerHex for i32>::fmt>:
20016ec2:	7175                	add	sp,sp,-144
20016ec4:	c706                	sw	ra,140(sp)
20016ec6:	4108                	lw	a0,0(a0)
20016ec8:	882e                	mv	a6,a1
20016eca:	4781                	li	a5,0
20016ecc:	0170                	add	a2,sp,140
20016ece:	48a9                	li	a7,10
20016ed0:	a811                	j	20016ee4 <core::fmt::num::<impl core::fmt::LowerHex for i32>::fmt+0x22>
20016ed2:	fff60713          	add	a4,a2,-1 # ffeeffff <_sstack+0x7feebfff>
20016ed6:	8111                	srl	a0,a0,0x4
20016ed8:	95b6                	add	a1,a1,a3
20016eda:	feb60fa3          	sb	a1,-1(a2)
20016ede:	0785                	add	a5,a5,1
20016ee0:	863a                	mv	a2,a4
20016ee2:	c911                	beqz	a0,20016ef6 <core::fmt::num::<impl core::fmt::LowerHex for i32>::fmt+0x34>
20016ee4:	00f57693          	and	a3,a0,15
20016ee8:	03000593          	li	a1,48
20016eec:	ff16e3e3          	bltu	a3,a7,20016ed2 <core::fmt::num::<impl core::fmt::LowerHex for i32>::fmt+0x10>
20016ef0:	05700593          	li	a1,87
20016ef4:	bff9                	j	20016ed2 <core::fmt::num::<impl core::fmt::LowerHex for i32>::fmt+0x10>
20016ef6:	08000593          	li	a1,128
20016efa:	40f58533          	sub	a0,a1,a5
20016efe:	02a5e063          	bltu	a1,a0,20016f1e <core::fmt::num::<impl core::fmt::LowerHex for i32>::fmt+0x5c>
20016f02:	20019537          	lui	a0,0x20019
20016f06:	bc850613          	add	a2,a0,-1080 # 20018bc8 <.Lanon.f68147c55be82c2fe41eccee53b7e689.304>
20016f0a:	4585                	li	a1,1
20016f0c:	4689                	li	a3,2
20016f0e:	8542                	mv	a0,a6
20016f10:	fffff097          	auipc	ra,0xfffff
20016f14:	c74080e7          	jalr	-908(ra) # 20015b84 <core::fmt::Formatter::pad_integral>
20016f18:	40ba                	lw	ra,140(sp)
20016f1a:	6149                	add	sp,sp,144
20016f1c:	8082                	ret
20016f1e:	200195b7          	lui	a1,0x20019
20016f22:	be858613          	add	a2,a1,-1048 # 20018be8 <.Lanon.f68147c55be82c2fe41eccee53b7e689.306>
20016f26:	08000593          	li	a1,128
20016f2a:	00000097          	auipc	ra,0x0
20016f2e:	856080e7          	jalr	-1962(ra) # 20016780 <core::slice::index::slice_start_index_len_fail>
	...

20016f34 <core::fmt::num::<impl core::fmt::UpperHex for i32>::fmt>:
20016f34:	7175                	add	sp,sp,-144
20016f36:	c706                	sw	ra,140(sp)
20016f38:	4108                	lw	a0,0(a0)
20016f3a:	882e                	mv	a6,a1
20016f3c:	4781                	li	a5,0
20016f3e:	0170                	add	a2,sp,140
20016f40:	48a9                	li	a7,10
20016f42:	a811                	j	20016f56 <core::fmt::num::<impl core::fmt::UpperHex for i32>::fmt+0x22>
20016f44:	fff60713          	add	a4,a2,-1
20016f48:	8111                	srl	a0,a0,0x4
20016f4a:	95b6                	add	a1,a1,a3
20016f4c:	feb60fa3          	sb	a1,-1(a2)
20016f50:	0785                	add	a5,a5,1
20016f52:	863a                	mv	a2,a4
20016f54:	c911                	beqz	a0,20016f68 <core::fmt::num::<impl core::fmt::UpperHex for i32>::fmt+0x34>
20016f56:	00f57693          	and	a3,a0,15
20016f5a:	03000593          	li	a1,48
20016f5e:	ff16e3e3          	bltu	a3,a7,20016f44 <core::fmt::num::<impl core::fmt::UpperHex for i32>::fmt+0x10>
20016f62:	03700593          	li	a1,55
20016f66:	bff9                	j	20016f44 <core::fmt::num::<impl core::fmt::UpperHex for i32>::fmt+0x10>
20016f68:	08000593          	li	a1,128
20016f6c:	40f58533          	sub	a0,a1,a5
20016f70:	02a5e063          	bltu	a1,a0,20016f90 <core::fmt::num::<impl core::fmt::UpperHex for i32>::fmt+0x5c>
20016f74:	20019537          	lui	a0,0x20019
20016f78:	bc850613          	add	a2,a0,-1080 # 20018bc8 <.Lanon.f68147c55be82c2fe41eccee53b7e689.304>
20016f7c:	4585                	li	a1,1
20016f7e:	4689                	li	a3,2
20016f80:	8542                	mv	a0,a6
20016f82:	fffff097          	auipc	ra,0xfffff
20016f86:	c02080e7          	jalr	-1022(ra) # 20015b84 <core::fmt::Formatter::pad_integral>
20016f8a:	40ba                	lw	ra,140(sp)
20016f8c:	6149                	add	sp,sp,144
20016f8e:	8082                	ret
20016f90:	200195b7          	lui	a1,0x20019
20016f94:	be858613          	add	a2,a1,-1048 # 20018be8 <.Lanon.f68147c55be82c2fe41eccee53b7e689.306>
20016f98:	08000593          	li	a1,128
20016f9c:	fffff097          	auipc	ra,0xfffff
20016fa0:	7e4080e7          	jalr	2020(ra) # 20016780 <core::slice::index::slice_start_index_len_fail>
	...

20016fa6 <core::fmt::num::<impl core::fmt::Debug for u32>::fmt>:
20016fa6:	7175                	add	sp,sp,-144
20016fa8:	c706                	sw	ra,140(sp)
20016faa:	882e                	mv	a6,a1
20016fac:	4dcc                	lw	a1,28(a1)
20016fae:	0105f613          	and	a2,a1,16
20016fb2:	ee09                	bnez	a2,20016fcc <core::fmt::num::<impl core::fmt::Debug for u32>::fmt+0x26>
20016fb4:	0205f593          	and	a1,a1,32
20016fb8:	e1a9                	bnez	a1,20016ffa <core::fmt::num::<impl core::fmt::Debug for u32>::fmt+0x54>
20016fba:	4108                	lw	a0,0(a0)
20016fbc:	4585                	li	a1,1
20016fbe:	8642                	mv	a2,a6
20016fc0:	40ba                	lw	ra,140(sp)
20016fc2:	6149                	add	sp,sp,144
20016fc4:	00000317          	auipc	t1,0x0
20016fc8:	0a230067          	jr	162(t1) # 20017066 <core::fmt::num::imp::fmt_u32>
20016fcc:	4108                	lw	a0,0(a0)
20016fce:	4781                	li	a5,0
20016fd0:	0170                	add	a2,sp,140
20016fd2:	48a9                	li	a7,10
20016fd4:	a811                	j	20016fe8 <core::fmt::num::<impl core::fmt::Debug for u32>::fmt+0x42>
20016fd6:	fff60713          	add	a4,a2,-1
20016fda:	8111                	srl	a0,a0,0x4
20016fdc:	95b6                	add	a1,a1,a3
20016fde:	feb60fa3          	sb	a1,-1(a2)
20016fe2:	0785                	add	a5,a5,1
20016fe4:	863a                	mv	a2,a4
20016fe6:	c129                	beqz	a0,20017028 <core::fmt::num::<impl core::fmt::Debug for u32>::fmt+0x82>
20016fe8:	00f57693          	and	a3,a0,15
20016fec:	03000593          	li	a1,48
20016ff0:	ff16e3e3          	bltu	a3,a7,20016fd6 <core::fmt::num::<impl core::fmt::Debug for u32>::fmt+0x30>
20016ff4:	05700593          	li	a1,87
20016ff8:	bff9                	j	20016fd6 <core::fmt::num::<impl core::fmt::Debug for u32>::fmt+0x30>
20016ffa:	4108                	lw	a0,0(a0)
20016ffc:	4781                	li	a5,0
20016ffe:	0170                	add	a2,sp,140
20017000:	48a9                	li	a7,10
20017002:	a811                	j	20017016 <core::fmt::num::<impl core::fmt::Debug for u32>::fmt+0x70>
20017004:	fff60713          	add	a4,a2,-1
20017008:	8111                	srl	a0,a0,0x4
2001700a:	95b6                	add	a1,a1,a3
2001700c:	feb60fa3          	sb	a1,-1(a2)
20017010:	0785                	add	a5,a5,1
20017012:	863a                	mv	a2,a4
20017014:	c911                	beqz	a0,20017028 <core::fmt::num::<impl core::fmt::Debug for u32>::fmt+0x82>
20017016:	00f57693          	and	a3,a0,15
2001701a:	03000593          	li	a1,48
2001701e:	ff16e3e3          	bltu	a3,a7,20017004 <core::fmt::num::<impl core::fmt::Debug for u32>::fmt+0x5e>
20017022:	03700593          	li	a1,55
20017026:	bff9                	j	20017004 <core::fmt::num::<impl core::fmt::Debug for u32>::fmt+0x5e>
20017028:	08000593          	li	a1,128
2001702c:	40f58533          	sub	a0,a1,a5
20017030:	02a5e063          	bltu	a1,a0,20017050 <core::fmt::num::<impl core::fmt::Debug for u32>::fmt+0xaa>
20017034:	20019537          	lui	a0,0x20019
20017038:	bc850613          	add	a2,a0,-1080 # 20018bc8 <.Lanon.f68147c55be82c2fe41eccee53b7e689.304>
2001703c:	4585                	li	a1,1
2001703e:	4689                	li	a3,2
20017040:	8542                	mv	a0,a6
20017042:	fffff097          	auipc	ra,0xfffff
20017046:	b42080e7          	jalr	-1214(ra) # 20015b84 <core::fmt::Formatter::pad_integral>
2001704a:	40ba                	lw	ra,140(sp)
2001704c:	6149                	add	sp,sp,144
2001704e:	8082                	ret
20017050:	200195b7          	lui	a1,0x20019
20017054:	be858613          	add	a2,a1,-1048 # 20018be8 <.Lanon.f68147c55be82c2fe41eccee53b7e689.306>
20017058:	08000593          	li	a1,128
2001705c:	fffff097          	auipc	ra,0xfffff
20017060:	724080e7          	jalr	1828(ra) # 20016780 <core::slice::index::slice_start_index_len_fail>
	...

20017066 <core::fmt::num::imp::fmt_u32>:
20017066:	7139                	add	sp,sp,-64
20017068:	de06                	sw	ra,60(sp)
2001706a:	dc22                	sw	s0,56(sp)
2001706c:	da26                	sw	s1,52(sp)
2001706e:	8832                	mv	a6,a2
20017070:	00455693          	srl	a3,a0,0x4
20017074:	27100713          	li	a4,625
20017078:	02700613          	li	a2,39
2001707c:	02e6f263          	bgeu	a3,a4,200170a0 <core::fmt::num::imp::fmt_u32+0x3a>
20017080:	06300693          	li	a3,99
20017084:	0aa6ed63          	bltu	a3,a0,2001713e <core::fmt::num::imp::fmt_u32+0xd8>
20017088:	46a9                	li	a3,10
2001708a:	0ed57f63          	bgeu	a0,a3,20017188 <core::fmt::num::imp::fmt_u32+0x122>
2001708e:	167d                	add	a2,a2,-1
20017090:	00d10693          	add	a3,sp,13
20017094:	96b2                	add	a3,a3,a2
20017096:	03050513          	add	a0,a0,48
2001709a:	00a68023          	sb	a0,0(a3)
2001709e:	a239                	j	200171ac <core::fmt::num::imp::fmt_u32+0x146>
200170a0:	4601                	li	a2,0
200170a2:	03010893          	add	a7,sp,48
200170a6:	03210293          	add	t0,sp,50
200170aa:	d1b716b7          	lui	a3,0xd1b71
200170ae:	75968393          	add	t2,a3,1881 # d1b71759 <_sstack+0x51b6d759>
200170b2:	6689                	lui	a3,0x2
200170b4:	71068e13          	add	t3,a3,1808 # 2710 <.Lline_table_start0+0x43a>
200170b8:	6685                	lui	a3,0x1
200170ba:	47b68e93          	add	t4,a3,1147 # 147b <.Lline_table_start0+0x62>
200170be:	06400313          	li	t1,100
200170c2:	200196b7          	lui	a3,0x20019
200170c6:	bf868f93          	add	t6,a3,-1032 # 20018bf8 <.Lanon.f68147c55be82c2fe41eccee53b7e689.309>
200170ca:	05f5e737          	lui	a4,0x5f5e
200170ce:	0ff70f13          	add	t5,a4,255 # 5f5e0ff <.Lline_table_start1+0x5f2ec89>
200170d2:	86aa                	mv	a3,a0
200170d4:	02753533          	mulhu	a0,a0,t2
200170d8:	8135                	srl	a0,a0,0xd
200170da:	03c50733          	mul	a4,a0,t3
200170de:	40e687b3          	sub	a5,a3,a4
200170e2:	01079713          	sll	a4,a5,0x10
200170e6:	8349                	srl	a4,a4,0x12
200170e8:	03d70733          	mul	a4,a4,t4
200170ec:	01175413          	srl	s0,a4,0x11
200170f0:	8341                	srl	a4,a4,0x10
200170f2:	7fe77713          	and	a4,a4,2046
200170f6:	02640433          	mul	s0,s0,t1
200170fa:	8f81                	sub	a5,a5,s0
200170fc:	07c6                	sll	a5,a5,0x11
200170fe:	977e                	add	a4,a4,t6
20017100:	00174403          	lbu	s0,1(a4)
20017104:	83c1                	srl	a5,a5,0x10
20017106:	00c884b3          	add	s1,a7,a2
2001710a:	00074703          	lbu	a4,0(a4)
2001710e:	008480a3          	sb	s0,1(s1)
20017112:	97fe                	add	a5,a5,t6
20017114:	0017c403          	lbu	s0,1(a5)
20017118:	0007c783          	lbu	a5,0(a5)
2001711c:	00e48023          	sb	a4,0(s1)
20017120:	00c28733          	add	a4,t0,a2
20017124:	008700a3          	sb	s0,1(a4)
20017128:	00f70023          	sb	a5,0(a4)
2001712c:	1671                	add	a2,a2,-4
2001712e:	fadf62e3          	bltu	t5,a3,200170d2 <core::fmt::num::imp::fmt_u32+0x6c>
20017132:	02760613          	add	a2,a2,39
20017136:	06300693          	li	a3,99
2001713a:	f4a6f7e3          	bgeu	a3,a0,20017088 <core::fmt::num::imp::fmt_u32+0x22>
2001713e:	01051693          	sll	a3,a0,0x10
20017142:	82c9                	srl	a3,a3,0x12
20017144:	6705                	lui	a4,0x1
20017146:	47b70713          	add	a4,a4,1147 # 147b <.Lline_table_start0+0x62>
2001714a:	02e686b3          	mul	a3,a3,a4
2001714e:	82c5                	srl	a3,a3,0x11
20017150:	06400713          	li	a4,100
20017154:	02e68733          	mul	a4,a3,a4
20017158:	8d19                	sub	a0,a0,a4
2001715a:	0546                	sll	a0,a0,0x11
2001715c:	8141                	srl	a0,a0,0x10
2001715e:	1679                	add	a2,a2,-2
20017160:	20019737          	lui	a4,0x20019
20017164:	bf870713          	add	a4,a4,-1032 # 20018bf8 <.Lanon.f68147c55be82c2fe41eccee53b7e689.309>
20017168:	953a                	add	a0,a0,a4
2001716a:	00154703          	lbu	a4,1(a0)
2001716e:	00054503          	lbu	a0,0(a0)
20017172:	00d10793          	add	a5,sp,13
20017176:	97b2                	add	a5,a5,a2
20017178:	00e780a3          	sb	a4,1(a5)
2001717c:	00a78023          	sb	a0,0(a5)
20017180:	8536                	mv	a0,a3
20017182:	46a9                	li	a3,10
20017184:	f0d565e3          	bltu	a0,a3,2001708e <core::fmt::num::imp::fmt_u32+0x28>
20017188:	0506                	sll	a0,a0,0x1
2001718a:	1679                	add	a2,a2,-2
2001718c:	200196b7          	lui	a3,0x20019
20017190:	bf868693          	add	a3,a3,-1032 # 20018bf8 <.Lanon.f68147c55be82c2fe41eccee53b7e689.309>
20017194:	9536                	add	a0,a0,a3
20017196:	00154683          	lbu	a3,1(a0)
2001719a:	00054503          	lbu	a0,0(a0)
2001719e:	00d10713          	add	a4,sp,13
200171a2:	9732                	add	a4,a4,a2
200171a4:	00d700a3          	sb	a3,1(a4)
200171a8:	00a70023          	sb	a0,0(a4)
200171ac:	00d10713          	add	a4,sp,13
200171b0:	9732                	add	a4,a4,a2
200171b2:	02700793          	li	a5,39
200171b6:	8f91                	sub	a5,a5,a2
200171b8:	20019537          	lui	a0,0x20019
200171bc:	af850613          	add	a2,a0,-1288 # 20018af8 <.Lanon.f68147c55be82c2fe41eccee53b7e689.92>
200171c0:	8542                	mv	a0,a6
200171c2:	4681                	li	a3,0
200171c4:	fffff097          	auipc	ra,0xfffff
200171c8:	9c0080e7          	jalr	-1600(ra) # 20015b84 <core::fmt::Formatter::pad_integral>
200171cc:	50f2                	lw	ra,60(sp)
200171ce:	5462                	lw	s0,56(sp)
200171d0:	54d2                	lw	s1,52(sp)
200171d2:	6121                	add	sp,sp,64
200171d4:	8082                	ret

200171d6 <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt>:
200171d6:	4108                	lw	a0,0(a0)
200171d8:	862e                	mv	a2,a1
200171da:	4585                	li	a1,1
200171dc:	00000317          	auipc	t1,0x0
200171e0:	e8a30067          	jr	-374(t1) # 20017066 <core::fmt::num::imp::fmt_u32>

200171e4 <<&T as core::fmt::Debug>::fmt>:
200171e4:	4150                	lw	a2,4(a0)
200171e6:	4108                	lw	a0,0(a0)
200171e8:	465c                	lw	a5,12(a2)
200171ea:	8782                	jr	a5

200171ec <<&T as core::fmt::Display>::fmt>:
200171ec:	4114                	lw	a3,0(a0)
200171ee:	4150                	lw	a2,4(a0)
200171f0:	852e                	mv	a0,a1
200171f2:	85b6                	mv	a1,a3
200171f4:	fffff317          	auipc	t1,0xfffff
200171f8:	bec30067          	jr	-1044(t1) # 20015de0 <core::fmt::Formatter::pad>

200171fc <core::unicode::unicode_data::grapheme_extend::lookup>:
200171fc:	1141                	add	sp,sp,-16
200171fe:	c606                	sw	ra,12(sp)
20017200:	4681                	li	a3,0
20017202:	00b51313          	sll	t1,a0,0xb
20017206:	02100793          	li	a5,33
2001720a:	20019637          	lui	a2,0x20019
2001720e:	4a860293          	add	t0,a2,1192 # 200194a8 <core::unicode::unicode_data::grapheme_extend::SHORT_OFFSET_RUNS>
20017212:	4885                	li	a7,1
20017214:	0ff00813          	li	a6,255
20017218:	02100713          	li	a4,33
2001721c:	a031                	j	20017228 <core::unicode::unicode_data::grapheme_extend::lookup+0x2c>
2001721e:	873e                	mv	a4,a5
20017220:	40d707b3          	sub	a5,a4,a3
20017224:	02e6fa63          	bgeu	a3,a4,20017258 <core::unicode::unicode_data::grapheme_extend::lookup+0x5c>
20017228:	8385                	srl	a5,a5,0x1
2001722a:	97b6                	add	a5,a5,a3
2001722c:	00279613          	sll	a2,a5,0x2
20017230:	9616                	add	a2,a2,t0
20017232:	4210                	lw	a2,0(a2)
20017234:	062e                	sll	a2,a2,0xb
20017236:	006635b3          	sltu	a1,a2,t1
2001723a:	00664633          	xor	a2,a2,t1
2001723e:	00c03633          	snez	a2,a2
20017242:	40b005b3          	neg	a1,a1
20017246:	8e4d                	or	a2,a2,a1
20017248:	fd160be3          	beq	a2,a7,2001721e <core::unicode::unicode_data::grapheme_extend::lookup+0x22>
2001724c:	00178693          	add	a3,a5,1
20017250:	0ff67593          	zext.b	a1,a2
20017254:	fd0586e3          	beq	a1,a6,20017220 <core::unicode::unicode_data::grapheme_extend::lookup+0x24>
20017258:	02000613          	li	a2,32
2001725c:	0ad66263          	bltu	a2,a3,20017300 <core::unicode::unicode_data::grapheme_extend::lookup+0x104>
20017260:	00269793          	sll	a5,a3,0x2
20017264:	200195b7          	lui	a1,0x20019
20017268:	4a858713          	add	a4,a1,1192 # 200194a8 <core::unicode::unicode_data::grapheme_extend::SHORT_OFFSET_RUNS>
2001726c:	97ba                	add	a5,a5,a4
2001726e:	438c                	lw	a1,0(a5)
20017270:	0155d813          	srl	a6,a1,0x15
20017274:	00c69663          	bne	a3,a2,20017280 <core::unicode::unicode_data::grapheme_extend::lookup+0x84>
20017278:	46fd                	li	a3,31
2001727a:	2d700613          	li	a2,727
2001727e:	a029                	j	20017288 <core::unicode::unicode_data::grapheme_extend::lookup+0x8c>
20017280:	43d0                	lw	a2,4(a5)
20017282:	8255                	srl	a2,a2,0x15
20017284:	cea1                	beqz	a3,200172dc <core::unicode::unicode_data::grapheme_extend::lookup+0xe0>
20017286:	16fd                	add	a3,a3,-1
20017288:	068a                	sll	a3,a3,0x2
2001728a:	96ba                	add	a3,a3,a4
2001728c:	4294                	lw	a3,0(a3)
2001728e:	06ae                	sll	a3,a3,0xb
20017290:	00b6d713          	srl	a4,a3,0xb
20017294:	fff84693          	not	a3,a6
20017298:	96b2                	add	a3,a3,a2
2001729a:	ce85                	beqz	a3,200172d2 <core::unicode::unicode_data::grapheme_extend::lookup+0xd6>
2001729c:	2d700793          	li	a5,727
200172a0:	86c2                	mv	a3,a6
200172a2:	0107e463          	bltu	a5,a6,200172aa <core::unicode::unicode_data::grapheme_extend::lookup+0xae>
200172a6:	2d700693          	li	a3,727
200172aa:	4781                	li	a5,0
200172ac:	8d19                	sub	a0,a0,a4
200172ae:	167d                	add	a2,a2,-1
200172b0:	20019737          	lui	a4,0x20019
200172b4:	52c70713          	add	a4,a4,1324 # 2001952c <core::unicode::unicode_data::grapheme_extend::OFFSETS>
200172b8:	03068863          	beq	a3,a6,200172e8 <core::unicode::unicode_data::grapheme_extend::lookup+0xec>
200172bc:	010705b3          	add	a1,a4,a6
200172c0:	0005c583          	lbu	a1,0(a1)
200172c4:	97ae                	add	a5,a5,a1
200172c6:	00f56663          	bltu	a0,a5,200172d2 <core::unicode::unicode_data::grapheme_extend::lookup+0xd6>
200172ca:	0805                	add	a6,a6,1
200172cc:	ff0616e3          	bne	a2,a6,200172b8 <core::unicode::unicode_data::grapheme_extend::lookup+0xbc>
200172d0:	8832                	mv	a6,a2
200172d2:	00187513          	and	a0,a6,1
200172d6:	40b2                	lw	ra,12(sp)
200172d8:	0141                	add	sp,sp,16
200172da:	8082                	ret
200172dc:	4701                	li	a4,0
200172de:	fff84693          	not	a3,a6
200172e2:	96b2                	add	a3,a3,a2
200172e4:	fec5                	bnez	a3,2001729c <core::unicode::unicode_data::grapheme_extend::lookup+0xa0>
200172e6:	b7f5                	j	200172d2 <core::unicode::unicode_data::grapheme_extend::lookup+0xd6>
200172e8:	20019537          	lui	a0,0x20019
200172ec:	45c50613          	add	a2,a0,1116 # 2001945c <.Lanon.f68147c55be82c2fe41eccee53b7e689.417>
200172f0:	2d700593          	li	a1,727
200172f4:	8536                	mv	a0,a3
200172f6:	ffffe097          	auipc	ra,0xffffe
200172fa:	1c2080e7          	jalr	450(ra) # 200154b8 <core::panicking::panic_bounds_check>
200172fe:	0000                	unimp
20017300:	20019537          	lui	a0,0x20019
20017304:	44c50613          	add	a2,a0,1100 # 2001944c <.Lanon.f68147c55be82c2fe41eccee53b7e689.416>
20017308:	02100593          	li	a1,33
2001730c:	8536                	mv	a0,a3
2001730e:	ffffe097          	auipc	ra,0xffffe
20017312:	1aa080e7          	jalr	426(ra) # 200154b8 <core::panicking::panic_bounds_check>
	...

20017318 <compiler_builtins::mem::memcpy>:
20017318:	46c1                	li	a3,16
2001731a:	06d66b63          	bltu	a2,a3,20017390 <compiler_builtins::mem::memcpy+0x78>
2001731e:	40a006b3          	neg	a3,a0
20017322:	0036f813          	and	a6,a3,3
20017326:	010503b3          	add	t2,a0,a6
2001732a:	00080c63          	beqz	a6,20017342 <compiler_builtins::mem::memcpy+0x2a>
2001732e:	87aa                	mv	a5,a0
20017330:	86ae                	mv	a3,a1
20017332:	0006c703          	lbu	a4,0(a3)
20017336:	00e78023          	sb	a4,0(a5)
2001733a:	0785                	add	a5,a5,1
2001733c:	0685                	add	a3,a3,1
2001733e:	fe77eae3          	bltu	a5,t2,20017332 <compiler_builtins::mem::memcpy+0x1a>
20017342:	010588b3          	add	a7,a1,a6
20017346:	41060833          	sub	a6,a2,a6
2001734a:	ffc87293          	and	t0,a6,-4
2001734e:	0038f593          	and	a1,a7,3
20017352:	005386b3          	add	a3,t2,t0
20017356:	c1a1                	beqz	a1,20017396 <compiler_builtins::mem::memcpy+0x7e>
20017358:	04505963          	blez	t0,200173aa <compiler_builtins::mem::memcpy+0x92>
2001735c:	00389593          	sll	a1,a7,0x3
20017360:	0185f313          	and	t1,a1,24
20017364:	ffc8f793          	and	a5,a7,-4
20017368:	4390                	lw	a2,0(a5)
2001736a:	40b005b3          	neg	a1,a1
2001736e:	0185fe13          	and	t3,a1,24
20017372:	0791                	add	a5,a5,4
20017374:	4398                	lw	a4,0(a5)
20017376:	00665633          	srl	a2,a2,t1
2001737a:	01c715b3          	sll	a1,a4,t3
2001737e:	8dd1                	or	a1,a1,a2
20017380:	00b3a023          	sw	a1,0(t2)
20017384:	0391                	add	t2,t2,4
20017386:	0791                	add	a5,a5,4
20017388:	863a                	mv	a2,a4
2001738a:	fed3e5e3          	bltu	t2,a3,20017374 <compiler_builtins::mem::memcpy+0x5c>
2001738e:	a831                	j	200173aa <compiler_builtins::mem::memcpy+0x92>
20017390:	86aa                	mv	a3,a0
20017392:	e20d                	bnez	a2,200173b4 <compiler_builtins::mem::memcpy+0x9c>
20017394:	a80d                	j	200173c6 <compiler_builtins::mem::memcpy+0xae>
20017396:	00505a63          	blez	t0,200173aa <compiler_builtins::mem::memcpy+0x92>
2001739a:	85c6                	mv	a1,a7
2001739c:	4190                	lw	a2,0(a1)
2001739e:	00c3a023          	sw	a2,0(t2)
200173a2:	0391                	add	t2,t2,4
200173a4:	0591                	add	a1,a1,4
200173a6:	fed3ebe3          	bltu	t2,a3,2001739c <compiler_builtins::mem::memcpy+0x84>
200173aa:	005885b3          	add	a1,a7,t0
200173ae:	00387613          	and	a2,a6,3
200173b2:	ca11                	beqz	a2,200173c6 <compiler_builtins::mem::memcpy+0xae>
200173b4:	9636                	add	a2,a2,a3
200173b6:	0005c703          	lbu	a4,0(a1)
200173ba:	00e68023          	sb	a4,0(a3)
200173be:	0685                	add	a3,a3,1
200173c0:	0585                	add	a1,a1,1
200173c2:	fec6eae3          	bltu	a3,a2,200173b6 <compiler_builtins::mem::memcpy+0x9e>
200173c6:	8082                	ret

200173c8 <memcpy>:
200173c8:	00000317          	auipc	t1,0x0
200173cc:	f5030067          	jr	-176(t1) # 20017318 <compiler_builtins::mem::memcpy>

200173d0 <abort>:
200173d0:	a001                	j	200173d0 <abort>
