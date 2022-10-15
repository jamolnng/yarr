
yarr:	file format elf32-littleriscv

Disassembly of section .text:

20010000 <_start>:
20010000:      	csrci	mstatus, 8
20010004:      	li	ra, 0
20010008:      	li	sp, 0
2001000c:      	li	gp, 0
20010010:      	li	tp, 0
20010014:      	li	t0, 0
20010018:      	li	t1, 0
2001001c:      	li	t2, 0
20010020:      	li	s0, 0
20010024:      	li	s1, 0
20010028:      	li	a0, 0
2001002c:      	li	a1, 0
20010030:      	li	a2, 0
20010034:      	li	a3, 0
20010038:      	li	a4, 0
2001003c:      	li	a5, 0
20010040:      	li	a6, 0
20010044:      	li	a7, 0
20010048:      	li	s2, 0
2001004c:      	li	s3, 0
20010050:      	li	s4, 0
20010054:      	li	s5, 0
20010058:      	li	s6, 0
2001005c:      	li	s7, 0
20010060:      	li	s8, 0
20010064:      	li	s9, 0
20010068:      	li	s10, 0
2001006c:      	li	s11, 0
20010070:      	li	t3, 0
20010074:      	li	t4, 0
20010078:      	li	t5, 0
2001007c:      	li	t6, 0

20010080 <.Lpcrel_hi0>:
20010080:      	auipc	gp, 3
20010084:      	addi	gp, gp, -1664

20010088 <.Lpcrel_hi1>:
20010088:      	auipc	t0, 0
2001008c:      	addi	t0, t0, 48
20010090:      	csrw	mtvec, t0

20010094 <.Lpcrel_hi2>:
20010094:      	auipc	sp, 393200
20010098:      	addi	sp, sp, -148
2001009c:      	auipc	ra, 0
200100a0:      	jalr	16(ra)
200100a4:      	auipc	ra, 1
200100a8:      	jalr	-436(ra)

200100ac <_start_rust>:
200100ac:      	auipc	ra, 2
200100b0:      	jalr	-1996(ra)
200100b4:      	unimp	
200100b6:      	unimp	

200100b8 <early_unhandled_exception>:
200100b8:      	wfi	
200100bc:      	j	0x200100b8 <early_unhandled_exception>

200100c0 <_ZN4core6result19Result$LT$T$C$E$GT$2ok17h0efb68b61b2ba9f4E>:
200100c0:      	addi	sp, sp, -32
200100c2:      	sw	a0, 8(sp)
200100c4:      	sw	a1, 12(sp)
200100c6:      	li	a1, 0
200100c8:      	beq	a0, a1, 0x200100d2 <_ZN4core6result19Result$LT$T$C$E$GT$2ok17h0efb68b61b2ba9f4E+0x12>
200100cc:      	j	0x200100ce <_ZN4core6result19Result$LT$T$C$E$GT$2ok17h0efb68b61b2ba9f4E+0xe>
200100ce:      	j	0x200100da <_ZN4core6result19Result$LT$T$C$E$GT$2ok17h0efb68b61b2ba9f4E+0x1a>
200100d0:      	unimp	
200100d2:      	li	a0, 1
200100d4:      	sb	a0, 23(sp)
200100d8:      	j	0x200100e8 <_ZN4core6result19Result$LT$T$C$E$GT$2ok17h0efb68b61b2ba9f4E+0x28>
200100da:      	lw	a0, 12(sp)
200100dc:      	sw	a0, 28(sp)
200100de:      	li	a0, 0
200100e0:      	sb	a0, 23(sp)
200100e4:      	j	0x200100e6 <_ZN4core6result19Result$LT$T$C$E$GT$2ok17h0efb68b61b2ba9f4E+0x26>
200100e6:      	j	0x200100e8 <_ZN4core6result19Result$LT$T$C$E$GT$2ok17h0efb68b61b2ba9f4E+0x28>
200100e8:      	lbu	a0, 23(sp)
200100ec:      	addi	sp, sp, 32
200100ee:      	ret

200100f0 <core::iter::traits::iterator::Iterator::position::check::h666780ffb66f815d>:
200100f0:      	addi	sp, sp, -16
200100f2:      	addi	sp, sp, 16
200100f4:      	ret

200100f6 <core::iter::traits::iterator::Iterator::position::check::{{closure}}::h2a681da4ae5cfcae>:
200100f6:      	addi	sp, sp, -48
200100f8:      	sw	ra, 44(sp)
200100fa:      	sw	a2, 4(sp)
200100fc:      	mv	a2, a1
200100fe:      	lw	a1, 4(sp)
20010100:      	sw	a2, 8(sp)
20010102:      	sw	a0, 32(sp)
20010104:      	sw	a2, 36(sp)
20010106:      	sw	a1, 40(sp)
20010108:      	sw	a1, 28(sp)
2001010a:      	auipc	ra, 1
2001010e:      	jalr	-1996(ra)
20010112:      	sw	a0, 12(sp)
20010114:      	j	0x20010116 <core::iter::traits::iterator::Iterator::position::check::{{closure}}::h2a681da4ae5cfcae+0x20>
20010116:      	lw	a0, 12(sp)
20010118:      	li	a1, 0
2001011a:      	bne	a0, a1, 0x2001012e <core::iter::traits::iterator::Iterator::position::check::{{closure}}::h2a681da4ae5cfcae+0x38>
2001011e:      	j	0x20010120 <core::iter::traits::iterator::Iterator::position::check::{{closure}}::h2a681da4ae5cfcae+0x2a>
20010120:      	lw	a1, 8(sp)
20010122:      	addi	a0, a1, 1
20010126:      	sw	a0, 0(sp)
20010128:      	bltu	a0, a1, 0x2001014c <core::iter::traits::iterator::Iterator::position::check::{{closure}}::h2a681da4ae5cfcae+0x56>
2001012c:      	j	0x20010142 <core::iter::traits::iterator::Iterator::position::check::{{closure}}::h2a681da4ae5cfcae+0x4c>
2001012e:      	lw	a0, 8(sp)
20010130:      	sw	a0, 20(sp)
20010132:      	li	a0, 1
20010134:      	sw	a0, 16(sp)
20010136:      	j	0x20010138 <core::iter::traits::iterator::Iterator::position::check::{{closure}}::h2a681da4ae5cfcae+0x42>
20010138:      	lw	a0, 16(sp)
2001013a:      	lw	a1, 20(sp)
2001013c:      	lw	ra, 44(sp)
2001013e:      	addi	sp, sp, 48
20010140:      	ret
20010142:      	lw	a0, 0(sp)
20010144:      	sw	a0, 20(sp)
20010146:      	li	a0, 0
20010148:      	sw	a0, 16(sp)
2001014a:      	j	0x20010138 <core::iter::traits::iterator::Iterator::position::check::{{closure}}::h2a681da4ae5cfcae+0x42>
2001014c:      	lui	a0, 131091
20010150:      	addi	a0, a0, -1424
20010154:      	lui	a1, 131091
20010158:      	addi	a2, a1, -1448
2001015c:      	li	a1, 28
2001015e:      	auipc	ra, 2
20010162:      	jalr	-514(ra)
20010166:      	unimp	

20010168 <<core::iter::adapters::cycle::Cycle<I> as core::iter::traits::iterator::Iterator>::advance_by::haec103688cf98671>:
20010168:      	addi	sp, sp, -112
2001016a:      	sw	ra, 108(sp)
2001016c:      	sw	a1, 32(sp)
2001016e:      	sw	a0, 36(sp)
20010170:      	sw	a0, 72(sp)
20010172:      	sw	a1, 76(sp)
20010174:      	sw	a1, 52(sp)
20010176:      	addi	a0, a0, 8
20010178:      	auipc	ra, 1
2001017c:      	jalr	-1150(ra)
20010180:      	sw	a0, 56(sp)
20010182:      	sw	a1, 60(sp)
20010184:      	j	0x20010186 <<core::iter::adapters::cycle::Cycle<I> as core::iter::traits::iterator::Iterator>::advance_by::haec103688cf98671+0x1e>
20010186:      	lw	a0, 56(sp)
20010188:      	li	a1, 0
2001018a:      	beq	a0, a1, 0x20010194 <<core::iter::adapters::cycle::Cycle<I> as core::iter::traits::iterator::Iterator>::advance_by::haec103688cf98671+0x2c>
2001018e:      	j	0x20010190 <<core::iter::adapters::cycle::Cycle<I> as core::iter::traits::iterator::Iterator>::advance_by::haec103688cf98671+0x28>
20010190:      	j	0x200101a2 <<core::iter::adapters::cycle::Cycle<I> as core::iter::traits::iterator::Iterator>::advance_by::haec103688cf98671+0x3a>
20010192:      	unimp	
20010194:      	lw	a1, 56(sp)
20010196:      	lw	a0, 60(sp)
20010198:      	sw	a1, 96(sp)
2001019a:      	sw	a0, 100(sp)
2001019c:      	sw	a1, 40(sp)
2001019e:      	sw	a0, 44(sp)
200101a0:      	j	0x200102ae <<core::iter::adapters::cycle::Cycle<I> as core::iter::traits::iterator::Iterator>::advance_by::haec103688cf98671+0x146>
200101a2:      	lw	a1, 60(sp)
200101a4:      	sw	a1, 80(sp)
200101a6:      	lw	a0, 52(sp)
200101a8:      	sub	a1, a0, a1
200101ac:      	sw	a1, 28(sp)
200101ae:      	bltu	a0, a1, 0x200101ba <<core::iter::adapters::cycle::Cycle<I> as core::iter::traits::iterator::Iterator>::advance_by::haec103688cf98671+0x52>
200101b2:      	j	0x200101b4 <<core::iter::adapters::cycle::Cycle<I> as core::iter::traits::iterator::Iterator>::advance_by::haec103688cf98671+0x4c>
200101b4:      	lw	a0, 28(sp)
200101b6:      	sw	a0, 52(sp)
200101b8:      	j	0x200101d8 <<core::iter::adapters::cycle::Cycle<I> as core::iter::traits::iterator::Iterator>::advance_by::haec103688cf98671+0x70>
200101ba:      	lui	a0, 131091
200101be:      	addi	a0, a0, -1280
200101c2:      	lui	a1, 131091
200101c6:      	addi	a2, a1, -1308
200101ca:      	li	a1, 33
200101ce:      	auipc	ra, 2
200101d2:      	jalr	-626(ra)
200101d6:      	unimp	
200101d8:      	lw	a0, 52(sp)
200101da:      	li	a1, 0
200101dc:      	bne	a0, a1, 0x200101e8 <<core::iter::adapters::cycle::Cycle<I> as core::iter::traits::iterator::Iterator>::advance_by::haec103688cf98671+0x80>
200101e0:      	j	0x200101e2 <<core::iter::adapters::cycle::Cycle<I> as core::iter::traits::iterator::Iterator>::advance_by::haec103688cf98671+0x7a>
200101e2:      	li	a0, 0
200101e4:      	sw	a0, 40(sp)
200101e6:      	j	0x200102b0 <<core::iter::adapters::cycle::Cycle<I> as core::iter::traits::iterator::Iterator>::advance_by::haec103688cf98671+0x148>
200101e8:      	lw	a0, 36(sp)
200101ea:      	auipc	ra, 1
200101ee:      	jalr	-1282(ra)
200101f2:      	sw	a0, 20(sp)
200101f4:      	sw	a1, 24(sp)
200101f6:      	j	0x200101f8 <<core::iter::adapters::cycle::Cycle<I> as core::iter::traits::iterator::Iterator>::advance_by::haec103688cf98671+0x90>
200101f8:      	j	0x200101fa <<core::iter::adapters::cycle::Cycle<I> as core::iter::traits::iterator::Iterator>::advance_by::haec103688cf98671+0x92>
200101fa:      	lw	a1, 24(sp)
200101fc:      	lw	a2, 36(sp)
200101fe:      	lw	a3, 20(sp)
20010200:      	addi	a0, a2, 8
20010204:      	sw	a3, 8(a2)
20010206:      	sw	a1, 12(a2)
20010208:      	lw	a1, 52(sp)
2001020a:      	auipc	ra, 1
2001020e:      	jalr	-1296(ra)
20010212:      	sw	a0, 64(sp)
20010214:      	sw	a1, 68(sp)
20010216:      	j	0x20010218 <<core::iter::adapters::cycle::Cycle<I> as core::iter::traits::iterator::Iterator>::advance_by::haec103688cf98671+0xb0>
20010218:      	lw	a0, 64(sp)
2001021a:      	li	a1, 0
2001021c:      	beq	a0, a1, 0x20010226 <<core::iter::adapters::cycle::Cycle<I> as core::iter::traits::iterator::Iterator>::advance_by::haec103688cf98671+0xbe>
20010220:      	j	0x20010222 <<core::iter::adapters::cycle::Cycle<I> as core::iter::traits::iterator::Iterator>::advance_by::haec103688cf98671+0xba>
20010222:      	j	0x20010234 <<core::iter::adapters::cycle::Cycle<I> as core::iter::traits::iterator::Iterator>::advance_by::haec103688cf98671+0xcc>
20010224:      	unimp	
20010226:      	lw	a1, 64(sp)
20010228:      	lw	a0, 68(sp)
2001022a:      	sw	a1, 88(sp)
2001022c:      	sw	a0, 92(sp)
2001022e:      	sw	a1, 40(sp)
20010230:      	sw	a0, 44(sp)
20010232:      	j	0x200102ac <<core::iter::adapters::cycle::Cycle<I> as core::iter::traits::iterator::Iterator>::advance_by::haec103688cf98671+0x144>
20010234:      	lw	a0, 68(sp)
20010236:      	li	a1, 0
20010238:      	bne	a0, a1, 0x2001024e <<core::iter::adapters::cycle::Cycle<I> as core::iter::traits::iterator::Iterator>::advance_by::haec103688cf98671+0xe6>
2001023c:      	j	0x2001023e <<core::iter::adapters::cycle::Cycle<I> as core::iter::traits::iterator::Iterator>::advance_by::haec103688cf98671+0xd6>
2001023e:      	lw	a0, 32(sp)
20010240:      	lw	a1, 52(sp)
20010242:      	sub	a1, a0, a1
20010246:      	sw	a1, 16(sp)
20010248:      	bltu	a0, a1, 0x2001028e <<core::iter::adapters::cycle::Cycle<I> as core::iter::traits::iterator::Iterator>::advance_by::haec103688cf98671+0x126>
2001024c:      	j	0x20010284 <<core::iter::adapters::cycle::Cycle<I> as core::iter::traits::iterator::Iterator>::advance_by::haec103688cf98671+0x11c>
2001024e:      	lw	a1, 68(sp)
20010250:      	sw	a1, 84(sp)
20010252:      	lw	a0, 52(sp)
20010254:      	sub	a1, a0, a1
20010258:      	sw	a1, 12(sp)
2001025a:      	bltu	a0, a1, 0x20010266 <<core::iter::adapters::cycle::Cycle<I> as core::iter::traits::iterator::Iterator>::advance_by::haec103688cf98671+0xfe>
2001025e:      	j	0x20010260 <<core::iter::adapters::cycle::Cycle<I> as core::iter::traits::iterator::Iterator>::advance_by::haec103688cf98671+0xf8>
20010260:      	lw	a0, 12(sp)
20010262:      	sw	a0, 52(sp)
20010264:      	j	0x200101d8 <<core::iter::adapters::cycle::Cycle<I> as core::iter::traits::iterator::Iterator>::advance_by::haec103688cf98671+0x70>
20010266:      	lui	a0, 131091
2001026a:      	addi	a0, a0, -1280
2001026e:      	lui	a1, 131091
20010272:      	addi	a2, a1, -1244
20010276:      	li	a1, 33
2001027a:      	auipc	ra, 2
2001027e:      	jalr	-798(ra)
20010282:      	unimp	
20010284:      	lw	a0, 16(sp)
20010286:      	sw	a0, 44(sp)
20010288:      	li	a0, 1
2001028a:      	sw	a0, 40(sp)
2001028c:      	j	0x200102ac <<core::iter::adapters::cycle::Cycle<I> as core::iter::traits::iterator::Iterator>::advance_by::haec103688cf98671+0x144>
2001028e:      	lui	a0, 131091
20010292:      	addi	a0, a0, -1280
20010296:      	lui	a1, 131091
2001029a:      	addi	a2, a1, -1228
2001029e:      	li	a1, 33
200102a2:      	auipc	ra, 2
200102a6:      	jalr	-838(ra)
200102aa:      	unimp	
200102ac:      	j	0x200102ae <<core::iter::adapters::cycle::Cycle<I> as core::iter::traits::iterator::Iterator>::advance_by::haec103688cf98671+0x146>
200102ae:      	j	0x200102b0 <<core::iter::adapters::cycle::Cycle<I> as core::iter::traits::iterator::Iterator>::advance_by::haec103688cf98671+0x148>
200102b0:      	lw	a0, 40(sp)
200102b2:      	lw	a1, 44(sp)
200102b4:      	lw	ra, 108(sp)
200102b6:      	addi	sp, sp, 112
200102b8:      	ret

200102ba <<core::iter::adapters::cycle::Cycle<I> as core::iter::traits::iterator::Iterator>::next::hbe85a9670c355d65>:
200102ba:      	addi	sp, sp, -48
200102bc:      	sw	ra, 44(sp)
200102be:      	sw	a0, 20(sp)
200102c0:      	sw	a0, 36(sp)
200102c2:      	addi	a0, a0, 8
200102c4:      	auipc	ra, 1
200102c8:      	jalr	-1180(ra)
200102cc:      	sw	a0, 28(sp)
200102ce:      	j	0x200102d0 <<core::iter::adapters::cycle::Cycle<I> as core::iter::traits::iterator::Iterator>::next::hbe85a9670c355d65+0x16>
200102d0:      	li	a0, 1
200102d2:      	sb	a0, 35(sp)
200102d6:      	lw	a0, 28(sp)
200102d8:      	li	a1, 0
200102da:      	bne	a0, a1, 0x200102f0 <<core::iter::adapters::cycle::Cycle<I> as core::iter::traits::iterator::Iterator>::next::hbe85a9670c355d65+0x36>
200102de:      	j	0x200102e0 <<core::iter::adapters::cycle::Cycle<I> as core::iter::traits::iterator::Iterator>::next::hbe85a9670c355d65+0x26>
200102e0:      	lw	a0, 20(sp)
200102e2:      	auipc	ra, 1
200102e6:      	jalr	-1530(ra)
200102ea:      	sw	a0, 12(sp)
200102ec:      	sw	a1, 16(sp)
200102ee:      	j	0x2001030c <<core::iter::adapters::cycle::Cycle<I> as core::iter::traits::iterator::Iterator>::next::hbe85a9670c355d65+0x52>
200102f0:      	li	a0, 0
200102f2:      	sb	a0, 35(sp)
200102f6:      	lw	a0, 28(sp)
200102f8:      	sw	a0, 40(sp)
200102fa:      	sw	a0, 24(sp)
200102fc:      	j	0x200102fe <<core::iter::adapters::cycle::Cycle<I> as core::iter::traits::iterator::Iterator>::next::hbe85a9670c355d65+0x44>
200102fe:      	lbu	a0, 35(sp)
20010302:      	andi	a0, a0, 1
20010304:      	li	a1, 0
20010306:      	bne	a0, a1, 0x20010332 <<core::iter::adapters::cycle::Cycle<I> as core::iter::traits::iterator::Iterator>::next::hbe85a9670c355d65+0x78>
2001030a:      	j	0x2001032a <<core::iter::adapters::cycle::Cycle<I> as core::iter::traits::iterator::Iterator>::next::hbe85a9670c355d65+0x70>
2001030c:      	j	0x2001030e <<core::iter::adapters::cycle::Cycle<I> as core::iter::traits::iterator::Iterator>::next::hbe85a9670c355d65+0x54>
2001030e:      	lw	a1, 16(sp)
20010310:      	lw	a2, 20(sp)
20010312:      	lw	a3, 12(sp)
20010314:      	addi	a0, a2, 8
20010318:      	sw	a3, 8(a2)
2001031a:      	sw	a1, 12(a2)
2001031c:      	auipc	ra, 1
20010320:      	jalr	-1268(ra)
20010324:      	sw	a0, 24(sp)
20010326:      	j	0x20010328 <<core::iter::adapters::cycle::Cycle<I> as core::iter::traits::iterator::Iterator>::next::hbe85a9670c355d65+0x6e>
20010328:      	j	0x200102fe <<core::iter::adapters::cycle::Cycle<I> as core::iter::traits::iterator::Iterator>::next::hbe85a9670c355d65+0x44>
2001032a:      	lw	a0, 24(sp)
2001032c:      	lw	ra, 44(sp)
2001032e:      	addi	sp, sp, 48
20010330:      	ret
20010332:      	j	0x2001032a <<core::iter::adapters::cycle::Cycle<I> as core::iter::traits::iterator::Iterator>::next::hbe85a9670c355d65+0x70>

20010334 <<core::iter::adapters::cycle::Cycle<I> as core::iter::traits::iterator::Iterator>::try_fold::h2196663e526acef7>:
20010334:      	addi	sp, sp, -192
20010336:      	sw	ra, 188(sp)
20010338:      	sw	a1, 24(sp)
2001033a:      	sw	a0, 28(sp)
2001033c:      	sw	a2, 32(sp)
2001033e:      	sw	a3, 36(sp)
20010340:      	sw	a1, 140(sp)
20010342:      	addi	a1, a1, 8
20010344:      	addi	a0, sp, 56
20010346:      	addi	a3, sp, 36
20010348:      	auipc	ra, 1
2001034c:      	jalr	-1910(ra)
20010350:      	j	0x20010352 <<core::iter::adapters::cycle::Cycle<I> as core::iter::traits::iterator::Iterator>::try_fold::h2196663e526acef7+0x1e>
20010352:      	addi	a0, sp, 40
20010354:      	addi	a1, sp, 56
20010356:      	auipc	ra, 1
2001035a:      	jalr	782(ra)
2001035e:      	j	0x20010360 <<core::iter::adapters::cycle::Cycle<I> as core::iter::traits::iterator::Iterator>::try_fold::h2196663e526acef7+0x2c>
20010360:      	lw	a0, 40(sp)
20010362:      	li	a1, 0
20010364:      	beq	a0, a1, 0x2001036e <<core::iter::adapters::cycle::Cycle<I> as core::iter::traits::iterator::Iterator>::try_fold::h2196663e526acef7+0x3a>
20010368:      	j	0x2001036a <<core::iter::adapters::cycle::Cycle<I> as core::iter::traits::iterator::Iterator>::try_fold::h2196663e526acef7+0x36>
2001036a:      	j	0x20010384 <<core::iter::adapters::cycle::Cycle<I> as core::iter::traits::iterator::Iterator>::try_fold::h2196663e526acef7+0x50>
2001036c:      	unimp	
2001036e:      	lw	a0, 24(sp)
20010370:      	lw	a1, 44(sp)
20010372:      	sw	a1, 156(sp)
20010374:      	sw	a1, 32(sp)
20010376:      	auipc	ra, 1
2001037a:      	jalr	-1678(ra)
2001037e:      	sw	a0, 16(sp)
20010380:      	sw	a1, 20(sp)
20010382:      	j	0x2001039c <<core::iter::adapters::cycle::Cycle<I> as core::iter::traits::iterator::Iterator>::try_fold::h2196663e526acef7+0x68>
20010384:      	lw	a0, 28(sp)
20010386:      	lw	a1, 44(sp)
20010388:      	lw	a2, 48(sp)
2001038a:      	sw	a1, 144(sp)
2001038c:      	sw	a2, 148(sp)
2001038e:      	auipc	ra, 1
20010392:      	jalr	364(ra)
20010396:      	j	0x20010398 <<core::iter::adapters::cycle::Cycle<I> as core::iter::traits::iterator::Iterator>::try_fold::h2196663e526acef7+0x64>
20010398:      	j	0x2001039a <<core::iter::adapters::cycle::Cycle<I> as core::iter::traits::iterator::Iterator>::try_fold::h2196663e526acef7+0x66>
2001039a:      	j	0x2001048e <<core::iter::adapters::cycle::Cycle<I> as core::iter::traits::iterator::Iterator>::try_fold::h2196663e526acef7+0x15a>
2001039c:      	j	0x2001039e <<core::iter::adapters::cycle::Cycle<I> as core::iter::traits::iterator::Iterator>::try_fold::h2196663e526acef7+0x6a>
2001039e:      	lw	a0, 20(sp)
200103a0:      	lw	a2, 24(sp)
200103a2:      	lw	a3, 16(sp)
200103a4:      	addi	a1, a2, 8
200103a8:      	sw	a3, 8(a2)
200103aa:      	sw	a0, 12(a2)
200103ac:      	li	a0, 1
200103ae:      	sb	a0, 71(sp)
200103b2:      	lw	a2, 32(sp)
200103b4:      	addi	a3, sp, 71
200103b8:      	sw	a3, 104(sp)
200103ba:      	addi	a4, sp, 36
200103bc:      	sw	a4, 108(sp)
200103be:      	addi	a0, sp, 88
200103c0:      	auipc	ra, 0
200103c4:      	jalr	1916(ra)
200103c8:      	j	0x200103ca <<core::iter::adapters::cycle::Cycle<I> as core::iter::traits::iterator::Iterator>::try_fold::h2196663e526acef7+0x96>
200103ca:      	addi	a0, sp, 72
200103cc:      	addi	a1, sp, 88
200103ce:      	auipc	ra, 1
200103d2:      	jalr	662(ra)
200103d6:      	j	0x200103d8 <<core::iter::adapters::cycle::Cycle<I> as core::iter::traits::iterator::Iterator>::try_fold::h2196663e526acef7+0xa4>
200103d8:      	lw	a0, 72(sp)
200103da:      	li	a1, 0
200103dc:      	beq	a0, a1, 0x200103e6 <<core::iter::adapters::cycle::Cycle<I> as core::iter::traits::iterator::Iterator>::try_fold::h2196663e526acef7+0xb2>
200103e0:      	j	0x200103e2 <<core::iter::adapters::cycle::Cycle<I> as core::iter::traits::iterator::Iterator>::try_fold::h2196663e526acef7+0xae>
200103e2:      	j	0x200103fa <<core::iter::adapters::cycle::Cycle<I> as core::iter::traits::iterator::Iterator>::try_fold::h2196663e526acef7+0xc6>
200103e4:      	unimp	
200103e6:      	lw	a0, 76(sp)
200103e8:      	sw	a0, 172(sp)
200103ea:      	sw	a0, 32(sp)
200103ec:      	lbu	a0, 71(sp)
200103f0:      	andi	a0, a0, 1
200103f2:      	li	a1, 0
200103f4:      	bne	a0, a1, 0x20010414 <<core::iter::adapters::cycle::Cycle<I> as core::iter::traits::iterator::Iterator>::try_fold::h2196663e526acef7+0xe0>
200103f8:      	j	0x20010412 <<core::iter::adapters::cycle::Cycle<I> as core::iter::traits::iterator::Iterator>::try_fold::h2196663e526acef7+0xde>
200103fa:      	lw	a0, 28(sp)
200103fc:      	lw	a1, 76(sp)
200103fe:      	lw	a2, 80(sp)
20010400:      	sw	a1, 160(sp)
20010402:      	sw	a2, 164(sp)
20010404:      	auipc	ra, 1
20010408:      	jalr	246(ra)
2001040c:      	j	0x2001040e <<core::iter::adapters::cycle::Cycle<I> as core::iter::traits::iterator::Iterator>::try_fold::h2196663e526acef7+0xda>
2001040e:      	j	0x20010410 <<core::iter::adapters::cycle::Cycle<I> as core::iter::traits::iterator::Iterator>::try_fold::h2196663e526acef7+0xdc>
20010410:      	j	0x2001039a <<core::iter::adapters::cycle::Cycle<I> as core::iter::traits::iterator::Iterator>::try_fold::h2196663e526acef7+0x66>
20010412:      	j	0x20010424 <<core::iter::adapters::cycle::Cycle<I> as core::iter::traits::iterator::Iterator>::try_fold::h2196663e526acef7+0xf0>
20010414:      	lw	a0, 28(sp)
20010416:      	lw	a1, 32(sp)
20010418:      	auipc	ra, 1
2001041c:      	jalr	500(ra)
20010420:      	j	0x20010422 <<core::iter::adapters::cycle::Cycle<I> as core::iter::traits::iterator::Iterator>::try_fold::h2196663e526acef7+0xee>
20010422:      	j	0x20010410 <<core::iter::adapters::cycle::Cycle<I> as core::iter::traits::iterator::Iterator>::try_fold::h2196663e526acef7+0xdc>
20010424:      	lw	a0, 24(sp)
20010426:      	auipc	ra, 1
2001042a:      	jalr	-1854(ra)
2001042e:      	sw	a0, 8(sp)
20010430:      	sw	a1, 12(sp)
20010432:      	j	0x20010434 <<core::iter::adapters::cycle::Cycle<I> as core::iter::traits::iterator::Iterator>::try_fold::h2196663e526acef7+0x100>
20010434:      	j	0x20010436 <<core::iter::adapters::cycle::Cycle<I> as core::iter::traits::iterator::Iterator>::try_fold::h2196663e526acef7+0x102>
20010436:      	lw	a0, 12(sp)
20010438:      	lw	a2, 24(sp)
2001043a:      	lw	a3, 8(sp)
2001043c:      	addi	a1, a2, 8
20010440:      	sw	a3, 8(a2)
20010442:      	sw	a0, 12(a2)
20010444:      	lw	a2, 32(sp)
20010446:      	addi	a0, sp, 128
20010448:      	addi	a3, sp, 36
2001044a:      	auipc	ra, 0
2001044e:      	jalr	1928(ra)
20010452:      	j	0x20010454 <<core::iter::adapters::cycle::Cycle<I> as core::iter::traits::iterator::Iterator>::try_fold::h2196663e526acef7+0x120>
20010454:      	addi	a0, sp, 112
20010456:      	addi	a1, sp, 128
20010458:      	auipc	ra, 1
2001045c:      	jalr	524(ra)
20010460:      	j	0x20010462 <<core::iter::adapters::cycle::Cycle<I> as core::iter::traits::iterator::Iterator>::try_fold::h2196663e526acef7+0x12e>
20010462:      	lw	a0, 112(sp)
20010464:      	li	a1, 0
20010466:      	beq	a0, a1, 0x20010470 <<core::iter::adapters::cycle::Cycle<I> as core::iter::traits::iterator::Iterator>::try_fold::h2196663e526acef7+0x13c>
2001046a:      	j	0x2001046c <<core::iter::adapters::cycle::Cycle<I> as core::iter::traits::iterator::Iterator>::try_fold::h2196663e526acef7+0x138>
2001046c:      	j	0x20010478 <<core::iter::adapters::cycle::Cycle<I> as core::iter::traits::iterator::Iterator>::try_fold::h2196663e526acef7+0x144>
2001046e:      	unimp	
20010470:      	lw	a0, 116(sp)
20010472:      	sw	a0, 184(sp)
20010474:      	sw	a0, 32(sp)
20010476:      	j	0x20010424 <<core::iter::adapters::cycle::Cycle<I> as core::iter::traits::iterator::Iterator>::try_fold::h2196663e526acef7+0xf0>
20010478:      	lw	a0, 28(sp)
2001047a:      	lw	a1, 116(sp)
2001047c:      	lw	a2, 120(sp)
2001047e:      	sw	a1, 176(sp)
20010480:      	sw	a2, 180(sp)
20010482:      	auipc	ra, 1
20010486:      	jalr	120(ra)
2001048a:      	j	0x2001048c <<core::iter::adapters::cycle::Cycle<I> as core::iter::traits::iterator::Iterator>::try_fold::h2196663e526acef7+0x158>
2001048c:      	j	0x20010410 <<core::iter::adapters::cycle::Cycle<I> as core::iter::traits::iterator::Iterator>::try_fold::h2196663e526acef7+0xdc>
2001048e:      	lw	ra, 188(sp)
20010490:      	addi	sp, sp, 192
20010492:      	ret

