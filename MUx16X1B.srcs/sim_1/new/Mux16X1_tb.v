`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.02.2018 20:21:10
// Design Name: 
// Module Name: Mux16X1_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Mux16X1_tb;

reg [15:0] in;
reg [3:0] sel;
wire out;

Mux16X1B uut(.in(in),.sel(sel),.out(out));
initial 
begin

in = 16'b0101010101010101;
sel = 4'b1111;
#10
sel = 4'b1110;
#10
sel = 4'b1101;
#10
sel = 4'b0000;
end
endmodule
