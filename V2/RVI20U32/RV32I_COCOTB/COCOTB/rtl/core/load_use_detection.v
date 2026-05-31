`timescale 1ns / 1ps

module load_use_detection(
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

    wire hazard;

    assign hazard =
        id_ex_valid &&
        id_ex_mem_re &&
        id_ex_rd_we &&
        (id_ex_rd != 5'd0) &&
        if_id_valid &&
        (
            (if_id_rs1_used && (id_ex_rd == if_id_rs1)) ||
            (if_id_rs2_used && (id_ex_rd == if_id_rs2))
        );

    assign pc_en       = ~hazard;
    assign if_id_hold  = hazard;
    assign id_ex_flush = hazard;

endmodule
