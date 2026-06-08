`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.06.2026 18:28:09
// Design Name: 
// Module Name: demux_1x2_tb
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


module demux_1x2_tb;

reg din, sel;
wire y0, y1;

demux_1x2 uut (
    .din(din),
    .sel(sel),
    .y0(y0),
    .y1(y1)
);

initial begin

    $display("din sel | y0 y1");
    $display("----------------");

    din = 0; sel = 0; #10;
    $display("%b   %b  | %b  %b", din, sel, y0, y1);

    din = 1; sel = 0; #10;
    $display("%b   %b  | %b  %b", din, sel, y0, y1);

    din = 0; sel = 1; #10;
    $display("%b   %b  | %b  %b", din, sel, y0, y1);

    din = 1; sel = 1; #10;
    $display("%b   %b  | %b  %b", din, sel, y0, y1);

    $finish;

end

endmodule
