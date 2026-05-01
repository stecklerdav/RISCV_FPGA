
prog_asm.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <__text_start>:
   0:	04000093          	addi	x1,x0,64
   4:	08000113          	addi	x2,x0,128
   8:	0c000193          	addi	x3,x0,192
   c:	00000f13          	addi	x30,x0,0
  10:	00000f93          	addi	x31,x0,0
  14:	00100f13          	addi	x30,x0,1
  18:	00500513          	addi	x10,x0,5
  1c:	00a505b3          	add	x11,x10,x10
  20:	00a00213          	addi	x4,x0,10
  24:	3a459e63          	bne	x11,x4,3e0 <fail>
  28:	00200f13          	addi	x30,x0,2
  2c:	00358613          	addi	x12,x11,3
  30:	00b606b3          	add	x13,x12,x11
  34:	01700213          	addi	x4,x0,23
  38:	3a469463          	bne	x13,x4,3e0 <fail>
  3c:	00300f13          	addi	x30,x0,3
  40:	00100713          	addi	x14,x0,1
  44:	00170713          	addi	x14,x14,1
  48:	000707b3          	add	x15,x14,x0
  4c:	00200213          	addi	x4,x0,2
  50:	38479863          	bne	x15,x4,3e0 <fail>
  54:	00400f13          	addi	x30,x0,4
  58:	00a00813          	addi	x16,x0,10
  5c:	00180813          	addi	x16,x16,1
  60:	00180813          	addi	x16,x16,1
  64:	00180813          	addi	x16,x16,1
  68:	00d00213          	addi	x4,x0,13
  6c:	36481a63          	bne	x16,x4,3e0 <fail>
  70:	00500f13          	addi	x30,x0,5
  74:	01900513          	addi	x10,x0,25
  78:	00a0a023          	sw	x10,0(x1)
  7c:	0000a583          	lw	x11,0(x1)
  80:	01900213          	addi	x4,x0,25
  84:	34459e63          	bne	x11,x4,3e0 <fail>
  88:	00600f13          	addi	x30,x0,6
  8c:	0000a603          	lw	x12,0(x1)
  90:	00760693          	addi	x13,x12,7
  94:	02000213          	addi	x4,x0,32
  98:	34469463          	bne	x13,x4,3e0 <fail>
  9c:	00700f13          	addi	x30,x0,7
  a0:	00800713          	addi	x14,x0,8
  a4:	0000a783          	lw	x15,0(x1)
  a8:	00f70833          	add	x16,x14,x15
  ac:	02100213          	addi	x4,x0,33
  b0:	32481863          	bne	x16,x4,3e0 <fail>
  b4:	00800f13          	addi	x30,x0,8
  b8:	0000a883          	lw	x17,0(x1)
  bc:	0110a223          	sw	x17,4(x1)
  c0:	0040a903          	lw	x18,4(x1)
  c4:	01900213          	addi	x4,x0,25
  c8:	30491c63          	bne	x18,x4,3e0 <fail>
  cc:	00900f13          	addi	x30,x0,9
  d0:	08000293          	addi	x5,x0,128
  d4:	0050a423          	sw	x5,8(x1)
  d8:	0080a983          	lw	x19,8(x1)
  dc:	00d9a023          	sw	x13,0(x19)
  e0:	00012a03          	lw	x20,0(x2)
  e4:	02000213          	addi	x4,x0,32
  e8:	2e4a1c63          	bne	x20,x4,3e0 <fail>
  ec:	00a00f13          	addi	x30,x0,10
  f0:	02c00a93          	addi	x21,x0,44
  f4:	000a8b13          	addi	x22,x21,0
  f8:	015b0463          	beq	x22,x21,100 <T10_OK>
  fc:	2e40006f          	jal	x0,3e0 <fail>

00000100 <T10_OK>:
 100:	00b00f13          	addi	x30,x0,11
 104:	04d00b93          	addi	x23,x0,77
 108:	0170a623          	sw	x23,12(x1)
 10c:	00c0ac03          	lw	x24,12(x1)
 110:	017c0463          	beq	x24,x23,118 <T11_OK>
 114:	2cc0006f          	jal	x0,3e0 <fail>

