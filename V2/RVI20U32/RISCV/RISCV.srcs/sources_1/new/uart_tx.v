module uart_tx #(
    parameter CLK_FREQ = 100_000_000,
    parameter BAUD     = 115200
)(
    input  wire        clk,
    input  wire        rst,

    // Interfaz directa desde MMIO
    input  wire        valid,
    input  wire        we,
    input  wire [31:0] addr,
    input  wire [31:0] wdata,
    input  wire [3:0]  be,

    output reg  [31:0] rdata,
    output wire        ready,

    // Pin UART
    output reg         tx,

    // Estado opcional hacia debug/MMIO
    output wire        tx_busy,
    output wire        tx_ready
);

    localparam integer CLKS_PER_BIT = CLK_FREQ / BAUD;

    // Registros internos UART TX
    reg [31:0] clk_cnt;
    reg [3:0]  bit_idx;
    reg [9:0]  shifter;
    reg        busy;

    // Direcciones internas relativas
    localparam [3:0] UART_TXDATA = 4'h0; // write
    localparam [3:0] UART_STATUS = 4'h4; // read

    assign tx_busy  = busy;
    assign tx_ready = ~busy;
    assign ready    = 1'b1;

    wire write_txdata;
    assign write_txdata = valid &&
                          we &&
                          (addr[3:0] == UART_TXDATA) &&
                          be[0] &&
                          tx_ready;

    // Lectura de registros
    always @(*) begin
        case (addr[3:0])
            UART_TXDATA: rdata = 32'h0000_0000;
            UART_STATUS: rdata = {30'b0, tx_busy, tx_ready};
            default:     rdata = 32'h0000_0000;
        endcase
    end

    // Transmisor UART
    always @(posedge clk) begin
        if (rst) begin
            tx       <= 1'b1;     // UART idle = 1
            busy     <= 1'b0;
            clk_cnt  <= 0;
            bit_idx  <= 0;
            shifter  <= 10'b1111111111;
        end else begin

            if (!busy) begin
                tx <= 1'b1;

                if (write_txdata) begin
                    // frame: start bit 0, 8 data bits, stop bit 1
                    shifter <= {1'b1, wdata[7:0], 1'b0};
                    busy    <= 1'b1;
                    clk_cnt <= 0;
                    bit_idx <= 0;
                end

            end else begin
                tx <= shifter[0];

                if (clk_cnt == CLKS_PER_BIT - 1) begin
                    clk_cnt <= 0;
                    shifter <= {1'b1, shifter[9:1]};

                    if (bit_idx == 9) begin
                        busy    <= 1'b0;
                        bit_idx <= 0;
                        tx      <= 1'b1;
                    end else begin
                        bit_idx <= bit_idx + 1'b1;
                    end
                end else begin
                    clk_cnt <= clk_cnt + 1'b1;
                end
            end
        end
    end

endmodule