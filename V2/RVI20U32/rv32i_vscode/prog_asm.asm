
prog_asm.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <__text_start>:
   0:	00000013          	addi	x0,x0,0
   4:	00000013          	addi	x0,x0,0
   8:	00000013          	addi	x0,x0,0
   c:	00002437          	lui	x8,0x2
  10:	00100f93          	addi	x31,x0,1
  14:	02800513          	addi	x10,x0,40
  18:	00250513          	addi	x10,x10,2
  1c:	02a00293          	addi	x5,x0,42
  20:	12551e63          	bne	x10,x5,15c <fail>
  24:	00200f93          	addi	x31,x0,2
  28:	12345337          	lui	x6,0x12345
  2c:	67830313          	addi	x6,x6,1656 # 12345678 <UART_BASE+0x12342668>
  30:	00642223          	sw	x6,4(x8) # 2004 <__end+0x4>
  34:	00442383          	lw	x7,4(x8)
  38:	12639263          	bne	x7,x6,15c <fail>
  3c:	00300f93          	addi	x31,x0,3
  40:	00442383          	lw	x7,4(x8)
  44:	00138e13          	addi	x28,x7,1
  48:	12345eb7          	lui	x29,0x12345
  4c:	679e8e93          	addi	x29,x29,1657 # 12345679 <UART_BASE+0x12342669>
  50:	11de1663          	bne	x28,x29,15c <fail>
  54:	00400f93          	addi	x31,x0,4
  58:	00700493          	addi	x9,x0,7
  5c:	00548913          	addi	x18,x9,5
  60:	00990993          	addi	x19,x18,9
  64:	01500293          	addi	x5,x0,21
  68:	0e599a63          	bne	x19,x5,15c <fail>
  6c:	00500f93          	addi	x31,x0,5
  70:	55aa0337          	lui	x6,0x55aa0
  74:	0cc30313          	addi	x6,x6,204 # 55aa00cc <UART_BASE+0x55a9d0bc>
  78:	00642423          	sw	x6,8(x8)
  7c:	00842383          	lw	x7,8(x8)
  80:	0c639e63          	bne	x7,x6,15c <fail>
  84:	00600f93          	addi	x31,x0,6
  88:	aabbd337          	lui	x6,0xaabbd
  8c:	cdd30313          	addi	x6,x6,-803 # aabbccdd <UART_BASE+0xaabb9ccd>
  90:	00642623          	sw	x6,12(x8)
  94:	01100393          	addi	x7,x0,17
  98:	007406a3          	sb	x7,13(x8)
  9c:	00c42e03          	lw	x28,12(x8)
  a0:	aabb1eb7          	lui	x29,0xaabb1
  a4:	1dde8e93          	addi	x29,x29,477 # aabb11dd <UART_BASE+0xaabae1cd>
  a8:	0bde1a63          	bne	x28,x29,15c <fail>
  ac:	00700f93          	addi	x31,x0,7
  b0:	000023b7          	lui	x7,0x2
  b4:	22238393          	addi	x7,x7,546 # 2222 <__end+0x222>
  b8:	00741723          	sh	x7,14(x8)
  bc:	00c42e03          	lw	x28,12(x8)
  c0:	22221eb7          	lui	x29,0x22221
  c4:	1dde8e93          	addi	x29,x29,477 # 222211dd <UART_BASE+0x2221e1cd>
  c8:	09de1a63          	bne	x28,x29,15c <fail>
  cc:	00800f93          	addi	x31,x0,8
  d0:	08000313          	addi	x6,x0,128
  d4:	00640823          	sb	x6,16(x8)
  d8:	01040383          	lb	x7,16(x8)
  dc:	f8000e13          	addi	x28,x0,-128
  e0:	07c39e63          	bne	x7,x28,15c <fail>
  e4:	01044383          	lbu	x7,16(x8)
  e8:	08000e13          	addi	x28,x0,128
  ec:	07c39863          	bne	x7,x28,15c <fail>
  f0:	00900f93          	addi	x31,x0,9
  f4:	00100293          	addi	x5,x0,1
  f8:	00528863          	beq	x5,x5,108 <branch_ok>
  fc:	dead0337          	lui	x6,0xdead0
 100:	09930313          	addi	x6,x6,153 # dead0099 <FAIL_BASE+0x99>
 104:	00642023          	sw	x6,0(x8)

00000108 <branch_ok>:
 108:	00a00f93          	addi	x31,x0,10
 10c:	010000ef          	jal	x1,11c <jal_ok>
 110:	dead0337          	lui	x6,0xdead0
 114:	0aa30313          	addi	x6,x6,170 # dead00aa <FAIL_BASE+0xaa>
 118:	00642023          	sw	x6,0(x8)

0000011c <jal_ok>:
 11c:	00b00f93          	addi	x31,x0,11
 120:	00003a37          	lui	x20,0x3
 124:	0ff00313          	addi	x6,x0,255
 128:	006a2423          	sw	x6,8(x20) # 3008 <__ram_end+0x8>
 12c:	0a500313          	addi	x6,x0,165
 130:	006a2023          	sw	x6,0(x20)
 134:	00c00f93          	addi	x31,x0,12
 138:	00003ab7          	lui	x21,0x3
 13c:	010a8a93          	addi	x21,x21,16 # 3010 <UART_BASE>
 140:	04100313          	addi	x6,x0,65
 144:	006aa023          	sw	x6,0(x21)

00000148 <pass>:
 148:	000022b7          	lui	x5,0x2
 14c:	cafe0337          	lui	x6,0xcafe0
 150:	00130313          	addi	x6,x6,1 # cafe0001 <PASS_VALUE>
 154:	0062a023          	sw	x6,0(x5) # 2000 <__end>

00000158 <pass_loop>:
 158:	0000006f          	jal	x0,158 <pass_loop>

0000015c <fail>:
 15c:	000022b7          	lui	x5,0x2
 160:	dead0337          	lui	x6,0xdead0
 164:	01f36333          	or	x6,x6,x31
 168:	0062a023          	sw	x6,0(x5) # 2000 <__end>

0000016c <fail_loop>:
 16c:	0000006f          	jal	x0,16c <fail_loop>
