module latency_align (
    input  wire        clk,
    input  wire        rst,
    input  wire [31:0] pc_fetch,
    input  wire [31:0] instr_bram,
    output wire [31:0] pc_exec,
    output wire [31:0] instr_exec
);

    reg [31:0] pc_fetch_d;

    always @(posedge clk) begin
        if (rst)
            pc_fetch_d <= 32'd0;
        else
            pc_fetch_d <= pc_fetch;
    end

    assign pc_exec    = pc_fetch_d;
    assign instr_exec = instr_bram;

endmodule