`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:29:47 10/06/2013 
// Design Name: 
// Module Name:    RightShifterArith 
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
module RightShifterArith
(
	input[31:0] in,
	input[4:0] sha,
	output[31:0] out
);
wire[31:0] inn, A,AA, B,BB, C,CC,D,DD;

assign inn[30:0]=in[31:1];
assign inn[31]=in[31];

MUX32 s1(.A(in), .B(inn), .C(A), .select(sha[0]));

assign AA[29:0]=A[31:2];
assign AA[31]=A[31];
assign AA[30]=A[31];

MUX32 s2(.A(A), .B(AA), .C(B), .select(sha[1]));

assign BB[27:0]=B[31:4];
assign BB[31]=B[31];
assign BB[30]=B[31];
assign BB[29]=B[31];
assign BB[28]=B[31];

MUX32 s4(.A(B), .B(BB), .C(C), .select(sha[2]));

assign CC[23:0]=C[31:8];
genvar i;
generate
	for(i=31;i>=24;i=i-1)
	begin: l2
		assign CC[i]=C[31];
	end
endgenerate

MUX32 s8(.A(C), .B(CC), .C(D), .select(sha[3]));

assign DD[15:0]=D[31:16];
generate
	for(i=31;i>=16;i=i-1)
	begin: l1
		assign DD[i]=D[31];
	end
endgenerate

MUX32 s16(.A(D), .B(DD), .C(out), .select(sha[4]));

endmodule
