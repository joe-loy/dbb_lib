`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/15/2020 12:54:34 PM
// Design Name: 
// Module Name: AddSub2
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


module AddSub2(a, b, sub, s, ovf) ;
    parameter n = 8 ;
    input [n-1:0] a, b ;
    input sub ;
    output [n-1:0] s ;
    output ovf ;
    wire c1, c2 ;
    wire ovf = c1 ^ c2 ;
    
    assign {c1, s[n-2:0]} = a[n-2:0] + (b[n-2:0] ^ {n-1{sub}}) + sub ;
    
    assign {c2, s[n-1]} = a[n-1] + (b[n-1] ^ sub) + c1 ;
    
endmodule

