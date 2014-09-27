`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:02:22 10/06/2013 
// Design Name: 
// Module Name:    MUX31 
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
module MUX32
(
	input[31:0] A,
	input[31:0] B,
	output[31:0] C,
	input select
);

assign C=(select)?B:A;

endmodule
