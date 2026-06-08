`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.06.2026 11:17:02
// Design Name: 
// Module Name: decoder_3x8
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


module decoder_3x8(
    input  [2:0] a,
    output [7:0] y
);

assign y[0] = ~a[2] & ~a[1] & ~a[0];
assign y[1] = ~a[2] & ~a[1] &  a[0];
assign y[2] = ~a[2] &  a[1] & ~a[0];
assign y[3] = ~a[2] &  a[1] &  a[0];
assign y[4] =  a[2] & ~a[1] & ~a[0];
assign y[5] =  a[2] & ~a[1] &  a[0];
assign y[6] =  a[2] &  a[1] & ~a[0];
assign y[7] =  a[2] &  a[1] &  a[0];

endmodule
