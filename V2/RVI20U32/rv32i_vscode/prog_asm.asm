
prog_asm.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <__text_start>:
   0:	000020b7          	lui	x1,0x2
   4:	00008093          	addi	x1,x1,0 # 2000 <__end>
   8:	000031b7          	lui	x3,0x3
   c:	01018193          	addi	x3,x3,16 # 3010 <UART_BASE>

00000010 <tx_wait>:
  10:	0041a303          	lw	x6,4(x3)
  14:	00137313          	andi	x6,x6,1
  18:	fe030ce3          	beq	x6,x0,10 <tx_wait>
  1c:	04400393          	addi	x7,x0,68
  20:	0071a023          	sw	x7,0(x3)

00000024 <rx_wait>:
  24:	0041a303          	lw	x6,4(x3)
  28:	00237313          	andi	x6,x6,2
  2c:	fe030ce3          	beq	x6,x0,24 <rx_wait>
  30:	0081a403          	lw	x8,8(x3)
  34:	0080a023          	sw	x8,0(x1)

00000038 <done>:
  38:	0000006f          	jal	x0,38 <done>