20010494 <<core::iter::adapters::cycle::Cycle<I> as core::iter::traits::iterator::Iterator>::try_fold::{{closure}}::h59464858cd53ab9e>:
20010494:      	addi	sp, sp, -32
20010496:      	sw	ra, 28(sp)
20010498:      	sw	a1, 16(sp)
2001049a:      	sw	a2, 20(sp)
2001049c:      	sw	a3, 24(sp)
2001049e:      	lw	a5, 0(a1)
200104a0:      	li	a4, 0
200104a2:      	sb	a4, 0(a5)
200104a6:      	lw	a1, 4(a1)
200104a8:      	sw	a2, 8(sp)
200104aa:      	sw	a3, 12(sp)
200104ac:      	auipc	ra, 2
200104b0:      	jalr	-1806(ra)
200104b4:      	j	0x200104b6 <<core::iter::adapters::cycle::Cycle<I> as core::iter::traits::iterator::Iterator>::try_fold::{{closure}}::h59464858cd53ab9e+0x22>
200104b6:      	lw	ra, 28(sp)
200104b8:      	addi	sp, sp, 32
200104ba:      	ret

200104bc <core::iter::traits::iterator::Iterator::nth::ha0878a427d30e971>:
200104bc:      	addi	sp, sp, -48
200104be:      	sw	ra, 44(sp)
200104c0:      	sw	a0, 4(sp)
200104c2:      	sw	a0, 24(sp)
200104c4:      	sw	a1, 28(sp)
200104c6:      	auipc	ra, 0
200104ca:      	jalr	-862(ra)
200104ce:      	sw	a0, 8(sp)
200104d0:      	sw	a1, 12(sp)
200104d2:      	j	0x200104d4 <core::iter::traits::iterator::Iterator::nth::ha0878a427d30e971+0x18>
200104d4:      	lw	a1, 12(sp)
200104d6:      	lw	a0, 8(sp)
200104d8:      	auipc	ra, 0
200104dc:      	jalr	-1048(ra)
200104e0:      	sw	a0, 0(sp)
200104e2:      	j	0x200104e4 <core::iter::traits::iterator::Iterator::nth::ha0878a427d30e971+0x28>
200104e4:      	lw	a0, 0(sp)
200104e6:      	auipc	ra, 1
200104ea:      	jalr	-1148(ra)
200104ee:      	sb	a0, 23(sp)
200104f2:      	j	0x200104f4 <core::iter::traits::iterator::Iterator::nth::ha0878a427d30e971+0x38>
200104f4:      	lbu	a0, 23(sp)
200104f8:      	andi	a0, a0, 1
200104fa:      	li	a1, 0
200104fc:      	beq	a0, a1, 0x20010506 <core::iter::traits::iterator::Iterator::nth::ha0878a427d30e971+0x4a>
20010500:      	j	0x20010502 <core::iter::traits::iterator::Iterator::nth::ha0878a427d30e971+0x46>
20010502:      	j	0x20010514 <core::iter::traits::iterator::Iterator::nth::ha0878a427d30e971+0x58>
20010504:      	unimp	
20010506:      	lw	a0, 4(sp)
20010508:      	auipc	ra, 0
2001050c:      	jalr	-590(ra)
20010510:      	sw	a0, 16(sp)
20010512:      	j	0x2001052a <core::iter::traits::iterator::Iterator::nth::ha0878a427d30e971+0x6e>
20010514:      	auipc	ra, 1
20010518:      	jalr	-1152(ra)
2001051c:      	sw	a0, 16(sp)
2001051e:      	j	0x20010520 <core::iter::traits::iterator::Iterator::nth::ha0878a427d30e971+0x64>
20010520:      	j	0x20010522 <core::iter::traits::iterator::Iterator::nth::ha0878a427d30e971+0x66>
20010522:      	lw	a0, 16(sp)
20010524:      	lw	ra, 44(sp)
20010526:      	addi	sp, sp, 48
20010528:      	ret
2001052a:      	j	0x20010522 <core::iter::traits::iterator::Iterator::nth::ha0878a427d30e971+0x66>

2001052c <core::iter::traits::iterator::Iterator::skip::hbf3fd4b826f48c24>:
2001052c:      	addi	sp, sp, -32
2001052e:      	sw	ra, 28(sp)
20010530:      	sw	a2, 24(sp)
20010532:      	lw	a3, 0(a1)
20010534:      	sw	a3, 8(sp)
20010536:      	lw	a3, 4(a1)
20010538:      	sw	a3, 12(sp)
2001053a:      	lw	a3, 8(a1)
2001053c:      	sw	a3, 16(sp)
2001053e:      	lw	a1, 12(a1)
20010540:      	sw	a1, 20(sp)
20010542:      	addi	a1, sp, 8
20010544:      	auipc	ra, 0
20010548:      	jalr	510(ra)
2001054c:      	j	0x2001054e <core::iter::traits::iterator::Iterator::skip::hbf3fd4b826f48c24+0x22>
2001054e:      	lw	ra, 28(sp)
20010550:      	addi	sp, sp, 32
20010552:      	ret

20010554 <core::iter::adapters::cycle::Cycle<I>::new::h3885e70ec4fbc93b>:
20010554:      	addi	sp, sp, -32
20010556:      	sw	ra, 28(sp)
20010558:      	sw	a0, 4(sp)
2001055a:      	sw	a1, 16(sp)
2001055c:      	sw	a2, 20(sp)
2001055e:      	addi	a0, sp, 16
20010560:      	auipc	ra, 0
20010564:      	jalr	1928(ra)
20010568:      	sw	a0, 8(sp)
2001056a:      	sw	a1, 12(sp)
2001056c:      	j	0x2001056e <core::iter::adapters::cycle::Cycle<I>::new::h3885e70ec4fbc93b+0x1a>
2001056e:      	lw	a1, 4(sp)
20010570:      	lw	a3, 12(sp)
20010572:      	lw	a4, 8(sp)
20010574:      	lw	a2, 16(sp)
20010576:      	lw	a0, 20(sp)
20010578:      	sw	a4, 0(a1)
2001057a:      	sw	a3, 4(a1)
2001057c:      	sw	a2, 8(a1)
2001057e:      	sw	a0, 12(a1)
20010580:      	lw	ra, 28(sp)
20010582:      	addi	sp, sp, 32
20010584:      	ret

20010586 <core::clone::impls::<impl core::clone::Clone for i32>::clone::ha87bf3a9df23d304>:
20010586:      	addi	sp, sp, -16
20010588:      	sw	a0, 12(sp)
2001058a:      	lw	a0, 0(a0)
2001058c:      	addi	sp, sp, 16
2001058e:      	ret

20010590 <yarr::main::{{closure}}::hb2fe12f70d8ab92d>:
20010590:      	addi	sp, sp, -48
20010592:      	sw	ra, 44(sp)
20010594:      	sw	a0, 40(sp)
20010596:      	j	0x20010598 <yarr::main::{{closure}}::hb2fe12f70d8ab92d+0x8>
20010598:      	lui	a0, 65554
2001059c:      	li	a1, 12
2001059e:      	auipc	ra, 1
200105a2:      	jalr	636(ra)
200105a6:      	sw	a0, 12(sp)
200105a8:      	j	0x200105aa <yarr::main::{{closure}}::hb2fe12f70d8ab92d+0x1a>
200105aa:      	lw	a0, 12(sp)
200105ac:      	lui	a1, 1024
200105b0:      	xor	a2, a0, a1
200105b4:      	sw	a2, 12(sp)
200105b6:      	lui	a0, 65554
200105ba:      	li	a1, 12
200105bc:      	auipc	ra, 1
200105c0:      	jalr	550(ra)
200105c4:      	j	0x200105c6 <yarr::main::{{closure}}::hb2fe12f70d8ab92d+0x36>
200105c6:      	li	a0, 0
200105c8:      	sw	a0, 16(sp)
200105ca:      	lui	a1, 61
200105ce:      	addi	a1, a1, 144
200105d2:      	sw	a1, 20(sp)
200105d4:      	auipc	ra, 0
200105d8:      	jalr	1046(ra)
200105dc:      	sw	a0, 4(sp)
200105de:      	sw	a1, 8(sp)
200105e0:      	j	0x200105e2 <yarr::main::{{closure}}::hb2fe12f70d8ab92d+0x52>
200105e2:      	lw	a0, 8(sp)
200105e4:      	lw	a1, 4(sp)
200105e6:      	sw	a1, 24(sp)
200105e8:      	sw	a0, 28(sp)
200105ea:      	j	0x200105ec <yarr::main::{{closure}}::hb2fe12f70d8ab92d+0x5c>
200105ec:      	addi	a0, sp, 24
200105ee:      	auipc	ra, 0
200105f2:      	jalr	990(ra)
200105f6:      	sw	a0, 32(sp)
200105f8:      	sw	a1, 36(sp)
200105fa:      	j	0x200105fc <yarr::main::{{closure}}::hb2fe12f70d8ab92d+0x6c>
200105fc:      	lw	a0, 32(sp)
200105fe:      	li	a1, 0
20010600:      	beq	a0, a1, 0x20010598 <yarr::main::{{closure}}::hb2fe12f70d8ab92d+0x8>
20010604:      	j	0x20010606 <yarr::main::{{closure}}::hb2fe12f70d8ab92d+0x76>
20010606:      	j	0x200105ec <yarr::main::{{closure}}::hb2fe12f70d8ab92d+0x5c>
20010608:      	unimp	

2001060a <yarr::main::{{closure}}::hdefe91a530d1d29e>:
2001060a:      	addi	sp, sp, -48
2001060c:      	sw	ra, 44(sp)
2001060e:      	sw	a0, 40(sp)
20010610:      	j	0x20010612 <yarr::main::{{closure}}::hdefe91a530d1d29e+0x8>
20010612:      	lui	a0, 65554
20010616:      	li	a1, 12
20010618:      	auipc	ra, 1
2001061c:      	jalr	514(ra)
20010620:      	sw	a0, 12(sp)
20010622:      	j	0x20010624 <yarr::main::{{closure}}::hdefe91a530d1d29e+0x1a>
20010624:      	lw	a0, 12(sp)
20010626:      	lui	a1, 128
2001062a:      	xor	a2, a0, a1
2001062e:      	sw	a2, 12(sp)
20010630:      	lui	a0, 65554
20010634:      	li	a1, 12
20010636:      	auipc	ra, 1
2001063a:      	jalr	428(ra)
2001063e:      	j	0x20010640 <yarr::main::{{closure}}::hdefe91a530d1d29e+0x36>
20010640:      	li	a0, 0
20010642:      	sw	a0, 16(sp)
20010644:      	lui	a1, 244
20010648:      	addi	a1, a1, 576
2001064c:      	sw	a1, 20(sp)
2001064e:      	auipc	ra, 0
20010652:      	jalr	924(ra)
20010656:      	sw	a0, 4(sp)
20010658:      	sw	a1, 8(sp)
2001065a:      	j	0x2001065c <yarr::main::{{closure}}::hdefe91a530d1d29e+0x52>
2001065c:      	lw	a0, 8(sp)
2001065e:      	lw	a1, 4(sp)
20010660:      	sw	a1, 24(sp)
20010662:      	sw	a0, 28(sp)
20010664:      	j	0x20010666 <yarr::main::{{closure}}::hdefe91a530d1d29e+0x5c>
20010666:      	addi	a0, sp, 24
20010668:      	auipc	ra, 0
2001066c:      	jalr	868(ra)
20010670:      	sw	a0, 32(sp)
20010672:      	sw	a1, 36(sp)
20010674:      	j	0x20010676 <yarr::main::{{closure}}::hdefe91a530d1d29e+0x6c>
20010676:      	lw	a0, 32(sp)
20010678:      	li	a1, 0
2001067a:      	beq	a0, a1, 0x20010612 <yarr::main::{{closure}}::hdefe91a530d1d29e+0x8>
2001067e:      	j	0x20010680 <yarr::main::{{closure}}::hdefe91a530d1d29e+0x76>
20010680:      	j	0x20010666 <yarr::main::{{closure}}::hdefe91a530d1d29e+0x5c>
20010682:      	unimp	

20010684 <core::ptr::non_null::NonNull<T>::new_unchecked::hbeb9af705c060e46>:
20010684:      	addi	sp, sp, -16
20010686:      	sw	a0, 12(sp)
20010688:      	sw	a0, 8(sp)
2001068a:      	addi	sp, sp, 16
2001068c:      	ret

2001068e <core::ptr::non_null::NonNull<T>::as_ptr::h35c3f119e3d8cbe8>:
2001068e:      	addi	sp, sp, -16
20010690:      	sw	a0, 12(sp)
20010692:      	addi	sp, sp, 16
20010694:      	ret

20010696 <<core::iter::adapters::skip::Skip<I> as core::iter::traits::iterator::Iterator>::try_fold::h26c6231f6d505ad7>:
20010696:      	addi	sp, sp, -48
20010698:      	sw	ra, 44(sp)
2001069a:      	sw	a3, 4(sp)
2001069c:      	sw	a2, 12(sp)
2001069e:      	mv	a2, a1
200106a0:      	sw	a2, 8(sp)
200106a2:      	mv	a1, a0
200106a4:      	lw	a0, 12(sp)
200106a6:      	sw	a1, 16(sp)
200106a8:      	sw	a2, 28(sp)
200106aa:      	sw	a0, 32(sp)
200106ac:      	sw	a3, 36(sp)
200106ae:      	lw	a0, 16(a2)
200106b0:      	sw	a0, 20(sp)
200106b2:      	sw	a0, 40(sp)
200106b4:      	li	a1, 0
200106b6:      	sw	a1, 16(a2)
200106b8:      	bne	a0, a1, 0x200106d0 <<core::iter::adapters::skip::Skip<I> as core::iter::traits::iterator::Iterator>::try_fold::h26c6231f6d505ad7+0x3a>
200106bc:      	j	0x200106be <<core::iter::adapters::skip::Skip<I> as core::iter::traits::iterator::Iterator>::try_fold::h26c6231f6d505ad7+0x28>
200106be:      	lw	a3, 4(sp)
200106c0:      	lw	a2, 12(sp)
200106c2:      	lw	a1, 8(sp)
200106c4:      	lw	a0, 16(sp)
200106c6:      	auipc	ra, 0
200106ca:      	jalr	-914(ra)
200106ce:      	j	0x20010714 <<core::iter::adapters::skip::Skip<I> as core::iter::traits::iterator::Iterator>::try_fold::h26c6231f6d505ad7+0x7e>
200106d0:      	lw	a0, 8(sp)
200106d2:      	lw	a1, 20(sp)
200106d4:      	addi	a1, a1, -1
200106d6:      	auipc	ra, 0
200106da:      	jalr	-538(ra)
200106de:      	sw	a0, 24(sp)
200106e0:      	j	0x200106e2 <<core::iter::adapters::skip::Skip<I> as core::iter::traits::iterator::Iterator>::try_fold::h26c6231f6d505ad7+0x4c>
200106e2:      	addi	a0, sp, 24
200106e4:      	auipc	ra, 1
200106e8:      	jalr	-1726(ra)
200106ec:      	sw	a0, 0(sp)
200106ee:      	j	0x200106f0 <<core::iter::adapters::skip::Skip<I> as core::iter::traits::iterator::Iterator>::try_fold::h26c6231f6d505ad7+0x5a>
200106f0:      	j	0x200106f2 <<core::iter::adapters::skip::Skip<I> as core::iter::traits::iterator::Iterator>::try_fold::h26c6231f6d505ad7+0x5c>
200106f2:      	lw	a0, 0(sp)
200106f4:      	li	a1, 0
200106f6:      	bne	a0, a1, 0x200106fe <<core::iter::adapters::skip::Skip<I> as core::iter::traits::iterator::Iterator>::try_fold::h26c6231f6d505ad7+0x68>
200106fa:      	j	0x200106fc <<core::iter::adapters::skip::Skip<I> as core::iter::traits::iterator::Iterator>::try_fold::h26c6231f6d505ad7+0x66>
200106fc:      	j	0x200106be <<core::iter::adapters::skip::Skip<I> as core::iter::traits::iterator::Iterator>::try_fold::h26c6231f6d505ad7+0x28>
200106fe:      	lw	a1, 12(sp)
20010700:      	lw	a0, 16(sp)
20010702:      	auipc	ra, 1
20010706:      	jalr	-246(ra)
2001070a:      	j	0x2001070c <<core::iter::adapters::skip::Skip<I> as core::iter::traits::iterator::Iterator>::try_fold::h26c6231f6d505ad7+0x76>
2001070c:      	j	0x2001070e <<core::iter::adapters::skip::Skip<I> as core::iter::traits::iterator::Iterator>::try_fold::h26c6231f6d505ad7+0x78>
2001070e:      	lw	ra, 44(sp)
20010710:      	addi	sp, sp, 48
20010712:      	ret
20010714:      	j	0x2001070e <<core::iter::adapters::skip::Skip<I> as core::iter::traits::iterator::Iterator>::try_fold::h26c6231f6d505ad7+0x78>

20010716 <core::iter::traits::iterator::Iterator::take::hb9f67135c8039d2a>:
20010716:      	addi	sp, sp, -32
20010718:      	sw	ra, 28(sp)
2001071a:      	sw	a2, 24(sp)
2001071c:      	lw	a3, 0(a1)
2001071e:      	sw	a3, 0(sp)
20010720:      	lw	a3, 4(a1)
20010722:      	sw	a3, 4(sp)
20010724:      	lw	a3, 8(a1)
20010726:      	sw	a3, 8(sp)
20010728:      	lw	a3, 12(a1)
2001072a:      	sw	a3, 12(sp)
2001072c:      	lw	a1, 16(a1)
2001072e:      	sw	a1, 16(sp)
20010730:      	mv	a1, sp
20010732:      	auipc	ra, 1
20010736:      	jalr	1854(ra)
2001073a:      	j	0x2001073c <core::iter::traits::iterator::Iterator::take::hb9f67135c8039d2a+0x26>
2001073c:      	lw	ra, 28(sp)
2001073e:      	addi	sp, sp, 32
20010740:      	ret

20010742 <core::iter::adapters::skip::Skip<I>::new::hb6863c47c35c99a2>:
20010742:      	addi	sp, sp, -32
20010744:      	mv	a3, a1
20010746:      	sw	a2, 28(sp)
20010748:      	lw	a1, 12(a3)
2001074a:      	sw	a1, 20(sp)
2001074c:      	lw	a5, 8(a3)
2001074e:      	sw	a5, 16(sp)
20010750:      	lw	a4, 4(a3)
20010752:      	sw	a4, 12(sp)
20010754:      	lw	a3, 0(a3)
20010756:      	sw	a3, 8(sp)
20010758:      	sw	a5, 8(a0)
2001075a:      	sw	a4, 4(a0)
2001075c:      	sw	a3, 0(a0)
2001075e:      	sw	a1, 12(a0)
20010760:      	sw	a2, 16(a0)
20010762:      	addi	sp, sp, 32
20010764:      	ret

20010766 <yarr::scheduler::Scheduler::start::h5c0e43f469a4cd37>:
20010766:      	addi	sp, sp, -16
20010768:      	sw	ra, 12(sp)
2001076a:      	sw	a0, 4(sp)
2001076c:      	sw	a0, 8(sp)
2001076e:      	auipc	ra, 0
20010772:      	jalr	42(ra)
20010776:      	j	0x20010778 <yarr::scheduler::Scheduler::start::h5c0e43f469a4cd37+0x12>
20010778:      	lw	a0, 4(sp)
2001077a:      	auipc	ra, 0
2001077e:      	jalr	496(ra)
20010782:      	j	0x20010784 <yarr::scheduler::Scheduler::start::h5c0e43f469a4cd37+0x1e>
20010784:      	lw	a0, 4(sp)
20010786:      	auipc	ra, 0
2001078a:      	jalr	10(ra)
2001078e:      	unimp	

20010790 <yarr::scheduler::Scheduler::start_first_task::hae70e5df32e237e9>:
20010790:      	addi	sp, sp, -16
20010792:      	sw	a0, 12(sp)
20010794:      	j	0x20010796 <yarr::scheduler::Scheduler::start_first_task::hae70e5df32e237e9+0x6>
20010796:      	j	0x20010796 <yarr::scheduler::Scheduler::start_first_task::hae70e5df32e237e9+0x6>

20010798 <<yarr::scheduler::RoundRobin<C> as yarr::scheduler::Scheduler<yarr::process::RoundRobinProcess,C>>::schedule::hf9f3ea5602329327>:
20010798:      	addi	sp, sp, -144
2001079a:      	sw	ra, 140(sp)
2001079c:      	mv	a1, a0
2001079e:      	sw	a1, 44(sp)
200107a0:      	sw	a1, 132(sp)
200107a2:      	lw	a0, 52(a1)
200107a4:      	lw	a1, 56(a1)
200107a6:      	auipc	ra, 1
200107aa:      	jalr	-98(ra)
200107ae:      	sw	a0, 48(sp)
200107b0:      	sw	a1, 52(sp)
200107b2:      	j	0x200107b4 <<yarr::scheduler::RoundRobin<C> as yarr::scheduler::Scheduler<yarr::process::RoundRobinProcess,C>>::schedule::hf9f3ea5602329327+0x1c>
200107b4:      	lw	a2, 52(sp)
200107b6:      	lw	a1, 48(sp)
200107b8:      	addi	a0, sp, 112
200107ba:      	auipc	ra, 0
200107be:      	jalr	874(ra)
200107c2:      	j	0x200107c4 <<yarr::scheduler::RoundRobin<C> as yarr::scheduler::Scheduler<yarr::process::RoundRobinProcess,C>>::schedule::hf9f3ea5602329327+0x2c>
200107c4:      	lw	a0, 44(sp)
200107c6:      	lw	a2, 40(a0)
200107c8:      	addi	a0, sp, 88
200107ca:      	addi	a1, sp, 112
200107cc:      	auipc	ra, 0
200107d0:      	jalr	-672(ra)
200107d4:      	j	0x200107d6 <<yarr::scheduler::RoundRobin<C> as yarr::scheduler::Scheduler<yarr::process::RoundRobinProcess,C>>::schedule::hf9f3ea5602329327+0x3e>
200107d6:      	lw	a0, 44(sp)
200107d8:      	lw	a2, 56(a0)
200107da:      	addi	a0, sp, 64
200107dc:      	addi	a1, sp, 88
200107de:      	auipc	ra, 0
200107e2:      	jalr	-200(ra)
200107e6:      	j	0x200107e8 <<yarr::scheduler::RoundRobin<C> as yarr::scheduler::Scheduler<yarr::process::RoundRobinProcess,C>>::schedule::hf9f3ea5602329327+0x50>
200107e8:      	addi	a0, sp, 64
200107ea:      	auipc	ra, 1
200107ee:      	jalr	1606(ra)
200107f2:      	sw	a0, 56(sp)
200107f4:      	sw	a1, 60(sp)
200107f6:      	j	0x200107f8 <<yarr::scheduler::RoundRobin<C> as yarr::scheduler::Scheduler<yarr::process::RoundRobinProcess,C>>::schedule::hf9f3ea5602329327+0x60>
200107f8:      	lw	a0, 56(sp)
200107fa:      	li	a1, 0
200107fc:      	beq	a0, a1, 0x20010816 <<yarr::scheduler::RoundRobin<C> as yarr::scheduler::Scheduler<yarr::process::RoundRobinProcess,C>>::schedule::hf9f3ea5602329327+0x7e>
20010800:      	j	0x20010802 <<yarr::scheduler::RoundRobin<C> as yarr::scheduler::Scheduler<yarr::process::RoundRobinProcess,C>>::schedule::hf9f3ea5602329327+0x6a>
20010802:      	lw	a1, 44(sp)
20010804:      	lw	a0, 60(sp)
20010806:      	sw	a0, 36(sp)
20010808:      	sw	a0, 136(sp)
2001080a:      	lw	a1, 40(a1)
2001080c:      	add	a0, a0, a1
2001080e:      	sw	a0, 40(sp)
20010810:      	bltu	a0, a1, 0x20010840 <<yarr::scheduler::RoundRobin<C> as yarr::scheduler::Scheduler<yarr::process::RoundRobinProcess,C>>::schedule::hf9f3ea5602329327+0xa8>
20010814:      	j	0x20010832 <<yarr::scheduler::RoundRobin<C> as yarr::scheduler::Scheduler<yarr::process::RoundRobinProcess,C>>::schedule::hf9f3ea5602329327+0x9a>
20010816:      	lw	a0, 44(sp)
20010818:      	auipc	ra, 0
2001081c:      	jalr	328(ra)
20010820:      	sw	a0, 32(sp)
20010822:      	j	0x20010824 <<yarr::scheduler::RoundRobin<C> as yarr::scheduler::Scheduler<yarr::process::RoundRobinProcess,C>>::schedule::hf9f3ea5602329327+0x8c>
20010824:      	lw	a0, 32(sp)
20010826:      	lw	a1, 44(sp)
20010828:      	sw	a0, 48(a1)
2001082a:      	j	0x2001082c <<yarr::scheduler::RoundRobin<C> as yarr::scheduler::Scheduler<yarr::process::RoundRobinProcess,C>>::schedule::hf9f3ea5602329327+0x94>
2001082c:      	lw	ra, 140(sp)
2001082e:      	addi	sp, sp, 144
20010830:      	ret
20010832:      	lw	a1, 40(sp)
20010834:      	addi	a0, a1, 1
20010838:      	sw	a0, 28(sp)
2001083a:      	bltu	a0, a1, 0x2001086a <<yarr::scheduler::RoundRobin<C> as yarr::scheduler::Scheduler<yarr::process::RoundRobinProcess,C>>::schedule::hf9f3ea5602329327+0xd2>
2001083e:      	j	0x2001085c <<yarr::scheduler::RoundRobin<C> as yarr::scheduler::Scheduler<yarr::process::RoundRobinProcess,C>>::schedule::hf9f3ea5602329327+0xc4>
20010840:      	lui	a0, 131091
20010844:      	addi	a0, a0, -1168
20010848:      	lui	a1, 131091
2001084c:      	addi	a2, a1, -1196
20010850:      	li	a1, 28
20010852:      	auipc	ra, 1
20010856:      	jalr	1802(ra)
2001085a:      	unimp	
2001085c:      	lw	a0, 44(sp)
2001085e:      	lw	a0, 56(a0)
20010860:      	sw	a0, 24(sp)
20010862:      	li	a1, 0
20010864:      	beq	a0, a1, 0x2001089e <<yarr::scheduler::RoundRobin<C> as yarr::scheduler::Scheduler<yarr::process::RoundRobinProcess,C>>::schedule::hf9f3ea5602329327+0x106>
20010868:      	j	0x20010886 <<yarr::scheduler::RoundRobin<C> as yarr::scheduler::Scheduler<yarr::process::RoundRobinProcess,C>>::schedule::hf9f3ea5602329327+0xee>
2001086a:      	lui	a0, 131091
2001086e:      	addi	a0, a0, -1168
20010872:      	lui	a1, 131091
20010876:      	addi	a2, a1, -1140
2001087a:      	li	a1, 28
2001087c:      	auipc	ra, 1
20010880:      	jalr	1760(ra)
20010884:      	unimp	
20010886:      	lw	a0, 36(sp)
20010888:      	lw	a2, 44(sp)
2001088a:      	lw	a1, 28(sp)
2001088c:      	lw	a3, 24(sp)
2001088e:      	remu	a1, a1, a3
20010892:      	sw	a1, 40(a2)
20010894:      	add	a0, a0, a1
20010896:      	sw	a0, 20(sp)
20010898:      	bltu	a0, a1, 0x200108ca <<yarr::scheduler::RoundRobin<C> as yarr::scheduler::Scheduler<yarr::process::RoundRobinProcess,C>>::schedule::hf9f3ea5602329327+0x132>
2001089c:      	j	0x200108bc <<yarr::scheduler::RoundRobin<C> as yarr::scheduler::Scheduler<yarr::process::RoundRobinProcess,C>>::schedule::hf9f3ea5602329327+0x124>
2001089e:      	lui	a0, 131091
200108a2:      	addi	a0, a0, -1120
200108a6:      	lui	a1, 131091
200108aa:      	addi	a2, a1, -1140
200108ae:      	li	a1, 57
200108b2:      	auipc	ra, 1
200108b6:      	jalr	1706(ra)
200108ba:      	unimp	
200108bc:      	lw	a0, 44(sp)
200108be:      	lw	a0, 56(a0)
200108c0:      	sw	a0, 16(sp)
200108c2:      	li	a1, 0
200108c4:      	beq	a0, a1, 0x200108fc <<yarr::scheduler::RoundRobin<C> as yarr::scheduler::Scheduler<yarr::process::RoundRobinProcess,C>>::schedule::hf9f3ea5602329327+0x164>
200108c8:      	j	0x200108e6 <<yarr::scheduler::RoundRobin<C> as yarr::scheduler::Scheduler<yarr::process::RoundRobinProcess,C>>::schedule::hf9f3ea5602329327+0x14e>
200108ca:      	lui	a0, 131091
200108ce:      	addi	a0, a0, -1168
200108d2:      	lui	a1, 131091
200108d6:      	addi	a2, a1, -1060
200108da:      	li	a1, 28
200108dc:      	auipc	ra, 1
200108e0:      	jalr	1664(ra)
200108e4:      	unimp	
200108e6:      	lw	a1, 44(sp)
200108e8:      	lw	a0, 20(sp)
200108ea:      	lw	a2, 16(sp)
200108ec:      	remu	a0, a0, a2
200108f0:      	sw	a0, 8(sp)
200108f2:      	lw	a1, 56(a1)
200108f4:      	sw	a1, 12(sp)
200108f6:      	bltu	a0, a1, 0x2001091a <<yarr::scheduler::RoundRobin<C> as yarr::scheduler::Scheduler<yarr::process::RoundRobinProcess,C>>::schedule::hf9f3ea5602329327+0x182>
200108fa:      	j	0x20010928 <<yarr::scheduler::RoundRobin<C> as yarr::scheduler::Scheduler<yarr::process::RoundRobinProcess,C>>::schedule::hf9f3ea5602329327+0x190>
200108fc:      	lui	a0, 131091
20010900:      	addi	a0, a0, -1120
20010904:      	lui	a1, 131091
20010908:      	addi	a2, a1, -1060
2001090c:      	li	a1, 57
20010910:      	auipc	ra, 1
20010914:      	jalr	1612(ra)
20010918:      	unimp	
2001091a:      	lw	a1, 44(sp)
2001091c:      	lw	a2, 8(sp)
2001091e:      	lw	a0, 52(a1)
20010920:      	slli	a2, a2, 4
20010922:      	add	a0, a0, a2
20010924:      	sw	a0, 48(a1)
20010926:      	j	0x2001082c <<yarr::scheduler::RoundRobin<C> as yarr::scheduler::Scheduler<yarr::process::RoundRobinProcess,C>>::schedule::hf9f3ea5602329327+0x94>
20010928:      	lw	a1, 12(sp)
2001092a:      	lw	a0, 8(sp)
2001092c:      	lui	a2, 131091
20010930:      	addi	a2, a2, -1044
20010934:      	auipc	ra, 1
20010938:      	jalr	1620(ra)
2001093c:      	unimp	

