`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:00:28 05/15/2014 
// Design Name: 
// Module Name:    movement 
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
module movement(clk, 
					 rst, 
					 game_over, 
					 btn_right, 
					 btn_left, 
					 btn_up, 
					 btn_down, 
					 Head_X, 
					 Head_Y, 
					 post_ticket);

	input  clk,
			 rst,
			 game_over,
			 btn_right,
			 btn_left,
			 btn_up,
			 btn_down;
			
	output Head_X,
			 Head_Y,
			 post_ticket;
	
	parameter snake_speed = 24'd5_999_999;
	parameter move_right  = 4'b0001,
				 move_left 	 = 4'b0010,
				 move_up 	 = 4'b0100,
				 move_down 	 = 4'b1000;
	
	reg 		  post_ticket;// print icon of snake on the monitor
	reg [3:0]  move,Head_position;//signal for the move position of the snake
	reg [7:0]  Head_X,Head_Y;//snake head position X,Y
	reg [24:0] speed_cnt;//counter for the snake speed movement
	
	
	//always block to show snake on the monitor when the speed_cnt recycle
	always @(posedge clk or posedge rst) begin
	
		if(rst) begin
			post_ticket <= 0;
			speed_cnt 	<= 0;
		end
		else if(speed_cnt == snake_speed ) begin
			speed_cnt 	<= 0;
			post_ticket <= 1; 
		end
		else begin
			post_ticket <= 0;
			speed_cnt 	<= speed_cnt + 1;
		end
	end
	
	//calculate where the user want the snake to go{up,down,left,right}
	always @(posedge clk or posedge rst) begin
		if(rst) begin
			move <= 0;
		end
		else if(btn_left  == 1 && !game_over) begin
			move <= move_left;
		end
		else if(btn_right == 1 && !game_over) begin
			move <= move_right;
		end
		else if(btn_up    == 1 && !game_over) begin
			move <= move_up;
		end
		else if(btn_down  == 1 && !game_over) begin
			move <= move_down;
		end
	end
	
	
	always @(posedge post_ticket or posedge rst) begin
	
		//change the head position if the user command is different from the snake head position
		if(rst)begin
			Head_position = move_right;
		end
		else begin
			if(move == move_left  && Head_position != move_left  && Head_position != move_right)begin
				Head_position = move_left;
			end
			else if(move == move_right && Head_position != move_right && Head_position != move_left) begin
				Head_position = move_right;
			end
			else if(move == move_up    && Head_position != move_up    && Head_position != move_down) begin
				Head_position = move_up;
			end
			else if(move == move_down  && Head_position != move_down  && Head_position != move_up)   begin
				Head_position = move_down;
			end
		end
	end
	
	always @(posedge post_ticket or posedge rst) begin
		//change tha head pixel if the head position had changed
		if(rst) begin
			Head_X = 8'h40;
			Head_Y = 8'h40;
		end
		else begin
			case(Head_position) 
				move_left  : Head_X = Head_X - 1;
				move_right : Head_X = Head_X + 1;
				move_up 	  : Head_Y = Head_Y - 1;
				move_down  : Head_Y = Head_Y + 1;
			endcase
		end		
	end
	
endmodule
