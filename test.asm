
yarr:	file format elf32-littleriscv

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
20010060:      	j	0x2001499c <abort>

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
20010094:      	auipc	ra, 1
20010098:      	jalr	428(ra)
2001009c:      	sw	a0, 12(sp)
2001009e:      	j	0x200100a0 <_start_rust+0x1c>
200100a0:      	lw	a0, 12(sp)
200100a2:      	li	a1, 0
200100a4:      	bne	a0, a1, 0x200100b4 <_start_rust+0x30>
200100a8:      	j	0x200100aa <_start_rust+0x26>
200100aa:      	auipc	ra, 5
200100ae:      	jalr	-1820(ra)
200100b2:      	j	0x200100fa <_start_rust+0x76>
200100b4:      	auipc	ra, 1
200100b8:      	jalr	394(ra)
200100bc:      	j	0x200100be <_start_rust+0x3a>
200100be:      	lui	a0, 524288
200100c2:      	mv	a0, a0
200100c6:      	lui	a1, 524288
200100ca:      	addi	a1, a1, 4
200100ce:      	auipc	ra, 1
200100d2:      	jalr	526(ra)
200100d6:      	j	0x200100d8 <_start_rust+0x54>
200100d8:      	lui	a0, 524288
200100dc:      	mv	a0, a0
200100e0:      	lui	a1, 524288
200100e4:      	mv	a1, a1
200100e8:      	lui	a2, 131094
200100ec:      	addi	a2, a2, -1500
200100f0:      	auipc	ra, 1
200100f4:      	jalr	578(ra)
200100f8:      	j	0x200100aa <_start_rust+0x26>
200100fa:      	lw	a2, 0(sp)
200100fc:      	lw	a1, 4(sp)
200100fe:      	lw	a0, 8(sp)
20010100:      	auipc	ra, 1
20010104:      	jalr	-256(ra)
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
20010164:      	auipc	ra, 1
20010168:      	jalr	264(ra)
2001016c:      	sw	a0, 28(sp)
2001016e:      	j	0x20010170 <_start_trap_rust+0x14>
20010170:      	addi	a0, sp, 28
20010172:      	auipc	ra, 1
20010176:      	jalr	292(ra)
2001017a:      	sw	a0, 20(sp)
2001017c:      	j	0x2001017e <_start_trap_rust+0x22>
2001017e:      	lw	a0, 20(sp)
20010180:      	li	a1, 0
20010182:      	bne	a0, a1, 0x2001019a <_start_trap_rust+0x3e>
20010186:      	j	0x20010188 <_start_trap_rust+0x2c>
20010188:      	addi	a0, sp, 28
2001018a:      	auipc	ra, 1
2001018e:      	jalr	316(ra)
20010192:      	mv	a1, a0
20010194:      	sw	a1, 16(sp)
20010196:      	sw	a0, 36(sp)
20010198:      	j	0x200101ac <_start_trap_rust+0x50>
2001019a:      	lw	a0, 24(sp)
2001019c:      	auipc	ra, 1
200101a0:      	jalr	150(ra)
200101a4:      	j	0x200101a6 <_start_trap_rust+0x4a>
200101a6:      	lw	ra, 44(sp)
200101a8:      	addi	sp, sp, 48
200101aa:      	ret
200101ac:      	lw	a0, 16(sp)
200101ae:      	li	a1, 12
200101b0:      	bltu	a0, a1, 0x200101c0 <_start_trap_rust+0x64>
200101b4:      	j	0x200101b6 <_start_trap_rust+0x5a>
200101b6:      	auipc	ra, 1
200101ba:      	jalr	132(ra)
200101be:      	j	0x200101a6 <_start_trap_rust+0x4a>
200101c0:      	lw	a1, 16(sp)
200101c2:      	li	a0, 11
200101c4:      	bltu	a0, a1, 0x200101e6 <_start_trap_rust+0x8a>
200101c8:      	j	0x200101ca <_start_trap_rust+0x6e>
200101ca:      	lw	a0, 16(sp)
200101cc:      	lui	a1, 131093
200101d0:      	addi	a1, a1, -476
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
200101ec:      	addi	a2, a1, -492
200101f0:      	li	a1, 12
200101f2:      	auipc	ra, 4
200101f6:      	jalr	-1392(ra)
200101fa:      	unimp	
200101fc:      	auipc	ra, 1
20010200:      	jalr	62(ra)
20010204:      	j	0x200101a6 <_start_trap_rust+0x4a>
20010206:      	lw	a0, 12(sp)
20010208:      	lw	a0, 0(a0)
2001020a:      	jalr	a0
2001020c:      	j	0x200101a6 <_start_trap_rust+0x4a>

2001020e <core::sync::atomic::compiler_fence::he643c0aeccef72c4>:
2001020e:      	addi	sp, sp, -48
20010210:      	sw	ra, 44(sp)
20010212:      	sb	a0, 15(sp)
20010216:      	andi	a0, a0, 255
2001021a:      	sw	a0, 8(sp)
2001021c:      	lw	a0, 8(sp)
2001021e:      	slli	a0, a0, 2
20010220:      	lui	a1, 131093
20010224:      	addi	a1, a1, -1632
20010228:      	add	a0, a0, a1
2001022a:      	lw	a0, 0(a0)
2001022c:      	jr	a0
2001022e:      	unimp	

20010230 <.LBB0_3>:
20010230:      	lui	a0, 131093
20010234:      	addi	a1, a0, -1560
20010238:      	lui	a0, 131093
2001023c:      	addi	a3, a0, -1552
20010240:      	addi	a0, sp, 16
20010242:      	li	a2, 1
20010244:      	li	a4, 0
20010246:      	auipc	ra, 0
2001024a:      	jalr	1834(ra)
2001024e:      	j	0x2001026e <.LBB0_7+0xc>

20010250 <.LBB0_4>:
20010250:      	fence	rw, w
20010254:      	j	0x20010268 <.LBB0_7+0x6>

20010256 <.LBB0_5>:
20010256:      	fence	r, rw
2001025a:      	j	0x20010268 <.LBB0_7+0x6>

2001025c <.LBB0_6>:
2001025c:      	fence.tso	
20010260:      	j	0x20010268 <.LBB0_7+0x6>

20010262 <.LBB0_7>:
20010262:      	fence	rw, rw
20010266:      	j	0x20010268 <.LBB0_7+0x6>
20010268:      	lw	ra, 44(sp)
2001026a:      	addi	sp, sp, 48
2001026c:      	ret
2001026e:      	lui	a0, 131093
20010272:      	addi	a1, a0, -1472
20010276:      	addi	a0, sp, 16
20010278:      	auipc	ra, 4
2001027c:      	jalr	-1462(ra)
20010280:      	unimp	

20010282 <core::sync::atomic::AtomicU32::fetch_or::ha1982a9a3fb6822f>:
20010282:      	addi	sp, sp, -48
20010284:      	sw	ra, 44(sp)
20010286:      	sw	a1, 16(sp)
20010288:      	mv	a3, a2
2001028a:      	sw	a3, 20(sp)
2001028c:      	sw	a0, 28(sp)
2001028e:      	sw	a1, 32(sp)
20010290:      	sb	a2, 39(sp)
20010294:      	mv	a1, a0
20010296:      	sw	a1, 24(sp)
20010298:      	sw	a0, 40(sp)
2001029a:      	j	0x2001029c <core::sync::atomic::AtomicU32::fetch_or::ha1982a9a3fb6822f+0x1a>
2001029c:      	lw	a2, 20(sp)
2001029e:      	lw	a1, 16(sp)
200102a0:      	lw	a0, 24(sp)
200102a2:      	auipc	ra, 1
200102a6:      	jalr	1606(ra)
200102aa:      	sw	a0, 12(sp)
200102ac:      	j	0x200102ae <core::sync::atomic::AtomicU32::fetch_or::ha1982a9a3fb6822f+0x2c>
200102ae:      	lw	a0, 12(sp)
200102b0:      	lw	ra, 44(sp)
200102b2:      	addi	sp, sp, 48
200102b4:      	ret

200102b6 <core::sync::atomic::AtomicU32::fetch_and::h947ae66945e36782>:
200102b6:      	addi	sp, sp, -48
200102b8:      	sw	ra, 44(sp)
200102ba:      	sw	a1, 16(sp)
200102bc:      	mv	a3, a2
200102be:      	sw	a3, 20(sp)
200102c0:      	sw	a0, 28(sp)
200102c2:      	sw	a1, 32(sp)
200102c4:      	sb	a2, 39(sp)
200102c8:      	mv	a1, a0
200102ca:      	sw	a1, 24(sp)
200102cc:      	sw	a0, 40(sp)
200102ce:      	j	0x200102d0 <core::sync::atomic::AtomicU32::fetch_and::h947ae66945e36782+0x1a>
200102d0:      	lw	a2, 20(sp)
200102d2:      	lw	a1, 16(sp)
200102d4:      	lw	a0, 24(sp)
200102d6:      	auipc	ra, 1
200102da:      	jalr	1334(ra)
200102de:      	sw	a0, 12(sp)
200102e0:      	j	0x200102e2 <core::sync::atomic::AtomicU32::fetch_and::h947ae66945e36782+0x2c>
200102e2:      	lw	a0, 12(sp)
200102e4:      	lw	ra, 44(sp)
200102e6:      	addi	sp, sp, 48
200102e8:      	ret

200102ea <_ZN9e310x_hal4gpio5gpio017Pin16$LT$MODE$GT$9into_iof017h58ac95a400758234E>:
200102ea:      	addi	sp, sp, -16
200102ec:      	sw	ra, 12(sp)
200102ee:      	li	a0, 16
200102f0:      	li	a1, 0
200102f2:      	auipc	ra, 1
200102f6:      	jalr	-1816(ra)
200102fa:      	j	0x200102fc <_ZN9e310x_hal4gpio5gpio017Pin16$LT$MODE$GT$9into_iof017h58ac95a400758234E+0x12>
200102fc:      	li	a0, 16
200102fe:      	li	a1, 0
20010300:      	auipc	ra, 1
20010304:      	jalr	-2000(ra)
20010308:      	j	0x2001030a <_ZN9e310x_hal4gpio5gpio017Pin16$LT$MODE$GT$9into_iof017h58ac95a400758234E+0x20>
2001030a:      	li	a0, 16
2001030c:      	li	a1, 1
2001030e:      	auipc	ra, 0
20010312:      	jalr	1912(ra)
20010316:      	j	0x20010318 <_ZN9e310x_hal4gpio5gpio017Pin16$LT$MODE$GT$9into_iof017h58ac95a400758234E+0x2e>
20010318:      	lw	ra, 12(sp)
2001031a:      	addi	sp, sp, 16
2001031c:      	ret

2001031e <_ZN9e310x_hal4gpio5gpio017Pin17$LT$MODE$GT$9into_iof017h47388e68e4d776acE>:
2001031e:      	addi	sp, sp, -16
20010320:      	sw	ra, 12(sp)
20010322:      	li	a0, 17
20010324:      	li	a1, 0
20010326:      	auipc	ra, 1
2001032a:      	jalr	-1868(ra)
2001032e:      	j	0x20010330 <_ZN9e310x_hal4gpio5gpio017Pin17$LT$MODE$GT$9into_iof017h47388e68e4d776acE+0x12>
20010330:      	li	a0, 17
20010332:      	li	a1, 0
20010334:      	auipc	ra, 0
20010338:      	jalr	2044(ra)
2001033c:      	j	0x2001033e <_ZN9e310x_hal4gpio5gpio017Pin17$LT$MODE$GT$9into_iof017h47388e68e4d776acE+0x20>
2001033e:      	li	a0, 17
20010340:      	li	a1, 1
20010342:      	auipc	ra, 0
20010346:      	jalr	1860(ra)
2001034a:      	j	0x2001034c <_ZN9e310x_hal4gpio5gpio017Pin17$LT$MODE$GT$9into_iof017h47388e68e4d776acE+0x2e>
2001034c:      	lw	ra, 12(sp)
2001034e:      	addi	sp, sp, 16
20010350:      	ret

20010352 <_ZN9e310x_hal4gpio5gpio017Pin19$LT$MODE$GT$20into_inverted_output17h61cda4665d015a07E>:
20010352:      	addi	sp, sp, -16
20010354:      	sw	ra, 12(sp)
20010356:      	li	a0, 19
20010358:      	li	a1, 0
2001035a:      	auipc	ra, 1
2001035e:      	jalr	-1582(ra)
20010362:      	j	0x20010364 <_ZN9e310x_hal4gpio5gpio017Pin19$LT$MODE$GT$20into_inverted_output17h61cda4665d015a07E+0x12>
20010364:      	li	a0, 19
20010366:      	li	a1, 1
20010368:      	auipc	ra, 1
2001036c:      	jalr	-1934(ra)
20010370:      	j	0x20010372 <_ZN9e310x_hal4gpio5gpio017Pin19$LT$MODE$GT$20into_inverted_output17h61cda4665d015a07E+0x20>
20010372:      	li	a0, 19
20010374:      	li	a1, 1
20010376:      	auipc	ra, 1
2001037a:      	jalr	-1778(ra)
2001037e:      	j	0x20010380 <_ZN9e310x_hal4gpio5gpio017Pin19$LT$MODE$GT$20into_inverted_output17h61cda4665d015a07E+0x2e>
20010380:      	li	a0, 19
20010382:      	li	a1, 0
20010384:      	auipc	ra, 0
20010388:      	jalr	1794(ra)
2001038c:      	j	0x2001038e <_ZN9e310x_hal4gpio5gpio017Pin19$LT$MODE$GT$20into_inverted_output17h61cda4665d015a07E+0x3c>
2001038e:      	lw	ra, 12(sp)
20010390:      	addi	sp, sp, 16
20010392:      	ret

20010394 <_ZN9e310x_hal4gpio5gpio017Pin21$LT$MODE$GT$20into_inverted_output17h3924f78e860639ccE>:
20010394:      	addi	sp, sp, -16
20010396:      	sw	ra, 12(sp)
20010398:      	li	a0, 21
2001039a:      	li	a1, 0
2001039c:      	auipc	ra, 1
200103a0:      	jalr	-1648(ra)
200103a4:      	j	0x200103a6 <_ZN9e310x_hal4gpio5gpio017Pin21$LT$MODE$GT$20into_inverted_output17h3924f78e860639ccE+0x12>
200103a6:      	li	a0, 21
200103a8:      	li	a1, 1
200103aa:      	auipc	ra, 1
200103ae:      	jalr	-2000(ra)
200103b2:      	j	0x200103b4 <_ZN9e310x_hal4gpio5gpio017Pin21$LT$MODE$GT$20into_inverted_output17h3924f78e860639ccE+0x20>
200103b4:      	li	a0, 21
200103b6:      	li	a1, 1
200103b8:      	auipc	ra, 1
200103bc:      	jalr	-1844(ra)
200103c0:      	j	0x200103c2 <_ZN9e310x_hal4gpio5gpio017Pin21$LT$MODE$GT$20into_inverted_output17h3924f78e860639ccE+0x2e>
200103c2:      	li	a0, 21
200103c4:      	li	a1, 0
200103c6:      	auipc	ra, 0
200103ca:      	jalr	1728(ra)
200103ce:      	j	0x200103d0 <_ZN9e310x_hal4gpio5gpio017Pin21$LT$MODE$GT$20into_inverted_output17h3924f78e860639ccE+0x3c>
200103d0:      	lw	ra, 12(sp)
200103d2:      	addi	sp, sp, 16
200103d4:      	ret

200103d6 <_ZN9e310x_hal4gpio5gpio017Pin22$LT$MODE$GT$20into_inverted_output17h4af818314df79214E>:
200103d6:      	addi	sp, sp, -16
200103d8:      	sw	ra, 12(sp)
200103da:      	li	a0, 22
200103dc:      	li	a1, 0
200103de:      	auipc	ra, 1
200103e2:      	jalr	-1714(ra)
200103e6:      	j	0x200103e8 <_ZN9e310x_hal4gpio5gpio017Pin22$LT$MODE$GT$20into_inverted_output17h4af818314df79214E+0x12>
200103e8:      	li	a0, 22
200103ea:      	li	a1, 1
200103ec:      	auipc	ra, 0
200103f0:      	jalr	2030(ra)
200103f4:      	j	0x200103f6 <_ZN9e310x_hal4gpio5gpio017Pin22$LT$MODE$GT$20into_inverted_output17h4af818314df79214E+0x20>
200103f6:      	li	a0, 22
200103f8:      	li	a1, 1
200103fa:      	auipc	ra, 1
200103fe:      	jalr	-1910(ra)
20010402:      	j	0x20010404 <_ZN9e310x_hal4gpio5gpio017Pin22$LT$MODE$GT$20into_inverted_output17h4af818314df79214E+0x2e>
20010404:      	li	a0, 22
20010406:      	li	a1, 0
20010408:      	auipc	ra, 0
2001040c:      	jalr	1662(ra)
20010410:      	j	0x20010412 <_ZN9e310x_hal4gpio5gpio017Pin22$LT$MODE$GT$20into_inverted_output17h4af818314df79214E+0x3c>
20010412:      	lw	ra, 12(sp)
20010414:      	addi	sp, sp, 16
20010416:      	ret

20010418 <hifive1::stdout::configure::h660eda06ba84f14f>:
20010418:      	addi	sp, sp, -96
2001041a:      	sw	ra, 92(sp)
2001041c:      	sw	a2, 12(sp)
2001041e:      	sw	a1, 16(sp)
20010420:      	sw	a0, 20(sp)
20010422:      	sw	a0, 44(sp)
20010424:      	sw	a1, 48(sp)
20010426:      	sw	a2, 52(sp)
20010428:      	auipc	ra, 0
2001042c:      	jalr	-266(ra)
20010430:      	j	0x20010432 <hifive1::stdout::configure::h660eda06ba84f14f+0x1a>
20010432:      	auipc	ra, 0
20010436:      	jalr	-328(ra)
2001043a:      	j	0x2001043c <hifive1::stdout::configure::h660eda06ba84f14f+0x24>
2001043c:      	lw	a2, 12(sp)
2001043e:      	lw	a1, 16(sp)
20010440:      	lw	a0, 20(sp)
20010442:      	auipc	ra, 0
20010446:      	jalr	216(ra)
2001044a:      	j	0x2001044c <hifive1::stdout::configure::h660eda06ba84f14f+0x34>
2001044c:      	auipc	ra, 0
20010450:      	jalr	774(ra)
20010454:      	j	0x20010456 <hifive1::stdout::configure::h660eda06ba84f14f+0x3e>
20010456:      	auipc	ra, 0
2001045a:      	jalr	960(ra)
2001045e:      	j	0x20010460 <hifive1::stdout::configure::h660eda06ba84f14f+0x48>
20010460:      	lw	ra, 92(sp)
20010462:      	addi	sp, sp, 96
20010464:      	ret

20010466 <hifive1::stdout::configure::{{closure}}::h9e1b4132856d3d2c>:
20010466:      	addi	sp, sp, -16
20010468:      	sw	ra, 12(sp)
2001046a:      	sw	a0, 8(sp)
2001046c:      	lui	a0, 524288
20010470:      	mv	a0, a0
20010474:      	auipc	ra, 1
20010478:      	jalr	-1232(ra)
2001047c:      	j	0x2001047e <hifive1::stdout::configure::{{closure}}::h9e1b4132856d3d2c+0x18>
2001047e:      	lw	ra, 12(sp)
20010480:      	addi	sp, sp, 16
20010482:      	ret

20010484 <<usize as bit_field::BitField>::get_bit::h05762a4cbb962070>:
20010484:      	addi	sp, sp, -32
20010486:      	sw	a1, 16(sp)
20010488:      	sw	a0, 20(sp)
2001048a:      	sw	a0, 24(sp)
2001048c:      	sw	a1, 28(sp)
2001048e:      	li	a0, 31
20010490:      	bltu	a0, a1, 0x200104b2 <<usize as bit_field::BitField>::get_bit::h05762a4cbb962070+0x2e>
20010494:      	j	0x20010496 <<usize as bit_field::BitField>::get_bit::h05762a4cbb962070+0x12>
20010496:      	lw	a2, 16(sp)
20010498:      	lw	a0, 20(sp)
2001049a:      	lw	a0, 0(a0)
2001049c:      	sw	a0, 8(sp)
2001049e:      	andi	a0, a2, -32
200104a2:      	li	a1, 1
200104a4:      	sll	a1, a1, a2
200104a8:      	sw	a1, 12(sp)
200104aa:      	li	a1, 0
200104ac:      	bne	a0, a1, 0x200104de <<usize as bit_field::BitField>::get_bit::h05762a4cbb962070+0x5a>
200104b0:      	j	0x200104d0 <<usize as bit_field::BitField>::get_bit::h05762a4cbb962070+0x4c>
200104b2:      	lui	a0, 131093
200104b6:      	addi	a0, a0, -1456
200104ba:      	lui	a1, 131093
200104be:      	addi	a2, a1, -1328
200104c2:      	li	a1, 40
200104c6:      	auipc	ra, 3
200104ca:      	jalr	1936(ra)
200104ce:      	unimp	
200104d0:      	lw	a0, 8(sp)
200104d2:      	lw	a1, 12(sp)
200104d4:      	and	a0, a0, a1
200104d6:      	snez	a0, a0
200104da:      	addi	sp, sp, 32
200104dc:      	ret
200104de:      	lui	a0, 131093
200104e2:      	addi	a0, a0, -1312
200104e6:      	lui	a1, 131093
200104ea:      	addi	a2, a1, -1328
200104ee:      	li	a1, 35
200104f2:      	auipc	ra, 3
200104f6:      	jalr	1892(ra)
200104fa:      	unimp	

200104fc <core::intrinsics::write_bytes::h0e2058654d2ec392>:
200104fc:      	addi	sp, sp, -16
200104fe:      	sw	ra, 12(sp)
20010500:      	sw	a0, 0(sp)
20010502:      	sb	a1, 7(sp)
20010506:      	sw	a2, 8(sp)
20010508:      	li	a2, 0
2001050a:      	auipc	ra, 4
2001050e:      	jalr	96(ra)
20010512:      	j	0x20010514 <core::intrinsics::write_bytes::h0e2058654d2ec392+0x18>
20010514:      	lw	ra, 12(sp)
20010516:      	addi	sp, sp, 16
20010518:      	ret

2001051a <e310x_hal::serial::Serial<UART,(TX,RX)>::new::hc1edc57e4571af6c>:
2001051a:      	addi	sp, sp, -192
2001051c:      	sw	ra, 188(sp)
2001051e:      	sw	a0, 24(sp)
20010520:      	sw	a1, 40(sp)
20010522:      	sw	a2, 44(sp)
20010524:      	sw	a0, 68(sp)
20010526:      	addi	a0, sp, 40
20010528:      	auipc	ra, 3
2001052c:      	jalr	-394(ra)
20010530:      	sw	a0, 28(sp)
20010532:      	j	0x20010534 <e310x_hal::serial::Serial<UART,(TX,RX)>::new::hc1edc57e4571af6c+0x1a>
20010534:      	lw	a0, 24(sp)
20010536:      	li	a1, 0
20010538:      	beq	a0, a1, 0x20010552 <e310x_hal::serial::Serial<UART,(TX,RX)>::new::hc1edc57e4571af6c+0x38>
2001053c:      	j	0x2001053e <e310x_hal::serial::Serial<UART,(TX,RX)>::new::hc1edc57e4571af6c+0x24>
2001053e:      	lw	a0, 28(sp)
20010540:      	lw	a1, 24(sp)
20010542:      	divu	a0, a0, a1
20010546:      	addi	a1, a0, -1
2001054a:      	sw	a1, 20(sp)
2001054c:      	bltu	a0, a1, 0x20010578 <e310x_hal::serial::Serial<UART,(TX,RX)>::new::hc1edc57e4571af6c+0x5e>
20010550:      	j	0x2001056e <e310x_hal::serial::Serial<UART,(TX,RX)>::new::hc1edc57e4571af6c+0x54>
20010552:      	lui	a0, 131093
20010556:      	addi	a0, a0, -1168
2001055a:      	lui	a1, 131093
2001055e:      	addi	a2, a1, -1188
20010562:      	li	a1, 25
20010564:      	auipc	ra, 3
20010568:      	jalr	1778(ra)
2001056c:      	unimp	
2001056e:      	lw	a0, 20(sp)
20010570:      	sw	a0, 56(sp)
20010572:      	addi	a0, sp, 32
20010574:      	sw	a0, 184(sp)
20010576:      	j	0x20010596 <e310x_hal::serial::Serial<UART,(TX,RX)>::new::hc1edc57e4571af6c+0x7c>
20010578:      	lui	a0, 131093
2001057c:      	addi	a0, a0, -1136
20010580:      	lui	a1, 131093
20010584:      	addi	a2, a1, -1188
20010588:      	li	a1, 33
2001058c:      	auipc	ra, 3
20010590:      	jalr	1738(ra)
20010594:      	unimp	
20010596:      	lui	a0, 65555
2001059a:      	addi	a0, a0, 16
2001059c:      	sw	a0, 16(sp)
2001059e:      	sw	a0, 80(sp)
200105a0:      	li	a0, 0
200105a2:      	sw	a0, 76(sp)
200105a4:      	addi	a0, sp, 76
200105a6:      	sw	a0, 72(sp)
200105a8:      	auipc	ra, 0
200105ac:      	jalr	228(ra)
200105b0:      	mv	a1, a0
200105b2:      	lw	a0, 16(sp)
200105b4:      	lw	a1, 0(a1)
200105b6:      	sw	a0, 160(sp)
200105b8:      	sw	a1, 164(sp)
200105ba:      	sw	a0, 168(sp)
200105bc:      	auipc	ra, 3
200105c0:      	jalr	176(ra)
200105c4:      	j	0x200105c6 <e310x_hal::serial::Serial<UART,(TX,RX)>::new::hc1edc57e4571af6c+0xac>
200105c6:      	addi	a0, sp, 32
200105c8:      	sw	a0, 180(sp)
200105ca:      	j	0x200105cc <e310x_hal::serial::Serial<UART,(TX,RX)>::new::hc1edc57e4571af6c+0xb2>
200105cc:      	addi	a0, sp, 56
200105ce:      	sw	a0, 60(sp)
200105d0:      	lui	a1, 65555
200105d4:      	addi	a1, a1, 24
200105d6:      	sw	a1, 12(sp)
200105d8:      	sw	a1, 92(sp)
200105da:      	sw	a0, 96(sp)
200105dc:      	li	a1, 0
200105de:      	sw	a1, 88(sp)
200105e0:      	addi	a1, sp, 88
200105e2:      	sw	a1, 84(sp)
200105e4:      	auipc	ra, 0
200105e8:      	jalr	144(ra)
200105ec:      	mv	a1, a0
200105ee:      	lw	a0, 12(sp)
200105f0:      	lw	a1, 0(a1)
200105f2:      	sw	a0, 148(sp)
200105f4:      	sw	a1, 152(sp)
200105f6:      	sw	a0, 156(sp)
200105f8:      	auipc	ra, 3
200105fc:      	jalr	116(ra)
20010600:      	j	0x20010602 <e310x_hal::serial::Serial<UART,(TX,RX)>::new::hc1edc57e4571af6c+0xe8>
20010602:      	addi	a0, sp, 32
20010604:      	sw	a0, 176(sp)
20010606:      	j	0x20010608 <e310x_hal::serial::Serial<UART,(TX,RX)>::new::hc1edc57e4571af6c+0xee>
20010608:      	lui	a0, 65555
2001060c:      	addi	a0, a0, 8
2001060e:      	sw	a0, 8(sp)
20010610:      	sw	a0, 108(sp)
20010612:      	li	a0, 0
20010614:      	sw	a0, 104(sp)
20010616:      	addi	a0, sp, 104
20010618:      	sw	a0, 100(sp)
2001061a:      	auipc	ra, 0
2001061e:      	jalr	186(ra)
20010622:      	mv	a1, a0
20010624:      	lw	a0, 8(sp)
20010626:      	lw	a1, 0(a1)
20010628:      	sw	a0, 136(sp)
2001062a:      	sw	a1, 140(sp)
2001062c:      	sw	a0, 144(sp)
2001062e:      	auipc	ra, 3
20010632:      	jalr	62(ra)
20010636:      	j	0x20010638 <e310x_hal::serial::Serial<UART,(TX,RX)>::new::hc1edc57e4571af6c+0x11e>
20010638:      	addi	a0, sp, 32
2001063a:      	sw	a0, 172(sp)
2001063c:      	j	0x2001063e <e310x_hal::serial::Serial<UART,(TX,RX)>::new::hc1edc57e4571af6c+0x124>
2001063e:      	lui	a0, 65555
20010642:      	addi	a0, a0, 12
20010644:      	sw	a0, 4(sp)
20010646:      	sw	a0, 120(sp)
20010648:      	li	a0, 0
2001064a:      	sw	a0, 116(sp)
2001064c:      	addi	a0, sp, 116
2001064e:      	sw	a0, 112(sp)
20010650:      	auipc	ra, 0
20010654:      	jalr	216(ra)
20010658:      	mv	a1, a0
2001065a:      	lw	a0, 4(sp)
2001065c:      	lw	a1, 0(a1)
2001065e:      	sw	a0, 124(sp)
20010660:      	sw	a1, 128(sp)
20010662:      	sw	a0, 132(sp)
20010664:      	auipc	ra, 3
20010668:      	jalr	8(ra)
2001066c:      	j	0x2001066e <e310x_hal::serial::Serial<UART,(TX,RX)>::new::hc1edc57e4571af6c+0x154>
2001066e:      	lw	ra, 188(sp)
20010670:      	addi	sp, sp, 192
20010672:      	ret

20010674 <e310x_hal::serial::Serial<UART,(TX,RX)>::new::{{closure}}::h2c1f5092e40aa649>:
20010674:      	addi	sp, sp, -32
20010676:      	sw	a1, 12(sp)
20010678:      	sw	a0, 16(sp)
2001067a:      	sw	a1, 20(sp)
2001067c:      	lw	a0, 0(a0)
2001067e:      	sw	a1, 24(sp)
20010680:      	sw	a0, 28(sp)
20010682:      	sw	a0, 0(a1)
20010684:      	j	0x20010686 <e310x_hal::serial::Serial<UART,(TX,RX)>::new::{{closure}}::h2c1f5092e40aa649+0x12>
20010686:      	lw	a0, 12(sp)
20010688:      	addi	sp, sp, 32
2001068a:      	ret

2001068c <e310x_hal::serial::Serial<UART,(TX,RX)>::new::{{closure}}::h3c36b19855cfc449>:
2001068c:      	addi	sp, sp, -64
2001068e:      	sw	a0, 28(sp)
20010690:      	sw	a0, 44(sp)
20010692:      	sw	a0, 40(sp)
20010694:      	sw	a0, 20(sp)
20010696:      	j	0x20010698 <e310x_hal::serial::Serial<UART,(TX,RX)>::new::{{closure}}::h3c36b19855cfc449+0xc>
20010698:      	lw	a1, 20(sp)
2001069a:      	sw	a1, 56(sp)
2001069c:      	li	a0, 0
2001069e:      	sb	a0, 63(sp)
200106a2:      	lw	a0, 0(a1)
200106a4:      	andi	a0, a0, -2
200106a6:      	sw	a0, 0(a1)
200106a8:      	lw	a0, 56(sp)
200106aa:      	sw	a0, 16(sp)
200106ac:      	j	0x200106ae <e310x_hal::serial::Serial<UART,(TX,RX)>::new::{{closure}}::h3c36b19855cfc449+0x22>
200106ae:      	lw	a0, 16(sp)
200106b0:      	sw	a0, 36(sp)
200106b2:      	sw	a0, 32(sp)
200106b4:      	sw	a0, 12(sp)
200106b6:      	j	0x200106b8 <e310x_hal::serial::Serial<UART,(TX,RX)>::new::{{closure}}::h3c36b19855cfc449+0x2c>
200106b8:      	lw	a1, 12(sp)
200106ba:      	sw	a1, 48(sp)
200106bc:      	li	a0, 0
200106be:      	sb	a0, 55(sp)
200106c2:      	lw	a0, 0(a1)
200106c4:      	andi	a0, a0, -3
200106c6:      	sw	a0, 0(a1)
200106c8:      	lw	a0, 48(sp)
200106ca:      	sw	a0, 8(sp)
200106cc:      	j	0x200106ce <e310x_hal::serial::Serial<UART,(TX,RX)>::new::{{closure}}::h3c36b19855cfc449+0x42>
200106ce:      	lw	a0, 8(sp)
200106d0:      	addi	sp, sp, 64
200106d2:      	ret

200106d4 <e310x_hal::serial::Serial<UART,(TX,RX)>::new::{{closure}}::h70e03ab0901b5398>:
200106d4:      	addi	sp, sp, -64
200106d6:      	sw	a0, 28(sp)
200106d8:      	sw	a0, 44(sp)
200106da:      	sw	a0, 40(sp)
200106dc:      	sw	a0, 20(sp)
200106de:      	j	0x200106e0 <e310x_hal::serial::Serial<UART,(TX,RX)>::new::{{closure}}::h70e03ab0901b5398+0xc>
200106e0:      	lw	a1, 20(sp)
200106e2:      	sw	a1, 56(sp)
200106e4:      	li	a0, 1
200106e6:      	sb	a0, 63(sp)
200106ea:      	lw	a0, 0(a1)
200106ec:      	lui	a2, 1048464
200106f0:      	addi	a2, a2, -1
200106f2:      	and	a0, a0, a2
200106f4:      	lui	a2, 16
200106f6:      	or	a0, a0, a2
200106f8:      	sw	a0, 0(a1)
200106fa:      	lw	a0, 56(sp)
200106fc:      	sw	a0, 16(sp)
200106fe:      	j	0x20010700 <e310x_hal::serial::Serial<UART,(TX,RX)>::new::{{closure}}::h70e03ab0901b5398+0x2c>
20010700:      	lw	a0, 16(sp)
20010702:      	sw	a0, 36(sp)
20010704:      	sw	a0, 32(sp)
20010706:      	sw	a0, 12(sp)
20010708:      	j	0x2001070a <e310x_hal::serial::Serial<UART,(TX,RX)>::new::{{closure}}::h70e03ab0901b5398+0x36>
2001070a:      	lw	a1, 12(sp)
2001070c:      	sw	a1, 48(sp)
2001070e:      	li	a0, 1
20010710:      	sb	a0, 55(sp)
20010714:      	lw	a0, 0(a1)
20010716:      	ori	a0, a0, 1
2001071a:      	sw	a0, 0(a1)
2001071c:      	lw	a0, 48(sp)
2001071e:      	sw	a0, 8(sp)
20010720:      	j	0x20010722 <e310x_hal::serial::Serial<UART,(TX,RX)>::new::{{closure}}::h70e03ab0901b5398+0x4e>
20010722:      	lw	a0, 8(sp)
20010724:      	addi	sp, sp, 64
20010726:      	ret

20010728 <e310x_hal::serial::Serial<UART,(TX,RX)>::new::{{closure}}::he4382cf598252183>:
20010728:      	addi	sp, sp, -32
2001072a:      	sw	a0, 12(sp)
2001072c:      	sw	a0, 20(sp)
2001072e:      	sw	a0, 16(sp)
20010730:      	sw	a0, 4(sp)
20010732:      	j	0x20010734 <e310x_hal::serial::Serial<UART,(TX,RX)>::new::{{closure}}::he4382cf598252183+0xc>
20010734:      	lw	a1, 4(sp)
20010736:      	sw	a1, 24(sp)
20010738:      	li	a0, 1
2001073a:      	sb	a0, 31(sp)
2001073e:      	lw	a0, 0(a1)
20010740:      	ori	a0, a0, 1
20010744:      	sw	a0, 0(a1)
20010746:      	lw	a0, 24(sp)
20010748:      	sw	a0, 0(sp)
2001074a:      	j	0x2001074c <e310x_hal::serial::Serial<UART,(TX,RX)>::new::{{closure}}::he4382cf598252183+0x24>
2001074c:      	lw	a0, 0(sp)
2001074e:      	addi	sp, sp, 32
20010750:      	ret

20010752 <e310x_hal::serial::Serial<UART,(TX,RX)>::split::h7a6396b7732b7443>:
20010752:      	addi	sp, sp, -32
20010754:      	sw	ra, 28(sp)
20010756:      	auipc	ra, 0
2001075a:      	jalr	494(ra)
2001075e:      	j	0x20010760 <e310x_hal::serial::Serial<UART,(TX,RX)>::split::h7a6396b7732b7443+0xe>
20010760:      	j	0x20010762 <e310x_hal::serial::Serial<UART,(TX,RX)>::split::h7a6396b7732b7443+0x10>
20010762:      	lw	ra, 28(sp)
20010764:      	addi	sp, sp, 32
20010766:      	ret

20010768 <e310x::common::Peripherals::take::h07612b8deeeec54e>:
20010768:      	addi	sp, sp, -16
2001076a:      	sw	ra, 12(sp)
2001076c:      	auipc	ra, 0
20010770:      	jalr	70(ra)
20010774:      	sw	a0, 8(sp)
20010776:      	j	0x20010778 <e310x::common::Peripherals::take::h07612b8deeeec54e+0x10>
20010778:      	lw	a0, 8(sp)
2001077a:      	lw	ra, 12(sp)
2001077c:      	addi	sp, sp, 16
2001077e:      	ret

20010780 <e310x::common::Peripherals::steal::hf7dbe1d5dfdde2cc>:
20010780:      	lui	a1, 524288
20010784:      	li	a0, 1
20010786:      	sb	a0, 1(a1)
2001078a:      	ret

2001078c <e310x_hal::device::DeviceResources::take::ha5c96e8127019ee1>:
2001078c:      	addi	sp, sp, -16
2001078e:      	sw	ra, 12(sp)
20010790:      	sw	a0, 4(sp)
20010792:      	auipc	ra, 0
20010796:      	jalr	396(ra)
2001079a:      	sw	a0, 8(sp)
2001079c:      	j	0x2001079e <e310x_hal::device::DeviceResources::take::ha5c96e8127019ee1+0x12>
2001079e:      	lw	a1, 8(sp)
200107a0:      	lw	a0, 4(sp)
200107a2:      	auipc	ra, 0
200107a6:      	jalr	1792(ra)
200107aa:      	j	0x200107ac <e310x_hal::device::DeviceResources::take::ha5c96e8127019ee1+0x20>
200107ac:      	lw	ra, 12(sp)
200107ae:      	addi	sp, sp, 16
200107b0:      	ret

200107b2 <riscv::interrupt::free::hb440b20f0ba662cb>:
200107b2:      	addi	sp, sp, -32
200107b4:      	sw	ra, 28(sp)
200107b6:      	auipc	ra, 0
200107ba:      	jalr	1588(ra)
200107be:      	sw	a0, 8(sp)
200107c0:      	j	0x200107c2 <riscv::interrupt::free::hb440b20f0ba662cb+0x10>
200107c2:      	auipc	ra, 0
200107c6:      	jalr	194(ra)
200107ca:      	j	0x200107cc <riscv::interrupt::free::hb440b20f0ba662cb+0x1a>
200107cc:      	auipc	ra, 3
200107d0:      	jalr	1140(ra)
200107d4:      	j	0x200107d6 <riscv::interrupt::free::hb440b20f0ba662cb+0x24>
200107d6:      	addi	a0, sp, 16
200107d8:      	sw	a0, 12(sp)
200107da:      	auipc	ra, 0
200107de:      	jalr	624(ra)
200107e2:      	mv	a1, a0
200107e4:      	sw	a1, 4(sp)
200107e6:      	sb	a0, 27(sp)
200107ea:      	j	0x200107ec <riscv::interrupt::free::hb440b20f0ba662cb+0x3a>
200107ec:      	addi	a0, sp, 8
200107ee:      	auipc	ra, 0
200107f2:      	jalr	1604(ra)
200107f6:      	sw	a0, 0(sp)
200107f8:      	j	0x200107fa <riscv::interrupt::free::hb440b20f0ba662cb+0x48>
200107fa:      	lw	a0, 0(sp)
200107fc:      	li	a1, 0
200107fe:      	bne	a0, a1, 0x2001080c <riscv::interrupt::free::hb440b20f0ba662cb+0x5a>
20010802:      	j	0x20010804 <riscv::interrupt::free::hb440b20f0ba662cb+0x52>
20010804:      	lw	a0, 4(sp)
20010806:      	lw	ra, 28(sp)
20010808:      	addi	sp, sp, 32
2001080a:      	ret
2001080c:      	auipc	ra, 0
20010810:      	jalr	100(ra)
20010814:      	j	0x20010804 <riscv::interrupt::free::hb440b20f0ba662cb+0x52>

20010816 <riscv::interrupt::free::hbe312a144961b467>:
20010816:      	addi	sp, sp, -48
20010818:      	sw	ra, 44(sp)
2001081a:      	auipc	ra, 0
2001081e:      	jalr	1488(ra)
20010822:      	sw	a0, 16(sp)
20010824:      	j	0x20010826 <riscv::interrupt::free::hbe312a144961b467+0x10>
20010826:      	auipc	ra, 0
2001082a:      	jalr	94(ra)
2001082e:      	j	0x20010830 <riscv::interrupt::free::hbe312a144961b467+0x1a>
20010830:      	auipc	ra, 3
20010834:      	jalr	1040(ra)
20010838:      	j	0x2001083a <riscv::interrupt::free::hbe312a144961b467+0x24>
2001083a:      	addi	a0, sp, 24
2001083c:      	sw	a0, 20(sp)
2001083e:      	auipc	ra, 0
20010842:      	jalr	-984(ra)
20010846:      	j	0x20010848 <riscv::interrupt::free::hbe312a144961b467+0x32>
20010848:      	addi	a0, sp, 16
2001084a:      	auipc	ra, 0
2001084e:      	jalr	1512(ra)
20010852:      	sw	a0, 12(sp)
20010854:      	j	0x20010856 <riscv::interrupt::free::hbe312a144961b467+0x40>
20010856:      	lw	a0, 12(sp)
20010858:      	li	a1, 0
2001085a:      	bne	a0, a1, 0x20010866 <riscv::interrupt::free::hbe312a144961b467+0x50>
2001085e:      	j	0x20010860 <riscv::interrupt::free::hbe312a144961b467+0x4a>
20010860:      	lw	ra, 44(sp)
20010862:      	addi	sp, sp, 48
20010864:      	ret
20010866:      	auipc	ra, 0
2001086a:      	jalr	10(ra)
2001086e:      	j	0x20010860 <riscv::interrupt::free::hbe312a144961b467+0x4a>

20010870 <riscv::interrupt::enable::hee3846525204c575>:
20010870:      	addi	sp, sp, -16
20010872:      	sw	ra, 12(sp)
20010874:      	auipc	ra, 0
20010878:      	jalr	1498(ra)
2001087c:      	j	0x2001087e <riscv::interrupt::enable::hee3846525204c575+0xe>
2001087e:      	lw	ra, 12(sp)
20010880:      	addi	sp, sp, 16
20010882:      	ret

20010884 <riscv::interrupt::disable::h00ebc44153083495>:
20010884:      	addi	sp, sp, -16
20010886:      	sw	ra, 12(sp)
20010888:      	auipc	ra, 0
2001088c:      	jalr	1500(ra)
20010890:      	j	0x20010892 <riscv::interrupt::disable::h00ebc44153083495+0xe>
20010892:      	lw	ra, 12(sp)
20010894:      	addi	sp, sp, 16
20010896:      	ret

20010898 <core::ptr::read::h55f7aaed1b1f37dc>:
20010898:      	addi	sp, sp, -32
2001089a:      	sw	a0, 12(sp)
2001089c:      	sw	a0, 20(sp)
2001089e:      	lb	a0, 30(sp)
200108a2:      	sb	a0, 19(sp)
200108a6:      	j	0x200108a8 <core::ptr::read::h55f7aaed1b1f37dc+0x10>
200108a8:      	addi	a0, sp, 19
200108ac:      	sw	a0, 24(sp)
200108ae:      	j	0x200108b0 <core::ptr::read::h55f7aaed1b1f37dc+0x18>
200108b0:      	lw	a0, 12(sp)
200108b2:      	lbu	a0, 0(a0)
200108b6:      	sw	a0, 8(sp)
200108b8:      	sb	a0, 19(sp)
200108bc:      	sb	a0, 29(sp)
200108c0:      	andi	a0, a0, 1
200108c2:      	sb	a0, 31(sp)
200108c6:      	j	0x200108c8 <core::ptr::read::h55f7aaed1b1f37dc+0x30>
200108c8:      	lw	a0, 8(sp)
200108ca:      	andi	a0, a0, 1
200108cc:      	addi	sp, sp, 32
200108ce:      	ret

200108d0 <core::ptr::write::h69cf9a3a6e3c626e>:
200108d0:      	addi	sp, sp, -16
200108d2:      	sb	a1, 11(sp)
200108d6:      	sw	a0, 12(sp)
200108d8:      	sb	a1, 0(a0)
200108dc:      	addi	sp, sp, 16
200108de:      	ret

200108e0 <core::mem::replace::h21c2ab4ed548d1b4>:
200108e0:      	addi	sp, sp, -32
200108e2:      	sw	ra, 28(sp)
200108e4:      	sw	a0, 8(sp)
200108e6:      	mv	a2, a1
200108e8:      	sw	a2, 12(sp)
200108ea:      	sw	a0, 20(sp)
200108ec:      	sb	a1, 26(sp)
200108f0:      	auipc	ra, 0
200108f4:      	jalr	-88(ra)
200108f8:      	mv	a1, a0
200108fa:      	sw	a1, 16(sp)
200108fc:      	sb	a0, 27(sp)
20010900:      	j	0x20010902 <core::mem::replace::h21c2ab4ed548d1b4+0x22>
20010902:      	lw	a1, 12(sp)
20010904:      	lw	a0, 8(sp)
20010906:      	auipc	ra, 0
2001090a:      	jalr	-54(ra)
2001090e:      	j	0x20010910 <core::mem::replace::h21c2ab4ed548d1b4+0x30>
20010910:      	lw	a0, 16(sp)
20010912:      	lw	ra, 28(sp)
20010914:      	addi	sp, sp, 32
20010916:      	ret

20010918 <e310x::Peripherals::from_common::ha0dd719a66f61b8b>:
20010918:      	addi	sp, sp, -16
2001091a:      	addi	sp, sp, 16
2001091c:      	ret

2001091e <e310x::Peripherals::take::h375cac0f0561ba3a>:
2001091e:      	addi	sp, sp, -16
20010920:      	sw	ra, 12(sp)
20010922:      	auipc	ra, 0
20010926:      	jalr	-442(ra)
2001092a:      	sw	a0, 8(sp)
2001092c:      	j	0x2001092e <e310x::Peripherals::take::h375cac0f0561ba3a+0x10>
2001092e:      	lw	a0, 8(sp)
20010930:      	auipc	ra, 0
20010934:      	jalr	1496(ra)
20010938:      	sw	a0, 4(sp)
2001093a:      	j	0x2001093c <e310x::Peripherals::take::h375cac0f0561ba3a+0x1e>
2001093c:      	lw	a0, 4(sp)
2001093e:      	lw	ra, 12(sp)
20010940:      	addi	sp, sp, 16
20010942:      	ret

20010944 <core::mem::maybe_uninit::MaybeUninit<T>::zeroed::h15a88cba9e2f12de>:
20010944:      	addi	sp, sp, -48
20010946:      	sw	ra, 44(sp)
20010948:      	j	0x2001094a <core::mem::maybe_uninit::MaybeUninit<T>::zeroed::h15a88cba9e2f12de+0x6>
2001094a:      	addi	a0, sp, 16
2001094c:      	sw	a0, 12(sp)
2001094e:      	sw	a0, 20(sp)
20010950:      	j	0x20010952 <core::mem::maybe_uninit::MaybeUninit<T>::zeroed::h15a88cba9e2f12de+0xe>
20010952:      	lw	a0, 12(sp)
20010954:      	sw	a0, 32(sp)
20010956:      	li	a1, 0
20010958:      	sb	a1, 39(sp)
2001095c:      	li	a2, 1
2001095e:      	sw	a2, 40(sp)
20010960:      	auipc	ra, 0
20010964:      	jalr	-1124(ra)
20010968:      	j	0x2001096a <core::mem::maybe_uninit::MaybeUninit<T>::zeroed::h15a88cba9e2f12de+0x26>
2001096a:      	lw	ra, 44(sp)
2001096c:      	addi	sp, sp, 48
2001096e:      	ret

20010970 <core::fmt::Arguments::new_v1::h0a7ae4b6f7ba8ebb>:
20010970:      	addi	sp, sp, -80
20010972:      	sw	ra, 76(sp)
20010974:      	sw	a4, 0(sp)
20010976:      	sw	a3, 4(sp)
20010978:      	sw	a2, 8(sp)
2001097a:      	sw	a1, 12(sp)
2001097c:      	sw	a0, 16(sp)
2001097e:      	sw	a1, 56(sp)
20010980:      	sw	a2, 60(sp)
20010982:      	sw	a3, 64(sp)
20010984:      	sw	a4, 68(sp)
20010986:      	bltu	a2, a4, 0x2001099c <core::fmt::Arguments::new_v1::h0a7ae4b6f7ba8ebb+0x2c>
2001098a:      	j	0x2001098c <core::fmt::Arguments::new_v1::h0a7ae4b6f7ba8ebb+0x1c>
2001098c:      	lw	a1, 8(sp)
2001098e:      	lw	a0, 0(sp)
20010990:      	addi	a0, a0, 1
20010992:      	sltu	a0, a0, a1
20010996:      	sb	a0, 23(sp)
2001099a:      	j	0x200109a4 <core::fmt::Arguments::new_v1::h0a7ae4b6f7ba8ebb+0x34>
2001099c:      	li	a0, 1
2001099e:      	sb	a0, 23(sp)
200109a2:      	j	0x200109a4 <core::fmt::Arguments::new_v1::h0a7ae4b6f7ba8ebb+0x34>
200109a4:      	lbu	a0, 23(sp)
200109a8:      	andi	a0, a0, 1
200109aa:      	li	a1, 0
200109ac:      	bne	a0, a1, 0x200109d6 <core::fmt::Arguments::new_v1::h0a7ae4b6f7ba8ebb+0x66>
200109b0:      	j	0x200109b2 <core::fmt::Arguments::new_v1::h0a7ae4b6f7ba8ebb+0x42>
200109b2:      	lw	a0, 0(sp)
200109b4:      	lw	a1, 16(sp)
200109b6:      	lw	a2, 4(sp)
200109b8:      	lw	a3, 8(sp)
200109ba:      	lw	a4, 12(sp)
200109bc:      	li	a5, 0
200109be:      	sw	a5, 48(sp)
200109c0:      	sw	a4, 0(a1)
200109c2:      	sw	a3, 4(a1)
200109c4:      	lw	a4, 48(sp)
200109c6:      	lw	a3, 52(sp)
200109c8:      	sw	a4, 8(a1)
200109ca:      	sw	a3, 12(a1)
200109cc:      	sw	a2, 16(a1)
200109ce:      	sw	a0, 20(a1)
200109d0:      	lw	ra, 76(sp)
200109d2:      	addi	sp, sp, 80
200109d4:      	ret
200109d6:      	lui	a0, 131093
200109da:      	addi	a1, a0, -1088
200109de:      	lui	a0, 131093
200109e2:      	addi	a3, a0, -1080
200109e6:      	addi	a0, sp, 24
200109e8:      	li	a2, 1
200109ea:      	li	a4, 0
200109ec:      	auipc	ra, 0
200109f0:      	jalr	-124(ra)
200109f4:      	j	0x200109f6 <core::fmt::Arguments::new_v1::h0a7ae4b6f7ba8ebb+0x86>
200109f6:      	lui	a0, 131093
200109fa:      	addi	a1, a0, -1004
200109fe:      	addi	a0, sp, 24
20010a00:      	auipc	ra, 3
20010a04:      	jalr	706(ra)
20010a08:      	unimp	

20010a0a <core::ops::function::FnOnce::call_once::h0c7698684975ff10>:
20010a0a:      	addi	sp, sp, -16
20010a0c:      	sw	ra, 12(sp)
20010a0e:      	auipc	ra, 0
20010a12:      	jalr	-246(ra)
20010a16:      	j	0x20010a18 <core::ops::function::FnOnce::call_once::h0c7698684975ff10+0xe>
20010a18:      	lw	ra, 12(sp)
20010a1a:      	addi	sp, sp, 16
20010a1c:      	ret

20010a1e <core::ops::function::FnOnce::call_once::h78cde89873dfcede>:
20010a1e:      	addi	sp, sp, -16
20010a20:      	sw	ra, 12(sp)
20010a22:      	auipc	ra, 3
20010a26:      	jalr	-188(ra)
20010a2a:      	j	0x20010a2c <core::ops::function::FnOnce::call_once::h78cde89873dfcede+0xe>
20010a2c:      	lw	ra, 12(sp)
20010a2e:      	addi	sp, sp, 16
20010a30:      	ret

20010a32 <core::ptr::drop_in_place<e310x_hal::gpio::gpio0::Pin19<e310x_hal::gpio::Output<e310x_hal::gpio::Regular<e310x_hal::gpio::Invert>>>>::hd3f9ece86e42cc96>:
20010a32:      	addi	sp, sp, -16
20010a34:      	sw	a0, 12(sp)
20010a36:      	addi	sp, sp, 16
20010a38:      	ret

20010a3a <core::ptr::drop_in_place<e310x_hal::gpio::gpio0::Pin21<e310x_hal::gpio::Output<e310x_hal::gpio::Regular<e310x_hal::gpio::Invert>>>>::h655372cd55043490>:
20010a3a:      	addi	sp, sp, -16
20010a3c:      	sw	a0, 12(sp)
20010a3e:      	addi	sp, sp, 16
20010a40:      	ret

20010a42 <core::ptr::drop_in_place<e310x_hal::gpio::gpio0::Pin22<e310x_hal::gpio::Output<e310x_hal::gpio::Regular<e310x_hal::gpio::Invert>>>>::h86f5ca04cc3ec3b4>:
20010a42:      	addi	sp, sp, -16
20010a44:      	sw	a0, 12(sp)
20010a46:      	addi	sp, sp, 16
20010a48:      	ret

20010a4a <e310x::common::Peripherals::take::{{closure}}::hcde3d2522af154b8>:
20010a4a:      	addi	sp, sp, -32
20010a4c:      	sw	ra, 28(sp)
20010a4e:      	sw	a0, 24(sp)
20010a50:      	lui	a0, 524288
20010a54:      	lbu	a0, 1(a0)
20010a58:      	andi	a0, a0, 1
20010a5a:      	li	a1, 0
20010a5c:      	bne	a0, a1, 0x20010a6c <e310x::common::Peripherals::take::{{closure}}::hcde3d2522af154b8+0x22>
20010a60:      	j	0x20010a62 <e310x::common::Peripherals::take::{{closure}}::hcde3d2522af154b8+0x18>
20010a62:      	auipc	ra, 0
20010a66:      	jalr	-738(ra)
20010a6a:      	j	0x20010a7e <e310x::common::Peripherals::take::{{closure}}::hcde3d2522af154b8+0x34>
20010a6c:      	li	a0, 0
20010a6e:      	sb	a0, 15(sp)
20010a72:      	j	0x20010a74 <e310x::common::Peripherals::take::{{closure}}::hcde3d2522af154b8+0x2a>
20010a74:      	lbu	a0, 15(sp)
20010a78:      	lw	ra, 28(sp)
20010a7a:      	addi	sp, sp, 32
20010a7c:      	ret
20010a7e:      	li	a0, 1
20010a80:      	sb	a0, 15(sp)
20010a84:      	j	0x20010a74 <e310x::common::Peripherals::take::{{closure}}::hcde3d2522af154b8+0x2a>

20010a86 <e310x_hal::gpio::PeripheralAccess::set_iof_en::h77a5935a5e89e8f5>:
20010a86:      	addi	sp, sp, -64
20010a88:      	sw	ra, 60(sp)
20010a8a:      	sw	a0, 8(sp)
20010a8c:      	mv	a2, a1
20010a8e:      	sw	a2, 12(sp)
20010a90:      	sw	a0, 16(sp)
20010a92:      	sb	a1, 23(sp)
20010a96:      	lui	a0, 65554
20010a9a:      	sw	a0, 24(sp)
20010a9c:      	j	0x20010a9e <e310x_hal::gpio::PeripheralAccess::set_iof_en::h77a5935a5e89e8f5+0x18>
20010a9e:      	lui	a0, 65554
20010aa2:      	addi	a0, a0, 56
20010aa6:      	sw	a0, 4(sp)
20010aa8:      	sw	a0, 28(sp)
20010aaa:      	sw	a0, 32(sp)
20010aac:      	j	0x20010aae <e310x_hal::gpio::PeripheralAccess::set_iof_en::h77a5935a5e89e8f5+0x28>
20010aae:      	lw	a1, 8(sp)
20010ab0:      	lw	a0, 12(sp)
20010ab2:      	lw	a2, 4(sp)
20010ab4:      	sw	a2, 44(sp)
20010ab6:      	sw	a1, 48(sp)
20010ab8:      	sb	a0, 55(sp)
20010abc:      	li	a0, 1
20010abe:      	sll	a0, a0, a1
20010ac2:      	sw	a0, 0(sp)
20010ac4:      	li	a0, 0
20010ac6:      	bne	a0, a0, 0x20010ada <e310x_hal::gpio::PeripheralAccess::set_iof_en::h77a5935a5e89e8f5+0x54>
20010aca:      	j	0x20010acc <e310x_hal::gpio::PeripheralAccess::set_iof_en::h77a5935a5e89e8f5+0x46>
20010acc:      	lw	a0, 12(sp)
20010ace:      	lw	a1, 0(sp)
20010ad0:      	sw	a1, 56(sp)
20010ad2:      	li	a1, 0
20010ad4:      	bne	a0, a1, 0x20010b12 <e310x_hal::gpio::PeripheralAccess::set_iof_en::h77a5935a5e89e8f5+0x8c>
20010ad8:      	j	0x20010af8 <e310x_hal::gpio::PeripheralAccess::set_iof_en::h77a5935a5e89e8f5+0x72>
20010ada:      	lui	a0, 131093
20010ade:      	addi	a0, a0, -880
20010ae2:      	lui	a1, 131093
20010ae6:      	addi	a2, a1, -900
20010aea:      	li	a1, 35
20010aee:      	auipc	ra, 3
20010af2:      	jalr	360(ra)
20010af6:      	unimp	
20010af8:      	lw	a0, 4(sp)
20010afa:      	lw	a1, 0(sp)
20010afc:      	not	a1, a1
20010b00:      	li	a2, 4
20010b02:      	sb	a2, 43(sp)
20010b06:      	auipc	ra, 1048575
20010b0a:      	jalr	1968(ra)
20010b0e:      	sw	a0, 36(sp)
20010b10:      	j	0x20010b28 <e310x_hal::gpio::PeripheralAccess::set_iof_en::h77a5935a5e89e8f5+0xa2>
20010b12:      	lw	a1, 0(sp)
20010b14:      	lw	a0, 4(sp)
20010b16:      	li	a2, 4
20010b18:      	sb	a2, 42(sp)
20010b1c:      	auipc	ra, 1048575
20010b20:      	jalr	1894(ra)
20010b24:      	sw	a0, 36(sp)
20010b26:      	j	0x20010b28 <e310x_hal::gpio::PeripheralAccess::set_iof_en::h77a5935a5e89e8f5+0xa2>
20010b28:      	j	0x20010b2a <e310x_hal::gpio::PeripheralAccess::set_iof_en::h77a5935a5e89e8f5+0xa4>
20010b2a:      	lw	ra, 60(sp)
20010b2c:      	addi	sp, sp, 64
20010b2e:      	ret

20010b30 <e310x_hal::gpio::PeripheralAccess::set_iof_sel::h6a755afec432398a>:
20010b30:      	addi	sp, sp, -64
20010b32:      	sw	ra, 60(sp)
20010b34:      	sw	a0, 8(sp)
20010b36:      	mv	a2, a1
20010b38:      	sw	a2, 12(sp)
20010b3a:      	sw	a0, 16(sp)
20010b3c:      	sb	a1, 23(sp)
20010b40:      	lui	a0, 65554
20010b44:      	sw	a0, 24(sp)
20010b46:      	j	0x20010b48 <e310x_hal::gpio::PeripheralAccess::set_iof_sel::h6a755afec432398a+0x18>
20010b48:      	lui	a0, 65554
20010b4c:      	addi	a0, a0, 60
20010b50:      	sw	a0, 4(sp)
20010b52:      	sw	a0, 28(sp)
20010b54:      	sw	a0, 32(sp)
20010b56:      	j	0x20010b58 <e310x_hal::gpio::PeripheralAccess::set_iof_sel::h6a755afec432398a+0x28>
20010b58:      	lw	a1, 8(sp)
20010b5a:      	lw	a0, 12(sp)
20010b5c:      	lw	a2, 4(sp)
20010b5e:      	sw	a2, 44(sp)
20010b60:      	sw	a1, 48(sp)
20010b62:      	sb	a0, 55(sp)
20010b66:      	li	a0, 1
20010b68:      	sll	a0, a0, a1
20010b6c:      	sw	a0, 0(sp)
20010b6e:      	li	a0, 0
20010b70:      	bne	a0, a0, 0x20010b84 <e310x_hal::gpio::PeripheralAccess::set_iof_sel::h6a755afec432398a+0x54>
20010b74:      	j	0x20010b76 <e310x_hal::gpio::PeripheralAccess::set_iof_sel::h6a755afec432398a+0x46>
20010b76:      	lw	a0, 12(sp)
20010b78:      	lw	a1, 0(sp)
20010b7a:      	sw	a1, 56(sp)
20010b7c:      	li	a1, 0
20010b7e:      	bne	a0, a1, 0x20010bbc <e310x_hal::gpio::PeripheralAccess::set_iof_sel::h6a755afec432398a+0x8c>
20010b82:      	j	0x20010ba2 <e310x_hal::gpio::PeripheralAccess::set_iof_sel::h6a755afec432398a+0x72>
20010b84:      	lui	a0, 131093
20010b88:      	addi	a0, a0, -880
20010b8c:      	lui	a1, 131093
20010b90:      	addi	a2, a1, -900
20010b94:      	li	a1, 35
20010b98:      	auipc	ra, 3
20010b9c:      	jalr	190(ra)
20010ba0:      	unimp	
20010ba2:      	lw	a0, 4(sp)
20010ba4:      	lw	a1, 0(sp)
20010ba6:      	not	a1, a1
20010baa:      	li	a2, 4
20010bac:      	sb	a2, 43(sp)
20010bb0:      	auipc	ra, 1048575
20010bb4:      	jalr	1798(ra)
20010bb8:      	sw	a0, 36(sp)
20010bba:      	j	0x20010bd2 <e310x_hal::gpio::PeripheralAccess::set_iof_sel::h6a755afec432398a+0xa2>
20010bbc:      	lw	a1, 0(sp)
20010bbe:      	lw	a0, 4(sp)
20010bc0:      	li	a2, 4
20010bc2:      	sb	a2, 42(sp)
20010bc6:      	auipc	ra, 1048575
20010bca:      	jalr	1724(ra)
20010bce:      	sw	a0, 36(sp)
20010bd0:      	j	0x20010bd2 <e310x_hal::gpio::PeripheralAccess::set_iof_sel::h6a755afec432398a+0xa2>
20010bd2:      	j	0x20010bd4 <e310x_hal::gpio::PeripheralAccess::set_iof_sel::h6a755afec432398a+0xa4>
20010bd4:      	lw	ra, 60(sp)
20010bd6:      	addi	sp, sp, 64
20010bd8:      	ret

20010bda <e310x_hal::gpio::PeripheralAccess::set_out_xor::h930a9b7fb1ad2765>:
20010bda:      	addi	sp, sp, -64
20010bdc:      	sw	ra, 60(sp)
20010bde:      	sw	a0, 8(sp)
20010be0:      	mv	a2, a1
20010be2:      	sw	a2, 12(sp)
20010be4:      	sw	a0, 16(sp)
20010be6:      	sb	a1, 23(sp)
20010bea:      	lui	a0, 65554
20010bee:      	sw	a0, 24(sp)
20010bf0:      	j	0x20010bf2 <e310x_hal::gpio::PeripheralAccess::set_out_xor::h930a9b7fb1ad2765+0x18>
20010bf2:      	lui	a0, 65554
20010bf6:      	addi	a0, a0, 64
20010bfa:      	sw	a0, 4(sp)
20010bfc:      	sw	a0, 28(sp)
20010bfe:      	sw	a0, 32(sp)
20010c00:      	j	0x20010c02 <e310x_hal::gpio::PeripheralAccess::set_out_xor::h930a9b7fb1ad2765+0x28>
20010c02:      	lw	a1, 8(sp)
20010c04:      	lw	a0, 12(sp)
20010c06:      	lw	a2, 4(sp)
20010c08:      	sw	a2, 44(sp)
20010c0a:      	sw	a1, 48(sp)
20010c0c:      	sb	a0, 55(sp)
20010c10:      	li	a0, 1
20010c12:      	sll	a0, a0, a1
20010c16:      	sw	a0, 0(sp)
20010c18:      	li	a0, 0
20010c1a:      	bne	a0, a0, 0x20010c2e <e310x_hal::gpio::PeripheralAccess::set_out_xor::h930a9b7fb1ad2765+0x54>
20010c1e:      	j	0x20010c20 <e310x_hal::gpio::PeripheralAccess::set_out_xor::h930a9b7fb1ad2765+0x46>
20010c20:      	lw	a0, 12(sp)
20010c22:      	lw	a1, 0(sp)
20010c24:      	sw	a1, 56(sp)
20010c26:      	li	a1, 0
20010c28:      	bne	a0, a1, 0x20010c66 <e310x_hal::gpio::PeripheralAccess::set_out_xor::h930a9b7fb1ad2765+0x8c>
20010c2c:      	j	0x20010c4c <e310x_hal::gpio::PeripheralAccess::set_out_xor::h930a9b7fb1ad2765+0x72>
20010c2e:      	lui	a0, 131093
20010c32:      	addi	a0, a0, -880
20010c36:      	lui	a1, 131093
20010c3a:      	addi	a2, a1, -900
20010c3e:      	li	a1, 35
20010c42:      	auipc	ra, 3
20010c46:      	jalr	20(ra)
20010c4a:      	unimp	
20010c4c:      	lw	a0, 4(sp)
20010c4e:      	lw	a1, 0(sp)
20010c50:      	not	a1, a1
20010c54:      	li	a2, 4
20010c56:      	sb	a2, 43(sp)
20010c5a:      	auipc	ra, 1048575
20010c5e:      	jalr	1628(ra)
20010c62:      	sw	a0, 36(sp)
20010c64:      	j	0x20010c7c <e310x_hal::gpio::PeripheralAccess::set_out_xor::h930a9b7fb1ad2765+0xa2>
20010c66:      	lw	a1, 0(sp)
20010c68:      	lw	a0, 4(sp)
20010c6a:      	li	a2, 4
20010c6c:      	sb	a2, 42(sp)
20010c70:      	auipc	ra, 1048575
20010c74:      	jalr	1554(ra)
20010c78:      	sw	a0, 36(sp)
20010c7a:      	j	0x20010c7c <e310x_hal::gpio::PeripheralAccess::set_out_xor::h930a9b7fb1ad2765+0xa2>
20010c7c:      	j	0x20010c7e <e310x_hal::gpio::PeripheralAccess::set_out_xor::h930a9b7fb1ad2765+0xa4>
20010c7e:      	lw	ra, 60(sp)
20010c80:      	addi	sp, sp, 64
20010c82:      	ret

20010c84 <e310x_hal::gpio::PeripheralAccess::set_output_en::h064ba71555c45725>:
20010c84:      	addi	sp, sp, -64
20010c86:      	sw	ra, 60(sp)
20010c88:      	sw	a0, 8(sp)
20010c8a:      	mv	a2, a1
20010c8c:      	sw	a2, 12(sp)
20010c8e:      	sw	a0, 16(sp)
20010c90:      	sb	a1, 23(sp)
20010c94:      	lui	a0, 65554
20010c98:      	sw	a0, 24(sp)
20010c9a:      	j	0x20010c9c <e310x_hal::gpio::PeripheralAccess::set_output_en::h064ba71555c45725+0x18>
20010c9c:      	lui	a0, 65554
20010ca0:      	addi	a0, a0, 8
20010ca2:      	sw	a0, 4(sp)
20010ca4:      	sw	a0, 28(sp)
20010ca6:      	sw	a0, 32(sp)
20010ca8:      	j	0x20010caa <e310x_hal::gpio::PeripheralAccess::set_output_en::h064ba71555c45725+0x26>
20010caa:      	lw	a1, 8(sp)
20010cac:      	lw	a0, 12(sp)
20010cae:      	lw	a2, 4(sp)
20010cb0:      	sw	a2, 44(sp)
20010cb2:      	sw	a1, 48(sp)
20010cb4:      	sb	a0, 55(sp)
20010cb8:      	li	a0, 1
20010cba:      	sll	a0, a0, a1
20010cbe:      	sw	a0, 0(sp)
20010cc0:      	li	a0, 0
20010cc2:      	bne	a0, a0, 0x20010cd6 <e310x_hal::gpio::PeripheralAccess::set_output_en::h064ba71555c45725+0x52>
20010cc6:      	j	0x20010cc8 <e310x_hal::gpio::PeripheralAccess::set_output_en::h064ba71555c45725+0x44>
20010cc8:      	lw	a0, 12(sp)
20010cca:      	lw	a1, 0(sp)
20010ccc:      	sw	a1, 56(sp)
20010cce:      	li	a1, 0
20010cd0:      	bne	a0, a1, 0x20010d0e <e310x_hal::gpio::PeripheralAccess::set_output_en::h064ba71555c45725+0x8a>
20010cd4:      	j	0x20010cf4 <e310x_hal::gpio::PeripheralAccess::set_output_en::h064ba71555c45725+0x70>
20010cd6:      	lui	a0, 131093
20010cda:      	addi	a0, a0, -880
20010cde:      	lui	a1, 131093
20010ce2:      	addi	a2, a1, -900
20010ce6:      	li	a1, 35
20010cea:      	auipc	ra, 3
20010cee:      	jalr	-148(ra)
20010cf2:      	unimp	
20010cf4:      	lw	a0, 4(sp)
20010cf6:      	lw	a1, 0(sp)
20010cf8:      	not	a1, a1
20010cfc:      	li	a2, 4
20010cfe:      	sb	a2, 43(sp)
20010d02:      	auipc	ra, 1048575
20010d06:      	jalr	1460(ra)
20010d0a:      	sw	a0, 36(sp)
20010d0c:      	j	0x20010d24 <e310x_hal::gpio::PeripheralAccess::set_output_en::h064ba71555c45725+0xa0>
20010d0e:      	lw	a1, 0(sp)
20010d10:      	lw	a0, 4(sp)
20010d12:      	li	a2, 4
20010d14:      	sb	a2, 42(sp)
20010d18:      	auipc	ra, 1048575
20010d1c:      	jalr	1386(ra)
20010d20:      	sw	a0, 36(sp)
20010d22:      	j	0x20010d24 <e310x_hal::gpio::PeripheralAccess::set_output_en::h064ba71555c45725+0xa0>
20010d24:      	j	0x20010d26 <e310x_hal::gpio::PeripheralAccess::set_output_en::h064ba71555c45725+0xa2>
20010d26:      	lw	ra, 60(sp)
20010d28:      	addi	sp, sp, 64
20010d2a:      	ret

20010d2c <e310x_hal::gpio::PeripheralAccess::set_drive::hab07542812367934>:
20010d2c:      	addi	sp, sp, -64
20010d2e:      	sw	ra, 60(sp)
20010d30:      	sw	a0, 8(sp)
20010d32:      	mv	a2, a1
20010d34:      	sw	a2, 12(sp)
20010d36:      	sw	a0, 16(sp)
20010d38:      	sb	a1, 23(sp)
20010d3c:      	lui	a0, 65554
20010d40:      	sw	a0, 24(sp)
20010d42:      	j	0x20010d44 <e310x_hal::gpio::PeripheralAccess::set_drive::hab07542812367934+0x18>
20010d44:      	lui	a0, 65554
20010d48:      	addi	a0, a0, 20
20010d4a:      	sw	a0, 4(sp)
20010d4c:      	sw	a0, 28(sp)
20010d4e:      	sw	a0, 32(sp)
20010d50:      	j	0x20010d52 <e310x_hal::gpio::PeripheralAccess::set_drive::hab07542812367934+0x26>
20010d52:      	lw	a1, 8(sp)
20010d54:      	lw	a0, 12(sp)
20010d56:      	lw	a2, 4(sp)
20010d58:      	sw	a2, 44(sp)
20010d5a:      	sw	a1, 48(sp)
20010d5c:      	sb	a0, 55(sp)
20010d60:      	li	a0, 1
20010d62:      	sll	a0, a0, a1
20010d66:      	sw	a0, 0(sp)
20010d68:      	li	a0, 0
20010d6a:      	bne	a0, a0, 0x20010d7e <e310x_hal::gpio::PeripheralAccess::set_drive::hab07542812367934+0x52>
20010d6e:      	j	0x20010d70 <e310x_hal::gpio::PeripheralAccess::set_drive::hab07542812367934+0x44>
20010d70:      	lw	a0, 12(sp)
20010d72:      	lw	a1, 0(sp)
20010d74:      	sw	a1, 56(sp)
20010d76:      	li	a1, 0
20010d78:      	bne	a0, a1, 0x20010db6 <e310x_hal::gpio::PeripheralAccess::set_drive::hab07542812367934+0x8a>
20010d7c:      	j	0x20010d9c <e310x_hal::gpio::PeripheralAccess::set_drive::hab07542812367934+0x70>
20010d7e:      	lui	a0, 131093
20010d82:      	addi	a0, a0, -880
20010d86:      	lui	a1, 131093
20010d8a:      	addi	a2, a1, -900
20010d8e:      	li	a1, 35
20010d92:      	auipc	ra, 3
20010d96:      	jalr	-316(ra)
20010d9a:      	unimp	
20010d9c:      	lw	a0, 4(sp)
20010d9e:      	lw	a1, 0(sp)
20010da0:      	not	a1, a1
20010da4:      	li	a2, 4
20010da6:      	sb	a2, 43(sp)
20010daa:      	auipc	ra, 1048575
20010dae:      	jalr	1292(ra)
20010db2:      	sw	a0, 36(sp)
20010db4:      	j	0x20010dcc <e310x_hal::gpio::PeripheralAccess::set_drive::hab07542812367934+0xa0>
20010db6:      	lw	a1, 0(sp)
20010db8:      	lw	a0, 4(sp)
20010dba:      	li	a2, 4
20010dbc:      	sb	a2, 42(sp)
20010dc0:      	auipc	ra, 1048575
20010dc4:      	jalr	1218(ra)
20010dc8:      	sw	a0, 36(sp)
20010dca:      	j	0x20010dcc <e310x_hal::gpio::PeripheralAccess::set_drive::hab07542812367934+0xa0>
20010dcc:      	j	0x20010dce <e310x_hal::gpio::PeripheralAccess::set_drive::hab07542812367934+0xa2>
20010dce:      	lw	ra, 60(sp)
20010dd0:      	addi	sp, sp, 64
20010dd2:      	ret

20010dd4 <riscv::register::mstatus::_set::h019ae98781a152bf>:
20010dd4:      	addi	sp, sp, -16
20010dd6:      	sw	ra, 12(sp)
20010dd8:      	sw	a0, 8(sp)
20010dda:      	auipc	ra, 3
20010dde:      	jalr	-440(ra)
20010de2:      	j	0x20010de4 <riscv::register::mstatus::_set::h019ae98781a152bf+0x10>
20010de4:      	lw	ra, 12(sp)
20010de6:      	addi	sp, sp, 16
20010de8:      	ret

20010dea <riscv::register::mstatus::read::h3ec492109d36cf32>:
20010dea:      	addi	sp, sp, -16
20010dec:      	sw	ra, 12(sp)
20010dee:      	auipc	ra, 0
20010df2:      	jalr	22(ra)
20010df6:      	sw	a0, 4(sp)
20010df8:      	j	0x20010dfa <riscv::register::mstatus::read::h3ec492109d36cf32+0x10>
20010dfa:      	lw	a0, 4(sp)
20010dfc:      	sw	a0, 8(sp)
20010dfe:      	lw	ra, 12(sp)
20010e00:      	addi	sp, sp, 16
20010e02:      	ret

20010e04 <riscv::register::mstatus::_read::hdc96a77f43be53a5>:
20010e04:      	addi	sp, sp, -16
20010e06:      	sw	ra, 12(sp)
20010e08:      	auipc	ra, 3
20010e0c:      	jalr	-492(ra)
20010e10:      	sw	a0, 8(sp)
20010e12:      	j	0x20010e14 <riscv::register::mstatus::_read::hdc96a77f43be53a5+0x10>
20010e14:      	lw	a0, 8(sp)
20010e16:      	lw	ra, 12(sp)
20010e18:      	addi	sp, sp, 16
20010e1a:      	ret

20010e1c <riscv::register::mstatus::_clear::hc8c3f97dc951ff55>:
20010e1c:      	addi	sp, sp, -16
20010e1e:      	sw	ra, 12(sp)
20010e20:      	sw	a0, 8(sp)
20010e22:      	auipc	ra, 3
20010e26:      	jalr	-506(ra)
20010e2a:      	j	0x20010e2c <riscv::register::mstatus::_clear::hc8c3f97dc951ff55+0x10>
20010e2c:      	lw	ra, 12(sp)
20010e2e:      	addi	sp, sp, 16
20010e30:      	ret

20010e32 <riscv::register::mstatus::Mstatus::mie::he8684f349024f4dc>:
20010e32:      	addi	sp, sp, -16
20010e34:      	sw	ra, 12(sp)
20010e36:      	sw	a0, 8(sp)
20010e38:      	li	a1, 3
20010e3a:      	auipc	ra, 1048575
20010e3e:      	jalr	1610(ra)
20010e42:      	sw	a0, 4(sp)
20010e44:      	j	0x20010e46 <riscv::register::mstatus::Mstatus::mie::he8684f349024f4dc+0x14>
20010e46:      	lw	a0, 4(sp)
20010e48:      	lw	ra, 12(sp)
20010e4a:      	addi	sp, sp, 16
20010e4c:      	ret

20010e4e <riscv::register::mstatus::set_mie::h7c58de9baee82481>:
20010e4e:      	addi	sp, sp, -16
20010e50:      	sw	ra, 12(sp)
20010e52:      	li	a0, 8
20010e54:      	auipc	ra, 0
20010e58:      	jalr	-128(ra)
20010e5c:      	j	0x20010e5e <riscv::register::mstatus::set_mie::h7c58de9baee82481+0x10>
20010e5e:      	lw	ra, 12(sp)
20010e60:      	addi	sp, sp, 16
20010e62:      	ret

20010e64 <riscv::register::mstatus::clear_mie::hdae1307b82f1424d>:
20010e64:      	addi	sp, sp, -16
20010e66:      	sw	ra, 12(sp)
20010e68:      	li	a0, 8
20010e6a:      	auipc	ra, 0
20010e6e:      	jalr	-78(ra)
20010e72:      	j	0x20010e74 <riscv::register::mstatus::clear_mie::hdae1307b82f1424d+0x10>
20010e74:      	lw	ra, 12(sp)
20010e76:      	addi	sp, sp, 16
20010e78:      	ret

20010e7a <hifive1::led::rgb::h7387532986ebb360>:
20010e7a:      	addi	sp, sp, -48
20010e7c:      	sw	ra, 44(sp)
20010e7e:      	auipc	ra, 1048575
20010e82:      	jalr	1368(ra)
20010e86:      	j	0x20010e88 <hifive1::led::rgb::h7387532986ebb360+0xe>
20010e88:      	auipc	ra, 1048575
20010e8c:      	jalr	1226(ra)
20010e90:      	j	0x20010e92 <hifive1::led::rgb::h7387532986ebb360+0x18>
20010e92:      	auipc	ra, 1048575
20010e96:      	jalr	1282(ra)
20010e9a:      	j	0x20010e9c <hifive1::led::rgb::h7387532986ebb360+0x22>
20010e9c:      	lw	ra, 44(sp)
20010e9e:      	addi	sp, sp, 48
20010ea0:      	ret

20010ea2 <core::option::Option<T>::map::h12544b25ddd24bd0>:
20010ea2:      	addi	sp, sp, -80
20010ea4:      	sw	ra, 76(sp)
20010ea6:      	sw	a0, 8(sp)
20010ea8:      	sb	a1, 15(sp)
20010eac:      	li	a0, 1
20010eae:      	sb	a0, 63(sp)
20010eb2:      	li	a0, 0
20010eb4:      	beq	a1, a0, 0x20010ebe <core::option::Option<T>::map::h12544b25ddd24bd0+0x1c>
20010eb8:      	j	0x20010eba <core::option::Option<T>::map::h12544b25ddd24bd0+0x18>
20010eba:      	j	0x20010ec6 <core::option::Option<T>::map::h12544b25ddd24bd0+0x24>
20010ebc:      	unimp	
20010ebe:      	lw	a1, 8(sp)
20010ec0:      	li	a0, 0
20010ec2:      	sw	a0, 0(a1)
20010ec4:      	j	0x20010ef2 <core::option::Option<T>::map::h12544b25ddd24bd0+0x50>
20010ec6:      	li	a0, 0
20010ec8:      	sb	a0, 63(sp)
20010ecc:      	addi	a0, sp, 16
20010ece:      	auipc	ra, 0
20010ed2:      	jalr	-1200(ra)
20010ed6:      	j	0x20010ed8 <core::option::Option<T>::map::h12544b25ddd24bd0+0x36>
20010ed8:      	lw	a0, 8(sp)
20010eda:      	addi	a0, a0, 4
20010edc:      	addi	a1, sp, 16
20010ede:      	li	a2, 36
20010ee2:      	auipc	ra, 3
20010ee6:      	jalr	1950(ra)
20010eea:      	lw	a1, 8(sp)
20010eec:      	li	a0, 1
20010eee:      	sw	a0, 0(a1)
20010ef0:      	j	0x20010ef2 <core::option::Option<T>::map::h12544b25ddd24bd0+0x50>
20010ef2:      	lbu	a0, 63(sp)
20010ef6:      	andi	a0, a0, 1
20010ef8:      	li	a1, 0
20010efa:      	bne	a0, a1, 0x20010f06 <core::option::Option<T>::map::h12544b25ddd24bd0+0x64>
20010efe:      	j	0x20010f00 <core::option::Option<T>::map::h12544b25ddd24bd0+0x5e>
20010f00:      	lw	ra, 76(sp)
20010f02:      	addi	sp, sp, 80
20010f04:      	ret
20010f06:      	j	0x20010f00 <core::option::Option<T>::map::h12544b25ddd24bd0+0x5e>

20010f08 <core::option::Option<T>::map::hec426e01033f152f>:
20010f08:      	addi	sp, sp, -32
20010f0a:      	sw	ra, 28(sp)
20010f0c:      	sb	a0, 6(sp)
20010f10:      	li	a1, 1
20010f12:      	sb	a1, 15(sp)
20010f16:      	li	a1, 0
20010f18:      	beq	a0, a1, 0x20010f22 <core::option::Option<T>::map::hec426e01033f152f+0x1a>
20010f1c:      	j	0x20010f1e <core::option::Option<T>::map::hec426e01033f152f+0x16>
20010f1e:      	j	0x20010f2a <core::option::Option<T>::map::hec426e01033f152f+0x22>
20010f20:      	unimp	
20010f22:      	li	a0, 0
20010f24:      	sb	a0, 7(sp)
20010f28:      	j	0x20010f42 <core::option::Option<T>::map::hec426e01033f152f+0x3a>
20010f2a:      	li	a0, 0
20010f2c:      	sb	a0, 15(sp)
20010f30:      	auipc	ra, 0
20010f34:      	jalr	-1318(ra)
20010f38:      	j	0x20010f3a <core::option::Option<T>::map::hec426e01033f152f+0x32>
20010f3a:      	li	a0, 1
20010f3c:      	sb	a0, 7(sp)
20010f40:      	j	0x20010f42 <core::option::Option<T>::map::hec426e01033f152f+0x3a>
20010f42:      	lbu	a0, 15(sp)
20010f46:      	andi	a0, a0, 1
20010f48:      	li	a1, 0
20010f4a:      	bne	a0, a1, 0x20010f5a <core::option::Option<T>::map::hec426e01033f152f+0x52>
20010f4e:      	j	0x20010f50 <core::option::Option<T>::map::hec426e01033f152f+0x48>
20010f50:      	lbu	a0, 7(sp)
20010f54:      	lw	ra, 28(sp)
20010f56:      	addi	sp, sp, 32
20010f58:      	ret
20010f5a:      	j	0x20010f50 <core::option::Option<T>::map::hec426e01033f152f+0x48>

20010f5c <core::option::Option<T>::unwrap::hf7fce378175bd53e>:
20010f5c:      	addi	sp, sp, -16
20010f5e:      	sw	ra, 12(sp)
20010f60:      	sw	a2, 0(sp)
20010f62:      	sw	a1, 4(sp)
20010f64:      	sw	a0, 8(sp)
20010f66:      	lw	a0, 0(a1)
20010f68:      	li	a1, 0
20010f6a:      	beq	a0, a1, 0x20010f74 <core::option::Option<T>::unwrap::hf7fce378175bd53e+0x18>
20010f6e:      	j	0x20010f70 <core::option::Option<T>::unwrap::hf7fce378175bd53e+0x14>
20010f70:      	j	0x20010f8c <core::option::Option<T>::unwrap::hf7fce378175bd53e+0x30>
20010f72:      	unimp	
20010f74:      	lw	a2, 0(sp)
20010f76:      	lui	a0, 131093
20010f7a:      	addi	a0, a0, -845
20010f7e:      	li	a1, 43
20010f82:      	auipc	ra, 3
20010f86:      	jalr	-812(ra)
20010f8a:      	unimp	
20010f8c:      	lw	a0, 8(sp)
20010f8e:      	lw	a1, 4(sp)
20010f90:      	addi	a1, a1, 4
20010f92:      	li	a2, 36
20010f96:      	auipc	ra, 3
20010f9a:      	jalr	1770(ra)
20010f9e:      	lw	ra, 12(sp)
20010fa0:      	addi	sp, sp, 16
20010fa2:      	ret

20010fa4 <core::option::Option<T>::replace::h49c97a32b0f14934>:
20010fa4:      	addi	sp, sp, -32
20010fa6:      	sw	ra, 28(sp)
20010fa8:      	sw	a0, 20(sp)
20010faa:      	li	a1, 1
20010fac:      	sb	a1, 19(sp)
20010fb0:      	auipc	ra, 0
20010fb4:      	jalr	-1744(ra)
20010fb8:      	sw	a0, 12(sp)
20010fba:      	j	0x20010fbc <core::option::Option<T>::replace::h49c97a32b0f14934+0x18>
20010fbc:      	lw	a0, 12(sp)
20010fbe:      	lw	ra, 28(sp)
20010fc0:      	addi	sp, sp, 32
20010fc2:      	ret

20010fc4 <yarr::toggle_led::hfea969629ba0dde1>:
20010fc4:      	addi	sp, sp, -32
20010fc6:      	sw	ra, 28(sp)
20010fc8:      	sw	a1, 4(sp)
20010fca:      	sw	a0, 8(sp)
20010fcc:      	mv	a3, a2
20010fce:      	sw	a3, 12(sp)
20010fd0:      	sw	a0, 16(sp)
20010fd2:      	sw	a1, 20(sp)
20010fd4:      	sb	a2, 27(sp)
20010fd8:      	li	a0, 0
20010fda:      	bne	a2, a0, 0x20010fea <yarr::toggle_led::hfea969629ba0dde1+0x26>
20010fde:      	j	0x20010fe0 <yarr::toggle_led::hfea969629ba0dde1+0x1c>
20010fe0:      	lw	a0, 8(sp)
20010fe2:      	lw	a1, 4(sp)
20010fe4:      	lw	a1, 12(a1)
20010fe6:      	jalr	a1
20010fe8:      	j	0x20010ff4 <yarr::toggle_led::hfea969629ba0dde1+0x30>
20010fea:      	lw	a0, 8(sp)
20010fec:      	lw	a1, 4(sp)
20010fee:      	lw	a1, 16(a1)
20010ff0:      	jalr	a1
20010ff2:      	j	0x20010ff4 <yarr::toggle_led::hfea969629ba0dde1+0x30>
20010ff4:      	lw	a0, 12(sp)
20010ff6:      	xori	a0, a0, 1
20010ffa:      	lw	ra, 28(sp)
20010ffc:      	addi	sp, sp, 32
20010ffe:      	ret

20011000 <main>:
20011000:      	addi	sp, sp, -240
20011002:      	sw	ra, 236(sp)
20011004:      	addi	a0, sp, 104
20011006:      	auipc	ra, 1048575
2001100a:      	jalr	1926(ra)
2001100e:      	j	0x20011010 <main+0x10>
20011010:      	lui	a0, 131093
20011014:      	addi	a2, a0, -788
20011018:      	addi	a0, sp, 64
2001101a:      	addi	a1, sp, 104
2001101c:      	auipc	ra, 0
20011020:      	jalr	-192(ra)
20011024:      	j	0x20011026 <main+0x26>
20011026:      	li	a0, 320
2001102a:      	auipc	ra, 3
2001102e:      	jalr	-1672(ra)
20011032:      	sw	a0, 60(sp)
20011034:      	j	0x20011036 <main+0x36>
20011036:      	lw	a0, 60(sp)
20011038:      	auipc	ra, 3
2001103c:      	jalr	-1676(ra)
20011040:      	sw	a0, 56(sp)
20011042:      	j	0x20011044 <main+0x44>
20011044:      	lw	a0, 56(sp)
20011046:      	auipc	ra, 1
2001104a:      	jalr	-1206(ra)
2001104e:      	mv	a2, a0
20011050:      	sw	a2, 48(sp)
20011052:      	mv	a2, a1
20011054:      	sw	a2, 52(sp)
20011056:      	sw	a0, 224(sp)
20011058:      	sw	a1, 228(sp)
2001105a:      	j	0x2001105c <main+0x5c>
2001105c:      	lui	a0, 28
2001105e:      	addi	a0, a0, 512
20011062:      	auipc	ra, 3
20011066:      	jalr	-1738(ra)
2001106a:      	sw	a0, 44(sp)
2001106c:      	j	0x2001106e <main+0x6e>
2001106e:      	lw	a2, 52(sp)
20011070:      	lw	a1, 48(sp)
20011072:      	lw	a0, 44(sp)
20011074:      	auipc	ra, 1048575
20011078:      	jalr	932(ra)
2001107c:      	j	0x2001107e <main+0x7e>
2001107e:      	auipc	ra, 0
20011082:      	jalr	-516(ra)
20011086:      	j	0x20011088 <main+0x88>
20011088:      	lw	a1, 52(sp)
2001108a:      	lw	a0, 48(sp)
2001108c:      	addi	a2, sp, 144
2001108e:      	sw	a2, 152(sp)
20011090:      	lui	a3, 131093
20011094:      	addi	a3, a3, -772
20011098:      	sw	a3, 156(sp)
2001109a:      	sw	a2, 160(sp)
2001109c:      	lui	a3, 131093
200110a0:      	addi	a3, a3, -752
200110a4:      	sw	a3, 164(sp)
200110a6:      	sw	a2, 168(sp)
200110a8:      	lui	a2, 131093
200110ac:      	addi	a2, a2, -732
200110b0:      	sw	a2, 172(sp)
200110b2:      	li	a2, 1
200110b4:      	sb	a2, 181(sp)
200110b8:      	sb	a2, 182(sp)
200110bc:      	sb	a2, 183(sp)
200110c0:      	li	a2, 0
200110c2:      	sw	a2, 184(sp)
200110c4:      	auipc	ra, 2
200110c8:      	jalr	996(ra)
200110cc:      	sw	a0, 188(sp)
200110ce:      	j	0x200110d0 <main+0xd0>
200110d0:      	lui	a0, 131093
200110d4:      	addi	a0, a0, -712
200110d8:      	li	a1, 20
200110da:      	auipc	ra, 0
200110de:      	jalr	1168(ra)
200110e2:      	j	0x200110e4 <main+0xe4>
200110e4:      	lw	a1, 184(sp)
200110e6:      	sw	a1, 40(sp)
200110e8:      	li	a0, 2
200110ea:      	bltu	a0, a1, 0x20011112 <main+0x112>
200110ee:      	j	0x200110f0 <main+0xf0>
200110f0:      	lw	a0, 40(sp)
200110f2:      	slli	a1, a0, 3
200110f6:      	addi	a0, sp, 152
200110f8:      	add	a0, a0, a1
200110fa:      	lw	a1, 0(a0)
200110fc:      	sw	a1, 28(sp)
200110fe:      	ori	a0, a0, 4
20011102:      	lw	a0, 0(a0)
20011104:      	sw	a0, 32(sp)
20011106:      	lw	a0, 184(sp)
20011108:      	sw	a0, 36(sp)
2001110a:      	li	a1, 3
2001110c:      	bltu	a0, a1, 0x20011128 <main+0x128>
20011110:      	j	0x20011144 <main+0x144>
20011112:      	lw	a0, 40(sp)
20011114:      	lui	a1, 131093
20011118:      	addi	a2, a1, -692
2001111c:      	li	a1, 3
2001111e:      	auipc	ra, 3
20011122:      	jalr	-1180(ra)
20011126:      	unimp	
20011128:      	lw	a1, 32(sp)
2001112a:      	lw	a0, 28(sp)
2001112c:      	lw	a3, 36(sp)
2001112e:      	addi	a2, sp, 181
20011132:      	add	a2, a2, a3
20011134:      	lbu	a2, 0(a2)
20011138:      	auipc	ra, 0
2001113c:      	jalr	-372(ra)
20011140:      	sw	a0, 24(sp)
20011142:      	j	0x2001115a <main+0x15a>
20011144:      	lw	a0, 36(sp)
20011146:      	lui	a1, 131093
2001114a:      	addi	a2, a1, -676
2001114e:      	li	a1, 3
20011150:      	auipc	ra, 3
20011154:      	jalr	-1230(ra)
20011158:      	unimp	
2001115a:      	lw	a1, 184(sp)
2001115c:      	sw	a1, 20(sp)
2001115e:      	li	a0, 2
20011160:      	bltu	a0, a1, 0x20011180 <main+0x180>
20011164:      	j	0x20011166 <main+0x166>
20011166:      	lw	a0, 24(sp)
20011168:      	lw	a2, 20(sp)
2001116a:      	addi	a1, sp, 181
2001116e:      	add	a1, a1, a2
20011170:      	sb	a0, 0(a1)
20011174:      	lw	a0, 184(sp)
20011176:      	sw	a0, 16(sp)
20011178:      	li	a1, 3
2001117a:      	bltu	a0, a1, 0x20011196 <main+0x196>
2001117e:      	j	0x200111ac <main+0x1ac>
20011180:      	lw	a0, 20(sp)
20011182:      	lui	a1, 131093
20011186:      	addi	a2, a1, -660
2001118a:      	li	a1, 3
2001118c:      	auipc	ra, 3
20011190:      	jalr	-1290(ra)
20011194:      	unimp	
20011196:      	lw	a1, 16(sp)
20011198:      	addi	a0, sp, 181
2001119c:      	add	a0, a0, a1
2001119e:      	lbu	a0, 0(a0)
200111a2:      	andi	a0, a0, 1
200111a4:      	li	a1, 0
200111a6:      	bne	a0, a1, 0x200111d2 <main+0x1d2>
200111aa:      	j	0x200111c2 <main+0x1c2>
200111ac:      	lw	a0, 16(sp)
200111ae:      	lui	a1, 131093
200111b2:      	addi	a2, a1, -644
200111b6:      	li	a1, 3
200111b8:      	auipc	ra, 3
200111bc:      	jalr	-1334(ra)
200111c0:      	unimp	
200111c2:      	addi	a0, sp, 188
200111c4:      	li	a1, 1000
200111c8:      	auipc	ra, 2
200111cc:      	jalr	768(ra)
200111d0:      	j	0x200110e4 <main+0xe4>
200111d2:      	lw	a1, 184(sp)
200111d4:      	addi	a0, a1, 1
200111d8:      	sw	a0, 12(sp)
200111da:      	bltu	a0, a1, 0x200111fe <main+0x1fe>
200111de:      	j	0x200111e0 <main+0x1e0>
200111e0:      	lw	a0, 12(sp)
200111e2:      	lui	a1, 699051
200111e6:      	addi	a1, a1, -1365
200111ea:      	mulhu	a1, a0, a1
200111ee:      	srli	a2, a1, 1
200111f2:      	slli	a1, a2, 1
200111f6:      	add	a1, a1, a2
200111f8:      	sub	a0, a0, a1
200111fa:      	sw	a0, 184(sp)
200111fc:      	j	0x200111c2 <main+0x1c2>
200111fe:      	lui	a0, 131093
20011202:      	addi	a0, a0, -608
20011206:      	lui	a1, 131093
2001120a:      	addi	a2, a1, -628
2001120e:      	li	a1, 28
20011210:      	auipc	ra, 3
20011214:      	jalr	-1466(ra)
20011218:      	unimp	

2001121a <rust_begin_unwind>:
2001121a:      	addi	sp, sp, -16
2001121c:      	sw	ra, 12(sp)
2001121e:      	sw	a0, 8(sp)
20011220:      	j	0x20011222 <rust_begin_unwind+0x8>
20011222:      	li	a0, 4
20011224:      	sb	a0, 7(sp)
20011228:      	auipc	ra, 1048575
2001122c:      	jalr	-26(ra)
20011230:      	j	0x20011222 <rust_begin_unwind+0x8>

20011232 <ExceptionHandler>:
20011232:      	addi	sp, sp, -16
20011234:      	sw	a0, 12(sp)
20011236:      	j	0x20011238 <ExceptionHandler+0x6>
20011238:      	j	0x20011238 <ExceptionHandler+0x6>

2001123a <UserTimer>:
2001123a:      	j	0x2001123c <UserTimer+0x2>
2001123c:      	j	0x2001123c <UserTimer+0x2>

2001123e <default_pre_init>:
2001123e:      	ret

20011240 <default_mp_hook>:
20011240:      	addi	sp, sp, -16
20011242:      	sw	ra, 12(sp)
20011244:      	auipc	ra, 0
20011248:      	jalr	484(ra)
2001124c:      	sw	a0, 8(sp)
2001124e:      	j	0x20011250 <default_mp_hook+0x10>
20011250:      	lw	a0, 8(sp)
20011252:      	li	a1, 0
20011254:      	bne	a0, a1, 0x20011262 <default_mp_hook+0x22>
20011258:      	j	0x2001125a <default_mp_hook+0x1a>
2001125a:      	li	a0, 1
2001125c:      	lw	ra, 12(sp)
2001125e:      	addi	sp, sp, 16
20011260:      	ret
20011262:      	auipc	ra, 0
20011266:      	jalr	114(ra)
2001126a:      	j	0x20011262 <default_mp_hook+0x22>

2001126c <riscv::register::mcause::read::h8f87985a97eb70d1>:
2001126c:      	addi	sp, sp, -16
2001126e:      	sw	ra, 12(sp)
20011270:      	auipc	ra, 0
20011274:      	jalr	22(ra)
20011278:      	sw	a0, 4(sp)
2001127a:      	j	0x2001127c <riscv::register::mcause::read::h8f87985a97eb70d1+0x10>
2001127c:      	lw	a0, 4(sp)
2001127e:      	sw	a0, 8(sp)
20011280:      	lw	ra, 12(sp)
20011282:      	addi	sp, sp, 16
20011284:      	ret

20011286 <riscv::register::mcause::_read::haf812541e1230587>:
20011286:      	addi	sp, sp, -16
20011288:      	csrr	a0, mcause
2001128c:      	sw	a0, 12(sp)
2001128e:      	j	0x20011290 <riscv::register::mcause::_read::haf812541e1230587+0xa>
20011290:      	lw	a0, 12(sp)
20011292:      	addi	sp, sp, 16
20011294:      	ret

20011296 <riscv::register::mcause::Mcause::is_exception::hf1ea8d8b67f750b4>:
20011296:      	addi	sp, sp, -16
20011298:      	sw	ra, 12(sp)
2001129a:      	sw	a0, 8(sp)
2001129c:      	auipc	ra, 0
200112a0:      	jalr	24(ra)
200112a4:      	sw	a0, 4(sp)
200112a6:      	j	0x200112a8 <riscv::register::mcause::Mcause::is_exception::hf1ea8d8b67f750b4+0x12>
200112a8:      	lw	a0, 4(sp)
200112aa:      	xori	a0, a0, 1
200112ae:      	lw	ra, 12(sp)
200112b0:      	addi	sp, sp, 16
200112b2:      	ret

200112b4 <riscv::register::mcause::Mcause::is_interrupt::hb62b5afc548b09e5>:
200112b4:      	addi	sp, sp, -16
200112b6:      	sw	a0, 12(sp)
200112b8:      	lw	a0, 0(a0)
200112ba:      	srli	a0, a0, 31
200112bc:      	addi	a0, a0, -1
200112be:      	seqz	a0, a0
200112c2:      	addi	sp, sp, 16
200112c4:      	ret

200112c6 <riscv::register::mcause::Mcause::code::h3f78ce23e3ec9d4e>:
200112c6:      	addi	sp, sp, -16
200112c8:      	sw	a0, 12(sp)
200112ca:      	lw	a0, 0(a0)
200112cc:      	slli	a0, a0, 1
200112ce:      	srli	a0, a0, 1
200112d0:      	addi	sp, sp, 16
200112d2:      	ret

200112d4 <riscv::asm::wfi::h36bb3364b55cea95>:
200112d4:      	wfi	
200112d8:      	j	0x200112da <riscv::asm::wfi::h36bb3364b55cea95+0x6>
200112da:      	ret

200112dc <r0::zero_bss::h52450858664766b0>:
200112dc:      	addi	sp, sp, -48
200112de:      	sw	ra, 44(sp)
200112e0:      	sw	a1, 12(sp)
200112e2:      	sw	a0, 16(sp)
200112e4:      	sw	a1, 20(sp)
200112e6:      	j	0x200112e8 <r0::zero_bss::h52450858664766b0+0xc>
200112e8:      	lw	a1, 12(sp)
200112ea:      	lw	a0, 16(sp)
200112ec:      	bltu	a0, a1, 0x200112f8 <r0::zero_bss::h52450858664766b0+0x1c>
200112f0:      	j	0x200112f2 <r0::zero_bss::h52450858664766b0+0x16>
200112f2:      	lw	ra, 44(sp)
200112f4:      	addi	sp, sp, 48
200112f6:      	ret
200112f8:      	lw	a0, 16(sp)
200112fa:      	sw	a0, 4(sp)
200112fc:      	auipc	ra, 0
20011300:      	jalr	158(ra)
20011304:      	mv	a1, a0
20011306:      	sw	a1, 8(sp)
20011308:      	sw	a0, 24(sp)
2001130a:      	sw	a0, 28(sp)
2001130c:      	j	0x2001130e <r0::zero_bss::h52450858664766b0+0x32>
2001130e:      	lw	a1, 8(sp)
20011310:      	lw	a0, 4(sp)
20011312:      	auipc	ra, 0
20011316:      	jalr	214(ra)
2001131a:      	j	0x2001131c <r0::zero_bss::h52450858664766b0+0x40>
2001131c:      	lw	a0, 16(sp)
2001131e:      	sw	a0, 32(sp)
20011320:      	li	a1, 1
20011322:      	sw	a1, 36(sp)
20011324:      	addi	a0, a0, 4
20011326:      	sw	a0, 0(sp)
20011328:      	sw	a0, 40(sp)
2001132a:      	j	0x2001132c <r0::zero_bss::h52450858664766b0+0x50>
2001132c:      	lw	a0, 0(sp)
2001132e:      	sw	a0, 16(sp)
20011330:      	j	0x200112e8 <r0::zero_bss::h52450858664766b0+0xc>

20011332 <r0::init_data::h8de6df0f9f124521>:
20011332:      	addi	sp, sp, -64
20011334:      	sw	ra, 60(sp)
20011336:      	sw	a1, 20(sp)
20011338:      	sw	a0, 24(sp)
2001133a:      	sw	a2, 28(sp)
2001133c:      	sw	a1, 32(sp)
2001133e:      	j	0x20011340 <r0::init_data::h8de6df0f9f124521+0xe>
20011340:      	lw	a1, 20(sp)
20011342:      	lw	a0, 24(sp)
20011344:      	bltu	a0, a1, 0x20011350 <r0::init_data::h8de6df0f9f124521+0x1e>
20011348:      	j	0x2001134a <r0::init_data::h8de6df0f9f124521+0x18>
2001134a:      	lw	ra, 60(sp)
2001134c:      	addi	sp, sp, 64
2001134e:      	ret
20011350:      	lw	a0, 24(sp)
20011352:      	sw	a0, 12(sp)
20011354:      	lw	a0, 28(sp)
20011356:      	auipc	ra, 0
2001135a:      	jalr	160(ra)
2001135e:      	sw	a0, 16(sp)
20011360:      	j	0x20011362 <r0::init_data::h8de6df0f9f124521+0x30>
20011362:      	lw	a1, 16(sp)
20011364:      	lw	a0, 12(sp)
20011366:      	auipc	ra, 0
2001136a:      	jalr	182(ra)
2001136e:      	j	0x20011370 <r0::init_data::h8de6df0f9f124521+0x3e>
20011370:      	lw	a0, 24(sp)
20011372:      	sw	a0, 36(sp)
20011374:      	li	a1, 1
20011376:      	sw	a1, 40(sp)
20011378:      	addi	a0, a0, 4
2001137a:      	sw	a0, 8(sp)
2001137c:      	sw	a0, 44(sp)
2001137e:      	j	0x20011380 <r0::init_data::h8de6df0f9f124521+0x4e>
20011380:      	lw	a0, 8(sp)
20011382:      	sw	a0, 24(sp)
20011384:      	lw	a0, 28(sp)
20011386:      	sw	a0, 48(sp)
20011388:      	li	a1, 1
2001138a:      	sw	a1, 52(sp)
2001138c:      	addi	a0, a0, 4
2001138e:      	sw	a0, 4(sp)
20011390:      	sw	a0, 56(sp)
20011392:      	j	0x20011394 <r0::init_data::h8de6df0f9f124521+0x62>
20011394:      	lw	a0, 4(sp)
20011396:      	sw	a0, 28(sp)
20011398:      	j	0x20011340 <r0::init_data::h8de6df0f9f124521+0xe>

2001139a <core::mem::maybe_uninit::MaybeUninit<T>::zeroed::h97066acba5082e42>:
2001139a:      	addi	sp, sp, -32
2001139c:      	sw	ra, 28(sp)
2001139e:      	lw	a0, 12(sp)
200113a0:      	sw	a0, 4(sp)
200113a2:      	j	0x200113a4 <core::mem::maybe_uninit::MaybeUninit<T>::zeroed::h97066acba5082e42+0xa>
200113a4:      	addi	a0, sp, 4
200113a6:      	sw	a0, 8(sp)
200113a8:      	j	0x200113aa <core::mem::maybe_uninit::MaybeUninit<T>::zeroed::h97066acba5082e42+0x10>
200113aa:      	addi	a0, sp, 4
200113ac:      	sw	a0, 16(sp)
200113ae:      	li	a1, 0
200113b0:      	sb	a1, 23(sp)
200113b4:      	li	a2, 1
200113b6:      	sw	a2, 24(sp)
200113b8:      	auipc	ra, 0
200113bc:      	jalr	18(ra)
200113c0:      	j	0x200113c2 <core::mem::maybe_uninit::MaybeUninit<T>::zeroed::h97066acba5082e42+0x28>
200113c2:      	lw	a0, 4(sp)
200113c4:      	lw	ra, 28(sp)
200113c6:      	addi	sp, sp, 32
200113c8:      	ret

200113ca <core::intrinsics::write_bytes::h0a05396fb0592f98>:
200113ca:      	addi	sp, sp, -16
200113cc:      	sw	ra, 12(sp)
200113ce:      	sw	a0, 0(sp)
200113d0:      	sb	a1, 7(sp)
200113d4:      	sw	a2, 8(sp)
200113d6:      	slli	a2, a2, 2
200113d8:      	auipc	ra, 3
200113dc:      	jalr	402(ra)
200113e0:      	j	0x200113e2 <core::intrinsics::write_bytes::h0a05396fb0592f98+0x18>
200113e2:      	lw	ra, 12(sp)
200113e4:      	addi	sp, sp, 16
200113e6:      	ret

200113e8 <core::ptr::write_volatile::h446ae1dcc735566d>:
200113e8:      	addi	sp, sp, -16
200113ea:      	sw	a0, 8(sp)
200113ec:      	sw	a1, 12(sp)
200113ee:      	sw	a1, 0(a0)
200113f0:      	j	0x200113f2 <core::ptr::write_volatile::h446ae1dcc735566d+0xa>
200113f2:      	addi	sp, sp, 16
200113f4:      	ret

200113f6 <core::ptr::read::h358d300ff165c883>:
200113f6:      	addi	sp, sp, -32
200113f8:      	sw	a0, 4(sp)
200113fa:      	sw	a0, 12(sp)
200113fc:      	lw	a0, 24(sp)
200113fe:      	sw	a0, 8(sp)
20011400:      	j	0x20011402 <core::ptr::read::h358d300ff165c883+0xc>
20011402:      	addi	a0, sp, 8
20011404:      	sw	a0, 16(sp)
20011406:      	j	0x20011408 <core::ptr::read::h358d300ff165c883+0x12>
20011408:      	lw	a0, 4(sp)
2001140a:      	lw	a0, 0(a0)
2001140c:      	sw	a0, 0(sp)
2001140e:      	sw	a0, 8(sp)
20011410:      	sw	a0, 20(sp)
20011412:      	sw	a0, 28(sp)
20011414:      	j	0x20011416 <core::ptr::read::h358d300ff165c883+0x20>
20011416:      	lw	a0, 0(sp)
20011418:      	addi	sp, sp, 32
2001141a:      	ret

2001141c <core::ptr::write::h7321793789288b21>:
2001141c:      	addi	sp, sp, -16
2001141e:      	sw	a1, 8(sp)
20011420:      	sw	a0, 12(sp)
20011422:      	sw	a1, 0(a0)
20011424:      	addi	sp, sp, 16
20011426:      	ret

20011428 <riscv::register::mhartid::read::hb62f0232dce3f2d7>:
20011428:      	addi	sp, sp, -16
2001142a:      	sw	ra, 12(sp)
2001142c:      	auipc	ra, 0
20011430:      	jalr	20(ra)
20011434:      	sw	a0, 8(sp)
20011436:      	j	0x20011438 <riscv::register::mhartid::read::hb62f0232dce3f2d7+0x10>
20011438:      	lw	a0, 8(sp)
2001143a:      	lw	ra, 12(sp)
2001143c:      	addi	sp, sp, 16
2001143e:      	ret

20011440 <riscv::register::mhartid::_read::h6ec5fa0c5174d495>:
20011440:      	addi	sp, sp, -16
20011442:      	csrr	a0, mhartid
20011446:      	sw	a0, 12(sp)
20011448:      	j	0x2001144a <riscv::register::mhartid::_read::h6ec5fa0c5174d495+0xa>
2001144a:      	lw	a0, 12(sp)
2001144c:      	addi	sp, sp, 16
2001144e:      	ret

20011450 <<hifive1::stdout::SerialWrapper as core::fmt::Write>::write_str::h228422b632e9e674>:
20011450:      	addi	sp, sp, -144
20011452:      	sw	ra, 140(sp)
20011454:      	sw	a0, 32(sp)
20011456:      	sw	a0, 76(sp)
20011458:      	sw	a1, 80(sp)
2001145a:      	sw	a2, 84(sp)
2001145c:      	sw	a1, 120(sp)
2001145e:      	sw	a2, 124(sp)
20011460:      	sw	a1, 128(sp)
20011462:      	sw	a2, 132(sp)
20011464:      	sw	a1, 36(sp)
20011466:      	sw	a2, 40(sp)
20011468:      	j	0x2001146a <<hifive1::stdout::SerialWrapper as core::fmt::Write>::write_str::h228422b632e9e674+0x1a>
2001146a:      	lw	a1, 40(sp)
2001146c:      	lw	a0, 36(sp)
2001146e:      	auipc	ra, 0
20011472:      	jalr	692(ra)
20011476:      	sw	a0, 24(sp)
20011478:      	sw	a1, 28(sp)
2001147a:      	j	0x2001147c <<hifive1::stdout::SerialWrapper as core::fmt::Write>::write_str::h228422b632e9e674+0x2c>
2001147c:      	lw	a0, 28(sp)
2001147e:      	lw	a1, 24(sp)
20011480:      	sw	a1, 48(sp)
20011482:      	sw	a0, 52(sp)
20011484:      	j	0x20011486 <<hifive1::stdout::SerialWrapper as core::fmt::Write>::write_str::h228422b632e9e674+0x36>
20011486:      	addi	a0, sp, 48
20011488:      	auipc	ra, 2
2001148c:      	jalr	1630(ra)
20011490:      	sw	a0, 60(sp)
20011492:      	j	0x20011494 <<hifive1::stdout::SerialWrapper as core::fmt::Write>::write_str::h228422b632e9e674+0x44>
20011494:      	lw	a0, 60(sp)
20011496:      	snez	a1, a0
2001149a:      	li	a1, 0
2001149c:      	beq	a0, a1, 0x200114a6 <<hifive1::stdout::SerialWrapper as core::fmt::Write>::write_str::h228422b632e9e674+0x56>
200114a0:      	j	0x200114a2 <<hifive1::stdout::SerialWrapper as core::fmt::Write>::write_str::h228422b632e9e674+0x52>
200114a2:      	j	0x200114ae <<hifive1::stdout::SerialWrapper as core::fmt::Write>::write_str::h228422b632e9e674+0x5e>
200114a4:      	unimp	
200114a6:      	li	a0, 0
200114a8:      	sb	a0, 47(sp)
200114ac:      	j	0x20011524 <<hifive1::stdout::SerialWrapper as core::fmt::Write>::write_str::h228422b632e9e674+0xd4>
200114ae:      	lw	a0, 60(sp)
200114b0:      	sw	a0, 20(sp)
200114b2:      	sw	a0, 116(sp)
200114b4:      	lbu	a0, 0(a0)
200114b8:      	li	a1, 10
200114ba:      	beq	a0, a1, 0x200114d6 <<hifive1::stdout::SerialWrapper as core::fmt::Write>::write_str::h228422b632e9e674+0x86>
200114be:      	j	0x200114c0 <<hifive1::stdout::SerialWrapper as core::fmt::Write>::write_str::h228422b632e9e674+0x70>
200114c0:      	lw	a0, 32(sp)
200114c2:      	lw	a1, 20(sp)
200114c4:      	lb	a1, 0(a1)
200114c8:      	auipc	ra, 0
200114cc:      	jalr	254(ra)
200114d0:      	sb	a0, 75(sp)
200114d4:      	j	0x2001152e <<hifive1::stdout::SerialWrapper as core::fmt::Write>::write_str::h228422b632e9e674+0xde>
200114d6:      	lw	a0, 32(sp)
200114d8:      	li	a1, 13
200114da:      	auipc	ra, 0
200114de:      	jalr	236(ra)
200114e2:      	sb	a0, 71(sp)
200114e6:      	j	0x200114e8 <<hifive1::stdout::SerialWrapper as core::fmt::Write>::write_str::h228422b632e9e674+0x98>
200114e8:      	lbu	a0, 71(sp)
200114ec:      	andi	a0, a0, 1
200114ee:      	li	a1, 0
200114f0:      	beq	a0, a1, 0x200114fa <<hifive1::stdout::SerialWrapper as core::fmt::Write>::write_str::h228422b632e9e674+0xaa>
200114f4:      	j	0x200114f6 <<hifive1::stdout::SerialWrapper as core::fmt::Write>::write_str::h228422b632e9e674+0xa6>
200114f6:      	j	0x20011508 <<hifive1::stdout::SerialWrapper as core::fmt::Write>::write_str::h228422b632e9e674+0xb8>
200114f8:      	unimp	
200114fa:      	addi	a0, sp, 64
200114fc:      	auipc	ra, 0
20011500:      	jalr	1552(ra)
20011504:      	sw	a0, 16(sp)
20011506:      	j	0x20011512 <<hifive1::stdout::SerialWrapper as core::fmt::Write>::write_str::h228422b632e9e674+0xc2>
20011508:      	li	a1, 0
2001150a:      	li	a0, 1
2001150c:      	bne	a0, a1, 0x200114d6 <<hifive1::stdout::SerialWrapper as core::fmt::Write>::write_str::h228422b632e9e674+0x86>
20011510:      	j	0x200114f8 <<hifive1::stdout::SerialWrapper as core::fmt::Write>::write_str::h228422b632e9e674+0xa8>
20011512:      	lw	a0, 16(sp)
20011514:      	li	a1, 0
20011516:      	beq	a0, a1, 0x200114c0 <<hifive1::stdout::SerialWrapper as core::fmt::Write>::write_str::h228422b632e9e674+0x70>
2001151a:      	j	0x2001151c <<hifive1::stdout::SerialWrapper as core::fmt::Write>::write_str::h228422b632e9e674+0xcc>
2001151c:      	li	a0, 1
2001151e:      	sb	a0, 47(sp)
20011522:      	j	0x20011524 <<hifive1::stdout::SerialWrapper as core::fmt::Write>::write_str::h228422b632e9e674+0xd4>
20011524:      	lbu	a0, 47(sp)
20011528:      	lw	ra, 140(sp)
2001152a:      	addi	sp, sp, 144
2001152c:      	ret
2001152e:      	lbu	a0, 75(sp)
20011532:      	andi	a0, a0, 1
20011534:      	li	a1, 0
20011536:      	beq	a0, a1, 0x20011540 <<hifive1::stdout::SerialWrapper as core::fmt::Write>::write_str::h228422b632e9e674+0xf0>
2001153a:      	j	0x2001153c <<hifive1::stdout::SerialWrapper as core::fmt::Write>::write_str::h228422b632e9e674+0xec>
2001153c:      	j	0x2001154e <<hifive1::stdout::SerialWrapper as core::fmt::Write>::write_str::h228422b632e9e674+0xfe>
2001153e:      	unimp	
20011540:      	addi	a0, sp, 72
20011542:      	auipc	ra, 0
20011546:      	jalr	1482(ra)
2001154a:      	sw	a0, 12(sp)
2001154c:      	j	0x20011558 <<hifive1::stdout::SerialWrapper as core::fmt::Write>::write_str::h228422b632e9e674+0x108>
2001154e:      	li	a1, 0
20011550:      	li	a0, 1
20011552:      	bne	a0, a1, 0x200114c0 <<hifive1::stdout::SerialWrapper as core::fmt::Write>::write_str::h228422b632e9e674+0x70>
20011556:      	j	0x2001153e <<hifive1::stdout::SerialWrapper as core::fmt::Write>::write_str::h228422b632e9e674+0xee>
20011558:      	lw	a0, 12(sp)
2001155a:      	li	a1, 0
2001155c:      	beq	a0, a1, 0x20011486 <<hifive1::stdout::SerialWrapper as core::fmt::Write>::write_str::h228422b632e9e674+0x36>
20011560:      	j	0x20011562 <<hifive1::stdout::SerialWrapper as core::fmt::Write>::write_str::h228422b632e9e674+0x112>
20011562:      	li	a0, 1
20011564:      	sb	a0, 47(sp)
20011568:      	j	0x20011524 <<hifive1::stdout::SerialWrapper as core::fmt::Write>::write_str::h228422b632e9e674+0xd4>

2001156a <hifive1::stdout::write_str::h8ce1be0e612e6ca4>:
2001156a:      	addi	sp, sp, -16
2001156c:      	sw	ra, 12(sp)
2001156e:      	sw	a0, 0(sp)
20011570:      	sw	a1, 4(sp)
20011572:      	mv	a0, sp
20011574:      	sw	a0, 8(sp)
20011576:      	auipc	ra, 0
2001157a:      	jalr	1984(ra)
2001157e:      	j	0x20011580 <hifive1::stdout::write_str::h8ce1be0e612e6ca4+0x16>
20011580:      	lw	ra, 12(sp)
20011582:      	addi	sp, sp, 16
20011584:      	ret

20011586 <hifive1::stdout::write_str::{{closure}}::h7323f50854c6c9e4>:
20011586:      	addi	sp, sp, -32
20011588:      	sw	ra, 28(sp)
2001158a:      	sw	a0, 12(sp)
2001158c:      	sw	a1, 20(sp)
2001158e:      	lui	a0, 524288
20011592:      	mv	a0, a0
20011596:      	auipc	ra, 0
2001159a:      	jalr	1484(ra)
2001159e:      	sw	a0, 16(sp)
200115a0:      	j	0x200115a2 <hifive1::stdout::write_str::{{closure}}::h7323f50854c6c9e4+0x1c>
200115a2:      	lw	a0, 16(sp)
200115a4:      	li	a1, 0
200115a6:      	beq	a0, a1, 0x200115c0 <hifive1::stdout::write_str::{{closure}}::h7323f50854c6c9e4+0x3a>
200115aa:      	j	0x200115ac <hifive1::stdout::write_str::{{closure}}::h7323f50854c6c9e4+0x26>
200115ac:      	lw	a0, 16(sp)
200115ae:      	sw	a0, 24(sp)
200115b0:      	lw	a2, 12(sp)
200115b2:      	lw	a1, 0(a2)
200115b4:      	lw	a2, 4(a2)
200115b6:      	auipc	ra, 0
200115ba:      	jalr	-358(ra)
200115be:      	j	0x200115c0 <hifive1::stdout::write_str::{{closure}}::h7323f50854c6c9e4+0x3a>
200115c0:      	lw	ra, 28(sp)
200115c2:      	addi	sp, sp, 32
200115c4:      	ret

200115c6 <<e310x_hal::serial::Tx<UART> as embedded_hal::serial::Write<u8>>::write::hf099c1b4ae0ba0a1>:
200115c6:      	addi	sp, sp, -112
200115c8:      	sw	ra, 108(sp)
200115ca:      	sw	a0, 16(sp)
200115cc:      	sb	a1, 22(sp)
200115d0:      	sw	a0, 36(sp)
200115d2:      	sw	a0, 104(sp)
200115d4:      	j	0x200115d6 <<e310x_hal::serial::Tx<UART> as embedded_hal::serial::Write<u8>>::write::hf099c1b4ae0ba0a1+0x10>
200115d6:      	lui	a0, 65555
200115da:      	sw	a0, 60(sp)
200115dc:      	sw	a0, 80(sp)
200115de:      	sw	a0, 84(sp)
200115e0:      	auipc	ra, 2
200115e4:      	jalr	122(ra)
200115e8:      	sw	a0, 56(sp)
200115ea:      	sw	a0, 24(sp)
200115ec:      	j	0x200115ee <<e310x_hal::serial::Tx<UART> as embedded_hal::serial::Write<u8>>::write::hf099c1b4ae0ba0a1+0x28>
200115ee:      	addi	a0, sp, 24
200115f0:      	sw	a0, 40(sp)
200115f2:      	lw	a0, 24(sp)
200115f4:      	srli	a0, a0, 31
200115f6:      	sb	a0, 47(sp)
200115fa:      	sb	a0, 46(sp)
200115fe:      	sb	a0, 31(sp)
20011602:      	j	0x20011604 <<e310x_hal::serial::Tx<UART> as embedded_hal::serial::Write<u8>>::write::hf099c1b4ae0ba0a1+0x3e>
20011604:      	addi	a0, sp, 31
20011608:      	sw	a0, 48(sp)
2001160a:      	sw	a0, 52(sp)
2001160c:      	lb	a0, 31(sp)
20011610:      	sw	a0, 12(sp)
20011612:      	j	0x20011614 <<e310x_hal::serial::Tx<UART> as embedded_hal::serial::Write<u8>>::write::hf099c1b4ae0ba0a1+0x4e>
20011614:      	lw	a0, 12(sp)
20011616:      	andi	a0, a0, 1
20011618:      	li	a1, 0
2001161a:      	bne	a0, a1, 0x20011626 <<e310x_hal::serial::Tx<UART> as embedded_hal::serial::Write<u8>>::write::hf099c1b4ae0ba0a1+0x60>
2001161e:      	j	0x20011620 <<e310x_hal::serial::Tx<UART> as embedded_hal::serial::Write<u8>>::write::hf099c1b4ae0ba0a1+0x5a>
20011620:      	lw	a0, 16(sp)
20011622:      	sw	a0, 100(sp)
20011624:      	j	0x20011638 <<e310x_hal::serial::Tx<UART> as embedded_hal::serial::Write<u8>>::write::hf099c1b4ae0ba0a1+0x72>
20011626:      	li	a0, 1
20011628:      	sb	a0, 23(sp)
2001162c:      	j	0x2001162e <<e310x_hal::serial::Tx<UART> as embedded_hal::serial::Write<u8>>::write::hf099c1b4ae0ba0a1+0x68>
2001162e:      	lbu	a0, 23(sp)
20011632:      	lw	ra, 108(sp)
20011634:      	addi	sp, sp, 112
20011636:      	ret
20011638:      	addi	a0, sp, 22
2001163c:      	sw	a0, 32(sp)
2001163e:      	lui	a1, 65555
20011642:      	sw	a1, 8(sp)
20011644:      	sw	a1, 72(sp)
20011646:      	sw	a0, 76(sp)
20011648:      	li	a1, 0
2001164a:      	sw	a1, 68(sp)
2001164c:      	addi	a1, sp, 68
2001164e:      	sw	a1, 64(sp)
20011650:      	auipc	ra, 0
20011654:      	jalr	38(ra)
20011658:      	mv	a1, a0
2001165a:      	lw	a0, 8(sp)
2001165c:      	lw	a1, 0(a1)
2001165e:      	sw	a0, 88(sp)
20011660:      	sw	a1, 92(sp)
20011662:      	sw	a0, 96(sp)
20011664:      	auipc	ra, 2
20011668:      	jalr	8(ra)
2001166c:      	j	0x2001166e <<e310x_hal::serial::Tx<UART> as embedded_hal::serial::Write<u8>>::write::hf099c1b4ae0ba0a1+0xa8>
2001166e:      	li	a0, 0
20011670:      	sb	a0, 23(sp)
20011674:      	j	0x2001162e <<e310x_hal::serial::Tx<UART> as embedded_hal::serial::Write<u8>>::write::hf099c1b4ae0ba0a1+0x68>

20011676 <<e310x_hal::serial::Tx<UART> as embedded_hal::serial::Write<u8>>::write::{{closure}}::h31835cd9fb8da21d>:
20011676:      	addi	sp, sp, -32
20011678:      	sw	a0, 8(sp)
2001167a:      	sw	a1, 12(sp)
2001167c:      	sw	a1, 20(sp)
2001167e:      	sw	a1, 16(sp)
20011680:      	sw	a1, 4(sp)
20011682:      	j	0x20011684 <<e310x_hal::serial::Tx<UART> as embedded_hal::serial::Write<u8>>::write::{{closure}}::h31835cd9fb8da21d+0xe>
20011684:      	lw	a1, 4(sp)
20011686:      	lw	a0, 8(sp)
20011688:      	lb	a0, 0(a0)
2001168c:      	sw	a1, 24(sp)
2001168e:      	sb	a0, 31(sp)
20011692:      	sb	a0, 0(a1)
20011696:      	lw	a0, 24(sp)
20011698:      	sw	a0, 0(sp)
2001169a:      	j	0x2001169c <<e310x_hal::serial::Tx<UART> as embedded_hal::serial::Write<u8>>::write::{{closure}}::h31835cd9fb8da21d+0x26>
2001169c:      	lw	a0, 0(sp)
2001169e:      	addi	sp, sp, 32
200116a0:      	ret

200116a2 <<usize as bit_field::BitField>::get_bit::had15d67d422e2721>:
200116a2:      	addi	sp, sp, -32
200116a4:      	sw	a1, 16(sp)
200116a6:      	sw	a0, 20(sp)
200116a8:      	sw	a0, 24(sp)
200116aa:      	sw	a1, 28(sp)
200116ac:      	li	a0, 31
200116ae:      	bltu	a0, a1, 0x200116d0 <<usize as bit_field::BitField>::get_bit::had15d67d422e2721+0x2e>
200116b2:      	j	0x200116b4 <<usize as bit_field::BitField>::get_bit::had15d67d422e2721+0x12>
200116b4:      	lw	a2, 16(sp)
200116b6:      	lw	a0, 20(sp)
200116b8:      	lw	a0, 0(a0)
200116ba:      	sw	a0, 8(sp)
200116bc:      	andi	a0, a2, -32
200116c0:      	li	a1, 1
200116c2:      	sll	a1, a1, a2
200116c6:      	sw	a1, 12(sp)
200116c8:      	li	a1, 0
200116ca:      	bne	a0, a1, 0x200116fc <<usize as bit_field::BitField>::get_bit::had15d67d422e2721+0x5a>
200116ce:      	j	0x200116ee <<usize as bit_field::BitField>::get_bit::had15d67d422e2721+0x4c>
200116d0:      	lui	a0, 131093
200116d4:      	addi	a0, a0, -428
200116d8:      	lui	a1, 131093
200116dc:      	addi	a2, a1, -300
200116e0:      	li	a1, 40
200116e4:      	auipc	ra, 2
200116e8:      	jalr	1394(ra)
200116ec:      	unimp	
200116ee:      	lw	a0, 8(sp)
200116f0:      	lw	a1, 12(sp)
200116f2:      	and	a0, a0, a1
200116f4:      	snez	a0, a0
200116f8:      	addi	sp, sp, 32
200116fa:      	ret
200116fc:      	lui	a0, 131093
20011700:      	addi	a0, a0, -272
20011704:      	lui	a1, 131093
20011708:      	addi	a2, a1, -300
2001170c:      	li	a1, 35
20011710:      	auipc	ra, 2
20011714:      	jalr	1350(ra)
20011718:      	unimp	

2001171a <core::ptr::drop_in_place<core::convert::Infallible>::h159df28be3c750d3>:
2001171a:      	addi	sp, sp, -16
2001171c:      	sw	a0, 12(sp)
2001171e:      	addi	sp, sp, 16
20011720:      	ret

20011722 <core::slice::iter::<impl core::iter::traits::collect::IntoIterator for &[T]>::into_iter::h608955b62706fdcf>:
20011722:      	addi	sp, sp, -32
20011724:      	sw	ra, 28(sp)
20011726:      	sw	a0, 16(sp)
20011728:      	sw	a1, 20(sp)
2001172a:      	auipc	ra, 2
2001172e:      	jalr	710(ra)
20011732:      	sw	a0, 8(sp)
20011734:      	sw	a1, 12(sp)
20011736:      	j	0x20011738 <core::slice::iter::<impl core::iter::traits::collect::IntoIterator for &[T]>::into_iter::h608955b62706fdcf+0x16>
20011738:      	lw	a1, 12(sp)
2001173a:      	lw	a0, 8(sp)
2001173c:      	lw	ra, 28(sp)
2001173e:      	addi	sp, sp, 32
20011740:      	ret

20011742 <<T as core::convert::From<T>>::from::h8d262e7e726aca60>:
20011742:      	addi	sp, sp, -16
20011744:      	sw	a0, 12(sp)
20011746:      	addi	sp, sp, 16
20011748:      	ret

2001174a <<T as core::convert::Into<U>>::into::h3b410a744129dcb4>:
2001174a:      	addi	sp, sp, -16
2001174c:      	sw	ra, 12(sp)
2001174e:      	sw	a0, 8(sp)
20011750:      	auipc	ra, 0
20011754:      	jalr	-14(ra)
20011758:      	sw	a0, 4(sp)
2001175a:      	j	0x2001175c <<T as core::convert::Into<U>>::into::h3b410a744129dcb4+0x12>
2001175c:      	lw	a0, 4(sp)
2001175e:      	lw	ra, 12(sp)
20011760:      	addi	sp, sp, 16
20011762:      	ret

20011764 <e310x_hal::gpio::PeripheralAccess::set_output_value::hfeb73011a1c15e0a>:
20011764:      	addi	sp, sp, -64
20011766:      	sw	ra, 60(sp)
20011768:      	sw	a0, 8(sp)
2001176a:      	mv	a2, a1
2001176c:      	sw	a2, 12(sp)
2001176e:      	sw	a0, 16(sp)
20011770:      	sb	a1, 23(sp)
20011774:      	lui	a0, 65554
20011778:      	sw	a0, 24(sp)
2001177a:      	j	0x2001177c <e310x_hal::gpio::PeripheralAccess::set_output_value::hfeb73011a1c15e0a+0x18>
2001177c:      	lui	a0, 65554
20011780:      	addi	a0, a0, 12
20011782:      	sw	a0, 4(sp)
20011784:      	sw	a0, 28(sp)
20011786:      	sw	a0, 32(sp)
20011788:      	j	0x2001178a <e310x_hal::gpio::PeripheralAccess::set_output_value::hfeb73011a1c15e0a+0x26>
2001178a:      	lw	a1, 8(sp)
2001178c:      	lw	a0, 12(sp)
2001178e:      	lw	a2, 4(sp)
20011790:      	sw	a2, 44(sp)
20011792:      	sw	a1, 48(sp)
20011794:      	sb	a0, 55(sp)
20011798:      	li	a0, 1
2001179a:      	sll	a0, a0, a1
2001179e:      	sw	a0, 0(sp)
200117a0:      	li	a0, 0
200117a2:      	bne	a0, a0, 0x200117b6 <e310x_hal::gpio::PeripheralAccess::set_output_value::hfeb73011a1c15e0a+0x52>
200117a6:      	j	0x200117a8 <e310x_hal::gpio::PeripheralAccess::set_output_value::hfeb73011a1c15e0a+0x44>
200117a8:      	lw	a0, 12(sp)
200117aa:      	lw	a1, 0(sp)
200117ac:      	sw	a1, 56(sp)
200117ae:      	li	a1, 0
200117b0:      	bne	a0, a1, 0x200117ee <e310x_hal::gpio::PeripheralAccess::set_output_value::hfeb73011a1c15e0a+0x8a>
200117b4:      	j	0x200117d4 <e310x_hal::gpio::PeripheralAccess::set_output_value::hfeb73011a1c15e0a+0x70>
200117b6:      	lui	a0, 131093
200117ba:      	addi	a0, a0, -128
200117be:      	lui	a1, 131093
200117c2:      	addi	a2, a1, -148
200117c6:      	li	a1, 35
200117ca:      	auipc	ra, 2
200117ce:      	jalr	1164(ra)
200117d2:      	unimp	
200117d4:      	lw	a0, 4(sp)
200117d6:      	lw	a1, 0(sp)
200117d8:      	not	a1, a1
200117dc:      	li	a2, 4
200117de:      	sb	a2, 43(sp)
200117e2:      	auipc	ra, 0
200117e6:      	jalr	210(ra)
200117ea:      	sw	a0, 36(sp)
200117ec:      	j	0x20011804 <e310x_hal::gpio::PeripheralAccess::set_output_value::hfeb73011a1c15e0a+0xa0>
200117ee:      	lw	a1, 0(sp)
200117f0:      	lw	a0, 4(sp)
200117f2:      	li	a2, 4
200117f4:      	sb	a2, 42(sp)
200117f8:      	auipc	ra, 0
200117fc:      	jalr	136(ra)
20011800:      	sw	a0, 36(sp)
20011802:      	j	0x20011804 <e310x_hal::gpio::PeripheralAccess::set_output_value::hfeb73011a1c15e0a+0xa0>
20011804:      	j	0x20011806 <e310x_hal::gpio::PeripheralAccess::set_output_value::hfeb73011a1c15e0a+0xa2>
20011806:      	lw	ra, 60(sp)
20011808:      	addi	sp, sp, 64
2001180a:      	ret

2001180c <core::sync::atomic::atomic_and::h7b13b8136aea4def>:
2001180c:      	addi	sp, sp, -32
2001180e:      	sw	a1, 4(sp)
20011810:      	sw	a0, 8(sp)
20011812:      	sb	a2, 19(sp)
20011816:      	sw	a0, 24(sp)
20011818:      	sw	a1, 28(sp)
2001181a:      	andi	a0, a2, 255
2001181e:      	sw	a0, 12(sp)
20011820:      	lw	a0, 12(sp)
20011822:      	slli	a0, a0, 2
20011824:      	lui	a1, 131093
20011828:      	addi	a1, a1, -92
2001182c:      	add	a0, a0, a1
2001182e:      	lw	a0, 0(a0)
20011830:      	jr	a0
20011832:      	unimp	

20011834 <.LBB0_3>:
20011834:      	lw	a0, 8(sp)
20011836:      	lw	a1, 4(sp)
20011838:      	amoand.w	a0, a1, (a0)
2001183c:      	sw	a0, 20(sp)
2001183e:      	j	0x2001187e <.LBB0_7+0x1a>

20011840 <.LBB0_4>:
20011840:      	lw	a0, 8(sp)
20011842:      	lw	a1, 4(sp)
20011844:      	amoand.w.rl	a0, a1, (a0)
20011848:      	sw	a0, 20(sp)
2001184a:      	j	0x2001187c <.LBB0_7+0x18>

2001184c <.LBB0_5>:
2001184c:      	lw	a0, 8(sp)
2001184e:      	lw	a1, 4(sp)
20011850:      	amoand.w.aq	a0, a1, (a0)
20011854:      	sw	a0, 20(sp)
20011856:      	j	0x2001187a <.LBB0_7+0x16>

20011858 <.LBB0_6>:
20011858:      	lw	a0, 8(sp)
2001185a:      	lw	a1, 4(sp)
2001185c:      	amoand.w.aqrl	a0, a1, (a0)
20011860:      	sw	a0, 20(sp)
20011862:      	j	0x20011878 <.LBB0_7+0x14>

20011864 <.LBB0_7>:
20011864:      	lw	a0, 8(sp)
20011866:      	lw	a1, 4(sp)
20011868:      	amoand.w.aqrl	a0, a1, (a0)
2001186c:      	sw	a0, 20(sp)
2001186e:      	j	0x20011870 <.LBB0_7+0xc>
20011870:      	j	0x20011872 <.LBB0_7+0xe>
20011872:      	lw	a0, 20(sp)
20011874:      	addi	sp, sp, 32
20011876:      	ret
20011878:      	j	0x20011872 <.LBB0_7+0xe>
2001187a:      	j	0x20011872 <.LBB0_7+0xe>
2001187c:      	j	0x20011872 <.LBB0_7+0xe>
2001187e:      	j	0x20011872 <.LBB0_7+0xe>

20011880 <core::sync::atomic::AtomicU32::fetch_or::h496ba61d89cc2eb2>:
20011880:      	addi	sp, sp, -48
20011882:      	sw	ra, 44(sp)
20011884:      	sw	a1, 16(sp)
20011886:      	mv	a3, a2
20011888:      	sw	a3, 20(sp)
2001188a:      	sw	a0, 28(sp)
2001188c:      	sw	a1, 32(sp)
2001188e:      	sb	a2, 39(sp)
20011892:      	mv	a1, a0
20011894:      	sw	a1, 24(sp)
20011896:      	sw	a0, 40(sp)
20011898:      	j	0x2001189a <core::sync::atomic::AtomicU32::fetch_or::h496ba61d89cc2eb2+0x1a>
2001189a:      	lw	a2, 20(sp)
2001189c:      	lw	a1, 16(sp)
2001189e:      	lw	a0, 24(sp)
200118a0:      	auipc	ra, 0
200118a4:      	jalr	72(ra)
200118a8:      	sw	a0, 12(sp)
200118aa:      	j	0x200118ac <core::sync::atomic::AtomicU32::fetch_or::h496ba61d89cc2eb2+0x2c>
200118ac:      	lw	a0, 12(sp)
200118ae:      	lw	ra, 44(sp)
200118b0:      	addi	sp, sp, 48
200118b2:      	ret

200118b4 <core::sync::atomic::AtomicU32::fetch_and::h70cb17ea7a6aa6dd>:
200118b4:      	addi	sp, sp, -48
200118b6:      	sw	ra, 44(sp)
200118b8:      	sw	a1, 16(sp)
200118ba:      	mv	a3, a2
200118bc:      	sw	a3, 20(sp)
200118be:      	sw	a0, 28(sp)
200118c0:      	sw	a1, 32(sp)
200118c2:      	sb	a2, 39(sp)
200118c6:      	mv	a1, a0
200118c8:      	sw	a1, 24(sp)
200118ca:      	sw	a0, 40(sp)
200118cc:      	j	0x200118ce <core::sync::atomic::AtomicU32::fetch_and::h70cb17ea7a6aa6dd+0x1a>
200118ce:      	lw	a2, 20(sp)
200118d0:      	lw	a1, 16(sp)
200118d2:      	lw	a0, 24(sp)
200118d4:      	auipc	ra, 0
200118d8:      	jalr	-200(ra)
200118dc:      	sw	a0, 12(sp)
200118de:      	j	0x200118e0 <core::sync::atomic::AtomicU32::fetch_and::h70cb17ea7a6aa6dd+0x2c>
200118e0:      	lw	a0, 12(sp)
200118e2:      	lw	ra, 44(sp)
200118e4:      	addi	sp, sp, 48
200118e6:      	ret

200118e8 <core::sync::atomic::atomic_or::hfd6da28d0db229e3>:
200118e8:      	addi	sp, sp, -32
200118ea:      	sw	a1, 4(sp)
200118ec:      	sw	a0, 8(sp)
200118ee:      	sb	a2, 19(sp)
200118f2:      	sw	a0, 24(sp)
200118f4:      	sw	a1, 28(sp)
200118f6:      	andi	a0, a2, 255
200118fa:      	sw	a0, 12(sp)
200118fc:      	lw	a0, 12(sp)
200118fe:      	slli	a0, a0, 2
20011900:      	lui	a1, 131093
20011904:      	addi	a1, a1, -72
20011908:      	add	a0, a0, a1
2001190a:      	lw	a0, 0(a0)
2001190c:      	jr	a0
2001190e:      	unimp	

20011910 <.LBB3_3>:
20011910:      	lw	a0, 8(sp)
20011912:      	lw	a1, 4(sp)
20011914:      	amoor.w	a0, a1, (a0)
20011918:      	sw	a0, 20(sp)
2001191a:      	j	0x2001195a <.LBB3_7+0x1a>

2001191c <.LBB3_4>:
2001191c:      	lw	a0, 8(sp)
2001191e:      	lw	a1, 4(sp)
20011920:      	amoor.w.rl	a0, a1, (a0)
20011924:      	sw	a0, 20(sp)
20011926:      	j	0x20011958 <.LBB3_7+0x18>

20011928 <.LBB3_5>:
20011928:      	lw	a0, 8(sp)
2001192a:      	lw	a1, 4(sp)
2001192c:      	amoor.w.aq	a0, a1, (a0)
20011930:      	sw	a0, 20(sp)
20011932:      	j	0x20011956 <.LBB3_7+0x16>

20011934 <.LBB3_6>:
20011934:      	lw	a0, 8(sp)
20011936:      	lw	a1, 4(sp)
20011938:      	amoor.w.aqrl	a0, a1, (a0)
2001193c:      	sw	a0, 20(sp)
2001193e:      	j	0x20011954 <.LBB3_7+0x14>

20011940 <.LBB3_7>:
20011940:      	lw	a0, 8(sp)
20011942:      	lw	a1, 4(sp)
20011944:      	amoor.w.aqrl	a0, a1, (a0)
20011948:      	sw	a0, 20(sp)
2001194a:      	j	0x2001194c <.LBB3_7+0xc>
2001194c:      	j	0x2001194e <.LBB3_7+0xe>
2001194e:      	lw	a0, 20(sp)
20011950:      	addi	sp, sp, 32
20011952:      	ret
20011954:      	j	0x2001194e <.LBB3_7+0xe>
20011956:      	j	0x2001194e <.LBB3_7+0xe>
20011958:      	j	0x2001194e <.LBB3_7+0xe>
2001195a:      	j	0x2001194e <.LBB3_7+0xe>

2001195c <_ZN129_$LT$e310x_hal..gpio..gpio0..Pin19$LT$e310x_hal..gpio..Output$LT$MODE$GT$$GT$$u20$as$u20$embedded_hal..digital..v2..OutputPin$GT$7set_low17he69bc358bed48963E>:
2001195c:      	addi	sp, sp, -16
2001195e:      	sw	ra, 12(sp)
20011960:      	sw	a0, 8(sp)
20011962:      	li	a0, 19
20011964:      	li	a1, 0
20011966:      	auipc	ra, 0
2001196a:      	jalr	-514(ra)
2001196e:      	j	0x20011970 <_ZN129_$LT$e310x_hal..gpio..gpio0..Pin19$LT$e310x_hal..gpio..Output$LT$MODE$GT$$GT$$u20$as$u20$embedded_hal..digital..v2..OutputPin$GT$7set_low17he69bc358bed48963E+0x14>
20011970:      	lw	ra, 12(sp)
20011972:      	addi	sp, sp, 16
20011974:      	ret

20011976 <_ZN129_$LT$e310x_hal..gpio..gpio0..Pin19$LT$e310x_hal..gpio..Output$LT$MODE$GT$$GT$$u20$as$u20$embedded_hal..digital..v2..OutputPin$GT$8set_high17hca1e9e5fbefc4369E>:
20011976:      	addi	sp, sp, -16
20011978:      	sw	ra, 12(sp)
2001197a:      	sw	a0, 8(sp)
2001197c:      	li	a0, 19
2001197e:      	li	a1, 1
20011980:      	auipc	ra, 0
20011984:      	jalr	-540(ra)
20011988:      	j	0x2001198a <_ZN129_$LT$e310x_hal..gpio..gpio0..Pin19$LT$e310x_hal..gpio..Output$LT$MODE$GT$$GT$$u20$as$u20$embedded_hal..digital..v2..OutputPin$GT$8set_high17hca1e9e5fbefc4369E+0x14>
2001198a:      	lw	ra, 12(sp)
2001198c:      	addi	sp, sp, 16
2001198e:      	ret

20011990 <_ZN129_$LT$e310x_hal..gpio..gpio0..Pin21$LT$e310x_hal..gpio..Output$LT$MODE$GT$$GT$$u20$as$u20$embedded_hal..digital..v2..OutputPin$GT$7set_low17h34ea7f316dfdfd1eE>:
20011990:      	addi	sp, sp, -16
20011992:      	sw	ra, 12(sp)
20011994:      	sw	a0, 8(sp)
20011996:      	li	a0, 21
20011998:      	li	a1, 0
2001199a:      	auipc	ra, 0
2001199e:      	jalr	-566(ra)
200119a2:      	j	0x200119a4 <_ZN129_$LT$e310x_hal..gpio..gpio0..Pin21$LT$e310x_hal..gpio..Output$LT$MODE$GT$$GT$$u20$as$u20$embedded_hal..digital..v2..OutputPin$GT$7set_low17h34ea7f316dfdfd1eE+0x14>
200119a4:      	lw	ra, 12(sp)
200119a6:      	addi	sp, sp, 16
200119a8:      	ret

200119aa <_ZN129_$LT$e310x_hal..gpio..gpio0..Pin21$LT$e310x_hal..gpio..Output$LT$MODE$GT$$GT$$u20$as$u20$embedded_hal..digital..v2..OutputPin$GT$8set_high17hc4453fa799f7ee3eE>:
200119aa:      	addi	sp, sp, -16
200119ac:      	sw	ra, 12(sp)
200119ae:      	sw	a0, 8(sp)
200119b0:      	li	a0, 21
200119b2:      	li	a1, 1
200119b4:      	auipc	ra, 0
200119b8:      	jalr	-592(ra)
200119bc:      	j	0x200119be <_ZN129_$LT$e310x_hal..gpio..gpio0..Pin21$LT$e310x_hal..gpio..Output$LT$MODE$GT$$GT$$u20$as$u20$embedded_hal..digital..v2..OutputPin$GT$8set_high17hc4453fa799f7ee3eE+0x14>
200119be:      	lw	ra, 12(sp)
200119c0:      	addi	sp, sp, 16
200119c2:      	ret

200119c4 <_ZN129_$LT$e310x_hal..gpio..gpio0..Pin22$LT$e310x_hal..gpio..Output$LT$MODE$GT$$GT$$u20$as$u20$embedded_hal..digital..v2..OutputPin$GT$7set_low17hb4623dfa684590fbE>:
200119c4:      	addi	sp, sp, -16
200119c6:      	sw	ra, 12(sp)
200119c8:      	sw	a0, 8(sp)
200119ca:      	li	a0, 22
200119cc:      	li	a1, 0
200119ce:      	auipc	ra, 0
200119d2:      	jalr	-618(ra)
200119d6:      	j	0x200119d8 <_ZN129_$LT$e310x_hal..gpio..gpio0..Pin22$LT$e310x_hal..gpio..Output$LT$MODE$GT$$GT$$u20$as$u20$embedded_hal..digital..v2..OutputPin$GT$7set_low17hb4623dfa684590fbE+0x14>
200119d8:      	lw	ra, 12(sp)
200119da:      	addi	sp, sp, 16
200119dc:      	ret

200119de <_ZN129_$LT$e310x_hal..gpio..gpio0..Pin22$LT$e310x_hal..gpio..Output$LT$MODE$GT$$GT$$u20$as$u20$embedded_hal..digital..v2..OutputPin$GT$8set_high17h1f6b31f178e59c54E>:
200119de:      	addi	sp, sp, -16
200119e0:      	sw	ra, 12(sp)
200119e2:      	sw	a0, 8(sp)
200119e4:      	li	a0, 22
200119e6:      	li	a1, 1
200119e8:      	auipc	ra, 0
200119ec:      	jalr	-644(ra)
200119f0:      	j	0x200119f2 <_ZN129_$LT$e310x_hal..gpio..gpio0..Pin22$LT$e310x_hal..gpio..Output$LT$MODE$GT$$GT$$u20$as$u20$embedded_hal..digital..v2..OutputPin$GT$8set_high17h1f6b31f178e59c54E+0x14>
200119f2:      	lw	ra, 12(sp)
200119f4:      	addi	sp, sp, 16
200119f6:      	ret

200119f8 <<e310x_hal::gpio::gpio0::Pin22<e310x_hal::gpio::Output<e310x_hal::gpio::Regular<e310x_hal::gpio::Invert>>> as hifive1::led::Led>::off::h1b092b4395f44c56>:
200119f8:      	addi	sp, sp, -16
200119fa:      	sw	ra, 12(sp)
200119fc:      	sw	a0, 8(sp)
200119fe:      	auipc	ra, 0
20011a02:      	jalr	-58(ra)
20011a06:      	j	0x20011a08 <<e310x_hal::gpio::gpio0::Pin22<e310x_hal::gpio::Output<e310x_hal::gpio::Regular<e310x_hal::gpio::Invert>>> as hifive1::led::Led>::off::h1b092b4395f44c56+0x10>
20011a08:      	lui	a0, 131093
20011a0c:      	addi	a0, a0, 36
20011a10:      	auipc	ra, 0
20011a14:      	jalr	282(ra)
20011a18:      	j	0x20011a1a <<e310x_hal::gpio::gpio0::Pin22<e310x_hal::gpio::Output<e310x_hal::gpio::Regular<e310x_hal::gpio::Invert>>> as hifive1::led::Led>::off::h1b092b4395f44c56+0x22>
20011a1a:      	lw	ra, 12(sp)
20011a1c:      	addi	sp, sp, 16
20011a1e:      	ret

20011a20 <<e310x_hal::gpio::gpio0::Pin22<e310x_hal::gpio::Output<e310x_hal::gpio::Regular<e310x_hal::gpio::Invert>>> as hifive1::led::Led>::on::h2bf504d412e21e4f>:
20011a20:      	addi	sp, sp, -16
20011a22:      	sw	ra, 12(sp)
20011a24:      	sw	a0, 8(sp)
20011a26:      	auipc	ra, 0
20011a2a:      	jalr	-72(ra)
20011a2e:      	j	0x20011a30 <<e310x_hal::gpio::gpio0::Pin22<e310x_hal::gpio::Output<e310x_hal::gpio::Regular<e310x_hal::gpio::Invert>>> as hifive1::led::Led>::on::h2bf504d412e21e4f+0x10>
20011a30:      	lui	a0, 131093
20011a34:      	addi	a0, a0, 52
20011a38:      	auipc	ra, 0
20011a3c:      	jalr	242(ra)
20011a40:      	j	0x20011a42 <<e310x_hal::gpio::gpio0::Pin22<e310x_hal::gpio::Output<e310x_hal::gpio::Regular<e310x_hal::gpio::Invert>>> as hifive1::led::Led>::on::h2bf504d412e21e4f+0x22>
20011a42:      	lw	ra, 12(sp)
20011a44:      	addi	sp, sp, 16
20011a46:      	ret

20011a48 <<e310x_hal::gpio::gpio0::Pin19<e310x_hal::gpio::Output<e310x_hal::gpio::Regular<e310x_hal::gpio::Invert>>> as hifive1::led::Led>::off::h97838b04d9a23c4b>:
20011a48:      	addi	sp, sp, -16
20011a4a:      	sw	ra, 12(sp)
20011a4c:      	sw	a0, 8(sp)
20011a4e:      	auipc	ra, 0
20011a52:      	jalr	-242(ra)
20011a56:      	j	0x20011a58 <<e310x_hal::gpio::gpio0::Pin19<e310x_hal::gpio::Output<e310x_hal::gpio::Regular<e310x_hal::gpio::Invert>>> as hifive1::led::Led>::off::h97838b04d9a23c4b+0x10>
20011a58:      	lui	a0, 131093
20011a5c:      	addi	a0, a0, 68
20011a60:      	auipc	ra, 0
20011a64:      	jalr	202(ra)
20011a68:      	j	0x20011a6a <<e310x_hal::gpio::gpio0::Pin19<e310x_hal::gpio::Output<e310x_hal::gpio::Regular<e310x_hal::gpio::Invert>>> as hifive1::led::Led>::off::h97838b04d9a23c4b+0x22>
20011a6a:      	lw	ra, 12(sp)
20011a6c:      	addi	sp, sp, 16
20011a6e:      	ret

20011a70 <<e310x_hal::gpio::gpio0::Pin19<e310x_hal::gpio::Output<e310x_hal::gpio::Regular<e310x_hal::gpio::Invert>>> as hifive1::led::Led>::on::h7d7d01d12a3723cb>:
20011a70:      	addi	sp, sp, -16
20011a72:      	sw	ra, 12(sp)
20011a74:      	sw	a0, 8(sp)
20011a76:      	auipc	ra, 0
20011a7a:      	jalr	-256(ra)
20011a7e:      	j	0x20011a80 <<e310x_hal::gpio::gpio0::Pin19<e310x_hal::gpio::Output<e310x_hal::gpio::Regular<e310x_hal::gpio::Invert>>> as hifive1::led::Led>::on::h7d7d01d12a3723cb+0x10>
20011a80:      	lui	a0, 131093
20011a84:      	addi	a0, a0, 84
20011a88:      	auipc	ra, 0
20011a8c:      	jalr	162(ra)
20011a90:      	j	0x20011a92 <<e310x_hal::gpio::gpio0::Pin19<e310x_hal::gpio::Output<e310x_hal::gpio::Regular<e310x_hal::gpio::Invert>>> as hifive1::led::Led>::on::h7d7d01d12a3723cb+0x22>
20011a92:      	lw	ra, 12(sp)
20011a94:      	addi	sp, sp, 16
20011a96:      	ret

20011a98 <<e310x_hal::gpio::gpio0::Pin21<e310x_hal::gpio::Output<e310x_hal::gpio::Regular<e310x_hal::gpio::Invert>>> as hifive1::led::Led>::off::h13968d10b6c98f9b>:
20011a98:      	addi	sp, sp, -16
20011a9a:      	sw	ra, 12(sp)
20011a9c:      	sw	a0, 8(sp)
20011a9e:      	auipc	ra, 0
20011aa2:      	jalr	-270(ra)
20011aa6:      	j	0x20011aa8 <<e310x_hal::gpio::gpio0::Pin21<e310x_hal::gpio::Output<e310x_hal::gpio::Regular<e310x_hal::gpio::Invert>>> as hifive1::led::Led>::off::h13968d10b6c98f9b+0x10>
20011aa8:      	lui	a0, 131093
20011aac:      	addi	a0, a0, 100
20011ab0:      	auipc	ra, 0
20011ab4:      	jalr	122(ra)
20011ab8:      	j	0x20011aba <<e310x_hal::gpio::gpio0::Pin21<e310x_hal::gpio::Output<e310x_hal::gpio::Regular<e310x_hal::gpio::Invert>>> as hifive1::led::Led>::off::h13968d10b6c98f9b+0x22>
20011aba:      	lw	ra, 12(sp)
20011abc:      	addi	sp, sp, 16
20011abe:      	ret

20011ac0 <<e310x_hal::gpio::gpio0::Pin21<e310x_hal::gpio::Output<e310x_hal::gpio::Regular<e310x_hal::gpio::Invert>>> as hifive1::led::Led>::on::h97d17dc0ee4d94e5>:
20011ac0:      	addi	sp, sp, -16
20011ac2:      	sw	ra, 12(sp)
20011ac4:      	sw	a0, 8(sp)
20011ac6:      	auipc	ra, 0
20011aca:      	jalr	-284(ra)
20011ace:      	j	0x20011ad0 <<e310x_hal::gpio::gpio0::Pin21<e310x_hal::gpio::Output<e310x_hal::gpio::Regular<e310x_hal::gpio::Invert>>> as hifive1::led::Led>::on::h97d17dc0ee4d94e5+0x10>
20011ad0:      	lui	a0, 131093
20011ad4:      	addi	a0, a0, 116
20011ad8:      	auipc	ra, 0
20011adc:      	jalr	82(ra)
20011ae0:      	j	0x20011ae2 <<e310x_hal::gpio::gpio0::Pin21<e310x_hal::gpio::Output<e310x_hal::gpio::Regular<e310x_hal::gpio::Invert>>> as hifive1::led::Led>::on::h97d17dc0ee4d94e5+0x22>
20011ae2:      	lw	ra, 12(sp)
20011ae4:      	addi	sp, sp, 16
20011ae6:      	ret

20011ae8 <_ZN4core6result19Result$LT$T$C$E$GT$5is_ok17h8de4d77e93c041a3E>:
20011ae8:      	addi	sp, sp, -16
20011aea:      	sw	a0, 12(sp)
20011aec:      	li	a0, 0
20011aee:      	bne	a0, a0, 0x20011afc <_ZN4core6result19Result$LT$T$C$E$GT$5is_ok17h8de4d77e93c041a3E+0x14>
20011af2:      	j	0x20011af4 <_ZN4core6result19Result$LT$T$C$E$GT$5is_ok17h8de4d77e93c041a3E+0xc>
20011af4:      	li	a0, 1
20011af6:      	sb	a0, 11(sp)
20011afa:      	j	0x20011b04 <_ZN4core6result19Result$LT$T$C$E$GT$5is_ok17h8de4d77e93c041a3E+0x1c>
20011afc:      	li	a0, 0
20011afe:      	sb	a0, 11(sp)
20011b02:      	j	0x20011b04 <_ZN4core6result19Result$LT$T$C$E$GT$5is_ok17h8de4d77e93c041a3E+0x1c>
20011b04:      	lbu	a0, 11(sp)
20011b08:      	addi	sp, sp, 16
20011b0a:      	ret

20011b0c <_ZN4core6result19Result$LT$T$C$E$GT$6is_err17h0c7fbeaccec09c13E>:
20011b0c:      	addi	sp, sp, -16
20011b0e:      	sw	ra, 12(sp)
20011b10:      	sw	a0, 8(sp)
20011b12:      	auipc	ra, 0
20011b16:      	jalr	-42(ra)
20011b1a:      	sw	a0, 4(sp)
20011b1c:      	j	0x20011b1e <_ZN4core6result19Result$LT$T$C$E$GT$6is_err17h0c7fbeaccec09c13E+0x12>
20011b1e:      	lw	a0, 4(sp)
20011b20:      	xori	a0, a0, 1
20011b24:      	lw	ra, 12(sp)
20011b26:      	addi	sp, sp, 16
20011b28:      	ret

20011b2a <_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h7c910b2dc24c7fa9E>:
20011b2a:      	addi	sp, sp, -32
20011b2c:      	sw	a0, 4(sp)
20011b2e:      	li	a1, 0
20011b30:      	li	a0, 1
20011b32:      	bne	a0, a1, 0x20011b3c <_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h7c910b2dc24c7fa9E+0x12>
20011b36:      	j	0x20011b38 <_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h7c910b2dc24c7fa9E+0xe>
20011b38:      	j	0x20011b40 <_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h7c910b2dc24c7fa9E+0x16>
20011b3a:      	unimp	
20011b3c:      	addi	sp, sp, 32
20011b3e:      	ret
20011b40:      	lw	a4, 4(sp)
20011b42:      	lui	a0, 131093
20011b46:      	addi	a0, a0, 132
20011b4a:      	lui	a1, 131093
20011b4e:      	addi	a3, a1, 176
20011b52:      	li	a1, 43
20011b56:      	addi	a2, sp, 16
20011b58:      	auipc	ra, 2
20011b5c:      	jalr	408(ra)
20011b60:      	unimp	

20011b62 <core::option::Option<T>::as_mut::h9815586c71fdff4e>:
20011b62:      	addi	sp, sp, -16
20011b64:      	sw	a0, 0(sp)
20011b66:      	sw	a0, 8(sp)
20011b68:      	lbu	a0, 0(a0)
20011b6c:      	andi	a0, a0, 1
20011b6e:      	li	a1, 0
20011b70:      	beq	a0, a1, 0x20011b7a <core::option::Option<T>::as_mut::h9815586c71fdff4e+0x18>
20011b74:      	j	0x20011b76 <core::option::Option<T>::as_mut::h9815586c71fdff4e+0x14>
20011b76:      	j	0x20011b80 <core::option::Option<T>::as_mut::h9815586c71fdff4e+0x1e>
20011b78:      	unimp	
20011b7a:      	li	a0, 0
20011b7c:      	sw	a0, 4(sp)
20011b7e:      	j	0x20011b8a <core::option::Option<T>::as_mut::h9815586c71fdff4e+0x28>
20011b80:      	lw	a0, 0(sp)
20011b82:      	addi	a0, a0, 1
20011b84:      	sw	a0, 12(sp)
20011b86:      	sw	a0, 4(sp)
20011b88:      	j	0x20011b8a <core::option::Option<T>::as_mut::h9815586c71fdff4e+0x28>
20011b8a:      	lw	a0, 4(sp)
20011b8c:      	addi	sp, sp, 16
20011b8e:      	ret

20011b90 <hifive1::clock::configure::hdc35a1cdeef24f00>:
20011b90:      	addi	sp, sp, -160
20011b92:      	sw	ra, 156(sp)
20011b94:      	sw	a0, 28(sp)
20011b96:      	sw	a0, 132(sp)
20011b98:      	addi	a0, sp, 32
20011b9a:      	auipc	ra, 2
20011b9e:      	jalr	-1160(ra)
20011ba2:      	j	0x20011ba4 <hifive1::clock::configure::hdc35a1cdeef24f00+0x14>
20011ba4:      	lw	a0, 40(sp)
20011ba6:      	sw	a0, 88(sp)
20011ba8:      	lw	a0, 36(sp)
20011baa:      	sw	a0, 84(sp)
20011bac:      	lw	a0, 32(sp)
20011bae:      	sw	a0, 80(sp)
20011bb0:      	lui	a0, 3906
20011bb4:      	addi	a2, a0, 1024
20011bb8:      	sw	a2, 96(sp)
20011bba:      	addi	a0, sp, 64
20011bbc:      	addi	a1, sp, 80
20011bbe:      	auipc	ra, 0
20011bc2:      	jalr	216(ra)
20011bc6:      	j	0x20011bc8 <hifive1::clock::configure::hdc35a1cdeef24f00+0x38>
20011bc8:      	lw	a2, 28(sp)
20011bca:      	addi	a0, sp, 48
20011bcc:      	addi	a1, sp, 64
20011bce:      	auipc	ra, 0
20011bd2:      	jalr	308(ra)
20011bd6:      	j	0x20011bd8 <hifive1::clock::configure::hdc35a1cdeef24f00+0x48>
20011bd8:      	auipc	ra, 2
20011bdc:      	jalr	-1194(ra)
20011be0:      	mv	a2, a0
20011be2:      	sw	a2, 20(sp)
20011be4:      	mv	a2, a1
20011be6:      	sw	a2, 24(sp)
20011be8:      	sw	a0, 136(sp)
20011bea:      	sw	a1, 140(sp)
20011bec:      	j	0x20011bee <hifive1::clock::configure::hdc35a1cdeef24f00+0x5e>
20011bee:      	lw	a1, 24(sp)
20011bf0:      	lw	a0, 20(sp)
20011bf2:      	lui	a2, 8
20011bf4:      	sw	a2, 100(sp)
20011bf6:      	auipc	ra, 0
20011bfa:      	jalr	64(ra)
20011bfe:      	mv	a2, a0
20011c00:      	sw	a2, 12(sp)
20011c02:      	mv	a2, a1
20011c04:      	sw	a2, 16(sp)
20011c06:      	sw	a0, 144(sp)
20011c08:      	sw	a1, 148(sp)
20011c0a:      	j	0x20011c0c <hifive1::clock::configure::hdc35a1cdeef24f00+0x7c>
20011c0c:      	lw	a2, 16(sp)
20011c0e:      	lw	a1, 12(sp)
20011c10:      	lw	a0, 56(sp)
20011c12:      	sw	a0, 112(sp)
20011c14:      	lw	a0, 52(sp)
20011c16:      	sw	a0, 108(sp)
20011c18:      	lw	a0, 48(sp)
20011c1a:      	sw	a0, 104(sp)
20011c1c:      	addi	a0, sp, 104
20011c1e:      	auipc	ra, 1
20011c22:      	jalr	1844(ra)
20011c26:      	sw	a0, 4(sp)
20011c28:      	sw	a1, 8(sp)
20011c2a:      	j	0x20011c2c <hifive1::clock::configure::hdc35a1cdeef24f00+0x9c>
20011c2c:      	lw	a1, 8(sp)
20011c2e:      	lw	a0, 4(sp)
20011c30:      	lw	ra, 156(sp)
20011c32:      	addi	sp, sp, 160
20011c34:      	ret

20011c36 <e310x_hal::clock::AonClk::use_external::h082d32ec63dfc115>:
20011c36:      	addi	sp, sp, -48
20011c38:      	sw	ra, 44(sp)
20011c3a:      	sw	a2, 8(sp)
20011c3c:      	mv	a2, a0
20011c3e:      	lw	a0, 8(sp)
20011c40:      	sw	a2, 16(sp)
20011c42:      	sw	a1, 20(sp)
20011c44:      	sw	a0, 36(sp)
20011c46:      	auipc	ra, 0
20011c4a:      	jalr	-1276(ra)
20011c4e:      	mv	a1, a0
20011c50:      	sw	a1, 12(sp)
20011c52:      	sw	a0, 40(sp)
20011c54:      	j	0x20011c56 <e310x_hal::clock::AonClk::use_external::h082d32ec63dfc115+0x20>
20011c56:      	lw	a1, 12(sp)
20011c58:      	lui	a0, 122
20011c5c:      	addi	a0, a0, 287
20011c60:      	bltu	a0, a1, 0x20011c78 <e310x_hal::clock::AonClk::use_external::h082d32ec63dfc115+0x42>
20011c64:      	j	0x20011c66 <e310x_hal::clock::AonClk::use_external::h082d32ec63dfc115+0x30>
20011c66:      	lw	a1, 12(sp)
20011c68:      	sw	a1, 28(sp)
20011c6a:      	li	a0, 1
20011c6c:      	sw	a0, 24(sp)
20011c6e:      	sw	a0, 16(sp)
20011c70:      	sw	a1, 20(sp)
20011c72:      	lw	ra, 44(sp)
20011c74:      	addi	sp, sp, 48
20011c76:      	ret
20011c78:      	lui	a0, 131093
20011c7c:      	addi	a0, a0, 224
20011c80:      	lui	a1, 131093
20011c84:      	addi	a2, a1, 344
20011c88:      	li	a1, 32
20011c8c:      	auipc	ra, 2
20011c90:      	jalr	-54(ra)
20011c94:      	unimp	

20011c96 <e310x_hal::clock::CoreClk::use_external::hb49a6f762c601fdc>:
20011c96:      	addi	sp, sp, -48
20011c98:      	sw	ra, 44(sp)
20011c9a:      	sw	a2, 12(sp)
20011c9c:      	sw	a1, 8(sp)
20011c9e:      	mv	a1, a0
20011ca0:      	lw	a0, 12(sp)
20011ca2:      	sw	a1, 16(sp)
20011ca4:      	sw	a0, 36(sp)
20011ca6:      	auipc	ra, 0
20011caa:      	jalr	-1372(ra)
20011cae:      	mv	a1, a0
20011cb0:      	sw	a1, 20(sp)
20011cb2:      	sw	a0, 40(sp)
20011cb4:      	j	0x20011cb6 <e310x_hal::clock::CoreClk::use_external::hb49a6f762c601fdc+0x20>
20011cb6:      	lw	a1, 20(sp)
20011cb8:      	lui	a0, 4883
20011cbc:      	addi	a0, a0, -769
20011cc0:      	bltu	a0, a1, 0x20011ce4 <e310x_hal::clock::CoreClk::use_external::hb49a6f762c601fdc+0x4e>
20011cc4:      	j	0x20011cc6 <e310x_hal::clock::CoreClk::use_external::hb49a6f762c601fdc+0x30>
20011cc6:      	lw	a1, 16(sp)
20011cc8:      	lw	a2, 20(sp)
20011cca:      	lw	a3, 8(sp)
20011ccc:      	sw	a2, 28(sp)
20011cce:      	li	a0, 1
20011cd0:      	sw	a0, 24(sp)
20011cd2:      	sw	a0, 0(a3)
20011cd4:      	sw	a2, 4(a3)
20011cd6:      	lw	a3, 8(a3)
20011cd8:      	sw	a3, 8(a1)
20011cda:      	sw	a2, 4(a1)
20011cdc:      	sw	a0, 0(a1)
20011cde:      	lw	ra, 44(sp)
20011ce0:      	addi	sp, sp, 48
20011ce2:      	ret
20011ce4:      	lui	a0, 131093
20011ce8:      	addi	a0, a0, 360
20011cec:      	lui	a1, 131093
20011cf0:      	addi	a2, a1, 396
20011cf4:      	li	a1, 35
20011cf8:      	auipc	ra, 2
20011cfc:      	jalr	-162(ra)
20011d00:      	unimp	

20011d02 <e310x_hal::clock::CoreClk::coreclk::h00777006685cda17>:
20011d02:      	addi	sp, sp, -32
20011d04:      	sw	ra, 28(sp)
20011d06:      	sw	a2, 12(sp)
20011d08:      	sw	a1, 8(sp)
20011d0a:      	mv	a1, a0
20011d0c:      	lw	a0, 12(sp)
20011d0e:      	sw	a1, 16(sp)
20011d10:      	sw	a0, 24(sp)
20011d12:      	auipc	ra, 0
20011d16:      	jalr	-1480(ra)
20011d1a:      	sw	a0, 20(sp)
20011d1c:      	j	0x20011d1e <e310x_hal::clock::CoreClk::coreclk::h00777006685cda17+0x1c>
20011d1e:      	lw	a1, 16(sp)
20011d20:      	lw	a0, 8(sp)
20011d22:      	lw	a2, 20(sp)
20011d24:      	sw	a2, 8(a0)
20011d26:      	sw	a2, 8(a1)
20011d28:      	lw	a2, 4(a0)
20011d2a:      	sw	a2, 4(a1)
20011d2c:      	lw	a0, 0(a0)
20011d2e:      	sw	a0, 0(a1)
20011d30:      	lw	ra, 28(sp)
20011d32:      	addi	sp, sp, 32
20011d34:      	ret

20011d36 <riscv::interrupt::free::h41e08f00d51670d9>:
20011d36:      	addi	sp, sp, -48
20011d38:      	sw	ra, 44(sp)
20011d3a:      	sw	a0, 12(sp)
20011d3c:      	sw	a0, 40(sp)
20011d3e:      	auipc	ra, 0
20011d42:      	jalr	150(ra)
20011d46:      	sw	a0, 16(sp)
20011d48:      	j	0x20011d4a <riscv::interrupt::free::h41e08f00d51670d9+0x14>
20011d4a:      	auipc	ra, 0
20011d4e:      	jalr	96(ra)
20011d52:      	j	0x20011d54 <riscv::interrupt::free::h41e08f00d51670d9+0x1e>
20011d54:      	auipc	ra, 2
20011d58:      	jalr	-276(ra)
20011d5c:      	j	0x20011d5e <riscv::interrupt::free::h41e08f00d51670d9+0x28>
20011d5e:      	lw	a0, 12(sp)
20011d60:      	addi	a1, sp, 24
20011d62:      	sw	a1, 20(sp)
20011d64:      	auipc	ra, 0
20011d68:      	jalr	-2014(ra)
20011d6c:      	j	0x20011d6e <riscv::interrupt::free::h41e08f00d51670d9+0x38>
20011d6e:      	addi	a0, sp, 16
20011d70:      	auipc	ra, 0
20011d74:      	jalr	172(ra)
20011d78:      	sw	a0, 8(sp)
20011d7a:      	j	0x20011d7c <riscv::interrupt::free::h41e08f00d51670d9+0x46>
20011d7c:      	lw	a0, 8(sp)
20011d7e:      	li	a1, 0
20011d80:      	bne	a0, a1, 0x20011d8c <riscv::interrupt::free::h41e08f00d51670d9+0x56>
20011d84:      	j	0x20011d86 <riscv::interrupt::free::h41e08f00d51670d9+0x50>
20011d86:      	lw	ra, 44(sp)
20011d88:      	addi	sp, sp, 48
20011d8a:      	ret
20011d8c:      	auipc	ra, 0
20011d90:      	jalr	10(ra)
20011d94:      	j	0x20011d86 <riscv::interrupt::free::h41e08f00d51670d9+0x50>

20011d96 <riscv::interrupt::enable::h209c99a61d6957a4>:
20011d96:      	addi	sp, sp, -16
20011d98:      	sw	ra, 12(sp)
20011d9a:      	auipc	ra, 0
20011d9e:      	jalr	158(ra)
20011da2:      	j	0x20011da4 <riscv::interrupt::enable::h209c99a61d6957a4+0xe>
20011da4:      	lw	ra, 12(sp)
20011da6:      	addi	sp, sp, 16
20011da8:      	ret

20011daa <riscv::interrupt::disable::h6e8636cd1d444bb1>:
20011daa:      	addi	sp, sp, -16
20011dac:      	sw	ra, 12(sp)
20011dae:      	auipc	ra, 0
20011db2:      	jalr	160(ra)
20011db6:      	j	0x20011db8 <riscv::interrupt::disable::h6e8636cd1d444bb1+0xe>
20011db8:      	lw	ra, 12(sp)
20011dba:      	addi	sp, sp, 16
20011dbc:      	ret

20011dbe <riscv::register::mstatus::_set::h5af58cf23ba0a7d5>:
20011dbe:      	addi	sp, sp, -16
20011dc0:      	sw	ra, 12(sp)
20011dc2:      	sw	a0, 8(sp)
20011dc4:      	auipc	ra, 2
20011dc8:      	jalr	-418(ra)
20011dcc:      	j	0x20011dce <riscv::register::mstatus::_set::h5af58cf23ba0a7d5+0x10>
20011dce:      	lw	ra, 12(sp)
20011dd0:      	addi	sp, sp, 16
20011dd2:      	ret

20011dd4 <riscv::register::mstatus::read::hf075103618d69766>:
20011dd4:      	addi	sp, sp, -16
20011dd6:      	sw	ra, 12(sp)
20011dd8:      	auipc	ra, 0
20011ddc:      	jalr	22(ra)
20011de0:      	sw	a0, 4(sp)
20011de2:      	j	0x20011de4 <riscv::register::mstatus::read::hf075103618d69766+0x10>
20011de4:      	lw	a0, 4(sp)
20011de6:      	sw	a0, 8(sp)
20011de8:      	lw	ra, 12(sp)
20011dea:      	addi	sp, sp, 16
20011dec:      	ret

20011dee <riscv::register::mstatus::_read::ha007f0a441a20572>:
20011dee:      	addi	sp, sp, -16
20011df0:      	sw	ra, 12(sp)
20011df2:      	auipc	ra, 2
20011df6:      	jalr	-470(ra)
20011dfa:      	sw	a0, 8(sp)
20011dfc:      	j	0x20011dfe <riscv::register::mstatus::_read::ha007f0a441a20572+0x10>
20011dfe:      	lw	a0, 8(sp)
20011e00:      	lw	ra, 12(sp)
20011e02:      	addi	sp, sp, 16
20011e04:      	ret

20011e06 <riscv::register::mstatus::_clear::hf7fe9e747a99c002>:
20011e06:      	addi	sp, sp, -16
20011e08:      	sw	ra, 12(sp)
20011e0a:      	sw	a0, 8(sp)
20011e0c:      	auipc	ra, 2
20011e10:      	jalr	-484(ra)
20011e14:      	j	0x20011e16 <riscv::register::mstatus::_clear::hf7fe9e747a99c002+0x10>
20011e16:      	lw	ra, 12(sp)
20011e18:      	addi	sp, sp, 16
20011e1a:      	ret

20011e1c <riscv::register::mstatus::Mstatus::mie::h7ff064eae3463726>:
20011e1c:      	addi	sp, sp, -16
20011e1e:      	sw	ra, 12(sp)
20011e20:      	sw	a0, 8(sp)
20011e22:      	li	a1, 3
20011e24:      	auipc	ra, 0
20011e28:      	jalr	-1922(ra)
20011e2c:      	sw	a0, 4(sp)
20011e2e:      	j	0x20011e30 <riscv::register::mstatus::Mstatus::mie::h7ff064eae3463726+0x14>
20011e30:      	lw	a0, 4(sp)
20011e32:      	lw	ra, 12(sp)
20011e34:      	addi	sp, sp, 16
20011e36:      	ret

20011e38 <riscv::register::mstatus::set_mie::h03d29b32847a7940>:
20011e38:      	addi	sp, sp, -16
20011e3a:      	sw	ra, 12(sp)
20011e3c:      	li	a0, 8
20011e3e:      	auipc	ra, 0
20011e42:      	jalr	-128(ra)
20011e46:      	j	0x20011e48 <riscv::register::mstatus::set_mie::h03d29b32847a7940+0x10>
20011e48:      	lw	ra, 12(sp)
20011e4a:      	addi	sp, sp, 16
20011e4c:      	ret

20011e4e <riscv::register::mstatus::clear_mie::h6fc3f1073f6fdf48>:
20011e4e:      	addi	sp, sp, -16
20011e50:      	sw	ra, 12(sp)
20011e52:      	li	a0, 8
20011e54:      	auipc	ra, 0
20011e58:      	jalr	-78(ra)
20011e5c:      	j	0x20011e5e <riscv::register::mstatus::clear_mie::h6fc3f1073f6fdf48+0x10>
20011e5e:      	lw	ra, 12(sp)
20011e60:      	addi	sp, sp, 16
20011e62:      	ret

20011e64 <e310x_hal::clock::CoreClk::freeze::h0488dbfb49948e9f>:
20011e64:      	addi	sp, sp, -112
20011e66:      	sw	ra, 108(sp)
20011e68:      	sw	a0, 16(sp)
20011e6a:      	j	0x20011e6c <e310x_hal::clock::CoreClk::freeze::h0488dbfb49948e9f+0x8>
20011e6c:      	lw	a0, 16(sp)
20011e6e:      	lui	a1, 65544
20011e72:      	sw	a1, 52(sp)
20011e74:      	auipc	ra, 0
20011e78:      	jalr	1548(ra)
20011e7c:      	mv	a1, a0
20011e7e:      	sw	a1, 12(sp)
20011e80:      	sw	a0, 56(sp)
20011e82:      	j	0x20011e84 <e310x_hal::clock::CoreClk::freeze::h0488dbfb49948e9f+0x20>
20011e84:      	lui	a0, 65544
20011e88:      	addi	a0, a0, 8
20011e8a:      	sw	a0, 8(sp)
20011e8c:      	sw	a0, 80(sp)
20011e8e:      	sw	a0, 88(sp)
20011e90:      	sw	a0, 92(sp)
20011e92:      	auipc	ra, 1
20011e96:      	jalr	1992(ra)
20011e9a:      	sw	a0, 84(sp)
20011e9c:      	sw	a0, 72(sp)
20011e9e:      	sw	a0, 76(sp)
20011ea0:      	addi	a0, sp, 72
20011ea2:      	sw	a0, 64(sp)
20011ea4:      	addi	a1, sp, 76
20011ea6:      	sw	a1, 68(sp)
20011ea8:      	auipc	ra, 0
20011eac:      	jalr	112(ra)
20011eb0:      	mv	a1, a0
20011eb2:      	lw	a0, 8(sp)
20011eb4:      	lw	a1, 0(a1)
20011eb6:      	sw	a0, 96(sp)
20011eb8:      	sw	a1, 100(sp)
20011eba:      	sw	a0, 104(sp)
20011ebc:      	auipc	ra, 1
20011ec0:      	jalr	1968(ra)
20011ec4:      	j	0x20011ec6 <e310x_hal::clock::CoreClk::freeze::h0488dbfb49948e9f+0x62>
20011ec6:      	lw	a0, 16(sp)
20011ec8:      	lw	a0, 0(a0)
20011eca:      	li	a1, 0
20011ecc:      	beq	a0, a1, 0x20011ef2 <e310x_hal::clock::CoreClk::freeze::h0488dbfb49948e9f+0x8e>
20011ed0:      	j	0x20011ed2 <e310x_hal::clock::CoreClk::freeze::h0488dbfb49948e9f+0x6e>
20011ed2:      	lw	a0, 16(sp)
20011ed4:      	lw	a1, 4(a0)
20011ed6:      	sw	a1, 60(sp)
20011ed8:      	lw	a2, 0(a0)
20011eda:      	sw	a2, 24(sp)
20011edc:      	lw	a2, 4(a0)
20011ede:      	sw	a2, 28(sp)
20011ee0:      	lw	a0, 8(a0)
20011ee2:      	sw	a0, 32(sp)
20011ee4:      	addi	a0, sp, 24
20011ee6:      	auipc	ra, 0
20011eea:      	jalr	132(ra)
20011eee:      	sw	a0, 20(sp)
20011ef0:      	j	0x20011f10 <e310x_hal::clock::CoreClk::freeze::h0488dbfb49948e9f+0xac>
20011ef2:      	lw	a1, 12(sp)
20011ef4:      	lw	a0, 16(sp)
20011ef6:      	lw	a2, 8(a0)
20011ef8:      	sw	a2, 48(sp)
20011efa:      	lw	a2, 4(a0)
20011efc:      	sw	a2, 44(sp)
20011efe:      	lw	a0, 0(a0)
20011f00:      	sw	a0, 40(sp)
20011f02:      	addi	a0, sp, 40
20011f04:      	auipc	ra, 0
20011f08:      	jalr	876(ra)
20011f0c:      	sw	a0, 20(sp)
20011f0e:      	j	0x20011f10 <e310x_hal::clock::CoreClk::freeze::h0488dbfb49948e9f+0xac>
20011f10:      	lw	a0, 20(sp)
20011f12:      	lw	ra, 108(sp)
20011f14:      	addi	sp, sp, 112
20011f16:      	ret

20011f18 <e310x_hal::clock::CoreClk::freeze::{{closure}}::haef5d49730cdfe3e>:
20011f18:      	addi	sp, sp, -64
20011f1a:      	sw	a0, 24(sp)
20011f1c:      	sw	a1, 28(sp)
20011f1e:      	sw	a1, 36(sp)
20011f20:      	sw	a1, 32(sp)
20011f22:      	sw	a1, 12(sp)
20011f24:      	j	0x20011f26 <e310x_hal::clock::CoreClk::freeze::{{closure}}::haef5d49730cdfe3e+0xe>
20011f26:      	lw	a1, 12(sp)
20011f28:      	sw	a1, 48(sp)
20011f2a:      	li	a0, 0
20011f2c:      	sb	a0, 55(sp)
20011f30:      	lw	a0, 0(a1)
20011f32:      	lui	a2, 1048560
20011f34:      	addi	a2, a2, -1
20011f36:      	and	a0, a0, a2
20011f38:      	sw	a0, 0(a1)
20011f3a:      	lw	a0, 48(sp)
20011f3c:      	sw	a0, 8(sp)
20011f3e:      	j	0x20011f40 <e310x_hal::clock::CoreClk::freeze::{{closure}}::haef5d49730cdfe3e+0x28>
20011f40:      	lw	a0, 8(sp)
20011f42:      	sw	a0, 44(sp)
20011f44:      	sw	a0, 40(sp)
20011f46:      	sw	a0, 4(sp)
20011f48:      	j	0x20011f4a <e310x_hal::clock::CoreClk::freeze::{{closure}}::haef5d49730cdfe3e+0x32>
20011f4a:      	lw	a1, 4(sp)
20011f4c:      	sw	a1, 56(sp)
20011f4e:      	li	a0, 1
20011f50:      	sb	a0, 63(sp)
20011f54:      	lw	a0, 0(a1)
20011f56:      	lui	a2, 64
20011f5a:      	or	a0, a0, a2
20011f5c:      	sw	a0, 0(a1)
20011f5e:      	lw	a0, 56(sp)
20011f60:      	sw	a0, 0(sp)
20011f62:      	j	0x20011f64 <e310x_hal::clock::CoreClk::freeze::{{closure}}::haef5d49730cdfe3e+0x4c>
20011f64:      	lw	a0, 0(sp)
20011f66:      	addi	sp, sp, 64
20011f68:      	ret

20011f6a <e310x_hal::clock::CoreClk::configure_with_external::h9171897ab8502ea2>:
20011f6a:      	addi	sp, sp, -304
20011f6c:      	sw	ra, 300(sp)
20011f70:      	sw	a1, 32(sp)
20011f72:      	sw	a0, 36(sp)
20011f74:      	sw	a1, 52(sp)
20011f76:      	j	0x20011f78 <e310x_hal::clock::CoreClk::configure_with_external::h9171897ab8502ea2+0xe>
20011f78:      	lui	a0, 65544
20011f7c:      	sw	a0, 56(sp)
20011f7e:      	addi	a0, a0, 4
20011f80:      	sw	a0, 28(sp)
20011f82:      	sw	a0, 92(sp)
20011f84:      	li	a0, 0
20011f86:      	sw	a0, 88(sp)
20011f88:      	addi	a0, sp, 88
20011f8a:      	sw	a0, 84(sp)
20011f8c:      	auipc	ra, 0
20011f90:      	jalr	472(ra)
20011f94:      	mv	a1, a0
20011f96:      	lw	a0, 28(sp)
20011f98:      	lw	a1, 0(a1)
20011f9a:      	sw	a0, 288(sp)
20011f9e:      	sw	a1, 292(sp)
20011fa2:      	sw	a0, 296(sp)
20011fa6:      	auipc	ra, 1
20011faa:      	jalr	1734(ra)
20011fae:      	j	0x20011fb0 <e310x_hal::clock::CoreClk::configure_with_external::h9171897ab8502ea2+0x46>
20011fb0:      	lui	a0, 65544
20011fb4:      	addi	a0, a0, 4
20011fb6:      	sw	a0, 80(sp)
20011fb8:      	sw	a0, 220(sp)
20011fba:      	sw	a0, 224(sp)
20011fbc:      	auipc	ra, 1
20011fc0:      	jalr	1694(ra)
20011fc4:      	sw	a0, 76(sp)
20011fc6:      	sw	a0, 48(sp)
20011fc8:      	j	0x20011fca <e310x_hal::clock::CoreClk::configure_with_external::h9171897ab8502ea2+0x60>
20011fca:      	addi	a0, sp, 48
20011fcc:      	sw	a0, 60(sp)
20011fce:      	lw	a0, 48(sp)
20011fd0:      	srli	a0, a0, 31
20011fd2:      	sb	a0, 67(sp)
20011fd6:      	sb	a0, 66(sp)
20011fda:      	sb	a0, 47(sp)
20011fde:      	j	0x20011fe0 <e310x_hal::clock::CoreClk::configure_with_external::h9171897ab8502ea2+0x76>
20011fe0:      	addi	a0, sp, 47
20011fe4:      	sw	a0, 68(sp)
20011fe6:      	sw	a0, 72(sp)
20011fe8:      	lb	a0, 47(sp)
20011fec:      	sw	a0, 24(sp)
20011fee:      	j	0x20011ff0 <e310x_hal::clock::CoreClk::configure_with_external::h9171897ab8502ea2+0x86>
20011ff0:      	lw	a0, 24(sp)
20011ff2:      	andi	a0, a0, 1
20011ff4:      	li	a1, 0
20011ff6:      	beq	a0, a1, 0x20011fb0 <e310x_hal::clock::CoreClk::configure_with_external::h9171897ab8502ea2+0x46>
20011ffa:      	j	0x20011ffc <e310x_hal::clock::CoreClk::configure_with_external::h9171897ab8502ea2+0x92>
20011ffc:      	lui	a0, 65544
20012000:      	addi	a0, a0, 8
20012002:      	sw	a0, 20(sp)
20012004:      	sw	a0, 136(sp)
20012006:      	sw	a0, 212(sp)
20012008:      	sw	a0, 216(sp)
2001200a:      	auipc	ra, 1
2001200e:      	jalr	1616(ra)
20012012:      	sw	a0, 140(sp)
20012014:      	sw	a0, 128(sp)
20012016:      	sw	a0, 132(sp)
20012018:      	addi	a0, sp, 128
2001201a:      	sw	a0, 120(sp)
2001201c:      	addi	a1, sp, 132
2001201e:      	sw	a1, 124(sp)
20012020:      	auipc	ra, 0
20012024:      	jalr	368(ra)
20012028:      	mv	a1, a0
2001202a:      	lw	a0, 20(sp)
2001202c:      	lw	a1, 0(a1)
2001202e:      	sw	a0, 252(sp)
20012030:      	sw	a1, 256(sp)
20012034:      	sw	a0, 260(sp)
20012038:      	auipc	ra, 1
2001203c:      	jalr	1588(ra)
20012040:      	j	0x20012042 <e310x_hal::clock::CoreClk::configure_with_external::h9171897ab8502ea2+0xd8>
20012042:      	lw	a0, 32(sp)
20012044:      	lw	a1, 36(sp)
20012046:      	lw	a1, 8(a1)
20012048:      	beq	a0, a1, 0x20012060 <e310x_hal::clock::CoreClk::configure_with_external::h9171897ab8502ea2+0xf6>
2001204c:      	j	0x2001204e <e310x_hal::clock::CoreClk::configure_with_external::h9171897ab8502ea2+0xe4>
2001204e:      	lw	a1, 32(sp)
20012050:      	lw	a0, 36(sp)
20012052:      	lw	a2, 8(a0)
20012054:      	auipc	ra, 0
20012058:      	jalr	1340(ra)
2001205c:      	sw	a0, 16(sp)
2001205e:      	j	0x20012120 <e310x_hal::clock::CoreClk::configure_with_external::h9171897ab8502ea2+0x1b6>
20012060:      	lw	a0, 32(sp)
20012062:      	sw	a0, 40(sp)
20012064:      	lui	a0, 65544
20012068:      	addi	a0, a0, 8
2001206a:      	sw	a0, 12(sp)
2001206c:      	sw	a0, 188(sp)
2001206e:      	sw	a0, 196(sp)
20012070:      	sw	a0, 200(sp)
20012072:      	auipc	ra, 1
20012076:      	jalr	1512(ra)
2001207a:      	sw	a0, 192(sp)
2001207c:      	sw	a0, 180(sp)
2001207e:      	sw	a0, 184(sp)
20012080:      	addi	a0, sp, 180
20012082:      	sw	a0, 168(sp)
20012084:      	addi	a1, sp, 184
20012086:      	sw	a1, 172(sp)
20012088:      	auipc	ra, 0
2001208c:      	jalr	310(ra)
20012090:      	mv	a1, a0
20012092:      	lw	a0, 12(sp)
20012094:      	lw	a1, 0(a1)
20012096:      	sw	a0, 228(sp)
20012098:      	sw	a1, 232(sp)
2001209a:      	sw	a0, 236(sp)
2001209c:      	auipc	ra, 1
200120a0:      	jalr	1488(ra)
200120a4:      	j	0x200120a6 <e310x_hal::clock::CoreClk::configure_with_external::h9171897ab8502ea2+0x13c>
200120a6:      	lui	a0, 65544
200120aa:      	addi	a0, a0, 12
200120ac:      	sw	a0, 8(sp)
200120ae:      	sw	a0, 104(sp)
200120b0:      	li	a0, 256
200120b4:      	sw	a0, 100(sp)
200120b6:      	addi	a0, sp, 100
200120b8:      	sw	a0, 96(sp)
200120ba:      	auipc	ra, 0
200120be:      	jalr	306(ra)
200120c2:      	mv	a1, a0
200120c4:      	lw	a0, 8(sp)
200120c6:      	lw	a1, 0(a1)
200120c8:      	sw	a0, 276(sp)
200120cc:      	sw	a1, 280(sp)
200120d0:      	sw	a0, 284(sp)
200120d4:      	auipc	ra, 1
200120d8:      	jalr	1432(ra)
200120dc:      	j	0x200120de <e310x_hal::clock::CoreClk::configure_with_external::h9171897ab8502ea2+0x174>
200120de:      	lui	a0, 65544
200120e2:      	addi	a0, a0, 8
200120e4:      	sw	a0, 4(sp)
200120e6:      	sw	a0, 160(sp)
200120e8:      	sw	a0, 204(sp)
200120ea:      	sw	a0, 208(sp)
200120ec:      	auipc	ra, 1
200120f0:      	jalr	1390(ra)
200120f4:      	sw	a0, 164(sp)
200120f6:      	sw	a0, 152(sp)
200120f8:      	sw	a0, 156(sp)
200120fa:      	addi	a0, sp, 152
200120fc:      	sw	a0, 144(sp)
200120fe:      	addi	a1, sp, 156
20012100:      	sw	a1, 148(sp)
20012102:      	auipc	ra, 0
20012106:      	jalr	276(ra)
2001210a:      	mv	a1, a0
2001210c:      	lw	a0, 4(sp)
2001210e:      	lw	a1, 0(a1)
20012110:      	sw	a0, 240(sp)
20012112:      	sw	a1, 244(sp)
20012114:      	sw	a0, 248(sp)
20012116:      	auipc	ra, 1
2001211a:      	jalr	1366(ra)
2001211e:      	j	0x20012126 <e310x_hal::clock::CoreClk::configure_with_external::h9171897ab8502ea2+0x1bc>
20012120:      	lw	a0, 16(sp)
20012122:      	sw	a0, 40(sp)
20012124:      	j	0x200120de <e310x_hal::clock::CoreClk::configure_with_external::h9171897ab8502ea2+0x174>
20012126:      	lui	a0, 65544
2001212a:      	sw	a0, 0(sp)
2001212c:      	sw	a0, 116(sp)
2001212e:      	li	a0, 0
20012130:      	sw	a0, 112(sp)
20012132:      	addi	a0, sp, 112
20012134:      	sw	a0, 108(sp)
20012136:      	auipc	ra, 0
2001213a:      	jalr	268(ra)
2001213e:      	mv	a1, a0
20012140:      	lw	a0, 0(sp)
20012142:      	lw	a1, 0(a1)
20012144:      	sw	a0, 264(sp)
20012148:      	sw	a1, 268(sp)
2001214c:      	sw	a0, 272(sp)
20012150:      	auipc	ra, 1
20012154:      	jalr	1308(ra)
20012158:      	j	0x2001215a <e310x_hal::clock::CoreClk::configure_with_external::h9171897ab8502ea2+0x1f0>
2001215a:      	lw	a0, 40(sp)
2001215c:      	lw	ra, 300(sp)
20012160:      	addi	sp, sp, 304
20012162:      	ret

20012164 <e310x_hal::clock::CoreClk::configure_with_external::{{closure}}::h756ba2f8319396ce>:
20012164:      	addi	sp, sp, -32
20012166:      	sw	a0, 12(sp)
20012168:      	sw	a0, 20(sp)
2001216a:      	sw	a0, 16(sp)
2001216c:      	sw	a0, 4(sp)
2001216e:      	j	0x20012170 <e310x_hal::clock::CoreClk::configure_with_external::{{closure}}::h756ba2f8319396ce+0xc>
20012170:      	lw	a1, 4(sp)
20012172:      	sw	a1, 24(sp)
20012174:      	li	a0, 1
20012176:      	sb	a0, 31(sp)
2001217a:      	lw	a0, 0(a1)
2001217c:      	lui	a2, 262144
20012180:      	or	a0, a0, a2
20012182:      	sw	a0, 0(a1)
20012184:      	lw	a0, 24(sp)
20012186:      	sw	a0, 0(sp)
20012188:      	j	0x2001218a <e310x_hal::clock::CoreClk::configure_with_external::{{closure}}::h756ba2f8319396ce+0x26>
2001218a:      	lw	a0, 0(sp)
2001218c:      	addi	sp, sp, 32
2001218e:      	ret

20012190 <e310x_hal::clock::CoreClk::configure_with_external::{{closure}}::hba7d2f7341f29991>:
20012190:      	addi	sp, sp, -48
20012192:      	sw	a0, 24(sp)
20012194:      	sw	a1, 28(sp)
20012196:      	sw	a1, 36(sp)
20012198:      	sw	a1, 32(sp)
2001219a:      	sw	a1, 12(sp)
2001219c:      	j	0x2001219e <e310x_hal::clock::CoreClk::configure_with_external::{{closure}}::hba7d2f7341f29991+0xe>
2001219e:      	lw	a1, 12(sp)
200121a0:      	sw	a1, 40(sp)
200121a2:      	li	a0, 1
200121a4:      	sb	a0, 47(sp)
200121a8:      	lw	a0, 0(a1)
200121aa:      	lui	a2, 32
200121ae:      	or	a0, a0, a2
200121b0:      	sw	a0, 0(a1)
200121b2:      	lw	a0, 40(sp)
200121b4:      	sw	a0, 8(sp)
200121b6:      	j	0x200121b8 <e310x_hal::clock::CoreClk::configure_with_external::{{closure}}::hba7d2f7341f29991+0x28>
200121b8:      	lw	a0, 8(sp)
200121ba:      	addi	sp, sp, 48
200121bc:      	ret

200121be <e310x_hal::clock::CoreClk::configure_with_external::{{closure}}::h99943d366da260e2>:
200121be:      	addi	sp, sp, -48
200121c0:      	sw	a0, 24(sp)
200121c2:      	sw	a1, 28(sp)
200121c4:      	sw	a1, 36(sp)
200121c6:      	sw	a1, 32(sp)
200121c8:      	sw	a1, 12(sp)
200121ca:      	j	0x200121cc <e310x_hal::clock::CoreClk::configure_with_external::{{closure}}::h99943d366da260e2+0xe>
200121cc:      	lw	a1, 12(sp)
200121ce:      	sw	a1, 40(sp)
200121d0:      	li	a0, 1
200121d2:      	sb	a0, 47(sp)
200121d6:      	lw	a0, 0(a1)
200121d8:      	lui	a2, 64
200121dc:      	or	a0, a0, a2
200121de:      	sw	a0, 0(a1)
200121e0:      	lw	a0, 40(sp)
200121e2:      	sw	a0, 8(sp)
200121e4:      	j	0x200121e6 <e310x_hal::clock::CoreClk::configure_with_external::{{closure}}::h99943d366da260e2+0x28>
200121e6:      	lw	a0, 8(sp)
200121e8:      	addi	sp, sp, 48
200121ea:      	ret

200121ec <e310x_hal::clock::CoreClk::configure_with_external::{{closure}}::ha1907219b311b3da>:
200121ec:      	addi	sp, sp, -32
200121ee:      	sw	a0, 12(sp)
200121f0:      	sw	a0, 20(sp)
200121f2:      	sw	a0, 16(sp)
200121f4:      	sw	a0, 4(sp)
200121f6:      	j	0x200121f8 <e310x_hal::clock::CoreClk::configure_with_external::{{closure}}::ha1907219b311b3da+0xc>
200121f8:      	lw	a1, 4(sp)
200121fa:      	sw	a1, 24(sp)
200121fc:      	li	a0, 1
200121fe:      	sb	a0, 31(sp)
20012202:      	lw	a0, 0(a1)
20012204:      	ori	a0, a0, 256
20012208:      	sw	a0, 0(a1)
2001220a:      	lw	a0, 24(sp)
2001220c:      	sw	a0, 0(sp)
2001220e:      	j	0x20012210 <e310x_hal::clock::CoreClk::configure_with_external::{{closure}}::ha1907219b311b3da+0x24>
20012210:      	lw	a0, 0(sp)
20012212:      	addi	sp, sp, 32
20012214:      	ret

20012216 <e310x_hal::clock::CoreClk::configure_with_external::{{closure}}::h035b4c0502b5e34b>:
20012216:      	addi	sp, sp, -48
20012218:      	sw	a0, 24(sp)
2001221a:      	sw	a1, 28(sp)
2001221c:      	sw	a1, 36(sp)
2001221e:      	sw	a1, 32(sp)
20012220:      	sw	a1, 12(sp)
20012222:      	j	0x20012224 <e310x_hal::clock::CoreClk::configure_with_external::{{closure}}::h035b4c0502b5e34b+0xe>
20012224:      	lw	a1, 12(sp)
20012226:      	sw	a1, 40(sp)
20012228:      	li	a0, 1
2001222a:      	sb	a0, 47(sp)
2001222e:      	lw	a0, 0(a1)
20012230:      	lui	a2, 16
20012232:      	or	a0, a0, a2
20012234:      	sw	a0, 0(a1)
20012236:      	lw	a0, 40(sp)
20012238:      	sw	a0, 8(sp)
2001223a:      	j	0x2001223c <e310x_hal::clock::CoreClk::configure_with_external::{{closure}}::h035b4c0502b5e34b+0x26>
2001223c:      	lw	a0, 8(sp)
2001223e:      	addi	sp, sp, 48
20012240:      	ret

20012242 <e310x_hal::clock::CoreClk::configure_with_external::{{closure}}::hfa79926d03ea4337>:
20012242:      	addi	sp, sp, -32
20012244:      	sw	a0, 12(sp)
20012246:      	sw	a0, 20(sp)
20012248:      	sw	a0, 16(sp)
2001224a:      	sw	a0, 4(sp)
2001224c:      	j	0x2001224e <e310x_hal::clock::CoreClk::configure_with_external::{{closure}}::hfa79926d03ea4337+0xc>
2001224e:      	lw	a1, 4(sp)
20012250:      	sw	a1, 24(sp)
20012252:      	li	a0, 0
20012254:      	sb	a0, 31(sp)
20012258:      	lw	a0, 0(a1)
2001225a:      	lui	a2, 786432
2001225e:      	addi	a2, a2, -1
20012260:      	and	a0, a0, a2
20012262:      	sw	a0, 0(a1)
20012264:      	lw	a0, 24(sp)
20012266:      	sw	a0, 0(sp)
20012268:      	j	0x2001226a <e310x_hal::clock::CoreClk::configure_with_external::{{closure}}::hfa79926d03ea4337+0x28>
2001226a:      	lw	a0, 0(sp)
2001226c:      	addi	sp, sp, 32
2001226e:      	ret

20012270 <e310x_hal::clock::CoreClk::configure_with_internal::h5557aa7129fbca36>:
20012270:      	addi	sp, sp, -208
20012272:      	sw	ra, 204(sp)
20012274:      	sw	a1, 24(sp)
20012276:      	sw	a0, 28(sp)
20012278:      	sw	a1, 36(sp)
2001227a:      	j	0x2001227c <e310x_hal::clock::CoreClk::configure_with_internal::h5557aa7129fbca36+0xc>
2001227c:      	lw	a0, 24(sp)
2001227e:      	lw	a1, 28(sp)
20012280:      	lui	a2, 65544
20012284:      	sw	a2, 40(sp)
20012286:      	lw	a1, 8(a1)
20012288:      	beq	a0, a1, 0x200122a0 <e310x_hal::clock::CoreClk::configure_with_internal::h5557aa7129fbca36+0x30>
2001228c:      	j	0x2001228e <e310x_hal::clock::CoreClk::configure_with_internal::h5557aa7129fbca36+0x1e>
2001228e:      	lw	a1, 24(sp)
20012290:      	lw	a0, 28(sp)
20012292:      	lw	a2, 8(a0)
20012294:      	auipc	ra, 0
20012298:      	jalr	764(ra)
2001229c:      	sw	a0, 20(sp)
2001229e:      	j	0x20012358 <e310x_hal::clock::CoreClk::configure_with_internal::h5557aa7129fbca36+0xe8>
200122a0:      	lw	a0, 24(sp)
200122a2:      	sw	a0, 32(sp)
200122a4:      	lui	a0, 65544
200122a8:      	addi	a0, a0, 8
200122aa:      	sw	a0, 16(sp)
200122ac:      	sw	a0, 72(sp)
200122ae:      	sw	a0, 148(sp)
200122b0:      	sw	a0, 152(sp)
200122b2:      	auipc	ra, 1
200122b6:      	jalr	936(ra)
200122ba:      	sw	a0, 76(sp)
200122bc:      	sw	a0, 64(sp)
200122be:      	sw	a0, 68(sp)
200122c0:      	addi	a0, sp, 64
200122c2:      	sw	a0, 56(sp)
200122c4:      	addi	a1, sp, 68
200122c6:      	sw	a1, 60(sp)
200122c8:      	auipc	ra, 0
200122cc:      	jalr	222(ra)
200122d0:      	mv	a1, a0
200122d2:      	lw	a0, 16(sp)
200122d4:      	lw	a1, 0(a1)
200122d6:      	sw	a0, 180(sp)
200122d8:      	sw	a1, 184(sp)
200122da:      	sw	a0, 188(sp)
200122dc:      	auipc	ra, 1
200122e0:      	jalr	912(ra)
200122e4:      	j	0x200122e6 <e310x_hal::clock::CoreClk::configure_with_internal::h5557aa7129fbca36+0x76>
200122e6:      	lui	a0, 65544
200122ea:      	addi	a0, a0, 8
200122ec:      	sw	a0, 12(sp)
200122ee:      	sw	a0, 124(sp)
200122f0:      	sw	a0, 132(sp)
200122f2:      	sw	a0, 136(sp)
200122f4:      	auipc	ra, 1
200122f8:      	jalr	870(ra)
200122fc:      	sw	a0, 128(sp)
200122fe:      	sw	a0, 116(sp)
20012300:      	sw	a0, 120(sp)
20012302:      	addi	a0, sp, 116
20012304:      	sw	a0, 104(sp)
20012306:      	addi	a1, sp, 120
20012308:      	sw	a1, 108(sp)
2001230a:      	auipc	ra, 0
2001230e:      	jalr	238(ra)
20012312:      	mv	a1, a0
20012314:      	lw	a0, 12(sp)
20012316:      	lw	a1, 0(a1)
20012318:      	sw	a0, 156(sp)
2001231a:      	sw	a1, 160(sp)
2001231c:      	sw	a0, 164(sp)
2001231e:      	auipc	ra, 1
20012322:      	jalr	846(ra)
20012326:      	j	0x20012328 <e310x_hal::clock::CoreClk::configure_with_internal::h5557aa7129fbca36+0xb8>
20012328:      	lui	a0, 65544
2001232c:      	addi	a0, a0, 4
2001232e:      	sw	a0, 8(sp)
20012330:      	sw	a0, 52(sp)
20012332:      	li	a0, 0
20012334:      	sw	a0, 48(sp)
20012336:      	addi	a0, sp, 48
20012338:      	sw	a0, 44(sp)
2001233a:      	auipc	ra, 0
2001233e:      	jalr	280(ra)
20012342:      	mv	a1, a0
20012344:      	lw	a0, 8(sp)
20012346:      	lw	a1, 0(a1)
20012348:      	sw	a0, 192(sp)
2001234a:      	sw	a1, 196(sp)
2001234c:      	sw	a0, 200(sp)
2001234e:      	auipc	ra, 1
20012352:      	jalr	798(ra)
20012356:      	j	0x2001239e <e310x_hal::clock::CoreClk::configure_with_internal::h5557aa7129fbca36+0x12e>
20012358:      	lw	a0, 20(sp)
2001235a:      	sw	a0, 32(sp)
2001235c:      	lui	a0, 65544
20012360:      	addi	a0, a0, 8
20012362:      	sw	a0, 4(sp)
20012364:      	sw	a0, 96(sp)
20012366:      	sw	a0, 140(sp)
20012368:      	sw	a0, 144(sp)
2001236a:      	auipc	ra, 1
2001236e:      	jalr	752(ra)
20012372:      	sw	a0, 100(sp)
20012374:      	sw	a0, 88(sp)
20012376:      	sw	a0, 92(sp)
20012378:      	addi	a0, sp, 88
2001237a:      	sw	a0, 80(sp)
2001237c:      	addi	a1, sp, 92
2001237e:      	sw	a1, 84(sp)
20012380:      	auipc	ra, 0
20012384:      	jalr	166(ra)
20012388:      	mv	a1, a0
2001238a:      	lw	a0, 4(sp)
2001238c:      	lw	a1, 0(a1)
2001238e:      	sw	a0, 168(sp)
20012390:      	sw	a1, 172(sp)
20012392:      	sw	a0, 176(sp)
20012394:      	auipc	ra, 1
20012398:      	jalr	728(ra)
2001239c:      	j	0x20012328 <e310x_hal::clock::CoreClk::configure_with_internal::h5557aa7129fbca36+0xb8>
2001239e:      	lw	a0, 32(sp)
200123a0:      	lw	ra, 204(sp)
200123a2:      	addi	sp, sp, 208
200123a4:      	ret

200123a6 <e310x_hal::clock::CoreClk::configure_with_internal::{{closure}}::hf9073da113ead35b>:
200123a6:      	addi	sp, sp, -64
200123a8:      	sw	a0, 24(sp)
200123aa:      	sw	a1, 28(sp)
200123ac:      	sw	a1, 36(sp)
200123ae:      	sw	a1, 32(sp)
200123b0:      	sw	a1, 12(sp)
200123b2:      	j	0x200123b4 <e310x_hal::clock::CoreClk::configure_with_internal::{{closure}}::hf9073da113ead35b+0xe>
200123b4:      	lw	a1, 12(sp)
200123b6:      	sw	a1, 48(sp)
200123b8:      	li	a0, 0
200123ba:      	sb	a0, 55(sp)
200123be:      	lw	a0, 0(a1)
200123c0:      	lui	a2, 1048560
200123c2:      	addi	a2, a2, -1
200123c4:      	and	a0, a0, a2
200123c6:      	sw	a0, 0(a1)
200123c8:      	lw	a0, 48(sp)
200123ca:      	sw	a0, 8(sp)
200123cc:      	j	0x200123ce <e310x_hal::clock::CoreClk::configure_with_internal::{{closure}}::hf9073da113ead35b+0x28>
200123ce:      	lw	a0, 8(sp)
200123d0:      	sw	a0, 44(sp)
200123d2:      	sw	a0, 40(sp)
200123d4:      	sw	a0, 4(sp)
200123d6:      	j	0x200123d8 <e310x_hal::clock::CoreClk::configure_with_internal::{{closure}}::hf9073da113ead35b+0x32>
200123d8:      	lw	a1, 4(sp)
200123da:      	sw	a1, 56(sp)
200123dc:      	li	a0, 1
200123de:      	sb	a0, 63(sp)
200123e2:      	lw	a0, 0(a1)
200123e4:      	lui	a2, 64
200123e8:      	or	a0, a0, a2
200123ea:      	sw	a0, 0(a1)
200123ec:      	lw	a0, 56(sp)
200123ee:      	sw	a0, 0(sp)
200123f0:      	j	0x200123f2 <e310x_hal::clock::CoreClk::configure_with_internal::{{closure}}::hf9073da113ead35b+0x4c>
200123f2:      	lw	a0, 0(sp)
200123f4:      	addi	sp, sp, 64
200123f6:      	ret

200123f8 <e310x_hal::clock::CoreClk::configure_with_internal::{{closure}}::h86f5a090d3b1fd74>:
200123f8:      	addi	sp, sp, -48
200123fa:      	sw	a0, 24(sp)
200123fc:      	sw	a1, 28(sp)
200123fe:      	sw	a1, 36(sp)
20012400:      	sw	a1, 32(sp)
20012402:      	sw	a1, 12(sp)
20012404:      	j	0x20012406 <e310x_hal::clock::CoreClk::configure_with_internal::{{closure}}::h86f5a090d3b1fd74+0xe>
20012406:      	lw	a1, 12(sp)
20012408:      	sw	a1, 40(sp)
2001240a:      	li	a0, 1
2001240c:      	sb	a0, 47(sp)
20012410:      	lw	a0, 0(a1)
20012412:      	lui	a2, 64
20012416:      	or	a0, a0, a2
20012418:      	sw	a0, 0(a1)
2001241a:      	lw	a0, 40(sp)
2001241c:      	sw	a0, 8(sp)
2001241e:      	j	0x20012420 <e310x_hal::clock::CoreClk::configure_with_internal::{{closure}}::h86f5a090d3b1fd74+0x28>
20012420:      	lw	a0, 8(sp)
20012422:      	addi	sp, sp, 48
20012424:      	ret

20012426 <e310x_hal::clock::CoreClk::configure_with_internal::{{closure}}::ha9ea7a8a1a73d91b>:
20012426:      	addi	sp, sp, -48
20012428:      	sw	a0, 24(sp)
2001242a:      	sw	a1, 28(sp)
2001242c:      	sw	a1, 36(sp)
2001242e:      	sw	a1, 32(sp)
20012430:      	sw	a1, 12(sp)
20012432:      	j	0x20012434 <e310x_hal::clock::CoreClk::configure_with_internal::{{closure}}::ha9ea7a8a1a73d91b+0xe>
20012434:      	lw	a1, 12(sp)
20012436:      	sw	a1, 40(sp)
20012438:      	li	a0, 1
2001243a:      	sb	a0, 47(sp)
2001243e:      	lw	a0, 0(a1)
20012440:      	lui	a2, 16
20012442:      	or	a0, a0, a2
20012444:      	sw	a0, 0(a1)
20012446:      	lw	a0, 40(sp)
20012448:      	sw	a0, 8(sp)
2001244a:      	j	0x2001244c <e310x_hal::clock::CoreClk::configure_with_internal::{{closure}}::ha9ea7a8a1a73d91b+0x26>
2001244c:      	lw	a0, 8(sp)
2001244e:      	addi	sp, sp, 48
20012450:      	ret

20012452 <e310x_hal::clock::CoreClk::configure_with_internal::{{closure}}::hd8ca308e5d55837a>:
20012452:      	addi	sp, sp, -32
20012454:      	sw	a0, 12(sp)
20012456:      	sw	a0, 20(sp)
20012458:      	sw	a0, 16(sp)
2001245a:      	sw	a0, 4(sp)
2001245c:      	j	0x2001245e <e310x_hal::clock::CoreClk::configure_with_internal::{{closure}}::hd8ca308e5d55837a+0xc>
2001245e:      	lw	a1, 4(sp)
20012460:      	sw	a1, 24(sp)
20012462:      	li	a0, 0
20012464:      	sb	a0, 31(sp)
20012468:      	lw	a0, 0(a1)
2001246a:      	lui	a2, 786432
2001246e:      	addi	a2, a2, -1
20012470:      	and	a0, a0, a2
20012472:      	sw	a0, 0(a1)
20012474:      	lw	a0, 24(sp)
20012476:      	sw	a0, 0(sp)
20012478:      	j	0x2001247a <e310x_hal::clock::CoreClk::configure_with_internal::{{closure}}::hd8ca308e5d55837a+0x28>
2001247a:      	lw	a0, 0(sp)
2001247c:      	addi	sp, sp, 32
2001247e:      	ret

20012480 <e310x_hal::clock::CoreClk::configure_hfrosc::h880c7ba2cc6898e3>:
20012480:      	addi	sp, sp, -96
20012482:      	sw	ra, 92(sp)
20012484:      	sw	a0, 28(sp)
20012486:      	j	0x20012488 <e310x_hal::clock::CoreClk::configure_hfrosc::h880c7ba2cc6898e3+0x8>
20012488:      	lui	a0, 65544
2001248c:      	sw	a0, 12(sp)
2001248e:      	sw	a0, 32(sp)
20012490:      	sw	a0, 68(sp)
20012492:      	li	a0, 0
20012494:      	sw	a0, 64(sp)
20012496:      	addi	a0, sp, 64
20012498:      	sw	a0, 60(sp)
2001249a:      	auipc	ra, 0
2001249e:      	jalr	120(ra)
200124a2:      	mv	a1, a0
200124a4:      	lw	a0, 12(sp)
200124a6:      	lw	a1, 0(a1)
200124a8:      	sw	a0, 80(sp)
200124aa:      	sw	a1, 84(sp)
200124ac:      	sw	a0, 88(sp)
200124ae:      	auipc	ra, 1
200124b2:      	jalr	446(ra)
200124b6:      	j	0x200124b8 <e310x_hal::clock::CoreClk::configure_hfrosc::h880c7ba2cc6898e3+0x38>
200124b8:      	lui	a0, 65544
200124bc:      	sw	a0, 56(sp)
200124be:      	sw	a0, 72(sp)
200124c0:      	sw	a0, 76(sp)
200124c2:      	auipc	ra, 1
200124c6:      	jalr	408(ra)
200124ca:      	sw	a0, 52(sp)
200124cc:      	sw	a0, 24(sp)
200124ce:      	j	0x200124d0 <e310x_hal::clock::CoreClk::configure_hfrosc::h880c7ba2cc6898e3+0x50>
200124d0:      	addi	a0, sp, 24
200124d2:      	sw	a0, 36(sp)
200124d4:      	lw	a0, 24(sp)
200124d6:      	srli	a0, a0, 31
200124d8:      	sb	a0, 43(sp)
200124dc:      	sb	a0, 42(sp)
200124e0:      	sb	a0, 23(sp)
200124e4:      	j	0x200124e6 <e310x_hal::clock::CoreClk::configure_hfrosc::h880c7ba2cc6898e3+0x66>
200124e6:      	addi	a0, sp, 23
200124ea:      	sw	a0, 44(sp)
200124ec:      	sw	a0, 48(sp)
200124ee:      	lb	a0, 23(sp)
200124f2:      	sw	a0, 8(sp)
200124f4:      	j	0x200124f6 <e310x_hal::clock::CoreClk::configure_hfrosc::h880c7ba2cc6898e3+0x76>
200124f6:      	lw	a0, 8(sp)
200124f8:      	andi	a0, a0, 1
200124fa:      	li	a1, 0
200124fc:      	beq	a0, a1, 0x200124b8 <e310x_hal::clock::CoreClk::configure_hfrosc::h880c7ba2cc6898e3+0x38>
20012500:      	j	0x20012502 <e310x_hal::clock::CoreClk::configure_hfrosc::h880c7ba2cc6898e3+0x82>
20012502:      	lui	a0, 3369
20012506:      	addi	a0, a0, 576
2001250a:      	sw	a0, 16(sp)
2001250c:      	lw	ra, 92(sp)
2001250e:      	addi	sp, sp, 96
20012510:      	ret

20012512 <e310x_hal::clock::CoreClk::configure_hfrosc::{{closure}}::h4aec0c0e327bd651>:
20012512:      	addi	sp, sp, -80
20012514:      	sw	a0, 28(sp)
20012516:      	sw	a0, 36(sp)
20012518:      	sw	a0, 32(sp)
2001251a:      	sw	a0, 20(sp)
2001251c:      	j	0x2001251e <e310x_hal::clock::CoreClk::configure_hfrosc::{{closure}}::h4aec0c0e327bd651+0xc>
2001251e:      	lw	a1, 20(sp)
20012520:      	sw	a1, 56(sp)
20012522:      	li	a0, 4
20012524:      	sb	a0, 63(sp)
20012528:      	lw	a0, 0(a1)
2001252a:      	andi	a0, a0, -64
2001252e:      	ori	a0, a0, 4
20012532:      	sw	a0, 0(a1)
20012534:      	lw	a0, 56(sp)
20012536:      	sw	a0, 16(sp)
20012538:      	j	0x2001253a <e310x_hal::clock::CoreClk::configure_hfrosc::{{closure}}::h4aec0c0e327bd651+0x28>
2001253a:      	lw	a0, 16(sp)
2001253c:      	sw	a0, 44(sp)
2001253e:      	sw	a0, 40(sp)
20012540:      	sw	a0, 12(sp)
20012542:      	j	0x20012544 <e310x_hal::clock::CoreClk::configure_hfrosc::{{closure}}::h4aec0c0e327bd651+0x32>
20012544:      	lw	a1, 12(sp)
20012546:      	sw	a1, 64(sp)
20012548:      	li	a0, 16
2001254a:      	sb	a0, 71(sp)
2001254e:      	lw	a0, 0(a1)
20012550:      	lui	a2, 1048080
20012554:      	addi	a2, a2, -1
20012556:      	and	a0, a0, a2
20012558:      	lui	a2, 256
2001255c:      	or	a0, a0, a2
2001255e:      	sw	a0, 0(a1)
20012560:      	lw	a0, 64(sp)
20012562:      	sw	a0, 8(sp)
20012564:      	j	0x20012566 <e310x_hal::clock::CoreClk::configure_hfrosc::{{closure}}::h4aec0c0e327bd651+0x54>
20012566:      	lw	a0, 8(sp)
20012568:      	sw	a0, 52(sp)
2001256a:      	sw	a0, 48(sp)
2001256c:      	sw	a0, 4(sp)
2001256e:      	j	0x20012570 <e310x_hal::clock::CoreClk::configure_hfrosc::{{closure}}::h4aec0c0e327bd651+0x5e>
20012570:      	lw	a1, 4(sp)
20012572:      	sw	a1, 72(sp)
20012574:      	li	a0, 1
20012576:      	sb	a0, 79(sp)
2001257a:      	lw	a0, 0(a1)
2001257c:      	lui	a2, 262144
20012580:      	or	a0, a0, a2
20012582:      	sw	a0, 0(a1)
20012584:      	lw	a0, 72(sp)
20012586:      	sw	a0, 0(sp)
20012588:      	j	0x2001258a <e310x_hal::clock::CoreClk::configure_hfrosc::{{closure}}::h4aec0c0e327bd651+0x78>
2001258a:      	lw	a0, 0(sp)
2001258c:      	addi	sp, sp, 80
2001258e:      	ret

20012590 <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f>:
20012590:      	addi	sp, sp, -480
20012592:      	sw	ra, 476(sp)
20012596:      	sw	a2, 160(sp)
20012598:      	sw	a1, 164(sp)
2001259a:      	sw	a0, 260(sp)
2001259e:      	sw	a1, 264(sp)
200125a2:      	sw	a2, 268(sp)
200125a6:      	sw	a1, 272(sp)
200125aa:      	lui	a0, 1465
200125ae:      	addi	a0, a0, -641
200125b2:      	bltu	a0, a1, 0x200125c0 <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x30>
200125b6:      	j	0x200125b8 <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x28>
200125b8:      	li	a0, 0
200125ba:      	sb	a0, 174(sp)
200125be:      	j	0x200125d4 <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x44>
200125c0:      	lw	a0, 164(sp)
200125c2:      	lui	a1, 11719
200125c6:      	addi	a1, a1, -1023
200125ca:      	sltu	a0, a0, a1
200125ce:      	sb	a0, 174(sp)
200125d2:      	j	0x200125d4 <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x44>
200125d4:      	lbu	a0, 174(sp)
200125d8:      	andi	a0, a0, 1
200125da:      	li	a1, 0
200125dc:      	beq	a0, a1, 0x200125f6 <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x66>
200125e0:      	j	0x200125e2 <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x52>
200125e2:      	lw	a1, 160(sp)
200125e4:      	sw	a1, 276(sp)
200125e8:      	lui	a0, 92
200125ec:      	addi	a0, a0, -1833
200125f0:      	bltu	a0, a1, 0x2001261c <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x8c>
200125f4:      	j	0x20012614 <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x84>
200125f6:      	lui	a0, 131093
200125fa:      	addi	a0, a0, 412
200125fe:      	lui	a1, 131093
20012602:      	addi	a2, a1, 572
20012606:      	li	a1, 72
2001260a:      	auipc	ra, 1
2001260e:      	jalr	1612(ra)
20012612:      	unimp	
20012614:      	li	a0, 0
20012616:      	sb	a0, 175(sp)
2001261a:      	j	0x2001262e <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x9e>
2001261c:      	lw	a0, 160(sp)
2001261e:      	lui	a1, 93750
20012622:      	addi	a1, a1, 1
20012624:      	sltu	a0, a0, a1
20012628:      	sb	a0, 175(sp)
2001262c:      	j	0x2001262e <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x9e>
2001262e:      	lbu	a0, 175(sp)
20012632:      	andi	a0, a0, 1
20012634:      	li	a1, 0
20012636:      	beq	a0, a1, 0x20012646 <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0xb6>
2001263a:      	j	0x2001263c <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0xac>
2001263c:      	lw	a0, 160(sp)
2001263e:      	li	a1, 0
20012640:      	beq	a0, a1, 0x2001267c <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0xec>
20012644:      	j	0x20012664 <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0xd4>
20012646:      	lui	a0, 131093
2001264a:      	addi	a0, a0, 588
2001264e:      	lui	a1, 131093
20012652:      	addi	a2, a1, 660
20012656:      	li	a1, 72
2001265a:      	auipc	ra, 1
2001265e:      	jalr	1532(ra)
20012662:      	unimp	
20012664:      	lw	a1, 160(sp)
20012666:      	lui	a0, 93750
2001266a:      	divu	a1, a0, a1
2001266e:      	sw	a1, 156(sp)
20012670:      	sw	a1, 280(sp)
20012674:      	li	a0, 1
20012676:      	bltu	a0, a1, 0x200126a4 <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x114>
2001267a:      	j	0x20012698 <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x108>
2001267c:      	lui	a0, 131093
20012680:      	addi	a0, a0, 704
20012684:      	lui	a1, 131093
20012688:      	addi	a2, a1, 676
2001268c:      	li	a1, 25
2001268e:      	auipc	ra, 1
20012692:      	jalr	1480(ra)
20012696:      	unimp	
20012698:      	li	a0, 0
2001269a:      	sw	a0, 176(sp)
2001269c:      	li	a0, 1
2001269e:      	sb	a0, 183(sp)
200126a2:      	j	0x200126d2 <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x142>
200126a4:      	lw	a1, 156(sp)
200126a6:      	li	a0, 0
200126a8:      	sb	a0, 183(sp)
200126ac:      	li	a0, 128
200126b0:      	bltu	a0, a1, 0x200126c6 <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x136>
200126b4:      	j	0x200126b6 <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x126>
200126b6:      	lw	a0, 156(sp)
200126b8:      	srli	a0, a0, 1
200126ba:      	addi	a1, a0, -1
200126be:      	sw	a1, 152(sp)
200126c0:      	bltu	a0, a1, 0x200126e6 <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x156>
200126c4:      	j	0x200126e0 <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x150>
200126c6:      	lui	a0, 131093
200126ca:      	lw	a0, 732(a0)
200126ce:      	sw	a0, 176(sp)
200126d0:      	j	0x200126d2 <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x142>
200126d2:      	lbu	a0, 183(sp)
200126d6:      	andi	a0, a0, 1
200126d8:      	li	a1, 0
200126da:      	bne	a0, a1, 0x20012712 <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x182>
200126de:      	j	0x20012704 <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x174>
200126e0:      	lw	a0, 152(sp)
200126e2:      	sw	a0, 176(sp)
200126e4:      	j	0x200126d2 <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x142>
200126e6:      	lui	a0, 131093
200126ea:      	addi	a0, a0, 768
200126ee:      	lui	a1, 131093
200126f2:      	addi	a2, a1, 740
200126f6:      	li	a1, 33
200126fa:      	auipc	ra, 1
200126fe:      	jalr	1372(ra)
20012702:      	unimp	
20012704:      	lw	a1, 176(sp)
20012706:      	addi	a0, a1, 1
2001270a:      	sw	a0, 148(sp)
2001270c:      	bltu	a0, a1, 0x2001273c <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x1ac>
20012710:      	j	0x2001272e <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x19e>
20012712:      	li	a0, 1
20012714:      	sw	a0, 184(sp)
20012716:      	j	0x20012718 <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x188>
20012718:      	lw	a0, 160(sp)
2001271a:      	lw	a1, 184(sp)
2001271c:      	mul	a2, a0, a1
20012720:      	sw	a2, 144(sp)
20012722:      	mulhu	a0, a0, a1
20012726:      	li	a1, 0
20012728:      	bne	a0, a1, 0x20012790 <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x200>
2001272c:      	j	0x2001277c <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x1ec>
2001272e:      	lw	a1, 148(sp)
20012730:      	add	a0, a1, a1
20012734:      	sw	a0, 140(sp)
20012736:      	bltu	a0, a1, 0x2001275e <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x1ce>
2001273a:      	j	0x20012758 <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x1c8>
2001273c:      	lui	a0, 131093
20012740:      	addi	a0, a0, 832
20012744:      	lui	a1, 131093
20012748:      	addi	a2, a1, 804
2001274c:      	li	a1, 28
2001274e:      	auipc	ra, 1
20012752:      	jalr	1288(ra)
20012756:      	unimp	
20012758:      	lw	a0, 140(sp)
2001275a:      	sw	a0, 184(sp)
2001275c:      	j	0x20012718 <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x188>
2001275e:      	lui	a0, 131093
20012762:      	addi	a0, a0, 880
20012766:      	lui	a1, 131093
2001276a:      	addi	a2, a1, 860
2001276e:      	li	a1, 33
20012772:      	auipc	ra, 1
20012776:      	jalr	1252(ra)
2001277a:      	unimp	
2001277c:      	lw	a1, 144(sp)
2001277e:      	sw	a1, 284(sp)
20012782:      	lui	a0, 11719
20012786:      	addi	a0, a0, -1025
2001278a:      	bltu	a0, a1, 0x200127b6 <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x226>
2001278e:      	j	0x200127ae <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x21e>
20012790:      	lui	a0, 131093
20012794:      	addi	a0, a0, 880
20012798:      	lui	a1, 131093
2001279c:      	addi	a2, a1, 916
200127a0:      	li	a1, 33
200127a4:      	auipc	ra, 1
200127a8:      	jalr	1202(ra)
200127ac:      	unimp	
200127ae:      	li	a0, 0
200127b0:      	sb	a0, 191(sp)
200127b4:      	j	0x200127c8 <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x238>
200127b6:      	lw	a0, 144(sp)
200127b8:      	lui	a1, 93750
200127bc:      	addi	a1, a1, 1
200127be:      	sltu	a0, a0, a1
200127c2:      	sb	a0, 191(sp)
200127c6:      	j	0x200127c8 <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x238>
200127c8:      	lbu	a0, 191(sp)
200127cc:      	andi	a0, a0, 1
200127ce:      	li	a1, 0
200127d0:      	beq	a0, a1, 0x200127e6 <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x256>
200127d4:      	j	0x200127d6 <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x246>
200127d6:      	lw	a1, 164(sp)
200127d8:      	lui	a0, 5859
200127dc:      	addi	a0, a0, 1535
200127e0:      	bltu	a0, a1, 0x20012814 <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x284>
200127e4:      	j	0x20012804 <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x274>
200127e6:      	lui	a0, 131093
200127ea:      	addi	a0, a0, 932
200127ee:      	lui	a1, 131093
200127f2:      	addi	a2, a1, 1004
200127f6:      	li	a1, 72
200127fa:      	auipc	ra, 1
200127fe:      	jalr	1116(ra)
20012802:      	unimp	
20012804:      	lw	a1, 164(sp)
20012806:      	lui	a0, 4395
2001280a:      	addi	a0, a0, -1921
2001280e:      	bltu	a0, a1, 0x20012846 <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x2b6>
20012812:      	j	0x20012836 <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x2a6>
20012814:      	lw	a1, 164(sp)
20012816:      	lui	a0, 11719
2001281a:      	addi	a0, a0, -1024
2001281e:      	bltu	a0, a1, 0x20012804 <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x274>
20012822:      	j	0x20012824 <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x294>
20012824:      	li	a0, 4
20012826:      	sw	a0, 192(sp)
20012828:      	j	0x2001282a <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x29a>
2001282a:      	lw	a0, 192(sp)
2001282c:      	sw	a0, 136(sp)
2001282e:      	li	a1, 0
20012830:      	beq	a0, a1, 0x200128d2 <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x342>
20012834:      	j	0x200128b6 <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x326>
20012836:      	lw	a1, 164(sp)
20012838:      	lui	a0, 2930
2001283c:      	addi	a0, a0, -1281
20012840:      	bltu	a0, a1, 0x2001286c <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x2dc>
20012844:      	j	0x2001285c <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x2cc>
20012846:      	lw	a1, 164(sp)
20012848:      	lui	a0, 5859
2001284c:      	addi	a0, a0, 1535
20012850:      	bltu	a0, a1, 0x20012836 <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x2a6>
20012854:      	j	0x20012856 <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x2c6>
20012856:      	li	a0, 3
20012858:      	sw	a0, 192(sp)
2001285a:      	j	0x2001282a <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x29a>
2001285c:      	lw	a1, 164(sp)
2001285e:      	lui	a0, 1465
20012862:      	addi	a0, a0, -641
20012866:      	bltu	a0, a1, 0x200128a0 <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x310>
2001286a:      	j	0x20012882 <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x2f2>
2001286c:      	lw	a1, 164(sp)
2001286e:      	lui	a0, 4395
20012872:      	addi	a0, a0, -1921
20012876:      	bltu	a0, a1, 0x2001285c <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x2cc>
2001287a:      	j	0x2001287c <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x2ec>
2001287c:      	li	a0, 2
2001287e:      	sw	a0, 192(sp)
20012880:      	j	0x2001282a <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x29a>
20012882:      	lui	a0, 131093
20012886:      	addi	a0, a0, 1552
2001288a:      	lui	a1, 131093
2001288e:      	addi	a2, a1, 1640
20012892:      	li	a1, 40
20012896:      	auipc	ra, 1
2001289a:      	jalr	960(ra)
2001289e:      	unimp	
200128a0:      	lw	a1, 164(sp)
200128a2:      	lui	a0, 2930
200128a6:      	addi	a0, a0, -1281
200128aa:      	bltu	a0, a1, 0x20012882 <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x2f2>
200128ae:      	j	0x200128b0 <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x320>
200128b0:      	li	a0, 1
200128b2:      	sw	a0, 192(sp)
200128b4:      	j	0x2001282a <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x29a>
200128b6:      	lw	a0, 164(sp)
200128b8:      	lw	a1, 136(sp)
200128ba:      	divu	a1, a0, a1
200128be:      	sw	a1, 132(sp)
200128c0:      	sw	a1, 288(sp)
200128c4:      	lui	a0, 1465
200128c8:      	addi	a0, a0, -641
200128cc:      	bltu	a0, a1, 0x200128f6 <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x366>
200128d0:      	j	0x200128ee <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x35e>
200128d2:      	lui	a0, 131093
200128d6:      	addi	a0, a0, 704
200128da:      	lui	a1, 131093
200128de:      	addi	a2, a1, 1020
200128e2:      	li	a1, 25
200128e4:      	auipc	ra, 1
200128e8:      	jalr	882(ra)
200128ec:      	unimp	
200128ee:      	li	a0, 0
200128f0:      	sb	a0, 199(sp)
200128f4:      	j	0x2001290a <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x37a>
200128f6:      	lw	a0, 132(sp)
200128f8:      	lui	a1, 2930
200128fc:      	addi	a1, a1, -1279
20012900:      	sltu	a0, a0, a1
20012904:      	sb	a0, 199(sp)
20012908:      	j	0x2001290a <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x37a>
2001290a:      	lbu	a0, 199(sp)
2001290e:      	andi	a0, a0, 1
20012910:      	li	a1, 0
20012912:      	beq	a0, a1, 0x20012926 <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x396>
20012916:      	j	0x20012918 <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x388>
20012918:      	lw	a1, 144(sp)
2001291a:      	lui	a0, 46875
2001291e:      	addi	a0, a0, -1
20012920:      	bltu	a0, a1, 0x20012954 <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x3c4>
20012924:      	j	0x20012944 <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x3b4>
20012926:      	lui	a0, 131093
2001292a:      	addi	a0, a0, 1036
2001292e:      	lui	a1, 131093
20012932:      	addi	a2, a1, 1100
20012936:      	li	a1, 64
2001293a:      	auipc	ra, 1
2001293e:      	jalr	796(ra)
20012942:      	unimp	
20012944:      	lw	a1, 144(sp)
20012946:      	lui	a0, 23437
2001294a:      	addi	a0, a0, 2047
2001294e:      	bltu	a0, a1, 0x2001298c <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x3fc>
20012952:      	j	0x2001297c <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x3ec>
20012954:      	lw	a1, 144(sp)
20012956:      	lui	a0, 93750
2001295a:      	bltu	a0, a1, 0x20012944 <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x3b4>
2001295e:      	j	0x20012960 <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x3d0>
20012960:      	li	a0, 2
20012962:      	sw	a0, 200(sp)
20012964:      	j	0x20012966 <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x3d6>
20012966:      	lw	a0, 144(sp)
20012968:      	lw	a1, 200(sp)
2001296a:      	mul	a2, a0, a1
2001296e:      	sw	a2, 128(sp)
20012970:      	mulhu	a0, a0, a1
20012974:      	li	a1, 0
20012976:      	bne	a0, a1, 0x200129e6 <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x456>
2001297a:      	j	0x200129d4 <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x444>
2001297c:      	lw	a1, 144(sp)
2001297e:      	lui	a0, 11719
20012982:      	addi	a0, a0, -1025
20012986:      	bltu	a0, a1, 0x200129be <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x42e>
2001298a:      	j	0x200129a0 <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x410>
2001298c:      	lw	a1, 144(sp)
2001298e:      	lui	a0, 46875
20012992:      	addi	a0, a0, -1
20012994:      	bltu	a0, a1, 0x2001297c <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x3ec>
20012998:      	j	0x2001299a <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x40a>
2001299a:      	li	a0, 4
2001299c:      	sw	a0, 200(sp)
2001299e:      	j	0x20012966 <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x3d6>
200129a0:      	lui	a0, 131093
200129a4:      	addi	a0, a0, 1552
200129a8:      	lui	a1, 131093
200129ac:      	addi	a2, a1, 1624
200129b0:      	li	a1, 40
200129b4:      	auipc	ra, 1
200129b8:      	jalr	674(ra)
200129bc:      	unimp	
200129be:      	lw	a1, 144(sp)
200129c0:      	lui	a0, 23437
200129c4:      	addi	a0, a0, 2047
200129c8:      	bltu	a0, a1, 0x200129a0 <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x410>
200129cc:      	j	0x200129ce <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x43e>
200129ce:      	li	a0, 8
200129d0:      	sw	a0, 200(sp)
200129d2:      	j	0x20012966 <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x3d6>
200129d4:      	lw	a1, 128(sp)
200129d6:      	sw	a1, 292(sp)
200129da:      	lui	a0, 93750
200129de:      	addi	a0, a0, -1
200129e0:      	bltu	a0, a1, 0x20012a0c <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x47c>
200129e4:      	j	0x20012a04 <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x474>
200129e6:      	lui	a0, 131093
200129ea:      	addi	a0, a0, 880
200129ee:      	lui	a1, 131093
200129f2:      	addi	a2, a1, 1116
200129f6:      	li	a1, 33
200129fa:      	auipc	ra, 1
200129fe:      	jalr	604(ra)
20012a02:      	unimp	
20012a04:      	li	a0, 0
20012a06:      	sb	a0, 207(sp)
20012a0a:      	j	0x20012a1e <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x48e>
20012a0c:      	lw	a0, 128(sp)
20012a0e:      	lui	a1, 187500
20012a12:      	addi	a1, a1, 1
20012a14:      	sltu	a0, a0, a1
20012a18:      	sb	a0, 207(sp)
20012a1c:      	j	0x20012a1e <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x48e>
20012a1e:      	lbu	a0, 207(sp)
20012a22:      	andi	a0, a0, 1
20012a24:      	li	a1, 0
20012a26:      	beq	a0, a1, 0x20012a36 <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x4a6>
20012a2a:      	j	0x20012a2c <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x49c>
20012a2c:      	lw	a0, 132(sp)
20012a2e:      	li	a1, 0
20012a30:      	beq	a0, a1, 0x20012a6c <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x4dc>
20012a34:      	j	0x20012a54 <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x4c4>
20012a36:      	lui	a0, 131093
20012a3a:      	addi	a0, a0, 1132
20012a3e:      	lui	a1, 131093
20012a42:      	addi	a2, a1, 1208
20012a46:      	li	a1, 74
20012a4a:      	auipc	ra, 1
20012a4e:      	jalr	524(ra)
20012a52:      	unimp	
20012a54:      	lw	a0, 128(sp)
20012a56:      	lw	a1, 132(sp)
20012a58:      	divu	a1, a0, a1
20012a5c:      	sw	a1, 124(sp)
20012a5e:      	sw	a1, 296(sp)
20012a62:      	li	a0, 128
20012a66:      	bltu	a0, a1, 0x20012a98 <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x508>
20012a6a:      	j	0x20012a88 <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x4f8>
20012a6c:      	lui	a0, 131093
20012a70:      	addi	a0, a0, 704
20012a74:      	lui	a1, 131093
20012a78:      	addi	a2, a1, 1224
20012a7c:      	li	a1, 25
20012a7e:      	auipc	ra, 1
20012a82:      	jalr	472(ra)
20012a86:      	unimp	
20012a88:      	lw	a0, 124(sp)
20012a8a:      	srli	a0, a0, 1
20012a8c:      	add	a0, a0, a0
20012a8e:      	sw	a0, 120(sp)
20012a90:      	li	a0, 0
20012a92:      	bne	a0, a0, 0x20012ace <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x53e>
20012a96:      	j	0x20012ab4 <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x524>
20012a98:      	lui	a0, 131093
20012a9c:      	addi	a0, a0, 1240
20012aa0:      	lui	a1, 131093
20012aa4:      	addi	a2, a1, 1268
20012aa8:      	li	a1, 26
20012aaa:      	auipc	ra, 1
20012aae:      	jalr	428(ra)
20012ab2:      	unimp	
20012ab4:      	lw	a0, 132(sp)
20012ab6:      	lw	a1, 120(sp)
20012ab8:      	sw	a1, 300(sp)
20012abc:      	mul	a2, a0, a1
20012ac0:      	sw	a2, 116(sp)
20012ac2:      	mulhu	a0, a0, a1
20012ac6:      	li	a1, 0
20012ac8:      	bne	a0, a1, 0x20012b00 <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x570>
20012acc:      	j	0x20012aec <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x55c>
20012ace:      	lui	a0, 131093
20012ad2:      	addi	a0, a0, 880
20012ad6:      	lui	a1, 131093
20012ada:      	addi	a2, a1, 1284
20012ade:      	li	a1, 33
20012ae2:      	auipc	ra, 1
20012ae6:      	jalr	372(ra)
20012aea:      	unimp	
20012aec:      	lw	a1, 120(sp)
20012aee:      	lw	a0, 116(sp)
20012af0:      	sw	a0, 304(sp)
20012af4:      	addi	a0, a1, 2
20012af8:      	sw	a0, 112(sp)
20012afa:      	bltu	a0, a1, 0x20012b38 <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x5a8>
20012afe:      	j	0x20012b1e <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x58e>
20012b00:      	lui	a0, 131093
20012b04:      	addi	a0, a0, 880
20012b08:      	lui	a1, 131093
20012b0c:      	addi	a2, a1, 1300
20012b10:      	li	a1, 33
20012b14:      	auipc	ra, 1
20012b18:      	jalr	322(ra)
20012b1c:      	unimp	
20012b1e:      	lw	a0, 132(sp)
20012b20:      	lw	a1, 112(sp)
20012b22:      	sw	a1, 308(sp)
20012b26:      	mul	a2, a0, a1
20012b2a:      	sw	a2, 108(sp)
20012b2c:      	mulhu	a0, a0, a1
20012b30:      	li	a1, 0
20012b32:      	bne	a0, a1, 0x20012b66 <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x5d6>
20012b36:      	j	0x20012b54 <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x5c4>
20012b38:      	lui	a0, 131093
20012b3c:      	addi	a0, a0, 832
20012b40:      	lui	a1, 131093
20012b44:      	addi	a2, a1, 1316
20012b48:      	li	a1, 28
20012b4a:      	auipc	ra, 1
20012b4e:      	jalr	268(ra)
20012b52:      	unimp	
20012b54:      	lw	a0, 112(sp)
20012b56:      	lw	a1, 108(sp)
20012b58:      	sw	a1, 312(sp)
20012b5c:      	li	a1, 129
20012b60:      	bltu	a0, a1, 0x20012b8c <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x5fc>
20012b64:      	j	0x20012b84 <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x5f4>
20012b66:      	lui	a0, 131093
20012b6a:      	addi	a0, a0, 880
20012b6e:      	lui	a1, 131093
20012b72:      	addi	a2, a1, 1332
20012b76:      	li	a1, 33
20012b7a:      	auipc	ra, 1
20012b7e:      	jalr	220(ra)
20012b82:      	unimp	
20012b84:      	li	a0, 0
20012b86:      	sb	a0, 217(sp)
20012b8a:      	j	0x20012b9e <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x60e>
20012b8c:      	lw	a0, 108(sp)
20012b8e:      	lui	a1, 187500
20012b92:      	addi	a1, a1, 1
20012b94:      	sltu	a0, a0, a1
20012b98:      	sb	a0, 217(sp)
20012b9c:      	j	0x20012b9e <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x60e>
20012b9e:      	lbu	a0, 217(sp)
20012ba2:      	andi	a0, a0, 1
20012ba4:      	li	a1, 0
20012ba6:      	bne	a0, a1, 0x20012bb4 <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x624>
20012baa:      	j	0x20012bac <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x61c>
20012bac:      	li	a0, 0
20012bae:      	sb	a0, 216(sp)
20012bb2:      	j	0x20012c4e <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x6be>
20012bb4:      	lw	a2, 128(sp)
20012bb6:      	lw	a1, 108(sp)
20012bb8:      	li	a0, 0
20012bba:      	slt	a0, a0, a1
20012bbe:      	sub	a1, a2, a1
20012bc2:      	sw	a1, 104(sp)
20012bc4:      	slt	a1, a1, a2
20012bc8:      	bne	a0, a1, 0x20012bdc <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x64c>
20012bcc:      	j	0x20012bce <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x63e>
20012bce:      	lw	a0, 104(sp)
20012bd0:      	auipc	ra, 0
20012bd4:      	jalr	2018(ra)
20012bd8:      	sw	a0, 100(sp)
20012bda:      	j	0x20012bfa <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x66a>
20012bdc:      	lui	a0, 131093
20012be0:      	addi	a0, a0, 768
20012be4:      	lui	a1, 131093
20012be8:      	addi	a2, a1, 1348
20012bec:      	li	a1, 33
20012bf0:      	auipc	ra, 1
20012bf4:      	jalr	102(ra)
20012bf8:      	unimp	
20012bfa:      	lw	a2, 128(sp)
20012bfc:      	lw	a1, 116(sp)
20012bfe:      	li	a0, 0
20012c00:      	slt	a0, a0, a1
20012c04:      	sub	a1, a2, a1
20012c08:      	sw	a1, 96(sp)
20012c0a:      	slt	a1, a1, a2
20012c0e:      	bne	a0, a1, 0x20012c22 <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x692>
20012c12:      	j	0x20012c14 <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x684>
20012c14:      	lw	a0, 96(sp)
20012c16:      	auipc	ra, 0
20012c1a:      	jalr	1948(ra)
20012c1e:      	sw	a0, 92(sp)
20012c20:      	j	0x20012c40 <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x6b0>
20012c22:      	lui	a0, 131093
20012c26:      	addi	a0, a0, 768
20012c2a:      	lui	a1, 131093
20012c2e:      	addi	a2, a1, 1364
20012c32:      	li	a1, 33
20012c36:      	auipc	ra, 1
20012c3a:      	jalr	32(ra)
20012c3e:      	unimp	
20012c40:      	lw	a0, 100(sp)
20012c42:      	lw	a1, 92(sp)
20012c44:      	slt	a0, a0, a1
20012c48:      	sb	a0, 216(sp)
20012c4c:      	j	0x20012c4e <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x6be>
20012c4e:      	lbu	a0, 216(sp)
20012c52:      	andi	a0, a0, 1
20012c54:      	li	a1, 0
20012c56:      	bne	a0, a1, 0x20012c66 <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x6d6>
20012c5a:      	j	0x20012c5c <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x6cc>
20012c5c:      	lw	a0, 116(sp)
20012c5e:      	lw	a1, 120(sp)
20012c60:      	sw	a1, 208(sp)
20012c62:      	sw	a0, 212(sp)
20012c64:      	j	0x20012c70 <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x6e0>
20012c66:      	lw	a0, 108(sp)
20012c68:      	lw	a1, 112(sp)
20012c6a:      	sw	a1, 208(sp)
20012c6c:      	sw	a0, 212(sp)
20012c6e:      	j	0x20012c70 <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x6e0>
20012c70:      	lw	a0, 208(sp)
20012c72:      	sw	a0, 84(sp)
20012c74:      	sw	a0, 316(sp)
20012c78:      	lw	a1, 212(sp)
20012c7a:      	sw	a1, 88(sp)
20012c7c:      	sw	a1, 320(sp)
20012c80:      	lui	a0, 93750
20012c84:      	addi	a0, a0, -1
20012c86:      	bltu	a0, a1, 0x20012c94 <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x704>
20012c8a:      	j	0x20012c8c <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x6fc>
20012c8c:      	li	a0, 0
20012c8e:      	sb	a0, 218(sp)
20012c92:      	j	0x20012ca6 <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x716>
20012c94:      	lw	a0, 88(sp)
20012c96:      	lui	a1, 187500
20012c9a:      	addi	a1, a1, 1
20012c9c:      	sltu	a0, a0, a1
20012ca0:      	sb	a0, 218(sp)
20012ca4:      	j	0x20012ca6 <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x716>
20012ca6:      	lbu	a0, 218(sp)
20012caa:      	andi	a0, a0, 1
20012cac:      	li	a1, 0
20012cae:      	beq	a0, a1, 0x20012cc0 <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x730>
20012cb2:      	j	0x20012cb4 <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x724>
20012cb4:      	lw	a0, 200(sp)
20012cb6:      	sw	a0, 80(sp)
20012cb8:      	li	a1, 0
20012cba:      	beq	a0, a1, 0x20012cfa <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x76a>
20012cbe:      	j	0x20012cde <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x74e>
20012cc0:      	lui	a0, 131093
20012cc4:      	addi	a0, a0, 1380
20012cc8:      	lui	a1, 131093
20012ccc:      	addi	a2, a1, 1440
20012cd0:      	li	a1, 60
20012cd4:      	auipc	ra, 1
20012cd8:      	jalr	-126(ra)
20012cdc:      	unimp	
20012cde:      	lw	a0, 88(sp)
20012ce0:      	lw	a1, 80(sp)
20012ce2:      	divu	a1, a0, a1
20012ce6:      	sw	a1, 76(sp)
20012ce8:      	sw	a1, 324(sp)
20012cec:      	lui	a0, 11719
20012cf0:      	addi	a0, a0, -1025
20012cf4:      	bltu	a0, a1, 0x20012d1e <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x78e>
20012cf8:      	j	0x20012d16 <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x786>
20012cfa:      	lui	a0, 131093
20012cfe:      	addi	a0, a0, 704
20012d02:      	lui	a1, 131093
20012d06:      	addi	a2, a1, 1456
20012d0a:      	li	a1, 25
20012d0c:      	auipc	ra, 1
20012d10:      	jalr	-182(ra)
20012d14:      	unimp	
20012d16:      	li	a0, 0
20012d18:      	sb	a0, 219(sp)
20012d1c:      	j	0x20012d30 <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x7a0>
20012d1e:      	lw	a0, 76(sp)
20012d20:      	lui	a1, 93750
20012d24:      	addi	a1, a1, 1
20012d26:      	sltu	a0, a0, a1
20012d2a:      	sb	a0, 219(sp)
20012d2e:      	j	0x20012d30 <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x7a0>
20012d30:      	lbu	a0, 219(sp)
20012d34:      	andi	a0, a0, 1
20012d36:      	li	a1, 0
20012d38:      	beq	a0, a1, 0x20012d4a <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x7ba>
20012d3c:      	j	0x20012d3e <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x7ae>
20012d3e:      	lw	a0, 184(sp)
20012d40:      	sw	a0, 72(sp)
20012d42:      	li	a1, 0
20012d44:      	beq	a0, a1, 0x20012d84 <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x7f4>
20012d48:      	j	0x20012d68 <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x7d8>
20012d4a:      	lui	a0, 131093
20012d4e:      	addi	a0, a0, 932
20012d52:      	lui	a1, 131093
20012d56:      	addi	a2, a1, 1472
20012d5a:      	li	a1, 72
20012d5e:      	auipc	ra, 1
20012d62:      	jalr	-264(ra)
20012d66:      	unimp	
20012d68:      	lw	a0, 76(sp)
20012d6a:      	lw	a1, 72(sp)
20012d6c:      	divu	a1, a0, a1
20012d70:      	sw	a1, 68(sp)
20012d72:      	sw	a1, 328(sp)
20012d76:      	lui	a0, 92
20012d7a:      	addi	a0, a0, -1833
20012d7e:      	bltu	a0, a1, 0x20012da8 <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x818>
20012d82:      	j	0x20012da0 <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x810>
20012d84:      	lui	a0, 131093
20012d88:      	addi	a0, a0, 704
20012d8c:      	lui	a1, 131093
20012d90:      	addi	a2, a1, 1488
20012d94:      	li	a1, 25
20012d96:      	auipc	ra, 1
20012d9a:      	jalr	-320(ra)
20012d9e:      	unimp	
20012da0:      	li	a0, 0
20012da2:      	sb	a0, 220(sp)
20012da6:      	j	0x20012dba <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x82a>
20012da8:      	lw	a0, 68(sp)
20012daa:      	lui	a1, 93750
20012dae:      	addi	a1, a1, 1
20012db0:      	sltu	a0, a0, a1
20012db4:      	sb	a0, 220(sp)
20012db8:      	j	0x20012dba <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x82a>
20012dba:      	lbu	a0, 220(sp)
20012dbe:      	andi	a0, a0, 1
20012dc0:      	li	a1, 0
20012dc2:      	beq	a0, a1, 0x20012dd6 <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x846>
20012dc6:      	j	0x20012dc8 <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x838>
20012dc8:      	lw	a0, 192(sp)
20012dca:      	addi	a1, a0, -1
20012dce:      	sw	a1, 64(sp)
20012dd0:      	bltu	a0, a1, 0x20012e0a <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x87a>
20012dd4:      	j	0x20012df4 <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x864>
20012dd6:      	lui	a0, 131093
20012dda:      	addi	a0, a0, 588
20012dde:      	lui	a1, 131093
20012de2:      	addi	a2, a1, 1504
20012de6:      	li	a1, 72
20012dea:      	auipc	ra, 1
20012dee:      	jalr	-404(ra)
20012df2:      	unimp	
20012df4:      	lw	a0, 84(sp)
20012df6:      	lw	a1, 64(sp)
20012df8:      	sb	a1, 221(sp)
20012dfc:      	srli	a0, a0, 1
20012dfe:      	addi	a1, a0, -1
20012e02:      	sw	a1, 60(sp)
20012e04:      	bltu	a0, a1, 0x20012e4e <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x8be>
20012e08:      	j	0x20012e28 <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x898>
20012e0a:      	lui	a0, 131093
20012e0e:      	addi	a0, a0, 768
20012e12:      	lui	a1, 131093
20012e16:      	addi	a2, a1, 1520
20012e1a:      	li	a1, 33
20012e1e:      	auipc	ra, 1
20012e22:      	jalr	-456(ra)
20012e26:      	unimp	
20012e28:      	lw	a0, 60(sp)
20012e2a:      	sb	a0, 222(sp)
20012e2e:      	lw	a0, 200(sp)
20012e30:      	sw	a0, 56(sp)
20012e32:      	li	a1, 2
20012e34:      	beq	a0, a1, 0x20012e8a <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x8fa>
20012e38:      	j	0x20012e3a <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x8aa>
20012e3a:      	lw	a0, 56(sp)
20012e3c:      	li	a1, 4
20012e3e:      	beq	a0, a1, 0x20012e92 <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x902>
20012e42:      	j	0x20012e44 <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x8b4>
20012e44:      	lw	a0, 56(sp)
20012e46:      	li	a1, 8
20012e48:      	beq	a0, a1, 0x20012e9a <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x90a>
20012e4c:      	j	0x20012e6c <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x8dc>
20012e4e:      	lui	a0, 131093
20012e52:      	addi	a0, a0, 768
20012e56:      	lui	a1, 131093
20012e5a:      	addi	a2, a1, 1536
20012e5e:      	li	a1, 33
20012e62:      	auipc	ra, 1
20012e66:      	jalr	-524(ra)
20012e6a:      	unimp	
20012e6c:      	lui	a0, 131093
20012e70:      	addi	a0, a0, 1552
20012e74:      	lui	a1, 131093
20012e78:      	addi	a2, a1, 1592
20012e7c:      	li	a1, 40
20012e80:      	auipc	ra, 1
20012e84:      	jalr	-554(ra)
20012e88:      	unimp	
20012e8a:      	li	a0, 1
20012e8c:      	sb	a0, 223(sp)
20012e90:      	j	0x20012ea2 <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x912>
20012e92:      	li	a0, 2
20012e94:      	sb	a0, 223(sp)
20012e98:      	j	0x20012ea2 <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x912>
20012e9a:      	li	a0, 3
20012e9c:      	sb	a0, 223(sp)
20012ea0:      	j	0x20012ea2 <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x912>
20012ea2:      	j	0x20012ea4 <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x914>
20012ea4:      	lui	a0, 65544
20012ea8:      	sw	a0, 332(sp)
20012eac:      	addi	a1, sp, 221
20012eb0:      	sw	a1, 224(sp)
20012eb2:      	addi	a1, sp, 222
20012eb6:      	sw	a1, 228(sp)
20012eb8:      	addi	a1, sp, 223
20012ebc:      	sw	a1, 232(sp)
20012ebe:      	addi	a0, a0, 8
20012ec0:      	sw	a0, 52(sp)
20012ec2:      	sw	a0, 428(sp)
20012ec6:      	sw	a0, 436(sp)
20012eca:      	sw	a0, 440(sp)
20012ece:      	auipc	ra, 0
20012ed2:      	jalr	1932(ra)
20012ed6:      	sw	a0, 432(sp)
20012eda:      	lw	a1, 224(sp)
20012edc:      	sw	a1, 392(sp)
20012ee0:      	lw	a1, 228(sp)
20012ee2:      	sw	a1, 396(sp)
20012ee6:      	lw	a1, 232(sp)
20012ee8:      	sw	a1, 400(sp)
20012eec:      	sw	a0, 420(sp)
20012ef0:      	sw	a0, 424(sp)
20012ef4:      	addi	a1, sp, 420
20012ef6:      	sw	a1, 408(sp)
20012efa:      	addi	a2, sp, 424
20012efc:      	sw	a2, 412(sp)
20012f00:      	addi	a0, sp, 392
20012f02:      	auipc	ra, 0
20012f06:      	jalr	380(ra)
20012f0a:      	mv	a1, a0
20012f0c:      	lw	a0, 52(sp)
20012f0e:      	lw	a1, 0(a1)
20012f10:      	sw	a0, 452(sp)
20012f14:      	sw	a1, 456(sp)
20012f18:      	sw	a0, 460(sp)
20012f1c:      	auipc	ra, 0
20012f20:      	jalr	1872(ra)
20012f24:      	j	0x20012f26 <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x996>
20012f26:      	addi	a0, sp, 176
20012f28:      	sw	a0, 240(sp)
20012f2a:      	addi	a1, sp, 183
20012f2e:      	sw	a1, 244(sp)
20012f30:      	lui	a2, 65544
20012f34:      	addi	a2, a2, 12
20012f36:      	sw	a2, 48(sp)
20012f38:      	sw	a2, 380(sp)
20012f3c:      	sw	a0, 384(sp)
20012f40:      	sw	a1, 388(sp)
20012f44:      	li	a2, 256
20012f48:      	sw	a2, 376(sp)
20012f4c:      	addi	a2, sp, 376
20012f4e:      	sw	a2, 372(sp)
20012f52:      	auipc	ra, 0
20012f56:      	jalr	490(ra)
20012f5a:      	mv	a1, a0
20012f5c:      	lw	a0, 48(sp)
20012f5e:      	lw	a1, 0(a1)
20012f60:      	sw	a0, 464(sp)
20012f64:      	sw	a1, 468(sp)
20012f68:      	sw	a0, 472(sp)
20012f6c:      	auipc	ra, 0
20012f70:      	jalr	1792(ra)
20012f74:      	j	0x20012f76 <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x9e6>
20012f76:      	addi	a0, sp, 248
20012f78:      	auipc	ra, 1
20012f7c:      	jalr	-1928(ra)
20012f80:      	sw	a1, 40(sp)
20012f82:      	sw	a0, 44(sp)
20012f84:      	j	0x20012f86 <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0x9f6>
20012f86:      	lw	a1, 44(sp)
20012f88:      	lw	a4, 40(sp)
20012f8a:      	addi	a0, a1, 4
20012f8e:      	sw	a0, 24(sp)
20012f90:      	sltu	a2, a0, a1
20012f94:      	add	a3, a4, a2
20012f98:      	sw	a3, 28(sp)
20012f9a:      	sltu	a3, a3, a4
20012f9e:      	sw	a3, 32(sp)
20012fa0:      	sw	a2, 36(sp)
20012fa2:      	bgeu	a0, a1, 0x20012faa <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0xa1a>
20012fa6:      	lw	a0, 32(sp)
20012fa8:      	sw	a0, 36(sp)
20012faa:      	lw	a0, 36(sp)
20012fac:      	li	a1, 0
20012fae:      	bne	a0, a1, 0x20012fc2 <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0xa32>
20012fb2:      	j	0x20012fb4 <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0xa24>
20012fb4:      	lw	a0, 28(sp)
20012fb6:      	lw	a1, 24(sp)
20012fb8:      	sw	a1, 336(sp)
20012fbc:      	sw	a0, 340(sp)
20012fc0:      	j	0x20012fde <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0xa4e>
20012fc2:      	lui	a0, 131093
20012fc6:      	addi	a0, a0, 832
20012fca:      	lui	a1, 131093
20012fce:      	addi	a2, a1, 1608
20012fd2:      	li	a1, 28
20012fd4:      	auipc	ra, 1
20012fd8:      	jalr	-894(ra)
20012fdc:      	unimp	
20012fde:      	addi	a0, sp, 248
20012fe0:      	auipc	ra, 1
20012fe4:      	jalr	-2032(ra)
20012fe8:      	sw	a1, 16(sp)
20012fea:      	sw	a0, 20(sp)
20012fec:      	j	0x20012fee <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0xa5e>
20012fee:      	lw	a0, 16(sp)
20012ff0:      	lw	a1, 28(sp)
20012ff2:      	lw	a2, 20(sp)
20012ff4:      	lw	a3, 24(sp)
20012ff6:      	sltu	a2, a2, a3
20012ffa:      	sltu	a3, a0, a1
20012ffe:      	sw	a3, 8(sp)
20013000:      	sw	a2, 12(sp)
20013002:      	beq	a0, a1, 0x2001300a <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0xa7a>
20013006:      	lw	a0, 8(sp)
20013008:      	sw	a0, 12(sp)
2001300a:      	lw	a0, 12(sp)
2001300c:      	li	a1, 0
2001300e:      	bne	a0, a1, 0x20012fde <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0xa4e>
20013012:      	j	0x20013014 <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0xa84>
20013014:      	lui	a0, 65544
20013018:      	addi	a0, a0, 8
2001301a:      	sw	a0, 368(sp)
2001301e:      	sw	a0, 444(sp)
20013022:      	sw	a0, 448(sp)
20013026:      	auipc	ra, 0
2001302a:      	jalr	1588(ra)
2001302e:      	sw	a0, 364(sp)
20013032:      	sw	a0, 256(sp)
20013036:      	j	0x20013038 <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0xaa8>
20013038:      	addi	a0, sp, 256
2001303a:      	sw	a0, 348(sp)
2001303e:      	lw	a0, 256(sp)
20013042:      	srli	a0, a0, 31
20013044:      	sb	a0, 355(sp)
20013048:      	sb	a0, 354(sp)
2001304c:      	sb	a0, 255(sp)
20013050:      	j	0x20013052 <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0xac2>
20013052:      	addi	a0, sp, 255
20013056:      	sw	a0, 356(sp)
2001305a:      	sw	a0, 360(sp)
2001305e:      	lb	a0, 255(sp)
20013062:      	sw	a0, 4(sp)
20013064:      	j	0x20013066 <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0xad6>
20013066:      	lw	a0, 4(sp)
20013068:      	andi	a0, a0, 1
2001306a:      	li	a1, 0
2001306c:      	beq	a0, a1, 0x20013014 <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0xa84>
20013070:      	j	0x20013072 <e310x_hal::clock::CoreClk::configure_pll::h2c3cddcfd7b2170f+0xae2>
20013072:      	lw	a0, 68(sp)
20013074:      	sw	a0, 168(sp)
20013076:      	lw	ra, 476(sp)
2001307a:      	addi	sp, sp, 480
2001307c:      	ret

2001307e <e310x_hal::clock::CoreClk::configure_pll::{{closure}}::h4fac4f10b7d1fed4>:
2001307e:      	addi	sp, sp, -112
20013080:      	sw	a0, 32(sp)
20013082:      	sw	a1, 40(sp)
20013084:      	sw	a2, 44(sp)
20013086:      	sw	a2, 68(sp)
20013088:      	sw	a2, 64(sp)
2001308a:      	sw	a2, 36(sp)
2001308c:      	j	0x2001308e <e310x_hal::clock::CoreClk::configure_pll::{{closure}}::h4fac4f10b7d1fed4+0x10>
2001308e:      	lw	a1, 36(sp)
20013090:      	lw	a0, 32(sp)
20013092:      	lw	a0, 0(a0)
20013094:      	lbu	a2, 0(a0)
20013098:      	sw	a1, 96(sp)
2001309a:      	sb	a2, 103(sp)
2001309e:      	lw	a0, 0(a1)
200130a0:      	andi	a0, a0, -8
200130a2:      	andi	a2, a2, 7
200130a4:      	or	a0, a0, a2
200130a6:      	sw	a0, 0(a1)
200130a8:      	lw	a0, 96(sp)
200130aa:      	sw	a0, 28(sp)
200130ac:      	j	0x200130ae <e310x_hal::clock::CoreClk::configure_pll::{{closure}}::h4fac4f10b7d1fed4+0x30>
200130ae:      	lw	a0, 28(sp)
200130b0:      	sw	a0, 52(sp)
200130b2:      	sw	a0, 48(sp)
200130b4:      	sw	a0, 24(sp)
200130b6:      	j	0x200130b8 <e310x_hal::clock::CoreClk::configure_pll::{{closure}}::h4fac4f10b7d1fed4+0x3a>
200130b8:      	lw	a1, 24(sp)
200130ba:      	lw	a0, 32(sp)
200130bc:      	lw	a0, 4(a0)
200130be:      	lbu	a2, 0(a0)
200130c2:      	sw	a1, 80(sp)
200130c4:      	sb	a2, 87(sp)
200130c8:      	lw	a0, 0(a1)
200130ca:      	andi	a0, a0, -1009
200130ce:      	andi	a2, a2, 63
200130d2:      	slli	a2, a2, 4
200130d4:      	or	a0, a0, a2
200130d6:      	sw	a0, 0(a1)
200130d8:      	lw	a0, 80(sp)
200130da:      	sw	a0, 20(sp)
200130dc:      	j	0x200130de <e310x_hal::clock::CoreClk::configure_pll::{{closure}}::h4fac4f10b7d1fed4+0x60>
200130de:      	lw	a0, 20(sp)
200130e0:      	sw	a0, 60(sp)
200130e2:      	sw	a0, 56(sp)
200130e4:      	sw	a0, 16(sp)
200130e6:      	j	0x200130e8 <e310x_hal::clock::CoreClk::configure_pll::{{closure}}::h4fac4f10b7d1fed4+0x6a>
200130e8:      	lw	a1, 16(sp)
200130ea:      	lw	a0, 32(sp)
200130ec:      	lw	a0, 8(a0)
200130ee:      	lbu	a2, 0(a0)
200130f2:      	sw	a1, 88(sp)
200130f4:      	sb	a2, 95(sp)
200130f8:      	lw	a0, 0(a1)
200130fa:      	lui	a3, 1048575
200130fc:      	addi	a3, a3, 1023
20013100:      	and	a0, a0, a3
20013102:      	andi	a2, a2, 3
20013104:      	slli	a2, a2, 10
20013106:      	or	a0, a0, a2
20013108:      	sw	a0, 0(a1)
2001310a:      	lw	a0, 88(sp)
2001310c:      	sw	a0, 12(sp)
2001310e:      	j	0x20013110 <e310x_hal::clock::CoreClk::configure_pll::{{closure}}::h4fac4f10b7d1fed4+0x92>
20013110:      	lw	a0, 12(sp)
20013112:      	sw	a0, 76(sp)
20013114:      	sw	a0, 72(sp)
20013116:      	sw	a0, 8(sp)
20013118:      	j	0x2001311a <e310x_hal::clock::CoreClk::configure_pll::{{closure}}::h4fac4f10b7d1fed4+0x9c>
2001311a:      	lw	a1, 8(sp)
2001311c:      	sw	a1, 104(sp)
2001311e:      	li	a0, 0
20013120:      	sb	a0, 111(sp)
20013124:      	lw	a0, 0(a1)
20013126:      	lui	a2, 1048512
2001312a:      	addi	a2, a2, -1
2001312c:      	and	a0, a0, a2
2001312e:      	sw	a0, 0(a1)
20013130:      	lw	a0, 104(sp)
20013132:      	sw	a0, 4(sp)
20013134:      	j	0x20013136 <e310x_hal::clock::CoreClk::configure_pll::{{closure}}::h4fac4f10b7d1fed4+0xb8>
20013136:      	lw	a0, 4(sp)
20013138:      	addi	sp, sp, 112
2001313a:      	ret

2001313c <e310x_hal::clock::CoreClk::configure_pll::{{closure}}::head70ad3536eb23b>:
2001313c:      	addi	sp, sp, -64
2001313e:      	sw	a0, 16(sp)
20013140:      	sw	a1, 20(sp)
20013142:      	sw	a2, 28(sp)
20013144:      	sw	a2, 36(sp)
20013146:      	sw	a2, 32(sp)
20013148:      	sw	a2, 12(sp)
2001314a:      	j	0x2001314c <e310x_hal::clock::CoreClk::configure_pll::{{closure}}::head70ad3536eb23b+0x10>
2001314c:      	lw	a1, 12(sp)
2001314e:      	lw	a0, 16(sp)
20013150:      	lw	a2, 0(a0)
20013152:      	sw	a1, 48(sp)
20013154:      	sb	a2, 55(sp)
20013158:      	lw	a0, 0(a1)
2001315a:      	andi	a0, a0, -64
2001315e:      	andi	a2, a2, 63
20013162:      	or	a0, a0, a2
20013164:      	sw	a0, 0(a1)
20013166:      	lw	a0, 48(sp)
20013168:      	sw	a0, 8(sp)
2001316a:      	j	0x2001316c <e310x_hal::clock::CoreClk::configure_pll::{{closure}}::head70ad3536eb23b+0x30>
2001316c:      	lw	a0, 8(sp)
2001316e:      	sw	a0, 44(sp)
20013170:      	sw	a0, 40(sp)
20013172:      	sw	a0, 4(sp)
20013174:      	j	0x20013176 <e310x_hal::clock::CoreClk::configure_pll::{{closure}}::head70ad3536eb23b+0x3a>
20013176:      	lw	a1, 4(sp)
20013178:      	lw	a0, 20(sp)
2001317a:      	lbu	a2, 0(a0)
2001317e:      	sw	a1, 56(sp)
20013180:      	sb	a2, 63(sp)
20013184:      	lw	a0, 0(a1)
20013186:      	andi	a0, a0, -257
2001318a:      	slli	a2, a2, 8
2001318c:      	or	a0, a0, a2
2001318e:      	sw	a0, 0(a1)
20013190:      	lw	a0, 56(sp)
20013192:      	sw	a0, 0(sp)
20013194:      	j	0x20013196 <e310x_hal::clock::CoreClk::configure_pll::{{closure}}::head70ad3536eb23b+0x5a>
20013196:      	lw	a0, 0(sp)
20013198:      	addi	sp, sp, 64
2001319a:      	ret

2001319c <e310x_hal::clock::AonClk::freeze::h8d6d43e18c5c2575>:
2001319c:      	addi	sp, sp, -160
2001319e:      	sw	ra, 156(sp)
200131a0:      	sw	a0, 24(sp)
200131a2:      	sw	a1, 28(sp)
200131a4:      	j	0x200131a6 <e310x_hal::clock::AonClk::freeze::h8d6d43e18c5c2575+0xa>
200131a6:      	lui	a0, 65536
200131aa:      	sw	a0, 60(sp)
200131ac:      	lw	a0, 24(sp)
200131ae:      	li	a1, 0
200131b0:      	beq	a0, a1, 0x200131ee <e310x_hal::clock::AonClk::freeze::h8d6d43e18c5c2575+0x52>
200131b4:      	j	0x200131b6 <e310x_hal::clock::AonClk::freeze::h8d6d43e18c5c2575+0x1a>
200131b6:      	lw	a0, 28(sp)
200131b8:      	sw	a0, 16(sp)
200131ba:      	sw	a0, 64(sp)
200131bc:      	lui	a0, 65536
200131c0:      	addi	a0, a0, 112
200131c4:      	sw	a0, 20(sp)
200131c6:      	sw	a0, 120(sp)
200131c8:      	li	a0, 0
200131ca:      	sw	a0, 116(sp)
200131cc:      	addi	a0, sp, 116
200131ce:      	sw	a0, 112(sp)
200131d0:      	auipc	ra, 0
200131d4:      	jalr	206(ra)
200131d8:      	mv	a1, a0
200131da:      	lw	a0, 20(sp)
200131dc:      	lw	a1, 0(a1)
200131de:      	sw	a0, 132(sp)
200131e0:      	sw	a1, 136(sp)
200131e2:      	sw	a0, 140(sp)
200131e4:      	auipc	ra, 0
200131e8:      	jalr	1160(ra)
200131ec:      	j	0x20013298 <e310x_hal::clock::AonClk::freeze::h8d6d43e18c5c2575+0xfc>
200131ee:      	li	a0, 16
200131f0:      	sb	a0, 38(sp)
200131f4:      	li	a0, 4
200131f6:      	sb	a0, 39(sp)
200131fa:      	addi	a0, sp, 38
200131fe:      	sw	a0, 40(sp)
20013200:      	addi	a1, sp, 39
20013204:      	sw	a1, 44(sp)
20013206:      	lui	a2, 65536
2001320a:      	addi	a2, a2, 112
2001320e:      	sw	a2, 12(sp)
20013210:      	sw	a2, 100(sp)
20013212:      	sw	a0, 104(sp)
20013214:      	sw	a1, 108(sp)
20013216:      	li	a2, 0
20013218:      	sw	a2, 96(sp)
2001321a:      	addi	a2, sp, 96
2001321c:      	sw	a2, 92(sp)
2001321e:      	auipc	ra, 0
20013222:      	jalr	174(ra)
20013226:      	mv	a1, a0
20013228:      	lw	a0, 12(sp)
2001322a:      	lw	a1, 0(a1)
2001322c:      	sw	a0, 144(sp)
2001322e:      	sw	a1, 148(sp)
20013230:      	sw	a0, 152(sp)
20013232:      	auipc	ra, 0
20013236:      	jalr	1082(ra)
2001323a:      	j	0x2001323c <e310x_hal::clock::AonClk::freeze::h8d6d43e18c5c2575+0xa0>
2001323c:      	lui	a0, 65536
20013240:      	addi	a0, a0, 112
20013244:      	sw	a0, 88(sp)
20013246:      	sw	a0, 124(sp)
20013248:      	sw	a0, 128(sp)
2001324a:      	auipc	ra, 0
2001324e:      	jalr	1040(ra)
20013252:      	sw	a0, 84(sp)
20013254:      	sw	a0, 56(sp)
20013256:      	j	0x20013258 <e310x_hal::clock::AonClk::freeze::h8d6d43e18c5c2575+0xbc>
20013258:      	addi	a0, sp, 56
2001325a:      	sw	a0, 68(sp)
2001325c:      	lw	a0, 56(sp)
2001325e:      	srli	a0, a0, 31
20013260:      	sb	a0, 75(sp)
20013264:      	sb	a0, 74(sp)
20013268:      	sb	a0, 55(sp)
2001326c:      	j	0x2001326e <e310x_hal::clock::AonClk::freeze::h8d6d43e18c5c2575+0xd2>
2001326e:      	addi	a0, sp, 55
20013272:      	sw	a0, 76(sp)
20013274:      	sw	a0, 80(sp)
20013276:      	lb	a0, 55(sp)
2001327a:      	sw	a0, 8(sp)
2001327c:      	j	0x2001327e <e310x_hal::clock::AonClk::freeze::h8d6d43e18c5c2575+0xe2>
2001327e:      	lw	a0, 8(sp)
20013280:      	andi	a0, a0, 1
20013282:      	li	a1, 0
20013284:      	beq	a0, a1, 0x2001323c <e310x_hal::clock::AonClk::freeze::h8d6d43e18c5c2575+0xa0>
20013288:      	j	0x2001328a <e310x_hal::clock::AonClk::freeze::h8d6d43e18c5c2575+0xee>
2001328a:      	lui	a0, 8
2001328c:      	sw	a0, 32(sp)
2001328e:      	j	0x20013290 <e310x_hal::clock::AonClk::freeze::h8d6d43e18c5c2575+0xf4>
20013290:      	lw	a0, 32(sp)
20013292:      	lw	ra, 156(sp)
20013294:      	addi	sp, sp, 160
20013296:      	ret
20013298:      	lw	a0, 16(sp)
2001329a:      	sw	a0, 32(sp)
2001329c:      	j	0x20013290 <e310x_hal::clock::AonClk::freeze::h8d6d43e18c5c2575+0xf4>

2001329e <e310x_hal::clock::AonClk::freeze::{{closure}}::h17e37c0ef76bbaef>:
2001329e:      	addi	sp, sp, -32
200132a0:      	sw	a0, 12(sp)
200132a2:      	sw	a0, 20(sp)
200132a4:      	sw	a0, 16(sp)
200132a6:      	sw	a0, 4(sp)
200132a8:      	j	0x200132aa <e310x_hal::clock::AonClk::freeze::{{closure}}::h17e37c0ef76bbaef+0xc>
200132aa:      	lw	a1, 4(sp)
200132ac:      	sw	a1, 24(sp)
200132ae:      	li	a0, 0
200132b0:      	sb	a0, 31(sp)
200132b4:      	lw	a0, 0(a1)
200132b6:      	lui	a2, 786432
200132ba:      	addi	a2, a2, -1
200132bc:      	and	a0, a0, a2
200132be:      	sw	a0, 0(a1)
200132c0:      	lw	a0, 24(sp)
200132c2:      	sw	a0, 0(sp)
200132c4:      	j	0x200132c6 <e310x_hal::clock::AonClk::freeze::{{closure}}::h17e37c0ef76bbaef+0x28>
200132c6:      	lw	a0, 0(sp)
200132c8:      	addi	sp, sp, 32
200132ca:      	ret

200132cc <e310x_hal::clock::AonClk::freeze::{{closure}}::hea26813b25aaeeee>:
200132cc:      	addi	sp, sp, -96
200132ce:      	sw	a2, 24(sp)
200132d0:      	sw	a0, 32(sp)
200132d2:      	sw	a1, 36(sp)
200132d4:      	sw	a2, 44(sp)
200132d6:      	sw	a2, 60(sp)
200132d8:      	sw	a2, 56(sp)
200132da:      	sw	a2, 28(sp)
200132dc:      	j	0x200132de <e310x_hal::clock::AonClk::freeze::{{closure}}::hea26813b25aaeeee+0x12>
200132de:      	lw	a1, 28(sp)
200132e0:      	lw	a0, 32(sp)
200132e2:      	lbu	a2, 0(a0)
200132e6:      	sw	a1, 80(sp)
200132e8:      	sb	a2, 87(sp)
200132ec:      	lw	a0, 0(a1)
200132ee:      	lui	a3, 1048080
200132f2:      	addi	a3, a3, -1
200132f4:      	and	a0, a0, a3
200132f6:      	andi	a2, a2, 31
200132f8:      	slli	a2, a2, 16
200132fa:      	or	a0, a0, a2
200132fc:      	sw	a0, 0(a1)
200132fe:      	j	0x20013300 <e310x_hal::clock::AonClk::freeze::{{closure}}::hea26813b25aaeeee+0x34>
20013300:      	lw	a0, 24(sp)
20013302:      	sw	a0, 52(sp)
20013304:      	sw	a0, 48(sp)
20013306:      	sw	a0, 20(sp)
20013308:      	j	0x2001330a <e310x_hal::clock::AonClk::freeze::{{closure}}::hea26813b25aaeeee+0x3e>
2001330a:      	lw	a1, 20(sp)
2001330c:      	lw	a0, 36(sp)
2001330e:      	lbu	a2, 0(a0)
20013312:      	sw	a1, 72(sp)
20013314:      	sb	a2, 79(sp)
20013318:      	lw	a0, 0(a1)
2001331a:      	andi	a0, a0, -64
2001331e:      	andi	a2, a2, 63
20013322:      	or	a0, a0, a2
20013324:      	sw	a0, 0(a1)
20013326:      	j	0x20013328 <e310x_hal::clock::AonClk::freeze::{{closure}}::hea26813b25aaeeee+0x5c>
20013328:      	lw	a0, 24(sp)
2001332a:      	sw	a0, 68(sp)
2001332c:      	sw	a0, 64(sp)
2001332e:      	sw	a0, 16(sp)
20013330:      	j	0x20013332 <e310x_hal::clock::AonClk::freeze::{{closure}}::hea26813b25aaeeee+0x66>
20013332:      	lw	a1, 16(sp)
20013334:      	sw	a1, 88(sp)
20013336:      	li	a0, 1
20013338:      	sb	a0, 95(sp)
2001333c:      	lw	a0, 0(a1)
2001333e:      	lui	a2, 262144
20013342:      	or	a0, a0, a2
20013344:      	sw	a0, 0(a1)
20013346:      	lw	a0, 88(sp)
20013348:      	sw	a0, 12(sp)
2001334a:      	j	0x2001334c <e310x_hal::clock::AonClk::freeze::{{closure}}::hea26813b25aaeeee+0x80>
2001334c:      	lw	a0, 12(sp)
2001334e:      	addi	sp, sp, 96
20013350:      	ret

20013352 <e310x_hal::clock::Clocks::freeze::hf9912176a420ade7>:
20013352:      	addi	sp, sp, -64
20013354:      	sw	ra, 60(sp)
20013356:      	sw	a2, 4(sp)
20013358:      	sw	a1, 8(sp)
2001335a:      	sw	a1, 40(sp)
2001335c:      	sw	a2, 44(sp)
2001335e:      	lw	a1, 0(a0)
20013360:      	sw	a1, 24(sp)
20013362:      	lw	a1, 4(a0)
20013364:      	sw	a1, 28(sp)
20013366:      	lw	a0, 8(a0)
20013368:      	sw	a0, 32(sp)
2001336a:      	addi	a0, sp, 24
2001336c:      	auipc	ra, 1048575
20013370:      	jalr	-1288(ra)
20013374:      	mv	a1, a0
20013376:      	sw	a1, 12(sp)
20013378:      	sw	a0, 52(sp)
2001337a:      	j	0x2001337c <e310x_hal::clock::Clocks::freeze::hf9912176a420ade7+0x2a>
2001337c:      	lw	a1, 4(sp)
2001337e:      	lw	a0, 8(sp)
20013380:      	auipc	ra, 0
20013384:      	jalr	-484(ra)
20013388:      	mv	a1, a0
2001338a:      	sw	a1, 0(sp)
2001338c:      	sw	a0, 56(sp)
2001338e:      	j	0x20013390 <e310x_hal::clock::Clocks::freeze::hf9912176a420ade7+0x3e>
20013390:      	lw	a1, 0(sp)
20013392:      	lw	a0, 12(sp)
20013394:      	sw	a0, 16(sp)
20013396:      	sw	a1, 20(sp)
20013398:      	lw	ra, 60(sp)
2001339a:      	addi	sp, sp, 64
2001339c:      	ret

2001339e <e310x_hal::clock::Clocks::tlclk::h58c5b9794f4fc66f>:
2001339e:      	addi	sp, sp, -16
200133a0:      	sw	a0, 12(sp)
200133a2:      	lw	a0, 0(a0)
200133a4:      	addi	sp, sp, 16
200133a6:      	ret

200133a8 <e310x_hal::clock::Clocks::lfclk::h49ac41b6bc863dec>:
200133a8:      	addi	sp, sp, -16
200133aa:      	sw	a0, 12(sp)
200133ac:      	lw	a0, 4(a0)
200133ae:      	addi	sp, sp, 16
200133b0:      	ret

200133b2 <core::num::<impl i32>::abs::hed18317fcfbc2aec>:
200133b2:      	addi	sp, sp, -32
200133b4:      	sw	a0, 12(sp)
200133b6:      	sw	a0, 24(sp)
200133b8:      	sw	a0, 28(sp)
200133ba:      	srli	a0, a0, 31
200133bc:      	sw	a0, 16(sp)
200133be:      	j	0x200133c0 <core::num::<impl i32>::abs::hed18317fcfbc2aec+0xe>
200133c0:      	lw	a0, 16(sp)
200133c2:      	li	a1, 0
200133c4:      	bne	a0, a1, 0x200133d0 <core::num::<impl i32>::abs::hed18317fcfbc2aec+0x1e>
200133c8:      	j	0x200133ca <core::num::<impl i32>::abs::hed18317fcfbc2aec+0x18>
200133ca:      	lw	a0, 12(sp)
200133cc:      	sw	a0, 20(sp)
200133ce:      	j	0x20013402 <core::num::<impl i32>::abs::hed18317fcfbc2aec+0x50>
200133d0:      	lw	a0, 12(sp)
200133d2:      	lui	a1, 524288
200133d6:      	beq	a0, a1, 0x200133e6 <core::num::<impl i32>::abs::hed18317fcfbc2aec+0x34>
200133da:      	j	0x200133dc <core::num::<impl i32>::abs::hed18317fcfbc2aec+0x2a>
200133dc:      	lw	a1, 12(sp)
200133de:      	li	a0, 0
200133e0:      	sub	a0, a0, a1
200133e2:      	sw	a0, 20(sp)
200133e4:      	j	0x20013402 <core::num::<impl i32>::abs::hed18317fcfbc2aec+0x50>
200133e6:      	lui	a0, 131093
200133ea:      	addi	a0, a0, 1760
200133ee:      	lui	a1, 131093
200133f2:      	addi	a2, a1, 1732
200133f6:      	li	a1, 31
200133f8:      	auipc	ra, 1
200133fc:      	jalr	-1954(ra)
20013400:      	unimp	
20013402:      	lw	a0, 20(sp)
20013404:      	addi	sp, sp, 32
20013406:      	ret

20013408 <riscv::register::mip::Mip::mtimer::h6d1f539971ec9461>:
20013408:      	addi	sp, sp, -16
2001340a:      	sw	ra, 12(sp)
2001340c:      	sw	a0, 8(sp)
2001340e:      	li	a1, 7
20013410:      	auipc	ra, 0
20013414:      	jalr	466(ra)
20013418:      	sw	a0, 4(sp)
2001341a:      	j	0x2001341c <riscv::register::mip::Mip::mtimer::h6d1f539971ec9461+0x14>
2001341c:      	lw	a0, 4(sp)
2001341e:      	lw	ra, 12(sp)
20013420:      	addi	sp, sp, 16
20013422:      	ret

20013424 <riscv::register::mip::read::h802ffc0c50eed868>:
20013424:      	addi	sp, sp, -16
20013426:      	sw	ra, 12(sp)
20013428:      	auipc	ra, 0
2001342c:      	jalr	22(ra)
20013430:      	sw	a0, 4(sp)
20013432:      	j	0x20013434 <riscv::register::mip::read::h802ffc0c50eed868+0x10>
20013434:      	lw	a0, 4(sp)
20013436:      	sw	a0, 8(sp)
20013438:      	lw	ra, 12(sp)
2001343a:      	addi	sp, sp, 16
2001343c:      	ret

2001343e <riscv::register::mip::_read::h88882eeda203b655>:
2001343e:      	addi	sp, sp, -16
20013440:      	sw	ra, 12(sp)
20013442:      	auipc	ra, 0
20013446:      	jalr	2040(ra)
2001344a:      	sw	a0, 8(sp)
2001344c:      	j	0x2001344e <riscv::register::mip::_read::h88882eeda203b655+0x10>
2001344e:      	lw	a0, 8(sp)
20013450:      	lw	ra, 12(sp)
20013452:      	addi	sp, sp, 16
20013454:      	ret

20013456 <e310x_hal::core::CorePeripherals::new::h48b1a3031754c0ef>:
20013456:      	addi	sp, sp, -64
20013458:      	sw	ra, 60(sp)
2001345a:      	sw	a0, 4(sp)
2001345c:      	auipc	ra, 0
20013460:      	jalr	634(ra)
20013464:      	j	0x20013466 <e310x_hal::core::CorePeripherals::new::h48b1a3031754c0ef+0x10>
20013466:      	addi	a0, sp, 8
20013468:      	auipc	ra, 0
2001346c:      	jalr	642(ra)
20013470:      	j	0x20013472 <e310x_hal::core::CorePeripherals::new::h48b1a3031754c0ef+0x1c>
20013472:      	auipc	ra, 0
20013476:      	jalr	52(ra)
2001347a:      	j	0x2001347c <e310x_hal::core::CorePeripherals::new::h48b1a3031754c0ef+0x26>
2001347c:      	lw	a0, 4(sp)
2001347e:      	addi	a1, sp, 8
20013480:      	li	a2, 36
20013484:      	auipc	ra, 1
20013488:      	jalr	508(ra)
2001348c:      	lw	ra, 60(sp)
2001348e:      	addi	sp, sp, 64
20013490:      	ret

20013492 <riscv::asm::wfi::h1083bb46ddf4b7b5>:
20013492:      	addi	sp, sp, -16
20013494:      	sw	ra, 12(sp)
20013496:      	auipc	ra, 0
2001349a:      	jalr	1920(ra)
2001349e:      	j	0x200134a0 <riscv::asm::wfi::h1083bb46ddf4b7b5+0xe>
200134a0:      	lw	ra, 12(sp)
200134a2:      	addi	sp, sp, 16
200134a4:      	ret

200134a6 <e310x_hal::core::counters::PerformanceCounters::new::h3af08da77fd48aad>:
200134a6:      	ret

200134a8 <e310x_hal::delay::Sleep::new::hbdaf2f824d1d2bf7>:
200134a8:      	addi	sp, sp, -32
200134aa:      	sw	ra, 28(sp)
200134ac:      	sw	a0, 8(sp)
200134ae:      	sw	a1, 12(sp)
200134b0:      	addi	a0, sp, 8
200134b2:      	auipc	ra, 0
200134b6:      	jalr	-266(ra)
200134ba:      	sw	a0, 4(sp)
200134bc:      	j	0x200134be <e310x_hal::delay::Sleep::new::hbdaf2f824d1d2bf7+0x16>
200134be:      	lw	a0, 4(sp)
200134c0:      	sw	a0, 20(sp)
200134c2:      	lw	ra, 28(sp)
200134c4:      	addi	sp, sp, 32
200134c6:      	ret

200134c8 <<e310x_hal::delay::Sleep as embedded_hal::blocking::delay::DelayMs<u32>>::delay_ms::h050981d9ec9ef2ef>:
200134c8:      	addi	sp, sp, -96
200134ca:      	sw	ra, 92(sp)
200134cc:      	sw	a0, 48(sp)
200134ce:      	sw	a0, 64(sp)
200134d0:      	sw	a1, 68(sp)
200134d2:      	lw	a0, 0(a0)
200134d4:      	mulhu	a2, a1, a0
200134d8:      	sw	a2, 52(sp)
200134da:      	mul	a0, a1, a0
200134de:      	sw	a0, 56(sp)
200134e0:      	li	a0, 0
200134e2:      	bne	a0, a0, 0x2001351c <<e310x_hal::delay::Sleep as embedded_hal::blocking::delay::DelayMs<u32>>::delay_ms::h050981d9ec9ef2ef+0x54>
200134e6:      	j	0x200134e8 <<e310x_hal::delay::Sleep as embedded_hal::blocking::delay::DelayMs<u32>>::delay_ms::h050981d9ec9ef2ef+0x20>
200134e8:      	lw	a1, 52(sp)
200134ea:      	lw	a0, 56(sp)
200134ec:      	li	a2, 1000
200134f0:      	li	a3, 0
200134f2:      	auipc	ra, 1
200134f6:      	jalr	1148(ra)
200134fa:      	mv	a2, a1
200134fc:      	sw	a2, 32(sp)
200134fe:      	mv	a2, a0
20013500:      	sw	a2, 36(sp)
20013502:      	sw	a1, 76(sp)
20013504:      	sw	a0, 72(sp)
20013506:      	lui	a0, 131093
2001350a:      	addi	a0, a0, 1980
2001350e:      	auipc	ra, 0
20013512:      	jalr	738(ra)
20013516:      	sw	a1, 40(sp)
20013518:      	sw	a0, 44(sp)
2001351a:      	j	0x2001353a <<e310x_hal::delay::Sleep as embedded_hal::blocking::delay::DelayMs<u32>>::delay_ms::h050981d9ec9ef2ef+0x72>
2001351c:      	lui	a0, 131093
20013520:      	addi	a0, a0, 1888
20013524:      	lui	a1, 131093
20013528:      	addi	a2, a1, 1964
2001352c:      	li	a1, 33
20013530:      	auipc	ra, 0
20013534:      	jalr	1830(ra)
20013538:      	unimp	
2001353a:      	lw	a1, 40(sp)
2001353c:      	lw	a0, 32(sp)
2001353e:      	lw	a3, 44(sp)
20013540:      	lw	a2, 36(sp)
20013542:      	add	a2, a2, a3
20013544:      	sw	a2, 16(sp)
20013546:      	sltu	a2, a2, a3
2001354a:      	add	a0, a0, a1
2001354c:      	add	a0, a0, a2
2001354e:      	sw	a0, 20(sp)
20013550:      	sltu	a3, a0, a1
20013554:      	sw	a3, 24(sp)
20013556:      	sw	a2, 28(sp)
20013558:      	beq	a0, a1, 0x20013560 <<e310x_hal::delay::Sleep as embedded_hal::blocking::delay::DelayMs<u32>>::delay_ms::h050981d9ec9ef2ef+0x98>
2001355c:      	lw	a0, 24(sp)
2001355e:      	sw	a0, 28(sp)
20013560:      	lw	a0, 28(sp)
20013562:      	li	a1, 0
20013564:      	bne	a0, a1, 0x2001357e <<e310x_hal::delay::Sleep as embedded_hal::blocking::delay::DelayMs<u32>>::delay_ms::h050981d9ec9ef2ef+0xb6>
20013568:      	j	0x2001356a <<e310x_hal::delay::Sleep as embedded_hal::blocking::delay::DelayMs<u32>>::delay_ms::h050981d9ec9ef2ef+0xa2>
2001356a:      	lw	a2, 20(sp)
2001356c:      	lw	a1, 16(sp)
2001356e:      	lw	a0, 48(sp)
20013570:      	sw	a1, 80(sp)
20013572:      	sw	a2, 84(sp)
20013574:      	auipc	ra, 0
20013578:      	jalr	910(ra)
2001357c:      	j	0x2001359a <<e310x_hal::delay::Sleep as embedded_hal::blocking::delay::DelayMs<u32>>::delay_ms::h050981d9ec9ef2ef+0xd2>
2001357e:      	lui	a0, 131093
20013582:      	addi	a0, a0, 1936
20013586:      	lui	a1, 131093
2001358a:      	addi	a2, a1, 1980
2001358e:      	li	a1, 28
20013590:      	auipc	ra, 0
20013594:      	jalr	1734(ra)
20013598:      	unimp	
2001359a:      	auipc	ra, 0
2001359e:      	jalr	224(ra)
200135a2:      	j	0x200135a4 <<e310x_hal::delay::Sleep as embedded_hal::blocking::delay::DelayMs<u32>>::delay_ms::h050981d9ec9ef2ef+0xdc>
200135a4:      	auipc	ra, 0
200135a8:      	jalr	-274(ra)
200135ac:      	j	0x200135ae <<e310x_hal::delay::Sleep as embedded_hal::blocking::delay::DelayMs<u32>>::delay_ms::h050981d9ec9ef2ef+0xe6>
200135ae:      	auipc	ra, 0
200135b2:      	jalr	-394(ra)
200135b6:      	sw	a0, 60(sp)
200135b8:      	j	0x200135ba <<e310x_hal::delay::Sleep as embedded_hal::blocking::delay::DelayMs<u32>>::delay_ms::h050981d9ec9ef2ef+0xf2>
200135ba:      	addi	a0, sp, 60
200135bc:      	auipc	ra, 0
200135c0:      	jalr	-436(ra)
200135c4:      	sw	a0, 12(sp)
200135c6:      	j	0x200135c8 <<e310x_hal::delay::Sleep as embedded_hal::blocking::delay::DelayMs<u32>>::delay_ms::h050981d9ec9ef2ef+0x100>
200135c8:      	lw	a0, 12(sp)
200135ca:      	li	a1, 0
200135cc:      	beq	a0, a1, 0x200135a4 <<e310x_hal::delay::Sleep as embedded_hal::blocking::delay::DelayMs<u32>>::delay_ms::h050981d9ec9ef2ef+0xdc>
200135d0:      	j	0x200135d2 <<e310x_hal::delay::Sleep as embedded_hal::blocking::delay::DelayMs<u32>>::delay_ms::h050981d9ec9ef2ef+0x10a>
200135d2:      	auipc	ra, 0
200135d6:      	jalr	192(ra)
200135da:      	j	0x200135dc <<e310x_hal::delay::Sleep as embedded_hal::blocking::delay::DelayMs<u32>>::delay_ms::h050981d9ec9ef2ef+0x114>
200135dc:      	lw	ra, 92(sp)
200135de:      	addi	sp, sp, 96
200135e0:      	ret

200135e2 <<usize as bit_field::BitField>::get_bit::h20e83121dee5de51>:
200135e2:      	addi	sp, sp, -32
200135e4:      	sw	a1, 16(sp)
200135e6:      	sw	a0, 20(sp)
200135e8:      	sw	a0, 24(sp)
200135ea:      	sw	a1, 28(sp)
200135ec:      	li	a0, 31
200135ee:      	bltu	a0, a1, 0x20013610 <<usize as bit_field::BitField>::get_bit::h20e83121dee5de51+0x2e>
200135f2:      	j	0x200135f4 <<usize as bit_field::BitField>::get_bit::h20e83121dee5de51+0x12>
200135f4:      	lw	a2, 16(sp)
200135f6:      	lw	a0, 20(sp)
200135f8:      	lw	a0, 0(a0)
200135fa:      	sw	a0, 8(sp)
200135fc:      	andi	a0, a2, -32
20013600:      	li	a1, 1
20013602:      	sll	a1, a1, a2
20013606:      	sw	a1, 12(sp)
20013608:      	li	a1, 0
2001360a:      	bne	a0, a1, 0x2001363c <<usize as bit_field::BitField>::get_bit::h20e83121dee5de51+0x5a>
2001360e:      	j	0x2001362e <<usize as bit_field::BitField>::get_bit::h20e83121dee5de51+0x4c>
20013610:      	lui	a0, 131093
20013614:      	addi	a0, a0, 1996
20013618:      	lui	a1, 131094
2001361c:      	addi	a2, a1, -1972
20013620:      	li	a1, 40
20013624:      	auipc	ra, 0
20013628:      	jalr	1586(ra)
2001362c:      	unimp	
2001362e:      	lw	a0, 8(sp)
20013630:      	lw	a1, 12(sp)
20013632:      	and	a0, a0, a1
20013634:      	snez	a0, a0
20013638:      	addi	sp, sp, 32
2001363a:      	ret
2001363c:      	lui	a0, 131094
20013640:      	addi	a0, a0, -1952
20013644:      	lui	a1, 131094
20013648:      	addi	a2, a1, -1972
2001364c:      	li	a1, 35
20013650:      	auipc	ra, 0
20013654:      	jalr	1542(ra)
20013658:      	unimp	

2001365a <core::ptr::read_volatile::h05dde8b34b00220e>:
2001365a:      	addi	sp, sp, -16
2001365c:      	sw	a0, 8(sp)
2001365e:      	lw	a0, 0(a0)
20013660:      	sw	a0, 4(sp)
20013662:      	sw	a0, 12(sp)
20013664:      	j	0x20013666 <core::ptr::read_volatile::h05dde8b34b00220e+0xc>
20013666:      	lw	a0, 4(sp)
20013668:      	addi	sp, sp, 16
2001366a:      	ret

2001366c <core::ptr::write_volatile::hc0bc1183ce1be6f1>:
2001366c:      	addi	sp, sp, -16
2001366e:      	sw	a0, 8(sp)
20013670:      	sw	a1, 12(sp)
20013672:      	sw	a1, 0(a0)
20013674:      	j	0x20013676 <core::ptr::write_volatile::hc0bc1183ce1be6f1+0xa>
20013676:      	addi	sp, sp, 16
20013678:      	ret

2001367a <riscv::register::mie::set_mtimer::hae025e7f0088a558>:
2001367a:      	addi	sp, sp, -16
2001367c:      	sw	ra, 12(sp)
2001367e:      	li	a0, 128
20013682:      	auipc	ra, 0
20013686:      	jalr	40(ra)
2001368a:      	j	0x2001368c <riscv::register::mie::set_mtimer::hae025e7f0088a558+0x12>
2001368c:      	lw	ra, 12(sp)
2001368e:      	addi	sp, sp, 16
20013690:      	ret

20013692 <riscv::register::mie::clear_mtimer::h019aa0fee0dab5ca>:
20013692:      	addi	sp, sp, -16
20013694:      	sw	ra, 12(sp)
20013696:      	li	a0, 128
2001369a:      	auipc	ra, 0
2001369e:      	jalr	38(ra)
200136a2:      	j	0x200136a4 <riscv::register::mie::clear_mtimer::h019aa0fee0dab5ca+0x12>
200136a4:      	lw	ra, 12(sp)
200136a6:      	addi	sp, sp, 16
200136a8:      	ret

200136aa <riscv::register::mie::_set::h23254177f778c22f>:
200136aa:      	addi	sp, sp, -16
200136ac:      	sw	ra, 12(sp)
200136ae:      	sw	a0, 8(sp)
200136b0:      	auipc	ra, 0
200136b4:      	jalr	1406(ra)
200136b8:      	j	0x200136ba <riscv::register::mie::_set::h23254177f778c22f+0x10>
200136ba:      	lw	ra, 12(sp)
200136bc:      	addi	sp, sp, 16
200136be:      	ret

200136c0 <riscv::register::mie::_clear::ha53229f6542f9045>:
200136c0:      	addi	sp, sp, -16
200136c2:      	sw	ra, 12(sp)
200136c4:      	sw	a0, 8(sp)
200136c6:      	auipc	ra, 0
200136ca:      	jalr	1390(ra)
200136ce:      	j	0x200136d0 <riscv::register::mie::_clear::ha53229f6542f9045+0x10>
200136d0:      	lw	ra, 12(sp)
200136d2:      	addi	sp, sp, 16
200136d4:      	ret

200136d6 <<T as core::convert::Into<U>>::into::h27eb3c8a386e5d49>:
200136d6:      	addi	sp, sp, -16
200136d8:      	sw	ra, 12(sp)
200136da:      	auipc	ra, 0
200136de:      	jalr	626(ra)
200136e2:      	j	0x200136e4 <<T as core::convert::Into<U>>::into::h27eb3c8a386e5d49+0xe>
200136e4:      	lw	ra, 12(sp)
200136e6:      	addi	sp, sp, 16
200136e8:      	ret

200136ea <<T as core::convert::Into<U>>::into::h7f6525d83265323e>:
200136ea:      	addi	sp, sp, -16
200136ec:      	sw	ra, 12(sp)
200136ee:      	auipc	ra, 0
200136f2:      	jalr	86(ra)
200136f6:      	j	0x200136f8 <<T as core::convert::Into<U>>::into::h7f6525d83265323e+0xe>
200136f8:      	lw	ra, 12(sp)
200136fa:      	addi	sp, sp, 16
200136fc:      	ret

200136fe <<T as core::convert::Into<U>>::into::hbf30ecd17c1227e8>:
200136fe:      	addi	sp, sp, -16
20013700:      	sw	ra, 12(sp)
20013702:      	auipc	ra, 0
20013706:      	jalr	592(ra)
2001370a:      	j	0x2001370c <<T as core::convert::Into<U>>::into::hbf30ecd17c1227e8+0xe>
2001370c:      	lw	ra, 12(sp)
2001370e:      	addi	sp, sp, 16
20013710:      	ret

20013712 <<e310x::common::PRCI as e310x_hal::clock::PrciExt>::constrain::h8e71e277a2fae6ca>:
20013712:      	addi	sp, sp, -16
20013714:      	mv	a1, a0
20013716:      	li	a2, 0
20013718:      	sw	a2, 0(sp)
2001371a:      	lw	a0, 4(sp)
2001371c:      	sw	a2, 0(a1)
2001371e:      	sw	a0, 4(a1)
20013720:      	lui	a0, 3369
20013724:      	addi	a0, a0, 576
20013728:      	sw	a0, 8(a1)
2001372a:      	addi	sp, sp, 16
2001372c:      	ret

2001372e <<e310x::common::AONCLK as e310x_hal::clock::AonExt>::constrain::h87d82805caf244b0>:
2001372e:      	addi	sp, sp, -32
20013730:      	li	a0, 0
20013732:      	sw	a0, 16(sp)
20013734:      	lw	a1, 20(sp)
20013736:      	sw	a0, 8(sp)
20013738:      	sw	a1, 12(sp)
2001373a:      	addi	sp, sp, 32
2001373c:      	ret

2001373e <e310x_hal::gpio::gpio0::<impl e310x_hal::gpio::GpioExt for e310x::common::GPIO0>::split::h5584777938f21fcc>:
2001373e:      	addi	sp, sp, -16
20013740:      	addi	sp, sp, 16
20013742:      	ret

20013744 <<e310x_hal::core::plic::Plic as core::convert::From<e310x::common::PLIC>>::from::h21f5da8c26ed41a2>:
20013744:      	addi	sp, sp, -64
20013746:      	mv	a1, a0
20013748:      	li	a0, 0
2001374a:      	sw	a0, 8(sp)
2001374c:      	li	a2, 2
2001374e:      	sw	a2, 12(sp)
20013750:      	li	a3, 1
20013752:      	sw	a3, 16(sp)
20013754:      	sw	a0, 24(sp)
20013756:      	li	a4, 4
20013758:      	sw	a4, 28(sp)
2001375a:      	sw	a2, 32(sp)
2001375c:      	sw	a0, 40(sp)
2001375e:      	li	a4, 8
20013760:      	sw	a4, 44(sp)
20013762:      	li	a4, 3
20013764:      	sw	a4, 48(sp)
20013766:      	sw	a3, 8(a1)
20013768:      	sw	a2, 4(a1)
2001376a:      	sw	a0, 0(a1)
2001376c:      	lw	a0, 24(sp)
2001376e:      	sw	a0, 12(a1)
20013770:      	lw	a0, 28(sp)
20013772:      	sw	a0, 16(a1)
20013774:      	lw	a0, 32(sp)
20013776:      	sw	a0, 20(a1)
20013778:      	lw	a0, 40(sp)
2001377a:      	sw	a0, 24(a1)
2001377c:      	lw	a0, 44(sp)
2001377e:      	sw	a0, 28(a1)
20013780:      	lw	a0, 48(sp)
20013782:      	sw	a0, 32(a1)
20013784:      	addi	sp, sp, 64
20013786:      	ret

20013788 <e310x_hal::core::clint::MTIME::mtime_lo::hfa64a987128ec91f>:
20013788:      	addi	sp, sp, -48
2001378a:      	sw	ra, 44(sp)
2001378c:      	sw	a0, 20(sp)
2001378e:      	j	0x20013790 <e310x_hal::core::clint::MTIME::mtime_lo::hfa64a987128ec91f+0x8>
20013790:      	lui	a0, 8204
20013794:      	addi	a0, a0, -8
20013796:      	sw	a0, 32(sp)
20013798:      	sw	a0, 36(sp)
2001379a:      	sw	a0, 40(sp)
2001379c:      	auipc	ra, 0
200137a0:      	jalr	-322(ra)
200137a4:      	sw	a0, 28(sp)
200137a6:      	sw	a0, 16(sp)
200137a8:      	j	0x200137aa <e310x_hal::core::clint::MTIME::mtime_lo::hfa64a987128ec91f+0x22>
200137aa:      	addi	a0, sp, 16
200137ac:      	sw	a0, 24(sp)
200137ae:      	lw	a0, 16(sp)
200137b0:      	sw	a0, 12(sp)
200137b2:      	j	0x200137b4 <e310x_hal::core::clint::MTIME::mtime_lo::hfa64a987128ec91f+0x2c>
200137b4:      	lw	a0, 12(sp)
200137b6:      	lw	ra, 44(sp)
200137b8:      	addi	sp, sp, 48
200137ba:      	ret

200137bc <e310x_hal::core::clint::MTIME::mtime_hi::h7344c91e5556ebb2>:
200137bc:      	addi	sp, sp, -48
200137be:      	sw	ra, 44(sp)
200137c0:      	sw	a0, 20(sp)
200137c2:      	j	0x200137c4 <e310x_hal::core::clint::MTIME::mtime_hi::h7344c91e5556ebb2+0x8>
200137c4:      	lui	a0, 8204
200137c8:      	addi	a0, a0, -4
200137ca:      	sw	a0, 32(sp)
200137cc:      	sw	a0, 36(sp)
200137ce:      	sw	a0, 40(sp)
200137d0:      	auipc	ra, 0
200137d4:      	jalr	-374(ra)
200137d8:      	sw	a0, 28(sp)
200137da:      	sw	a0, 16(sp)
200137dc:      	j	0x200137de <e310x_hal::core::clint::MTIME::mtime_hi::h7344c91e5556ebb2+0x22>
200137de:      	addi	a0, sp, 16
200137e0:      	sw	a0, 24(sp)
200137e2:      	lw	a0, 16(sp)
200137e4:      	sw	a0, 12(sp)
200137e6:      	j	0x200137e8 <e310x_hal::core::clint::MTIME::mtime_hi::h7344c91e5556ebb2+0x2c>
200137e8:      	lw	a0, 12(sp)
200137ea:      	lw	ra, 44(sp)
200137ec:      	addi	sp, sp, 48
200137ee:      	ret

200137f0 <e310x_hal::core::clint::MTIME::mtime::h4c9390f72b0ed400>:
200137f0:      	addi	sp, sp, -48
200137f2:      	sw	ra, 44(sp)
200137f4:      	sw	a0, 28(sp)
200137f6:      	sw	a0, 32(sp)
200137f8:      	j	0x200137fa <e310x_hal::core::clint::MTIME::mtime::h4c9390f72b0ed400+0xa>
200137fa:      	lw	a0, 28(sp)
200137fc:      	auipc	ra, 0
20013800:      	jalr	-64(ra)
20013804:      	mv	a1, a0
20013806:      	sw	a1, 24(sp)
20013808:      	sw	a0, 36(sp)
2001380a:      	j	0x2001380c <e310x_hal::core::clint::MTIME::mtime::h4c9390f72b0ed400+0x1c>
2001380c:      	lw	a0, 28(sp)
2001380e:      	auipc	ra, 0
20013812:      	jalr	-134(ra)
20013816:      	mv	a1, a0
20013818:      	sw	a1, 20(sp)
2001381a:      	sw	a0, 40(sp)
2001381c:      	j	0x2001381e <e310x_hal::core::clint::MTIME::mtime::h4c9390f72b0ed400+0x2e>
2001381e:      	lw	a0, 28(sp)
20013820:      	auipc	ra, 0
20013824:      	jalr	-100(ra)
20013828:      	sw	a0, 16(sp)
2001382a:      	j	0x2001382c <e310x_hal::core::clint::MTIME::mtime::h4c9390f72b0ed400+0x3c>
2001382c:      	lw	a0, 24(sp)
2001382e:      	lw	a1, 16(sp)
20013830:      	bne	a0, a1, 0x200137fa <e310x_hal::core::clint::MTIME::mtime::h4c9390f72b0ed400+0xa>
20013834:      	j	0x20013836 <e310x_hal::core::clint::MTIME::mtime::h4c9390f72b0ed400+0x46>
20013836:      	lw	a0, 24(sp)
20013838:      	sw	a0, 12(sp)
2001383a:      	li	a0, 0
2001383c:      	j	0x2001383e <e310x_hal::core::clint::MTIME::mtime::h4c9390f72b0ed400+0x4e>
2001383e:      	lw	a1, 12(sp)
20013840:      	lw	a0, 20(sp)
20013842:      	lw	ra, 44(sp)
20013844:      	addi	sp, sp, 48
20013846:      	ret

20013848 <e310x_hal::core::clint::MTIMECMP::set_mtimecmp_lo::h9e6c81b5c6585761>:
20013848:      	addi	sp, sp, -48
2001384a:      	sw	ra, 44(sp)
2001384c:      	sw	a1, 4(sp)
2001384e:      	sw	a0, 12(sp)
20013850:      	j	0x20013852 <e310x_hal::core::clint::MTIMECMP::set_mtimecmp_lo::h9e6c81b5c6585761+0xa>
20013852:      	addi	a0, sp, 4
20013854:      	sw	a0, 8(sp)
20013856:      	lui	a1, 8196
2001385a:      	sw	a1, 0(sp)
2001385c:      	sw	a1, 24(sp)
2001385e:      	sw	a0, 28(sp)
20013860:      	li	a1, 0
20013862:      	sw	a1, 20(sp)
20013864:      	addi	a1, sp, 20
20013866:      	sw	a1, 16(sp)
20013868:      	auipc	ra, 0
2001386c:      	jalr	36(ra)
20013870:      	mv	a1, a0
20013872:      	lw	a0, 0(sp)
20013874:      	lw	a1, 0(a1)
20013876:      	sw	a0, 32(sp)
20013878:      	sw	a1, 36(sp)
2001387a:      	sw	a0, 40(sp)
2001387c:      	auipc	ra, 0
20013880:      	jalr	-528(ra)
20013884:      	j	0x20013886 <e310x_hal::core::clint::MTIMECMP::set_mtimecmp_lo::h9e6c81b5c6585761+0x3e>
20013886:      	lw	ra, 44(sp)
20013888:      	addi	sp, sp, 48
2001388a:      	ret

2001388c <e310x_hal::core::clint::MTIMECMP::set_mtimecmp_lo::{{closure}}::h0f9f0ff272d38733>:
2001388c:      	addi	sp, sp, -32
2001388e:      	sw	a1, 12(sp)
20013890:      	sw	a0, 16(sp)
20013892:      	sw	a1, 20(sp)
20013894:      	lw	a0, 0(a0)
20013896:      	sw	a1, 24(sp)
20013898:      	sw	a0, 28(sp)
2001389a:      	sw	a0, 0(a1)
2001389c:      	j	0x2001389e <e310x_hal::core::clint::MTIMECMP::set_mtimecmp_lo::{{closure}}::h0f9f0ff272d38733+0x12>
2001389e:      	lw	a0, 12(sp)
200138a0:      	addi	sp, sp, 32
200138a2:      	ret

200138a4 <e310x_hal::core::clint::MTIMECMP::set_mtimecmp_hi::h157059d7058d1aea>:
200138a4:      	addi	sp, sp, -48
200138a6:      	sw	ra, 44(sp)
200138a8:      	sw	a1, 4(sp)
200138aa:      	sw	a0, 12(sp)
200138ac:      	j	0x200138ae <e310x_hal::core::clint::MTIMECMP::set_mtimecmp_hi::h157059d7058d1aea+0xa>
200138ae:      	addi	a0, sp, 4
200138b0:      	sw	a0, 8(sp)
200138b2:      	lui	a1, 8196
200138b6:      	addi	a1, a1, 4
200138b8:      	sw	a1, 0(sp)
200138ba:      	sw	a1, 24(sp)
200138bc:      	sw	a0, 28(sp)
200138be:      	li	a1, 0
200138c0:      	sw	a1, 20(sp)
200138c2:      	addi	a1, sp, 20
200138c4:      	sw	a1, 16(sp)
200138c6:      	auipc	ra, 0
200138ca:      	jalr	36(ra)
200138ce:      	mv	a1, a0
200138d0:      	lw	a0, 0(sp)
200138d2:      	lw	a1, 0(a1)
200138d4:      	sw	a0, 32(sp)
200138d6:      	sw	a1, 36(sp)
200138d8:      	sw	a0, 40(sp)
200138da:      	auipc	ra, 0
200138de:      	jalr	-622(ra)
200138e2:      	j	0x200138e4 <e310x_hal::core::clint::MTIMECMP::set_mtimecmp_hi::h157059d7058d1aea+0x40>
200138e4:      	lw	ra, 44(sp)
200138e6:      	addi	sp, sp, 48
200138e8:      	ret

200138ea <e310x_hal::core::clint::MTIMECMP::set_mtimecmp_hi::{{closure}}::he663d7aa4b60d867>:
200138ea:      	addi	sp, sp, -32
200138ec:      	sw	a1, 12(sp)
200138ee:      	sw	a0, 16(sp)
200138f0:      	sw	a1, 20(sp)
200138f2:      	lw	a0, 0(a0)
200138f4:      	sw	a1, 24(sp)
200138f6:      	sw	a0, 28(sp)
200138f8:      	sw	a0, 0(a1)
200138fa:      	j	0x200138fc <e310x_hal::core::clint::MTIMECMP::set_mtimecmp_hi::{{closure}}::he663d7aa4b60d867+0x12>
200138fc:      	lw	a0, 12(sp)
200138fe:      	addi	sp, sp, 32
20013900:      	ret

20013902 <e310x_hal::core::clint::MTIMECMP::set_mtimecmp::h3faf2c173bfa4680>:
20013902:      	addi	sp, sp, -48
20013904:      	sw	ra, 44(sp)
20013906:      	sw	a0, 16(sp)
20013908:      	mv	a3, a2
2001390a:      	sw	a3, 20(sp)
2001390c:      	mv	a3, a1
2001390e:      	sw	a3, 24(sp)
20013910:      	sw	a0, 28(sp)
20013912:      	sw	a2, 36(sp)
20013914:      	sw	a1, 32(sp)
20013916:      	li	a1, -1
20013918:      	auipc	ra, 0
2001391c:      	jalr	-208(ra)
20013920:      	j	0x20013922 <e310x_hal::core::clint::MTIMECMP::set_mtimecmp::h3faf2c173bfa4680+0x20>
20013922:      	lw	a0, 20(sp)
20013924:      	li	a1, 0
20013926:      	sw	a0, 12(sp)
20013928:      	j	0x2001392a <e310x_hal::core::clint::MTIMECMP::set_mtimecmp::h3faf2c173bfa4680+0x28>
2001392a:      	lw	a1, 12(sp)
2001392c:      	lw	a0, 16(sp)
2001392e:      	auipc	ra, 0
20013932:      	jalr	-138(ra)
20013936:      	j	0x20013938 <e310x_hal::core::clint::MTIMECMP::set_mtimecmp::h3faf2c173bfa4680+0x36>
20013938:      	lw	a1, 24(sp)
2001393a:      	lw	a0, 16(sp)
2001393c:      	auipc	ra, 0
20013940:      	jalr	-244(ra)
20013944:      	j	0x20013946 <e310x_hal::core::clint::MTIMECMP::set_mtimecmp::h3faf2c173bfa4680+0x44>
20013946:      	lw	ra, 44(sp)
20013948:      	addi	sp, sp, 48
2001394a:      	ret

2001394c <<e310x_hal::core::clint::Clint as core::convert::From<e310x::common::CLINT>>::from::he7cdbd1e0d629b38>:
2001394c:      	addi	sp, sp, -16
2001394e:      	addi	sp, sp, 16
20013950:      	ret

20013952 <<e310x_hal::device::DeviceGpioPins as core::convert::From<e310x::common::GPIO0>>::from::h679783eaca77f7d8>:
20013952:      	addi	sp, sp, -16
20013954:      	sw	ra, 12(sp)
20013956:      	auipc	ra, 0
2001395a:      	jalr	-536(ra)
2001395e:      	j	0x20013960 <<e310x_hal::device::DeviceGpioPins as core::convert::From<e310x::common::GPIO0>>::from::h679783eaca77f7d8+0xe>
20013960:      	lw	ra, 12(sp)
20013962:      	addi	sp, sp, 16
20013964:      	ret

20013966 <<e310x_hal::device::DeviceResources as core::convert::From<e310x::Peripherals>>::from::h4863fdc5417429a8>:
20013966:      	addi	sp, sp, -64
20013968:      	sw	ra, 60(sp)
2001396a:      	sw	a0, 4(sp)
2001396c:      	addi	a0, sp, 8
2001396e:      	auipc	ra, 0
20013972:      	jalr	-1304(ra)
20013976:      	j	0x20013978 <<e310x_hal::device::DeviceResources as core::convert::From<e310x::Peripherals>>::from::h4863fdc5417429a8+0x12>
20013978:      	auipc	ra, 0
2001397c:      	jalr	-634(ra)
20013980:      	j	0x20013982 <<e310x_hal::device::DeviceResources as core::convert::From<e310x::Peripherals>>::from::h4863fdc5417429a8+0x1c>
20013982:      	lw	a0, 4(sp)
20013984:      	addi	a1, sp, 8
20013986:      	li	a2, 36
2001398a:      	auipc	ra, 1
2001398e:      	jalr	-778(ra)
20013992:      	lw	ra, 60(sp)
20013994:      	addi	sp, sp, 64
20013996:      	ret

20013998 <<u32 as e310x_hal::time::U32Ext>::bps::hf62984d911adef8a>:
20013998:      	addi	sp, sp, -16
2001399a:      	sw	a0, 12(sp)
2001399c:      	sw	a0, 8(sp)
2001399e:      	addi	sp, sp, 16
200139a0:      	ret

200139a2 <<u32 as e310x_hal::time::U32Ext>::mhz::hf99065ab1f854d60>:
200139a2:      	addi	sp, sp, -16
200139a4:      	sw	a0, 12(sp)
200139a6:      	sw	a0, 8(sp)
200139a8:      	addi	sp, sp, 16
200139aa:      	ret

200139ac <<e310x_hal::time::MegaHertz as core::convert::Into<e310x_hal::time::Hertz>>::into::h8cbd91ede34833ba>:
200139ac:      	addi	sp, sp, -16
200139ae:      	sw	a0, 12(sp)
200139b0:      	lui	a1, 244
200139b4:      	addi	a1, a1, 576
200139b8:      	mul	a2, a0, a1
200139bc:      	sw	a2, 4(sp)
200139be:      	mulhu	a0, a0, a1
200139c2:      	li	a1, 0
200139c4:      	bne	a0, a1, 0x200139d2 <<e310x_hal::time::MegaHertz as core::convert::Into<e310x_hal::time::Hertz>>::into::h8cbd91ede34833ba+0x26>
200139c8:      	j	0x200139ca <<e310x_hal::time::MegaHertz as core::convert::Into<e310x_hal::time::Hertz>>::into::h8cbd91ede34833ba+0x1e>
200139ca:      	lw	a0, 4(sp)
200139cc:      	sw	a0, 8(sp)
200139ce:      	addi	sp, sp, 16
200139d0:      	ret
200139d2:      	lui	a0, 131094
200139d6:      	addi	a0, a0, -1824
200139da:      	lui	a1, 131094
200139de:      	addi	a2, a1, -1788
200139e2:      	li	a1, 33
200139e6:      	auipc	ra, 0
200139ea:      	jalr	624(ra)
200139ee:      	unimp	

200139f0 <core::slice::<impl [T]>::iter::hf653903edb40838d>:
200139f0:      	addi	sp, sp, -32
200139f2:      	sw	ra, 28(sp)
200139f4:      	sw	a0, 16(sp)
200139f6:      	sw	a1, 20(sp)
200139f8:      	auipc	ra, 0
200139fc:      	jalr	110(ra)
20013a00:      	sw	a0, 8(sp)
20013a02:      	sw	a1, 12(sp)
20013a04:      	j	0x20013a06 <core::slice::<impl [T]>::iter::hf653903edb40838d+0x16>
20013a06:      	lw	a1, 12(sp)
20013a08:      	lw	a0, 8(sp)
20013a0a:      	lw	ra, 28(sp)
20013a0c:      	addi	sp, sp, 32
20013a0e:      	ret

20013a10 <core::slice::<impl [T]>::as_ptr::hc7dc01d229420ac0>:
20013a10:      	addi	sp, sp, -16
20013a12:      	sw	a0, 8(sp)
20013a14:      	sw	a1, 12(sp)
20013a16:      	addi	sp, sp, 16
20013a18:      	ret

20013a1a <core::ptr::mut_ptr::<impl *mut T>::guaranteed_eq::hbef42fd7d4697b63>:
20013a1a:      	addi	sp, sp, -16
20013a1c:      	sw	a0, 4(sp)
20013a1e:      	sw	a1, 8(sp)
20013a20:      	xor	a0, a0, a1
20013a22:      	seqz	a0, a0
20013a26:      	sw	a0, 0(sp)
20013a28:      	sb	a0, 15(sp)
20013a2c:      	j	0x20013a2e <core::ptr::mut_ptr::<impl *mut T>::guaranteed_eq::hbef42fd7d4697b63+0x14>
20013a2e:      	lw	a0, 0(sp)
20013a30:      	addi	sp, sp, 16
20013a32:      	ret

20013a34 <core::ptr::mut_ptr::<impl *mut T>::is_null::he8d2833326e14936>:
20013a34:      	addi	sp, sp, -32
20013a36:      	sw	ra, 28(sp)
20013a38:      	sw	a0, 8(sp)
20013a3a:      	sw	a0, 16(sp)
20013a3c:      	li	a0, 0
20013a3e:      	sw	a0, 20(sp)
20013a40:      	sw	a0, 24(sp)
20013a42:      	auipc	ra, 0
20013a46:      	jalr	456(ra)
20013a4a:      	sw	a0, 12(sp)
20013a4c:      	j	0x20013a4e <core::ptr::mut_ptr::<impl *mut T>::is_null::he8d2833326e14936+0x1a>
20013a4e:      	lw	a1, 12(sp)
20013a50:      	lw	a0, 8(sp)
20013a52:      	auipc	ra, 0
20013a56:      	jalr	-56(ra)
20013a5a:      	sw	a0, 4(sp)
20013a5c:      	j	0x20013a5e <core::ptr::mut_ptr::<impl *mut T>::is_null::he8d2833326e14936+0x2a>
20013a5e:      	lw	a0, 4(sp)
20013a60:      	lw	ra, 28(sp)
20013a62:      	addi	sp, sp, 32
20013a64:      	ret

20013a66 <core::slice::iter::Iter<T>::new::h2ec49e843288a571>:
20013a66:      	addi	sp, sp, -96
20013a68:      	sw	ra, 92(sp)
20013a6a:      	sw	a1, 16(sp)
20013a6c:      	sw	a0, 40(sp)
20013a6e:      	sw	a1, 44(sp)
20013a70:      	auipc	ra, 0
20013a74:      	jalr	-96(ra)
20013a78:      	mv	a1, a0
20013a7a:      	sw	a1, 20(sp)
20013a7c:      	sw	a0, 48(sp)
20013a7e:      	j	0x20013a80 <core::slice::iter::Iter<T>::new::h2ec49e843288a571+0x1a>
20013a80:      	lw	a0, 20(sp)
20013a82:      	auipc	ra, 0
20013a86:      	jalr	312(ra)
20013a8a:      	j	0x20013a8c <core::slice::iter::Iter<T>::new::h2ec49e843288a571+0x26>
20013a8c:      	j	0x20013a8e <core::slice::iter::Iter<T>::new::h2ec49e843288a571+0x28>
20013a8e:      	j	0x20013a90 <core::slice::iter::Iter<T>::new::h2ec49e843288a571+0x2a>
20013a90:      	li	a1, 0
20013a92:      	li	a0, 1
20013a94:      	bne	a0, a1, 0x20013aae <core::slice::iter::Iter<T>::new::h2ec49e843288a571+0x48>
20013a98:      	j	0x20013a9a <core::slice::iter::Iter<T>::new::h2ec49e843288a571+0x34>
20013a9a:      	lw	a0, 20(sp)
20013a9c:      	lw	a1, 16(sp)
20013a9e:      	sw	a0, 52(sp)
20013aa0:      	sw	a1, 56(sp)
20013aa2:      	sw	a0, 60(sp)
20013aa4:      	sw	a1, 64(sp)
20013aa6:      	add	a0, a0, a1
20013aa8:      	sw	a0, 12(sp)
20013aaa:      	sw	a0, 68(sp)
20013aac:      	j	0x20013ad2 <core::slice::iter::Iter<T>::new::h2ec49e843288a571+0x6c>
20013aae:      	lw	a0, 20(sp)
20013ab0:      	lw	a1, 16(sp)
20013ab2:      	sw	a0, 72(sp)
20013ab4:      	sw	a1, 76(sp)
20013ab6:      	sw	a0, 80(sp)
20013ab8:      	sw	a1, 84(sp)
20013aba:      	add	a0, a0, a1
20013abc:      	sw	a0, 88(sp)
20013abe:      	sw	a0, 36(sp)
20013ac0:      	j	0x20013ac2 <core::slice::iter::Iter<T>::new::h2ec49e843288a571+0x5c>
20013ac2:      	j	0x20013ac4 <core::slice::iter::Iter<T>::new::h2ec49e843288a571+0x5e>
20013ac4:      	lw	a0, 20(sp)
20013ac6:      	auipc	ra, 0
20013aca:      	jalr	294(ra)
20013ace:      	sw	a0, 8(sp)
20013ad0:      	j	0x20013ad8 <core::slice::iter::Iter<T>::new::h2ec49e843288a571+0x72>
20013ad2:      	lw	a0, 12(sp)
20013ad4:      	sw	a0, 36(sp)
20013ad6:      	j	0x20013ac4 <core::slice::iter::Iter<T>::new::h2ec49e843288a571+0x5e>
20013ad8:      	lw	a0, 8(sp)
20013ada:      	lw	a1, 36(sp)
20013adc:      	sw	a0, 24(sp)
20013ade:      	sw	a1, 28(sp)
20013ae0:      	lw	ra, 92(sp)
20013ae2:      	addi	sp, sp, 96
20013ae4:      	ret

20013ae6 <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next::h41a7544895a79194>:
20013ae6:      	addi	sp, sp, -64
20013ae8:      	sw	ra, 60(sp)
20013aea:      	sw	a0, 16(sp)
20013aec:      	sw	a0, 28(sp)
20013aee:      	lw	a0, 0(a0)
20013af0:      	auipc	ra, 0
20013af4:      	jalr	262(ra)
20013af8:      	sw	a0, 20(sp)
20013afa:      	j	0x20013afc <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next::h41a7544895a79194+0x16>
20013afc:      	lw	a0, 20(sp)
20013afe:      	auipc	ra, 0
20013b02:      	jalr	-202(ra)
20013b06:      	j	0x20013b08 <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next::h41a7544895a79194+0x22>
20013b08:      	j	0x20013b0a <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next::h41a7544895a79194+0x24>
20013b0a:      	j	0x20013b0c <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next::h41a7544895a79194+0x26>
20013b0c:      	li	a1, 0
20013b0e:      	li	a0, 1
20013b10:      	bne	a0, a1, 0x20013b18 <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next::h41a7544895a79194+0x32>
20013b14:      	j	0x20013b16 <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next::h41a7544895a79194+0x30>
20013b16:      	j	0x20013b2a <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next::h41a7544895a79194+0x44>
20013b18:      	lw	a0, 16(sp)
20013b1a:      	lw	a0, 4(a0)
20013b1c:      	auipc	ra, 0
20013b20:      	jalr	158(ra)
20013b24:      	j	0x20013b26 <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next::h41a7544895a79194+0x40>
20013b26:      	j	0x20013b28 <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next::h41a7544895a79194+0x42>
20013b28:      	j	0x20013b2a <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next::h41a7544895a79194+0x44>
20013b2a:      	lw	a0, 16(sp)
20013b2c:      	lw	a0, 0(a0)
20013b2e:      	auipc	ra, 0
20013b32:      	jalr	200(ra)
20013b36:      	sw	a0, 12(sp)
20013b38:      	j	0x20013b3a <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next::h41a7544895a79194+0x54>
20013b3a:      	lw	a0, 12(sp)
20013b3c:      	lw	a1, 16(sp)
20013b3e:      	lw	a1, 4(a1)
20013b40:      	beq	a0, a1, 0x20013b8c <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next::h41a7544895a79194+0xa6>
20013b44:      	j	0x20013b46 <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next::h41a7544895a79194+0x60>
20013b46:      	lw	a0, 16(sp)
20013b48:      	sw	a0, 36(sp)
20013b4a:      	li	a1, 1
20013b4c:      	sw	a1, 0(sp)
20013b4e:      	sw	a1, 40(sp)
20013b50:      	lw	a0, 0(a0)
20013b52:      	auipc	ra, 0
20013b56:      	jalr	164(ra)
20013b5a:      	mv	a1, a0
20013b5c:      	lw	a0, 16(sp)
20013b5e:      	sw	a1, 4(sp)
20013b60:      	sw	a1, 44(sp)
20013b62:      	lw	a0, 0(a0)
20013b64:      	auipc	ra, 0
20013b68:      	jalr	146(ra)
20013b6c:      	lw	a1, 0(sp)
20013b6e:      	sw	a0, 48(sp)
20013b70:      	sw	a1, 52(sp)
20013b72:      	addi	a0, a0, 1
20013b74:      	sw	a0, 56(sp)
20013b76:      	auipc	ra, 0
20013b7a:      	jalr	118(ra)
20013b7e:      	lw	a2, 16(sp)
20013b80:      	mv	a1, a0
20013b82:      	lw	a0, 4(sp)
20013b84:      	sw	a1, 0(a2)
20013b86:      	sw	a0, 32(sp)
20013b88:      	sw	a0, 8(sp)
20013b8a:      	j	0x20013b9a <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next::h41a7544895a79194+0xb4>
20013b8c:      	li	a0, 0
20013b8e:      	sw	a0, 24(sp)
20013b90:      	j	0x20013b92 <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next::h41a7544895a79194+0xac>
20013b92:      	lw	a0, 24(sp)
20013b94:      	lw	ra, 60(sp)
20013b96:      	addi	sp, sp, 64
20013b98:      	ret
20013b9a:      	lw	a0, 8(sp)
20013b9c:      	sw	a0, 24(sp)
20013b9e:      	j	0x20013b92 <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next::h41a7544895a79194+0xac>

20013ba0 <core::ptr::const_ptr::<impl *const T>::guaranteed_eq::h076beda20172c69b>:
20013ba0:      	addi	sp, sp, -16
20013ba2:      	sw	a0, 4(sp)
20013ba4:      	sw	a1, 8(sp)
20013ba6:      	xor	a0, a0, a1
20013ba8:      	seqz	a0, a0
20013bac:      	sw	a0, 0(sp)
20013bae:      	sb	a0, 15(sp)
20013bb2:      	j	0x20013bb4 <core::ptr::const_ptr::<impl *const T>::guaranteed_eq::h076beda20172c69b+0x14>
20013bb4:      	lw	a0, 0(sp)
20013bb6:      	addi	sp, sp, 16
20013bb8:      	ret

20013bba <core::ptr::const_ptr::<impl *const T>::is_null::ha95557749b0dc373>:
20013bba:      	addi	sp, sp, -32
20013bbc:      	sw	ra, 28(sp)
20013bbe:      	sw	a0, 8(sp)
20013bc0:      	sw	a0, 16(sp)
20013bc2:      	li	a0, 0
20013bc4:      	sw	a0, 20(sp)
20013bc6:      	sw	a0, 24(sp)
20013bc8:      	auipc	ra, 0
20013bcc:      	jalr	54(ra)
20013bd0:      	sw	a0, 12(sp)
20013bd2:      	j	0x20013bd4 <core::ptr::const_ptr::<impl *const T>::is_null::ha95557749b0dc373+0x1a>
20013bd4:      	lw	a1, 12(sp)
20013bd6:      	lw	a0, 8(sp)
20013bd8:      	auipc	ra, 0
20013bdc:      	jalr	-56(ra)
20013be0:      	sw	a0, 4(sp)
20013be2:      	j	0x20013be4 <core::ptr::const_ptr::<impl *const T>::is_null::ha95557749b0dc373+0x2a>
20013be4:      	lw	a0, 4(sp)
20013be6:      	lw	ra, 28(sp)
20013be8:      	addi	sp, sp, 32
20013bea:      	ret

20013bec <core::ptr::non_null::NonNull<T>::new_unchecked::hb81a7310d259419f>:
20013bec:      	addi	sp, sp, -16
20013bee:      	sw	a0, 12(sp)
20013bf0:      	sw	a0, 8(sp)
20013bf2:      	addi	sp, sp, 16
20013bf4:      	ret

20013bf6 <core::ptr::non_null::NonNull<T>::as_ptr::h9d02f2da023e06ea>:
20013bf6:      	addi	sp, sp, -16
20013bf8:      	sw	a0, 12(sp)
20013bfa:      	addi	sp, sp, 16
20013bfc:      	ret

20013bfe <core::ptr::metadata::from_raw_parts::h9f8b94655b149759>:
20013bfe:      	addi	sp, sp, -32
20013c00:      	sw	a0, 20(sp)
20013c02:      	sw	a0, 16(sp)
20013c04:      	sw	a0, 8(sp)
20013c06:      	addi	sp, sp, 32
20013c08:      	ret

20013c0a <core::ptr::metadata::from_raw_parts_mut::h4526dae349248bc8>:
20013c0a:      	addi	sp, sp, -32
20013c0c:      	sw	a0, 20(sp)
20013c0e:      	sw	a0, 16(sp)
20013c10:      	sw	a0, 8(sp)
20013c12:      	addi	sp, sp, 32
20013c14:      	ret

20013c16 <__wfi>:
20013c16:      	wfi	
20013c1a:      	ret

20013c1c <__read_mstatus>:
20013c1c:      	csrr	a0, mstatus
20013c20:      	ret

20013c22 <__set_mstatus>:
20013c22:      	csrs	mstatus, a0
20013c26:      	ret

20013c28 <__clear_mstatus>:
20013c28:      	csrc	mstatus, a0
20013c2c:      	ret

20013c2e <__set_mie>:
20013c2e:      	csrs	mie, a0
20013c32:      	ret

20013c34 <__clear_mie>:
20013c34:      	csrc	mie, a0
20013c38:      	ret

20013c3a <__read_mip>:
20013c3a:      	csrr	a0, mip
20013c3e:      	ret

20013c40 <bare_metal::CriticalSection::new::h6d8fba614b658ea7>:
20013c40:      	ret

20013c42 <core::ptr::drop_in_place<&core::iter::adapters::copied::Copied<core::slice::iter::Iter<u8>>>::hba75f9e64379e0d0>:
20013c42:      	ret

20013c44 <<T as core::any::Any>::type_id::h6d5fadc9889de291>:
20013c44:      	lui	a0, 337864
20013c48:      	addi	a0, a0, 854
20013c4c:      	lui	a1, 536935
20013c50:      	addi	a1, a1, 1137
20013c54:      	ret

20013c56 <core::panicking::panic::hbbfd5969b5c86e6f>:
20013c56:      	addi	sp, sp, -48
20013c58:      	sw	ra, 44(sp)
20013c5a:      	sw	a0, 32(sp)
20013c5c:      	sw	a1, 36(sp)
20013c5e:      	addi	a0, sp, 32
20013c60:      	sw	a0, 8(sp)
20013c62:      	li	a0, 1
20013c64:      	sw	a0, 12(sp)
20013c66:      	sw	zero, 16(sp)
20013c68:      	lui	a0, 131094
20013c6c:      	addi	a0, a0, -1772
20013c70:      	sw	a0, 24(sp)
20013c72:      	sw	zero, 28(sp)
20013c74:      	addi	a0, sp, 8
20013c76:      	mv	a1, a2
20013c78:      	auipc	ra, 0
20013c7c:      	jalr	74(ra)
20013c80:      	unimp	

20013c82 <core::panicking::panic_bounds_check::h9db9f62c2a7a3e0f>:
20013c82:      	addi	sp, sp, -64
20013c84:      	sw	ra, 60(sp)
20013c86:      	sw	a0, 8(sp)
20013c88:      	sw	a1, 12(sp)
20013c8a:      	addi	a0, sp, 12
20013c8c:      	sw	a0, 40(sp)
20013c8e:      	lui	a0, 131092
20013c92:      	addi	a0, a0, 1348
20013c96:      	sw	a0, 44(sp)
20013c98:      	addi	a1, sp, 8
20013c9a:      	sw	a1, 48(sp)
20013c9c:      	sw	a0, 52(sp)
20013c9e:      	lui	a0, 131094
20013ca2:      	addi	a0, a0, -1752
20013ca6:      	sw	a0, 16(sp)
20013ca8:      	li	a0, 2
20013caa:      	sw	a0, 20(sp)
20013cac:      	sw	zero, 24(sp)
20013cae:      	addi	a1, sp, 40
20013cb0:      	sw	a1, 32(sp)
20013cb2:      	sw	a0, 36(sp)
20013cb4:      	addi	a0, sp, 16
20013cb6:      	mv	a1, a2
20013cb8:      	auipc	ra, 0
20013cbc:      	jalr	10(ra)
20013cc0:      	unimp	

20013cc2 <core::panicking::panic_fmt::h62c187abafa44ea5>:
20013cc2:      	addi	sp, sp, -32
20013cc4:      	sw	ra, 28(sp)
20013cc6:      	lui	a2, 131094
20013cca:      	addi	a2, a2, -1772
20013cce:      	sw	a2, 8(sp)
20013cd0:      	lui	a2, 131094
20013cd4:      	addi	a2, a2, -1736
20013cd8:      	sw	a2, 12(sp)
20013cda:      	sw	a0, 16(sp)
20013cdc:      	sw	a1, 20(sp)
20013cde:      	li	a0, 1
20013ce0:      	sb	a0, 24(sp)
20013ce4:      	addi	a0, sp, 8
20013ce6:      	auipc	ra, 1048573
20013cea:      	jalr	1332(ra)
20013cee:      	unimp	

20013cf0 <core::result::unwrap_failed::h9f6aa674219bf512>:
20013cf0:      	addi	sp, sp, -64
20013cf2:      	sw	ra, 60(sp)
20013cf4:      	sw	a0, 0(sp)
20013cf6:      	sw	a1, 4(sp)
20013cf8:      	sw	a2, 8(sp)
20013cfa:      	sw	a3, 12(sp)
20013cfc:      	mv	a0, sp
20013cfe:      	sw	a0, 40(sp)
20013d00:      	lui	a0, 131092
20013d04:      	addi	a0, a0, 1370
20013d08:      	sw	a0, 44(sp)
20013d0a:      	addi	a0, sp, 8
20013d0c:      	sw	a0, 48(sp)
20013d0e:      	lui	a0, 131092
20013d12:      	addi	a0, a0, 1362
20013d16:      	sw	a0, 52(sp)
20013d18:      	lui	a0, 131094
20013d1c:      	addi	a0, a0, -1716
20013d20:      	sw	a0, 16(sp)
20013d22:      	li	a0, 2
20013d24:      	sw	a0, 20(sp)
20013d26:      	sw	zero, 24(sp)
20013d28:      	addi	a1, sp, 40
20013d2a:      	sw	a1, 32(sp)
20013d2c:      	sw	a0, 36(sp)
20013d2e:      	addi	a0, sp, 16
20013d30:      	mv	a1, a4
20013d32:      	auipc	ra, 0
20013d36:      	jalr	-112(ra)
20013d3a:      	unimp	

20013d3c <core::fmt::Formatter::pad_integral::ha10cb533649ec68e>:
20013d3c:      	addi	sp, sp, -48
20013d3e:      	sw	ra, 44(sp)
20013d40:      	sw	s0, 40(sp)
20013d42:      	sw	s1, 36(sp)
20013d44:      	sw	s2, 32(sp)
20013d46:      	sw	s3, 28(sp)
20013d48:      	sw	s4, 24(sp)
20013d4a:      	sw	s5, 20(sp)
20013d4c:      	sw	s6, 16(sp)
20013d4e:      	sw	s7, 12(sp)
20013d50:      	sw	s8, 8(sp)
20013d52:      	sw	s9, 4(sp)
20013d54:      	sw	s10, 0(sp)
20013d56:      	mv	s3, a5
20013d58:      	mv	s2, a4
20013d5a:      	mv	s6, a3
20013d5c:      	mv	s5, a2
20013d5e:      	mv	s8, a0
20013d60:      	beqz	a1, 0x20013dac <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x70>
20013d62:      	lw	a0, 0(s8)
20013d66:      	andi	a1, a0, 1
20013d6a:      	lui	s4, 272
20013d6e:      	beqz	a1, 0x20013d74 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x38>
20013d70:      	li	s4, 43
20013d74:      	add	s0, a1, s3
20013d78:      	andi	a0, a0, 4
20013d7a:      	beqz	a0, 0x20013dbc <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x80>
20013d7c:      	li	a0, 16
20013d7e:      	bgeu	s6, a0, 0x20013dc6 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x8a>
20013d82:      	li	a0, 0
20013d84:      	beqz	s6, 0x20013da0 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x64>
20013d88:      	li	a1, -65
20013d8c:      	mv	a2, s6
20013d8e:      	mv	a3, s5
20013d90:      	lb	a4, 0(a3)
20013d94:      	addi	a3, a3, 1
20013d96:      	slt	a4, a1, a4
20013d9a:      	addi	a2, a2, -1
20013d9c:      	add	a0, a0, a4
20013d9e:      	bnez	a2, 0x20013d90 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x54>
20013da0:      	add	s0, s0, a0
20013da2:      	mv	s7, s5
20013da4:      	lw	a0, 8(s8)
20013da8:      	bnez	a0, 0x20013ddc <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0xa0>
20013daa:      	j	0x20013e0e <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0xd2>
20013dac:      	lw	a0, 0(s8)
20013db0:      	addi	s0, s3, 1
20013db4:      	li	s4, 45
20013db8:      	andi	a0, a0, 4
20013dba:      	bnez	a0, 0x20013d7c <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x40>
20013dbc:      	li	s7, 0
20013dbe:      	lw	a0, 8(s8)
20013dc2:      	bnez	a0, 0x20013ddc <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0xa0>
20013dc4:      	j	0x20013e0e <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0xd2>
20013dc6:      	mv	a0, s5
20013dc8:      	mv	a1, s6
20013dca:      	auipc	ra, 0
20013dce:      	jalr	1160(ra)
20013dd2:      	add	s0, s0, a0
20013dd4:      	mv	s7, s5
20013dd6:      	lw	a0, 8(s8)
20013dda:      	beqz	a0, 0x20013e0e <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0xd2>
20013ddc:      	lw	s1, 12(s8)
20013de0:      	bgeu	s0, s1, 0x20013e0e <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0xd2>
20013de4:      	lbu	a0, 0(s8)
20013de8:      	andi	a0, a0, 8
20013dea:      	bnez	a0, 0x20013e4e <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x112>
20013dec:      	lbu	a1, 32(s8)
20013df0:      	li	a2, 3
20013df2:      	li	a0, 1
20013df4:      	beq	a1, a2, 0x20013dfa <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0xbe>
20013df8:      	mv	a0, a1
20013dfa:      	andi	a1, a0, 3
20013dfe:      	sub	a0, s1, s0
20013e02:      	beqz	a1, 0x20013e98 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x15c>
20013e04:      	li	a2, 1
20013e06:      	bne	a1, a2, 0x20013e9e <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x162>
20013e0a:      	li	s9, 0
20013e0c:      	j	0x20013ea8 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x16c>
20013e0e:      	mv	a0, s8
20013e10:      	mv	a1, s4
20013e12:      	mv	a2, s7
20013e14:      	mv	a3, s6
20013e16:      	auipc	ra, 0
20013e1a:      	jalr	416(ra)
20013e1e:      	li	s5, 1
20013e20:      	bnez	a0, 0x20013f46 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x20a>
20013e24:      	lw	a1, 28(s8)
20013e28:      	lw	a0, 24(s8)
20013e2c:      	lw	a5, 12(a1)
20013e2e:      	mv	a1, s2
20013e30:      	mv	a2, s3
20013e32:      	lw	ra, 44(sp)
20013e34:      	lw	s0, 40(sp)
20013e36:      	lw	s1, 36(sp)
20013e38:      	lw	s2, 32(sp)
20013e3a:      	lw	s3, 28(sp)
20013e3c:      	lw	s4, 24(sp)
20013e3e:      	lw	s5, 20(sp)
20013e40:      	lw	s6, 16(sp)
20013e42:      	lw	s7, 12(sp)
20013e44:      	lw	s8, 8(sp)
20013e46:      	lw	s9, 4(sp)
20013e48:      	lw	s10, 0(sp)
20013e4a:      	addi	sp, sp, 48
20013e4c:      	jr	a5
20013e4e:      	lw	s9, 4(s8)
20013e52:      	li	a0, 48
20013e56:      	lbu	s10, 32(s8)
20013e5a:      	sw	a0, 4(s8)
20013e5e:      	li	s5, 1
20013e60:      	sb	s5, 32(s8)
20013e64:      	mv	a0, s8
20013e66:      	mv	a1, s4
20013e68:      	mv	a2, s7
20013e6a:      	mv	a3, s6
20013e6c:      	auipc	ra, 0
20013e70:      	jalr	330(ra)
20013e74:      	bnez	a0, 0x20013f46 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x20a>
20013e76:      	lbu	a1, 32(s8)
20013e7a:      	li	a2, 3
20013e7c:      	li	a0, 1
20013e7e:      	beq	a1, a2, 0x20013e84 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x148>
20013e82:      	mv	a0, a1
20013e84:      	andi	a1, a0, 3
20013e88:      	sub	a0, s1, s0
20013e8c:      	beqz	a1, 0x20013f16 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x1da>
20013e8e:      	li	a2, 1
20013e90:      	bne	a1, a2, 0x20013f1c <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x1e0>
20013e94:      	li	s4, 0
20013e96:      	j	0x20013f26 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x1ea>
20013e98:      	mv	s9, a0
20013e9a:      	li	a0, 0
20013e9c:      	j	0x20013ea8 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x16c>
20013e9e:      	addi	a1, a0, 1
20013ea2:      	srli	a0, a0, 1
20013ea4:      	srli	s9, a1, 1
20013ea8:      	lw	s5, 24(s8)
20013eac:      	lw	s1, 28(s8)
20013eb0:      	lw	s10, 4(s8)
20013eb4:      	addi	s0, a0, 1
20013eb8:      	addi	s0, s0, -1
20013eba:      	beqz	s0, 0x20013ec8 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x18c>
20013ebc:      	lw	a2, 16(s1)
20013ebe:      	mv	a0, s5
20013ec0:      	mv	a1, s10
20013ec2:      	jalr	a2
20013ec4:      	beqz	a0, 0x20013eb8 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x17c>
20013ec6:      	j	0x20013f44 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x208>
20013ec8:      	lui	a0, 272
20013ecc:      	li	s5, 1
20013ece:      	beq	s10, a0, 0x20013f46 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x20a>
20013ed2:      	mv	a0, s8
20013ed4:      	mv	a1, s4
20013ed6:      	mv	a2, s7
20013ed8:      	mv	a3, s6
20013eda:      	auipc	ra, 0
20013ede:      	jalr	220(ra)
20013ee2:      	bnez	a0, 0x20013f46 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x20a>
20013ee4:      	lw	a1, 28(s8)
20013ee8:      	lw	a0, 24(s8)
20013eec:      	lw	a3, 12(a1)
20013eee:      	mv	a1, s2
20013ef0:      	mv	a2, s3
20013ef2:      	jalr	a3
20013ef4:      	bnez	a0, 0x20013f46 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x20a>
20013ef6:      	lw	s2, 24(s8)
20013efa:      	lw	s1, 28(s8)
20013efe:      	li	s0, 0
20013f00:      	beq	s9, s0, 0x20013fae <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x272>
20013f04:      	lw	a2, 16(s1)
20013f06:      	addi	s0, s0, 1
20013f08:      	mv	a0, s2
20013f0a:      	mv	a1, s10
20013f0c:      	jalr	a2
20013f0e:      	beqz	a0, 0x20013f00 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x1c4>
20013f10:      	addi	a0, s0, -1
20013f14:      	j	0x20013fb0 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x274>
20013f16:      	mv	s4, a0
20013f18:      	li	a0, 0
20013f1a:      	j	0x20013f26 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x1ea>
20013f1c:      	addi	a1, a0, 1
20013f20:      	srli	a0, a0, 1
20013f22:      	srli	s4, a1, 1
20013f26:      	lw	s5, 24(s8)
20013f2a:      	lw	s1, 28(s8)
20013f2e:      	lw	s6, 4(s8)
20013f32:      	addi	s0, a0, 1
20013f36:      	addi	s0, s0, -1
20013f38:      	beqz	s0, 0x20013f64 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x228>
20013f3a:      	lw	a2, 16(s1)
20013f3c:      	mv	a0, s5
20013f3e:      	mv	a1, s6
20013f40:      	jalr	a2
20013f42:      	beqz	a0, 0x20013f36 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x1fa>
20013f44:      	li	s5, 1
20013f46:      	mv	a0, s5
20013f48:      	lw	ra, 44(sp)
20013f4a:      	lw	s0, 40(sp)
20013f4c:      	lw	s1, 36(sp)
20013f4e:      	lw	s2, 32(sp)
20013f50:      	lw	s3, 28(sp)
20013f52:      	lw	s4, 24(sp)
20013f54:      	lw	s5, 20(sp)
20013f56:      	lw	s6, 16(sp)
20013f58:      	lw	s7, 12(sp)
20013f5a:      	lw	s8, 8(sp)
20013f5c:      	lw	s9, 4(sp)
20013f5e:      	lw	s10, 0(sp)
20013f60:      	addi	sp, sp, 48
20013f62:      	ret
20013f64:      	lui	a0, 272
20013f68:      	li	s5, 1
20013f6a:      	beq	s6, a0, 0x20013f46 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x20a>
20013f6e:      	lw	a1, 28(s8)
20013f72:      	lw	a0, 24(s8)
20013f76:      	lw	a3, 12(a1)
20013f78:      	mv	a1, s2
20013f7a:      	mv	a2, s3
20013f7c:      	jalr	a3
20013f7e:      	bnez	a0, 0x20013f46 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x20a>
20013f80:      	lw	s2, 24(s8)
20013f84:      	lw	s1, 28(s8)
20013f88:      	li	s0, 0
20013f8a:      	beq	s4, s0, 0x20013fa2 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x266>
20013f8e:      	lw	a2, 16(s1)
20013f90:      	addi	s0, s0, 1
20013f92:      	mv	a0, s2
20013f94:      	mv	a1, s6
20013f96:      	jalr	a2
20013f98:      	beqz	a0, 0x20013f8a <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x24e>
20013f9a:      	addi	a0, s0, -1
20013f9e:      	bltu	a0, s4, 0x20013f46 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x20a>
20013fa2:      	li	s5, 0
20013fa4:      	sw	s9, 4(s8)
20013fa8:      	sb	s10, 32(s8)
20013fac:      	j	0x20013f46 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x20a>
20013fae:      	mv	a0, s9
20013fb0:      	sltu	s5, a0, s9
20013fb4:      	j	0x20013f46 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x20a>

20013fb6 <core::fmt::Formatter::pad_integral::write_prefix::h9c2d4994c87ce818>:
20013fb6:      	addi	sp, sp, -16
20013fb8:      	sw	ra, 12(sp)
20013fba:      	sw	s0, 8(sp)
20013fbc:      	sw	s1, 4(sp)
20013fbe:      	sw	s2, 0(sp)
20013fc0:      	lui	a4, 272
20013fc4:      	mv	s2, a3
20013fc6:      	mv	s1, a2
20013fc8:      	mv	s0, a0
20013fca:      	beq	a1, a4, 0x20013fdc <core::fmt::Formatter::pad_integral::write_prefix::h9c2d4994c87ce818+0x26>
20013fce:      	lw	a2, 28(s0)
20013fd0:      	lw	a0, 24(s0)
20013fd2:      	lw	a2, 16(a2)
20013fd4:      	jalr	a2
20013fd6:      	mv	a1, a0
20013fd8:      	li	a0, 1
20013fda:      	bnez	a1, 0x20013ff6 <core::fmt::Formatter::pad_integral::write_prefix::h9c2d4994c87ce818+0x40>
20013fdc:      	beqz	s1, 0x20013ff4 <core::fmt::Formatter::pad_integral::write_prefix::h9c2d4994c87ce818+0x3e>
20013fde:      	lw	a1, 28(s0)
20013fe0:      	lw	a0, 24(s0)
20013fe2:      	lw	a5, 12(a1)
20013fe4:      	mv	a1, s1
20013fe6:      	mv	a2, s2
20013fe8:      	lw	ra, 12(sp)
20013fea:      	lw	s0, 8(sp)
20013fec:      	lw	s1, 4(sp)
20013fee:      	lw	s2, 0(sp)
20013ff0:      	addi	sp, sp, 16
20013ff2:      	jr	a5
20013ff4:      	li	a0, 0
20013ff6:      	lw	ra, 12(sp)
20013ff8:      	lw	s0, 8(sp)
20013ffa:      	lw	s1, 4(sp)
20013ffc:      	lw	s2, 0(sp)
20013ffe:      	addi	sp, sp, 16
20014000:      	ret

20014002 <core::fmt::Formatter::pad::h535348a192cb9f19>:
20014002:      	addi	sp, sp, -48
20014004:      	sw	ra, 44(sp)
20014006:      	sw	s0, 40(sp)
20014008:      	sw	s1, 36(sp)
2001400a:      	sw	s2, 32(sp)
2001400c:      	sw	s3, 28(sp)
2001400e:      	sw	s4, 24(sp)
20014010:      	sw	s5, 20(sp)
20014012:      	sw	s6, 16(sp)
20014014:      	sw	s7, 12(sp)
20014016:      	mv	s1, a0
20014018:      	lw	t1, 8(a0)
2001401c:      	lw	a3, 16(a0)
2001401e:      	addi	a4, t1, -1
20014022:      	snez	a4, a4
20014026:      	addi	a5, a3, -1
2001402a:      	snez	a5, a5
2001402e:      	and	a4, a4, a5
20014030:      	mv	s3, a2
20014032:      	mv	s2, a1
20014034:      	bnez	a4, 0x200141a8 <core::fmt::Formatter::pad::h535348a192cb9f19+0x1a6>
20014038:      	li	a1, 1
2001403a:      	bne	a3, a1, 0x20014148 <core::fmt::Formatter::pad::h535348a192cb9f19+0x146>
2001403e:      	lw	a3, 20(s1)
20014040:      	add	a2, s2, s3
20014044:      	li	a1, 0
20014046:      	beqz	a3, 0x200140be <core::fmt::Formatter::pad::h535348a192cb9f19+0xbc>
20014048:      	li	t0, 224
2001404c:      	li	a7, 240
20014050:      	lui	a6, 272
20014054:      	mv	s0, s2
20014056:      	j	0x2001406a <core::fmt::Formatter::pad::h535348a192cb9f19+0x68>
20014058:      	addi	a5, s0, 1
2001405c:      	sub	a0, a1, s0
20014060:      	addi	a3, a3, -1
20014062:      	add	a1, a0, a5
20014066:      	mv	s0, a5
20014068:      	beqz	a3, 0x200140c0 <core::fmt::Formatter::pad::h535348a192cb9f19+0xbe>
2001406a:      	beq	s0, a2, 0x20014148 <core::fmt::Formatter::pad::h535348a192cb9f19+0x146>
2001406e:      	lb	a5, 0(s0)
20014072:      	bgez	a5, 0x20014058 <core::fmt::Formatter::pad::h535348a192cb9f19+0x56>
20014076:      	andi	a5, a5, 255
2001407a:      	bltu	a5, t0, 0x200140b2 <core::fmt::Formatter::pad::h535348a192cb9f19+0xb0>
2001407e:      	bltu	a5, a7, 0x200140b8 <core::fmt::Formatter::pad::h535348a192cb9f19+0xb6>
20014082:      	lbu	a4, 1(s0)
20014086:      	lbu	a0, 2(s0)
2001408a:      	andi	a4, a4, 63
2001408e:      	andi	a0, a0, 63
20014092:      	lbu	t2, 3(s0)
20014096:      	slli	a5, a5, 29
20014098:      	srli	a5, a5, 11
2001409a:      	slli	a4, a4, 12
2001409c:      	slli	a0, a0, 6
2001409e:      	or	a0, a0, a4
200140a0:      	andi	a4, t2, 63
200140a4:      	or	a0, a0, a4
200140a6:      	or	a0, a0, a5
200140a8:      	beq	a0, a6, 0x20014148 <core::fmt::Formatter::pad::h535348a192cb9f19+0x146>
200140ac:      	addi	a5, s0, 4
200140b0:      	j	0x2001405c <core::fmt::Formatter::pad::h535348a192cb9f19+0x5a>
200140b2:      	addi	a5, s0, 2
200140b6:      	j	0x2001405c <core::fmt::Formatter::pad::h535348a192cb9f19+0x5a>
200140b8:      	addi	a5, s0, 3
200140bc:      	j	0x2001405c <core::fmt::Formatter::pad::h535348a192cb9f19+0x5a>
200140be:      	mv	a5, s2
200140c0:      	beq	a5, a2, 0x20014148 <core::fmt::Formatter::pad::h535348a192cb9f19+0x146>
200140c4:      	lb	a2, 0(a5)
200140c8:      	bgez	a2, 0x2001410e <core::fmt::Formatter::pad::h535348a192cb9f19+0x10c>
200140cc:      	andi	a2, a2, 255
200140d0:      	li	a0, 224
200140d4:      	bltu	a2, a0, 0x2001410e <core::fmt::Formatter::pad::h535348a192cb9f19+0x10c>
200140d8:      	li	a0, 240
200140dc:      	bltu	a2, a0, 0x2001410e <core::fmt::Formatter::pad::h535348a192cb9f19+0x10c>
200140e0:      	lbu	a0, 1(a5)
200140e4:      	lbu	a3, 2(a5)
200140e8:      	andi	a0, a0, 63
200140ec:      	andi	a3, a3, 63
200140f0:      	lbu	a4, 3(a5)
200140f4:      	slli	a2, a2, 29
200140f6:      	srli	a2, a2, 11
200140f8:      	slli	a0, a0, 12
200140fa:      	slli	a3, a3, 6
200140fc:      	or	a0, a0, a3
200140fe:      	andi	a3, a4, 63
20014102:      	or	a0, a0, a3
20014104:      	or	a0, a0, a2
20014106:      	lui	a2, 272
2001410a:      	beq	a0, a2, 0x20014148 <core::fmt::Formatter::pad::h535348a192cb9f19+0x146>
2001410e:      	beqz	a1, 0x2001412e <core::fmt::Formatter::pad::h535348a192cb9f19+0x12c>
20014110:      	bgeu	a1, s3, 0x20014138 <core::fmt::Formatter::pad::h535348a192cb9f19+0x136>
20014114:      	add	a0, s2, a1
20014118:      	lb	a0, 0(a0)
2001411c:      	li	a2, -64
20014120:      	blt	a0, a2, 0x2001422c <core::fmt::Formatter::pad::h535348a192cb9f19+0x22a>
20014124:      	mv	a2, a1
20014126:      	mv	a1, a2
20014128:      	mv	a2, s2
2001412a:      	beqz	a2, 0x20014148 <core::fmt::Formatter::pad::h535348a192cb9f19+0x146>
2001412c:      	j	0x20014144 <core::fmt::Formatter::pad::h535348a192cb9f19+0x142>
2001412e:      	li	a2, 0
20014130:      	mv	a1, a2
20014132:      	mv	a2, s2
20014134:      	beqz	a2, 0x20014148 <core::fmt::Formatter::pad::h535348a192cb9f19+0x146>
20014136:      	j	0x20014144 <core::fmt::Formatter::pad::h535348a192cb9f19+0x142>
20014138:      	mv	a2, s3
2001413a:      	bne	a1, s3, 0x2001422c <core::fmt::Formatter::pad::h535348a192cb9f19+0x22a>
2001413e:      	mv	a1, a2
20014140:      	mv	a2, s2
20014142:      	beqz	a2, 0x20014148 <core::fmt::Formatter::pad::h535348a192cb9f19+0x146>
20014144:      	mv	s2, a2
20014146:      	mv	s3, a1
20014148:      	beqz	t1, 0x200141a8 <core::fmt::Formatter::pad::h535348a192cb9f19+0x1a6>
2001414c:      	lw	s0, 12(s1)
2001414e:      	li	a0, 16
20014150:      	bgeu	s3, a0, 0x20014198 <core::fmt::Formatter::pad::h535348a192cb9f19+0x196>
20014154:      	li	a0, 0
20014156:      	beqz	s3, 0x20014172 <core::fmt::Formatter::pad::h535348a192cb9f19+0x170>
2001415a:      	li	a1, -65
2001415e:      	mv	a2, s3
20014160:      	mv	a3, s2
20014162:      	lb	a4, 0(a3)
20014166:      	addi	a3, a3, 1
20014168:      	slt	a4, a1, a4
2001416c:      	addi	a2, a2, -1
2001416e:      	add	a0, a0, a4
20014170:      	bnez	a2, 0x20014162 <core::fmt::Formatter::pad::h535348a192cb9f19+0x160>
20014172:      	bgeu	a0, s0, 0x200141a8 <core::fmt::Formatter::pad::h535348a192cb9f19+0x1a6>
20014176:      	lbu	a1, 32(s1)
2001417a:      	li	a3, 3
2001417c:      	li	a2, 0
2001417e:      	beq	a1, a3, 0x20014184 <core::fmt::Formatter::pad::h535348a192cb9f19+0x182>
20014182:      	mv	a2, a1
20014184:      	andi	a1, a2, 3
20014188:      	sub	a0, s0, a0
2001418c:      	beqz	a1, 0x200141c8 <core::fmt::Formatter::pad::h535348a192cb9f19+0x1c6>
2001418e:      	li	a2, 1
20014190:      	bne	a1, a2, 0x200141ce <core::fmt::Formatter::pad::h535348a192cb9f19+0x1cc>
20014194:      	li	s5, 0
20014196:      	j	0x200141d8 <core::fmt::Formatter::pad::h535348a192cb9f19+0x1d6>
20014198:      	mv	a0, s2
2001419a:      	mv	a1, s3
2001419c:      	auipc	ra, 0
200141a0:      	jalr	182(ra)
200141a4:      	bltu	a0, s0, 0x20014176 <core::fmt::Formatter::pad::h535348a192cb9f19+0x174>
200141a8:      	lw	a1, 28(s1)
200141aa:      	lw	a0, 24(s1)
200141ac:      	lw	a5, 12(a1)
200141ae:      	mv	a1, s2
200141b0:      	mv	a2, s3
200141b2:      	lw	ra, 44(sp)
200141b4:      	lw	s0, 40(sp)
200141b6:      	lw	s1, 36(sp)
200141b8:      	lw	s2, 32(sp)
200141ba:      	lw	s3, 28(sp)
200141bc:      	lw	s4, 24(sp)
200141be:      	lw	s5, 20(sp)
200141c0:      	lw	s6, 16(sp)
200141c2:      	lw	s7, 12(sp)
200141c4:      	addi	sp, sp, 48
200141c6:      	jr	a5
200141c8:      	mv	s5, a0
200141ca:      	li	a0, 0
200141cc:      	j	0x200141d8 <core::fmt::Formatter::pad::h535348a192cb9f19+0x1d6>
200141ce:      	addi	a1, a0, 1
200141d2:      	srli	a0, a0, 1
200141d4:      	srli	s5, a1, 1
200141d8:      	lw	s6, 24(s1)
200141dc:      	lw	s7, 28(s1)
200141e0:      	lw	s1, 4(s1)
200141e2:      	addi	s0, a0, 1
200141e6:      	addi	s0, s0, -1
200141e8:      	beqz	s0, 0x200141fa <core::fmt::Formatter::pad::h535348a192cb9f19+0x1f8>
200141ea:      	lw	a2, 16(s7)
200141ee:      	mv	a0, s6
200141f0:      	mv	a1, s1
200141f2:      	jalr	a2
200141f4:      	beqz	a0, 0x200141e6 <core::fmt::Formatter::pad::h535348a192cb9f19+0x1e4>
200141f6:      	li	s4, 1
200141f8:      	j	0x20014238 <core::fmt::Formatter::pad::h535348a192cb9f19+0x236>
200141fa:      	lui	a0, 272
200141fe:      	li	s4, 1
20014200:      	beq	s1, a0, 0x20014238 <core::fmt::Formatter::pad::h535348a192cb9f19+0x236>
20014204:      	lw	a3, 12(s7)
20014208:      	mv	a0, s6
2001420a:      	mv	a1, s2
2001420c:      	mv	a2, s3
2001420e:      	jalr	a3
20014210:      	bnez	a0, 0x20014238 <core::fmt::Formatter::pad::h535348a192cb9f19+0x236>
20014212:      	li	s0, 0
20014214:      	beq	s5, s0, 0x20014232 <core::fmt::Formatter::pad::h535348a192cb9f19+0x230>
20014218:      	lw	a2, 16(s7)
2001421c:      	addi	s0, s0, 1
2001421e:      	mv	a0, s6
20014220:      	mv	a1, s1
20014222:      	jalr	a2
20014224:      	beqz	a0, 0x20014214 <core::fmt::Formatter::pad::h535348a192cb9f19+0x212>
20014226:      	addi	a0, s0, -1
2001422a:      	j	0x20014234 <core::fmt::Formatter::pad::h535348a192cb9f19+0x232>
2001422c:      	li	a2, 0
2001422e:      	beqz	a2, 0x20014148 <core::fmt::Formatter::pad::h535348a192cb9f19+0x146>
20014230:      	j	0x20014144 <core::fmt::Formatter::pad::h535348a192cb9f19+0x142>
20014232:      	mv	a0, s5
20014234:      	sltu	s4, a0, s5
20014238:      	mv	a0, s4
2001423a:      	lw	ra, 44(sp)
2001423c:      	lw	s0, 40(sp)
2001423e:      	lw	s1, 36(sp)
20014240:      	lw	s2, 32(sp)
20014242:      	lw	s3, 28(sp)
20014244:      	lw	s4, 24(sp)
20014246:      	lw	s5, 20(sp)
20014248:      	lw	s6, 16(sp)
2001424a:      	lw	s7, 12(sp)
2001424c:      	addi	sp, sp, 48
2001424e:      	ret

20014250 <<core::convert::Infallible as core::fmt::Display>::fmt::he46acc54b714626c>:
20014250:      	unimp	

20014252 <core::str::count::do_count_chars::hcb0097adeed44bbf>:
20014252:      	mv	a2, a0
20014254:      	addi	a0, a0, 3
20014256:      	andi	a0, a0, -4
20014258:      	sub	a7, a0, a2
2001425c:      	bltu	a1, a7, 0x20014272 <core::str::count::do_count_chars::hcb0097adeed44bbf+0x20>
20014260:      	sub	a6, a1, a7
20014264:      	sltiu	a3, a6, 4
20014268:      	li	a4, 4
2001426a:      	sltu	a4, a4, a7
2001426e:      	or	a3, a3, a4
20014270:      	beqz	a3, 0x2001428c <core::str::count::do_count_chars::hcb0097adeed44bbf+0x3a>
20014272:      	li	a0, 0
20014274:      	beqz	a1, 0x2001428a <core::str::count::do_count_chars::hcb0097adeed44bbf+0x38>
20014276:      	li	a3, -65
2001427a:      	lb	a4, 0(a2)
2001427e:      	addi	a2, a2, 1
20014280:      	slt	a4, a3, a4
20014284:      	addi	a1, a1, -1
20014286:      	add	a0, a0, a4
20014288:      	bnez	a1, 0x2001427a <core::str::count::do_count_chars::hcb0097adeed44bbf+0x28>
2001428a:      	ret
2001428c:      	andi	a4, a6, 3
20014290:      	li	a3, 0
20014292:      	beqz	a7, 0x200142b0 <core::str::count::do_count_chars::hcb0097adeed44bbf+0x5e>
20014296:      	sub	a0, a2, a0
2001429a:      	li	t0, -65
2001429e:      	mv	a5, a2
200142a0:      	lb	a1, 0(a5)
200142a4:      	addi	a5, a5, 1
200142a6:      	slt	a1, t0, a1
200142aa:      	addi	a0, a0, 1
200142ac:      	add	a3, a3, a1
200142ae:      	bnez	a0, 0x200142a0 <core::str::count::do_count_chars::hcb0097adeed44bbf+0x4e>
200142b0:      	add	t0, a2, a7
200142b4:      	li	a1, 0
200142b6:      	beqz	a4, 0x200142d4 <core::str::count::do_count_chars::hcb0097adeed44bbf+0x82>
200142b8:      	andi	a0, a6, -4
200142bc:      	add	a2, t0, a0
200142c0:      	li	a0, -65
200142c4:      	lb	a5, 0(a2)
200142c8:      	addi	a2, a2, 1
200142ca:      	slt	a5, a0, a5
200142ce:      	addi	a4, a4, -1
200142d0:      	add	a1, a1, a5
200142d2:      	bnez	a4, 0x200142c4 <core::str::count::do_count_chars::hcb0097adeed44bbf+0x72>
200142d4:      	srli	a2, a6, 2
200142d8:      	lui	a0, 4112
200142dc:      	addi	t4, a0, 257
200142e0:      	lui	a0, 4080
200142e4:      	addi	a7, a0, 255
200142e8:      	lui	a0, 16
200142ea:      	addi	a6, a0, 1
200142ee:      	add	a0, a1, a3
200142f2:      	j	0x2001431a <core::str::count::do_count_chars::hcb0097adeed44bbf+0xc8>
200142f4:      	slli	a1, t2, 2
200142f8:      	add	t0, t0, a1
200142fa:      	sub	a2, t1, t2
200142fe:      	andi	a1, t2, 3
20014302:      	and	a3, a5, a7
20014306:      	srli	a4, a5, 8
2001430a:      	and	a4, a4, a7
2001430e:      	add	a3, a3, a4
20014310:      	mul	a3, a3, a6
20014314:      	srli	a3, a3, 16
20014316:      	add	a0, a0, a3
20014318:      	bnez	a1, 0x20014392 <core::str::count::do_count_chars::hcb0097adeed44bbf+0x140>
2001431a:      	beqz	a2, 0x2001428a <core::str::count::do_count_chars::hcb0097adeed44bbf+0x38>
2001431c:      	mv	t1, a2
2001431e:      	li	a1, 192
20014322:      	mv	t2, a2
20014324:      	bltu	a2, a1, 0x2001432c <core::str::count::do_count_chars::hcb0097adeed44bbf+0xda>
20014328:      	li	t2, 192
2001432c:      	andi	a1, t2, 252
20014330:      	slli	a1, a1, 2
20014332:      	add	t3, t0, a1
20014336:      	li	a5, 0
20014338:      	beqz	a1, 0x200142f4 <core::str::count::do_count_chars::hcb0097adeed44bbf+0xa2>
2001433a:      	mv	a1, t0
2001433c:      	lw	a2, 0(a1)
2001433e:      	not	a3, a2
20014342:      	srli	a3, a3, 7
20014344:      	srli	a2, a2, 6
20014346:      	lw	a4, 4(a1)
20014348:      	or	a2, a2, a3
2001434a:      	and	a2, a2, t4
2001434e:      	add	a2, a2, a5
20014350:      	not	a3, a4
20014354:      	srli	a3, a3, 7
20014356:      	srli	a4, a4, 6
20014358:      	lw	a5, 8(a1)
2001435a:      	or	a3, a3, a4
2001435c:      	and	a3, a3, t4
20014360:      	add	a2, a2, a3
20014362:      	not	a3, a5
20014366:      	srli	a3, a3, 7
20014368:      	srli	a4, a5, 6
2001436c:      	lw	a5, 12(a1)
2001436e:      	or	a3, a3, a4
20014370:      	and	a3, a3, t4
20014374:      	add	a2, a2, a3
20014376:      	not	a3, a5
2001437a:      	srli	a3, a3, 7
2001437c:      	srli	a4, a5, 6
20014380:      	or	a3, a3, a4
20014382:      	and	a3, a3, t4
20014386:      	addi	a1, a1, 16
20014388:      	add	a5, a3, a2
2001438c:      	bne	a1, t3, 0x2001433c <core::str::count::do_count_chars::hcb0097adeed44bbf+0xea>
20014390:      	j	0x200142f4 <core::str::count::do_count_chars::hcb0097adeed44bbf+0xa2>
20014392:      	li	a1, 192
20014396:      	bltu	t1, a1, 0x2001439e <core::str::count::do_count_chars::hcb0097adeed44bbf+0x14c>
2001439a:      	li	t1, 192
2001439e:      	li	a1, 0
200143a0:      	andi	a2, t1, 3
200143a4:      	slli	a2, a2, 2
200143a6:      	lw	a3, 0(t3)
200143aa:      	addi	t3, t3, 4
200143ac:      	not	a4, a3
200143b0:      	srli	a4, a4, 7
200143b2:      	srli	a3, a3, 6
200143b4:      	or	a3, a3, a4
200143b6:      	and	a3, a3, t4
200143ba:      	addi	a2, a2, -4
200143bc:      	add	a1, a1, a3
200143be:      	bnez	a2, 0x200143a6 <core::str::count::do_count_chars::hcb0097adeed44bbf+0x154>
200143c0:      	and	a2, a1, a7
200143c4:      	srli	a1, a1, 8
200143c6:      	and	a1, a1, a7
200143ca:      	add	a1, a1, a2
200143cc:      	mul	a1, a1, a6
200143d0:      	srli	a1, a1, 16
200143d2:      	add	a0, a0, a1
200143d4:      	ret

200143d6 <core::fmt::num::imp::fmt_u32::h89559eb00af7d566>:
200143d6:      	addi	sp, sp, -64
200143d8:      	sw	ra, 60(sp)
200143da:      	sw	s0, 56(sp)
200143dc:      	sw	s1, 52(sp)
200143de:      	mv	a6, a2
200143e0:      	srli	a3, a0, 4
200143e4:      	li	a4, 625
200143e8:      	li	a2, 39
200143ec:      	bgeu	a3, a4, 0x20014410 <core::fmt::num::imp::fmt_u32::h89559eb00af7d566+0x3a>
200143f0:      	li	a3, 99
200143f4:      	bltu	a3, a0, 0x200144a8 <core::fmt::num::imp::fmt_u32::h89559eb00af7d566+0xd2>
200143f8:      	li	a3, 10
200143fa:      	bgeu	a0, a3, 0x200144f2 <core::fmt::num::imp::fmt_u32::h89559eb00af7d566+0x11c>
200143fe:      	addi	a2, a2, -1
20014400:      	addi	a3, sp, 13
20014404:      	add	a3, a3, a2
20014406:      	addi	a0, a0, 48
2001440a:      	sb	a0, 0(a3)
2001440e:      	j	0x20014516 <core::fmt::num::imp::fmt_u32::h89559eb00af7d566+0x140>
20014410:      	li	a2, 0
20014412:      	lui	a3, 858993
20014416:      	addi	t0, a3, 1881
2001441a:      	lui	a3, 2
2001441c:      	addi	t2, a3, 1808
20014420:      	lui	a3, 1
20014422:      	addi	t3, a3, 1147
20014426:      	li	a7, 100
2001442a:      	lui	a4, 131094
2001442e:      	addi	t5, a4, -1700
20014432:      	addi	t1, sp, 13
20014436:      	lui	a5, 24414
2001443a:      	addi	t4, a5, 255
2001443e:      	mv	a3, a0
20014440:      	mulhu	a0, a0, t0
20014444:      	srli	a0, a0, 13
20014446:      	mul	a5, a0, t2
2001444a:      	sub	a5, a3, a5
2001444e:      	slli	a4, a5, 16
20014452:      	srli	a4, a4, 18
20014454:      	mul	a4, a4, t3
20014458:      	srli	a4, a4, 17
2001445a:      	slli	t6, a4, 1
2001445e:      	mul	a4, a4, a7
20014462:      	sub	a4, a5, a4
20014466:      	slli	a4, a4, 17
20014468:      	srli	s0, a4, 16
2001446c:      	add	a5, t6, t5
20014470:      	add	a4, t1, a2
20014474:      	lbu	t6, 0(a5)
20014478:      	lb	a5, 1(a5)
2001447c:      	add	s0, s0, t5
2001447e:      	lb	s1, 1(s0)
20014482:      	lbu	s0, 0(s0)
20014486:      	sb	a5, 36(a4)
2001448a:      	sb	t6, 35(a4)
2001448e:      	sb	s1, 38(a4)
20014492:      	sb	s0, 37(a4)
20014496:      	addi	a2, a2, -4
20014498:      	bltu	t4, a3, 0x2001443e <core::fmt::num::imp::fmt_u32::h89559eb00af7d566+0x68>
2001449c:      	addi	a2, a2, 39
200144a0:      	li	a3, 99
200144a4:      	bgeu	a3, a0, 0x200143f8 <core::fmt::num::imp::fmt_u32::h89559eb00af7d566+0x22>
200144a8:      	slli	a3, a0, 16
200144ac:      	srli	a3, a3, 18
200144ae:      	lui	a4, 1
200144b0:      	addi	a4, a4, 1147
200144b4:      	mul	a3, a3, a4
200144b8:      	srli	a3, a3, 17
200144ba:      	li	a4, 100
200144be:      	mul	a4, a3, a4
200144c2:      	sub	a0, a0, a4
200144c4:      	slli	a0, a0, 17
200144c6:      	srli	a0, a0, 16
200144c8:      	addi	a2, a2, -2
200144ca:      	lui	a4, 131094
200144ce:      	addi	a4, a4, -1700
200144d2:      	add	a0, a0, a4
200144d4:      	lb	a4, 1(a0)
200144d8:      	lbu	a0, 0(a0)
200144dc:      	addi	a5, sp, 13
200144e0:      	add	a5, a5, a2
200144e2:      	sb	a4, 1(a5)
200144e6:      	sb	a0, 0(a5)
200144ea:      	mv	a0, a3
200144ec:      	li	a3, 10
200144ee:      	bltu	a0, a3, 0x200143fe <core::fmt::num::imp::fmt_u32::h89559eb00af7d566+0x28>
200144f2:      	slli	a0, a0, 1
200144f4:      	addi	a2, a2, -2
200144f6:      	lui	a3, 131094
200144fa:      	addi	a3, a3, -1700
200144fe:      	add	a0, a0, a3
20014500:      	lb	a3, 1(a0)
20014504:      	lbu	a0, 0(a0)
20014508:      	addi	a4, sp, 13
2001450c:      	add	a4, a4, a2
2001450e:      	sb	a3, 1(a4)
20014512:      	sb	a0, 0(a4)
20014516:      	addi	a0, sp, 13
2001451a:      	add	a4, a0, a2
2001451e:      	li	a0, 39
20014522:      	sub	a5, a0, a2
20014526:      	lui	a0, 131094
2001452a:      	addi	a2, a0, -1772
2001452e:      	mv	a0, a6
20014530:      	li	a3, 0
20014532:      	auipc	ra, 0
20014536:      	jalr	-2038(ra)
2001453a:      	lw	ra, 60(sp)
2001453c:      	lw	s0, 56(sp)
2001453e:      	lw	s1, 52(sp)
20014540:      	addi	sp, sp, 64
20014542:      	ret

20014544 <core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt::h0f29cfa090d3fc38>:
20014544:      	lw	a0, 0(a0)
20014546:      	mv	a2, a1
20014548:      	li	a1, 1
2001454a:      	auipc	t1, 0
2001454e:      	jr	-372(t1)

20014552 <<&T as core::fmt::Debug>::fmt::hd5d38b0b99820160>:
20014552:      	lw	a2, 4(a0)
20014554:      	lw	a0, 0(a0)
20014556:      	lw	a5, 12(a2)
20014558:      	jr	a5

2001455a <<&T as core::fmt::Display>::fmt::h792c187c09cc7a54>:
2001455a:      	lw	a3, 0(a0)
2001455c:      	lw	a2, 4(a0)
2001455e:      	mv	a0, a1
20014560:      	mv	a1, a3
20014562:      	auipc	t1, 0
20014566:      	jr	-1376(t1)

2001456a <memset>:
2001456a:      	auipc	t1, 0
2001456e:      	jr	186(t1)

20014572 <compiler_builtins::mem::memcpy::h5d3d6687dd26525b>:
20014572:      	li	a3, 15
20014574:      	bgeu	a3, a2, 0x200145ec <compiler_builtins::mem::memcpy::h5d3d6687dd26525b+0x7a>
20014578:      	neg	a3, a0
2001457c:      	andi	a6, a3, 3
20014580:      	add	t2, a0, a6
20014584:      	beqz	a6, 0x2001459c <compiler_builtins::mem::memcpy::h5d3d6687dd26525b+0x2a>
20014588:      	mv	a5, a0
2001458a:      	mv	a3, a1
2001458c:      	lb	a4, 0(a3)
20014590:      	sb	a4, 0(a5)
20014594:      	addi	a5, a5, 1
20014596:      	addi	a3, a3, 1
20014598:      	bltu	a5, t2, 0x2001458c <compiler_builtins::mem::memcpy::h5d3d6687dd26525b+0x1a>
2001459c:      	add	a7, a1, a6
200145a0:      	sub	a6, a2, a6
200145a4:      	andi	t0, a6, -4
200145a8:      	andi	a1, a7, 3
200145ac:      	add	a3, t2, t0
200145b0:      	beqz	a1, 0x200145f2 <compiler_builtins::mem::memcpy::h5d3d6687dd26525b+0x80>
200145b2:      	blez	t0, 0x20014606 <compiler_builtins::mem::memcpy::h5d3d6687dd26525b+0x94>
200145b6:      	slli	a1, a7, 3
200145ba:      	andi	t1, a1, 24
200145be:      	andi	a4, a7, -4
200145c2:      	lw	a2, 0(a4)
200145c4:      	neg	a1, a1
200145c8:      	andi	t3, a1, 24
200145cc:      	addi	a5, a4, 4
200145d0:      	lw	a4, 0(a5)
200145d2:      	srl	a2, a2, t1
200145d6:      	sll	a1, a4, t3
200145da:      	or	a1, a1, a2
200145dc:      	sw	a1, 0(t2)
200145e0:      	addi	t2, t2, 4
200145e2:      	addi	a5, a5, 4
200145e4:      	mv	a2, a4
200145e6:      	bltu	t2, a3, 0x200145d0 <compiler_builtins::mem::memcpy::h5d3d6687dd26525b+0x5e>
200145ea:      	j	0x20014606 <compiler_builtins::mem::memcpy::h5d3d6687dd26525b+0x94>
200145ec:      	mv	a3, a0
200145ee:      	bnez	a2, 0x20014610 <compiler_builtins::mem::memcpy::h5d3d6687dd26525b+0x9e>
200145f0:      	j	0x20014622 <compiler_builtins::mem::memcpy::h5d3d6687dd26525b+0xb0>
200145f2:      	blez	t0, 0x20014606 <compiler_builtins::mem::memcpy::h5d3d6687dd26525b+0x94>
200145f6:      	mv	a1, a7
200145f8:      	lw	a2, 0(a1)
200145fa:      	sw	a2, 0(t2)
200145fe:      	addi	t2, t2, 4
20014600:      	addi	a1, a1, 4
20014602:      	bltu	t2, a3, 0x200145f8 <compiler_builtins::mem::memcpy::h5d3d6687dd26525b+0x86>
20014606:      	add	a1, a7, t0
2001460a:      	andi	a2, a6, 3
2001460e:      	beqz	a2, 0x20014622 <compiler_builtins::mem::memcpy::h5d3d6687dd26525b+0xb0>
20014610:      	add	a2, a2, a3
20014612:      	lb	a4, 0(a1)
20014616:      	sb	a4, 0(a3)
2001461a:      	addi	a3, a3, 1
2001461c:      	addi	a1, a1, 1
2001461e:      	bltu	a3, a2, 0x20014612 <compiler_builtins::mem::memcpy::h5d3d6687dd26525b+0xa0>
20014622:      	ret

20014624 <compiler_builtins::mem::memset::h302349b36fde6027>:
20014624:      	li	a3, 15
20014626:      	bgeu	a3, a2, 0x2001466e <compiler_builtins::mem::memset::h302349b36fde6027+0x4a>
2001462a:      	neg	a3, a0
2001462e:      	andi	a3, a3, 3
20014630:      	add	a4, a0, a3
20014634:      	beqz	a3, 0x20014642 <compiler_builtins::mem::memset::h302349b36fde6027+0x1e>
20014636:      	mv	a5, a0
20014638:      	sb	a1, 0(a5)
2001463c:      	addi	a5, a5, 1
2001463e:      	bltu	a5, a4, 0x20014638 <compiler_builtins::mem::memset::h302349b36fde6027+0x14>
20014642:      	sub	a2, a2, a3
20014644:      	andi	a5, a2, -4
20014648:      	add	a3, a4, a5
2001464c:      	blez	a5, 0x20014668 <compiler_builtins::mem::memset::h302349b36fde6027+0x44>
20014650:      	andi	a6, a1, 255
20014654:      	lui	a5, 4112
20014658:      	addi	a5, a5, 257
2001465c:      	mul	a5, a6, a5
20014660:      	sw	a5, 0(a4)
20014662:      	addi	a4, a4, 4
20014664:      	bltu	a4, a3, 0x20014660 <compiler_builtins::mem::memset::h302349b36fde6027+0x3c>
20014668:      	andi	a2, a2, 3
2001466a:      	bnez	a2, 0x20014672 <compiler_builtins::mem::memset::h302349b36fde6027+0x4e>
2001466c:      	j	0x2001467e <compiler_builtins::mem::memset::h302349b36fde6027+0x5a>
2001466e:      	mv	a3, a0
20014670:      	beqz	a2, 0x2001467e <compiler_builtins::mem::memset::h302349b36fde6027+0x5a>
20014672:      	add	a2, a2, a3
20014674:      	sb	a1, 0(a3)
20014678:      	addi	a3, a3, 1
2001467a:      	bltu	a3, a2, 0x20014674 <compiler_builtins::mem::memset::h302349b36fde6027+0x50>
2001467e:      	ret

20014680 <memcpy>:
20014680:      	auipc	t1, 0
20014684:      	jr	-270(t1)

20014688 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h4155370659e27846>:
20014688:      	beqz	a3, 0x2001468c <compiler_builtins::int::specialized_div_rem::u64_div_rem::h4155370659e27846+0x4>
2001468a:      	beqz	a4, 0x200146e6 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h4155370659e27846+0x5e>
2001468c:      	seqz	a6, a2
20014690:      	beq	a2, a4, 0x200146d6 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h4155370659e27846+0x4e>
20014694:      	sltu	a5, a2, a4
20014698:      	or	a5, a6, a5
2001469c:      	bnez	a5, 0x200146e0 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h4155370659e27846+0x58>
2001469e:      	srli	t0, a2, 16
200146a2:      	sltu	a5, t0, a4
200146a6:      	xori	a6, a5, 1
200146aa:      	mv	a7, a2
200146ac:      	bltu	t0, a4, 0x200146b2 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h4155370659e27846+0x2a>
200146b0:      	mv	a7, t0
200146b2:      	srli	a5, a7, 8
200146b6:      	slli	a6, a6, 4
200146b8:      	bltu	a5, a4, 0x20014724 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h4155370659e27846+0x9c>
200146bc:      	ori	a6, a6, 8
200146c0:      	srli	a7, a5, 4
200146c4:      	bgeu	a7, a4, 0x2001472e <compiler_builtins::int::specialized_div_rem::u64_div_rem::h4155370659e27846+0xa6>
200146c8:      	mv	a7, a5
200146ca:      	srli	a5, a7, 2
200146ce:      	bgeu	a5, a4, 0x2001473a <compiler_builtins::int::specialized_div_rem::u64_div_rem::h4155370659e27846+0xb2>
200146d2:      	mv	a5, a7
200146d4:      	j	0x2001473e <compiler_builtins::int::specialized_div_rem::u64_div_rem::h4155370659e27846+0xb6>
200146d6:      	sltu	a5, a1, a3
200146da:      	or	a5, a6, a5
200146de:      	beqz	a5, 0x2001469e <compiler_builtins::int::specialized_div_rem::u64_div_rem::h4155370659e27846+0x16>
200146e0:      	li	a7, 0
200146e2:      	li	a6, 0
200146e4:      	j	0x200147d2 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h4155370659e27846+0x14a>
200146e6:      	beqz	a2, 0x200147e0 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h4155370659e27846+0x158>
200146e8:      	bgeu	a2, a3, 0x200147f0 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h4155370659e27846+0x168>
200146ec:      	srli	t0, a3, 16
200146f0:      	sltu	a5, t0, a2
200146f4:      	xori	a6, a5, 1
200146f8:      	mv	a7, a3
200146fa:      	bltu	t0, a2, 0x20014700 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h4155370659e27846+0x78>
200146fe:      	mv	a7, t0
20014700:      	srli	a5, a7, 8
20014704:      	slli	a6, a6, 4
20014706:      	bltu	a5, a2, 0x20014816 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h4155370659e27846+0x18e>
2001470a:      	ori	a6, a6, 8
2001470e:      	srli	a7, a5, 4
20014712:      	bgeu	a7, a2, 0x20014820 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h4155370659e27846+0x198>
20014716:      	mv	a7, a5
20014718:      	srli	a5, a7, 2
2001471c:      	bgeu	a5, a2, 0x2001482c <compiler_builtins::int::specialized_div_rem::u64_div_rem::h4155370659e27846+0x1a4>
20014720:      	mv	a5, a7
20014722:      	j	0x20014830 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h4155370659e27846+0x1a8>
20014724:      	mv	a5, a7
20014726:      	srli	a7, a5, 4
2001472a:      	bltu	a7, a4, 0x200146c8 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h4155370659e27846+0x40>
2001472e:      	ori	a6, a6, 4
20014732:      	srli	a5, a7, 2
20014736:      	bltu	a5, a4, 0x200146d2 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h4155370659e27846+0x4a>
2001473a:      	ori	a6, a6, 2
2001473e:      	srli	a5, a5, 1
20014740:      	sltu	a5, a5, a4
20014744:      	xori	a5, a5, 1
20014748:      	or	t0, a6, a5
2001474c:      	addi	a5, t0, -32
20014750:      	bltz	a5, 0x2001475c <compiler_builtins::int::specialized_div_rem::u64_div_rem::h4155370659e27846+0xd4>
20014754:      	li	a6, 0
20014756:      	sll	t1, a3, a5
2001475a:      	j	0x20014776 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h4155370659e27846+0xee>
2001475c:      	sll	a6, a4, t0
20014760:      	li	a5, 31
20014762:      	sub	a7, a5, t0
20014766:      	srli	a5, a3, 1
2001476a:      	srl	a5, a5, a7
2001476e:      	or	t1, a6, a5
20014772:      	sll	a6, a3, t0
20014776:      	li	a7, 0
20014778:      	li	a5, 1
2001477a:      	sll	t0, a5, t0
2001477e:      	j	0x20014794 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h4155370659e27846+0x10c>
20014780:      	srli	a6, a6, 1
20014784:      	slli	a5, t1, 31
20014788:      	or	a6, a6, a5
2001478c:      	srli	t1, t1, 1
20014790:      	srli	t0, t0, 1
20014794:      	sltu	t2, a1, a6
20014798:      	sub	a5, a2, t1
2001479c:      	sub	a5, a5, t2
200147a0:      	bltz	a5, 0x20014780 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h4155370659e27846+0xf8>
200147a4:      	sub	a1, a1, a6
200147a8:      	beq	a5, a4, 0x200147bc <compiler_builtins::int::specialized_div_rem::u64_div_rem::h4155370659e27846+0x134>
200147ac:      	sltu	a2, a5, a4
200147b0:      	xori	a2, a2, 1
200147b4:      	or	a7, a7, t0
200147b8:      	bnez	a2, 0x200147ca <compiler_builtins::int::specialized_div_rem::u64_div_rem::h4155370659e27846+0x142>
200147ba:      	j	0x200147ce <compiler_builtins::int::specialized_div_rem::u64_div_rem::h4155370659e27846+0x146>
200147bc:      	sltu	a2, a1, a3
200147c0:      	xori	a2, a2, 1
200147c4:      	or	a7, a7, t0
200147c8:      	beqz	a2, 0x200147ce <compiler_builtins::int::specialized_div_rem::u64_div_rem::h4155370659e27846+0x146>
200147ca:      	mv	a2, a5
200147cc:      	j	0x20014780 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h4155370659e27846+0xf8>
200147ce:      	li	a6, 0
200147d0:      	mv	a2, a5
200147d2:      	sw	a1, 8(a0)
200147d4:      	sw	a7, 0(a0)
200147d8:      	sw	a2, 12(a0)
200147da:      	sw	a6, 4(a0)
200147de:      	ret
200147e0:      	li	a2, 0
200147e2:      	li	a6, 0
200147e4:      	divu	a7, a1, a3
200147e8:      	mul	a3, a7, a3
200147ec:      	sub	a1, a1, a3
200147ee:      	j	0x200147d2 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h4155370659e27846+0x14a>
200147f0:      	bne	a2, a3, 0x2001485e <compiler_builtins::int::specialized_div_rem::u64_div_rem::h4155370659e27846+0x1d6>
200147f4:      	divu	a3, a1, a2
200147f8:      	mul	a2, a3, a2
200147fc:      	sub	a1, a1, a2
200147fe:      	addi	a2, a3, -1
20014802:      	sltu	a3, a2, a3
20014806:      	addi	a7, a2, 1
2001480a:      	sltu	a2, a7, a2
2001480e:      	add	a6, a3, a2
20014812:      	li	a2, 0
20014814:      	j	0x200147d2 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h4155370659e27846+0x14a>
20014816:      	mv	a5, a7
20014818:      	srli	a7, a5, 4
2001481c:      	bltu	a7, a2, 0x20014716 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h4155370659e27846+0x8e>
20014820:      	ori	a6, a6, 4
20014824:      	srli	a5, a7, 2
20014828:      	bltu	a5, a2, 0x20014720 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h4155370659e27846+0x98>
2001482c:      	ori	a6, a6, 2
20014830:      	srli	a5, a5, 1
20014832:      	sltu	a5, a5, a2
20014836:      	xori	a5, a5, 1
2001483a:      	or	t0, a6, a5
2001483e:      	li	a6, 31
20014840:      	li	a7, 31
20014842:      	beqz	t0, 0x2001484e <compiler_builtins::int::specialized_div_rem::u64_div_rem::h4155370659e27846+0x1c6>
20014846:      	li	a5, 32
2001484a:      	sub	a7, a5, t0
2001484e:      	addi	a5, a7, -32
20014852:      	bltz	a5, 0x200148a6 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h4155370659e27846+0x21e>
20014856:      	li	a6, 0
20014858:      	sll	t1, a3, a5
2001485c:      	j	0x200148be <compiler_builtins::int::specialized_div_rem::u64_div_rem::h4155370659e27846+0x236>
2001485e:      	srli	a7, a3, 16
20014862:      	divu	a6, a2, a3
20014866:      	mul	a5, a6, a3
2001486a:      	sub	a2, a2, a5
2001486c:      	bnez	a7, 0x2001490e <compiler_builtins::int::specialized_div_rem::u64_div_rem::h4155370659e27846+0x286>
20014870:      	srli	a4, a1, 16
20014874:      	slli	a2, a2, 16
20014876:      	or	a2, a2, a4
20014878:      	divu	a4, a2, a3
2001487c:      	mul	a5, a4, a3
20014880:      	sub	a2, a2, a5
20014882:      	slli	a1, a1, 16
20014884:      	srli	a1, a1, 16
20014886:      	slli	a2, a2, 16
20014888:      	or	a1, a1, a2
2001488a:      	divu	a2, a1, a3
2001488e:      	mul	a3, a2, a3
20014892:      	sub	a1, a1, a3
20014894:      	slli	a3, a4, 16
20014898:      	srli	a4, a4, 16
2001489a:      	or	a6, a4, a6
2001489e:      	or	a7, a3, a2
200148a2:      	li	a2, 0
200148a4:      	j	0x200147d2 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h4155370659e27846+0x14a>
200148a6:      	sll	t0, a4, a7
200148aa:      	sub	a5, a6, a7
200148ae:      	srli	a4, a3, 1
200148b2:      	srl	a4, a4, a5
200148b6:      	or	t1, t0, a4
200148ba:      	sll	a6, a3, a7
200148be:      	li	t0, 0
200148c0:      	li	a5, 1
200148c2:      	sll	a7, a5, a7
200148c6:      	j	0x200148dc <compiler_builtins::int::specialized_div_rem::u64_div_rem::h4155370659e27846+0x254>
200148c8:      	srli	a4, a6, 1
200148cc:      	slli	a5, t1, 31
200148d0:      	or	a6, a4, a5
200148d4:      	srli	t1, t1, 1
200148d8:      	srli	a7, a7, 1
200148dc:      	sltu	a5, a1, a6
200148e0:      	sub	a4, a2, t1
200148e4:      	sub	a5, a4, a5
200148e8:      	bltz	a5, 0x200148c8 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h4155370659e27846+0x240>
200148ec:      	sub	a1, a1, a6
200148f0:      	or	t0, a7, t0
200148f4:      	beqz	a5, 0x200148fa <compiler_builtins::int::specialized_div_rem::u64_div_rem::h4155370659e27846+0x272>
200148f6:      	mv	a2, a5
200148f8:      	j	0x200148c8 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h4155370659e27846+0x240>
200148fa:      	li	a2, 0
200148fc:      	li	a6, 0
200148fe:      	divu	a4, a1, a3
20014902:      	mul	a3, a4, a3
20014906:      	sub	a1, a1, a3
20014908:      	or	a7, a4, t0
2001490c:      	j	0x200147d2 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h4155370659e27846+0x14a>
2001490e:      	beq	a2, a4, 0x20014918 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h4155370659e27846+0x290>
20014912:      	sltu	a5, a2, a4
20014916:      	j	0x2001491c <compiler_builtins::int::specialized_div_rem::u64_div_rem::h4155370659e27846+0x294>
20014918:      	sltu	a5, a1, a3
2001491c:      	beqz	a5, 0x20014922 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h4155370659e27846+0x29a>
2001491e:      	li	a7, 0
20014920:      	j	0x200147d2 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h4155370659e27846+0x14a>
20014922:      	li	t0, 0
20014924:      	srli	a5, a3, 1
20014928:      	slli	a4, a4, 31
2001492a:      	or	t2, a4, a5
2001492e:      	slli	t1, a3, 31
20014932:      	lui	a7, 524288
20014936:      	j	0x2001494c <compiler_builtins::int::specialized_div_rem::u64_div_rem::h4155370659e27846+0x2c4>
20014938:      	srli	a4, t1, 1
2001493c:      	slli	a5, t2, 31
20014940:      	or	t1, a4, a5
20014944:      	srli	t2, t2, 1
20014948:      	srli	a7, a7, 1
2001494c:      	sltu	a5, a1, t1
20014950:      	sub	a4, a2, t2
20014954:      	sub	a5, a4, a5
20014958:      	bltz	a5, 0x20014938 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h4155370659e27846+0x2b0>
2001495c:      	sub	a1, a1, t1
20014960:      	or	t0, a7, t0
20014964:      	beqz	a5, 0x2001496a <compiler_builtins::int::specialized_div_rem::u64_div_rem::h4155370659e27846+0x2e2>
20014966:      	mv	a2, a5
20014968:      	j	0x20014938 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h4155370659e27846+0x2b0>
2001496a:      	li	a2, 0
2001496c:      	j	0x200148fe <compiler_builtins::int::specialized_div_rem::u64_div_rem::h4155370659e27846+0x276>

2001496e <__udivdi3>:
2001496e:      	addi	sp, sp, -32
20014970:      	sw	ra, 28(sp)
20014972:      	mv	a4, a3
20014974:      	mv	a3, a2
20014976:      	mv	a2, a1
20014978:      	mv	a1, a0
2001497a:      	addi	a0, sp, 8
2001497c:      	auipc	ra, 0
20014980:      	jalr	-756(ra)
20014984:      	lw	a1, 12(sp)
20014986:      	lw	a0, 8(sp)
20014988:      	lw	ra, 28(sp)
2001498a:      	addi	sp, sp, 32
2001498c:      	ret

2001498e <default_setup_interrupts>:
2001498e:      	auipc	t0, 1048571
20014992:      	addi	t0, t0, 1918

20014996 <.L0 >:
20014996:      	csrw	mtvec, t0

2001499a <.L0 >:
2001499a:      	ret

2001499c <abort>:
2001499c:      	j	0x2001499c <abort>
