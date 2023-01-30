`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.02.2018 20:24:46
// Design Name: 
// Module Name: Mux16X1S4X1B
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


module Mux16X1S4X1B(in,sel,out);
input [15:0] in;
input [3:0] sel;
output out;
wire [3:0] t;
Mux4X1B m1(in[3:0],sel[1:0],t[0]);
Mux4X1B m2(in[7:4],sel[1:0],t[1]);
Mux4X1B m3(in[11:8],sel[1:0],t[2]);
Mux4X1B m4(in[15:12],sel[1:0],t[3]);
Mux4X1B m5(t,sel[3:2],out);
endmodule

