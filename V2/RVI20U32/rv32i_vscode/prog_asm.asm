
prog_asm.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <__text_start>:
   0:	000020b7          	lui	x1,0x2
   4:	00003137          	lui	x2,0x3
   8:	01010113          	addi	x2,x2,16 # 3010 <UART_BASE>
   c:	00012283          	lw	x5,0(x2)
  10:	05500313          	addi	x6,x0,85
  14:	0060a023          	sw	x6,0(x1) # 2000 <__end>

00000018 <end>:
  18:	0000006f          	jal	x0,18 <end>
