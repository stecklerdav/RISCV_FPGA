`timescale 1ns / 1ps

module operand_b_mux (
    input  wire [31:0] rs2_data,
    input  wire [31:0] imm,
    input  wire [1:0]  op_b_sel,
    output reg  [31:0] operand_b
);

    // Encoding debe coincidir con control.v
    localparam [1:0] B_RS2  = 2'd0;
    localparam [1:0] B_IMM  = 2'd1;
    localparam [1:0] B_FOUR = 2'd2;

    always @(*) begin
        case (op_b_sel)
            B_RS2:  operand_b = rs2_data;
            B_IMM:  operand_b = imm;
            B_FOUR: operand_b = 32'd4;
            default: operand_b = rs2_data;
        endcase
    end

endmodule