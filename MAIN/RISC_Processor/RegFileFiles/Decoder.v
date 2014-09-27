


`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:15:09 10/07/2013 
// Design Name: 
// Module Name:    Decoder 
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
module Decoder
(
	input[4:0] wA,
	input wrEn,
	output[31:0] FF_en
);

assign FF_en[0]=wrEn & !wA[4] & !wA[3] & !wA[2] & !wA[1] & !wA[0];
assign FF_en[1]=wrEn & !wA[4] & !wA[3] & !wA[2] & !wA[1] &  wA[0];
assign FF_en[2]=wrEn & !wA[4] & !wA[3] & !wA[2] &  wA[1] & !wA[0];
assign FF_en[3]=wrEn & !wA[4] & !wA[3] & !wA[2] &  wA[1] &  wA[0];
assign FF_en[4]=wrEn & !wA[4] & !wA[3] &  wA[2] & !wA[1] & !wA[0];
assign FF_en[5]=wrEn & !wA[4] & !wA[3] &  wA[2] & !wA[1] &  wA[0];
assign FF_en[6]=wrEn & !wA[4] & !wA[3] &  wA[2] &  wA[1] & !wA[0];
assign FF_en[7]=wrEn & !wA[4] & !wA[3] &  wA[2] &  wA[1] &  wA[0];
assign FF_en[8]=wrEn & !wA[4] &  wA[3] & !wA[2] & !wA[1] & !wA[0];
assign FF_en[9]=wrEn & !wA[4] &  wA[3] & !wA[2] & !wA[1] &  wA[0];
assign FF_en[10]=wrEn & !wA[4] &  wA[3] & !wA[2] &  wA[1] & !wA[0];
assign FF_en[11]=wrEn & !wA[4] &  wA[3] & !wA[2] &  wA[1] &  wA[0];
assign FF_en[12]=wrEn & !wA[4] &  wA[3] &  wA[2] & !wA[1] & !wA[0];
assign FF_en[13]=wrEn & !wA[4] &  wA[3] &  wA[2] & !wA[1] &  wA[0];
assign FF_en[14]=wrEn & !wA[4] &  wA[3] &  wA[2] &  wA[1] & !wA[0];
assign FF_en[15]=wrEn & !wA[4] &  wA[3] &  wA[2] &  wA[1] &  wA[0];
assign FF_en[16]=wrEn &  wA[4] & !wA[3] & !wA[2] & !wA[1] & !wA[0];
assign FF_en[17]=wrEn &  wA[4] & !wA[3] & !wA[2] & !wA[1] &  wA[0];
assign FF_en[18]=wrEn &  wA[4] & !wA[3] & !wA[2] &  wA[1] & !wA[0];
assign FF_en[19]=wrEn &  wA[4] & !wA[3] & !wA[2] &  wA[1] &  wA[0];
assign FF_en[20]=wrEn &  wA[4] & !wA[3] &  wA[2] & !wA[1] & !wA[0];
assign FF_en[21]=wrEn &  wA[4] & !wA[3] &  wA[2] & !wA[1] &  wA[0];
assign FF_en[22]=wrEn &  wA[4] & !wA[3] &  wA[2] &  wA[1] & !wA[0];
assign FF_en[23]=wrEn &  wA[4] & !wA[3] &  wA[2] &  wA[1] &  wA[0];
assign FF_en[24]=wrEn &  wA[4] &  wA[3] & !wA[2] & !wA[1] & !wA[0];
assign FF_en[25]=wrEn &  wA[4] &  wA[3] & !wA[2] & !wA[1] &  wA[0];
assign FF_en[26]=wrEn &  wA[4] &  wA[3] & !wA[2] &  wA[1] & !wA[0];
assign FF_en[27]=wrEn &  wA[4] &  wA[3] & !wA[2] &  wA[1] &  wA[0];
assign FF_en[28]=wrEn &  wA[4] &  wA[3] &  wA[2] & !wA[1] & !wA[0];
assign FF_en[29]=wrEn &  wA[4] &  wA[3] &  wA[2] & !wA[1] &  wA[0];
assign FF_en[30]=wrEn &  wA[4] &  wA[3] &  wA[2] &  wA[1] & !wA[0];
assign FF_en[31]=wrEn &  wA[4] &  wA[3] &  wA[2] &  wA[1] &  wA[0];


endmodule
