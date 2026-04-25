`timescale 1ns / 1ps

module rv32i_ex_mem_reg_wrapper (
    input  wire        clk,
    input  wire        rst,
    input  wire        stall,
    input  wire        flush,

    input  wire        ex_valid,

    input  wire [31:0] ex_pc,
    input  wire [31:0] ex_alu_result,
    input  wire [31:0] ex_store_data,
    input  wire [31:0] ex_pc_plus4,
    input  wire [31:0] ex_imm_u,
    input  wire [4:0]  ex_rd,

    input  wire        ex_mem_re,
    input  wire        ex_mem_we,
    input  wire [1:0]  ex_mem_size,
    input  wire        ex_mem_unsigned,

    input  wire        ex_rd_we,
    input  wire [1:0]  ex_wb_sel,

    input  wire        ex_exception_valid,
    input  wire [3:0]  ex_exception_cause,
    input  wire [31:0] ex_exception_tval,

    output wire        mem_valid,

    output wire [31:0] mem_pc,
    output wire [31:0] mem_alu_result,
    output wire [31:0] mem_store_data,
    output wire [31:0] mem_pc_plus4,
    output wire [31:0] mem_imm_u,
    output wire [4:0]  mem_rd,

    output wire        mem_mem_re,
    output wire        mem_mem_we,
    output wire [1:0]  mem_mem_size,
    output wire        mem_mem_unsigned,

    output wire        mem_rd_we,
    output wire [1:0]  mem_wb_sel,

    output wire        mem_exception_valid,
    output wire [3:0]  mem_exception_cause,
    output wire [31:0] mem_exception_tval
);

    rv32i_ex_mem_reg u_rv32i_ex_mem_reg (
        .clk                 (clk),
        .rst                 (rst),
        .stall               (stall),
        .flush               (flush),

        .ex_valid            (ex_valid),

        .ex_pc               (ex_pc),
        .ex_alu_result       (ex_alu_result),
        .ex_store_data       (ex_store_data),
        .ex_pc_plus4         (ex_pc_plus4),
        .ex_imm_u            (ex_imm_u),
        .ex_rd               (ex_rd),

        .ex_mem_re           (ex_mem_re),
        .ex_mem_we           (ex_mem_we),
        .ex_mem_size         (ex_mem_size),
        .ex_mem_unsigned     (ex_mem_unsigned),

        .ex_rd_we            (ex_rd_we),
        .ex_wb_sel           (ex_wb_sel),

        .ex_exception_valid  (ex_exception_valid),
        .ex_exception_cause  (ex_exception_cause),
        .ex_exception_tval   (ex_exception_tval),

        .mem_valid           (mem_valid),

        .mem_pc              (mem_pc),
        .mem_alu_result      (mem_alu_result),
        .mem_store_data      (mem_store_data),
        .mem_pc_plus4        (mem_pc_plus4),
        .mem_imm_u           (mem_imm_u),
        .mem_rd              (mem_rd),

        .mem_mem_re          (mem_mem_re),
        .mem_mem_we          (mem_mem_we),
        .mem_mem_size        (mem_mem_size),
        .mem_mem_unsigned    (mem_mem_unsigned),

        .mem_rd_we           (mem_rd_we),
        .mem_wb_sel          (mem_wb_sel),

        .mem_exception_valid (mem_exception_valid),
        .mem_exception_cause (mem_exception_cause),
        .mem_exception_tval  (mem_exception_tval)
    );

endmodule
