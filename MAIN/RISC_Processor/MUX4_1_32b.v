
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:00:52 10/27/2013 
// Design Name: 
// Module Name:    MUX4_1_32b 
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
module MUX4_1_32b
(
	input[31:0] a,
	input[31:0] b,
	input[31:0] c,
	input[31:0] d,
	input[1:0] sel,
	output[31:0] out
);

assign out = (!sel[1]&!sel[0])?a:(!sel[1]&sel[0])?b:(sel[1]&!sel[0])?c:d;

endmodule
