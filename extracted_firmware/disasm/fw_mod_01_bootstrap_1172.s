
/home/Populus/Projects/fingerprint/extracted_firmware/fw_mod_01_bootstrap_1172.bin:     file format binary


Disassembly of section .data:

00000000 <.data>:
   0:	0432      	lsls	r2, r6, #16
   2:	ea5f 5c91 	movs.w	ip, r1, lsr #22
   6:	f43f aed8 	beq.w	0xfffffdba
   a:	f04f 0203 	mov.w	r2, #3
   e:	ea5f 0cdc 	movs.w	ip, ip, lsr #3
  12:	bf18      	it	ne
  14:	3203      	addne	r2, #3
  16:	ea5f 0cdc 	movs.w	ip, ip, lsr #3
  1a:	bf18      	it	ne
  1c:	3203      	addne	r2, #3
  1e:	eb02 02dc 	add.w	r2, r2, ip, lsr #3
  22:	f1c2 0320 	rsb	r3, r2, #32
  26:	fa00 fc03 	lsl.w	ip, r0, r3
  2a:	fa20 f002 	lsr.w	r0, r0, r2
  2e:	fa01 fe03 	lsl.w	lr, r1, r3
  32:	ea40 000e 	orr.w	r0, r0, lr
  36:	fa21 f102 	lsr.w	r1, r1, r2
  3a:	4414      	add	r4, r2
  3c:	e6bd      	b.n	0xfffffdba
  3e:	bf00      	nop
  40:	b570      	push	{r4, r5, r6, lr}
  42:	f04f 0cff 	mov.w	ip, #255	@ 0xff
  46:	f44c 6ce0 	orr.w	ip, ip, #1792	@ 0x700
  4a:	ea1c 5411 	ands.w	r4, ip, r1, lsr #20
  4e:	bf1d      	ittte	ne
  50:	ea1c 5513 	andsne.w	r5, ip, r3, lsr #20
  54:	ea94 0f0c 	teqne	r4, ip
  58:	ea95 0f0c 	teqne	r5, ip
  5c:	f000 f8de 	bleq	0x21c
  60:	442c      	add	r4, r5
  62:	ea81 0603 	eor.w	r6, r1, r3
  66:	ea21 514c 	bic.w	r1, r1, ip, lsl #21
  6a:	ea23 534c 	bic.w	r3, r3, ip, lsl #21
  6e:	ea50 3501 	orrs.w	r5, r0, r1, lsl #12
  72:	bf18      	it	ne
  74:	ea52 3503 	orrsne.w	r5, r2, r3, lsl #12
  78:	f441 1180 	orr.w	r1, r1, #1048576	@ 0x100000
  7c:	f443 1380 	orr.w	r3, r3, #1048576	@ 0x100000
  80:	d038      	beq.n	0xf4
  82:	fba0 ce02 	umull	ip, lr, r0, r2
  86:	f04f 0500 	mov.w	r5, #0
  8a:	fbe1 e502 	umlal	lr, r5, r1, r2
  8e:	f006 4200 	and.w	r2, r6, #2147483648	@ 0x80000000
  92:	fbe0 e503 	umlal	lr, r5, r0, r3
  96:	f04f 0600 	mov.w	r6, #0
  9a:	fbe1 5603 	umlal	r5, r6, r1, r3
  9e:	f09c 0f00 	teq	ip, #0
  a2:	bf18      	it	ne
  a4:	f04e 0e01 	orrne.w	lr, lr, #1
  a8:	f1a4 04ff 	sub.w	r4, r4, #255	@ 0xff
  ac:	f5b6 7f00 	cmp.w	r6, #512	@ 0x200
  b0:	f564 7440 	sbc.w	r4, r4, #768	@ 0x300
  b4:	d204      	bcs.n	0xc0
  b6:	ea5f 0e4e 	movs.w	lr, lr, lsl #1
  ba:	416d      	adcs	r5, r5
  bc:	eb46 0606 	adc.w	r6, r6, r6
  c0:	ea42 21c6 	orr.w	r1, r2, r6, lsl #11
  c4:	ea41 5155 	orr.w	r1, r1, r5, lsr #21
  c8:	ea4f 20c5 	mov.w	r0, r5, lsl #11
  cc:	ea40 505e 	orr.w	r0, r0, lr, lsr #21
  d0:	ea4f 2ece 	mov.w	lr, lr, lsl #11
  d4:	f1b4 0cfd 	subs.w	ip, r4, #253	@ 0xfd
  d8:	bf88      	it	hi
  da:	f5bc 6fe0 	cmphi.w	ip, #1792	@ 0x700
  de:	d81e      	bhi.n	0x11e
  e0:	f1be 4f00 	cmp.w	lr, #2147483648	@ 0x80000000
  e4:	bf08      	it	eq
  e6:	ea5f 0e50 	movseq.w	lr, r0, lsr #1
  ea:	f150 0000 	adcs.w	r0, r0, #0
  ee:	eb41 5104 	adc.w	r1, r1, r4, lsl #20
  f2:	bd70      	pop	{r4, r5, r6, pc}
  f4:	f006 4600 	and.w	r6, r6, #2147483648	@ 0x80000000
  f8:	ea46 0101 	orr.w	r1, r6, r1
  fc:	ea40 0002 	orr.w	r0, r0, r2
 100:	ea81 0103 	eor.w	r1, r1, r3
 104:	ebb4 045c 	subs.w	r4, r4, ip, lsr #1
 108:	bfc2      	ittt	gt
 10a:	ebd4 050c 	rsbsgt	r5, r4, ip
 10e:	ea41 5104 	orrgt.w	r1, r1, r4, lsl #20
 112:	bd70      	popgt	{r4, r5, r6, pc}
 114:	f441 1180 	orr.w	r1, r1, #1048576	@ 0x100000
 118:	f04f 0e00 	mov.w	lr, #0
 11c:	3c01      	subs	r4, #1
 11e:	f300 80ab 	bgt.w	0x278
 122:	f114 0f36 	cmn.w	r4, #54	@ 0x36
 126:	bfde      	ittt	le
 128:	2000      	movle	r0, #0
 12a:	f001 4100 	andle.w	r1, r1, #2147483648	@ 0x80000000
 12e:	bd70      	pople	{r4, r5, r6, pc}
 130:	f1c4 0400 	rsb	r4, r4, #0
 134:	3c20      	subs	r4, #32
 136:	da35      	bge.n	0x1a4
 138:	340c      	adds	r4, #12
 13a:	dc1b      	bgt.n	0x174
 13c:	f104 0414 	add.w	r4, r4, #20
 140:	f1c4 0520 	rsb	r5, r4, #32
 144:	fa00 f305 	lsl.w	r3, r0, r5
 148:	fa20 f004 	lsr.w	r0, r0, r4
 14c:	fa01 f205 	lsl.w	r2, r1, r5
 150:	ea40 0002 	orr.w	r0, r0, r2
 154:	f001 4200 	and.w	r2, r1, #2147483648	@ 0x80000000
 158:	f021 4100 	bic.w	r1, r1, #2147483648	@ 0x80000000
 15c:	eb10 70d3 	adds.w	r0, r0, r3, lsr #31
 160:	fa21 f604 	lsr.w	r6, r1, r4
 164:	eb42 0106 	adc.w	r1, r2, r6
 168:	ea5e 0e43 	orrs.w	lr, lr, r3, lsl #1
 16c:	bf08      	it	eq
 16e:	ea20 70d3 	biceq.w	r0, r0, r3, lsr #31
 172:	bd70      	pop	{r4, r5, r6, pc}
 174:	f1c4 040c 	rsb	r4, r4, #12
 178:	f1c4 0520 	rsb	r5, r4, #32
 17c:	fa00 f304 	lsl.w	r3, r0, r4
 180:	fa20 f005 	lsr.w	r0, r0, r5
 184:	fa01 f204 	lsl.w	r2, r1, r4
 188:	ea40 0002 	orr.w	r0, r0, r2
 18c:	f001 4100 	and.w	r1, r1, #2147483648	@ 0x80000000
 190:	eb10 70d3 	adds.w	r0, r0, r3, lsr #31
 194:	f141 0100 	adc.w	r1, r1, #0
 198:	ea5e 0e43 	orrs.w	lr, lr, r3, lsl #1
 19c:	bf08      	it	eq
 19e:	ea20 70d3 	biceq.w	r0, r0, r3, lsr #31
 1a2:	bd70      	pop	{r4, r5, r6, pc}
 1a4:	f1c4 0520 	rsb	r5, r4, #32
 1a8:	fa00 f205 	lsl.w	r2, r0, r5
 1ac:	ea4e 0e02 	orr.w	lr, lr, r2
 1b0:	fa20 f304 	lsr.w	r3, r0, r4
 1b4:	fa01 f205 	lsl.w	r2, r1, r5
 1b8:	ea43 0302 	orr.w	r3, r3, r2
 1bc:	fa21 f004 	lsr.w	r0, r1, r4
 1c0:	f001 4100 	and.w	r1, r1, #2147483648	@ 0x80000000
 1c4:	fa21 f204 	lsr.w	r2, r1, r4
 1c8:	ea20 0002 	bic.w	r0, r0, r2
 1cc:	eb00 70d3 	add.w	r0, r0, r3, lsr #31
 1d0:	ea5e 0e43 	orrs.w	lr, lr, r3, lsl #1
 1d4:	bf08      	it	eq
 1d6:	ea20 70d3 	biceq.w	r0, r0, r3, lsr #31
 1da:	bd70      	pop	{r4, r5, r6, pc}
 1dc:	f094 0f00 	teq	r4, #0
 1e0:	d10f      	bne.n	0x202
 1e2:	f001 4600 	and.w	r6, r1, #2147483648	@ 0x80000000
 1e6:	0040      	lsls	r0, r0, #1
 1e8:	eb41 0101 	adc.w	r1, r1, r1
 1ec:	f411 1f80 	tst.w	r1, #1048576	@ 0x100000
 1f0:	bf08      	it	eq
 1f2:	3c01      	subeq	r4, #1
 1f4:	d0f7      	beq.n	0x1e6
 1f6:	ea41 0106 	orr.w	r1, r1, r6
 1fa:	f095 0f00 	teq	r5, #0
 1fe:	bf18      	it	ne
 200:	4770      	bxne	lr
 202:	f003 4600 	and.w	r6, r3, #2147483648	@ 0x80000000
 206:	0052      	lsls	r2, r2, #1
 208:	eb43 0303 	adc.w	r3, r3, r3
 20c:	f413 1f80 	tst.w	r3, #1048576	@ 0x100000
 210:	bf08      	it	eq
 212:	3d01      	subeq	r5, #1
 214:	d0f7      	beq.n	0x206
 216:	ea43 0306 	orr.w	r3, r3, r6
 21a:	4770      	bx	lr
 21c:	ea94 0f0c 	teq	r4, ip
 220:	ea0c 5513 	and.w	r5, ip, r3, lsr #20
 224:	bf18      	it	ne
 226:	ea95 0f0c 	teqne	r5, ip
 22a:	d00c      	beq.n	0x246
 22c:	ea50 0641 	orrs.w	r6, r0, r1, lsl #1
 230:	bf18      	it	ne
 232:	ea52 0643 	orrsne.w	r6, r2, r3, lsl #1
 236:	d1d1      	bne.n	0x1dc
 238:	ea81 0103 	eor.w	r1, r1, r3
 23c:	f001 4100 	and.w	r1, r1, #2147483648	@ 0x80000000
 240:	f04f 0000 	mov.w	r0, #0
 244:	bd70      	pop	{r4, r5, r6, pc}
 246:	ea50 0641 	orrs.w	r6, r0, r1, lsl #1
 24a:	bf06      	itte	eq
 24c:	4610      	moveq	r0, r2
 24e:	4619      	moveq	r1, r3
 250:	ea52 0643 	orrsne.w	r6, r2, r3, lsl #1
 254:	d019      	beq.n	0x28a
 256:	ea94 0f0c 	teq	r4, ip
 25a:	d102      	bne.n	0x262
 25c:	ea50 3601 	orrs.w	r6, r0, r1, lsl #12
 260:	d113      	bne.n	0x28a
 262:	ea95 0f0c 	teq	r5, ip
 266:	d105      	bne.n	0x274
 268:	ea52 3603 	orrs.w	r6, r2, r3, lsl #12
 26c:	bf1c      	itt	ne
 26e:	4610      	movne	r0, r2
 270:	4619      	movne	r1, r3
 272:	d10a      	bne.n	0x28a
 274:	ea81 0103 	eor.w	r1, r1, r3
 278:	f001 4100 	and.w	r1, r1, #2147483648	@ 0x80000000
 27c:	f041 41fe 	orr.w	r1, r1, #2130706432	@ 0x7f000000
 280:	f441 0170 	orr.w	r1, r1, #15728640	@ 0xf00000
 284:	f04f 0000 	mov.w	r0, #0
 288:	bd70      	pop	{r4, r5, r6, pc}
 28a:	f041 41fe 	orr.w	r1, r1, #2130706432	@ 0x7f000000
 28e:	f441 0178 	orr.w	r1, r1, #16252928	@ 0xf80000
 292:	bd70      	pop	{r4, r5, r6, pc}
 294:	b570      	push	{r4, r5, r6, lr}
 296:	f04f 0cff 	mov.w	ip, #255	@ 0xff
 29a:	f44c 6ce0 	orr.w	ip, ip, #1792	@ 0x700
 29e:	ea1c 5411 	ands.w	r4, ip, r1, lsr #20
 2a2:	bf1d      	ittte	ne
 2a4:	ea1c 5513 	andsne.w	r5, ip, r3, lsr #20
 2a8:	ea94 0f0c 	teqne	r4, ip
 2ac:	ea95 0f0c 	teqne	r5, ip
 2b0:	f000 f8a7 	bleq	0x402
 2b4:	eba4 0405 	sub.w	r4, r4, r5
 2b8:	ea81 0e03 	eor.w	lr, r1, r3
 2bc:	ea52 3503 	orrs.w	r5, r2, r3, lsl #12
 2c0:	ea4f 3101 	mov.w	r1, r1, lsl #12
 2c4:	f000 8088 	beq.w	0x3d8
 2c8:	ea4f 3303 	mov.w	r3, r3, lsl #12
 2cc:	f04f 5580 	mov.w	r5, #268435456	@ 0x10000000
 2d0:	ea45 1313 	orr.w	r3, r5, r3, lsr #4
 2d4:	ea43 6312 	orr.w	r3, r3, r2, lsr #24
 2d8:	ea4f 2202 	mov.w	r2, r2, lsl #8
 2dc:	ea45 1511 	orr.w	r5, r5, r1, lsr #4
 2e0:	ea45 6510 	orr.w	r5, r5, r0, lsr #24
 2e4:	ea4f 2600 	mov.w	r6, r0, lsl #8
 2e8:	f00e 4100 	and.w	r1, lr, #2147483648	@ 0x80000000
 2ec:	429d      	cmp	r5, r3
 2ee:	bf08      	it	eq
 2f0:	4296      	cmpeq	r6, r2
 2f2:	f144 04fd 	adc.w	r4, r4, #253	@ 0xfd
 2f6:	f504 7440 	add.w	r4, r4, #768	@ 0x300
 2fa:	d202      	bcs.n	0x302
 2fc:	085b      	lsrs	r3, r3, #1
 2fe:	ea4f 0232 	mov.w	r2, r2, rrx
 302:	1ab6      	subs	r6, r6, r2
 304:	eb65 0503 	sbc.w	r5, r5, r3
 308:	085b      	lsrs	r3, r3, #1
 30a:	ea4f 0232 	mov.w	r2, r2, rrx
 30e:	f44f 1080 	mov.w	r0, #1048576	@ 0x100000
 312:	f44f 2c00 	mov.w	ip, #524288	@ 0x80000
 316:	ebb6 0e02 	subs.w	lr, r6, r2
 31a:	eb75 0e03 	sbcs.w	lr, r5, r3
 31e:	bf22      	ittt	cs
 320:	1ab6      	subcs	r6, r6, r2
 322:	4675      	movcs	r5, lr
 324:	ea40 000c 	orrcs.w	r0, r0, ip
 328:	085b      	lsrs	r3, r3, #1
 32a:	ea4f 0232 	mov.w	r2, r2, rrx
 32e:	ebb6 0e02 	subs.w	lr, r6, r2
 332:	eb75 0e03 	sbcs.w	lr, r5, r3
 336:	bf22      	ittt	cs
 338:	1ab6      	subcs	r6, r6, r2
 33a:	4675      	movcs	r5, lr
 33c:	ea40 005c 	orrcs.w	r0, r0, ip, lsr #1
 340:	085b      	lsrs	r3, r3, #1
 342:	ea4f 0232 	mov.w	r2, r2, rrx
 346:	ebb6 0e02 	subs.w	lr, r6, r2
 34a:	eb75 0e03 	sbcs.w	lr, r5, r3
 34e:	bf22      	ittt	cs
 350:	1ab6      	subcs	r6, r6, r2
 352:	4675      	movcs	r5, lr
 354:	ea40 009c 	orrcs.w	r0, r0, ip, lsr #2
 358:	085b      	lsrs	r3, r3, #1
 35a:	ea4f 0232 	mov.w	r2, r2, rrx
 35e:	ebb6 0e02 	subs.w	lr, r6, r2
 362:	eb75 0e03 	sbcs.w	lr, r5, r3
 366:	bf22      	ittt	cs
 368:	1ab6      	subcs	r6, r6, r2
 36a:	4675      	movcs	r5, lr
 36c:	ea40 00dc 	orrcs.w	r0, r0, ip, lsr #3
 370:	ea55 0e06 	orrs.w	lr, r5, r6
 374:	d018      	beq.n	0x3a8
 376:	ea4f 1505 	mov.w	r5, r5, lsl #4
 37a:	ea45 7516 	orr.w	r5, r5, r6, lsr #28
 37e:	ea4f 1606 	mov.w	r6, r6, lsl #4
 382:	ea4f 03c3 	mov.w	r3, r3, lsl #3
 386:	ea43 7352 	orr.w	r3, r3, r2, lsr #29
 38a:	ea4f 02c2 	mov.w	r2, r2, lsl #3
 38e:	ea5f 1c1c 	movs.w	ip, ip, lsr #4
 392:	d1c0      	bne.n	0x316
 394:	f411 1f80 	tst.w	r1, #1048576	@ 0x100000
 398:	d10b      	bne.n	0x3b2
 39a:	ea41 0100 	orr.w	r1, r1, r0
 39e:	f04f 0000 	mov.w	r0, #0
 3a2:	f04f 4c00 	mov.w	ip, #2147483648	@ 0x80000000
 3a6:	e7b6      	b.n	0x316
 3a8:	f411 1f80 	tst.w	r1, #1048576	@ 0x100000
 3ac:	bf04      	itt	eq
 3ae:	4301      	orreq	r1, r0
 3b0:	2000      	moveq	r0, #0
 3b2:	f1b4 0cfd 	subs.w	ip, r4, #253	@ 0xfd
 3b6:	bf88      	it	hi
 3b8:	f5bc 6fe0 	cmphi.w	ip, #1792	@ 0x700
 3bc:	f63f aeaf 	bhi.w	0x11e
 3c0:	ebb5 0c03 	subs.w	ip, r5, r3
 3c4:	bf04      	itt	eq
 3c6:	ebb6 0c02 	subseq.w	ip, r6, r2
 3ca:	ea5f 0c50 	movseq.w	ip, r0, lsr #1
 3ce:	f150 0000 	adcs.w	r0, r0, #0
 3d2:	eb41 5104 	adc.w	r1, r1, r4, lsl #20
 3d6:	bd70      	pop	{r4, r5, r6, pc}
 3d8:	f00e 4e00 	and.w	lr, lr, #2147483648	@ 0x80000000
 3dc:	ea4e 3111 	orr.w	r1, lr, r1, lsr #12
 3e0:	eb14 045c 	adds.w	r4, r4, ip, lsr #1
 3e4:	bfc2      	ittt	gt
 3e6:	ebd4 050c 	rsbsgt	r5, r4, ip
 3ea:	ea41 5104 	orrgt.w	r1, r1, r4, lsl #20
 3ee:	bd70      	popgt	{r4, r5, r6, pc}
 3f0:	f441 1180 	orr.w	r1, r1, #1048576	@ 0x100000
 3f4:	f04f 0e00 	mov.w	lr, #0
 3f8:	3c01      	subs	r4, #1
 3fa:	e690      	b.n	0x11e
 3fc:	ea45 0e06 	orr.w	lr, r5, r6
 400:	e68d      	b.n	0x11e
 402:	ea0c 5513 	and.w	r5, ip, r3, lsr #20
 406:	ea94 0f0c 	teq	r4, ip
 40a:	bf08      	it	eq
 40c:	ea95 0f0c 	teqeq	r5, ip
 410:	f43f af3b 	beq.w	0x28a
 414:	ea94 0f0c 	teq	r4, ip
 418:	d10a      	bne.n	0x430
 41a:	ea50 3401 	orrs.w	r4, r0, r1, lsl #12
 41e:	f47f af34 	bne.w	0x28a
 422:	ea95 0f0c 	teq	r5, ip
 426:	f47f af25 	bne.w	0x274
 42a:	4610      	mov	r0, r2
 42c:	4619      	mov	r1, r3
 42e:	e72c      	b.n	0x28a
 430:	ea95 0f0c 	teq	r5, ip
 434:	d106      	bne.n	0x444
 436:	ea52 3503 	orrs.w	r5, r2, r3, lsl #12
 43a:	f43f aefd 	beq.w	0x238
 43e:	4610      	mov	r0, r2
 440:	4619      	mov	r1, r3
 442:	e722      	b.n	0x28a
 444:	ea50 0641 	orrs.w	r6, r0, r1, lsl #1
 448:	bf18      	it	ne
 44a:	ea52 0643 	orrsne.w	r6, r2, r3, lsl #1
 44e:	f47f aec5 	bne.w	0x1dc
 452:	ea50 0441 	orrs.w	r4, r0, r1, lsl #1
 456:	f47f af0d 	bne.w	0x274
 45a:	ea52 0543 	orrs.w	r5, r2, r3, lsl #1
 45e:	f47f aeeb 	bne.w	0x238
 462:	e712      	b.n	0x28a
 464:	f04f 3cff 	mov.w	ip, #4294967295	@ 0xffffffff
 468:	e006      	b.n	0x478
 46a:	bf00      	nop
 46c:	f04f 0c01 	mov.w	ip, #1
 470:	e002      	b.n	0x478
 472:	bf00      	nop
 474:	f04f 0c01 	mov.w	ip, #1
 478:	f84d cd04 	str.w	ip, [sp, #-4]!
 47c:	ea4f 0c41 	mov.w	ip, r1, lsl #1
 480:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
 484:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 488:	bf18      	it	ne
 48a:	ea7f 5c6c 	mvnsne.w	ip, ip, asr #21
 48e:	d01b      	beq.n	0x4c8
 490:	b001      	add	sp, #4
 492:	Address 0x492 is out of bounds.

