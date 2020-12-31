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
//////////////////////////////////////////////////////////////////////////////////


module FP_Add(ae, am, be, bm, ce, cm, ovf) ;
   parameter e  = 3 ;
   parameter m = 5 ;
   input [e-1:0] ae, be ; // input exponents
   input [m-1:0] am, bm ; // input mantissas 
   output [e-1:0] ce ; // result exponent
   output [m-1:0] cm ; // result mantissa
   output ovf ; // overflow indicator
   wire [e-1:0] ge, le, de, ce, sc ;
   wire [m-1:0] gm, lm, alm, cm, nm ;
   
   // input exponent logic
   wire agtb = (ae >= be) ; 
   assign ge = agtb ? ae : be ;
   assign le = agtb ? be : ae ;
   assign de = ge - le ;
   
   // select input mantissa
   assign gm = agtb ? am : bm ;
   assign lm = agtb ? bm : am ;
   
   // shift mantissa to align
   assign alm = lm >> de ;
   
   // add 
   wire [m:0] sm = gm + alm ;
   
   // find first one
   RevPriorityEncoder #(6,3) ff1(sm, sc) ; 
   
   // shit first 1 to MSB
   assign {nm, rnd} = sm << sc ; 
   
   // adjust exponent
   assign {ovf, ce} = ge - sc + 1 ; 
   
   // round result
   assign cm = nm + rnd ;
endmodule
