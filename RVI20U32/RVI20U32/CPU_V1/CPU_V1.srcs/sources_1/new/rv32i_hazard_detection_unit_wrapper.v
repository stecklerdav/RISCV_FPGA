`timescale 1ns / 1ps

module rv32i_hazard_detection_unit_wrapper (
    input  wire       id_ex_mem_re,
    input  wire [4:0] id_ex_rd,

    input  wire [4:0] if_id_rs1,
    input  wire [4:0] if_id_rs2,
    input  wire       if_id_rs1_used,
    input  wire       if_id_rs2_used,

    output wire       load_use_hazard,
    output wire       pc_en,
    output wire       if_id_hold,
    output wire       id_ex_flush
);

    rv32i_hazard_detection_unit u_rv32i_hazard_detection_unit (
        .id_ex_mem_re   (id_ex_mem_re),
        .id_ex_rd       (id_ex_rd),
        .if_id_rs1      (if_id_rs1),
        .if_id_rs2      (if_id_rs2),
        .if_id_rs1_used (if_id_rs1_used),
        .if_id_rs2_used (if_id_rs2_used),
        .load_use_hazard(load_use_hazard),
        .pc_en          (pc_en),
        .if_id_hold     (if_id_hold),
        .id_ex_flush    (id_ex_flush)
    );

endmodule