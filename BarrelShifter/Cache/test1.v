`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:38:00 10/07/2013
// Design Name:   DataCache
// Module Name:   C:/Users/ARPIT KUMAR/Dropbox/Coaa/Assignment 8/BarrelShifter/Cache/test1.v
// Project Name:  Cache
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: DataCache
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test1;

	// Inputs
	reg clka;
	reg ena;
	reg [0:0] wea;
	reg [12:0] addra;
	reg [31:0] dina;

	// Outputs
	wire [31:0] douta;

	// Instantiate the Unit Under Test (UUT)
	DataCache uut (
		.clka(clka), 
		.ena(ena), 
		.wea(wea), 
		.addra(addra), 
		.dina(dina), 
		.douta(douta)
	);

	initial begin
		// Initialize Inputs
		clka = 0;
		ena = 0;
		wea = 0;
		addra = 0;
		dina = 0;

		// Wait 100 ns for global reset to finish
		#100;
		  ena=1;
        wea=1;
		  addra=13'b0001000111000;
		  dina=500;
		#40;
			ena=0;
		
		#100;
		   ena=1;
		  addra=13'b1001000111000;
		  dina=120;
			
		#40;
			ena=0;
		
		#100;
			ena=1;
			wea=0;
		  addra=13'b0001000111000;
		  
			
		// Add stimulus here

	end
 always#10 clka=~clka;
endmodule

