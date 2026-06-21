`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.06.2026 00:33:17
// Design Name: 
// Module Name: cla_4bit
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


module cla_4bit(
    input  [3:0] a,
    input  [3:0] b,
    input        cin,
    output [3:0] sum,
    output       cout
);

wire [3:0] p, g;
wire c1, c2, c3;

// Propagate and Generate signals
assign p = a ^ b;
assign g = a & b;

// Carry equations
assign c1 = g[0] | (p[0] & cin);

assign c2 = g[1] |
            (p[1] & g[0]) |
            (p[1] & p[0] & cin);

assign c3 = g[2] |
            (p[2] & g[1]) |
            (p[2] & p[1] & g[0]) |
            (p[2] & p[1] & p[0] & cin);

assign cout = g[3] |
             (p[3] & g[2]) |
             (p[3] & p[2] & g[1]) |
             (p[3] & p[2] & p[1] & g[0]) |
             (p[3] & p[2] & p[1] & p[0] & cin);

// Sum equations
assign sum[0] = p[0] ^ cin;
assign sum[1] = p[1] ^ c1;
assign sum[2] = p[2] ^ c2;
assign sum[3] = p[3] ^ c3;

endmodule
