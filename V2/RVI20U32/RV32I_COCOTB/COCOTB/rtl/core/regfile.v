`timescale 1ns / 1ps

module regfile (
    input  wire        clk,

    input  wire [4:0]  rs1_addr,
    input  wire [4:0]  rs2_addr,
    output wire [31:0] rs1_rdata,
    output wire [31:0] rs2_rdata,

    input  wire        rd_we,
    input  wire [4:0]  rd_addr,
    input  wire [31:0] rd_wdata,

    output wire [31:0] debug_x3,

    output wire [31:0] debug_x4,
    output wire [31:0] debug_x5
);

    reg [31:0] regs [0:31];
    integer i;

    reg [31:0] rs1_rdata_r;
    reg [31:0] rs2_rdata_r;

    // Inicialización (solo simulación)
    initial begin
        for (i = 0; i < 32; i = i + 1)
            regs[i] = 32'b0;
    end

    // Lectura combinacional con bypass WB->ID (write-first behavior)
    always @(*) begin
        // -------------------------
        // RS1
        // -------------------------
        if (rs1_addr == 5'd0) begin
            rs1_rdata_r = 32'b0;
        end
        else if (rd_we &&
                 (rd_addr != 5'd0) &&
                 (rd_addr == rs1_addr)) begin
            rs1_rdata_r = rd_wdata;
        end
        else begin
            rs1_rdata_r = regs[rs1_addr];
        end

        // -------------------------
        // RS2
        // -------------------------
        if (rs2_addr == 5'd0) begin
            rs2_rdata_r = 32'b0;
        end
        else if (rd_we &&
                 (rd_addr != 5'd0) &&
                 (rd_addr == rs2_addr)) begin
            rs2_rdata_r = rd_wdata;
        end
        else begin
            rs2_rdata_r = regs[rs2_addr];
        end
    end

    // Escritura síncrona
    always @(posedge clk) begin
        if (rd_we && (rd_addr != 5'd0))begin
            regs[rd_addr] <= rd_wdata;
            if (rd_addr == 5'd3) begin
                $display("[GP_WRITE] time=%0t gp <= 0x%08x", $time, rd_wdata);
            end
            
        end
    end
    assign rs1_rdata = rs1_rdata_r;
    assign rs2_rdata = rs2_rdata_r;
    assign debug_x3 = regs[3];
    assign debug_x4 = regs[4];
    assign debug_x5 = regs[5];

endmodule