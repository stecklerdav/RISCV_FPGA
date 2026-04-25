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

    reg [31:0] pc_fetch_d;
    reg [31:0] pc_plus4_fetch_d;

    // 2 ciclos de latencia para pc// 1ciclo para instruction bram

    always @(posedge clk) begin
        if (rst) begin
            pc_fetch_d     <= 32'd0;
            pc_plus4_fetch_d <= 32'd0;
            pc_exec        <= 32'd0;
            instr_exec     <= RV32I_NOP;
            pc_plus4_exec  <= 32'd0;
        end else if (!hold) begin
            pc_fetch_d       <= pc_fetch;
            pc_plus4_fetch_d <= pc_plus4_fetch;

            pc_exec          <= pc_fetch_d;
            instr_exec       <= instr_bram;
            pc_plus4_exec    <= pc_plus4_fetch_d;
        end
    end

endmodule