`timescale 1ns/1ps

module rv32i_mem_stage_wrapper (

    input  wire         clk,
    input  wire         rst,
    input  wire         stall,
    input  wire         kill,

    // from EX/MEM
    input  wire         mem_valid,
    input  wire [31:0]  mem_alu_result,
    input  wire [31:0]  mem_store_data,
    input  wire [31:0]  mem_pc_plus4,
    input  wire [31:0]  mem_imm_u,
    input  wire [4:0]   mem_rd,
    input  wire         mem_rd_we,

    input  wire         mem_mem_re,
    input  wire         mem_mem_we,
    input  wire [1:0]   mem_mem_size,
    input  wire         mem_mem_unsigned,
    input  wire [1:0]   mem_wb_sel,

    // Data memory interface
    output wire [31:0]  dmem_addr,
    output wire [31:0]  dmem_wdata,
    output wire         dmem_we,
    output wire         dmem_re,
    output wire [3:0]   dmem_be,

    input  wire [31:0]  dmem_rdata,

    // to MEM/WB
    output wire         wb_valid,
    output wire [31:0]  wb_data,
    output wire [31:0]  wb_alu_result,
    output wire [31:0]  wb_pc_plus4,
    output wire [31:0]  wb_imm_u,
    output wire [4:0]   wb_rd,
    output wire         wb_rd_we,
    output wire [1:0]   wb_sel
);

    rv32i_mem_stage_flat u_rv32i_mem_stage_flat (
        .clk              (clk),
        .rst              (rst),
        .stall            (stall),
        .kill             (kill),

        .mem_valid        (mem_valid),
        .mem_alu_result   (mem_alu_result),
        .mem_store_data   (mem_store_data),
        .mem_pc_plus4     (mem_pc_plus4),
        .mem_imm_u        (mem_imm_u),
        .mem_rd           (mem_rd),
        .mem_rd_we        (mem_rd_we),

        .mem_mem_re       (mem_mem_re),
        .mem_mem_we       (mem_mem_we),
        .mem_mem_size     (mem_mem_size),
        .mem_mem_unsigned (mem_mem_unsigned),
        .mem_wb_sel       (mem_wb_sel),

        .dmem_addr        (dmem_addr),
        .dmem_wdata       (dmem_wdata),
        .dmem_we          (dmem_we),
        .dmem_re          (dmem_re),
        .dmem_be          (dmem_be),
        .dmem_rdata       (dmem_rdata),

        .wb_valid         (wb_valid),
        .wb_data          (wb_data),
        .wb_alu_result    (wb_alu_result),
        .wb_pc_plus4      (wb_pc_plus4),
        .wb_imm_u         (wb_imm_u),
        .wb_rd            (wb_rd),
        .wb_rd_we         (wb_rd_we),
        .wb_sel           (wb_sel)
    );

endmodule