2001093e <<yarr::scheduler::RoundRobin<C> as yarr::scheduler::Scheduler<yarr::process::RoundRobinProcess,C>>::schedule::{{closure}}::h9d141a2a9770e3ee>:
2001093e:      	addi	sp, sp, -32
20010940:      	sw	ra, 28(sp)
20010942:      	sw	a1, 12(sp)
20010944:      	mv	a1, a0
20010946:      	lw	a0, 12(sp)
20010948:      	sw	a1, 20(sp)
2001094a:      	sw	a0, 24(sp)
2001094c:      	auipc	ra, 0
20010950:      	jalr	286(ra)
20010954:      	sw	a0, 16(sp)
20010956:      	j	0x20010958 <<yarr::scheduler::RoundRobin<C> as yarr::scheduler::Scheduler<yarr::process::RoundRobinProcess,C>>::schedule::{{closure}}::h9d141a2a9770e3ee+0x1a>
20010958:      	lw	a0, 16(sp)
2001095a:      	lw	ra, 28(sp)
2001095c:      	addi	sp, sp, 32
2001095e:      	ret

20010960 <<yarr::scheduler::RoundRobin<C> as yarr::scheduler::Scheduler<yarr::process::RoundRobinProcess,C>>::idle::h8cd0bb3982edd05c>:
20010960:      	addi	sp, sp, -16
20010962:      	sw	a0, 12(sp)
20010964:      	lw	a0, 44(a0)
20010966:      	addi	sp, sp, 16
20010968:      	ret

2001096a <<yarr::scheduler::RoundRobin<C> as yarr::scheduler::Scheduler<yarr::process::RoundRobinProcess,C>>::set_timer::h5744e313756730c0>:
2001096a:      	addi	sp, sp, -16
2001096c:      	sw	ra, 12(sp)
2001096e:      	sw	a0, 8(sp)
20010970:      	auipc	ra, 1
20010974:      	jalr	-1862(ra)
20010978:      	j	0x2001097a <<yarr::scheduler::RoundRobin<C> as yarr::scheduler::Scheduler<yarr::process::RoundRobinProcess,C>>::set_timer::h5744e313756730c0+0x10>
2001097a:      	lw	ra, 12(sp)
2001097c:      	addi	sp, sp, 16
2001097e:      	ret

20010980 <yarr::scheduler::RoundRobin<C>::new::h1e00a3a83005b64d>:
20010980:      	addi	sp, sp, -80
20010982:      	sw	ra, 76(sp)
20010984:      	sw	a5, 0(sp)
20010986:      	sw	a4, 4(sp)
20010988:      	sw	a3, 8(sp)
2001098a:      	sw	a0, 12(sp)
2001098c:      	sw	a2, 60(sp)
2001098e:      	sw	a1, 56(sp)
20010990:      	sw	a3, 64(sp)
20010992:      	sw	a4, 68(sp)
20010994:      	sw	a5, 72(sp)
20010996:      	addi	a0, sp, 16
20010998:      	auipc	ra, 0
2001099c:      	jalr	1798(ra)
200109a0:      	j	0x200109a2 <yarr::scheduler::RoundRobin<C>::new::h1e00a3a83005b64d+0x22>
200109a2:      	lw	a0, 12(sp)
200109a4:      	addi	a1, sp, 16
200109a6:      	li	a2, 40
200109aa:      	auipc	ra, 2
200109ae:      	jalr	-696(ra)
200109b2:      	lw	a3, 0(sp)
200109b4:      	lw	a2, 8(sp)
200109b6:      	lw	a1, 12(sp)
200109b8:      	lw	a0, 4(sp)
200109ba:      	li	a4, 0
200109bc:      	sw	a4, 40(a1)
200109be:      	sw	a3, 44(a1)
200109c0:      	sw	a3, 48(a1)
200109c2:      	sw	a2, 52(a1)
200109c4:      	sw	a0, 56(a1)
200109c6:      	lw	ra, 76(sp)
200109c8:      	addi	sp, sp, 80
200109ca:      	ret

200109cc <core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next::h0b2beb7e65319fce>:
200109cc:      	addi	sp, sp, -16
200109ce:      	sw	ra, 12(sp)
200109d0:      	sw	a0, 8(sp)
200109d2:      	auipc	ra, 0
200109d6:      	jalr	34(ra)
200109da:      	sw	a0, 0(sp)
200109dc:      	sw	a1, 4(sp)
200109de:      	j	0x200109e0 <core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next::h0b2beb7e65319fce+0x14>
200109e0:      	lw	a1, 4(sp)
200109e2:      	lw	a0, 0(sp)
200109e4:      	lw	ra, 12(sp)
200109e6:      	addi	sp, sp, 16
200109e8:      	ret

200109ea <<I as core::iter::traits::collect::IntoIterator>::into_iter::h1ac41ff58b292533>:
200109ea:      	addi	sp, sp, -16
200109ec:      	sw	a0, 8(sp)
200109ee:      	sw	a1, 12(sp)
200109f0:      	addi	sp, sp, 16
200109f2:      	ret

200109f4 <<core::ops::range::Range<T> as core::iter::range::RangeIteratorImpl>::spec_next::hc49a4dc7beae6bc2>:
200109f4:      	addi	sp, sp, -48
200109f6:      	sw	ra, 44(sp)
200109f8:      	sw	a0, 16(sp)
200109fa:      	sw	a0, 36(sp)
200109fc:      	addi	a1, a0, 4
20010a00:      	auipc	ra, 1
20010a04:      	jalr	72(ra)
20010a08:      	sw	a0, 20(sp)
20010a0a:      	j	0x20010a0c <<core::ops::range::Range<T> as core::iter::range::RangeIteratorImpl>::spec_next::hc49a4dc7beae6bc2+0x18>
20010a0c:      	lw	a0, 20(sp)
20010a0e:      	li	a1, 0
20010a10:      	bne	a0, a1, 0x20010a1c <<core::ops::range::Range<T> as core::iter::range::RangeIteratorImpl>::spec_next::hc49a4dc7beae6bc2+0x28>
20010a14:      	j	0x20010a16 <<core::ops::range::Range<T> as core::iter::range::RangeIteratorImpl>::spec_next::hc49a4dc7beae6bc2+0x22>
20010a16:      	li	a0, 0
20010a18:      	sw	a0, 24(sp)
20010a1a:      	j	0x20010a58 <<core::ops::range::Range<T> as core::iter::range::RangeIteratorImpl>::spec_next::hc49a4dc7beae6bc2+0x64>
20010a1c:      	lw	a0, 16(sp)
20010a1e:      	auipc	ra, 0
20010a22:      	jalr	-1176(ra)
20010a26:      	sw	a0, 12(sp)
20010a28:      	j	0x20010a2a <<core::ops::range::Range<T> as core::iter::range::RangeIteratorImpl>::spec_next::hc49a4dc7beae6bc2+0x36>
20010a2a:      	lw	a0, 12(sp)
20010a2c:      	li	a1, 1
20010a2e:      	auipc	ra, 0
20010a32:      	jalr	1504(ra)
20010a36:      	mv	a1, a0
20010a38:      	sw	a1, 8(sp)
20010a3a:      	sw	a0, 40(sp)
20010a3c:      	j	0x20010a3e <<core::ops::range::Range<T> as core::iter::range::RangeIteratorImpl>::spec_next::hc49a4dc7beae6bc2+0x4a>
20010a3e:      	lw	a1, 8(sp)
20010a40:      	lw	a0, 16(sp)
20010a42:      	auipc	ra, 1
20010a46:      	jalr	1236(ra)
20010a4a:      	sw	a0, 4(sp)
20010a4c:      	j	0x20010a4e <<core::ops::range::Range<T> as core::iter::range::RangeIteratorImpl>::spec_next::hc49a4dc7beae6bc2+0x5a>
20010a4e:      	lw	a0, 4(sp)
20010a50:      	sw	a0, 28(sp)
20010a52:      	li	a0, 1
20010a54:      	sw	a0, 24(sp)
20010a56:      	j	0x20010a58 <<core::ops::range::Range<T> as core::iter::range::RangeIteratorImpl>::spec_next::hc49a4dc7beae6bc2+0x64>
20010a58:      	lw	a0, 24(sp)
20010a5a:      	lw	a1, 28(sp)
20010a5c:      	lw	ra, 44(sp)
20010a5e:      	addi	sp, sp, 48
20010a60:      	ret

20010a62 <yarr::process::idle::hba7a466feb4a0914>:
20010a62:      	j	0x20010a64 <yarr::process::idle::hba7a466feb4a0914+0x2>
20010a64:      	wfi	
20010a68:      	j	0x20010a64 <yarr::process::idle::hba7a466feb4a0914+0x2>

20010a6a <<yarr::process::RoundRobinProcess as yarr::process::Process>::ready::hebea606b1c6fd8f6>:
20010a6a:      	addi	sp, sp, -16
20010a6c:      	sw	a0, 12(sp)
20010a6e:      	lbu	a0, 12(a0)
20010a72:      	addi	sp, sp, 16
20010a74:      	ret

20010a76 <yarr::process::RoundRobinProcess::new::he9c1c25f4002ac73>:
20010a76:      	addi	sp, sp, -64
20010a78:      	sw	ra, 60(sp)
20010a7a:      	sw	a3, 0(sp)
20010a7c:      	mv	a3, a2
20010a7e:      	lw	a2, 0(sp)
20010a80:      	sw	a3, 4(sp)
20010a82:      	mv	a3, a1
20010a84:      	lw	a1, 4(sp)
20010a86:      	sw	a3, 8(sp)
20010a88:      	mv	a3, a0
20010a8a:      	lw	a0, 8(sp)
20010a8c:      	sw	a3, 12(sp)
20010a8e:      	sw	a0, 44(sp)
20010a90:      	sw	a1, 48(sp)
20010a92:      	sw	a2, 52(sp)
20010a94:      	addi	a0, sp, 16
20010a96:      	auipc	ra, 1
20010a9a:      	jalr	254(ra)
20010a9e:      	j	0x20010aa0 <yarr::process::RoundRobinProcess::new::he9c1c25f4002ac73+0x2a>
20010aa0:      	lw	a1, 8(sp)
20010aa2:      	addi	a0, sp, 16
20010aa4:      	auipc	ra, 1
20010aa8:      	jalr	370(ra)
20010aac:      	j	0x20010aae <yarr::process::RoundRobinProcess::new::he9c1c25f4002ac73+0x38>
20010aae:      	lw	a1, 12(sp)
20010ab0:      	lw	a0, 24(sp)
20010ab2:      	sw	a0, 40(sp)
20010ab4:      	lw	a0, 20(sp)
20010ab6:      	sw	a0, 36(sp)
20010ab8:      	lw	a0, 16(sp)
20010aba:      	sw	a0, 32(sp)
20010abc:      	li	a0, 1
20010abe:      	sb	a0, 12(a1)
20010ac2:      	lw	a0, 32(sp)
20010ac4:      	sw	a0, 0(a1)
20010ac6:      	lw	a0, 36(sp)
20010ac8:      	sw	a0, 4(a1)
20010aca:      	lw	a0, 40(sp)
20010acc:      	sw	a0, 8(a1)
20010ace:      	lw	ra, 60(sp)
20010ad0:      	addi	sp, sp, 64
20010ad2:      	ret

20010ad4 <yarr::process::RoundRobinProcess::idle::hb10661f3806f25da>:
20010ad4:      	addi	sp, sp, -64
20010ad6:      	sw	ra, 60(sp)
20010ad8:      	sw	a0, 12(sp)
20010ada:      	sw	a1, 48(sp)
20010adc:      	sw	a2, 52(sp)
20010ade:      	addi	a0, sp, 16
20010ae0:      	auipc	ra, 1
20010ae4:      	jalr	180(ra)
20010ae8:      	j	0x20010aea <yarr::process::RoundRobinProcess::idle::hb10661f3806f25da+0x16>
20010aea:      	lui	a0, 131089
20010aee:      	addi	a1, a0, -1438
20010af2:      	addi	a0, sp, 16
20010af4:      	auipc	ra, 1
20010af8:      	jalr	290(ra)
20010afc:      	j	0x20010afe <yarr::process::RoundRobinProcess::idle::hb10661f3806f25da+0x2a>
20010afe:      	lw	a1, 12(sp)
20010b00:      	lw	a0, 24(sp)
20010b02:      	sw	a0, 40(sp)
20010b04:      	lw	a0, 20(sp)
20010b06:      	sw	a0, 36(sp)
20010b08:      	lw	a0, 16(sp)
20010b0a:      	sw	a0, 32(sp)
20010b0c:      	li	a0, 1
20010b0e:      	sb	a0, 12(a1)
20010b12:      	lw	a0, 32(sp)
20010b14:      	sw	a0, 0(a1)
20010b16:      	lw	a0, 36(sp)
20010b18:      	sw	a0, 4(a1)
20010b1a:      	lw	a0, 40(sp)
20010b1c:      	sw	a0, 8(a1)
20010b1e:      	lw	ra, 60(sp)
20010b20:      	addi	sp, sp, 64
20010b22:      	ret

20010b24 <core::iter::traits::iterator::Iterator::cycle::h26f59a0edeb9191a>:
20010b24:      	addi	sp, sp, -16
20010b26:      	sw	ra, 12(sp)
20010b28:      	sw	a1, 0(sp)
20010b2a:      	sw	a2, 4(sp)
20010b2c:      	auipc	ra, 0
20010b30:      	jalr	-1496(ra)
20010b34:      	j	0x20010b36 <core::iter::traits::iterator::Iterator::cycle::h26f59a0edeb9191a+0x12>
20010b36:      	lw	ra, 12(sp)
20010b38:      	addi	sp, sp, 16
20010b3a:      	ret

20010b3c <core::iter::traits::iterator::Iterator::try_fold::h9709a70070a1a548>:
20010b3c:      	addi	sp, sp, -96
20010b3e:      	sw	ra, 92(sp)
20010b40:      	sw	a1, 0(sp)
20010b42:      	sw	a0, 4(sp)
20010b44:      	sw	a3, 8(sp)
20010b46:      	sw	a4, 12(sp)
20010b48:      	sw	a1, 68(sp)
20010b4a:      	sw	a2, 72(sp)
20010b4c:      	sw	a2, 16(sp)
20010b4e:      	j	0x20010b50 <core::iter::traits::iterator::Iterator::try_fold::h9709a70070a1a548+0x14>
20010b50:      	lw	a0, 0(sp)
20010b52:      	auipc	ra, 0
20010b56:      	jalr	726(ra)
20010b5a:      	sw	a0, 20(sp)
20010b5c:      	j	0x20010b5e <core::iter::traits::iterator::Iterator::try_fold::h9709a70070a1a548+0x22>
20010b5e:      	lw	a0, 20(sp)
20010b60:      	li	a1, 0
20010b62:      	beq	a0, a1, 0x20010b80 <core::iter::traits::iterator::Iterator::try_fold::h9709a70070a1a548+0x44>
20010b66:      	j	0x20010b68 <core::iter::traits::iterator::Iterator::try_fold::h9709a70070a1a548+0x2c>
20010b68:      	lw	a3, 20(sp)
20010b6a:      	sw	a3, 76(sp)
20010b6c:      	lw	a2, 16(sp)
20010b6e:      	sw	a2, 56(sp)
20010b70:      	sw	a3, 60(sp)
20010b72:      	addi	a0, sp, 40
20010b74:      	addi	a1, sp, 8
20010b76:      	auipc	ra, 0
20010b7a:      	jalr	-1762(ra)
20010b7e:      	j	0x20010b98 <core::iter::traits::iterator::Iterator::try_fold::h9709a70070a1a548+0x5c>
20010b80:      	j	0x20010b82 <core::iter::traits::iterator::Iterator::try_fold::h9709a70070a1a548+0x46>
20010b82:      	lw	a0, 4(sp)
20010b84:      	lw	a1, 16(sp)
20010b86:      	auipc	ra, 1
20010b8a:      	jalr	-1402(ra)
20010b8e:      	j	0x20010b90 <core::iter::traits::iterator::Iterator::try_fold::h9709a70070a1a548+0x54>
20010b90:      	j	0x20010b92 <core::iter::traits::iterator::Iterator::try_fold::h9709a70070a1a548+0x56>
20010b92:      	lw	ra, 92(sp)
20010b94:      	addi	sp, sp, 96
20010b96:      	ret
20010b98:      	addi	a0, sp, 24
20010b9a:      	addi	a1, sp, 40
20010b9c:      	auipc	ra, 1
20010ba0:      	jalr	-1336(ra)
20010ba4:      	j	0x20010ba6 <core::iter::traits::iterator::Iterator::try_fold::h9709a70070a1a548+0x6a>
20010ba6:      	lw	a0, 24(sp)
20010ba8:      	li	a1, 0
20010baa:      	beq	a0, a1, 0x20010bb4 <core::iter::traits::iterator::Iterator::try_fold::h9709a70070a1a548+0x78>
20010bae:      	j	0x20010bb0 <core::iter::traits::iterator::Iterator::try_fold::h9709a70070a1a548+0x74>
20010bb0:      	j	0x20010bbc <core::iter::traits::iterator::Iterator::try_fold::h9709a70070a1a548+0x80>
20010bb2:      	unimp	
20010bb4:      	lw	a0, 28(sp)
20010bb6:      	sw	a0, 88(sp)
20010bb8:      	sw	a0, 16(sp)
20010bba:      	j	0x20010b50 <core::iter::traits::iterator::Iterator::try_fold::h9709a70070a1a548+0x14>
20010bbc:      	lw	a0, 4(sp)
20010bbe:      	lw	a1, 28(sp)
20010bc0:      	lw	a2, 32(sp)
20010bc2:      	sw	a1, 80(sp)
20010bc4:      	sw	a2, 84(sp)
20010bc6:      	auipc	ra, 1
20010bca:      	jalr	-1740(ra)
20010bce:      	j	0x20010bd0 <core::iter::traits::iterator::Iterator::try_fold::h9709a70070a1a548+0x94>
20010bd0:      	j	0x20010b92 <core::iter::traits::iterator::Iterator::try_fold::h9709a70070a1a548+0x56>

20010bd2 <core::iter::traits::iterator::Iterator::try_fold::hb0db8862f0244a2d>:
20010bd2:      	addi	sp, sp, -96
20010bd4:      	sw	ra, 92(sp)
20010bd6:      	sw	a1, 4(sp)
20010bd8:      	sw	a0, 8(sp)
20010bda:      	sw	a3, 12(sp)
20010bdc:      	sw	a1, 68(sp)
20010bde:      	sw	a2, 72(sp)
20010be0:      	sw	a2, 16(sp)
20010be2:      	j	0x20010be4 <core::iter::traits::iterator::Iterator::try_fold::hb0db8862f0244a2d+0x12>
20010be4:      	lw	a0, 4(sp)
20010be6:      	auipc	ra, 0
20010bea:      	jalr	578(ra)
20010bee:      	sw	a0, 20(sp)
20010bf0:      	j	0x20010bf2 <core::iter::traits::iterator::Iterator::try_fold::hb0db8862f0244a2d+0x20>
20010bf2:      	lw	a0, 20(sp)
20010bf4:      	li	a1, 0
20010bf6:      	beq	a0, a1, 0x20010c14 <core::iter::traits::iterator::Iterator::try_fold::hb0db8862f0244a2d+0x42>
20010bfa:      	j	0x20010bfc <core::iter::traits::iterator::Iterator::try_fold::hb0db8862f0244a2d+0x2a>
20010bfc:      	lw	a3, 20(sp)
20010bfe:      	sw	a3, 76(sp)
20010c00:      	lw	a2, 16(sp)
20010c02:      	sw	a2, 56(sp)
20010c04:      	sw	a3, 60(sp)
20010c06:      	addi	a0, sp, 40
20010c08:      	addi	a1, sp, 12
20010c0a:      	auipc	ra, 1
20010c0e:      	jalr	522(ra)
20010c12:      	j	0x20010c2c <core::iter::traits::iterator::Iterator::try_fold::hb0db8862f0244a2d+0x5a>
20010c14:      	j	0x20010c16 <core::iter::traits::iterator::Iterator::try_fold::hb0db8862f0244a2d+0x44>
20010c16:      	lw	a0, 8(sp)
20010c18:      	lw	a1, 16(sp)
20010c1a:      	auipc	ra, 1
20010c1e:      	jalr	-1550(ra)
20010c22:      	j	0x20010c24 <core::iter::traits::iterator::Iterator::try_fold::hb0db8862f0244a2d+0x52>
20010c24:      	j	0x20010c26 <core::iter::traits::iterator::Iterator::try_fold::hb0db8862f0244a2d+0x54>
20010c26:      	lw	ra, 92(sp)
20010c28:      	addi	sp, sp, 96
20010c2a:      	ret
20010c2c:      	addi	a0, sp, 24
20010c2e:      	addi	a1, sp, 40
20010c30:      	auipc	ra, 1
20010c34:      	jalr	-1484(ra)
20010c38:      	j	0x20010c3a <core::iter::traits::iterator::Iterator::try_fold::hb0db8862f0244a2d+0x68>
20010c3a:      	lw	a0, 24(sp)
20010c3c:      	li	a1, 0
20010c3e:      	beq	a0, a1, 0x20010c48 <core::iter::traits::iterator::Iterator::try_fold::hb0db8862f0244a2d+0x76>
20010c42:      	j	0x20010c44 <core::iter::traits::iterator::Iterator::try_fold::hb0db8862f0244a2d+0x72>
20010c44:      	j	0x20010c50 <core::iter::traits::iterator::Iterator::try_fold::hb0db8862f0244a2d+0x7e>
20010c46:      	unimp	
20010c48:      	lw	a0, 28(sp)
20010c4a:      	sw	a0, 88(sp)
20010c4c:      	sw	a0, 16(sp)
20010c4e:      	j	0x20010be4 <core::iter::traits::iterator::Iterator::try_fold::hb0db8862f0244a2d+0x12>
20010c50:      	lw	a0, 8(sp)
20010c52:      	lw	a1, 28(sp)
20010c54:      	lw	a2, 32(sp)
20010c56:      	sw	a1, 80(sp)
20010c58:      	sw	a2, 84(sp)
20010c5a:      	auipc	ra, 1
20010c5e:      	jalr	-1888(ra)
20010c62:      	j	0x20010c64 <core::iter::traits::iterator::Iterator::try_fold::hb0db8862f0244a2d+0x92>
20010c64:      	j	0x20010c26 <core::iter::traits::iterator::Iterator::try_fold::hb0db8862f0244a2d+0x54>

20010c66 <core::slice::iter::Iter<T>::new::h6537431c49fbde40>:
20010c66:      	addi	sp, sp, -96
20010c68:      	sw	ra, 92(sp)
20010c6a:      	sw	a1, 16(sp)
20010c6c:      	sw	a0, 40(sp)
20010c6e:      	sw	a1, 44(sp)
20010c70:      	auipc	ra, 1
20010c74:      	jalr	-1292(ra)
20010c78:      	mv	a1, a0
20010c7a:      	sw	a1, 20(sp)
20010c7c:      	sw	a0, 48(sp)
20010c7e:      	j	0x20010c80 <core::slice::iter::Iter<T>::new::h6537431c49fbde40+0x1a>
20010c80:      	lw	a0, 20(sp)
20010c82:      	auipc	ra, 1
20010c86:      	jalr	-1392(ra)
20010c8a:      	j	0x20010c8c <core::slice::iter::Iter<T>::new::h6537431c49fbde40+0x26>
20010c8c:      	j	0x20010c8e <core::slice::iter::Iter<T>::new::h6537431c49fbde40+0x28>
20010c8e:      	j	0x20010c90 <core::slice::iter::Iter<T>::new::h6537431c49fbde40+0x2a>
20010c90:      	li	a1, 0
20010c92:      	li	a0, 1
20010c94:      	bne	a0, a1, 0x20010cae <core::slice::iter::Iter<T>::new::h6537431c49fbde40+0x48>
20010c98:      	j	0x20010c9a <core::slice::iter::Iter<T>::new::h6537431c49fbde40+0x34>
20010c9a:      	lw	a0, 20(sp)
20010c9c:      	lw	a1, 16(sp)
20010c9e:      	sw	a0, 52(sp)
20010ca0:      	sw	a1, 56(sp)
20010ca2:      	sw	a0, 60(sp)
20010ca4:      	sw	a1, 64(sp)
20010ca6:      	add	a0, a0, a1
20010ca8:      	sw	a0, 12(sp)
20010caa:      	sw	a0, 68(sp)
20010cac:      	j	0x20010cd4 <core::slice::iter::Iter<T>::new::h6537431c49fbde40+0x6e>
20010cae:      	lw	a0, 20(sp)
20010cb0:      	lw	a1, 16(sp)
20010cb2:      	sw	a0, 72(sp)
20010cb4:      	sw	a1, 76(sp)
20010cb6:      	sw	a0, 80(sp)
20010cb8:      	sw	a1, 84(sp)
20010cba:      	slli	a1, a1, 4
20010cbc:      	add	a0, a0, a1
20010cbe:      	sw	a0, 88(sp)
20010cc0:      	sw	a0, 36(sp)
20010cc2:      	j	0x20010cc4 <core::slice::iter::Iter<T>::new::h6537431c49fbde40+0x5e>
20010cc4:      	j	0x20010cc6 <core::slice::iter::Iter<T>::new::h6537431c49fbde40+0x60>
20010cc6:      	lw	a0, 20(sp)
20010cc8:      	auipc	ra, 0
20010ccc:      	jalr	-1604(ra)
20010cd0:      	sw	a0, 8(sp)
20010cd2:      	j	0x20010cda <core::slice::iter::Iter<T>::new::h6537431c49fbde40+0x74>
20010cd4:      	lw	a0, 12(sp)
20010cd6:      	sw	a0, 36(sp)
20010cd8:      	j	0x20010cc6 <core::slice::iter::Iter<T>::new::h6537431c49fbde40+0x60>
20010cda:      	lw	a0, 8(sp)
20010cdc:      	lw	a1, 36(sp)
20010cde:      	sw	a0, 24(sp)
20010ce0:      	sw	a1, 28(sp)
20010ce2:      	lw	ra, 92(sp)
20010ce4:      	addi	sp, sp, 96
20010ce6:      	ret

20010ce8 <<core::slice::iter::Iter<T> as core::clone::Clone>::clone::h535e640d094565d6>:
20010ce8:      	addi	sp, sp, -16
20010cea:      	mv	a1, a0
20010cec:      	sw	a1, 12(sp)
20010cee:      	lw	a0, 0(a1)
20010cf0:      	lw	a1, 4(a1)
20010cf2:      	sw	a0, 0(sp)
20010cf4:      	sw	a1, 4(sp)
20010cf6:      	addi	sp, sp, 16
20010cf8:      	ret

20010cfa <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::advance_by::hc2a2c17e99836d97>:
20010cfa:      	addi	sp, sp, -144
20010cfc:      	sw	ra, 140(sp)
20010cfe:      	sw	a1, 40(sp)
20010d00:      	sw	a0, 44(sp)
20010d02:      	sw	a0, 72(sp)
20010d04:      	sw	a1, 76(sp)
20010d06:      	lw	a0, 0(a0)
20010d08:      	sw	a0, 48(sp)
20010d0a:      	sw	a0, 80(sp)
20010d0c:      	auipc	ra, 0
20010d10:      	jalr	-1662(ra)
20010d14:      	sw	a0, 52(sp)
20010d16:      	j	0x20010d18 <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::advance_by::hc2a2c17e99836d97+0x1e>
20010d18:      	lw	a0, 52(sp)
20010d1a:      	sw	a0, 136(sp)
20010d1c:      	li	a0, 16
20010d1e:      	sw	a0, 84(sp)
20010d20:      	j	0x20010d22 <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::advance_by::hc2a2c17e99836d97+0x28>
20010d22:      	li	a1, 0
20010d24:      	li	a0, 1
20010d26:      	bne	a0, a1, 0x20010d3c <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::advance_by::hc2a2c17e99836d97+0x42>
20010d2a:      	j	0x20010d2c <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::advance_by::hc2a2c17e99836d97+0x32>
20010d2c:      	lw	a0, 44(sp)
20010d2e:      	lw	a0, 4(a0)
20010d30:      	auipc	ra, 1
20010d34:      	jalr	-1582(ra)
20010d38:      	sw	a0, 36(sp)
20010d3a:      	j	0x20010d94 <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::advance_by::hc2a2c17e99836d97+0x9a>
20010d3c:      	lw	a0, 44(sp)
20010d3e:      	lw	a0, 4(a0)
20010d40:      	auipc	ra, 1
20010d44:      	jalr	-1598(ra)
20010d48:      	sw	a0, 32(sp)
20010d4a:      	j	0x20010d4c <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::advance_by::hc2a2c17e99836d97+0x52>
20010d4c:      	lw	a0, 48(sp)
20010d4e:      	auipc	ra, 0
20010d52:      	jalr	-1728(ra)
20010d56:      	sw	a0, 28(sp)
20010d58:      	j	0x20010d5a <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::advance_by::hc2a2c17e99836d97+0x60>
20010d5a:      	lw	a0, 28(sp)
20010d5c:      	auipc	ra, 1
20010d60:      	jalr	-1692(ra)
20010d64:      	sw	a0, 24(sp)
20010d66:      	j	0x20010d68 <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::advance_by::hc2a2c17e99836d97+0x6e>
20010d68:      	lw	a0, 32(sp)
20010d6a:      	lw	a1, 24(sp)
20010d6c:      	sub	a0, a0, a1
20010d6e:      	sw	a0, 20(sp)
20010d70:      	sw	a0, 88(sp)
20010d72:      	sw	a0, 92(sp)
20010d74:      	j	0x20010d76 <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::advance_by::hc2a2c17e99836d97+0x7c>
20010d76:      	lw	a0, 20(sp)
20010d78:      	srli	a0, a0, 4
20010d7a:      	sw	a0, 68(sp)
20010d7c:      	j	0x20010d7e <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::advance_by::hc2a2c17e99836d97+0x84>
20010d7e:      	j	0x20010d80 <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::advance_by::hc2a2c17e99836d97+0x86>
20010d80:      	lw	a1, 40(sp)
20010d82:      	lw	a0, 68(sp)
20010d84:      	auipc	ra, 0
20010d88:      	jalr	622(ra)
20010d8c:      	mv	a1, a0
20010d8e:      	sw	a1, 16(sp)
20010d90:      	sw	a0, 96(sp)
20010d92:      	j	0x20010dc0 <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::advance_by::hc2a2c17e99836d97+0xc6>
20010d94:      	lw	a0, 48(sp)
20010d96:      	auipc	ra, 0
20010d9a:      	jalr	-1800(ra)
20010d9e:      	sw	a0, 12(sp)
20010da0:      	j	0x20010da2 <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::advance_by::hc2a2c17e99836d97+0xa8>
20010da2:      	lw	a0, 12(sp)
20010da4:      	auipc	ra, 1
20010da8:      	jalr	-1764(ra)
20010dac:      	sw	a0, 8(sp)
20010dae:      	j	0x20010db0 <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::advance_by::hc2a2c17e99836d97+0xb6>
20010db0:      	lw	a0, 36(sp)
20010db2:      	lw	a1, 8(sp)
20010db4:      	sw	a0, 100(sp)
20010db6:      	sw	a1, 104(sp)
20010db8:      	sub	a0, a0, a1
20010dba:      	sw	a0, 68(sp)
20010dbc:      	j	0x20010dbe <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::advance_by::hc2a2c17e99836d97+0xc4>
20010dbe:      	j	0x20010d80 <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::advance_by::hc2a2c17e99836d97+0x86>
20010dc0:      	lw	a0, 44(sp)
20010dc2:      	lw	a1, 16(sp)
20010dc4:      	sw	a0, 112(sp)
20010dc6:      	sw	a1, 116(sp)
20010dc8:      	lw	a0, 0(a0)
20010dca:      	auipc	ra, 0
20010dce:      	jalr	-1852(ra)
20010dd2:      	mv	a1, a0
20010dd4:      	lw	a0, 44(sp)
20010dd6:      	sw	a1, 4(sp)
20010dd8:      	sw	a1, 120(sp)
20010dda:      	lw	a0, 0(a0)
20010ddc:      	auipc	ra, 0
20010de0:      	jalr	-1870(ra)
20010de4:      	lw	a1, 16(sp)
20010de6:      	sw	a0, 124(sp)
20010de8:      	sw	a1, 128(sp)
20010dea:      	slli	a1, a1, 4
20010dec:      	add	a0, a0, a1
20010dee:      	sw	a0, 132(sp)
20010df0:      	auipc	ra, 0
20010df4:      	jalr	-1900(ra)
20010df8:      	lw	a2, 44(sp)
20010dfa:      	mv	a1, a0
20010dfc:      	lw	a0, 4(sp)
20010dfe:      	sw	a1, 0(a2)
20010e00:      	sw	a0, 108(sp)
20010e02:      	j	0x20010e04 <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::advance_by::hc2a2c17e99836d97+0x10a>
20010e04:      	lw	a0, 16(sp)
20010e06:      	lw	a1, 40(sp)
20010e08:      	beq	a0, a1, 0x20010e18 <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::advance_by::hc2a2c17e99836d97+0x11e>
20010e0c:      	j	0x20010e0e <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::advance_by::hc2a2c17e99836d97+0x114>
20010e0e:      	lw	a0, 16(sp)
20010e10:      	sw	a0, 60(sp)
20010e12:      	li	a0, 1
20010e14:      	sw	a0, 56(sp)
20010e16:      	j	0x20010e1e <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::advance_by::hc2a2c17e99836d97+0x124>
20010e18:      	li	a0, 0
20010e1a:      	sw	a0, 56(sp)
20010e1c:      	j	0x20010e1e <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::advance_by::hc2a2c17e99836d97+0x124>
20010e1e:      	lw	a0, 56(sp)
20010e20:      	lw	a1, 60(sp)
20010e22:      	lw	ra, 140(sp)
20010e24:      	addi	sp, sp, 144
20010e26:      	ret

