`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    07:27:24 10/13/2013 
// Design Name: 
// Module Name:    RegFile 
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
module RegFile
(
	input[31:0] writeData,
	input[4:0] writeAdd,
	input writeEn,
	input[4:0] read1Add,
	input[4:0] read2Add,
	input readEn,
	output[31:0] reData1,
	output[31:0] reData2,
	input clk
);
wire[31:0] enableWire;
wire[1023:0] MuxIn;
Decoder dec(.wA(writeAdd), .wrEn(writeEn), .FF_en(enableWire));


FF_32 ff0(.in(writeData), .en(enableWire[0]), .out(MuxIn[31:0]), .clk(clk));
FF_32 ff1(.in(writeData), .en(enableWire[1]), .out(MuxIn[63:32]), .clk(clk));
FF_32 ff2(.in(writeData), .en(enableWire[2]), .out(MuxIn[95:64]), .clk(clk));
FF_32 ff3(.in(writeData), .en(enableWire[3]), .out(MuxIn[127:96]), .clk(clk));
FF_32 ff4(.in(writeData), .en(enableWire[4]), .out(MuxIn[159:128]), .clk(clk));
FF_32 ff5(.in(writeData), .en(enableWire[5]), .out(MuxIn[191:160]), .clk(clk));
FF_32 ff6(.in(writeData), .en(enableWire[6]), .out(MuxIn[223:192]), .clk(clk));
FF_32 ff7(.in(writeData), .en(enableWire[7]), .out(MuxIn[255:224]), .clk(clk));
FF_32 ff8(.in(writeData), .en(enableWire[8]), .out(MuxIn[287:256]), .clk(clk));
FF_32 ff9(.in(writeData), .en(enableWire[9]), .out(MuxIn[319:288]), .clk(clk));
FF_32 ff10(.in(writeData), .en(enableWire[10]), .out(MuxIn[351:320]), .clk(clk));
FF_32 ff11(.in(writeData), .en(enableWire[11]), .out(MuxIn[383:352]), .clk(clk));
FF_32 ff12(.in(writeData), .en(enableWire[12]), .out(MuxIn[415:384]), .clk(clk));
FF_32 ff13(.in(writeData), .en(enableWire[13]), .out(MuxIn[447:416]), .clk(clk));
FF_32 ff14(.in(writeData), .en(enableWire[14]), .out(MuxIn[479:448]), .clk(clk));
FF_32 ff15(.in(writeData), .en(enableWire[15]), .out(MuxIn[511:480]), .clk(clk));
FF_32 ff16(.in(writeData), .en(enableWire[16]), .out(MuxIn[543:512]), .clk(clk));
FF_32 ff17(.in(writeData), .en(enableWire[17]), .out(MuxIn[575:544]), .clk(clk));
FF_32 ff18(.in(writeData), .en(enableWire[18]), .out(MuxIn[607:576]), .clk(clk));
FF_32 ff19(.in(writeData), .en(enableWire[19]), .out(MuxIn[639:608]), .clk(clk));
FF_32 ff20(.in(writeData), .en(enableWire[20]), .out(MuxIn[671:640]), .clk(clk));
FF_32 ff21(.in(writeData), .en(enableWire[21]), .out(MuxIn[703:672]), .clk(clk));
FF_32 ff22(.in(writeData), .en(enableWire[22]), .out(MuxIn[735:704]), .clk(clk));
FF_32 ff23(.in(writeData), .en(enableWire[23]), .out(MuxIn[767:736]), .clk(clk));
FF_32 ff24(.in(writeData), .en(enableWire[24]), .out(MuxIn[799:768]), .clk(clk));
FF_32 ff25(.in(writeData), .en(enableWire[25]), .out(MuxIn[831:800]), .clk(clk));
FF_32 ff26(.in(writeData), .en(enableWire[26]), .out(MuxIn[863:832]), .clk(clk));
FF_32 ff27(.in(writeData), .en(enableWire[27]), .out(MuxIn[895:864]), .clk(clk));
FF_32 ff28(.in(writeData), .en(enableWire[28]), .out(MuxIn[927:896]), .clk(clk));
FF_32 ff29(.in(writeData), .en(enableWire[29]), .out(MuxIn[959:928]), .clk(clk));
FF_32 ff30(.in(writeData), .en(enableWire[30]), .out(MuxIn[991:960]), .clk(clk));
FF_32 ff31(.in(writeData), .en(enableWire[31]), .out(MuxIn[1023:992]), .clk(clk));


MUX32_1 mux1(.in(MuxIn),.sel(read1Add),.out(reData1),.enable(readEn),.clk(clk));
MUX32_1 mux2(.in(MuxIn),.sel(read2Add),.out(reData2),.enable(readEn),.clk(clk));

endmodule
