`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.06.2026 13:15:57
// Design Name: 
// Module Name: tb_encoder_8x3
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


module tb_encoder_8x3;

reg  [7:0] d;
wire [2:0] y;


encoder_8x3 dut (
    .d(d),
    .y(y)
);

initial begin
    $display("Time\t\t d\t\t y");
    $monitor("%0t\t%b\t%b", $time, d, y);

    d = 8'b00000001; #10; // D0 -> 000
    d = 8'b00000010; #10; // D1 -> 001
    d = 8'b00000100; #10; // D2 -> 010
    d = 8'b00001000; #10; // D3 -> 011
    d = 8'b00010000; #10; // D4 -> 100
    d = 8'b00100000; #10; // D5 -> 101
    d = 8'b01000000; #10; // D6 -> 110
    d = 8'b10000000; #10; // D7 -> 111

    $finish;
end

endmodule
