`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:26:06 10/06/2013 
// Design Name: 
// Module Name:    ALU 
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
module ALU(
		input[31:0] rs_,
		input[31:0] rt_,
		input[31:0] imm,
		input ALUimm,
		input ALUfn,
		input logicfn,
		input fnClass,
		output[31:0] result,
		output zFlag,
		output carryFlag,
		output signFlag,
		output overflowFlag
    );
wire[31:0] a,b,c1,c2;
mux_2_1 mux1(.a(rs_),.b(0),.sel(ALUfn),.c(a));
mux_2_1 mux2(.a(rt_),.b(imm),.sel(ALUimm),.c(b));
adder adder_(.a(a),.b(b),.addSub(ALUfn),.c(c1),.zFlag(zFlag),.carryFlag(carryFlag),.signFlag(signFlag),.overflowFlag(overflowFlag));
LogicUnit logicunit(.a(rs_),.b(rt_),.logicfn(logicfn),.c(c2));
mux_2_1 mux3(.a(c1),.b(c2),.sel(fnClass),.c(result));

endmodule
