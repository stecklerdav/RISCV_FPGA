`timescale 1ns / 1ps

module rv32i_forward_mux_wrapper (
    input  wire [31:0] base_data,
    input  wire [31:0] ex_mem_data,
    input  wire [31:0] mem_wb_data,

    input  wire [1:0]  forward_sel,

    output wire [31:0] out_data
);

    rv32i_forward_mux u_rv32i_forward_mux (
        .base_data    (base_data),
        .ex_mem_data  (ex_mem_data),
        .mem_wb_data  (mem_wb_data),
        .forward_sel  (forward_sel),
        .out_data     (out_data)
    );

endmodule