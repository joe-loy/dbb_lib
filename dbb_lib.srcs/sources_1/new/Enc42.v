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

module Enc42(a, b) ;
    input [3:0] a ;    
    output [1:0] b ;
    wire [1:0] b = {a[3] | a[2], a[3] | a[1]} ;
endmodule