20010e28 <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next::h0b2b3affd403e531>:
20010e28:      	addi	sp, sp, -64
20010e2a:      	sw	ra, 60(sp)
20010e2c:      	sw	a0, 16(sp)
20010e2e:      	sw	a0, 28(sp)
20010e30:      	lw	a0, 0(a0)
20010e32:      	auipc	ra, 0
20010e36:      	jalr	-1956(ra)
20010e3a:      	sw	a0, 20(sp)
20010e3c:      	j	0x20010e3e <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next::h0b2b3affd403e531+0x16>
20010e3e:      	lw	a0, 20(sp)
20010e40:      	auipc	ra, 1
20010e44:      	jalr	-1904(ra)
20010e48:      	j	0x20010e4a <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next::h0b2b3affd403e531+0x22>
20010e4a:      	j	0x20010e4c <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next::h0b2b3affd403e531+0x24>
20010e4c:      	j	0x20010e4e <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next::h0b2b3affd403e531+0x26>
20010e4e:      	li	a1, 0
20010e50:      	li	a0, 1
20010e52:      	bne	a0, a1, 0x20010e5a <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next::h0b2b3affd403e531+0x32>
20010e56:      	j	0x20010e58 <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next::h0b2b3affd403e531+0x30>
20010e58:      	j	0x20010e6c <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next::h0b2b3affd403e531+0x44>
20010e5a:      	lw	a0, 16(sp)
20010e5c:      	lw	a0, 4(a0)
20010e5e:      	auipc	ra, 1
20010e62:      	jalr	-1868(ra)
20010e66:      	j	0x20010e68 <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next::h0b2b3affd403e531+0x40>
20010e68:      	j	0x20010e6a <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next::h0b2b3affd403e531+0x42>
20010e6a:      	j	0x20010e6c <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next::h0b2b3affd403e531+0x44>
20010e6c:      	lw	a0, 16(sp)
20010e6e:      	lw	a0, 0(a0)
20010e70:      	auipc	ra, 0
20010e74:      	jalr	-2018(ra)
20010e78:      	sw	a0, 12(sp)
20010e7a:      	j	0x20010e7c <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next::h0b2b3affd403e531+0x54>
20010e7c:      	lw	a0, 12(sp)
20010e7e:      	lw	a1, 16(sp)
20010e80:      	lw	a1, 4(a1)
20010e82:      	beq	a0, a1, 0x20010ece <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next::h0b2b3affd403e531+0xa6>
20010e86:      	j	0x20010e88 <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next::h0b2b3affd403e531+0x60>
20010e88:      	lw	a0, 16(sp)
20010e8a:      	sw	a0, 36(sp)
20010e8c:      	li	a1, 1
20010e8e:      	sw	a1, 0(sp)
20010e90:      	sw	a1, 40(sp)
20010e92:      	lw	a0, 0(a0)
20010e94:      	auipc	ra, 1048575
20010e98:      	jalr	2042(ra)
20010e9c:      	mv	a1, a0
20010e9e:      	lw	a0, 16(sp)
20010ea0:      	sw	a1, 4(sp)
20010ea2:      	sw	a1, 44(sp)
20010ea4:      	lw	a0, 0(a0)
20010ea6:      	auipc	ra, 1048575
20010eaa:      	jalr	2024(ra)
20010eae:      	lw	a1, 0(sp)
20010eb0:      	sw	a0, 48(sp)
20010eb2:      	sw	a1, 52(sp)
20010eb4:      	addi	a0, a0, 16
20010eb6:      	sw	a0, 56(sp)
20010eb8:      	auipc	ra, 1048575
20010ebc:      	jalr	1996(ra)
20010ec0:      	lw	a2, 16(sp)
20010ec2:      	mv	a1, a0
20010ec4:      	lw	a0, 4(sp)
20010ec6:      	sw	a1, 0(a2)
20010ec8:      	sw	a0, 32(sp)
20010eca:      	sw	a0, 8(sp)
20010ecc:      	j	0x20010edc <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next::h0b2b3affd403e531+0xb4>
20010ece:      	li	a0, 0
20010ed0:      	sw	a0, 24(sp)
20010ed2:      	j	0x20010ed4 <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next::h0b2b3affd403e531+0xac>
20010ed4:      	lw	a0, 24(sp)
20010ed6:      	lw	ra, 60(sp)
20010ed8:      	addi	sp, sp, 64
20010eda:      	ret
20010edc:      	lw	a0, 8(sp)
20010ede:      	sw	a0, 24(sp)
20010ee0:      	j	0x20010ed4 <<core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next::h0b2b3affd403e531+0xac>
		...
20010eee:      	unimp	

20010ef0 <machine_trap_vector>:
20010ef0:      	addi	sp, sp, -124
20010ef4:      	sw	ra, 0(sp)
20010ef8:      	sw	sp, 4(sp)
20010efc:      	sw	gp, 8(sp)
20010f00:      	sw	tp, 12(sp)
20010f04:      	sw	t0, 16(sp)
20010f08:      	sw	t1, 20(sp)
20010f0c:      	sw	t2, 24(sp)
20010f10:      	sw	s0, 28(sp)
20010f14:      	sw	s1, 32(sp)
20010f18:      	sw	a0, 36(sp)
20010f1c:      	sw	a1, 40(sp)
20010f20:      	sw	a2, 44(sp)
20010f24:      	sw	a3, 48(sp)
20010f28:      	sw	a4, 52(sp)
20010f2c:      	sw	a5, 56(sp)
20010f30:      	sw	a6, 60(sp)
20010f34:      	sw	a7, 64(sp)
20010f38:      	sw	s2, 68(sp)
20010f3c:      	sw	s3, 72(sp)
20010f40:      	sw	s4, 76(sp)
20010f44:      	sw	s5, 80(sp)
20010f48:      	sw	s6, 84(sp)
20010f4c:      	sw	s7, 88(sp)
20010f50:      	sw	s8, 92(sp)
20010f54:      	sw	s9, 96(sp)
20010f58:      	sw	s10, 100(sp)
20010f5c:      	sw	s11, 104(sp)
20010f60:      	sw	t3, 108(sp)
20010f64:      	sw	t4, 112(sp)
20010f68:      	sw	t5, 116(sp)
20010f6c:      	sw	t6, 120(sp)
20010f70:      	csrr	a0, mstatus
20010f74:      	sw	a0, 124(sp)

20010f78 <core::cmp::Ord::min::h832dcb42c472899c>:
20010f78:      	addi	sp, sp, -32
20010f7a:      	sw	ra, 28(sp)
20010f7c:      	sw	a0, 12(sp)
20010f7e:      	sw	a1, 16(sp)
20010f80:      	li	a0, 1
20010f82:      	sb	a0, 27(sp)
20010f86:      	sb	a0, 26(sp)
20010f8a:      	addi	a0, sp, 12
20010f8c:      	addi	a1, sp, 16
20010f8e:      	auipc	ra, 1
20010f92:      	jalr	-1420(ra)
20010f96:      	sb	a0, 25(sp)
20010f9a:      	j	0x20010f9c <core::cmp::Ord::min::h832dcb42c472899c+0x24>
20010f9c:      	lbu	a0, 25(sp)
20010fa0:      	addi	a0, a0, 1
20010fa2:      	andi	a0, a0, 255
20010fa6:      	li	a1, 2
20010fa8:      	bltu	a0, a1, 0x20010fb2 <core::cmp::Ord::min::h832dcb42c472899c+0x3a>
20010fac:      	j	0x20010fae <core::cmp::Ord::min::h832dcb42c472899c+0x36>
20010fae:      	j	0x20010fbe <core::cmp::Ord::min::h832dcb42c472899c+0x46>
20010fb0:      	unimp	
20010fb2:      	li	a0, 0
20010fb4:      	sb	a0, 27(sp)
20010fb8:      	lw	a0, 12(sp)
20010fba:      	sw	a0, 20(sp)
20010fbc:      	j	0x20010fca <core::cmp::Ord::min::h832dcb42c472899c+0x52>
20010fbe:      	li	a0, 0
20010fc0:      	sb	a0, 26(sp)
20010fc4:      	lw	a0, 16(sp)
20010fc6:      	sw	a0, 20(sp)
20010fc8:      	j	0x20010fca <core::cmp::Ord::min::h832dcb42c472899c+0x52>
20010fca:      	lbu	a0, 26(sp)
20010fce:      	andi	a0, a0, 1
20010fd0:      	li	a1, 0
20010fd2:      	bne	a0, a1, 0x20010fe6 <core::cmp::Ord::min::h832dcb42c472899c+0x6e>
20010fd6:      	j	0x20010fd8 <core::cmp::Ord::min::h832dcb42c472899c+0x60>
20010fd8:      	lbu	a0, 27(sp)
20010fdc:      	andi	a0, a0, 1
20010fde:      	li	a1, 0
20010fe0:      	bne	a0, a1, 0x20010ff0 <core::cmp::Ord::min::h832dcb42c472899c+0x78>
20010fe4:      	j	0x20010fe8 <core::cmp::Ord::min::h832dcb42c472899c+0x70>
20010fe6:      	j	0x20010fd8 <core::cmp::Ord::min::h832dcb42c472899c+0x60>
20010fe8:      	lw	a0, 20(sp)
20010fea:      	lw	ra, 28(sp)
20010fec:      	addi	sp, sp, 32
20010fee:      	ret
20010ff0:      	j	0x20010fe8 <core::cmp::Ord::min::h832dcb42c472899c+0x70>

20010ff2 <core::cmp::min::h49e8c2b669357ef7>:
20010ff2:      	addi	sp, sp, -16
20010ff4:      	sw	ra, 12(sp)
20010ff6:      	sw	a0, 4(sp)
20010ff8:      	sw	a1, 8(sp)
20010ffa:      	auipc	ra, 0
20010ffe:      	jalr	-130(ra)
20011002:      	sw	a0, 0(sp)
20011004:      	j	0x20011006 <core::cmp::min::h49e8c2b669357ef7+0x14>
20011006:      	lw	a0, 0(sp)
20011008:      	lw	ra, 12(sp)
2001100a:      	addi	sp, sp, 16
2001100c:      	ret

2001100e <<i32 as core::iter::range::Step>::forward_unchecked::hfea732adc849ee19>:
2001100e:      	addi	sp, sp, -32
20011010:      	sw	a0, 12(sp)
20011012:      	sw	a1, 16(sp)
20011014:      	sw	a0, 20(sp)
20011016:      	sw	a1, 24(sp)
20011018:      	add	a0, a0, a1
2001101a:      	sw	a0, 8(sp)
2001101c:      	sw	a0, 28(sp)
2001101e:      	j	0x20011020 <<i32 as core::iter::range::Step>::forward_unchecked::hfea732adc849ee19+0x12>
20011020:      	lw	a0, 8(sp)
20011022:      	addi	sp, sp, 32
20011024:      	ret

20011026 <core::option::Option<T>::is_none::ha66ee3cd73d6bf2d>:
20011026:      	addi	sp, sp, -16
20011028:      	sw	ra, 12(sp)
2001102a:      	sw	a0, 8(sp)
2001102c:      	auipc	ra, 0
20011030:      	jalr	24(ra)
20011034:      	sw	a0, 4(sp)
20011036:      	j	0x20011038 <core::option::Option<T>::is_none::ha66ee3cd73d6bf2d+0x12>
20011038:      	lw	a0, 4(sp)
2001103a:      	xori	a0, a0, 1
2001103e:      	lw	ra, 12(sp)
20011040:      	addi	sp, sp, 16
20011042:      	ret

20011044 <core::option::Option<T>::is_some::h47ebaf55a80922c5>:
20011044:      	addi	sp, sp, -16
20011046:      	sw	a0, 12(sp)
20011048:      	lw	a0, 0(a0)
2001104a:      	li	a1, 0
2001104c:      	beq	a0, a1, 0x2001105a <core::option::Option<T>::is_some::h47ebaf55a80922c5+0x16>
20011050:      	j	0x20011052 <core::option::Option<T>::is_some::h47ebaf55a80922c5+0xe>
20011052:      	li	a0, 1
20011054:      	sb	a0, 11(sp)
20011058:      	j	0x20011062 <core::option::Option<T>::is_some::h47ebaf55a80922c5+0x1e>
2001105a:      	li	a0, 0
2001105c:      	sb	a0, 11(sp)
20011060:      	j	0x20011062 <core::option::Option<T>::is_some::h47ebaf55a80922c5+0x1e>
20011062:      	lbu	a0, 11(sp)
20011066:      	addi	sp, sp, 16
20011068:      	ret

2001106a <<core::option::Option<T> as core::ops::try_trait::Try>::branch::h89687787f8d9514d>:
2001106a:      	addi	sp, sp, -16
2001106c:      	sb	a0, 6(sp)
20011070:      	li	a1, 0
20011072:      	beq	a0, a1, 0x2001107c <<core::option::Option<T> as core::ops::try_trait::Try>::branch::h89687787f8d9514d+0x12>
20011076:      	j	0x20011078 <<core::option::Option<T> as core::ops::try_trait::Try>::branch::h89687787f8d9514d+0xe>
20011078:      	j	0x20011084 <<core::option::Option<T> as core::ops::try_trait::Try>::branch::h89687787f8d9514d+0x1a>
2001107a:      	unimp	
2001107c:      	li	a0, 1
2001107e:      	sb	a0, 7(sp)
20011082:      	j	0x2001108c <<core::option::Option<T> as core::ops::try_trait::Try>::branch::h89687787f8d9514d+0x22>
20011084:      	li	a0, 0
20011086:      	sb	a0, 7(sp)
2001108a:      	j	0x2001108c <<core::option::Option<T> as core::ops::try_trait::Try>::branch::h89687787f8d9514d+0x22>
2001108c:      	lbu	a0, 7(sp)
20011090:      	addi	sp, sp, 16
20011092:      	ret

20011094 <<core::option::Option<T> as core::ops::try_trait::FromResidual>::from_residual::hb6d3f5fd63dfbcf2>:
20011094:      	addi	sp, sp, -16
20011096:      	li	a0, 0
20011098:      	sw	a0, 4(sp)
2001109a:      	addi	sp, sp, 16
2001109c:      	ret

2001109e <yarr::timer::Timer<C>::new::h7f01d5fb7e5a3ce8>:
2001109e:      	addi	sp, sp, -112
200110a0:      	sw	ra, 108(sp)
200110a2:      	sw	a0, 44(sp)
200110a4:      	mv	a0, a2
200110a6:      	sw	a0, 48(sp)
200110a8:      	mv	a0, a1
200110aa:      	sw	a0, 52(sp)
200110ac:      	sw	a2, 68(sp)
200110ae:      	sw	a1, 64(sp)
200110b0:      	auipc	ra, 0
200110b4:      	jalr	1950(ra)
200110b8:      	mv	a2, a1
200110ba:      	sw	a2, 56(sp)
200110bc:      	mv	a2, a0
200110be:      	sw	a2, 60(sp)
200110c0:      	sw	a1, 76(sp)
200110c2:      	sw	a0, 72(sp)
200110c4:      	j	0x200110c6 <yarr::timer::Timer<C>::new::h7f01d5fb7e5a3ce8+0x28>
200110c6:      	lw	a0, 52(sp)
200110c8:      	lw	a1, 48(sp)
200110ca:      	or	a0, a0, a1
200110cc:      	li	a1, 0
200110ce:      	beq	a0, a1, 0x20011120 <yarr::timer::Timer<C>::new::h7f01d5fb7e5a3ce8+0x82>
200110d2:      	j	0x200110d4 <yarr::timer::Timer<C>::new::h7f01d5fb7e5a3ce8+0x36>
200110d4:      	lw	a3, 48(sp)
200110d6:      	lw	a2, 52(sp)
200110d8:      	lw	a1, 56(sp)
200110da:      	lw	a0, 60(sp)
200110dc:      	auipc	ra, 2
200110e0:      	jalr	-1788(ra)
200110e4:      	sw	a0, 16(sp)
200110e6:      	mv	a4, a1
200110e8:      	lw	a1, 16(sp)
200110ea:      	mv	a0, a4
200110ec:      	sw	a0, 20(sp)
200110ee:      	mv	a0, a1
200110f0:      	sw	a0, 24(sp)
200110f2:      	sw	a4, 84(sp)
200110f4:      	sw	a1, 80(sp)
200110f6:      	addi	a0, a1, 1
200110fa:      	sw	a0, 28(sp)
200110fc:      	sltu	a2, a0, a1
20011100:      	add	a3, a4, a2
20011104:      	sw	a3, 32(sp)
20011106:      	sltu	a3, a3, a4
2001110a:      	sw	a3, 36(sp)
2001110c:      	sw	a2, 40(sp)
2001110e:      	bgeu	a0, a1, 0x20011116 <yarr::timer::Timer<C>::new::h7f01d5fb7e5a3ce8+0x78>
20011112:      	lw	a0, 36(sp)
20011114:      	sw	a0, 40(sp)
20011116:      	lw	a0, 40(sp)
20011118:      	li	a1, 0
2001111a:      	bne	a0, a1, 0x20011152 <yarr::timer::Timer<C>::new::h7f01d5fb7e5a3ce8+0xb4>
2001111e:      	j	0x2001113c <yarr::timer::Timer<C>::new::h7f01d5fb7e5a3ce8+0x9e>
20011120:      	lui	a0, 131091
20011124:      	addi	a0, a0, -992
20011128:      	lui	a1, 131091
2001112c:      	addi	a2, a1, -1016
20011130:      	li	a1, 25
20011132:      	auipc	ra, 1
20011136:      	jalr	-470(ra)
2001113a:      	unimp	
2001113c:      	lw	a0, 52(sp)
2001113e:      	lw	a1, 48(sp)
20011140:      	lw	a2, 32(sp)
20011142:      	lw	a3, 28(sp)
20011144:      	sw	a3, 88(sp)
20011146:      	sw	a2, 92(sp)
20011148:      	or	a0, a0, a1
2001114a:      	li	a1, 0
2001114c:      	beq	a0, a1, 0x200111b6 <yarr::timer::Timer<C>::new::h7f01d5fb7e5a3ce8+0x118>
20011150:      	j	0x2001116e <yarr::timer::Timer<C>::new::h7f01d5fb7e5a3ce8+0xd0>
20011152:      	lui	a0, 131091
20011156:      	addi	a0, a0, -944
2001115a:      	lui	a1, 131091
2001115e:      	addi	a2, a1, -964
20011162:      	li	a1, 28
20011164:      	auipc	ra, 1
20011168:      	jalr	-520(ra)
2001116c:      	unimp	
2001116e:      	lw	a3, 48(sp)
20011170:      	lw	a2, 52(sp)
20011172:      	lw	a1, 56(sp)
20011174:      	lw	a0, 60(sp)
20011176:      	auipc	ra, 1
2001117a:      	jalr	1102(ra)
2001117e:      	lw	a2, 52(sp)
20011180:      	mv	a3, a0
20011182:      	mv	a0, a1
20011184:      	lw	a1, 48(sp)
20011186:      	sltu	a4, a2, a3
2001118a:      	sub	a0, a1, a0
2001118e:      	sub	a0, a0, a4
20011190:      	sw	a0, 0(sp)
20011192:      	sltu	a4, a1, a0
20011196:      	sw	a4, 4(sp)
20011198:      	sub	a3, a2, a3
2001119c:      	sw	a3, 8(sp)
2001119e:      	sltu	a2, a2, a3
200111a2:      	sw	a2, 12(sp)
200111a4:      	beq	a0, a1, 0x200111ac <yarr::timer::Timer<C>::new::h7f01d5fb7e5a3ce8+0x10e>
200111a8:      	lw	a0, 4(sp)
200111aa:      	sw	a0, 12(sp)
200111ac:      	lw	a0, 12(sp)
200111ae:      	li	a1, 0
200111b0:      	bne	a0, a1, 0x2001120c <yarr::timer::Timer<C>::new::h7f01d5fb7e5a3ce8+0x16e>
200111b4:      	j	0x200111d4 <yarr::timer::Timer<C>::new::h7f01d5fb7e5a3ce8+0x136>
200111b6:      	lui	a0, 131091
200111ba:      	addi	a0, a0, -896
200111be:      	lui	a1, 131091
200111c2:      	addi	a2, a1, -916
200111c6:      	li	a1, 57
200111ca:      	auipc	ra, 1
200111ce:      	jalr	-622(ra)
200111d2:      	unimp	
200111d4:      	lw	a0, 48(sp)
200111d6:      	lw	a1, 44(sp)
200111d8:      	lw	a2, 52(sp)
200111da:      	lw	a3, 0(sp)
200111dc:      	lw	a4, 8(sp)
200111de:      	lw	a5, 32(sp)
200111e0:      	lw	a6, 28(sp)
200111e2:      	lw	a7, 20(sp)
200111e4:      	lw	t0, 24(sp)
200111e6:      	sw	a4, 96(sp)
200111e8:      	sw	a3, 100(sp)
200111ea:      	sw	t0, 0(a1)
200111ee:      	sw	a7, 4(a1)
200111f2:      	sw	a6, 8(a1)
200111f6:      	sw	a5, 12(a1)
200111f8:      	sw	a4, 16(a1)
200111fa:      	sw	a3, 20(a1)
200111fc:      	li	a3, 0
200111fe:      	sw	a3, 24(a1)
20011200:      	sw	a3, 28(a1)
20011202:      	sw	a2, 32(a1)
20011204:      	sw	a0, 36(a1)
20011206:      	lw	ra, 108(sp)
20011208:      	addi	sp, sp, 112
2001120a:      	ret
2001120c:      	lui	a0, 131091
20011210:      	addi	a0, a0, -816
20011214:      	lui	a1, 131091
20011218:      	addi	a2, a1, -836
2001121c:      	li	a1, 33
20011220:      	auipc	ra, 1
20011224:      	jalr	-708(ra)
20011228:      	unimp	

2001122a <yarr::timer::Timer<C>::set::h694f77aa0ef2eb24>:
2001122a:      	addi	sp, sp, -80
2001122c:      	sw	ra, 76(sp)
2001122e:      	sw	a0, 60(sp)
20011230:      	sw	a0, 72(sp)
20011232:      	auipc	ra, 0
20011236:      	jalr	1570(ra)
2001123a:      	sw	a1, 68(sp)
2001123c:      	sw	a0, 64(sp)
2001123e:      	j	0x20011240 <yarr::timer::Timer<C>::set::h694f77aa0ef2eb24+0x16>
20011240:      	lw	a1, 60(sp)
20011242:      	lw	a2, 24(a1)
20011244:      	lw	a0, 28(a1)
20011246:      	lw	a3, 16(a1)
20011248:      	lw	a1, 20(a1)
2001124a:      	sltu	a4, a0, a1
2001124e:      	xori	a4, a4, 1
20011252:      	sw	a4, 52(sp)
20011254:      	sltu	a2, a2, a3
20011258:      	xori	a2, a2, 1
2001125c:      	sw	a2, 56(sp)
2001125e:      	beq	a0, a1, 0x20011266 <yarr::timer::Timer<C>::set::h694f77aa0ef2eb24+0x3c>
20011262:      	lw	a0, 52(sp)
20011264:      	sw	a0, 56(sp)
20011266:      	lw	a0, 56(sp)
20011268:      	li	a1, 0
2001126a:      	bne	a0, a1, 0x200112a2 <yarr::timer::Timer<C>::set::h694f77aa0ef2eb24+0x78>
2001126e:      	j	0x20011270 <yarr::timer::Timer<C>::set::h694f77aa0ef2eb24+0x46>
20011270:      	lw	a0, 60(sp)
20011272:      	lw	a2, 0(a0)
20011274:      	lw	a0, 4(a0)
20011276:      	lw	a3, 64(sp)
20011278:      	lw	a1, 68(sp)
2001127a:      	add	a0, a0, a1
2001127c:      	add	a2, a2, a3
2001127e:      	sw	a2, 36(sp)
20011280:      	sltu	a2, a2, a3
20011284:      	add	a0, a0, a2
20011286:      	sw	a0, 40(sp)
20011288:      	sltu	a3, a0, a1
2001128c:      	sw	a3, 44(sp)
2001128e:      	sw	a2, 48(sp)
20011290:      	beq	a0, a1, 0x20011298 <yarr::timer::Timer<C>::set::h694f77aa0ef2eb24+0x6e>
20011294:      	lw	a0, 44(sp)
20011296:      	sw	a0, 48(sp)
20011298:      	lw	a0, 48(sp)
2001129a:      	li	a1, 0
2001129c:      	bne	a0, a1, 0x20011334 <yarr::timer::Timer<C>::set::h694f77aa0ef2eb24+0x10a>
200112a0:      	j	0x2001132a <yarr::timer::Timer<C>::set::h694f77aa0ef2eb24+0x100>
200112a2:      	lw	a0, 60(sp)
200112a4:      	lw	a2, 8(a0)
200112a6:      	lw	a0, 12(a0)
200112a8:      	lw	a3, 64(sp)
200112aa:      	lw	a1, 68(sp)
200112ac:      	add	a0, a0, a1
200112ae:      	add	a2, a2, a3
200112b0:      	sw	a2, 20(sp)
200112b2:      	sltu	a2, a2, a3
200112b6:      	add	a0, a0, a2
200112b8:      	sw	a0, 24(sp)
200112ba:      	sltu	a3, a0, a1
200112be:      	sw	a3, 28(sp)
200112c0:      	sw	a2, 32(sp)
200112c2:      	beq	a0, a1, 0x200112ca <yarr::timer::Timer<C>::set::h694f77aa0ef2eb24+0xa0>
200112c6:      	lw	a0, 28(sp)
200112c8:      	sw	a0, 32(sp)
200112ca:      	lw	a0, 32(sp)
200112cc:      	li	a1, 0
200112ce:      	bne	a0, a1, 0x200112de <yarr::timer::Timer<C>::set::h694f77aa0ef2eb24+0xb4>
200112d2:      	j	0x200112d4 <yarr::timer::Timer<C>::set::h694f77aa0ef2eb24+0xaa>
200112d4:      	lw	a0, 24(sp)
200112d6:      	lw	a1, 20(sp)
200112d8:      	sw	a1, 64(sp)
200112da:      	sw	a0, 68(sp)
200112dc:      	j	0x200112fa <yarr::timer::Timer<C>::set::h694f77aa0ef2eb24+0xd0>
200112de:      	lui	a0, 131091
200112e2:      	addi	a0, a0, -944
200112e6:      	lui	a1, 131091
200112ea:      	addi	a2, a1, -780
200112ee:      	li	a1, 28
200112f0:      	auipc	ra, 1
200112f4:      	jalr	-916(ra)
200112f8:      	unimp	
200112fa:      	lw	a0, 60(sp)
200112fc:      	lw	a4, 28(a0)
200112fe:      	lw	a1, 24(a0)
20011300:      	addi	a0, a1, 1
20011304:      	sw	a0, 4(sp)
20011306:      	sltu	a2, a0, a1
2001130a:      	add	a3, a4, a2
2001130e:      	sw	a3, 8(sp)
20011310:      	sltu	a3, a3, a4
20011314:      	sw	a3, 12(sp)
20011316:      	sw	a2, 16(sp)
20011318:      	bgeu	a0, a1, 0x20011320 <yarr::timer::Timer<C>::set::h694f77aa0ef2eb24+0xf6>
2001131c:      	lw	a0, 12(sp)
2001131e:      	sw	a0, 16(sp)
20011320:      	lw	a0, 16(sp)
20011322:      	li	a1, 0
20011324:      	bne	a0, a1, 0x2001136c <yarr::timer::Timer<C>::set::h694f77aa0ef2eb24+0x142>
20011328:      	j	0x20011350 <yarr::timer::Timer<C>::set::h694f77aa0ef2eb24+0x126>
2001132a:      	lw	a0, 40(sp)
2001132c:      	lw	a1, 36(sp)
2001132e:      	sw	a1, 64(sp)
20011330:      	sw	a0, 68(sp)
20011332:      	j	0x200112fa <yarr::timer::Timer<C>::set::h694f77aa0ef2eb24+0xd0>
20011334:      	lui	a0, 131091
20011338:      	addi	a0, a0, -944
2001133c:      	lui	a1, 131091
20011340:      	addi	a2, a1, -764
20011344:      	li	a1, 28
20011346:      	auipc	ra, 1
2001134a:      	jalr	-1002(ra)
2001134e:      	unimp	
20011350:      	lw	a0, 4(sp)
20011352:      	lw	a1, 8(sp)
20011354:      	lw	a3, 60(sp)
20011356:      	sw	a0, 24(a3)
20011358:      	sw	a1, 28(a3)
2001135a:      	lw	a2, 32(a3)
2001135c:      	lw	a3, 36(a3)
2001135e:      	xor	a1, a1, a3
20011360:      	xor	a0, a0, a2
20011362:      	or	a0, a0, a1
20011364:      	li	a1, 0
20011366:      	beq	a0, a1, 0x20011396 <yarr::timer::Timer<C>::set::h694f77aa0ef2eb24+0x16c>
2001136a:      	j	0x20011388 <yarr::timer::Timer<C>::set::h694f77aa0ef2eb24+0x15e>
2001136c:      	lui	a0, 131091
20011370:      	addi	a0, a0, -944
20011374:      	lui	a1, 131091
20011378:      	addi	a2, a1, -748
2001137c:      	li	a1, 28
2001137e:      	auipc	ra, 1
20011382:      	jalr	-1058(ra)
20011386:      	unimp	
20011388:      	lw	a1, 68(sp)
2001138a:      	lw	a0, 64(sp)
2001138c:      	auipc	ra, 0
20011390:      	jalr	1298(ra)
20011394:      	j	0x200113a0 <yarr::timer::Timer<C>::set::h694f77aa0ef2eb24+0x176>
20011396:      	lw	a1, 60(sp)
20011398:      	li	a0, 0
2001139a:      	sw	a0, 28(a1)
2001139c:      	sw	a0, 24(a1)
2001139e:      	j	0x20011388 <yarr::timer::Timer<C>::set::h694f77aa0ef2eb24+0x15e>
200113a0:      	lw	ra, 76(sp)
200113a2:      	addi	sp, sp, 80
200113a4:      	ret

