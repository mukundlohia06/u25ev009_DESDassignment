`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.06.2026 18:25:19
// Design Name: 
// Module Name: demux_4x1
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


module demux_1x4(
    input din,
    input [1:0] sel,
    output reg y0,
    output reg y1,
    output reg y2,
    output reg y3
);

always @(*) begin

    y0 = 0;
    y1 = 0;
    y2 = 0;
    y3 = 0;

    case(sel)
        2'b00: y0 = din;
        2'b01: y1 = din;
        2'b10: y2 = din;
        2'b11: y3 = din;
    endcase

end

endmodule
