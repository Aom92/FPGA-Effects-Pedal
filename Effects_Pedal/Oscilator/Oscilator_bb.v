
module Oscilator (
	clk,
	clken,
	phi_inc_i,
	fsin_o,
	out_valid,
	reset_n);	

	input		clk;
	input		clken;
	input	[31:0]	phi_inc_i;
	output	[15:0]	fsin_o;
	output		out_valid;
	input		reset_n;
endmodule