200113a6 <core::intrinsics::write_bytes::h22230e4edcdf4397>:
200113a6:      	addi	sp, sp, -16
200113a8:      	sw	ra, 12(sp)
200113aa:      	sw	a0, 0(sp)
200113ac:      	sb	a1, 7(sp)
200113b0:      	sw	a2, 8(sp)
200113b2:      	slli	a2, a2, 2
200113b4:      	auipc	ra, 1
200113b8:      	jalr	520(ra)
200113bc:      	j	0x200113be <core::intrinsics::write_bytes::h22230e4edcdf4397+0x18>
200113be:      	lw	ra, 12(sp)
200113c0:      	addi	sp, sp, 16
200113c2:      	ret

200113c4 <core::fmt::Arguments::new_v1::h386295ce8576c116>:
200113c4:      	addi	sp, sp, -80
200113c6:      	sw	ra, 76(sp)
200113c8:      	sw	a4, 0(sp)
200113ca:      	sw	a3, 4(sp)
200113cc:      	sw	a2, 8(sp)
200113ce:      	sw	a1, 12(sp)
200113d0:      	sw	a0, 16(sp)
200113d2:      	sw	a1, 56(sp)
200113d4:      	sw	a2, 60(sp)
200113d6:      	sw	a3, 64(sp)
200113d8:      	sw	a4, 68(sp)
200113da:      	bltu	a2, a4, 0x200113f0 <core::fmt::Arguments::new_v1::h386295ce8576c116+0x2c>
200113de:      	j	0x200113e0 <core::fmt::Arguments::new_v1::h386295ce8576c116+0x1c>
200113e0:      	lw	a1, 8(sp)
200113e2:      	lw	a0, 0(sp)
200113e4:      	addi	a0, a0, 1
200113e6:      	sltu	a0, a0, a1
200113ea:      	sb	a0, 23(sp)
200113ee:      	j	0x200113f8 <core::fmt::Arguments::new_v1::h386295ce8576c116+0x34>
200113f0:      	li	a0, 1
200113f2:      	sb	a0, 23(sp)
200113f6:      	j	0x200113f8 <core::fmt::Arguments::new_v1::h386295ce8576c116+0x34>
200113f8:      	lbu	a0, 23(sp)
200113fc:      	andi	a0, a0, 1
200113fe:      	li	a1, 0
20011400:      	bne	a0, a1, 0x2001142a <core::fmt::Arguments::new_v1::h386295ce8576c116+0x66>
20011404:      	j	0x20011406 <core::fmt::Arguments::new_v1::h386295ce8576c116+0x42>
20011406:      	lw	a0, 0(sp)
20011408:      	lw	a1, 16(sp)
2001140a:      	lw	a2, 4(sp)
2001140c:      	lw	a3, 8(sp)
2001140e:      	lw	a4, 12(sp)
20011410:      	li	a5, 0
20011412:      	sw	a5, 48(sp)
20011414:      	sw	a4, 0(a1)
20011416:      	sw	a3, 4(a1)
20011418:      	lw	a4, 48(sp)
2001141a:      	lw	a3, 52(sp)
2001141c:      	sw	a4, 8(a1)
2001141e:      	sw	a3, 12(a1)
20011420:      	sw	a2, 16(a1)
20011422:      	sw	a0, 20(a1)
20011424:      	lw	ra, 76(sp)
20011426:      	addi	sp, sp, 80
20011428:      	ret
2001142a:      	lui	a0, 131091
2001142e:      	addi	a1, a0, -720
20011432:      	lui	a0, 131091
20011436:      	addi	a3, a0, -712
2001143a:      	addi	a0, sp, 24
2001143c:      	li	a2, 1
2001143e:      	li	a4, 0
20011440:      	auipc	ra, 0
20011444:      	jalr	-124(ra)
20011448:      	j	0x2001144a <core::fmt::Arguments::new_v1::h386295ce8576c116+0x86>
2001144a:      	lui	a0, 131091
2001144e:      	addi	a1, a0, -636
20011452:      	addi	a0, sp, 24
20011454:      	auipc	ra, 1
20011458:      	jalr	-1164(ra)
2001145c:      	unimp	

2001145e <core::ptr::metadata::from_raw_parts::h33104b9fb78f50e5>:
2001145e:      	addi	sp, sp, -32
20011460:      	sw	a0, 20(sp)
20011462:      	sw	a0, 16(sp)
20011464:      	sw	a0, 8(sp)
20011466:      	addi	sp, sp, 32
20011468:      	ret

2001146a <core::ptr::metadata::from_raw_parts_mut::h58da8586d936fb40>:
2001146a:      	addi	sp, sp, -32
2001146c:      	sw	a0, 20(sp)
2001146e:      	sw	a0, 16(sp)
20011470:      	sw	a0, 8(sp)
20011472:      	addi	sp, sp, 32
20011474:      	ret

20011476 <core::ptr::read_volatile::hbffa1f2e1a3205d1>:
20011476:      	addi	sp, sp, -16
20011478:      	sw	a0, 8(sp)
2001147a:      	lw	a0, 0(a0)
2001147c:      	sw	a0, 4(sp)
2001147e:      	sw	a0, 12(sp)
20011480:      	j	0x20011482 <core::ptr::read_volatile::hbffa1f2e1a3205d1+0xc>
20011482:      	lw	a0, 4(sp)
20011484:      	addi	sp, sp, 16
20011486:      	ret

20011488 <core::ptr::write_volatile::he9e4cc2b81ae45c2>:
20011488:      	addi	sp, sp, -16
2001148a:      	sw	a0, 8(sp)
2001148c:      	sw	a1, 12(sp)
2001148e:      	sw	a1, 0(a0)
20011490:      	j	0x20011492 <core::ptr::write_volatile::he9e4cc2b81ae45c2+0xa>
20011492:      	addi	sp, sp, 16
20011494:      	ret

20011496 <core::ptr::read::h004977a8706247a5>:
20011496:      	addi	sp, sp, -32
20011498:      	sw	a0, 4(sp)
2001149a:      	sw	a0, 12(sp)
2001149c:      	lw	a0, 24(sp)
2001149e:      	sw	a0, 8(sp)
200114a0:      	j	0x200114a2 <core::ptr::read::h004977a8706247a5+0xc>
200114a2:      	addi	a0, sp, 8
200114a4:      	sw	a0, 16(sp)
200114a6:      	j	0x200114a8 <core::ptr::read::h004977a8706247a5+0x12>
200114a8:      	lw	a0, 4(sp)
200114aa:      	lw	a0, 0(a0)
200114ac:      	sw	a0, 0(sp)
200114ae:      	sw	a0, 8(sp)
200114b0:      	sw	a0, 20(sp)
200114b2:      	sw	a0, 28(sp)
200114b4:      	j	0x200114b6 <core::ptr::read::h004977a8706247a5+0x20>
200114b6:      	lw	a0, 0(sp)
200114b8:      	addi	sp, sp, 32
200114ba:      	ret

200114bc <core::ptr::read::h39f6e4429236f23c>:
200114bc:      	addi	sp, sp, -32
200114be:      	sw	a0, 4(sp)
200114c0:      	sw	a0, 12(sp)
200114c2:      	lw	a0, 24(sp)
200114c4:      	sw	a0, 8(sp)
200114c6:      	j	0x200114c8 <core::ptr::read::h39f6e4429236f23c+0xc>
200114c8:      	addi	a0, sp, 8
200114ca:      	sw	a0, 16(sp)
200114cc:      	j	0x200114ce <core::ptr::read::h39f6e4429236f23c+0x12>
200114ce:      	lw	a0, 4(sp)
200114d0:      	lw	a0, 0(a0)
200114d2:      	sw	a0, 0(sp)
200114d4:      	sw	a0, 8(sp)
200114d6:      	sw	a0, 20(sp)
200114d8:      	sw	a0, 28(sp)
200114da:      	j	0x200114dc <core::ptr::read::h39f6e4429236f23c+0x20>
200114dc:      	lw	a0, 0(sp)
200114de:      	addi	sp, sp, 32
200114e0:      	ret

200114e2 <core::ptr::write::h7da4b97229b6e6b7>:
200114e2:      	addi	sp, sp, -16
200114e4:      	sw	a1, 8(sp)
200114e6:      	sw	a0, 12(sp)
200114e8:      	sw	a1, 0(a0)
200114ea:      	addi	sp, sp, 16
200114ec:      	ret

200114ee <core::ptr::write::hfca9713e15c75450>:
200114ee:      	addi	sp, sp, -16
200114f0:      	sw	a1, 8(sp)
200114f2:      	sw	a0, 12(sp)
200114f4:      	sw	a1, 0(a0)
200114f6:      	addi	sp, sp, 16
200114f8:      	ret

200114fa <<core::ops::control_flow::ControlFlow<B,C> as core::ops::try_trait::FromResidual>::from_residual::h2d8169195317cc28>:
200114fa:      	addi	sp, sp, -32
200114fc:      	sw	a1, 12(sp)
200114fe:      	mv	a1, a0
20011500:      	lw	a0, 12(sp)
20011502:      	sw	a0, 16(sp)
20011504:      	sw	a2, 20(sp)
20011506:      	sw	a0, 24(sp)
20011508:      	sw	a2, 28(sp)
2001150a:      	sw	a0, 4(a1)
2001150c:      	sw	a2, 8(a1)
2001150e:      	li	a0, 1
20011510:      	sw	a0, 0(a1)
20011512:      	addi	sp, sp, 32
20011514:      	ret

20011516 <<core::ops::control_flow::ControlFlow<B,C> as core::ops::try_trait::FromResidual>::from_residual::h98a193a4bdb0e1e9>:
20011516:      	addi	sp, sp, -32
20011518:      	mv	a1, a0
2001151a:      	sw	a1, 12(sp)
2001151c:      	sw	a1, 28(sp)
2001151e:      	sw	a1, 20(sp)
20011520:      	li	a0, 1
20011522:      	sw	a0, 16(sp)
20011524:      	addi	sp, sp, 32
20011526:      	ret

20011528 <core::ops::control_flow::ControlFlow<B,C>::break_value::h005829b3d3d5ce9b>:
20011528:      	addi	sp, sp, -32
2001152a:      	sw	a0, 8(sp)
2001152c:      	sw	a1, 12(sp)
2001152e:      	li	a1, 0
20011530:      	beq	a0, a1, 0x2001153a <core::ops::control_flow::ControlFlow<B,C>::break_value::h005829b3d3d5ce9b+0x12>
20011534:      	j	0x20011536 <core::ops::control_flow::ControlFlow<B,C>::break_value::h005829b3d3d5ce9b+0xe>
20011536:      	j	0x20011540 <core::ops::control_flow::ControlFlow<B,C>::break_value::h005829b3d3d5ce9b+0x18>
20011538:      	unimp	
2001153a:      	li	a0, 0
2001153c:      	sw	a0, 16(sp)
2001153e:      	j	0x2001154c <core::ops::control_flow::ControlFlow<B,C>::break_value::h005829b3d3d5ce9b+0x24>
20011540:      	lw	a0, 12(sp)
20011542:      	sw	a0, 28(sp)
20011544:      	sw	a0, 20(sp)
20011546:      	li	a0, 1
20011548:      	sw	a0, 16(sp)
2001154a:      	j	0x2001154c <core::ops::control_flow::ControlFlow<B,C>::break_value::h005829b3d3d5ce9b+0x24>
2001154c:      	lw	a0, 8(sp)
2001154e:      	li	a1, 0
20011550:      	beq	a0, a1, 0x2001155e <core::ops::control_flow::ControlFlow<B,C>::break_value::h005829b3d3d5ce9b+0x36>
20011554:      	j	0x20011556 <core::ops::control_flow::ControlFlow<B,C>::break_value::h005829b3d3d5ce9b+0x2e>
20011556:      	lw	a0, 16(sp)
20011558:      	lw	a1, 20(sp)
2001155a:      	addi	sp, sp, 32
2001155c:      	ret
2001155e:      	j	0x20011556 <core::ops::control_flow::ControlFlow<B,C>::break_value::h005829b3d3d5ce9b+0x2e>

20011560 <core::ops::control_flow::ControlFlow<R,<R as core::ops::try_trait::Try>::Output>::from_try::h7fde5495c1993a55>:
20011560:      	addi	sp, sp, -64
20011562:      	sw	ra, 60(sp)
20011564:      	sw	a2, 20(sp)
20011566:      	mv	a2, a1
20011568:      	lw	a1, 20(sp)
2001156a:      	sw	a2, 24(sp)
2001156c:      	mv	a2, a0
2001156e:      	lw	a0, 24(sp)
20011570:      	sw	a2, 28(sp)
20011572:      	sw	a0, 40(sp)
20011574:      	sw	a1, 44(sp)
20011576:      	auipc	ra, 0
2001157a:      	jalr	186(ra)
2001157e:      	sw	a0, 32(sp)
20011580:      	sw	a1, 36(sp)
20011582:      	j	0x20011584 <core::ops::control_flow::ControlFlow<R,<R as core::ops::try_trait::Try>::Output>::from_try::h7fde5495c1993a55+0x24>
20011584:      	lw	a0, 32(sp)
20011586:      	li	a1, 0
20011588:      	beq	a0, a1, 0x20011592 <core::ops::control_flow::ControlFlow<R,<R as core::ops::try_trait::Try>::Output>::from_try::h7fde5495c1993a55+0x32>
2001158c:      	j	0x2001158e <core::ops::control_flow::ControlFlow<R,<R as core::ops::try_trait::Try>::Output>::from_try::h7fde5495c1993a55+0x2e>
2001158e:      	j	0x200115a0 <core::ops::control_flow::ControlFlow<R,<R as core::ops::try_trait::Try>::Output>::from_try::h7fde5495c1993a55+0x40>
20011590:      	unimp	
20011592:      	lw	a1, 28(sp)
20011594:      	lw	a0, 36(sp)
20011596:      	sw	a0, 56(sp)
20011598:      	sw	a0, 4(a1)
2001159a:      	li	a0, 0
2001159c:      	sw	a0, 0(a1)
2001159e:      	j	0x200115c2 <core::ops::control_flow::ControlFlow<R,<R as core::ops::try_trait::Try>::Output>::from_try::h7fde5495c1993a55+0x62>
200115a0:      	lw	a0, 36(sp)
200115a2:      	sw	a0, 52(sp)
200115a4:      	auipc	ra, 0
200115a8:      	jalr	-142(ra)
200115ac:      	sw	a0, 12(sp)
200115ae:      	sw	a1, 16(sp)
200115b0:      	j	0x200115b2 <core::ops::control_flow::ControlFlow<R,<R as core::ops::try_trait::Try>::Output>::from_try::h7fde5495c1993a55+0x52>
200115b2:      	lw	a1, 28(sp)
200115b4:      	lw	a0, 16(sp)
200115b6:      	lw	a2, 12(sp)
200115b8:      	sw	a2, 4(a1)
200115ba:      	sw	a0, 8(a1)
200115bc:      	li	a0, 1
200115be:      	sw	a0, 0(a1)
200115c0:      	j	0x200115c2 <core::ops::control_flow::ControlFlow<R,<R as core::ops::try_trait::Try>::Output>::from_try::h7fde5495c1993a55+0x62>
200115c2:      	lw	ra, 60(sp)
200115c4:      	addi	sp, sp, 64
200115c6:      	ret

200115c8 <core::ops::control_flow::ControlFlow<R,<R as core::ops::try_trait::Try>::Output>::into_try::h9e3c4bacb3520ee0>:
200115c8:      	addi	sp, sp, -32
200115ca:      	sw	ra, 28(sp)
200115cc:      	sw	a0, 4(sp)
200115ce:      	lw	a0, 0(a0)
200115d0:      	li	a1, 0
200115d2:      	beq	a0, a1, 0x200115dc <core::ops::control_flow::ControlFlow<R,<R as core::ops::try_trait::Try>::Output>::into_try::h9e3c4bacb3520ee0+0x14>
200115d6:      	j	0x200115d8 <core::ops::control_flow::ControlFlow<R,<R as core::ops::try_trait::Try>::Output>::into_try::h9e3c4bacb3520ee0+0x10>
200115d8:      	j	0x200115f0 <core::ops::control_flow::ControlFlow<R,<R as core::ops::try_trait::Try>::Output>::into_try::h9e3c4bacb3520ee0+0x28>
200115da:      	unimp	
200115dc:      	lw	a0, 4(sp)
200115de:      	lw	a0, 4(a0)
200115e0:      	sw	a0, 24(sp)
200115e2:      	auipc	ra, 0
200115e6:      	jalr	62(ra)
200115ea:      	sw	a0, 8(sp)
200115ec:      	sw	a1, 12(sp)
200115ee:      	j	0x2001160a <core::ops::control_flow::ControlFlow<R,<R as core::ops::try_trait::Try>::Output>::into_try::h9e3c4bacb3520ee0+0x42>
200115f0:      	lw	a0, 4(sp)
200115f2:      	lw	a1, 4(a0)
200115f4:      	lw	a0, 8(a0)
200115f6:      	sw	a1, 16(sp)
200115f8:      	sw	a0, 20(sp)
200115fa:      	sw	a1, 8(sp)
200115fc:      	sw	a0, 12(sp)
200115fe:      	j	0x20011600 <core::ops::control_flow::ControlFlow<R,<R as core::ops::try_trait::Try>::Output>::into_try::h9e3c4bacb3520ee0+0x38>
20011600:      	lw	a0, 8(sp)
20011602:      	lw	a1, 12(sp)
20011604:      	lw	ra, 28(sp)
20011606:      	addi	sp, sp, 32
20011608:      	ret
2001160a:      	j	0x20011600 <core::ops::control_flow::ControlFlow<R,<R as core::ops::try_trait::Try>::Output>::into_try::h9e3c4bacb3520ee0+0x38>

2001160c <<core::ops::control_flow::ControlFlow<B,C> as core::ops::try_trait::Try>::from_output::h491774b63e373d05>:
2001160c:      	addi	sp, sp, -16
2001160e:      	sw	a1, 8(sp)
20011610:      	mv	a1, a0
20011612:      	lw	a0, 8(sp)
20011614:      	sw	a0, 12(sp)
20011616:      	sw	a0, 4(a1)
20011618:      	li	a0, 0
2001161a:      	sw	a0, 0(a1)
2001161c:      	addi	sp, sp, 16
2001161e:      	ret

20011620 <<core::ops::control_flow::ControlFlow<B,C> as core::ops::try_trait::Try>::from_output::h71d7f6fcec648c04>:
20011620:      	addi	sp, sp, -16
20011622:      	mv	a1, a0
20011624:      	sw	a1, 12(sp)
20011626:      	sw	a1, 4(sp)
20011628:      	li	a0, 0
2001162a:      	sw	a0, 0(sp)
2001162c:      	addi	sp, sp, 16
2001162e:      	ret

20011630 <<core::ops::control_flow::ControlFlow<B,C> as core::ops::try_trait::Try>::branch::h830760c810aab3aa>:
20011630:      	addi	sp, sp, -32
20011632:      	sw	a0, 0(sp)
20011634:      	sw	a1, 4(sp)
20011636:      	li	a1, 0
20011638:      	beq	a0, a1, 0x20011642 <<core::ops::control_flow::ControlFlow<B,C> as core::ops::try_trait::Try>::branch::h830760c810aab3aa+0x12>
2001163c:      	j	0x2001163e <<core::ops::control_flow::ControlFlow<B,C> as core::ops::try_trait::Try>::branch::h830760c810aab3aa+0xe>
2001163e:      	j	0x2001164e <<core::ops::control_flow::ControlFlow<B,C> as core::ops::try_trait::Try>::branch::h830760c810aab3aa+0x1e>
20011640:      	unimp	
20011642:      	lw	a0, 4(sp)
20011644:      	sw	a0, 28(sp)
20011646:      	sw	a0, 12(sp)
20011648:      	li	a0, 0
2001164a:      	sw	a0, 8(sp)
2001164c:      	j	0x2001165c <<core::ops::control_flow::ControlFlow<B,C> as core::ops::try_trait::Try>::branch::h830760c810aab3aa+0x2c>
2001164e:      	lw	a0, 4(sp)
20011650:      	sw	a0, 24(sp)
20011652:      	sw	a0, 20(sp)
20011654:      	sw	a0, 12(sp)
20011656:      	li	a0, 1
20011658:      	sw	a0, 8(sp)
2001165a:      	j	0x2001165c <<core::ops::control_flow::ControlFlow<B,C> as core::ops::try_trait::Try>::branch::h830760c810aab3aa+0x2c>
2001165c:      	lw	a0, 8(sp)
2001165e:      	lw	a1, 12(sp)
20011660:      	addi	sp, sp, 32
20011662:      	ret

20011664 <<core::ops::control_flow::ControlFlow<B,C> as core::ops::try_trait::Try>::branch::ha87a015f35a247de>:
20011664:      	addi	sp, sp, -32
20011666:      	sw	a1, 0(sp)
20011668:      	sw	a0, 4(sp)
2001166a:      	lw	a0, 0(a1)
2001166c:      	li	a1, 0
2001166e:      	beq	a0, a1, 0x20011678 <<core::ops::control_flow::ControlFlow<B,C> as core::ops::try_trait::Try>::branch::ha87a015f35a247de+0x14>
20011672:      	j	0x20011674 <<core::ops::control_flow::ControlFlow<B,C> as core::ops::try_trait::Try>::branch::ha87a015f35a247de+0x10>
20011674:      	j	0x20011688 <<core::ops::control_flow::ControlFlow<B,C> as core::ops::try_trait::Try>::branch::ha87a015f35a247de+0x24>
20011676:      	unimp	
20011678:      	lw	a1, 4(sp)
2001167a:      	lw	a0, 0(sp)
2001167c:      	lw	a0, 4(a0)
2001167e:      	sw	a0, 28(sp)
20011680:      	sw	a0, 4(a1)
20011682:      	li	a0, 0
20011684:      	sw	a0, 0(a1)
20011686:      	j	0x200116a2 <<core::ops::control_flow::ControlFlow<B,C> as core::ops::try_trait::Try>::branch::ha87a015f35a247de+0x3e>
20011688:      	lw	a1, 4(sp)
2001168a:      	lw	a0, 0(sp)
2001168c:      	lw	a2, 4(a0)
2001168e:      	lw	a0, 8(a0)
20011690:      	sw	a2, 16(sp)
20011692:      	sw	a0, 20(sp)
20011694:      	sw	a2, 8(sp)
20011696:      	sw	a0, 12(sp)
20011698:      	sw	a2, 4(a1)
2001169a:      	sw	a0, 8(a1)
2001169c:      	li	a0, 1
2001169e:      	sw	a0, 0(a1)
200116a0:      	j	0x200116a2 <<core::ops::control_flow::ControlFlow<B,C> as core::ops::try_trait::Try>::branch::ha87a015f35a247de+0x3e>
200116a2:      	addi	sp, sp, 32
200116a4:      	ret

200116a6 <core::ptr::const_ptr::<impl *const T>::guaranteed_eq::h3070a2b6c4d70568>:
200116a6:      	addi	sp, sp, -16
200116a8:      	sw	a0, 4(sp)
200116aa:      	sw	a1, 8(sp)
200116ac:      	xor	a0, a0, a1
200116ae:      	seqz	a0, a0
200116b2:      	sw	a0, 0(sp)
200116b4:      	sb	a0, 15(sp)
200116b8:      	j	0x200116ba <core::ptr::const_ptr::<impl *const T>::guaranteed_eq::h3070a2b6c4d70568+0x14>
200116ba:      	lw	a0, 0(sp)
200116bc:      	addi	sp, sp, 16
200116be:      	ret

200116c0 <core::ptr::mut_ptr::<impl *mut T>::addr::h1a4bdb704b33e087>:
200116c0:      	addi	sp, sp, -16
200116c2:      	sw	a0, 8(sp)
200116c4:      	sw	a0, 12(sp)
200116c6:      	sw	a0, 4(sp)
200116c8:      	j	0x200116ca <core::ptr::mut_ptr::<impl *mut T>::addr::h1a4bdb704b33e087+0xa>
200116ca:      	lw	a0, 4(sp)
200116cc:      	addi	sp, sp, 16
200116ce:      	ret

200116d0 <core::ptr::mut_ptr::<impl *mut T>::is_null::hbb0e3a9bea979c5c>:
200116d0:      	addi	sp, sp, -32
200116d2:      	sw	ra, 28(sp)
200116d4:      	sw	a0, 16(sp)
200116d6:      	sw	a0, 8(sp)
200116d8:      	li	a0, 0
200116da:      	sw	a0, 20(sp)
200116dc:      	sw	a0, 24(sp)
200116de:      	auipc	ra, 0
200116e2:      	jalr	-628(ra)
200116e6:      	sw	a0, 12(sp)
200116e8:      	j	0x200116ea <core::ptr::mut_ptr::<impl *mut T>::is_null::hbb0e3a9bea979c5c+0x1a>
200116ea:      	lw	a1, 12(sp)
200116ec:      	lw	a0, 8(sp)
200116ee:      	auipc	ra, 0
200116f2:      	jalr	2016(ra)
200116f6:      	sw	a0, 4(sp)
200116f8:      	j	0x200116fa <core::ptr::mut_ptr::<impl *mut T>::is_null::hbb0e3a9bea979c5c+0x2a>
200116fa:      	lw	a0, 4(sp)
200116fc:      	lw	ra, 28(sp)
200116fe:      	addi	sp, sp, 32
20011700:      	ret

20011702 <core::ptr::const_ptr::<impl *const T>::addr::h196a08dcbae45067>:
20011702:      	addi	sp, sp, -16
20011704:      	sw	a0, 8(sp)
20011706:      	sw	a0, 12(sp)
20011708:      	sw	a0, 4(sp)
2001170a:      	j	0x2001170c <core::ptr::const_ptr::<impl *const T>::addr::h196a08dcbae45067+0xa>
2001170c:      	lw	a0, 4(sp)
2001170e:      	addi	sp, sp, 16
20011710:      	ret

20011712 <core::ptr::const_ptr::<impl *const T>::is_null::h320f6f964b980850>:
20011712:      	addi	sp, sp, -32
20011714:      	sw	ra, 28(sp)
20011716:      	sw	a0, 16(sp)
20011718:      	sw	a0, 8(sp)
2001171a:      	li	a0, 0
2001171c:      	sw	a0, 20(sp)
2001171e:      	sw	a0, 24(sp)
20011720:      	auipc	ra, 0
20011724:      	jalr	-706(ra)
20011728:      	sw	a0, 12(sp)
2001172a:      	j	0x2001172c <core::ptr::const_ptr::<impl *const T>::is_null::h320f6f964b980850+0x1a>
2001172c:      	lw	a1, 12(sp)
2001172e:      	lw	a0, 8(sp)
20011730:      	auipc	ra, 0
20011734:      	jalr	-138(ra)
20011738:      	sw	a0, 4(sp)
2001173a:      	j	0x2001173c <core::ptr::const_ptr::<impl *const T>::is_null::h320f6f964b980850+0x2a>
2001173c:      	lw	a0, 4(sp)
2001173e:      	lw	ra, 28(sp)
20011740:      	addi	sp, sp, 32
20011742:      	ret

20011744 <core::slice::<impl [T]>::iter::h1935f8d0b3fbaba8>:
20011744:      	addi	sp, sp, -32
20011746:      	sw	ra, 28(sp)
20011748:      	sw	a0, 16(sp)
2001174a:      	sw	a1, 20(sp)
2001174c:      	auipc	ra, 1048575
20011750:      	jalr	1306(ra)
20011754:      	sw	a0, 8(sp)
20011756:      	sw	a1, 12(sp)
20011758:      	j	0x2001175a <core::slice::<impl [T]>::iter::h1935f8d0b3fbaba8+0x16>
2001175a:      	lw	a1, 12(sp)
2001175c:      	lw	a0, 8(sp)
2001175e:      	lw	ra, 28(sp)
20011760:      	addi	sp, sp, 32
20011762:      	ret

20011764 <core::slice::<impl [T]>::as_ptr::he96346ec5ee04bc0>:
20011764:      	addi	sp, sp, -16
20011766:      	sw	a0, 8(sp)
20011768:      	sw	a1, 12(sp)
2001176a:      	addi	sp, sp, 16
2001176c:      	ret

2001176e <core::sync::atomic::compiler_fence::hf20fb88d79ceb35e>:
2001176e:      	addi	sp, sp, -48
20011770:      	sw	ra, 44(sp)
20011772:      	sb	a0, 15(sp)
20011776:      	andi	a0, a0, 255
2001177a:      	sw	a0, 8(sp)
2001177c:      	lw	a0, 8(sp)
2001177e:      	slli	a0, a0, 2
20011780:      	lui	a1, 131091
20011784:      	addi	a1, a1, -620
20011788:      	add	a0, a0, a1
2001178a:      	lw	a0, 0(a0)
2001178c:      	jr	a0
2001178e:      	unimp	

20011790 <.LBB0_3>:
20011790:      	lui	a0, 131091
20011794:      	addi	a1, a0, -548
20011798:      	lui	a0, 131091
2001179c:      	addi	a3, a0, -540
200117a0:      	addi	a0, sp, 16
200117a2:      	li	a2, 1
200117a4:      	li	a4, 0
200117a6:      	auipc	ra, 0
200117aa:      	jalr	-994(ra)
200117ae:      	j	0x200117ce <.LBB0_7+0xc>

200117b0 <.LBB0_4>:
200117b0:      	fence	rw, w
200117b4:      	j	0x200117c8 <.LBB0_7+0x6>

200117b6 <.LBB0_5>:
200117b6:      	fence	r, rw
200117ba:      	j	0x200117c8 <.LBB0_7+0x6>

200117bc <.LBB0_6>:
200117bc:      	fence.tso	
200117c0:      	j	0x200117c8 <.LBB0_7+0x6>

200117c2 <.LBB0_7>:
200117c2:      	fence	rw, rw
200117c6:      	j	0x200117c8 <.LBB0_7+0x6>
200117c8:      	lw	ra, 44(sp)
200117ca:      	addi	sp, sp, 48
200117cc:      	ret
200117ce:      	lui	a0, 131091
200117d2:      	addi	a1, a0, -460
200117d6:      	addi	a0, sp, 16
200117d8:      	auipc	ra, 0
200117dc:      	jalr	2032(ra)
200117e0:      	unimp	

200117e2 <yarr::mmio_write::hf5d69709fbaee8ac>:
200117e2:      	addi	sp, sp, -64
200117e4:      	sw	ra, 60(sp)
200117e6:      	sw	a2, 8(sp)
200117e8:      	sw	a0, 16(sp)
200117ea:      	sw	a1, 20(sp)
200117ec:      	sw	a2, 24(sp)
200117ee:      	sw	a0, 28(sp)
200117f0:      	sw	a0, 40(sp)
200117f2:      	sw	a1, 44(sp)
200117f4:      	sw	a0, 48(sp)
200117f6:      	sw	a1, 52(sp)
200117f8:      	slli	a1, a1, 2
200117fa:      	add	a0, a0, a1
200117fc:      	sw	a0, 12(sp)
200117fe:      	sw	a0, 56(sp)
20011800:      	j	0x20011802 <yarr::mmio_write::hf5d69709fbaee8ac+0x20>
20011802:      	lw	a1, 8(sp)
20011804:      	lw	a0, 12(sp)
20011806:      	sw	a0, 32(sp)
20011808:      	sw	a1, 36(sp)
2001180a:      	auipc	ra, 0
2001180e:      	jalr	-898(ra)
20011812:      	j	0x20011814 <yarr::mmio_write::hf5d69709fbaee8ac+0x32>
20011814:      	lw	ra, 60(sp)
20011816:      	addi	sp, sp, 64
20011818:      	ret

