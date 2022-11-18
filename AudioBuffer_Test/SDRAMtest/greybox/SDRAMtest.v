// Copyright (C) 2020  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and any partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details, at
// https://fpgasoftware.intel.com/eula.

// VENDOR "Altera"
// PROGRAM "Quartus Prime"
// VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

// DATE "10/12/2022 17:14:11"

// 
// Device: Altera 10M08DAF484C8G Package FBGA484
// 

// 
// This greybox netlist file is for third party Synthesis Tools
// for timing and resource estimation only.
// 


module SDRAMtest (
	avalon_reset_reset,
	de10_clk_clk,
	master_controller_address,
	master_controller_read,
	master_controller_waitrequest,
	master_controller_readdata,
	master_controller_write,
	master_controller_writedata,
	reset_reset_n,
	sdram_clk_clk,
	sdram_wire_addr,
	sdram_wire_ba,
	sdram_wire_cas_n,
	sdram_wire_cke,
	sdram_wire_cs_n,
	sdram_wire_dq,
	sdram_wire_dqm,
	sdram_wire_ras_n,
	sdram_wire_we_n)/* synthesis synthesis_greybox=0 */;
output 	avalon_reset_reset;
input 	de10_clk_clk;
input 	[25:0] master_controller_address;
input 	master_controller_read;
output 	master_controller_waitrequest;
output 	[15:0] master_controller_readdata;
input 	master_controller_write;
input 	[15:0] master_controller_writedata;
input 	reset_reset_n;
output 	sdram_clk_clk;
output 	[12:0] sdram_wire_addr;
output 	[1:0] sdram_wire_ba;
output 	sdram_wire_cas_n;
output 	sdram_wire_cke;
output 	sdram_wire_cs_n;
inout 	[15:0] sdram_wire_dq;
output 	[1:0] sdram_wire_dqm;
output 	sdram_wire_ras_n;
output 	sdram_wire_we_n;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|locked ;
wire \sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0] ;
wire \sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[1] ;
wire \new_sdram_controller_0|m_addr[0]~q ;
wire \new_sdram_controller_0|m_addr[1]~q ;
wire \new_sdram_controller_0|m_addr[2]~q ;
wire \new_sdram_controller_0|m_addr[3]~q ;
wire \new_sdram_controller_0|m_addr[4]~q ;
wire \new_sdram_controller_0|m_addr[6]~q ;
wire \new_sdram_controller_0|m_addr[7]~q ;
wire \new_sdram_controller_0|m_addr[8]~q ;
wire \new_sdram_controller_0|m_addr[9]~q ;
wire \new_sdram_controller_0|oe~q ;
wire \rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q ;
wire \new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries[1]~q ;
wire \new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries[0]~q ;
wire \new_sdram_controller_0|za_valid~q ;
wire \mm_interconnect_0|avalon_mm_0_avm_m0_translator|av_waitrequest~0_combout ;
wire \new_sdram_controller_0|za_data[0]~q ;
wire \new_sdram_controller_0|za_data[1]~q ;
wire \new_sdram_controller_0|za_data[2]~q ;
wire \new_sdram_controller_0|za_data[3]~q ;
wire \new_sdram_controller_0|za_data[4]~q ;
wire \new_sdram_controller_0|za_data[5]~q ;
wire \new_sdram_controller_0|za_data[6]~q ;
wire \new_sdram_controller_0|za_data[7]~q ;
wire \new_sdram_controller_0|za_data[8]~q ;
wire \new_sdram_controller_0|za_data[9]~q ;
wire \new_sdram_controller_0|za_data[10]~q ;
wire \new_sdram_controller_0|za_data[11]~q ;
wire \new_sdram_controller_0|za_data[12]~q ;
wire \new_sdram_controller_0|za_data[13]~q ;
wire \new_sdram_controller_0|za_data[14]~q ;
wire \new_sdram_controller_0|za_data[15]~q ;
wire \new_sdram_controller_0|m_addr[5]~q ;
wire \new_sdram_controller_0|m_addr[10]~q ;
wire \new_sdram_controller_0|m_addr[11]~q ;
wire \new_sdram_controller_0|m_addr[12]~q ;
wire \new_sdram_controller_0|m_bank[0]~q ;
wire \new_sdram_controller_0|m_bank[1]~q ;
wire \new_sdram_controller_0|m_cmd[1]~q ;
wire \new_sdram_controller_0|m_cmd[3]~q ;
wire \new_sdram_controller_0|m_cmd[2]~q ;
wire \new_sdram_controller_0|m_cmd[0]~q ;
wire \mm_interconnect_0|avalon_mm_0_avm_m0_translator|read_accepted~q ;
wire \new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|Equal0~0_combout ;
wire \new_sdram_controller_0|m_data[0]~q ;
wire \new_sdram_controller_0|m_data[1]~q ;
wire \new_sdram_controller_0|m_data[2]~q ;
wire \new_sdram_controller_0|m_data[3]~q ;
wire \new_sdram_controller_0|m_data[4]~q ;
wire \new_sdram_controller_0|m_data[5]~q ;
wire \new_sdram_controller_0|m_data[6]~q ;
wire \new_sdram_controller_0|m_data[7]~q ;
wire \new_sdram_controller_0|m_data[8]~q ;
wire \new_sdram_controller_0|m_data[9]~q ;
wire \new_sdram_controller_0|m_data[10]~q ;
wire \new_sdram_controller_0|m_data[11]~q ;
wire \new_sdram_controller_0|m_data[12]~q ;
wire \new_sdram_controller_0|m_data[13]~q ;
wire \new_sdram_controller_0|m_data[14]~q ;
wire \new_sdram_controller_0|m_data[15]~q ;
wire \master_controller_address[0]~input_o ;
wire \reset_reset_n~input_o ;
wire \sdram_wire_dq[0]~input_o ;
wire \sdram_wire_dq[1]~input_o ;
wire \sdram_wire_dq[2]~input_o ;
wire \sdram_wire_dq[3]~input_o ;
wire \sdram_wire_dq[4]~input_o ;
wire \sdram_wire_dq[5]~input_o ;
wire \sdram_wire_dq[6]~input_o ;
wire \sdram_wire_dq[7]~input_o ;
wire \sdram_wire_dq[8]~input_o ;
wire \sdram_wire_dq[9]~input_o ;
wire \sdram_wire_dq[10]~input_o ;
wire \sdram_wire_dq[11]~input_o ;
wire \sdram_wire_dq[12]~input_o ;
wire \sdram_wire_dq[13]~input_o ;
wire \sdram_wire_dq[14]~input_o ;
wire \sdram_wire_dq[15]~input_o ;
wire \master_controller_read~input_o ;
wire \master_controller_write~input_o ;
wire \de10_clk_clk~input_o ;
wire \master_controller_address[11]~input_o ;
wire \master_controller_address[12]~input_o ;
wire \master_controller_address[25]~input_o ;
wire \master_controller_address[14]~input_o ;
wire \master_controller_address[13]~input_o ;
wire \master_controller_address[16]~input_o ;
wire \master_controller_address[15]~input_o ;
wire \master_controller_address[18]~input_o ;
wire \master_controller_address[17]~input_o ;
wire \master_controller_address[20]~input_o ;
wire \master_controller_address[19]~input_o ;
wire \master_controller_address[22]~input_o ;
wire \master_controller_address[21]~input_o ;
wire \master_controller_address[24]~input_o ;
wire \master_controller_address[23]~input_o ;
wire \master_controller_address[1]~input_o ;
wire \master_controller_address[2]~input_o ;
wire \master_controller_address[3]~input_o ;
wire \master_controller_address[4]~input_o ;
wire \master_controller_address[5]~input_o ;
wire \master_controller_address[6]~input_o ;
wire \master_controller_address[7]~input_o ;
wire \master_controller_address[8]~input_o ;
wire \master_controller_address[9]~input_o ;
wire \master_controller_address[10]~input_o ;
wire \master_controller_writedata[0]~input_o ;
wire \master_controller_writedata[1]~input_o ;
wire \master_controller_writedata[2]~input_o ;
wire \master_controller_writedata[3]~input_o ;
wire \master_controller_writedata[4]~input_o ;
wire \master_controller_writedata[5]~input_o ;
wire \master_controller_writedata[6]~input_o ;
wire \master_controller_writedata[7]~input_o ;
wire \master_controller_writedata[8]~input_o ;
wire \master_controller_writedata[9]~input_o ;
wire \master_controller_writedata[10]~input_o ;
wire \master_controller_writedata[11]~input_o ;
wire \master_controller_writedata[12]~input_o ;
wire \master_controller_writedata[13]~input_o ;
wire \master_controller_writedata[14]~input_o ;
wire \master_controller_writedata[15]~input_o ;


SDRAMtest_altera_reset_controller rst_controller(
	.locked(\sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|locked ),
	.clk_0(\sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0] ),
	.altera_reset_synchronizer_int_chain_out(\rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q ));

SDRAMtest_SDRAMtest_mm_interconnect_0 mm_interconnect_0(
	.clk_0(\sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0] ),
	.altera_reset_synchronizer_int_chain_out(\rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q ),
	.entries_1(\new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries[1]~q ),
	.entries_0(\new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries[0]~q ),
	.za_valid(\new_sdram_controller_0|za_valid~q ),
	.Avalon_MM_0_avm_m0_waitrequest(\mm_interconnect_0|avalon_mm_0_avm_m0_translator|av_waitrequest~0_combout ),
	.read_accepted(\mm_interconnect_0|avalon_mm_0_avm_m0_translator|read_accepted~q ),
	.Equal0(\new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|Equal0~0_combout ),
	.master_controller_read(\master_controller_read~input_o ));

SDRAMtest_SDRAMtest_sys_sdram_pll_0 sys_sdram_pll_0(
	.locked(\sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|locked ),
	.clk_0(\sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0] ),
	.clk_1(\sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[1] ),
	.de10_clk_clk(\de10_clk_clk~input_o ));

SDRAMtest_SDRAMtest_new_sdram_controller_0 new_sdram_controller_0(
	.clk_0(\sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0] ),
	.m_addr_0(\new_sdram_controller_0|m_addr[0]~q ),
	.m_addr_1(\new_sdram_controller_0|m_addr[1]~q ),
	.m_addr_2(\new_sdram_controller_0|m_addr[2]~q ),
	.m_addr_3(\new_sdram_controller_0|m_addr[3]~q ),
	.m_addr_4(\new_sdram_controller_0|m_addr[4]~q ),
	.m_addr_6(\new_sdram_controller_0|m_addr[6]~q ),
	.m_addr_7(\new_sdram_controller_0|m_addr[7]~q ),
	.m_addr_8(\new_sdram_controller_0|m_addr[8]~q ),
	.m_addr_9(\new_sdram_controller_0|m_addr[9]~q ),
	.oe1(\new_sdram_controller_0|oe~q ),
	.altera_reset_synchronizer_int_chain_out(\rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q ),
	.entries_1(\new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries[1]~q ),
	.entries_0(\new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries[0]~q ),
	.za_valid1(\new_sdram_controller_0|za_valid~q ),
	.za_data_0(\new_sdram_controller_0|za_data[0]~q ),
	.za_data_1(\new_sdram_controller_0|za_data[1]~q ),
	.za_data_2(\new_sdram_controller_0|za_data[2]~q ),
	.za_data_3(\new_sdram_controller_0|za_data[3]~q ),
	.za_data_4(\new_sdram_controller_0|za_data[4]~q ),
	.za_data_5(\new_sdram_controller_0|za_data[5]~q ),
	.za_data_6(\new_sdram_controller_0|za_data[6]~q ),
	.za_data_7(\new_sdram_controller_0|za_data[7]~q ),
	.za_data_8(\new_sdram_controller_0|za_data[8]~q ),
	.za_data_9(\new_sdram_controller_0|za_data[9]~q ),
	.za_data_10(\new_sdram_controller_0|za_data[10]~q ),
	.za_data_11(\new_sdram_controller_0|za_data[11]~q ),
	.za_data_12(\new_sdram_controller_0|za_data[12]~q ),
	.za_data_13(\new_sdram_controller_0|za_data[13]~q ),
	.za_data_14(\new_sdram_controller_0|za_data[14]~q ),
	.za_data_15(\new_sdram_controller_0|za_data[15]~q ),
	.m_addr_5(\new_sdram_controller_0|m_addr[5]~q ),
	.m_addr_10(\new_sdram_controller_0|m_addr[10]~q ),
	.m_addr_11(\new_sdram_controller_0|m_addr[11]~q ),
	.m_addr_12(\new_sdram_controller_0|m_addr[12]~q ),
	.m_bank_0(\new_sdram_controller_0|m_bank[0]~q ),
	.m_bank_1(\new_sdram_controller_0|m_bank[1]~q ),
	.m_cmd_1(\new_sdram_controller_0|m_cmd[1]~q ),
	.m_cmd_3(\new_sdram_controller_0|m_cmd[3]~q ),
	.m_cmd_2(\new_sdram_controller_0|m_cmd[2]~q ),
	.m_cmd_0(\new_sdram_controller_0|m_cmd[0]~q ),
	.read_accepted(\mm_interconnect_0|avalon_mm_0_avm_m0_translator|read_accepted~q ),
	.Equal0(\new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|Equal0~0_combout ),
	.m_data_0(\new_sdram_controller_0|m_data[0]~q ),
	.m_data_1(\new_sdram_controller_0|m_data[1]~q ),
	.m_data_2(\new_sdram_controller_0|m_data[2]~q ),
	.m_data_3(\new_sdram_controller_0|m_data[3]~q ),
	.m_data_4(\new_sdram_controller_0|m_data[4]~q ),
	.m_data_5(\new_sdram_controller_0|m_data[5]~q ),
	.m_data_6(\new_sdram_controller_0|m_data[6]~q ),
	.m_data_7(\new_sdram_controller_0|m_data[7]~q ),
	.m_data_8(\new_sdram_controller_0|m_data[8]~q ),
	.m_data_9(\new_sdram_controller_0|m_data[9]~q ),
	.m_data_10(\new_sdram_controller_0|m_data[10]~q ),
	.m_data_11(\new_sdram_controller_0|m_data[11]~q ),
	.m_data_12(\new_sdram_controller_0|m_data[12]~q ),
	.m_data_13(\new_sdram_controller_0|m_data[13]~q ),
	.m_data_14(\new_sdram_controller_0|m_data[14]~q ),
	.m_data_15(\new_sdram_controller_0|m_data[15]~q ),
	.sdram_wire_dq_0(\sdram_wire_dq[0]~input_o ),
	.sdram_wire_dq_1(\sdram_wire_dq[1]~input_o ),
	.sdram_wire_dq_2(\sdram_wire_dq[2]~input_o ),
	.sdram_wire_dq_3(\sdram_wire_dq[3]~input_o ),
	.sdram_wire_dq_4(\sdram_wire_dq[4]~input_o ),
	.sdram_wire_dq_5(\sdram_wire_dq[5]~input_o ),
	.sdram_wire_dq_6(\sdram_wire_dq[6]~input_o ),
	.sdram_wire_dq_7(\sdram_wire_dq[7]~input_o ),
	.sdram_wire_dq_8(\sdram_wire_dq[8]~input_o ),
	.sdram_wire_dq_9(\sdram_wire_dq[9]~input_o ),
	.sdram_wire_dq_10(\sdram_wire_dq[10]~input_o ),
	.sdram_wire_dq_11(\sdram_wire_dq[11]~input_o ),
	.sdram_wire_dq_12(\sdram_wire_dq[12]~input_o ),
	.sdram_wire_dq_13(\sdram_wire_dq[13]~input_o ),
	.sdram_wire_dq_14(\sdram_wire_dq[14]~input_o ),
	.sdram_wire_dq_15(\sdram_wire_dq[15]~input_o ),
	.master_controller_read(\master_controller_read~input_o ),
	.master_controller_write(\master_controller_write~input_o ),
	.master_controller_address_11(\master_controller_address[11]~input_o ),
	.master_controller_address_12(\master_controller_address[12]~input_o ),
	.master_controller_address_25(\master_controller_address[25]~input_o ),
	.master_controller_address_14(\master_controller_address[14]~input_o ),
	.master_controller_address_13(\master_controller_address[13]~input_o ),
	.master_controller_address_16(\master_controller_address[16]~input_o ),
	.master_controller_address_15(\master_controller_address[15]~input_o ),
	.master_controller_address_18(\master_controller_address[18]~input_o ),
	.master_controller_address_17(\master_controller_address[17]~input_o ),
	.master_controller_address_20(\master_controller_address[20]~input_o ),
	.master_controller_address_19(\master_controller_address[19]~input_o ),
	.master_controller_address_22(\master_controller_address[22]~input_o ),
	.master_controller_address_21(\master_controller_address[21]~input_o ),
	.master_controller_address_24(\master_controller_address[24]~input_o ),
	.master_controller_address_23(\master_controller_address[23]~input_o ),
	.master_controller_address_1(\master_controller_address[1]~input_o ),
	.master_controller_address_2(\master_controller_address[2]~input_o ),
	.master_controller_address_3(\master_controller_address[3]~input_o ),
	.master_controller_address_4(\master_controller_address[4]~input_o ),
	.master_controller_address_5(\master_controller_address[5]~input_o ),
	.master_controller_address_6(\master_controller_address[6]~input_o ),
	.master_controller_address_7(\master_controller_address[7]~input_o ),
	.master_controller_address_8(\master_controller_address[8]~input_o ),
	.master_controller_address_9(\master_controller_address[9]~input_o ),
	.master_controller_address_10(\master_controller_address[10]~input_o ),
	.master_controller_writedata_0(\master_controller_writedata[0]~input_o ),
	.master_controller_writedata_1(\master_controller_writedata[1]~input_o ),
	.master_controller_writedata_2(\master_controller_writedata[2]~input_o ),
	.master_controller_writedata_3(\master_controller_writedata[3]~input_o ),
	.master_controller_writedata_4(\master_controller_writedata[4]~input_o ),
	.master_controller_writedata_5(\master_controller_writedata[5]~input_o ),
	.master_controller_writedata_6(\master_controller_writedata[6]~input_o ),
	.master_controller_writedata_7(\master_controller_writedata[7]~input_o ),
	.master_controller_writedata_8(\master_controller_writedata[8]~input_o ),
	.master_controller_writedata_9(\master_controller_writedata[9]~input_o ),
	.master_controller_writedata_10(\master_controller_writedata[10]~input_o ),
	.master_controller_writedata_11(\master_controller_writedata[11]~input_o ),
	.master_controller_writedata_12(\master_controller_writedata[12]~input_o ),
	.master_controller_writedata_13(\master_controller_writedata[13]~input_o ),
	.master_controller_writedata_14(\master_controller_writedata[14]~input_o ),
	.master_controller_writedata_15(\master_controller_writedata[15]~input_o ));

assign \sdram_wire_dq[0]~input_o  = sdram_wire_dq[0];

assign \sdram_wire_dq[1]~input_o  = sdram_wire_dq[1];

assign \sdram_wire_dq[2]~input_o  = sdram_wire_dq[2];

assign \sdram_wire_dq[3]~input_o  = sdram_wire_dq[3];

assign \sdram_wire_dq[4]~input_o  = sdram_wire_dq[4];

assign \sdram_wire_dq[5]~input_o  = sdram_wire_dq[5];

assign \sdram_wire_dq[6]~input_o  = sdram_wire_dq[6];

assign \sdram_wire_dq[7]~input_o  = sdram_wire_dq[7];

assign \sdram_wire_dq[8]~input_o  = sdram_wire_dq[8];

assign \sdram_wire_dq[9]~input_o  = sdram_wire_dq[9];

assign \sdram_wire_dq[10]~input_o  = sdram_wire_dq[10];

assign \sdram_wire_dq[11]~input_o  = sdram_wire_dq[11];

assign \sdram_wire_dq[12]~input_o  = sdram_wire_dq[12];

assign \sdram_wire_dq[13]~input_o  = sdram_wire_dq[13];

assign \sdram_wire_dq[14]~input_o  = sdram_wire_dq[14];

assign \sdram_wire_dq[15]~input_o  = sdram_wire_dq[15];

assign \master_controller_read~input_o  = master_controller_read;

assign \master_controller_write~input_o  = master_controller_write;

assign \de10_clk_clk~input_o  = de10_clk_clk;

assign \master_controller_address[11]~input_o  = master_controller_address[11];

assign \master_controller_address[12]~input_o  = master_controller_address[12];

assign \master_controller_address[25]~input_o  = master_controller_address[25];

assign \master_controller_address[14]~input_o  = master_controller_address[14];

assign \master_controller_address[13]~input_o  = master_controller_address[13];

assign \master_controller_address[16]~input_o  = master_controller_address[16];

assign \master_controller_address[15]~input_o  = master_controller_address[15];

assign \master_controller_address[18]~input_o  = master_controller_address[18];

assign \master_controller_address[17]~input_o  = master_controller_address[17];

assign \master_controller_address[20]~input_o  = master_controller_address[20];

assign \master_controller_address[19]~input_o  = master_controller_address[19];

assign \master_controller_address[22]~input_o  = master_controller_address[22];

assign \master_controller_address[21]~input_o  = master_controller_address[21];

assign \master_controller_address[24]~input_o  = master_controller_address[24];

assign \master_controller_address[23]~input_o  = master_controller_address[23];

assign \master_controller_address[1]~input_o  = master_controller_address[1];

assign \master_controller_address[2]~input_o  = master_controller_address[2];

assign \master_controller_address[3]~input_o  = master_controller_address[3];

assign \master_controller_address[4]~input_o  = master_controller_address[4];

assign \master_controller_address[5]~input_o  = master_controller_address[5];

assign \master_controller_address[6]~input_o  = master_controller_address[6];

assign \master_controller_address[7]~input_o  = master_controller_address[7];

assign \master_controller_address[8]~input_o  = master_controller_address[8];

assign \master_controller_address[9]~input_o  = master_controller_address[9];

assign \master_controller_address[10]~input_o  = master_controller_address[10];

assign \master_controller_writedata[0]~input_o  = master_controller_writedata[0];

assign \master_controller_writedata[1]~input_o  = master_controller_writedata[1];

assign \master_controller_writedata[2]~input_o  = master_controller_writedata[2];

assign \master_controller_writedata[3]~input_o  = master_controller_writedata[3];

assign \master_controller_writedata[4]~input_o  = master_controller_writedata[4];

assign \master_controller_writedata[5]~input_o  = master_controller_writedata[5];

assign \master_controller_writedata[6]~input_o  = master_controller_writedata[6];

assign \master_controller_writedata[7]~input_o  = master_controller_writedata[7];

assign \master_controller_writedata[8]~input_o  = master_controller_writedata[8];

assign \master_controller_writedata[9]~input_o  = master_controller_writedata[9];

assign \master_controller_writedata[10]~input_o  = master_controller_writedata[10];

assign \master_controller_writedata[11]~input_o  = master_controller_writedata[11];

assign \master_controller_writedata[12]~input_o  = master_controller_writedata[12];

assign \master_controller_writedata[13]~input_o  = master_controller_writedata[13];

assign \master_controller_writedata[14]~input_o  = master_controller_writedata[14];

assign \master_controller_writedata[15]~input_o  = master_controller_writedata[15];

assign avalon_reset_reset = ~ \rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q ;

assign master_controller_waitrequest = \mm_interconnect_0|avalon_mm_0_avm_m0_translator|av_waitrequest~0_combout ;

assign master_controller_readdata[0] = \new_sdram_controller_0|za_data[0]~q ;

assign master_controller_readdata[1] = \new_sdram_controller_0|za_data[1]~q ;

assign master_controller_readdata[2] = \new_sdram_controller_0|za_data[2]~q ;

assign master_controller_readdata[3] = \new_sdram_controller_0|za_data[3]~q ;

assign master_controller_readdata[4] = \new_sdram_controller_0|za_data[4]~q ;

assign master_controller_readdata[5] = \new_sdram_controller_0|za_data[5]~q ;

assign master_controller_readdata[6] = \new_sdram_controller_0|za_data[6]~q ;

assign master_controller_readdata[7] = \new_sdram_controller_0|za_data[7]~q ;

assign master_controller_readdata[8] = \new_sdram_controller_0|za_data[8]~q ;

assign master_controller_readdata[9] = \new_sdram_controller_0|za_data[9]~q ;

assign master_controller_readdata[10] = \new_sdram_controller_0|za_data[10]~q ;

assign master_controller_readdata[11] = \new_sdram_controller_0|za_data[11]~q ;

assign master_controller_readdata[12] = \new_sdram_controller_0|za_data[12]~q ;

assign master_controller_readdata[13] = \new_sdram_controller_0|za_data[13]~q ;

assign master_controller_readdata[14] = \new_sdram_controller_0|za_data[14]~q ;

assign master_controller_readdata[15] = \new_sdram_controller_0|za_data[15]~q ;

assign sdram_clk_clk = \sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[1] ;

assign sdram_wire_addr[0] = \new_sdram_controller_0|m_addr[0]~q ;

assign sdram_wire_addr[1] = \new_sdram_controller_0|m_addr[1]~q ;

assign sdram_wire_addr[2] = \new_sdram_controller_0|m_addr[2]~q ;

assign sdram_wire_addr[3] = \new_sdram_controller_0|m_addr[3]~q ;

assign sdram_wire_addr[4] = \new_sdram_controller_0|m_addr[4]~q ;

assign sdram_wire_addr[5] = \new_sdram_controller_0|m_addr[5]~q ;

assign sdram_wire_addr[6] = \new_sdram_controller_0|m_addr[6]~q ;

assign sdram_wire_addr[7] = \new_sdram_controller_0|m_addr[7]~q ;

assign sdram_wire_addr[8] = \new_sdram_controller_0|m_addr[8]~q ;

assign sdram_wire_addr[9] = \new_sdram_controller_0|m_addr[9]~q ;

assign sdram_wire_addr[10] = \new_sdram_controller_0|m_addr[10]~q ;

assign sdram_wire_addr[11] = \new_sdram_controller_0|m_addr[11]~q ;

assign sdram_wire_addr[12] = \new_sdram_controller_0|m_addr[12]~q ;

assign sdram_wire_ba[0] = \new_sdram_controller_0|m_bank[0]~q ;

assign sdram_wire_ba[1] = \new_sdram_controller_0|m_bank[1]~q ;

assign sdram_wire_cas_n = ~ \new_sdram_controller_0|m_cmd[1]~q ;

assign sdram_wire_cke = vcc;

assign sdram_wire_cs_n = ~ \new_sdram_controller_0|m_cmd[3]~q ;

assign sdram_wire_dqm[0] = gnd;

assign sdram_wire_dqm[1] = gnd;

assign sdram_wire_ras_n = ~ \new_sdram_controller_0|m_cmd[2]~q ;

assign sdram_wire_we_n = ~ \new_sdram_controller_0|m_cmd[0]~q ;

