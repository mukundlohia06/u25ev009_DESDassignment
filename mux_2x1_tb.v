`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.06.2026 17:45:12
// Design Name: 
// Module Name: mux_2x1_tb
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


module mux_2x1_tb;

reg a, b, sel;
wire y;

// Instantiate the DUT
mux_2x1 dut (
    .a(a),
    .b(b),
    .sel(sel),
    .y(y)
);

initial begin

    $display("a b sel | y");
    $display("----------");

    a = 0; b = 0; sel = 0; #10;
    $display("%b %b  %b  | %b", a, b, sel, y);

    a = 0; b = 1; sel = 0; #10;
    $display("%b %b  %b  | %b", a, b, sel, y);

    a = 1; b = 0; sel = 0; #10;
    $display("%b %b  %b  | %b", a, b, sel, y);

    a = 1; b = 1; sel = 0; #10;
    $display("%b %b  %b  | %b", a, b, sel, y);

    a = 0; b = 0; sel = 1; #10;
    $display("%b %b  %b  | %b", a, b, sel, y);

    a = 0; b = 1; sel = 1; #10;
    $display("%b %b  %b  | %b", a, b, sel, y);

    a = 1; b = 0; sel = 1; #10;
    $display("%b %b  %b  | %b", a, b, sel, y);

    a = 1; b = 1; sel = 1; #10;
    $display("%b %b  %b  | %b", a, b, sel, y);

    $finish;

end

endmodule
