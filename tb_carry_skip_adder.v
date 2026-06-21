`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.06.2026 23:29:28
// Design Name: 
// Module Name: tb_carry_skip_adder
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


module tb_carry_skip_adder;

reg [15:0] a, b;
reg cin;
wire [15:0] sum;
wire cout;

carry_skip_adder dut(
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

initial begin
    $monitor("a=%h b=%h cin=%b sum=%h cout=%b",
              a, b, cin, sum, cout);
end

endmodule