00000118 <T11_OK>:
 118:	00c00f13          	addi	x30,x0,12
 11c:	00000c93          	addi	x25,x0,0
 120:	00000d13          	addi	x26,x0,0
 124:	00100213          	addi	x4,x0,1
 128:	00100293          	addi	x5,x0,1
 12c:	00520663          	beq	x4,x5,138 <T12_OK>
 130:	06f00c93          	addi	x25,x0,111
 134:	07000d13          	addi	x26,x0,112

00000138 <T12_OK>:
 138:	2a0c9463          	bne	x25,x0,3e0 <fail>
 13c:	2a0d1263          	bne	x26,x0,3e0 <fail>
 140:	00d00f13          	addi	x30,x0,13
 144:	00000c93          	addi	x25,x0,0
 148:	00200213          	addi	x4,x0,2
 14c:	00200293          	addi	x5,x0,2
 150:	00520663          	beq	x4,x5,15c <T13_OK>
 154:	0000a303          	lw	x6,0(x1)
 158:	00630cb3          	add	x25,x6,x6

0000015c <T13_OK>:
 15c:	280c9263          	bne	x25,x0,3e0 <fail>
 160:	00e00f13          	addi	x30,x0,14
 164:	00000c93          	addi	x25,x0,0
 168:	00000d13          	addi	x26,x0,0
 16c:	00c00def          	jal	x27,178 <T14_JAL_OK>
 170:	07100c93          	addi	x25,x0,113
 174:	07200d13          	addi	x26,x0,114

00000178 <T14_JAL_OK>:
 178:	00000217          	auipc	x4,0x0
 17c:	ff820213          	addi	x4,x4,-8 # 170 <T13_OK+0x14>
 180:	264d9063          	bne	x27,x4,3e0 <fail>
 184:	240c9e63          	bne	x25,x0,3e0 <fail>
 188:	240d1c63          	bne	x26,x0,3e0 <fail>
 18c:	00f00f13          	addi	x30,x0,15
 190:	00000c93          	addi	x25,x0,0
 194:	00000d13          	addi	x26,x0,0
 198:	00000297          	auipc	x5,0x0
 19c:	01528293          	addi	x5,x5,21 # 1ad <T15_JALR_OK+0x1>
 1a0:	00028e67          	jalr	x28,0(x5)
 1a4:	07300c93          	addi	x25,x0,115
 1a8:	07400d13          	addi	x26,x0,116

