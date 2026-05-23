
prog_asm.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <__text_start>:
   0:	000023b7          	lui	x7,0x2
   4:	00000297          	auipc	x5,0x0
   8:	02428293          	addi	x5,x5,36 # 28 <trap_handler>
   c:	30529073          	csrrw	x0,mtvec,x5
  10:	11100313          	addi	x6,x0,273
  14:	0063a023          	sw	x6,0(x7) # 2000 <__end>
  18:	00000073          	ecall

0000001c <after_ecall>:
  1c:	77700313          	addi	x6,x0,1911
  20:	0063a623          	sw	x6,12(x7)

00000024 <done>:
  24:	0000006f          	jal	x0,24 <done>

00000028 <trap_handler>:
  28:	341022f3          	csrrs	x5,mepc,x0
  2c:	0053a223          	sw	x5,4(x7)
  30:	34202373          	csrrs	x6,mcause,x0
  34:	0063a423          	sw	x6,8(x7)
  38:	00428293          	addi	x5,x5,4
  3c:	34129073          	csrrw	x0,mepc,x5
  40:	30200073          	mret