fiftyfivenm_io_obuf \sdram_wire_dq[0]~output (
	.i(\new_sdram_controller_0|m_data[0]~q ),
	.oe(\new_sdram_controller_0|oe~q ),
	.seriesterminationcontrol(16'b0000000000000000),
	.o(sdram_wire_dq[0]),
	.obar());
defparam \sdram_wire_dq[0]~output .bus_hold = "false";
defparam \sdram_wire_dq[0]~output .open_drain_output = "false";

fiftyfivenm_io_obuf \sdram_wire_dq[1]~output (
	.i(\new_sdram_controller_0|m_data[1]~q ),
	.oe(\new_sdram_controller_0|oe~q ),
	.seriesterminationcontrol(16'b0000000000000000),
	.o(sdram_wire_dq[1]),
	.obar());
defparam \sdram_wire_dq[1]~output .bus_hold = "false";
defparam \sdram_wire_dq[1]~output .open_drain_output = "false";

fiftyfivenm_io_obuf \sdram_wire_dq[2]~output (
	.i(\new_sdram_controller_0|m_data[2]~q ),
	.oe(\new_sdram_controller_0|oe~q ),
	.seriesterminationcontrol(16'b0000000000000000),
	.o(sdram_wire_dq[2]),
	.obar());
defparam \sdram_wire_dq[2]~output .bus_hold = "false";
defparam \sdram_wire_dq[2]~output .open_drain_output = "false";

fiftyfivenm_io_obuf \sdram_wire_dq[3]~output (
	.i(\new_sdram_controller_0|m_data[3]~q ),
	.oe(\new_sdram_controller_0|oe~q ),
	.seriesterminationcontrol(16'b0000000000000000),
	.o(sdram_wire_dq[3]),
	.obar());
defparam \sdram_wire_dq[3]~output .bus_hold = "false";
defparam \sdram_wire_dq[3]~output .open_drain_output = "false";

fiftyfivenm_io_obuf \sdram_wire_dq[4]~output (
	.i(\new_sdram_controller_0|m_data[4]~q ),
	.oe(\new_sdram_controller_0|oe~q ),
	.seriesterminationcontrol(16'b0000000000000000),
	.o(sdram_wire_dq[4]),
	.obar());
defparam \sdram_wire_dq[4]~output .bus_hold = "false";
defparam \sdram_wire_dq[4]~output .open_drain_output = "false";

fiftyfivenm_io_obuf \sdram_wire_dq[5]~output (
	.i(\new_sdram_controller_0|m_data[5]~q ),
	.oe(\new_sdram_controller_0|oe~q ),
	.seriesterminationcontrol(16'b0000000000000000),
	.o(sdram_wire_dq[5]),
	.obar());
defparam \sdram_wire_dq[5]~output .bus_hold = "false";
defparam \sdram_wire_dq[5]~output .open_drain_output = "false";

fiftyfivenm_io_obuf \sdram_wire_dq[6]~output (
	.i(\new_sdram_controller_0|m_data[6]~q ),
	.oe(\new_sdram_controller_0|oe~q ),
	.seriesterminationcontrol(16'b0000000000000000),
	.o(sdram_wire_dq[6]),
	.obar());
defparam \sdram_wire_dq[6]~output .bus_hold = "false";
defparam \sdram_wire_dq[6]~output .open_drain_output = "false";

fiftyfivenm_io_obuf \sdram_wire_dq[7]~output (
	.i(\new_sdram_controller_0|m_data[7]~q ),
	.oe(\new_sdram_controller_0|oe~q ),
	.seriesterminationcontrol(16'b0000000000000000),
	.o(sdram_wire_dq[7]),
	.obar());
defparam \sdram_wire_dq[7]~output .bus_hold = "false";
defparam \sdram_wire_dq[7]~output .open_drain_output = "false";

fiftyfivenm_io_obuf \sdram_wire_dq[8]~output (
	.i(\new_sdram_controller_0|m_data[8]~q ),
	.oe(\new_sdram_controller_0|oe~q ),
	.seriesterminationcontrol(16'b0000000000000000),
	.o(sdram_wire_dq[8]),
	.obar());
defparam \sdram_wire_dq[8]~output .bus_hold = "false";
defparam \sdram_wire_dq[8]~output .open_drain_output = "false";

fiftyfivenm_io_obuf \sdram_wire_dq[9]~output (
	.i(\new_sdram_controller_0|m_data[9]~q ),
	.oe(\new_sdram_controller_0|oe~q ),
	.seriesterminationcontrol(16'b0000000000000000),
	.o(sdram_wire_dq[9]),
	.obar());
defparam \sdram_wire_dq[9]~output .bus_hold = "false";
defparam \sdram_wire_dq[9]~output .open_drain_output = "false";

fiftyfivenm_io_obuf \sdram_wire_dq[10]~output (
	.i(\new_sdram_controller_0|m_data[10]~q ),
	.oe(\new_sdram_controller_0|oe~q ),
	.seriesterminationcontrol(16'b0000000000000000),
	.o(sdram_wire_dq[10]),
	.obar());
defparam \sdram_wire_dq[10]~output .bus_hold = "false";
defparam \sdram_wire_dq[10]~output .open_drain_output = "false";

fiftyfivenm_io_obuf \sdram_wire_dq[11]~output (
	.i(\new_sdram_controller_0|m_data[11]~q ),
	.oe(\new_sdram_controller_0|oe~q ),
	.seriesterminationcontrol(16'b0000000000000000),
	.o(sdram_wire_dq[11]),
	.obar());
defparam \sdram_wire_dq[11]~output .bus_hold = "false";
defparam \sdram_wire_dq[11]~output .open_drain_output = "false";

fiftyfivenm_io_obuf \sdram_wire_dq[12]~output (
	.i(\new_sdram_controller_0|m_data[12]~q ),
	.oe(\new_sdram_controller_0|oe~q ),
	.seriesterminationcontrol(16'b0000000000000000),
	.o(sdram_wire_dq[12]),
	.obar());
defparam \sdram_wire_dq[12]~output .bus_hold = "false";
defparam \sdram_wire_dq[12]~output .open_drain_output = "false";

fiftyfivenm_io_obuf \sdram_wire_dq[13]~output (
	.i(\new_sdram_controller_0|m_data[13]~q ),
	.oe(\new_sdram_controller_0|oe~q ),
	.seriesterminationcontrol(16'b0000000000000000),
	.o(sdram_wire_dq[13]),
	.obar());
defparam \sdram_wire_dq[13]~output .bus_hold = "false";
defparam \sdram_wire_dq[13]~output .open_drain_output = "false";

fiftyfivenm_io_obuf \sdram_wire_dq[14]~output (
	.i(\new_sdram_controller_0|m_data[14]~q ),
	.oe(\new_sdram_controller_0|oe~q ),
	.seriesterminationcontrol(16'b0000000000000000),
	.o(sdram_wire_dq[14]),
	.obar());
defparam \sdram_wire_dq[14]~output .bus_hold = "false";
defparam \sdram_wire_dq[14]~output .open_drain_output = "false";

fiftyfivenm_io_obuf \sdram_wire_dq[15]~output (
	.i(\new_sdram_controller_0|m_data[15]~q ),
	.oe(\new_sdram_controller_0|oe~q ),
	.seriesterminationcontrol(16'b0000000000000000),
	.o(sdram_wire_dq[15]),
	.obar());
defparam \sdram_wire_dq[15]~output .bus_hold = "false";
defparam \sdram_wire_dq[15]~output .open_drain_output = "false";

assign \master_controller_address[0]~input_o  = master_controller_address[0];

assign \reset_reset_n~input_o  = reset_reset_n;

endmodule

module SDRAMtest_altera_reset_controller (
	locked,
	clk_0,
	altera_reset_synchronizer_int_chain_out)/* synthesis synthesis_greybox=0 */;
input 	locked;
input 	clk_0;
output 	altera_reset_synchronizer_int_chain_out;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



SDRAMtest_altera_reset_synchronizer_3 alt_rst_sync_uq1(
	.locked(locked),
	.clk(clk_0),
	.altera_reset_synchronizer_int_chain_out1(altera_reset_synchronizer_int_chain_out));

endmodule

module SDRAMtest_altera_reset_synchronizer_3 (
	locked,
	clk,
	altera_reset_synchronizer_int_chain_out1)/* synthesis synthesis_greybox=0 */;
input 	locked;
input 	clk;
output 	altera_reset_synchronizer_int_chain_out1;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \altera_reset_synchronizer_int_chain[1]~q ;
wire \altera_reset_synchronizer_int_chain[0]~q ;


dffeas altera_reset_synchronizer_int_chain_out(
	.clk(clk),
	.d(\altera_reset_synchronizer_int_chain[0]~q ),
	.asdata(vcc),
	.clrn(locked),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(altera_reset_synchronizer_int_chain_out1),
	.prn(vcc));
defparam altera_reset_synchronizer_int_chain_out.is_wysiwyg = "true";
defparam altera_reset_synchronizer_int_chain_out.power_up = "low";

dffeas \altera_reset_synchronizer_int_chain[1] (
	.clk(clk),
	.d(vcc),
	.asdata(vcc),
	.clrn(locked),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\altera_reset_synchronizer_int_chain[1]~q ),
	.prn(vcc));
defparam \altera_reset_synchronizer_int_chain[1] .is_wysiwyg = "true";
defparam \altera_reset_synchronizer_int_chain[1] .power_up = "low";

dffeas \altera_reset_synchronizer_int_chain[0] (
	.clk(clk),
	.d(\altera_reset_synchronizer_int_chain[1]~q ),
	.asdata(vcc),
	.clrn(locked),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\altera_reset_synchronizer_int_chain[0]~q ),
	.prn(vcc));
defparam \altera_reset_synchronizer_int_chain[0] .is_wysiwyg = "true";
defparam \altera_reset_synchronizer_int_chain[0] .power_up = "low";

endmodule

module SDRAMtest_SDRAMtest_mm_interconnect_0 (
	clk_0,
	altera_reset_synchronizer_int_chain_out,
	entries_1,
	entries_0,
	za_valid,
	Avalon_MM_0_avm_m0_waitrequest,
	read_accepted,
	Equal0,
	master_controller_read)/* synthesis synthesis_greybox=0 */;
input 	clk_0;
input 	altera_reset_synchronizer_int_chain_out;
input 	entries_1;
input 	entries_0;
input 	za_valid;
output 	Avalon_MM_0_avm_m0_waitrequest;
output 	read_accepted;
input 	Equal0;
input 	master_controller_read;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



SDRAMtest_altera_merlin_master_translator avalon_mm_0_avm_m0_translator(
	.clk(clk_0),
	.reset(altera_reset_synchronizer_int_chain_out),
	.entries_1(entries_1),
	.entries_0(entries_0),
	.za_valid(za_valid),
	.av_waitrequest(Avalon_MM_0_avm_m0_waitrequest),
	.read_accepted1(read_accepted),
	.Equal0(Equal0),
	.master_controller_read(master_controller_read));

endmodule

module SDRAMtest_altera_merlin_master_translator (
	clk,
	reset,
	entries_1,
	entries_0,
	za_valid,
	av_waitrequest,
	read_accepted1,
	Equal0,
	master_controller_read)/* synthesis synthesis_greybox=0 */;
input 	clk;
input 	reset;
input 	entries_1;
input 	entries_0;
input 	za_valid;
output 	av_waitrequest;
output 	read_accepted1;
input 	Equal0;
input 	master_controller_read;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \read_accepted~0_combout ;


fiftyfivenm_lcell_comb \av_waitrequest~0 (
	.dataa(entries_1),
	.datab(master_controller_read),
	.datac(entries_0),
	.datad(za_valid),
	.cin(gnd),
	.combout(av_waitrequest),
	.cout());
defparam \av_waitrequest~0 .lut_mask = 16'h02CE;
defparam \av_waitrequest~0 .sum_lutc_input = "datac";

dffeas read_accepted(
	.clk(clk),
	.d(\read_accepted~0_combout ),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(read_accepted1),
	.prn(vcc));
defparam read_accepted.is_wysiwyg = "true";
defparam read_accepted.power_up = "low";

fiftyfivenm_lcell_comb \read_accepted~0 (
	.dataa(read_accepted1),
	.datab(master_controller_read),
	.datac(Equal0),
	.datad(za_valid),
	.cin(gnd),
	.combout(\read_accepted~0_combout ),
	.cout());
defparam \read_accepted~0 .lut_mask = 16'h00AE;
defparam \read_accepted~0 .sum_lutc_input = "datac";

endmodule

module SDRAMtest_SDRAMtest_new_sdram_controller_0 (
	clk_0,
	m_addr_0,
	m_addr_1,
	m_addr_2,
	m_addr_3,
	m_addr_4,
	m_addr_6,
	m_addr_7,
	m_addr_8,
	m_addr_9,
	oe1,
	altera_reset_synchronizer_int_chain_out,
	entries_1,
	entries_0,
	za_valid1,
	za_data_0,
	za_data_1,
	za_data_2,
	za_data_3,
	za_data_4,
	za_data_5,
	za_data_6,
	za_data_7,
	za_data_8,
	za_data_9,
	za_data_10,
	za_data_11,
	za_data_12,
	za_data_13,
	za_data_14,
	za_data_15,
	m_addr_5,
	m_addr_10,
	m_addr_11,
	m_addr_12,
	m_bank_0,
	m_bank_1,
	m_cmd_1,
	m_cmd_3,
	m_cmd_2,
	m_cmd_0,
	read_accepted,
	Equal0,
	m_data_0,
	m_data_1,
	m_data_2,
	m_data_3,
	m_data_4,
	m_data_5,
	m_data_6,
	m_data_7,
	m_data_8,
	m_data_9,
	m_data_10,
	m_data_11,
	m_data_12,
	m_data_13,
	m_data_14,
	m_data_15,
	sdram_wire_dq_0,
	sdram_wire_dq_1,
	sdram_wire_dq_2,
	sdram_wire_dq_3,
	sdram_wire_dq_4,
	sdram_wire_dq_5,
	sdram_wire_dq_6,
	sdram_wire_dq_7,
	sdram_wire_dq_8,
	sdram_wire_dq_9,
	sdram_wire_dq_10,
	sdram_wire_dq_11,
	sdram_wire_dq_12,
	sdram_wire_dq_13,
	sdram_wire_dq_14,
	sdram_wire_dq_15,
	master_controller_read,
	master_controller_write,
	master_controller_address_11,
	master_controller_address_12,
	master_controller_address_25,
	master_controller_address_14,
	master_controller_address_13,
	master_controller_address_16,
	master_controller_address_15,
	master_controller_address_18,
	master_controller_address_17,
	master_controller_address_20,
	master_controller_address_19,
	master_controller_address_22,
	master_controller_address_21,
	master_controller_address_24,
	master_controller_address_23,
	master_controller_address_1,
	master_controller_address_2,
	master_controller_address_3,
	master_controller_address_4,
	master_controller_address_5,
	master_controller_address_6,
	master_controller_address_7,
	master_controller_address_8,
	master_controller_address_9,
	master_controller_address_10,
	master_controller_writedata_0,
	master_controller_writedata_1,
	master_controller_writedata_2,
	master_controller_writedata_3,
	master_controller_writedata_4,
	master_controller_writedata_5,
	master_controller_writedata_6,
	master_controller_writedata_7,
	master_controller_writedata_8,
	master_controller_writedata_9,
	master_controller_writedata_10,
	master_controller_writedata_11,
	master_controller_writedata_12,
	master_controller_writedata_13,
	master_controller_writedata_14,
	master_controller_writedata_15)/* synthesis synthesis_greybox=0 */;
input 	clk_0;
output 	m_addr_0;
output 	m_addr_1;
output 	m_addr_2;
output 	m_addr_3;
output 	m_addr_4;
output 	m_addr_6;
output 	m_addr_7;
output 	m_addr_8;
output 	m_addr_9;
output 	oe1;
input 	altera_reset_synchronizer_int_chain_out;
output 	entries_1;
output 	entries_0;
output 	za_valid1;
output 	za_data_0;
output 	za_data_1;
output 	za_data_2;
output 	za_data_3;
output 	za_data_4;
output 	za_data_5;
output 	za_data_6;
output 	za_data_7;
output 	za_data_8;
output 	za_data_9;
output 	za_data_10;
output 	za_data_11;
output 	za_data_12;
output 	za_data_13;
output 	za_data_14;
output 	za_data_15;
output 	m_addr_5;
output 	m_addr_10;
output 	m_addr_11;
output 	m_addr_12;
output 	m_bank_0;
output 	m_bank_1;
output 	m_cmd_1;
output 	m_cmd_3;
output 	m_cmd_2;
output 	m_cmd_0;
input 	read_accepted;
output 	Equal0;
output 	m_data_0;
output 	m_data_1;
output 	m_data_2;
output 	m_data_3;
output 	m_data_4;
output 	m_data_5;
output 	m_data_6;
output 	m_data_7;
output 	m_data_8;
output 	m_data_9;
output 	m_data_10;
output 	m_data_11;
output 	m_data_12;
output 	m_data_13;
output 	m_data_14;
output 	m_data_15;
input 	sdram_wire_dq_0;
input 	sdram_wire_dq_1;
input 	sdram_wire_dq_2;
input 	sdram_wire_dq_3;
input 	sdram_wire_dq_4;
input 	sdram_wire_dq_5;
input 	sdram_wire_dq_6;
input 	sdram_wire_dq_7;
input 	sdram_wire_dq_8;
input 	sdram_wire_dq_9;
input 	sdram_wire_dq_10;
input 	sdram_wire_dq_11;
input 	sdram_wire_dq_12;
input 	sdram_wire_dq_13;
input 	sdram_wire_dq_14;
input 	sdram_wire_dq_15;
input 	master_controller_read;
input 	master_controller_write;
input 	master_controller_address_11;
input 	master_controller_address_12;
input 	master_controller_address_25;
input 	master_controller_address_14;
input 	master_controller_address_13;
input 	master_controller_address_16;
input 	master_controller_address_15;
input 	master_controller_address_18;
input 	master_controller_address_17;
input 	master_controller_address_20;
input 	master_controller_address_19;
input 	master_controller_address_22;
input 	master_controller_address_21;
input 	master_controller_address_24;
input 	master_controller_address_23;
input 	master_controller_address_1;
input 	master_controller_address_2;
input 	master_controller_address_3;
input 	master_controller_address_4;
input 	master_controller_address_5;
input 	master_controller_address_6;
input 	master_controller_address_7;
input 	master_controller_address_8;
input 	master_controller_address_9;
input 	master_controller_address_10;
input 	master_controller_writedata_0;
input 	master_controller_writedata_1;
input 	master_controller_writedata_2;
input 	master_controller_writedata_3;
input 	master_controller_writedata_4;
input 	master_controller_writedata_5;
input 	master_controller_writedata_6;
input 	master_controller_writedata_7;
input 	master_controller_writedata_8;
input 	master_controller_writedata_9;
input 	master_controller_writedata_10;
input 	master_controller_writedata_11;
input 	master_controller_writedata_12;
input 	master_controller_writedata_13;
input 	master_controller_writedata_14;
input 	master_controller_writedata_15;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \the_SDRAMtest_new_sdram_controller_0_input_efifo_module|Equal1~0_combout ;
wire \the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[28]~0_combout ;
wire \the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[43]~1_combout ;
wire \the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[29]~2_combout ;
wire \the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[42]~3_combout ;
wire \the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[31]~4_combout ;
wire \the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[30]~5_combout ;
wire \the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[33]~6_combout ;
wire \the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[32]~7_combout ;
wire \the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[35]~8_combout ;
wire \the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[34]~9_combout ;
wire \the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[37]~10_combout ;
wire \the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[36]~11_combout ;
wire \the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[39]~12_combout ;
wire \the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[38]~13_combout ;
wire \the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[41]~14_combout ;
wire \the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[40]~15_combout ;
wire \comb~0_combout ;
wire \the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[18]~16_combout ;
wire \the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[19]~17_combout ;
wire \the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[20]~18_combout ;
wire \the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[21]~19_combout ;
wire \the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[22]~20_combout ;
wire \the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[23]~21_combout ;
wire \the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[24]~22_combout ;
wire \the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[25]~23_combout ;
wire \the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[26]~24_combout ;
wire \the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[27]~25_combout ;
wire \the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[0]~26_combout ;
wire \the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[1]~27_combout ;
wire \the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[2]~28_combout ;
wire \the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[3]~29_combout ;
wire \the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[4]~30_combout ;
wire \the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[5]~31_combout ;
wire \the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[6]~32_combout ;
wire \the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[7]~33_combout ;
wire \the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[8]~34_combout ;
wire \the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[9]~35_combout ;
wire \the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[10]~36_combout ;
wire \the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[11]~37_combout ;
wire \the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[12]~38_combout ;
wire \the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[13]~39_combout ;
wire \the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[14]~40_combout ;
wire \the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[15]~41_combout ;
wire \Add0~0_combout ;
wire \refresh_counter[0]~q ;
wire \Add0~1 ;
wire \Add0~2_combout ;
wire \refresh_counter~8_combout ;
wire \refresh_counter[1]~q ;
wire \Add0~3 ;
wire \Add0~4_combout ;
wire \refresh_counter[2]~q ;
wire \Add0~5 ;
wire \Add0~6_combout ;
wire \refresh_counter[3]~q ;
wire \Add0~7 ;
wire \Add0~8_combout ;
wire \refresh_counter~6_combout ;
wire \refresh_counter[4]~q ;
wire \Add0~9 ;
wire \Add0~10_combout ;
wire \refresh_counter~7_combout ;
wire \refresh_counter[5]~q ;
wire \Add0~11 ;
wire \Add0~12_combout ;
wire \refresh_counter~5_combout ;
wire \refresh_counter[6]~q ;
wire \Add0~13 ;
wire \Add0~14_combout ;
wire \refresh_counter~4_combout ;
wire \refresh_counter[7]~q ;
wire \Add0~15 ;
wire \Add0~16_combout ;
wire \refresh_counter[8]~12_combout ;
wire \refresh_counter[8]~q ;
wire \Add0~17 ;
wire \Add0~18_combout ;
wire \refresh_counter[9]~11_combout ;
wire \refresh_counter[9]~q ;
wire \Add0~19 ;
wire \Add0~20_combout ;
wire \refresh_counter~1_combout ;
wire \refresh_counter[10]~q ;
wire \Add0~21 ;
wire \Add0~22_combout ;
wire \refresh_counter~3_combout ;
wire \refresh_counter[11]~q ;
wire \Add0~23 ;
wire \Add0~24_combout ;
wire \refresh_counter~2_combout ;
wire \refresh_counter[12]~q ;
wire \Add0~25 ;
wire \Add0~26_combout ;
wire \refresh_counter~0_combout ;
wire \refresh_counter[13]~q ;
wire \Equal0~0_combout ;
wire \Equal0~1_combout ;
wire \Equal0~2_combout ;
wire \Equal0~3_combout ;
wire \Equal0~4_combout ;
wire \i_next.000~0_combout ;
wire \i_next.000~q ;
wire \Selector7~0_combout ;
wire \i_state.000~q ;
wire \Selector18~0_combout ;
wire \Selector8~0_combout ;
wire \i_state.001~q ;
wire \Selector6~0_combout ;
wire \i_refs[0]~q ;
wire \Selector5~0_combout ;
wire \i_refs[1]~q ;
wire \Add1~0_combout ;
wire \Selector4~0_combout ;
wire \i_refs[2]~q ;
wire \Selector16~0_combout ;
wire \WideOr6~0_combout ;
wire \Selector16~1_combout ;
wire \i_next.010~q ;
wire \Selector10~0_combout ;
wire \Selector15~0_combout ;
wire \Selector15~1_combout ;
wire \Selector15~2_combout ;
wire \i_count[0]~q ;
wire \Selector13~0_combout ;
wire \Selector14~0_combout ;
wire \i_count[1]~q ;
wire \Selector13~1_combout ;
wire \Selector13~2_combout ;
wire \i_count[2]~q ;
wire \Selector9~1_combout ;
wire \i_state.010~q ;
wire \Selector18~1_combout ;
wire \i_next.111~q ;
wire \Selector12~0_combout ;
wire \i_state.111~q ;
wire \Selector10~1_combout ;
wire \i_state.011~q ;
wire \Selector9~0_combout ;
wire \Selector17~0_combout ;
wire \i_next.101~q ;
wire \i_state.101~0_combout ;
wire \i_state.101~q ;
wire \init_done~0_combout ;
wire \init_done~q ;
wire \active_rnw~0_combout ;
wire \Selector24~1_combout ;
wire \active_rnw~q ;
wire \active_addr[10]~q ;
wire \pending~0_combout ;
wire \active_addr[24]~q ;
wire \pending~1_combout ;
wire \active_addr[12]~q ;
wire \active_addr[13]~q ;
wire \pending~2_combout ;
wire \active_addr[14]~q ;
wire \active_addr[15]~q ;
wire \pending~3_combout ;
wire \pending~4_combout ;
wire \active_addr[16]~q ;
wire \active_addr[17]~q ;
wire \pending~5_combout ;
wire \active_addr[18]~q ;
wire \active_addr[19]~q ;
wire \pending~6_combout ;
wire \active_addr[20]~q ;
wire \active_addr[21]~q ;
wire \pending~7_combout ;
wire \active_addr[22]~q ;
wire \active_addr[23]~q ;
wire \pending~8_combout ;
wire \pending~9_combout ;
wire \Selector30~2_combout ;
wire \active_cs_n~0_combout ;
wire \active_cs_n~1_combout ;
wire \active_cs_n~q ;
wire \pending~combout ;
wire \Selector41~6_combout ;
wire \Selector41~9_combout ;
wire \m_state.000000010~q ;
wire \Selector32~0_combout ;
wire \Selector32~1_combout ;
wire \m_state.100000000~q ;
wire \Selector37~0_combout ;
wire \Selector27~0_combout ;
wire \Selector35~0_combout ;
wire \Selector34~1_combout ;
wire \m_next~18_combout ;
wire \m_next~19_combout ;
wire \Selector34~2_combout ;
wire \m_next.000010000~q ;
wire \pending~10_combout ;
wire \Selector27~1_combout ;
wire \Selector28~0_combout ;
wire \Selector27~3_combout ;
wire \Selector27~4_combout ;
wire \Selector30~3_combout ;
wire \m_state.001000000~q ;
wire \WideOr8~0_combout ;
wire \Selector27~5_combout ;
wire \Selector27~6_combout ;
wire \m_state.000010000~q ;
wire \Selector38~0_combout ;
wire \m_count[1]~0_combout ;
wire \m_count[1]~1_combout ;
wire \m_count[0]~7_combout ;
wire \m_count[1]~3_combout ;
wire \m_next~17_combout ;
wire \Selector36~2_combout ;
wire \m_count[1]~4_combout ;
wire \m_count[1]~5_combout ;
wire \m_count[0]~8_combout ;
wire \m_count[0]~q ;
wire \Add3~0_combout ;
wire \m_count[1]~2_combout ;
wire \m_count[1]~6_combout ;
wire \m_count[1]~q ;
wire \Selector37~1_combout ;
wire \Selector37~2_combout ;
wire \Selector37~3_combout ;
wire \m_count[2]~q ;
wire \LessThan1~0_combout ;
wire \Selector29~0_combout ;
wire \Selector29~1_combout ;
wire \m_state.000100000~q ;
wire \Selector36~3_combout ;
wire \Selector36~4_combout ;
wire \m_next.010000000~q ;
wire \Selector31~0_combout ;
wire \m_state.010000000~q ;
wire \Selector33~0_combout ;
wire \Selector33~1_combout ;
wire \Selector34~0_combout ;
wire \m_next.000001000~q ;
wire \Selector27~2_combout ;
wire \m_state.000001000~q ;
wire \m_addr~0_combout ;
wire \Selector26~0_combout ;
wire \Selector26~1_combout ;
wire \Selector26~2_combout ;
wire \m_state.000000100~q ;
wire \Selector24~0_combout ;
wire \Selector33~2_combout ;
wire \Selector93~0_combout ;
wire \Selector33~3_combout ;
wire \Selector33~4_combout ;
wire \Selector33~5_combout ;
wire \m_next.000000001~q ;
wire \Selector24~2_combout ;
wire \m_state.000000001~q ;
wire \Selector23~0_combout ;
wire \ack_refresh_request~q ;
wire \refresh_request~0_combout ;
wire \refresh_request~q ;
wire \active_rnw~1_combout ;
wire \active_rnw~2_combout ;
wire \active_rnw~3_combout ;
wire \active_addr[11]~q ;
wire \Selector41~8_combout ;
wire \Selector41~7_combout ;
wire \f_pop~q ;
wire \m_addr[8]~1_combout ;
wire \active_addr[0]~q ;
wire \i_addr[12]~q ;
wire \Selector98~0_combout ;
wire \Selector98~1_combout ;
wire \Selector93~1_combout ;
wire \active_addr[1]~q ;
wire \Selector97~0_combout ;
wire \Selector97~1_combout ;
wire \active_addr[2]~q ;
wire \Selector96~0_combout ;
wire \Selector96~1_combout ;
wire \active_addr[3]~q ;
wire \Selector95~0_combout ;
wire \Selector95~1_combout ;
wire \active_addr[4]~q ;
wire \Selector94~0_combout ;
wire \Selector94~1_combout ;
wire \active_addr[6]~q ;
wire \Selector92~0_combout ;
wire \Selector92~1_combout ;
wire \active_addr[7]~q ;
wire \Selector91~0_combout ;
wire \Selector91~1_combout ;
wire \active_addr[8]~q ;
wire \Selector90~0_combout ;
wire \Selector90~1_combout ;
wire \active_addr[9]~q ;
wire \Selector89~0_combout ;
wire \Selector89~1_combout ;
wire \always5~0_combout ;
wire \Equal4~0_combout ;
wire \rd_valid[0]~q ;
wire \rd_valid[1]~q ;
wire \active_addr[5]~q ;
wire \f_select~combout ;
wire \Selector93~2_combout ;
wire \Selector93~3_combout ;
wire \Selector93~4_combout ;
wire \Selector88~2_combout ;
wire \Selector88~3_combout ;
wire \Selector87~2_combout ;
wire \Selector87~3_combout ;
wire \Selector86~2_combout ;
wire \Selector86~3_combout ;
wire \Selector100~0_combout ;
wire \WideOr16~0_combout ;
wire \Selector99~0_combout ;
wire \Selector2~0_combout ;
wire \i_cmd[1]~q ;
wire \Selector21~0_combout ;
wire \WideOr9~0_combout ;
wire \Selector21~1_combout ;
wire \Selector0~0_combout ;
wire \i_cmd[3]~q ;
wire \Selector19~0_combout ;
wire \Selector19~1_combout ;
wire \Selector19~2_combout ;
wire \Selector19~3_combout ;
wire \Selector1~0_combout ;
wire \i_cmd[2]~q ;
wire \Selector20~0_combout ;
wire \Selector3~0_combout ;
wire \i_cmd[0]~q ;
wire \Selector22~0_combout ;
wire \Selector22~1_combout ;
wire \active_data[0]~q ;
wire \Selector116~0_combout ;
wire \m_data[14]~0_combout ;
wire \Selector116~1_combout ;
wire \active_data[1]~q ;
wire \Selector115~0_combout ;
wire \Selector115~1_combout ;
wire \active_data[2]~q ;
wire \Selector114~0_combout ;
wire \Selector114~1_combout ;
wire \active_data[3]~q ;
wire \Selector113~0_combout ;
wire \Selector113~1_combout ;
wire \active_data[4]~q ;
wire \Selector112~0_combout ;
wire \Selector112~1_combout ;
wire \active_data[5]~q ;
wire \Selector111~0_combout ;
wire \Selector111~1_combout ;
wire \active_data[6]~q ;
wire \Selector110~0_combout ;
wire \Selector110~1_combout ;
wire \active_data[7]~q ;
wire \Selector109~0_combout ;
wire \Selector109~1_combout ;
wire \active_data[8]~q ;
wire \Selector108~0_combout ;
wire \Selector108~1_combout ;
wire \active_data[9]~q ;
wire \Selector107~0_combout ;
wire \Selector107~1_combout ;
wire \active_data[10]~q ;
wire \Selector106~0_combout ;
wire \Selector106~1_combout ;
wire \active_data[11]~q ;
wire \Selector105~0_combout ;
wire \Selector105~1_combout ;
wire \active_data[12]~q ;
wire \Selector104~0_combout ;
wire \Selector104~1_combout ;
wire \active_data[13]~q ;
wire \Selector103~0_combout ;
wire \Selector103~1_combout ;
wire \active_data[14]~q ;
wire \Selector102~0_combout ;
wire \Selector102~1_combout ;
wire \active_data[15]~q ;
wire \Selector101~0_combout ;
wire \Selector101~1_combout ;


SDRAMtest_SDRAMtest_new_sdram_controller_0_input_efifo_module the_SDRAMtest_new_sdram_controller_0_input_efifo_module(
	.clk(clk_0),
	.reset_n(altera_reset_synchronizer_int_chain_out),
	.entries_1(entries_1),
	.entries_0(entries_0),
	.Equal1(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|Equal1~0_combout ),
	.rd_data_28(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[28]~0_combout ),
	.rd_data_43(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[43]~1_combout ),
	.rd_data_29(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[29]~2_combout ),
	.rd_data_42(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[42]~3_combout ),
	.rd_data_31(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[31]~4_combout ),
	.rd_data_30(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[30]~5_combout ),
	.rd_data_33(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[33]~6_combout ),
	.rd_data_32(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[32]~7_combout ),
	.rd_data_35(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[35]~8_combout ),
	.rd_data_34(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[34]~9_combout ),
	.rd_data_37(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[37]~10_combout ),
	.rd_data_36(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[36]~11_combout ),
	.rd_data_39(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[39]~12_combout ),
	.rd_data_38(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[38]~13_combout ),
	.rd_data_41(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[41]~14_combout ),
	.rd_data_40(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[40]~15_combout ),
	.pending(\pending~combout ),
	.f_pop(\f_pop~q ),
	.f_select(\f_select~combout ),
	.Equal0(Equal0),
	.comb(\comb~0_combout ),
	.rd_data_18(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[18]~16_combout ),
	.rd_data_19(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[19]~17_combout ),
	.rd_data_20(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[20]~18_combout ),
	.rd_data_21(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[21]~19_combout ),
	.rd_data_22(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[22]~20_combout ),
	.rd_data_23(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[23]~21_combout ),
	.rd_data_24(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[24]~22_combout ),
	.rd_data_25(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[25]~23_combout ),
	.rd_data_26(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[26]~24_combout ),
	.rd_data_27(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[27]~25_combout ),
	.rd_data_0(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[0]~26_combout ),
	.rd_data_1(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[1]~27_combout ),
	.rd_data_2(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[2]~28_combout ),
	.rd_data_3(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[3]~29_combout ),
	.rd_data_4(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[4]~30_combout ),
	.rd_data_5(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[5]~31_combout ),
	.rd_data_6(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[6]~32_combout ),
	.rd_data_7(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[7]~33_combout ),
	.rd_data_8(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[8]~34_combout ),
	.rd_data_9(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[9]~35_combout ),
	.rd_data_10(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[10]~36_combout ),
	.rd_data_11(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[11]~37_combout ),
	.rd_data_12(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[12]~38_combout ),
	.rd_data_13(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[13]~39_combout ),
	.rd_data_14(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[14]~40_combout ),
	.rd_data_15(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[15]~41_combout ),
	.master_controller_write(master_controller_write),
	.master_controller_address_11(master_controller_address_11),
	.master_controller_address_12(master_controller_address_12),
	.master_controller_address_25(master_controller_address_25),
	.master_controller_address_14(master_controller_address_14),
	.master_controller_address_13(master_controller_address_13),
	.master_controller_address_16(master_controller_address_16),
	.master_controller_address_15(master_controller_address_15),
	.master_controller_address_18(master_controller_address_18),
	.master_controller_address_17(master_controller_address_17),
	.master_controller_address_20(master_controller_address_20),
	.master_controller_address_19(master_controller_address_19),
	.master_controller_address_22(master_controller_address_22),
	.master_controller_address_21(master_controller_address_21),
	.master_controller_address_24(master_controller_address_24),
	.master_controller_address_23(master_controller_address_23),
	.master_controller_address_1(master_controller_address_1),
	.master_controller_address_2(master_controller_address_2),
	.master_controller_address_3(master_controller_address_3),
	.master_controller_address_4(master_controller_address_4),
	.master_controller_address_5(master_controller_address_5),
	.master_controller_address_6(master_controller_address_6),
	.master_controller_address_7(master_controller_address_7),
	.master_controller_address_8(master_controller_address_8),
	.master_controller_address_9(master_controller_address_9),
	.master_controller_address_10(master_controller_address_10),
	.master_controller_writedata_0(master_controller_writedata_0),
	.master_controller_writedata_1(master_controller_writedata_1),
	.master_controller_writedata_2(master_controller_writedata_2),
	.master_controller_writedata_3(master_controller_writedata_3),
	.master_controller_writedata_4(master_controller_writedata_4),
	.master_controller_writedata_5(master_controller_writedata_5),
	.master_controller_writedata_6(master_controller_writedata_6),
	.master_controller_writedata_7(master_controller_writedata_7),
	.master_controller_writedata_8(master_controller_writedata_8),
	.master_controller_writedata_9(master_controller_writedata_9),
	.master_controller_writedata_10(master_controller_writedata_10),
	.master_controller_writedata_11(master_controller_writedata_11),
	.master_controller_writedata_12(master_controller_writedata_12),
	.master_controller_writedata_13(master_controller_writedata_13),
	.master_controller_writedata_14(master_controller_writedata_14),
	.master_controller_writedata_15(master_controller_writedata_15));

fiftyfivenm_lcell_comb \comb~0 (
	.dataa(master_controller_write),
	.datab(master_controller_read),
	.datac(read_accepted),
	.datad(Equal0),
	.cin(gnd),
	.combout(\comb~0_combout ),
	.cout());
defparam \comb~0 .lut_mask = 16'h00AE;
defparam \comb~0 .sum_lutc_input = "datac";

dffeas \m_addr[0] (
	.clk(clk_0),
	.d(\Selector98~1_combout ),
	.asdata(vcc),
	.clrn(altera_reset_synchronizer_int_chain_out),
	.aload(gnd),
	.sclr(gnd),
	.sload(\m_state.001000000~q ),
	.ena(\Selector93~1_combout ),
	.q(m_addr_0),
	.prn(vcc));
defparam \m_addr[0] .is_wysiwyg = "true";
defparam \m_addr[0] .power_up = "low";

dffeas \m_addr[1] (
	.clk(clk_0),
	.d(\Selector97~1_combout ),
	.asdata(vcc),
	.clrn(altera_reset_synchronizer_int_chain_out),
	.aload(gnd),
	.sclr(gnd),
	.sload(\m_state.001000000~q ),
	.ena(\Selector93~1_combout ),
	.q(m_addr_1),
	.prn(vcc));
defparam \m_addr[1] .is_wysiwyg = "true";
defparam \m_addr[1] .power_up = "low";

dffeas \m_addr[2] (
	.clk(clk_0),
	.d(\Selector96~1_combout ),
	.asdata(vcc),
	.clrn(altera_reset_synchronizer_int_chain_out),
	.aload(gnd),
	.sclr(gnd),
	.sload(\m_state.001000000~q ),
	.ena(\Selector93~1_combout ),
	.q(m_addr_2),
	.prn(vcc));
defparam \m_addr[2] .is_wysiwyg = "true";
defparam \m_addr[2] .power_up = "low";

dffeas \m_addr[3] (
	.clk(clk_0),
	.d(\Selector95~1_combout ),
	.asdata(vcc),
	.clrn(altera_reset_synchronizer_int_chain_out),
	.aload(gnd),
	.sclr(gnd),
	.sload(\m_state.001000000~q ),
	.ena(\Selector93~1_combout ),
	.q(m_addr_3),
	.prn(vcc));
defparam \m_addr[3] .is_wysiwyg = "true";
defparam \m_addr[3] .power_up = "low";

dffeas \m_addr[4] (
	.clk(clk_0),
	.d(\Selector94~1_combout ),
	.asdata(vcc),
	.clrn(altera_reset_synchronizer_int_chain_out),
	.aload(gnd),
	.sclr(gnd),
	.sload(\m_state.001000000~q ),
	.ena(\Selector93~1_combout ),
	.q(m_addr_4),
	.prn(vcc));
defparam \m_addr[4] .is_wysiwyg = "true";
defparam \m_addr[4] .power_up = "low";

dffeas \m_addr[6] (
	.clk(clk_0),
	.d(\Selector92~1_combout ),
	.asdata(vcc),
	.clrn(altera_reset_synchronizer_int_chain_out),
	.aload(gnd),
	.sclr(gnd),
	.sload(\m_state.001000000~q ),
	.ena(\Selector93~1_combout ),
	.q(m_addr_6),
	.prn(vcc));
defparam \m_addr[6] .is_wysiwyg = "true";
defparam \m_addr[6] .power_up = "low";

dffeas \m_addr[7] (
	.clk(clk_0),
	.d(\Selector91~1_combout ),
	.asdata(vcc),
	.clrn(altera_reset_synchronizer_int_chain_out),
	.aload(gnd),
	.sclr(gnd),
	.sload(\m_state.001000000~q ),
	.ena(\Selector93~1_combout ),
	.q(m_addr_7),
	.prn(vcc));
defparam \m_addr[7] .is_wysiwyg = "true";
defparam \m_addr[7] .power_up = "low";

dffeas \m_addr[8] (
	.clk(clk_0),
	.d(\Selector90~1_combout ),
	.asdata(vcc),
	.clrn(altera_reset_synchronizer_int_chain_out),
	.aload(gnd),
	.sclr(gnd),
	.sload(\m_state.001000000~q ),
	.ena(\Selector93~1_combout ),
	.q(m_addr_8),
	.prn(vcc));
defparam \m_addr[8] .is_wysiwyg = "true";
defparam \m_addr[8] .power_up = "low";

dffeas \m_addr[9] (
	.clk(clk_0),
	.d(\Selector89~1_combout ),
	.asdata(vcc),
	.clrn(altera_reset_synchronizer_int_chain_out),
	.aload(gnd),
	.sclr(gnd),
	.sload(\m_state.001000000~q ),
	.ena(\Selector93~1_combout ),
	.q(m_addr_9),
	.prn(vcc));
defparam \m_addr[9] .is_wysiwyg = "true";
defparam \m_addr[9] .power_up = "low";

dffeas oe(
	.clk(clk_0),
	.d(\always5~0_combout ),
	.asdata(vcc),
	.clrn(altera_reset_synchronizer_int_chain_out),
	.aload(gnd),
	.sclr(!\m_state.000010000~q ),
	.sload(gnd),
	.ena(vcc),
	.q(oe1),
	.prn(vcc));
defparam oe.is_wysiwyg = "true";
defparam oe.power_up = "low";

dffeas za_valid(
	.clk(clk_0),
	.d(\rd_valid[1]~q ),
	.asdata(vcc),
	.clrn(altera_reset_synchronizer_int_chain_out),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(za_valid1),
	.prn(vcc));
defparam za_valid.is_wysiwyg = "true";
defparam za_valid.power_up = "low";

dffeas \za_data[0] (
	.clk(clk_0),
	.d(sdram_wire_dq_0),
	.asdata(vcc),
	.clrn(altera_reset_synchronizer_int_chain_out),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(za_data_0),
	.prn(vcc));
defparam \za_data[0] .is_wysiwyg = "true";
defparam \za_data[0] .power_up = "low";

dffeas \za_data[1] (
	.clk(clk_0),
	.d(sdram_wire_dq_1),
	.asdata(vcc),
	.clrn(altera_reset_synchronizer_int_chain_out),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(za_data_1),
	.prn(vcc));
defparam \za_data[1] .is_wysiwyg = "true";
defparam \za_data[1] .power_up = "low";

dffeas \za_data[2] (
	.clk(clk_0),
	.d(sdram_wire_dq_2),
	.asdata(vcc),
	.clrn(altera_reset_synchronizer_int_chain_out),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(za_data_2),
	.prn(vcc));
defparam \za_data[2] .is_wysiwyg = "true";
defparam \za_data[2] .power_up = "low";

dffeas \za_data[3] (
	.clk(clk_0),
	.d(sdram_wire_dq_3),
	.asdata(vcc),
	.clrn(altera_reset_synchronizer_int_chain_out),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(za_data_3),
	.prn(vcc));
defparam \za_data[3] .is_wysiwyg = "true";
defparam \za_data[3] .power_up = "low";

dffeas \za_data[4] (
	.clk(clk_0),
	.d(sdram_wire_dq_4),
	.asdata(vcc),
	.clrn(altera_reset_synchronizer_int_chain_out),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(za_data_4),
	.prn(vcc));
defparam \za_data[4] .is_wysiwyg = "true";
defparam \za_data[4] .power_up = "low";

dffeas \za_data[5] (
	.clk(clk_0),
	.d(sdram_wire_dq_5),
	.asdata(vcc),
	.clrn(altera_reset_synchronizer_int_chain_out),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(za_data_5),
	.prn(vcc));
defparam \za_data[5] .is_wysiwyg = "true";
defparam \za_data[5] .power_up = "low";

dffeas \za_data[6] (
	.clk(clk_0),
	.d(sdram_wire_dq_6),
	.asdata(vcc),
	.clrn(altera_reset_synchronizer_int_chain_out),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(za_data_6),
	.prn(vcc));
defparam \za_data[6] .is_wysiwyg = "true";
defparam \za_data[6] .power_up = "low";

dffeas \za_data[7] (
	.clk(clk_0),
	.d(sdram_wire_dq_7),
	.asdata(vcc),
	.clrn(altera_reset_synchronizer_int_chain_out),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(za_data_7),
	.prn(vcc));
defparam \za_data[7] .is_wysiwyg = "true";
defparam \za_data[7] .power_up = "low";

dffeas \za_data[8] (
	.clk(clk_0),
	.d(sdram_wire_dq_8),
	.asdata(vcc),
	.clrn(altera_reset_synchronizer_int_chain_out),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(za_data_8),
	.prn(vcc));
defparam \za_data[8] .is_wysiwyg = "true";
defparam \za_data[8] .power_up = "low";

dffeas \za_data[9] (
	.clk(clk_0),
	.d(sdram_wire_dq_9),
	.asdata(vcc),
	.clrn(altera_reset_synchronizer_int_chain_out),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(za_data_9),
	.prn(vcc));
defparam \za_data[9] .is_wysiwyg = "true";
defparam \za_data[9] .power_up = "low";

dffeas \za_data[10] (
	.clk(clk_0),
	.d(sdram_wire_dq_10),
	.asdata(vcc),
	.clrn(altera_reset_synchronizer_int_chain_out),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(za_data_10),
	.prn(vcc));
defparam \za_data[10] .is_wysiwyg = "true";
defparam \za_data[10] .power_up = "low";

dffeas \za_data[11] (
	.clk(clk_0),
	.d(sdram_wire_dq_11),
	.asdata(vcc),
	.clrn(altera_reset_synchronizer_int_chain_out),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(za_data_11),
	.prn(vcc));
defparam \za_data[11] .is_wysiwyg = "true";
defparam \za_data[11] .power_up = "low";

dffeas \za_data[12] (
	.clk(clk_0),
	.d(sdram_wire_dq_12),
	.asdata(vcc),
	.clrn(altera_reset_synchronizer_int_chain_out),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(za_data_12),
	.prn(vcc));
defparam \za_data[12] .is_wysiwyg = "true";
defparam \za_data[12] .power_up = "low";

dffeas \za_data[13] (
	.clk(clk_0),
	.d(sdram_wire_dq_13),
	.asdata(vcc),
	.clrn(altera_reset_synchronizer_int_chain_out),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(za_data_13),
	.prn(vcc));
defparam \za_data[13] .is_wysiwyg = "true";
defparam \za_data[13] .power_up = "low";

dffeas \za_data[14] (
	.clk(clk_0),
	.d(sdram_wire_dq_14),
	.asdata(vcc),
	.clrn(altera_reset_synchronizer_int_chain_out),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(za_data_14),
	.prn(vcc));
defparam \za_data[14] .is_wysiwyg = "true";
defparam \za_data[14] .power_up = "low";

dffeas \za_data[15] (
	.clk(clk_0),
	.d(sdram_wire_dq_15),
	.asdata(vcc),
	.clrn(altera_reset_synchronizer_int_chain_out),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(za_data_15),
	.prn(vcc));
defparam \za_data[15] .is_wysiwyg = "true";
defparam \za_data[15] .power_up = "low";

dffeas \m_addr[5] (
	.clk(clk_0),
	.d(\Selector93~4_combout ),
	.asdata(vcc),
	.clrn(altera_reset_synchronizer_int_chain_out),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(m_addr_5),
	.prn(vcc));
defparam \m_addr[5] .is_wysiwyg = "true";
defparam \m_addr[5] .power_up = "low";

dffeas \m_addr[10] (
	.clk(clk_0),
	.d(\Selector88~3_combout ),
	.asdata(vcc),
	.clrn(altera_reset_synchronizer_int_chain_out),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\Selector93~1_combout ),
	.q(m_addr_10),
	.prn(vcc));
defparam \m_addr[10] .is_wysiwyg = "true";
defparam \m_addr[10] .power_up = "low";

dffeas \m_addr[11] (
	.clk(clk_0),
	.d(\Selector87~3_combout ),
	.asdata(vcc),
	.clrn(altera_reset_synchronizer_int_chain_out),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\Selector93~1_combout ),
	.q(m_addr_11),
	.prn(vcc));
defparam \m_addr[11] .is_wysiwyg = "true";
defparam \m_addr[11] .power_up = "low";

dffeas \m_addr[12] (
	.clk(clk_0),
	.d(\Selector86~3_combout ),
	.asdata(vcc),
	.clrn(altera_reset_synchronizer_int_chain_out),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\Selector93~1_combout ),
	.q(m_addr_12),
	.prn(vcc));
defparam \m_addr[12] .is_wysiwyg = "true";
defparam \m_addr[12] .power_up = "low";

dffeas \m_bank[0] (
	.clk(clk_0),
	.d(\Selector100~0_combout ),
	.asdata(vcc),
	.clrn(altera_reset_synchronizer_int_chain_out),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\WideOr16~0_combout ),
	.q(m_bank_0),
	.prn(vcc));
defparam \m_bank[0] .is_wysiwyg = "true";
defparam \m_bank[0] .power_up = "low";

dffeas \m_bank[1] (
	.clk(clk_0),
	.d(\Selector99~0_combout ),
	.asdata(vcc),
	.clrn(altera_reset_synchronizer_int_chain_out),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\WideOr16~0_combout ),
	.q(m_bank_1),
	.prn(vcc));
defparam \m_bank[1] .is_wysiwyg = "true";
defparam \m_bank[1] .power_up = "low";

dffeas \m_cmd[1] (
	.clk(clk_0),
	.d(\Selector21~1_combout ),
	.asdata(vcc),
	.clrn(altera_reset_synchronizer_int_chain_out),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(m_cmd_1),
	.prn(vcc));
defparam \m_cmd[1] .is_wysiwyg = "true";
defparam \m_cmd[1] .power_up = "low";

dffeas \m_cmd[3] (
	.clk(clk_0),
	.d(\Selector19~3_combout ),
	.asdata(vcc),
	.clrn(altera_reset_synchronizer_int_chain_out),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(m_cmd_3),
	.prn(vcc));
defparam \m_cmd[3] .is_wysiwyg = "true";
defparam \m_cmd[3] .power_up = "low";

dffeas \m_cmd[2] (
	.clk(clk_0),
	.d(\Selector20~0_combout ),
	.asdata(vcc),
	.clrn(altera_reset_synchronizer_int_chain_out),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(m_cmd_2),
	.prn(vcc));
defparam \m_cmd[2] .is_wysiwyg = "true";
defparam \m_cmd[2] .power_up = "low";

dffeas \m_cmd[0] (
	.clk(clk_0),
	.d(\Selector22~1_combout ),
	.asdata(vcc),
	.clrn(altera_reset_synchronizer_int_chain_out),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(m_cmd_0),
	.prn(vcc));
defparam \m_cmd[0] .is_wysiwyg = "true";
defparam \m_cmd[0] .power_up = "low";

dffeas \m_data[0] (
	.clk(clk_0),
	.d(\Selector116~1_combout ),
	.asdata(vcc),
	.clrn(altera_reset_synchronizer_int_chain_out),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(m_data_0),
	.prn(vcc));
defparam \m_data[0] .is_wysiwyg = "true";
defparam \m_data[0] .power_up = "low";

dffeas \m_data[1] (
	.clk(clk_0),
	.d(\Selector115~1_combout ),
	.asdata(vcc),
	.clrn(altera_reset_synchronizer_int_chain_out),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(m_data_1),
	.prn(vcc));
defparam \m_data[1] .is_wysiwyg = "true";
defparam \m_data[1] .power_up = "low";

dffeas \m_data[2] (
	.clk(clk_0),
	.d(\Selector114~1_combout ),
	.asdata(vcc),
	.clrn(altera_reset_synchronizer_int_chain_out),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(m_data_2),
	.prn(vcc));
defparam \m_data[2] .is_wysiwyg = "true";
defparam \m_data[2] .power_up = "low";

dffeas \m_data[3] (
	.clk(clk_0),
	.d(\Selector113~1_combout ),
	.asdata(vcc),
	.clrn(altera_reset_synchronizer_int_chain_out),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(m_data_3),
	.prn(vcc));
defparam \m_data[3] .is_wysiwyg = "true";
defparam \m_data[3] .power_up = "low";

dffeas \m_data[4] (
	.clk(clk_0),
	.d(\Selector112~1_combout ),
	.asdata(vcc),
	.clrn(altera_reset_synchronizer_int_chain_out),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(m_data_4),
	.prn(vcc));
defparam \m_data[4] .is_wysiwyg = "true";
defparam \m_data[4] .power_up = "low";

dffeas \m_data[5] (
	.clk(clk_0),
	.d(\Selector111~1_combout ),
	.asdata(vcc),
	.clrn(altera_reset_synchronizer_int_chain_out),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(m_data_5),
	.prn(vcc));
defparam \m_data[5] .is_wysiwyg = "true";
defparam \m_data[5] .power_up = "low";

dffeas \m_data[6] (
	.clk(clk_0),
	.d(\Selector110~1_combout ),
	.asdata(vcc),
	.clrn(altera_reset_synchronizer_int_chain_out),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(m_data_6),
	.prn(vcc));
defparam \m_data[6] .is_wysiwyg = "true";
defparam \m_data[6] .power_up = "low";

dffeas \m_data[7] (
	.clk(clk_0),
	.d(\Selector109~1_combout ),
	.asdata(vcc),
	.clrn(altera_reset_synchronizer_int_chain_out),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(m_data_7),
	.prn(vcc));
defparam \m_data[7] .is_wysiwyg = "true";
defparam \m_data[7] .power_up = "low";

dffeas \m_data[8] (
	.clk(clk_0),
	.d(\Selector108~1_combout ),
	.asdata(vcc),
	.clrn(altera_reset_synchronizer_int_chain_out),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(m_data_8),
	.prn(vcc));
defparam \m_data[8] .is_wysiwyg = "true";
defparam \m_data[8] .power_up = "low";

dffeas \m_data[9] (
	.clk(clk_0),
	.d(\Selector107~1_combout ),
	.asdata(vcc),
	.clrn(altera_reset_synchronizer_int_chain_out),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(m_data_9),
	.prn(vcc));
defparam \m_data[9] .is_wysiwyg = "true";
defparam \m_data[9] .power_up = "low";

dffeas \m_data[10] (
	.clk(clk_0),
	.d(\Selector106~1_combout ),
	.asdata(vcc),
	.clrn(altera_reset_synchronizer_int_chain_out),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(m_data_10),
	.prn(vcc));
defparam \m_data[10] .is_wysiwyg = "true";
defparam \m_data[10] .power_up = "low";

dffeas \m_data[11] (
	.clk(clk_0),
	.d(\Selector105~1_combout ),
	.asdata(vcc),
	.clrn(altera_reset_synchronizer_int_chain_out),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(m_data_11),
	.prn(vcc));
defparam \m_data[11] .is_wysiwyg = "true";
defparam \m_data[11] .power_up = "low";

dffeas \m_data[12] (
	.clk(clk_0),
	.d(\Selector104~1_combout ),
	.asdata(vcc),
	.clrn(altera_reset_synchronizer_int_chain_out),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(m_data_12),
	.prn(vcc));
defparam \m_data[12] .is_wysiwyg = "true";
defparam \m_data[12] .power_up = "low";

dffeas \m_data[13] (
	.clk(clk_0),
	.d(\Selector103~1_combout ),
	.asdata(vcc),
	.clrn(altera_reset_synchronizer_int_chain_out),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(m_data_13),
	.prn(vcc));
defparam \m_data[13] .is_wysiwyg = "true";
defparam \m_data[13] .power_up = "low";

dffeas \m_data[14] (
	.clk(clk_0),
	.d(\Selector102~1_combout ),
	.asdata(vcc),
	.clrn(altera_reset_synchronizer_int_chain_out),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(m_data_14),
	.prn(vcc));
defparam \m_data[14] .is_wysiwyg = "true";
defparam \m_data[14] .power_up = "low";

dffeas \m_data[15] (
	.clk(clk_0),
	.d(\Selector101~1_combout ),
	.asdata(vcc),
	.clrn(altera_reset_synchronizer_int_chain_out),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(m_data_15),
	.prn(vcc));
defparam \m_data[15] .is_wysiwyg = "true";
defparam \m_data[15] .power_up = "low";

fiftyfivenm_lcell_comb \Add0~0 (
	.dataa(\refresh_counter[0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(\Add0~0_combout ),
	.cout(\Add0~1 ));
defparam \Add0~0 .lut_mask = 16'h55AA;
defparam \Add0~0 .sum_lutc_input = "datac";

dffeas \refresh_counter[0] (
	.clk(clk_0),
	.d(\Add0~0_combout ),
	.asdata(vcc),
	.clrn(altera_reset_synchronizer_int_chain_out),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\refresh_counter[0]~q ),
	.prn(vcc));
defparam \refresh_counter[0] .is_wysiwyg = "true";
defparam \refresh_counter[0] .power_up = "low";

fiftyfivenm_lcell_comb \Add0~2 (
	.dataa(\refresh_counter[1]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add0~1 ),
	.combout(\Add0~2_combout ),
	.cout(\Add0~3 ));
defparam \Add0~2 .lut_mask = 16'hA505;
defparam \Add0~2 .sum_lutc_input = "cin";

fiftyfivenm_lcell_comb \refresh_counter~8 (
	.dataa(\Add0~2_combout ),
	.datab(gnd),
	.datac(gnd),
	.datad(\Equal0~4_combout ),
	.cin(gnd),
	.combout(\refresh_counter~8_combout ),
	.cout());
defparam \refresh_counter~8 .lut_mask = 16'h00AA;
defparam \refresh_counter~8 .sum_lutc_input = "datac";

dffeas \refresh_counter[1] (
	.clk(clk_0),
	.d(\refresh_counter~8_combout ),
	.asdata(vcc),
	.clrn(altera_reset_synchronizer_int_chain_out),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\refresh_counter[1]~q ),
	.prn(vcc));
defparam \refresh_counter[1] .is_wysiwyg = "true";
defparam \refresh_counter[1] .power_up = "low";

fiftyfivenm_lcell_comb \Add0~4 (
	.dataa(\refresh_counter[2]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add0~3 ),
	.combout(\Add0~4_combout ),
	.cout(\Add0~5 ));
defparam \Add0~4 .lut_mask = 16'h5AAF;
defparam \Add0~4 .sum_lutc_input = "cin";

dffeas \refresh_counter[2] (
	.clk(clk_0),
	.d(\Add0~4_combout ),
	.asdata(vcc),
	.clrn(altera_reset_synchronizer_int_chain_out),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\refresh_counter[2]~q ),
	.prn(vcc));
defparam \refresh_counter[2] .is_wysiwyg = "true";
defparam \refresh_counter[2] .power_up = "low";

fiftyfivenm_lcell_comb \Add0~6 (
	.dataa(\refresh_counter[3]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add0~5 ),
	.combout(\Add0~6_combout ),
	.cout(\Add0~7 ));
defparam \Add0~6 .lut_mask = 16'hA505;
defparam \Add0~6 .sum_lutc_input = "cin";

dffeas \refresh_counter[3] (
	.clk(clk_0),
	.d(\Add0~6_combout ),
	.asdata(vcc),
	.clrn(altera_reset_synchronizer_int_chain_out),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\refresh_counter[3]~q ),
	.prn(vcc));
defparam \refresh_counter[3] .is_wysiwyg = "true";
defparam \refresh_counter[3] .power_up = "low";

fiftyfivenm_lcell_comb \Add0~8 (
	.dataa(\refresh_counter[4]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add0~7 ),
	.combout(\Add0~8_combout ),
	.cout(\Add0~9 ));
defparam \Add0~8 .lut_mask = 16'hA55F;
defparam \Add0~8 .sum_lutc_input = "cin";

fiftyfivenm_lcell_comb \refresh_counter~6 (
	.dataa(\Add0~8_combout ),
	.datab(gnd),
	.datac(gnd),
	.datad(\Equal0~4_combout ),
	.cin(gnd),
	.combout(\refresh_counter~6_combout ),
	.cout());
defparam \refresh_counter~6 .lut_mask = 16'hFF55;
defparam \refresh_counter~6 .sum_lutc_input = "datac";

dffeas \refresh_counter[4] (
	.clk(clk_0),
	.d(\refresh_counter~6_combout ),
	.asdata(vcc),
	.clrn(altera_reset_synchronizer_int_chain_out),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\refresh_counter[4]~q ),
	.prn(vcc));
defparam \refresh_counter[4] .is_wysiwyg = "true";
defparam \refresh_counter[4] .power_up = "low";

fiftyfivenm_lcell_comb \Add0~10 (
	.dataa(\refresh_counter[5]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add0~9 ),
	.combout(\Add0~10_combout ),
	.cout(\Add0~11 ));
defparam \Add0~10 .lut_mask = 16'hA505;
defparam \Add0~10 .sum_lutc_input = "cin";

fiftyfivenm_lcell_comb \refresh_counter~7 (
	.dataa(\Add0~10_combout ),
	.datab(gnd),
	.datac(gnd),
	.datad(\Equal0~4_combout ),
	.cin(gnd),
	.combout(\refresh_counter~7_combout ),
	.cout());
defparam \refresh_counter~7 .lut_mask = 16'h00AA;
defparam \refresh_counter~7 .sum_lutc_input = "datac";

dffeas \refresh_counter[5] (
	.clk(clk_0),
	.d(\refresh_counter~7_combout ),
	.asdata(vcc),
	.clrn(altera_reset_synchronizer_int_chain_out),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\refresh_counter[5]~q ),
	.prn(vcc));
defparam \refresh_counter[5] .is_wysiwyg = "true";
defparam \refresh_counter[5] .power_up = "low";

fiftyfivenm_lcell_comb \Add0~12 (
	.dataa(\refresh_counter[6]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add0~11 ),
	.combout(\Add0~12_combout ),
	.cout(\Add0~13 ));
defparam \Add0~12 .lut_mask = 16'h5AAF;
defparam \Add0~12 .sum_lutc_input = "cin";

fiftyfivenm_lcell_comb \refresh_counter~5 (
	.dataa(\Add0~12_combout ),
	.datab(gnd),
	.datac(gnd),
	.datad(\Equal0~4_combout ),
	.cin(gnd),
	.combout(\refresh_counter~5_combout ),
	.cout());
defparam \refresh_counter~5 .lut_mask = 16'h00AA;
defparam \refresh_counter~5 .sum_lutc_input = "datac";

dffeas \refresh_counter[6] (
	.clk(clk_0),
	.d(\refresh_counter~5_combout ),
	.asdata(vcc),
	.clrn(altera_reset_synchronizer_int_chain_out),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\refresh_counter[6]~q ),
	.prn(vcc));
defparam \refresh_counter[6] .is_wysiwyg = "true";
defparam \refresh_counter[6] .power_up = "low";

fiftyfivenm_lcell_comb \Add0~14 (
	.dataa(\refresh_counter[7]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add0~13 ),
	.combout(\Add0~14_combout ),
	.cout(\Add0~15 ));
defparam \Add0~14 .lut_mask = 16'hA505;
defparam \Add0~14 .sum_lutc_input = "cin";

fiftyfivenm_lcell_comb \refresh_counter~4 (
	.dataa(\Add0~14_combout ),
	.datab(gnd),
	.datac(gnd),
	.datad(\Equal0~4_combout ),
	.cin(gnd),
	.combout(\refresh_counter~4_combout ),
	.cout());
defparam \refresh_counter~4 .lut_mask = 16'h00AA;
defparam \refresh_counter~4 .sum_lutc_input = "datac";

dffeas \refresh_counter[7] (
	.clk(clk_0),
	.d(\refresh_counter~4_combout ),
	.asdata(vcc),
	.clrn(altera_reset_synchronizer_int_chain_out),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\refresh_counter[7]~q ),
	.prn(vcc));
defparam \refresh_counter[7] .is_wysiwyg = "true";
defparam \refresh_counter[7] .power_up = "low";

fiftyfivenm_lcell_comb \Add0~16 (
	.dataa(\refresh_counter[8]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add0~15 ),
	.combout(\Add0~16_combout ),
	.cout(\Add0~17 ));
defparam \Add0~16 .lut_mask = 16'hA55F;
defparam \Add0~16 .sum_lutc_input = "cin";

fiftyfivenm_lcell_comb \refresh_counter[8]~12 (
	.dataa(\Add0~16_combout ),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\refresh_counter[8]~12_combout ),
	.cout());
defparam \refresh_counter[8]~12 .lut_mask = 16'h5555;
defparam \refresh_counter[8]~12 .sum_lutc_input = "datac";

dffeas \refresh_counter[8] (
	.clk(clk_0),
	.d(\refresh_counter[8]~12_combout ),
	.asdata(vcc),
	.clrn(altera_reset_synchronizer_int_chain_out),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\refresh_counter[8]~q ),
	.prn(vcc));
defparam \refresh_counter[8] .is_wysiwyg = "true";
defparam \refresh_counter[8] .power_up = "low";

fiftyfivenm_lcell_comb \Add0~18 (
	.dataa(\refresh_counter[9]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add0~17 ),
	.combout(\Add0~18_combout ),
	.cout(\Add0~19 ));
defparam \Add0~18 .lut_mask = 16'h5A0A;
defparam \Add0~18 .sum_lutc_input = "cin";

fiftyfivenm_lcell_comb \refresh_counter[9]~11 (
	.dataa(\Add0~18_combout ),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\refresh_counter[9]~11_combout ),
	.cout());
