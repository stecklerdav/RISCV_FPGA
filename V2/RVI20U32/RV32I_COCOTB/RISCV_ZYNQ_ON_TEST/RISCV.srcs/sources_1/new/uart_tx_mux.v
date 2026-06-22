`timescale 1ns / 1ps

module uart_tx_mux (
    input  wire loader_cpu_reset,
    input  wire loader_uart_tx,
    input  wire riscv_uart_tx,

    output wire uart_tx_to_zynq
);

    assign uart_tx_to_zynq =
        (loader_cpu_reset == 1'b1) ?
        loader_uart_tx :
        riscv_uart_tx;

endmodule