`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:45:49 06/23/2014
// Design Name:   food_gen
// Module Name:   C:/Users/BGiwrgos/Dropbox/embedded/embedded_project/snake_project/snake_game/food_gen_tb.v
// Project Name:  snake_game
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: food_gen
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module food_gen_tb;

	// Inputs
	reg clk;
	reg rst;
	reg [7:0] c_pixel;
	reg [7:0] r_pixel;
	reg gen_food;
	reg game_over;

	// Outputs
	wire [7:0] food_X;
	wire [7:0] food_Y;
	wire food_prnt;
	wire bound_prnt;

	// Instantiate the Unit Under Test (UUT)
	food_gen uut (
		.clk(clk), 
		.rst(rst), 
		.c_pixel(c_pixel), 
		.r_pixel(r_pixel), 
		.gen_food(gen_food), 
		.game_over(game_over), 
		.food_X(food_X), 
		.food_Y(food_Y), 
		.food_prnt(food_prnt), 
		.bound_prnt(bound_prnt)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 1;
		c_pixel = 0;
		r_pixel = 0;
		gen_food = 0;
		game_over = 0;

		// Wait 100 ns for global reset to finish
		#100;
		rst = 0;
		#100
		c_pixel = 8'h43;
      r_pixel = 8'h47;  
		// Add stimulus here

	end
   
	always #20 clk = ~clk;
endmodule