defparam \refresh_counter[9]~11 .lut_mask = 16'h5555;
defparam \refresh_counter[9]~11 .sum_lutc_input = "datac";

dffeas \refresh_counter[9] (
	.clk(clk_0),
	.d(\refresh_counter[9]~11_combout ),
	.asdata(vcc),
	.clrn(altera_reset_synchronizer_int_chain_out),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\refresh_counter[9]~q ),
	.prn(vcc));
defparam \refresh_counter[9] .is_wysiwyg = "true";
defparam \refresh_counter[9] .power_up = "low";

fiftyfivenm_lcell_comb \Add0~20 (
	.dataa(\refresh_counter[10]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add0~19 ),
	.combout(\Add0~20_combout ),
	.cout(\Add0~21 ));
defparam \Add0~20 .lut_mask = 16'hA55F;
defparam \Add0~20 .sum_lutc_input = "cin";

fiftyfivenm_lcell_comb \refresh_counter~1 (
	.dataa(\Add0~20_combout ),
	.datab(gnd),
	.datac(gnd),
	.datad(\Equal0~4_combout ),
	.cin(gnd),
	.combout(\refresh_counter~1_combout ),
	.cout());
defparam \refresh_counter~1 .lut_mask = 16'hFF55;
defparam \refresh_counter~1 .sum_lutc_input = "datac";

dffeas \refresh_counter[10] (
	.clk(clk_0),
	.d(\refresh_counter~1_combout ),
	.asdata(vcc),
	.clrn(altera_reset_synchronizer_int_chain_out),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\refresh_counter[10]~q ),
	.prn(vcc));
defparam \refresh_counter[10] .is_wysiwyg = "true";
defparam \refresh_counter[10] .power_up = "low";

fiftyfivenm_lcell_comb \Add0~22 (
	.dataa(\refresh_counter[11]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add0~21 ),
	.combout(\Add0~22_combout ),
	.cout(\Add0~23 ));
defparam \Add0~22 .lut_mask = 16'hA505;
defparam \Add0~22 .sum_lutc_input = "cin";

fiftyfivenm_lcell_comb \refresh_counter~3 (
	.dataa(\Add0~22_combout ),
	.datab(gnd),
	.datac(gnd),
	.datad(\Equal0~4_combout ),
	.cin(gnd),
	.combout(\refresh_counter~3_combout ),
	.cout());
defparam \refresh_counter~3 .lut_mask = 16'h00AA;
defparam \refresh_counter~3 .sum_lutc_input = "datac";

dffeas \refresh_counter[11] (
	.clk(clk_0),
	.d(\refresh_counter~3_combout ),
	.asdata(vcc),
	.clrn(altera_reset_synchronizer_int_chain_out),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\refresh_counter[11]~q ),
	.prn(vcc));
defparam \refresh_counter[11] .is_wysiwyg = "true";
defparam \refresh_counter[11] .power_up = "low";

fiftyfivenm_lcell_comb \Add0~24 (
	.dataa(\refresh_counter[12]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add0~23 ),
	.combout(\Add0~24_combout ),
	.cout(\Add0~25 ));
defparam \Add0~24 .lut_mask = 16'h5AAF;
defparam \Add0~24 .sum_lutc_input = "cin";

fiftyfivenm_lcell_comb \refresh_counter~2 (
	.dataa(\Add0~24_combout ),
	.datab(gnd),
	.datac(gnd),
	.datad(\Equal0~4_combout ),
	.cin(gnd),
	.combout(\refresh_counter~2_combout ),
	.cout());
defparam \refresh_counter~2 .lut_mask = 16'h00AA;
defparam \refresh_counter~2 .sum_lutc_input = "datac";

dffeas \refresh_counter[12] (
	.clk(clk_0),
	.d(\refresh_counter~2_combout ),
	.asdata(vcc),
	.clrn(altera_reset_synchronizer_int_chain_out),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\refresh_counter[12]~q ),
	.prn(vcc));
defparam \refresh_counter[12] .is_wysiwyg = "true";
defparam \refresh_counter[12] .power_up = "low";