2001181a <yarr::mmio_read::h2da6608f287e37d1>:
2001181a:      	addi	sp, sp, -48
2001181c:      	sw	ra, 44(sp)
2001181e:      	sw	a0, 8(sp)
20011820:      	sw	a1, 12(sp)
20011822:      	sw	a0, 16(sp)
20011824:      	sw	a0, 24(sp)
20011826:      	sw	a1, 28(sp)
20011828:      	sw	a0, 32(sp)
2001182a:      	sw	a1, 36(sp)
2001182c:      	slli	a1, a1, 2
2001182e:      	add	a0, a0, a1
20011830:      	sw	a0, 4(sp)
20011832:      	sw	a0, 40(sp)
20011834:      	j	0x20011836 <yarr::mmio_read::h2da6608f287e37d1+0x1c>
20011836:      	lw	a0, 4(sp)
20011838:      	sw	a0, 20(sp)
2001183a:      	auipc	ra, 0
2001183e:      	jalr	-964(ra)
20011842:      	sw	a0, 0(sp)
20011844:      	j	0x20011846 <yarr::mmio_read::h2da6608f287e37d1+0x2c>
20011846:      	lw	a0, 0(sp)
20011848:      	lw	ra, 44(sp)
2001184a:      	addi	sp, sp, 48
2001184c:      	ret

2001184e <<yarr::HiFiveRTC as yarr::clock::Clock>::freq::h06589696caf6b488>:
2001184e:      	lui	a0, 8
20011850:      	li	a1, 0
20011852:      	ret

20011854 <<yarr::HiFiveRTC as yarr::clock::Clock>::ticks::h4967e519d046b206>:
20011854:      	addi	sp, sp, -32
20011856:      	sw	ra, 28(sp)
20011858:      	lui	a0, 12
2001185a:      	addi	a1, a0, -8
2001185e:      	lui	a0, 8192
20011862:      	auipc	ra, 0
20011866:      	jalr	-72(ra)
2001186a:      	mv	a1, a0
2001186c:      	sw	a1, 16(sp)
2001186e:      	sw	a0, 20(sp)
20011870:      	j	0x20011872 <<yarr::HiFiveRTC as yarr::clock::Clock>::ticks::h4967e519d046b206+0x1e>
20011872:      	lui	a0, 12
20011874:      	addi	a1, a0, -4
20011878:      	lui	a0, 8192
2001187c:      	auipc	ra, 0
20011880:      	jalr	-98(ra)
20011884:      	mv	a1, a0
20011886:      	sw	a1, 12(sp)
20011888:      	sw	a0, 24(sp)
2001188a:      	j	0x2001188c <<yarr::HiFiveRTC as yarr::clock::Clock>::ticks::h4967e519d046b206+0x38>
2001188c:      	lw	a0, 12(sp)
2001188e:      	sw	a0, 8(sp)
20011890:      	li	a0, 0
20011892:      	j	0x20011894 <<yarr::HiFiveRTC as yarr::clock::Clock>::ticks::h4967e519d046b206+0x40>
20011894:      	lw	a1, 8(sp)
20011896:      	lw	a0, 16(sp)
20011898:      	lw	ra, 28(sp)
2001189a:      	addi	sp, sp, 32
2001189c:      	ret

2001189e <<yarr::HiFiveRTC as yarr::clock::Clock>::set_cmp::h8ed4e4f774ee0444>:
2001189e:      	addi	sp, sp, -32
200118a0:      	sw	ra, 28(sp)
200118a2:      	mv	a2, a0
200118a4:      	mv	a0, a1
200118a6:      	sw	a0, 12(sp)
200118a8:      	sw	a1, 20(sp)
200118aa:      	sw	a2, 16(sp)
200118ac:      	lui	a0, 8192
200118b0:      	lui	a1, 4
200118b2:      	auipc	ra, 0
200118b6:      	jalr	-208(ra)
200118ba:      	j	0x200118bc <<yarr::HiFiveRTC as yarr::clock::Clock>::set_cmp::h8ed4e4f774ee0444+0x1e>
200118bc:      	lw	a0, 12(sp)
200118be:      	li	a1, 0
200118c0:      	sw	a0, 8(sp)
200118c2:      	j	0x200118c4 <<yarr::HiFiveRTC as yarr::clock::Clock>::set_cmp::h8ed4e4f774ee0444+0x26>
200118c4:      	lw	a2, 8(sp)
200118c6:      	lui	a0, 4
200118c8:      	addi	a1, a0, 4
200118cc:      	lui	a0, 8192
200118d0:      	auipc	ra, 0
200118d4:      	jalr	-238(ra)
200118d8:      	j	0x200118da <<yarr::HiFiveRTC as yarr::clock::Clock>::set_cmp::h8ed4e4f774ee0444+0x3c>
200118da:      	lw	ra, 28(sp)
200118dc:      	addi	sp, sp, 32
200118de:      	ret

200118e0 <yarr::start_rust::hffe502076fa456ce>:
200118e0:      	addi	sp, sp, -16
200118e2:      	sw	ra, 12(sp)
200118e4:      	auipc	ra, 0
200118e8:      	jalr	496(ra)
200118ec:      	j	0x200118ee <yarr::start_rust::hffe502076fa456ce+0xe>
200118ee:      	auipc	ra, 0
200118f2:      	jalr	364(ra)
200118f6:      	j	0x200118f8 <yarr::start_rust::hffe502076fa456ce+0x18>
200118f8:      	auipc	ra, 0
200118fc:      	jalr	10(ra)
20011900:      	unimp	

20011902 <yarr::main::h3e73e4459b73c150>:
20011902:      	addi	sp, sp, -1968
20011906:      	sw	ra, 1964(sp)
2001190a:      	addi	a0, sp, 24
2001190c:      	sw	a0, 20(sp)
2001190e:      	li	a1, 0
20011910:      	sw	a1, 16(sp)
20011912:      	li	a2, 256
20011916:      	auipc	ra, 1
2001191a:      	jalr	-858(ra)
2001191e:      	lw	a1, 16(sp)
20011920:      	addi	a0, sp, 280
20011922:      	li	a2, 512
20011926:      	auipc	ra, 1
2001192a:      	jalr	-874(ra)
2001192e:      	lw	a1, 16(sp)
20011930:      	addi	a0, sp, 792
20011932:      	li	a2, 1024
20011936:      	auipc	ra, 1
2001193a:      	jalr	-890(ra)
2001193e:      	lw	a1, 20(sp)
20011940:      	addi	a0, sp, 1816
20011944:      	li	a2, 64
20011948:      	auipc	ra, 1048575
2001194c:      	jalr	396(ra)
20011950:      	j	0x20011952 <yarr::main::h3e73e4459b73c150+0x50>
20011952:      	lui	a0, 131090
20011956:      	addi	a1, a0, -1154
2001195a:      	addi	a0, sp, 1864
2001195e:      	addi	a2, sp, 280
20011960:      	li	a3, 128
20011964:      	auipc	ra, 1048575
20011968:      	jalr	274(ra)
2001196c:      	j	0x2001196e <yarr::main::h3e73e4459b73c150+0x6c>
2001196e:      	lui	a0, 131090
20011972:      	addi	a1, a0, -1176
20011976:      	addi	a0, sp, 1880
2001197a:      	addi	a2, sp, 792
2001197c:      	li	a3, 256
20011980:      	auipc	ra, 1048575
20011984:      	jalr	246(ra)
20011988:      	j	0x2001198a <yarr::main::h3e73e4459b73c150+0x88>
2001198a:      	lw	a0, 1876(sp)
2001198e:      	sw	a0, 1844(sp)
20011992:      	lw	a0, 1872(sp)
20011996:      	sw	a0, 1840(sp)
2001199a:      	lw	a0, 1868(sp)
2001199e:      	sw	a0, 1836(sp)
200119a2:      	lw	a0, 1864(sp)
200119a6:      	sw	a0, 1832(sp)
200119aa:      	lw	a0, 1880(sp)
200119ae:      	sw	a0, 1848(sp)
200119b2:      	lw	a0, 1884(sp)
200119b6:      	sw	a0, 1852(sp)
200119ba:      	lw	a0, 1888(sp)
200119be:      	sw	a0, 1856(sp)
200119c2:      	lw	a0, 1892(sp)
200119c6:      	sw	a0, 1860(sp)
200119ca:      	addi	a0, sp, 1896
200119ce:      	li	a1, 1000
200119d2:      	li	a2, 0
200119d4:      	addi	a3, sp, 1832
200119d8:      	li	a4, 2
200119da:      	addi	a5, sp, 1816
200119de:      	auipc	ra, 1048575
200119e2:      	jalr	-94(ra)
200119e6:      	j	0x200119e8 <yarr::main::h3e73e4459b73c150+0xe6>
200119e8:      	addi	a0, sp, 1896
200119ec:      	auipc	ra, 1048575
200119f0:      	jalr	-646(ra)
200119f4:      	unimp	

200119f6 <rust_begin_unwind>:
200119f6:      	addi	sp, sp, -16
200119f8:      	sw	a0, 12(sp)
200119fa:      	j	0x200119fc <rust_begin_unwind+0x6>
200119fc:      	wfi	
20011a00:      	j	0x200119fc <rust_begin_unwind+0x6>

20011a02 <core::cmp::impls::<impl core::cmp::Ord for usize>::cmp::hfcb174ef354ea473>:
20011a02:      	addi	sp, sp, -32
20011a04:      	sw	a1, 12(sp)
20011a06:      	sw	a0, 16(sp)
20011a08:      	sw	a0, 24(sp)
20011a0a:      	sw	a1, 28(sp)
20011a0c:      	lw	a0, 0(a0)
20011a0e:      	lw	a1, 0(a1)
20011a10:      	bltu	a0, a1, 0x20011a24 <core::cmp::impls::<impl core::cmp::Ord for usize>::cmp::hfcb174ef354ea473+0x22>
20011a14:      	j	0x20011a16 <core::cmp::impls::<impl core::cmp::Ord for usize>::cmp::hfcb174ef354ea473+0x14>
20011a16:      	lw	a1, 12(sp)
20011a18:      	lw	a0, 16(sp)
20011a1a:      	lw	a0, 0(a0)
20011a1c:      	lw	a1, 0(a1)
20011a1e:      	beq	a0, a1, 0x20011a3e <core::cmp::impls::<impl core::cmp::Ord for usize>::cmp::hfcb174ef354ea473+0x3c>
20011a22:      	j	0x20011a36 <core::cmp::impls::<impl core::cmp::Ord for usize>::cmp::hfcb174ef354ea473+0x34>
20011a24:      	li	a0, 255
20011a28:      	sb	a0, 23(sp)
20011a2c:      	j	0x20011a2e <core::cmp::impls::<impl core::cmp::Ord for usize>::cmp::hfcb174ef354ea473+0x2c>
20011a2e:      	lb	a0, 23(sp)
20011a32:      	addi	sp, sp, 32
20011a34:      	ret
20011a36:      	li	a0, 1
20011a38:      	sb	a0, 23(sp)
20011a3c:      	j	0x20011a46 <core::cmp::impls::<impl core::cmp::Ord for usize>::cmp::hfcb174ef354ea473+0x44>
20011a3e:      	li	a0, 0
20011a40:      	sb	a0, 23(sp)
20011a44:      	j	0x20011a46 <core::cmp::impls::<impl core::cmp::Ord for usize>::cmp::hfcb174ef354ea473+0x44>
20011a46:      	j	0x20011a2e <core::cmp::impls::<impl core::cmp::Ord for usize>::cmp::hfcb174ef354ea473+0x2c>

20011a48 <core::cmp::impls::<impl core::cmp::PartialOrd for i32>::lt::h24cec809856ce93c>:
20011a48:      	addi	sp, sp, -16
20011a4a:      	sw	a0, 8(sp)
20011a4c:      	sw	a1, 12(sp)
20011a4e:      	lw	a0, 0(a0)
20011a50:      	lw	a1, 0(a1)
20011a52:      	slt	a0, a0, a1
20011a56:      	addi	sp, sp, 16
20011a58:      	ret

20011a5a <yarr::init::zero_bss::h7e28c0e6e58deb24>:
20011a5a:      	addi	sp, sp, -48
20011a5c:      	sw	ra, 44(sp)
20011a5e:      	lui	a0, 524288
20011a62:      	mv	a0, a0
20011a66:      	sw	a0, 12(sp)
20011a68:      	lui	a0, 524288
20011a6c:      	mv	a0, a0
20011a70:      	sw	a0, 20(sp)
20011a72:      	j	0x20011a74 <yarr::init::zero_bss::h7e28c0e6e58deb24+0x1a>
20011a74:      	lw	a0, 12(sp)
20011a76:      	lui	a1, 524288
20011a7a:      	mv	a1, a1
20011a7e:      	bltu	a0, a1, 0x20011a94 <yarr::init::zero_bss::h7e28c0e6e58deb24+0x3a>
20011a82:      	j	0x20011a84 <yarr::init::zero_bss::h7e28c0e6e58deb24+0x2a>
20011a84:      	li	a0, 4
20011a86:      	sb	a0, 19(sp)
20011a8a:      	auipc	ra, 0
20011a8e:      	jalr	-796(ra)
20011a92:      	j	0x20011ace <yarr::init::zero_bss::h7e28c0e6e58deb24+0x74>
20011a94:      	lw	a0, 12(sp)
20011a96:      	sw	a0, 4(sp)
20011a98:      	auipc	ra, 0
20011a9c:      	jalr	1030(ra)
20011aa0:      	mv	a1, a0
20011aa2:      	sw	a1, 8(sp)
20011aa4:      	sw	a0, 24(sp)
20011aa6:      	sw	a0, 28(sp)
20011aa8:      	j	0x20011aaa <yarr::init::zero_bss::h7e28c0e6e58deb24+0x50>
20011aaa:      	lw	a1, 8(sp)
20011aac:      	lw	a0, 4(sp)
20011aae:      	auipc	ra, 0
20011ab2:      	jalr	-1574(ra)
20011ab6:      	j	0x20011ab8 <yarr::init::zero_bss::h7e28c0e6e58deb24+0x5e>
20011ab8:      	lw	a0, 12(sp)
20011aba:      	sw	a0, 32(sp)
20011abc:      	li	a1, 1
20011abe:      	sw	a1, 36(sp)
20011ac0:      	addi	a0, a0, 4
20011ac2:      	sw	a0, 0(sp)
20011ac4:      	sw	a0, 40(sp)
20011ac6:      	j	0x20011ac8 <yarr::init::zero_bss::h7e28c0e6e58deb24+0x6e>
20011ac8:      	lw	a0, 0(sp)
20011aca:      	sw	a0, 12(sp)
20011acc:      	j	0x20011a74 <yarr::init::zero_bss::h7e28c0e6e58deb24+0x1a>
20011ace:      	lw	ra, 44(sp)
20011ad0:      	addi	sp, sp, 48
20011ad2:      	ret

20011ad4 <yarr::init::init_data::h293fa6f6309dec2c>:
20011ad4:      	addi	sp, sp, -64
20011ad6:      	sw	ra, 60(sp)
20011ad8:      	lui	a0, 524288
20011adc:      	mv	a0, a0
20011ae0:      	sw	a0, 20(sp)
20011ae2:      	lui	a0, 524288
20011ae6:      	mv	a0, a0
20011aea:      	sw	a0, 32(sp)
20011aec:      	lui	a0, 131091
20011af0:      	addi	a0, a0, -16
20011af4:      	sw	a0, 24(sp)
20011af6:      	j	0x20011af8 <yarr::init::init_data::h293fa6f6309dec2c+0x24>
20011af8:      	lw	a0, 20(sp)
20011afa:      	lui	a1, 524288
20011afe:      	mv	a1, a1
20011b02:      	bltu	a0, a1, 0x20011b18 <yarr::init::init_data::h293fa6f6309dec2c+0x44>
20011b06:      	j	0x20011b08 <yarr::init::init_data::h293fa6f6309dec2c+0x34>
20011b08:      	li	a0, 4
20011b0a:      	sb	a0, 31(sp)
20011b0e:      	auipc	ra, 0
20011b12:      	jalr	-928(ra)
20011b16:      	j	0x20011b62 <yarr::init::init_data::h293fa6f6309dec2c+0x8e>
20011b18:      	lw	a0, 20(sp)
20011b1a:      	sw	a0, 12(sp)
20011b1c:      	lw	a0, 24(sp)
20011b1e:      	auipc	ra, 0
20011b22:      	jalr	-1672(ra)
20011b26:      	sw	a0, 16(sp)
20011b28:      	j	0x20011b2a <yarr::init::init_data::h293fa6f6309dec2c+0x56>
20011b2a:      	lw	a1, 16(sp)
20011b2c:      	lw	a0, 12(sp)
20011b2e:      	auipc	ra, 0
20011b32:      	jalr	-1612(ra)
20011b36:      	j	0x20011b38 <yarr::init::init_data::h293fa6f6309dec2c+0x64>
20011b38:      	lw	a0, 20(sp)
20011b3a:      	sw	a0, 36(sp)
20011b3c:      	li	a1, 1
20011b3e:      	sw	a1, 40(sp)
20011b40:      	addi	a0, a0, 4
20011b42:      	sw	a0, 8(sp)
20011b44:      	sw	a0, 44(sp)
20011b46:      	j	0x20011b48 <yarr::init::init_data::h293fa6f6309dec2c+0x74>
20011b48:      	lw	a0, 8(sp)
20011b4a:      	sw	a0, 20(sp)
20011b4c:      	lw	a0, 24(sp)
20011b4e:      	sw	a0, 48(sp)
20011b50:      	li	a1, 1
20011b52:      	sw	a1, 52(sp)
20011b54:      	addi	a0, a0, 4
20011b56:      	sw	a0, 4(sp)
20011b58:      	sw	a0, 56(sp)
20011b5a:      	j	0x20011b5c <yarr::init::init_data::h293fa6f6309dec2c+0x88>
20011b5c:      	lw	a0, 4(sp)
20011b5e:      	sw	a0, 24(sp)
20011b60:      	j	0x20011af8 <yarr::init::init_data::h293fa6f6309dec2c+0x24>
20011b62:      	lw	ra, 60(sp)
20011b64:      	addi	sp, sp, 64
20011b66:      	ret

20011b68 <core::ops::function::FnOnce::call_once::h5ab6d1e80569e221>:
20011b68:      	addi	sp, sp, -16
20011b6a:      	sw	ra, 12(sp)
20011b6c:      	mv	a0, sp
20011b6e:      	auipc	ra, 1048575
20011b72:      	jalr	-1380(ra)
20011b76:      	j	0x20011b78 <core::ops::function::FnOnce::call_once::h5ab6d1e80569e221+0x10>
20011b78:      	j	0x20011b7a <core::ops::function::FnOnce::call_once::h5ab6d1e80569e221+0x12>
20011b7a:      	unimp	
20011b7c:      	unimp	

20011b7e <core::ops::function::FnOnce::call_once::hbc64e9c60426b22d>:
20011b7e:      	addi	sp, sp, -16
20011b80:      	sw	ra, 12(sp)
20011b82:      	mv	a0, sp
20011b84:      	auipc	ra, 1048575
20011b88:      	jalr	-1524(ra)
20011b8c:      	j	0x20011b8e <core::ops::function::FnOnce::call_once::hbc64e9c60426b22d+0x10>
20011b8e:      	j	0x20011b90 <core::ops::function::FnOnce::call_once::hbc64e9c60426b22d+0x12>
20011b90:      	unimp	
20011b92:      	unimp	

20011b94 <yarr::stack::Stack::new::h4237b907481d19f6>:
20011b94:      	addi	sp, sp, -64
20011b96:      	sw	a2, 16(sp)
20011b98:      	sw	a1, 20(sp)
20011b9a:      	sw	a0, 24(sp)
20011b9c:      	sw	a1, 32(sp)
20011b9e:      	sw	a2, 36(sp)
20011ba0:      	addi	a0, a2, -1
20011ba4:      	sw	a0, 28(sp)
20011ba6:      	bltu	a2, a0, 0x20011bb6 <yarr::stack::Stack::new::h4237b907481d19f6+0x22>
20011baa:      	j	0x20011bac <yarr::stack::Stack::new::h4237b907481d19f6+0x18>
20011bac:      	lw	a0, 28(sp)
20011bae:      	lw	a1, 16(sp)
20011bb0:      	bltu	a0, a1, 0x20011bd4 <yarr::stack::Stack::new::h4237b907481d19f6+0x40>
20011bb4:      	j	0x20011bee <yarr::stack::Stack::new::h4237b907481d19f6+0x5a>
20011bb6:      	lui	a0, 131091
20011bba:      	addi	a0, a0, -416
20011bbe:      	lui	a1, 131091
20011bc2:      	addi	a2, a1, -432
20011bc6:      	li	a1, 33
20011bca:      	auipc	ra, 0
20011bce:      	jalr	914(ra)
20011bd2:      	unimp	
20011bd4:      	lw	a0, 20(sp)
20011bd6:      	lw	a1, 28(sp)
20011bd8:      	slli	a1, a1, 2
20011bda:      	add	a0, a0, a1
20011bdc:      	sw	a0, 44(sp)
20011bde:      	li	a1, 1
20011be0:      	sw	a1, 48(sp)
20011be2:      	sw	a0, 52(sp)
20011be4:      	sw	a1, 56(sp)
20011be6:      	addi	a0, a0, 4
20011be8:      	sw	a0, 12(sp)
20011bea:      	sw	a0, 60(sp)
20011bec:      	j	0x20011c04 <yarr::stack::Stack::new::h4237b907481d19f6+0x70>
20011bee:      	lw	a1, 16(sp)
20011bf0:      	lw	a0, 28(sp)
20011bf2:      	lui	a2, 131091
20011bf6:      	addi	a2, a2, -380
20011bfa:      	auipc	ra, 0
20011bfe:      	jalr	910(ra)
20011c02:      	unimp	
20011c04:      	lw	a0, 16(sp)
20011c06:      	lw	a1, 24(sp)
20011c08:      	lw	a2, 20(sp)
20011c0a:      	lw	a3, 12(sp)
20011c0c:      	sw	a3, 0(a1)
20011c0e:      	sw	a2, 4(a1)
20011c10:      	sw	a0, 8(a1)
20011c12:      	addi	sp, sp, 64
20011c14:      	ret

20011c16 <yarr::stack::Stack::init::h4f0f8eb003eb7755>:
20011c16:      	addi	sp, sp, -64
20011c18:      	sw	ra, 60(sp)
20011c1a:      	sw	a1, 40(sp)
20011c1c:      	sw	a0, 44(sp)
20011c1e:      	sw	a0, 52(sp)
20011c20:      	sw	a1, 56(sp)
20011c22:      	csrr	a0, mstatus
20011c26:      	sw	a0, 48(sp)
20011c28:      	j	0x20011c2a <yarr::stack::Stack::init::h4f0f8eb003eb7755+0x14>
20011c2a:      	lw	a0, 44(sp)
20011c2c:      	lw	a1, 40(sp)
20011c2e:      	sw	a1, 32(sp)
20011c30:      	lw	a0, 8(a0)
20011c32:      	addi	a1, a0, -1
20011c36:      	sw	a1, 36(sp)
20011c38:      	bltu	a0, a1, 0x20011c4c <yarr::stack::Stack::init::h4f0f8eb003eb7755+0x36>
20011c3c:      	j	0x20011c3e <yarr::stack::Stack::init::h4f0f8eb003eb7755+0x28>
20011c3e:      	lw	a0, 36(sp)
20011c40:      	lw	a1, 44(sp)
20011c42:      	lw	a1, 8(a1)
20011c44:      	sw	a1, 28(sp)
20011c46:      	bltu	a0, a1, 0x20011c6a <yarr::stack::Stack::init::h4f0f8eb003eb7755+0x54>
20011c4a:      	j	0x20011c8a <yarr::stack::Stack::init::h4f0f8eb003eb7755+0x74>
20011c4c:      	lui	a0, 131091
20011c50:      	addi	a0, a0, -416
20011c54:      	lui	a1, 131091
20011c58:      	addi	a2, a1, -364
20011c5c:      	li	a1, 33
20011c60:      	auipc	ra, 0
20011c64:      	jalr	764(ra)
20011c68:      	unimp	
20011c6a:      	lw	a0, 44(sp)
20011c6c:      	lw	a1, 32(sp)
20011c6e:      	lw	a3, 36(sp)
20011c70:      	lw	a2, 4(a0)
20011c72:      	slli	a3, a3, 2
20011c74:      	add	a2, a2, a3
20011c76:      	sw	a1, 0(a2)
20011c78:      	lw	a1, 48(sp)
20011c7a:      	sw	a1, 20(sp)
20011c7c:      	lw	a0, 8(a0)
20011c7e:      	addi	a1, a0, -2
20011c82:      	sw	a1, 24(sp)
20011c84:      	bltu	a0, a1, 0x20011cae <yarr::stack::Stack::init::h4f0f8eb003eb7755+0x98>
20011c88:      	j	0x20011ca0 <yarr::stack::Stack::init::h4f0f8eb003eb7755+0x8a>
20011c8a:      	lw	a1, 28(sp)
20011c8c:      	lw	a0, 36(sp)
20011c8e:      	lui	a2, 131091
20011c92:      	addi	a2, a2, -348
20011c96:      	auipc	ra, 0
20011c9a:      	jalr	754(ra)
20011c9e:      	unimp	
20011ca0:      	lw	a0, 24(sp)
20011ca2:      	lw	a1, 44(sp)
20011ca4:      	lw	a1, 8(a1)
20011ca6:      	sw	a1, 16(sp)
20011ca8:      	bltu	a0, a1, 0x20011ccc <yarr::stack::Stack::init::h4f0f8eb003eb7755+0xb6>
20011cac:      	j	0x20011cea <yarr::stack::Stack::init::h4f0f8eb003eb7755+0xd4>
20011cae:      	lui	a0, 131091
20011cb2:      	addi	a0, a0, -416
20011cb6:      	lui	a1, 131091
20011cba:      	addi	a2, a1, -332
20011cbe:      	li	a1, 33
20011cc2:      	auipc	ra, 0
20011cc6:      	jalr	666(ra)
20011cca:      	unimp	
20011ccc:      	lw	a0, 44(sp)
20011cce:      	lw	a1, 20(sp)
20011cd0:      	lw	a3, 24(sp)
20011cd2:      	lw	a2, 4(a0)
20011cd4:      	slli	a3, a3, 2
20011cd6:      	add	a2, a2, a3
20011cd8:      	sw	a1, 0(a2)
20011cda:      	lw	a0, 0(a0)
20011cdc:      	li	a1, 30
20011cde:      	auipc	ra, 0
20011ce2:      	jalr	522(ra)
20011ce6:      	sw	a0, 12(sp)
20011ce8:      	j	0x20011d00 <yarr::stack::Stack::init::h4f0f8eb003eb7755+0xea>
20011cea:      	lw	a1, 16(sp)
20011cec:      	lw	a0, 24(sp)
20011cee:      	lui	a2, 131091
20011cf2:      	addi	a2, a2, -316
20011cf6:      	auipc	ra, 0
20011cfa:      	jalr	658(ra)
20011cfe:      	unimp	
20011d00:      	lw	a0, 12(sp)
20011d02:      	lw	a1, 44(sp)
20011d04:      	sw	a0, 0(a1)
20011d06:      	lw	ra, 60(sp)
20011d08:      	addi	sp, sp, 64
20011d0a:      	ret

20011d0c <<core::iter::adapters::take::Take<I> as core::iter::traits::iterator::Iterator>::try_fold::h2a2ef1e07625feac>:
20011d0c:      	addi	sp, sp, -64
20011d0e:      	sw	ra, 60(sp)
20011d10:      	sw	a1, 8(sp)
20011d12:      	sw	a0, 12(sp)
20011d14:      	sw	a0, 40(sp)
20011d16:      	sw	a1, 44(sp)
20011d18:      	li	a1, 1
20011d1a:      	sb	a1, 39(sp)
20011d1e:      	lw	a0, 20(a0)
20011d20:      	li	a1, 0
20011d22:      	bne	a0, a1, 0x20011d38 <<core::iter::adapters::take::Take<I> as core::iter::traits::iterator::Iterator>::try_fold::h2a2ef1e07625feac+0x2c>
20011d26:      	j	0x20011d28 <<core::iter::adapters::take::Take<I> as core::iter::traits::iterator::Iterator>::try_fold::h2a2ef1e07625feac+0x1c>
20011d28:      	lw	a0, 8(sp)
20011d2a:      	auipc	ra, 0
20011d2e:      	jalr	-1802(ra)
20011d32:      	sw	a0, 16(sp)
20011d34:      	sw	a1, 20(sp)
20011d36:      	j	0x20011d86 <<core::iter::adapters::take::Take<I> as core::iter::traits::iterator::Iterator>::try_fold::h2a2ef1e07625feac+0x7a>
20011d38:      	lw	a1, 12(sp)
20011d3a:      	addi	a0, a1, 20
20011d3e:      	sw	a0, 56(sp)
20011d40:      	sw	a1, 0(sp)
20011d42:      	li	a1, 0
20011d44:      	sb	a1, 39(sp)
20011d48:      	auipc	ra, 0
20011d4c:      	jalr	76(ra)
20011d50:      	sw	a0, 4(sp)
20011d52:      	j	0x20011d54 <<core::iter::adapters::take::Take<I> as core::iter::traits::iterator::Iterator>::try_fold::h2a2ef1e07625feac+0x48>
20011d54:      	lw	a3, 4(sp)
20011d56:      	lw	a2, 8(sp)
20011d58:      	lw	a1, 0(sp)
20011d5a:      	addi	a0, sp, 24
20011d5c:      	auipc	ra, 1048575
20011d60:      	jalr	-1734(ra)
20011d64:      	j	0x20011d66 <<core::iter::adapters::take::Take<I> as core::iter::traits::iterator::Iterator>::try_fold::h2a2ef1e07625feac+0x5a>
20011d66:      	addi	a0, sp, 24
20011d68:      	auipc	ra, 0
20011d6c:      	jalr	-1952(ra)
20011d70:      	sw	a0, 16(sp)
20011d72:      	sw	a1, 20(sp)
20011d74:      	j	0x20011d76 <<core::iter::adapters::take::Take<I> as core::iter::traits::iterator::Iterator>::try_fold::h2a2ef1e07625feac+0x6a>
20011d76:      	j	0x20011d78 <<core::iter::adapters::take::Take<I> as core::iter::traits::iterator::Iterator>::try_fold::h2a2ef1e07625feac+0x6c>
20011d78:      	lbu	a0, 39(sp)
20011d7c:      	andi	a0, a0, 1
20011d7e:      	li	a1, 0
20011d80:      	bne	a0, a1, 0x20011d92 <<core::iter::adapters::take::Take<I> as core::iter::traits::iterator::Iterator>::try_fold::h2a2ef1e07625feac+0x86>
20011d84:      	j	0x20011d88 <<core::iter::adapters::take::Take<I> as core::iter::traits::iterator::Iterator>::try_fold::h2a2ef1e07625feac+0x7c>
20011d86:      	j	0x20011d78 <<core::iter::adapters::take::Take<I> as core::iter::traits::iterator::Iterator>::try_fold::h2a2ef1e07625feac+0x6c>
20011d88:      	lw	a0, 16(sp)
20011d8a:      	lw	a1, 20(sp)
20011d8c:      	lw	ra, 60(sp)
20011d8e:      	addi	sp, sp, 64
20011d90:      	ret
20011d92:      	j	0x20011d88 <<core::iter::adapters::take::Take<I> as core::iter::traits::iterator::Iterator>::try_fold::h2a2ef1e07625feac+0x7c>

