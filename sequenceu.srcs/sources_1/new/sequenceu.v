`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.03.2018 11:55:29
// Design Name: 
// Module Name: sequenceu
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


module sequenceu(clk,din,out);
input clk,din;
output reg out;

parameter s0=0, s1=1, s2=2, s3=3, s4=4;
reg [2:0] state;

always@(posedge clk)
    begin
    case(state)
    s0: state <= din? s0:s1;
    s1: state <= din? s2:s1;
    s2: state <= din? s3:s1;
    s3: state <= din? s0:s4;
    default state <= s0;
    endcase
    end
    
    always@(state)
        begin
        case(state)
        s0: out = 1'b0;
        s1: out = 1'b0;
        s2: out = 1'b0;
        s3: out = 1'b0;//din? 1'b0:1'b1;
        s4: begin
           out = 1'b1;
           state = s1;
            end
        endcase
        end
endmodule
