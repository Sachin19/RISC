`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:31:58 10/06/2013 
// Design Name: 
// Module Name:    Shifter 
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
module Shifter
(
	input[4:0] sh,
	input[31:0] rt,
	input RegImm,
	input[31:0] rs,
	input leftRight,
	input AL,
	output[31:0] out
);
wire[4:0] sha;
wire[31:0] lsout, rsaout, rslout, zerOut, out1, out2;
wire bypass;

assign zerOut=32'b00000000000000000000000000000000;
LeftShifter ls(.in(rs),.out(lsout),.sha(sha));
RightShifterArith rsa(.in(rs),.out(rsaout),.sha(sha));
RightShifterLog rsl(.in(rs),.out(rslout),.sha(sha));
shAmount shamt(.rt(rt),.sh(sh),.RegImm(RegImm),.sha(sha),.byp(bypass));
assign out1=(AL)?rslout:rsaout;
assign out2=(leftRight)?lsout:out1;
assign out=(bypass)?zerOut:out2;
endmodule
