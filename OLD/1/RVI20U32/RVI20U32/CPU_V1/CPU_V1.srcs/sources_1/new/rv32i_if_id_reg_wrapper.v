`timescale 1ns / 1ps

module rv32i_if_id_reg_wrapper (

    input  wire        clk,
    input  wire        rst,

    // Desde IF
    input  wire [31:0] pc_fetch_in,
    input  wire [31:0] pc_plus4_fetch_in,
    input  wire [31:0] instr_rom_in,
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
    // Bus plano equivalente al struct (97 bits)
    // ============================================================
    wire [96:0] if_in_flat;
    wire [96:0] id_out_flat;

    // ============================================================
    // PACK (señales → struct packed)
    // ============================================================
    assign if_in_flat = {
        valid_fetch_in,
        instr_rom_in,
        pc_plus4_fetch_in,
        pc_fetch_in
    };

    // ============================================================
    // Instancia del módulo SystemVerilog
    // ============================================================
    rv32i_if_id_reg u_if_id_reg (
        .clk   (clk),
        .rst   (rst),
        .if_in (if_in_flat),   // tratado como struct packed
        .flush (flush),
        .hold  (hold),
        .id_out(id_out_flat)
    );

    // ============================================================
    // UNPACK (struct packed → señales)
    // ============================================================
    assign {
        valid_id_out,
        instr_id_out,
        pc_plus4_id_out,
        pc_id_out
    } = id_out_flat;

endmodule