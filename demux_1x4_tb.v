`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.06.2026 18:28:09
// Design Name: 
// Module Name: demux_1x4_tb
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

module demux_1x4_tb;

reg din;
reg [1:0] sel;

wire y0, y1, y2, y3;

demux_1x4 uut (
    .din(din),
    .sel(sel),
    .y0(y0),
    .y1(y1),
    .y2(y2),
    .y3(y3)
);

initial begin

    $display("din sel | y0 y1 y2 y3");
    $display("---------------------");

    din = 1;

    sel = 2'b00; #10;
    $display("%b   %b  |  %b  %b  %b  %b",
             din, sel, y0, y1, y2, y3);

    sel = 2'b01; #10;
    $display("%b   %b  |  %b  %b  %b  %b",
             din, sel, y0, y1, y2, y3);

    sel = 2'b10; #10;
    $display("%b   %b  |  %b  %b  %b  %b",
             din, sel, y0, y1, y2, y3);

    sel = 2'b11; #10;
    $display("%b   %b  |  %b  %b  %b  %b",
             din, sel, y0, y1, y2, y3);

    $finish;

end

endmodule