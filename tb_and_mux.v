`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.06.2026 13:00:37
// Design Name: 
// Module Name: tb_and_mux
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


module tb_and_mux;

reg A, B;
wire Y;


and_mux dut (
    .A(A),
    .B(B),
    .Y(Y)
);

initial begin
    $display("Time\tA\tB\tY");
    $monitor("%0t\t%b\t%b\t%b", $time, A, B, Y);


    A = 0; B = 0; #10;
    A = 0; B = 1; #10;
    A = 1; B = 0; #10;
    A = 1; B = 1; #10;

    $finish;
end

endmodule
