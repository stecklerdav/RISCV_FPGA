
prog_asm.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <__text_start>:
   0:	34202f73          	csrrs	x30,mcause,x0
   4:	00000013          	addi	x0,x0,0
   8:	00000013          	addi	x0,x0,0
   c:	00000013          	addi	x0,x0,0
  10:	000f5a63          	bge	x30,x0,24 <fail>

00000014 <pass>:
  14:	00100093          	addi	x1,x0,1
  18:	00001137          	lui	x2,0x1
  1c:	00112023          	sw	x1,0(x2) # 1000 <__stack_size+0xc00>
  20:	ff5ff06f          	jal	x0,14 <pass>

00000024 <fail>:
  24:	53900093          	addi	x1,x0,1337
  28:	00001137          	lui	x2,0x1
  2c:	00112023          	sw	x1,0(x2) # 1000 <__stack_size+0xc00>
  30:	ff5ff06f          	jal	x0,24 <fail>
