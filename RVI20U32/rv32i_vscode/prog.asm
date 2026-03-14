
prog.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <__text_start>:
   0:	00003117          	auipc	x2,0x3
   4:	00010113          	addi	x2,x2,0 # 3000 <__ram_end>
   8:	00002297          	auipc	x5,0x2
   c:	ff828293          	addi	x5,x5,-8 # 2000 <__end>
  10:	00002317          	auipc	x6,0x2
  14:	ff030313          	addi	x6,x6,-16 # 2000 <__end>
  18:	00000393          	addi	x7,x0,0
  1c:	0062d863          	bge	x5,x6,2c <__heap_align+0x1c>
  20:	00728023          	sb	x7,0(x5)
  24:	00128293          	addi	x5,x5,1
  28:	ff5ff06f          	jal	x0,1c <__heap_align+0xc>
  2c:	008000ef          	jal	x1,34 <main>
  30:	0000006f          	jal	x0,30 <__heap_align+0x20>

00000034 <main>:
  34:	02200793          	addi	x15,x0,34
  38:	ff010113          	addi	x2,x2,-16
  3c:	00f10723          	sb	x15,14(x2)
  40:	03a00793          	addi	x15,x0,58
  44:	00f107a3          	sb	x15,15(x2)
  48:	00f14783          	lbu	x15,15(x2)
  4c:	00e14703          	lbu	x14,14(x2)
  50:	00e787b3          	add	x15,x15,x14
  54:	ff1ff06f          	jal	x0,44 <main+0x10>
