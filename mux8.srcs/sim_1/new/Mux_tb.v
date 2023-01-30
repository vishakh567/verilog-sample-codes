`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.02.2018 23:41:14
// Design Name: 
// Module Name: Mux_tb
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


module Mux_tb;
reg[7:0] d;
reg[2:0] select;
wire q;

mux8 uut(select,d,q);
initial 
begin
d[0]=0;d[1]=1;d[2]=0;d[3]=0;d[4]=1;d[5]=0;d[6]=0;d[7]=1;
select = 3'b000;
#10
d[1]=0;d[3]=1;d[5]=1;d[7]=0;
select = 3'b111;
end 
endmodule