fiftyfivenm_lcell_comb \Add0~26 (
	.dataa(\refresh_counter[13]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.cin(\Add0~25 ),
	.combout(\Add0~26_combout ),
	.cout());
defparam \Add0~26 .lut_mask = 16'h5A5A;
defparam \Add0~26 .sum_lutc_input = "cin";

fiftyfivenm_lcell_comb \refresh_counter~0 (
	.dataa(\Add0~26_combout ),
	.datab(gnd),
	.datac(gnd),
	.datad(\Equal0~4_combout ),
	.cin(gnd),
	.combout(\refresh_counter~0_combout ),
	.cout());
defparam \refresh_counter~0 .lut_mask = 16'hFF55;
defparam \refresh_counter~0 .sum_lutc_input = "datac";

dffeas \refresh_counter[13] (
	.clk(clk_0),
	.d(\refresh_counter~0_combout ),
	.asdata(vcc),
	.clrn(altera_reset_synchronizer_int_chain_out),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\refresh_counter[13]~q ),
	.prn(vcc));
defparam \refresh_counter[13] .is_wysiwyg = "true";
defparam \refresh_counter[13] .power_up = "low";

fiftyfivenm_lcell_comb \Equal0~0 (
	.dataa(\refresh_counter[13]~q ),
	.datab(\refresh_counter[10]~q ),
	.datac(\refresh_counter[12]~q ),
	.datad(\refresh_counter[11]~q ),
	.cin(gnd),
	.combout(\Equal0~0_combout ),
	.cout());
defparam \Equal0~0 .lut_mask = 16'h0008;
defparam \Equal0~0 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Equal0~1 (
	.dataa(\refresh_counter[9]~q ),
	.datab(\refresh_counter[8]~q ),
	.datac(\refresh_counter[7]~q ),
	.datad(\refresh_counter[6]~q ),
	.cin(gnd),
	.combout(\Equal0~1_combout ),
	.cout());
defparam \Equal0~1 .lut_mask = 16'h0008;
defparam \Equal0~1 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Equal0~2 (
	.dataa(\refresh_counter[4]~q ),
	.datab(\refresh_counter[5]~q ),
	.datac(\refresh_counter[3]~q ),
	.datad(\refresh_counter[2]~q ),
	.cin(gnd),
	.combout(\Equal0~2_combout ),
	.cout());
defparam \Equal0~2 .lut_mask = 16'h0002;
defparam \Equal0~2 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Equal0~3 (
	.dataa(gnd),
	.datab(gnd),
	.datac(\refresh_counter[1]~q ),
	.datad(\refresh_counter[0]~q ),
	.cin(gnd),
	.combout(\Equal0~3_combout ),
	.cout());
defparam \Equal0~3 .lut_mask = 16'h000F;
defparam \Equal0~3 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Equal0~4 (
	.dataa(\Equal0~0_combout ),
	.datab(\Equal0~1_combout ),
	.datac(\Equal0~2_combout ),
	.datad(\Equal0~3_combout ),
	.cin(gnd),
	.combout(\Equal0~4_combout ),
	.cout());
defparam \Equal0~4 .lut_mask = 16'h8000;
defparam \Equal0~4 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \i_next.000~0 (
	.dataa(\i_next.000~q ),
	.datab(\i_state.000~q ),
	.datac(\i_state.101~q ),
	.datad(\i_state.011~q ),
	.cin(gnd),
	.combout(\i_next.000~0_combout ),
	.cout());
defparam \i_next.000~0 .lut_mask = 16'hAAAE;
defparam \i_next.000~0 .sum_lutc_input = "datac";

dffeas \i_next.000 (
	.clk(clk_0),
	.d(\i_next.000~0_combout ),
	.asdata(vcc),
	.clrn(altera_reset_synchronizer_int_chain_out),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\i_next.000~q ),
	.prn(vcc));
defparam \i_next.000 .is_wysiwyg = "true";
defparam \i_next.000 .power_up = "low";

fiftyfivenm_lcell_comb \Selector7~0 (
	.dataa(\Selector9~0_combout ),
	.datab(\i_state.000~q ),
	.datac(\Equal0~4_combout ),
	.datad(\i_next.000~q ),
	.cin(gnd),
	.combout(\Selector7~0_combout ),
	.cout());
defparam \Selector7~0 .lut_mask = 16'hFC54;
defparam \Selector7~0 .sum_lutc_input = "datac";

dffeas \i_state.000 (
	.clk(clk_0),
	.d(\Selector7~0_combout ),
	.asdata(vcc),
	.clrn(altera_reset_synchronizer_int_chain_out),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\i_state.000~q ),
	.prn(vcc));
defparam \i_state.000 .is_wysiwyg = "true";
defparam \i_state.000 .power_up = "low";

fiftyfivenm_lcell_comb \Selector18~0 (
	.dataa(\i_next.111~q ),
	.datab(\i_state.101~q ),
	.datac(\i_state.011~q ),
	.datad(\i_state.000~q ),
	.cin(gnd),
	.combout(\Selector18~0_combout ),
	.cout());
defparam \Selector18~0 .lut_mask = 16'hA8AA;
defparam \Selector18~0 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector8~0 (
	.dataa(\Equal0~4_combout ),
	.datab(gnd),
	.datac(gnd),
	.datad(\i_state.000~q ),
	.cin(gnd),
	.combout(\Selector8~0_combout ),
	.cout());
defparam \Selector8~0 .lut_mask = 16'h00AA;
defparam \Selector8~0 .sum_lutc_input = "datac";

dffeas \i_state.001 (
	.clk(clk_0),
	.d(\Selector8~0_combout ),
	.asdata(vcc),
	.clrn(altera_reset_synchronizer_int_chain_out),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\i_state.001~q ),
	.prn(vcc));
defparam \i_state.001 .is_wysiwyg = "true";
defparam \i_state.001 .power_up = "low";

fiftyfivenm_lcell_comb \Selector6~0 (
	.dataa(\i_state.000~q ),
	.datab(gnd),
	.datac(\i_state.010~q ),
	.datad(\i_refs[0]~q ),
	.cin(gnd),
	.combout(\Selector6~0_combout ),
	.cout());
defparam \Selector6~0 .lut_mask = 16'h0AF0;
defparam \Selector6~0 .sum_lutc_input = "datac";

dffeas \i_refs[0] (
	.clk(clk_0),
	.d(\Selector6~0_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(altera_reset_synchronizer_int_chain_out),
	.q(\i_refs[0]~q ),
	.prn(vcc));
defparam \i_refs[0] .is_wysiwyg = "true";
defparam \i_refs[0] .power_up = "low";

fiftyfivenm_lcell_comb \Selector5~0 (
	.dataa(\i_state.000~q ),
	.datab(\i_state.010~q ),
	.datac(\i_refs[1]~q ),
	.datad(\i_refs[0]~q ),
	.cin(gnd),
	.combout(\Selector5~0_combout ),
	.cout());
defparam \Selector5~0 .lut_mask = 16'h2CE0;
defparam \Selector5~0 .sum_lutc_input = "datac";

dffeas \i_refs[1] (
	.clk(clk_0),
	.d(\Selector5~0_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(altera_reset_synchronizer_int_chain_out),
	.q(\i_refs[1]~q ),
	.prn(vcc));
defparam \i_refs[1] .is_wysiwyg = "true";
defparam \i_refs[1] .power_up = "low";

fiftyfivenm_lcell_comb \Add1~0 (
	.dataa(\i_refs[1]~q ),
	.datab(\i_refs[0]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\Add1~0_combout ),
	.cout());
defparam \Add1~0 .lut_mask = 16'h8888;
defparam \Add1~0 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector4~0 (
	.dataa(\i_state.000~q ),
	.datab(\i_state.010~q ),
	.datac(\i_refs[2]~q ),
	.datad(\Add1~0_combout ),
	.cin(gnd),
	.combout(\Selector4~0_combout ),
	.cout());
defparam \Selector4~0 .lut_mask = 16'h2CE0;
defparam \Selector4~0 .sum_lutc_input = "datac";

dffeas \i_refs[2] (
	.clk(clk_0),
	.d(\Selector4~0_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(altera_reset_synchronizer_int_chain_out),
	.q(\i_refs[2]~q ),
	.prn(vcc));
defparam \i_refs[2] .is_wysiwyg = "true";
defparam \i_refs[2] .power_up = "low";

fiftyfivenm_lcell_comb \Selector16~0 (
	.dataa(\i_state.001~q ),
	.datab(\i_state.010~q ),
	.datac(\i_refs[2]~q ),
	.datad(\Add1~0_combout ),
	.cin(gnd),
	.combout(\Selector16~0_combout ),
	.cout());
defparam \Selector16~0 .lut_mask = 16'hAEEE;
defparam \Selector16~0 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \WideOr6~0 (
	.dataa(\i_state.000~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(\i_state.011~q ),
	.cin(gnd),
	.combout(\WideOr6~0_combout ),
	.cout());
defparam \WideOr6~0 .lut_mask = 16'h00AA;
defparam \WideOr6~0 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector16~1 (
	.dataa(\Selector16~0_combout ),
	.datab(\i_next.010~q ),
	.datac(\i_state.101~q ),
	.datad(\WideOr6~0_combout ),
	.cin(gnd),
	.combout(\Selector16~1_combout ),
	.cout());
defparam \Selector16~1 .lut_mask = 16'hEAEE;
defparam \Selector16~1 .sum_lutc_input = "datac";

dffeas \i_next.010 (
	.clk(clk_0),
	.d(\Selector16~1_combout ),
	.asdata(vcc),
	.clrn(altera_reset_synchronizer_int_chain_out),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\i_next.010~q ),
	.prn(vcc));
defparam \i_next.010 .is_wysiwyg = "true";
defparam \i_next.010 .power_up = "low";

fiftyfivenm_lcell_comb \Selector10~0 (
	.dataa(\i_state.011~q ),
	.datab(\i_count[2]~q ),
	.datac(\i_count[1]~q ),
	.datad(gnd),
	.cin(gnd),
	.combout(\Selector10~0_combout ),
	.cout());
defparam \Selector10~0 .lut_mask = 16'hA8A8;
defparam \Selector10~0 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector15~0 (
	.dataa(\i_state.011~q ),
	.datab(\i_count[2]~q ),
	.datac(\i_count[1]~q ),
	.datad(\i_count[0]~q ),
	.cin(gnd),
	.combout(\Selector15~0_combout ),
	.cout());
defparam \Selector15~0 .lut_mask = 16'h02A8;
defparam \Selector15~0 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector15~1 (
	.dataa(\i_count[0]~q ),
	.datab(\i_state.101~q ),
	.datac(gnd),
	.datad(\i_state.000~q ),
	.cin(gnd),
	.combout(\Selector15~1_combout ),
	.cout());
defparam \Selector15~1 .lut_mask = 16'h88AA;
defparam \Selector15~1 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector15~2 (
	.dataa(\i_state.001~q ),
	.datab(\i_state.010~q ),
	.datac(\Selector15~0_combout ),
	.datad(\Selector15~1_combout ),
	.cin(gnd),
	.combout(\Selector15~2_combout ),
	.cout());
defparam \Selector15~2 .lut_mask = 16'hFFFE;
defparam \Selector15~2 .sum_lutc_input = "datac";

dffeas \i_count[0] (
	.clk(clk_0),
	.d(\Selector15~2_combout ),
	.asdata(vcc),
	.clrn(altera_reset_synchronizer_int_chain_out),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\i_count[0]~q ),
	.prn(vcc));
defparam \i_count[0] .is_wysiwyg = "true";
defparam \i_count[0] .power_up = "low";

fiftyfivenm_lcell_comb \Selector13~0 (
	.dataa(\i_state.000~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(\i_state.101~q ),
	.cin(gnd),
	.combout(\Selector13~0_combout ),
	.cout());
defparam \Selector13~0 .lut_mask = 16'h00AA;
defparam \Selector13~0 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector14~0 (
	.dataa(\Selector10~0_combout ),
	.datab(\i_count[1]~q ),
	.datac(\i_count[0]~q ),
	.datad(\Selector13~0_combout ),
	.cin(gnd),
	.combout(\Selector14~0_combout ),
	.cout());
defparam \Selector14~0 .lut_mask = 16'h82CE;
defparam \Selector14~0 .sum_lutc_input = "datac";

dffeas \i_count[1] (
	.clk(clk_0),
	.d(\Selector14~0_combout ),
	.asdata(vcc),
	.clrn(altera_reset_synchronizer_int_chain_out),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\i_count[1]~q ),
	.prn(vcc));
defparam \i_count[1] .is_wysiwyg = "true";
defparam \i_count[1] .power_up = "low";

fiftyfivenm_lcell_comb \Selector13~1 (
	.dataa(\i_state.011~q ),
	.datab(\i_count[1]~q ),
	.datac(\i_count[0]~q ),
	.datad(\Selector13~0_combout ),
	.cin(gnd),
	.combout(\Selector13~1_combout ),
	.cout());
defparam \Selector13~1 .lut_mask = 16'hA8FF;
defparam \Selector13~1 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector13~2 (
	.dataa(\i_state.111~q ),
	.datab(\i_state.010~q ),
	.datac(\i_count[2]~q ),
	.datad(\Selector13~1_combout ),
	.cin(gnd),
	.combout(\Selector13~2_combout ),
	.cout());
defparam \Selector13~2 .lut_mask = 16'hFEEE;
defparam \Selector13~2 .sum_lutc_input = "datac";

dffeas \i_count[2] (
	.clk(clk_0),
	.d(\Selector13~2_combout ),
	.asdata(vcc),
	.clrn(altera_reset_synchronizer_int_chain_out),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\i_count[2]~q ),
	.prn(vcc));
defparam \i_count[2] .is_wysiwyg = "true";
defparam \i_count[2] .power_up = "low";

fiftyfivenm_lcell_comb \Selector9~1 (
	.dataa(\i_state.011~q ),
	.datab(\i_next.010~q ),
	.datac(\i_count[2]~q ),
	.datad(\i_count[1]~q ),
	.cin(gnd),
	.combout(\Selector9~1_combout ),
	.cout());
defparam \Selector9~1 .lut_mask = 16'h0008;
defparam \Selector9~1 .sum_lutc_input = "datac";

dffeas \i_state.010 (
	.clk(clk_0),
	.d(\Selector9~1_combout ),
	.asdata(vcc),
	.clrn(altera_reset_synchronizer_int_chain_out),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\i_state.010~q ),
	.prn(vcc));
defparam \i_state.010 .is_wysiwyg = "true";
defparam \i_state.010 .power_up = "low";

fiftyfivenm_lcell_comb \Selector18~1 (
	.dataa(\Selector18~0_combout ),
	.datab(\i_state.010~q ),
	.datac(\i_refs[2]~q ),
	.datad(\Add1~0_combout ),
	.cin(gnd),
	.combout(\Selector18~1_combout ),
	.cout());
defparam \Selector18~1 .lut_mask = 16'hEAAA;
defparam \Selector18~1 .sum_lutc_input = "datac";

dffeas \i_next.111 (
	.clk(clk_0),
	.d(\Selector18~1_combout ),
	.asdata(vcc),
	.clrn(altera_reset_synchronizer_int_chain_out),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\i_next.111~q ),
	.prn(vcc));
defparam \i_next.111 .is_wysiwyg = "true";
defparam \i_next.111 .power_up = "low";

fiftyfivenm_lcell_comb \Selector12~0 (
	.dataa(\i_state.011~q ),
	.datab(\i_next.111~q ),
	.datac(\i_count[2]~q ),
	.datad(\i_count[1]~q ),
	.cin(gnd),
	.combout(\Selector12~0_combout ),
	.cout());
defparam \Selector12~0 .lut_mask = 16'h0008;
defparam \Selector12~0 .sum_lutc_input = "datac";

dffeas \i_state.111 (
	.clk(clk_0),
	.d(\Selector12~0_combout ),
	.asdata(vcc),
	.clrn(altera_reset_synchronizer_int_chain_out),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\i_state.111~q ),
	.prn(vcc));
defparam \i_state.111 .is_wysiwyg = "true";
defparam \i_state.111 .power_up = "low";

fiftyfivenm_lcell_comb \Selector10~1 (
	.dataa(\i_state.111~q ),
	.datab(\i_state.001~q ),
	.datac(\i_state.010~q ),
	.datad(\Selector10~0_combout ),
	.cin(gnd),
	.combout(\Selector10~1_combout ),
	.cout());
defparam \Selector10~1 .lut_mask = 16'hFFFE;
defparam \Selector10~1 .sum_lutc_input = "datac";

dffeas \i_state.011 (
	.clk(clk_0),
	.d(\Selector10~1_combout ),
	.asdata(vcc),
	.clrn(altera_reset_synchronizer_int_chain_out),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\i_state.011~q ),
	.prn(vcc));
defparam \i_state.011 .is_wysiwyg = "true";
defparam \i_state.011 .power_up = "low";

fiftyfivenm_lcell_comb \Selector9~0 (
	.dataa(\i_state.011~q ),
	.datab(gnd),
	.datac(\i_count[2]~q ),
	.datad(\i_count[1]~q ),
	.cin(gnd),
	.combout(\Selector9~0_combout ),
	.cout());
defparam \Selector9~0 .lut_mask = 16'h000A;
defparam \Selector9~0 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector17~0 (
	.dataa(\i_state.111~q ),
	.datab(\i_next.101~q ),
	.datac(\i_state.101~q ),
	.datad(\WideOr6~0_combout ),
	.cin(gnd),
	.combout(\Selector17~0_combout ),
	.cout());
defparam \Selector17~0 .lut_mask = 16'hEAEE;
defparam \Selector17~0 .sum_lutc_input = "datac";

dffeas \i_next.101 (
	.clk(clk_0),
	.d(\Selector17~0_combout ),
	.asdata(vcc),
	.clrn(altera_reset_synchronizer_int_chain_out),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\i_next.101~q ),
	.prn(vcc));
defparam \i_next.101 .is_wysiwyg = "true";
defparam \i_next.101 .power_up = "low";

fiftyfivenm_lcell_comb \i_state.101~0 (
	.dataa(\i_state.101~q ),
	.datab(\Selector9~0_combout ),
	.datac(\i_next.101~q ),
	.datad(gnd),
	.cin(gnd),
	.combout(\i_state.101~0_combout ),
	.cout());
defparam \i_state.101~0 .lut_mask = 16'hEAEA;
defparam \i_state.101~0 .sum_lutc_input = "datac";

dffeas \i_state.101 (
	.clk(clk_0),
	.d(\i_state.101~0_combout ),
	.asdata(vcc),
	.clrn(altera_reset_synchronizer_int_chain_out),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\i_state.101~q ),
	.prn(vcc));
defparam \i_state.101 .is_wysiwyg = "true";
defparam \i_state.101 .power_up = "low";

fiftyfivenm_lcell_comb \init_done~0 (
	.dataa(\init_done~q ),
	.datab(\i_state.101~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\init_done~0_combout ),
	.cout());
defparam \init_done~0 .lut_mask = 16'hEEEE;
defparam \init_done~0 .sum_lutc_input = "datac";

dffeas init_done(
	.clk(clk_0),
	.d(\init_done~0_combout ),
	.asdata(vcc),
	.clrn(altera_reset_synchronizer_int_chain_out),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\init_done~q ),
	.prn(vcc));
defparam init_done.is_wysiwyg = "true";
defparam init_done.power_up = "low";

fiftyfivenm_lcell_comb \active_rnw~0 (
	.dataa(entries_1),
	.datab(entries_0),
	.datac(\init_done~q ),
	.datad(gnd),
	.cin(gnd),
	.combout(\active_rnw~0_combout ),
	.cout());
defparam \active_rnw~0 .lut_mask = 16'hE0E0;
defparam \active_rnw~0 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector24~1 (
	.dataa(entries_1),
	.datab(entries_0),
	.datac(\refresh_request~q ),
	.datad(\init_done~q ),
	.cin(gnd),
	.combout(\Selector24~1_combout ),
	.cout());
defparam \Selector24~1 .lut_mask = 16'h01FF;
defparam \Selector24~1 .sum_lutc_input = "datac";

dffeas active_rnw(
	.clk(clk_0),
	.d(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[43]~1_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\active_rnw~3_combout ),
	.q(\active_rnw~q ),
	.prn(vcc));
defparam active_rnw.is_wysiwyg = "true";
defparam active_rnw.power_up = "low";

dffeas \active_addr[10] (
	.clk(clk_0),
	.d(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[28]~0_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\active_rnw~3_combout ),
	.q(\active_addr[10]~q ),
	.prn(vcc));
defparam \active_addr[10] .is_wysiwyg = "true";
defparam \active_addr[10] .power_up = "low";

fiftyfivenm_lcell_comb \pending~0 (
	.dataa(\active_rnw~q ),
	.datab(\active_addr[10]~q ),
	.datac(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[28]~0_combout ),
	.datad(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[43]~1_combout ),
	.cin(gnd),
	.combout(\pending~0_combout ),
	.cout());
defparam \pending~0 .lut_mask = 16'h8241;
defparam \pending~0 .sum_lutc_input = "datac";

dffeas \active_addr[24] (
	.clk(clk_0),
	.d(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[42]~3_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\active_rnw~3_combout ),
	.q(\active_addr[24]~q ),
	.prn(vcc));
defparam \active_addr[24] .is_wysiwyg = "true";
defparam \active_addr[24] .power_up = "low";

fiftyfivenm_lcell_comb \pending~1 (
	.dataa(\active_addr[24]~q ),
	.datab(\active_addr[11]~q ),
	.datac(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[29]~2_combout ),
	.datad(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[42]~3_combout ),
	.cin(gnd),
	.combout(\pending~1_combout ),
	.cout());
defparam \pending~1 .lut_mask = 16'h8241;
defparam \pending~1 .sum_lutc_input = "datac";

dffeas \active_addr[12] (
	.clk(clk_0),
	.d(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[30]~5_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\active_rnw~3_combout ),
	.q(\active_addr[12]~q ),
	.prn(vcc));
defparam \active_addr[12] .is_wysiwyg = "true";
defparam \active_addr[12] .power_up = "low";

dffeas \active_addr[13] (
	.clk(clk_0),
	.d(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[31]~4_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\active_rnw~3_combout ),
	.q(\active_addr[13]~q ),
	.prn(vcc));
defparam \active_addr[13] .is_wysiwyg = "true";
defparam \active_addr[13] .power_up = "low";

fiftyfivenm_lcell_comb \pending~2 (
	.dataa(\active_addr[12]~q ),
	.datab(\active_addr[13]~q ),
	.datac(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[31]~4_combout ),
	.datad(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[30]~5_combout ),
	.cin(gnd),
	.combout(\pending~2_combout ),
	.cout());
defparam \pending~2 .lut_mask = 16'h8241;
defparam \pending~2 .sum_lutc_input = "datac";

dffeas \active_addr[14] (
	.clk(clk_0),
	.d(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[32]~7_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\active_rnw~3_combout ),
	.q(\active_addr[14]~q ),
	.prn(vcc));
defparam \active_addr[14] .is_wysiwyg = "true";
defparam \active_addr[14] .power_up = "low";

dffeas \active_addr[15] (
	.clk(clk_0),
	.d(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[33]~6_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\active_rnw~3_combout ),
	.q(\active_addr[15]~q ),
	.prn(vcc));
defparam \active_addr[15] .is_wysiwyg = "true";
defparam \active_addr[15] .power_up = "low";

fiftyfivenm_lcell_comb \pending~3 (
	.dataa(\active_addr[14]~q ),
	.datab(\active_addr[15]~q ),
	.datac(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[33]~6_combout ),
	.datad(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[32]~7_combout ),
	.cin(gnd),
	.combout(\pending~3_combout ),
	.cout());
defparam \pending~3 .lut_mask = 16'h8241;
defparam \pending~3 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \pending~4 (
	.dataa(\pending~0_combout ),
	.datab(\pending~1_combout ),
	.datac(\pending~2_combout ),
	.datad(\pending~3_combout ),
	.cin(gnd),
	.combout(\pending~4_combout ),
	.cout());
defparam \pending~4 .lut_mask = 16'h8000;
defparam \pending~4 .sum_lutc_input = "datac";

dffeas \active_addr[16] (
	.clk(clk_0),
	.d(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[34]~9_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\active_rnw~3_combout ),
	.q(\active_addr[16]~q ),
	.prn(vcc));
defparam \active_addr[16] .is_wysiwyg = "true";
defparam \active_addr[16] .power_up = "low";

dffeas \active_addr[17] (
	.clk(clk_0),
	.d(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[35]~8_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\active_rnw~3_combout ),
	.q(\active_addr[17]~q ),
	.prn(vcc));
defparam \active_addr[17] .is_wysiwyg = "true";
defparam \active_addr[17] .power_up = "low";

fiftyfivenm_lcell_comb \pending~5 (
	.dataa(\active_addr[16]~q ),
	.datab(\active_addr[17]~q ),
	.datac(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[35]~8_combout ),
	.datad(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[34]~9_combout ),
	.cin(gnd),
	.combout(\pending~5_combout ),
	.cout());
defparam \pending~5 .lut_mask = 16'h8241;
defparam \pending~5 .sum_lutc_input = "datac";

dffeas \active_addr[18] (
	.clk(clk_0),
	.d(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[36]~11_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\active_rnw~3_combout ),
	.q(\active_addr[18]~q ),
	.prn(vcc));
defparam \active_addr[18] .is_wysiwyg = "true";
defparam \active_addr[18] .power_up = "low";

dffeas \active_addr[19] (
	.clk(clk_0),
	.d(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[37]~10_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\active_rnw~3_combout ),
	.q(\active_addr[19]~q ),
	.prn(vcc));
defparam \active_addr[19] .is_wysiwyg = "true";
defparam \active_addr[19] .power_up = "low";

fiftyfivenm_lcell_comb \pending~6 (
	.dataa(\active_addr[18]~q ),
	.datab(\active_addr[19]~q ),
	.datac(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[37]~10_combout ),
	.datad(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[36]~11_combout ),
	.cin(gnd),
	.combout(\pending~6_combout ),
	.cout());
defparam \pending~6 .lut_mask = 16'h8241;
defparam \pending~6 .sum_lutc_input = "datac";

dffeas \active_addr[20] (
	.clk(clk_0),
	.d(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[38]~13_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\active_rnw~3_combout ),
	.q(\active_addr[20]~q ),
	.prn(vcc));
defparam \active_addr[20] .is_wysiwyg = "true";
defparam \active_addr[20] .power_up = "low";

dffeas \active_addr[21] (
	.clk(clk_0),
	.d(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[39]~12_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\active_rnw~3_combout ),
	.q(\active_addr[21]~q ),
	.prn(vcc));
defparam \active_addr[21] .is_wysiwyg = "true";
defparam \active_addr[21] .power_up = "low";

fiftyfivenm_lcell_comb \pending~7 (
	.dataa(\active_addr[20]~q ),
	.datab(\active_addr[21]~q ),
	.datac(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[39]~12_combout ),
	.datad(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[38]~13_combout ),
	.cin(gnd),
	.combout(\pending~7_combout ),
	.cout());
defparam \pending~7 .lut_mask = 16'h8241;
defparam \pending~7 .sum_lutc_input = "datac";

dffeas \active_addr[22] (
	.clk(clk_0),
	.d(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[40]~15_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\active_rnw~3_combout ),
	.q(\active_addr[22]~q ),
	.prn(vcc));
defparam \active_addr[22] .is_wysiwyg = "true";
defparam \active_addr[22] .power_up = "low";

dffeas \active_addr[23] (
	.clk(clk_0),
	.d(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[41]~14_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\active_rnw~3_combout ),
	.q(\active_addr[23]~q ),
	.prn(vcc));
defparam \active_addr[23] .is_wysiwyg = "true";
defparam \active_addr[23] .power_up = "low";

fiftyfivenm_lcell_comb \pending~8 (
	.dataa(\active_addr[22]~q ),
	.datab(\active_addr[23]~q ),
	.datac(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[41]~14_combout ),
	.datad(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[40]~15_combout ),
	.cin(gnd),
	.combout(\pending~8_combout ),
	.cout());
defparam \pending~8 .lut_mask = 16'h8241;
defparam \pending~8 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \pending~9 (
	.dataa(\pending~5_combout ),
	.datab(\pending~6_combout ),
	.datac(\pending~7_combout ),
	.datad(\pending~8_combout ),
	.cin(gnd),
	.combout(\pending~9_combout ),
	.cout());
defparam \pending~9 .lut_mask = 16'h8000;
defparam \pending~9 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector30~2 (
	.dataa(\init_done~q ),
	.datab(\refresh_request~q ),
	.datac(gnd),
	.datad(\m_state.000000001~q ),
	.cin(gnd),
	.combout(\Selector30~2_combout ),
	.cout());
defparam \Selector30~2 .lut_mask = 16'h0088;
defparam \Selector30~2 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \active_cs_n~0 (
	.dataa(\m_state.000000001~q ),
	.datab(entries_1),
	.datac(entries_0),
	.datad(\init_done~q ),
	.cin(gnd),
	.combout(\active_cs_n~0_combout ),
	.cout());
defparam \active_cs_n~0 .lut_mask = 16'hABFF;
defparam \active_cs_n~0 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \active_cs_n~1 (
	.dataa(\active_cs_n~q ),
	.datab(\Selector30~2_combout ),
	.datac(altera_reset_synchronizer_int_chain_out),
	.datad(\active_cs_n~0_combout ),
	.cin(gnd),
	.combout(\active_cs_n~1_combout ),
	.cout());
defparam \active_cs_n~1 .lut_mask = 16'hEACA;
defparam \active_cs_n~1 .sum_lutc_input = "datac";

dffeas active_cs_n(
	.clk(clk_0),
	.d(\active_cs_n~1_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\active_cs_n~q ),
	.prn(vcc));
defparam active_cs_n.is_wysiwyg = "true";
defparam active_cs_n.power_up = "low";

fiftyfivenm_lcell_comb pending(
	.dataa(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|Equal1~0_combout ),
	.datab(\pending~4_combout ),
	.datac(\pending~9_combout ),
	.datad(\active_cs_n~q ),
	.cin(gnd),
	.combout(\pending~combout ),
	.cout());
defparam pending.lut_mask = 16'h0080;
defparam pending.sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector41~6 (
	.dataa(\init_done~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(\m_state.000000001~q ),
	.cin(gnd),
	.combout(\Selector41~6_combout ),
	.cout());
defparam \Selector41~6 .lut_mask = 16'h00AA;
defparam \Selector41~6 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector41~9 (
	.dataa(entries_1),
	.datab(entries_0),
	.datac(\Selector41~6_combout ),
	.datad(\refresh_request~q ),
	.cin(gnd),
	.combout(\Selector41~9_combout ),
	.cout());
defparam \Selector41~9 .lut_mask = 16'h00E0;
defparam \Selector41~9 .sum_lutc_input = "datac";

dffeas \m_state.000000010 (
	.clk(clk_0),
	.d(\Selector41~9_combout ),
	.asdata(vcc),
	.clrn(altera_reset_synchronizer_int_chain_out),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\m_state.000000010~q ),
	.prn(vcc));
defparam \m_state.000000010 .is_wysiwyg = "true";
defparam \m_state.000000010 .power_up = "low";

fiftyfivenm_lcell_comb \Selector32~0 (
	.dataa(\m_state.100000000~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(\refresh_request~q ),
	.cin(gnd),
	.combout(\Selector32~0_combout ),
	.cout());
defparam \Selector32~0 .lut_mask = 16'h00AA;
defparam \Selector32~0 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector32~1 (
	.dataa(\Selector32~0_combout ),
	.datab(\pending~combout ),
	.datac(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|Equal1~0_combout ),
	.datad(\m_addr~0_combout ),
	.cin(gnd),
	.combout(\Selector32~1_combout ),
	.cout());
defparam \Selector32~1 .lut_mask = 16'h0ABB;
defparam \Selector32~1 .sum_lutc_input = "datac";

dffeas \m_state.100000000 (
	.clk(clk_0),
	.d(\Selector32~1_combout ),
	.asdata(vcc),
	.clrn(altera_reset_synchronizer_int_chain_out),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\m_state.100000000~q ),
	.prn(vcc));
defparam \m_state.100000000 .is_wysiwyg = "true";
defparam \m_state.100000000 .power_up = "low";

fiftyfivenm_lcell_comb \Selector37~0 (
	.dataa(\m_count[2]~q ),
	.datab(\init_done~q ),
	.datac(\refresh_request~q ),
	.datad(\m_state.000000001~q ),
	.cin(gnd),
	.combout(\Selector37~0_combout ),
	.cout());
defparam \Selector37~0 .lut_mask = 16'h002A;
defparam \Selector37~0 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector27~0 (
	.dataa(\Selector24~0_combout ),
	.datab(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|Equal1~0_combout ),
	.datac(\refresh_request~q ),
	.datad(\m_state.100000000~q ),
	.cin(gnd),
	.combout(\Selector27~0_combout ),
	.cout());
defparam \Selector27~0 .lut_mask = 16'h02AA;
defparam \Selector27~0 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector35~0 (
	.dataa(\m_state.000000010~q ),
	.datab(\Selector33~1_combout ),
	.datac(gnd),
	.datad(\active_rnw~q ),
	.cin(gnd),
	.combout(\Selector35~0_combout ),
	.cout());
