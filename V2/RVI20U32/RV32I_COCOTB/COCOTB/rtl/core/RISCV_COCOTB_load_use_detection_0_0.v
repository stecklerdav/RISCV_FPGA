`timescale 1ns / 1ps

module RISCV_COCOTB_load_use_detection_0_0(
    input  wire        id_ex_valid,
    input  wire        id_ex_mem_re,
    input  wire        id_ex_rd_we,
    input  wire [4:0]  id_ex_rd,

    input  wire        if_id_valid,
    input  wire [4:0]  if_id_rs1,
    input  wire [4:0]  if_id_rs2,
    input  wire        if_id_rs1_used,
    input  wire        if_id_rs2_used,

    output wire        pc_en,
    output wire        if_id_hold,
    output wire        id_ex_flush
);

    load_use_detection inst (
        .id_ex_valid(id_ex_valid),
        .id_ex_mem_re(id_ex_mem_re),
        .id_ex_rd_we(id_ex_rd_we),
        .id_ex_rd(id_ex_rd),

        .if_id_valid(if_id_valid),
        .if_id_rs1(if_id_rs1),
        .if_id_rs2(if_id_rs2),
        .if_id_rs1_used(if_id_rs1_used),
        .if_id_rs2_used(if_id_rs2_used),

        .pc_en(pc_en),
        .if_id_hold(if_id_hold),
        .id_ex_flush(id_ex_flush)
    );

endmodule
