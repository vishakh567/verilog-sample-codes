`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.02.2018 16:16:13
// Design Name: 
// Module Name: DFlipFlopASCP
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

module DFlipFlopASCP(D,Q,clk,Qbar,clr,preset);
input D,clk,clr,preset;
output reg Q,Qbar;

always@(posedge clk,clr,preset)
begin
if(clr)
 begin
  Q=0;
  Qbar = 1;
 end
 else if(preset)
 begin
   Q=1;
   Qbar = 0;
  end
else if(clk)
 begin
  Q=D;
  Qbar=~Q;
 end
end
endmodule

//always@(clr,preset)
//begin
//if(clr)
//    begin
//        Q=0;
//        Qbar = ~Q;
//    end

//else if(preset)
//    begin
//        Q=1;
//        Qbar=~Q;
//    end
//end

//always@(posedge clk)
//begin
//if(clr)
// begin
//  Q=0;
//  Qbar = 1;
// end
//else if(preset)
// begin
// Q=1;
// Qbar = 0;
 //end
//else
//  begin
//  Q=1;
//  Qbar=~Q;
// end
//end
//endmodule
