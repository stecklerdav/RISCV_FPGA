
prog_asm.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <__text_start>:
   0:	000020b7          	lui	x1,0x2
   4:	00008093          	addi	x1,x1,0 # 2000 <__end>
   8:	01100293          	addi	x5,x0,17
   c:	0050a023          	sw	x5,0(x1)
  10:	02200293          	addi	x5,x0,34
  14:	0050a223          	sw	x5,4(x1)
  18:	03300293          	addi	x5,x0,51
  1c:	0050a423          	sw	x5,8(x1)
  20:	005282b3          	add	x5,x5,x5
  24:	0050a623          	sw	x5,12(x1)
  28:	005282b3          	add	x5,x5,x5
  2c:	0050a823          	sw	x5,16(x1)
  30:	0000a503          	lw	x10,0(x1)
  34:	0040a583          	lw	x11,4(x1)
  38:	0080a603          	lw	x12,8(x1)
  3c:	00c0a683          	lw	x13,12(x1)
  40:	0100a703          	lw	x14,16(x1)

00000044 <loop>:
  44:	0000006f          	jal	x0,44 <loop>
