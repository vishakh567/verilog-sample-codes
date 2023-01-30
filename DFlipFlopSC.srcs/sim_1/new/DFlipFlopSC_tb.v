`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.02.2018 15:30:06
// Design Name: 
// Module Name: DFlipFlopSC_tb
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


module DFlipFlopSC_tb;
reg D,clk,clr;
wire Q,Qbar;

DFlipFlopSC d1(D,Q,clk,Qbar,clr);
initial
begin
clk = 0;
forever #10 clk = ~clk;
end

initial 
begin
#10
D=0;clr =0;
#20
D=1;
#20
D=0;
#20
D=1;
#15
clr=1;
#20
#30 $finish;
end
endmodule
