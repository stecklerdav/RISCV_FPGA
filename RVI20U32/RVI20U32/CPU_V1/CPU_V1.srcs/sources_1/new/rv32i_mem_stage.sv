`timescale 1ns/1ps

import rv32i_mem_stage_types_pkg::*;

module rv32i_mem_stage (
    input  logic            clk,
    input  logic            rst,
    input  rv32i_mem_in_t   mem_in,
    output rv32i_dmem_req_t dmem_req,
    input  logic [31:0]     dmem_rdata,
    output rv32i_mem_out_t  mem_out
);

    rv32i_dmem_req_t dmem_req_r;
    rv32i_mem_out_t  mem_out_r;

    always_comb begin
        dmem_req_r       = '0;
        dmem_req_r.addr  = mem_in.alu_result;
        dmem_req_r.we    = mem_in.mem_we;
        dmem_req_r.re    = mem_in.mem_re;
        dmem_req_r.be    = 4'b0000;
        dmem_req_r.wdata = 32'b0;

        if (mem_in.mem_we) begin
            unique case (mem_in.mem_size)
                2'b00: begin
                    unique case (mem_in.alu_result[1:0])
                        2'b00: begin
                            dmem_req_r.be    = 4'b0001;
                            dmem_req_r.wdata = {24'b0, mem_in.store_data[7:0]};
                        end
                        2'b01: begin
                            dmem_req_r.be    = 4'b0010;
                            dmem_req_r.wdata = {16'b0, mem_in.store_data[7:0], 8'b0};
                        end
                        2'b10: begin
                            dmem_req_r.be    = 4'b0100;
                            dmem_req_r.wdata = {8'b0, mem_in.store_data[7:0], 16'b0};
                        end
                        2'b11: begin
                            dmem_req_r.be    = 4'b1000;
                            dmem_req_r.wdata = {mem_in.store_data[7:0], 24'b0};
                        end
                        default: begin
                            dmem_req_r.be    = 4'b0000;
                            dmem_req_r.wdata = 32'b0;
                        end
                    endcase
                end

                2'b01: begin
                    unique case (mem_in.alu_result[1])
                        1'b0: begin
                            dmem_req_r.be    = 4'b0011;
                            dmem_req_r.wdata = {16'b0, mem_in.store_data[15:0]};
                        end
                        1'b1: begin
                            dmem_req_r.be    = 4'b1100;
                            dmem_req_r.wdata = {mem_in.store_data[15:0], 16'b0};
                        end
                        default: begin
                            dmem_req_r.be    = 4'b0000;
                            dmem_req_r.wdata = 32'b0;
                        end
                    endcase
                end

                2'b10: begin
                    dmem_req_r.be    = 4'b1111;
                    dmem_req_r.wdata = mem_in.store_data;
                end

                default: begin
                    dmem_req_r.be    = 4'b0000;
                    dmem_req_r.wdata = 32'b0;
                end
            endcase
        end
    end

    always_comb begin
        mem_out_r            = '0;
        mem_out_r.alu_result = mem_in.alu_result;
        mem_out_r.pc_plus4   = mem_in.pc_plus4;
        mem_out_r.imm_u      = mem_in.imm_u;
        mem_out_r.rd         = mem_in.rd;
        mem_out_r.rd_we      = mem_in.rd_we;
        mem_out_r.wb_sel     = mem_in.wb_sel;
    end

    assign dmem_req = dmem_req_r;
    assign mem_out  = mem_out_r;

endmodule