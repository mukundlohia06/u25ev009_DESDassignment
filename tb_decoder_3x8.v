`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.06.2026 13:15:57
// Design Name: 
// Module Name: tb_decoder_3x8
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


module tb_decoder_3x8;

reg [2:0] a;
wire [7:0] y;

decoder_3x8 dut(
    .a(a),
    .y(y)
);

initial begin
    $monitor("a=%b y=%b", a, y);

    a=3'b000; #10;
    a=3'b001; #10;
    a=3'b010; #10;
    a=3'b011; #10;
    a=3'b100; #10;
    a=3'b101; #10;
    a=3'b110; #10;
    a=3'b111; #10;

    $finish;
end

endmodule