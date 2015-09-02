`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: University of Thessaly
// Engineer: Bousdras George
// 
// Create Date:    16:40:37 05/10/2014 
// Design Name: 	 
// Module Name:    vga 
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
module vga(clk,
			  rst, 
			  h_sync, 
			  v_sync, 
			  r_pixel, 
			  c_pixel, 
			  video_on);
	
	input  clk,rst;
	output h_sync, //horizontal synchronization 
			 v_sync, //vertical synchronization 
			 r_pixel,//position of the row pixel
			 c_pixel,//position of the column pixel
			 video_on;//enable pixel on screen
	
	wire		 h_sync,
				 v_sync,
				 video_on;
	reg [9:0] r_pixel,c_pixel;	

	// Timing parameters (for 25MHz pixel clock and 640 x 480 display)
	//Horizontal parameters 
	parameter H_PIXEL = 640;
	//Horizontal pulse HSYNC_START-HSYNC_END
	parameter HSYNC_START = 659;
	parameter HSYNC_END = 755;
	//Full line of horizontal singal
	parameter H_MAX = 799;
	
	//Vertical paramters
	parameter V_PIXEL = 480;
	//verticla pulse VSYNC_START-VSYNC_END
	parameter VSYNC_START = 493;
	parameter VSYNC_END = 494;
	//Full line of vertical signal
	parameter V_MAX = 524;
	
	always @(posedge clk) begin
		
		if (rst) begin
			r_pixel 	<= 0;
			c_pixel  <= 0;
		end
		else begin
			
			//increment horizontal synchronize counter. At the end of sync line counter recycles
			if(c_pixel == H_MAX) begin
				c_pixel <= 10'b0;
			end
			else begin
				c_pixel <= c_pixel+1;
			end
			
			//increment vertical synchronize counter. At the end of sync line counter recycles
			if(r_pixel >= V_MAX && c_pixel >= H_MAX) begin
				r_pixel <= 10'b0;
			end
			else if(c_pixel == H_MAX) begin
				r_pixel <= r_pixel +1;
			end
		end
	end
	
	//generate active-low horizontal pulse
	assign h_sync   = ~((c_pixel >= HSYNC_START)&&(c_pixel <= HSYNC_END));
	//generate active_low vertical pulse
	assign v_sync   = ~((r_pixel >= VSYNC_START)&&(r_pixel <= VSYNC_END));
	//generate the video on signal for the pixels
	assign video_on = ((c_pixel < H_PIXEL)&&(r_pixel < V_PIXEL));

endmodule