`timescale 1ns/1ps

module load_extender (
    input  wire [31:0] mem_data,
    input  wire [1:0]  size,           // 00=byte, 01=half, 10=word
    input  wire        unsigned_load,  // 1=LBU/LHU, 0=LB/LH
    input  wire [1:0]  addr_offset,    // addr[1:0]

    output reg  [31:0] load_data
);

    reg [7:0]  selected_byte;
    reg [15:0] selected_half;

    always @(*) begin
        selected_byte = mem_data[7:0];
        selected_half = mem_data[15:0];
        load_data     = mem_data;

        case (addr_offset)
            2'b00: selected_byte = mem_data[7:0];
            2'b01: selected_byte = mem_data[15:8];
            2'b10: selected_byte = mem_data[23:16];
            2'b11: selected_byte = mem_data[31:24];
            default: selected_byte = mem_data[7:0];
        endcase

        case (addr_offset[1])
            1'b0: selected_half = mem_data[15:0];
            1'b1: selected_half = mem_data[31:16];
            default: selected_half = mem_data[15:0];
        endcase

        case (size)
            2'b00: begin
                // LB / LBU
                if (unsigned_load)
                    load_data = {24'b0, selected_byte};
                else
                    load_data = {{24{selected_byte[7]}}, selected_byte};
            end

            2'b01: begin
                // LH / LHU
                if (unsigned_load)
                    load_data = {16'b0, selected_half};
                else
                    load_data = {{16{selected_half[15]}}, selected_half};
            end

            2'b10: begin
                // LW
                load_data = mem_data;
            end

            default: begin
                load_data = mem_data;
            end
        endcase
    end

endmodule