`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.01.2018 16:31:25
// Design Name: 
// Module Name: Seven_seg
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


module seven_seg(sum,z);
    input [3:0]sum;
    output [6:0]z;
    reg [6:0]z;
    
    
always @(sum)
        case (sum)
        4'b0000 :          //Hexadecimal 1
        z = 7'b0000001;
        4'b0001 :            //Hexadecimal 0
        z = 7'b1001111;
        4'b0010 :          // Hexadecimal 2
        z = 7'b0010010; 
        4'b0011 :         // Hexadecimal 3
        z = 7'b0000110;
        4'b0100 :        // Hexadecimal 4
        z = 7'b1001100;
        4'b0101 :        // Hexadecimal 5
        z = 7'b0100100;  
        4'b0110 :        // Hexadecimal 6
        z = 7'b0100000;
        4'b0111 :        // Hexadecimal 7
        z = 7'b0001111;
        4'b1000 :              //Hexadecimal 8
        z = 7'b0000000;
        4'b1001 :            //Hexadecimal 9
        z = 7'b0000100 ;
        4'b1010 :          // Hexadecimal A
        z = 7'b0001000 ; 
        4'b1011 :         // Hexadecimal B
        z = 7'b1100000;
        4'b1100 :        // Hexadecimal C
        z = 7'b0110001 ;
        4'b1101 :        // Hexadecimal D
        z = 7'b1000010 ;
        4'b1110 :        // Hexadecimal E
        z = 7'b0110000 ;
        4'b1111 :        // Hexadecimal F
        z = 7'b0111000 ;
        endcase
        
 endmodule