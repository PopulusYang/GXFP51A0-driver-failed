
/home/Populus/Projects/fingerprint/extracted_firmware/fw_mod_04_flash_v2_4112.bin:     file format binary


Disassembly of section .data:

00000000 <.data>:
       0:	f85d 7b04 	ldr.w	r7, [sp], #4
       4:	4770      	bx	lr
       6:	bf00      	nop
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
      36:	f85d 7b04 	ldr.w	r7, [sp], #4
      3a:	4770      	bx	lr
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
     10c:	f7ff fbd3 	bl	0xfffff8b6
     110:	4603      	mov	r3, r0
     112:	4619      	mov	r1, r3
     114:	68fb      	ldr	r3, [r7, #12]
     116:	6a5b      	ldr	r3, [r3, #36]	@ 0x24
     118:	461a      	mov	r2, r3
     11a:	4628      	mov	r0, r5
     11c:	47a0      	blx	r4
     11e:	e013      	b.n	0x148
     120:	68f8      	ldr	r0, [r7, #12]
     122:	f7ff fbb5 	bl	0xfffff890
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
     15c:	f7ff fb98 	bl	0xfffff890
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
     196:	f7ff fb7b 	bl	0xfffff890
     19a:	4603      	mov	r3, r0
     19c:	687a      	ldr	r2, [r7, #4]
     19e:	4619      	mov	r1, r3
     1a0:	68b8      	ldr	r0, [r7, #8]
     1a2:	47a0      	blx	r4
     1a4:	4603      	mov	r3, r0
     1a6:	e008      	b.n	0x1ba
     1a8:	68f8      	ldr	r0, [r7, #12]
     1aa:	f7ff fb71 	bl	0xfffff890
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
     1ee:	4b13      	ldr	r3, [pc, #76]	@ (0x23c)
     1f0:	e01e      	b.n	0x230
     1f2:	78fb      	ldrb	r3, [r7, #3]
     1f4:	2b03      	cmp	r3, #3
     1f6:	d00a      	beq.n	0x20e
     1f8:	2b04      	cmp	r3, #4
     1fa:	d00f      	beq.n	0x21c
     1fc:	2b00      	cmp	r3, #0
     1fe:	d114      	bne.n	0x22a
     200:	687b      	ldr	r3, [r7, #4]
     202:	4a0f      	ldr	r2, [pc, #60]	@ (0x240)
     204:	60da      	str	r2, [r3, #12]
     206:	687b      	ldr	r3, [r7, #4]
     208:	4a0e      	ldr	r2, [pc, #56]	@ (0x244)
     20a:	611a      	str	r2, [r3, #16]
     20c:	e00f      	b.n	0x22e
     20e:	687b      	ldr	r3, [r7, #4]
     210:	4a0d      	ldr	r2, [pc, #52]	@ (0x248)
     212:	60da      	str	r2, [r3, #12]
     214:	687b      	ldr	r3, [r7, #4]
     216:	4a0d      	ldr	r2, [pc, #52]	@ (0x24c)
     218:	611a      	str	r2, [r3, #16]
     21a:	e008      	b.n	0x22e
     21c:	687b      	ldr	r3, [r7, #4]
     21e:	2200      	movs	r2, #0
     220:	60da      	str	r2, [r3, #12]
     222:	687b      	ldr	r3, [r7, #4]
     224:	4a0a      	ldr	r2, [pc, #40]	@ (0x250)
     226:	611a      	str	r2, [r3, #16]
     228:	e001      	b.n	0x22e
     22a:	4b0a      	ldr	r3, [pc, #40]	@ (0x254)
     22c:	e000      	b.n	0x230
     22e:	2300      	movs	r3, #0
     230:	4618      	mov	r0, r3
     232:	370c      	adds	r7, #12
     234:	46bd      	mov	sp, r7
     236:	f85d 7b04 	ldr.w	r7, [sp], #4
     23a:	4770      	bx	lr
     23c:	9f00      	ldr	r7, [sp, #0]
     23e:	ffff 8d2d 			@ <UNDEFINED> instruction: 0xffff8d2d
     242:	0802      	lsrs	r2, r0, #32
     244:	8d71      	ldrh	r1, [r6, #42]	@ 0x2a
     246:	0802      	lsrs	r2, r0, #32
     248:	8e45      	ldrh	r5, [r0, #50]	@ 0x32
     24a:	0802      	lsrs	r2, r0, #32
     24c:	8e7d      	ldrh	r5, [r7, #50]	@ 0x32
     24e:	0802      	lsrs	r2, r0, #32
     250:	8f0d      	ldrh	r5, [r1, #56]	@ 0x38
     252:	0802      	lsrs	r2, r0, #32
     254:	9f80      	ldr	r7, [sp, #512]	@ 0x200
     256:	ffff b580 	vabal.u<illegal width 64>	<illegal reg q13.5>, d31, d0
     25a:	b088      	sub	sp, #32
     25c:	af02      	add	r7, sp, #8
     25e:	60f8      	str	r0, [r7, #12]
     260:	60b9      	str	r1, [r7, #8]
     262:	607a      	str	r2, [r7, #4]
     264:	603b      	str	r3, [r7, #0]
     266:	687a      	ldr	r2, [r7, #4]
     268:	68b9      	ldr	r1, [r7, #8]
     26a:	68f8      	ldr	r0, [r7, #12]
     26c:	f7ff fc40 	bl	0xfffffaf0
     270:	6178      	str	r0, [r7, #20]
     272:	697b      	ldr	r3, [r7, #20]
     274:	2b00      	cmp	r3, #0
     276:	d001      	beq.n	0x27c
     278:	697b      	ldr	r3, [r7, #20]
     27a:	e02d      	b.n	0x2d8
     27c:	68f8      	ldr	r0, [r7, #12]
     27e:	f7ff fc73 	bl	0xfffffb68
     282:	6178      	str	r0, [r7, #20]
     284:	697b      	ldr	r3, [r7, #20]
     286:	2b00      	cmp	r3, #0
     288:	d001      	beq.n	0x28e
     28a:	697b      	ldr	r3, [r7, #20]
     28c:	e024      	b.n	0x2d8
     28e:	6abb      	ldr	r3, [r7, #40]	@ 0x28
     290:	9300      	str	r3, [sp, #0]
     292:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
     294:	6a3a      	ldr	r2, [r7, #32]
     296:	6839      	ldr	r1, [r7, #0]
     298:	68f8      	ldr	r0, [r7, #12]
     29a:	f7ff fc7b 	bl	0xfffffb94
     29e:	6178      	str	r0, [r7, #20]
     2a0:	697b      	ldr	r3, [r7, #20]
     2a2:	2b00      	cmp	r3, #0
     2a4:	d001      	beq.n	0x2aa
     2a6:	697b      	ldr	r3, [r7, #20]
     2a8:	e016      	b.n	0x2d8
     2aa:	6abb      	ldr	r3, [r7, #40]	@ 0x28
     2ac:	681b      	ldr	r3, [r3, #0]
     2ae:	6a7a      	ldr	r2, [r7, #36]	@ 0x24
     2b0:	4413      	add	r3, r2
     2b2:	f107 0210 	add.w	r2, r7, #16
     2b6:	4619      	mov	r1, r3
     2b8:	68f8      	ldr	r0, [r7, #12]
     2ba:	f7ff fec1 	bl	0x40
     2be:	6178      	str	r0, [r7, #20]
     2c0:	697b      	ldr	r3, [r7, #20]
     2c2:	2b00      	cmp	r3, #0
     2c4:	d001      	beq.n	0x2ca
     2c6:	697b      	ldr	r3, [r7, #20]
     2c8:	e006      	b.n	0x2d8
     2ca:	6abb      	ldr	r3, [r7, #40]	@ 0x28
     2cc:	681a      	ldr	r2, [r3, #0]
     2ce:	693b      	ldr	r3, [r7, #16]
     2d0:	441a      	add	r2, r3
     2d2:	6abb      	ldr	r3, [r7, #40]	@ 0x28
     2d4:	601a      	str	r2, [r3, #0]
     2d6:	2300      	movs	r3, #0
     2d8:	4618      	mov	r0, r3
     2da:	3718      	adds	r7, #24
     2dc:	46bd      	mov	sp, r7
     2de:	bd80      	pop	{r7, pc}
     2e0:	b580      	push	{r7, lr}
     2e2:	b08c      	sub	sp, #48	@ 0x30
     2e4:	af08      	add	r7, sp, #32
     2e6:	60f8      	str	r0, [r7, #12]
     2e8:	60b9      	str	r1, [r7, #8]
     2ea:	607a      	str	r2, [r7, #4]
     2ec:	603b      	str	r3, [r7, #0]
     2ee:	68fb      	ldr	r3, [r7, #12]
     2f0:	681b      	ldr	r3, [r3, #0]
     2f2:	785b      	ldrb	r3, [r3, #1]
     2f4:	2b06      	cmp	r3, #6
     2f6:	d119      	bne.n	0x32c
     2f8:	6abb      	ldr	r3, [r7, #40]	@ 0x28
     2fa:	6a3a      	ldr	r2, [r7, #32]
     2fc:	601a      	str	r2, [r3, #0]
     2fe:	68fb      	ldr	r3, [r7, #12]
     300:	6bd8      	ldr	r0, [r3, #60]	@ 0x3c
     302:	6afb      	ldr	r3, [r7, #44]	@ 0x2c
     304:	9306      	str	r3, [sp, #24]
     306:	6b3b      	ldr	r3, [r7, #48]	@ 0x30
     308:	9305      	str	r3, [sp, #20]
     30a:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
     30c:	9304      	str	r3, [sp, #16]
     30e:	69fb      	ldr	r3, [r7, #28]
     310:	9303      	str	r3, [sp, #12]
     312:	69bb      	ldr	r3, [r7, #24]
     314:	9302      	str	r3, [sp, #8]
     316:	683b      	ldr	r3, [r7, #0]
     318:	9301      	str	r3, [sp, #4]
     31a:	687b      	ldr	r3, [r7, #4]
     31c:	9300      	str	r3, [sp, #0]
     31e:	68bb      	ldr	r3, [r7, #8]
     320:	6a3a      	ldr	r2, [r7, #32]
     322:	2101      	movs	r1, #1
     324:	f000 ff97 	bl	0x1256
     328:	4603      	mov	r3, r0
     32a:	e000      	b.n	0x32e
     32c:	4b02      	ldr	r3, [pc, #8]	@ (0x338)
     32e:	4618      	mov	r0, r3
     330:	3710      	adds	r7, #16
     332:	46bd      	mov	sp, r7
     334:	bd80      	pop	{r7, pc}
     336:	bf00      	nop
     338:	9f80      	ldr	r7, [sp, #512]	@ 0x200
     33a:	ffff b580 	vabal.u<illegal width 64>	<illegal reg q13.5>, d31, d0
     33e:	b08c      	sub	sp, #48	@ 0x30
     340:	af06      	add	r7, sp, #24
     342:	60f8      	str	r0, [r7, #12]
     344:	60b9      	str	r1, [r7, #8]
     346:	607a      	str	r2, [r7, #4]
     348:	603b      	str	r3, [r7, #0]
     34a:	68fb      	ldr	r3, [r7, #12]
     34c:	681b      	ldr	r3, [r3, #0]
     34e:	785b      	ldrb	r3, [r3, #1]
     350:	2b06      	cmp	r3, #6
     352:	d11e      	bne.n	0x392
     354:	6b3b      	ldr	r3, [r7, #48]	@ 0x30
     356:	6aba      	ldr	r2, [r7, #40]	@ 0x28
     358:	601a      	str	r2, [r3, #0]
     35a:	68fb      	ldr	r3, [r7, #12]
     35c:	6bd8      	ldr	r0, [r3, #60]	@ 0x3c
     35e:	6afb      	ldr	r3, [r7, #44]	@ 0x2c
     360:	9305      	str	r3, [sp, #20]
     362:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
     364:	9304      	str	r3, [sp, #16]
     366:	6bbb      	ldr	r3, [r7, #56]	@ 0x38
     368:	9303      	str	r3, [sp, #12]
     36a:	6b7b      	ldr	r3, [r7, #52]	@ 0x34
     36c:	9302      	str	r3, [sp, #8]
     36e:	6a3b      	ldr	r3, [r7, #32]
     370:	9301      	str	r3, [sp, #4]
     372:	683b      	ldr	r3, [r7, #0]
     374:	9300      	str	r3, [sp, #0]
     376:	687b      	ldr	r3, [r7, #4]
     378:	68ba      	ldr	r2, [r7, #8]
     37a:	6ab9      	ldr	r1, [r7, #40]	@ 0x28
     37c:	f000 ff9e 	bl	0x12bc
     380:	6178      	str	r0, [r7, #20]
     382:	697b      	ldr	r3, [r7, #20]
     384:	f113 0f12 	cmn.w	r3, #18
     388:	d101      	bne.n	0x38e
     38a:	4b04      	ldr	r3, [pc, #16]	@ (0x39c)
     38c:	617b      	str	r3, [r7, #20]
     38e:	697b      	ldr	r3, [r7, #20]
     390:	e000      	b.n	0x394
     392:	4b03      	ldr	r3, [pc, #12]	@ (0x3a0)
     394:	4618      	mov	r0, r3
     396:	3718      	adds	r7, #24
     398:	46bd      	mov	sp, r7
     39a:	bd80      	pop	{r7, pc}
     39c:	9d00      	ldr	r5, [sp, #0]
     39e:	ffff 9f80 			@ <UNDEFINED> instruction: 0xffff9f80
     3a2:	ffff b580 	vabal.u<illegal width 64>	<illegal reg q13.5>, d31, d0
     3a6:	b082      	sub	sp, #8
     3a8:	af00      	add	r7, sp, #0
     3aa:	f44f 71c4 	mov.w	r1, #392	@ 0x188
     3ae:	2001      	movs	r0, #1
     3b0:	f009 ff9c 	bl	0xa2ec
     3b4:	4603      	mov	r3, r0
     3b6:	607b      	str	r3, [r7, #4]
     3b8:	687b      	ldr	r3, [r7, #4]
     3ba:	2b00      	cmp	r3, #0
     3bc:	d002      	beq.n	0x3c4
     3be:	6878      	ldr	r0, [r7, #4]
     3c0:	f000 f8ad 	bl	0x51e
     3c4:	687b      	ldr	r3, [r7, #4]
     3c6:	4618      	mov	r0, r3
     3c8:	3708      	adds	r7, #8
     3ca:	46bd      	mov	sp, r7
     3cc:	bd80      	pop	{r7, pc}
     3ce:	b580      	push	{r7, lr}
     3d0:	b082      	sub	sp, #8
     3d2:	af00      	add	r7, sp, #0
     3d4:	6078      	str	r0, [r7, #4]
     3d6:	6878      	ldr	r0, [r7, #4]
     3d8:	f000 ffbc 	bl	0x1354
     3dc:	6878      	ldr	r0, [r7, #4]
     3de:	f00a f95d 	bl	0xa69c
     3e2:	bf00      	nop
     3e4:	3708      	adds	r7, #8
     3e6:	46bd      	mov	sp, r7
     3e8:	bd80      	pop	{r7, pc}
     3ea:	b580      	push	{r7, lr}
     3ec:	b084      	sub	sp, #16
     3ee:	af00      	add	r7, sp, #0
     3f0:	60f8      	str	r0, [r7, #12]
     3f2:	607a      	str	r2, [r7, #4]
     3f4:	603b      	str	r3, [r7, #0]
     3f6:	460b      	mov	r3, r1
     3f8:	72fb      	strb	r3, [r7, #11]
     3fa:	f997 100b 	ldrsb.w	r1, [r7, #11]
     3fe:	683b      	ldr	r3, [r7, #0]
     400:	687a      	ldr	r2, [r7, #4]
     402:	68f8      	ldr	r0, [r7, #12]
     404:	f7ff f990 	bl	0xfffff728
     408:	4603      	mov	r3, r0
     40a:	4618      	mov	r0, r3
     40c:	3710      	adds	r7, #16
     40e:	46bd      	mov	sp, r7
     410:	bd80      	pop	{r7, pc}
     412:	b580      	push	{r7, lr}
     414:	b086      	sub	sp, #24
     416:	af02      	add	r7, sp, #8
     418:	60f8      	str	r0, [r7, #12]
     41a:	607a      	str	r2, [r7, #4]
     41c:	603b      	str	r3, [r7, #0]
     41e:	460b      	mov	r3, r1
     420:	72fb      	strb	r3, [r7, #11]
     422:	f997 100b 	ldrsb.w	r1, [r7, #11]
     426:	69fb      	ldr	r3, [r7, #28]
     428:	9301      	str	r3, [sp, #4]
     42a:	69bb      	ldr	r3, [r7, #24]
     42c:	9300      	str	r3, [sp, #0]
     42e:	683b      	ldr	r3, [r7, #0]
     430:	687a      	ldr	r2, [r7, #4]
     432:	68f8      	ldr	r0, [r7, #12]
     434:	f7ff f993 	bl	0xfffff75e
     438:	4603      	mov	r3, r0
     43a:	4618      	mov	r0, r3
     43c:	3710      	adds	r7, #16
     43e:	46bd      	mov	sp, r7
     440:	bd80      	pop	{r7, pc}
     442:	b580      	push	{r7, lr}
     444:	b084      	sub	sp, #16
     446:	af00      	add	r7, sp, #0
     448:	60f8      	str	r0, [r7, #12]
     44a:	60b9      	str	r1, [r7, #8]
     44c:	607a      	str	r2, [r7, #4]
     44e:	687a      	ldr	r2, [r7, #4]
     450:	68b9      	ldr	r1, [r7, #8]
     452:	68f8      	ldr	r0, [r7, #12]
     454:	f7fe fa22 	bl	0xffffe89c
     458:	4603      	mov	r3, r0
     45a:	4618      	mov	r0, r3
     45c:	3710      	adds	r7, #16
     45e:	46bd      	mov	sp, r7
     460:	bd80      	pop	{r7, pc}
     462:	b580      	push	{r7, lr}
     464:	b084      	sub	sp, #16
     466:	af00      	add	r7, sp, #0
     468:	60f8      	str	r0, [r7, #12]
     46a:	60b9      	str	r1, [r7, #8]
     46c:	607a      	str	r2, [r7, #4]
     46e:	687a      	ldr	r2, [r7, #4]
     470:	68b9      	ldr	r1, [r7, #8]
     472:	68f8      	ldr	r0, [r7, #12]
     474:	f7fe f83c 	bl	0xffffe4f0
     478:	4603      	mov	r3, r0
     47a:	4618      	mov	r0, r3
     47c:	3710      	adds	r7, #16
     47e:	46bd      	mov	sp, r7
     480:	bd80      	pop	{r7, pc}
     482:	b580      	push	{r7, lr}
     484:	b082      	sub	sp, #8
     486:	af00      	add	r7, sp, #0
     488:	f44f 718c 	mov.w	r1, #280	@ 0x118
     48c:	2001      	movs	r0, #1
     48e:	f009 ff2d 	bl	0xa2ec
     492:	4603      	mov	r3, r0
     494:	607b      	str	r3, [r7, #4]
     496:	687b      	ldr	r3, [r7, #4]
     498:	2b00      	cmp	r3, #0
     49a:	d101      	bne.n	0x4a0
     49c:	2300      	movs	r3, #0
     49e:	e003      	b.n	0x4a8
     4a0:	6878      	ldr	r0, [r7, #4]
     4a2:	f7fe f805 	bl	0xffffe4b0
     4a6:	687b      	ldr	r3, [r7, #4]
     4a8:	4618      	mov	r0, r3
     4aa:	3708      	adds	r7, #8
     4ac:	46bd      	mov	sp, r7
     4ae:	bd80      	pop	{r7, pc}
     4b0:	b580      	push	{r7, lr}
     4b2:	b082      	sub	sp, #8
     4b4:	af00      	add	r7, sp, #0
     4b6:	6078      	str	r0, [r7, #4]
     4b8:	6878      	ldr	r0, [r7, #4]
     4ba:	f7fe f807 	bl	0xffffe4cc
     4be:	6878      	ldr	r0, [r7, #4]
     4c0:	f00a f8ec 	bl	0xa69c
     4c4:	bf00      	nop
     4c6:	3708      	adds	r7, #8
     4c8:	46bd      	mov	sp, r7
     4ca:	bd80      	pop	{r7, pc}
     4cc:	b580      	push	{r7, lr}
     4ce:	b084      	sub	sp, #16
     4d0:	af00      	add	r7, sp, #0
     4d2:	60f8      	str	r0, [r7, #12]
     4d4:	60b9      	str	r1, [r7, #8]
     4d6:	607a      	str	r2, [r7, #4]
     4d8:	687b      	ldr	r3, [r7, #4]
     4da:	68ba      	ldr	r2, [r7, #8]
     4dc:	2102      	movs	r1, #2
     4de:	68f8      	ldr	r0, [r7, #12]
     4e0:	f000 f960 	bl	0x7a4
     4e4:	4603      	mov	r3, r0
     4e6:	4618      	mov	r0, r3
     4e8:	3710      	adds	r7, #16
     4ea:	46bd      	mov	sp, r7
     4ec:	bd80      	pop	{r7, pc}
     4ee:	b480      	push	{r7}
     4f0:	b085      	sub	sp, #20
     4f2:	af00      	add	r7, sp, #0
     4f4:	6078      	str	r0, [r7, #4]
     4f6:	6039      	str	r1, [r7, #0]
     4f8:	687b      	ldr	r3, [r7, #4]
     4fa:	60fb      	str	r3, [r7, #12]
     4fc:	e004      	b.n	0x508
     4fe:	68fb      	ldr	r3, [r7, #12]
     500:	1c5a      	adds	r2, r3, #1
     502:	60fa      	str	r2, [r7, #12]
     504:	2200      	movs	r2, #0
     506:	701a      	strb	r2, [r3, #0]
     508:	683b      	ldr	r3, [r7, #0]
     50a:	1e5a      	subs	r2, r3, #1
     50c:	603a      	str	r2, [r7, #0]
     50e:	2b00      	cmp	r3, #0
     510:	d1f5      	bne.n	0x4fe
     512:	bf00      	nop
     514:	3714      	adds	r7, #20
     516:	46bd      	mov	sp, r7
     518:	f85d 7b04 	ldr.w	r7, [sp], #4
     51c:	4770      	bx	lr
     51e:	b580      	push	{r7, lr}
     520:	b082      	sub	sp, #8
     522:	af00      	add	r7, sp, #0
     524:	6078      	str	r0, [r7, #4]
     526:	f44f 72c4 	mov.w	r2, #392	@ 0x188
     52a:	2100      	movs	r1, #0
     52c:	6878      	ldr	r0, [r7, #4]
     52e:	f00a f8f0 	bl	0xa712
     532:	bf00      	nop
     534:	3708      	adds	r7, #8
     536:	46bd      	mov	sp, r7
     538:	bd80      	pop	{r7, pc}
     53a:	e92d 48f0 	stmdb	sp!, {r4, r5, r6, r7, fp, lr}
     53e:	b098      	sub	sp, #96	@ 0x60
     540:	af02      	add	r7, sp, #8
     542:	6078      	str	r0, [r7, #4]
     544:	2300      	movs	r3, #0
     546:	60bb      	str	r3, [r7, #8]
     548:	f107 030c 	add.w	r3, r7, #12
     54c:	2210      	movs	r2, #16
     54e:	2100      	movs	r1, #0
     550:	4618      	mov	r0, r3
     552:	f00a f8de 	bl	0xa712
     556:	6878      	ldr	r0, [r7, #4]
     558:	f107 020c 	add.w	r2, r7, #12
     55c:	f107 010c 	add.w	r1, r7, #12
     560:	f107 0308 	add.w	r3, r7, #8
     564:	9300      	str	r3, [sp, #0]
     566:	4613      	mov	r3, r2
     568:	2210      	movs	r2, #16
     56a:	f7ff fb13 	bl	0xfffffb94
     56e:	63f8      	str	r0, [r7, #60]	@ 0x3c
     570:	6bfb      	ldr	r3, [r7, #60]	@ 0x3c
     572:	2b00      	cmp	r3, #0
     574:	d001      	beq.n	0x57a
     576:	6bfb      	ldr	r3, [r7, #60]	@ 0x3c
     578:	e10f      	b.n	0x79a
     57a:	7b3b      	ldrb	r3, [r7, #12]
     57c:	061a      	lsls	r2, r3, #24
     57e:	7b7b      	ldrb	r3, [r7, #13]
     580:	041b      	lsls	r3, r3, #16
     582:	431a      	orrs	r2, r3
     584:	7bbb      	ldrb	r3, [r7, #14]
     586:	021b      	lsls	r3, r3, #8
     588:	4313      	orrs	r3, r2
     58a:	7bfa      	ldrb	r2, [r7, #15]
     58c:	4313      	orrs	r3, r2
     58e:	f04f 0400 	mov.w	r4, #0
     592:	e9c7 340c 	strd	r3, r4, [r7, #48]	@ 0x30
     596:	7c3b      	ldrb	r3, [r7, #16]
     598:	061a      	lsls	r2, r3, #24
     59a:	7c7b      	ldrb	r3, [r7, #17]
     59c:	041b      	lsls	r3, r3, #16
     59e:	431a      	orrs	r2, r3
     5a0:	7cbb      	ldrb	r3, [r7, #18]
     5a2:	021b      	lsls	r3, r3, #8
     5a4:	4313      	orrs	r3, r2
     5a6:	7cfa      	ldrb	r2, [r7, #19]
     5a8:	4313      	orrs	r3, r2
     5aa:	f04f 0400 	mov.w	r4, #0
     5ae:	e9c7 340a 	strd	r3, r4, [r7, #40]	@ 0x28
     5b2:	e9d7 120c 	ldrd	r1, r2, [r7, #48]	@ 0x30
     5b6:	f04f 0500 	mov.w	r5, #0
     5ba:	f04f 0600 	mov.w	r6, #0
     5be:	000e      	movs	r6, r1
     5c0:	2500      	movs	r5, #0
     5c2:	e9d7 120a 	ldrd	r1, r2, [r7, #40]	@ 0x28
     5c6:	ea45 0301 	orr.w	r3, r5, r1
     5ca:	ea46 0402 	orr.w	r4, r6, r2
     5ce:	e9c7 3410 	strd	r3, r4, [r7, #64]	@ 0x40
     5d2:	7d3b      	ldrb	r3, [r7, #20]
     5d4:	061a      	lsls	r2, r3, #24
     5d6:	7d7b      	ldrb	r3, [r7, #21]
     5d8:	041b      	lsls	r3, r3, #16
     5da:	431a      	orrs	r2, r3
     5dc:	7dbb      	ldrb	r3, [r7, #22]
     5de:	021b      	lsls	r3, r3, #8
     5e0:	4313      	orrs	r3, r2
     5e2:	7dfa      	ldrb	r2, [r7, #23]
     5e4:	4313      	orrs	r3, r2
     5e6:	f04f 0400 	mov.w	r4, #0
     5ea:	e9c7 340c 	strd	r3, r4, [r7, #48]	@ 0x30
     5ee:	7e3b      	ldrb	r3, [r7, #24]
     5f0:	061a      	lsls	r2, r3, #24
     5f2:	7e7b      	ldrb	r3, [r7, #25]
     5f4:	041b      	lsls	r3, r3, #16
     5f6:	431a      	orrs	r2, r3
     5f8:	7ebb      	ldrb	r3, [r7, #26]
     5fa:	021b      	lsls	r3, r3, #8
     5fc:	4313      	orrs	r3, r2
     5fe:	7efa      	ldrb	r2, [r7, #27]
     600:	4313      	orrs	r3, r2
     602:	f04f 0400 	mov.w	r4, #0
     606:	e9c7 340a 	strd	r3, r4, [r7, #40]	@ 0x28
     60a:	e9d7 120c 	ldrd	r1, r2, [r7, #48]	@ 0x30
     60e:	f04f 0500 	mov.w	r5, #0
     612:	f04f 0600 	mov.w	r6, #0
     616:	000e      	movs	r6, r1
     618:	2500      	movs	r5, #0
     61a:	e9d7 120a 	ldrd	r1, r2, [r7, #40]	@ 0x28
     61e:	ea45 0301 	orr.w	r3, r5, r1
     622:	ea46 0402 	orr.w	r4, r6, r2
     626:	e9c7 3412 	strd	r3, r4, [r7, #72]	@ 0x48
     62a:	687a      	ldr	r2, [r7, #4]
     62c:	e9d7 3412 	ldrd	r3, r4, [r7, #72]	@ 0x48
     630:	e9c2 3420 	strd	r3, r4, [r2, #128]	@ 0x80
     634:	687b      	ldr	r3, [r7, #4]
     636:	f503 7280 	add.w	r2, r3, #256	@ 0x100
     63a:	e9d7 3410 	ldrd	r3, r4, [r7, #64]	@ 0x40
     63e:	e9c2 3400 	strd	r3, r4, [r2]
     642:	687a      	ldr	r2, [r7, #4]
     644:	f04f 0300 	mov.w	r3, #0
     648:	f04f 0400 	mov.w	r4, #0
     64c:	e9c2 3430 	strd	r3, r4, [r2, #192]	@ 0xc0
     650:	687a      	ldr	r2, [r7, #4]
     652:	f04f 0300 	mov.w	r3, #0
     656:	f04f 0400 	mov.w	r4, #0
     65a:	e9c2 3410 	strd	r3, r4, [r2, #64]	@ 0x40
     65e:	2304      	movs	r3, #4
     660:	657b      	str	r3, [r7, #84]	@ 0x54
     662:	e045      	b.n	0x6f0
     664:	6cbb      	ldr	r3, [r7, #72]	@ 0x48
     666:	f003 0201 	and.w	r2, r3, #1
     66a:	4613      	mov	r3, r2
     66c:	0152      	lsls	r2, r2, #5
     66e:	1a9b      	subs	r3, r3, r2
     670:	061b      	lsls	r3, r3, #24
     672:	61fb      	str	r3, [r7, #28]
     674:	e9d7 1210 	ldrd	r1, r2, [r7, #64]	@ 0x40
     678:	f04f 0500 	mov.w	r5, #0
     67c:	f04f 0600 	mov.w	r6, #0
     680:	07ce      	lsls	r6, r1, #31
     682:	2500      	movs	r5, #0
     684:	e9d7 1212 	ldrd	r1, r2, [r7, #72]	@ 0x48
     688:	0852      	lsrs	r2, r2, #1
     68a:	ea4f 0131 	mov.w	r1, r1, rrx
     68e:	ea45 0301 	orr.w	r3, r5, r1
     692:	ea46 0402 	orr.w	r4, r6, r2
     696:	e9c7 3412 	strd	r3, r4, [r7, #72]	@ 0x48
     69a:	e9d7 3410 	ldrd	r3, r4, [r7, #64]	@ 0x40
     69e:	0862      	lsrs	r2, r4, #1
     6a0:	ea4f 0133 	mov.w	r1, r3, rrx
     6a4:	69fb      	ldr	r3, [r7, #28]
     6a6:	461d      	mov	r5, r3
     6a8:	f04f 0600 	mov.w	r6, #0
     6ac:	f04f 0b00 	mov.w	fp, #0
     6b0:	f04f 0c00 	mov.w	ip, #0
     6b4:	46ac      	mov	ip, r5
     6b6:	f04f 0b00 	mov.w	fp, #0
     6ba:	ea8b 0301 	eor.w	r3, fp, r1
     6be:	ea8c 0402 	eor.w	r4, ip, r2
     6c2:	e9c7 3410 	strd	r3, r4, [r7, #64]	@ 0x40
     6c6:	687a      	ldr	r2, [r7, #4]
     6c8:	6d7b      	ldr	r3, [r7, #84]	@ 0x54
     6ca:	3308      	adds	r3, #8
     6cc:	00db      	lsls	r3, r3, #3
     6ce:	441a      	add	r2, r3
     6d0:	e9d7 3412 	ldrd	r3, r4, [r7, #72]	@ 0x48
     6d4:	e9c2 3400 	strd	r3, r4, [r2]
     6d8:	687a      	ldr	r2, [r7, #4]
     6da:	6d7b      	ldr	r3, [r7, #84]	@ 0x54
     6dc:	3318      	adds	r3, #24
     6de:	00db      	lsls	r3, r3, #3
     6e0:	441a      	add	r2, r3
     6e2:	e9d7 3410 	ldrd	r3, r4, [r7, #64]	@ 0x40
     6e6:	e9c2 3400 	strd	r3, r4, [r2]
     6ea:	6d7b      	ldr	r3, [r7, #84]	@ 0x54
     6ec:	105b      	asrs	r3, r3, #1
     6ee:	657b      	str	r3, [r7, #84]	@ 0x54
     6f0:	6d7b      	ldr	r3, [r7, #84]	@ 0x54
     6f2:	2b00      	cmp	r3, #0
     6f4:	dcb6      	bgt.n	0x664
     6f6:	2302      	movs	r3, #2
     6f8:	657b      	str	r3, [r7, #84]	@ 0x54
     6fa:	e04a      	b.n	0x792
     6fc:	687b      	ldr	r3, [r7, #4]
     6fe:	f103 0240 	add.w	r2, r3, #64	@ 0x40
     702:	6d7b      	ldr	r3, [r7, #84]	@ 0x54
     704:	00db      	lsls	r3, r3, #3
     706:	4413      	add	r3, r2
     708:	627b      	str	r3, [r7, #36]	@ 0x24
     70a:	687b      	ldr	r3, [r7, #4]
     70c:	f103 02c0 	add.w	r2, r3, #192	@ 0xc0
     710:	6d7b      	ldr	r3, [r7, #84]	@ 0x54
     712:	00db      	lsls	r3, r3, #3
     714:	4413      	add	r3, r2
     716:	623b      	str	r3, [r7, #32]
     718:	6a3b      	ldr	r3, [r7, #32]
     71a:	e9d3 3400 	ldrd	r3, r4, [r3]
     71e:	e9c7 3410 	strd	r3, r4, [r7, #64]	@ 0x40
     722:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
     724:	e9d3 3400 	ldrd	r3, r4, [r3]
     728:	e9c7 3412 	strd	r3, r4, [r7, #72]	@ 0x48
     72c:	2301      	movs	r3, #1
     72e:	653b      	str	r3, [r7, #80]	@ 0x50
     730:	e028      	b.n	0x784
     732:	687a      	ldr	r2, [r7, #4]
     734:	6d3b      	ldr	r3, [r7, #80]	@ 0x50
     736:	3318      	adds	r3, #24
     738:	00db      	lsls	r3, r3, #3
     73a:	4413      	add	r3, r2
     73c:	e9d3 1200 	ldrd	r1, r2, [r3]
     740:	6d3b      	ldr	r3, [r7, #80]	@ 0x50
     742:	00db      	lsls	r3, r3, #3
     744:	6a38      	ldr	r0, [r7, #32]
     746:	4418      	add	r0, r3
     748:	e9d7 3410 	ldrd	r3, r4, [r7, #64]	@ 0x40
     74c:	ea83 0501 	eor.w	r5, r3, r1
     750:	ea84 0602 	eor.w	r6, r4, r2
     754:	e9c0 5600 	strd	r5, r6, [r0]
     758:	687a      	ldr	r2, [r7, #4]
     75a:	6d3b      	ldr	r3, [r7, #80]	@ 0x50
     75c:	3308      	adds	r3, #8
     75e:	00db      	lsls	r3, r3, #3
     760:	4413      	add	r3, r2
     762:	e9d3 1200 	ldrd	r1, r2, [r3]
     766:	6d3b      	ldr	r3, [r7, #80]	@ 0x50
     768:	00db      	lsls	r3, r3, #3
     76a:	6a78      	ldr	r0, [r7, #36]	@ 0x24
     76c:	4418      	add	r0, r3
     76e:	e9d7 3412 	ldrd	r3, r4, [r7, #72]	@ 0x48
     772:	ea83 0501 	eor.w	r5, r3, r1
     776:	ea84 0602 	eor.w	r6, r4, r2
     77a:	e9c0 5600 	strd	r5, r6, [r0]
     77e:	6d3b      	ldr	r3, [r7, #80]	@ 0x50
     780:	3301      	adds	r3, #1
     782:	653b      	str	r3, [r7, #80]	@ 0x50
     784:	6d3a      	ldr	r2, [r7, #80]	@ 0x50
     786:	6d7b      	ldr	r3, [r7, #84]	@ 0x54
     788:	429a      	cmp	r2, r3
     78a:	dbd2      	blt.n	0x732
     78c:	6d7b      	ldr	r3, [r7, #84]	@ 0x54
     78e:	005b      	lsls	r3, r3, #1
     790:	657b      	str	r3, [r7, #84]	@ 0x54
     792:	6d7b      	ldr	r3, [r7, #84]	@ 0x54
     794:	2b08      	cmp	r3, #8
     796:	ddb1      	ble.n	0x6fc
     798:	2300      	movs	r3, #0
     79a:	4618      	mov	r0, r3
     79c:	3758      	adds	r7, #88	@ 0x58
     79e:	46bd      	mov	sp, r7
     7a0:	e8bd 88f0 	ldmia.w	sp!, {r4, r5, r6, r7, fp, pc}
     7a4:	b580      	push	{r7, lr}
     7a6:	b086      	sub	sp, #24
     7a8:	af00      	add	r7, sp, #0
     7aa:	60f8      	str	r0, [r7, #12]
     7ac:	607a      	str	r2, [r7, #4]
     7ae:	603b      	str	r3, [r7, #0]
     7b0:	460b      	mov	r3, r1
     7b2:	72fb      	strb	r3, [r7, #11]
     7b4:	6839      	ldr	r1, [r7, #0]
     7b6:	7afb      	ldrb	r3, [r7, #11]
     7b8:	2201      	movs	r2, #1
     7ba:	4618      	mov	r0, r3
     7bc:	f7ff f8b6 	bl	0xfffff92c
     7c0:	6178      	str	r0, [r7, #20]
     7c2:	697b      	ldr	r3, [r7, #20]
     7c4:	2b00      	cmp	r3, #0
     7c6:	d102      	bne.n	0x7ce
     7c8:	f06f 0313 	mvn.w	r3, #19
     7cc:	e02b      	b.n	0x826
     7ce:	697b      	ldr	r3, [r7, #20]
     7d0:	695b      	ldr	r3, [r3, #20]
     7d2:	2b10      	cmp	r3, #16
     7d4:	d002      	beq.n	0x7dc
     7d6:	f06f 0313 	mvn.w	r3, #19
     7da:	e024      	b.n	0x826
     7dc:	68fb      	ldr	r3, [r7, #12]
     7de:	4618      	mov	r0, r3
     7e0:	f7ff f8e3 	bl	0xfffff9aa
     7e4:	68fb      	ldr	r3, [r7, #12]
     7e6:	6979      	ldr	r1, [r7, #20]
     7e8:	4618      	mov	r0, r3
     7ea:	f7ff f8fb 	bl	0xfffff9e4
     7ee:	6138      	str	r0, [r7, #16]
     7f0:	693b      	ldr	r3, [r7, #16]
     7f2:	2b00      	cmp	r3, #0
     7f4:	d001      	beq.n	0x7fa
     7f6:	693b      	ldr	r3, [r7, #16]
     7f8:	e015      	b.n	0x826
     7fa:	68f8      	ldr	r0, [r7, #12]
     7fc:	683a      	ldr	r2, [r7, #0]
     7fe:	2301      	movs	r3, #1
     800:	6879      	ldr	r1, [r7, #4]
     802:	f7ff f91b 	bl	0xfffffa3c
     806:	6138      	str	r0, [r7, #16]
     808:	693b      	ldr	r3, [r7, #16]
     80a:	2b00      	cmp	r3, #0
     80c:	d001      	beq.n	0x812
     80e:	693b      	ldr	r3, [r7, #16]
     810:	e009      	b.n	0x826
     812:	68f8      	ldr	r0, [r7, #12]
     814:	f7ff fe91 	bl	0x53a
     818:	6138      	str	r0, [r7, #16]
     81a:	693b      	ldr	r3, [r7, #16]
     81c:	2b00      	cmp	r3, #0
     81e:	d001      	beq.n	0x824
     820:	693b      	ldr	r3, [r7, #16]
     822:	e000      	b.n	0x826
     824:	2300      	movs	r3, #0
     826:	4618      	mov	r0, r3
     828:	3718      	adds	r7, #24
     82a:	46bd      	mov	sp, r7
     82c:	bd80      	pop	{r7, pc}
     82e:	0000      	movs	r0, r0
     830:	e92d 08f0 	stmdb	sp!, {r4, r5, r6, r7, fp}
     834:	b08d      	sub	sp, #52	@ 0x34
     836:	af00      	add	r7, sp, #0
     838:	60f8      	str	r0, [r7, #12]
     83a:	60b9      	str	r1, [r7, #8]
     83c:	607a      	str	r2, [r7, #4]
     83e:	2300      	movs	r3, #0
     840:	62fb      	str	r3, [r7, #44]	@ 0x2c
     842:	68bb      	ldr	r3, [r7, #8]
     844:	330f      	adds	r3, #15
     846:	781b      	ldrb	r3, [r3, #0]
     848:	f003 030f 	and.w	r3, r3, #15
     84c:	75fb      	strb	r3, [r7, #23]
     84e:	7dfb      	ldrb	r3, [r7, #23]
     850:	68fa      	ldr	r2, [r7, #12]
     852:	3318      	adds	r3, #24
     854:	00db      	lsls	r3, r3, #3
     856:	4413      	add	r3, r2
     858:	e9d3 3400 	ldrd	r3, r4, [r3]
     85c:	e9c7 3408 	strd	r3, r4, [r7, #32]
     860:	7dfb      	ldrb	r3, [r7, #23]
     862:	68fa      	ldr	r2, [r7, #12]
     864:	3308      	adds	r3, #8
     866:	00db      	lsls	r3, r3, #3
     868:	4413      	add	r3, r2
     86a:	e9d3 3400 	ldrd	r3, r4, [r3]
     86e:	e9c7 3406 	strd	r3, r4, [r7, #24]
     872:	230f      	movs	r3, #15
     874:	62fb      	str	r3, [r7, #44]	@ 0x2c
     876:	e0ca      	b.n	0xa0e
     878:	6afb      	ldr	r3, [r7, #44]	@ 0x2c
     87a:	68ba      	ldr	r2, [r7, #8]
     87c:	4413      	add	r3, r2
     87e:	781b      	ldrb	r3, [r3, #0]
     880:	f003 030f 	and.w	r3, r3, #15
     884:	75fb      	strb	r3, [r7, #23]
     886:	6afb      	ldr	r3, [r7, #44]	@ 0x2c
     888:	68ba      	ldr	r2, [r7, #8]
     88a:	4413      	add	r3, r2
     88c:	781b      	ldrb	r3, [r3, #0]
     88e:	091b      	lsrs	r3, r3, #4
     890:	75bb      	strb	r3, [r7, #22]
     892:	6afb      	ldr	r3, [r7, #44]	@ 0x2c
     894:	2b0f      	cmp	r3, #15
     896:	d05b      	beq.n	0x950
     898:	7e3b      	ldrb	r3, [r7, #24]
     89a:	f003 030f 	and.w	r3, r3, #15
     89e:	757b      	strb	r3, [r7, #21]
     8a0:	e9d7 3408 	ldrd	r3, r4, [r7, #32]
     8a4:	f04f 0500 	mov.w	r5, #0
     8a8:	f04f 0600 	mov.w	r6, #0
     8ac:	071e      	lsls	r6, r3, #28
     8ae:	2500      	movs	r5, #0
     8b0:	e9d7 1206 	ldrd	r1, r2, [r7, #24]
     8b4:	f04f 0b00 	mov.w	fp, #0
     8b8:	f04f 0c00 	mov.w	ip, #0
     8bc:	ea4f 1b11 	mov.w	fp, r1, lsr #4
     8c0:	ea4b 7b02 	orr.w	fp, fp, r2, lsl #28
     8c4:	ea4f 1c12 	mov.w	ip, r2, lsr #4
     8c8:	ea4b 0305 	orr.w	r3, fp, r5
     8cc:	ea4c 0406 	orr.w	r4, ip, r6
     8d0:	e9c7 3406 	strd	r3, r4, [r7, #24]
     8d4:	e9d7 1208 	ldrd	r1, r2, [r7, #32]
     8d8:	f04f 0300 	mov.w	r3, #0
     8dc:	f04f 0400 	mov.w	r4, #0
     8e0:	090b      	lsrs	r3, r1, #4
     8e2:	ea43 7302 	orr.w	r3, r3, r2, lsl #28
     8e6:	0914      	lsrs	r4, r2, #4
     8e8:	e9c7 3408 	strd	r3, r4, [r7, #32]
     8ec:	7d7b      	ldrb	r3, [r7, #21]
     8ee:	4aab      	ldr	r2, [pc, #684]	@ (0xb9c)
     8f0:	00db      	lsls	r3, r3, #3
     8f2:	4413      	add	r3, r2
     8f4:	e9d3 1200 	ldrd	r1, r2, [r3]
     8f8:	f04f 0500 	mov.w	r5, #0
     8fc:	f04f 0600 	mov.w	r6, #0
     900:	040e      	lsls	r6, r1, #16
     902:	2500      	movs	r5, #0
     904:	e9d7 1208 	ldrd	r1, r2, [r7, #32]
     908:	ea85 0301 	eor.w	r3, r5, r1
     90c:	ea86 0402 	eor.w	r4, r6, r2
     910:	e9c7 3408 	strd	r3, r4, [r7, #32]
     914:	7dfb      	ldrb	r3, [r7, #23]
     916:	68fa      	ldr	r2, [r7, #12]
     918:	3318      	adds	r3, #24
     91a:	00db      	lsls	r3, r3, #3
     91c:	4413      	add	r3, r2
     91e:	e9d3 5600 	ldrd	r5, r6, [r3]
     922:	e9d7 1208 	ldrd	r1, r2, [r7, #32]
     926:	ea85 0301 	eor.w	r3, r5, r1
     92a:	ea86 0402 	eor.w	r4, r6, r2
     92e:	e9c7 3408 	strd	r3, r4, [r7, #32]
     932:	7dfb      	ldrb	r3, [r7, #23]
     934:	68fa      	ldr	r2, [r7, #12]
     936:	3308      	adds	r3, #8
     938:	00db      	lsls	r3, r3, #3
     93a:	4413      	add	r3, r2
     93c:	e9d3 5600 	ldrd	r5, r6, [r3]
     940:	e9d7 1206 	ldrd	r1, r2, [r7, #24]
     944:	ea85 0301 	eor.w	r3, r5, r1
     948:	ea86 0402 	eor.w	r4, r6, r2
     94c:	e9c7 3406 	strd	r3, r4, [r7, #24]
     950:	7e3b      	ldrb	r3, [r7, #24]
     952:	f003 030f 	and.w	r3, r3, #15
     956:	757b      	strb	r3, [r7, #21]
     958:	e9d7 3408 	ldrd	r3, r4, [r7, #32]
     95c:	f04f 0500 	mov.w	r5, #0
     960:	f04f 0600 	mov.w	r6, #0
     964:	071e      	lsls	r6, r3, #28
     966:	2500      	movs	r5, #0
     968:	e9d7 1206 	ldrd	r1, r2, [r7, #24]
     96c:	f04f 0b00 	mov.w	fp, #0
     970:	f04f 0c00 	mov.w	ip, #0
     974:	ea4f 1b11 	mov.w	fp, r1, lsr #4
     978:	ea4b 7b02 	orr.w	fp, fp, r2, lsl #28
     97c:	ea4f 1c12 	mov.w	ip, r2, lsr #4
     980:	ea4b 0305 	orr.w	r3, fp, r5
     984:	ea4c 0406 	orr.w	r4, ip, r6
     988:	e9c7 3406 	strd	r3, r4, [r7, #24]
     98c:	e9d7 1208 	ldrd	r1, r2, [r7, #32]
     990:	f04f 0300 	mov.w	r3, #0
     994:	f04f 0400 	mov.w	r4, #0
     998:	090b      	lsrs	r3, r1, #4
     99a:	ea43 7302 	orr.w	r3, r3, r2, lsl #28
     99e:	0914      	lsrs	r4, r2, #4
     9a0:	e9c7 3408 	strd	r3, r4, [r7, #32]
     9a4:	7d7b      	ldrb	r3, [r7, #21]
     9a6:	4a7d      	ldr	r2, [pc, #500]	@ (0xb9c)
     9a8:	00db      	lsls	r3, r3, #3
     9aa:	4413      	add	r3, r2
     9ac:	e9d3 1200 	ldrd	r1, r2, [r3]
     9b0:	f04f 0500 	mov.w	r5, #0
     9b4:	f04f 0600 	mov.w	r6, #0
     9b8:	040e      	lsls	r6, r1, #16
     9ba:	2500      	movs	r5, #0
     9bc:	e9d7 1208 	ldrd	r1, r2, [r7, #32]
     9c0:	ea85 0301 	eor.w	r3, r5, r1
     9c4:	ea86 0402 	eor.w	r4, r6, r2
     9c8:	e9c7 3408 	strd	r3, r4, [r7, #32]
     9cc:	7dbb      	ldrb	r3, [r7, #22]
     9ce:	68fa      	ldr	r2, [r7, #12]
     9d0:	3318      	adds	r3, #24
     9d2:	00db      	lsls	r3, r3, #3
     9d4:	4413      	add	r3, r2
     9d6:	e9d3 5600 	ldrd	r5, r6, [r3]
     9da:	e9d7 1208 	ldrd	r1, r2, [r7, #32]
     9de:	ea85 0301 	eor.w	r3, r5, r1
     9e2:	ea86 0402 	eor.w	r4, r6, r2
     9e6:	e9c7 3408 	strd	r3, r4, [r7, #32]
     9ea:	7dbb      	ldrb	r3, [r7, #22]
     9ec:	68fa      	ldr	r2, [r7, #12]
     9ee:	3308      	adds	r3, #8
     9f0:	00db      	lsls	r3, r3, #3
     9f2:	4413      	add	r3, r2
     9f4:	e9d3 5600 	ldrd	r5, r6, [r3]
     9f8:	e9d7 1206 	ldrd	r1, r2, [r7, #24]
     9fc:	ea85 0301 	eor.w	r3, r5, r1
     a00:	ea86 0402 	eor.w	r4, r6, r2
     a04:	e9c7 3406 	strd	r3, r4, [r7, #24]
     a08:	6afb      	ldr	r3, [r7, #44]	@ 0x2c
     a0a:	3b01      	subs	r3, #1
     a0c:	62fb      	str	r3, [r7, #44]	@ 0x2c
     a0e:	6afb      	ldr	r3, [r7, #44]	@ 0x2c
     a10:	2b00      	cmp	r3, #0
     a12:	f6bf af31 	bge.w	0x878
     a16:	e9d7 1208 	ldrd	r1, r2, [r7, #32]
     a1a:	f04f 0300 	mov.w	r3, #0
     a1e:	f04f 0400 	mov.w	r4, #0
     a22:	0e13      	lsrs	r3, r2, #24
     a24:	2400      	movs	r4, #0
     a26:	b2da      	uxtb	r2, r3
     a28:	687b      	ldr	r3, [r7, #4]
     a2a:	701a      	strb	r2, [r3, #0]
     a2c:	e9d7 1208 	ldrd	r1, r2, [r7, #32]
     a30:	f04f 0300 	mov.w	r3, #0
     a34:	f04f 0400 	mov.w	r4, #0
     a38:	0c13      	lsrs	r3, r2, #16
     a3a:	2400      	movs	r4, #0
     a3c:	687a      	ldr	r2, [r7, #4]
     a3e:	3201      	adds	r2, #1
     a40:	b2db      	uxtb	r3, r3
     a42:	7013      	strb	r3, [r2, #0]
     a44:	e9d7 1208 	ldrd	r1, r2, [r7, #32]
     a48:	f04f 0300 	mov.w	r3, #0
     a4c:	f04f 0400 	mov.w	r4, #0
     a50:	0a13      	lsrs	r3, r2, #8
     a52:	2400      	movs	r4, #0
     a54:	687a      	ldr	r2, [r7, #4]
     a56:	3202      	adds	r2, #2
     a58:	b2db      	uxtb	r3, r3
     a5a:	7013      	strb	r3, [r2, #0]
     a5c:	e9d7 1208 	ldrd	r1, r2, [r7, #32]
     a60:	f04f 0300 	mov.w	r3, #0
     a64:	f04f 0400 	mov.w	r4, #0
     a68:	0013      	movs	r3, r2
     a6a:	2400      	movs	r4, #0
     a6c:	687a      	ldr	r2, [r7, #4]
     a6e:	3203      	adds	r2, #3
     a70:	b2db      	uxtb	r3, r3
     a72:	7013      	strb	r3, [r2, #0]
     a74:	e9d7 1208 	ldrd	r1, r2, [r7, #32]
     a78:	f04f 0300 	mov.w	r3, #0
     a7c:	f04f 0400 	mov.w	r4, #0
     a80:	0e0b      	lsrs	r3, r1, #24
     a82:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
     a86:	0e14      	lsrs	r4, r2, #24
     a88:	687a      	ldr	r2, [r7, #4]
     a8a:	3204      	adds	r2, #4
     a8c:	b2db      	uxtb	r3, r3
     a8e:	7013      	strb	r3, [r2, #0]
     a90:	e9d7 1208 	ldrd	r1, r2, [r7, #32]
     a94:	f04f 0300 	mov.w	r3, #0
     a98:	f04f 0400 	mov.w	r4, #0
     a9c:	0c0b      	lsrs	r3, r1, #16
     a9e:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
     aa2:	0c14      	lsrs	r4, r2, #16
     aa4:	687a      	ldr	r2, [r7, #4]
     aa6:	3205      	adds	r2, #5
     aa8:	b2db      	uxtb	r3, r3
     aaa:	7013      	strb	r3, [r2, #0]
     aac:	e9d7 1208 	ldrd	r1, r2, [r7, #32]
     ab0:	f04f 0300 	mov.w	r3, #0
     ab4:	f04f 0400 	mov.w	r4, #0
     ab8:	0a0b      	lsrs	r3, r1, #8
     aba:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
     abe:	0a14      	lsrs	r4, r2, #8
     ac0:	687a      	ldr	r2, [r7, #4]
     ac2:	3206      	adds	r2, #6
     ac4:	b2db      	uxtb	r3, r3
     ac6:	7013      	strb	r3, [r2, #0]
     ac8:	687b      	ldr	r3, [r7, #4]
     aca:	3307      	adds	r3, #7
     acc:	f897 2020 	ldrb.w	r2, [r7, #32]
     ad0:	701a      	strb	r2, [r3, #0]
     ad2:	e9d7 1206 	ldrd	r1, r2, [r7, #24]
     ad6:	f04f 0300 	mov.w	r3, #0
     ada:	f04f 0400 	mov.w	r4, #0
     ade:	0e13      	lsrs	r3, r2, #24
     ae0:	2400      	movs	r4, #0
     ae2:	687a      	ldr	r2, [r7, #4]
     ae4:	3208      	adds	r2, #8
     ae6:	b2db      	uxtb	r3, r3
     ae8:	7013      	strb	r3, [r2, #0]
     aea:	e9d7 1206 	ldrd	r1, r2, [r7, #24]
     aee:	f04f 0300 	mov.w	r3, #0
     af2:	f04f 0400 	mov.w	r4, #0
     af6:	0c13      	lsrs	r3, r2, #16
     af8:	2400      	movs	r4, #0
     afa:	687a      	ldr	r2, [r7, #4]
     afc:	3209      	adds	r2, #9
     afe:	b2db      	uxtb	r3, r3
     b00:	7013      	strb	r3, [r2, #0]
     b02:	e9d7 1206 	ldrd	r1, r2, [r7, #24]
     b06:	f04f 0300 	mov.w	r3, #0
     b0a:	f04f 0400 	mov.w	r4, #0
     b0e:	0a13      	lsrs	r3, r2, #8
     b10:	2400      	movs	r4, #0
     b12:	687a      	ldr	r2, [r7, #4]
     b14:	320a      	adds	r2, #10
     b16:	b2db      	uxtb	r3, r3
     b18:	7013      	strb	r3, [r2, #0]
     b1a:	e9d7 1206 	ldrd	r1, r2, [r7, #24]
     b1e:	f04f 0300 	mov.w	r3, #0
     b22:	f04f 0400 	mov.w	r4, #0
     b26:	0013      	movs	r3, r2
     b28:	2400      	movs	r4, #0
     b2a:	687a      	ldr	r2, [r7, #4]
     b2c:	320b      	adds	r2, #11
     b2e:	b2db      	uxtb	r3, r3
     b30:	7013      	strb	r3, [r2, #0]
     b32:	e9d7 1206 	ldrd	r1, r2, [r7, #24]
     b36:	f04f 0300 	mov.w	r3, #0
     b3a:	f04f 0400 	mov.w	r4, #0
     b3e:	0e0b      	lsrs	r3, r1, #24
     b40:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
     b44:	0e14      	lsrs	r4, r2, #24
     b46:	687a      	ldr	r2, [r7, #4]
     b48:	320c      	adds	r2, #12
     b4a:	b2db      	uxtb	r3, r3
     b4c:	7013      	strb	r3, [r2, #0]
     b4e:	e9d7 1206 	ldrd	r1, r2, [r7, #24]
     b52:	f04f 0300 	mov.w	r3, #0
     b56:	f04f 0400 	mov.w	r4, #0
     b5a:	0c0b      	lsrs	r3, r1, #16
     b5c:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
     b60:	0c14      	lsrs	r4, r2, #16
     b62:	687a      	ldr	r2, [r7, #4]
     b64:	320d      	adds	r2, #13
     b66:	b2db      	uxtb	r3, r3
     b68:	7013      	strb	r3, [r2, #0]
     b6a:	e9d7 1206 	ldrd	r1, r2, [r7, #24]
     b6e:	f04f 0300 	mov.w	r3, #0
     b72:	f04f 0400 	mov.w	r4, #0
     b76:	0a0b      	lsrs	r3, r1, #8
     b78:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
     b7c:	0a14      	lsrs	r4, r2, #8
     b7e:	687a      	ldr	r2, [r7, #4]
     b80:	320e      	adds	r2, #14
     b82:	b2db      	uxtb	r3, r3
     b84:	7013      	strb	r3, [r2, #0]
     b86:	687b      	ldr	r3, [r7, #4]
     b88:	330f      	adds	r3, #15
     b8a:	7e3a      	ldrb	r2, [r7, #24]
     b8c:	701a      	strb	r2, [r3, #0]
     b8e:	bf00      	nop
     b90:	3734      	adds	r7, #52	@ 0x34
     b92:	46bd      	mov	sp, r7
     b94:	e8bd 08f0 	ldmia.w	sp!, {r4, r5, r6, r7, fp}
     b98:	4770      	bx	lr
     b9a:	bf00      	nop
     b9c:	4b58      	ldr	r3, [pc, #352]	@ (0xd00)
     b9e:	0803      	lsrs	r3, r0, #32
     ba0:	b590      	push	{r4, r7, lr}
     ba2:	b091      	sub	sp, #68	@ 0x44
     ba4:	af02      	add	r7, sp, #8
     ba6:	60f8      	str	r0, [r7, #12]
     ba8:	60b9      	str	r1, [r7, #8]
     baa:	607a      	str	r2, [r7, #4]
     bac:	603b      	str	r3, [r7, #0]
     bae:	2300      	movs	r3, #0
     bb0:	617b      	str	r3, [r7, #20]
     bb2:	683b      	ldr	r3, [r7, #0]
     bb4:	2b00      	cmp	r3, #0
     bb6:	d017      	beq.n	0xbe8
     bb8:	683b      	ldr	r3, [r7, #0]
     bba:	4619      	mov	r1, r3
     bbc:	f04f 0200 	mov.w	r2, #0
     bc0:	f04f 0300 	mov.w	r3, #0
     bc4:	f04f 0400 	mov.w	r4, #0
     bc8:	0f53      	lsrs	r3, r2, #29
     bca:	2400      	movs	r4, #0
     bcc:	4323      	orrs	r3, r4
     bce:	d10b      	bne.n	0xbe8
     bd0:	6cfb      	ldr	r3, [r7, #76]	@ 0x4c
     bd2:	4619      	mov	r1, r3
     bd4:	f04f 0200 	mov.w	r2, #0
     bd8:	f04f 0300 	mov.w	r3, #0
     bdc:	f04f 0400 	mov.w	r4, #0
     be0:	0f53      	lsrs	r3, r2, #29
     be2:	2400      	movs	r4, #0
     be4:	4323      	orrs	r3, r4
     be6:	d002      	beq.n	0xbee
     be8:	f06f 0313 	mvn.w	r3, #19
     bec:	e10c      	b.n	0xe08
     bee:	68fb      	ldr	r3, [r7, #12]
     bf0:	f503 73b0 	add.w	r3, r3, #352	@ 0x160
     bf4:	2210      	movs	r2, #16
     bf6:	2100      	movs	r1, #0
     bf8:	4618      	mov	r0, r3
     bfa:	f009 fd8a 	bl	0xa712
     bfe:	68fb      	ldr	r3, [r7, #12]
     c00:	f503 73b8 	add.w	r3, r3, #368	@ 0x170
     c04:	2210      	movs	r2, #16
     c06:	2100      	movs	r1, #0
     c08:	4618      	mov	r0, r3
     c0a:	f009 fd82 	bl	0xa712
     c0e:	68fb      	ldr	r3, [r7, #12]
     c10:	68ba      	ldr	r2, [r7, #8]
     c12:	f8c3 2180 	str.w	r2, [r3, #384]	@ 0x180
     c16:	68fb      	ldr	r3, [r7, #12]
     c18:	f503 72a0 	add.w	r2, r3, #320	@ 0x140
     c1c:	f04f 0300 	mov.w	r3, #0
     c20:	f04f 0400 	mov.w	r4, #0
     c24:	e9c2 3400 	strd	r3, r4, [r2]
     c28:	68fb      	ldr	r3, [r7, #12]
     c2a:	f503 72a4 	add.w	r2, r3, #328	@ 0x148
     c2e:	f04f 0300 	mov.w	r3, #0
     c32:	f04f 0400 	mov.w	r4, #0
     c36:	e9c2 3400 	strd	r3, r4, [r2]
     c3a:	683b      	ldr	r3, [r7, #0]
     c3c:	2b0c      	cmp	r3, #12
     c3e:	d10c      	bne.n	0xc5a
     c40:	68fb      	ldr	r3, [r7, #12]
     c42:	f503 73b0 	add.w	r3, r3, #352	@ 0x160
     c46:	683a      	ldr	r2, [r7, #0]
     c48:	6879      	ldr	r1, [r7, #4]
     c4a:	4618      	mov	r0, r3
     c4c:	f009 fd3d 	bl	0xa6ca
     c50:	68fb      	ldr	r3, [r7, #12]
     c52:	2201      	movs	r2, #1
     c54:	f883 216f 	strb.w	r2, [r3, #367]	@ 0x16f
     c58:	e07f      	b.n	0xd5a
     c5a:	f107 0318 	add.w	r3, r7, #24
     c5e:	2210      	movs	r2, #16
     c60:	2100      	movs	r1, #0
     c62:	4618      	mov	r0, r3
     c64:	f009 fd55 	bl	0xa712
     c68:	683b      	ldr	r3, [r7, #0]
     c6a:	00db      	lsls	r3, r3, #3
     c6c:	0e1b      	lsrs	r3, r3, #24
     c6e:	b2db      	uxtb	r3, r3
     c70:	f887 3024 	strb.w	r3, [r7, #36]	@ 0x24
     c74:	683b      	ldr	r3, [r7, #0]
     c76:	00db      	lsls	r3, r3, #3
     c78:	0c1b      	lsrs	r3, r3, #16
     c7a:	b2db      	uxtb	r3, r3
     c7c:	f887 3025 	strb.w	r3, [r7, #37]	@ 0x25
     c80:	683b      	ldr	r3, [r7, #0]
     c82:	00db      	lsls	r3, r3, #3
     c84:	0a1b      	lsrs	r3, r3, #8
     c86:	b2db      	uxtb	r3, r3
     c88:	f887 3026 	strb.w	r3, [r7, #38]	@ 0x26
     c8c:	683b      	ldr	r3, [r7, #0]
     c8e:	b2db      	uxtb	r3, r3
     c90:	00db      	lsls	r3, r3, #3
     c92:	b2db      	uxtb	r3, r3
     c94:	f887 3027 	strb.w	r3, [r7, #39]	@ 0x27
     c98:	687b      	ldr	r3, [r7, #4]
     c9a:	633b      	str	r3, [r7, #48]	@ 0x30
     c9c:	e033      	b.n	0xd06
     c9e:	683b      	ldr	r3, [r7, #0]
     ca0:	2b10      	cmp	r3, #16
     ca2:	bf28      	it	cs
     ca4:	2310      	movcs	r3, #16
     ca6:	62fb      	str	r3, [r7, #44]	@ 0x2c
     ca8:	2300      	movs	r3, #0
     caa:	637b      	str	r3, [r7, #52]	@ 0x34
     cac:	e015      	b.n	0xcda
     cae:	68fa      	ldr	r2, [r7, #12]
     cb0:	6b7b      	ldr	r3, [r7, #52]	@ 0x34
     cb2:	4413      	add	r3, r2
     cb4:	f503 73b0 	add.w	r3, r3, #352	@ 0x160
     cb8:	781a      	ldrb	r2, [r3, #0]
     cba:	6b39      	ldr	r1, [r7, #48]	@ 0x30
     cbc:	6b7b      	ldr	r3, [r7, #52]	@ 0x34
     cbe:	440b      	add	r3, r1
     cc0:	781b      	ldrb	r3, [r3, #0]
     cc2:	4053      	eors	r3, r2
     cc4:	b2d9      	uxtb	r1, r3
     cc6:	68fa      	ldr	r2, [r7, #12]
     cc8:	6b7b      	ldr	r3, [r7, #52]	@ 0x34
     cca:	4413      	add	r3, r2
     ccc:	f503 73b0 	add.w	r3, r3, #352	@ 0x160
     cd0:	460a      	mov	r2, r1
     cd2:	701a      	strb	r2, [r3, #0]
     cd4:	6b7b      	ldr	r3, [r7, #52]	@ 0x34
     cd6:	3301      	adds	r3, #1
     cd8:	637b      	str	r3, [r7, #52]	@ 0x34
     cda:	6b7a      	ldr	r2, [r7, #52]	@ 0x34
     cdc:	6afb      	ldr	r3, [r7, #44]	@ 0x2c
     cde:	429a      	cmp	r2, r3
     ce0:	d3e5      	bcc.n	0xcae
     ce2:	68fb      	ldr	r3, [r7, #12]
     ce4:	f503 71b0 	add.w	r1, r3, #352	@ 0x160
     ce8:	68fb      	ldr	r3, [r7, #12]
     cea:	f503 73b0 	add.w	r3, r3, #352	@ 0x160
     cee:	461a      	mov	r2, r3
     cf0:	68f8      	ldr	r0, [r7, #12]
     cf2:	f7ff fd9d 	bl	0x830
     cf6:	683a      	ldr	r2, [r7, #0]
     cf8:	6afb      	ldr	r3, [r7, #44]	@ 0x2c
     cfa:	1ad3      	subs	r3, r2, r3
     cfc:	603b      	str	r3, [r7, #0]
     cfe:	6b3a      	ldr	r2, [r7, #48]	@ 0x30
     d00:	6afb      	ldr	r3, [r7, #44]	@ 0x2c
     d02:	4413      	add	r3, r2
     d04:	633b      	str	r3, [r7, #48]	@ 0x30
     d06:	683b      	ldr	r3, [r7, #0]
     d08:	2b00      	cmp	r3, #0
     d0a:	d1c8      	bne.n	0xc9e
     d0c:	2300      	movs	r3, #0
     d0e:	637b      	str	r3, [r7, #52]	@ 0x34
     d10:	e016      	b.n	0xd40
     d12:	68fa      	ldr	r2, [r7, #12]
     d14:	6b7b      	ldr	r3, [r7, #52]	@ 0x34
     d16:	4413      	add	r3, r2
     d18:	f503 73b0 	add.w	r3, r3, #352	@ 0x160
     d1c:	781a      	ldrb	r2, [r3, #0]
     d1e:	f107 0118 	add.w	r1, r7, #24
     d22:	6b7b      	ldr	r3, [r7, #52]	@ 0x34
     d24:	440b      	add	r3, r1
     d26:	781b      	ldrb	r3, [r3, #0]
     d28:	4053      	eors	r3, r2
     d2a:	b2d9      	uxtb	r1, r3
     d2c:	68fa      	ldr	r2, [r7, #12]
     d2e:	6b7b      	ldr	r3, [r7, #52]	@ 0x34
     d30:	4413      	add	r3, r2
     d32:	f503 73b0 	add.w	r3, r3, #352	@ 0x160
     d36:	460a      	mov	r2, r1
     d38:	701a      	strb	r2, [r3, #0]
     d3a:	6b7b      	ldr	r3, [r7, #52]	@ 0x34
     d3c:	3301      	adds	r3, #1
     d3e:	637b      	str	r3, [r7, #52]	@ 0x34
     d40:	6b7b      	ldr	r3, [r7, #52]	@ 0x34
     d42:	2b0f      	cmp	r3, #15
     d44:	d9e5      	bls.n	0xd12
     d46:	68fb      	ldr	r3, [r7, #12]
     d48:	f503 71b0 	add.w	r1, r3, #352	@ 0x160
     d4c:	68fb      	ldr	r3, [r7, #12]
     d4e:	f503 73b0 	add.w	r3, r3, #352	@ 0x160
     d52:	461a      	mov	r2, r3
     d54:	68f8      	ldr	r0, [r7, #12]
     d56:	f7ff fd6b 	bl	0x830
     d5a:	68f8      	ldr	r0, [r7, #12]
     d5c:	68fb      	ldr	r3, [r7, #12]
     d5e:	f503 71b0 	add.w	r1, r3, #352	@ 0x160
     d62:	68fb      	ldr	r3, [r7, #12]
     d64:	f503 72a8 	add.w	r2, r3, #336	@ 0x150
     d68:	f107 0314 	add.w	r3, r7, #20
     d6c:	9300      	str	r3, [sp, #0]
     d6e:	4613      	mov	r3, r2
     d70:	2210      	movs	r2, #16
     d72:	f7fe ff0f 	bl	0xfffffb94
     d76:	62b8      	str	r0, [r7, #40]	@ 0x28
     d78:	6abb      	ldr	r3, [r7, #40]	@ 0x28
     d7a:	2b00      	cmp	r3, #0
     d7c:	d001      	beq.n	0xd82
     d7e:	6abb      	ldr	r3, [r7, #40]	@ 0x28
     d80:	e042      	b.n	0xe08
     d82:	6cfb      	ldr	r3, [r7, #76]	@ 0x4c
     d84:	f04f 0400 	mov.w	r4, #0
     d88:	68fa      	ldr	r2, [r7, #12]
     d8a:	f502 72a4 	add.w	r2, r2, #328	@ 0x148
     d8e:	e9c2 3400 	strd	r3, r4, [r2]
     d92:	6cbb      	ldr	r3, [r7, #72]	@ 0x48
     d94:	633b      	str	r3, [r7, #48]	@ 0x30
     d96:	e033      	b.n	0xe00
     d98:	6cfb      	ldr	r3, [r7, #76]	@ 0x4c
     d9a:	2b10      	cmp	r3, #16
     d9c:	bf28      	it	cs
     d9e:	2310      	movcs	r3, #16
     da0:	62fb      	str	r3, [r7, #44]	@ 0x2c
     da2:	2300      	movs	r3, #0
     da4:	637b      	str	r3, [r7, #52]	@ 0x34
     da6:	e015      	b.n	0xdd4
     da8:	68fa      	ldr	r2, [r7, #12]
     daa:	6b7b      	ldr	r3, [r7, #52]	@ 0x34
     dac:	4413      	add	r3, r2
     dae:	f503 73b8 	add.w	r3, r3, #368	@ 0x170
     db2:	781a      	ldrb	r2, [r3, #0]
     db4:	6b39      	ldr	r1, [r7, #48]	@ 0x30
     db6:	6b7b      	ldr	r3, [r7, #52]	@ 0x34
     db8:	440b      	add	r3, r1
     dba:	781b      	ldrb	r3, [r3, #0]
     dbc:	4053      	eors	r3, r2
     dbe:	b2d9      	uxtb	r1, r3
     dc0:	68fa      	ldr	r2, [r7, #12]
     dc2:	6b7b      	ldr	r3, [r7, #52]	@ 0x34
     dc4:	4413      	add	r3, r2
     dc6:	f503 73b8 	add.w	r3, r3, #368	@ 0x170
     dca:	460a      	mov	r2, r1
     dcc:	701a      	strb	r2, [r3, #0]
     dce:	6b7b      	ldr	r3, [r7, #52]	@ 0x34
     dd0:	3301      	adds	r3, #1
     dd2:	637b      	str	r3, [r7, #52]	@ 0x34
     dd4:	6b7a      	ldr	r2, [r7, #52]	@ 0x34
     dd6:	6afb      	ldr	r3, [r7, #44]	@ 0x2c
     dd8:	429a      	cmp	r2, r3
     dda:	d3e5      	bcc.n	0xda8
     ddc:	68fb      	ldr	r3, [r7, #12]
     dde:	f503 71b8 	add.w	r1, r3, #368	@ 0x170
     de2:	68fb      	ldr	r3, [r7, #12]
     de4:	f503 73b8 	add.w	r3, r3, #368	@ 0x170
     de8:	461a      	mov	r2, r3
     dea:	68f8      	ldr	r0, [r7, #12]
     dec:	f7ff fd20 	bl	0x830
     df0:	6cfa      	ldr	r2, [r7, #76]	@ 0x4c
     df2:	6afb      	ldr	r3, [r7, #44]	@ 0x2c
     df4:	1ad3      	subs	r3, r2, r3
     df6:	64fb      	str	r3, [r7, #76]	@ 0x4c
     df8:	6b3a      	ldr	r2, [r7, #48]	@ 0x30
     dfa:	6afb      	ldr	r3, [r7, #44]	@ 0x2c
     dfc:	4413      	add	r3, r2
     dfe:	633b      	str	r3, [r7, #48]	@ 0x30
     e00:	6cfb      	ldr	r3, [r7, #76]	@ 0x4c
     e02:	2b00      	cmp	r3, #0
     e04:	d1c8      	bne.n	0xd98
     e06:	2300      	movs	r3, #0
     e08:	4618      	mov	r0, r3
     e0a:	373c      	adds	r7, #60	@ 0x3c
     e0c:	46bd      	mov	sp, r7
     e0e:	bd90      	pop	{r4, r7, pc}
     e10:	e92d 4890 	stmdb	sp!, {r4, r7, fp, lr}
     e14:	b090      	sub	sp, #64	@ 0x40
     e16:	af02      	add	r7, sp, #8
     e18:	60f8      	str	r0, [r7, #12]
     e1a:	60b9      	str	r1, [r7, #8]
     e1c:	607a      	str	r2, [r7, #4]
     e1e:	603b      	str	r3, [r7, #0]
     e20:	683b      	ldr	r3, [r7, #0]
     e22:	62fb      	str	r3, [r7, #44]	@ 0x2c
     e24:	2300      	movs	r3, #0
     e26:	613b      	str	r3, [r7, #16]
     e28:	683a      	ldr	r2, [r7, #0]
     e2a:	687b      	ldr	r3, [r7, #4]
     e2c:	429a      	cmp	r2, r3
     e2e:	d909      	bls.n	0xe44
     e30:	683a      	ldr	r2, [r7, #0]
     e32:	687b      	ldr	r3, [r7, #4]
     e34:	1ad3      	subs	r3, r2, r3
     e36:	461a      	mov	r2, r3
     e38:	68bb      	ldr	r3, [r7, #8]
     e3a:	4293      	cmp	r3, r2
     e3c:	d902      	bls.n	0xe44
     e3e:	f06f 0313 	mvn.w	r3, #19
     e42:	e0da      	b.n	0xffa
     e44:	68fb      	ldr	r3, [r7, #12]
     e46:	f503 73a0 	add.w	r3, r3, #320	@ 0x140
     e4a:	e9d3 bc00 	ldrd	fp, ip, [r3]
     e4e:	68bb      	ldr	r3, [r7, #8]
     e50:	f04f 0400 	mov.w	r4, #0
     e54:	eb1b 0103 	adds.w	r1, fp, r3
     e58:	eb4c 0204 	adc.w	r2, ip, r4
     e5c:	68fb      	ldr	r3, [r7, #12]
     e5e:	f503 73a0 	add.w	r3, r3, #320	@ 0x140
     e62:	e9d3 3400 	ldrd	r3, r4, [r3]
     e66:	42a2      	cmp	r2, r4
     e68:	bf08      	it	eq
     e6a:	4299      	cmpeq	r1, r3
     e6c:	d314      	bcc.n	0xe98
     e6e:	68fb      	ldr	r3, [r7, #12]
     e70:	f503 73a0 	add.w	r3, r3, #320	@ 0x140
     e74:	e9d3 1200 	ldrd	r1, r2, [r3]
     e78:	68bb      	ldr	r3, [r7, #8]
     e7a:	469b      	mov	fp, r3
     e7c:	f04f 0c00 	mov.w	ip, #0
     e80:	eb1b 0301 	adds.w	r3, fp, r1
     e84:	eb4c 0402 	adc.w	r4, ip, r2
     e88:	f06f 011f 	mvn.w	r1, #31
     e8c:	f04f 020f 	mov.w	r2, #15
     e90:	42a2      	cmp	r2, r4
     e92:	bf08      	it	eq
     e94:	4299      	cmpeq	r1, r3
     e96:	d202      	bcs.n	0xe9e
     e98:	f06f 0313 	mvn.w	r3, #19
     e9c:	e0ad      	b.n	0xffa
     e9e:	68fb      	ldr	r3, [r7, #12]
     ea0:	f503 73a0 	add.w	r3, r3, #320	@ 0x140
     ea4:	e9d3 1200 	ldrd	r1, r2, [r3]
     ea8:	68bb      	ldr	r3, [r7, #8]
     eaa:	469b      	mov	fp, r3
     eac:	f04f 0c00 	mov.w	ip, #0
     eb0:	eb1b 0301 	adds.w	r3, fp, r1
     eb4:	eb4c 0402 	adc.w	r4, ip, r2
     eb8:	68fa      	ldr	r2, [r7, #12]
     eba:	f502 72a0 	add.w	r2, r2, #320	@ 0x140
     ebe:	e9c2 3400 	strd	r3, r4, [r2]
     ec2:	687b      	ldr	r3, [r7, #4]
     ec4:	633b      	str	r3, [r7, #48]	@ 0x30
     ec6:	e093      	b.n	0xff0
     ec8:	68bb      	ldr	r3, [r7, #8]
     eca:	2b10      	cmp	r3, #16
     ecc:	bf28      	it	cs
     ece:	2310      	movcs	r3, #16
     ed0:	62bb      	str	r3, [r7, #40]	@ 0x28
     ed2:	2310      	movs	r3, #16
     ed4:	637b      	str	r3, [r7, #52]	@ 0x34
     ed6:	e014      	b.n	0xf02
     ed8:	6b7b      	ldr	r3, [r7, #52]	@ 0x34
     eda:	3b01      	subs	r3, #1
     edc:	68fa      	ldr	r2, [r7, #12]
     ede:	441a      	add	r2, r3
     ee0:	f892 2160 	ldrb.w	r2, [r2, #352]	@ 0x160
     ee4:	3201      	adds	r2, #1
     ee6:	b2d1      	uxtb	r1, r2
     ee8:	68fa      	ldr	r2, [r7, #12]
     eea:	441a      	add	r2, r3
     eec:	f882 1160 	strb.w	r1, [r2, #352]	@ 0x160
     ef0:	68fa      	ldr	r2, [r7, #12]
     ef2:	4413      	add	r3, r2
     ef4:	f893 3160 	ldrb.w	r3, [r3, #352]	@ 0x160
     ef8:	2b00      	cmp	r3, #0
     efa:	d106      	bne.n	0xf0a
     efc:	6b7b      	ldr	r3, [r7, #52]	@ 0x34
     efe:	3b01      	subs	r3, #1
     f00:	637b      	str	r3, [r7, #52]	@ 0x34
     f02:	6b7b      	ldr	r3, [r7, #52]	@ 0x34
     f04:	2b0c      	cmp	r3, #12
     f06:	d8e7      	bhi.n	0xed8
     f08:	e000      	b.n	0xf0c
     f0a:	bf00      	nop
     f0c:	68f8      	ldr	r0, [r7, #12]
     f0e:	68fb      	ldr	r3, [r7, #12]
     f10:	f503 71b0 	add.w	r1, r3, #352	@ 0x160
     f14:	f107 0214 	add.w	r2, r7, #20
     f18:	f107 0310 	add.w	r3, r7, #16
     f1c:	9300      	str	r3, [sp, #0]
     f1e:	4613      	mov	r3, r2
     f20:	2210      	movs	r2, #16
     f22:	f7fe fe37 	bl	0xfffffb94
     f26:	6278      	str	r0, [r7, #36]	@ 0x24
     f28:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
     f2a:	2b00      	cmp	r3, #0
     f2c:	d001      	beq.n	0xf32
     f2e:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
     f30:	e063      	b.n	0xffa
     f32:	2300      	movs	r3, #0
     f34:	637b      	str	r3, [r7, #52]	@ 0x34
     f36:	e041      	b.n	0xfbc
     f38:	68fb      	ldr	r3, [r7, #12]
     f3a:	f8d3 3180 	ldr.w	r3, [r3, #384]	@ 0x180
     f3e:	2b00      	cmp	r3, #0
     f40:	d112      	bne.n	0xf68
     f42:	68fa      	ldr	r2, [r7, #12]
     f44:	6b7b      	ldr	r3, [r7, #52]	@ 0x34
     f46:	4413      	add	r3, r2
     f48:	f503 73b8 	add.w	r3, r3, #368	@ 0x170
     f4c:	781a      	ldrb	r2, [r3, #0]
     f4e:	6b39      	ldr	r1, [r7, #48]	@ 0x30
     f50:	6b7b      	ldr	r3, [r7, #52]	@ 0x34
     f52:	440b      	add	r3, r1
     f54:	781b      	ldrb	r3, [r3, #0]
     f56:	4053      	eors	r3, r2
     f58:	b2d9      	uxtb	r1, r3
     f5a:	68fa      	ldr	r2, [r7, #12]
     f5c:	6b7b      	ldr	r3, [r7, #52]	@ 0x34
     f5e:	4413      	add	r3, r2
     f60:	f503 73b8 	add.w	r3, r3, #368	@ 0x170
     f64:	460a      	mov	r2, r1
     f66:	701a      	strb	r2, [r3, #0]
     f68:	f107 0214 	add.w	r2, r7, #20
     f6c:	6b7b      	ldr	r3, [r7, #52]	@ 0x34
     f6e:	4413      	add	r3, r2
     f70:	7819      	ldrb	r1, [r3, #0]
     f72:	6b3a      	ldr	r2, [r7, #48]	@ 0x30
     f74:	6b7b      	ldr	r3, [r7, #52]	@ 0x34
     f76:	4413      	add	r3, r2
     f78:	781a      	ldrb	r2, [r3, #0]
     f7a:	6af8      	ldr	r0, [r7, #44]	@ 0x2c
     f7c:	6b7b      	ldr	r3, [r7, #52]	@ 0x34
     f7e:	4403      	add	r3, r0
     f80:	404a      	eors	r2, r1
     f82:	b2d2      	uxtb	r2, r2
     f84:	701a      	strb	r2, [r3, #0]
     f86:	68fb      	ldr	r3, [r7, #12]
     f88:	f8d3 3180 	ldr.w	r3, [r3, #384]	@ 0x180
     f8c:	2b01      	cmp	r3, #1
     f8e:	d112      	bne.n	0xfb6
     f90:	68fa      	ldr	r2, [r7, #12]
     f92:	6b7b      	ldr	r3, [r7, #52]	@ 0x34
     f94:	4413      	add	r3, r2
     f96:	f503 73b8 	add.w	r3, r3, #368	@ 0x170
     f9a:	781a      	ldrb	r2, [r3, #0]
     f9c:	6af9      	ldr	r1, [r7, #44]	@ 0x2c
     f9e:	6b7b      	ldr	r3, [r7, #52]	@ 0x34
     fa0:	440b      	add	r3, r1
     fa2:	781b      	ldrb	r3, [r3, #0]
     fa4:	4053      	eors	r3, r2
     fa6:	b2d9      	uxtb	r1, r3
     fa8:	68fa      	ldr	r2, [r7, #12]
     faa:	6b7b      	ldr	r3, [r7, #52]	@ 0x34
     fac:	4413      	add	r3, r2
     fae:	f503 73b8 	add.w	r3, r3, #368	@ 0x170
     fb2:	460a      	mov	r2, r1
     fb4:	701a      	strb	r2, [r3, #0]
     fb6:	6b7b      	ldr	r3, [r7, #52]	@ 0x34
     fb8:	3301      	adds	r3, #1
     fba:	637b      	str	r3, [r7, #52]	@ 0x34
     fbc:	6b7a      	ldr	r2, [r7, #52]	@ 0x34
     fbe:	6abb      	ldr	r3, [r7, #40]	@ 0x28
     fc0:	429a      	cmp	r2, r3
     fc2:	d3b9      	bcc.n	0xf38
     fc4:	68fb      	ldr	r3, [r7, #12]
     fc6:	f503 71b8 	add.w	r1, r3, #368	@ 0x170
     fca:	68fb      	ldr	r3, [r7, #12]
     fcc:	f503 73b8 	add.w	r3, r3, #368	@ 0x170
     fd0:	461a      	mov	r2, r3
     fd2:	68f8      	ldr	r0, [r7, #12]
     fd4:	f7ff fc2c 	bl	0x830
     fd8:	68ba      	ldr	r2, [r7, #8]
     fda:	6abb      	ldr	r3, [r7, #40]	@ 0x28
     fdc:	1ad3      	subs	r3, r2, r3
     fde:	60bb      	str	r3, [r7, #8]
     fe0:	6b3a      	ldr	r2, [r7, #48]	@ 0x30
     fe2:	6abb      	ldr	r3, [r7, #40]	@ 0x28
     fe4:	4413      	add	r3, r2
     fe6:	633b      	str	r3, [r7, #48]	@ 0x30
     fe8:	6afa      	ldr	r2, [r7, #44]	@ 0x2c
     fea:	6abb      	ldr	r3, [r7, #40]	@ 0x28
     fec:	4413      	add	r3, r2
     fee:	62fb      	str	r3, [r7, #44]	@ 0x2c
     ff0:	68bb      	ldr	r3, [r7, #8]
     ff2:	2b00      	cmp	r3, #0
     ff4:	f47f af68 	bne.w	0xec8
     ff8:	2300      	movs	r3, #0
     ffa:	4618      	mov	r0, r3
     ffc:	3738      	adds	r7, #56	@ 0x38
     ffe:	46bd      	mov	sp, r7
    1000:	e8bd 8890 	ldmia.w	sp!, {r4, r7, fp, pc}
    1004:	b590      	push	{r4, r7, lr}
    1006:	b08f      	sub	sp, #60	@ 0x3c
    1008:	af00      	add	r7, sp, #0
    100a:	60f8      	str	r0, [r7, #12]
    100c:	60b9      	str	r1, [r7, #8]
    100e:	607a      	str	r2, [r7, #4]
