`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/15/2020 12:35:30 PM
// Design Name: 
// Module Name: Adder1
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


module Adder1(a, b, cin, cout, s);
    parameter n = 8;
    input [n-1:0] a, b ;
    input cin ;
    output [n-1:0] s ;
    output cout ;
    wire [n-1:0] s ;
    wire cout ;
    
    assign {cout, s} = a + b + cin ;
endmodule
