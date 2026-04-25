`timescale 1ns/1ps

module pc_to_rom_addr_wrapper #(
    parameter integer ADDR_W = 13
)(
    input  wire [31:0] pc,
    output wire [ADDR_W-1:0] a
);

    pc_to_rom_addr #(
        .ADDR_W(ADDR_W)
    ) u_pc_to_rom_addr (
        .pc(pc),
        .a(a)
    );

endmodule