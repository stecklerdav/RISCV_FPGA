`timescale 1ns / 1ps

module rv32i_forward_mux (
    input  logic [31:0] base_data,     // salida de operand mux normal
    input  logic [31:0] ex_mem_data,   // mem_alu_result
    input  logic [31:0] mem_wb_data,   // wb_data

    input  logic [1:0]  forward_sel,

    output logic [31:0] out_data
);

    always_comb begin
        case (forward_sel)
            2'b00: out_data = base_data;      // normal
            2'b01: out_data = ex_mem_data;    // EX/MEM
            2'b10: out_data = mem_wb_data;    // MEM/WB
            default: out_data = base_data;
        endcase
    end

endmodule