`timescale 1ns/1ps

module pc_unit #(
    parameter logic [31:0] RESET_PC = 32'h0000_0000
)(
    input  logic        rst,
    input  logic        clk,
    input  logic        pc_en,
    input  logic        pc_redirect_valid,
    input  logic [31:0] pc_redirect_target,

    output logic [31:0] pc,
    output logic [31:0] pc_plus4
);

    logic [31:0] pc_next;

    assign pc_plus4 = pc + 32'd4;

    always_comb begin
        pc_next = pc_plus4;
        if (pc_redirect_valid)
            pc_next = pc_redirect_target;
    end

    always_ff @(posedge clk) begin
        if (rst)
            pc <= RESET_PC;
        else if (pc_en)
            pc <= pc_next;
    end

endmodule