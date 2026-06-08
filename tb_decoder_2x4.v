`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.06.2026 13:15:57
// Design Name: 
// Module Name: tb_decoder_2x4
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


module tb_decoder_2x4;

reg  [1:0] a;
wire [3:0] y;


decoder_2x4 dut (
    .a(a),
    .y(y)
);

initial begin
    $display("Time\t a\t y");
    $monitor("%0t\t %b\t %b", $time, a, y);

    a = 2'b00; #10;
    a = 2'b01; #10;
    a = 2'b10; #10;
    a = 2'b11; #10;

    $finish;
end

endmodule
