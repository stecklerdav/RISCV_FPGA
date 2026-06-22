`timescale 1ns/1ps

module ram_data #(
    parameter ADDR_WIDTH = 10,
    parameter WORDS      = (1 << ADDR_WIDTH),
    parameter [31:0] RAM_BASE = 32'h8000_1000
)(
    input  wire        clk,
    input  wire        rst,

    // ============================================================
    // Port A: RISC-V CPU
    // ============================================================
    input  wire        valid,
    input  wire        we,
    input  wire [3:0]  be,
    input  wire [31:0] addr,
    input  wire [31:0] wdata,

    output reg  [31:0] rdata,
    output reg         ready,

    // ============================================================
    // Port B: Zynq loader
    // ============================================================
    input  wire        zynq_valid,
    input  wire        zynq_we,
    input  wire [3:0]  zynq_be,
    input  wire [31:0] zynq_addr,
    input  wire [31:0] zynq_wdata,

    output reg  [31:0] zynq_rdata,
    output reg         zynq_ready
);

    // ============================================================
    // Address decode
    // ============================================================

    wire [31:0] addr_off;
    wire [ADDR_WIDTH-1:0] wa;

    wire [31:0] zynq_addr_off;
    wire [ADDR_WIDTH-1:0] zynq_wa;

    assign addr_off = addr - RAM_BASE;
    assign wa       = addr_off[ADDR_WIDTH+1:2];

    assign zynq_addr_off = zynq_addr - RAM_BASE;
    assign zynq_wa       = zynq_addr_off[ADDR_WIDTH+1:2];

    // ============================================================
    // Byte-wide true dual-port RAM
    // ============================================================

    (* ram_style = "block" *) reg [7:0] mem0 [0:WORDS-1];
    (* ram_style = "block" *) reg [7:0] mem1 [0:WORDS-1];
    (* ram_style = "block" *) reg [7:0] mem2 [0:WORDS-1];
    (* ram_style = "block" *) reg [7:0] mem3 [0:WORDS-1];

    integer i;

    initial begin
        for (i = 0; i < WORDS; i = i + 1) begin
            mem0[i] = 8'h00;
            mem1[i] = 8'h00;
            mem2[i] = 8'h00;
            mem3[i] = 8'h00;
        end

        $display("[RAM_INIT] RAM cleared to zero");
    end

    // ============================================================
    // Debug - solo simulación
    // ============================================================

    always @(posedge clk) begin
        if (valid && !we) begin
            $display("[RAM_ACCESS] addr=%08x wa=%08x", addr, wa);
        end
    end

    always @(posedge clk) begin
        if (valid && we) begin
            $display("[RAM_WRITE] addr=%08x wa=%08x wdata=%08x be=%b",
                     addr, wa, wdata, be);

            if (addr == 32'h8000_1000) begin
                $display("[TOHOST_WRITE] data=%08x be=%b", wdata, be);
            end
        end
    end

    always @(posedge clk) begin
        if (zynq_valid && zynq_we) begin
            $display("[ZYNQ_RAM_WRITE] addr=%08x wa=%08x wdata=%08x be=%b",
                     zynq_addr, zynq_wa, zynq_wdata, zynq_be);
        end
    end

    // ============================================================
    // Port A: RISC-V CPU
    // Synchronous read, byte-enable write
    // ============================================================

    always @(posedge clk) begin
        if (rst) begin
            rdata <= 32'h0000_0000;
            ready <= 1'b0;
        end else begin
            ready <= 1'b0;

            if (valid) begin
                ready <= 1'b1;

                rdata <= {
                    mem3[wa],
                    mem2[wa],
                    mem1[wa],
                    mem0[wa]
                };

                if (we) begin
                    if (be[0]) mem0[wa] <= wdata[7:0];
                    if (be[1]) mem1[wa] <= wdata[15:8];
                    if (be[2]) mem2[wa] <= wdata[23:16];
                    if (be[3]) mem3[wa] <= wdata[31:24];
                end
            end
        end
    end

    // ============================================================
    // Port B: Zynq loader
    // Synchronous read, byte-enable write
    // ============================================================

    always @(posedge clk) begin
        if (rst) begin
            zynq_rdata <= 32'h0000_0000;
            zynq_ready <= 1'b0;
        end else begin
            zynq_ready <= 1'b0;

            if (zynq_valid) begin
                zynq_ready <= 1'b1;

                zynq_rdata <= {
                    mem3[zynq_wa],
                    mem2[zynq_wa],
                    mem1[zynq_wa],
                    mem0[zynq_wa]
                };

                if (zynq_we) begin
                    if (zynq_be[0]) mem0[zynq_wa] <= zynq_wdata[7:0];
                    if (zynq_be[1]) mem1[zynq_wa] <= zynq_wdata[15:8];
                    if (zynq_be[2]) mem2[zynq_wa] <= zynq_wdata[23:16];
                    if (zynq_be[3]) mem3[zynq_wa] <= zynq_wdata[31:24];
                end
            end
        end
    end

endmodule