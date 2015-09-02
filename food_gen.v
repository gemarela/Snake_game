`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:15:24 06/21/2014 
// Design Name: 
// Module Name:    food_gen 
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
module food_gen(clk, 
					 rst, 
					 c_pixel, 
					 r_pixel, 
					 gen_food, 
					 game_over, 
					 food_X, 
					 food_Y, 
					 food_prnt, 
					 bound_prnt );

	input [7:0] c_pixel, 
					r_pixel;
					
	input 		clk,
					rst,
					gen_food, 
					game_over;
					
	output 		food_prnt,
					bound_prnt;
	
	output 		food_X,
					food_Y;
	
	reg			food_prnt,
					bound_prnt;
	reg 	[7:0]	new_food_X,
					new_food_Y;
					
	reg 	[7:0] food_X,
					food_Y;
	
	//draw food and the wall 
	always @(c_pixel, r_pixel)
	begin
		//draw tha food at the rigth position 
		if(!game_over && !gen_food && c_pixel == food_X && r_pixel == food_Y) begin
			food_prnt = 1'b1;
		end
		else begin
			food_prnt = 1'b0;
		end
		
		//draw the boundary 
		if (c_pixel < 8'h10 || c_pixel >8'h90) begin
			 bound_prnt = 1'b1;
		end
		else if (r_pixel < 8'h0A || r_pixel >8'h6E) begin
			bound_prnt = 1'b1;
		end
		else begin
			bound_prnt = 1'b0;
		end
	end
	
	always @(posedge clk or posedge rst)
	begin
	  if (rst) begin
	  
		new_food_X = 9'h11;
		new_food_Y = 9'hB;		
	  end
	  else begin
		if(new_food_X >= 8'h89 )begin
		
			new_food_X = 8'h11;
		end
		else begin
		
			new_food_X = new_food_X + 1;
		end
		
		if(new_food_Y >= 8'h6d) begin
		
			new_food_Y = 8'hB;
		end
		else begin 
		
			new_food_Y = new_food_Y + 1;
		end		
	  end    
	end
	
	always @(gen_food or rst) 
	begin
	  if(rst) begin
			food_X = 8'h50;
		   food_Y = 8'h47;
	  end
	  else if(gen_food)begin
	 
			food_X = new_food_X;
		   food_Y = new_food_Y;
	  end
	  else begin
		
		   food_X = food_X;
		   food_Y = food_Y;
	  end
	end
	
endmodule
