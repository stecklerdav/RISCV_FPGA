`timescale 1ns/1ps

module mem_wb_reg (
    input  wire        clk,
    input  wire        rst,
    input  wire        stall,
    input  wire        flush,

    input  wire        mem_valid,
    input  wire [31:0] mem_data,
    input  wire [31:0] mem_alu_result,
    input  wire [31:0] mem_pc_plus4,
    input  wire [31:0] mem_imm_u,
    input  wire [4:0]  mem_rd,
    input  wire        mem_rd_we,
    input  wire [2:0]  mem_wb_sel,

    input  wire        mem_csr_rd_we,
    input  wire [4:0]  mem_csr_rd_addr,
    input  wire [31:0] mem_csr_rd_data,

    output reg         wb_valid,
    output reg  [31:0] wb_data,
    output reg  [31:0] wb_alu_result,
    output reg  [31:0] wb_pc_plus4,
    output reg  [31:0] wb_imm_u,
    output reg  [4:0]  wb_rd,
    output reg         wb_rd_we,
    output reg  [2:0]  wb_sel,

    output reg         wb_csr_rd_we,
    output reg  [4:0]  wb_csr_rd_addr,
    output reg  [31:0] wb_csr_rd_data
);

    always @(posedge clk) begin
        if (rst) begin
            wb_valid        <= 1'b0;
            wb_data         <= 32'b0;
            wb_alu_result   <= 32'b0;
            wb_pc_plus4     <= 32'b0;
            wb_imm_u        <= 32'b0;
            wb_rd           <= 5'b0;
            wb_rd_we        <= 1'b0;
            wb_sel          <= 3'b0;

            wb_csr_rd_we    <= 1'b0;
            wb_csr_rd_addr  <= 5'b0;
            wb_csr_rd_data  <= 32'b0;
        end
        else if (!stall) begin
            wb_valid        <= mem_valid;
            wb_data         <= mem_data;
            wb_alu_result   <= mem_alu_result;
            wb_pc_plus4     <= mem_pc_plus4;
            wb_imm_u        <= mem_imm_u;
            wb_rd           <= mem_rd;

            // Importante:
            // No escribir registros si la instrucción MEM no es válida.
            wb_rd_we        <= mem_rd_we ;

            wb_sel          <= mem_wb_sel;

            // CSR writeback también debe depender de mem_valid.
            wb_csr_rd_we    <= mem_csr_rd_we ;
            wb_csr_rd_addr  <= mem_csr_rd_addr;
            wb_csr_rd_data  <= mem_csr_rd_data;
        end
    end

endmodule
