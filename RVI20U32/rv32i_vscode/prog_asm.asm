
prog_asm.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <__text_start>:
   0:	00100093          	addi	x1,x0,1
   4:	00200113          	addi	x2,x0,2

00000008 <target>:
   8:	00300193          	addi	x3,x0,3
   c:	ffdff06f          	jal	x0,8 <target>
