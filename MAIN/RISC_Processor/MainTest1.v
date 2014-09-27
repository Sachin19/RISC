`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:45:51 10/29/2013
// Design Name:   Processor
// Module Name:   C:/Users/ARPIT KUMAR/Dropbox/Coaa/Assignment 8/MAIN/RISC_Processor/MainTest1.v
// Project Name:  RISC_Processor
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Processor
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module MainTest1;

	// Inputs
	reg reset;
	reg clk;

	// Outputs
	wire [5:0] op;
	wire [5:0] fn;

	// Instantiate the Unit Under Test (UUT)
	Processor uut (
		.reset(reset), 
		.clk(clk), 
		.op(op), 
		.fn(fn)
	);

	initial begin
		// Initialize Inputs
		reset = 1;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#250;
      reset=0;
		// Add stimulus here

	end
	always #100 clk=~clk;
      
endmodule

