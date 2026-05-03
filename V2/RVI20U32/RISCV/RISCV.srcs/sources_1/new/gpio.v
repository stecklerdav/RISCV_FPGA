`timescale 1ns/1ps

module gpio (
    input         clk,
    input         rst,

    input         valid,
    input         we,
    input  [31:0] addr,
    input  [31:0] wdata,
    input  [3:0]  be,

    output reg [31:0] rdata,
    output            ready,

    // señales GPIO separadas, aptas para Block Design
    output reg [7:0] gpio_out,
    input      [7:0] gpio_in,
    output reg [7:0] gpio_dir
);

    assign ready = 1'b1;

    wire [3:0] reg_addr;
    assign reg_addr = addr[3:0];

    // WRITE
    always @(posedge clk) begin
        if (rst) begin
            gpio_out <= 8'b0000_0000;
            gpio_dir <= 8'b0000_0000;
        end else begin
            if (valid && we) begin
                case (reg_addr)
                    4'h0: begin // GPIO_OUT
                        if (be[0])
                            gpio_out <= wdata[7:0];
                    end

                    4'h8: begin // GPIO_DIR
                        if (be[0])
                            gpio_dir <= wdata[7:0];
                    end

                    default: begin
                    end
                endcase
            end
        end
    end

    // READ
    always @(*) begin
        rdata = 32'h0000_0000;

        if (valid && !we) begin
            case (reg_addr)
                4'h0: rdata = {24'b0, gpio_out}; // GPIO_OUT
                4'h4: rdata = {24'b0, gpio_in};  // GPIO_IN
                4'h8: rdata = {24'b0, gpio_dir}; // GPIO_DIR
                default: rdata = 32'h0000_0000;
            endcase
        end
    end

endmodule