`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/30/2020 09:01:40 PM
// Design Name: 
// Module Name: RevPriorityEncoder
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


module RevPriorityEncoder(r, b) ;
    parameter y = 6 ;
    parameter z = 3 ; 
    input [y-1:0] r ;
    output [z-1:0] b ;
    wire [y-1:0] = g ; 
    RArb #(y) a(r, g) ; 
    Enc83 
endmodule
