`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:18:09 10/06/2013 
// Design Name: 
// Module Name:    LogicUnit 
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
module LogicUnit(
		input[31:0] a,
		input[31:0] b,
		input logicfn,
		output[31:0] c
    );
assign c = logicfn?a^b:a&b;  //if logicfn = 1 xor else and


endmodule
