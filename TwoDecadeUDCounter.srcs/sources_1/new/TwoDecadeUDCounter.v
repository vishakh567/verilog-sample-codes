`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.03.2018 19:35:55
// Design Name: 
// Module Name: TwoDecadeUDCounter
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


module TwoDecadeUDCounter(counter1,counter2,clrAS,Bclk,load,din1,din2,up,TC1,TC2,act,z);
input clrAS,load,up,Bclk;
input [3:0] din1,din2;
output reg [3:0] counter1,counter2;
output reg TC1,TC2;
integer clkcounter; 
reg clk,status;
output reg [1:0]act;
output reg [6:0]z;
wire [6:0] z1,z2;

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
            counter1 = 4'b0;
            counter2 = 4'b0;
            TC1 = 0;
            TC2 = 0;
        end
    else if(clk)
        begin
            if (load == 0)
                begin
                    counter1 = din1;
                    counter2 = din2;
                    TC1 = 0;
                    TC2 = 0;
                end
 //1st decade counter               
            else if(up && TC2)
                begin
                    TC2 = 0;
                    counter2 = 4'b0;
                    counter1 = counter1 +1;
                    if(counter1 == 4'b1001)
                        begin
                        TC1 = 1;
                        counter1 = 4'b0;
                        end
                    else
                        TC1 = 0;
                end
            else if((up==0)&& TC2)
                begin
                    TC2 = 0;
                    counter2 = 4'b0;
                    counter1 = counter1 -1;
                    if(counter1 == 4'b0)
                        begin
                            TC1 = 1;
                            counter1 = 4'b1001;
                        end
                    else
                        TC1 = 0; 
                 end
//decade counter 2                  
            else if(up)
                 begin
                 counter2 = counter2 +1;
                 if(counter2 == 4'b1001)
                    begin
                    TC2 = 1;
                    counter2 = 4'b0;
                    end
                 else
                    TC2 = 0;
                 end
              
            else
                begin
                counter2 = counter2 -1;
                if(counter2 == 4'b0)
                       begin
                        TC2 = 1;
                        counter2 = 4'b1001;
                        end
                else
                    TC2 = 0; 
                end                 
        end
end

Seven_seg s1(counter1,z1);
Seven_seg s2(counter2,z2);

always@ (posedge Bclk)
    begin
    if(status)
        begin
        act = 2'b01;
        z = z1;
        status =0;
        end
    else
        begin
        act = 2'b10;
        z = z2;
        status =1;
        end           
    end

endmodule

