`timescale 1ns / 1ps

module imm_mux (
    input  wire [2:0]  imm_sel,
    input  wire [31:0] imm_i,
    input  wire [31:0] imm_s,
    input  wire [31:0] imm_b,
    input  wire [31:0] imm_u,
    input  wire [31:0] imm_j,
    output reg  [31:0] imm_out
);

    localparam [2:0] IMM_I = 3'd0;
    localparam [2:0] IMM_S = 3'd1;
    localparam [2:0] IMM_B = 3'd2;
    localparam [2:0] IMM_U = 3'd3;
    localparam [2:0] IMM_J = 3'd4;

    always @(*) begin
        case (imm_sel)
            IMM_I:   imm_out = imm_i;
            IMM_S:   imm_out = imm_s;
            IMM_B:   imm_out = imm_b;
            IMM_U:   imm_out = imm_u;
            IMM_J:   imm_out = imm_j;
            default: imm_out = imm_i;
        endcase
    end

endmodule