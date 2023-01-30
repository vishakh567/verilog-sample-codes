`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.01.2018 14:22:12
// Design Name: 
// Module Name: FulladderArch
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


module FulladderArch(a,b,c,sum,carry);
    input a,b,c;
    output sum,carry;
    assign sum = a^b^c;
    assign carry = (a&b)|(b&c)|(c&a);
endmodule
