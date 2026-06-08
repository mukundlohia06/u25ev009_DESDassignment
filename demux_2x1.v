`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.06.2026 18:25:19
// Design Name: 
// Module Name: demux_2x1
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


module demux_1x2(
    input din,
    input sel,
    output reg y0,
    output reg y1
);

always @(*) begin
    y0 = 0;
    y1 = 0;

    case(sel)
        1'b0: y0 = din;
        1'b1: y1 = din;
    endcase
end

endmodule
