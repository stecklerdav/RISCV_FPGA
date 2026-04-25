`timescale 1ns / 1ps

module rv32i_regfile_wrapper (
    input  wire        clk,

    // Lecturas
    input  wire [4:0]  rs1_addr,
    input  wire [4:0]  rs2_addr,
    output wire [31:0] rs1_rdata,
    output wire [31:0] rs2_rdata,

    // Escritura
    input  wire [4:0]  rd_addr,
    input  wire [31:0] rd_wdata,
    input  wire        rd_we
);

    // rd_in: rs1_addr + rs2_addr = 5 + 5 = 10 bits
    wire [9:0]  rd_in_flat;

    // wr_in: rd_addr + rd_wdata + rd_we = 5 + 32 + 1 = 38 bits
    wire [37:0] wr_in_flat;

    // rd_out: rs1_rdata + rs2_rdata = 32 + 32 = 64 bits
    wire [63:0] rd_out_flat;

    // Pack inputs
    assign rd_in_flat = {
        rs1_addr,
        rs2_addr
    };

    assign wr_in_flat = {
        rd_addr,
        rd_wdata,
        rd_we
    };

    // Instance SV module
    rv32i_regfile u_rv32i_regfile (
        .clk    (clk),
        .rd_in  (rd_in_flat),
        .rd_out (rd_out_flat),
        .wr_in  (wr_in_flat)
    );

    // Unpack outputs
    assign {
        rs1_rdata,
        rs2_rdata
    } = rd_out_flat;

endmodule