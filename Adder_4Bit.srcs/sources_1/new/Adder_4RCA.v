`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.01.2018 14:24:49
// Design Name: 
// Module Name: Adder_4RCA
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


module Adder_4RCA(a,b,sum,carry,z,act);
    input [3:0] a,b;
    //input cin;
    output [3:0] sum;
    output carry;
    output [6:0]z;
    output [7:0]act;
    wire [2:0] t;
    wire temp;
    parameter n=7;
    genvar i;
    
    
    assign temp = 0;
    
    FulladderArch F0(a[0],b[0],temp,sum[0],t[0]);
    FulladderArch F1(a[1],b[1],t[0],sum[1],t[1]);
    FulladderArch F2(a[2],b[2],t[1],sum[2],t[2]);
    FulladderArch F3(a[3],b[3],t[2],sum[3],carry);
    
    assign act[7] = 0;
    
    begin
        for (i=0;i<n;i=i+1)
            begin
            assign act[i] = 1;
            end
    end
    
    seven_seg s1(sum,z);
    //FulladderArch F0(.a(0)(a),.b(0)(b),.cin(c),.sum(0)(sum),.t(0)(carry));
    //FulladderArch F1(.a(1)(a),.b(1)(b),.t(0)(c),.sum(1)(sum),.t(1)(carry));
    //FulladderArch F2(.a(2)(a),.b(2)(b),.t(1)(c),.sum(2)(sum),.t(2)(carry));
    //FulladderArch F3(.a(3)(a),.b(3)(b),.t(2)(c),.sum(3)(sum),.carry(carry));

endmodule
