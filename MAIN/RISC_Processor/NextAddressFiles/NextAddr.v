`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:52:06 10/16/2013 
// Design Name: 
// Module Name:    NextAddr 
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
module NextAddr(
		input zFlag,
		input carryFlag,
		input signFlag, 
		input overflowFlag,
		input[29:0] register,
		input[25:0] jta,
		input[29:0] PC,
		input[2:0] brType,
		input[1:0] PCSel,
		output[29:0] IncrPC,
		output[29:0] NextPC
    );
wire brTrue;
wire[29:0] L1,L2;
assign IncrPC = PC+1;
BranchDecider bd(.zFlag(zFlag),.carryFlag(carryFlag),.signFlag(signFlag),.overflowFlag(overflowFlag),.brType(brType),.brTrue(brTrue));
assign L1 = brTrue?{PC[29:26],jta}:IncrPC;

assign NextPC=PCSel[1]?(PCSel[0]?register:L1):(PCSel[0]?{PC[29:26],jta}:IncrPC);

endmodule
