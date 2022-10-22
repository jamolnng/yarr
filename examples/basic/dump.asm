
basic:	file format elf32-littleriscv

Disassembly of section .text:

20010000 <_start>:
20010000:      	lui	ra, 131088

20010004 <.L0 >:
20010004:      	jr	8(ra)

20010008 <_abs_start>:
20010008:      	csrwi	mie, 0

2001000c <.L0 >:
2001000c:      	csrwi	mip, 0

20010010 <.L0 >:
20010010:      	li	ra, 0

20010012 <.L0 >:
20010012:      	li	sp, 0

20010014 <.L0 >:
20010014:      	li	gp, 0

20010016 <.L0 >:
20010016:      	li	tp, 0

20010018 <.L0 >:
20010018:      	li	t0, 0

2001001a <.L0 >:
2001001a:      	li	t1, 0

2001001c <.L0 >:
2001001c:      	li	t2, 0

2001001e <.L0 >:
2001001e:      	li	s0, 0

20010020 <.L0 >:
20010020:      	li	s1, 0

20010022 <.L0 >:
20010022:      	li	a3, 0

20010024 <.L0 >:
20010024:      	li	a4, 0

20010026 <.L0 >:
20010026:      	li	a5, 0

20010028 <.L0 >:
20010028:      	li	a6, 0

2001002a <.L0 >:
2001002a:      	li	a7, 0

2001002c <.L0 >:
2001002c:      	li	s2, 0

2001002e <.L0 >:
2001002e:      	li	s3, 0

20010030 <.L0 >:
20010030:      	li	s4, 0

20010032 <.L0 >:
20010032:      	li	s5, 0

20010034 <.L0 >:
20010034:      	li	s6, 0

20010036 <.L0 >:
20010036:      	li	s7, 0

20010038 <.L0 >:
20010038:      	li	s8, 0

2001003a <.L0 >:
2001003a:      	li	s9, 0

2001003c <.L0 >:
2001003c:      	li	s10, 0

2001003e <.L0 >:
2001003e:      	li	s11, 0

20010040 <.L0 >:
20010040:      	li	t3, 0

20010042 <.L0 >:
20010042:      	li	t4, 0

20010044 <.L0 >:
20010044:      	li	t5, 0

20010046 <.L0 >:
20010046:      	li	t6, 0

20010048 <.L0 >:
20010048:      	auipc	gp, 393200
2001004c:      	addi	gp, gp, 1976

20010050 <.L0 >:
20010050:      	csrr	t2, mhartid

20010054 <.L0 >:
20010054:      	lui	t0, 0

20010058 <.L0 >:
20010058:      	mv	t0, t0

2001005c <.L0 >:
2001005c:      	bgeu	t0, t2, 0x20010064 <.L0 >
20010060:      	j	0x20011188 <abort>

20010064 <.L0 >:
20010064:      	auipc	sp, 393204
20010068:      	addi	sp, sp, -100

2001006c <.L0 >:
2001006c:      	lui	t0, 1

20010070 <.L0 >:
20010070:      	addi	t0, t0, -2048

20010074 <.L0 >:
20010074:      	mul	t0, t2, t0

20010078 <.L0 >:
20010078:      	sub	sp, sp, t0

2001007c <.L0 >:
2001007c:      	add	s0, sp, zero

20010080 <.L0 >:
20010080:      	j	0x20010084 <_start_rust>

20010084 <_start_rust>:
20010084:      	addi	sp, sp, -16
20010086:      	sw	ra, 12(sp)
20010088:      	sw	s0, 8(sp)
2001008a:      	sw	s1, 4(sp)
2001008c:      	sw	s2, 0(sp)
2001008e:      	mv	s2, a2
20010090:      	mv	s1, a1
20010092:      	mv	s0, a0
20010094:      	auipc	ra, 1
20010098:      	jalr	-1892(ra)
2001009c:      	beqz	a0, 0x200100fe <_start_rust+0x7a>
2001009e:      	auipc	ra, 1
200100a2:      	jalr	-1904(ra)
200100a6:      	lui	a0, 524288
200100aa:      	addi	a0, a0, 12
200100ae:      	lui	a1, 524288
200100b2:      	addi	a1, a1, 8
200100b6:      	bgeu	a1, a0, 0x200100c4 <_start_rust+0x40>
200100ba:      	sw	zero, 0(a1)
200100be:      	addi	a1, a1, 4
200100c0:      	bltu	a1, a0, 0x200100ba <_start_rust+0x36>
200100c4:      	lui	a0, 524288
200100c8:      	addi	a1, a0, 8
200100cc:      	lui	a0, 524288
200100d0:      	mv	a0, a0
200100d4:      	bgeu	a0, a1, 0x200100fe <_start_rust+0x7a>
200100d8:      	addi	a2, a0, 4
200100dc:      	bltu	a2, a1, 0x200100e2 <_start_rust+0x5e>
200100e0:      	mv	a1, a2
200100e2:      	not	a2, a0
200100e6:      	add	a1, a1, a2
200100e8:      	addi	a1, a1, 4
200100ea:      	andi	a2, a1, -4
200100ee:      	lui	a1, 131090
200100f2:      	addi	a1, a1, -1664
200100f6:      	auipc	ra, 1
200100fa:      	jalr	124(ra)
200100fe:      	auipc	ra, 1
20010102:      	jalr	124(ra)
20010106:      	mv	a0, s0
20010108:      	mv	a1, s1
2001010a:      	mv	a2, s2
2001010c:      	auipc	ra, 0
20010110:      	jalr	588(ra)
20010114:      	unimp	
20010116:      	unimp	

20010118 <default_start_trap>:
20010118:      	addi	sp, sp, -64

2001011a <.L0 >:
2001011a:      	sw	ra, 0(sp)

2001011c <.L0 >:
2001011c:      	sw	t0, 4(sp)

2001011e <.L0 >:
2001011e:      	sw	t1, 8(sp)

20010120 <.L0 >:
20010120:      	sw	t2, 12(sp)

20010122 <.L0 >:
20010122:      	sw	t3, 16(sp)

20010124 <.L0 >:
20010124:      	sw	t4, 20(sp)

20010126 <.L0 >:
20010126:      	sw	t5, 24(sp)

20010128 <.L0 >:
20010128:      	sw	t6, 28(sp)

2001012a <.L0 >:
2001012a:      	sw	a0, 32(sp)

2001012c <.L0 >:
2001012c:      	sw	a1, 36(sp)

2001012e <.L0 >:
2001012e:      	sw	a2, 40(sp)

20010130 <.L0 >:
20010130:      	sw	a3, 44(sp)

20010132 <.L0 >:
20010132:      	sw	a4, 48(sp)

20010134 <.L0 >:
20010134:      	sw	a5, 52(sp)

20010136 <.L0 >:
20010136:      	sw	a6, 56(sp)

20010138 <.L0 >:
20010138:      	sw	a7, 60(sp)

2001013a <.L0 >:
2001013a:      	add	a0, sp, zero

2001013e <.L0 >:
2001013e:      	jal	0x20010168 <_start_trap_rust>

20010142 <.L0 >:
20010142:      	lw	ra, 0(sp)

20010144 <.L0 >:
20010144:      	lw	t0, 4(sp)

20010146 <.L0 >:
20010146:      	lw	t1, 8(sp)

20010148 <.L0 >:
20010148:      	lw	t2, 12(sp)

2001014a <.L0 >:
2001014a:      	lw	t3, 16(sp)

2001014c <.L0 >:
2001014c:      	lw	t4, 20(sp)

2001014e <.L0 >:
2001014e:      	lw	t5, 24(sp)

20010150 <.L0 >:
20010150:      	lw	t6, 28(sp)

20010152 <.L0 >:
20010152:      	lw	a0, 32(sp)

20010154 <.L0 >:
20010154:      	lw	a1, 36(sp)

20010156 <.L0 >:
20010156:      	lw	a2, 40(sp)

20010158 <.L0 >:
20010158:      	lw	a3, 44(sp)

2001015a <.L0 >:
2001015a:      	lw	a4, 48(sp)

2001015c <.L0 >:
2001015c:      	lw	a5, 52(sp)

2001015e <.L0 >:
2001015e:      	lw	a6, 56(sp)

20010160 <.L0 >:
20010160:      	lw	a7, 60(sp)

20010162 <.L0 >:
20010162:      	addi	sp, sp, 64

20010164 <.L0 >:
20010164:      	mret	

20010168 <_start_trap_rust>:
20010168:      	csrr	a1, mcause
2001016c:      	bltz	a1, 0x20010178 <_start_trap_rust+0x10>
20010170:      	auipc	t1, 0
20010174:      	jr	1978(t1)
20010178:      	slli	a0, a1, 1
2001017c:      	srli	a0, a0, 1
2001017e:      	li	a1, 12
20010180:      	bgeu	a0, a1, 0x20010196 <_start_trap_rust+0x2e>
20010184:      	lui	a1, 131089
20010188:      	addi	a1, a1, 2028
2001018c:      	slli	a0, a0, 2
2001018e:      	add	a0, a0, a1
20010190:      	lw	a5, 0(a0)
20010192:      	beqz	a5, 0x20010196 <_start_trap_rust+0x2e>
20010194:      	jr	a5
20010196:      	auipc	t1, 0
2001019a:      	jr	1942(t1)

