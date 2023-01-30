`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.02.2018 20:39:44
// Design Name: 
// Module Name: Mux16X1S4X1SX1S
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


module Mux16X1S4X1SX1S(in,sel,out);
input [15:0] in;
input [3:0] sel;
output out;
wire [3:0] t;
Mux4X1S m1(in[3:0],sel[1:0],t[0]);
Mux4X1S m2(in[7:4],sel[1:0],t[1]);
Mux4X1S m3(in[11:8],sel[1:0],t[2]);
Mux4X1S m4(in[15:12],sel[1:0],t[3]);
Mux4X1S m5(t,sel[3:2],out);
endmodule
