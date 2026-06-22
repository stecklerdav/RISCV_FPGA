#define UART_BASE   0x80003010u

#define UART_TXDATA (*(volatile unsigned int *)(UART_BASE + 0x0))
#define UART_STATUS (*(volatile unsigned int *)(UART_BASE + 0x4))
#define UART_RXDATA (*(volatile unsigned int *)(UART_BASE + 0x8))

#define UART_TX_READY (1u << 0)
#define UART_RX_READY (1u << 2)

static void uart_putc(unsigned char c)
{
    while ((UART_STATUS & UART_TX_READY) == 0) {
    }

    UART_TXDATA = c;
}

static unsigned char uart_getc(void)
{
    while ((UART_STATUS & UART_RX_READY) == 0) {
    }

    return (unsigned char)(UART_RXDATA & 0xFF);
}

int main(void)
{
    unsigned char c;

    uart_putc('R');   // RISC-V alive

    while (1) {
        c = uart_getc();   // recibe desde Zynq
        uart_putc(c);      // devuelve lo mismo
    }
}