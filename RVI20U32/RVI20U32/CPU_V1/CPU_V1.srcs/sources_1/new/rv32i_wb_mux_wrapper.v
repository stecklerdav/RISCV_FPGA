`timescale 1ns / 1ps

module rv32i_wb_mux_wrapper(
    input  wire [1:0]  wb_sel,
    input  wire [31:0] alu_y,
    input  wire [31:0] load_data,
    input  wire [31:0] pc_plus4,
    input  wire [31:0] imm_u,
    output wire [31:0] rd_wdata
);

    rv32i_wb_mux u_rv32i_wb_mux (
        .wb_sel   (wb_sel),
        .alu_y    (alu_y),
        .load_data(load_data),
        .pc_plus4 (pc_plus4),
        .imm_u    (imm_u),
        .rd_wdata (rd_wdata)
    );

endmodule
