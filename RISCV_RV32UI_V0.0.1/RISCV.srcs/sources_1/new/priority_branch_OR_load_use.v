`timescale 1ns / 1ps

module priority_branch_OR_load_use (
    input  wire load_use_pc_en,
    input  wire load_use_if_id_hold,
    input  wire load_use_id_ex_flush,

    input  wire csr_use_pc_en,
    input  wire csr_use_if_id_hold,
    input  wire csr_use_id_ex_flush,

    input  wire ex_flush_req,
    input  wire priv_redirect_valid,
    input  wire mem_stall_req,

    output wire pc_en_final,
    output wire if_id_hold_final,
    output wire if_id_flush_final,
    output wire id_ex_flush_final
);

    wire any_redirect;
    wire hazard_pc_en;
    wire hazard_if_id_hold;
    wire hazard_id_ex_flush;

    assign any_redirect = ex_flush_req | priv_redirect_valid;

    assign hazard_pc_en =
        load_use_pc_en & csr_use_pc_en;

    assign hazard_if_id_hold =
        load_use_if_id_hold | csr_use_if_id_hold;

    assign hazard_id_ex_flush =
        load_use_id_ex_flush | csr_use_id_ex_flush;

    assign pc_en_final =
        mem_stall_req ? 1'b0 :
        any_redirect  ? 1'b1 :
                        hazard_pc_en;

    assign if_id_hold_final =
        mem_stall_req ? 1'b1 :
        any_redirect  ? 1'b0 :
                        hazard_if_id_hold;

    assign if_id_flush_final =
        any_redirect;

    assign id_ex_flush_final =
        any_redirect | hazard_id_ex_flush;

endmodule