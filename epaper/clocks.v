`ifndef __CLOCKS__
`define __CLOCKS__

module clockDivider(input clock, output reg out);
	reg[32:0] counter = 0;
	
	always @(posedge clock)
		begin
			counter = counter + 1;
			
			if (counter > 0)
				begin
					counter = 0;
					out = out ^ 1;
				end
		end
endmodule

module clockGenerator(input clock, output reg clock1);
	reg [32:0] clockCounter1 = 0;
		
	always @(posedge clock)
		begin
			clockCounter1 = clockCounter1 + 1;
			
			if (clockCounter1 > 11)
				begin
					clockCounter1 = 0;
					clock1 = clock1 ^ 1;
				end
		end
endmodule

module posEdgeDet(input sig,            // Input signal for which positive edge has to be detected
                      input clk,            // Input signal for clock
                      output pe);           // Output signal that gives a pulse when a positive edge occurs

    reg   sig_dly;                          // Internal signal to store the delayed version of signal

    // This always block ensures that sig_dly is exactly 1 clock behind sig
	always @ (posedge clk) begin
		sig_dly <= sig;
	end

    // Combinational logic where sig is AND with delayed, inverted version of sig
    // Assign statement assigns the evaluated expression in the RHS to the internal net pe
	assign pe = sig & ~sig_dly;            
endmodule 

`endif