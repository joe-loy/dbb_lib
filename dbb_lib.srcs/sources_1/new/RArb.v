`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/03/2020 06:40:09 PM
// Design Name: 
// Module Name: RArb
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


module RArb(r, g) ;
    parameter n = 8 ;
    input [n-1:0] r ;
    output [n-1:0] g ;
    wire [n-1:0] c = {1'b1, (~r[n-1:1] & c[n-1:1])} ;
    wire [n-1:0] g = r & c ;
endmodule
