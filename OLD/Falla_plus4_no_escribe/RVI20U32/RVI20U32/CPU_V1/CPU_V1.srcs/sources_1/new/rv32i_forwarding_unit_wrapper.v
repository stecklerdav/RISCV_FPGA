`timescale 1ns / 1ps

module rv32i_forwarding_unit_wrapper (
    input  wire [4:0] ex_rs1,
    input  wire [4:0] ex_rs2,
    input  wire [1:0] ex_op_b_sel,

    input  wire [4:0] mem_rd,
    input  wire       mem_rd_we,

    input  wire [4:0] wb_rd,
    input  wire       wb_rd_we,

    output wire [1:0] forward_a,
    output wire [1:0] forward_b
);

    rv32i_forwarding_unit u_rv32i_forwarding_unit (
        .ex_rs1     (ex_rs1),
        .ex_rs2     (ex_rs2),
        .ex_op_b_sel(ex_op_b_sel),
        .mem_rd     (mem_rd),
        .mem_rd_we  (mem_rd_we),
        .wb_rd      (wb_rd),
        .wb_rd_we   (wb_rd_we),
        .forward_a  (forward_a),
        .forward_b  (forward_b)
    );

endmodule
