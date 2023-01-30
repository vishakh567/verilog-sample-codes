`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.02.2018 15:25:03
// Design Name: 
// Module Name: DFlipFlopSC
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


module DFlipFlopSC(D,Q,clk,Qbar,clr);
input D,clk,clr;
output reg Q,Qbar;

always@(posedge clk)
begin
if(clr)
 begin
  Q=0;
  Qbar = 1;
 end
else
 begin
  Q=D;
  Qbar=~Q;
 end
end
endmodule
