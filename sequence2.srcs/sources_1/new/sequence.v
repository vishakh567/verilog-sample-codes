`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.03.2018 14:28:49
// Design Name: 
// Module Name: sequence
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


module sequence(clk,din,out);
input clk,din;
output reg out;
parameter s0=0,s1=1,s2=2,s3=3,s4=4,s5=5,s6=6;
reg [2:0] state;

always@(posedge clk)
    begin
    case(state)
    s0: state <= din? s1:s0;
    s1: state <= din? s1:s2;
    s2: state <= din? s3:s0;
    s3: state <= din? s1:s4;
    s4: state <= din? s5:s0;
    s5: state <= din? s1:s6;
    default state <= s0;
    endcase
    end
    
always@(state)
    begin
    case(state)
    s0: out = 1'b0;
    s1: out = 1'b0;
    s2: out = 1'b0;
    s3: out = 1'b0;
    s4: out = 1'b0;
    s5: out = 1'b0;
    s6: begin
        out = 1'b1;
        state = s4;
        end
    default out = 0;
    endcase
    end         
endmodule
