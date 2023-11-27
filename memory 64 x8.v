`timescale 1ns / 1ps
module memory(
input clk,
input [7:0] din,
input rst,
input [5:0] addr,
input we,
output [7:0] dout
    );
    reg [7:0] mem [63:0];
    reg [7:0] temp;
    integer i=0;
    always@(posedge clk) 
            begin
            if(rst)
            begin
            for(i = 0; i < 64; i = i + 1)
            begin
            mem[i] <= 8'h00;
                    end
                    temp <= 8'h00;
                    end
                    else 
                    begin
                    if (we) 
                    begin
                    mem [addr] <= din;
                    end
                    else 
                    begin
                    temp <= mem[addr];
                    end
            end
            end
            assign dout = temp;
endmodule
