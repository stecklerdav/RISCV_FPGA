`timescale 1ns/1ps

module pc_to_imem_addr #(
    parameter ADDR_W = 11
)(
    input  wire [31:0] pc,
    output wire [ADDR_W-1:0] addr
);

    assign addr = pc[ADDR_W+1:2];

endmodule