000001ac <T15_JALR_OK>:
 1ac:	00000317          	auipc	x6,0x0
 1b0:	ff830313          	addi	x6,x6,-8 # 1a4 <T14_JAL_OK+0x2c>
 1b4:	226e1663          	bne	x28,x6,3e0 <fail>
 1b8:	220c9463          	bne	x25,x0,3e0 <fail>
 1bc:	220d1263          	bne	x26,x0,3e0 <fail>
 1c0:	01000f13          	addi	x30,x0,16
 1c4:	06300013          	addi	x0,x0,99
 1c8:	00000233          	add	x4,x0,x0
 1cc:	20021a63          	bne	x4,x0,3e0 <fail>
 1d0:	01100f13          	addi	x30,x0,17
 1d4:	06300393          	addi	x7,x0,99
 1d8:	00700413          	addi	x8,x0,7
 1dc:	00700213          	addi	x4,x0,7
 1e0:	20441063          	bne	x8,x4,3e0 <fail>
 1e4:	01200f13          	addi	x30,x0,18
 1e8:	00100493          	addi	x9,x0,1
 1ec:	00549513          	slli	x10,x9,0x5
 1f0:	00255593          	srli	x11,x10,0x2
 1f4:	40155613          	srai	x12,x10,0x1
 1f8:	02000213          	addi	x4,x0,32
 1fc:	1e451263          	bne	x10,x4,3e0 <fail>
 200:	00800213          	addi	x4,x0,8
 204:	1c459e63          	bne	x11,x4,3e0 <fail>
 208:	01000213          	addi	x4,x0,16
 20c:	1c461a63          	bne	x12,x4,3e0 <fail>
 210:	01300f13          	addi	x30,x0,19
 214:	ff800693          	addi	x13,x0,-8
 218:	4016d713          	srai	x14,x13,0x1
 21c:	ffc00213          	addi	x4,x0,-4
 220:	1c471063          	bne	x14,x4,3e0 <fail>
 224:	01400f13          	addi	x30,x0,20
 228:	00100793          	addi	x15,x0,1
 22c:	00500813          	addi	x16,x0,5
 230:	010798b3          	sll	x17,x15,x16
 234:	0108d933          	srl	x18,x17,x16
 238:	fe000993          	addi	x19,x0,-32
 23c:	4109da33          	sra	x20,x19,x16
 240:	02000213          	addi	x4,x0,32
 244:	18489e63          	bne	x17,x4,3e0 <fail>
 248:	00100213          	addi	x4,x0,1
 24c:	18491a63          	bne	x18,x4,3e0 <fail>
 250:	fff00213          	addi	x4,x0,-1
 254:	184a1663          	bne	x20,x4,3e0 <fail>
 258:	01500f13          	addi	x30,x0,21
 25c:	fff00a93          	addi	x21,x0,-1
 260:	000aab33          	slt	x22,x21,x0
 264:	000abbb3          	sltu	x23,x21,x0
 268:	01503c33          	sltu	x24,x0,x21
 26c:	00100213          	addi	x4,x0,1
 270:	164b1863          	bne	x22,x4,3e0 <fail>
 274:	160b9663          	bne	x23,x0,3e0 <fail>
 278:	00100213          	addi	x4,x0,1
 27c:	164c1263          	bne	x24,x4,3e0 <fail>
 280:	01600f13          	addi	x30,x0,22
 284:	fff00213          	addi	x4,x0,-1
 288:	00100293          	addi	x5,x0,1
 28c:	00524463          	blt	x4,x5,294 <T22_A_OK>
 290:	1500006f          	jal	x0,3e0 <fail>

00000294 <T22_A_OK>:
 294:	0042d463          	bge	x5,x4,29c <T22_B_OK>
 298:	1480006f          	jal	x0,3e0 <fail>

0000029c <T22_B_OK>:
 29c:	0042e463          	bltu	x5,x4,2a4 <T22_C_OK>
 2a0:	1400006f          	jal	x0,3e0 <fail>

000002a4 <T22_C_OK>:
 2a4:	00527463          	bgeu	x4,x5,2ac <T22_D_OK>
 2a8:	1380006f          	jal	x0,3e0 <fail>

