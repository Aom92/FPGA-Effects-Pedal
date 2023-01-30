	Effect_Pedal u0 (
		.clk_clk                          (<connected-to-clk_clk>),                          //                clk.clk
		.reset_reset_n                    (<connected-to-reset_reset_n>),                    //              reset.reset_n
		.adc_0_sample_clk_clk             (<connected-to-adc_0_sample_clk_clk>),             //   adc_0_sample_clk.clk
		.adc_0_adc_response_valid         (<connected-to-adc_0_adc_response_valid>),         // adc_0_adc_response.valid
		.adc_0_adc_response_startofpacket (<connected-to-adc_0_adc_response_startofpacket>), //                   .startofpacket
		.adc_0_adc_response_endofpacket   (<connected-to-adc_0_adc_response_endofpacket>),   //                   .endofpacket
		.adc_0_adc_response_empty         (<connected-to-adc_0_adc_response_empty>),         //                   .empty
		.adc_0_adc_response_channel       (<connected-to-adc_0_adc_response_channel>),       //                   .channel
		.adc_0_adc_response_data          (<connected-to-adc_0_adc_response_data>)           //                   .data
	);

