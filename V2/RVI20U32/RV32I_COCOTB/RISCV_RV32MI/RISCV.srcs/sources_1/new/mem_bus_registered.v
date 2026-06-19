module mem_bus_registered #(
    parameter [31:0] RAM_BASE   = 32'h8000_1000,
    parameter [31:0] RAM_SIZE   = 32'h0000_2000,

    parameter [31:0] GPIO_BASE  = 32'h8000_3000,
    parameter [31:0] GPIO_SIZE  = 32'h0000_0010,

    parameter [31:0] UART_BASE  = 32'h8000_3010,
    parameter [31:0] UART_SIZE  = 32'h0000_0010,

    parameter [31:0] TIMER_BASE = 32'h8000_3020,
    parameter [31:0] TIMER_SIZE = 32'h0000_0010,

    parameter [31:0] TIMEOUT_CYCLES = 32'd100000
)(
    input  wire        clk,
    input  wire        rst,

    input  wire        mem_req_valid,
    output wire        mem_req_ready,
    input  wire        mem_req_we,
    input  wire [31:0] mem_req_addr,
    input  wire [31:0] mem_req_wdata,
    input  wire [3:0]  mem_req_be,

    output reg         mem_rsp_valid,
    output reg  [31:0] mem_rsp_rdata,
    output reg         mem_rsp_error,

    output reg         ram_valid,
    output reg         ram_we,
    output reg  [31:0] ram_addr,
    output reg  [31:0] ram_wdata,
    output reg  [3:0]  ram_be,
    input  wire [31:0] ram_rdata,
    input  wire        ram_ready,

    output reg         gpio_valid,
    output reg         gpio_we,
    output reg  [31:0] gpio_addr,
    output reg  [31:0] gpio_wdata,
    output reg  [3:0]  gpio_be,
    input  wire [31:0] gpio_rdata,
    input  wire        gpio_ready,

    output reg         uart_valid,
    output reg         uart_we,
    output reg  [31:0] uart_addr,
    output reg  [31:0] uart_wdata,
    output reg  [3:0]  uart_be,
    input  wire [31:0] uart_rdata,
    input  wire        uart_ready,

    output reg         timer_valid,
    output reg         timer_we,
    output reg  [31:0] timer_addr,
    output reg  [31:0] timer_wdata,
    output reg  [3:0]  timer_be,
    input  wire [31:0] timer_rdata,
    input  wire        timer_ready,
    input  wire        timer_error
);

    localparam SEL_NONE  = 3'd0;
    localparam SEL_RAM   = 3'd1;
    localparam SEL_GPIO  = 3'd2;
    localparam SEL_UART  = 3'd3;
    localparam SEL_TIMER = 3'd4;

    reg        busy_q;
    reg [2:0]  sel_q;
    reg        we_q;
    reg [31:0] addr_q;
    reg [31:0] wdata_q;
    reg [3:0]  be_q;
    reg [31:0] timeout_cnt_q;

    wire timeout_hit;

    wire addr_is_ram;
    wire addr_is_gpio;
    wire addr_is_uart;
    wire addr_is_timer;

    assign timeout_hit = busy_q && (timeout_cnt_q >= TIMEOUT_CYCLES);

    assign addr_is_ram   = (mem_req_addr >= RAM_BASE)   && (mem_req_addr < (RAM_BASE   + RAM_SIZE));
    assign addr_is_gpio  = (mem_req_addr >= GPIO_BASE)  && (mem_req_addr < (GPIO_BASE  + GPIO_SIZE));
    assign addr_is_uart  = (mem_req_addr >= UART_BASE)  && (mem_req_addr < (UART_BASE  + UART_SIZE));
    assign addr_is_timer = (mem_req_addr >= TIMER_BASE) && (mem_req_addr < (TIMER_BASE + TIMER_SIZE));

    assign mem_req_ready = ~busy_q;

    always @(*) begin
        ram_valid   = 1'b0;
        ram_we      = 1'b0;
        ram_addr    = addr_q;
        ram_wdata   = wdata_q;
        ram_be      = be_q;

        gpio_valid  = 1'b0;
        gpio_we     = 1'b0;
        gpio_addr   = addr_q;
        gpio_wdata  = wdata_q;
        gpio_be     = be_q;

        uart_valid  = 1'b0;
        uart_we     = 1'b0;
        uart_addr   = addr_q;
        uart_wdata  = wdata_q;
        uart_be     = be_q;

        timer_valid = 1'b0;
        timer_we    = 1'b0;
        timer_addr  = addr_q;
        timer_wdata = wdata_q;
        timer_be    = be_q;

        case (sel_q)
            SEL_RAM: begin
                ram_valid = busy_q;
                ram_we    = we_q;
            end

            SEL_GPIO: begin
                gpio_valid = busy_q;
                gpio_we    = we_q;
            end

            SEL_UART: begin
                uart_valid = busy_q;
                uart_we    = we_q;
            end

            SEL_TIMER: begin
                timer_valid = busy_q;
                timer_we    = we_q;
            end

            default: begin
            end
        endcase
    end

    always @(posedge clk) begin
        if (rst) begin
            busy_q        <= 1'b0;
            sel_q         <= SEL_NONE;
            we_q          <= 1'b0;
            addr_q        <= 32'h0000_0000;
            wdata_q       <= 32'h0000_0000;
            be_q          <= 4'h0;
            timeout_cnt_q <= 32'd0;

            mem_rsp_valid <= 1'b0;
            mem_rsp_rdata <= 32'h0000_0000;
            mem_rsp_error <= 1'b0;
        end else begin
            mem_rsp_valid <= 1'b0;
            mem_rsp_error <= 1'b0;

            if (!busy_q) begin
                timeout_cnt_q <= 32'd0;

                if (mem_req_valid) begin
                    busy_q  <= 1'b1;
                    we_q    <= mem_req_we;
                    addr_q  <= mem_req_addr;
                    wdata_q <= mem_req_wdata;
                    be_q    <= mem_req_be;

                    if (addr_is_ram) begin
                        sel_q <= SEL_RAM;
                    end else if (addr_is_gpio) begin
                        sel_q <= SEL_GPIO;
                    end else if (addr_is_uart) begin
                        sel_q <= SEL_UART;
                    end else if (addr_is_timer) begin
                        sel_q <= SEL_TIMER;
                    end else begin
                        sel_q <= SEL_NONE;
                    end
                end
            end else begin
                if (!timeout_hit) begin
                    timeout_cnt_q <= timeout_cnt_q + 32'd1;
                end

                case (sel_q)
                    SEL_RAM: begin
                        if (ram_ready) begin
                            mem_rsp_valid <= 1'b1;
                            mem_rsp_rdata <= ram_rdata;
                            mem_rsp_error <= 1'b0;
                            busy_q        <= 1'b0;
                            sel_q         <= SEL_NONE;
                            timeout_cnt_q <= 32'd0;
                        end else if (timeout_hit) begin
                            mem_rsp_valid <= 1'b1;
                            mem_rsp_rdata <= 32'hBAD0_0001;
                            mem_rsp_error <= 1'b1;
                            busy_q        <= 1'b0;
                            sel_q         <= SEL_NONE;
                            timeout_cnt_q <= 32'd0;
                        end
                    end

                    SEL_GPIO: begin
                        if (gpio_ready) begin
                            mem_rsp_valid <= 1'b1;
                            mem_rsp_rdata <= gpio_rdata;
                            mem_rsp_error <= 1'b0;
                            busy_q        <= 1'b0;
                            sel_q         <= SEL_NONE;
                            timeout_cnt_q <= 32'd0;
                        end else if (timeout_hit) begin
                            mem_rsp_valid <= 1'b1;
                            mem_rsp_rdata <= 32'hBAD0_0002;
                            mem_rsp_error <= 1'b1;
                            busy_q        <= 1'b0;
                            sel_q         <= SEL_NONE;
                            timeout_cnt_q <= 32'd0;
                        end
                    end

                    SEL_UART: begin
                        if (uart_ready) begin
                            mem_rsp_valid <= 1'b1;
                            mem_rsp_rdata <= uart_rdata;
                            mem_rsp_error <= 1'b0;
                            busy_q        <= 1'b0;
                            sel_q         <= SEL_NONE;
                            timeout_cnt_q <= 32'd0;
                        end else if (timeout_hit) begin
                            mem_rsp_valid <= 1'b1;
                            mem_rsp_rdata <= 32'hBAD0_0003;
                            mem_rsp_error <= 1'b1;
                            busy_q        <= 1'b0;
                            sel_q         <= SEL_NONE;
                            timeout_cnt_q <= 32'd0;
                        end
                    end

                    SEL_TIMER: begin
                        if (timer_ready) begin
                            mem_rsp_valid <= 1'b1;
                            mem_rsp_rdata <= timer_rdata;
                            mem_rsp_error <= timer_error;
                            busy_q        <= 1'b0;
                            sel_q         <= SEL_NONE;
                            timeout_cnt_q <= 32'd0;
                        end else if (timeout_hit) begin
                            mem_rsp_valid <= 1'b1;
                            mem_rsp_rdata <= 32'hBAD0_0004;
                            mem_rsp_error <= 1'b1;
                            busy_q        <= 1'b0;
                            sel_q         <= SEL_NONE;
                            timeout_cnt_q <= 32'd0;
                        end
                    end

                    default: begin
                        mem_rsp_valid <= 1'b1;
                        mem_rsp_rdata <= 32'h0FF0_00FF;
                        mem_rsp_error <= 1'b1;
                        busy_q        <= 1'b0;
                        sel_q         <= SEL_NONE;
                        timeout_cnt_q <= 32'd0;
                    end
                endcase
            end
        end
    end

endmodule