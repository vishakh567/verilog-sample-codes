`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.03.2018 00:40:29
// Design Name: 
// Module Name: Rgyleds
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

Rgyleds1 DUT(clk,light);
initial
begin
clk = 0;
end

always #5 clk = ~clk;
endmodule