20011d94 <<core::iter::adapters::take::Take<I> as core::iter::traits::iterator::Iterator>::try_fold::check::h2e2b5fa76d81a0e5>:
20011d94:      	addi	sp, sp, -16
20011d96:      	sw	a0, 4(sp)
20011d98:      	sw	a0, 0(sp)
20011d9a:      	addi	sp, sp, 16
20011d9c:      	ret

20011d9e <<core::iter::adapters::take::Take<I> as core::iter::traits::iterator::Iterator>::try_fold::check::{{closure}}::ha04291d9cfbf798c>:
20011d9e:      	addi	sp, sp, -64
20011da0:      	sw	ra, 60(sp)
20011da2:      	sw	a3, 0(sp)
20011da4:      	mv	a3, a2
20011da6:      	lw	a2, 0(sp)
20011da8:      	sw	a3, 4(sp)
20011daa:      	mv	a3, a1
20011dac:      	lw	a1, 4(sp)
20011dae:      	sw	a3, 8(sp)
20011db0:      	mv	a3, a0
20011db2:      	lw	a0, 8(sp)
20011db4:      	sw	a3, 12(sp)
20011db6:      	sw	a0, 36(sp)
20011db8:      	sw	a1, 40(sp)
20011dba:      	sw	a2, 44(sp)
20011dbc:      	lw	a4, 0(a0)
20011dbe:      	lw	a3, 0(a4)
20011dc0:      	addi	a3, a3, -1
20011dc2:      	sw	a3, 0(a4)
20011dc4:      	sw	a1, 24(sp)
20011dc6:      	sw	a2, 28(sp)
20011dc8:      	auipc	ra, 1048574
20011dcc:      	jalr	814(ra)
20011dd0:      	mv	a2, a0
20011dd2:      	sw	a2, 16(sp)
20011dd4:      	mv	a2, a1
20011dd6:      	sw	a2, 20(sp)
20011dd8:      	sw	a0, 48(sp)
20011dda:      	sw	a1, 52(sp)
20011ddc:      	j	0x20011dde <<core::iter::adapters::take::Take<I> as core::iter::traits::iterator::Iterator>::try_fold::check::{{closure}}::ha04291d9cfbf798c+0x40>
20011dde:      	lw	a0, 8(sp)
20011de0:      	lw	a0, 0(a0)
20011de2:      	lw	a0, 0(a0)
20011de4:      	li	a1, 0
20011de6:      	bne	a0, a1, 0x20011dfc <<core::iter::adapters::take::Take<I> as core::iter::traits::iterator::Iterator>::try_fold::check::{{closure}}::ha04291d9cfbf798c+0x5e>
20011dea:      	j	0x20011dec <<core::iter::adapters::take::Take<I> as core::iter::traits::iterator::Iterator>::try_fold::check::{{closure}}::ha04291d9cfbf798c+0x4e>
20011dec:      	lw	a1, 12(sp)
20011dee:      	lw	a0, 20(sp)
20011df0:      	lw	a2, 16(sp)
20011df2:      	sw	a2, 4(a1)
20011df4:      	sw	a0, 8(a1)
20011df6:      	li	a0, 1
20011df8:      	sw	a0, 0(a1)
20011dfa:      	j	0x20011e0e <<core::iter::adapters::take::Take<I> as core::iter::traits::iterator::Iterator>::try_fold::check::{{closure}}::ha04291d9cfbf798c+0x70>
20011dfc:      	lw	a2, 20(sp)
20011dfe:      	lw	a1, 16(sp)
20011e00:      	lw	a0, 12(sp)
20011e02:      	auipc	ra, 1048575
20011e06:      	jalr	1886(ra)
20011e0a:      	j	0x20011e0c <<core::iter::adapters::take::Take<I> as core::iter::traits::iterator::Iterator>::try_fold::check::{{closure}}::ha04291d9cfbf798c+0x6e>
20011e0c:      	j	0x20011e0e <<core::iter::adapters::take::Take<I> as core::iter::traits::iterator::Iterator>::try_fold::check::{{closure}}::ha04291d9cfbf798c+0x70>
20011e0e:      	lw	ra, 60(sp)
20011e10:      	addi	sp, sp, 64
20011e12:      	ret

20011e14 <core::ops::function::impls::<impl core::ops::function::FnMut<A> for &mut F>::call_mut::h013ade851b0859b9>:
20011e14:      	addi	sp, sp, -16
20011e16:      	sw	ra, 12(sp)
20011e18:      	sw	a2, 0(sp)
20011e1a:      	sw	a3, 4(sp)
20011e1c:      	sw	a1, 8(sp)
20011e1e:      	lw	a1, 0(a1)
20011e20:      	auipc	ra, 0
20011e24:      	jalr	-130(ra)
20011e28:      	j	0x20011e2a <core::ops::function::impls::<impl core::ops::function::FnMut<A> for &mut F>::call_mut::h013ade851b0859b9+0x16>
20011e2a:      	lw	ra, 12(sp)
20011e2c:      	addi	sp, sp, 16
20011e2e:      	ret

20011e30 <core::iter::traits::iterator::Iterator::position::h9c2876746b898df2>:
20011e30:      	addi	sp, sp, -32
20011e32:      	sw	ra, 28(sp)
20011e34:      	sw	a0, 16(sp)
20011e36:      	sw	a0, 20(sp)
20011e38:      	auipc	ra, 1048574
20011e3c:      	jalr	696(ra)
20011e40:      	j	0x20011e42 <core::iter::traits::iterator::Iterator::position::h9c2876746b898df2+0x12>
20011e42:      	lw	a0, 16(sp)
20011e44:      	li	a1, 0
20011e46:      	auipc	ra, 0
20011e4a:      	jalr	-314(ra)
20011e4e:      	sw	a0, 8(sp)
20011e50:      	sw	a1, 12(sp)
20011e52:      	j	0x20011e54 <core::iter::traits::iterator::Iterator::position::h9c2876746b898df2+0x24>
20011e54:      	lw	a1, 12(sp)
20011e56:      	lw	a0, 8(sp)
20011e58:      	auipc	ra, 1048575
20011e5c:      	jalr	1744(ra)
20011e60:      	sw	a0, 0(sp)
20011e62:      	sw	a1, 4(sp)
20011e64:      	j	0x20011e66 <core::iter::traits::iterator::Iterator::position::h9c2876746b898df2+0x36>
20011e66:      	lw	a1, 4(sp)
20011e68:      	lw	a0, 0(sp)
20011e6a:      	lw	ra, 28(sp)
20011e6c:      	addi	sp, sp, 32
20011e6e:      	ret

20011e70 <core::iter::adapters::take::Take<I>::new::h388c1468f5ca9775>:
20011e70:      	addi	sp, sp, -32
20011e72:      	mv	a3, a1
20011e74:      	sw	a2, 28(sp)
20011e76:      	lw	a1, 16(a3)
20011e78:      	sw	a1, 24(sp)
20011e7a:      	lw	a6, 12(a3)
20011e7e:      	sw	a6, 20(sp)
20011e80:      	lw	a5, 8(a3)
20011e82:      	sw	a5, 16(sp)
20011e84:      	lw	a4, 4(a3)
20011e86:      	sw	a4, 12(sp)
20011e88:      	lw	a3, 0(a3)
20011e8a:      	sw	a3, 8(sp)
20011e8c:      	sw	a6, 12(a0)
20011e90:      	sw	a5, 8(a0)
20011e92:      	sw	a4, 4(a0)
20011e94:      	sw	a3, 0(a0)
20011e96:      	sw	a1, 16(a0)
20011e98:      	sw	a2, 20(a0)
20011e9a:      	addi	sp, sp, 32
20011e9c:      	ret

20011e9e <core::mem::maybe_uninit::MaybeUninit<T>::zeroed::h8cd9b6c7ff501ec4>:
20011e9e:      	addi	sp, sp, -32
20011ea0:      	sw	ra, 28(sp)
20011ea2:      	lw	a0, 12(sp)
20011ea4:      	sw	a0, 4(sp)
20011ea6:      	j	0x20011ea8 <core::mem::maybe_uninit::MaybeUninit<T>::zeroed::h8cd9b6c7ff501ec4+0xa>
20011ea8:      	addi	a0, sp, 4
20011eaa:      	sw	a0, 8(sp)
20011eac:      	j	0x20011eae <core::mem::maybe_uninit::MaybeUninit<T>::zeroed::h8cd9b6c7ff501ec4+0x10>
20011eae:      	addi	a0, sp, 4
20011eb0:      	sw	a0, 16(sp)
20011eb2:      	li	a1, 0
20011eb4:      	sb	a1, 23(sp)
20011eb8:      	li	a2, 1
20011eba:      	sw	a2, 24(sp)
20011ebc:      	auipc	ra, 1048575
20011ec0:      	jalr	1258(ra)
20011ec4:      	j	0x20011ec6 <core::mem::maybe_uninit::MaybeUninit<T>::zeroed::h8cd9b6c7ff501ec4+0x28>
20011ec6:      	lw	a0, 4(sp)
20011ec8:      	lw	ra, 28(sp)
20011eca:      	addi	sp, sp, 32
20011ecc:      	ret

20011ece <core::ptr::mut_ptr::<impl *mut T>::guaranteed_eq::h90c63cb7c1016b15>:
20011ece:      	addi	sp, sp, -16
20011ed0:      	sw	a0, 4(sp)
20011ed2:      	sw	a1, 8(sp)
20011ed4:      	xor	a0, a0, a1
20011ed6:      	seqz	a0, a0
20011eda:      	sw	a0, 0(sp)
20011edc:      	sb	a0, 15(sp)
20011ee0:      	j	0x20011ee2 <core::ptr::mut_ptr::<impl *mut T>::guaranteed_eq::h90c63cb7c1016b15+0x14>
20011ee2:      	lw	a0, 0(sp)
20011ee4:      	addi	sp, sp, 16
20011ee6:      	ret

20011ee8 <core::ptr::mut_ptr::<impl *mut T>::sub::h525d5c979364b10d>:
20011ee8:      	addi	sp, sp, -48
20011eea:      	sw	a0, 8(sp)
20011eec:      	sw	a0, 16(sp)
20011eee:      	sw	a1, 20(sp)
20011ef0:      	sw	a1, 24(sp)
20011ef2:      	li	a0, 0
20011ef4:      	sw	a0, 28(sp)
20011ef6:      	sw	a1, 32(sp)
20011ef8:      	sub	a0, a0, a1
20011efa:      	sw	a0, 12(sp)
20011efc:      	j	0x20011efe <core::ptr::mut_ptr::<impl *mut T>::sub::h525d5c979364b10d+0x16>
20011efe:      	lw	a0, 8(sp)
20011f00:      	lw	a1, 12(sp)
20011f02:      	sw	a0, 36(sp)
20011f04:      	sw	a1, 40(sp)
20011f06:      	slli	a1, a1, 2
20011f08:      	add	a0, a0, a1
20011f0a:      	sw	a0, 4(sp)
20011f0c:      	sw	a0, 44(sp)
20011f0e:      	j	0x20011f10 <core::ptr::mut_ptr::<impl *mut T>::sub::h525d5c979364b10d+0x28>
20011f10:      	lw	a0, 4(sp)
20011f12:      	addi	sp, sp, 48
20011f14:      	ret

20011f16 <core::mem::replace::h74d8a13d13b5e74a>:
20011f16:      	addi	sp, sp, -32
20011f18:      	sw	ra, 28(sp)
20011f1a:      	sw	a1, 4(sp)
20011f1c:      	sw	a0, 8(sp)
20011f1e:      	sw	a0, 16(sp)
20011f20:      	sw	a1, 20(sp)
20011f22:      	auipc	ra, 1048575
20011f26:      	jalr	1434(ra)
20011f2a:      	mv	a1, a0
20011f2c:      	sw	a1, 12(sp)
20011f2e:      	sw	a0, 24(sp)
20011f30:      	j	0x20011f32 <core::mem::replace::h74d8a13d13b5e74a+0x1c>
20011f32:      	lw	a1, 4(sp)
20011f34:      	lw	a0, 8(sp)
20011f36:      	auipc	ra, 1048575
20011f3a:      	jalr	1464(ra)
20011f3e:      	j	0x20011f40 <core::mem::replace::h74d8a13d13b5e74a+0x2a>
20011f40:      	lw	a0, 12(sp)
20011f42:      	lw	ra, 28(sp)
20011f44:      	addi	sp, sp, 32
20011f46:      	ret

20011f48 <core::ptr::drop_in_place<&core::iter::adapters::copied::Copied<core::slice::iter::Iter<u8>>>::hba75f9e64379e0d0>:
20011f48:      	ret

20011f4a <<T as core::any::Any>::type_id::h6d5fadc9889de291>:
20011f4a:      	lui	a0, 337864
20011f4e:      	addi	a0, a0, 854
20011f52:      	lui	a1, 536935
20011f56:      	addi	a1, a1, 1137
20011f5a:      	ret

20011f5c <core::panicking::panic::hbbfd5969b5c86e6f>:
20011f5c:      	addi	sp, sp, -48
20011f5e:      	sw	ra, 44(sp)
20011f60:      	sw	a0, 32(sp)
20011f62:      	sw	a1, 36(sp)
20011f64:      	addi	a0, sp, 32
20011f66:      	sw	a0, 8(sp)
20011f68:      	li	a0, 1
20011f6a:      	sw	a0, 12(sp)
20011f6c:      	sw	zero, 16(sp)
20011f6e:      	lui	a0, 131091
20011f72:      	addi	a0, a0, -300
20011f76:      	sw	a0, 24(sp)
20011f78:      	sw	zero, 28(sp)
20011f7a:      	addi	a0, sp, 8
20011f7c:      	mv	a1, a2
20011f7e:      	auipc	ra, 0
20011f82:      	jalr	74(ra)
20011f86:      	unimp	

20011f88 <core::panicking::panic_bounds_check::h9db9f62c2a7a3e0f>:
20011f88:      	addi	sp, sp, -64
20011f8a:      	sw	ra, 60(sp)
20011f8c:      	sw	a0, 8(sp)
20011f8e:      	sw	a1, 12(sp)
20011f90:      	addi	a0, sp, 12
20011f92:      	sw	a0, 40(sp)
20011f94:      	lui	a0, 131090
20011f98:      	addi	a0, a0, 1454
20011f9c:      	sw	a0, 44(sp)
20011f9e:      	addi	a1, sp, 8
20011fa0:      	sw	a1, 48(sp)
20011fa2:      	sw	a0, 52(sp)
20011fa4:      	lui	a0, 131091
20011fa8:      	addi	a0, a0, -248
20011fac:      	sw	a0, 16(sp)
20011fae:      	li	a0, 2
20011fb0:      	sw	a0, 20(sp)
20011fb2:      	sw	zero, 24(sp)
20011fb4:      	addi	a1, sp, 40
20011fb6:      	sw	a1, 32(sp)
20011fb8:      	sw	a0, 36(sp)
20011fba:      	addi	a0, sp, 16
20011fbc:      	mv	a1, a2
20011fbe:      	auipc	ra, 0
20011fc2:      	jalr	10(ra)
20011fc6:      	unimp	

20011fc8 <core::panicking::panic_fmt::h62c187abafa44ea5>:
20011fc8:      	addi	sp, sp, -32
20011fca:      	sw	ra, 28(sp)
20011fcc:      	lui	a2, 131091
20011fd0:      	addi	a2, a2, -300
20011fd4:      	sw	a2, 8(sp)
20011fd6:      	lui	a2, 131091
20011fda:      	addi	a2, a2, -232
20011fde:      	sw	a2, 12(sp)
20011fe0:      	sw	a0, 16(sp)
20011fe2:      	sw	a1, 20(sp)
20011fe4:      	li	a0, 1
20011fe6:      	sb	a0, 24(sp)
20011fea:      	addi	a0, sp, 8
20011fec:      	auipc	ra, 0
20011ff0:      	jalr	-1526(ra)
20011ff4:      	unimp	

20011ff6 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e>:
20011ff6:      	addi	sp, sp, -48
20011ff8:      	sw	ra, 44(sp)
20011ffa:      	sw	s0, 40(sp)
20011ffc:      	sw	s1, 36(sp)
20011ffe:      	sw	s2, 32(sp)
20012000:      	sw	s3, 28(sp)
20012002:      	sw	s4, 24(sp)
20012004:      	sw	s5, 20(sp)
20012006:      	sw	s6, 16(sp)
20012008:      	sw	s7, 12(sp)
2001200a:      	sw	s8, 8(sp)
2001200c:      	sw	s9, 4(sp)
2001200e:      	sw	s10, 0(sp)
20012010:      	mv	s3, a5
20012012:      	mv	s2, a4
20012014:      	mv	s6, a3
20012016:      	mv	s5, a2
20012018:      	mv	s8, a0
2001201a:      	beqz	a1, 0x20012066 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x70>
2001201c:      	lw	a0, 0(s8)
20012020:      	andi	a1, a0, 1
20012024:      	lui	s4, 272
20012028:      	beqz	a1, 0x2001202e <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x38>
2001202a:      	li	s4, 43
2001202e:      	add	s0, a1, s3
20012032:      	andi	a0, a0, 4
20012034:      	beqz	a0, 0x20012076 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x80>
20012036:      	li	a0, 16
20012038:      	bgeu	s6, a0, 0x20012080 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x8a>
2001203c:      	li	a0, 0
2001203e:      	beqz	s6, 0x2001205a <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x64>
20012042:      	li	a1, -65
20012046:      	mv	a2, s6
20012048:      	mv	a3, s5
2001204a:      	lb	a4, 0(a3)
2001204e:      	addi	a3, a3, 1
20012050:      	slt	a4, a1, a4
20012054:      	addi	a2, a2, -1
20012056:      	add	a0, a0, a4
20012058:      	bnez	a2, 0x2001204a <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x54>
2001205a:      	add	s0, s0, a0
2001205c:      	mv	s7, s5
2001205e:      	lw	a0, 8(s8)
20012062:      	bnez	a0, 0x20012096 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0xa0>
20012064:      	j	0x200120c8 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0xd2>
20012066:      	lw	a0, 0(s8)
2001206a:      	addi	s0, s3, 1
2001206e:      	li	s4, 45
20012072:      	andi	a0, a0, 4
20012074:      	bnez	a0, 0x20012036 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x40>
20012076:      	li	s7, 0
20012078:      	lw	a0, 8(s8)
2001207c:      	bnez	a0, 0x20012096 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0xa0>
2001207e:      	j	0x200120c8 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0xd2>
20012080:      	mv	a0, s5
20012082:      	mv	a1, s6
20012084:      	auipc	ra, 0
20012088:      	jalr	568(ra)
2001208c:      	add	s0, s0, a0
2001208e:      	mv	s7, s5
20012090:      	lw	a0, 8(s8)
20012094:      	beqz	a0, 0x200120c8 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0xd2>
20012096:      	lw	s1, 12(s8)
2001209a:      	bgeu	s0, s1, 0x200120c8 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0xd2>
2001209e:      	lbu	a0, 0(s8)
200120a2:      	andi	a0, a0, 8
200120a4:      	bnez	a0, 0x20012108 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x112>
200120a6:      	lbu	a1, 32(s8)
200120aa:      	li	a2, 3
200120ac:      	li	a0, 1
200120ae:      	beq	a1, a2, 0x200120b4 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0xbe>
200120b2:      	mv	a0, a1
200120b4:      	andi	a1, a0, 3
200120b8:      	sub	a0, s1, s0
200120bc:      	beqz	a1, 0x20012152 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x15c>
200120be:      	li	a2, 1
200120c0:      	bne	a1, a2, 0x20012158 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x162>
200120c4:      	li	s9, 0
200120c6:      	j	0x20012162 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x16c>
200120c8:      	mv	a0, s8
200120ca:      	mv	a1, s4
200120cc:      	mv	a2, s7
200120ce:      	mv	a3, s6
200120d0:      	auipc	ra, 0
200120d4:      	jalr	416(ra)
200120d8:      	li	s5, 1
200120da:      	bnez	a0, 0x20012200 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x20a>
200120de:      	lw	a1, 28(s8)
200120e2:      	lw	a0, 24(s8)
200120e6:      	lw	a5, 12(a1)
200120e8:      	mv	a1, s2
200120ea:      	mv	a2, s3
200120ec:      	lw	ra, 44(sp)
200120ee:      	lw	s0, 40(sp)
200120f0:      	lw	s1, 36(sp)
200120f2:      	lw	s2, 32(sp)
200120f4:      	lw	s3, 28(sp)
200120f6:      	lw	s4, 24(sp)
200120f8:      	lw	s5, 20(sp)
200120fa:      	lw	s6, 16(sp)
200120fc:      	lw	s7, 12(sp)
200120fe:      	lw	s8, 8(sp)
20012100:      	lw	s9, 4(sp)
20012102:      	lw	s10, 0(sp)
20012104:      	addi	sp, sp, 48
20012106:      	jr	a5
20012108:      	lw	s9, 4(s8)
2001210c:      	li	a0, 48
20012110:      	lbu	s10, 32(s8)
20012114:      	sw	a0, 4(s8)
20012118:      	li	s5, 1
2001211a:      	sb	s5, 32(s8)
2001211e:      	mv	a0, s8
20012120:      	mv	a1, s4
20012122:      	mv	a2, s7
20012124:      	mv	a3, s6
20012126:      	auipc	ra, 0
2001212a:      	jalr	330(ra)
2001212e:      	bnez	a0, 0x20012200 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x20a>
20012130:      	lbu	a1, 32(s8)
20012134:      	li	a2, 3
20012136:      	li	a0, 1
20012138:      	beq	a1, a2, 0x2001213e <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x148>
2001213c:      	mv	a0, a1
2001213e:      	andi	a1, a0, 3
20012142:      	sub	a0, s1, s0
20012146:      	beqz	a1, 0x200121d0 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x1da>
20012148:      	li	a2, 1
2001214a:      	bne	a1, a2, 0x200121d6 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x1e0>
2001214e:      	li	s4, 0
20012150:      	j	0x200121e0 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x1ea>
20012152:      	mv	s9, a0
20012154:      	li	a0, 0
20012156:      	j	0x20012162 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x16c>
20012158:      	addi	a1, a0, 1
2001215c:      	srli	a0, a0, 1
2001215e:      	srli	s9, a1, 1
20012162:      	lw	s5, 24(s8)
20012166:      	lw	s1, 28(s8)
2001216a:      	lw	s10, 4(s8)
2001216e:      	addi	s0, a0, 1
20012172:      	addi	s0, s0, -1
20012174:      	beqz	s0, 0x20012182 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x18c>
20012176:      	lw	a2, 16(s1)
20012178:      	mv	a0, s5
2001217a:      	mv	a1, s10
2001217c:      	jalr	a2
2001217e:      	beqz	a0, 0x20012172 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x17c>
20012180:      	j	0x200121fe <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x208>
20012182:      	lui	a0, 272
20012186:      	li	s5, 1
20012188:      	beq	s10, a0, 0x20012200 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x20a>
2001218c:      	mv	a0, s8
2001218e:      	mv	a1, s4
20012190:      	mv	a2, s7
20012192:      	mv	a3, s6
20012194:      	auipc	ra, 0
20012198:      	jalr	220(ra)
2001219c:      	bnez	a0, 0x20012200 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x20a>
2001219e:      	lw	a1, 28(s8)
200121a2:      	lw	a0, 24(s8)
200121a6:      	lw	a3, 12(a1)
200121a8:      	mv	a1, s2
200121aa:      	mv	a2, s3
200121ac:      	jalr	a3
200121ae:      	bnez	a0, 0x20012200 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x20a>
200121b0:      	lw	s2, 24(s8)
200121b4:      	lw	s1, 28(s8)
200121b8:      	li	s0, 0
200121ba:      	beq	s9, s0, 0x20012268 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x272>
200121be:      	lw	a2, 16(s1)
200121c0:      	addi	s0, s0, 1
200121c2:      	mv	a0, s2
200121c4:      	mv	a1, s10
200121c6:      	jalr	a2
200121c8:      	beqz	a0, 0x200121ba <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x1c4>
200121ca:      	addi	a0, s0, -1
200121ce:      	j	0x2001226a <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x274>
200121d0:      	mv	s4, a0
200121d2:      	li	a0, 0
200121d4:      	j	0x200121e0 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x1ea>
200121d6:      	addi	a1, a0, 1
200121da:      	srli	a0, a0, 1
200121dc:      	srli	s4, a1, 1
200121e0:      	lw	s5, 24(s8)
200121e4:      	lw	s1, 28(s8)
200121e8:      	lw	s6, 4(s8)
200121ec:      	addi	s0, a0, 1
200121f0:      	addi	s0, s0, -1
200121f2:      	beqz	s0, 0x2001221e <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x228>
200121f4:      	lw	a2, 16(s1)
200121f6:      	mv	a0, s5
200121f8:      	mv	a1, s6
200121fa:      	jalr	a2
200121fc:      	beqz	a0, 0x200121f0 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x1fa>
200121fe:      	li	s5, 1
20012200:      	mv	a0, s5
20012202:      	lw	ra, 44(sp)
20012204:      	lw	s0, 40(sp)
20012206:      	lw	s1, 36(sp)
20012208:      	lw	s2, 32(sp)
2001220a:      	lw	s3, 28(sp)
2001220c:      	lw	s4, 24(sp)
2001220e:      	lw	s5, 20(sp)
20012210:      	lw	s6, 16(sp)
20012212:      	lw	s7, 12(sp)
20012214:      	lw	s8, 8(sp)
20012216:      	lw	s9, 4(sp)
20012218:      	lw	s10, 0(sp)
2001221a:      	addi	sp, sp, 48
2001221c:      	ret
2001221e:      	lui	a0, 272
20012222:      	li	s5, 1
20012224:      	beq	s6, a0, 0x20012200 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x20a>
20012228:      	lw	a1, 28(s8)
2001222c:      	lw	a0, 24(s8)
20012230:      	lw	a3, 12(a1)
20012232:      	mv	a1, s2
20012234:      	mv	a2, s3
20012236:      	jalr	a3
20012238:      	bnez	a0, 0x20012200 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x20a>
2001223a:      	lw	s2, 24(s8)
2001223e:      	lw	s1, 28(s8)
20012242:      	li	s0, 0
20012244:      	beq	s4, s0, 0x2001225c <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x266>
20012248:      	lw	a2, 16(s1)
2001224a:      	addi	s0, s0, 1
2001224c:      	mv	a0, s2
2001224e:      	mv	a1, s6
20012250:      	jalr	a2
20012252:      	beqz	a0, 0x20012244 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x24e>
20012254:      	addi	a0, s0, -1
20012258:      	bltu	a0, s4, 0x20012200 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x20a>
2001225c:      	li	s5, 0
2001225e:      	sw	s9, 4(s8)
20012262:      	sb	s10, 32(s8)
20012266:      	j	0x20012200 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x20a>
20012268:      	mv	a0, s9
2001226a:      	sltu	s5, a0, s9
2001226e:      	j	0x20012200 <core::fmt::Formatter::pad_integral::ha10cb533649ec68e+0x20a>

20012270 <core::fmt::Formatter::pad_integral::write_prefix::h9c2d4994c87ce818>:
20012270:      	addi	sp, sp, -16
20012272:      	sw	ra, 12(sp)
20012274:      	sw	s0, 8(sp)
20012276:      	sw	s1, 4(sp)
20012278:      	sw	s2, 0(sp)
2001227a:      	lui	a4, 272
2001227e:      	mv	s2, a3
20012280:      	mv	s1, a2
20012282:      	mv	s0, a0
20012284:      	beq	a1, a4, 0x20012296 <core::fmt::Formatter::pad_integral::write_prefix::h9c2d4994c87ce818+0x26>
20012288:      	lw	a2, 28(s0)
2001228a:      	lw	a0, 24(s0)
2001228c:      	lw	a2, 16(a2)
2001228e:      	jalr	a2
20012290:      	mv	a1, a0
20012292:      	li	a0, 1
20012294:      	bnez	a1, 0x200122b0 <core::fmt::Formatter::pad_integral::write_prefix::h9c2d4994c87ce818+0x40>
20012296:      	beqz	s1, 0x200122ae <core::fmt::Formatter::pad_integral::write_prefix::h9c2d4994c87ce818+0x3e>
20012298:      	lw	a1, 28(s0)
2001229a:      	lw	a0, 24(s0)
2001229c:      	lw	a5, 12(a1)
2001229e:      	mv	a1, s1
200122a0:      	mv	a2, s2
200122a2:      	lw	ra, 12(sp)
200122a4:      	lw	s0, 8(sp)
200122a6:      	lw	s1, 4(sp)
200122a8:      	lw	s2, 0(sp)
200122aa:      	addi	sp, sp, 16
200122ac:      	jr	a5
200122ae:      	li	a0, 0
200122b0:      	lw	ra, 12(sp)
200122b2:      	lw	s0, 8(sp)
200122b4:      	lw	s1, 4(sp)
200122b6:      	lw	s2, 0(sp)
200122b8:      	addi	sp, sp, 16
200122ba:      	ret

