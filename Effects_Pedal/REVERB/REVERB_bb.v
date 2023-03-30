
module REVERB (
	ast_sink_data,
	ast_sink_valid,
	ast_sink_error,
	ast_source_data,
	ast_source_valid,
	ast_source_error,
	clk,
	reset_n);	

	input	[11:0]	ast_sink_data;
	input		ast_sink_valid;
	input	[1:0]	ast_sink_error;
	output	[38:0]	ast_source_data;
	output		ast_source_valid;
	output	[1:0]	ast_source_error;
	input		clk;
	input		reset_n;
endmodule
