
/home/Populus/Projects/fingerprint/extracted_firmware/fw_mod_03_handlers_4306.bin:     file format binary


Disassembly of section .data:

00000000 <.data>:
       0:	1fff      	subs	r7, r7, #7
       2:	48b0      	ldr	r0, [pc, #704]	@ (0x2c4)
       4:	0003      	movs	r3, r0
       6:	0000      	movs	r0, r0
       8:	200f      	movs	r0, #15
       a:	0000      	movs	r0, r0
       c:	200f      	movs	r0, #15
       e:	8180      	strh	r0, [r0, #12]
      10:	1fff      	subs	r7, r7, #7
      12:	e540      	b.n	0xfffffa96
      14:	2000      	movs	r0, #0
      16:	0000      	movs	r0, r0
      18:	200f      	movs	r0, #15
      1a:	0000      	movs	r0, r0
      1c:	200f      	movs	r0, #15
      1e:	0804      	lsrs	r4, r0, #32
      20:	4005      	ands	r5, r0
      22:	080c      	lsrs	r4, r1, #32
      24:	4005      	ands	r5, r0
      26:	0800      	lsrs	r0, r0, #32
      28:	4005      	ands	r5, r0
      2a:	e7fe      	b.n	0x2a
      2c:	bf00      	nop
      2e:	4b02      	ldr	r3, [pc, #8]	@ (0x38)
      30:	460a      	mov	r2, r1
      32:	4601      	mov	r1, r0
      34:	6818      	ldr	r0, [r3, #0]
      36:	f000 ba2e 	b.w	0x496
      3a:	811c      	strh	r4, [r3, #8]
      3c:	1fff      	subs	r7, r7, #7
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
      6c:	602b      	str	r3, [r5, #0]
      6e:	d032      	beq.n	0xd6
      70:	6d60      	ldr	r0, [r4, #84]	@ 0x54
      72:	89a3      	ldrh	r3, [r4, #12]
      74:	075a      	lsls	r2, r3, #29
      76:	d505      	bpl.n	0x84
      78:	6863      	ldr	r3, [r4, #4]
      7a:	1ac0      	subs	r0, r0, r3
      7c:	6b63      	ldr	r3, [r4, #52]	@ 0x34
      7e:	b10b      	cbz	r3, 0x84
      80:	6c23      	ldr	r3, [r4, #64]	@ 0x40
      82:	1ac0      	subs	r0, r0, r3
      84:	2300      	movs	r3, #0
      86:	4602      	mov	r2, r0
      88:	6ae6      	ldr	r6, [r4, #44]	@ 0x2c
      8a:	6a21      	ldr	r1, [r4, #32]
      8c:	4628      	mov	r0, r5
      8e:	47b0      	blx	r6
      90:	1c43      	adds	r3, r0, #1
      92:	89a3      	ldrh	r3, [r4, #12]
      94:	d106      	bne.n	0xa4
      96:	6829      	ldr	r1, [r5, #0]
      98:	291d      	cmp	r1, #29
      9a:	d82c      	bhi.n	0xf6
      9c:	4a2a      	ldr	r2, [pc, #168]	@ (0x148)
      9e:	40ca      	lsrs	r2, r1
      a0:	07d6      	lsls	r6, r2, #31
      a2:	d528      	bpl.n	0xf6
      a4:	2200      	movs	r2, #0
      a6:	6062      	str	r2, [r4, #4]
      a8:	04d9      	lsls	r1, r3, #19
      aa:	6922      	ldr	r2, [r4, #16]
      ac:	6022      	str	r2, [r4, #0]
      ae:	d504      	bpl.n	0xba
      b0:	1c42      	adds	r2, r0, #1
      b2:	d101      	bne.n	0xb8
      b4:	682b      	ldr	r3, [r5, #0]
      b6:	b903      	cbnz	r3, 0xba
      b8:	6560      	str	r0, [r4, #84]	@ 0x54
      ba:	6b61      	ldr	r1, [r4, #52]	@ 0x34
      bc:	602f      	str	r7, [r5, #0]
      be:	2900      	cmp	r1, #0
      c0:	d0ca      	beq.n	0x58
      c2:	f104 0344 	add.w	r3, r4, #68	@ 0x44
      c6:	4299      	cmp	r1, r3
      c8:	d002      	beq.n	0xd0
      ca:	4628      	mov	r0, r5
      cc:	f000 f9f1 	bl	0x4b2
      d0:	2000      	movs	r0, #0
      d2:	6360      	str	r0, [r4, #52]	@ 0x34
      d4:	e7c1      	b.n	0x5a
      d6:	6a21      	ldr	r1, [r4, #32]
      d8:	2301      	movs	r3, #1
      da:	4628      	mov	r0, r5
      dc:	47b0      	blx	r6
      de:	1c41      	adds	r1, r0, #1
      e0:	d1c7      	bne.n	0x72
      e2:	682b      	ldr	r3, [r5, #0]
      e4:	2b00      	cmp	r3, #0
      e6:	d0c4      	beq.n	0x72
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
     11e:	6a21      	ldr	r1, [r4, #32]
     120:	6aa6      	ldr	r6, [r4, #40]	@ 0x28
     122:	4643      	mov	r3, r8
     124:	463a      	mov	r2, r7
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
     152:	b913      	cbnz	r3, 0x15a
     154:	2500      	movs	r5, #0
     156:	4628      	mov	r0, r5
     158:	bd38      	pop	{r3, r4, r5, pc}
     15a:	b118      	cbz	r0, 0x164
     15c:	6983      	ldr	r3, [r0, #24]
     15e:	b90b      	cbnz	r3, 0x164
     160:	f000 f899 	bl	0x296
     164:	4b14      	ldr	r3, [pc, #80]	@ (0x1b8)
     166:	429c      	cmp	r4, r3
     168:	d11b      	bne.n	0x1a2
     16a:	686c      	ldr	r4, [r5, #4]
     16c:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
     170:	2b00      	cmp	r3, #0
     172:	d0ef      	beq.n	0x154
     174:	6e62      	ldr	r2, [r4, #100]	@ 0x64
     176:	07d0      	lsls	r0, r2, #31
     178:	d404      	bmi.n	0x184
     17a:	0599      	lsls	r1, r3, #22
     17c:	d402      	bmi.n	0x184
     17e:	6da0      	ldr	r0, [r4, #88]	@ 0x58
     180:	f000 f939 	bl	0x3f6
     184:	4628      	mov	r0, r5
     186:	4621      	mov	r1, r4
     188:	f7ff ff59 	bl	0x3e
     18c:	6e63      	ldr	r3, [r4, #100]	@ 0x64
     18e:	07da      	lsls	r2, r3, #31
     190:	4605      	mov	r5, r0
     192:	d4e0      	bmi.n	0x156
     194:	89a3      	ldrh	r3, [r4, #12]
     196:	059b      	lsls	r3, r3, #22
     198:	d4dd      	bmi.n	0x156
     19a:	6da0      	ldr	r0, [r4, #88]	@ 0x58
     19c:	f000 f92c 	bl	0x3f8
     1a0:	e7d9      	b.n	0x156
     1a2:	4b05      	ldr	r3, [pc, #20]	@ (0x1b8)
     1a4:	429c      	cmp	r4, r3
     1a6:	d101      	bne.n	0x1ac
     1a8:	68ac      	ldr	r4, [r5, #8]
     1aa:	e7df      	b.n	0x16c
     1ac:	4b04      	ldr	r3, [pc, #16]	@ (0x1c0)
     1ae:	429c      	cmp	r4, r3
     1b0:	bf08      	it	eq
     1b2:	68ec      	ldreq	r4, [r5, #12]
     1b4:	e7da      	b.n	0x16c
     1b6:	46b8      	mov	r8, r7
     1b8:	0003      	movs	r3, r0
     1ba:	46d8      	mov	r8, fp
     1bc:	0003      	movs	r3, r0
     1be:	4698      	mov	r8, r3
     1c0:	0003      	movs	r3, r0
     1c2:	4601      	mov	r1, r0
     1c4:	b920      	cbnz	r0, 0x1d0
     1c6:	4b04      	ldr	r3, [pc, #16]	@ (0x1d8)
     1c8:	4905      	ldr	r1, [pc, #20]	@ (0x1e0)
     1ca:	6818      	ldr	r0, [r3, #0]
     1cc:	f000 b8f3 	b.w	0x3b6
     1d0:	4b04      	ldr	r3, [pc, #16]	@ (0x1e4)
     1d2:	6818      	ldr	r0, [r3, #0]
     1d4:	f7ff bfb9 	b.w	0x14a
     1d8:	bf00      	nop
     1da:	46f8      	mov	r8, pc
     1dc:	0003      	movs	r3, r0
     1de:	31d9      	adds	r1, #217	@ 0xd9
     1e0:	0003      	movs	r3, r0
     1e2:	811c      	strh	r4, [r3, #8]
     1e4:	1fff      	subs	r7, r7, #7
     1e6:	2300      	movs	r3, #0
     1e8:	b510      	push	{r4, lr}
     1ea:	4604      	mov	r4, r0
     1ec:	e9c0 3300 	strd	r3, r3, [r0]
     1f0:	e9c0 3304 	strd	r3, r3, [r0, #16]
     1f4:	6083      	str	r3, [r0, #8]
     1f6:	8181      	strh	r1, [r0, #12]
     1f8:	6643      	str	r3, [r0, #100]	@ 0x64
     1fa:	81c2      	strh	r2, [r0, #14]
     1fc:	6183      	str	r3, [r0, #24]
     1fe:	4619      	mov	r1, r3
     200:	2208      	movs	r2, #8
     202:	305c      	adds	r0, #92	@ 0x5c
     204:	f000 f93f 	bl	0x486
     208:	4b05      	ldr	r3, [pc, #20]	@ (0x220)
     20a:	6263      	str	r3, [r4, #36]	@ 0x24
     20c:	4b05      	ldr	r3, [pc, #20]	@ (0x224)
     20e:	62a3      	str	r3, [r4, #40]	@ 0x28
     210:	4b05      	ldr	r3, [pc, #20]	@ (0x228)
     212:	62e3      	str	r3, [r4, #44]	@ 0x2c
     214:	4b05      	ldr	r3, [pc, #20]	@ (0x22c)
     216:	6224      	str	r4, [r4, #32]
     218:	6323      	str	r3, [r4, #48]	@ 0x30
     21a:	bd10      	pop	{r4, pc}
     21c:	bf00      	nop
     21e:	3cf1      	subs	r4, #241	@ 0xf1
     220:	0003      	movs	r3, r0
     222:	3d13      	subs	r5, #19
     224:	0003      	movs	r3, r0
     226:	3d4b      	subs	r5, #75	@ 0x4b
     228:	0003      	movs	r3, r0
     22a:	3d6f      	subs	r5, #111	@ 0x6f
     22c:	0003      	movs	r3, r0
     22e:	4901      	ldr	r1, [pc, #4]	@ (0x234)
     230:	f000 b8c1 	b.w	0x3b6
     234:	bf00      	nop
     236:	31d9      	adds	r1, #217	@ 0xd9
     238:	0003      	movs	r3, r0
     23a:	b570      	push	{r4, r5, r6, lr}
     23c:	1e4a      	subs	r2, r1, #1
     23e:	2568      	movs	r5, #104	@ 0x68
     240:	4355      	muls	r5, r2
     242:	460e      	mov	r6, r1
     244:	f105 0174 	add.w	r1, r5, #116	@ 0x74
     248:	f000 f981 	bl	0x54e
     24c:	4604      	mov	r4, r0
     24e:	b140      	cbz	r0, 0x262
     250:	2100      	movs	r1, #0
     252:	e9c0 1600 	strd	r1, r6, [r0]
     256:	300c      	adds	r0, #12
     258:	60a0      	str	r0, [r4, #8]
     25a:	f105 0268 	add.w	r2, r5, #104	@ 0x68
     25e:	f000 f912 	bl	0x486
     262:	4620      	mov	r0, r4
     264:	bd70      	pop	{r4, r5, r6, pc}
     266:	4801      	ldr	r0, [pc, #4]	@ (0x26c)
     268:	f000 b8c5 	b.w	0x3f6
     26c:	bf00      	nop
     26e:	e538      	b.n	0xfffffce2
     270:	2000      	movs	r0, #0
     272:	4801      	ldr	r0, [pc, #4]	@ (0x278)
     274:	f000 b8c0 	b.w	0x3f8
     278:	bf00      	nop
     27a:	e538      	b.n	0xfffffcee
     27c:	2000      	movs	r0, #0
     27e:	4801      	ldr	r0, [pc, #4]	@ (0x284)
     280:	f000 b8b9 	b.w	0x3f6
     284:	bf00      	nop
     286:	e533      	b.n	0xfffffcf0
     288:	2000      	movs	r0, #0
     28a:	4801      	ldr	r0, [pc, #4]	@ (0x290)
     28c:	f000 b8b4 	b.w	0x3f8
     290:	bf00      	nop
     292:	e533      	b.n	0xfffffcfc
     294:	2000      	movs	r0, #0
     296:	b510      	push	{r4, lr}
     298:	4604      	mov	r4, r0
     29a:	f7ff fff0 	bl	0x27e
     29e:	69a3      	ldr	r3, [r4, #24]
     2a0:	b11b      	cbz	r3, 0x2aa
     2a2:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
     2a6:	f7ff bff0 	b.w	0x28a
     2aa:	e9c4 3312 	strd	r3, r3, [r4, #72]	@ 0x48
     2ae:	6523      	str	r3, [r4, #80]	@ 0x50
     2b0:	4b13      	ldr	r3, [pc, #76]	@ (0x300)
     2b2:	4a13      	ldr	r2, [pc, #76]	@ (0x300)
     2b4:	681b      	ldr	r3, [r3, #0]
     2b6:	62a2      	str	r2, [r4, #40]	@ 0x28
     2b8:	42a3      	cmp	r3, r4
     2ba:	bf04      	itt	eq
     2bc:	2301      	moveq	r3, #1
     2be:	61a3      	streq	r3, [r4, #24]
     2c0:	4620      	mov	r0, r4
     2c2:	f000 f820 	bl	0x306
     2c6:	6060      	str	r0, [r4, #4]
     2c8:	4620      	mov	r0, r4
     2ca:	f000 f81c 	bl	0x306
     2ce:	60a0      	str	r0, [r4, #8]
     2d0:	4620      	mov	r0, r4
     2d2:	f000 f818 	bl	0x306
     2d6:	2200      	movs	r2, #0
     2d8:	60e0      	str	r0, [r4, #12]
     2da:	2104      	movs	r1, #4
     2dc:	6860      	ldr	r0, [r4, #4]
     2de:	f7ff ff82 	bl	0x1e6
     2e2:	68a0      	ldr	r0, [r4, #8]
     2e4:	2201      	movs	r2, #1
     2e6:	2109      	movs	r1, #9
     2e8:	f7ff ff7d 	bl	0x1e6
     2ec:	68e0      	ldr	r0, [r4, #12]
     2ee:	2202      	movs	r2, #2
     2f0:	2112      	movs	r1, #18
     2f2:	f7ff ff78 	bl	0x1e6
     2f6:	2301      	movs	r3, #1
     2f8:	61a3      	str	r3, [r4, #24]
     2fa:	e7d2      	b.n	0x2a2
     2fc:	bf00      	nop
     2fe:	46f8      	mov	r8, pc
     300:	0003      	movs	r3, r0
     302:	32bd      	adds	r2, #189	@ 0xbd
     304:	0003      	movs	r3, r0
     306:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
     308:	4607      	mov	r7, r0
     30a:	f7ff ffac 	bl	0x266
     30e:	4b1e      	ldr	r3, [pc, #120]	@ (0x388)
     310:	681e      	ldr	r6, [r3, #0]
     312:	69b3      	ldr	r3, [r6, #24]
     314:	b913      	cbnz	r3, 0x31c
     316:	4630      	mov	r0, r6
     318:	f7ff ffbd 	bl	0x296
     31c:	3648      	adds	r6, #72	@ 0x48
     31e:	e9d6 3401 	ldrd	r3, r4, [r6, #4]
     322:	3b01      	subs	r3, #1
     324:	d503      	bpl.n	0x32e
     326:	6833      	ldr	r3, [r6, #0]
     328:	b30b      	cbz	r3, 0x36e
     32a:	6836      	ldr	r6, [r6, #0]
     32c:	e7f7      	b.n	0x31e
     32e:	f9b4 500c 	ldrsh.w	r5, [r4, #12]
     332:	b9d5      	cbnz	r5, 0x36a
     334:	4b16      	ldr	r3, [pc, #88]	@ (0x390)
     336:	60e3      	str	r3, [r4, #12]
     338:	f104 0058 	add.w	r0, r4, #88	@ 0x58
     33c:	6665      	str	r5, [r4, #100]	@ 0x64
     33e:	f000 f859 	bl	0x3f4
     342:	f7ff ff96 	bl	0x272
     346:	e9c4 5501 	strd	r5, r5, [r4, #4]
     34a:	e9c4 5504 	strd	r5, r5, [r4, #16]
     34e:	6025      	str	r5, [r4, #0]
     350:	61a5      	str	r5, [r4, #24]
     352:	2208      	movs	r2, #8
     354:	4629      	mov	r1, r5
     356:	f104 005c 	add.w	r0, r4, #92	@ 0x5c
     35a:	f000 f894 	bl	0x486
     35e:	e9c4 550d 	strd	r5, r5, [r4, #52]	@ 0x34
     362:	e9c4 5512 	strd	r5, r5, [r4, #72]	@ 0x48
     366:	4620      	mov	r0, r4
     368:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
     36a:	3468      	adds	r4, #104	@ 0x68
     36c:	e7d9      	b.n	0x322
     36e:	2104      	movs	r1, #4
     370:	4638      	mov	r0, r7
     372:	f7ff ff62 	bl	0x23a
     376:	4604      	mov	r4, r0
     378:	6030      	str	r0, [r6, #0]
     37a:	2800      	cmp	r0, #0
     37c:	d1d5      	bne.n	0x32a
     37e:	f7ff ff78 	bl	0x272
     382:	230c      	movs	r3, #12
     384:	603b      	str	r3, [r7, #0]
     386:	e7ee      	b.n	0x366
     388:	bf00      	nop
     38a:	46f8      	mov	r8, pc
     38c:	0003      	movs	r3, r0
     38e:	0001      	movs	r1, r0
     390:	ffff b40e 	vraddhn.i<illegal width 128>	d27, <illegal reg q7.5>, q7
     394:	b503      	push	{r0, r1, lr}
     396:	4601      	mov	r1, r0
     398:	ab03      	add	r3, sp, #12
     39a:	4805      	ldr	r0, [pc, #20]	@ (0x3b0)
     39c:	f853 2b04 	ldr.w	r2, [r3], #4
     3a0:	6800      	ldr	r0, [r0, #0]
     3a2:	9301      	str	r3, [sp, #4]
     3a4:	f000 f955 	bl	0x652
     3a8:	b002      	add	sp, #8
     3aa:	f85d eb04 	ldr.w	lr, [sp], #4
     3ae:	b003      	add	sp, #12
     3b0:	4770      	bx	lr
     3b2:	811c      	strh	r4, [r3, #8]
     3b4:	1fff      	subs	r7, r7, #7
     3b6:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
     3ba:	4606      	mov	r6, r0
     3bc:	4688      	mov	r8, r1
     3be:	f100 0448 	add.w	r4, r0, #72	@ 0x48
     3c2:	2700      	movs	r7, #0
     3c4:	e9d4 9501 	ldrd	r9, r5, [r4, #4]
     3c8:	f1b9 0901 	subs.w	r9, r9, #1
     3cc:	d505      	bpl.n	0x3da
     3ce:	6824      	ldr	r4, [r4, #0]
     3d0:	2c00      	cmp	r4, #0
     3d2:	d1f7      	bne.n	0x3c4
     3d4:	4638      	mov	r0, r7
     3d6:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
     3da:	89ab      	ldrh	r3, [r5, #12]
     3dc:	2b01      	cmp	r3, #1
     3de:	d907      	bls.n	0x3f0
     3e0:	f9b5 300e 	ldrsh.w	r3, [r5, #14]
     3e4:	3301      	adds	r3, #1
     3e6:	d003      	beq.n	0x3f0
     3e8:	4629      	mov	r1, r5
     3ea:	4630      	mov	r0, r6
     3ec:	47c0      	blx	r8
     3ee:	4307      	orrs	r7, r0
     3f0:	3568      	adds	r5, #104	@ 0x68
     3f2:	e7e9      	b.n	0x3c8
     3f4:	4770      	bx	lr
     3f6:	4770      	bx	lr
     3f8:	4770      	bx	lr
     3fa:	4b02      	ldr	r3, [pc, #8]	@ (0x404)
     3fc:	4601      	mov	r1, r0
     3fe:	6818      	ldr	r0, [r3, #0]
     400:	f000 b8a5 	b.w	0x54e
     404:	bf00      	nop
     406:	811c      	strh	r4, [r3, #8]
     408:	1fff      	subs	r7, r7, #7
     40a:	4b02      	ldr	r3, [pc, #8]	@ (0x414)
     40c:	4601      	mov	r1, r0
     40e:	6818      	ldr	r0, [r3, #0]
     410:	f000 b84f 	b.w	0x4b2
     414:	bf00      	nop
     416:	811c      	strh	r4, [r3, #8]
     418:	1fff      	subs	r7, r7, #7
     41a:	b530      	push	{r4, r5, lr}
     41c:	3901      	subs	r1, #1
     41e:	2400      	movs	r4, #0
     420:	42a2      	cmp	r2, r4
     422:	d101      	bne.n	0x428
     424:	2000      	movs	r0, #0
     426:	e005      	b.n	0x434
     428:	5d03      	ldrb	r3, [r0, r4]
     42a:	3401      	adds	r4, #1
     42c:	5d0d      	ldrb	r5, [r1, r4]
     42e:	42ab      	cmp	r3, r5
     430:	d0f6      	beq.n	0x420
     432:	1b58      	subs	r0, r3, r5
     434:	bd30      	pop	{r4, r5, pc}
     436:	440a      	add	r2, r1
     438:	4291      	cmp	r1, r2
     43a:	f100 33ff 	add.w	r3, r0, #4294967295	@ 0xffffffff
     43e:	d100      	bne.n	0x442
     440:	4770      	bx	lr
     442:	b510      	push	{r4, lr}
     444:	f811 4b01 	ldrb.w	r4, [r1], #1
     448:	f803 4f01 	strb.w	r4, [r3, #1]!
     44c:	4291      	cmp	r1, r2
     44e:	d1f9      	bne.n	0x444
     450:	bd10      	pop	{r4, pc}
     452:	4288      	cmp	r0, r1
     454:	b510      	push	{r4, lr}
     456:	eb01 0402 	add.w	r4, r1, r2
     45a:	d902      	bls.n	0x462
     45c:	4284      	cmp	r4, r0
     45e:	4623      	mov	r3, r4
     460:	d807      	bhi.n	0x472
     462:	1e43      	subs	r3, r0, #1
     464:	42a1      	cmp	r1, r4
     466:	d008      	beq.n	0x47a
     468:	f811 2b01 	ldrb.w	r2, [r1], #1
     46c:	f803 2f01 	strb.w	r2, [r3, #1]!
     470:	e7f8      	b.n	0x464
     472:	4402      	add	r2, r0
     474:	4601      	mov	r1, r0
     476:	428a      	cmp	r2, r1
     478:	d100      	bne.n	0x47c
     47a:	bd10      	pop	{r4, pc}
     47c:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
     480:	f802 4d01 	strb.w	r4, [r2, #-1]!
     484:	e7f7      	b.n	0x476
     486:	4402      	add	r2, r0
     488:	4603      	mov	r3, r0
     48a:	4293      	cmp	r3, r2
     48c:	d100      	bne.n	0x490
     48e:	4770      	bx	lr
     490:	f803 1b01 	strb.w	r1, [r3], #1
     494:	e7f9      	b.n	0x48a
     496:	b538      	push	{r3, r4, r5, lr}
     498:	fb02 f501 	mul.w	r5, r2, r1
     49c:	4629      	mov	r1, r5
     49e:	f000 f856 	bl	0x54e
     4a2:	4604      	mov	r4, r0
     4a4:	b118      	cbz	r0, 0x4ae
     4a6:	462a      	mov	r2, r5
     4a8:	2100      	movs	r1, #0
     4aa:	f7ff ffec 	bl	0x486
     4ae:	4620      	mov	r0, r4
     4b0:	bd38      	pop	{r3, r4, r5, pc}
     4b2:	b538      	push	{r3, r4, r5, lr}
     4b4:	4605      	mov	r5, r0
     4b6:	2900      	cmp	r1, #0
     4b8:	d045      	beq.n	0x546
     4ba:	f851 3c04 	ldr.w	r3, [r1, #-4]
     4be:	1f0c      	subs	r4, r1, #4
     4c0:	2b00      	cmp	r3, #0
     4c2:	bfb8      	it	lt
     4c4:	18e4      	addlt	r4, r4, r3
     4c6:	f000 fd68 	bl	0xf9a
     4ca:	4a1f      	ldr	r2, [pc, #124]	@ (0x548)
     4cc:	6813      	ldr	r3, [r2, #0]
     4ce:	4610      	mov	r0, r2
     4d0:	b933      	cbnz	r3, 0x4e0
     4d2:	6063      	str	r3, [r4, #4]
     4d4:	6014      	str	r4, [r2, #0]
     4d6:	4628      	mov	r0, r5
     4d8:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
     4dc:	f000 bd63 	b.w	0xfa6
     4e0:	42a3      	cmp	r3, r4
     4e2:	d90b      	bls.n	0x4fc
     4e4:	6821      	ldr	r1, [r4, #0]
     4e6:	1862      	adds	r2, r4, r1
     4e8:	4293      	cmp	r3, r2
     4ea:	bf04      	itt	eq
     4ec:	681a      	ldreq	r2, [r3, #0]
     4ee:	685b      	ldreq	r3, [r3, #4]
     4f0:	6063      	str	r3, [r4, #4]
     4f2:	bf04      	itt	eq
     4f4:	1852      	addeq	r2, r2, r1
     4f6:	6022      	streq	r2, [r4, #0]
     4f8:	6004      	str	r4, [r0, #0]
     4fa:	e7ec      	b.n	0x4d6
     4fc:	461a      	mov	r2, r3
     4fe:	685b      	ldr	r3, [r3, #4]
     500:	b10b      	cbz	r3, 0x506
     502:	42a3      	cmp	r3, r4
     504:	d9fa      	bls.n	0x4fc
     506:	6811      	ldr	r1, [r2, #0]
     508:	1850      	adds	r0, r2, r1
     50a:	42a0      	cmp	r0, r4
     50c:	d10b      	bne.n	0x526
     50e:	6820      	ldr	r0, [r4, #0]
     510:	4401      	add	r1, r0
     512:	1850      	adds	r0, r2, r1
     514:	4283      	cmp	r3, r0
     516:	6011      	str	r1, [r2, #0]
     518:	d1dd      	bne.n	0x4d6
     51a:	6818      	ldr	r0, [r3, #0]
     51c:	685b      	ldr	r3, [r3, #4]
     51e:	6053      	str	r3, [r2, #4]
     520:	4401      	add	r1, r0
     522:	6011      	str	r1, [r2, #0]
     524:	e7d7      	b.n	0x4d6
     526:	d902      	bls.n	0x52e
     528:	230c      	movs	r3, #12
     52a:	602b      	str	r3, [r5, #0]
     52c:	e7d3      	b.n	0x4d6
     52e:	6820      	ldr	r0, [r4, #0]
     530:	1821      	adds	r1, r4, r0
     532:	428b      	cmp	r3, r1
     534:	bf04      	itt	eq
     536:	6819      	ldreq	r1, [r3, #0]
     538:	685b      	ldreq	r3, [r3, #4]
     53a:	6063      	str	r3, [r4, #4]
     53c:	bf04      	itt	eq
     53e:	1809      	addeq	r1, r1, r0
     540:	6021      	streq	r1, [r4, #0]
     542:	6054      	str	r4, [r2, #4]
     544:	e7c7      	b.n	0x4d6
     546:	bd38      	pop	{r3, r4, r5, pc}
     548:	bf00      	nop
     54a:	e524      	b.n	0xffffff96
     54c:	2000      	movs	r0, #0
     54e:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
     550:	1ccd      	adds	r5, r1, #3
     552:	f025 0503 	bic.w	r5, r5, #3
     556:	3508      	adds	r5, #8
     558:	2d0c      	cmp	r5, #12
     55a:	bf38      	it	cc
     55c:	250c      	movcc	r5, #12
     55e:	2d00      	cmp	r5, #0
     560:	4606      	mov	r6, r0
     562:	db01      	blt.n	0x568
     564:	42a9      	cmp	r1, r5
     566:	d903      	bls.n	0x570
     568:	230c      	movs	r3, #12
     56a:	6033      	str	r3, [r6, #0]
     56c:	2000      	movs	r0, #0
     56e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
     570:	f000 fd13 	bl	0xf9a
     574:	4921      	ldr	r1, [pc, #132]	@ (0x5fc)
     576:	680a      	ldr	r2, [r1, #0]
     578:	4614      	mov	r4, r2
     57a:	b99c      	cbnz	r4, 0x5a4
     57c:	4f20      	ldr	r7, [pc, #128]	@ (0x600)
     57e:	683b      	ldr	r3, [r7, #0]
     580:	b923      	cbnz	r3, 0x58c
     582:	4621      	mov	r1, r4
     584:	4630      	mov	r0, r6
     586:	f000 fb5c 	bl	0xc42
     58a:	6038      	str	r0, [r7, #0]
     58c:	4629      	mov	r1, r5
     58e:	4630      	mov	r0, r6
     590:	f000 fb57 	bl	0xc42
     594:	1c43      	adds	r3, r0, #1
     596:	d123      	bne.n	0x5e0
     598:	230c      	movs	r3, #12
     59a:	6033      	str	r3, [r6, #0]
     59c:	4630      	mov	r0, r6
     59e:	f000 fd02 	bl	0xfa6
     5a2:	e7e3      	b.n	0x56c
     5a4:	6823      	ldr	r3, [r4, #0]
     5a6:	1b5b      	subs	r3, r3, r5
     5a8:	d417      	bmi.n	0x5da
     5aa:	2b0b      	cmp	r3, #11
     5ac:	d903      	bls.n	0x5b6
     5ae:	6023      	str	r3, [r4, #0]
     5b0:	441c      	add	r4, r3
     5b2:	6025      	str	r5, [r4, #0]
     5b4:	e004      	b.n	0x5c0
     5b6:	6863      	ldr	r3, [r4, #4]
     5b8:	42a2      	cmp	r2, r4
     5ba:	bf0c      	ite	eq
     5bc:	600b      	streq	r3, [r1, #0]
     5be:	6053      	strne	r3, [r2, #4]
     5c0:	4630      	mov	r0, r6
     5c2:	f000 fcf0 	bl	0xfa6
     5c6:	f104 000b 	add.w	r0, r4, #11
     5ca:	1d23      	adds	r3, r4, #4
     5cc:	f020 0007 	bic.w	r0, r0, #7
     5d0:	1ac2      	subs	r2, r0, r3
     5d2:	d0cc      	beq.n	0x56e
     5d4:	1a1b      	subs	r3, r3, r0
     5d6:	50a3      	str	r3, [r4, r2]
     5d8:	e7c9      	b.n	0x56e
     5da:	4622      	mov	r2, r4
     5dc:	6864      	ldr	r4, [r4, #4]
     5de:	e7cc      	b.n	0x57a
     5e0:	1cc4      	adds	r4, r0, #3
     5e2:	f024 0403 	bic.w	r4, r4, #3
     5e6:	42a0      	cmp	r0, r4
     5e8:	d0e3      	beq.n	0x5b2
     5ea:	1a21      	subs	r1, r4, r0
     5ec:	4630      	mov	r0, r6
     5ee:	f000 fb28 	bl	0xc42
     5f2:	3001      	adds	r0, #1
     5f4:	d1dd      	bne.n	0x5b2
     5f6:	e7cf      	b.n	0x598
     5f8:	bf00      	nop
     5fa:	e524      	b.n	0x46
     5fc:	2000      	movs	r0, #0
     5fe:	e528      	b.n	0x52
     600:	2000      	movs	r0, #0
     602:	6893      	ldr	r3, [r2, #8]
     604:	3b01      	subs	r3, #1
     606:	2b00      	cmp	r3, #0
     608:	b410      	push	{r4}
     60a:	6093      	str	r3, [r2, #8]
     60c:	da07      	bge.n	0x61e
     60e:	6994      	ldr	r4, [r2, #24]
     610:	42a3      	cmp	r3, r4
     612:	db01      	blt.n	0x618
     614:	290a      	cmp	r1, #10
     616:	d102      	bne.n	0x61e
     618:	bc10      	pop	{r4}
     61a:	f000 bb66 	b.w	0xcea
     61e:	6813      	ldr	r3, [r2, #0]
     620:	1c58      	adds	r0, r3, #1
     622:	6010      	str	r0, [r2, #0]
     624:	7019      	strb	r1, [r3, #0]
     626:	4608      	mov	r0, r1
     628:	bc10      	pop	{r4}
     62a:	4770      	bx	lr
     62c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
     62e:	4606      	mov	r6, r0
     630:	460f      	mov	r7, r1
     632:	4614      	mov	r4, r2
     634:	18d5      	adds	r5, r2, r3
     636:	42ac      	cmp	r4, r5
     638:	d101      	bne.n	0x63e
     63a:	2000      	movs	r0, #0
     63c:	e007      	b.n	0x64e
     63e:	f814 1b01 	ldrb.w	r1, [r4], #1
     642:	463a      	mov	r2, r7
     644:	4630      	mov	r0, r6
     646:	f7ff ffdc 	bl	0x602
     64a:	1c43      	adds	r3, r0, #1
     64c:	d1f3      	bne.n	0x636
     64e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
     650:	0000      	movs	r0, r0
     652:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
     656:	460d      	mov	r5, r1
     658:	b09d      	sub	sp, #116	@ 0x74
     65a:	4614      	mov	r4, r2
     65c:	4698      	mov	r8, r3
     65e:	4606      	mov	r6, r0
     660:	b118      	cbz	r0, 0x66a
     662:	6983      	ldr	r3, [r0, #24]
     664:	b90b      	cbnz	r3, 0x66a
     666:	f7ff fe16 	bl	0x296
     66a:	4b89      	ldr	r3, [pc, #548]	@ (0x890)
     66c:	429d      	cmp	r5, r3
     66e:	d11b      	bne.n	0x6a8
     670:	6875      	ldr	r5, [r6, #4]
     672:	6e6b      	ldr	r3, [r5, #100]	@ 0x64
     674:	07d9      	lsls	r1, r3, #31
     676:	d405      	bmi.n	0x684
     678:	89ab      	ldrh	r3, [r5, #12]
     67a:	059a      	lsls	r2, r3, #22
     67c:	d402      	bmi.n	0x684
     67e:	6da8      	ldr	r0, [r5, #88]	@ 0x58
     680:	f7ff feb9 	bl	0x3f6
     684:	89ab      	ldrh	r3, [r5, #12]
     686:	071b      	lsls	r3, r3, #28
     688:	d501      	bpl.n	0x68e
     68a:	692b      	ldr	r3, [r5, #16]
     68c:	b9eb      	cbnz	r3, 0x6ca
     68e:	4629      	mov	r1, r5
     690:	4630      	mov	r0, r6
     692:	f000 fb8e 	bl	0xdb2
     696:	b1c0      	cbz	r0, 0x6ca
     698:	6e6b      	ldr	r3, [r5, #100]	@ 0x64
     69a:	07dc      	lsls	r4, r3, #31
     69c:	d50e      	bpl.n	0x6bc
     69e:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
     6a2:	b01d      	add	sp, #116	@ 0x74
     6a4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
     6a8:	4b7b      	ldr	r3, [pc, #492]	@ (0x898)
     6aa:	429d      	cmp	r5, r3
     6ac:	d101      	bne.n	0x6b2
     6ae:	68b5      	ldr	r5, [r6, #8]
     6b0:	e7df      	b.n	0x672
     6b2:	4b79      	ldr	r3, [pc, #484]	@ (0x898)
     6b4:	429d      	cmp	r5, r3
     6b6:	bf08      	it	eq
     6b8:	68f5      	ldreq	r5, [r6, #12]
     6ba:	e7da      	b.n	0x672
     6bc:	89ab      	ldrh	r3, [r5, #12]
     6be:	0598      	lsls	r0, r3, #22
     6c0:	d4ed      	bmi.n	0x69e
     6c2:	6da8      	ldr	r0, [r5, #88]	@ 0x58
     6c4:	f7ff fe98 	bl	0x3f8
     6c8:	e7e9      	b.n	0x69e
     6ca:	2300      	movs	r3, #0
     6cc:	9309      	str	r3, [sp, #36]	@ 0x24
     6ce:	2320      	movs	r3, #32
     6d0:	f88d 3029 	strb.w	r3, [sp, #41]	@ 0x29
     6d4:	f8cd 800c 	str.w	r8, [sp, #12]
     6d8:	2330      	movs	r3, #48	@ 0x30
     6da:	f8df 81c0 	ldr.w	r8, [pc, #448]	@ 0x89c
     6de:	f88d 302a 	strb.w	r3, [sp, #42]	@ 0x2a
     6e2:	f04f 0901 	mov.w	r9, #1
     6e6:	4623      	mov	r3, r4
     6e8:	469a      	mov	sl, r3
     6ea:	f813 2b01 	ldrb.w	r2, [r3], #1
     6ee:	b10a      	cbz	r2, 0x6f4
     6f0:	2a25      	cmp	r2, #37	@ 0x25
     6f2:	d1f9      	bne.n	0x6e8
     6f4:	ebba 0b04 	subs.w	fp, sl, r4
     6f8:	d00b      	beq.n	0x712
     6fa:	465b      	mov	r3, fp
     6fc:	4622      	mov	r2, r4
     6fe:	4629      	mov	r1, r5
     700:	4630      	mov	r0, r6
     702:	f7ff ff93 	bl	0x62c
     706:	3001      	adds	r0, #1
     708:	f000 80aa 	beq.w	0x860
     70c:	9a09      	ldr	r2, [sp, #36]	@ 0x24
     70e:	445a      	add	r2, fp
     710:	9209      	str	r2, [sp, #36]	@ 0x24
     712:	f89a 3000 	ldrb.w	r3, [sl]
     716:	2b00      	cmp	r3, #0
     718:	f000 80a2 	beq.w	0x860
     71c:	2300      	movs	r3, #0
     71e:	f04f 32ff 	mov.w	r2, #4294967295	@ 0xffffffff
     722:	e9cd 2305 	strd	r2, r3, [sp, #20]
     726:	f10a 0a01 	add.w	sl, sl, #1
     72a:	9304      	str	r3, [sp, #16]
     72c:	9307      	str	r3, [sp, #28]
     72e:	f88d 3053 	strb.w	r3, [sp, #83]	@ 0x53
     732:	931a      	str	r3, [sp, #104]	@ 0x68
     734:	4654      	mov	r4, sl
     736:	2205      	movs	r2, #5
     738:	f814 1b01 	ldrb.w	r1, [r4], #1
     73c:	4858      	ldr	r0, [pc, #352]	@ (0x8a0)
     73e:	f7ed f908 	bl	0xfffed952
     742:	9a04      	ldr	r2, [sp, #16]
     744:	b9d8      	cbnz	r0, 0x77e
     746:	06d1      	lsls	r1, r2, #27
     748:	bf44      	itt	mi
     74a:	2320      	movmi	r3, #32
     74c:	f88d 3053 	strbmi.w	r3, [sp, #83]	@ 0x53
     750:	0713      	lsls	r3, r2, #28
     752:	bf44      	itt	mi
     754:	232b      	movmi	r3, #43	@ 0x2b
     756:	f88d 3053 	strbmi.w	r3, [sp, #83]	@ 0x53
     75a:	f89a 3000 	ldrb.w	r3, [sl]
     75e:	2b2a      	cmp	r3, #42	@ 0x2a
     760:	d015      	beq.n	0x78e
     762:	9a07      	ldr	r2, [sp, #28]
     764:	4654      	mov	r4, sl
     766:	2000      	movs	r0, #0
     768:	f04f 0c0a 	mov.w	ip, #10
     76c:	4621      	mov	r1, r4
     76e:	f811 3b01 	ldrb.w	r3, [r1], #1
     772:	3b30      	subs	r3, #48	@ 0x30
     774:	2b09      	cmp	r3, #9
     776:	d94e      	bls.n	0x816
     778:	b1b0      	cbz	r0, 0x7a8
     77a:	9207      	str	r2, [sp, #28]
     77c:	e014      	b.n	0x7a8
     77e:	eba0 0308 	sub.w	r3, r0, r8
     782:	fa09 f303 	lsl.w	r3, r9, r3
     786:	4313      	orrs	r3, r2
     788:	9304      	str	r3, [sp, #16]
     78a:	46a2      	mov	sl, r4
     78c:	e7d2      	b.n	0x734
     78e:	9b03      	ldr	r3, [sp, #12]
     790:	1d19      	adds	r1, r3, #4
     792:	681b      	ldr	r3, [r3, #0]
     794:	9103      	str	r1, [sp, #12]
     796:	2b00      	cmp	r3, #0
     798:	bfbb      	ittet	lt
     79a:	425b      	neglt	r3, r3
     79c:	f042 0202 	orrlt.w	r2, r2, #2
     7a0:	9307      	strge	r3, [sp, #28]
     7a2:	9307      	strlt	r3, [sp, #28]
     7a4:	bfb8      	it	lt
     7a6:	9204      	strlt	r2, [sp, #16]
     7a8:	7823      	ldrb	r3, [r4, #0]
     7aa:	2b2e      	cmp	r3, #46	@ 0x2e
     7ac:	d10c      	bne.n	0x7c8
     7ae:	7863      	ldrb	r3, [r4, #1]
     7b0:	2b2a      	cmp	r3, #42	@ 0x2a
     7b2:	d135      	bne.n	0x820
     7b4:	9b03      	ldr	r3, [sp, #12]
     7b6:	1d1a      	adds	r2, r3, #4
     7b8:	681b      	ldr	r3, [r3, #0]
     7ba:	9203      	str	r2, [sp, #12]
     7bc:	2b00      	cmp	r3, #0
     7be:	bfb8      	it	lt
     7c0:	f04f 33ff 	movlt.w	r3, #4294967295	@ 0xffffffff
     7c4:	3402      	adds	r4, #2
     7c6:	9305      	str	r3, [sp, #20]
     7c8:	f8df a0e4 	ldr.w	sl, [pc, #228]	@ 0x8b0
     7cc:	7821      	ldrb	r1, [r4, #0]
     7ce:	2203      	movs	r2, #3
     7d0:	4650      	mov	r0, sl
     7d2:	f7ed f8be 	bl	0xfffed952
     7d6:	b140      	cbz	r0, 0x7ea
     7d8:	2340      	movs	r3, #64	@ 0x40
     7da:	eba0 000a 	sub.w	r0, r0, sl
     7de:	fa03 f000 	lsl.w	r0, r3, r0
     7e2:	9b04      	ldr	r3, [sp, #16]
     7e4:	4303      	orrs	r3, r0
     7e6:	3401      	adds	r4, #1
     7e8:	9304      	str	r3, [sp, #16]
     7ea:	f814 1b01 	ldrb.w	r1, [r4], #1
     7ee:	482c      	ldr	r0, [pc, #176]	@ (0x8a0)
     7f0:	f88d 1028 	strb.w	r1, [sp, #40]	@ 0x28
     7f4:	2206      	movs	r2, #6
     7f6:	f7ed f8ac 	bl	0xfffed952
     7fa:	2800      	cmp	r0, #0
     7fc:	d03f      	beq.n	0x87e
     7fe:	4b29      	ldr	r3, [pc, #164]	@ (0x8a4)
     800:	bb1b      	cbnz	r3, 0x84a
     802:	9b03      	ldr	r3, [sp, #12]
     804:	3307      	adds	r3, #7
     806:	f023 0307 	bic.w	r3, r3, #7
     80a:	3308      	adds	r3, #8
     80c:	9303      	str	r3, [sp, #12]
     80e:	9b09      	ldr	r3, [sp, #36]	@ 0x24
     810:	443b      	add	r3, r7
     812:	9309      	str	r3, [sp, #36]	@ 0x24
     814:	e767      	b.n	0x6e6
     816:	fb0c 3202 	mla	r2, ip, r2, r3
     81a:	460c      	mov	r4, r1
     81c:	2001      	movs	r0, #1
     81e:	e7a5      	b.n	0x76c
     820:	2300      	movs	r3, #0
     822:	3401      	adds	r4, #1
     824:	9305      	str	r3, [sp, #20]
     826:	4619      	mov	r1, r3
     828:	f04f 0c0a 	mov.w	ip, #10
     82c:	4620      	mov	r0, r4
     82e:	f810 2b01 	ldrb.w	r2, [r0], #1
     832:	3a30      	subs	r2, #48	@ 0x30
     834:	2a09      	cmp	r2, #9
     836:	d903      	bls.n	0x840
     838:	2b00      	cmp	r3, #0
     83a:	d0c5      	beq.n	0x7c8
     83c:	9105      	str	r1, [sp, #20]
     83e:	e7c3      	b.n	0x7c8
     840:	fb0c 2101 	mla	r1, ip, r1, r2
     844:	4604      	mov	r4, r0
     846:	2301      	movs	r3, #1
     848:	e7f0      	b.n	0x82c
     84a:	ab03      	add	r3, sp, #12
     84c:	9300      	str	r3, [sp, #0]
     84e:	462a      	mov	r2, r5
     850:	4b16      	ldr	r3, [pc, #88]	@ (0x8ac)
     852:	a904      	add	r1, sp, #16
     854:	4630      	mov	r0, r6
     856:	f3af 8000 	nop.w
     85a:	4607      	mov	r7, r0
     85c:	1c78      	adds	r0, r7, #1
     85e:	d1d6      	bne.n	0x80e
     860:	6e6b      	ldr	r3, [r5, #100]	@ 0x64
     862:	07d9      	lsls	r1, r3, #31
     864:	d405      	bmi.n	0x872
     866:	89ab      	ldrh	r3, [r5, #12]
     868:	059a      	lsls	r2, r3, #22
     86a:	d402      	bmi.n	0x872
     86c:	6da8      	ldr	r0, [r5, #88]	@ 0x58
     86e:	f7ff fdc3 	bl	0x3f8
     872:	89ab      	ldrh	r3, [r5, #12]
     874:	065b      	lsls	r3, r3, #25
     876:	f53f af12 	bmi.w	0x69e
     87a:	9809      	ldr	r0, [sp, #36]	@ 0x24
     87c:	e711      	b.n	0x6a2
     87e:	ab03      	add	r3, sp, #12
     880:	9300      	str	r3, [sp, #0]
     882:	462a      	mov	r2, r5
     884:	4b09      	ldr	r3, [pc, #36]	@ (0x8ac)
     886:	a904      	add	r1, sp, #16
     888:	4630      	mov	r0, r6
     88a:	f000 f880 	bl	0x98e
     88e:	e7e4      	b.n	0x85a
     890:	bf00      	nop
     892:	46b8      	mov	r8, r7
     894:	0003      	movs	r3, r0
     896:	46d8      	mov	r8, fp
     898:	0003      	movs	r3, r0
     89a:	4698      	mov	r8, r3
     89c:	0003      	movs	r3, r0
     89e:	46fc      	mov	ip, pc
     8a0:	0003      	movs	r3, r0
     8a2:	4706      	bx	r0
     8a4:	0003      	movs	r3, r0
     8a6:	0000      	movs	r0, r0
     8a8:	0000      	movs	r0, r0
     8aa:	36bb      	adds	r6, #187	@ 0xbb
     8ac:	0003      	movs	r3, r0
     8ae:	4702      	bx	r0
     8b0:	0003      	movs	r3, r0
     8b2:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
     8b6:	4616      	mov	r6, r2
     8b8:	4699      	mov	r9, r3
     8ba:	688a      	ldr	r2, [r1, #8]
     8bc:	690b      	ldr	r3, [r1, #16]
     8be:	f8dd 8020 	ldr.w	r8, [sp, #32]
     8c2:	4293      	cmp	r3, r2
     8c4:	bfb8      	it	lt
     8c6:	4613      	movlt	r3, r2
     8c8:	6033      	str	r3, [r6, #0]
     8ca:	f891 2043 	ldrb.w	r2, [r1, #67]	@ 0x43
     8ce:	4607      	mov	r7, r0
     8d0:	460c      	mov	r4, r1
     8d2:	b10a      	cbz	r2, 0x8d8
     8d4:	3301      	adds	r3, #1
     8d6:	6033      	str	r3, [r6, #0]
     8d8:	6823      	ldr	r3, [r4, #0]
     8da:	0699      	lsls	r1, r3, #26
     8dc:	bf42      	ittt	mi
     8de:	6833      	ldrmi	r3, [r6, #0]
     8e0:	3302      	addmi	r3, #2
     8e2:	6033      	strmi	r3, [r6, #0]
     8e4:	6825      	ldr	r5, [r4, #0]
     8e6:	f015 0506 	ands.w	r5, r5, #6
     8ea:	d106      	bne.n	0x8fa
     8ec:	f104 0a19 	add.w	sl, r4, #25
     8f0:	68e3      	ldr	r3, [r4, #12]
     8f2:	6832      	ldr	r2, [r6, #0]
     8f4:	1a9b      	subs	r3, r3, r2
     8f6:	42ab      	cmp	r3, r5
     8f8:	dc26      	bgt.n	0x948
     8fa:	f894 2043 	ldrb.w	r2, [r4, #67]	@ 0x43
     8fe:	1e13      	subs	r3, r2, #0
     900:	6822      	ldr	r2, [r4, #0]
     902:	bf18      	it	ne
     904:	2301      	movne	r3, #1
     906:	0692      	lsls	r2, r2, #26
     908:	d42b      	bmi.n	0x962
     90a:	f104 0243 	add.w	r2, r4, #67	@ 0x43
     90e:	4649      	mov	r1, r9
     910:	4638      	mov	r0, r7
     912:	47c0      	blx	r8
     914:	3001      	adds	r0, #1
     916:	d01e      	beq.n	0x956
     918:	6823      	ldr	r3, [r4, #0]
     91a:	68e5      	ldr	r5, [r4, #12]
     91c:	6832      	ldr	r2, [r6, #0]
     91e:	f003 0306 	and.w	r3, r3, #6
     922:	2b04      	cmp	r3, #4
     924:	bf08      	it	eq
     926:	1aad      	subeq	r5, r5, r2
     928:	68a3      	ldr	r3, [r4, #8]
     92a:	6922      	ldr	r2, [r4, #16]
     92c:	bf0c      	ite	eq
     92e:	ea25 75e5 	biceq.w	r5, r5, r5, asr #31
     932:	2500      	movne	r5, #0
     934:	4293      	cmp	r3, r2
     936:	bfc4      	itt	gt
     938:	1a9b      	subgt	r3, r3, r2
     93a:	18ed      	addgt	r5, r5, r3
     93c:	2600      	movs	r6, #0
     93e:	341a      	adds	r4, #26
     940:	42b5      	cmp	r5, r6
     942:	d11a      	bne.n	0x97a
     944:	2000      	movs	r0, #0
     946:	e008      	b.n	0x95a
     948:	2301      	movs	r3, #1
     94a:	4652      	mov	r2, sl
     94c:	4649      	mov	r1, r9
     94e:	4638      	mov	r0, r7
     950:	47c0      	blx	r8
     952:	3001      	adds	r0, #1
     954:	d103      	bne.n	0x95e
     956:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
     95a:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
     95e:	3501      	adds	r5, #1
     960:	e7c6      	b.n	0x8f0
     962:	18e1      	adds	r1, r4, r3
     964:	1c5a      	adds	r2, r3, #1
     966:	2030      	movs	r0, #48	@ 0x30
     968:	f881 0043 	strb.w	r0, [r1, #67]	@ 0x43
     96c:	4422      	add	r2, r4
     96e:	f894 1045 	ldrb.w	r1, [r4, #69]	@ 0x45
     972:	f882 1043 	strb.w	r1, [r2, #67]	@ 0x43
     976:	3302      	adds	r3, #2
     978:	e7c7      	b.n	0x90a
     97a:	2301      	movs	r3, #1
     97c:	4622      	mov	r2, r4
     97e:	4649      	mov	r1, r9
     980:	4638      	mov	r0, r7
     982:	47c0      	blx	r8
     984:	3001      	adds	r0, #1
     986:	d0e6      	beq.n	0x956
     988:	3601      	adds	r6, #1
     98a:	e7d9      	b.n	0x940
     98c:	0000      	movs	r0, r0
     98e:	e92d 47ff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, lr}
     992:	460c      	mov	r4, r1
     994:	4691      	mov	r9, r2
     996:	7e27      	ldrb	r7, [r4, #24]
     998:	990c      	ldr	r1, [sp, #48]	@ 0x30
     99a:	2f78      	cmp	r7, #120	@ 0x78
     99c:	4680      	mov	r8, r0
     99e:	469a      	mov	sl, r3
     9a0:	f104 0243 	add.w	r2, r4, #67	@ 0x43
     9a4:	d807      	bhi.n	0x9b6
     9a6:	2f62      	cmp	r7, #98	@ 0x62
     9a8:	d80a      	bhi.n	0x9c0
     9aa:	2f00      	cmp	r7, #0
     9ac:	f000 80d8 	beq.w	0xb60
     9b0:	2f58      	cmp	r7, #88	@ 0x58
     9b2:	f000 80a3 	beq.w	0xafc
     9b6:	f104 0642 	add.w	r6, r4, #66	@ 0x42
     9ba:	f884 7042 	strb.w	r7, [r4, #66]	@ 0x42
     9be:	e03a      	b.n	0xa36
     9c0:	f1a7 0363 	sub.w	r3, r7, #99	@ 0x63
     9c4:	2b15      	cmp	r3, #21
     9c6:	d8f6      	bhi.n	0x9b6
     9c8:	a001      	add	r0, pc, #4	@ (adr r0, 0x9d0)
     9ca:	f850 f023 	ldr.w	pc, [r0, r3, lsl #2]
     9ce:	3ab5      	subs	r2, #181	@ 0xb5
     9d0:	0003      	movs	r3, r0
     9d2:	3ac9      	subs	r2, #201	@ 0xc9
     9d4:	0003      	movs	r3, r0
     9d6:	3a45      	subs	r2, #69	@ 0x45
     9d8:	0003      	movs	r3, r0
     9da:	3a45      	subs	r2, #69	@ 0x45
     9dc:	0003      	movs	r3, r0
     9de:	3a45      	subs	r2, #69	@ 0x45
     9e0:	0003      	movs	r3, r0
     9e2:	3a45      	subs	r2, #69	@ 0x45
     9e4:	0003      	movs	r3, r0
     9e6:	3ac9      	subs	r2, #201	@ 0xc9
     9e8:	0003      	movs	r3, r0
     9ea:	3a45      	subs	r2, #69	@ 0x45
     9ec:	0003      	movs	r3, r0
     9ee:	3a45      	subs	r2, #69	@ 0x45
     9f0:	0003      	movs	r3, r0
     9f2:	3a45      	subs	r2, #69	@ 0x45
     9f4:	0003      	movs	r3, r0
     9f6:	3a45      	subs	r2, #69	@ 0x45
     9f8:	0003      	movs	r3, r0
     9fa:	3bd5      	subs	r3, #213	@ 0xd5
     9fc:	0003      	movs	r3, r0
     9fe:	3af9      	subs	r2, #249	@ 0xf9
     a00:	0003      	movs	r3, r0
     a02:	3bb7      	subs	r3, #183	@ 0xb7
     a04:	0003      	movs	r3, r0
     a06:	3a45      	subs	r2, #69	@ 0x45
     a08:	0003      	movs	r3, r0
     a0a:	3a45      	subs	r2, #69	@ 0x45
     a0c:	0003      	movs	r3, r0
     a0e:	3bf7      	subs	r3, #247	@ 0xf7
     a10:	0003      	movs	r3, r0
     a12:	3a45      	subs	r2, #69	@ 0x45
     a14:	0003      	movs	r3, r0
     a16:	3af9      	subs	r2, #249	@ 0xf9
     a18:	0003      	movs	r3, r0
     a1a:	3a45      	subs	r2, #69	@ 0x45
     a1c:	0003      	movs	r3, r0
     a1e:	3a45      	subs	r2, #69	@ 0x45
     a20:	0003      	movs	r3, r0
     a22:	3bbf      	subs	r3, #191	@ 0xbf
     a24:	0003      	movs	r3, r0
     a26:	680b      	ldr	r3, [r1, #0]
     a28:	1d1a      	adds	r2, r3, #4
     a2a:	681b      	ldr	r3, [r3, #0]
     a2c:	600a      	str	r2, [r1, #0]
     a2e:	f104 0642 	add.w	r6, r4, #66	@ 0x42
     a32:	f884 3042 	strb.w	r3, [r4, #66]	@ 0x42
     a36:	2301      	movs	r3, #1
     a38:	e0a3      	b.n	0xb82
     a3a:	6825      	ldr	r5, [r4, #0]
     a3c:	6808      	ldr	r0, [r1, #0]
     a3e:	062e      	lsls	r6, r5, #24
     a40:	f100 0304 	add.w	r3, r0, #4
     a44:	d50a      	bpl.n	0xa5c
     a46:	6805      	ldr	r5, [r0, #0]
     a48:	600b      	str	r3, [r1, #0]
     a4a:	2d00      	cmp	r5, #0
     a4c:	da03      	bge.n	0xa56
     a4e:	232d      	movs	r3, #45	@ 0x2d
     a50:	426d      	negs	r5, r5
     a52:	f884 3043 	strb.w	r3, [r4, #67]	@ 0x43
     a56:	485e      	ldr	r0, [pc, #376]	@ (0xbd0)
     a58:	230a      	movs	r3, #10
     a5a:	e019      	b.n	0xa90
     a5c:	f015 0f40 	tst.w	r5, #64	@ 0x40
     a60:	6805      	ldr	r5, [r0, #0]
     a62:	600b      	str	r3, [r1, #0]
     a64:	bf18      	it	ne
     a66:	b22d      	sxthne	r5, r5
     a68:	e7ef      	b.n	0xa4a
     a6a:	680b      	ldr	r3, [r1, #0]
     a6c:	6825      	ldr	r5, [r4, #0]
     a6e:	1d18      	adds	r0, r3, #4
     a70:	6008      	str	r0, [r1, #0]
     a72:	0628      	lsls	r0, r5, #24
     a74:	d501      	bpl.n	0xa7a
     a76:	681d      	ldr	r5, [r3, #0]
     a78:	e002      	b.n	0xa80
     a7a:	0669      	lsls	r1, r5, #25
     a7c:	d5fb      	bpl.n	0xa76
     a7e:	881d      	ldrh	r5, [r3, #0]
     a80:	4854      	ldr	r0, [pc, #336]	@ (0xbd4)
     a82:	2f6f      	cmp	r7, #111	@ 0x6f
     a84:	bf0c      	ite	eq
     a86:	2308      	moveq	r3, #8
     a88:	230a      	movne	r3, #10
     a8a:	2100      	movs	r1, #0
     a8c:	f884 1043 	strb.w	r1, [r4, #67]	@ 0x43
     a90:	6866      	ldr	r6, [r4, #4]
     a92:	60a6      	str	r6, [r4, #8]
     a94:	2e00      	cmp	r6, #0
     a96:	bfa2      	ittt	ge
     a98:	6821      	ldrge	r1, [r4, #0]
     a9a:	f021 0104 	bicge.w	r1, r1, #4
     a9e:	6021      	strge	r1, [r4, #0]
     aa0:	b90d      	cbnz	r5, 0xaa6
     aa2:	2e00      	cmp	r6, #0
     aa4:	d04d      	beq.n	0xb42
     aa6:	4616      	mov	r6, r2
     aa8:	fbb5 f1f3 	udiv	r1, r5, r3
     aac:	fb03 5711 	mls	r7, r3, r1, r5
     ab0:	5dc7      	ldrb	r7, [r0, r7]
     ab2:	f806 7d01 	strb.w	r7, [r6, #-1]!
     ab6:	462f      	mov	r7, r5
     ab8:	42bb      	cmp	r3, r7
     aba:	460d      	mov	r5, r1
     abc:	d9f4      	bls.n	0xaa8
     abe:	2b08      	cmp	r3, #8
     ac0:	d10b      	bne.n	0xada
     ac2:	6823      	ldr	r3, [r4, #0]
     ac4:	07df      	lsls	r7, r3, #31
     ac6:	d508      	bpl.n	0xada
     ac8:	6923      	ldr	r3, [r4, #16]
     aca:	6861      	ldr	r1, [r4, #4]
     acc:	4299      	cmp	r1, r3
     ace:	bfde      	ittt	le
     ad0:	2330      	movle	r3, #48	@ 0x30
     ad2:	f806 3c01 	strble.w	r3, [r6, #-1]
     ad6:	f106 36ff 	addle.w	r6, r6, #4294967295	@ 0xffffffff
     ada:	1b92      	subs	r2, r2, r6
     adc:	6122      	str	r2, [r4, #16]
     ade:	f8cd a000 	str.w	sl, [sp]
     ae2:	464b      	mov	r3, r9
     ae4:	aa03      	add	r2, sp, #12
     ae6:	4621      	mov	r1, r4
     ae8:	4640      	mov	r0, r8
     aea:	f7ff fee2 	bl	0x8b2
     aee:	3001      	adds	r0, #1
     af0:	d14c      	bne.n	0xb8c
     af2:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
     af6:	b004      	add	sp, #16
     af8:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
     afc:	4835      	ldr	r0, [pc, #212]	@ (0xbd4)
     afe:	f884 7045 	strb.w	r7, [r4, #69]	@ 0x45
     b02:	6823      	ldr	r3, [r4, #0]
     b04:	680e      	ldr	r6, [r1, #0]
     b06:	061f      	lsls	r7, r3, #24
     b08:	f856 5b04 	ldr.w	r5, [r6], #4
     b0c:	600e      	str	r6, [r1, #0]
     b0e:	d514      	bpl.n	0xb3a
     b10:	07d9      	lsls	r1, r3, #31
     b12:	bf44      	itt	mi
     b14:	f043 0320 	orrmi.w	r3, r3, #32
     b18:	6023      	strmi	r3, [r4, #0]
     b1a:	b91d      	cbnz	r5, 0xb24
     b1c:	6823      	ldr	r3, [r4, #0]
     b1e:	f023 0320 	bic.w	r3, r3, #32
     b22:	6023      	str	r3, [r4, #0]
     b24:	2310      	movs	r3, #16
     b26:	e7b0      	b.n	0xa8a
     b28:	6823      	ldr	r3, [r4, #0]
     b2a:	f043 0320 	orr.w	r3, r3, #32
     b2e:	6023      	str	r3, [r4, #0]
     b30:	2378      	movs	r3, #120	@ 0x78
     b32:	4828      	ldr	r0, [pc, #160]	@ (0xbd4)
     b34:	f884 3045 	strb.w	r3, [r4, #69]	@ 0x45
     b38:	e7e3      	b.n	0xb02
     b3a:	065e      	lsls	r6, r3, #25
     b3c:	bf48      	it	mi
     b3e:	b2ad      	uxthmi	r5, r5
     b40:	e7e6      	b.n	0xb10
     b42:	4616      	mov	r6, r2
     b44:	e7bb      	b.n	0xabe
     b46:	680b      	ldr	r3, [r1, #0]
     b48:	6826      	ldr	r6, [r4, #0]
     b4a:	6960      	ldr	r0, [r4, #20]
     b4c:	1d1d      	adds	r5, r3, #4
     b4e:	600d      	str	r5, [r1, #0]
     b50:	0635      	lsls	r5, r6, #24
     b52:	681b      	ldr	r3, [r3, #0]
     b54:	d501      	bpl.n	0xb5a
     b56:	6018      	str	r0, [r3, #0]
     b58:	e002      	b.n	0xb60
     b5a:	0671      	lsls	r1, r6, #25
     b5c:	d5fb      	bpl.n	0xb56
     b5e:	8018      	strh	r0, [r3, #0]
     b60:	2300      	movs	r3, #0
     b62:	6123      	str	r3, [r4, #16]
     b64:	4616      	mov	r6, r2
     b66:	e7ba      	b.n	0xade
     b68:	680b      	ldr	r3, [r1, #0]
     b6a:	1d1a      	adds	r2, r3, #4
     b6c:	600a      	str	r2, [r1, #0]
     b6e:	681e      	ldr	r6, [r3, #0]
     b70:	6862      	ldr	r2, [r4, #4]
     b72:	2100      	movs	r1, #0
     b74:	4630      	mov	r0, r6
     b76:	f7ec feec 	bl	0xfffed952
     b7a:	b108      	cbz	r0, 0xb80
     b7c:	1b80      	subs	r0, r0, r6
     b7e:	6060      	str	r0, [r4, #4]
     b80:	6863      	ldr	r3, [r4, #4]
     b82:	6123      	str	r3, [r4, #16]
     b84:	2300      	movs	r3, #0
     b86:	f884 3043 	strb.w	r3, [r4, #67]	@ 0x43
     b8a:	e7a8      	b.n	0xade
     b8c:	6923      	ldr	r3, [r4, #16]
     b8e:	4632      	mov	r2, r6
     b90:	4649      	mov	r1, r9
     b92:	4640      	mov	r0, r8
     b94:	47d0      	blx	sl
     b96:	3001      	adds	r0, #1
     b98:	d0ab      	beq.n	0xaf2
     b9a:	6823      	ldr	r3, [r4, #0]
     b9c:	079b      	lsls	r3, r3, #30
     b9e:	d413      	bmi.n	0xbc8
     ba0:	68e0      	ldr	r0, [r4, #12]
     ba2:	9b03      	ldr	r3, [sp, #12]
     ba4:	4298      	cmp	r0, r3
     ba6:	bfb8      	it	lt
     ba8:	4618      	movlt	r0, r3
     baa:	e7a4      	b.n	0xaf6
     bac:	2301      	movs	r3, #1
     bae:	4632      	mov	r2, r6
     bb0:	4649      	mov	r1, r9
     bb2:	4640      	mov	r0, r8
     bb4:	47d0      	blx	sl
     bb6:	3001      	adds	r0, #1
     bb8:	d09b      	beq.n	0xaf2
     bba:	3501      	adds	r5, #1
     bbc:	68e3      	ldr	r3, [r4, #12]
     bbe:	9903      	ldr	r1, [sp, #12]
     bc0:	1a5b      	subs	r3, r3, r1
     bc2:	42ab      	cmp	r3, r5
     bc4:	dcf2      	bgt.n	0xbac
     bc6:	e7eb      	b.n	0xba0
     bc8:	2500      	movs	r5, #0
     bca:	f104 0619 	add.w	r6, r4, #25
     bce:	e7f5      	b.n	0xbbc
     bd0:	bf00      	nop
     bd2:	470d      	bx	r1
     bd4:	0003      	movs	r3, r0
     bd6:	471e      	bx	r3
     bd8:	0003      	movs	r3, r0
     bda:	4b13      	ldr	r3, [pc, #76]	@ (0xc28)
     bdc:	b510      	push	{r4, lr}
     bde:	681c      	ldr	r4, [r3, #0]
     be0:	6ba3      	ldr	r3, [r4, #56]	@ 0x38
     be2:	b97b      	cbnz	r3, 0xc04
     be4:	2018      	movs	r0, #24
     be6:	f7ff fc08 	bl	0x3fa
     bea:	4a10      	ldr	r2, [pc, #64]	@ (0xc2c)
     bec:	4b11      	ldr	r3, [pc, #68]	@ (0xc34)
     bee:	63a0      	str	r0, [r4, #56]	@ 0x38
     bf0:	e9c0 2300 	strd	r2, r3, [r0]
     bf4:	4b10      	ldr	r3, [pc, #64]	@ (0xc38)
     bf6:	6083      	str	r3, [r0, #8]
     bf8:	230b      	movs	r3, #11
     bfa:	8183      	strh	r3, [r0, #12]
     bfc:	2201      	movs	r2, #1
     bfe:	2300      	movs	r3, #0
     c00:	e9c0 2304 	strd	r2, r3, [r0, #16]
     c04:	6ba1      	ldr	r1, [r4, #56]	@ 0x38
     c06:	480c      	ldr	r0, [pc, #48]	@ (0xc38)
     c08:	690a      	ldr	r2, [r1, #16]
     c0a:	694b      	ldr	r3, [r1, #20]
     c0c:	4c0c      	ldr	r4, [pc, #48]	@ (0xc40)
     c0e:	4350      	muls	r0, r2
     c10:	fb04 0003 	mla	r0, r4, r3, r0
     c14:	fba2 3404 	umull	r3, r4, r2, r4
     c18:	1c5a      	adds	r2, r3, #1
     c1a:	4404      	add	r4, r0
     c1c:	f144 0000 	adc.w	r0, r4, #0
     c20:	e9c1 2004 	strd	r2, r0, [r1, #16]
     c24:	f020 4000 	bic.w	r0, r0, #2147483648	@ 0x80000000
     c28:	bd10      	pop	{r4, pc}
     c2a:	811c      	strh	r4, [r3, #8]
     c2c:	1fff      	subs	r7, r7, #7
     c2e:	330e      	adds	r3, #14
     c30:	abcd      	add	r3, sp, #820	@ 0x334
     c32:	1234      	asrs	r4, r6, #8
     c34:	e66d      	b.n	0x912
     c36:	deec      	udf	#236	@ 0xec
     c38:	0005      	movs	r5, r0
     c3a:	f42d 5851 	bic.w	r8, sp, #13376	@ 0x3440
     c3e:	7f2d      	ldrb	r5, [r5, #28]
     c40:	4c95      	ldr	r4, [pc, #596]	@ (0xe98)
     c42:	b538      	push	{r3, r4, r5, lr}
     c44:	4d06      	ldr	r5, [pc, #24]	@ (0xc60)
     c46:	2300      	movs	r3, #0
     c48:	4604      	mov	r4, r0
     c4a:	4608      	mov	r0, r1
     c4c:	602b      	str	r3, [r5, #0]
     c4e:	f000 fa0c 	bl	0x106a
     c52:	1c43      	adds	r3, r0, #1
     c54:	d102      	bne.n	0xc5c
     c56:	682b      	ldr	r3, [r5, #0]
     c58:	b103      	cbz	r3, 0xc5c
     c5a:	6023      	str	r3, [r4, #0]
     c5c:	bd38      	pop	{r3, r4, r5, pc}
     c5e:	e53c      	b.n	0x6da
     c60:	2000      	movs	r0, #0
     c62:	b510      	push	{r4, lr}
     c64:	460c      	mov	r4, r1
     c66:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
     c6a:	f000 f9a2 	bl	0xfb2
     c6e:	2800      	cmp	r0, #0
     c70:	bfab      	itete	ge
     c72:	6d63      	ldrge	r3, [r4, #84]	@ 0x54
     c74:	89a3      	ldrhlt	r3, [r4, #12]
     c76:	181b      	addge	r3, r3, r0
     c78:	f423 5380 	biclt.w	r3, r3, #4096	@ 0x1000
     c7c:	bfac      	ite	ge
     c7e:	6563      	strge	r3, [r4, #84]	@ 0x54
     c80:	81a3      	strhlt	r3, [r4, #12]
     c82:	bd10      	pop	{r4, pc}
     c84:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
     c88:	461f      	mov	r7, r3
     c8a:	898b      	ldrh	r3, [r1, #12]
     c8c:	05db      	lsls	r3, r3, #23
     c8e:	4605      	mov	r5, r0
     c90:	460c      	mov	r4, r1
     c92:	4616      	mov	r6, r2
     c94:	d505      	bpl.n	0xca2
     c96:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
     c9a:	2302      	movs	r3, #2
     c9c:	2200      	movs	r2, #0
     c9e:	f000 f906 	bl	0xeae
     ca2:	89a3      	ldrh	r3, [r4, #12]
     ca4:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
     ca8:	f423 5380 	bic.w	r3, r3, #4096	@ 0x1000
     cac:	81a3      	strh	r3, [r4, #12]
     cae:	4632      	mov	r2, r6
     cb0:	463b      	mov	r3, r7
     cb2:	4628      	mov	r0, r5
     cb4:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
     cb8:	f000 b869 	b.w	0xd8e
     cbc:	b510      	push	{r4, lr}
     cbe:	460c      	mov	r4, r1
     cc0:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
     cc4:	f000 f8f3 	bl	0xeae
     cc8:	1c43      	adds	r3, r0, #1
     cca:	89a3      	ldrh	r3, [r4, #12]
     ccc:	bf15      	itete	ne
     cce:	6560      	strne	r0, [r4, #84]	@ 0x54
     cd0:	f423 5380 	biceq.w	r3, r3, #4096	@ 0x1000
     cd4:	f443 5380 	orrne.w	r3, r3, #4096	@ 0x1000
     cd8:	81a3      	strheq	r3, [r4, #12]
     cda:	bf18      	it	ne
     cdc:	81a3      	strhne	r3, [r4, #12]
     cde:	bd10      	pop	{r4, pc}
     ce0:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
     ce4:	f000 b8d3 	b.w	0xe8e
     ce8:	0000      	movs	r0, r0
     cea:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
     cec:	460e      	mov	r6, r1
     cee:	4614      	mov	r4, r2
     cf0:	4605      	mov	r5, r0
     cf2:	b118      	cbz	r0, 0xcfc
     cf4:	6983      	ldr	r3, [r0, #24]
     cf6:	b90b      	cbnz	r3, 0xcfc
     cf8:	f7ff facd 	bl	0x296
     cfc:	4b21      	ldr	r3, [pc, #132]	@ (0xd84)
     cfe:	429c      	cmp	r4, r3
     d00:	d12b      	bne.n	0xd5a
     d02:	686c      	ldr	r4, [r5, #4]
     d04:	69a3      	ldr	r3, [r4, #24]
     d06:	60a3      	str	r3, [r4, #8]
     d08:	89a3      	ldrh	r3, [r4, #12]
     d0a:	071a      	lsls	r2, r3, #28
     d0c:	d52f      	bpl.n	0xd6e
     d0e:	6923      	ldr	r3, [r4, #16]
     d10:	b36b      	cbz	r3, 0xd6e
     d12:	6923      	ldr	r3, [r4, #16]
     d14:	6820      	ldr	r0, [r4, #0]
     d16:	1ac0      	subs	r0, r0, r3
     d18:	6963      	ldr	r3, [r4, #20]
     d1a:	b2f6      	uxtb	r6, r6
     d1c:	4283      	cmp	r3, r0
     d1e:	4637      	mov	r7, r6
     d20:	dc04      	bgt.n	0xd2c
     d22:	4621      	mov	r1, r4
     d24:	4628      	mov	r0, r5
     d26:	f7ff fa10 	bl	0x14a
     d2a:	bb30      	cbnz	r0, 0xd7a
     d2c:	68a3      	ldr	r3, [r4, #8]
     d2e:	3b01      	subs	r3, #1
     d30:	60a3      	str	r3, [r4, #8]
     d32:	6823      	ldr	r3, [r4, #0]
     d34:	1c5a      	adds	r2, r3, #1
     d36:	6022      	str	r2, [r4, #0]
     d38:	701e      	strb	r6, [r3, #0]
     d3a:	6963      	ldr	r3, [r4, #20]
     d3c:	3001      	adds	r0, #1
     d3e:	4283      	cmp	r3, r0
     d40:	d004      	beq.n	0xd4c
     d42:	89a3      	ldrh	r3, [r4, #12]
     d44:	07db      	lsls	r3, r3, #31
     d46:	d506      	bpl.n	0xd56
     d48:	2e0a      	cmp	r6, #10
     d4a:	d104      	bne.n	0xd56
     d4c:	4621      	mov	r1, r4
     d4e:	4628      	mov	r0, r5
     d50:	f7ff f9fb 	bl	0x14a
     d54:	b988      	cbnz	r0, 0xd7a
     d56:	4638      	mov	r0, r7
     d58:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
     d5a:	4b0a      	ldr	r3, [pc, #40]	@ (0xd84)
     d5c:	429c      	cmp	r4, r3
     d5e:	d101      	bne.n	0xd64
     d60:	68ac      	ldr	r4, [r5, #8]
     d62:	e7cf      	b.n	0xd04
     d64:	4b09      	ldr	r3, [pc, #36]	@ (0xd8c)
     d66:	429c      	cmp	r4, r3
     d68:	bf08      	it	eq
     d6a:	68ec      	ldreq	r4, [r5, #12]
     d6c:	e7ca      	b.n	0xd04
     d6e:	4621      	mov	r1, r4
     d70:	4628      	mov	r0, r5
     d72:	f000 f81e 	bl	0xdb2
     d76:	2800      	cmp	r0, #0
     d78:	d0cb      	beq.n	0xd12
     d7a:	f04f 37ff 	mov.w	r7, #4294967295	@ 0xffffffff
     d7e:	e7ea      	b.n	0xd56
     d80:	bf00      	nop
     d82:	46b8      	mov	r8, r7
     d84:	0003      	movs	r3, r0
     d86:	46d8      	mov	r8, fp
     d88:	0003      	movs	r3, r0
     d8a:	4698      	mov	r8, r3
     d8c:	0003      	movs	r3, r0
     d8e:	b538      	push	{r3, r4, r5, lr}
     d90:	4d07      	ldr	r5, [pc, #28]	@ (0xdb0)
     d92:	4604      	mov	r4, r0
     d94:	4608      	mov	r0, r1
     d96:	4611      	mov	r1, r2
     d98:	2200      	movs	r2, #0
     d9a:	602a      	str	r2, [r5, #0]
     d9c:	461a      	mov	r2, r3
     d9e:	f000 f972 	bl	0x1086
     da2:	1c43      	adds	r3, r0, #1
     da4:	d102      	bne.n	0xdac
     da6:	682b      	ldr	r3, [r5, #0]
     da8:	b103      	cbz	r3, 0xdac
     daa:	6023      	str	r3, [r4, #0]
     dac:	bd38      	pop	{r3, r4, r5, pc}
     dae:	e53c      	b.n	0x82a
     db0:	2000      	movs	r0, #0
     db2:	4b32      	ldr	r3, [pc, #200]	@ (0xe7c)
     db4:	b570      	push	{r4, r5, r6, lr}
     db6:	681d      	ldr	r5, [r3, #0]
     db8:	4606      	mov	r6, r0
     dba:	460c      	mov	r4, r1
     dbc:	b125      	cbz	r5, 0xdc8
     dbe:	69ab      	ldr	r3, [r5, #24]
     dc0:	b913      	cbnz	r3, 0xdc8
     dc2:	4628      	mov	r0, r5
     dc4:	f7ff fa67 	bl	0x296
     dc8:	4b2e      	ldr	r3, [pc, #184]	@ (0xe84)
     dca:	429c      	cmp	r4, r3
     dcc:	d10f      	bne.n	0xdee
     dce:	686c      	ldr	r4, [r5, #4]
     dd0:	89a3      	ldrh	r3, [r4, #12]
     dd2:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
     dd6:	0719      	lsls	r1, r3, #28
     dd8:	d42c      	bmi.n	0xe34
     dda:	06dd      	lsls	r5, r3, #27
     ddc:	d411      	bmi.n	0xe02
     dde:	2309      	movs	r3, #9
     de0:	6033      	str	r3, [r6, #0]
     de2:	f042 0340 	orr.w	r3, r2, #64	@ 0x40
     de6:	81a3      	strh	r3, [r4, #12]
     de8:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
     dec:	e03e      	b.n	0xe6c
     dee:	4b25      	ldr	r3, [pc, #148]	@ (0xe84)
     df0:	429c      	cmp	r4, r3
     df2:	d101      	bne.n	0xdf8
     df4:	68ac      	ldr	r4, [r5, #8]
     df6:	e7eb      	b.n	0xdd0
     df8:	4b24      	ldr	r3, [pc, #144]	@ (0xe8c)
     dfa:	429c      	cmp	r4, r3
     dfc:	bf08      	it	eq
     dfe:	68ec      	ldreq	r4, [r5, #12]
     e00:	e7e6      	b.n	0xdd0
     e02:	0758      	lsls	r0, r3, #29
     e04:	d512      	bpl.n	0xe2c
     e06:	6b61      	ldr	r1, [r4, #52]	@ 0x34
     e08:	b141      	cbz	r1, 0xe1c
     e0a:	f104 0344 	add.w	r3, r4, #68	@ 0x44
     e0e:	4299      	cmp	r1, r3
     e10:	d002      	beq.n	0xe18
     e12:	4630      	mov	r0, r6
     e14:	f7ff fb4d 	bl	0x4b2
     e18:	2300      	movs	r3, #0
     e1a:	6363      	str	r3, [r4, #52]	@ 0x34
     e1c:	89a3      	ldrh	r3, [r4, #12]
     e1e:	f023 0324 	bic.w	r3, r3, #36	@ 0x24
     e22:	81a3      	strh	r3, [r4, #12]
     e24:	2300      	movs	r3, #0
     e26:	6063      	str	r3, [r4, #4]
     e28:	6923      	ldr	r3, [r4, #16]
     e2a:	6023      	str	r3, [r4, #0]
     e2c:	89a3      	ldrh	r3, [r4, #12]
     e2e:	f043 0308 	orr.w	r3, r3, #8
     e32:	81a3      	strh	r3, [r4, #12]
     e34:	6923      	ldr	r3, [r4, #16]
     e36:	b94b      	cbnz	r3, 0xe4c
     e38:	89a3      	ldrh	r3, [r4, #12]
     e3a:	f403 7320 	and.w	r3, r3, #640	@ 0x280
     e3e:	f5b3 7f00 	cmp.w	r3, #512	@ 0x200
     e42:	d003      	beq.n	0xe4c
     e44:	4621      	mov	r1, r4
     e46:	4630      	mov	r0, r6
     e48:	f000 f867 	bl	0xf1a
     e4c:	89a0      	ldrh	r0, [r4, #12]
     e4e:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
     e52:	f010 0301 	ands.w	r3, r0, #1
     e56:	d00a      	beq.n	0xe6e
     e58:	2300      	movs	r3, #0
     e5a:	60a3      	str	r3, [r4, #8]
     e5c:	6963      	ldr	r3, [r4, #20]
     e5e:	425b      	negs	r3, r3
     e60:	61a3      	str	r3, [r4, #24]
     e62:	6923      	ldr	r3, [r4, #16]
     e64:	b943      	cbnz	r3, 0xe78
     e66:	f010 0080 	ands.w	r0, r0, #128	@ 0x80
     e6a:	d1ba      	bne.n	0xde2
     e6c:	bd70      	pop	{r4, r5, r6, pc}
     e6e:	0781      	lsls	r1, r0, #30
     e70:	bf58      	it	pl
     e72:	6963      	ldrpl	r3, [r4, #20]
     e74:	60a3      	str	r3, [r4, #8]
     e76:	e7f4      	b.n	0xe62
     e78:	2000      	movs	r0, #0
     e7a:	e7f7      	b.n	0xe6c
     e7c:	bf00      	nop
     e7e:	811c      	strh	r4, [r3, #8]
     e80:	1fff      	subs	r7, r7, #7
     e82:	46b8      	mov	r8, r7
     e84:	0003      	movs	r3, r0
     e86:	46d8      	mov	r8, fp
     e88:	0003      	movs	r3, r0
     e8a:	4698      	mov	r8, r3
     e8c:	0003      	movs	r3, r0
     e8e:	b538      	push	{r3, r4, r5, lr}
     e90:	4d06      	ldr	r5, [pc, #24]	@ (0xeac)
     e92:	2300      	movs	r3, #0
     e94:	4604      	mov	r4, r0
     e96:	4608      	mov	r0, r1
     e98:	602b      	str	r3, [r5, #0]
     e9a:	f000 f8be 	bl	0x101a
     e9e:	1c43      	adds	r3, r0, #1
     ea0:	d102      	bne.n	0xea8
     ea2:	682b      	ldr	r3, [r5, #0]
     ea4:	b103      	cbz	r3, 0xea8
     ea6:	6023      	str	r3, [r4, #0]
     ea8:	bd38      	pop	{r3, r4, r5, pc}
     eaa:	e53c      	b.n	0x926
     eac:	2000      	movs	r0, #0
     eae:	b538      	push	{r3, r4, r5, lr}
     eb0:	4d07      	ldr	r5, [pc, #28]	@ (0xed0)
     eb2:	4604      	mov	r4, r0
     eb4:	4608      	mov	r0, r1
     eb6:	4611      	mov	r1, r2
     eb8:	2200      	movs	r2, #0
     eba:	602a      	str	r2, [r5, #0]
     ebc:	461a      	mov	r2, r3
     ebe:	f000 f8c4 	bl	0x104a
     ec2:	1c43      	adds	r3, r0, #1
     ec4:	d102      	bne.n	0xecc
     ec6:	682b      	ldr	r3, [r5, #0]
     ec8:	b103      	cbz	r3, 0xecc
     eca:	6023      	str	r3, [r4, #0]
     ecc:	bd38      	pop	{r3, r4, r5, pc}
     ece:	e53c      	b.n	0x94a
     ed0:	2000      	movs	r0, #0
     ed2:	b570      	push	{r4, r5, r6, lr}
     ed4:	460e      	mov	r6, r1
     ed6:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
     eda:	2900      	cmp	r1, #0
     edc:	b096      	sub	sp, #88	@ 0x58
     ede:	4614      	mov	r4, r2
     ee0:	461d      	mov	r5, r3
     ee2:	da07      	bge.n	0xef4
     ee4:	2300      	movs	r3, #0
     ee6:	602b      	str	r3, [r5, #0]
     ee8:	89b3      	ldrh	r3, [r6, #12]
     eea:	061a      	lsls	r2, r3, #24
     eec:	d410      	bmi.n	0xf10
     eee:	f44f 6380 	mov.w	r3, #1024	@ 0x400
     ef2:	e00e      	b.n	0xf12
     ef4:	466a      	mov	r2, sp
     ef6:	f000 f86e 	bl	0xfd6
     efa:	2800      	cmp	r0, #0
     efc:	dbf2      	blt.n	0xee4
     efe:	9a01      	ldr	r2, [sp, #4]
     f00:	f402 4270 	and.w	r2, r2, #61440	@ 0xf000
     f04:	f5a2 5300 	sub.w	r3, r2, #8192	@ 0x2000
     f08:	425a      	negs	r2, r3
     f0a:	415a      	adcs	r2, r3
     f0c:	602a      	str	r2, [r5, #0]
     f0e:	e7ee      	b.n	0xeee
     f10:	2340      	movs	r3, #64	@ 0x40
     f12:	2000      	movs	r0, #0
     f14:	6023      	str	r3, [r4, #0]
     f16:	b016      	add	sp, #88	@ 0x58
     f18:	bd70      	pop	{r4, r5, r6, pc}
     f1a:	898b      	ldrh	r3, [r1, #12]
     f1c:	b573      	push	{r0, r1, r4, r5, r6, lr}
     f1e:	079d      	lsls	r5, r3, #30
     f20:	4606      	mov	r6, r0
     f22:	460c      	mov	r4, r1
     f24:	d507      	bpl.n	0xf36
     f26:	f104 0347 	add.w	r3, r4, #71	@ 0x47
     f2a:	6023      	str	r3, [r4, #0]
     f2c:	6123      	str	r3, [r4, #16]
     f2e:	2301      	movs	r3, #1
     f30:	6163      	str	r3, [r4, #20]
     f32:	b002      	add	sp, #8
     f34:	bd70      	pop	{r4, r5, r6, pc}
     f36:	ab01      	add	r3, sp, #4
     f38:	466a      	mov	r2, sp
     f3a:	f7ff ffca 	bl	0xed2
     f3e:	9900      	ldr	r1, [sp, #0]
     f40:	4605      	mov	r5, r0
     f42:	4630      	mov	r0, r6
     f44:	f7ff fb03 	bl	0x54e
     f48:	b948      	cbnz	r0, 0xf5e
     f4a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
     f4e:	059a      	lsls	r2, r3, #22
     f50:	d4ef      	bmi.n	0xf32
     f52:	f023 0303 	bic.w	r3, r3, #3
     f56:	f043 0302 	orr.w	r3, r3, #2
     f5a:	81a3      	strh	r3, [r4, #12]
     f5c:	e7e3      	b.n	0xf26
     f5e:	4b0d      	ldr	r3, [pc, #52]	@ (0xf94)
     f60:	62b3      	str	r3, [r6, #40]	@ 0x28
     f62:	89a3      	ldrh	r3, [r4, #12]
     f64:	6020      	str	r0, [r4, #0]
     f66:	f043 0380 	orr.w	r3, r3, #128	@ 0x80
     f6a:	81a3      	strh	r3, [r4, #12]
     f6c:	9b00      	ldr	r3, [sp, #0]
     f6e:	6163      	str	r3, [r4, #20]
     f70:	9b01      	ldr	r3, [sp, #4]
     f72:	6120      	str	r0, [r4, #16]
     f74:	b15b      	cbz	r3, 0xf8e
     f76:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
     f7a:	4630      	mov	r0, r6
     f7c:	f000 f83d 	bl	0xffa
     f80:	b128      	cbz	r0, 0xf8e
     f82:	89a3      	ldrh	r3, [r4, #12]
     f84:	f023 0303 	bic.w	r3, r3, #3
     f88:	f043 0301 	orr.w	r3, r3, #1
     f8c:	81a3      	strh	r3, [r4, #12]
     f8e:	89a0      	ldrh	r0, [r4, #12]
     f90:	4305      	orrs	r5, r0
     f92:	81a5      	strh	r5, [r4, #12]
     f94:	e7cd      	b.n	0xf32
     f96:	32bd      	adds	r2, #189	@ 0xbd
     f98:	0003      	movs	r3, r0
     f9a:	4801      	ldr	r0, [pc, #4]	@ (0xfa0)
     f9c:	f7ff ba2b 	b.w	0x3f6
     fa0:	bf00      	nop
     fa2:	e534      	b.n	0xa0e
     fa4:	2000      	movs	r0, #0
     fa6:	4801      	ldr	r0, [pc, #4]	@ (0xfac)
     fa8:	f7ff ba26 	b.w	0x3f8
     fac:	bf00      	nop
     fae:	e534      	b.n	0xa1a
     fb0:	2000      	movs	r0, #0
     fb2:	b538      	push	{r3, r4, r5, lr}
     fb4:	4d07      	ldr	r5, [pc, #28]	@ (0xfd4)
     fb6:	4604      	mov	r4, r0
     fb8:	4608      	mov	r0, r1
     fba:	4611      	mov	r1, r2
     fbc:	2200      	movs	r2, #0
     fbe:	602a      	str	r2, [r5, #0]
     fc0:	461a      	mov	r2, r3
     fc2:	f000 f84a 	bl	0x105a
     fc6:	1c43      	adds	r3, r0, #1
     fc8:	d102      	bne.n	0xfd0
     fca:	682b      	ldr	r3, [r5, #0]
     fcc:	b103      	cbz	r3, 0xfd0
     fce:	6023      	str	r3, [r4, #0]
     fd0:	bd38      	pop	{r3, r4, r5, pc}
     fd2:	e53c      	b.n	0xa4e
     fd4:	2000      	movs	r0, #0
     fd6:	b538      	push	{r3, r4, r5, lr}
     fd8:	4d07      	ldr	r5, [pc, #28]	@ (0xff8)
     fda:	2300      	movs	r3, #0
     fdc:	4604      	mov	r4, r0
     fde:	4608      	mov	r0, r1
     fe0:	4611      	mov	r1, r2
     fe2:	602b      	str	r3, [r5, #0]
     fe4:	f000 f821 	bl	0x102a
     fe8:	1c43      	adds	r3, r0, #1
     fea:	d102      	bne.n	0xff2
     fec:	682b      	ldr	r3, [r5, #0]
     fee:	b103      	cbz	r3, 0xff2
     ff0:	6023      	str	r3, [r4, #0]
     ff2:	bd38      	pop	{r3, r4, r5, pc}
     ff4:	bf00      	nop
     ff6:	e53c      	b.n	0xa72
     ff8:	2000      	movs	r0, #0
     ffa:	b538      	push	{r3, r4, r5, lr}
     ffc:	4d06      	ldr	r5, [pc, #24]	@ (0x1018)
     ffe:	2300      	movs	r3, #0
    1000:	4604      	mov	r4, r0
    1002:	4608      	mov	r0, r1
    1004:	602b      	str	r3, [r5, #0]
    1006:	f000 f818 	bl	0x103a
    100a:	1c43      	adds	r3, r0, #1
    100c:	d102      	bne.n	0x1014
    100e:	682b      	ldr	r3, [r5, #0]
    1010:	b103      	cbz	r3, 0x1014
    1012:	6023      	str	r3, [r4, #0]
    1014:	bd38      	pop	{r3, r4, r5, pc}
    1016:	e53c      	b.n	0xa92
    1018:	2000      	movs	r0, #0
    101a:	4b02      	ldr	r3, [pc, #8]	@ (0x1024)
    101c:	2258      	movs	r2, #88	@ 0x58
    101e:	601a      	str	r2, [r3, #0]
    1020:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
    1024:	4770      	bx	lr
    1026:	e53c      	b.n	0xaa2
    1028:	2000      	movs	r0, #0
    102a:	4b02      	ldr	r3, [pc, #8]	@ (0x1034)
    102c:	2258      	movs	r2, #88	@ 0x58
    102e:	601a      	str	r2, [r3, #0]
    1030:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
    1034:	4770      	bx	lr
    1036:	e53c      	b.n	0xab2
    1038:	2000      	movs	r0, #0
    103a:	4b02      	ldr	r3, [pc, #8]	@ (0x1044)
    103c:	2258      	movs	r2, #88	@ 0x58
    103e:	601a      	str	r2, [r3, #0]
    1040:	2000      	movs	r0, #0
    1042:	4770      	bx	lr
    1044:	bf00      	nop
    1046:	e53c      	b.n	0xac2
    1048:	2000      	movs	r0, #0
    104a:	4b02      	ldr	r3, [pc, #8]	@ (0x1054)
    104c:	2258      	movs	r2, #88	@ 0x58
    104e:	601a      	str	r2, [r3, #0]
    1050:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
    1054:	4770      	bx	lr
    1056:	e53c      	b.n	0xad2
    1058:	2000      	movs	r0, #0
    105a:	4b02      	ldr	r3, [pc, #8]	@ (0x1064)
    105c:	2258      	movs	r2, #88	@ 0x58
    105e:	601a      	str	r2, [r3, #0]
    1060:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
    1064:	4770      	bx	lr
    1066:	e53c      	b.n	0xae2
    1068:	2000      	movs	r0, #0
    106a:	4a04      	ldr	r2, [pc, #16]	@ (0x107c)
    106c:	4905      	ldr	r1, [pc, #20]	@ (0x1084)
    106e:	6813      	ldr	r3, [r2, #0]
    1070:	2b00      	cmp	r3, #0
    1072:	bf08      	it	eq
    1074:	460b      	moveq	r3, r1
    1076:	4418      	add	r0, r3
    1078:	6010      	str	r0, [r2, #0]
    107a:	4618      	mov	r0, r3
    107c:	4770      	bx	lr
    107e:	e52c      	b.n	0xada
    1080:	2000      	movs	r0, #0
    1082:	e540      	b.n	0xb06
    1084:	2000      	movs	r0, #0
    1086:	4b02      	ldr	r3, [pc, #8]	@ (0x1090)
    1088:	2258      	movs	r2, #88	@ 0x58
    108a:	601a      	str	r2, [r3, #0]
    108c:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
    1090:	4770      	bx	lr
    1092:	e53c      	b.n	0xb0e
    1094:	2000      	movs	r0, #0
    1096:	0000      	movs	r0, r0
    1098:	0000      	movs	r0, r0
    109a:	4541      	cmp	r1, r8
    109c:	2d53      	cmp	r5, #83	@ 0x53
    109e:	3231      	adds	r2, #49	@ 0x31
    10a0:	2d38      	cmp	r5, #56	@ 0x38
    10a2:	4345      	muls	r5, r0
    10a4:	0042      	lsls	r2, r0, #1
    10a6:	4541      	cmp	r1, r8
    10a8:	2d53      	cmp	r5, #83	@ 0x53
    10aa:	3931      	subs	r1, #49	@ 0x31
    10ac:	2d32      	cmp	r5, #50	@ 0x32
    10ae:	4345      	muls	r5, r0
    10b0:	0042      	lsls	r2, r0, #1
    10b2:	4541      	cmp	r1, r8
    10b4:	2d53      	cmp	r5, #83	@ 0x53
    10b6:	3532      	adds	r5, #50	@ 0x32
    10b8:	2d36      	cmp	r5, #54	@ 0x36
    10ba:	4345      	muls	r5, r0
    10bc:	0042      	lsls	r2, r0, #1
    10be:	4541      	cmp	r1, r8
    10c0:	2d53      	cmp	r5, #83	@ 0x53
    10c2:	3231      	adds	r2, #49	@ 0x31
    10c4:	2d38      	cmp	r5, #56	@ 0x38
    10c6:	4243      	negs	r3, r0
    10c8:	0043      	lsls	r3, r0, #1
    10ca:	4541      	cmp	r1, r8
    10cc:	2d53      	cmp	r5, #83	@ 0x53
    10ce:	3931      	subs	r1, #49	@ 0x31
    10d0:	2d32      	cmp	r5, #50	@ 0x32
