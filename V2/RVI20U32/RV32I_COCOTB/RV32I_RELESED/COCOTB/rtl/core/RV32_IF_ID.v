`timescale 1ns/1ps

module RV32_IF_ID (
    input  wire        clk,
    input  wire        rst,
    input  wire        if_id_enable,
    input  wire        if_id_flush,

    output wire [31:0] if_pc_debug,
    output wire [31:0] if_pc_plus4_debug,
    output wire [31:0] if_instr_debug,

    output wire [31:0] id_pc_debug,
    output wire [31:0] id_pc_plus4_debug,
    output wire [31:0] id_instr_debug
);

    wire        pc_en;
    wire [31:0] if_pc;
    wire [31:0] if_pc_plus4;
    wire [10:0] imem_addr;
    wire [31:0] if_instr;

    assign if_pc_debug       = if_pc;
    assign if_pc_plus4_debug = if_pc_plus4;
    assign if_instr_debug    = if_instr;

    sim_constant #(
        .WIDTH(1),
        .VALUE(1)
    ) pc_en_const (
        .dout(pc_en)
    );

    pc_unit pc_unit_0 (
        .rst(rst),
        .clk(clk),
        .pc_en(pc_en),
        .pc(if_pc),
        .pc_plus4(if_pc_plus4)
    );

    pc_to_imem_addr pc_to_imem_addr_0 (
        .pc(if_pc),
        .addr(imem_addr)
    );

    rom_memory rom_memory_0 (
        .clk(clk),
        .en(pc_en),
        .addr(imem_addr),
        .instr(if_instr)
    );

    if_id_reg if_id_reg_0 (
        .clk(clk),
        .rst(rst),
        .enable(if_id_enable),
        .flush(if_id_flush),

        .if_pc(if_pc),
        .if_pc_plus4(if_pc_plus4),
        .if_instr(if_instr),

        .id_pc(id_pc_debug),
        .id_pc_plus4(id_pc_plus4_debug),
        .id_instr(id_instr_debug)
    );

endmodule
