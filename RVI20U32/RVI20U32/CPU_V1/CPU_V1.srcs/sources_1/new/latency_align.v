module latency_align (
    input  wire        clk,
    input  wire        rst,

    input  wire [31:0] pc_fetch,
    input  wire [31:0] instr_bram,
    input  wire [31:0] pc_plus4_fetch,

    output reg  [31:0] pc_exec,
    output wire  [31:0] instr_exec,
    output reg  [31:0] pc_plus4_exec
);
always @(posedge clk) begin
    if (rst) begin
        pc_exec       <= 32'd0;
        pc_plus4_exec <= 32'd0;
    end else begin
        pc_exec       <= pc_fetch;       // retrasas PC 1 ciclo
        pc_plus4_exec <= pc_plus4_fetch; // retrasas PC+4 1 ciclo
    end
end

assign instr_exec = instr_bram;          // NO la retrasas otra vez

endmodule