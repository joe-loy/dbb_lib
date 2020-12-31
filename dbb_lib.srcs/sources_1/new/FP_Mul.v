`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/30/2020 08:23:10 PM
// Design Name: 
// Module Name: FP_Mul
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
////////////////////////////////////////////////////////////////////////////////// 1 2 3 4


module FP_Mul(ae, am, be, bm, ce, cm, ovf) ;
   parameter e = 3 ;
   input [e-1:0] ae, be ; // input exponents
   input [3:0] 	 am, bm ; // input mantissas
   output [e-1:0] ce ; // result exponent
   output [3:0]   cm ; // result mantissa
   output 	  ovf ; // overflow indicator
   wire [7:0] 	  pm ;
   wire [3:0] 	  sm ;
   wire [4:0] 	  xm ;
   wire 	  rnd ;
   wire [1:0] 	  oe ;

   // multiply am and bm
   Mul4 mult(am, bm, pm) ;

   // Shift/Round : if MSB is one select bits seven:four else six:three
   assign sm = pm[7] ? pm[7:4] : pm[6:3] ;
   assign rnd = pm[7] ? pm[3] : pm[2] ;

   // increment
   assign xm = sm + rnd ;

   // Final shift/round
   assign cm = xm[4] ? xm[4:1] : xm[3:0] ;

   // Exponent Add
   assign {oe, ce} = ae + be + (pm[7] | xm[4]) - 1 ;
   assign ovf = |oe ;
endmodule
