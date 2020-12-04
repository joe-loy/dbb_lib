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

module Mux6a(a5, a4, a3, a2, a1, a0, s, b) ;
    parameter k = 1 ;
    input [k-1:0] a0, a1, a2, a3, a4, a5  ; // inputs
    input [5:0] s ; // one hot select
    output [k-1:0] b;
    wire [k-1:0] ba, bb ;
    wire [k-1:0] b = ba | bb ;
    
    Dec #(2, 3) d(sb, b) ;
    Mux3 #(k) ma(a2, a1, a0, s[2:0], ba) ;
    Mux3 #(k) mb(a5, a4, a3, s[5:3], bb) ;
endmodule