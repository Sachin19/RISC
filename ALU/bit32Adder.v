`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:57:56 10/24/2013 
// Design Name: 
// Module Name:    bit32Adder 
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
module bit32Adder(
		input[31:0] a,
		input[31:0] b,
		input cin,
		output[31:0] c,
		output cout
    );
assign {cout,c} = a+b+cin;


endmodule
