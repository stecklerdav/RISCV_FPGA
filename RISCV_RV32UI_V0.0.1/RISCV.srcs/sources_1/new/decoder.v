`timescale 1ns/1ps

module decoder (
    input  wire [31:0] instr,

    output wire [6:0]  opcode,
    output wire [2:0]  funct3,
    output wire [6:0]  funct7,
    output reg  [2:0]  fmt,
    output wire        bit30,

    output wire [31:0] imm_i,
    output wire [31:0] imm_s,
    output wire [31:0] imm_b,
    output wire [31:0] imm_u,
    output wire [31:0] imm_j,

    output reg         illegal_opcode,
    output wire [4:0]  rd,
    output wire [4:0]  rs1,
    output wire [4:0]  rs2,

    output wire        rs1_used,
    output wire        rs2_used
);

    localparam [2:0] FMT_R       = 3'b000;
    localparam [2:0] FMT_I       = 3'b001;
    localparam [2:0] FMT_S       = 3'b010;
    localparam [2:0] FMT_B       = 3'b011;
    localparam [2:0] FMT_U       = 3'b100;
    localparam [2:0] FMT_J       = 3'b101;
    localparam [2:0] FMT_UNKNOWN = 3'b111;

    assign opcode = instr[6:0];
    assign rd     = instr[11:7];
    assign funct3 = instr[14:12];
    assign rs1    = instr[19:15];
    assign rs2    = instr[24:20];
    assign funct7 = instr[31:25];
    assign bit30  = instr[30];

    wire is_r_type = (opcode == 7'b0110011);
    wire is_i_type = (opcode == 7'b0010011);
    wire is_load   = (opcode == 7'b0000011);
    wire is_store  = (opcode == 7'b0100011);
    wire is_branch = (opcode == 7'b1100011);
    wire is_jalr   = (opcode == 7'b1100111);
    wire is_system = (opcode == 7'b1110011);
    wire is_fence  = (opcode == 7'b0001111);

    wire is_ecall;
    wire is_mret;

    wire is_csr_reg;
    wire is_csr_imm;
    wire is_csr_any;
    wire is_system_valid;

    assign is_ecall = (instr == 32'h0000_0073);
    assign is_mret  = (instr == 32'h3020_0073);

    assign is_csr_reg = is_system &&
                        ((funct3 == 3'b001) ||
                         (funct3 == 3'b010) ||
                         (funct3 == 3'b011));

    assign is_csr_imm = is_system &&
                        ((funct3 == 3'b101) ||
                         (funct3 == 3'b110) ||
                         (funct3 == 3'b111));

    assign is_csr_any = is_csr_reg | is_csr_imm;

    assign is_system_valid =
        is_ecall |
        is_mret  |
        is_csr_any;

    assign rs1_used =
        is_r_type |
        is_i_type |
        is_load   |
        is_store  |
        is_branch |
        is_jalr   |
        is_csr_reg;

    assign rs2_used =
        is_r_type |
        is_store  |
        is_branch;

    assign imm_i = {{20{instr[31]}}, instr[31:20]};

    assign imm_s = {{20{instr[31]}}, instr[31:25], instr[11:7]};

    assign imm_b = {{19{instr[31]}}, instr[31], instr[7],
                    instr[30:25], instr[11:8], 1'b0};

    assign imm_u = {instr[31:12], 12'b0};

    assign imm_j = {{11{instr[31]}}, instr[31],
                    instr[19:12], instr[20],
                    instr[30:21], 1'b0};

    always @(*) begin
        fmt            = FMT_UNKNOWN;
        illegal_opcode = 1'b0;

        case (opcode)

            7'b0110011: begin
                fmt = FMT_R; // OP
            end

            7'b0010011: begin
                fmt = FMT_I; // OP-IMM
            end

            7'b0000011: begin
                fmt = FMT_I; // LOAD
            end

            7'b1100111: begin
                fmt = FMT_I; // JALR
            end

            7'b1110011: begin
                fmt = FMT_I; // SYSTEM / CSR / ECALL / MRET

                if (!is_system_valid)
                    illegal_opcode = 1'b1;
            end

            7'b0001111: begin
                fmt = FMT_I; // FENCE tratado como NOP por ahora
            end

            7'b0100011: begin
                fmt = FMT_S; // STORE
            end

            7'b1100011: begin
                fmt = FMT_B; // BRANCH
            end

            7'b0110111: begin
                fmt = FMT_U; // LUI
            end

            7'b0010111: begin
                fmt = FMT_U; // AUIPC
            end

            7'b1101111: begin
                fmt = FMT_J; // JAL
            end

            default: begin
                fmt            = FMT_UNKNOWN;
                illegal_opcode = 1'b1;
            end
        endcase
    end

endmodule