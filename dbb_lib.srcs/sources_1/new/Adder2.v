`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/15/2020 12:38:43 PM
// Design Name: 
// Module Name: Adder2
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


module Adder2(a, b, cin, cout, s);
    parameter n = 8;
    input [n-1:0] a, b ;
    input cin ;
    output [n-1:0] s ;
    output cout ;
    
    wire [n-1:0] p = a ^ b ;
    wire [n-1:0] g = a & b ;
    wire [n:0] c = {g | (p & c[n-1:0]), cin} ;
    wire [n-1:0] s = p ^ c[n-1:0] ;
    wire cout = c[n] ;
endmodule
