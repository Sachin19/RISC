`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:10:44 10/11/2013 
// Design Name: 
// Module Name:    MUX32_1 
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
module MUX32_1
(
	input[1023:0] in,
	output reg[31:0] out,
	input[4:0] sel,
	input enable,
	input clk
);
wire[511:0] a;
wire[255:0] b;
wire[127:0] c;
wire[63:0] d;
wire[31:0] e;

MUX32 m0(.in1(in[31:0]), .in2(in[63:32]), .out(a[31:0]), .sel(sel[0]));
MUX32 m1(.in1(in[95:64]), .in2(in[127:96]), .out(a[63:32]), .sel(sel[0]));
MUX32 m2(.in1(in[159:128]), .in2(in[191:160]), .out(a[95:64]), .sel(sel[0]));
MUX32 m3(.in1(in[223:192]), .in2(in[255:224]), .out(a[127:96]), .sel(sel[0]));
MUX32 m4(.in1(in[287:256]), .in2(in[319:288]), .out(a[159:128]), .sel(sel[0]));
MUX32 m5(.in1(in[351:320]), .in2(in[383:352]), .out(a[191:160]), .sel(sel[0]));
MUX32 m6(.in1(in[415:384]), .in2(in[447:416]), .out(a[223:192]), .sel(sel[0]));
MUX32 m7(.in1(in[479:448]), .in2(in[511:480]), .out(a[255:224]), .sel(sel[0]));
MUX32 m8(.in1(in[543:512]), .in2(in[575:544]), .out(a[287:256]), .sel(sel[0]));
MUX32 m9(.in1(in[607:576]), .in2(in[639:608]), .out(a[319:288]), .sel(sel[0]));
MUX32 m10(.in1(in[671:640]), .in2(in[703:672]), .out(a[351:320]), .sel(sel[0]));
MUX32 m11(.in1(in[735:704]), .in2(in[767:736]), .out(a[383:352]), .sel(sel[0]));
MUX32 m12(.in1(in[799:768]), .in2(in[831:800]), .out(a[415:384]), .sel(sel[0]));
MUX32 m13(.in1(in[863:832]), .in2(in[895:864]), .out(a[447:416]), .sel(sel[0]));
MUX32 m14(.in1(in[927:896]), .in2(in[959:928]), .out(a[479:448]), .sel(sel[0]));
MUX32 m15(.in1(in[991:960]), .in2(in[1023:992]), .out(a[511:480]), .sel(sel[0]));


MUX32 n0(.in1(a[31:0]), .in2(a[63:32]), .out(b[31:0]), .sel(sel[1]));
MUX32 n1(.in1(a[95:64]), .in2(a[127:96]), .out(b[63:32]), .sel(sel[1]));
MUX32 n2(.in1(a[159:128]), .in2(a[191:160]), .out(b[95:64]), .sel(sel[1]));
MUX32 n3(.in1(a[223:192]), .in2(a[255:224]), .out(b[127:96]), .sel(sel[1]));
MUX32 n4(.in1(a[287:256]), .in2(a[319:288]), .out(b[159:128]), .sel(sel[1]));
MUX32 n5(.in1(a[351:320]), .in2(a[383:352]), .out(b[191:160]), .sel(sel[1]));
MUX32 n6(.in1(a[415:384]), .in2(a[447:416]), .out(b[223:192]), .sel(sel[1]));
MUX32 n7(.in1(a[479:448]), .in2(a[511:480]), .out(b[255:224]), .sel(sel[1]));



MUX32 o0(.in1(b[31:0]), .in2(b[63:32]), .out(c[31:0]), .sel(sel[2]));
MUX32 o1(.in1(b[95:64]), .in2(b[127:96]), .out(c[63:32]), .sel(sel[2]));
MUX32 o2(.in1(b[159:128]), .in2(b[191:160]), .out(c[95:64]), .sel(sel[2]));
MUX32 o3(.in1(b[223:192]), .in2(b[255:224]), .out(c[127:96]), .sel(sel[2]));


MUX32 p0(.in1(c[31:0]), .in2(c[63:32]), .out(d[31:0]), .sel(sel[3]));
MUX32 p1(.in1(c[95:64]), .in2(c[127:96]), .out(d[63:32]), .sel(sel[3]));


MUX32 q(.in1(d[31:0]), .in2(d[63:32]), .out(e), .sel(sel[4]));


always@(posedge clk)
begin
	if(enable)
		out<=e;
	else
		out<=out;
end


endmodule
