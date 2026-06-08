`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.06.2026 13:07:54
// Design Name: 
// Module Name: tb_bcd_encoder
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


module tb_bcd_encoder;

reg [9:0] d;
wire [3:0] bcd;

bcd_encoder dut (
    .d(d),
    .bcd(bcd)
);

initial begin
    $monitor("Time=%0t d=%b bcd=%b",
              $time, d, bcd);

    d = 10'b0000000001; #10; // 0
    d = 10'b0000000010; #10; // 1
    d = 10'b0000000100; #10; // 2
    d = 10'b0000001000; #10; // 3
    d = 10'b0000010000; #10; // 4
    d = 10'b0000100000; #10; // 5
    d = 10'b0001000000; #10; // 6
    d = 10'b0010000000; #10; // 7
    d = 10'b0100000000; #10; // 8
    d = 10'b1000000000; #10; // 9

    $finish;
end

endmodule