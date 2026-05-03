
prog_asm.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <__text_start>:
   0:	04000093          	addi	x1,x0,64
   4:	08000113          	addi	x2,x0,128
   8:	0c000193          	addi	x3,x0,192
   c:	00000f13          	addi	x30,x0,0
  10:	00000f93          	addi	x31,x0,0
  14:	01900f13          	addi	x30,x0,25
  18:	00500713          	addi	x14,x0,5
  1c:	00e1a023          	sw	x14,0(x3)
  20:	0001a783          	lw	x15,0(x3)
  24:	00178813          	addi	x16,x15,1
  28:	0101a223          	sw	x16,4(x3)
  2c:	0041a883          	lw	x17,4(x3)
  30:	01088933          	add	x18,x17,x16
  34:	00c00213          	addi	x4,x0,12
  38:	0c491463          	bne	x18,x4,100 <fail>
  3c:	01a00f13          	addi	x30,x0,26
  40:	fff00213          	addi	x4,x0,-1
  44:	00408823          	sb	x4,16(x1)
  48:	01008283          	lb	x5,16(x1)
  4c:	0100c303          	lbu	x6,16(x1)
  50:	fff00393          	addi	x7,x0,-1
  54:	0a729663          	bne	x5,x7,100 <fail>
  58:	0ff00393          	addi	x7,x0,255
  5c:	0a731263          	bne	x6,x7,100 <fail>
  60:	07f00213          	addi	x4,x0,127
  64:	004088a3          	sb	x4,17(x1)
  68:	01108283          	lb	x5,17(x1)
  6c:	07f00393          	addi	x7,x0,127
  70:	08729863          	bne	x5,x7,100 <fail>
  74:	01b00f13          	addi	x30,x0,27
  78:	fff00213          	addi	x4,x0,-1
  7c:	00409a23          	sh	x4,20(x1)
  80:	01409283          	lh	x5,20(x1)
  84:	0140d303          	lhu	x6,20(x1)
  88:	fff00393          	addi	x7,x0,-1
  8c:	06729a63          	bne	x5,x7,100 <fail>
  90:	000103b7          	lui	x7,0x10
  94:	fff38393          	addi	x7,x7,-1 # ffff <__ram_end+0xcfff>
  98:	06731463          	bne	x6,x7,100 <fail>
  9c:	01c00f13          	addi	x30,x0,28
  a0:	00001437          	lui	x8,0x1
  a4:	00c45493          	srli	x9,x8,0xc
  a8:	00100213          	addi	x4,x0,1
  ac:	04449a63          	bne	x9,x4,100 <fail>
  b0:	01d00f13          	addi	x30,x0,29
  b4:	00300513          	addi	x10,x0,3
  b8:	00a505b3          	add	x11,x10,x10
  bc:	00a58633          	add	x12,x11,x10
  c0:	00160693          	addi	x13,x12,1
  c4:	00c68733          	add	x14,x13,x12
  c8:	40a707b3          	sub	x15,x14,x10
  cc:	00d7c833          	xor	x16,x15,x13
  d0:	00e878b3          	and	x17,x16,x14
  d4:	00a8e933          	or	x18,x17,x10
  d8:	01300213          	addi	x4,x0,19
  dc:	02491263          	bne	x18,x4,100 <fail>
  e0:	01e00f13          	addi	x30,x0,30
  e4:	00000c93          	addi	x25,x0,0
  e8:	00000d13          	addi	x26,x0,0
  ec:	00900213          	addi	x4,x0,9
  f0:	00900293          	addi	x5,x0,9
  f4:	00520c63          	beq	x4,x5,10c <pass>
  f8:	0c800c93          	addi	x25,x0,200
  fc:	0c900d13          	addi	x26,x0,201

00000100 <fail>:
 100:	00000f93          	addi	x31,x0,0
 104:	03e0ae23          	sw	x30,60(x1)
 108:	0180006f          	jal	x0,120 <done>

0000010c <pass>:
 10c:	fe0c9ae3          	bne	x25,x0,100 <fail>
 110:	fe0d18e3          	bne	x26,x0,100 <fail>
 114:	00000f13          	addi	x30,x0,0
 118:	07f00f93          	addi	x31,x0,127
 11c:	03f0ae23          	sw	x31,60(x1)

00000120 <done>:
 120:	0000006f          	jal	x0,120 <done>
