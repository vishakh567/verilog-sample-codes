`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.02.2018 14:47:21
// Design Name: 
// Module Name: SyncRingCounter8B
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


module SyncRingCounter8B(counter,init,clk);
input init,clk;
output reg [7:0] counter;

always@(negedge clk)
begin
if(init)
    counter = 8'b10000000;
else
begin
    counter <= counter<<1 ;
    counter[0] <= counter[7];
end
end
endmodule