defparam \Selector35~0 .lut_mask = 16'h0088;
defparam \Selector35~0 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector34~1 (
	.dataa(\m_state.000000010~q ),
	.datab(\refresh_request~q ),
	.datac(\init_done~q ),
	.datad(\m_state.000000001~q ),
	.cin(gnd),
	.combout(\Selector34~1_combout ),
	.cout());
defparam \Selector34~1 .lut_mask = 16'hAAEF;
defparam \Selector34~1 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \m_next~18 (
	.dataa(\refresh_request~q ),
	.datab(\active_cs_n~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\m_next~18_combout ),
	.cout());
defparam \m_next~18 .lut_mask = 16'h2222;
defparam \m_next~18 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \m_next~19 (
	.dataa(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|Equal1~0_combout ),
	.datab(\pending~4_combout ),
	.datac(\pending~9_combout ),
	.datad(\m_next~18_combout ),
	.cin(gnd),
	.combout(\m_next~19_combout ),
	.cout());
defparam \m_next~19 .lut_mask = 16'h8000;
defparam \m_next~19 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector34~2 (
	.dataa(\Selector34~1_combout ),
	.datab(\m_next~19_combout ),
	.datac(\m_addr~0_combout ),
	.datad(\Selector33~1_combout ),
	.cin(gnd),
	.combout(\Selector34~2_combout ),
	.cout());
defparam \Selector34~2 .lut_mask = 16'hAEFF;
defparam \Selector34~2 .sum_lutc_input = "datac";

dffeas \m_next.000010000 (
	.clk(clk_0),
	.d(\Selector35~0_combout ),
	.asdata(vcc),
	.clrn(altera_reset_synchronizer_int_chain_out),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\Selector34~2_combout ),
	.q(\m_next.000010000~q ),
	.prn(vcc));
defparam \m_next.000010000 .is_wysiwyg = "true";
defparam \m_next.000010000 .power_up = "low";

fiftyfivenm_lcell_comb \pending~10 (
	.dataa(\pending~4_combout ),
	.datab(\pending~9_combout ),
	.datac(gnd),
	.datad(\active_cs_n~q ),
	.cin(gnd),
	.combout(\pending~10_combout ),
	.cout());
defparam \pending~10 .lut_mask = 16'h0088;
defparam \pending~10 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector27~1 (
	.dataa(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|Equal1~0_combout ),
	.datab(\pending~10_combout ),
	.datac(\m_state.100000000~q ),
	.datad(\refresh_request~q ),
	.cin(gnd),
	.combout(\Selector27~1_combout ),
	.cout());
defparam \Selector27~1 .lut_mask = 16'h0080;
defparam \Selector27~1 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector28~0 (
	.dataa(\Selector27~0_combout ),
	.datab(\m_next.000010000~q ),
	.datac(\Selector27~1_combout ),
	.datad(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[43]~1_combout ),
	.cin(gnd),
	.combout(\Selector28~0_combout ),
	.cout());
defparam \Selector28~0 .lut_mask = 16'h88F8;
defparam \Selector28~0 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector27~3 (
	.dataa(\refresh_request~q ),
	.datab(\m_state.000000001~q ),
	.datac(\pending~combout ),
	.datad(\m_addr~0_combout ),
	.cin(gnd),
	.combout(\Selector27~3_combout ),
	.cout());
defparam \Selector27~3 .lut_mask = 16'h00AE;
defparam \Selector27~3 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector27~4 (
	.dataa(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|Equal1~0_combout ),
	.datab(\refresh_request~q ),
	.datac(\init_done~q ),
	.datad(\m_state.000000001~q ),
	.cin(gnd),
	.combout(\Selector27~4_combout ),
	.cout());
defparam \Selector27~4 .lut_mask = 16'h00EF;
defparam \Selector27~4 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector30~3 (
	.dataa(\m_count[2]~q ),
	.datab(\m_count[1]~q ),
	.datac(\Selector30~2_combout ),
	.datad(\m_state.000100000~q ),
	.cin(gnd),
	.combout(\Selector30~3_combout ),
	.cout());
defparam \Selector30~3 .lut_mask = 16'hF1F0;
defparam \Selector30~3 .sum_lutc_input = "datac";

dffeas \m_state.001000000 (
	.clk(clk_0),
	.d(\Selector30~3_combout ),
	.asdata(vcc),
	.clrn(altera_reset_synchronizer_int_chain_out),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\m_state.001000000~q ),
	.prn(vcc));
defparam \m_state.001000000 .is_wysiwyg = "true";
defparam \m_state.001000000 .power_up = "low";

fiftyfivenm_lcell_comb \WideOr8~0 (
	.dataa(gnd),
	.datab(\m_state.000000010~q ),
	.datac(\m_state.001000000~q ),
	.datad(\m_state.010000000~q ),
	.cin(gnd),
	.combout(\WideOr8~0_combout ),
	.cout());
defparam \WideOr8~0 .lut_mask = 16'h0003;
defparam \WideOr8~0 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector27~5 (
	.dataa(\m_state.100000000~q ),
	.datab(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|Equal1~0_combout ),
	.datac(\refresh_request~q ),
	.datad(\WideOr8~0_combout ),
	.cin(gnd),
	.combout(\Selector27~5_combout ),
	.cout());
defparam \Selector27~5 .lut_mask = 16'hA8FF;
defparam \Selector27~5 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector27~6 (
	.dataa(\Selector24~0_combout ),
	.datab(\Selector27~3_combout ),
	.datac(\Selector27~4_combout ),
	.datad(\Selector27~5_combout ),
	.cin(gnd),
	.combout(\Selector27~6_combout ),
	.cout());
defparam \Selector27~6 .lut_mask = 16'hFFFE;
defparam \Selector27~6 .sum_lutc_input = "datac";

dffeas \m_state.000010000 (
	.clk(clk_0),
	.d(\Selector28~0_combout ),
	.asdata(vcc),
	.clrn(altera_reset_synchronizer_int_chain_out),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\Selector27~6_combout ),
	.q(\m_state.000010000~q ),
	.prn(vcc));
defparam \m_state.000010000 .is_wysiwyg = "true";
defparam \m_state.000010000 .power_up = "low";

fiftyfivenm_lcell_comb \Selector38~0 (
	.dataa(\m_state.000010000~q ),
	.datab(\m_state.000000010~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\Selector38~0_combout ),
	.cout());
defparam \Selector38~0 .lut_mask = 16'hEEEE;
defparam \Selector38~0 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \m_count[1]~0 (
	.dataa(\m_state.000000010~q ),
	.datab(\m_state.010000000~q ),
	.datac(\m_addr~0_combout ),
	.datad(\m_state.000000001~q ),
	.cin(gnd),
	.combout(\m_count[1]~0_combout ),
	.cout());
defparam \m_count[1]~0 .lut_mask = 16'hEFFF;
defparam \m_count[1]~0 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \m_count[1]~1 (
	.dataa(\m_count[1]~0_combout ),
	.datab(\m_state.000100000~q ),
	.datac(\m_count[2]~q ),
	.datad(\m_count[1]~q ),
	.cin(gnd),
	.combout(\m_count[1]~1_combout ),
	.cout());
defparam \m_count[1]~1 .lut_mask = 16'hAAAE;
defparam \m_count[1]~1 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \m_count[0]~7 (
	.dataa(\m_state.100000000~q ),
	.datab(\m_count[1]~1_combout ),
	.datac(\m_count[0]~q ),
	.datad(\Selector38~0_combout ),
	.cin(gnd),
	.combout(\m_count[0]~7_combout ),
	.cout());
defparam \m_count[0]~7 .lut_mask = 16'hABEF;
defparam \m_count[0]~7 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \m_count[1]~3 (
	.dataa(\m_state.000001000~q ),
	.datab(\init_done~q ),
	.datac(\refresh_request~q ),
	.datad(\m_state.000000001~q ),
	.cin(gnd),
	.combout(\m_count[1]~3_combout ),
	.cout());
defparam \m_count[1]~3 .lut_mask = 16'h001F;
defparam \m_count[1]~3 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \m_next~17 (
	.dataa(\pending~4_combout ),
	.datab(\pending~9_combout ),
	.datac(\active_cs_n~q ),
	.datad(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|Equal1~0_combout ),
	.cin(gnd),
	.combout(\m_next~17_combout ),
	.cout());
defparam \m_next~17 .lut_mask = 16'h08FF;
defparam \m_next~17 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector36~2 (
	.dataa(\refresh_request~q ),
	.datab(\m_state.100000000~q ),
	.datac(\m_next~17_combout ),
	.datad(\m_state.001000000~q ),
	.cin(gnd),
	.combout(\Selector36~2_combout ),
	.cout());
defparam \Selector36~2 .lut_mask = 16'h00BF;
defparam \Selector36~2 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \m_count[1]~4 (
	.dataa(\Selector24~0_combout ),
	.datab(\m_count[1]~3_combout ),
	.datac(gnd),
	.datad(\Selector36~2_combout ),
	.cin(gnd),
	.combout(\m_count[1]~4_combout ),
	.cout());
defparam \m_count[1]~4 .lut_mask = 16'hEEFF;
defparam \m_count[1]~4 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \m_count[1]~5 (
	.dataa(\m_state.000001000~q ),
	.datab(\m_state.000010000~q ),
	.datac(\pending~combout ),
	.datad(\refresh_request~q ),
	.cin(gnd),
	.combout(\m_count[1]~5_combout ),
	.cout());
defparam \m_count[1]~5 .lut_mask = 16'h0EEE;
defparam \m_count[1]~5 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \m_count[0]~8 (
	.dataa(\m_count[0]~q ),
	.datab(\m_count[0]~7_combout ),
	.datac(\m_count[1]~4_combout ),
	.datad(\m_count[1]~5_combout ),
	.cin(gnd),
	.combout(\m_count[0]~8_combout ),
	.cout());
defparam \m_count[0]~8 .lut_mask = 16'hAAAC;
defparam \m_count[0]~8 .sum_lutc_input = "datac";

dffeas \m_count[0] (
	.clk(clk_0),
	.d(\m_count[0]~8_combout ),
	.asdata(vcc),
	.clrn(altera_reset_synchronizer_int_chain_out),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\m_count[0]~q ),
	.prn(vcc));
defparam \m_count[0] .is_wysiwyg = "true";
defparam \m_count[0] .power_up = "low";

fiftyfivenm_lcell_comb \Add3~0 (
	.dataa(gnd),
	.datab(gnd),
	.datac(\m_count[1]~q ),
	.datad(\m_count[0]~q ),
	.cin(gnd),
	.combout(\Add3~0_combout ),
	.cout());
defparam \Add3~0 .lut_mask = 16'h0FF0;
defparam \Add3~0 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \m_count[1]~2 (
	.dataa(\Selector38~0_combout ),
	.datab(\m_count[1]~1_combout ),
	.datac(\Add3~0_combout ),
	.datad(\m_state.100000000~q ),
	.cin(gnd),
	.combout(\m_count[1]~2_combout ),
	.cout());
defparam \m_count[1]~2 .lut_mask = 16'h008B;
defparam \m_count[1]~2 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \m_count[1]~6 (
	.dataa(\m_count[1]~q ),
	.datab(\m_count[1]~2_combout ),
	.datac(\m_count[1]~4_combout ),
	.datad(\m_count[1]~5_combout ),
	.cin(gnd),
	.combout(\m_count[1]~6_combout ),
	.cout());
defparam \m_count[1]~6 .lut_mask = 16'hAAAC;
defparam \m_count[1]~6 .sum_lutc_input = "datac";

dffeas \m_count[1] (
	.clk(clk_0),
	.d(\m_count[1]~6_combout ),
	.asdata(vcc),
	.clrn(altera_reset_synchronizer_int_chain_out),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\m_count[1]~q ),
	.prn(vcc));
defparam \m_count[1] .is_wysiwyg = "true";
defparam \m_count[1] .power_up = "low";

fiftyfivenm_lcell_comb \Selector37~1 (
	.dataa(\m_state.000000100~q ),
	.datab(\m_state.000100000~q ),
	.datac(\m_count[1]~q ),
	.datad(\m_count[0]~q ),
	.cin(gnd),
	.combout(\Selector37~1_combout ),
	.cout());
defparam \Selector37~1 .lut_mask = 16'hEEE0;
defparam \Selector37~1 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector37~2 (
	.dataa(\m_state.010000000~q ),
	.datab(\Selector37~0_combout ),
	.datac(\m_count[2]~q ),
	.datad(\Selector37~1_combout ),
	.cin(gnd),
	.combout(\Selector37~2_combout ),
	.cout());
defparam \Selector37~2 .lut_mask = 16'hFEEE;
defparam \Selector37~2 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector37~3 (
	.dataa(\Selector37~2_combout ),
	.datab(\m_count[2]~q ),
	.datac(\m_count[1]~5_combout ),
	.datad(\Selector36~2_combout ),
	.cin(gnd),
	.combout(\Selector37~3_combout ),
	.cout());
defparam \Selector37~3 .lut_mask = 16'hEAEE;
defparam \Selector37~3 .sum_lutc_input = "datac";

dffeas \m_count[2] (
	.clk(clk_0),
	.d(\Selector37~3_combout ),
	.asdata(vcc),
	.clrn(altera_reset_synchronizer_int_chain_out),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\m_count[2]~q ),
	.prn(vcc));
defparam \m_count[2] .is_wysiwyg = "true";
defparam \m_count[2] .power_up = "low";

fiftyfivenm_lcell_comb \LessThan1~0 (
	.dataa(\m_count[2]~q ),
	.datab(\m_count[1]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\LessThan1~0_combout ),
	.cout());
defparam \LessThan1~0 .lut_mask = 16'hEEEE;
defparam \LessThan1~0 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector29~0 (
	.dataa(\m_state.100000000~q ),
	.datab(entries_1),
	.datac(entries_0),
	.datad(\refresh_request~q ),
	.cin(gnd),
	.combout(\Selector29~0_combout ),
	.cout());
defparam \Selector29~0 .lut_mask = 16'h00A8;
defparam \Selector29~0 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector29~1 (
	.dataa(\m_state.000100000~q ),
	.datab(\LessThan1~0_combout ),
	.datac(\Selector29~0_combout ),
	.datad(\pending~10_combout ),
	.cin(gnd),
	.combout(\Selector29~1_combout ),
	.cout());
defparam \Selector29~1 .lut_mask = 16'h88F8;
defparam \Selector29~1 .sum_lutc_input = "datac";

dffeas \m_state.000100000 (
	.clk(clk_0),
	.d(\Selector29~1_combout ),
	.asdata(vcc),
	.clrn(altera_reset_synchronizer_int_chain_out),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\m_state.000100000~q ),
	.prn(vcc));
defparam \m_state.000100000 .is_wysiwyg = "true";
defparam \m_state.000100000 .power_up = "low";

fiftyfivenm_lcell_comb \Selector36~3 (
	.dataa(\Selector41~6_combout ),
	.datab(\m_state.000000100~q ),
	.datac(\m_state.000100000~q ),
	.datad(\Selector36~2_combout ),
	.cin(gnd),
	.combout(\Selector36~3_combout ),
	.cout());
defparam \Selector36~3 .lut_mask = 16'hFEFF;
defparam \Selector36~3 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector36~4 (
	.dataa(\Selector30~2_combout ),
	.datab(\m_next.010000000~q ),
	.datac(\Selector36~3_combout ),
	.datad(\m_count[1]~5_combout ),
	.cin(gnd),
	.combout(\Selector36~4_combout ),
	.cout());
defparam \Selector36~4 .lut_mask = 16'hEEEA;
defparam \Selector36~4 .sum_lutc_input = "datac";

dffeas \m_next.010000000 (
	.clk(clk_0),
	.d(\Selector36~4_combout ),
	.asdata(vcc),
	.clrn(altera_reset_synchronizer_int_chain_out),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\m_next.010000000~q ),
	.prn(vcc));
defparam \m_next.010000000 .is_wysiwyg = "true";
defparam \m_next.010000000 .power_up = "low";

fiftyfivenm_lcell_comb \Selector31~0 (
	.dataa(\m_state.000000100~q ),
	.datab(\m_next.010000000~q ),
	.datac(\m_count[2]~q ),
	.datad(\m_count[1]~q ),
	.cin(gnd),
	.combout(\Selector31~0_combout ),
	.cout());
defparam \Selector31~0 .lut_mask = 16'h0008;
defparam \Selector31~0 .sum_lutc_input = "datac";

dffeas \m_state.010000000 (
	.clk(clk_0),
	.d(\Selector31~0_combout ),
	.asdata(vcc),
	.clrn(altera_reset_synchronizer_int_chain_out),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\m_state.010000000~q ),
	.prn(vcc));
defparam \m_state.010000000 .is_wysiwyg = "true";
defparam \m_state.010000000 .power_up = "low";

fiftyfivenm_lcell_comb \Selector33~0 (
	.dataa(\active_cs_n~q ),
	.datab(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|Equal1~0_combout ),
	.datac(\pending~4_combout ),
	.datad(\pending~9_combout ),
	.cin(gnd),
	.combout(\Selector33~0_combout ),
	.cout());
defparam \Selector33~0 .lut_mask = 16'h8CCC;
defparam \Selector33~0 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector33~1 (
	.dataa(\refresh_request~q ),
	.datab(\m_state.100000000~q ),
	.datac(\m_state.010000000~q ),
	.datad(\Selector33~0_combout ),
	.cin(gnd),
	.combout(\Selector33~1_combout ),
	.cout());
defparam \Selector33~1 .lut_mask = 16'h0307;
defparam \Selector33~1 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector34~0 (
	.dataa(\active_rnw~q ),
	.datab(\m_state.000000010~q ),
	.datac(\Selector33~1_combout ),
	.datad(gnd),
	.cin(gnd),
	.combout(\Selector34~0_combout ),
	.cout());
defparam \Selector34~0 .lut_mask = 16'h8080;
defparam \Selector34~0 .sum_lutc_input = "datac";

dffeas \m_next.000001000 (
	.clk(clk_0),
	.d(\Selector34~0_combout ),
	.asdata(vcc),
	.clrn(altera_reset_synchronizer_int_chain_out),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\Selector34~2_combout ),
	.q(\m_next.000001000~q ),
	.prn(vcc));
defparam \m_next.000001000 .is_wysiwyg = "true";
defparam \m_next.000001000 .power_up = "low";

fiftyfivenm_lcell_comb \Selector27~2 (
	.dataa(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[43]~1_combout ),
	.datab(\m_next.000001000~q ),
	.datac(\Selector27~0_combout ),
	.datad(\Selector27~1_combout ),
	.cin(gnd),
	.combout(\Selector27~2_combout ),
	.cout());
defparam \Selector27~2 .lut_mask = 16'hEAC0;
defparam \Selector27~2 .sum_lutc_input = "datac";

dffeas \m_state.000001000 (
	.clk(clk_0),
	.d(\Selector27~2_combout ),
	.asdata(vcc),
	.clrn(altera_reset_synchronizer_int_chain_out),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\Selector27~6_combout ),
	.q(\m_state.000001000~q ),
	.prn(vcc));
defparam \m_state.000001000 .is_wysiwyg = "true";
defparam \m_state.000001000 .power_up = "low";

fiftyfivenm_lcell_comb \m_addr~0 (
	.dataa(gnd),
	.datab(gnd),
	.datac(\m_state.000001000~q ),
	.datad(\m_state.000010000~q ),
	.cin(gnd),
	.combout(\m_addr~0_combout ),
	.cout());
defparam \m_addr~0 .lut_mask = 16'h000F;
defparam \m_addr~0 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector26~0 (
	.dataa(\pending~combout ),
	.datab(\m_state.000000100~q ),
	.datac(\refresh_request~q ),
	.datad(\m_addr~0_combout ),
	.cin(gnd),
	.combout(\Selector26~0_combout ),
	.cout());
defparam \Selector26~0 .lut_mask = 16'h00A8;
defparam \Selector26~0 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector26~1 (
	.dataa(\m_state.100000000~q ),
	.datab(\refresh_request~q ),
	.datac(gnd),
	.datad(\WideOr8~0_combout ),
	.cin(gnd),
	.combout(\Selector26~1_combout ),
	.cout());
defparam \Selector26~1 .lut_mask = 16'h88FF;
defparam \Selector26~1 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector26~2 (
	.dataa(\Selector26~0_combout ),
	.datab(\Selector26~1_combout ),
	.datac(\m_state.000000100~q ),
	.datad(\LessThan1~0_combout ),
	.cin(gnd),
	.combout(\Selector26~2_combout ),
	.cout());
defparam \Selector26~2 .lut_mask = 16'hFEEE;
defparam \Selector26~2 .sum_lutc_input = "datac";

dffeas \m_state.000000100 (
	.clk(clk_0),
	.d(\Selector26~2_combout ),
	.asdata(vcc),
	.clrn(altera_reset_synchronizer_int_chain_out),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\m_state.000000100~q ),
	.prn(vcc));
defparam \m_state.000000100 .is_wysiwyg = "true";
defparam \m_state.000000100 .power_up = "low";

fiftyfivenm_lcell_comb \Selector24~0 (
	.dataa(\m_state.000000100~q ),
	.datab(gnd),
	.datac(\m_count[2]~q ),
	.datad(\m_count[1]~q ),
	.cin(gnd),
	.combout(\Selector24~0_combout ),
	.cout());
defparam \Selector24~0 .lut_mask = 16'h000A;
defparam \Selector24~0 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector33~2 (
	.dataa(\pending~combout ),
	.datab(\refresh_request~q ),
	.datac(\m_next.000000001~q ),
	.datad(\m_addr~0_combout ),
	.cin(gnd),
	.combout(\Selector33~2_combout ),
	.cout());
defparam \Selector33~2 .lut_mask = 16'h008F;
defparam \Selector33~2 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector93~0 (
	.dataa(gnd),
	.datab(\m_state.100000000~q ),
	.datac(\m_state.000000100~q ),
	.datad(\m_state.000100000~q ),
	.cin(gnd),
	.combout(\Selector93~0_combout ),
	.cout());
defparam \Selector93~0 .lut_mask = 16'h0003;
defparam \Selector93~0 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector33~3 (
	.dataa(\m_state.001000000~q ),
	.datab(\m_state.000000001~q ),
	.datac(\refresh_request~q ),
	.datad(\Selector93~0_combout ),
	.cin(gnd),
	.combout(\Selector33~3_combout ),
	.cout());
defparam \Selector33~3 .lut_mask = 16'hABFF;
defparam \Selector33~3 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector33~4 (
	.dataa(\Selector33~3_combout ),
	.datab(\init_done~q ),
	.datac(\m_state.000000001~q ),
	.datad(\m_next.000000001~q ),
	.cin(gnd),
	.combout(\Selector33~4_combout ),
	.cout());
defparam \Selector33~4 .lut_mask = 16'h03AB;
defparam \Selector33~4 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector33~5 (
	.dataa(\Selector33~2_combout ),
	.datab(\Selector33~4_combout ),
	.datac(gnd),
	.datad(\Selector33~1_combout ),
	.cin(gnd),
	.combout(\Selector33~5_combout ),
	.cout());
defparam \Selector33~5 .lut_mask = 16'h1100;
defparam \Selector33~5 .sum_lutc_input = "datac";

dffeas \m_next.000000001 (
	.clk(clk_0),
	.d(\Selector33~5_combout ),
	.asdata(vcc),
	.clrn(altera_reset_synchronizer_int_chain_out),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\m_next.000000001~q ),
	.prn(vcc));
defparam \m_next.000000001 .is_wysiwyg = "true";
defparam \m_next.000000001 .power_up = "low";

fiftyfivenm_lcell_comb \Selector24~2 (
	.dataa(\Selector24~1_combout ),
	.datab(\Selector24~0_combout ),
	.datac(\m_state.000000001~q ),
	.datad(\m_next.000000001~q ),
	.cin(gnd),
	.combout(\Selector24~2_combout ),
	.cout());
defparam \Selector24~2 .lut_mask = 16'hF531;
defparam \Selector24~2 .sum_lutc_input = "datac";

dffeas \m_state.000000001 (
	.clk(clk_0),
	.d(\Selector24~2_combout ),
	.asdata(vcc),
	.clrn(altera_reset_synchronizer_int_chain_out),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\m_state.000000001~q ),
	.prn(vcc));
defparam \m_state.000000001 .is_wysiwyg = "true";
defparam \m_state.000000001 .power_up = "low";

fiftyfivenm_lcell_comb \Selector23~0 (
	.dataa(\m_state.000000001~q ),
	.datab(\ack_refresh_request~q ),
	.datac(\m_state.010000000~q ),
	.datad(\init_done~q ),
	.cin(gnd),
	.combout(\Selector23~0_combout ),
	.cout());
defparam \Selector23~0 .lut_mask = 16'hA8EC;
defparam \Selector23~0 .sum_lutc_input = "datac";

dffeas ack_refresh_request(
	.clk(clk_0),
	.d(\Selector23~0_combout ),
	.asdata(vcc),
	.clrn(altera_reset_synchronizer_int_chain_out),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\ack_refresh_request~q ),
	.prn(vcc));
defparam ack_refresh_request.is_wysiwyg = "true";
defparam ack_refresh_request.power_up = "low";

fiftyfivenm_lcell_comb \refresh_request~0 (
	.dataa(\init_done~q ),
	.datab(\refresh_request~q ),
	.datac(\Equal0~4_combout ),
	.datad(\ack_refresh_request~q ),
	.cin(gnd),
	.combout(\refresh_request~0_combout ),
	.cout());
defparam \refresh_request~0 .lut_mask = 16'h00A8;
defparam \refresh_request~0 .sum_lutc_input = "datac";

dffeas refresh_request(
	.clk(clk_0),
	.d(\refresh_request~0_combout ),
	.asdata(vcc),
	.clrn(altera_reset_synchronizer_int_chain_out),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\refresh_request~q ),
	.prn(vcc));
defparam refresh_request.is_wysiwyg = "true";
defparam refresh_request.power_up = "low";

fiftyfivenm_lcell_comb \active_rnw~1 (
	.dataa(\refresh_request~q ),
	.datab(gnd),
	.datac(altera_reset_synchronizer_int_chain_out),
	.datad(gnd),
	.cin(gnd),
	.combout(\active_rnw~1_combout ),
	.cout());
defparam \active_rnw~1 .lut_mask = 16'h5050;
defparam \active_rnw~1 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \active_rnw~2 (
	.dataa(\m_addr~0_combout ),
	.datab(\m_state.000000001~q ),
	.datac(\pending~combout ),
	.datad(\m_state.100000000~q ),
	.cin(gnd),
	.combout(\active_rnw~2_combout ),
	.cout());
defparam \active_rnw~2 .lut_mask = 16'hF040;
defparam \active_rnw~2 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \active_rnw~3 (
	.dataa(\active_rnw~0_combout ),
	.datab(\active_rnw~1_combout ),
	.datac(\m_state.000000001~q ),
	.datad(\active_rnw~2_combout ),
	.cin(gnd),
	.combout(\active_rnw~3_combout ),
	.cout());
defparam \active_rnw~3 .lut_mask = 16'hCC08;
defparam \active_rnw~3 .sum_lutc_input = "datac";

dffeas \active_addr[11] (
	.clk(clk_0),
	.d(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[29]~2_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\active_rnw~3_combout ),
	.q(\active_addr[11]~q ),
	.prn(vcc));
defparam \active_addr[11] .is_wysiwyg = "true";
defparam \active_addr[11] .power_up = "low";

fiftyfivenm_lcell_comb \Selector41~8 (
	.dataa(\m_state.000001000~q ),
	.datab(\m_state.000010000~q ),
	.datac(\pending~combout ),
	.datad(\refresh_request~q ),
	.cin(gnd),
	.combout(\Selector41~8_combout ),
	.cout());
defparam \Selector41~8 .lut_mask = 16'h00E0;
defparam \Selector41~8 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector41~7 (
	.dataa(\Selector41~8_combout ),
	.datab(\Selector41~9_combout ),
	.datac(\pending~10_combout ),
	.datad(\Selector29~0_combout ),
	.cin(gnd),
	.combout(\Selector41~7_combout ),
	.cout());
defparam \Selector41~7 .lut_mask = 16'hFEEE;
defparam \Selector41~7 .sum_lutc_input = "datac";

dffeas f_pop(
	.clk(clk_0),
	.d(\Selector41~7_combout ),
	.asdata(vcc),
	.clrn(altera_reset_synchronizer_int_chain_out),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\f_pop~q ),
	.prn(vcc));
defparam f_pop.is_wysiwyg = "true";
defparam f_pop.power_up = "low";

fiftyfivenm_lcell_comb \m_addr[8]~1 (
	.dataa(\m_state.000000010~q ),
	.datab(\pending~combout ),
	.datac(\f_pop~q ),
	.datad(\m_addr~0_combout ),
	.cin(gnd),
	.combout(\m_addr[8]~1_combout ),
	.cout());
defparam \m_addr[8]~1 .lut_mask = 16'hAAC0;
defparam \m_addr[8]~1 .sum_lutc_input = "datac";

dffeas \active_addr[0] (
	.clk(clk_0),
	.d(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[18]~16_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\active_rnw~3_combout ),
	.q(\active_addr[0]~q ),
	.prn(vcc));
defparam \active_addr[0] .is_wysiwyg = "true";
defparam \active_addr[0] .power_up = "low";

dffeas \i_addr[12] (
	.clk(clk_0),
	.d(\i_state.111~q ),
	.asdata(vcc),
	.clrn(altera_reset_synchronizer_int_chain_out),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\i_addr[12]~q ),
	.prn(vcc));
defparam \i_addr[12] .is_wysiwyg = "true";
defparam \i_addr[12] .power_up = "low";

fiftyfivenm_lcell_comb \Selector98~0 (
	.dataa(\m_addr[8]~1_combout ),
	.datab(\active_addr[0]~q ),
	.datac(\m_addr~0_combout ),
	.datad(\i_addr[12]~q ),
	.cin(gnd),
	.combout(\Selector98~0_combout ),
	.cout());
defparam \Selector98~0 .lut_mask = 16'h0E5E;
defparam \Selector98~0 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector98~1 (
	.dataa(\active_addr[11]~q ),
	.datab(\m_addr[8]~1_combout ),
	.datac(\Selector98~0_combout ),
	.datad(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[18]~16_combout ),
	.cin(gnd),
	.combout(\Selector98~1_combout ),
	.cout());
defparam \Selector98~1 .lut_mask = 16'hF838;
defparam \Selector98~1 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector93~1 (
	.dataa(\Selector93~0_combout ),
	.datab(\m_state.000000001~q ),
	.datac(\init_done~q ),
	.datad(\m_state.010000000~q ),
	.cin(gnd),
	.combout(\Selector93~1_combout ),
	.cout());
defparam \Selector93~1 .lut_mask = 16'h008A;
defparam \Selector93~1 .sum_lutc_input = "datac";

dffeas \active_addr[1] (
	.clk(clk_0),
	.d(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[19]~17_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\active_rnw~3_combout ),
	.q(\active_addr[1]~q ),
	.prn(vcc));
defparam \active_addr[1] .is_wysiwyg = "true";
defparam \active_addr[1] .power_up = "low";

fiftyfivenm_lcell_comb \Selector97~0 (
	.dataa(\m_addr[8]~1_combout ),
	.datab(\active_addr[1]~q ),
	.datac(\m_addr~0_combout ),
	.datad(\i_addr[12]~q ),
	.cin(gnd),
	.combout(\Selector97~0_combout ),
	.cout());
defparam \Selector97~0 .lut_mask = 16'h0E5E;
defparam \Selector97~0 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector97~1 (
	.dataa(\active_addr[12]~q ),
	.datab(\m_addr[8]~1_combout ),
	.datac(\Selector97~0_combout ),
	.datad(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[19]~17_combout ),
	.cin(gnd),
	.combout(\Selector97~1_combout ),
	.cout());
defparam \Selector97~1 .lut_mask = 16'hF838;
defparam \Selector97~1 .sum_lutc_input = "datac";

dffeas \active_addr[2] (
	.clk(clk_0),
	.d(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[20]~18_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\active_rnw~3_combout ),
	.q(\active_addr[2]~q ),
	.prn(vcc));
defparam \active_addr[2] .is_wysiwyg = "true";
defparam \active_addr[2] .power_up = "low";

fiftyfivenm_lcell_comb \Selector96~0 (
	.dataa(\m_addr[8]~1_combout ),
	.datab(\active_addr[2]~q ),
	.datac(\m_addr~0_combout ),
	.datad(\i_addr[12]~q ),
	.cin(gnd),
	.combout(\Selector96~0_combout ),
	.cout());
