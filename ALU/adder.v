`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:34:06 10/06/2013 
// Design Name: 
// Module Name:    adder 
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
module adder(
		input[31:0] a,
		input[31:0] b,
		input addSub,
		output[31:0] c,
		output zFlag,
		output carryFlag,
		output signFlag,
		output overflowFlag
    );
wire[31:0] B;
wire cf;
assign B = addSub?(~b):b;
bit32Adder add(a,B,addSub,c,cf);
assign zFlag = &(~c);
assign carryFlag = cf;
assign signFlag = c[31];
assign overflowFlag = (a[31]&b[31]&(!signFlag))|((!a[31])&(!b[31])&signFlag);
endmodule
