`include "epaperDriver.v"

// ckv = gp[0]
// spv = gp[1]
// le = gp[2]
// sph = gp[3]
// cl = gp[4]
// d0 = gp[5]
// d1 = gp[6]
// d2 = gp[7]
// d3 = gp[8]
// d4 = gp[9]
// d5 = gp[10]
// d6 = gp[11]
// d6 = gp[12]
// d7 = gp[13]


module top(input clk_25mhz, input [4:3] btn, output [12:0]gp, output [7:0]led);
	wire clk_100mhz;
	wire clk_divOut;
	wire ctrlClockOut;
	wire [7:0] epaperDataWires;
	wire spvFrameConut;
	
	pll myPll(clk_25mhz, clk_100mhz);
	clockDivider clckDiv(clk_100mhz, clk_divOut);
	// clockGenerator vClock(clk_div, vClockOut);
	
	posEdgeDet spvPosEdge(gp[1], clk_divOut, spvFrameConut);
	mainEpaperModule myCtrlModule(clk_divOut, btn[4], spvFrameConut, ctrlClockOut, gp[12:5]);
	
	ckvModule myCkvModule(ctrlClockOut, 1'b0, gp[0]);
	spvModule mySpvModule(ctrlClockOut, 1'b0, gp[1]);
	latchModule myLeModule(ctrlClockOut, 1'b0, gp[2]);
	sphModule mySphModule(ctrlClockOut, 1'b0, gp[3]);
	assign gp[4] = ctrlClockOut;
	assign led[0] = spvFrameConut;
	assign led[2] = ctrlClockOut;
	//dataModule myData(clk_divOut, btn[4:3], 1'b0, gp[12:5]);
	
endmodule 