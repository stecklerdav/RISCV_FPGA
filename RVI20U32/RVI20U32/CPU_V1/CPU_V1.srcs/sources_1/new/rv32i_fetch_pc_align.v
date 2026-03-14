`timescale 1ns/1ps

module rv32i_fetch_pc_align (
    input  wire        clk,
    input  wire        rst,
    input  wire        hold,

    input  wire [31:0] pc_fetch_current,   // PC que se manda a la ROM hoy

    output reg  [31:0] pc_rom_return       // PC asociado a la instrucción que volverá de ROM
);

    always @(posedge clk) begin
        if (rst) begin
            pc_rom_return <= 32'b0;
        end
        else if (!hold) begin
            pc_rom_return <= pc_fetch_current;
        end
    end

endmodule