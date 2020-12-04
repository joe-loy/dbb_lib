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

module PriorityEncoder83(r, b) ; 
    input [7:0] r ;
    output [2:0] b ;
    wire [7:0] g ;
    Arb #(8) a(r, g) ; 
    Enc83 e(g, b) ;
endmodule