defparam \Selector96~0 .lut_mask = 16'h0E5E;
defparam \Selector96~0 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector96~1 (
	.dataa(\active_addr[13]~q ),
	.datab(\m_addr[8]~1_combout ),
	.datac(\Selector96~0_combout ),
	.datad(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[20]~18_combout ),
	.cin(gnd),
	.combout(\Selector96~1_combout ),
	.cout());
defparam \Selector96~1 .lut_mask = 16'hF838;
defparam \Selector96~1 .sum_lutc_input = "datac";

dffeas \active_addr[3] (
	.clk(clk_0),
	.d(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[21]~19_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\active_rnw~3_combout ),
	.q(\active_addr[3]~q ),
	.prn(vcc));
defparam \active_addr[3] .is_wysiwyg = "true";
defparam \active_addr[3] .power_up = "low";

fiftyfivenm_lcell_comb \Selector95~0 (
	.dataa(\m_addr[8]~1_combout ),
	.datab(\active_addr[3]~q ),
	.datac(\m_addr~0_combout ),
	.datad(\i_addr[12]~q ),
	.cin(gnd),
	.combout(\Selector95~0_combout ),
	.cout());
defparam \Selector95~0 .lut_mask = 16'h0E5E;
defparam \Selector95~0 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector95~1 (
	.dataa(\active_addr[14]~q ),
	.datab(\m_addr[8]~1_combout ),
	.datac(\Selector95~0_combout ),
	.datad(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[21]~19_combout ),
	.cin(gnd),
	.combout(\Selector95~1_combout ),
	.cout());
defparam \Selector95~1 .lut_mask = 16'hF838;
defparam \Selector95~1 .sum_lutc_input = "datac";

dffeas \active_addr[4] (
	.clk(clk_0),
	.d(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[22]~20_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\active_rnw~3_combout ),
	.q(\active_addr[4]~q ),
	.prn(vcc));
defparam \active_addr[4] .is_wysiwyg = "true";
defparam \active_addr[4] .power_up = "low";

fiftyfivenm_lcell_comb \Selector94~0 (
	.dataa(\m_addr[8]~1_combout ),
	.datab(\active_addr[4]~q ),
	.datac(\m_addr~0_combout ),
	.datad(\i_addr[12]~q ),
	.cin(gnd),
	.combout(\Selector94~0_combout ),
	.cout());
defparam \Selector94~0 .lut_mask = 16'h0E5E;
defparam \Selector94~0 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector94~1 (
	.dataa(\active_addr[15]~q ),
	.datab(\m_addr[8]~1_combout ),
	.datac(\Selector94~0_combout ),
	.datad(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[22]~20_combout ),
	.cin(gnd),
	.combout(\Selector94~1_combout ),
	.cout());
defparam \Selector94~1 .lut_mask = 16'hF838;
defparam \Selector94~1 .sum_lutc_input = "datac";

dffeas \active_addr[6] (
	.clk(clk_0),
	.d(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[24]~22_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\active_rnw~3_combout ),
	.q(\active_addr[6]~q ),
	.prn(vcc));
defparam \active_addr[6] .is_wysiwyg = "true";
defparam \active_addr[6] .power_up = "low";

fiftyfivenm_lcell_comb \Selector92~0 (
	.dataa(\m_addr[8]~1_combout ),
	.datab(\active_addr[6]~q ),
	.datac(\m_addr~0_combout ),
	.datad(\i_addr[12]~q ),
	.cin(gnd),
	.combout(\Selector92~0_combout ),
	.cout());
defparam \Selector92~0 .lut_mask = 16'h0E5E;
defparam \Selector92~0 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector92~1 (
	.dataa(\active_addr[17]~q ),
	.datab(\m_addr[8]~1_combout ),
	.datac(\Selector92~0_combout ),
	.datad(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[24]~22_combout ),
	.cin(gnd),
	.combout(\Selector92~1_combout ),
	.cout());
defparam \Selector92~1 .lut_mask = 16'hF838;
defparam \Selector92~1 .sum_lutc_input = "datac";

dffeas \active_addr[7] (
	.clk(clk_0),
	.d(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[25]~23_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\active_rnw~3_combout ),
	.q(\active_addr[7]~q ),
	.prn(vcc));
defparam \active_addr[7] .is_wysiwyg = "true";
defparam \active_addr[7] .power_up = "low";

fiftyfivenm_lcell_comb \Selector91~0 (
	.dataa(\m_addr~0_combout ),
	.datab(\active_addr[18]~q ),
	.datac(\m_addr[8]~1_combout ),
	.datad(\i_addr[12]~q ),
	.cin(gnd),
	.combout(\Selector91~0_combout ),
	.cout());
defparam \Selector91~0 .lut_mask = 16'hD0DA;
defparam \Selector91~0 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector91~1 (
	.dataa(\active_addr[7]~q ),
	.datab(\m_addr~0_combout ),
	.datac(\Selector91~0_combout ),
	.datad(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[25]~23_combout ),
	.cin(gnd),
	.combout(\Selector91~1_combout ),
	.cout());
defparam \Selector91~1 .lut_mask = 16'hF2C2;
defparam \Selector91~1 .sum_lutc_input = "datac";

dffeas \active_addr[8] (
	.clk(clk_0),
	.d(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[26]~24_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\active_rnw~3_combout ),
	.q(\active_addr[8]~q ),
	.prn(vcc));
defparam \active_addr[8] .is_wysiwyg = "true";
defparam \active_addr[8] .power_up = "low";

fiftyfivenm_lcell_comb \Selector90~0 (
	.dataa(\m_addr[8]~1_combout ),
	.datab(\active_addr[8]~q ),
	.datac(\m_addr~0_combout ),
	.datad(\i_addr[12]~q ),
	.cin(gnd),
	.combout(\Selector90~0_combout ),
	.cout());
defparam \Selector90~0 .lut_mask = 16'h0E5E;
defparam \Selector90~0 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector90~1 (
	.dataa(\active_addr[19]~q ),
	.datab(\m_addr[8]~1_combout ),
	.datac(\Selector90~0_combout ),
	.datad(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[26]~24_combout ),
	.cin(gnd),
	.combout(\Selector90~1_combout ),
	.cout());
defparam \Selector90~1 .lut_mask = 16'hF838;
defparam \Selector90~1 .sum_lutc_input = "datac";

dffeas \active_addr[9] (
	.clk(clk_0),
	.d(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[27]~25_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\active_rnw~3_combout ),
	.q(\active_addr[9]~q ),
	.prn(vcc));
defparam \active_addr[9] .is_wysiwyg = "true";
defparam \active_addr[9] .power_up = "low";

fiftyfivenm_lcell_comb \Selector89~0 (
	.dataa(\m_addr~0_combout ),
	.datab(\active_addr[20]~q ),
	.datac(\m_addr[8]~1_combout ),
	.datad(\i_addr[12]~q ),
	.cin(gnd),
	.combout(\Selector89~0_combout ),
	.cout());
defparam \Selector89~0 .lut_mask = 16'hD0DA;
defparam \Selector89~0 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector89~1 (
	.dataa(\active_addr[9]~q ),
	.datab(\m_addr~0_combout ),
	.datac(\Selector89~0_combout ),
	.datad(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[27]~25_combout ),
	.cin(gnd),
	.combout(\Selector89~1_combout ),
	.cout());
defparam \Selector89~1 .lut_mask = 16'hF2C2;
defparam \Selector89~1 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \always5~0 (
	.dataa(\f_pop~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(\pending~combout ),
	.cin(gnd),
	.combout(\always5~0_combout ),
	.cout());
defparam \always5~0 .lut_mask = 16'hFF55;
defparam \always5~0 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Equal4~0 (
	.dataa(m_cmd_1),
	.datab(gnd),
	.datac(m_cmd_2),
	.datad(m_cmd_0),
	.cin(gnd),
	.combout(\Equal4~0_combout ),
	.cout());
defparam \Equal4~0 .lut_mask = 16'h000A;
defparam \Equal4~0 .sum_lutc_input = "datac";

dffeas \rd_valid[0] (
	.clk(clk_0),
	.d(\Equal4~0_combout ),
	.asdata(vcc),
	.clrn(altera_reset_synchronizer_int_chain_out),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\rd_valid[0]~q ),
	.prn(vcc));
defparam \rd_valid[0] .is_wysiwyg = "true";
defparam \rd_valid[0] .power_up = "low";

dffeas \rd_valid[1] (
	.clk(clk_0),
	.d(\rd_valid[0]~q ),
	.asdata(vcc),
	.clrn(altera_reset_synchronizer_int_chain_out),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\rd_valid[1]~q ),
	.prn(vcc));
defparam \rd_valid[1] .is_wysiwyg = "true";
defparam \rd_valid[1] .power_up = "low";

dffeas \active_addr[5] (
	.clk(clk_0),
	.d(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[23]~21_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\active_rnw~3_combout ),
	.q(\active_addr[5]~q ),
	.prn(vcc));
defparam \active_addr[5] .is_wysiwyg = "true";
defparam \active_addr[5] .power_up = "low";

fiftyfivenm_lcell_comb f_select(
	.dataa(\pending~combout ),
	.datab(\f_pop~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\f_select~combout ),
	.cout());
defparam f_select.lut_mask = 16'h8888;
defparam f_select.sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector93~2 (
	.dataa(\m_addr~0_combout ),
	.datab(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[23]~21_combout ),
	.datac(\active_addr[5]~q ),
	.datad(\f_select~combout ),
	.cin(gnd),
	.combout(\Selector93~2_combout ),
	.cout());
defparam \Selector93~2 .lut_mask = 16'hEEFA;
defparam \Selector93~2 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector93~3 (
	.dataa(\active_addr[16]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(\m_state.000000010~q ),
	.cin(gnd),
	.combout(\Selector93~3_combout ),
	.cout());
defparam \Selector93~3 .lut_mask = 16'hAAFF;
defparam \Selector93~3 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector93~4 (
	.dataa(\Selector93~2_combout ),
	.datab(\Selector93~3_combout ),
	.datac(m_addr_5),
	.datad(\Selector93~1_combout ),
	.cin(gnd),
	.combout(\Selector93~4_combout ),
	.cout());
defparam \Selector93~4 .lut_mask = 16'h8880;
defparam \Selector93~4 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector88~2 (
	.dataa(\active_addr[21]~q ),
	.datab(\m_state.000000010~q ),
	.datac(gnd),
	.datad(\i_addr[12]~q ),
	.cin(gnd),
	.combout(\Selector88~2_combout ),
	.cout());
defparam \Selector88~2 .lut_mask = 16'h88BB;
defparam \Selector88~2 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector88~3 (
	.dataa(\m_state.000001000~q ),
	.datab(\m_state.000010000~q ),
	.datac(\m_state.001000000~q ),
	.datad(\Selector88~2_combout ),
	.cin(gnd),
	.combout(\Selector88~3_combout ),
	.cout());
defparam \Selector88~3 .lut_mask = 16'hF1F0;
defparam \Selector88~3 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector87~2 (
	.dataa(\active_addr[22]~q ),
	.datab(\m_state.000000010~q ),
	.datac(gnd),
	.datad(\i_addr[12]~q ),
	.cin(gnd),
	.combout(\Selector87~2_combout ),
	.cout());
defparam \Selector87~2 .lut_mask = 16'h88BB;
defparam \Selector87~2 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector87~3 (
	.dataa(\m_state.000001000~q ),
	.datab(\m_state.000010000~q ),
	.datac(\m_state.001000000~q ),
	.datad(\Selector87~2_combout ),
	.cin(gnd),
	.combout(\Selector87~3_combout ),
	.cout());
defparam \Selector87~3 .lut_mask = 16'hF1F0;
defparam \Selector87~3 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector86~2 (
	.dataa(\active_addr[23]~q ),
	.datab(\m_state.000000010~q ),
	.datac(gnd),
	.datad(\i_addr[12]~q ),
	.cin(gnd),
	.combout(\Selector86~2_combout ),
	.cout());
defparam \Selector86~2 .lut_mask = 16'h88BB;
defparam \Selector86~2 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector86~3 (
	.dataa(\m_state.000001000~q ),
	.datab(\m_state.000010000~q ),
	.datac(\m_state.001000000~q ),
	.datad(\Selector86~2_combout ),
	.cin(gnd),
	.combout(\Selector86~3_combout ),
	.cout());
defparam \Selector86~3 .lut_mask = 16'hF1F0;
defparam \Selector86~3 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector100~0 (
	.dataa(\active_addr[10]~q ),
	.datab(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[28]~0_combout ),
	.datac(\f_select~combout ),
	.datad(\m_state.000000010~q ),
	.cin(gnd),
	.combout(\Selector100~0_combout ),
	.cout());
defparam \Selector100~0 .lut_mask = 16'hAACA;
defparam \Selector100~0 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \WideOr16~0 (
	.dataa(\m_state.000001000~q ),
	.datab(\m_state.000010000~q ),
	.datac(\m_state.000000010~q ),
	.datad(gnd),
	.cin(gnd),
	.combout(\WideOr16~0_combout ),
	.cout());
defparam \WideOr16~0 .lut_mask = 16'hFEFE;
defparam \WideOr16~0 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector99~0 (
	.dataa(\active_addr[24]~q ),
	.datab(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[42]~3_combout ),
	.datac(\f_select~combout ),
	.datad(\m_state.000000010~q ),
	.cin(gnd),
	.combout(\Selector99~0_combout ),
	.cout());
defparam \Selector99~0 .lut_mask = 16'hAACA;
defparam \Selector99~0 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector2~0 (
	.dataa(\i_state.001~q ),
	.datab(\i_state.101~q ),
	.datac(\i_cmd[1]~q ),
	.datad(\WideOr6~0_combout ),
	.cin(gnd),
	.combout(\Selector2~0_combout ),
	.cout());
defparam \Selector2~0 .lut_mask = 16'h5100;
defparam \Selector2~0 .sum_lutc_input = "datac";

dffeas \i_cmd[1] (
	.clk(clk_0),
	.d(\Selector2~0_combout ),
	.asdata(vcc),
	.clrn(altera_reset_synchronizer_int_chain_out),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\i_cmd[1]~q ),
	.prn(vcc));
defparam \i_cmd[1] .is_wysiwyg = "true";
defparam \i_cmd[1] .power_up = "low";

fiftyfivenm_lcell_comb \Selector21~0 (
	.dataa(\init_done~q ),
	.datab(gnd),
	.datac(\i_cmd[1]~q ),
	.datad(\m_state.000000001~q ),
	.cin(gnd),
	.combout(\Selector21~0_combout ),
	.cout());
defparam \Selector21~0 .lut_mask = 16'h00AF;
defparam \Selector21~0 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \WideOr9~0 (
	.dataa(\m_state.000000001~q ),
	.datab(\m_state.000001000~q ),
	.datac(\m_state.000010000~q ),
	.datad(\m_state.010000000~q ),
	.cin(gnd),
	.combout(\WideOr9~0_combout ),
	.cout());
defparam \WideOr9~0 .lut_mask = 16'h0002;
defparam \WideOr9~0 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector21~1 (
	.dataa(\Selector21~0_combout ),
	.datab(\WideOr9~0_combout ),
	.datac(\always5~0_combout ),
	.datad(\m_addr~0_combout ),
	.cin(gnd),
	.combout(\Selector21~1_combout ),
	.cout());
defparam \Selector21~1 .lut_mask = 16'h1110;
defparam \Selector21~1 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector0~0 (
	.dataa(\i_state.101~q ),
	.datab(gnd),
	.datac(\i_cmd[3]~q ),
	.datad(\i_state.000~q ),
	.cin(gnd),
	.combout(\Selector0~0_combout ),
	.cout());
defparam \Selector0~0 .lut_mask = 16'hF500;
defparam \Selector0~0 .sum_lutc_input = "datac";

dffeas \i_cmd[3] (
	.clk(clk_0),
	.d(\Selector0~0_combout ),
	.asdata(vcc),
	.clrn(altera_reset_synchronizer_int_chain_out),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\i_cmd[3]~q ),
	.prn(vcc));
defparam \i_cmd[3] .is_wysiwyg = "true";
defparam \i_cmd[3] .power_up = "low";

fiftyfivenm_lcell_comb \Selector19~0 (
	.dataa(\init_done~q ),
	.datab(\i_cmd[3]~q ),
	.datac(\refresh_request~q ),
	.datad(\m_state.000000001~q ),
	.cin(gnd),
	.combout(\Selector19~0_combout ),
	.cout());
defparam \Selector19~0 .lut_mask = 16'h001B;
defparam \Selector19~0 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector19~1 (
	.dataa(\m_state.000000001~q ),
	.datab(\m_state.001000000~q ),
	.datac(\m_state.010000000~q ),
	.datad(\m_state.000000100~q ),
	.cin(gnd),
	.combout(\Selector19~1_combout ),
	.cout());
defparam \Selector19~1 .lut_mask = 16'h0002;
defparam \Selector19~1 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector19~2 (
	.dataa(\m_state.001000000~q ),
	.datab(\m_state.000000100~q ),
	.datac(\refresh_request~q ),
	.datad(\m_next.010000000~q ),
	.cin(gnd),
	.combout(\Selector19~2_combout ),
	.cout());
defparam \Selector19~2 .lut_mask = 16'h0ACE;
defparam \Selector19~2 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector19~3 (
	.dataa(\Selector19~0_combout ),
	.datab(\active_cs_n~q ),
	.datac(\Selector19~1_combout ),
	.datad(\Selector19~2_combout ),
	.cin(gnd),
	.combout(\Selector19~3_combout ),
	.cout());
defparam \Selector19~3 .lut_mask = 16'h1115;
defparam \Selector19~3 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector1~0 (
	.dataa(\i_state.011~q ),
	.datab(\i_state.101~q ),
	.datac(\i_cmd[2]~q ),
	.datad(\i_state.000~q ),
	.cin(gnd),
	.combout(\Selector1~0_combout ),
	.cout());
defparam \Selector1~0 .lut_mask = 16'h5100;
defparam \Selector1~0 .sum_lutc_input = "datac";

dffeas \i_cmd[2] (
	.clk(clk_0),
	.d(\Selector1~0_combout ),
	.asdata(vcc),
	.clrn(altera_reset_synchronizer_int_chain_out),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\i_cmd[2]~q ),
	.prn(vcc));
defparam \i_cmd[2] .is_wysiwyg = "true";
defparam \i_cmd[2] .power_up = "low";

fiftyfivenm_lcell_comb \Selector20~0 (
	.dataa(\WideOr8~0_combout ),
	.datab(\init_done~q ),
	.datac(\i_cmd[2]~q ),
	.datad(\m_state.000000001~q ),
	.cin(gnd),
	.combout(\Selector20~0_combout ),
	.cout());
defparam \Selector20~0 .lut_mask = 16'h5530;
defparam \Selector20~0 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector3~0 (
	.dataa(\i_state.010~q ),
	.datab(\i_state.101~q ),
	.datac(\i_cmd[0]~q ),
	.datad(\WideOr6~0_combout ),
	.cin(gnd),
	.combout(\Selector3~0_combout ),
	.cout());
defparam \Selector3~0 .lut_mask = 16'h5100;
defparam \Selector3~0 .sum_lutc_input = "datac";

dffeas \i_cmd[0] (
	.clk(clk_0),
	.d(\Selector3~0_combout ),
	.asdata(vcc),
	.clrn(altera_reset_synchronizer_int_chain_out),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\i_cmd[0]~q ),
	.prn(vcc));
defparam \i_cmd[0] .is_wysiwyg = "true";
defparam \i_cmd[0] .power_up = "low";

fiftyfivenm_lcell_comb \Selector22~0 (
	.dataa(\m_state.000000001~q ),
	.datab(\m_state.001000000~q ),
	.datac(\init_done~q ),
	.datad(\i_cmd[0]~q ),
	.cin(gnd),
	.combout(\Selector22~0_combout ),
	.cout());
defparam \Selector22~0 .lut_mask = 16'h8D88;
defparam \Selector22~0 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector22~1 (
	.dataa(\m_state.000010000~q ),
	.datab(\always5~0_combout ),
	.datac(\m_state.000000001~q ),
	.datad(\Selector22~0_combout ),
	.cin(gnd),
	.combout(\Selector22~1_combout ),
	.cout());
defparam \Selector22~1 .lut_mask = 16'hDD80;
defparam \Selector22~1 .sum_lutc_input = "datac";

dffeas \active_data[0] (
	.clk(clk_0),
	.d(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[0]~26_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\active_rnw~3_combout ),
	.q(\active_data[0]~q ),
	.prn(vcc));
defparam \active_data[0] .is_wysiwyg = "true";
defparam \active_data[0] .power_up = "low";

fiftyfivenm_lcell_comb \Selector116~0 (
	.dataa(\active_data[0]~q ),
	.datab(m_data_0),
	.datac(\m_state.000010000~q ),
	.datad(\m_state.000000010~q ),
	.cin(gnd),
	.combout(\Selector116~0_combout ),
	.cout());
defparam \Selector116~0 .lut_mask = 16'hAAAC;
defparam \Selector116~0 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \m_data[14]~0 (
	.dataa(\pending~combout ),
	.datab(\f_pop~q ),
	.datac(\m_state.000010000~q ),
	.datad(gnd),
	.cin(gnd),
	.combout(\m_data[14]~0_combout ),
	.cout());
defparam \m_data[14]~0 .lut_mask = 16'h8080;
defparam \m_data[14]~0 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector116~1 (
	.dataa(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[0]~26_combout ),
	.datab(\Selector116~0_combout ),
	.datac(gnd),
	.datad(\m_data[14]~0_combout ),
	.cin(gnd),
	.combout(\Selector116~1_combout ),
	.cout());
defparam \Selector116~1 .lut_mask = 16'hAACC;
defparam \Selector116~1 .sum_lutc_input = "datac";

dffeas \active_data[1] (
	.clk(clk_0),
	.d(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[1]~27_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\active_rnw~3_combout ),
	.q(\active_data[1]~q ),
	.prn(vcc));
defparam \active_data[1] .is_wysiwyg = "true";
defparam \active_data[1] .power_up = "low";

fiftyfivenm_lcell_comb \Selector115~0 (
	.dataa(\active_data[1]~q ),
	.datab(m_data_1),
	.datac(\m_state.000010000~q ),
	.datad(\m_state.000000010~q ),
	.cin(gnd),
	.combout(\Selector115~0_combout ),
	.cout());
defparam \Selector115~0 .lut_mask = 16'hAAAC;
defparam \Selector115~0 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector115~1 (
	.dataa(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[1]~27_combout ),
	.datab(\Selector115~0_combout ),
	.datac(gnd),
	.datad(\m_data[14]~0_combout ),
	.cin(gnd),
	.combout(\Selector115~1_combout ),
	.cout());
defparam \Selector115~1 .lut_mask = 16'hAACC;
defparam \Selector115~1 .sum_lutc_input = "datac";

dffeas \active_data[2] (
	.clk(clk_0),
	.d(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[2]~28_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\active_rnw~3_combout ),
	.q(\active_data[2]~q ),
	.prn(vcc));
defparam \active_data[2] .is_wysiwyg = "true";
defparam \active_data[2] .power_up = "low";

fiftyfivenm_lcell_comb \Selector114~0 (
	.dataa(\active_data[2]~q ),
	.datab(m_data_2),
	.datac(\m_state.000010000~q ),
	.datad(\m_state.000000010~q ),
	.cin(gnd),
	.combout(\Selector114~0_combout ),
	.cout());
defparam \Selector114~0 .lut_mask = 16'hAAAC;
defparam \Selector114~0 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector114~1 (
	.dataa(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[2]~28_combout ),
	.datab(\Selector114~0_combout ),
	.datac(gnd),
	.datad(\m_data[14]~0_combout ),
	.cin(gnd),
	.combout(\Selector114~1_combout ),
	.cout());
defparam \Selector114~1 .lut_mask = 16'hAACC;
defparam \Selector114~1 .sum_lutc_input = "datac";

dffeas \active_data[3] (
	.clk(clk_0),
	.d(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[3]~29_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\active_rnw~3_combout ),
	.q(\active_data[3]~q ),
	.prn(vcc));
defparam \active_data[3] .is_wysiwyg = "true";
defparam \active_data[3] .power_up = "low";

fiftyfivenm_lcell_comb \Selector113~0 (
	.dataa(\active_data[3]~q ),
	.datab(m_data_3),
	.datac(\m_state.000010000~q ),
	.datad(\m_state.000000010~q ),
	.cin(gnd),
	.combout(\Selector113~0_combout ),
	.cout());
defparam \Selector113~0 .lut_mask = 16'hAAAC;
defparam \Selector113~0 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector113~1 (
	.dataa(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[3]~29_combout ),
	.datab(\Selector113~0_combout ),
	.datac(gnd),
	.datad(\m_data[14]~0_combout ),
	.cin(gnd),
	.combout(\Selector113~1_combout ),
	.cout());
defparam \Selector113~1 .lut_mask = 16'hAACC;
defparam \Selector113~1 .sum_lutc_input = "datac";

dffeas \active_data[4] (
	.clk(clk_0),
	.d(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[4]~30_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\active_rnw~3_combout ),
	.q(\active_data[4]~q ),
	.prn(vcc));
defparam \active_data[4] .is_wysiwyg = "true";
defparam \active_data[4] .power_up = "low";

fiftyfivenm_lcell_comb \Selector112~0 (
	.dataa(\active_data[4]~q ),
	.datab(m_data_4),
	.datac(\m_state.000010000~q ),
	.datad(\m_state.000000010~q ),
	.cin(gnd),
	.combout(\Selector112~0_combout ),
	.cout());
defparam \Selector112~0 .lut_mask = 16'hAAAC;
defparam \Selector112~0 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector112~1 (
	.dataa(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[4]~30_combout ),
	.datab(\Selector112~0_combout ),
	.datac(gnd),
	.datad(\m_data[14]~0_combout ),
	.cin(gnd),
	.combout(\Selector112~1_combout ),
	.cout());
defparam \Selector112~1 .lut_mask = 16'hAACC;
defparam \Selector112~1 .sum_lutc_input = "datac";

dffeas \active_data[5] (
	.clk(clk_0),
	.d(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[5]~31_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\active_rnw~3_combout ),
	.q(\active_data[5]~q ),
	.prn(vcc));
defparam \active_data[5] .is_wysiwyg = "true";
defparam \active_data[5] .power_up = "low";

fiftyfivenm_lcell_comb \Selector111~0 (
	.dataa(\active_data[5]~q ),
	.datab(m_data_5),
	.datac(\m_state.000010000~q ),
	.datad(\m_state.000000010~q ),
	.cin(gnd),
	.combout(\Selector111~0_combout ),
	.cout());
defparam \Selector111~0 .lut_mask = 16'hAAAC;
defparam \Selector111~0 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector111~1 (
	.dataa(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[5]~31_combout ),
	.datab(\Selector111~0_combout ),
	.datac(gnd),
	.datad(\m_data[14]~0_combout ),
	.cin(gnd),
	.combout(\Selector111~1_combout ),
	.cout());
defparam \Selector111~1 .lut_mask = 16'hAACC;
defparam \Selector111~1 .sum_lutc_input = "datac";

dffeas \active_data[6] (
	.clk(clk_0),
	.d(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[6]~32_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\active_rnw~3_combout ),
	.q(\active_data[6]~q ),
	.prn(vcc));
defparam \active_data[6] .is_wysiwyg = "true";
defparam \active_data[6] .power_up = "low";

fiftyfivenm_lcell_comb \Selector110~0 (
	.dataa(\active_data[6]~q ),
	.datab(m_data_6),
	.datac(\m_state.000010000~q ),
	.datad(\m_state.000000010~q ),
	.cin(gnd),
	.combout(\Selector110~0_combout ),
	.cout());
defparam \Selector110~0 .lut_mask = 16'hAAAC;
defparam \Selector110~0 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector110~1 (
	.dataa(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[6]~32_combout ),
	.datab(\Selector110~0_combout ),
	.datac(gnd),
	.datad(\m_data[14]~0_combout ),
	.cin(gnd),
	.combout(\Selector110~1_combout ),
	.cout());
defparam \Selector110~1 .lut_mask = 16'hAACC;
defparam \Selector110~1 .sum_lutc_input = "datac";

dffeas \active_data[7] (
	.clk(clk_0),
	.d(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[7]~33_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\active_rnw~3_combout ),
	.q(\active_data[7]~q ),
	.prn(vcc));
defparam \active_data[7] .is_wysiwyg = "true";
defparam \active_data[7] .power_up = "low";

fiftyfivenm_lcell_comb \Selector109~0 (
	.dataa(\active_data[7]~q ),
	.datab(m_data_7),
	.datac(\m_state.000010000~q ),
	.datad(\m_state.000000010~q ),
	.cin(gnd),
	.combout(\Selector109~0_combout ),
	.cout());
defparam \Selector109~0 .lut_mask = 16'hAAAC;
defparam \Selector109~0 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector109~1 (
	.dataa(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[7]~33_combout ),
	.datab(\Selector109~0_combout ),
	.datac(gnd),
	.datad(\m_data[14]~0_combout ),
	.cin(gnd),
	.combout(\Selector109~1_combout ),
	.cout());
defparam \Selector109~1 .lut_mask = 16'hAACC;
defparam \Selector109~1 .sum_lutc_input = "datac";

dffeas \active_data[8] (
	.clk(clk_0),
	.d(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[8]~34_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\active_rnw~3_combout ),
	.q(\active_data[8]~q ),
	.prn(vcc));
defparam \active_data[8] .is_wysiwyg = "true";
defparam \active_data[8] .power_up = "low";

fiftyfivenm_lcell_comb \Selector108~0 (
	.dataa(\active_data[8]~q ),
	.datab(m_data_8),
	.datac(\m_state.000010000~q ),
	.datad(\m_state.000000010~q ),
	.cin(gnd),
	.combout(\Selector108~0_combout ),
	.cout());
defparam \Selector108~0 .lut_mask = 16'hAAAC;
defparam \Selector108~0 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector108~1 (
	.dataa(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[8]~34_combout ),
	.datab(\Selector108~0_combout ),
	.datac(gnd),
	.datad(\m_data[14]~0_combout ),
	.cin(gnd),
	.combout(\Selector108~1_combout ),
	.cout());
defparam \Selector108~1 .lut_mask = 16'hAACC;
defparam \Selector108~1 .sum_lutc_input = "datac";

dffeas \active_data[9] (
	.clk(clk_0),
	.d(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[9]~35_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\active_rnw~3_combout ),
	.q(\active_data[9]~q ),
	.prn(vcc));
defparam \active_data[9] .is_wysiwyg = "true";
defparam \active_data[9] .power_up = "low";

fiftyfivenm_lcell_comb \Selector107~0 (
	.dataa(\active_data[9]~q ),
	.datab(m_data_9),
	.datac(\m_state.000010000~q ),
	.datad(\m_state.000000010~q ),
	.cin(gnd),
	.combout(\Selector107~0_combout ),
	.cout());
defparam \Selector107~0 .lut_mask = 16'hAAAC;
defparam \Selector107~0 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector107~1 (
	.dataa(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[9]~35_combout ),
	.datab(\Selector107~0_combout ),
	.datac(gnd),
	.datad(\m_data[14]~0_combout ),
	.cin(gnd),
	.combout(\Selector107~1_combout ),
	.cout());
defparam \Selector107~1 .lut_mask = 16'hAACC;
defparam \Selector107~1 .sum_lutc_input = "datac";

dffeas \active_data[10] (
	.clk(clk_0),
	.d(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[10]~36_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\active_rnw~3_combout ),
	.q(\active_data[10]~q ),
	.prn(vcc));
defparam \active_data[10] .is_wysiwyg = "true";
defparam \active_data[10] .power_up = "low";

fiftyfivenm_lcell_comb \Selector106~0 (
	.dataa(\active_data[10]~q ),
	.datab(m_data_10),
	.datac(\m_state.000010000~q ),
	.datad(\m_state.000000010~q ),
	.cin(gnd),
	.combout(\Selector106~0_combout ),
	.cout());
defparam \Selector106~0 .lut_mask = 16'hAAAC;
defparam \Selector106~0 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector106~1 (
	.dataa(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[10]~36_combout ),
	.datab(\Selector106~0_combout ),
	.datac(gnd),
	.datad(\m_data[14]~0_combout ),
	.cin(gnd),
	.combout(\Selector106~1_combout ),
	.cout());
defparam \Selector106~1 .lut_mask = 16'hAACC;
defparam \Selector106~1 .sum_lutc_input = "datac";

dffeas \active_data[11] (
	.clk(clk_0),
	.d(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[11]~37_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\active_rnw~3_combout ),
	.q(\active_data[11]~q ),
	.prn(vcc));
