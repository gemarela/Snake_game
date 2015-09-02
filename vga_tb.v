`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:12:07 05/10/2014
// Design Name:   vga
// Module Name:   C:/Users/BGiwrgos/Desktop/asychronous/snake_game/vga_tb.v
// Project Name:  snake_game
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: vga
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module vga_tb;

	// Inputs
	reg clk;
	reg rst;

	// Outputs
	wire h_sync;
	wire v_sync;
	wire [9:0] r_pixel;
	wire [9:0] c_pixel;
	wire video_on;

	// Instantiate the Unit Under Test (UUT)
	vga uut (
		.clk(clk), 
		.rst(rst), 
		.h_sync(h_sync), 
		.v_sync(v_sync), 
		.r_pixel(r_pixel), 
		.c_pixel(c_pixel), 
		.video_on(video_on)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 1;

		// Wait 100 ns for global reset to finish
		#100;
		rst = 0;
        
		// Add stimulus here

	end
      
	always #20 clk = ~clk;	
		
endmodule

