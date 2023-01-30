`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.02.2018 20:50:13
// Design Name: 
// Module Name: Adder4_CLA
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


module Adder4_CLA(sum,cout,X,Y,cin);
input[3:0]X,Y;
input cin;
output [3:0] sum;
output cout;
wire p0,p1,p2,p3,g0,g1,g2,g3,c1,c2,c3;

assign p0 = X[0]^Y[0];
assign p1 = X[1]^Y[1];
assign p2 = X[2]^Y[2];
assign p3 = X[3]^Y[3];

assign g0 = X[0]&Y[0];
assign g1 = X[1]&Y[1];
assign g2 = X[2]&Y[2];
assign g3 = X[3]&Y[3];

assign c1 = g0 |(p0&cin);
assign c2 = g1 | (p1 & g0)|(p1 & p0 & cin);
assign c3 = g2 | (p2&g1)|(p2&p1&g0)|(p2&p1&p0&cin);
assign cout = g3 |(p3&g2)|(p3&g2&g1)|(p3&p2&p1&g0)|(p3&p2&p1&p0&cin);

assign sum[0] = p0^cin;
assign sum[1] = p1^c1;
assign sum[2] = p2^c2;
assign sum[3] = p3^c3;

endmodule
