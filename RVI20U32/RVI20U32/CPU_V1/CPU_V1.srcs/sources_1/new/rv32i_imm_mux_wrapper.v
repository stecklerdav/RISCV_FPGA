`timescale 1ns / 1ps

module rv32i_imm_mux_wrapper (
    input  wire [2:0]  imm_sel,
    input  wire [31:0] imm_i,
    input  wire [31:0] imm_s,
    input  wire [31:0] imm_b,
    input  wire [31:0] imm_u,
    input  wire [31:0] imm_j,
    output wire [31:0] imm_out
);

    // struct packed total bits:
    // 32*5 = 160 bits
    wire [159:0] imm_in_flat;

    // Orden exacto según el typedef struct packed:
    // {imm_i, imm_s, imm_b, imm_u, imm_j}
    assign imm_in_flat = {
        imm_i,
        imm_s,
        imm_b,
        imm_u,
        imm_j
    };

    rv32i_imm_mux u_imm_mux (
        .imm_sel (imm_sel),
        .imm_in  (imm_in_flat),
        .imm_out (imm_out)
    );

endmodule