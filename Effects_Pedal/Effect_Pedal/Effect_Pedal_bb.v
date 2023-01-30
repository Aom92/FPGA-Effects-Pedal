
module Effect_Pedal (
	clk_clk,
	reset_reset_n,
	adc_0_sample_clk_clk,
	adc_0_adc_response_valid,
	adc_0_adc_response_startofpacket,
	adc_0_adc_response_endofpacket,
	adc_0_adc_response_empty,
	adc_0_adc_response_channel,
	adc_0_adc_response_data);	

	input		clk_clk;
	input		reset_reset_n;
	output		adc_0_sample_clk_clk;
	output		adc_0_adc_response_valid;
	output		adc_0_adc_response_startofpacket;
	output		adc_0_adc_response_endofpacket;
	output	[0:0]	adc_0_adc_response_empty;
	output	[4:0]	adc_0_adc_response_channel;
	output	[11:0]	adc_0_adc_response_data;
endmodule
