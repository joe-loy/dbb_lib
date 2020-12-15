`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/15/2020 12:45:10 PM
// Design Name: 
// Module Name: AddSub1
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


module AddSub1(a, b, sub, s, ovf) ;
    parameter n = 8 ;
    input [n-1:0] a, b ;
    input sub ;
    output [n-1:0] s ;
    output ovf ;
    wire c1, c2 ;
    wire ovf = c1 ^ c2 ;
    
    Adder1 #(n-1) ai(a[n-2], b[n-2:0] ^ {n-1{sub}}, sub, c1, s[n-2:0]) ;
    
    Adder1 #(n-1) as(a[n-1], b[n-1] ^ sub, c1, c2, s[n-1]) ;
endmodule
