`timescale 1ns/1ps

module pc_unit_wrapper #(
    parameter [31:0] RESET_PC = 32'h0000_0000
)(
    input  wire        rst,
    input  wire        clk,
    input  wire        pc_en,
    input  wire        pc_redirect_valid,
    input  wire [31:0] pc_redirect_target,

    output wire [31:0] pc,
    output wire [31:0] pc_plus4
);

    pc_unit #(
        .RESET_PC(RESET_PC)
    ) u_pc_unit (
        .rst(rst),
        .clk(clk),
        .pc_en(pc_en),
        .pc_redirect_valid(pc_redirect_valid),
        .pc_redirect_target(pc_redirect_target),
        .pc(pc),
        .pc_plus4(pc_plus4)
    );

endmodule