2001019e <hifive1::stdout::configure::hdad87fea385b3785>:
2001019e:      	addi	sp, sp, -32
200101a0:      	sw	ra, 28(sp)
200101a2:      	sw	s0, 24(sp)
200101a4:      	sw	s1, 20(sp)
200101a6:      	lui	a3, 1048544
200101a8:      	addi	a3, a3, -1
200101aa:      	lui	a4, 65554
200101ae:      	addi	a5, a4, 64
200101b2:      	amoand.w.aqrl	s1, a3, (a5)
200101b6:      	addi	s1, a4, 60
200101ba:      	amoand.w.aqrl	a3, a3, (s1)
200101be:      	addi	a3, a4, 56
200101c2:      	lui	a4, 32
200101c6:      	amoor.w.aqrl	a4, a4, (a3)
200101ca:      	lui	a4, 1048560
200101cc:      	addi	a4, a4, -1
200101ce:      	amoand.w.aqrl	a5, a4, (a5)
200101d2:      	amoand.w.aqrl	a4, a4, (s1)
200101d6:      	lui	s1, 16
200101d8:      	amoor.w.aqrl	a3, s1, (a3)
200101dc:      	mv	s0, a0
200101de:      	sw	a1, 8(sp)
200101e0:      	sw	a2, 12(sp)
200101e2:      	addi	a0, sp, 8
200101e4:      	auipc	ra, 0
200101e8:      	jalr	1656(ra)
200101ec:      	beqz	s0, 0x2001024e <hifive1::stdout::configure::hdad87fea385b3785+0xb0>
200101ee:      	divu	a0, a0, s0
200101f2:      	addi	a0, a0, -1
200101f4:      	lui	a1, 65555
200101f8:      	sw	zero, 16(a1)
200101fc:      	sw	a0, 24(a1)
200101fe:      	addi	a0, s1, 1
20010202:      	sw	a0, 8(a1)
20010204:      	li	s1, 1
20010206:      	sw	s1, 12(a1)
20010208:      	auipc	ra, 0
2001020c:      	jalr	1696(ra)
20010210:      	mv	s0, a0
20010212:      	li	a0, 8
20010214:      	auipc	ra, 0
20010218:      	jalr	1696(ra)
2001021c:      	auipc	ra, 0
20010220:      	jalr	1694(ra)
20010224:      	lui	a0, 524288
20010228:      	andi	a1, s0, 8
2001022c:      	sb	s1, 8(a0)
20010230:      	bnez	a1, 0x2001023c <hifive1::stdout::configure::hdad87fea385b3785+0x9e>
20010232:      	lw	ra, 28(sp)
20010234:      	lw	s0, 24(sp)
20010236:      	lw	s1, 20(sp)
20010238:      	addi	sp, sp, 32
2001023a:      	ret
2001023c:      	li	a0, 8
2001023e:      	lw	ra, 28(sp)
20010240:      	lw	s0, 24(sp)
20010242:      	lw	s1, 20(sp)
20010244:      	addi	sp, sp, 32
20010246:      	auipc	t1, 0
2001024a:      	jr	1640(t1)
2001024e:      	lui	a0, 131089
20010252:      	addi	a0, a0, 512
20010256:      	lui	a1, 131089
2001025a:      	addi	a2, a1, 492
2001025e:      	li	a1, 25
20010260:      	auipc	ra, 1
20010264:      	jalr	-2048(ra)
20010268:      	unimp	

2001026a <core::ops::function::FnOnce::call_once::h3f9f99e209b4ac48>:
2001026a:      	auipc	ra, 0
2001026e:      	jalr	336(ra)
20010272:      	unimp	

20010274 <core::ops::function::FnOnce::call_once::h5c108cdb38eb6b67>:
20010274:      	lui	a0, 65554
20010278:      	lui	a1, 1024
2001027c:      	lw	a2, 12(a0)
2001027e:      	xor	a2, a2, a1
20010280:      	sw	a2, 12(a0)
20010282:      	j	0x2001027c <core::ops::function::FnOnce::call_once::h5c108cdb38eb6b67+0x8>

20010284 <core::ops::function::FnOnce::call_once::h9c3f5787ab4c40b8>:
20010284:      	lui	a0, 65554
20010288:      	lui	a1, 512
2001028c:      	lw	a2, 12(a0)
2001028e:      	xor	a2, a2, a1
20010290:      	sw	a2, 12(a0)
20010292:      	j	0x2001028c <core::ops::function::FnOnce::call_once::h9c3f5787ab4c40b8+0x8>

20010294 <core::ops::function::FnOnce::call_once::hfd38b6dbf3a7c028>:
20010294:      	lui	a0, 65554
20010298:      	lui	a1, 128
2001029c:      	lw	a2, 12(a0)
2001029e:      	xor	a2, a2, a1
200102a0:      	sw	a2, 12(a0)
200102a2:      	j	0x2001029c <core::ops::function::FnOnce::call_once::hfd38b6dbf3a7c028+0x8>

200102a4 <core::option::Option<T>::unwrap::h2c6d9d209c1f9bdf>:
200102a4:      	lw	a2, 0(a1)
200102a6:      	beqz	a2, 0x200102b6 <core::option::Option<T>::unwrap::h2c6d9d209c1f9bdf+0x12>
200102a8:      	addi	a1, a1, 4
200102aa:      	li	a2, 36
200102ae:      	auipc	t1, 1
200102b2:      	jr	-316(t1)
200102b6:      	lui	a0, 131089
200102ba:      	addi	a0, a0, 537
200102be:      	lui	a1, 131089
200102c2:      	addi	a2, a1, 600
200102c6:      	li	a1, 43
200102ca:      	auipc	ra, 0
200102ce:      	jalr	1942(ra)
200102d2:      	unimp	

200102d4 <e310x_hal::device::DeviceResources::take::hc6c000335a9be976>:
200102d4:      	addi	sp, sp, -16
200102d6:      	sw	ra, 12(sp)
200102d8:      	sw	s0, 8(sp)
200102da:      	sw	s1, 4(sp)
200102dc:      	sw	s2, 0(sp)
200102de:      	mv	s2, a0
200102e0:      	auipc	ra, 0
200102e4:      	jalr	1480(ra)
200102e8:      	mv	s1, a0
200102ea:      	li	a0, 8
200102ec:      	auipc	ra, 0
200102f0:      	jalr	1480(ra)
200102f4:      	auipc	ra, 0
200102f8:      	jalr	1478(ra)
200102fc:      	lui	a0, 524288
20010300:      	lbu	s0, 9(a0)
20010304:      	beqz	s0, 0x20010320 <e310x_hal::device::DeviceResources::take::hc6c000335a9be976+0x4c>
20010306:      	andi	a0, s1, 8
2001030a:      	bnez	a0, 0x20010330 <e310x_hal::device::DeviceResources::take::hc6c000335a9be976+0x5c>
2001030c:      	li	a0, 0
2001030e:      	beqz	s0, 0x2001033e <e310x_hal::device::DeviceResources::take::hc6c000335a9be976+0x6a>
20010310:      	sw	a0, 0(s2)
20010314:      	lw	ra, 12(sp)
20010316:      	lw	s0, 8(sp)
20010318:      	lw	s1, 4(sp)
2001031a:      	lw	s2, 0(sp)
2001031c:      	addi	sp, sp, 16
2001031e:      	ret
20010320:      	addi	a0, a0, 9
20010324:      	li	a1, 1
20010326:      	sb	a1, 0(a0)
2001032a:      	andi	a0, s1, 8
2001032e:      	beqz	a0, 0x2001030c <e310x_hal::device::DeviceResources::take::hc6c000335a9be976+0x38>
20010330:      	li	a0, 8
20010332:      	auipc	ra, 0
20010336:      	jalr	1404(ra)
2001033a:      	li	a0, 0
2001033c:      	bnez	s0, 0x20010310 <e310x_hal::device::DeviceResources::take::hc6c000335a9be976+0x3c>
2001033e:      	addi	a0, s2, 4
20010342:      	auipc	ra, 0
20010346:      	jalr	1330(ra)
2001034a:      	li	a0, 1
2001034c:      	j	0x20010310 <e310x_hal::device::DeviceResources::take::hc6c000335a9be976+0x3c>

2001034e <rust_begin_unwind>:
2001034e:      	fence	rw, rw
20010352:      	wfi	
20010356:      	j	0x2001034e <rust_begin_unwind>

20010358 <main>:
20010358:      	addi	sp, sp, -96
2001035a:      	sw	ra, 92(sp)
2001035c:      	sw	s0, 88(sp)
2001035e:      	sw	s1, 84(sp)
20010360:      	addi	a0, sp, 40
20010362:      	auipc	ra, 0
20010366:      	jalr	-142(ra)
2001036a:      	mv	a0, sp
2001036c:      	addi	a1, sp, 40
2001036e:      	auipc	ra, 0
20010372:      	jalr	-202(ra)
20010376:      	li	a0, 320
2001037a:      	auipc	ra, 0
2001037e:      	jalr	1310(ra)
20010382:      	auipc	ra, 0
20010386:      	jalr	1304(ra)
2001038a:      	auipc	ra, 0
2001038e:      	jalr	58(ra)
20010392:      	mv	s0, a0
20010394:      	mv	s1, a1
20010396:      	lui	a0, 28
20010398:      	addi	a0, a0, 512
2001039c:      	auipc	ra, 0
200103a0:      	jalr	1276(ra)
200103a4:      	mv	a1, s0
200103a6:      	mv	a2, s1
200103a8:      	auipc	ra, 0
200103ac:      	jalr	-522(ra)
200103b0:      	auipc	ra, 0
200103b4:      	jalr	1424(ra)
200103b8:      	unimp	

200103ba <basic::PROCESS_LIST::{{closure}}::h82c9b682ff878c8e>:
200103ba:      	auipc	ra, 0
200103be:      	jalr	1282(ra)
200103c2:      	unimp	

200103c4 <hifive1::clock::configure::hbe0e6ecf43449cf9>:
200103c4:      	addi	sp, sp, -48
200103c6:      	sw	ra, 44(sp)
200103c8:      	sw	s0, 40(sp)
200103ca:      	mv	s0, a0
200103cc:      	addi	a0, sp, 8
200103ce:      	auipc	ra, 0
200103d2:      	jalr	1170(ra)
200103d6:      	auipc	ra, 0
200103da:      	jalr	1178(ra)
200103de:      	li	a0, 1
200103e0:      	sw	a0, 24(sp)
200103e2:      	lui	a0, 3906
200103e6:      	addi	a0, a0, 1024
200103ea:      	sw	a0, 28(sp)
200103ec:      	sw	s0, 32(sp)
200103ee:      	addi	a0, sp, 24
200103f0:      	li	a1, 1
200103f2:      	lui	a2, 8
200103f4:      	auipc	ra, 0
200103f8:      	jalr	858(ra)
200103fc:      	lw	ra, 44(sp)
200103fe:      	lw	s0, 40(sp)
20010400:      	addi	sp, sp, 48
20010402:      	ret

