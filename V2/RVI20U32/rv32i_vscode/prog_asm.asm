
prog_asm.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <__text_start>:
   0:	00100093          	addi	x1,x0,1
   4:	00100113          	addi	x2,x0,1
   8:	00208463          	beq	x1,x2,10 <target>
   c:	06300293          	addi	x5,x0,99

00000010 <target>:
  10:	00700313          	addi	x6,x0,7

00000014 <loop>:
  14:	0000006f          	jal	x0,14 <loop>
