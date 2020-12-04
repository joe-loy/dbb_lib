`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/03/2020 06:37:40 PM
// Design Name: 
// Module Name: Mux3
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


module Mux3(a2, a1, a0, s, b) ;
    parameter k = 1 ;
    input[k-1:0] a0, a1, a2 ; // inputs
    input[2:0] s ; // one hot select
    output[k-1:0] b;
    
    wire [k-1:0] b =  ({k{s[0]}} & a0) |
                      ({k{s[1]}} & a1) |
                      ({k{s[2]}} & a2) ; 
endmodule
