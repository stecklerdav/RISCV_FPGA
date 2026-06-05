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

    initial begin
        for (i = 0; i < 32; i = i + 1)
            regs[i] = 32'b0;
    end

    always @(*) begin
        if (rs1_addr == 5'd0) begin
            rs1_rdata_r = 32'b0;
        end
        else if (rd_we && (rd_addr != 5'd0) && (rd_addr == rs1_addr)) begin
            rs1_rdata_r = rd_wdata;
        end
        else begin
            rs1_rdata_r = regs[rs1_addr];
        end

        if (rs2_addr == 5'd0) begin
            rs2_rdata_r = 32'b0;
        end
        else if (rd_we && (rd_addr != 5'd0) && (rd_addr == rs2_addr)) begin
            rs2_rdata_r = rd_wdata;
        end
        else begin
            rs2_rdata_r = regs[rs2_addr];
        end
    end

    always @(posedge clk) begin
        if (rd_we && (rd_addr != 5'd0)) begin
            regs[rd_addr] <= rd_wdata;

            case (rd_addr)
                5'd3:  $display("[GP_WRITE] time=%0t gp <= 0x%08x", $time, rd_wdata);
                5'd4:  $display("[TP_WRITE] time=%0t tp <= 0x%08x", $time, rd_wdata);
                5'd5:  $display("[T0_WRITE] time=%0t t0 <= 0x%08x", $time, rd_wdata);
                5'd6:  $display("[T1_WRITE] time=%0t t1 <= 0x%08x", $time, rd_wdata);
                5'd7:  $display("[T2_WRITE] time=%0t t2 <= 0x%08x", $time, rd_wdata);
                5'd13: $display("[A3_WRITE] time=%0t a3 <= 0x%08x", $time, rd_wdata);
                5'd14: $display("[A4_WRITE] time=%0t a4 <= 0x%08x", $time, rd_wdata);
                default: ;
            endcase
        end
    end

    assign rs1_rdata = rs1_rdata_r;
    assign rs2_rdata = rs2_rdata_r;

    assign debug_x3 = regs[3];
    assign debug_x4 = regs[4];
    assign debug_x5 = regs[5];

endmodule
