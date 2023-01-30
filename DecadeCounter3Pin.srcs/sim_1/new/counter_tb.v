`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.03.2018 11:55:32
// Design Name: 
// Module Name: counter_tb
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


module counter_tb;
reg clrAS,load,up,Bclk;
reg [3:0] din;
wire [3:0]counter;
wire TC;
wire act;
wire [6:0] z;

DecoderCounter3 dut(counter,clrAS,Bclk,load,din,up,TC,act,z);
initial 
begin
Bclk = 0;
load = 0;
clrAS = 0;
din = 4'b0000;
#10
load = 1;
up=1;
end

always #5 Bclk =~Bclk;
endmodule
