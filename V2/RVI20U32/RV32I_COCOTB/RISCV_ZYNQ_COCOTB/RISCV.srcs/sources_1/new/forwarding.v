`timescale 1ns / 1ps

module forwarding(
    input  wire [4:0] ex_rs1,
    input  wire [4:0] ex_rs2,
    input  wire [1:0] ex_op_b_sel,

    input  wire       mem_valid,
    input  wire [4:0] mem_rd,
    input  wire       mem_rd_we,
    input  wire       mem_is_load,

    input  wire       mem_stage_valid,
    input  wire [4:0] mem_stage_rd,
    input  wire       mem_stage_rd_we,

    input  wire       wb_valid,
    input  wire [4:0] wb_rd,
    input  wire       wb_rd_we,

    output reg  [1:0] forward_a,
    output reg  [1:0] forward_b,
    output reg  [1:0] forward_store
);

    localparam [1:0] B_RS2 = 2'd0;

    wire mem_can_forward_exmem;
    wire mem_stage_can_forward;
    wire wb_can_forward;

    assign mem_can_forward_exmem = mem_valid       && mem_rd_we       && !mem_is_load;
    assign mem_stage_can_forward = mem_stage_valid && mem_stage_rd_we;
    assign wb_can_forward        = wb_valid        && wb_rd_we;

    always @(*) begin
        forward_a     = 2'b00;
        forward_b     = 2'b00;
        forward_store = 2'b00;

        if (mem_can_forward_exmem &&
            (mem_rd != 5'd0) &&
            (mem_rd == ex_rs1)) begin
            forward_a = 2'b01;
        end else if (mem_stage_can_forward &&
                     (mem_stage_rd != 5'd0) &&
                     (mem_stage_rd == ex_rs1)) begin
            forward_a = 2'b10;
        end else if (wb_can_forward &&
                     (wb_rd != 5'd0) &&
                     (wb_rd == ex_rs1)) begin
            forward_a = 2'b11;
        end

        if (ex_op_b_sel == B_RS2) begin
            if (mem_can_forward_exmem &&
                (mem_rd != 5'd0) &&
                (mem_rd == ex_rs2)) begin
                forward_b = 2'b01;
            end else if (mem_stage_can_forward &&
                         (mem_stage_rd != 5'd0) &&
                         (mem_stage_rd == ex_rs2)) begin
                forward_b = 2'b10;
            end else if (wb_can_forward &&
                         (wb_rd != 5'd0) &&
                         (wb_rd == ex_rs2)) begin
                forward_b = 2'b11;
            end
        end

        if (mem_can_forward_exmem &&
            (mem_rd != 5'd0) &&
            (mem_rd == ex_rs2)) begin
            forward_store = 2'b01;
        end else if (mem_stage_can_forward &&
                     (mem_stage_rd != 5'd0) &&
                     (mem_stage_rd == ex_rs2)) begin
            forward_store = 2'b10;
        end else if (wb_can_forward &&
                     (wb_rd != 5'd0) &&
                     (wb_rd == ex_rs2)) begin
            forward_store = 2'b11;
        end
    end

endmodule
