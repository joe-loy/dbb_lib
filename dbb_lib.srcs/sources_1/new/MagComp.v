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

module MagComp(a, b, gt) ;
    parameter k = 8 ;
    input [k-1:0] a, b; 
    output gt ;
    wire [k-1:0] eqi = a ~^ b ;
    wire [k-1:0] gti = a & ~b ; 
    wire [k:0] gtb = {((eqi[k-1:0] & gtb[k-1:0]) | gti[k-1:0]), 1'b0} ;
    wire gt = gtb[k] ;
endmodule