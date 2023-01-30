`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.02.2018 20:42:59
// Design Name: 
// Module Name: Mux2X1S
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


module Mux2X1S(in,sel,out);
input [1:0]in;
input sel;
output out;
wire t1,t2,t3;

not n1(t1,sel);
and a1(t2,t1,in[0]);
and a2(t3,sel,in[1]);
or  o1(out,t2,t3);

endmodule
