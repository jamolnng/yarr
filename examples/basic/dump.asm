
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
20010060:      	j	0x20014a04 <abort>

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
20010098:      	jalr	-272(ra)
2001009c:      	sw	a0, 12(sp)
2001009e:      	j	0x200100a0 <_start_rust+0x1c>
200100a0:      	lw	a0, 12(sp)
200100a2:      	li	a1, 0
200100a4:      	bne	a0, a1, 0x200100b4 <_start_rust+0x30>
200100a8:      	j	0x200100aa <_start_rust+0x26>
200100aa:      	auipc	ra, 5
200100ae:      	jalr	-1716(ra)
200100b2:      	j	0x200100fa <_start_rust+0x76>
200100b4:      	auipc	ra, 3
200100b8:      	jalr	-306(ra)
200100bc:      	j	0x200100be <_start_rust+0x3a>
200100be:      	lui	a0, 524288
200100c2:      	addi	a0, a0, 88
200100c6:      	lui	a1, 524289
200100ca:      	addi	a1, a1, -1948
200100ce:      	auipc	ra, 3
200100d2:      	jalr	-182(ra)
200100d6:      	j	0x200100d8 <_start_rust+0x54>
200100d8:      	lui	a0, 524288
200100dc:      	mv	a0, a0
200100e0:      	lui	a1, 524288
200100e4:      	addi	a1, a1, 88
200100e8:      	lui	a2, 131094
200100ec:      	addi	a2, a2, -1416
200100f0:      	auipc	ra, 3
200100f4:      	jalr	-130(ra)
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
20010168:      	jalr	-436(ra)
2001016c:      	sw	a0, 28(sp)
2001016e:      	j	0x20010170 <_start_trap_rust+0x14>
20010170:      	addi	a0, sp, 28
20010172:      	auipc	ra, 3
20010176:      	jalr	-408(ra)
2001017a:      	sw	a0, 20(sp)
2001017c:      	j	0x2001017e <_start_trap_rust+0x22>
2001017e:      	lw	a0, 20(sp)
20010180:      	li	a1, 0
20010182:      	bne	a0, a1, 0x2001019a <_start_trap_rust+0x3e>
20010186:      	j	0x20010188 <_start_trap_rust+0x2c>
20010188:      	addi	a0, sp, 28
2001018a:      	auipc	ra, 3
2001018e:      	jalr	-384(ra)
20010192:      	mv	a1, a0
20010194:      	sw	a1, 16(sp)
20010196:      	sw	a0, 36(sp)
20010198:      	j	0x200101ac <_start_trap_rust+0x50>
2001019a:      	lw	a0, 24(sp)
2001019c:      	auipc	ra, 3
200101a0:      	jalr	-550(ra)
200101a4:      	j	0x200101a6 <_start_trap_rust+0x4a>
200101a6:      	lw	ra, 44(sp)
200101a8:      	addi	sp, sp, 48
200101aa:      	ret
200101ac:      	lw	a0, 16(sp)
200101ae:      	li	a1, 12
200101b0:      	bltu	a0, a1, 0x200101c0 <_start_trap_rust+0x64>
200101b4:      	j	0x200101b6 <_start_trap_rust+0x5a>
200101b6:      	auipc	ra, 3
200101ba:      	jalr	-568(ra)
200101be:      	j	0x200101a6 <_start_trap_rust+0x4a>
200101c0:      	lw	a1, 16(sp)
200101c2:      	li	a0, 11
200101c4:      	bltu	a0, a1, 0x200101e6 <_start_trap_rust+0x8a>
200101c8:      	j	0x200101ca <_start_trap_rust+0x6e>
200101ca:      	lw	a0, 16(sp)
200101cc:      	lui	a1, 131093
200101d0:      	addi	a1, a1, 1756
200101d4:      	slli	a0, a0, 2
200101d6:      	add	a0, a0, a1
200101d8:      	sw	a0, 12(sp)
200101da:      	sw	a0, 40(sp)
200101dc:      	lw	a0, 0(a0)
200101de:      	li	a1, 0
200101e0:      	beq	a0, a1, 0x200101fc <_start_trap_rust+0xa0>
200101e4:      	j	0x20010206 <_start_trap_rust+0xaa>
200101e6:      	lw	a0, 16(sp)
200101e8:      	lui	a1, 131093
200101ec:      	addi	a2, a1, 1740
200101f0:      	li	a1, 12
200101f2:      	auipc	ra, 4
200101f6:      	jalr	178(ra)
200101fa:      	unimp	
200101fc:      	auipc	ra, 3
20010200:      	jalr	-638(ra)
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
20010218:      	lbu	a0, -1959(a0)
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
200102a2:      	addi	a0, a0, -1408
200102a6:      	lui	a1, 131093
200102aa:      	addi	a2, a1, -1428
200102ae:      	li	a1, 35
200102b2:      	auipc	ra, 4
200102b6:      	jalr	-58(ra)
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
2001034c:      	addi	a0, a0, -1408
20010350:      	lui	a1, 131093
20010354:      	addi	a2, a1, -1428
20010358:      	li	a1, 35
2001035c:      	auipc	ra, 4
20010360:      	jalr	-228(ra)
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
200103f6:      	addi	a0, a0, -1408
200103fa:      	lui	a1, 131093
200103fe:      	addi	a2, a1, -1428
20010402:      	li	a1, 35
20010406:      	auipc	ra, 4
2001040a:      	jalr	-398(ra)
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
200104f6:      	addi	a1, a1, -1372
200104fa:      	add	a0, a0, a1
200104fc:      	lw	a0, 0(a0)
200104fe:      	jr	a0
20010500:      	unimp	

20010502 <.LBB0_3>:
20010502:      	lui	a0, 131093
20010506:      	addi	a1, a0, -1300
2001050a:      	lui	a0, 131093
2001050e:      	addi	a3, a0, -1292
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
20010544:      	addi	a1, a0, -1212
20010548:      	addi	a0, sp, 16
2001054a:      	auipc	ra, 4
2001054e:      	jalr	-614(ra)
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
20010578:      	jalr	-810(ra)
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
200105ac:      	jalr	-978(ra)
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
200105e0:      	jalr	962(ra)
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
2001060a:      	addi	a0, a0, -1088
2001060e:      	lui	a1, 131093
20010612:      	addi	a2, a1, -1104
20010616:      	li	a1, 25
20010618:      	auipc	ra, 4
2001061c:      	jalr	-928(ra)
20010620:      	unimp	
20010622:      	lw	a0, 20(sp)
20010624:      	sw	a0, 56(sp)
20010626:      	addi	a0, sp, 32
20010628:      	sw	a0, 184(sp)
2001062a:      	j	0x2001064a <e310x_hal::serial::Serial<UART,(TX,RX)>::new::h39509290520bb851+0x7c>
2001062c:      	lui	a0, 131093
20010630:      	addi	a0, a0, -1056
20010634:      	lui	a1, 131093
20010638:      	addi	a2, a1, -1104
2001063c:      	li	a1, 33
20010640:      	auipc	ra, 4
20010644:      	jalr	-968(ra)
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
20010674:      	jalr	-1308(ra)
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
200106b0:      	jalr	-1368(ra)
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
200106e6:      	jalr	-1422(ra)
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
2001071c:      	jalr	-1476(ra)
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
20010874:      	addi	a0, a0, -1960
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
20010892:      	jalr	1002(ra)
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
200108c0:      	jalr	950(ra)
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
200108da:      	jalr	936(ra)
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
20010978:      	sb	a0, -1959(a1)
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

20010996 <basic::PROCESS_LIST::{{closure}}::ha9c7feab847ca454>:
20010996:      	addi	sp, sp, -48
20010998:      	sw	ra, 44(sp)
2001099a:      	sw	a0, 40(sp)
2001099c:      	j	0x2001099e <basic::PROCESS_LIST::{{closure}}::ha9c7feab847ca454+0x8>
2001099e:      	lui	a0, 65554
200109a2:      	li	a1, 3
200109a4:      	auipc	ra, 0
200109a8:      	jalr	1836(ra)
200109ac:      	sw	a0, 12(sp)
200109ae:      	j	0x200109b0 <basic::PROCESS_LIST::{{closure}}::ha9c7feab847ca454+0x1a>
200109b0:      	lw	a0, 12(sp)
200109b2:      	lui	a1, 1024
200109b6:      	xor	a2, a0, a1
200109ba:      	sw	a2, 12(sp)
200109bc:      	lui	a0, 65554
200109c0:      	li	a1, 3
200109c2:      	auipc	ra, 0
200109c6:      	jalr	1750(ra)
200109ca:      	j	0x200109cc <basic::PROCESS_LIST::{{closure}}::ha9c7feab847ca454+0x36>
200109cc:      	li	a0, 0
200109ce:      	sw	a0, 16(sp)
200109d0:      	lui	a1, 1953
200109d4:      	addi	a1, a1, 512
200109d8:      	sw	a1, 20(sp)
200109da:      	auipc	ra, 0
200109de:      	jalr	838(ra)
200109e2:      	sw	a0, 4(sp)
200109e4:      	sw	a1, 8(sp)
200109e6:      	j	0x200109e8 <basic::PROCESS_LIST::{{closure}}::ha9c7feab847ca454+0x52>
200109e8:      	lw	a0, 8(sp)
200109ea:      	lw	a1, 4(sp)
200109ec:      	sw	a1, 24(sp)
200109ee:      	sw	a0, 28(sp)
200109f0:      	j	0x200109f2 <basic::PROCESS_LIST::{{closure}}::ha9c7feab847ca454+0x5c>
200109f2:      	addi	a0, sp, 24
200109f4:      	auipc	ra, 0
200109f8:      	jalr	782(ra)
200109fc:      	sw	a0, 32(sp)
200109fe:      	sw	a1, 36(sp)
20010a00:      	j	0x20010a02 <basic::PROCESS_LIST::{{closure}}::ha9c7feab847ca454+0x6c>
20010a02:      	lw	a0, 32(sp)
20010a04:      	li	a1, 0
20010a06:      	beq	a0, a1, 0x2001099e <basic::PROCESS_LIST::{{closure}}::ha9c7feab847ca454+0x8>
20010a0a:      	j	0x20010a0c <basic::PROCESS_LIST::{{closure}}::ha9c7feab847ca454+0x76>
20010a0c:      	j	0x200109f2 <basic::PROCESS_LIST::{{closure}}::ha9c7feab847ca454+0x5c>
20010a0e:      	unimp	

20010a10 <basic::PROCESS_LIST::{{closure}}::hfdcd996f60e5bb19>:
20010a10:      	addi	sp, sp, -48
20010a12:      	sw	ra, 44(sp)
20010a14:      	sw	a0, 40(sp)
20010a16:      	j	0x20010a18 <basic::PROCESS_LIST::{{closure}}::hfdcd996f60e5bb19+0x8>
20010a18:      	lui	a0, 65554
20010a1c:      	li	a1, 3
20010a1e:      	auipc	ra, 0
20010a22:      	jalr	1714(ra)
20010a26:      	sw	a0, 12(sp)
20010a28:      	j	0x20010a2a <basic::PROCESS_LIST::{{closure}}::hfdcd996f60e5bb19+0x1a>
20010a2a:      	lw	a0, 12(sp)
20010a2c:      	lui	a1, 128
20010a30:      	xor	a2, a0, a1
20010a34:      	sw	a2, 12(sp)
20010a36:      	lui	a0, 65554
20010a3a:      	li	a1, 3
20010a3c:      	auipc	ra, 0
20010a40:      	jalr	1628(ra)
20010a44:      	j	0x20010a46 <basic::PROCESS_LIST::{{closure}}::hfdcd996f60e5bb19+0x36>
20010a46:      	li	a0, 0
20010a48:      	sw	a0, 16(sp)
20010a4a:      	lui	a1, 977
20010a4e:      	addi	a1, a1, -1792
20010a52:      	sw	a1, 20(sp)
20010a54:      	auipc	ra, 0
20010a58:      	jalr	716(ra)
20010a5c:      	sw	a0, 4(sp)
20010a5e:      	sw	a1, 8(sp)
20010a60:      	j	0x20010a62 <basic::PROCESS_LIST::{{closure}}::hfdcd996f60e5bb19+0x52>
20010a62:      	lw	a0, 8(sp)
20010a64:      	lw	a1, 4(sp)
20010a66:      	sw	a1, 24(sp)
20010a68:      	sw	a0, 28(sp)
20010a6a:      	j	0x20010a6c <basic::PROCESS_LIST::{{closure}}::hfdcd996f60e5bb19+0x5c>
20010a6c:      	addi	a0, sp, 24
20010a6e:      	auipc	ra, 0
20010a72:      	jalr	660(ra)
20010a76:      	sw	a0, 32(sp)
20010a78:      	sw	a1, 36(sp)
20010a7a:      	j	0x20010a7c <basic::PROCESS_LIST::{{closure}}::hfdcd996f60e5bb19+0x6c>
20010a7c:      	lw	a0, 32(sp)
20010a7e:      	li	a1, 0
20010a80:      	beq	a0, a1, 0x20010a18 <basic::PROCESS_LIST::{{closure}}::hfdcd996f60e5bb19+0x8>
20010a84:      	j	0x20010a86 <basic::PROCESS_LIST::{{closure}}::hfdcd996f60e5bb19+0x76>
20010a86:      	j	0x20010a6c <basic::PROCESS_LIST::{{closure}}::hfdcd996f60e5bb19+0x5c>
20010a88:      	unimp	

20010a8a <basic::PROCESS_LIST::{{closure}}::h2ee4392098ee1cd0>:
20010a8a:      	addi	sp, sp, -48
20010a8c:      	sw	ra, 44(sp)
20010a8e:      	sw	a0, 40(sp)
20010a90:      	j	0x20010a92 <basic::PROCESS_LIST::{{closure}}::h2ee4392098ee1cd0+0x8>
20010a92:      	lui	a0, 65554
20010a96:      	li	a1, 3
20010a98:      	auipc	ra, 0
20010a9c:      	jalr	1592(ra)
20010aa0:      	sw	a0, 12(sp)
20010aa2:      	j	0x20010aa4 <basic::PROCESS_LIST::{{closure}}::h2ee4392098ee1cd0+0x1a>
20010aa4:      	lw	a0, 12(sp)
20010aa6:      	lui	a1, 512
20010aaa:      	xor	a2, a0, a1
20010aae:      	sw	a2, 12(sp)
20010ab0:      	lui	a0, 65554
20010ab4:      	li	a1, 3
20010ab6:      	auipc	ra, 0
20010aba:      	jalr	1506(ra)
20010abe:      	j	0x20010ac0 <basic::PROCESS_LIST::{{closure}}::h2ee4392098ee1cd0+0x36>
20010ac0:      	li	a0, 0
20010ac2:      	sw	a0, 16(sp)
20010ac4:      	lui	a1, 488
20010ac8:      	addi	a1, a1, 1152
20010acc:      	sw	a1, 20(sp)
20010ace:      	auipc	ra, 0
20010ad2:      	jalr	594(ra)
20010ad6:      	sw	a0, 4(sp)
20010ad8:      	sw	a1, 8(sp)
20010ada:      	j	0x20010adc <basic::PROCESS_LIST::{{closure}}::h2ee4392098ee1cd0+0x52>
20010adc:      	lw	a0, 8(sp)
20010ade:      	lw	a1, 4(sp)
20010ae0:      	sw	a1, 24(sp)
20010ae2:      	sw	a0, 28(sp)
20010ae4:      	j	0x20010ae6 <basic::PROCESS_LIST::{{closure}}::h2ee4392098ee1cd0+0x5c>
20010ae6:      	addi	a0, sp, 24
20010ae8:      	auipc	ra, 0
20010aec:      	jalr	538(ra)
20010af0:      	sw	a0, 32(sp)
20010af2:      	sw	a1, 36(sp)
20010af4:      	j	0x20010af6 <basic::PROCESS_LIST::{{closure}}::h2ee4392098ee1cd0+0x6c>
20010af6:      	lw	a0, 32(sp)
20010af8:      	li	a1, 0
20010afa:      	beq	a0, a1, 0x20010a92 <basic::PROCESS_LIST::{{closure}}::h2ee4392098ee1cd0+0x8>
20010afe:      	j	0x20010b00 <basic::PROCESS_LIST::{{closure}}::h2ee4392098ee1cd0+0x76>
20010b00:      	j	0x20010ae6 <basic::PROCESS_LIST::{{closure}}::h2ee4392098ee1cd0+0x5c>
20010b02:      	unimp	

20010b04 <basic::PROCESS_LIST::{{closure}}::h4d8954b3a4cd623b>:
20010b04:      	addi	sp, sp, -16
20010b06:      	sw	a0, 12(sp)
20010b08:      	auipc	ra, 2
20010b0c:      	jalr	382(ra)
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
20010b7c:      	addi	a1, a0, -1008
20010b80:      	lui	a0, 131093
20010b84:      	addi	a3, a0, -1000
20010b88:      	addi	a0, sp, 24
20010b8a:      	li	a2, 1
20010b8c:      	li	a4, 0
20010b8e:      	auipc	ra, 0
20010b92:      	jalr	-124(ra)
20010b96:      	j	0x20010b98 <core::fmt::Arguments::new_v1::h32fee18044ce6322+0x86>
20010b98:      	lui	a0, 131093
20010b9c:      	addi	a1, a0, -924
20010ba0:      	addi	a0, sp, 24
20010ba2:      	auipc	ra, 3
20010ba6:      	jalr	1858(ra)
20010baa:      	unimp	

20010bac <core::intrinsics::write_bytes::h12ba71749b98a9b5>:
20010bac:      	addi	sp, sp, -16
20010bae:      	sw	ra, 12(sp)
20010bb0:      	sw	a0, 0(sp)
20010bb2:      	sb	a1, 7(sp)
20010bb6:      	sw	a2, 8(sp)
20010bb8:      	li	a2, 0
20010bba:      	auipc	ra, 4
20010bbe:      	jalr	-738(ra)
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
20010ddc:      	jalr	-1002(ra)
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
20010e70:      	addi	a0, a0, -908
20010e74:      	li	a1, 43
20010e78:      	auipc	ra, 3
20010e7c:      	jalr	1024(ra)
20010e80:      	unimp	
20010e82:      	lw	a0, 8(sp)
20010e84:      	lw	a1, 4(sp)
20010e86:      	addi	a1, a1, 4
20010e88:      	li	a2, 36
20010e8c:      	auipc	ra, 4
20010e90:      	jalr	-1182(ra)
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
20010ed8:      	jalr	-592(ra)
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
20010f3c:      	jalr	-692(ra)
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
20010fec:      	jalr	-1024(ra)
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
2001102a:      	addi	a0, a0, -865
2001102e:      	lui	a1, 131093
20011032:      	addi	a2, a1, -732
20011036:      	li	a1, 40
2001103a:      	auipc	ra, 3
2001103e:      	jalr	574(ra)
20011042:      	unimp	
20011044:      	lw	a0, 8(sp)
20011046:      	lw	a1, 12(sp)
20011048:      	and	a0, a0, a1
2001104a:      	snez	a0, a0
2001104e:      	addi	sp, sp, 32
20011050:      	ret
20011052:      	lui	a0, 131093
20011056:      	addi	a0, a0, -704
2001105a:      	lui	a1, 131093
2001105e:      	addi	a2, a1, -732
20011062:      	li	a1, 35
20011066:      	auipc	ra, 3
2001106a:      	jalr	530(ra)
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
20011126:      	addi	sp, sp, -144
20011128:      	sw	ra, 140(sp)
2001112a:      	addi	a0, sp, 64
2001112c:      	auipc	ra, 1048575
20011130:      	jalr	910(ra)
20011134:      	j	0x20011136 <main+0x10>
20011136:      	lui	a0, 131093
2001113a:      	addi	a2, a0, -652
2001113e:      	addi	a0, sp, 24
20011140:      	addi	a1, sp, 64
20011142:      	auipc	ra, 0
20011146:      	jalr	-752(ra)
2001114a:      	j	0x2001114c <main+0x26>
2001114c:      	li	a0, 320
20011150:      	auipc	ra, 2
20011154:      	jalr	-1324(ra)
20011158:      	sw	a0, 20(sp)
2001115a:      	j	0x2001115c <main+0x36>
2001115c:      	lw	a0, 20(sp)
2001115e:      	auipc	ra, 2
20011162:      	jalr	-1328(ra)
20011166:      	sw	a0, 16(sp)
20011168:      	j	0x2001116a <main+0x44>
2001116a:      	lw	a0, 16(sp)
2001116c:      	auipc	ra, 0
20011170:      	jalr	338(ra)
20011174:      	mv	a2, a0
20011176:      	sw	a2, 8(sp)
20011178:      	mv	a2, a1
2001117a:      	sw	a2, 12(sp)
2001117c:      	sw	a0, 128(sp)
2001117e:      	sw	a1, 132(sp)
20011180:      	j	0x20011182 <main+0x5c>
20011182:      	lui	a0, 28
20011184:      	addi	a0, a0, 512
20011188:      	auipc	ra, 2
2001118c:      	jalr	-1390(ra)
20011190:      	sw	a0, 4(sp)
20011192:      	j	0x20011194 <main+0x6e>
20011194:      	lw	a2, 12(sp)
20011196:      	lw	a1, 8(sp)
20011198:      	lw	a0, 4(sp)
2001119a:      	auipc	ra, 1048575
2001119e:      	jalr	1666(ra)
200111a2:      	j	0x200111a4 <main+0x7e>
200111a4:      	li	a0, 0
200111a6:      	sb	a0, 111(sp)
200111aa:      	auipc	ra, 2
200111ae:      	jalr	-22(ra)
200111b2:      	unimp	

200111b4 <<T as core::convert::From<T>>::from::h9d31b95705c1a4a2>:
200111b4:      	addi	sp, sp, -16
200111b6:      	sw	a0, 12(sp)
200111b8:      	addi	sp, sp, 16
200111ba:      	ret

200111bc <<T as core::convert::Into<U>>::into::he31249aa45dadf92>:
200111bc:      	addi	sp, sp, -16
200111be:      	sw	ra, 12(sp)
200111c0:      	sw	a0, 8(sp)
200111c2:      	auipc	ra, 0
200111c6:      	jalr	-14(ra)
200111ca:      	sw	a0, 4(sp)
200111cc:      	j	0x200111ce <<T as core::convert::Into<U>>::into::he31249aa45dadf92+0x12>
200111ce:      	lw	a0, 4(sp)
200111d0:      	lw	ra, 12(sp)
200111d2:      	addi	sp, sp, 16
200111d4:      	ret

200111d6 <core::sync::atomic::atomic_and::haf0b9798a20e00ef>:
200111d6:      	addi	sp, sp, -32
200111d8:      	sw	a1, 4(sp)
200111da:      	sw	a0, 8(sp)
200111dc:      	sb	a2, 19(sp)
200111e0:      	sw	a0, 24(sp)
200111e2:      	sw	a1, 28(sp)
200111e4:      	andi	a0, a2, 255
200111e8:      	sw	a0, 12(sp)
200111ea:      	lw	a0, 12(sp)
200111ec:      	slli	a0, a0, 2
200111ee:      	lui	a1, 131093
200111f2:      	addi	a1, a1, -636
200111f6:      	add	a0, a0, a1
200111f8:      	lw	a0, 0(a0)
200111fa:      	jr	a0
200111fc:      	unimp	

200111fe <.LBB0_3>:
200111fe:      	lw	a0, 8(sp)
20011200:      	lw	a1, 4(sp)
20011202:      	amoand.w	a0, a1, (a0)
20011206:      	sw	a0, 20(sp)
20011208:      	j	0x20011248 <.LBB0_7+0x1a>

2001120a <.LBB0_4>:
2001120a:      	lw	a0, 8(sp)
2001120c:      	lw	a1, 4(sp)
2001120e:      	amoand.w.rl	a0, a1, (a0)
20011212:      	sw	a0, 20(sp)
20011214:      	j	0x20011246 <.LBB0_7+0x18>

20011216 <.LBB0_5>:
20011216:      	lw	a0, 8(sp)
20011218:      	lw	a1, 4(sp)
2001121a:      	amoand.w.aq	a0, a1, (a0)
2001121e:      	sw	a0, 20(sp)
20011220:      	j	0x20011244 <.LBB0_7+0x16>

20011222 <.LBB0_6>:
20011222:      	lw	a0, 8(sp)
20011224:      	lw	a1, 4(sp)
20011226:      	amoand.w.aqrl	a0, a1, (a0)
2001122a:      	sw	a0, 20(sp)
2001122c:      	j	0x20011242 <.LBB0_7+0x14>

2001122e <.LBB0_7>:
2001122e:      	lw	a0, 8(sp)
20011230:      	lw	a1, 4(sp)
20011232:      	amoand.w.aqrl	a0, a1, (a0)
20011236:      	sw	a0, 20(sp)
20011238:      	j	0x2001123a <.LBB0_7+0xc>
2001123a:      	j	0x2001123c <.LBB0_7+0xe>
2001123c:      	lw	a0, 20(sp)
2001123e:      	addi	sp, sp, 32
20011240:      	ret
20011242:      	j	0x2001123c <.LBB0_7+0xe>
20011244:      	j	0x2001123c <.LBB0_7+0xe>
20011246:      	j	0x2001123c <.LBB0_7+0xe>
20011248:      	j	0x2001123c <.LBB0_7+0xe>

2001124a <core::sync::atomic::atomic_or::h38230ce02a4bf642>:
2001124a:      	addi	sp, sp, -32
2001124c:      	sw	a1, 4(sp)
2001124e:      	sw	a0, 8(sp)
20011250:      	sb	a2, 19(sp)
20011254:      	sw	a0, 24(sp)
20011256:      	sw	a1, 28(sp)
20011258:      	andi	a0, a2, 255
2001125c:      	sw	a0, 12(sp)
2001125e:      	lw	a0, 12(sp)
20011260:      	slli	a0, a0, 2
20011262:      	lui	a1, 131093
20011266:      	addi	a1, a1, -616
2001126a:      	add	a0, a0, a1
2001126c:      	lw	a0, 0(a0)
2001126e:      	jr	a0
20011270:      	unimp	

20011272 <.LBB3_3>:
20011272:      	lw	a0, 8(sp)
20011274:      	lw	a1, 4(sp)
20011276:      	amoor.w	a0, a1, (a0)
2001127a:      	sw	a0, 20(sp)
2001127c:      	j	0x200112bc <.LBB3_7+0x1a>

2001127e <.LBB3_4>:
2001127e:      	lw	a0, 8(sp)
20011280:      	lw	a1, 4(sp)
20011282:      	amoor.w.rl	a0, a1, (a0)
20011286:      	sw	a0, 20(sp)
20011288:      	j	0x200112ba <.LBB3_7+0x18>

2001128a <.LBB3_5>:
2001128a:      	lw	a0, 8(sp)
2001128c:      	lw	a1, 4(sp)
2001128e:      	amoor.w.aq	a0, a1, (a0)
20011292:      	sw	a0, 20(sp)
20011294:      	j	0x200112b8 <.LBB3_7+0x16>

20011296 <.LBB3_6>:
20011296:      	lw	a0, 8(sp)
20011298:      	lw	a1, 4(sp)
2001129a:      	amoor.w.aqrl	a0, a1, (a0)
2001129e:      	sw	a0, 20(sp)
200112a0:      	j	0x200112b6 <.LBB3_7+0x14>

200112a2 <.LBB3_7>:
200112a2:      	lw	a0, 8(sp)
200112a4:      	lw	a1, 4(sp)
200112a6:      	amoor.w.aqrl	a0, a1, (a0)
200112aa:      	sw	a0, 20(sp)
200112ac:      	j	0x200112ae <.LBB3_7+0xc>
200112ae:      	j	0x200112b0 <.LBB3_7+0xe>
200112b0:      	lw	a0, 20(sp)
200112b2:      	addi	sp, sp, 32
200112b4:      	ret
200112b6:      	j	0x200112b0 <.LBB3_7+0xe>
200112b8:      	j	0x200112b0 <.LBB3_7+0xe>
200112ba:      	j	0x200112b0 <.LBB3_7+0xe>
200112bc:      	j	0x200112b0 <.LBB3_7+0xe>

200112be <hifive1::clock::configure::h321eef0acf83927a>:
200112be:      	addi	sp, sp, -160
200112c0:      	sw	ra, 156(sp)
200112c2:      	sw	a0, 28(sp)
200112c4:      	sw	a0, 132(sp)
200112c6:      	addi	a0, sp, 32
200112c8:      	auipc	ra, 1
200112cc:      	jalr	2000(ra)
200112d0:      	j	0x200112d2 <hifive1::clock::configure::h321eef0acf83927a+0x14>
200112d2:      	lw	a0, 40(sp)
200112d4:      	sw	a0, 88(sp)
200112d6:      	lw	a0, 36(sp)
200112d8:      	sw	a0, 84(sp)
200112da:      	lw	a0, 32(sp)
200112dc:      	sw	a0, 80(sp)
200112de:      	lui	a0, 3906
200112e2:      	addi	a2, a0, 1024
200112e6:      	sw	a2, 96(sp)
200112e8:      	addi	a0, sp, 64
200112ea:      	addi	a1, sp, 80
200112ec:      	auipc	ra, 0
200112f0:      	jalr	216(ra)
200112f4:      	j	0x200112f6 <hifive1::clock::configure::h321eef0acf83927a+0x38>
200112f6:      	lw	a2, 28(sp)
200112f8:      	addi	a0, sp, 48
200112fa:      	addi	a1, sp, 64
200112fc:      	auipc	ra, 0
20011300:      	jalr	308(ra)
20011304:      	j	0x20011306 <hifive1::clock::configure::h321eef0acf83927a+0x48>
20011306:      	auipc	ra, 1
2001130a:      	jalr	1966(ra)
2001130e:      	mv	a2, a0
20011310:      	sw	a2, 20(sp)
20011312:      	mv	a2, a1
20011314:      	sw	a2, 24(sp)
20011316:      	sw	a0, 136(sp)
20011318:      	sw	a1, 140(sp)
2001131a:      	j	0x2001131c <hifive1::clock::configure::h321eef0acf83927a+0x5e>
2001131c:      	lw	a1, 24(sp)
2001131e:      	lw	a0, 20(sp)
20011320:      	lui	a2, 8
20011322:      	sw	a2, 100(sp)
20011324:      	auipc	ra, 0
20011328:      	jalr	64(ra)
2001132c:      	mv	a2, a0
2001132e:      	sw	a2, 12(sp)
20011330:      	mv	a2, a1
20011332:      	sw	a2, 16(sp)
20011334:      	sw	a0, 144(sp)
20011336:      	sw	a1, 148(sp)
20011338:      	j	0x2001133a <hifive1::clock::configure::h321eef0acf83927a+0x7c>
2001133a:      	lw	a2, 16(sp)
2001133c:      	lw	a1, 12(sp)
2001133e:      	lw	a0, 56(sp)
20011340:      	sw	a0, 112(sp)
20011342:      	lw	a0, 52(sp)
20011344:      	sw	a0, 108(sp)
20011346:      	lw	a0, 48(sp)
20011348:      	sw	a0, 104(sp)
2001134a:      	addi	a0, sp, 104
2001134c:      	auipc	ra, 1
20011350:      	jalr	1542(ra)
20011354:      	sw	a0, 4(sp)
20011356:      	sw	a1, 8(sp)
20011358:      	j	0x2001135a <hifive1::clock::configure::h321eef0acf83927a+0x9c>
2001135a:      	lw	a1, 8(sp)
2001135c:      	lw	a0, 4(sp)
2001135e:      	lw	ra, 156(sp)
20011360:      	addi	sp, sp, 160
20011362:      	ret

20011364 <e310x_hal::clock::AonClk::use_external::h5885aac8f7939750>:
20011364:      	addi	sp, sp, -48
20011366:      	sw	ra, 44(sp)
20011368:      	sw	a2, 8(sp)
2001136a:      	mv	a2, a0
2001136c:      	lw	a0, 8(sp)
2001136e:      	sw	a2, 16(sp)
20011370:      	sw	a1, 20(sp)
20011372:      	sw	a0, 36(sp)
20011374:      	auipc	ra, 0
20011378:      	jalr	-440(ra)
2001137c:      	mv	a1, a0
2001137e:      	sw	a1, 12(sp)
20011380:      	sw	a0, 40(sp)
20011382:      	j	0x20011384 <e310x_hal::clock::AonClk::use_external::h5885aac8f7939750+0x20>
20011384:      	lw	a1, 12(sp)
20011386:      	lui	a0, 122
2001138a:      	addi	a0, a0, 287
2001138e:      	bltu	a0, a1, 0x200113a6 <e310x_hal::clock::AonClk::use_external::h5885aac8f7939750+0x42>
20011392:      	j	0x20011394 <e310x_hal::clock::AonClk::use_external::h5885aac8f7939750+0x30>
20011394:      	lw	a1, 12(sp)
20011396:      	sw	a1, 28(sp)
20011398:      	li	a0, 1
2001139a:      	sw	a0, 24(sp)
2001139c:      	sw	a0, 16(sp)
2001139e:      	sw	a1, 20(sp)
200113a0:      	lw	ra, 44(sp)
200113a2:      	addi	sp, sp, 48
200113a4:      	ret
200113a6:      	lui	a0, 131093
200113aa:      	addi	a0, a0, -564
200113ae:      	lui	a1, 131093
200113b2:      	addi	a2, a1, -440
200113b6:      	li	a1, 32
200113ba:      	auipc	ra, 3
200113be:      	jalr	-322(ra)
200113c2:      	unimp	

200113c4 <e310x_hal::clock::CoreClk::use_external::ha0d946a8190e2b17>:
200113c4:      	addi	sp, sp, -48
200113c6:      	sw	ra, 44(sp)
200113c8:      	sw	a2, 12(sp)
200113ca:      	sw	a1, 8(sp)
200113cc:      	mv	a1, a0
200113ce:      	lw	a0, 12(sp)
200113d0:      	sw	a1, 16(sp)
200113d2:      	sw	a0, 36(sp)
200113d4:      	auipc	ra, 0
200113d8:      	jalr	-536(ra)
200113dc:      	mv	a1, a0
200113de:      	sw	a1, 20(sp)
200113e0:      	sw	a0, 40(sp)
200113e2:      	j	0x200113e4 <e310x_hal::clock::CoreClk::use_external::ha0d946a8190e2b17+0x20>
200113e4:      	lw	a1, 20(sp)
200113e6:      	lui	a0, 4883
200113ea:      	addi	a0, a0, -769
200113ee:      	bltu	a0, a1, 0x20011412 <e310x_hal::clock::CoreClk::use_external::ha0d946a8190e2b17+0x4e>
200113f2:      	j	0x200113f4 <e310x_hal::clock::CoreClk::use_external::ha0d946a8190e2b17+0x30>
200113f4:      	lw	a1, 16(sp)
200113f6:      	lw	a2, 20(sp)
200113f8:      	lw	a3, 8(sp)
200113fa:      	sw	a2, 28(sp)
200113fc:      	li	a0, 1
200113fe:      	sw	a0, 24(sp)
20011400:      	sw	a0, 0(a3)
20011402:      	sw	a2, 4(a3)
20011404:      	lw	a3, 8(a3)
20011406:      	sw	a3, 8(a1)
20011408:      	sw	a2, 4(a1)
2001140a:      	sw	a0, 0(a1)
2001140c:      	lw	ra, 44(sp)
2001140e:      	addi	sp, sp, 48
20011410:      	ret
20011412:      	lui	a0, 131093
20011416:      	addi	a0, a0, -424
2001141a:      	lui	a1, 131093
2001141e:      	addi	a2, a1, -388
20011422:      	li	a1, 35
20011426:      	auipc	ra, 3
2001142a:      	jalr	-430(ra)
2001142e:      	unimp	

20011430 <e310x_hal::clock::CoreClk::coreclk::h1f270e604242cb69>:
20011430:      	addi	sp, sp, -32
20011432:      	sw	ra, 28(sp)
20011434:      	sw	a2, 12(sp)
20011436:      	sw	a1, 8(sp)
20011438:      	mv	a1, a0
2001143a:      	lw	a0, 12(sp)
2001143c:      	sw	a1, 16(sp)
2001143e:      	sw	a0, 24(sp)
20011440:      	auipc	ra, 0
20011444:      	jalr	-644(ra)
20011448:      	sw	a0, 20(sp)
2001144a:      	j	0x2001144c <e310x_hal::clock::CoreClk::coreclk::h1f270e604242cb69+0x1c>
2001144c:      	lw	a1, 16(sp)
2001144e:      	lw	a0, 8(sp)
20011450:      	lw	a2, 20(sp)
20011452:      	sw	a2, 8(a0)
20011454:      	sw	a2, 8(a1)
20011456:      	lw	a2, 4(a0)
20011458:      	sw	a2, 4(a1)
2001145a:      	lw	a0, 0(a0)
2001145c:      	sw	a0, 0(a1)
2001145e:      	lw	ra, 28(sp)
20011460:      	addi	sp, sp, 32
20011462:      	ret

20011464 <e310x_hal::clock::CoreClk::freeze::h6725beda22f515bc>:
20011464:      	addi	sp, sp, -112
20011466:      	sw	ra, 108(sp)
20011468:      	sw	a0, 16(sp)
2001146a:      	j	0x2001146c <e310x_hal::clock::CoreClk::freeze::h6725beda22f515bc+0x8>
2001146c:      	lw	a0, 16(sp)
2001146e:      	lui	a1, 65544
20011472:      	sw	a1, 52(sp)
20011474:      	auipc	ra, 0
20011478:      	jalr	1548(ra)
2001147c:      	mv	a1, a0
2001147e:      	sw	a1, 12(sp)
20011480:      	sw	a0, 56(sp)
20011482:      	j	0x20011484 <e310x_hal::clock::CoreClk::freeze::h6725beda22f515bc+0x20>
20011484:      	lui	a0, 65544
20011488:      	addi	a0, a0, 8
2001148a:      	sw	a0, 8(sp)
2001148c:      	sw	a0, 80(sp)
2001148e:      	sw	a0, 88(sp)
20011490:      	sw	a0, 92(sp)
20011492:      	auipc	ra, 1
20011496:      	jalr	1450(ra)
2001149a:      	sw	a0, 84(sp)
2001149c:      	sw	a0, 72(sp)
2001149e:      	sw	a0, 76(sp)
200114a0:      	addi	a0, sp, 72
200114a2:      	sw	a0, 64(sp)
200114a4:      	addi	a1, sp, 76
200114a6:      	sw	a1, 68(sp)
200114a8:      	auipc	ra, 0
200114ac:      	jalr	112(ra)
200114b0:      	mv	a1, a0
200114b2:      	lw	a0, 8(sp)
200114b4:      	lw	a1, 0(a1)
200114b6:      	sw	a0, 96(sp)
200114b8:      	sw	a1, 100(sp)
200114ba:      	sw	a0, 104(sp)
200114bc:      	auipc	ra, 1
200114c0:      	jalr	1426(ra)
200114c4:      	j	0x200114c6 <e310x_hal::clock::CoreClk::freeze::h6725beda22f515bc+0x62>
200114c6:      	lw	a0, 16(sp)
200114c8:      	lw	a0, 0(a0)
200114ca:      	li	a1, 0
200114cc:      	beq	a0, a1, 0x200114f2 <e310x_hal::clock::CoreClk::freeze::h6725beda22f515bc+0x8e>
200114d0:      	j	0x200114d2 <e310x_hal::clock::CoreClk::freeze::h6725beda22f515bc+0x6e>
200114d2:      	lw	a0, 16(sp)
200114d4:      	lw	a1, 4(a0)
200114d6:      	sw	a1, 60(sp)
200114d8:      	lw	a2, 0(a0)
200114da:      	sw	a2, 24(sp)
200114dc:      	lw	a2, 4(a0)
200114de:      	sw	a2, 28(sp)
200114e0:      	lw	a0, 8(a0)
200114e2:      	sw	a0, 32(sp)
200114e4:      	addi	a0, sp, 24
200114e6:      	auipc	ra, 0
200114ea:      	jalr	132(ra)
200114ee:      	sw	a0, 20(sp)
200114f0:      	j	0x20011510 <e310x_hal::clock::CoreClk::freeze::h6725beda22f515bc+0xac>
200114f2:      	lw	a1, 12(sp)
200114f4:      	lw	a0, 16(sp)
200114f6:      	lw	a2, 8(a0)
200114f8:      	sw	a2, 48(sp)
200114fa:      	lw	a2, 4(a0)
200114fc:      	sw	a2, 44(sp)
200114fe:      	lw	a0, 0(a0)
20011500:      	sw	a0, 40(sp)
20011502:      	addi	a0, sp, 40
20011504:      	auipc	ra, 0
20011508:      	jalr	876(ra)
2001150c:      	sw	a0, 20(sp)
2001150e:      	j	0x20011510 <e310x_hal::clock::CoreClk::freeze::h6725beda22f515bc+0xac>
20011510:      	lw	a0, 20(sp)
20011512:      	lw	ra, 108(sp)
20011514:      	addi	sp, sp, 112
20011516:      	ret

20011518 <e310x_hal::clock::CoreClk::freeze::{{closure}}::h8eefd1ff79780bb4>:
20011518:      	addi	sp, sp, -64
2001151a:      	sw	a0, 24(sp)
2001151c:      	sw	a1, 28(sp)
2001151e:      	sw	a1, 36(sp)
20011520:      	sw	a1, 32(sp)
20011522:      	sw	a1, 12(sp)
20011524:      	j	0x20011526 <e310x_hal::clock::CoreClk::freeze::{{closure}}::h8eefd1ff79780bb4+0xe>
20011526:      	lw	a1, 12(sp)
20011528:      	sw	a1, 48(sp)
2001152a:      	li	a0, 0
2001152c:      	sb	a0, 55(sp)
20011530:      	lw	a0, 0(a1)
20011532:      	lui	a2, 1048560
20011534:      	addi	a2, a2, -1
20011536:      	and	a0, a0, a2
20011538:      	sw	a0, 0(a1)
2001153a:      	lw	a0, 48(sp)
2001153c:      	sw	a0, 8(sp)
2001153e:      	j	0x20011540 <e310x_hal::clock::CoreClk::freeze::{{closure}}::h8eefd1ff79780bb4+0x28>
20011540:      	lw	a0, 8(sp)
20011542:      	sw	a0, 44(sp)
20011544:      	sw	a0, 40(sp)
20011546:      	sw	a0, 4(sp)
20011548:      	j	0x2001154a <e310x_hal::clock::CoreClk::freeze::{{closure}}::h8eefd1ff79780bb4+0x32>
2001154a:      	lw	a1, 4(sp)
2001154c:      	sw	a1, 56(sp)
2001154e:      	li	a0, 1
20011550:      	sb	a0, 63(sp)
20011554:      	lw	a0, 0(a1)
20011556:      	lui	a2, 64
2001155a:      	or	a0, a0, a2
2001155c:      	sw	a0, 0(a1)
2001155e:      	lw	a0, 56(sp)
20011560:      	sw	a0, 0(sp)
20011562:      	j	0x20011564 <e310x_hal::clock::CoreClk::freeze::{{closure}}::h8eefd1ff79780bb4+0x4c>
20011564:      	lw	a0, 0(sp)
20011566:      	addi	sp, sp, 64
20011568:      	ret

2001156a <e310x_hal::clock::CoreClk::configure_with_external::h67b5a7aa8d99e9ac>:
2001156a:      	addi	sp, sp, -304
2001156c:      	sw	ra, 300(sp)
20011570:      	sw	a1, 32(sp)
20011572:      	sw	a0, 36(sp)
20011574:      	sw	a1, 52(sp)
20011576:      	j	0x20011578 <e310x_hal::clock::CoreClk::configure_with_external::h67b5a7aa8d99e9ac+0xe>
20011578:      	lui	a0, 65544
2001157c:      	sw	a0, 56(sp)
2001157e:      	addi	a0, a0, 4
20011580:      	sw	a0, 28(sp)
20011582:      	sw	a0, 104(sp)
20011584:      	li	a0, 0
20011586:      	sw	a0, 100(sp)
20011588:      	addi	a0, sp, 100
2001158a:      	sw	a0, 96(sp)
2001158c:      	auipc	ra, 0
20011590:      	jalr	472(ra)
20011594:      	mv	a1, a0
20011596:      	lw	a0, 28(sp)
20011598:      	lw	a1, 0(a1)
2001159a:      	sw	a0, 276(sp)
2001159e:      	sw	a1, 280(sp)
200115a2:      	sw	a0, 284(sp)
200115a6:      	auipc	ra, 1
200115aa:      	jalr	1192(ra)
200115ae:      	j	0x200115b0 <e310x_hal::clock::CoreClk::configure_with_external::h67b5a7aa8d99e9ac+0x46>
200115b0:      	lui	a0, 65544
200115b4:      	addi	a0, a0, 4
200115b6:      	sw	a0, 80(sp)
200115b8:      	sw	a0, 220(sp)
200115ba:      	sw	a0, 224(sp)
200115bc:      	auipc	ra, 1
200115c0:      	jalr	1152(ra)
200115c4:      	sw	a0, 76(sp)
200115c6:      	sw	a0, 48(sp)
200115c8:      	j	0x200115ca <e310x_hal::clock::CoreClk::configure_with_external::h67b5a7aa8d99e9ac+0x60>
200115ca:      	addi	a0, sp, 48
200115cc:      	sw	a0, 60(sp)
200115ce:      	lw	a0, 48(sp)
200115d0:      	srli	a0, a0, 31
200115d2:      	sb	a0, 67(sp)
200115d6:      	sb	a0, 66(sp)
200115da:      	sb	a0, 47(sp)
200115de:      	j	0x200115e0 <e310x_hal::clock::CoreClk::configure_with_external::h67b5a7aa8d99e9ac+0x76>
200115e0:      	addi	a0, sp, 47
200115e4:      	sw	a0, 68(sp)
200115e6:      	sw	a0, 72(sp)
200115e8:      	lb	a0, 47(sp)
200115ec:      	sw	a0, 24(sp)
200115ee:      	j	0x200115f0 <e310x_hal::clock::CoreClk::configure_with_external::h67b5a7aa8d99e9ac+0x86>
200115f0:      	lw	a0, 24(sp)
200115f2:      	andi	a0, a0, 1
200115f4:      	li	a1, 0
200115f6:      	beq	a0, a1, 0x200115b0 <e310x_hal::clock::CoreClk::configure_with_external::h67b5a7aa8d99e9ac+0x46>
200115fa:      	j	0x200115fc <e310x_hal::clock::CoreClk::configure_with_external::h67b5a7aa8d99e9ac+0x92>
200115fc:      	lui	a0, 65544
20011600:      	addi	a0, a0, 8
20011602:      	sw	a0, 20(sp)
20011604:      	sw	a0, 160(sp)
20011606:      	sw	a0, 204(sp)
20011608:      	sw	a0, 208(sp)
2001160a:      	auipc	ra, 1
2001160e:      	jalr	1074(ra)
20011612:      	sw	a0, 164(sp)
20011614:      	sw	a0, 152(sp)
20011616:      	sw	a0, 156(sp)
20011618:      	addi	a0, sp, 152
2001161a:      	sw	a0, 144(sp)
2001161c:      	addi	a1, sp, 156
2001161e:      	sw	a1, 148(sp)
20011620:      	auipc	ra, 0
20011624:      	jalr	368(ra)
20011628:      	mv	a1, a0
2001162a:      	lw	a0, 20(sp)
2001162c:      	lw	a1, 0(a1)
2001162e:      	sw	a0, 240(sp)
20011630:      	sw	a1, 244(sp)
20011632:      	sw	a0, 248(sp)
20011634:      	auipc	ra, 1
20011638:      	jalr	1050(ra)
2001163c:      	j	0x2001163e <e310x_hal::clock::CoreClk::configure_with_external::h67b5a7aa8d99e9ac+0xd4>
2001163e:      	lw	a0, 32(sp)
20011640:      	lw	a1, 36(sp)
20011642:      	lw	a1, 8(a1)
20011644:      	beq	a0, a1, 0x2001165c <e310x_hal::clock::CoreClk::configure_with_external::h67b5a7aa8d99e9ac+0xf2>
20011648:      	j	0x2001164a <e310x_hal::clock::CoreClk::configure_with_external::h67b5a7aa8d99e9ac+0xe0>
2001164a:      	lw	a1, 32(sp)
2001164c:      	lw	a0, 36(sp)
2001164e:      	lw	a2, 8(a0)
20011650:      	auipc	ra, 0
20011654:      	jalr	1344(ra)
20011658:      	sw	a0, 16(sp)
2001165a:      	j	0x20011720 <e310x_hal::clock::CoreClk::configure_with_external::h67b5a7aa8d99e9ac+0x1b6>
2001165c:      	lw	a0, 32(sp)
2001165e:      	sw	a0, 40(sp)
20011660:      	lui	a0, 65544
20011664:      	addi	a0, a0, 8
20011666:      	sw	a0, 12(sp)
20011668:      	sw	a0, 136(sp)
2001166a:      	sw	a0, 212(sp)
2001166c:      	sw	a0, 216(sp)
2001166e:      	auipc	ra, 1
20011672:      	jalr	974(ra)
20011676:      	sw	a0, 140(sp)
20011678:      	sw	a0, 128(sp)
2001167a:      	sw	a0, 132(sp)
2001167c:      	addi	a0, sp, 128
2001167e:      	sw	a0, 120(sp)
20011680:      	addi	a1, sp, 132
20011682:      	sw	a1, 124(sp)
20011684:      	auipc	ra, 0
20011688:      	jalr	314(ra)
2001168c:      	mv	a1, a0
2001168e:      	lw	a0, 12(sp)
20011690:      	lw	a1, 0(a1)
20011692:      	sw	a0, 252(sp)
20011694:      	sw	a1, 256(sp)
20011698:      	sw	a0, 260(sp)
2001169c:      	auipc	ra, 1
200116a0:      	jalr	946(ra)
200116a4:      	j	0x200116a6 <e310x_hal::clock::CoreClk::configure_with_external::h67b5a7aa8d99e9ac+0x13c>
200116a6:      	lui	a0, 65544
200116aa:      	addi	a0, a0, 12
200116ac:      	sw	a0, 8(sp)
200116ae:      	sw	a0, 92(sp)
200116b0:      	li	a0, 256
200116b4:      	sw	a0, 88(sp)
200116b6:      	addi	a0, sp, 88
200116b8:      	sw	a0, 84(sp)
200116ba:      	auipc	ra, 0
200116be:      	jalr	306(ra)
200116c2:      	mv	a1, a0
200116c4:      	lw	a0, 8(sp)
200116c6:      	lw	a1, 0(a1)
200116c8:      	sw	a0, 288(sp)
200116cc:      	sw	a1, 292(sp)
200116d0:      	sw	a0, 296(sp)
200116d4:      	auipc	ra, 1
200116d8:      	jalr	890(ra)
200116dc:      	j	0x200116de <e310x_hal::clock::CoreClk::configure_with_external::h67b5a7aa8d99e9ac+0x174>
200116de:      	lui	a0, 65544
200116e2:      	addi	a0, a0, 8
200116e4:      	sw	a0, 4(sp)
200116e6:      	sw	a0, 188(sp)
200116e8:      	sw	a0, 196(sp)
200116ea:      	sw	a0, 200(sp)
200116ec:      	auipc	ra, 1
200116f0:      	jalr	848(ra)
200116f4:      	sw	a0, 192(sp)
200116f6:      	sw	a0, 180(sp)
200116f8:      	sw	a0, 184(sp)
200116fa:      	addi	a0, sp, 180
200116fc:      	sw	a0, 168(sp)
200116fe:      	addi	a1, sp, 184
20011700:      	sw	a1, 172(sp)
20011702:      	auipc	ra, 0
20011706:      	jalr	276(ra)
2001170a:      	mv	a1, a0
2001170c:      	lw	a0, 4(sp)
2001170e:      	lw	a1, 0(a1)
20011710:      	sw	a0, 228(sp)
20011712:      	sw	a1, 232(sp)
20011714:      	sw	a0, 236(sp)
20011716:      	auipc	ra, 1
2001171a:      	jalr	824(ra)
2001171e:      	j	0x20011726 <e310x_hal::clock::CoreClk::configure_with_external::h67b5a7aa8d99e9ac+0x1bc>
20011720:      	lw	a0, 16(sp)
20011722:      	sw	a0, 40(sp)
20011724:      	j	0x200116de <e310x_hal::clock::CoreClk::configure_with_external::h67b5a7aa8d99e9ac+0x174>
20011726:      	lui	a0, 65544
2001172a:      	sw	a0, 0(sp)
2001172c:      	sw	a0, 116(sp)
2001172e:      	li	a0, 0
20011730:      	sw	a0, 112(sp)
20011732:      	addi	a0, sp, 112
20011734:      	sw	a0, 108(sp)
20011736:      	auipc	ra, 0
2001173a:      	jalr	268(ra)
2001173e:      	mv	a1, a0
20011740:      	lw	a0, 0(sp)
20011742:      	lw	a1, 0(a1)
20011744:      	sw	a0, 264(sp)
20011748:      	sw	a1, 268(sp)
2001174c:      	sw	a0, 272(sp)
20011750:      	auipc	ra, 1
20011754:      	jalr	766(ra)
20011758:      	j	0x2001175a <e310x_hal::clock::CoreClk::configure_with_external::h67b5a7aa8d99e9ac+0x1f0>
2001175a:      	lw	a0, 40(sp)
2001175c:      	lw	ra, 300(sp)
20011760:      	addi	sp, sp, 304
20011762:      	ret

20011764 <e310x_hal::clock::CoreClk::configure_with_external::{{closure}}::h9b7b8d0180a7c99c>:
20011764:      	addi	sp, sp, -32
20011766:      	sw	a0, 12(sp)
20011768:      	sw	a0, 20(sp)
2001176a:      	sw	a0, 16(sp)
2001176c:      	sw	a0, 4(sp)
2001176e:      	j	0x20011770 <e310x_hal::clock::CoreClk::configure_with_external::{{closure}}::h9b7b8d0180a7c99c+0xc>
20011770:      	lw	a1, 4(sp)
20011772:      	sw	a1, 24(sp)
20011774:      	li	a0, 1
20011776:      	sb	a0, 31(sp)
2001177a:      	lw	a0, 0(a1)
2001177c:      	lui	a2, 262144
20011780:      	or	a0, a0, a2
20011782:      	sw	a0, 0(a1)
20011784:      	lw	a0, 24(sp)
20011786:      	sw	a0, 0(sp)
20011788:      	j	0x2001178a <e310x_hal::clock::CoreClk::configure_with_external::{{closure}}::h9b7b8d0180a7c99c+0x26>
2001178a:      	lw	a0, 0(sp)
2001178c:      	addi	sp, sp, 32
2001178e:      	ret

20011790 <e310x_hal::clock::CoreClk::configure_with_external::{{closure}}::ha3936a554c8763d3>:
20011790:      	addi	sp, sp, -48
20011792:      	sw	a0, 24(sp)
20011794:      	sw	a1, 28(sp)
20011796:      	sw	a1, 36(sp)
20011798:      	sw	a1, 32(sp)
2001179a:      	sw	a1, 12(sp)
2001179c:      	j	0x2001179e <e310x_hal::clock::CoreClk::configure_with_external::{{closure}}::ha3936a554c8763d3+0xe>
2001179e:      	lw	a1, 12(sp)
200117a0:      	sw	a1, 40(sp)
200117a2:      	li	a0, 1
200117a4:      	sb	a0, 47(sp)
200117a8:      	lw	a0, 0(a1)
200117aa:      	lui	a2, 32
200117ae:      	or	a0, a0, a2
200117b0:      	sw	a0, 0(a1)
200117b2:      	lw	a0, 40(sp)
200117b4:      	sw	a0, 8(sp)
200117b6:      	j	0x200117b8 <e310x_hal::clock::CoreClk::configure_with_external::{{closure}}::ha3936a554c8763d3+0x28>
200117b8:      	lw	a0, 8(sp)
200117ba:      	addi	sp, sp, 48
200117bc:      	ret

200117be <e310x_hal::clock::CoreClk::configure_with_external::{{closure}}::hed65d9c81f77e135>:
200117be:      	addi	sp, sp, -48
200117c0:      	sw	a0, 24(sp)
200117c2:      	sw	a1, 28(sp)
200117c4:      	sw	a1, 36(sp)
200117c6:      	sw	a1, 32(sp)
200117c8:      	sw	a1, 12(sp)
200117ca:      	j	0x200117cc <e310x_hal::clock::CoreClk::configure_with_external::{{closure}}::hed65d9c81f77e135+0xe>
200117cc:      	lw	a1, 12(sp)
200117ce:      	sw	a1, 40(sp)
200117d0:      	li	a0, 1
200117d2:      	sb	a0, 47(sp)
200117d6:      	lw	a0, 0(a1)
200117d8:      	lui	a2, 64
200117dc:      	or	a0, a0, a2
200117de:      	sw	a0, 0(a1)
200117e0:      	lw	a0, 40(sp)
200117e2:      	sw	a0, 8(sp)
200117e4:      	j	0x200117e6 <e310x_hal::clock::CoreClk::configure_with_external::{{closure}}::hed65d9c81f77e135+0x28>
200117e6:      	lw	a0, 8(sp)
200117e8:      	addi	sp, sp, 48
200117ea:      	ret

200117ec <e310x_hal::clock::CoreClk::configure_with_external::{{closure}}::h7a2825da19294463>:
200117ec:      	addi	sp, sp, -32
200117ee:      	sw	a0, 12(sp)
200117f0:      	sw	a0, 20(sp)
200117f2:      	sw	a0, 16(sp)
200117f4:      	sw	a0, 4(sp)
200117f6:      	j	0x200117f8 <e310x_hal::clock::CoreClk::configure_with_external::{{closure}}::h7a2825da19294463+0xc>
200117f8:      	lw	a1, 4(sp)
200117fa:      	sw	a1, 24(sp)
200117fc:      	li	a0, 1
200117fe:      	sb	a0, 31(sp)
20011802:      	lw	a0, 0(a1)
20011804:      	ori	a0, a0, 256
20011808:      	sw	a0, 0(a1)
2001180a:      	lw	a0, 24(sp)
2001180c:      	sw	a0, 0(sp)
2001180e:      	j	0x20011810 <e310x_hal::clock::CoreClk::configure_with_external::{{closure}}::h7a2825da19294463+0x24>
20011810:      	lw	a0, 0(sp)
20011812:      	addi	sp, sp, 32
20011814:      	ret

20011816 <e310x_hal::clock::CoreClk::configure_with_external::{{closure}}::hb6ba016df3391fba>:
20011816:      	addi	sp, sp, -48
20011818:      	sw	a0, 24(sp)
2001181a:      	sw	a1, 28(sp)
2001181c:      	sw	a1, 36(sp)
2001181e:      	sw	a1, 32(sp)
20011820:      	sw	a1, 12(sp)
20011822:      	j	0x20011824 <e310x_hal::clock::CoreClk::configure_with_external::{{closure}}::hb6ba016df3391fba+0xe>
20011824:      	lw	a1, 12(sp)
20011826:      	sw	a1, 40(sp)
20011828:      	li	a0, 1
2001182a:      	sb	a0, 47(sp)
2001182e:      	lw	a0, 0(a1)
20011830:      	lui	a2, 16
20011832:      	or	a0, a0, a2
20011834:      	sw	a0, 0(a1)
20011836:      	lw	a0, 40(sp)
20011838:      	sw	a0, 8(sp)
2001183a:      	j	0x2001183c <e310x_hal::clock::CoreClk::configure_with_external::{{closure}}::hb6ba016df3391fba+0x26>
2001183c:      	lw	a0, 8(sp)
2001183e:      	addi	sp, sp, 48
20011840:      	ret

20011842 <e310x_hal::clock::CoreClk::configure_with_external::{{closure}}::hf51c8c635202f4b6>:
20011842:      	addi	sp, sp, -32
20011844:      	sw	a0, 12(sp)
20011846:      	sw	a0, 20(sp)
20011848:      	sw	a0, 16(sp)
2001184a:      	sw	a0, 4(sp)
2001184c:      	j	0x2001184e <e310x_hal::clock::CoreClk::configure_with_external::{{closure}}::hf51c8c635202f4b6+0xc>
2001184e:      	lw	a1, 4(sp)
20011850:      	sw	a1, 24(sp)
20011852:      	li	a0, 0
20011854:      	sb	a0, 31(sp)
20011858:      	lw	a0, 0(a1)
2001185a:      	lui	a2, 786432
2001185e:      	addi	a2, a2, -1
20011860:      	and	a0, a0, a2
20011862:      	sw	a0, 0(a1)
20011864:      	lw	a0, 24(sp)
20011866:      	sw	a0, 0(sp)
20011868:      	j	0x2001186a <e310x_hal::clock::CoreClk::configure_with_external::{{closure}}::hf51c8c635202f4b6+0x28>
2001186a:      	lw	a0, 0(sp)
2001186c:      	addi	sp, sp, 32
2001186e:      	ret

20011870 <e310x_hal::clock::CoreClk::configure_with_internal::h8485c39b64768fcf>:
20011870:      	addi	sp, sp, -208
20011872:      	sw	ra, 204(sp)
20011874:      	sw	a1, 24(sp)
20011876:      	sw	a0, 28(sp)
20011878:      	sw	a1, 36(sp)
2001187a:      	j	0x2001187c <e310x_hal::clock::CoreClk::configure_with_internal::h8485c39b64768fcf+0xc>
2001187c:      	lw	a0, 24(sp)
2001187e:      	lw	a1, 28(sp)
20011880:      	lui	a2, 65544
20011884:      	sw	a2, 40(sp)
20011886:      	lw	a1, 8(a1)
20011888:      	beq	a0, a1, 0x200118a0 <e310x_hal::clock::CoreClk::configure_with_internal::h8485c39b64768fcf+0x30>
2001188c:      	j	0x2001188e <e310x_hal::clock::CoreClk::configure_with_internal::h8485c39b64768fcf+0x1e>
2001188e:      	lw	a1, 24(sp)
20011890:      	lw	a0, 28(sp)
20011892:      	lw	a2, 8(a0)
20011894:      	auipc	ra, 0
20011898:      	jalr	764(ra)
2001189c:      	sw	a0, 20(sp)
2001189e:      	j	0x20011958 <e310x_hal::clock::CoreClk::configure_with_internal::h8485c39b64768fcf+0xe8>
200118a0:      	lw	a0, 24(sp)
200118a2:      	sw	a0, 32(sp)
200118a4:      	lui	a0, 65544
200118a8:      	addi	a0, a0, 8
200118aa:      	sw	a0, 16(sp)
200118ac:      	sw	a0, 124(sp)
200118ae:      	sw	a0, 132(sp)
200118b0:      	sw	a0, 136(sp)
200118b2:      	auipc	ra, 1
200118b6:      	jalr	394(ra)
200118ba:      	sw	a0, 128(sp)
200118bc:      	sw	a0, 116(sp)
200118be:      	sw	a0, 120(sp)
200118c0:      	addi	a0, sp, 116
200118c2:      	sw	a0, 104(sp)
200118c4:      	addi	a1, sp, 120
200118c6:      	sw	a1, 108(sp)
200118c8:      	auipc	ra, 0
200118cc:      	jalr	222(ra)
200118d0:      	mv	a1, a0
200118d2:      	lw	a0, 16(sp)
200118d4:      	lw	a1, 0(a1)
200118d6:      	sw	a0, 156(sp)
200118d8:      	sw	a1, 160(sp)
200118da:      	sw	a0, 164(sp)
200118dc:      	auipc	ra, 1
200118e0:      	jalr	370(ra)
200118e4:      	j	0x200118e6 <e310x_hal::clock::CoreClk::configure_with_internal::h8485c39b64768fcf+0x76>
200118e6:      	lui	a0, 65544
200118ea:      	addi	a0, a0, 8
200118ec:      	sw	a0, 12(sp)
200118ee:      	sw	a0, 96(sp)
200118f0:      	sw	a0, 140(sp)
200118f2:      	sw	a0, 144(sp)
200118f4:      	auipc	ra, 1
200118f8:      	jalr	328(ra)
200118fc:      	sw	a0, 100(sp)
200118fe:      	sw	a0, 88(sp)
20011900:      	sw	a0, 92(sp)
20011902:      	addi	a0, sp, 88
20011904:      	sw	a0, 80(sp)
20011906:      	addi	a1, sp, 92
20011908:      	sw	a1, 84(sp)
2001190a:      	auipc	ra, 0
2001190e:      	jalr	238(ra)
20011912:      	mv	a1, a0
20011914:      	lw	a0, 12(sp)
20011916:      	lw	a1, 0(a1)
20011918:      	sw	a0, 168(sp)
2001191a:      	sw	a1, 172(sp)
2001191c:      	sw	a0, 176(sp)
2001191e:      	auipc	ra, 1
20011922:      	jalr	304(ra)
20011926:      	j	0x20011928 <e310x_hal::clock::CoreClk::configure_with_internal::h8485c39b64768fcf+0xb8>
20011928:      	lui	a0, 65544
2001192c:      	addi	a0, a0, 4
2001192e:      	sw	a0, 8(sp)
20011930:      	sw	a0, 52(sp)
20011932:      	li	a0, 0
20011934:      	sw	a0, 48(sp)
20011936:      	addi	a0, sp, 48
20011938:      	sw	a0, 44(sp)
2001193a:      	auipc	ra, 0
2001193e:      	jalr	280(ra)
20011942:      	mv	a1, a0
20011944:      	lw	a0, 8(sp)
20011946:      	lw	a1, 0(a1)
20011948:      	sw	a0, 192(sp)
2001194a:      	sw	a1, 196(sp)
2001194c:      	sw	a0, 200(sp)
2001194e:      	auipc	ra, 1
20011952:      	jalr	256(ra)
20011956:      	j	0x2001199e <e310x_hal::clock::CoreClk::configure_with_internal::h8485c39b64768fcf+0x12e>
20011958:      	lw	a0, 20(sp)
2001195a:      	sw	a0, 32(sp)
2001195c:      	lui	a0, 65544
20011960:      	addi	a0, a0, 8
20011962:      	sw	a0, 4(sp)
20011964:      	sw	a0, 72(sp)
20011966:      	sw	a0, 148(sp)
20011968:      	sw	a0, 152(sp)
2001196a:      	auipc	ra, 1
2001196e:      	jalr	210(ra)
20011972:      	sw	a0, 76(sp)
20011974:      	sw	a0, 64(sp)
20011976:      	sw	a0, 68(sp)
20011978:      	addi	a0, sp, 64
2001197a:      	sw	a0, 56(sp)
2001197c:      	addi	a1, sp, 68
2001197e:      	sw	a1, 60(sp)
20011980:      	auipc	ra, 0
20011984:      	jalr	166(ra)
20011988:      	mv	a1, a0
2001198a:      	lw	a0, 4(sp)
2001198c:      	lw	a1, 0(a1)
2001198e:      	sw	a0, 180(sp)
20011990:      	sw	a1, 184(sp)
20011992:      	sw	a0, 188(sp)
20011994:      	auipc	ra, 1
20011998:      	jalr	186(ra)
2001199c:      	j	0x20011928 <e310x_hal::clock::CoreClk::configure_with_internal::h8485c39b64768fcf+0xb8>
2001199e:      	lw	a0, 32(sp)
200119a0:      	lw	ra, 204(sp)
200119a2:      	addi	sp, sp, 208
200119a4:      	ret

200119a6 <e310x_hal::clock::CoreClk::configure_with_internal::{{closure}}::h3a511ec658887198>:
200119a6:      	addi	sp, sp, -64
200119a8:      	sw	a0, 24(sp)
200119aa:      	sw	a1, 28(sp)
200119ac:      	sw	a1, 36(sp)
200119ae:      	sw	a1, 32(sp)
200119b0:      	sw	a1, 12(sp)
200119b2:      	j	0x200119b4 <e310x_hal::clock::CoreClk::configure_with_internal::{{closure}}::h3a511ec658887198+0xe>
200119b4:      	lw	a1, 12(sp)
200119b6:      	sw	a1, 48(sp)
200119b8:      	li	a0, 0
200119ba:      	sb	a0, 55(sp)
200119be:      	lw	a0, 0(a1)
200119c0:      	lui	a2, 1048560
200119c2:      	addi	a2, a2, -1
200119c4:      	and	a0, a0, a2
200119c6:      	sw	a0, 0(a1)
200119c8:      	lw	a0, 48(sp)
200119ca:      	sw	a0, 8(sp)
200119cc:      	j	0x200119ce <e310x_hal::clock::CoreClk::configure_with_internal::{{closure}}::h3a511ec658887198+0x28>
200119ce:      	lw	a0, 8(sp)
200119d0:      	sw	a0, 44(sp)
200119d2:      	sw	a0, 40(sp)
200119d4:      	sw	a0, 4(sp)
200119d6:      	j	0x200119d8 <e310x_hal::clock::CoreClk::configure_with_internal::{{closure}}::h3a511ec658887198+0x32>
200119d8:      	lw	a1, 4(sp)
200119da:      	sw	a1, 56(sp)
200119dc:      	li	a0, 1
200119de:      	sb	a0, 63(sp)
200119e2:      	lw	a0, 0(a1)
200119e4:      	lui	a2, 64
200119e8:      	or	a0, a0, a2
200119ea:      	sw	a0, 0(a1)
200119ec:      	lw	a0, 56(sp)
200119ee:      	sw	a0, 0(sp)
200119f0:      	j	0x200119f2 <e310x_hal::clock::CoreClk::configure_with_internal::{{closure}}::h3a511ec658887198+0x4c>
200119f2:      	lw	a0, 0(sp)
200119f4:      	addi	sp, sp, 64
200119f6:      	ret

200119f8 <e310x_hal::clock::CoreClk::configure_with_internal::{{closure}}::h1bafd0054499570e>:
200119f8:      	addi	sp, sp, -48
200119fa:      	sw	a0, 24(sp)
200119fc:      	sw	a1, 28(sp)
200119fe:      	sw	a1, 36(sp)
20011a00:      	sw	a1, 32(sp)
20011a02:      	sw	a1, 12(sp)
20011a04:      	j	0x20011a06 <e310x_hal::clock::CoreClk::configure_with_internal::{{closure}}::h1bafd0054499570e+0xe>
20011a06:      	lw	a1, 12(sp)
20011a08:      	sw	a1, 40(sp)
20011a0a:      	li	a0, 1
20011a0c:      	sb	a0, 47(sp)
20011a10:      	lw	a0, 0(a1)
20011a12:      	lui	a2, 64
20011a16:      	or	a0, a0, a2
20011a18:      	sw	a0, 0(a1)
20011a1a:      	lw	a0, 40(sp)
20011a1c:      	sw	a0, 8(sp)
20011a1e:      	j	0x20011a20 <e310x_hal::clock::CoreClk::configure_with_internal::{{closure}}::h1bafd0054499570e+0x28>
20011a20:      	lw	a0, 8(sp)
20011a22:      	addi	sp, sp, 48
20011a24:      	ret

20011a26 <e310x_hal::clock::CoreClk::configure_with_internal::{{closure}}::ha703f3bbffd2b3d0>:
20011a26:      	addi	sp, sp, -48
20011a28:      	sw	a0, 24(sp)
20011a2a:      	sw	a1, 28(sp)
20011a2c:      	sw	a1, 36(sp)
20011a2e:      	sw	a1, 32(sp)
20011a30:      	sw	a1, 12(sp)
20011a32:      	j	0x20011a34 <e310x_hal::clock::CoreClk::configure_with_internal::{{closure}}::ha703f3bbffd2b3d0+0xe>
20011a34:      	lw	a1, 12(sp)
20011a36:      	sw	a1, 40(sp)
20011a38:      	li	a0, 1
20011a3a:      	sb	a0, 47(sp)
20011a3e:      	lw	a0, 0(a1)
20011a40:      	lui	a2, 16
20011a42:      	or	a0, a0, a2
20011a44:      	sw	a0, 0(a1)
20011a46:      	lw	a0, 40(sp)
20011a48:      	sw	a0, 8(sp)
20011a4a:      	j	0x20011a4c <e310x_hal::clock::CoreClk::configure_with_internal::{{closure}}::ha703f3bbffd2b3d0+0x26>
20011a4c:      	lw	a0, 8(sp)
20011a4e:      	addi	sp, sp, 48
20011a50:      	ret

20011a52 <e310x_hal::clock::CoreClk::configure_with_internal::{{closure}}::h449421c202c27f63>:
20011a52:      	addi	sp, sp, -32
20011a54:      	sw	a0, 12(sp)
20011a56:      	sw	a0, 20(sp)
20011a58:      	sw	a0, 16(sp)
20011a5a:      	sw	a0, 4(sp)
20011a5c:      	j	0x20011a5e <e310x_hal::clock::CoreClk::configure_with_internal::{{closure}}::h449421c202c27f63+0xc>
20011a5e:      	lw	a1, 4(sp)
20011a60:      	sw	a1, 24(sp)
20011a62:      	li	a0, 0
20011a64:      	sb	a0, 31(sp)
20011a68:      	lw	a0, 0(a1)
20011a6a:      	lui	a2, 786432
20011a6e:      	addi	a2, a2, -1
20011a70:      	and	a0, a0, a2
20011a72:      	sw	a0, 0(a1)
20011a74:      	lw	a0, 24(sp)
20011a76:      	sw	a0, 0(sp)
20011a78:      	j	0x20011a7a <e310x_hal::clock::CoreClk::configure_with_internal::{{closure}}::h449421c202c27f63+0x28>
20011a7a:      	lw	a0, 0(sp)
20011a7c:      	addi	sp, sp, 32
20011a7e:      	ret

20011a80 <e310x_hal::clock::CoreClk::configure_hfrosc::h4574116cb47726ea>:
20011a80:      	addi	sp, sp, -96
20011a82:      	sw	ra, 92(sp)
20011a84:      	sw	a0, 28(sp)
20011a86:      	j	0x20011a88 <e310x_hal::clock::CoreClk::configure_hfrosc::h4574116cb47726ea+0x8>
20011a88:      	lui	a0, 65544
20011a8c:      	sw	a0, 12(sp)
20011a8e:      	sw	a0, 32(sp)
20011a90:      	sw	a0, 68(sp)
20011a92:      	li	a0, 0
20011a94:      	sw	a0, 64(sp)
20011a96:      	addi	a0, sp, 64
20011a98:      	sw	a0, 60(sp)
20011a9a:      	auipc	ra, 0
20011a9e:      	jalr	120(ra)
20011aa2:      	mv	a1, a0
20011aa4:      	lw	a0, 12(sp)
20011aa6:      	lw	a1, 0(a1)
20011aa8:      	sw	a0, 80(sp)
20011aaa:      	sw	a1, 84(sp)
20011aac:      	sw	a0, 88(sp)
20011aae:      	auipc	ra, 1
20011ab2:      	jalr	-96(ra)
20011ab6:      	j	0x20011ab8 <e310x_hal::clock::CoreClk::configure_hfrosc::h4574116cb47726ea+0x38>
20011ab8:      	lui	a0, 65544
20011abc:      	sw	a0, 56(sp)
20011abe:      	sw	a0, 72(sp)
20011ac0:      	sw	a0, 76(sp)
20011ac2:      	auipc	ra, 1
20011ac6:      	jalr	-134(ra)
20011aca:      	sw	a0, 52(sp)
20011acc:      	sw	a0, 24(sp)
20011ace:      	j	0x20011ad0 <e310x_hal::clock::CoreClk::configure_hfrosc::h4574116cb47726ea+0x50>
20011ad0:      	addi	a0, sp, 24
20011ad2:      	sw	a0, 36(sp)
20011ad4:      	lw	a0, 24(sp)
20011ad6:      	srli	a0, a0, 31
20011ad8:      	sb	a0, 43(sp)
20011adc:      	sb	a0, 42(sp)
20011ae0:      	sb	a0, 23(sp)
20011ae4:      	j	0x20011ae6 <e310x_hal::clock::CoreClk::configure_hfrosc::h4574116cb47726ea+0x66>
20011ae6:      	addi	a0, sp, 23
20011aea:      	sw	a0, 44(sp)
20011aec:      	sw	a0, 48(sp)
20011aee:      	lb	a0, 23(sp)
20011af2:      	sw	a0, 8(sp)
20011af4:      	j	0x20011af6 <e310x_hal::clock::CoreClk::configure_hfrosc::h4574116cb47726ea+0x76>
20011af6:      	lw	a0, 8(sp)
20011af8:      	andi	a0, a0, 1
20011afa:      	li	a1, 0
20011afc:      	beq	a0, a1, 0x20011ab8 <e310x_hal::clock::CoreClk::configure_hfrosc::h4574116cb47726ea+0x38>
20011b00:      	j	0x20011b02 <e310x_hal::clock::CoreClk::configure_hfrosc::h4574116cb47726ea+0x82>
20011b02:      	lui	a0, 3369
20011b06:      	addi	a0, a0, 576
20011b0a:      	sw	a0, 16(sp)
20011b0c:      	lw	ra, 92(sp)
20011b0e:      	addi	sp, sp, 96
20011b10:      	ret

20011b12 <e310x_hal::clock::CoreClk::configure_hfrosc::{{closure}}::h307c259f0d5bcf2a>:
20011b12:      	addi	sp, sp, -80
20011b14:      	sw	a0, 28(sp)
20011b16:      	sw	a0, 36(sp)
20011b18:      	sw	a0, 32(sp)
20011b1a:      	sw	a0, 20(sp)
20011b1c:      	j	0x20011b1e <e310x_hal::clock::CoreClk::configure_hfrosc::{{closure}}::h307c259f0d5bcf2a+0xc>
20011b1e:      	lw	a1, 20(sp)
20011b20:      	sw	a1, 56(sp)
20011b22:      	li	a0, 4
20011b24:      	sb	a0, 63(sp)
20011b28:      	lw	a0, 0(a1)
20011b2a:      	andi	a0, a0, -64
20011b2e:      	ori	a0, a0, 4
20011b32:      	sw	a0, 0(a1)
20011b34:      	lw	a0, 56(sp)
20011b36:      	sw	a0, 16(sp)
20011b38:      	j	0x20011b3a <e310x_hal::clock::CoreClk::configure_hfrosc::{{closure}}::h307c259f0d5bcf2a+0x28>
20011b3a:      	lw	a0, 16(sp)
20011b3c:      	sw	a0, 44(sp)
20011b3e:      	sw	a0, 40(sp)
20011b40:      	sw	a0, 12(sp)
20011b42:      	j	0x20011b44 <e310x_hal::clock::CoreClk::configure_hfrosc::{{closure}}::h307c259f0d5bcf2a+0x32>
20011b44:      	lw	a1, 12(sp)
20011b46:      	sw	a1, 64(sp)
20011b48:      	li	a0, 16
20011b4a:      	sb	a0, 71(sp)
20011b4e:      	lw	a0, 0(a1)
20011b50:      	lui	a2, 1048080
20011b54:      	addi	a2, a2, -1
20011b56:      	and	a0, a0, a2
20011b58:      	lui	a2, 256
20011b5c:      	or	a0, a0, a2
20011b5e:      	sw	a0, 0(a1)
20011b60:      	lw	a0, 64(sp)
20011b62:      	sw	a0, 8(sp)
20011b64:      	j	0x20011b66 <e310x_hal::clock::CoreClk::configure_hfrosc::{{closure}}::h307c259f0d5bcf2a+0x54>
20011b66:      	lw	a0, 8(sp)
20011b68:      	sw	a0, 52(sp)
20011b6a:      	sw	a0, 48(sp)
20011b6c:      	sw	a0, 4(sp)
20011b6e:      	j	0x20011b70 <e310x_hal::clock::CoreClk::configure_hfrosc::{{closure}}::h307c259f0d5bcf2a+0x5e>
20011b70:      	lw	a1, 4(sp)
20011b72:      	sw	a1, 72(sp)
20011b74:      	li	a0, 1
20011b76:      	sb	a0, 79(sp)
20011b7a:      	lw	a0, 0(a1)
20011b7c:      	lui	a2, 262144
20011b80:      	or	a0, a0, a2
20011b82:      	sw	a0, 0(a1)
20011b84:      	lw	a0, 72(sp)
20011b86:      	sw	a0, 0(sp)
20011b88:      	j	0x20011b8a <e310x_hal::clock::CoreClk::configure_hfrosc::{{closure}}::h307c259f0d5bcf2a+0x78>
20011b8a:      	lw	a0, 0(sp)
20011b8c:      	addi	sp, sp, 80
20011b8e:      	ret

20011b90 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551>:
20011b90:      	addi	sp, sp, -480
20011b92:      	sw	ra, 476(sp)
20011b96:      	sw	a2, 160(sp)
20011b98:      	sw	a1, 164(sp)
20011b9a:      	sw	a0, 260(sp)
20011b9e:      	sw	a1, 264(sp)
20011ba2:      	sw	a2, 268(sp)
20011ba6:      	sw	a1, 272(sp)
20011baa:      	lui	a0, 1465
20011bae:      	addi	a0, a0, -641
20011bb2:      	bltu	a0, a1, 0x20011bc0 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x30>
20011bb6:      	j	0x20011bb8 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x28>
20011bb8:      	li	a0, 0
20011bba:      	sb	a0, 174(sp)
20011bbe:      	j	0x20011bd4 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x44>
20011bc0:      	lw	a0, 164(sp)
20011bc2:      	lui	a1, 11719
20011bc6:      	addi	a1, a1, -1023
20011bca:      	sltu	a0, a0, a1
20011bce:      	sb	a0, 174(sp)
20011bd2:      	j	0x20011bd4 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x44>
20011bd4:      	lbu	a0, 174(sp)
20011bd8:      	andi	a0, a0, 1
20011bda:      	li	a1, 0
20011bdc:      	beq	a0, a1, 0x20011bf6 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x66>
20011be0:      	j	0x20011be2 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x52>
20011be2:      	lw	a1, 160(sp)
20011be4:      	sw	a1, 276(sp)
20011be8:      	lui	a0, 92
20011bec:      	addi	a0, a0, -1833
20011bf0:      	bltu	a0, a1, 0x20011c1c <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x8c>
20011bf4:      	j	0x20011c14 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x84>
20011bf6:      	lui	a0, 131093
20011bfa:      	addi	a0, a0, -372
20011bfe:      	lui	a1, 131093
20011c02:      	addi	a2, a1, -208
20011c06:      	li	a1, 72
20011c0a:      	auipc	ra, 2
20011c0e:      	jalr	1646(ra)
20011c12:      	unimp	
20011c14:      	li	a0, 0
20011c16:      	sb	a0, 175(sp)
20011c1a:      	j	0x20011c2e <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x9e>
20011c1c:      	lw	a0, 160(sp)
20011c1e:      	lui	a1, 93750
20011c22:      	addi	a1, a1, 1
20011c24:      	sltu	a0, a0, a1
20011c28:      	sb	a0, 175(sp)
20011c2c:      	j	0x20011c2e <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x9e>
20011c2e:      	lbu	a0, 175(sp)
20011c32:      	andi	a0, a0, 1
20011c34:      	li	a1, 0
20011c36:      	beq	a0, a1, 0x20011c46 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0xb6>
20011c3a:      	j	0x20011c3c <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0xac>
20011c3c:      	lw	a0, 160(sp)
20011c3e:      	li	a1, 0
20011c40:      	beq	a0, a1, 0x20011c7c <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0xec>
20011c44:      	j	0x20011c64 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0xd4>
20011c46:      	lui	a0, 131093
20011c4a:      	addi	a0, a0, -192
20011c4e:      	lui	a1, 131093
20011c52:      	addi	a2, a1, -120
20011c56:      	li	a1, 72
20011c5a:      	auipc	ra, 2
20011c5e:      	jalr	1566(ra)
20011c62:      	unimp	
20011c64:      	lw	a1, 160(sp)
20011c66:      	lui	a0, 93750
20011c6a:      	divu	a1, a0, a1
20011c6e:      	sw	a1, 156(sp)
20011c70:      	sw	a1, 280(sp)
20011c74:      	li	a0, 1
20011c76:      	bltu	a0, a1, 0x20011ca4 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x114>
20011c7a:      	j	0x20011c98 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x108>
20011c7c:      	lui	a0, 131093
20011c80:      	addi	a0, a0, -80
20011c84:      	lui	a1, 131093
20011c88:      	addi	a2, a1, -104
20011c8c:      	li	a1, 25
20011c8e:      	auipc	ra, 2
20011c92:      	jalr	1514(ra)
20011c96:      	unimp	
20011c98:      	li	a0, 0
20011c9a:      	sw	a0, 176(sp)
20011c9c:      	li	a0, 1
20011c9e:      	sb	a0, 183(sp)
20011ca2:      	j	0x20011cd2 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x142>
20011ca4:      	lw	a1, 156(sp)
20011ca6:      	li	a0, 0
20011ca8:      	sb	a0, 183(sp)
20011cac:      	li	a0, 128
20011cb0:      	bltu	a0, a1, 0x20011cc6 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x136>
20011cb4:      	j	0x20011cb6 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x126>
20011cb6:      	lw	a0, 156(sp)
20011cb8:      	srli	a0, a0, 1
20011cba:      	addi	a1, a0, -1
20011cbe:      	sw	a1, 152(sp)
20011cc0:      	bltu	a0, a1, 0x20011ce6 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x156>
20011cc4:      	j	0x20011ce0 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x150>
20011cc6:      	lui	a0, 131093
20011cca:      	lw	a0, -52(a0)
20011cce:      	sw	a0, 176(sp)
20011cd0:      	j	0x20011cd2 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x142>
20011cd2:      	lbu	a0, 183(sp)
20011cd6:      	andi	a0, a0, 1
20011cd8:      	li	a1, 0
20011cda:      	bne	a0, a1, 0x20011d12 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x182>
20011cde:      	j	0x20011d04 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x174>
20011ce0:      	lw	a0, 152(sp)
20011ce2:      	sw	a0, 176(sp)
20011ce4:      	j	0x20011cd2 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x142>
20011ce6:      	lui	a0, 131093
20011cea:      	addi	a0, a0, -16
20011cee:      	lui	a1, 131093
20011cf2:      	addi	a2, a1, -44
20011cf6:      	li	a1, 33
20011cfa:      	auipc	ra, 2
20011cfe:      	jalr	1406(ra)
20011d02:      	unimp	
20011d04:      	lw	a1, 176(sp)
20011d06:      	addi	a0, a1, 1
20011d0a:      	sw	a0, 148(sp)
20011d0c:      	bltu	a0, a1, 0x20011d3c <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x1ac>
20011d10:      	j	0x20011d2e <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x19e>
20011d12:      	li	a0, 1
20011d14:      	sw	a0, 184(sp)
20011d16:      	j	0x20011d18 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x188>
20011d18:      	lw	a0, 160(sp)
20011d1a:      	lw	a1, 184(sp)
20011d1c:      	mul	a2, a0, a1
20011d20:      	sw	a2, 144(sp)
20011d22:      	mulhu	a0, a0, a1
20011d26:      	li	a1, 0
20011d28:      	bne	a0, a1, 0x20011d90 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x200>
20011d2c:      	j	0x20011d7c <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x1ec>
20011d2e:      	lw	a1, 148(sp)
20011d30:      	add	a0, a1, a1
20011d34:      	sw	a0, 140(sp)
20011d36:      	bltu	a0, a1, 0x20011d5e <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x1ce>
20011d3a:      	j	0x20011d58 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x1c8>
20011d3c:      	lui	a0, 131093
20011d40:      	addi	a0, a0, 48
20011d44:      	lui	a1, 131093
20011d48:      	addi	a2, a1, 20
20011d4c:      	li	a1, 28
20011d4e:      	auipc	ra, 2
20011d52:      	jalr	1322(ra)
20011d56:      	unimp	
20011d58:      	lw	a0, 140(sp)
20011d5a:      	sw	a0, 184(sp)
20011d5c:      	j	0x20011d18 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x188>
20011d5e:      	lui	a0, 131093
20011d62:      	addi	a0, a0, 96
20011d66:      	lui	a1, 131093
20011d6a:      	addi	a2, a1, 76
20011d6e:      	li	a1, 33
20011d72:      	auipc	ra, 2
20011d76:      	jalr	1286(ra)
20011d7a:      	unimp	
20011d7c:      	lw	a1, 144(sp)
20011d7e:      	sw	a1, 284(sp)
20011d82:      	lui	a0, 11719
20011d86:      	addi	a0, a0, -1025
20011d8a:      	bltu	a0, a1, 0x20011db6 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x226>
20011d8e:      	j	0x20011dae <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x21e>
20011d90:      	lui	a0, 131093
20011d94:      	addi	a0, a0, 96
20011d98:      	lui	a1, 131093
20011d9c:      	addi	a2, a1, 132
20011da0:      	li	a1, 33
20011da4:      	auipc	ra, 2
20011da8:      	jalr	1236(ra)
20011dac:      	unimp	
20011dae:      	li	a0, 0
20011db0:      	sb	a0, 191(sp)
20011db4:      	j	0x20011dc8 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x238>
20011db6:      	lw	a0, 144(sp)
20011db8:      	lui	a1, 93750
20011dbc:      	addi	a1, a1, 1
20011dbe:      	sltu	a0, a0, a1
20011dc2:      	sb	a0, 191(sp)
20011dc6:      	j	0x20011dc8 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x238>
20011dc8:      	lbu	a0, 191(sp)
20011dcc:      	andi	a0, a0, 1
20011dce:      	li	a1, 0
20011dd0:      	beq	a0, a1, 0x20011de6 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x256>
20011dd4:      	j	0x20011dd6 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x246>
20011dd6:      	lw	a1, 164(sp)
20011dd8:      	lui	a0, 5859
20011ddc:      	addi	a0, a0, 1535
20011de0:      	bltu	a0, a1, 0x20011e14 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x284>
20011de4:      	j	0x20011e04 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x274>
20011de6:      	lui	a0, 131093
20011dea:      	addi	a0, a0, 148
20011dee:      	lui	a1, 131093
20011df2:      	addi	a2, a1, 220
20011df6:      	li	a1, 72
20011dfa:      	auipc	ra, 2
20011dfe:      	jalr	1150(ra)
20011e02:      	unimp	
20011e04:      	lw	a1, 164(sp)
20011e06:      	lui	a0, 4395
20011e0a:      	addi	a0, a0, -1921
20011e0e:      	bltu	a0, a1, 0x20011e46 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x2b6>
20011e12:      	j	0x20011e36 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x2a6>
20011e14:      	lw	a1, 164(sp)
20011e16:      	lui	a0, 11719
20011e1a:      	addi	a0, a0, -1024
20011e1e:      	bltu	a0, a1, 0x20011e04 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x274>
20011e22:      	j	0x20011e24 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x294>
20011e24:      	li	a0, 4
20011e26:      	sw	a0, 192(sp)
20011e28:      	j	0x20011e2a <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x29a>
20011e2a:      	lw	a0, 192(sp)
20011e2c:      	sw	a0, 136(sp)
20011e2e:      	li	a1, 0
20011e30:      	beq	a0, a1, 0x20011ed2 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x342>
20011e34:      	j	0x20011eb6 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x326>
20011e36:      	lw	a1, 164(sp)
20011e38:      	lui	a0, 2930
20011e3c:      	addi	a0, a0, -1281
20011e40:      	bltu	a0, a1, 0x20011e6c <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x2dc>
20011e44:      	j	0x20011e5c <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x2cc>
20011e46:      	lw	a1, 164(sp)
20011e48:      	lui	a0, 5859
20011e4c:      	addi	a0, a0, 1535
20011e50:      	bltu	a0, a1, 0x20011e36 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x2a6>
20011e54:      	j	0x20011e56 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x2c6>
20011e56:      	li	a0, 3
20011e58:      	sw	a0, 192(sp)
20011e5a:      	j	0x20011e2a <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x29a>
20011e5c:      	lw	a1, 164(sp)
20011e5e:      	lui	a0, 1465
20011e62:      	addi	a0, a0, -641
20011e66:      	bltu	a0, a1, 0x20011ea0 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x310>
20011e6a:      	j	0x20011e82 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x2f2>
20011e6c:      	lw	a1, 164(sp)
20011e6e:      	lui	a0, 4395
20011e72:      	addi	a0, a0, -1921
20011e76:      	bltu	a0, a1, 0x20011e5c <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x2cc>
20011e7a:      	j	0x20011e7c <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x2ec>
20011e7c:      	li	a0, 2
20011e7e:      	sw	a0, 192(sp)
20011e80:      	j	0x20011e2a <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x29a>
20011e82:      	lui	a0, 131093
20011e86:      	addi	a0, a0, 768
20011e8a:      	lui	a1, 131093
20011e8e:      	addi	a2, a1, 856
20011e92:      	li	a1, 40
20011e96:      	auipc	ra, 2
20011e9a:      	jalr	994(ra)
20011e9e:      	unimp	
20011ea0:      	lw	a1, 164(sp)
20011ea2:      	lui	a0, 2930
20011ea6:      	addi	a0, a0, -1281
20011eaa:      	bltu	a0, a1, 0x20011e82 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x2f2>
20011eae:      	j	0x20011eb0 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x320>
20011eb0:      	li	a0, 1
20011eb2:      	sw	a0, 192(sp)
20011eb4:      	j	0x20011e2a <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x29a>
20011eb6:      	lw	a0, 164(sp)
20011eb8:      	lw	a1, 136(sp)
20011eba:      	divu	a1, a0, a1
20011ebe:      	sw	a1, 132(sp)
20011ec0:      	sw	a1, 288(sp)
20011ec4:      	lui	a0, 1465
20011ec8:      	addi	a0, a0, -641
20011ecc:      	bltu	a0, a1, 0x20011ef6 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x366>
20011ed0:      	j	0x20011eee <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x35e>
20011ed2:      	lui	a0, 131093
20011ed6:      	addi	a0, a0, -80
20011eda:      	lui	a1, 131093
20011ede:      	addi	a2, a1, 236
20011ee2:      	li	a1, 25
20011ee4:      	auipc	ra, 2
20011ee8:      	jalr	916(ra)
20011eec:      	unimp	
20011eee:      	li	a0, 0
20011ef0:      	sb	a0, 199(sp)
20011ef4:      	j	0x20011f0a <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x37a>
20011ef6:      	lw	a0, 132(sp)
20011ef8:      	lui	a1, 2930
20011efc:      	addi	a1, a1, -1279
20011f00:      	sltu	a0, a0, a1
20011f04:      	sb	a0, 199(sp)
20011f08:      	j	0x20011f0a <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x37a>
20011f0a:      	lbu	a0, 199(sp)
20011f0e:      	andi	a0, a0, 1
20011f10:      	li	a1, 0
20011f12:      	beq	a0, a1, 0x20011f26 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x396>
20011f16:      	j	0x20011f18 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x388>
20011f18:      	lw	a1, 144(sp)
20011f1a:      	lui	a0, 46875
20011f1e:      	addi	a0, a0, -1
20011f20:      	bltu	a0, a1, 0x20011f54 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x3c4>
20011f24:      	j	0x20011f44 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x3b4>
20011f26:      	lui	a0, 131093
20011f2a:      	addi	a0, a0, 252
20011f2e:      	lui	a1, 131093
20011f32:      	addi	a2, a1, 316
20011f36:      	li	a1, 64
20011f3a:      	auipc	ra, 2
20011f3e:      	jalr	830(ra)
20011f42:      	unimp	
20011f44:      	lw	a1, 144(sp)
20011f46:      	lui	a0, 23437
20011f4a:      	addi	a0, a0, 2047
20011f4e:      	bltu	a0, a1, 0x20011f8c <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x3fc>
20011f52:      	j	0x20011f7c <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x3ec>
20011f54:      	lw	a1, 144(sp)
20011f56:      	lui	a0, 93750
20011f5a:      	bltu	a0, a1, 0x20011f44 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x3b4>
20011f5e:      	j	0x20011f60 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x3d0>
20011f60:      	li	a0, 2
20011f62:      	sw	a0, 200(sp)
20011f64:      	j	0x20011f66 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x3d6>
20011f66:      	lw	a0, 144(sp)
20011f68:      	lw	a1, 200(sp)
20011f6a:      	mul	a2, a0, a1
20011f6e:      	sw	a2, 128(sp)
20011f70:      	mulhu	a0, a0, a1
20011f74:      	li	a1, 0
20011f76:      	bne	a0, a1, 0x20011fe6 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x456>
20011f7a:      	j	0x20011fd4 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x444>
20011f7c:      	lw	a1, 144(sp)
20011f7e:      	lui	a0, 11719
20011f82:      	addi	a0, a0, -1025
20011f86:      	bltu	a0, a1, 0x20011fbe <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x42e>
20011f8a:      	j	0x20011fa0 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x410>
20011f8c:      	lw	a1, 144(sp)
20011f8e:      	lui	a0, 46875
20011f92:      	addi	a0, a0, -1
20011f94:      	bltu	a0, a1, 0x20011f7c <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x3ec>
20011f98:      	j	0x20011f9a <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x40a>
20011f9a:      	li	a0, 4
20011f9c:      	sw	a0, 200(sp)
20011f9e:      	j	0x20011f66 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x3d6>
20011fa0:      	lui	a0, 131093
20011fa4:      	addi	a0, a0, 768
20011fa8:      	lui	a1, 131093
20011fac:      	addi	a2, a1, 840
20011fb0:      	li	a1, 40
20011fb4:      	auipc	ra, 2
20011fb8:      	jalr	708(ra)
20011fbc:      	unimp	
20011fbe:      	lw	a1, 144(sp)
20011fc0:      	lui	a0, 23437
20011fc4:      	addi	a0, a0, 2047
20011fc8:      	bltu	a0, a1, 0x20011fa0 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x410>
20011fcc:      	j	0x20011fce <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x43e>
20011fce:      	li	a0, 8
20011fd0:      	sw	a0, 200(sp)
20011fd2:      	j	0x20011f66 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x3d6>
20011fd4:      	lw	a1, 128(sp)
20011fd6:      	sw	a1, 292(sp)
20011fda:      	lui	a0, 93750
20011fde:      	addi	a0, a0, -1
20011fe0:      	bltu	a0, a1, 0x2001200c <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x47c>
20011fe4:      	j	0x20012004 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x474>
20011fe6:      	lui	a0, 131093
20011fea:      	addi	a0, a0, 96
20011fee:      	lui	a1, 131093
20011ff2:      	addi	a2, a1, 332
20011ff6:      	li	a1, 33
20011ffa:      	auipc	ra, 2
20011ffe:      	jalr	638(ra)
20012002:      	unimp	
20012004:      	li	a0, 0
20012006:      	sb	a0, 207(sp)
2001200a:      	j	0x2001201e <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x48e>
2001200c:      	lw	a0, 128(sp)
2001200e:      	lui	a1, 187500
20012012:      	addi	a1, a1, 1
20012014:      	sltu	a0, a0, a1
20012018:      	sb	a0, 207(sp)
2001201c:      	j	0x2001201e <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x48e>
2001201e:      	lbu	a0, 207(sp)
20012022:      	andi	a0, a0, 1
20012024:      	li	a1, 0
20012026:      	beq	a0, a1, 0x20012036 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x4a6>
2001202a:      	j	0x2001202c <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x49c>
2001202c:      	lw	a0, 132(sp)
2001202e:      	li	a1, 0
20012030:      	beq	a0, a1, 0x2001206c <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x4dc>
20012034:      	j	0x20012054 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x4c4>
20012036:      	lui	a0, 131093
2001203a:      	addi	a0, a0, 348
2001203e:      	lui	a1, 131093
20012042:      	addi	a2, a1, 424
20012046:      	li	a1, 74
2001204a:      	auipc	ra, 2
2001204e:      	jalr	558(ra)
20012052:      	unimp	
20012054:      	lw	a0, 128(sp)
20012056:      	lw	a1, 132(sp)
20012058:      	divu	a1, a0, a1
2001205c:      	sw	a1, 124(sp)
2001205e:      	sw	a1, 296(sp)
20012062:      	li	a0, 128
20012066:      	bltu	a0, a1, 0x20012098 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x508>
2001206a:      	j	0x20012088 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x4f8>
2001206c:      	lui	a0, 131093
20012070:      	addi	a0, a0, -80
20012074:      	lui	a1, 131093
20012078:      	addi	a2, a1, 440
2001207c:      	li	a1, 25
2001207e:      	auipc	ra, 2
20012082:      	jalr	506(ra)
20012086:      	unimp	
20012088:      	lw	a0, 124(sp)
2001208a:      	srli	a0, a0, 1
2001208c:      	add	a0, a0, a0
2001208e:      	sw	a0, 120(sp)
20012090:      	li	a0, 0
20012092:      	bne	a0, a0, 0x200120ce <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x53e>
20012096:      	j	0x200120b4 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x524>
20012098:      	lui	a0, 131093
2001209c:      	addi	a0, a0, 456
200120a0:      	lui	a1, 131093
200120a4:      	addi	a2, a1, 484
200120a8:      	li	a1, 26
200120aa:      	auipc	ra, 2
200120ae:      	jalr	462(ra)
200120b2:      	unimp	
200120b4:      	lw	a0, 132(sp)
200120b6:      	lw	a1, 120(sp)
200120b8:      	sw	a1, 300(sp)
200120bc:      	mul	a2, a0, a1
200120c0:      	sw	a2, 116(sp)
200120c2:      	mulhu	a0, a0, a1
200120c6:      	li	a1, 0
200120c8:      	bne	a0, a1, 0x20012100 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x570>
200120cc:      	j	0x200120ec <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x55c>
200120ce:      	lui	a0, 131093
200120d2:      	addi	a0, a0, 96
200120d6:      	lui	a1, 131093
200120da:      	addi	a2, a1, 500
200120de:      	li	a1, 33
200120e2:      	auipc	ra, 2
200120e6:      	jalr	406(ra)
200120ea:      	unimp	
200120ec:      	lw	a1, 120(sp)
200120ee:      	lw	a0, 116(sp)
200120f0:      	sw	a0, 304(sp)
200120f4:      	addi	a0, a1, 2
200120f8:      	sw	a0, 112(sp)
200120fa:      	bltu	a0, a1, 0x20012138 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x5a8>
200120fe:      	j	0x2001211e <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x58e>
20012100:      	lui	a0, 131093
20012104:      	addi	a0, a0, 96
20012108:      	lui	a1, 131093
2001210c:      	addi	a2, a1, 516
20012110:      	li	a1, 33
20012114:      	auipc	ra, 2
20012118:      	jalr	356(ra)
2001211c:      	unimp	
2001211e:      	lw	a0, 132(sp)
20012120:      	lw	a1, 112(sp)
20012122:      	sw	a1, 308(sp)
20012126:      	mul	a2, a0, a1
2001212a:      	sw	a2, 108(sp)
2001212c:      	mulhu	a0, a0, a1
20012130:      	li	a1, 0
20012132:      	bne	a0, a1, 0x20012166 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x5d6>
20012136:      	j	0x20012154 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x5c4>
20012138:      	lui	a0, 131093
2001213c:      	addi	a0, a0, 48
20012140:      	lui	a1, 131093
20012144:      	addi	a2, a1, 532
20012148:      	li	a1, 28
2001214a:      	auipc	ra, 2
2001214e:      	jalr	302(ra)
20012152:      	unimp	
20012154:      	lw	a0, 112(sp)
20012156:      	lw	a1, 108(sp)
20012158:      	sw	a1, 312(sp)
2001215c:      	li	a1, 129
20012160:      	bltu	a0, a1, 0x2001218c <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x5fc>
20012164:      	j	0x20012184 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x5f4>
20012166:      	lui	a0, 131093
2001216a:      	addi	a0, a0, 96
2001216e:      	lui	a1, 131093
20012172:      	addi	a2, a1, 548
20012176:      	li	a1, 33
2001217a:      	auipc	ra, 2
2001217e:      	jalr	254(ra)
20012182:      	unimp	
20012184:      	li	a0, 0
20012186:      	sb	a0, 217(sp)
2001218a:      	j	0x2001219e <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x60e>
2001218c:      	lw	a0, 108(sp)
2001218e:      	lui	a1, 187500
20012192:      	addi	a1, a1, 1
20012194:      	sltu	a0, a0, a1
20012198:      	sb	a0, 217(sp)
2001219c:      	j	0x2001219e <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x60e>
2001219e:      	lbu	a0, 217(sp)
200121a2:      	andi	a0, a0, 1
200121a4:      	li	a1, 0
200121a6:      	bne	a0, a1, 0x200121b4 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x624>
200121aa:      	j	0x200121ac <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x61c>
200121ac:      	li	a0, 0
200121ae:      	sb	a0, 216(sp)
200121b2:      	j	0x2001224e <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x6be>
200121b4:      	lw	a2, 128(sp)
200121b6:      	lw	a1, 108(sp)
200121b8:      	li	a0, 0
200121ba:      	slt	a0, a0, a1
200121be:      	sub	a1, a2, a1
200121c2:      	sw	a1, 104(sp)
200121c4:      	slt	a1, a1, a2
200121c8:      	bne	a0, a1, 0x200121dc <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x64c>
200121cc:      	j	0x200121ce <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x63e>
200121ce:      	lw	a0, 104(sp)
200121d0:      	auipc	ra, 0
200121d4:      	jalr	2008(ra)
200121d8:      	sw	a0, 100(sp)
200121da:      	j	0x200121fa <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x66a>
200121dc:      	lui	a0, 131093
200121e0:      	addi	a0, a0, -16
200121e4:      	lui	a1, 131093
200121e8:      	addi	a2, a1, 564
200121ec:      	li	a1, 33
200121f0:      	auipc	ra, 2
200121f4:      	jalr	136(ra)
200121f8:      	unimp	
200121fa:      	lw	a2, 128(sp)
200121fc:      	lw	a1, 116(sp)
200121fe:      	li	a0, 0
20012200:      	slt	a0, a0, a1
20012204:      	sub	a1, a2, a1
20012208:      	sw	a1, 96(sp)
2001220a:      	slt	a1, a1, a2
2001220e:      	bne	a0, a1, 0x20012222 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x692>
20012212:      	j	0x20012214 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x684>
20012214:      	lw	a0, 96(sp)
20012216:      	auipc	ra, 0
2001221a:      	jalr	1938(ra)
2001221e:      	sw	a0, 92(sp)
20012220:      	j	0x20012240 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x6b0>
20012222:      	lui	a0, 131093
20012226:      	addi	a0, a0, -16
2001222a:      	lui	a1, 131093
2001222e:      	addi	a2, a1, 580
20012232:      	li	a1, 33
20012236:      	auipc	ra, 2
2001223a:      	jalr	66(ra)
2001223e:      	unimp	
20012240:      	lw	a0, 100(sp)
20012242:      	lw	a1, 92(sp)
20012244:      	slt	a0, a0, a1
20012248:      	sb	a0, 216(sp)
2001224c:      	j	0x2001224e <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x6be>
2001224e:      	lbu	a0, 216(sp)
20012252:      	andi	a0, a0, 1
20012254:      	li	a1, 0
20012256:      	bne	a0, a1, 0x20012266 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x6d6>
2001225a:      	j	0x2001225c <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x6cc>
2001225c:      	lw	a0, 116(sp)
2001225e:      	lw	a1, 120(sp)
20012260:      	sw	a1, 208(sp)
20012262:      	sw	a0, 212(sp)
20012264:      	j	0x20012270 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x6e0>
20012266:      	lw	a0, 108(sp)
20012268:      	lw	a1, 112(sp)
2001226a:      	sw	a1, 208(sp)
2001226c:      	sw	a0, 212(sp)
2001226e:      	j	0x20012270 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x6e0>
20012270:      	lw	a0, 208(sp)
20012272:      	sw	a0, 84(sp)
20012274:      	sw	a0, 316(sp)
20012278:      	lw	a1, 212(sp)
2001227a:      	sw	a1, 88(sp)
2001227c:      	sw	a1, 320(sp)
20012280:      	lui	a0, 93750
20012284:      	addi	a0, a0, -1
20012286:      	bltu	a0, a1, 0x20012294 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x704>
2001228a:      	j	0x2001228c <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x6fc>
2001228c:      	li	a0, 0
2001228e:      	sb	a0, 218(sp)
20012292:      	j	0x200122a6 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x716>
20012294:      	lw	a0, 88(sp)
20012296:      	lui	a1, 187500
2001229a:      	addi	a1, a1, 1
2001229c:      	sltu	a0, a0, a1
200122a0:      	sb	a0, 218(sp)
200122a4:      	j	0x200122a6 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x716>
200122a6:      	lbu	a0, 218(sp)
200122aa:      	andi	a0, a0, 1
200122ac:      	li	a1, 0
200122ae:      	beq	a0, a1, 0x200122c0 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x730>
200122b2:      	j	0x200122b4 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x724>
200122b4:      	lw	a0, 200(sp)
200122b6:      	sw	a0, 80(sp)
200122b8:      	li	a1, 0
200122ba:      	beq	a0, a1, 0x200122fa <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x76a>
200122be:      	j	0x200122de <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x74e>
200122c0:      	lui	a0, 131093
200122c4:      	addi	a0, a0, 596
200122c8:      	lui	a1, 131093
200122cc:      	addi	a2, a1, 656
200122d0:      	li	a1, 60
200122d4:      	auipc	ra, 2
200122d8:      	jalr	-92(ra)
200122dc:      	unimp	
200122de:      	lw	a0, 88(sp)
200122e0:      	lw	a1, 80(sp)
200122e2:      	divu	a1, a0, a1
200122e6:      	sw	a1, 76(sp)
200122e8:      	sw	a1, 324(sp)
200122ec:      	lui	a0, 11719
200122f0:      	addi	a0, a0, -1025
200122f4:      	bltu	a0, a1, 0x2001231e <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x78e>
200122f8:      	j	0x20012316 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x786>
200122fa:      	lui	a0, 131093
200122fe:      	addi	a0, a0, -80
20012302:      	lui	a1, 131093
20012306:      	addi	a2, a1, 672
2001230a:      	li	a1, 25
2001230c:      	auipc	ra, 2
20012310:      	jalr	-148(ra)
20012314:      	unimp	
20012316:      	li	a0, 0
20012318:      	sb	a0, 219(sp)
2001231c:      	j	0x20012330 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x7a0>
2001231e:      	lw	a0, 76(sp)
20012320:      	lui	a1, 93750
20012324:      	addi	a1, a1, 1
20012326:      	sltu	a0, a0, a1
2001232a:      	sb	a0, 219(sp)
2001232e:      	j	0x20012330 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x7a0>
20012330:      	lbu	a0, 219(sp)
20012334:      	andi	a0, a0, 1
20012336:      	li	a1, 0
20012338:      	beq	a0, a1, 0x2001234a <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x7ba>
2001233c:      	j	0x2001233e <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x7ae>
2001233e:      	lw	a0, 184(sp)
20012340:      	sw	a0, 72(sp)
20012342:      	li	a1, 0
20012344:      	beq	a0, a1, 0x20012384 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x7f4>
20012348:      	j	0x20012368 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x7d8>
2001234a:      	lui	a0, 131093
2001234e:      	addi	a0, a0, 148
20012352:      	lui	a1, 131093
20012356:      	addi	a2, a1, 688
2001235a:      	li	a1, 72
2001235e:      	auipc	ra, 2
20012362:      	jalr	-230(ra)
20012366:      	unimp	
20012368:      	lw	a0, 76(sp)
2001236a:      	lw	a1, 72(sp)
2001236c:      	divu	a1, a0, a1
20012370:      	sw	a1, 68(sp)
20012372:      	sw	a1, 328(sp)
20012376:      	lui	a0, 92
2001237a:      	addi	a0, a0, -1833
2001237e:      	bltu	a0, a1, 0x200123a8 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x818>
20012382:      	j	0x200123a0 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x810>
20012384:      	lui	a0, 131093
20012388:      	addi	a0, a0, -80
2001238c:      	lui	a1, 131093
20012390:      	addi	a2, a1, 704
20012394:      	li	a1, 25
20012396:      	auipc	ra, 2
2001239a:      	jalr	-286(ra)
2001239e:      	unimp	
200123a0:      	li	a0, 0
200123a2:      	sb	a0, 220(sp)
200123a6:      	j	0x200123ba <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x82a>
200123a8:      	lw	a0, 68(sp)
200123aa:      	lui	a1, 93750
200123ae:      	addi	a1, a1, 1
200123b0:      	sltu	a0, a0, a1
200123b4:      	sb	a0, 220(sp)
200123b8:      	j	0x200123ba <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x82a>
200123ba:      	lbu	a0, 220(sp)
200123be:      	andi	a0, a0, 1
200123c0:      	li	a1, 0
200123c2:      	beq	a0, a1, 0x200123d6 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x846>
200123c6:      	j	0x200123c8 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x838>
200123c8:      	lw	a0, 192(sp)
200123ca:      	addi	a1, a0, -1
200123ce:      	sw	a1, 64(sp)
200123d0:      	bltu	a0, a1, 0x2001240a <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x87a>
200123d4:      	j	0x200123f4 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x864>
200123d6:      	lui	a0, 131093
200123da:      	addi	a0, a0, -192
200123de:      	lui	a1, 131093
200123e2:      	addi	a2, a1, 720
200123e6:      	li	a1, 72
200123ea:      	auipc	ra, 2
200123ee:      	jalr	-370(ra)
200123f2:      	unimp	
200123f4:      	lw	a0, 84(sp)
200123f6:      	lw	a1, 64(sp)
200123f8:      	sb	a1, 221(sp)
200123fc:      	srli	a0, a0, 1
200123fe:      	addi	a1, a0, -1
20012402:      	sw	a1, 60(sp)
20012404:      	bltu	a0, a1, 0x2001244e <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x8be>
20012408:      	j	0x20012428 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x898>
2001240a:      	lui	a0, 131093
2001240e:      	addi	a0, a0, -16
20012412:      	lui	a1, 131093
20012416:      	addi	a2, a1, 736
2001241a:      	li	a1, 33
2001241e:      	auipc	ra, 2
20012422:      	jalr	-422(ra)
20012426:      	unimp	
20012428:      	lw	a0, 60(sp)
2001242a:      	sb	a0, 222(sp)
2001242e:      	lw	a0, 200(sp)
20012430:      	sw	a0, 56(sp)
20012432:      	li	a1, 2
20012434:      	beq	a0, a1, 0x2001248a <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x8fa>
20012438:      	j	0x2001243a <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x8aa>
2001243a:      	lw	a0, 56(sp)
2001243c:      	li	a1, 4
2001243e:      	beq	a0, a1, 0x20012492 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x902>
20012442:      	j	0x20012444 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x8b4>
20012444:      	lw	a0, 56(sp)
20012446:      	li	a1, 8
20012448:      	beq	a0, a1, 0x2001249a <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x90a>
2001244c:      	j	0x2001246c <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x8dc>
2001244e:      	lui	a0, 131093
20012452:      	addi	a0, a0, -16
20012456:      	lui	a1, 131093
2001245a:      	addi	a2, a1, 752
2001245e:      	li	a1, 33
20012462:      	auipc	ra, 2
20012466:      	jalr	-490(ra)
2001246a:      	unimp	
2001246c:      	lui	a0, 131093
20012470:      	addi	a0, a0, 768
20012474:      	lui	a1, 131093
20012478:      	addi	a2, a1, 808
2001247c:      	li	a1, 40
20012480:      	auipc	ra, 2
20012484:      	jalr	-520(ra)
20012488:      	unimp	
2001248a:      	li	a0, 1
2001248c:      	sb	a0, 223(sp)
20012490:      	j	0x200124a2 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x912>
20012492:      	li	a0, 2
20012494:      	sb	a0, 223(sp)
20012498:      	j	0x200124a2 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x912>
2001249a:      	li	a0, 3
2001249c:      	sb	a0, 223(sp)
200124a0:      	j	0x200124a2 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x912>
200124a2:      	j	0x200124a4 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x914>
200124a4:      	lui	a0, 65544
200124a8:      	sw	a0, 332(sp)
200124ac:      	addi	a1, sp, 221
200124b0:      	sw	a1, 224(sp)
200124b2:      	addi	a1, sp, 222
200124b6:      	sw	a1, 228(sp)
200124b8:      	addi	a1, sp, 223
200124bc:      	sw	a1, 232(sp)
200124be:      	addi	a0, a0, 8
200124c0:      	sw	a0, 52(sp)
200124c2:      	sw	a0, 428(sp)
200124c6:      	sw	a0, 436(sp)
200124ca:      	sw	a0, 440(sp)
200124ce:      	auipc	ra, 0
200124d2:      	jalr	1390(ra)
200124d6:      	sw	a0, 432(sp)
200124da:      	lw	a1, 224(sp)
200124dc:      	sw	a1, 392(sp)
200124e0:      	lw	a1, 228(sp)
200124e2:      	sw	a1, 396(sp)
200124e6:      	lw	a1, 232(sp)
200124e8:      	sw	a1, 400(sp)
200124ec:      	sw	a0, 420(sp)
200124f0:      	sw	a0, 424(sp)
200124f4:      	addi	a1, sp, 420
200124f6:      	sw	a1, 408(sp)
200124fa:      	addi	a2, sp, 424
200124fc:      	sw	a2, 412(sp)
20012500:      	addi	a0, sp, 392
20012502:      	auipc	ra, 0
20012506:      	jalr	380(ra)
2001250a:      	mv	a1, a0
2001250c:      	lw	a0, 52(sp)
2001250e:      	lw	a1, 0(a1)
20012510:      	sw	a0, 452(sp)
20012514:      	sw	a1, 456(sp)
20012518:      	sw	a0, 460(sp)
2001251c:      	auipc	ra, 0
20012520:      	jalr	1330(ra)
20012524:      	j	0x20012526 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x996>
20012526:      	addi	a0, sp, 176
20012528:      	sw	a0, 240(sp)
2001252a:      	addi	a1, sp, 183
2001252e:      	sw	a1, 244(sp)
20012530:      	lui	a2, 65544
20012534:      	addi	a2, a2, 12
20012536:      	sw	a2, 48(sp)
20012538:      	sw	a2, 380(sp)
2001253c:      	sw	a0, 384(sp)
20012540:      	sw	a1, 388(sp)
20012544:      	li	a2, 256
20012548:      	sw	a2, 376(sp)
2001254c:      	addi	a2, sp, 376
2001254e:      	sw	a2, 372(sp)
20012552:      	auipc	ra, 0
20012556:      	jalr	490(ra)
2001255a:      	mv	a1, a0
2001255c:      	lw	a0, 48(sp)
2001255e:      	lw	a1, 0(a1)
20012560:      	sw	a0, 464(sp)
20012564:      	sw	a1, 468(sp)
20012568:      	sw	a0, 472(sp)
2001256c:      	auipc	ra, 0
20012570:      	jalr	1250(ra)
20012574:      	j	0x20012576 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x9e6>
20012576:      	addi	a0, sp, 248
20012578:      	auipc	ra, 0
2001257c:      	jalr	1534(ra)
20012580:      	sw	a1, 40(sp)
20012582:      	sw	a0, 44(sp)
20012584:      	j	0x20012586 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0x9f6>
20012586:      	lw	a1, 44(sp)
20012588:      	lw	a4, 40(sp)
2001258a:      	addi	a0, a1, 4
2001258e:      	sw	a0, 24(sp)
20012590:      	sltu	a2, a0, a1
20012594:      	add	a3, a4, a2
20012598:      	sw	a3, 28(sp)
2001259a:      	sltu	a3, a3, a4
2001259e:      	sw	a3, 32(sp)
200125a0:      	sw	a2, 36(sp)
200125a2:      	bgeu	a0, a1, 0x200125aa <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0xa1a>
200125a6:      	lw	a0, 32(sp)
200125a8:      	sw	a0, 36(sp)
200125aa:      	lw	a0, 36(sp)
200125ac:      	li	a1, 0
200125ae:      	bne	a0, a1, 0x200125c2 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0xa32>
200125b2:      	j	0x200125b4 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0xa24>
200125b4:      	lw	a0, 28(sp)
200125b6:      	lw	a1, 24(sp)
200125b8:      	sw	a1, 336(sp)
200125bc:      	sw	a0, 340(sp)
200125c0:      	j	0x200125de <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0xa4e>
200125c2:      	lui	a0, 131093
200125c6:      	addi	a0, a0, 48
200125ca:      	lui	a1, 131093
200125ce:      	addi	a2, a1, 824
200125d2:      	li	a1, 28
200125d4:      	auipc	ra, 2
200125d8:      	jalr	-860(ra)
200125dc:      	unimp	
200125de:      	addi	a0, sp, 248
200125e0:      	auipc	ra, 0
200125e4:      	jalr	1430(ra)
200125e8:      	sw	a1, 16(sp)
200125ea:      	sw	a0, 20(sp)
200125ec:      	j	0x200125ee <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0xa5e>
200125ee:      	lw	a0, 16(sp)
200125f0:      	lw	a1, 28(sp)
200125f2:      	lw	a2, 20(sp)
200125f4:      	lw	a3, 24(sp)
200125f6:      	sltu	a2, a2, a3
200125fa:      	sltu	a3, a0, a1
200125fe:      	sw	a3, 8(sp)
20012600:      	sw	a2, 12(sp)
20012602:      	beq	a0, a1, 0x2001260a <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0xa7a>
20012606:      	lw	a0, 8(sp)
20012608:      	sw	a0, 12(sp)
2001260a:      	lw	a0, 12(sp)
2001260c:      	li	a1, 0
2001260e:      	bne	a0, a1, 0x200125de <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0xa4e>
20012612:      	j	0x20012614 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0xa84>
20012614:      	lui	a0, 65544
20012618:      	addi	a0, a0, 8
2001261a:      	sw	a0, 368(sp)
2001261e:      	sw	a0, 444(sp)
20012622:      	sw	a0, 448(sp)
20012626:      	auipc	ra, 0
2001262a:      	jalr	1046(ra)
2001262e:      	sw	a0, 364(sp)
20012632:      	sw	a0, 256(sp)
20012636:      	j	0x20012638 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0xaa8>
20012638:      	addi	a0, sp, 256
2001263a:      	sw	a0, 348(sp)
2001263e:      	lw	a0, 256(sp)
20012642:      	srli	a0, a0, 31
20012644:      	sb	a0, 355(sp)
20012648:      	sb	a0, 354(sp)
2001264c:      	sb	a0, 255(sp)
20012650:      	j	0x20012652 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0xac2>
20012652:      	addi	a0, sp, 255
20012656:      	sw	a0, 356(sp)
2001265a:      	sw	a0, 360(sp)
2001265e:      	lb	a0, 255(sp)
20012662:      	sw	a0, 4(sp)
20012664:      	j	0x20012666 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0xad6>
20012666:      	lw	a0, 4(sp)
20012668:      	andi	a0, a0, 1
2001266a:      	li	a1, 0
2001266c:      	beq	a0, a1, 0x20012614 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0xa84>
20012670:      	j	0x20012672 <e310x_hal::clock::CoreClk::configure_pll::he840e38f4b3c1551+0xae2>
20012672:      	lw	a0, 68(sp)
20012674:      	sw	a0, 168(sp)
20012676:      	lw	ra, 476(sp)
2001267a:      	addi	sp, sp, 480
2001267c:      	ret

2001267e <e310x_hal::clock::CoreClk::configure_pll::{{closure}}::h8af3a054deae6295>:
2001267e:      	addi	sp, sp, -112
20012680:      	sw	a0, 32(sp)
20012682:      	sw	a1, 40(sp)
20012684:      	sw	a2, 44(sp)
20012686:      	sw	a2, 68(sp)
20012688:      	sw	a2, 64(sp)
2001268a:      	sw	a2, 36(sp)
2001268c:      	j	0x2001268e <e310x_hal::clock::CoreClk::configure_pll::{{closure}}::h8af3a054deae6295+0x10>
2001268e:      	lw	a1, 36(sp)
20012690:      	lw	a0, 32(sp)
20012692:      	lw	a0, 0(a0)
20012694:      	lbu	a2, 0(a0)
20012698:      	sw	a1, 96(sp)
2001269a:      	sb	a2, 103(sp)
2001269e:      	lw	a0, 0(a1)
200126a0:      	andi	a0, a0, -8
200126a2:      	andi	a2, a2, 7
200126a4:      	or	a0, a0, a2
200126a6:      	sw	a0, 0(a1)
200126a8:      	lw	a0, 96(sp)
200126aa:      	sw	a0, 28(sp)
200126ac:      	j	0x200126ae <e310x_hal::clock::CoreClk::configure_pll::{{closure}}::h8af3a054deae6295+0x30>
200126ae:      	lw	a0, 28(sp)
200126b0:      	sw	a0, 52(sp)
200126b2:      	sw	a0, 48(sp)
200126b4:      	sw	a0, 24(sp)
200126b6:      	j	0x200126b8 <e310x_hal::clock::CoreClk::configure_pll::{{closure}}::h8af3a054deae6295+0x3a>
200126b8:      	lw	a1, 24(sp)
200126ba:      	lw	a0, 32(sp)
200126bc:      	lw	a0, 4(a0)
200126be:      	lbu	a2, 0(a0)
200126c2:      	sw	a1, 80(sp)
200126c4:      	sb	a2, 87(sp)
200126c8:      	lw	a0, 0(a1)
200126ca:      	andi	a0, a0, -1009
200126ce:      	andi	a2, a2, 63
200126d2:      	slli	a2, a2, 4
200126d4:      	or	a0, a0, a2
200126d6:      	sw	a0, 0(a1)
200126d8:      	lw	a0, 80(sp)
200126da:      	sw	a0, 20(sp)
200126dc:      	j	0x200126de <e310x_hal::clock::CoreClk::configure_pll::{{closure}}::h8af3a054deae6295+0x60>
200126de:      	lw	a0, 20(sp)
200126e0:      	sw	a0, 60(sp)
200126e2:      	sw	a0, 56(sp)
200126e4:      	sw	a0, 16(sp)
200126e6:      	j	0x200126e8 <e310x_hal::clock::CoreClk::configure_pll::{{closure}}::h8af3a054deae6295+0x6a>
200126e8:      	lw	a1, 16(sp)
200126ea:      	lw	a0, 32(sp)
200126ec:      	lw	a0, 8(a0)
200126ee:      	lbu	a2, 0(a0)
200126f2:      	sw	a1, 88(sp)
200126f4:      	sb	a2, 95(sp)
200126f8:      	lw	a0, 0(a1)
200126fa:      	lui	a3, 1048575
200126fc:      	addi	a3, a3, 1023
20012700:      	and	a0, a0, a3
20012702:      	andi	a2, a2, 3
20012704:      	slli	a2, a2, 10
20012706:      	or	a0, a0, a2
20012708:      	sw	a0, 0(a1)
2001270a:      	lw	a0, 88(sp)
2001270c:      	sw	a0, 12(sp)
2001270e:      	j	0x20012710 <e310x_hal::clock::CoreClk::configure_pll::{{closure}}::h8af3a054deae6295+0x92>
20012710:      	lw	a0, 12(sp)
20012712:      	sw	a0, 76(sp)
20012714:      	sw	a0, 72(sp)
20012716:      	sw	a0, 8(sp)
20012718:      	j	0x2001271a <e310x_hal::clock::CoreClk::configure_pll::{{closure}}::h8af3a054deae6295+0x9c>
2001271a:      	lw	a1, 8(sp)
2001271c:      	sw	a1, 104(sp)
2001271e:      	li	a0, 0
20012720:      	sb	a0, 111(sp)
20012724:      	lw	a0, 0(a1)
20012726:      	lui	a2, 1048512
2001272a:      	addi	a2, a2, -1
2001272c:      	and	a0, a0, a2
2001272e:      	sw	a0, 0(a1)
20012730:      	lw	a0, 104(sp)
20012732:      	sw	a0, 4(sp)
20012734:      	j	0x20012736 <e310x_hal::clock::CoreClk::configure_pll::{{closure}}::h8af3a054deae6295+0xb8>
20012736:      	lw	a0, 4(sp)
20012738:      	addi	sp, sp, 112
2001273a:      	ret

2001273c <e310x_hal::clock::CoreClk::configure_pll::{{closure}}::h939c219ee04972ec>:
2001273c:      	addi	sp, sp, -64
2001273e:      	sw	a0, 16(sp)
20012740:      	sw	a1, 20(sp)
20012742:      	sw	a2, 28(sp)
20012744:      	sw	a2, 36(sp)
20012746:      	sw	a2, 32(sp)
20012748:      	sw	a2, 12(sp)
2001274a:      	j	0x2001274c <e310x_hal::clock::CoreClk::configure_pll::{{closure}}::h939c219ee04972ec+0x10>
2001274c:      	lw	a1, 12(sp)
2001274e:      	lw	a0, 16(sp)
20012750:      	lw	a2, 0(a0)
20012752:      	sw	a1, 48(sp)
20012754:      	sb	a2, 55(sp)
20012758:      	lw	a0, 0(a1)
2001275a:      	andi	a0, a0, -64
2001275e:      	andi	a2, a2, 63
20012762:      	or	a0, a0, a2
20012764:      	sw	a0, 0(a1)
20012766:      	lw	a0, 48(sp)
20012768:      	sw	a0, 8(sp)
2001276a:      	j	0x2001276c <e310x_hal::clock::CoreClk::configure_pll::{{closure}}::h939c219ee04972ec+0x30>
2001276c:      	lw	a0, 8(sp)
2001276e:      	sw	a0, 44(sp)
20012770:      	sw	a0, 40(sp)
20012772:      	sw	a0, 4(sp)
20012774:      	j	0x20012776 <e310x_hal::clock::CoreClk::configure_pll::{{closure}}::h939c219ee04972ec+0x3a>
20012776:      	lw	a1, 4(sp)
20012778:      	lw	a0, 20(sp)
2001277a:      	lbu	a2, 0(a0)
2001277e:      	sw	a1, 56(sp)
20012780:      	sb	a2, 63(sp)
20012784:      	lw	a0, 0(a1)
20012786:      	andi	a0, a0, -257
2001278a:      	slli	a2, a2, 8
2001278c:      	or	a0, a0, a2
2001278e:      	sw	a0, 0(a1)
20012790:      	lw	a0, 56(sp)
20012792:      	sw	a0, 0(sp)
20012794:      	j	0x20012796 <e310x_hal::clock::CoreClk::configure_pll::{{closure}}::h939c219ee04972ec+0x5a>
20012796:      	lw	a0, 0(sp)
20012798:      	addi	sp, sp, 64
2001279a:      	ret

2001279c <e310x_hal::clock::AonClk::freeze::hc5a1c22a292dd4b3>:
2001279c:      	addi	sp, sp, -160
2001279e:      	sw	ra, 156(sp)
200127a0:      	sw	a0, 24(sp)
200127a2:      	sw	a1, 28(sp)
200127a4:      	j	0x200127a6 <e310x_hal::clock::AonClk::freeze::hc5a1c22a292dd4b3+0xa>
200127a6:      	lui	a0, 65536
200127aa:      	sw	a0, 56(sp)
200127ac:      	lw	a0, 24(sp)
200127ae:      	li	a1, 0
200127b0:      	beq	a0, a1, 0x200127ee <e310x_hal::clock::AonClk::freeze::hc5a1c22a292dd4b3+0x52>
200127b4:      	j	0x200127b6 <e310x_hal::clock::AonClk::freeze::hc5a1c22a292dd4b3+0x1a>
200127b6:      	lw	a0, 28(sp)
200127b8:      	sw	a0, 16(sp)
200127ba:      	sw	a0, 60(sp)
200127bc:      	lui	a0, 65536
200127c0:      	addi	a0, a0, 112
200127c4:      	sw	a0, 20(sp)
200127c6:      	sw	a0, 96(sp)
200127c8:      	li	a0, 0
200127ca:      	sw	a0, 92(sp)
200127cc:      	addi	a0, sp, 92
200127ce:      	sw	a0, 88(sp)
200127d0:      	auipc	ra, 0
200127d4:      	jalr	206(ra)
200127d8:      	mv	a1, a0
200127da:      	lw	a0, 20(sp)
200127dc:      	lw	a1, 0(a1)
200127de:      	sw	a0, 144(sp)
200127e0:      	sw	a1, 148(sp)
200127e2:      	sw	a0, 152(sp)
200127e4:      	auipc	ra, 0
200127e8:      	jalr	618(ra)
200127ec:      	j	0x20012898 <e310x_hal::clock::AonClk::freeze::hc5a1c22a292dd4b3+0xfc>
200127ee:      	li	a0, 16
200127f0:      	sb	a0, 38(sp)
200127f4:      	li	a0, 4
200127f6:      	sb	a0, 39(sp)
200127fa:      	addi	a0, sp, 38
200127fe:      	sw	a0, 40(sp)
20012800:      	addi	a1, sp, 39
20012804:      	sw	a1, 44(sp)
20012806:      	lui	a2, 65536
2001280a:      	addi	a2, a2, 112
2001280e:      	sw	a2, 12(sp)
20012810:      	sw	a2, 108(sp)
20012812:      	sw	a0, 112(sp)
20012814:      	sw	a1, 116(sp)
20012816:      	li	a2, 0
20012818:      	sw	a2, 104(sp)
2001281a:      	addi	a2, sp, 104
2001281c:      	sw	a2, 100(sp)
2001281e:      	auipc	ra, 0
20012822:      	jalr	174(ra)
20012826:      	mv	a1, a0
20012828:      	lw	a0, 12(sp)
2001282a:      	lw	a1, 0(a1)
2001282c:      	sw	a0, 132(sp)
2001282e:      	sw	a1, 136(sp)
20012830:      	sw	a0, 140(sp)
20012832:      	auipc	ra, 0
20012836:      	jalr	540(ra)
2001283a:      	j	0x2001283c <e310x_hal::clock::AonClk::freeze::hc5a1c22a292dd4b3+0xa0>
2001283c:      	lui	a0, 65536
20012840:      	addi	a0, a0, 112
20012844:      	sw	a0, 84(sp)
20012846:      	sw	a0, 124(sp)
20012848:      	sw	a0, 128(sp)
2001284a:      	auipc	ra, 0
2001284e:      	jalr	498(ra)
20012852:      	sw	a0, 80(sp)
20012854:      	sw	a0, 52(sp)
20012856:      	j	0x20012858 <e310x_hal::clock::AonClk::freeze::hc5a1c22a292dd4b3+0xbc>
20012858:      	addi	a0, sp, 52
2001285a:      	sw	a0, 64(sp)
2001285c:      	lw	a0, 52(sp)
2001285e:      	srli	a0, a0, 31
20012860:      	sb	a0, 71(sp)
20012864:      	sb	a0, 70(sp)
20012868:      	sb	a0, 51(sp)
2001286c:      	j	0x2001286e <e310x_hal::clock::AonClk::freeze::hc5a1c22a292dd4b3+0xd2>
2001286e:      	addi	a0, sp, 51
20012872:      	sw	a0, 72(sp)
20012874:      	sw	a0, 76(sp)
20012876:      	lb	a0, 51(sp)
2001287a:      	sw	a0, 8(sp)
2001287c:      	j	0x2001287e <e310x_hal::clock::AonClk::freeze::hc5a1c22a292dd4b3+0xe2>
2001287e:      	lw	a0, 8(sp)
20012880:      	andi	a0, a0, 1
20012882:      	li	a1, 0
20012884:      	beq	a0, a1, 0x2001283c <e310x_hal::clock::AonClk::freeze::hc5a1c22a292dd4b3+0xa0>
20012888:      	j	0x2001288a <e310x_hal::clock::AonClk::freeze::hc5a1c22a292dd4b3+0xee>
2001288a:      	lui	a0, 8
2001288c:      	sw	a0, 32(sp)
2001288e:      	j	0x20012890 <e310x_hal::clock::AonClk::freeze::hc5a1c22a292dd4b3+0xf4>
20012890:      	lw	a0, 32(sp)
20012892:      	lw	ra, 156(sp)
20012894:      	addi	sp, sp, 160
20012896:      	ret
20012898:      	lw	a0, 16(sp)
2001289a:      	sw	a0, 32(sp)
2001289c:      	j	0x20012890 <e310x_hal::clock::AonClk::freeze::hc5a1c22a292dd4b3+0xf4>

2001289e <e310x_hal::clock::AonClk::freeze::{{closure}}::hcac028368c75d525>:
2001289e:      	addi	sp, sp, -32
200128a0:      	sw	a0, 12(sp)
200128a2:      	sw	a0, 20(sp)
200128a4:      	sw	a0, 16(sp)
200128a6:      	sw	a0, 4(sp)
200128a8:      	j	0x200128aa <e310x_hal::clock::AonClk::freeze::{{closure}}::hcac028368c75d525+0xc>
200128aa:      	lw	a1, 4(sp)
200128ac:      	sw	a1, 24(sp)
200128ae:      	li	a0, 0
200128b0:      	sb	a0, 31(sp)
200128b4:      	lw	a0, 0(a1)
200128b6:      	lui	a2, 786432
200128ba:      	addi	a2, a2, -1
200128bc:      	and	a0, a0, a2
200128be:      	sw	a0, 0(a1)
200128c0:      	lw	a0, 24(sp)
200128c2:      	sw	a0, 0(sp)
200128c4:      	j	0x200128c6 <e310x_hal::clock::AonClk::freeze::{{closure}}::hcac028368c75d525+0x28>
200128c6:      	lw	a0, 0(sp)
200128c8:      	addi	sp, sp, 32
200128ca:      	ret

200128cc <e310x_hal::clock::AonClk::freeze::{{closure}}::h90be15d88c9a7d5a>:
200128cc:      	addi	sp, sp, -96
200128ce:      	sw	a2, 24(sp)
200128d0:      	sw	a0, 32(sp)
200128d2:      	sw	a1, 36(sp)
200128d4:      	sw	a2, 44(sp)
200128d6:      	sw	a2, 60(sp)
200128d8:      	sw	a2, 56(sp)
200128da:      	sw	a2, 28(sp)
200128dc:      	j	0x200128de <e310x_hal::clock::AonClk::freeze::{{closure}}::h90be15d88c9a7d5a+0x12>
200128de:      	lw	a1, 28(sp)
200128e0:      	lw	a0, 32(sp)
200128e2:      	lbu	a2, 0(a0)
200128e6:      	sw	a1, 80(sp)
200128e8:      	sb	a2, 87(sp)
200128ec:      	lw	a0, 0(a1)
200128ee:      	lui	a3, 1048080
200128f2:      	addi	a3, a3, -1
200128f4:      	and	a0, a0, a3
200128f6:      	andi	a2, a2, 31
200128f8:      	slli	a2, a2, 16
200128fa:      	or	a0, a0, a2
200128fc:      	sw	a0, 0(a1)
200128fe:      	j	0x20012900 <e310x_hal::clock::AonClk::freeze::{{closure}}::h90be15d88c9a7d5a+0x34>
20012900:      	lw	a0, 24(sp)
20012902:      	sw	a0, 52(sp)
20012904:      	sw	a0, 48(sp)
20012906:      	sw	a0, 20(sp)
20012908:      	j	0x2001290a <e310x_hal::clock::AonClk::freeze::{{closure}}::h90be15d88c9a7d5a+0x3e>
2001290a:      	lw	a1, 20(sp)
2001290c:      	lw	a0, 36(sp)
2001290e:      	lbu	a2, 0(a0)
20012912:      	sw	a1, 72(sp)
20012914:      	sb	a2, 79(sp)
20012918:      	lw	a0, 0(a1)
2001291a:      	andi	a0, a0, -64
2001291e:      	andi	a2, a2, 63
20012922:      	or	a0, a0, a2
20012924:      	sw	a0, 0(a1)
20012926:      	j	0x20012928 <e310x_hal::clock::AonClk::freeze::{{closure}}::h90be15d88c9a7d5a+0x5c>
20012928:      	lw	a0, 24(sp)
2001292a:      	sw	a0, 68(sp)
2001292c:      	sw	a0, 64(sp)
2001292e:      	sw	a0, 16(sp)
20012930:      	j	0x20012932 <e310x_hal::clock::AonClk::freeze::{{closure}}::h90be15d88c9a7d5a+0x66>
20012932:      	lw	a1, 16(sp)
20012934:      	sw	a1, 88(sp)
20012936:      	li	a0, 1
20012938:      	sb	a0, 95(sp)
2001293c:      	lw	a0, 0(a1)
2001293e:      	lui	a2, 262144
20012942:      	or	a0, a0, a2
20012944:      	sw	a0, 0(a1)
20012946:      	lw	a0, 88(sp)
20012948:      	sw	a0, 12(sp)
2001294a:      	j	0x2001294c <e310x_hal::clock::AonClk::freeze::{{closure}}::h90be15d88c9a7d5a+0x80>
2001294c:      	lw	a0, 12(sp)
2001294e:      	addi	sp, sp, 96
20012950:      	ret

20012952 <e310x_hal::clock::Clocks::freeze::h94dcb34b664f674e>:
20012952:      	addi	sp, sp, -64
20012954:      	sw	ra, 60(sp)
20012956:      	sw	a2, 4(sp)
20012958:      	sw	a1, 8(sp)
2001295a:      	sw	a1, 40(sp)
2001295c:      	sw	a2, 44(sp)
2001295e:      	lw	a1, 0(a0)
20012960:      	sw	a1, 24(sp)
20012962:      	lw	a1, 4(a0)
20012964:      	sw	a1, 28(sp)
20012966:      	lw	a0, 8(a0)
20012968:      	sw	a0, 32(sp)
2001296a:      	addi	a0, sp, 24
2001296c:      	auipc	ra, 1048575
20012970:      	jalr	-1288(ra)
20012974:      	mv	a1, a0
20012976:      	sw	a1, 12(sp)
20012978:      	sw	a0, 52(sp)
2001297a:      	j	0x2001297c <e310x_hal::clock::Clocks::freeze::h94dcb34b664f674e+0x2a>
2001297c:      	lw	a1, 4(sp)
2001297e:      	lw	a0, 8(sp)
20012980:      	auipc	ra, 0
20012984:      	jalr	-484(ra)
20012988:      	mv	a1, a0
2001298a:      	sw	a1, 0(sp)
2001298c:      	sw	a0, 56(sp)
2001298e:      	j	0x20012990 <e310x_hal::clock::Clocks::freeze::h94dcb34b664f674e+0x3e>
20012990:      	lw	a1, 0(sp)
20012992:      	lw	a0, 12(sp)
20012994:      	sw	a0, 16(sp)
20012996:      	sw	a1, 20(sp)
20012998:      	lw	ra, 60(sp)
2001299a:      	addi	sp, sp, 64
2001299c:      	ret

2001299e <e310x_hal::clock::Clocks::tlclk::h4217d056012fc0dd>:
2001299e:      	addi	sp, sp, -16
200129a0:      	sw	a0, 12(sp)
200129a2:      	lw	a0, 0(a0)
200129a4:      	addi	sp, sp, 16
200129a6:      	ret

200129a8 <core::num::<impl i32>::abs::h818a324f74978683>:
200129a8:      	addi	sp, sp, -32
200129aa:      	sw	a0, 12(sp)
200129ac:      	sw	a0, 24(sp)
200129ae:      	sw	a0, 28(sp)
200129b0:      	srli	a0, a0, 31
200129b2:      	sw	a0, 16(sp)
200129b4:      	j	0x200129b6 <core::num::<impl i32>::abs::h818a324f74978683+0xe>
200129b6:      	lw	a0, 16(sp)
200129b8:      	li	a1, 0
200129ba:      	bne	a0, a1, 0x200129c6 <core::num::<impl i32>::abs::h818a324f74978683+0x1e>
200129be:      	j	0x200129c0 <core::num::<impl i32>::abs::h818a324f74978683+0x18>
200129c0:      	lw	a0, 12(sp)
200129c2:      	sw	a0, 20(sp)
200129c4:      	j	0x200129f8 <core::num::<impl i32>::abs::h818a324f74978683+0x50>
200129c6:      	lw	a0, 12(sp)
200129c8:      	lui	a1, 524288
200129cc:      	beq	a0, a1, 0x200129dc <core::num::<impl i32>::abs::h818a324f74978683+0x34>
200129d0:      	j	0x200129d2 <core::num::<impl i32>::abs::h818a324f74978683+0x2a>
200129d2:      	lw	a1, 12(sp)
200129d4:      	li	a0, 0
200129d6:      	sub	a0, a0, a1
200129d8:      	sw	a0, 20(sp)
200129da:      	j	0x200129f8 <core::num::<impl i32>::abs::h818a324f74978683+0x50>
200129dc:      	lui	a0, 131093
200129e0:      	addi	a0, a0, 976
200129e4:      	lui	a1, 131093
200129e8:      	addi	a2, a1, 948
200129ec:      	li	a1, 31
200129ee:      	auipc	ra, 2
200129f2:      	jalr	-1910(ra)
200129f6:      	unimp	
200129f8:      	lw	a0, 20(sp)
200129fa:      	addi	sp, sp, 32
200129fc:      	ret

200129fe <e310x_hal::core::CorePeripherals::new::h571dfbd82c5ed408>:
200129fe:      	addi	sp, sp, -64
20012a00:      	sw	ra, 60(sp)
20012a02:      	sw	a0, 4(sp)
20012a04:      	auipc	ra, 0
20012a08:      	jalr	128(ra)
20012a0c:      	j	0x20012a0e <e310x_hal::core::CorePeripherals::new::h571dfbd82c5ed408+0x10>
20012a0e:      	addi	a0, sp, 8
20012a10:      	auipc	ra, 0
20012a14:      	jalr	96(ra)
20012a18:      	j	0x20012a1a <e310x_hal::core::CorePeripherals::new::h571dfbd82c5ed408+0x1c>
20012a1a:      	auipc	ra, 0
20012a1e:      	jalr	32(ra)
20012a22:      	j	0x20012a24 <e310x_hal::core::CorePeripherals::new::h571dfbd82c5ed408+0x26>
20012a24:      	lw	a0, 4(sp)
20012a26:      	addi	a1, sp, 8
20012a28:      	li	a2, 36
20012a2c:      	auipc	ra, 2
20012a30:      	jalr	-62(ra)
20012a34:      	lw	ra, 60(sp)
20012a36:      	addi	sp, sp, 64
20012a38:      	ret

20012a3a <e310x_hal::core::counters::PerformanceCounters::new::h29efcd03b0e51ed2>:
20012a3a:      	ret

20012a3c <core::ptr::read_volatile::h5c49517132e88699>:
20012a3c:      	addi	sp, sp, -16
20012a3e:      	sw	a0, 8(sp)
20012a40:      	lw	a0, 0(a0)
20012a42:      	sw	a0, 4(sp)
20012a44:      	sw	a0, 12(sp)
20012a46:      	j	0x20012a48 <core::ptr::read_volatile::h5c49517132e88699+0xc>
20012a48:      	lw	a0, 4(sp)
20012a4a:      	addi	sp, sp, 16
20012a4c:      	ret

20012a4e <core::ptr::write_volatile::h3cfa55c598f0442c>:
20012a4e:      	addi	sp, sp, -16
20012a50:      	sw	a0, 8(sp)
20012a52:      	sw	a1, 12(sp)
20012a54:      	sw	a1, 0(a0)
20012a56:      	j	0x20012a58 <core::ptr::write_volatile::h3cfa55c598f0442c+0xa>
20012a58:      	addi	sp, sp, 16
20012a5a:      	ret

20012a5c <<T as core::convert::Into<U>>::into::hb3db41d7e799aeb6>:
20012a5c:      	addi	sp, sp, -16
20012a5e:      	sw	ra, 12(sp)
20012a60:      	auipc	ra, 0
20012a64:      	jalr	372(ra)
20012a68:      	j	0x20012a6a <<T as core::convert::Into<U>>::into::hb3db41d7e799aeb6+0xe>
20012a6a:      	lw	ra, 12(sp)
20012a6c:      	addi	sp, sp, 16
20012a6e:      	ret

20012a70 <<T as core::convert::Into<U>>::into::hc5ba4d28664acbdb>:
20012a70:      	addi	sp, sp, -16
20012a72:      	sw	ra, 12(sp)
20012a74:      	auipc	ra, 0
20012a78:      	jalr	86(ra)
20012a7c:      	j	0x20012a7e <<T as core::convert::Into<U>>::into::hc5ba4d28664acbdb+0xe>
20012a7e:      	lw	ra, 12(sp)
20012a80:      	addi	sp, sp, 16
20012a82:      	ret

20012a84 <<T as core::convert::Into<U>>::into::hd4a1b1daa7646779>:
20012a84:      	addi	sp, sp, -16
20012a86:      	sw	ra, 12(sp)
20012a88:      	auipc	ra, 0
20012a8c:      	jalr	326(ra)
20012a90:      	j	0x20012a92 <<T as core::convert::Into<U>>::into::hd4a1b1daa7646779+0xe>
20012a92:      	lw	ra, 12(sp)
20012a94:      	addi	sp, sp, 16
20012a96:      	ret

20012a98 <<e310x::common::PRCI as e310x_hal::clock::PrciExt>::constrain::hb0ca7990af08858d>:
20012a98:      	addi	sp, sp, -16
20012a9a:      	mv	a1, a0
20012a9c:      	li	a2, 0
20012a9e:      	sw	a2, 0(sp)
20012aa0:      	lw	a0, 4(sp)
20012aa2:      	sw	a2, 0(a1)
20012aa4:      	sw	a0, 4(a1)
20012aa6:      	lui	a0, 3369
20012aaa:      	addi	a0, a0, 576
20012aae:      	sw	a0, 8(a1)
20012ab0:      	addi	sp, sp, 16
20012ab2:      	ret

20012ab4 <<e310x::common::AONCLK as e310x_hal::clock::AonExt>::constrain::hf301fed863e698eb>:
20012ab4:      	addi	sp, sp, -32
20012ab6:      	li	a0, 0
20012ab8:      	sw	a0, 16(sp)
20012aba:      	lw	a1, 20(sp)
20012abc:      	sw	a0, 8(sp)
20012abe:      	sw	a1, 12(sp)
20012ac0:      	addi	sp, sp, 32
20012ac2:      	ret

20012ac4 <e310x_hal::gpio::gpio0::<impl e310x_hal::gpio::GpioExt for e310x::common::GPIO0>::split::h3f31f38f27591a75>:
20012ac4:      	addi	sp, sp, -16
20012ac6:      	addi	sp, sp, 16
20012ac8:      	ret

20012aca <<e310x_hal::core::plic::Plic as core::convert::From<e310x::common::PLIC>>::from::hf25c35b116f26d18>:
20012aca:      	addi	sp, sp, -64
20012acc:      	mv	a1, a0
20012ace:      	li	a0, 0
20012ad0:      	sw	a0, 8(sp)
20012ad2:      	li	a2, 2
20012ad4:      	sw	a2, 12(sp)
20012ad6:      	li	a3, 1
20012ad8:      	sw	a3, 16(sp)
20012ada:      	sw	a0, 24(sp)
20012adc:      	li	a4, 4
20012ade:      	sw	a4, 28(sp)
20012ae0:      	sw	a2, 32(sp)
20012ae2:      	sw	a0, 40(sp)
20012ae4:      	li	a4, 8
20012ae6:      	sw	a4, 44(sp)
20012ae8:      	li	a4, 3
20012aea:      	sw	a4, 48(sp)
20012aec:      	sw	a3, 8(a1)
20012aee:      	sw	a2, 4(a1)
20012af0:      	sw	a0, 0(a1)
20012af2:      	lw	a0, 24(sp)
20012af4:      	sw	a0, 12(a1)
20012af6:      	lw	a0, 28(sp)
20012af8:      	sw	a0, 16(a1)
20012afa:      	lw	a0, 32(sp)
20012afc:      	sw	a0, 20(a1)
20012afe:      	lw	a0, 40(sp)
20012b00:      	sw	a0, 24(a1)
20012b02:      	lw	a0, 44(sp)
20012b04:      	sw	a0, 28(a1)
20012b06:      	lw	a0, 48(sp)
20012b08:      	sw	a0, 32(a1)
20012b0a:      	addi	sp, sp, 64
20012b0c:      	ret

20012b0e <e310x_hal::core::clint::MTIME::mtime_lo::h623446799abdef42>:
20012b0e:      	addi	sp, sp, -48
20012b10:      	sw	ra, 44(sp)
20012b12:      	sw	a0, 20(sp)
20012b14:      	j	0x20012b16 <e310x_hal::core::clint::MTIME::mtime_lo::h623446799abdef42+0x8>
20012b16:      	lui	a0, 8204
20012b1a:      	addi	a0, a0, -8
20012b1c:      	sw	a0, 32(sp)
20012b1e:      	sw	a0, 36(sp)
20012b20:      	sw	a0, 40(sp)
20012b22:      	auipc	ra, 0
20012b26:      	jalr	-230(ra)
20012b2a:      	sw	a0, 28(sp)
20012b2c:      	sw	a0, 16(sp)
20012b2e:      	j	0x20012b30 <e310x_hal::core::clint::MTIME::mtime_lo::h623446799abdef42+0x22>
20012b30:      	addi	a0, sp, 16
20012b32:      	sw	a0, 24(sp)
20012b34:      	lw	a0, 16(sp)
20012b36:      	sw	a0, 12(sp)
20012b38:      	j	0x20012b3a <e310x_hal::core::clint::MTIME::mtime_lo::h623446799abdef42+0x2c>
20012b3a:      	lw	a0, 12(sp)
20012b3c:      	lw	ra, 44(sp)
20012b3e:      	addi	sp, sp, 48
20012b40:      	ret

20012b42 <e310x_hal::core::clint::MTIME::mtime_hi::h9f2cb9b83fc19671>:
20012b42:      	addi	sp, sp, -48
20012b44:      	sw	ra, 44(sp)
20012b46:      	sw	a0, 20(sp)
20012b48:      	j	0x20012b4a <e310x_hal::core::clint::MTIME::mtime_hi::h9f2cb9b83fc19671+0x8>
20012b4a:      	lui	a0, 8204
20012b4e:      	addi	a0, a0, -4
20012b50:      	sw	a0, 32(sp)
20012b52:      	sw	a0, 36(sp)
20012b54:      	sw	a0, 40(sp)
20012b56:      	auipc	ra, 0
20012b5a:      	jalr	-282(ra)
20012b5e:      	sw	a0, 28(sp)
20012b60:      	sw	a0, 16(sp)
20012b62:      	j	0x20012b64 <e310x_hal::core::clint::MTIME::mtime_hi::h9f2cb9b83fc19671+0x22>
20012b64:      	addi	a0, sp, 16
20012b66:      	sw	a0, 24(sp)
20012b68:      	lw	a0, 16(sp)
20012b6a:      	sw	a0, 12(sp)
20012b6c:      	j	0x20012b6e <e310x_hal::core::clint::MTIME::mtime_hi::h9f2cb9b83fc19671+0x2c>
20012b6e:      	lw	a0, 12(sp)
20012b70:      	lw	ra, 44(sp)
20012b72:      	addi	sp, sp, 48
20012b74:      	ret

20012b76 <e310x_hal::core::clint::MTIME::mtime::habfe4ab5bee1a704>:
20012b76:      	addi	sp, sp, -48
20012b78:      	sw	ra, 44(sp)
20012b7a:      	sw	a0, 28(sp)
20012b7c:      	sw	a0, 32(sp)
20012b7e:      	j	0x20012b80 <e310x_hal::core::clint::MTIME::mtime::habfe4ab5bee1a704+0xa>
20012b80:      	lw	a0, 28(sp)
20012b82:      	auipc	ra, 0
20012b86:      	jalr	-64(ra)
20012b8a:      	mv	a1, a0
20012b8c:      	sw	a1, 24(sp)
20012b8e:      	sw	a0, 36(sp)
20012b90:      	j	0x20012b92 <e310x_hal::core::clint::MTIME::mtime::habfe4ab5bee1a704+0x1c>
20012b92:      	lw	a0, 28(sp)
20012b94:      	auipc	ra, 0
20012b98:      	jalr	-134(ra)
20012b9c:      	mv	a1, a0
20012b9e:      	sw	a1, 20(sp)
20012ba0:      	sw	a0, 40(sp)
20012ba2:      	j	0x20012ba4 <e310x_hal::core::clint::MTIME::mtime::habfe4ab5bee1a704+0x2e>
20012ba4:      	lw	a0, 28(sp)
20012ba6:      	auipc	ra, 0
20012baa:      	jalr	-100(ra)
20012bae:      	sw	a0, 16(sp)
20012bb0:      	j	0x20012bb2 <e310x_hal::core::clint::MTIME::mtime::habfe4ab5bee1a704+0x3c>
20012bb2:      	lw	a0, 24(sp)
20012bb4:      	lw	a1, 16(sp)
20012bb6:      	bne	a0, a1, 0x20012b80 <e310x_hal::core::clint::MTIME::mtime::habfe4ab5bee1a704+0xa>
20012bba:      	j	0x20012bbc <e310x_hal::core::clint::MTIME::mtime::habfe4ab5bee1a704+0x46>
20012bbc:      	lw	a0, 24(sp)
20012bbe:      	sw	a0, 12(sp)
20012bc0:      	li	a0, 0
20012bc2:      	j	0x20012bc4 <e310x_hal::core::clint::MTIME::mtime::habfe4ab5bee1a704+0x4e>
20012bc4:      	lw	a1, 12(sp)
20012bc6:      	lw	a0, 20(sp)
20012bc8:      	lw	ra, 44(sp)
20012bca:      	addi	sp, sp, 48
20012bcc:      	ret

20012bce <<e310x_hal::core::clint::Clint as core::convert::From<e310x::common::CLINT>>::from::h1ec1b176523978ca>:
20012bce:      	addi	sp, sp, -16
20012bd0:      	addi	sp, sp, 16
20012bd2:      	ret

20012bd4 <<e310x_hal::device::DeviceGpioPins as core::convert::From<e310x::common::GPIO0>>::from::h2230108a42aa577d>:
20012bd4:      	addi	sp, sp, -16
20012bd6:      	sw	ra, 12(sp)
20012bd8:      	auipc	ra, 0
20012bdc:      	jalr	-276(ra)
20012be0:      	j	0x20012be2 <<e310x_hal::device::DeviceGpioPins as core::convert::From<e310x::common::GPIO0>>::from::h2230108a42aa577d+0xe>
20012be2:      	lw	ra, 12(sp)
20012be4:      	addi	sp, sp, 16
20012be6:      	ret

20012be8 <<e310x_hal::device::DeviceResources as core::convert::From<e310x::Peripherals>>::from::h3e72a2af45c14603>:
20012be8:      	addi	sp, sp, -64
20012bea:      	sw	ra, 60(sp)
20012bec:      	sw	a0, 4(sp)
20012bee:      	addi	a0, sp, 8
20012bf0:      	auipc	ra, 0
20012bf4:      	jalr	-498(ra)
20012bf8:      	j	0x20012bfa <<e310x_hal::device::DeviceResources as core::convert::From<e310x::Peripherals>>::from::h3e72a2af45c14603+0x12>
20012bfa:      	auipc	ra, 0
20012bfe:      	jalr	-414(ra)
20012c02:      	j	0x20012c04 <<e310x_hal::device::DeviceResources as core::convert::From<e310x::Peripherals>>::from::h3e72a2af45c14603+0x1c>
20012c04:      	lw	a0, 4(sp)
20012c06:      	addi	a1, sp, 8
20012c08:      	li	a2, 36
20012c0c:      	auipc	ra, 2
20012c10:      	jalr	-542(ra)
20012c14:      	lw	ra, 60(sp)
20012c16:      	addi	sp, sp, 64
20012c18:      	ret

20012c1a <<u32 as e310x_hal::time::U32Ext>::bps::h1c273e2fa6c89fbd>:
20012c1a:      	addi	sp, sp, -16
20012c1c:      	sw	a0, 12(sp)
20012c1e:      	sw	a0, 8(sp)
20012c20:      	addi	sp, sp, 16
20012c22:      	ret

20012c24 <<u32 as e310x_hal::time::U32Ext>::mhz::h98f618940dd0b2ad>:
20012c24:      	addi	sp, sp, -16
20012c26:      	sw	a0, 12(sp)
20012c28:      	sw	a0, 8(sp)
20012c2a:      	addi	sp, sp, 16
20012c2c:      	ret

20012c2e <<e310x_hal::time::MegaHertz as core::convert::Into<e310x_hal::time::Hertz>>::into::h1a2c343b328c48fd>:
20012c2e:      	addi	sp, sp, -16
20012c30:      	sw	a0, 12(sp)
20012c32:      	lui	a1, 244
20012c36:      	addi	a1, a1, 576
20012c3a:      	mul	a2, a0, a1
20012c3e:      	sw	a2, 4(sp)
20012c40:      	mulhu	a0, a0, a1
20012c44:      	li	a1, 0
20012c46:      	bne	a0, a1, 0x20012c54 <<e310x_hal::time::MegaHertz as core::convert::Into<e310x_hal::time::Hertz>>::into::h1a2c343b328c48fd+0x26>
20012c4a:      	j	0x20012c4c <<e310x_hal::time::MegaHertz as core::convert::Into<e310x_hal::time::Hertz>>::into::h1a2c343b328c48fd+0x1e>
20012c4c:      	lw	a0, 4(sp)
20012c4e:      	sw	a0, 8(sp)
20012c50:      	addi	sp, sp, 16
20012c52:      	ret
20012c54:      	lui	a0, 131093
20012c58:      	addi	a0, a0, 1104
20012c5c:      	lui	a1, 131093
20012c60:      	addi	a2, a1, 1140
20012c64:      	li	a1, 33
20012c68:      	auipc	ra, 1
20012c6c:      	jalr	1552(ra)
20012c70:      	unimp	

20012c72 <__read_mstatus>:
20012c72:      	csrr	a0, mstatus
20012c76:      	ret

20012c78 <__set_mstatus>:
20012c78:      	csrs	mstatus, a0
20012c7c:      	ret

20012c7e <__clear_mstatus>:
20012c7e:      	csrc	mstatus, a0
20012c82:      	ret

20012c84 <bare_metal::CriticalSection::new::h8799a00141ed64bb>:
20012c84:      	ret

20012c86 <yarr_idle_task>:
20012c86:      	addi	sp, sp, -16
20012c88:      	sw	ra, 12(sp)
20012c8a:      	j	0x20012c8c <yarr_idle_task+0x6>
20012c8c:      	li	a0, 4
20012c8e:      	sb	a0, 11(sp)
20012c92:      	auipc	ra, 0
20012c96:      	jalr	470(ra)
20012c9a:      	j	0x20012c9c <yarr_idle_task+0x16>
20012c9c:      	auipc	ra, 0
20012ca0:      	jalr	442(ra)
20012ca4:      	j	0x20012c8c <yarr_idle_task+0x6>

20012ca6 <yarr_init_process>:
20012ca6:      	addi	sp, sp, -96
20012ca8:      	sw	ra, 92(sp)
20012caa:      	sw	a0, 48(sp)
20012cac:      	sw	a0, 60(sp)
20012cae:      	li	a0, 4
20012cb0:      	sb	a0, 55(sp)
20012cb4:      	auipc	ra, 0
20012cb8:      	jalr	436(ra)
20012cbc:      	j	0x20012cbe <yarr_init_process+0x18>
20012cbe:      	csrr	a0, mstatus
20012cc2:      	sw	a0, 56(sp)
20012cc4:      	j	0x20012cc6 <yarr_init_process+0x20>
20012cc6:      	lw	a0, 48(sp)
20012cc8:      	lw	a1, 56(sp)
20012cca:      	lui	a2, 2
20012ccc:      	addi	a2, a2, -1912
20012cd0:      	or	a1, a1, a2
20012cd2:      	sw	a1, 56(sp)
20012cd4:      	lw	a1, 8(a0)
20012cd6:      	sw	a1, 40(sp)
20012cd8:      	sw	a1, 64(sp)
20012cda:      	sw	a1, 68(sp)
20012cdc:      	lw	a0, 4(a0)
20012cde:      	addi	a1, a0, -1
20012ce2:      	sw	a1, 44(sp)
20012ce4:      	bltu	a0, a1, 0x20012cf8 <yarr_init_process+0x52>
20012ce8:      	j	0x20012cea <yarr_init_process+0x44>
20012cea:      	lw	a0, 44(sp)
20012cec:      	lw	a1, 48(sp)
20012cee:      	lw	a1, 4(a1)
20012cf0:      	sw	a1, 36(sp)
20012cf2:      	bltu	a0, a1, 0x20012d16 <yarr_init_process+0x70>
20012cf6:      	j	0x20012d36 <yarr_init_process+0x90>
20012cf8:      	lui	a0, 131093
20012cfc:      	addi	a0, a0, 1232
20012d00:      	lui	a1, 131093
20012d04:      	addi	a2, a1, 1212
20012d08:      	li	a1, 33
20012d0c:      	auipc	ra, 1
20012d10:      	jalr	1388(ra)
20012d14:      	unimp	
20012d16:      	lw	a0, 48(sp)
20012d18:      	lw	a1, 40(sp)
20012d1a:      	lw	a3, 44(sp)
20012d1c:      	lw	a2, 0(a0)
20012d1e:      	slli	a3, a3, 2
20012d20:      	add	a2, a2, a3
20012d22:      	sw	a1, 0(a2)
20012d24:      	lw	a1, 56(sp)
20012d26:      	sw	a1, 28(sp)
20012d28:      	lw	a0, 4(a0)
20012d2a:      	addi	a1, a0, -2
20012d2e:      	sw	a1, 32(sp)
20012d30:      	bltu	a0, a1, 0x20012d5a <yarr_init_process+0xb4>
20012d34:      	j	0x20012d4c <yarr_init_process+0xa6>
20012d36:      	lw	a1, 36(sp)
20012d38:      	lw	a0, 44(sp)
20012d3a:      	lui	a2, 131093
20012d3e:      	addi	a2, a2, 1268
20012d42:      	auipc	ra, 1
20012d46:      	jalr	1378(ra)
20012d4a:      	unimp	
20012d4c:      	lw	a0, 32(sp)
20012d4e:      	lw	a1, 48(sp)
20012d50:      	lw	a1, 4(a1)
20012d52:      	sw	a1, 24(sp)
20012d54:      	bltu	a0, a1, 0x20012d78 <yarr_init_process+0xd2>
20012d58:      	j	0x20012d96 <yarr_init_process+0xf0>
20012d5a:      	lui	a0, 131093
20012d5e:      	addi	a0, a0, 1232
20012d62:      	lui	a1, 131093
20012d66:      	addi	a2, a1, 1284
20012d6a:      	li	a1, 33
20012d6e:      	auipc	ra, 1
20012d72:      	jalr	1290(ra)
20012d76:      	unimp	
20012d78:      	lw	a1, 48(sp)
20012d7a:      	lw	a0, 28(sp)
20012d7c:      	lw	a3, 32(sp)
20012d7e:      	lw	a2, 0(a1)
20012d80:      	slli	a3, a3, 2
20012d82:      	add	a2, a2, a3
20012d84:      	sw	a0, 0(a2)
20012d86:      	lw	a0, 0(a1)
20012d88:      	lw	a1, 4(a1)
20012d8a:      	auipc	ra, 0
20012d8e:      	jalr	212(ra)
20012d92:      	sw	a0, 20(sp)
20012d94:      	j	0x20012dac <yarr_init_process+0x106>
20012d96:      	lw	a1, 24(sp)
20012d98:      	lw	a0, 32(sp)
20012d9a:      	lui	a2, 131093
20012d9e:      	addi	a2, a2, 1300
20012da2:      	auipc	ra, 1
20012da6:      	jalr	1282(ra)
20012daa:      	unimp	
20012dac:      	lw	a0, 48(sp)
20012dae:      	lw	a0, 4(a0)
20012db0:      	addi	a1, a0, -33
20012db4:      	sw	a1, 16(sp)
20012db6:      	bltu	a0, a1, 0x20012dd2 <yarr_init_process+0x12c>
20012dba:      	j	0x20012dbc <yarr_init_process+0x116>
20012dbc:      	lw	a0, 20(sp)
20012dbe:      	lw	a1, 16(sp)
20012dc0:      	sw	a0, 72(sp)
20012dc2:      	sw	a1, 76(sp)
20012dc4:      	sw	a0, 80(sp)
20012dc6:      	sw	a1, 84(sp)
20012dc8:      	slli	a1, a1, 2
20012dca:      	add	a0, a0, a1
20012dcc:      	sw	a0, 12(sp)
20012dce:      	sw	a0, 88(sp)
20012dd0:      	j	0x20012df0 <yarr_init_process+0x14a>
20012dd2:      	lui	a0, 131093
20012dd6:      	addi	a0, a0, 1232
20012dda:      	lui	a1, 131093
20012dde:      	addi	a2, a1, 1316
20012de2:      	li	a1, 33
20012de6:      	auipc	ra, 1
20012dea:      	jalr	1170(ra)
20012dee:      	unimp	
20012df0:      	lw	a0, 48(sp)
20012df2:      	lw	a0, 4(a0)
20012df4:      	addi	a1, a0, -32
20012df8:      	sw	a1, 8(sp)
20012dfa:      	bltu	a0, a1, 0x20012e0e <yarr_init_process+0x168>
20012dfe:      	j	0x20012e00 <yarr_init_process+0x15a>
20012e00:      	lw	a0, 8(sp)
20012e02:      	lw	a1, 48(sp)
20012e04:      	lw	a1, 4(a1)
20012e06:      	sw	a1, 4(sp)
20012e08:      	bltu	a0, a1, 0x20012e2c <yarr_init_process+0x186>
20012e0c:      	j	0x20012e40 <yarr_init_process+0x19a>
20012e0e:      	lui	a0, 131093
20012e12:      	addi	a0, a0, 1232
20012e16:      	lui	a1, 131093
20012e1a:      	addi	a2, a1, 1332
20012e1e:      	li	a1, 33
20012e22:      	auipc	ra, 1
20012e26:      	jalr	1110(ra)
20012e2a:      	unimp	
20012e2c:      	lw	a0, 12(sp)
20012e2e:      	lw	a2, 8(sp)
20012e30:      	lw	a1, 48(sp)
20012e32:      	lw	a1, 0(a1)
20012e34:      	slli	a2, a2, 2
20012e36:      	add	a1, a1, a2
20012e38:      	sw	a0, 0(a1)
20012e3a:      	lw	ra, 92(sp)
20012e3c:      	addi	sp, sp, 96
20012e3e:      	ret
20012e40:      	lw	a1, 4(sp)
20012e42:      	lw	a0, 8(sp)
20012e44:      	lui	a2, 131093
20012e48:      	addi	a2, a2, 1348
20012e4c:      	auipc	ra, 1
20012e50:      	jalr	1112(ra)
20012e54:      	unimp	

20012e56 <riscv::asm::wfi::hd7b7b2d91833d833>:
20012e56:      	wfi	
20012e5a:      	j	0x20012e5c <riscv::asm::wfi::hd7b7b2d91833d833+0x6>
20012e5c:      	ret

20012e5e <core::slice::<impl [T]>::as_ptr::h1b64e5b6b1b9cfed>:
20012e5e:      	addi	sp, sp, -16
20012e60:      	sw	a0, 8(sp)
20012e62:      	sw	a1, 12(sp)
20012e64:      	addi	sp, sp, 16
20012e66:      	ret

20012e68 <core::sync::atomic::compiler_fence::hd35aee915030cd2a>:
20012e68:      	addi	sp, sp, -48
20012e6a:      	sw	ra, 44(sp)
20012e6c:      	sb	a0, 15(sp)
20012e70:      	andi	a0, a0, 255
20012e74:      	sw	a0, 8(sp)
20012e76:      	lw	a0, 8(sp)
20012e78:      	slli	a0, a0, 2
20012e7a:      	lui	a1, 131093
20012e7e:      	addi	a1, a1, 1364
20012e82:      	add	a0, a0, a1
20012e84:      	lw	a0, 0(a0)
20012e86:      	jr	a0
20012e88:      	unimp	

20012e8a <.LBB0_3>:
20012e8a:      	lui	a0, 131093
20012e8e:      	addi	a1, a0, 1436
20012e92:      	lui	a0, 131093
20012e96:      	addi	a3, a0, 1444
20012e9a:      	addi	a0, sp, 16
20012e9c:      	li	a2, 1
20012e9e:      	li	a4, 0
20012ea0:      	auipc	ra, 0
20012ea4:      	jalr	60(ra)
20012ea8:      	j	0x20012ec8 <.LBB0_7+0xc>

20012eaa <.LBB0_4>:
20012eaa:      	fence	rw, w
20012eae:      	j	0x20012ec2 <.LBB0_7+0x6>

20012eb0 <.LBB0_5>:
20012eb0:      	fence	r, rw
20012eb4:      	j	0x20012ec2 <.LBB0_7+0x6>

20012eb6 <.LBB0_6>:
20012eb6:      	fence.tso	
20012eba:      	j	0x20012ec2 <.LBB0_7+0x6>

20012ebc <.LBB0_7>:
20012ebc:      	fence	rw, rw
20012ec0:      	j	0x20012ec2 <.LBB0_7+0x6>
20012ec2:      	lw	ra, 44(sp)
20012ec4:      	addi	sp, sp, 48
20012ec6:      	ret
20012ec8:      	lui	a0, 131093
20012ecc:      	addi	a1, a0, 1524
20012ed0:      	addi	a0, sp, 16
20012ed2:      	auipc	ra, 1
20012ed6:      	jalr	1042(ra)
20012eda:      	unimp	

20012edc <core::fmt::Arguments::new_v1::h66b2e8d5d478a4a9>:
20012edc:      	addi	sp, sp, -80
20012ede:      	sw	ra, 76(sp)
20012ee0:      	sw	a4, 0(sp)
20012ee2:      	sw	a3, 4(sp)
20012ee4:      	sw	a2, 8(sp)
20012ee6:      	sw	a1, 12(sp)
20012ee8:      	sw	a0, 16(sp)
20012eea:      	sw	a1, 56(sp)
20012eec:      	sw	a2, 60(sp)
20012eee:      	sw	a3, 64(sp)
20012ef0:      	sw	a4, 68(sp)
20012ef2:      	bltu	a2, a4, 0x20012f08 <core::fmt::Arguments::new_v1::h66b2e8d5d478a4a9+0x2c>
20012ef6:      	j	0x20012ef8 <core::fmt::Arguments::new_v1::h66b2e8d5d478a4a9+0x1c>
20012ef8:      	lw	a1, 8(sp)
20012efa:      	lw	a0, 0(sp)
20012efc:      	addi	a0, a0, 1
20012efe:      	sltu	a0, a0, a1
20012f02:      	sb	a0, 23(sp)
20012f06:      	j	0x20012f10 <core::fmt::Arguments::new_v1::h66b2e8d5d478a4a9+0x34>
20012f08:      	li	a0, 1
20012f0a:      	sb	a0, 23(sp)
20012f0e:      	j	0x20012f10 <core::fmt::Arguments::new_v1::h66b2e8d5d478a4a9+0x34>
20012f10:      	lbu	a0, 23(sp)
20012f14:      	andi	a0, a0, 1
20012f16:      	li	a1, 0
20012f18:      	bne	a0, a1, 0x20012f42 <core::fmt::Arguments::new_v1::h66b2e8d5d478a4a9+0x66>
20012f1c:      	j	0x20012f1e <core::fmt::Arguments::new_v1::h66b2e8d5d478a4a9+0x42>
20012f1e:      	lw	a0, 0(sp)
20012f20:      	lw	a1, 16(sp)
20012f22:      	lw	a2, 4(sp)
20012f24:      	lw	a3, 8(sp)
20012f26:      	lw	a4, 12(sp)
20012f28:      	li	a5, 0
20012f2a:      	sw	a5, 48(sp)
20012f2c:      	sw	a4, 0(a1)
20012f2e:      	sw	a3, 4(a1)
20012f30:      	lw	a4, 48(sp)
20012f32:      	lw	a3, 52(sp)
20012f34:      	sw	a4, 8(a1)
20012f36:      	sw	a3, 12(a1)
20012f38:      	sw	a2, 16(a1)
20012f3a:      	sw	a0, 20(a1)
20012f3c:      	lw	ra, 76(sp)
20012f3e:      	addi	sp, sp, 80
20012f40:      	ret
20012f42:      	lui	a0, 131093
20012f46:      	addi	a1, a0, 1552
20012f4a:      	lui	a0, 131093
20012f4e:      	addi	a3, a0, 1560
20012f52:      	addi	a0, sp, 24
20012f54:      	li	a2, 1
20012f56:      	li	a4, 0
20012f58:      	auipc	ra, 0
20012f5c:      	jalr	-124(ra)
20012f60:      	j	0x20012f62 <core::fmt::Arguments::new_v1::h66b2e8d5d478a4a9+0x86>
20012f62:      	lui	a0, 131093
20012f66:      	addi	a1, a0, 1636
20012f6a:      	addi	a0, sp, 24
20012f6c:      	auipc	ra, 1
20012f70:      	jalr	888(ra)
20012f74:      	unimp	

20012f76 <ExceptionHandler>:
20012f76:      	addi	sp, sp, -16
20012f78:      	sw	a0, 12(sp)
20012f7a:      	j	0x20012f7c <ExceptionHandler+0x6>
20012f7c:      	j	0x20012f7c <ExceptionHandler+0x6>

20012f7e <UserTimer>:
20012f7e:      	j	0x20012f80 <UserTimer+0x2>
20012f80:      	j	0x20012f80 <UserTimer+0x2>

20012f82 <default_pre_init>:
20012f82:      	ret

20012f84 <default_mp_hook>:
20012f84:      	addi	sp, sp, -16
20012f86:      	sw	ra, 12(sp)
20012f88:      	auipc	ra, 0
20012f8c:      	jalr	412(ra)
20012f90:      	sw	a0, 8(sp)
20012f92:      	j	0x20012f94 <default_mp_hook+0x10>
20012f94:      	lw	a0, 8(sp)
20012f96:      	li	a1, 0
20012f98:      	bne	a0, a1, 0x20012fa6 <default_mp_hook+0x22>
20012f9c:      	j	0x20012f9e <default_mp_hook+0x1a>
20012f9e:      	li	a0, 1
20012fa0:      	lw	ra, 12(sp)
20012fa2:      	addi	sp, sp, 16
20012fa4:      	ret
20012fa6:      	auipc	ra, 0
20012faa:      	jalr	422(ra)
20012fae:      	j	0x20012fa6 <default_mp_hook+0x22>

20012fb0 <riscv::register::mcause::read::h5c23357324a2d1fb>:
20012fb0:      	addi	sp, sp, -16
20012fb2:      	sw	ra, 12(sp)
20012fb4:      	auipc	ra, 0
20012fb8:      	jalr	22(ra)
20012fbc:      	sw	a0, 4(sp)
20012fbe:      	j	0x20012fc0 <riscv::register::mcause::read::h5c23357324a2d1fb+0x10>
20012fc0:      	lw	a0, 4(sp)
20012fc2:      	sw	a0, 8(sp)
20012fc4:      	lw	ra, 12(sp)
20012fc6:      	addi	sp, sp, 16
20012fc8:      	ret

20012fca <riscv::register::mcause::_read::h50fdd1f137d3b281>:
20012fca:      	addi	sp, sp, -16
20012fcc:      	csrr	a0, mcause
20012fd0:      	sw	a0, 12(sp)
20012fd2:      	j	0x20012fd4 <riscv::register::mcause::_read::h50fdd1f137d3b281+0xa>
20012fd4:      	lw	a0, 12(sp)
20012fd6:      	addi	sp, sp, 16
20012fd8:      	ret

20012fda <riscv::register::mcause::Mcause::is_exception::h3bdabfbae52edf2a>:
20012fda:      	addi	sp, sp, -16
20012fdc:      	sw	ra, 12(sp)
20012fde:      	sw	a0, 8(sp)
20012fe0:      	auipc	ra, 0
20012fe4:      	jalr	24(ra)
20012fe8:      	sw	a0, 4(sp)
20012fea:      	j	0x20012fec <riscv::register::mcause::Mcause::is_exception::h3bdabfbae52edf2a+0x12>
20012fec:      	lw	a0, 4(sp)
20012fee:      	xori	a0, a0, 1
20012ff2:      	lw	ra, 12(sp)
20012ff4:      	addi	sp, sp, 16
20012ff6:      	ret

20012ff8 <riscv::register::mcause::Mcause::is_interrupt::h91fa88ff52e06e53>:
20012ff8:      	addi	sp, sp, -16
20012ffa:      	sw	a0, 12(sp)
20012ffc:      	lw	a0, 0(a0)
20012ffe:      	srli	a0, a0, 31
20013000:      	addi	a0, a0, -1
20013002:      	seqz	a0, a0
20013006:      	addi	sp, sp, 16
20013008:      	ret

2001300a <riscv::register::mcause::Mcause::code::h98e3c7f8ef58a011>:
2001300a:      	addi	sp, sp, -16
2001300c:      	sw	a0, 12(sp)
2001300e:      	lw	a0, 0(a0)
20013010:      	slli	a0, a0, 1
20013012:      	srli	a0, a0, 1
20013014:      	addi	sp, sp, 16
20013016:      	ret

20013018 <r0::zero_bss::h1334e00c62eb0600>:
20013018:      	addi	sp, sp, -48
2001301a:      	sw	ra, 44(sp)
2001301c:      	sw	a1, 12(sp)
2001301e:      	sw	a0, 16(sp)
20013020:      	sw	a1, 20(sp)
20013022:      	j	0x20013024 <r0::zero_bss::h1334e00c62eb0600+0xc>
20013024:      	lw	a1, 12(sp)
20013026:      	lw	a0, 16(sp)
20013028:      	bltu	a0, a1, 0x20013034 <r0::zero_bss::h1334e00c62eb0600+0x1c>
2001302c:      	j	0x2001302e <r0::zero_bss::h1334e00c62eb0600+0x16>
2001302e:      	lw	ra, 44(sp)
20013030:      	addi	sp, sp, 48
20013032:      	ret
20013034:      	lw	a0, 16(sp)
20013036:      	sw	a0, 4(sp)
20013038:      	auipc	ra, 0
2001303c:      	jalr	158(ra)
20013040:      	mv	a1, a0
20013042:      	sw	a1, 8(sp)
20013044:      	sw	a0, 24(sp)
20013046:      	sw	a0, 28(sp)
20013048:      	j	0x2001304a <r0::zero_bss::h1334e00c62eb0600+0x32>
2001304a:      	lw	a1, 8(sp)
2001304c:      	lw	a0, 4(sp)
2001304e:      	auipc	ra, 0
20013052:      	jalr	262(ra)
20013056:      	j	0x20013058 <r0::zero_bss::h1334e00c62eb0600+0x40>
20013058:      	lw	a0, 16(sp)
2001305a:      	sw	a0, 32(sp)
2001305c:      	li	a1, 1
2001305e:      	sw	a1, 36(sp)
20013060:      	addi	a0, a0, 4
20013062:      	sw	a0, 0(sp)
20013064:      	sw	a0, 40(sp)
20013066:      	j	0x20013068 <r0::zero_bss::h1334e00c62eb0600+0x50>
20013068:      	lw	a0, 0(sp)
2001306a:      	sw	a0, 16(sp)
2001306c:      	j	0x20013024 <r0::zero_bss::h1334e00c62eb0600+0xc>

2001306e <r0::init_data::h445fe137e16bf2da>:
2001306e:      	addi	sp, sp, -64
20013070:      	sw	ra, 60(sp)
20013072:      	sw	a1, 20(sp)
20013074:      	sw	a0, 24(sp)
20013076:      	sw	a2, 28(sp)
20013078:      	sw	a1, 32(sp)
2001307a:      	j	0x2001307c <r0::init_data::h445fe137e16bf2da+0xe>
2001307c:      	lw	a1, 20(sp)
2001307e:      	lw	a0, 24(sp)
20013080:      	bltu	a0, a1, 0x2001308c <r0::init_data::h445fe137e16bf2da+0x1e>
20013084:      	j	0x20013086 <r0::init_data::h445fe137e16bf2da+0x18>
20013086:      	lw	ra, 60(sp)
20013088:      	addi	sp, sp, 64
2001308a:      	ret
2001308c:      	lw	a0, 24(sp)
2001308e:      	sw	a0, 12(sp)
20013090:      	lw	a0, 28(sp)
20013092:      	auipc	ra, 0
20013096:      	jalr	208(ra)
2001309a:      	sw	a0, 16(sp)
2001309c:      	j	0x2001309e <r0::init_data::h445fe137e16bf2da+0x30>
2001309e:      	lw	a1, 16(sp)
200130a0:      	lw	a0, 12(sp)
200130a2:      	auipc	ra, 0
200130a6:      	jalr	230(ra)
200130aa:      	j	0x200130ac <r0::init_data::h445fe137e16bf2da+0x3e>
200130ac:      	lw	a0, 24(sp)
200130ae:      	sw	a0, 36(sp)
200130b0:      	li	a1, 1
200130b2:      	sw	a1, 40(sp)
200130b4:      	addi	a0, a0, 4
200130b6:      	sw	a0, 8(sp)
200130b8:      	sw	a0, 44(sp)
200130ba:      	j	0x200130bc <r0::init_data::h445fe137e16bf2da+0x4e>
200130bc:      	lw	a0, 8(sp)
200130be:      	sw	a0, 24(sp)
200130c0:      	lw	a0, 28(sp)
200130c2:      	sw	a0, 48(sp)
200130c4:      	li	a1, 1
200130c6:      	sw	a1, 52(sp)
200130c8:      	addi	a0, a0, 4
200130ca:      	sw	a0, 4(sp)
200130cc:      	sw	a0, 56(sp)
200130ce:      	j	0x200130d0 <r0::init_data::h445fe137e16bf2da+0x62>
200130d0:      	lw	a0, 4(sp)
200130d2:      	sw	a0, 28(sp)
200130d4:      	j	0x2001307c <r0::init_data::h445fe137e16bf2da+0xe>

200130d6 <core::mem::maybe_uninit::MaybeUninit<T>::zeroed::hba01e001abd461d4>:
200130d6:      	addi	sp, sp, -32
200130d8:      	sw	ra, 28(sp)
200130da:      	lw	a0, 12(sp)
200130dc:      	sw	a0, 4(sp)
200130de:      	j	0x200130e0 <core::mem::maybe_uninit::MaybeUninit<T>::zeroed::hba01e001abd461d4+0xa>
200130e0:      	addi	a0, sp, 4
200130e2:      	sw	a0, 8(sp)
200130e4:      	j	0x200130e6 <core::mem::maybe_uninit::MaybeUninit<T>::zeroed::hba01e001abd461d4+0x10>
200130e6:      	addi	a0, sp, 4
200130e8:      	sw	a0, 16(sp)
200130ea:      	li	a1, 0
200130ec:      	sb	a1, 23(sp)
200130f0:      	li	a2, 1
200130f2:      	sw	a2, 24(sp)
200130f4:      	auipc	ra, 0
200130f8:      	jalr	18(ra)
200130fc:      	j	0x200130fe <core::mem::maybe_uninit::MaybeUninit<T>::zeroed::hba01e001abd461d4+0x28>
200130fe:      	lw	a0, 4(sp)
20013100:      	lw	ra, 28(sp)
20013102:      	addi	sp, sp, 32
20013104:      	ret

20013106 <core::intrinsics::write_bytes::he0763fc2ee208fab>:
20013106:      	addi	sp, sp, -16
20013108:      	sw	ra, 12(sp)
2001310a:      	sw	a0, 0(sp)
2001310c:      	sb	a1, 7(sp)
20013110:      	sw	a2, 8(sp)
20013112:      	slli	a2, a2, 2
20013114:      	auipc	ra, 1
20013118:      	jalr	1988(ra)
2001311c:      	j	0x2001311e <core::intrinsics::write_bytes::he0763fc2ee208fab+0x18>
2001311e:      	lw	ra, 12(sp)
20013120:      	addi	sp, sp, 16
20013122:      	ret

20013124 <riscv::register::mhartid::read::hbe966867a25df097>:
20013124:      	addi	sp, sp, -16
20013126:      	sw	ra, 12(sp)
20013128:      	auipc	ra, 0
2001312c:      	jalr	20(ra)
20013130:      	sw	a0, 8(sp)
20013132:      	j	0x20013134 <riscv::register::mhartid::read::hbe966867a25df097+0x10>
20013134:      	lw	a0, 8(sp)
20013136:      	lw	ra, 12(sp)
20013138:      	addi	sp, sp, 16
2001313a:      	ret

2001313c <riscv::register::mhartid::_read::hb394bfb5c6efbe37>:
2001313c:      	addi	sp, sp, -16
2001313e:      	csrr	a0, mhartid
20013142:      	sw	a0, 12(sp)
20013144:      	j	0x20013146 <riscv::register::mhartid::_read::hb394bfb5c6efbe37+0xa>
20013146:      	lw	a0, 12(sp)
20013148:      	addi	sp, sp, 16
2001314a:      	ret

2001314c <riscv::asm::wfi::h93b28aac88667670>:
2001314c:      	wfi	
20013150:      	j	0x20013152 <riscv::asm::wfi::h93b28aac88667670+0x6>
20013152:      	ret

20013154 <core::ptr::write_volatile::h16f55e3c83ffde37>:
20013154:      	addi	sp, sp, -16
20013156:      	sw	a0, 8(sp)
20013158:      	sw	a1, 12(sp)
2001315a:      	sw	a1, 0(a0)
2001315c:      	j	0x2001315e <core::ptr::write_volatile::h16f55e3c83ffde37+0xa>
2001315e:      	addi	sp, sp, 16
20013160:      	ret

20013162 <core::ptr::read::h0280e1134080c605>:
20013162:      	addi	sp, sp, -32
20013164:      	sw	a0, 4(sp)
20013166:      	sw	a0, 12(sp)
20013168:      	lw	a0, 24(sp)
2001316a:      	sw	a0, 8(sp)
2001316c:      	j	0x2001316e <core::ptr::read::h0280e1134080c605+0xc>
2001316e:      	addi	a0, sp, 8
20013170:      	sw	a0, 16(sp)
20013172:      	j	0x20013174 <core::ptr::read::h0280e1134080c605+0x12>
20013174:      	lw	a0, 4(sp)
20013176:      	lw	a0, 0(a0)
20013178:      	sw	a0, 0(sp)
2001317a:      	sw	a0, 8(sp)
2001317c:      	sw	a0, 20(sp)
2001317e:      	sw	a0, 28(sp)
20013180:      	j	0x20013182 <core::ptr::read::h0280e1134080c605+0x20>
20013182:      	lw	a0, 0(sp)
20013184:      	addi	sp, sp, 32
20013186:      	ret

20013188 <core::ptr::write::h229fd11b6145b9f2>:
20013188:      	addi	sp, sp, -16
2001318a:      	sw	a1, 8(sp)
2001318c:      	sw	a0, 12(sp)
2001318e:      	sw	a1, 0(a0)
20013190:      	addi	sp, sp, 16
20013192:      	ret

20013194 <yarr::scheduler::start::h6dd60729b295346d>:
20013194:      	addi	sp, sp, -96
20013196:      	sw	ra, 92(sp)
20013198:      	mv	a1, a0
2001319a:      	sw	a1, 40(sp)
2001319c:      	sb	a0, 79(sp)
200131a0:      	li	a0, 4
200131a2:      	sb	a0, 47(sp)
200131a6:      	auipc	ra, 1
200131aa:      	jalr	-1564(ra)
200131ae:      	j	0x200131b0 <yarr::scheduler::start::h6dd60729b295346d+0x1c>
200131b0:      	lw	a0, 40(sp)
200131b2:      	lui	a1, 524289
200131b6:      	sb	a0, -1956(a1)
200131ba:      	lui	a0, 524288
200131be:      	mv	a0, a0
200131c2:      	lw	a1, 4(a0)
200131c4:      	li	a0, 0
200131c6:      	sw	a0, 48(sp)
200131c8:      	sw	a1, 52(sp)
200131ca:      	auipc	ra, 1
200131ce:      	jalr	-188(ra)
200131d2:      	sw	a0, 32(sp)
200131d4:      	sw	a1, 36(sp)
200131d6:      	j	0x200131d8 <yarr::scheduler::start::h6dd60729b295346d+0x44>
200131d8:      	lw	a0, 36(sp)
200131da:      	lw	a1, 32(sp)
200131dc:      	sw	a1, 56(sp)
200131de:      	sw	a0, 60(sp)
200131e0:      	j	0x200131e2 <yarr::scheduler::start::h6dd60729b295346d+0x4e>
200131e2:      	addi	a0, sp, 56
200131e4:      	auipc	ra, 1
200131e8:      	jalr	-244(ra)
200131ec:      	sw	a0, 64(sp)
200131ee:      	sw	a1, 68(sp)
200131f0:      	j	0x200131f2 <yarr::scheduler::start::h6dd60729b295346d+0x5e>
200131f2:      	lw	a0, 64(sp)
200131f4:      	li	a1, 0
200131f6:      	beq	a0, a1, 0x20013200 <yarr::scheduler::start::h6dd60729b295346d+0x6c>
200131fa:      	j	0x200131fc <yarr::scheduler::start::h6dd60729b295346d+0x68>
200131fc:      	j	0x20013210 <yarr::scheduler::start::h6dd60729b295346d+0x7c>
200131fe:      	unimp	
20013200:      	auipc	ra, 0
20013204:      	jalr	196(ra)
20013208:      	mv	a1, a0
2001320a:      	sw	a1, 28(sp)
2001320c:      	sw	a0, 84(sp)
2001320e:      	j	0x2001325a <yarr::scheduler::start::h6dd60729b295346d+0xc6>
20013210:      	lw	a0, 68(sp)
20013212:      	sw	a0, 20(sp)
20013214:      	sw	a0, 80(sp)
20013216:      	lui	a1, 524288
2001321a:      	mv	a1, a1
2001321e:      	lw	a1, 4(a1)
20013220:      	sw	a1, 24(sp)
20013222:      	bgeu	a0, a1, 0x20013244 <yarr::scheduler::start::h6dd60729b295346d+0xb0>
20013226:      	j	0x20013228 <yarr::scheduler::start::h6dd60729b295346d+0x94>
20013228:      	lw	a1, 20(sp)
2001322a:      	lui	a0, 524288
2001322e:      	lw	a0, 0(a0)
20013232:      	li	a2, 20
20013234:      	mul	a1, a1, a2
20013238:      	add	a0, a0, a1
2001323a:      	auipc	ra, 0
2001323e:      	jalr	-1428(ra)
20013242:      	j	0x200131e2 <yarr::scheduler::start::h6dd60729b295346d+0x4e>
20013244:      	lw	a1, 24(sp)
20013246:      	lw	a0, 20(sp)
20013248:      	lui	a2, 131093
2001324c:      	addi	a2, a2, 1860
20013250:      	auipc	ra, 1
20013254:      	jalr	84(ra)
20013258:      	unimp	
2001325a:      	lw	a0, 28(sp)
2001325c:      	lw	a0, 4(a0)
2001325e:      	addi	a1, a0, -32
20013262:      	sw	a1, 16(sp)
20013264:      	bltu	a0, a1, 0x20013278 <yarr::scheduler::start::h6dd60729b295346d+0xe4>
20013268:      	j	0x2001326a <yarr::scheduler::start::h6dd60729b295346d+0xd6>
2001326a:      	lw	a0, 16(sp)
2001326c:      	lw	a1, 28(sp)
2001326e:      	lw	a1, 4(a1)
20013270:      	sw	a1, 12(sp)
20013272:      	bltu	a0, a1, 0x20013296 <yarr::scheduler::start::h6dd60729b295346d+0x102>
20013276:      	j	0x200132ae <yarr::scheduler::start::h6dd60729b295346d+0x11a>
20013278:      	lui	a0, 131093
2001327c:      	addi	a0, a0, 1904
20013280:      	lui	a1, 131093
20013284:      	addi	a2, a1, 1876
20013288:      	li	a1, 33
2001328c:      	auipc	ra, 1
20013290:      	jalr	-20(ra)
20013294:      	unimp	
20013296:      	lw	a1, 16(sp)
20013298:      	lw	a0, 28(sp)
2001329a:      	lw	a0, 0(a0)
2001329c:      	slli	a1, a1, 2
2001329e:      	add	a0, a0, a1
200132a0:      	lw	a0, 0(a0)
200132a2:      	sw	a0, 88(sp)
200132a4:      	auipc	ra, 0
200132a8:      	jalr	920(ra)
200132ac:      	unimp	
200132ae:      	lw	a1, 12(sp)
200132b0:      	lw	a0, 16(sp)
200132b2:      	lui	a2, 131093
200132b6:      	addi	a2, a2, 1940
200132ba:      	auipc	ra, 1
200132be:      	jalr	-22(ra)
200132c2:      	unimp	

200132c4 <yarr::scheduler::schedule::hec018709e55ee45e>:
200132c4:      	addi	sp, sp, -80
200132c6:      	sw	ra, 76(sp)
200132c8:      	li	a0, 4
200132ca:      	sb	a0, 71(sp)
200132ce:      	auipc	ra, 1
200132d2:      	jalr	-1860(ra)
200132d6:      	j	0x200132d8 <yarr::scheduler::schedule::hec018709e55ee45e+0x14>
200132d8:      	lui	a0, 524289
200132dc:      	lbu	a0, -1956(a0)
200132e0:      	andi	a0, a0, 1
200132e2:      	li	a1, 0
200132e4:      	beq	a0, a1, 0x200132ee <yarr::scheduler::schedule::hec018709e55ee45e+0x2a>
200132e8:      	j	0x200132ea <yarr::scheduler::schedule::hec018709e55ee45e+0x26>
200132ea:      	j	0x2001330a <yarr::scheduler::schedule::hec018709e55ee45e+0x46>
200132ec:      	unimp	
200132ee:      	lui	a0, 524289
200132f2:      	lw	a0, -1952(a0)
200132f6:      	sw	a0, 56(sp)
200132f8:      	lui	a1, 524288
200132fc:      	mv	a1, a1
20013300:      	lw	a1, 4(a1)
20013302:      	sw	a1, 60(sp)
20013304:      	bltu	a0, a1, 0x2001336c <yarr::scheduler::schedule::hec018709e55ee45e+0xa8>
20013308:      	j	0x2001338c <yarr::scheduler::schedule::hec018709e55ee45e+0xc8>
2001330a:      	lui	a1, 524288
2001330e:      	lw	a0, 0(a1)
20013312:      	mv	a1, a1
20013316:      	lw	a1, 4(a1)
20013318:      	auipc	ra, 1
2001331c:      	jalr	-2002(ra)
20013320:      	sw	a0, 48(sp)
20013322:      	sw	a1, 52(sp)
20013324:      	j	0x20013326 <yarr::scheduler::schedule::hec018709e55ee45e+0x62>
20013326:      	lw	a1, 52(sp)
20013328:      	lw	a0, 48(sp)
2001332a:      	auipc	ra, 0
2001332e:      	jalr	1040(ra)
20013332:      	sw	a0, 40(sp)
20013334:      	sw	a1, 44(sp)
20013336:      	j	0x20013338 <yarr::scheduler::schedule::hec018709e55ee45e+0x74>
20013338:      	lw	a1, 44(sp)
2001333a:      	lw	a0, 40(sp)
2001333c:      	auipc	ra, 0
20013340:      	jalr	1556(ra)
20013344:      	sw	a0, 36(sp)
20013346:      	j	0x20013348 <yarr::scheduler::schedule::hec018709e55ee45e+0x84>
20013348:      	lw	a0, 36(sp)
2001334a:      	lui	a1, 131093
2001334e:      	addi	a1, a1, 1956
20013352:      	auipc	ra, 1
20013356:      	jalr	-1258(ra)
2001335a:      	sw	a0, 32(sp)
2001335c:      	j	0x2001335e <yarr::scheduler::schedule::hec018709e55ee45e+0x9a>
2001335e:      	lw	a0, 32(sp)
20013360:      	sw	a0, 64(sp)
20013362:      	j	0x20013364 <yarr::scheduler::schedule::hec018709e55ee45e+0xa0>
20013364:      	lw	a0, 64(sp)
20013366:      	lw	ra, 76(sp)
20013368:      	addi	sp, sp, 80
2001336a:      	ret
2001336c:      	lw	a1, 56(sp)
2001336e:      	lui	a0, 524288
20013372:      	lw	a0, 0(a0)
20013376:      	li	a2, 20
20013378:      	mul	a1, a1, a2
2001337c:      	add	a0, a0, a1
2001337e:      	lbu	a0, 16(a0)
20013382:      	andi	a0, a0, 1
20013384:      	li	a1, 0
20013386:      	beq	a0, a1, 0x200133be <yarr::scheduler::schedule::hec018709e55ee45e+0xfa>
2001338a:      	j	0x200133a2 <yarr::scheduler::schedule::hec018709e55ee45e+0xde>
2001338c:      	lw	a1, 60(sp)
2001338e:      	lw	a0, 56(sp)
20013390:      	lui	a2, 131093
20013394:      	addi	a2, a2, 1972
20013398:      	auipc	ra, 1
2001339c:      	jalr	-244(ra)
200133a0:      	unimp	
200133a2:      	lui	a0, 524289
200133a6:      	lw	a0, -1952(a0)
200133aa:      	sw	a0, 24(sp)
200133ac:      	lui	a1, 524288
200133b0:      	mv	a1, a1
200133b4:      	lw	a1, 4(a1)
200133b6:      	sw	a1, 28(sp)
200133b8:      	bltu	a0, a1, 0x20013432 <yarr::scheduler::schedule::hec018709e55ee45e+0x16e>
200133bc:      	j	0x2001345c <yarr::scheduler::schedule::hec018709e55ee45e+0x198>
200133be:      	lui	a0, 524289
200133c2:      	lw	a1, -1952(a0)
200133c6:      	addi	a0, a1, 1
200133ca:      	sw	a0, 20(sp)
200133cc:      	bltu	a0, a1, 0x200133e6 <yarr::scheduler::schedule::hec018709e55ee45e+0x122>
200133d0:      	j	0x200133d2 <yarr::scheduler::schedule::hec018709e55ee45e+0x10e>
200133d2:      	lui	a0, 524288
200133d6:      	mv	a0, a0
200133da:      	lw	a0, 4(a0)
200133dc:      	sw	a0, 16(sp)
200133de:      	li	a1, 0
200133e0:      	beq	a0, a1, 0x20013414 <yarr::scheduler::schedule::hec018709e55ee45e+0x150>
200133e4:      	j	0x20013402 <yarr::scheduler::schedule::hec018709e55ee45e+0x13e>
200133e6:      	lui	a0, 131093
200133ea:      	addi	a0, a0, 2016
200133ee:      	lui	a1, 131093
200133f2:      	addi	a2, a1, 1988
200133f6:      	li	a1, 28
200133f8:      	auipc	ra, 1
200133fc:      	jalr	-384(ra)
20013400:      	unimp	
20013402:      	lw	a0, 20(sp)
20013404:      	lw	a1, 16(sp)
20013406:      	remu	a0, a0, a1
2001340a:      	lui	a1, 524289
2001340e:      	sw	a0, -1952(a1)
20013412:      	j	0x200132ee <yarr::scheduler::schedule::hec018709e55ee45e+0x2a>
20013414:      	lui	a0, 131094
20013418:      	addi	a0, a0, -2048
2001341c:      	lui	a1, 131093
20013420:      	addi	a2, a1, 1988
20013424:      	li	a1, 57
20013428:      	auipc	ra, 1
2001342c:      	jalr	-432(ra)
20013430:      	unimp	
20013432:      	lw	a1, 24(sp)
20013434:      	lui	a0, 524288
20013438:      	lw	a0, 0(a0)
2001343c:      	li	a2, 20
2001343e:      	mul	a1, a1, a2
20013442:      	add	a0, a0, a1
20013444:      	sw	a0, 8(sp)
20013446:      	sw	a0, 72(sp)
20013448:      	lui	a0, 524289
2001344c:      	lw	a1, -1952(a0)
20013450:      	addi	a0, a1, 1
20013454:      	sw	a0, 12(sp)
20013456:      	bltu	a0, a1, 0x20013486 <yarr::scheduler::schedule::hec018709e55ee45e+0x1c2>
2001345a:      	j	0x20013472 <yarr::scheduler::schedule::hec018709e55ee45e+0x1ae>
2001345c:      	lw	a1, 28(sp)
2001345e:      	lw	a0, 24(sp)
20013460:      	lui	a2, 131094
20013464:      	addi	a2, a2, -1988
20013468:      	auipc	ra, 1
2001346c:      	jalr	-452(ra)
20013470:      	unimp	
20013472:      	lui	a0, 524288
20013476:      	mv	a0, a0
2001347a:      	lw	a0, 4(a0)
2001347c:      	sw	a0, 4(sp)
2001347e:      	li	a1, 0
20013480:      	beq	a0, a1, 0x200134b8 <yarr::scheduler::schedule::hec018709e55ee45e+0x1f4>
20013484:      	j	0x200134a2 <yarr::scheduler::schedule::hec018709e55ee45e+0x1de>
20013486:      	lui	a0, 131093
2001348a:      	addi	a0, a0, 2016
2001348e:      	lui	a1, 131094
20013492:      	addi	a2, a1, -1972
20013496:      	li	a1, 28
20013498:      	auipc	ra, 1
2001349c:      	jalr	-544(ra)
200134a0:      	unimp	
200134a2:      	lw	a0, 8(sp)
200134a4:      	lw	a1, 12(sp)
200134a6:      	lw	a2, 4(sp)
200134a8:      	remu	a1, a1, a2
200134ac:      	lui	a2, 524289
200134b0:      	sw	a1, -1952(a2)
200134b4:      	sw	a0, 64(sp)
200134b6:      	j	0x20013364 <yarr::scheduler::schedule::hec018709e55ee45e+0xa0>
200134b8:      	lui	a0, 131094
200134bc:      	addi	a0, a0, -2048
200134c0:      	lui	a1, 131094
200134c4:      	addi	a2, a1, -1972
200134c8:      	li	a1, 57
200134cc:      	auipc	ra, 1
200134d0:      	jalr	-596(ra)
		...

200134e0 <yarr_trap_vec>:
200134e0:      	addi	sp, sp, -132
200134e4:      	sw	ra, 0(sp)
200134e8:      	sw	sp, 4(sp)
200134ec:      	sw	gp, 8(sp)
200134f0:      	sw	tp, 12(sp)
200134f4:      	sw	t0, 16(sp)
200134f8:      	sw	t1, 20(sp)
200134fc:      	sw	t2, 24(sp)
20013500:      	sw	s0, 28(sp)
20013504:      	sw	s1, 32(sp)
20013508:      	sw	a0, 36(sp)
2001350c:      	sw	a1, 40(sp)
20013510:      	sw	a2, 44(sp)
20013514:      	sw	a3, 48(sp)
20013518:      	sw	a4, 52(sp)
2001351c:      	sw	a5, 56(sp)
20013520:      	sw	a6, 60(sp)
20013524:      	sw	a7, 64(sp)
20013528:      	sw	s2, 68(sp)
2001352c:      	sw	s3, 72(sp)
20013530:      	sw	s4, 76(sp)
20013534:      	sw	s5, 80(sp)
20013538:      	sw	s6, 84(sp)
2001353c:      	sw	s7, 88(sp)
20013540:      	sw	s8, 92(sp)
20013544:      	sw	s9, 96(sp)
20013548:      	sw	s10, 100(sp)
2001354c:      	sw	s11, 104(sp)
20013550:      	sw	t3, 108(sp)
20013554:      	sw	t4, 112(sp)
20013558:      	sw	t5, 116(sp)
2001355c:      	sw	t6, 120(sp)
20013560:      	csrr	a0, mstatus
20013564:      	sw	a0, 124(sp)
20013568:      	csrr	a0, mcause
2001356c:      	csrr	a1, mepc
20013570:      	srli	a2, a0, 31
20013574:      	bnez	a2, 0x20013590 <yarr_synchronous_exception>

20013578 <yarr_asynchronous_exception>:
20013578:      	sw	a1, 128(sp)

2001357c <.Lpcrel_hi0>:
2001357c:      	auipc	sp, 393201
20013580:      	lw	sp, -1404(sp)
20013584:      	auipc	ra, 0
20013588:      	jalr	1286(ra)
2001358c:      	j	0x200135a8 <yarr_restore_context>

20013590 <yarr_synchronous_exception>:
20013590:      	addi	a1, a1, 4
20013594:      	sw	a1, 128(sp)

20013598 <.Lpcrel_hi1>:
20013598:      	auipc	sp, 393201
2001359c:      	lw	sp, -1432(sp)
200135a0:      	auipc	ra, 0
200135a4:      	jalr	1296(ra)

200135a8 <yarr_restore_context>:
200135a8:      	lw	ra, 0(sp)
200135ac:      	lw	sp, 4(sp)
200135b0:      	lw	gp, 8(sp)
200135b4:      	lw	tp, 12(sp)
200135b8:      	lw	t0, 16(sp)
200135bc:      	lw	t1, 20(sp)
200135c0:      	lw	t2, 24(sp)
200135c4:      	lw	s0, 28(sp)
200135c8:      	lw	s1, 32(sp)
200135cc:      	lw	a0, 36(sp)
200135d0:      	lw	a1, 40(sp)
200135d4:      	lw	a2, 44(sp)
200135d8:      	lw	a3, 48(sp)
200135dc:      	lw	a4, 52(sp)
200135e0:      	lw	a5, 56(sp)
200135e4:      	lw	a6, 60(sp)
200135e8:      	lw	a7, 64(sp)
200135ec:      	lw	s2, 68(sp)
200135f0:      	lw	s3, 72(sp)
200135f4:      	lw	s4, 76(sp)
200135f8:      	lw	s5, 80(sp)
200135fc:      	lw	s6, 84(sp)
20013600:      	lw	s7, 88(sp)
20013604:      	lw	s8, 92(sp)
20013608:      	lw	s9, 96(sp)
2001360c:      	lw	s10, 100(sp)
20013610:      	lw	s11, 104(sp)
20013614:      	lw	t3, 108(sp)
20013618:      	lw	t4, 112(sp)
2001361c:      	lw	t5, 116(sp)
20013620:      	lw	t6, 120(sp)
20013624:      	lw	t0, 124(sp)
20013628:      	csrw	mstatus, t0
2001362c:      	lw	t0, 128(sp)
20013630:      	csrw	mepc, t0
20013634:      	addi	sp, sp, 132
20013638:      	mret	

2001363c <yarr_start_first_task>:
2001363c:      	auipc	t0, 0
20013640:      	addi	t0, t0, -348
20013644:      	csrw	mtvec, t0
20013648:      	mv	sp, a0

2001364c <yarr_load_return_addr>:
2001364c:      	lw	ra, 128(sp)
20013650:      	lw	sp, 4(sp)
20013654:      	lw	gp, 8(sp)
20013658:      	lw	tp, 12(sp)
2001365c:      	lw	t0, 16(sp)
20013660:      	lw	t1, 20(sp)
20013664:      	lw	t2, 24(sp)
20013668:      	lw	s0, 28(sp)
2001366c:      	lw	s1, 32(sp)
20013670:      	lw	a0, 36(sp)
20013674:      	lw	a1, 40(sp)
20013678:      	lw	a2, 44(sp)
2001367c:      	lw	a3, 48(sp)
20013680:      	lw	a4, 52(sp)
20013684:      	lw	a5, 56(sp)
20013688:      	lw	a6, 60(sp)
2001368c:      	lw	a7, 64(sp)
20013690:      	lw	s2, 68(sp)
20013694:      	lw	s3, 72(sp)
20013698:      	lw	s4, 76(sp)
2001369c:      	lw	s5, 80(sp)
200136a0:      	lw	s6, 84(sp)
200136a4:      	lw	s7, 88(sp)
200136a8:      	lw	s8, 92(sp)
200136ac:      	lw	s9, 96(sp)
200136b0:      	lw	s10, 100(sp)
200136b4:      	lw	s11, 104(sp)
200136b8:      	lw	t3, 108(sp)
200136bc:      	lw	t4, 112(sp)
200136c0:      	lw	t5, 116(sp)
200136c4:      	lw	t6, 120(sp)
200136c8:      	lw	t0, 124(sp)
200136cc:      	csrw	mstatus, t0
200136d0:      	addi	sp, sp, 132
200136d4:      	ret

200136d8 <core::iter::traits::iterator::Iterator::fold::h4f7ff31e35d05134>:
200136d8:      	addi	sp, sp, -80
200136da:      	sw	ra, 76(sp)
200136dc:      	sw	a0, 16(sp)
200136de:      	sw	a1, 20(sp)
200136e0:      	sw	a2, 64(sp)
200136e2:      	sw	a3, 68(sp)
200136e4:      	sw	a2, 32(sp)
200136e6:      	sw	a3, 36(sp)
200136e8:      	j	0x200136ea <core::iter::traits::iterator::Iterator::fold::h4f7ff31e35d05134+0x12>
200136ea:      	addi	a0, sp, 16
200136ec:      	auipc	ra, 0
200136f0:      	jalr	334(ra)
200136f4:      	sw	a0, 44(sp)
200136f6:      	j	0x200136f8 <core::iter::traits::iterator::Iterator::fold::h4f7ff31e35d05134+0x20>
200136f8:      	lw	a0, 44(sp)
200136fa:      	li	a1, 0
200136fc:      	beq	a0, a1, 0x20013720 <core::iter::traits::iterator::Iterator::fold::h4f7ff31e35d05134+0x48>
20013700:      	j	0x20013702 <core::iter::traits::iterator::Iterator::fold::h4f7ff31e35d05134+0x2a>
20013702:      	lw	a3, 44(sp)
20013704:      	sw	a3, 72(sp)
20013706:      	lw	a1, 32(sp)
20013708:      	lw	a2, 36(sp)
2001370a:      	sw	a1, 48(sp)
2001370c:      	sw	a2, 52(sp)
2001370e:      	sw	a3, 56(sp)
20013710:      	addi	a0, sp, 24
20013712:      	auipc	ra, 0
20013716:      	jalr	752(ra)
2001371a:      	sw	a0, 8(sp)
2001371c:      	sw	a1, 12(sp)
2001371e:      	j	0x20013730 <core::iter::traits::iterator::Iterator::fold::h4f7ff31e35d05134+0x58>
20013720:      	j	0x20013722 <core::iter::traits::iterator::Iterator::fold::h4f7ff31e35d05134+0x4a>
20013722:      	j	0x20013724 <core::iter::traits::iterator::Iterator::fold::h4f7ff31e35d05134+0x4c>
20013724:      	j	0x20013726 <core::iter::traits::iterator::Iterator::fold::h4f7ff31e35d05134+0x4e>
20013726:      	lw	a0, 32(sp)
20013728:      	lw	a1, 36(sp)
2001372a:      	lw	ra, 76(sp)
2001372c:      	addi	sp, sp, 80
2001372e:      	ret
20013730:      	lw	a0, 12(sp)
20013732:      	lw	a1, 8(sp)
20013734:      	sw	a1, 32(sp)
20013736:      	sw	a0, 36(sp)
20013738:      	j	0x200136ea <core::iter::traits::iterator::Iterator::fold::h4f7ff31e35d05134+0x12>

2001373a <core::iter::traits::iterator::Iterator::filter::he13efec9e9530ced>:
2001373a:      	addi	sp, sp, -32
2001373c:      	sw	ra, 28(sp)
2001373e:      	sw	a0, 16(sp)
20013740:      	sw	a1, 20(sp)
20013742:      	auipc	ra, 0
20013746:      	jalr	826(ra)
2001374a:      	sw	a0, 8(sp)
2001374c:      	sw	a1, 12(sp)
2001374e:      	j	0x20013750 <core::iter::traits::iterator::Iterator::filter::he13efec9e9530ced+0x16>
20013750:      	lw	a1, 12(sp)
20013752:      	lw	a0, 8(sp)
20013754:      	lw	ra, 28(sp)
20013756:      	addi	sp, sp, 32
20013758:      	ret

2001375a <core::slice::iter::Iter<T>::new::hcf296877c85d9635>:
2001375a:      	addi	sp, sp, -96
2001375c:      	sw	ra, 92(sp)
2001375e:      	sw	a1, 16(sp)
20013760:      	sw	a0, 40(sp)
20013762:      	sw	a1, 44(sp)
20013764:      	auipc	ra, 0
20013768:      	jalr	1026(ra)
2001376c:      	mv	a1, a0
2001376e:      	sw	a1, 20(sp)
20013770:      	sw	a0, 48(sp)
20013772:      	j	0x20013774 <core::slice::iter::Iter<T>::new::hcf296877c85d9635+0x1a>
20013774:      	lw	a0, 20(sp)
20013776:      	auipc	ra, 0
2001377a:      	jalr	926(ra)
2001377e:      	j	0x20013780 <core::slice::iter::Iter<T>::new::hcf296877c85d9635+0x26>
20013780:      	j	0x20013782 <core::slice::iter::Iter<T>::new::hcf296877c85d9635+0x28>
20013782:      	j	0x20013784 <core::slice::iter::Iter<T>::new::hcf296877c85d9635+0x2a>
20013784:      	li	a1, 0
20013786:      	li	a0, 1
20013788:      	bne	a0, a1, 0x200137a2 <core::slice::iter::Iter<T>::new::hcf296877c85d9635+0x48>
2001378c:      	j	0x2001378e <core::slice::iter::Iter<T>::new::hcf296877c85d9635+0x34>
2001378e:      	lw	a0, 20(sp)
20013790:      	lw	a1, 16(sp)
20013792:      	sw	a0, 52(sp)
20013794:      	sw	a1, 56(sp)
20013796:      	sw	a0, 60(sp)
20013798:      	sw	a1, 64(sp)
2001379a:      	add	a0, a0, a1
2001379c:      	sw	a0, 12(sp)
2001379e:      	sw	a0, 68(sp)
200137a0:      	j	0x200137cc <core::slice::iter::Iter<T>::new::hcf296877c85d9635+0x72>
200137a2:      	lw	a0, 20(sp)
200137a4:      	lw	a1, 16(sp)
200137a6:      	sw	a0, 72(sp)
200137a8:      	sw	a1, 76(sp)
200137aa:      	sw	a0, 80(sp)
200137ac:      	sw	a1, 84(sp)
200137ae:      	li	a2, 20
200137b0:      	mul	a1, a1, a2
200137b4:      	add	a0, a0, a1
200137b6:      	sw	a0, 88(sp)
200137b8:      	sw	a0, 36(sp)
200137ba:      	j	0x200137bc <core::slice::iter::Iter<T>::new::hcf296877c85d9635+0x62>
200137bc:      	j	0x200137be <core::slice::iter::Iter<T>::new::hcf296877c85d9635+0x64>
200137be:      	lw	a0, 20(sp)
200137c0:      	auipc	ra, 0
200137c4:      	jalr	784(ra)
200137c8:      	sw	a0, 8(sp)
200137ca:      	j	0x200137d2 <core::slice::iter::Iter<T>::new::hcf296877c85d9635+0x78>
200137cc:      	lw	a0, 12(sp)
200137ce:      	sw	a0, 36(sp)
200137d0:      	j	0x200137be <core::slice::iter::Iter<T>::new::hcf296877c85d9635+0x64>
200137d2:      	lw	a0, 8(sp)
200137d4:      	lw	a1, 36(sp)
200137d6:      	sw	a0, 24(sp)
200137d8:      	sw	a1, 28(sp)
200137da:      	lw	ra, 92(sp)
200137dc:      	addi	sp, sp, 96
200137de:      	ret

200137e0 <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::find::h39dcdd0c775f1c60>:
200137e0:      	addi	sp, sp, -48
200137e2:      	sw	ra, 44(sp)
200137e4:      	sw	a0, 16(sp)
200137e6:      	sw	a1, 20(sp)
200137e8:      	sw	a0, 40(sp)
200137ea:      	j	0x200137ec <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::find::h39dcdd0c775f1c60+0xc>
200137ec:      	lw	a0, 16(sp)
200137ee:      	auipc	ra, 0
200137f2:      	jalr	76(ra)
200137f6:      	sw	a0, 28(sp)
200137f8:      	j	0x200137fa <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::find::h39dcdd0c775f1c60+0x1a>
200137fa:      	lw	a0, 28(sp)
200137fc:      	li	a1, 0
200137fe:      	beq	a0, a1, 0x2001381a <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::find::h39dcdd0c775f1c60+0x3a>
20013802:      	j	0x20013804 <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::find::h39dcdd0c775f1c60+0x24>
20013804:      	lw	a0, 28(sp)
20013806:      	sw	a0, 32(sp)
20013808:      	addi	a1, sp, 32
2001380a:      	sw	a1, 36(sp)
2001380c:      	addi	a0, sp, 20
2001380e:      	auipc	ra, 0
20013812:      	jalr	1188(ra)
20013816:      	sw	a0, 12(sp)
20013818:      	j	0x20013828 <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::find::h39dcdd0c775f1c60+0x48>
2001381a:      	li	a0, 0
2001381c:      	sw	a0, 24(sp)
2001381e:      	j	0x20013820 <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::find::h39dcdd0c775f1c60+0x40>
20013820:      	lw	a0, 24(sp)
20013822:      	lw	ra, 44(sp)
20013824:      	addi	sp, sp, 48
20013826:      	ret
20013828:      	lw	a0, 12(sp)
2001382a:      	li	a1, 0
2001382c:      	bne	a0, a1, 0x20013834 <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::find::h39dcdd0c775f1c60+0x54>
20013830:      	j	0x20013832 <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::find::h39dcdd0c775f1c60+0x52>
20013832:      	j	0x200137ec <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::find::h39dcdd0c775f1c60+0xc>
20013834:      	lw	a0, 32(sp)
20013836:      	sw	a0, 24(sp)
20013838:      	j	0x20013820 <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::find::h39dcdd0c775f1c60+0x40>

2001383a <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next::h7ecb5fbb719083e8>:
2001383a:      	addi	sp, sp, -64
2001383c:      	sw	ra, 60(sp)
2001383e:      	sw	a0, 16(sp)
20013840:      	sw	a0, 28(sp)
20013842:      	lw	a0, 0(a0)
20013844:      	auipc	ra, 0
20013848:      	jalr	662(ra)
2001384c:      	sw	a0, 20(sp)
2001384e:      	j	0x20013850 <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next::h7ecb5fbb719083e8+0x16>
20013850:      	lw	a0, 20(sp)
20013852:      	auipc	ra, 0
20013856:      	jalr	656(ra)
2001385a:      	j	0x2001385c <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next::h7ecb5fbb719083e8+0x22>
2001385c:      	j	0x2001385e <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next::h7ecb5fbb719083e8+0x24>
2001385e:      	j	0x20013860 <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next::h7ecb5fbb719083e8+0x26>
20013860:      	li	a1, 0
20013862:      	li	a0, 1
20013864:      	bne	a0, a1, 0x2001386c <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next::h7ecb5fbb719083e8+0x32>
20013868:      	j	0x2001386a <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next::h7ecb5fbb719083e8+0x30>
2001386a:      	j	0x2001387e <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next::h7ecb5fbb719083e8+0x44>
2001386c:      	lw	a0, 16(sp)
2001386e:      	lw	a0, 4(a0)
20013870:      	auipc	ra, 0
20013874:      	jalr	676(ra)
20013878:      	j	0x2001387a <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next::h7ecb5fbb719083e8+0x40>
2001387a:      	j	0x2001387c <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next::h7ecb5fbb719083e8+0x42>
2001387c:      	j	0x2001387e <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next::h7ecb5fbb719083e8+0x44>
2001387e:      	lw	a0, 16(sp)
20013880:      	lw	a0, 0(a0)
20013882:      	auipc	ra, 0
20013886:      	jalr	600(ra)
2001388a:      	sw	a0, 12(sp)
2001388c:      	j	0x2001388e <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next::h7ecb5fbb719083e8+0x54>
2001388e:      	lw	a0, 12(sp)
20013890:      	lw	a1, 16(sp)
20013892:      	lw	a1, 4(a1)
20013894:      	beq	a0, a1, 0x200138e0 <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next::h7ecb5fbb719083e8+0xa6>
20013898:      	j	0x2001389a <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next::h7ecb5fbb719083e8+0x60>
2001389a:      	lw	a0, 16(sp)
2001389c:      	sw	a0, 36(sp)
2001389e:      	li	a1, 1
200138a0:      	sw	a1, 0(sp)
200138a2:      	sw	a1, 40(sp)
200138a4:      	lw	a0, 0(a0)
200138a6:      	auipc	ra, 0
200138aa:      	jalr	564(ra)
200138ae:      	mv	a1, a0
200138b0:      	lw	a0, 16(sp)
200138b2:      	sw	a1, 4(sp)
200138b4:      	sw	a1, 44(sp)
200138b6:      	lw	a0, 0(a0)
200138b8:      	auipc	ra, 0
200138bc:      	jalr	546(ra)
200138c0:      	lw	a1, 0(sp)
200138c2:      	sw	a0, 48(sp)
200138c4:      	sw	a1, 52(sp)
200138c6:      	addi	a0, a0, 20
200138c8:      	sw	a0, 56(sp)
200138ca:      	auipc	ra, 0
200138ce:      	jalr	518(ra)
200138d2:      	lw	a2, 16(sp)
200138d4:      	mv	a1, a0
200138d6:      	lw	a0, 4(sp)
200138d8:      	sw	a1, 0(a2)
200138da:      	sw	a0, 32(sp)
200138dc:      	sw	a0, 8(sp)
200138de:      	j	0x200138ee <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next::h7ecb5fbb719083e8+0xb4>
200138e0:      	li	a0, 0
200138e2:      	sw	a0, 24(sp)
200138e4:      	j	0x200138e6 <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next::h7ecb5fbb719083e8+0xac>
200138e6:      	lw	a0, 24(sp)
200138e8:      	lw	ra, 60(sp)
200138ea:      	addi	sp, sp, 64
200138ec:      	ret
200138ee:      	lw	a0, 8(sp)
200138f0:      	sw	a0, 24(sp)
200138f2:      	j	0x200138e6 <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next::h7ecb5fbb719083e8+0xac>

200138f4 <<core::iter::adapters::filter::Filter<I,P> as core::iter::traits::iterator::Iterator>::fold::he2b42b9218af894a>:
200138f4:      	addi	sp, sp, -48
200138f6:      	sw	ra, 44(sp)
200138f8:      	sw	a3, 8(sp)
200138fa:      	sw	a2, 12(sp)
200138fc:      	sw	a1, 16(sp)
200138fe:      	sw	a0, 20(sp)
20013900:      	sw	a0, 24(sp)
20013902:      	sw	a1, 28(sp)
20013904:      	sw	a2, 32(sp)
20013906:      	sw	a3, 36(sp)
20013908:      	auipc	ra, 0
2001390c:      	jalr	244(ra)
20013910:      	j	0x20013912 <<core::iter::adapters::filter::Filter<I,P> as core::iter::traits::iterator::Iterator>::fold::he2b42b9218af894a+0x1e>
20013912:      	lw	a3, 8(sp)
20013914:      	lw	a2, 12(sp)
20013916:      	lw	a1, 16(sp)
20013918:      	lw	a0, 20(sp)
2001391a:      	auipc	ra, 0
2001391e:      	jalr	-578(ra)
20013922:      	sw	a0, 0(sp)
20013924:      	sw	a1, 4(sp)
20013926:      	j	0x20013928 <<core::iter::adapters::filter::Filter<I,P> as core::iter::traits::iterator::Iterator>::fold::he2b42b9218af894a+0x34>
20013928:      	lw	a1, 4(sp)
2001392a:      	lw	a0, 0(sp)
2001392c:      	lw	ra, 44(sp)
2001392e:      	addi	sp, sp, 48
20013930:      	ret

20013932 <<core::iter::adapters::filter::Filter<I,P> as core::iter::traits::iterator::Iterator>::next::h7dfc4e05a97b7131>:
20013932:      	addi	sp, sp, -16
20013934:      	sw	ra, 12(sp)
20013936:      	mv	a1, a0
20013938:      	sw	a1, 8(sp)
2001393a:      	mv	a0, a1
2001393c:      	auipc	ra, 0
20013940:      	jalr	-348(ra)
20013944:      	sw	a0, 4(sp)
20013946:      	j	0x20013948 <<core::iter::adapters::filter::Filter<I,P> as core::iter::traits::iterator::Iterator>::next::h7dfc4e05a97b7131+0x16>
20013948:      	lw	a0, 4(sp)
2001394a:      	lw	ra, 12(sp)
2001394c:      	addi	sp, sp, 16
2001394e:      	ret

20013950 <core::iter::traits::iterator::Iterator::max_by_key::h035266ee6d86e8c6>:
20013950:      	addi	sp, sp, -96
20013952:      	sw	ra, 92(sp)
20013954:      	sw	a1, 28(sp)
20013956:      	sw	a0, 32(sp)
20013958:      	sw	a0, 56(sp)
2001395a:      	sw	a1, 60(sp)
2001395c:      	auipc	ra, 0
20013960:      	jalr	1000(ra)
20013964:      	j	0x20013966 <core::iter::traits::iterator::Iterator::max_by_key::h035266ee6d86e8c6+0x16>
20013966:      	lw	a1, 28(sp)
20013968:      	lw	a0, 32(sp)
2001396a:      	auipc	ra, 0
2001396e:      	jalr	114(ra)
20013972:      	sw	a0, 20(sp)
20013974:      	sw	a1, 24(sp)
20013976:      	j	0x20013978 <core::iter::traits::iterator::Iterator::max_by_key::h035266ee6d86e8c6+0x28>
20013978:      	lw	a1, 24(sp)
2001397a:      	lw	a0, 20(sp)
2001397c:      	auipc	ra, 0
20013980:      	jalr	1584(ra)
20013984:      	sw	a0, 12(sp)
20013986:      	sw	a1, 16(sp)
20013988:      	j	0x2001398a <core::iter::traits::iterator::Iterator::max_by_key::h035266ee6d86e8c6+0x3a>
2001398a:      	lw	a1, 16(sp)
2001398c:      	lw	a0, 12(sp)
2001398e:      	auipc	ra, 0
20013992:      	jalr	1382(ra)
20013996:      	sw	a0, 48(sp)
20013998:      	sw	a1, 52(sp)
2001399a:      	j	0x2001399c <core::iter::traits::iterator::Iterator::max_by_key::h035266ee6d86e8c6+0x4c>
2001399c:      	lw	a0, 52(sp)
2001399e:      	seqz	a1, a0
200139a2:      	li	a1, 0
200139a4:      	bne	a0, a1, 0x200139ae <core::iter::traits::iterator::Iterator::max_by_key::h035266ee6d86e8c6+0x5e>
200139a8:      	j	0x200139aa <core::iter::traits::iterator::Iterator::max_by_key::h035266ee6d86e8c6+0x5a>
200139aa:      	j	0x200139c0 <core::iter::traits::iterator::Iterator::max_by_key::h035266ee6d86e8c6+0x70>
200139ac:      	unimp	
200139ae:      	lw	a1, 48(sp)
200139b0:      	lw	a0, 52(sp)
200139b2:      	sw	a0, 8(sp)
200139b4:      	sw	a1, 80(sp)
200139b6:      	sw	a0, 84(sp)
200139b8:      	sw	a1, 40(sp)
200139ba:      	sw	a0, 44(sp)
200139bc:      	sw	a0, 88(sp)
200139be:      	j	0x200139d6 <core::iter::traits::iterator::Iterator::max_by_key::h035266ee6d86e8c6+0x86>
200139c0:      	auipc	ra, 0
200139c4:      	jalr	1394(ra)
200139c8:      	sw	a0, 36(sp)
200139ca:      	j	0x200139cc <core::iter::traits::iterator::Iterator::max_by_key::h035266ee6d86e8c6+0x7c>
200139cc:      	j	0x200139ce <core::iter::traits::iterator::Iterator::max_by_key::h035266ee6d86e8c6+0x7e>
200139ce:      	lw	a0, 36(sp)
200139d0:      	lw	ra, 92(sp)
200139d2:      	addi	sp, sp, 96
200139d4:      	ret
200139d6:      	lw	a0, 8(sp)
200139d8:      	sw	a0, 36(sp)
200139da:      	j	0x200139ce <core::iter::traits::iterator::Iterator::max_by_key::h035266ee6d86e8c6+0x7e>

200139dc <core::iter::traits::iterator::Iterator::map::he1b6385ce7f6b2d7>:
200139dc:      	addi	sp, sp, -32
200139de:      	sw	ra, 28(sp)
200139e0:      	sw	a0, 16(sp)
200139e2:      	sw	a1, 20(sp)
200139e4:      	auipc	ra, 0
200139e8:      	jalr	1658(ra)
200139ec:      	sw	a0, 8(sp)
200139ee:      	sw	a1, 12(sp)
200139f0:      	j	0x200139f2 <core::iter::traits::iterator::Iterator::map::he1b6385ce7f6b2d7+0x16>
200139f2:      	lw	a1, 12(sp)
200139f4:      	lw	a0, 8(sp)
200139f6:      	lw	ra, 28(sp)
200139f8:      	addi	sp, sp, 32
200139fa:      	ret

200139fc <core::iter::adapters::filter::filter_fold::hcea5bba3fb63778c>:
200139fc:      	addi	sp, sp, -32
200139fe:      	addi	sp, sp, 32
20013a00:      	ret

20013a02 <core::iter::adapters::filter::filter_fold::{{closure}}::h65abaa73f3ec75ef>:
20013a02:      	addi	sp, sp, -80
20013a04:      	sw	ra, 76(sp)
20013a06:      	sw	a2, 4(sp)
20013a08:      	sw	a1, 8(sp)
20013a0a:      	sw	a0, 12(sp)
20013a0c:      	sw	a3, 20(sp)
20013a0e:      	sw	a0, 60(sp)
20013a10:      	sw	a1, 64(sp)
20013a12:      	sw	a2, 68(sp)
20013a14:      	li	a1, 1
20013a16:      	sb	a1, 59(sp)
20013a1a:      	addi	a1, sp, 20
20013a1c:      	sw	a1, 36(sp)
20013a1e:      	auipc	ra, 0
20013a22:      	jalr	690(ra)
20013a26:      	sw	a0, 16(sp)
20013a28:      	j	0x20013a2a <core::iter::adapters::filter::filter_fold::{{closure}}::h65abaa73f3ec75ef+0x28>
20013a2a:      	lw	a0, 16(sp)
20013a2c:      	li	a1, 0
20013a2e:      	bne	a0, a1, 0x20013a3e <core::iter::adapters::filter::filter_fold::{{closure}}::h65abaa73f3ec75ef+0x3c>
20013a32:      	j	0x20013a34 <core::iter::adapters::filter::filter_fold::{{closure}}::h65abaa73f3ec75ef+0x32>
20013a34:      	lw	a0, 4(sp)
20013a36:      	lw	a1, 8(sp)
20013a38:      	sw	a1, 24(sp)
20013a3a:      	sw	a0, 28(sp)
20013a3c:      	j	0x20013a62 <core::iter::adapters::filter::filter_fold::{{closure}}::h65abaa73f3ec75ef+0x60>
20013a3e:      	lw	a2, 4(sp)
20013a40:      	lw	a1, 8(sp)
20013a42:      	lw	a0, 12(sp)
20013a44:      	li	a3, 0
20013a46:      	sb	a3, 59(sp)
20013a4a:      	lw	a3, 20(sp)
20013a4c:      	sw	a1, 40(sp)
20013a4e:      	sw	a2, 44(sp)
20013a50:      	sw	a3, 48(sp)
20013a52:      	auipc	ra, 0
20013a56:      	jalr	1568(ra)
20013a5a:      	sw	a0, 24(sp)
20013a5c:      	sw	a1, 28(sp)
20013a5e:      	j	0x20013a60 <core::iter::adapters::filter::filter_fold::{{closure}}::h65abaa73f3ec75ef+0x5e>
20013a60:      	j	0x20013a62 <core::iter::adapters::filter::filter_fold::{{closure}}::h65abaa73f3ec75ef+0x60>
20013a62:      	lbu	a0, 59(sp)
20013a66:      	andi	a0, a0, 1
20013a68:      	li	a1, 0
20013a6a:      	bne	a0, a1, 0x20013a7a <core::iter::adapters::filter::filter_fold::{{closure}}::h65abaa73f3ec75ef+0x78>
20013a6e:      	j	0x20013a70 <core::iter::adapters::filter::filter_fold::{{closure}}::h65abaa73f3ec75ef+0x6e>
20013a70:      	lw	a0, 24(sp)
20013a72:      	lw	a1, 28(sp)
20013a74:      	lw	ra, 76(sp)
20013a76:      	addi	sp, sp, 80
20013a78:      	ret
20013a7a:      	j	0x20013a70 <core::iter::adapters::filter::filter_fold::{{closure}}::h65abaa73f3ec75ef+0x6e>

20013a7c <core::iter::adapters::filter::Filter<I,P>::new::h87ecd03617a0e538>:
20013a7c:      	addi	sp, sp, -32
20013a7e:      	sw	a0, 16(sp)
20013a80:      	sw	a1, 20(sp)
20013a82:      	sw	a0, 8(sp)
20013a84:      	sw	a1, 12(sp)
20013a86:      	addi	sp, sp, 32
20013a88:      	ret

20013a8a <yarr_sys_interrupt_handler>:
20013a8a:      	addi	sp, sp, -16
20013a8c:      	sw	ra, 12(sp)
20013a8e:      	sw	a0, 4(sp)
20013a90:      	slli	a0, a0, 1
20013a92:      	srli	a0, a0, 1
20013a94:      	sw	a0, 8(sp)
20013a96:      	li	a1, 7
20013a98:      	beq	a0, a1, 0x20013aa0 <yarr_sys_interrupt_handler+0x16>
20013a9c:      	j	0x20013a9e <yarr_sys_interrupt_handler+0x14>
20013a9e:      	j	0x20013a9e <yarr_sys_interrupt_handler+0x14>
20013aa0:      	auipc	ra, 0
20013aa4:      	jalr	-2012(ra)
20013aa8:      	j	0x20013aaa <yarr_sys_interrupt_handler+0x20>
20013aaa:      	lw	ra, 12(sp)
20013aac:      	addi	sp, sp, 16
20013aae:      	ret

20013ab0 <yarr_sys_exception_handler>:
20013ab0:      	addi	sp, sp, -16
20013ab2:      	sw	ra, 12(sp)
20013ab4:      	sw	a0, 8(sp)
20013ab6:      	li	a1, 11
20013ab8:      	beq	a0, a1, 0x20013ac0 <yarr_sys_exception_handler+0x10>
20013abc:      	j	0x20013abe <yarr_sys_exception_handler+0xe>
20013abe:      	j	0x20013abe <yarr_sys_exception_handler+0xe>
20013ac0:      	auipc	ra, 0
20013ac4:      	jalr	-2044(ra)
20013ac8:      	j	0x20013aca <yarr_sys_exception_handler+0x1a>
20013aca:      	lw	ra, 12(sp)
20013acc:      	addi	sp, sp, 16
20013ace:      	ret

20013ad0 <core::ptr::non_null::NonNull<T>::new_unchecked::hc8027716bf1d8ff9>:
20013ad0:      	addi	sp, sp, -16
20013ad2:      	sw	a0, 12(sp)
20013ad4:      	sw	a0, 8(sp)
20013ad6:      	addi	sp, sp, 16
20013ad8:      	ret

20013ada <core::ptr::non_null::NonNull<T>::as_ptr::h709684486c2f5957>:
20013ada:      	addi	sp, sp, -16
20013adc:      	sw	a0, 12(sp)
20013ade:      	addi	sp, sp, 16
20013ae0:      	ret

20013ae2 <core::ptr::mut_ptr::<impl *mut T>::is_null::h6f8395d77d47ed2e>:
20013ae2:      	addi	sp, sp, -32
20013ae4:      	sw	ra, 28(sp)
20013ae6:      	sw	a0, 16(sp)
20013ae8:      	sw	a0, 8(sp)
20013aea:      	li	a0, 0
20013aec:      	sw	a0, 20(sp)
20013aee:      	sw	a0, 24(sp)
20013af0:      	auipc	ra, 0
20013af4:      	jalr	522(ra)
20013af8:      	sw	a0, 12(sp)
20013afa:      	j	0x20013afc <core::ptr::mut_ptr::<impl *mut T>::is_null::h6f8395d77d47ed2e+0x1a>
20013afc:      	lw	a1, 12(sp)
20013afe:      	lw	a0, 8(sp)
20013b00:      	auipc	ra, 0
20013b04:      	jalr	112(ra)
20013b08:      	sw	a0, 4(sp)
20013b0a:      	j	0x20013b0c <core::ptr::mut_ptr::<impl *mut T>::is_null::h6f8395d77d47ed2e+0x2a>
20013b0c:      	lw	a0, 4(sp)
20013b0e:      	lw	ra, 28(sp)
20013b10:      	addi	sp, sp, 32
20013b12:      	ret

20013b14 <core::ptr::const_ptr::<impl *const T>::is_null::h336e68a2fb9af50f>:
20013b14:      	addi	sp, sp, -32
20013b16:      	sw	ra, 28(sp)
20013b18:      	sw	a0, 16(sp)
20013b1a:      	sw	a0, 8(sp)
20013b1c:      	li	a0, 0
20013b1e:      	sw	a0, 20(sp)
20013b20:      	sw	a0, 24(sp)
20013b22:      	auipc	ra, 0
20013b26:      	jalr	460(ra)
20013b2a:      	sw	a0, 12(sp)
20013b2c:      	j	0x20013b2e <core::ptr::const_ptr::<impl *const T>::is_null::h336e68a2fb9af50f+0x1a>
20013b2e:      	lw	a1, 12(sp)
20013b30:      	lw	a0, 8(sp)
20013b32:      	auipc	ra, 0
20013b36:      	jalr	358(ra)
20013b3a:      	sw	a0, 4(sp)
20013b3c:      	j	0x20013b3e <core::ptr::const_ptr::<impl *const T>::is_null::h336e68a2fb9af50f+0x2a>
20013b3e:      	lw	a0, 4(sp)
20013b40:      	lw	ra, 28(sp)
20013b42:      	addi	sp, sp, 32
20013b44:      	ret

20013b46 <core::slice::<impl [T]>::iter::hd4c65c23ce9f5a44>:
20013b46:      	addi	sp, sp, -32
20013b48:      	sw	ra, 28(sp)
20013b4a:      	sw	a0, 16(sp)
20013b4c:      	sw	a1, 20(sp)
20013b4e:      	auipc	ra, 0
20013b52:      	jalr	-1012(ra)
20013b56:      	sw	a0, 8(sp)
20013b58:      	sw	a1, 12(sp)
20013b5a:      	j	0x20013b5c <core::slice::<impl [T]>::iter::hd4c65c23ce9f5a44+0x16>
20013b5c:      	lw	a1, 12(sp)
20013b5e:      	lw	a0, 8(sp)
20013b60:      	lw	ra, 28(sp)
20013b62:      	addi	sp, sp, 32
20013b64:      	ret

20013b66 <core::slice::<impl [T]>::as_ptr::h81c4b087aeee85ef>:
20013b66:      	addi	sp, sp, -16
20013b68:      	sw	a0, 8(sp)
20013b6a:      	sw	a1, 12(sp)
20013b6c:      	addi	sp, sp, 16
20013b6e:      	ret

20013b70 <core::ptr::mut_ptr::<impl *mut T>::guaranteed_eq::hae4b41185480ddd9>:
20013b70:      	addi	sp, sp, -16
20013b72:      	sw	a0, 4(sp)
20013b74:      	sw	a1, 8(sp)
20013b76:      	xor	a0, a0, a1
20013b78:      	seqz	a0, a0
20013b7c:      	sw	a0, 0(sp)
20013b7e:      	sb	a0, 15(sp)
20013b82:      	j	0x20013b84 <core::ptr::mut_ptr::<impl *mut T>::guaranteed_eq::hae4b41185480ddd9+0x14>
20013b84:      	lw	a0, 0(sp)
20013b86:      	addi	sp, sp, 16
20013b88:      	ret

20013b8a <core::sync::atomic::compiler_fence::h7f397d67599e4c6c>:
20013b8a:      	addi	sp, sp, -48
20013b8c:      	sw	ra, 44(sp)
20013b8e:      	sb	a0, 15(sp)
20013b92:      	andi	a0, a0, 255
20013b96:      	sw	a0, 8(sp)
20013b98:      	lw	a0, 8(sp)
20013b9a:      	slli	a0, a0, 2
20013b9c:      	lui	a1, 131094
20013ba0:      	addi	a1, a1, -1956
20013ba4:      	add	a0, a0, a1
20013ba6:      	lw	a0, 0(a0)
20013ba8:      	jr	a0
20013baa:      	unimp	

20013bac <.LBB0_3>:
20013bac:      	lui	a0, 131094
20013bb0:      	addi	a1, a0, -1884
20013bb4:      	lui	a0, 131094
20013bb8:      	addi	a3, a0, -1876
20013bbc:      	addi	a0, sp, 16
20013bbe:      	li	a2, 1
20013bc0:      	li	a4, 0
20013bc2:      	auipc	ra, 0
20013bc6:      	jalr	60(ra)
20013bca:      	j	0x20013bea <.LBB0_7+0xc>

20013bcc <.LBB0_4>:
20013bcc:      	fence	rw, w
20013bd0:      	j	0x20013be4 <.LBB0_7+0x6>

20013bd2 <.LBB0_5>:
20013bd2:      	fence	r, rw
20013bd6:      	j	0x20013be4 <.LBB0_7+0x6>

20013bd8 <.LBB0_6>:
20013bd8:      	fence.tso	
20013bdc:      	j	0x20013be4 <.LBB0_7+0x6>

20013bde <.LBB0_7>:
20013bde:      	fence	rw, rw
20013be2:      	j	0x20013be4 <.LBB0_7+0x6>
20013be4:      	lw	ra, 44(sp)
20013be6:      	addi	sp, sp, 48
20013be8:      	ret
20013bea:      	lui	a0, 131094
20013bee:      	addi	a1, a0, -1796
20013bf2:      	addi	a0, sp, 16
20013bf4:      	auipc	ra, 0
20013bf8:      	jalr	1776(ra)
20013bfc:      	unimp	

20013bfe <core::fmt::Arguments::new_v1::hb2b84d2aa201000c>:
20013bfe:      	addi	sp, sp, -80
20013c00:      	sw	ra, 76(sp)
20013c02:      	sw	a4, 0(sp)
20013c04:      	sw	a3, 4(sp)
20013c06:      	sw	a2, 8(sp)
20013c08:      	sw	a1, 12(sp)
20013c0a:      	sw	a0, 16(sp)
20013c0c:      	sw	a1, 56(sp)
20013c0e:      	sw	a2, 60(sp)
20013c10:      	sw	a3, 64(sp)
20013c12:      	sw	a4, 68(sp)
20013c14:      	bltu	a2, a4, 0x20013c2a <core::fmt::Arguments::new_v1::hb2b84d2aa201000c+0x2c>
20013c18:      	j	0x20013c1a <core::fmt::Arguments::new_v1::hb2b84d2aa201000c+0x1c>
20013c1a:      	lw	a1, 8(sp)
20013c1c:      	lw	a0, 0(sp)
20013c1e:      	addi	a0, a0, 1
20013c20:      	sltu	a0, a0, a1
20013c24:      	sb	a0, 23(sp)
20013c28:      	j	0x20013c32 <core::fmt::Arguments::new_v1::hb2b84d2aa201000c+0x34>
20013c2a:      	li	a0, 1
20013c2c:      	sb	a0, 23(sp)
20013c30:      	j	0x20013c32 <core::fmt::Arguments::new_v1::hb2b84d2aa201000c+0x34>
20013c32:      	lbu	a0, 23(sp)
20013c36:      	andi	a0, a0, 1
20013c38:      	li	a1, 0
20013c3a:      	bne	a0, a1, 0x20013c64 <core::fmt::Arguments::new_v1::hb2b84d2aa201000c+0x66>
20013c3e:      	j	0x20013c40 <core::fmt::Arguments::new_v1::hb2b84d2aa201000c+0x42>
20013c40:      	lw	a0, 0(sp)
20013c42:      	lw	a1, 16(sp)
20013c44:      	lw	a2, 4(sp)
20013c46:      	lw	a3, 8(sp)
20013c48:      	lw	a4, 12(sp)
20013c4a:      	li	a5, 0
20013c4c:      	sw	a5, 48(sp)
20013c4e:      	sw	a4, 0(a1)
20013c50:      	sw	a3, 4(a1)
20013c52:      	lw	a4, 48(sp)
20013c54:      	lw	a3, 52(sp)
20013c56:      	sw	a4, 8(a1)
20013c58:      	sw	a3, 12(a1)
20013c5a:      	sw	a2, 16(a1)
20013c5c:      	sw	a0, 20(a1)
20013c5e:      	lw	ra, 76(sp)
20013c60:      	addi	sp, sp, 80
20013c62:      	ret
20013c64:      	lui	a0, 131094
20013c68:      	addi	a1, a0, -1768
20013c6c:      	lui	a0, 131094
20013c70:      	addi	a3, a0, -1760
20013c74:      	addi	a0, sp, 24
20013c76:      	li	a2, 1
20013c78:      	li	a4, 0
20013c7a:      	auipc	ra, 0
20013c7e:      	jalr	-124(ra)
20013c82:      	j	0x20013c84 <core::fmt::Arguments::new_v1::hb2b84d2aa201000c+0x86>
20013c84:      	lui	a0, 131094
20013c88:      	addi	a1, a0, -1684
20013c8c:      	addi	a0, sp, 24
20013c8e:      	auipc	ra, 0
20013c92:      	jalr	1622(ra)
20013c96:      	unimp	

20013c98 <core::ptr::const_ptr::<impl *const T>::guaranteed_eq::he3fc677d5c308a91>:
20013c98:      	addi	sp, sp, -16
20013c9a:      	sw	a0, 4(sp)
20013c9c:      	sw	a1, 8(sp)
20013c9e:      	xor	a0, a0, a1
20013ca0:      	seqz	a0, a0
20013ca4:      	sw	a0, 0(sp)
20013ca6:      	sb	a0, 15(sp)
20013caa:      	j	0x20013cac <core::ptr::const_ptr::<impl *const T>::guaranteed_eq::he3fc677d5c308a91+0x14>
20013cac:      	lw	a0, 0(sp)
20013cae:      	addi	sp, sp, 16
20013cb0:      	ret

20013cb2 <core::ops::function::impls::<impl core::ops::function::FnMut<A> for &mut F>::call_mut::h216b60813aa5b0f4>:
20013cb2:      	addi	sp, sp, -16
20013cb4:      	sw	ra, 12(sp)
20013cb6:      	sw	a1, 4(sp)
20013cb8:      	sw	a0, 8(sp)
20013cba:      	lw	a0, 0(a0)
20013cbc:      	auipc	ra, 0
20013cc0:      	jalr	20(ra)
20013cc4:      	sw	a0, 0(sp)
20013cc6:      	j	0x20013cc8 <core::ops::function::impls::<impl core::ops::function::FnMut<A> for &mut F>::call_mut::h216b60813aa5b0f4+0x16>
20013cc8:      	lw	a0, 0(sp)
20013cca:      	lw	ra, 12(sp)
20013ccc:      	addi	sp, sp, 16
20013cce:      	ret

20013cd0 <yarr::scheduler::schedule::{{closure}}::h788e4ac430a68338>:
20013cd0:      	addi	sp, sp, -16
20013cd2:      	sw	a0, 8(sp)
20013cd4:      	sw	a1, 12(sp)
20013cd6:      	lw	a0, 0(a1)
20013cd8:      	lbu	a0, 16(a0)
20013cdc:      	addi	sp, sp, 16
20013cde:      	ret

20013ce0 <yarr::scheduler::schedule::{{closure}}::hbaac7cf314d04291>:
20013ce0:      	addi	sp, sp, -16
20013ce2:      	sw	a0, 8(sp)
20013ce4:      	sw	a1, 12(sp)
20013ce6:      	lw	a0, 0(a1)
20013ce8:      	lw	a0, 12(a0)
20013cea:      	addi	sp, sp, 16
20013cec:      	ret

20013cee <core::ptr::metadata::from_raw_parts::h3c1cc10c37fa137d>:
20013cee:      	addi	sp, sp, -32
20013cf0:      	sw	a0, 20(sp)
20013cf2:      	sw	a0, 16(sp)
20013cf4:      	sw	a0, 8(sp)
20013cf6:      	addi	sp, sp, 32
20013cf8:      	ret

20013cfa <core::ptr::metadata::from_raw_parts_mut::hd9f1d9d7915615fe>:
20013cfa:      	addi	sp, sp, -32
20013cfc:      	sw	a0, 20(sp)
20013cfe:      	sw	a0, 16(sp)
20013d00:      	sw	a0, 8(sp)
20013d02:      	addi	sp, sp, 32
20013d04:      	ret

20013d06 <core::ops::function::impls::<impl core::ops::function::FnOnce<A> for &mut F>::call_once::h777391489cfdb52f>:
20013d06:      	addi	sp, sp, -32
20013d08:      	sw	ra, 28(sp)
20013d0a:      	sw	a1, 16(sp)
20013d0c:      	sw	a2, 20(sp)
20013d0e:      	sw	a0, 24(sp)
20013d10:      	auipc	ra, 0
20013d14:      	jalr	950(ra)
20013d18:      	sw	a0, 12(sp)
20013d1a:      	j	0x20013d1c <core::ops::function::impls::<impl core::ops::function::FnOnce<A> for &mut F>::call_once::h777391489cfdb52f+0x16>
20013d1c:      	lw	a0, 12(sp)
20013d1e:      	lw	ra, 28(sp)
20013d20:      	addi	sp, sp, 32
20013d22:      	ret

20013d24 <core::ops::function::impls::<impl core::ops::function::FnOnce<A> for &mut F>::call_once::h87556488e2e695bb>:
20013d24:      	addi	sp, sp, -32
20013d26:      	sw	ra, 28(sp)
20013d28:      	sw	a1, 20(sp)
20013d2a:      	sw	a0, 24(sp)
20013d2c:      	auipc	ra, 0
20013d30:      	jalr	30(ra)
20013d34:      	sw	a0, 12(sp)
20013d36:      	sw	a1, 16(sp)
20013d38:      	j	0x20013d3a <core::ops::function::impls::<impl core::ops::function::FnOnce<A> for &mut F>::call_once::h87556488e2e695bb+0x16>
20013d3a:      	lw	a1, 16(sp)
20013d3c:      	lw	a0, 12(sp)
20013d3e:      	lw	ra, 28(sp)
20013d40:      	addi	sp, sp, 32
20013d42:      	ret

20013d44 <core::iter::traits::iterator::Iterator::max_by_key::key::he95bb0782efdccef>:
20013d44:      	addi	sp, sp, -16
20013d46:      	addi	sp, sp, 16
20013d48:      	ret

20013d4a <core::iter::traits::iterator::Iterator::max_by_key::key::{{closure}}::hf07938eb4857d4eb>:
20013d4a:      	addi	sp, sp, -32
20013d4c:      	sw	ra, 28(sp)
20013d4e:      	sw	a1, 4(sp)
20013d50:      	sw	a0, 24(sp)
20013d52:      	addi	a1, sp, 4
20013d54:      	sw	a1, 20(sp)
20013d56:      	auipc	ra, 0
20013d5a:      	jalr	-118(ra)
20013d5e:      	sw	a0, 0(sp)
20013d60:      	j	0x20013d62 <core::iter::traits::iterator::Iterator::max_by_key::key::{{closure}}::hf07938eb4857d4eb+0x18>
20013d62:      	lw	a0, 0(sp)
20013d64:      	lw	a1, 4(sp)
20013d66:      	sw	a0, 8(sp)
20013d68:      	sw	a1, 12(sp)
20013d6a:      	lw	ra, 28(sp)
20013d6c:      	addi	sp, sp, 32
20013d6e:      	ret

20013d70 <core::iter::traits::iterator::Iterator::max_by_key::compare::h69839901efde6baa>:
20013d70:      	addi	sp, sp, -32
20013d72:      	sw	ra, 28(sp)
20013d74:      	sw	a0, 12(sp)
20013d76:      	sw	a1, 16(sp)
20013d78:      	sw	a0, 20(sp)
20013d7a:      	sw	a1, 24(sp)
20013d7c:      	auipc	ra, 0
20013d80:      	jalr	1168(ra)
20013d84:      	sw	a0, 8(sp)
20013d86:      	j	0x20013d88 <core::iter::traits::iterator::Iterator::max_by_key::compare::h69839901efde6baa+0x18>
20013d88:      	lw	a0, 8(sp)
20013d8a:      	lw	ra, 28(sp)
20013d8c:      	addi	sp, sp, 32
20013d8e:      	ret

20013d90 <core::iter::traits::iterator::Iterator::max_by::fold::hc80776d7eceb0c96>:
20013d90:      	addi	sp, sp, -16
20013d92:      	addi	sp, sp, 16
20013d94:      	ret

20013d96 <core::iter::traits::iterator::Iterator::max_by::fold::{{closure}}::hc3b7395976948857>:
20013d96:      	addi	sp, sp, -64
20013d98:      	sw	ra, 60(sp)
20013d9a:      	sw	a4, 12(sp)
20013d9c:      	mv	a4, a3
20013d9e:      	lw	a3, 12(sp)
20013da0:      	sw	a4, 16(sp)
20013da2:      	mv	a4, a2
20013da4:      	lw	a2, 16(sp)
20013da6:      	sw	a4, 20(sp)
20013da8:      	mv	a4, a1
20013daa:      	lw	a1, 20(sp)
20013dac:      	sw	a4, 24(sp)
20013dae:      	mv	a4, a0
20013db0:      	lw	a0, 24(sp)
20013db2:      	sw	a4, 36(sp)
20013db4:      	sw	a0, 40(sp)
20013db6:      	sw	a1, 44(sp)
20013db8:      	sw	a2, 48(sp)
20013dba:      	sw	a3, 52(sp)
20013dbc:      	auipc	ra, 0
20013dc0:      	jalr	24(ra)
20013dc4:      	sw	a0, 28(sp)
20013dc6:      	sw	a1, 32(sp)
20013dc8:      	j	0x20013dca <core::iter::traits::iterator::Iterator::max_by::fold::{{closure}}::hc3b7395976948857+0x34>
20013dca:      	lw	a1, 32(sp)
20013dcc:      	lw	a0, 28(sp)
20013dce:      	lw	ra, 60(sp)
20013dd0:      	addi	sp, sp, 64
20013dd2:      	ret

20013dd4 <core::cmp::max_by::h3977e0e5e294c914>:
20013dd4:      	addi	sp, sp, -64
20013dd6:      	sw	ra, 60(sp)
20013dd8:      	sw	a4, 4(sp)
20013dda:      	mv	a4, a0
20013ddc:      	lw	a0, 4(sp)
20013dde:      	sw	a4, 8(sp)
20013de0:      	sw	a1, 12(sp)
20013de2:      	sw	a2, 16(sp)
20013de4:      	sw	a3, 20(sp)
20013de6:      	sw	a0, 56(sp)
20013de8:      	li	a1, 1
20013dea:      	sb	a1, 55(sp)
20013dee:      	sb	a1, 54(sp)
20013df2:      	addi	a1, sp, 8
20013df4:      	sw	a1, 40(sp)
20013df6:      	addi	a2, sp, 16
20013df8:      	sw	a2, 44(sp)
20013dfa:      	auipc	ra, 0
20013dfe:      	jalr	-244(ra)
20013e02:      	sb	a0, 39(sp)
20013e06:      	j	0x20013e08 <core::cmp::max_by::h3977e0e5e294c914+0x34>
20013e08:      	lbu	a0, 39(sp)
20013e0c:      	addi	a0, a0, 1
20013e0e:      	andi	a0, a0, 255
20013e12:      	li	a1, 2
20013e14:      	bltu	a0, a1, 0x20013e1e <core::cmp::max_by::h3977e0e5e294c914+0x4a>
20013e18:      	j	0x20013e1a <core::cmp::max_by::h3977e0e5e294c914+0x46>
20013e1a:      	j	0x20013e2e <core::cmp::max_by::h3977e0e5e294c914+0x5a>
20013e1c:      	unimp	
20013e1e:      	li	a0, 0
20013e20:      	sb	a0, 54(sp)
20013e24:      	lw	a1, 16(sp)
20013e26:      	lw	a0, 20(sp)
20013e28:      	sw	a1, 24(sp)
20013e2a:      	sw	a0, 28(sp)
20013e2c:      	j	0x20013e3e <core::cmp::max_by::h3977e0e5e294c914+0x6a>
20013e2e:      	li	a0, 0
20013e30:      	sb	a0, 55(sp)
20013e34:      	lw	a1, 8(sp)
20013e36:      	lw	a0, 12(sp)
20013e38:      	sw	a1, 24(sp)
20013e3a:      	sw	a0, 28(sp)
20013e3c:      	j	0x20013e3e <core::cmp::max_by::h3977e0e5e294c914+0x6a>
20013e3e:      	lbu	a0, 54(sp)
20013e42:      	andi	a0, a0, 1
20013e44:      	li	a1, 0
20013e46:      	bne	a0, a1, 0x20013e5a <core::cmp::max_by::h3977e0e5e294c914+0x86>
20013e4a:      	j	0x20013e4c <core::cmp::max_by::h3977e0e5e294c914+0x78>
20013e4c:      	lbu	a0, 55(sp)
20013e50:      	andi	a0, a0, 1
20013e52:      	li	a1, 0
20013e54:      	bne	a0, a1, 0x20013e66 <core::cmp::max_by::h3977e0e5e294c914+0x92>
20013e58:      	j	0x20013e5c <core::cmp::max_by::h3977e0e5e294c914+0x88>
20013e5a:      	j	0x20013e4c <core::cmp::max_by::h3977e0e5e294c914+0x78>
20013e5c:      	lw	a0, 24(sp)
20013e5e:      	lw	a1, 28(sp)
20013e60:      	lw	ra, 60(sp)
20013e62:      	addi	sp, sp, 64
20013e64:      	ret
20013e66:      	j	0x20013e5c <core::cmp::max_by::h3977e0e5e294c914+0x88>

20013e68 <core::option::Option<T>::unwrap_unchecked::h7999a5197ad22f7e>:
20013e68:      	addi	sp, sp, -16
20013e6a:      	sw	a0, 8(sp)
20013e6c:      	snez	a1, a0
20013e70:      	li	a1, 0
20013e72:      	beq	a0, a1, 0x20013e7c <core::option::Option<T>::unwrap_unchecked::h7999a5197ad22f7e+0x14>
20013e76:      	j	0x20013e78 <core::option::Option<T>::unwrap_unchecked::h7999a5197ad22f7e+0x10>
20013e78:      	j	0x20013e86 <core::option::Option<T>::unwrap_unchecked::h7999a5197ad22f7e+0x1e>
20013e7a:      	unimp	
20013e7c:      	auipc	ra, 0
20013e80:      	jalr	192(ra)
20013e84:      	unimp	
20013e86:      	lw	a0, 8(sp)
20013e88:      	sw	a0, 12(sp)
20013e8a:      	addi	sp, sp, 16
20013e8c:      	ret

20013e8e <core::option::Option<T>::map::h931b85e891f3556a>:
20013e8e:      	addi	sp, sp, -48
20013e90:      	sw	ra, 44(sp)
20013e92:      	sw	a1, 8(sp)
20013e94:      	sw	a0, 12(sp)
20013e96:      	sw	a1, 36(sp)
20013e98:      	li	a1, 1
20013e9a:      	sb	a1, 35(sp)
20013e9e:      	snez	a1, a0
20013ea2:      	li	a1, 0
20013ea4:      	beq	a0, a1, 0x20013eae <core::option::Option<T>::map::h931b85e891f3556a+0x20>
20013ea8:      	j	0x20013eaa <core::option::Option<T>::map::h931b85e891f3556a+0x1c>
20013eaa:      	j	0x20013eb4 <core::option::Option<T>::map::h931b85e891f3556a+0x26>
20013eac:      	unimp	
20013eae:      	li	a0, 0
20013eb0:      	sw	a0, 20(sp)
20013eb2:      	j	0x20013eda <core::option::Option<T>::map::h931b85e891f3556a+0x4c>
20013eb4:      	lw	a0, 8(sp)
20013eb6:      	lw	a1, 12(sp)
20013eb8:      	sw	a1, 40(sp)
20013eba:      	li	a2, 0
20013ebc:      	sb	a2, 35(sp)
20013ec0:      	sw	a1, 28(sp)
20013ec2:      	auipc	ra, 0
20013ec6:      	jalr	-414(ra)
20013eca:      	sw	a0, 0(sp)
20013ecc:      	sw	a1, 4(sp)
20013ece:      	j	0x20013ed0 <core::option::Option<T>::map::h931b85e891f3556a+0x42>
20013ed0:      	lw	a0, 4(sp)
20013ed2:      	lw	a1, 0(sp)
20013ed4:      	sw	a1, 16(sp)
20013ed6:      	sw	a0, 20(sp)
20013ed8:      	j	0x20013eda <core::option::Option<T>::map::h931b85e891f3556a+0x4c>
20013eda:      	lbu	a0, 35(sp)
20013ede:      	andi	a0, a0, 1
20013ee0:      	li	a1, 0
20013ee2:      	bne	a0, a1, 0x20013ef2 <core::option::Option<T>::map::h931b85e891f3556a+0x64>
20013ee6:      	j	0x20013ee8 <core::option::Option<T>::map::h931b85e891f3556a+0x5a>
20013ee8:      	lw	a0, 16(sp)
20013eea:      	lw	a1, 20(sp)
20013eec:      	lw	ra, 44(sp)
20013eee:      	addi	sp, sp, 48
20013ef0:      	ret
20013ef2:      	j	0x20013ee8 <core::option::Option<T>::map::h931b85e891f3556a+0x5a>

20013ef4 <<core::option::Option<T> as core::ops::try_trait::Try>::branch::h85d38c48d30375cc>:
20013ef4:      	addi	sp, sp, -32
20013ef6:      	sw	a0, 8(sp)
20013ef8:      	sw	a1, 12(sp)
20013efa:      	snez	a0, a1
20013efe:      	li	a0, 0
20013f00:      	beq	a1, a0, 0x20013f0a <<core::option::Option<T> as core::ops::try_trait::Try>::branch::h85d38c48d30375cc+0x16>
20013f04:      	j	0x20013f06 <<core::option::Option<T> as core::ops::try_trait::Try>::branch::h85d38c48d30375cc+0x12>
20013f06:      	j	0x20013f10 <<core::option::Option<T> as core::ops::try_trait::Try>::branch::h85d38c48d30375cc+0x1c>
20013f08:      	unimp	
20013f0a:      	li	a0, 0
20013f0c:      	sw	a0, 20(sp)
20013f0e:      	j	0x20013f1e <<core::option::Option<T> as core::ops::try_trait::Try>::branch::h85d38c48d30375cc+0x2a>
20013f10:      	lw	a1, 8(sp)
20013f12:      	lw	a0, 12(sp)
20013f14:      	sw	a1, 24(sp)
20013f16:      	sw	a0, 28(sp)
20013f18:      	sw	a1, 16(sp)
20013f1a:      	sw	a0, 20(sp)
20013f1c:      	j	0x20013f1e <<core::option::Option<T> as core::ops::try_trait::Try>::branch::h85d38c48d30375cc+0x2a>
20013f1e:      	lw	a0, 16(sp)
20013f20:      	lw	a1, 20(sp)
20013f22:      	addi	sp, sp, 32
20013f24:      	ret

20013f26 <<core::option::Option<T> as core::ops::try_trait::FromResidual>::from_residual::h833c04d435b2a833>:
20013f26:      	addi	sp, sp, -16
20013f28:      	li	a1, 0
20013f2a:      	sw	a1, 4(sp)
20013f2c:      	lw	a0, 0(sp)
20013f2e:      	addi	sp, sp, 16
20013f30:      	ret

20013f32 <<core::option::Option<T> as core::ops::try_trait::FromResidual>::from_residual::he146ce7a426a237e>:
20013f32:      	addi	sp, sp, -16
20013f34:      	li	a0, 0
20013f36:      	sw	a0, 4(sp)
20013f38:      	addi	sp, sp, 16
20013f3a:      	ret

20013f3c <core::hint::unreachable_unchecked::h51d71eebaff7b310>:
20013f3c:      	unimp	

20013f3e <<core::iter::adapters::map::Map<I,F> as core::iter::traits::iterator::Iterator>::fold::hd1336ff791aab0ba>:
20013f3e:      	addi	sp, sp, -48
20013f40:      	sw	ra, 44(sp)
20013f42:      	sw	a3, 8(sp)
20013f44:      	sw	a2, 12(sp)
20013f46:      	sw	a1, 16(sp)
20013f48:      	sw	a0, 20(sp)
20013f4a:      	sw	a0, 24(sp)
20013f4c:      	sw	a1, 28(sp)
20013f4e:      	sw	a2, 32(sp)
20013f50:      	sw	a3, 36(sp)
20013f52:      	auipc	ra, 0
20013f56:      	jalr	282(ra)
20013f5a:      	j	0x20013f5c <<core::iter::adapters::map::Map<I,F> as core::iter::traits::iterator::Iterator>::fold::hd1336ff791aab0ba+0x1e>
20013f5c:      	lw	a3, 8(sp)
20013f5e:      	lw	a2, 12(sp)
20013f60:      	lw	a1, 16(sp)
20013f62:      	lw	a0, 20(sp)
20013f64:      	auipc	ra, 0
20013f68:      	jalr	-1648(ra)
20013f6c:      	sw	a0, 0(sp)
20013f6e:      	sw	a1, 4(sp)
20013f70:      	j	0x20013f72 <<core::iter::adapters::map::Map<I,F> as core::iter::traits::iterator::Iterator>::fold::hd1336ff791aab0ba+0x34>
20013f72:      	lw	a1, 4(sp)
20013f74:      	lw	a0, 0(sp)
20013f76:      	lw	ra, 44(sp)
20013f78:      	addi	sp, sp, 48
20013f7a:      	ret

20013f7c <<core::iter::adapters::map::Map<I,F> as core::iter::traits::iterator::Iterator>::next::h43a287959b3eea14>:
20013f7c:      	addi	sp, sp, -32
20013f7e:      	sw	ra, 28(sp)
20013f80:      	sw	a0, 16(sp)
20013f82:      	sw	a0, 24(sp)
20013f84:      	auipc	ra, 0
20013f88:      	jalr	-1618(ra)
20013f8c:      	sw	a0, 20(sp)
20013f8e:      	j	0x20013f90 <<core::iter::adapters::map::Map<I,F> as core::iter::traits::iterator::Iterator>::next::h43a287959b3eea14+0x14>
20013f90:      	lw	a1, 16(sp)
20013f92:      	lw	a0, 20(sp)
20013f94:      	auipc	ra, 0
20013f98:      	jalr	-262(ra)
20013f9c:      	sw	a0, 8(sp)
20013f9e:      	sw	a1, 12(sp)
20013fa0:      	j	0x20013fa2 <<core::iter::adapters::map::Map<I,F> as core::iter::traits::iterator::Iterator>::next::h43a287959b3eea14+0x26>
20013fa2:      	lw	a1, 12(sp)
20013fa4:      	lw	a0, 8(sp)
20013fa6:      	lw	ra, 28(sp)
20013fa8:      	addi	sp, sp, 32
20013faa:      	ret

20013fac <core::iter::traits::iterator::Iterator::max_by::h36649b8a848513cc>:
20013fac:      	addi	sp, sp, -32
20013fae:      	sw	ra, 28(sp)
20013fb0:      	sw	a1, 8(sp)
20013fb2:      	sw	a0, 12(sp)
20013fb4:      	sw	a0, 16(sp)
20013fb6:      	sw	a1, 20(sp)
20013fb8:      	auipc	ra, 0
20013fbc:      	jalr	-552(ra)
20013fc0:      	j	0x20013fc2 <core::iter::traits::iterator::Iterator::max_by::h36649b8a848513cc+0x16>
20013fc2:      	lw	a1, 8(sp)
20013fc4:      	lw	a0, 12(sp)
20013fc6:      	auipc	ra, 0
20013fca:      	jalr	24(ra)
20013fce:      	sw	a0, 0(sp)
20013fd0:      	sw	a1, 4(sp)
20013fd2:      	j	0x20013fd4 <core::iter::traits::iterator::Iterator::max_by::h36649b8a848513cc+0x28>
20013fd4:      	lw	a1, 4(sp)
20013fd6:      	lw	a0, 0(sp)
20013fd8:      	lw	ra, 28(sp)
20013fda:      	addi	sp, sp, 32
20013fdc:      	ret

20013fde <core::iter::traits::iterator::Iterator::reduce::he0abbd0112be9b30>:
20013fde:      	addi	sp, sp, -80
20013fe0:      	sw	ra, 76(sp)
20013fe2:      	sw	a0, 16(sp)
20013fe4:      	sw	a1, 20(sp)
20013fe6:      	addi	a0, sp, 16
20013fe8:      	auipc	ra, 0
20013fec:      	jalr	-108(ra)
20013ff0:      	sw	a0, 8(sp)
20013ff2:      	sw	a1, 12(sp)
20013ff4:      	j	0x20013ff6 <core::iter::traits::iterator::Iterator::reduce::he0abbd0112be9b30+0x18>
20013ff6:      	lw	a1, 12(sp)
20013ff8:      	lw	a0, 8(sp)
20013ffa:      	auipc	ra, 0
20013ffe:      	jalr	-262(ra)
20014002:      	sw	a0, 32(sp)
20014004:      	sw	a1, 36(sp)
20014006:      	j	0x20014008 <core::iter::traits::iterator::Iterator::reduce::he0abbd0112be9b30+0x2a>
20014008:      	lw	a0, 36(sp)
2001400a:      	seqz	a1, a0
2001400e:      	li	a1, 0
20014010:      	bne	a0, a1, 0x2001401a <core::iter::traits::iterator::Iterator::reduce::he0abbd0112be9b30+0x3c>
20014014:      	j	0x20014016 <core::iter::traits::iterator::Iterator::reduce::he0abbd0112be9b30+0x38>
20014016:      	j	0x20014038 <core::iter::traits::iterator::Iterator::reduce::he0abbd0112be9b30+0x5a>
20014018:      	unimp	
2001401a:      	lw	a2, 32(sp)
2001401c:      	lw	a3, 36(sp)
2001401e:      	sw	a2, 56(sp)
20014020:      	sw	a3, 60(sp)
20014022:      	sw	a2, 64(sp)
20014024:      	sw	a3, 68(sp)
20014026:      	lw	a0, 16(sp)
20014028:      	lw	a1, 20(sp)
2001402a:      	auipc	ra, 0
2001402e:      	jalr	-236(ra)
20014032:      	sw	a0, 0(sp)
20014034:      	sw	a1, 4(sp)
20014036:      	j	0x20014054 <core::iter::traits::iterator::Iterator::reduce::he0abbd0112be9b30+0x76>
20014038:      	auipc	ra, 0
2001403c:      	jalr	-274(ra)
20014040:      	sw	a0, 24(sp)
20014042:      	sw	a1, 28(sp)
20014044:      	j	0x20014046 <core::iter::traits::iterator::Iterator::reduce::he0abbd0112be9b30+0x68>
20014046:      	j	0x20014048 <core::iter::traits::iterator::Iterator::reduce::he0abbd0112be9b30+0x6a>
20014048:      	j	0x2001404a <core::iter::traits::iterator::Iterator::reduce::he0abbd0112be9b30+0x6c>
2001404a:      	lw	a0, 24(sp)
2001404c:      	lw	a1, 28(sp)
2001404e:      	lw	ra, 76(sp)
20014050:      	addi	sp, sp, 80
20014052:      	ret
20014054:      	lw	a0, 4(sp)
20014056:      	lw	a1, 0(sp)
20014058:      	sw	a1, 24(sp)
2001405a:      	sw	a0, 28(sp)
2001405c:      	j	0x2001404a <core::iter::traits::iterator::Iterator::reduce::he0abbd0112be9b30+0x6c>

2001405e <core::iter::adapters::map::Map<I,F>::new::h7f7082e984490f54>:
2001405e:      	addi	sp, sp, -32
20014060:      	sw	a0, 16(sp)
20014062:      	sw	a1, 20(sp)
20014064:      	sw	a0, 8(sp)
20014066:      	sw	a1, 12(sp)
20014068:      	addi	sp, sp, 32
2001406a:      	ret

2001406c <core::iter::adapters::map::map_fold::h2349d99d16b72ff2>:
2001406c:      	addi	sp, sp, -32
2001406e:      	addi	sp, sp, 32
20014070:      	ret

20014072 <core::iter::adapters::map::map_fold::{{closure}}::hf98fb3c7f42cddd9>:
20014072:      	addi	sp, sp, -80
20014074:      	sw	ra, 76(sp)
20014076:      	sw	a3, 20(sp)
20014078:      	sw	a2, 16(sp)
2001407a:      	mv	a3, a1
2001407c:      	lw	a1, 20(sp)
2001407e:      	sw	a3, 24(sp)
20014080:      	sw	a0, 60(sp)
20014082:      	sw	a3, 64(sp)
20014084:      	sw	a2, 68(sp)
20014086:      	sw	a1, 72(sp)
20014088:      	mv	a2, a0
2001408a:      	sw	a2, 28(sp)
2001408c:      	sw	a1, 56(sp)
2001408e:      	auipc	ra, 0
20014092:      	jalr	-836(ra)
20014096:      	sw	a0, 32(sp)
20014098:      	sw	a1, 36(sp)
2001409a:      	j	0x2001409c <core::iter::adapters::map::map_fold::{{closure}}::hf98fb3c7f42cddd9+0x2a>
2001409c:      	lw	a4, 36(sp)
2001409e:      	lw	a3, 32(sp)
200140a0:      	lw	a2, 16(sp)
200140a2:      	lw	a1, 24(sp)
200140a4:      	lw	a0, 28(sp)
200140a6:      	sw	a1, 40(sp)
200140a8:      	sw	a2, 44(sp)
200140aa:      	sw	a3, 48(sp)
200140ac:      	sw	a4, 52(sp)
200140ae:      	auipc	ra, 0
200140b2:      	jalr	-792(ra)
200140b6:      	sw	a0, 8(sp)
200140b8:      	sw	a1, 12(sp)
200140ba:      	j	0x200140bc <core::iter::adapters::map::map_fold::{{closure}}::hf98fb3c7f42cddd9+0x4a>
200140bc:      	lw	a1, 12(sp)
200140be:      	lw	a0, 8(sp)
200140c0:      	lw	ra, 76(sp)
200140c2:      	addi	sp, sp, 80
200140c4:      	ret

200140c6 <core::ops::function::FnMut::call_mut::h2f0cb1417897940b>:
200140c6:      	addi	sp, sp, -32
200140c8:      	sw	ra, 28(sp)
200140ca:      	sw	a2, 4(sp)
200140cc:      	mv	a2, a1
200140ce:      	lw	a1, 4(sp)
200140d0:      	sw	a2, 8(sp)
200140d2:      	mv	a2, a0
200140d4:      	lw	a0, 8(sp)
200140d6:      	sw	a0, 16(sp)
200140d8:      	sw	a1, 20(sp)
200140da:      	sw	a2, 24(sp)
200140dc:      	auipc	ra, 0
200140e0:      	jalr	-876(ra)
200140e4:      	sw	a0, 12(sp)
200140e6:      	j	0x200140e8 <core::ops::function::FnMut::call_mut::h2f0cb1417897940b+0x22>
200140e8:      	lw	a0, 12(sp)
200140ea:      	lw	ra, 28(sp)
200140ec:      	addi	sp, sp, 32
200140ee:      	ret

200140f0 <core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next::h0b9efa9efeeaef4b>:
200140f0:      	addi	sp, sp, -16
200140f2:      	sw	ra, 12(sp)
200140f4:      	sw	a0, 8(sp)
200140f6:      	auipc	ra, 0
200140fa:      	jalr	34(ra)
200140fe:      	sw	a0, 0(sp)
20014100:      	sw	a1, 4(sp)
20014102:      	j	0x20014104 <core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next::h0b9efa9efeeaef4b+0x14>
20014104:      	lw	a1, 4(sp)
20014106:      	lw	a0, 0(sp)
20014108:      	lw	ra, 12(sp)
2001410a:      	addi	sp, sp, 16
2001410c:      	ret

2001410e <<I as core::iter::traits::collect::IntoIterator>::into_iter::h3822aa977b4b9f94>:
2001410e:      	addi	sp, sp, -16
20014110:      	sw	a0, 8(sp)
20014112:      	sw	a1, 12(sp)
20014114:      	addi	sp, sp, 16
20014116:      	ret

20014118 <<core::ops::range::Range<T> as core::iter::range::RangeIteratorImpl>::spec_next::h607d1a41bcd08648>:
20014118:      	addi	sp, sp, -48
2001411a:      	sw	ra, 44(sp)
2001411c:      	sw	a0, 16(sp)
2001411e:      	sw	a0, 36(sp)
20014120:      	addi	a1, a0, 4
20014124:      	auipc	ra, 0
20014128:      	jalr	302(ra)
2001412c:      	sw	a0, 20(sp)
2001412e:      	j	0x20014130 <<core::ops::range::Range<T> as core::iter::range::RangeIteratorImpl>::spec_next::h607d1a41bcd08648+0x18>
20014130:      	lw	a0, 20(sp)
20014132:      	li	a1, 0
20014134:      	bne	a0, a1, 0x20014140 <<core::ops::range::Range<T> as core::iter::range::RangeIteratorImpl>::spec_next::h607d1a41bcd08648+0x28>
20014138:      	j	0x2001413a <<core::ops::range::Range<T> as core::iter::range::RangeIteratorImpl>::spec_next::h607d1a41bcd08648+0x22>
2001413a:      	li	a0, 0
2001413c:      	sw	a0, 24(sp)
2001413e:      	j	0x2001417c <<core::ops::range::Range<T> as core::iter::range::RangeIteratorImpl>::spec_next::h607d1a41bcd08648+0x64>
20014140:      	lw	a0, 16(sp)
20014142:      	auipc	ra, 0
20014146:      	jalr	68(ra)
2001414a:      	sw	a0, 12(sp)
2001414c:      	j	0x2001414e <<core::ops::range::Range<T> as core::iter::range::RangeIteratorImpl>::spec_next::h607d1a41bcd08648+0x36>
2001414e:      	lw	a0, 12(sp)
20014150:      	li	a1, 1
20014152:      	auipc	ra, 0
20014156:      	jalr	62(ra)
2001415a:      	mv	a1, a0
2001415c:      	sw	a1, 8(sp)
2001415e:      	sw	a0, 40(sp)
20014160:      	j	0x20014162 <<core::ops::range::Range<T> as core::iter::range::RangeIteratorImpl>::spec_next::h607d1a41bcd08648+0x4a>
20014162:      	lw	a1, 8(sp)
20014164:      	lw	a0, 16(sp)
20014166:      	auipc	ra, 0
2001416a:      	jalr	66(ra)
2001416e:      	sw	a0, 4(sp)
20014170:      	j	0x20014172 <<core::ops::range::Range<T> as core::iter::range::RangeIteratorImpl>::spec_next::h607d1a41bcd08648+0x5a>
20014172:      	lw	a0, 4(sp)
20014174:      	sw	a0, 28(sp)
20014176:      	li	a0, 1
20014178:      	sw	a0, 24(sp)
2001417a:      	j	0x2001417c <<core::ops::range::Range<T> as core::iter::range::RangeIteratorImpl>::spec_next::h607d1a41bcd08648+0x64>
2001417c:      	lw	a0, 24(sp)
2001417e:      	lw	a1, 28(sp)
20014180:      	lw	ra, 44(sp)
20014182:      	addi	sp, sp, 48
20014184:      	ret

20014186 <core::clone::impls::<impl core::clone::Clone for usize>::clone::h10a97b8bfadce290>:
20014186:      	addi	sp, sp, -16
20014188:      	sw	a0, 12(sp)
2001418a:      	lw	a0, 0(a0)
2001418c:      	addi	sp, sp, 16
2001418e:      	ret

20014190 <<usize as core::iter::range::Step>::forward_unchecked::hce951cf45c8b53b3>:
20014190:      	addi	sp, sp, -32
20014192:      	sw	a0, 12(sp)
20014194:      	sw	a1, 16(sp)
20014196:      	sw	a0, 20(sp)
20014198:      	sw	a1, 24(sp)
2001419a:      	add	a0, a0, a1
2001419c:      	sw	a0, 8(sp)
2001419e:      	sw	a0, 28(sp)
200141a0:      	j	0x200141a2 <<usize as core::iter::range::Step>::forward_unchecked::hce951cf45c8b53b3+0x12>
200141a2:      	lw	a0, 8(sp)
200141a4:      	addi	sp, sp, 32
200141a6:      	ret

200141a8 <core::mem::replace::h81eefbea73df33e5>:
200141a8:      	addi	sp, sp, -32
200141aa:      	sw	ra, 28(sp)
200141ac:      	sw	a1, 4(sp)
200141ae:      	sw	a0, 8(sp)
200141b0:      	sw	a0, 16(sp)
200141b2:      	sw	a1, 20(sp)
200141b4:      	auipc	ra, 0
200141b8:      	jalr	38(ra)
200141bc:      	mv	a1, a0
200141be:      	sw	a1, 12(sp)
200141c0:      	sw	a0, 24(sp)
200141c2:      	j	0x200141c4 <core::mem::replace::h81eefbea73df33e5+0x1c>
200141c4:      	lw	a1, 4(sp)
200141c6:      	lw	a0, 8(sp)
200141c8:      	auipc	ra, 0
200141cc:      	jalr	56(ra)
200141d0:      	j	0x200141d2 <core::mem::replace::h81eefbea73df33e5+0x2a>
200141d2:      	lw	a0, 12(sp)
200141d4:      	lw	ra, 28(sp)
200141d6:      	addi	sp, sp, 32
200141d8:      	ret

200141da <core::ptr::read::hc1be6849642d2b8c>:
200141da:      	addi	sp, sp, -32
200141dc:      	sw	a0, 4(sp)
200141de:      	sw	a0, 12(sp)
200141e0:      	lw	a0, 24(sp)
200141e2:      	sw	a0, 8(sp)
200141e4:      	j	0x200141e6 <core::ptr::read::hc1be6849642d2b8c+0xc>
200141e6:      	addi	a0, sp, 8
200141e8:      	sw	a0, 16(sp)
200141ea:      	j	0x200141ec <core::ptr::read::hc1be6849642d2b8c+0x12>
200141ec:      	lw	a0, 4(sp)
200141ee:      	lw	a0, 0(a0)
200141f0:      	sw	a0, 0(sp)
200141f2:      	sw	a0, 8(sp)
200141f4:      	sw	a0, 20(sp)
200141f6:      	sw	a0, 28(sp)
200141f8:      	j	0x200141fa <core::ptr::read::hc1be6849642d2b8c+0x20>
200141fa:      	lw	a0, 0(sp)
200141fc:      	addi	sp, sp, 32
200141fe:      	ret

20014200 <core::ptr::write::h84295526b1a37da8>:
20014200:      	addi	sp, sp, -16
20014202:      	sw	a1, 8(sp)
20014204:      	sw	a0, 12(sp)
20014206:      	sw	a1, 0(a0)
20014208:      	addi	sp, sp, 16
2001420a:      	ret

2001420c <core::cmp::impls::<impl core::cmp::Ord for usize>::cmp::h41a2cc83c81630f5>:
2001420c:      	addi	sp, sp, -32
2001420e:      	sw	a1, 12(sp)
20014210:      	sw	a0, 16(sp)
20014212:      	sw	a0, 24(sp)
20014214:      	sw	a1, 28(sp)
20014216:      	lw	a0, 0(a0)
20014218:      	lw	a1, 0(a1)
2001421a:      	bltu	a0, a1, 0x2001422e <core::cmp::impls::<impl core::cmp::Ord for usize>::cmp::h41a2cc83c81630f5+0x22>
2001421e:      	j	0x20014220 <core::cmp::impls::<impl core::cmp::Ord for usize>::cmp::h41a2cc83c81630f5+0x14>
20014220:      	lw	a1, 12(sp)
20014222:      	lw	a0, 16(sp)
20014224:      	lw	a0, 0(a0)
20014226:      	lw	a1, 0(a1)
20014228:      	beq	a0, a1, 0x20014248 <core::cmp::impls::<impl core::cmp::Ord for usize>::cmp::h41a2cc83c81630f5+0x3c>
2001422c:      	j	0x20014240 <core::cmp::impls::<impl core::cmp::Ord for usize>::cmp::h41a2cc83c81630f5+0x34>
2001422e:      	li	a0, 255
20014232:      	sb	a0, 23(sp)
20014236:      	j	0x20014238 <core::cmp::impls::<impl core::cmp::Ord for usize>::cmp::h41a2cc83c81630f5+0x2c>
20014238:      	lb	a0, 23(sp)
2001423c:      	addi	sp, sp, 32
2001423e:      	ret
20014240:      	li	a0, 1
20014242:      	sb	a0, 23(sp)
20014246:      	j	0x20014250 <core::cmp::impls::<impl core::cmp::Ord for usize>::cmp::h41a2cc83c81630f5+0x44>
20014248:      	li	a0, 0
2001424a:      	sb	a0, 23(sp)
2001424e:      	j	0x20014250 <core::cmp::impls::<impl core::cmp::Ord for usize>::cmp::h41a2cc83c81630f5+0x44>
20014250:      	j	0x20014238 <core::cmp::impls::<impl core::cmp::Ord for usize>::cmp::h41a2cc83c81630f5+0x2c>

20014252 <core::cmp::impls::<impl core::cmp::PartialOrd for usize>::lt::hed793dfcccd799f3>:
20014252:      	addi	sp, sp, -16
20014254:      	sw	a0, 8(sp)
20014256:      	sw	a1, 12(sp)
20014258:      	lw	a0, 0(a0)
2001425a:      	lw	a1, 0(a1)
2001425c:      	sltu	a0, a0, a1
20014260:      	addi	sp, sp, 16
20014262:      	ret

20014264 <core::ptr::drop_in_place<&core::iter::adapters::copied::Copied<core::slice::iter::Iter<u8>>>::hba75f9e64379e0d0>:
20014264:      	ret

20014266 <<T as core::any::Any>::type_id::h6d5fadc9889de291>:
20014266:      	lui	a0, 337864
2001426a:      	addi	a0, a0, 854
2001426e:      	lui	a1, 536935
20014272:      	addi	a1, a1, 1137
20014276:      	ret

20014278 <core::panicking::panic::hbbfd5969b5c86e6f>:
20014278:      	addi	sp, sp, -48
2001427a:      	sw	ra, 44(sp)
2001427c:      	sw	a0, 32(sp)
2001427e:      	sw	a1, 36(sp)
20014280:      	addi	a0, sp, 32
20014282:      	sw	a0, 8(sp)
20014284:      	li	a0, 1
20014286:      	sw	a0, 12(sp)
20014288:      	sw	zero, 16(sp)
2001428a:      	lui	a0, 131094
2001428e:      	addi	a0, a0, -1668
20014292:      	sw	a0, 24(sp)
20014294:      	sw	zero, 28(sp)
20014296:      	addi	a0, sp, 8
20014298:      	mv	a1, a2
2001429a:      	auipc	ra, 0
2001429e:      	jalr	74(ra)
200142a2:      	unimp	

200142a4 <core::panicking::panic_bounds_check::h9db9f62c2a7a3e0f>:
200142a4:      	addi	sp, sp, -64
200142a6:      	sw	ra, 60(sp)
200142a8:      	sw	a0, 8(sp)
200142aa:      	sw	a1, 12(sp)
200142ac:      	addi	a0, sp, 12
200142ae:      	sw	a0, 40(sp)
200142b0:      	lui	a0, 131093
200142b4:      	addi	a0, a0, -1846
200142b8:      	sw	a0, 44(sp)
200142ba:      	addi	a1, sp, 8
200142bc:      	sw	a1, 48(sp)
200142be:      	sw	a0, 52(sp)
200142c0:      	lui	a0, 131094
200142c4:      	addi	a0, a0, -1648
200142c8:      	sw	a0, 16(sp)
200142ca:      	li	a0, 2
200142cc:      	sw	a0, 20(sp)
200142ce:      	sw	zero, 24(sp)
200142d0:      	addi	a1, sp, 40
200142d2:      	sw	a1, 32(sp)
200142d4:      	sw	a0, 36(sp)
200142d6:      	addi	a0, sp, 16
200142d8:      	mv	a1, a2
200142da:      	auipc	ra, 0
200142de:      	jalr	10(ra)
200142e2:      	unimp	

200142e4 <core::panicking::panic_fmt::h62c187abafa44ea5>:
200142e4:      	addi	sp, sp, -32
200142e6:      	sw	ra, 28(sp)
200142e8:      	lui	a2, 131094
200142ec:      	addi	a2, a2, -1668
200142f0:      	sw	a2, 8(sp)
200142f2:      	lui	a2, 131094
200142f6:      	addi	a2, a2, -1632
200142fa:      	sw	a2, 12(sp)
200142fc:      	sw	a0, 16(sp)
200142fe:      	sw	a1, 20(sp)
20014300:      	li	a0, 1
20014302:      	sb	a0, 24(sp)
20014306:      	addi	a0, sp, 8
20014308:      	auipc	ra, 1048573
2001430c:      	jalr	-516(ra)
20014310:      	unimp	

20014312 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e>:
20014312:      	addi	sp, sp, -48
20014314:      	sw	ra, 44(sp)
20014316:      	sw	s0, 40(sp)
20014318:      	sw	s1, 36(sp)
2001431a:      	sw	s2, 32(sp)
2001431c:      	sw	s3, 28(sp)
2001431e:      	sw	s4, 24(sp)
20014320:      	sw	s5, 20(sp)
20014322:      	sw	s6, 16(sp)
20014324:      	sw	s7, 12(sp)
20014326:      	sw	s8, 8(sp)
20014328:      	sw	s9, 4(sp)
2001432a:      	sw	s10, 0(sp)
2001432c:      	mv	s3, a5
2001432e:      	mv	s2, a4
20014330:      	mv	s6, a3
20014332:      	mv	s5, a2
20014334:      	mv	s8, a0
20014336:      	beqz	a1, 0x20014382 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x70>
20014338:      	lw	a0, 0(s8)
2001433c:      	andi	a1, a0, 1
20014340:      	lui	s4, 272
20014344:      	beqz	a1, 0x2001434a <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x38>
20014346:      	li	s4, 43
2001434a:      	add	s0, a1, s3
2001434e:      	andi	a0, a0, 4
20014350:      	beqz	a0, 0x20014392 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x80>
20014352:      	li	a0, 16
20014354:      	bgeu	s6, a0, 0x2001439c <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x8a>
20014358:      	li	a0, 0
2001435a:      	beqz	s6, 0x20014376 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x64>
2001435e:      	li	a1, -65
20014362:      	mv	a2, s6
20014364:      	mv	a3, s5
20014366:      	lb	a4, 0(a3)
2001436a:      	addi	a3, a3, 1
2001436c:      	slt	a4, a1, a4
20014370:      	addi	a2, a2, -1
20014372:      	add	a0, a0, a4
20014374:      	bnez	a2, 0x20014366 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x54>
20014376:      	add	s0, s0, a0
20014378:      	mv	s7, s5
2001437a:      	lw	a0, 8(s8)
2001437e:      	bnez	a0, 0x200143b2 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0xa0>
20014380:      	j	0x200143e4 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0xd2>
20014382:      	lw	a0, 0(s8)
20014386:      	addi	s0, s3, 1
2001438a:      	li	s4, 45
2001438e:      	andi	a0, a0, 4
20014390:      	bnez	a0, 0x20014352 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x40>
20014392:      	li	s7, 0
20014394:      	lw	a0, 8(s8)
20014398:      	bnez	a0, 0x200143b2 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0xa0>
2001439a:      	j	0x200143e4 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0xd2>
2001439c:      	mv	a0, s5
2001439e:      	mv	a1, s6
200143a0:      	auipc	ra, 0
200143a4:      	jalr	568(ra)
200143a8:      	add	s0, s0, a0
200143aa:      	mv	s7, s5
200143ac:      	lw	a0, 8(s8)
200143b0:      	beqz	a0, 0x200143e4 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0xd2>
200143b2:      	lw	s1, 12(s8)
200143b6:      	bgeu	s0, s1, 0x200143e4 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0xd2>
200143ba:      	lbu	a0, 0(s8)
200143be:      	andi	a0, a0, 8
200143c0:      	bnez	a0, 0x20014424 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x112>
200143c2:      	lbu	a1, 32(s8)
200143c6:      	li	a2, 3
200143c8:      	li	a0, 1
200143ca:      	beq	a1, a2, 0x200143d0 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0xbe>
200143ce:      	mv	a0, a1
200143d0:      	andi	a1, a0, 3
200143d4:      	sub	a0, s1, s0
200143d8:      	beqz	a1, 0x2001446e <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x15c>
200143da:      	li	a2, 1
200143dc:      	bne	a1, a2, 0x20014474 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x162>
200143e0:      	li	s9, 0
200143e2:      	j	0x2001447e <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x16c>
200143e4:      	mv	a0, s8
200143e6:      	mv	a1, s4
200143e8:      	mv	a2, s7
200143ea:      	mv	a3, s6
200143ec:      	auipc	ra, 0
200143f0:      	jalr	416(ra)
200143f4:      	li	s5, 1
200143f6:      	bnez	a0, 0x2001451c <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x20a>
200143fa:      	lw	a1, 28(s8)
200143fe:      	lw	a0, 24(s8)
20014402:      	lw	a5, 12(a1)
20014404:      	mv	a1, s2
20014406:      	mv	a2, s3
20014408:      	lw	ra, 44(sp)
2001440a:      	lw	s0, 40(sp)
2001440c:      	lw	s1, 36(sp)
2001440e:      	lw	s2, 32(sp)
20014410:      	lw	s3, 28(sp)
20014412:      	lw	s4, 24(sp)
20014414:      	lw	s5, 20(sp)
20014416:      	lw	s6, 16(sp)
20014418:      	lw	s7, 12(sp)
2001441a:      	lw	s8, 8(sp)
2001441c:      	lw	s9, 4(sp)
2001441e:      	lw	s10, 0(sp)
20014420:      	addi	sp, sp, 48
20014422:      	jr	a5
20014424:      	lw	s9, 4(s8)
20014428:      	li	a0, 48
2001442c:      	lbu	s10, 32(s8)
20014430:      	sw	a0, 4(s8)
20014434:      	li	s5, 1
20014436:      	sb	s5, 32(s8)
2001443a:      	mv	a0, s8
2001443c:      	mv	a1, s4
2001443e:      	mv	a2, s7
20014440:      	mv	a3, s6
20014442:      	auipc	ra, 0
20014446:      	jalr	330(ra)
2001444a:      	bnez	a0, 0x2001451c <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x20a>
2001444c:      	lbu	a1, 32(s8)
20014450:      	li	a2, 3
20014452:      	li	a0, 1
20014454:      	beq	a1, a2, 0x2001445a <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x148>
20014458:      	mv	a0, a1
2001445a:      	andi	a1, a0, 3
2001445e:      	sub	a0, s1, s0
20014462:      	beqz	a1, 0x200144ec <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x1da>
20014464:      	li	a2, 1
20014466:      	bne	a1, a2, 0x200144f2 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x1e0>
2001446a:      	li	s4, 0
2001446c:      	j	0x200144fc <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x1ea>
2001446e:      	mv	s9, a0
20014470:      	li	a0, 0
20014472:      	j	0x2001447e <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x16c>
20014474:      	addi	a1, a0, 1
20014478:      	srli	a0, a0, 1
2001447a:      	srli	s9, a1, 1
2001447e:      	lw	s5, 24(s8)
20014482:      	lw	s1, 28(s8)
20014486:      	lw	s10, 4(s8)
2001448a:      	addi	s0, a0, 1
2001448e:      	addi	s0, s0, -1
20014490:      	beqz	s0, 0x2001449e <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x18c>
20014492:      	lw	a2, 16(s1)
20014494:      	mv	a0, s5
20014496:      	mv	a1, s10
20014498:      	jalr	a2
2001449a:      	beqz	a0, 0x2001448e <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x17c>
2001449c:      	j	0x2001451a <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x208>
2001449e:      	lui	a0, 272
200144a2:      	li	s5, 1
200144a4:      	beq	s10, a0, 0x2001451c <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x20a>
200144a8:      	mv	a0, s8
200144aa:      	mv	a1, s4
200144ac:      	mv	a2, s7
200144ae:      	mv	a3, s6
200144b0:      	auipc	ra, 0
200144b4:      	jalr	220(ra)
200144b8:      	bnez	a0, 0x2001451c <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x20a>
200144ba:      	lw	a1, 28(s8)
200144be:      	lw	a0, 24(s8)
200144c2:      	lw	a3, 12(a1)
200144c4:      	mv	a1, s2
200144c6:      	mv	a2, s3
200144c8:      	jalr	a3
200144ca:      	bnez	a0, 0x2001451c <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x20a>
200144cc:      	lw	s2, 24(s8)
200144d0:      	lw	s1, 28(s8)
200144d4:      	li	s0, 0
200144d6:      	beq	s9, s0, 0x20014584 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x272>
200144da:      	lw	a2, 16(s1)
200144dc:      	addi	s0, s0, 1
200144de:      	mv	a0, s2
200144e0:      	mv	a1, s10
200144e2:      	jalr	a2
200144e4:      	beqz	a0, 0x200144d6 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x1c4>
200144e6:      	addi	a0, s0, -1
200144ea:      	j	0x20014586 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x274>
200144ec:      	mv	s4, a0
200144ee:      	li	a0, 0
200144f0:      	j	0x200144fc <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x1ea>
200144f2:      	addi	a1, a0, 1
200144f6:      	srli	a0, a0, 1
200144f8:      	srli	s4, a1, 1
200144fc:      	lw	s5, 24(s8)
20014500:      	lw	s1, 28(s8)
20014504:      	lw	s6, 4(s8)
20014508:      	addi	s0, a0, 1
2001450c:      	addi	s0, s0, -1
2001450e:      	beqz	s0, 0x2001453a <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x228>
20014510:      	lw	a2, 16(s1)
20014512:      	mv	a0, s5
20014514:      	mv	a1, s6
20014516:      	jalr	a2
20014518:      	beqz	a0, 0x2001450c <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x1fa>
2001451a:      	li	s5, 1
2001451c:      	mv	a0, s5
2001451e:      	lw	ra, 44(sp)
20014520:      	lw	s0, 40(sp)
20014522:      	lw	s1, 36(sp)
20014524:      	lw	s2, 32(sp)
20014526:      	lw	s3, 28(sp)
20014528:      	lw	s4, 24(sp)
2001452a:      	lw	s5, 20(sp)
2001452c:      	lw	s6, 16(sp)
2001452e:      	lw	s7, 12(sp)
20014530:      	lw	s8, 8(sp)
20014532:      	lw	s9, 4(sp)
20014534:      	lw	s10, 0(sp)
20014536:      	addi	sp, sp, 48
20014538:      	ret
2001453a:      	lui	a0, 272
2001453e:      	li	s5, 1
20014540:      	beq	s6, a0, 0x2001451c <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x20a>
20014544:      	lw	a1, 28(s8)
20014548:      	lw	a0, 24(s8)
2001454c:      	lw	a3, 12(a1)
2001454e:      	mv	a1, s2
20014550:      	mv	a2, s3
20014552:      	jalr	a3
20014554:      	bnez	a0, 0x2001451c <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x20a>
20014556:      	lw	s2, 24(s8)
2001455a:      	lw	s1, 28(s8)
2001455e:      	li	s0, 0
20014560:      	beq	s4, s0, 0x20014578 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x266>
20014564:      	lw	a2, 16(s1)
20014566:      	addi	s0, s0, 1
20014568:      	mv	a0, s2
2001456a:      	mv	a1, s6
2001456c:      	jalr	a2
2001456e:      	beqz	a0, 0x20014560 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x24e>
20014570:      	addi	a0, s0, -1
20014574:      	bltu	a0, s4, 0x2001451c <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x20a>
20014578:      	li	s5, 0
2001457a:      	sw	s9, 4(s8)
2001457e:      	sb	s10, 32(s8)
20014582:      	j	0x2001451c <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x20a>
20014584:      	mv	a0, s9
20014586:      	sltu	s5, a0, s9
2001458a:      	j	0x2001451c <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x20a>

2001458c <core::fmt::Formatter::pad_integral::write_prefix::h9c2d4994c87ce818>:
2001458c:      	addi	sp, sp, -16
2001458e:      	sw	ra, 12(sp)
20014590:      	sw	s0, 8(sp)
20014592:      	sw	s1, 4(sp)
20014594:      	sw	s2, 0(sp)
20014596:      	lui	a4, 272
2001459a:      	mv	s2, a3
2001459c:      	mv	s1, a2
2001459e:      	mv	s0, a0
200145a0:      	beq	a1, a4, 0x200145b2 <core::fmt::Formatter::pad_integral::write_prefix::h9c2d4994c87ce818+0x26>
200145a4:      	lw	a2, 28(s0)
200145a6:      	lw	a0, 24(s0)
200145a8:      	lw	a2, 16(a2)
200145aa:      	jalr	a2
200145ac:      	mv	a1, a0
200145ae:      	li	a0, 1
200145b0:      	bnez	a1, 0x200145cc <core::fmt::Formatter::pad_integral::write_prefix::h9c2d4994c87ce818+0x40>
200145b2:      	beqz	s1, 0x200145ca <core::fmt::Formatter::pad_integral::write_prefix::h9c2d4994c87ce818+0x3e>
200145b4:      	lw	a1, 28(s0)
200145b6:      	lw	a0, 24(s0)
200145b8:      	lw	a5, 12(a1)
200145ba:      	mv	a1, s1
200145bc:      	mv	a2, s2
200145be:      	lw	ra, 12(sp)
200145c0:      	lw	s0, 8(sp)
200145c2:      	lw	s1, 4(sp)
200145c4:      	lw	s2, 0(sp)
200145c6:      	addi	sp, sp, 16
200145c8:      	jr	a5
200145ca:      	li	a0, 0
200145cc:      	lw	ra, 12(sp)
200145ce:      	lw	s0, 8(sp)
200145d0:      	lw	s1, 4(sp)
200145d2:      	lw	s2, 0(sp)
200145d4:      	addi	sp, sp, 16
200145d6:      	ret

200145d8 <core::str::count::do_count_chars::hcb0097adeed44bbf>:
200145d8:      	mv	a2, a0
200145da:      	addi	a0, a0, 3
200145dc:      	andi	a0, a0, -4
200145de:      	sub	a7, a0, a2
200145e2:      	bltu	a1, a7, 0x200145f8 <core::str::count::do_count_chars::hcb0097adeed44bbf+0x20>
200145e6:      	sub	a6, a1, a7
200145ea:      	sltiu	a3, a6, 4
200145ee:      	li	a4, 4
200145f0:      	sltu	a4, a4, a7
200145f4:      	or	a3, a3, a4
200145f6:      	beqz	a3, 0x20014612 <core::str::count::do_count_chars::hcb0097adeed44bbf+0x3a>
200145f8:      	li	a0, 0
200145fa:      	beqz	a1, 0x20014610 <core::str::count::do_count_chars::hcb0097adeed44bbf+0x38>
200145fc:      	li	a3, -65
20014600:      	lb	a4, 0(a2)
20014604:      	addi	a2, a2, 1
20014606:      	slt	a4, a3, a4
2001460a:      	addi	a1, a1, -1
2001460c:      	add	a0, a0, a4
2001460e:      	bnez	a1, 0x20014600 <core::str::count::do_count_chars::hcb0097adeed44bbf+0x28>
20014610:      	ret
20014612:      	andi	a4, a6, 3
20014616:      	li	a3, 0
20014618:      	beqz	a7, 0x20014636 <core::str::count::do_count_chars::hcb0097adeed44bbf+0x5e>
2001461c:      	sub	a0, a2, a0
20014620:      	li	t0, -65
20014624:      	mv	a5, a2
20014626:      	lb	a1, 0(a5)
2001462a:      	addi	a5, a5, 1
2001462c:      	slt	a1, t0, a1
20014630:      	addi	a0, a0, 1
20014632:      	add	a3, a3, a1
20014634:      	bnez	a0, 0x20014626 <core::str::count::do_count_chars::hcb0097adeed44bbf+0x4e>
20014636:      	add	t0, a2, a7
2001463a:      	li	a1, 0
2001463c:      	beqz	a4, 0x2001465a <core::str::count::do_count_chars::hcb0097adeed44bbf+0x82>
2001463e:      	andi	a0, a6, -4
20014642:      	add	a2, t0, a0
20014646:      	li	a0, -65
2001464a:      	lb	a5, 0(a2)
2001464e:      	addi	a2, a2, 1
20014650:      	slt	a5, a0, a5
20014654:      	addi	a4, a4, -1
20014656:      	add	a1, a1, a5
20014658:      	bnez	a4, 0x2001464a <core::str::count::do_count_chars::hcb0097adeed44bbf+0x72>
2001465a:      	srli	a2, a6, 2
2001465e:      	lui	a0, 4112
20014662:      	addi	t4, a0, 257
20014666:      	lui	a0, 4080
2001466a:      	addi	a7, a0, 255
2001466e:      	lui	a0, 16
20014670:      	addi	a6, a0, 1
20014674:      	add	a0, a1, a3
20014678:      	j	0x200146a0 <core::str::count::do_count_chars::hcb0097adeed44bbf+0xc8>
2001467a:      	slli	a1, t2, 2
2001467e:      	add	t0, t0, a1
20014680:      	sub	a2, t1, t2
20014684:      	andi	a1, t2, 3
20014688:      	and	a3, a5, a7
2001468c:      	srli	a4, a5, 8
20014690:      	and	a4, a4, a7
20014694:      	add	a3, a3, a4
20014696:      	mul	a3, a3, a6
2001469a:      	srli	a3, a3, 16
2001469c:      	add	a0, a0, a3
2001469e:      	bnez	a1, 0x20014718 <core::str::count::do_count_chars::hcb0097adeed44bbf+0x140>
200146a0:      	beqz	a2, 0x20014610 <core::str::count::do_count_chars::hcb0097adeed44bbf+0x38>
200146a2:      	mv	t1, a2
200146a4:      	li	a1, 192
200146a8:      	mv	t2, a2
200146aa:      	bltu	a2, a1, 0x200146b2 <core::str::count::do_count_chars::hcb0097adeed44bbf+0xda>
200146ae:      	li	t2, 192
200146b2:      	andi	a1, t2, 252
200146b6:      	slli	a1, a1, 2
200146b8:      	add	t3, t0, a1
200146bc:      	li	a5, 0
200146be:      	beqz	a1, 0x2001467a <core::str::count::do_count_chars::hcb0097adeed44bbf+0xa2>
200146c0:      	mv	a1, t0
200146c2:      	lw	a2, 0(a1)
200146c4:      	not	a3, a2
200146c8:      	srli	a3, a3, 7
200146ca:      	srli	a2, a2, 6
200146cc:      	lw	a4, 4(a1)
200146ce:      	or	a2, a2, a3
200146d0:      	and	a2, a2, t4
200146d4:      	add	a2, a2, a5
200146d6:      	not	a3, a4
200146da:      	srli	a3, a3, 7
200146dc:      	srli	a4, a4, 6
200146de:      	lw	a5, 8(a1)
200146e0:      	or	a3, a3, a4
200146e2:      	and	a3, a3, t4
200146e6:      	add	a2, a2, a3
200146e8:      	not	a3, a5
200146ec:      	srli	a3, a3, 7
200146ee:      	srli	a4, a5, 6
200146f2:      	lw	a5, 12(a1)
200146f4:      	or	a3, a3, a4
200146f6:      	and	a3, a3, t4
200146fa:      	add	a2, a2, a3
200146fc:      	not	a3, a5
20014700:      	srli	a3, a3, 7
20014702:      	srli	a4, a5, 6
20014706:      	or	a3, a3, a4
20014708:      	and	a3, a3, t4
2001470c:      	addi	a1, a1, 16
2001470e:      	add	a5, a3, a2
20014712:      	bne	a1, t3, 0x200146c2 <core::str::count::do_count_chars::hcb0097adeed44bbf+0xea>
20014716:      	j	0x2001467a <core::str::count::do_count_chars::hcb0097adeed44bbf+0xa2>
20014718:      	li	a1, 192
2001471c:      	bltu	t1, a1, 0x20014724 <core::str::count::do_count_chars::hcb0097adeed44bbf+0x14c>
20014720:      	li	t1, 192
20014724:      	li	a1, 0
20014726:      	andi	a2, t1, 3
2001472a:      	slli	a2, a2, 2
2001472c:      	lw	a3, 0(t3)
20014730:      	addi	t3, t3, 4
20014732:      	not	a4, a3
20014736:      	srli	a4, a4, 7
20014738:      	srli	a3, a3, 6
2001473a:      	or	a3, a3, a4
2001473c:      	and	a3, a3, t4
20014740:      	addi	a2, a2, -4
20014742:      	add	a1, a1, a3
20014744:      	bnez	a2, 0x2001472c <core::str::count::do_count_chars::hcb0097adeed44bbf+0x154>
20014746:      	and	a2, a1, a7
2001474a:      	srli	a1, a1, 8
2001474c:      	and	a1, a1, a7
20014750:      	add	a1, a1, a2
20014752:      	mul	a1, a1, a6
20014756:      	srli	a1, a1, 16
20014758:      	add	a0, a0, a1
2001475a:      	ret

2001475c <core::fmt::num::imp::fmt_u32::h89559eb00af7d566>:
2001475c:      	addi	sp, sp, -64
2001475e:      	sw	ra, 60(sp)
20014760:      	sw	s0, 56(sp)
20014762:      	sw	s1, 52(sp)
20014764:      	mv	a6, a2
20014766:      	srli	a3, a0, 4
2001476a:      	li	a4, 625
2001476e:      	li	a2, 39
20014772:      	bgeu	a3, a4, 0x20014796 <core::fmt::num::imp::fmt_u32::h89559eb00af7d566+0x3a>
20014776:      	li	a3, 99
2001477a:      	bltu	a3, a0, 0x2001482e <core::fmt::num::imp::fmt_u32::h89559eb00af7d566+0xd2>
2001477e:      	li	a3, 10
20014780:      	bgeu	a0, a3, 0x20014878 <core::fmt::num::imp::fmt_u32::h89559eb00af7d566+0x11c>
20014784:      	addi	a2, a2, -1
20014786:      	addi	a3, sp, 13
2001478a:      	add	a3, a3, a2
2001478c:      	addi	a0, a0, 48
20014790:      	sb	a0, 0(a3)
20014794:      	j	0x2001489c <core::fmt::num::imp::fmt_u32::h89559eb00af7d566+0x140>
20014796:      	li	a2, 0
20014798:      	lui	a3, 858993
2001479c:      	addi	t0, a3, 1881
200147a0:      	lui	a3, 2
200147a2:      	addi	t2, a3, 1808
200147a6:      	lui	a3, 1
200147a8:      	addi	t3, a3, 1147
200147ac:      	li	a7, 100
200147b0:      	lui	a4, 131094
200147b4:      	addi	t5, a4, -1616
200147b8:      	addi	t1, sp, 13
200147bc:      	lui	a5, 24414
200147c0:      	addi	t4, a5, 255
200147c4:      	mv	a3, a0
200147c6:      	mulhu	a0, a0, t0
200147ca:      	srli	a0, a0, 13
200147cc:      	mul	a5, a0, t2
200147d0:      	sub	a5, a3, a5
200147d4:      	slli	a4, a5, 16
200147d8:      	srli	a4, a4, 18
200147da:      	mul	a4, a4, t3
200147de:      	srli	a4, a4, 17
200147e0:      	slli	t6, a4, 1
200147e4:      	mul	a4, a4, a7
200147e8:      	sub	a4, a5, a4
200147ec:      	slli	a4, a4, 17
200147ee:      	srli	s0, a4, 16
200147f2:      	add	a5, t6, t5
200147f6:      	add	a4, t1, a2
200147fa:      	lbu	t6, 0(a5)
200147fe:      	lb	a5, 1(a5)
20014802:      	add	s0, s0, t5
20014804:      	lb	s1, 1(s0)
20014808:      	lbu	s0, 0(s0)
2001480c:      	sb	a5, 36(a4)
20014810:      	sb	t6, 35(a4)
20014814:      	sb	s1, 38(a4)
20014818:      	sb	s0, 37(a4)
2001481c:      	addi	a2, a2, -4
2001481e:      	bltu	t4, a3, 0x200147c4 <core::fmt::num::imp::fmt_u32::h89559eb00af7d566+0x68>
20014822:      	addi	a2, a2, 39
20014826:      	li	a3, 99
2001482a:      	bgeu	a3, a0, 0x2001477e <core::fmt::num::imp::fmt_u32::h89559eb00af7d566+0x22>
2001482e:      	slli	a3, a0, 16
20014832:      	srli	a3, a3, 18
20014834:      	lui	a4, 1
20014836:      	addi	a4, a4, 1147
2001483a:      	mul	a3, a3, a4
2001483e:      	srli	a3, a3, 17
20014840:      	li	a4, 100
20014844:      	mul	a4, a3, a4
20014848:      	sub	a0, a0, a4
2001484a:      	slli	a0, a0, 17
2001484c:      	srli	a0, a0, 16
2001484e:      	addi	a2, a2, -2
20014850:      	lui	a4, 131094
20014854:      	addi	a4, a4, -1616
20014858:      	add	a0, a0, a4
2001485a:      	lb	a4, 1(a0)
2001485e:      	lbu	a0, 0(a0)
20014862:      	addi	a5, sp, 13
20014866:      	add	a5, a5, a2
20014868:      	sb	a4, 1(a5)
2001486c:      	sb	a0, 0(a5)
20014870:      	mv	a0, a3
20014872:      	li	a3, 10
20014874:      	bltu	a0, a3, 0x20014784 <core::fmt::num::imp::fmt_u32::h89559eb00af7d566+0x28>
20014878:      	slli	a0, a0, 1
2001487a:      	addi	a2, a2, -2
2001487c:      	lui	a3, 131094
20014880:      	addi	a3, a3, -1616
20014884:      	add	a0, a0, a3
20014886:      	lb	a3, 1(a0)
2001488a:      	lbu	a0, 0(a0)
2001488e:      	addi	a4, sp, 13
20014892:      	add	a4, a4, a2
20014894:      	sb	a3, 1(a4)
20014898:      	sb	a0, 0(a4)
2001489c:      	addi	a0, sp, 13
200148a0:      	add	a4, a0, a2
200148a4:      	li	a0, 39
200148a8:      	sub	a5, a0, a2
200148ac:      	lui	a0, 131094
200148b0:      	addi	a2, a0, -1668
200148b4:      	mv	a0, a6
200148b6:      	li	a3, 0
200148b8:      	auipc	ra, 0
200148bc:      	jalr	-1446(ra)
200148c0:      	lw	ra, 60(sp)
200148c2:      	lw	s0, 56(sp)
200148c4:      	lw	s1, 52(sp)
200148c6:      	addi	sp, sp, 64
200148c8:      	ret

200148ca <core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt::h0f29cfa090d3fc38>:
200148ca:      	lw	a0, 0(a0)
200148cc:      	mv	a2, a1
200148ce:      	li	a1, 1
200148d0:      	auipc	t1, 0
200148d4:      	jr	-372(t1)

200148d8 <memset>:
200148d8:      	auipc	t1, 0
200148dc:      	jr	186(t1)

200148e0 <compiler_builtins::mem::memcpy::h5d3d6687dd26525b>:
200148e0:      	li	a3, 15
200148e2:      	bgeu	a3, a2, 0x2001495a <compiler_builtins::mem::memcpy::h5d3d6687dd26525b+0x7a>
200148e6:      	neg	a3, a0
200148ea:      	andi	a6, a3, 3
200148ee:      	add	t2, a0, a6
200148f2:      	beqz	a6, 0x2001490a <compiler_builtins::mem::memcpy::h5d3d6687dd26525b+0x2a>
200148f6:      	mv	a5, a0
200148f8:      	mv	a3, a1
200148fa:      	lb	a4, 0(a3)
200148fe:      	sb	a4, 0(a5)
20014902:      	addi	a5, a5, 1
20014904:      	addi	a3, a3, 1
20014906:      	bltu	a5, t2, 0x200148fa <compiler_builtins::mem::memcpy::h5d3d6687dd26525b+0x1a>
2001490a:      	add	a7, a1, a6
2001490e:      	sub	a6, a2, a6
20014912:      	andi	t0, a6, -4
20014916:      	andi	a1, a7, 3
2001491a:      	add	a3, t2, t0
2001491e:      	beqz	a1, 0x20014960 <compiler_builtins::mem::memcpy::h5d3d6687dd26525b+0x80>
20014920:      	blez	t0, 0x20014974 <compiler_builtins::mem::memcpy::h5d3d6687dd26525b+0x94>
20014924:      	slli	a1, a7, 3
20014928:      	andi	t1, a1, 24
2001492c:      	andi	a4, a7, -4
20014930:      	lw	a2, 0(a4)
20014932:      	neg	a1, a1
20014936:      	andi	t3, a1, 24
2001493a:      	addi	a5, a4, 4
2001493e:      	lw	a4, 0(a5)
20014940:      	srl	a2, a2, t1
20014944:      	sll	a1, a4, t3
20014948:      	or	a1, a1, a2
2001494a:      	sw	a1, 0(t2)
2001494e:      	addi	t2, t2, 4
20014950:      	addi	a5, a5, 4
20014952:      	mv	a2, a4
20014954:      	bltu	t2, a3, 0x2001493e <compiler_builtins::mem::memcpy::h5d3d6687dd26525b+0x5e>
20014958:      	j	0x20014974 <compiler_builtins::mem::memcpy::h5d3d6687dd26525b+0x94>
2001495a:      	mv	a3, a0
2001495c:      	bnez	a2, 0x2001497e <compiler_builtins::mem::memcpy::h5d3d6687dd26525b+0x9e>
2001495e:      	j	0x20014990 <compiler_builtins::mem::memcpy::h5d3d6687dd26525b+0xb0>
20014960:      	blez	t0, 0x20014974 <compiler_builtins::mem::memcpy::h5d3d6687dd26525b+0x94>
20014964:      	mv	a1, a7
20014966:      	lw	a2, 0(a1)
20014968:      	sw	a2, 0(t2)
2001496c:      	addi	t2, t2, 4
2001496e:      	addi	a1, a1, 4
20014970:      	bltu	t2, a3, 0x20014966 <compiler_builtins::mem::memcpy::h5d3d6687dd26525b+0x86>
20014974:      	add	a1, a7, t0
20014978:      	andi	a2, a6, 3
2001497c:      	beqz	a2, 0x20014990 <compiler_builtins::mem::memcpy::h5d3d6687dd26525b+0xb0>
2001497e:      	add	a2, a2, a3
20014980:      	lb	a4, 0(a1)
20014984:      	sb	a4, 0(a3)
20014988:      	addi	a3, a3, 1
2001498a:      	addi	a1, a1, 1
2001498c:      	bltu	a3, a2, 0x20014980 <compiler_builtins::mem::memcpy::h5d3d6687dd26525b+0xa0>
20014990:      	ret

20014992 <compiler_builtins::mem::memset::h302349b36fde6027>:
20014992:      	li	a3, 15
20014994:      	bgeu	a3, a2, 0x200149dc <compiler_builtins::mem::memset::h302349b36fde6027+0x4a>
20014998:      	neg	a3, a0
2001499c:      	andi	a3, a3, 3
2001499e:      	add	a4, a0, a3
200149a2:      	beqz	a3, 0x200149b0 <compiler_builtins::mem::memset::h302349b36fde6027+0x1e>
200149a4:      	mv	a5, a0
200149a6:      	sb	a1, 0(a5)
200149aa:      	addi	a5, a5, 1
200149ac:      	bltu	a5, a4, 0x200149a6 <compiler_builtins::mem::memset::h302349b36fde6027+0x14>
200149b0:      	sub	a2, a2, a3
200149b2:      	andi	a5, a2, -4
200149b6:      	add	a3, a4, a5
200149ba:      	blez	a5, 0x200149d6 <compiler_builtins::mem::memset::h302349b36fde6027+0x44>
200149be:      	andi	a6, a1, 255
200149c2:      	lui	a5, 4112
200149c6:      	addi	a5, a5, 257
200149ca:      	mul	a5, a6, a5
200149ce:      	sw	a5, 0(a4)
200149d0:      	addi	a4, a4, 4
200149d2:      	bltu	a4, a3, 0x200149ce <compiler_builtins::mem::memset::h302349b36fde6027+0x3c>
200149d6:      	andi	a2, a2, 3
200149d8:      	bnez	a2, 0x200149e0 <compiler_builtins::mem::memset::h302349b36fde6027+0x4e>
200149da:      	j	0x200149ec <compiler_builtins::mem::memset::h302349b36fde6027+0x5a>
200149dc:      	mv	a3, a0
200149de:      	beqz	a2, 0x200149ec <compiler_builtins::mem::memset::h302349b36fde6027+0x5a>
200149e0:      	add	a2, a2, a3
200149e2:      	sb	a1, 0(a3)
200149e6:      	addi	a3, a3, 1
200149e8:      	bltu	a3, a2, 0x200149e2 <compiler_builtins::mem::memset::h302349b36fde6027+0x50>
200149ec:      	ret

200149ee <memcpy>:
200149ee:      	auipc	t1, 0
200149f2:      	jr	-270(t1)

200149f6 <default_setup_interrupts>:
200149f6:      	auipc	t0, 1048571
200149fa:      	addi	t0, t0, 1814

200149fe <.L0 >:
200149fe:      	csrw	mtvec, t0

20014a02 <.L0 >:
20014a02:      	ret

20014a04 <abort>:
20014a04:      	j	0x20014a04 <abort>
