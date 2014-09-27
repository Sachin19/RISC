`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:18:02 10/16/2013 
// Design Name: 
// Module Name:    BranchDecider 
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
//brtype = 000 bnz
//			  001 bncy
//			  010 bns
//         011 bnv
//         100 bz
//         101 bcy
//         110 bs
//         111 bv
//////////////////////////////////////////////////////////////////////////////////
module BranchDecider(
		input zFlag,
		input carryFlag,
		input signFlag,
		input overflowFlag,
		input[2:0] brType,
		output brTrue
    );
assign m1 = brType[0]?carryFlag:zFlag;
assign m2 = brType[0]?overflowFlag:signFlag;
assign mid = brType[1]?m2:m1;
assign brTrue = (brType[2]==mid)?1'b1:1'b0;
/*always@(*)
begin
case(brType)
0:brTrue<=zFlag?0:1;
1:brTrue<=carryFlag?0:1;
2:brTrue<=signFlag?0:1;
3:brTrue<=overflowFlag?0:1;
4:brTrue<=zFlag?1:0;
5:brTrue<=carryFlag?1:0;
6:brTrue<=signFlag?1:0;
7:brTrue<=overflowFlag?1:0;
endcase
end*/


endmodule
