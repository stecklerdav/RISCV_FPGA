
prog_asm.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <__text_start>:
   0:	07b00293          	addi	x5,x0,123
   4:	0020a423          	sw	x2,8(x1)
   8:	00208463          	beq	x1,x2,10 <label>
   c:	002081b3          	add	x3,x1,x2

00000010 <label>:
  10:	03700313          	addi	x6,x0,55

00000014 <halt>:
  14:	0000006f          	jal	x0,14 <halt>