20010404 <e310x_hal::clock::CoreClk::configure_pll::h96ae0a7c96bd7651>:
20010404:      	lui	a2, 1047111
20010408:      	addi	a2, a2, 640
2001040c:      	add	a3, a0, a2
20010410:      	lui	a4, 10254
20010414:      	addi	a4, a4, -384
20010418:      	bltu	a4, a3, 0x20010682 <e310x_hal::clock::CoreClk::configure_pll::h96ae0a7c96bd7651+0x27e>
2001041c:      	lui	a3, 1048484
20010420:      	addi	a3, a3, 1832
20010424:      	add	a3, a3, a1
20010426:      	lui	a4, 93658
2001042a:      	addi	a4, a4, 1833
2001042e:      	bgeu	a3, a4, 0x20010694 <e310x_hal::clock::CoreClk::configure_pll::h96ae0a7c96bd7651+0x290>
20010432:      	lui	a3, 46875
20010436:      	addi	a3, a3, 1
20010438:      	bgeu	a1, a3, 0x20010466 <e310x_hal::clock::CoreClk::configure_pll::h96ae0a7c96bd7651+0x62>
2001043c:      	lui	a3, 727
20010440:      	addi	a4, a3, -1047
20010444:      	li	a3, 63
20010448:      	bltu	a1, a4, 0x20010458 <e310x_hal::clock::CoreClk::configure_pll::h96ae0a7c96bd7651+0x54>
2001044c:      	lui	a3, 93750
20010450:      	divu	a3, a3, a1
20010454:      	srli	a3, a3, 1
20010456:      	addi	a3, a3, -1
20010458:      	slli	a4, a3, 1
2001045c:      	addi	a7, a4, 2
20010460:      	andi	a6, a3, 63
20010464:      	j	0x2001046a <e310x_hal::clock::CoreClk::configure_pll::h96ae0a7c96bd7651+0x66>
20010466:      	li	a6, 0
20010468:      	li	a7, 1
2001046a:      	mul	a5, a7, a1
2001046e:      	lui	a3, 1036857
20010472:      	addi	a3, a3, 1024
20010476:      	add	a3, a3, a5
20010478:      	lui	a4, 82031
2001047c:      	addi	a4, a4, 1024
20010480:      	bltu	a4, a3, 0x200106a6 <e310x_hal::clock::CoreClk::configure_pll::h96ae0a7c96bd7651+0x2a2>
20010484:      	lui	a3, 1042717
20010488:      	addi	a3, a3, -1536
2001048c:      	add	a3, a3, a0
2001048e:      	lui	a4, 5859
20010492:      	addi	a4, a4, 1537
20010496:      	li	t1, 4
20010498:      	bltu	a3, a4, 0x200104c8 <e310x_hal::clock::CoreClk::configure_pll::h96ae0a7c96bd7651+0xc4>
2001049c:      	lui	a3, 1044181
200104a0:      	addi	a3, a3, 1920
200104a4:      	add	a4, a0, a3
200104a8:      	lui	a3, 1465
200104ac:      	addi	a3, a3, -640
200104b0:      	li	t1, 3
200104b2:      	bltu	a4, a3, 0x200104c8 <e310x_hal::clock::CoreClk::configure_pll::h96ae0a7c96bd7651+0xc4>
200104b6:      	lui	a4, 1045646
200104ba:      	addi	a4, a4, 1280
200104be:      	add	a4, a4, a0
200104c0:      	sltu	a3, a4, a3
200104c4:      	addi	t1, a3, 1
200104c8:      	divu	t5, a0, t1
200104cc:      	add	a2, a2, t5
200104ce:      	lui	a3, 1465
200104d2:      	addi	a3, a3, -640
200104d6:      	bltu	a3, a2, 0x200106b8 <e310x_hal::clock::CoreClk::configure_pll::h96ae0a7c96bd7651+0x2b4>
200104da:      	lui	a2, 1001701
200104de:      	add	t2, a5, a2
200104e2:      	lui	a2, 1025139
200104e6:      	addi	a2, a2, -2048
200104ea:      	add	t0, a5, a2
200104ee:      	lui	a2, 23438
200104f2:      	addi	a2, a2, -2048
200104f6:      	li	a3, 4
200104f8:      	bltu	t0, a2, 0x200104fe <e310x_hal::clock::CoreClk::configure_pll::h96ae0a7c96bd7651+0xfa>
200104fc:      	li	a3, 8
200104fe:      	lui	a2, 46875
20010502:      	addi	a2, a2, 1
20010504:      	li	t4, 2
20010506:      	bltu	t2, a2, 0x2001050c <e310x_hal::clock::CoreClk::configure_pll::h96ae0a7c96bd7651+0x108>
2001050a:      	mv	t4, a3
2001050c:      	mul	a3, t4, a5
20010510:      	lui	a2, 954826
20010514:      	add	a2, a2, a3
20010516:      	lui	a5, 93750
2001051a:      	addi	a5, a5, 1
2001051c:      	bgeu	a2, a5, 0x200106d6 <e310x_hal::clock::CoreClk::configure_pll::h96ae0a7c96bd7651+0x2d2>
20010520:      	bltu	a0, t1, 0x20010666 <e310x_hal::clock::CoreClk::configure_pll::h96ae0a7c96bd7651+0x262>
20010524:      	divu	a0, a3, t5
20010528:      	andi	a5, a0, -2
2001052c:      	addi	t3, a5, 2
20010530:      	mul	a0, t3, t5
20010534:      	sltiu	a2, a5, 127
20010538:      	lui	a4, 187500
2001053c:      	addi	a4, a4, 1
2001053e:      	sltu	a4, a0, a4
20010542:      	and	a2, a2, a4
20010544:      	mul	t5, a5, t5
20010548:      	beqz	a2, 0x20010566 <e310x_hal::clock::CoreClk::configure_pll::h96ae0a7c96bd7651+0x162>
2001054a:      	sub	a2, a3, a0
2001054e:      	srai	a4, a2, 31
20010552:      	add	a2, a2, a4
20010554:      	xor	a2, a2, a4
20010556:      	sub	a3, a3, t5
2001055a:      	srai	a4, a3, 31
2001055e:      	add	a3, a3, a4
20010560:      	xor	a3, a3, a4
20010562:      	bltu	a2, a3, 0x2001056a <e310x_hal::clock::CoreClk::configure_pll::h96ae0a7c96bd7651+0x166>
20010566:      	mv	a0, t5
20010568:      	mv	t3, a5
2001056a:      	lui	a2, 861076
2001056e:      	addi	a2, a2, -1
20010570:      	add	a2, a2, a0
20010572:      	lui	a3, 954826
20010576:      	addi	a3, a3, -2
20010578:      	bgeu	a3, a2, 0x200106f4 <e310x_hal::clock::CoreClk::configure_pll::h96ae0a7c96bd7651+0x2f0>
2001057c:      	lui	a2, 46875
20010580:      	addi	a2, a2, 1
20010582:      	li	a3, 1
20010584:      	bltu	t2, a2, 0x20010598 <e310x_hal::clock::CoreClk::configure_pll::h96ae0a7c96bd7651+0x194>
20010588:      	lui	a2, 23438
2001058c:      	addi	a2, a2, -2048
20010590:      	sltu	a2, t0, a2
20010594:      	li	a3, 3
20010596:      	sub	a3, a3, a2
20010598:      	srl	a0, a0, a3
2001059c:      	divu	a0, a0, a7
200105a0:      	lui	a2, 92
200105a4:      	addi	a2, a2, -1832
200105a8:      	bltu	a0, a2, 0x20010712 <e310x_hal::clock::CoreClk::configure_pll::h96ae0a7c96bd7651+0x30e>
200105ac:      	li	a2, 2
200105ae:      	beq	t4, a2, 0x200105c6 <e310x_hal::clock::CoreClk::configure_pll::h96ae0a7c96bd7651+0x1c2>
200105b2:      	li	a2, 4
200105b4:      	beq	t4, a2, 0x200105cc <e310x_hal::clock::CoreClk::configure_pll::h96ae0a7c96bd7651+0x1c8>
200105b8:      	li	a2, 8
200105ba:      	bne	t4, a2, 0x20010730 <e310x_hal::clock::CoreClk::configure_pll::h96ae0a7c96bd7651+0x32c>
200105be:      	lui	a2, 1
200105c0:      	addi	a3, a2, -1024
200105c4:      	j	0x200105d2 <e310x_hal::clock::CoreClk::configure_pll::h96ae0a7c96bd7651+0x1ce>
200105c6:      	li	a3, 1024
200105ca:      	j	0x200105d2 <e310x_hal::clock::CoreClk::configure_pll::h96ae0a7c96bd7651+0x1ce>
200105cc:      	lui	a2, 1
200105ce:      	addi	a3, a2, -2048
200105d2:      	lui	a7, 65544
200105d6:      	lw	a4, 8(a7)
200105da:      	addi	a5, t1, 255
200105de:      	lui	a2, 1048511
200105e2:      	addi	a2, a2, 8
200105e4:      	and	a2, a2, a4
200105e6:      	andi	a4, a5, 255
200105ea:      	slli	a5, t3, 3
200105ee:      	addi	a5, a5, 1008
200105f2:      	andi	a5, a5, 1008
200105f6:      	or	a4, a4, a5
200105f8:      	or	a3, a3, a4
200105fa:      	or	a2, a2, a3
200105fc:      	lui	a3, 46875
20010600:      	addi	a3, a3, 1
20010602:      	sw	a2, 8(a7)
20010606:      	bltu	a1, a3, 0x2001060e <e310x_hal::clock::CoreClk::configure_pll::h96ae0a7c96bd7651+0x20a>
2001060a:      	ori	a6, a6, 256
2001060e:      	addi	a1, a7, 12
20010612:      	sw	a6, 0(a1)
20010616:      	lui	a1, 8204
2001061a:      	lw	a2, -4(a1)
2001061e:      	lw	a3, -8(a1)
20010622:      	lw	a4, -4(a1)
20010626:      	bne	a2, a4, 0x2001061a <e310x_hal::clock::CoreClk::configure_pll::h96ae0a7c96bd7651+0x216>
2001062a:      	addi	a6, a3, 4
2001062e:      	sltu	a3, a6, a3
20010632:      	add	a2, a2, a3
20010634:      	lui	a3, 8204
20010638:      	j	0x20010640 <e310x_hal::clock::CoreClk::configure_pll::h96ae0a7c96bd7651+0x23c>
2001063a:      	sltu	a4, a4, a2
2001063e:      	beqz	a4, 0x2001065a <e310x_hal::clock::CoreClk::configure_pll::h96ae0a7c96bd7651+0x256>
20010640:      	lw	a4, -4(a3)
20010644:      	lw	a5, -8(a3)
20010648:      	lw	a1, -4(a3)
2001064c:      	bne	a4, a1, 0x20010640 <e310x_hal::clock::CoreClk::configure_pll::h96ae0a7c96bd7651+0x23c>
20010650:      	bne	a4, a2, 0x2001063a <e310x_hal::clock::CoreClk::configure_pll::h96ae0a7c96bd7651+0x236>
20010654:      	sltu	a4, a5, a6
20010658:      	bnez	a4, 0x20010640 <e310x_hal::clock::CoreClk::configure_pll::h96ae0a7c96bd7651+0x23c>
2001065a:      	lui	a1, 65544
2001065e:      	lw	a2, 8(a1)
20010660:      	bgez	a2, 0x2001065e <e310x_hal::clock::CoreClk::configure_pll::h96ae0a7c96bd7651+0x25a>
20010664:      	ret
20010666:      	lui	a0, 131089
2001066a:      	addi	a0, a0, 1488
2001066e:      	lui	a1, 131089
20010672:      	addi	a2, a1, 1776
20010676:      	li	a1, 25
20010678:      	auipc	ra, 0
2001067c:      	jalr	1000(ra)
20010680:      	unimp	
20010682:      	lui	a0, 131089
20010686:      	addi	a0, a0, 1208
2001068a:      	lui	a1, 131089
2001068e:      	addi	a2, a1, 1372
20010692:      	j	0x20010722 <e310x_hal::clock::CoreClk::configure_pll::h96ae0a7c96bd7651+0x31e>
20010694:      	lui	a0, 131089
20010698:      	addi	a0, a0, 1388
2001069c:      	lui	a1, 131089
200106a0:      	addi	a2, a1, 1460
200106a4:      	j	0x20010722 <e310x_hal::clock::CoreClk::configure_pll::h96ae0a7c96bd7651+0x31e>
200106a6:      	lui	a0, 131089
200106aa:      	addi	a0, a0, 1513
200106ae:      	lui	a1, 131089
200106b2:      	addi	a2, a1, 1588
200106b6:      	j	0x20010722 <e310x_hal::clock::CoreClk::configure_pll::h96ae0a7c96bd7651+0x31e>
200106b8:      	lui	a0, 131089
200106bc:      	addi	a0, a0, 1604
200106c0:      	lui	a1, 131089
200106c4:      	addi	a2, a1, 1668
200106c8:      	li	a1, 64
200106cc:      	auipc	ra, 0
200106d0:      	jalr	916(ra)
200106d4:      	unimp	
200106d6:      	lui	a0, 131089
200106da:      	addi	a0, a0, 1684
200106de:      	lui	a1, 131089
200106e2:      	addi	a2, a1, 1760
200106e6:      	li	a1, 74
200106ea:      	auipc	ra, 0
200106ee:      	jalr	886(ra)
200106f2:      	unimp	
200106f4:      	lui	a0, 131089
200106f8:      	addi	a0, a0, 1792
200106fc:      	lui	a1, 131089
20010700:      	addi	a2, a1, 1852
20010704:      	li	a1, 60
20010708:      	auipc	ra, 0
2001070c:      	jalr	856(ra)
20010710:      	unimp	
20010712:      	lui	a0, 131089
20010716:      	addi	a0, a0, 1388
2001071a:      	lui	a1, 131089
2001071e:      	addi	a2, a1, 1868
20010722:      	li	a1, 72
20010726:      	auipc	ra, 0
2001072a:      	jalr	826(ra)
2001072e:      	unimp	
20010730:      	lui	a0, 131089
20010734:      	addi	a0, a0, 1884
20010738:      	lui	a1, 131089
2001073c:      	addi	a2, a1, 1924
20010740:      	li	a1, 40
20010744:      	auipc	ra, 0
20010748:      	jalr	796(ra)
2001074c:      	unimp	

