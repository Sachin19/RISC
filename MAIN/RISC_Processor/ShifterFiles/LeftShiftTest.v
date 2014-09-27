`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   08:21:12 10/06/2013
// Design Name:   LeftShifter
// Module Name:   C:/Users/ARPIT KUMAR/Dropbox/Coaa/Assignment 8/BarrelShifter/BS/LeftShiftTest.v
// Project Name:  BS
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: LeftShifter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module LeftShiftTest;

	// Inputs
	reg [31:0] in;
	reg [4:0] sha;

	// Outputs
	wire [31:0] out;

	// Instantiate the Unit Under Test (UUT)
	LeftShifter uut (
		.in(in), 
		.sha(sha), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		in = 0;
		sha = 0;

		// Wait 100 ns for global reset to finish
		#100;
      in=321;
		sha=7;
		// Add stimulus here

	end
      
endmodule

