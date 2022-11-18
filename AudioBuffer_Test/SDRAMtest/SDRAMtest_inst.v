	SDRAMtest u0 (
		.reset_reset_n                 (<connected-to-reset_reset_n>),                 //             reset.reset_n
		.master_controller_address     (<connected-to-master_controller_address>),     // master_controller.address
		.master_controller_read        (<connected-to-master_controller_read>),        //                  .read
		.master_controller_waitrequest (<connected-to-master_controller_waitrequest>), //                  .waitrequest
		.master_controller_readdata    (<connected-to-master_controller_readdata>),    //                  .readdata
		.master_controller_write       (<connected-to-master_controller_write>),       //                  .write
		.master_controller_writedata   (<connected-to-master_controller_writedata>),   //                  .writedata
		.avalon_reset_reset            (<connected-to-avalon_reset_reset>),            //      avalon_reset.reset
		.de10_clk_clk                  (<connected-to-de10_clk_clk>),                  //          de10_clk.clk
		.sdram_clk_clk                 (<connected-to-sdram_clk_clk>),                 //         sdram_clk.clk
		.sdram_wire_addr               (<connected-to-sdram_wire_addr>),               //        sdram_wire.addr
		.sdram_wire_ba                 (<connected-to-sdram_wire_ba>),                 //                  .ba
		.sdram_wire_cas_n              (<connected-to-sdram_wire_cas_n>),              //                  .cas_n
		.sdram_wire_cke                (<connected-to-sdram_wire_cke>),                //                  .cke
		.sdram_wire_cs_n               (<connected-to-sdram_wire_cs_n>),               //                  .cs_n
		.sdram_wire_dq                 (<connected-to-sdram_wire_dq>),                 //                  .dq
		.sdram_wire_dqm                (<connected-to-sdram_wire_dqm>),                //                  .dqm
		.sdram_wire_ras_n              (<connected-to-sdram_wire_ras_n>),              //                  .ras_n
		.sdram_wire_we_n               (<connected-to-sdram_wire_we_n>)                //                  .we_n
	);

