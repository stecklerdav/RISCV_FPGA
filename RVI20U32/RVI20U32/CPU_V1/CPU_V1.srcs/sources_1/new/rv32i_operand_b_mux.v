`timescale 1ns / 1ps

module rv32i_operand_b_mux (
    input  wire [31:0] rs2_data,
    input  wire [31:0] imm,
    input  wire [1:0]  op_b_sel,
    output reg  [31:0] operand_b
);

    localparam OP_B_RS2  = 2'b00;
    localparam OP_B_IMM  = 2'b01;
    localparam OP_B_FOUR = 2'b10;

    always @(*) begin
        case (op_b_sel)
            OP_B_RS2:  operand_b = rs2_data;
            OP_B_IMM:  operand_b = imm;
            OP_B_FOUR: operand_b = 32'd4;
            default:   operand_b = rs2_data;
        endcase
    end

endmodule