`timescale 1ns / 1ps

module rv32i_ex_mem_reg (
    input  wire        clk,
    input  wire        rst,
    input  wire        stall,
    input  wire        flush,

    input  wire [31:0] ex_alu_result,
    input  wire [31:0] ex_store_data,
    input  wire [31:0] ex_pc_plus4,
    input  wire [4:0]  ex_rd,
    input  wire        ex_mem_re,
    input  wire        ex_mem_we,
    input  wire [1:0]  ex_mem_size,
    input  wire        ex_mem_unsigned,
    input  wire        ex_rd_we,
    input  wire [1:0]  ex_wb_sel,

    output reg  [31:0] mem_alu_result,
    output reg  [31:0] mem_store_data,
    output reg  [31:0] mem_pc_plus4,
    output reg  [4:0]  mem_rd,
    output reg         mem_mem_re,
    output reg         mem_mem_we,
    output reg  [1:0]  mem_mem_size,
    output reg         mem_mem_unsigned,
    output reg         mem_rd_we,
    output reg  [1:0]  mem_wb_sel
);

    always @(posedge clk) begin
        if (rst || flush) begin
            mem_alu_result   <= 32'd0;
            mem_store_data   <= 32'd0;
            mem_pc_plus4     <= 32'd0;
            mem_rd           <= 5'd0;
            mem_mem_re       <= 1'b0;
            mem_mem_we       <= 1'b0;
            mem_mem_size     <= 2'd0;
            mem_mem_unsigned <= 1'b0;
            mem_rd_we        <= 1'b0;
            mem_wb_sel       <= 2'd0;
        end
        else if (!stall) begin
            mem_alu_result   <= ex_alu_result;
            mem_store_data   <= ex_store_data;
            mem_pc_plus4     <= ex_pc_plus4;
            mem_rd           <= ex_rd;
            mem_mem_re       <= ex_mem_re;
            mem_mem_we       <= ex_mem_we;
            mem_mem_size     <= ex_mem_size;
            mem_mem_unsigned <= ex_mem_unsigned;
            mem_rd_we        <= ex_rd_we;
            mem_wb_sel       <= ex_wb_sel;
        end
    end

endmodule