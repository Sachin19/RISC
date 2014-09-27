`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:39:05 10/24/2013 
// Design Name: 
// Module Name:    Reg32 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Reg32
(
	input[29:0] in,
	output reg[29:0] out,
	input clk
);
always@(negedge clk)
out<=in;

endmodule