2001074e <e310x_hal::clock::Clocks::freeze::hc5a7f5444295b78f>:
2001074e:      	addi	sp, sp, -16
20010750:      	sw	ra, 12(sp)
20010752:      	sw	s0, 8(sp)
20010754:      	sw	s1, 4(sp)
20010756:      	sw	s2, 0(sp)
20010758:      	mv	s0, a2
2001075a:      	mv	s2, a1
2001075c:      	mv	a1, a0
2001075e:      	lw	a2, 0(a0)
20010760:      	lw	a0, 4(a0)
20010762:      	lw	a1, 8(a1)
20010764:      	lui	a3, 262400
20010768:      	addi	a4, a3, 4
2001076c:      	lui	a3, 65544
20010770:      	sw	a4, 0(a3)
20010772:      	lw	a4, 0(a3)
20010774:      	bgez	a4, 0x20010772 <e310x_hal::clock::Clocks::freeze::hc5a7f5444295b78f+0x24>
20010778:      	lui	a3, 65544
2001077c:      	lw	a5, 8(a3)
2001077e:      	lui	a4, 1048496
20010782:      	addi	a4, a4, -1
20010784:      	and	a5, a5, a4
20010786:      	lui	s1, 64
2001078a:      	or	a5, a5, s1
2001078c:      	li	s1, 1
2001078e:      	sw	a5, 8(a3)
20010790:      	bne	a2, s1, 0x200107cc <e310x_hal::clock::Clocks::freeze::hc5a7f5444295b78f+0x7e>
20010794:      	addi	a2, a3, 4
20010798:      	lui	a4, 262144
2001079c:      	sw	a4, 0(a2)
2001079e:      	lw	a2, 4(a3)
200107a0:      	bgez	a2, 0x2001079e <e310x_hal::clock::Clocks::freeze::hc5a7f5444295b78f+0x50>
200107a4:      	lui	a2, 65544
200107a8:      	lw	a3, 8(a2)
200107aa:      	lui	a4, 32
200107ae:      	or	a3, a3, a4
200107b0:      	sw	a3, 8(a2)
200107b2:      	bne	a1, a0, 0x200107ec <e310x_hal::clock::Clocks::freeze::hc5a7f5444295b78f+0x9e>
200107b6:      	lw	a1, 8(a2)
200107b8:      	lui	a3, 64
200107bc:      	or	a1, a1, a3
200107be:      	sw	a1, 8(a2)
200107c0:      	addi	a1, a2, 12
200107c4:      	li	a2, 256
200107c8:      	sw	a2, 0(a1)
200107ca:      	j	0x200107f4 <e310x_hal::clock::Clocks::freeze::hc5a7f5444295b78f+0xa6>
200107cc:      	lui	a0, 3369
200107d0:      	addi	a0, a0, 576
200107d4:      	bne	a1, a0, 0x20010824 <e310x_hal::clock::Clocks::freeze::hc5a7f5444295b78f+0xd6>
200107d8:      	lui	a2, 65544
200107dc:      	lw	a1, 8(a2)
200107de:      	and	a3, a1, a4
200107e2:      	lui	a1, 64
200107e6:      	or	a3, a3, a1
200107e8:      	sw	a3, 8(a2)
200107ea:      	j	0x2001082e <e310x_hal::clock::Clocks::freeze::hc5a7f5444295b78f+0xe0>
200107ec:      	auipc	ra, 0
200107f0:      	jalr	-1000(ra)
200107f4:      	lui	a1, 65544
200107f8:      	lw	a2, 8(a1)
200107fa:      	lui	a3, 16
200107fc:      	or	a2, a2, a3
200107fe:      	sw	a2, 8(a1)
20010800:      	sw	zero, 0(a1)
20010804:      	li	a1, 1
20010806:      	beq	s2, a1, 0x20010846 <e310x_hal::clock::Clocks::freeze::hc5a7f5444295b78f+0xf8>
2001080a:      	lui	a1, 65536
2001080e:      	addi	a2, a1, 112
20010812:      	lui	a3, 262400
20010816:      	addi	a3, a3, 4
20010818:      	sw	a3, 0(a2)
2001081a:      	lw	a2, 112(a1)
2001081c:      	bgez	a2, 0x2001081a <e310x_hal::clock::Clocks::freeze::hc5a7f5444295b78f+0xcc>
20010820:      	lui	s0, 8
20010822:      	j	0x2001084e <e310x_hal::clock::Clocks::freeze::hc5a7f5444295b78f+0x100>
20010824:      	auipc	ra, 0
20010828:      	jalr	-1056(ra)
2001082c:      	lui	a1, 16
2001082e:      	lui	a2, 65544
20010832:      	lw	a3, 8(a2)
20010834:      	or	a1, a1, a3
20010836:      	sw	a1, 8(a2)
20010838:      	addi	a1, a2, 4
2001083c:      	sw	zero, 0(a1)
20010840:      	li	a1, 1
20010842:      	bne	s2, a1, 0x2001080a <e310x_hal::clock::Clocks::freeze::hc5a7f5444295b78f+0xbc>
20010846:      	lui	a1, 65536
2001084a:      	sw	zero, 112(a1)
2001084e:      	mv	a1, s0
20010850:      	lw	ra, 12(sp)
20010852:      	lw	s0, 8(sp)
20010854:      	lw	s1, 4(sp)
20010856:      	lw	s2, 0(sp)
20010858:      	addi	sp, sp, 16
2001085a:      	ret

2001085c <e310x_hal::clock::Clocks::coreclk::hd10f752f38fe1ec8>:
2001085c:      	lw	a0, 0(a0)
2001085e:      	ret

20010860 <<e310x::common::PRCI as e310x_hal::clock::PrciExt>::constrain::h4b3dbe56c8eb4369>:
20010860:      	sw	zero, 0(a0)
20010864:      	lui	a1, 3369
20010868:      	addi	a1, a1, 576
2001086c:      	sw	a1, 8(a0)
2001086e:      	ret

20010870 <<e310x::common::AONCLK as e310x_hal::clock::AonExt>::constrain::h81b544520711c9a0>:
20010870:      	li	a0, 0
20010872:      	ret

20010874 <<e310x_hal::device::DeviceResources as core::convert::From<e310x::Peripherals>>::from::h90f763c346aac9d7>:
20010874:      	sw	zero, 0(a0)
20010878:      	li	a1, 2
2001087a:      	sw	a1, 4(a0)
2001087c:      	li	a2, 1
2001087e:      	sw	a2, 8(a0)
20010880:      	sw	zero, 12(a0)
20010884:      	li	a2, 4
20010886:      	sw	a2, 16(a0)
20010888:      	sw	a1, 20(a0)
2001088a:      	sw	zero, 24(a0)
2001088e:      	li	a1, 8
20010890:      	sw	a1, 28(a0)
20010892:      	li	a1, 3
20010894:      	sw	a1, 32(a0)
20010896:      	ret

20010898 <<u32 as e310x_hal::time::U32Ext>::mhz::h0c1544d5934629c3>:
20010898:      	ret

2001089a <<e310x_hal::time::MegaHertz as core::convert::Into<e310x_hal::time::Hertz>>::into::h30b02fd6a5c06ce7>:
2001089a:      	lui	a1, 244
2001089e:      	addi	a1, a1, 576
200108a2:      	mul	a0, a0, a1
200108a6:      	ret

