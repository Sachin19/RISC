`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:07:40 10/27/2013 
// Design Name: 
// Module Name:    SignExtender 
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
module SignExtender
(
	input[15:0] in,
	output[31:0] out
);
assign out[15:0]=in;
genvar i;
generate
	for(i=16;i<32;i=i+1) begin: loop
		assign out[i]=in[15];
	end
endgenerate

endmodule
