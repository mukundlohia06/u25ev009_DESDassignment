`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.06.2026 00:14:55
// Design Name: 
// Module Name: csa_block
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


module carry_select_block(
    input [3:0] a,
    input [3:0] b,
    input cin,
    output [3:0] sum,
    output cout
);

wire [3:0] sum0, sum1;
wire c0, c1;

// Calculate assuming Cin = 0
ripple_carry_adder_4bit RCA0(
    .a(a),
    .b(b),
    .cin(1'b0),
    .sum(sum0),
    .cout(c0)
);

// Calculate assuming Cin = 1
ripple_carry_adder_4bit RCA1(
    .a(a),
    .b(b),
    .cin(1'b1),
    .sum(sum1),
    .cout(c1)
);

// Select correct outputs
assign sum  = (cin) ? sum1 : sum0;
assign cout = (cin) ? c1 : c0;

endmodule
