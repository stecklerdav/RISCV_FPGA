`timescale 1ns / 1ps
import rv32i_imm_types_pkg::*;
module rv32i_imm_mux (
    input  logic [2:0]        imm_sel,
    input  rv32i_imm_bus_t    imm_in,
    output logic [31:0]       imm_out
);

    localparam logic [2:0] IMM_I = 3'd0;
    localparam logic [2:0] IMM_S = 3'd1;
    localparam logic [2:0] IMM_B = 3'd2;
    localparam logic [2:0] IMM_U = 3'd3;
    localparam logic [2:0] IMM_J = 3'd4;

    always_comb begin
        unique case (imm_sel)
            IMM_I:   imm_out = imm_in.imm_i;
            IMM_S:   imm_out = imm_in.imm_s;
            IMM_B:   imm_out = imm_in.imm_b;
            IMM_U:   imm_out = imm_in.imm_u;
            IMM_J:   imm_out = imm_in.imm_j;
            default: imm_out = imm_in.imm_i;
        endcase
    end

endmodule