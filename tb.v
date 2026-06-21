`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.06.2026 00:33:34
// Design Name: 
// Module Name: tb
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


module tb;

reg [15:0] a, b;
reg cin;
wire [15:0] sum;
wire cout;

cla_16bit dut(
    .a(a),
    .b(b),
    .cin(cin),
    .sum(sum),
    .cout(cout)
);

initial begin
    a = 16'h1234;
    b = 16'h4321;
    cin = 0;
    #10;

    a = 16'hFFFF;
    b = 16'h0001;
    cin = 0;
    #10;

    a = 16'hAAAA;
    b = 16'h5555;
    cin = 1;
    #10;

    $finish;
end

initial
    $monitor("a=%h b=%h cin=%b sum=%h cout=%b",
             a, b, cin, sum, cout);

endmodule
