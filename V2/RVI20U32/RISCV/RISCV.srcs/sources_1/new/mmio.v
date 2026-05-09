`timescale 1ns / 1ps

module mmio #(
    parameter [31:0] RAM_BASE   = 32'h0000_2000,
    parameter [31:0] RAM_SIZE   = 32'h0000_1000,

    parameter [31:0] GPIO_BASE  = 32'h0000_3000,
    parameter [31:0] GPIO_SIZE  = 32'h0000_0010,

    parameter [31:0] UART_BASE  = 32'h0000_3010,
    parameter [31:0] UART_SIZE  = 32'h0000_0010
)(
    input         clk,
    input         rst,

    input         cpu_valid,
    input         cpu_we,
    input  [31:0] cpu_addr,
    input  [31:0] cpu_wdata,
    input  [3:0]  cpu_be,

    output reg [31:0] cpu_rdata,
    output reg        cpu_ready,
    output reg        cpu_error,

    output reg        ram_valid,
    output reg        ram_we,
    output reg [31:0] ram_addr,
    output reg [31:0] ram_wdata,
    output reg [3:0]  ram_be,

    input  [31:0]     ram_rdata,
    input             ram_ready,

    output reg        gpio_valid,
    output reg        gpio_we,
    output reg [31:0] gpio_addr,
    output reg [31:0] gpio_wdata,
    output reg [3:0]  gpio_be,

    input  [31:0]     gpio_rdata,
    input             gpio_ready,

    output reg        uart_valid,
    output reg        uart_we,
    output reg [31:0] uart_addr,
    output reg [31:0] uart_wdata,
    output reg [3:0]  uart_be,

    input  [31:0]     uart_rdata,
    input             uart_ready
);

    wire sel_ram;
    wire sel_gpio;
    wire sel_uart;

    assign sel_ram  = (cpu_addr >= RAM_BASE)  && (cpu_addr < RAM_BASE  + RAM_SIZE);
    assign sel_gpio = (cpu_addr >= GPIO_BASE) && (cpu_addr < GPIO_BASE + GPIO_SIZE);
    assign sel_uart = (cpu_addr >= UART_BASE) && (cpu_addr < UART_BASE + UART_SIZE);

    reg [31:0] rdata_hold;
    reg        error_hold;

    always @(posedge clk) begin
        if (rst) begin
            rdata_hold <= 32'h0000_0000;
            error_hold <= 1'b0;
        end else begin
            if (cpu_valid && !cpu_we) begin
                if (sel_ram) begin
                    rdata_hold <= ram_rdata;
                    error_hold <= 1'b0;
                end else if (sel_gpio) begin
                    rdata_hold <= gpio_rdata;
                    error_hold <= 1'b0;
                end else if (sel_uart) begin
                    rdata_hold <= uart_rdata;
                    error_hold <= 1'b0;
                end else begin
                    rdata_hold <= 32'hDEAD_BEEF;
                    error_hold <= 1'b1;
                end
            end
        end
    end

    always @(*) begin
        ram_valid  = 1'b0;
        ram_we     = cpu_we;
        ram_addr   = cpu_addr;
        ram_wdata  = cpu_wdata;
        ram_be     = cpu_be;

        gpio_valid = 1'b0;
        gpio_we    = cpu_we;
        gpio_addr  = cpu_addr - GPIO_BASE;
        gpio_wdata = cpu_wdata;
        gpio_be    = cpu_be;

        uart_valid = 1'b0;
        uart_we    = cpu_we;
        uart_addr  = cpu_addr - UART_BASE;
        uart_wdata = cpu_wdata;
        uart_be    = cpu_be;

        cpu_rdata  = rdata_hold;
        cpu_ready  = 1'b1;
        cpu_error  = error_hold;

        if (cpu_valid && sel_ram) begin
            ram_valid = 1'b1;
            cpu_rdata = ram_rdata;
            cpu_ready = ram_ready;
            cpu_error = 1'b0;
        end

        else if (cpu_valid && sel_gpio) begin
            gpio_valid = 1'b1;
            cpu_rdata  = gpio_rdata;
            cpu_ready  = gpio_ready;
            cpu_error  = 1'b0;
        end

        else if (cpu_valid && sel_uart) begin
            uart_valid = 1'b1;
            cpu_rdata  = uart_rdata;
            cpu_ready  = uart_ready;
            cpu_error  = 1'b0;
        end

        else if (cpu_valid) begin
            cpu_rdata  = 32'hDEAD_BEEF;
            cpu_ready  = 1'b1;
            cpu_error  = 1'b1;
        end
    end

endmodule