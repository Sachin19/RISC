`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:03:55 10/06/2013 
// Design Name: 
// Module Name:    LeftShifter 
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
module LeftShifter
(
	input[31:0] in,
	input[4:0] sha,
	output[31:0] out
);
wire[31:0] inn, A,AA, B,BB, C,CC,D,DD;

assign inn[31:1]=in[30:0];
assign inn[0]=0;

MUX32 s1(.A(in), .B(inn), .C(A), .select(sha[0]));

assign AA[31:2]=A[29:0];
assign AA[1:0]=2'b00;

MUX32 s2(.A(A), .B(AA), .C(B), .select(sha[1]));

assign BB[31:4]=B[27:0];
assign BB[3:0]=4'b0000;

MUX32 s4(.A(B), .B(BB), .C(C), .select(sha[2]));

assign CC[31:8]=C[23:0];
assign CC[7:0]=8'b00000000;

MUX32 s8(.A(C), .B(CC), .C(D), .select(sha[3]));

assign DD[31:16]=D[15:0];
assign DD[15:0]=16'b0000000000000000;

MUX32 s16(.A(D), .B(DD), .C(out), .select(sha[4]));

endmodule
