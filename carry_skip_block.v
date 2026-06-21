`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.06.2026 23:27:19
// Design Name: 
// Module Name: carry_skip_block
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


module carry_skip_block(
    input [3:0] a,
    input [3:0] b,
    input cin,
    output [3:0] sum,
    output cout
);

wire c1, c2, c3, c4;
wire p0, p1, p2, p3;
wire block_propagate;

full_adder FA0(a[0], b[0], cin, sum[0], c1);
full_adder FA1(a[1], b[1], c1,  sum[1], c2);
full_adder FA2(a[2], b[2], c2,  sum[2], c3);
full_adder FA3(a[3], b[3], c3,  sum[3], c4);

assign p0 = a[0] ^ b[0];
assign p1 = a[1] ^ b[1];
assign p2 = a[2] ^ b[2];
assign p3 = a[3] ^ b[3];

assign block_propagate = p0 & p1 & p2 & p3;

assign cout = block_propagate ? cin : c4;

endmodule
