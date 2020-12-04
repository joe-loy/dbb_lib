`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Joseph Loy
// 
// Create Date: 11/28/2020 06:57:19 PM
// Design Name: 
// Module Name: dbb_lib
// Project Name: dbb_lib
// Target Devices: Arty A7
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

// dff: D flip-flop
// Parametrized width; default of 1
module dff #(parameter WIDTH = 1) (
    input clk,
    input [WIDTH-1:0] d,
    output reg [WIDTH-1:0] q
);

    always @(posedge clk) 
        q <= d;

endmodule

// dffr: D flip-flop with active high synchronous reset
// Parametrized width; default of 1
module dffr #(parameter WIDTH = 1) (
    input clk,
    input r,
    input [WIDTH-1:0] d,
    output reg [WIDTH-1:0] q
);

    always @ (posedge clk) 
        if (r) 
            q <= {WIDTH{1'b0}};
        else
            q <= d;

endmodule


// dffre: D flip-flop with active high enable and reset
// Parametrized width; default of 1
module dffre #(parameter WIDTH = 1) (
    input clk,
    input r,
    input en,
    input [WIDTH-1:0] d,
    output reg [WIDTH-1:0] q
);

    always @(posedge clk)
        if (r)
            q <= {WIDTH{1'b0}};
        else if (en)
            q <= d;
        else
            q <= q;

endmodule