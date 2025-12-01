`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:44:38 07/09/2019 
// Design Name: 
// Module Name:    digital_clock 
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
module digital_clock(
	input clk,
	input reset,
	output [7:0] Led,
	output reg [6:0] segments,
	output reg [3:0] anodes
    );
	
reg [32:0] 	clk_cnt;
wire	   	clr_clk_cnt;
reg [5:0]	min_cnt;
wire		clr_min_cnt;
reg [4:0]	hr_cnt;
wire		clr_hr_cnt;

wire	[6:0] seg0;
wire	[6:0] seg1;
wire	[6:0] seg2;
wire	[6:0] seg3;

assign Led = {hr_cnt[1:0],min_cnt};
always@(posedge clk)
	if(reset || clr_clk_cnt) clk_cnt <= 0;
	else					 clk_cnt <= clk_cnt + 1;

//assign clr_clk_cnt = clk_cnt == 33'd5999_999_999;
//assign clr_clk_cnt = clk_cnt == 33'd9;
assign clr_clk_cnt = clk_cnt == 33'd99_999999;

always@(posedge clk)
	if(reset || clr_min_cnt) min_cnt <= 0;
	else if(clr_clk_cnt)	 min_cnt <= min_cnt + 1;
	
assign clr_min_cnt = (min_cnt == 59) & clr_clk_cnt;
	
always@(posedge clk)
	if(reset || clr_hr_cnt)	hr_cnt <= 0;
	else if(clr_min_cnt)	hr_cnt <= hr_cnt + 1;
	
assign clr_hr_cnt = (hr_cnt == 23) & clr_min_cnt;


segments2 mins_segment(
	.select		(min_cnt),
	.segments	({seg1,seg0})
    );
	
segments2 hrs_segment(
	.select		({1'd0,hr_cnt}),
	.segments	({seg3,seg2})
    );

reg [31:0] anodes_cnt;

always@(posedge clk) anodes_cnt <= anodes_cnt+1;
//always@* anodes_cnt = 0;
always@*
	case(anodes_cnt[24:23])
	2'd0: segments = ~seg0;
	2'd1: segments = ~seg1;
	2'd2: segments = ~seg2;
	2'd3: segments = ~seg3;
	endcase

always@*
	case(anodes_cnt[24:23])
	2'd0: anodes = 4'b1110;
	2'd1: anodes = 4'b1101;
	2'd2: anodes = 4'b1011;
	2'd3: anodes = 4'b0111;
	endcase

	
endmodule
