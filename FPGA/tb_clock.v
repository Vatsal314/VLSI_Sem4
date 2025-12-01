`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:47:52 07/11/2019
// Design Name:   digital_clock
// Module Name:   D:/Abasyn/Summer2019/DLD/digit_clock/tb_clock.v
// Project Name:  digit_clock
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: digital_clock
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_clock;

	// Inputs
	reg clk;
	reg reset;

	// Outputs
	wire [6:0] segments;
	wire [3:0] anodes;

	// Instantiate the Unit Under Test (UUT)
	digital_clock uut (
		.clk(clk), 
		.reset(reset), 
		.segments(segments), 
		.anodes(anodes)
	);
	initial
	begin
		clk = 0;
		forever #5 clk = ~clk;	
	end
	

	initial begin
		// Initialize Inputs
		uut.anodes_cnt = 0;
		reset = 0;        
		// Add stimulus here
		@(posedge clk);
		#1 reset = 1;

		@(posedge clk);
		#1 reset = 0;
		
		repeat(10000) @(posedge clk);
		$stop;
	end
      
endmodule

