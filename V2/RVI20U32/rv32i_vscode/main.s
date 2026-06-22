	.file	"main.c"
	.option nopic
	.attribute arch, "rv32i2p1_zicsr2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
# GNU C23 (xPack GNU RISC-V Embedded GCC x86_64) version 15.2.0 (riscv-none-elf)
#	compiled by GNU C version 15.2.0, GMP version 6.3.0, MPFR version 4.2.2, MPC version 1.3.1, isl version isl-0.27-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=ilp32 -misa-spec=20191213 -march=rv32i_zicsr -Os -ffreestanding -fno-pic -fno-asynchronous-unwind-tables -fno-unwind-tables -ffunction-sections -fdata-sections
	.text
	.section	.text.startup.main,"ax",@progbits
	.align	2
	.globl	main
	.type	main, @function
main:
# main.c:12:     while ((UART_STATUS & UART_TX_READY) == 0) {
	li	a4,-2147471360		# tmp143,
	addi	a4,a4,20	#, tmp143, tmp143
.L2:
	lw	a5,0(a4)		# _7, MEM[(volatile unsigned int *)2147495956B]
# main.c:12:     while ((UART_STATUS & UART_TX_READY) == 0) {
	andi	a5,a5,1	#, _8, _7
# main.c:12:     while ((UART_STATUS & UART_TX_READY) == 0) {
	beq	a5,zero,.L2	#, _8,,
# main.c:15:     UART_TXDATA = c;
	li	a5,-2147471360		# tmp146,
	li	a4,82		# tmp148,
# main.c:23:     return (unsigned char)(UART_RXDATA & 0xFF);
	li	a2,-2147471360		# tmp152,
# main.c:15:     UART_TXDATA = c;
	sw	a4,16(a5)	# tmp148, MEM[(volatile unsigned int *)2147495952B]
# main.c:20:     while ((UART_STATUS & UART_RX_READY) == 0) {
	li	a4,-2147471360		# tmp149,
# main.c:15:     UART_TXDATA = c;
	addi	a5,a5,16	#, tmp146, tmp146
# main.c:20:     while ((UART_STATUS & UART_RX_READY) == 0) {
	addi	a4,a4,20	#, tmp149, tmp149
# main.c:23:     return (unsigned char)(UART_RXDATA & 0xFF);
	addi	a2,a2,24	#, tmp152, tmp152
.L3:
# main.c:20:     while ((UART_STATUS & UART_RX_READY) == 0) {
	lw	a3,0(a4)		# _13, MEM[(volatile unsigned int *)2147495956B]
# main.c:20:     while ((UART_STATUS & UART_RX_READY) == 0) {
	andi	a3,a3,4	#, _14, _13
# main.c:20:     while ((UART_STATUS & UART_RX_READY) == 0) {
	beq	a3,zero,.L3	#, _14,,
# main.c:23:     return (unsigned char)(UART_RXDATA & 0xFF);
	lw	a3,0(a2)		# _15, MEM[(volatile unsigned int *)2147495960B]
.L4:
# main.c:12:     while ((UART_STATUS & UART_TX_READY) == 0) {
	lw	a1,0(a4)		# _10, MEM[(volatile unsigned int *)2147495956B]
# main.c:12:     while ((UART_STATUS & UART_TX_READY) == 0) {
	andi	a1,a1,1	#, _11, _10
# main.c:12:     while ((UART_STATUS & UART_TX_READY) == 0) {
	beq	a1,zero,.L4	#, _11,,
	andi	a3,a3,255	#, _18, _15
# main.c:15:     UART_TXDATA = c;
	sw	a3,0(a5)	# _18, MEM[(volatile unsigned int *)2147495952B]
# main.c:20:     while ((UART_STATUS & UART_RX_READY) == 0) {
	j	.L3		#
	.size	main, .-main
	.ident	"GCC: (xPack GNU RISC-V Embedded GCC x86_64) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