defparam \active_data[11] .is_wysiwyg = "true";
defparam \active_data[11] .power_up = "low";

fiftyfivenm_lcell_comb \Selector105~0 (
	.dataa(\active_data[11]~q ),
	.datab(m_data_11),
	.datac(\m_state.000010000~q ),
	.datad(\m_state.000000010~q ),
	.cin(gnd),
	.combout(\Selector105~0_combout ),
	.cout());
defparam \Selector105~0 .lut_mask = 16'hAAAC;
defparam \Selector105~0 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector105~1 (
	.dataa(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[11]~37_combout ),
	.datab(\Selector105~0_combout ),
	.datac(gnd),
	.datad(\m_data[14]~0_combout ),
	.cin(gnd),
	.combout(\Selector105~1_combout ),
	.cout());
defparam \Selector105~1 .lut_mask = 16'hAACC;
defparam \Selector105~1 .sum_lutc_input = "datac";

dffeas \active_data[12] (
	.clk(clk_0),
	.d(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[12]~38_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\active_rnw~3_combout ),
	.q(\active_data[12]~q ),
	.prn(vcc));
defparam \active_data[12] .is_wysiwyg = "true";
defparam \active_data[12] .power_up = "low";

fiftyfivenm_lcell_comb \Selector104~0 (
	.dataa(\active_data[12]~q ),
	.datab(m_data_12),
	.datac(\m_state.000010000~q ),
	.datad(\m_state.000000010~q ),
	.cin(gnd),
	.combout(\Selector104~0_combout ),
	.cout());
defparam \Selector104~0 .lut_mask = 16'hAAAC;
defparam \Selector104~0 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector104~1 (
	.dataa(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[12]~38_combout ),
	.datab(\Selector104~0_combout ),
	.datac(gnd),
	.datad(\m_data[14]~0_combout ),
	.cin(gnd),
	.combout(\Selector104~1_combout ),
	.cout());
defparam \Selector104~1 .lut_mask = 16'hAACC;
defparam \Selector104~1 .sum_lutc_input = "datac";

dffeas \active_data[13] (
	.clk(clk_0),
	.d(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[13]~39_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\active_rnw~3_combout ),
	.q(\active_data[13]~q ),
	.prn(vcc));
defparam \active_data[13] .is_wysiwyg = "true";
defparam \active_data[13] .power_up = "low";

fiftyfivenm_lcell_comb \Selector103~0 (
	.dataa(\active_data[13]~q ),
	.datab(m_data_13),
	.datac(\m_state.000010000~q ),
	.datad(\m_state.000000010~q ),
	.cin(gnd),
	.combout(\Selector103~0_combout ),
	.cout());
defparam \Selector103~0 .lut_mask = 16'hAAAC;
defparam \Selector103~0 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector103~1 (
	.dataa(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[13]~39_combout ),
	.datab(\Selector103~0_combout ),
	.datac(gnd),
	.datad(\m_data[14]~0_combout ),
	.cin(gnd),
	.combout(\Selector103~1_combout ),
	.cout());
defparam \Selector103~1 .lut_mask = 16'hAACC;
defparam \Selector103~1 .sum_lutc_input = "datac";

dffeas \active_data[14] (
	.clk(clk_0),
	.d(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[14]~40_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\active_rnw~3_combout ),
	.q(\active_data[14]~q ),
	.prn(vcc));
defparam \active_data[14] .is_wysiwyg = "true";
defparam \active_data[14] .power_up = "low";

fiftyfivenm_lcell_comb \Selector102~0 (
	.dataa(\active_data[14]~q ),
	.datab(m_data_14),
	.datac(\m_state.000010000~q ),
	.datad(\m_state.000000010~q ),
	.cin(gnd),
	.combout(\Selector102~0_combout ),
	.cout());
defparam \Selector102~0 .lut_mask = 16'hAAAC;
defparam \Selector102~0 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector102~1 (
	.dataa(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[14]~40_combout ),
	.datab(\Selector102~0_combout ),
	.datac(gnd),
	.datad(\m_data[14]~0_combout ),
	.cin(gnd),
	.combout(\Selector102~1_combout ),
	.cout());
defparam \Selector102~1 .lut_mask = 16'hAACC;
defparam \Selector102~1 .sum_lutc_input = "datac";

dffeas \active_data[15] (
	.clk(clk_0),
	.d(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[15]~41_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\active_rnw~3_combout ),
	.q(\active_data[15]~q ),
	.prn(vcc));
defparam \active_data[15] .is_wysiwyg = "true";
defparam \active_data[15] .power_up = "low";

fiftyfivenm_lcell_comb \Selector101~0 (
	.dataa(\active_data[15]~q ),
	.datab(m_data_15),
	.datac(\m_state.000010000~q ),
	.datad(\m_state.000000010~q ),
	.cin(gnd),
	.combout(\Selector101~0_combout ),
	.cout());
defparam \Selector101~0 .lut_mask = 16'hAAAC;
defparam \Selector101~0 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Selector101~1 (
	.dataa(\the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[15]~41_combout ),
	.datab(\Selector101~0_combout ),
	.datac(gnd),
	.datad(\m_data[14]~0_combout ),
	.cin(gnd),
	.combout(\Selector101~1_combout ),
	.cout());
defparam \Selector101~1 .lut_mask = 16'hAACC;
defparam \Selector101~1 .sum_lutc_input = "datac";

endmodule

module SDRAMtest_SDRAMtest_new_sdram_controller_0_input_efifo_module (
	clk,
	reset_n,
	entries_1,
	entries_0,
	Equal1,
	rd_data_28,
	rd_data_43,
	rd_data_29,
	rd_data_42,
	rd_data_31,
	rd_data_30,
	rd_data_33,
	rd_data_32,
	rd_data_35,
	rd_data_34,
	rd_data_37,
	rd_data_36,
	rd_data_39,
	rd_data_38,
	rd_data_41,
	rd_data_40,
	pending,
	f_pop,
	f_select,
	Equal0,
	comb,
	rd_data_18,
	rd_data_19,
	rd_data_20,
	rd_data_21,
	rd_data_22,
	rd_data_23,
	rd_data_24,
	rd_data_25,
	rd_data_26,
	rd_data_27,
	rd_data_0,
	rd_data_1,
	rd_data_2,
	rd_data_3,
	rd_data_4,
	rd_data_5,
	rd_data_6,
	rd_data_7,
	rd_data_8,
	rd_data_9,
	rd_data_10,
	rd_data_11,
	rd_data_12,
	rd_data_13,
	rd_data_14,
	rd_data_15,
	master_controller_write,
	master_controller_address_11,
	master_controller_address_12,
	master_controller_address_25,
	master_controller_address_14,
	master_controller_address_13,
	master_controller_address_16,
	master_controller_address_15,
	master_controller_address_18,
	master_controller_address_17,
	master_controller_address_20,
	master_controller_address_19,
	master_controller_address_22,
	master_controller_address_21,
	master_controller_address_24,
	master_controller_address_23,
	master_controller_address_1,
	master_controller_address_2,
	master_controller_address_3,
	master_controller_address_4,
	master_controller_address_5,
	master_controller_address_6,
	master_controller_address_7,
	master_controller_address_8,
	master_controller_address_9,
	master_controller_address_10,
	master_controller_writedata_0,
	master_controller_writedata_1,
	master_controller_writedata_2,
	master_controller_writedata_3,
	master_controller_writedata_4,
	master_controller_writedata_5,
	master_controller_writedata_6,
	master_controller_writedata_7,
	master_controller_writedata_8,
	master_controller_writedata_9,
	master_controller_writedata_10,
	master_controller_writedata_11,
	master_controller_writedata_12,
	master_controller_writedata_13,
	master_controller_writedata_14,
	master_controller_writedata_15)/* synthesis synthesis_greybox=0 */;
input 	clk;
input 	reset_n;
output 	entries_1;
output 	entries_0;
output 	Equal1;
output 	rd_data_28;
output 	rd_data_43;
output 	rd_data_29;
output 	rd_data_42;
output 	rd_data_31;
output 	rd_data_30;
output 	rd_data_33;
output 	rd_data_32;
output 	rd_data_35;
output 	rd_data_34;
output 	rd_data_37;
output 	rd_data_36;
output 	rd_data_39;
output 	rd_data_38;
output 	rd_data_41;
output 	rd_data_40;
input 	pending;
input 	f_pop;
input 	f_select;
output 	Equal0;
input 	comb;
output 	rd_data_18;
output 	rd_data_19;
output 	rd_data_20;
output 	rd_data_21;
output 	rd_data_22;
output 	rd_data_23;
output 	rd_data_24;
output 	rd_data_25;
output 	rd_data_26;
output 	rd_data_27;
output 	rd_data_0;
output 	rd_data_1;
output 	rd_data_2;
output 	rd_data_3;
output 	rd_data_4;
output 	rd_data_5;
output 	rd_data_6;
output 	rd_data_7;
output 	rd_data_8;
output 	rd_data_9;
output 	rd_data_10;
output 	rd_data_11;
output 	rd_data_12;
output 	rd_data_13;
output 	rd_data_14;
output 	rd_data_15;
input 	master_controller_write;
input 	master_controller_address_11;
input 	master_controller_address_12;
input 	master_controller_address_25;
input 	master_controller_address_14;
input 	master_controller_address_13;
input 	master_controller_address_16;
input 	master_controller_address_15;
input 	master_controller_address_18;
input 	master_controller_address_17;
input 	master_controller_address_20;
input 	master_controller_address_19;
input 	master_controller_address_22;
input 	master_controller_address_21;
input 	master_controller_address_24;
input 	master_controller_address_23;
input 	master_controller_address_1;
input 	master_controller_address_2;
input 	master_controller_address_3;
input 	master_controller_address_4;
input 	master_controller_address_5;
input 	master_controller_address_6;
input 	master_controller_address_7;
input 	master_controller_address_8;
input 	master_controller_address_9;
input 	master_controller_address_10;
input 	master_controller_writedata_0;
input 	master_controller_writedata_1;
input 	master_controller_writedata_2;
input 	master_controller_writedata_3;
input 	master_controller_writedata_4;
input 	master_controller_writedata_5;
input 	master_controller_writedata_6;
input 	master_controller_writedata_7;
input 	master_controller_writedata_8;
input 	master_controller_writedata_9;
input 	master_controller_writedata_10;
input 	master_controller_writedata_11;
input 	master_controller_writedata_12;
input 	master_controller_writedata_13;
input 	master_controller_writedata_14;
input 	master_controller_writedata_15;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \entries[1]~0_combout ;
wire \entries[0]~1_combout ;
wire \wr_address~0_combout ;
wire \wr_address~q ;
wire \entry_1[43]~0_combout ;
wire \entry_1[28]~q ;
wire \entry_0[43]~0_combout ;
wire \entry_0[28]~q ;
wire \rd_address~0_combout ;
wire \rd_address~q ;
wire \entry_1[43]~1_combout ;
wire \entry_1[43]~q ;
wire \entry_0[43]~1_combout ;
wire \entry_0[43]~q ;
wire \entry_1[29]~q ;
wire \entry_0[29]~q ;
wire \entry_1[42]~q ;
wire \entry_0[42]~q ;
wire \entry_1[31]~q ;
wire \entry_0[31]~q ;
wire \entry_1[30]~q ;
wire \entry_0[30]~q ;
wire \entry_1[33]~q ;
wire \entry_0[33]~q ;
wire \entry_1[32]~q ;
wire \entry_0[32]~q ;
wire \entry_1[35]~q ;
wire \entry_0[35]~q ;
wire \entry_1[34]~q ;
wire \entry_0[34]~q ;
wire \entry_1[37]~q ;
wire \entry_0[37]~q ;
wire \entry_1[36]~q ;
wire \entry_0[36]~q ;
wire \entry_1[39]~q ;
wire \entry_0[39]~q ;
wire \entry_1[38]~q ;
wire \entry_0[38]~q ;
wire \entry_1[41]~q ;
wire \entry_0[41]~q ;
wire \entry_1[40]~q ;
wire \entry_0[40]~q ;
wire \entry_1[18]~q ;
wire \entry_0[18]~q ;
wire \entry_1[19]~q ;
wire \entry_0[19]~q ;
wire \entry_1[20]~q ;
wire \entry_0[20]~q ;
wire \entry_1[21]~q ;
wire \entry_0[21]~q ;
wire \entry_1[22]~q ;
wire \entry_0[22]~q ;
wire \entry_1[23]~q ;
wire \entry_0[23]~q ;
wire \entry_1[24]~q ;
wire \entry_0[24]~q ;
wire \entry_1[25]~q ;
wire \entry_0[25]~q ;
wire \entry_1[26]~q ;
wire \entry_0[26]~q ;
wire \entry_1[27]~q ;
wire \entry_0[27]~q ;
wire \entry_1[0]~q ;
wire \entry_0[0]~q ;
wire \entry_1[1]~q ;
wire \entry_0[1]~q ;
wire \entry_1[2]~q ;
wire \entry_0[2]~q ;
wire \entry_1[3]~q ;
wire \entry_0[3]~q ;
wire \entry_1[4]~q ;
wire \entry_0[4]~q ;
wire \entry_1[5]~q ;
wire \entry_0[5]~q ;
wire \entry_1[6]~q ;
wire \entry_0[6]~q ;
wire \entry_1[7]~q ;
wire \entry_0[7]~q ;
wire \entry_1[8]~q ;
wire \entry_0[8]~q ;
wire \entry_1[9]~q ;
wire \entry_0[9]~q ;
wire \entry_1[10]~q ;
wire \entry_0[10]~q ;
wire \entry_1[11]~q ;
wire \entry_0[11]~q ;
wire \entry_1[12]~q ;
wire \entry_0[12]~q ;
wire \entry_1[13]~q ;
wire \entry_0[13]~q ;
wire \entry_1[14]~q ;
wire \entry_0[14]~q ;
wire \entry_1[15]~q ;
wire \entry_0[15]~q ;


dffeas \entries[1] (
	.clk(clk),
	.d(\entries[1]~0_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(entries_1),
	.prn(vcc));
defparam \entries[1] .is_wysiwyg = "true";
defparam \entries[1] .power_up = "low";

dffeas \entries[0] (
	.clk(clk),
	.d(\entries[0]~1_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(entries_0),
	.prn(vcc));
defparam \entries[0] .is_wysiwyg = "true";
defparam \entries[0] .power_up = "low";

fiftyfivenm_lcell_comb \Equal1~0 (
	.dataa(entries_1),
	.datab(entries_0),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(Equal1),
	.cout());
defparam \Equal1~0 .lut_mask = 16'hEEEE;
defparam \Equal1~0 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \rd_data[28]~0 (
	.dataa(\entry_1[28]~q ),
	.datab(\entry_0[28]~q ),
	.datac(gnd),
	.datad(\rd_address~q ),
	.cin(gnd),
	.combout(rd_data_28),
	.cout());
defparam \rd_data[28]~0 .lut_mask = 16'hAACC;
defparam \rd_data[28]~0 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \rd_data[43]~1 (
	.dataa(\entry_1[43]~q ),
	.datab(\entry_0[43]~q ),
	.datac(gnd),
	.datad(\rd_address~q ),
	.cin(gnd),
	.combout(rd_data_43),
	.cout());
defparam \rd_data[43]~1 .lut_mask = 16'hAACC;
defparam \rd_data[43]~1 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \rd_data[29]~2 (
	.dataa(\entry_1[29]~q ),
	.datab(\entry_0[29]~q ),
	.datac(gnd),
	.datad(\rd_address~q ),
	.cin(gnd),
	.combout(rd_data_29),
	.cout());
defparam \rd_data[29]~2 .lut_mask = 16'hAACC;
defparam \rd_data[29]~2 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \rd_data[42]~3 (
	.dataa(\entry_1[42]~q ),
	.datab(\entry_0[42]~q ),
	.datac(gnd),
	.datad(\rd_address~q ),
	.cin(gnd),
	.combout(rd_data_42),
	.cout());
defparam \rd_data[42]~3 .lut_mask = 16'hAACC;
defparam \rd_data[42]~3 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \rd_data[31]~4 (
	.dataa(\entry_1[31]~q ),
	.datab(\entry_0[31]~q ),
	.datac(gnd),
	.datad(\rd_address~q ),
	.cin(gnd),
	.combout(rd_data_31),
	.cout());
defparam \rd_data[31]~4 .lut_mask = 16'hAACC;
defparam \rd_data[31]~4 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \rd_data[30]~5 (
	.dataa(\entry_1[30]~q ),
	.datab(\entry_0[30]~q ),
	.datac(gnd),
	.datad(\rd_address~q ),
	.cin(gnd),
	.combout(rd_data_30),
	.cout());
defparam \rd_data[30]~5 .lut_mask = 16'hAACC;
defparam \rd_data[30]~5 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \rd_data[33]~6 (
	.dataa(\entry_1[33]~q ),
	.datab(\entry_0[33]~q ),
	.datac(gnd),
	.datad(\rd_address~q ),
	.cin(gnd),
	.combout(rd_data_33),
	.cout());
defparam \rd_data[33]~6 .lut_mask = 16'hAACC;
defparam \rd_data[33]~6 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \rd_data[32]~7 (
	.dataa(\entry_1[32]~q ),
	.datab(\entry_0[32]~q ),
	.datac(gnd),
	.datad(\rd_address~q ),
	.cin(gnd),
	.combout(rd_data_32),
	.cout());
defparam \rd_data[32]~7 .lut_mask = 16'hAACC;
defparam \rd_data[32]~7 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \rd_data[35]~8 (
	.dataa(\entry_1[35]~q ),
	.datab(\entry_0[35]~q ),
	.datac(gnd),
	.datad(\rd_address~q ),
	.cin(gnd),
	.combout(rd_data_35),
	.cout());
defparam \rd_data[35]~8 .lut_mask = 16'hAACC;
defparam \rd_data[35]~8 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \rd_data[34]~9 (
	.dataa(\entry_1[34]~q ),
	.datab(\entry_0[34]~q ),
	.datac(gnd),
	.datad(\rd_address~q ),
	.cin(gnd),
	.combout(rd_data_34),
	.cout());
defparam \rd_data[34]~9 .lut_mask = 16'hAACC;
defparam \rd_data[34]~9 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \rd_data[37]~10 (
	.dataa(\entry_1[37]~q ),
	.datab(\entry_0[37]~q ),
	.datac(gnd),
	.datad(\rd_address~q ),
	.cin(gnd),
	.combout(rd_data_37),
	.cout());
defparam \rd_data[37]~10 .lut_mask = 16'hAACC;
defparam \rd_data[37]~10 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \rd_data[36]~11 (
	.dataa(\entry_1[36]~q ),
	.datab(\entry_0[36]~q ),
	.datac(gnd),
	.datad(\rd_address~q ),
	.cin(gnd),
	.combout(rd_data_36),
	.cout());
defparam \rd_data[36]~11 .lut_mask = 16'hAACC;
defparam \rd_data[36]~11 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \rd_data[39]~12 (
	.dataa(\entry_1[39]~q ),
	.datab(\entry_0[39]~q ),
	.datac(gnd),
	.datad(\rd_address~q ),
	.cin(gnd),
	.combout(rd_data_39),
	.cout());
defparam \rd_data[39]~12 .lut_mask = 16'hAACC;
defparam \rd_data[39]~12 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \rd_data[38]~13 (
	.dataa(\entry_1[38]~q ),
	.datab(\entry_0[38]~q ),
	.datac(gnd),
	.datad(\rd_address~q ),
	.cin(gnd),
	.combout(rd_data_38),
	.cout());
defparam \rd_data[38]~13 .lut_mask = 16'hAACC;
defparam \rd_data[38]~13 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \rd_data[41]~14 (
	.dataa(\entry_1[41]~q ),
	.datab(\entry_0[41]~q ),
	.datac(gnd),
	.datad(\rd_address~q ),
	.cin(gnd),
	.combout(rd_data_41),
	.cout());
defparam \rd_data[41]~14 .lut_mask = 16'hAACC;
defparam \rd_data[41]~14 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \rd_data[40]~15 (
	.dataa(\entry_1[40]~q ),
	.datab(\entry_0[40]~q ),
	.datac(gnd),
	.datad(\rd_address~q ),
	.cin(gnd),
	.combout(rd_data_40),
	.cout());
defparam \rd_data[40]~15 .lut_mask = 16'hAACC;
defparam \rd_data[40]~15 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \Equal0~0 (
	.dataa(entries_1),
	.datab(gnd),
	.datac(gnd),
	.datad(entries_0),
	.cin(gnd),
	.combout(Equal0),
	.cout());
defparam \Equal0~0 .lut_mask = 16'h00AA;
defparam \Equal0~0 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \rd_data[18]~16 (
	.dataa(\entry_1[18]~q ),
	.datab(\entry_0[18]~q ),
	.datac(gnd),
	.datad(\rd_address~q ),
	.cin(gnd),
	.combout(rd_data_18),
	.cout());
defparam \rd_data[18]~16 .lut_mask = 16'hAACC;
defparam \rd_data[18]~16 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \rd_data[19]~17 (
	.dataa(\entry_1[19]~q ),
	.datab(\entry_0[19]~q ),
	.datac(gnd),
	.datad(\rd_address~q ),
	.cin(gnd),
	.combout(rd_data_19),
	.cout());
defparam \rd_data[19]~17 .lut_mask = 16'hAACC;
defparam \rd_data[19]~17 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \rd_data[20]~18 (
	.dataa(\entry_1[20]~q ),
	.datab(\entry_0[20]~q ),
	.datac(gnd),
	.datad(\rd_address~q ),
	.cin(gnd),
	.combout(rd_data_20),
	.cout());
defparam \rd_data[20]~18 .lut_mask = 16'hAACC;
defparam \rd_data[20]~18 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \rd_data[21]~19 (
	.dataa(\entry_1[21]~q ),
	.datab(\entry_0[21]~q ),
	.datac(gnd),
	.datad(\rd_address~q ),
	.cin(gnd),
	.combout(rd_data_21),
	.cout());
defparam \rd_data[21]~19 .lut_mask = 16'hAACC;
defparam \rd_data[21]~19 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \rd_data[22]~20 (
	.dataa(\entry_1[22]~q ),
	.datab(\entry_0[22]~q ),
	.datac(gnd),
	.datad(\rd_address~q ),
	.cin(gnd),
	.combout(rd_data_22),
	.cout());
defparam \rd_data[22]~20 .lut_mask = 16'hAACC;
defparam \rd_data[22]~20 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \rd_data[23]~21 (
	.dataa(\entry_1[23]~q ),
	.datab(\entry_0[23]~q ),
	.datac(gnd),
	.datad(\rd_address~q ),
	.cin(gnd),
	.combout(rd_data_23),
	.cout());
defparam \rd_data[23]~21 .lut_mask = 16'hAACC;
defparam \rd_data[23]~21 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \rd_data[24]~22 (
	.dataa(\entry_1[24]~q ),
	.datab(\entry_0[24]~q ),
	.datac(gnd),
	.datad(\rd_address~q ),
	.cin(gnd),
	.combout(rd_data_24),
	.cout());
defparam \rd_data[24]~22 .lut_mask = 16'hAACC;
defparam \rd_data[24]~22 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \rd_data[25]~23 (
	.dataa(\entry_1[25]~q ),
	.datab(\entry_0[25]~q ),
	.datac(gnd),
	.datad(\rd_address~q ),
	.cin(gnd),
	.combout(rd_data_25),
	.cout());
defparam \rd_data[25]~23 .lut_mask = 16'hAACC;
defparam \rd_data[25]~23 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \rd_data[26]~24 (
	.dataa(\entry_1[26]~q ),
	.datab(\entry_0[26]~q ),
	.datac(gnd),
	.datad(\rd_address~q ),
	.cin(gnd),
	.combout(rd_data_26),
	.cout());
defparam \rd_data[26]~24 .lut_mask = 16'hAACC;
defparam \rd_data[26]~24 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \rd_data[27]~25 (
	.dataa(\entry_1[27]~q ),
	.datab(\entry_0[27]~q ),
	.datac(gnd),
	.datad(\rd_address~q ),
	.cin(gnd),
	.combout(rd_data_27),
	.cout());
defparam \rd_data[27]~25 .lut_mask = 16'hAACC;
defparam \rd_data[27]~25 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \rd_data[0]~26 (
	.dataa(\entry_1[0]~q ),
	.datab(\entry_0[0]~q ),
	.datac(gnd),
	.datad(\rd_address~q ),
	.cin(gnd),
	.combout(rd_data_0),
	.cout());
defparam \rd_data[0]~26 .lut_mask = 16'hAACC;
defparam \rd_data[0]~26 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \rd_data[1]~27 (
	.dataa(\entry_1[1]~q ),
	.datab(\entry_0[1]~q ),
	.datac(gnd),
	.datad(\rd_address~q ),
	.cin(gnd),
	.combout(rd_data_1),
	.cout());
defparam \rd_data[1]~27 .lut_mask = 16'hAACC;
defparam \rd_data[1]~27 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \rd_data[2]~28 (
	.dataa(\entry_1[2]~q ),
	.datab(\entry_0[2]~q ),
	.datac(gnd),
	.datad(\rd_address~q ),
	.cin(gnd),
	.combout(rd_data_2),
	.cout());
defparam \rd_data[2]~28 .lut_mask = 16'hAACC;
defparam \rd_data[2]~28 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \rd_data[3]~29 (
	.dataa(\entry_1[3]~q ),
	.datab(\entry_0[3]~q ),
	.datac(gnd),
	.datad(\rd_address~q ),
	.cin(gnd),
	.combout(rd_data_3),
	.cout());
defparam \rd_data[3]~29 .lut_mask = 16'hAACC;
defparam \rd_data[3]~29 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \rd_data[4]~30 (
	.dataa(\entry_1[4]~q ),
	.datab(\entry_0[4]~q ),
	.datac(gnd),
	.datad(\rd_address~q ),
	.cin(gnd),
	.combout(rd_data_4),
	.cout());
defparam \rd_data[4]~30 .lut_mask = 16'hAACC;
defparam \rd_data[4]~30 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \rd_data[5]~31 (
	.dataa(\entry_1[5]~q ),
	.datab(\entry_0[5]~q ),
	.datac(gnd),
	.datad(\rd_address~q ),
	.cin(gnd),
	.combout(rd_data_5),
	.cout());
defparam \rd_data[5]~31 .lut_mask = 16'hAACC;
defparam \rd_data[5]~31 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \rd_data[6]~32 (
	.dataa(\entry_1[6]~q ),
	.datab(\entry_0[6]~q ),
	.datac(gnd),
	.datad(\rd_address~q ),
	.cin(gnd),
	.combout(rd_data_6),
	.cout());
defparam \rd_data[6]~32 .lut_mask = 16'hAACC;
defparam \rd_data[6]~32 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \rd_data[7]~33 (
	.dataa(\entry_1[7]~q ),
	.datab(\entry_0[7]~q ),
	.datac(gnd),
	.datad(\rd_address~q ),
	.cin(gnd),
	.combout(rd_data_7),
	.cout());
defparam \rd_data[7]~33 .lut_mask = 16'hAACC;
defparam \rd_data[7]~33 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \rd_data[8]~34 (
	.dataa(\entry_1[8]~q ),
	.datab(\entry_0[8]~q ),
	.datac(gnd),
	.datad(\rd_address~q ),
	.cin(gnd),
	.combout(rd_data_8),
	.cout());
defparam \rd_data[8]~34 .lut_mask = 16'hAACC;
defparam \rd_data[8]~34 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \rd_data[9]~35 (
	.dataa(\entry_1[9]~q ),
	.datab(\entry_0[9]~q ),
	.datac(gnd),
	.datad(\rd_address~q ),
	.cin(gnd),
	.combout(rd_data_9),
	.cout());
defparam \rd_data[9]~35 .lut_mask = 16'hAACC;
defparam \rd_data[9]~35 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \rd_data[10]~36 (
	.dataa(\entry_1[10]~q ),
	.datab(\entry_0[10]~q ),
	.datac(gnd),
	.datad(\rd_address~q ),
	.cin(gnd),
	.combout(rd_data_10),
	.cout());
defparam \rd_data[10]~36 .lut_mask = 16'hAACC;
defparam \rd_data[10]~36 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \rd_data[11]~37 (
	.dataa(\entry_1[11]~q ),
	.datab(\entry_0[11]~q ),
	.datac(gnd),
	.datad(\rd_address~q ),
	.cin(gnd),
	.combout(rd_data_11),
	.cout());
defparam \rd_data[11]~37 .lut_mask = 16'hAACC;
defparam \rd_data[11]~37 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \rd_data[12]~38 (
	.dataa(\entry_1[12]~q ),
	.datab(\entry_0[12]~q ),
	.datac(gnd),
	.datad(\rd_address~q ),
	.cin(gnd),
	.combout(rd_data_12),
	.cout());
defparam \rd_data[12]~38 .lut_mask = 16'hAACC;
defparam \rd_data[12]~38 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \rd_data[13]~39 (
	.dataa(\entry_1[13]~q ),
	.datab(\entry_0[13]~q ),
	.datac(gnd),
	.datad(\rd_address~q ),
	.cin(gnd),
	.combout(rd_data_13),
	.cout());
defparam \rd_data[13]~39 .lut_mask = 16'hAACC;
defparam \rd_data[13]~39 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \rd_data[14]~40 (
	.dataa(\entry_1[14]~q ),
	.datab(\entry_0[14]~q ),
	.datac(gnd),
	.datad(\rd_address~q ),
	.cin(gnd),
	.combout(rd_data_14),
	.cout());
defparam \rd_data[14]~40 .lut_mask = 16'hAACC;
defparam \rd_data[14]~40 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \rd_data[15]~41 (
	.dataa(\entry_1[15]~q ),
	.datab(\entry_0[15]~q ),
	.datac(gnd),
	.datad(\rd_address~q ),
	.cin(gnd),
	.combout(rd_data_15),
	.cout());
defparam \rd_data[15]~41 .lut_mask = 16'hAACC;
defparam \rd_data[15]~41 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \entries[1]~0 (
	.dataa(entries_1),
	.datab(f_select),
	.datac(entries_0),
	.datad(comb),
	.cin(gnd),
	.combout(\entries[1]~0_combout ),
	.cout());
defparam \entries[1]~0 .lut_mask = 16'h9AA6;
defparam \entries[1]~0 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \entries[0]~1 (
	.dataa(pending),
	.datab(f_pop),
	.datac(entries_0),
	.datad(comb),
	.cin(gnd),
	.combout(\entries[0]~1_combout ),
	.cout());
defparam \entries[0]~1 .lut_mask = 16'h8778;
defparam \entries[0]~1 .sum_lutc_input = "datac";

fiftyfivenm_lcell_comb \wr_address~0 (
	.dataa(gnd),
	.datab(gnd),
	.datac(comb),
	.datad(\wr_address~q ),
	.cin(gnd),
	.combout(\wr_address~0_combout ),
	.cout());
defparam \wr_address~0 .lut_mask = 16'h0FF0;
defparam \wr_address~0 .sum_lutc_input = "datac";

dffeas wr_address(
	.clk(clk),
	.d(\wr_address~0_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\wr_address~q ),
	.prn(vcc));
defparam wr_address.is_wysiwyg = "true";
defparam wr_address.power_up = "low";

fiftyfivenm_lcell_comb \entry_1[43]~0 (
	.dataa(comb),
	.datab(\wr_address~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\entry_1[43]~0_combout ),
	.cout());
defparam \entry_1[43]~0 .lut_mask = 16'h8888;
defparam \entry_1[43]~0 .sum_lutc_input = "datac";

dffeas \entry_1[28] (
	.clk(clk),
	.d(master_controller_address_11),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\entry_1[43]~0_combout ),
	.q(\entry_1[28]~q ),
	.prn(vcc));
defparam \entry_1[28] .is_wysiwyg = "true";
defparam \entry_1[28] .power_up = "low";

fiftyfivenm_lcell_comb \entry_0[43]~0 (
	.dataa(comb),
	.datab(gnd),
	.datac(gnd),
	.datad(\wr_address~q ),
	.cin(gnd),
	.combout(\entry_0[43]~0_combout ),
	.cout());
defparam \entry_0[43]~0 .lut_mask = 16'h00AA;
defparam \entry_0[43]~0 .sum_lutc_input = "datac";

dffeas \entry_0[28] (
	.clk(clk),
	.d(master_controller_address_11),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\entry_0[43]~0_combout ),
	.q(\entry_0[28]~q ),
	.prn(vcc));
defparam \entry_0[28] .is_wysiwyg = "true";
defparam \entry_0[28] .power_up = "low";

