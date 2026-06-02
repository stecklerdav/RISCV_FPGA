`timescale 1ns/1ps

module tb_top;

reg clk;
reg rst;

wire [31:0] dmem_addr;
wire [3:0]  dmem_be;
wire        dmem_valid;
wire [31:0] dmem_wdata;
wire        dmem_we;

wire [31:0] ex_store_data;
wire [1:0]  forward_store;
wire [31:0] mem_store_data;
wire [4:0]  ex_rs2;
wire        wb_valid;
wire        wb_rd_we;

wire [7:0]  gpio_dir_0;
reg  [7:0]  gpio_in;
wire [7:0]  gpio_out;

wire [31:0] id_instr_out;
wire [31:0] id_pc_out;
wire        id_valid_out;

wire        mem_req_ready;
wire        mem_rsp_valid;

wire [31:0] pc_debug_last_predict_0;
wire [31:0] pc_debug_last_priv_redirect_0;
wire [31:0] pc_debug_last_redirect_0;
wire        pc_debug_predict_pulse_0;
wire        pc_debug_priv_redirect_pulse_0;
wire        pc_debug_redirect_pulse_0;

reg  [31:0] priv_redirect_target_0;
reg         priv_redirect_valid_0;

wire [31:0] rd_wdata;
wire [31:0] rdata;

wire ready;
wire ready_1;
wire ready_2;
wire ready_3;

wire regfile_we;
reg  timer_ready;
wire tx;
wire [4:0] wb_rd;

initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial begin
    rst = 1;
    gpio_in = 8'h3C;
    priv_redirect_valid_0 = 1'b0;
    priv_redirect_target_0 = 32'h00000000;
    timer_ready = 1'b1;

    repeat (10) @(posedge clk);
    rst = 0;

    #5000;
    $finish;
end

RISCV_COCOTB_wrapper dut (
    .clk(clk),
    .rst(rst),

    .dmem_addr(dmem_addr),
    .dmem_be(dmem_be),
    .dmem_valid(dmem_valid),
    .dmem_wdata(dmem_wdata),
    .dmem_we(dmem_we),

    .ex_store_data(ex_store_data),
    .forward_store(forward_store),
    .mem_store_data(mem_store_data),
    .ex_rs2(ex_rs2),
    .wb_valid(wb_valid),
    .wb_rd_we(wb_rd_we),

    .gpio_dir_0(gpio_dir_0),
    .gpio_in(gpio_in),
    .gpio_out(gpio_out),

    .id_instr_out(id_instr_out),
    .id_pc_out(id_pc_out),
    .id_valid_out(id_valid_out),

    .mem_req_ready(mem_req_ready),
    .mem_rsp_valid(mem_rsp_valid),

    .pc_debug_last_predict_0(pc_debug_last_predict_0),
    .pc_debug_last_priv_redirect_0(pc_debug_last_priv_redirect_0),
    .pc_debug_last_redirect_0(pc_debug_last_redirect_0),
    .pc_debug_predict_pulse_0(pc_debug_predict_pulse_0),
    .pc_debug_priv_redirect_pulse_0(pc_debug_priv_redirect_pulse_0),
    .pc_debug_redirect_pulse_0(pc_debug_redirect_pulse_0),

    .priv_redirect_target_0(priv_redirect_target_0),
    .priv_redirect_valid_0(priv_redirect_valid_0),

    .rd_wdata(rd_wdata),
    .rdata(rdata),

    .ready(ready),
    .ready_1(ready_1),
    .ready_2(ready_2),
    .ready_3(ready_3),

    .regfile_we(regfile_we),
    .timer_ready(timer_ready),
    .tx(tx),
    .wb_rd(wb_rd)
);

endmodule