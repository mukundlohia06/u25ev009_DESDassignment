`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.06.2026 17:49:55
// Design Name: 
// Module Name: mux_4x1
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


module mux_4x1(
input a,b,c,d, input [1:0] sel, output reg y
    );
 
always@(*)
    begin
        case (sel)
             2'b00 : y = a;
             2'b01 : y = b;
             2'b10 : y = c;
             2'b11 : y = d;
            default: y = 1'b0;
         endcase
    end    
endmodule
