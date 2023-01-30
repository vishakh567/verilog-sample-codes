`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.02.2018 20:19:12
// Design Name: 
// Module Name: Mux16X1B
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


module Mux16X1B(out,in,sel);

input [15:0] in;
input [3:0] sel;
output out;

assign out = in[sel];

endmodule
