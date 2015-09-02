`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:07:04 06/12/2014 
// Design Name: 
// Module Name:    print_snake 
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
module print_snake(rst, 
						 post_ticket, 
						 r_pixel, 
						 c_pixel, 
						 pos_X, 
						 pos_Y, 
						 food_X, 
						 food_Y, 
						 prnt, 
						 make_food, 
						 game_over);

	input 		 rst, 
					 post_ticket;
					 
	input [7:0]  r_pixel,
					 c_pixel,
					 pos_X,
					 pos_Y,					 
					 food_X, 
					 food_Y;	
	
	output [2:0] prnt;
	output 		 make_food,
					 game_over;
	
	reg [7:0] i,j;
	
	reg [7:0]    snake_len,
					 Head_X,
					 Head_Y;
				 
	reg [15:0] 	 snake_body[100:0];
	reg 		 	 prnt,
					 make_food,
					 game_over;
	
	always@(c_pixel, r_pixel) begin
	
		case({c_pixel,r_pixel})
			
				snake_body[1] :prnt <= 1'b1;
				snake_body[2] :prnt <= 1'b1;
				snake_body[3] :prnt <= 1'b1;
				snake_body[4] :prnt <= 1'b1;
				snake_body[5] :prnt <= 1'b1;
				snake_body[6] :prnt <= 1'b1;
				snake_body[7] :prnt <= 1'b1;
				snake_body[8] :prnt <= 1'b1;
				snake_body[9] :prnt <= 1'b1;
				snake_body[10] :prnt <= 1'b1;
				snake_body[11] :prnt <= 1'b1;
				snake_body[12] :prnt <= 1'b1;
				snake_body[13] :prnt <= 1'b1;
				snake_body[14] :prnt <= 1'b1;
				snake_body[15] :prnt <= 1'b1;
				snake_body[16] :prnt <= 1'b1;
				snake_body[17] :prnt <= 1'b1;
				snake_body[18] :prnt <= 1'b1;
				snake_body[19] :prnt <= 1'b1;
				snake_body[20] :prnt <= 1'b1;
				snake_body[21] :prnt <= 1'b1;
				snake_body[22] :prnt <= 1'b1;
				snake_body[23] :prnt <= 1'b1;
				snake_body[24] :prnt <= 1'b1;
				snake_body[25] :prnt <= 1'b1;
				snake_body[26] :prnt <= 1'b1;
				snake_body[27] :prnt <= 1'b1;
				snake_body[28] :prnt <= 1'b1;
				snake_body[29] :prnt <= 1'b1;
				snake_body[30] :prnt <= 1'b1;
				snake_body[31] :prnt <= 1'b1;
				snake_body[32] :prnt <= 1'b1;
				snake_body[33] :prnt <= 1'b1;
				snake_body[34] :prnt <= 1'b1;
				snake_body[35] :prnt <= 1'b1;
				snake_body[36] :prnt <= 1'b1;
				snake_body[37] :prnt <= 1'b1;
				snake_body[38] :prnt <= 1'b1;
				snake_body[39] :prnt <= 1'b1;
				snake_body[40] :prnt <= 1'b1;
				snake_body[41] :prnt <= 1'b1;
				snake_body[42] :prnt <= 1'b1;
				snake_body[43] :prnt <= 1'b1;
				snake_body[44] :prnt <= 1'b1;
				snake_body[45] :prnt <= 1'b1;
				snake_body[46] :prnt <= 1'b1;
				snake_body[47] :prnt <= 1'b1;
				snake_body[48] :prnt <= 1'b1;
				snake_body[49] :prnt <= 1'b1;
				snake_body[50] :prnt <= 1'b1;
				snake_body[51] :prnt <= 1'b1;
				snake_body[52] :prnt <= 1'b1;
				snake_body[53] :prnt <= 1'b1;
				snake_body[54] :prnt <= 1'b1;
				snake_body[55] :prnt <= 1'b1;
				snake_body[56] :prnt <= 1'b1;
				snake_body[57] :prnt <= 1'b1;
				snake_body[58] :prnt <= 1'b1;
				snake_body[59] :prnt <= 1'b1;
				snake_body[60] :prnt <= 1'b1;
				snake_body[61] :prnt <= 1'b1;
				snake_body[62] :prnt <= 1'b1;
				snake_body[63] :prnt <= 1'b1;
				snake_body[64] :prnt <= 1'b1;
				snake_body[65] :prnt <= 1'b1;
				snake_body[66] :prnt <= 1'b1;
				snake_body[67] :prnt <= 1'b1;
				snake_body[68] :prnt <= 1'b1;
				snake_body[69] :prnt <= 1'b1;
				snake_body[70] :prnt <= 1'b1;
				snake_body[71] :prnt <= 1'b1;
				snake_body[72] :prnt <= 1'b1;
				snake_body[73] :prnt <= 1'b1;
				snake_body[74] :prnt <= 1'b1;
				snake_body[75] :prnt <= 1'b1;
				snake_body[76] :prnt <= 1'b1;
				snake_body[77] :prnt <= 1'b1;
				snake_body[78] :prnt <= 1'b1;
				snake_body[79] :prnt <= 1'b1;
				snake_body[80] :prnt <= 1'b1;
				snake_body[81] :prnt <= 1'b1;
				snake_body[82] :prnt <= 1'b1;
				snake_body[83] :prnt <= 1'b1;
				snake_body[84] :prnt <= 1'b1;
				snake_body[85] :prnt <= 1'b1;
				snake_body[86] :prnt <= 1'b1;
				snake_body[87] :prnt <= 1'b1;
				snake_body[88] :prnt <= 1'b1;
				snake_body[89] :prnt <= 1'b1;
				snake_body[90] :prnt <= 1'b1;
				snake_body[91] :prnt <= 1'b1;
				snake_body[92] :prnt <= 1'b1;
				snake_body[93] :prnt <= 1'b1;
				snake_body[94] :prnt <= 1'b1;
				snake_body[95] :prnt <= 1'b1;
				snake_body[96] :prnt <= 1'b1;
				snake_body[97] :prnt <= 1'b1;
				snake_body[98] :prnt <= 1'b1;
				snake_body[99] :prnt <= 1'b1;
				snake_body[100] :prnt <= 1'b1;
			default:prnt <= 1'b0;
		endcase
	end
	
	
	always @(posedge post_ticket or posedge rst)
	begin
		if(rst)begin
		
			game_over = 0;
			snake_len = 8'd10;
			
			snake_body[0]  <= {8'h40,8'h40};
			snake_body[1]  <= {8'h3F,8'h40};
			snake_body[2]  <= {8'h3E,8'h40};
			snake_body[3]  <= {8'h3D,8'h40};
			snake_body[4]  <= {8'h3C,8'h40};
			snake_body[5]  <= {8'h3B,8'h40};
			snake_body[6]  <= {8'h3A,8'h40};
			snake_body[7]  <= {8'h39,8'h40};
			snake_body[8]  <= {8'h38,8'h40};
			snake_body[9]  <= {8'h37,8'h40};
			snake_body[10] <= {8'h36,8'h40};
			snake_body[11] <= {8'h35,8'h40};
			snake_body[12] <= {8'h34,8'h40};
			snake_body[13] <= {8'h33,8'h40};
			snake_body[14] <= {8'h32,8'h40};
			snake_body[15] <= {8'h31,8'h40};
			snake_body[16] <= {8'h30,8'h40};
			snake_body[17] <= {8'h2F,8'h40};
			snake_body[18] <= {8'h2E,8'h40};
			snake_body[19] <= 16'd0;
			snake_body[20] <= 16'd0;
			snake_body[21] <= 16'd0;
			snake_body[22] <= 16'd0;
			snake_body[23] <= 16'd0;
			snake_body[24] <= 16'd0;
			snake_body[25] <= 16'd0;
			snake_body[26] <= 16'd0;
			snake_body[27] <= 16'd0;
			snake_body[28] <= 16'd0;
			snake_body[29] <= 16'd0;
			snake_body[30] <= 16'd0;
			snake_body[31] <= 16'd0;
			snake_body[32] <= 16'd0;
			snake_body[33] <= 16'd0;
			snake_body[34] <= 16'd0;
			snake_body[35] <= 16'd0;
			snake_body[36] <= 16'd0;
			snake_body[37] <= 16'd0;
			snake_body[38] <= 16'd0;
			snake_body[39] <= 16'd0;
			snake_body[40] <= 16'd0;
			snake_body[41] <= 16'd0;
			snake_body[42] <= 16'd0;
			snake_body[43] <= 16'd0;
			snake_body[44] <= 16'd0;
			snake_body[45] <= 16'd0;
			snake_body[46] <= 16'd0;
			snake_body[47] <= 16'd0;
			snake_body[48] <= 16'd0;
			snake_body[49] <= 16'd0;
			snake_body[50] <= 16'd0;
			snake_body[51] <= 16'd0;
			snake_body[52] <= 16'd0;
			snake_body[53] <= 16'd0;
			snake_body[54] <= 16'd0;
			snake_body[55] <= 16'd0;
			snake_body[56] <= 16'd0;
			snake_body[57] <= 16'd0;
			snake_body[58] <= 16'd0;
			snake_body[59] <= 16'd0;
			snake_body[60] <= 16'd0;
			snake_body[61] <= 16'd0;
			snake_body[62] <= 16'd0;
			snake_body[63] <= 16'd0;
			snake_body[64] <= 16'd0;
			snake_body[65] <= 16'd0;
			snake_body[66] <= 16'd0;
			snake_body[67] <= 16'd0;
			snake_body[68] <= 16'd0;
			snake_body[69] <= 16'd0;
			snake_body[70] <= 16'd0;
			snake_body[71] <= 16'd0;
			snake_body[72] <= 16'd0;
			snake_body[73] <= 16'd0;
			snake_body[74] <= 16'd0;
			snake_body[75] <= 16'd0;
			snake_body[76] <= 16'd0;
			snake_body[77] <= 16'd0;
			snake_body[78] <= 16'd0;
			snake_body[79] <= 16'd0;
			snake_body[80] <= 16'd0;
			snake_body[81] <= 16'd0;
			snake_body[82] <= 16'd0;
			snake_body[83] <= 16'd0;
			snake_body[84] <= 16'd0;
			snake_body[85] <= 16'd0;
			snake_body[86] <= 16'd0;
			snake_body[87] <= 16'd0;
			snake_body[88] <= 16'd0;
			snake_body[89] <= 16'd0;
			snake_body[90] <= 16'd0;
			snake_body[91] <= 16'd0;
			snake_body[92] <= 16'd0;
			snake_body[93] <= 16'd0;
			snake_body[94] <= 16'd0;
			snake_body[95] <= 16'd0;
			snake_body[96] <= 16'd0;
			snake_body[97] <= 16'd0;
			snake_body[98] <= 16'd0;
			snake_body[99] <= 16'd0;
			snake_body[100]<= 16'd0;
		end
		else begin
			
			Head_X = pos_X;
			Head_Y = pos_Y;
			
			
			
			if(snake_len >= 1) begin
				snake_body[1] <= snake_body[0];
			end 
			else begin
				snake_body[1] <= 16'h0;
				game_over = 0;
			end

			if(snake_len >= 2) begin
				snake_body[2] <= snake_body[1];
			end 
			else begin
				snake_body[2] <= 16'h0;
				game_over = 0;
			end

			if(snake_len >= 3) begin
				snake_body[3] <= snake_body[2];
			end 
			else begin
				snake_body[3] <= 16'h0;
				game_over = 0;
			end

			if(snake_len >= 4) begin
				snake_body[4] <= snake_body[3];
			end 
			else begin
				snake_body[4] <= 16'h0;
				game_over = 0;
			end

			if(snake_len >= 5) begin
				snake_body[5] <= snake_body[4];
			end 
			else begin
				snake_body[5] <= 16'h0;
				game_over = 0;
			end

			if(snake_len >= 6) begin
				snake_body[6] <= snake_body[5];
			end 
			else begin
				snake_body[6] <= 16'h0;
				game_over = 0;
			end

			if(snake_len >= 7) begin
				snake_body[7] <= snake_body[6];
			end 
			else begin
				snake_body[7] <= 16'h0;
				game_over = 0;
			end

			if(snake_len >= 8) begin
				snake_body[8] <= snake_body[7];
			end 
			else begin
				snake_body[8] <= 16'h0;
				game_over = 0;
			end

			if(snake_len >= 9) begin
				snake_body[9] <= snake_body[8];
			end 
			else begin
				snake_body[9] <= 16'h0;
				game_over = 0;
			end

			if(snake_len >= 10) begin
				snake_body[10] <= snake_body[9];
			end 
			else begin
				snake_body[10] <= 16'h0;
				game_over = 0;
			end

			if(snake_len >= 11) begin
				snake_body[11] <= snake_body[10];
			end 
			else begin
				snake_body[11] <= 16'h0;
				game_over = 0;
			end

			if(snake_len >= 12) begin
				snake_body[12] <= snake_body[11];
			end 
			else begin
				snake_body[12] <= 16'h0;
				game_over = 0;
			end

			if(snake_len >= 13) begin
				snake_body[13] <= snake_body[12];
			end 
			else begin
				snake_body[13] <= 16'h0;
				game_over = 0;
			end

			if(snake_len >= 14) begin
				snake_body[14] <= snake_body[13];
			end 
			else begin
				snake_body[14] <= 16'h0;
				game_over = 0;
			end

			if(snake_len >= 15) begin
				snake_body[15] <= snake_body[14];
			end 
			else begin
				snake_body[15] <= 16'h0;
				game_over = 0;
			end

			if(snake_len >= 16) begin
				snake_body[16] <= snake_body[15];
			end 
			else begin
				snake_body[16] <= 16'h0;
				game_over = 0;
			end

			if(snake_len >= 17) begin
				snake_body[17] <= snake_body[16];
			end 
			else begin
				snake_body[17] <= 16'h0;
				game_over = 0;
			end

			if(snake_len >= 18) begin
				snake_body[18] <= snake_body[17];
			end 
			else begin
				snake_body[18] <= 16'h0;
				game_over = 0;
			end

			if(snake_len >= 19) begin
				snake_body[19] <= snake_body[18];
			end 
			else begin
				snake_body[19] <= 16'h0;
				game_over = 0;
			end

			if(snake_len >= 20) begin
				snake_body[20] <= snake_body[19];
			end 
			else begin
				snake_body[20] <= 16'h0;
				game_over = 0;
			end

			if(snake_len >= 21) begin
				snake_body[21] <= snake_body[20];
			end 
			else begin
				snake_body[21] <= 16'h0;
				game_over = 0;
			end

			if(snake_len >= 22) begin
				snake_body[22] <= snake_body[21];
			end 
			else begin
				snake_body[22] <= 16'h0;
				game_over = 0;
			end

			if(snake_len >= 23) begin
				snake_body[23] <= snake_body[22];
			end 
			else begin
				snake_body[23] <= 16'h0;
				game_over = 0;
			end

			if(snake_len >= 24) begin
				snake_body[24] <= snake_body[23];
			end 
			else begin
				snake_body[24] <= 16'h0;
				game_over = 0;
			end

			if(snake_len >= 25) begin
				snake_body[25] <= snake_body[24];
			end 
			else begin
				snake_body[25] <= 16'h0;
				game_over = 0;
			end

			if(snake_len >= 26) begin
				snake_body[26] <= snake_body[25];
			end 
			else begin
				snake_body[26] <= 16'h0;
				game_over = 0;
			end

			if(snake_len >= 27) begin
				snake_body[27] <= snake_body[26];
			end 
			else begin
				snake_body[27] <= 16'h0;
				game_over = 0;
			end

			if(snake_len >= 28) begin
				snake_body[28] <= snake_body[27];
			end 
			else begin
				snake_body[28] <= 16'h0;
				game_over = 0;
			end

			if(snake_len >= 29) begin
				snake_body[29] <= snake_body[28];
			end 
			else begin
				snake_body[29] <= 16'h0;
				game_over = 0;
			end

			if(snake_len >= 30) begin
				snake_body[30] <= snake_body[29];
			end 
			else begin
				snake_body[30] <= 16'h0;
				game_over = 0;
			end

			if(snake_len >= 31) begin
				snake_body[31] <= snake_body[30];
			end 
			else begin
				snake_body[31] <= 16'h0;
				game_over = 0;
			end

			if(snake_len >= 32) begin
				snake_body[32] <= snake_body[31];
			end 
			else begin
				snake_body[32] <= 16'h0;
				game_over = 0;
			end

			if(snake_len >= 33) begin
				snake_body[33] <= snake_body[32];
			end 
			else begin
				snake_body[33] <= 16'h0;
				game_over = 0;
			end

			if(snake_len >= 34) begin
				snake_body[34] <= snake_body[33];
			end 
			else begin
				snake_body[34] <= 16'h0;
				game_over = 0;
			end

			if(snake_len >= 35) begin
				snake_body[35] <= snake_body[34];
			end 
			else begin
				snake_body[35] <= 16'h0;
				game_over = 0;
			end

			if(snake_len >= 36) begin
				snake_body[36] <= snake_body[35];
			end 
			else begin
				snake_body[36] <= 16'h0;
				game_over = 0;
			end

			if(snake_len >= 37) begin
				snake_body[37] <= snake_body[36];
			end 
			else begin
				snake_body[37] <= 16'h0;
				game_over = 0;
			end

			if(snake_len >= 38) begin
				snake_body[38] <= snake_body[37];
			end 
			else begin
				snake_body[38] <= 16'h0;
				game_over = 0;
			end

			if(snake_len >= 39) begin
				snake_body[39] <= snake_body[38];
			end 
			else begin
				snake_body[39] <= 16'h0;
				game_over = 0;
			end

			if(snake_len >= 40) begin
				snake_body[40] <= snake_body[39];
			end 
			else begin
				snake_body[40] <= 16'h0;
				game_over = 0;
			end

			if(snake_len >= 41) begin
				snake_body[41] <= snake_body[40];
			end 
			else begin
				snake_body[41] <= 16'h0;
				game_over = 0;
			end

			if(snake_len >= 42) begin
				snake_body[42] <= snake_body[41];
			end 
			else begin
				snake_body[42] <= 16'h0;
				game_over = 0;
			end

			if(snake_len >= 43) begin
				snake_body[43] <= snake_body[42];
			end 
			else begin
				snake_body[43] <= 16'h0;
				game_over = 0;
			end

			if(snake_len >= 44) begin
				snake_body[44] <= snake_body[43];
			end 
			else begin
				snake_body[44] <= 16'h0;
				game_over = 0;
			end

			if(snake_len >= 45) begin
				snake_body[45] <= snake_body[44];
			end 
			else begin
				snake_body[45] <= 16'h0;
				game_over = 0;
			end

			if(snake_len >= 46) begin
				snake_body[46] <= snake_body[45];
			end 
			else begin
				snake_body[46] <= 16'h0;
				game_over = 0;
			end

			if(snake_len >= 47) begin
				snake_body[47] <= snake_body[46];
			end 
			else begin
				snake_body[47] <= 16'h0;
				game_over = 0;
			end

			if(snake_len >= 48) begin
				snake_body[48] <= snake_body[47];
			end 
			else begin
				snake_body[48] <= 16'h0;
				game_over = 0;
			end

			if(snake_len >= 49) begin
				snake_body[49] <= snake_body[48];
			end 
			else begin
				snake_body[49] <= 16'h0;
				game_over = 0;
			end

			if(snake_len >= 50) begin
				snake_body[50] <= snake_body[49];
			end 
			else begin
				snake_body[50] <= 16'h0;
				game_over = 0;
			end

			if(snake_len >= 51) begin
				snake_body[51] <= snake_body[50];
			end 
			else begin
				snake_body[51] <= 16'h0;
				game_over = 0;
			end

			if(snake_len >= 52) begin
				snake_body[52] <= snake_body[51];
			end 
			else begin
				snake_body[52] <= 16'h0;
				game_over = 0;
			end

			if(snake_len >= 53) begin
				snake_body[53] <= snake_body[52];
			end 
			else begin
				snake_body[53] <= 16'h0;
				game_over = 0;
			end

			if(snake_len >= 54) begin
				snake_body[54] <= snake_body[53];
			end 
			else begin
				snake_body[54] <= 16'h0;
				game_over = 0;
			end

			if(snake_len >= 55) begin
				snake_body[55] <= snake_body[54];
			end 
			else begin
				snake_body[55] <= 16'h0;
				game_over = 0;
			end

			if(snake_len >= 56) begin
				snake_body[56] <= snake_body[55];
			end 
			else begin
				snake_body[56] <= 16'h0;
				game_over = 0;
			end

			if(snake_len >= 57) begin
				snake_body[57] <= snake_body[56];
			end 
			else begin
				snake_body[57] <= 16'h0;
				game_over = 0;
			end

			if(snake_len >= 58) begin
				snake_body[58] <= snake_body[57];
			end 
			else begin
				snake_body[58] <= 16'h0;
				game_over = 0;
			end

			if(snake_len >= 59) begin
				snake_body[59] <= snake_body[58];
			end 
			else begin
				snake_body[59] <= 16'h0;
				game_over = 0;
			end

			if(snake_len >= 60) begin
				snake_body[60] <= snake_body[59];
			end 
			else begin
				snake_body[60] <= 16'h0;
				game_over = 0;
			end

			if(snake_len >= 61) begin
				snake_body[61] <= snake_body[60];
			end 
			else begin
				snake_body[61] <= 16'h0;
				game_over = 0;
			end

			if(snake_len >= 62) begin
				snake_body[62] <= snake_body[61];
			end 
			else begin
				snake_body[62] <= 16'h0;
				game_over = 0;
			end

			if(snake_len >= 63) begin
				snake_body[63] <= snake_body[62];
			end 
			else begin
				snake_body[63] <= 16'h0;
				game_over = 0;
			end

			if(snake_len >= 64) begin
				snake_body[64] <= snake_body[63];
			end 
			else begin
				snake_body[64] <= 16'h0;
				game_over = 0;
			end

			if(snake_len >= 65) begin
				snake_body[65] <= snake_body[64];
			end 
			else begin
				snake_body[65] <= 16'h0;
				game_over = 0;
			end

			if(snake_len >= 66) begin
				snake_body[66] <= snake_body[65];
			end 
			else begin
				snake_body[66] <= 16'h0;
				game_over = 0;
			end

			if(snake_len >= 67) begin
				snake_body[67] <= snake_body[66];
			end 
			else begin
				snake_body[67] <= 16'h0;
				game_over = 0;
			end

			if(snake_len >= 68) begin
				snake_body[68] <= snake_body[67];
			end 
			else begin
				snake_body[68] <= 16'h0;
				game_over = 0;
			end

			if(snake_len >= 69) begin
				snake_body[69] <= snake_body[68];
			end 
			else begin
				snake_body[69] <= 16'h0;
				game_over = 0;
			end

			if(snake_len >= 70) begin
				snake_body[70] <= snake_body[69];
			end 
			else begin
				snake_body[70] <= 16'h0;
				game_over = 0;
			end

			if(snake_len >= 71) begin
				snake_body[71] <= snake_body[70];
			end 
			else begin
				snake_body[71] <= 16'h0;
				game_over = 0;
			end

			if(snake_len >= 72) begin
				snake_body[72] <= snake_body[71];
			end 
			else begin
				snake_body[72] <= 16'h0;
				game_over = 0;
			end

			if(snake_len >= 73) begin
				snake_body[73] <= snake_body[72];
			end 
			else begin
				snake_body[73] <= 16'h0;
				game_over = 0;
			end

			if(snake_len >= 74) begin
				snake_body[74] <= snake_body[73];
			end 
			else begin
				snake_body[74] <= 16'h0;
				game_over = 0;
			end

			if(snake_len >= 75) begin
				snake_body[75] <= snake_body[74];
			end 
			else begin
				snake_body[75] <= 16'h0;
				game_over = 0;
			end

			if(snake_len >= 76) begin
				snake_body[76] <= snake_body[75];
			end 
			else begin
				snake_body[76] <= 16'h0;
				game_over = 0;
			end

			if(snake_len >= 77) begin
				snake_body[77] <= snake_body[76];
			end 
			else begin
				snake_body[77] <= 16'h0;
				game_over = 0;
			end

			if(snake_len >= 78) begin
				snake_body[78] <= snake_body[77];
			end 
			else begin
				snake_body[78] <= 16'h0;
				game_over = 0;
			end

			if(snake_len >= 79) begin
				snake_body[79] <= snake_body[78];
			end 
			else begin
				snake_body[79] <= 16'h0;
				game_over = 0;
			end

			if(snake_len >= 80) begin
				snake_body[80] <= snake_body[79];
			end 
			else begin
				snake_body[80] <= 16'h0;
				game_over = 0;
			end

			if(snake_len >= 81) begin
				snake_body[81] <= snake_body[80];
			end 
			else begin
				snake_body[81] <= 16'h0;
				game_over = 0;
			end

			if(snake_len >= 82) begin
				snake_body[82] <= snake_body[81];
			end 
			else begin
				snake_body[82] <= 16'h0;
				game_over = 0;
			end

			if(snake_len >= 83) begin
				snake_body[83] <= snake_body[82];
			end 
			else begin
				snake_body[83] <= 16'h0;
				game_over = 0;
			end

			if(snake_len >= 84) begin
				snake_body[84] <= snake_body[83];
			end 
			else begin
				snake_body[84] <= 16'h0;
				game_over = 0;
			end

			if(snake_len >= 85) begin
				snake_body[85] <= snake_body[84];
			end 
			else begin
				snake_body[85] <= 16'h0;
				game_over = 0;
			end

			if(snake_len >= 86) begin
				snake_body[86] <= snake_body[85];
			end 
			else begin
				snake_body[86] <= 16'h0;
				game_over = 0;
			end

			if(snake_len >= 87) begin
				snake_body[87] <= snake_body[86];
			end 
			else begin
				snake_body[87] <= 16'h0;
				game_over = 0;
			end

			if(snake_len >= 88) begin
				snake_body[88] <= snake_body[87];
			end 
			else begin
				snake_body[88] <= 16'h0;
				game_over = 0;
			end

			if(snake_len >= 89) begin
				snake_body[89] <= snake_body[88];
			end 
			else begin
				snake_body[89] <= 16'h0;
				game_over = 0;
			end

			if(snake_len >= 90) begin
				snake_body[90] <= snake_body[89];
			end 
			else begin
				snake_body[90] <= 16'h0;
				game_over = 0;
			end

			if(snake_len >= 91) begin
				snake_body[91] <= snake_body[90];
			end 
			else begin
				snake_body[91] <= 16'h0;
				game_over = 0;
			end

			if(snake_len >= 92) begin
				snake_body[92] <= snake_body[91];
			end 
			else begin
				snake_body[92] <= 16'h0;
				game_over = 0;
			end

			if(snake_len >= 93) begin
				snake_body[93] <= snake_body[92];
			end 
			else begin
				snake_body[93] <= 16'h0;
				game_over = 0;
			end

			if(snake_len >= 94) begin
				snake_body[94] <= snake_body[93];
			end 
			else begin
				snake_body[94] <= 16'h0;
				game_over = 0;
			end

			if(snake_len >= 95) begin
				snake_body[95] <= snake_body[94];
			end 
			else begin
				snake_body[95] <= 16'h0;
				game_over = 0;
			end

			if(snake_len >= 96) begin
				snake_body[96] <= snake_body[95];
			end 
			else begin
				snake_body[96] <= 16'h0;
				game_over = 0;
			end

			if(snake_len >= 97) begin
				snake_body[97] <= snake_body[96];
			end 
			else begin
				snake_body[97] <= 16'h0;
				game_over = 0;
			end

			if(snake_len >= 98) begin
				snake_body[98] <= snake_body[97];
			end 
			else begin
				snake_body[98] <= 16'h0;
				game_over = 0;
			end

			if(snake_len >= 99) begin
				snake_body[99] <= snake_body[98];
			end 
			else begin
				snake_body[99] <= 16'h0;
				game_over = 0;
			end

			if(snake_len >= 100) begin
				snake_body[100] <= snake_body[99];
			end 
			else begin
				snake_body[100] <= 16'h0;
				game_over = 0;
			end

			
		   
			//set the head of snake at the new position 
			if(!game_over) begin
				snake_body[0] <= {Head_X,Head_Y};
			end
			else begin
				snake_body[0] <= 0;
			end
			
			
			//check if snake had eat the food and increase the body snake length
			if(!game_over && snake_body[0]== {food_X,food_Y}) begin
				make_food = 1;
				snake_len = snake_len + 1;
			end
			else begin
				 make_food = 0;
			end
						
			//check if the snake head meet the snake body
			if( (snake_body[0] == snake_body[2]) && (snake_len >= 2))begin 
				game_over = 1;
			end
			else if( (snake_body[0] == snake_body[3]) && (snake_len >= 3))begin 
				game_over = 1;
			end
			else if( (snake_body[0] == snake_body[4]) && (snake_len >= 4))begin 
				game_over = 1;
			end
			else if( (snake_body[0] == snake_body[5]) && (snake_len >= 5))begin 
				game_over = 1;
			end
			else if( (snake_body[0] == snake_body[6]) && (snake_len >= 6))begin 
				game_over = 1;
			end
			else if( (snake_body[0] == snake_body[7]) && (snake_len >= 7))begin 
				game_over = 1;
			end
			else if( (snake_body[0] == snake_body[8]) && (snake_len >= 8))begin 
				game_over = 1;
			end
			else if( (snake_body[0] == snake_body[9]) && (snake_len >= 9))begin 
				game_over = 1;
			end
			else if( (snake_body[0] == snake_body[10]) && (snake_len >= 10))begin 
				game_over = 1;
			end
			else if( (snake_body[0] == snake_body[11]) && (snake_len >= 11))begin 
				game_over = 1;
			end
			else if( (snake_body[0] == snake_body[12]) && (snake_len >= 12))begin 
				game_over = 1;
			end
			else if( (snake_body[0] == snake_body[13]) && (snake_len >= 13))begin 
				game_over = 1;
			end
			else if( (snake_body[0] == snake_body[14]) && (snake_len >= 14))begin 
				game_over = 1;
			end
			else if( (snake_body[0] == snake_body[15]) && (snake_len >= 15))begin 
				game_over = 1;
			end
			else if( (snake_body[0] == snake_body[16]) && (snake_len >= 16))begin 
				game_over = 1;
			end
			else if( (snake_body[0] == snake_body[17]) && (snake_len >= 17))begin 
				game_over = 1;
			end
			else if( (snake_body[0] == snake_body[18]) && (snake_len >= 18))begin 
				game_over = 1;
			end
			else if( (snake_body[0] == snake_body[19]) && (snake_len >= 19))begin 
				game_over = 1;
			end
			else if( (snake_body[0] == snake_body[20]) && (snake_len >= 20))begin 
				game_over = 1;
			end
			else if( (snake_body[0] == snake_body[21]) && (snake_len >= 21))begin 
				game_over = 1;
			end
			else if( (snake_body[0] == snake_body[22]) && (snake_len >= 22))begin 
				game_over = 1;
			end
			else if( (snake_body[0] == snake_body[23]) && (snake_len >= 23))begin 
				game_over = 1;
			end
			else if( (snake_body[0] == snake_body[24]) && (snake_len >= 24))begin 
				game_over = 1;
			end
			else if( (snake_body[0] == snake_body[25]) && (snake_len >= 25))begin 
				game_over = 1;
			end
			else if( (snake_body[0] == snake_body[26]) && (snake_len >= 26))begin 
				game_over = 1;
			end
			else if( (snake_body[0] == snake_body[27]) && (snake_len >= 27))begin 
				game_over = 1;
			end
			else if( (snake_body[0] == snake_body[28]) && (snake_len >= 28))begin 
				game_over = 1;
			end
			else if( (snake_body[0] == snake_body[29]) && (snake_len >= 29))begin 
				game_over = 1;
			end
			else if( (snake_body[0] == snake_body[30]) && (snake_len >= 30))begin 
				game_over = 1;
			end
			else if( (snake_body[0] == snake_body[31]) && (snake_len >= 31))begin 
				game_over = 1;
			end
			else if( (snake_body[0] == snake_body[32]) && (snake_len >= 32))begin 
				game_over = 1;
			end
			else if( (snake_body[0] == snake_body[33]) && (snake_len >= 33))begin 
				game_over = 1;
			end
			else if( (snake_body[0] == snake_body[34]) && (snake_len >= 34))begin 
				game_over = 1;
			end
			else if( (snake_body[0] == snake_body[35]) && (snake_len >= 35))begin 
				game_over = 1;
			end
			else if( (snake_body[0] == snake_body[36]) && (snake_len >= 36))begin 
				game_over = 1;
			end
			else if( (snake_body[0] == snake_body[37]) && (snake_len >= 37))begin 
				game_over = 1;
			end
			else if( (snake_body[0] == snake_body[38]) && (snake_len >= 38))begin 
				game_over = 1;
			end
			else if( (snake_body[0] == snake_body[39]) && (snake_len >= 39))begin 
				game_over = 1;
			end
			else if( (snake_body[0] == snake_body[40]) && (snake_len >= 40))begin 
				game_over = 1;
			end
			else if( (snake_body[0] == snake_body[41]) && (snake_len >= 41))begin 
				game_over = 1;
			end
			else if( (snake_body[0] == snake_body[42]) && (snake_len >= 42))begin 
				game_over = 1;
			end
			else if( (snake_body[0] == snake_body[43]) && (snake_len >= 43))begin 
				game_over = 1;
			end
			else if( (snake_body[0] == snake_body[44]) && (snake_len >= 44))begin 
				game_over = 1;
			end
			else if( (snake_body[0] == snake_body[45]) && (snake_len >= 45))begin 
				game_over = 1;
			end
			else if( (snake_body[0] == snake_body[46]) && (snake_len >= 46))begin 
				game_over = 1;
			end
			else if( (snake_body[0] == snake_body[47]) && (snake_len >= 47))begin 
				game_over = 1;
			end
			else if( (snake_body[0] == snake_body[48]) && (snake_len >= 48))begin 
				game_over = 1;
			end
			else if( (snake_body[0] == snake_body[49]) && (snake_len >= 49))begin 
				game_over = 1;
			end
			else if( (snake_body[0] == snake_body[50]) && (snake_len >= 50))begin 
				game_over = 1;
			end
			else if( (snake_body[0] == snake_body[51]) && (snake_len >= 51))begin 
				game_over = 1;
			end
			else if( (snake_body[0] == snake_body[52]) && (snake_len >= 52))begin 
				game_over = 1;
			end
			else if( (snake_body[0] == snake_body[53]) && (snake_len >= 53))begin 
				game_over = 1;
			end
			else if( (snake_body[0] == snake_body[54]) && (snake_len >= 54))begin 
				game_over = 1;
			end
			else if( (snake_body[0] == snake_body[55]) && (snake_len >= 55))begin 
				game_over = 1;
			end
			else if( (snake_body[0] == snake_body[56]) && (snake_len >= 56))begin 
				game_over = 1;
			end
			else if( (snake_body[0] == snake_body[57]) && (snake_len >= 57))begin 
				game_over = 1;
			end
			else if( (snake_body[0] == snake_body[58]) && (snake_len >= 58))begin 
				game_over = 1;
			end
			else if( (snake_body[0] == snake_body[59]) && (snake_len >= 59))begin 
				game_over = 1;
			end
			else if( (snake_body[0] == snake_body[60]) && (snake_len >= 60))begin 
				game_over = 1;
			end
			else if( (snake_body[0] == snake_body[61]) && (snake_len >= 61))begin 
				game_over = 1;
			end
			else if( (snake_body[0] == snake_body[62]) && (snake_len >= 62))begin 
				game_over = 1;
			end
			else if( (snake_body[0] == snake_body[63]) && (snake_len >= 63))begin 
				game_over = 1;
			end
			else if( (snake_body[0] == snake_body[64]) && (snake_len >= 64))begin 
				game_over = 1;
			end
			else if( (snake_body[0] == snake_body[65]) && (snake_len >= 65))begin 
				game_over = 1;
			end
			else if( (snake_body[0] == snake_body[66]) && (snake_len >= 66))begin 
				game_over = 1;
			end
			else if( (snake_body[0] == snake_body[67]) && (snake_len >= 67))begin 
				game_over = 1;
			end
			else if( (snake_body[0] == snake_body[68]) && (snake_len >= 68))begin 
				game_over = 1;
			end
			else if( (snake_body[0] == snake_body[69]) && (snake_len >= 69))begin 
				game_over = 1;
			end
			else if( (snake_body[0] == snake_body[70]) && (snake_len >= 70))begin 
				game_over = 1;
			end
			else if( (snake_body[0] == snake_body[71]) && (snake_len >= 71))begin 
				game_over = 1;
			end
			else if( (snake_body[0] == snake_body[72]) && (snake_len >= 72))begin 
				game_over = 1;
			end
			else if( (snake_body[0] == snake_body[73]) && (snake_len >= 73))begin 
				game_over = 1;
			end
			else if( (snake_body[0] == snake_body[74]) && (snake_len >= 74))begin 
				game_over = 1;
			end
			else if( (snake_body[0] == snake_body[75]) && (snake_len >= 75))begin 
				game_over = 1;
			end
			else if( (snake_body[0] == snake_body[76]) && (snake_len >= 76))begin 
				game_over = 1;
			end
			else if( (snake_body[0] == snake_body[77]) && (snake_len >= 77))begin 
				game_over = 1;
			end
			else if( (snake_body[0] == snake_body[78]) && (snake_len >= 78))begin 
				game_over = 1;
			end
			else if( (snake_body[0] == snake_body[79]) && (snake_len >= 79))begin 
				game_over = 1;
			end
			else if( (snake_body[0] == snake_body[80]) && (snake_len >= 80))begin 
				game_over = 1;
			end
			else if( (snake_body[0] == snake_body[81]) && (snake_len >= 81))begin 
				game_over = 1;
			end
			else if( (snake_body[0] == snake_body[82]) && (snake_len >= 82))begin 
				game_over = 1;
			end
			else if( (snake_body[0] == snake_body[83]) && (snake_len >= 83))begin 
				game_over = 1;
			end
			else if( (snake_body[0] == snake_body[84]) && (snake_len >= 84))begin 
				game_over = 1;
			end
			else if( (snake_body[0] == snake_body[85]) && (snake_len >= 85))begin 
				game_over = 1;
			end
			else if( (snake_body[0] == snake_body[86]) && (snake_len >= 86))begin 
				game_over = 1;
			end
			else if( (snake_body[0] == snake_body[87]) && (snake_len >= 87))begin 
				game_over = 1;
			end
			else if( (snake_body[0] == snake_body[88]) && (snake_len >= 88))begin 
				game_over = 1;
			end
			else if( (snake_body[0] == snake_body[89]) && (snake_len >= 89))begin 
				game_over = 1;
			end
			else if( (snake_body[0] == snake_body[90]) && (snake_len >= 90))begin 
				game_over = 1;
			end
			else if( (snake_body[0] == snake_body[91]) && (snake_len >= 91))begin 
				game_over = 1;
			end
			else if( (snake_body[0] == snake_body[92]) && (snake_len >= 92))begin 
				game_over = 1;
			end
			else if( (snake_body[0] == snake_body[93]) && (snake_len >= 93))begin 
				game_over = 1;
			end
			else if( (snake_body[0] == snake_body[94]) && (snake_len >= 94))begin 
				game_over = 1;
			end
			else if( (snake_body[0] == snake_body[95]) && (snake_len >= 95))begin 
				game_over = 1;
			end
			else if( (snake_body[0] == snake_body[96]) && (snake_len >= 96))begin 
				game_over = 1;
			end
			else if( (snake_body[0] == snake_body[97]) && (snake_len >= 97))begin 
				game_over = 1;
			end
			else if( (snake_body[0] == snake_body[98]) && (snake_len >= 98))begin 
				game_over = 1;
			end
			else if( (snake_body[0] == snake_body[99]) && (snake_len >= 99))begin 
				game_over = 1;
			end
			else if( (snake_body[0] == snake_body[100]) && (snake_len >= 100))begin 
				game_over = 1;
			end
			
			//check if hit to the wall 
			if ( ( snake_body[0][15:8] == 8'h91 )|| ( snake_body[0][15:8] == 8'h10 )|| ( snake_body[0][7:0] == 8'h6F )||( snake_body[0][7:0] == 8'h0A ) )begin
		
				game_over = 1;
			end			
		end
	end
			
	


endmodule
