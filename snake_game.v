`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:44:23 06/22/2014 
// Design Name: 
// Module Name:    snake_game 
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
module snake_game(clk, 
						rst, 
						btn_right, 
						btn_left, 
						btn_up, 
						btn_down,
						h_sync, 
						v_sync, 
						vgaRed, 
						vgaGreen, 
						vgaBlue);
						
	input 		 clk, 
					 rst, 
					 btn_right, 
					 btn_left, 
					 btn_up, 
					 btn_down;
			
	output 		 h_sync, 
					 v_sync;
					 
	output [2:0] vgaRed,
					 vgaGreen;
	output [1:0] vgaBlue;
	
	wire 		  	 rst_db,
					 post_ticket,
					 btn_right_db,
					 btn_left_db,
					 btn_up_db,
					 btn_down_db,
					 prnt;
					 
	wire 	 [9:0] r_pixel,c_pixel;
	
	wire 	 [7:0] food_X,
					 food_Y,
					 Head_loc_X,
					 Head_loc_Y;
	
	
	clock_div instance_name
   (// Clock in ports
    .CLK_IN1(clk),      // IN
    // Clock out ports
    .CLK_OUT1(clk_div));    // OUT
	
	 vga	 SV( .clk(clk_div), 
				  .rst(rst_db), 
				  .h_sync(h_sync), 
				  .v_sync(v_sync), 
				  .r_pixel(r_pixel), 
				  .c_pixel(c_pixel), 
				  .video_on(video_on));
	 
	 movement SM(.clk(clk_div), 
					 .rst(rst_db), 
					 .game_over(game_over), 
					 .btn_right(btn_right_db), 
					 .btn_left(btn_left_db), 
					 .btn_up(btn_up_db), 
					 .btn_down(btn_down_db), 
					 .Head_X(Head_loc_X), 
					 .Head_Y(Head_loc_Y), 
				 	 .post_ticket(post_ticket));
				   
				  
	 print_snake PS(.rst(rst_db), 
						 .post_ticket(post_ticket), 
						 .r_pixel(r_pixel[9:2]), 
						 .c_pixel(c_pixel[9:2]), 
						 .pos_X(Head_loc_X), 
						 .pos_Y(Head_loc_Y), 
						 .food_X(food_X), 
						 .food_Y(food_Y), 
						 .prnt(prnt), 
						 .make_food(gen_food), 
						 .game_over(game_over));
						 
	 food_gen FG(.clk(clk_div), 
					 .rst(rst_db), 
					 .c_pixel(c_pixel[9:2]), 
					 .r_pixel(r_pixel[9:2]), 
					 .gen_food(gen_food), 
					 .game_over(game_over), 
					 .food_X(food_X), 
					 .food_Y(food_Y), 
					 .food_prnt(food_prnt), 
					 .bound_prnt(bound_prnt) );
	 
	 set_color SC(.clk(clk_div),
					  .rst(rst_db), 
					  .video_on(video_on), 
					  .food_prnt(food_prnt), 
					  .bound_prnt(bound_prnt), 
					  .prnt(prnt),
					  .game_over(game_over),
					  .vgaRed(vgaRed),
					  .vgaGreen(vgaGreen),
					  .vgaBlue(vgaBlue));
	 
	 //Debounce and synchronize outputs buttons
	 
	 LevelDebounce_rst RST(	 .clk(clk_div),
									 .button(rst), 
									 .debounce(rst_db));
							
	 LevelDebounce BTN_Right(.clk(clk_div),
									 .rst(rst_db), 
									 .button(btn_right), 
									 .debounce(btn_right_db));
	 
	 LevelDebounce BTN_Left( .clk(clk_div),
									 .rst(rst_db), 
									 .button(btn_left), 
									 .debounce(btn_left_db));
	 	 
	 LevelDebounce BTN_Up(	 .clk(clk_div),
									 .rst(rst_db), 
									 .button(btn_up), 
									 .debounce(btn_up_db));
							
	 LevelDebounce BTN_Down( .clk(clk_div),
									 .rst(rst_db), 
									 .button(btn_down), 
									 .debounce(btn_down_db));
			  

endmodule
