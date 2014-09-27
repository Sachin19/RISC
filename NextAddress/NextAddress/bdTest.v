`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:45:25 10/24/2013
// Design Name:   BranchDecider
// Module Name:   C:/Users/in dia/Dropbox/Coaa/Assignment 8/NextAddress/NextAddress/bdTest.v
// Project Name:  NextAddress
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: BranchDecider
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module bdTest;

	// Inputs
	reg zFlag;
	reg carryFlag;
	reg signFlag;
	reg overflowFlag;
	reg [2:0] brType;

	// Outputs
	wire brTrue;

	// Instantiate the Unit Under Test (UUT)
	BranchDecider uut (
		.zFlag(zFlag), 
		.carryFlag(carryFlag), 
		.signFlag(signFlag), 
		.overflowFlag(overflowFlag), 
		.brType(brType), 
		.brTrue(brTrue)
	);

	initial begin
		// Initialize Inputs
		zFlag = 0;
		carryFlag = 0;
		signFlag = 0;
		overflowFlag = 0;
		brType = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		zFlag = 1;
		brType = 0;
		
		#100
		carryFlag = 0;
		brType = 1;
		
		#100;
		signFlag = 1;
		brType = 2;
		
		#100
		overflowFlag = 0;
		brType = 3;
		
		#100
		zFlag = 0;
		brType = 4;
		// Add stimulus here

	end
      
endmodule

