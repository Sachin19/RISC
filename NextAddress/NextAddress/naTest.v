`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:06:59 10/24/2013
// Design Name:   NextAddr
// Module Name:   C:/Users/in dia/Dropbox/Coaa/Assignment 8/NextAddress/NextAddress/naTest.v
// Project Name:  NextAddress
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: NextAddr
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module naTest;

	// Inputs
	reg zFlag;
	reg carryFlag;
	reg signFlag;
	reg overflowFlag;
	reg [29:0] register;
	reg [25:0] jta;
	reg [29:0] PC;
	reg [2:0] brType;
	reg [1:0] PCSel;

	// Outputs
	wire [29:0] IncrPC;
	wire [29:0] NextPC;

	// Instantiate the Unit Under Test (UUT)
	NextAddr uut (
		.zFlag(zFlag), 
		.carryFlag(carryFlag), 
		.signFlag(signFlag), 
		.overflowFlag(overflowFlag), 
		.register(register), 
		.jta(jta), 
		.PC(PC), 
		.brType(brType), 
		.PCSel(PCSel), 
		.IncrPC(IncrPC), 
		.NextPC(NextPC)
	);

	initial begin
		// Initialize Inputs
		zFlag = 0;
		carryFlag = 0;
		signFlag = 0;
		overflowFlag = 0;
		register = 0;
		jta = 0;
		PC = 0;
		brType = 0;
		PCSel = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		PCSel = 0; //PC=PC+4;
      
		#100
		
		PCSel = 2; //branch
		
		100
		
		PCSel = 3; //jumpRegister
		// Add stimulus here

	end
      
endmodule

