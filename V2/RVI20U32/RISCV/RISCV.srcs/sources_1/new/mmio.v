`timescale 1ns/1ps


//  RAM_BASE/GPIO_BASE del hardware deben coincidir con el link.ld y con tus .equ/#define del software.

module mmio #(
    parameter [31:0] RAM_BASE   = 32'h0000_2000,
    parameter [31:0] RAM_SIZE   = 32'h0000_1000, // 4 KB

    parameter [31:0] GPIO_BASE  = 32'h0000_3000,
    parameter [31:0] GPIO_SIZE  = 32'h0000_0010  // 16 bytes
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
    input             gpio_ready
);

    wire sel_ram;
    wire sel_gpio;

    assign sel_ram  = (cpu_addr >= RAM_BASE) &&
                      (cpu_addr <  RAM_BASE + RAM_SIZE);

    assign sel_gpio = (cpu_addr >= GPIO_BASE) &&
                      (cpu_addr <  GPIO_BASE + GPIO_SIZE);

    always @(*) begin
        ram_valid  = 1'b0;
        ram_we     = cpu_we;
        ram_addr   = cpu_addr;
        ram_wdata  = cpu_wdata;
        ram_be     = cpu_be;

        gpio_valid = 1'b0;
        gpio_we    = cpu_we;
        gpio_addr  = cpu_addr;
        gpio_wdata = cpu_wdata;
        gpio_be    = cpu_be;

        cpu_rdata  = 32'h0000_0000;
        cpu_ready  = 1'b1;
        cpu_error  = 1'b0;

        if (cpu_valid) begin
            if (sel_ram) begin
                ram_valid = 1'b1;
                cpu_rdata = ram_rdata;
                cpu_ready = ram_ready;
            end
            else if (sel_gpio) begin
                gpio_valid = 1'b1;
                cpu_rdata  = gpio_rdata;
                cpu_ready  = gpio_ready;
            end
            else begin
                cpu_rdata = 32'hDEAD_BEEF;
                cpu_ready = 1'b1;
                cpu_error = 1'b1;
            end
        end
    end

endmodule