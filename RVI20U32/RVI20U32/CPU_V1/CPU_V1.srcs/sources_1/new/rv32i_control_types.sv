typedef struct packed {
    logic        rd_we;
    logic [1:0]  wb_sel;
    logic [3:0]  alu_op;
    logic [1:0]  opA_sel;
    logic [1:0]  opB_sel;
    logic [2:0]  imm_sel;
    logic        mem_re;
    logic        mem_we;
    logic [1:0]  lsu_size;
    logic        lsu_unsigned;
    logic        branch_en;
    logic [2:0]  branch_f3;
    logic        jal;
    logic        jalr;
} rv32i_ctrl_bus_t;