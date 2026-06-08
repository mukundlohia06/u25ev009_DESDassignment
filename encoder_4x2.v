`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.06.2026 11:17:02
// Design Name: 
// Module Name: encoder_4x2
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


module encoder_4x2(
    input  [3:0] d,
    output [1:0] y
);

assign y[1] = d[2] | d[3];
assign y[0] = d[1] | d[3];

endmodule