	ADC u0 (
		.adc_response_valid         (<connected-to-adc_response_valid>),         // adc_response.valid
		.adc_response_startofpacket (<connected-to-adc_response_startofpacket>), //             .startofpacket
		.adc_response_endofpacket   (<connected-to-adc_response_endofpacket>),   //             .endofpacket
		.adc_response_empty         (<connected-to-adc_response_empty>),         //             .empty
		.adc_response_channel       (<connected-to-adc_response_channel>),       //             .channel
		.adc_response_data          (<connected-to-adc_response_data>),          //             .data
		.clk_adc_clk                (<connected-to-clk_adc_clk>),                //      clk_adc.clk
		.reset_reset_n              (<connected-to-reset_reset_n>)               //        reset.reset_n
	);

