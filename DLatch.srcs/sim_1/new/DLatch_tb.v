`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.02.2018 15:15:39
// Design Name: 
// Module Name: DLatch_tb
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


module DLatch_tb;
reg D,EN;
wire Q;

DLatch d1(D,EN,Q);
initial 
begin
D=1;EN=1;
#10
D=0;EN=0;
#10
EN=1;
end
endmodule
