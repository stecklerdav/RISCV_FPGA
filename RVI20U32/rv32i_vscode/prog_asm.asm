
prog_asm.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <__text_start>:
   0:	00000517          	auipc	x10,0x0
   4:	01050513          	addi	x10,x10,16 # 10 <target>
   8:	000500e7          	jalr	x1,0(x10)
   c:	01600113          	addi	x2,x0,22

00000010 <target>:
  10:	04d00193          	addi	x3,x0,77

00000014 <done>:
  14:	0000006f          	jal	x0,14 <done>
