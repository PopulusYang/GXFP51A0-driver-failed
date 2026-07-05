
/home/Populus/Projects/fingerprint/extracted_firmware/fw_mod_02_flash_ops_4242.bin:     file format binary


Disassembly of section .data:

00000000 <.data>:
       0:	371c      	adds	r7, #28
       2:	46bd      	mov	sp, r7
       4:	bc80      	pop	{r7}
       6:	4770      	bx	lr
       8:	9f00      	ldr	r7, [sp, #0]
       a:	ffff b480 	vraddhn.i<illegal width 128>	d27, <illegal reg q15.5>, q0
       e:	b085      	sub	sp, #20
      10:	af00      	add	r7, sp, #0
      12:	60f8      	str	r0, [r7, #12]
      14:	60b9      	str	r1, [r7, #8]
      16:	607a      	str	r2, [r7, #4]
      18:	68fb      	ldr	r3, [r7, #12]
      1a:	2b00      	cmp	r3, #0
      1c:	d002      	beq.n	0x24
      1e:	687b      	ldr	r3, [r7, #4]
      20:	2b00      	cmp	r3, #0
      22:	d101      	bne.n	0x28
      24:	4b05      	ldr	r3, [pc, #20]	@ (0x3c)
      26:	e003      	b.n	0x30
      28:	687b      	ldr	r3, [r7, #4]
      2a:	68ba      	ldr	r2, [r7, #8]
      2c:	601a      	str	r2, [r3, #0]
      2e:	2300      	movs	r3, #0
      30:	4618      	mov	r0, r3
      32:	3714      	adds	r7, #20
      34:	46bd      	mov	sp, r7
      36:	bc80      	pop	{r7}
      38:	4770      	bx	lr
      3a:	bf00      	nop
      3c:	9f00      	ldr	r7, [sp, #0]
      3e:	ffff b5f0 	vsli.64	<illegal reg q13.5>, q8, #63	@ 0x3f
      42:	b089      	sub	sp, #36	@ 0x24
      44:	af02      	add	r7, sp, #8
      46:	60f8      	str	r0, [r7, #12]
      48:	60b9      	str	r1, [r7, #8]
      4a:	607a      	str	r2, [r7, #4]
      4c:	68fb      	ldr	r3, [r7, #12]
      4e:	681b      	ldr	r3, [r3, #0]
      50:	2b00      	cmp	r3, #0
      52:	d101      	bne.n	0x58
      54:	4b5b      	ldr	r3, [pc, #364]	@ (0x1c4)
      56:	e0b0      	b.n	0x1ba
      58:	687b      	ldr	r3, [r7, #4]
      5a:	2200      	movs	r2, #0
      5c:	601a      	str	r2, [r3, #0]
      5e:	68fb      	ldr	r3, [r7, #12]
      60:	681b      	ldr	r3, [r3, #0]
      62:	785b      	ldrb	r3, [r3, #1]
      64:	2b03      	cmp	r3, #3
      66:	d018      	beq.n	0x9a
      68:	68fb      	ldr	r3, [r7, #12]
      6a:	681b      	ldr	r3, [r3, #0]
      6c:	785b      	ldrb	r3, [r3, #1]
      6e:	2b04      	cmp	r3, #4
      70:	d013      	beq.n	0x9a
      72:	68fb      	ldr	r3, [r7, #12]
      74:	681b      	ldr	r3, [r3, #0]
      76:	785b      	ldrb	r3, [r3, #1]
      78:	2b05      	cmp	r3, #5
      7a:	d00e      	beq.n	0x9a
      7c:	68fb      	ldr	r3, [r7, #12]
      7e:	681b      	ldr	r3, [r3, #0]
      80:	785b      	ldrb	r3, [r3, #1]
      82:	2b06      	cmp	r3, #6
      84:	d009      	beq.n	0x9a
      86:	68fb      	ldr	r3, [r7, #12]
      88:	681b      	ldr	r3, [r3, #0]
      8a:	785b      	ldrb	r3, [r3, #1]
      8c:	2b09      	cmp	r3, #9
      8e:	d004      	beq.n	0x9a
      90:	68fb      	ldr	r3, [r7, #12]
      92:	681b      	ldr	r3, [r3, #0]
      94:	785b      	ldrb	r3, [r3, #1]
      96:	2b07      	cmp	r3, #7
      98:	d101      	bne.n	0x9e
      9a:	2300      	movs	r3, #0
      9c:	e08d      	b.n	0x1ba
      9e:	68fb      	ldr	r3, [r7, #12]
      a0:	681b      	ldr	r3, [r3, #0]
      a2:	781b      	ldrb	r3, [r3, #0]
      a4:	2b48      	cmp	r3, #72	@ 0x48
      a6:	d004      	beq.n	0xb2
      a8:	68fb      	ldr	r3, [r7, #12]
      aa:	681b      	ldr	r3, [r3, #0]
      ac:	781b      	ldrb	r3, [r3, #0]
      ae:	2b49      	cmp	r3, #73	@ 0x49
      b0:	d101      	bne.n	0xb6
      b2:	2300      	movs	r3, #0
      b4:	e081      	b.n	0x1ba
      b6:	68fb      	ldr	r3, [r7, #12]
      b8:	681b      	ldr	r3, [r3, #0]
      ba:	785b      	ldrb	r3, [r3, #1]
      bc:	2b01      	cmp	r3, #1
      be:	d107      	bne.n	0xd0
      c0:	68fb      	ldr	r3, [r7, #12]
      c2:	6a5b      	ldr	r3, [r3, #36]	@ 0x24
      c4:	2b00      	cmp	r3, #0
      c6:	d001      	beq.n	0xcc
      c8:	4b3f      	ldr	r3, [pc, #252]	@ (0x1c8)
      ca:	e076      	b.n	0x1ba
      cc:	2300      	movs	r3, #0
      ce:	e074      	b.n	0x1ba
      d0:	68fb      	ldr	r3, [r7, #12]
      d2:	681b      	ldr	r3, [r3, #0]
      d4:	785b      	ldrb	r3, [r3, #1]
      d6:	2b02      	cmp	r3, #2
      d8:	d16e      	bne.n	0x1b8
      da:	2300      	movs	r3, #0
      dc:	617b      	str	r3, [r7, #20]
      de:	68fb      	ldr	r3, [r7, #12]
      e0:	f993 3008 	ldrsb.w	r3, [r3, #8]
      e4:	2b01      	cmp	r3, #1
      e6:	d11b      	bne.n	0x120
      e8:	68fb      	ldr	r3, [r7, #12]
      ea:	68db      	ldr	r3, [r3, #12]
      ec:	2b00      	cmp	r3, #0
      ee:	d107      	bne.n	0x100
      f0:	68fb      	ldr	r3, [r7, #12]
      f2:	6a5b      	ldr	r3, [r3, #36]	@ 0x24
      f4:	2b00      	cmp	r3, #0
      f6:	d001      	beq.n	0xfc
      f8:	4b33      	ldr	r3, [pc, #204]	@ (0x1c8)
      fa:	e05e      	b.n	0x1ba
      fc:	2300      	movs	r3, #0
      fe:	e05c      	b.n	0x1ba
     100:	68fb      	ldr	r3, [r7, #12]
     102:	68dc      	ldr	r4, [r3, #12]
     104:	68fb      	ldr	r3, [r7, #12]
     106:	f103 0514 	add.w	r5, r3, #20
     10a:	68f8      	ldr	r0, [r7, #12]
     10c:	f7ff fbd8 	bl	0xfffff8c0
     110:	4603      	mov	r3, r0
     112:	4619      	mov	r1, r3
     114:	68fb      	ldr	r3, [r7, #12]
     116:	6a5b      	ldr	r3, [r3, #36]	@ 0x24
     118:	461a      	mov	r2, r3
     11a:	4628      	mov	r0, r5
     11c:	47a0      	blx	r4
     11e:	e013      	b.n	0x148
     120:	68f8      	ldr	r0, [r7, #12]
     122:	f7ff fbbb 	bl	0xfffff89c
     126:	4602      	mov	r2, r0
     128:	68fb      	ldr	r3, [r7, #12]
     12a:	6a5b      	ldr	r3, [r3, #36]	@ 0x24
     12c:	429a      	cmp	r2, r3
     12e:	d00b      	beq.n	0x148
     130:	68fb      	ldr	r3, [r7, #12]
     132:	68db      	ldr	r3, [r3, #12]
     134:	2b00      	cmp	r3, #0
     136:	d105      	bne.n	0x144
     138:	68fb      	ldr	r3, [r7, #12]
     13a:	6a5b      	ldr	r3, [r3, #36]	@ 0x24
     13c:	2b00      	cmp	r3, #0
     13e:	d101      	bne.n	0x144
     140:	2300      	movs	r3, #0
     142:	e03a      	b.n	0x1ba
     144:	4b20      	ldr	r3, [pc, #128]	@ (0x1c8)
     146:	e038      	b.n	0x1ba
     148:	68fb      	ldr	r3, [r7, #12]
     14a:	681b      	ldr	r3, [r3, #0]
     14c:	699b      	ldr	r3, [r3, #24]
     14e:	689c      	ldr	r4, [r3, #8]
     150:	68fb      	ldr	r3, [r7, #12]
     152:	6bdd      	ldr	r5, [r3, #60]	@ 0x3c
     154:	68fb      	ldr	r3, [r7, #12]
     156:	f993 6008 	ldrsb.w	r6, [r3, #8]
     15a:	68f8      	ldr	r0, [r7, #12]
     15c:	f7ff fb9e 	bl	0xfffff89c
     160:	68fb      	ldr	r3, [r7, #12]
     162:	f103 0128 	add.w	r1, r3, #40	@ 0x28
     166:	68fb      	ldr	r3, [r7, #12]
     168:	3314      	adds	r3, #20
     16a:	68ba      	ldr	r2, [r7, #8]
     16c:	9201      	str	r2, [sp, #4]
     16e:	9300      	str	r3, [sp, #0]
     170:	460b      	mov	r3, r1
     172:	4602      	mov	r2, r0
     174:	4631      	mov	r1, r6
     176:	4628      	mov	r0, r5
     178:	47a0      	blx	r4
     17a:	6178      	str	r0, [r7, #20]
     17c:	697b      	ldr	r3, [r7, #20]
     17e:	2b00      	cmp	r3, #0
     180:	d001      	beq.n	0x186
     182:	697b      	ldr	r3, [r7, #20]
     184:	e019      	b.n	0x1ba
     186:	68fb      	ldr	r3, [r7, #12]
     188:	f993 3008 	ldrsb.w	r3, [r3, #8]
     18c:	2b00      	cmp	r3, #0
     18e:	d10b      	bne.n	0x1a8
     190:	68fb      	ldr	r3, [r7, #12]
     192:	691c      	ldr	r4, [r3, #16]
     194:	68f8      	ldr	r0, [r7, #12]
     196:	f7ff fb81 	bl	0xfffff89c
     19a:	4603      	mov	r3, r0
     19c:	687a      	ldr	r2, [r7, #4]
     19e:	4619      	mov	r1, r3
     1a0:	68b8      	ldr	r0, [r7, #8]
     1a2:	47a0      	blx	r4
     1a4:	4603      	mov	r3, r0
     1a6:	e008      	b.n	0x1ba
     1a8:	68f8      	ldr	r0, [r7, #12]
     1aa:	f7ff fb77 	bl	0xfffff89c
     1ae:	4602      	mov	r2, r0
     1b0:	687b      	ldr	r3, [r7, #4]
     1b2:	601a      	str	r2, [r3, #0]
     1b4:	2300      	movs	r3, #0
     1b6:	e000      	b.n	0x1ba
     1b8:	4b04      	ldr	r3, [pc, #16]	@ (0x1cc)
     1ba:	4618      	mov	r0, r3
     1bc:	371c      	adds	r7, #28
     1be:	46bd      	mov	sp, r7
     1c0:	bdf0      	pop	{r4, r5, r6, r7, pc}
     1c2:	bf00      	nop
     1c4:	9f00      	ldr	r7, [sp, #0]
     1c6:	ffff 9d80 			@ <UNDEFINED> instruction: 0xffff9d80
     1ca:	ffff 9f80 			@ <UNDEFINED> instruction: 0xffff9f80
     1ce:	ffff b480 	vraddhn.i<illegal width 128>	d27, <illegal reg q15.5>, q0
     1d2:	b083      	sub	sp, #12
     1d4:	af00      	add	r7, sp, #0
     1d6:	6078      	str	r0, [r7, #4]
     1d8:	460b      	mov	r3, r1
     1da:	70fb      	strb	r3, [r7, #3]
     1dc:	687b      	ldr	r3, [r7, #4]
     1de:	681b      	ldr	r3, [r3, #0]
     1e0:	2b00      	cmp	r3, #0
     1e2:	d004      	beq.n	0x1ee
     1e4:	687b      	ldr	r3, [r7, #4]
     1e6:	681b      	ldr	r3, [r3, #0]
     1e8:	785b      	ldrb	r3, [r3, #1]
     1ea:	2b02      	cmp	r3, #2
     1ec:	d001      	beq.n	0x1f2
     1ee:	4b14      	ldr	r3, [pc, #80]	@ (0x240)
     1f0:	e021      	b.n	0x236
     1f2:	78fb      	ldrb	r3, [r7, #3]
     1f4:	2b04      	cmp	r3, #4
     1f6:	d014      	beq.n	0x222
     1f8:	2b04      	cmp	r3, #4
     1fa:	dc19      	bgt.n	0x230
     1fc:	2b00      	cmp	r3, #0
     1fe:	d002      	beq.n	0x206
     200:	2b03      	cmp	r3, #3
     202:	d007      	beq.n	0x214
     204:	e014      	b.n	0x230
     206:	687b      	ldr	r3, [r7, #4]
     208:	4a0e      	ldr	r2, [pc, #56]	@ (0x244)
     20a:	60da      	str	r2, [r3, #12]
     20c:	687b      	ldr	r3, [r7, #4]
     20e:	4a0e      	ldr	r2, [pc, #56]	@ (0x248)
     210:	611a      	str	r2, [r3, #16]
     212:	e00f      	b.n	0x234
     214:	687b      	ldr	r3, [r7, #4]
     216:	4a0d      	ldr	r2, [pc, #52]	@ (0x24c)
     218:	60da      	str	r2, [r3, #12]
     21a:	687b      	ldr	r3, [r7, #4]
     21c:	4a0c      	ldr	r2, [pc, #48]	@ (0x250)
     21e:	611a      	str	r2, [r3, #16]
     220:	e008      	b.n	0x234
     222:	687b      	ldr	r3, [r7, #4]
     224:	2200      	movs	r2, #0
     226:	60da      	str	r2, [r3, #12]
     228:	687b      	ldr	r3, [r7, #4]
     22a:	4a0a      	ldr	r2, [pc, #40]	@ (0x254)
     22c:	611a      	str	r2, [r3, #16]
     22e:	e001      	b.n	0x234
     230:	4b09      	ldr	r3, [pc, #36]	@ (0x258)
     232:	e000      	b.n	0x236
     234:	2300      	movs	r3, #0
     236:	4618      	mov	r0, r3
     238:	370c      	adds	r7, #12
     23a:	46bd      	mov	sp, r7
     23c:	bc80      	pop	{r7}
     23e:	4770      	bx	lr
     240:	9f00      	ldr	r7, [sp, #0]
     242:	ffff 2a51 			@ <UNDEFINED> instruction: 0xffff2a51
     246:	0002      	movs	r2, r0
     248:	2a95      	cmp	r2, #149	@ 0x95
     24a:	0002      	movs	r2, r0
     24c:	2b69      	cmp	r3, #105	@ 0x69
     24e:	0002      	movs	r2, r0
     250:	2ba1      	cmp	r3, #161	@ 0xa1
     252:	0002      	movs	r2, r0
     254:	2c2d      	cmp	r4, #45	@ 0x2d
     256:	0002      	movs	r2, r0
     258:	9f80      	ldr	r7, [sp, #512]	@ 0x200
     25a:	ffff b580 	vabal.u<illegal width 64>	<illegal reg q13.5>, d31, d0
     25e:	b088      	sub	sp, #32
     260:	af02      	add	r7, sp, #8
     262:	60f8      	str	r0, [r7, #12]
     264:	60b9      	str	r1, [r7, #8]
     266:	607a      	str	r2, [r7, #4]
     268:	603b      	str	r3, [r7, #0]
     26a:	687a      	ldr	r2, [r7, #4]
     26c:	68b9      	ldr	r1, [r7, #8]
     26e:	68f8      	ldr	r0, [r7, #12]
     270:	f7ff fc40 	bl	0xfffffaf4
     274:	6178      	str	r0, [r7, #20]
     276:	697b      	ldr	r3, [r7, #20]
     278:	2b00      	cmp	r3, #0
     27a:	d001      	beq.n	0x280
     27c:	697b      	ldr	r3, [r7, #20]
     27e:	e02d      	b.n	0x2dc
     280:	68f8      	ldr	r0, [r7, #12]
     282:	f7ff fc73 	bl	0xfffffb6c
     286:	6178      	str	r0, [r7, #20]
     288:	697b      	ldr	r3, [r7, #20]
     28a:	2b00      	cmp	r3, #0
     28c:	d001      	beq.n	0x292
     28e:	697b      	ldr	r3, [r7, #20]
     290:	e024      	b.n	0x2dc
     292:	6abb      	ldr	r3, [r7, #40]	@ 0x28
     294:	9300      	str	r3, [sp, #0]
     296:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
     298:	6a3a      	ldr	r2, [r7, #32]
     29a:	6839      	ldr	r1, [r7, #0]
     29c:	68f8      	ldr	r0, [r7, #12]
     29e:	f7ff fc7b 	bl	0xfffffb98
     2a2:	6178      	str	r0, [r7, #20]
     2a4:	697b      	ldr	r3, [r7, #20]
     2a6:	2b00      	cmp	r3, #0
     2a8:	d001      	beq.n	0x2ae
     2aa:	697b      	ldr	r3, [r7, #20]
     2ac:	e016      	b.n	0x2dc
     2ae:	6abb      	ldr	r3, [r7, #40]	@ 0x28
     2b0:	681b      	ldr	r3, [r3, #0]
     2b2:	6a7a      	ldr	r2, [r7, #36]	@ 0x24
     2b4:	4413      	add	r3, r2
     2b6:	f107 0210 	add.w	r2, r7, #16
     2ba:	4619      	mov	r1, r3
     2bc:	68f8      	ldr	r0, [r7, #12]
     2be:	f7ff febf 	bl	0x40
     2c2:	6178      	str	r0, [r7, #20]
     2c4:	697b      	ldr	r3, [r7, #20]
     2c6:	2b00      	cmp	r3, #0
     2c8:	d001      	beq.n	0x2ce
     2ca:	697b      	ldr	r3, [r7, #20]
     2cc:	e006      	b.n	0x2dc
     2ce:	6abb      	ldr	r3, [r7, #40]	@ 0x28
     2d0:	681a      	ldr	r2, [r3, #0]
     2d2:	693b      	ldr	r3, [r7, #16]
     2d4:	441a      	add	r2, r3
     2d6:	6abb      	ldr	r3, [r7, #40]	@ 0x28
     2d8:	601a      	str	r2, [r3, #0]
     2da:	2300      	movs	r3, #0
     2dc:	4618      	mov	r0, r3
     2de:	3718      	adds	r7, #24
     2e0:	46bd      	mov	sp, r7
     2e2:	bd80      	pop	{r7, pc}
     2e4:	b580      	push	{r7, lr}
     2e6:	b08c      	sub	sp, #48	@ 0x30
     2e8:	af08      	add	r7, sp, #32
     2ea:	60f8      	str	r0, [r7, #12]
     2ec:	60b9      	str	r1, [r7, #8]
     2ee:	607a      	str	r2, [r7, #4]
     2f0:	603b      	str	r3, [r7, #0]
     2f2:	68fb      	ldr	r3, [r7, #12]
     2f4:	681b      	ldr	r3, [r3, #0]
     2f6:	785b      	ldrb	r3, [r3, #1]
     2f8:	2b06      	cmp	r3, #6
     2fa:	d119      	bne.n	0x330
     2fc:	6abb      	ldr	r3, [r7, #40]	@ 0x28
     2fe:	6a3a      	ldr	r2, [r7, #32]
     300:	601a      	str	r2, [r3, #0]
     302:	68fb      	ldr	r3, [r7, #12]
     304:	6bd8      	ldr	r0, [r3, #60]	@ 0x3c
     306:	6afb      	ldr	r3, [r7, #44]	@ 0x2c
     308:	9306      	str	r3, [sp, #24]
     30a:	6b3b      	ldr	r3, [r7, #48]	@ 0x30
     30c:	9305      	str	r3, [sp, #20]
     30e:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
     310:	9304      	str	r3, [sp, #16]
     312:	69fb      	ldr	r3, [r7, #28]
     314:	9303      	str	r3, [sp, #12]
     316:	69bb      	ldr	r3, [r7, #24]
     318:	9302      	str	r3, [sp, #8]
     31a:	683b      	ldr	r3, [r7, #0]
     31c:	9301      	str	r3, [sp, #4]
     31e:	687b      	ldr	r3, [r7, #4]
     320:	9300      	str	r3, [sp, #0]
     322:	68bb      	ldr	r3, [r7, #8]
     324:	6a3a      	ldr	r2, [r7, #32]
     326:	2101      	movs	r1, #1
     328:	f000 ffc8 	bl	0x12bc
     32c:	4603      	mov	r3, r0
     32e:	e000      	b.n	0x332
     330:	4b02      	ldr	r3, [pc, #8]	@ (0x33c)
     332:	4618      	mov	r0, r3
     334:	3710      	adds	r7, #16
     336:	46bd      	mov	sp, r7
     338:	bd80      	pop	{r7, pc}
     33a:	bf00      	nop
     33c:	9f80      	ldr	r7, [sp, #512]	@ 0x200
     33e:	ffff b580 	vabal.u<illegal width 64>	<illegal reg q13.5>, d31, d0
     342:	b08c      	sub	sp, #48	@ 0x30
     344:	af06      	add	r7, sp, #24
     346:	60f8      	str	r0, [r7, #12]
     348:	60b9      	str	r1, [r7, #8]
     34a:	607a      	str	r2, [r7, #4]
     34c:	603b      	str	r3, [r7, #0]
     34e:	68fb      	ldr	r3, [r7, #12]
     350:	681b      	ldr	r3, [r3, #0]
     352:	785b      	ldrb	r3, [r3, #1]
     354:	2b06      	cmp	r3, #6
     356:	d11e      	bne.n	0x396
     358:	6b3b      	ldr	r3, [r7, #48]	@ 0x30
     35a:	6aba      	ldr	r2, [r7, #40]	@ 0x28
     35c:	601a      	str	r2, [r3, #0]
     35e:	68fb      	ldr	r3, [r7, #12]
     360:	6bd8      	ldr	r0, [r3, #60]	@ 0x3c
     362:	6afb      	ldr	r3, [r7, #44]	@ 0x2c
     364:	9305      	str	r3, [sp, #20]
     366:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
     368:	9304      	str	r3, [sp, #16]
     36a:	6bbb      	ldr	r3, [r7, #56]	@ 0x38
     36c:	9303      	str	r3, [sp, #12]
     36e:	6b7b      	ldr	r3, [r7, #52]	@ 0x34
     370:	9302      	str	r3, [sp, #8]
     372:	6a3b      	ldr	r3, [r7, #32]
     374:	9301      	str	r3, [sp, #4]
     376:	683b      	ldr	r3, [r7, #0]
     378:	9300      	str	r3, [sp, #0]
     37a:	687b      	ldr	r3, [r7, #4]
     37c:	68ba      	ldr	r2, [r7, #8]
     37e:	6ab9      	ldr	r1, [r7, #40]	@ 0x28
     380:	f000 ffcf 	bl	0x1322
     384:	6178      	str	r0, [r7, #20]
     386:	697b      	ldr	r3, [r7, #20]
     388:	f113 0f12 	cmn.w	r3, #18
     38c:	d101      	bne.n	0x392
     38e:	4b04      	ldr	r3, [pc, #16]	@ (0x3a0)
     390:	617b      	str	r3, [r7, #20]
     392:	697b      	ldr	r3, [r7, #20]
     394:	e000      	b.n	0x398
     396:	4b03      	ldr	r3, [pc, #12]	@ (0x3a4)
     398:	4618      	mov	r0, r3
     39a:	3718      	adds	r7, #24
     39c:	46bd      	mov	sp, r7
     39e:	bd80      	pop	{r7, pc}
     3a0:	9d00      	ldr	r5, [sp, #0]
     3a2:	ffff 9f80 			@ <UNDEFINED> instruction: 0xffff9f80
     3a6:	ffff b580 	vabal.u<illegal width 64>	<illegal reg q13.5>, d31, d0
     3aa:	b082      	sub	sp, #8
     3ac:	af00      	add	r7, sp, #0
     3ae:	f44f 71c4 	mov.w	r1, #392	@ 0x188
     3b2:	2001      	movs	r0, #1
     3b4:	f010 f872 	bl	0x1049c
     3b8:	4603      	mov	r3, r0
     3ba:	607b      	str	r3, [r7, #4]
     3bc:	687b      	ldr	r3, [r7, #4]
     3be:	2b00      	cmp	r3, #0
     3c0:	d002      	beq.n	0x3c8
     3c2:	6878      	ldr	r0, [r7, #4]
     3c4:	f000 f8ad 	bl	0x522
     3c8:	687b      	ldr	r3, [r7, #4]
     3ca:	4618      	mov	r0, r3
     3cc:	3708      	adds	r7, #8
     3ce:	46bd      	mov	sp, r7
     3d0:	bd80      	pop	{r7, pc}
     3d2:	b580      	push	{r7, lr}
     3d4:	b082      	sub	sp, #8
     3d6:	af00      	add	r7, sp, #0
     3d8:	6078      	str	r0, [r7, #4]
     3da:	6878      	ldr	r0, [r7, #4]
     3dc:	f000 ffed 	bl	0x13ba
     3e0:	6878      	ldr	r0, [r7, #4]
     3e2:	f010 fa49 	bl	0x10878
     3e6:	bf00      	nop
     3e8:	3708      	adds	r7, #8
     3ea:	46bd      	mov	sp, r7
     3ec:	bd80      	pop	{r7, pc}
     3ee:	b580      	push	{r7, lr}
     3f0:	b084      	sub	sp, #16
     3f2:	af00      	add	r7, sp, #0
     3f4:	60f8      	str	r0, [r7, #12]
     3f6:	607a      	str	r2, [r7, #4]
     3f8:	603b      	str	r3, [r7, #0]
     3fa:	460b      	mov	r3, r1
     3fc:	72fb      	strb	r3, [r7, #11]
     3fe:	f997 100b 	ldrsb.w	r1, [r7, #11]
     402:	683b      	ldr	r3, [r7, #0]
     404:	687a      	ldr	r2, [r7, #4]
     406:	68f8      	ldr	r0, [r7, #12]
     408:	f7ff f994 	bl	0xfffff734
     40c:	4603      	mov	r3, r0
     40e:	4618      	mov	r0, r3
     410:	3710      	adds	r7, #16
     412:	46bd      	mov	sp, r7
     414:	bd80      	pop	{r7, pc}
     416:	b580      	push	{r7, lr}
     418:	b086      	sub	sp, #24
     41a:	af02      	add	r7, sp, #8
     41c:	60f8      	str	r0, [r7, #12]
     41e:	607a      	str	r2, [r7, #4]
     420:	603b      	str	r3, [r7, #0]
     422:	460b      	mov	r3, r1
     424:	72fb      	strb	r3, [r7, #11]
     426:	f997 100b 	ldrsb.w	r1, [r7, #11]
     42a:	69fb      	ldr	r3, [r7, #28]
     42c:	9301      	str	r3, [sp, #4]
     42e:	69bb      	ldr	r3, [r7, #24]
     430:	9300      	str	r3, [sp, #0]
     432:	683b      	ldr	r3, [r7, #0]
     434:	687a      	ldr	r2, [r7, #4]
     436:	68f8      	ldr	r0, [r7, #12]
     438:	f7ff f997 	bl	0xfffff76a
     43c:	4603      	mov	r3, r0
     43e:	4618      	mov	r0, r3
     440:	3710      	adds	r7, #16
     442:	46bd      	mov	sp, r7
     444:	bd80      	pop	{r7, pc}
     446:	b580      	push	{r7, lr}
     448:	b084      	sub	sp, #16
     44a:	af00      	add	r7, sp, #0
     44c:	60f8      	str	r0, [r7, #12]
     44e:	60b9      	str	r1, [r7, #8]
     450:	607a      	str	r2, [r7, #4]
     452:	687a      	ldr	r2, [r7, #4]
     454:	68b9      	ldr	r1, [r7, #8]
     456:	68f8      	ldr	r0, [r7, #12]
     458:	f7fe fa26 	bl	0xffffe8a8
     45c:	4603      	mov	r3, r0
     45e:	4618      	mov	r0, r3
     460:	3710      	adds	r7, #16
     462:	46bd      	mov	sp, r7
     464:	bd80      	pop	{r7, pc}
     466:	b580      	push	{r7, lr}
     468:	b084      	sub	sp, #16
     46a:	af00      	add	r7, sp, #0
     46c:	60f8      	str	r0, [r7, #12]
     46e:	60b9      	str	r1, [r7, #8]
     470:	607a      	str	r2, [r7, #4]
     472:	687a      	ldr	r2, [r7, #4]
     474:	68b9      	ldr	r1, [r7, #8]
     476:	68f8      	ldr	r0, [r7, #12]
     478:	f7fe f836 	bl	0xffffe4e8
     47c:	4603      	mov	r3, r0
     47e:	4618      	mov	r0, r3
     480:	3710      	adds	r7, #16
     482:	46bd      	mov	sp, r7
     484:	bd80      	pop	{r7, pc}
     486:	b580      	push	{r7, lr}
     488:	b082      	sub	sp, #8
     48a:	af00      	add	r7, sp, #0
     48c:	f44f 718c 	mov.w	r1, #280	@ 0x118
     490:	2001      	movs	r0, #1
     492:	f010 f803 	bl	0x1049c
     496:	4603      	mov	r3, r0
     498:	607b      	str	r3, [r7, #4]
     49a:	687b      	ldr	r3, [r7, #4]
     49c:	2b00      	cmp	r3, #0
     49e:	d101      	bne.n	0x4a4
     4a0:	2300      	movs	r3, #0
     4a2:	e003      	b.n	0x4ac
     4a4:	6878      	ldr	r0, [r7, #4]
     4a6:	f7fd ffff 	bl	0xffffe4a8
     4aa:	687b      	ldr	r3, [r7, #4]
     4ac:	4618      	mov	r0, r3
     4ae:	3708      	adds	r7, #8
     4b0:	46bd      	mov	sp, r7
     4b2:	bd80      	pop	{r7, pc}
     4b4:	b580      	push	{r7, lr}
     4b6:	b082      	sub	sp, #8
     4b8:	af00      	add	r7, sp, #0
     4ba:	6078      	str	r0, [r7, #4]
     4bc:	6878      	ldr	r0, [r7, #4]
     4be:	f7fe f801 	bl	0xffffe4c4
     4c2:	6878      	ldr	r0, [r7, #4]
     4c4:	f010 f9d8 	bl	0x10878
     4c8:	bf00      	nop
     4ca:	3708      	adds	r7, #8
     4cc:	46bd      	mov	sp, r7
     4ce:	bd80      	pop	{r7, pc}
     4d0:	b580      	push	{r7, lr}
     4d2:	b084      	sub	sp, #16
     4d4:	af00      	add	r7, sp, #0
     4d6:	60f8      	str	r0, [r7, #12]
     4d8:	60b9      	str	r1, [r7, #8]
     4da:	607a      	str	r2, [r7, #4]
     4dc:	687b      	ldr	r3, [r7, #4]
     4de:	68ba      	ldr	r2, [r7, #8]
     4e0:	2102      	movs	r1, #2
     4e2:	68f8      	ldr	r0, [r7, #12]
     4e4:	f000 f984 	bl	0x7f0
     4e8:	4603      	mov	r3, r0
     4ea:	4618      	mov	r0, r3
     4ec:	3710      	adds	r7, #16
     4ee:	46bd      	mov	sp, r7
     4f0:	bd80      	pop	{r7, pc}
     4f2:	b480      	push	{r7}
     4f4:	b085      	sub	sp, #20
     4f6:	af00      	add	r7, sp, #0
     4f8:	6078      	str	r0, [r7, #4]
     4fa:	6039      	str	r1, [r7, #0]
     4fc:	687b      	ldr	r3, [r7, #4]
     4fe:	60fb      	str	r3, [r7, #12]
     500:	e004      	b.n	0x50c
     502:	68fb      	ldr	r3, [r7, #12]
     504:	1c5a      	adds	r2, r3, #1
     506:	60fa      	str	r2, [r7, #12]
     508:	2200      	movs	r2, #0
     50a:	701a      	strb	r2, [r3, #0]
     50c:	683b      	ldr	r3, [r7, #0]
     50e:	1e5a      	subs	r2, r3, #1
     510:	603a      	str	r2, [r7, #0]
     512:	2b00      	cmp	r3, #0
     514:	d1f5      	bne.n	0x502
     516:	bf00      	nop
     518:	bf00      	nop
     51a:	3714      	adds	r7, #20
     51c:	46bd      	mov	sp, r7
     51e:	bc80      	pop	{r7}
     520:	4770      	bx	lr
     522:	b580      	push	{r7, lr}
     524:	b082      	sub	sp, #8
     526:	af00      	add	r7, sp, #0
     528:	6078      	str	r0, [r7, #4]
     52a:	f44f 72c4 	mov.w	r2, #392	@ 0x188
     52e:	2100      	movs	r1, #0
     530:	6878      	ldr	r0, [r7, #4]
     532:	f010 f9df 	bl	0x108f4
     536:	bf00      	nop
     538:	3708      	adds	r7, #8
     53a:	46bd      	mov	sp, r7
     53c:	bd80      	pop	{r7, pc}
     53e:	e92d 4fb0 	stmdb	sp!, {r4, r5, r7, r8, r9, sl, fp, lr}
     542:	b09e      	sub	sp, #120	@ 0x78
     544:	af02      	add	r7, sp, #8
     546:	61f8      	str	r0, [r7, #28]
     548:	2300      	movs	r3, #0
     54a:	623b      	str	r3, [r7, #32]
     54c:	f107 0324 	add.w	r3, r7, #36	@ 0x24
     550:	2210      	movs	r2, #16
     552:	2100      	movs	r1, #0
     554:	4618      	mov	r0, r3
     556:	f010 f9cd 	bl	0x108f4
     55a:	69f8      	ldr	r0, [r7, #28]
     55c:	f107 0224 	add.w	r2, r7, #36	@ 0x24
     560:	f107 0124 	add.w	r1, r7, #36	@ 0x24
     564:	f107 0320 	add.w	r3, r7, #32
     568:	9300      	str	r3, [sp, #0]
     56a:	4613      	mov	r3, r2
     56c:	2210      	movs	r2, #16
     56e:	f7ff fb13 	bl	0xfffffb98
     572:	6578      	str	r0, [r7, #84]	@ 0x54
     574:	6d7b      	ldr	r3, [r7, #84]	@ 0x54
     576:	2b00      	cmp	r3, #0
     578:	d001      	beq.n	0x57e
     57a:	6d7b      	ldr	r3, [r7, #84]	@ 0x54
     57c:	e133      	b.n	0x7e6
     57e:	f897 3024 	ldrb.w	r3, [r7, #36]	@ 0x24
     582:	061a      	lsls	r2, r3, #24
     584:	f897 3025 	ldrb.w	r3, [r7, #37]	@ 0x25
     588:	041b      	lsls	r3, r3, #16
     58a:	431a      	orrs	r2, r3
     58c:	f897 3026 	ldrb.w	r3, [r7, #38]	@ 0x26
     590:	021b      	lsls	r3, r3, #8
     592:	431a      	orrs	r2, r3
     594:	f897 3027 	ldrb.w	r3, [r7, #39]	@ 0x27
     598:	4313      	orrs	r3, r2
     59a:	461a      	mov	r2, r3
     59c:	f04f 0300 	mov.w	r3, #0
     5a0:	e9c7 2312 	strd	r2, r3, [r7, #72]	@ 0x48
     5a4:	f897 3028 	ldrb.w	r3, [r7, #40]	@ 0x28
     5a8:	061a      	lsls	r2, r3, #24
     5aa:	f897 3029 	ldrb.w	r3, [r7, #41]	@ 0x29
     5ae:	041b      	lsls	r3, r3, #16
     5b0:	431a      	orrs	r2, r3
     5b2:	f897 302a 	ldrb.w	r3, [r7, #42]	@ 0x2a
     5b6:	021b      	lsls	r3, r3, #8
     5b8:	431a      	orrs	r2, r3
     5ba:	f897 302b 	ldrb.w	r3, [r7, #43]	@ 0x2b
     5be:	4313      	orrs	r3, r2
     5c0:	461a      	mov	r2, r3
     5c2:	f04f 0300 	mov.w	r3, #0
     5c6:	e9c7 2310 	strd	r2, r3, [r7, #64]	@ 0x40
     5ca:	e9d7 2312 	ldrd	r2, r3, [r7, #72]	@ 0x48
     5ce:	f04f 0000 	mov.w	r0, #0
     5d2:	f04f 0100 	mov.w	r1, #0
     5d6:	0011      	movs	r1, r2
     5d8:	2000      	movs	r0, #0
     5da:	e9d7 2310 	ldrd	r2, r3, [r7, #64]	@ 0x40
     5de:	ea42 0400 	orr.w	r4, r2, r0
     5e2:	ea43 0501 	orr.w	r5, r3, r1
     5e6:	e9c7 4516 	strd	r4, r5, [r7, #88]	@ 0x58
     5ea:	f897 302c 	ldrb.w	r3, [r7, #44]	@ 0x2c
     5ee:	061a      	lsls	r2, r3, #24
     5f0:	f897 302d 	ldrb.w	r3, [r7, #45]	@ 0x2d
     5f4:	041b      	lsls	r3, r3, #16
     5f6:	431a      	orrs	r2, r3
     5f8:	f897 302e 	ldrb.w	r3, [r7, #46]	@ 0x2e
     5fc:	021b      	lsls	r3, r3, #8
     5fe:	4313      	orrs	r3, r2
     600:	f897 202f 	ldrb.w	r2, [r7, #47]	@ 0x2f
     604:	4313      	orrs	r3, r2
     606:	461a      	mov	r2, r3
     608:	f04f 0300 	mov.w	r3, #0
     60c:	e9c7 2312 	strd	r2, r3, [r7, #72]	@ 0x48
     610:	f897 3030 	ldrb.w	r3, [r7, #48]	@ 0x30
     614:	061a      	lsls	r2, r3, #24
     616:	f897 3031 	ldrb.w	r3, [r7, #49]	@ 0x31
     61a:	041b      	lsls	r3, r3, #16
     61c:	431a      	orrs	r2, r3
     61e:	f897 3032 	ldrb.w	r3, [r7, #50]	@ 0x32
     622:	021b      	lsls	r3, r3, #8
     624:	4313      	orrs	r3, r2
     626:	f897 2033 	ldrb.w	r2, [r7, #51]	@ 0x33
     62a:	4313      	orrs	r3, r2
     62c:	461a      	mov	r2, r3
     62e:	f04f 0300 	mov.w	r3, #0
     632:	e9c7 2310 	strd	r2, r3, [r7, #64]	@ 0x40
     636:	e9d7 0112 	ldrd	r0, r1, [r7, #72]	@ 0x48
     63a:	f04f 0200 	mov.w	r2, #0
     63e:	f04f 0300 	mov.w	r3, #0
     642:	0003      	movs	r3, r0
     644:	2200      	movs	r2, #0
     646:	e9d7 0110 	ldrd	r0, r1, [r7, #64]	@ 0x40
     64a:	ea40 0802 	orr.w	r8, r0, r2
     64e:	ea41 0903 	orr.w	r9, r1, r3
     652:	e9c7 8918 	strd	r8, r9, [r7, #96]	@ 0x60
     656:	69f9      	ldr	r1, [r7, #28]
     658:	e9d7 2318 	ldrd	r2, r3, [r7, #96]	@ 0x60
     65c:	e9c1 2320 	strd	r2, r3, [r1, #128]	@ 0x80
     660:	69f9      	ldr	r1, [r7, #28]
     662:	e9d7 2316 	ldrd	r2, r3, [r7, #88]	@ 0x58
     666:	e9c1 2340 	strd	r2, r3, [r1, #256]	@ 0x100
     66a:	69f9      	ldr	r1, [r7, #28]
     66c:	f04f 0200 	mov.w	r2, #0
     670:	f04f 0300 	mov.w	r3, #0
     674:	e9c1 2330 	strd	r2, r3, [r1, #192]	@ 0xc0
     678:	69f9      	ldr	r1, [r7, #28]
     67a:	f04f 0200 	mov.w	r2, #0
     67e:	f04f 0300 	mov.w	r3, #0
     682:	e9c1 2310 	strd	r2, r3, [r1, #64]	@ 0x40
     686:	2304      	movs	r3, #4
     688:	66fb      	str	r3, [r7, #108]	@ 0x6c
     68a:	e054      	b.n	0x736
     68c:	6e3b      	ldr	r3, [r7, #96]	@ 0x60
     68e:	f003 0201 	and.w	r2, r3, #1
     692:	4613      	mov	r3, r2
     694:	0152      	lsls	r2, r2, #5
     696:	1a9b      	subs	r3, r3, r2
     698:	061b      	lsls	r3, r3, #24
     69a:	637b      	str	r3, [r7, #52]	@ 0x34
     69c:	e9d7 2316 	ldrd	r2, r3, [r7, #88]	@ 0x58
     6a0:	f04f 0000 	mov.w	r0, #0
     6a4:	f04f 0100 	mov.w	r1, #0
     6a8:	07d1      	lsls	r1, r2, #31
     6aa:	2000      	movs	r0, #0
     6ac:	e9d7 4518 	ldrd	r4, r5, [r7, #96]	@ 0x60
     6b0:	f04f 0200 	mov.w	r2, #0
     6b4:	f04f 0300 	mov.w	r3, #0
     6b8:	0862      	lsrs	r2, r4, #1
     6ba:	ea42 72c5 	orr.w	r2, r2, r5, lsl #31
     6be:	086b      	lsrs	r3, r5, #1
     6c0:	ea40 0402 	orr.w	r4, r0, r2
     6c4:	60bc      	str	r4, [r7, #8]
     6c6:	430b      	orrs	r3, r1
     6c8:	60fb      	str	r3, [r7, #12]
     6ca:	e9d7 3402 	ldrd	r3, r4, [r7, #8]
     6ce:	e9c7 3418 	strd	r3, r4, [r7, #96]	@ 0x60
     6d2:	e9d7 0116 	ldrd	r0, r1, [r7, #88]	@ 0x58
     6d6:	f04f 0200 	mov.w	r2, #0
     6da:	f04f 0300 	mov.w	r3, #0
     6de:	0842      	lsrs	r2, r0, #1
     6e0:	ea42 72c1 	orr.w	r2, r2, r1, lsl #31
     6e4:	084b      	lsrs	r3, r1, #1
     6e6:	6b79      	ldr	r1, [r7, #52]	@ 0x34
     6e8:	460c      	mov	r4, r1
     6ea:	f04f 0500 	mov.w	r5, #0
     6ee:	f04f 0000 	mov.w	r0, #0
     6f2:	f04f 0100 	mov.w	r1, #0
     6f6:	0021      	movs	r1, r4
     6f8:	2000      	movs	r0, #0
     6fa:	ea82 0400 	eor.w	r4, r2, r0
     6fe:	603c      	str	r4, [r7, #0]
     700:	404b      	eors	r3, r1
     702:	607b      	str	r3, [r7, #4]
     704:	e9d7 3400 	ldrd	r3, r4, [r7]
     708:	e9c7 3416 	strd	r3, r4, [r7, #88]	@ 0x58
     70c:	69fa      	ldr	r2, [r7, #28]
     70e:	6efb      	ldr	r3, [r7, #108]	@ 0x6c
     710:	3308      	adds	r3, #8
     712:	00db      	lsls	r3, r3, #3
     714:	18d1      	adds	r1, r2, r3
     716:	e9d7 2318 	ldrd	r2, r3, [r7, #96]	@ 0x60
     71a:	e9c1 2300 	strd	r2, r3, [r1]
     71e:	69fa      	ldr	r2, [r7, #28]
     720:	6efb      	ldr	r3, [r7, #108]	@ 0x6c
     722:	3318      	adds	r3, #24
     724:	00db      	lsls	r3, r3, #3
     726:	18d1      	adds	r1, r2, r3
     728:	e9d7 2316 	ldrd	r2, r3, [r7, #88]	@ 0x58
     72c:	e9c1 2300 	strd	r2, r3, [r1]
     730:	6efb      	ldr	r3, [r7, #108]	@ 0x6c
     732:	105b      	asrs	r3, r3, #1
     734:	66fb      	str	r3, [r7, #108]	@ 0x6c
     736:	6efb      	ldr	r3, [r7, #108]	@ 0x6c
     738:	2b00      	cmp	r3, #0
     73a:	dca7      	bgt.n	0x68c
     73c:	2302      	movs	r3, #2
     73e:	66fb      	str	r3, [r7, #108]	@ 0x6c
     740:	e04d      	b.n	0x7de
     742:	69fb      	ldr	r3, [r7, #28]
     744:	f103 0240 	add.w	r2, r3, #64	@ 0x40
     748:	6efb      	ldr	r3, [r7, #108]	@ 0x6c
     74a:	00db      	lsls	r3, r3, #3
     74c:	4413      	add	r3, r2
     74e:	63fb      	str	r3, [r7, #60]	@ 0x3c
     750:	69fb      	ldr	r3, [r7, #28]
     752:	f103 02c0 	add.w	r2, r3, #192	@ 0xc0
     756:	6efb      	ldr	r3, [r7, #108]	@ 0x6c
     758:	00db      	lsls	r3, r3, #3
     75a:	4413      	add	r3, r2
     75c:	63bb      	str	r3, [r7, #56]	@ 0x38
     75e:	6bbb      	ldr	r3, [r7, #56]	@ 0x38
     760:	e9d3 2300 	ldrd	r2, r3, [r3]
     764:	e9c7 2316 	strd	r2, r3, [r7, #88]	@ 0x58
     768:	6bfb      	ldr	r3, [r7, #60]	@ 0x3c
     76a:	e9d3 2300 	ldrd	r2, r3, [r3]
     76e:	e9c7 2318 	strd	r2, r3, [r7, #96]	@ 0x60
     772:	2301      	movs	r3, #1
     774:	66bb      	str	r3, [r7, #104]	@ 0x68
     776:	e02b      	b.n	0x7d0
     778:	69fa      	ldr	r2, [r7, #28]
     77a:	6ebb      	ldr	r3, [r7, #104]	@ 0x68
     77c:	3318      	adds	r3, #24
     77e:	00db      	lsls	r3, r3, #3
     780:	4413      	add	r3, r2
     782:	e9d3 0100 	ldrd	r0, r1, [r3]
     786:	6ebb      	ldr	r3, [r7, #104]	@ 0x68
     788:	00db      	lsls	r3, r3, #3
     78a:	6bba      	ldr	r2, [r7, #56]	@ 0x38
     78c:	18d4      	adds	r4, r2, r3
     78e:	e9d7 2316 	ldrd	r2, r3, [r7, #88]	@ 0x58
     792:	ea80 0a02 	eor.w	sl, r0, r2
     796:	ea81 0b03 	eor.w	fp, r1, r3
     79a:	e9c4 ab00 	strd	sl, fp, [r4]
     79e:	69fa      	ldr	r2, [r7, #28]
     7a0:	6ebb      	ldr	r3, [r7, #104]	@ 0x68
     7a2:	3308      	adds	r3, #8
     7a4:	00db      	lsls	r3, r3, #3
     7a6:	4413      	add	r3, r2
     7a8:	e9d3 0100 	ldrd	r0, r1, [r3]
     7ac:	6ebb      	ldr	r3, [r7, #104]	@ 0x68
     7ae:	00db      	lsls	r3, r3, #3
     7b0:	6bfa      	ldr	r2, [r7, #60]	@ 0x3c
     7b2:	18d4      	adds	r4, r2, r3
     7b4:	e9d7 2318 	ldrd	r2, r3, [r7, #96]	@ 0x60
     7b8:	ea80 0502 	eor.w	r5, r0, r2
     7bc:	613d      	str	r5, [r7, #16]
     7be:	404b      	eors	r3, r1
     7c0:	617b      	str	r3, [r7, #20]
     7c2:	e9d7 2304 	ldrd	r2, r3, [r7, #16]
     7c6:	e9c4 2300 	strd	r2, r3, [r4]
     7ca:	6ebb      	ldr	r3, [r7, #104]	@ 0x68
     7cc:	3301      	adds	r3, #1
     7ce:	66bb      	str	r3, [r7, #104]	@ 0x68
     7d0:	6eba      	ldr	r2, [r7, #104]	@ 0x68
     7d2:	6efb      	ldr	r3, [r7, #108]	@ 0x6c
     7d4:	429a      	cmp	r2, r3
     7d6:	dbcf      	blt.n	0x778
     7d8:	6efb      	ldr	r3, [r7, #108]	@ 0x6c
     7da:	005b      	lsls	r3, r3, #1
     7dc:	66fb      	str	r3, [r7, #108]	@ 0x6c
     7de:	6efb      	ldr	r3, [r7, #108]	@ 0x6c
     7e0:	2b08      	cmp	r3, #8
     7e2:	ddae      	ble.n	0x742
     7e4:	2300      	movs	r3, #0
     7e6:	4618      	mov	r0, r3
     7e8:	3770      	adds	r7, #112	@ 0x70
     7ea:	46bd      	mov	sp, r7
     7ec:	e8bd 8fb0 	ldmia.w	sp!, {r4, r5, r7, r8, r9, sl, fp, pc}
     7f0:	b580      	push	{r7, lr}
     7f2:	b086      	sub	sp, #24
     7f4:	af00      	add	r7, sp, #0
     7f6:	60f8      	str	r0, [r7, #12]
     7f8:	607a      	str	r2, [r7, #4]
     7fa:	603b      	str	r3, [r7, #0]
     7fc:	460b      	mov	r3, r1
     7fe:	72fb      	strb	r3, [r7, #11]
     800:	6839      	ldr	r1, [r7, #0]
     802:	7afb      	ldrb	r3, [r7, #11]
     804:	2201      	movs	r2, #1
     806:	4618      	mov	r0, r3
     808:	f7ff f894 	bl	0xfffff934
     80c:	6178      	str	r0, [r7, #20]
     80e:	697b      	ldr	r3, [r7, #20]
     810:	2b00      	cmp	r3, #0
     812:	d102      	bne.n	0x81a
     814:	f06f 0313 	mvn.w	r3, #19
     818:	e02b      	b.n	0x872
     81a:	697b      	ldr	r3, [r7, #20]
     81c:	695b      	ldr	r3, [r3, #20]
     81e:	2b10      	cmp	r3, #16
     820:	d002      	beq.n	0x828
     822:	f06f 0313 	mvn.w	r3, #19
     826:	e024      	b.n	0x872
     828:	68fb      	ldr	r3, [r7, #12]
     82a:	4618      	mov	r0, r3
     82c:	f7ff f8bf 	bl	0xfffff9ae
     830:	68fb      	ldr	r3, [r7, #12]
     832:	6979      	ldr	r1, [r7, #20]
     834:	4618      	mov	r0, r3
     836:	f7ff f8d7 	bl	0xfffff9e8
     83a:	6138      	str	r0, [r7, #16]
     83c:	693b      	ldr	r3, [r7, #16]
     83e:	2b00      	cmp	r3, #0
     840:	d001      	beq.n	0x846
     842:	693b      	ldr	r3, [r7, #16]
     844:	e015      	b.n	0x872
     846:	68f8      	ldr	r0, [r7, #12]
     848:	683a      	ldr	r2, [r7, #0]
     84a:	2301      	movs	r3, #1
     84c:	6879      	ldr	r1, [r7, #4]
     84e:	f7ff f8f7 	bl	0xfffffa40
     852:	6138      	str	r0, [r7, #16]
     854:	693b      	ldr	r3, [r7, #16]
     856:	2b00      	cmp	r3, #0
     858:	d001      	beq.n	0x85e
     85a:	693b      	ldr	r3, [r7, #16]
     85c:	e009      	b.n	0x872
     85e:	68f8      	ldr	r0, [r7, #12]
     860:	f7ff fe6d 	bl	0x53e
     864:	6138      	str	r0, [r7, #16]
     866:	693b      	ldr	r3, [r7, #16]
     868:	2b00      	cmp	r3, #0
     86a:	d001      	beq.n	0x870
     86c:	693b      	ldr	r3, [r7, #16]
     86e:	e000      	b.n	0x872
     870:	2300      	movs	r3, #0
     872:	4618      	mov	r0, r3
     874:	3718      	adds	r7, #24
     876:	46bd      	mov	sp, r7
     878:	bd80      	pop	{r7, pc}
     87a:	0000      	movs	r0, r0
     87c:	e92d 0fb0 	stmdb	sp!, {r4, r5, r7, r8, r9, sl, fp}
     880:	b099      	sub	sp, #100	@ 0x64
     882:	af00      	add	r7, sp, #0
     884:	63f8      	str	r0, [r7, #60]	@ 0x3c
     886:	63b9      	str	r1, [r7, #56]	@ 0x38
     888:	637a      	str	r2, [r7, #52]	@ 0x34
     88a:	2300      	movs	r3, #0
     88c:	65fb      	str	r3, [r7, #92]	@ 0x5c
     88e:	6bbb      	ldr	r3, [r7, #56]	@ 0x38
     890:	330f      	adds	r3, #15
     892:	781b      	ldrb	r3, [r3, #0]
     894:	f003 030f 	and.w	r3, r3, #15
     898:	f887 3047 	strb.w	r3, [r7, #71]	@ 0x47
     89c:	f897 3047 	ldrb.w	r3, [r7, #71]	@ 0x47
     8a0:	6bfa      	ldr	r2, [r7, #60]	@ 0x3c
     8a2:	3318      	adds	r3, #24
     8a4:	00db      	lsls	r3, r3, #3
     8a6:	4413      	add	r3, r2
     8a8:	e9d3 2300 	ldrd	r2, r3, [r3]
     8ac:	e9c7 2314 	strd	r2, r3, [r7, #80]	@ 0x50
     8b0:	f897 3047 	ldrb.w	r3, [r7, #71]	@ 0x47
     8b4:	6bfa      	ldr	r2, [r7, #60]	@ 0x3c
     8b6:	3308      	adds	r3, #8
     8b8:	00db      	lsls	r3, r3, #3
     8ba:	4413      	add	r3, r2
     8bc:	e9d3 2300 	ldrd	r2, r3, [r3]
     8c0:	e9c7 2312 	strd	r2, r3, [r7, #72]	@ 0x48
     8c4:	230f      	movs	r3, #15
     8c6:	65fb      	str	r3, [r7, #92]	@ 0x5c
     8c8:	e0e6      	b.n	0xa98
     8ca:	6dfa      	ldr	r2, [r7, #92]	@ 0x5c
     8cc:	6bbb      	ldr	r3, [r7, #56]	@ 0x38
     8ce:	4413      	add	r3, r2
     8d0:	781b      	ldrb	r3, [r3, #0]
     8d2:	f003 030f 	and.w	r3, r3, #15
     8d6:	f887 3047 	strb.w	r3, [r7, #71]	@ 0x47
     8da:	6dfa      	ldr	r2, [r7, #92]	@ 0x5c
     8dc:	6bbb      	ldr	r3, [r7, #56]	@ 0x38
     8de:	4413      	add	r3, r2
     8e0:	781b      	ldrb	r3, [r3, #0]
     8e2:	091b      	lsrs	r3, r3, #4
     8e4:	f887 3046 	strb.w	r3, [r7, #70]	@ 0x46
     8e8:	6dfb      	ldr	r3, [r7, #92]	@ 0x5c
     8ea:	2b0f      	cmp	r3, #15
     8ec:	d068      	beq.n	0x9c0
     8ee:	f897 3048 	ldrb.w	r3, [r7, #72]	@ 0x48
     8f2:	f003 030f 	and.w	r3, r3, #15
     8f6:	f887 3045 	strb.w	r3, [r7, #69]	@ 0x45
     8fa:	e9d7 2314 	ldrd	r2, r3, [r7, #80]	@ 0x50
     8fe:	f04f 0400 	mov.w	r4, #0
     902:	f04f 0500 	mov.w	r5, #0
     906:	0715      	lsls	r5, r2, #28
     908:	2400      	movs	r4, #0
     90a:	e9d7 2312 	ldrd	r2, r3, [r7, #72]	@ 0x48
     90e:	f04f 0000 	mov.w	r0, #0
     912:	f04f 0100 	mov.w	r1, #0
     916:	0910      	lsrs	r0, r2, #4
     918:	ea40 7003 	orr.w	r0, r0, r3, lsl #28
     91c:	0919      	lsrs	r1, r3, #4
     91e:	ea44 0300 	orr.w	r3, r4, r0
     922:	62bb      	str	r3, [r7, #40]	@ 0x28
     924:	ea45 0301 	orr.w	r3, r5, r1
     928:	62fb      	str	r3, [r7, #44]	@ 0x2c
     92a:	e9d7 340a 	ldrd	r3, r4, [r7, #40]	@ 0x28
     92e:	e9c7 3412 	strd	r3, r4, [r7, #72]	@ 0x48
     932:	e9d7 2314 	ldrd	r2, r3, [r7, #80]	@ 0x50
     936:	f04f 0000 	mov.w	r0, #0
     93a:	f04f 0100 	mov.w	r1, #0
     93e:	0910      	lsrs	r0, r2, #4
     940:	ea40 7003 	orr.w	r0, r0, r3, lsl #28
     944:	0919      	lsrs	r1, r3, #4
     946:	e9c7 0114 	strd	r0, r1, [r7, #80]	@ 0x50
     94a:	f897 3045 	ldrb.w	r3, [r7, #69]	@ 0x45
     94e:	4ab6      	ldr	r2, [pc, #728]	@ (0xc28)
     950:	00db      	lsls	r3, r3, #3
     952:	4413      	add	r3, r2
     954:	e9d3 2300 	ldrd	r2, r3, [r3]
     958:	f04f 0000 	mov.w	r0, #0
     95c:	f04f 0100 	mov.w	r1, #0
     960:	0411      	lsls	r1, r2, #16
     962:	2000      	movs	r0, #0
     964:	e9d7 2314 	ldrd	r2, r3, [r7, #80]	@ 0x50
     968:	ea82 0400 	eor.w	r4, r2, r0
     96c:	623c      	str	r4, [r7, #32]
     96e:	404b      	eors	r3, r1
     970:	627b      	str	r3, [r7, #36]	@ 0x24
     972:	e9d7 3408 	ldrd	r3, r4, [r7, #32]
     976:	e9c7 3414 	strd	r3, r4, [r7, #80]	@ 0x50
     97a:	f897 3047 	ldrb.w	r3, [r7, #71]	@ 0x47
     97e:	6bfa      	ldr	r2, [r7, #60]	@ 0x3c
     980:	3318      	adds	r3, #24
     982:	00db      	lsls	r3, r3, #3
     984:	4413      	add	r3, r2
     986:	e9d3 0100 	ldrd	r0, r1, [r3]
     98a:	e9d7 2314 	ldrd	r2, r3, [r7, #80]	@ 0x50
     98e:	ea82 0400 	eor.w	r4, r2, r0
     992:	61bc      	str	r4, [r7, #24]
     994:	404b      	eors	r3, r1
     996:	61fb      	str	r3, [r7, #28]
     998:	e9d7 3406 	ldrd	r3, r4, [r7, #24]
     99c:	e9c7 3414 	strd	r3, r4, [r7, #80]	@ 0x50
     9a0:	f897 3047 	ldrb.w	r3, [r7, #71]	@ 0x47
     9a4:	6bfa      	ldr	r2, [r7, #60]	@ 0x3c
     9a6:	3308      	adds	r3, #8
     9a8:	00db      	lsls	r3, r3, #3
     9aa:	4413      	add	r3, r2
     9ac:	e9d3 0100 	ldrd	r0, r1, [r3]
     9b0:	e9d7 2312 	ldrd	r2, r3, [r7, #72]	@ 0x48
     9b4:	ea82 0800 	eor.w	r8, r2, r0
     9b8:	ea83 0901 	eor.w	r9, r3, r1
     9bc:	e9c7 8912 	strd	r8, r9, [r7, #72]	@ 0x48
     9c0:	f897 3048 	ldrb.w	r3, [r7, #72]	@ 0x48
     9c4:	f003 030f 	and.w	r3, r3, #15
     9c8:	f887 3045 	strb.w	r3, [r7, #69]	@ 0x45
     9cc:	e9d7 2314 	ldrd	r2, r3, [r7, #80]	@ 0x50
     9d0:	f04f 0400 	mov.w	r4, #0
     9d4:	f04f 0500 	mov.w	r5, #0
     9d8:	0715      	lsls	r5, r2, #28
     9da:	2400      	movs	r4, #0
     9dc:	e9d7 2312 	ldrd	r2, r3, [r7, #72]	@ 0x48
     9e0:	f04f 0000 	mov.w	r0, #0
     9e4:	f04f 0100 	mov.w	r1, #0
     9e8:	0910      	lsrs	r0, r2, #4
     9ea:	ea40 7003 	orr.w	r0, r0, r3, lsl #28
     9ee:	0919      	lsrs	r1, r3, #4
     9f0:	ea44 0300 	orr.w	r3, r4, r0
     9f4:	613b      	str	r3, [r7, #16]
     9f6:	ea45 0301 	orr.w	r3, r5, r1
     9fa:	617b      	str	r3, [r7, #20]
     9fc:	e9d7 3404 	ldrd	r3, r4, [r7, #16]
     a00:	e9c7 3412 	strd	r3, r4, [r7, #72]	@ 0x48
     a04:	e9d7 2314 	ldrd	r2, r3, [r7, #80]	@ 0x50
     a08:	f04f 0000 	mov.w	r0, #0
     a0c:	f04f 0100 	mov.w	r1, #0
     a10:	0910      	lsrs	r0, r2, #4
     a12:	ea40 7003 	orr.w	r0, r0, r3, lsl #28
     a16:	0919      	lsrs	r1, r3, #4
     a18:	e9c7 0114 	strd	r0, r1, [r7, #80]	@ 0x50
     a1c:	f897 3045 	ldrb.w	r3, [r7, #69]	@ 0x45
     a20:	4a81      	ldr	r2, [pc, #516]	@ (0xc28)
     a22:	00db      	lsls	r3, r3, #3
     a24:	4413      	add	r3, r2
     a26:	e9d3 2300 	ldrd	r2, r3, [r3]
     a2a:	f04f 0000 	mov.w	r0, #0
     a2e:	f04f 0100 	mov.w	r1, #0
     a32:	0411      	lsls	r1, r2, #16
     a34:	2000      	movs	r0, #0
     a36:	e9d7 2314 	ldrd	r2, r3, [r7, #80]	@ 0x50
     a3a:	ea82 0400 	eor.w	r4, r2, r0
     a3e:	60bc      	str	r4, [r7, #8]
     a40:	404b      	eors	r3, r1
     a42:	60fb      	str	r3, [r7, #12]
     a44:	e9d7 3402 	ldrd	r3, r4, [r7, #8]
     a48:	e9c7 3414 	strd	r3, r4, [r7, #80]	@ 0x50
     a4c:	f897 3046 	ldrb.w	r3, [r7, #70]	@ 0x46
     a50:	6bfa      	ldr	r2, [r7, #60]	@ 0x3c
     a52:	3318      	adds	r3, #24
     a54:	00db      	lsls	r3, r3, #3
     a56:	4413      	add	r3, r2
     a58:	e9d3 0100 	ldrd	r0, r1, [r3]
     a5c:	e9d7 2314 	ldrd	r2, r3, [r7, #80]	@ 0x50
     a60:	ea82 0400 	eor.w	r4, r2, r0
     a64:	603c      	str	r4, [r7, #0]
     a66:	404b      	eors	r3, r1
     a68:	607b      	str	r3, [r7, #4]
     a6a:	e9d7 3400 	ldrd	r3, r4, [r7]
     a6e:	e9c7 3414 	strd	r3, r4, [r7, #80]	@ 0x50
     a72:	f897 3046 	ldrb.w	r3, [r7, #70]	@ 0x46
     a76:	6bfa      	ldr	r2, [r7, #60]	@ 0x3c
     a78:	3308      	adds	r3, #8
     a7a:	00db      	lsls	r3, r3, #3
     a7c:	4413      	add	r3, r2
     a7e:	e9d3 0100 	ldrd	r0, r1, [r3]
     a82:	e9d7 2312 	ldrd	r2, r3, [r7, #72]	@ 0x48
     a86:	ea82 0a00 	eor.w	sl, r2, r0
     a8a:	ea83 0b01 	eor.w	fp, r3, r1
     a8e:	e9c7 ab12 	strd	sl, fp, [r7, #72]	@ 0x48
     a92:	6dfb      	ldr	r3, [r7, #92]	@ 0x5c
     a94:	3b01      	subs	r3, #1
     a96:	65fb      	str	r3, [r7, #92]	@ 0x5c
     a98:	6dfb      	ldr	r3, [r7, #92]	@ 0x5c
     a9a:	2b00      	cmp	r3, #0
     a9c:	f6bf af15 	bge.w	0x8ca
     aa0:	e9d7 0114 	ldrd	r0, r1, [r7, #80]	@ 0x50
     aa4:	f04f 0200 	mov.w	r2, #0
     aa8:	f04f 0300 	mov.w	r3, #0
     aac:	0e0a      	lsrs	r2, r1, #24
     aae:	2300      	movs	r3, #0
     ab0:	b2d2      	uxtb	r2, r2
     ab2:	6b7b      	ldr	r3, [r7, #52]	@ 0x34
     ab4:	701a      	strb	r2, [r3, #0]
     ab6:	e9d7 0114 	ldrd	r0, r1, [r7, #80]	@ 0x50
     aba:	f04f 0200 	mov.w	r2, #0
     abe:	f04f 0300 	mov.w	r3, #0
     ac2:	0c0a      	lsrs	r2, r1, #16
     ac4:	2300      	movs	r3, #0
     ac6:	6b79      	ldr	r1, [r7, #52]	@ 0x34
     ac8:	3101      	adds	r1, #1
     aca:	b2d3      	uxtb	r3, r2
     acc:	700b      	strb	r3, [r1, #0]
     ace:	e9d7 0114 	ldrd	r0, r1, [r7, #80]	@ 0x50
     ad2:	f04f 0200 	mov.w	r2, #0
     ad6:	f04f 0300 	mov.w	r3, #0
     ada:	0a0a      	lsrs	r2, r1, #8
     adc:	2300      	movs	r3, #0
     ade:	6b79      	ldr	r1, [r7, #52]	@ 0x34
     ae0:	3102      	adds	r1, #2
     ae2:	b2d3      	uxtb	r3, r2
     ae4:	700b      	strb	r3, [r1, #0]
     ae6:	e9d7 0114 	ldrd	r0, r1, [r7, #80]	@ 0x50
     aea:	f04f 0200 	mov.w	r2, #0
     aee:	f04f 0300 	mov.w	r3, #0
     af2:	000a      	movs	r2, r1
     af4:	2300      	movs	r3, #0
     af6:	6b79      	ldr	r1, [r7, #52]	@ 0x34
     af8:	3103      	adds	r1, #3
     afa:	b2d3      	uxtb	r3, r2
     afc:	700b      	strb	r3, [r1, #0]
     afe:	e9d7 0114 	ldrd	r0, r1, [r7, #80]	@ 0x50
     b02:	f04f 0200 	mov.w	r2, #0
     b06:	f04f 0300 	mov.w	r3, #0
     b0a:	0e02      	lsrs	r2, r0, #24
     b0c:	ea42 2201 	orr.w	r2, r2, r1, lsl #8
     b10:	0e0b      	lsrs	r3, r1, #24
     b12:	6b79      	ldr	r1, [r7, #52]	@ 0x34
     b14:	3104      	adds	r1, #4
     b16:	b2d3      	uxtb	r3, r2
     b18:	700b      	strb	r3, [r1, #0]
     b1a:	e9d7 0114 	ldrd	r0, r1, [r7, #80]	@ 0x50
     b1e:	f04f 0200 	mov.w	r2, #0
     b22:	f04f 0300 	mov.w	r3, #0
     b26:	0c02      	lsrs	r2, r0, #16
     b28:	ea42 4201 	orr.w	r2, r2, r1, lsl #16
     b2c:	0c0b      	lsrs	r3, r1, #16
     b2e:	6b79      	ldr	r1, [r7, #52]	@ 0x34
     b30:	3105      	adds	r1, #5
     b32:	b2d3      	uxtb	r3, r2
     b34:	700b      	strb	r3, [r1, #0]
     b36:	e9d7 0114 	ldrd	r0, r1, [r7, #80]	@ 0x50
     b3a:	f04f 0200 	mov.w	r2, #0
     b3e:	f04f 0300 	mov.w	r3, #0
     b42:	0a02      	lsrs	r2, r0, #8
     b44:	ea42 6201 	orr.w	r2, r2, r1, lsl #24
     b48:	0a0b      	lsrs	r3, r1, #8
     b4a:	6b79      	ldr	r1, [r7, #52]	@ 0x34
     b4c:	3106      	adds	r1, #6
     b4e:	b2d3      	uxtb	r3, r2
     b50:	700b      	strb	r3, [r1, #0]
     b52:	6b7b      	ldr	r3, [r7, #52]	@ 0x34
     b54:	3307      	adds	r3, #7
     b56:	f897 2050 	ldrb.w	r2, [r7, #80]	@ 0x50
     b5a:	701a      	strb	r2, [r3, #0]
     b5c:	e9d7 0112 	ldrd	r0, r1, [r7, #72]	@ 0x48
     b60:	f04f 0200 	mov.w	r2, #0
     b64:	f04f 0300 	mov.w	r3, #0
     b68:	0e0a      	lsrs	r2, r1, #24
     b6a:	2300      	movs	r3, #0
     b6c:	6b79      	ldr	r1, [r7, #52]	@ 0x34
     b6e:	3108      	adds	r1, #8
     b70:	b2d3      	uxtb	r3, r2
     b72:	700b      	strb	r3, [r1, #0]
     b74:	e9d7 0112 	ldrd	r0, r1, [r7, #72]	@ 0x48
     b78:	f04f 0200 	mov.w	r2, #0
     b7c:	f04f 0300 	mov.w	r3, #0
     b80:	0c0a      	lsrs	r2, r1, #16
     b82:	2300      	movs	r3, #0
     b84:	6b79      	ldr	r1, [r7, #52]	@ 0x34
     b86:	3109      	adds	r1, #9
     b88:	b2d3      	uxtb	r3, r2
     b8a:	700b      	strb	r3, [r1, #0]
     b8c:	e9d7 0112 	ldrd	r0, r1, [r7, #72]	@ 0x48
     b90:	f04f 0200 	mov.w	r2, #0
     b94:	f04f 0300 	mov.w	r3, #0
     b98:	0a0a      	lsrs	r2, r1, #8
     b9a:	2300      	movs	r3, #0
     b9c:	6b79      	ldr	r1, [r7, #52]	@ 0x34
     b9e:	310a      	adds	r1, #10
     ba0:	b2d3      	uxtb	r3, r2
     ba2:	700b      	strb	r3, [r1, #0]
     ba4:	e9d7 0112 	ldrd	r0, r1, [r7, #72]	@ 0x48
     ba8:	f04f 0200 	mov.w	r2, #0
     bac:	f04f 0300 	mov.w	r3, #0
     bb0:	000a      	movs	r2, r1
     bb2:	2300      	movs	r3, #0
     bb4:	6b79      	ldr	r1, [r7, #52]	@ 0x34
     bb6:	310b      	adds	r1, #11
     bb8:	b2d3      	uxtb	r3, r2
     bba:	700b      	strb	r3, [r1, #0]
     bbc:	e9d7 0112 	ldrd	r0, r1, [r7, #72]	@ 0x48
     bc0:	f04f 0200 	mov.w	r2, #0
     bc4:	f04f 0300 	mov.w	r3, #0
     bc8:	0e02      	lsrs	r2, r0, #24
     bca:	ea42 2201 	orr.w	r2, r2, r1, lsl #8
     bce:	0e0b      	lsrs	r3, r1, #24
     bd0:	6b79      	ldr	r1, [r7, #52]	@ 0x34
     bd2:	310c      	adds	r1, #12
     bd4:	b2d3      	uxtb	r3, r2
     bd6:	700b      	strb	r3, [r1, #0]
     bd8:	e9d7 0112 	ldrd	r0, r1, [r7, #72]	@ 0x48
     bdc:	f04f 0200 	mov.w	r2, #0
     be0:	f04f 0300 	mov.w	r3, #0
     be4:	0c02      	lsrs	r2, r0, #16
     be6:	ea42 4201 	orr.w	r2, r2, r1, lsl #16
     bea:	0c0b      	lsrs	r3, r1, #16
     bec:	6b79      	ldr	r1, [r7, #52]	@ 0x34
     bee:	310d      	adds	r1, #13
     bf0:	b2d3      	uxtb	r3, r2
     bf2:	700b      	strb	r3, [r1, #0]
     bf4:	e9d7 0112 	ldrd	r0, r1, [r7, #72]	@ 0x48
     bf8:	f04f 0200 	mov.w	r2, #0
     bfc:	f04f 0300 	mov.w	r3, #0
     c00:	0a02      	lsrs	r2, r0, #8
     c02:	ea42 6201 	orr.w	r2, r2, r1, lsl #24
     c06:	0a0b      	lsrs	r3, r1, #8
     c08:	6b79      	ldr	r1, [r7, #52]	@ 0x34
     c0a:	310e      	adds	r1, #14
     c0c:	b2d3      	uxtb	r3, r2
     c0e:	700b      	strb	r3, [r1, #0]
     c10:	6b7b      	ldr	r3, [r7, #52]	@ 0x34
     c12:	330f      	adds	r3, #15
     c14:	f897 2048 	ldrb.w	r2, [r7, #72]	@ 0x48
     c18:	701a      	strb	r2, [r3, #0]
     c1a:	bf00      	nop
     c1c:	3764      	adds	r7, #100	@ 0x64
     c1e:	46bd      	mov	sp, r7
     c20:	e8bd 0fb0 	ldmia.w	sp!, {r4, r5, r7, r8, r9, sl, fp}
     c24:	4770      	bx	lr
     c26:	bf00      	nop
     c28:	4450      	add	r0, sl
     c2a:	0003      	movs	r3, r0
     c2c:	b580      	push	{r7, lr}
     c2e:	b090      	sub	sp, #64	@ 0x40
     c30:	af02      	add	r7, sp, #8
     c32:	60f8      	str	r0, [r7, #12]
     c34:	60b9      	str	r1, [r7, #8]
     c36:	607a      	str	r2, [r7, #4]
     c38:	603b      	str	r3, [r7, #0]
     c3a:	2300      	movs	r3, #0
     c3c:	617b      	str	r3, [r7, #20]
     c3e:	683b      	ldr	r3, [r7, #0]
     c40:	2b00      	cmp	r3, #0
     c42:	d017      	beq.n	0xc74
     c44:	683b      	ldr	r3, [r7, #0]
     c46:	4618      	mov	r0, r3
     c48:	f04f 0100 	mov.w	r1, #0
     c4c:	f04f 0200 	mov.w	r2, #0
     c50:	f04f 0300 	mov.w	r3, #0
     c54:	0f4a      	lsrs	r2, r1, #29
     c56:	2300      	movs	r3, #0
     c58:	4313      	orrs	r3, r2
     c5a:	d10b      	bne.n	0xc74
     c5c:	6c7b      	ldr	r3, [r7, #68]	@ 0x44
     c5e:	4618      	mov	r0, r3
     c60:	f04f 0100 	mov.w	r1, #0
     c64:	f04f 0200 	mov.w	r2, #0
     c68:	f04f 0300 	mov.w	r3, #0
     c6c:	0f4a      	lsrs	r2, r1, #29
     c6e:	2300      	movs	r3, #0
     c70:	4313      	orrs	r3, r2
     c72:	d002      	beq.n	0xc7a
     c74:	f06f 0313 	mvn.w	r3, #19
     c78:	e107      	b.n	0xe8a
     c7a:	68fb      	ldr	r3, [r7, #12]
     c7c:	f503 73b0 	add.w	r3, r3, #352	@ 0x160
     c80:	2210      	movs	r2, #16
     c82:	2100      	movs	r1, #0
     c84:	4618      	mov	r0, r3
     c86:	f00f fe35 	bl	0x108f4
     c8a:	68fb      	ldr	r3, [r7, #12]
     c8c:	f503 73b8 	add.w	r3, r3, #368	@ 0x170
     c90:	2210      	movs	r2, #16
     c92:	2100      	movs	r1, #0
     c94:	4618      	mov	r0, r3
     c96:	f00f fe2d 	bl	0x108f4
     c9a:	68fb      	ldr	r3, [r7, #12]
     c9c:	68ba      	ldr	r2, [r7, #8]
     c9e:	f8c3 2180 	str.w	r2, [r3, #384]	@ 0x180
     ca2:	68f9      	ldr	r1, [r7, #12]
     ca4:	f04f 0200 	mov.w	r2, #0
     ca8:	f04f 0300 	mov.w	r3, #0
     cac:	e9c1 2350 	strd	r2, r3, [r1, #320]	@ 0x140
     cb0:	68f9      	ldr	r1, [r7, #12]
     cb2:	f04f 0200 	mov.w	r2, #0
     cb6:	f04f 0300 	mov.w	r3, #0
     cba:	e9c1 2352 	strd	r2, r3, [r1, #328]	@ 0x148
     cbe:	683b      	ldr	r3, [r7, #0]
     cc0:	2b0c      	cmp	r3, #12
     cc2:	d10c      	bne.n	0xcde
     cc4:	68fb      	ldr	r3, [r7, #12]
     cc6:	f503 73b0 	add.w	r3, r3, #352	@ 0x160
     cca:	683a      	ldr	r2, [r7, #0]
     ccc:	6879      	ldr	r1, [r7, #4]
     cce:	4618      	mov	r0, r3
     cd0:	f00f fde8 	bl	0x108a4
     cd4:	68fb      	ldr	r3, [r7, #12]
     cd6:	2201      	movs	r2, #1
     cd8:	f883 216f 	strb.w	r2, [r3, #367]	@ 0x16f
     cdc:	e07f      	b.n	0xdde
     cde:	f107 0318 	add.w	r3, r7, #24
     ce2:	2210      	movs	r2, #16
     ce4:	2100      	movs	r1, #0
     ce6:	4618      	mov	r0, r3
     ce8:	f00f fe04 	bl	0x108f4
     cec:	683b      	ldr	r3, [r7, #0]
     cee:	00db      	lsls	r3, r3, #3
     cf0:	0e1b      	lsrs	r3, r3, #24
     cf2:	b2db      	uxtb	r3, r3
     cf4:	f887 3024 	strb.w	r3, [r7, #36]	@ 0x24
     cf8:	683b      	ldr	r3, [r7, #0]
     cfa:	00db      	lsls	r3, r3, #3
     cfc:	0c1b      	lsrs	r3, r3, #16
     cfe:	b2db      	uxtb	r3, r3
     d00:	f887 3025 	strb.w	r3, [r7, #37]	@ 0x25
     d04:	683b      	ldr	r3, [r7, #0]
     d06:	00db      	lsls	r3, r3, #3
     d08:	0a1b      	lsrs	r3, r3, #8
     d0a:	b2db      	uxtb	r3, r3
     d0c:	f887 3026 	strb.w	r3, [r7, #38]	@ 0x26
     d10:	683b      	ldr	r3, [r7, #0]
     d12:	b2db      	uxtb	r3, r3
     d14:	00db      	lsls	r3, r3, #3
     d16:	b2db      	uxtb	r3, r3
     d18:	f887 3027 	strb.w	r3, [r7, #39]	@ 0x27
     d1c:	687b      	ldr	r3, [r7, #4]
     d1e:	633b      	str	r3, [r7, #48]	@ 0x30
     d20:	e033      	b.n	0xd8a
     d22:	683b      	ldr	r3, [r7, #0]
     d24:	2b10      	cmp	r3, #16
     d26:	bf28      	it	cs
     d28:	2310      	movcs	r3, #16
     d2a:	62fb      	str	r3, [r7, #44]	@ 0x2c
     d2c:	2300      	movs	r3, #0
     d2e:	637b      	str	r3, [r7, #52]	@ 0x34
     d30:	e015      	b.n	0xd5e
     d32:	68fa      	ldr	r2, [r7, #12]
     d34:	6b7b      	ldr	r3, [r7, #52]	@ 0x34
     d36:	4413      	add	r3, r2
     d38:	f503 73b0 	add.w	r3, r3, #352	@ 0x160
     d3c:	781a      	ldrb	r2, [r3, #0]
     d3e:	6b39      	ldr	r1, [r7, #48]	@ 0x30
     d40:	6b7b      	ldr	r3, [r7, #52]	@ 0x34
     d42:	440b      	add	r3, r1
     d44:	781b      	ldrb	r3, [r3, #0]
     d46:	4053      	eors	r3, r2
     d48:	b2d9      	uxtb	r1, r3
     d4a:	68fa      	ldr	r2, [r7, #12]
     d4c:	6b7b      	ldr	r3, [r7, #52]	@ 0x34
     d4e:	4413      	add	r3, r2
     d50:	f503 73b0 	add.w	r3, r3, #352	@ 0x160
     d54:	460a      	mov	r2, r1
     d56:	701a      	strb	r2, [r3, #0]
     d58:	6b7b      	ldr	r3, [r7, #52]	@ 0x34
     d5a:	3301      	adds	r3, #1
     d5c:	637b      	str	r3, [r7, #52]	@ 0x34
     d5e:	6b7a      	ldr	r2, [r7, #52]	@ 0x34
     d60:	6afb      	ldr	r3, [r7, #44]	@ 0x2c
     d62:	429a      	cmp	r2, r3
     d64:	d3e5      	bcc.n	0xd32
     d66:	68fb      	ldr	r3, [r7, #12]
     d68:	f503 71b0 	add.w	r1, r3, #352	@ 0x160
     d6c:	68fb      	ldr	r3, [r7, #12]
     d6e:	f503 73b0 	add.w	r3, r3, #352	@ 0x160
     d72:	461a      	mov	r2, r3
     d74:	68f8      	ldr	r0, [r7, #12]
     d76:	f7ff fd81 	bl	0x87c
     d7a:	683a      	ldr	r2, [r7, #0]
     d7c:	6afb      	ldr	r3, [r7, #44]	@ 0x2c
     d7e:	1ad3      	subs	r3, r2, r3
     d80:	603b      	str	r3, [r7, #0]
     d82:	6b3a      	ldr	r2, [r7, #48]	@ 0x30
     d84:	6afb      	ldr	r3, [r7, #44]	@ 0x2c
     d86:	4413      	add	r3, r2
     d88:	633b      	str	r3, [r7, #48]	@ 0x30
     d8a:	683b      	ldr	r3, [r7, #0]
     d8c:	2b00      	cmp	r3, #0
     d8e:	d1c8      	bne.n	0xd22
     d90:	2300      	movs	r3, #0
     d92:	637b      	str	r3, [r7, #52]	@ 0x34
     d94:	e016      	b.n	0xdc4
     d96:	68fa      	ldr	r2, [r7, #12]
     d98:	6b7b      	ldr	r3, [r7, #52]	@ 0x34
     d9a:	4413      	add	r3, r2
     d9c:	f503 73b0 	add.w	r3, r3, #352	@ 0x160
     da0:	781a      	ldrb	r2, [r3, #0]
     da2:	f107 0118 	add.w	r1, r7, #24
     da6:	6b7b      	ldr	r3, [r7, #52]	@ 0x34
     da8:	440b      	add	r3, r1
     daa:	781b      	ldrb	r3, [r3, #0]
     dac:	4053      	eors	r3, r2
     dae:	b2d9      	uxtb	r1, r3
     db0:	68fa      	ldr	r2, [r7, #12]
     db2:	6b7b      	ldr	r3, [r7, #52]	@ 0x34
     db4:	4413      	add	r3, r2
     db6:	f503 73b0 	add.w	r3, r3, #352	@ 0x160
     dba:	460a      	mov	r2, r1
     dbc:	701a      	strb	r2, [r3, #0]
     dbe:	6b7b      	ldr	r3, [r7, #52]	@ 0x34
     dc0:	3301      	adds	r3, #1
     dc2:	637b      	str	r3, [r7, #52]	@ 0x34
     dc4:	6b7b      	ldr	r3, [r7, #52]	@ 0x34
     dc6:	2b0f      	cmp	r3, #15
     dc8:	d9e5      	bls.n	0xd96
     dca:	68fb      	ldr	r3, [r7, #12]
     dcc:	f503 71b0 	add.w	r1, r3, #352	@ 0x160
     dd0:	68fb      	ldr	r3, [r7, #12]
     dd2:	f503 73b0 	add.w	r3, r3, #352	@ 0x160
     dd6:	461a      	mov	r2, r3
     dd8:	68f8      	ldr	r0, [r7, #12]
     dda:	f7ff fd4f 	bl	0x87c
     dde:	68f8      	ldr	r0, [r7, #12]
     de0:	68fb      	ldr	r3, [r7, #12]
     de2:	f503 71b0 	add.w	r1, r3, #352	@ 0x160
     de6:	68fb      	ldr	r3, [r7, #12]
     de8:	f503 72a8 	add.w	r2, r3, #336	@ 0x150
     dec:	f107 0314 	add.w	r3, r7, #20
     df0:	9300      	str	r3, [sp, #0]
     df2:	4613      	mov	r3, r2
     df4:	2210      	movs	r2, #16
     df6:	f7fe fecf 	bl	0xfffffb98
     dfa:	62b8      	str	r0, [r7, #40]	@ 0x28
     dfc:	6abb      	ldr	r3, [r7, #40]	@ 0x28
     dfe:	2b00      	cmp	r3, #0
     e00:	d001      	beq.n	0xe06
     e02:	6abb      	ldr	r3, [r7, #40]	@ 0x28
     e04:	e041      	b.n	0xe8a
     e06:	6c7b      	ldr	r3, [r7, #68]	@ 0x44
     e08:	461a      	mov	r2, r3
     e0a:	f04f 0300 	mov.w	r3, #0
     e0e:	68f9      	ldr	r1, [r7, #12]
     e10:	e9c1 2352 	strd	r2, r3, [r1, #328]	@ 0x148
     e14:	6c3b      	ldr	r3, [r7, #64]	@ 0x40
     e16:	633b      	str	r3, [r7, #48]	@ 0x30
     e18:	e033      	b.n	0xe82
     e1a:	6c7b      	ldr	r3, [r7, #68]	@ 0x44
     e1c:	2b10      	cmp	r3, #16
     e1e:	bf28      	it	cs
     e20:	2310      	movcs	r3, #16
     e22:	62fb      	str	r3, [r7, #44]	@ 0x2c
     e24:	2300      	movs	r3, #0
     e26:	637b      	str	r3, [r7, #52]	@ 0x34
     e28:	e015      	b.n	0xe56
     e2a:	68fa      	ldr	r2, [r7, #12]
     e2c:	6b7b      	ldr	r3, [r7, #52]	@ 0x34
     e2e:	4413      	add	r3, r2
     e30:	f503 73b8 	add.w	r3, r3, #368	@ 0x170
     e34:	781a      	ldrb	r2, [r3, #0]
     e36:	6b39      	ldr	r1, [r7, #48]	@ 0x30
     e38:	6b7b      	ldr	r3, [r7, #52]	@ 0x34
     e3a:	440b      	add	r3, r1
     e3c:	781b      	ldrb	r3, [r3, #0]
     e3e:	4053      	eors	r3, r2
     e40:	b2d9      	uxtb	r1, r3
     e42:	68fa      	ldr	r2, [r7, #12]
     e44:	6b7b      	ldr	r3, [r7, #52]	@ 0x34
     e46:	4413      	add	r3, r2
     e48:	f503 73b8 	add.w	r3, r3, #368	@ 0x170
     e4c:	460a      	mov	r2, r1
     e4e:	701a      	strb	r2, [r3, #0]
     e50:	6b7b      	ldr	r3, [r7, #52]	@ 0x34
     e52:	3301      	adds	r3, #1
     e54:	637b      	str	r3, [r7, #52]	@ 0x34
     e56:	6b7a      	ldr	r2, [r7, #52]	@ 0x34
     e58:	6afb      	ldr	r3, [r7, #44]	@ 0x2c
     e5a:	429a      	cmp	r2, r3
     e5c:	d3e5      	bcc.n	0xe2a
     e5e:	68fb      	ldr	r3, [r7, #12]
     e60:	f503 71b8 	add.w	r1, r3, #368	@ 0x170
     e64:	68fb      	ldr	r3, [r7, #12]
     e66:	f503 73b8 	add.w	r3, r3, #368	@ 0x170
     e6a:	461a      	mov	r2, r3
     e6c:	68f8      	ldr	r0, [r7, #12]
     e6e:	f7ff fd05 	bl	0x87c
     e72:	6c7a      	ldr	r2, [r7, #68]	@ 0x44
     e74:	6afb      	ldr	r3, [r7, #44]	@ 0x2c
     e76:	1ad3      	subs	r3, r2, r3
     e78:	647b      	str	r3, [r7, #68]	@ 0x44
     e7a:	6b3a      	ldr	r2, [r7, #48]	@ 0x30
     e7c:	6afb      	ldr	r3, [r7, #44]	@ 0x2c
     e7e:	4413      	add	r3, r2
     e80:	633b      	str	r3, [r7, #48]	@ 0x30
     e82:	6c7b      	ldr	r3, [r7, #68]	@ 0x44
     e84:	2b00      	cmp	r3, #0
     e86:	d1c8      	bne.n	0xe1a
     e88:	2300      	movs	r3, #0
     e8a:	4618      	mov	r0, r3
     e8c:	3738      	adds	r7, #56	@ 0x38
     e8e:	46bd      	mov	sp, r7
     e90:	bd80      	pop	{r7, pc}
     e92:	e92d 4fb0 	stmdb	sp!, {r4, r5, r7, r8, r9, sl, fp, lr}
     e96:	b090      	sub	sp, #64	@ 0x40
     e98:	af02      	add	r7, sp, #8
     e9a:	60f8      	str	r0, [r7, #12]
     e9c:	60b9      	str	r1, [r7, #8]
     e9e:	607a      	str	r2, [r7, #4]
     ea0:	603b      	str	r3, [r7, #0]
     ea2:	683b      	ldr	r3, [r7, #0]
     ea4:	62fb      	str	r3, [r7, #44]	@ 0x2c
     ea6:	2300      	movs	r3, #0
     ea8:	613b      	str	r3, [r7, #16]
     eaa:	683a      	ldr	r2, [r7, #0]
     eac:	687b      	ldr	r3, [r7, #4]
     eae:	429a      	cmp	r2, r3
     eb0:	d909      	bls.n	0xec6
     eb2:	683a      	ldr	r2, [r7, #0]
     eb4:	687b      	ldr	r3, [r7, #4]
     eb6:	1ad3      	subs	r3, r2, r3
     eb8:	461a      	mov	r2, r3
     eba:	68bb      	ldr	r3, [r7, #8]
     ebc:	4293      	cmp	r3, r2
     ebe:	d902      	bls.n	0xec6
     ec0:	f06f 0313 	mvn.w	r3, #19
     ec4:	e0d0      	b.n	0x1068
     ec6:	68fb      	ldr	r3, [r7, #12]
     ec8:	e9d3 0150 	ldrd	r0, r1, [r3, #320]	@ 0x140
     ecc:	68bb      	ldr	r3, [r7, #8]
     ece:	461a      	mov	r2, r3
     ed0:	f04f 0300 	mov.w	r3, #0
     ed4:	eb10 0a02 	adds.w	sl, r0, r2
     ed8:	eb41 0b03 	adc.w	fp, r1, r3
     edc:	68fb      	ldr	r3, [r7, #12]
     ede:	e9d3 2350 	ldrd	r2, r3, [r3, #320]	@ 0x140
     ee2:	459b      	cmp	fp, r3
     ee4:	bf08      	it	eq
     ee6:	4592      	cmpeq	sl, r2
     ee8:	d312      	bcc.n	0xf10
     eea:	68fb      	ldr	r3, [r7, #12]
     eec:	e9d3 0150 	ldrd	r0, r1, [r3, #320]	@ 0x140
     ef0:	68bb      	ldr	r3, [r7, #8]
     ef2:	461a      	mov	r2, r3
     ef4:	f04f 0300 	mov.w	r3, #0
     ef8:	eb10 0802 	adds.w	r8, r0, r2
     efc:	eb41 0903 	adc.w	r9, r1, r3
     f00:	f06f 021f 	mvn.w	r2, #31
     f04:	f04f 030f 	mov.w	r3, #15
     f08:	454b      	cmp	r3, r9
     f0a:	bf08      	it	eq
     f0c:	4542      	cmpeq	r2, r8
     f0e:	d202      	bcs.n	0xf16
     f10:	f06f 0313 	mvn.w	r3, #19
     f14:	e0a8      	b.n	0x1068
     f16:	68fb      	ldr	r3, [r7, #12]
     f18:	e9d3 0150 	ldrd	r0, r1, [r3, #320]	@ 0x140
     f1c:	68bb      	ldr	r3, [r7, #8]
     f1e:	461a      	mov	r2, r3
     f20:	f04f 0300 	mov.w	r3, #0
     f24:	1884      	adds	r4, r0, r2
     f26:	eb41 0503 	adc.w	r5, r1, r3
     f2a:	68fb      	ldr	r3, [r7, #12]
     f2c:	e9c3 4550 	strd	r4, r5, [r3, #320]	@ 0x140
     f30:	687b      	ldr	r3, [r7, #4]
     f32:	633b      	str	r3, [r7, #48]	@ 0x30
     f34:	e093      	b.n	0x105e
     f36:	68bb      	ldr	r3, [r7, #8]
     f38:	2b10      	cmp	r3, #16
     f3a:	bf28      	it	cs
     f3c:	2310      	movcs	r3, #16
     f3e:	62bb      	str	r3, [r7, #40]	@ 0x28
     f40:	2310      	movs	r3, #16
     f42:	637b      	str	r3, [r7, #52]	@ 0x34
     f44:	e014      	b.n	0xf70
     f46:	6b7b      	ldr	r3, [r7, #52]	@ 0x34
     f48:	3b01      	subs	r3, #1
     f4a:	68fa      	ldr	r2, [r7, #12]
     f4c:	441a      	add	r2, r3
     f4e:	f892 2160 	ldrb.w	r2, [r2, #352]	@ 0x160
     f52:	3201      	adds	r2, #1
     f54:	b2d1      	uxtb	r1, r2
     f56:	68fa      	ldr	r2, [r7, #12]
     f58:	441a      	add	r2, r3
     f5a:	f882 1160 	strb.w	r1, [r2, #352]	@ 0x160
     f5e:	68fa      	ldr	r2, [r7, #12]
     f60:	4413      	add	r3, r2
     f62:	f893 3160 	ldrb.w	r3, [r3, #352]	@ 0x160
     f66:	2b00      	cmp	r3, #0
     f68:	d106      	bne.n	0xf78
     f6a:	6b7b      	ldr	r3, [r7, #52]	@ 0x34
     f6c:	3b01      	subs	r3, #1
     f6e:	637b      	str	r3, [r7, #52]	@ 0x34
     f70:	6b7b      	ldr	r3, [r7, #52]	@ 0x34
     f72:	2b0c      	cmp	r3, #12
     f74:	d8e7      	bhi.n	0xf46
     f76:	e000      	b.n	0xf7a
     f78:	bf00      	nop
     f7a:	68f8      	ldr	r0, [r7, #12]
     f7c:	68fb      	ldr	r3, [r7, #12]
     f7e:	f503 71b0 	add.w	r1, r3, #352	@ 0x160
     f82:	f107 0214 	add.w	r2, r7, #20
     f86:	f107 0310 	add.w	r3, r7, #16
     f8a:	9300      	str	r3, [sp, #0]
     f8c:	4613      	mov	r3, r2
     f8e:	2210      	movs	r2, #16
     f90:	f7fe fe02 	bl	0xfffffb98
     f94:	6278      	str	r0, [r7, #36]	@ 0x24
     f96:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
     f98:	2b00      	cmp	r3, #0
     f9a:	d001      	beq.n	0xfa0
     f9c:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
     f9e:	e063      	b.n	0x1068
     fa0:	2300      	movs	r3, #0
     fa2:	637b      	str	r3, [r7, #52]	@ 0x34
     fa4:	e041      	b.n	0x102a
     fa6:	68fb      	ldr	r3, [r7, #12]
     fa8:	f8d3 3180 	ldr.w	r3, [r3, #384]	@ 0x180
     fac:	2b00      	cmp	r3, #0
     fae:	d112      	bne.n	0xfd6
     fb0:	68fa      	ldr	r2, [r7, #12]
     fb2:	6b7b      	ldr	r3, [r7, #52]	@ 0x34
     fb4:	4413      	add	r3, r2
     fb6:	f503 73b8 	add.w	r3, r3, #368	@ 0x170
     fba:	781a      	ldrb	r2, [r3, #0]
     fbc:	6b39      	ldr	r1, [r7, #48]	@ 0x30
     fbe:	6b7b      	ldr	r3, [r7, #52]	@ 0x34
     fc0:	440b      	add	r3, r1
     fc2:	781b      	ldrb	r3, [r3, #0]
     fc4:	4053      	eors	r3, r2
     fc6:	b2d9      	uxtb	r1, r3
     fc8:	68fa      	ldr	r2, [r7, #12]
     fca:	6b7b      	ldr	r3, [r7, #52]	@ 0x34
     fcc:	4413      	add	r3, r2
     fce:	f503 73b8 	add.w	r3, r3, #368	@ 0x170
     fd2:	460a      	mov	r2, r1
     fd4:	701a      	strb	r2, [r3, #0]
     fd6:	f107 0214 	add.w	r2, r7, #20
     fda:	6b7b      	ldr	r3, [r7, #52]	@ 0x34
     fdc:	4413      	add	r3, r2
     fde:	7819      	ldrb	r1, [r3, #0]
     fe0:	6b3a      	ldr	r2, [r7, #48]	@ 0x30
     fe2:	6b7b      	ldr	r3, [r7, #52]	@ 0x34
     fe4:	4413      	add	r3, r2
     fe6:	781a      	ldrb	r2, [r3, #0]
     fe8:	6af8      	ldr	r0, [r7, #44]	@ 0x2c
     fea:	6b7b      	ldr	r3, [r7, #52]	@ 0x34
     fec:	4403      	add	r3, r0
     fee:	404a      	eors	r2, r1
     ff0:	b2d2      	uxtb	r2, r2
     ff2:	701a      	strb	r2, [r3, #0]
     ff4:	68fb      	ldr	r3, [r7, #12]
     ff6:	f8d3 3180 	ldr.w	r3, [r3, #384]	@ 0x180
     ffa:	2b01      	cmp	r3, #1
     ffc:	d112      	bne.n	0x1024
     ffe:	68fa      	ldr	r2, [r7, #12]
    1000:	6b7b      	ldr	r3, [r7, #52]	@ 0x34
    1002:	4413      	add	r3, r2
    1004:	f503 73b8 	add.w	r3, r3, #368	@ 0x170
    1008:	781a      	ldrb	r2, [r3, #0]
    100a:	6af9      	ldr	r1, [r7, #44]	@ 0x2c
    100c:	6b7b      	ldr	r3, [r7, #52]	@ 0x34
    100e:	440b      	add	r3, r1
    1010:	781b      	ldrb	r3, [r3, #0]
    1012:	4053      	eors	r3, r2
    1014:	b2d9      	uxtb	r1, r3
    1016:	68fa      	ldr	r2, [r7, #12]
    1018:	6b7b      	ldr	r3, [r7, #52]	@ 0x34
    101a:	4413      	add	r3, r2
    101c:	f503 73b8 	add.w	r3, r3, #368	@ 0x170
    1020:	460a      	mov	r2, r1
    1022:	701a      	strb	r2, [r3, #0]
    1024:	6b7b      	ldr	r3, [r7, #52]	@ 0x34
    1026:	3301      	adds	r3, #1
    1028:	637b      	str	r3, [r7, #52]	@ 0x34
    102a:	6b7a      	ldr	r2, [r7, #52]	@ 0x34
    102c:	6abb      	ldr	r3, [r7, #40]	@ 0x28
    102e:	429a      	cmp	r2, r3
    1030:	d3b9      	bcc.n	0xfa6
    1032:	68fb      	ldr	r3, [r7, #12]
    1034:	f503 71b8 	add.w	r1, r3, #368	@ 0x170
    1038:	68fb      	ldr	r3, [r7, #12]
    103a:	f503 73b8 	add.w	r3, r3, #368	@ 0x170
    103e:	461a      	mov	r2, r3
    1040:	68f8      	ldr	r0, [r7, #12]
    1042:	f7ff fc1b 	bl	0x87c
    1046:	68ba      	ldr	r2, [r7, #8]
    1048:	6abb      	ldr	r3, [r7, #40]	@ 0x28
    104a:	1ad3      	subs	r3, r2, r3
    104c:	60bb      	str	r3, [r7, #8]
    104e:	6b3a      	ldr	r2, [r7, #48]	@ 0x30
    1050:	6abb      	ldr	r3, [r7, #40]	@ 0x28
    1052:	4413      	add	r3, r2
    1054:	633b      	str	r3, [r7, #48]	@ 0x30
    1056:	6afa      	ldr	r2, [r7, #44]	@ 0x2c
    1058:	6abb      	ldr	r3, [r7, #40]	@ 0x28
    105a:	4413      	add	r3, r2
    105c:	62fb      	str	r3, [r7, #44]	@ 0x2c
    105e:	68bb      	ldr	r3, [r7, #8]
    1060:	2b00      	cmp	r3, #0
    1062:	f47f af68 	bne.w	0xf36
    1066:	2300      	movs	r3, #0
    1068:	4618      	mov	r0, r3
    106a:	3738      	adds	r7, #56	@ 0x38
    106c:	46bd      	mov	sp, r7
    106e:	e8bd 8fb0 	ldmia.w	sp!, {r4, r5, r7, r8, r9, sl, fp, pc}
    1072:	b580      	push	{r7, lr}
    1074:	b08e      	sub	sp, #56	@ 0x38
    1076:	af00      	add	r7, sp, #0
    1078:	60f8      	str	r0, [r7, #12]
    107a:	60b9      	str	r1, [r7, #8]
    107c:	607a      	str	r2, [r7, #4]
    107e:	68fb      	ldr	r3, [r7, #12]
    1080:	e9d3 0150 	ldrd	r0, r1, [r3, #320]	@ 0x140
    1084:	f04f 0200 	mov.w	r2, #0
    1088:	f04f 0300 	mov.w	r3, #0
    108c:	00cb      	lsls	r3, r1, #3
    108e:	ea43 7350 	orr.w	r3, r3, r0, lsr #29
