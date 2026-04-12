
prog_asm.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <__text_start>:
   0:	00500093          	addi	x1,x0,5
   4:	0000a103          	lw	x2,0(x1)
   8:	00210463          	beq	x2,x2,10 <target>
   c:	06300193          	addi	x3,x0,99

00000010 <target>:
  10:	02a00213          	addi	x4,x0,42

00000014 <done>:
  14:	0000006f          	jal	x0,14 <done>
