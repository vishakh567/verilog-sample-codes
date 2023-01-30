`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.03.2018 00:41:26
// Design Name: 
// Module Name: Rgyleds1
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


module Rgyleds1(clk,light);
input clk;
output reg [2:0]light;
parameter red = 3'b100, green = 3'b010, yellow = 3'b001;
parameter s0 =0, s1 = 1, s2 = 2;
reg [1:0]state;

always@(posedge clk)
begin
    case(state)
    s0: state <= s1;
    s1: state <= s2;
    s2: state <= s0;
    default: state <= s0;
    endcase
end

always@(state)
begin
    case(state)
    s0: light = red;
    s1: light = green;
    s2: light = yellow;
    default: light = red;
    endcase
end    
endmodule
