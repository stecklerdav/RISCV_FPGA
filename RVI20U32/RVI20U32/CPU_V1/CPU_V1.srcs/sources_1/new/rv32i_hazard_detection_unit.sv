`timescale 1ns / 1ps

module rv32i_hazard_detection_unit (
    input  logic       clk,
    input  logic       rst,

    input  logic       id_ex_mem_re,
    input  logic [4:0] id_ex_rd,

    input  logic [4:0] if_id_rs1,
    input  logic [4:0] if_id_rs2,
    input  logic       if_id_rs1_used,
    input  logic       if_id_rs2_used,

    output logic       load_use_hazard,
    output logic       pc_en,
    output logic       if_id_hold,
    output logic       id_ex_flush
);

    logic hazard_now;
    logic [1:0] stall_cnt;
    logic stall_active;

    always_comb begin
        hazard_now = 1'b0;

        if (id_ex_mem_re && (id_ex_rd != 5'd0)) begin
            if ((if_id_rs1_used && (id_ex_rd == if_id_rs1)) ||
                (if_id_rs2_used && (id_ex_rd == if_id_rs2))) begin
                hazard_now = 1'b1;
            end
        end
    end

    always_ff @(posedge clk) begin
        if (rst) begin
            stall_cnt <= 2'd0;
        end
        else begin
            // Cargar 2 ciclos de stall cuando aparece hazard nuevo
            if (hazard_now && (stall_cnt == 2'd0)) begin
                stall_cnt <= 2'd2;
            end
            else if (stall_cnt != 2'd0) begin
                stall_cnt <= stall_cnt - 2'd1;
            end
        end
    end

    always_comb begin
        stall_active     = (stall_cnt != 2'd0);

        load_use_hazard  = hazard_now;
        pc_en            = ~stall_active;
        if_id_hold       =  stall_active;
        id_ex_flush      =  stall_active;
    end

endmodule