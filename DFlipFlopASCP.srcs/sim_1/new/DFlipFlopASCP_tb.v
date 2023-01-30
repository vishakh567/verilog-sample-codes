`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.02.2018 16:45:33
// Design Name: 
// Module Name: DFlipFlopASCP_tb
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


module DFlipFlopASCP_tb;
reg D,clk,clr,preset;
wire Q,Qbar;

DFlipFlopASCP d1(D,Q,clk,Qbar,clr,preset);
initial 
begin
clk = 0;
forever #5 clk = ~clk;
end

initial
begin
D = 0;
clr = 0;
preset = 0;
#20
D = 1;
#10
D = 0;
#10
D = 1;
#6
clr = 1; 
#3
clr = 0;
D = 1;
#6
preset = 1;
#3
preset = 0;
D = 0;
end
endmodule
