
prog_asm.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <__text_start>:
   0:	01000093          	addi	x1,x0,16
   4:	01900413          	addi	x8,x0,25
   8:	0080a223          	sw	x8,4(x1)
   c:	0040a403          	lw	x8,4(x1)
  10:	0080a223          	sw	x8,4(x1)
  14:	0040a403          	lw	x8,4(x1)

00000018 <done>:
  18:	0000006f          	jal	x0,18 <done>
