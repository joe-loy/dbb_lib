`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/17/2020 08:23:09 PM
// Design Name: 
// Module Name: Divide
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

module mul4(a, b, p) ;
    input [3:0] a, b ;
    output [7:0] p ;
    
    wire [3:0] pp0 = a & {4{b[0]}} ;
    wire [3:0] pp1 = a & {4{b[1]}} ;
    wire [3:0] pp2 = a & {4{b[2]}} ;
    wire [3:0] pp3 = a & {4{b[3]}} ;
    
    wire cout1, cout2, cout3 ;
    wire [3:0] s1, s2, s3 ;
    
    Adder1 #(4) a1(pp1, {1'b0, pp0[3:1]}, 1'b0, cout1, s1) ;
    Adder1 #(4) a2(pp2, {cout1, s1[3:1]}, 1'b0, cout2, s2) ;
    Adder1 #(4) a3(pp3, {cout2, s2[3:1]}, 1'b0, cout3, s3) ;

    wire [7:0] p = {cout3, s3, s2[0], s1[0], pp0[0]} ;

endmodule