200108a8 <__read_mstatus>:
200108a8:      	csrr	a0, mstatus
200108ac:      	ret

200108ae <__set_mstatus>:
200108ae:      	csrs	mstatus, a0
200108b2:      	ret

200108b4 <__clear_mstatus>:
200108b4:      	csrc	mstatus, a0
200108b8:      	ret

200108ba <bare_metal::CriticalSection::new::ha8250626e1b964c3>:
200108ba:      	ret

200108bc <yarr_idle_task>:
200108bc:      	fence	rw, rw
200108c0:      	wfi	
200108c4:      	j	0x200108bc <yarr_idle_task>

200108c6 <yarr_init_process>:
200108c6:      	mv	a1, a0
200108c8:      	fence	rw, rw
200108cc:      	csrr	a2, mstatus
200108d0:      	lw	a4, 4(a0)
200108d2:      	addi	a0, a4, -1
200108d6:      	beqz	a4, 0x20010902 <yarr_init_process+0x3c>
200108d8:      	lw	a3, 0(a1)
200108da:      	lw	a1, 8(a1)
200108dc:      	slli	a0, a0, 2
200108de:      	add	a0, a0, a3
200108e0:      	sw	a1, 0(a0)
200108e2:      	li	a1, 1
200108e4:      	addi	a0, a4, -2
200108e8:      	beq	a4, a1, 0x20010916 <yarr_init_process+0x50>
200108ec:      	lui	a1, 2
200108ee:      	addi	a1, a1, -1912
200108f2:      	or	a1, a1, a2
200108f4:      	slli	a0, a0, 2
200108f6:      	add	a2, a3, a0
200108fa:      	addi	a0, a3, -124
200108fe:      	sw	a1, 0(a2)
20010900:      	ret
20010902:      	lui	a1, 131089
20010906:      	addi	a2, a1, 1996
2001090a:      	li	a1, 0
2001090c:      	auipc	ra, 0
20010910:      	jalr	384(ra)
20010914:      	unimp	
20010916:      	lui	a1, 131089
2001091a:      	addi	a2, a1, 2012
2001091e:      	li	a1, 1
20010920:      	auipc	ra, 0
20010924:      	jalr	364(ra)
20010928:      	unimp	

2001092a <ExceptionHandler>:
2001092a:      	j	0x2001092a <ExceptionHandler>

2001092c <UserTimer>:
2001092c:      	j	0x2001092c <UserTimer>

2001092e <default_pre_init>:
2001092e:      	ret

20010930 <default_mp_hook>:
20010930:      	csrr	a0, mhartid
20010934:      	beqz	a0, 0x2001093c <default_mp_hook+0xc>
20010936:      	wfi	
2001093a:      	j	0x20010936 <default_mp_hook+0x6>
2001093c:      	li	a0, 1
2001093e:      	ret

20010940 <yarr::scheduler::start::hbcf1a729aa901422>:
20010940:      	addi	sp, sp, -32
20010942:      	sw	ra, 28(sp)
20010944:      	sw	s0, 24(sp)
20010946:      	sw	s1, 20(sp)
20010948:      	sw	s2, 16(sp)
2001094a:      	sw	s3, 12(sp)
2001094c:      	sw	s4, 8(sp)
2001094e:      	fence	rw, rw
20010952:      	lui	s2, 524288
20010956:      	mv	s3, s2
2001095a:      	lw	a0, 4(s3)
2001095e:      	bnez	a0, 0x2001096a <yarr::scheduler::start::hbcf1a729aa901422+0x2a>
20010960:      	auipc	ra, 0
20010964:      	jalr	228(ra)
20010968:      	unimp	
2001096a:      	li	s1, 0
2001096c:      	li	s0, 0
2001096e:      	addi	s4, a0, -1
20010972:      	lw	a0, 0(s2)
20010976:      	add	a0, a0, s1
20010978:      	auipc	ra, 0
2001097c:      	jalr	-178(ra)
20010980:      	beq	s4, s0, 0x20010960 <yarr::scheduler::start::hbcf1a729aa901422+0x20>
20010984:      	lw	a1, 4(s3)
20010988:      	addi	s0, s0, 1
2001098a:      	addi	s1, s1, 20
2001098c:      	bltu	s0, a1, 0x20010972 <yarr::scheduler::start::hbcf1a729aa901422+0x32>
20010990:      	lui	a0, 131090
20010994:      	addi	a2, a0, -1964
20010998:      	mv	a0, s0
2001099a:      	auipc	ra, 0
2001099e:      	jalr	242(ra)
		...
200109ae:      	unimp	

200109b0 <machine_trap_vector>:
200109b0:      	addi	sp, sp, -124
200109b4:      	sw	ra, 0(sp)
200109b8:      	sw	sp, 4(sp)
200109bc:      	sw	gp, 8(sp)
200109c0:      	sw	tp, 12(sp)
200109c4:      	sw	t0, 16(sp)
200109c8:      	sw	t1, 20(sp)
200109cc:      	sw	t2, 24(sp)
200109d0:      	sw	s0, 28(sp)
200109d4:      	sw	s1, 32(sp)
200109d8:      	sw	a0, 36(sp)
200109dc:      	sw	a1, 40(sp)
200109e0:      	sw	a2, 44(sp)
200109e4:      	sw	a3, 48(sp)
200109e8:      	sw	a4, 52(sp)
200109ec:      	sw	a5, 56(sp)
200109f0:      	sw	a6, 60(sp)
200109f4:      	sw	a7, 64(sp)
200109f8:      	sw	s2, 68(sp)
200109fc:      	sw	s3, 72(sp)
20010a00:      	sw	s4, 76(sp)
20010a04:      	sw	s5, 80(sp)
20010a08:      	sw	s6, 84(sp)
20010a0c:      	sw	s7, 88(sp)
20010a10:      	sw	s8, 92(sp)
20010a14:      	sw	s9, 96(sp)
20010a18:      	sw	s10, 100(sp)
20010a1c:      	sw	s11, 104(sp)
20010a20:      	sw	t3, 108(sp)
20010a24:      	sw	t4, 112(sp)
20010a28:      	sw	t5, 116(sp)
20010a2c:      	sw	t6, 120(sp)
20010a30:      	csrr	a0, mstatus
20010a34:      	sw	a0, 124(sp)
20010a38:      	csrr	a0, mcause
20010a3c:      	csrr	a1, mepc
20010a40:      	j	0x200109b0 <machine_trap_vector>

20010a44 <start_first_task>:
20010a44:      	wfi	
20010a48:      	ret

20010a4c <core::ptr::drop_in_place<&core::iter::adapters::copied::Copied<core::slice::iter::Iter<u8>>>::hba75f9e64379e0d0>:
20010a4c:      	ret

20010a4e <<T as core::any::Any>::type_id::h6d5fadc9889de291>:
20010a4e:      	lui	a0, 337864
20010a52:      	addi	a0, a0, 854
20010a56:      	lui	a1, 536935
20010a5a:      	addi	a1, a1, 1137
20010a5e:      	ret

20010a60 <core::panicking::panic::hbbfd5969b5c86e6f>:
20010a60:      	addi	sp, sp, -48
20010a62:      	sw	ra, 44(sp)
20010a64:      	sw	a0, 32(sp)
20010a66:      	sw	a1, 36(sp)
20010a68:      	addi	a0, sp, 32
20010a6a:      	sw	a0, 8(sp)
20010a6c:      	li	a0, 1
20010a6e:      	sw	a0, 12(sp)
20010a70:      	sw	zero, 16(sp)
20010a72:      	lui	a0, 131090
20010a76:      	addi	a0, a0, -1948
20010a7a:      	sw	a0, 24(sp)
20010a7c:      	sw	zero, 28(sp)
20010a7e:      	addi	a0, sp, 8
20010a80:      	mv	a1, a2
20010a82:      	auipc	ra, 0
20010a86:      	jalr	74(ra)
20010a8a:      	unimp	

20010a8c <core::panicking::panic_bounds_check::h9db9f62c2a7a3e0f>:
20010a8c:      	addi	sp, sp, -64
20010a8e:      	sw	ra, 60(sp)
20010a90:      	sw	a0, 8(sp)
20010a92:      	sw	a1, 12(sp)
20010a94:      	addi	a0, sp, 12
20010a96:      	sw	a0, 40(sp)
20010a98:      	lui	a0, 131089
20010a9c:      	addi	a0, a0, 178
20010aa0:      	sw	a0, 44(sp)
20010aa2:      	addi	a1, sp, 8
20010aa4:      	sw	a1, 48(sp)
20010aa6:      	sw	a0, 52(sp)
20010aa8:      	lui	a0, 131090
20010aac:      	addi	a0, a0, -1896
20010ab0:      	sw	a0, 16(sp)
20010ab2:      	li	a0, 2
20010ab4:      	sw	a0, 20(sp)
20010ab6:      	sw	zero, 24(sp)
20010ab8:      	addi	a1, sp, 40
20010aba:      	sw	a1, 32(sp)
20010abc:      	sw	a0, 36(sp)
20010abe:      	addi	a0, sp, 16
20010ac0:      	mv	a1, a2
20010ac2:      	auipc	ra, 0
20010ac6:      	jalr	10(ra)
20010aca:      	unimp	

20010acc <core::panicking::panic_fmt::h62c187abafa44ea5>:
20010acc:      	addi	sp, sp, -32
20010ace:      	sw	ra, 28(sp)
20010ad0:      	lui	a2, 131090
20010ad4:      	addi	a2, a2, -1948
20010ad8:      	sw	a2, 8(sp)
20010ada:      	lui	a2, 131090
20010ade:      	addi	a2, a2, -1880
20010ae2:      	sw	a2, 12(sp)
20010ae4:      	sw	a0, 16(sp)
20010ae6:      	sw	a1, 20(sp)
20010ae8:      	li	a0, 1
20010aea:      	sb	a0, 24(sp)
20010aee:      	addi	a0, sp, 8
20010af0:      	auipc	ra, 0
20010af4:      	jalr	-1954(ra)
20010af8:      	unimp	

