`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.03.2018 12:01:42
// Design Name: 
// Module Name: sequenceu_tb
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


module sequenceu_tb;
reg clk,din;
wire out;

sequenceu DUT(clk,din,out);
initial
begin
clk = 0;
din = 0;
#25
din = 1;
#10;
din = 1;
#10
din = 0;
#10;
din = 1;
#10
din = 0;
#10;
din = 0;
#10
din = 1;
end

always #5 clk =~clk;

endmodule
