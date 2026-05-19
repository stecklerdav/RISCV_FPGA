
prog_asm.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <__text_start>:
   0:	000023b7          	lui	x7,0x2
   4:	11100313          	addi	x6,x0,273
   8:	0063a023          	sw	x6,0(x7) # 2000 <__end>
   c:	00000297          	auipc	x5,0x0
  10:	02828293          	addi	x5,x5,40 # 34 <target_ok>
  14:	34129073          	csrrw	x0,mepc,x5
  18:	34102373          	csrrs	x6,mepc,x0
  1c:	0063a223          	sw	x6,4(x7)
  20:	30200073          	mret

00000024 <bad_path>:
  24:	00001337          	lui	x6,0x1
  28:	bad30313          	addi	x6,x6,-1107 # bad <__stack_size+0x7ad>
  2c:	0063a423          	sw	x6,8(x7)
  30:	ff5ff06f          	jal	x0,24 <bad_path>

00000034 <target_ok>:
  34:	77700313          	addi	x6,x0,1911
  38:	0063a623          	sw	x6,12(x7)

0000003c <done>:
  3c:	0000006f          	jal	x0,3c <done>
