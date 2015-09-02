`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:34:12 02/28/2014 
// Design Name: 
// Module Name:    LevelDebounce 
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
module LevelDebounce_rst(clk, 
								 button, 
								 debounce);

	input  	  clk,
				  button;
			 
	output 	  debounce;
	
	reg [19:0] cntr;
	reg 		  debounce;
	
	reg 		  button_1;
	reg 		  button_sync;
	
	always @(posedge clk)
	begin
		button_1 <= button;
		button_sync <= button_1;
	end
	
	
	always @(posedge clk )
	begin
		if (button_sync)begin
			cntr = cntr+1;
			if(cntr == 1000000)
			begin
				cntr = 0 ;
				debounce = 1;
			end
		end
		else
		begin
			cntr = 0;
			debounce = 0;
		end		
	end
	
endmodule
