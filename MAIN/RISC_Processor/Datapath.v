`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:37:21 10/24/2013 
// Design Name: 
// Module Name:    Datapath 
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
module Datapath
(
	output[5:0] op,
	output[5:0] fn,
	
	input PCReset,
	
	input[1:0] regDst,
	input writeEn,
	
	input ALUimm,
	input Alufn,
	input logicfn,
	input fnClass,
	
	input RegImm,
	input AL,
	input leftright,
	
	input DWrite,
	input DRead,
	
	input[2:0] brType,
	input[1:0] PCSel,
	
	input[1:0] RegInData,
	
	input clk
);
//wire[31:0] dinInstr;
wire[31:0] regWriteData;
wire[31:0] PC,IncrPC,NextPC;

wire[31:0] instr;
wire[4:0] rs,rt,sh,d31;
wire[15:0] imm;
wire[25:0] jta;
assign op=instr[31:26];
assign rs=instr[25:21];
assign rt=instr[20:16];
assign sh=instr[10:6];
assign fn=instr[5:0];
assign imm=instr[15:0];
assign jta=instr[25:0];
assign d31=5'b11111;

wire[4:0] writeAdd;
wire[31:0] rs_v,rt_v;

InCache insCac(.addra(PC[13:2]), .dina(32'b00000000000000000000000000000000), .clka(clk), .wea(1'b0), .douta(instr));

MUX4_1_5b regMUX(.a(rs), .b(rt), .c(d31), .d(5'b00000), .sel(regDst), .out(writeAdd));

RegFile registers(.writeData(regWriteData), .writeAdd(writeAdd), .read1Add(rs), .read2Add(rt), 
						.writeEn(writeEn), .reData1(rs_v), .reData2(rt_v), .clk(clk));

wire[31:0] signEimm;
wire zFlag,carryFlag,signFlag,overflowFlag;
reg zFlagr,carryFlagr,signFlagr,overflowFlagr;
wire[31:0] AluOut, shifterOut, dataOut;


SignExtender se(.in(imm), .out(signEimm));

ALU alu(.rs_(rs_v), .rt_(rt_v), .imm(signEimm), .ALUimm(ALUimm), .ALUfn(Alufn), .logicfn(logicfn), .fnClass(fnClass),
		  .zFlag(zFlag), .carryFlag(carryFlag), .signFlag(signFlag), .overflowFlag(overflowFlag), .result(AluOut));

always@(negedge clk)
begin
	zFlagr<=zFlag;
	carryFlagr<=carryFlag;
	signFlagr<=signFlag;
	overflowFlagr<=overflowFlag;
end

Shifter sf(.rs(rs_v), .rt(rt_v), .sh(sh), .RegImm(RegImm), .AL(AL), .leftRight(leftright), .out(shifterOut));

DaCache dataCache(.addra(AluOut[11:0]), .dina(rt_v), .ena((DWrite|DRead)), .wea(DWrite), .douta(dataOut), .clka(!clk));

NextAddr na(.register(rs_v[31:2]), .jta(jta), .PC(PC[31:2]),
				.zFlag(zFlagr), .carryFlag(carryFlagr), .signFlag(signFlagr), .overflowFlag(overflowFlagr),
				.brType(brType), .PCSel(PCSel),
				.IncrPC(IncrPC[31:2]), .NextPC(NextPC[31:2]));

wire[31:0] NPC;
assign NPC=(PCReset)?32'b00000000000000000000000000000000:NextPC;
assign PC[1:0]=2'b00;
assign NextPC[1:0]=2'b00;
assign IncrPC[1:0]=2'b00;
Reg32 pcreg(.in(NPC[31:2]), .out(PC[31:2]), .clk(clk));

MUX4_1_32b regDataMUX(.a(dataOut), .b(AluOut), .c(IncrPC), .d(shifterOut), .out(regWriteData), .sel(RegInData));


endmodule
