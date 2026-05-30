`timescale 1ns/1ps

module BASIC_debug_wrapper;

    BASIC dut();

`ifndef SYNTHESIS
    always @(posedge dut.zynq_ultra_ps_e_0_pl_clk0) begin
        if (!dut.proc_sys_reset_0_peripheral_reset) begin

            if (dut.RV32I_MEM_dmem_we) begin
                $display("[%0t] DMEM WRITE addr=%0d wdata=%0d be=%b",
                         $time,
                         dut.RV32I_MEM_dmem_addr,
                         dut.RV32I_MEM_dmem_wdata,
                         dut.RV32I_MEM_dmem_be);

                if (dut.RV32I_MEM_dmem_addr == 32'd24 &&
                    dut.RV32I_MEM_dmem_wdata !== 32'd25) begin
                    $display("[%0t] ERROR: MEM[24] escrito con %0d, esperaba 25",
                             $time, dut.RV32I_MEM_dmem_wdata);
                  //  $stop;
                end
            end

            if (dut.util_vector_logic_0_Res[0]) begin
                $display("[%0t] REG WRITE x%0d <= %0d",
                         $time,
                         dut.mem_wb_reg_0_wb_rd,
                         dut.wb_mux_0_rd_wdata);
            end

            if (dut.load_use_detection_0_load_use_hazard) begin
                $display("[%0t] LOAD-USE id_pc=0x%08x rs1=%0d rs2=%0d pc_en=%b hold=%b bubble=%b",
                         $time,
                         dut.if_id_reg_0_id_pc_out,
                         dut.RV32I_ID_rs1,
                         dut.RV32I_ID_rs2,
                         dut.priority_branch_OR_l_0_pc_en_final,
                         dut.priority_branch_OR_l_0_if_id_hold_final,
                         dut.priority_branch_OR_l_0_id_ex_flush_final);
            end
            
            if (dut.if_id_reg_0_id_valid_out) begin
             $display("[%0t] ID: pc=0x%08x instr=0x%08x rs1=%0d rs2=%0d rs1_used=%b rs2_used=%b",
             $time,
             dut.if_id_reg_0_id_pc_out,
             dut.if_id_reg_0_id_instr_out,
             dut.RV32I_ID_rs1,
             dut.RV32I_ID_rs2,
             dut.RV32I_ID_rs1_used,
             dut.RV32I_ID_rs2_used);
            end
            
            $display("[%0t] PIPE: pc_en=%b hold=%b bubble=%b hazard=%b id_pc=0x%08x ex_rd=%0d ex_mem_re=%b",
         $time,
         dut.priority_branch_OR_l_0_pc_en_final,
         dut.priority_branch_OR_l_0_if_id_hold_final,
         dut.priority_branch_OR_l_0_id_ex_flush_final,
         dut.load_use_detection_0_load_use_hazard,
         dut.if_id_reg_0_id_pc_out,
         dut.id_ex_reg_0_ex_rd,
         dut.id_ex_reg_0_ex_mem_re);

        end
    end
`endif

endmodule