`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:17:02 10/21/2013 
// Design Name: 
// Module Name:    shAmount 
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
module shAmount
(
		input[31:0] rt,
		input[4:0] sh,
		input RegImm,
		output[4:0] sha,
		output byp
);

assign byp = (|(rt[31:5]))&RegImm;
wire[4:0] rtW;
assign rtW=rt[4:0];
assign sha=(RegImm)?rtW:sh;

endmodule
