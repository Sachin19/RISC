`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:28:36 10/22/2013
// Design Name:   Shifter
// Module Name:   C:/Users/ARPIT KUMAR/Dropbox/Coaa/Assignment 8/BarrelShifter/BS/Test1.v
// Project Name:  BS
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Shifter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Test1;

	// Inputs
	reg [4:0] sh;
	reg [31:0] rt;
	reg RegImm;
	reg [31:0] rs;
	reg leftRight;
	reg AL;

	// Outputs
	wire [31:0] out;

	// Instantiate the Unit Under Test (UUT)
	Shifter uut (
		.sh(sh), 
		.rt(rt), 
		.RegImm(RegImm), 
		.rs(rs), 
		.leftRight(leftRight), 
		.AL(AL), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		sh = 5;
		rt = 7;
		RegImm = 0;
		rs = -500;
		leftRight = 0;
		AL = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

