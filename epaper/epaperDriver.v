`ifndef __VERTICAL_EPAPER_DRIVER__
`define __VERTICAL_EPAPER_DRIVER__

module ckvModule(input clock, input reset, output reg ckv);
	reg [32:0] counter = 0;
	
	always @(negedge clock)
		begin
			if (counter == 0)
				ckv = 1;
			if (counter == 216)
				ckv = 0;
			if (counter == 229)
				begin
					ckv = 1;
					counter = 0;
				end
			counter = counter + 1;
		end
endmodule

module spvModule(input clock, input reset, output reg spv);
	reg [32:0] counter = 0;
	
	always @(negedge clock)
		begin
			if (counter == 0) spv = 1;
			if (counter == 92) spv = 0;
			if (counter == 320) spv = 1;
			if (counter == 138316)
				begin
					spv = 1;
					counter = 0;
				end
			counter = counter + 1;
		end
endmodule

module latchModule(input clock, input reset, output reg le);
	reg [32:0] counter = 0;
	
	always @(negedge clock)
		begin
			if (counter == 0) le = 0;
			if (counter == 217) le = 1;
			if (counter == 220) le = 0;
			if (counter == 229) counter = 0;
			
			counter = counter + 1;
		end
endmodule


module sphModule(input clock, input reset, output reg sph);
	reg [32:0] counter = 0;
	
	always @(negedge clock)
		begin
			if (counter == 0) sph = 1;
			if (counter == 223) sph = 0;
			if (counter == 225) sph = 1;
			if (counter == 229) counter = 0;
			
			counter = counter + 1;
		end
endmodule

module dataModule(input clock, input [1:0]dataState, input reset, output reg[7:0]dataOut);
	always @(negedge clock)
		begin
			case (dataState)
				2'b01:	dataOut = 8'b01010101;
				2'b10:	dataOut = 8'b10101010;
				default: 	dataOut = 8'b11111111;
			endcase
		end
endmodule

module mainEpaperModule(input clockMainModule, input startTrigger, input frameCount, output clkOutMainModule, output [7:0] dataLines);
	reg startFlag = 0;
	reg [9:0] frame = 0;
	reg [7:0] waveform[0:85];
	
	initial begin
		$readmemh("waveformFile.txt", waveform);
	end
	
	always @(posedge clockMainModule)
		begin
				
			if (startTrigger == 1)
				begin
					startFlag = 1;
				end
			
			if (startFlag == 1'b1 && frameCount == 1'b1)
				begin
					frame = frame + 1;
					
					//if (frame >= 0 && frame < 20) dataLines = 8'b10101010;
					//if (frame >= 20 && frame < 25) dataLines = 8'b00000000;
					//if (frame >= 25 && frame < 45) dataLines = 8'b01010101;
					//if (frame >= 45 && frame < 50) dataLines = 8'b00000000;
					//if (frame >= 50 && frame < 70) dataLines = 8'b10101010;
					//if (frame >= 70 && frame < 75) dataLines = 8'b00000000;
					//if (frame >= 75 && frame < 80) dataLines = 8'b01010101;
					//if (frame >= 80 && frame < 85) dataLines = 8'b00000000;

					if (frame >= 85)
						begin
							frame = 0;
							startFlag = 0;
						end
				end
		end
		assign dataLines = waveform[frame];
		assign clkOutMainModule = (clockMainModule & startFlag) & 1'b1;
			
endmodule
							
`endif