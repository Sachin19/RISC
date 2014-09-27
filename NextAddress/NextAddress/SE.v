`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:10:46 10/16/2013 
// Design Name: 
// Module Name:    SE 
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
module SE(
		input[15:0] in,
		output[29:0] out
    );
assign out = in[15]?{14'b11111111111111,in}:{14'b00000000000000,in};


endmodule
