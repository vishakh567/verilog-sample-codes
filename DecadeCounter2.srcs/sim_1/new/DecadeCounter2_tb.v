`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.03.2018 14:59:33
// Design Name: 
// Module Name: DecadeCounter2_tb
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


module DecadeCounter2_tb;
reg clrAS,load,up,Bclk;
reg [3:0] din;
wire [3:0]counter;
wire TC;

DecadeCounter DUT(counter,clrAS,Bclk,load,din,up,TC);
initial 
begin
Bclk = 0;
forever #10 Bclk = ~Bclk;
end

initial
begin
#10
clrAS = 1;
#10
clrAS = 0;
load = 0;
din = 4'b0;
up = 1;
#10
load = 1;
//#200
//load = 0;
//din = 4'b1001;
//#10
//load = 1;
//up = 0;

#2000 $finish;
end

endmodule
