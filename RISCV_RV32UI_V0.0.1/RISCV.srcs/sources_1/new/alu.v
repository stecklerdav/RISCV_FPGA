`timescale 1ns / 1ps

module alu (
    input  wire [31:0] a,
    input  wire [31:0] b,
    input  wire [3:0]  alu_op,
    output reg  [31:0] y
);

    reg signed [31:0] a_s;
    reg signed [31:0] b_s;

    // ------------------------------------------------------------
    // ALU ops
    // Deben coincidir con control.v
    // ------------------------------------------------------------
    localparam [3:0] ALU_ADD    = 4'd0;
    localparam [3:0] ALU_SUB    = 4'd1;
    localparam [3:0] ALU_AND    = 4'd2;
    localparam [3:0] ALU_OR     = 4'd3;
    localparam [3:0] ALU_XOR    = 4'd4;
    localparam [3:0] ALU_SLL    = 4'd5;
    localparam [3:0] ALU_SRL    = 4'd6;
    localparam [3:0] ALU_SRA    = 4'd7;
    localparam [3:0] ALU_SLT    = 4'd8;
    localparam [3:0] ALU_SLTU   = 4'd9;
    localparam [3:0] ALU_COPY_B = 4'd10;

    always @(*) begin
        a_s = a;
        b_s = b;

        case (alu_op)
            ALU_ADD:    y = a + b;
            ALU_SUB:    y = a - b;
            ALU_AND:    y = a & b;
            ALU_OR:     y = a | b;
            ALU_XOR:    y = a ^ b;
            ALU_SLL:    y = a << b[4:0];
            ALU_SRL:    y = a >> b[4:0];
            ALU_SRA:    y = a_s >>> b[4:0];
            ALU_SLT:    y = (a_s < b_s) ? 32'd1 : 32'd0;
            ALU_SLTU:   y = (a < b) ? 32'd1 : 32'd0;
            ALU_COPY_B: y = b;
            default:    y = a + b;
        endcase
    end

endmodule