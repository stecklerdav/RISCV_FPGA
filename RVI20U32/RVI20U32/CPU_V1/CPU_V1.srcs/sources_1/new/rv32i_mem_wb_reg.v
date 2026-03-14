module rv32i_mem_wb_reg(

    input wire clk,
    input wire rst,
    input wire stall,
    input wire flush,

    input wire [31:0] mem_data,
    input wire [31:0] mem_alu_result,
    input wire [31:0] mem_pc_plus4,
    input wire [4:0]  mem_rd,
    input wire [1:0]  mem_wb_sel,

    output reg [31:0] wb_data,
    output reg [31:0] wb_alu_result,
    output reg [31:0] wb_pc_plus4,
    output reg [4:0]  wb_rd,
    output reg [1:0]  wb_sel

);

always @(posedge clk) begin

if(rst || flush) begin
    wb_data       <= 0;
    wb_alu_result <= 0;
    wb_pc_plus4   <= 0;
    wb_rd         <= 0;
    wb_sel        <= 0;
end
else if(!stall) begin

    wb_data       <= mem_data;
    wb_alu_result <= mem_alu_result;
    wb_pc_plus4   <= mem_pc_plus4;
    wb_rd         <= mem_rd;
    wb_sel        <= mem_wb_sel;

end

end

endmodule