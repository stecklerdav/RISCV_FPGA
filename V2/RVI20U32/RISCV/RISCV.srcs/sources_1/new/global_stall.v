`timescale 1ns / 1ps

module global_stall (
    input  wire load_use_stall,
    input  wire mem_stall_req,

    output wire global_stall
);

    assign global_stall =
        load_use_stall |
        mem_stall_req;

endmodule