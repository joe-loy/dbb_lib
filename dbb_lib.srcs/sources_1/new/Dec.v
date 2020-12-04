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


module  Dec(a, b) ;
    parameter n = 2 ;
    parameter m = 4 ;
    
    input [n-1:0] a ;
    output [m-1:0] b ; 
    
    wire [m-1:0] b = 1<<a ;
endmodule
