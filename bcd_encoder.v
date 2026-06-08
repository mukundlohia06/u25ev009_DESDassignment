`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.06.2026 11:30:38
// Design Name: 
// Module Name: bcd_encoder
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


module bcd_encoder(
    input  [9:0] d,
    output reg [3:0] bcd
);

always @(*) begin
    case(d)
        10'b0000000001: bcd = 4'b0000; // D0
        10'b0000000010: bcd = 4'b0001; // D1
        10'b0000000100: bcd = 4'b0010; // D2
        10'b0000001000: bcd = 4'b0011; // D3
        10'b0000010000: bcd = 4'b0100; // D4
        10'b0000100000: bcd = 4'b0101; // D5
        10'b0001000000: bcd = 4'b0110; // D6
        10'b0010000000: bcd = 4'b0111; // D7
        10'b0100000000: bcd = 4'b1000; // D8
        10'b1000000000: bcd = 4'b1001; // D9
        default:        bcd = 4'bxxxx;
    endcase
end

endmodule
