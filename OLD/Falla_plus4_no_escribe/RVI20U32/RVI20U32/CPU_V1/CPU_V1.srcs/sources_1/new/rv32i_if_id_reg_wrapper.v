`timescale 1ns / 1ps

module rv32i_if_id_reg_wrapper (

    input  wire        clk,
    input  wire        rst,

    // Desde IF / BRAM
    input  wire [31:0] pc_fetch_in,
    input  wire [31:0] pc_plus4_fetch_in,
    input  wire [31:0] instr_bram_in,
    input  wire        valid_fetch_in,

    // Control pipeline
    input  wire        flush,
    input  wire        hold,

    // Hacia ID
    output wire [31:0] pc_id_out,
    output wire [31:0] pc_plus4_id_out,
    output wire [31:0] instr_id_out,
    output wire        valid_id_out
);

    // ============================================================
    // Bus plano equivalente al struct de salida if_id_bus_t
    // {valid, instr, pc_plus4, pc} = 1 + 32 + 32 + 32 = 97 bits
    // ============================================================
    wire [96:0] id_out_flat;

    // ============================================================
    // Instancia del módulo SystemVerilog
    // ============================================================
    rv32i_if_id_reg u_if_id_reg (
        .clk           (clk),
        .rst           (rst),

        .pc_fetch      (pc_fetch_in),
        .pc_plus4_fetch(pc_plus4_fetch_in),
        .instr_bram    (instr_bram_in),
        .if_valid      (valid_fetch_in),

        .flush         (flush),
        .hold          (hold),

        .id_out        (id_out_flat)   // struct packed tratado como bus plano
    );

    // ============================================================
    // UNPACK (struct packed -> señales)
    // ============================================================
    assign {
        valid_id_out,
        instr_id_out,
        pc_plus4_id_out,
        pc_id_out
    } = id_out_flat;

endmodule