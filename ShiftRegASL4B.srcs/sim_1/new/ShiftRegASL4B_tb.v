`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.02.2018 15:27:12
// Design Name: 
// Module Name: ShiftRegASL4B_tb
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


module ShiftRegASL4B_tb;
reg clk,mode;
reg [3:0] din;
wire [3:0] sreg;

ShiftRegASL4B r1(sreg,din,clk,mode);
initial
begin
clk = 0;
forever #5 clk = ~clk;
end

initial
begin
din = 4'b1000;
mode = 0; //shift left
#100
mode = 1;
#100
#5
din = 4'b0001;
#300 $finish;
end
endmodule
