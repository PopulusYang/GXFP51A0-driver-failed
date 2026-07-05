
/home/Populus/Projects/fingerprint/extracted_firmware/fw_mod_06_main_init_5878.bin:     file format binary


Disassembly of section .data:

00000000 <.data>:
       0:	f7f0 fbb9 	bl	0xffff0776
       4:	e7fe      	b.n	0x4
       6:	0000      	movs	r0, r0
       8:	2002      	movs	r0, #2
       a:	0000      	movs	r0, r0
       c:	2000      	movs	r0, #0
       e:	017c      	lsls	r4, r7, #5
      10:	2000      	movs	r0, #0
      12:	4e5c      	ldr	r6, [pc, #368]	@ (0x184)
      14:	0803      	lsrs	r3, r0, #32
      16:	017c      	lsls	r4, r7, #5
      18:	2000      	movs	r0, #0
      1a:	519c      	str	r4, [r3, r6]
      1c:	2001      	movs	r0, #1
      1e:	e7fe      	b.n	0x1e
      20:	0000      	movs	r0, r0
      22:	4b02      	ldr	r3, [pc, #8]	@ (0x2c)
      24:	460a      	mov	r2, r1
      26:	4601      	mov	r1, r0
      28:	6818      	ldr	r0, [r3, #0]
      2a:	f000 ba15 	b.w	0x458
      2e:	0114      	lsls	r4, r2, #4
      30:	2000      	movs	r0, #0
      32:	4b01      	ldr	r3, [pc, #4]	@ (0x38)
      34:	6818      	ldr	r0, [r3, #0]
      36:	4770      	bx	lr
      38:	bf00      	nop
      3a:	0114      	lsls	r4, r2, #4
      3c:	2000      	movs	r0, #0
      3e:	898a      	ldrh	r2, [r1, #12]
      40:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
      44:	4605      	mov	r5, r0
      46:	0710      	lsls	r0, r2, #28
      48:	460c      	mov	r4, r1
      4a:	d458      	bmi.n	0xfe
      4c:	684b      	ldr	r3, [r1, #4]
      4e:	2b00      	cmp	r3, #0
      50:	dc05      	bgt.n	0x5e
      52:	6c0b      	ldr	r3, [r1, #64]	@ 0x40
      54:	2b00      	cmp	r3, #0
      56:	dc02      	bgt.n	0x5e
      58:	2000      	movs	r0, #0
      5a:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
      5e:	6ae6      	ldr	r6, [r4, #44]	@ 0x2c
      60:	2e00      	cmp	r6, #0
      62:	d0f9      	beq.n	0x58
      64:	2300      	movs	r3, #0
      66:	f412 5280 	ands.w	r2, r2, #4096	@ 0x1000
      6a:	682f      	ldr	r7, [r5, #0]
      6c:	6a21      	ldr	r1, [r4, #32]
      6e:	602b      	str	r3, [r5, #0]
      70:	d032      	beq.n	0xd8
      72:	6d60      	ldr	r0, [r4, #84]	@ 0x54
      74:	89a3      	ldrh	r3, [r4, #12]
      76:	075a      	lsls	r2, r3, #29
      78:	d505      	bpl.n	0x86
      7a:	6863      	ldr	r3, [r4, #4]
      7c:	1ac0      	subs	r0, r0, r3
      7e:	6b63      	ldr	r3, [r4, #52]	@ 0x34
      80:	b10b      	cbz	r3, 0x86
      82:	6c23      	ldr	r3, [r4, #64]	@ 0x40
      84:	1ac0      	subs	r0, r0, r3
      86:	2300      	movs	r3, #0
      88:	4602      	mov	r2, r0
      8a:	6ae6      	ldr	r6, [r4, #44]	@ 0x2c
      8c:	6a21      	ldr	r1, [r4, #32]
      8e:	4628      	mov	r0, r5
      90:	47b0      	blx	r6
      92:	1c43      	adds	r3, r0, #1
      94:	89a3      	ldrh	r3, [r4, #12]
      96:	d106      	bne.n	0xa6
      98:	6829      	ldr	r1, [r5, #0]
      9a:	291d      	cmp	r1, #29
      9c:	d848      	bhi.n	0x130
      9e:	4a29      	ldr	r2, [pc, #164]	@ (0x144)
      a0:	40ca      	lsrs	r2, r1
      a2:	07d6      	lsls	r6, r2, #31
      a4:	d544      	bpl.n	0x130
      a6:	2200      	movs	r2, #0
      a8:	6062      	str	r2, [r4, #4]
      aa:	04d9      	lsls	r1, r3, #19
      ac:	6922      	ldr	r2, [r4, #16]
      ae:	6022      	str	r2, [r4, #0]
      b0:	d504      	bpl.n	0xbc
      b2:	1c42      	adds	r2, r0, #1
      b4:	d101      	bne.n	0xba
      b6:	682b      	ldr	r3, [r5, #0]
      b8:	b903      	cbnz	r3, 0xbc
      ba:	6560      	str	r0, [r4, #84]	@ 0x54
      bc:	6b61      	ldr	r1, [r4, #52]	@ 0x34
      be:	602f      	str	r7, [r5, #0]
      c0:	2900      	cmp	r1, #0
      c2:	d0c9      	beq.n	0x58
      c4:	f104 0344 	add.w	r3, r4, #68	@ 0x44
      c8:	4299      	cmp	r1, r3
      ca:	d002      	beq.n	0xd2
      cc:	4628      	mov	r0, r5
      ce:	f000 f9d2 	bl	0x476
      d2:	2000      	movs	r0, #0
      d4:	6360      	str	r0, [r4, #52]	@ 0x34
      d6:	e7c0      	b.n	0x5a
      d8:	2301      	movs	r3, #1
      da:	4628      	mov	r0, r5
      dc:	47b0      	blx	r6
      de:	1c41      	adds	r1, r0, #1
      e0:	d1c8      	bne.n	0x74
      e2:	682b      	ldr	r3, [r5, #0]
      e4:	2b00      	cmp	r3, #0
      e6:	d0c5      	beq.n	0x74
      e8:	2b1d      	cmp	r3, #29
      ea:	d001      	beq.n	0xf0
      ec:	2b16      	cmp	r3, #22
      ee:	d101      	bne.n	0xf4
      f0:	602f      	str	r7, [r5, #0]
      f2:	e7b1      	b.n	0x58
      f4:	89a3      	ldrh	r3, [r4, #12]
      f6:	f043 0340 	orr.w	r3, r3, #64	@ 0x40
      fa:	81a3      	strh	r3, [r4, #12]
      fc:	e7ad      	b.n	0x5a
      fe:	690f      	ldr	r7, [r1, #16]
     100:	2f00      	cmp	r7, #0
     102:	d0a9      	beq.n	0x58
     104:	0793      	lsls	r3, r2, #30
     106:	680e      	ldr	r6, [r1, #0]
     108:	bf08      	it	eq
     10a:	694b      	ldreq	r3, [r1, #20]
     10c:	600f      	str	r7, [r1, #0]
     10e:	bf18      	it	ne
     110:	2300      	movne	r3, #0
     112:	eba6 0807 	sub.w	r8, r6, r7
     116:	608b      	str	r3, [r1, #8]
     118:	f1b8 0f00 	cmp.w	r8, #0
     11c:	dd9c      	ble.n	0x58
     11e:	4643      	mov	r3, r8
     120:	463a      	mov	r2, r7
     122:	6a21      	ldr	r1, [r4, #32]
     124:	6aa6      	ldr	r6, [r4, #40]	@ 0x28
     126:	4628      	mov	r0, r5
     128:	47b0      	blx	r6
     12a:	2800      	cmp	r0, #0
     12c:	dc06      	bgt.n	0x13c
     12e:	89a3      	ldrh	r3, [r4, #12]
     130:	f043 0340 	orr.w	r3, r3, #64	@ 0x40
     134:	81a3      	strh	r3, [r4, #12]
     136:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
     13a:	e78e      	b.n	0x5a
     13c:	4407      	add	r7, r0
     13e:	eba8 0800 	sub.w	r8, r8, r0
     142:	e7e9      	b.n	0x118
     144:	bf00      	nop
     146:	0001      	movs	r1, r0
     148:	2040      	movs	r0, #64	@ 0x40
     14a:	b538      	push	{r3, r4, r5, lr}
     14c:	690b      	ldr	r3, [r1, #16]
     14e:	4605      	mov	r5, r0
     150:	460c      	mov	r4, r1
     152:	b1db      	cbz	r3, 0x18c
     154:	b118      	cbz	r0, 0x15e
     156:	6983      	ldr	r3, [r0, #24]
     158:	b90b      	cbnz	r3, 0x15e
     15a:	f000 f872 	bl	0x242
     15e:	4b0c      	ldr	r3, [pc, #48]	@ (0x190)
     160:	429c      	cmp	r4, r3
     162:	d109      	bne.n	0x178
     164:	686c      	ldr	r4, [r5, #4]
     166:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
     16a:	b17b      	cbz	r3, 0x18c
     16c:	4621      	mov	r1, r4
     16e:	4628      	mov	r0, r5
     170:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
     174:	f7ff bf63 	b.w	0x3e
     178:	4b07      	ldr	r3, [pc, #28]	@ (0x198)
     17a:	429c      	cmp	r4, r3
     17c:	d101      	bne.n	0x182
     17e:	68ac      	ldr	r4, [r5, #8]
     180:	e7f1      	b.n	0x166
     182:	4b05      	ldr	r3, [pc, #20]	@ (0x198)
     184:	429c      	cmp	r4, r3
     186:	bf08      	it	eq
     188:	68ec      	ldreq	r4, [r5, #12]
     18a:	e7ec      	b.n	0x166
     18c:	2000      	movs	r0, #0
     18e:	bd38      	pop	{r3, r4, r5, pc}
     190:	bf00      	nop
     192:	4dd8      	ldr	r5, [pc, #864]	@ (0x4f4)
     194:	0803      	lsrs	r3, r0, #32
     196:	4df8      	ldr	r5, [pc, #992]	@ (0x578)
     198:	0803      	lsrs	r3, r0, #32
     19a:	4db8      	ldr	r5, [pc, #736]	@ (0x47c)
     19c:	0803      	lsrs	r3, r0, #32
     19e:	4601      	mov	r1, r0
     1a0:	b920      	cbnz	r0, 0x1ac
     1a2:	4b04      	ldr	r3, [pc, #16]	@ (0x1b4)
     1a4:	4905      	ldr	r1, [pc, #20]	@ (0x1bc)
     1a6:	6818      	ldr	r0, [r3, #0]
     1a8:	f000 b8c9 	b.w	0x33e
     1ac:	4b04      	ldr	r3, [pc, #16]	@ (0x1c0)
     1ae:	6818      	ldr	r0, [r3, #0]
     1b0:	f7ff bfcb 	b.w	0x14a
     1b4:	bf00      	nop
     1b6:	4e18      	ldr	r6, [pc, #96]	@ (0x218)
     1b8:	0803      	lsrs	r3, r0, #32
     1ba:	3315      	adds	r3, #21
     1bc:	0803      	lsrs	r3, r0, #32
     1be:	0114      	lsls	r4, r2, #4
     1c0:	2000      	movs	r0, #0
     1c2:	2300      	movs	r3, #0
     1c4:	b510      	push	{r4, lr}
     1c6:	4604      	mov	r4, r0
     1c8:	e9c0 3300 	strd	r3, r3, [r0]
     1cc:	6083      	str	r3, [r0, #8]
     1ce:	8181      	strh	r1, [r0, #12]
     1d0:	6643      	str	r3, [r0, #100]	@ 0x64
     1d2:	81c2      	strh	r2, [r0, #14]
     1d4:	e9c0 3304 	strd	r3, r3, [r0, #16]
     1d8:	6183      	str	r3, [r0, #24]
     1da:	4619      	mov	r1, r3
     1dc:	2208      	movs	r2, #8
     1de:	305c      	adds	r0, #92	@ 0x5c
     1e0:	f000 f932 	bl	0x448
     1e4:	4b05      	ldr	r3, [pc, #20]	@ (0x1fc)
     1e6:	6263      	str	r3, [r4, #36]	@ 0x24
     1e8:	4b05      	ldr	r3, [pc, #20]	@ (0x200)
     1ea:	62a3      	str	r3, [r4, #40]	@ 0x28
     1ec:	4b05      	ldr	r3, [pc, #20]	@ (0x204)
     1ee:	62e3      	str	r3, [r4, #44]	@ 0x2c
     1f0:	4b05      	ldr	r3, [pc, #20]	@ (0x208)
     1f2:	6224      	str	r4, [r4, #32]
     1f4:	6323      	str	r3, [r4, #48]	@ 0x30
     1f6:	bd10      	pop	{r4, pc}
     1f8:	bf00      	nop
     1fa:	3ea1      	subs	r6, #161	@ 0xa1
     1fc:	0803      	lsrs	r3, r0, #32
     1fe:	3ec3      	subs	r6, #195	@ 0xc3
     200:	0803      	lsrs	r3, r0, #32
     202:	3efb      	subs	r6, #251	@ 0xfb
     204:	0803      	lsrs	r3, r0, #32
     206:	3f1f      	subs	r7, #31
     208:	0803      	lsrs	r3, r0, #32
     20a:	4901      	ldr	r1, [pc, #4]	@ (0x210)
     20c:	f000 b897 	b.w	0x33e
     210:	bf00      	nop
     212:	3315      	adds	r3, #21
     214:	0803      	lsrs	r3, r0, #32
     216:	b570      	push	{r4, r5, r6, lr}
     218:	1e4a      	subs	r2, r1, #1
     21a:	2568      	movs	r5, #104	@ 0x68
     21c:	4355      	muls	r5, r2
     21e:	460e      	mov	r6, r1
     220:	f105 0174 	add.w	r1, r5, #116	@ 0x74
     224:	f000 f975 	bl	0x512
     228:	4604      	mov	r4, r0
     22a:	b140      	cbz	r0, 0x23e
     22c:	2100      	movs	r1, #0
     22e:	e9c0 1600 	strd	r1, r6, [r0]
     232:	300c      	adds	r0, #12
     234:	60a0      	str	r0, [r4, #8]
     236:	f105 0268 	add.w	r2, r5, #104	@ 0x68
     23a:	f000 f905 	bl	0x448
     23e:	4620      	mov	r0, r4
     240:	bd70      	pop	{r4, r5, r6, pc}
     242:	6983      	ldr	r3, [r0, #24]
     244:	b510      	push	{r4, lr}
     246:	4604      	mov	r4, r0
     248:	bb33      	cbnz	r3, 0x298
     24a:	e9c0 3312 	strd	r3, r3, [r0, #72]	@ 0x48
     24e:	6503      	str	r3, [r0, #80]	@ 0x50
     250:	4b12      	ldr	r3, [pc, #72]	@ (0x29c)
     252:	4a12      	ldr	r2, [pc, #72]	@ (0x29c)
     254:	681b      	ldr	r3, [r3, #0]
     256:	6282      	str	r2, [r0, #40]	@ 0x28
     258:	4298      	cmp	r0, r3
     25a:	bf04      	itt	eq
     25c:	2301      	moveq	r3, #1
     25e:	6183      	streq	r3, [r0, #24]
     260:	f000 f81f 	bl	0x2a2
     264:	6060      	str	r0, [r4, #4]
     266:	4620      	mov	r0, r4
     268:	f000 f81b 	bl	0x2a2
     26c:	60a0      	str	r0, [r4, #8]
     26e:	4620      	mov	r0, r4
     270:	f000 f817 	bl	0x2a2
     274:	2200      	movs	r2, #0
     276:	60e0      	str	r0, [r4, #12]
     278:	2104      	movs	r1, #4
     27a:	6860      	ldr	r0, [r4, #4]
     27c:	f7ff ffa1 	bl	0x1c2
     280:	2201      	movs	r2, #1
     282:	2109      	movs	r1, #9
     284:	68a0      	ldr	r0, [r4, #8]
     286:	f7ff ff9c 	bl	0x1c2
     28a:	2202      	movs	r2, #2
     28c:	2112      	movs	r1, #18
     28e:	68e0      	ldr	r0, [r4, #12]
     290:	f7ff ff97 	bl	0x1c2
     294:	2301      	movs	r3, #1
     296:	61a3      	str	r3, [r4, #24]
     298:	bd10      	pop	{r4, pc}
     29a:	4e18      	ldr	r6, [pc, #96]	@ (0x2fc)
     29c:	0803      	lsrs	r3, r0, #32
     29e:	33d5      	adds	r3, #213	@ 0xd5
     2a0:	0803      	lsrs	r3, r0, #32
     2a2:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
     2a4:	4b1b      	ldr	r3, [pc, #108]	@ (0x314)
     2a6:	681e      	ldr	r6, [r3, #0]
     2a8:	69b3      	ldr	r3, [r6, #24]
     2aa:	4607      	mov	r7, r0
     2ac:	b913      	cbnz	r3, 0x2b4
     2ae:	4630      	mov	r0, r6
     2b0:	f7ff ffc7 	bl	0x242
     2b4:	3648      	adds	r6, #72	@ 0x48
     2b6:	e9d6 3401 	ldrd	r3, r4, [r6, #4]
     2ba:	3b01      	subs	r3, #1
     2bc:	d503      	bpl.n	0x2c6
     2be:	6833      	ldr	r3, [r6, #0]
     2c0:	b133      	cbz	r3, 0x2d0
     2c2:	6836      	ldr	r6, [r6, #0]
     2c4:	e7f7      	b.n	0x2b6
     2c6:	f9b4 500c 	ldrsh.w	r5, [r4, #12]
     2ca:	b16d      	cbz	r5, 0x2e8
     2cc:	3468      	adds	r4, #104	@ 0x68
     2ce:	e7f4      	b.n	0x2ba
     2d0:	2104      	movs	r1, #4
     2d2:	4638      	mov	r0, r7
     2d4:	f7ff ff9f 	bl	0x216
     2d8:	6030      	str	r0, [r6, #0]
     2da:	2800      	cmp	r0, #0
     2dc:	d1f1      	bne.n	0x2c2
     2de:	230c      	movs	r3, #12
     2e0:	603b      	str	r3, [r7, #0]
     2e2:	4604      	mov	r4, r0
     2e4:	4620      	mov	r0, r4
     2e6:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
     2e8:	4b0b      	ldr	r3, [pc, #44]	@ (0x318)
     2ea:	6665      	str	r5, [r4, #100]	@ 0x64
     2ec:	e9c4 5500 	strd	r5, r5, [r4]
     2f0:	60a5      	str	r5, [r4, #8]
     2f2:	e9c4 3503 	strd	r3, r5, [r4, #12]
     2f6:	e9c4 5505 	strd	r5, r5, [r4, #20]
     2fa:	2208      	movs	r2, #8
     2fc:	4629      	mov	r1, r5
     2fe:	f104 005c 	add.w	r0, r4, #92	@ 0x5c
     302:	f000 f8a1 	bl	0x448
     306:	e9c4 550d 	strd	r5, r5, [r4, #52]	@ 0x34
     30a:	e9c4 5512 	strd	r5, r5, [r4, #72]	@ 0x48
     30e:	e7e9      	b.n	0x2e4
     310:	bf00      	nop
     312:	4e18      	ldr	r6, [pc, #96]	@ (0x374)
     314:	0803      	lsrs	r3, r0, #32
     316:	0001      	movs	r1, r0
     318:	ffff b40e 	vraddhn.i<illegal width 128>	d27, <illegal reg q7.5>, q7
     31c:	b503      	push	{r0, r1, lr}
     31e:	4601      	mov	r1, r0
     320:	ab03      	add	r3, sp, #12
     322:	4805      	ldr	r0, [pc, #20]	@ (0x338)
     324:	f853 2b04 	ldr.w	r2, [r3], #4
     328:	6800      	ldr	r0, [r0, #0]
     32a:	9301      	str	r3, [sp, #4]
     32c:	f000 f975 	bl	0x61a
     330:	b002      	add	sp, #8
     332:	f85d eb04 	ldr.w	lr, [sp], #4
     336:	b003      	add	sp, #12
     338:	4770      	bx	lr
     33a:	0114      	lsls	r4, r2, #4
     33c:	2000      	movs	r0, #0
     33e:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
     342:	4680      	mov	r8, r0
     344:	4689      	mov	r9, r1
     346:	f100 0448 	add.w	r4, r0, #72	@ 0x48
     34a:	2600      	movs	r6, #0
     34c:	b914      	cbnz	r4, 0x354
     34e:	4630      	mov	r0, r6
     350:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
     354:	e9d4 7501 	ldrd	r7, r5, [r4, #4]
     358:	3f01      	subs	r7, #1
     35a:	d501      	bpl.n	0x360
     35c:	6824      	ldr	r4, [r4, #0]
     35e:	e7f5      	b.n	0x34c
     360:	89ab      	ldrh	r3, [r5, #12]
     362:	2b01      	cmp	r3, #1
     364:	d907      	bls.n	0x376
     366:	f9b5 300e 	ldrsh.w	r3, [r5, #14]
     36a:	3301      	adds	r3, #1
     36c:	d003      	beq.n	0x376
     36e:	4629      	mov	r1, r5
     370:	4640      	mov	r0, r8
     372:	47c8      	blx	r9
     374:	4306      	orrs	r6, r0
     376:	3568      	adds	r5, #104	@ 0x68
     378:	e7ee      	b.n	0x358
     37a:	b570      	push	{r4, r5, r6, lr}
     37c:	4e0d      	ldr	r6, [pc, #52]	@ (0x3b4)
     37e:	4c0d      	ldr	r4, [pc, #52]	@ (0x3b4)
     380:	1ba4      	subs	r4, r4, r6
     382:	10a4      	asrs	r4, r4, #2
     384:	2500      	movs	r5, #0
     386:	42a5      	cmp	r5, r4
     388:	d109      	bne.n	0x39e
     38a:	4e0b      	ldr	r6, [pc, #44]	@ (0x3b8)
     38c:	4c0c      	ldr	r4, [pc, #48]	@ (0x3c0)
     38e:	f001 f8b2 	bl	0x14f6
     392:	1ba4      	subs	r4, r4, r6
     394:	10a4      	asrs	r4, r4, #2
     396:	2500      	movs	r5, #0
     398:	42a5      	cmp	r5, r4
     39a:	d105      	bne.n	0x3a8
     39c:	bd70      	pop	{r4, r5, r6, pc}
     39e:	f856 3025 	ldr.w	r3, [r6, r5, lsl #2]
     3a2:	4798      	blx	r3
     3a4:	3501      	adds	r5, #1
     3a6:	e7ee      	b.n	0x386
     3a8:	f856 3025 	ldr.w	r3, [r6, r5, lsl #2]
     3ac:	4798      	blx	r3
     3ae:	3501      	adds	r5, #1
     3b0:	e7f2      	b.n	0x398
     3b2:	4e54      	ldr	r6, [pc, #336]	@ (0x504)
     3b4:	0803      	lsrs	r3, r0, #32
     3b6:	4e54      	ldr	r6, [pc, #336]	@ (0x508)
     3b8:	0803      	lsrs	r3, r0, #32
     3ba:	4e54      	ldr	r6, [pc, #336]	@ (0x50c)
     3bc:	0803      	lsrs	r3, r0, #32
     3be:	4e58      	ldr	r6, [pc, #352]	@ (0x520)
     3c0:	0803      	lsrs	r3, r0, #32
     3c2:	4b02      	ldr	r3, [pc, #8]	@ (0x3cc)
     3c4:	4601      	mov	r1, r0
     3c6:	6818      	ldr	r0, [r3, #0]
     3c8:	f000 b8a3 	b.w	0x512
     3cc:	bf00      	nop
     3ce:	0114      	lsls	r4, r2, #4
     3d0:	2000      	movs	r0, #0
     3d2:	4b02      	ldr	r3, [pc, #8]	@ (0x3dc)
     3d4:	4601      	mov	r1, r0
     3d6:	6818      	ldr	r0, [r3, #0]
     3d8:	f000 b84d 	b.w	0x476
     3dc:	bf00      	nop
     3de:	0114      	lsls	r4, r2, #4
     3e0:	2000      	movs	r0, #0
     3e2:	b530      	push	{r4, r5, lr}
     3e4:	2400      	movs	r4, #0
     3e6:	42a2      	cmp	r2, r4
     3e8:	d101      	bne.n	0x3ee
     3ea:	2000      	movs	r0, #0
     3ec:	e007      	b.n	0x3fe
     3ee:	5d03      	ldrb	r3, [r0, r4]
     3f0:	3401      	adds	r4, #1
     3f2:	190d      	adds	r5, r1, r4
     3f4:	f815 5c01 	ldrb.w	r5, [r5, #-1]
     3f8:	42ab      	cmp	r3, r5
     3fa:	d0f4      	beq.n	0x3e6
     3fc:	1b58      	subs	r0, r3, r5
     3fe:	bd30      	pop	{r4, r5, pc}
     400:	b510      	push	{r4, lr}
     402:	1e43      	subs	r3, r0, #1
     404:	440a      	add	r2, r1
     406:	4291      	cmp	r1, r2
     408:	d100      	bne.n	0x40c
     40a:	bd10      	pop	{r4, pc}
     40c:	f811 4b01 	ldrb.w	r4, [r1], #1
     410:	f803 4f01 	strb.w	r4, [r3, #1]!
     414:	e7f7      	b.n	0x406
     416:	4288      	cmp	r0, r1
     418:	b510      	push	{r4, lr}
     41a:	eb01 0302 	add.w	r3, r1, r2
     41e:	d807      	bhi.n	0x430
     420:	1e42      	subs	r2, r0, #1
     422:	4299      	cmp	r1, r3
     424:	d00a      	beq.n	0x43c
     426:	f811 4b01 	ldrb.w	r4, [r1], #1
     42a:	f802 4f01 	strb.w	r4, [r2, #1]!
     42e:	e7f8      	b.n	0x422
     430:	4283      	cmp	r3, r0
     432:	d9f5      	bls.n	0x420
     434:	1881      	adds	r1, r0, r2
     436:	1ad2      	subs	r2, r2, r3
     438:	42d3      	cmn	r3, r2
     43a:	d100      	bne.n	0x43e
     43c:	bd10      	pop	{r4, pc}
     43e:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
     442:	f801 4d01 	strb.w	r4, [r1, #-1]!
     446:	e7f7      	b.n	0x438
     448:	4402      	add	r2, r0
     44a:	4603      	mov	r3, r0
     44c:	4293      	cmp	r3, r2
     44e:	d100      	bne.n	0x452
     450:	4770      	bx	lr
     452:	f803 1b01 	strb.w	r1, [r3], #1
     456:	e7f9      	b.n	0x44c
     458:	b538      	push	{r3, r4, r5, lr}
     45a:	fb02 f401 	mul.w	r4, r2, r1
     45e:	4621      	mov	r1, r4
     460:	f000 f857 	bl	0x512
     464:	4605      	mov	r5, r0
     466:	b118      	cbz	r0, 0x470
     468:	4622      	mov	r2, r4
     46a:	2100      	movs	r1, #0
     46c:	f7ff ffec 	bl	0x448
     470:	4628      	mov	r0, r5
     472:	bd38      	pop	{r3, r4, r5, pc}
     474:	0000      	movs	r0, r0
     476:	b538      	push	{r3, r4, r5, lr}
     478:	4605      	mov	r5, r0
     47a:	2900      	cmp	r1, #0
     47c:	d045      	beq.n	0x50a
     47e:	f851 3c04 	ldr.w	r3, [r1, #-4]
     482:	1f0c      	subs	r4, r1, #4
     484:	2b00      	cmp	r3, #0
     486:	bfb8      	it	lt
     488:	18e4      	addlt	r4, r4, r3
     48a:	f000 fdc0 	bl	0x100e
     48e:	4a1f      	ldr	r2, [pc, #124]	@ (0x50c)
     490:	6813      	ldr	r3, [r2, #0]
     492:	4610      	mov	r0, r2
     494:	b933      	cbnz	r3, 0x4a4
     496:	6063      	str	r3, [r4, #4]
     498:	6014      	str	r4, [r2, #0]
     49a:	4628      	mov	r0, r5
     49c:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
     4a0:	f000 bdb6 	b.w	0x1010
     4a4:	42a3      	cmp	r3, r4
     4a6:	d90c      	bls.n	0x4c2
     4a8:	6821      	ldr	r1, [r4, #0]
     4aa:	1862      	adds	r2, r4, r1
     4ac:	4293      	cmp	r3, r2
     4ae:	bf04      	itt	eq
     4b0:	681a      	ldreq	r2, [r3, #0]
     4b2:	685b      	ldreq	r3, [r3, #4]
     4b4:	6063      	str	r3, [r4, #4]
     4b6:	bf04      	itt	eq
     4b8:	1852      	addeq	r2, r2, r1
     4ba:	6022      	streq	r2, [r4, #0]
     4bc:	6004      	str	r4, [r0, #0]
     4be:	e7ec      	b.n	0x49a
     4c0:	4613      	mov	r3, r2
     4c2:	685a      	ldr	r2, [r3, #4]
     4c4:	b10a      	cbz	r2, 0x4ca
     4c6:	42a2      	cmp	r2, r4
     4c8:	d9fa      	bls.n	0x4c0
     4ca:	6819      	ldr	r1, [r3, #0]
     4cc:	1858      	adds	r0, r3, r1
     4ce:	42a0      	cmp	r0, r4
     4d0:	d10b      	bne.n	0x4ea
     4d2:	6820      	ldr	r0, [r4, #0]
     4d4:	4401      	add	r1, r0
     4d6:	1858      	adds	r0, r3, r1
     4d8:	4282      	cmp	r2, r0
     4da:	6019      	str	r1, [r3, #0]
     4dc:	d1dd      	bne.n	0x49a
     4de:	6810      	ldr	r0, [r2, #0]
     4e0:	6852      	ldr	r2, [r2, #4]
     4e2:	605a      	str	r2, [r3, #4]
     4e4:	4401      	add	r1, r0
     4e6:	6019      	str	r1, [r3, #0]
     4e8:	e7d7      	b.n	0x49a
     4ea:	d902      	bls.n	0x4f2
     4ec:	230c      	movs	r3, #12
     4ee:	602b      	str	r3, [r5, #0]
     4f0:	e7d3      	b.n	0x49a
     4f2:	6820      	ldr	r0, [r4, #0]
     4f4:	1821      	adds	r1, r4, r0
     4f6:	428a      	cmp	r2, r1
     4f8:	bf04      	itt	eq
     4fa:	6811      	ldreq	r1, [r2, #0]
     4fc:	6852      	ldreq	r2, [r2, #4]
     4fe:	6062      	str	r2, [r4, #4]
     500:	bf04      	itt	eq
     502:	1809      	addeq	r1, r1, r0
     504:	6021      	streq	r1, [r4, #0]
     506:	605c      	str	r4, [r3, #4]
     508:	e7c7      	b.n	0x49a
     50a:	bd38      	pop	{r3, r4, r5, pc}
     50c:	bf00      	nop
     50e:	248c      	movs	r4, #140	@ 0x8c
     510:	2000      	movs	r0, #0
     512:	b570      	push	{r4, r5, r6, lr}
     514:	1ccd      	adds	r5, r1, #3
     516:	f025 0503 	bic.w	r5, r5, #3
     51a:	3508      	adds	r5, #8
     51c:	2d0c      	cmp	r5, #12
     51e:	bf38      	it	cc
     520:	250c      	movcc	r5, #12
     522:	2d00      	cmp	r5, #0
     524:	4606      	mov	r6, r0
     526:	db01      	blt.n	0x52c
     528:	42a9      	cmp	r1, r5
     52a:	d903      	bls.n	0x534
     52c:	230c      	movs	r3, #12
     52e:	6033      	str	r3, [r6, #0]
     530:	2000      	movs	r0, #0
     532:	bd70      	pop	{r4, r5, r6, pc}
     534:	f000 fd6b 	bl	0x100e
     538:	4a21      	ldr	r2, [pc, #132]	@ (0x5c0)
     53a:	6814      	ldr	r4, [r2, #0]
     53c:	4621      	mov	r1, r4
     53e:	b991      	cbnz	r1, 0x566
     540:	4c20      	ldr	r4, [pc, #128]	@ (0x5c4)
     542:	6823      	ldr	r3, [r4, #0]
     544:	b91b      	cbnz	r3, 0x54e
     546:	4630      	mov	r0, r6
     548:	f000 fbb5 	bl	0xcb6
     54c:	6020      	str	r0, [r4, #0]
     54e:	4629      	mov	r1, r5
     550:	4630      	mov	r0, r6
     552:	f000 fbb0 	bl	0xcb6
     556:	1c43      	adds	r3, r0, #1
     558:	d124      	bne.n	0x5a4
     55a:	230c      	movs	r3, #12
     55c:	6033      	str	r3, [r6, #0]
     55e:	4630      	mov	r0, r6
     560:	f000 fd56 	bl	0x1010
     564:	e7e4      	b.n	0x530
     566:	680b      	ldr	r3, [r1, #0]
     568:	1b5b      	subs	r3, r3, r5
     56a:	d418      	bmi.n	0x59e
     56c:	2b0b      	cmp	r3, #11
     56e:	d90f      	bls.n	0x590
     570:	600b      	str	r3, [r1, #0]
     572:	50cd      	str	r5, [r1, r3]
     574:	18cc      	adds	r4, r1, r3
     576:	4630      	mov	r0, r6
     578:	f000 fd4a 	bl	0x1010
     57c:	f104 000b 	add.w	r0, r4, #11
     580:	1d23      	adds	r3, r4, #4
     582:	f020 0007 	bic.w	r0, r0, #7
     586:	1ac3      	subs	r3, r0, r3
     588:	d0d3      	beq.n	0x532
     58a:	425a      	negs	r2, r3
     58c:	50e2      	str	r2, [r4, r3]
     58e:	e7d0      	b.n	0x532
     590:	428c      	cmp	r4, r1
     592:	684b      	ldr	r3, [r1, #4]
     594:	bf16      	itet	ne
     596:	6063      	strne	r3, [r4, #4]
     598:	6013      	streq	r3, [r2, #0]
     59a:	460c      	movne	r4, r1
     59c:	e7eb      	b.n	0x576
     59e:	460c      	mov	r4, r1
     5a0:	6849      	ldr	r1, [r1, #4]
     5a2:	e7cc      	b.n	0x53e
     5a4:	1cc4      	adds	r4, r0, #3
     5a6:	f024 0403 	bic.w	r4, r4, #3
     5aa:	42a0      	cmp	r0, r4
     5ac:	d005      	beq.n	0x5ba
     5ae:	1a21      	subs	r1, r4, r0
     5b0:	4630      	mov	r0, r6
     5b2:	f000 fb80 	bl	0xcb6
     5b6:	3001      	adds	r0, #1
     5b8:	d0cf      	beq.n	0x55a
     5ba:	6025      	str	r5, [r4, #0]
     5bc:	e7db      	b.n	0x576
     5be:	248c      	movs	r4, #140	@ 0x8c
     5c0:	2000      	movs	r0, #0
     5c2:	2490      	movs	r4, #144	@ 0x90
     5c4:	2000      	movs	r0, #0
     5c6:	6893      	ldr	r3, [r2, #8]
     5c8:	3b01      	subs	r3, #1
     5ca:	2b00      	cmp	r3, #0
     5cc:	b410      	push	{r4}
     5ce:	6093      	str	r3, [r2, #8]
     5d0:	da08      	bge.n	0x5e4
     5d2:	6994      	ldr	r4, [r2, #24]
     5d4:	42a3      	cmp	r3, r4
     5d6:	db01      	blt.n	0x5dc
     5d8:	290a      	cmp	r1, #10
     5da:	d103      	bne.n	0x5e4
     5dc:	f85d 4b04 	ldr.w	r4, [sp], #4
     5e0:	f000 bbbd 	b.w	0xd5e
     5e4:	6813      	ldr	r3, [r2, #0]
     5e6:	1c58      	adds	r0, r3, #1
     5e8:	6010      	str	r0, [r2, #0]
     5ea:	7019      	strb	r1, [r3, #0]
     5ec:	4608      	mov	r0, r1
     5ee:	f85d 4b04 	ldr.w	r4, [sp], #4
     5f2:	4770      	bx	lr
     5f4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
     5f6:	4606      	mov	r6, r0
     5f8:	460f      	mov	r7, r1
     5fa:	4614      	mov	r4, r2
     5fc:	18d5      	adds	r5, r2, r3
     5fe:	42ac      	cmp	r4, r5
     600:	d101      	bne.n	0x606
     602:	2000      	movs	r0, #0
     604:	e007      	b.n	0x616
     606:	463a      	mov	r2, r7
     608:	f814 1b01 	ldrb.w	r1, [r4], #1
     60c:	4630      	mov	r0, r6
     60e:	f7ff ffda 	bl	0x5c6
     612:	1c43      	adds	r3, r0, #1
     614:	d1f3      	bne.n	0x5fe
     616:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
     618:	0000      	movs	r0, r0
     61a:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
     61e:	460c      	mov	r4, r1
     620:	b09d      	sub	sp, #116	@ 0x74
     622:	4617      	mov	r7, r2
     624:	461d      	mov	r5, r3
     626:	4606      	mov	r6, r0
     628:	b118      	cbz	r0, 0x632
     62a:	6983      	ldr	r3, [r0, #24]
     62c:	b90b      	cbnz	r3, 0x632
     62e:	f7ff fe08 	bl	0x242
     632:	4b7c      	ldr	r3, [pc, #496]	@ (0x824)
     634:	429c      	cmp	r4, r3
     636:	d158      	bne.n	0x6ea
     638:	6874      	ldr	r4, [r6, #4]
     63a:	89a3      	ldrh	r3, [r4, #12]
     63c:	0718      	lsls	r0, r3, #28
     63e:	d55e      	bpl.n	0x6fe
     640:	6923      	ldr	r3, [r4, #16]
     642:	2b00      	cmp	r3, #0
     644:	d05b      	beq.n	0x6fe
     646:	2300      	movs	r3, #0
     648:	9309      	str	r3, [sp, #36]	@ 0x24
     64a:	2320      	movs	r3, #32
     64c:	f88d 3029 	strb.w	r3, [sp, #41]	@ 0x29
     650:	2330      	movs	r3, #48	@ 0x30
     652:	f88d 302a 	strb.w	r3, [sp, #42]	@ 0x2a
     656:	9503      	str	r5, [sp, #12]
     658:	f04f 0b01 	mov.w	fp, #1
     65c:	46b8      	mov	r8, r7
     65e:	4645      	mov	r5, r8
     660:	f815 3b01 	ldrb.w	r3, [r5], #1
     664:	b10b      	cbz	r3, 0x66a
     666:	2b25      	cmp	r3, #37	@ 0x25
     668:	d154      	bne.n	0x714
     66a:	ebb8 0a07 	subs.w	sl, r8, r7
     66e:	d00b      	beq.n	0x688
     670:	4653      	mov	r3, sl
     672:	463a      	mov	r2, r7
     674:	4621      	mov	r1, r4
     676:	4630      	mov	r0, r6
     678:	f7ff ffbc 	bl	0x5f4
     67c:	3001      	adds	r0, #1
     67e:	f000 80c2 	beq.w	0x806
     682:	9b09      	ldr	r3, [sp, #36]	@ 0x24
     684:	4453      	add	r3, sl
     686:	9309      	str	r3, [sp, #36]	@ 0x24
     688:	f898 3000 	ldrb.w	r3, [r8]
     68c:	2b00      	cmp	r3, #0
     68e:	f000 80ba 	beq.w	0x806
     692:	2300      	movs	r3, #0
     694:	f04f 32ff 	mov.w	r2, #4294967295	@ 0xffffffff
     698:	e9cd 2305 	strd	r2, r3, [sp, #20]
     69c:	9304      	str	r3, [sp, #16]
     69e:	9307      	str	r3, [sp, #28]
     6a0:	f88d 3053 	strb.w	r3, [sp, #83]	@ 0x53
     6a4:	931a      	str	r3, [sp, #104]	@ 0x68
     6a6:	46a8      	mov	r8, r5
     6a8:	2205      	movs	r2, #5
     6aa:	f818 1b01 	ldrb.w	r1, [r8], #1
     6ae:	485e      	ldr	r0, [pc, #376]	@ (0x828)
     6b0:	f7ec fcb9 	bl	0xfffed026
     6b4:	9b04      	ldr	r3, [sp, #16]
     6b6:	bb78      	cbnz	r0, 0x718
     6b8:	06d9      	lsls	r1, r3, #27
     6ba:	bf44      	itt	mi
     6bc:	2220      	movmi	r2, #32
     6be:	f88d 2053 	strbmi.w	r2, [sp, #83]	@ 0x53
     6c2:	071a      	lsls	r2, r3, #28
     6c4:	bf44      	itt	mi
     6c6:	222b      	movmi	r2, #43	@ 0x2b
     6c8:	f88d 2053 	strbmi.w	r2, [sp, #83]	@ 0x53
     6cc:	782a      	ldrb	r2, [r5, #0]
     6ce:	2a2a      	cmp	r2, #42	@ 0x2a
     6d0:	d02a      	beq.n	0x728
     6d2:	9a07      	ldr	r2, [sp, #28]
     6d4:	46a8      	mov	r8, r5
     6d6:	2000      	movs	r0, #0
     6d8:	250a      	movs	r5, #10
     6da:	4641      	mov	r1, r8
     6dc:	f811 3b01 	ldrb.w	r3, [r1], #1
     6e0:	3b30      	subs	r3, #48	@ 0x30
     6e2:	2b09      	cmp	r3, #9
     6e4:	d969      	bls.n	0x7ba
     6e6:	b360      	cbz	r0, 0x742
     6e8:	e024      	b.n	0x734
     6ea:	4b50      	ldr	r3, [pc, #320]	@ (0x82c)
     6ec:	429c      	cmp	r4, r3
     6ee:	d101      	bne.n	0x6f4
     6f0:	68b4      	ldr	r4, [r6, #8]
     6f2:	e7a2      	b.n	0x63a
     6f4:	4b4f      	ldr	r3, [pc, #316]	@ (0x834)
     6f6:	429c      	cmp	r4, r3
     6f8:	bf08      	it	eq
     6fa:	68f4      	ldreq	r4, [r6, #12]
     6fc:	e79d      	b.n	0x63a
     6fe:	4621      	mov	r1, r4
     700:	4630      	mov	r0, r6
     702:	f000 fb90 	bl	0xe26
     706:	2800      	cmp	r0, #0
     708:	d09d      	beq.n	0x646
     70a:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
     70e:	b01d      	add	sp, #116	@ 0x74
     710:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
     714:	46a8      	mov	r8, r5
     716:	e7a2      	b.n	0x65e
     718:	4a44      	ldr	r2, [pc, #272]	@ (0x82c)
     71a:	1a80      	subs	r0, r0, r2
     71c:	fa0b f000 	lsl.w	r0, fp, r0
     720:	4318      	orrs	r0, r3
     722:	9004      	str	r0, [sp, #16]
     724:	4645      	mov	r5, r8
     726:	e7be      	b.n	0x6a6
     728:	9a03      	ldr	r2, [sp, #12]
     72a:	1d11      	adds	r1, r2, #4
     72c:	6812      	ldr	r2, [r2, #0]
     72e:	9103      	str	r1, [sp, #12]
     730:	2a00      	cmp	r2, #0
     732:	db01      	blt.n	0x738
     734:	9207      	str	r2, [sp, #28]
     736:	e004      	b.n	0x742
     738:	4252      	negs	r2, r2
     73a:	f043 0302 	orr.w	r3, r3, #2
     73e:	9207      	str	r2, [sp, #28]
     740:	9304      	str	r3, [sp, #16]
     742:	f898 3000 	ldrb.w	r3, [r8]
     746:	2b2e      	cmp	r3, #46	@ 0x2e
     748:	d10e      	bne.n	0x768
     74a:	f898 3001 	ldrb.w	r3, [r8, #1]
     74e:	2b2a      	cmp	r3, #42	@ 0x2a
     750:	d138      	bne.n	0x7c4
     752:	9b03      	ldr	r3, [sp, #12]
     754:	1d1a      	adds	r2, r3, #4
     756:	681b      	ldr	r3, [r3, #0]
     758:	9203      	str	r2, [sp, #12]
     75a:	2b00      	cmp	r3, #0
     75c:	bfb8      	it	lt
     75e:	f04f 33ff 	movlt.w	r3, #4294967295	@ 0xffffffff
     762:	f108 0802 	add.w	r8, r8, #2
     766:	9305      	str	r3, [sp, #20]
     768:	4d33      	ldr	r5, [pc, #204]	@ (0x838)
     76a:	f898 1000 	ldrb.w	r1, [r8]
     76e:	2203      	movs	r2, #3
     770:	4628      	mov	r0, r5
     772:	f7ec fc58 	bl	0xfffed026
     776:	b140      	cbz	r0, 0x78a
     778:	2340      	movs	r3, #64	@ 0x40
     77a:	1b40      	subs	r0, r0, r5
     77c:	fa03 f000 	lsl.w	r0, r3, r0
     780:	9b04      	ldr	r3, [sp, #16]
     782:	4303      	orrs	r3, r0
     784:	f108 0801 	add.w	r8, r8, #1
     788:	9304      	str	r3, [sp, #16]
     78a:	f898 1000 	ldrb.w	r1, [r8]
     78e:	482a      	ldr	r0, [pc, #168]	@ (0x838)
     790:	f88d 1028 	strb.w	r1, [sp, #40]	@ 0x28
     794:	2206      	movs	r2, #6
     796:	f108 0701 	add.w	r7, r8, #1
     79a:	f7ec fc44 	bl	0xfffed026
     79e:	2800      	cmp	r0, #0
     7a0:	d037      	beq.n	0x812
     7a2:	4b26      	ldr	r3, [pc, #152]	@ (0x83c)
     7a4:	bb1b      	cbnz	r3, 0x7ee
     7a6:	9b03      	ldr	r3, [sp, #12]
     7a8:	3307      	adds	r3, #7
     7aa:	f023 0307 	bic.w	r3, r3, #7
     7ae:	3308      	adds	r3, #8
     7b0:	9303      	str	r3, [sp, #12]
     7b2:	9b09      	ldr	r3, [sp, #36]	@ 0x24
     7b4:	444b      	add	r3, r9
     7b6:	9309      	str	r3, [sp, #36]	@ 0x24
     7b8:	e750      	b.n	0x65c
     7ba:	fb05 3202 	mla	r2, r5, r2, r3
     7be:	2001      	movs	r0, #1
     7c0:	4688      	mov	r8, r1
     7c2:	e78a      	b.n	0x6da
     7c4:	2300      	movs	r3, #0
     7c6:	f108 0801 	add.w	r8, r8, #1
     7ca:	9305      	str	r3, [sp, #20]
     7cc:	4619      	mov	r1, r3
     7ce:	250a      	movs	r5, #10
     7d0:	4640      	mov	r0, r8
     7d2:	f810 2b01 	ldrb.w	r2, [r0], #1
     7d6:	3a30      	subs	r2, #48	@ 0x30
     7d8:	2a09      	cmp	r2, #9
     7da:	d903      	bls.n	0x7e4
     7dc:	2b00      	cmp	r3, #0
     7de:	d0c3      	beq.n	0x768
     7e0:	9105      	str	r1, [sp, #20]
     7e2:	e7c1      	b.n	0x768
     7e4:	fb05 2101 	mla	r1, r5, r1, r2
     7e8:	2301      	movs	r3, #1
     7ea:	4680      	mov	r8, r0
     7ec:	e7f0      	b.n	0x7d0
     7ee:	ab03      	add	r3, sp, #12
     7f0:	9300      	str	r3, [sp, #0]
     7f2:	4622      	mov	r2, r4
     7f4:	4b13      	ldr	r3, [pc, #76]	@ (0x844)
     7f6:	a904      	add	r1, sp, #16
     7f8:	4630      	mov	r0, r6
     7fa:	f3af 8000 	nop.w
     7fe:	f1b0 3fff 	cmp.w	r0, #4294967295	@ 0xffffffff
     802:	4681      	mov	r9, r0
     804:	d1d5      	bne.n	0x7b2
     806:	89a3      	ldrh	r3, [r4, #12]
     808:	065b      	lsls	r3, r3, #25
     80a:	f53f af7e 	bmi.w	0x70a
     80e:	9809      	ldr	r0, [sp, #36]	@ 0x24
     810:	e77d      	b.n	0x70e
     812:	ab03      	add	r3, sp, #12
     814:	9300      	str	r3, [sp, #0]
     816:	4622      	mov	r2, r4
     818:	4b0a      	ldr	r3, [pc, #40]	@ (0x844)
     81a:	a904      	add	r1, sp, #16
     81c:	4630      	mov	r0, r6
     81e:	f000 f888 	bl	0x932
     822:	e7ec      	b.n	0x7fe
     824:	bf00      	nop
     826:	4dd8      	ldr	r5, [pc, #864]	@ (0xb88)
     828:	0803      	lsrs	r3, r0, #32
     82a:	4e1c      	ldr	r6, [pc, #112]	@ (0x89c)
     82c:	0803      	lsrs	r3, r0, #32
     82e:	4df8      	ldr	r5, [pc, #992]	@ (0xc10)
     830:	0803      	lsrs	r3, r0, #32
     832:	4db8      	ldr	r5, [pc, #736]	@ (0xb14)
     834:	0803      	lsrs	r3, r0, #32
     836:	4e22      	ldr	r6, [pc, #136]	@ (0x8c0)
     838:	0803      	lsrs	r3, r0, #32
     83a:	4e26      	ldr	r6, [pc, #152]	@ (0x8d4)
     83c:	0803      	lsrs	r3, r0, #32
     83e:	0000      	movs	r0, r0
     840:	0000      	movs	r0, r0
     842:	37bf      	adds	r7, #191	@ 0xbf
     844:	0803      	lsrs	r3, r0, #32
     846:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
     84a:	4691      	mov	r9, r2
     84c:	461f      	mov	r7, r3
     84e:	688a      	ldr	r2, [r1, #8]
     850:	690b      	ldr	r3, [r1, #16]
     852:	f8dd 8020 	ldr.w	r8, [sp, #32]
     856:	4293      	cmp	r3, r2
     858:	bfb8      	it	lt
     85a:	4613      	movlt	r3, r2
     85c:	f8c9 3000 	str.w	r3, [r9]
     860:	f891 2043 	ldrb.w	r2, [r1, #67]	@ 0x43
     864:	4606      	mov	r6, r0
     866:	460c      	mov	r4, r1
     868:	b112      	cbz	r2, 0x870
     86a:	3301      	adds	r3, #1
     86c:	f8c9 3000 	str.w	r3, [r9]
     870:	6823      	ldr	r3, [r4, #0]
     872:	0699      	lsls	r1, r3, #26
     874:	bf42      	ittt	mi
     876:	f8d9 3000 	ldrmi.w	r3, [r9]
     87a:	3302      	addmi	r3, #2
     87c:	f8c9 3000 	strmi.w	r3, [r9]
     880:	6825      	ldr	r5, [r4, #0]
     882:	f015 0506 	ands.w	r5, r5, #6
     886:	d107      	bne.n	0x898
     888:	f104 0a19 	add.w	sl, r4, #25
     88c:	68e3      	ldr	r3, [r4, #12]
     88e:	f8d9 2000 	ldr.w	r2, [r9]
     892:	1a9b      	subs	r3, r3, r2
     894:	42ab      	cmp	r3, r5
     896:	dc28      	bgt.n	0x8ea
     898:	f894 3043 	ldrb.w	r3, [r4, #67]	@ 0x43
     89c:	6822      	ldr	r2, [r4, #0]
     89e:	3300      	adds	r3, #0
     8a0:	bf18      	it	ne
     8a2:	2301      	movne	r3, #1
     8a4:	0692      	lsls	r2, r2, #26
     8a6:	d42d      	bmi.n	0x904
     8a8:	f104 0243 	add.w	r2, r4, #67	@ 0x43
     8ac:	4639      	mov	r1, r7
     8ae:	4630      	mov	r0, r6
     8b0:	47c0      	blx	r8
     8b2:	3001      	adds	r0, #1
     8b4:	d020      	beq.n	0x8f8
     8b6:	6823      	ldr	r3, [r4, #0]
     8b8:	68e5      	ldr	r5, [r4, #12]
     8ba:	f8d9 2000 	ldr.w	r2, [r9]
     8be:	f003 0306 	and.w	r3, r3, #6
     8c2:	2b04      	cmp	r3, #4
     8c4:	bf08      	it	eq
     8c6:	1aad      	subeq	r5, r5, r2
     8c8:	68a3      	ldr	r3, [r4, #8]
     8ca:	6922      	ldr	r2, [r4, #16]
     8cc:	bf0c      	ite	eq
     8ce:	ea25 75e5 	biceq.w	r5, r5, r5, asr #31
     8d2:	2500      	movne	r5, #0
     8d4:	4293      	cmp	r3, r2
     8d6:	bfc4      	itt	gt
     8d8:	1a9b      	subgt	r3, r3, r2
     8da:	18ed      	addgt	r5, r5, r3
     8dc:	f04f 0900 	mov.w	r9, #0
     8e0:	341a      	adds	r4, #26
     8e2:	454d      	cmp	r5, r9
     8e4:	d11a      	bne.n	0x91c
     8e6:	2000      	movs	r0, #0
     8e8:	e008      	b.n	0x8fc
     8ea:	2301      	movs	r3, #1
     8ec:	4652      	mov	r2, sl
     8ee:	4639      	mov	r1, r7
     8f0:	4630      	mov	r0, r6
     8f2:	47c0      	blx	r8
     8f4:	3001      	adds	r0, #1
     8f6:	d103      	bne.n	0x900
     8f8:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
     8fc:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
     900:	3501      	adds	r5, #1
     902:	e7c3      	b.n	0x88c
     904:	18e1      	adds	r1, r4, r3
     906:	1c5a      	adds	r2, r3, #1
     908:	2030      	movs	r0, #48	@ 0x30
     90a:	f881 0043 	strb.w	r0, [r1, #67]	@ 0x43
     90e:	4422      	add	r2, r4
     910:	f894 1045 	ldrb.w	r1, [r4, #69]	@ 0x45
     914:	f882 1043 	strb.w	r1, [r2, #67]	@ 0x43
     918:	3302      	adds	r3, #2
     91a:	e7c5      	b.n	0x8a8
     91c:	2301      	movs	r3, #1
     91e:	4622      	mov	r2, r4
     920:	4639      	mov	r1, r7
     922:	4630      	mov	r0, r6
     924:	47c0      	blx	r8
     926:	3001      	adds	r0, #1
     928:	d0e6      	beq.n	0x8f8
     92a:	f109 0901 	add.w	r9, r9, #1
     92e:	e7d8      	b.n	0x8e2
     930:	0000      	movs	r0, r0
     932:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
     936:	f101 0c43 	add.w	ip, r1, #67	@ 0x43
     93a:	460c      	mov	r4, r1
     93c:	7e09      	ldrb	r1, [r1, #24]
     93e:	b085      	sub	sp, #20
     940:	296e      	cmp	r1, #110	@ 0x6e
     942:	4617      	mov	r7, r2
     944:	4606      	mov	r6, r0
     946:	4698      	mov	r8, r3
     948:	9a0c      	ldr	r2, [sp, #48]	@ 0x30
     94a:	f000 80b3 	beq.w	0xab4
     94e:	d822      	bhi.n	0x996
     950:	2963      	cmp	r1, #99	@ 0x63
     952:	d036      	beq.n	0x9c2
     954:	d80a      	bhi.n	0x96c
     956:	2900      	cmp	r1, #0
     958:	f000 80b9 	beq.w	0xace
     95c:	2958      	cmp	r1, #88	@ 0x58
     95e:	f000 8083 	beq.w	0xa68
     962:	f104 0542 	add.w	r5, r4, #66	@ 0x42
     966:	f884 1042 	strb.w	r1, [r4, #66]	@ 0x42
     96a:	e032      	b.n	0x9d2
     96c:	2964      	cmp	r1, #100	@ 0x64
     96e:	d001      	beq.n	0x974
     970:	2969      	cmp	r1, #105	@ 0x69
     972:	d1f6      	bne.n	0x962
     974:	6820      	ldr	r0, [r4, #0]
     976:	6813      	ldr	r3, [r2, #0]
     978:	0605      	lsls	r5, r0, #24
     97a:	f103 0104 	add.w	r1, r3, #4
     97e:	d52a      	bpl.n	0x9d6
     980:	681b      	ldr	r3, [r3, #0]
     982:	6011      	str	r1, [r2, #0]
     984:	2b00      	cmp	r3, #0
     986:	da03      	bge.n	0x990
     988:	222d      	movs	r2, #45	@ 0x2d
     98a:	425b      	negs	r3, r3
     98c:	f884 2043 	strb.w	r2, [r4, #67]	@ 0x43
     990:	486f      	ldr	r0, [pc, #444]	@ (0xb50)
     992:	220a      	movs	r2, #10
     994:	e039      	b.n	0xa0a
     996:	2973      	cmp	r1, #115	@ 0x73
     998:	f000 809d 	beq.w	0xad6
     99c:	d808      	bhi.n	0x9b0
     99e:	296f      	cmp	r1, #111	@ 0x6f
     9a0:	d020      	beq.n	0x9e4
     9a2:	2970      	cmp	r1, #112	@ 0x70
     9a4:	d1dd      	bne.n	0x962
     9a6:	6823      	ldr	r3, [r4, #0]
     9a8:	f043 0320 	orr.w	r3, r3, #32
     9ac:	6023      	str	r3, [r4, #0]
     9ae:	e003      	b.n	0x9b8
     9b0:	2975      	cmp	r1, #117	@ 0x75
     9b2:	d017      	beq.n	0x9e4
     9b4:	2978      	cmp	r1, #120	@ 0x78
     9b6:	d1d4      	bne.n	0x962
     9b8:	2378      	movs	r3, #120	@ 0x78
     9ba:	f884 3045 	strb.w	r3, [r4, #69]	@ 0x45
     9be:	4864      	ldr	r0, [pc, #400]	@ (0xb50)
     9c0:	e055      	b.n	0xa6e
     9c2:	6813      	ldr	r3, [r2, #0]
     9c4:	1d19      	adds	r1, r3, #4
     9c6:	681b      	ldr	r3, [r3, #0]
     9c8:	6011      	str	r1, [r2, #0]
     9ca:	f104 0542 	add.w	r5, r4, #66	@ 0x42
     9ce:	f884 3042 	strb.w	r3, [r4, #66]	@ 0x42
     9d2:	2301      	movs	r3, #1
     9d4:	e08c      	b.n	0xaf0
     9d6:	681b      	ldr	r3, [r3, #0]
     9d8:	6011      	str	r1, [r2, #0]
     9da:	f010 0f40 	tst.w	r0, #64	@ 0x40
     9de:	bf18      	it	ne
     9e0:	b21b      	sxthne	r3, r3
     9e2:	e7cf      	b.n	0x984
     9e4:	6813      	ldr	r3, [r2, #0]
     9e6:	6825      	ldr	r5, [r4, #0]
     9e8:	1d18      	adds	r0, r3, #4
     9ea:	6010      	str	r0, [r2, #0]
     9ec:	0628      	lsls	r0, r5, #24
     9ee:	d501      	bpl.n	0x9f4
     9f0:	681b      	ldr	r3, [r3, #0]
     9f2:	e002      	b.n	0x9fa
     9f4:	0668      	lsls	r0, r5, #25
     9f6:	d5fb      	bpl.n	0x9f0
     9f8:	881b      	ldrh	r3, [r3, #0]
     9fa:	4854      	ldr	r0, [pc, #336]	@ (0xb4c)
     9fc:	296f      	cmp	r1, #111	@ 0x6f
     9fe:	bf14      	ite	ne
     a00:	220a      	movne	r2, #10
     a02:	2208      	moveq	r2, #8
     a04:	2100      	movs	r1, #0
     a06:	f884 1043 	strb.w	r1, [r4, #67]	@ 0x43
     a0a:	6865      	ldr	r5, [r4, #4]
     a0c:	60a5      	str	r5, [r4, #8]
     a0e:	2d00      	cmp	r5, #0
     a10:	f2c0 8095 	blt.w	0xb3e
     a14:	6821      	ldr	r1, [r4, #0]
     a16:	f021 0104 	bic.w	r1, r1, #4
     a1a:	6021      	str	r1, [r4, #0]
     a1c:	2b00      	cmp	r3, #0
     a1e:	d13d      	bne.n	0xa9c
     a20:	2d00      	cmp	r5, #0
     a22:	f040 808e 	bne.w	0xb42
     a26:	4665      	mov	r5, ip
     a28:	2a08      	cmp	r2, #8
     a2a:	d10b      	bne.n	0xa44
     a2c:	6823      	ldr	r3, [r4, #0]
     a2e:	07db      	lsls	r3, r3, #31
     a30:	d508      	bpl.n	0xa44
     a32:	6923      	ldr	r3, [r4, #16]
     a34:	6862      	ldr	r2, [r4, #4]
     a36:	429a      	cmp	r2, r3
     a38:	bfde      	ittt	le
     a3a:	2330      	movle	r3, #48	@ 0x30
     a3c:	f805 3c01 	strble.w	r3, [r5, #-1]
     a40:	f105 35ff 	addle.w	r5, r5, #4294967295	@ 0xffffffff
     a44:	ebac 0305 	sub.w	r3, ip, r5
     a48:	6123      	str	r3, [r4, #16]
     a4a:	f8cd 8000 	str.w	r8, [sp]
     a4e:	463b      	mov	r3, r7
     a50:	aa03      	add	r2, sp, #12
     a52:	4621      	mov	r1, r4
     a54:	4630      	mov	r0, r6
     a56:	f7ff fef6 	bl	0x846
     a5a:	3001      	adds	r0, #1
     a5c:	d14d      	bne.n	0xafa
     a5e:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
     a62:	b005      	add	sp, #20
     a64:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
     a68:	4839      	ldr	r0, [pc, #228]	@ (0xb50)
     a6a:	f884 1045 	strb.w	r1, [r4, #69]	@ 0x45
     a6e:	6813      	ldr	r3, [r2, #0]
     a70:	6821      	ldr	r1, [r4, #0]
     a72:	1d1d      	adds	r5, r3, #4
     a74:	681b      	ldr	r3, [r3, #0]
     a76:	6015      	str	r5, [r2, #0]
     a78:	060a      	lsls	r2, r1, #24
     a7a:	d50b      	bpl.n	0xa94
     a7c:	07ca      	lsls	r2, r1, #31
     a7e:	bf44      	itt	mi
     a80:	f041 0120 	orrmi.w	r1, r1, #32
     a84:	6021      	strmi	r1, [r4, #0]
     a86:	b91b      	cbnz	r3, 0xa90
     a88:	6822      	ldr	r2, [r4, #0]
     a8a:	f022 0220 	bic.w	r2, r2, #32
     a8e:	6022      	str	r2, [r4, #0]
     a90:	2210      	movs	r2, #16
     a92:	e7b7      	b.n	0xa04
     a94:	064d      	lsls	r5, r1, #25
     a96:	bf48      	it	mi
     a98:	b29b      	uxthmi	r3, r3
     a9a:	e7ef      	b.n	0xa7c
     a9c:	4665      	mov	r5, ip
     a9e:	fbb3 f1f2 	udiv	r1, r3, r2
     aa2:	fb02 3311 	mls	r3, r2, r1, r3
     aa6:	5cc3      	ldrb	r3, [r0, r3]
     aa8:	f805 3d01 	strb.w	r3, [r5, #-1]!
     aac:	460b      	mov	r3, r1
     aae:	2900      	cmp	r1, #0
     ab0:	d1f5      	bne.n	0xa9e
     ab2:	e7b9      	b.n	0xa28
     ab4:	6813      	ldr	r3, [r2, #0]
     ab6:	6825      	ldr	r5, [r4, #0]
     ab8:	6961      	ldr	r1, [r4, #20]
     aba:	1d18      	adds	r0, r3, #4
     abc:	6010      	str	r0, [r2, #0]
     abe:	0628      	lsls	r0, r5, #24
     ac0:	681b      	ldr	r3, [r3, #0]
     ac2:	d501      	bpl.n	0xac8
     ac4:	6019      	str	r1, [r3, #0]
     ac6:	e002      	b.n	0xace
     ac8:	066a      	lsls	r2, r5, #25
     aca:	d5fb      	bpl.n	0xac4
     acc:	8019      	strh	r1, [r3, #0]
     ace:	2300      	movs	r3, #0
     ad0:	6123      	str	r3, [r4, #16]
     ad2:	4665      	mov	r5, ip
     ad4:	e7b9      	b.n	0xa4a
     ad6:	6813      	ldr	r3, [r2, #0]
     ad8:	1d19      	adds	r1, r3, #4
     ada:	6011      	str	r1, [r2, #0]
     adc:	681d      	ldr	r5, [r3, #0]
     ade:	6862      	ldr	r2, [r4, #4]
     ae0:	2100      	movs	r1, #0
     ae2:	4628      	mov	r0, r5
     ae4:	f7ec fa9f 	bl	0xfffed026
     ae8:	b108      	cbz	r0, 0xaee
     aea:	1b40      	subs	r0, r0, r5
     aec:	6060      	str	r0, [r4, #4]
     aee:	6863      	ldr	r3, [r4, #4]
     af0:	6123      	str	r3, [r4, #16]
     af2:	2300      	movs	r3, #0
     af4:	f884 3043 	strb.w	r3, [r4, #67]	@ 0x43
     af8:	e7a7      	b.n	0xa4a
     afa:	6923      	ldr	r3, [r4, #16]
     afc:	462a      	mov	r2, r5
     afe:	4639      	mov	r1, r7
     b00:	4630      	mov	r0, r6
     b02:	47c0      	blx	r8
     b04:	3001      	adds	r0, #1
     b06:	d0aa      	beq.n	0xa5e
     b08:	6823      	ldr	r3, [r4, #0]
     b0a:	079b      	lsls	r3, r3, #30
     b0c:	d413      	bmi.n	0xb36
     b0e:	68e0      	ldr	r0, [r4, #12]
     b10:	9b03      	ldr	r3, [sp, #12]
     b12:	4298      	cmp	r0, r3
     b14:	bfb8      	it	lt
     b16:	4618      	movlt	r0, r3
     b18:	e7a3      	b.n	0xa62
     b1a:	2301      	movs	r3, #1
     b1c:	464a      	mov	r2, r9
     b1e:	4639      	mov	r1, r7
     b20:	4630      	mov	r0, r6
     b22:	47c0      	blx	r8
     b24:	3001      	adds	r0, #1
     b26:	d09a      	beq.n	0xa5e
     b28:	3501      	adds	r5, #1
     b2a:	68e3      	ldr	r3, [r4, #12]
     b2c:	9a03      	ldr	r2, [sp, #12]
     b2e:	1a9b      	subs	r3, r3, r2
     b30:	42ab      	cmp	r3, r5
     b32:	dcf2      	bgt.n	0xb1a
     b34:	e7eb      	b.n	0xb0e
     b36:	2500      	movs	r5, #0
     b38:	f104 0919 	add.w	r9, r4, #25
     b3c:	e7f5      	b.n	0xb2a
     b3e:	2b00      	cmp	r3, #0
     b40:	d1ac      	bne.n	0xa9c
     b42:	7803      	ldrb	r3, [r0, #0]
     b44:	f884 3042 	strb.w	r3, [r4, #66]	@ 0x42
     b48:	f104 0542 	add.w	r5, r4, #66	@ 0x42
     b4c:	e76c      	b.n	0xa28
     b4e:	4e2d      	ldr	r6, [pc, #180]	@ (0xc04)
     b50:	0803      	lsrs	r3, r0, #32
     b52:	4e3e      	ldr	r6, [pc, #248]	@ (0xc4c)
     b54:	0803      	lsrs	r3, r0, #32
     b56:	b40f      	push	{r0, r1, r2, r3}
     b58:	4b0a      	ldr	r3, [pc, #40]	@ (0xb84)
     b5a:	b513      	push	{r0, r1, r4, lr}
     b5c:	681c      	ldr	r4, [r3, #0]
     b5e:	b124      	cbz	r4, 0xb6a
     b60:	69a3      	ldr	r3, [r4, #24]
     b62:	b913      	cbnz	r3, 0xb6a
     b64:	4620      	mov	r0, r4
     b66:	f7ff fb6c 	bl	0x242
     b6a:	ab05      	add	r3, sp, #20
     b6c:	9a04      	ldr	r2, [sp, #16]
     b6e:	68a1      	ldr	r1, [r4, #8]
     b70:	9301      	str	r3, [sp, #4]
     b72:	4620      	mov	r0, r4
     b74:	f7ff fd51 	bl	0x61a
     b78:	b002      	add	sp, #8
     b7a:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
     b7e:	b004      	add	sp, #16
     b80:	4770      	bx	lr
     b82:	0114      	lsls	r4, r2, #4
     b84:	2000      	movs	r0, #0
     b86:	b570      	push	{r4, r5, r6, lr}
     b88:	460e      	mov	r6, r1
     b8a:	4605      	mov	r5, r0
     b8c:	b118      	cbz	r0, 0xb96
     b8e:	6983      	ldr	r3, [r0, #24]
     b90:	b90b      	cbnz	r3, 0xb96
     b92:	f7ff fb56 	bl	0x242
     b96:	69ab      	ldr	r3, [r5, #24]
     b98:	68ac      	ldr	r4, [r5, #8]
     b9a:	b913      	cbnz	r3, 0xba2
     b9c:	4628      	mov	r0, r5
     b9e:	f7ff fb50 	bl	0x242
     ba2:	4b23      	ldr	r3, [pc, #140]	@ (0xc30)
     ba4:	429c      	cmp	r4, r3
     ba6:	d117      	bne.n	0xbd8
     ba8:	686c      	ldr	r4, [r5, #4]
     baa:	89a3      	ldrh	r3, [r4, #12]
     bac:	071b      	lsls	r3, r3, #28
     bae:	d51d      	bpl.n	0xbec
     bb0:	6923      	ldr	r3, [r4, #16]
     bb2:	b1db      	cbz	r3, 0xbec
     bb4:	3e01      	subs	r6, #1
     bb6:	68a3      	ldr	r3, [r4, #8]
     bb8:	f816 1f01 	ldrb.w	r1, [r6, #1]!
     bbc:	3b01      	subs	r3, #1
     bbe:	60a3      	str	r3, [r4, #8]
     bc0:	b9e9      	cbnz	r1, 0xbfe
     bc2:	2b00      	cmp	r3, #0
     bc4:	da2e      	bge.n	0xc24
     bc6:	4622      	mov	r2, r4
     bc8:	210a      	movs	r1, #10
     bca:	4628      	mov	r0, r5
     bcc:	f000 f8c7 	bl	0xd5e
     bd0:	3001      	adds	r0, #1
     bd2:	d011      	beq.n	0xbf8
     bd4:	200a      	movs	r0, #10
     bd6:	e011      	b.n	0xbfc
     bd8:	4b17      	ldr	r3, [pc, #92]	@ (0xc38)
     bda:	429c      	cmp	r4, r3
     bdc:	d101      	bne.n	0xbe2
     bde:	68ac      	ldr	r4, [r5, #8]
     be0:	e7e3      	b.n	0xbaa
     be2:	4b15      	ldr	r3, [pc, #84]	@ (0xc38)
     be4:	429c      	cmp	r4, r3
     be6:	bf08      	it	eq
     be8:	68ec      	ldreq	r4, [r5, #12]
     bea:	e7de      	b.n	0xbaa
     bec:	4621      	mov	r1, r4
     bee:	4628      	mov	r0, r5
     bf0:	f000 f919 	bl	0xe26
     bf4:	2800      	cmp	r0, #0
     bf6:	d0dd      	beq.n	0xbb4
     bf8:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
     bfc:	bd70      	pop	{r4, r5, r6, pc}
     bfe:	2b00      	cmp	r3, #0
     c00:	da04      	bge.n	0xc0c
     c02:	69a2      	ldr	r2, [r4, #24]
     c04:	429a      	cmp	r2, r3
     c06:	dc06      	bgt.n	0xc16
     c08:	290a      	cmp	r1, #10
     c0a:	d004      	beq.n	0xc16
     c0c:	6823      	ldr	r3, [r4, #0]
     c0e:	1c5a      	adds	r2, r3, #1
     c10:	6022      	str	r2, [r4, #0]
     c12:	7019      	strb	r1, [r3, #0]
     c14:	e7cf      	b.n	0xbb6
     c16:	4622      	mov	r2, r4
     c18:	4628      	mov	r0, r5
     c1a:	f000 f8a0 	bl	0xd5e
     c1e:	3001      	adds	r0, #1
     c20:	d1c9      	bne.n	0xbb6
     c22:	e7e9      	b.n	0xbf8
     c24:	6823      	ldr	r3, [r4, #0]
     c26:	200a      	movs	r0, #10
     c28:	1c5a      	adds	r2, r3, #1
     c2a:	6022      	str	r2, [r4, #0]
     c2c:	7018      	strb	r0, [r3, #0]
     c2e:	e7e5      	b.n	0xbfc
     c30:	bf00      	nop
     c32:	4dd8      	ldr	r5, [pc, #864]	@ (0xf94)
     c34:	0803      	lsrs	r3, r0, #32
     c36:	4df8      	ldr	r5, [pc, #992]	@ (0x1018)
     c38:	0803      	lsrs	r3, r0, #32
     c3a:	4db8      	ldr	r5, [pc, #736]	@ (0xf1c)
     c3c:	0803      	lsrs	r3, r0, #32
     c3e:	4b02      	ldr	r3, [pc, #8]	@ (0xc48)
     c40:	4601      	mov	r1, r0
     c42:	6818      	ldr	r0, [r3, #0]
     c44:	f7ff bf9f 	b.w	0xb86
     c48:	bf00      	nop
     c4a:	0114      	lsls	r4, r2, #4
     c4c:	2000      	movs	r0, #0
     c4e:	b538      	push	{r3, r4, r5, lr}
     c50:	4b13      	ldr	r3, [pc, #76]	@ (0xca0)
     c52:	681c      	ldr	r4, [r3, #0]
     c54:	6ba3      	ldr	r3, [r4, #56]	@ 0x38
     c56:	b97b      	cbnz	r3, 0xc78
     c58:	2018      	movs	r0, #24
     c5a:	f7ff fbb2 	bl	0x3c2
     c5e:	4a10      	ldr	r2, [pc, #64]	@ (0xca0)
     c60:	4b11      	ldr	r3, [pc, #68]	@ (0xca8)
     c62:	63a0      	str	r0, [r4, #56]	@ 0x38
     c64:	e9c0 2300 	strd	r2, r3, [r0]
     c68:	4b10      	ldr	r3, [pc, #64]	@ (0xcac)
     c6a:	6083      	str	r3, [r0, #8]
     c6c:	230b      	movs	r3, #11
     c6e:	8183      	strh	r3, [r0, #12]
     c70:	2201      	movs	r2, #1
     c72:	2300      	movs	r3, #0
     c74:	e9c0 2304 	strd	r2, r3, [r0, #16]
     c78:	6ba1      	ldr	r1, [r4, #56]	@ 0x38
     c7a:	480c      	ldr	r0, [pc, #48]	@ (0xcac)
     c7c:	690a      	ldr	r2, [r1, #16]
     c7e:	694b      	ldr	r3, [r1, #20]
     c80:	4c0c      	ldr	r4, [pc, #48]	@ (0xcb4)
     c82:	4350      	muls	r0, r2
     c84:	fb04 0003 	mla	r0, r4, r3, r0
     c88:	fba2 2304 	umull	r2, r3, r2, r4
     c8c:	4403      	add	r3, r0
     c8e:	1c54      	adds	r4, r2, #1
     c90:	f143 0500 	adc.w	r5, r3, #0
     c94:	e9c1 4504 	strd	r4, r5, [r1, #16]
     c98:	f025 4000 	bic.w	r0, r5, #2147483648	@ 0x80000000
     c9c:	bd38      	pop	{r3, r4, r5, pc}
     c9e:	0114      	lsls	r4, r2, #4
     ca0:	2000      	movs	r0, #0
     ca2:	330e      	adds	r3, #14
     ca4:	abcd      	add	r3, sp, #820	@ 0x334
     ca6:	1234      	asrs	r4, r6, #8
     ca8:	e66d      	b.n	0x986
     caa:	deec      	udf	#236	@ 0xec
     cac:	0005      	movs	r5, r0
     cae:	f42d 5851 	bic.w	r8, sp, #13376	@ 0x3440
     cb2:	7f2d      	ldrb	r5, [r5, #28]
     cb4:	4c95      	ldr	r4, [pc, #596]	@ (0xf0c)
     cb6:	b538      	push	{r3, r4, r5, lr}
     cb8:	4c06      	ldr	r4, [pc, #24]	@ (0xcd4)
     cba:	2300      	movs	r3, #0
     cbc:	4605      	mov	r5, r0
     cbe:	4608      	mov	r0, r1
     cc0:	6023      	str	r3, [r4, #0]
     cc2:	f7ff f920 	bl	0xffffff06
     cc6:	1c43      	adds	r3, r0, #1
     cc8:	d102      	bne.n	0xcd0
     cca:	6823      	ldr	r3, [r4, #0]
     ccc:	b103      	cbz	r3, 0xcd0
     cce:	602b      	str	r3, [r5, #0]
     cd0:	bd38      	pop	{r3, r4, r5, pc}
     cd2:	5198      	str	r0, [r3, r6]
     cd4:	2001      	movs	r0, #1
     cd6:	b510      	push	{r4, lr}
     cd8:	460c      	mov	r4, r1
     cda:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
     cde:	f000 f998 	bl	0x1012
     ce2:	2800      	cmp	r0, #0
     ce4:	bfab      	itete	ge
     ce6:	6d63      	ldrge	r3, [r4, #84]	@ 0x54
     ce8:	89a3      	ldrhlt	r3, [r4, #12]
     cea:	181b      	addge	r3, r3, r0
     cec:	f423 5380 	biclt.w	r3, r3, #4096	@ 0x1000
     cf0:	bfac      	ite	ge
     cf2:	6563      	strge	r3, [r4, #84]	@ 0x54
     cf4:	81a3      	strhlt	r3, [r4, #12]
     cf6:	bd10      	pop	{r4, pc}
     cf8:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
     cfc:	461f      	mov	r7, r3
     cfe:	898b      	ldrh	r3, [r1, #12]
     d00:	05db      	lsls	r3, r3, #23
     d02:	4605      	mov	r5, r0
     d04:	460c      	mov	r4, r1
     d06:	4616      	mov	r6, r2
     d08:	d505      	bpl.n	0xd16
     d0a:	2302      	movs	r3, #2
     d0c:	2200      	movs	r2, #0
     d0e:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
     d12:	f000 f906 	bl	0xf22
     d16:	89a3      	ldrh	r3, [r4, #12]
     d18:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
     d1c:	f423 5380 	bic.w	r3, r3, #4096	@ 0x1000
     d20:	81a3      	strh	r3, [r4, #12]
     d22:	4632      	mov	r2, r6
     d24:	463b      	mov	r3, r7
     d26:	4628      	mov	r0, r5
     d28:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
     d2c:	f000 b869 	b.w	0xe02
     d30:	b510      	push	{r4, lr}
     d32:	460c      	mov	r4, r1
     d34:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
     d38:	f000 f8f3 	bl	0xf22
     d3c:	1c43      	adds	r3, r0, #1
     d3e:	89a3      	ldrh	r3, [r4, #12]
     d40:	bf15      	itete	ne
     d42:	6560      	strne	r0, [r4, #84]	@ 0x54
     d44:	f423 5380 	biceq.w	r3, r3, #4096	@ 0x1000
     d48:	f443 5380 	orrne.w	r3, r3, #4096	@ 0x1000
     d4c:	81a3      	strheq	r3, [r4, #12]
     d4e:	bf18      	it	ne
     d50:	81a3      	strhne	r3, [r4, #12]
     d52:	bd10      	pop	{r4, pc}
     d54:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
     d58:	f000 b8d3 	b.w	0xf02
     d5c:	0000      	movs	r0, r0
     d5e:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
     d60:	460e      	mov	r6, r1
     d62:	4614      	mov	r4, r2
     d64:	4605      	mov	r5, r0
     d66:	b118      	cbz	r0, 0xd70
     d68:	6983      	ldr	r3, [r0, #24]
     d6a:	b90b      	cbnz	r3, 0xd70
     d6c:	f7ff fa69 	bl	0x242
     d70:	4b21      	ldr	r3, [pc, #132]	@ (0xdf8)
     d72:	429c      	cmp	r4, r3
     d74:	d12a      	bne.n	0xdcc
     d76:	686c      	ldr	r4, [r5, #4]
     d78:	69a3      	ldr	r3, [r4, #24]
     d7a:	60a3      	str	r3, [r4, #8]
     d7c:	89a3      	ldrh	r3, [r4, #12]
     d7e:	071a      	lsls	r2, r3, #28
     d80:	d52e      	bpl.n	0xde0
     d82:	6923      	ldr	r3, [r4, #16]
     d84:	b363      	cbz	r3, 0xde0
     d86:	6923      	ldr	r3, [r4, #16]
     d88:	6820      	ldr	r0, [r4, #0]
     d8a:	1ac0      	subs	r0, r0, r3
     d8c:	6963      	ldr	r3, [r4, #20]
     d8e:	b2f6      	uxtb	r6, r6
     d90:	4283      	cmp	r3, r0
     d92:	4637      	mov	r7, r6
     d94:	dc04      	bgt.n	0xda0
     d96:	4621      	mov	r1, r4
     d98:	4628      	mov	r0, r5
     d9a:	f7ff f9d6 	bl	0x14a
     d9e:	bb28      	cbnz	r0, 0xdec
     da0:	68a3      	ldr	r3, [r4, #8]
     da2:	3b01      	subs	r3, #1
     da4:	60a3      	str	r3, [r4, #8]
     da6:	6823      	ldr	r3, [r4, #0]
     da8:	1c5a      	adds	r2, r3, #1
     daa:	6022      	str	r2, [r4, #0]
     dac:	701e      	strb	r6, [r3, #0]
     dae:	6963      	ldr	r3, [r4, #20]
     db0:	3001      	adds	r0, #1
     db2:	4283      	cmp	r3, r0
     db4:	d004      	beq.n	0xdc0
     db6:	89a3      	ldrh	r3, [r4, #12]
     db8:	07db      	lsls	r3, r3, #31
     dba:	d519      	bpl.n	0xdf0
     dbc:	2e0a      	cmp	r6, #10
     dbe:	d117      	bne.n	0xdf0
     dc0:	4621      	mov	r1, r4
     dc2:	4628      	mov	r0, r5
     dc4:	f7ff f9c1 	bl	0x14a
     dc8:	b190      	cbz	r0, 0xdf0
     dca:	e00f      	b.n	0xdec
     dcc:	4b0b      	ldr	r3, [pc, #44]	@ (0xdfc)
     dce:	429c      	cmp	r4, r3
     dd0:	d101      	bne.n	0xdd6
     dd2:	68ac      	ldr	r4, [r5, #8]
     dd4:	e7d0      	b.n	0xd78
     dd6:	4b09      	ldr	r3, [pc, #36]	@ (0xdfc)
     dd8:	429c      	cmp	r4, r3
     dda:	bf08      	it	eq
     ddc:	68ec      	ldreq	r4, [r5, #12]
     dde:	e7cb      	b.n	0xd78
     de0:	4621      	mov	r1, r4
     de2:	4628      	mov	r0, r5
     de4:	f000 f81f 	bl	0xe26
     de8:	2800      	cmp	r0, #0
     dea:	d0cc      	beq.n	0xd86
     dec:	f04f 37ff 	mov.w	r7, #4294967295	@ 0xffffffff
     df0:	4638      	mov	r0, r7
     df2:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
     df4:	bf00      	nop
     df6:	4dd8      	ldr	r5, [pc, #864]	@ (0x1158)
     df8:	0803      	lsrs	r3, r0, #32
     dfa:	4df8      	ldr	r5, [pc, #992]	@ (0x11dc)
     dfc:	0803      	lsrs	r3, r0, #32
     dfe:	4db8      	ldr	r5, [pc, #736]	@ (0x10e0)
     e00:	0803      	lsrs	r3, r0, #32
     e02:	b538      	push	{r3, r4, r5, lr}
     e04:	4c07      	ldr	r4, [pc, #28]	@ (0xe24)
     e06:	4605      	mov	r5, r0
     e08:	4608      	mov	r0, r1
     e0a:	4611      	mov	r1, r2
     e0c:	2200      	movs	r2, #0
     e0e:	6022      	str	r2, [r4, #0]
     e10:	461a      	mov	r2, r3
     e12:	f7ff f827 	bl	0xfffffe64
     e16:	1c43      	adds	r3, r0, #1
     e18:	d102      	bne.n	0xe20
     e1a:	6823      	ldr	r3, [r4, #0]
     e1c:	b103      	cbz	r3, 0xe20
     e1e:	602b      	str	r3, [r5, #0]
     e20:	bd38      	pop	{r3, r4, r5, pc}
     e22:	5198      	str	r0, [r3, r6]
     e24:	2001      	movs	r0, #1
     e26:	4b32      	ldr	r3, [pc, #200]	@ (0xef0)
     e28:	b570      	push	{r4, r5, r6, lr}
     e2a:	681d      	ldr	r5, [r3, #0]
     e2c:	4606      	mov	r6, r0
     e2e:	460c      	mov	r4, r1
     e30:	b125      	cbz	r5, 0xe3c
     e32:	69ab      	ldr	r3, [r5, #24]
     e34:	b913      	cbnz	r3, 0xe3c
     e36:	4628      	mov	r0, r5
     e38:	f7ff fa03 	bl	0x242
     e3c:	4b2e      	ldr	r3, [pc, #184]	@ (0xef8)
     e3e:	429c      	cmp	r4, r3
     e40:	d10f      	bne.n	0xe62
     e42:	686c      	ldr	r4, [r5, #4]
     e44:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
     e48:	b29a      	uxth	r2, r3
     e4a:	0715      	lsls	r5, r2, #28
     e4c:	d42c      	bmi.n	0xea8
     e4e:	06d0      	lsls	r0, r2, #27
     e50:	d411      	bmi.n	0xe76
     e52:	2209      	movs	r2, #9
     e54:	6032      	str	r2, [r6, #0]
     e56:	f043 0340 	orr.w	r3, r3, #64	@ 0x40
     e5a:	81a3      	strh	r3, [r4, #12]
     e5c:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
     e60:	e03e      	b.n	0xee0
     e62:	4b25      	ldr	r3, [pc, #148]	@ (0xef8)
     e64:	429c      	cmp	r4, r3
     e66:	d101      	bne.n	0xe6c
     e68:	68ac      	ldr	r4, [r5, #8]
     e6a:	e7eb      	b.n	0xe44
     e6c:	4b24      	ldr	r3, [pc, #144]	@ (0xf00)
     e6e:	429c      	cmp	r4, r3
     e70:	bf08      	it	eq
     e72:	68ec      	ldreq	r4, [r5, #12]
     e74:	e7e6      	b.n	0xe44
     e76:	0751      	lsls	r1, r2, #29
     e78:	d512      	bpl.n	0xea0
     e7a:	6b61      	ldr	r1, [r4, #52]	@ 0x34
     e7c:	b141      	cbz	r1, 0xe90
     e7e:	f104 0344 	add.w	r3, r4, #68	@ 0x44
     e82:	4299      	cmp	r1, r3
     e84:	d002      	beq.n	0xe8c
     e86:	4630      	mov	r0, r6
     e88:	f7ff faf5 	bl	0x476
     e8c:	2300      	movs	r3, #0
     e8e:	6363      	str	r3, [r4, #52]	@ 0x34
     e90:	89a3      	ldrh	r3, [r4, #12]
     e92:	f023 0324 	bic.w	r3, r3, #36	@ 0x24
     e96:	81a3      	strh	r3, [r4, #12]
     e98:	2300      	movs	r3, #0
     e9a:	6063      	str	r3, [r4, #4]
     e9c:	6923      	ldr	r3, [r4, #16]
     e9e:	6023      	str	r3, [r4, #0]
     ea0:	89a3      	ldrh	r3, [r4, #12]
     ea2:	f043 0308 	orr.w	r3, r3, #8
     ea6:	81a3      	strh	r3, [r4, #12]
     ea8:	6923      	ldr	r3, [r4, #16]
     eaa:	b94b      	cbnz	r3, 0xec0
     eac:	89a3      	ldrh	r3, [r4, #12]
     eae:	f403 7320 	and.w	r3, r3, #640	@ 0x280
     eb2:	f5b3 7f00 	cmp.w	r3, #512	@ 0x200
     eb6:	d003      	beq.n	0xec0
     eb8:	4621      	mov	r1, r4
     eba:	4630      	mov	r0, r6
     ebc:	f000 f867 	bl	0xf8e
     ec0:	89a2      	ldrh	r2, [r4, #12]
     ec2:	f012 0301 	ands.w	r3, r2, #1
     ec6:	d00c      	beq.n	0xee2
     ec8:	2300      	movs	r3, #0
     eca:	60a3      	str	r3, [r4, #8]
     ecc:	6963      	ldr	r3, [r4, #20]
     ece:	425b      	negs	r3, r3
     ed0:	61a3      	str	r3, [r4, #24]
     ed2:	6923      	ldr	r3, [r4, #16]
     ed4:	b953      	cbnz	r3, 0xeec
     ed6:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
     eda:	f013 0080 	ands.w	r0, r3, #128	@ 0x80
     ede:	d1ba      	bne.n	0xe56
     ee0:	bd70      	pop	{r4, r5, r6, pc}
     ee2:	0792      	lsls	r2, r2, #30
     ee4:	bf58      	it	pl
     ee6:	6963      	ldrpl	r3, [r4, #20]
     ee8:	60a3      	str	r3, [r4, #8]
     eea:	e7f2      	b.n	0xed2
     eec:	2000      	movs	r0, #0
     eee:	e7f7      	b.n	0xee0
     ef0:	bf00      	nop
     ef2:	0114      	lsls	r4, r2, #4
     ef4:	2000      	movs	r0, #0
     ef6:	4dd8      	ldr	r5, [pc, #864]	@ (0x1258)
     ef8:	0803      	lsrs	r3, r0, #32
     efa:	4df8      	ldr	r5, [pc, #992]	@ (0x12dc)
     efc:	0803      	lsrs	r3, r0, #32
     efe:	4db8      	ldr	r5, [pc, #736]	@ (0x11e0)
     f00:	0803      	lsrs	r3, r0, #32
     f02:	b538      	push	{r3, r4, r5, lr}
     f04:	4c06      	ldr	r4, [pc, #24]	@ (0xf20)
     f06:	2300      	movs	r3, #0
     f08:	4605      	mov	r5, r0
     f0a:	4608      	mov	r0, r1
     f0c:	6023      	str	r3, [r4, #0]
     f0e:	f7fe ffc5 	bl	0xfffffe9c
     f12:	1c43      	adds	r3, r0, #1
     f14:	d102      	bne.n	0xf1c
     f16:	6823      	ldr	r3, [r4, #0]
     f18:	b103      	cbz	r3, 0xf1c
     f1a:	602b      	str	r3, [r5, #0]
     f1c:	bd38      	pop	{r3, r4, r5, pc}
     f1e:	5198      	str	r0, [r3, r6]
     f20:	2001      	movs	r0, #1
     f22:	b538      	push	{r3, r4, r5, lr}
     f24:	4c07      	ldr	r4, [pc, #28]	@ (0xf44)
     f26:	4605      	mov	r5, r0
     f28:	4608      	mov	r0, r1
     f2a:	4611      	mov	r1, r2
     f2c:	2200      	movs	r2, #0
     f2e:	6022      	str	r2, [r4, #0]
     f30:	461a      	mov	r2, r3
     f32:	f7fe ffda 	bl	0xfffffeea
     f36:	1c43      	adds	r3, r0, #1
     f38:	d102      	bne.n	0xf40
     f3a:	6823      	ldr	r3, [r4, #0]
     f3c:	b103      	cbz	r3, 0xf40
     f3e:	602b      	str	r3, [r5, #0]
     f40:	bd38      	pop	{r3, r4, r5, pc}
     f42:	5198      	str	r0, [r3, r6]
     f44:	2001      	movs	r0, #1
     f46:	b570      	push	{r4, r5, r6, lr}
     f48:	460e      	mov	r6, r1
     f4a:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
     f4e:	2900      	cmp	r1, #0
     f50:	b096      	sub	sp, #88	@ 0x58
     f52:	4614      	mov	r4, r2
     f54:	461d      	mov	r5, r3
     f56:	da07      	bge.n	0xf68
     f58:	2300      	movs	r3, #0
     f5a:	602b      	str	r3, [r5, #0]
     f5c:	89b3      	ldrh	r3, [r6, #12]
     f5e:	061a      	lsls	r2, r3, #24
     f60:	d410      	bmi.n	0xf84
     f62:	f44f 6380 	mov.w	r3, #1024	@ 0x400
     f66:	e00e      	b.n	0xf86
     f68:	466a      	mov	r2, sp
     f6a:	f000 f864 	bl	0x1036
     f6e:	2800      	cmp	r0, #0
     f70:	dbf2      	blt.n	0xf58
     f72:	9a01      	ldr	r2, [sp, #4]
     f74:	f402 4270 	and.w	r2, r2, #61440	@ 0xf000
     f78:	f5a2 5300 	sub.w	r3, r2, #8192	@ 0x2000
     f7c:	425a      	negs	r2, r3
     f7e:	415a      	adcs	r2, r3
     f80:	602a      	str	r2, [r5, #0]
     f82:	e7ee      	b.n	0xf62
     f84:	2340      	movs	r3, #64	@ 0x40
     f86:	2000      	movs	r0, #0
     f88:	6023      	str	r3, [r4, #0]
     f8a:	b016      	add	sp, #88	@ 0x58
     f8c:	bd70      	pop	{r4, r5, r6, pc}
     f8e:	898b      	ldrh	r3, [r1, #12]
     f90:	b573      	push	{r0, r1, r4, r5, r6, lr}
     f92:	079d      	lsls	r5, r3, #30
     f94:	4606      	mov	r6, r0
     f96:	460c      	mov	r4, r1
     f98:	d507      	bpl.n	0xfaa
     f9a:	f104 0347 	add.w	r3, r4, #71	@ 0x47
     f9e:	6023      	str	r3, [r4, #0]
     fa0:	6123      	str	r3, [r4, #16]
     fa2:	2301      	movs	r3, #1
     fa4:	6163      	str	r3, [r4, #20]
     fa6:	b002      	add	sp, #8
     fa8:	bd70      	pop	{r4, r5, r6, pc}
     faa:	ab01      	add	r3, sp, #4
     fac:	466a      	mov	r2, sp
     fae:	f7ff ffca 	bl	0xf46
     fb2:	9900      	ldr	r1, [sp, #0]
     fb4:	4605      	mov	r5, r0
     fb6:	4630      	mov	r0, r6
     fb8:	f7ff faab 	bl	0x512
     fbc:	b948      	cbnz	r0, 0xfd2
     fbe:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
     fc2:	059a      	lsls	r2, r3, #22
     fc4:	d4ef      	bmi.n	0xfa6
     fc6:	f023 0303 	bic.w	r3, r3, #3
     fca:	f043 0302 	orr.w	r3, r3, #2
     fce:	81a3      	strh	r3, [r4, #12]
     fd0:	e7e3      	b.n	0xf9a
     fd2:	4b0d      	ldr	r3, [pc, #52]	@ (0x1008)
     fd4:	62b3      	str	r3, [r6, #40]	@ 0x28
     fd6:	89a3      	ldrh	r3, [r4, #12]
     fd8:	6020      	str	r0, [r4, #0]
     fda:	f043 0380 	orr.w	r3, r3, #128	@ 0x80
     fde:	81a3      	strh	r3, [r4, #12]
     fe0:	9b00      	ldr	r3, [sp, #0]
     fe2:	6163      	str	r3, [r4, #20]
     fe4:	9b01      	ldr	r3, [sp, #4]
     fe6:	6120      	str	r0, [r4, #16]
     fe8:	b15b      	cbz	r3, 0x1002
     fea:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
     fee:	4630      	mov	r0, r6
     ff0:	f000 f833 	bl	0x105a
     ff4:	b128      	cbz	r0, 0x1002
     ff6:	89a3      	ldrh	r3, [r4, #12]
     ff8:	f023 0303 	bic.w	r3, r3, #3
     ffc:	f043 0301 	orr.w	r3, r3, #1
    1000:	81a3      	strh	r3, [r4, #12]
    1002:	89a3      	ldrh	r3, [r4, #12]
    1004:	431d      	orrs	r5, r3
    1006:	81a5      	strh	r5, [r4, #12]
    1008:	e7cd      	b.n	0xfa6
    100a:	33d5      	adds	r3, #213	@ 0xd5
    100c:	0803      	lsrs	r3, r0, #32
    100e:	4770      	bx	lr
    1010:	4770      	bx	lr
    1012:	b538      	push	{r3, r4, r5, lr}
    1014:	4c07      	ldr	r4, [pc, #28]	@ (0x1034)
    1016:	4605      	mov	r5, r0
    1018:	4608      	mov	r0, r1
    101a:	4611      	mov	r1, r2
    101c:	2200      	movs	r2, #0
    101e:	6022      	str	r2, [r4, #0]
    1020:	461a      	mov	r2, r3
    1022:	f7fe ff02 	bl	0xfffffe2a
    1026:	1c43      	adds	r3, r0, #1
    1028:	d102      	bne.n	0x1030
    102a:	6823      	ldr	r3, [r4, #0]
    102c:	b103      	cbz	r3, 0x1030
    102e:	602b      	str	r3, [r5, #0]
    1030:	bd38      	pop	{r3, r4, r5, pc}
    1032:	5198      	str	r0, [r3, r6]
    1034:	2001      	movs	r0, #1
    1036:	b538      	push	{r3, r4, r5, lr}
    1038:	4c07      	ldr	r4, [pc, #28]	@ (0x1058)
    103a:	2300      	movs	r3, #0
    103c:	4605      	mov	r5, r0
    103e:	4608      	mov	r0, r1
    1040:	4611      	mov	r1, r2
    1042:	6023      	str	r3, [r4, #0]
    1044:	f7fe ff36 	bl	0xfffffeb4
    1048:	1c43      	adds	r3, r0, #1
    104a:	d102      	bne.n	0x1052
    104c:	6823      	ldr	r3, [r4, #0]
    104e:	b103      	cbz	r3, 0x1052
    1050:	602b      	str	r3, [r5, #0]
    1052:	bd38      	pop	{r3, r4, r5, pc}
    1054:	bf00      	nop
    1056:	5198      	str	r0, [r3, r6]
    1058:	2001      	movs	r0, #1
    105a:	b538      	push	{r3, r4, r5, lr}
    105c:	4c06      	ldr	r4, [pc, #24]	@ (0x1078)
    105e:	2300      	movs	r3, #0
    1060:	4605      	mov	r5, r0
    1062:	4608      	mov	r0, r1
    1064:	6023      	str	r3, [r4, #0]
    1066:	f7fe ff35 	bl	0xfffffed4
    106a:	1c43      	adds	r3, r0, #1
    106c:	d102      	bne.n	0x1074
    106e:	6823      	ldr	r3, [r4, #0]
    1070:	b103      	cbz	r3, 0x1074
    1072:	602b      	str	r3, [r5, #0]
    1074:	bd38      	pop	{r3, r4, r5, pc}
    1076:	5198      	str	r0, [r3, r6]
    1078:	2001      	movs	r0, #1
    107a:	b570      	push	{r4, r5, r6, lr}
    107c:	ed2d 8b02 	vpush	{d8}
    1080:	b08a      	sub	sp, #40	@ 0x28
    1082:	ec55 4b10 	vmov	r4, r5, d0
    1086:	f000 f87a 	bl	0x117e
    108a:	4b36      	ldr	r3, [pc, #216]	@ (0x1164)
    108c:	eeb0 8a40 	vmov.f32	s16, s0
    1090:	eef0 8a60 	vmov.f32	s17, s1
    1094:	f993 6000 	ldrsb.w	r6, [r3]
    1098:	1c73      	adds	r3, r6, #1
    109a:	d05b      	beq.n	0x1154
    109c:	4622      	mov	r2, r4
    109e:	462b      	mov	r3, r5
    10a0:	4620      	mov	r0, r4
    10a2:	4629      	mov	r1, r5
    10a4:	f7ec fc65 	bl	0xfffed972
    10a8:	2800      	cmp	r0, #0
    10aa:	d153      	bne.n	0x1154
    10ac:	2200      	movs	r2, #0
    10ae:	2300      	movs	r3, #0
    10b0:	4620      	mov	r0, r4
    10b2:	4629      	mov	r1, r5
    10b4:	f7ec fc53 	bl	0xfffed95e
    10b8:	2800      	cmp	r0, #0
    10ba:	d14b      	bne.n	0x1154
    10bc:	4b2b      	ldr	r3, [pc, #172]	@ (0x116c)
    10be:	9301      	str	r3, [sp, #4]
    10c0:	9008      	str	r0, [sp, #32]
    10c2:	e9cd 4502 	strd	r4, r5, [sp, #8]
    10c6:	e9cd 4504 	strd	r4, r5, [sp, #16]
    10ca:	b9a6      	cbnz	r6, 0x10f6
    10cc:	4b28      	ldr	r3, [pc, #160]	@ (0x1170)
    10ce:	f04f 4260 	mov.w	r2, #3758096384	@ 0xe0000000
    10d2:	e9cd 2306 	strd	r2, r3, [sp, #24]
    10d6:	4620      	mov	r0, r4
    10d8:	2200      	movs	r2, #0
    10da:	2300      	movs	r3, #0
    10dc:	4629      	mov	r1, r5
    10de:	f7ec fc16 	bl	0xfffed90e
    10e2:	bb40      	cbnz	r0, 0x1136
    10e4:	2301      	movs	r3, #1
    10e6:	2e02      	cmp	r6, #2
    10e8:	9300      	str	r3, [sp, #0]
    10ea:	d119      	bne.n	0x1120
    10ec:	f7fe ffa1 	bl	0x32
    10f0:	2321      	movs	r3, #33	@ 0x21
    10f2:	6003      	str	r3, [r0, #0]
    10f4:	e019      	b.n	0x112a
    10f6:	4b1e      	ldr	r3, [pc, #120]	@ (0x1170)
    10f8:	2200      	movs	r2, #0
    10fa:	e9cd 2306 	strd	r2, r3, [sp, #24]
    10fe:	4620      	mov	r0, r4
    1100:	2200      	movs	r2, #0
    1102:	2300      	movs	r3, #0
    1104:	4629      	mov	r1, r5
    1106:	f7ec fc02 	bl	0xfffed90e
    110a:	2800      	cmp	r0, #0
    110c:	d0ea      	beq.n	0x10e4
    110e:	2302      	movs	r3, #2
    1110:	429e      	cmp	r6, r3
    1112:	9300      	str	r3, [sp, #0]
    1114:	d111      	bne.n	0x113a
    1116:	f7fe ff8c 	bl	0x32
    111a:	2322      	movs	r3, #34	@ 0x22
    111c:	6003      	str	r3, [r0, #0]
    111e:	e011      	b.n	0x1144
    1120:	4668      	mov	r0, sp
    1122:	f000 f9de 	bl	0x14e2
    1126:	2800      	cmp	r0, #0
    1128:	d0e0      	beq.n	0x10ec
    112a:	4812      	ldr	r0, [pc, #72]	@ (0x1174)
    112c:	f000 f9db 	bl	0x14e6
    1130:	ed8d 0b06 	vstr	d0, [sp, #24]
    1134:	e006      	b.n	0x1144
    1136:	2302      	movs	r3, #2
    1138:	9300      	str	r3, [sp, #0]
    113a:	4668      	mov	r0, sp
    113c:	f000 f9d1 	bl	0x14e2
    1140:	2800      	cmp	r0, #0
    1142:	d0e8      	beq.n	0x1116
    1144:	9b08      	ldr	r3, [sp, #32]
    1146:	b11b      	cbz	r3, 0x1150
    1148:	f7fe ff73 	bl	0x32
    114c:	9b08      	ldr	r3, [sp, #32]
    114e:	6003      	str	r3, [r0, #0]
    1150:	ed9d 8b06 	vldr	d8, [sp, #24]
    1154:	eeb0 0a48 	vmov.f32	s0, s16
    1158:	eef0 0a68 	vmov.f32	s1, s17
    115c:	b00a      	add	sp, #40	@ 0x28
    115e:	ecbd 8b02 	vpop	{d8}
    1162:	bd70      	pop	{r4, r5, r6, pc}
    1164:	bf00      	nop
    1166:	0178      	lsls	r0, r7, #5
    1168:	2000      	movs	r0, #0
    116a:	4e4f      	ldr	r6, [pc, #316]	@ (0x12a8)
    116c:	0803      	lsrs	r3, r0, #32
    116e:	ffff c7ef 			@ <UNDEFINED> instruction: 0xffffc7ef
    1172:	0000      	movs	r0, r0
    1174:	fff0 4e21 			@ <UNDEFINED> instruction: 0xfff04e21
    1178:	0803      	lsrs	r3, r0, #32
    117a:	0000      	movs	r0, r0
    117c:	0000      	movs	r0, r0
    117e:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    1182:	ec51 0b10 	vmov	r0, r1, d0
    1186:	f5b1 1f80 	cmp.w	r1, #1048576	@ 0x100000
    118a:	b087      	sub	sp, #28
    118c:	460d      	mov	r5, r1
    118e:	da27      	bge.n	0x11e0
    1190:	f021 4300 	bic.w	r3, r1, #2147483648	@ 0x80000000
    1194:	4303      	orrs	r3, r0
    1196:	ee10 2a10 	vmov	r2, s0
    119a:	d10a      	bne.n	0x11b2
    119c:	49cc      	ldr	r1, [pc, #816]	@ (0x14d0)
    119e:	2200      	movs	r2, #0
    11a0:	2300      	movs	r3, #0
    11a2:	2000      	movs	r0, #0
    11a4:	f7ec fa75 	bl	0xfffed692
    11a8:	ec41 0b10 	vmov	d0, r0, r1
    11ac:	b007      	add	sp, #28
    11ae:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    11b2:	2900      	cmp	r1, #0
    11b4:	da05      	bge.n	0x11c2
    11b6:	460b      	mov	r3, r1
    11b8:	f7eb ff89 	bl	0xfffed0ce
    11bc:	2200      	movs	r2, #0
    11be:	2300      	movs	r3, #0
    11c0:	e7f0      	b.n	0x11a4
    11c2:	4bc3      	ldr	r3, [pc, #780]	@ (0x14d0)
    11c4:	2200      	movs	r2, #0
    11c6:	f7ec f93a 	bl	0xfffed43e
    11ca:	f06f 0335 	mvn.w	r3, #53	@ 0x35
    11ce:	460d      	mov	r5, r1
    11d0:	4ac1      	ldr	r2, [pc, #772]	@ (0x14d8)
    11d2:	4295      	cmp	r5, r2
    11d4:	dd06      	ble.n	0x11e4
    11d6:	4602      	mov	r2, r0
    11d8:	460b      	mov	r3, r1
    11da:	f7eb ff7a 	bl	0xfffed0d2
    11de:	e7e3      	b.n	0x11a8
    11e0:	2300      	movs	r3, #0
    11e2:	e7f5      	b.n	0x11d0
    11e4:	152c      	asrs	r4, r5, #20
    11e6:	f2a4 34ff 	subw	r4, r4, #1023	@ 0x3ff
    11ea:	f3c5 0513 	ubfx	r5, r5, #0, #20
    11ee:	441c      	add	r4, r3
    11f0:	f505 2315 	add.w	r3, r5, #610304	@ 0x95000
    11f4:	f603 7364 	addw	r3, r3, #3940	@ 0xf64
    11f8:	f403 1380 	and.w	r3, r3, #1048576	@ 0x100000
    11fc:	f083 527f 	eor.w	r2, r3, #1069547520	@ 0x3fc00000
    1200:	f482 1240 	eor.w	r2, r2, #3145728	@ 0x300000
    1204:	ea42 0105 	orr.w	r1, r2, r5
    1208:	eb04 5413 	add.w	r4, r4, r3, lsr #20
    120c:	2200      	movs	r2, #0
    120e:	4bb2      	ldr	r3, [pc, #712]	@ (0x14d8)
    1210:	f7eb ff5d 	bl	0xfffed0ce
    1214:	1cab      	adds	r3, r5, #2
    1216:	f3c3 0313 	ubfx	r3, r3, #0, #20
    121a:	2b02      	cmp	r3, #2
    121c:	4682      	mov	sl, r0
    121e:	468b      	mov	fp, r1
    1220:	f04f 0200 	mov.w	r2, #0
    1224:	dc53      	bgt.n	0x12ce
    1226:	2300      	movs	r3, #0
    1228:	f7ec fb71 	bl	0xfffed90e
    122c:	b1d0      	cbz	r0, 0x1264
    122e:	2c00      	cmp	r4, #0
    1230:	f000 8120 	beq.w	0x1474
    1234:	4620      	mov	r0, r4
    1236:	f7ec f898 	bl	0xfffed36a
    123a:	a390      	add	r3, pc, #576	@ (adr r3, 0x147c)
    123c:	e9d3 2300 	ldrd	r2, r3, [r3]
    1240:	4606      	mov	r6, r0
    1242:	460f      	mov	r7, r1
    1244:	f7ec f8fb 	bl	0xfffed43e
    1248:	a38f      	add	r3, pc, #572	@ (adr r3, 0x1488)
    124a:	e9d3 2300 	ldrd	r2, r3, [r3]
    124e:	4604      	mov	r4, r0
    1250:	460d      	mov	r5, r1
    1252:	4630      	mov	r0, r6
    1254:	4639      	mov	r1, r7
    1256:	f7ec f8f2 	bl	0xfffed43e
    125a:	4602      	mov	r2, r0
    125c:	460b      	mov	r3, r1
    125e:	4620      	mov	r0, r4
    1260:	4629      	mov	r1, r5
    1262:	e7ba      	b.n	0x11da
    1264:	a38a      	add	r3, pc, #552	@ (adr r3, 0x1490)
    1266:	e9d3 2300 	ldrd	r2, r3, [r3]
    126a:	4650      	mov	r0, sl
    126c:	4659      	mov	r1, fp
    126e:	f7ec f8e6 	bl	0xfffed43e
    1272:	4602      	mov	r2, r0
    1274:	460b      	mov	r3, r1
    1276:	2000      	movs	r0, #0
    1278:	4999      	ldr	r1, [pc, #612]	@ (0x14e0)
    127a:	f7eb ff28 	bl	0xfffed0ce
    127e:	4652      	mov	r2, sl
    1280:	4606      	mov	r6, r0
    1282:	460f      	mov	r7, r1
    1284:	465b      	mov	r3, fp
    1286:	4650      	mov	r0, sl
    1288:	4659      	mov	r1, fp
    128a:	f7ec f8d8 	bl	0xfffed43e
    128e:	4602      	mov	r2, r0
    1290:	460b      	mov	r3, r1
    1292:	4630      	mov	r0, r6
    1294:	4639      	mov	r1, r7
    1296:	f7ec f8d2 	bl	0xfffed43e
    129a:	4606      	mov	r6, r0
    129c:	460f      	mov	r7, r1
    129e:	b914      	cbnz	r4, 0x12a6
    12a0:	4632      	mov	r2, r6
    12a2:	463b      	mov	r3, r7
    12a4:	e0a0      	b.n	0x13e8
    12a6:	4620      	mov	r0, r4
    12a8:	f7ec f85f 	bl	0xfffed36a
    12ac:	a374      	add	r3, pc, #464	@ (adr r3, 0x1480)
    12ae:	e9d3 2300 	ldrd	r2, r3, [r3]
    12b2:	4680      	mov	r8, r0
    12b4:	4689      	mov	r9, r1
    12b6:	f7ec f8c2 	bl	0xfffed43e
    12ba:	a372      	add	r3, pc, #456	@ (adr r3, 0x1484)
    12bc:	e9d3 2300 	ldrd	r2, r3, [r3]
    12c0:	4604      	mov	r4, r0
    12c2:	460d      	mov	r5, r1
    12c4:	4640      	mov	r0, r8
    12c6:	4649      	mov	r1, r9
    12c8:	f7ec f8b9 	bl	0xfffed43e
    12cc:	e0a5      	b.n	0x141a
    12ce:	f04f 4380 	mov.w	r3, #1073741824	@ 0x40000000
    12d2:	f7eb fefe 	bl	0xfffed0d2
    12d6:	4602      	mov	r2, r0
    12d8:	460b      	mov	r3, r1
    12da:	4650      	mov	r0, sl
    12dc:	4659      	mov	r1, fp
    12de:	f7ec f9d8 	bl	0xfffed692
    12e2:	e9cd 0100 	strd	r0, r1, [sp]
    12e6:	4620      	mov	r0, r4
    12e8:	f7ec f83f 	bl	0xfffed36a
    12ec:	e9dd 2300 	ldrd	r2, r3, [sp]
    12f0:	e9cd 0102 	strd	r0, r1, [sp, #8]
    12f4:	4610      	mov	r0, r2
    12f6:	4619      	mov	r1, r3
    12f8:	f7ec f8a1 	bl	0xfffed43e
    12fc:	4602      	mov	r2, r0
    12fe:	460b      	mov	r3, r1
    1300:	e9cd 0104 	strd	r0, r1, [sp, #16]
    1304:	f7ec f89b 	bl	0xfffed43e
    1308:	a363      	add	r3, pc, #396	@ (adr r3, 0x1498)
    130a:	e9d3 2300 	ldrd	r2, r3, [r3]
    130e:	4680      	mov	r8, r0
    1310:	4689      	mov	r9, r1
    1312:	f7ec f894 	bl	0xfffed43e
    1316:	a361      	add	r3, pc, #388	@ (adr r3, 0x149c)
    1318:	e9d3 2300 	ldrd	r2, r3, [r3]
    131c:	f7eb fed9 	bl	0xfffed0d2
    1320:	4642      	mov	r2, r8
    1322:	464b      	mov	r3, r9
    1324:	f7ec f88b 	bl	0xfffed43e
    1328:	a35f      	add	r3, pc, #380	@ (adr r3, 0x14a8)
    132a:	e9d3 2300 	ldrd	r2, r3, [r3]
    132e:	f7eb fed0 	bl	0xfffed0d2
    1332:	4642      	mov	r2, r8
    1334:	464b      	mov	r3, r9
    1336:	f7ec f882 	bl	0xfffed43e
    133a:	a35c      	add	r3, pc, #368	@ (adr r3, 0x14ac)
    133c:	e9d3 2300 	ldrd	r2, r3, [r3]
    1340:	f7eb fec7 	bl	0xfffed0d2
    1344:	e9dd 2304 	ldrd	r2, r3, [sp, #16]
    1348:	f7ec f879 	bl	0xfffed43e
    134c:	a35a      	add	r3, pc, #360	@ (adr r3, 0x14b8)
    134e:	e9d3 2300 	ldrd	r2, r3, [r3]
    1352:	e9cd 0104 	strd	r0, r1, [sp, #16]
    1356:	4640      	mov	r0, r8
    1358:	4649      	mov	r1, r9
    135a:	f7ec f870 	bl	0xfffed43e
    135e:	a357      	add	r3, pc, #348	@ (adr r3, 0x14bc)
    1360:	e9d3 2300 	ldrd	r2, r3, [r3]
    1364:	f7eb feb5 	bl	0xfffed0d2
    1368:	4642      	mov	r2, r8
    136a:	464b      	mov	r3, r9
    136c:	f7ec f867 	bl	0xfffed43e
    1370:	a355      	add	r3, pc, #340	@ (adr r3, 0x14c8)
    1372:	e9d3 2300 	ldrd	r2, r3, [r3]
    1376:	f7eb feac 	bl	0xfffed0d2
    137a:	4642      	mov	r2, r8
    137c:	464b      	mov	r3, r9
    137e:	f7ec f85e 	bl	0xfffed43e
    1382:	f5a5 26c2 	sub.w	r6, r5, #397312	@ 0x61000
    1386:	4602      	mov	r2, r0
    1388:	460b      	mov	r3, r1
    138a:	f5c5 25d7 	rsb	r5, r5, #440320	@ 0x6b800
    138e:	e9dd 0104 	ldrd	r0, r1, [sp, #16]
    1392:	f7eb fe9e 	bl	0xfffed0d2
    1396:	f2a6 467a 	subw	r6, r6, #1146	@ 0x47a
    139a:	3551      	adds	r5, #81	@ 0x51
    139c:	4335      	orrs	r5, r6
    139e:	2d00      	cmp	r5, #0
    13a0:	4680      	mov	r8, r0
    13a2:	4689      	mov	r9, r1
    13a4:	dd48      	ble.n	0x1438
    13a6:	2200      	movs	r2, #0
    13a8:	4b4d      	ldr	r3, [pc, #308]	@ (0x14e0)
    13aa:	4650      	mov	r0, sl
    13ac:	4659      	mov	r1, fp
    13ae:	f7ec f846 	bl	0xfffed43e
    13b2:	4652      	mov	r2, sl
    13b4:	465b      	mov	r3, fp
    13b6:	f7ec f842 	bl	0xfffed43e
    13ba:	4602      	mov	r2, r0
    13bc:	460b      	mov	r3, r1
    13be:	4606      	mov	r6, r0
    13c0:	460f      	mov	r7, r1
    13c2:	4640      	mov	r0, r8
    13c4:	4649      	mov	r1, r9
    13c6:	f7eb fe84 	bl	0xfffed0d2
    13ca:	e9dd 2300 	ldrd	r2, r3, [sp]
    13ce:	f7ec f836 	bl	0xfffed43e
    13d2:	4680      	mov	r8, r0
    13d4:	4689      	mov	r9, r1
    13d6:	b964      	cbnz	r4, 0x13f2
    13d8:	4602      	mov	r2, r0
    13da:	460b      	mov	r3, r1
    13dc:	4630      	mov	r0, r6
    13de:	4639      	mov	r1, r7
    13e0:	f7eb fe75 	bl	0xfffed0ce
    13e4:	4602      	mov	r2, r0
    13e6:	460b      	mov	r3, r1
    13e8:	4650      	mov	r0, sl
    13ea:	4659      	mov	r1, fp
    13ec:	f7eb fe6f 	bl	0xfffed0ce
    13f0:	e6da      	b.n	0x11a8
    13f2:	a322      	add	r3, pc, #136	@ (adr r3, 0x147c)
    13f4:	e9d3 2300 	ldrd	r2, r3, [r3]
    13f8:	e9dd 0102 	ldrd	r0, r1, [sp, #8]
    13fc:	f7ec f81f 	bl	0xfffed43e
    1400:	a321      	add	r3, pc, #132	@ (adr r3, 0x1488)
    1402:	e9d3 2300 	ldrd	r2, r3, [r3]
    1406:	4604      	mov	r4, r0
    1408:	460d      	mov	r5, r1
    140a:	e9dd 0102 	ldrd	r0, r1, [sp, #8]
    140e:	f7ec f816 	bl	0xfffed43e
    1412:	4642      	mov	r2, r8
    1414:	464b      	mov	r3, r9
    1416:	f7eb fe5c 	bl	0xfffed0d2
    141a:	4602      	mov	r2, r0
    141c:	460b      	mov	r3, r1
    141e:	4630      	mov	r0, r6
    1420:	4639      	mov	r1, r7
    1422:	f7eb fe54 	bl	0xfffed0ce
    1426:	4652      	mov	r2, sl
    1428:	465b      	mov	r3, fp
    142a:	f7eb fe50 	bl	0xfffed0ce
    142e:	4602      	mov	r2, r0
    1430:	460b      	mov	r3, r1
    1432:	4620      	mov	r0, r4
    1434:	4629      	mov	r1, r5
    1436:	e7d9      	b.n	0x13ec
    1438:	4602      	mov	r2, r0
    143a:	460b      	mov	r3, r1
    143c:	4650      	mov	r0, sl
    143e:	4659      	mov	r1, fp
    1440:	f7eb fe45 	bl	0xfffed0ce
    1444:	e9dd 2300 	ldrd	r2, r3, [sp]
    1448:	f7eb fff9 	bl	0xfffed43e
    144c:	4606      	mov	r6, r0
    144e:	460f      	mov	r7, r1
    1450:	2c00      	cmp	r4, #0
    1452:	f43f af25 	beq.w	0x12a0
    1456:	a309      	add	r3, pc, #36	@ (adr r3, 0x147c)
    1458:	e9d3 2300 	ldrd	r2, r3, [r3]
    145c:	e9dd 0102 	ldrd	r0, r1, [sp, #8]
    1460:	f7eb ffed 	bl	0xfffed43e
    1464:	a308      	add	r3, pc, #32	@ (adr r3, 0x1488)
    1466:	e9d3 2300 	ldrd	r2, r3, [r3]
    146a:	4604      	mov	r4, r0
    146c:	460d      	mov	r5, r1
    146e:	e9dd 0102 	ldrd	r0, r1, [sp, #8]
    1472:	e729      	b.n	0x12c8
    1474:	2000      	movs	r0, #0
    1476:	2100      	movs	r1, #0
    1478:	e696      	b.n	0x11a8
    147a:	f3af 8000 	nop.w
    147e:	0000      	movs	r0, r0
    1480:	fee0 2e42 	cdp2	14, 14, cr2, cr0, cr2, {2}
    1484:	3fe6      	subs	r7, #230	@ 0xe6
    1486:	3c76      	subs	r4, #118	@ 0x76
    1488:	3579      	adds	r5, #121	@ 0x79
    148a:	39ef      	subs	r1, #239	@ 0xef
    148c:	3dea      	subs	r5, #234	@ 0xea
    148e:	5555      	strb	r5, [r2, r5]
    1490:	5555      	strb	r5, [r2, r5]
    1492:	5555      	strb	r5, [r2, r5]
    1494:	3fd5      	subs	r7, #213	@ 0xd5
    1496:	5244      	strh	r4, [r0, r1]
    1498:	df3e      	svc	62	@ 0x3e
    149a:	f112 3fc2 	cmn.w	r2, #3267543746	@ 0xc2c2c2c2
    149e:	03de      	lsls	r6, r3, #15
    14a0:	96cb      	str	r6, [sp, #812]	@ 0x32c
    14a2:	4664      	mov	r4, ip
    14a4:	3fc7      	subs	r7, #199	@ 0xc7
    14a6:	9359      	str	r3, [sp, #356]	@ 0x164
    14a8:	9422      	str	r4, [sp, #136]	@ 0x88
    14aa:	4924      	ldr	r1, [pc, #144]	@ (0x153c)
    14ac:	3fd2      	subs	r7, #210	@ 0xd2
    14ae:	5593      	strb	r3, [r2, r6]
    14b0:	5555      	strb	r5, [r2, r5]
    14b2:	5555      	strb	r5, [r2, r5]
    14b4:	3fe5      	subs	r7, #229	@ 0xe5
    14b6:	c69f      	stmia	r6!, {r0, r1, r2, r3, r4, r7}
    14b8:	d078      	beq.n	0x15ac
    14ba:	9a09      	ldr	r2, [sp, #36]	@ 0x24
    14bc:	3fc3      	subs	r7, #195	@ 0xc3
    14be:	78af      	ldrb	r7, [r5, #2]
    14c0:	1d8e      	adds	r6, r1, #6
    14c2:	71c5      	strb	r5, [r0, #7]
    14c4:	3fcc      	subs	r7, #204	@ 0xcc
    14c6:	fa04 9997 			@ <UNDEFINED> instruction: 0xfa049997
    14ca:	9999      	ldr	r1, [sp, #612]	@ 0x264
    14cc:	3fd9      	subs	r7, #217	@ 0xd9
    14ce:	0000      	movs	r0, r0
    14d0:	c350      	stmia	r3!, {r4, r6}
    14d2:	0000      	movs	r0, r0
    14d4:	4350      	muls	r0, r2
    14d6:	ffff 7fef 	vqrdmlsh.s<illegal width 64>	<illegal reg q11.5>, <illegal reg q15.5>, d31[0]
    14da:	0000      	movs	r0, r0
    14dc:	3ff0      	subs	r7, #240	@ 0xf0
    14de:	0000      	movs	r0, r0
    14e0:	3fe0      	subs	r7, #224	@ 0xe0
    14e2:	2000      	movs	r0, #0
    14e4:	4770      	bx	lr
    14e6:	ed9f 0b01 	vldr	d0, [pc, #4]	@ 0x14ec
    14ea:	4770      	bx	lr
    14ec:	bf00      	nop
    14ee:	0000      	movs	r0, r0
    14f0:	0000      	movs	r0, r0
    14f2:	0000      	movs	r0, r0
    14f4:	7ff8      	ldrb	r0, [r7, #31]
    14f6:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    14f8:	bf00      	nop
    14fa:	bcf8      	pop	{r3, r4, r5, r6, r7}
    14fc:	bc08      	pop	{r3}
    14fe:	469e      	mov	lr, r3
    1500:	4770      	bx	lr
    1502:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    1504:	bf00      	nop
    1506:	bcf8      	pop	{r3, r4, r5, r6, r7}
    1508:	bc08      	pop	{r3}
    150a:	469e      	mov	lr, r3
    150c:	4770      	bx	lr
    150e:	4647      	mov	r7, r8
    1510:	535f      	strh	r7, [r3, r5]
    1512:	3454      	adds	r4, #84	@ 0x54
    1514:	3131      	adds	r1, #49	@ 0x31
    1516:	4553      	cmp	r3, sl
    1518:	5f43      	ldrsh	r3, [r0, r5]
    151a:	5041      	str	r1, [r0, r1]
    151c:	5f50      	ldrsh	r0, [r2, r5]
    151e:	3431      	adds	r4, #49	@ 0x31
    1520:	3131      	adds	r1, #49	@ 0x31
    1522:	0035      	movs	r5, r6
    1524:	0000      	movs	r0, r0
    1526:	3231      	adds	r2, #49	@ 0x31
    1528:	3433      	adds	r4, #51	@ 0x33
    152a:	3635      	adds	r6, #53	@ 0x35
    152c:	0000      	movs	r0, r0
    152e:	6f47      	ldr	r7, [r0, #116]	@ 0x74
    1530:	646f      	str	r7, [r5, #68]	@ 0x44
    1532:	7869      	ldrb	r1, [r5, #1]
    1534:	0000      	movs	r0, r0
    1536:	4541      	cmp	r1, r8
    1538:	2d53      	cmp	r5, #83	@ 0x53
    153a:	3231      	adds	r2, #49	@ 0x31
    153c:	2d38      	cmp	r5, #56	@ 0x38
    153e:	4345      	muls	r5, r0
    1540:	0042      	lsls	r2, r0, #1
    1542:	4541      	cmp	r1, r8
    1544:	2d53      	cmp	r5, #83	@ 0x53
    1546:	3931      	subs	r1, #49	@ 0x31
    1548:	2d32      	cmp	r5, #50	@ 0x32
    154a:	4345      	muls	r5, r0
    154c:	0042      	lsls	r2, r0, #1
    154e:	4541      	cmp	r1, r8
    1550:	2d53      	cmp	r5, #83	@ 0x53
    1552:	3532      	adds	r5, #50	@ 0x32
    1554:	2d36      	cmp	r5, #54	@ 0x36
    1556:	4345      	muls	r5, r0
    1558:	0042      	lsls	r2, r0, #1
    155a:	4541      	cmp	r1, r8
    155c:	2d53      	cmp	r5, #83	@ 0x53
    155e:	3231      	adds	r2, #49	@ 0x31
    1560:	2d38      	cmp	r5, #56	@ 0x38
    1562:	4243      	negs	r3, r0
    1564:	0043      	lsls	r3, r0, #1
    1566:	4541      	cmp	r1, r8
    1568:	2d53      	cmp	r5, #83	@ 0x53
    156a:	3931      	subs	r1, #49	@ 0x31
    156c:	2d32      	cmp	r5, #50	@ 0x32
    156e:	4243      	negs	r3, r0
    1570:	0043      	lsls	r3, r0, #1
    1572:	4541      	cmp	r1, r8
    1574:	2d53      	cmp	r5, #83	@ 0x53
    1576:	3532      	adds	r5, #50	@ 0x32
    1578:	2d36      	cmp	r5, #54	@ 0x36
    157a:	4243      	negs	r3, r0
    157c:	0043      	lsls	r3, r0, #1
    157e:	4541      	cmp	r1, r8
    1580:	2d53      	cmp	r5, #83	@ 0x53
    1582:	3231      	adds	r2, #49	@ 0x31
    1584:	2d38      	cmp	r5, #56	@ 0x38
    1586:	4347      	muls	r7, r0
    1588:	004d      	lsls	r5, r1, #1
    158a:	4541      	cmp	r1, r8
    158c:	2d53      	cmp	r5, #83	@ 0x53
    158e:	3931      	subs	r1, #49	@ 0x31
    1590:	2d32      	cmp	r5, #50	@ 0x32
    1592:	4347      	muls	r7, r0
    1594:	004d      	lsls	r5, r1, #1
    1596:	4541      	cmp	r1, r8
    1598:	2d53      	cmp	r5, #83	@ 0x53
    159a:	3532      	adds	r5, #50	@ 0x32
    159c:	2d36      	cmp	r5, #54	@ 0x36
    159e:	4347      	muls	r7, r0
    15a0:	004d      	lsls	r5, r1, #1
    15a2:	4853      	ldr	r0, [pc, #332]	@ (0x16f0)
    15a4:	3241      	adds	r2, #65	@ 0x41
    15a6:	3432      	adds	r4, #50	@ 0x32
    15a8:	0000      	movs	r0, r0
    15aa:	4853      	ldr	r0, [pc, #332]	@ (0x16f8)
    15ac:	3241      	adds	r2, #65	@ 0x41
    15ae:	3635      	adds	r6, #53	@ 0x35
    15b0:	0000      	movs	r0, r0
    15b2:	4c54      	ldr	r4, [pc, #336]	@ (0x1704)
    15b4:	2d53      	cmp	r5, #83	@ 0x53
    15b6:	5350      	strh	r0, [r2, r5]
    15b8:	2d4b      	cmp	r5, #75	@ 0x4b
    15ba:	4957      	ldr	r1, [pc, #348]	@ (0x1718)
    15bc:	4854      	ldr	r0, [pc, #336]	@ (0x1710)
    15be:	412d      	asrs	r5, r5
    15c0:	5345      	strh	r5, [r0, r5]
    15c2:	312d      	adds	r1, #45	@ 0x2d
    15c4:	3832      	subs	r0, #50	@ 0x32
    15c6:	472d      	bx	r5
    15c8:	4d43      	ldr	r5, [pc, #268]	@ (0x16d8)
    15ca:	532d      	strh	r5, [r5, r4]
    15cc:	4148      	adcs	r0, r1
    15ce:	3532      	adds	r5, #50	@ 0x32
    15d0:	0036      	movs	r6, r6
    15d2:	4c54      	ldr	r4, [pc, #336]	@ (0x1724)
    15d4:	2d53      	cmp	r5, #83	@ 0x53
    15d6:	5350      	strh	r0, [r2, r5]
    15d8:	2d4b      	cmp	r5, #75	@ 0x4b
    15da:	4957      	ldr	r1, [pc, #348]	@ (0x1738)
    15dc:	4854      	ldr	r0, [pc, #336]	@ (0x1730)
    15de:	412d      	asrs	r5, r5
    15e0:	5345      	strh	r5, [r0, r5]
    15e2:	312d      	adds	r1, #45	@ 0x2d
    15e4:	3832      	subs	r0, #50	@ 0x32
    15e6:	432d      	orrs	r5, r5
    15e8:	4342      	muls	r2, r0
    15ea:	532d      	strh	r5, [r5, r4]
    15ec:	4148      	adcs	r0, r1
    15ee:	3532      	adds	r5, #50	@ 0x32
    15f0:	0036      	movs	r6, r6
    15f2:	0000      	movs	r0, r0
    15f4:	0000      	movs	r0, r0
    15f6:	6e75      	ldr	r5, [r6, #100]	@ 0x64
    15f8:	6e6b      	ldr	r3, [r5, #100]	@ 0x64
    15fa:	776f      	strb	r7, [r5, #29]
    15fc:	006e      	lsls	r6, r5, #1
    15fe:	7325      	strb	r5, [r4, #12]
    1600:	253a      	movs	r5, #58	@ 0x3a
    1602:	3430      	adds	r4, #48	@ 0x30
    1604:	3a64      	subs	r2, #100	@ 0x64
    1606:	7c20      	ldrb	r0, [r4, #16]
    1608:	6425      	str	r5, [r4, #64]	@ 0x40
    160a:	207c      	movs	r0, #124	@ 0x7c
    160c:	7325      	strb	r5, [r4, #12]
    160e:	0000      	movs	r0, r0
    1610:	0000      	movs	r0, r0
    1612:	6f6c      	ldr	r4, [r5, #116]	@ 0x74
    1614:	6163      	str	r3, [r4, #20]
    1616:	686c      	ldr	r4, [r5, #4]
    1618:	736f      	strb	r7, [r5, #13]
    161a:	0074      	lsls	r4, r6, #1
    161c:	0000      	movs	r0, r0
    161e:	3434      	adds	r4, #52	@ 0x34
    1620:	3333      	adds	r3, #51	@ 0x33
    1622:	0000      	movs	r0, r0
    1624:	0000      	movs	r0, r0
    1626:	002f      	movs	r7, r5
    1628:	0000      	movs	r0, r0
    162a:	0000      	movs	r0, r0
    162c:	0000      	movs	r0, r0
    162e:	3231      	adds	r2, #49	@ 0x31
    1630:	3433      	adds	r4, #51	@ 0x33
    1632:	3635      	adds	r6, #53	@ 0x35
    1634:	0000      	movs	r0, r0
    1636:	6c43      	ldr	r3, [r0, #68]	@ 0x44
    1638:	6569      	str	r1, [r5, #84]	@ 0x54
    163a:	746e      	strb	r6, [r5, #17]
    163c:	695f      	ldr	r7, [r3, #20]
    163e:	6564      	str	r4, [r4, #84]	@ 0x54
    1640:	746e      	strb	r6, [r5, #17]
    1642:	7469      	strb	r1, [r5, #17]
    1644:	0079      	lsls	r1, r7, #1
    1646:	6f66      	ldr	r6, [r4, #116]	@ 0x74
    1648:	6372      	str	r2, [r6, #52]	@ 0x34
    164a:	6465      	str	r5, [r4, #68]	@ 0x44
    164c:	6320      	str	r0, [r4, #48]	@ 0x30
    164e:	7069      	strb	r1, [r5, #1]
    1650:	6568      	str	r0, [r5, #84]	@ 0x54
    1652:	7372      	strb	r2, [r6, #13]
    1654:	6975      	ldr	r5, [r6, #20]
    1656:	6574      	str	r4, [r6, #84]	@ 0x54
    1658:	6e20      	ldr	r0, [r4, #96]	@ 0x60
    165a:	746f      	strb	r7, [r5, #17]
    165c:	6120      	str	r0, [r4, #16]
    165e:	6c6c      	ldr	r4, [r5, #68]	@ 0x44
    1660:	776f      	strb	r7, [r5, #29]
    1662:	6465      	str	r5, [r4, #68]	@ 0x44
    1664:	7720      	strb	r0, [r4, #28]
    1666:	7469      	strb	r1, [r5, #17]
    1668:	2068      	movs	r0, #104	@ 0x68
    166a:	6874      	ldr	r4, [r6, #4]
    166c:	7369      	strb	r1, [r5, #13]
    166e:	7020      	strb	r0, [r4, #0]
    1670:	6f72      	ldr	r2, [r6, #116]	@ 0x74
    1672:	6f74      	ldr	r4, [r6, #116]	@ 0x74
    1674:	6f63      	ldr	r3, [r4, #116]	@ 0x74
    1676:	206c      	movs	r0, #108	@ 0x6c
    1678:	6576      	str	r6, [r6, #84]	@ 0x54
    167a:	7372      	strb	r2, [r6, #13]
    167c:	6f69      	ldr	r1, [r5, #116]	@ 0x74
    167e:	006e      	lsls	r6, r5, #1
    1680:	0000      	movs	r0, r0
    1682:	6f66      	ldr	r6, [r4, #116]	@ 0x74
    1684:	6372      	str	r2, [r6, #52]	@ 0x34
    1686:	6465      	str	r5, [r4, #68]	@ 0x44
    1688:	5220      	strh	r0, [r4, r0]
    168a:	3443      	adds	r4, #67	@ 0x43
    168c:	6320      	str	r0, [r4, #48]	@ 0x30
    168e:	7069      	strb	r1, [r5, #1]
    1690:	6568      	str	r0, [r5, #84]	@ 0x54
    1692:	7372      	strb	r2, [r6, #13]
    1694:	6975      	ldr	r5, [r6, #20]
    1696:	6574      	str	r4, [r6, #84]	@ 0x54
    1698:	7720      	strb	r0, [r4, #28]
    169a:	7469      	strb	r1, [r5, #17]
    169c:	2068      	movs	r0, #104	@ 0x68
    169e:	4352      	muls	r2, r2
    16a0:	2034      	movs	r0, #52	@ 0x34
    16a2:	6964      	ldr	r4, [r4, #20]
    16a4:	6173      	str	r3, [r6, #20]
    16a6:	6c62      	ldr	r2, [r4, #68]	@ 0x44
    16a8:	6465      	str	r5, [r4, #68]	@ 0x44
    16aa:	0000      	movs	r0, r0
    16ac:	0000      	movs	r0, r0
    16ae:	200a      	movs	r0, #10
    16b0:	2e20      	cmp	r6, #32
    16b2:	5320      	strh	r0, [r4, r4]
    16b4:	6565      	str	r5, [r4, #84]	@ 0x54
    16b6:	6964      	ldr	r4, [r4, #20]
    16b8:	676e      	str	r6, [r5, #116]	@ 0x74
    16ba:	7420      	strb	r0, [r4, #16]
    16bc:	6568      	str	r0, [r5, #84]	@ 0x54
    16be:	7220      	strb	r0, [r4, #8]
    16c0:	6e61      	ldr	r1, [r4, #100]	@ 0x64
    16c2:	6f64      	ldr	r4, [r4, #116]	@ 0x74
    16c4:	206d      	movs	r0, #109	@ 0x6d
    16c6:	756e      	strb	r6, [r5, #21]
    16c8:	626d      	str	r5, [r5, #36]	@ 0x24
    16ca:	7265      	strb	r5, [r4, #9]
    16cc:	6720      	str	r0, [r4, #112]	@ 0x70
    16ce:	6e65      	ldr	r5, [r4, #100]	@ 0x64
    16d0:	7265      	strb	r5, [r4, #9]
    16d2:	7461      	strb	r1, [r4, #17]
    16d4:	726f      	strb	r7, [r5, #9]
    16d6:	2e2e      	cmp	r6, #46	@ 0x2e
    16d8:	002e      	movs	r6, r5
    16da:	6f20      	ldr	r0, [r4, #112]	@ 0x70
    16dc:	006b      	lsls	r3, r5, #1
    16de:	2020      	movs	r0, #32
    16e0:	202e      	movs	r0, #46	@ 0x2e
    16e2:	6553      	str	r3, [r2, #84]	@ 0x54
    16e4:	7474      	strb	r4, [r6, #17]
    16e6:	6e69      	ldr	r1, [r5, #100]	@ 0x64
    16e8:	2067      	movs	r0, #103	@ 0x67
    16ea:	7075      	strb	r5, [r6, #1]
    16ec:	7420      	strb	r0, [r4, #16]
    16ee:	6568      	str	r0, [r5, #84]	@ 0x54
    16f0:	5320      	strh	r0, [r4, r4]
    16f2:	4c53      	ldr	r4, [pc, #332]	@ (0x1840)
    16f4:	542f      	strb	r7, [r5, r0]
