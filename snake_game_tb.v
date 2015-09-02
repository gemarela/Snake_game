`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:40:24 06/23/2014
// Design Name:   snake_game
// Module Name:   C:/Users/BGiwrgos/Dropbox/embedded/embedded_project/snake_project/snake_game/snake_game_tb.v
// Project Name:  snake_game
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: snake_game
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module snake_game_tb;

	// Inputs
	reg clk_div;
	reg rst;
	reg btn_right;
	reg btn_left;
	reg btn_up;
	reg btn_down;

	// Outputs
	wire h_sync;
	wire v_sync;
	wire [2:0] vgaRed;
	wire [2:0] vgaGreen;
	wire [1:0] vgaBlue;

	// Instantiate the Unit Under Test (UUT)
	snake_game uut (
		.clk_div(clk_div), 
		.rst(rst), 
		.btn_right(btn_right), 
		.btn_left(btn_left), 
		.btn_up(btn_up), 
		.btn_down(btn_down), 
		.h_sync(h_sync), 
		.v_sync(v_sync), 
		.vgaRed(vgaRed), 
		.vgaGreen(vgaGreen), 
		.vgaBlue(vgaBlue)
	);

	initial begin
		// Initialize Inputs
		clk_div = 0;
		rst = 1;
		btn_right = 0;
		btn_left = 0;
		btn_up = 0;
		btn_down = 0;

		// Wait 100 ns for global reset to finish
		#200;
		rst = 0;
		
      
		// Add stimulus here

	end
	
	always #20 clk_div = ~clk_div;
      
endmodule