20010afa <core::fmt::Formatter::pad_integral::ha10cb533649ec68e>:
20010afa:      	addi	sp, sp, -48
20010afc:      	sw	ra, 44(sp)
20010afe:      	sw	s0, 40(sp)
20010b00:      	sw	s1, 36(sp)
20010b02:      	sw	s2, 32(sp)
20010b04:      	sw	s3, 28(sp)
20010b06:      	sw	s4, 24(sp)
20010b08:      	sw	s5, 20(sp)
20010b0a:      	sw	s6, 16(sp)
20010b0c:      	sw	s7, 12(sp)
20010b0e:      	sw	s8, 8(sp)
20010b10:      	sw	s9, 4(sp)
20010b12:      	sw	s10, 0(sp)
20010b14:      	mv	s3, a5
20010b16:      	mv	s2, a4
20010b18:      	mv	s6, a3
20010b1a:      	mv	s5, a2
20010b1c:      	mv	s8, a0
20010b1e:      	beqz	a1, 0x20010b6a <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x70>
20010b20:      	lw	a0, 0(s8)
20010b24:      	andi	a1, a0, 1
20010b28:      	lui	s4, 272
20010b2c:      	beqz	a1, 0x20010b32 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x38>
20010b2e:      	li	s4, 43
20010b32:      	add	s0, a1, s3
20010b36:      	andi	a0, a0, 4
20010b38:      	beqz	a0, 0x20010b7a <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x80>
20010b3a:      	li	a0, 16
20010b3c:      	bgeu	s6, a0, 0x20010b84 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x8a>
20010b40:      	li	a0, 0
20010b42:      	beqz	s6, 0x20010b5e <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x64>
20010b46:      	li	a1, -65
20010b4a:      	mv	a2, s6
20010b4c:      	mv	a3, s5
20010b4e:      	lb	a4, 0(a3)
20010b52:      	addi	a3, a3, 1
20010b54:      	slt	a4, a1, a4
20010b58:      	addi	a2, a2, -1
20010b5a:      	add	a0, a0, a4
20010b5c:      	bnez	a2, 0x20010b4e <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x54>
20010b5e:      	add	s0, s0, a0
20010b60:      	mv	s7, s5
20010b62:      	lw	a0, 8(s8)
20010b66:      	bnez	a0, 0x20010b9a <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0xa0>
20010b68:      	j	0x20010bcc <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0xd2>
20010b6a:      	lw	a0, 0(s8)
20010b6e:      	addi	s0, s3, 1
20010b72:      	li	s4, 45
20010b76:      	andi	a0, a0, 4
20010b78:      	bnez	a0, 0x20010b3a <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x40>
20010b7a:      	li	s7, 0
20010b7c:      	lw	a0, 8(s8)
20010b80:      	bnez	a0, 0x20010b9a <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0xa0>
20010b82:      	j	0x20010bcc <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0xd2>
20010b84:      	mv	a0, s5
20010b86:      	mv	a1, s6
20010b88:      	auipc	ra, 0
20010b8c:      	jalr	568(ra)
20010b90:      	add	s0, s0, a0
20010b92:      	mv	s7, s5
20010b94:      	lw	a0, 8(s8)
20010b98:      	beqz	a0, 0x20010bcc <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0xd2>
20010b9a:      	lw	s1, 12(s8)
20010b9e:      	bgeu	s0, s1, 0x20010bcc <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0xd2>
20010ba2:      	lbu	a0, 0(s8)
20010ba6:      	andi	a0, a0, 8
20010ba8:      	bnez	a0, 0x20010c0c <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x112>
20010baa:      	lbu	a1, 32(s8)
20010bae:      	li	a2, 3
20010bb0:      	li	a0, 1
20010bb2:      	beq	a1, a2, 0x20010bb8 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0xbe>
20010bb6:      	mv	a0, a1
20010bb8:      	andi	a1, a0, 3
20010bbc:      	sub	a0, s1, s0
20010bc0:      	beqz	a1, 0x20010c56 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x15c>
20010bc2:      	li	a2, 1
20010bc4:      	bne	a1, a2, 0x20010c5c <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x162>
20010bc8:      	li	s9, 0
20010bca:      	j	0x20010c66 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x16c>
20010bcc:      	mv	a0, s8
20010bce:      	mv	a1, s4
20010bd0:      	mv	a2, s7
20010bd2:      	mv	a3, s6
20010bd4:      	auipc	ra, 0
20010bd8:      	jalr	416(ra)
20010bdc:      	li	s5, 1
20010bde:      	bnez	a0, 0x20010d04 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x20a>
20010be2:      	lw	a1, 28(s8)
20010be6:      	lw	a0, 24(s8)
20010bea:      	lw	a5, 12(a1)
20010bec:      	mv	a1, s2
20010bee:      	mv	a2, s3
20010bf0:      	lw	ra, 44(sp)
20010bf2:      	lw	s0, 40(sp)
20010bf4:      	lw	s1, 36(sp)
20010bf6:      	lw	s2, 32(sp)
20010bf8:      	lw	s3, 28(sp)
20010bfa:      	lw	s4, 24(sp)
20010bfc:      	lw	s5, 20(sp)
20010bfe:      	lw	s6, 16(sp)
20010c00:      	lw	s7, 12(sp)
20010c02:      	lw	s8, 8(sp)
20010c04:      	lw	s9, 4(sp)
20010c06:      	lw	s10, 0(sp)
20010c08:      	addi	sp, sp, 48
20010c0a:      	jr	a5
20010c0c:      	lw	s9, 4(s8)
20010c10:      	li	a0, 48
20010c14:      	lbu	s10, 32(s8)
20010c18:      	sw	a0, 4(s8)
20010c1c:      	li	s5, 1
20010c1e:      	sb	s5, 32(s8)
20010c22:      	mv	a0, s8
20010c24:      	mv	a1, s4
20010c26:      	mv	a2, s7
20010c28:      	mv	a3, s6
20010c2a:      	auipc	ra, 0
20010c2e:      	jalr	330(ra)
20010c32:      	bnez	a0, 0x20010d04 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x20a>
20010c34:      	lbu	a1, 32(s8)
20010c38:      	li	a2, 3
20010c3a:      	li	a0, 1
20010c3c:      	beq	a1, a2, 0x20010c42 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x148>
20010c40:      	mv	a0, a1
20010c42:      	andi	a1, a0, 3
20010c46:      	sub	a0, s1, s0
20010c4a:      	beqz	a1, 0x20010cd4 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x1da>
20010c4c:      	li	a2, 1
20010c4e:      	bne	a1, a2, 0x20010cda <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x1e0>
20010c52:      	li	s4, 0
20010c54:      	j	0x20010ce4 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x1ea>
20010c56:      	mv	s9, a0
20010c58:      	li	a0, 0
20010c5a:      	j	0x20010c66 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x16c>
20010c5c:      	addi	a1, a0, 1
20010c60:      	srli	a0, a0, 1
20010c62:      	srli	s9, a1, 1
20010c66:      	lw	s5, 24(s8)
20010c6a:      	lw	s1, 28(s8)
20010c6e:      	lw	s10, 4(s8)
20010c72:      	addi	s0, a0, 1
20010c76:      	addi	s0, s0, -1
20010c78:      	beqz	s0, 0x20010c86 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x18c>
20010c7a:      	lw	a2, 16(s1)
20010c7c:      	mv	a0, s5
20010c7e:      	mv	a1, s10
20010c80:      	jalr	a2
20010c82:      	beqz	a0, 0x20010c76 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x17c>
20010c84:      	j	0x20010d02 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x208>
20010c86:      	lui	a0, 272
20010c8a:      	li	s5, 1
20010c8c:      	beq	s10, a0, 0x20010d04 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x20a>
20010c90:      	mv	a0, s8
20010c92:      	mv	a1, s4
20010c94:      	mv	a2, s7
20010c96:      	mv	a3, s6
20010c98:      	auipc	ra, 0
20010c9c:      	jalr	220(ra)
20010ca0:      	bnez	a0, 0x20010d04 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x20a>
20010ca2:      	lw	a1, 28(s8)
20010ca6:      	lw	a0, 24(s8)
20010caa:      	lw	a3, 12(a1)
20010cac:      	mv	a1, s2
20010cae:      	mv	a2, s3
20010cb0:      	jalr	a3
20010cb2:      	bnez	a0, 0x20010d04 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x20a>
20010cb4:      	lw	s2, 24(s8)
20010cb8:      	lw	s1, 28(s8)
20010cbc:      	li	s0, 0
20010cbe:      	beq	s9, s0, 0x20010d6c <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x272>
20010cc2:      	lw	a2, 16(s1)
20010cc4:      	addi	s0, s0, 1
20010cc6:      	mv	a0, s2
20010cc8:      	mv	a1, s10
20010cca:      	jalr	a2
20010ccc:      	beqz	a0, 0x20010cbe <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x1c4>
20010cce:      	addi	a0, s0, -1
20010cd2:      	j	0x20010d6e <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x274>
20010cd4:      	mv	s4, a0
20010cd6:      	li	a0, 0
20010cd8:      	j	0x20010ce4 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x1ea>
20010cda:      	addi	a1, a0, 1
20010cde:      	srli	a0, a0, 1
20010ce0:      	srli	s4, a1, 1
20010ce4:      	lw	s5, 24(s8)
20010ce8:      	lw	s1, 28(s8)
20010cec:      	lw	s6, 4(s8)
20010cf0:      	addi	s0, a0, 1
20010cf4:      	addi	s0, s0, -1
20010cf6:      	beqz	s0, 0x20010d22 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x228>
20010cf8:      	lw	a2, 16(s1)
20010cfa:      	mv	a0, s5
20010cfc:      	mv	a1, s6
20010cfe:      	jalr	a2
20010d00:      	beqz	a0, 0x20010cf4 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x1fa>
20010d02:      	li	s5, 1
20010d04:      	mv	a0, s5
20010d06:      	lw	ra, 44(sp)
20010d08:      	lw	s0, 40(sp)
20010d0a:      	lw	s1, 36(sp)
20010d0c:      	lw	s2, 32(sp)
20010d0e:      	lw	s3, 28(sp)
20010d10:      	lw	s4, 24(sp)
20010d12:      	lw	s5, 20(sp)
20010d14:      	lw	s6, 16(sp)
20010d16:      	lw	s7, 12(sp)
20010d18:      	lw	s8, 8(sp)
20010d1a:      	lw	s9, 4(sp)
20010d1c:      	lw	s10, 0(sp)
20010d1e:      	addi	sp, sp, 48
20010d20:      	ret
20010d22:      	lui	a0, 272
20010d26:      	li	s5, 1
20010d28:      	beq	s6, a0, 0x20010d04 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x20a>
20010d2c:      	lw	a1, 28(s8)
20010d30:      	lw	a0, 24(s8)
20010d34:      	lw	a3, 12(a1)
20010d36:      	mv	a1, s2
20010d38:      	mv	a2, s3
20010d3a:      	jalr	a3
20010d3c:      	bnez	a0, 0x20010d04 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x20a>
20010d3e:      	lw	s2, 24(s8)
20010d42:      	lw	s1, 28(s8)
20010d46:      	li	s0, 0
20010d48:      	beq	s4, s0, 0x20010d60 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x266>
20010d4c:      	lw	a2, 16(s1)
20010d4e:      	addi	s0, s0, 1
20010d50:      	mv	a0, s2
20010d52:      	mv	a1, s6
20010d54:      	jalr	a2
20010d56:      	beqz	a0, 0x20010d48 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x24e>
20010d58:      	addi	a0, s0, -1
20010d5c:      	bltu	a0, s4, 0x20010d04 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x20a>
20010d60:      	li	s5, 0
20010d62:      	sw	s9, 4(s8)
20010d66:      	sb	s10, 32(s8)
20010d6a:      	j	0x20010d04 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x20a>
20010d6c:      	mv	a0, s9
20010d6e:      	sltu	s5, a0, s9
20010d72:      	j	0x20010d04 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x20a>

