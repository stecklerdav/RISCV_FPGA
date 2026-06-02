
prog_asm.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <__text_start>:
   0:	00003537          	lui	x10,0x3
   4:	00050593          	addi	x11,x10,0 # 3000 <__ram_end>
   8:	00450613          	addi	x12,x10,4
   c:	00000097          	auipc	x1,0x0
  10:	05408093          	addi	x1,x1,84 # 60 <trap_handler>
  14:	30509073          	csrrw	x0,mtvec,x1

00000018 <main_loop>:
  18:	00100293          	addi	x5,x0,1
  1c:	0055a023          	sw	x5,0(x11)

00000020 <wait_press>:
  20:	00062303          	lw	x6,0(x12)
  24:	00137313          	andi	x6,x6,1
  28:	fe031ce3          	bne	x6,x0,20 <wait_press>
  2c:	00000073          	ecall

00000030 <after_trap>:
  30:	00300293          	addi	x5,x0,3
  34:	0055a023          	sw	x5,0(x11)

00000038 <wait_release>:
  38:	00062303          	lw	x6,0(x12)
  3c:	00137313          	andi	x6,x6,1
  40:	fe030ce3          	beq	x6,x0,38 <wait_release>

00000044 <release_done>:
  44:	00000293          	addi	x5,x0,0
  48:	0055a023          	sw	x5,0(x11)

0000004c <delay>:
  4c:	000f43b7          	lui	x7,0xf4
  50:	24038393          	addi	x7,x7,576 # f4240 <GPIO_IN+0xf123c>

00000054 <delay_loop>:
  54:	fff38393          	addi	x7,x7,-1
  58:	fe039ee3          	bne	x7,x0,54 <delay_loop>
  5c:	fbdff06f          	jal	x0,18 <main_loop>

00000060 <trap_handler>:
  60:	00200293          	addi	x5,x0,2
  64:	0055a023          	sw	x5,0(x11)
  68:	341023f3          	csrrs	x7,mepc,x0
  6c:	00438393          	addi	x7,x7,4
  70:	34139073          	csrrw	x0,mepc,x7
  74:	30200073          	mret
