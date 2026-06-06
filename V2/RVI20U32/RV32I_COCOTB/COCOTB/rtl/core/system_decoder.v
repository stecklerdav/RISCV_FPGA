`timescale 1ns / 1ps

module system_decoder (
input  wire [31:0] instr,

output wire        is_system,
output wire        is_ecall,
output wire        is_mret,

output wire        is_csrrw,
output wire        is_csrrs,
output wire        is_csrrc,

output wire is_csrrwi,
output wire is_csrrsi,
output wire is_csrrci,

output wire [11:0] csr_addr,
output wire [4:0]  csr_rs1,
output wire [4:0]  csr_rd

);

wire [6:0] opcode;
wire [2:0] funct3;

assign opcode = instr[6:0];
assign funct3 = instr[14:12];

assign is_system = (opcode == 7'b1110011);

assign is_ecall = is_system && (instr == 32'h0000_0073);
assign is_mret  = is_system && (instr == 32'h3020_0073);

assign csr_addr = instr[31:20];
assign csr_rs1  = instr[19:15];
assign csr_rd   = instr[11:7];

assign is_csrrw  = is_system && (funct3 == 3'b001);
assign is_csrrs  = is_system && (funct3 == 3'b010);
assign is_csrrc  = is_system && (funct3 == 3'b011);

assign is_csrrwi = is_system && (funct3 == 3'b101);
assign is_csrrsi = is_system && (funct3 == 3'b110);
assign is_csrrci = is_system && (funct3 == 3'b111);

endmodule