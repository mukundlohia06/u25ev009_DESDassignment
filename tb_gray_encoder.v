`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.06.2026 13:10:53
// Design Name: 
// Module Name: tb_gray_encoder
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


module tb_gray_encoder;

reg  [3:0] bin;
wire [3:0] gray;

gray_encoder dut(
    .bin(bin),
    .gray(gray)
);

initial begin
    $monitor("Binary=%b Gray=%b", bin, gray);

    for(bin = 0; bin < 16; bin = bin + 1)
        #10;

    $finish;
end

endmodule
