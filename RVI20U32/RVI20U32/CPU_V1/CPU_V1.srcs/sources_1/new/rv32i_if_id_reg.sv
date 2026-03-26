    `timescale 1ns/1ps
    
 import rv32i_pipe_types_pkg::*;

    
    module rv32i_if_id_reg (
        input  logic       clk,
        input  logic       rst,
        
        // Desde IF (bus empaquetado)
        input  if_id_bus_t if_in,
    
        // Control pipeline
        input  logic       flush,
        input  logic       hold,
    
        // Hacia ID
        output if_id_bus_t id_out
    );
    
        localparam logic [31:0] RV32I_NOP = 32'h0000_0013;
    
        if_id_bus_t reg_q;
    
        always_ff @(posedge clk) begin
            if (rst) begin
                reg_q.pc       <= 32'b0;
                reg_q.pc_plus4 <= 32'b0;
                reg_q.instr    <= RV32I_NOP;
                reg_q.valid    <= 1'b0;
            end
            else if (!hold) begin
                reg_q.pc       <= if_in.pc;
                reg_q.pc_plus4 <= if_in.pc_plus4;
    
                if (flush) begin
                    reg_q.instr <= RV32I_NOP;
                    reg_q.valid <= 1'b0;
                end
                else begin
                    reg_q.instr <= if_in.instr;
                    reg_q.valid <= if_in.valid;
                end
            end
        end
    
        assign id_out = reg_q;
    
    endmodule
