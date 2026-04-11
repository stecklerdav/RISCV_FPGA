
prog_asm.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <__text_start>:
   0:	008000ef          	jal	x1,8 <target>
   4:	01600113          	addi	x2,x0,22

00000008 <target>:
   8:	00008193          	addi	x3,x1,0

0000000c <done>:
   c:	0000006f          	jal	x0,c <done>
