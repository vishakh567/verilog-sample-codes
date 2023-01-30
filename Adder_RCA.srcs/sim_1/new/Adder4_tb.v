`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.02.2018 22:28:07
// Design Name: 
// Module Name: Adder4_tb
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
    reg cin;
    wire [3:0]sum;
    wire cout;
    
    Adder4_RCA uut(sum,cout,a,b,cin);
    
    initial
    begin
    
    a[0] = 1; a[1] = 0; a[2] = 0; a[3] = 0;
    b[0] = 0; b[1] = 1; b[2] = 0; b[3] = 0;
    cin =0;
    #10
    a[0] = 1; a[1] = 1; a[2] = 0; a[3] = 0;
    b[0] = 0; b[1] = 0; b[2] = 1; b[3] = 0;
    cin =0;
    //a = 4'b0001;
    //b = 4'b0010;
   // cin = 0;
    //#10
   // a = 4'b0011;
    //b = 4'b0100;
    //cin = 0;
    end
    
endmodule
