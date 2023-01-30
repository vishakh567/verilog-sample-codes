`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.03.2018 15:19:48
// Design Name: 
// Module Name: DecoderCounter3
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

module DecoderCounter3(counter,clrAS,Bclk,load,din,up,TC,act,z);
input clrAS,load,up,Bclk;
input [3:0] din;
output reg [3:0]counter;
output reg TC;
output act;
output [6:0] z;
integer clkcounter; 
reg clk;

assign act = 0;
Seven_seg s1(counter,z);

always@ (posedge Bclk)
begin
if(clkcounter < 100000000)
         begin
         clkcounter = clkcounter+1;
         clk = 0;
         end
else //if(clkcounter >= 100000000)
        begin
        clk = 1;
        clkcounter = 0;
        end 
//else
    //begin
    //clk = 0;
   // clkcounter = 0;
  //  end
end

always@ (posedge clk,posedge clrAS)
begin
     
    if(clrAS)
        begin
            counter = 4'b0000;
            TC = 0;
        end
    else if (load == 0)
        begin
        counter = din;
        TC = 0;
        end
    else if((up==1) && (load ==1))
            begin
            counter = counter +1'b1;
            if(counter == 4'b1010)
                begin
                TC = 1;
                counter = 4'b0000;
                end
            else
                TC = 0;
            end
         else if ((up==0) && (load ==1))
            begin
            counter = counter -1'b1;
                if(counter == 4'b0000)
                    begin
                    TC = 1;
                    counter = 4'b1001;
                    end
                else
                    TC = 0; 
                 end 
            end



endmodule
