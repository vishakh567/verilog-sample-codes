`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.02.2018 23:56:20
// Design Name: 
// Module Name: Decoder_tb
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


module Decoder_tb;
reg [1:0] din;
wire [3:0] dout;

Decoder2to4 n1(din,dout);
initial
begin
din = 2'b00;
#10
din = 2'b01;
#10
din = 2'b10;
#10
din = 2'b11;
end
endmodule
