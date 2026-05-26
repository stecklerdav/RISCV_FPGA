`timescale 1ns / 1ps

module clk_divider #(
    parameter DIV = 2
)(
    input  wire clk_in,
    input  wire rst,

    output reg  clk_out
);

    integer counter;

    always @(posedge clk_in or posedge rst) begin
        if (rst) begin
            counter <= 0;
            clk_out <= 0;
        end else begin

            if (counter == (DIV/2 - 1)) begin
                clk_out <= ~clk_out;
                counter <= 0;
            end else begin
                counter <= counter + 1;
            end

        end
    end

endmodule