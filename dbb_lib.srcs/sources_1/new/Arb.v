`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/03/2020 06:42:05 PM
// Design Name: 
// Module Name: Dec
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


module Arb(r, g) ; 
    parameter n = 8 ;
    input [n-1:0] r ;
    output [n-1:0] g ;
    wire [n-1:0] c = {(~r[n-2:0] & c[n-2:0]), 1'b1} ;
    wire [n-1:0] g = r & c ; 
endmodule