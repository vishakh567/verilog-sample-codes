`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.02.2018 23:13:42
// Design Name: 
// Module Name: priority_tb
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


module priority_tb;
reg [7:0] din;
wire [2:0] dout;

PriorityEncoder8to3 uut(din,dout);
initial
begin 
din = 8'b11100000;
#10
din = 8'b01111111;
#10
din = 8'b00101111;
end
endmodule
