`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.02.2018 19:01:39
// Design Name: 
// Module Name: DecadeCounter2
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

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.02.2018 15:50:58
// Design Name: 
// Module Name: DecadeCounter
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


module DecadeCounter(counter,clrAS,Bclk,load,din,up,TC);
input clrAS,load,up,Bclk;
input [3:0] din;
output reg [3:0]counter;
output reg TC;
integer clkcounter; 
reg clk;

always@ (posedge Bclk)
begin
if(clkcounter < 100000000)
         begin
         clkcounter = clkcounter+1;
         clk = 0;
         end
    else 
        begin
        clk = 1;
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

endmodule

