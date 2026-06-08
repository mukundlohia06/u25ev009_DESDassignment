`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.06.2026 13:12:42
// Design Name: 
// Module Name: tb_priority_encoder
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


module tb_priority_encoder;

reg [3:0] d;
wire [1:0] y;
wire valid;

priority_encoder_4x2 dut(
    .d(d),
    .y(y),
    .valid(valid)
);

initial begin
    $monitor("d=%b y=%b valid=%b", d, y, valid);

    d=4'b0000; #10;
    d=4'b0001; #10;
    d=4'b0010; #10;
    d=4'b0100; #10;
    d=4'b1000; #10;
    d=4'b1101; #10; // D3 wins
    d=4'b0111; #10; // D2 wins

    $finish;
end

endmodule
