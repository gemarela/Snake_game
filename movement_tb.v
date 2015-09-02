`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:40:55 05/15/2014
// Design Name:   movement
// Module Name:   C:/Users/BGiwrgos/Desktop/HM&MY/asychronous/snake_movement/movement_tb.v
// Project Name:  snake_movement
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: movement
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module movement_tb;

	// Inputs
	reg clk;
	reg rst;
	reg game_over;
	reg btn_right;
	reg btn_left;
	reg btn_up;
	reg btn_down;

	// Outputs
	wire [7:0] Head_X;
	wire [7:0] Head_Y;
	wire post_ticket;

	// Instantiate the Unit Under Test (UUT)
	movement uut (
		.clk(clk), 
		.rst(rst), 
		.game_over(game_over), 
		.btn_right(btn_right), 
		.btn_left(btn_left), 
		.btn_up(btn_up), 
		.btn_down(btn_down), 
		.Head_X(Head_X), 
		.Head_Y(Head_Y), 
		.post_ticket(post_ticket)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 1;
		game_over = 0;
		btn_right = 0;
		btn_left = 0;
		btn_up = 0;
		btn_down = 0;

		// Wait 100 ns for global reset to finish
		#100;
		rst = 0;
		#50
		btn_right = 1;
		#50
		btn_right = 0;
		#50
		btn_up = 1;
        
		// Add stimulus here

	end
	
	always #20 clk = ~clk;
      
endmodule

