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

module Muxb3(a2, a1, a0, sb, b) ;
    parameter k = 1 ;
    input[k-1:0] a0, a1, a2 ; // inputs
    input[2:0] sb ; // one hot select
    output[k-1:0] b;
    wire [3:0] s ;
    
    Dec #(2, 3) d(sb, b) ;
    Mux3 #(k) m(a2, a1, a0, s, b) ;
endmodule