
prog_asm.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <__text_start>:
   0:	000030b7          	lui	x1,0x3
   4:	00300113          	addi	x2,x0,3
   8:	0020a423          	sw	x2,8(x1) # 3008 <__ram_end+0x8>
   c:	00100193          	addi	x3,x0,1
  10:	0030a023          	sw	x3,0(x1)
  14:	0000a203          	lw	x4,0(x1)
  18:	00100293          	addi	x5,x0,1
  1c:	02521663          	bne	x4,x5,48 <fail>
  20:	00200193          	addi	x3,x0,2
  24:	0030a023          	sw	x3,0(x1)
  28:	0000a203          	lw	x4,0(x1)
  2c:	00200293          	addi	x5,x0,2
  30:	00521c63          	bne	x4,x5,48 <fail>

00000034 <pass>:
  34:	00002537          	lui	x10,0x2
  38:	cafe05b7          	lui	x11,0xcafe0
  3c:	00758593          	addi	x11,x11,7 # cafe0007 <__ram_end+0xcafdd007>
  40:	00b52023          	sw	x11,0(x10) # 2000 <__end>
  44:	0140006f          	jal	x0,58 <done>

00000048 <fail>:
  48:	00002537          	lui	x10,0x2
  4c:	bad005b7          	lui	x11,0xbad00
  50:	00758593          	addi	x11,x11,7 # bad00007 <__ram_end+0xbacfd007>
  54:	00b52023          	sw	x11,0(x10) # 2000 <__end>

00000058 <done>:
  58:	0000006f          	jal	x0,58 <done>
