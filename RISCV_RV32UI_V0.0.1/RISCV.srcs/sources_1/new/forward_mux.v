`timescale 1ns / 1ps

module forward_mux (
    input  wire [31:0] base_data,
    input  wire [31:0] ex_mem_data,
    input  wire [31:0] mem_stage_data,
    input  wire [31:0] mem_wb_data,

    input  wire [1:0]  forward_sel,

    output reg  [31:0] out_data
);

    always @(*) begin
        case (forward_sel)
            2'b00: out_data = base_data;
            2'b01: out_data = ex_mem_data;
            2'b10: out_data = mem_stage_data;
            2'b11: out_data = mem_wb_data;
            default: out_data = base_data;
        endcase
    end

endmodule
