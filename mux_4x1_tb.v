`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.06.2026 17:56:37
// Design Name: 
// Module Name: mux_4x1_tb
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


module mux_4x1_tb;

reg a, b, c, d;
reg [1:0] sel;
wire y;

// Instantiate the DUT
mux_4x1 dut (
    .a(a),
    .b(b),
    .c(c),
    .d(d),
    .sel(sel),
    .y(y)
);

initial begin

    $display("a b c d sel | y");
    $display("----------------");

    // Set input values
    a = 0; b = 1; c = 0; d = 1;

    sel = 2'b00; #10;
    $display("%b %b %b %b  %b  | %b", a, b, c, d, sel, y);

    sel = 2'b01; #10;
    $display("%b %b %b %b  %b  | %b", a, b, c, d, sel, y);

    sel = 2'b10; #10;
    $display("%b %b %b %b  %b  | %b", a, b, c, d, sel, y);

    sel = 2'b11; #10;
    $display("%b %b %b %b  %b  | %b", a, b, c, d, sel, y);

    // Change inputs and test again
    a = 1; b = 0; c = 1; d = 0;

    sel = 2'b00; #10;
    $display("%b %b %b %b  %b  | %b", a, b, c, d, sel, y);

    sel = 2'b01; #10;
    $display("%b %b %b %b  %b  | %b", a, b, c, d, sel, y);

    sel = 2'b10; #10;
    $display("%b %b %b %b  %b  | %b", a, b, c, d, sel, y);

    sel = 2'b11; #10;
    $display("%b %b %b %b  %b  | %b", a, b, c, d, sel, y);

    $finish;

end

endmodule
