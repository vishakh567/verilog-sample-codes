`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.03.2018 00:33:33
// Design Name: 
// Module Name: Rgyleds_tb
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


module Rgyleds_tb;
reg clk;
wire [2:0] light;

Rgleds DUT(clk,light);
initial
begin
clk = 0;
end

always@(clk)
clk = ~clk;
endmodule
