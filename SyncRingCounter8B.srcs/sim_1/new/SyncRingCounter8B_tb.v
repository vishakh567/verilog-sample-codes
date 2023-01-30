`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.02.2018 15:00:28
// Design Name: 
// Module Name: SyncRingCounter8B_tb
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


module SyncRingCounter8B_tb;
reg init,clk;
wire [7:0] counter;

SyncRingCounter8B s1(counter,init,clk);
initial 
begin
clk = 0;
forever #5 clk =~clk;
end

initial
begin
init = 1;
#20
init = 0;
#2580 $finish;
end
endmodule
