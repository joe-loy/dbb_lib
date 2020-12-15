`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Joseph Loy
// 
// Create Date: 11/28/2020 06:57:19 PM
// Design Name: 
// Module Name: dbb_lib
// Project Name: dbb_lib
// Target Devices: Arty A7
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

module FullAdder(a, b, cin, cout, s) ;
    input a, b, cin ;
    output cout, s ;
    wire g, p ;
    wire cp ;
    HalfAdder ha1(a, b, g, p) ;   
    HalfAdder ha2(cin, p, cp, s) ;
    or o1(cout, g, cp) ;
endmodule