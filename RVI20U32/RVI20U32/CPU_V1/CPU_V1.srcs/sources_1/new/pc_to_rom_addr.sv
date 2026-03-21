`timescale 1ns/1ps

module pc_to_rom_addr #(
    parameter int ADDR_W = 13
)(
    input  logic [31:0] pc,
    output logic [ADDR_W-1:0] a
);

    assign a = pc[ADDR_W+1:2];

endmodule