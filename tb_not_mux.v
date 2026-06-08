`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.06.2026 12:58:29
// Design Name: 
// Module Name: tb_not_mux
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


module tb_not_mux;

reg A;
wire Y;

not_mux dut (
    .A(A),
    .Y(Y)
);

initial begin
    $display("Time\tA\tY");
    $monitor("%0t\t%b\t%b", $time, A, Y);

    A = 0; #10;
    A = 1; #10;

    $finish;
end

endmodule