20010d74 <core::fmt::Formatter::pad_integral::write_prefix::h9c2d4994c87ce818>:
20010d74:      	addi	sp, sp, -16
20010d76:      	sw	ra, 12(sp)
20010d78:      	sw	s0, 8(sp)
20010d7a:      	sw	s1, 4(sp)
20010d7c:      	sw	s2, 0(sp)
20010d7e:      	lui	a4, 272
20010d82:      	mv	s2, a3
20010d84:      	mv	s1, a2
20010d86:      	mv	s0, a0
20010d88:      	beq	a1, a4, 0x20010d9a <core::fmt::Formatter::pad_integral::write_prefix::h9c2d4994c87ce818+0x26>
20010d8c:      	lw	a2, 28(s0)
20010d8e:      	lw	a0, 24(s0)
20010d90:      	lw	a2, 16(a2)
20010d92:      	jalr	a2
20010d94:      	mv	a1, a0
20010d96:      	li	a0, 1
20010d98:      	bnez	a1, 0x20010db4 <core::fmt::Formatter::pad_integral::write_prefix::h9c2d4994c87ce818+0x40>
20010d9a:      	beqz	s1, 0x20010db2 <core::fmt::Formatter::pad_integral::write_prefix::h9c2d4994c87ce818+0x3e>
20010d9c:      	lw	a1, 28(s0)
20010d9e:      	lw	a0, 24(s0)
20010da0:      	lw	a5, 12(a1)
20010da2:      	mv	a1, s1
20010da4:      	mv	a2, s2
20010da6:      	lw	ra, 12(sp)
20010da8:      	lw	s0, 8(sp)
20010daa:      	lw	s1, 4(sp)
20010dac:      	lw	s2, 0(sp)
20010dae:      	addi	sp, sp, 16
20010db0:      	jr	a5
20010db2:      	li	a0, 0
20010db4:      	lw	ra, 12(sp)
20010db6:      	lw	s0, 8(sp)
20010db8:      	lw	s1, 4(sp)
20010dba:      	lw	s2, 0(sp)
20010dbc:      	addi	sp, sp, 16
20010dbe:      	ret

20010dc0 <core::str::count::do_count_chars::hcb0097adeed44bbf>:
20010dc0:      	mv	a2, a0
20010dc2:      	addi	a0, a0, 3
20010dc4:      	andi	a0, a0, -4
20010dc6:      	sub	a7, a0, a2
20010dca:      	bltu	a1, a7, 0x20010de0 <core::str::count::do_count_chars::hcb0097adeed44bbf+0x20>
20010dce:      	sub	a6, a1, a7
20010dd2:      	sltiu	a3, a6, 4
20010dd6:      	li	a4, 4
20010dd8:      	sltu	a4, a4, a7
20010ddc:      	or	a3, a3, a4
20010dde:      	beqz	a3, 0x20010dfa <core::str::count::do_count_chars::hcb0097adeed44bbf+0x3a>
20010de0:      	li	a0, 0
20010de2:      	beqz	a1, 0x20010df8 <core::str::count::do_count_chars::hcb0097adeed44bbf+0x38>
20010de4:      	li	a3, -65
20010de8:      	lb	a4, 0(a2)
20010dec:      	addi	a2, a2, 1
20010dee:      	slt	a4, a3, a4
20010df2:      	addi	a1, a1, -1
20010df4:      	add	a0, a0, a4
20010df6:      	bnez	a1, 0x20010de8 <core::str::count::do_count_chars::hcb0097adeed44bbf+0x28>
20010df8:      	ret
20010dfa:      	andi	a4, a6, 3
20010dfe:      	li	a3, 0
20010e00:      	beqz	a7, 0x20010e1e <core::str::count::do_count_chars::hcb0097adeed44bbf+0x5e>
20010e04:      	sub	a0, a2, a0
20010e08:      	li	t0, -65
20010e0c:      	mv	a5, a2
20010e0e:      	lb	a1, 0(a5)
20010e12:      	addi	a5, a5, 1
20010e14:      	slt	a1, t0, a1
20010e18:      	addi	a0, a0, 1
20010e1a:      	add	a3, a3, a1
20010e1c:      	bnez	a0, 0x20010e0e <core::str::count::do_count_chars::hcb0097adeed44bbf+0x4e>
20010e1e:      	add	t0, a2, a7
20010e22:      	li	a1, 0
20010e24:      	beqz	a4, 0x20010e42 <core::str::count::do_count_chars::hcb0097adeed44bbf+0x82>
20010e26:      	andi	a0, a6, -4
20010e2a:      	add	a2, t0, a0
20010e2e:      	li	a0, -65
20010e32:      	lb	a5, 0(a2)
20010e36:      	addi	a2, a2, 1
20010e38:      	slt	a5, a0, a5
20010e3c:      	addi	a4, a4, -1
20010e3e:      	add	a1, a1, a5
20010e40:      	bnez	a4, 0x20010e32 <core::str::count::do_count_chars::hcb0097adeed44bbf+0x72>
20010e42:      	srli	a2, a6, 2
20010e46:      	lui	a0, 4112
20010e4a:      	addi	t4, a0, 257
20010e4e:      	lui	a0, 4080
20010e52:      	addi	a7, a0, 255
20010e56:      	lui	a0, 16
20010e58:      	addi	a6, a0, 1
20010e5c:      	add	a0, a1, a3
20010e60:      	j	0x20010e88 <core::str::count::do_count_chars::hcb0097adeed44bbf+0xc8>
20010e62:      	slli	a1, t2, 2
20010e66:      	add	t0, t0, a1
20010e68:      	sub	a2, t1, t2
20010e6c:      	andi	a1, t2, 3
20010e70:      	and	a3, a5, a7
20010e74:      	srli	a4, a5, 8
20010e78:      	and	a4, a4, a7
20010e7c:      	add	a3, a3, a4
20010e7e:      	mul	a3, a3, a6
20010e82:      	srli	a3, a3, 16
20010e84:      	add	a0, a0, a3
20010e86:      	bnez	a1, 0x20010f00 <core::str::count::do_count_chars::hcb0097adeed44bbf+0x140>
20010e88:      	beqz	a2, 0x20010df8 <core::str::count::do_count_chars::hcb0097adeed44bbf+0x38>
20010e8a:      	mv	t1, a2
20010e8c:      	li	a1, 192
20010e90:      	mv	t2, a2
20010e92:      	bltu	a2, a1, 0x20010e9a <core::str::count::do_count_chars::hcb0097adeed44bbf+0xda>
20010e96:      	li	t2, 192
20010e9a:      	andi	a1, t2, 252
20010e9e:      	slli	a1, a1, 2
20010ea0:      	add	t3, t0, a1
20010ea4:      	li	a5, 0
20010ea6:      	beqz	a1, 0x20010e62 <core::str::count::do_count_chars::hcb0097adeed44bbf+0xa2>
20010ea8:      	mv	a1, t0
20010eaa:      	lw	a2, 0(a1)
20010eac:      	not	a3, a2
20010eb0:      	srli	a3, a3, 7
20010eb2:      	srli	a2, a2, 6
20010eb4:      	lw	a4, 4(a1)
20010eb6:      	or	a2, a2, a3
20010eb8:      	and	a2, a2, t4
20010ebc:      	add	a2, a2, a5
20010ebe:      	not	a3, a4
20010ec2:      	srli	a3, a3, 7
20010ec4:      	srli	a4, a4, 6
20010ec6:      	lw	a5, 8(a1)
20010ec8:      	or	a3, a3, a4
20010eca:      	and	a3, a3, t4
20010ece:      	add	a2, a2, a3
20010ed0:      	not	a3, a5
20010ed4:      	srli	a3, a3, 7
20010ed6:      	srli	a4, a5, 6
20010eda:      	lw	a5, 12(a1)
20010edc:      	or	a3, a3, a4
20010ede:      	and	a3, a3, t4
20010ee2:      	add	a2, a2, a3
20010ee4:      	not	a3, a5
20010ee8:      	srli	a3, a3, 7
20010eea:      	srli	a4, a5, 6
20010eee:      	or	a3, a3, a4
20010ef0:      	and	a3, a3, t4
20010ef4:      	addi	a1, a1, 16
20010ef6:      	add	a5, a3, a2
20010efa:      	bne	a1, t3, 0x20010eaa <core::str::count::do_count_chars::hcb0097adeed44bbf+0xea>
20010efe:      	j	0x20010e62 <core::str::count::do_count_chars::hcb0097adeed44bbf+0xa2>
20010f00:      	li	a1, 192
20010f04:      	bltu	t1, a1, 0x20010f0c <core::str::count::do_count_chars::hcb0097adeed44bbf+0x14c>
20010f08:      	li	t1, 192
20010f0c:      	li	a1, 0
20010f0e:      	andi	a2, t1, 3
20010f12:      	slli	a2, a2, 2
20010f14:      	lw	a3, 0(t3)
20010f18:      	addi	t3, t3, 4
20010f1a:      	not	a4, a3
20010f1e:      	srli	a4, a4, 7
20010f20:      	srli	a3, a3, 6
20010f22:      	or	a3, a3, a4
20010f24:      	and	a3, a3, t4
20010f28:      	addi	a2, a2, -4
20010f2a:      	add	a1, a1, a3
20010f2c:      	bnez	a2, 0x20010f14 <core::str::count::do_count_chars::hcb0097adeed44bbf+0x154>
20010f2e:      	and	a2, a1, a7
20010f32:      	srli	a1, a1, 8
20010f34:      	and	a1, a1, a7
20010f38:      	add	a1, a1, a2
20010f3a:      	mul	a1, a1, a6
20010f3e:      	srli	a1, a1, 16
20010f40:      	add	a0, a0, a1
20010f42:      	ret

