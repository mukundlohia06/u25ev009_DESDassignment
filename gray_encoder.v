`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.06.2026 11:28:34
// Design Name: 
// Module Name: gray_encoder
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


module gray_encoder(
    input  [3:0] bin,
    output [3:0] gray
);

assign gray[3] = bin[3];
assign gray[2] = bin[3] ^ bin[2];
assign gray[1] = bin[2] ^ bin[1];
assign gray[0] = bin[1] ^ bin[0];

endmodule