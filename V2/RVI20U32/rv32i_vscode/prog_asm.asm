
prog_asm.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <__text_start>:
   0:	000020b7          	lui	x1,0x2
   4:	00003137          	lui	x2,0x3
   8:	01010193          	addi	x3,x2,16 # 3010 <UART_BASE>
   c:	02010213          	addi	x4,x2,32
  10:	01100293          	addi	x5,x0,17
  14:	0050a023          	sw	x5,0(x1) # 2000 <__end>
  18:	02200293          	addi	x5,x0,34
  1c:	0050a223          	sw	x5,4(x1)
  20:	03300293          	addi	x5,x0,51
  24:	0050a423          	sw	x5,8(x1)
  28:	0000a303          	lw	x6,0(x1)
  2c:	006303b3          	add	x7,x6,x6
  30:	0070a623          	sw	x7,12(x1)
  34:	0040a403          	lw	x8,4(x1)
  38:	008404b3          	add	x9,x8,x8
  3c:	0090a823          	sw	x9,16(x1)
  40:	0080a503          	lw	x10,8(x1)
  44:	00a0aa23          	sw	x10,20(x1)
  48:	0000a583          	lw	x11,0(x1)
  4c:	01100613          	addi	x12,x0,17
  50:	00c58863          	beq	x11,x12,60 <branch_ok>

00000054 <branch_fail>:
  54:	05500693          	addi	x13,x0,85
  58:	00d0ac23          	sw	x13,24(x1)
  5c:	00c0006f          	jal	x0,68 <after_branch>

00000060 <branch_ok>:
  60:	07700693          	addi	x13,x0,119
  64:	00d0ac23          	sw	x13,24(x1)

00000068 <after_branch>:
  68:	0a500713          	addi	x14,x0,165
  6c:	00e12023          	sw	x14,0(x2)
  70:	04f00793          	addi	x15,x0,79
  74:	00f1a023          	sw	x15,0(x3)
  78:	04b00793          	addi	x15,x0,75
  7c:	00f1a023          	sw	x15,0(x3)
  80:	00a00793          	addi	x15,x0,10
  84:	00f1a023          	sw	x15,0(x3)
  88:	00022803          	lw	x16,0(x4) # 0 <__text_start>
  8c:	0100ae23          	sw	x16,28(x1)
  90:	00022883          	lw	x17,0(x4) # 0 <__text_start>
  94:	0310a023          	sw	x17,32(x1)
  98:	00022903          	lw	x18,0(x4) # 0 <__text_start>
  9c:	0320a223          	sw	x18,36(x1)
  a0:	00000993          	addi	x19,x0,0
  a4:	00500a13          	addi	x20,x0,5

000000a8 <stress_loop>:
  a8:	0280aa83          	lw	x21,40(x1)
  ac:	001a8a93          	addi	x21,x21,1
  b0:	0350a423          	sw	x21,40(x1)
  b4:	00198993          	addi	x19,x19,1
  b8:	ff49c8e3          	blt	x19,x20,a8 <stress_loop>
  bc:	cafe0b37          	lui	x22,0xcafe0
  c0:	001b0b13          	addi	x22,x22,1 # cafe0001 <TIMER_BASE+0xcafdcfe1>
  c4:	0360a623          	sw	x22,44(x1)

000000c8 <end>:
  c8:	0000006f          	jal	x0,c8 <end>
