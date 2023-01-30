`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.02.2018 22:49:36
// Design Name: 
// Module Name: PriorityEncoder8to3
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


module PriorityEncoder8to3(din,dout);

input [7:0]din;
output reg [2:0]dout;

always @ (din) 
begin
 if (din[7])
  dout = 3'b000;
 else if (din[6])
  dout = 3'b001;
 else if (din[5])
  dout = 3'b010;
 else if (din[4])
  dout = 3'b011;
 else if (din[3])
  dout = 3'b100;
 else if (din[2])
  dout = 3'b101;
 else if (din[1])
  dout = 3'b110;
 else if (din[0])
  dout = 3'b111;
 else
  dout = 3'bXXX;
end

endmodule

