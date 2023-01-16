
module ADC (
	adc_response_valid,
	adc_response_startofpacket,
	adc_response_endofpacket,
	adc_response_empty,
	adc_response_channel,
	adc_response_data,
	clk_adc_clk,
	reset_reset_n,
	sample_clk_clk);	

	output		adc_response_valid;
	output		adc_response_startofpacket;
	output		adc_response_endofpacket;
	output	[0:0]	adc_response_empty;
	output	[4:0]	adc_response_channel;
	output	[11:0]	adc_response_data;
	input		clk_adc_clk;
	input		reset_reset_n;
	output		sample_clk_clk;
endmodule
