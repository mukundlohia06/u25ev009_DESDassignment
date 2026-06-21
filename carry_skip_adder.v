`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.06.2026 19:07:38
// Design Name: 
// Module Name: carry_skip_adder
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


module carry_skip_adder(
    input [15:0] a,
    input [15:0] b,
    input cin,
    output [15:0] sum,
    output cout
);

wire c1, c2, c3;

carry_skip_block B0(
    .a(a[3:0]),
    .b(b[3:0]),
    .cin(cin),
    .sum(sum[3:0]),
    .cout(c1)
);

carry_skip_block B1(
    .a(a[7:4]),
    .b(b[7:4]),
    .cin(c1),
    .sum(sum[7:4]),
    .cout(c2)
);

carry_skip_block B2(
    .a(a[11:8]),
    .b(b[11:8]),
    .cin(c2),
    .sum(sum[11:8]),
    .cout(c3)
);

carry_skip_block B3(
    .a(a[15:12]),
    .b(b[15:12]),
    .cin(c3),
    .sum(sum[15:12]),
    .cout(cout)
);

endmodule
