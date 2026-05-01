`timescale 1ns / 1ps

module ex_mem_reg (
    input  wire        clk,
    input  wire        rst,
    input  wire        stall,
    input  wire        flush,

    // Entrada desde EX
    input  wire        ex_valid,

    input  wire [31:0] ex_pc,
    input  wire [31:0] ex_alu_result,
    input  wire [31:0] ex_store_data,
    input  wire [31:0] ex_pc_plus4,
    input  wire [31:0] ex_imm_u,
    input  wire [4:0]  ex_rd,

    // Control MEM
    input  wire        ex_mem_re,
    input  wire        ex_mem_we,
    input  wire [1:0]  ex_mem_size,
    input  wire        ex_mem_unsigned,

    // Control WB
    input  wire        ex_rd_we,
    input  wire [1:0]  ex_wb_sel,

    // Excepciones
    input  wire        ex_exception_valid,
    input  wire [3:0]  ex_exception_cause,
    input  wire [31:0] ex_exception_tval,

    // Salida hacia MEM
    output reg         mem_valid,

    output reg  [31:0] mem_pc,
    output reg  [31:0] mem_alu_result,
    output reg  [31:0] mem_store_data,
    output reg  [31:0] mem_pc_plus4,
    output reg  [31:0] mem_imm_u,
    output reg  [4:0]  mem_rd,

    // Control MEM
    output reg         mem_mem_re,
    output reg         mem_mem_we,
    output reg  [1:0]  mem_mem_size,
    output reg         mem_mem_unsigned,

    // Control WB
    output reg         mem_rd_we,
    output reg  [1:0]  mem_wb_sel,

    // Excepciones
    output reg         mem_exception_valid,
    output reg  [3:0]  mem_exception_cause,
    output reg  [31:0] mem_exception_tval
);

    always @(posedge clk) begin
        if (rst) begin
            mem_valid           <= 1'b0;

            mem_pc              <= 32'b0;
            mem_alu_result      <= 32'b0;
            mem_store_data      <= 32'b0;
            mem_pc_plus4        <= 32'b0;
            mem_imm_u           <= 32'b0;
            mem_rd              <= 5'b0;

            mem_mem_re          <= 1'b0;
            mem_mem_we          <= 1'b0;
            mem_mem_size        <= 2'b0;
            mem_mem_unsigned    <= 1'b0;

            mem_rd_we           <= 1'b0;
            mem_wb_sel          <= 2'b0;

            mem_exception_valid <= 1'b0;
            mem_exception_cause <= 4'b0;
            mem_exception_tval  <= 32'b0;
        end
        else if (flush) begin
            mem_valid           <= 1'b0;

            mem_pc              <= 32'b0;
            mem_alu_result      <= 32'b0;
            mem_store_data      <= 32'b0;
            mem_pc_plus4        <= 32'b0;
            mem_imm_u           <= 32'b0;
            mem_rd              <= 5'b0;

            mem_mem_re          <= 1'b0;
            mem_mem_we          <= 1'b0;
            mem_mem_size        <= 2'b0;
            mem_mem_unsigned    <= 1'b0;

            mem_rd_we           <= 1'b0;
            mem_wb_sel          <= 2'b0;

            mem_exception_valid <= 1'b0;
            mem_exception_cause <= 4'b0;
            mem_exception_tval  <= 32'b0;
        end
        else if (!stall) begin
            mem_valid           <= ex_valid;

            mem_pc              <= ex_pc;
            mem_alu_result      <= ex_alu_result;
            mem_store_data      <= ex_store_data;
            mem_pc_plus4        <= ex_pc_plus4;
            mem_imm_u           <= ex_imm_u;
            mem_rd              <= ex_rd;

            mem_mem_re          <= ex_mem_re;
            mem_mem_we          <= ex_mem_we;
            mem_mem_size        <= ex_mem_size;
            mem_mem_unsigned    <= ex_mem_unsigned;

            mem_rd_we           <= ex_rd_we;
            mem_wb_sel          <= ex_wb_sel;

            mem_exception_valid <= ex_exception_valid;
            mem_exception_cause <= ex_exception_cause;
            mem_exception_tval  <= ex_exception_tval;
        end
    end

endmodule