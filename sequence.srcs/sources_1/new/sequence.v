`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.03.2018 01:45:54
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
output out;
parameter s0=0, s1=1, s2=2, s3=3, s4=4;
parameter r0=0, r1=1, r2=2, r3=3, r4=4;
reg [3:0] state,stater;
reg out1,out2;

always@(posedge clk)
    begin
    case(state)
    s0: state <= din? s0:s1;
    s1: state <= din? s2:s1;
    s2: state <= din? s3:s1;
    s3: state <= din? s0:s4;
    default state <= s0;
    endcase
    
    case(stater)
        r0: stater <= din? r1:r0;
        r1: stater <= din? r1:r2;
        r2: stater <= din? r1:r3;
        r3: stater <= din? r4:r0;
        default stater <= r0;
        endcase
    end
    
always@(state)
    begin
    case(state)
    s0: out1 = 1'b0;
    s1: out1 = 1'b0;
    s2: out1 = 1'b0;
    s3: out1 = 1'b0;//din? 1'b0:1'b1;
    s4: begin
       out1 = 1'b1;
       state = s1;
        end
    endcase

    case(stater)
    r0: out2 = 1'b0;
    r1: out2 = 1'b0;
    r2: out2 = 1'b0;
    r3: out2 = 1'b0;
    r4: begin
        out2 = 1'b1;
        stater = r1;
        end
    endcase    
    
    end

or z(out,out1,out2);    
endmodule
