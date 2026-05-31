`timescale 1ns / 1ps

module forwarding(
    input  wire [4:0] ex_rs1,
    input  wire [4:0] ex_rs2,
    input  wire [1:0] ex_op_b_sel,

    // EX/MEM
    input  wire       mem_valid,
    input  wire [4:0] mem_rd,
    input  wire       mem_rd_we,
    input  wire       mem_is_load,

    // MEM_STAGE_OUT
    input  wire       mem_stage_valid,
    input  wire [4:0] mem_stage_rd,
    input  wire       mem_stage_rd_we,

    // MEM/WB
    input  wire       wb_valid,
    input  wire [4:0] wb_rd,
    input  wire       wb_rd_we,

    output reg  [1:0] forward_a,
    output reg  [1:0] forward_b,
    output reg  [1:0] forward_store
);

    localparam [1:0] B_RS2 = 2'd0;

    // forward_sel:
    // 00 -> base_data
    // 01 -> EX/MEM ALU result
    // 10 -> MEM_STAGE_OUT data/load aligned
    // 11 -> MEM/WB writeback data

    wire mem_can_forward_exmem;
    wire mem_stage_can_forward;
    wire wb_can_forward;

    assign mem_can_forward_exmem = mem_valid       & mem_rd_we       & ~mem_is_load;
    assign mem_stage_can_forward = mem_stage_valid & mem_stage_rd_we;
    assign wb_can_forward        = wb_valid        & wb_rd_we;

    always @(*) begin
        forward_a     = 2'b00;
        forward_b     = 2'b00;
        forward_store = 2'b00;

        // --------------------------------------------------------
        // Forwarding para operando A / rs1
        // --------------------------------------------------------
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

        // --------------------------------------------------------
        // Forwarding para operando B / rs2 usado por ALU
        // Solo aplica cuando op_b_sel == B_RS2.
        // --------------------------------------------------------
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



        // --------------------------------------------------------
        // Forwarding para STORE DATA / rs2
        // No depende de ex_op_b_sel.
        // Ejemplo:
        //   sw x12, 8(x1)
        //   ALU usa rs1 + imm
        //   store data usa rs2
        // --------------------------------------------------------
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
