`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.03.2018 01:26:31
// Design Name: 
// Module Name: parity_tb
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


module parity_tb;
reg clk,din;
wire out;

parity DUT(clk,din,out);
initial 
begin
clk = 0;
#10
din = 1'b1;
#10
din = 1'b0;
#10
din = 1'b1;
#10
din = 1'b1;
end

always #5 clk = ~clk;

endmodule
