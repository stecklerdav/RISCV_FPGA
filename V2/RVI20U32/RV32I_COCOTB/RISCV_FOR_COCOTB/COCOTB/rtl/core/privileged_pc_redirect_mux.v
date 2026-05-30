`timescale 1ns / 1ps

module privileged_pc_redirect_mux (
    input  wire        trap_enter,
    input  wire [31:0] trap_target,

    input  wire        mret_taken,
    input  wire [31:0] mret_target,

    output wire        priv_redirect_valid,
    output wire [31:0] priv_redirect_target
);

    assign priv_redirect_valid = trap_enter | mret_taken;

    assign priv_redirect_target =
        trap_enter ? trap_target :
        mret_taken ? mret_target :
        32'h0000_0000;

endmodule