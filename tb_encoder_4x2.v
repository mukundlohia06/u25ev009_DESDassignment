`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.06.2026 13:15:57
// Design Name: 
// Module Name: tb_encoder_4x2
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


module tb_encoder_4x2;

reg [3:0] d;
wire [1:0] y;

encoder_4x2 dut (
    .d(d),
    .y(y)
);

initial begin
    $monitor("d=%b y=%b", d, y);

    d = 4'b0001; #10;
    d = 4'b0010; #10;
    d = 4'b0100; #10;
    d = 4'b1000; #10;

    $finish;
end

endmodule