200122bc <core::str::count::do_count_chars::hcb0097adeed44bbf>:
200122bc:      	mv	a2, a0
200122be:      	addi	a0, a0, 3
200122c0:      	andi	a0, a0, -4
200122c2:      	sub	a7, a0, a2
200122c6:      	bltu	a1, a7, 0x200122dc <core::str::count::do_count_chars::hcb0097adeed44bbf+0x20>
200122ca:      	sub	a6, a1, a7
200122ce:      	sltiu	a3, a6, 4
200122d2:      	li	a4, 4
200122d4:      	sltu	a4, a4, a7
200122d8:      	or	a3, a3, a4
200122da:      	beqz	a3, 0x200122f6 <core::str::count::do_count_chars::hcb0097adeed44bbf+0x3a>
200122dc:      	li	a0, 0
200122de:      	beqz	a1, 0x200122f4 <core::str::count::do_count_chars::hcb0097adeed44bbf+0x38>
200122e0:      	li	a3, -65
200122e4:      	lb	a4, 0(a2)
200122e8:      	addi	a2, a2, 1
200122ea:      	slt	a4, a3, a4
200122ee:      	addi	a1, a1, -1
200122f0:      	add	a0, a0, a4
200122f2:      	bnez	a1, 0x200122e4 <core::str::count::do_count_chars::hcb0097adeed44bbf+0x28>
200122f4:      	ret
200122f6:      	andi	a4, a6, 3
200122fa:      	li	a3, 0
200122fc:      	beqz	a7, 0x2001231a <core::str::count::do_count_chars::hcb0097adeed44bbf+0x5e>
20012300:      	sub	a0, a2, a0
20012304:      	li	t0, -65
20012308:      	mv	a5, a2
2001230a:      	lb	a1, 0(a5)
2001230e:      	addi	a5, a5, 1
20012310:      	slt	a1, t0, a1
20012314:      	addi	a0, a0, 1
20012316:      	add	a3, a3, a1
20012318:      	bnez	a0, 0x2001230a <core::str::count::do_count_chars::hcb0097adeed44bbf+0x4e>
2001231a:      	add	t0, a2, a7
2001231e:      	li	a1, 0
20012320:      	beqz	a4, 0x2001233e <core::str::count::do_count_chars::hcb0097adeed44bbf+0x82>
20012322:      	andi	a0, a6, -4
20012326:      	add	a2, t0, a0
2001232a:      	li	a0, -65
2001232e:      	lb	a5, 0(a2)
20012332:      	addi	a2, a2, 1
20012334:      	slt	a5, a0, a5
20012338:      	addi	a4, a4, -1
2001233a:      	add	a1, a1, a5
2001233c:      	bnez	a4, 0x2001232e <core::str::count::do_count_chars::hcb0097adeed44bbf+0x72>
2001233e:      	srli	a2, a6, 2
20012342:      	lui	a0, 4112
20012346:      	addi	t4, a0, 257
2001234a:      	lui	a0, 4080
2001234e:      	addi	a7, a0, 255
20012352:      	lui	a0, 16
20012354:      	addi	a6, a0, 1
20012358:      	add	a0, a1, a3
2001235c:      	j	0x20012384 <core::str::count::do_count_chars::hcb0097adeed44bbf+0xc8>
2001235e:      	slli	a1, t2, 2
20012362:      	add	t0, t0, a1
20012364:      	sub	a2, t1, t2
20012368:      	andi	a1, t2, 3
2001236c:      	and	a3, a5, a7
20012370:      	srli	a4, a5, 8
20012374:      	and	a4, a4, a7
20012378:      	add	a3, a3, a4
2001237a:      	mul	a3, a3, a6
2001237e:      	srli	a3, a3, 16
20012380:      	add	a0, a0, a3
20012382:      	bnez	a1, 0x200123fc <core::str::count::do_count_chars::hcb0097adeed44bbf+0x140>
20012384:      	beqz	a2, 0x200122f4 <core::str::count::do_count_chars::hcb0097adeed44bbf+0x38>
20012386:      	mv	t1, a2
20012388:      	li	a1, 192
2001238c:      	mv	t2, a2
2001238e:      	bltu	a2, a1, 0x20012396 <core::str::count::do_count_chars::hcb0097adeed44bbf+0xda>
20012392:      	li	t2, 192
20012396:      	andi	a1, t2, 252
2001239a:      	slli	a1, a1, 2
2001239c:      	add	t3, t0, a1
200123a0:      	li	a5, 0
200123a2:      	beqz	a1, 0x2001235e <core::str::count::do_count_chars::hcb0097adeed44bbf+0xa2>
200123a4:      	mv	a1, t0
200123a6:      	lw	a2, 0(a1)
200123a8:      	not	a3, a2
200123ac:      	srli	a3, a3, 7
200123ae:      	srli	a2, a2, 6
200123b0:      	lw	a4, 4(a1)
200123b2:      	or	a2, a2, a3
200123b4:      	and	a2, a2, t4
200123b8:      	add	a2, a2, a5
200123ba:      	not	a3, a4
200123be:      	srli	a3, a3, 7
200123c0:      	srli	a4, a4, 6
200123c2:      	lw	a5, 8(a1)
200123c4:      	or	a3, a3, a4
200123c6:      	and	a3, a3, t4
200123ca:      	add	a2, a2, a3
200123cc:      	not	a3, a5
200123d0:      	srli	a3, a3, 7
200123d2:      	srli	a4, a5, 6
200123d6:      	lw	a5, 12(a1)
200123d8:      	or	a3, a3, a4
200123da:      	and	a3, a3, t4
200123de:      	add	a2, a2, a3
200123e0:      	not	a3, a5
200123e4:      	srli	a3, a3, 7
200123e6:      	srli	a4, a5, 6
200123ea:      	or	a3, a3, a4
200123ec:      	and	a3, a3, t4
200123f0:      	addi	a1, a1, 16
200123f2:      	add	a5, a3, a2
200123f6:      	bne	a1, t3, 0x200123a6 <core::str::count::do_count_chars::hcb0097adeed44bbf+0xea>
200123fa:      	j	0x2001235e <core::str::count::do_count_chars::hcb0097adeed44bbf+0xa2>
200123fc:      	li	a1, 192
20012400:      	bltu	t1, a1, 0x20012408 <core::str::count::do_count_chars::hcb0097adeed44bbf+0x14c>
20012404:      	li	t1, 192
20012408:      	li	a1, 0
2001240a:      	andi	a2, t1, 3
2001240e:      	slli	a2, a2, 2
20012410:      	lw	a3, 0(t3)
20012414:      	addi	t3, t3, 4
20012416:      	not	a4, a3
2001241a:      	srli	a4, a4, 7
2001241c:      	srli	a3, a3, 6
2001241e:      	or	a3, a3, a4
20012420:      	and	a3, a3, t4
20012424:      	addi	a2, a2, -4
20012426:      	add	a1, a1, a3
20012428:      	bnez	a2, 0x20012410 <core::str::count::do_count_chars::hcb0097adeed44bbf+0x154>
2001242a:      	and	a2, a1, a7
2001242e:      	srli	a1, a1, 8
20012430:      	and	a1, a1, a7
20012434:      	add	a1, a1, a2
20012436:      	mul	a1, a1, a6
2001243a:      	srli	a1, a1, 16
2001243c:      	add	a0, a0, a1
2001243e:      	ret

20012440 <core::fmt::num::imp::fmt_u32::h89559eb00af7d566>:
20012440:      	addi	sp, sp, -64
20012442:      	sw	ra, 60(sp)
20012444:      	sw	s0, 56(sp)
20012446:      	sw	s1, 52(sp)
20012448:      	mv	a6, a2
2001244a:      	srli	a3, a0, 4
2001244e:      	li	a4, 625
20012452:      	li	a2, 39
20012456:      	bgeu	a3, a4, 0x2001247a <core::fmt::num::imp::fmt_u32::h89559eb00af7d566+0x3a>
2001245a:      	li	a3, 99
2001245e:      	bltu	a3, a0, 0x20012512 <core::fmt::num::imp::fmt_u32::h89559eb00af7d566+0xd2>
20012462:      	li	a3, 10
20012464:      	bgeu	a0, a3, 0x2001255c <core::fmt::num::imp::fmt_u32::h89559eb00af7d566+0x11c>
20012468:      	addi	a2, a2, -1
2001246a:      	addi	a3, sp, 13
2001246e:      	add	a3, a3, a2
20012470:      	addi	a0, a0, 48
20012474:      	sb	a0, 0(a3)
20012478:      	j	0x20012580 <core::fmt::num::imp::fmt_u32::h89559eb00af7d566+0x140>
2001247a:      	li	a2, 0
2001247c:      	lui	a3, 858993
20012480:      	addi	t0, a3, 1881
20012484:      	lui	a3, 2
20012486:      	addi	t2, a3, 1808
2001248a:      	lui	a3, 1
2001248c:      	addi	t3, a3, 1147
20012490:      	li	a7, 100
20012494:      	lui	a4, 131091
20012498:      	addi	t5, a4, -216
2001249c:      	addi	t1, sp, 13
200124a0:      	lui	a5, 24414
200124a4:      	addi	t4, a5, 255
200124a8:      	mv	a3, a0
200124aa:      	mulhu	a0, a0, t0
200124ae:      	srli	a0, a0, 13
200124b0:      	mul	a5, a0, t2
200124b4:      	sub	a5, a3, a5
200124b8:      	slli	a4, a5, 16
200124bc:      	srli	a4, a4, 18
200124be:      	mul	a4, a4, t3
200124c2:      	srli	a4, a4, 17
200124c4:      	slli	t6, a4, 1
200124c8:      	mul	a4, a4, a7
200124cc:      	sub	a4, a5, a4
200124d0:      	slli	a4, a4, 17
200124d2:      	srli	s0, a4, 16
200124d6:      	add	a5, t6, t5
200124da:      	add	a4, t1, a2
200124de:      	lbu	t6, 0(a5)
200124e2:      	lb	a5, 1(a5)
200124e6:      	add	s0, s0, t5
200124e8:      	lb	s1, 1(s0)
200124ec:      	lbu	s0, 0(s0)
200124f0:      	sb	a5, 36(a4)
200124f4:      	sb	t6, 35(a4)
200124f8:      	sb	s1, 38(a4)
200124fc:      	sb	s0, 37(a4)
20012500:      	addi	a2, a2, -4
20012502:      	bltu	t4, a3, 0x200124a8 <core::fmt::num::imp::fmt_u32::h89559eb00af7d566+0x68>
20012506:      	addi	a2, a2, 39
2001250a:      	li	a3, 99
2001250e:      	bgeu	a3, a0, 0x20012462 <core::fmt::num::imp::fmt_u32::h89559eb00af7d566+0x22>
20012512:      	slli	a3, a0, 16
20012516:      	srli	a3, a3, 18
20012518:      	lui	a4, 1
2001251a:      	addi	a4, a4, 1147
2001251e:      	mul	a3, a3, a4
20012522:      	srli	a3, a3, 17
20012524:      	li	a4, 100
20012528:      	mul	a4, a3, a4
2001252c:      	sub	a0, a0, a4
2001252e:      	slli	a0, a0, 17
20012530:      	srli	a0, a0, 16
20012532:      	addi	a2, a2, -2
20012534:      	lui	a4, 131091
20012538:      	addi	a4, a4, -216
2001253c:      	add	a0, a0, a4
2001253e:      	lb	a4, 1(a0)
20012542:      	lbu	a0, 0(a0)
20012546:      	addi	a5, sp, 13
2001254a:      	add	a5, a5, a2
2001254c:      	sb	a4, 1(a5)
20012550:      	sb	a0, 0(a5)
20012554:      	mv	a0, a3
20012556:      	li	a3, 10
20012558:      	bltu	a0, a3, 0x20012468 <core::fmt::num::imp::fmt_u32::h89559eb00af7d566+0x28>
2001255c:      	slli	a0, a0, 1
2001255e:      	addi	a2, a2, -2
20012560:      	lui	a3, 131091
20012564:      	addi	a3, a3, -216
20012568:      	add	a0, a0, a3
2001256a:      	lb	a3, 1(a0)
2001256e:      	lbu	a0, 0(a0)
20012572:      	addi	a4, sp, 13
20012576:      	add	a4, a4, a2
20012578:      	sb	a3, 1(a4)
2001257c:      	sb	a0, 0(a4)
20012580:      	addi	a0, sp, 13
20012584:      	add	a4, a0, a2
20012588:      	li	a0, 39
2001258c:      	sub	a5, a0, a2
20012590:      	lui	a0, 131091
20012594:      	addi	a2, a0, -300
20012598:      	mv	a0, a6
2001259a:      	li	a3, 0
2001259c:      	auipc	ra, 0
200125a0:      	jalr	-1446(ra)
200125a4:      	lw	ra, 60(sp)
200125a6:      	lw	s0, 56(sp)
200125a8:      	lw	s1, 52(sp)
200125aa:      	addi	sp, sp, 64
200125ac:      	ret

200125ae <core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt::h0f29cfa090d3fc38>:
200125ae:      	lw	a0, 0(a0)
200125b0:      	mv	a2, a1
200125b2:      	li	a1, 1
200125b4:      	auipc	t1, 0
200125b8:      	jr	-372(t1)

200125bc <memset>:
200125bc:      	auipc	t1, 0
200125c0:      	jr	218(t1)

200125c4 <__umoddi3>:
200125c4:      	addi	sp, sp, -32
200125c6:      	sw	ra, 28(sp)
200125c8:      	mv	a4, a3
200125ca:      	mv	a3, a2
200125cc:      	mv	a2, a1
200125ce:      	mv	a1, a0
200125d0:      	addi	a0, sp, 8
200125d2:      	auipc	ra, 0
200125d6:      	jalr	296(ra)
200125da:      	lw	a1, 20(sp)
200125dc:      	lw	a0, 16(sp)
200125de:      	lw	ra, 28(sp)
200125e0:      	addi	sp, sp, 32
200125e2:      	ret

200125e4 <compiler_builtins::mem::memcpy::h5d3d6687dd26525b>:
200125e4:      	li	a3, 15
200125e6:      	bgeu	a3, a2, 0x2001265e <compiler_builtins::mem::memcpy::h5d3d6687dd26525b+0x7a>
200125ea:      	neg	a3, a0
200125ee:      	andi	a6, a3, 3
200125f2:      	add	t2, a0, a6
200125f6:      	beqz	a6, 0x2001260e <compiler_builtins::mem::memcpy::h5d3d6687dd26525b+0x2a>
200125fa:      	mv	a5, a0
200125fc:      	mv	a3, a1
200125fe:      	lb	a4, 0(a3)
20012602:      	sb	a4, 0(a5)
20012606:      	addi	a5, a5, 1
20012608:      	addi	a3, a3, 1
2001260a:      	bltu	a5, t2, 0x200125fe <compiler_builtins::mem::memcpy::h5d3d6687dd26525b+0x1a>
2001260e:      	add	a7, a1, a6
20012612:      	sub	a6, a2, a6
20012616:      	andi	t0, a6, -4
2001261a:      	andi	a1, a7, 3
2001261e:      	add	a3, t2, t0
20012622:      	beqz	a1, 0x20012664 <compiler_builtins::mem::memcpy::h5d3d6687dd26525b+0x80>
20012624:      	blez	t0, 0x20012678 <compiler_builtins::mem::memcpy::h5d3d6687dd26525b+0x94>
20012628:      	slli	a1, a7, 3
2001262c:      	andi	t1, a1, 24
20012630:      	andi	a4, a7, -4
20012634:      	lw	a2, 0(a4)
20012636:      	neg	a1, a1
2001263a:      	andi	t3, a1, 24
2001263e:      	addi	a5, a4, 4
20012642:      	lw	a4, 0(a5)
20012644:      	srl	a2, a2, t1
20012648:      	sll	a1, a4, t3
2001264c:      	or	a1, a1, a2
2001264e:      	sw	a1, 0(t2)
20012652:      	addi	t2, t2, 4
20012654:      	addi	a5, a5, 4
20012656:      	mv	a2, a4
20012658:      	bltu	t2, a3, 0x20012642 <compiler_builtins::mem::memcpy::h5d3d6687dd26525b+0x5e>
2001265c:      	j	0x20012678 <compiler_builtins::mem::memcpy::h5d3d6687dd26525b+0x94>
2001265e:      	mv	a3, a0
20012660:      	bnez	a2, 0x20012682 <compiler_builtins::mem::memcpy::h5d3d6687dd26525b+0x9e>
20012662:      	j	0x20012694 <compiler_builtins::mem::memcpy::h5d3d6687dd26525b+0xb0>
20012664:      	blez	t0, 0x20012678 <compiler_builtins::mem::memcpy::h5d3d6687dd26525b+0x94>
20012668:      	mv	a1, a7
2001266a:      	lw	a2, 0(a1)
2001266c:      	sw	a2, 0(t2)
20012670:      	addi	t2, t2, 4
20012672:      	addi	a1, a1, 4
20012674:      	bltu	t2, a3, 0x2001266a <compiler_builtins::mem::memcpy::h5d3d6687dd26525b+0x86>
20012678:      	add	a1, a7, t0
2001267c:      	andi	a2, a6, 3
20012680:      	beqz	a2, 0x20012694 <compiler_builtins::mem::memcpy::h5d3d6687dd26525b+0xb0>
20012682:      	add	a2, a2, a3
20012684:      	lb	a4, 0(a1)
20012688:      	sb	a4, 0(a3)
2001268c:      	addi	a3, a3, 1
2001268e:      	addi	a1, a1, 1
20012690:      	bltu	a3, a2, 0x20012684 <compiler_builtins::mem::memcpy::h5d3d6687dd26525b+0xa0>
20012694:      	ret

20012696 <compiler_builtins::mem::memset::h302349b36fde6027>:
20012696:      	li	a3, 15
20012698:      	bgeu	a3, a2, 0x200126e0 <compiler_builtins::mem::memset::h302349b36fde6027+0x4a>
2001269c:      	neg	a3, a0
200126a0:      	andi	a3, a3, 3
200126a2:      	add	a4, a0, a3
200126a6:      	beqz	a3, 0x200126b4 <compiler_builtins::mem::memset::h302349b36fde6027+0x1e>
200126a8:      	mv	a5, a0
200126aa:      	sb	a1, 0(a5)
200126ae:      	addi	a5, a5, 1
200126b0:      	bltu	a5, a4, 0x200126aa <compiler_builtins::mem::memset::h302349b36fde6027+0x14>
200126b4:      	sub	a2, a2, a3
200126b6:      	andi	a5, a2, -4
200126ba:      	add	a3, a4, a5
200126be:      	blez	a5, 0x200126da <compiler_builtins::mem::memset::h302349b36fde6027+0x44>
200126c2:      	andi	a6, a1, 255
200126c6:      	lui	a5, 4112
200126ca:      	addi	a5, a5, 257
200126ce:      	mul	a5, a6, a5
200126d2:      	sw	a5, 0(a4)
200126d4:      	addi	a4, a4, 4
200126d6:      	bltu	a4, a3, 0x200126d2 <compiler_builtins::mem::memset::h302349b36fde6027+0x3c>
200126da:      	andi	a2, a2, 3
200126dc:      	bnez	a2, 0x200126e4 <compiler_builtins::mem::memset::h302349b36fde6027+0x4e>
200126de:      	j	0x200126f0 <compiler_builtins::mem::memset::h302349b36fde6027+0x5a>
200126e0:      	mv	a3, a0
200126e2:      	beqz	a2, 0x200126f0 <compiler_builtins::mem::memset::h302349b36fde6027+0x5a>
200126e4:      	add	a2, a2, a3
200126e6:      	sb	a1, 0(a3)
200126ea:      	addi	a3, a3, 1
200126ec:      	bltu	a3, a2, 0x200126e6 <compiler_builtins::mem::memset::h302349b36fde6027+0x50>
200126f0:      	ret

200126f2 <memcpy>:
200126f2:      	auipc	t1, 0
200126f6:      	jr	-270(t1)

200126fa <compiler_builtins::int::specialized_div_rem::u64_div_rem::h4155370659e27846>:
200126fa:      	beqz	a3, 0x200126fe <compiler_builtins::int::specialized_div_rem::u64_div_rem::h4155370659e27846+0x4>
200126fc:      	beqz	a4, 0x20012758 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h4155370659e27846+0x5e>
200126fe:      	seqz	a6, a2
20012702:      	beq	a2, a4, 0x20012748 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h4155370659e27846+0x4e>
20012706:      	sltu	a5, a2, a4
2001270a:      	or	a5, a6, a5
2001270e:      	bnez	a5, 0x20012752 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h4155370659e27846+0x58>
20012710:      	srli	t0, a2, 16
20012714:      	sltu	a5, t0, a4
20012718:      	xori	a6, a5, 1
2001271c:      	mv	a7, a2
2001271e:      	bltu	t0, a4, 0x20012724 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h4155370659e27846+0x2a>
20012722:      	mv	a7, t0
20012724:      	srli	a5, a7, 8
20012728:      	slli	a6, a6, 4
2001272a:      	bltu	a5, a4, 0x20012796 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h4155370659e27846+0x9c>
2001272e:      	ori	a6, a6, 8
20012732:      	srli	a7, a5, 4
20012736:      	bgeu	a7, a4, 0x200127a0 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h4155370659e27846+0xa6>
2001273a:      	mv	a7, a5
2001273c:      	srli	a5, a7, 2
20012740:      	bgeu	a5, a4, 0x200127ac <compiler_builtins::int::specialized_div_rem::u64_div_rem::h4155370659e27846+0xb2>
20012744:      	mv	a5, a7
20012746:      	j	0x200127b0 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h4155370659e27846+0xb6>
20012748:      	sltu	a5, a1, a3
2001274c:      	or	a5, a6, a5
20012750:      	beqz	a5, 0x20012710 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h4155370659e27846+0x16>
20012752:      	li	a7, 0
20012754:      	li	a6, 0
20012756:      	j	0x20012844 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h4155370659e27846+0x14a>
20012758:      	beqz	a2, 0x20012852 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h4155370659e27846+0x158>
2001275a:      	bgeu	a2, a3, 0x20012862 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h4155370659e27846+0x168>
2001275e:      	srli	t0, a3, 16
20012762:      	sltu	a5, t0, a2
20012766:      	xori	a6, a5, 1
2001276a:      	mv	a7, a3
2001276c:      	bltu	t0, a2, 0x20012772 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h4155370659e27846+0x78>
20012770:      	mv	a7, t0
20012772:      	srli	a5, a7, 8
20012776:      	slli	a6, a6, 4
20012778:      	bltu	a5, a2, 0x20012888 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h4155370659e27846+0x18e>
2001277c:      	ori	a6, a6, 8
20012780:      	srli	a7, a5, 4
20012784:      	bgeu	a7, a2, 0x20012892 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h4155370659e27846+0x198>
20012788:      	mv	a7, a5
2001278a:      	srli	a5, a7, 2
2001278e:      	bgeu	a5, a2, 0x2001289e <compiler_builtins::int::specialized_div_rem::u64_div_rem::h4155370659e27846+0x1a4>
20012792:      	mv	a5, a7
20012794:      	j	0x200128a2 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h4155370659e27846+0x1a8>
20012796:      	mv	a5, a7
20012798:      	srli	a7, a5, 4
2001279c:      	bltu	a7, a4, 0x2001273a <compiler_builtins::int::specialized_div_rem::u64_div_rem::h4155370659e27846+0x40>
200127a0:      	ori	a6, a6, 4
200127a4:      	srli	a5, a7, 2
200127a8:      	bltu	a5, a4, 0x20012744 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h4155370659e27846+0x4a>
200127ac:      	ori	a6, a6, 2
200127b0:      	srli	a5, a5, 1
200127b2:      	sltu	a5, a5, a4
200127b6:      	xori	a5, a5, 1
200127ba:      	or	t0, a6, a5
200127be:      	addi	a5, t0, -32
200127c2:      	bltz	a5, 0x200127ce <compiler_builtins::int::specialized_div_rem::u64_div_rem::h4155370659e27846+0xd4>
200127c6:      	li	a6, 0
200127c8:      	sll	t1, a3, a5
200127cc:      	j	0x200127e8 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h4155370659e27846+0xee>
200127ce:      	sll	a6, a4, t0
200127d2:      	li	a5, 31
200127d4:      	sub	a7, a5, t0
200127d8:      	srli	a5, a3, 1
200127dc:      	srl	a5, a5, a7
200127e0:      	or	t1, a6, a5
200127e4:      	sll	a6, a3, t0
200127e8:      	li	a7, 0
200127ea:      	li	a5, 1
200127ec:      	sll	t0, a5, t0
200127f0:      	j	0x20012806 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h4155370659e27846+0x10c>
200127f2:      	srli	a6, a6, 1
200127f6:      	slli	a5, t1, 31
200127fa:      	or	a6, a6, a5
200127fe:      	srli	t1, t1, 1
20012802:      	srli	t0, t0, 1
20012806:      	sltu	t2, a1, a6
2001280a:      	sub	a5, a2, t1
2001280e:      	sub	a5, a5, t2
20012812:      	bltz	a5, 0x200127f2 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h4155370659e27846+0xf8>
20012816:      	sub	a1, a1, a6
2001281a:      	beq	a5, a4, 0x2001282e <compiler_builtins::int::specialized_div_rem::u64_div_rem::h4155370659e27846+0x134>
2001281e:      	sltu	a2, a5, a4
20012822:      	xori	a2, a2, 1
20012826:      	or	a7, a7, t0
2001282a:      	bnez	a2, 0x2001283c <compiler_builtins::int::specialized_div_rem::u64_div_rem::h4155370659e27846+0x142>
2001282c:      	j	0x20012840 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h4155370659e27846+0x146>
2001282e:      	sltu	a2, a1, a3
20012832:      	xori	a2, a2, 1
20012836:      	or	a7, a7, t0
2001283a:      	beqz	a2, 0x20012840 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h4155370659e27846+0x146>
2001283c:      	mv	a2, a5
2001283e:      	j	0x200127f2 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h4155370659e27846+0xf8>
20012840:      	li	a6, 0
20012842:      	mv	a2, a5
20012844:      	sw	a1, 8(a0)
20012846:      	sw	a7, 0(a0)
2001284a:      	sw	a2, 12(a0)
2001284c:      	sw	a6, 4(a0)
20012850:      	ret
20012852:      	li	a2, 0
20012854:      	li	a6, 0
20012856:      	divu	a7, a1, a3
2001285a:      	mul	a3, a7, a3
2001285e:      	sub	a1, a1, a3
20012860:      	j	0x20012844 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h4155370659e27846+0x14a>
20012862:      	bne	a2, a3, 0x200128d0 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h4155370659e27846+0x1d6>
20012866:      	divu	a3, a1, a2
2001286a:      	mul	a2, a3, a2
2001286e:      	sub	a1, a1, a2
20012870:      	addi	a2, a3, -1
20012874:      	sltu	a3, a2, a3
20012878:      	addi	a7, a2, 1
2001287c:      	sltu	a2, a7, a2
20012880:      	add	a6, a3, a2
20012884:      	li	a2, 0
20012886:      	j	0x20012844 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h4155370659e27846+0x14a>
20012888:      	mv	a5, a7
2001288a:      	srli	a7, a5, 4
2001288e:      	bltu	a7, a2, 0x20012788 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h4155370659e27846+0x8e>
20012892:      	ori	a6, a6, 4
20012896:      	srli	a5, a7, 2
2001289a:      	bltu	a5, a2, 0x20012792 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h4155370659e27846+0x98>
2001289e:      	ori	a6, a6, 2
200128a2:      	srli	a5, a5, 1
200128a4:      	sltu	a5, a5, a2
200128a8:      	xori	a5, a5, 1
200128ac:      	or	t0, a6, a5
200128b0:      	li	a6, 31
200128b2:      	li	a7, 31
200128b4:      	beqz	t0, 0x200128c0 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h4155370659e27846+0x1c6>
200128b8:      	li	a5, 32
200128bc:      	sub	a7, a5, t0
200128c0:      	addi	a5, a7, -32
200128c4:      	bltz	a5, 0x20012918 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h4155370659e27846+0x21e>
200128c8:      	li	a6, 0
200128ca:      	sll	t1, a3, a5
200128ce:      	j	0x20012930 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h4155370659e27846+0x236>
200128d0:      	srli	a7, a3, 16
200128d4:      	divu	a6, a2, a3
200128d8:      	mul	a5, a6, a3
200128dc:      	sub	a2, a2, a5
200128de:      	bnez	a7, 0x20012980 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h4155370659e27846+0x286>
200128e2:      	srli	a4, a1, 16
200128e6:      	slli	a2, a2, 16
200128e8:      	or	a2, a2, a4
200128ea:      	divu	a4, a2, a3
200128ee:      	mul	a5, a4, a3
200128f2:      	sub	a2, a2, a5
200128f4:      	slli	a1, a1, 16
200128f6:      	srli	a1, a1, 16
200128f8:      	slli	a2, a2, 16
200128fa:      	or	a1, a1, a2
200128fc:      	divu	a2, a1, a3
20012900:      	mul	a3, a2, a3
20012904:      	sub	a1, a1, a3
20012906:      	slli	a3, a4, 16
2001290a:      	srli	a4, a4, 16
2001290c:      	or	a6, a4, a6
20012910:      	or	a7, a3, a2
20012914:      	li	a2, 0
20012916:      	j	0x20012844 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h4155370659e27846+0x14a>
20012918:      	sll	t0, a4, a7
2001291c:      	sub	a5, a6, a7
20012920:      	srli	a4, a3, 1
20012924:      	srl	a4, a4, a5
20012928:      	or	t1, t0, a4
2001292c:      	sll	a6, a3, a7
20012930:      	li	t0, 0
20012932:      	li	a5, 1
20012934:      	sll	a7, a5, a7
20012938:      	j	0x2001294e <compiler_builtins::int::specialized_div_rem::u64_div_rem::h4155370659e27846+0x254>
2001293a:      	srli	a4, a6, 1
2001293e:      	slli	a5, t1, 31
20012942:      	or	a6, a4, a5
20012946:      	srli	t1, t1, 1
2001294a:      	srli	a7, a7, 1
2001294e:      	sltu	a5, a1, a6
20012952:      	sub	a4, a2, t1
20012956:      	sub	a5, a4, a5
2001295a:      	bltz	a5, 0x2001293a <compiler_builtins::int::specialized_div_rem::u64_div_rem::h4155370659e27846+0x240>
2001295e:      	sub	a1, a1, a6
20012962:      	or	t0, a7, t0
20012966:      	beqz	a5, 0x2001296c <compiler_builtins::int::specialized_div_rem::u64_div_rem::h4155370659e27846+0x272>
20012968:      	mv	a2, a5
2001296a:      	j	0x2001293a <compiler_builtins::int::specialized_div_rem::u64_div_rem::h4155370659e27846+0x240>
2001296c:      	li	a2, 0
2001296e:      	li	a6, 0
20012970:      	divu	a4, a1, a3
20012974:      	mul	a3, a4, a3
20012978:      	sub	a1, a1, a3
2001297a:      	or	a7, a4, t0
2001297e:      	j	0x20012844 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h4155370659e27846+0x14a>
20012980:      	beq	a2, a4, 0x2001298a <compiler_builtins::int::specialized_div_rem::u64_div_rem::h4155370659e27846+0x290>
20012984:      	sltu	a5, a2, a4
20012988:      	j	0x2001298e <compiler_builtins::int::specialized_div_rem::u64_div_rem::h4155370659e27846+0x294>
2001298a:      	sltu	a5, a1, a3
2001298e:      	beqz	a5, 0x20012994 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h4155370659e27846+0x29a>
20012990:      	li	a7, 0
20012992:      	j	0x20012844 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h4155370659e27846+0x14a>
20012994:      	li	t0, 0
20012996:      	srli	a5, a3, 1
2001299a:      	slli	a4, a4, 31
2001299c:      	or	t2, a4, a5
200129a0:      	slli	t1, a3, 31
200129a4:      	lui	a7, 524288
200129a8:      	j	0x200129be <compiler_builtins::int::specialized_div_rem::u64_div_rem::h4155370659e27846+0x2c4>
200129aa:      	srli	a4, t1, 1
200129ae:      	slli	a5, t2, 31
200129b2:      	or	t1, a4, a5
200129b6:      	srli	t2, t2, 1
200129ba:      	srli	a7, a7, 1
200129be:      	sltu	a5, a1, t1
200129c2:      	sub	a4, a2, t2
200129c6:      	sub	a5, a4, a5
200129ca:      	bltz	a5, 0x200129aa <compiler_builtins::int::specialized_div_rem::u64_div_rem::h4155370659e27846+0x2b0>
200129ce:      	sub	a1, a1, t1
200129d2:      	or	t0, a7, t0
200129d6:      	beqz	a5, 0x200129dc <compiler_builtins::int::specialized_div_rem::u64_div_rem::h4155370659e27846+0x2e2>
200129d8:      	mv	a2, a5
200129da:      	j	0x200129aa <compiler_builtins::int::specialized_div_rem::u64_div_rem::h4155370659e27846+0x2b0>
200129dc:      	li	a2, 0
200129de:      	j	0x20012970 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h4155370659e27846+0x276>

200129e0 <__udivdi3>:
200129e0:      	addi	sp, sp, -32
200129e2:      	sw	ra, 28(sp)
200129e4:      	mv	a4, a3
200129e6:      	mv	a3, a2
200129e8:      	mv	a2, a1
200129ea:      	mv	a1, a0
200129ec:      	addi	a0, sp, 8
200129ee:      	auipc	ra, 0
200129f2:      	jalr	-756(ra)
200129f6:      	lw	a1, 12(sp)
200129f8:      	lw	a0, 8(sp)
200129fa:      	lw	ra, 28(sp)
200129fc:      	addi	sp, sp, 32
200129fe:      	ret
