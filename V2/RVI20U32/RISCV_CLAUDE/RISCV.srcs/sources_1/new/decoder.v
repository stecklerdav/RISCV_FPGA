`timescale 1ns/1ps

module decoder (
    input  wire [31:0] instr,

    output wire [6:0]  opcode,
    output wire [2:0]  funct3,
    output wire [6:0]  funct7,
    output reg  [2:0]  fmt,
    output wire        bit30,

    // Inmediatos
    output wire [31:0] imm_i,
    output wire [31:0] imm_s,
    output wire [31:0] imm_b,
    output wire [31:0] imm_u,
    output wire [31:0] imm_j,

    output reg         illegal_opcode,
    output wire [4:0]  rd,
    output wire [4:0]  rs1,
    output wire [4:0]  rs2,

    // NUEVO: uso real de registros fuente
    output wire        rs1_used,
    output wire        rs2_used
);

    // -----------------------------
    // Formatos
    // -----------------------------
    localparam [2:0] FMT_R       = 3'b000;
    localparam [2:0] FMT_I       = 3'b001;
    localparam [2:0] FMT_S       = 3'b010;
    localparam [2:0] FMT_B       = 3'b011;
    localparam [2:0] FMT_U       = 3'b100;
    localparam [2:0] FMT_J       = 3'b101;
    localparam [2:0] FMT_UNKNOWN = 3'b111;

    // -----------------------------
    // Campos básicos
    // -----------------------------
    assign opcode = instr[6:0];
    assign rd     = instr[11:7];
    assign funct3 = instr[14:12];
    assign rs1    = instr[19:15];
    assign rs2    = instr[24:20];
    assign funct7 = instr[31:25];
    assign bit30  = instr[30];

    // -----------------------------
    // Clasificación por opcode
    // -----------------------------
    wire is_r_type = (opcode == 7'b0110011); // OP
    wire is_i_type = (opcode == 7'b0010011); // OP-IMM
    wire is_load   = (opcode == 7'b0000011); // LOAD
    wire is_store  = (opcode == 7'b0100011); // STORE
    wire is_branch = (opcode == 7'b1100011); // BRANCH
    wire is_jalr   = (opcode == 7'b1100111); // JALR
    wire is_system = (opcode == 7'b1110011); // SYSTEM
    wire is_lui    = (opcode == 7'b0110111); // LUI
    wire is_auipc  = (opcode == 7'b0010111); // AUIPC
    wire is_jal    = (opcode == 7'b1101111); // JAL

    // -----------------------------
    // Uso real de rs1 / rs2
    // -----------------------------
    assign rs1_used = is_r_type |
                      is_i_type |
                      is_load   |
                      is_store  |
                      is_branch |
                      is_jalr;

    assign rs2_used = is_r_type |
                      is_store  |
                      is_branch;

    // -----------------------------
    // Inmediatos RV32I
    // -----------------------------
    assign imm_i = {{20{instr[31]}}, instr[31:20]};

    assign imm_s = {{20{instr[31]}}, instr[31:25], instr[11:7]};

    assign imm_b = {{19{instr[31]}}, instr[31], instr[7],
                    instr[30:25], instr[11:8], 1'b0};

    assign imm_u = {instr[31:12], 12'b0};

    assign imm_j = {{11{instr[31]}}, instr[31],
                    instr[19:12], instr[20],
                    instr[30:21], 1'b0};

    // -----------------------------
    // Formato + detección opcode ilegal
    // -----------------------------
    always @(*) begin
        fmt            = FMT_UNKNOWN;
        illegal_opcode = 1'b0;

        case (opcode)
            7'b0110011: fmt = FMT_R; // OP

            7'b0010011: fmt = FMT_I; // OP-IMM
            7'b0000011: fmt = FMT_I; // LOAD
            7'b1100111: fmt = FMT_I; // JALR
            7'b1110011: fmt = FMT_I; // SYSTEM

            7'b0100011: fmt = FMT_S; // STORE
            7'b1100011: fmt = FMT_B; // BRANCH
            7'b0110111: fmt = FMT_U; // LUI
            7'b0010111: fmt = FMT_U; // AUIPC
            7'b1101111: fmt = FMT_J; // JAL

            default: begin
                fmt            = FMT_UNKNOWN;
                illegal_opcode = 1'b1;
            end
        endcase
    end

endmodule