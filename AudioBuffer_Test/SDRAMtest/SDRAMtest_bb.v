
module SDRAMtest (
	reset_reset_n,
	master_controller_address,
	master_controller_read,
	master_controller_waitrequest,
	master_controller_readdata,
	master_controller_write,
	master_controller_writedata,
	avalon_reset_reset,
	de10_clk_clk,
	sdram_clk_clk,
	sdram_wire_addr,
	sdram_wire_ba,
	sdram_wire_cas_n,
	sdram_wire_cke,
	sdram_wire_cs_n,
	sdram_wire_dq,
	sdram_wire_dqm,
	sdram_wire_ras_n,
	sdram_wire_we_n);	

	input		reset_reset_n;
	input	[25:0]	master_controller_address;
	input		master_controller_read;
	output		master_controller_waitrequest;
	output	[15:0]	master_controller_readdata;
	input		master_controller_write;
	input	[15:0]	master_controller_writedata;
	output		avalon_reset_reset;
	input		de10_clk_clk;
	output		sdram_clk_clk;
	output	[12:0]	sdram_wire_addr;
	output	[1:0]	sdram_wire_ba;
	output		sdram_wire_cas_n;
	output		sdram_wire_cke;
	output		sdram_wire_cs_n;
	inout	[15:0]	sdram_wire_dq;
	output	[1:0]	sdram_wire_dqm;
	output		sdram_wire_ras_n;
	output		sdram_wire_we_n;
endmodule
