`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:49:08 06/22/2014 
// Design Name:	   George Bousdras
// Module Name:    set_color 
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
module set_color(clk,
					  rst, 
					  video_on, 
					  food_prnt, 
					  bound_prnt, 
					  prnt,
					  game_over,
					  vgaRed,
					  vgaGreen,
					  vgaBlue);
					  
	input		 	 clk,
					 rst,
					 video_on;
		
	input  	    food_prnt,
					 game_over,
					 bound_prnt, 
					 prnt;
	
	output [2:0] vgaRed;
	output [2:0] vgaGreen;
	output [1:0] vgaBlue;
	
	reg 			 flag;
	reg    [2:0] vgaRed,
					 vgaGreen;
			 
	reg	 [1:0] vgaBlue;
	
	always @(posedge clk or posedge rst )
	begin
	    if(rst) begin
			flag 		= 0;
			vgaRed   = 3'h7;
			vgaGreen = 3'h0;
			vgaBlue  = 2'h0; 
	    end
	    else if(video_on)begin
			 if(flag) begin
			 
				 vgaRed   = 3'h0;
				 vgaGreen = 3'h0;
				 vgaBlue  = 2'h0; 
			 end
			 else if(game_over)begin
						
				 flag = 1;
			 end
			 else if(bound_prnt == 1'b1) begin
				  
				 vgaRed   = 3'h0;
				 vgaGreen = 3'h0;
				 vgaBlue  = 2'h3; 
			 end
			 else if(prnt == 1'b1 )begin
					
				 vgaRed   = 3'h7;
				 vgaGreen = 3'h0;
				 vgaBlue  = 2'h0; 
			 end
			 else if(food_prnt == 1'b1)begin
				  
				 vgaRed   = 3'h0;
				 vgaGreen = 3'h7;
				 vgaBlue  = 2'h0; 
			 end  
			 else begin
				  
				 vgaRed   = 3'h0;
				 vgaGreen = 3'h0;
				 vgaBlue  = 2'h0; 
			 end
		end
		else begin
				
			vgaRed   = 3'h0;
			vgaGreen = 3'h0;
			vgaBlue  = 2'h0;
		end
	end


endmodule
