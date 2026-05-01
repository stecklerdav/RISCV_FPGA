`timescale 1ns / 1ps

module branch (
    input  wire        ex_valid,
    input  wire [31:0] ex_pc,
    input  wire [31:0] ex_rs1_data,
    input  wire [31:0] ex_rs2_data,
    input  wire [31:0] ex_imm,
    input  wire        ex_branch_en,
    input  wire [2:0]  ex_branch_funct3,
    input  wire        ex_jal,
    input  wire        ex_jalr,

    output reg         branch_taken,

    output reg         pc_redirect_valid,
    output reg  [31:0] pc_redirect_target,

    output reg         instr_addr_misaligned,
    output reg  [31:0] instr_addr_misaligned_target,

    output reg         ex_exception_valid,
    output reg  [3:0]  ex_exception_cause,
    output reg  [31:0] ex_exception_tval,

    output reg         ex_flush_req,
    output reg         ex_control_flow_change
);

    // ------------------------------------------------------------
    // Branch funct3
    // ------------------------------------------------------------
    localparam [2:0] BR_BEQ  = 3'b000;
    localparam [2:0] BR_BNE  = 3'b001;
    localparam [2:0] BR_BLT  = 3'b100;
    localparam [2:0] BR_BGE  = 3'b101;
    localparam [2:0] BR_BLTU = 3'b110;
    localparam [2:0] BR_BGEU = 3'b111;

    // ------------------------------------------------------------
    // Exception causes
    // RISC-V mcause code:
    // 0 = Instruction address misaligned
    // Usamos 4'hF como NONE interno/debug.
    // ------------------------------------------------------------
    localparam [3:0] EXC_NONE                    = 4'hF;
    localparam [3:0] EXC_INSTR_ADDR_MISALIGNED  = 4'd0;

    wire signed [31:0] ex_rs1_data_s;
    wire signed [31:0] ex_rs2_data_s;

    wire eq;
    wire ne;
    wire lt;
    wire ge;
    wire ltu;
    wire geu;

    wire [31:0] jal_target;
    wire [31:0] jalr_target;
    wire [31:0] branch_target;

    reg         control_flow_req;
    reg  [31:0] control_flow_target;

    assign ex_rs1_data_s = ex_rs1_data;
    assign ex_rs2_data_s = ex_rs2_data;

    assign eq  = (ex_rs1_data == ex_rs2_data);
    assign ne  = (ex_rs1_data != ex_rs2_data);
    assign lt  = (ex_rs1_data_s <  ex_rs2_data_s);
    assign ge  = (ex_rs1_data_s >= ex_rs2_data_s);
    assign ltu = (ex_rs1_data <  ex_rs2_data);
    assign geu = (ex_rs1_data >= ex_rs2_data);

    assign jal_target    = ex_pc + ex_imm;
    assign jalr_target   = (ex_rs1_data + ex_imm) & 32'hFFFF_FFFE;
    assign branch_target = ex_pc + ex_imm;

    // ------------------------------------------------------------
    // Branch condition
    // ------------------------------------------------------------
    always @(*) begin
        branch_taken = 1'b0;

        if (ex_valid && ex_branch_en) begin
            case (ex_branch_funct3)
                BR_BEQ:  branch_taken = eq;
                BR_BNE:  branch_taken = ne;
                BR_BLT:  branch_taken = lt;
                BR_BGE:  branch_taken = ge;
                BR_BLTU: branch_taken = ltu;
                BR_BGEU: branch_taken = geu;
                default: branch_taken = 1'b0;
            endcase
        end
    end

    // ------------------------------------------------------------
    // Control-flow request
    // Priority:
    // JALR > JAL > taken branch
    // ------------------------------------------------------------
    always @(*) begin
        control_flow_req    = 1'b0;
        control_flow_target = 32'd0;

        if (ex_valid) begin
            if (ex_jalr) begin
                control_flow_req    = 1'b1;
                control_flow_target = jalr_target;
            end
            else if (ex_jal) begin
                control_flow_req    = 1'b1;
                control_flow_target = jal_target;
            end
            else if (ex_branch_en && branch_taken) begin
                control_flow_req    = 1'b1;
                control_flow_target = branch_target;
            end
        end
    end

    // ------------------------------------------------------------
    // Instruction address misaligned
    // Nota:
    // Para RV32I sin compressed extension, targets deben ser 4-byte aligned.
    // ------------------------------------------------------------
    always @(*) begin
        instr_addr_misaligned        = 1'b0;
        instr_addr_misaligned_target = 32'd0;

        if (control_flow_req && (control_flow_target[1:0] != 2'b00)) begin
            instr_addr_misaligned        = 1'b1;
            instr_addr_misaligned_target = control_flow_target;
        end
    end

    // ------------------------------------------------------------
    // Exception generation
    // ------------------------------------------------------------
    always @(*) begin
        ex_exception_valid = 1'b0;
        ex_exception_cause = EXC_NONE;
        ex_exception_tval  = 32'd0;

        if (instr_addr_misaligned) begin
            ex_exception_valid = 1'b1;
            ex_exception_cause = EXC_INSTR_ADDR_MISALIGNED;
            ex_exception_tval  = instr_addr_misaligned_target;
        end
    end

    // ------------------------------------------------------------
    // PC redirect
    // ------------------------------------------------------------
    always @(*) begin
        pc_redirect_valid  = 1'b0;
        pc_redirect_target = 32'd0;

        if (control_flow_req && !ex_exception_valid) begin
            pc_redirect_valid  = 1'b1;
            pc_redirect_target = control_flow_target;
        end
    end

    // ------------------------------------------------------------
    // Flush / control-flow info
    // ------------------------------------------------------------
    always @(*) begin
        ex_control_flow_change = control_flow_req;
        ex_flush_req           = ex_exception_valid | pc_redirect_valid;
    end

endmodule