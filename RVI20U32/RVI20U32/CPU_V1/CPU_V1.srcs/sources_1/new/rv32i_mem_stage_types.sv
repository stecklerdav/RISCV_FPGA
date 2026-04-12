`timescale 1ns/1ps

package rv32i_mem_stage_types_pkg;

    typedef struct packed {
        logic        valid;

        logic [31:0] alu_result;
        logic [31:0] store_data;
        logic [31:0] pc_plus4;
        logic [31:0] imm_u;

        logic [4:0]  rd;
        logic        rd_we;

        logic        mem_re;
        logic        mem_we;
        logic [1:0]  mem_size;
        logic        mem_unsigned;

        logic [1:0]  wb_sel;
    } rv32i_mem_in_t;

    typedef struct packed {
        logic [31:0] addr;
        logic [31:0] wdata;
        logic        we;
        logic        re;
        logic [3:0]  be;
    } rv32i_dmem_req_t;

    typedef struct packed {
        logic        valid;

        logic [31:0] data;
        logic [31:0] alu_result;
        logic [31:0] pc_plus4;
        logic [31:0] imm_u;

        logic [4:0]  rd;
        logic        rd_we;

        logic [1:0]  wb_sel;
    } rv32i_mem_out_t;

endpackage


