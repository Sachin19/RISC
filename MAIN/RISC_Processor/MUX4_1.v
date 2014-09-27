`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:10:13 10/27/2013 
// Design Name: 
// Module Name:    MUX4_1 
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
module MUX4_1_5b
(
	input[4:0] a,
	input[4:0] b,
	input[4:0] c,
	input[4:0] d,
	input[1:0] sel,
	output[4:0] out
);

assign out = (!sel[1]&!sel[0])?a:(!sel[1]&sel[0])?b:(sel[1]&!sel[0])?c:d;

endmodule
