`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/03/2020 06:38:47 PM
// Design Name: 
// Module Name: Enc42a
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


module Enc42a(a, b, c) ;
    input [3:0] a ;
    output [1:0] b ;
    output c ;
    wire [1:0] b = {a[3] | a[2], a[3] | a[1]} ;
    wire c = |a ;
endmodule
