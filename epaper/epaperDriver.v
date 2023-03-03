`ifndef __VERTICAL_EPAPER_DRIVER__
`define __VERTICAL_EPAPER_DRIVER__

// Modify resolution to suit you epaper dispaly.
`define EPAPER_W 1024
`define EPAPER_H 758

// Define for clock cycles for each of the lines. Do not modify if it's not needed!
`define EPAPER_CKV_1 ((`EPAPER_W / 4) + 16)
`define EPAPER_CKV_2 ((`EPAPER_W / 4) + 29)

`define EPAPER_SPV_1 (92)
// I guess this is proper formula??
`define EPAPER_SPV_2 (320 + (`EPAPER_W / 4) - 200)
`define EPAPER_SPV_3 (`EPAPER_CKV_2 * (`EPAPER_H + 4))

`define EPAPER_LE_1 ((`EPAPER_W / 4) + 17)
`define EPAPER_LE_2 ((`EPAPER_W / 4) + 20)
`define EPAPER_LE_3 ((`EPAPER_W / 4) + 29)

`define EPAPER_SPH_1 ((`EPAPER_W / 4) + 23)
`define EPAPER_SPH_2 ((`EPAPER_W / 4) + 25)
`define EPAPER_SPH_3 ((`EPAPER_W / 4) + 29)

module ckvModule(input clock, input reset, output reg ckv);
	reg [32:0] counter = 0;
	
	always @(negedge clock)
		begin
			if (counter == 0)
				ckv = 1;
			if (counter == `EPAPER_CKV_1)
				ckv = 0;
			if (counter == `EPAPER_CKV_2)
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
			if (counter == `EPAPER_SPV_1) spv = 0;
			if (counter == `EPAPER_SPV_2) spv = 1;
			if (counter == `EPAPER_SPV_3)
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
			if (counter == `EPAPER_LE_1) le = 1;
			if (counter == `EPAPER_LE_2) le = 0;
			if (counter == `EPAPER_LE_3) counter = 0;
			
			counter = counter + 1;
		end
endmodule


module sphModule(input clock, input reset, output reg sph);
	reg [32:0] counter = 0;
	
	always @(negedge clock)
		begin
			if (counter == 0) sph = 1;
			if (counter == `EPAPER_SPH_1) sph = 0;
			if (counter == `EPAPER_SPH_2) sph = 1;
			if (counter == `EPAPER_SPH_3) counter = 0;
			
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