`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.01.2018 15:04:54
// Design Name: 
// Module Name: Adder_tb
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


module Adder_tb;
    reg [3:0] a,b;
    wire [3:0]sum;
    wire carry;
    
    Adder_4RCA uut(a,b,sum,carry);
    
    initial
    begin
    
    a[0] = 1; a[1] = 0; a[2] = 0; a[3] = 0;
    b[0] = 0; b[1] = 1; b[2] = 0; b[3] = 0;
    #10
    a[0] = 1; a[1] = 1; a[2] = 0; a[3] = 0;
    b[0] = 0; b[1] = 0; b[2] = 1; b[3] = 0;
   
    //a = 4'b0001;
    //b = 4'b0010;
   // cin = 0;
    //#10
   // a = 4'b0011;
    //b = 4'b0100;
    //cin = 0;
    end
    
endmodule
