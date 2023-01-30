`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.02.2018 21:49:25
// Design Name: 
// Module Name: Adder4_tb
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


module Adder4_tb;
reg [3:0]X,Y;
reg cin;
wire [3:0] sum;
wire cout;

Adder4_CLA a1(sum,cout,X,Y,cin);
initial
begin
X = 4'b0001;
Y = 4'b0010;
cin = 0;
#10
X = 4'b0011;
Y = 4'b0011;
cin = 0;
end
endmodule