fiftyfivenm_lcell_comb \rd_address~0 (
	.dataa(gnd),
	.datab(\rd_address~q ),
	.datac(pending),
	.datad(f_pop),
	.cin(gnd),
	.combout(\rd_address~0_combout ),
	.cout());
defparam \rd_address~0 .lut_mask = 16'h3CCC;
defparam \rd_address~0 .sum_lutc_input = "datac";

dffeas rd_address(
	.clk(clk),
	.d(\rd_address~0_combout ),
	.asdata(vcc),
	.clrn(reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\rd_address~q ),
	.prn(vcc));
defparam rd_address.is_wysiwyg = "true";
defparam rd_address.power_up = "low";

fiftyfivenm_lcell_comb \entry_1[43]~1 (
	.dataa(master_controller_write),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\entry_1[43]~1_combout ),
	.cout());
defparam \entry_1[43]~1 .lut_mask = 16'h5555;
defparam \entry_1[43]~1 .sum_lutc_input = "datac";

dffeas \entry_1[43] (
	.clk(clk),
	.d(\entry_1[43]~1_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\entry_1[43]~0_combout ),
	.q(\entry_1[43]~q ),
	.prn(vcc));
defparam \entry_1[43] .is_wysiwyg = "true";
defparam \entry_1[43] .power_up = "low";

fiftyfivenm_lcell_comb \entry_0[43]~1 (
	.dataa(master_controller_write),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\entry_0[43]~1_combout ),
	.cout());
defparam \entry_0[43]~1 .lut_mask = 16'h5555;
defparam \entry_0[43]~1 .sum_lutc_input = "datac";

dffeas \entry_0[43] (
	.clk(clk),
	.d(\entry_0[43]~1_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\entry_0[43]~0_combout ),
	.q(\entry_0[43]~q ),
	.prn(vcc));
defparam \entry_0[43] .is_wysiwyg = "true";
defparam \entry_0[43] .power_up = "low";

dffeas \entry_1[29] (
	.clk(clk),
	.d(master_controller_address_12),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\entry_1[43]~0_combout ),
	.q(\entry_1[29]~q ),
	.prn(vcc));
defparam \entry_1[29] .is_wysiwyg = "true";
defparam \entry_1[29] .power_up = "low";

dffeas \entry_0[29] (
	.clk(clk),
	.d(master_controller_address_12),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\entry_0[43]~0_combout ),
	.q(\entry_0[29]~q ),
	.prn(vcc));
defparam \entry_0[29] .is_wysiwyg = "true";
defparam \entry_0[29] .power_up = "low";

dffeas \entry_1[42] (
	.clk(clk),
	.d(master_controller_address_25),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\entry_1[43]~0_combout ),
	.q(\entry_1[42]~q ),
	.prn(vcc));
defparam \entry_1[42] .is_wysiwyg = "true";
defparam \entry_1[42] .power_up = "low";

dffeas \entry_0[42] (
	.clk(clk),
	.d(master_controller_address_25),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\entry_0[43]~0_combout ),
	.q(\entry_0[42]~q ),
	.prn(vcc));
defparam \entry_0[42] .is_wysiwyg = "true";
defparam \entry_0[42] .power_up = "low";

dffeas \entry_1[31] (
	.clk(clk),
	.d(master_controller_address_14),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\entry_1[43]~0_combout ),
	.q(\entry_1[31]~q ),
	.prn(vcc));
defparam \entry_1[31] .is_wysiwyg = "true";
defparam \entry_1[31] .power_up = "low";

dffeas \entry_0[31] (
	.clk(clk),
	.d(master_controller_address_14),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\entry_0[43]~0_combout ),
	.q(\entry_0[31]~q ),
	.prn(vcc));
defparam \entry_0[31] .is_wysiwyg = "true";
defparam \entry_0[31] .power_up = "low";

dffeas \entry_1[30] (
	.clk(clk),
	.d(master_controller_address_13),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\entry_1[43]~0_combout ),
	.q(\entry_1[30]~q ),
	.prn(vcc));
defparam \entry_1[30] .is_wysiwyg = "true";
defparam \entry_1[30] .power_up = "low";

dffeas \entry_0[30] (
	.clk(clk),
	.d(master_controller_address_13),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\entry_0[43]~0_combout ),
	.q(\entry_0[30]~q ),
	.prn(vcc));
defparam \entry_0[30] .is_wysiwyg = "true";
defparam \entry_0[30] .power_up = "low";

dffeas \entry_1[33] (
	.clk(clk),
	.d(master_controller_address_16),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\entry_1[43]~0_combout ),
	.q(\entry_1[33]~q ),
	.prn(vcc));
defparam \entry_1[33] .is_wysiwyg = "true";
defparam \entry_1[33] .power_up = "low";

dffeas \entry_0[33] (
	.clk(clk),
	.d(master_controller_address_16),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\entry_0[43]~0_combout ),
	.q(\entry_0[33]~q ),
	.prn(vcc));
defparam \entry_0[33] .is_wysiwyg = "true";
defparam \entry_0[33] .power_up = "low";

dffeas \entry_1[32] (
	.clk(clk),
	.d(master_controller_address_15),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\entry_1[43]~0_combout ),
	.q(\entry_1[32]~q ),
	.prn(vcc));
defparam \entry_1[32] .is_wysiwyg = "true";
defparam \entry_1[32] .power_up = "low";

dffeas \entry_0[32] (
	.clk(clk),
	.d(master_controller_address_15),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\entry_0[43]~0_combout ),
	.q(\entry_0[32]~q ),
	.prn(vcc));
defparam \entry_0[32] .is_wysiwyg = "true";
defparam \entry_0[32] .power_up = "low";

dffeas \entry_1[35] (
	.clk(clk),
	.d(master_controller_address_18),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\entry_1[43]~0_combout ),
	.q(\entry_1[35]~q ),
	.prn(vcc));
defparam \entry_1[35] .is_wysiwyg = "true";
defparam \entry_1[35] .power_up = "low";

dffeas \entry_0[35] (
	.clk(clk),
	.d(master_controller_address_18),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\entry_0[43]~0_combout ),
	.q(\entry_0[35]~q ),
	.prn(vcc));
defparam \entry_0[35] .is_wysiwyg = "true";
defparam \entry_0[35] .power_up = "low";

dffeas \entry_1[34] (
	.clk(clk),
	.d(master_controller_address_17),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\entry_1[43]~0_combout ),
	.q(\entry_1[34]~q ),
	.prn(vcc));
defparam \entry_1[34] .is_wysiwyg = "true";
defparam \entry_1[34] .power_up = "low";

dffeas \entry_0[34] (
	.clk(clk),
	.d(master_controller_address_17),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\entry_0[43]~0_combout ),
	.q(\entry_0[34]~q ),
	.prn(vcc));
defparam \entry_0[34] .is_wysiwyg = "true";
defparam \entry_0[34] .power_up = "low";

dffeas \entry_1[37] (
	.clk(clk),
	.d(master_controller_address_20),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\entry_1[43]~0_combout ),
	.q(\entry_1[37]~q ),
	.prn(vcc));
defparam \entry_1[37] .is_wysiwyg = "true";
defparam \entry_1[37] .power_up = "low";

dffeas \entry_0[37] (
	.clk(clk),
	.d(master_controller_address_20),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\entry_0[43]~0_combout ),
	.q(\entry_0[37]~q ),
	.prn(vcc));
defparam \entry_0[37] .is_wysiwyg = "true";
defparam \entry_0[37] .power_up = "low";

dffeas \entry_1[36] (
	.clk(clk),
	.d(master_controller_address_19),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\entry_1[43]~0_combout ),
	.q(\entry_1[36]~q ),
	.prn(vcc));
defparam \entry_1[36] .is_wysiwyg = "true";
defparam \entry_1[36] .power_up = "low";

dffeas \entry_0[36] (
	.clk(clk),
	.d(master_controller_address_19),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\entry_0[43]~0_combout ),
	.q(\entry_0[36]~q ),
	.prn(vcc));
defparam \entry_0[36] .is_wysiwyg = "true";
defparam \entry_0[36] .power_up = "low";

dffeas \entry_1[39] (
	.clk(clk),
	.d(master_controller_address_22),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\entry_1[43]~0_combout ),
	.q(\entry_1[39]~q ),
	.prn(vcc));
defparam \entry_1[39] .is_wysiwyg = "true";
defparam \entry_1[39] .power_up = "low";

dffeas \entry_0[39] (
	.clk(clk),
	.d(master_controller_address_22),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\entry_0[43]~0_combout ),
	.q(\entry_0[39]~q ),
	.prn(vcc));
defparam \entry_0[39] .is_wysiwyg = "true";
defparam \entry_0[39] .power_up = "low";

dffeas \entry_1[38] (
	.clk(clk),
	.d(master_controller_address_21),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\entry_1[43]~0_combout ),
	.q(\entry_1[38]~q ),
	.prn(vcc));
defparam \entry_1[38] .is_wysiwyg = "true";
defparam \entry_1[38] .power_up = "low";

dffeas \entry_0[38] (
	.clk(clk),
	.d(master_controller_address_21),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\entry_0[43]~0_combout ),
	.q(\entry_0[38]~q ),
	.prn(vcc));
defparam \entry_0[38] .is_wysiwyg = "true";
defparam \entry_0[38] .power_up = "low";

dffeas \entry_1[41] (
	.clk(clk),
	.d(master_controller_address_24),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\entry_1[43]~0_combout ),
	.q(\entry_1[41]~q ),
	.prn(vcc));
defparam \entry_1[41] .is_wysiwyg = "true";
defparam \entry_1[41] .power_up = "low";

dffeas \entry_0[41] (
	.clk(clk),
	.d(master_controller_address_24),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\entry_0[43]~0_combout ),
	.q(\entry_0[41]~q ),
	.prn(vcc));
defparam \entry_0[41] .is_wysiwyg = "true";
defparam \entry_0[41] .power_up = "low";

dffeas \entry_1[40] (
	.clk(clk),
	.d(master_controller_address_23),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\entry_1[43]~0_combout ),
	.q(\entry_1[40]~q ),
	.prn(vcc));
defparam \entry_1[40] .is_wysiwyg = "true";
defparam \entry_1[40] .power_up = "low";

dffeas \entry_0[40] (
	.clk(clk),
	.d(master_controller_address_23),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\entry_0[43]~0_combout ),
	.q(\entry_0[40]~q ),
	.prn(vcc));
defparam \entry_0[40] .is_wysiwyg = "true";
defparam \entry_0[40] .power_up = "low";

dffeas \entry_1[18] (
	.clk(clk),
	.d(master_controller_address_1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\entry_1[43]~0_combout ),
	.q(\entry_1[18]~q ),
	.prn(vcc));
defparam \entry_1[18] .is_wysiwyg = "true";
defparam \entry_1[18] .power_up = "low";

dffeas \entry_0[18] (
	.clk(clk),
	.d(master_controller_address_1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\entry_0[43]~0_combout ),
	.q(\entry_0[18]~q ),
	.prn(vcc));
defparam \entry_0[18] .is_wysiwyg = "true";
defparam \entry_0[18] .power_up = "low";

dffeas \entry_1[19] (
	.clk(clk),
	.d(master_controller_address_2),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\entry_1[43]~0_combout ),
	.q(\entry_1[19]~q ),
	.prn(vcc));
defparam \entry_1[19] .is_wysiwyg = "true";
defparam \entry_1[19] .power_up = "low";

dffeas \entry_0[19] (
	.clk(clk),
	.d(master_controller_address_2),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\entry_0[43]~0_combout ),
	.q(\entry_0[19]~q ),
	.prn(vcc));
defparam \entry_0[19] .is_wysiwyg = "true";
defparam \entry_0[19] .power_up = "low";

dffeas \entry_1[20] (
	.clk(clk),
	.d(master_controller_address_3),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\entry_1[43]~0_combout ),
	.q(\entry_1[20]~q ),
	.prn(vcc));
defparam \entry_1[20] .is_wysiwyg = "true";
defparam \entry_1[20] .power_up = "low";

dffeas \entry_0[20] (
	.clk(clk),
	.d(master_controller_address_3),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\entry_0[43]~0_combout ),
	.q(\entry_0[20]~q ),
	.prn(vcc));
defparam \entry_0[20] .is_wysiwyg = "true";
defparam \entry_0[20] .power_up = "low";

dffeas \entry_1[21] (
	.clk(clk),
	.d(master_controller_address_4),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\entry_1[43]~0_combout ),
	.q(\entry_1[21]~q ),
	.prn(vcc));
defparam \entry_1[21] .is_wysiwyg = "true";
defparam \entry_1[21] .power_up = "low";

dffeas \entry_0[21] (
	.clk(clk),
	.d(master_controller_address_4),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\entry_0[43]~0_combout ),
	.q(\entry_0[21]~q ),
	.prn(vcc));
defparam \entry_0[21] .is_wysiwyg = "true";
defparam \entry_0[21] .power_up = "low";

dffeas \entry_1[22] (
	.clk(clk),
	.d(master_controller_address_5),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\entry_1[43]~0_combout ),
	.q(\entry_1[22]~q ),
	.prn(vcc));
defparam \entry_1[22] .is_wysiwyg = "true";
defparam \entry_1[22] .power_up = "low";

dffeas \entry_0[22] (
	.clk(clk),
	.d(master_controller_address_5),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\entry_0[43]~0_combout ),
	.q(\entry_0[22]~q ),
	.prn(vcc));
defparam \entry_0[22] .is_wysiwyg = "true";
defparam \entry_0[22] .power_up = "low";

dffeas \entry_1[23] (
	.clk(clk),
	.d(master_controller_address_6),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\entry_1[43]~0_combout ),
	.q(\entry_1[23]~q ),
	.prn(vcc));
defparam \entry_1[23] .is_wysiwyg = "true";
defparam \entry_1[23] .power_up = "low";

dffeas \entry_0[23] (
	.clk(clk),
	.d(master_controller_address_6),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\entry_0[43]~0_combout ),
	.q(\entry_0[23]~q ),
	.prn(vcc));
defparam \entry_0[23] .is_wysiwyg = "true";
defparam \entry_0[23] .power_up = "low";

dffeas \entry_1[24] (
	.clk(clk),
	.d(master_controller_address_7),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\entry_1[43]~0_combout ),
	.q(\entry_1[24]~q ),
	.prn(vcc));
defparam \entry_1[24] .is_wysiwyg = "true";
defparam \entry_1[24] .power_up = "low";

dffeas \entry_0[24] (
	.clk(clk),
	.d(master_controller_address_7),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\entry_0[43]~0_combout ),
	.q(\entry_0[24]~q ),
	.prn(vcc));
defparam \entry_0[24] .is_wysiwyg = "true";
defparam \entry_0[24] .power_up = "low";

dffeas \entry_1[25] (
	.clk(clk),
	.d(master_controller_address_8),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\entry_1[43]~0_combout ),
	.q(\entry_1[25]~q ),
	.prn(vcc));
defparam \entry_1[25] .is_wysiwyg = "true";
defparam \entry_1[25] .power_up = "low";

dffeas \entry_0[25] (
	.clk(clk),
	.d(master_controller_address_8),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\entry_0[43]~0_combout ),
	.q(\entry_0[25]~q ),
	.prn(vcc));
defparam \entry_0[25] .is_wysiwyg = "true";
defparam \entry_0[25] .power_up = "low";

dffeas \entry_1[26] (
	.clk(clk),
	.d(master_controller_address_9),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\entry_1[43]~0_combout ),
	.q(\entry_1[26]~q ),
	.prn(vcc));
defparam \entry_1[26] .is_wysiwyg = "true";
defparam \entry_1[26] .power_up = "low";

dffeas \entry_0[26] (
	.clk(clk),
	.d(master_controller_address_9),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\entry_0[43]~0_combout ),
	.q(\entry_0[26]~q ),
	.prn(vcc));
defparam \entry_0[26] .is_wysiwyg = "true";
defparam \entry_0[26] .power_up = "low";

dffeas \entry_1[27] (
	.clk(clk),
	.d(master_controller_address_10),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\entry_1[43]~0_combout ),
	.q(\entry_1[27]~q ),
	.prn(vcc));
defparam \entry_1[27] .is_wysiwyg = "true";
defparam \entry_1[27] .power_up = "low";

dffeas \entry_0[27] (
	.clk(clk),
	.d(master_controller_address_10),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\entry_0[43]~0_combout ),
	.q(\entry_0[27]~q ),
	.prn(vcc));
defparam \entry_0[27] .is_wysiwyg = "true";
defparam \entry_0[27] .power_up = "low";

dffeas \entry_1[0] (
	.clk(clk),
	.d(master_controller_writedata_0),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\entry_1[43]~0_combout ),
	.q(\entry_1[0]~q ),
	.prn(vcc));
defparam \entry_1[0] .is_wysiwyg = "true";
defparam \entry_1[0] .power_up = "low";

dffeas \entry_0[0] (
	.clk(clk),
	.d(master_controller_writedata_0),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\entry_0[43]~0_combout ),
	.q(\entry_0[0]~q ),
	.prn(vcc));
defparam \entry_0[0] .is_wysiwyg = "true";
defparam \entry_0[0] .power_up = "low";

dffeas \entry_1[1] (
	.clk(clk),
	.d(master_controller_writedata_1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\entry_1[43]~0_combout ),
	.q(\entry_1[1]~q ),
	.prn(vcc));
defparam \entry_1[1] .is_wysiwyg = "true";
defparam \entry_1[1] .power_up = "low";

dffeas \entry_0[1] (
	.clk(clk),
	.d(master_controller_writedata_1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\entry_0[43]~0_combout ),
	.q(\entry_0[1]~q ),
	.prn(vcc));
defparam \entry_0[1] .is_wysiwyg = "true";
defparam \entry_0[1] .power_up = "low";

dffeas \entry_1[2] (
	.clk(clk),
	.d(master_controller_writedata_2),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\entry_1[43]~0_combout ),
	.q(\entry_1[2]~q ),
	.prn(vcc));
defparam \entry_1[2] .is_wysiwyg = "true";
defparam \entry_1[2] .power_up = "low";

dffeas \entry_0[2] (
	.clk(clk),
	.d(master_controller_writedata_2),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\entry_0[43]~0_combout ),
	.q(\entry_0[2]~q ),
	.prn(vcc));
defparam \entry_0[2] .is_wysiwyg = "true";
defparam \entry_0[2] .power_up = "low";

dffeas \entry_1[3] (
	.clk(clk),
	.d(master_controller_writedata_3),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\entry_1[43]~0_combout ),
	.q(\entry_1[3]~q ),
	.prn(vcc));
defparam \entry_1[3] .is_wysiwyg = "true";
defparam \entry_1[3] .power_up = "low";

dffeas \entry_0[3] (
	.clk(clk),
	.d(master_controller_writedata_3),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\entry_0[43]~0_combout ),
	.q(\entry_0[3]~q ),
	.prn(vcc));
defparam \entry_0[3] .is_wysiwyg = "true";
defparam \entry_0[3] .power_up = "low";

dffeas \entry_1[4] (
	.clk(clk),
	.d(master_controller_writedata_4),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\entry_1[43]~0_combout ),
	.q(\entry_1[4]~q ),
	.prn(vcc));
defparam \entry_1[4] .is_wysiwyg = "true";
defparam \entry_1[4] .power_up = "low";

dffeas \entry_0[4] (
	.clk(clk),
	.d(master_controller_writedata_4),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\entry_0[43]~0_combout ),
	.q(\entry_0[4]~q ),
	.prn(vcc));
defparam \entry_0[4] .is_wysiwyg = "true";
defparam \entry_0[4] .power_up = "low";

dffeas \entry_1[5] (
	.clk(clk),
	.d(master_controller_writedata_5),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\entry_1[43]~0_combout ),
	.q(\entry_1[5]~q ),
	.prn(vcc));
defparam \entry_1[5] .is_wysiwyg = "true";
defparam \entry_1[5] .power_up = "low";

dffeas \entry_0[5] (
	.clk(clk),
	.d(master_controller_writedata_5),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\entry_0[43]~0_combout ),
	.q(\entry_0[5]~q ),
	.prn(vcc));
defparam \entry_0[5] .is_wysiwyg = "true";
defparam \entry_0[5] .power_up = "low";

dffeas \entry_1[6] (
	.clk(clk),
	.d(master_controller_writedata_6),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\entry_1[43]~0_combout ),
	.q(\entry_1[6]~q ),
	.prn(vcc));
defparam \entry_1[6] .is_wysiwyg = "true";
defparam \entry_1[6] .power_up = "low";

dffeas \entry_0[6] (
	.clk(clk),
	.d(master_controller_writedata_6),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\entry_0[43]~0_combout ),
	.q(\entry_0[6]~q ),
	.prn(vcc));
defparam \entry_0[6] .is_wysiwyg = "true";
defparam \entry_0[6] .power_up = "low";

dffeas \entry_1[7] (
	.clk(clk),
	.d(master_controller_writedata_7),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\entry_1[43]~0_combout ),
	.q(\entry_1[7]~q ),
	.prn(vcc));
defparam \entry_1[7] .is_wysiwyg = "true";
defparam \entry_1[7] .power_up = "low";

dffeas \entry_0[7] (
	.clk(clk),
	.d(master_controller_writedata_7),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\entry_0[43]~0_combout ),
	.q(\entry_0[7]~q ),
	.prn(vcc));
defparam \entry_0[7] .is_wysiwyg = "true";
defparam \entry_0[7] .power_up = "low";

dffeas \entry_1[8] (
	.clk(clk),
	.d(master_controller_writedata_8),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\entry_1[43]~0_combout ),
	.q(\entry_1[8]~q ),
	.prn(vcc));
defparam \entry_1[8] .is_wysiwyg = "true";
defparam \entry_1[8] .power_up = "low";

dffeas \entry_0[8] (
	.clk(clk),
	.d(master_controller_writedata_8),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\entry_0[43]~0_combout ),
	.q(\entry_0[8]~q ),
	.prn(vcc));
defparam \entry_0[8] .is_wysiwyg = "true";
defparam \entry_0[8] .power_up = "low";

dffeas \entry_1[9] (
	.clk(clk),
	.d(master_controller_writedata_9),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\entry_1[43]~0_combout ),
	.q(\entry_1[9]~q ),
	.prn(vcc));
defparam \entry_1[9] .is_wysiwyg = "true";
defparam \entry_1[9] .power_up = "low";

dffeas \entry_0[9] (
	.clk(clk),
	.d(master_controller_writedata_9),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\entry_0[43]~0_combout ),
	.q(\entry_0[9]~q ),
	.prn(vcc));
defparam \entry_0[9] .is_wysiwyg = "true";
defparam \entry_0[9] .power_up = "low";

dffeas \entry_1[10] (
	.clk(clk),
	.d(master_controller_writedata_10),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\entry_1[43]~0_combout ),
	.q(\entry_1[10]~q ),
	.prn(vcc));
defparam \entry_1[10] .is_wysiwyg = "true";
defparam \entry_1[10] .power_up = "low";

dffeas \entry_0[10] (
	.clk(clk),
	.d(master_controller_writedata_10),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\entry_0[43]~0_combout ),
	.q(\entry_0[10]~q ),
	.prn(vcc));
defparam \entry_0[10] .is_wysiwyg = "true";
defparam \entry_0[10] .power_up = "low";

dffeas \entry_1[11] (
	.clk(clk),
	.d(master_controller_writedata_11),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\entry_1[43]~0_combout ),
	.q(\entry_1[11]~q ),
	.prn(vcc));
defparam \entry_1[11] .is_wysiwyg = "true";
defparam \entry_1[11] .power_up = "low";

dffeas \entry_0[11] (
	.clk(clk),
	.d(master_controller_writedata_11),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\entry_0[43]~0_combout ),
	.q(\entry_0[11]~q ),
	.prn(vcc));
defparam \entry_0[11] .is_wysiwyg = "true";
defparam \entry_0[11] .power_up = "low";

dffeas \entry_1[12] (
	.clk(clk),
	.d(master_controller_writedata_12),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\entry_1[43]~0_combout ),
	.q(\entry_1[12]~q ),
	.prn(vcc));
defparam \entry_1[12] .is_wysiwyg = "true";
defparam \entry_1[12] .power_up = "low";

dffeas \entry_0[12] (
	.clk(clk),
	.d(master_controller_writedata_12),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\entry_0[43]~0_combout ),
	.q(\entry_0[12]~q ),
	.prn(vcc));
defparam \entry_0[12] .is_wysiwyg = "true";
defparam \entry_0[12] .power_up = "low";

dffeas \entry_1[13] (
	.clk(clk),
	.d(master_controller_writedata_13),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\entry_1[43]~0_combout ),
	.q(\entry_1[13]~q ),
	.prn(vcc));
defparam \entry_1[13] .is_wysiwyg = "true";
defparam \entry_1[13] .power_up = "low";

dffeas \entry_0[13] (
	.clk(clk),
	.d(master_controller_writedata_13),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\entry_0[43]~0_combout ),
	.q(\entry_0[13]~q ),
	.prn(vcc));
defparam \entry_0[13] .is_wysiwyg = "true";
defparam \entry_0[13] .power_up = "low";

dffeas \entry_1[14] (
	.clk(clk),
	.d(master_controller_writedata_14),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\entry_1[43]~0_combout ),
	.q(\entry_1[14]~q ),
	.prn(vcc));
defparam \entry_1[14] .is_wysiwyg = "true";
defparam \entry_1[14] .power_up = "low";

dffeas \entry_0[14] (
	.clk(clk),
	.d(master_controller_writedata_14),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\entry_0[43]~0_combout ),
	.q(\entry_0[14]~q ),
	.prn(vcc));
defparam \entry_0[14] .is_wysiwyg = "true";
defparam \entry_0[14] .power_up = "low";

dffeas \entry_1[15] (
	.clk(clk),
	.d(master_controller_writedata_15),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\entry_1[43]~0_combout ),
	.q(\entry_1[15]~q ),
	.prn(vcc));
defparam \entry_1[15] .is_wysiwyg = "true";
defparam \entry_1[15] .power_up = "low";

dffeas \entry_0[15] (
	.clk(clk),
	.d(master_controller_writedata_15),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\entry_0[43]~0_combout ),
	.q(\entry_0[15]~q ),
	.prn(vcc));
defparam \entry_0[15] .is_wysiwyg = "true";
defparam \entry_0[15] .power_up = "low";

endmodule

module SDRAMtest_SDRAMtest_sys_sdram_pll_0 (
	locked,
	clk_0,
	clk_1,
	de10_clk_clk)/* synthesis synthesis_greybox=0 */;
output 	locked;
output 	clk_0;
output 	clk_1;
input 	de10_clk_clk;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



SDRAMtest_altera_up_altpll sys_pll(
	.locked(locked),
	.clk_0(clk_0),
	.clk_1(clk_1),
	.de10_clk_clk(de10_clk_clk));

endmodule

module SDRAMtest_altera_up_altpll (
	locked,
	clk_0,
	clk_1,
	de10_clk_clk)/* synthesis synthesis_greybox=0 */;
output 	locked;
output 	clk_0;
output 	clk_1;
input 	de10_clk_clk;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



SDRAMtest_altpll_1 PLL_for_DE_Series_Boards(
	.locked(locked),
	.clk_0(clk_0),
	.clk_1(clk_1),
	.inclk({gnd,de10_clk_clk}));

endmodule

module SDRAMtest_altpll_1 (
	locked,
	clk_0,
	clk_1,
	inclk)/* synthesis synthesis_greybox=0 */;
output 	locked;
output 	clk_0;
output 	clk_1;
input 	[1:0] inclk;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



SDRAMtest_altpll_nea2 auto_generated(
	.locked(locked),
	.clk({clk_unconnected_wire_5,clk_unconnected_wire_4,clk_unconnected_wire_3,clk_unconnected_wire_2,clk_1,clk_0}),
	.inclk({gnd,inclk[0]}));

endmodule

module SDRAMtest_altpll_nea2 (
	locked,
	clk,
	inclk)/* synthesis synthesis_greybox=0 */;
output 	locked;
output 	[5:0] clk;
input 	[1:0] inclk;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \clk[2] ;
wire \clk[3] ;
wire \clk[4] ;
wire \pll1~FBOUT ;

wire [4:0] pll1_CLK_bus;

assign clk[0] = pll1_CLK_bus[0];
assign clk[1] = pll1_CLK_bus[1];
assign \clk[2]  = pll1_CLK_bus[2];
assign \clk[3]  = pll1_CLK_bus[3];
assign \clk[4]  = pll1_CLK_bus[4];

fiftyfivenm_pll pll1(
	.areset(gnd),
	.pfdena(vcc),
	.fbin(\pll1~FBOUT ),
	.phaseupdown(gnd),
	.phasestep(gnd),
	.scandata(gnd),
	.scanclk(gnd),
	.scanclkena(vcc),
	.configupdate(gnd),
	.clkswitch(gnd),
	.inclk({gnd,inclk[0]}),
	.phasecounterselect(3'b000),
	.phasedone(),
	.scandataout(),
	.scandone(),
	.activeclock(),
	.locked(locked),
	.vcooverrange(),
	.vcounderrange(),
	.fbout(\pll1~FBOUT ),
	.clk(pll1_CLK_bus),
	.clkbad());
defparam pll1.auto_settings = "false";
defparam pll1.bandwidth_type = "auto";
defparam pll1.c0_high = 5;
defparam pll1.c0_initial = 4;
defparam pll1.c0_low = 5;
defparam pll1.c0_mode = "even";
defparam pll1.c0_ph = 0;
defparam pll1.c1_high = 5;
defparam pll1.c1_initial = 1;
defparam pll1.c1_low = 5;
defparam pll1.c1_mode = "even";
defparam pll1.c1_ph = 0;
defparam pll1.c1_use_casc_in = "off";
defparam pll1.c2_high = 5;
defparam pll1.c2_initial = 4;
defparam pll1.c2_low = 5;
defparam pll1.c2_mode = "even";
defparam pll1.c2_ph = 0;
defparam pll1.c2_use_casc_in = "off";
defparam pll1.c3_high = 1;
defparam pll1.c3_initial = 1;
defparam pll1.c3_low = 1;
defparam pll1.c3_mode = "bypass";
defparam pll1.c3_ph = 0;
defparam pll1.c3_use_casc_in = "off";
defparam pll1.c4_high = 1;
defparam pll1.c4_initial = 1;
defparam pll1.c4_low = 1;
defparam pll1.c4_mode = "bypass";
defparam pll1.c4_ph = 0;
defparam pll1.c4_use_casc_in = "off";
defparam pll1.charge_pump_current_bits = 2;
defparam pll1.clk0_counter = "c0";
defparam pll1.clk0_divide_by = 1;
defparam pll1.clk0_duty_cycle = 50;
defparam pll1.clk0_multiply_by = 2;
defparam pll1.clk0_phase_shift = "0";
defparam pll1.clk1_counter = "c1";
defparam pll1.clk1_divide_by = 1;
defparam pll1.clk1_duty_cycle = 50;
defparam pll1.clk1_multiply_by = 2;
defparam pll1.clk1_phase_shift = "-3000";
defparam pll1.clk2_counter = "c2";
defparam pll1.clk2_divide_by = 1;
defparam pll1.clk2_duty_cycle = 50;
defparam pll1.clk2_multiply_by = 2;
defparam pll1.clk2_phase_shift = "0";
defparam pll1.clk3_counter = "unused";
defparam pll1.clk3_divide_by = 0;
defparam pll1.clk3_duty_cycle = 50;
defparam pll1.clk3_multiply_by = 0;
defparam pll1.clk3_phase_shift = "0";
defparam pll1.clk4_counter = "unused";
defparam pll1.clk4_divide_by = 0;
defparam pll1.clk4_duty_cycle = 50;
defparam pll1.clk4_multiply_by = 0;
defparam pll1.clk4_phase_shift = "0";
defparam pll1.compensate_clock = "clock0";
defparam pll1.inclk0_input_frequency = 20000;
defparam pll1.inclk1_input_frequency = 0;
defparam pll1.loop_filter_c_bits = 2;
defparam pll1.loop_filter_r_bits = 1;
defparam pll1.m = 20;
defparam pll1.m_initial = 4;
defparam pll1.m_ph = 0;
defparam pll1.n = 1;
defparam pll1.operation_mode = "normal";
defparam pll1.pfd_max = 0;
defparam pll1.pfd_min = 0;
defparam pll1.self_reset_on_loss_lock = "off";
defparam pll1.simulation_type = "timing";
defparam pll1.switch_over_type = "auto";
defparam pll1.vco_center = 0;
defparam pll1.vco_divide_by = 0;
defparam pll1.vco_frequency_control = "auto";
defparam pll1.vco_max = 0;
defparam pll1.vco_min = 0;
defparam pll1.vco_multiply_by = 0;
defparam pll1.vco_phase_shift_step = 0;
defparam pll1.vco_post_scale = 1;

endmodule
