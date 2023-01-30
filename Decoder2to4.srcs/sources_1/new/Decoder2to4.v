`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.02.2018 23:52:18
// Design Name: 
// Module Name: Decoder2to4
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


module Decoder2to4(din ,dout);
input [1:0] din;
output reg [3:0] dout;

always @ (din) 
begin
 case (din)
  2'b00 : dout = 4'b1000;
  2'b01 : dout = 4'b0100;
  2'b10 : dout = 4'b0010;
  default : dout = 4'b0000;
 endcase
end

endmodule