20010f44 <core::fmt::num::imp::fmt_u32::h89559eb00af7d566>:
20010f44:      	addi	sp, sp, -64
20010f46:      	sw	ra, 60(sp)
20010f48:      	sw	s0, 56(sp)
20010f4a:      	sw	s1, 52(sp)
20010f4c:      	mv	a6, a2
20010f4e:      	srli	a3, a0, 4
20010f52:      	li	a4, 625
20010f56:      	li	a2, 39
20010f5a:      	bgeu	a3, a4, 0x20010f7e <core::fmt::num::imp::fmt_u32::h89559eb00af7d566+0x3a>
20010f5e:      	li	a3, 99
20010f62:      	bltu	a3, a0, 0x20011016 <core::fmt::num::imp::fmt_u32::h89559eb00af7d566+0xd2>
20010f66:      	li	a3, 10
20010f68:      	bgeu	a0, a3, 0x20011060 <core::fmt::num::imp::fmt_u32::h89559eb00af7d566+0x11c>
20010f6c:      	addi	a2, a2, -1
20010f6e:      	addi	a3, sp, 13
20010f72:      	add	a3, a3, a2
20010f74:      	addi	a0, a0, 48
20010f78:      	sb	a0, 0(a3)
20010f7c:      	j	0x20011084 <core::fmt::num::imp::fmt_u32::h89559eb00af7d566+0x140>
20010f7e:      	li	a2, 0
20010f80:      	lui	a3, 858993
20010f84:      	addi	t0, a3, 1881
20010f88:      	lui	a3, 2
20010f8a:      	addi	t2, a3, 1808
20010f8e:      	lui	a3, 1
20010f90:      	addi	t3, a3, 1147
20010f94:      	li	a7, 100
20010f98:      	lui	a4, 131090
20010f9c:      	addi	t5, a4, -1864
20010fa0:      	addi	t1, sp, 13
20010fa4:      	lui	a5, 24414
20010fa8:      	addi	t4, a5, 255
20010fac:      	mv	a3, a0
20010fae:      	mulhu	a0, a0, t0
20010fb2:      	srli	a0, a0, 13
20010fb4:      	mul	a5, a0, t2
20010fb8:      	sub	a5, a3, a5
20010fbc:      	slli	a4, a5, 16
20010fc0:      	srli	a4, a4, 18
20010fc2:      	mul	a4, a4, t3
20010fc6:      	srli	a4, a4, 17
20010fc8:      	slli	t6, a4, 1
20010fcc:      	mul	a4, a4, a7
20010fd0:      	sub	a4, a5, a4
20010fd4:      	slli	a4, a4, 17
20010fd6:      	srli	s0, a4, 16
20010fda:      	add	a5, t6, t5
20010fde:      	add	a4, t1, a2
20010fe2:      	lbu	t6, 0(a5)
20010fe6:      	lb	a5, 1(a5)
20010fea:      	add	s0, s0, t5
20010fec:      	lb	s1, 1(s0)
20010ff0:      	lbu	s0, 0(s0)
20010ff4:      	sb	a5, 36(a4)
20010ff8:      	sb	t6, 35(a4)
20010ffc:      	sb	s1, 38(a4)
20011000:      	sb	s0, 37(a4)
20011004:      	addi	a2, a2, -4
20011006:      	bltu	t4, a3, 0x20010fac <core::fmt::num::imp::fmt_u32::h89559eb00af7d566+0x68>
2001100a:      	addi	a2, a2, 39
2001100e:      	li	a3, 99
20011012:      	bgeu	a3, a0, 0x20010f66 <core::fmt::num::imp::fmt_u32::h89559eb00af7d566+0x22>
20011016:      	slli	a3, a0, 16
2001101a:      	srli	a3, a3, 18
2001101c:      	lui	a4, 1
2001101e:      	addi	a4, a4, 1147
20011022:      	mul	a3, a3, a4
20011026:      	srli	a3, a3, 17
20011028:      	li	a4, 100
2001102c:      	mul	a4, a3, a4
20011030:      	sub	a0, a0, a4
20011032:      	slli	a0, a0, 17
20011034:      	srli	a0, a0, 16
20011036:      	addi	a2, a2, -2
20011038:      	lui	a4, 131090
2001103c:      	addi	a4, a4, -1864
20011040:      	add	a0, a0, a4
20011042:      	lb	a4, 1(a0)
20011046:      	lbu	a0, 0(a0)
2001104a:      	addi	a5, sp, 13
2001104e:      	add	a5, a5, a2
20011050:      	sb	a4, 1(a5)
20011054:      	sb	a0, 0(a5)
20011058:      	mv	a0, a3
2001105a:      	li	a3, 10
2001105c:      	bltu	a0, a3, 0x20010f6c <core::fmt::num::imp::fmt_u32::h89559eb00af7d566+0x28>
20011060:      	slli	a0, a0, 1
20011062:      	addi	a2, a2, -2
20011064:      	lui	a3, 131090
20011068:      	addi	a3, a3, -1864
2001106c:      	add	a0, a0, a3
2001106e:      	lb	a3, 1(a0)
20011072:      	lbu	a0, 0(a0)
20011076:      	addi	a4, sp, 13
2001107a:      	add	a4, a4, a2
2001107c:      	sb	a3, 1(a4)
20011080:      	sb	a0, 0(a4)
20011084:      	addi	a0, sp, 13
20011088:      	add	a4, a0, a2
2001108c:      	li	a0, 39
20011090:      	sub	a5, a0, a2
20011094:      	lui	a0, 131090
20011098:      	addi	a2, a0, -1948
2001109c:      	mv	a0, a6
2001109e:      	li	a3, 0
200110a0:      	auipc	ra, 0
200110a4:      	jalr	-1446(ra)
200110a8:      	lw	ra, 60(sp)
200110aa:      	lw	s0, 56(sp)
200110ac:      	lw	s1, 52(sp)
200110ae:      	addi	sp, sp, 64
200110b0:      	ret

200110b2 <core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt::h0f29cfa090d3fc38>:
200110b2:      	lw	a0, 0(a0)
200110b4:      	mv	a2, a1
200110b6:      	li	a1, 1
200110b8:      	auipc	t1, 0
200110bc:      	jr	-372(t1)

200110c0 <compiler_builtins::mem::memcpy::h5d3d6687dd26525b>:
200110c0:      	li	a3, 15
200110c2:      	bgeu	a3, a2, 0x2001113a <compiler_builtins::mem::memcpy::h5d3d6687dd26525b+0x7a>
200110c6:      	neg	a3, a0
200110ca:      	andi	a6, a3, 3
200110ce:      	add	t2, a0, a6
200110d2:      	beqz	a6, 0x200110ea <compiler_builtins::mem::memcpy::h5d3d6687dd26525b+0x2a>
200110d6:      	mv	a5, a0
200110d8:      	mv	a3, a1
200110da:      	lb	a4, 0(a3)
200110de:      	sb	a4, 0(a5)
200110e2:      	addi	a5, a5, 1
200110e4:      	addi	a3, a3, 1
200110e6:      	bltu	a5, t2, 0x200110da <compiler_builtins::mem::memcpy::h5d3d6687dd26525b+0x1a>
200110ea:      	add	a7, a1, a6
200110ee:      	sub	a6, a2, a6
200110f2:      	andi	t0, a6, -4
200110f6:      	andi	a1, a7, 3
200110fa:      	add	a3, t2, t0
200110fe:      	beqz	a1, 0x20011140 <compiler_builtins::mem::memcpy::h5d3d6687dd26525b+0x80>
20011100:      	blez	t0, 0x20011154 <compiler_builtins::mem::memcpy::h5d3d6687dd26525b+0x94>
20011104:      	slli	a1, a7, 3
20011108:      	andi	t1, a1, 24
2001110c:      	andi	a4, a7, -4
20011110:      	lw	a2, 0(a4)
20011112:      	neg	a1, a1
20011116:      	andi	t3, a1, 24
2001111a:      	addi	a5, a4, 4
2001111e:      	lw	a4, 0(a5)
20011120:      	srl	a2, a2, t1
20011124:      	sll	a1, a4, t3
20011128:      	or	a1, a1, a2
2001112a:      	sw	a1, 0(t2)
2001112e:      	addi	t2, t2, 4
20011130:      	addi	a5, a5, 4
20011132:      	mv	a2, a4
20011134:      	bltu	t2, a3, 0x2001111e <compiler_builtins::mem::memcpy::h5d3d6687dd26525b+0x5e>
20011138:      	j	0x20011154 <compiler_builtins::mem::memcpy::h5d3d6687dd26525b+0x94>
2001113a:      	mv	a3, a0
2001113c:      	bnez	a2, 0x2001115e <compiler_builtins::mem::memcpy::h5d3d6687dd26525b+0x9e>
2001113e:      	j	0x20011170 <compiler_builtins::mem::memcpy::h5d3d6687dd26525b+0xb0>
20011140:      	blez	t0, 0x20011154 <compiler_builtins::mem::memcpy::h5d3d6687dd26525b+0x94>
20011144:      	mv	a1, a7
20011146:      	lw	a2, 0(a1)
20011148:      	sw	a2, 0(t2)
2001114c:      	addi	t2, t2, 4
2001114e:      	addi	a1, a1, 4
20011150:      	bltu	t2, a3, 0x20011146 <compiler_builtins::mem::memcpy::h5d3d6687dd26525b+0x86>
20011154:      	add	a1, a7, t0
20011158:      	andi	a2, a6, 3
2001115c:      	beqz	a2, 0x20011170 <compiler_builtins::mem::memcpy::h5d3d6687dd26525b+0xb0>
2001115e:      	add	a2, a2, a3
20011160:      	lb	a4, 0(a1)
20011164:      	sb	a4, 0(a3)
20011168:      	addi	a3, a3, 1
2001116a:      	addi	a1, a1, 1
2001116c:      	bltu	a3, a2, 0x20011160 <compiler_builtins::mem::memcpy::h5d3d6687dd26525b+0xa0>
20011170:      	ret

20011172 <memcpy>:
20011172:      	auipc	t1, 0
20011176:      	jr	-178(t1)

2001117a <default_setup_interrupts>:
2001117a:      	auipc	t0, 1048575
2001117e:      	addi	t0, t0, -98

20011182 <.L0 >:
20011182:      	csrw	mtvec, t0

20011186 <.L0 >:
20011186:      	ret

20011188 <abort>:
20011188:      	j	0x20011188 <abort>
