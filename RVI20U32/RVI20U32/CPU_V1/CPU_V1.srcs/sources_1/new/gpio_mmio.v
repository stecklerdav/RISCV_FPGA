module gpio_mmio (
    input  wire        clk,
    input  wire        rst,

    input  wire        mem_valid,
    input  wire        mem_we,
    input  wire [31:0] mem_addr,   // <-- OFFSET
    input  wire [31:0] mem_wdata,
    output reg  [31:0] mem_rdata,
    output wire        mem_ready,

    input  wire [31:0] gpio_in,
    output reg  [31:0] gpio_out,
    output reg  [31:0] gpio_dir
);

    localparam OFF_DATA = 32'h00;
    localparam OFF_DIR  = 32'h04;
    localparam OFF_SET  = 32'h08;
    localparam OFF_CLR  = 32'h0C;

    wire sel = mem_valid;
    wire [31:0] off = mem_addr;

    assign mem_ready = 1'b1;

    always @(*) begin
        mem_rdata = 32'h0;
        if (sel && !mem_we) begin
            case (off)
                OFF_DATA: mem_rdata = (gpio_out & gpio_dir) | (gpio_in & ~gpio_dir);
                OFF_DIR:  mem_rdata = gpio_dir;
                default:  mem_rdata = 32'h0;
            endcase
        end
    end

    always @(posedge clk) begin
        if (rst) begin
            gpio_out <= 32'h0;
            gpio_dir <= 32'h0;
        end else if (sel && mem_we) begin
            case (off)
                OFF_DATA: gpio_out <= mem_wdata;
                OFF_DIR:  gpio_dir <= mem_wdata;
                OFF_SET:  gpio_out <= gpio_out | mem_wdata;
                OFF_CLR:  gpio_out <= gpio_out & ~mem_wdata;
                default: ;
            endcase
        end
    end
endmodule