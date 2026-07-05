
/home/Populus/Projects/fingerprint/extracted_firmware/fw_mod_05_flash_access_2201.bin:     file format binary


Disassembly of section .data:

00000000 <.data>:
   0:	57f7      	ldrsb	r7, [r6, r7]
   2:	38f8      	subs	r0, #248	@ 0xf8
   4:	4361      	muls	r1, r4
   6:	1b4b      	subs	r3, r1, r5
   8:	b36e      	cbz	r6, 0x66
   a:	fff1 0b3f 			@ <UNDEFINED> instruction: 0xfff10b3f
   e:	3bd0      	subs	r3, #208	@ 0xd0
  10:	1a69      	subs	r1, r5, r1
  12:	4069      	eors	r1, r5
  14:	1b4b      	subs	r3, r1, r5
  16:	9a6e      	ldr	r2, [sp, #440]	@ 0x1b8
  18:	0542      	lsls	r2, r0, #21
  1a:	45dd      	cmp	sp, fp
  1c:	0648      	lsls	r0, r1, #25
  1e:	c6f0      	stmia	r6!, {r4, r5, r6, r7}
  20:	02fd      	lsls	r5, r7, #11
  22:	7b23      	ldrb	r3, [r4, #12]
  24:	2161      	movs	r1, #97	@ 0x61
  26:	3be1      	subs	r3, #225	@ 0xe1
  28:	db4b      	blt.n	0xc2
  2a:	b36d      	cbz	r5, 0x88
  2c:	fff1 0b3f 			@ <UNDEFINED> instruction: 0xfff10b3f
  30:	3bd0      	subs	r3, #208	@ 0xd0
  32:	9a69      	ldr	r2, [sp, #420]	@ 0x1a4
  34:	3769      	adds	r7, #105	@ 0x69
  36:	db4b      	blt.n	0xd0
  38:	9a6d      	ldr	r2, [sp, #436]	@ 0x1b4
  3a:	0542      	lsls	r2, r0, #21
  3c:	3cda      	subs	r4, #218	@ 0xda
  3e:	0648      	lsls	r0, r1, #25
  40:	b5f0      	push	{r4, r5, r6, r7, lr}
  42:	02fd      	lsls	r5, r7, #11
  44:	7b23      	ldrb	r3, [r4, #12]
  46:	1061      	asrs	r1, r4, #1
  48:	32e1      	adds	r2, #225	@ 0xe1
  4a:	1b4b      	subs	r3, r1, r5
  4c:	b36e      	cbz	r6, 0xaa
  4e:	fff1 053f 	vsli.32	d16, d31, #17
  52:	30d0      	adds	r0, #208	@ 0xd0
  54:	1a4b      	subs	r3, r1, r1
  56:	3b6e      	subs	r3, #110	@ 0x6e
  58:	9b69      	ldr	r3, [sp, #420]	@ 0x1a4
  5a:	9a69      	ldr	r2, [sp, #420]	@ 0x1a4
  5c:	0342      	lsls	r2, r0, #13
  5e:	3bdd      	subs	r3, #221	@ 0xdd
  60:	9b69      	ldr	r3, [sp, #420]	@ 0x1a4
  62:	2c69      	cmp	r4, #105	@ 0x69
  64:	134a      	asrs	r2, r1, #13
  66:	2b66      	cmp	r3, #102	@ 0x66
  68:	da4b      	bge.n	0x102
  6a:	3b6d      	subs	r3, #109	@ 0x6d
  6c:	1b69      	subs	r1, r5, r5
  6e:	9a69      	ldr	r2, [sp, #420]	@ 0x1a4
  70:	0f42      	lsrs	r2, r0, #29
  72:	3bda      	subs	r3, #218	@ 0xda
  74:	1b69      	subs	r1, r5, r5
  76:	2769      	movs	r7, #105	@ 0x69
  78:	d34a      	bcc.n	0x110
  7a:	2665      	movs	r6, #101	@ 0x65
  7c:	d34b      	bcc.n	0x116
  7e:	90f8      	str	r0, [sp, #992]	@ 0x3e0
  80:	0130      	lsls	r0, r6, #4
  82:	062b      	lsls	r3, r5, #24
  84:	23d1      	movs	r3, #209	@ 0xd1
  86:	db4b      	blt.n	0x120
  88:	016d      	lsls	r5, r5, #5
  8a:	022b      	lsls	r3, r5, #8
  8c:	21dc      	movs	r1, #220	@ 0xdc
  8e:	024b      	lsls	r3, r1, #9
  90:	da22      	bge.n	0xd8
  92:	3b65      	subs	r3, #101	@ 0x65
  94:	1b69      	subs	r1, r5, r5
  96:	2a7a      	cmp	r2, #122	@ 0x7a
  98:	0c2b      	lsrs	r3, r5, #16
  9a:	1ed1      	subs	r1, r2, #3
  9c:	5b4b      	ldrh	r3, [r1, r5]
  9e:	016e      	lsls	r6, r5, #5
  a0:	052b      	lsls	r3, r5, #20
  a2:	24d1      	movs	r4, #209	@ 0xd1
  a4:	0648      	lsls	r0, r1, #25
  a6:	82f0      	strh	r0, [r6, #22]
  a8:	02fd      	lsls	r5, r7, #11
  aa:	7b23      	ldrb	r3, [r4, #12]
  ac:	dd61      	ble.n	0x172
  ae:	19e0      	adds	r0, r4, r7
  b0:	004b      	lsls	r3, r1, #1
  b2:	5a22      	ldrh	r2, [r4, r0]
  b4:	2066      	movs	r0, #102	@ 0x66
  b6:	1b4b      	subs	r3, r1, r5
  b8:	0078      	lsls	r0, r7, #1
  ba:	002b      	movs	r3, r5
  bc:	d5f0      	bpl.n	0xa0
  be:	1f80      	subs	r0, r0, #6
  c0:	0648      	lsls	r0, r1, #25
  c2:	00f0      	lsls	r0, r6, #3
  c4:	1efd      	subs	r5, r7, #3
  c6:	1b4b      	subs	r3, r1, r5
  c8:	9b68      	ldr	r3, [sp, #416]	@ 0x1a0
  ca:	1868      	adds	r0, r5, r1
  cc:	0646      	lsls	r6, r0, #25
  ce:	1ef0      	subs	r0, r6, #3
  d0:	1cf8      	adds	r0, r7, #3
  d2:	0648      	lsls	r0, r1, #25
  d4:	6bf0      	ldr	r0, [r6, #60]	@ 0x3c
  d6:	1cfd      	adds	r5, r7, #3
  d8:	0648      	lsls	r0, r1, #25
  da:	f4f0 18fc 			@ <UNDEFINED> instruction: 0xf4f018fc
  de:	1b4b      	subs	r3, r1, r5
  e0:	9b68      	ldr	r3, [sp, #416]	@ 0x1a0
  e2:	1868      	adds	r0, r5, r1
  e4:	0646      	lsls	r6, r0, #25
  e6:	12f0      	asrs	r0, r6, #11
  e8:	0af8      	lsrs	r0, r7, #11
  ea:	d34b      	bcc.n	0x184
  ec:	90f8      	str	r0, [sp, #992]	@ 0x3e0
  ee:	0020      	movs	r0, r4
  f0:	0023      	movs	r3, r4
  f2:	0721      	lsls	r1, r4, #28
  f4:	0348      	lsls	r0, r1, #13
  f6:	58f0      	ldr	r0, [r6, r3]
  f8:	78f9      	ldrb	r1, [r7, #3]
  fa:	7b61      	ldrb	r1, [r4, #13]
  fc:	0069      	lsls	r1, r5, #1
  fe:	272b      	movs	r7, #43	@ 0x2b
 100:	7bd0      	ldrb	r0, [r2, #15]
 102:	5b69      	ldrh	r1, [r5, r5]
 104:	1942      	adds	r2, r0, r5
 106:	1146      	asrs	r6, r0, #5
 108:	0648      	lsls	r0, r1, #25
 10a:	dcf0      	bgt.n	0xee
 10c:	adfc      	add	r5, sp, #1008	@ 0x3f0
 10e:	00e0      	lsls	r0, r4, #3
 110:	38bf      	subs	r0, #191	@ 0xbf
 112:	0024      	movs	r4, r4
 114:	cc20      	ldmia	r4!, {r5}
 116:	0150      	lsls	r0, r2, #5
 118:	dc20      	bgt.n	0x15c
 11a:	0347      	lsls	r7, r0, #13
 11c:	e808 0347 			@ <UNDEFINED> instruction: 0xe8080347
 120:	f008 0347 	and.w	r3, r8, #71	@ 0x47
 124:	f408 0347 	and.w	r3, r8, #13041664	@ 0xc70000
 128:	f808 0347 	strb.w	r0, [r8, <undefined>]
 12c:	0008      	movs	r0, r1
 12e:	0348      	lsls	r0, r1, #13
 130:	1008      	asrs	r0, r1, #32
 132:	0348      	lsls	r0, r1, #13
 134:	4c08      	ldr	r4, [pc, #32]	@ (0x158)
 136:	0348      	lsls	r0, r1, #13
 138:	c808      	ldmia	r0!, {r3}
 13a:	0150      	lsls	r0, r2, #5
 13c:	7820      	ldrb	r0, [r4, #0]
 13e:	0348      	lsls	r0, r1, #13
 140:	1408      	asrs	r0, r1, #16
 142:	0001      	movs	r1, r0
 144:	a420      	add	r4, pc, #128	@ (adr r4, 0x1c8)
 146:	0348      	lsls	r0, r1, #13
 148:	a808      	add	r0, sp, #32
 14a:	0348      	lsls	r0, r1, #13
 14c:	d008      	beq.n	0x160
 14e:	0348      	lsls	r0, r1, #13
 150:	4a08      	ldr	r2, [pc, #32]	@ (0x174)
 152:	9b4b      	ldr	r3, [sp, #300]	@ 0x12c
 154:	b36e      	cbz	r6, 0x1b2
 156:	fff1 053f 	vsli.32	d16, d31, #17
 15a:	48d0      	ldr	r0, [pc, #832]	@ (0x49c)
 15c:	9b4b      	ldr	r3, [sp, #300]	@ 0x12c
 15e:	196e      	adds	r6, r5, r5
 160:	4746      	bx	r8
 162:	0248      	lsls	r0, r1, #9
 164:	61f0      	str	r0, [r6, #28]
 166:	00fd      	lsls	r5, r7, #3
 168:	4622      	mov	r2, r4
 16a:	4549      	cmp	r1, r9
 16c:	0248      	lsls	r0, r1, #9
 16e:	72f0      	strb	r0, [r6, #11]
 170:	45fd      	cmp	sp, pc
 172:	1b4b      	subs	r3, r1, r5
 174:	9b68      	ldr	r3, [sp, #416]	@ 0x1a0
 176:	1a68      	subs	r0, r5, r1
 178:	4446      	add	r6, r8
 17a:	4149      	adcs	r1, r1
 17c:	0248      	lsls	r0, r1, #9
 17e:	7cf0      	ldrb	r0, [r6, #19]
 180:	3efd      	subs	r6, #253	@ 0xfd
 182:	5b4b      	ldrh	r3, [r1, r5]
 184:	1969      	adds	r1, r5, r5
 186:	3e46      	subs	r6, #70	@ 0x46
 188:	0248      	lsls	r0, r1, #9
 18a:	a1f0      	add	r1, pc, #960	@ (adr r1, 0x54c)
 18c:	3bfd      	subs	r3, #253	@ 0xfd
 18e:	1b4b      	subs	r3, r1, r5
 190:	006c      	lsls	r4, r5, #1
 192:	032b      	lsls	r3, r5, #12
 194:	3ed0      	subs	r6, #208	@ 0xd0
 196:	3a49      	subs	r2, #73	@ 0x49
 198:	0248      	lsls	r0, r1, #9
 19a:	a7f0      	add	r7, pc, #960	@ (adr r7, 0x55c)
 19c:	37fd      	adds	r7, #253	@ 0xfd
 19e:	db4b      	blt.n	0x238
 1a0:	136c      	asrs	r4, r5, #13
 1a2:	02f1      	lsls	r1, r6, #11
 1a4:	050f      	lsls	r7, r1, #20
 1a6:	35d0      	adds	r5, #208	@ 0xd0
 1a8:	db4b      	blt.n	0x242
 1aa:	196c      	adds	r4, r5, r5
 1ac:	3446      	adds	r4, #70	@ 0x46
 1ae:	0248      	lsls	r0, r1, #9
 1b0:	6bf0      	ldr	r0, [r6, #60]	@ 0x3c
 1b2:	38fe      	subs	r0, #254	@ 0xfe
 1b4:	1b4b      	subs	r3, r1, r5
 1b6:	1d78      	adds	r0, r7, #5
 1b8:	3046      	adds	r0, #70	@ 0x46
 1ba:	9c4b      	ldr	r4, [sp, #300]	@ 0x12c
 1bc:	2f6b      	cmp	r7, #107	@ 0x6b
 1be:	9b4b      	ldr	r3, [sp, #300]	@ 0x12c
 1c0:	186b      	adds	r3, r5, r1
 1c2:	f246 dff7 	bl	0xa471b4
 1c6:	03fe      	lsls	r6, r7, #15
 1c8:	0046      	lsls	r6, r0, #1
 1ca:	2393      	movs	r3, #147	@ 0x93
 1cc:	2a46      	cmp	r2, #70	@ 0x46
 1ce:	3246      	adds	r2, #70	@ 0x46
 1d0:	2b49      	cmp	r3, #73	@ 0x49
 1d2:	0248      	lsls	r0, r1, #9
 1d4:	a1f0      	add	r1, pc, #960	@ (adr r1, 0x598)
 1d6:	78fd      	ldrb	r5, [r7, #3]
 1d8:	7b61      	ldrb	r1, [r4, #13]
 1da:	0069      	lsls	r1, r5, #1
 1dc:	042b      	lsls	r3, r5, #16
 1de:	79d0      	ldrb	r0, [r2, #7]
 1e0:	2e69      	cmp	r6, #105	@ 0x69
 1e2:	0648      	lsls	r0, r1, #25
 1e4:	6ff0      	ldr	r0, [r6, #124]	@ 0x7c
 1e6:	40fc      	lsrs	r4, r7
 1e8:	24e0      	movs	r4, #224	@ 0xe0
 1ea:	db4b      	blt.n	0x284
 1ec:	b36d      	cbz	r5, 0x24a
 1ee:	fff1 063f 	vqshlu.s32	d16, d31, #17
 1f2:	22d0      	movs	r2, #208	@ 0xd0
 1f4:	db4b      	blt.n	0x28e
 1f6:	1a6d      	subs	r5, r5, r1
 1f8:	0346      	lsls	r6, r0, #13
 1fa:	2121      	movs	r1, #33	@ 0x21
 1fc:	0248      	lsls	r0, r1, #9
 1fe:	2ef0      	cmp	r6, #240	@ 0xf0
 200:	1efe      	subs	r6, r7, #3
 202:	1b4b      	subs	r3, r1, r5
 204:	b36e      	cbz	r6, 0x262
 206:	fff1 063f 	vqshlu.s32	d16, d31, #17
 20a:	1cd0      	adds	r0, r2, #3
 20c:	1b4b      	subs	r3, r1, r5
 20e:	1a6e      	subs	r6, r5, r1
 210:	0346      	lsls	r6, r0, #13
 212:	1b21      	subs	r1, r4, r4
 214:	0248      	lsls	r0, r1, #9
 216:	0cf0      	lsrs	r0, r6, #19
 218:	19fe      	adds	r6, r7, r7
 21a:	f849 0268 	str.w	r0, [r9, <undefined>]
 21e:	5ef0      	ldrsh	r0, [r6, r3]
 220:	78fc      	ldrb	r4, [r7, #3]
 222:	7b61      	ldrb	r1, [r4, #13]
 224:	0069      	lsls	r1, r5, #1
 226:	062b      	lsls	r3, r5, #24
 228:	7bd0      	ldrb	r0, [r2, #15]
 22a:	5b69      	ldrh	r1, [r5, r5]
 22c:	1942      	adds	r2, r0, r5
 22e:	1c46      	adds	r6, r0, #1
 230:	0648      	lsls	r0, r1, #25
 232:	48f0      	ldr	r0, [pc, #960]	@ (0x5f4)
 234:	19fc      	adds	r4, r7, r7
 236:	1be0      	subs	r0, r4, r7
 238:	bb4a      	cbnz	r2, 0x28e
 23a:	536a      	strh	r2, [r5, r5]
 23c:	1960      	adds	r0, r4, r5
 23e:	7b4a      	ldrb	r2, [r1, #13]
 240:	1368      	asrs	r0, r5, #13
 242:	1860      	adds	r0, r4, r1
 244:	3b4a      	subs	r3, #74	@ 0x4a
 246:	d368      	bcc.n	0x31a
 248:	1660      	asrs	r0, r4, #25
 24a:	bb4a      	cbnz	r2, 0x2a0
 24c:	9368      	str	r3, [sp, #416]	@ 0x1a0
 24e:	0060      	lsls	r0, r4, #1
 250:	0023      	movs	r3, r4
 252:	1593      	asrs	r3, r2, #22
 254:	154b      	asrs	r3, r1, #21
 256:	134a      	asrs	r2, r1, #13
 258:	f849 0268 	str.w	r0, [r9, <undefined>]
 25c:	1ff0      	subs	r0, r6, #7
 25e:	14fd      	asrs	r5, r7, #19
 260:	0648      	lsls	r0, r1, #25
 262:	a4f0      	add	r4, pc, #960	@ (adr r4, 0x624)
 264:	7bfc      	ldrb	r4, [r7, #15]
 266:	0469      	lsls	r1, r5, #17
 268:	00e0      	lsls	r0, r4, #3
 26a:	f8bf 0068 	ldrh.w	r0, [pc, #104]	@ 0x2d4
 26e:	22f0      	movs	r2, #240	@ 0xf0
 270:	7bf8      	ldrb	r0, [r7, #15]
 272:	1869      	adds	r1, r5, r1
 274:	1846      	adds	r6, r0, r1
 276:	bd37      	pop	{r0, r1, r2, r4, r5, pc}
 278:	b046      	add	sp, #280	@ 0x118
 27a:	00bd      	lsls	r5, r7, #2
 27c:	ccbf      	ldmia	r4, {r0, r1, r2, r3, r4, r5, r7}
 27e:	0150      	lsls	r0, r2, #5
 280:	3820      	subs	r0, #32
 282:	0024      	movs	r4, r4
 284:	df20      	svc	32
 286:	0238      	lsls	r0, r7, #8
 288:	1408      	asrs	r0, r1, #16
 28a:	0001      	movs	r1, r0
 28c:	6520      	str	r0, [r4, #80]	@ 0x50
 28e:	02d0      	lsls	r0, r2, #11
 290:	0c08      	lsrs	r0, r1, #16
 292:	0151      	lsls	r1, r2, #5
 294:	c820      	ldmia	r0!, {r5}
 296:	0150      	lsls	r0, r2, #5
 298:	9420      	str	r4, [sp, #128]	@ 0x80
 29a:	0150      	lsls	r0, r2, #5
 29c:	0c20      	lsrs	r0, r4, #16
 29e:	0349      	lsls	r1, r1, #13
 2a0:	3c08      	subs	r4, #8
 2a2:	0349      	lsls	r1, r1, #13
 2a4:	2808      	cmp	r0, #8
 2a6:	0024      	movs	r4, r4
 2a8:	c920      	ldmia	r1!, {r5}
 2aa:	02d0      	lsls	r0, r2, #11
 2ac:	ed08 02d0 	stc	2, cr0, [r8, #-832]	@ 0xfffffcc0
 2b0:	a408      	add	r4, pc, #32	@ (adr r4, 0x2d4)
 2b2:	0348      	lsls	r0, r1, #13
 2b4:	8008      	strh	r0, [r1, #0]
 2b6:	84b5      	strh	r5, [r6, #36]	@ 0x24
 2b8:	00b0      	lsls	r0, r6, #2
 2ba:	78af      	ldrb	r7, [r5, #2]
 2bc:	0060      	lsls	r0, r4, #1
 2be:	fb23 7860 			@ <UNDEFINED> instruction: 0xfb237860
 2c2:	0268      	lsls	r0, r5, #9
 2c4:	f5f0 06ff 			@ <UNDEFINED> instruction: 0xf5f006ff
 2c8:	0348      	lsls	r0, r1, #13
 2ca:	d4f0      	bmi.n	0x2ae
 2cc:	fbf8 0068 			@ <UNDEFINED> instruction: 0xfbf80068
 2d0:	012b      	lsls	r3, r5, #4
 2d2:	01da      	lsls	r2, r3, #7
 2d4:	fb23 fb60 			@ <UNDEFINED> instruction: 0xfb23fb60
 2d8:	1868      	adds	r0, r5, r1
 2da:	1046      	asrs	r6, r0, #1
 2dc:	bd37      	pop	{r0, r1, r2, r4, r5, pc}
 2de:	8046      	strh	r6, [r0, #2]
 2e0:	38bd      	subs	r0, #189	@ 0xbd
 2e2:	0024      	movs	r4, r4
 2e4:	8020      	strh	r0, [r4, #0]
 2e6:	85b4      	strh	r4, [r6, #44]	@ 0x2c
 2e8:	00b0      	lsls	r0, r6, #2
 2ea:	78af      	ldrb	r7, [r5, #2]
 2ec:	3960      	subs	r1, #96	@ 0x60
 2ee:	7b60      	ldrb	r0, [r4, #13]
 2f0:	fb68 0460 			@ <UNDEFINED> instruction: 0xfb680460
 2f4:	fbe0 5a68 	umaal	r5, sl, r0, r8
 2f8:	fa1c 0060 			@ <UNDEFINED> instruction: 0xfa1c0060
 2fc:	1a22      	subs	r2, r4, r0
 2fe:	3b70      	subs	r3, #112	@ 0x70
 300:	5a68      	ldrh	r0, [r5, r1]
 302:	3a1e      	subs	r2, #30
 304:	0060      	lsls	r0, r4, #1
 306:	f52b 00d1 			@ <UNDEFINED> instruction: 0xf52b00d1
 30a:	14bf      	asrs	r7, r7, #18
 30c:	bd37      	pop	{r0, r1, r2, r4, r5, pc}
 30e:	5d46      	ldrb	r6, [r0, r5]
 310:	04f8      	lsls	r0, r7, #19
 312:	707b      	strb	r3, [r7, #1]
 314:	8047      	strh	r7, [r0, #2]
 316:	83b4      	strh	r4, [r6, #28]
 318:	00b0      	lsls	r0, r6, #2
 31a:	78af      	ldrb	r7, [r5, #2]
 31c:	7b60      	ldrb	r0, [r4, #13]
 31e:	1b68      	subs	r0, r5, r5
 320:	0068      	lsls	r0, r5, #1
 322:	012b      	lsls	r3, r5, #4
 324:	00d1      	lsls	r1, r2, #3
 326:	0223      	lsls	r3, r4, #8
 328:	7be0      	ldrb	r0, [r4, #15]
 32a:	1b68      	subs	r0, r5, r5
 32c:	5b68      	ldrh	r0, [r5, r5]
 32e:	1878      	adds	r0, r7, r1
 330:	0c46      	lsrs	r6, r0, #17
 332:	bd37      	pop	{r0, r1, r2, r4, r5, pc}
 334:	5d46      	ldrb	r6, [r0, r5]
 336:	04f8      	lsls	r0, r7, #19
 338:	707b      	strb	r3, [r7, #1]
 33a:	8047      	strh	r7, [r0, #2]
 33c:	83b4      	strh	r4, [r6, #28]
 33e:	00b0      	lsls	r0, r6, #2
 340:	78af      	ldrb	r7, [r5, #2]
 342:	0560      	lsls	r0, r4, #21
 344:	1823      	adds	r3, r4, r0
 346:	0c46      	lsrs	r6, r0, #17
 348:	bd37      	pop	{r0, r1, r2, r4, r5, pc}
 34a:	5d46      	ldrb	r6, [r0, r5]
 34c:	04f8      	lsls	r0, r7, #19
 34e:	707b      	strb	r3, [r7, #1]
 350:	8047      	strh	r7, [r0, #2]
 352:	83b4      	strh	r4, [r6, #28]
 354:	00b0      	lsls	r0, r6, #2
 356:	78af      	ldrb	r7, [r5, #2]
 358:	0460      	lsls	r0, r4, #17
 35a:	1823      	adds	r3, r4, r0
 35c:	0c46      	lsrs	r6, r0, #17
 35e:	bd37      	pop	{r0, r1, r2, r4, r5, pc}
 360:	5d46      	ldrb	r6, [r0, r5]
 362:	04f8      	lsls	r0, r7, #19
 364:	707b      	strb	r3, [r7, #1]
 366:	8047      	strh	r7, [r0, #2]
 368:	89b4      	ldrh	r4, [r6, #12]
 36a:	00b0      	lsls	r0, r6, #2
 36c:	f8af b960 	strh.w	fp, [pc, #2400]	@ 0xcd0
 370:	7a60      	ldrb	r0, [r4, #9]
 372:	fb60 bb68 			@ <UNDEFINED> instruction: 0xfb60bb68
 376:	bb61      	cbnz	r1, 0x3d2
 378:	7b68      	ldrb	r0, [r5, #13]
 37a:	0061      	lsls	r1, r4, #1
 37c:	7b23      	ldrb	r3, [r4, #12]
 37e:	0074      	lsls	r4, r6, #1
 380:	fb23 1561 			@ <UNDEFINED> instruction: 0xfb231561
 384:	bae0      	revsh	r0, r4
 386:	fb69 1369 			@ <UNDEFINED> instruction: 0xfb691369
 38a:	1b44      	subs	r4, r0, r5
 38c:	fb78 7a74 			@ <UNDEFINED> instruction: 0xfb787a74
 390:	fb69 1369 			@ <UNDEFINED> instruction: 0xfb691369
 394:	1b44      	subs	r4, r0, r5
 396:	bb78      	cbnz	r0, 0x3f8
 398:	fa74 bb7c 			@ <UNDEFINED> instruction: 0xfa74bb7c
 39c:	537c      	strh	r4, [r7, r5]
 39e:	da40      	bge.n	0x422
 3a0:	7bb2      	ldrb	r2, [r6, #14]
 3a2:	db7c      	blt.n	0x49e
 3a4:	13b2      	asrs	r2, r6, #14
 3a6:	db43      	blt.n	0x430
 3a8:	7bb2      	ldrb	r2, [r6, #14]
 3aa:	fb74 0169 			@ <UNDEFINED> instruction: 0xfb740169
 3ae:	fb33 fa61 			@ <UNDEFINED> instruction: 0xfb33fa61
 3b2:	7b69      	ldrb	r1, [r5, #13]
 3b4:	9a68      	ldr	r2, [sp, #416]	@ 0x1a0
 3b6:	e542      	b.n	0xfffffe3e
 3b8:	7bd3      	ldrb	r3, [r2, #15]
 3ba:	db7c      	blt.n	0x4b6
 3bc:	18b2      	adds	r2, r6, r2
 3be:	2446      	movs	r4, #70	@ 0x46
 3c0:	bd37      	pop	{r0, r1, r2, r4, r5, pc}
 3c2:	5d46      	ldrb	r6, [r0, r5]
 3c4:	04f8      	lsls	r0, r7, #19
 3c6:	707b      	strb	r3, [r7, #1]
 3c8:	8047      	strh	r7, [r0, #2]
 3ca:	83b4      	strh	r4, [r6, #28]
 3cc:	00b0      	lsls	r0, r6, #2
 3ce:	78af      	ldrb	r7, [r5, #2]
 3d0:	0060      	lsls	r0, r4, #1
 3d2:	1823      	adds	r3, r4, r0
 3d4:	0c46      	lsrs	r6, r0, #17
 3d6:	bd37      	pop	{r0, r1, r2, r4, r5, pc}
 3d8:	5d46      	ldrb	r6, [r0, r5]
 3da:	04f8      	lsls	r0, r7, #19
 3dc:	707b      	strb	r3, [r7, #1]
 3de:	8047      	strh	r7, [r0, #2]
 3e0:	82b5      	strh	r5, [r6, #20]
 3e2:	00b0      	lsls	r0, r6, #2
 3e4:	78af      	ldrb	r7, [r5, #2]
 3e6:	3960      	subs	r1, #96	@ 0x60
 3e8:	7b60      	ldrb	r0, [r4, #13]
 3ea:	9b68      	ldr	r3, [sp, #416]	@ 0x1a0
 3ec:	006c      	lsls	r4, r5, #1
 3ee:	082b      	lsrs	r3, r5, #32
 3f0:	7bd0      	ldrb	r0, [r2, #15]
 3f2:	9b68      	ldr	r3, [sp, #416]	@ 0x1a0
 3f4:	7a6c      	ldrb	r4, [r5, #9]
 3f6:	5068      	str	r0, [r5, r1]
 3f8:	3a6c      	subs	r2, #108	@ 0x6c
 3fa:	9168      	str	r1, [sp, #416]	@ 0x1a0
 3fc:	3a08      	subs	r2, #8
 3fe:	9868      	ldr	r0, [sp, #416]	@ 0x1a0
 400:	0047      	lsls	r7, r0, #1
 402:	00e0      	lsls	r0, r4, #3
 404:	08bf      	lsrs	r7, r7, #2
 406:	bd37      	pop	{r0, r1, r2, r4, r5, pc}
 408:	8046      	strh	r6, [r0, #2]
 40a:	80bd      	strh	r5, [r7, #4]
 40c:	82b5      	strh	r5, [r6, #20]
 40e:	00b0      	lsls	r0, r6, #2
 410:	78af      	ldrb	r7, [r5, #2]
 412:	7b60      	ldrb	r0, [r4, #13]
 414:	db68      	blt.n	0x4e8
 416:	006c      	lsls	r4, r5, #1
 418:	012b      	lsls	r3, r5, #4
 41a:	00d1      	lsls	r1, r2, #3
 41c:	0c23      	lsrs	r3, r4, #16
 41e:	7be0      	ldrb	r0, [r4, #15]
 420:	db68      	blt.n	0x4f4
 422:	7a6c      	ldrb	r4, [r5, #9]
 424:	5268      	strh	r0, [r5, r1]
 426:	106c      	asrs	r4, r5, #1
 428:	9846      	ldr	r0, [sp, #280]	@ 0x118
 42a:	0347      	lsls	r7, r0, #13
 42c:	0246      	lsls	r6, r0, #9
 42e:	022b      	lsls	r3, r5, #8
 430:	4fd1      	ldr	r7, [pc, #836]	@ (0x778)
 432:	fff0 0033 	vshr.u32	d16, d19, #16
 436:	00e0      	lsls	r0, r4, #3
 438:	1823      	adds	r3, r4, r0
 43a:	0846      	lsrs	r6, r0, #1
 43c:	bd37      	pop	{r0, r1, r2, r4, r5, pc}
 43e:	8046      	strh	r6, [r0, #2]
 440:	80bd      	strh	r5, [r7, #4]
 442:	b6b5      			@ <UNDEFINED> instruction: 0xb6b5
 444:	00b0      	lsls	r0, r6, #2
 446:	b9af      	cbnz	r7, 0x474
 448:	7a60      	ldrb	r0, [r4, #9]
 44a:	3b60      	subs	r3, #96	@ 0x60
 44c:	0360      	lsls	r0, r4, #13
 44e:	fb46 0773 			@ <UNDEFINED> instruction: 0xfb460773
 452:	10f1      	asrs	r1, r6, #3
 454:	1803      	adds	r3, r0, r0
 456:	fc46 17f7 	mcrr2	7, 15, r1, r6, cr7
 45a:	fbfe 187b 			@ <UNDEFINED> instruction: 0xfbfe187b
 45e:	fc46 f9f7 	mcrr2	9, 15, pc, r6, cr7	@ <UNPREDICTABLE>
 462:	c7fd      	stmia	r7!, {r0, r2, r3, r4, r5, r6, r7}
 464:	ccf8      	ldmia	r4, {r3, r4, r5, r6, r7}
 466:	d700      	bvc.n	0x46a
 468:	ccf8      	ldmia	r4, {r3, r4, r5, r6, r7}
 46a:	0030      	movs	r0, r6
 46c:	012b      	lsls	r3, r5, #4
 46e:	7bd1      	ldrb	r1, [r2, #15]
 470:	ef4b d7e0 	vabd.s8	<illegal reg q14.5>, <illegal reg q13.5>, q8
 474:	ccf8      	ldmia	r4, {r3, r4, r5, r6, r7}
 476:	fd00 69f7 	stc2	9, cr6, [r0, #-494]	@ 0xfffffe12	@ <UNPREDICTABLE>
 47a:	03f8      	lsls	r0, r7, #15
 47c:	c746      	stmia	r7!, {r1, r2, r6}
 47e:	c8f8      	ldmia	r0!, {r3, r4, r5, r6, r7}
 480:	3830      	subs	r0, #48	@ 0x30
 482:	f268 7ff7 			@ <UNDEFINED> instruction: 0xf2687ff7
 486:	02fd      	lsls	r5, r7, #11
 488:	d746      	bvc.n	0x518
 48a:	c8f8      	ldmia	r0!, {r3, r4, r5, r6, r7}
 48c:	1a30      	subs	r0, r6, r0
 48e:	d744      	bvc.n	0x51a
 490:	e4f8      	b.n	0xfffffe84
 492:	1330      	asrs	r0, r6, #12
 494:	8044      	strh	r4, [r0, #2]
 496:	012b      	lsls	r3, r5, #4
 498:	71d9      	strb	r1, [r3, #7]
 49a:	da4b      	bge.n	0x534
 49c:	38e0      	subs	r0, #224	@ 0xe0
 49e:	f268 71f7 			@ <UNDEFINED> instruction: 0xf26871f7
 4a2:	c7fd      	stmia	r7!, {r0, r2, r3, r4, r5, r6, r7}
 4a4:	c4f8      	stmia	r4!, {r3, r4, r5, r6, r7}
 4a6:	0700      	lsls	r0, r0, #28
 4a8:	3cf1      	subs	r4, #241	@ 0xf1
 4aa:	d702      	bvc.n	0x4b2
 4ac:	c8f8      	ldmia	r0!, {r3, r4, r5, r6, r7}
 4ae:	1330      	asrs	r0, r6, #12
 4b0:	d744      	bvc.n	0x53c
 4b2:	c4f8      	stmia	r4!, {r3, r4, r5, r6, r7}
 4b4:	3920      	subs	r1, #32
 4b6:	1868      	adds	r0, r5, r1
 4b8:	0546      	lsls	r6, r0, #21
 4ba:	59f0      	ldr	r0, [r6, r7]
 4bc:	d7ff      	bvc.n	0x4be
 4be:	c8f8      	ldmia	r0!, {r3, r4, r5, r6, r7}
 4c0:	d720      	bvc.n	0x504
 4c2:	c4f8      	stmia	r4!, {r3, r4, r5, r6, r7}
 4c4:	1330      	asrs	r0, r6, #12
 4c6:	0744      	lsls	r4, r0, #29
 4c8:	3cf1      	subs	r4, #241	@ 0xf1
 4ca:	1302      	asrs	r2, r0, #12
 4cc:	d744      	bvc.n	0x558
 4ce:	e4f8      	b.n	0xfffffec2
 4d0:	d720      	bvc.n	0x514
 4d2:	e0f8      	b.n	0x6c6
 4d4:	1810      	adds	r0, r2, r0
 4d6:	0546      	lsls	r6, r0, #21
 4d8:	4af0      	ldr	r2, [pc, #960]	@ (0x89c)
 4da:	d7ff      	bvc.n	0x4dc
 4dc:	c4f8      	stmia	r4!, {r3, r4, r5, r6, r7}
 4de:	d720      	bvc.n	0x522
 4e0:	e4f8      	b.n	0xfffffed4
 4e2:	1330      	asrs	r0, r6, #12
 4e4:	c744      	stmia	r7!, {r2, r6}
 4e6:	c4f8      	stmia	r4!, {r3, r4, r5, r6, r7}
 4e8:	0730      	lsls	r0, r6, #28
 4ea:	10f1      	asrs	r1, r6, #3
 4ec:	0103      	lsls	r3, r0, #4
 4ee:	d722      	bvc.n	0x536
 4f0:	ccf8      	ldmia	r4, {r3, r4, r5, r6, r7}
 4f2:	1810      	adds	r0, r2, r0
 4f4:	fc46 08f7 	mcrr2	8, 15, r0, r6, cr7
 4f8:	c7fe      	stmia	r7!, {r1, r2, r3, r4, r5, r6, r7}
 4fa:	c0f8      	stmia	r0!, {r3, r4, r5, r6, r7}
 4fc:	d700      	bvc.n	0x500
 4fe:	c0f8      	stmia	r0!, {r3, r4, r5, r6, r7}
 500:	0030      	movs	r0, r6
 502:	022b      	lsls	r3, r5, #8
 504:	d7d0      	bvc.n	0x4a8
 506:	c0f8      	stmia	r0!, {r3, r4, r5, r6, r7}
 508:	a330      	add	r3, pc, #192	@ (adr r3, 0x5cc)
 50a:	07e0      	lsls	r0, r4, #31
 50c:	10f1      	asrs	r1, r6, #3
 50e:	7a03      	ldrb	r3, [r0, #8]
 510:	b968      	cbnz	r0, 0x52e
 512:	1868      	adds	r0, r5, r1
 514:	fc46 90f7 	mcrr2	0, 15, r9, r6, cr7
 518:	07fe      	lsls	r6, r7, #31
 51a:	3cf1      	subs	r4, #241	@ 0xf1
 51c:	d702      	bvc.n	0x524
 51e:	c8f8      	ldmia	r0!, {r3, r4, r5, r6, r7}
 520:	d130      	bne.n	0x584
 522:	0718      	lsls	r0, r3, #28
 524:	10f1      	asrs	r1, r6, #3
 526:	d703      	bvc.n	0x530
 528:	c4f8      	stmia	r4!, {r3, r4, r5, r6, r7}
 52a:	1820      	adds	r0, r4, r0
 52c:	fc46 36f7 	mcrr2	6, 15, r3, r6, cr7
 530:	07ff      	lsls	r7, r7, #31
 532:	3cf1      	subs	r4, #241	@ 0xf1
 534:	0702      	lsls	r2, r0, #28
 536:	10f1      	asrs	r1, r6, #3
 538:	1103      	asrs	r3, r0, #4
 53a:	1846      	adds	r6, r0, r1
 53c:	fc46 50f7 	mcrr2	0, 15, r5, r6, cr7
 540:	00ff      	lsls	r7, r7, #3
 542:	c723      	stmia	r7!, {r0, r1, r5}
 544:	d4f8      	bmi.n	0x538
 546:	6c30      	ldr	r0, [r6, #64]	@ 0x40
 548:	07e0      	lsls	r0, r4, #31
 54a:	10f1      	asrs	r1, r6, #3
 54c:	1803      	adds	r3, r0, r0
 54e:	fc46 adf7 	mcrr2	13, 15, sl, r6, cr7
 552:	d7ff      	bvc.n	0x554
 554:	c8f8      	ldmia	r0!, {r3, r4, r5, r6, r7}
 556:	d720      	bvc.n	0x59a
 558:	c4f8      	stmia	r4!, {r3, r4, r5, r6, r7}
 55a:	1a30      	subs	r0, r6, r0
 55c:	0744      	lsls	r4, r0, #29
 55e:	3cf1      	subs	r4, #241	@ 0xf1
 560:	0701      	lsls	r1, r0, #28
 562:	10f1      	asrs	r1, r6, #3
 564:	1803      	adds	r3, r0, r0
 566:	fc46 19f7 	mcrr2	9, 15, r1, r6, cr7
 56a:	07ff      	lsls	r7, r7, #31
 56c:	1cf1      	adds	r1, r6, #3
 56e:	0702      	lsls	r2, r0, #28
 570:	10f1      	asrs	r1, r6, #3
 572:	1103      	asrs	r3, r0, #4
 574:	1846      	adds	r6, r0, r1
 576:	fc46 33f7 	mcrr2	3, 15, r3, r6, cr7
 57a:	07ff      	lsls	r7, r7, #31
 57c:	10f1      	asrs	r1, r6, #3
 57e:	1803      	adds	r3, r0, r0
 580:	fc46 94f7 	mcrr2	4, 15, r9, r6, cr7
 584:	07ff      	lsls	r7, r7, #31
 586:	3cf1      	subs	r4, #241	@ 0xf1
 588:	0701      	lsls	r1, r0, #28
 58a:	10f1      	asrs	r1, r6, #3
 58c:	d703      	bvc.n	0x596
 58e:	c8f8      	ldmia	r0!, {r3, r4, r5, r6, r7}
 590:	1820      	adds	r0, r4, r0
 592:	fc46 03f7 	mcrr2	3, 15, r0, r6, cr7
 596:	07ff      	lsls	r7, r7, #31
 598:	3cf1      	subs	r4, #241	@ 0xf1
 59a:	0702      	lsls	r2, r0, #28
 59c:	10f1      	asrs	r1, r6, #3
 59e:	1103      	asrs	r3, r0, #4
 5a0:	1846      	adds	r6, r0, r1
 5a2:	fc46 1df7 	mcrr2	13, 15, r1, r6, cr7
 5a6:	d7ff      	bvc.n	0x5a8
 5a8:	d4f8      	bmi.n	0x59c
 5aa:	d720      	bvc.n	0x5ee
 5ac:	c8f8      	ldmia	r0!, {r3, r4, r5, r6, r7}
 5ae:	1330      	asrs	r0, r6, #12
 5b0:	d744      	bvc.n	0x63c
 5b2:	ecf8 9a20 	vldmia	r8!, {s19-s50}
 5b6:	0b42      	lsrs	r2, r0, #13
 5b8:	d7d2      	bvc.n	0x560
 5ba:	ecf8 d730 	ldcl	7, cr13, [r8], #192	@ 0xc0
 5be:	c8f8      	ldmia	r0!, {r3, r4, r5, r6, r7}
 5c0:	b320      	cbz	r0, 0x60c
 5c2:	f2fb d7f2 	bl	0xefc5aa
 5c6:	c8f8      	ldmia	r0!, {r3, r4, r5, r6, r7}
 5c8:	0110      	lsls	r0, r2, #4
 5ca:	02fb      	lsls	r3, r7, #11
 5cc:	9bf2      	ldr	r3, [sp, #968]	@ 0x3c8
 5ce:	011a      	lsls	r2, r3, #4
 5d0:	d7e0      	bvc.n	0x594
 5d2:	c8f8      	ldmia	r0!, {r3, r4, r5, r6, r7}
 5d4:	c730      	stmia	r7!, {r4, r5}
 5d6:	bcf8      	pop	{r3, r4, r5, r6, r7}
 5d8:	0030      	movs	r0, r6
 5da:	c723      	stmia	r7!, {r0, r1, r5}
 5dc:	d0f8      	beq.n	0x5d0
 5de:	1330      	asrs	r0, r6, #12
 5e0:	d7e0      	bvc.n	0x5a4
 5e2:	d4f8      	bmi.n	0x5d6
 5e4:	d720      	bvc.n	0x628
 5e6:	d0f8      	beq.n	0x5da
 5e8:	1330      	asrs	r0, r6, #12
 5ea:	d744      	bvc.n	0x676
 5ec:	e8f8 1320 	ldrd	r1, r3, [r8], #128	@ 0x80
 5f0:	0744      	lsls	r4, r0, #29
 5f2:	1cf1      	adds	r1, r6, #3
 5f4:	d701      	bvc.n	0x5fa
 5f6:	d0f8      	beq.n	0x5ea
 5f8:	0a20      	lsrs	r0, r4, #8
 5fa:	1244      	asrs	r4, r0, #9
 5fc:	1a78      	subs	r0, r7, r1
 5fe:	d770      	bvc.n	0x6e2
 600:	d0f8      	beq.n	0x5f4
 602:	0130      	lsls	r0, r6, #4
 604:	c733      	stmia	r7!, {r0, r1, r4, r5}
 606:	d0f8      	beq.n	0x5fa
 608:	d730      	bvc.n	0x66c
 60a:	d0f8      	beq.n	0x5fe
 60c:	d720      	bvc.n	0x650
 60e:	bcf8      	pop	{r3, r4, r5, r6, r7}
 610:	9a30      	ldr	r2, [sp, #192]	@ 0xc0
 612:	e542      	b.n	0x9a
 614:	d7d3      	bvc.n	0x5be
 616:	d4f8      	bmi.n	0x60a
 618:	d720      	bvc.n	0x65c
 61a:	c8f8      	ldmia	r0!, {r3, r4, r5, r6, r7}
 61c:	1330      	asrs	r0, r6, #12
 61e:	c744      	stmia	r7!, {r2, r6}
 620:	d4f8      	bmi.n	0x614
 622:	d730      	bvc.n	0x686
 624:	d4f8      	bmi.n	0x618
 626:	d720      	bvc.n	0x66a
 628:	ecf8 9a30 	vldmia	r8!, {s19-s66}
 62c:	8c42      	ldrh	r2, [r0, #34]	@ 0x22
 62e:	07d3      	lsls	r3, r2, #31
 630:	10f1      	asrs	r1, r6, #3
 632:	1803      	adds	r3, r0, r0
 634:	fc46 35f7 	mcrr2	5, 15, r3, r6, cr7
 638:	07fd      	lsls	r5, r7, #31
 63a:	3cf1      	subs	r4, #241	@ 0xf1
 63c:	8003      	strh	r3, [r0, #0]
 63e:	1821      	adds	r1, r4, r0
 640:	ff46 50f7 	vqadd.u8	<illegal reg q10.5>, q11, <illegal reg q11.5>
 644:	07fe      	lsls	r6, r7, #31
 646:	1cf1      	adds	r1, r6, #3
 648:	2003      	movs	r0, #3
 64a:	1821      	adds	r1, r4, r0
 64c:	ff46 4af7 	vpmin.u8	q10, q11, <illegal reg q11.5>
 650:	00fe      	lsls	r6, r7, #3
 652:	1823      	adds	r3, r4, r0
 654:	d846      	bhi.n	0x6e4
 656:	bd37      	pop	{r0, r1, r2, r4, r5, pc}
 658:	8046      	strh	r6, [r0, #2]
 65a:	00bd      	lsls	r5, r7, #2
 65c:	00bf      	lsls	r7, r7, #2
 65e:	ff94 00ff 	vshr.u64	q0, <illegal reg q15.5>, #44
 662:	ff8f 80ff 	vshr.u64	q4, <illegal reg q15.5>, #49
 666:	88b5      	ldrh	r5, [r6, #4]
 668:	04b0      	lsls	r0, r6, #18
 66a:	f8af b960 	strh.w	fp, [pc, #2400]	@ 0xfcc
 66e:	7a60      	ldrb	r0, [r4, #9]
 670:	3b60      	subs	r3, #96	@ 0x60
 672:	3b60      	subs	r3, #96	@ 0x60
 674:	036a      	lsls	r2, r5, #13
 676:	fb93 0269 			@ <UNDEFINED> instruction: 0xfb930269
 67a:	bb93      	cbnz	r3, 0x6e2
 67c:	0169      	lsls	r1, r5, #5
 67e:	3b93      	subs	r3, #147	@ 0x93
 680:	0068      	lsls	r0, r5, #1
 682:	7b93      	ldrb	r3, [r2, #14]
 684:	ba68      	rev16	r0, r5
 686:	f968 0668 	vld1.16	{d16-d18}, [r8 :128], r8
 68a:	ff20 d9f7 	vmul.p32	<illegal reg q6.5>, q8, <illegal reg q11.5>
 68e:	03fe      	lsls	r6, r7, #15
 690:	1846      	adds	r6, r0, r1
 692:	1046      	asrs	r6, r0, #1
 694:	bd37      	pop	{r0, r1, r2, r4, r5, pc}
 696:	8046      	strh	r6, [r0, #2]
 698:	f0bd e5b5 	bfcsel	2, 0x204, 4, <und>
 69c:	04b0      	lsls	r0, r6, #18
 69e:	3baf      	subs	r3, #175	@ 0xaf
 6a0:	181d      	adds	r5, r3, r0
 6a2:	0060      	lsls	r0, r4, #1
 6a4:	c723      	stmia	r7!, {r0, r1, r5}
 6a6:	7cf8      	ldrb	r0, [r7, #19]
 6a8:	3b31      	subs	r3, #49	@ 0x31
 6aa:	1b1d      	subs	r5, r3, r4
 6ac:	db68      	blt.n	0x780
 6ae:	c76a      	stmia	r7!, {r1, r3, r5, r6}
 6b0:	74f8      	strb	r0, [r7, #19]
 6b2:	3b31      	subs	r3, #49	@ 0x31
 6b4:	1b1d      	subs	r5, r3, r4
 6b6:	1b68      	subs	r0, r5, r5
 6b8:	c76c      	stmia	r7!, {r2, r3, r5, r6}
 6ba:	70f8      	strb	r0, [r7, #3]
 6bc:	3b31      	subs	r3, #49	@ 0x31
 6be:	1b1d      	subs	r5, r3, r4
 6c0:	1b68      	subs	r0, r5, r5
 6c2:	c76b      	stmia	r7!, {r0, r1, r3, r5, r6}
 6c4:	6cf8      	ldr	r0, [r7, #76]	@ 0x4c
 6c6:	d731      	bvc.n	0x72c
 6c8:	70f8      	strb	r0, [r7, #3]
 6ca:	1b31      	subs	r1, r6, r4
 6cc:	1b68      	subs	r0, r5, r5
 6ce:	187a      	adds	r2, r7, r1
 6d0:	fa46 5ef7 			@ <UNDEFINED> instruction: 0xfa465ef7
 6d4:	c7ff      	stmia	r7!, {r0, r1, r2, r3, r4, r5, r6, r7}
 6d6:	68f8      	ldr	r0, [r7, #12]
 6d8:	d701      	bvc.n	0x6de
 6da:	68f8      	ldr	r0, [r7, #12]
 6dc:	0031      	movs	r1, r6
 6de:	012b      	lsls	r3, r5, #4
 6e0:	ccd1      	ldmia	r4, {r0, r4, r6, r7}
 6e2:	694b      	ldr	r3, [r1, #20]
 6e4:	d7e2      	bvc.n	0x6ac
 6e6:	70f8      	strb	r0, [r7, #3]
 6e8:	1b31      	subs	r1, r6, r4
 6ea:	5b68      	ldrh	r0, [r5, r5]
 6ec:	187a      	adds	r2, r7, r1
 6ee:	fc46 b1f7 	mcrr2	1, 15, fp, r6, cr7
 6f2:	c7fc      	stmia	r7!, {r2, r3, r4, r5, r6, r7}
 6f4:	64f8      	str	r0, [r7, #76]	@ 0x4c
 6f6:	d701      	bvc.n	0x6fc
 6f8:	64f8      	str	r0, [r7, #76]	@ 0x4c
 6fa:	0031      	movs	r1, r6
 6fc:	012b      	lsls	r3, r5, #4
 6fe:	c5d1      	stmia	r5!, {r0, r4, r6, r7}
 700:	5a4b      	ldrh	r3, [r1, r1]
 702:	3be2      	subs	r3, #226	@ 0xe2
 704:	1b1d      	subs	r5, r3, r4
 706:	db68      	blt.n	0x7da
 708:	0368      	lsls	r0, r5, #13
 70a:	132b      	asrs	r3, r5, #12
 70c:	d7d1      	bvc.n	0x6b2
 70e:	6cf8      	ldr	r0, [r7, #76]	@ 0x4c
 710:	c131      	stmia	r1!, {r0, r4, r5}
 712:	c34a      	stmia	r3!, {r1, r3, r6}
 714:	80f8      	strh	r0, [r7, #6]
 716:	d720      	bvc.n	0x75a
 718:	6cf8      	ldr	r0, [r7, #76]	@ 0x4c
 71a:	c031      	stmia	r0!, {r0, r4, r5}
 71c:	9a4a      	ldr	r2, [sp, #296]	@ 0x128
 71e:	d767      	bvc.n	0x7f0
 720:	6cf8      	ldr	r0, [r7, #76]	@ 0x4c
 722:	bf31      	iteee	cc
 724:	da4a      	bge.n	0x7bc	@ unpredictable <IT:cc>
 726:	d767      	bvc.n	0x7f8	@ unpredictable <IT:cs>
 728:	6cf8      	ldrcs	r0, [r7, #76]	@ 0x4c
 72a:	d331      	bcc.n	0x790	@ unpredictable <IT:cs>
 72c:	2cf8      	cmp	r4, #248	@ 0xf8
 72e:	0031      	movs	r1, r6
 730:	2d2b      	cmp	r5, #43	@ 0x2b
 732:	01d1      	lsls	r1, r2, #7
 734:	bbe0      	cbnz	r0, 0x7b0
 736:	3f4b      	subs	r7, #75	@ 0x4b
 738:	d7e2      	bvc.n	0x700
 73a:	6cf8      	ldr	r0, [r7, #76]	@ 0x4c
 73c:	d331      	bcc.n	0x7a2
 73e:	80f8      	strh	r0, [r7, #6]
 740:	d740      	bvc.n	0x7c4
 742:	6cf8      	ldr	r0, [r7, #76]	@ 0x4c
 744:	0331      	lsls	r1, r6, #12
 746:	c8f1      	ldmia	r0, {r0, r4, r5, r6, r7}
 748:	d700      	bvc.n	0x74c
 74a:	6cf8      	ldr	r0, [r7, #76]	@ 0x4c
 74c:	d331      	bcc.n	0x7b2
 74e:	84f8      	strh	r0, [r7, #38]	@ 0x26
 750:	d710      	bvc.n	0x774
 752:	6cf8      	ldr	r0, [r7, #76]	@ 0x4c
 754:	0331      	lsls	r1, r6, #12
 756:	88f1      	ldrh	r1, [r6, #6]
 758:	d705      	bvc.n	0x766
 75a:	74f8      	strb	r0, [r7, #19]
 75c:	2c31      	cmp	r4, #49	@ 0x31
 75e:	3033      	adds	r0, #51	@ 0x33
 760:	0222      	lsls	r2, r4, #8
 762:	0192      	lsls	r2, r2, #6
 764:	4093      	lsls	r3, r2
 766:	0023      	movs	r3, r4
 768:	2b93      	cmp	r3, #147	@ 0x93
 76a:	af46      	add	r7, sp, #280	@ 0x118
 76c:	a04a      	add	r0, pc, #296	@ (adr r0, 0x898)
 76e:	c747      	stmia	r7!, {r0, r1, r2, r6}
 770:	7cf8      	ldrb	r0, [r7, #19]
 772:	d701      	bvc.n	0x778
 774:	7cf8      	ldrb	r0, [r7, #19]
 776:	0031      	movs	r1, r6
 778:	022b      	lsls	r3, r5, #8
 77a:	d7d0      	bvc.n	0x71e
 77c:	7cf8      	ldrb	r0, [r7, #19]
 77e:	1b31      	subs	r1, r6, r4
 780:	d7e2      	bvc.n	0x748
 782:	6cf8      	ldr	r0, [r7, #76]	@ 0x4c
 784:	c831      	ldmia	r0, {r0, r4, r5}
 786:	6433      	str	r3, [r6, #64]	@ 0x40
 788:	1821      	adds	r1, r4, r0
 78a:	ff46 abf7 	vqrdmlah.s<illegal width 8>	q13, q11, <illegal reg q11.5>
 78e:	d7fd      	bvc.n	0x78c
 790:	6cf8      	ldr	r0, [r7, #76]	@ 0x4c
 792:	8831      	ldrh	r1, [r6, #0]
 794:	1c33      	adds	r3, r6, #0
 796:	0746      	lsls	r6, r0, #29
 798:	84f5      	strh	r5, [r6, #38]	@ 0x26
 79a:	0476      	lsls	r6, r6, #17
 79c:	40f1      	lsrs	r1, r6
 79e:	350c      	adds	r5, #12
 7a0:	2346      	movs	r3, #70	@ 0x46
 7a2:	1846      	adds	r6, r0, r1
 7a4:	5968      	ldr	r0, [r5, r5]
 7a6:	9a68      	ldr	r2, [sp, #416]	@ 0x1a0
 7a8:	db68      	blt.n	0x87c
 7aa:	0f68      	lsrs	r0, r5, #29
 7ac:	10c5      	asrs	r5, r0, #3
 7ae:	1034      	asrs	r4, r6, #32
 7b0:	6436      	str	r6, [r6, #64]	@ 0x40
 7b2:	f445 d7d1 	bl	0xff046758
 7b6:	6cf8      	ldr	r0, [r7, #76]	@ 0x4c
 7b8:	0331      	lsls	r1, r6, #12
 7ba:	88f1      	ldrh	r1, [r6, #6]
 7bc:	0700      	lsls	r0, r0, #28
 7be:	84f5      	strh	r5, [r6, #38]	@ 0x26
 7c0:	2073      	movs	r0, #115	@ 0x73
 7c2:	2033      	movs	r0, #51	@ 0x33
 7c4:	1922      	adds	r2, r4, r4
 7c6:	0546      	lsls	r6, r0, #21
 7c8:	d2f0      	bcs.n	0x7ac
 7ca:	d7fd      	bvc.n	0x7c8
 7cc:	6cf8      	ldr	r0, [r7, #76]	@ 0x4c
 7ce:	8831      	ldrh	r1, [r6, #0]
 7d0:	2033      	movs	r0, #51	@ 0x33
 7d2:	0733      	lsls	r3, r6, #28
 7d4:	84f5      	strh	r5, [r6, #38]	@ 0x26
 7d6:	2071      	movs	r0, #113	@ 0x71
 7d8:	1822      	adds	r2, r4, r0
 7da:	0546      	lsls	r6, r0, #21
 7dc:	c8f0      	ldmia	r0!, {r4, r5, r6, r7}
 7de:	07fd      	lsls	r5, r7, #31
 7e0:	84f5      	strh	r5, [r6, #38]	@ 0x26
 7e2:	4073      	eors	r3, r6
 7e4:	1821      	adds	r1, r4, r0
 7e6:	ff46 7df7 	vmul.f32	<illegal reg q11.5>, q11, <illegal reg q11.5>
 7ea:	d7fd      	bvc.n	0x7e8
 7ec:	6cf8      	ldr	r0, [r7, #76]	@ 0x4c
 7ee:	d331      	bcc.n	0x854
 7f0:	80f8      	strh	r0, [r7, #6]
 7f2:	d740      	bvc.n	0x876
 7f4:	74f8      	strb	r0, [r7, #19]
 7f6:	0331      	lsls	r1, r6, #12
 7f8:	2cf1      	cmp	r4, #241	@ 0xf1
 7fa:	d700      	bvc.n	0x7fe
 7fc:	6cf8      	ldr	r0, [r7, #76]	@ 0x4c
 7fe:	0331      	lsls	r1, r6, #12
 800:	88f1      	ldrh	r1, [r6, #6]
 802:	4f02      	ldr	r7, [pc, #8]	@ (0x80c)
 804:	80f4      	strh	r4, [r6, #6]
 806:	0273      	lsls	r3, r6, #9
 808:	0793      	lsls	r3, r2, #30
 80a:	08f1      	lsrs	r1, r6, #3
 80c:	0103      	lsls	r3, r0, #4
 80e:	4093      	lsls	r3, r2
 810:	0023      	movs	r3, r4
 812:	1393      	asrs	r3, r2, #14
 814:	8546      	strh	r6, [r0, #42]	@ 0x2a
 816:	304a      	adds	r0, #74	@ 0x4a
 818:	a021      	add	r0, pc, #132	@ (adr r0, 0x8a0)
 81a:	c747      	stmia	r7!, {r0, r1, r2, r6}
 81c:	7cf8      	ldrb	r0, [r7, #19]
 81e:	d701      	bvc.n	0x824
 820:	7cf8      	ldrb	r0, [r7, #19]
 822:	0031      	movs	r1, r6
 824:	022b      	lsls	r3, r5, #8
 826:	d7d0      	bvc.n	0x7ca
 828:	7cf8      	ldrb	r0, [r7, #19]
 82a:	c531      	stmia	r5!, {r0, r4, r5}
 82c:	d7e1      	bvc.n	0x7f2
 82e:	6cf8      	ldr	r0, [r7, #76]	@ 0x4c
 830:	8831      	ldrh	r1, [r6, #0]
 832:	4033      	ands	r3, r6
 834:	1821      	adds	r1, r4, r0
 836:	ff46 55f7 	vqrshl.u8	<illegal reg q10.5>, <illegal reg q11.5>, q11
 83a:	d7fd      	bvc.n	0x838
 83c:	68f8      	ldr	r0, [r7, #12]
 83e:	5b31      	ldrh	r1, [r6, r4]
 840:	da68      	bge.n	0x914
 842:	d708      	bvc.n	0x856
 844:	70f8      	strb	r0, [r7, #3]
 846:	5a31      	ldrh	r1, [r6, r0]
 848:	d760      	bvc.n	0x90c
 84a:	68f8      	ldr	r0, [r7, #12]
 84c:	5b31      	ldrh	r1, [r6, r4]
 84e:	0678      	lsls	r0, r7, #25
 850:	092b      	lsrs	r3, r5, #4
 852:	d7d0      	bvc.n	0x7f6
 854:	68f8      	ldr	r0, [r7, #12]
 856:	5b31      	ldrh	r1, [r6, r4]
 858:	0878      	lsrs	r0, r7, #1
 85a:	042b      	lsls	r3, r5, #16
 85c:	d7d0      	bvc.n	0x800
 85e:	68f8      	ldr	r0, [r7, #12]
 860:	5b31      	ldrh	r1, [r6, r4]
 862:	0a78      	lsrs	r0, r7, #9
 864:	372b      	adds	r7, #43	@ 0x2b
 866:	d7d1      	bvc.n	0x80c
 868:	70f8      	strb	r0, [r7, #3]
 86a:	0031      	movs	r1, r6
 86c:	5a22      	ldrh	r2, [r4, r0]
 86e:	0061      	lsls	r1, r4, #1
 870:	c723      	stmia	r7!, {r0, r1, r5}
 872:	78f8      	ldrb	r0, [r7, #3]
 874:	d731      	bvc.n	0x8da
 876:	70f8      	strb	r0, [r7, #3]
 878:	0c31      	lsrs	r1, r6, #16
 87a:	da22      	bge.n	0x8c2
 87c:	d760      	bvc.n	0x940
 87e:	68f8      	ldr	r0, [r7, #12]
 880:	5b31      	ldrh	r1, [r6, r4]
 882:	0a78      	lsrs	r0, r7, #9
 884:	042b      	lsls	r3, r5, #16
 886:	d7d1      	bvc.n	0x82c
 888:	70f8      	strb	r0, [r7, #3]
 88a:	0c31      	lsrs	r1, r6, #16
 88c:	1a22      	subs	r2, r4, r0
 88e:	0361      	lsls	r1, r4, #13
 890:	d7e0      	bvc.n	0x854
 892:	70f8      	strb	r0, [r7, #3]
 894:	0431      	lsls	r1, r6, #16
 896:	1a22      	subs	r2, r4, r0
 898:	Address 0x898 is out of bounds.

