`timescale 1ns / 1ps

module rv32i_hazard_detection_unit (
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

    always_comb begin
        load_use_hazard = 1'b0;

        if (id_ex_mem_re && (id_ex_rd != 5'd0)) begin
            if ((if_id_rs1_used && (id_ex_rd == if_id_rs1)) ||
                (if_id_rs2_used && (id_ex_rd == if_id_rs2))) begin
                load_use_hazard = 1'b1;
            end
        end

        // Si hay hazard:
        // - congelar PC
        // - congelar IF/ID
        // - flush/bubble en ID/EX
        pc_en      = ~load_use_hazard;
        if_id_hold =  load_use_hazard;
        id_ex_flush=  load_use_hazard;
    end

endmodule