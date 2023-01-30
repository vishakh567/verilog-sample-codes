`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.02.2018 22:15:50
// Design Name: 
// Module Name: Adder4_RCA
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


module Adder4_RCA(sum,cout,a,b,cin);
input [3:0] a,b;
input cin;
output [3:0] sum;
output cout;
wire [2:0] t;

FulladderArch F0(a[0],b[0],cin,sum[0],t[0]);
FulladderArch F1(a[1],b[1],t[0],sum[1],t[1]);
FulladderArch F2(a[2],b[2],t[1],sum[2],t[2]);
FulladderArch F3(a[3],b[3],t[2],sum[3],cout);

endmodule
