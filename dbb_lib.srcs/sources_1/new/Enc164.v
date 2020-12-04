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

module Enc164(a, b) ;
    input [15:0] a ;
    output [3:0] b ;
    wire [3:0] b ;
    wire [7:0] c ; 
    wire [3:0] d ; 
    
    Enc42a e0(a[3:0], c[1:0], d[0]) ;
    Enc42a e1(a[7:4], c[3:2], d[1]) ;
    Enc42a e2(a[11:8], c[5:4], d[2]) ;
    Enc42a e3(a[15:12], c[7:6], d[3]) ;
    
    Enc42 e4(d[3:0], b[3:2]) ;
    
    assign b[1] = c[1] | c[3] | c[5] | c[7] ;
    assign b[0] = c[0] | c[2] | c[4] | c[6] ;
    
endmodule