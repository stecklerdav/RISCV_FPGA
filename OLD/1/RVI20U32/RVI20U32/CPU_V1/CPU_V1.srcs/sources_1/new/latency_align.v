module latency_align (
    input  wire        clk,
    input  wire        rst,
    input  wire        hold,

    input  wire [31:0] pc_fetch,
    input  wire [31:0] instr_bram,
    input  wire [31:0] pc_plus4_fetch,

    output reg  [31:0] pc_exec,
    output reg  [31:0] instr_exec,
    output reg  [31:0] pc_plus4_exec
);

    localparam [31:0] RV32I_NOP = 32'h0000_0013;

    always @(posedge clk) begin
        if (rst) begin
            pc_exec       <= 32'd0;
            instr_exec    <= RV32I_NOP;
            pc_plus4_exec <= 32'd0;
        end
        else if (!hold) begin
            pc_exec       <= pc_fetch;
            instr_exec    <= instr_bram;
            pc_plus4_exec <= pc_plus4_fetch;
        end
    end

endmodule