000002ac <T22_D_OK>:
 2ac:	01700f13          	addi	x30,x0,23
 2b0:	12520863          	beq	x4,x5,3e0 <fail>
 2b4:	12421663          	bne	x4,x4,3e0 <fail>
 2b8:	1242c463          	blt	x5,x4,3e0 <fail>
 2bc:	12525263          	bge	x4,x5,3e0 <fail>
 2c0:	12526063          	bltu	x4,x5,3e0 <fail>
 2c4:	1042fe63          	bgeu	x5,x4,3e0 <fail>
 2c8:	01800f13          	addi	x30,x0,24
 2cc:	00f00513          	addi	x10,x0,15
 2d0:	00a00593          	addi	x11,x0,10
 2d4:	00b57633          	and	x12,x10,x11
 2d8:	00b666b3          	or	x13,x12,x11
 2dc:	00a6c733          	xor	x14,x13,x10
 2e0:	00a00213          	addi	x4,x0,10
 2e4:	0e461e63          	bne	x12,x4,3e0 <fail>
 2e8:	00a00213          	addi	x4,x0,10
 2ec:	0e469a63          	bne	x13,x4,3e0 <fail>
 2f0:	00500213          	addi	x4,x0,5
 2f4:	0e471663          	bne	x14,x4,3e0 <fail>
 2f8:	01900f13          	addi	x30,x0,25
 2fc:	00e1a023          	sw	x14,0(x3)
 300:	0001a783          	lw	x15,0(x3)
 304:	00178813          	addi	x16,x15,1
 308:	0101a223          	sw	x16,4(x3)
 30c:	0041a883          	lw	x17,4(x3)
 310:	01088933          	add	x18,x17,x16
 314:	00c00213          	addi	x4,x0,12
 318:	0c491463          	bne	x18,x4,3e0 <fail>
 31c:	01a00f13          	addi	x30,x0,26
 320:	fff00213          	addi	x4,x0,-1
 324:	00408823          	sb	x4,16(x1)
 328:	01008283          	lb	x5,16(x1)
 32c:	0100c303          	lbu	x6,16(x1)
 330:	fff00393          	addi	x7,x0,-1
 334:	0a729663          	bne	x5,x7,3e0 <fail>
 338:	0ff00393          	addi	x7,x0,255
 33c:	0a731263          	bne	x6,x7,3e0 <fail>
 340:	07f00213          	addi	x4,x0,127
 344:	004088a3          	sb	x4,17(x1)
 348:	01108283          	lb	x5,17(x1)
 34c:	07f00393          	addi	x7,x0,127
 350:	08729863          	bne	x5,x7,3e0 <fail>
 354:	01b00f13          	addi	x30,x0,27
 358:	fff00213          	addi	x4,x0,-1
 35c:	00409a23          	sh	x4,20(x1)
 360:	01409283          	lh	x5,20(x1)
 364:	0140d303          	lhu	x6,20(x1)
 368:	fff00393          	addi	x7,x0,-1
 36c:	06729a63          	bne	x5,x7,3e0 <fail>
 370:	000103b7          	lui	x7,0x10
 374:	fff38393          	addi	x7,x7,-1 # ffff <__ram_end+0xcfff>
 378:	06731463          	bne	x6,x7,3e0 <fail>
 37c:	01c00f13          	addi	x30,x0,28
 380:	00001437          	lui	x8,0x1
 384:	00c45493          	srli	x9,x8,0xc
 388:	00100213          	addi	x4,x0,1
 38c:	04449a63          	bne	x9,x4,3e0 <fail>
 390:	01d00f13          	addi	x30,x0,29
 394:	00300513          	addi	x10,x0,3
 398:	00a505b3          	add	x11,x10,x10
 39c:	00a58633          	add	x12,x11,x10
 3a0:	00160693          	addi	x13,x12,1
 3a4:	00c68733          	add	x14,x13,x12
 3a8:	40a707b3          	sub	x15,x14,x10
 3ac:	00d7c833          	xor	x16,x15,x13
 3b0:	00e878b3          	and	x17,x16,x14
 3b4:	00a8e933          	or	x18,x17,x10
 3b8:	01300213          	addi	x4,x0,19
 3bc:	02491263          	bne	x18,x4,3e0 <fail>
 3c0:	01e00f13          	addi	x30,x0,30
 3c4:	00000c93          	addi	x25,x0,0
 3c8:	00000d13          	addi	x26,x0,0
 3cc:	00900213          	addi	x4,x0,9
 3d0:	00900293          	addi	x5,x0,9
 3d4:	00520c63          	beq	x4,x5,3ec <pass>
 3d8:	0c800c93          	addi	x25,x0,200
 3dc:	0c900d13          	addi	x26,x0,201

000003e0 <fail>:
 3e0:	00000f93          	addi	x31,x0,0
 3e4:	03e0ae23          	sw	x30,60(x1)
 3e8:	0180006f          	jal	x0,400 <done>

000003ec <pass>:
 3ec:	fe0c9ae3          	bne	x25,x0,3e0 <fail>
 3f0:	fe0d18e3          	bne	x26,x0,3e0 <fail>
 3f4:	00000f13          	addi	x30,x0,0
 3f8:	07f00f93          	addi	x31,x0,127
 3fc:	03f0ae23          	sw	x31,60(x1)

00000400 <done>:
 400:	0000006f          	jal	x0,400 <done>
