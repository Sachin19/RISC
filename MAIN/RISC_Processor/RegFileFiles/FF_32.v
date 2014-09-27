`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:11:21 10/07/2013 
// Design Name: 
// Module Name:    FF_32 
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
module FF_32
(
	input[31:0] in,
	input en,
	output reg[31:0] out,
	input clk
);

always@(posedge clk)
begin
	if(en)
		out<=in;
	else
		out<=out;
end

endmodule
