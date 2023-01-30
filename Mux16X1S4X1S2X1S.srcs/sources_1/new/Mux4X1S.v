`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.02.2018 20:41:23
// Design Name: 
// Module Name: Mux4X1S
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


module Mux4X1S(in,sel,out);
input [3:0]in;
input [1:0]sel;
output out;
wire [1:0]t;

Mux2X1S m1(in[1:0],sel[0],t[0]);
Mux2X1S m2(in[3:2],sel[0],t[1]);
Mux2X1S m3(t,sel[1],out);

endmodule
