
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
20010060:      	j	0x20014b00 <abort>

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
20010084:      	addi	sp, sp, -32
20010086:      	sw	ra, 28(sp)
20010088:      	sw	a2, 0(sp)
2001008a:      	sw	a1, 4(sp)
2001008c:      	sw	a0, 8(sp)
2001008e:      	sw	a0, 16(sp)
20010090:      	sw	a1, 20(sp)
20010092:      	sw	a2, 24(sp)
20010094:      	auipc	ra, 3
20010098:      	jalr	252(ra)
2001009c:      	sw	a0, 12(sp)
2001009e:      	j	0x200100a0 <_start_rust+0x1c>
200100a0:      	lw	a0, 12(sp)
200100a2:      	li	a1, 0
200100a4:      	bne	a0, a1, 0x200100b4 <_start_rust+0x30>
200100a8:      	j	0x200100aa <_start_rust+0x26>
200100aa:      	auipc	ra, 5
200100ae:      	jalr	-1464(ra)
200100b2:      	j	0x200100fa <_start_rust+0x76>
200100b4:      	auipc	ra, 3
200100b8:      	jalr	218(ra)
200100bc:      	j	0x200100be <_start_rust+0x3a>
200100be:      	lui	a0, 524288
200100c2:      	addi	a0, a0, 120
200100c6:      	lui	a1, 524289
200100ca:      	addi	a1, a1, -1376
200100ce:      	auipc	ra, 3
200100d2:      	jalr	342(ra)
200100d6:      	j	0x200100d8 <_start_rust+0x54>
200100d8:      	lui	a0, 524288
200100dc:      	mv	a0, a0
200100e0:      	lui	a1, 524288
200100e4:      	addi	a1, a1, 120
200100e8:      	lui	a2, 131094
200100ec:      	addi	a2, a2, -952
200100f0:      	auipc	ra, 3
200100f4:      	jalr	394(ra)
200100f8:      	j	0x200100aa <_start_rust+0x26>
200100fa:      	lw	a2, 0(sp)
200100fc:      	lw	a1, 4(sp)
200100fe:      	lw	a0, 8(sp)
20010100:      	auipc	ra, 1
20010104:      	jalr	38(ra)
20010108:      	unimp	
2001010a:      	unimp	

2001010c <default_start_trap>:
2001010c:      	addi	sp, sp, -64

2001010e <.L0 >:
2001010e:      	sw	ra, 0(sp)

20010110 <.L0 >:
20010110:      	sw	t0, 4(sp)

20010112 <.L0 >:
20010112:      	sw	t1, 8(sp)

20010114 <.L0 >:
20010114:      	sw	t2, 12(sp)

20010116 <.L0 >:
20010116:      	sw	t3, 16(sp)

20010118 <.L0 >:
20010118:      	sw	t4, 20(sp)

2001011a <.L0 >:
2001011a:      	sw	t5, 24(sp)

2001011c <.L0 >:
2001011c:      	sw	t6, 28(sp)

2001011e <.L0 >:
2001011e:      	sw	a0, 32(sp)

20010120 <.L0 >:
20010120:      	sw	a1, 36(sp)

20010122 <.L0 >:
20010122:      	sw	a2, 40(sp)

20010124 <.L0 >:
20010124:      	sw	a3, 44(sp)

20010126 <.L0 >:
20010126:      	sw	a4, 48(sp)

20010128 <.L0 >:
20010128:      	sw	a5, 52(sp)

2001012a <.L0 >:
2001012a:      	sw	a6, 56(sp)

2001012c <.L0 >:
2001012c:      	sw	a7, 60(sp)

2001012e <.L0 >:
2001012e:      	add	a0, sp, zero

20010132 <.L0 >:
20010132:      	jal	0x2001015c <_start_trap_rust>

20010136 <.L0 >:
20010136:      	lw	ra, 0(sp)

20010138 <.L0 >:
20010138:      	lw	t0, 4(sp)

2001013a <.L0 >:
2001013a:      	lw	t1, 8(sp)

2001013c <.L0 >:
2001013c:      	lw	t2, 12(sp)

2001013e <.L0 >:
2001013e:      	lw	t3, 16(sp)

20010140 <.L0 >:
20010140:      	lw	t4, 20(sp)

20010142 <.L0 >:
20010142:      	lw	t5, 24(sp)

20010144 <.L0 >:
20010144:      	lw	t6, 28(sp)

20010146 <.L0 >:
20010146:      	lw	a0, 32(sp)

20010148 <.L0 >:
20010148:      	lw	a1, 36(sp)

2001014a <.L0 >:
2001014a:      	lw	a2, 40(sp)

2001014c <.L0 >:
2001014c:      	lw	a3, 44(sp)

2001014e <.L0 >:
2001014e:      	lw	a4, 48(sp)

20010150 <.L0 >:
20010150:      	lw	a5, 52(sp)

20010152 <.L0 >:
20010152:      	lw	a6, 56(sp)

20010154 <.L0 >:
20010154:      	lw	a7, 60(sp)

20010156 <.L0 >:
20010156:      	addi	sp, sp, 64

20010158 <.L0 >:
20010158:      	mret	

2001015c <_start_trap_rust>:
2001015c:      	addi	sp, sp, -48
2001015e:      	sw	ra, 44(sp)
20010160:      	sw	a0, 24(sp)
20010162:      	sw	a0, 32(sp)
20010164:      	auipc	ra, 3
20010168:      	jalr	88(ra)
2001016c:      	sw	a0, 28(sp)
2001016e:      	j	0x20010170 <_start_trap_rust+0x14>
20010170:      	addi	a0, sp, 28
20010172:      	auipc	ra, 3
20010176:      	jalr	116(ra)
2001017a:      	sw	a0, 20(sp)
2001017c:      	j	0x2001017e <_start_trap_rust+0x22>
2001017e:      	lw	a0, 20(sp)
20010180:      	li	a1, 0
20010182:      	bne	a0, a1, 0x2001019a <_start_trap_rust+0x3e>
20010186:      	j	0x20010188 <_start_trap_rust+0x2c>
20010188:      	addi	a0, sp, 28
2001018a:      	auipc	ra, 3
2001018e:      	jalr	140(ra)
20010192:      	mv	a1, a0
20010194:      	sw	a1, 16(sp)
20010196:      	sw	a0, 36(sp)
20010198:      	j	0x200101ac <_start_trap_rust+0x50>
2001019a:      	lw	a0, 24(sp)
2001019c:      	auipc	ra, 3
200101a0:      	jalr	-26(ra)
200101a4:      	j	0x200101a6 <_start_trap_rust+0x4a>
200101a6:      	lw	ra, 44(sp)
200101a8:      	addi	sp, sp, 48
200101aa:      	ret
200101ac:      	lw	a0, 16(sp)
200101ae:      	li	a1, 12
200101b0:      	bltu	a0, a1, 0x200101c0 <_start_trap_rust+0x64>
200101b4:      	j	0x200101b6 <_start_trap_rust+0x5a>
200101b6:      	auipc	ra, 3
200101ba:      	jalr	-44(ra)
200101be:      	j	0x200101a6 <_start_trap_rust+0x4a>
200101c0:      	lw	a1, 16(sp)
200101c2:      	li	a0, 11
200101c4:      	bltu	a0, a1, 0x200101e6 <_start_trap_rust+0x8a>
200101c8:      	j	0x200101ca <_start_trap_rust+0x6e>
200101ca:      	lw	a0, 16(sp)
200101cc:      	lui	a1, 131094
200101d0:      	addi	a1, a1, -1828
200101d4:      	slli	a0, a0, 2
200101d6:      	add	a0, a0, a1
200101d8:      	sw	a0, 12(sp)
200101da:      	sw	a0, 40(sp)
200101dc:      	lw	a0, 0(a0)
200101de:      	li	a1, 0
200101e0:      	beq	a0, a1, 0x200101fc <_start_trap_rust+0xa0>
200101e4:      	j	0x20010206 <_start_trap_rust+0xaa>
200101e6:      	lw	a0, 16(sp)
200101e8:      	lui	a1, 131094
200101ec:      	addi	a2, a1, -1844
200101f0:      	li	a1, 12
200101f2:      	auipc	ra, 4
200101f6:      	jalr	430(ra)
200101fa:      	unimp	
200101fc:      	auipc	ra, 3
20010200:      	jalr	-114(ra)
20010204:      	j	0x200101a6 <_start_trap_rust+0x4a>
20010206:      	lw	a0, 12(sp)
20010208:      	lw	a0, 0(a0)
2001020a:      	jalr	a0
2001020c:      	j	0x200101a6 <_start_trap_rust+0x4a>

2001020e <e310x::common::Peripherals::take::{{closure}}::h2aa2f6578f6d40fa>:
2001020e:      	addi	sp, sp, -32
20010210:      	sw	ra, 28(sp)
20010212:      	sw	a0, 24(sp)
20010214:      	lui	a0, 524289
20010218:      	lbu	a0, -1399(a0)
2001021c:      	andi	a0, a0, 1
2001021e:      	li	a1, 0
20010220:      	bne	a0, a1, 0x20010230 <e310x::common::Peripherals::take::{{closure}}::h2aa2f6578f6d40fa+0x22>
20010224:      	j	0x20010226 <e310x::common::Peripherals::take::{{closure}}::h2aa2f6578f6d40fa+0x18>
20010226:      	auipc	ra, 0
2001022a:      	jalr	1868(ra)
2001022e:      	j	0x20010242 <e310x::common::Peripherals::take::{{closure}}::h2aa2f6578f6d40fa+0x34>
20010230:      	li	a0, 0
20010232:      	sb	a0, 15(sp)
20010236:      	j	0x20010238 <e310x::common::Peripherals::take::{{closure}}::h2aa2f6578f6d40fa+0x2a>
20010238:      	lbu	a0, 15(sp)
2001023c:      	lw	ra, 28(sp)
2001023e:      	addi	sp, sp, 32
20010240:      	ret
20010242:      	li	a0, 1
20010244:      	sb	a0, 15(sp)
20010248:      	j	0x20010238 <e310x::common::Peripherals::take::{{closure}}::h2aa2f6578f6d40fa+0x2a>

2001024a <e310x_hal::gpio::PeripheralAccess::set_iof_en::h0265331023fcb791>:
2001024a:      	addi	sp, sp, -64
2001024c:      	sw	ra, 60(sp)
2001024e:      	sw	a0, 8(sp)
20010250:      	mv	a2, a1
20010252:      	sw	a2, 12(sp)
20010254:      	sw	a0, 16(sp)
20010256:      	sb	a1, 23(sp)
2001025a:      	lui	a0, 65554
2001025e:      	sw	a0, 24(sp)
20010260:      	j	0x20010262 <e310x_hal::gpio::PeripheralAccess::set_iof_en::h0265331023fcb791+0x18>
20010262:      	lui	a0, 65554
20010266:      	addi	a0, a0, 56
2001026a:      	sw	a0, 4(sp)
2001026c:      	sw	a0, 28(sp)
2001026e:      	sw	a0, 32(sp)
20010270:      	j	0x20010272 <e310x_hal::gpio::PeripheralAccess::set_iof_en::h0265331023fcb791+0x28>
20010272:      	lw	a1, 8(sp)
20010274:      	lw	a0, 12(sp)
20010276:      	lw	a2, 4(sp)
20010278:      	sw	a2, 44(sp)
2001027a:      	sw	a1, 48(sp)
2001027c:      	sb	a0, 55(sp)
20010280:      	li	a0, 1
20010282:      	sll	a0, a0, a1
20010286:      	sw	a0, 0(sp)
20010288:      	li	a0, 0
2001028a:      	bne	a0, a0, 0x2001029e <e310x_hal::gpio::PeripheralAccess::set_iof_en::h0265331023fcb791+0x54>
2001028e:      	j	0x20010290 <e310x_hal::gpio::PeripheralAccess::set_iof_en::h0265331023fcb791+0x46>
20010290:      	lw	a0, 12(sp)
20010292:      	lw	a1, 0(sp)
20010294:      	sw	a1, 56(sp)
20010296:      	li	a1, 0
20010298:      	bne	a0, a1, 0x200102d6 <e310x_hal::gpio::PeripheralAccess::set_iof_en::h0265331023fcb791+0x8c>
2001029c:      	j	0x200102bc <e310x_hal::gpio::PeripheralAccess::set_iof_en::h0265331023fcb791+0x72>
2001029e:      	lui	a0, 131093
200102a2:      	addi	a0, a0, -1152
200102a6:      	lui	a1, 131093
200102aa:      	addi	a2, a1, -1172
200102ae:      	li	a1, 35
200102b2:      	auipc	ra, 4
200102b6:      	jalr	194(ra)
200102ba:      	unimp	
200102bc:      	lw	a0, 4(sp)
200102be:      	lw	a1, 0(sp)
200102c0:      	not	a1, a1
200102c4:      	li	a2, 4
200102c6:      	sb	a2, 43(sp)
200102ca:      	auipc	ra, 0
200102ce:      	jalr	702(ra)
200102d2:      	sw	a0, 36(sp)
200102d4:      	j	0x200102ec <e310x_hal::gpio::PeripheralAccess::set_iof_en::h0265331023fcb791+0xa2>
200102d6:      	lw	a1, 0(sp)
200102d8:      	lw	a0, 4(sp)
200102da:      	li	a2, 4
200102dc:      	sb	a2, 42(sp)
200102e0:      	auipc	ra, 0
200102e4:      	jalr	628(ra)
200102e8:      	sw	a0, 36(sp)
200102ea:      	j	0x200102ec <e310x_hal::gpio::PeripheralAccess::set_iof_en::h0265331023fcb791+0xa2>
200102ec:      	j	0x200102ee <e310x_hal::gpio::PeripheralAccess::set_iof_en::h0265331023fcb791+0xa4>
200102ee:      	lw	ra, 60(sp)
200102f0:      	addi	sp, sp, 64
200102f2:      	ret

200102f4 <e310x_hal::gpio::PeripheralAccess::set_iof_sel::h9b5a5e548afdc426>:
200102f4:      	addi	sp, sp, -64
200102f6:      	sw	ra, 60(sp)
200102f8:      	sw	a0, 8(sp)
200102fa:      	mv	a2, a1
200102fc:      	sw	a2, 12(sp)
200102fe:      	sw	a0, 16(sp)
20010300:      	sb	a1, 23(sp)
20010304:      	lui	a0, 65554
20010308:      	sw	a0, 24(sp)
2001030a:      	j	0x2001030c <e310x_hal::gpio::PeripheralAccess::set_iof_sel::h9b5a5e548afdc426+0x18>
2001030c:      	lui	a0, 65554
20010310:      	addi	a0, a0, 60
20010314:      	sw	a0, 4(sp)
20010316:      	sw	a0, 28(sp)
20010318:      	sw	a0, 32(sp)
2001031a:      	j	0x2001031c <e310x_hal::gpio::PeripheralAccess::set_iof_sel::h9b5a5e548afdc426+0x28>
2001031c:      	lw	a1, 8(sp)
2001031e:      	lw	a0, 12(sp)
20010320:      	lw	a2, 4(sp)
20010322:      	sw	a2, 44(sp)
20010324:      	sw	a1, 48(sp)
20010326:      	sb	a0, 55(sp)
2001032a:      	li	a0, 1
2001032c:      	sll	a0, a0, a1
20010330:      	sw	a0, 0(sp)
20010332:      	li	a0, 0
20010334:      	bne	a0, a0, 0x20010348 <e310x_hal::gpio::PeripheralAccess::set_iof_sel::h9b5a5e548afdc426+0x54>
20010338:      	j	0x2001033a <e310x_hal::gpio::PeripheralAccess::set_iof_sel::h9b5a5e548afdc426+0x46>
2001033a:      	lw	a0, 12(sp)
2001033c:      	lw	a1, 0(sp)
2001033e:      	sw	a1, 56(sp)
20010340:      	li	a1, 0
20010342:      	bne	a0, a1, 0x20010380 <e310x_hal::gpio::PeripheralAccess::set_iof_sel::h9b5a5e548afdc426+0x8c>
20010346:      	j	0x20010366 <e310x_hal::gpio::PeripheralAccess::set_iof_sel::h9b5a5e548afdc426+0x72>
20010348:      	lui	a0, 131093
2001034c:      	addi	a0, a0, -1152
20010350:      	lui	a1, 131093
20010354:      	addi	a2, a1, -1172
20010358:      	li	a1, 35
2001035c:      	auipc	ra, 4
20010360:      	jalr	24(ra)
20010364:      	unimp	
20010366:      	lw	a0, 4(sp)
20010368:      	lw	a1, 0(sp)
2001036a:      	not	a1, a1
2001036e:      	li	a2, 4
20010370:      	sb	a2, 43(sp)
20010374:      	auipc	ra, 0
20010378:      	jalr	532(ra)
2001037c:      	sw	a0, 36(sp)
2001037e:      	j	0x20010396 <e310x_hal::gpio::PeripheralAccess::set_iof_sel::h9b5a5e548afdc426+0xa2>
20010380:      	lw	a1, 0(sp)
20010382:      	lw	a0, 4(sp)
20010384:      	li	a2, 4
20010386:      	sb	a2, 42(sp)
2001038a:      	auipc	ra, 0
2001038e:      	jalr	458(ra)
20010392:      	sw	a0, 36(sp)
20010394:      	j	0x20010396 <e310x_hal::gpio::PeripheralAccess::set_iof_sel::h9b5a5e548afdc426+0xa2>
20010396:      	j	0x20010398 <e310x_hal::gpio::PeripheralAccess::set_iof_sel::h9b5a5e548afdc426+0xa4>
20010398:      	lw	ra, 60(sp)
2001039a:      	addi	sp, sp, 64
2001039c:      	ret

2001039e <e310x_hal::gpio::PeripheralAccess::set_out_xor::h79d277add99dbffd>:
2001039e:      	addi	sp, sp, -64
200103a0:      	sw	ra, 60(sp)
200103a2:      	sw	a0, 8(sp)
200103a4:      	mv	a2, a1
200103a6:      	sw	a2, 12(sp)
200103a8:      	sw	a0, 16(sp)
200103aa:      	sb	a1, 23(sp)
200103ae:      	lui	a0, 65554
200103b2:      	sw	a0, 24(sp)
200103b4:      	j	0x200103b6 <e310x_hal::gpio::PeripheralAccess::set_out_xor::h79d277add99dbffd+0x18>
200103b6:      	lui	a0, 65554
200103ba:      	addi	a0, a0, 64
200103be:      	sw	a0, 4(sp)
200103c0:      	sw	a0, 28(sp)
200103c2:      	sw	a0, 32(sp)
200103c4:      	j	0x200103c6 <e310x_hal::gpio::PeripheralAccess::set_out_xor::h79d277add99dbffd+0x28>
200103c6:      	lw	a1, 8(sp)
200103c8:      	lw	a0, 12(sp)
200103ca:      	lw	a2, 4(sp)
200103cc:      	sw	a2, 44(sp)
200103ce:      	sw	a1, 48(sp)
200103d0:      	sb	a0, 55(sp)
200103d4:      	li	a0, 1
200103d6:      	sll	a0, a0, a1
200103da:      	sw	a0, 0(sp)
200103dc:      	li	a0, 0
200103de:      	bne	a0, a0, 0x200103f2 <e310x_hal::gpio::PeripheralAccess::set_out_xor::h79d277add99dbffd+0x54>
200103e2:      	j	0x200103e4 <e310x_hal::gpio::PeripheralAccess::set_out_xor::h79d277add99dbffd+0x46>
200103e4:      	lw	a0, 12(sp)
200103e6:      	lw	a1, 0(sp)
200103e8:      	sw	a1, 56(sp)
200103ea:      	li	a1, 0
200103ec:      	bne	a0, a1, 0x2001042a <e310x_hal::gpio::PeripheralAccess::set_out_xor::h79d277add99dbffd+0x8c>
200103f0:      	j	0x20010410 <e310x_hal::gpio::PeripheralAccess::set_out_xor::h79d277add99dbffd+0x72>
200103f2:      	lui	a0, 131093
200103f6:      	addi	a0, a0, -1152
200103fa:      	lui	a1, 131093
200103fe:      	addi	a2, a1, -1172
20010402:      	li	a1, 35
20010406:      	auipc	ra, 4
2001040a:      	jalr	-146(ra)
2001040e:      	unimp	
20010410:      	lw	a0, 4(sp)
20010412:      	lw	a1, 0(sp)
20010414:      	not	a1, a1
20010418:      	li	a2, 4
2001041a:      	sb	a2, 43(sp)
2001041e:      	auipc	ra, 0
20010422:      	jalr	362(ra)
20010426:      	sw	a0, 36(sp)
20010428:      	j	0x20010440 <e310x_hal::gpio::PeripheralAccess::set_out_xor::h79d277add99dbffd+0xa2>
2001042a:      	lw	a1, 0(sp)
2001042c:      	lw	a0, 4(sp)
2001042e:      	li	a2, 4
20010430:      	sb	a2, 42(sp)
20010434:      	auipc	ra, 0
20010438:      	jalr	288(ra)
2001043c:      	sw	a0, 36(sp)
2001043e:      	j	0x20010440 <e310x_hal::gpio::PeripheralAccess::set_out_xor::h79d277add99dbffd+0xa2>
20010440:      	j	0x20010442 <e310x_hal::gpio::PeripheralAccess::set_out_xor::h79d277add99dbffd+0xa4>
20010442:      	lw	ra, 60(sp)
20010444:      	addi	sp, sp, 64
20010446:      	ret

20010448 <_ZN9e310x_hal4gpio5gpio017Pin16$LT$MODE$GT$9into_iof017h257de2d5038693ddE>:
20010448:      	addi	sp, sp, -16
2001044a:      	sw	ra, 12(sp)
2001044c:      	li	a0, 16
2001044e:      	li	a1, 0
20010450:      	auipc	ra, 0
20010454:      	jalr	-178(ra)
20010458:      	j	0x2001045a <_ZN9e310x_hal4gpio5gpio017Pin16$LT$MODE$GT$9into_iof017h257de2d5038693ddE+0x12>
2001045a:      	li	a0, 16
2001045c:      	li	a1, 0
2001045e:      	auipc	ra, 0
20010462:      	jalr	-362(ra)
20010466:      	j	0x20010468 <_ZN9e310x_hal4gpio5gpio017Pin16$LT$MODE$GT$9into_iof017h257de2d5038693ddE+0x20>
20010468:      	li	a0, 16
2001046a:      	li	a1, 1
2001046c:      	auipc	ra, 0
20010470:      	jalr	-546(ra)
20010474:      	j	0x20010476 <_ZN9e310x_hal4gpio5gpio017Pin16$LT$MODE$GT$9into_iof017h257de2d5038693ddE+0x2e>
20010476:      	lw	ra, 12(sp)
20010478:      	addi	sp, sp, 16
2001047a:      	ret

2001047c <_ZN9e310x_hal4gpio5gpio017Pin17$LT$MODE$GT$9into_iof017h2e472d2ec2dd2264E>:
2001047c:      	addi	sp, sp, -16
2001047e:      	sw	ra, 12(sp)
20010480:      	li	a0, 17
20010482:      	li	a1, 0
20010484:      	auipc	ra, 0
20010488:      	jalr	-230(ra)
2001048c:      	j	0x2001048e <_ZN9e310x_hal4gpio5gpio017Pin17$LT$MODE$GT$9into_iof017h2e472d2ec2dd2264E+0x12>
2001048e:      	li	a0, 17
20010490:      	li	a1, 0
20010492:      	auipc	ra, 0
20010496:      	jalr	-414(ra)
2001049a:      	j	0x2001049c <_ZN9e310x_hal4gpio5gpio017Pin17$LT$MODE$GT$9into_iof017h2e472d2ec2dd2264E+0x20>
2001049c:      	li	a0, 17
2001049e:      	li	a1, 1
200104a0:      	auipc	ra, 0
200104a4:      	jalr	-598(ra)
200104a8:      	j	0x200104aa <_ZN9e310x_hal4gpio5gpio017Pin17$LT$MODE$GT$9into_iof017h2e472d2ec2dd2264E+0x2e>
200104aa:      	lw	ra, 12(sp)
200104ac:      	addi	sp, sp, 16
200104ae:      	ret

200104b0 <core::clone::impls::<impl core::clone::Clone for i32>::clone::hcc3ad490dadc58c3>:
200104b0:      	addi	sp, sp, -16
200104b2:      	sw	a0, 12(sp)
200104b4:      	lw	a0, 0(a0)
200104b6:      	addi	sp, sp, 16
200104b8:      	ret

200104ba <e310x_hal::device::DeviceResources::take::h3145ebe2f9541547>:
200104ba:      	addi	sp, sp, -16
200104bc:      	sw	ra, 12(sp)
200104be:      	sw	a0, 4(sp)
200104c0:      	auipc	ra, 0
200104c4:      	jalr	1808(ra)
200104c8:      	sw	a0, 8(sp)
200104ca:      	j	0x200104cc <e310x_hal::device::DeviceResources::take::h3145ebe2f9541547+0x12>
200104cc:      	lw	a1, 8(sp)
200104ce:      	lw	a0, 4(sp)
200104d0:      	auipc	ra, 1
200104d4:      	jalr	-1848(ra)
200104d8:      	j	0x200104da <e310x_hal::device::DeviceResources::take::h3145ebe2f9541547+0x20>
200104da:      	lw	ra, 12(sp)
200104dc:      	addi	sp, sp, 16
200104de:      	ret

200104e0 <core::sync::atomic::compiler_fence::h2794133b0b74372a>:
200104e0:      	addi	sp, sp, -48
200104e2:      	sw	ra, 44(sp)
200104e4:      	sb	a0, 15(sp)
200104e8:      	andi	a0, a0, 255
200104ec:      	sw	a0, 8(sp)
200104ee:      	lw	a0, 8(sp)
200104f0:      	slli	a0, a0, 2
200104f2:      	lui	a1, 131093
200104f6:      	addi	a1, a1, -1116
200104fa:      	add	a0, a0, a1
200104fc:      	lw	a0, 0(a0)
200104fe:      	jr	a0
20010500:      	unimp	

20010502 <.LBB0_3>:
20010502:      	lui	a0, 131093
20010506:      	addi	a1, a0, -1044
2001050a:      	lui	a0, 131093
2001050e:      	addi	a3, a0, -1036
20010512:      	addi	a0, sp, 16
20010514:      	li	a2, 1
20010516:      	li	a4, 0
20010518:      	auipc	ra, 0
2001051c:      	jalr	1530(ra)
20010520:      	j	0x20010540 <.LBB0_7+0xc>

20010522 <.LBB0_4>:
20010522:      	fence	rw, w
20010526:      	j	0x2001053a <.LBB0_7+0x6>

20010528 <.LBB0_5>:
20010528:      	fence	r, rw
2001052c:      	j	0x2001053a <.LBB0_7+0x6>

2001052e <.LBB0_6>:
2001052e:      	fence.tso	
20010532:      	j	0x2001053a <.LBB0_7+0x6>

20010534 <.LBB0_7>:
20010534:      	fence	rw, rw
20010538:      	j	0x2001053a <.LBB0_7+0x6>
2001053a:      	lw	ra, 44(sp)
2001053c:      	addi	sp, sp, 48
2001053e:      	ret
20010540:      	lui	a0, 131093
20010544:      	addi	a1, a0, -956
20010548:      	addi	a0, sp, 16
2001054a:      	auipc	ra, 4
2001054e:      	jalr	-362(ra)
20010552:      	unimp	

20010554 <core::sync::atomic::AtomicU32::fetch_or::h2f2a70476d84bb47>:
20010554:      	addi	sp, sp, -48
20010556:      	sw	ra, 44(sp)
20010558:      	sw	a1, 16(sp)
2001055a:      	mv	a3, a2
2001055c:      	sw	a3, 20(sp)
2001055e:      	sw	a0, 28(sp)
20010560:      	sw	a1, 32(sp)
20010562:      	sb	a2, 39(sp)
20010566:      	mv	a1, a0
20010568:      	sw	a1, 24(sp)
2001056a:      	sw	a0, 40(sp)
2001056c:      	j	0x2001056e <core::sync::atomic::AtomicU32::fetch_or::h2f2a70476d84bb47+0x1a>
2001056e:      	lw	a2, 20(sp)
20010570:      	lw	a1, 16(sp)
20010572:      	lw	a0, 24(sp)
20010574:      	auipc	ra, 1
20010578:      	jalr	-706(ra)
2001057c:      	sw	a0, 12(sp)
2001057e:      	j	0x20010580 <core::sync::atomic::AtomicU32::fetch_or::h2f2a70476d84bb47+0x2c>
20010580:      	lw	a0, 12(sp)
20010582:      	lw	ra, 44(sp)
20010584:      	addi	sp, sp, 48
20010586:      	ret

20010588 <core::sync::atomic::AtomicU32::fetch_and::hc727c092b7f4b38a>:
20010588:      	addi	sp, sp, -48
2001058a:      	sw	ra, 44(sp)
2001058c:      	sw	a1, 16(sp)
2001058e:      	mv	a3, a2
20010590:      	sw	a3, 20(sp)
20010592:      	sw	a0, 28(sp)
20010594:      	sw	a1, 32(sp)
20010596:      	sb	a2, 39(sp)
2001059a:      	mv	a1, a0
2001059c:      	sw	a1, 24(sp)
2001059e:      	sw	a0, 40(sp)
200105a0:      	j	0x200105a2 <core::sync::atomic::AtomicU32::fetch_and::hc727c092b7f4b38a+0x1a>
200105a2:      	lw	a2, 20(sp)
200105a4:      	lw	a1, 16(sp)
200105a6:      	lw	a0, 24(sp)
200105a8:      	auipc	ra, 1
200105ac:      	jalr	-874(ra)
200105b0:      	sw	a0, 12(sp)
200105b2:      	j	0x200105b4 <core::sync::atomic::AtomicU32::fetch_and::hc727c092b7f4b38a+0x2c>
200105b4:      	lw	a0, 12(sp)
200105b6:      	lw	ra, 44(sp)
200105b8:      	addi	sp, sp, 48
200105ba:      	ret

200105bc <core::cmp::impls::<impl core::cmp::PartialOrd for i32>::lt::h12c2647c24ef9667>:
200105bc:      	addi	sp, sp, -16
200105be:      	sw	a0, 8(sp)
200105c0:      	sw	a1, 12(sp)
200105c2:      	lw	a0, 0(a0)
200105c4:      	lw	a1, 0(a1)
200105c6:      	slt	a0, a0, a1
200105ca:      	addi	sp, sp, 16
200105cc:      	ret

200105ce <e310x_hal::serial::Serial<UART,(TX,RX)>::new::h39509290520bb851>:
200105ce:      	addi	sp, sp, -192
200105d0:      	sw	ra, 188(sp)
200105d2:      	sw	a0, 24(sp)
200105d4:      	sw	a1, 40(sp)
200105d6:      	sw	a2, 44(sp)
200105d8:      	sw	a0, 68(sp)
200105da:      	addi	a0, sp, 40
200105dc:      	auipc	ra, 2
200105e0:      	jalr	1066(ra)
200105e4:      	sw	a0, 28(sp)
200105e6:      	j	0x200105e8 <e310x_hal::serial::Serial<UART,(TX,RX)>::new::h39509290520bb851+0x1a>
200105e8:      	lw	a0, 24(sp)
200105ea:      	li	a1, 0
200105ec:      	beq	a0, a1, 0x20010606 <e310x_hal::serial::Serial<UART,(TX,RX)>::new::h39509290520bb851+0x38>
200105f0:      	j	0x200105f2 <e310x_hal::serial::Serial<UART,(TX,RX)>::new::h39509290520bb851+0x24>
200105f2:      	lw	a0, 28(sp)
200105f4:      	lw	a1, 24(sp)
200105f6:      	divu	a0, a0, a1
200105fa:      	addi	a1, a0, -1
200105fe:      	sw	a1, 20(sp)
20010600:      	bltu	a0, a1, 0x2001062c <e310x_hal::serial::Serial<UART,(TX,RX)>::new::h39509290520bb851+0x5e>
20010604:      	j	0x20010622 <e310x_hal::serial::Serial<UART,(TX,RX)>::new::h39509290520bb851+0x54>
20010606:      	lui	a0, 131093
2001060a:      	addi	a0, a0, -832
2001060e:      	lui	a1, 131093
20010612:      	addi	a2, a1, -848
20010616:      	li	a1, 25
20010618:      	auipc	ra, 4
2001061c:      	jalr	-676(ra)
20010620:      	unimp	
20010622:      	lw	a0, 20(sp)
20010624:      	sw	a0, 56(sp)
20010626:      	addi	a0, sp, 32
20010628:      	sw	a0, 184(sp)
2001062a:      	j	0x2001064a <e310x_hal::serial::Serial<UART,(TX,RX)>::new::h39509290520bb851+0x7c>
2001062c:      	lui	a0, 131093
20010630:      	addi	a0, a0, -800
20010634:      	lui	a1, 131093
20010638:      	addi	a2, a1, -848
2001063c:      	li	a1, 33
20010640:      	auipc	ra, 4
20010644:      	jalr	-716(ra)
20010648:      	unimp	
2001064a:      	lui	a0, 65555
2001064e:      	addi	a0, a0, 16
20010650:      	sw	a0, 16(sp)
20010652:      	sw	a0, 80(sp)
20010654:      	li	a0, 0
20010656:      	sw	a0, 76(sp)
20010658:      	addi	a0, sp, 76
2001065a:      	sw	a0, 72(sp)
2001065c:      	auipc	ra, 0
20010660:      	jalr	312(ra)
20010664:      	mv	a1, a0
20010666:      	lw	a0, 16(sp)
20010668:      	lw	a1, 0(a1)
2001066a:      	sw	a0, 160(sp)
2001066c:      	sw	a1, 164(sp)
2001066e:      	sw	a0, 168(sp)
20010670:      	auipc	ra, 3
20010674:      	jalr	-784(ra)
20010678:      	j	0x2001067a <e310x_hal::serial::Serial<UART,(TX,RX)>::new::h39509290520bb851+0xac>
2001067a:      	addi	a0, sp, 32
2001067c:      	sw	a0, 180(sp)
2001067e:      	j	0x20010680 <e310x_hal::serial::Serial<UART,(TX,RX)>::new::h39509290520bb851+0xb2>
20010680:      	addi	a0, sp, 56
20010682:      	sw	a0, 60(sp)
20010684:      	lui	a1, 65555
20010688:      	addi	a1, a1, 24
2001068a:      	sw	a1, 12(sp)
2001068c:      	sw	a1, 92(sp)
2001068e:      	sw	a0, 96(sp)
20010690:      	li	a1, 0
20010692:      	sw	a1, 88(sp)
20010694:      	addi	a1, sp, 88
20010696:      	sw	a1, 84(sp)
20010698:      	auipc	ra, 0
2001069c:      	jalr	228(ra)
200106a0:      	mv	a1, a0
200106a2:      	lw	a0, 12(sp)
200106a4:      	lw	a1, 0(a1)
200106a6:      	sw	a0, 148(sp)
200106a8:      	sw	a1, 152(sp)
200106aa:      	sw	a0, 156(sp)
200106ac:      	auipc	ra, 3
200106b0:      	jalr	-844(ra)
200106b4:      	j	0x200106b6 <e310x_hal::serial::Serial<UART,(TX,RX)>::new::h39509290520bb851+0xe8>
200106b6:      	addi	a0, sp, 32
200106b8:      	sw	a0, 176(sp)
200106ba:      	j	0x200106bc <e310x_hal::serial::Serial<UART,(TX,RX)>::new::h39509290520bb851+0xee>
200106bc:      	lui	a0, 65555
200106c0:      	addi	a0, a0, 8
200106c2:      	sw	a0, 8(sp)
200106c4:      	sw	a0, 108(sp)
200106c6:      	li	a0, 0
200106c8:      	sw	a0, 104(sp)
200106ca:      	addi	a0, sp, 104
200106cc:      	sw	a0, 100(sp)
200106ce:      	auipc	ra, 0
200106d2:      	jalr	90(ra)
200106d6:      	mv	a1, a0
200106d8:      	lw	a0, 8(sp)
200106da:      	lw	a1, 0(a1)
200106dc:      	sw	a0, 136(sp)
200106de:      	sw	a1, 140(sp)
200106e0:      	sw	a0, 144(sp)
200106e2:      	auipc	ra, 3
200106e6:      	jalr	-898(ra)
200106ea:      	j	0x200106ec <e310x_hal::serial::Serial<UART,(TX,RX)>::new::h39509290520bb851+0x11e>
200106ec:      	addi	a0, sp, 32
200106ee:      	sw	a0, 172(sp)
200106f0:      	j	0x200106f2 <e310x_hal::serial::Serial<UART,(TX,RX)>::new::h39509290520bb851+0x124>
200106f2:      	lui	a0, 65555
200106f6:      	addi	a0, a0, 12
200106f8:      	sw	a0, 4(sp)
200106fa:      	sw	a0, 120(sp)
200106fc:      	li	a0, 0
200106fe:      	sw	a0, 116(sp)
20010700:      	addi	a0, sp, 116
20010702:      	sw	a0, 112(sp)
20010704:      	auipc	ra, 0
20010708:      	jalr	216(ra)
2001070c:      	mv	a1, a0
2001070e:      	lw	a0, 4(sp)
20010710:      	lw	a1, 0(a1)
20010712:      	sw	a0, 124(sp)
20010714:      	sw	a1, 128(sp)
20010716:      	sw	a0, 132(sp)
20010718:      	auipc	ra, 3
2001071c:      	jalr	-952(ra)
20010720:      	j	0x20010722 <e310x_hal::serial::Serial<UART,(TX,RX)>::new::h39509290520bb851+0x154>
20010722:      	lw	ra, 188(sp)
20010724:      	addi	sp, sp, 192
20010726:      	ret

20010728 <e310x_hal::serial::Serial<UART,(TX,RX)>::new::{{closure}}::h33b05751e1835d04>:
20010728:      	addi	sp, sp, -64
2001072a:      	sw	a0, 28(sp)
2001072c:      	sw	a0, 44(sp)
2001072e:      	sw	a0, 40(sp)
20010730:      	sw	a0, 20(sp)
20010732:      	j	0x20010734 <e310x_hal::serial::Serial<UART,(TX,RX)>::new::{{closure}}::h33b05751e1835d04+0xc>
20010734:      	lw	a1, 20(sp)
20010736:      	sw	a1, 56(sp)
20010738:      	li	a0, 1
2001073a:      	sb	a0, 63(sp)
2001073e:      	lw	a0, 0(a1)
20010740:      	lui	a2, 1048464
20010744:      	addi	a2, a2, -1
20010746:      	and	a0, a0, a2
20010748:      	lui	a2, 16
2001074a:      	or	a0, a0, a2
2001074c:      	sw	a0, 0(a1)
2001074e:      	lw	a0, 56(sp)
20010750:      	sw	a0, 16(sp)
20010752:      	j	0x20010754 <e310x_hal::serial::Serial<UART,(TX,RX)>::new::{{closure}}::h33b05751e1835d04+0x2c>
20010754:      	lw	a0, 16(sp)
20010756:      	sw	a0, 36(sp)
20010758:      	sw	a0, 32(sp)
2001075a:      	sw	a0, 12(sp)
2001075c:      	j	0x2001075e <e310x_hal::serial::Serial<UART,(TX,RX)>::new::{{closure}}::h33b05751e1835d04+0x36>
2001075e:      	lw	a1, 12(sp)
20010760:      	sw	a1, 48(sp)
20010762:      	li	a0, 1
20010764:      	sb	a0, 55(sp)
20010768:      	lw	a0, 0(a1)
2001076a:      	ori	a0, a0, 1
2001076e:      	sw	a0, 0(a1)
20010770:      	lw	a0, 48(sp)
20010772:      	sw	a0, 8(sp)
20010774:      	j	0x20010776 <e310x_hal::serial::Serial<UART,(TX,RX)>::new::{{closure}}::h33b05751e1835d04+0x4e>
20010776:      	lw	a0, 8(sp)
20010778:      	addi	sp, sp, 64
2001077a:      	ret

2001077c <e310x_hal::serial::Serial<UART,(TX,RX)>::new::{{closure}}::h46818e079915fcde>:
2001077c:      	addi	sp, sp, -32
2001077e:      	sw	a1, 12(sp)
20010780:      	sw	a0, 16(sp)
20010782:      	sw	a1, 20(sp)
20010784:      	lw	a0, 0(a0)
20010786:      	sw	a1, 24(sp)
20010788:      	sw	a0, 28(sp)
2001078a:      	sw	a0, 0(a1)
2001078c:      	j	0x2001078e <e310x_hal::serial::Serial<UART,(TX,RX)>::new::{{closure}}::h46818e079915fcde+0x12>
2001078e:      	lw	a0, 12(sp)
20010790:      	addi	sp, sp, 32
20010792:      	ret

20010794 <e310x_hal::serial::Serial<UART,(TX,RX)>::new::{{closure}}::hc969b2ee78a015a2>:
20010794:      	addi	sp, sp, -64
20010796:      	sw	a0, 28(sp)
20010798:      	sw	a0, 44(sp)
2001079a:      	sw	a0, 40(sp)
2001079c:      	sw	a0, 20(sp)
2001079e:      	j	0x200107a0 <e310x_hal::serial::Serial<UART,(TX,RX)>::new::{{closure}}::hc969b2ee78a015a2+0xc>
200107a0:      	lw	a1, 20(sp)
200107a2:      	sw	a1, 56(sp)
200107a4:      	li	a0, 0
200107a6:      	sb	a0, 63(sp)
200107aa:      	lw	a0, 0(a1)
200107ac:      	andi	a0, a0, -2
200107ae:      	sw	a0, 0(a1)
200107b0:      	lw	a0, 56(sp)
200107b2:      	sw	a0, 16(sp)
200107b4:      	j	0x200107b6 <e310x_hal::serial::Serial<UART,(TX,RX)>::new::{{closure}}::hc969b2ee78a015a2+0x22>
200107b6:      	lw	a0, 16(sp)
200107b8:      	sw	a0, 36(sp)
200107ba:      	sw	a0, 32(sp)
200107bc:      	sw	a0, 12(sp)
200107be:      	j	0x200107c0 <e310x_hal::serial::Serial<UART,(TX,RX)>::new::{{closure}}::hc969b2ee78a015a2+0x2c>
200107c0:      	lw	a1, 12(sp)
200107c2:      	sw	a1, 48(sp)
200107c4:      	li	a0, 0
200107c6:      	sb	a0, 55(sp)
200107ca:      	lw	a0, 0(a1)
200107cc:      	andi	a0, a0, -3
200107ce:      	sw	a0, 0(a1)
200107d0:      	lw	a0, 48(sp)
200107d2:      	sw	a0, 8(sp)
200107d4:      	j	0x200107d6 <e310x_hal::serial::Serial<UART,(TX,RX)>::new::{{closure}}::hc969b2ee78a015a2+0x42>
200107d6:      	lw	a0, 8(sp)
200107d8:      	addi	sp, sp, 64
200107da:      	ret

200107dc <e310x_hal::serial::Serial<UART,(TX,RX)>::new::{{closure}}::hdd80b1cb0281a8fc>:
200107dc:      	addi	sp, sp, -32
200107de:      	sw	a0, 12(sp)
200107e0:      	sw	a0, 20(sp)
200107e2:      	sw	a0, 16(sp)
200107e4:      	sw	a0, 4(sp)
200107e6:      	j	0x200107e8 <e310x_hal::serial::Serial<UART,(TX,RX)>::new::{{closure}}::hdd80b1cb0281a8fc+0xc>
200107e8:      	lw	a1, 4(sp)
200107ea:      	sw	a1, 24(sp)
200107ec:      	li	a0, 1
200107ee:      	sb	a0, 31(sp)
200107f2:      	lw	a0, 0(a1)
200107f4:      	ori	a0, a0, 1
200107f8:      	sw	a0, 0(a1)
200107fa:      	lw	a0, 24(sp)
200107fc:      	sw	a0, 0(sp)
200107fe:      	j	0x20010800 <e310x_hal::serial::Serial<UART,(TX,RX)>::new::{{closure}}::hdd80b1cb0281a8fc+0x24>
20010800:      	lw	a0, 0(sp)
20010802:      	addi	sp, sp, 32
20010804:      	ret

20010806 <e310x_hal::serial::Serial<UART,(TX,RX)>::split::h66529d83c508dbed>:
20010806:      	addi	sp, sp, -32
20010808:      	sw	ra, 28(sp)
2001080a:      	auipc	ra, 0
2001080e:      	jalr	292(ra)
20010812:      	j	0x20010814 <e310x_hal::serial::Serial<UART,(TX,RX)>::split::h66529d83c508dbed+0xe>
20010814:      	j	0x20010816 <e310x_hal::serial::Serial<UART,(TX,RX)>::split::h66529d83c508dbed+0x10>
20010816:      	lw	ra, 28(sp)
20010818:      	addi	sp, sp, 32
2001081a:      	ret

2001081c <hifive1::stdout::configure::h3ef74c840e1377c0>:
2001081c:      	addi	sp, sp, -96
2001081e:      	sw	ra, 92(sp)
20010820:      	sw	a2, 12(sp)
20010822:      	sw	a1, 16(sp)
20010824:      	sw	a0, 20(sp)
20010826:      	sw	a0, 44(sp)
20010828:      	sw	a1, 48(sp)
2001082a:      	sw	a2, 52(sp)
2001082c:      	auipc	ra, 0
20010830:      	jalr	-944(ra)
20010834:      	j	0x20010836 <hifive1::stdout::configure::h3ef74c840e1377c0+0x1a>
20010836:      	auipc	ra, 0
2001083a:      	jalr	-1006(ra)
2001083e:      	j	0x20010840 <hifive1::stdout::configure::h3ef74c840e1377c0+0x24>
20010840:      	lw	a2, 12(sp)
20010842:      	lw	a1, 16(sp)
20010844:      	lw	a0, 20(sp)
20010846:      	auipc	ra, 0
2001084a:      	jalr	-632(ra)
2001084e:      	j	0x20010850 <hifive1::stdout::configure::h3ef74c840e1377c0+0x34>
20010850:      	auipc	ra, 0
20010854:      	jalr	-74(ra)
20010858:      	j	0x2001085a <hifive1::stdout::configure::h3ef74c840e1377c0+0x3e>
2001085a:      	auipc	ra, 0
2001085e:      	jalr	1732(ra)
20010862:      	j	0x20010864 <hifive1::stdout::configure::h3ef74c840e1377c0+0x48>
20010864:      	lw	ra, 92(sp)
20010866:      	addi	sp, sp, 96
20010868:      	ret

2001086a <hifive1::stdout::configure::{{closure}}::h553317361fa31f0d>:
2001086a:      	addi	sp, sp, -16
2001086c:      	sw	ra, 12(sp)
2001086e:      	sw	a0, 8(sp)
20010870:      	lui	a0, 524289
20010874:      	addi	a0, a0, -1400
20010878:      	auipc	ra, 0
2001087c:      	jalr	1570(ra)
20010880:      	j	0x20010882 <hifive1::stdout::configure::{{closure}}::h553317361fa31f0d+0x18>
20010882:      	lw	ra, 12(sp)
20010884:      	addi	sp, sp, 16
20010886:      	ret

20010888 <riscv::register::mstatus::_set::ha0d0a4071b193c79>:
20010888:      	addi	sp, sp, -16
2001088a:      	sw	ra, 12(sp)
2001088c:      	sw	a0, 8(sp)
2001088e:      	auipc	ra, 2
20010892:      	jalr	1106(ra)
20010896:      	j	0x20010898 <riscv::register::mstatus::_set::ha0d0a4071b193c79+0x10>
20010898:      	lw	ra, 12(sp)
2001089a:      	addi	sp, sp, 16
2001089c:      	ret

2001089e <riscv::register::mstatus::read::h4dde8d7ac2314d41>:
2001089e:      	addi	sp, sp, -16
200108a0:      	sw	ra, 12(sp)
200108a2:      	auipc	ra, 0
200108a6:      	jalr	22(ra)
200108aa:      	sw	a0, 4(sp)
200108ac:      	j	0x200108ae <riscv::register::mstatus::read::h4dde8d7ac2314d41+0x10>
200108ae:      	lw	a0, 4(sp)
200108b0:      	sw	a0, 8(sp)
200108b2:      	lw	ra, 12(sp)
200108b4:      	addi	sp, sp, 16
200108b6:      	ret

200108b8 <riscv::register::mstatus::_read::he6ff6c46565a8a8a>:
200108b8:      	addi	sp, sp, -16
200108ba:      	sw	ra, 12(sp)
200108bc:      	auipc	ra, 2
200108c0:      	jalr	1054(ra)
200108c4:      	sw	a0, 8(sp)
200108c6:      	j	0x200108c8 <riscv::register::mstatus::_read::he6ff6c46565a8a8a+0x10>
200108c8:      	lw	a0, 8(sp)
200108ca:      	lw	ra, 12(sp)
200108cc:      	addi	sp, sp, 16
200108ce:      	ret

200108d0 <riscv::register::mstatus::_clear::h9da94a6293ddcbca>:
200108d0:      	addi	sp, sp, -16
200108d2:      	sw	ra, 12(sp)
200108d4:      	sw	a0, 8(sp)
200108d6:      	auipc	ra, 2
200108da:      	jalr	1040(ra)
200108de:      	j	0x200108e0 <riscv::register::mstatus::_clear::h9da94a6293ddcbca+0x10>
200108e0:      	lw	ra, 12(sp)
200108e2:      	addi	sp, sp, 16
200108e4:      	ret

200108e6 <riscv::register::mstatus::Mstatus::mie::h452a42d401f0af30>:
200108e6:      	addi	sp, sp, -16
200108e8:      	sw	ra, 12(sp)
200108ea:      	sw	a0, 8(sp)
200108ec:      	li	a1, 3
200108ee:      	auipc	ra, 0
200108f2:      	jalr	1802(ra)
200108f6:      	sw	a0, 4(sp)
200108f8:      	j	0x200108fa <riscv::register::mstatus::Mstatus::mie::h452a42d401f0af30+0x14>
200108fa:      	lw	a0, 4(sp)
200108fc:      	lw	ra, 12(sp)
200108fe:      	addi	sp, sp, 16
20010900:      	ret

20010902 <riscv::register::mstatus::set_mie::h13347399f3a38c11>:
20010902:      	addi	sp, sp, -16
20010904:      	sw	ra, 12(sp)
20010906:      	li	a0, 8
20010908:      	auipc	ra, 0
2001090c:      	jalr	-128(ra)
20010910:      	j	0x20010912 <riscv::register::mstatus::set_mie::h13347399f3a38c11+0x10>
20010912:      	lw	ra, 12(sp)
20010914:      	addi	sp, sp, 16
20010916:      	ret

20010918 <riscv::register::mstatus::clear_mie::had9f46067881bdd8>:
20010918:      	addi	sp, sp, -16
2001091a:      	sw	ra, 12(sp)
2001091c:      	li	a0, 8
2001091e:      	auipc	ra, 0
20010922:      	jalr	-78(ra)
20010926:      	j	0x20010928 <riscv::register::mstatus::clear_mie::had9f46067881bdd8+0x10>
20010928:      	lw	ra, 12(sp)
2001092a:      	addi	sp, sp, 16
2001092c:      	ret

2001092e <core::mem::maybe_uninit::MaybeUninit<T>::zeroed::h4453f82631b9163b>:
2001092e:      	addi	sp, sp, -48
20010930:      	sw	ra, 44(sp)
20010932:      	j	0x20010934 <core::mem::maybe_uninit::MaybeUninit<T>::zeroed::h4453f82631b9163b+0x6>
20010934:      	addi	a0, sp, 16
20010936:      	sw	a0, 12(sp)
20010938:      	sw	a0, 20(sp)
2001093a:      	j	0x2001093c <core::mem::maybe_uninit::MaybeUninit<T>::zeroed::h4453f82631b9163b+0xe>
2001093c:      	lw	a0, 12(sp)
2001093e:      	sw	a0, 32(sp)
20010940:      	li	a1, 0
20010942:      	sb	a1, 39(sp)
20010946:      	li	a2, 1
20010948:      	sw	a2, 40(sp)
2001094a:      	auipc	ra, 0
2001094e:      	jalr	610(ra)
20010952:      	j	0x20010954 <core::mem::maybe_uninit::MaybeUninit<T>::zeroed::h4453f82631b9163b+0x26>
20010954:      	lw	ra, 44(sp)
20010956:      	addi	sp, sp, 48
20010958:      	ret

2001095a <e310x::common::Peripherals::take::h777bc3b96b9254c8>:
2001095a:      	addi	sp, sp, -16
2001095c:      	sw	ra, 12(sp)
2001095e:      	auipc	ra, 0
20010962:      	jalr	1372(ra)
20010966:      	sw	a0, 8(sp)
20010968:      	j	0x2001096a <e310x::common::Peripherals::take::h777bc3b96b9254c8+0x10>
2001096a:      	lw	a0, 8(sp)
2001096c:      	lw	ra, 12(sp)
2001096e:      	addi	sp, sp, 16
20010970:      	ret

20010972 <e310x::common::Peripherals::steal::he07192b5c6941832>:
20010972:      	lui	a1, 524289
20010976:      	li	a0, 1
20010978:      	sb	a0, -1399(a1)
2001097c:      	ret

2001097e <<i32 as core::iter::range::Step>::forward_unchecked::h4200a6a20246bc57>:
2001097e:      	addi	sp, sp, -32
20010980:      	sw	a0, 12(sp)
20010982:      	sw	a1, 16(sp)
20010984:      	sw	a0, 20(sp)
20010986:      	sw	a1, 24(sp)
20010988:      	add	a0, a0, a1
2001098a:      	sw	a0, 8(sp)
2001098c:      	sw	a0, 28(sp)
2001098e:      	j	0x20010990 <<i32 as core::iter::range::Step>::forward_unchecked::h4200a6a20246bc57+0x12>
20010990:      	lw	a0, 8(sp)
20010992:      	addi	sp, sp, 32
20010994:      	ret

20010996 <basic::PROCESS_LIST::{{closure}}::h6d6022eeff3dda1f>:
20010996:      	addi	sp, sp, -48
20010998:      	sw	ra, 44(sp)
2001099a:      	sw	a0, 40(sp)
2001099c:      	j	0x2001099e <basic::PROCESS_LIST::{{closure}}::h6d6022eeff3dda1f+0x8>
2001099e:      	lui	a0, 65554
200109a2:      	li	a1, 3
200109a4:      	auipc	ra, 0
200109a8:      	jalr	1836(ra)
200109ac:      	sw	a0, 12(sp)
200109ae:      	j	0x200109b0 <basic::PROCESS_LIST::{{closure}}::h6d6022eeff3dda1f+0x1a>
200109b0:      	lw	a0, 12(sp)
200109b2:      	lui	a1, 1024
200109b6:      	xor	a2, a0, a1
200109ba:      	sw	a2, 12(sp)
200109bc:      	lui	a0, 65554
200109c0:      	li	a1, 3
200109c2:      	auipc	ra, 0
200109c6:      	jalr	1750(ra)
200109ca:      	j	0x200109cc <basic::PROCESS_LIST::{{closure}}::h6d6022eeff3dda1f+0x36>
200109cc:      	li	a0, 0
200109ce:      	sw	a0, 16(sp)
200109d0:      	lui	a1, 195
200109d4:      	addi	a1, a1, 1280
200109d8:      	sw	a1, 20(sp)
200109da:      	auipc	ra, 0
200109de:      	jalr	838(ra)
200109e2:      	sw	a0, 4(sp)
200109e4:      	sw	a1, 8(sp)
200109e6:      	j	0x200109e8 <basic::PROCESS_LIST::{{closure}}::h6d6022eeff3dda1f+0x52>
200109e8:      	lw	a0, 8(sp)
200109ea:      	lw	a1, 4(sp)
200109ec:      	sw	a1, 24(sp)
200109ee:      	sw	a0, 28(sp)
200109f0:      	j	0x200109f2 <basic::PROCESS_LIST::{{closure}}::h6d6022eeff3dda1f+0x5c>
200109f2:      	addi	a0, sp, 24
200109f4:      	auipc	ra, 0
200109f8:      	jalr	782(ra)
200109fc:      	sw	a0, 32(sp)
200109fe:      	sw	a1, 36(sp)
20010a00:      	j	0x20010a02 <basic::PROCESS_LIST::{{closure}}::h6d6022eeff3dda1f+0x6c>
20010a02:      	lw	a0, 32(sp)
20010a04:      	li	a1, 0
20010a06:      	beq	a0, a1, 0x2001099e <basic::PROCESS_LIST::{{closure}}::h6d6022eeff3dda1f+0x8>
20010a0a:      	j	0x20010a0c <basic::PROCESS_LIST::{{closure}}::h6d6022eeff3dda1f+0x76>
20010a0c:      	j	0x200109f2 <basic::PROCESS_LIST::{{closure}}::h6d6022eeff3dda1f+0x5c>
20010a0e:      	unimp	

20010a10 <basic::PROCESS_LIST::{{closure}}::h60c6b580d6752038>:
20010a10:      	addi	sp, sp, -48
20010a12:      	sw	ra, 44(sp)
20010a14:      	sw	a0, 40(sp)
20010a16:      	j	0x20010a18 <basic::PROCESS_LIST::{{closure}}::h60c6b580d6752038+0x8>
20010a18:      	lui	a0, 65554
20010a1c:      	li	a1, 3
20010a1e:      	auipc	ra, 0
20010a22:      	jalr	1714(ra)
20010a26:      	sw	a0, 12(sp)
20010a28:      	j	0x20010a2a <basic::PROCESS_LIST::{{closure}}::h60c6b580d6752038+0x1a>
20010a2a:      	lw	a0, 12(sp)
20010a2c:      	lui	a1, 128
20010a30:      	xor	a2, a0, a1
20010a34:      	sw	a2, 12(sp)
20010a36:      	lui	a0, 65554
20010a3a:      	li	a1, 3
20010a3c:      	auipc	ra, 0
20010a40:      	jalr	1628(ra)
20010a44:      	j	0x20010a46 <basic::PROCESS_LIST::{{closure}}::h60c6b580d6752038+0x36>
20010a46:      	li	a0, 0
20010a48:      	sw	a0, 16(sp)
20010a4a:      	lui	a1, 98
20010a4e:      	addi	a1, a1, -1408
20010a52:      	sw	a1, 20(sp)
20010a54:      	auipc	ra, 0
20010a58:      	jalr	716(ra)
20010a5c:      	sw	a0, 4(sp)
20010a5e:      	sw	a1, 8(sp)
20010a60:      	j	0x20010a62 <basic::PROCESS_LIST::{{closure}}::h60c6b580d6752038+0x52>
20010a62:      	lw	a0, 8(sp)
20010a64:      	lw	a1, 4(sp)
20010a66:      	sw	a1, 24(sp)
20010a68:      	sw	a0, 28(sp)
20010a6a:      	j	0x20010a6c <basic::PROCESS_LIST::{{closure}}::h60c6b580d6752038+0x5c>
20010a6c:      	addi	a0, sp, 24
20010a6e:      	auipc	ra, 0
20010a72:      	jalr	660(ra)
20010a76:      	sw	a0, 32(sp)
20010a78:      	sw	a1, 36(sp)
20010a7a:      	j	0x20010a7c <basic::PROCESS_LIST::{{closure}}::h60c6b580d6752038+0x6c>
20010a7c:      	lw	a0, 32(sp)
20010a7e:      	li	a1, 0
20010a80:      	beq	a0, a1, 0x20010a18 <basic::PROCESS_LIST::{{closure}}::h60c6b580d6752038+0x8>
20010a84:      	j	0x20010a86 <basic::PROCESS_LIST::{{closure}}::h60c6b580d6752038+0x76>
20010a86:      	j	0x20010a6c <basic::PROCESS_LIST::{{closure}}::h60c6b580d6752038+0x5c>
20010a88:      	unimp	

20010a8a <basic::PROCESS_LIST::{{closure}}::h956efd0ef63fd7aa>:
20010a8a:      	addi	sp, sp, -48
20010a8c:      	sw	ra, 44(sp)
20010a8e:      	sw	a0, 40(sp)
20010a90:      	j	0x20010a92 <basic::PROCESS_LIST::{{closure}}::h956efd0ef63fd7aa+0x8>
20010a92:      	lui	a0, 65554
20010a96:      	li	a1, 3
20010a98:      	auipc	ra, 0
20010a9c:      	jalr	1592(ra)
20010aa0:      	sw	a0, 12(sp)
20010aa2:      	j	0x20010aa4 <basic::PROCESS_LIST::{{closure}}::h956efd0ef63fd7aa+0x1a>
20010aa4:      	lw	a0, 12(sp)
20010aa6:      	lui	a1, 512
20010aaa:      	xor	a2, a0, a1
20010aae:      	sw	a2, 12(sp)
20010ab0:      	lui	a0, 65554
20010ab4:      	li	a1, 3
20010ab6:      	auipc	ra, 0
20010aba:      	jalr	1506(ra)
20010abe:      	j	0x20010ac0 <basic::PROCESS_LIST::{{closure}}::h956efd0ef63fd7aa+0x36>
20010ac0:      	li	a0, 0
20010ac2:      	sw	a0, 16(sp)
20010ac4:      	lui	a1, 49
20010ac8:      	addi	a1, a1, -704
20010acc:      	sw	a1, 20(sp)
20010ace:      	auipc	ra, 0
20010ad2:      	jalr	594(ra)
20010ad6:      	sw	a0, 4(sp)
20010ad8:      	sw	a1, 8(sp)
20010ada:      	j	0x20010adc <basic::PROCESS_LIST::{{closure}}::h956efd0ef63fd7aa+0x52>
20010adc:      	lw	a0, 8(sp)
20010ade:      	lw	a1, 4(sp)
20010ae0:      	sw	a1, 24(sp)
20010ae2:      	sw	a0, 28(sp)
20010ae4:      	j	0x20010ae6 <basic::PROCESS_LIST::{{closure}}::h956efd0ef63fd7aa+0x5c>
20010ae6:      	addi	a0, sp, 24
20010ae8:      	auipc	ra, 0
20010aec:      	jalr	538(ra)
20010af0:      	sw	a0, 32(sp)
20010af2:      	sw	a1, 36(sp)
20010af4:      	j	0x20010af6 <basic::PROCESS_LIST::{{closure}}::h956efd0ef63fd7aa+0x6c>
20010af6:      	lw	a0, 32(sp)
20010af8:      	li	a1, 0
20010afa:      	beq	a0, a1, 0x20010a92 <basic::PROCESS_LIST::{{closure}}::h956efd0ef63fd7aa+0x8>
20010afe:      	j	0x20010b00 <basic::PROCESS_LIST::{{closure}}::h956efd0ef63fd7aa+0x76>
20010b00:      	j	0x20010ae6 <basic::PROCESS_LIST::{{closure}}::h956efd0ef63fd7aa+0x5c>
20010b02:      	unimp	

20010b04 <basic::PROCESS_LIST::{{closure}}::h034c01c2e6220ce3>:
20010b04:      	addi	sp, sp, -16
20010b06:      	sw	a0, 12(sp)
20010b08:      	auipc	ra, 2
20010b0c:      	jalr	994(ra)
20010b10:      	unimp	

20010b12 <core::fmt::Arguments::new_v1::h32fee18044ce6322>:
20010b12:      	addi	sp, sp, -80
20010b14:      	sw	ra, 76(sp)
20010b16:      	sw	a4, 0(sp)
20010b18:      	sw	a3, 4(sp)
20010b1a:      	sw	a2, 8(sp)
20010b1c:      	sw	a1, 12(sp)
20010b1e:      	sw	a0, 16(sp)
20010b20:      	sw	a1, 56(sp)
20010b22:      	sw	a2, 60(sp)
20010b24:      	sw	a3, 64(sp)
20010b26:      	sw	a4, 68(sp)
20010b28:      	bltu	a2, a4, 0x20010b3e <core::fmt::Arguments::new_v1::h32fee18044ce6322+0x2c>
20010b2c:      	j	0x20010b2e <core::fmt::Arguments::new_v1::h32fee18044ce6322+0x1c>
20010b2e:      	lw	a1, 8(sp)
20010b30:      	lw	a0, 0(sp)
20010b32:      	addi	a0, a0, 1
20010b34:      	sltu	a0, a0, a1
20010b38:      	sb	a0, 23(sp)
20010b3c:      	j	0x20010b46 <core::fmt::Arguments::new_v1::h32fee18044ce6322+0x34>
20010b3e:      	li	a0, 1
20010b40:      	sb	a0, 23(sp)
20010b44:      	j	0x20010b46 <core::fmt::Arguments::new_v1::h32fee18044ce6322+0x34>
20010b46:      	lbu	a0, 23(sp)
20010b4a:      	andi	a0, a0, 1
20010b4c:      	li	a1, 0
20010b4e:      	bne	a0, a1, 0x20010b78 <core::fmt::Arguments::new_v1::h32fee18044ce6322+0x66>
20010b52:      	j	0x20010b54 <core::fmt::Arguments::new_v1::h32fee18044ce6322+0x42>
20010b54:      	lw	a0, 0(sp)
20010b56:      	lw	a1, 16(sp)
20010b58:      	lw	a2, 4(sp)
20010b5a:      	lw	a3, 8(sp)
20010b5c:      	lw	a4, 12(sp)
20010b5e:      	li	a5, 0
20010b60:      	sw	a5, 48(sp)
20010b62:      	sw	a4, 0(a1)
20010b64:      	sw	a3, 4(a1)
20010b66:      	lw	a4, 48(sp)
20010b68:      	lw	a3, 52(sp)
20010b6a:      	sw	a4, 8(a1)
20010b6c:      	sw	a3, 12(a1)
20010b6e:      	sw	a2, 16(a1)
20010b70:      	sw	a0, 20(a1)
20010b72:      	lw	ra, 76(sp)
20010b74:      	addi	sp, sp, 80
20010b76:      	ret
20010b78:      	lui	a0, 131093
20010b7c:      	addi	a1, a0, -752
20010b80:      	lui	a0, 131093
20010b84:      	addi	a3, a0, -744
20010b88:      	addi	a0, sp, 24
20010b8a:      	li	a2, 1
20010b8c:      	li	a4, 0
20010b8e:      	auipc	ra, 0
20010b92:      	jalr	-124(ra)
20010b96:      	j	0x20010b98 <core::fmt::Arguments::new_v1::h32fee18044ce6322+0x86>
20010b98:      	lui	a0, 131093
20010b9c:      	addi	a1, a0, -668
20010ba0:      	addi	a0, sp, 24
20010ba2:      	auipc	ra, 4
20010ba6:      	jalr	-1986(ra)
20010baa:      	unimp	

20010bac <core::intrinsics::write_bytes::h12ba71749b98a9b5>:
20010bac:      	addi	sp, sp, -16
20010bae:      	sw	ra, 12(sp)
20010bb0:      	sw	a0, 0(sp)
20010bb2:      	sb	a1, 7(sp)
20010bb6:      	sw	a2, 8(sp)
20010bb8:      	li	a2, 0
20010bba:      	auipc	ra, 4
20010bbe:      	jalr	-486(ra)
20010bc2:      	j	0x20010bc4 <core::intrinsics::write_bytes::h12ba71749b98a9b5+0x18>
20010bc4:      	lw	ra, 12(sp)
20010bc6:      	addi	sp, sp, 16
20010bc8:      	ret

20010bca <e310x::Peripherals::from_common::hb5a4c3165b94ca96>:
20010bca:      	addi	sp, sp, -16
20010bcc:      	addi	sp, sp, 16
20010bce:      	ret

20010bd0 <e310x::Peripherals::take::hdde3f8fc57651d49>:
20010bd0:      	addi	sp, sp, -16
20010bd2:      	sw	ra, 12(sp)
20010bd4:      	auipc	ra, 0
20010bd8:      	jalr	-634(ra)
20010bdc:      	sw	a0, 8(sp)
20010bde:      	j	0x20010be0 <e310x::Peripherals::take::hdde3f8fc57651d49+0x10>
20010be0:      	lw	a0, 8(sp)
20010be2:      	auipc	ra, 0
20010be6:      	jalr	540(ra)
20010bea:      	sw	a0, 4(sp)
20010bec:      	j	0x20010bee <e310x::Peripherals::take::hdde3f8fc57651d49+0x1e>
20010bee:      	lw	a0, 4(sp)
20010bf0:      	lw	ra, 12(sp)
20010bf2:      	addi	sp, sp, 16
20010bf4:      	ret

20010bf6 <core::mem::replace::h34ab8d80a0008b7c>:
20010bf6:      	addi	sp, sp, -32
20010bf8:      	sw	ra, 28(sp)
20010bfa:      	sw	a0, 8(sp)
20010bfc:      	mv	a2, a1
20010bfe:      	sw	a2, 12(sp)
20010c00:      	sw	a0, 20(sp)
20010c02:      	sb	a1, 26(sp)
20010c06:      	auipc	ra, 0
20010c0a:      	jalr	168(ra)
20010c0e:      	mv	a1, a0
20010c10:      	sw	a1, 16(sp)
20010c12:      	sb	a0, 27(sp)
20010c16:      	j	0x20010c18 <core::mem::replace::h34ab8d80a0008b7c+0x22>
20010c18:      	lw	a1, 12(sp)
20010c1a:      	lw	a0, 8(sp)
20010c1c:      	auipc	ra, 0
20010c20:      	jalr	214(ra)
20010c24:      	j	0x20010c26 <core::mem::replace::h34ab8d80a0008b7c+0x30>
20010c26:      	lw	a0, 16(sp)
20010c28:      	lw	ra, 28(sp)
20010c2a:      	addi	sp, sp, 32
20010c2c:      	ret

20010c2e <core::mem::replace::hb7dc204a23d69b35>:
20010c2e:      	addi	sp, sp, -32
20010c30:      	sw	ra, 28(sp)
20010c32:      	sw	a1, 4(sp)
20010c34:      	sw	a0, 8(sp)
20010c36:      	sw	a0, 16(sp)
20010c38:      	sw	a1, 20(sp)
20010c3a:      	auipc	ra, 0
20010c3e:      	jalr	78(ra)
20010c42:      	mv	a1, a0
20010c44:      	sw	a1, 12(sp)
20010c46:      	sw	a0, 24(sp)
20010c48:      	j	0x20010c4a <core::mem::replace::hb7dc204a23d69b35+0x1c>
20010c4a:      	lw	a1, 4(sp)
20010c4c:      	lw	a0, 8(sp)
20010c4e:      	auipc	ra, 0
20010c52:      	jalr	152(ra)
20010c56:      	j	0x20010c58 <core::mem::replace::hb7dc204a23d69b35+0x2a>
20010c58:      	lw	a0, 12(sp)
20010c5a:      	lw	ra, 28(sp)
20010c5c:      	addi	sp, sp, 32
20010c5e:      	ret

20010c60 <riscv::asm::wfi::h03d4f7abddc173d3>:
20010c60:      	wfi	
20010c64:      	j	0x20010c66 <riscv::asm::wfi::h03d4f7abddc173d3+0x6>
20010c66:      	ret

20010c68 <core::ptr::read_volatile::h113fd395db888c75>:
20010c68:      	addi	sp, sp, -16
20010c6a:      	sw	a0, 8(sp)
20010c6c:      	lw	a0, 0(a0)
20010c6e:      	sw	a0, 4(sp)
20010c70:      	sw	a0, 12(sp)
20010c72:      	j	0x20010c74 <core::ptr::read_volatile::h113fd395db888c75+0xc>
20010c74:      	lw	a0, 4(sp)
20010c76:      	addi	sp, sp, 16
20010c78:      	ret

20010c7a <core::ptr::write_volatile::h93160d99bf073c11>:
20010c7a:      	addi	sp, sp, -16
20010c7c:      	sw	a0, 8(sp)
20010c7e:      	sw	a1, 12(sp)
20010c80:      	sw	a1, 0(a0)
20010c82:      	j	0x20010c84 <core::ptr::write_volatile::h93160d99bf073c11+0xa>
20010c84:      	addi	sp, sp, 16
20010c86:      	ret

20010c88 <core::ptr::read::h800f13fa413e31df>:
20010c88:      	addi	sp, sp, -32
20010c8a:      	sw	a0, 4(sp)
20010c8c:      	sw	a0, 12(sp)
20010c8e:      	lw	a0, 24(sp)
20010c90:      	sw	a0, 8(sp)
20010c92:      	j	0x20010c94 <core::ptr::read::h800f13fa413e31df+0xc>
20010c94:      	addi	a0, sp, 8
20010c96:      	sw	a0, 16(sp)
20010c98:      	j	0x20010c9a <core::ptr::read::h800f13fa413e31df+0x12>
20010c9a:      	lw	a0, 4(sp)
20010c9c:      	lw	a0, 0(a0)
20010c9e:      	sw	a0, 0(sp)
20010ca0:      	sw	a0, 8(sp)
20010ca2:      	sw	a0, 20(sp)
20010ca4:      	sw	a0, 28(sp)
20010ca6:      	j	0x20010ca8 <core::ptr::read::h800f13fa413e31df+0x20>
20010ca8:      	lw	a0, 0(sp)
20010caa:      	addi	sp, sp, 32
20010cac:      	ret

20010cae <core::ptr::read::hd40eefe9b5daea91>:
20010cae:      	addi	sp, sp, -32
20010cb0:      	sw	a0, 12(sp)
20010cb2:      	sw	a0, 20(sp)
20010cb4:      	lb	a0, 30(sp)
20010cb8:      	sb	a0, 19(sp)
20010cbc:      	j	0x20010cbe <core::ptr::read::hd40eefe9b5daea91+0x10>
20010cbe:      	addi	a0, sp, 19
20010cc2:      	sw	a0, 24(sp)
20010cc4:      	j	0x20010cc6 <core::ptr::read::hd40eefe9b5daea91+0x18>
20010cc6:      	lw	a0, 12(sp)
20010cc8:      	lbu	a0, 0(a0)
20010ccc:      	sw	a0, 8(sp)
20010cce:      	sb	a0, 19(sp)
20010cd2:      	sb	a0, 29(sp)
20010cd6:      	andi	a0, a0, 1
20010cd8:      	sb	a0, 31(sp)
20010cdc:      	j	0x20010cde <core::ptr::read::hd40eefe9b5daea91+0x30>
20010cde:      	lw	a0, 8(sp)
20010ce0:      	andi	a0, a0, 1
20010ce2:      	addi	sp, sp, 32
20010ce4:      	ret

20010ce6 <core::ptr::write::ha457a5acd181969e>:
20010ce6:      	addi	sp, sp, -16
20010ce8:      	sw	a1, 8(sp)
20010cea:      	sw	a0, 12(sp)
20010cec:      	sw	a1, 0(a0)
20010cee:      	addi	sp, sp, 16
20010cf0:      	ret

20010cf2 <core::ptr::write::ha7f918b485699f72>:
20010cf2:      	addi	sp, sp, -16
20010cf4:      	sb	a1, 11(sp)
20010cf8:      	sw	a0, 12(sp)
20010cfa:      	sb	a1, 0(a0)
20010cfe:      	addi	sp, sp, 16
20010d00:      	ret

20010d02 <core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next::h82d6bbf9c75028a8>:
20010d02:      	addi	sp, sp, -16
20010d04:      	sw	ra, 12(sp)
20010d06:      	sw	a0, 8(sp)
20010d08:      	auipc	ra, 0
20010d0c:      	jalr	34(ra)
20010d10:      	sw	a0, 0(sp)
20010d12:      	sw	a1, 4(sp)
20010d14:      	j	0x20010d16 <core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next::h82d6bbf9c75028a8+0x14>
20010d16:      	lw	a1, 4(sp)
20010d18:      	lw	a0, 0(sp)
20010d1a:      	lw	ra, 12(sp)
20010d1c:      	addi	sp, sp, 16
20010d1e:      	ret

20010d20 <<I as core::iter::traits::collect::IntoIterator>::into_iter::h3fe53668858e26b9>:
20010d20:      	addi	sp, sp, -16
20010d22:      	sw	a0, 8(sp)
20010d24:      	sw	a1, 12(sp)
20010d26:      	addi	sp, sp, 16
20010d28:      	ret

20010d2a <<core::ops::range::Range<T> as core::iter::range::RangeIteratorImpl>::spec_next::h544c4448dad78915>:
20010d2a:      	addi	sp, sp, -48
20010d2c:      	sw	ra, 44(sp)
20010d2e:      	sw	a0, 16(sp)
20010d30:      	sw	a0, 36(sp)
20010d32:      	addi	a1, a0, 4
20010d36:      	auipc	ra, 0
20010d3a:      	jalr	-1914(ra)
20010d3e:      	sw	a0, 20(sp)
20010d40:      	j	0x20010d42 <<core::ops::range::Range<T> as core::iter::range::RangeIteratorImpl>::spec_next::h544c4448dad78915+0x18>
20010d42:      	lw	a0, 20(sp)
20010d44:      	li	a1, 0
20010d46:      	bne	a0, a1, 0x20010d52 <<core::ops::range::Range<T> as core::iter::range::RangeIteratorImpl>::spec_next::h544c4448dad78915+0x28>
20010d4a:      	j	0x20010d4c <<core::ops::range::Range<T> as core::iter::range::RangeIteratorImpl>::spec_next::h544c4448dad78915+0x22>
20010d4c:      	li	a0, 0
20010d4e:      	sw	a0, 24(sp)
20010d50:      	j	0x20010d8e <<core::ops::range::Range<T> as core::iter::range::RangeIteratorImpl>::spec_next::h544c4448dad78915+0x64>
20010d52:      	lw	a0, 16(sp)
20010d54:      	auipc	ra, 1048575
20010d58:      	jalr	1884(ra)
20010d5c:      	sw	a0, 12(sp)
20010d5e:      	j	0x20010d60 <<core::ops::range::Range<T> as core::iter::range::RangeIteratorImpl>::spec_next::h544c4448dad78915+0x36>
20010d60:      	lw	a0, 12(sp)
20010d62:      	li	a1, 1
20010d64:      	auipc	ra, 0
20010d68:      	jalr	-998(ra)
20010d6c:      	mv	a1, a0
20010d6e:      	sw	a1, 8(sp)
20010d70:      	sw	a0, 40(sp)
20010d72:      	j	0x20010d74 <<core::ops::range::Range<T> as core::iter::range::RangeIteratorImpl>::spec_next::h544c4448dad78915+0x4a>
20010d74:      	lw	a1, 8(sp)
20010d76:      	lw	a0, 16(sp)
20010d78:      	auipc	ra, 0
20010d7c:      	jalr	-330(ra)
20010d80:      	sw	a0, 4(sp)
20010d82:      	j	0x20010d84 <<core::ops::range::Range<T> as core::iter::range::RangeIteratorImpl>::spec_next::h544c4448dad78915+0x5a>
20010d84:      	lw	a0, 4(sp)
20010d86:      	sw	a0, 28(sp)
20010d88:      	li	a0, 1
20010d8a:      	sw	a0, 24(sp)
20010d8c:      	j	0x20010d8e <<core::ops::range::Range<T> as core::iter::range::RangeIteratorImpl>::spec_next::h544c4448dad78915+0x64>
20010d8e:      	lw	a0, 24(sp)
20010d90:      	lw	a1, 28(sp)
20010d92:      	lw	ra, 44(sp)
20010d94:      	addi	sp, sp, 48
20010d96:      	ret

20010d98 <core::option::Option<T>::map::h5f164d9baacf59f3>:
20010d98:      	addi	sp, sp, -80
20010d9a:      	sw	ra, 76(sp)
20010d9c:      	sw	a0, 8(sp)
20010d9e:      	sb	a1, 15(sp)
20010da2:      	li	a0, 1
20010da4:      	sb	a0, 63(sp)
20010da8:      	li	a0, 0
20010daa:      	beq	a1, a0, 0x20010db4 <core::option::Option<T>::map::h5f164d9baacf59f3+0x1c>
20010dae:      	j	0x20010db0 <core::option::Option<T>::map::h5f164d9baacf59f3+0x18>
20010db0:      	j	0x20010dbc <core::option::Option<T>::map::h5f164d9baacf59f3+0x24>
20010db2:      	unimp	
20010db4:      	lw	a1, 8(sp)
20010db6:      	li	a0, 0
20010db8:      	sw	a0, 0(a1)
20010dba:      	j	0x20010de8 <core::option::Option<T>::map::h5f164d9baacf59f3+0x50>
20010dbc:      	li	a0, 0
20010dbe:      	sb	a0, 63(sp)
20010dc2:      	addi	a0, sp, 16
20010dc4:      	auipc	ra, 0
20010dc8:      	jalr	544(ra)
20010dcc:      	j	0x20010dce <core::option::Option<T>::map::h5f164d9baacf59f3+0x36>
20010dce:      	lw	a0, 8(sp)
20010dd0:      	addi	a0, a0, 4
20010dd2:      	addi	a1, sp, 16
20010dd4:      	li	a2, 36
20010dd8:      	auipc	ra, 4
20010ddc:      	jalr	-750(ra)
20010de0:      	lw	a1, 8(sp)
20010de2:      	li	a0, 1
20010de4:      	sw	a0, 0(a1)
20010de6:      	j	0x20010de8 <core::option::Option<T>::map::h5f164d9baacf59f3+0x50>
20010de8:      	lbu	a0, 63(sp)
20010dec:      	andi	a0, a0, 1
20010dee:      	li	a1, 0
20010df0:      	bne	a0, a1, 0x20010dfc <core::option::Option<T>::map::h5f164d9baacf59f3+0x64>
20010df4:      	j	0x20010df6 <core::option::Option<T>::map::h5f164d9baacf59f3+0x5e>
20010df6:      	lw	ra, 76(sp)
20010df8:      	addi	sp, sp, 80
20010dfa:      	ret
20010dfc:      	j	0x20010df6 <core::option::Option<T>::map::h5f164d9baacf59f3+0x5e>

20010dfe <core::option::Option<T>::map::hd0a56aad6933283d>:
20010dfe:      	addi	sp, sp, -32
20010e00:      	sw	ra, 28(sp)
20010e02:      	sb	a0, 6(sp)
20010e06:      	li	a1, 1
20010e08:      	sb	a1, 15(sp)
20010e0c:      	li	a1, 0
20010e0e:      	beq	a0, a1, 0x20010e18 <core::option::Option<T>::map::hd0a56aad6933283d+0x1a>
20010e12:      	j	0x20010e14 <core::option::Option<T>::map::hd0a56aad6933283d+0x16>
20010e14:      	j	0x20010e20 <core::option::Option<T>::map::hd0a56aad6933283d+0x22>
20010e16:      	unimp	
20010e18:      	li	a0, 0
20010e1a:      	sb	a0, 7(sp)
20010e1e:      	j	0x20010e38 <core::option::Option<T>::map::hd0a56aad6933283d+0x3a>
20010e20:      	li	a0, 0
20010e22:      	sb	a0, 15(sp)
20010e26:      	auipc	ra, 0
20010e2a:      	jalr	404(ra)
20010e2e:      	j	0x20010e30 <core::option::Option<T>::map::hd0a56aad6933283d+0x32>
20010e30:      	li	a0, 1
20010e32:      	sb	a0, 7(sp)
20010e36:      	j	0x20010e38 <core::option::Option<T>::map::hd0a56aad6933283d+0x3a>
20010e38:      	lbu	a0, 15(sp)
20010e3c:      	andi	a0, a0, 1
20010e3e:      	li	a1, 0
20010e40:      	bne	a0, a1, 0x20010e50 <core::option::Option<T>::map::hd0a56aad6933283d+0x52>
20010e44:      	j	0x20010e46 <core::option::Option<T>::map::hd0a56aad6933283d+0x48>
20010e46:      	lbu	a0, 7(sp)
20010e4a:      	lw	ra, 28(sp)
20010e4c:      	addi	sp, sp, 32
20010e4e:      	ret
20010e50:      	j	0x20010e46 <core::option::Option<T>::map::hd0a56aad6933283d+0x48>

20010e52 <core::option::Option<T>::unwrap::h7ae574d353cf9692>:
20010e52:      	addi	sp, sp, -16
20010e54:      	sw	ra, 12(sp)
20010e56:      	sw	a2, 0(sp)
20010e58:      	sw	a1, 4(sp)
20010e5a:      	sw	a0, 8(sp)
20010e5c:      	lw	a0, 0(a1)
20010e5e:      	li	a1, 0
20010e60:      	beq	a0, a1, 0x20010e6a <core::option::Option<T>::unwrap::h7ae574d353cf9692+0x18>
20010e64:      	j	0x20010e66 <core::option::Option<T>::unwrap::h7ae574d353cf9692+0x14>
20010e66:      	j	0x20010e82 <core::option::Option<T>::unwrap::h7ae574d353cf9692+0x30>
20010e68:      	unimp	
20010e6a:      	lw	a2, 0(sp)
20010e6c:      	lui	a0, 131093
20010e70:      	addi	a0, a0, -652
20010e74:      	li	a1, 43
20010e78:      	auipc	ra, 3
20010e7c:      	jalr	1276(ra)
20010e80:      	unimp	
20010e82:      	lw	a0, 8(sp)
20010e84:      	lw	a1, 4(sp)
20010e86:      	addi	a1, a1, 4
20010e88:      	li	a2, 36
20010e8c:      	auipc	ra, 4
20010e90:      	jalr	-930(ra)
20010e94:      	lw	ra, 12(sp)
20010e96:      	addi	sp, sp, 16
20010e98:      	ret

20010e9a <core::option::Option<T>::replace::h715da8944d98bc88>:
20010e9a:      	addi	sp, sp, -32
20010e9c:      	sw	ra, 28(sp)
20010e9e:      	sw	a0, 20(sp)
20010ea0:      	li	a1, 1
20010ea2:      	sb	a1, 19(sp)
20010ea6:      	auipc	ra, 0
20010eaa:      	jalr	-688(ra)
20010eae:      	sw	a0, 12(sp)
20010eb0:      	j	0x20010eb2 <core::option::Option<T>::replace::h715da8944d98bc88+0x18>
20010eb2:      	lw	a0, 12(sp)
20010eb4:      	lw	ra, 28(sp)
20010eb6:      	addi	sp, sp, 32
20010eb8:      	ret

20010eba <riscv::interrupt::free::h01414a857d1445ad>:
20010eba:      	addi	sp, sp, -32
20010ebc:      	sw	ra, 28(sp)
20010ebe:      	auipc	ra, 0
20010ec2:      	jalr	-1568(ra)
20010ec6:      	sw	a0, 8(sp)
20010ec8:      	j	0x20010eca <riscv::interrupt::free::h01414a857d1445ad+0x10>
20010eca:      	auipc	ra, 0
20010ece:      	jalr	442(ra)
20010ed2:      	j	0x20010ed4 <riscv::interrupt::free::h01414a857d1445ad+0x1a>
20010ed4:      	auipc	ra, 2
20010ed8:      	jalr	-488(ra)
20010edc:      	j	0x20010ede <riscv::interrupt::free::h01414a857d1445ad+0x24>
20010ede:      	addi	a0, sp, 16
20010ee0:      	sw	a0, 12(sp)
20010ee2:      	auipc	ra, 1048575
20010ee6:      	jalr	812(ra)
20010eea:      	mv	a1, a0
20010eec:      	sw	a1, 4(sp)
20010eee:      	sb	a0, 27(sp)
20010ef2:      	j	0x20010ef4 <riscv::interrupt::free::h01414a857d1445ad+0x3a>
20010ef4:      	addi	a0, sp, 8
20010ef6:      	auipc	ra, 0
20010efa:      	jalr	-1552(ra)
20010efe:      	sw	a0, 0(sp)
20010f00:      	j	0x20010f02 <riscv::interrupt::free::h01414a857d1445ad+0x48>
20010f02:      	lw	a0, 0(sp)
20010f04:      	li	a1, 0
20010f06:      	bne	a0, a1, 0x20010f14 <riscv::interrupt::free::h01414a857d1445ad+0x5a>
20010f0a:      	j	0x20010f0c <riscv::interrupt::free::h01414a857d1445ad+0x52>
20010f0c:      	lw	a0, 4(sp)
20010f0e:      	lw	ra, 28(sp)
20010f10:      	addi	sp, sp, 32
20010f12:      	ret
20010f14:      	auipc	ra, 0
20010f18:      	jalr	348(ra)
20010f1c:      	j	0x20010f0c <riscv::interrupt::free::h01414a857d1445ad+0x52>

20010f1e <riscv::interrupt::free::hf93c1272e9a6bd12>:
20010f1e:      	addi	sp, sp, -48
20010f20:      	sw	ra, 44(sp)
20010f22:      	auipc	ra, 0
20010f26:      	jalr	-1668(ra)
20010f2a:      	sw	a0, 16(sp)
20010f2c:      	j	0x20010f2e <riscv::interrupt::free::hf93c1272e9a6bd12+0x10>
20010f2e:      	auipc	ra, 0
20010f32:      	jalr	342(ra)
20010f36:      	j	0x20010f38 <riscv::interrupt::free::hf93c1272e9a6bd12+0x1a>
20010f38:      	auipc	ra, 2
20010f3c:      	jalr	-588(ra)
20010f40:      	j	0x20010f42 <riscv::interrupt::free::hf93c1272e9a6bd12+0x24>
20010f42:      	addi	a0, sp, 24
20010f44:      	sw	a0, 20(sp)
20010f46:      	auipc	ra, 0
20010f4a:      	jalr	-1756(ra)
20010f4e:      	j	0x20010f50 <riscv::interrupt::free::hf93c1272e9a6bd12+0x32>
20010f50:      	addi	a0, sp, 16
20010f52:      	auipc	ra, 0
20010f56:      	jalr	-1644(ra)
20010f5a:      	sw	a0, 12(sp)
20010f5c:      	j	0x20010f5e <riscv::interrupt::free::hf93c1272e9a6bd12+0x40>
20010f5e:      	lw	a0, 12(sp)
20010f60:      	li	a1, 0
20010f62:      	bne	a0, a1, 0x20010f6e <riscv::interrupt::free::hf93c1272e9a6bd12+0x50>
20010f66:      	j	0x20010f68 <riscv::interrupt::free::hf93c1272e9a6bd12+0x4a>
20010f68:      	lw	ra, 44(sp)
20010f6a:      	addi	sp, sp, 48
20010f6c:      	ret
20010f6e:      	auipc	ra, 0
20010f72:      	jalr	258(ra)
20010f76:      	j	0x20010f68 <riscv::interrupt::free::hf93c1272e9a6bd12+0x4a>

20010f78 <core::ops::function::FnOnce::call_once::h06175db1c7d47266>:
20010f78:      	addi	sp, sp, -16
20010f7a:      	sw	ra, 12(sp)
20010f7c:      	mv	a0, sp
20010f7e:      	auipc	ra, 0
20010f82:      	jalr	-1146(ra)
20010f86:      	j	0x20010f88 <core::ops::function::FnOnce::call_once::h06175db1c7d47266+0x10>
20010f88:      	j	0x20010f8a <core::ops::function::FnOnce::call_once::h06175db1c7d47266+0x12>
20010f8a:      	unimp	
20010f8c:      	unimp	

20010f8e <core::ops::function::FnOnce::call_once::h0c34f16ce5c9be4e>:
20010f8e:      	addi	sp, sp, -16
20010f90:      	sw	ra, 12(sp)
20010f92:      	mv	a0, sp
20010f94:      	auipc	ra, 0
20010f98:      	jalr	-1534(ra)
20010f9c:      	j	0x20010f9e <core::ops::function::FnOnce::call_once::h0c34f16ce5c9be4e+0x10>
20010f9e:      	j	0x20010fa0 <core::ops::function::FnOnce::call_once::h0c34f16ce5c9be4e+0x12>
20010fa0:      	unimp	
20010fa2:      	unimp	

20010fa4 <core::ops::function::FnOnce::call_once::h31065494026dc9c1>:
20010fa4:      	addi	sp, sp, -16
20010fa6:      	sw	ra, 12(sp)
20010fa8:      	mv	a0, sp
20010faa:      	auipc	ra, 0
20010fae:      	jalr	-1434(ra)
20010fb2:      	j	0x20010fb4 <core::ops::function::FnOnce::call_once::h31065494026dc9c1+0x10>
20010fb4:      	j	0x20010fb6 <core::ops::function::FnOnce::call_once::h31065494026dc9c1+0x12>
20010fb6:      	unimp	
20010fb8:      	unimp	

20010fba <core::ops::function::FnOnce::call_once::h48fbb53e1baa4722>:
20010fba:      	addi	sp, sp, -16
20010fbc:      	sw	ra, 12(sp)
20010fbe:      	auipc	ra, 0
20010fc2:      	jalr	-1012(ra)
20010fc6:      	j	0x20010fc8 <core::ops::function::FnOnce::call_once::h48fbb53e1baa4722+0xe>
20010fc8:      	lw	ra, 12(sp)
20010fca:      	addi	sp, sp, 16
20010fcc:      	ret

20010fce <core::ops::function::FnOnce::call_once::h5286061e0473d328>:
20010fce:      	addi	sp, sp, -16
20010fd0:      	sw	ra, 12(sp)
20010fd2:      	mv	a0, sp
20010fd4:      	auipc	ra, 0
20010fd8:      	jalr	-1354(ra)
20010fdc:      	j	0x20010fde <core::ops::function::FnOnce::call_once::h5286061e0473d328+0x10>
20010fde:      	j	0x20010fe0 <core::ops::function::FnOnce::call_once::h5286061e0473d328+0x12>
20010fe0:      	unimp	
20010fe2:      	unimp	

20010fe4 <core::ops::function::FnOnce::call_once::h66eceb89346bb60b>:
20010fe4:      	addi	sp, sp, -16
20010fe6:      	sw	ra, 12(sp)
20010fe8:      	auipc	ra, 2
20010fec:      	jalr	-920(ra)
20010ff0:      	j	0x20010ff2 <core::ops::function::FnOnce::call_once::h66eceb89346bb60b+0xe>
20010ff2:      	lw	ra, 12(sp)
20010ff4:      	addi	sp, sp, 16
20010ff6:      	ret

20010ff8 <<usize as bit_field::BitField>::get_bit::h13582717f2018e4d>:
20010ff8:      	addi	sp, sp, -32
20010ffa:      	sw	a1, 16(sp)
20010ffc:      	sw	a0, 20(sp)
20010ffe:      	sw	a0, 24(sp)
20011000:      	sw	a1, 28(sp)
20011002:      	li	a0, 31
20011004:      	bltu	a0, a1, 0x20011026 <<usize as bit_field::BitField>::get_bit::h13582717f2018e4d+0x2e>
20011008:      	j	0x2001100a <<usize as bit_field::BitField>::get_bit::h13582717f2018e4d+0x12>
2001100a:      	lw	a2, 16(sp)
2001100c:      	lw	a0, 20(sp)
2001100e:      	lw	a0, 0(a0)
20011010:      	sw	a0, 8(sp)
20011012:      	andi	a0, a2, -32
20011016:      	li	a1, 1
20011018:      	sll	a1, a1, a2
2001101c:      	sw	a1, 12(sp)
2001101e:      	li	a1, 0
20011020:      	bne	a0, a1, 0x20011052 <<usize as bit_field::BitField>::get_bit::h13582717f2018e4d+0x5a>
20011024:      	j	0x20011044 <<usize as bit_field::BitField>::get_bit::h13582717f2018e4d+0x4c>
20011026:      	lui	a0, 131093
2001102a:      	addi	a0, a0, -609
2001102e:      	lui	a1, 131093
20011032:      	addi	a2, a1, -476
20011036:      	li	a1, 40
2001103a:      	auipc	ra, 3
2001103e:      	jalr	826(ra)
20011042:      	unimp	
20011044:      	lw	a0, 8(sp)
20011046:      	lw	a1, 12(sp)
20011048:      	and	a0, a0, a1
2001104a:      	snez	a0, a0
2001104e:      	addi	sp, sp, 32
20011050:      	ret
20011052:      	lui	a0, 131093
20011056:      	addi	a0, a0, -448
2001105a:      	lui	a1, 131093
2001105e:      	addi	a2, a1, -476
20011062:      	li	a1, 35
20011066:      	auipc	ra, 3
2001106a:      	jalr	782(ra)
2001106e:      	unimp	

20011070 <riscv::interrupt::enable::hcb3eaa6e54c7110e>:
20011070:      	addi	sp, sp, -16
20011072:      	sw	ra, 12(sp)
20011074:      	auipc	ra, 0
20011078:      	jalr	-1906(ra)
2001107c:      	j	0x2001107e <riscv::interrupt::enable::hcb3eaa6e54c7110e+0xe>
2001107e:      	lw	ra, 12(sp)
20011080:      	addi	sp, sp, 16
20011082:      	ret

20011084 <riscv::interrupt::disable::h061507d30f5004d0>:
20011084:      	addi	sp, sp, -16
20011086:      	sw	ra, 12(sp)
20011088:      	auipc	ra, 0
2001108c:      	jalr	-1904(ra)
20011090:      	j	0x20011092 <riscv::interrupt::disable::h061507d30f5004d0+0xe>
20011092:      	lw	ra, 12(sp)
20011094:      	addi	sp, sp, 16
20011096:      	ret

20011098 <basic::mmio_write::h1ef7041b00376a49>:
20011098:      	addi	sp, sp, -64
2001109a:      	sw	ra, 60(sp)
2001109c:      	sw	a2, 8(sp)
2001109e:      	sw	a0, 16(sp)
200110a0:      	sw	a1, 20(sp)
200110a2:      	sw	a2, 24(sp)
200110a4:      	sw	a0, 28(sp)
200110a6:      	sw	a0, 40(sp)
200110a8:      	sw	a1, 44(sp)
200110aa:      	sw	a0, 48(sp)
200110ac:      	sw	a1, 52(sp)
200110ae:      	slli	a1, a1, 2
200110b0:      	add	a0, a0, a1
200110b2:      	sw	a0, 12(sp)
200110b4:      	sw	a0, 56(sp)
200110b6:      	j	0x200110b8 <basic::mmio_write::h1ef7041b00376a49+0x20>
200110b8:      	lw	a1, 8(sp)
200110ba:      	lw	a0, 12(sp)
200110bc:      	sw	a0, 32(sp)
200110be:      	sw	a1, 36(sp)
200110c0:      	auipc	ra, 0
200110c4:      	jalr	-1094(ra)
200110c8:      	j	0x200110ca <basic::mmio_write::h1ef7041b00376a49+0x32>
200110ca:      	lw	ra, 60(sp)
200110cc:      	addi	sp, sp, 64
200110ce:      	ret

200110d0 <basic::mmio_read::h0e93941d2d96dc3a>:
200110d0:      	addi	sp, sp, -48
200110d2:      	sw	ra, 44(sp)
200110d4:      	sw	a0, 8(sp)
200110d6:      	sw	a1, 12(sp)
200110d8:      	sw	a0, 16(sp)
200110da:      	sw	a0, 24(sp)
200110dc:      	sw	a1, 28(sp)
200110de:      	sw	a0, 32(sp)
200110e0:      	sw	a1, 36(sp)
200110e2:      	slli	a1, a1, 2
200110e4:      	add	a0, a0, a1
200110e6:      	sw	a0, 4(sp)
200110e8:      	sw	a0, 40(sp)
200110ea:      	j	0x200110ec <basic::mmio_read::h0e93941d2d96dc3a+0x1c>
200110ec:      	lw	a0, 4(sp)
200110ee:      	sw	a0, 20(sp)
200110f0:      	auipc	ra, 0
200110f4:      	jalr	-1160(ra)
200110f8:      	sw	a0, 0(sp)
200110fa:      	j	0x200110fc <basic::mmio_read::h0e93941d2d96dc3a+0x2c>
200110fc:      	lw	a0, 0(sp)
200110fe:      	lw	ra, 44(sp)
20011100:      	addi	sp, sp, 48
20011102:      	ret

20011104 <rust_begin_unwind>:
20011104:      	addi	sp, sp, -16
20011106:      	sw	ra, 12(sp)
20011108:      	sw	a0, 8(sp)
2001110a:      	j	0x2001110c <rust_begin_unwind+0x8>
2001110c:      	li	a0, 4
2001110e:      	sb	a0, 7(sp)
20011112:      	auipc	ra, 1048575
20011116:      	jalr	974(ra)
2001111a:      	j	0x2001111c <rust_begin_unwind+0x18>
2001111c:      	auipc	ra, 0
20011120:      	jalr	-1212(ra)
20011124:      	j	0x2001110c <rust_begin_unwind+0x8>

20011126 <main>:
20011126:      	addi	sp, sp, -160
20011128:      	sw	ra, 156(sp)
2001112a:      	addi	a0, sp, 64
2001112c:      	auipc	ra, 1048575
20011130:      	jalr	910(ra)
20011134:      	j	0x20011136 <main+0x10>
20011136:      	lui	a0, 131093
2001113a:      	addi	a2, a0, -396
2001113e:      	addi	a0, sp, 24
20011140:      	addi	a1, sp, 64
20011142:      	auipc	ra, 0
20011146:      	jalr	-752(ra)
2001114a:      	j	0x2001114c <main+0x26>
2001114c:      	li	a0, 320
20011150:      	auipc	ra, 2
20011154:      	jalr	-1220(ra)
20011158:      	sw	a0, 20(sp)
2001115a:      	j	0x2001115c <main+0x36>
2001115c:      	lw	a0, 20(sp)
2001115e:      	auipc	ra, 2
20011162:      	jalr	-1224(ra)
20011166:      	mv	a1, a0
20011168:      	sw	a1, 16(sp)
2001116a:      	sw	a0, 132(sp)
2001116c:      	j	0x2001116e <main+0x48>
2001116e:      	lw	a0, 16(sp)
20011170:      	auipc	ra, 0
20011174:      	jalr	438(ra)
20011178:      	mv	a2, a0
2001117a:      	sw	a2, 8(sp)
2001117c:      	mv	a2, a1
2001117e:      	sw	a2, 12(sp)
20011180:      	sw	a0, 136(sp)
20011182:      	sw	a1, 140(sp)
20011184:      	j	0x20011186 <main+0x60>
20011186:      	lui	a0, 28
20011188:      	addi	a0, a0, 512
2001118c:      	auipc	ra, 2
20011190:      	jalr	-1290(ra)
20011194:      	sw	a0, 4(sp)
20011196:      	j	0x20011198 <main+0x72>
20011198:      	lw	a2, 12(sp)
2001119a:      	lw	a1, 8(sp)
2001119c:      	lw	a0, 4(sp)
2001119e:      	auipc	ra, 1048575
200111a2:      	jalr	1662(ra)
200111a6:      	j	0x200111a8 <main+0x82>
200111a8:      	lui	a0, 65554
200111ac:      	li	a1, 3
200111ae:      	auipc	ra, 0
200111b2:      	jalr	-222(ra)
200111b6:      	sw	a0, 108(sp)
200111b8:      	j	0x200111ba <main+0x94>
200111ba:      	lw	a0, 108(sp)
200111bc:      	lui	a1, 1664
200111c0:      	or	a2, a0, a1
200111c4:      	sw	a2, 108(sp)
200111c6:      	lui	a0, 65554
200111ca:      	li	a1, 3
200111cc:      	auipc	ra, 0
200111d0:      	jalr	-308(ra)
200111d4:      	j	0x200111d6 <main+0xb0>
200111d6:      	lui	a0, 65554
200111da:      	li	a1, 2
200111dc:      	auipc	ra, 0
200111e0:      	jalr	-268(ra)
200111e4:      	sw	a0, 112(sp)
200111e6:      	j	0x200111e8 <main+0xc2>
200111e8:      	lw	a0, 112(sp)
200111ea:      	lui	a1, 1664
200111ee:      	or	a2, a0, a1
200111f2:      	sw	a2, 112(sp)
200111f4:      	lui	a0, 65554
200111f8:      	li	a1, 2
200111fa:      	auipc	ra, 0
200111fe:      	jalr	-354(ra)
20011202:      	j	0x20011204 <main+0xde>
20011204:      	li	a2, 0
20011206:      	sw	a2, 148(sp)
20011208:      	lui	a1, 8
2001120a:      	sw	a1, 144(sp)
2001120c:      	sb	a2, 119(sp)
20011210:      	mv	a0, a2
20011212:      	auipc	ra, 2
20011216:      	jalr	398(ra)
2001121a:      	unimp	

2001121c <<T as core::convert::From<T>>::from::h9d31b95705c1a4a2>:
2001121c:      	addi	sp, sp, -16
2001121e:      	sw	a0, 12(sp)
20011220:      	addi	sp, sp, 16
20011222:      	ret

20011224 <<T as core::convert::Into<U>>::into::he31249aa45dadf92>:
20011224:      	addi	sp, sp, -16
20011226:      	sw	ra, 12(sp)
20011228:      	sw	a0, 8(sp)
2001122a:      	auipc	ra, 0
2001122e:      	jalr	-14(ra)
20011232:      	sw	a0, 4(sp)
20011234:      	j	0x20011236 <<T as core::convert::Into<U>>::into::he31249aa45dadf92+0x12>
20011236:      	lw	a0, 4(sp)
20011238:      	lw	ra, 12(sp)
2001123a:      	addi	sp, sp, 16
2001123c:      	ret

2001123e <core::sync::atomic::atomic_and::haf0b9798a20e00ef>:
2001123e:      	addi	sp, sp, -32
20011240:      	sw	a1, 4(sp)
20011242:      	sw	a0, 8(sp)
20011244:      	sb	a2, 19(sp)
20011248:      	sw	a0, 24(sp)
2001124a:      	sw	a1, 28(sp)
2001124c:      	andi	a0, a2, 255
20011250:      	sw	a0, 12(sp)
20011252:      	lw	a0, 12(sp)
20011254:      	slli	a0, a0, 2
20011256:      	lui	a1, 131093
2001125a:      	addi	a1, a1, -380
2001125e:      	add	a0, a0, a1
20011260:      	lw	a0, 0(a0)
20011262:      	jr	a0
20011264:      	unimp	

20011266 <.LBB0_3>:
20011266:      	lw	a0, 8(sp)
20011268:      	lw	a1, 4(sp)
2001126a:      	amoand.w	a0, a1, (a0)
2001126e:      	sw	a0, 20(sp)
20011270:      	j	0x200112b0 <.LBB0_7+0x1a>

20011272 <.LBB0_4>:
20011272:      	lw	a0, 8(sp)
20011274:      	lw	a1, 4(sp)
20011276:      	amoand.w.rl	a0, a1, (a0)
2001127a:      	sw	a0, 20(sp)
2001127c:      	j	0x200112ae <.LBB0_7+0x18>

2001127e <.LBB0_5>:
2001127e:      	lw	a0, 8(sp)
20011280:      	lw	a1, 4(sp)
20011282:      	amoand.w.aq	a0, a1, (a0)
20011286:      	sw	a0, 20(sp)
20011288:      	j	0x200112ac <.LBB0_7+0x16>

2001128a <.LBB0_6>:
2001128a:      	lw	a0, 8(sp)
2001128c:      	lw	a1, 4(sp)
2001128e:      	amoand.w.aqrl	a0, a1, (a0)
20011292:      	sw	a0, 20(sp)
20011294:      	j	0x200112aa <.LBB0_7+0x14>

20011296 <.LBB0_7>:
20011296:      	lw	a0, 8(sp)
20011298:      	lw	a1, 4(sp)
2001129a:      	amoand.w.aqrl	a0, a1, (a0)
2001129e:      	sw	a0, 20(sp)
200112a0:      	j	0x200112a2 <.LBB0_7+0xc>
200112a2:      	j	0x200112a4 <.LBB0_7+0xe>
200112a4:      	lw	a0, 20(sp)
200112a6:      	addi	sp, sp, 32
200112a8:      	ret
200112aa:      	j	0x200112a4 <.LBB0_7+0xe>
200112ac:      	j	0x200112a4 <.LBB0_7+0xe>
200112ae:      	j	0x200112a4 <.LBB0_7+0xe>
200112b0:      	j	0x200112a4 <.LBB0_7+0xe>

200112b2 <core::sync::atomic::atomic_or::h38230ce02a4bf642>:
200112b2:      	addi	sp, sp, -32
200112b4:      	sw	a1, 4(sp)
200112b6:      	sw	a0, 8(sp)
200112b8:      	sb	a2, 19(sp)
200112bc:      	sw	a0, 24(sp)
200112be:      	sw	a1, 28(sp)
200112c0:      	andi	a0, a2, 255
200112c4:      	sw	a0, 12(sp)
200112c6:      	lw	a0, 12(sp)
200112c8:      	slli	a0, a0, 2
200112ca:      	lui	a1, 131093
200112ce:      	addi	a1, a1, -360
200112d2:      	add	a0, a0, a1
200112d4:      	lw	a0, 0(a0)
200112d6:      	jr	a0
200112d8:      	unimp	

200112da <.LBB3_3>:
200112da:      	lw	a0, 8(sp)
200112dc:      	lw	a1, 4(sp)
200112de:      	amoor.w	a0, a1, (a0)
200112e2:      	sw	a0, 20(sp)
200112e4:      	j	0x20011324 <.LBB3_7+0x1a>

200112e6 <.LBB3_4>:
200112e6:      	lw	a0, 8(sp)
200112e8:      	lw	a1, 4(sp)
200112ea:      	amoor.w.rl	a0, a1, (a0)
200112ee:      	sw	a0, 20(sp)
200112f0:      	j	0x20011322 <.LBB3_7+0x18>

200112f2 <.LBB3_5>:
200112f2:      	lw	a0, 8(sp)
200112f4:      	lw	a1, 4(sp)
200112f6:      	amoor.w.aq	a0, a1, (a0)
200112fa:      	sw	a0, 20(sp)
200112fc:      	j	0x20011320 <.LBB3_7+0x16>

200112fe <.LBB3_6>:
200112fe:      	lw	a0, 8(sp)
20011300:      	lw	a1, 4(sp)
20011302:      	amoor.w.aqrl	a0, a1, (a0)
20011306:      	sw	a0, 20(sp)
20011308:      	j	0x2001131e <.LBB3_7+0x14>

2001130a <.LBB3_7>:
2001130a:      	lw	a0, 8(sp)
2001130c:      	lw	a1, 4(sp)
2001130e:      	amoor.w.aqrl	a0, a1, (a0)
20011312:      	sw	a0, 20(sp)
20011314:      	j	0x20011316 <.LBB3_7+0xc>
20011316:      	j	0x20011318 <.LBB3_7+0xe>
20011318:      	lw	a0, 20(sp)
2001131a:      	addi	sp, sp, 32
2001131c:      	ret
2001131e:      	j	0x20011318 <.LBB3_7+0xe>
20011320:      	j	0x20011318 <.LBB3_7+0xe>
20011322:      	j	0x20011318 <.LBB3_7+0xe>
20011324:      	j	0x20011318 <.LBB3_7+0xe>

20011326 <hifive1::clock::configure::h321eef0acf83927a>:
20011326:      	addi	sp, sp, -160
20011328:      	sw	ra, 156(sp)
2001132a:      	sw	a0, 28(sp)
2001132c:      	sw	a0, 132(sp)
2001132e:      	addi	a0, sp, 32
20011330:      	auipc	ra, 1
20011334:      	jalr	2000(ra)
20011338:      	j	0x2001133a <hifive1::clock::configure::h321eef0acf83927a+0x14>
2001133a:      	lw	a0, 40(sp)
2001133c:      	sw	a0, 88(sp)
2001133e:      	lw	a0, 36(sp)
20011340:      	sw	a0, 84(sp)
20011342:      	lw	a0, 32(sp)
20011344:      	sw	a0, 80(sp)
20011346:      	lui	a0, 3906
2001134a:      	addi	a2, a0, 1024
2001134e:      	sw	a2, 96(sp)
20011350:      	addi	a0, sp, 64
20011352:      	addi	a1, sp, 80
20011354:      	auipc	ra, 0
20011358:      	jalr	216(ra)
2001135c:      	j	0x2001135e <hifive1::clock::configure::h321eef0acf83927a+0x38>
2001135e:      	lw	a2, 28(sp)
20011360:      	addi	a0, sp, 48
20011362:      	addi	a1, sp, 64
20011364:      	auipc	ra, 0
20011368:      	jalr	308(ra)
2001136c:      	j	0x2001136e <hifive1::clock::configure::h321eef0acf83927a+0x48>
2001136e:      	auipc	ra, 1
20011372:      	jalr	1966(ra)
20011376:      	mv	a2, a0
20011378:      	sw	a2, 20(sp)
2001137a:      	mv	a2, a1
2001137c:      	sw	a2, 24(sp)
2001137e:      	sw	a0, 136(sp)
20011380:      	sw	a1, 140(sp)
20011382:      	j	0x20011384 <hifive1::clock::configure::h321eef0acf83927a+0x5e>
20011384:      	lw	a1, 24(sp)
20011386:      	lw	a0, 20(sp)
20011388:      	lui	a2, 8
2001138a:      	sw	a2, 100(sp)
2001138c:      	auipc	ra, 0
20011390:      	jalr	64(ra)
20011394:      	mv	a2, a0
20011396:      	sw	a2, 12(sp)
20011398:      	mv	a2, a1
2001139a:      	sw	a2, 16(sp)
2001139c:      	sw	a0, 144(sp)
2001139e:      	sw	a1, 148(sp)
200113a0:      	j	0x200113a2 <hifive1::clock::configure::h321eef0acf83927a+0x7c>
200113a2:      	lw	a2, 16(sp)
200113a4:      	lw	a1, 12(sp)
200113a6:      	lw	a0, 56(sp)
200113a8:      	sw	a0, 112(sp)
200113aa:      	lw	a0, 52(sp)
200113ac:      	sw	a0, 108(sp)
200113ae:      	lw	a0, 48(sp)
200113b0:      	sw	a0, 104(sp)
200113b2:      	addi	a0, sp, 104
200113b4:      	auipc	ra, 1
200113b8:      	jalr	1542(ra)
200113bc:      	sw	a0, 4(sp)
200113be:      	sw	a1, 8(sp)
200113c0:      	j	0x200113c2 <hifive1::clock::configure::h321eef0acf83927a+0x9c>
200113c2:      	lw	a1, 8(sp)
200113c4:      	lw	a0, 4(sp)
200113c6:      	lw	ra, 156(sp)
200113c8:      	addi	sp, sp, 160
200113ca:      	ret

200113cc <e310x_hal::clock::AonClk::use_external::h5885aac8f7939750>:
200113cc:      	addi	sp, sp, -48
200113ce:      	sw	ra, 44(sp)
200113d0:      	sw	a2, 8(sp)
200113d2:      	mv	a2, a0
200113d4:      	lw	a0, 8(sp)
200113d6:      	sw	a2, 16(sp)
200113d8:      	sw	a1, 20(sp)
200113da:      	sw	a0, 36(sp)
200113dc:      	auipc	ra, 0
200113e0:      	jalr	-440(ra)
200113e4:      	mv	a1, a0
200113e6:      	sw	a1, 12(sp)
200113e8:      	sw	a0, 40(sp)
200113ea:      	j	0x200113ec <e310x_hal::clock::AonClk::use_external::h5885aac8f7939750+0x20>
200113ec:      	lw	a1, 12(sp)
200113ee:      	lui	a0, 122
200113f2:      	addi	a0, a0, 287
200113f6:      	bltu	a0, a1, 0x2001140e <e310x_hal::clock::AonClk::use_external::h5885aac8f7939750+0x42>
200113fa:      	j	0x200113fc <e310x_hal::clock::AonClk::use_external::h5885aac8f7939750+0x30>
200113fc:      	lw	a1, 12(sp)
200113fe:      	sw	a1, 28(sp)
20011400:      	li	a0, 1
20011402:      	sw	a0, 24(sp)
20011404:      	sw	a0, 16(sp)
20011406:      	sw	a1, 20(sp)
20011408:      	lw	ra, 44(sp)
2001140a:      	addi	sp, sp, 48
2001140c:      	ret
2001140e:      	lui	a0, 131093
20011412:      	addi	a0, a0, -308
20011416:      	lui	a1, 131093
2001141a:      	addi	a2, a1, -184
2001141e:      	li	a1, 32
20011422:      	auipc	ra, 3
20011426:      	jalr	-174(ra)
2001142a:      	unimp	

2001142c <e310x_hal::clock::CoreClk::use_external::ha0d946a8190e2b17>:
2001142c:      	addi	sp, sp, -48
2001142e:      	sw	ra, 44(sp)
20011430:      	sw	a2, 12(sp)
20011432:      	sw	a1, 8(sp)
20011434:      	mv	a1, a0
20011436:      	lw	a0, 12(sp)
20011438:      	sw	a1, 16(sp)
2001143a:      	sw	a0, 36(sp)
2001143c:      	auipc	ra, 0
20011440:      	jalr	-536(ra)
20011444:      	mv	a1, a0
20011446:      	sw	a1, 20(sp)
20011448:      	sw	a0, 40(sp)
2001144a:      	j	0x2001144c <e310x_hal::clock::CoreClk::use_external::ha0d946a8190e2b17+0x20>
2001144c:      	lw	a1, 20(sp)
2001144e:      	lui	a0, 4883
20011452:      	addi	a0, a0, -769
20011456:      	bltu	a0, a1, 0x2001147a <e310x_hal::clock::CoreClk::use_external::ha0d946a8190e2b17+0x4e>
2001145a:      	j	0x2001145c <e310x_hal::clock::CoreClk::use_external::ha0d946a8190e2b17+0x30>
2001145c:      	lw	a1, 16(sp)
2001145e:      	lw	a2, 20(sp)
20011460:      	lw	a3, 8(sp)
20011462:      	sw	a2, 28(sp)
20011464:      	li	a0, 1
20011466:      	sw	a0, 24(sp)
20011468:      	sw	a0, 0(a3)
2001146a:      	sw	a2, 4(a3)
2001146c:      	lw	a3, 8(a3)
2001146e:      	sw	a3, 8(a1)
20011470:      	sw	a2, 4(a1)
20011472:      	sw	a0, 0(a1)
20011474:      	lw	ra, 44(sp)
20011476:      	addi	sp, sp, 48
20011478:      	ret
2001147a:      	lui	a0, 131093
2001147e:      	addi	a0, a0, -168
20011482:      	lui	a1, 131093
20011486:      	addi	a2, a1, -132
2001148a:      	li	a1, 35
2001148e:      	auipc	ra, 3
20011492:      	jalr	-282(ra)
20011496:      	unimp	

20011498 <e310x_hal::clock::CoreClk::coreclk::h1f270e604242cb69>:
20011498:      	addi	sp, sp, -32
2001149a:      	sw	ra, 28(sp)
2001149c:      	sw	a2, 12(sp)
2001149e:      	sw	a1, 8(sp)
200114a0:      	mv	a1, a0
200114a2:      	lw	a0, 12(sp)
200114a4:      	sw	a1, 16(sp)
200114a6:      	sw	a0, 24(sp)
200114a8:      	auipc	ra, 0
200114ac:      	jalr	-644(ra)
200114b0:      	sw	a0, 20(sp)
200114b2:      	j	0x200114b4 <e310x_hal::clock::CoreClk::coreclk::h1f270e604242cb69+0x1c>
200114b4:      	lw	a1, 16(sp)
200114b6:      	lw	a0, 8(sp)
200114b8:      	lw	a2, 20(sp)
200114ba:      	sw	a2, 8(a0)
200114bc:      	sw	a2, 8(a1)
200114be:      	lw	a2, 4(a0)
200114c0:      	sw	a2, 4(a1)
200114c2:      	lw	a0, 0(a0)
200114c4:      	sw	a0, 0(a1)
200114c6:      	lw	ra, 28(sp)
200114c8:      	addi	sp, sp, 32
200114ca:      	ret

200114cc <e310x_hal::clock::CoreClk::freeze::h6725beda22f515bc>:
200114cc:      	addi	sp, sp, -112
200114ce:      	sw	ra, 108(sp)
200114d0:      	sw	a0, 16(sp)
200114d2:      	j	0x200114d4 <e310x_hal::clock::CoreClk::freeze::h6725beda22f515bc+0x8>
200114d4:      	lw	a0, 16(sp)
200114d6:      	lui	a1, 65544
200114da:      	sw	a1, 52(sp)
200114dc:      	auipc	ra, 0
200114e0:      	jalr	1548(ra)
200114e4:      	mv	a1, a0
200114e6:      	sw	a1, 12(sp)
200114e8:      	sw	a0, 56(sp)
200114ea:      	j	0x200114ec <e310x_hal::clock::CoreClk::freeze::h6725beda22f515bc+0x20>
200114ec:      	lui	a0, 65544
200114f0:      	addi	a0, a0, 8
200114f2:      	sw	a0, 8(sp)
200114f4:      	sw	a0, 80(sp)
200114f6:      	sw	a0, 88(sp)
200114f8:      	sw	a0, 92(sp)
200114fa:      	auipc	ra, 1
200114fe:      	jalr	1450(ra)
20011502:      	sw	a0, 84(sp)
20011504:      	sw	a0, 72(sp)
20011506:      	sw	a0, 76(sp)
20011508:      	addi	a0, sp, 72
2001150a:      	sw	a0, 64(sp)
2001150c:      	addi	a1, sp, 76
2001150e:      	sw	a1, 68(sp)
20011510:      	auipc	ra, 0
20011514:      	jalr	112(ra)
20011518:      	mv	a1, a0
2001151a:      	lw	a0, 8(sp)
2001151c:      	lw	a1, 0(a1)
2001151e:      	sw	a0, 96(sp)
20011520:      	sw	a1, 100(sp)
20011522:      	sw	a0, 104(sp)
20011524:      	auipc	ra, 1
20011528:      	jalr	1426(ra)
2001152c:      	j	0x2001152e <e310x_hal::clock::CoreClk::freeze::h6725beda22f515bc+0x62>
2001152e:      	lw	a0, 16(sp)
20011530:      	lw	a0, 0(a0)
20011532:      	li	a1, 0
20011534:      	beq	a0, a1, 0x2001155a <e310x_hal::clock::CoreClk::freeze::h6725beda22f515bc+0x8e>
20011538:      	j	0x2001153a <e310x_hal::clock::CoreClk::freeze::h6725beda22f515bc+0x6e>
2001153a:      	lw	a0, 16(sp)
2001153c:      	lw	a1, 4(a0)
2001153e:      	sw	a1, 60(sp)
20011540:      	lw	a2, 0(a0)
20011542:      	sw	a2, 24(sp)
20011544:      	lw	a2, 4(a0)
20011546:      	sw	a2, 28(sp)
20011548:      	lw	a0, 8(a0)
2001154a:      	sw	a0, 32(sp)
2001154c:      	addi	a0, sp, 24
2001154e:      	auipc	ra, 0
20011552:      	jalr	132(ra)
20011556:      	sw	a0, 20(sp)
20011558:      	j	0x20011578 <e310x_hal::clock::CoreClk::freeze::h6725beda22f515bc+0xac>
2001155a:      	lw	a1, 12(sp)
2001155c:      	lw	a0, 16(sp)
2001155e:      	lw	a2, 8(a0)
20011560:      	sw	a2, 48(sp)
20011562:      	lw	a2, 4(a0)
20011564:      	sw	a2, 44(sp)
20011566:      	lw	a0, 0(a0)
20011568:      	sw	a0, 40(sp)
2001156a:      	addi	a0, sp, 40
2001156c:      	auipc	ra, 0
20011570:      	jalr	876(ra)
20011574:      	sw	a0, 20(sp)
20011576:      	j	0x20011578 <e310x_hal::clock::CoreClk::freeze::h6725beda22f515bc+0xac>
20011578:      	lw	a0, 20(sp)
2001157a:      	lw	ra, 108(sp)
2001157c:      	addi	sp, sp, 112
2001157e:      	ret

20011580 <e310x_hal::clock::CoreClk::freeze::{{closure}}::h8eefd1ff79780bb4>:
20011580:      	addi	sp, sp, -64
20011582:      	sw	a0, 24(sp)
20011584:      	sw	a1, 28(sp)
20011586:      	sw	a1, 36(sp)
20011588:      	sw	a1, 32(sp)
2001158a:      	sw	a1, 12(sp)
2001158c:      	j	0x2001158e <e310x_hal::clock::CoreClk::freeze::{{closure}}::h8eefd1ff79780bb4+0xe>
2001158e:      	lw	a1, 12(sp)
20011590:      	sw	a1, 48(sp)
20011592:      	li	a0, 0
20011594:      	sb	a0, 55(sp)
20011598:      	lw	a0, 0(a1)
2001159a:      	lui	a2, 1048560
2001159c:      	addi	a2, a2, -1
2001159e:      	and	a0, a0, a2
200115a0:      	sw	a0, 0(a1)
200115a2:      	lw	a0, 48(sp)
200115a4:      	sw	a0, 8(sp)
200115a6:      	j	0x200115a8 <e310x_hal::clock::CoreClk::freeze::{{closure}}::h8eefd1ff79780bb4+0x28>
200115a8:      	lw	a0, 8(sp)
200115aa:      	sw	a0, 44(sp)
200115ac:      	sw	a0, 40(sp)
200115ae:      	sw	a0, 4(sp)
200115b0:      	j	0x200115b2 <e310x_hal::clock::CoreClk::freeze::{{closure}}::h8eefd1ff79780bb4+0x32>
200115b2:      	lw	a1, 4(sp)
200115b4:      	sw	a1, 56(sp)
200115b6:      	li	a0, 1
200115b8:      	sb	a0, 63(sp)
200115bc:      	lw	a0, 0(a1)
200115be:      	lui	a2, 64
200115c2:      	or	a0, a0, a2
200115c4:      	sw	a0, 0(a1)
200115c6:      	lw	a0, 56(sp)
200115c8:      	sw	a0, 0(sp)
200115ca:      	j	0x200115cc <e310x_hal::clock::CoreClk::freeze::{{closure}}::h8eefd1ff79780bb4+0x4c>
200115cc:      	lw	a0, 0(sp)
200115ce:      	addi	sp, sp, 64
200115d0:      	ret

200115d2 <e310x_hal::clock::CoreClk::configure_with_external::h67b5a7aa8d99e9ac>:
200115d2:      	addi	sp, sp, -304
200115d4:      	sw	ra, 300(sp)
200115d8:      	sw	a1, 32(sp)
200115da:      	sw	a0, 36(sp)
200115dc:      	sw	a1, 52(sp)
200115de:      	j	0x200115e0 <e310x_hal::clock::CoreClk::configure_with_external::h67b5a7aa8d99e9ac+0xe>
200115e0:      	lui	a0, 65544
200115e4:      	sw	a0, 56(sp)
200115e6:      	addi	a0, a0, 4
200115e8:      	sw	a0, 28(sp)
200115ea:      	sw	a0, 104(sp)
200115ec:      	li	a0, 0
200115ee:      	sw	a0, 100(sp)
200115f0:      	addi	a0, sp, 100
200115f2:      	sw	a0, 96(sp)
200115f4:      	auipc	ra, 0
200115f8:      	jalr	472(ra)
200115fc:      	mv	a1, a0
200115fe:      	lw	a0, 28(sp)
20011600:      	lw	a1, 0(a1)
20011602:      	sw	a0, 276(sp)
20011606:      	sw	a1, 280(sp)
2001160a:      	sw	a0, 284(sp)
2001160e:      	auipc	ra, 1
20011612:      	jalr	1192(ra)
20011616:      	j	0x20011618 <e310x_hal::clock::CoreClk::configure_with_external::h67b5a7aa8d99e9ac+0x46>
20011618:      	lui	a0, 65544
2001161c:      	addi	a0, a0, 4
2001161e:      	sw	a0, 80(sp)
20011620:      	sw	a0, 220(sp)
20011622:      	sw	a0, 224(sp)
20011624:      	auipc	ra, 1
20011628:      	jalr	1152(ra)
2001162c:      	sw	a0, 76(sp)
2001162e:      	sw	a0, 48(sp)
20011630:      	j	0x20011632 <e310x_hal::clock::CoreClk::configure_with_external::h67b5a7aa8d99e9ac+0x60>
20011632:      	addi	a0, sp, 48
20011634:      	sw	a0, 60(sp)
20011636:      	lw	a0, 48(sp)
20011638:      	srli	a0, a0, 31
2001163a:      	sb	a0, 67(sp)
2001163e:      	sb	a0, 66(sp)
20011642:      	sb	a0, 47(sp)
20011646:      	j	0x20011648 <e310x_hal::clock::CoreClk::configure_with_external::h67b5a7aa8d99e9ac+0x76>
20011648:      	addi	a0, sp, 47
2001164c:      	sw	a0, 68(sp)
2001164e:      	sw	a0, 72(sp)
20011650:      	lb	a0, 47(sp)
20011654:      	sw	a0, 24(sp)
20011656:      	j	0x20011658 <e310x_hal::clock::CoreClk::configure_with_external::h67b5a7aa8d99e9ac+0x86>
20011658:      	lw	a0, 24(sp)
2001165a:      	andi	a0, a0, 1
2001165c:      	li	a1, 0
2001165e:      	beq	a0, a1, 0x20011618 <e310x_hal::clock::CoreClk::configure_with_external::h67b5a7aa8d99e9ac+0x46>
20011662:      	j	0x20011664 <e310x_hal::clock::CoreClk::configure_with_external::h67b5a7aa8d99e9ac+0x92>
20011664:      	lui	a0, 65544
20011668:      	addi	a0, a0, 8
2001166a:      	sw	a0, 20(sp)
2001166c:      	sw	a0, 160(sp)
2001166e:      	sw	a0, 204(sp)
20011670:      	sw	a0, 208(sp)
20011672:      	auipc	ra, 1
20011676:      	jalr	1074(ra)
2001167a:      	sw	a0, 164(sp)
2001167c:      	sw	a0, 152(sp)
2001167e:      	sw	a0, 156(sp)
20011680:      	addi	a0, sp, 152
20011682:      	sw	a0, 144(sp)
20011684:      	addi	a1, sp, 156
20011686:      	sw	a1, 148(sp)
20011688:      	auipc	ra, 0
2001168c:      	jalr	368(ra)
20011690:      	mv	a1, a0
20011692:      	lw	a0, 20(sp)
20011694:      	lw	a1, 0(a1)
20011696:      	sw	a0, 240(sp)
20011698:      	sw	a1, 244(sp)
2001169a:      	sw	a0, 248(sp)
2001169c:      	auipc	ra, 1
200116a0:      	jalr	1050(ra)
200116a4:      	j	0x200116a6 <e310x_hal::clock::CoreClk::configure_with_external::h67b5a7aa8d99e9ac+0xd4>
200116a6:      	lw	a0, 32(sp)
200116a8:      	lw	a1, 36(sp)
200116aa:      	lw	a1, 8(a1)
200116ac:      	beq	a0, a1, 0x200116c4 <e310x_hal::clock::CoreClk::configure_with_external::h67b5a7aa8d99e9ac+0xf2>
200116b0:      	j	0x200116b2 <e310x_hal::clock::CoreClk::configure_with_external::h67b5a7aa8d99e9ac+0xe0>
200116b2:      	lw	a1, 32(sp)
200116b4:      	lw	a0, 36(sp)
200116b6:      	lw	a2, 8(a0)
200116b8:      	auipc	ra, 0
200116bc:      	jalr	1344(ra)
200116c0:      	sw	a0, 16(sp)
200116c2:      	j	0x20011788 <e310x_hal::clock::CoreClk::configure_with_external::h67b5a7aa8d99e9ac+0x1b6>
200116c4:      	lw	a0, 32(sp)
200116c6:      	sw	a0, 40(sp)
200116c8:      	lui	a0, 65544
200116cc:      	addi	a0, a0, 8
200116ce:      	sw	a0, 12(sp)
200116d0:      	sw	a0, 136(sp)
200116d2:      	sw	a0, 212(sp)
200116d4:      	sw	a0, 216(sp)
200116d6:      	auipc	ra, 1
200116da:      	jalr	974(ra)
200116de:      	sw	a0, 140(sp)
200116e0:      	sw	a0, 128(sp)
200116e2:      	sw	a0, 132(sp)
200116e4:      	addi	a0, sp, 128
200116e6:      	sw	a0, 120(sp)
200116e8:      	addi	a1, sp, 132
200116ea:      	sw	a1, 124(sp)
200116ec:      	auipc	ra, 0
200116f0:      	jalr	314(ra)
200116f4:      	mv	a1, a0
200116f6:      	lw	a0, 12(sp)
200116f8:      	lw	a1, 0(a1)
200116fa:      	sw	a0, 252(sp)
200116fc:      	sw	a1, 256(sp)
20011700:      	sw	a0, 260(sp)
20011704:      	auipc	ra, 1
20011708:      	jalr	946(ra)
2001170c:      	j	0x2001170e <e310x_hal::clock::CoreClk::configure_with_external::h67b5a7aa8d99e9ac+0x13c>
2001170e:      	lui	a0, 65544
20011712:      	addi	a0, a0, 12
20011714:      	sw	a0, 8(sp)
20011716:      	sw	a0, 92(sp)
20011718:      	li	a0, 256
2001171c:      	sw	a0, 88(sp)
2001171e:      	addi	a0, sp, 88
20011720:      	sw	a0, 84(sp)
20011722:      	auipc	ra, 0
20011726:      	jalr	306(ra)
2001172a:      	mv	a1, a0
2001172c:      	lw	a0, 8(sp)
2001172e:      	lw	a1, 0(a1)
20011730:      	sw	a0, 288(sp)
20011734:      	sw	a1, 292(sp)
20011738:      	sw	a0, 296(sp)
2001173c:      	auipc	ra, 1
20011740:      	jalr	890(ra)
20011744:      	j	0x20011746 <e310x_hal::clock::CoreClk::configure_with_external::h67b5a7aa8d99e9ac+0x174>
20011746:      	lui	a0, 65544
2001174a:      	addi	a0, a0, 8
2001174c:      	sw	a0, 4(sp)
2001174e:      	sw	a0, 188(sp)
20011750:      	sw	a0, 196(sp)
20011752:      	sw	a0, 200(sp)
20011754:      	auipc	ra, 1
20011758:      	jalr	848(ra)
2001175c:      	sw	a0, 192(sp)
2001175e:      	sw	a0, 180(sp)
20011760:      	sw	a0, 184(sp)
20011762:      	addi	a0, sp, 180
20011764:      	sw	a0, 168(sp)
20011766:      	addi	a1, sp, 184
20011768:      	sw	a1, 172(sp)
2001176a:      	auipc	ra, 0
2001176e:      	jalr	276(ra)
20011772:      	mv	a1, a0
20011774:      	lw	a0, 4(sp)
20011776:      	lw	a1, 0(a1)
20011778:      	sw	a0, 228(sp)
2001177a:      	sw	a1, 232(sp)
2001177c:      	sw	a0, 236(sp)
2001177e:      	auipc	ra, 1
20011782:      	jalr	824(ra)
20011786:      	j	0x2001178e <e310x_hal::clock::CoreClk::configure_with_external::h67b5a7aa8d99e9ac+0x1bc>
20011788:      	lw	a0, 16(sp)
2001178a:      	sw	a0, 40(sp)
2001178c:      	j	0x20011746 <e310x_hal::clock::CoreClk::configure_with_external::h67b5a7aa8d99e9ac+0x174>
2001178e:      	lui	a0, 65544
20011792:      	sw	a0, 0(sp)
20011794:      	sw	a0, 116(sp)
20011796:      	li	a0, 0
20011798:      	sw	a0, 112(sp)
2001179a:      	addi	a0, sp, 112
2001179c:      	sw	a0, 108(sp)
2001179e:      	auipc	ra, 0
200117a2:      	jalr	268(ra)
200117a6:      	mv	a1, a0
200117a8:      	lw	a0, 0(sp)
200117aa:      	lw	a1, 0(a1)
200117ac:      	sw	a0, 264(sp)
200117b0:      	sw	a1, 268(sp)
200117b4:      	sw	a0, 272(sp)
200117b8:      	auipc	ra, 1
200117bc:      	jalr	766(ra)
200117c0:      	j	0x200117c2 <e310x_hal::clock::CoreClk::configure_with_external::h67b5a7aa8d99e9ac+0x1f0>
200117c2:      	lw	a0, 40(sp)
200117c4:      	lw	ra, 300(sp)
200117c8:      	addi	sp, sp, 304
200117ca:      	ret

200117cc <e310x_hal::clock::CoreClk::configure_with_external::{{closure}}::h9b7b8d0180a7c99c>:
200117cc:      	addi	sp, sp, -32
200117ce:      	sw	a0, 12(sp)
200117d0:      	sw	a0, 20(sp)
200117d2:      	sw	a0, 16(sp)
200117d4:      	sw	a0, 4(sp)
200117d6:      	j	0x200117d8 <e310x_hal::clock::CoreClk::configure_with_external::{{closure}}::h9b7b8d0180a7c99c+0xc>
200117d8:      	lw	a1, 4(sp)
200117da:      	sw	a1, 24(sp)
200117dc:      	li	a0, 1
200117de:      	sb	a0, 31(sp)
200117e2:      	lw	a0, 0(a1)
200117e4:      	lui	a2, 262144
200117e8:      	or	a0, a0, a2
200117ea:      	sw	a0, 0(a1)
200117ec:      	lw	a0, 24(sp)
200117ee:      	sw	a0, 0(sp)
200117f0:      	j	0x200117f2 <e310x_hal::clock::CoreClk::configure_with_external::{{closure}}::h9b7b8d0180a7c99c+0x26>
200117f2:      	lw	a0, 0(sp)
200117f4:      	addi	sp, sp, 32
200117f6:      	ret

200117f8 <e310x_hal::clock::CoreClk::configure_with_external::{{closure}}::ha3936a554c8763d3>:
200117f8:      	addi	sp, sp, -48
200117fa:      	sw	a0, 24(sp)
200117fc:      	sw	a1, 28(sp)
200117fe:      	sw	a1, 36(sp)
20011800:      	sw	a1, 32(sp)
20011802:      	sw	a1, 12(sp)
20011804:      	j	0x20011806 <e310x_hal::clock::CoreClk::configure_with_external::{{closure}}::ha3936a554c8763d3+0xe>
20011806:      	lw	a1, 12(sp)
20011808:      	sw	a1, 40(sp)
2001180a:      	li	a0, 1
2001180c:      	sb	a0, 47(sp)
20011810:      	lw	a0, 0(a1)
20011812:      	lui	a2, 32
20011816:      	or	a0, a0, a2
20011818:      	sw	a0, 0(a1)
2001181a:      	lw	a0, 40(sp)
2001181c:      	sw	a0, 8(sp)
2001181e:      	j	0x20011820 <e310x_hal::clock::CoreClk::configure_with_external::{{closure}}::ha3936a554c8763d3+0x28>
20011820:      	lw	a0, 8(sp)
20011822:      	addi	sp, sp, 48
20011824:      	ret

20011826 <e310x_hal::clock::CoreClk::configure_with_external::{{closure}}::hed65d9c81f77e135>:
20011826:      	addi	sp, sp, -48
20011828:      	sw	a0, 24(sp)
2001182a:      	sw	a1, 28(sp)
2001182c:      	sw	a1, 36(sp)
2001182e:      	sw	a1, 32(sp)
20011830:      	sw	a1, 12(sp)
20011832:      	j	0x20011834 <e310x_hal::clock::CoreClk::configure_with_external::{{closure}}::hed65d9c81f77e135+0xe>
20011834:      	lw	a1, 12(sp)
20011836:      	sw	a1, 40(sp)
20011838:      	li	a0, 1
2001183a:      	sb	a0, 47(sp)
2001183e:      	lw	a0, 0(a1)
20011840:      	lui	a2, 64
20011844:      	or	a0, a0, a2
20011846:      	sw	a0, 0(a1)
20011848:      	lw	a0, 40(sp)
2001184a:      	sw	a0, 8(sp)
2001184c:      	j	0x2001184e <e310x_hal::clock::CoreClk::configure_with_external::{{closure}}::hed65d9c81f77e135+0x28>
2001184e:      	lw	a0, 8(sp)
20011850:      	addi	sp, sp, 48
20011852:      	ret

20011854 <e310x_hal::clock::CoreClk::configure_with_external::{{closure}}::h7a2825da19294463>:
20011854:      	addi	sp, sp, -32
20011856:      	sw	a0, 12(sp)
20011858:      	sw	a0, 20(sp)
2001185a:      	sw	a0, 16(sp)
2001185c:      	sw	a0, 4(sp)
2001185e:      	j	0x20011860 <e310x_hal::clock::CoreClk::configure_with_external::{{closure}}::h7a2825da19294463+0xc>
20011860:      	lw	a1, 4(sp)
20011862:      	sw	a1, 24(sp)
20011864:      	li	a0, 1
20011866:      	sb	a0, 31(sp)
2001186a:      	lw	a0, 0(a1)
2001186c:      	ori	a0, a0, 256
20011870:      	sw	a0, 0(a1)
20011872:      	lw	a0, 24(sp)
20011874:      	sw	a0, 0(sp)
20011876:      	j	0x20011878 <e310x_hal::clock::CoreClk::configure_with_external::{{closure}}::h7a2825da19294463+0x24>
20011878:      	lw	a0, 0(sp)
2001187a:      	addi	sp, sp, 32
2001187c:      	ret

2001187e <e310x_hal::clock::CoreClk::configure_with_external::{{closure}}::hb6ba016df3391fba>:
2001187e:      	addi	sp, sp, -48
20011880:      	sw	a0, 24(sp)
20011882:      	sw	a1, 28(sp)
20011884:      	sw	a1, 36(sp)
20011886:      	sw	a1, 32(sp)
20011888:      	sw	a1, 12(sp)
2001188a:      	j	0x2001188c <e310x_hal::clock::CoreClk::configure_with_external::{{closure}}::hb6ba016df3391fba+0xe>
2001188c:      	lw	a1, 12(sp)
2001188e:      	sw	a1, 40(sp)
20011890:      	li	a0, 1
20011892:      	sb	a0, 47(sp)
20011896:      	lw	a0, 0(a1)
20011898:      	lui	a2, 16
2001189a:      	or	a0, a0, a2
2001189c:      	sw	a0, 0(a1)
2001189e:      	lw	a0, 40(sp)
200118a0:      	sw	a0, 8(sp)
200118a2:      	j	0x200118a4 <e310x_hal::clock::CoreClk::configure_with_external::{{closure}}::hb6ba016df3391fba+0x26>
200118a4:      	lw	a0, 8(sp)
200118a6:      	addi	sp, sp, 48
200118a8:      	ret

200118aa <e310x_hal::clock::CoreClk::configure_with_external::{{closure}}::hf51c8c635202f4b6>:
200118aa:      	addi	sp, sp, -32
200118ac:      	sw	a0, 12(sp)
200118ae:      	sw	a0, 20(sp)
200118b0:      	sw	a0, 16(sp)
200118b2:      	sw	a0, 4(sp)
200118b4:      	j	0x200118b6 <e310x_hal::clock::CoreClk::configure_with_external::{{closure}}::hf51c8c635202f4b6+0xc>
200118b6:      	lw	a1, 4(sp)
200118b8:      	sw	a1, 24(sp)
200118ba:      	li	a0, 0
200118bc:      	sb	a0, 31(sp)
200118c0:      	lw	a0, 0(a1)
200118c2:      	lui	a2, 786432
200118c6:      	addi	a2, a2, -1
200118c8:      	and	a0, a0, a2
200118ca:      	sw	a0, 0(a1)
200118cc:      	lw	a0, 24(sp)
200118ce:      	sw	a0, 0(sp)
200118d0:      	j	0x200118d2 <e310x_hal::clock::CoreClk::configure_with_external::{{closure}}::hf51c8c635202f4b6+0x28>
200118d2:      	lw	a0, 0(sp)
200118d4:      	addi	sp, sp, 32
200118d6:      	ret

200118d8 <e310x_hal::clock::CoreClk::configure_with_internal::h8485c39b64768fcf>:
200118d8:      	addi	sp, sp, -208
200118da:      	sw	ra, 204(sp)
200118dc:      	sw	a1, 24(sp)
200118de:      	sw	a0, 28(sp)
200118e0:      	sw	a1, 36(sp)
200118e2:      	j	0x200118e4 <e310x_hal::clock::CoreClk::configure_with_internal::h8485c39b64768fcf+0xc>
200118e4:      	lw	a0, 24(sp)
200118e6:      	lw	a1, 28(sp)
200118e8:      	lui	a2, 65544
200118ec:      	sw	a2, 40(sp)
200118ee:      	lw	a1, 8(a1)
200118f0:      	beq	a0, a1, 0x20011908 <e310x_hal::clock::CoreClk::configure_with_internal::h8485c39b64768fcf+0x30>
200118f4:      	j	0x200118f6 <e310x_hal::clock::CoreClk::configure_with_internal::h8485c39b64768fcf+0x1e>
200118f6:      	lw	a1, 24(sp)
200118f8:      	lw	a0, 28(sp)
200118fa:      	lw	a2, 8(a0)
200118fc:      	auipc	ra, 0
20011900:      	jalr	764(ra)
20011904:      	sw	a0, 20(sp)
20011906:      	j	0x200119c0 <e310x_hal::clock::CoreClk::configure_with_internal::h8485c39b64768fcf+0xe8>
20011908:      	lw	a0, 24(sp)
2001190a:      	sw	a0, 32(sp)
2001190c:      	lui	a0, 65544
20011910:      	addi	a0, a0, 8
20011912:      	sw	a0, 16(sp)
20011914:      	sw	a0, 124(sp)
20011916:      	sw	a0, 132(sp)
20011918:      	sw	a0, 136(sp)
2001191a:      	auipc	ra, 1
2001191e:      	jalr	394(ra)
20011922:      	sw	a0, 128(sp)
20011924:      	sw	a0, 116(sp)
20011926:      	sw	a0, 120(sp)
20011928:      	addi	a0, sp, 116
2001192a:      	sw	a0, 104(sp)
2001192c:      	addi	a1, sp, 120
2001192e:      	sw	a1, 108(sp)
20011930:      	auipc	ra, 0
20011934:      	jalr	222(ra)
20011938:      	mv	a1, a0
2001193a:      	lw	a0, 16(sp)
2001193c:      	lw	a1, 0(a1)
2001193e:      	sw	a0, 156(sp)
20011940:      	sw	a1, 160(sp)
20011942:      	sw	a0, 164(sp)
20011944:      	auipc	ra, 1
20011948:      	jalr	370(ra)
2001194c:      	j	0x2001194e <e310x_hal::clock::CoreClk::configure_with_internal::h8485c39b64768fcf+0x76>
2001194e:      	lui	a0, 65544
20011952:      	addi	a0, a0, 8
20011954:      	sw	a0, 12(sp)
20011956:      	sw	a0, 96(sp)
20011958:      	sw	a0, 140(sp)
2001195a:      	sw	a0, 144(sp)
2001195c:      	auipc	ra, 1
20011960:      	jalr	328(ra)
20011964:      	sw	a0, 100(sp)
20011966:      	sw	a0, 88(sp)
20011968:      	sw	a0, 92(sp)
2001196a:      	addi	a0, sp, 88
2001196c:      	sw	a0, 80(sp)
2001196e:      	addi	a1, sp, 92
20011970:      	sw	a1, 84(sp)
20011972:      	auipc	ra, 0
20011976:      	jalr	238(ra)
2001197a:      	mv	a1, a0
2001197c:      	lw	a0, 12(sp)
2001197e:      	lw	a1, 0(a1)
20011980:      	sw	a0, 168(sp)
20011982:      	sw	a1, 172(sp)
20011984:      	sw	a0, 176(sp)
20011986:      	auipc	ra, 1
2001198a:      	jalr	304(ra)
2001198e:      	j	0x20011990 <e310x_hal::clock::CoreClk::configure_with_internal::h8485c39b64768fcf+0xb8>
20011990:      	lui	a0, 65544
20011994:      	addi	a0, a0, 4
20011996:      	sw	a0, 8(sp)
20011998:      	sw	a0, 52(sp)
2001199a:      	li	a0, 0
2001199c:      	sw	a0, 48(sp)
2001199e:      	addi	a0, sp, 48
200119a0:      	sw	a0, 44(sp)
200119a2:      	auipc	ra, 0
200119a6:      	jalr	280(ra)
200119aa:      	mv	a1, a0
200119ac:      	lw	a0, 8(sp)
200119ae:      	lw	a1, 0(a1)
200119b0:      	sw	a0, 192(sp)
200119b2:      	sw	a1, 196(sp)
200119b4:      	sw	a0, 200(sp)
200119b6:      	auipc	ra, 1
200119ba:      	jalr	256(ra)
200119be:      	j	0x20011a06 <e310x_hal::clock::CoreClk::configure_with_internal::h8485c39b64768fcf+0x12e>
200119c0:      	lw	a0, 20(sp)
200119c2:      	sw	a0, 32(sp)
200119c4:      	lui	a0, 65544
200119c8:      	addi	a0, a0, 8
200119ca:      	sw	a0, 4(sp)
200119cc:      	sw	a0, 72(sp)
200119ce:      	sw	a0, 148(sp)
200119d0:      	sw	a0, 152(sp)
200119d2:      	auipc	ra, 1
200119d6:      	jalr	210(ra)
200119da:      	sw	a0, 76(sp)
200119dc:      	sw	a0, 64(sp)
200119de:      	sw	a0, 68(sp)
200119e0:      	addi	a0, sp, 64
200119e2:      	sw	a0, 56(sp)
200119e4:      	addi	a1, sp, 68
200119e6:      	sw	a1, 60(sp)
200119e8:      	auipc	ra, 0
200119ec:      	jalr	166(ra)
200119f0:      	mv	a1, a0
200119f2:      	lw	a0, 4(sp)
200119f4:      	lw	a1, 0(a1)
200119f6:      	sw	a0, 180(sp)
200119f8:      	sw	a1, 184(sp)
200119fa:      	sw	a0, 188(sp)
200119fc:      	auipc	ra, 1
20011a00:      	jalr	186(ra)
20011a04:      	j	0x20011990 <e310x_hal::clock::CoreClk::configure_with_internal::h8485c39b64768fcf+0xb8>
20011a06:      	lw	a0, 32(sp)
20011a08:      	lw	ra, 204(sp)
20011a0a:      	addi	sp, sp, 208
20011a0c:      	ret

20011a0e <e310x_hal::clock::CoreClk::configure_with_internal::{{closure}}::h3a511ec658887198>:
20011a0e:      	addi	sp, sp, -64
20011a10:      	sw	a0, 24(sp)
20011a12:      	sw	a1, 28(sp)
20011a14:      	sw	a1, 36(sp)
20011a16:      	sw	a1, 32(sp)
20011a18:      	sw	a1, 12(sp)
20011a1a:      	j	0x20011a1c <e310x_hal::clock::CoreClk::configure_with_internal::{{closure}}::h3a511ec658887198+0xe>
20011a1c:      	lw	a1, 12(sp)
20011a1e:      	sw	a1, 48(sp)
20011a20:      	li	a0, 0
20011a22:      	sb	a0, 55(sp)
20011a26:      	lw	a0, 0(a1)
20011a28:      	lui	a2, 1048560
20011a2a:      	addi	a2, a2, -1
20011a2c:      	and	a0, a0, a2
20011a2e:      	sw	a0, 0(a1)
20011a30:      	lw	a0, 48(sp)
20011a32:      	sw	a0, 8(sp)
20011a34:      	j	0x20011a36 <e310x_hal::clock::CoreClk::configure_with_internal::{{closure}}::h3a511ec658887198+0x28>
20011a36:      	lw	a0, 8(sp)
20011a38:      	sw	a0, 44(sp)
20011a3a:      	sw	a0, 40(sp)
20011a3c:      	sw	a0, 4(sp)
20011a3e:      	j	0x20011a40 <e310x_hal::clock::CoreClk::configure_with_internal::{{closure}}::h3a511ec658887198+0x32>
20011a40:      	lw	a1, 4(sp)
20011a42:      	sw	a1, 56(sp)
20011a44:      	li	a0, 1
20011a46:      	sb	a0, 63(sp)
20011a4a:      	lw	a0, 0(a1)
20011a4c:      	lui	a2, 64
20011a50:      	or	a0, a0, a2
20011a52:      	sw	a0, 0(a1)
20011a54:      	lw	a0, 56(sp)
20011a56:      	sw	a0, 0(sp)
20011a58:      	j	0x20011a5a <e310x_hal::clock::CoreClk::configure_with_internal::{{closure}}::h3a511ec658887198+0x4c>
20011a5a:      	lw	a0, 0(sp)
20011a5c:      	addi	sp, sp, 64
20011a5e:      	ret

20011a60 <e310x_hal::clock::CoreClk::configure_with_internal::{{closure}}::h1bafd0054499570e>:
20011a60:      	addi	sp, sp, -48
20011a62:      	sw	a0, 24(sp)
20011a64:      	sw	a1, 28(sp)
20011a66:      	sw	a1, 36(sp)
20011a68:      	sw	a1, 32(sp)
20011a6a:      	sw	a1, 12(sp)
20011a6c:      	j	0x20011a6e <e310x_hal::clock::CoreClk::configure_with_internal::{{closure}}::h1bafd0054499570e+0xe>
20011a6e:      	lw	a1, 12(sp)
20011a70:      	sw	a1, 40(sp)
20011a72:      	li	a0, 1
20011a74:      	sb	a0, 47(sp)
20011a78:      	lw	a0, 0(a1)
20011a7a:      	lui	a2, 64
20011a7e:      	or	a0, a0, a2
20011a80:      	sw	a0, 0(a1)
20011a82:      	lw	a0, 40(sp)
20011a84:      	sw	a0, 8(sp)
20011a86:      	j	0x20011a88 <e310x_hal::clock::CoreClk::configure_with_internal::{{closure}}::h1bafd0054499570e+0x28>
20011a88:      	lw	a0, 8(sp)
20011a8a:      	addi	sp, sp, 48
20011a8c:      	ret

20011a8e <e310x_hal::clock::CoreClk::configure_with_internal::{{closure}}::ha703f3bbffd2b3d0>:
20011a8e:      	addi	sp, sp, -48
20011a90:      	sw	a0, 24(sp)
20011a92:      	sw	a1, 28(sp)
20011a94:      	sw	a1, 36(sp)
20011a96:      	sw	a1, 32(sp)
20011a98:      	sw	a1, 12(sp)
20011a9a:      	j	0x20011a9c <e310x_hal::clock::CoreClk::configure_with_internal::{{closure}}::ha703f3bbffd2b3d0+0xe>
20011a9c:      	lw	a1, 12(sp)
20011a9e:      	sw	a1, 40(sp)
20011aa0:      	li	a0, 1
20011aa2:      	sb	a0, 47(sp)
20011aa6:      	lw	a0, 0(a1)
20011aa8:      	lui	a2, 16
20011aaa:      	or	a0, a0, a2
20011aac:      	sw	a0, 0(a1)
20011aae:      	lw	a0, 40(sp)
20011ab0:      	sw	a0, 8(sp)
20011ab2:      	j	0x20011ab4 <e310x_hal::clock::CoreClk::configure_with_internal::{{closure}}::ha703f3bbffd2b3d0+0x26>
20011ab4:      	lw	a0, 8(sp)
20011ab6:      	addi	sp, sp, 48
20011ab8:      	ret

20011aba <e310x_hal::clock::CoreClk::configure_with_internal::{{closure}}::h449421c202c27f63>:
20011aba:      	addi	sp, sp, -32
20011abc:      	sw	a0, 12(sp)
20011abe:      	sw	a0, 20(sp)
20011ac0:      	sw	a0, 16(sp)
20011ac2:      	sw	a0, 4(sp)
20011ac4:      	j	0x20011ac6 <e310x_hal::clock::CoreClk::configure_with_internal::{{closure}}::h449421c202c27f63+0xc>
20011ac6:      	lw	a1, 4(sp)
20011ac8:      	sw	a1, 24(sp)
20011aca:      	li	a0, 0
20011acc:      	sb	a0, 31(sp)
20011ad0:      	lw	a0, 0(a1)
20011ad2:      	lui	a2, 786432
20011ad6:      	addi	a2, a2, -1
20011ad8:      	and	a0, a0, a2
20011ada:      	sw	a0, 0(a1)
20011adc:      	lw	a0, 24(sp)
20011ade:      	sw	a0, 0(sp)
20011ae0:      	j	0x20011ae2 <e310x_hal::clock::CoreClk::configure_with_internal::{{closure}}::h449421c202c27f63+0x28>
20011ae2:      	lw	a0, 0(sp)
20011ae4:      	addi	sp, sp, 32
20011ae6:      	ret

20011ae8 <e310x_hal::clock::CoreClk::configure_hfrosc::h4574116cb47726ea>:
20011ae8:      	addi	sp, sp, -96
20011aea:      	sw	ra, 92(sp)
20011aec:      	sw	a0, 28(sp)
20011aee:      	j	0x20011af0 <e310x_hal::clock::CoreClk::configure_hfrosc::h4574116cb47726ea+0x8>
20011af0:      	lui	a0, 65544
20011af4:      	sw	a0, 12(sp)
20011af6:      	sw	a0, 32(sp)
20011af8:      	sw	a0, 68(sp)
20011afa:      	li	a0, 0
20011afc:      	sw	a0, 64(sp)
20011afe:      	addi	a0, sp, 64
20011b00:      	sw	a0, 60(sp)
20011b02:      	auipc	ra, 0
20011b06:      	jalr	120(ra)
20011b0a:      	mv	a1, a0
20011b0c:      	lw	a0, 12(sp)
20011b0e:      	lw	a1, 0(a1)
20011b10:      	sw	a0, 80(sp)
20011b12:      	sw	a1, 84(sp)
20011b14:      	sw	a0, 88(sp)
20011b16:      	auipc	ra, 1
20011b1a:      	jalr	-96(ra)
20011b1e:      	j	0x20011b20 <e310x_hal::clock::CoreClk::configure_hfrosc::h4574116cb47726ea+0x38>
20011b20:      	lui	a0, 65544
20011b24:      	sw	a0, 56(sp)
20011b26:      	sw	a0, 72(sp)
20011b28:      	sw	a0, 76(sp)
20011b2a:      	auipc	ra, 1
20011b2e:      	jalr	-134(ra)
20011b32:      	sw	a0, 52(sp)
20011b34:      	sw	a0, 24(sp)
20011b36:      	j	0x20011b38 <e310x_hal::clock::CoreClk::configure_hfrosc::h4574116cb47726ea+0x50>
20011b38:      	addi	a0, sp, 24
20011b3a:      	sw	a0, 36(sp)
20011b3c:      	lw	a0, 24(sp)
20011b3e:      	srli	a0, a0, 31
20011b40:      	sb	a0, 43(sp)
20011b44:      	sb	a0, 42(sp)
20011b48:      	sb	a0, 23(sp)
20011b4c:      	j	0x20011b4e <e310x_hal::clock::CoreClk::configure_hfrosc::h4574116cb47726ea+0x66>
20011b4e:      	addi	a0, sp, 23
20011b52:      	sw	a0, 44(sp)
20011b54:      	sw	a0, 48(sp)
20011b56:      	lb	a0, 23(sp)
20011b5a:      	sw	a0, 8(sp)
20011b5c:      	j	0x20011b5e <e310x_hal::clock::CoreClk::configure_hfrosc::h4574116cb47726ea+0x76>
20011b5e:      	lw	a0, 8(sp)
20011b60:      	andi	a0, a0, 1
20011b62:      	li	a1, 0
20011b64:      	beq	a0, a1, 0x20011b20 <e310x_hal::clock::CoreClk::configure_hfrosc::h4574116cb47726ea+0x38>
20011b68:      	j	0x20011b6a <e310x_hal::clock::CoreClk::configure_hfrosc::h4574116cb47726ea+0x82>
20011b6a:      	lui	a0, 3369
20011b6e:      	addi	a0, a0, 576
20011b72:      	sw	a0, 16(sp)
20011b74:      	lw	ra, 92(sp)
20011b76:      	addi	sp, sp, 96
20011b78:      	ret

20011b7a <e310x_hal::clock::CoreClk::configure_hfrosc::{{closure}}::h307c259f0d5bcf2a>:
20011b7a:      	addi	sp, sp, -80
20011b7c:      	sw	a0, 28(sp)
20011b7e:      	sw	a0, 36(sp)
20011b80:      	sw	a0, 32(sp)
20011b82:      	sw	a0, 20(sp)
20011b84:      	j	0x20011b86 <e310x_hal::clock::CoreClk::configure_hfrosc::{{closure}}::h307c259f0d5bcf2a+0xc>
20011b86:      	lw	a1, 20(sp)
20011b88:      	sw	a1, 56(sp)
20011b8a:      	li	a0, 4
20011b8c:      	sb	a0, 63(sp)
20011b90:      	lw	a0, 0(a1)
20011b92:      	andi	a0, a0, -64
20011b96:      	ori	a0, a0, 4
20011b9a:      	sw	a0, 0(a1)
20011b9c:      	lw	a0, 56(sp)
20011b9e:      	sw	a0, 16(sp)
20011ba0:      	j	0x20011ba2 <e310x_hal::clock::CoreClk::configure_hfrosc::{{closure}}::h307c259f0d5bcf2a+0x28>
20011ba2:      	lw	a0, 16(sp)
20011ba4:      	sw	a0, 44(sp)
20011ba6:      	sw	a0, 40(sp)
20011ba8:      	sw	a0, 12(sp)
20011baa:      	j	0x20011bac <e310x_hal::clock::CoreClk::configure_hfrosc::{{closure}}::h307c259f0d5bcf2a+0x32>
20011bac:      	lw	a1, 12(sp)
20011bae:      	sw	a1, 64(sp)
20011bb0:      	li	a0, 16
20011bb2:      	sb	a0, 71(sp)
20011bb6:      	lw	a0, 0(a1)
20011bb8:      	lui	a2, 1048080
20011bbc:      	addi	a2, a2, -1
20011bbe:      	and	a0, a0, a2
20011bc0:      	lui	a2, 256
20011bc4:      	or	a0, a0, a2
20011bc6:      	sw	a0, 0(a1)
20011bc8:      	lw	a0, 64(sp)
20011bca:      	sw	a0, 8(sp)
20011bcc:      	j	0x20011bce <e310x_hal::clock::CoreClk::configure_hfrosc::{{closure}}::h307c259f0d5bcf2a+0x54>
20011bce:      	lw	a0, 8(sp)
20011bd0:      	sw	a0, 52(sp)
20011bd2:      	sw	a0, 48(sp)
20011bd4:      	sw	a0, 4(sp)
20011bd6:      	j	0x20011bd8 <e310x_hal::clock::CoreClk::configure_hfrosc::{{closure}}::h307c259f0d5bcf2a+0x5e>
20011bd8:      	lw	a1, 4(sp)
20011bda:      	sw	a1, 72(sp)
20011bdc:      	li	a0, 1
20011bde:      	sb	a0, 79(sp)
20011be2:      	lw	a0, 0(a1)
20011be4:      	lui	a2, 262144
20011be8:      	or	a0, a0, a2
20011bea:      	sw	a0, 0(a1)
20011bec:      	lw	a0, 72(sp)
20011bee:      	sw	a0, 0(sp)
20011bf0:      	j	0x20011bf2 <e310x_hal::clock::CoreClk::configure_hfrosc::{{closure}}::h307c259f0d5bcf2a+0x78>
20011bf2:      	lw	a0, 0(sp)
20011bf4:      	addi	sp, sp, 80
20011bf6:      	ret

20011bf8 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551>:
20011bf8:      	addi	sp, sp, -480
20011bfa:      	sw	ra, 476(sp)
20011bfe:      	sw	a2, 160(sp)
20011c00:      	sw	a1, 164(sp)
20011c02:      	sw	a0, 260(sp)
20011c06:      	sw	a1, 264(sp)
20011c0a:      	sw	a2, 268(sp)
20011c0e:      	sw	a1, 272(sp)
20011c12:      	lui	a0, 1465
20011c16:      	addi	a0, a0, -641
20011c1a:      	bltu	a0, a1, 0x20011c28 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x30>
20011c1e:      	j	0x20011c20 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x28>
20011c20:      	li	a0, 0
20011c22:      	sb	a0, 174(sp)
20011c26:      	j	0x20011c3c <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x44>
20011c28:      	lw	a0, 164(sp)
20011c2a:      	lui	a1, 11719
20011c2e:      	addi	a1, a1, -1023
20011c32:      	sltu	a0, a0, a1
20011c36:      	sb	a0, 174(sp)
20011c3a:      	j	0x20011c3c <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x44>
20011c3c:      	lbu	a0, 174(sp)
20011c40:      	andi	a0, a0, 1
20011c42:      	li	a1, 0
20011c44:      	beq	a0, a1, 0x20011c5e <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x66>
20011c48:      	j	0x20011c4a <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x52>
20011c4a:      	lw	a1, 160(sp)
20011c4c:      	sw	a1, 276(sp)
20011c50:      	lui	a0, 92
20011c54:      	addi	a0, a0, -1833
20011c58:      	bltu	a0, a1, 0x20011c84 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x8c>
20011c5c:      	j	0x20011c7c <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x84>
20011c5e:      	lui	a0, 131093
20011c62:      	addi	a0, a0, -116
20011c66:      	lui	a1, 131093
20011c6a:      	addi	a2, a1, 48
20011c6e:      	li	a1, 72
20011c72:      	auipc	ra, 2
20011c76:      	jalr	1794(ra)
20011c7a:      	unimp	
20011c7c:      	li	a0, 0
20011c7e:      	sb	a0, 175(sp)
20011c82:      	j	0x20011c96 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x9e>
20011c84:      	lw	a0, 160(sp)
20011c86:      	lui	a1, 93750
20011c8a:      	addi	a1, a1, 1
20011c8c:      	sltu	a0, a0, a1
20011c90:      	sb	a0, 175(sp)
20011c94:      	j	0x20011c96 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x9e>
20011c96:      	lbu	a0, 175(sp)
20011c9a:      	andi	a0, a0, 1
20011c9c:      	li	a1, 0
20011c9e:      	beq	a0, a1, 0x20011cae <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0xb6>
20011ca2:      	j	0x20011ca4 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0xac>
20011ca4:      	lw	a0, 160(sp)
20011ca6:      	li	a1, 0
20011ca8:      	beq	a0, a1, 0x20011ce4 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0xec>
20011cac:      	j	0x20011ccc <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0xd4>
20011cae:      	lui	a0, 131093
20011cb2:      	addi	a0, a0, 64
20011cb6:      	lui	a1, 131093
20011cba:      	addi	a2, a1, 136
20011cbe:      	li	a1, 72
20011cc2:      	auipc	ra, 2
20011cc6:      	jalr	1714(ra)
20011cca:      	unimp	
20011ccc:      	lw	a1, 160(sp)
20011cce:      	lui	a0, 93750
20011cd2:      	divu	a1, a0, a1
20011cd6:      	sw	a1, 156(sp)
20011cd8:      	sw	a1, 280(sp)
20011cdc:      	li	a0, 1
20011cde:      	bltu	a0, a1, 0x20011d0c <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x114>
20011ce2:      	j	0x20011d00 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x108>
20011ce4:      	lui	a0, 131093
20011ce8:      	addi	a0, a0, 176
20011cec:      	lui	a1, 131093
20011cf0:      	addi	a2, a1, 152
20011cf4:      	li	a1, 25
20011cf6:      	auipc	ra, 2
20011cfa:      	jalr	1662(ra)
20011cfe:      	unimp	
20011d00:      	li	a0, 0
20011d02:      	sw	a0, 176(sp)
20011d04:      	li	a0, 1
20011d06:      	sb	a0, 183(sp)
20011d0a:      	j	0x20011d3a <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x142>
20011d0c:      	lw	a1, 156(sp)
20011d0e:      	li	a0, 0
20011d10:      	sb	a0, 183(sp)
20011d14:      	li	a0, 128
20011d18:      	bltu	a0, a1, 0x20011d2e <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x136>
20011d1c:      	j	0x20011d1e <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x126>
20011d1e:      	lw	a0, 156(sp)
20011d20:      	srli	a0, a0, 1
20011d22:      	addi	a1, a0, -1
20011d26:      	sw	a1, 152(sp)
20011d28:      	bltu	a0, a1, 0x20011d4e <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x156>
20011d2c:      	j	0x20011d48 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x150>
20011d2e:      	lui	a0, 131093
20011d32:      	lw	a0, 204(a0)
20011d36:      	sw	a0, 176(sp)
20011d38:      	j	0x20011d3a <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x142>
20011d3a:      	lbu	a0, 183(sp)
20011d3e:      	andi	a0, a0, 1
20011d40:      	li	a1, 0
20011d42:      	bne	a0, a1, 0x20011d7a <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x182>
20011d46:      	j	0x20011d6c <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x174>
20011d48:      	lw	a0, 152(sp)
20011d4a:      	sw	a0, 176(sp)
20011d4c:      	j	0x20011d3a <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x142>
20011d4e:      	lui	a0, 131093
20011d52:      	addi	a0, a0, 240
20011d56:      	lui	a1, 131093
20011d5a:      	addi	a2, a1, 212
20011d5e:      	li	a1, 33
20011d62:      	auipc	ra, 2
20011d66:      	jalr	1554(ra)
20011d6a:      	unimp	
20011d6c:      	lw	a1, 176(sp)
20011d6e:      	addi	a0, a1, 1
20011d72:      	sw	a0, 148(sp)
20011d74:      	bltu	a0, a1, 0x20011da4 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x1ac>
20011d78:      	j	0x20011d96 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x19e>
20011d7a:      	li	a0, 1
20011d7c:      	sw	a0, 184(sp)
20011d7e:      	j	0x20011d80 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x188>
20011d80:      	lw	a0, 160(sp)
20011d82:      	lw	a1, 184(sp)
20011d84:      	mul	a2, a0, a1
20011d88:      	sw	a2, 144(sp)
20011d8a:      	mulhu	a0, a0, a1
20011d8e:      	li	a1, 0
20011d90:      	bne	a0, a1, 0x20011df8 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x200>
20011d94:      	j	0x20011de4 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x1ec>
20011d96:      	lw	a1, 148(sp)
20011d98:      	add	a0, a1, a1
20011d9c:      	sw	a0, 140(sp)
20011d9e:      	bltu	a0, a1, 0x20011dc6 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x1ce>
20011da2:      	j	0x20011dc0 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x1c8>
20011da4:      	lui	a0, 131093
20011da8:      	addi	a0, a0, 304
20011dac:      	lui	a1, 131093
20011db0:      	addi	a2, a1, 276
20011db4:      	li	a1, 28
20011db6:      	auipc	ra, 2
20011dba:      	jalr	1470(ra)
20011dbe:      	unimp	
20011dc0:      	lw	a0, 140(sp)
20011dc2:      	sw	a0, 184(sp)
20011dc4:      	j	0x20011d80 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x188>
20011dc6:      	lui	a0, 131093
20011dca:      	addi	a0, a0, 352
20011dce:      	lui	a1, 131093
20011dd2:      	addi	a2, a1, 332
20011dd6:      	li	a1, 33
20011dda:      	auipc	ra, 2
20011dde:      	jalr	1434(ra)
20011de2:      	unimp	
20011de4:      	lw	a1, 144(sp)
20011de6:      	sw	a1, 284(sp)
20011dea:      	lui	a0, 11719
20011dee:      	addi	a0, a0, -1025
20011df2:      	bltu	a0, a1, 0x20011e1e <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x226>
20011df6:      	j	0x20011e16 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x21e>
20011df8:      	lui	a0, 131093
20011dfc:      	addi	a0, a0, 352
20011e00:      	lui	a1, 131093
20011e04:      	addi	a2, a1, 388
20011e08:      	li	a1, 33
20011e0c:      	auipc	ra, 2
20011e10:      	jalr	1384(ra)
20011e14:      	unimp	
20011e16:      	li	a0, 0
20011e18:      	sb	a0, 191(sp)
20011e1c:      	j	0x20011e30 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x238>
20011e1e:      	lw	a0, 144(sp)
20011e20:      	lui	a1, 93750
20011e24:      	addi	a1, a1, 1
20011e26:      	sltu	a0, a0, a1
20011e2a:      	sb	a0, 191(sp)
20011e2e:      	j	0x20011e30 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x238>
20011e30:      	lbu	a0, 191(sp)
20011e34:      	andi	a0, a0, 1
20011e36:      	li	a1, 0
20011e38:      	beq	a0, a1, 0x20011e4e <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x256>
20011e3c:      	j	0x20011e3e <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x246>
20011e3e:      	lw	a1, 164(sp)
20011e40:      	lui	a0, 5859
20011e44:      	addi	a0, a0, 1535
20011e48:      	bltu	a0, a1, 0x20011e7c <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x284>
20011e4c:      	j	0x20011e6c <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x274>
20011e4e:      	lui	a0, 131093
20011e52:      	addi	a0, a0, 404
20011e56:      	lui	a1, 131093
20011e5a:      	addi	a2, a1, 476
20011e5e:      	li	a1, 72
20011e62:      	auipc	ra, 2
20011e66:      	jalr	1298(ra)
20011e6a:      	unimp	
20011e6c:      	lw	a1, 164(sp)
20011e6e:      	lui	a0, 4395
20011e72:      	addi	a0, a0, -1921
20011e76:      	bltu	a0, a1, 0x20011eae <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x2b6>
20011e7a:      	j	0x20011e9e <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x2a6>
20011e7c:      	lw	a1, 164(sp)
20011e7e:      	lui	a0, 11719
20011e82:      	addi	a0, a0, -1024
20011e86:      	bltu	a0, a1, 0x20011e6c <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x274>
20011e8a:      	j	0x20011e8c <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x294>
20011e8c:      	li	a0, 4
20011e8e:      	sw	a0, 192(sp)
20011e90:      	j	0x20011e92 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x29a>
20011e92:      	lw	a0, 192(sp)
20011e94:      	sw	a0, 136(sp)
20011e96:      	li	a1, 0
20011e98:      	beq	a0, a1, 0x20011f3a <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x342>
20011e9c:      	j	0x20011f1e <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x326>
20011e9e:      	lw	a1, 164(sp)
20011ea0:      	lui	a0, 2930
20011ea4:      	addi	a0, a0, -1281
20011ea8:      	bltu	a0, a1, 0x20011ed4 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x2dc>
20011eac:      	j	0x20011ec4 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x2cc>
20011eae:      	lw	a1, 164(sp)
20011eb0:      	lui	a0, 5859
20011eb4:      	addi	a0, a0, 1535
20011eb8:      	bltu	a0, a1, 0x20011e9e <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x2a6>
20011ebc:      	j	0x20011ebe <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x2c6>
20011ebe:      	li	a0, 3
20011ec0:      	sw	a0, 192(sp)
20011ec2:      	j	0x20011e92 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x29a>
20011ec4:      	lw	a1, 164(sp)
20011ec6:      	lui	a0, 1465
20011eca:      	addi	a0, a0, -641
20011ece:      	bltu	a0, a1, 0x20011f08 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x310>
20011ed2:      	j	0x20011eea <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x2f2>
20011ed4:      	lw	a1, 164(sp)
20011ed6:      	lui	a0, 4395
20011eda:      	addi	a0, a0, -1921
20011ede:      	bltu	a0, a1, 0x20011ec4 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x2cc>
20011ee2:      	j	0x20011ee4 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x2ec>
20011ee4:      	li	a0, 2
20011ee6:      	sw	a0, 192(sp)
20011ee8:      	j	0x20011e92 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x29a>
20011eea:      	lui	a0, 131093
20011eee:      	addi	a0, a0, 1024
20011ef2:      	lui	a1, 131093
20011ef6:      	addi	a2, a1, 1112
20011efa:      	li	a1, 40
20011efe:      	auipc	ra, 2
20011f02:      	jalr	1142(ra)
20011f06:      	unimp	
20011f08:      	lw	a1, 164(sp)
20011f0a:      	lui	a0, 2930
20011f0e:      	addi	a0, a0, -1281
20011f12:      	bltu	a0, a1, 0x20011eea <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x2f2>
20011f16:      	j	0x20011f18 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x320>
20011f18:      	li	a0, 1
20011f1a:      	sw	a0, 192(sp)
20011f1c:      	j	0x20011e92 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x29a>
20011f1e:      	lw	a0, 164(sp)
20011f20:      	lw	a1, 136(sp)
20011f22:      	divu	a1, a0, a1
20011f26:      	sw	a1, 132(sp)
20011f28:      	sw	a1, 288(sp)
20011f2c:      	lui	a0, 1465
20011f30:      	addi	a0, a0, -641
20011f34:      	bltu	a0, a1, 0x20011f5e <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x366>
20011f38:      	j	0x20011f56 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x35e>
20011f3a:      	lui	a0, 131093
20011f3e:      	addi	a0, a0, 176
20011f42:      	lui	a1, 131093
20011f46:      	addi	a2, a1, 492
20011f4a:      	li	a1, 25
20011f4c:      	auipc	ra, 2
20011f50:      	jalr	1064(ra)
20011f54:      	unimp	
20011f56:      	li	a0, 0
20011f58:      	sb	a0, 199(sp)
20011f5c:      	j	0x20011f72 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x37a>
20011f5e:      	lw	a0, 132(sp)
20011f60:      	lui	a1, 2930
20011f64:      	addi	a1, a1, -1279
20011f68:      	sltu	a0, a0, a1
20011f6c:      	sb	a0, 199(sp)
20011f70:      	j	0x20011f72 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x37a>
20011f72:      	lbu	a0, 199(sp)
20011f76:      	andi	a0, a0, 1
20011f78:      	li	a1, 0
20011f7a:      	beq	a0, a1, 0x20011f8e <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x396>
20011f7e:      	j	0x20011f80 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x388>
20011f80:      	lw	a1, 144(sp)
20011f82:      	lui	a0, 46875
20011f86:      	addi	a0, a0, -1
20011f88:      	bltu	a0, a1, 0x20011fbc <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x3c4>
20011f8c:      	j	0x20011fac <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x3b4>
20011f8e:      	lui	a0, 131093
20011f92:      	addi	a0, a0, 508
20011f96:      	lui	a1, 131093
20011f9a:      	addi	a2, a1, 572
20011f9e:      	li	a1, 64
20011fa2:      	auipc	ra, 2
20011fa6:      	jalr	978(ra)
20011faa:      	unimp	
20011fac:      	lw	a1, 144(sp)
20011fae:      	lui	a0, 23437
20011fb2:      	addi	a0, a0, 2047
20011fb6:      	bltu	a0, a1, 0x20011ff4 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x3fc>
20011fba:      	j	0x20011fe4 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x3ec>
20011fbc:      	lw	a1, 144(sp)
20011fbe:      	lui	a0, 93750
20011fc2:      	bltu	a0, a1, 0x20011fac <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x3b4>
20011fc6:      	j	0x20011fc8 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x3d0>
20011fc8:      	li	a0, 2
20011fca:      	sw	a0, 200(sp)
20011fcc:      	j	0x20011fce <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x3d6>
20011fce:      	lw	a0, 144(sp)
20011fd0:      	lw	a1, 200(sp)
20011fd2:      	mul	a2, a0, a1
20011fd6:      	sw	a2, 128(sp)
20011fd8:      	mulhu	a0, a0, a1
20011fdc:      	li	a1, 0
20011fde:      	bne	a0, a1, 0x2001204e <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x456>
20011fe2:      	j	0x2001203c <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x444>
20011fe4:      	lw	a1, 144(sp)
20011fe6:      	lui	a0, 11719
20011fea:      	addi	a0, a0, -1025
20011fee:      	bltu	a0, a1, 0x20012026 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x42e>
20011ff2:      	j	0x20012008 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x410>
20011ff4:      	lw	a1, 144(sp)
20011ff6:      	lui	a0, 46875
20011ffa:      	addi	a0, a0, -1
20011ffc:      	bltu	a0, a1, 0x20011fe4 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x3ec>
20012000:      	j	0x20012002 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x40a>
20012002:      	li	a0, 4
20012004:      	sw	a0, 200(sp)
20012006:      	j	0x20011fce <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x3d6>
20012008:      	lui	a0, 131093
2001200c:      	addi	a0, a0, 1024
20012010:      	lui	a1, 131093
20012014:      	addi	a2, a1, 1096
20012018:      	li	a1, 40
2001201c:      	auipc	ra, 2
20012020:      	jalr	856(ra)
20012024:      	unimp	
20012026:      	lw	a1, 144(sp)
20012028:      	lui	a0, 23437
2001202c:      	addi	a0, a0, 2047
20012030:      	bltu	a0, a1, 0x20012008 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x410>
20012034:      	j	0x20012036 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x43e>
20012036:      	li	a0, 8
20012038:      	sw	a0, 200(sp)
2001203a:      	j	0x20011fce <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x3d6>
2001203c:      	lw	a1, 128(sp)
2001203e:      	sw	a1, 292(sp)
20012042:      	lui	a0, 93750
20012046:      	addi	a0, a0, -1
20012048:      	bltu	a0, a1, 0x20012074 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x47c>
2001204c:      	j	0x2001206c <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x474>
2001204e:      	lui	a0, 131093
20012052:      	addi	a0, a0, 352
20012056:      	lui	a1, 131093
2001205a:      	addi	a2, a1, 588
2001205e:      	li	a1, 33
20012062:      	auipc	ra, 2
20012066:      	jalr	786(ra)
2001206a:      	unimp	
2001206c:      	li	a0, 0
2001206e:      	sb	a0, 207(sp)
20012072:      	j	0x20012086 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x48e>
20012074:      	lw	a0, 128(sp)
20012076:      	lui	a1, 187500
2001207a:      	addi	a1, a1, 1
2001207c:      	sltu	a0, a0, a1
20012080:      	sb	a0, 207(sp)
20012084:      	j	0x20012086 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x48e>
20012086:      	lbu	a0, 207(sp)
2001208a:      	andi	a0, a0, 1
2001208c:      	li	a1, 0
2001208e:      	beq	a0, a1, 0x2001209e <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x4a6>
20012092:      	j	0x20012094 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x49c>
20012094:      	lw	a0, 132(sp)
20012096:      	li	a1, 0
20012098:      	beq	a0, a1, 0x200120d4 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x4dc>
2001209c:      	j	0x200120bc <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x4c4>
2001209e:      	lui	a0, 131093
200120a2:      	addi	a0, a0, 604
200120a6:      	lui	a1, 131093
200120aa:      	addi	a2, a1, 680
200120ae:      	li	a1, 74
200120b2:      	auipc	ra, 2
200120b6:      	jalr	706(ra)
200120ba:      	unimp	
200120bc:      	lw	a0, 128(sp)
200120be:      	lw	a1, 132(sp)
200120c0:      	divu	a1, a0, a1
200120c4:      	sw	a1, 124(sp)
200120c6:      	sw	a1, 296(sp)
200120ca:      	li	a0, 128
200120ce:      	bltu	a0, a1, 0x20012100 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x508>
200120d2:      	j	0x200120f0 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x4f8>
200120d4:      	lui	a0, 131093
200120d8:      	addi	a0, a0, 176
200120dc:      	lui	a1, 131093
200120e0:      	addi	a2, a1, 696
200120e4:      	li	a1, 25
200120e6:      	auipc	ra, 2
200120ea:      	jalr	654(ra)
200120ee:      	unimp	
200120f0:      	lw	a0, 124(sp)
200120f2:      	srli	a0, a0, 1
200120f4:      	add	a0, a0, a0
200120f6:      	sw	a0, 120(sp)
200120f8:      	li	a0, 0
200120fa:      	bne	a0, a0, 0x20012136 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x53e>
200120fe:      	j	0x2001211c <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x524>
20012100:      	lui	a0, 131093
20012104:      	addi	a0, a0, 712
20012108:      	lui	a1, 131093
2001210c:      	addi	a2, a1, 740
20012110:      	li	a1, 26
20012112:      	auipc	ra, 2
20012116:      	jalr	610(ra)
2001211a:      	unimp	
2001211c:      	lw	a0, 132(sp)
2001211e:      	lw	a1, 120(sp)
20012120:      	sw	a1, 300(sp)
20012124:      	mul	a2, a0, a1
20012128:      	sw	a2, 116(sp)
2001212a:      	mulhu	a0, a0, a1
2001212e:      	li	a1, 0
20012130:      	bne	a0, a1, 0x20012168 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x570>
20012134:      	j	0x20012154 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x55c>
20012136:      	lui	a0, 131093
2001213a:      	addi	a0, a0, 352
2001213e:      	lui	a1, 131093
20012142:      	addi	a2, a1, 756
20012146:      	li	a1, 33
2001214a:      	auipc	ra, 2
2001214e:      	jalr	554(ra)
20012152:      	unimp	
20012154:      	lw	a1, 120(sp)
20012156:      	lw	a0, 116(sp)
20012158:      	sw	a0, 304(sp)
2001215c:      	addi	a0, a1, 2
20012160:      	sw	a0, 112(sp)
20012162:      	bltu	a0, a1, 0x200121a0 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x5a8>
20012166:      	j	0x20012186 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x58e>
20012168:      	lui	a0, 131093
2001216c:      	addi	a0, a0, 352
20012170:      	lui	a1, 131093
20012174:      	addi	a2, a1, 772
20012178:      	li	a1, 33
2001217c:      	auipc	ra, 2
20012180:      	jalr	504(ra)
20012184:      	unimp	
20012186:      	lw	a0, 132(sp)
20012188:      	lw	a1, 112(sp)
2001218a:      	sw	a1, 308(sp)
2001218e:      	mul	a2, a0, a1
20012192:      	sw	a2, 108(sp)
20012194:      	mulhu	a0, a0, a1
20012198:      	li	a1, 0
2001219a:      	bne	a0, a1, 0x200121ce <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x5d6>
2001219e:      	j	0x200121bc <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x5c4>
200121a0:      	lui	a0, 131093
200121a4:      	addi	a0, a0, 304
200121a8:      	lui	a1, 131093
200121ac:      	addi	a2, a1, 788
200121b0:      	li	a1, 28
200121b2:      	auipc	ra, 2
200121b6:      	jalr	450(ra)
200121ba:      	unimp	
200121bc:      	lw	a0, 112(sp)
200121be:      	lw	a1, 108(sp)
200121c0:      	sw	a1, 312(sp)
200121c4:      	li	a1, 129
200121c8:      	bltu	a0, a1, 0x200121f4 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x5fc>
200121cc:      	j	0x200121ec <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x5f4>
200121ce:      	lui	a0, 131093
200121d2:      	addi	a0, a0, 352
200121d6:      	lui	a1, 131093
200121da:      	addi	a2, a1, 804
200121de:      	li	a1, 33
200121e2:      	auipc	ra, 2
200121e6:      	jalr	402(ra)
200121ea:      	unimp	
200121ec:      	li	a0, 0
200121ee:      	sb	a0, 217(sp)
200121f2:      	j	0x20012206 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x60e>
200121f4:      	lw	a0, 108(sp)
200121f6:      	lui	a1, 187500
200121fa:      	addi	a1, a1, 1
200121fc:      	sltu	a0, a0, a1
20012200:      	sb	a0, 217(sp)
20012204:      	j	0x20012206 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x60e>
20012206:      	lbu	a0, 217(sp)
2001220a:      	andi	a0, a0, 1
2001220c:      	li	a1, 0
2001220e:      	bne	a0, a1, 0x2001221c <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x624>
20012212:      	j	0x20012214 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x61c>
20012214:      	li	a0, 0
20012216:      	sb	a0, 216(sp)
2001221a:      	j	0x200122b6 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x6be>
2001221c:      	lw	a2, 128(sp)
2001221e:      	lw	a1, 108(sp)
20012220:      	li	a0, 0
20012222:      	slt	a0, a0, a1
20012226:      	sub	a1, a2, a1
2001222a:      	sw	a1, 104(sp)
2001222c:      	slt	a1, a1, a2
20012230:      	bne	a0, a1, 0x20012244 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x64c>
20012234:      	j	0x20012236 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x63e>
20012236:      	lw	a0, 104(sp)
20012238:      	auipc	ra, 0
2001223c:      	jalr	2008(ra)
20012240:      	sw	a0, 100(sp)
20012242:      	j	0x20012262 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x66a>
20012244:      	lui	a0, 131093
20012248:      	addi	a0, a0, 240
2001224c:      	lui	a1, 131093
20012250:      	addi	a2, a1, 820
20012254:      	li	a1, 33
20012258:      	auipc	ra, 2
2001225c:      	jalr	284(ra)
20012260:      	unimp	
20012262:      	lw	a2, 128(sp)
20012264:      	lw	a1, 116(sp)
20012266:      	li	a0, 0
20012268:      	slt	a0, a0, a1
2001226c:      	sub	a1, a2, a1
20012270:      	sw	a1, 96(sp)
20012272:      	slt	a1, a1, a2
20012276:      	bne	a0, a1, 0x2001228a <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x692>
2001227a:      	j	0x2001227c <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x684>
2001227c:      	lw	a0, 96(sp)
2001227e:      	auipc	ra, 0
20012282:      	jalr	1938(ra)
20012286:      	sw	a0, 92(sp)
20012288:      	j	0x200122a8 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x6b0>
2001228a:      	lui	a0, 131093
2001228e:      	addi	a0, a0, 240
20012292:      	lui	a1, 131093
20012296:      	addi	a2, a1, 836
2001229a:      	li	a1, 33
2001229e:      	auipc	ra, 2
200122a2:      	jalr	214(ra)
200122a6:      	unimp	
200122a8:      	lw	a0, 100(sp)
200122aa:      	lw	a1, 92(sp)
200122ac:      	slt	a0, a0, a1
200122b0:      	sb	a0, 216(sp)
200122b4:      	j	0x200122b6 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x6be>
200122b6:      	lbu	a0, 216(sp)
200122ba:      	andi	a0, a0, 1
200122bc:      	li	a1, 0
200122be:      	bne	a0, a1, 0x200122ce <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x6d6>
200122c2:      	j	0x200122c4 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x6cc>
200122c4:      	lw	a0, 116(sp)
200122c6:      	lw	a1, 120(sp)
200122c8:      	sw	a1, 208(sp)
200122ca:      	sw	a0, 212(sp)
200122cc:      	j	0x200122d8 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x6e0>
200122ce:      	lw	a0, 108(sp)
200122d0:      	lw	a1, 112(sp)
200122d2:      	sw	a1, 208(sp)
200122d4:      	sw	a0, 212(sp)
200122d6:      	j	0x200122d8 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x6e0>
200122d8:      	lw	a0, 208(sp)
200122da:      	sw	a0, 84(sp)
200122dc:      	sw	a0, 316(sp)
200122e0:      	lw	a1, 212(sp)
200122e2:      	sw	a1, 88(sp)
200122e4:      	sw	a1, 320(sp)
200122e8:      	lui	a0, 93750
200122ec:      	addi	a0, a0, -1
200122ee:      	bltu	a0, a1, 0x200122fc <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x704>
200122f2:      	j	0x200122f4 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x6fc>
200122f4:      	li	a0, 0
200122f6:      	sb	a0, 218(sp)
200122fa:      	j	0x2001230e <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x716>
200122fc:      	lw	a0, 88(sp)
200122fe:      	lui	a1, 187500
20012302:      	addi	a1, a1, 1
20012304:      	sltu	a0, a0, a1
20012308:      	sb	a0, 218(sp)
2001230c:      	j	0x2001230e <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x716>
2001230e:      	lbu	a0, 218(sp)
20012312:      	andi	a0, a0, 1
20012314:      	li	a1, 0
20012316:      	beq	a0, a1, 0x20012328 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x730>
2001231a:      	j	0x2001231c <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x724>
2001231c:      	lw	a0, 200(sp)
2001231e:      	sw	a0, 80(sp)
20012320:      	li	a1, 0
20012322:      	beq	a0, a1, 0x20012362 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x76a>
20012326:      	j	0x20012346 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x74e>
20012328:      	lui	a0, 131093
2001232c:      	addi	a0, a0, 852
20012330:      	lui	a1, 131093
20012334:      	addi	a2, a1, 912
20012338:      	li	a1, 60
2001233c:      	auipc	ra, 2
20012340:      	jalr	56(ra)
20012344:      	unimp	
20012346:      	lw	a0, 88(sp)
20012348:      	lw	a1, 80(sp)
2001234a:      	divu	a1, a0, a1
2001234e:      	sw	a1, 76(sp)
20012350:      	sw	a1, 324(sp)
20012354:      	lui	a0, 11719
20012358:      	addi	a0, a0, -1025
2001235c:      	bltu	a0, a1, 0x20012386 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x78e>
20012360:      	j	0x2001237e <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x786>
20012362:      	lui	a0, 131093
20012366:      	addi	a0, a0, 176
2001236a:      	lui	a1, 131093
2001236e:      	addi	a2, a1, 928
20012372:      	li	a1, 25
20012374:      	auipc	ra, 2
20012378:      	jalr	ra
2001237c:      	unimp	
2001237e:      	li	a0, 0
20012380:      	sb	a0, 219(sp)
20012384:      	j	0x20012398 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x7a0>
20012386:      	lw	a0, 76(sp)
20012388:      	lui	a1, 93750
2001238c:      	addi	a1, a1, 1
2001238e:      	sltu	a0, a0, a1
20012392:      	sb	a0, 219(sp)
20012396:      	j	0x20012398 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x7a0>
20012398:      	lbu	a0, 219(sp)
2001239c:      	andi	a0, a0, 1
2001239e:      	li	a1, 0
200123a0:      	beq	a0, a1, 0x200123b2 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x7ba>
200123a4:      	j	0x200123a6 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x7ae>
200123a6:      	lw	a0, 184(sp)
200123a8:      	sw	a0, 72(sp)
200123aa:      	li	a1, 0
200123ac:      	beq	a0, a1, 0x200123ec <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x7f4>
200123b0:      	j	0x200123d0 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x7d8>
200123b2:      	lui	a0, 131093
200123b6:      	addi	a0, a0, 404
200123ba:      	lui	a1, 131093
200123be:      	addi	a2, a1, 944
200123c2:      	li	a1, 72
200123c6:      	auipc	ra, 2
200123ca:      	jalr	-82(ra)
200123ce:      	unimp	
200123d0:      	lw	a0, 76(sp)
200123d2:      	lw	a1, 72(sp)
200123d4:      	divu	a1, a0, a1
200123d8:      	sw	a1, 68(sp)
200123da:      	sw	a1, 328(sp)
200123de:      	lui	a0, 92
200123e2:      	addi	a0, a0, -1833
200123e6:      	bltu	a0, a1, 0x20012410 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x818>
200123ea:      	j	0x20012408 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x810>
200123ec:      	lui	a0, 131093
200123f0:      	addi	a0, a0, 176
200123f4:      	lui	a1, 131093
200123f8:      	addi	a2, a1, 960
200123fc:      	li	a1, 25
200123fe:      	auipc	ra, 2
20012402:      	jalr	-138(ra)
20012406:      	unimp	
20012408:      	li	a0, 0
2001240a:      	sb	a0, 220(sp)
2001240e:      	j	0x20012422 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x82a>
20012410:      	lw	a0, 68(sp)
20012412:      	lui	a1, 93750
20012416:      	addi	a1, a1, 1
20012418:      	sltu	a0, a0, a1
2001241c:      	sb	a0, 220(sp)
20012420:      	j	0x20012422 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x82a>
20012422:      	lbu	a0, 220(sp)
20012426:      	andi	a0, a0, 1
20012428:      	li	a1, 0
2001242a:      	beq	a0, a1, 0x2001243e <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x846>
2001242e:      	j	0x20012430 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x838>
20012430:      	lw	a0, 192(sp)
20012432:      	addi	a1, a0, -1
20012436:      	sw	a1, 64(sp)
20012438:      	bltu	a0, a1, 0x20012472 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x87a>
2001243c:      	j	0x2001245c <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x864>
2001243e:      	lui	a0, 131093
20012442:      	addi	a0, a0, 64
20012446:      	lui	a1, 131093
2001244a:      	addi	a2, a1, 976
2001244e:      	li	a1, 72
20012452:      	auipc	ra, 2
20012456:      	jalr	-222(ra)
2001245a:      	unimp	
2001245c:      	lw	a0, 84(sp)
2001245e:      	lw	a1, 64(sp)
20012460:      	sb	a1, 221(sp)
20012464:      	srli	a0, a0, 1
20012466:      	addi	a1, a0, -1
2001246a:      	sw	a1, 60(sp)
2001246c:      	bltu	a0, a1, 0x200124b6 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x8be>
20012470:      	j	0x20012490 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x898>
20012472:      	lui	a0, 131093
20012476:      	addi	a0, a0, 240
2001247a:      	lui	a1, 131093
2001247e:      	addi	a2, a1, 992
20012482:      	li	a1, 33
20012486:      	auipc	ra, 2
2001248a:      	jalr	-274(ra)
2001248e:      	unimp	
20012490:      	lw	a0, 60(sp)
20012492:      	sb	a0, 222(sp)
20012496:      	lw	a0, 200(sp)
20012498:      	sw	a0, 56(sp)
2001249a:      	li	a1, 2
2001249c:      	beq	a0, a1, 0x200124f2 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x8fa>
200124a0:      	j	0x200124a2 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x8aa>
200124a2:      	lw	a0, 56(sp)
200124a4:      	li	a1, 4
200124a6:      	beq	a0, a1, 0x200124fa <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x902>
200124aa:      	j	0x200124ac <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x8b4>
200124ac:      	lw	a0, 56(sp)
200124ae:      	li	a1, 8
200124b0:      	beq	a0, a1, 0x20012502 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x90a>
200124b4:      	j	0x200124d4 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x8dc>
200124b6:      	lui	a0, 131093
200124ba:      	addi	a0, a0, 240
200124be:      	lui	a1, 131093
200124c2:      	addi	a2, a1, 1008
200124c6:      	li	a1, 33
200124ca:      	auipc	ra, 2
200124ce:      	jalr	-342(ra)
200124d2:      	unimp	
200124d4:      	lui	a0, 131093
200124d8:      	addi	a0, a0, 1024
200124dc:      	lui	a1, 131093
200124e0:      	addi	a2, a1, 1064
200124e4:      	li	a1, 40
200124e8:      	auipc	ra, 2
200124ec:      	jalr	-372(ra)
200124f0:      	unimp	
200124f2:      	li	a0, 1
200124f4:      	sb	a0, 223(sp)
200124f8:      	j	0x2001250a <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x912>
200124fa:      	li	a0, 2
200124fc:      	sb	a0, 223(sp)
20012500:      	j	0x2001250a <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x912>
20012502:      	li	a0, 3
20012504:      	sb	a0, 223(sp)
20012508:      	j	0x2001250a <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x912>
2001250a:      	j	0x2001250c <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x914>
2001250c:      	lui	a0, 65544
20012510:      	sw	a0, 332(sp)
20012514:      	addi	a1, sp, 221
20012518:      	sw	a1, 224(sp)
2001251a:      	addi	a1, sp, 222
2001251e:      	sw	a1, 228(sp)
20012520:      	addi	a1, sp, 223
20012524:      	sw	a1, 232(sp)
20012526:      	addi	a0, a0, 8
20012528:      	sw	a0, 52(sp)
2001252a:      	sw	a0, 428(sp)
2001252e:      	sw	a0, 436(sp)
20012532:      	sw	a0, 440(sp)
20012536:      	auipc	ra, 0
2001253a:      	jalr	1390(ra)
2001253e:      	sw	a0, 432(sp)
20012542:      	lw	a1, 224(sp)
20012544:      	sw	a1, 392(sp)
20012548:      	lw	a1, 228(sp)
2001254a:      	sw	a1, 396(sp)
2001254e:      	lw	a1, 232(sp)
20012550:      	sw	a1, 400(sp)
20012554:      	sw	a0, 420(sp)
20012558:      	sw	a0, 424(sp)
2001255c:      	addi	a1, sp, 420
2001255e:      	sw	a1, 408(sp)
20012562:      	addi	a2, sp, 424
20012564:      	sw	a2, 412(sp)
20012568:      	addi	a0, sp, 392
2001256a:      	auipc	ra, 0
2001256e:      	jalr	380(ra)
20012572:      	mv	a1, a0
20012574:      	lw	a0, 52(sp)
20012576:      	lw	a1, 0(a1)
20012578:      	sw	a0, 452(sp)
2001257c:      	sw	a1, 456(sp)
20012580:      	sw	a0, 460(sp)
20012584:      	auipc	ra, 0
20012588:      	jalr	1330(ra)
2001258c:      	j	0x2001258e <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x996>
2001258e:      	addi	a0, sp, 176
20012590:      	sw	a0, 240(sp)
20012592:      	addi	a1, sp, 183
20012596:      	sw	a1, 244(sp)
20012598:      	lui	a2, 65544
2001259c:      	addi	a2, a2, 12
2001259e:      	sw	a2, 48(sp)
200125a0:      	sw	a2, 380(sp)
200125a4:      	sw	a0, 384(sp)
200125a8:      	sw	a1, 388(sp)
200125ac:      	li	a2, 256
200125b0:      	sw	a2, 376(sp)
200125b4:      	addi	a2, sp, 376
200125b6:      	sw	a2, 372(sp)
200125ba:      	auipc	ra, 0
200125be:      	jalr	490(ra)
200125c2:      	mv	a1, a0
200125c4:      	lw	a0, 48(sp)
200125c6:      	lw	a1, 0(a1)
200125c8:      	sw	a0, 464(sp)
200125cc:      	sw	a1, 468(sp)
200125d0:      	sw	a0, 472(sp)
200125d4:      	auipc	ra, 0
200125d8:      	jalr	1250(ra)
200125dc:      	j	0x200125de <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x9e6>
200125de:      	addi	a0, sp, 248
200125e0:      	auipc	ra, 0
200125e4:      	jalr	1534(ra)
200125e8:      	sw	a1, 40(sp)
200125ea:      	sw	a0, 44(sp)
200125ec:      	j	0x200125ee <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x9f6>
200125ee:      	lw	a1, 44(sp)
200125f0:      	lw	a4, 40(sp)
200125f2:      	addi	a0, a1, 4
200125f6:      	sw	a0, 24(sp)
200125f8:      	sltu	a2, a0, a1
200125fc:      	add	a3, a4, a2
20012600:      	sw	a3, 28(sp)
20012602:      	sltu	a3, a3, a4
20012606:      	sw	a3, 32(sp)
20012608:      	sw	a2, 36(sp)
2001260a:      	bgeu	a0, a1, 0x20012612 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0xa1a>
2001260e:      	lw	a0, 32(sp)
20012610:      	sw	a0, 36(sp)
20012612:      	lw	a0, 36(sp)
20012614:      	li	a1, 0
20012616:      	bne	a0, a1, 0x2001262a <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0xa32>
2001261a:      	j	0x2001261c <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0xa24>
2001261c:      	lw	a0, 28(sp)
2001261e:      	lw	a1, 24(sp)
20012620:      	sw	a1, 336(sp)
20012624:      	sw	a0, 340(sp)
20012628:      	j	0x20012646 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0xa4e>
2001262a:      	lui	a0, 131093
2001262e:      	addi	a0, a0, 304
20012632:      	lui	a1, 131093
20012636:      	addi	a2, a1, 1080
2001263a:      	li	a1, 28
2001263c:      	auipc	ra, 2
20012640:      	jalr	-712(ra)
20012644:      	unimp	
20012646:      	addi	a0, sp, 248
20012648:      	auipc	ra, 0
2001264c:      	jalr	1430(ra)
20012650:      	sw	a1, 16(sp)
20012652:      	sw	a0, 20(sp)
20012654:      	j	0x20012656 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0xa5e>
20012656:      	lw	a0, 16(sp)
20012658:      	lw	a1, 28(sp)
2001265a:      	lw	a2, 20(sp)
2001265c:      	lw	a3, 24(sp)
2001265e:      	sltu	a2, a2, a3
20012662:      	sltu	a3, a0, a1
20012666:      	sw	a3, 8(sp)
20012668:      	sw	a2, 12(sp)
2001266a:      	beq	a0, a1, 0x20012672 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0xa7a>
2001266e:      	lw	a0, 8(sp)
20012670:      	sw	a0, 12(sp)
20012672:      	lw	a0, 12(sp)
20012674:      	li	a1, 0
20012676:      	bne	a0, a1, 0x20012646 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0xa4e>
2001267a:      	j	0x2001267c <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0xa84>
2001267c:      	lui	a0, 65544
20012680:      	addi	a0, a0, 8
20012682:      	sw	a0, 368(sp)
20012686:      	sw	a0, 444(sp)
2001268a:      	sw	a0, 448(sp)
2001268e:      	auipc	ra, 0
20012692:      	jalr	1046(ra)
20012696:      	sw	a0, 364(sp)
2001269a:      	sw	a0, 256(sp)
2001269e:      	j	0x200126a0 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0xaa8>
200126a0:      	addi	a0, sp, 256
200126a2:      	sw	a0, 348(sp)
200126a6:      	lw	a0, 256(sp)
200126aa:      	srli	a0, a0, 31
200126ac:      	sb	a0, 355(sp)
200126b0:      	sb	a0, 354(sp)
200126b4:      	sb	a0, 255(sp)
200126b8:      	j	0x200126ba <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0xac2>
200126ba:      	addi	a0, sp, 255
200126be:      	sw	a0, 356(sp)
200126c2:      	sw	a0, 360(sp)
200126c6:      	lb	a0, 255(sp)
200126ca:      	sw	a0, 4(sp)
200126cc:      	j	0x200126ce <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0xad6>
200126ce:      	lw	a0, 4(sp)
200126d0:      	andi	a0, a0, 1
200126d2:      	li	a1, 0
200126d4:      	beq	a0, a1, 0x2001267c <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0xa84>
200126d8:      	j	0x200126da <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0xae2>
200126da:      	lw	a0, 68(sp)
200126dc:      	sw	a0, 168(sp)
200126de:      	lw	ra, 476(sp)
200126e2:      	addi	sp, sp, 480
200126e4:      	ret

200126e6 <e310x_hal::clock::CoreClk::configure_pll::{{closure}}::h8af3a054deae6295>:
200126e6:      	addi	sp, sp, -112
200126e8:      	sw	a0, 32(sp)
200126ea:      	sw	a1, 40(sp)
200126ec:      	sw	a2, 44(sp)
200126ee:      	sw	a2, 68(sp)
200126f0:      	sw	a2, 64(sp)
200126f2:      	sw	a2, 36(sp)
200126f4:      	j	0x200126f6 <e310x_hal::clock::CoreClk::configure_pll::{{closure}}::h8af3a054deae6295+0x10>
200126f6:      	lw	a1, 36(sp)
200126f8:      	lw	a0, 32(sp)
200126fa:      	lw	a0, 0(a0)
200126fc:      	lbu	a2, 0(a0)
20012700:      	sw	a1, 96(sp)
20012702:      	sb	a2, 103(sp)
20012706:      	lw	a0, 0(a1)
20012708:      	andi	a0, a0, -8
2001270a:      	andi	a2, a2, 7
2001270c:      	or	a0, a0, a2
2001270e:      	sw	a0, 0(a1)
20012710:      	lw	a0, 96(sp)
20012712:      	sw	a0, 28(sp)
20012714:      	j	0x20012716 <e310x_hal::clock::CoreClk::configure_pll::{{closure}}::h8af3a054deae6295+0x30>
20012716:      	lw	a0, 28(sp)
20012718:      	sw	a0, 52(sp)
2001271a:      	sw	a0, 48(sp)
2001271c:      	sw	a0, 24(sp)
2001271e:      	j	0x20012720 <e310x_hal::clock::CoreClk::configure_pll::{{closure}}::h8af3a054deae6295+0x3a>
20012720:      	lw	a1, 24(sp)
20012722:      	lw	a0, 32(sp)
20012724:      	lw	a0, 4(a0)
20012726:      	lbu	a2, 0(a0)
2001272a:      	sw	a1, 80(sp)
2001272c:      	sb	a2, 87(sp)
20012730:      	lw	a0, 0(a1)
20012732:      	andi	a0, a0, -1009
20012736:      	andi	a2, a2, 63
2001273a:      	slli	a2, a2, 4
2001273c:      	or	a0, a0, a2
2001273e:      	sw	a0, 0(a1)
20012740:      	lw	a0, 80(sp)
20012742:      	sw	a0, 20(sp)
20012744:      	j	0x20012746 <e310x_hal::clock::CoreClk::configure_pll::{{closure}}::h8af3a054deae6295+0x60>
20012746:      	lw	a0, 20(sp)
20012748:      	sw	a0, 60(sp)
2001274a:      	sw	a0, 56(sp)
2001274c:      	sw	a0, 16(sp)
2001274e:      	j	0x20012750 <e310x_hal::clock::CoreClk::configure_pll::{{closure}}::h8af3a054deae6295+0x6a>
20012750:      	lw	a1, 16(sp)
20012752:      	lw	a0, 32(sp)
20012754:      	lw	a0, 8(a0)
20012756:      	lbu	a2, 0(a0)
2001275a:      	sw	a1, 88(sp)
2001275c:      	sb	a2, 95(sp)
20012760:      	lw	a0, 0(a1)
20012762:      	lui	a3, 1048575
20012764:      	addi	a3, a3, 1023
20012768:      	and	a0, a0, a3
2001276a:      	andi	a2, a2, 3
2001276c:      	slli	a2, a2, 10
2001276e:      	or	a0, a0, a2
20012770:      	sw	a0, 0(a1)
20012772:      	lw	a0, 88(sp)
20012774:      	sw	a0, 12(sp)
20012776:      	j	0x20012778 <e310x_hal::clock::CoreClk::configure_pll::{{closure}}::h8af3a054deae6295+0x92>
20012778:      	lw	a0, 12(sp)
2001277a:      	sw	a0, 76(sp)
2001277c:      	sw	a0, 72(sp)
2001277e:      	sw	a0, 8(sp)
20012780:      	j	0x20012782 <e310x_hal::clock::CoreClk::configure_pll::{{closure}}::h8af3a054deae6295+0x9c>
20012782:      	lw	a1, 8(sp)
20012784:      	sw	a1, 104(sp)
20012786:      	li	a0, 0
20012788:      	sb	a0, 111(sp)
2001278c:      	lw	a0, 0(a1)
2001278e:      	lui	a2, 1048512
20012792:      	addi	a2, a2, -1
20012794:      	and	a0, a0, a2
20012796:      	sw	a0, 0(a1)
20012798:      	lw	a0, 104(sp)
2001279a:      	sw	a0, 4(sp)
2001279c:      	j	0x2001279e <e310x_hal::clock::CoreClk::configure_pll::{{closure}}::h8af3a054deae6295+0xb8>
2001279e:      	lw	a0, 4(sp)
200127a0:      	addi	sp, sp, 112
200127a2:      	ret

200127a4 <e310x_hal::clock::CoreClk::configure_pll::{{closure}}::h939c219ee04972ec>:
200127a4:      	addi	sp, sp, -64
200127a6:      	sw	a0, 16(sp)
200127a8:      	sw	a1, 20(sp)
200127aa:      	sw	a2, 28(sp)
200127ac:      	sw	a2, 36(sp)
200127ae:      	sw	a2, 32(sp)
200127b0:      	sw	a2, 12(sp)
200127b2:      	j	0x200127b4 <e310x_hal::clock::CoreClk::configure_pll::{{closure}}::h939c219ee04972ec+0x10>
200127b4:      	lw	a1, 12(sp)
200127b6:      	lw	a0, 16(sp)
200127b8:      	lw	a2, 0(a0)
200127ba:      	sw	a1, 48(sp)
200127bc:      	sb	a2, 55(sp)
200127c0:      	lw	a0, 0(a1)
200127c2:      	andi	a0, a0, -64
200127c6:      	andi	a2, a2, 63
200127ca:      	or	a0, a0, a2
200127cc:      	sw	a0, 0(a1)
200127ce:      	lw	a0, 48(sp)
200127d0:      	sw	a0, 8(sp)
200127d2:      	j	0x200127d4 <e310x_hal::clock::CoreClk::configure_pll::{{closure}}::h939c219ee04972ec+0x30>
200127d4:      	lw	a0, 8(sp)
200127d6:      	sw	a0, 44(sp)
200127d8:      	sw	a0, 40(sp)
200127da:      	sw	a0, 4(sp)
200127dc:      	j	0x200127de <e310x_hal::clock::CoreClk::configure_pll::{{closure}}::h939c219ee04972ec+0x3a>
200127de:      	lw	a1, 4(sp)
200127e0:      	lw	a0, 20(sp)
200127e2:      	lbu	a2, 0(a0)
200127e6:      	sw	a1, 56(sp)
200127e8:      	sb	a2, 63(sp)
200127ec:      	lw	a0, 0(a1)
200127ee:      	andi	a0, a0, -257
200127f2:      	slli	a2, a2, 8
200127f4:      	or	a0, a0, a2
200127f6:      	sw	a0, 0(a1)
200127f8:      	lw	a0, 56(sp)
200127fa:      	sw	a0, 0(sp)
200127fc:      	j	0x200127fe <e310x_hal::clock::CoreClk::configure_pll::{{closure}}::h939c219ee04972ec+0x5a>
200127fe:      	lw	a0, 0(sp)
20012800:      	addi	sp, sp, 64
20012802:      	ret

20012804 <e310x_hal::clock::AonClk::freeze::hc5a1c22a292dd4b3>:
20012804:      	addi	sp, sp, -160
20012806:      	sw	ra, 156(sp)
20012808:      	sw	a0, 24(sp)
2001280a:      	sw	a1, 28(sp)
2001280c:      	j	0x2001280e <e310x_hal::clock::AonClk::freeze::hc5a1c22a292dd4b3+0xa>
2001280e:      	lui	a0, 65536
20012812:      	sw	a0, 56(sp)
20012814:      	lw	a0, 24(sp)
20012816:      	li	a1, 0
20012818:      	beq	a0, a1, 0x20012856 <e310x_hal::clock::AonClk::freeze::hc5a1c22a292dd4b3+0x52>
2001281c:      	j	0x2001281e <e310x_hal::clock::AonClk::freeze::hc5a1c22a292dd4b3+0x1a>
2001281e:      	lw	a0, 28(sp)
20012820:      	sw	a0, 16(sp)
20012822:      	sw	a0, 60(sp)
20012824:      	lui	a0, 65536
20012828:      	addi	a0, a0, 112
2001282c:      	sw	a0, 20(sp)
2001282e:      	sw	a0, 96(sp)
20012830:      	li	a0, 0
20012832:      	sw	a0, 92(sp)
20012834:      	addi	a0, sp, 92
20012836:      	sw	a0, 88(sp)
20012838:      	auipc	ra, 0
2001283c:      	jalr	206(ra)
20012840:      	mv	a1, a0
20012842:      	lw	a0, 20(sp)
20012844:      	lw	a1, 0(a1)
20012846:      	sw	a0, 144(sp)
20012848:      	sw	a1, 148(sp)
2001284a:      	sw	a0, 152(sp)
2001284c:      	auipc	ra, 0
20012850:      	jalr	618(ra)
20012854:      	j	0x20012900 <e310x_hal::clock::AonClk::freeze::hc5a1c22a292dd4b3+0xfc>
20012856:      	li	a0, 16
20012858:      	sb	a0, 38(sp)
2001285c:      	li	a0, 4
2001285e:      	sb	a0, 39(sp)
20012862:      	addi	a0, sp, 38
20012866:      	sw	a0, 40(sp)
20012868:      	addi	a1, sp, 39
2001286c:      	sw	a1, 44(sp)
2001286e:      	lui	a2, 65536
20012872:      	addi	a2, a2, 112
20012876:      	sw	a2, 12(sp)
20012878:      	sw	a2, 108(sp)
2001287a:      	sw	a0, 112(sp)
2001287c:      	sw	a1, 116(sp)
2001287e:      	li	a2, 0
20012880:      	sw	a2, 104(sp)
20012882:      	addi	a2, sp, 104
20012884:      	sw	a2, 100(sp)
20012886:      	auipc	ra, 0
2001288a:      	jalr	174(ra)
2001288e:      	mv	a1, a0
20012890:      	lw	a0, 12(sp)
20012892:      	lw	a1, 0(a1)
20012894:      	sw	a0, 132(sp)
20012896:      	sw	a1, 136(sp)
20012898:      	sw	a0, 140(sp)
2001289a:      	auipc	ra, 0
2001289e:      	jalr	540(ra)
200128a2:      	j	0x200128a4 <e310x_hal::clock::AonClk::freeze::hc5a1c22a292dd4b3+0xa0>
200128a4:      	lui	a0, 65536
200128a8:      	addi	a0, a0, 112
200128ac:      	sw	a0, 84(sp)
200128ae:      	sw	a0, 124(sp)
200128b0:      	sw	a0, 128(sp)
200128b2:      	auipc	ra, 0
200128b6:      	jalr	498(ra)
200128ba:      	sw	a0, 80(sp)
200128bc:      	sw	a0, 52(sp)
200128be:      	j	0x200128c0 <e310x_hal::clock::AonClk::freeze::hc5a1c22a292dd4b3+0xbc>
200128c0:      	addi	a0, sp, 52
200128c2:      	sw	a0, 64(sp)
200128c4:      	lw	a0, 52(sp)
200128c6:      	srli	a0, a0, 31
200128c8:      	sb	a0, 71(sp)
200128cc:      	sb	a0, 70(sp)
200128d0:      	sb	a0, 51(sp)
200128d4:      	j	0x200128d6 <e310x_hal::clock::AonClk::freeze::hc5a1c22a292dd4b3+0xd2>
200128d6:      	addi	a0, sp, 51
200128da:      	sw	a0, 72(sp)
200128dc:      	sw	a0, 76(sp)
200128de:      	lb	a0, 51(sp)
200128e2:      	sw	a0, 8(sp)
200128e4:      	j	0x200128e6 <e310x_hal::clock::AonClk::freeze::hc5a1c22a292dd4b3+0xe2>
200128e6:      	lw	a0, 8(sp)
200128e8:      	andi	a0, a0, 1
200128ea:      	li	a1, 0
200128ec:      	beq	a0, a1, 0x200128a4 <e310x_hal::clock::AonClk::freeze::hc5a1c22a292dd4b3+0xa0>
200128f0:      	j	0x200128f2 <e310x_hal::clock::AonClk::freeze::hc5a1c22a292dd4b3+0xee>
200128f2:      	lui	a0, 8
200128f4:      	sw	a0, 32(sp)
200128f6:      	j	0x200128f8 <e310x_hal::clock::AonClk::freeze::hc5a1c22a292dd4b3+0xf4>
200128f8:      	lw	a0, 32(sp)
200128fa:      	lw	ra, 156(sp)
200128fc:      	addi	sp, sp, 160
200128fe:      	ret
20012900:      	lw	a0, 16(sp)
20012902:      	sw	a0, 32(sp)
20012904:      	j	0x200128f8 <e310x_hal::clock::AonClk::freeze::hc5a1c22a292dd4b3+0xf4>

20012906 <e310x_hal::clock::AonClk::freeze::{{closure}}::hcac028368c75d525>:
20012906:      	addi	sp, sp, -32
20012908:      	sw	a0, 12(sp)
2001290a:      	sw	a0, 20(sp)
2001290c:      	sw	a0, 16(sp)
2001290e:      	sw	a0, 4(sp)
20012910:      	j	0x20012912 <e310x_hal::clock::AonClk::freeze::{{closure}}::hcac028368c75d525+0xc>
20012912:      	lw	a1, 4(sp)
20012914:      	sw	a1, 24(sp)
20012916:      	li	a0, 0
20012918:      	sb	a0, 31(sp)
2001291c:      	lw	a0, 0(a1)
2001291e:      	lui	a2, 786432
20012922:      	addi	a2, a2, -1
20012924:      	and	a0, a0, a2
20012926:      	sw	a0, 0(a1)
20012928:      	lw	a0, 24(sp)
2001292a:      	sw	a0, 0(sp)
2001292c:      	j	0x2001292e <e310x_hal::clock::AonClk::freeze::{{closure}}::hcac028368c75d525+0x28>
2001292e:      	lw	a0, 0(sp)
20012930:      	addi	sp, sp, 32
20012932:      	ret

20012934 <e310x_hal::clock::AonClk::freeze::{{closure}}::h90be15d88c9a7d5a>:
20012934:      	addi	sp, sp, -96
20012936:      	sw	a2, 24(sp)
20012938:      	sw	a0, 32(sp)
2001293a:      	sw	a1, 36(sp)
2001293c:      	sw	a2, 44(sp)
2001293e:      	sw	a2, 60(sp)
20012940:      	sw	a2, 56(sp)
20012942:      	sw	a2, 28(sp)
20012944:      	j	0x20012946 <e310x_hal::clock::AonClk::freeze::{{closure}}::h90be15d88c9a7d5a+0x12>
20012946:      	lw	a1, 28(sp)
20012948:      	lw	a0, 32(sp)
2001294a:      	lbu	a2, 0(a0)
2001294e:      	sw	a1, 80(sp)
20012950:      	sb	a2, 87(sp)
20012954:      	lw	a0, 0(a1)
20012956:      	lui	a3, 1048080
2001295a:      	addi	a3, a3, -1
2001295c:      	and	a0, a0, a3
2001295e:      	andi	a2, a2, 31
20012960:      	slli	a2, a2, 16
20012962:      	or	a0, a0, a2
20012964:      	sw	a0, 0(a1)
20012966:      	j	0x20012968 <e310x_hal::clock::AonClk::freeze::{{closure}}::h90be15d88c9a7d5a+0x34>
20012968:      	lw	a0, 24(sp)
2001296a:      	sw	a0, 52(sp)
2001296c:      	sw	a0, 48(sp)
2001296e:      	sw	a0, 20(sp)
20012970:      	j	0x20012972 <e310x_hal::clock::AonClk::freeze::{{closure}}::h90be15d88c9a7d5a+0x3e>
20012972:      	lw	a1, 20(sp)
20012974:      	lw	a0, 36(sp)
20012976:      	lbu	a2, 0(a0)
2001297a:      	sw	a1, 72(sp)
2001297c:      	sb	a2, 79(sp)
20012980:      	lw	a0, 0(a1)
20012982:      	andi	a0, a0, -64
20012986:      	andi	a2, a2, 63
2001298a:      	or	a0, a0, a2
2001298c:      	sw	a0, 0(a1)
2001298e:      	j	0x20012990 <e310x_hal::clock::AonClk::freeze::{{closure}}::h90be15d88c9a7d5a+0x5c>
20012990:      	lw	a0, 24(sp)
20012992:      	sw	a0, 68(sp)
20012994:      	sw	a0, 64(sp)
20012996:      	sw	a0, 16(sp)
20012998:      	j	0x2001299a <e310x_hal::clock::AonClk::freeze::{{closure}}::h90be15d88c9a7d5a+0x66>
2001299a:      	lw	a1, 16(sp)
2001299c:      	sw	a1, 88(sp)
2001299e:      	li	a0, 1
200129a0:      	sb	a0, 95(sp)
200129a4:      	lw	a0, 0(a1)
200129a6:      	lui	a2, 262144
200129aa:      	or	a0, a0, a2
200129ac:      	sw	a0, 0(a1)
200129ae:      	lw	a0, 88(sp)
200129b0:      	sw	a0, 12(sp)
200129b2:      	j	0x200129b4 <e310x_hal::clock::AonClk::freeze::{{closure}}::h90be15d88c9a7d5a+0x80>
200129b4:      	lw	a0, 12(sp)
200129b6:      	addi	sp, sp, 96
200129b8:      	ret

200129ba <e310x_hal::clock::Clocks::freeze::h94dcb34b664f674e>:
200129ba:      	addi	sp, sp, -64
200129bc:      	sw	ra, 60(sp)
200129be:      	sw	a2, 4(sp)
200129c0:      	sw	a1, 8(sp)
200129c2:      	sw	a1, 40(sp)
200129c4:      	sw	a2, 44(sp)
200129c6:      	lw	a1, 0(a0)
200129c8:      	sw	a1, 24(sp)
200129ca:      	lw	a1, 4(a0)
200129cc:      	sw	a1, 28(sp)
200129ce:      	lw	a0, 8(a0)
200129d0:      	sw	a0, 32(sp)
200129d2:      	addi	a0, sp, 24
200129d4:      	auipc	ra, 1048575
200129d8:      	jalr	-1288(ra)
200129dc:      	mv	a1, a0
200129de:      	sw	a1, 12(sp)
200129e0:      	sw	a0, 52(sp)
200129e2:      	j	0x200129e4 <e310x_hal::clock::Clocks::freeze::h94dcb34b664f674e+0x2a>
200129e4:      	lw	a1, 4(sp)
200129e6:      	lw	a0, 8(sp)
200129e8:      	auipc	ra, 0
200129ec:      	jalr	-484(ra)
200129f0:      	mv	a1, a0
200129f2:      	sw	a1, 0(sp)
200129f4:      	sw	a0, 56(sp)
200129f6:      	j	0x200129f8 <e310x_hal::clock::Clocks::freeze::h94dcb34b664f674e+0x3e>
200129f8:      	lw	a1, 0(sp)
200129fa:      	lw	a0, 12(sp)
200129fc:      	sw	a0, 16(sp)
200129fe:      	sw	a1, 20(sp)
20012a00:      	lw	ra, 60(sp)
20012a02:      	addi	sp, sp, 64
20012a04:      	ret

20012a06 <e310x_hal::clock::Clocks::tlclk::h4217d056012fc0dd>:
20012a06:      	addi	sp, sp, -16
20012a08:      	sw	a0, 12(sp)
20012a0a:      	lw	a0, 0(a0)
20012a0c:      	addi	sp, sp, 16
20012a0e:      	ret

20012a10 <core::num::<impl i32>::abs::h818a324f74978683>:
20012a10:      	addi	sp, sp, -32
20012a12:      	sw	a0, 12(sp)
20012a14:      	sw	a0, 24(sp)
20012a16:      	sw	a0, 28(sp)
20012a18:      	srli	a0, a0, 31
20012a1a:      	sw	a0, 16(sp)
20012a1c:      	j	0x20012a1e <core::num::<impl i32>::abs::h818a324f74978683+0xe>
20012a1e:      	lw	a0, 16(sp)
20012a20:      	li	a1, 0
20012a22:      	bne	a0, a1, 0x20012a2e <core::num::<impl i32>::abs::h818a324f74978683+0x1e>
20012a26:      	j	0x20012a28 <core::num::<impl i32>::abs::h818a324f74978683+0x18>
20012a28:      	lw	a0, 12(sp)
20012a2a:      	sw	a0, 20(sp)
20012a2c:      	j	0x20012a60 <core::num::<impl i32>::abs::h818a324f74978683+0x50>
20012a2e:      	lw	a0, 12(sp)
20012a30:      	lui	a1, 524288
20012a34:      	beq	a0, a1, 0x20012a44 <core::num::<impl i32>::abs::h818a324f74978683+0x34>
20012a38:      	j	0x20012a3a <core::num::<impl i32>::abs::h818a324f74978683+0x2a>
20012a3a:      	lw	a1, 12(sp)
20012a3c:      	li	a0, 0
20012a3e:      	sub	a0, a0, a1
20012a40:      	sw	a0, 20(sp)
20012a42:      	j	0x20012a60 <core::num::<impl i32>::abs::h818a324f74978683+0x50>
20012a44:      	lui	a0, 131093
20012a48:      	addi	a0, a0, 1232
20012a4c:      	lui	a1, 131093
20012a50:      	addi	a2, a1, 1204
20012a54:      	li	a1, 31
20012a56:      	auipc	ra, 2
20012a5a:      	jalr	-1762(ra)
20012a5e:      	unimp	
20012a60:      	lw	a0, 20(sp)
20012a62:      	addi	sp, sp, 32
20012a64:      	ret

20012a66 <e310x_hal::core::CorePeripherals::new::h571dfbd82c5ed408>:
20012a66:      	addi	sp, sp, -64
20012a68:      	sw	ra, 60(sp)
20012a6a:      	sw	a0, 4(sp)
20012a6c:      	auipc	ra, 0
20012a70:      	jalr	128(ra)
20012a74:      	j	0x20012a76 <e310x_hal::core::CorePeripherals::new::h571dfbd82c5ed408+0x10>
20012a76:      	addi	a0, sp, 8
20012a78:      	auipc	ra, 0
20012a7c:      	jalr	96(ra)
20012a80:      	j	0x20012a82 <e310x_hal::core::CorePeripherals::new::h571dfbd82c5ed408+0x1c>
20012a82:      	auipc	ra, 0
20012a86:      	jalr	32(ra)
20012a8a:      	j	0x20012a8c <e310x_hal::core::CorePeripherals::new::h571dfbd82c5ed408+0x26>
20012a8c:      	lw	a0, 4(sp)
20012a8e:      	addi	a1, sp, 8
20012a90:      	li	a2, 36
20012a94:      	auipc	ra, 2
20012a98:      	jalr	86(ra)
20012a9c:      	lw	ra, 60(sp)
20012a9e:      	addi	sp, sp, 64
20012aa0:      	ret

20012aa2 <e310x_hal::core::counters::PerformanceCounters::new::h29efcd03b0e51ed2>:
20012aa2:      	ret

20012aa4 <core::ptr::read_volatile::h5c49517132e88699>:
20012aa4:      	addi	sp, sp, -16
20012aa6:      	sw	a0, 8(sp)
20012aa8:      	lw	a0, 0(a0)
20012aaa:      	sw	a0, 4(sp)
20012aac:      	sw	a0, 12(sp)
20012aae:      	j	0x20012ab0 <core::ptr::read_volatile::h5c49517132e88699+0xc>
20012ab0:      	lw	a0, 4(sp)
20012ab2:      	addi	sp, sp, 16
20012ab4:      	ret

20012ab6 <core::ptr::write_volatile::h3cfa55c598f0442c>:
20012ab6:      	addi	sp, sp, -16
20012ab8:      	sw	a0, 8(sp)
20012aba:      	sw	a1, 12(sp)
20012abc:      	sw	a1, 0(a0)
20012abe:      	j	0x20012ac0 <core::ptr::write_volatile::h3cfa55c598f0442c+0xa>
20012ac0:      	addi	sp, sp, 16
20012ac2:      	ret

20012ac4 <<T as core::convert::Into<U>>::into::hb3db41d7e799aeb6>:
20012ac4:      	addi	sp, sp, -16
20012ac6:      	sw	ra, 12(sp)
20012ac8:      	auipc	ra, 0
20012acc:      	jalr	372(ra)
20012ad0:      	j	0x20012ad2 <<T as core::convert::Into<U>>::into::hb3db41d7e799aeb6+0xe>
20012ad2:      	lw	ra, 12(sp)
20012ad4:      	addi	sp, sp, 16
20012ad6:      	ret

20012ad8 <<T as core::convert::Into<U>>::into::hc5ba4d28664acbdb>:
20012ad8:      	addi	sp, sp, -16
20012ada:      	sw	ra, 12(sp)
20012adc:      	auipc	ra, 0
20012ae0:      	jalr	86(ra)
20012ae4:      	j	0x20012ae6 <<T as core::convert::Into<U>>::into::hc5ba4d28664acbdb+0xe>
20012ae6:      	lw	ra, 12(sp)
20012ae8:      	addi	sp, sp, 16
20012aea:      	ret

20012aec <<T as core::convert::Into<U>>::into::hd4a1b1daa7646779>:
20012aec:      	addi	sp, sp, -16
20012aee:      	sw	ra, 12(sp)
20012af0:      	auipc	ra, 0
20012af4:      	jalr	326(ra)
20012af8:      	j	0x20012afa <<T as core::convert::Into<U>>::into::hd4a1b1daa7646779+0xe>
20012afa:      	lw	ra, 12(sp)
20012afc:      	addi	sp, sp, 16
20012afe:      	ret

20012b00 <<e310x::common::PRCI as e310x_hal::clock::PrciExt>::constrain::hb0ca7990af08858d>:
20012b00:      	addi	sp, sp, -16
20012b02:      	mv	a1, a0
20012b04:      	li	a2, 0
20012b06:      	sw	a2, 0(sp)
20012b08:      	lw	a0, 4(sp)
20012b0a:      	sw	a2, 0(a1)
20012b0c:      	sw	a0, 4(a1)
20012b0e:      	lui	a0, 3369
20012b12:      	addi	a0, a0, 576
20012b16:      	sw	a0, 8(a1)
20012b18:      	addi	sp, sp, 16
20012b1a:      	ret

20012b1c <<e310x::common::AONCLK as e310x_hal::clock::AonExt>::constrain::hf301fed863e698eb>:
20012b1c:      	addi	sp, sp, -32
20012b1e:      	li	a0, 0
20012b20:      	sw	a0, 16(sp)
20012b22:      	lw	a1, 20(sp)
20012b24:      	sw	a0, 8(sp)
20012b26:      	sw	a1, 12(sp)
20012b28:      	addi	sp, sp, 32
20012b2a:      	ret

20012b2c <e310x_hal::gpio::gpio0::<impl e310x_hal::gpio::GpioExt for e310x::common::GPIO0>::split::h3f31f38f27591a75>:
20012b2c:      	addi	sp, sp, -16
20012b2e:      	addi	sp, sp, 16
20012b30:      	ret

20012b32 <<e310x_hal::core::plic::Plic as core::convert::From<e310x::common::PLIC>>::from::hf25c35b116f26d18>:
20012b32:      	addi	sp, sp, -64
20012b34:      	mv	a1, a0
20012b36:      	li	a0, 0
20012b38:      	sw	a0, 8(sp)
20012b3a:      	li	a2, 2
20012b3c:      	sw	a2, 12(sp)
20012b3e:      	li	a3, 1
20012b40:      	sw	a3, 16(sp)
20012b42:      	sw	a0, 24(sp)
20012b44:      	li	a4, 4
20012b46:      	sw	a4, 28(sp)
20012b48:      	sw	a2, 32(sp)
20012b4a:      	sw	a0, 40(sp)
20012b4c:      	li	a4, 8
20012b4e:      	sw	a4, 44(sp)
20012b50:      	li	a4, 3
20012b52:      	sw	a4, 48(sp)
20012b54:      	sw	a3, 8(a1)
20012b56:      	sw	a2, 4(a1)
20012b58:      	sw	a0, 0(a1)
20012b5a:      	lw	a0, 24(sp)
20012b5c:      	sw	a0, 12(a1)
20012b5e:      	lw	a0, 28(sp)
20012b60:      	sw	a0, 16(a1)
20012b62:      	lw	a0, 32(sp)
20012b64:      	sw	a0, 20(a1)
20012b66:      	lw	a0, 40(sp)
20012b68:      	sw	a0, 24(a1)
20012b6a:      	lw	a0, 44(sp)
20012b6c:      	sw	a0, 28(a1)
20012b6e:      	lw	a0, 48(sp)
20012b70:      	sw	a0, 32(a1)
20012b72:      	addi	sp, sp, 64
20012b74:      	ret

20012b76 <e310x_hal::core::clint::MTIME::mtime_lo::h623446799abdef42>:
20012b76:      	addi	sp, sp, -48
20012b78:      	sw	ra, 44(sp)
20012b7a:      	sw	a0, 20(sp)
20012b7c:      	j	0x20012b7e <e310x_hal::core::clint::MTIME::mtime_lo::h623446799abdef42+0x8>
20012b7e:      	lui	a0, 8204
20012b82:      	addi	a0, a0, -8
20012b84:      	sw	a0, 32(sp)
20012b86:      	sw	a0, 36(sp)
20012b88:      	sw	a0, 40(sp)
20012b8a:      	auipc	ra, 0
20012b8e:      	jalr	-230(ra)
20012b92:      	sw	a0, 28(sp)
20012b94:      	sw	a0, 16(sp)
20012b96:      	j	0x20012b98 <e310x_hal::core::clint::MTIME::mtime_lo::h623446799abdef42+0x22>
20012b98:      	addi	a0, sp, 16
20012b9a:      	sw	a0, 24(sp)
20012b9c:      	lw	a0, 16(sp)
20012b9e:      	sw	a0, 12(sp)
20012ba0:      	j	0x20012ba2 <e310x_hal::core::clint::MTIME::mtime_lo::h623446799abdef42+0x2c>
20012ba2:      	lw	a0, 12(sp)
20012ba4:      	lw	ra, 44(sp)
20012ba6:      	addi	sp, sp, 48
20012ba8:      	ret

20012baa <e310x_hal::core::clint::MTIME::mtime_hi::h9f2cb9b83fc19671>:
20012baa:      	addi	sp, sp, -48
20012bac:      	sw	ra, 44(sp)
20012bae:      	sw	a0, 20(sp)
20012bb0:      	j	0x20012bb2 <e310x_hal::core::clint::MTIME::mtime_hi::h9f2cb9b83fc19671+0x8>
20012bb2:      	lui	a0, 8204
20012bb6:      	addi	a0, a0, -4
20012bb8:      	sw	a0, 32(sp)
20012bba:      	sw	a0, 36(sp)
20012bbc:      	sw	a0, 40(sp)
20012bbe:      	auipc	ra, 0
20012bc2:      	jalr	-282(ra)
20012bc6:      	sw	a0, 28(sp)
20012bc8:      	sw	a0, 16(sp)
20012bca:      	j	0x20012bcc <e310x_hal::core::clint::MTIME::mtime_hi::h9f2cb9b83fc19671+0x22>
20012bcc:      	addi	a0, sp, 16
20012bce:      	sw	a0, 24(sp)
20012bd0:      	lw	a0, 16(sp)
20012bd2:      	sw	a0, 12(sp)
20012bd4:      	j	0x20012bd6 <e310x_hal::core::clint::MTIME::mtime_hi::h9f2cb9b83fc19671+0x2c>
20012bd6:      	lw	a0, 12(sp)
20012bd8:      	lw	ra, 44(sp)
20012bda:      	addi	sp, sp, 48
20012bdc:      	ret

20012bde <e310x_hal::core::clint::MTIME::mtime::habfe4ab5bee1a704>:
20012bde:      	addi	sp, sp, -48
20012be0:      	sw	ra, 44(sp)
20012be2:      	sw	a0, 28(sp)
20012be4:      	sw	a0, 32(sp)
20012be6:      	j	0x20012be8 <e310x_hal::core::clint::MTIME::mtime::habfe4ab5bee1a704+0xa>
20012be8:      	lw	a0, 28(sp)
20012bea:      	auipc	ra, 0
20012bee:      	jalr	-64(ra)
20012bf2:      	mv	a1, a0
20012bf4:      	sw	a1, 24(sp)
20012bf6:      	sw	a0, 36(sp)
20012bf8:      	j	0x20012bfa <e310x_hal::core::clint::MTIME::mtime::habfe4ab5bee1a704+0x1c>
20012bfa:      	lw	a0, 28(sp)
20012bfc:      	auipc	ra, 0
20012c00:      	jalr	-134(ra)
20012c04:      	mv	a1, a0
20012c06:      	sw	a1, 20(sp)
20012c08:      	sw	a0, 40(sp)
20012c0a:      	j	0x20012c0c <e310x_hal::core::clint::MTIME::mtime::habfe4ab5bee1a704+0x2e>
20012c0c:      	lw	a0, 28(sp)
20012c0e:      	auipc	ra, 0
20012c12:      	jalr	-100(ra)
20012c16:      	sw	a0, 16(sp)
20012c18:      	j	0x20012c1a <e310x_hal::core::clint::MTIME::mtime::habfe4ab5bee1a704+0x3c>
20012c1a:      	lw	a0, 24(sp)
20012c1c:      	lw	a1, 16(sp)
20012c1e:      	bne	a0, a1, 0x20012be8 <e310x_hal::core::clint::MTIME::mtime::habfe4ab5bee1a704+0xa>
20012c22:      	j	0x20012c24 <e310x_hal::core::clint::MTIME::mtime::habfe4ab5bee1a704+0x46>
20012c24:      	lw	a0, 24(sp)
20012c26:      	sw	a0, 12(sp)
20012c28:      	li	a0, 0
20012c2a:      	j	0x20012c2c <e310x_hal::core::clint::MTIME::mtime::habfe4ab5bee1a704+0x4e>
20012c2c:      	lw	a1, 12(sp)
20012c2e:      	lw	a0, 20(sp)
20012c30:      	lw	ra, 44(sp)
20012c32:      	addi	sp, sp, 48
20012c34:      	ret

20012c36 <<e310x_hal::core::clint::Clint as core::convert::From<e310x::common::CLINT>>::from::h1ec1b176523978ca>:
20012c36:      	addi	sp, sp, -16
20012c38:      	addi	sp, sp, 16
20012c3a:      	ret

20012c3c <<e310x_hal::device::DeviceGpioPins as core::convert::From<e310x::common::GPIO0>>::from::h2230108a42aa577d>:
20012c3c:      	addi	sp, sp, -16
20012c3e:      	sw	ra, 12(sp)
20012c40:      	auipc	ra, 0
20012c44:      	jalr	-276(ra)
20012c48:      	j	0x20012c4a <<e310x_hal::device::DeviceGpioPins as core::convert::From<e310x::common::GPIO0>>::from::h2230108a42aa577d+0xe>
20012c4a:      	lw	ra, 12(sp)
20012c4c:      	addi	sp, sp, 16
20012c4e:      	ret

20012c50 <<e310x_hal::device::DeviceResources as core::convert::From<e310x::Peripherals>>::from::h3e72a2af45c14603>:
20012c50:      	addi	sp, sp, -64
20012c52:      	sw	ra, 60(sp)
20012c54:      	sw	a0, 4(sp)
20012c56:      	addi	a0, sp, 8
20012c58:      	auipc	ra, 0
20012c5c:      	jalr	-498(ra)
20012c60:      	j	0x20012c62 <<e310x_hal::device::DeviceResources as core::convert::From<e310x::Peripherals>>::from::h3e72a2af45c14603+0x12>
20012c62:      	auipc	ra, 0
20012c66:      	jalr	-414(ra)
20012c6a:      	j	0x20012c6c <<e310x_hal::device::DeviceResources as core::convert::From<e310x::Peripherals>>::from::h3e72a2af45c14603+0x1c>
20012c6c:      	lw	a0, 4(sp)
20012c6e:      	addi	a1, sp, 8
20012c70:      	li	a2, 36
20012c74:      	auipc	ra, 2
20012c78:      	jalr	-394(ra)
20012c7c:      	lw	ra, 60(sp)
20012c7e:      	addi	sp, sp, 64
20012c80:      	ret

20012c82 <<u32 as e310x_hal::time::U32Ext>::bps::h1c273e2fa6c89fbd>:
20012c82:      	addi	sp, sp, -16
20012c84:      	sw	a0, 12(sp)
20012c86:      	sw	a0, 8(sp)
20012c88:      	addi	sp, sp, 16
20012c8a:      	ret

20012c8c <<u32 as e310x_hal::time::U32Ext>::mhz::h98f618940dd0b2ad>:
20012c8c:      	addi	sp, sp, -16
20012c8e:      	sw	a0, 12(sp)
20012c90:      	sw	a0, 8(sp)
20012c92:      	addi	sp, sp, 16
20012c94:      	ret

20012c96 <<e310x_hal::time::MegaHertz as core::convert::Into<e310x_hal::time::Hertz>>::into::h1a2c343b328c48fd>:
20012c96:      	addi	sp, sp, -16
20012c98:      	sw	a0, 12(sp)
20012c9a:      	lui	a1, 244
20012c9e:      	addi	a1, a1, 576
20012ca2:      	mul	a2, a0, a1
20012ca6:      	sw	a2, 4(sp)
20012ca8:      	mulhu	a0, a0, a1
20012cac:      	li	a1, 0
20012cae:      	bne	a0, a1, 0x20012cbc <<e310x_hal::time::MegaHertz as core::convert::Into<e310x_hal::time::Hertz>>::into::h1a2c343b328c48fd+0x26>
20012cb2:      	j	0x20012cb4 <<e310x_hal::time::MegaHertz as core::convert::Into<e310x_hal::time::Hertz>>::into::h1a2c343b328c48fd+0x1e>
20012cb4:      	lw	a0, 4(sp)
20012cb6:      	sw	a0, 8(sp)
20012cb8:      	addi	sp, sp, 16
20012cba:      	ret
20012cbc:      	lui	a0, 131093
20012cc0:      	addi	a0, a0, 1360
20012cc4:      	lui	a1, 131093
20012cc8:      	addi	a2, a1, 1396
20012ccc:      	li	a1, 33
20012cd0:      	auipc	ra, 1
20012cd4:      	jalr	1700(ra)
20012cd8:      	unimp	

20012cda <__read_mstatus>:
20012cda:      	csrr	a0, mstatus
20012cde:      	ret

20012ce0 <__set_mstatus>:
20012ce0:      	csrs	mstatus, a0
20012ce4:      	ret

20012ce6 <__clear_mstatus>:
20012ce6:      	csrc	mstatus, a0
20012cea:      	ret

20012cec <bare_metal::CriticalSection::new::h8799a00141ed64bb>:
20012cec:      	ret

20012cee <yarr_m_trap>:
20012cee:      	addi	sp, sp, -80
20012cf0:      	sw	ra, 76(sp)
20012cf2:      	sw	a0, 40(sp)
20012cf4:      	sw	a0, 48(sp)
20012cf6:      	sw	a1, 52(sp)
20012cf8:      	sw	a2, 56(sp)
20012cfa:      	sw	a3, 60(sp)
20012cfc:      	sw	a4, 64(sp)
20012cfe:      	j	0x20012d00 <yarr_m_trap+0x12>
20012d00:      	li	a0, 32
20012d04:      	sw	a0, 36(sp)
20012d06:      	li	a0, 0
20012d08:      	bne	a0, a0, 0x20012d1c <yarr_m_trap+0x2e>
20012d0c:      	j	0x20012d0e <yarr_m_trap+0x20>
20012d0e:      	lw	a0, 36(sp)
20012d10:      	addi	a1, a0, -1
20012d14:      	sw	a1, 32(sp)
20012d16:      	bltu	a0, a1, 0x20012d50 <yarr_m_trap+0x62>
20012d1a:      	j	0x20012d3a <yarr_m_trap+0x4c>
20012d1c:      	lui	a0, 131093
20012d20:      	addi	a0, a0, 1488
20012d24:      	lui	a1, 131093
20012d28:      	addi	a2, a1, 1468
20012d2c:      	li	a1, 33
20012d30:      	auipc	ra, 1
20012d34:      	jalr	1604(ra)
20012d38:      	unimp	
20012d3a:      	lw	a1, 40(sp)
20012d3c:      	lw	a2, 32(sp)
20012d3e:      	andi	a0, a2, -32
20012d42:      	srl	a1, a1, a2
20012d46:      	sw	a1, 28(sp)
20012d48:      	li	a1, 0
20012d4a:      	bne	a0, a1, 0x20012d7e <yarr_m_trap+0x90>
20012d4e:      	j	0x20012d6e <yarr_m_trap+0x80>
20012d50:      	lui	a0, 131093
20012d54:      	addi	a0, a0, 1552
20012d58:      	lui	a1, 131093
20012d5c:      	addi	a2, a1, 1524
20012d60:      	li	a1, 33
20012d64:      	auipc	ra, 1
20012d68:      	jalr	1552(ra)
20012d6c:      	unimp	
20012d6e:      	lw	a0, 28(sp)
20012d70:      	andi	a0, a0, 1
20012d72:      	sb	a0, 71(sp)
20012d76:      	li	a1, 0
20012d78:      	bne	a0, a1, 0x20012da6 <yarr_m_trap+0xb8>
20012d7c:      	j	0x20012d9c <yarr_m_trap+0xae>
20012d7e:      	lui	a0, 131093
20012d82:      	addi	a0, a0, 1616
20012d86:      	lui	a1, 131093
20012d8a:      	addi	a2, a1, 1588
20012d8e:      	li	a1, 36
20012d92:      	auipc	ra, 1
20012d96:      	jalr	1506(ra)
20012d9a:      	unimp	
20012d9c:      	lw	a0, 40(sp)
20012d9e:      	li	a1, 11
20012da0:      	beq	a0, a1, 0x20012e30 <yarr_m_trap+0x142>
20012da4:      	j	0x20012e14 <yarr_m_trap+0x126>
20012da6:      	lw	a0, 40(sp)
20012da8:      	slli	a0, a0, 1
20012daa:      	srli	a0, a0, 1
20012dac:      	sw	a0, 72(sp)
20012dae:      	li	a1, 7
20012db0:      	beq	a0, a1, 0x20012dd2 <yarr_m_trap+0xe4>
20012db4:      	j	0x20012db6 <yarr_m_trap+0xc8>
20012db6:      	lui	a0, 131093
20012dba:      	addi	a0, a0, 1652
20012dbe:      	lui	a1, 131093
20012dc2:      	addi	a2, a1, 1668
20012dc6:      	li	a1, 14
20012dc8:      	auipc	ra, 1
20012dcc:      	jalr	1452(ra)
20012dd0:      	unimp	
20012dd2:      	lui	a0, 524289
20012dd6:      	lw	a1, -1380(a0)
20012dda:      	lw	a0, -1384(a0)
20012dde:      	auipc	ra, 0
20012de2:      	jalr	140(ra)
20012de6:      	j	0x20012de8 <yarr_m_trap+0xfa>
20012de8:      	auipc	ra, 0
20012dec:      	jalr	1726(ra)
20012df0:      	sw	a0, 24(sp)
20012df2:      	j	0x20012df4 <yarr_m_trap+0x106>
20012df4:      	lw	a1, 24(sp)
20012df6:      	lw	a0, 0(a1)
20012df8:      	lw	a1, 4(a1)
20012dfa:      	auipc	ra, 1
20012dfe:      	jalr	-2(ra)
20012e02:      	sw	a0, 20(sp)
20012e04:      	j	0x20012e06 <yarr_m_trap+0x118>
20012e06:      	lw	a0, 20(sp)
20012e08:      	sw	a0, 44(sp)
20012e0a:      	j	0x20012e0c <yarr_m_trap+0x11e>
20012e0c:      	lw	a0, 44(sp)
20012e0e:      	lw	ra, 76(sp)
20012e10:      	addi	sp, sp, 80
20012e12:      	ret
20012e14:      	lui	a0, 131093
20012e18:      	addi	a0, a0, 1652
20012e1c:      	lui	a1, 131093
20012e20:      	addi	a2, a1, 1684
20012e24:      	li	a1, 14
20012e26:      	auipc	ra, 1
20012e2a:      	jalr	1358(ra)
20012e2e:      	unimp	
20012e30:      	lui	a0, 524289
20012e34:      	lw	a1, -1380(a0)
20012e38:      	lw	a0, -1384(a0)
20012e3c:      	auipc	ra, 0
20012e40:      	jalr	46(ra)
20012e44:      	j	0x20012e46 <yarr_m_trap+0x158>
20012e46:      	auipc	ra, 0
20012e4a:      	jalr	1632(ra)
20012e4e:      	sw	a0, 16(sp)
20012e50:      	j	0x20012e52 <yarr_m_trap+0x164>
20012e52:      	lw	a1, 16(sp)
20012e54:      	lw	a0, 0(a1)
20012e56:      	lw	a1, 4(a1)
20012e58:      	auipc	ra, 1
20012e5c:      	jalr	-96(ra)
20012e60:      	sw	a0, 12(sp)
20012e62:      	j	0x20012e64 <yarr_m_trap+0x176>
20012e64:      	lw	a0, 12(sp)
20012e66:      	sw	a0, 44(sp)
20012e68:      	j	0x20012e0c <yarr_m_trap+0x11e>

20012e6a <yarr_set_timer>:
20012e6a:      	addi	sp, sp, -80
20012e6c:      	sw	ra, 76(sp)
20012e6e:      	mv	a2, a1
20012e70:      	sw	a2, 16(sp)
20012e72:      	mv	a2, a0
20012e74:      	sw	a2, 20(sp)
20012e76:      	sw	a1, 36(sp)
20012e78:      	sw	a0, 32(sp)
20012e7a:      	lui	a0, 8204
20012e7e:      	addi	a0, a0, -8
20012e80:      	auipc	ra, 0
20012e84:      	jalr	76(ra)
20012e88:      	sw	a1, 24(sp)
20012e8a:      	sw	a0, 28(sp)
20012e8c:      	j	0x20012e8e <yarr_set_timer+0x24>
20012e8e:      	lw	a0, 24(sp)
20012e90:      	lw	a2, 16(sp)
20012e92:      	lw	a3, 28(sp)
20012e94:      	lw	a1, 20(sp)
20012e96:      	sw	a3, 40(sp)
20012e98:      	sw	a0, 44(sp)
20012e9a:      	sw	a1, 48(sp)
20012e9c:      	sw	a2, 52(sp)
20012e9e:      	add	a1, a1, a3
20012ea0:      	sw	a1, 8(sp)
20012ea2:      	sltu	a1, a1, a3
20012ea6:      	add	a0, a0, a2
20012ea8:      	add	a0, a0, a1
20012eaa:      	sw	a0, 12(sp)
20012eac:      	j	0x20012eae <yarr_set_timer+0x44>
20012eae:      	lw	a2, 12(sp)
20012eb0:      	lw	a1, 8(sp)
20012eb2:      	lui	a0, 8196
20012eb6:      	sw	a0, 60(sp)
20012eb8:      	sw	a1, 64(sp)
20012eba:      	sw	a2, 68(sp)
20012ebc:      	auipc	ra, 0
20012ec0:      	jalr	422(ra)
20012ec4:      	j	0x20012ec6 <yarr_set_timer+0x5c>
20012ec6:      	lw	ra, 76(sp)
20012ec8:      	addi	sp, sp, 80
20012eca:      	ret

20012ecc <core::ptr::const_ptr::<impl *const T>::read_volatile::h3273de5ad80fa2fc>:
20012ecc:      	addi	sp, sp, -16
20012ece:      	sw	ra, 12(sp)
20012ed0:      	sw	a0, 8(sp)
20012ed2:      	auipc	ra, 0
20012ed6:      	jalr	372(ra)
20012eda:      	sw	a1, 0(sp)
20012edc:      	sw	a0, 4(sp)
20012ede:      	j	0x20012ee0 <core::ptr::const_ptr::<impl *const T>::read_volatile::h3273de5ad80fa2fc+0x14>
20012ee0:      	lw	a1, 0(sp)
20012ee2:      	lw	a0, 4(sp)
20012ee4:      	lw	ra, 12(sp)
20012ee6:      	addi	sp, sp, 16
20012ee8:      	ret

20012eea <yarr_idle_task>:
20012eea:      	addi	sp, sp, -16
20012eec:      	sw	ra, 12(sp)
20012eee:      	j	0x20012ef0 <yarr_idle_task+0x6>
20012ef0:      	li	a0, 4
20012ef2:      	sb	a0, 11(sp)
20012ef6:      	auipc	ra, 0
20012efa:      	jalr	382(ra)
20012efe:      	j	0x20012f00 <yarr_idle_task+0x16>
20012f00:      	auipc	ra, 0
20012f04:      	jalr	318(ra)
20012f08:      	j	0x20012ef0 <yarr_idle_task+0x6>

20012f0a <yarr_init_process>:
20012f0a:      	addi	sp, sp, -64
20012f0c:      	sw	ra, 60(sp)
20012f0e:      	sw	a0, 44(sp)
20012f10:      	sw	a0, 56(sp)
20012f12:      	li	a0, 4
20012f14:      	sb	a0, 51(sp)
20012f18:      	auipc	ra, 0
20012f1c:      	jalr	348(ra)
20012f20:      	j	0x20012f22 <yarr_init_process+0x18>
20012f22:      	csrr	a0, mstatus
20012f26:      	sw	a0, 52(sp)
20012f28:      	j	0x20012f2a <yarr_init_process+0x20>
20012f2a:      	lw	a0, 44(sp)
20012f2c:      	lw	a1, 52(sp)
20012f2e:      	lui	a2, 2
20012f30:      	addi	a2, a2, -1912
20012f34:      	or	a1, a1, a2
20012f36:      	sw	a1, 52(sp)
20012f38:      	lw	a1, 16(a0)
20012f3a:      	sw	a1, 36(sp)
20012f3c:      	lw	a0, 4(a0)
20012f3e:      	addi	a1, a0, -1
20012f42:      	sw	a1, 40(sp)
20012f44:      	bltu	a0, a1, 0x20012f58 <yarr_init_process+0x4e>
20012f48:      	j	0x20012f4a <yarr_init_process+0x40>
20012f4a:      	lw	a0, 40(sp)
20012f4c:      	lw	a1, 44(sp)
20012f4e:      	lw	a1, 4(a1)
20012f50:      	sw	a1, 32(sp)
20012f52:      	bltu	a0, a1, 0x20012f76 <yarr_init_process+0x6c>
20012f56:      	j	0x20012f96 <yarr_init_process+0x8c>
20012f58:      	lui	a0, 131093
20012f5c:      	addi	a0, a0, 1776
20012f60:      	lui	a1, 131093
20012f64:      	addi	a2, a1, 1756
20012f68:      	li	a1, 33
20012f6c:      	auipc	ra, 1
20012f70:      	jalr	1032(ra)
20012f74:      	unimp	
20012f76:      	lw	a0, 44(sp)
20012f78:      	lw	a1, 36(sp)
20012f7a:      	lw	a3, 40(sp)
20012f7c:      	lw	a2, 0(a0)
20012f7e:      	slli	a3, a3, 2
20012f80:      	add	a2, a2, a3
20012f82:      	sw	a1, 0(a2)
20012f84:      	lw	a1, 52(sp)
20012f86:      	sw	a1, 24(sp)
20012f88:      	lw	a0, 4(a0)
20012f8a:      	addi	a1, a0, -2
20012f8e:      	sw	a1, 28(sp)
20012f90:      	bltu	a0, a1, 0x20012fba <yarr_init_process+0xb0>
20012f94:      	j	0x20012fac <yarr_init_process+0xa2>
20012f96:      	lw	a1, 32(sp)
20012f98:      	lw	a0, 40(sp)
20012f9a:      	lui	a2, 131093
20012f9e:      	addi	a2, a2, 1812
20012fa2:      	auipc	ra, 1
20012fa6:      	jalr	1022(ra)
20012faa:      	unimp	
20012fac:      	lw	a0, 28(sp)
20012fae:      	lw	a1, 44(sp)
20012fb0:      	lw	a1, 4(a1)
20012fb2:      	sw	a1, 20(sp)
20012fb4:      	bltu	a0, a1, 0x20012fd8 <yarr_init_process+0xce>
20012fb8:      	j	0x20012ff6 <yarr_init_process+0xec>
20012fba:      	lui	a0, 131093
20012fbe:      	addi	a0, a0, 1776
20012fc2:      	lui	a1, 131093
20012fc6:      	addi	a2, a1, 1828
20012fca:      	li	a1, 33
20012fce:      	auipc	ra, 1
20012fd2:      	jalr	934(ra)
20012fd6:      	unimp	
20012fd8:      	lw	a1, 44(sp)
20012fda:      	lw	a0, 24(sp)
20012fdc:      	lw	a3, 28(sp)
20012fde:      	lw	a2, 0(a1)
20012fe0:      	slli	a3, a3, 2
20012fe2:      	add	a2, a2, a3
20012fe4:      	sw	a0, 0(a2)
20012fe6:      	lw	a0, 8(a1)
20012fe8:      	lw	a1, 12(a1)
20012fea:      	auipc	ra, 1
20012fee:      	jalr	-498(ra)
20012ff2:      	sw	a0, 16(sp)
20012ff4:      	j	0x2001300c <yarr_init_process+0x102>
20012ff6:      	lw	a1, 20(sp)
20012ff8:      	lw	a0, 28(sp)
20012ffa:      	lui	a2, 131093
20012ffe:      	addi	a2, a2, 1844
20013002:      	auipc	ra, 1
20013006:      	jalr	926(ra)
2001300a:      	unimp	
2001300c:      	lw	a0, 44(sp)
2001300e:      	lw	a0, 4(a0)
20013010:      	sw	a0, 12(sp)
20013012:      	li	a1, 2
20013014:      	bltu	a0, a1, 0x20013028 <yarr_init_process+0x11e>
20013018:      	j	0x2001301a <yarr_init_process+0x110>
2001301a:      	lw	a0, 16(sp)
2001301c:      	lw	a1, 44(sp)
2001301e:      	lw	a1, 0(a1)
20013020:      	sw	a0, 4(a1)
20013022:      	lw	ra, 60(sp)
20013024:      	addi	sp, sp, 64
20013026:      	ret
20013028:      	lw	a1, 12(sp)
2001302a:      	lui	a0, 131093
2001302e:      	addi	a2, a0, 1860
20013032:      	li	a0, 1
20013034:      	auipc	ra, 1
20013038:      	jalr	876(ra)
2001303c:      	unimp	

2001303e <riscv::asm::wfi::hd7b7b2d91833d833>:
2001303e:      	wfi	
20013042:      	j	0x20013044 <riscv::asm::wfi::hd7b7b2d91833d833+0x6>
20013044:      	ret

20013046 <core::ptr::read_volatile::h5be3cafb2ef7b66a>:
20013046:      	addi	sp, sp, -32
20013048:      	mv	a1, a0
2001304a:      	sw	a1, 20(sp)
2001304c:      	lw	a0, 4(a1)
2001304e:      	sw	a0, 12(sp)
20013050:      	lw	a1, 0(a1)
20013052:      	sw	a1, 16(sp)
20013054:      	sw	a1, 24(sp)
20013056:      	sw	a0, 28(sp)
20013058:      	j	0x2001305a <core::ptr::read_volatile::h5be3cafb2ef7b66a+0x14>
2001305a:      	lw	a1, 12(sp)
2001305c:      	lw	a0, 16(sp)
2001305e:      	addi	sp, sp, 32
20013060:      	ret

20013062 <core::ptr::write_volatile::h9572578efb377d5b>:
20013062:      	addi	sp, sp, -16
20013064:      	sw	a0, 4(sp)
20013066:      	sw	a1, 8(sp)
20013068:      	sw	a2, 12(sp)
2001306a:      	sw	a1, 0(a0)
2001306c:      	sw	a2, 4(a0)
2001306e:      	j	0x20013070 <core::ptr::write_volatile::h9572578efb377d5b+0xe>
20013070:      	addi	sp, sp, 16
20013072:      	ret

20013074 <core::sync::atomic::compiler_fence::hd35aee915030cd2a>:
20013074:      	addi	sp, sp, -48
20013076:      	sw	ra, 44(sp)
20013078:      	sb	a0, 15(sp)
2001307c:      	andi	a0, a0, 255
20013080:      	sw	a0, 8(sp)
20013082:      	lw	a0, 8(sp)
20013084:      	slli	a0, a0, 2
20013086:      	lui	a1, 131093
2001308a:      	addi	a1, a1, 1876
2001308e:      	add	a0, a0, a1
20013090:      	lw	a0, 0(a0)
20013092:      	jr	a0
20013094:      	unimp	

20013096 <.LBB0_3>:
20013096:      	lui	a0, 131093
2001309a:      	addi	a1, a0, 1948
2001309e:      	lui	a0, 131093
200130a2:      	addi	a3, a0, 1956
200130a6:      	addi	a0, sp, 16
200130a8:      	li	a2, 1
200130aa:      	li	a4, 0
200130ac:      	auipc	ra, 0
200130b0:      	jalr	60(ra)
200130b4:      	j	0x200130d4 <.LBB0_7+0xc>

200130b6 <.LBB0_4>:
200130b6:      	fence	rw, w
200130ba:      	j	0x200130ce <.LBB0_7+0x6>

200130bc <.LBB0_5>:
200130bc:      	fence	r, rw
200130c0:      	j	0x200130ce <.LBB0_7+0x6>

200130c2 <.LBB0_6>:
200130c2:      	fence.tso	
200130c6:      	j	0x200130ce <.LBB0_7+0x6>

200130c8 <.LBB0_7>:
200130c8:      	fence	rw, rw
200130cc:      	j	0x200130ce <.LBB0_7+0x6>
200130ce:      	lw	ra, 44(sp)
200130d0:      	addi	sp, sp, 48
200130d2:      	ret
200130d4:      	lui	a0, 131093
200130d8:      	addi	a1, a0, 2036
200130dc:      	addi	a0, sp, 16
200130de:      	auipc	ra, 1
200130e2:      	jalr	770(ra)
200130e6:      	unimp	

200130e8 <core::fmt::Arguments::new_v1::h66b2e8d5d478a4a9>:
200130e8:      	addi	sp, sp, -80
200130ea:      	sw	ra, 76(sp)
200130ec:      	sw	a4, 0(sp)
200130ee:      	sw	a3, 4(sp)
200130f0:      	sw	a2, 8(sp)
200130f2:      	sw	a1, 12(sp)
200130f4:      	sw	a0, 16(sp)
200130f6:      	sw	a1, 56(sp)
200130f8:      	sw	a2, 60(sp)
200130fa:      	sw	a3, 64(sp)
200130fc:      	sw	a4, 68(sp)
200130fe:      	bltu	a2, a4, 0x20013114 <core::fmt::Arguments::new_v1::h66b2e8d5d478a4a9+0x2c>
20013102:      	j	0x20013104 <core::fmt::Arguments::new_v1::h66b2e8d5d478a4a9+0x1c>
20013104:      	lw	a1, 8(sp)
20013106:      	lw	a0, 0(sp)
20013108:      	addi	a0, a0, 1
2001310a:      	sltu	a0, a0, a1
2001310e:      	sb	a0, 23(sp)
20013112:      	j	0x2001311c <core::fmt::Arguments::new_v1::h66b2e8d5d478a4a9+0x34>
20013114:      	li	a0, 1
20013116:      	sb	a0, 23(sp)
2001311a:      	j	0x2001311c <core::fmt::Arguments::new_v1::h66b2e8d5d478a4a9+0x34>
2001311c:      	lbu	a0, 23(sp)
20013120:      	andi	a0, a0, 1
20013122:      	li	a1, 0
20013124:      	bne	a0, a1, 0x2001314e <core::fmt::Arguments::new_v1::h66b2e8d5d478a4a9+0x66>
20013128:      	j	0x2001312a <core::fmt::Arguments::new_v1::h66b2e8d5d478a4a9+0x42>
2001312a:      	lw	a0, 0(sp)
2001312c:      	lw	a1, 16(sp)
2001312e:      	lw	a2, 4(sp)
20013130:      	lw	a3, 8(sp)
20013132:      	lw	a4, 12(sp)
20013134:      	li	a5, 0
20013136:      	sw	a5, 48(sp)
20013138:      	sw	a4, 0(a1)
2001313a:      	sw	a3, 4(a1)
2001313c:      	lw	a4, 48(sp)
2001313e:      	lw	a3, 52(sp)
20013140:      	sw	a4, 8(a1)
20013142:      	sw	a3, 12(a1)
20013144:      	sw	a2, 16(a1)
20013146:      	sw	a0, 20(a1)
20013148:      	lw	ra, 76(sp)
2001314a:      	addi	sp, sp, 80
2001314c:      	ret
2001314e:      	lui	a0, 131094
20013152:      	addi	a1, a0, -2032
20013156:      	lui	a0, 131094
2001315a:      	addi	a3, a0, -2024
2001315e:      	addi	a0, sp, 24
20013160:      	li	a2, 1
20013162:      	li	a4, 0
20013164:      	auipc	ra, 0
20013168:      	jalr	-124(ra)
2001316c:      	j	0x2001316e <core::fmt::Arguments::new_v1::h66b2e8d5d478a4a9+0x86>
2001316e:      	lui	a0, 131094
20013172:      	addi	a1, a0, -1948
20013176:      	addi	a0, sp, 24
20013178:      	auipc	ra, 1
2001317c:      	jalr	616(ra)
20013180:      	unimp	

20013182 <ExceptionHandler>:
20013182:      	addi	sp, sp, -16
20013184:      	sw	a0, 12(sp)
20013186:      	j	0x20013188 <ExceptionHandler+0x6>
20013188:      	j	0x20013188 <ExceptionHandler+0x6>

2001318a <UserTimer>:
2001318a:      	j	0x2001318c <UserTimer+0x2>
2001318c:      	j	0x2001318c <UserTimer+0x2>

2001318e <default_pre_init>:
2001318e:      	ret

20013190 <default_mp_hook>:
20013190:      	addi	sp, sp, -16
20013192:      	sw	ra, 12(sp)
20013194:      	auipc	ra, 0
20013198:      	jalr	412(ra)
2001319c:      	sw	a0, 8(sp)
2001319e:      	j	0x200131a0 <default_mp_hook+0x10>
200131a0:      	lw	a0, 8(sp)
200131a2:      	li	a1, 0
200131a4:      	bne	a0, a1, 0x200131b2 <default_mp_hook+0x22>
200131a8:      	j	0x200131aa <default_mp_hook+0x1a>
200131aa:      	li	a0, 1
200131ac:      	lw	ra, 12(sp)
200131ae:      	addi	sp, sp, 16
200131b0:      	ret
200131b2:      	auipc	ra, 0
200131b6:      	jalr	422(ra)
200131ba:      	j	0x200131b2 <default_mp_hook+0x22>

200131bc <riscv::register::mcause::read::h5c23357324a2d1fb>:
200131bc:      	addi	sp, sp, -16
200131be:      	sw	ra, 12(sp)
200131c0:      	auipc	ra, 0
200131c4:      	jalr	22(ra)
200131c8:      	sw	a0, 4(sp)
200131ca:      	j	0x200131cc <riscv::register::mcause::read::h5c23357324a2d1fb+0x10>
200131cc:      	lw	a0, 4(sp)
200131ce:      	sw	a0, 8(sp)
200131d0:      	lw	ra, 12(sp)
200131d2:      	addi	sp, sp, 16
200131d4:      	ret

200131d6 <riscv::register::mcause::_read::h50fdd1f137d3b281>:
200131d6:      	addi	sp, sp, -16
200131d8:      	csrr	a0, mcause
200131dc:      	sw	a0, 12(sp)
200131de:      	j	0x200131e0 <riscv::register::mcause::_read::h50fdd1f137d3b281+0xa>
200131e0:      	lw	a0, 12(sp)
200131e2:      	addi	sp, sp, 16
200131e4:      	ret

200131e6 <riscv::register::mcause::Mcause::is_exception::h3bdabfbae52edf2a>:
200131e6:      	addi	sp, sp, -16
200131e8:      	sw	ra, 12(sp)
200131ea:      	sw	a0, 8(sp)
200131ec:      	auipc	ra, 0
200131f0:      	jalr	24(ra)
200131f4:      	sw	a0, 4(sp)
200131f6:      	j	0x200131f8 <riscv::register::mcause::Mcause::is_exception::h3bdabfbae52edf2a+0x12>
200131f8:      	lw	a0, 4(sp)
200131fa:      	xori	a0, a0, 1
200131fe:      	lw	ra, 12(sp)
20013200:      	addi	sp, sp, 16
20013202:      	ret

20013204 <riscv::register::mcause::Mcause::is_interrupt::h91fa88ff52e06e53>:
20013204:      	addi	sp, sp, -16
20013206:      	sw	a0, 12(sp)
20013208:      	lw	a0, 0(a0)
2001320a:      	srli	a0, a0, 31
2001320c:      	addi	a0, a0, -1
2001320e:      	seqz	a0, a0
20013212:      	addi	sp, sp, 16
20013214:      	ret

20013216 <riscv::register::mcause::Mcause::code::h98e3c7f8ef58a011>:
20013216:      	addi	sp, sp, -16
20013218:      	sw	a0, 12(sp)
2001321a:      	lw	a0, 0(a0)
2001321c:      	slli	a0, a0, 1
2001321e:      	srli	a0, a0, 1
20013220:      	addi	sp, sp, 16
20013222:      	ret

20013224 <r0::zero_bss::h1334e00c62eb0600>:
20013224:      	addi	sp, sp, -48
20013226:      	sw	ra, 44(sp)
20013228:      	sw	a1, 12(sp)
2001322a:      	sw	a0, 16(sp)
2001322c:      	sw	a1, 20(sp)
2001322e:      	j	0x20013230 <r0::zero_bss::h1334e00c62eb0600+0xc>
20013230:      	lw	a1, 12(sp)
20013232:      	lw	a0, 16(sp)
20013234:      	bltu	a0, a1, 0x20013240 <r0::zero_bss::h1334e00c62eb0600+0x1c>
20013238:      	j	0x2001323a <r0::zero_bss::h1334e00c62eb0600+0x16>
2001323a:      	lw	ra, 44(sp)
2001323c:      	addi	sp, sp, 48
2001323e:      	ret
20013240:      	lw	a0, 16(sp)
20013242:      	sw	a0, 4(sp)
20013244:      	auipc	ra, 0
20013248:      	jalr	158(ra)
2001324c:      	mv	a1, a0
2001324e:      	sw	a1, 8(sp)
20013250:      	sw	a0, 24(sp)
20013252:      	sw	a0, 28(sp)
20013254:      	j	0x20013256 <r0::zero_bss::h1334e00c62eb0600+0x32>
20013256:      	lw	a1, 8(sp)
20013258:      	lw	a0, 4(sp)
2001325a:      	auipc	ra, 0
2001325e:      	jalr	262(ra)
20013262:      	j	0x20013264 <r0::zero_bss::h1334e00c62eb0600+0x40>
20013264:      	lw	a0, 16(sp)
20013266:      	sw	a0, 32(sp)
20013268:      	li	a1, 1
2001326a:      	sw	a1, 36(sp)
2001326c:      	addi	a0, a0, 4
2001326e:      	sw	a0, 0(sp)
20013270:      	sw	a0, 40(sp)
20013272:      	j	0x20013274 <r0::zero_bss::h1334e00c62eb0600+0x50>
20013274:      	lw	a0, 0(sp)
20013276:      	sw	a0, 16(sp)
20013278:      	j	0x20013230 <r0::zero_bss::h1334e00c62eb0600+0xc>

2001327a <r0::init_data::h445fe137e16bf2da>:
2001327a:      	addi	sp, sp, -64
2001327c:      	sw	ra, 60(sp)
2001327e:      	sw	a1, 20(sp)
20013280:      	sw	a0, 24(sp)
20013282:      	sw	a2, 28(sp)
20013284:      	sw	a1, 32(sp)
20013286:      	j	0x20013288 <r0::init_data::h445fe137e16bf2da+0xe>
20013288:      	lw	a1, 20(sp)
2001328a:      	lw	a0, 24(sp)
2001328c:      	bltu	a0, a1, 0x20013298 <r0::init_data::h445fe137e16bf2da+0x1e>
20013290:      	j	0x20013292 <r0::init_data::h445fe137e16bf2da+0x18>
20013292:      	lw	ra, 60(sp)
20013294:      	addi	sp, sp, 64
20013296:      	ret
20013298:      	lw	a0, 24(sp)
2001329a:      	sw	a0, 12(sp)
2001329c:      	lw	a0, 28(sp)
2001329e:      	auipc	ra, 0
200132a2:      	jalr	208(ra)
200132a6:      	sw	a0, 16(sp)
200132a8:      	j	0x200132aa <r0::init_data::h445fe137e16bf2da+0x30>
200132aa:      	lw	a1, 16(sp)
200132ac:      	lw	a0, 12(sp)
200132ae:      	auipc	ra, 0
200132b2:      	jalr	230(ra)
200132b6:      	j	0x200132b8 <r0::init_data::h445fe137e16bf2da+0x3e>
200132b8:      	lw	a0, 24(sp)
200132ba:      	sw	a0, 36(sp)
200132bc:      	li	a1, 1
200132be:      	sw	a1, 40(sp)
200132c0:      	addi	a0, a0, 4
200132c2:      	sw	a0, 8(sp)
200132c4:      	sw	a0, 44(sp)
200132c6:      	j	0x200132c8 <r0::init_data::h445fe137e16bf2da+0x4e>
200132c8:      	lw	a0, 8(sp)
200132ca:      	sw	a0, 24(sp)
200132cc:      	lw	a0, 28(sp)
200132ce:      	sw	a0, 48(sp)
200132d0:      	li	a1, 1
200132d2:      	sw	a1, 52(sp)
200132d4:      	addi	a0, a0, 4
200132d6:      	sw	a0, 4(sp)
200132d8:      	sw	a0, 56(sp)
200132da:      	j	0x200132dc <r0::init_data::h445fe137e16bf2da+0x62>
200132dc:      	lw	a0, 4(sp)
200132de:      	sw	a0, 28(sp)
200132e0:      	j	0x20013288 <r0::init_data::h445fe137e16bf2da+0xe>

200132e2 <core::mem::maybe_uninit::MaybeUninit<T>::zeroed::hba01e001abd461d4>:
200132e2:      	addi	sp, sp, -32
200132e4:      	sw	ra, 28(sp)
200132e6:      	lw	a0, 12(sp)
200132e8:      	sw	a0, 4(sp)
200132ea:      	j	0x200132ec <core::mem::maybe_uninit::MaybeUninit<T>::zeroed::hba01e001abd461d4+0xa>
200132ec:      	addi	a0, sp, 4
200132ee:      	sw	a0, 8(sp)
200132f0:      	j	0x200132f2 <core::mem::maybe_uninit::MaybeUninit<T>::zeroed::hba01e001abd461d4+0x10>
200132f2:      	addi	a0, sp, 4
200132f4:      	sw	a0, 16(sp)
200132f6:      	li	a1, 0
200132f8:      	sb	a1, 23(sp)
200132fc:      	li	a2, 1
200132fe:      	sw	a2, 24(sp)
20013300:      	auipc	ra, 0
20013304:      	jalr	18(ra)
20013308:      	j	0x2001330a <core::mem::maybe_uninit::MaybeUninit<T>::zeroed::hba01e001abd461d4+0x28>
2001330a:      	lw	a0, 4(sp)
2001330c:      	lw	ra, 28(sp)
2001330e:      	addi	sp, sp, 32
20013310:      	ret

20013312 <core::intrinsics::write_bytes::he0763fc2ee208fab>:
20013312:      	addi	sp, sp, -16
20013314:      	sw	ra, 12(sp)
20013316:      	sw	a0, 0(sp)
20013318:      	sb	a1, 7(sp)
2001331c:      	sw	a2, 8(sp)
2001331e:      	slli	a2, a2, 2
20013320:      	auipc	ra, 1
20013324:      	jalr	1716(ra)
20013328:      	j	0x2001332a <core::intrinsics::write_bytes::he0763fc2ee208fab+0x18>
2001332a:      	lw	ra, 12(sp)
2001332c:      	addi	sp, sp, 16
2001332e:      	ret

20013330 <riscv::register::mhartid::read::hbe966867a25df097>:
20013330:      	addi	sp, sp, -16
20013332:      	sw	ra, 12(sp)
20013334:      	auipc	ra, 0
20013338:      	jalr	20(ra)
2001333c:      	sw	a0, 8(sp)
2001333e:      	j	0x20013340 <riscv::register::mhartid::read::hbe966867a25df097+0x10>
20013340:      	lw	a0, 8(sp)
20013342:      	lw	ra, 12(sp)
20013344:      	addi	sp, sp, 16
20013346:      	ret

20013348 <riscv::register::mhartid::_read::hb394bfb5c6efbe37>:
20013348:      	addi	sp, sp, -16
2001334a:      	csrr	a0, mhartid
2001334e:      	sw	a0, 12(sp)
20013350:      	j	0x20013352 <riscv::register::mhartid::_read::hb394bfb5c6efbe37+0xa>
20013352:      	lw	a0, 12(sp)
20013354:      	addi	sp, sp, 16
20013356:      	ret

20013358 <riscv::asm::wfi::h93b28aac88667670>:
20013358:      	wfi	
2001335c:      	j	0x2001335e <riscv::asm::wfi::h93b28aac88667670+0x6>
2001335e:      	ret

20013360 <core::ptr::write_volatile::h16f55e3c83ffde37>:
20013360:      	addi	sp, sp, -16
20013362:      	sw	a0, 8(sp)
20013364:      	sw	a1, 12(sp)
20013366:      	sw	a1, 0(a0)
20013368:      	j	0x2001336a <core::ptr::write_volatile::h16f55e3c83ffde37+0xa>
2001336a:      	addi	sp, sp, 16
2001336c:      	ret

2001336e <core::ptr::read::h0280e1134080c605>:
2001336e:      	addi	sp, sp, -32
20013370:      	sw	a0, 4(sp)
20013372:      	sw	a0, 12(sp)
20013374:      	lw	a0, 24(sp)
20013376:      	sw	a0, 8(sp)
20013378:      	j	0x2001337a <core::ptr::read::h0280e1134080c605+0xc>
2001337a:      	addi	a0, sp, 8
2001337c:      	sw	a0, 16(sp)
2001337e:      	j	0x20013380 <core::ptr::read::h0280e1134080c605+0x12>
20013380:      	lw	a0, 4(sp)
20013382:      	lw	a0, 0(a0)
20013384:      	sw	a0, 0(sp)
20013386:      	sw	a0, 8(sp)
20013388:      	sw	a0, 20(sp)
2001338a:      	sw	a0, 28(sp)
2001338c:      	j	0x2001338e <core::ptr::read::h0280e1134080c605+0x20>
2001338e:      	lw	a0, 0(sp)
20013390:      	addi	sp, sp, 32
20013392:      	ret

20013394 <core::ptr::write::h229fd11b6145b9f2>:
20013394:      	addi	sp, sp, -16
20013396:      	sw	a1, 8(sp)
20013398:      	sw	a0, 12(sp)
2001339a:      	sw	a1, 0(a0)
2001339c:      	addi	sp, sp, 16
2001339e:      	ret

200133a0 <yarr::scheduler::start::he25a387ef72582e8>:
200133a0:      	addi	sp, sp, -80
200133a2:      	sw	ra, 76(sp)
200133a4:      	mv	a3, a2
200133a6:      	sb	a0, 55(sp)
200133aa:      	sw	a3, 60(sp)
200133ac:      	sw	a1, 56(sp)
200133ae:      	lui	a2, 524289
200133b2:      	sw	a3, -1380(a2)
200133b6:      	sw	a1, -1384(a2)
200133ba:      	lui	a1, 524289
200133be:      	sb	a0, -1392(a1)
200133c2:      	lui	a0, 524288
200133c6:      	mv	a0, a0
200133ca:      	lw	a1, 4(a0)
200133cc:      	li	a0, 0
200133ce:      	sw	a0, 24(sp)
200133d0:      	sw	a1, 28(sp)
200133d2:      	auipc	ra, 1
200133d6:      	jalr	-456(ra)
200133da:      	sw	a0, 16(sp)
200133dc:      	sw	a1, 20(sp)
200133de:      	j	0x200133e0 <yarr::scheduler::start::he25a387ef72582e8+0x40>
200133e0:      	lw	a0, 20(sp)
200133e2:      	lw	a1, 16(sp)
200133e4:      	sw	a1, 32(sp)
200133e6:      	sw	a0, 36(sp)
200133e8:      	j	0x200133ea <yarr::scheduler::start::he25a387ef72582e8+0x4a>
200133ea:      	addi	a0, sp, 32
200133ec:      	auipc	ra, 1
200133f0:      	jalr	-512(ra)
200133f4:      	sw	a0, 40(sp)
200133f6:      	sw	a1, 44(sp)
200133f8:      	j	0x200133fa <yarr::scheduler::start::he25a387ef72582e8+0x5a>
200133fa:      	lw	a0, 40(sp)
200133fc:      	li	a1, 0
200133fe:      	beq	a0, a1, 0x20013408 <yarr::scheduler::start::he25a387ef72582e8+0x68>
20013402:      	j	0x20013404 <yarr::scheduler::start::he25a387ef72582e8+0x64>
20013404:      	j	0x20013418 <yarr::scheduler::start::he25a387ef72582e8+0x78>
20013406:      	unimp	
20013408:      	auipc	ra, 0
2001340c:      	jalr	158(ra)
20013410:      	mv	a1, a0
20013412:      	sw	a1, 12(sp)
20013414:      	sw	a0, 72(sp)
20013416:      	j	0x20013462 <yarr::scheduler::start::he25a387ef72582e8+0xc2>
20013418:      	lw	a0, 44(sp)
2001341a:      	sw	a0, 4(sp)
2001341c:      	sw	a0, 68(sp)
2001341e:      	lui	a1, 524288
20013422:      	mv	a1, a1
20013426:      	lw	a1, 4(a1)
20013428:      	sw	a1, 8(sp)
2001342a:      	bgeu	a0, a1, 0x2001344c <yarr::scheduler::start::he25a387ef72582e8+0xac>
2001342e:      	j	0x20013430 <yarr::scheduler::start::he25a387ef72582e8+0x90>
20013430:      	lw	a1, 4(sp)
20013432:      	lui	a0, 524288
20013436:      	lw	a0, 0(a0)
2001343a:      	li	a2, 28
2001343c:      	mul	a1, a1, a2
20013440:      	add	a0, a0, a1
20013442:      	auipc	ra, 0
20013446:      	jalr	-1336(ra)
2001344a:      	j	0x200133ea <yarr::scheduler::start::he25a387ef72582e8+0x4a>
2001344c:      	lw	a1, 8(sp)
2001344e:      	lw	a0, 4(sp)
20013450:      	lui	a2, 131094
20013454:      	addi	a2, a2, -1724
20013458:      	auipc	ra, 1
2001345c:      	jalr	-184(ra)
20013460:      	unimp	
20013462:      	li	a0, 4
20013464:      	sb	a0, 54(sp)
20013468:      	auipc	ra, 1
2001346c:      	jalr	-2028(ra)
20013470:      	j	0x20013472 <yarr::scheduler::start::he25a387ef72582e8+0xd2>
20013472:      	lui	a0, 524289
20013476:      	lw	a1, -1380(a0)
2001347a:      	lw	a0, -1384(a0)
2001347e:      	auipc	ra, 0
20013482:      	jalr	-1556(ra)
20013486:      	j	0x20013488 <yarr::scheduler::start::he25a387ef72582e8+0xe8>
20013488:      	lw	a1, 12(sp)
2001348a:      	lw	a0, 0(a1)
2001348c:      	lw	a1, 4(a1)
2001348e:      	auipc	ra, 1
20013492:      	jalr	-1686(ra)
20013496:      	sw	a0, 0(sp)
20013498:      	j	0x2001349a <yarr::scheduler::start::he25a387ef72582e8+0xfa>
2001349a:      	lw	a0, 0(sp)
2001349c:      	auipc	ra, 0
200134a0:      	jalr	720(ra)
200134a4:      	unimp	

200134a6 <yarr::scheduler::schedule::hf864c959fb8f66a9>:
200134a6:      	addi	sp, sp, -64
200134a8:      	sw	ra, 60(sp)
200134aa:      	li	a0, 4
200134ac:      	sb	a0, 55(sp)
200134b0:      	auipc	ra, 0
200134b4:      	jalr	1996(ra)
200134b8:      	j	0x200134ba <yarr::scheduler::schedule::hf864c959fb8f66a9+0x14>
200134ba:      	lui	a0, 524289
200134be:      	lbu	a0, -1392(a0)
200134c2:      	andi	a0, a0, 1
200134c4:      	li	a1, 0
200134c6:      	beq	a0, a1, 0x200134d0 <yarr::scheduler::schedule::hf864c959fb8f66a9+0x2a>
200134ca:      	j	0x200134cc <yarr::scheduler::schedule::hf864c959fb8f66a9+0x26>
200134cc:      	j	0x200134ec <yarr::scheduler::schedule::hf864c959fb8f66a9+0x46>
200134ce:      	unimp	
200134d0:      	lui	a0, 524289
200134d4:      	lw	a0, -1388(a0)
200134d8:      	sw	a0, 40(sp)
200134da:      	lui	a1, 524288
200134de:      	mv	a1, a1
200134e2:      	lw	a1, 4(a1)
200134e4:      	sw	a1, 44(sp)
200134e6:      	bltu	a0, a1, 0x2001354e <yarr::scheduler::schedule::hf864c959fb8f66a9+0xa8>
200134ea:      	j	0x20013578 <yarr::scheduler::schedule::hf864c959fb8f66a9+0xd2>
200134ec:      	lui	a1, 524288
200134f0:      	lw	a0, 0(a1)
200134f4:      	mv	a1, a1
200134f8:      	lw	a1, 4(a1)
200134fa:      	auipc	ra, 0
200134fe:      	jalr	1854(ra)
20013502:      	sw	a0, 32(sp)
20013504:      	sw	a1, 36(sp)
20013506:      	j	0x20013508 <yarr::scheduler::schedule::hf864c959fb8f66a9+0x62>
20013508:      	lw	a1, 36(sp)
2001350a:      	lw	a0, 32(sp)
2001350c:      	auipc	ra, 0
20013510:      	jalr	870(ra)
20013514:      	sw	a0, 24(sp)
20013516:      	sw	a1, 28(sp)
20013518:      	j	0x2001351a <yarr::scheduler::schedule::hf864c959fb8f66a9+0x74>
2001351a:      	lw	a1, 28(sp)
2001351c:      	lw	a0, 24(sp)
2001351e:      	auipc	ra, 0
20013522:      	jalr	1386(ra)
20013526:      	sw	a0, 20(sp)
20013528:      	j	0x2001352a <yarr::scheduler::schedule::hf864c959fb8f66a9+0x84>
2001352a:      	lw	a0, 20(sp)
2001352c:      	lui	a1, 131094
20013530:      	addi	a1, a1, -1708
20013534:      	auipc	ra, 1
20013538:      	jalr	-1488(ra)
2001353c:      	sw	a0, 16(sp)
2001353e:      	j	0x20013540 <yarr::scheduler::schedule::hf864c959fb8f66a9+0x9a>
20013540:      	lw	a0, 16(sp)
20013542:      	sw	a0, 48(sp)
20013544:      	j	0x20013546 <yarr::scheduler::schedule::hf864c959fb8f66a9+0xa0>
20013546:      	lw	a0, 48(sp)
20013548:      	lw	ra, 60(sp)
2001354a:      	addi	sp, sp, 64
2001354c:      	ret
2001354e:      	lw	a1, 40(sp)
20013550:      	lui	a0, 524288
20013554:      	lw	a0, 0(a0)
20013558:      	li	a2, 28
2001355a:      	mul	a1, a1, a2
2001355e:      	add	a0, a0, a1
20013560:      	sw	a0, 8(sp)
20013562:      	sw	a0, 56(sp)
20013564:      	lui	a0, 524289
20013568:      	lw	a1, -1388(a0)
2001356c:      	addi	a0, a1, 1
20013570:      	sw	a0, 12(sp)
20013572:      	bltu	a0, a1, 0x200135a4 <yarr::scheduler::schedule::hf864c959fb8f66a9+0xfe>
20013576:      	j	0x2001358e <yarr::scheduler::schedule::hf864c959fb8f66a9+0xe8>
20013578:      	lw	a1, 44(sp)
2001357a:      	lw	a0, 40(sp)
2001357c:      	lui	a2, 131094
20013580:      	addi	a2, a2, -1692
20013584:      	auipc	ra, 1
20013588:      	jalr	-484(ra)
2001358c:      	unimp	
2001358e:      	lui	a0, 524288
20013592:      	mv	a0, a0
20013596:      	lw	a0, 4(a0)
20013598:      	addi	a1, a0, -1
2001359c:      	sw	a1, 4(sp)
2001359e:      	bltu	a0, a1, 0x200135ca <yarr::scheduler::schedule::hf864c959fb8f66a9+0x124>
200135a2:      	j	0x200135c0 <yarr::scheduler::schedule::hf864c959fb8f66a9+0x11a>
200135a4:      	lui	a0, 131094
200135a8:      	addi	a0, a0, -1648
200135ac:      	lui	a1, 131094
200135b0:      	addi	a2, a1, -1676
200135b4:      	li	a1, 28
200135b6:      	auipc	ra, 1
200135ba:      	jalr	-578(ra)
200135be:      	unimp	
200135c0:      	lw	a0, 4(sp)
200135c2:      	li	a1, 0
200135c4:      	beq	a0, a1, 0x200135fe <yarr::scheduler::schedule::hf864c959fb8f66a9+0x158>
200135c8:      	j	0x200135e8 <yarr::scheduler::schedule::hf864c959fb8f66a9+0x142>
200135ca:      	lui	a0, 131094
200135ce:      	addi	a0, a0, -1600
200135d2:      	lui	a1, 131094
200135d6:      	addi	a2, a1, -1620
200135da:      	li	a1, 33
200135de:      	auipc	ra, 1
200135e2:      	jalr	-618(ra)
200135e6:      	unimp	
200135e8:      	lw	a0, 8(sp)
200135ea:      	lw	a1, 12(sp)
200135ec:      	lw	a2, 4(sp)
200135ee:      	remu	a1, a1, a2
200135f2:      	lui	a2, 524289
200135f6:      	sw	a1, -1388(a2)
200135fa:      	sw	a0, 48(sp)
200135fc:      	j	0x20013546 <yarr::scheduler::schedule::hf864c959fb8f66a9+0xa0>
200135fe:      	lui	a0, 131094
20013602:      	addi	a0, a0, -1552
20013606:      	lui	a1, 131094
2001360a:      	addi	a2, a1, -1676
2001360e:      	li	a1, 57
20013612:      	auipc	ra, 1
20013616:      	jalr	-670(ra)
2001361a:      	unimp	
2001361c:      	unimp	
2001361e:      	unimp	

20013620 <yarr_trap_vec>:
20013620:      	csrrw	t6, mscratch, t6
20013624:      	sw	ra, 0(t6)
20013628:      	sw	sp, 4(t6)
2001362c:      	sw	gp, 8(t6)
20013630:      	sw	tp, 12(t6)
20013634:      	sw	t0, 16(t6)
20013638:      	sw	t1, 20(t6)
2001363c:      	sw	t2, 24(t6)
20013640:      	sw	s0, 28(t6)
20013644:      	sw	s1, 32(t6)
20013648:      	sw	a0, 36(t6)
2001364c:      	sw	a1, 40(t6)
20013650:      	sw	a2, 44(t6)
20013654:      	sw	a3, 48(t6)
20013658:      	sw	a4, 52(t6)
2001365c:      	sw	a5, 56(t6)
20013660:      	sw	a6, 60(t6)
20013664:      	sw	a7, 64(t6)
20013668:      	sw	s2, 68(t6)
2001366c:      	sw	s3, 72(t6)
20013670:      	sw	s4, 76(t6)
20013674:      	sw	s5, 80(t6)
20013678:      	sw	s6, 84(t6)
2001367c:      	sw	s7, 88(t6)
20013680:      	sw	s8, 92(t6)
20013684:      	sw	s9, 96(t6)
20013688:      	sw	s10, 100(t6)
2001368c:      	sw	s11, 104(t6)
20013690:      	sw	t3, 108(t6)
20013694:      	sw	t4, 112(t6)
20013698:      	sw	t5, 116(t6)
2001369c:      	csrr	t5, mscratch
200136a0:      	sw	t5, 120(t6)
200136a4:      	csrr	t5, mstatus
200136a8:      	sw	t5, 124(t6)
200136ac:      	csrr	t5, mepc
200136b0:      	sw	t5, 128(t6)
200136b4:      	csrw	mscratch, t6
200136b8:      	csrr	a0, mcause
200136bc:      	csrr	a1, mtval
200136c0:      	csrr	a2, mhartid
200136c4:      	csrr	a3, mstatus
200136c8:      	csrr	a4, mscratch
200136cc:      	auipc	ra, 1048575
200136d0:      	jalr	1570(ra)

200136d4 <yarr_restore_context>:
200136d4:      	csrr	a0, mscratch
200136d8:      	lw	t0, 128(a0)
200136dc:      	csrw	mepc, t0
200136e0:      	lw	t0, 124(a0)
200136e4:      	csrw	mstatus, t0
200136e8:      	lw	ra, 0(a0)
200136ec:      	lw	sp, 4(a0)
200136f0:      	lw	gp, 8(a0)
200136f4:      	lw	tp, 12(a0)
200136f8:      	lw	t0, 16(a0)
200136fc:      	lw	t1, 20(a0)
20013700:      	lw	t2, 24(a0)
20013704:      	lw	s0, 28(a0)
20013708:      	lw	s1, 32(a0)
2001370c:      	lw	a1, 40(a0)
20013710:      	lw	a2, 44(a0)
20013714:      	lw	a3, 48(a0)
20013718:      	lw	a4, 52(a0)
2001371c:      	lw	a5, 56(a0)
20013720:      	lw	a6, 60(a0)
20013724:      	lw	a7, 64(a0)
20013728:      	lw	s2, 68(a0)
2001372c:      	lw	s3, 72(a0)
20013730:      	lw	s4, 76(a0)
20013734:      	lw	s5, 80(a0)
20013738:      	lw	s6, 84(a0)
2001373c:      	lw	s7, 88(a0)
20013740:      	lw	s8, 92(a0)
20013744:      	lw	s9, 96(a0)
20013748:      	lw	s10, 100(a0)
2001374c:      	lw	s11, 104(a0)
20013750:      	lw	t3, 108(a0)
20013754:      	lw	t4, 112(a0)
20013758:      	lw	t5, 116(a0)
2001375c:      	lw	t6, 120(a0)
20013760:      	csrw	mscratch, a0
20013764:      	lw	a0, 36(a0)
20013768:      	mret	

2001376c <yarr_start_first_task>:
2001376c:      	li	t0, 128
20013770:      	csrs	mie, t0
20013774:      	csrsi	mstatus, 8
20013778:      	csrw	mscratch, a0

2001377c <.Lpcrel_hi0>:
2001377c:      	auipc	t0, 0
20013780:      	addi	t0, t0, -348
20013784:      	csrw	mtvec, t0
20013788:      	lw	ra, 128(a0)
2001378c:      	lw	t0, 124(a0)
20013790:      	csrw	mstatus, t0
20013794:      	lw	sp, 4(a0)
20013798:      	lw	gp, 8(a0)
2001379c:      	lw	tp, 12(a0)
200137a0:      	lw	t0, 16(a0)
200137a4:      	lw	t1, 20(a0)
200137a8:      	lw	t2, 24(a0)
200137ac:      	lw	s0, 28(a0)
200137b0:      	lw	s1, 32(a0)
200137b4:      	lw	a1, 40(a0)
200137b8:      	lw	a2, 44(a0)
200137bc:      	lw	a3, 48(a0)
200137c0:      	lw	a4, 52(a0)
200137c4:      	lw	a5, 56(a0)
200137c8:      	lw	a6, 60(a0)
200137cc:      	lw	a7, 64(a0)
200137d0:      	lw	s2, 68(a0)
200137d4:      	lw	s3, 72(a0)
200137d8:      	lw	s4, 76(a0)
200137dc:      	lw	s5, 80(a0)
200137e0:      	lw	s6, 84(a0)
200137e4:      	lw	s7, 88(a0)
200137e8:      	lw	s8, 92(a0)
200137ec:      	lw	s9, 96(a0)
200137f0:      	lw	s10, 100(a0)
200137f4:      	lw	s11, 104(a0)
200137f8:      	lw	t3, 108(a0)
200137fc:      	lw	t4, 112(a0)
20013800:      	lw	t5, 116(a0)
20013804:      	lw	t6, 120(a0)
20013808:      	lw	a0, 36(a0)
2001380c:      	ret

20013810 <core::iter::traits::iterator::Iterator::fold::h6e66315aac4ef5b0>:
20013810:      	addi	sp, sp, -80
20013812:      	sw	ra, 76(sp)
20013814:      	sw	a0, 16(sp)
20013816:      	sw	a1, 20(sp)
20013818:      	sw	a2, 64(sp)
2001381a:      	sw	a3, 68(sp)
2001381c:      	sw	a2, 32(sp)
2001381e:      	sw	a3, 36(sp)
20013820:      	j	0x20013822 <core::iter::traits::iterator::Iterator::fold::h6e66315aac4ef5b0+0x12>
20013822:      	addi	a0, sp, 16
20013824:      	auipc	ra, 0
20013828:      	jalr	334(ra)
2001382c:      	sw	a0, 44(sp)
2001382e:      	j	0x20013830 <core::iter::traits::iterator::Iterator::fold::h6e66315aac4ef5b0+0x20>
20013830:      	lw	a0, 44(sp)
20013832:      	li	a1, 0
20013834:      	beq	a0, a1, 0x20013858 <core::iter::traits::iterator::Iterator::fold::h6e66315aac4ef5b0+0x48>
20013838:      	j	0x2001383a <core::iter::traits::iterator::Iterator::fold::h6e66315aac4ef5b0+0x2a>
2001383a:      	lw	a3, 44(sp)
2001383c:      	sw	a3, 72(sp)
2001383e:      	lw	a1, 32(sp)
20013840:      	lw	a2, 36(sp)
20013842:      	sw	a1, 48(sp)
20013844:      	sw	a2, 52(sp)
20013846:      	sw	a3, 56(sp)
20013848:      	addi	a0, sp, 24
2001384a:      	auipc	ra, 0
2001384e:      	jalr	752(ra)
20013852:      	sw	a0, 8(sp)
20013854:      	sw	a1, 12(sp)
20013856:      	j	0x20013868 <core::iter::traits::iterator::Iterator::fold::h6e66315aac4ef5b0+0x58>
20013858:      	j	0x2001385a <core::iter::traits::iterator::Iterator::fold::h6e66315aac4ef5b0+0x4a>
2001385a:      	j	0x2001385c <core::iter::traits::iterator::Iterator::fold::h6e66315aac4ef5b0+0x4c>
2001385c:      	j	0x2001385e <core::iter::traits::iterator::Iterator::fold::h6e66315aac4ef5b0+0x4e>
2001385e:      	lw	a0, 32(sp)
20013860:      	lw	a1, 36(sp)
20013862:      	lw	ra, 76(sp)
20013864:      	addi	sp, sp, 80
20013866:      	ret
20013868:      	lw	a0, 12(sp)
2001386a:      	lw	a1, 8(sp)
2001386c:      	sw	a1, 32(sp)
2001386e:      	sw	a0, 36(sp)
20013870:      	j	0x20013822 <core::iter::traits::iterator::Iterator::fold::h6e66315aac4ef5b0+0x12>

20013872 <core::iter::traits::iterator::Iterator::filter::h2dc3f72e5952ca37>:
20013872:      	addi	sp, sp, -32
20013874:      	sw	ra, 28(sp)
20013876:      	sw	a0, 16(sp)
20013878:      	sw	a1, 20(sp)
2001387a:      	auipc	ra, 0
2001387e:      	jalr	826(ra)
20013882:      	sw	a0, 8(sp)
20013884:      	sw	a1, 12(sp)
20013886:      	j	0x20013888 <core::iter::traits::iterator::Iterator::filter::h2dc3f72e5952ca37+0x16>
20013888:      	lw	a1, 12(sp)
2001388a:      	lw	a0, 8(sp)
2001388c:      	lw	ra, 28(sp)
2001388e:      	addi	sp, sp, 32
20013890:      	ret

20013892 <core::slice::iter::Iter<T>::new::h197263b770bfcf85>:
20013892:      	addi	sp, sp, -96
20013894:      	sw	ra, 92(sp)
20013896:      	sw	a1, 16(sp)
20013898:      	sw	a0, 40(sp)
2001389a:      	sw	a1, 44(sp)
2001389c:      	auipc	ra, 0
200138a0:      	jalr	956(ra)
200138a4:      	mv	a1, a0
200138a6:      	sw	a1, 20(sp)
200138a8:      	sw	a0, 48(sp)
200138aa:      	j	0x200138ac <core::slice::iter::Iter<T>::new::h197263b770bfcf85+0x1a>
200138ac:      	lw	a0, 20(sp)
200138ae:      	auipc	ra, 0
200138b2:      	jalr	856(ra)
200138b6:      	j	0x200138b8 <core::slice::iter::Iter<T>::new::h197263b770bfcf85+0x26>
200138b8:      	j	0x200138ba <core::slice::iter::Iter<T>::new::h197263b770bfcf85+0x28>
200138ba:      	j	0x200138bc <core::slice::iter::Iter<T>::new::h197263b770bfcf85+0x2a>
200138bc:      	li	a1, 0
200138be:      	li	a0, 1
200138c0:      	bne	a0, a1, 0x200138da <core::slice::iter::Iter<T>::new::h197263b770bfcf85+0x48>
200138c4:      	j	0x200138c6 <core::slice::iter::Iter<T>::new::h197263b770bfcf85+0x34>
200138c6:      	lw	a0, 20(sp)
200138c8:      	lw	a1, 16(sp)
200138ca:      	sw	a0, 52(sp)
200138cc:      	sw	a1, 56(sp)
200138ce:      	sw	a0, 60(sp)
200138d0:      	sw	a1, 64(sp)
200138d2:      	add	a0, a0, a1
200138d4:      	sw	a0, 12(sp)
200138d6:      	sw	a0, 68(sp)
200138d8:      	j	0x20013904 <core::slice::iter::Iter<T>::new::h197263b770bfcf85+0x72>
200138da:      	lw	a0, 20(sp)
200138dc:      	lw	a1, 16(sp)
200138de:      	sw	a0, 72(sp)
200138e0:      	sw	a1, 76(sp)
200138e2:      	sw	a0, 80(sp)
200138e4:      	sw	a1, 84(sp)
200138e6:      	li	a2, 28
200138e8:      	mul	a1, a1, a2
200138ec:      	add	a0, a0, a1
200138ee:      	sw	a0, 88(sp)
200138f0:      	sw	a0, 36(sp)
200138f2:      	j	0x200138f4 <core::slice::iter::Iter<T>::new::h197263b770bfcf85+0x62>
200138f4:      	j	0x200138f6 <core::slice::iter::Iter<T>::new::h197263b770bfcf85+0x64>
200138f6:      	lw	a0, 20(sp)
200138f8:      	auipc	ra, 0
200138fc:      	jalr	714(ra)
20013900:      	sw	a0, 8(sp)
20013902:      	j	0x2001390a <core::slice::iter::Iter<T>::new::h197263b770bfcf85+0x78>
20013904:      	lw	a0, 12(sp)
20013906:      	sw	a0, 36(sp)
20013908:      	j	0x200138f6 <core::slice::iter::Iter<T>::new::h197263b770bfcf85+0x64>
2001390a:      	lw	a0, 8(sp)
2001390c:      	lw	a1, 36(sp)
2001390e:      	sw	a0, 24(sp)
20013910:      	sw	a1, 28(sp)
20013912:      	lw	ra, 92(sp)
20013914:      	addi	sp, sp, 96
20013916:      	ret

20013918 <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::find::hcae9f2ccbcf07975>:
20013918:      	addi	sp, sp, -48
2001391a:      	sw	ra, 44(sp)
2001391c:      	sw	a0, 16(sp)
2001391e:      	sw	a1, 20(sp)
20013920:      	sw	a0, 40(sp)
20013922:      	j	0x20013924 <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::find::hcae9f2ccbcf07975+0xc>
20013924:      	lw	a0, 16(sp)
20013926:      	auipc	ra, 0
2001392a:      	jalr	76(ra)
2001392e:      	sw	a0, 28(sp)
20013930:      	j	0x20013932 <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::find::hcae9f2ccbcf07975+0x1a>
20013932:      	lw	a0, 28(sp)
20013934:      	li	a1, 0
20013936:      	beq	a0, a1, 0x20013952 <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::find::hcae9f2ccbcf07975+0x3a>
2001393a:      	j	0x2001393c <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::find::hcae9f2ccbcf07975+0x24>
2001393c:      	lw	a0, 28(sp)
2001393e:      	sw	a0, 32(sp)
20013940:      	addi	a1, sp, 32
20013942:      	sw	a1, 36(sp)
20013944:      	addi	a0, sp, 20
20013946:      	auipc	ra, 0
2001394a:      	jalr	1118(ra)
2001394e:      	sw	a0, 12(sp)
20013950:      	j	0x20013960 <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::find::hcae9f2ccbcf07975+0x48>
20013952:      	li	a0, 0
20013954:      	sw	a0, 24(sp)
20013956:      	j	0x20013958 <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::find::hcae9f2ccbcf07975+0x40>
20013958:      	lw	a0, 24(sp)
2001395a:      	lw	ra, 44(sp)
2001395c:      	addi	sp, sp, 48
2001395e:      	ret
20013960:      	lw	a0, 12(sp)
20013962:      	li	a1, 0
20013964:      	bne	a0, a1, 0x2001396c <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::find::hcae9f2ccbcf07975+0x54>
20013968:      	j	0x2001396a <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::find::hcae9f2ccbcf07975+0x52>
2001396a:      	j	0x20013924 <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::find::hcae9f2ccbcf07975+0xc>
2001396c:      	lw	a0, 32(sp)
2001396e:      	sw	a0, 24(sp)
20013970:      	j	0x20013958 <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::find::hcae9f2ccbcf07975+0x40>

20013972 <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next::h21964ba9abb56b65>:
20013972:      	addi	sp, sp, -64
20013974:      	sw	ra, 60(sp)
20013976:      	sw	a0, 16(sp)
20013978:      	sw	a0, 28(sp)
2001397a:      	lw	a0, 0(a0)
2001397c:      	auipc	ra, 0
20013980:      	jalr	592(ra)
20013984:      	sw	a0, 20(sp)
20013986:      	j	0x20013988 <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next::h21964ba9abb56b65+0x16>
20013988:      	lw	a0, 20(sp)
2001398a:      	auipc	ra, 0
2001398e:      	jalr	586(ra)
20013992:      	j	0x20013994 <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next::h21964ba9abb56b65+0x22>
20013994:      	j	0x20013996 <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next::h21964ba9abb56b65+0x24>
20013996:      	j	0x20013998 <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next::h21964ba9abb56b65+0x26>
20013998:      	li	a1, 0
2001399a:      	li	a0, 1
2001399c:      	bne	a0, a1, 0x200139a4 <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next::h21964ba9abb56b65+0x32>
200139a0:      	j	0x200139a2 <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next::h21964ba9abb56b65+0x30>
200139a2:      	j	0x200139b6 <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next::h21964ba9abb56b65+0x44>
200139a4:      	lw	a0, 16(sp)
200139a6:      	lw	a0, 4(a0)
200139a8:      	auipc	ra, 0
200139ac:      	jalr	606(ra)
200139b0:      	j	0x200139b2 <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next::h21964ba9abb56b65+0x40>
200139b2:      	j	0x200139b4 <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next::h21964ba9abb56b65+0x42>
200139b4:      	j	0x200139b6 <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next::h21964ba9abb56b65+0x44>
200139b6:      	lw	a0, 16(sp)
200139b8:      	lw	a0, 0(a0)
200139ba:      	auipc	ra, 0
200139be:      	jalr	530(ra)
200139c2:      	sw	a0, 12(sp)
200139c4:      	j	0x200139c6 <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next::h21964ba9abb56b65+0x54>
200139c6:      	lw	a0, 12(sp)
200139c8:      	lw	a1, 16(sp)
200139ca:      	lw	a1, 4(a1)
200139cc:      	beq	a0, a1, 0x20013a18 <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next::h21964ba9abb56b65+0xa6>
200139d0:      	j	0x200139d2 <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next::h21964ba9abb56b65+0x60>
200139d2:      	lw	a0, 16(sp)
200139d4:      	sw	a0, 36(sp)
200139d6:      	li	a1, 1
200139d8:      	sw	a1, 0(sp)
200139da:      	sw	a1, 40(sp)
200139dc:      	lw	a0, 0(a0)
200139de:      	auipc	ra, 0
200139e2:      	jalr	494(ra)
200139e6:      	mv	a1, a0
200139e8:      	lw	a0, 16(sp)
200139ea:      	sw	a1, 4(sp)
200139ec:      	sw	a1, 44(sp)
200139ee:      	lw	a0, 0(a0)
200139f0:      	auipc	ra, 0
200139f4:      	jalr	476(ra)
200139f8:      	lw	a1, 0(sp)
200139fa:      	sw	a0, 48(sp)
200139fc:      	sw	a1, 52(sp)
200139fe:      	addi	a0, a0, 28
20013a00:      	sw	a0, 56(sp)
20013a02:      	auipc	ra, 0
20013a06:      	jalr	448(ra)
20013a0a:      	lw	a2, 16(sp)
20013a0c:      	mv	a1, a0
20013a0e:      	lw	a0, 4(sp)
20013a10:      	sw	a1, 0(a2)
20013a12:      	sw	a0, 32(sp)
20013a14:      	sw	a0, 8(sp)
20013a16:      	j	0x20013a26 <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next::h21964ba9abb56b65+0xb4>
20013a18:      	li	a0, 0
20013a1a:      	sw	a0, 24(sp)
20013a1c:      	j	0x20013a1e <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next::h21964ba9abb56b65+0xac>
20013a1e:      	lw	a0, 24(sp)
20013a20:      	lw	ra, 60(sp)
20013a22:      	addi	sp, sp, 64
20013a24:      	ret
20013a26:      	lw	a0, 8(sp)
20013a28:      	sw	a0, 24(sp)
20013a2a:      	j	0x20013a1e <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next::h21964ba9abb56b65+0xac>

20013a2c <<core::iter::adapters::filter::Filter<I,P> as core::iter::traits::iterator::Iterator>::fold::hcdfa1be5108b6c99>:
20013a2c:      	addi	sp, sp, -48
20013a2e:      	sw	ra, 44(sp)
20013a30:      	sw	a3, 8(sp)
20013a32:      	sw	a2, 12(sp)
20013a34:      	sw	a1, 16(sp)
20013a36:      	sw	a0, 20(sp)
20013a38:      	sw	a0, 24(sp)
20013a3a:      	sw	a1, 28(sp)
20013a3c:      	sw	a2, 32(sp)
20013a3e:      	sw	a3, 36(sp)
20013a40:      	auipc	ra, 0
20013a44:      	jalr	244(ra)
20013a48:      	j	0x20013a4a <<core::iter::adapters::filter::Filter<I,P> as core::iter::traits::iterator::Iterator>::fold::hcdfa1be5108b6c99+0x1e>
20013a4a:      	lw	a3, 8(sp)
20013a4c:      	lw	a2, 12(sp)
20013a4e:      	lw	a1, 16(sp)
20013a50:      	lw	a0, 20(sp)
20013a52:      	auipc	ra, 0
20013a56:      	jalr	-578(ra)
20013a5a:      	sw	a0, 0(sp)
20013a5c:      	sw	a1, 4(sp)
20013a5e:      	j	0x20013a60 <<core::iter::adapters::filter::Filter<I,P> as core::iter::traits::iterator::Iterator>::fold::hcdfa1be5108b6c99+0x34>
20013a60:      	lw	a1, 4(sp)
20013a62:      	lw	a0, 0(sp)
20013a64:      	lw	ra, 44(sp)
20013a66:      	addi	sp, sp, 48
20013a68:      	ret

20013a6a <<core::iter::adapters::filter::Filter<I,P> as core::iter::traits::iterator::Iterator>::next::h3f67da93ae3d80d4>:
20013a6a:      	addi	sp, sp, -16
20013a6c:      	sw	ra, 12(sp)
20013a6e:      	mv	a1, a0
20013a70:      	sw	a1, 8(sp)
20013a72:      	mv	a0, a1
20013a74:      	auipc	ra, 0
20013a78:      	jalr	-348(ra)
20013a7c:      	sw	a0, 4(sp)
20013a7e:      	j	0x20013a80 <<core::iter::adapters::filter::Filter<I,P> as core::iter::traits::iterator::Iterator>::next::h3f67da93ae3d80d4+0x16>
20013a80:      	lw	a0, 4(sp)
20013a82:      	lw	ra, 12(sp)
20013a84:      	addi	sp, sp, 16
20013a86:      	ret

20013a88 <core::iter::traits::iterator::Iterator::max_by_key::hc8614c651504e722>:
20013a88:      	addi	sp, sp, -96
20013a8a:      	sw	ra, 92(sp)
20013a8c:      	sw	a1, 28(sp)
20013a8e:      	sw	a0, 32(sp)
20013a90:      	sw	a0, 56(sp)
20013a92:      	sw	a1, 60(sp)
20013a94:      	auipc	ra, 0
20013a98:      	jalr	940(ra)
20013a9c:      	j	0x20013a9e <core::iter::traits::iterator::Iterator::max_by_key::hc8614c651504e722+0x16>
20013a9e:      	lw	a1, 28(sp)
20013aa0:      	lw	a0, 32(sp)
20013aa2:      	auipc	ra, 0
20013aa6:      	jalr	114(ra)
20013aaa:      	sw	a0, 20(sp)
20013aac:      	sw	a1, 24(sp)
20013aae:      	j	0x20013ab0 <core::iter::traits::iterator::Iterator::max_by_key::hc8614c651504e722+0x28>
20013ab0:      	lw	a1, 24(sp)
20013ab2:      	lw	a0, 20(sp)
20013ab4:      	auipc	ra, 0
20013ab8:      	jalr	1524(ra)
20013abc:      	sw	a0, 12(sp)
20013abe:      	sw	a1, 16(sp)
20013ac0:      	j	0x20013ac2 <core::iter::traits::iterator::Iterator::max_by_key::hc8614c651504e722+0x3a>
20013ac2:      	lw	a1, 16(sp)
20013ac4:      	lw	a0, 12(sp)
20013ac6:      	auipc	ra, 0
20013aca:      	jalr	1322(ra)
20013ace:      	sw	a0, 48(sp)
20013ad0:      	sw	a1, 52(sp)
20013ad2:      	j	0x20013ad4 <core::iter::traits::iterator::Iterator::max_by_key::hc8614c651504e722+0x4c>
20013ad4:      	lw	a0, 52(sp)
20013ad6:      	seqz	a1, a0
20013ada:      	li	a1, 0
20013adc:      	bne	a0, a1, 0x20013ae6 <core::iter::traits::iterator::Iterator::max_by_key::hc8614c651504e722+0x5e>
20013ae0:      	j	0x20013ae2 <core::iter::traits::iterator::Iterator::max_by_key::hc8614c651504e722+0x5a>
20013ae2:      	j	0x20013af8 <core::iter::traits::iterator::Iterator::max_by_key::hc8614c651504e722+0x70>
20013ae4:      	unimp	
20013ae6:      	lw	a1, 48(sp)
20013ae8:      	lw	a0, 52(sp)
20013aea:      	sw	a0, 8(sp)
20013aec:      	sw	a1, 80(sp)
20013aee:      	sw	a0, 84(sp)
20013af0:      	sw	a1, 40(sp)
20013af2:      	sw	a0, 44(sp)
20013af4:      	sw	a0, 88(sp)
20013af6:      	j	0x20013b0e <core::iter::traits::iterator::Iterator::max_by_key::hc8614c651504e722+0x86>
20013af8:      	auipc	ra, 0
20013afc:      	jalr	1334(ra)
20013b00:      	sw	a0, 36(sp)
20013b02:      	j	0x20013b04 <core::iter::traits::iterator::Iterator::max_by_key::hc8614c651504e722+0x7c>
20013b04:      	j	0x20013b06 <core::iter::traits::iterator::Iterator::max_by_key::hc8614c651504e722+0x7e>
20013b06:      	lw	a0, 36(sp)
20013b08:      	lw	ra, 92(sp)
20013b0a:      	addi	sp, sp, 96
20013b0c:      	ret
20013b0e:      	lw	a0, 8(sp)
20013b10:      	sw	a0, 36(sp)
20013b12:      	j	0x20013b06 <core::iter::traits::iterator::Iterator::max_by_key::hc8614c651504e722+0x7e>

20013b14 <core::iter::traits::iterator::Iterator::map::h3bb030b2dab71080>:
20013b14:      	addi	sp, sp, -32
20013b16:      	sw	ra, 28(sp)
20013b18:      	sw	a0, 16(sp)
20013b1a:      	sw	a1, 20(sp)
20013b1c:      	auipc	ra, 0
20013b20:      	jalr	1598(ra)
20013b24:      	sw	a0, 8(sp)
20013b26:      	sw	a1, 12(sp)
20013b28:      	j	0x20013b2a <core::iter::traits::iterator::Iterator::map::h3bb030b2dab71080+0x16>
20013b2a:      	lw	a1, 12(sp)
20013b2c:      	lw	a0, 8(sp)
20013b2e:      	lw	ra, 28(sp)
20013b30:      	addi	sp, sp, 32
20013b32:      	ret

20013b34 <core::iter::adapters::filter::filter_fold::h0cc7cce6f9261ba3>:
20013b34:      	addi	sp, sp, -32
20013b36:      	addi	sp, sp, 32
20013b38:      	ret

20013b3a <core::iter::adapters::filter::filter_fold::{{closure}}::h587b20a3356acc0f>:
20013b3a:      	addi	sp, sp, -80
20013b3c:      	sw	ra, 76(sp)
20013b3e:      	sw	a2, 4(sp)
20013b40:      	sw	a1, 8(sp)
20013b42:      	sw	a0, 12(sp)
20013b44:      	sw	a3, 20(sp)
20013b46:      	sw	a0, 60(sp)
20013b48:      	sw	a1, 64(sp)
20013b4a:      	sw	a2, 68(sp)
20013b4c:      	li	a1, 1
20013b4e:      	sb	a1, 59(sp)
20013b52:      	addi	a1, sp, 20
20013b54:      	sw	a1, 36(sp)
20013b56:      	auipc	ra, 0
20013b5a:      	jalr	620(ra)
20013b5e:      	sw	a0, 16(sp)
20013b60:      	j	0x20013b62 <core::iter::adapters::filter::filter_fold::{{closure}}::h587b20a3356acc0f+0x28>
20013b62:      	lw	a0, 16(sp)
20013b64:      	li	a1, 0
20013b66:      	bne	a0, a1, 0x20013b76 <core::iter::adapters::filter::filter_fold::{{closure}}::h587b20a3356acc0f+0x3c>
20013b6a:      	j	0x20013b6c <core::iter::adapters::filter::filter_fold::{{closure}}::h587b20a3356acc0f+0x32>
20013b6c:      	lw	a0, 4(sp)
20013b6e:      	lw	a1, 8(sp)
20013b70:      	sw	a1, 24(sp)
20013b72:      	sw	a0, 28(sp)
20013b74:      	j	0x20013b9a <core::iter::adapters::filter::filter_fold::{{closure}}::h587b20a3356acc0f+0x60>
20013b76:      	lw	a2, 4(sp)
20013b78:      	lw	a1, 8(sp)
20013b7a:      	lw	a0, 12(sp)
20013b7c:      	li	a3, 0
20013b7e:      	sb	a3, 59(sp)
20013b82:      	lw	a3, 20(sp)
20013b84:      	sw	a1, 40(sp)
20013b86:      	sw	a2, 44(sp)
20013b88:      	sw	a3, 48(sp)
20013b8a:      	auipc	ra, 0
20013b8e:      	jalr	1508(ra)
20013b92:      	sw	a0, 24(sp)
20013b94:      	sw	a1, 28(sp)
20013b96:      	j	0x20013b98 <core::iter::adapters::filter::filter_fold::{{closure}}::h587b20a3356acc0f+0x5e>
20013b98:      	j	0x20013b9a <core::iter::adapters::filter::filter_fold::{{closure}}::h587b20a3356acc0f+0x60>
20013b9a:      	lbu	a0, 59(sp)
20013b9e:      	andi	a0, a0, 1
20013ba0:      	li	a1, 0
20013ba2:      	bne	a0, a1, 0x20013bb2 <core::iter::adapters::filter::filter_fold::{{closure}}::h587b20a3356acc0f+0x78>
20013ba6:      	j	0x20013ba8 <core::iter::adapters::filter::filter_fold::{{closure}}::h587b20a3356acc0f+0x6e>
20013ba8:      	lw	a0, 24(sp)
20013baa:      	lw	a1, 28(sp)
20013bac:      	lw	ra, 76(sp)
20013bae:      	addi	sp, sp, 80
20013bb0:      	ret
20013bb2:      	j	0x20013ba8 <core::iter::adapters::filter::filter_fold::{{closure}}::h587b20a3356acc0f+0x6e>

20013bb4 <core::iter::adapters::filter::Filter<I,P>::new::hd42ec7fc87c3e540>:
20013bb4:      	addi	sp, sp, -32
20013bb6:      	sw	a0, 16(sp)
20013bb8:      	sw	a1, 20(sp)
20013bba:      	sw	a0, 8(sp)
20013bbc:      	sw	a1, 12(sp)
20013bbe:      	addi	sp, sp, 32
20013bc0:      	ret

20013bc2 <core::ptr::non_null::NonNull<T>::new_unchecked::h378f23435ba3cd18>:
20013bc2:      	addi	sp, sp, -16
20013bc4:      	sw	a0, 12(sp)
20013bc6:      	sw	a0, 8(sp)
20013bc8:      	addi	sp, sp, 16
20013bca:      	ret

20013bcc <core::ptr::non_null::NonNull<T>::as_ptr::h255e82fe0b0f301d>:
20013bcc:      	addi	sp, sp, -16
20013bce:      	sw	a0, 12(sp)
20013bd0:      	addi	sp, sp, 16
20013bd2:      	ret

20013bd4 <core::ptr::mut_ptr::<impl *mut T>::is_null::h9bc39f9f1e567736>:
20013bd4:      	addi	sp, sp, -32
20013bd6:      	sw	ra, 28(sp)
20013bd8:      	sw	a0, 16(sp)
20013bda:      	sw	a0, 8(sp)
20013bdc:      	li	a0, 0
20013bde:      	sw	a0, 20(sp)
20013be0:      	sw	a0, 24(sp)
20013be2:      	auipc	ra, 0
20013be6:      	jalr	522(ra)
20013bea:      	sw	a0, 12(sp)
20013bec:      	j	0x20013bee <core::ptr::mut_ptr::<impl *mut T>::is_null::h9bc39f9f1e567736+0x1a>
20013bee:      	lw	a1, 12(sp)
20013bf0:      	lw	a0, 8(sp)
20013bf2:      	auipc	ra, 0
20013bf6:      	jalr	112(ra)
20013bfa:      	sw	a0, 4(sp)
20013bfc:      	j	0x20013bfe <core::ptr::mut_ptr::<impl *mut T>::is_null::h9bc39f9f1e567736+0x2a>
20013bfe:      	lw	a0, 4(sp)
20013c00:      	lw	ra, 28(sp)
20013c02:      	addi	sp, sp, 32
20013c04:      	ret

20013c06 <core::ptr::const_ptr::<impl *const T>::is_null::h9ba8622aac142e4d>:
20013c06:      	addi	sp, sp, -32
20013c08:      	sw	ra, 28(sp)
20013c0a:      	sw	a0, 16(sp)
20013c0c:      	sw	a0, 8(sp)
20013c0e:      	li	a0, 0
20013c10:      	sw	a0, 20(sp)
20013c12:      	sw	a0, 24(sp)
20013c14:      	auipc	ra, 0
20013c18:      	jalr	460(ra)
20013c1c:      	sw	a0, 12(sp)
20013c1e:      	j	0x20013c20 <core::ptr::const_ptr::<impl *const T>::is_null::h9ba8622aac142e4d+0x1a>
20013c20:      	lw	a1, 12(sp)
20013c22:      	lw	a0, 8(sp)
20013c24:      	auipc	ra, 0
20013c28:      	jalr	358(ra)
20013c2c:      	sw	a0, 4(sp)
20013c2e:      	j	0x20013c30 <core::ptr::const_ptr::<impl *const T>::is_null::h9ba8622aac142e4d+0x2a>
20013c30:      	lw	a0, 4(sp)
20013c32:      	lw	ra, 28(sp)
20013c34:      	addi	sp, sp, 32
20013c36:      	ret

20013c38 <core::slice::<impl [T]>::iter::hc4191f65db25e34e>:
20013c38:      	addi	sp, sp, -32
20013c3a:      	sw	ra, 28(sp)
20013c3c:      	sw	a0, 16(sp)
20013c3e:      	sw	a1, 20(sp)
20013c40:      	auipc	ra, 0
20013c44:      	jalr	-942(ra)
20013c48:      	sw	a0, 8(sp)
20013c4a:      	sw	a1, 12(sp)
20013c4c:      	j	0x20013c4e <core::slice::<impl [T]>::iter::hc4191f65db25e34e+0x16>
20013c4e:      	lw	a1, 12(sp)
20013c50:      	lw	a0, 8(sp)
20013c52:      	lw	ra, 28(sp)
20013c54:      	addi	sp, sp, 32
20013c56:      	ret

20013c58 <core::slice::<impl [T]>::as_ptr::h11502149c59360a3>:
20013c58:      	addi	sp, sp, -16
20013c5a:      	sw	a0, 8(sp)
20013c5c:      	sw	a1, 12(sp)
20013c5e:      	addi	sp, sp, 16
20013c60:      	ret

20013c62 <core::ptr::mut_ptr::<impl *mut T>::guaranteed_eq::hae4b41185480ddd9>:
20013c62:      	addi	sp, sp, -16
20013c64:      	sw	a0, 4(sp)
20013c66:      	sw	a1, 8(sp)
20013c68:      	xor	a0, a0, a1
20013c6a:      	seqz	a0, a0
20013c6e:      	sw	a0, 0(sp)
20013c70:      	sb	a0, 15(sp)
20013c74:      	j	0x20013c76 <core::ptr::mut_ptr::<impl *mut T>::guaranteed_eq::hae4b41185480ddd9+0x14>
20013c76:      	lw	a0, 0(sp)
20013c78:      	addi	sp, sp, 16
20013c7a:      	ret

20013c7c <core::sync::atomic::compiler_fence::h7f397d67599e4c6c>:
20013c7c:      	addi	sp, sp, -48
20013c7e:      	sw	ra, 44(sp)
20013c80:      	sb	a0, 15(sp)
20013c84:      	andi	a0, a0, 255
20013c88:      	sw	a0, 8(sp)
20013c8a:      	lw	a0, 8(sp)
20013c8c:      	slli	a0, a0, 2
20013c8e:      	lui	a1, 131094
20013c92:      	addi	a1, a1, -1492
20013c96:      	add	a0, a0, a1
20013c98:      	lw	a0, 0(a0)
20013c9a:      	jr	a0
20013c9c:      	unimp	

20013c9e <.LBB0_3>:
20013c9e:      	lui	a0, 131094
20013ca2:      	addi	a1, a0, -1420
20013ca6:      	lui	a0, 131094
20013caa:      	addi	a3, a0, -1412
20013cae:      	addi	a0, sp, 16
20013cb0:      	li	a2, 1
20013cb2:      	li	a4, 0
20013cb4:      	auipc	ra, 0
20013cb8:      	jalr	60(ra)
20013cbc:      	j	0x20013cdc <.LBB0_7+0xc>

20013cbe <.LBB0_4>:
20013cbe:      	fence	rw, w
20013cc2:      	j	0x20013cd6 <.LBB0_7+0x6>

20013cc4 <.LBB0_5>:
20013cc4:      	fence	r, rw
20013cc8:      	j	0x20013cd6 <.LBB0_7+0x6>

20013cca <.LBB0_6>:
20013cca:      	fence.tso	
20013cce:      	j	0x20013cd6 <.LBB0_7+0x6>

20013cd0 <.LBB0_7>:
20013cd0:      	fence	rw, rw
20013cd4:      	j	0x20013cd6 <.LBB0_7+0x6>
20013cd6:      	lw	ra, 44(sp)
20013cd8:      	addi	sp, sp, 48
20013cda:      	ret
20013cdc:      	lui	a0, 131094
20013ce0:      	addi	a1, a0, -1332
20013ce4:      	addi	a0, sp, 16
20013ce6:      	auipc	ra, 0
20013cea:      	jalr	1786(ra)
20013cee:      	unimp	

20013cf0 <core::fmt::Arguments::new_v1::hb2b84d2aa201000c>:
20013cf0:      	addi	sp, sp, -80
20013cf2:      	sw	ra, 76(sp)
20013cf4:      	sw	a4, 0(sp)
20013cf6:      	sw	a3, 4(sp)
20013cf8:      	sw	a2, 8(sp)
20013cfa:      	sw	a1, 12(sp)
20013cfc:      	sw	a0, 16(sp)
20013cfe:      	sw	a1, 56(sp)
20013d00:      	sw	a2, 60(sp)
20013d02:      	sw	a3, 64(sp)
20013d04:      	sw	a4, 68(sp)
20013d06:      	bltu	a2, a4, 0x20013d1c <core::fmt::Arguments::new_v1::hb2b84d2aa201000c+0x2c>
20013d0a:      	j	0x20013d0c <core::fmt::Arguments::new_v1::hb2b84d2aa201000c+0x1c>
20013d0c:      	lw	a1, 8(sp)
20013d0e:      	lw	a0, 0(sp)
20013d10:      	addi	a0, a0, 1
20013d12:      	sltu	a0, a0, a1
20013d16:      	sb	a0, 23(sp)
20013d1a:      	j	0x20013d24 <core::fmt::Arguments::new_v1::hb2b84d2aa201000c+0x34>
20013d1c:      	li	a0, 1
20013d1e:      	sb	a0, 23(sp)
20013d22:      	j	0x20013d24 <core::fmt::Arguments::new_v1::hb2b84d2aa201000c+0x34>
20013d24:      	lbu	a0, 23(sp)
20013d28:      	andi	a0, a0, 1
20013d2a:      	li	a1, 0
20013d2c:      	bne	a0, a1, 0x20013d56 <core::fmt::Arguments::new_v1::hb2b84d2aa201000c+0x66>
20013d30:      	j	0x20013d32 <core::fmt::Arguments::new_v1::hb2b84d2aa201000c+0x42>
20013d32:      	lw	a0, 0(sp)
20013d34:      	lw	a1, 16(sp)
20013d36:      	lw	a2, 4(sp)
20013d38:      	lw	a3, 8(sp)
20013d3a:      	lw	a4, 12(sp)
20013d3c:      	li	a5, 0
20013d3e:      	sw	a5, 48(sp)
20013d40:      	sw	a4, 0(a1)
20013d42:      	sw	a3, 4(a1)
20013d44:      	lw	a4, 48(sp)
20013d46:      	lw	a3, 52(sp)
20013d48:      	sw	a4, 8(a1)
20013d4a:      	sw	a3, 12(a1)
20013d4c:      	sw	a2, 16(a1)
20013d4e:      	sw	a0, 20(a1)
20013d50:      	lw	ra, 76(sp)
20013d52:      	addi	sp, sp, 80
20013d54:      	ret
20013d56:      	lui	a0, 131094
20013d5a:      	addi	a1, a0, -1304
20013d5e:      	lui	a0, 131094
20013d62:      	addi	a3, a0, -1296
20013d66:      	addi	a0, sp, 24
20013d68:      	li	a2, 1
20013d6a:      	li	a4, 0
20013d6c:      	auipc	ra, 0
20013d70:      	jalr	-124(ra)
20013d74:      	j	0x20013d76 <core::fmt::Arguments::new_v1::hb2b84d2aa201000c+0x86>
20013d76:      	lui	a0, 131094
20013d7a:      	addi	a1, a0, -1220
20013d7e:      	addi	a0, sp, 24
20013d80:      	auipc	ra, 0
20013d84:      	jalr	1632(ra)
20013d88:      	unimp	

20013d8a <core::ptr::const_ptr::<impl *const T>::guaranteed_eq::he3fc677d5c308a91>:
20013d8a:      	addi	sp, sp, -16
20013d8c:      	sw	a0, 4(sp)
20013d8e:      	sw	a1, 8(sp)
20013d90:      	xor	a0, a0, a1
20013d92:      	seqz	a0, a0
20013d96:      	sw	a0, 0(sp)
20013d98:      	sb	a0, 15(sp)
20013d9c:      	j	0x20013d9e <core::ptr::const_ptr::<impl *const T>::guaranteed_eq::he3fc677d5c308a91+0x14>
20013d9e:      	lw	a0, 0(sp)
20013da0:      	addi	sp, sp, 16
20013da2:      	ret

20013da4 <core::ops::function::impls::<impl core::ops::function::FnMut<A> for &mut F>::call_mut::hf3e0ed28faa0bbd2>:
20013da4:      	addi	sp, sp, -16
20013da6:      	sw	ra, 12(sp)
20013da8:      	sw	a1, 4(sp)
20013daa:      	sw	a0, 8(sp)
20013dac:      	lw	a0, 0(a0)
20013dae:      	auipc	ra, 0
20013db2:      	jalr	20(ra)
20013db6:      	sw	a0, 0(sp)
20013db8:      	j	0x20013dba <core::ops::function::impls::<impl core::ops::function::FnMut<A> for &mut F>::call_mut::hf3e0ed28faa0bbd2+0x16>
20013dba:      	lw	a0, 0(sp)
20013dbc:      	lw	ra, 12(sp)
20013dbe:      	addi	sp, sp, 16
20013dc0:      	ret

20013dc2 <yarr::scheduler::schedule::{{closure}}::hb1b18823cef5e640>:
20013dc2:      	addi	sp, sp, -16
20013dc4:      	sw	a0, 8(sp)
20013dc6:      	sw	a1, 12(sp)
20013dc8:      	lw	a0, 0(a1)
20013dca:      	lbu	a0, 24(a0)
20013dce:      	addi	sp, sp, 16
20013dd0:      	ret

20013dd2 <yarr::scheduler::schedule::{{closure}}::h82f208978a5e1925>:
20013dd2:      	addi	sp, sp, -16
20013dd4:      	sw	a0, 8(sp)
20013dd6:      	sw	a1, 12(sp)
20013dd8:      	lw	a0, 0(a1)
20013dda:      	lw	a0, 20(a0)
20013ddc:      	addi	sp, sp, 16
20013dde:      	ret

20013de0 <core::ptr::metadata::from_raw_parts::h3c1cc10c37fa137d>:
20013de0:      	addi	sp, sp, -32
20013de2:      	sw	a0, 20(sp)
20013de4:      	sw	a0, 16(sp)
20013de6:      	sw	a0, 8(sp)
20013de8:      	addi	sp, sp, 32
20013dea:      	ret

20013dec <core::ptr::metadata::from_raw_parts_mut::hd9f1d9d7915615fe>:
20013dec:      	addi	sp, sp, -32
20013dee:      	sw	a0, 20(sp)
20013df0:      	sw	a0, 16(sp)
20013df2:      	sw	a0, 8(sp)
20013df4:      	addi	sp, sp, 32
20013df6:      	ret

20013df8 <core::slice::<impl [T]>::as_ptr::h289d274104a1ad5b>:
20013df8:      	addi	sp, sp, -16
20013dfa:      	sw	a0, 8(sp)
20013dfc:      	sw	a1, 12(sp)
20013dfe:      	addi	sp, sp, 16
20013e00:      	ret

20013e02 <core::ops::function::impls::<impl core::ops::function::FnOnce<A> for &mut F>::call_once::hc1a917964bd8740c>:
20013e02:      	addi	sp, sp, -32
20013e04:      	sw	ra, 28(sp)
20013e06:      	sw	a1, 20(sp)
20013e08:      	sw	a0, 24(sp)
20013e0a:      	auipc	ra, 0
20013e0e:      	jalr	60(ra)
20013e12:      	sw	a0, 12(sp)
20013e14:      	sw	a1, 16(sp)
20013e16:      	j	0x20013e18 <core::ops::function::impls::<impl core::ops::function::FnOnce<A> for &mut F>::call_once::hc1a917964bd8740c+0x16>
20013e18:      	lw	a1, 16(sp)
20013e1a:      	lw	a0, 12(sp)
20013e1c:      	lw	ra, 28(sp)
20013e1e:      	addi	sp, sp, 32
20013e20:      	ret

20013e22 <core::ops::function::impls::<impl core::ops::function::FnOnce<A> for &mut F>::call_once::hffa7f48999097512>:
20013e22:      	addi	sp, sp, -32
20013e24:      	sw	ra, 28(sp)
20013e26:      	sw	a1, 16(sp)
20013e28:      	sw	a2, 20(sp)
20013e2a:      	sw	a0, 24(sp)
20013e2c:      	auipc	ra, 0
20013e30:      	jalr	918(ra)
20013e34:      	sw	a0, 12(sp)
20013e36:      	j	0x20013e38 <core::ops::function::impls::<impl core::ops::function::FnOnce<A> for &mut F>::call_once::hffa7f48999097512+0x16>
20013e38:      	lw	a0, 12(sp)
20013e3a:      	lw	ra, 28(sp)
20013e3c:      	addi	sp, sp, 32
20013e3e:      	ret

20013e40 <core::iter::traits::iterator::Iterator::max_by_key::key::he29b859a434ee1bc>:
20013e40:      	addi	sp, sp, -16
20013e42:      	addi	sp, sp, 16
20013e44:      	ret

20013e46 <core::iter::traits::iterator::Iterator::max_by_key::key::{{closure}}::he2e40c1f3f037610>:
20013e46:      	addi	sp, sp, -32
20013e48:      	sw	ra, 28(sp)
20013e4a:      	sw	a1, 4(sp)
20013e4c:      	sw	a0, 24(sp)
20013e4e:      	addi	a1, sp, 4
20013e50:      	sw	a1, 20(sp)
20013e52:      	auipc	ra, 0
20013e56:      	jalr	-128(ra)
20013e5a:      	sw	a0, 0(sp)
20013e5c:      	j	0x20013e5e <core::iter::traits::iterator::Iterator::max_by_key::key::{{closure}}::he2e40c1f3f037610+0x18>
20013e5e:      	lw	a0, 0(sp)
20013e60:      	lw	a1, 4(sp)
20013e62:      	sw	a0, 8(sp)
20013e64:      	sw	a1, 12(sp)
20013e66:      	lw	ra, 28(sp)
20013e68:      	addi	sp, sp, 32
20013e6a:      	ret

20013e6c <core::iter::traits::iterator::Iterator::max_by_key::compare::h0e10b903054bcf22>:
20013e6c:      	addi	sp, sp, -32
20013e6e:      	sw	ra, 28(sp)
20013e70:      	sw	a0, 12(sp)
20013e72:      	sw	a1, 16(sp)
20013e74:      	sw	a0, 20(sp)
20013e76:      	sw	a1, 24(sp)
20013e78:      	auipc	ra, 0
20013e7c:      	jalr	1168(ra)
20013e80:      	sw	a0, 8(sp)
20013e82:      	j	0x20013e84 <core::iter::traits::iterator::Iterator::max_by_key::compare::h0e10b903054bcf22+0x18>
20013e84:      	lw	a0, 8(sp)
20013e86:      	lw	ra, 28(sp)
20013e88:      	addi	sp, sp, 32
20013e8a:      	ret

20013e8c <core::iter::traits::iterator::Iterator::max_by::fold::hf5adaf59ce8f6ab0>:
20013e8c:      	addi	sp, sp, -16
20013e8e:      	addi	sp, sp, 16
20013e90:      	ret

20013e92 <core::iter::traits::iterator::Iterator::max_by::fold::{{closure}}::h2bde798ec5b15595>:
20013e92:      	addi	sp, sp, -64
20013e94:      	sw	ra, 60(sp)
20013e96:      	sw	a4, 12(sp)
20013e98:      	mv	a4, a3
20013e9a:      	lw	a3, 12(sp)
20013e9c:      	sw	a4, 16(sp)
20013e9e:      	mv	a4, a2
20013ea0:      	lw	a2, 16(sp)
20013ea2:      	sw	a4, 20(sp)
20013ea4:      	mv	a4, a1
20013ea6:      	lw	a1, 20(sp)
20013ea8:      	sw	a4, 24(sp)
20013eaa:      	mv	a4, a0
20013eac:      	lw	a0, 24(sp)
20013eae:      	sw	a4, 36(sp)
20013eb0:      	sw	a0, 40(sp)
20013eb2:      	sw	a1, 44(sp)
20013eb4:      	sw	a2, 48(sp)
20013eb6:      	sw	a3, 52(sp)
20013eb8:      	auipc	ra, 0
20013ebc:      	jalr	24(ra)
20013ec0:      	sw	a0, 28(sp)
20013ec2:      	sw	a1, 32(sp)
20013ec4:      	j	0x20013ec6 <core::iter::traits::iterator::Iterator::max_by::fold::{{closure}}::h2bde798ec5b15595+0x34>
20013ec6:      	lw	a1, 32(sp)
20013ec8:      	lw	a0, 28(sp)
20013eca:      	lw	ra, 60(sp)
20013ecc:      	addi	sp, sp, 64
20013ece:      	ret

20013ed0 <core::cmp::max_by::h4dcd269bdb000850>:
20013ed0:      	addi	sp, sp, -64
20013ed2:      	sw	ra, 60(sp)
20013ed4:      	sw	a4, 4(sp)
20013ed6:      	mv	a4, a0
20013ed8:      	lw	a0, 4(sp)
20013eda:      	sw	a4, 8(sp)
20013edc:      	sw	a1, 12(sp)
20013ede:      	sw	a2, 16(sp)
20013ee0:      	sw	a3, 20(sp)
20013ee2:      	sw	a0, 56(sp)
20013ee4:      	li	a1, 1
20013ee6:      	sb	a1, 55(sp)
20013eea:      	sb	a1, 54(sp)
20013eee:      	addi	a1, sp, 8
20013ef0:      	sw	a1, 40(sp)
20013ef2:      	addi	a2, sp, 16
20013ef4:      	sw	a2, 44(sp)
20013ef6:      	auipc	ra, 0
20013efa:      	jalr	-212(ra)
20013efe:      	sb	a0, 39(sp)
20013f02:      	j	0x20013f04 <core::cmp::max_by::h4dcd269bdb000850+0x34>
20013f04:      	lbu	a0, 39(sp)
20013f08:      	addi	a0, a0, 1
20013f0a:      	andi	a0, a0, 255
20013f0e:      	li	a1, 2
20013f10:      	bltu	a0, a1, 0x20013f1a <core::cmp::max_by::h4dcd269bdb000850+0x4a>
20013f14:      	j	0x20013f16 <core::cmp::max_by::h4dcd269bdb000850+0x46>
20013f16:      	j	0x20013f2a <core::cmp::max_by::h4dcd269bdb000850+0x5a>
20013f18:      	unimp	
20013f1a:      	li	a0, 0
20013f1c:      	sb	a0, 54(sp)
20013f20:      	lw	a1, 16(sp)
20013f22:      	lw	a0, 20(sp)
20013f24:      	sw	a1, 24(sp)
20013f26:      	sw	a0, 28(sp)
20013f28:      	j	0x20013f3a <core::cmp::max_by::h4dcd269bdb000850+0x6a>
20013f2a:      	li	a0, 0
20013f2c:      	sb	a0, 55(sp)
20013f30:      	lw	a1, 8(sp)
20013f32:      	lw	a0, 12(sp)
20013f34:      	sw	a1, 24(sp)
20013f36:      	sw	a0, 28(sp)
20013f38:      	j	0x20013f3a <core::cmp::max_by::h4dcd269bdb000850+0x6a>
20013f3a:      	lbu	a0, 54(sp)
20013f3e:      	andi	a0, a0, 1
20013f40:      	li	a1, 0
20013f42:      	bne	a0, a1, 0x20013f56 <core::cmp::max_by::h4dcd269bdb000850+0x86>
20013f46:      	j	0x20013f48 <core::cmp::max_by::h4dcd269bdb000850+0x78>
20013f48:      	lbu	a0, 55(sp)
20013f4c:      	andi	a0, a0, 1
20013f4e:      	li	a1, 0
20013f50:      	bne	a0, a1, 0x20013f62 <core::cmp::max_by::h4dcd269bdb000850+0x92>
20013f54:      	j	0x20013f58 <core::cmp::max_by::h4dcd269bdb000850+0x88>
20013f56:      	j	0x20013f48 <core::cmp::max_by::h4dcd269bdb000850+0x78>
20013f58:      	lw	a0, 24(sp)
20013f5a:      	lw	a1, 28(sp)
20013f5c:      	lw	ra, 60(sp)
20013f5e:      	addi	sp, sp, 64
20013f60:      	ret
20013f62:      	j	0x20013f58 <core::cmp::max_by::h4dcd269bdb000850+0x88>

20013f64 <core::option::Option<T>::unwrap_unchecked::h3de3f91704a716f1>:
20013f64:      	addi	sp, sp, -16
20013f66:      	sw	a0, 8(sp)
20013f68:      	snez	a1, a0
20013f6c:      	li	a1, 0
20013f6e:      	beq	a0, a1, 0x20013f78 <core::option::Option<T>::unwrap_unchecked::h3de3f91704a716f1+0x14>
20013f72:      	j	0x20013f74 <core::option::Option<T>::unwrap_unchecked::h3de3f91704a716f1+0x10>
20013f74:      	j	0x20013f82 <core::option::Option<T>::unwrap_unchecked::h3de3f91704a716f1+0x1e>
20013f76:      	unimp	
20013f78:      	auipc	ra, 0
20013f7c:      	jalr	192(ra)
20013f80:      	unimp	
20013f82:      	lw	a0, 8(sp)
20013f84:      	sw	a0, 12(sp)
20013f86:      	addi	sp, sp, 16
20013f88:      	ret

20013f8a <core::option::Option<T>::map::h2bfb289d1ba7fcd3>:
20013f8a:      	addi	sp, sp, -48
20013f8c:      	sw	ra, 44(sp)
20013f8e:      	sw	a1, 8(sp)
20013f90:      	sw	a0, 12(sp)
20013f92:      	sw	a1, 36(sp)
20013f94:      	li	a1, 1
20013f96:      	sb	a1, 35(sp)
20013f9a:      	snez	a1, a0
20013f9e:      	li	a1, 0
20013fa0:      	beq	a0, a1, 0x20013faa <core::option::Option<T>::map::h2bfb289d1ba7fcd3+0x20>
20013fa4:      	j	0x20013fa6 <core::option::Option<T>::map::h2bfb289d1ba7fcd3+0x1c>
20013fa6:      	j	0x20013fb0 <core::option::Option<T>::map::h2bfb289d1ba7fcd3+0x26>
20013fa8:      	unimp	
20013faa:      	li	a0, 0
20013fac:      	sw	a0, 20(sp)
20013fae:      	j	0x20013fd6 <core::option::Option<T>::map::h2bfb289d1ba7fcd3+0x4c>
20013fb0:      	lw	a0, 8(sp)
20013fb2:      	lw	a1, 12(sp)
20013fb4:      	sw	a1, 40(sp)
20013fb6:      	li	a2, 0
20013fb8:      	sb	a2, 35(sp)
20013fbc:      	sw	a1, 28(sp)
20013fbe:      	auipc	ra, 0
20013fc2:      	jalr	-444(ra)
20013fc6:      	sw	a0, 0(sp)
20013fc8:      	sw	a1, 4(sp)
20013fca:      	j	0x20013fcc <core::option::Option<T>::map::h2bfb289d1ba7fcd3+0x42>
20013fcc:      	lw	a0, 4(sp)
20013fce:      	lw	a1, 0(sp)
20013fd0:      	sw	a1, 16(sp)
20013fd2:      	sw	a0, 20(sp)
20013fd4:      	j	0x20013fd6 <core::option::Option<T>::map::h2bfb289d1ba7fcd3+0x4c>
20013fd6:      	lbu	a0, 35(sp)
20013fda:      	andi	a0, a0, 1
20013fdc:      	li	a1, 0
20013fde:      	bne	a0, a1, 0x20013fee <core::option::Option<T>::map::h2bfb289d1ba7fcd3+0x64>
20013fe2:      	j	0x20013fe4 <core::option::Option<T>::map::h2bfb289d1ba7fcd3+0x5a>
20013fe4:      	lw	a0, 16(sp)
20013fe6:      	lw	a1, 20(sp)
20013fe8:      	lw	ra, 44(sp)
20013fea:      	addi	sp, sp, 48
20013fec:      	ret
20013fee:      	j	0x20013fe4 <core::option::Option<T>::map::h2bfb289d1ba7fcd3+0x5a>

20013ff0 <<core::option::Option<T> as core::ops::try_trait::Try>::branch::h95f8ca85638ceb85>:
20013ff0:      	addi	sp, sp, -32
20013ff2:      	sw	a0, 8(sp)
20013ff4:      	sw	a1, 12(sp)
20013ff6:      	snez	a0, a1
20013ffa:      	li	a0, 0
20013ffc:      	beq	a1, a0, 0x20014006 <<core::option::Option<T> as core::ops::try_trait::Try>::branch::h95f8ca85638ceb85+0x16>
20014000:      	j	0x20014002 <<core::option::Option<T> as core::ops::try_trait::Try>::branch::h95f8ca85638ceb85+0x12>
20014002:      	j	0x2001400c <<core::option::Option<T> as core::ops::try_trait::Try>::branch::h95f8ca85638ceb85+0x1c>
20014004:      	unimp	
20014006:      	li	a0, 0
20014008:      	sw	a0, 20(sp)
2001400a:      	j	0x2001401a <<core::option::Option<T> as core::ops::try_trait::Try>::branch::h95f8ca85638ceb85+0x2a>
2001400c:      	lw	a1, 8(sp)
2001400e:      	lw	a0, 12(sp)
20014010:      	sw	a1, 24(sp)
20014012:      	sw	a0, 28(sp)
20014014:      	sw	a1, 16(sp)
20014016:      	sw	a0, 20(sp)
20014018:      	j	0x2001401a <<core::option::Option<T> as core::ops::try_trait::Try>::branch::h95f8ca85638ceb85+0x2a>
2001401a:      	lw	a0, 16(sp)
2001401c:      	lw	a1, 20(sp)
2001401e:      	addi	sp, sp, 32
20014020:      	ret

20014022 <<core::option::Option<T> as core::ops::try_trait::FromResidual>::from_residual::h1f156de30d922fec>:
20014022:      	addi	sp, sp, -16
20014024:      	li	a1, 0
20014026:      	sw	a1, 4(sp)
20014028:      	lw	a0, 0(sp)
2001402a:      	addi	sp, sp, 16
2001402c:      	ret

2001402e <<core::option::Option<T> as core::ops::try_trait::FromResidual>::from_residual::hdcf8d9f2dcb6ddb6>:
2001402e:      	addi	sp, sp, -16
20014030:      	li	a0, 0
20014032:      	sw	a0, 4(sp)
20014034:      	addi	sp, sp, 16
20014036:      	ret

20014038 <core::hint::unreachable_unchecked::h51d71eebaff7b310>:
20014038:      	unimp	

2001403a <<core::iter::adapters::map::Map<I,F> as core::iter::traits::iterator::Iterator>::fold::h18cf30cf86241bf2>:
2001403a:      	addi	sp, sp, -48
2001403c:      	sw	ra, 44(sp)
2001403e:      	sw	a3, 8(sp)
20014040:      	sw	a2, 12(sp)
20014042:      	sw	a1, 16(sp)
20014044:      	sw	a0, 20(sp)
20014046:      	sw	a0, 24(sp)
20014048:      	sw	a1, 28(sp)
2001404a:      	sw	a2, 32(sp)
2001404c:      	sw	a3, 36(sp)
2001404e:      	auipc	ra, 0
20014052:      	jalr	282(ra)
20014056:      	j	0x20014058 <<core::iter::adapters::map::Map<I,F> as core::iter::traits::iterator::Iterator>::fold::h18cf30cf86241bf2+0x1e>
20014058:      	lw	a3, 8(sp)
2001405a:      	lw	a2, 12(sp)
2001405c:      	lw	a1, 16(sp)
2001405e:      	lw	a0, 20(sp)
20014060:      	auipc	ra, 0
20014064:      	jalr	-1588(ra)
20014068:      	sw	a0, 0(sp)
2001406a:      	sw	a1, 4(sp)
2001406c:      	j	0x2001406e <<core::iter::adapters::map::Map<I,F> as core::iter::traits::iterator::Iterator>::fold::h18cf30cf86241bf2+0x34>
2001406e:      	lw	a1, 4(sp)
20014070:      	lw	a0, 0(sp)
20014072:      	lw	ra, 44(sp)
20014074:      	addi	sp, sp, 48
20014076:      	ret

20014078 <<core::iter::adapters::map::Map<I,F> as core::iter::traits::iterator::Iterator>::next::h1e1c060ec48cd441>:
20014078:      	addi	sp, sp, -32
2001407a:      	sw	ra, 28(sp)
2001407c:      	sw	a0, 16(sp)
2001407e:      	sw	a0, 24(sp)
20014080:      	auipc	ra, 0
20014084:      	jalr	-1558(ra)
20014088:      	sw	a0, 20(sp)
2001408a:      	j	0x2001408c <<core::iter::adapters::map::Map<I,F> as core::iter::traits::iterator::Iterator>::next::h1e1c060ec48cd441+0x14>
2001408c:      	lw	a1, 16(sp)
2001408e:      	lw	a0, 20(sp)
20014090:      	auipc	ra, 0
20014094:      	jalr	-262(ra)
20014098:      	sw	a0, 8(sp)
2001409a:      	sw	a1, 12(sp)
2001409c:      	j	0x2001409e <<core::iter::adapters::map::Map<I,F> as core::iter::traits::iterator::Iterator>::next::h1e1c060ec48cd441+0x26>
2001409e:      	lw	a1, 12(sp)
200140a0:      	lw	a0, 8(sp)
200140a2:      	lw	ra, 28(sp)
200140a4:      	addi	sp, sp, 32
200140a6:      	ret

200140a8 <core::iter::traits::iterator::Iterator::max_by::haacfc330c3aad2a1>:
200140a8:      	addi	sp, sp, -32
200140aa:      	sw	ra, 28(sp)
200140ac:      	sw	a1, 8(sp)
200140ae:      	sw	a0, 12(sp)
200140b0:      	sw	a0, 16(sp)
200140b2:      	sw	a1, 20(sp)
200140b4:      	auipc	ra, 0
200140b8:      	jalr	-552(ra)
200140bc:      	j	0x200140be <core::iter::traits::iterator::Iterator::max_by::haacfc330c3aad2a1+0x16>
200140be:      	lw	a1, 8(sp)
200140c0:      	lw	a0, 12(sp)
200140c2:      	auipc	ra, 0
200140c6:      	jalr	24(ra)
200140ca:      	sw	a0, 0(sp)
200140cc:      	sw	a1, 4(sp)
200140ce:      	j	0x200140d0 <core::iter::traits::iterator::Iterator::max_by::haacfc330c3aad2a1+0x28>
200140d0:      	lw	a1, 4(sp)
200140d2:      	lw	a0, 0(sp)
200140d4:      	lw	ra, 28(sp)
200140d6:      	addi	sp, sp, 32
200140d8:      	ret

200140da <core::iter::traits::iterator::Iterator::reduce::h877027b8d5217d27>:
200140da:      	addi	sp, sp, -80
200140dc:      	sw	ra, 76(sp)
200140de:      	sw	a0, 16(sp)
200140e0:      	sw	a1, 20(sp)
200140e2:      	addi	a0, sp, 16
200140e4:      	auipc	ra, 0
200140e8:      	jalr	-108(ra)
200140ec:      	sw	a0, 8(sp)
200140ee:      	sw	a1, 12(sp)
200140f0:      	j	0x200140f2 <core::iter::traits::iterator::Iterator::reduce::h877027b8d5217d27+0x18>
200140f2:      	lw	a1, 12(sp)
200140f4:      	lw	a0, 8(sp)
200140f6:      	auipc	ra, 0
200140fa:      	jalr	-262(ra)
200140fe:      	sw	a0, 32(sp)
20014100:      	sw	a1, 36(sp)
20014102:      	j	0x20014104 <core::iter::traits::iterator::Iterator::reduce::h877027b8d5217d27+0x2a>
20014104:      	lw	a0, 36(sp)
20014106:      	seqz	a1, a0
2001410a:      	li	a1, 0
2001410c:      	bne	a0, a1, 0x20014116 <core::iter::traits::iterator::Iterator::reduce::h877027b8d5217d27+0x3c>
20014110:      	j	0x20014112 <core::iter::traits::iterator::Iterator::reduce::h877027b8d5217d27+0x38>
20014112:      	j	0x20014134 <core::iter::traits::iterator::Iterator::reduce::h877027b8d5217d27+0x5a>
20014114:      	unimp	
20014116:      	lw	a2, 32(sp)
20014118:      	lw	a3, 36(sp)
2001411a:      	sw	a2, 56(sp)
2001411c:      	sw	a3, 60(sp)
2001411e:      	sw	a2, 64(sp)
20014120:      	sw	a3, 68(sp)
20014122:      	lw	a0, 16(sp)
20014124:      	lw	a1, 20(sp)
20014126:      	auipc	ra, 0
2001412a:      	jalr	-236(ra)
2001412e:      	sw	a0, 0(sp)
20014130:      	sw	a1, 4(sp)
20014132:      	j	0x20014150 <core::iter::traits::iterator::Iterator::reduce::h877027b8d5217d27+0x76>
20014134:      	auipc	ra, 0
20014138:      	jalr	-274(ra)
2001413c:      	sw	a0, 24(sp)
2001413e:      	sw	a1, 28(sp)
20014140:      	j	0x20014142 <core::iter::traits::iterator::Iterator::reduce::h877027b8d5217d27+0x68>
20014142:      	j	0x20014144 <core::iter::traits::iterator::Iterator::reduce::h877027b8d5217d27+0x6a>
20014144:      	j	0x20014146 <core::iter::traits::iterator::Iterator::reduce::h877027b8d5217d27+0x6c>
20014146:      	lw	a0, 24(sp)
20014148:      	lw	a1, 28(sp)
2001414a:      	lw	ra, 76(sp)
2001414c:      	addi	sp, sp, 80
2001414e:      	ret
20014150:      	lw	a0, 4(sp)
20014152:      	lw	a1, 0(sp)
20014154:      	sw	a1, 24(sp)
20014156:      	sw	a0, 28(sp)
20014158:      	j	0x20014146 <core::iter::traits::iterator::Iterator::reduce::h877027b8d5217d27+0x6c>

2001415a <core::iter::adapters::map::Map<I,F>::new::h7d9e78e6696e5504>:
2001415a:      	addi	sp, sp, -32
2001415c:      	sw	a0, 16(sp)
2001415e:      	sw	a1, 20(sp)
20014160:      	sw	a0, 8(sp)
20014162:      	sw	a1, 12(sp)
20014164:      	addi	sp, sp, 32
20014166:      	ret

20014168 <core::iter::adapters::map::map_fold::h21aa0ff15f6a5341>:
20014168:      	addi	sp, sp, -32
2001416a:      	addi	sp, sp, 32
2001416c:      	ret

2001416e <core::iter::adapters::map::map_fold::{{closure}}::hea537cea1d144454>:
2001416e:      	addi	sp, sp, -80
20014170:      	sw	ra, 76(sp)
20014172:      	sw	a3, 20(sp)
20014174:      	sw	a2, 16(sp)
20014176:      	mv	a3, a1
20014178:      	lw	a1, 20(sp)
2001417a:      	sw	a3, 24(sp)
2001417c:      	sw	a0, 60(sp)
2001417e:      	sw	a3, 64(sp)
20014180:      	sw	a2, 68(sp)
20014182:      	sw	a1, 72(sp)
20014184:      	mv	a2, a0
20014186:      	sw	a2, 28(sp)
20014188:      	sw	a1, 56(sp)
2001418a:      	auipc	ra, 0
2001418e:      	jalr	-836(ra)
20014192:      	sw	a0, 32(sp)
20014194:      	sw	a1, 36(sp)
20014196:      	j	0x20014198 <core::iter::adapters::map::map_fold::{{closure}}::hea537cea1d144454+0x2a>
20014198:      	lw	a4, 36(sp)
2001419a:      	lw	a3, 32(sp)
2001419c:      	lw	a2, 16(sp)
2001419e:      	lw	a1, 24(sp)
200141a0:      	lw	a0, 28(sp)
200141a2:      	sw	a1, 40(sp)
200141a4:      	sw	a2, 44(sp)
200141a6:      	sw	a3, 48(sp)
200141a8:      	sw	a4, 52(sp)
200141aa:      	auipc	ra, 0
200141ae:      	jalr	-792(ra)
200141b2:      	sw	a0, 8(sp)
200141b4:      	sw	a1, 12(sp)
200141b6:      	j	0x200141b8 <core::iter::adapters::map::map_fold::{{closure}}::hea537cea1d144454+0x4a>
200141b8:      	lw	a1, 12(sp)
200141ba:      	lw	a0, 8(sp)
200141bc:      	lw	ra, 76(sp)
200141be:      	addi	sp, sp, 80
200141c0:      	ret

200141c2 <core::ops::function::FnMut::call_mut::h360d25fc19d2e5bc>:
200141c2:      	addi	sp, sp, -32
200141c4:      	sw	ra, 28(sp)
200141c6:      	sw	a2, 4(sp)
200141c8:      	mv	a2, a1
200141ca:      	lw	a1, 4(sp)
200141cc:      	sw	a2, 8(sp)
200141ce:      	mv	a2, a0
200141d0:      	lw	a0, 8(sp)
200141d2:      	sw	a0, 16(sp)
200141d4:      	sw	a1, 20(sp)
200141d6:      	sw	a2, 24(sp)
200141d8:      	auipc	ra, 0
200141dc:      	jalr	-876(ra)
200141e0:      	sw	a0, 12(sp)
200141e2:      	j	0x200141e4 <core::ops::function::FnMut::call_mut::h360d25fc19d2e5bc+0x22>
200141e4:      	lw	a0, 12(sp)
200141e6:      	lw	ra, 28(sp)
200141e8:      	addi	sp, sp, 32
200141ea:      	ret

200141ec <core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next::h0b9efa9efeeaef4b>:
200141ec:      	addi	sp, sp, -16
200141ee:      	sw	ra, 12(sp)
200141f0:      	sw	a0, 8(sp)
200141f2:      	auipc	ra, 0
200141f6:      	jalr	34(ra)
200141fa:      	sw	a0, 0(sp)
200141fc:      	sw	a1, 4(sp)
200141fe:      	j	0x20014200 <core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next::h0b9efa9efeeaef4b+0x14>
20014200:      	lw	a1, 4(sp)
20014202:      	lw	a0, 0(sp)
20014204:      	lw	ra, 12(sp)
20014206:      	addi	sp, sp, 16
20014208:      	ret

2001420a <<I as core::iter::traits::collect::IntoIterator>::into_iter::h3822aa977b4b9f94>:
2001420a:      	addi	sp, sp, -16
2001420c:      	sw	a0, 8(sp)
2001420e:      	sw	a1, 12(sp)
20014210:      	addi	sp, sp, 16
20014212:      	ret

20014214 <<core::ops::range::Range<T> as core::iter::range::RangeIteratorImpl>::spec_next::h607d1a41bcd08648>:
20014214:      	addi	sp, sp, -48
20014216:      	sw	ra, 44(sp)
20014218:      	sw	a0, 16(sp)
2001421a:      	sw	a0, 36(sp)
2001421c:      	addi	a1, a0, 4
20014220:      	auipc	ra, 0
20014224:      	jalr	302(ra)
20014228:      	sw	a0, 20(sp)
2001422a:      	j	0x2001422c <<core::ops::range::Range<T> as core::iter::range::RangeIteratorImpl>::spec_next::h607d1a41bcd08648+0x18>
2001422c:      	lw	a0, 20(sp)
2001422e:      	li	a1, 0
20014230:      	bne	a0, a1, 0x2001423c <<core::ops::range::Range<T> as core::iter::range::RangeIteratorImpl>::spec_next::h607d1a41bcd08648+0x28>
20014234:      	j	0x20014236 <<core::ops::range::Range<T> as core::iter::range::RangeIteratorImpl>::spec_next::h607d1a41bcd08648+0x22>
20014236:      	li	a0, 0
20014238:      	sw	a0, 24(sp)
2001423a:      	j	0x20014278 <<core::ops::range::Range<T> as core::iter::range::RangeIteratorImpl>::spec_next::h607d1a41bcd08648+0x64>
2001423c:      	lw	a0, 16(sp)
2001423e:      	auipc	ra, 0
20014242:      	jalr	68(ra)
20014246:      	sw	a0, 12(sp)
20014248:      	j	0x2001424a <<core::ops::range::Range<T> as core::iter::range::RangeIteratorImpl>::spec_next::h607d1a41bcd08648+0x36>
2001424a:      	lw	a0, 12(sp)
2001424c:      	li	a1, 1
2001424e:      	auipc	ra, 0
20014252:      	jalr	62(ra)
20014256:      	mv	a1, a0
20014258:      	sw	a1, 8(sp)
2001425a:      	sw	a0, 40(sp)
2001425c:      	j	0x2001425e <<core::ops::range::Range<T> as core::iter::range::RangeIteratorImpl>::spec_next::h607d1a41bcd08648+0x4a>
2001425e:      	lw	a1, 8(sp)
20014260:      	lw	a0, 16(sp)
20014262:      	auipc	ra, 0
20014266:      	jalr	66(ra)
2001426a:      	sw	a0, 4(sp)
2001426c:      	j	0x2001426e <<core::ops::range::Range<T> as core::iter::range::RangeIteratorImpl>::spec_next::h607d1a41bcd08648+0x5a>
2001426e:      	lw	a0, 4(sp)
20014270:      	sw	a0, 28(sp)
20014272:      	li	a0, 1
20014274:      	sw	a0, 24(sp)
20014276:      	j	0x20014278 <<core::ops::range::Range<T> as core::iter::range::RangeIteratorImpl>::spec_next::h607d1a41bcd08648+0x64>
20014278:      	lw	a0, 24(sp)
2001427a:      	lw	a1, 28(sp)
2001427c:      	lw	ra, 44(sp)
2001427e:      	addi	sp, sp, 48
20014280:      	ret

20014282 <core::clone::impls::<impl core::clone::Clone for usize>::clone::h10a97b8bfadce290>:
20014282:      	addi	sp, sp, -16
20014284:      	sw	a0, 12(sp)
20014286:      	lw	a0, 0(a0)
20014288:      	addi	sp, sp, 16
2001428a:      	ret

2001428c <<usize as core::iter::range::Step>::forward_unchecked::hce951cf45c8b53b3>:
2001428c:      	addi	sp, sp, -32
2001428e:      	sw	a0, 12(sp)
20014290:      	sw	a1, 16(sp)
20014292:      	sw	a0, 20(sp)
20014294:      	sw	a1, 24(sp)
20014296:      	add	a0, a0, a1
20014298:      	sw	a0, 8(sp)
2001429a:      	sw	a0, 28(sp)
2001429c:      	j	0x2001429e <<usize as core::iter::range::Step>::forward_unchecked::hce951cf45c8b53b3+0x12>
2001429e:      	lw	a0, 8(sp)
200142a0:      	addi	sp, sp, 32
200142a2:      	ret

200142a4 <core::mem::replace::h81eefbea73df33e5>:
200142a4:      	addi	sp, sp, -32
200142a6:      	sw	ra, 28(sp)
200142a8:      	sw	a1, 4(sp)
200142aa:      	sw	a0, 8(sp)
200142ac:      	sw	a0, 16(sp)
200142ae:      	sw	a1, 20(sp)
200142b0:      	auipc	ra, 0
200142b4:      	jalr	38(ra)
200142b8:      	mv	a1, a0
200142ba:      	sw	a1, 12(sp)
200142bc:      	sw	a0, 24(sp)
200142be:      	j	0x200142c0 <core::mem::replace::h81eefbea73df33e5+0x1c>
200142c0:      	lw	a1, 4(sp)
200142c2:      	lw	a0, 8(sp)
200142c4:      	auipc	ra, 0
200142c8:      	jalr	56(ra)
200142cc:      	j	0x200142ce <core::mem::replace::h81eefbea73df33e5+0x2a>
200142ce:      	lw	a0, 12(sp)
200142d0:      	lw	ra, 28(sp)
200142d2:      	addi	sp, sp, 32
200142d4:      	ret

200142d6 <core::ptr::read::hc1be6849642d2b8c>:
200142d6:      	addi	sp, sp, -32
200142d8:      	sw	a0, 4(sp)
200142da:      	sw	a0, 12(sp)
200142dc:      	lw	a0, 24(sp)
200142de:      	sw	a0, 8(sp)
200142e0:      	j	0x200142e2 <core::ptr::read::hc1be6849642d2b8c+0xc>
200142e2:      	addi	a0, sp, 8
200142e4:      	sw	a0, 16(sp)
200142e6:      	j	0x200142e8 <core::ptr::read::hc1be6849642d2b8c+0x12>
200142e8:      	lw	a0, 4(sp)
200142ea:      	lw	a0, 0(a0)
200142ec:      	sw	a0, 0(sp)
200142ee:      	sw	a0, 8(sp)
200142f0:      	sw	a0, 20(sp)
200142f2:      	sw	a0, 28(sp)
200142f4:      	j	0x200142f6 <core::ptr::read::hc1be6849642d2b8c+0x20>
200142f6:      	lw	a0, 0(sp)
200142f8:      	addi	sp, sp, 32
200142fa:      	ret

200142fc <core::ptr::write::h84295526b1a37da8>:
200142fc:      	addi	sp, sp, -16
200142fe:      	sw	a1, 8(sp)
20014300:      	sw	a0, 12(sp)
20014302:      	sw	a1, 0(a0)
20014304:      	addi	sp, sp, 16
20014306:      	ret

20014308 <core::cmp::impls::<impl core::cmp::Ord for usize>::cmp::h41a2cc83c81630f5>:
20014308:      	addi	sp, sp, -32
2001430a:      	sw	a1, 12(sp)
2001430c:      	sw	a0, 16(sp)
2001430e:      	sw	a0, 24(sp)
20014310:      	sw	a1, 28(sp)
20014312:      	lw	a0, 0(a0)
20014314:      	lw	a1, 0(a1)
20014316:      	bltu	a0, a1, 0x2001432a <core::cmp::impls::<impl core::cmp::Ord for usize>::cmp::h41a2cc83c81630f5+0x22>
2001431a:      	j	0x2001431c <core::cmp::impls::<impl core::cmp::Ord for usize>::cmp::h41a2cc83c81630f5+0x14>
2001431c:      	lw	a1, 12(sp)
2001431e:      	lw	a0, 16(sp)
20014320:      	lw	a0, 0(a0)
20014322:      	lw	a1, 0(a1)
20014324:      	beq	a0, a1, 0x20014344 <core::cmp::impls::<impl core::cmp::Ord for usize>::cmp::h41a2cc83c81630f5+0x3c>
20014328:      	j	0x2001433c <core::cmp::impls::<impl core::cmp::Ord for usize>::cmp::h41a2cc83c81630f5+0x34>
2001432a:      	li	a0, 255
2001432e:      	sb	a0, 23(sp)
20014332:      	j	0x20014334 <core::cmp::impls::<impl core::cmp::Ord for usize>::cmp::h41a2cc83c81630f5+0x2c>
20014334:      	lb	a0, 23(sp)
20014338:      	addi	sp, sp, 32
2001433a:      	ret
2001433c:      	li	a0, 1
2001433e:      	sb	a0, 23(sp)
20014342:      	j	0x2001434c <core::cmp::impls::<impl core::cmp::Ord for usize>::cmp::h41a2cc83c81630f5+0x44>
20014344:      	li	a0, 0
20014346:      	sb	a0, 23(sp)
2001434a:      	j	0x2001434c <core::cmp::impls::<impl core::cmp::Ord for usize>::cmp::h41a2cc83c81630f5+0x44>
2001434c:      	j	0x20014334 <core::cmp::impls::<impl core::cmp::Ord for usize>::cmp::h41a2cc83c81630f5+0x2c>

2001434e <core::cmp::impls::<impl core::cmp::PartialOrd for usize>::lt::hed793dfcccd799f3>:
2001434e:      	addi	sp, sp, -16
20014350:      	sw	a0, 8(sp)
20014352:      	sw	a1, 12(sp)
20014354:      	lw	a0, 0(a0)
20014356:      	lw	a1, 0(a1)
20014358:      	sltu	a0, a0, a1
2001435c:      	addi	sp, sp, 16
2001435e:      	ret

20014360 <core::ptr::drop_in_place<&core::iter::adapters::copied::Copied<core::slice::iter::Iter<u8>>>::hba75f9e64379e0d0>:
20014360:      	ret

20014362 <<T as core::any::Any>::type_id::h6d5fadc9889de291>:
20014362:      	lui	a0, 337864
20014366:      	addi	a0, a0, 854
2001436a:      	lui	a1, 536935
2001436e:      	addi	a1, a1, 1137
20014372:      	ret

20014374 <core::panicking::panic::hbbfd5969b5c86e6f>:
20014374:      	addi	sp, sp, -48
20014376:      	sw	ra, 44(sp)
20014378:      	sw	a0, 32(sp)
2001437a:      	sw	a1, 36(sp)
2001437c:      	addi	a0, sp, 32
2001437e:      	sw	a0, 8(sp)
20014380:      	li	a0, 1
20014382:      	sw	a0, 12(sp)
20014384:      	sw	zero, 16(sp)
20014386:      	lui	a0, 131094
2001438a:      	addi	a0, a0, -1204
2001438e:      	sw	a0, 24(sp)
20014390:      	sw	zero, 28(sp)
20014392:      	addi	a0, sp, 8
20014394:      	mv	a1, a2
20014396:      	auipc	ra, 0
2001439a:      	jalr	74(ra)
2001439e:      	unimp	

200143a0 <core::panicking::panic_bounds_check::h9db9f62c2a7a3e0f>:
200143a0:      	addi	sp, sp, -64
200143a2:      	sw	ra, 60(sp)
200143a4:      	sw	a0, 8(sp)
200143a6:      	sw	a1, 12(sp)
200143a8:      	addi	a0, sp, 12
200143aa:      	sw	a0, 40(sp)
200143ac:      	lui	a0, 131093
200143b0:      	addi	a0, a0, -1594
200143b4:      	sw	a0, 44(sp)
200143b6:      	addi	a1, sp, 8
200143b8:      	sw	a1, 48(sp)
200143ba:      	sw	a0, 52(sp)
200143bc:      	lui	a0, 131094
200143c0:      	addi	a0, a0, -1184
200143c4:      	sw	a0, 16(sp)
200143c6:      	li	a0, 2
200143c8:      	sw	a0, 20(sp)
200143ca:      	sw	zero, 24(sp)
200143cc:      	addi	a1, sp, 40
200143ce:      	sw	a1, 32(sp)
200143d0:      	sw	a0, 36(sp)
200143d2:      	addi	a0, sp, 16
200143d4:      	mv	a1, a2
200143d6:      	auipc	ra, 0
200143da:      	jalr	10(ra)
200143de:      	unimp	

200143e0 <core::panicking::panic_fmt::h62c187abafa44ea5>:
200143e0:      	addi	sp, sp, -32
200143e2:      	sw	ra, 28(sp)
200143e4:      	lui	a2, 131094
200143e8:      	addi	a2, a2, -1204
200143ec:      	sw	a2, 8(sp)
200143ee:      	lui	a2, 131094
200143f2:      	addi	a2, a2, -1168
200143f6:      	sw	a2, 12(sp)
200143f8:      	sw	a0, 16(sp)
200143fa:      	sw	a1, 20(sp)
200143fc:      	li	a0, 1
200143fe:      	sb	a0, 24(sp)
20014402:      	addi	a0, sp, 8
20014404:      	auipc	ra, 1048573
20014408:      	jalr	-768(ra)
2001440c:      	unimp	

2001440e <core::fmt::Formatter::pad_integral::ha10cb533649ec68e>:
2001440e:      	addi	sp, sp, -48
20014410:      	sw	ra, 44(sp)
20014412:      	sw	s0, 40(sp)
20014414:      	sw	s1, 36(sp)
20014416:      	sw	s2, 32(sp)
20014418:      	sw	s3, 28(sp)
2001441a:      	sw	s4, 24(sp)
2001441c:      	sw	s5, 20(sp)
2001441e:      	sw	s6, 16(sp)
20014420:      	sw	s7, 12(sp)
20014422:      	sw	s8, 8(sp)
20014424:      	sw	s9, 4(sp)
20014426:      	sw	s10, 0(sp)
20014428:      	mv	s3, a5
2001442a:      	mv	s2, a4
2001442c:      	mv	s6, a3
2001442e:      	mv	s5, a2
20014430:      	mv	s8, a0
20014432:      	beqz	a1, 0x2001447e <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x70>
20014434:      	lw	a0, 0(s8)
20014438:      	andi	a1, a0, 1
2001443c:      	lui	s4, 272
20014440:      	beqz	a1, 0x20014446 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x38>
20014442:      	li	s4, 43
20014446:      	add	s0, a1, s3
2001444a:      	andi	a0, a0, 4
2001444c:      	beqz	a0, 0x2001448e <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x80>
2001444e:      	li	a0, 16
20014450:      	bgeu	s6, a0, 0x20014498 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x8a>
20014454:      	li	a0, 0
20014456:      	beqz	s6, 0x20014472 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x64>
2001445a:      	li	a1, -65
2001445e:      	mv	a2, s6
20014460:      	mv	a3, s5
20014462:      	lb	a4, 0(a3)
20014466:      	addi	a3, a3, 1
20014468:      	slt	a4, a1, a4
2001446c:      	addi	a2, a2, -1
2001446e:      	add	a0, a0, a4
20014470:      	bnez	a2, 0x20014462 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x54>
20014472:      	add	s0, s0, a0
20014474:      	mv	s7, s5
20014476:      	lw	a0, 8(s8)
2001447a:      	bnez	a0, 0x200144ae <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0xa0>
2001447c:      	j	0x200144e0 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0xd2>
2001447e:      	lw	a0, 0(s8)
20014482:      	addi	s0, s3, 1
20014486:      	li	s4, 45
2001448a:      	andi	a0, a0, 4
2001448c:      	bnez	a0, 0x2001444e <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x40>
2001448e:      	li	s7, 0
20014490:      	lw	a0, 8(s8)
20014494:      	bnez	a0, 0x200144ae <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0xa0>
20014496:      	j	0x200144e0 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0xd2>
20014498:      	mv	a0, s5
2001449a:      	mv	a1, s6
2001449c:      	auipc	ra, 0
200144a0:      	jalr	568(ra)
200144a4:      	add	s0, s0, a0
200144a6:      	mv	s7, s5
200144a8:      	lw	a0, 8(s8)
200144ac:      	beqz	a0, 0x200144e0 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0xd2>
200144ae:      	lw	s1, 12(s8)
200144b2:      	bgeu	s0, s1, 0x200144e0 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0xd2>
200144b6:      	lbu	a0, 0(s8)
200144ba:      	andi	a0, a0, 8
200144bc:      	bnez	a0, 0x20014520 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x112>
200144be:      	lbu	a1, 32(s8)
200144c2:      	li	a2, 3
200144c4:      	li	a0, 1
200144c6:      	beq	a1, a2, 0x200144cc <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0xbe>
200144ca:      	mv	a0, a1
200144cc:      	andi	a1, a0, 3
200144d0:      	sub	a0, s1, s0
200144d4:      	beqz	a1, 0x2001456a <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x15c>
200144d6:      	li	a2, 1
200144d8:      	bne	a1, a2, 0x20014570 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x162>
200144dc:      	li	s9, 0
200144de:      	j	0x2001457a <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x16c>
200144e0:      	mv	a0, s8
200144e2:      	mv	a1, s4
200144e4:      	mv	a2, s7
200144e6:      	mv	a3, s6
200144e8:      	auipc	ra, 0
200144ec:      	jalr	416(ra)
200144f0:      	li	s5, 1
200144f2:      	bnez	a0, 0x20014618 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x20a>
200144f6:      	lw	a1, 28(s8)
200144fa:      	lw	a0, 24(s8)
200144fe:      	lw	a5, 12(a1)
20014500:      	mv	a1, s2
20014502:      	mv	a2, s3
20014504:      	lw	ra, 44(sp)
20014506:      	lw	s0, 40(sp)
20014508:      	lw	s1, 36(sp)
2001450a:      	lw	s2, 32(sp)
2001450c:      	lw	s3, 28(sp)
2001450e:      	lw	s4, 24(sp)
20014510:      	lw	s5, 20(sp)
20014512:      	lw	s6, 16(sp)
20014514:      	lw	s7, 12(sp)
20014516:      	lw	s8, 8(sp)
20014518:      	lw	s9, 4(sp)
2001451a:      	lw	s10, 0(sp)
2001451c:      	addi	sp, sp, 48
2001451e:      	jr	a5
20014520:      	lw	s9, 4(s8)
20014524:      	li	a0, 48
20014528:      	lbu	s10, 32(s8)
2001452c:      	sw	a0, 4(s8)
20014530:      	li	s5, 1
20014532:      	sb	s5, 32(s8)
20014536:      	mv	a0, s8
20014538:      	mv	a1, s4
2001453a:      	mv	a2, s7
2001453c:      	mv	a3, s6
2001453e:      	auipc	ra, 0
20014542:      	jalr	330(ra)
20014546:      	bnez	a0, 0x20014618 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x20a>
20014548:      	lbu	a1, 32(s8)
2001454c:      	li	a2, 3
2001454e:      	li	a0, 1
20014550:      	beq	a1, a2, 0x20014556 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x148>
20014554:      	mv	a0, a1
20014556:      	andi	a1, a0, 3
2001455a:      	sub	a0, s1, s0
2001455e:      	beqz	a1, 0x200145e8 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x1da>
20014560:      	li	a2, 1
20014562:      	bne	a1, a2, 0x200145ee <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x1e0>
20014566:      	li	s4, 0
20014568:      	j	0x200145f8 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x1ea>
2001456a:      	mv	s9, a0
2001456c:      	li	a0, 0
2001456e:      	j	0x2001457a <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x16c>
20014570:      	addi	a1, a0, 1
20014574:      	srli	a0, a0, 1
20014576:      	srli	s9, a1, 1
2001457a:      	lw	s5, 24(s8)
2001457e:      	lw	s1, 28(s8)
20014582:      	lw	s10, 4(s8)
20014586:      	addi	s0, a0, 1
2001458a:      	addi	s0, s0, -1
2001458c:      	beqz	s0, 0x2001459a <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x18c>
2001458e:      	lw	a2, 16(s1)
20014590:      	mv	a0, s5
20014592:      	mv	a1, s10
20014594:      	jalr	a2
20014596:      	beqz	a0, 0x2001458a <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x17c>
20014598:      	j	0x20014616 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x208>
2001459a:      	lui	a0, 272
2001459e:      	li	s5, 1
200145a0:      	beq	s10, a0, 0x20014618 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x20a>
200145a4:      	mv	a0, s8
200145a6:      	mv	a1, s4
200145a8:      	mv	a2, s7
200145aa:      	mv	a3, s6
200145ac:      	auipc	ra, 0
200145b0:      	jalr	220(ra)
200145b4:      	bnez	a0, 0x20014618 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x20a>
200145b6:      	lw	a1, 28(s8)
200145ba:      	lw	a0, 24(s8)
200145be:      	lw	a3, 12(a1)
200145c0:      	mv	a1, s2
200145c2:      	mv	a2, s3
200145c4:      	jalr	a3
200145c6:      	bnez	a0, 0x20014618 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x20a>
200145c8:      	lw	s2, 24(s8)
200145cc:      	lw	s1, 28(s8)
200145d0:      	li	s0, 0
200145d2:      	beq	s9, s0, 0x20014680 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x272>
200145d6:      	lw	a2, 16(s1)
200145d8:      	addi	s0, s0, 1
200145da:      	mv	a0, s2
200145dc:      	mv	a1, s10
200145de:      	jalr	a2
200145e0:      	beqz	a0, 0x200145d2 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x1c4>
200145e2:      	addi	a0, s0, -1
200145e6:      	j	0x20014682 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x274>
200145e8:      	mv	s4, a0
200145ea:      	li	a0, 0
200145ec:      	j	0x200145f8 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x1ea>
200145ee:      	addi	a1, a0, 1
200145f2:      	srli	a0, a0, 1
200145f4:      	srli	s4, a1, 1
200145f8:      	lw	s5, 24(s8)
200145fc:      	lw	s1, 28(s8)
20014600:      	lw	s6, 4(s8)
20014604:      	addi	s0, a0, 1
20014608:      	addi	s0, s0, -1
2001460a:      	beqz	s0, 0x20014636 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x228>
2001460c:      	lw	a2, 16(s1)
2001460e:      	mv	a0, s5
20014610:      	mv	a1, s6
20014612:      	jalr	a2
20014614:      	beqz	a0, 0x20014608 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x1fa>
20014616:      	li	s5, 1
20014618:      	mv	a0, s5
2001461a:      	lw	ra, 44(sp)
2001461c:      	lw	s0, 40(sp)
2001461e:      	lw	s1, 36(sp)
20014620:      	lw	s2, 32(sp)
20014622:      	lw	s3, 28(sp)
20014624:      	lw	s4, 24(sp)
20014626:      	lw	s5, 20(sp)
20014628:      	lw	s6, 16(sp)
2001462a:      	lw	s7, 12(sp)
2001462c:      	lw	s8, 8(sp)
2001462e:      	lw	s9, 4(sp)
20014630:      	lw	s10, 0(sp)
20014632:      	addi	sp, sp, 48
20014634:      	ret
20014636:      	lui	a0, 272
2001463a:      	li	s5, 1
2001463c:      	beq	s6, a0, 0x20014618 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x20a>
20014640:      	lw	a1, 28(s8)
20014644:      	lw	a0, 24(s8)
20014648:      	lw	a3, 12(a1)
2001464a:      	mv	a1, s2
2001464c:      	mv	a2, s3
2001464e:      	jalr	a3
20014650:      	bnez	a0, 0x20014618 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x20a>
20014652:      	lw	s2, 24(s8)
20014656:      	lw	s1, 28(s8)
2001465a:      	li	s0, 0
2001465c:      	beq	s4, s0, 0x20014674 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x266>
20014660:      	lw	a2, 16(s1)
20014662:      	addi	s0, s0, 1
20014664:      	mv	a0, s2
20014666:      	mv	a1, s6
20014668:      	jalr	a2
2001466a:      	beqz	a0, 0x2001465c <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x24e>
2001466c:      	addi	a0, s0, -1
20014670:      	bltu	a0, s4, 0x20014618 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x20a>
20014674:      	li	s5, 0
20014676:      	sw	s9, 4(s8)
2001467a:      	sb	s10, 32(s8)
2001467e:      	j	0x20014618 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x20a>
20014680:      	mv	a0, s9
20014682:      	sltu	s5, a0, s9
20014686:      	j	0x20014618 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x20a>

20014688 <core::fmt::Formatter::pad_integral::write_prefix::h9c2d4994c87ce818>:
20014688:      	addi	sp, sp, -16
2001468a:      	sw	ra, 12(sp)
2001468c:      	sw	s0, 8(sp)
2001468e:      	sw	s1, 4(sp)
20014690:      	sw	s2, 0(sp)
20014692:      	lui	a4, 272
20014696:      	mv	s2, a3
20014698:      	mv	s1, a2
2001469a:      	mv	s0, a0
2001469c:      	beq	a1, a4, 0x200146ae <core::fmt::Formatter::pad_integral::write_prefix::h9c2d4994c87ce818+0x26>
200146a0:      	lw	a2, 28(s0)
200146a2:      	lw	a0, 24(s0)
200146a4:      	lw	a2, 16(a2)
200146a6:      	jalr	a2
200146a8:      	mv	a1, a0
200146aa:      	li	a0, 1
200146ac:      	bnez	a1, 0x200146c8 <core::fmt::Formatter::pad_integral::write_prefix::h9c2d4994c87ce818+0x40>
200146ae:      	beqz	s1, 0x200146c6 <core::fmt::Formatter::pad_integral::write_prefix::h9c2d4994c87ce818+0x3e>
200146b0:      	lw	a1, 28(s0)
200146b2:      	lw	a0, 24(s0)
200146b4:      	lw	a5, 12(a1)
200146b6:      	mv	a1, s1
200146b8:      	mv	a2, s2
200146ba:      	lw	ra, 12(sp)
200146bc:      	lw	s0, 8(sp)
200146be:      	lw	s1, 4(sp)
200146c0:      	lw	s2, 0(sp)
200146c2:      	addi	sp, sp, 16
200146c4:      	jr	a5
200146c6:      	li	a0, 0
200146c8:      	lw	ra, 12(sp)
200146ca:      	lw	s0, 8(sp)
200146cc:      	lw	s1, 4(sp)
200146ce:      	lw	s2, 0(sp)
200146d0:      	addi	sp, sp, 16
200146d2:      	ret

200146d4 <core::str::count::do_count_chars::hcb0097adeed44bbf>:
200146d4:      	mv	a2, a0
200146d6:      	addi	a0, a0, 3
200146d8:      	andi	a0, a0, -4
200146da:      	sub	a7, a0, a2
200146de:      	bltu	a1, a7, 0x200146f4 <core::str::count::do_count_chars::hcb0097adeed44bbf+0x20>
200146e2:      	sub	a6, a1, a7
200146e6:      	sltiu	a3, a6, 4
200146ea:      	li	a4, 4
200146ec:      	sltu	a4, a4, a7
200146f0:      	or	a3, a3, a4
200146f2:      	beqz	a3, 0x2001470e <core::str::count::do_count_chars::hcb0097adeed44bbf+0x3a>
200146f4:      	li	a0, 0
200146f6:      	beqz	a1, 0x2001470c <core::str::count::do_count_chars::hcb0097adeed44bbf+0x38>
200146f8:      	li	a3, -65
200146fc:      	lb	a4, 0(a2)
20014700:      	addi	a2, a2, 1
20014702:      	slt	a4, a3, a4
20014706:      	addi	a1, a1, -1
20014708:      	add	a0, a0, a4
2001470a:      	bnez	a1, 0x200146fc <core::str::count::do_count_chars::hcb0097adeed44bbf+0x28>
2001470c:      	ret
2001470e:      	andi	a4, a6, 3
20014712:      	li	a3, 0
20014714:      	beqz	a7, 0x20014732 <core::str::count::do_count_chars::hcb0097adeed44bbf+0x5e>
20014718:      	sub	a0, a2, a0
2001471c:      	li	t0, -65
20014720:      	mv	a5, a2
20014722:      	lb	a1, 0(a5)
20014726:      	addi	a5, a5, 1
20014728:      	slt	a1, t0, a1
2001472c:      	addi	a0, a0, 1
2001472e:      	add	a3, a3, a1
20014730:      	bnez	a0, 0x20014722 <core::str::count::do_count_chars::hcb0097adeed44bbf+0x4e>
20014732:      	add	t0, a2, a7
20014736:      	li	a1, 0
20014738:      	beqz	a4, 0x20014756 <core::str::count::do_count_chars::hcb0097adeed44bbf+0x82>
2001473a:      	andi	a0, a6, -4
2001473e:      	add	a2, t0, a0
20014742:      	li	a0, -65
20014746:      	lb	a5, 0(a2)
2001474a:      	addi	a2, a2, 1
2001474c:      	slt	a5, a0, a5
20014750:      	addi	a4, a4, -1
20014752:      	add	a1, a1, a5
20014754:      	bnez	a4, 0x20014746 <core::str::count::do_count_chars::hcb0097adeed44bbf+0x72>
20014756:      	srli	a2, a6, 2
2001475a:      	lui	a0, 4112
2001475e:      	addi	t4, a0, 257
20014762:      	lui	a0, 4080
20014766:      	addi	a7, a0, 255
2001476a:      	lui	a0, 16
2001476c:      	addi	a6, a0, 1
20014770:      	add	a0, a1, a3
20014774:      	j	0x2001479c <core::str::count::do_count_chars::hcb0097adeed44bbf+0xc8>
20014776:      	slli	a1, t2, 2
2001477a:      	add	t0, t0, a1
2001477c:      	sub	a2, t1, t2
20014780:      	andi	a1, t2, 3
20014784:      	and	a3, a5, a7
20014788:      	srli	a4, a5, 8
2001478c:      	and	a4, a4, a7
20014790:      	add	a3, a3, a4
20014792:      	mul	a3, a3, a6
20014796:      	srli	a3, a3, 16
20014798:      	add	a0, a0, a3
2001479a:      	bnez	a1, 0x20014814 <core::str::count::do_count_chars::hcb0097adeed44bbf+0x140>
2001479c:      	beqz	a2, 0x2001470c <core::str::count::do_count_chars::hcb0097adeed44bbf+0x38>
2001479e:      	mv	t1, a2
200147a0:      	li	a1, 192
200147a4:      	mv	t2, a2
200147a6:      	bltu	a2, a1, 0x200147ae <core::str::count::do_count_chars::hcb0097adeed44bbf+0xda>
200147aa:      	li	t2, 192
200147ae:      	andi	a1, t2, 252
200147b2:      	slli	a1, a1, 2
200147b4:      	add	t3, t0, a1
200147b8:      	li	a5, 0
200147ba:      	beqz	a1, 0x20014776 <core::str::count::do_count_chars::hcb0097adeed44bbf+0xa2>
200147bc:      	mv	a1, t0
200147be:      	lw	a2, 0(a1)
200147c0:      	not	a3, a2
200147c4:      	srli	a3, a3, 7
200147c6:      	srli	a2, a2, 6
200147c8:      	lw	a4, 4(a1)
200147ca:      	or	a2, a2, a3
200147cc:      	and	a2, a2, t4
200147d0:      	add	a2, a2, a5
200147d2:      	not	a3, a4
200147d6:      	srli	a3, a3, 7
200147d8:      	srli	a4, a4, 6
200147da:      	lw	a5, 8(a1)
200147dc:      	or	a3, a3, a4
200147de:      	and	a3, a3, t4
200147e2:      	add	a2, a2, a3
200147e4:      	not	a3, a5
200147e8:      	srli	a3, a3, 7
200147ea:      	srli	a4, a5, 6
200147ee:      	lw	a5, 12(a1)
200147f0:      	or	a3, a3, a4
200147f2:      	and	a3, a3, t4
200147f6:      	add	a2, a2, a3
200147f8:      	not	a3, a5
200147fc:      	srli	a3, a3, 7
200147fe:      	srli	a4, a5, 6
20014802:      	or	a3, a3, a4
20014804:      	and	a3, a3, t4
20014808:      	addi	a1, a1, 16
2001480a:      	add	a5, a3, a2
2001480e:      	bne	a1, t3, 0x200147be <core::str::count::do_count_chars::hcb0097adeed44bbf+0xea>
20014812:      	j	0x20014776 <core::str::count::do_count_chars::hcb0097adeed44bbf+0xa2>
20014814:      	li	a1, 192
20014818:      	bltu	t1, a1, 0x20014820 <core::str::count::do_count_chars::hcb0097adeed44bbf+0x14c>
2001481c:      	li	t1, 192
20014820:      	li	a1, 0
20014822:      	andi	a2, t1, 3
20014826:      	slli	a2, a2, 2
20014828:      	lw	a3, 0(t3)
2001482c:      	addi	t3, t3, 4
2001482e:      	not	a4, a3
20014832:      	srli	a4, a4, 7
20014834:      	srli	a3, a3, 6
20014836:      	or	a3, a3, a4
20014838:      	and	a3, a3, t4
2001483c:      	addi	a2, a2, -4
2001483e:      	add	a1, a1, a3
20014840:      	bnez	a2, 0x20014828 <core::str::count::do_count_chars::hcb0097adeed44bbf+0x154>
20014842:      	and	a2, a1, a7
20014846:      	srli	a1, a1, 8
20014848:      	and	a1, a1, a7
2001484c:      	add	a1, a1, a2
2001484e:      	mul	a1, a1, a6
20014852:      	srli	a1, a1, 16
20014854:      	add	a0, a0, a1
20014856:      	ret

20014858 <core::fmt::num::imp::fmt_u32::h89559eb00af7d566>:
20014858:      	addi	sp, sp, -64
2001485a:      	sw	ra, 60(sp)
2001485c:      	sw	s0, 56(sp)
2001485e:      	sw	s1, 52(sp)
20014860:      	mv	a6, a2
20014862:      	srli	a3, a0, 4
20014866:      	li	a4, 625
2001486a:      	li	a2, 39
2001486e:      	bgeu	a3, a4, 0x20014892 <core::fmt::num::imp::fmt_u32::h89559eb00af7d566+0x3a>
20014872:      	li	a3, 99
20014876:      	bltu	a3, a0, 0x2001492a <core::fmt::num::imp::fmt_u32::h89559eb00af7d566+0xd2>
2001487a:      	li	a3, 10
2001487c:      	bgeu	a0, a3, 0x20014974 <core::fmt::num::imp::fmt_u32::h89559eb00af7d566+0x11c>
20014880:      	addi	a2, a2, -1
20014882:      	addi	a3, sp, 13
20014886:      	add	a3, a3, a2
20014888:      	addi	a0, a0, 48
2001488c:      	sb	a0, 0(a3)
20014890:      	j	0x20014998 <core::fmt::num::imp::fmt_u32::h89559eb00af7d566+0x140>
20014892:      	li	a2, 0
20014894:      	lui	a3, 858993
20014898:      	addi	t0, a3, 1881
2001489c:      	lui	a3, 2
2001489e:      	addi	t2, a3, 1808
200148a2:      	lui	a3, 1
200148a4:      	addi	t3, a3, 1147
200148a8:      	li	a7, 100
200148ac:      	lui	a4, 131094
200148b0:      	addi	t5, a4, -1152
200148b4:      	addi	t1, sp, 13
200148b8:      	lui	a5, 24414
200148bc:      	addi	t4, a5, 255
200148c0:      	mv	a3, a0
200148c2:      	mulhu	a0, a0, t0
200148c6:      	srli	a0, a0, 13
200148c8:      	mul	a5, a0, t2
200148cc:      	sub	a5, a3, a5
200148d0:      	slli	a4, a5, 16
200148d4:      	srli	a4, a4, 18
200148d6:      	mul	a4, a4, t3
200148da:      	srli	a4, a4, 17
200148dc:      	slli	t6, a4, 1
200148e0:      	mul	a4, a4, a7
200148e4:      	sub	a4, a5, a4
200148e8:      	slli	a4, a4, 17
200148ea:      	srli	s0, a4, 16
200148ee:      	add	a5, t6, t5
200148f2:      	add	a4, t1, a2
200148f6:      	lbu	t6, 0(a5)
200148fa:      	lb	a5, 1(a5)
200148fe:      	add	s0, s0, t5
20014900:      	lb	s1, 1(s0)
20014904:      	lbu	s0, 0(s0)
20014908:      	sb	a5, 36(a4)
2001490c:      	sb	t6, 35(a4)
20014910:      	sb	s1, 38(a4)
20014914:      	sb	s0, 37(a4)
20014918:      	addi	a2, a2, -4
2001491a:      	bltu	t4, a3, 0x200148c0 <core::fmt::num::imp::fmt_u32::h89559eb00af7d566+0x68>
2001491e:      	addi	a2, a2, 39
20014922:      	li	a3, 99
20014926:      	bgeu	a3, a0, 0x2001487a <core::fmt::num::imp::fmt_u32::h89559eb00af7d566+0x22>
2001492a:      	slli	a3, a0, 16
2001492e:      	srli	a3, a3, 18
20014930:      	lui	a4, 1
20014932:      	addi	a4, a4, 1147
20014936:      	mul	a3, a3, a4
2001493a:      	srli	a3, a3, 17
2001493c:      	li	a4, 100
20014940:      	mul	a4, a3, a4
20014944:      	sub	a0, a0, a4
20014946:      	slli	a0, a0, 17
20014948:      	srli	a0, a0, 16
2001494a:      	addi	a2, a2, -2
2001494c:      	lui	a4, 131094
20014950:      	addi	a4, a4, -1152
20014954:      	add	a0, a0, a4
20014956:      	lb	a4, 1(a0)
2001495a:      	lbu	a0, 0(a0)
2001495e:      	addi	a5, sp, 13
20014962:      	add	a5, a5, a2
20014964:      	sb	a4, 1(a5)
20014968:      	sb	a0, 0(a5)
2001496c:      	mv	a0, a3
2001496e:      	li	a3, 10
20014970:      	bltu	a0, a3, 0x20014880 <core::fmt::num::imp::fmt_u32::h89559eb00af7d566+0x28>
20014974:      	slli	a0, a0, 1
20014976:      	addi	a2, a2, -2
20014978:      	lui	a3, 131094
2001497c:      	addi	a3, a3, -1152
20014980:      	add	a0, a0, a3
20014982:      	lb	a3, 1(a0)
20014986:      	lbu	a0, 0(a0)
2001498a:      	addi	a4, sp, 13
2001498e:      	add	a4, a4, a2
20014990:      	sb	a3, 1(a4)
20014994:      	sb	a0, 0(a4)
20014998:      	addi	a0, sp, 13
2001499c:      	add	a4, a0, a2
200149a0:      	li	a0, 39
200149a4:      	sub	a5, a0, a2
200149a8:      	lui	a0, 131094
200149ac:      	addi	a2, a0, -1204
200149b0:      	mv	a0, a6
200149b2:      	li	a3, 0
200149b4:      	auipc	ra, 0
200149b8:      	jalr	-1446(ra)
200149bc:      	lw	ra, 60(sp)
200149be:      	lw	s0, 56(sp)
200149c0:      	lw	s1, 52(sp)
200149c2:      	addi	sp, sp, 64
200149c4:      	ret

200149c6 <core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt::h0f29cfa090d3fc38>:
200149c6:      	lw	a0, 0(a0)
200149c8:      	mv	a2, a1
200149ca:      	li	a1, 1
200149cc:      	auipc	t1, 0
200149d0:      	jr	-372(t1)

200149d4 <memset>:
200149d4:      	auipc	t1, 0
200149d8:      	jr	186(t1)

200149dc <compiler_builtins::mem::memcpy::h5d3d6687dd26525b>:
200149dc:      	li	a3, 15
200149de:      	bgeu	a3, a2, 0x20014a56 <compiler_builtins::mem::memcpy::h5d3d6687dd26525b+0x7a>
200149e2:      	neg	a3, a0
200149e6:      	andi	a6, a3, 3
200149ea:      	add	t2, a0, a6
200149ee:      	beqz	a6, 0x20014a06 <compiler_builtins::mem::memcpy::h5d3d6687dd26525b+0x2a>
200149f2:      	mv	a5, a0
200149f4:      	mv	a3, a1
200149f6:      	lb	a4, 0(a3)
200149fa:      	sb	a4, 0(a5)
200149fe:      	addi	a5, a5, 1
20014a00:      	addi	a3, a3, 1
20014a02:      	bltu	a5, t2, 0x200149f6 <compiler_builtins::mem::memcpy::h5d3d6687dd26525b+0x1a>
20014a06:      	add	a7, a1, a6
20014a0a:      	sub	a6, a2, a6
20014a0e:      	andi	t0, a6, -4
20014a12:      	andi	a1, a7, 3
20014a16:      	add	a3, t2, t0
20014a1a:      	beqz	a1, 0x20014a5c <compiler_builtins::mem::memcpy::h5d3d6687dd26525b+0x80>
20014a1c:      	blez	t0, 0x20014a70 <compiler_builtins::mem::memcpy::h5d3d6687dd26525b+0x94>
20014a20:      	slli	a1, a7, 3
20014a24:      	andi	t1, a1, 24
20014a28:      	andi	a4, a7, -4
20014a2c:      	lw	a2, 0(a4)
20014a2e:      	neg	a1, a1
20014a32:      	andi	t3, a1, 24
20014a36:      	addi	a5, a4, 4
20014a3a:      	lw	a4, 0(a5)
20014a3c:      	srl	a2, a2, t1
20014a40:      	sll	a1, a4, t3
20014a44:      	or	a1, a1, a2
20014a46:      	sw	a1, 0(t2)
20014a4a:      	addi	t2, t2, 4
20014a4c:      	addi	a5, a5, 4
20014a4e:      	mv	a2, a4
20014a50:      	bltu	t2, a3, 0x20014a3a <compiler_builtins::mem::memcpy::h5d3d6687dd26525b+0x5e>
20014a54:      	j	0x20014a70 <compiler_builtins::mem::memcpy::h5d3d6687dd26525b+0x94>
20014a56:      	mv	a3, a0
20014a58:      	bnez	a2, 0x20014a7a <compiler_builtins::mem::memcpy::h5d3d6687dd26525b+0x9e>
20014a5a:      	j	0x20014a8c <compiler_builtins::mem::memcpy::h5d3d6687dd26525b+0xb0>
20014a5c:      	blez	t0, 0x20014a70 <compiler_builtins::mem::memcpy::h5d3d6687dd26525b+0x94>
20014a60:      	mv	a1, a7
20014a62:      	lw	a2, 0(a1)
20014a64:      	sw	a2, 0(t2)
20014a68:      	addi	t2, t2, 4
20014a6a:      	addi	a1, a1, 4
20014a6c:      	bltu	t2, a3, 0x20014a62 <compiler_builtins::mem::memcpy::h5d3d6687dd26525b+0x86>
20014a70:      	add	a1, a7, t0
20014a74:      	andi	a2, a6, 3
20014a78:      	beqz	a2, 0x20014a8c <compiler_builtins::mem::memcpy::h5d3d6687dd26525b+0xb0>
20014a7a:      	add	a2, a2, a3
20014a7c:      	lb	a4, 0(a1)
20014a80:      	sb	a4, 0(a3)
20014a84:      	addi	a3, a3, 1
20014a86:      	addi	a1, a1, 1
20014a88:      	bltu	a3, a2, 0x20014a7c <compiler_builtins::mem::memcpy::h5d3d6687dd26525b+0xa0>
20014a8c:      	ret

20014a8e <compiler_builtins::mem::memset::h302349b36fde6027>:
20014a8e:      	li	a3, 15
20014a90:      	bgeu	a3, a2, 0x20014ad8 <compiler_builtins::mem::memset::h302349b36fde6027+0x4a>
20014a94:      	neg	a3, a0
20014a98:      	andi	a3, a3, 3
20014a9a:      	add	a4, a0, a3
20014a9e:      	beqz	a3, 0x20014aac <compiler_builtins::mem::memset::h302349b36fde6027+0x1e>
20014aa0:      	mv	a5, a0
20014aa2:      	sb	a1, 0(a5)
20014aa6:      	addi	a5, a5, 1
20014aa8:      	bltu	a5, a4, 0x20014aa2 <compiler_builtins::mem::memset::h302349b36fde6027+0x14>
20014aac:      	sub	a2, a2, a3
20014aae:      	andi	a5, a2, -4
20014ab2:      	add	a3, a4, a5
20014ab6:      	blez	a5, 0x20014ad2 <compiler_builtins::mem::memset::h302349b36fde6027+0x44>
20014aba:      	andi	a6, a1, 255
20014abe:      	lui	a5, 4112
20014ac2:      	addi	a5, a5, 257
20014ac6:      	mul	a5, a6, a5
20014aca:      	sw	a5, 0(a4)
20014acc:      	addi	a4, a4, 4
20014ace:      	bltu	a4, a3, 0x20014aca <compiler_builtins::mem::memset::h302349b36fde6027+0x3c>
20014ad2:      	andi	a2, a2, 3
20014ad4:      	bnez	a2, 0x20014adc <compiler_builtins::mem::memset::h302349b36fde6027+0x4e>
20014ad6:      	j	0x20014ae8 <compiler_builtins::mem::memset::h302349b36fde6027+0x5a>
20014ad8:      	mv	a3, a0
20014ada:      	beqz	a2, 0x20014ae8 <compiler_builtins::mem::memset::h302349b36fde6027+0x5a>
20014adc:      	add	a2, a2, a3
20014ade:      	sb	a1, 0(a3)
20014ae2:      	addi	a3, a3, 1
20014ae4:      	bltu	a3, a2, 0x20014ade <compiler_builtins::mem::memset::h302349b36fde6027+0x50>
20014ae8:      	ret

20014aea <memcpy>:
20014aea:      	auipc	t1, 0
20014aee:      	jr	-270(t1)

20014af2 <default_setup_interrupts>:
20014af2:      	auipc	t0, 1048571
20014af6:      	addi	t0, t0, 1562

20014afa <.L0 >:
20014afa:      	csrw	mtvec, t0

20014afe <.L0 >:
20014afe:      	ret

20014b00 <abort>:
20014b00:      	j	0x20014b00 <abort>
