`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.06.2026 00:33:17
// Design Name: 
// Module Name: cla_16bit
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


module cla_16bit(
    input  [15:0] a,
    input  [15:0] b,
    input         cin,
    output [15:0] sum,
    output        cout
);

wire c1, c2, c3;

cla_4bit CLA0(
    .a(a[3:0]),
    .b(b[3:0]),
    .cin(cin),
    .sum(sum[3:0]),
    .cout(c1)
);

cla_4bit CLA1(
    .a(a[7:4]),
    .b(b[7:4]),
    .cin(c1),
    .sum(sum[7:4]),
    .cout(c2)
);

cla_4bit CLA2(
    .a(a[11:8]),
    .b(b[11:8]),
    .cin(c2),
    .sum(sum[11:8]),
    .cout(c3)
);

cla_4bit CLA3(
    .a(a[15:12]),
    .b(b[15:12]),
    .cin(c3),
    .sum(sum[15:12]),
    .cout(cout)
);

endmodule
