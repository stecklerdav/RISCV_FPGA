`timescale 1ns/1ps

module rv32i_load_extender_wrapper(
    input  wire [31:0] mem_data,
    input  wire [1:0]  size,
    input  wire        unsigned_load,
    input  wire [1:0]  addr_offset,
    output wire [31:0] load_data
);

    rv32i_load_extender u_rv32i_load_extender (
        .mem_data      (mem_data),
        .size          (size),
        .unsigned_load (unsigned_load),
        .addr_offset   (addr_offset),
        .load_data     (load_data)
    );

endmodule
