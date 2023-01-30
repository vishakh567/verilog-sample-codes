`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.02.2018 15:17:32
// Design Name: 
// Module Name: ShiftRegASL4B
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


module ShiftRegASL4B(sreg,din,clk,mode);
input clk,mode;
input [3:0] din;
output reg [3:0] sreg;

always@(din)
begin
sreg = din;
end

always@(negedge clk)
begin
if(mode)
    sreg = sreg<<1;
else
    sreg = sreg>>1;
end
endmodule
