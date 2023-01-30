`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.03.2018 21:12:43
// Design Name: 
// Module Name: DecadeCounter3
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


module DecadeCounter3(counter,clrAS,Bclk,load,din,up,TC,act,z);
input clrAS,load,up,Bclk;
input [3:0] din;
output reg [3:0]counter;
output reg TC;
output act;
output [6:0] z;
integer clkcounter; 
reg clk;

assign act = 0;

always@ (posedge Bclk)
begin
if(clkcounter < 100000000)
         begin
         clkcounter = clkcounter+1;
         clk = 0;
         end
else if(clkcounter >= 100000000)
        begin
        clk = 1;
        clkcounter = 0;
        end 
else
    begin
    clk = 0;
    clkcounter = 0;
    end
end

always@ (clk,clrAS)
begin
     
    if(clrAS)
        begin
            counter = 4'b0;
            TC = 0;
        end
    else if(clk)
        begin
            if (load == 0)
                begin
                    counter = din;
                    TC = 0;
                end
            else if(up)
                begin
                    counter = counter +1;
                    if(counter == 4'b1001)
                        begin
                        TC = 1;
                        counter = 4'b0;
                        end
                    else
                        TC = 0;
                end
            else
                begin
                    counter = counter -1;
                    if(counter == 4'b0)
                        begin
                            TC = 1;
                            counter = 4'b1001;
                        end
                    else
                        TC = 0; 
                 end 
        end
end

Seven_seg s1(counter,z);

endmodule