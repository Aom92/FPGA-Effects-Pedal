-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "10/26/2022 19:21:05"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	AudioBufferTest IS
    PORT (
	DE10CLK : IN std_logic;
	ADCCLK : IN std_logic;
	RW_switch : IN std_logic;
	addrUp : IN std_logic;
	addDw : IN std_logic;
	DE10Reset : IN std_logic;
	led_out : BUFFER std_logic_vector(15 DOWNTO 0);
	display0 : BUFFER std_logic_vector(7 DOWNTO 0);
	display1 : BUFFER std_logic_vector(7 DOWNTO 0);
	display2 : BUFFER std_logic_vector(7 DOWNTO 0);
	display3 : BUFFER std_logic_vector(7 DOWNTO 0);
	DRAM_CLK : BUFFER std_logic;
	DRAM_ADDR : BUFFER std_logic_vector(12 DOWNTO 0);
	DRAM_BA : BUFFER std_logic_vector(1 DOWNTO 0);
	DRAM_CAS_N : BUFFER std_logic;
	DRAM_CKE : BUFFER std_logic;
	DRAM_CS_N : BUFFER std_logic;
	DRAM_DQ : BUFFER std_logic_vector(15 DOWNTO 0);
	DRAM_DQM : BUFFER std_logic_vector(1 DOWNTO 0);
	DRAM_RAS_N : BUFFER std_logic;
	DRAM_WE_N : BUFFER std_logic
	);
END AudioBufferTest;

-- Design Ports Information
-- RW_switch	=>  Location: PIN_R20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addrUp	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addDw	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[0]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[1]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[2]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[4]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[5]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[6]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[7]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[8]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[9]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[10]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[11]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[12]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[13]	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[14]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[15]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display0[0]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display0[1]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display0[2]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display0[3]	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display0[4]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display0[5]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display0[6]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display0[7]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display1[0]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display1[1]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display1[2]	=>  Location: PIN_J20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display1[3]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display1[4]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display1[5]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display1[6]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display1[7]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display2[0]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display2[1]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display2[2]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display2[3]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display2[4]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display2[5]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display2[6]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display2[7]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display3[0]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display3[1]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display3[2]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display3[3]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display3[4]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display3[5]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display3[6]	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display3[7]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_CLK	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_ADDR[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_ADDR[1]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_ADDR[2]	=>  Location: PIN_AA11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_ADDR[3]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_ADDR[4]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_ADDR[5]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_ADDR[6]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_ADDR[7]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_ADDR[8]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_ADDR[9]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_ADDR[10]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_ADDR[11]	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_ADDR[12]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_BA[0]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_BA[1]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_CAS_N	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_CKE	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_CS_N	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQM[0]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQM[1]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_RAS_N	=>  Location: PIN_P10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_WE_N	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[0]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[1]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[2]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[3]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[4]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[5]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[6]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[7]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[8]	=>  Location: PIN_W11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[9]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[10]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[11]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[12]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[13]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[14]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[15]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DE10CLK	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DE10Reset	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADCCLK	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF AudioBufferTest IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_DE10CLK : std_logic;
SIGNAL ww_ADCCLK : std_logic;
SIGNAL ww_RW_switch : std_logic;
SIGNAL ww_addrUp : std_logic;
SIGNAL ww_addDw : std_logic;
SIGNAL ww_DE10Reset : std_logic;
SIGNAL ww_led_out : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_display0 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_display1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_display2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_display3 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_DRAM_CLK : std_logic;
SIGNAL ww_DRAM_ADDR : std_logic_vector(12 DOWNTO 0);
SIGNAL ww_DRAM_BA : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_DRAM_CAS_N : std_logic;
SIGNAL ww_DRAM_CKE : std_logic;
SIGNAL ww_DRAM_CS_N : std_logic;
SIGNAL ww_DRAM_DQ : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_DRAM_DQM : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_DRAM_RAS_N : std_logic;
SIGNAL ww_DRAM_WE_N : std_logic;
SIGNAL \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|primitive_instance_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|primitive_instance_DOUT_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \u1|altpll_0|sd1|pll7_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \u1|altpll_0|sd1|pll7_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \DE10Reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \estado_pres.e1~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Selector0~10clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ADCCLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Selector0~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[1]~clkctrl_e_DRAM_CLK_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RW_switch~input_o\ : std_logic;
SIGNAL \addrUp~input_o\ : std_logic;
SIGNAL \addDw~input_o\ : std_logic;
SIGNAL \DRAM_DQ[0]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[1]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[2]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[3]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[4]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[5]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[6]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[7]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[8]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[9]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[10]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[11]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[12]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[13]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[14]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[15]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_TDO~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_ADC1IN1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_ADC1IN1~~padout\ : std_logic;
SIGNAL \~ALTERA_ADC2IN1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_ADC2IN1~~padout\ : std_logic;
SIGNAL \~ALTERA_ADC1IN2~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_ADC1IN2~~padout\ : std_logic;
SIGNAL \~ALTERA_ADC2IN8~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_ADC2IN8~~padout\ : std_logic;
SIGNAL \~ALTERA_ADC1IN3~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_ADC1IN3~~padout\ : std_logic;
SIGNAL \~ALTERA_ADC2IN3~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_ADC2IN3~~padout\ : std_logic;
SIGNAL \~ALTERA_ADC1IN4~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_ADC1IN4~~padout\ : std_logic;
SIGNAL \~ALTERA_ADC2IN4~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_ADC2IN4~~padout\ : std_logic;
SIGNAL \~ALTERA_ADC1IN5~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_ADC1IN5~~padout\ : std_logic;
SIGNAL \~ALTERA_ADC2IN5~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_ADC2IN5~~padout\ : std_logic;
SIGNAL \~ALTERA_ADC1IN6~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_ADC1IN6~~padout\ : std_logic;
SIGNAL \~ALTERA_ADC2IN6~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_ADC2IN6~~padout\ : std_logic;
SIGNAL \~ALTERA_ADC1IN7~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_ADC1IN7~~padout\ : std_logic;
SIGNAL \~ALTERA_ADC2IN7~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_ADC2IN7~~padout\ : std_logic;
SIGNAL \~ALTERA_ADC1IN8~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_ADC1IN8~~padout\ : std_logic;
SIGNAL \~ALTERA_ADC2IN2~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_ADC2IN2~~padout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \~ALTERA_TDO~~obuf_o\ : std_logic;
SIGNAL \DE10CLK~input_o\ : std_logic;
SIGNAL \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|pll1~FBOUT\ : std_logic;
SIGNAL \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|Equal0~0_combout\ : std_logic;
SIGNAL \estado_pres.e4~0_combout\ : std_logic;
SIGNAL \DE10Reset~input_o\ : std_logic;
SIGNAL \DE10Reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \estado_pres.e4~q\ : std_logic;
SIGNAL \estado_pres.e1~0_combout\ : std_logic;
SIGNAL \estado_pres.e1~feeder_combout\ : std_logic;
SIGNAL \estado_pres.e1~q\ : std_logic;
SIGNAL \writerequest~1_combout\ : std_logic;
SIGNAL \estado_pres.e3~0_combout\ : std_logic;
SIGNAL \estado_pres.e3~q\ : std_logic;
SIGNAL \readrequest~combout\ : std_logic;
SIGNAL \writerequest~combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~4_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|wr_address~0_combout\ : std_logic;
SIGNAL \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain[1]~feeder_combout\ : std_logic;
SIGNAL \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|locked\ : std_logic;
SIGNAL \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain[0]~feeder_combout\ : std_logic;
SIGNAL \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~feeder_combout\ : std_logic;
SIGNAL \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|wr_address~q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~3_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~2_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Add0~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Add0~1\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Add0~2_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|refresh_counter~8_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Add0~3\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Add0~4_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Add0~5\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Add0~6_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Add0~7\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Add0~8_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|refresh_counter~6_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Add0~9\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Add0~10_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|refresh_counter~7_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Equal0~2_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Add0~11\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Add0~12_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|refresh_counter~5_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Add0~13\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Add0~14_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|refresh_counter~4_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Add0~15\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Add0~16_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|refresh_counter[8]~12_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Add0~17\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Add0~18_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|refresh_counter[9]~11_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Equal0~1_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Equal0~3_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Add0~19\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Add0~20_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|refresh_counter~1_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Add0~21\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Add0~22_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|refresh_counter~3_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Add0~23\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Add0~24_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|refresh_counter~2_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Add0~25\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Add0~26_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|refresh_counter~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Equal0~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Equal0~4_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|i_next.000~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|i_next.000~q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector7~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|i_state.000~q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|WideOr6~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector6~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector5~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Add1~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector4~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector8~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|i_state.001~q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector16~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector16~1_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|i_next.010~q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector9~1_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|i_state.010~q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector18~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector18~1_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|i_next.111~q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector12~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|i_state.111~q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector10~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector10~1_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|i_state.011~q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector13~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector13~1_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector13~2_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector15~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector15~1_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector15~2_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector14~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector9~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector17~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|i_next.101~q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|i_state.101~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|i_state.101~q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|init_done~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|init_done~q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector30~2_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|active_cs_n~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|active_cs_n~1_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|active_cs_n~q\ : std_logic;
SIGNAL \estado_pres.e1~clkctrl_outclk\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~77_combout\ : std_logic;
SIGNAL \Selector0~7_combout\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~27_combout\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \fsm:addressCounter[13]~combout\ : std_logic;
SIGNAL \Add0~28\ : std_logic;
SIGNAL \Add0~29_combout\ : std_logic;
SIGNAL \Add0~55_combout\ : std_logic;
SIGNAL \fsm:addressCounter[14]~combout\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~31_combout\ : std_logic;
SIGNAL \Add0~58_combout\ : std_logic;
SIGNAL \fsm:addressCounter[15]~combout\ : std_logic;
SIGNAL \Add0~32\ : std_logic;
SIGNAL \Add0~33_combout\ : std_logic;
SIGNAL \Add0~57_combout\ : std_logic;
SIGNAL \fsm:addressCounter[16]~combout\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~35_combout\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \fsm:addressCounter[17]~combout\ : std_logic;
SIGNAL \Add0~36\ : std_logic;
SIGNAL \Add0~37_combout\ : std_logic;
SIGNAL \Add0~59_combout\ : std_logic;
SIGNAL \fsm:addressCounter[18]~combout\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~39_combout\ : std_logic;
SIGNAL \Add0~62_combout\ : std_logic;
SIGNAL \fsm:addressCounter[19]~combout\ : std_logic;
SIGNAL \Add0~40\ : std_logic;
SIGNAL \Add0~41_combout\ : std_logic;
SIGNAL \Add0~61_combout\ : std_logic;
SIGNAL \fsm:addressCounter[20]~combout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~43_combout\ : std_logic;
SIGNAL \Add0~64_combout\ : std_logic;
SIGNAL \fsm:addressCounter[21]~combout\ : std_logic;
SIGNAL \Selector0~3_combout\ : std_logic;
SIGNAL \Add0~44\ : std_logic;
SIGNAL \Add0~45_combout\ : std_logic;
SIGNAL \Add0~63_combout\ : std_logic;
SIGNAL \fsm:addressCounter[22]~combout\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~47_combout\ : std_logic;
SIGNAL \Add0~66_combout\ : std_logic;
SIGNAL \fsm:addressCounter[23]~combout\ : std_logic;
SIGNAL \Add0~48\ : std_logic;
SIGNAL \Add0~49_combout\ : std_logic;
SIGNAL \Add0~65_combout\ : std_logic;
SIGNAL \fsm:addressCounter[24]~combout\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~51_combout\ : std_logic;
SIGNAL \Add0~53_combout\ : std_logic;
SIGNAL \fsm:addressCounter[25]~combout\ : std_logic;
SIGNAL \Selector0~2_combout\ : std_logic;
SIGNAL \Selector0~4_combout\ : std_logic;
SIGNAL \Selector0~5_combout\ : std_logic;
SIGNAL \Selector0~6_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \ADCCLK~input_o\ : std_logic;
SIGNAL \ADCCLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain[1]~feeder_combout\ : std_logic;
SIGNAL \u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain[0]~feeder_combout\ : std_logic;
SIGNAL \u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~feeder_combout\ : std_logic;
SIGNAL \u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|eoc_synch_dly~q\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRUP_SOC~q\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|int_timer[0]~8_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PUTRESP_DLY1~q\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PUTRESP_DLY2~q\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PUTRESP_DLY3~feeder_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PUTRESP_DLY3~q\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|Selector7~0_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.GETCMD~q\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|arc_to_conv~0_combout\ : std_logic;
SIGNAL \u1|altpll_0|sd1|wire_pll7_fbout\ : std_logic;
SIGNAL \u1|altpll_0|sd1|wire_pll7_locked\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.IDLE~0_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.IDLE~q\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|Selector1~0_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN~q\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|int_timer[2]~24_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|int_timer[0]~9\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|int_timer[1]~10_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|int_timer[1]~11\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|int_timer[2]~12_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|int_timer[2]~13\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|int_timer[3]~14_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|int_timer[3]~15\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|int_timer[4]~16_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|int_timer[4]~17\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|int_timer[5]~18_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|int_timer[5]~19\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|int_timer[6]~20_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|int_timer[6]~21\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|int_timer[7]~22_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|Selector2~0_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN_TSEN~q\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|Selector18~0_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|Selector15~2_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|WideOr12~0_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|WideOr17~combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|Selector18~1_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|usr_pwd~q\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|usr_pwd~_wirecell_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|Selector3~0_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN_DONE~q\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|Selector3~1_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|WideOr12~1_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|WideOr12~combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|chsel[0]~2_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|Selector15~3_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|adc_inst|decoder|WideOr4~0_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|adc_inst|decoder|WideOr2~0_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|chsel[1]~_wirecell_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|clkout_adccore\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|u_clk_dft_synchronizer|din_s1~q\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|clk_dft_synch_dly~q\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|Selector4~0_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRUP_CH~q\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|Selector5~0_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|Selector5~1_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|Selector17~0_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|soc~q\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|eoc\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|u_eoc_synchronizer|din_s1~feeder_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|u_eoc_synchronizer|din_s1~q\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|u_eoc_synchronizer|dreg[0]~feeder_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|Selector9~0_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.CONV~q\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|load_dout~0_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.CONV_DLY1~q\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~feeder_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|pend~0_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|pend~q\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|load_rsp~0_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|rsp_valid~q\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \Selector0~8_combout\ : std_logic;
SIGNAL \Selector0~9_combout\ : std_logic;
SIGNAL \Selector0~10_combout\ : std_logic;
SIGNAL \Selector0~10clkctrl_outclk\ : std_logic;
SIGNAL \fsm:addressCounter[0]~combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~67_combout\ : std_logic;
SIGNAL \fsm:addressCounter[1]~combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~68_combout\ : std_logic;
SIGNAL \fsm:addressCounter[2]~combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~69_combout\ : std_logic;
SIGNAL \fsm:addressCounter[3]~combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~70_combout\ : std_logic;
SIGNAL \fsm:addressCounter[4]~combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~71_combout\ : std_logic;
SIGNAL \fsm:addressCounter[5]~combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~72_combout\ : std_logic;
SIGNAL \fsm:addressCounter[6]~combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~73_combout\ : std_logic;
SIGNAL \fsm:addressCounter[7]~combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add0~74_combout\ : std_logic;
SIGNAL \fsm:addressCounter[8]~combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~75_combout\ : std_logic;
SIGNAL \fsm:addressCounter[9]~combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~76_combout\ : std_logic;
SIGNAL \fsm:addressCounter[10]~combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \fsm:addressCounter[11]~combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~25_combout\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \fsm:addressCounter[12]~combout\ : std_logic;
SIGNAL \memaddress~2_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[29]~3_combout\ : std_logic;
SIGNAL \memaddress~1_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[42]~2_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|active_rnw~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|active_rnw~1_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector27~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|active_rnw~q\ : std_logic;
SIGNAL \memaddress~11_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[39]~feeder_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[39]~12_combout\ : std_logic;
SIGNAL \memaddress~12_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[38]~13_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|pending~7_combout\ : std_logic;
SIGNAL \memaddress~10_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[36]~feeder_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[36]~11_combout\ : std_logic;
SIGNAL \memaddress~9_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[37]~10_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|pending~6_combout\ : std_logic;
SIGNAL \memaddress~14_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[40]~15_combout\ : std_logic;
SIGNAL \memaddress~13_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[41]~14_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|pending~8_combout\ : std_logic;
SIGNAL \memaddress~8_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[34]~9_combout\ : std_logic;
SIGNAL \memaddress~7_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[35]~8_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|pending~5_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|pending~9_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|pending~10_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|m_next~22_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector35~1_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|m_next~21_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector35~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector34~1_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|m_next~23_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector34~2_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|m_next.000010000~q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector27~1_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector28~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector27~4_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector37~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector38~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|m_count[1]~5_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|m_count[1]~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector36~2_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|m_count[1]~2_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|m_count[1]~6_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|LessThan1~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector29~1_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|m_state.000100000~q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|m_count[1]~3_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|m_count[1]~4_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|m_count[0]~7_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|m_count[0]~8_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector37~1_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector37~2_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector37~3_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector30~3_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|m_state.001000000~q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|WideOr8~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector27~5_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector27~3_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector27~6_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|m_state.000010000~q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|m_addr~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|active_rnw~2_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|active_rnw~3_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|pending~1_combout\ : std_logic;
SIGNAL \memaddress~3_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[31]~4_combout\ : std_logic;
SIGNAL \memaddress~4_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[30]~5_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|pending~2_combout\ : std_logic;
SIGNAL \memaddress~6_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[32]~feeder_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[32]~7_combout\ : std_logic;
SIGNAL \memaddress~5_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[33]~feeder_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[33]~6_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|pending~3_combout\ : std_logic;
SIGNAL \memaddress~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[28]~feeder_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[28]~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|pending~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|pending~4_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|pending~combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[43]~1_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[43]~1_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector34~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|m_next.000001000~q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector27~2_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|m_state.000001000~q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|m_count[1]~1_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector25~4_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector36~3_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector36~4_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|m_next.010000000~q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector31~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|m_state.010000000~q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector23~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|ack_refresh_request~q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|refresh_request~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|refresh_request~q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector26~1_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector26~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector26~2_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|m_state.000000100~q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector24~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector24~1_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector93~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector33~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector33~1_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector33~2_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector33~3_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|m_next.000000001~q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector24~2_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|m_state.000000001~q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|always5~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector3~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector22~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector22~1_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|m_cmd[0]~_Duplicate_1_q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector1~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector20~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|m_cmd[2]~_Duplicate_1_q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector2~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector21~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|WideOr9~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector21~1_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|m_cmd[1]~_Duplicate_1_q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Equal4~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|rd_valid[1]~feeder_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|za_valid~q\ : std_logic;
SIGNAL \DRAM|mm_interconnect_0|avalon_mm_0_avm_m0_translator|read_accepted~0_combout\ : std_logic;
SIGNAL \DRAM|mm_interconnect_0|avalon_mm_0_avm_m0_translator|read_accepted~q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|always2~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|f_select~combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries[1]~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|Equal1~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector32~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector32~1_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|m_state.100000000~q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector29~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector41~3_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector41~2_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|f_pop~q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries[0]~1_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector25~5_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|m_state.000000010~q\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[0]~feeder_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|load_dout~1_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~0_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data[0]~feeder_combout\ : std_logic;
SIGNAL \Selector0~1clkctrl_outclk\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[0]~feeder_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[0]~26_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|m_data[0]~_Duplicate_1_q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector116~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|m_data[0]~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector116~1_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|oe~q\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[1]~feeder_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~1_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[1]~feeder_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[1]~27_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|m_data[1]~_Duplicate_1_q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector115~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector115~1_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|oe~_Duplicate_1_q\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[2]~feeder_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~2_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data[2]~feeder_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[2]~feeder_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[2]~feeder_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[2]~28_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|m_data[2]~_Duplicate_1_q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector114~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector114~1_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|oe~_Duplicate_2_q\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[3]~feeder_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~3_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[3]~feeder_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[3]~29_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|m_data[3]~_Duplicate_1_q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector113~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector113~1_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|oe~_Duplicate_3_q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|m_data[4]~_Duplicate_1_q\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[4]~feeder_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~4_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[4]~feeder_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[4]~30_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector112~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector112~1_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|oe~_Duplicate_4_q\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[5]~feeder_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~5_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[5]~feeder_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[5]~31_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|m_data[5]~_Duplicate_1_q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector111~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector111~1_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|oe~_Duplicate_5_q\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~6_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data[6]~feeder_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[6]~feeder_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[6]~feeder_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[6]~32_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|m_data[6]~_Duplicate_1_q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector110~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector110~1_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|oe~_Duplicate_6_q\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~7_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[7]~feeder_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[7]~33_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|m_data[7]~_Duplicate_1_q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector109~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector109~1_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|oe~_Duplicate_7_q\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[8]~feeder_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~8_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data[8]~feeder_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[8]~feeder_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[8]~34_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|m_data[8]~_Duplicate_1_q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector108~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector108~1_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|oe~_Duplicate_8_q\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[9]~feeder_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~9_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[9]~feeder_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[9]~feeder_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[9]~35_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|m_data[9]~_Duplicate_1_q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector107~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector107~1_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|oe~_Duplicate_9_q\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[10]~feeder_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~10_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[10]~feeder_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[10]~36_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|m_data[10]~_Duplicate_1_q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector106~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector106~1_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|oe~_Duplicate_10_q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|m_data[11]~_Duplicate_1_q\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~11_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[11]~37_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector105~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector105~1_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|oe~_Duplicate_11_q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|oe~_Duplicate_12_q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|oe~_Duplicate_13_q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|oe~_Duplicate_14_q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|oe~_Duplicate_15_q\ : std_logic;
SIGNAL \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[1]~clkctrl_e_DRAM_CLK_outclk\ : std_logic;
SIGNAL \memaddress~15_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[18]~16_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|m_addr[3]~1_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector98~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector98~1_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector93~1_combout\ : std_logic;
SIGNAL \memaddress~16_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[19]~feeder_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[19]~17_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector97~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector97~1_combout\ : std_logic;
SIGNAL \memaddress~17_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[20]~feeder_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[20]~18_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector96~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector96~1_combout\ : std_logic;
SIGNAL \memaddress~18_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[21]~19_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector95~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector95~1_combout\ : std_logic;
SIGNAL \memaddress~19_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[22]~feeder_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[22]~20_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector94~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector94~1_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|m_addr[5]~_Duplicate_1_q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector93~2_combout\ : std_logic;
SIGNAL \memaddress~20_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[23]~21_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector93~3_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector93~4_combout\ : std_logic;
SIGNAL \memaddress~21_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[24]~22_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector92~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector92~1_combout\ : std_logic;
SIGNAL \memaddress~22_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[25]~23_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector91~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector91~1_combout\ : std_logic;
SIGNAL \memaddress~23_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[26]~24_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector90~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector90~1_combout\ : std_logic;
SIGNAL \memaddress~24_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[27]~25_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector89~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector89~1_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector88~2_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector88~3_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector87~2_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector87~3_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector86~2_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector86~3_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector100~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|WideOr16~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector99~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector19~2_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector0~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector19~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector19~1_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector19~3_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|m_addr\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \DRAM|new_sdram_controller_0|i_addr\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u1|altpll_0|sd1|wire_pll7_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \DRAM|new_sdram_controller_0|i_cmd\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|int_timer\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \DRAM|new_sdram_controller_0|m_bank\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \DRAM|new_sdram_controller_0|active_addr\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \DRAM|new_sdram_controller_0|m_cmd\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DRAM|new_sdram_controller_0|i_refs\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\ : std_logic_vector(43 DOWNTO 0);
SIGNAL \DRAM|new_sdram_controller_0|i_count\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\ : std_logic_vector(43 DOWNTO 0);
SIGNAL \DRAM|new_sdram_controller_0|m_count\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \DRAM|new_sdram_controller_0|refresh_counter\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \DRAM|new_sdram_controller_0|active_data\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \DRAM|new_sdram_controller_0|rd_valid\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|u_eoc_synchronizer|dreg\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|chsel\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|u_clk_dft_synchronizer|dreg\ : std_logic_vector(0 DOWNTO 0);
SIGNAL memaddress : std_logic_vector(25 DOWNTO 0);
SIGNAL dataIN : std_logic_vector(15 DOWNTO 0);
SIGNAL \DRAM|new_sdram_controller_0|m_data\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \DRAM|new_sdram_controller_0|ALT_INV_oe~_Duplicate_15_q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|ALT_INV_m_state.000000010~q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|ALT_INV_Selector22~1_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|ALT_INV_Selector20~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|ALT_INV_Selector19~3_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|ALT_INV_Selector21~1_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|ALT_INV_always5~0_combout\ : std_logic;
SIGNAL \DRAM|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|ALT_INV_m_state.000010000~q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|ALT_INV_oe~_Duplicate_14_q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|ALT_INV_oe~_Duplicate_13_q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|ALT_INV_oe~_Duplicate_12_q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|ALT_INV_oe~_Duplicate_11_q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|ALT_INV_oe~_Duplicate_10_q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|ALT_INV_oe~_Duplicate_9_q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|ALT_INV_oe~_Duplicate_8_q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|ALT_INV_oe~_Duplicate_7_q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|ALT_INV_oe~_Duplicate_6_q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|ALT_INV_oe~_Duplicate_5_q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|ALT_INV_oe~_Duplicate_4_q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|ALT_INV_oe~_Duplicate_3_q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|ALT_INV_oe~_Duplicate_2_q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|ALT_INV_oe~_Duplicate_1_q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|ALT_INV_oe~q\ : std_logic;
SIGNAL \ALT_INV_DE10Reset~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_DE10CLK <= DE10CLK;
ww_ADCCLK <= ADCCLK;
ww_RW_switch <= RW_switch;
ww_addrUp <= addrUp;
ww_addDw <= addDw;
ww_DE10Reset <= DE10Reset;
led_out <= ww_led_out;
display0 <= ww_display0;
display1 <= ww_display1;
display2 <= ww_display2;
display3 <= ww_display3;
DRAM_CLK <= ww_DRAM_CLK;
DRAM_ADDR <= ww_DRAM_ADDR;
DRAM_BA <= ww_DRAM_BA;
DRAM_CAS_N <= ww_DRAM_CAS_N;
DRAM_CKE <= ww_DRAM_CKE;
DRAM_CS_N <= ww_DRAM_CS_N;
DRAM_DQ <= ww_DRAM_DQ;
DRAM_DQM <= ww_DRAM_DQM;
DRAM_RAS_N <= ww_DRAM_RAS_N;
DRAM_WE_N <= ww_DRAM_WE_N;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|pll1_INCLK_bus\ <= (gnd & \DE10CLK~input_o\);

\DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk\(0) <= \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|pll1_CLK_bus\(0);
\DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk\(1) <= \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|pll1_CLK_bus\(1);
\DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk\(2) <= \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|pll1_CLK_bus\(2);
\DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk\(3) <= \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|pll1_CLK_bus\(3);
\DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk\(4) <= \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|pll1_CLK_bus\(4);

\u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|primitive_instance_CHSEL_bus\ <= (\u1|modular_adc_0|control_internal|u_control_fsm|chsel[1]~_wirecell_combout\ & \u1|modular_adc_0|control_internal|u_control_fsm|chsel[1]~_wirecell_combout\ & 
\u1|modular_adc_0|control_internal|adc_inst|decoder|WideOr2~0_combout\ & \u1|modular_adc_0|control_internal|adc_inst|decoder|WideOr4~0_combout\ & \u1|modular_adc_0|control_internal|adc_inst|decoder|WideOr4~0_combout\);

\u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(0) <= \u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|primitive_instance_DOUT_bus\(0);
\u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(1) <= \u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|primitive_instance_DOUT_bus\(1);
\u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(2) <= \u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|primitive_instance_DOUT_bus\(2);
\u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(3) <= \u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|primitive_instance_DOUT_bus\(3);
\u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(4) <= \u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|primitive_instance_DOUT_bus\(4);
\u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(5) <= \u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|primitive_instance_DOUT_bus\(5);
\u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(6) <= \u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|primitive_instance_DOUT_bus\(6);
\u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(7) <= \u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|primitive_instance_DOUT_bus\(7);
\u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(8) <= \u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|primitive_instance_DOUT_bus\(8);
\u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(9) <= \u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|primitive_instance_DOUT_bus\(9);
\u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(10) <= \u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|primitive_instance_DOUT_bus\(10);
\u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(11) <= \u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|primitive_instance_DOUT_bus\(11);

\u1|altpll_0|sd1|pll7_INCLK_bus\ <= (gnd & \ADCCLK~input_o\);

\u1|altpll_0|sd1|wire_pll7_clk\(0) <= \u1|altpll_0|sd1|pll7_CLK_bus\(0);
\u1|altpll_0|sd1|wire_pll7_clk\(1) <= \u1|altpll_0|sd1|pll7_CLK_bus\(1);
\u1|altpll_0|sd1|wire_pll7_clk\(2) <= \u1|altpll_0|sd1|pll7_CLK_bus\(2);
\u1|altpll_0|sd1|wire_pll7_clk\(3) <= \u1|altpll_0|sd1|pll7_CLK_bus\(3);
\u1|altpll_0|sd1|wire_pll7_clk\(4) <= \u1|altpll_0|sd1|pll7_CLK_bus\(4);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\DE10Reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \DE10Reset~input_o\);

\estado_pres.e1~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \estado_pres.e1~q\);

\Selector0~10clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Selector0~10_combout\);

\ADCCLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \ADCCLK~input_o\);

\Selector0~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Selector0~1_combout\);

\DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[1]~clkctrl_e_DRAM_CLK_INCLK_bus\ <= (vcc & vcc & vcc & \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk\(1));

\DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk\(0));
\DRAM|new_sdram_controller_0|ALT_INV_oe~_Duplicate_15_q\ <= NOT \DRAM|new_sdram_controller_0|oe~_Duplicate_15_q\;
\DRAM|new_sdram_controller_0|ALT_INV_m_state.000000010~q\ <= NOT \DRAM|new_sdram_controller_0|m_state.000000010~q\;
\DRAM|new_sdram_controller_0|ALT_INV_Selector22~1_combout\ <= NOT \DRAM|new_sdram_controller_0|Selector22~1_combout\;
\DRAM|new_sdram_controller_0|ALT_INV_Selector20~0_combout\ <= NOT \DRAM|new_sdram_controller_0|Selector20~0_combout\;
\DRAM|new_sdram_controller_0|ALT_INV_Selector19~3_combout\ <= NOT \DRAM|new_sdram_controller_0|Selector19~3_combout\;
\DRAM|new_sdram_controller_0|ALT_INV_Selector21~1_combout\ <= NOT \DRAM|new_sdram_controller_0|Selector21~1_combout\;
\DRAM|new_sdram_controller_0|ALT_INV_always5~0_combout\ <= NOT \DRAM|new_sdram_controller_0|always5~0_combout\;
\DRAM|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\ <= NOT \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\;
\DRAM|new_sdram_controller_0|ALT_INV_m_state.000010000~q\ <= NOT \DRAM|new_sdram_controller_0|m_state.000010000~q\;
\DRAM|new_sdram_controller_0|ALT_INV_oe~_Duplicate_14_q\ <= NOT \DRAM|new_sdram_controller_0|oe~_Duplicate_14_q\;
\DRAM|new_sdram_controller_0|ALT_INV_oe~_Duplicate_13_q\ <= NOT \DRAM|new_sdram_controller_0|oe~_Duplicate_13_q\;
\DRAM|new_sdram_controller_0|ALT_INV_oe~_Duplicate_12_q\ <= NOT \DRAM|new_sdram_controller_0|oe~_Duplicate_12_q\;
\DRAM|new_sdram_controller_0|ALT_INV_oe~_Duplicate_11_q\ <= NOT \DRAM|new_sdram_controller_0|oe~_Duplicate_11_q\;
\DRAM|new_sdram_controller_0|ALT_INV_oe~_Duplicate_10_q\ <= NOT \DRAM|new_sdram_controller_0|oe~_Duplicate_10_q\;
\DRAM|new_sdram_controller_0|ALT_INV_oe~_Duplicate_9_q\ <= NOT \DRAM|new_sdram_controller_0|oe~_Duplicate_9_q\;
\DRAM|new_sdram_controller_0|ALT_INV_oe~_Duplicate_8_q\ <= NOT \DRAM|new_sdram_controller_0|oe~_Duplicate_8_q\;
\DRAM|new_sdram_controller_0|ALT_INV_oe~_Duplicate_7_q\ <= NOT \DRAM|new_sdram_controller_0|oe~_Duplicate_7_q\;
\DRAM|new_sdram_controller_0|ALT_INV_oe~_Duplicate_6_q\ <= NOT \DRAM|new_sdram_controller_0|oe~_Duplicate_6_q\;
\DRAM|new_sdram_controller_0|ALT_INV_oe~_Duplicate_5_q\ <= NOT \DRAM|new_sdram_controller_0|oe~_Duplicate_5_q\;
\DRAM|new_sdram_controller_0|ALT_INV_oe~_Duplicate_4_q\ <= NOT \DRAM|new_sdram_controller_0|oe~_Duplicate_4_q\;
\DRAM|new_sdram_controller_0|ALT_INV_oe~_Duplicate_3_q\ <= NOT \DRAM|new_sdram_controller_0|oe~_Duplicate_3_q\;
\DRAM|new_sdram_controller_0|ALT_INV_oe~_Duplicate_2_q\ <= NOT \DRAM|new_sdram_controller_0|oe~_Duplicate_2_q\;
\DRAM|new_sdram_controller_0|ALT_INV_oe~_Duplicate_1_q\ <= NOT \DRAM|new_sdram_controller_0|oe~_Duplicate_1_q\;
\DRAM|new_sdram_controller_0|ALT_INV_oe~q\ <= NOT \DRAM|new_sdram_controller_0|oe~q\;
\ALT_INV_DE10Reset~inputclkctrl_outclk\ <= NOT \DE10Reset~inputclkctrl_outclk\;

-- Location: IOOBUF_X16_Y0_N2
\led_out[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_led_out(0));

-- Location: IOOBUF_X78_Y36_N9
\led_out[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_led_out(1));

-- Location: IOOBUF_X49_Y0_N30
\led_out[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_led_out(2));

-- Location: IOOBUF_X78_Y35_N23
\led_out[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_led_out(3));

-- Location: IOOBUF_X58_Y54_N16
\led_out[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_led_out(4));

-- Location: IOOBUF_X0_Y26_N16
\led_out[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_led_out(5));

-- Location: IOOBUF_X54_Y54_N30
\led_out[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_led_out(6));

-- Location: IOOBUF_X51_Y0_N16
\led_out[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_led_out(7));

-- Location: IOOBUF_X78_Y36_N2
\led_out[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_led_out(8));

-- Location: IOOBUF_X0_Y16_N16
\led_out[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_led_out(9));

-- Location: IOOBUF_X0_Y15_N16
\led_out[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_led_out(10));

-- Location: IOOBUF_X66_Y54_N9
\led_out[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_led_out(11));

-- Location: IOOBUF_X54_Y54_N23
\led_out[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_led_out(12));

-- Location: IOOBUF_X20_Y0_N2
\led_out[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_led_out(13));

-- Location: IOOBUF_X0_Y16_N2
\led_out[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_led_out(14));

-- Location: IOOBUF_X58_Y0_N2
\led_out[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_led_out(15));

-- Location: IOOBUF_X46_Y54_N30
\display0[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_display0(0));

-- Location: IOOBUF_X24_Y0_N2
\display0[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_display0(1));

-- Location: IOOBUF_X24_Y39_N9
\display0[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_display0(2));

-- Location: IOOBUF_X0_Y23_N9
\display0[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_display0(3));

-- Location: IOOBUF_X0_Y13_N16
\display0[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_display0(4));

-- Location: IOOBUF_X78_Y40_N2
\display0[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_display0(5));

-- Location: IOOBUF_X49_Y54_N16
\display0[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_display0(6));

-- Location: IOOBUF_X60_Y54_N2
\display0[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_display0(7));

-- Location: IOOBUF_X0_Y3_N16
\display1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_display1(0));

-- Location: IOOBUF_X78_Y3_N2
\display1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_display1(1));

-- Location: IOOBUF_X78_Y45_N9
\display1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_display1(2));

-- Location: IOOBUF_X51_Y54_N16
\display1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_display1(3));

-- Location: IOOBUF_X0_Y13_N9
\display1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_display1(4));

-- Location: IOOBUF_X49_Y54_N23
\display1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_display1(5));

-- Location: IOOBUF_X60_Y54_N9
\display1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_display1(6));

-- Location: IOOBUF_X51_Y0_N23
\display1[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_display1(7));

-- Location: IOOBUF_X31_Y39_N9
\display2[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_display2(0));

-- Location: IOOBUF_X46_Y54_N16
\display2[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_display2(1));

-- Location: IOOBUF_X51_Y54_N2
\display2[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_display2(2));

-- Location: IOOBUF_X46_Y54_N9
\display2[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_display2(3));

-- Location: IOOBUF_X0_Y30_N23
\display2[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_display2(4));

-- Location: IOOBUF_X49_Y0_N16
\display2[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_display2(5));

-- Location: IOOBUF_X26_Y39_N9
\display2[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_display2(6));

-- Location: IOOBUF_X78_Y36_N24
\display2[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_display2(7));

-- Location: IOOBUF_X34_Y39_N9
\display3[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_display3(0));

-- Location: IOOBUF_X31_Y39_N30
\display3[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_display3(1));

-- Location: IOOBUF_X78_Y36_N16
\display3[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_display3(2));

-- Location: IOOBUF_X58_Y0_N30
\display3[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_display3(3));

-- Location: IOOBUF_X22_Y39_N30
\display3[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_display3(4));

-- Location: IOOBUF_X78_Y16_N24
\display3[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_display3(5));

-- Location: IOOBUF_X18_Y0_N9
\display3[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_display3(6));

-- Location: IOOBUF_X64_Y54_N2
\display3[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_display3(7));

-- Location: IOOBUF_X0_Y3_N23
\DRAM_CLK~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[1]~clkctrl_e_DRAM_CLK_outclk\,
	devoe => ww_devoe,
	o => ww_DRAM_CLK);

-- Location: IOOBUF_X40_Y0_N23
\DRAM_ADDR[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DRAM|new_sdram_controller_0|m_addr\(0),
	devoe => ww_devoe,
	o => ww_DRAM_ADDR(0));

-- Location: IOOBUF_X38_Y0_N30
\DRAM_ADDR[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DRAM|new_sdram_controller_0|m_addr\(1),
	devoe => ww_devoe,
	o => ww_DRAM_ADDR(1));

-- Location: IOOBUF_X40_Y0_N9
\DRAM_ADDR[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DRAM|new_sdram_controller_0|m_addr\(2),
	devoe => ww_devoe,
	o => ww_DRAM_ADDR(2));

-- Location: IOOBUF_X38_Y0_N23
\DRAM_ADDR[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DRAM|new_sdram_controller_0|m_addr\(3),
	devoe => ww_devoe,
	o => ww_DRAM_ADDR(3));

-- Location: IOOBUF_X38_Y0_N2
\DRAM_ADDR[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DRAM|new_sdram_controller_0|m_addr\(4),
	devoe => ww_devoe,
	o => ww_DRAM_ADDR(4));

-- Location: IOOBUF_X40_Y0_N16
\DRAM_ADDR[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DRAM|new_sdram_controller_0|m_addr\(5),
	devoe => ww_devoe,
	o => ww_DRAM_ADDR(5));

-- Location: IOOBUF_X40_Y0_N2
\DRAM_ADDR[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DRAM|new_sdram_controller_0|m_addr\(6),
	devoe => ww_devoe,
	o => ww_DRAM_ADDR(6));

-- Location: IOOBUF_X38_Y0_N16
\DRAM_ADDR[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DRAM|new_sdram_controller_0|m_addr\(7),
	devoe => ww_devoe,
	o => ww_DRAM_ADDR(7));

-- Location: IOOBUF_X40_Y0_N30
\DRAM_ADDR[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DRAM|new_sdram_controller_0|m_addr\(8),
	devoe => ww_devoe,
	o => ww_DRAM_ADDR(8));

-- Location: IOOBUF_X38_Y0_N9
\DRAM_ADDR[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DRAM|new_sdram_controller_0|m_addr\(9),
	devoe => ww_devoe,
	o => ww_DRAM_ADDR(9));

-- Location: IOOBUF_X29_Y0_N16
\DRAM_ADDR[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DRAM|new_sdram_controller_0|m_addr\(10),
	devoe => ww_devoe,
	o => ww_DRAM_ADDR(10));

-- Location: IOOBUF_X29_Y0_N23
\DRAM_ADDR[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DRAM|new_sdram_controller_0|m_addr\(11),
	devoe => ww_devoe,
	o => ww_DRAM_ADDR(11));

-- Location: IOOBUF_X29_Y0_N30
\DRAM_ADDR[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DRAM|new_sdram_controller_0|m_addr\(12),
	devoe => ww_devoe,
	o => ww_DRAM_ADDR(12));

-- Location: IOOBUF_X34_Y0_N16
\DRAM_BA[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DRAM|new_sdram_controller_0|m_bank\(0),
	devoe => ww_devoe,
	o => ww_DRAM_BA(0));

-- Location: IOOBUF_X34_Y0_N2
\DRAM_BA[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DRAM|new_sdram_controller_0|m_bank\(1),
	devoe => ww_devoe,
	o => ww_DRAM_BA(1));

-- Location: IOOBUF_X31_Y0_N16
\DRAM_CAS_N~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DRAM|new_sdram_controller_0|m_cmd\(1),
	devoe => ww_devoe,
	o => ww_DRAM_CAS_N);

-- Location: IOOBUF_X34_Y39_N23
\DRAM_CKE~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_DRAM_CKE);

-- Location: IOOBUF_X22_Y0_N16
\DRAM_CS_N~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DRAM|new_sdram_controller_0|m_cmd\(3),
	devoe => ww_devoe,
	o => ww_DRAM_CS_N);

-- Location: IOOBUF_X78_Y18_N16
\DRAM_DQM[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_DRAM_DQM(0));

-- Location: IOOBUF_X51_Y0_N9
\DRAM_DQM[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_DRAM_DQM(1));

-- Location: IOOBUF_X26_Y0_N9
\DRAM_RAS_N~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DRAM|new_sdram_controller_0|m_cmd\(2),
	devoe => ww_devoe,
	o => ww_DRAM_RAS_N);

-- Location: IOOBUF_X34_Y0_N9
\DRAM_WE_N~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DRAM|new_sdram_controller_0|m_cmd\(0),
	devoe => ww_devoe,
	o => ww_DRAM_WE_N);

-- Location: IOOBUF_X31_Y0_N23
\DRAM_DQ[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DRAM|new_sdram_controller_0|m_data\(0),
	oe => \DRAM|new_sdram_controller_0|ALT_INV_oe~q\,
	devoe => ww_devoe,
	o => ww_DRAM_DQ(0));

-- Location: IOOBUF_X26_Y0_N16
\DRAM_DQ[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DRAM|new_sdram_controller_0|m_data\(1),
	oe => \DRAM|new_sdram_controller_0|ALT_INV_oe~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => ww_DRAM_DQ(1));

-- Location: IOOBUF_X34_Y0_N30
\DRAM_DQ[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DRAM|new_sdram_controller_0|m_data\(2),
	oe => \DRAM|new_sdram_controller_0|ALT_INV_oe~_Duplicate_2_q\,
	devoe => ww_devoe,
	o => ww_DRAM_DQ(2));

-- Location: IOOBUF_X34_Y0_N23
\DRAM_DQ[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DRAM|new_sdram_controller_0|m_data\(3),
	oe => \DRAM|new_sdram_controller_0|ALT_INV_oe~_Duplicate_3_q\,
	devoe => ww_devoe,
	o => ww_DRAM_DQ(3));

-- Location: IOOBUF_X29_Y0_N2
\DRAM_DQ[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DRAM|new_sdram_controller_0|m_data\(4),
	oe => \DRAM|new_sdram_controller_0|ALT_INV_oe~_Duplicate_4_q\,
	devoe => ww_devoe,
	o => ww_DRAM_DQ(4));

-- Location: IOOBUF_X26_Y0_N30
\DRAM_DQ[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DRAM|new_sdram_controller_0|m_data\(5),
	oe => \DRAM|new_sdram_controller_0|ALT_INV_oe~_Duplicate_5_q\,
	devoe => ww_devoe,
	o => ww_DRAM_DQ(5));

-- Location: IOOBUF_X26_Y0_N23
\DRAM_DQ[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DRAM|new_sdram_controller_0|m_data\(6),
	oe => \DRAM|new_sdram_controller_0|ALT_INV_oe~_Duplicate_6_q\,
	devoe => ww_devoe,
	o => ww_DRAM_DQ(6));

-- Location: IOOBUF_X31_Y0_N30
\DRAM_DQ[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DRAM|new_sdram_controller_0|m_data\(7),
	oe => \DRAM|new_sdram_controller_0|ALT_INV_oe~_Duplicate_7_q\,
	devoe => ww_devoe,
	o => ww_DRAM_DQ(7));

-- Location: IOOBUF_X36_Y0_N9
\DRAM_DQ[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DRAM|new_sdram_controller_0|m_data\(8),
	oe => \DRAM|new_sdram_controller_0|ALT_INV_oe~_Duplicate_8_q\,
	devoe => ww_devoe,
	o => ww_DRAM_DQ(8));

-- Location: IOOBUF_X29_Y0_N9
\DRAM_DQ[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DRAM|new_sdram_controller_0|m_data\(9),
	oe => \DRAM|new_sdram_controller_0|ALT_INV_oe~_Duplicate_9_q\,
	devoe => ww_devoe,
	o => ww_DRAM_DQ(9));

-- Location: IOOBUF_X36_Y0_N2
\DRAM_DQ[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DRAM|new_sdram_controller_0|m_data\(10),
	oe => \DRAM|new_sdram_controller_0|ALT_INV_oe~_Duplicate_10_q\,
	devoe => ww_devoe,
	o => ww_DRAM_DQ(10));

-- Location: IOOBUF_X31_Y0_N9
\DRAM_DQ[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DRAM|new_sdram_controller_0|m_data\(11),
	oe => \DRAM|new_sdram_controller_0|ALT_INV_oe~_Duplicate_11_q\,
	devoe => ww_devoe,
	o => ww_DRAM_DQ(11));

-- Location: IOOBUF_X24_Y0_N23
\DRAM_DQ[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	oe => \DRAM|new_sdram_controller_0|ALT_INV_oe~_Duplicate_12_q\,
	devoe => ww_devoe,
	o => ww_DRAM_DQ(12));

-- Location: IOOBUF_X24_Y0_N30
\DRAM_DQ[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	oe => \DRAM|new_sdram_controller_0|ALT_INV_oe~_Duplicate_13_q\,
	devoe => ww_devoe,
	o => ww_DRAM_DQ(13));

-- Location: IOOBUF_X24_Y0_N9
\DRAM_DQ[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	oe => \DRAM|new_sdram_controller_0|ALT_INV_oe~_Duplicate_14_q\,
	devoe => ww_devoe,
	o => ww_DRAM_DQ(14));

-- Location: IOOBUF_X24_Y0_N16
\DRAM_DQ[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	oe => \DRAM|new_sdram_controller_0|ALT_INV_oe~_Duplicate_15_q\,
	devoe => ww_devoe,
	o => ww_DRAM_DQ(15));

-- Location: IOIBUF_X31_Y0_N1
\DE10CLK~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DE10CLK,
	o => \DE10CLK~input_o\);

-- Location: PLL_1
\DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|pll1\ : fiftyfivenm_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 3,
	c0_initial => 1,
	c0_low => 2,
	c0_mode => "odd",
	c0_ph => 0,
	c1_high => 3,
	c1_initial => 2,
	c1_low => 2,
	c1_mode => "odd",
	c1_ph => 4,
	c1_use_casc_in => "off",
	c2_high => 0,
	c2_initial => 0,
	c2_low => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 0,
	c3_initial => 0,
	c3_low => 0,
	c3_mode => "bypass",
	c3_ph => 0,
	c3_use_casc_in => "off",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "c1",
	clk0_divide_by => 1,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 2,
	clk0_phase_shift => "0",
	clk1_counter => "c0",
	clk1_divide_by => 1,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 2,
	clk1_phase_shift => "-3000",
	clk2_counter => "unused",
	clk2_divide_by => 0,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 0,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock0",
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 27,
	m => 10,
	m_initial => 2,
	m_ph => 4,
	n => 1,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	self_reset_on_loss_lock => "off",
	simulation_type => "functional",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 250,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	fbin => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|pll1~FBOUT\,
	inclk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|pll1_INCLK_bus\,
	locked => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|locked\,
	fbout => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|pll1~FBOUT\,
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G19
\DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\);

-- Location: LCCOMB_X35_Y3_N8
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|Equal0~0_combout\ = (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(1) & 
-- !\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(1),
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(0),
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|Equal0~0_combout\);

-- Location: LCCOMB_X35_Y7_N22
\estado_pres.e4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estado_pres.e4~0_combout\ = !\writerequest~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writerequest~1_combout\,
	combout => \estado_pres.e4~0_combout\);

-- Location: IOIBUF_X0_Y23_N15
\DE10Reset~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DE10Reset,
	o => \DE10Reset~input_o\);

-- Location: CLKCTRL_G2
\DE10Reset~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \DE10Reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \DE10Reset~inputclkctrl_outclk\);

-- Location: FF_X37_Y7_N1
\estado_pres.e4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~input_o\,
	asdata => \estado_pres.e4~0_combout\,
	clrn => \ALT_INV_DE10Reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_pres.e4~q\);

-- Location: LCCOMB_X38_Y8_N24
\estado_pres.e1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estado_pres.e1~0_combout\ = !\estado_pres.e4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estado_pres.e4~q\,
	combout => \estado_pres.e1~0_combout\);

-- Location: LCCOMB_X35_Y8_N6
\estado_pres.e1~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estado_pres.e1~feeder_combout\ = \estado_pres.e1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \estado_pres.e1~0_combout\,
	combout => \estado_pres.e1~feeder_combout\);

-- Location: FF_X35_Y8_N7
\estado_pres.e1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~input_o\,
	d => \estado_pres.e1~feeder_combout\,
	clrn => \ALT_INV_DE10Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_pres.e1~q\);

-- Location: LCCOMB_X35_Y8_N30
\writerequest~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \writerequest~1_combout\ = (\estado_pres.e4~q\) # (!\estado_pres.e1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estado_pres.e4~q\,
	datad => \estado_pres.e1~q\,
	combout => \writerequest~1_combout\);

-- Location: LCCOMB_X35_Y7_N28
\estado_pres.e3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estado_pres.e3~0_combout\ = !\estado_pres.e1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estado_pres.e1~q\,
	combout => \estado_pres.e3~0_combout\);

-- Location: FF_X32_Y7_N17
\estado_pres.e3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~input_o\,
	asdata => \estado_pres.e3~0_combout\,
	clrn => \ALT_INV_DE10Reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_pres.e3~q\);

-- Location: LCCOMB_X35_Y7_N26
readrequest : fiftyfivenm_lcell_comb
-- Equation(s):
-- \readrequest~combout\ = (\writerequest~1_combout\ & (\readrequest~combout\)) # (!\writerequest~1_combout\ & ((!\estado_pres.e3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \readrequest~combout\,
	datac => \writerequest~1_combout\,
	datad => \estado_pres.e3~q\,
	combout => \readrequest~combout\);

-- Location: LCCOMB_X35_Y7_N6
writerequest : fiftyfivenm_lcell_comb
-- Equation(s):
-- \writerequest~combout\ = (\writerequest~1_combout\ & (\writerequest~combout\)) # (!\writerequest~1_combout\ & ((\estado_pres.e3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writerequest~combout\,
	datac => \writerequest~1_combout\,
	datad => \estado_pres.e3~q\,
	combout => \writerequest~combout\);

-- Location: LCCOMB_X35_Y7_N4
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~4_combout\ = !\writerequest~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \writerequest~combout\,
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~4_combout\);

-- Location: LCCOMB_X35_Y5_N2
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|wr_address~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|wr_address~0_combout\ = \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|wr_address~q\ $ 
-- (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|always2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|wr_address~q\,
	datad => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|always2~0_combout\,
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|wr_address~0_combout\);

-- Location: LCCOMB_X35_Y5_N18
\DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain[1]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain[1]~feeder_combout\);

-- Location: FF_X35_Y5_N19
\DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain[1]~feeder_combout\,
	clrn => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|locked\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain\(1));

-- Location: LCCOMB_X35_Y5_N24
\DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain[0]~feeder_combout\ = \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain\(1),
	combout => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain[0]~feeder_combout\);

-- Location: FF_X35_Y5_N25
\DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain[0]~feeder_combout\,
	clrn => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|locked\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain\(0));

-- Location: LCCOMB_X35_Y5_N0
\DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~feeder_combout\ = \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain\(0),
	combout => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~feeder_combout\);

-- Location: FF_X35_Y5_N1
\DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~feeder_combout\,
	clrn => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|locked\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\);

-- Location: FF_X35_Y5_N3
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|wr_address\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|wr_address~0_combout\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|wr_address~q\);

-- Location: LCCOMB_X35_Y7_N8
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~3_combout\ = (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|wr_address~q\ & 
-- ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(0)) # (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|wr_address~q\,
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(1),
	datad => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(0),
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~3_combout\);

-- Location: LCCOMB_X35_Y7_N24
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~2_combout\ = (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~3_combout\ & ((\writerequest~combout\) # 
-- ((!\DRAM|mm_interconnect_0|avalon_mm_0_avm_m0_translator|read_accepted~q\ & \readrequest~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writerequest~combout\,
	datab => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~3_combout\,
	datac => \DRAM|mm_interconnect_0|avalon_mm_0_avm_m0_translator|read_accepted~q\,
	datad => \readrequest~combout\,
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~2_combout\);

-- Location: FF_X35_Y7_N5
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~4_combout\,
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(43));

-- Location: LCCOMB_X41_Y5_N2
\DRAM|new_sdram_controller_0|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Add0~0_combout\ = \DRAM|new_sdram_controller_0|refresh_counter\(0) $ (VCC)
-- \DRAM|new_sdram_controller_0|Add0~1\ = CARRY(\DRAM|new_sdram_controller_0|refresh_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DRAM|new_sdram_controller_0|refresh_counter\(0),
	datad => VCC,
	combout => \DRAM|new_sdram_controller_0|Add0~0_combout\,
	cout => \DRAM|new_sdram_controller_0|Add0~1\);

-- Location: FF_X41_Y5_N3
\DRAM|new_sdram_controller_0|refresh_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|Add0~0_combout\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|refresh_counter\(0));

-- Location: LCCOMB_X41_Y5_N4
\DRAM|new_sdram_controller_0|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Add0~2_combout\ = (\DRAM|new_sdram_controller_0|refresh_counter\(1) & (\DRAM|new_sdram_controller_0|Add0~1\ & VCC)) # (!\DRAM|new_sdram_controller_0|refresh_counter\(1) & (!\DRAM|new_sdram_controller_0|Add0~1\))
-- \DRAM|new_sdram_controller_0|Add0~3\ = CARRY((!\DRAM|new_sdram_controller_0|refresh_counter\(1) & !\DRAM|new_sdram_controller_0|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DRAM|new_sdram_controller_0|refresh_counter\(1),
	datad => VCC,
	cin => \DRAM|new_sdram_controller_0|Add0~1\,
	combout => \DRAM|new_sdram_controller_0|Add0~2_combout\,
	cout => \DRAM|new_sdram_controller_0|Add0~3\);

-- Location: LCCOMB_X40_Y5_N6
\DRAM|new_sdram_controller_0|refresh_counter~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|refresh_counter~8_combout\ = (!\DRAM|new_sdram_controller_0|Equal0~4_combout\ & \DRAM|new_sdram_controller_0|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DRAM|new_sdram_controller_0|Equal0~4_combout\,
	datad => \DRAM|new_sdram_controller_0|Add0~2_combout\,
	combout => \DRAM|new_sdram_controller_0|refresh_counter~8_combout\);

-- Location: FF_X40_Y5_N7
\DRAM|new_sdram_controller_0|refresh_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|refresh_counter~8_combout\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|refresh_counter\(1));

-- Location: LCCOMB_X41_Y5_N6
\DRAM|new_sdram_controller_0|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Add0~4_combout\ = (\DRAM|new_sdram_controller_0|refresh_counter\(2) & ((GND) # (!\DRAM|new_sdram_controller_0|Add0~3\))) # (!\DRAM|new_sdram_controller_0|refresh_counter\(2) & (\DRAM|new_sdram_controller_0|Add0~3\ $ (GND)))
-- \DRAM|new_sdram_controller_0|Add0~5\ = CARRY((\DRAM|new_sdram_controller_0|refresh_counter\(2)) # (!\DRAM|new_sdram_controller_0|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|refresh_counter\(2),
	datad => VCC,
	cin => \DRAM|new_sdram_controller_0|Add0~3\,
	combout => \DRAM|new_sdram_controller_0|Add0~4_combout\,
	cout => \DRAM|new_sdram_controller_0|Add0~5\);

-- Location: FF_X41_Y5_N7
\DRAM|new_sdram_controller_0|refresh_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|Add0~4_combout\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|refresh_counter\(2));

-- Location: LCCOMB_X41_Y5_N8
\DRAM|new_sdram_controller_0|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Add0~6_combout\ = (\DRAM|new_sdram_controller_0|refresh_counter\(3) & (\DRAM|new_sdram_controller_0|Add0~5\ & VCC)) # (!\DRAM|new_sdram_controller_0|refresh_counter\(3) & (!\DRAM|new_sdram_controller_0|Add0~5\))
-- \DRAM|new_sdram_controller_0|Add0~7\ = CARRY((!\DRAM|new_sdram_controller_0|refresh_counter\(3) & !\DRAM|new_sdram_controller_0|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DRAM|new_sdram_controller_0|refresh_counter\(3),
	datad => VCC,
	cin => \DRAM|new_sdram_controller_0|Add0~5\,
	combout => \DRAM|new_sdram_controller_0|Add0~6_combout\,
	cout => \DRAM|new_sdram_controller_0|Add0~7\);

-- Location: FF_X41_Y5_N9
\DRAM|new_sdram_controller_0|refresh_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|Add0~6_combout\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|refresh_counter\(3));

-- Location: LCCOMB_X41_Y5_N10
\DRAM|new_sdram_controller_0|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Add0~8_combout\ = (\DRAM|new_sdram_controller_0|refresh_counter\(4) & (\DRAM|new_sdram_controller_0|Add0~7\ $ (GND))) # (!\DRAM|new_sdram_controller_0|refresh_counter\(4) & ((GND) # (!\DRAM|new_sdram_controller_0|Add0~7\)))
-- \DRAM|new_sdram_controller_0|Add0~9\ = CARRY((!\DRAM|new_sdram_controller_0|Add0~7\) # (!\DRAM|new_sdram_controller_0|refresh_counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|refresh_counter\(4),
	datad => VCC,
	cin => \DRAM|new_sdram_controller_0|Add0~7\,
	combout => \DRAM|new_sdram_controller_0|Add0~8_combout\,
	cout => \DRAM|new_sdram_controller_0|Add0~9\);

-- Location: LCCOMB_X41_Y5_N30
\DRAM|new_sdram_controller_0|refresh_counter~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|refresh_counter~6_combout\ = (\DRAM|new_sdram_controller_0|Equal0~4_combout\) # (!\DRAM|new_sdram_controller_0|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DRAM|new_sdram_controller_0|Equal0~4_combout\,
	datad => \DRAM|new_sdram_controller_0|Add0~8_combout\,
	combout => \DRAM|new_sdram_controller_0|refresh_counter~6_combout\);

-- Location: FF_X41_Y5_N31
\DRAM|new_sdram_controller_0|refresh_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|refresh_counter~6_combout\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|refresh_counter\(4));

-- Location: LCCOMB_X41_Y5_N12
\DRAM|new_sdram_controller_0|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Add0~10_combout\ = (\DRAM|new_sdram_controller_0|refresh_counter\(5) & (\DRAM|new_sdram_controller_0|Add0~9\ & VCC)) # (!\DRAM|new_sdram_controller_0|refresh_counter\(5) & (!\DRAM|new_sdram_controller_0|Add0~9\))
-- \DRAM|new_sdram_controller_0|Add0~11\ = CARRY((!\DRAM|new_sdram_controller_0|refresh_counter\(5) & !\DRAM|new_sdram_controller_0|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DRAM|new_sdram_controller_0|refresh_counter\(5),
	datad => VCC,
	cin => \DRAM|new_sdram_controller_0|Add0~9\,
	combout => \DRAM|new_sdram_controller_0|Add0~10_combout\,
	cout => \DRAM|new_sdram_controller_0|Add0~11\);

-- Location: LCCOMB_X40_Y5_N30
\DRAM|new_sdram_controller_0|refresh_counter~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|refresh_counter~7_combout\ = (!\DRAM|new_sdram_controller_0|Equal0~4_combout\ & \DRAM|new_sdram_controller_0|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|Equal0~4_combout\,
	datac => \DRAM|new_sdram_controller_0|Add0~10_combout\,
	combout => \DRAM|new_sdram_controller_0|refresh_counter~7_combout\);

-- Location: FF_X40_Y5_N31
\DRAM|new_sdram_controller_0|refresh_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|refresh_counter~7_combout\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|refresh_counter\(5));

-- Location: LCCOMB_X40_Y5_N12
\DRAM|new_sdram_controller_0|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Equal0~2_combout\ = (!\DRAM|new_sdram_controller_0|refresh_counter\(5) & (!\DRAM|new_sdram_controller_0|refresh_counter\(3) & (\DRAM|new_sdram_controller_0|refresh_counter\(4) & 
-- !\DRAM|new_sdram_controller_0|refresh_counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|refresh_counter\(5),
	datab => \DRAM|new_sdram_controller_0|refresh_counter\(3),
	datac => \DRAM|new_sdram_controller_0|refresh_counter\(4),
	datad => \DRAM|new_sdram_controller_0|refresh_counter\(2),
	combout => \DRAM|new_sdram_controller_0|Equal0~2_combout\);

-- Location: LCCOMB_X41_Y5_N14
\DRAM|new_sdram_controller_0|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Add0~12_combout\ = (\DRAM|new_sdram_controller_0|refresh_counter\(6) & ((GND) # (!\DRAM|new_sdram_controller_0|Add0~11\))) # (!\DRAM|new_sdram_controller_0|refresh_counter\(6) & (\DRAM|new_sdram_controller_0|Add0~11\ $ (GND)))
-- \DRAM|new_sdram_controller_0|Add0~13\ = CARRY((\DRAM|new_sdram_controller_0|refresh_counter\(6)) # (!\DRAM|new_sdram_controller_0|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DRAM|new_sdram_controller_0|refresh_counter\(6),
	datad => VCC,
	cin => \DRAM|new_sdram_controller_0|Add0~11\,
	combout => \DRAM|new_sdram_controller_0|Add0~12_combout\,
	cout => \DRAM|new_sdram_controller_0|Add0~13\);

-- Location: LCCOMB_X41_Y5_N0
\DRAM|new_sdram_controller_0|refresh_counter~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|refresh_counter~5_combout\ = (!\DRAM|new_sdram_controller_0|Equal0~4_combout\ & \DRAM|new_sdram_controller_0|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|Equal0~4_combout\,
	datac => \DRAM|new_sdram_controller_0|Add0~12_combout\,
	combout => \DRAM|new_sdram_controller_0|refresh_counter~5_combout\);

-- Location: FF_X41_Y5_N1
\DRAM|new_sdram_controller_0|refresh_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|refresh_counter~5_combout\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|refresh_counter\(6));

-- Location: LCCOMB_X41_Y5_N16
\DRAM|new_sdram_controller_0|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Add0~14_combout\ = (\DRAM|new_sdram_controller_0|refresh_counter\(7) & (\DRAM|new_sdram_controller_0|Add0~13\ & VCC)) # (!\DRAM|new_sdram_controller_0|refresh_counter\(7) & (!\DRAM|new_sdram_controller_0|Add0~13\))
-- \DRAM|new_sdram_controller_0|Add0~15\ = CARRY((!\DRAM|new_sdram_controller_0|refresh_counter\(7) & !\DRAM|new_sdram_controller_0|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DRAM|new_sdram_controller_0|refresh_counter\(7),
	datad => VCC,
	cin => \DRAM|new_sdram_controller_0|Add0~13\,
	combout => \DRAM|new_sdram_controller_0|Add0~14_combout\,
	cout => \DRAM|new_sdram_controller_0|Add0~15\);

-- Location: LCCOMB_X40_Y5_N22
\DRAM|new_sdram_controller_0|refresh_counter~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|refresh_counter~4_combout\ = (!\DRAM|new_sdram_controller_0|Equal0~4_combout\ & \DRAM|new_sdram_controller_0|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DRAM|new_sdram_controller_0|Equal0~4_combout\,
	datad => \DRAM|new_sdram_controller_0|Add0~14_combout\,
	combout => \DRAM|new_sdram_controller_0|refresh_counter~4_combout\);

-- Location: FF_X40_Y5_N23
\DRAM|new_sdram_controller_0|refresh_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|refresh_counter~4_combout\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|refresh_counter\(7));

-- Location: LCCOMB_X41_Y5_N18
\DRAM|new_sdram_controller_0|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Add0~16_combout\ = (\DRAM|new_sdram_controller_0|refresh_counter\(8) & (\DRAM|new_sdram_controller_0|Add0~15\ $ (GND))) # (!\DRAM|new_sdram_controller_0|refresh_counter\(8) & ((GND) # (!\DRAM|new_sdram_controller_0|Add0~15\)))
-- \DRAM|new_sdram_controller_0|Add0~17\ = CARRY((!\DRAM|new_sdram_controller_0|Add0~15\) # (!\DRAM|new_sdram_controller_0|refresh_counter\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|refresh_counter\(8),
	datad => VCC,
	cin => \DRAM|new_sdram_controller_0|Add0~15\,
	combout => \DRAM|new_sdram_controller_0|Add0~16_combout\,
	cout => \DRAM|new_sdram_controller_0|Add0~17\);

-- Location: LCCOMB_X40_Y5_N16
\DRAM|new_sdram_controller_0|refresh_counter[8]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|refresh_counter[8]~12_combout\ = !\DRAM|new_sdram_controller_0|Add0~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DRAM|new_sdram_controller_0|Add0~16_combout\,
	combout => \DRAM|new_sdram_controller_0|refresh_counter[8]~12_combout\);

-- Location: FF_X40_Y5_N17
\DRAM|new_sdram_controller_0|refresh_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|refresh_counter[8]~12_combout\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|refresh_counter\(8));

-- Location: LCCOMB_X41_Y5_N20
\DRAM|new_sdram_controller_0|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Add0~18_combout\ = (\DRAM|new_sdram_controller_0|refresh_counter\(9) & (!\DRAM|new_sdram_controller_0|Add0~17\)) # (!\DRAM|new_sdram_controller_0|refresh_counter\(9) & (\DRAM|new_sdram_controller_0|Add0~17\ & VCC))
-- \DRAM|new_sdram_controller_0|Add0~19\ = CARRY((\DRAM|new_sdram_controller_0|refresh_counter\(9) & !\DRAM|new_sdram_controller_0|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|refresh_counter\(9),
	datad => VCC,
	cin => \DRAM|new_sdram_controller_0|Add0~17\,
	combout => \DRAM|new_sdram_controller_0|Add0~18_combout\,
	cout => \DRAM|new_sdram_controller_0|Add0~19\);

-- Location: LCCOMB_X40_Y5_N10
\DRAM|new_sdram_controller_0|refresh_counter[9]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|refresh_counter[9]~11_combout\ = !\DRAM|new_sdram_controller_0|Add0~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DRAM|new_sdram_controller_0|Add0~18_combout\,
	combout => \DRAM|new_sdram_controller_0|refresh_counter[9]~11_combout\);

-- Location: FF_X40_Y5_N11
\DRAM|new_sdram_controller_0|refresh_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|refresh_counter[9]~11_combout\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|refresh_counter\(9));

-- Location: LCCOMB_X40_Y5_N20
\DRAM|new_sdram_controller_0|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Equal0~1_combout\ = (!\DRAM|new_sdram_controller_0|refresh_counter\(7) & (\DRAM|new_sdram_controller_0|refresh_counter\(8) & (!\DRAM|new_sdram_controller_0|refresh_counter\(6) & 
-- \DRAM|new_sdram_controller_0|refresh_counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|refresh_counter\(7),
	datab => \DRAM|new_sdram_controller_0|refresh_counter\(8),
	datac => \DRAM|new_sdram_controller_0|refresh_counter\(6),
	datad => \DRAM|new_sdram_controller_0|refresh_counter\(9),
	combout => \DRAM|new_sdram_controller_0|Equal0~1_combout\);

-- Location: LCCOMB_X40_Y5_N4
\DRAM|new_sdram_controller_0|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Equal0~3_combout\ = (!\DRAM|new_sdram_controller_0|refresh_counter\(1) & !\DRAM|new_sdram_controller_0|refresh_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|refresh_counter\(1),
	datad => \DRAM|new_sdram_controller_0|refresh_counter\(0),
	combout => \DRAM|new_sdram_controller_0|Equal0~3_combout\);

-- Location: LCCOMB_X41_Y5_N22
\DRAM|new_sdram_controller_0|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Add0~20_combout\ = (\DRAM|new_sdram_controller_0|refresh_counter\(10) & (\DRAM|new_sdram_controller_0|Add0~19\ $ (GND))) # (!\DRAM|new_sdram_controller_0|refresh_counter\(10) & ((GND) # 
-- (!\DRAM|new_sdram_controller_0|Add0~19\)))
-- \DRAM|new_sdram_controller_0|Add0~21\ = CARRY((!\DRAM|new_sdram_controller_0|Add0~19\) # (!\DRAM|new_sdram_controller_0|refresh_counter\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DRAM|new_sdram_controller_0|refresh_counter\(10),
	datad => VCC,
	cin => \DRAM|new_sdram_controller_0|Add0~19\,
	combout => \DRAM|new_sdram_controller_0|Add0~20_combout\,
	cout => \DRAM|new_sdram_controller_0|Add0~21\);

-- Location: LCCOMB_X40_Y5_N18
\DRAM|new_sdram_controller_0|refresh_counter~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|refresh_counter~1_combout\ = (\DRAM|new_sdram_controller_0|Equal0~4_combout\) # (!\DRAM|new_sdram_controller_0|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DRAM|new_sdram_controller_0|Equal0~4_combout\,
	datad => \DRAM|new_sdram_controller_0|Add0~20_combout\,
	combout => \DRAM|new_sdram_controller_0|refresh_counter~1_combout\);

-- Location: FF_X40_Y5_N19
\DRAM|new_sdram_controller_0|refresh_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|refresh_counter~1_combout\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|refresh_counter\(10));

-- Location: LCCOMB_X41_Y5_N24
\DRAM|new_sdram_controller_0|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Add0~22_combout\ = (\DRAM|new_sdram_controller_0|refresh_counter\(11) & (\DRAM|new_sdram_controller_0|Add0~21\ & VCC)) # (!\DRAM|new_sdram_controller_0|refresh_counter\(11) & (!\DRAM|new_sdram_controller_0|Add0~21\))
-- \DRAM|new_sdram_controller_0|Add0~23\ = CARRY((!\DRAM|new_sdram_controller_0|refresh_counter\(11) & !\DRAM|new_sdram_controller_0|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|refresh_counter\(11),
	datad => VCC,
	cin => \DRAM|new_sdram_controller_0|Add0~21\,
	combout => \DRAM|new_sdram_controller_0|Add0~22_combout\,
	cout => \DRAM|new_sdram_controller_0|Add0~23\);

-- Location: LCCOMB_X40_Y5_N14
\DRAM|new_sdram_controller_0|refresh_counter~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|refresh_counter~3_combout\ = (!\DRAM|new_sdram_controller_0|Equal0~4_combout\ & \DRAM|new_sdram_controller_0|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DRAM|new_sdram_controller_0|Equal0~4_combout\,
	datad => \DRAM|new_sdram_controller_0|Add0~22_combout\,
	combout => \DRAM|new_sdram_controller_0|refresh_counter~3_combout\);

-- Location: FF_X40_Y5_N15
\DRAM|new_sdram_controller_0|refresh_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|refresh_counter~3_combout\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|refresh_counter\(11));

-- Location: LCCOMB_X41_Y5_N26
\DRAM|new_sdram_controller_0|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Add0~24_combout\ = (\DRAM|new_sdram_controller_0|refresh_counter\(12) & ((GND) # (!\DRAM|new_sdram_controller_0|Add0~23\))) # (!\DRAM|new_sdram_controller_0|refresh_counter\(12) & (\DRAM|new_sdram_controller_0|Add0~23\ $ 
-- (GND)))
-- \DRAM|new_sdram_controller_0|Add0~25\ = CARRY((\DRAM|new_sdram_controller_0|refresh_counter\(12)) # (!\DRAM|new_sdram_controller_0|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DRAM|new_sdram_controller_0|refresh_counter\(12),
	datad => VCC,
	cin => \DRAM|new_sdram_controller_0|Add0~23\,
	combout => \DRAM|new_sdram_controller_0|Add0~24_combout\,
	cout => \DRAM|new_sdram_controller_0|Add0~25\);

-- Location: LCCOMB_X40_Y5_N24
\DRAM|new_sdram_controller_0|refresh_counter~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|refresh_counter~2_combout\ = (!\DRAM|new_sdram_controller_0|Equal0~4_combout\ & \DRAM|new_sdram_controller_0|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DRAM|new_sdram_controller_0|Equal0~4_combout\,
	datad => \DRAM|new_sdram_controller_0|Add0~24_combout\,
	combout => \DRAM|new_sdram_controller_0|refresh_counter~2_combout\);

-- Location: FF_X40_Y5_N25
\DRAM|new_sdram_controller_0|refresh_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|refresh_counter~2_combout\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|refresh_counter\(12));

-- Location: LCCOMB_X41_Y5_N28
\DRAM|new_sdram_controller_0|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Add0~26_combout\ = \DRAM|new_sdram_controller_0|Add0~25\ $ (\DRAM|new_sdram_controller_0|refresh_counter\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \DRAM|new_sdram_controller_0|refresh_counter\(13),
	cin => \DRAM|new_sdram_controller_0|Add0~25\,
	combout => \DRAM|new_sdram_controller_0|Add0~26_combout\);

-- Location: LCCOMB_X40_Y5_N8
\DRAM|new_sdram_controller_0|refresh_counter~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|refresh_counter~0_combout\ = (\DRAM|new_sdram_controller_0|Equal0~4_combout\) # (!\DRAM|new_sdram_controller_0|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DRAM|new_sdram_controller_0|Equal0~4_combout\,
	datad => \DRAM|new_sdram_controller_0|Add0~26_combout\,
	combout => \DRAM|new_sdram_controller_0|refresh_counter~0_combout\);

-- Location: FF_X40_Y5_N9
\DRAM|new_sdram_controller_0|refresh_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|refresh_counter~0_combout\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|refresh_counter\(13));

-- Location: LCCOMB_X40_Y5_N28
\DRAM|new_sdram_controller_0|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Equal0~0_combout\ = (\DRAM|new_sdram_controller_0|refresh_counter\(13) & (!\DRAM|new_sdram_controller_0|refresh_counter\(12) & (!\DRAM|new_sdram_controller_0|refresh_counter\(11) & 
-- \DRAM|new_sdram_controller_0|refresh_counter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|refresh_counter\(13),
	datab => \DRAM|new_sdram_controller_0|refresh_counter\(12),
	datac => \DRAM|new_sdram_controller_0|refresh_counter\(11),
	datad => \DRAM|new_sdram_controller_0|refresh_counter\(10),
	combout => \DRAM|new_sdram_controller_0|Equal0~0_combout\);

-- Location: LCCOMB_X40_Y5_N26
\DRAM|new_sdram_controller_0|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Equal0~4_combout\ = (\DRAM|new_sdram_controller_0|Equal0~2_combout\ & (\DRAM|new_sdram_controller_0|Equal0~1_combout\ & (\DRAM|new_sdram_controller_0|Equal0~3_combout\ & \DRAM|new_sdram_controller_0|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|Equal0~2_combout\,
	datab => \DRAM|new_sdram_controller_0|Equal0~1_combout\,
	datac => \DRAM|new_sdram_controller_0|Equal0~3_combout\,
	datad => \DRAM|new_sdram_controller_0|Equal0~0_combout\,
	combout => \DRAM|new_sdram_controller_0|Equal0~4_combout\);

-- Location: LCCOMB_X31_Y5_N18
\DRAM|new_sdram_controller_0|i_next.000~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|i_next.000~0_combout\ = (\DRAM|new_sdram_controller_0|i_next.000~q\) # ((!\DRAM|new_sdram_controller_0|i_state.011~q\ & (!\DRAM|new_sdram_controller_0|i_state.101~q\ & \DRAM|new_sdram_controller_0|i_state.000~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|i_state.011~q\,
	datab => \DRAM|new_sdram_controller_0|i_state.101~q\,
	datac => \DRAM|new_sdram_controller_0|i_next.000~q\,
	datad => \DRAM|new_sdram_controller_0|i_state.000~q\,
	combout => \DRAM|new_sdram_controller_0|i_next.000~0_combout\);

-- Location: FF_X31_Y5_N19
\DRAM|new_sdram_controller_0|i_next.000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|i_next.000~0_combout\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|i_next.000~q\);

-- Location: LCCOMB_X31_Y5_N24
\DRAM|new_sdram_controller_0|Selector7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector7~0_combout\ = (\DRAM|new_sdram_controller_0|Equal0~4_combout\ & (((\DRAM|new_sdram_controller_0|i_next.000~q\)) # (!\DRAM|new_sdram_controller_0|Selector9~0_combout\))) # 
-- (!\DRAM|new_sdram_controller_0|Equal0~4_combout\ & (\DRAM|new_sdram_controller_0|i_state.000~q\ & ((\DRAM|new_sdram_controller_0|i_next.000~q\) # (!\DRAM|new_sdram_controller_0|Selector9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|Equal0~4_combout\,
	datab => \DRAM|new_sdram_controller_0|Selector9~0_combout\,
	datac => \DRAM|new_sdram_controller_0|i_state.000~q\,
	datad => \DRAM|new_sdram_controller_0|i_next.000~q\,
	combout => \DRAM|new_sdram_controller_0|Selector7~0_combout\);

-- Location: FF_X31_Y5_N25
\DRAM|new_sdram_controller_0|i_state.000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|Selector7~0_combout\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|i_state.000~q\);

-- Location: LCCOMB_X32_Y5_N18
\DRAM|new_sdram_controller_0|WideOr6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|WideOr6~0_combout\ = (!\DRAM|new_sdram_controller_0|i_state.011~q\ & \DRAM|new_sdram_controller_0|i_state.000~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DRAM|new_sdram_controller_0|i_state.011~q\,
	datad => \DRAM|new_sdram_controller_0|i_state.000~q\,
	combout => \DRAM|new_sdram_controller_0|WideOr6~0_combout\);

-- Location: LCCOMB_X32_Y5_N14
\DRAM|new_sdram_controller_0|Selector6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector6~0_combout\ = (\DRAM|new_sdram_controller_0|i_state.010~q\ & (!\DRAM|new_sdram_controller_0|i_refs\(0))) # (!\DRAM|new_sdram_controller_0|i_state.010~q\ & (\DRAM|new_sdram_controller_0|i_refs\(0) & 
-- \DRAM|new_sdram_controller_0|i_state.000~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DRAM|new_sdram_controller_0|i_state.010~q\,
	datac => \DRAM|new_sdram_controller_0|i_refs\(0),
	datad => \DRAM|new_sdram_controller_0|i_state.000~q\,
	combout => \DRAM|new_sdram_controller_0|Selector6~0_combout\);

-- Location: FF_X32_Y5_N15
\DRAM|new_sdram_controller_0|i_refs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|Selector6~0_combout\,
	ena => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|i_refs\(0));

-- Location: LCCOMB_X32_Y5_N28
\DRAM|new_sdram_controller_0|Selector5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector5~0_combout\ = (\DRAM|new_sdram_controller_0|i_state.010~q\ & ((\DRAM|new_sdram_controller_0|i_refs\(0) $ (\DRAM|new_sdram_controller_0|i_refs\(1))))) # (!\DRAM|new_sdram_controller_0|i_state.010~q\ & 
-- (\DRAM|new_sdram_controller_0|i_state.000~q\ & ((\DRAM|new_sdram_controller_0|i_refs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|i_state.000~q\,
	datab => \DRAM|new_sdram_controller_0|i_refs\(0),
	datac => \DRAM|new_sdram_controller_0|i_refs\(1),
	datad => \DRAM|new_sdram_controller_0|i_state.010~q\,
	combout => \DRAM|new_sdram_controller_0|Selector5~0_combout\);

-- Location: FF_X32_Y5_N29
\DRAM|new_sdram_controller_0|i_refs[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|Selector5~0_combout\,
	ena => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|i_refs\(1));

-- Location: LCCOMB_X32_Y5_N12
\DRAM|new_sdram_controller_0|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Add1~0_combout\ = (\DRAM|new_sdram_controller_0|i_refs\(0) & \DRAM|new_sdram_controller_0|i_refs\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DRAM|new_sdram_controller_0|i_refs\(0),
	datad => \DRAM|new_sdram_controller_0|i_refs\(1),
	combout => \DRAM|new_sdram_controller_0|Add1~0_combout\);

-- Location: LCCOMB_X32_Y5_N22
\DRAM|new_sdram_controller_0|Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector4~0_combout\ = (\DRAM|new_sdram_controller_0|i_state.010~q\ & (\DRAM|new_sdram_controller_0|Add1~0_combout\ $ ((\DRAM|new_sdram_controller_0|i_refs\(2))))) # (!\DRAM|new_sdram_controller_0|i_state.010~q\ & 
-- (((\DRAM|new_sdram_controller_0|i_refs\(2) & \DRAM|new_sdram_controller_0|i_state.000~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|Add1~0_combout\,
	datab => \DRAM|new_sdram_controller_0|i_state.010~q\,
	datac => \DRAM|new_sdram_controller_0|i_refs\(2),
	datad => \DRAM|new_sdram_controller_0|i_state.000~q\,
	combout => \DRAM|new_sdram_controller_0|Selector4~0_combout\);

-- Location: FF_X32_Y5_N23
\DRAM|new_sdram_controller_0|i_refs[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|Selector4~0_combout\,
	ena => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|i_refs\(2));

-- Location: LCCOMB_X32_Y5_N24
\DRAM|new_sdram_controller_0|Selector8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector8~0_combout\ = (!\DRAM|new_sdram_controller_0|i_state.000~q\ & \DRAM|new_sdram_controller_0|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DRAM|new_sdram_controller_0|i_state.000~q\,
	datad => \DRAM|new_sdram_controller_0|Equal0~4_combout\,
	combout => \DRAM|new_sdram_controller_0|Selector8~0_combout\);

-- Location: FF_X32_Y5_N25
\DRAM|new_sdram_controller_0|i_state.001\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|Selector8~0_combout\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|i_state.001~q\);

-- Location: LCCOMB_X32_Y5_N10
\DRAM|new_sdram_controller_0|Selector16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector16~0_combout\ = (\DRAM|new_sdram_controller_0|i_state.001~q\) # ((\DRAM|new_sdram_controller_0|i_state.010~q\ & ((!\DRAM|new_sdram_controller_0|i_refs\(2)) # (!\DRAM|new_sdram_controller_0|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|Add1~0_combout\,
	datab => \DRAM|new_sdram_controller_0|i_state.010~q\,
	datac => \DRAM|new_sdram_controller_0|i_refs\(2),
	datad => \DRAM|new_sdram_controller_0|i_state.001~q\,
	combout => \DRAM|new_sdram_controller_0|Selector16~0_combout\);

-- Location: LCCOMB_X32_Y5_N6
\DRAM|new_sdram_controller_0|Selector16~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector16~1_combout\ = (\DRAM|new_sdram_controller_0|Selector16~0_combout\) # ((\DRAM|new_sdram_controller_0|i_next.010~q\ & ((\DRAM|new_sdram_controller_0|i_state.101~q\) # 
-- (!\DRAM|new_sdram_controller_0|WideOr6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|i_state.101~q\,
	datab => \DRAM|new_sdram_controller_0|WideOr6~0_combout\,
	datac => \DRAM|new_sdram_controller_0|i_next.010~q\,
	datad => \DRAM|new_sdram_controller_0|Selector16~0_combout\,
	combout => \DRAM|new_sdram_controller_0|Selector16~1_combout\);

-- Location: FF_X32_Y5_N7
\DRAM|new_sdram_controller_0|i_next.010\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|Selector16~1_combout\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|i_next.010~q\);

-- Location: LCCOMB_X31_Y5_N28
\DRAM|new_sdram_controller_0|Selector9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector9~1_combout\ = (\DRAM|new_sdram_controller_0|i_state.011~q\ & (!\DRAM|new_sdram_controller_0|i_count\(1) & (!\DRAM|new_sdram_controller_0|i_count\(2) & \DRAM|new_sdram_controller_0|i_next.010~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|i_state.011~q\,
	datab => \DRAM|new_sdram_controller_0|i_count\(1),
	datac => \DRAM|new_sdram_controller_0|i_count\(2),
	datad => \DRAM|new_sdram_controller_0|i_next.010~q\,
	combout => \DRAM|new_sdram_controller_0|Selector9~1_combout\);

-- Location: FF_X31_Y5_N29
\DRAM|new_sdram_controller_0|i_state.010\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|Selector9~1_combout\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|i_state.010~q\);

-- Location: LCCOMB_X32_Y5_N20
\DRAM|new_sdram_controller_0|Selector18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector18~0_combout\ = (\DRAM|new_sdram_controller_0|i_next.111~q\ & ((\DRAM|new_sdram_controller_0|i_state.101~q\) # ((\DRAM|new_sdram_controller_0|i_state.011~q\) # (!\DRAM|new_sdram_controller_0|i_state.000~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|i_state.101~q\,
	datab => \DRAM|new_sdram_controller_0|i_state.011~q\,
	datac => \DRAM|new_sdram_controller_0|i_next.111~q\,
	datad => \DRAM|new_sdram_controller_0|i_state.000~q\,
	combout => \DRAM|new_sdram_controller_0|Selector18~0_combout\);

-- Location: LCCOMB_X32_Y5_N8
\DRAM|new_sdram_controller_0|Selector18~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector18~1_combout\ = (\DRAM|new_sdram_controller_0|Selector18~0_combout\) # ((\DRAM|new_sdram_controller_0|Add1~0_combout\ & (\DRAM|new_sdram_controller_0|i_state.010~q\ & \DRAM|new_sdram_controller_0|i_refs\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|Add1~0_combout\,
	datab => \DRAM|new_sdram_controller_0|i_state.010~q\,
	datac => \DRAM|new_sdram_controller_0|i_refs\(2),
	datad => \DRAM|new_sdram_controller_0|Selector18~0_combout\,
	combout => \DRAM|new_sdram_controller_0|Selector18~1_combout\);

-- Location: FF_X32_Y5_N9
\DRAM|new_sdram_controller_0|i_next.111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|Selector18~1_combout\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|i_next.111~q\);

-- Location: LCCOMB_X31_Y5_N20
\DRAM|new_sdram_controller_0|Selector12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector12~0_combout\ = (!\DRAM|new_sdram_controller_0|i_count\(2) & (!\DRAM|new_sdram_controller_0|i_count\(1) & (\DRAM|new_sdram_controller_0|i_next.111~q\ & \DRAM|new_sdram_controller_0|i_state.011~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|i_count\(2),
	datab => \DRAM|new_sdram_controller_0|i_count\(1),
	datac => \DRAM|new_sdram_controller_0|i_next.111~q\,
	datad => \DRAM|new_sdram_controller_0|i_state.011~q\,
	combout => \DRAM|new_sdram_controller_0|Selector12~0_combout\);

-- Location: FF_X31_Y5_N21
\DRAM|new_sdram_controller_0|i_state.111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|Selector12~0_combout\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|i_state.111~q\);

-- Location: LCCOMB_X31_Y5_N8
\DRAM|new_sdram_controller_0|Selector10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector10~0_combout\ = (\DRAM|new_sdram_controller_0|i_state.011~q\ & ((\DRAM|new_sdram_controller_0|i_count\(1)) # (\DRAM|new_sdram_controller_0|i_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DRAM|new_sdram_controller_0|i_count\(1),
	datac => \DRAM|new_sdram_controller_0|i_count\(2),
	datad => \DRAM|new_sdram_controller_0|i_state.011~q\,
	combout => \DRAM|new_sdram_controller_0|Selector10~0_combout\);

-- Location: LCCOMB_X31_Y5_N6
\DRAM|new_sdram_controller_0|Selector10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector10~1_combout\ = (\DRAM|new_sdram_controller_0|i_state.010~q\) # ((\DRAM|new_sdram_controller_0|i_state.111~q\) # ((\DRAM|new_sdram_controller_0|Selector10~0_combout\) # (\DRAM|new_sdram_controller_0|i_state.001~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|i_state.010~q\,
	datab => \DRAM|new_sdram_controller_0|i_state.111~q\,
	datac => \DRAM|new_sdram_controller_0|Selector10~0_combout\,
	datad => \DRAM|new_sdram_controller_0|i_state.001~q\,
	combout => \DRAM|new_sdram_controller_0|Selector10~1_combout\);

-- Location: FF_X31_Y5_N7
\DRAM|new_sdram_controller_0|i_state.011\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|Selector10~1_combout\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|i_state.011~q\);

-- Location: LCCOMB_X31_Y5_N16
\DRAM|new_sdram_controller_0|Selector13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector13~0_combout\ = (!\DRAM|new_sdram_controller_0|i_state.101~q\ & \DRAM|new_sdram_controller_0|i_state.000~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DRAM|new_sdram_controller_0|i_state.101~q\,
	datad => \DRAM|new_sdram_controller_0|i_state.000~q\,
	combout => \DRAM|new_sdram_controller_0|Selector13~0_combout\);

-- Location: LCCOMB_X31_Y5_N10
\DRAM|new_sdram_controller_0|Selector13~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector13~1_combout\ = ((\DRAM|new_sdram_controller_0|i_state.011~q\ & ((\DRAM|new_sdram_controller_0|i_count\(1)) # (\DRAM|new_sdram_controller_0|i_count\(0))))) # (!\DRAM|new_sdram_controller_0|Selector13~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|i_state.011~q\,
	datab => \DRAM|new_sdram_controller_0|i_count\(1),
	datac => \DRAM|new_sdram_controller_0|i_count\(0),
	datad => \DRAM|new_sdram_controller_0|Selector13~0_combout\,
	combout => \DRAM|new_sdram_controller_0|Selector13~1_combout\);

-- Location: LCCOMB_X31_Y5_N30
\DRAM|new_sdram_controller_0|Selector13~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector13~2_combout\ = (\DRAM|new_sdram_controller_0|i_state.010~q\) # ((\DRAM|new_sdram_controller_0|i_state.111~q\) # ((\DRAM|new_sdram_controller_0|Selector13~1_combout\ & \DRAM|new_sdram_controller_0|i_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|Selector13~1_combout\,
	datab => \DRAM|new_sdram_controller_0|i_state.010~q\,
	datac => \DRAM|new_sdram_controller_0|i_count\(2),
	datad => \DRAM|new_sdram_controller_0|i_state.111~q\,
	combout => \DRAM|new_sdram_controller_0|Selector13~2_combout\);

-- Location: FF_X31_Y5_N31
\DRAM|new_sdram_controller_0|i_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|Selector13~2_combout\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|i_count\(2));

-- Location: LCCOMB_X31_Y5_N12
\DRAM|new_sdram_controller_0|Selector15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector15~0_combout\ = (\DRAM|new_sdram_controller_0|i_state.011~q\ & (\DRAM|new_sdram_controller_0|i_count\(0) $ (((\DRAM|new_sdram_controller_0|i_count\(1)) # (\DRAM|new_sdram_controller_0|i_count\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|i_count\(0),
	datab => \DRAM|new_sdram_controller_0|i_count\(1),
	datac => \DRAM|new_sdram_controller_0|i_count\(2),
	datad => \DRAM|new_sdram_controller_0|i_state.011~q\,
	combout => \DRAM|new_sdram_controller_0|Selector15~0_combout\);

-- Location: LCCOMB_X31_Y5_N22
\DRAM|new_sdram_controller_0|Selector15~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector15~1_combout\ = (\DRAM|new_sdram_controller_0|i_count\(0) & ((\DRAM|new_sdram_controller_0|i_state.101~q\) # (!\DRAM|new_sdram_controller_0|i_state.000~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DRAM|new_sdram_controller_0|i_state.101~q\,
	datac => \DRAM|new_sdram_controller_0|i_count\(0),
	datad => \DRAM|new_sdram_controller_0|i_state.000~q\,
	combout => \DRAM|new_sdram_controller_0|Selector15~1_combout\);

-- Location: LCCOMB_X31_Y5_N26
\DRAM|new_sdram_controller_0|Selector15~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector15~2_combout\ = (\DRAM|new_sdram_controller_0|Selector15~0_combout\) # ((\DRAM|new_sdram_controller_0|i_state.010~q\) # ((\DRAM|new_sdram_controller_0|Selector15~1_combout\) # 
-- (\DRAM|new_sdram_controller_0|i_state.001~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|Selector15~0_combout\,
	datab => \DRAM|new_sdram_controller_0|i_state.010~q\,
	datac => \DRAM|new_sdram_controller_0|Selector15~1_combout\,
	datad => \DRAM|new_sdram_controller_0|i_state.001~q\,
	combout => \DRAM|new_sdram_controller_0|Selector15~2_combout\);

-- Location: FF_X31_Y5_N27
\DRAM|new_sdram_controller_0|i_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|Selector15~2_combout\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|i_count\(0));

-- Location: LCCOMB_X31_Y5_N4
\DRAM|new_sdram_controller_0|Selector14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector14~0_combout\ = (\DRAM|new_sdram_controller_0|i_count\(1) & (((\DRAM|new_sdram_controller_0|i_count\(0) & \DRAM|new_sdram_controller_0|Selector10~0_combout\)) # (!\DRAM|new_sdram_controller_0|Selector13~0_combout\))) # 
-- (!\DRAM|new_sdram_controller_0|i_count\(1) & (!\DRAM|new_sdram_controller_0|i_count\(0) & (\DRAM|new_sdram_controller_0|Selector10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|i_count\(0),
	datab => \DRAM|new_sdram_controller_0|Selector10~0_combout\,
	datac => \DRAM|new_sdram_controller_0|i_count\(1),
	datad => \DRAM|new_sdram_controller_0|Selector13~0_combout\,
	combout => \DRAM|new_sdram_controller_0|Selector14~0_combout\);

-- Location: FF_X31_Y5_N5
\DRAM|new_sdram_controller_0|i_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|Selector14~0_combout\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|i_count\(1));

-- Location: LCCOMB_X31_Y5_N2
\DRAM|new_sdram_controller_0|Selector9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector9~0_combout\ = (!\DRAM|new_sdram_controller_0|i_count\(1) & (!\DRAM|new_sdram_controller_0|i_count\(2) & \DRAM|new_sdram_controller_0|i_state.011~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DRAM|new_sdram_controller_0|i_count\(1),
	datac => \DRAM|new_sdram_controller_0|i_count\(2),
	datad => \DRAM|new_sdram_controller_0|i_state.011~q\,
	combout => \DRAM|new_sdram_controller_0|Selector9~0_combout\);

-- Location: LCCOMB_X31_Y5_N0
\DRAM|new_sdram_controller_0|Selector17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector17~0_combout\ = (\DRAM|new_sdram_controller_0|i_state.111~q\) # ((\DRAM|new_sdram_controller_0|i_next.101~q\ & ((\DRAM|new_sdram_controller_0|i_state.101~q\) # (!\DRAM|new_sdram_controller_0|WideOr6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|i_state.111~q\,
	datab => \DRAM|new_sdram_controller_0|i_state.101~q\,
	datac => \DRAM|new_sdram_controller_0|i_next.101~q\,
	datad => \DRAM|new_sdram_controller_0|WideOr6~0_combout\,
	combout => \DRAM|new_sdram_controller_0|Selector17~0_combout\);

-- Location: FF_X31_Y5_N1
\DRAM|new_sdram_controller_0|i_next.101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|Selector17~0_combout\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|i_next.101~q\);

-- Location: LCCOMB_X31_Y5_N14
\DRAM|new_sdram_controller_0|i_state.101~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|i_state.101~0_combout\ = (\DRAM|new_sdram_controller_0|i_state.101~q\) # ((\DRAM|new_sdram_controller_0|Selector9~0_combout\ & \DRAM|new_sdram_controller_0|i_next.101~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DRAM|new_sdram_controller_0|Selector9~0_combout\,
	datac => \DRAM|new_sdram_controller_0|i_state.101~q\,
	datad => \DRAM|new_sdram_controller_0|i_next.101~q\,
	combout => \DRAM|new_sdram_controller_0|i_state.101~0_combout\);

-- Location: FF_X31_Y5_N15
\DRAM|new_sdram_controller_0|i_state.101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|i_state.101~0_combout\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|i_state.101~q\);

-- Location: LCCOMB_X32_Y3_N2
\DRAM|new_sdram_controller_0|init_done~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|init_done~0_combout\ = (\DRAM|new_sdram_controller_0|init_done~q\) # (\DRAM|new_sdram_controller_0|i_state.101~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DRAM|new_sdram_controller_0|init_done~q\,
	datad => \DRAM|new_sdram_controller_0|i_state.101~q\,
	combout => \DRAM|new_sdram_controller_0|init_done~0_combout\);

-- Location: FF_X32_Y3_N3
\DRAM|new_sdram_controller_0|init_done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|init_done~0_combout\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|init_done~q\);

-- Location: LCCOMB_X31_Y4_N20
\DRAM|new_sdram_controller_0|Selector30~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector30~2_combout\ = (\DRAM|new_sdram_controller_0|init_done~q\ & (!\DRAM|new_sdram_controller_0|m_state.000000001~q\ & \DRAM|new_sdram_controller_0|refresh_request~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|init_done~q\,
	datac => \DRAM|new_sdram_controller_0|m_state.000000001~q\,
	datad => \DRAM|new_sdram_controller_0|refresh_request~q\,
	combout => \DRAM|new_sdram_controller_0|Selector30~2_combout\);

-- Location: LCCOMB_X35_Y3_N30
\DRAM|new_sdram_controller_0|active_cs_n~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|active_cs_n~0_combout\ = ((\DRAM|new_sdram_controller_0|m_state.000000001~q\) # ((!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(0) & 
-- !\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(1)))) # (!\DRAM|new_sdram_controller_0|init_done~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(0),
	datab => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(1),
	datac => \DRAM|new_sdram_controller_0|init_done~q\,
	datad => \DRAM|new_sdram_controller_0|m_state.000000001~q\,
	combout => \DRAM|new_sdram_controller_0|active_cs_n~0_combout\);

-- Location: LCCOMB_X35_Y4_N22
\DRAM|new_sdram_controller_0|active_cs_n~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|active_cs_n~1_combout\ = (\DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\ & ((\DRAM|new_sdram_controller_0|Selector30~2_combout\) # ((\DRAM|new_sdram_controller_0|active_cs_n~q\ & 
-- \DRAM|new_sdram_controller_0|active_cs_n~0_combout\)))) # (!\DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\ & (((\DRAM|new_sdram_controller_0|active_cs_n~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|Selector30~2_combout\,
	datab => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	datac => \DRAM|new_sdram_controller_0|active_cs_n~q\,
	datad => \DRAM|new_sdram_controller_0|active_cs_n~0_combout\,
	combout => \DRAM|new_sdram_controller_0|active_cs_n~1_combout\);

-- Location: FF_X35_Y4_N23
\DRAM|new_sdram_controller_0|active_cs_n\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|active_cs_n~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|active_cs_n~q\);

-- Location: CLKCTRL_G15
\estado_pres.e1~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \estado_pres.e1~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \estado_pres.e1~clkctrl_outclk\);

-- Location: LCCOMB_X37_Y7_N6
\Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = \fsm:addressCounter[0]~combout\ $ (VCC)
-- \Add0~1\ = CARRY(\fsm:addressCounter[0]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm:addressCounter[0]~combout\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X39_Y7_N2
\Add0~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~77_combout\ = (!\estado_pres.e4~q\ & \Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estado_pres.e4~q\,
	datad => \Add0~0_combout\,
	combout => \Add0~77_combout\);

-- Location: LCCOMB_X36_Y8_N24
\Selector0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~7_combout\ = (\fsm:addressCounter[9]~combout\ & (\fsm:addressCounter[6]~combout\ & (\fsm:addressCounter[7]~combout\ & \fsm:addressCounter[8]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm:addressCounter[9]~combout\,
	datab => \fsm:addressCounter[6]~combout\,
	datac => \fsm:addressCounter[7]~combout\,
	datad => \fsm:addressCounter[8]~combout\,
	combout => \Selector0~7_combout\);

-- Location: LCCOMB_X37_Y7_N30
\Add0~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~25_combout\ = (\fsm:addressCounter[12]~combout\ & (\Add0~23\ $ (GND))) # (!\fsm:addressCounter[12]~combout\ & (!\Add0~23\ & VCC))
-- \Add0~26\ = CARRY((\fsm:addressCounter[12]~combout\ & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fsm:addressCounter[12]~combout\,
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~25_combout\,
	cout => \Add0~26\);

-- Location: LCCOMB_X37_Y6_N0
\Add0~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~27_combout\ = (\fsm:addressCounter[13]~combout\ & (!\Add0~26\)) # (!\fsm:addressCounter[13]~combout\ & ((\Add0~26\) # (GND)))
-- \Add0~28\ = CARRY((!\Add0~26\) # (!\fsm:addressCounter[13]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fsm:addressCounter[13]~combout\,
	datad => VCC,
	cin => \Add0~26\,
	combout => \Add0~27_combout\,
	cout => \Add0~28\);

-- Location: LCCOMB_X38_Y7_N8
\Add0~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = (\Add0~27_combout\ & !\estado_pres.e4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~27_combout\,
	datac => \estado_pres.e4~q\,
	combout => \Add0~56_combout\);

-- Location: LCCOMB_X38_Y7_N16
\fsm:addressCounter[13]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fsm:addressCounter[13]~combout\ = (GLOBAL(\Selector0~10clkctrl_outclk\) & ((\Add0~56_combout\))) # (!GLOBAL(\Selector0~10clkctrl_outclk\) & (\fsm:addressCounter[13]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm:addressCounter[13]~combout\,
	datac => \Add0~56_combout\,
	datad => \Selector0~10clkctrl_outclk\,
	combout => \fsm:addressCounter[13]~combout\);

-- Location: LCCOMB_X37_Y6_N2
\Add0~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~29_combout\ = (\fsm:addressCounter[14]~combout\ & (\Add0~28\ $ (GND))) # (!\fsm:addressCounter[14]~combout\ & (!\Add0~28\ & VCC))
-- \Add0~30\ = CARRY((\fsm:addressCounter[14]~combout\ & !\Add0~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fsm:addressCounter[14]~combout\,
	datad => VCC,
	cin => \Add0~28\,
	combout => \Add0~29_combout\,
	cout => \Add0~30\);

-- Location: LCCOMB_X36_Y5_N28
\Add0~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~55_combout\ = (!\estado_pres.e4~q\ & \Add0~29_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_pres.e4~q\,
	datad => \Add0~29_combout\,
	combout => \Add0~55_combout\);

-- Location: LCCOMB_X36_Y5_N18
\fsm:addressCounter[14]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fsm:addressCounter[14]~combout\ = (GLOBAL(\Selector0~10clkctrl_outclk\) & (\Add0~55_combout\)) # (!GLOBAL(\Selector0~10clkctrl_outclk\) & ((\fsm:addressCounter[14]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~55_combout\,
	datac => \fsm:addressCounter[14]~combout\,
	datad => \Selector0~10clkctrl_outclk\,
	combout => \fsm:addressCounter[14]~combout\);

-- Location: LCCOMB_X37_Y6_N4
\Add0~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~31_combout\ = (\fsm:addressCounter[15]~combout\ & (!\Add0~30\)) # (!\fsm:addressCounter[15]~combout\ & ((\Add0~30\) # (GND)))
-- \Add0~32\ = CARRY((!\Add0~30\) # (!\fsm:addressCounter[15]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fsm:addressCounter[15]~combout\,
	datad => VCC,
	cin => \Add0~30\,
	combout => \Add0~31_combout\,
	cout => \Add0~32\);

-- Location: LCCOMB_X36_Y5_N26
\Add0~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~58_combout\ = (!\estado_pres.e4~q\ & \Add0~31_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_pres.e4~q\,
	datad => \Add0~31_combout\,
	combout => \Add0~58_combout\);

-- Location: LCCOMB_X36_Y5_N16
\fsm:addressCounter[15]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fsm:addressCounter[15]~combout\ = (GLOBAL(\Selector0~10clkctrl_outclk\) & ((\Add0~58_combout\))) # (!GLOBAL(\Selector0~10clkctrl_outclk\) & (\fsm:addressCounter[15]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~10clkctrl_outclk\,
	datab => \fsm:addressCounter[15]~combout\,
	datad => \Add0~58_combout\,
	combout => \fsm:addressCounter[15]~combout\);

-- Location: LCCOMB_X37_Y6_N6
\Add0~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~33_combout\ = (\fsm:addressCounter[16]~combout\ & (\Add0~32\ $ (GND))) # (!\fsm:addressCounter[16]~combout\ & (!\Add0~32\ & VCC))
-- \Add0~34\ = CARRY((\fsm:addressCounter[16]~combout\ & !\Add0~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fsm:addressCounter[16]~combout\,
	datad => VCC,
	cin => \Add0~32\,
	combout => \Add0~33_combout\,
	cout => \Add0~34\);

-- Location: LCCOMB_X40_Y7_N28
\Add0~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~57_combout\ = (!\estado_pres.e4~q\ & \Add0~33_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estado_pres.e4~q\,
	datad => \Add0~33_combout\,
	combout => \Add0~57_combout\);

-- Location: LCCOMB_X40_Y7_N22
\fsm:addressCounter[16]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fsm:addressCounter[16]~combout\ = (GLOBAL(\Selector0~10clkctrl_outclk\) & (\Add0~57_combout\)) # (!GLOBAL(\Selector0~10clkctrl_outclk\) & ((\fsm:addressCounter[16]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~57_combout\,
	datac => \fsm:addressCounter[16]~combout\,
	datad => \Selector0~10clkctrl_outclk\,
	combout => \fsm:addressCounter[16]~combout\);

-- Location: LCCOMB_X37_Y6_N8
\Add0~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~35_combout\ = (\fsm:addressCounter[17]~combout\ & (!\Add0~34\)) # (!\fsm:addressCounter[17]~combout\ & ((\Add0~34\) # (GND)))
-- \Add0~36\ = CARRY((!\Add0~34\) # (!\fsm:addressCounter[17]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fsm:addressCounter[17]~combout\,
	datad => VCC,
	cin => \Add0~34\,
	combout => \Add0~35_combout\,
	cout => \Add0~36\);

-- Location: LCCOMB_X36_Y5_N0
\Add0~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~60_combout\ = (!\estado_pres.e4~q\ & \Add0~35_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_pres.e4~q\,
	datad => \Add0~35_combout\,
	combout => \Add0~60_combout\);

-- Location: LCCOMB_X36_Y5_N6
\fsm:addressCounter[17]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fsm:addressCounter[17]~combout\ = (GLOBAL(\Selector0~10clkctrl_outclk\) & ((\Add0~60_combout\))) # (!GLOBAL(\Selector0~10clkctrl_outclk\) & (\fsm:addressCounter[17]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm:addressCounter[17]~combout\,
	datac => \Add0~60_combout\,
	datad => \Selector0~10clkctrl_outclk\,
	combout => \fsm:addressCounter[17]~combout\);

-- Location: LCCOMB_X37_Y6_N10
\Add0~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~37_combout\ = (\fsm:addressCounter[18]~combout\ & (\Add0~36\ $ (GND))) # (!\fsm:addressCounter[18]~combout\ & (!\Add0~36\ & VCC))
-- \Add0~38\ = CARRY((\fsm:addressCounter[18]~combout\ & !\Add0~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fsm:addressCounter[18]~combout\,
	datad => VCC,
	cin => \Add0~36\,
	combout => \Add0~37_combout\,
	cout => \Add0~38\);

-- Location: LCCOMB_X38_Y6_N8
\Add0~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~59_combout\ = (\Add0~37_combout\ & !\estado_pres.e4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~37_combout\,
	datad => \estado_pres.e4~q\,
	combout => \Add0~59_combout\);

-- Location: LCCOMB_X38_Y6_N6
\fsm:addressCounter[18]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fsm:addressCounter[18]~combout\ = (GLOBAL(\Selector0~10clkctrl_outclk\) & (\Add0~59_combout\)) # (!GLOBAL(\Selector0~10clkctrl_outclk\) & ((\fsm:addressCounter[18]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~59_combout\,
	datac => \fsm:addressCounter[18]~combout\,
	datad => \Selector0~10clkctrl_outclk\,
	combout => \fsm:addressCounter[18]~combout\);

-- Location: LCCOMB_X37_Y6_N12
\Add0~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~39_combout\ = (\fsm:addressCounter[19]~combout\ & (!\Add0~38\)) # (!\fsm:addressCounter[19]~combout\ & ((\Add0~38\) # (GND)))
-- \Add0~40\ = CARRY((!\Add0~38\) # (!\fsm:addressCounter[19]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fsm:addressCounter[19]~combout\,
	datad => VCC,
	cin => \Add0~38\,
	combout => \Add0~39_combout\,
	cout => \Add0~40\);

-- Location: LCCOMB_X36_Y8_N18
\Add0~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~62_combout\ = (!\estado_pres.e4~q\ & \Add0~39_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_pres.e4~q\,
	datac => \Add0~39_combout\,
	combout => \Add0~62_combout\);

-- Location: LCCOMB_X36_Y8_N28
\fsm:addressCounter[19]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fsm:addressCounter[19]~combout\ = (GLOBAL(\Selector0~10clkctrl_outclk\) & ((\Add0~62_combout\))) # (!GLOBAL(\Selector0~10clkctrl_outclk\) & (\fsm:addressCounter[19]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm:addressCounter[19]~combout\,
	datac => \Add0~62_combout\,
	datad => \Selector0~10clkctrl_outclk\,
	combout => \fsm:addressCounter[19]~combout\);

-- Location: LCCOMB_X37_Y6_N14
\Add0~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~41_combout\ = (\fsm:addressCounter[20]~combout\ & (\Add0~40\ $ (GND))) # (!\fsm:addressCounter[20]~combout\ & (!\Add0~40\ & VCC))
-- \Add0~42\ = CARRY((\fsm:addressCounter[20]~combout\ & !\Add0~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fsm:addressCounter[20]~combout\,
	datad => VCC,
	cin => \Add0~40\,
	combout => \Add0~41_combout\,
	cout => \Add0~42\);

-- Location: LCCOMB_X38_Y6_N2
\Add0~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~61_combout\ = (\Add0~41_combout\ & !\estado_pres.e4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~41_combout\,
	datad => \estado_pres.e4~q\,
	combout => \Add0~61_combout\);

-- Location: LCCOMB_X38_Y6_N12
\fsm:addressCounter[20]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fsm:addressCounter[20]~combout\ = (GLOBAL(\Selector0~10clkctrl_outclk\) & (\Add0~61_combout\)) # (!GLOBAL(\Selector0~10clkctrl_outclk\) & ((\fsm:addressCounter[20]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~61_combout\,
	datac => \fsm:addressCounter[20]~combout\,
	datad => \Selector0~10clkctrl_outclk\,
	combout => \fsm:addressCounter[20]~combout\);

-- Location: LCCOMB_X37_Y6_N16
\Add0~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~43_combout\ = (\fsm:addressCounter[21]~combout\ & (!\Add0~42\)) # (!\fsm:addressCounter[21]~combout\ & ((\Add0~42\) # (GND)))
-- \Add0~44\ = CARRY((!\Add0~42\) # (!\fsm:addressCounter[21]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fsm:addressCounter[21]~combout\,
	datad => VCC,
	cin => \Add0~42\,
	combout => \Add0~43_combout\,
	cout => \Add0~44\);

-- Location: LCCOMB_X38_Y6_N24
\Add0~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~64_combout\ = (\Add0~43_combout\ & !\estado_pres.e4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~43_combout\,
	datad => \estado_pres.e4~q\,
	combout => \Add0~64_combout\);

-- Location: LCCOMB_X38_Y6_N18
\fsm:addressCounter[21]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fsm:addressCounter[21]~combout\ = (GLOBAL(\Selector0~10clkctrl_outclk\) & (\Add0~64_combout\)) # (!GLOBAL(\Selector0~10clkctrl_outclk\) & ((\fsm:addressCounter[21]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~64_combout\,
	datac => \fsm:addressCounter[21]~combout\,
	datad => \Selector0~10clkctrl_outclk\,
	combout => \fsm:addressCounter[21]~combout\);

-- Location: LCCOMB_X38_Y6_N14
\Selector0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~3_combout\ = (\fsm:addressCounter[21]~combout\ & (\fsm:addressCounter[20]~combout\ & (\fsm:addressCounter[18]~combout\ & \fsm:addressCounter[19]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm:addressCounter[21]~combout\,
	datab => \fsm:addressCounter[20]~combout\,
	datac => \fsm:addressCounter[18]~combout\,
	datad => \fsm:addressCounter[19]~combout\,
	combout => \Selector0~3_combout\);

-- Location: LCCOMB_X37_Y6_N18
\Add0~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~45_combout\ = (\fsm:addressCounter[22]~combout\ & (\Add0~44\ $ (GND))) # (!\fsm:addressCounter[22]~combout\ & (!\Add0~44\ & VCC))
-- \Add0~46\ = CARRY((\fsm:addressCounter[22]~combout\ & !\Add0~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fsm:addressCounter[22]~combout\,
	datad => VCC,
	cin => \Add0~44\,
	combout => \Add0~45_combout\,
	cout => \Add0~46\);

-- Location: LCCOMB_X36_Y6_N26
\Add0~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~63_combout\ = (!\estado_pres.e4~q\ & \Add0~45_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_pres.e4~q\,
	datad => \Add0~45_combout\,
	combout => \Add0~63_combout\);

-- Location: LCCOMB_X36_Y6_N10
\fsm:addressCounter[22]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fsm:addressCounter[22]~combout\ = (GLOBAL(\Selector0~10clkctrl_outclk\) & ((\Add0~63_combout\))) # (!GLOBAL(\Selector0~10clkctrl_outclk\) & (\fsm:addressCounter[22]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm:addressCounter[22]~combout\,
	datab => \Add0~63_combout\,
	datad => \Selector0~10clkctrl_outclk\,
	combout => \fsm:addressCounter[22]~combout\);

-- Location: LCCOMB_X37_Y6_N20
\Add0~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~47_combout\ = (\fsm:addressCounter[23]~combout\ & (!\Add0~46\)) # (!\fsm:addressCounter[23]~combout\ & ((\Add0~46\) # (GND)))
-- \Add0~48\ = CARRY((!\Add0~46\) # (!\fsm:addressCounter[23]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fsm:addressCounter[23]~combout\,
	datad => VCC,
	cin => \Add0~46\,
	combout => \Add0~47_combout\,
	cout => \Add0~48\);

-- Location: LCCOMB_X36_Y6_N2
\Add0~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~66_combout\ = (!\estado_pres.e4~q\ & \Add0~47_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_pres.e4~q\,
	datac => \Add0~47_combout\,
	combout => \Add0~66_combout\);

-- Location: LCCOMB_X36_Y6_N18
\fsm:addressCounter[23]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fsm:addressCounter[23]~combout\ = (GLOBAL(\Selector0~10clkctrl_outclk\) & ((\Add0~66_combout\))) # (!GLOBAL(\Selector0~10clkctrl_outclk\) & (\fsm:addressCounter[23]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm:addressCounter[23]~combout\,
	datac => \Add0~66_combout\,
	datad => \Selector0~10clkctrl_outclk\,
	combout => \fsm:addressCounter[23]~combout\);

-- Location: LCCOMB_X37_Y6_N22
\Add0~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~49_combout\ = (\fsm:addressCounter[24]~combout\ & (\Add0~48\ $ (GND))) # (!\fsm:addressCounter[24]~combout\ & (!\Add0~48\ & VCC))
-- \Add0~50\ = CARRY((\fsm:addressCounter[24]~combout\ & !\Add0~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fsm:addressCounter[24]~combout\,
	datad => VCC,
	cin => \Add0~48\,
	combout => \Add0~49_combout\,
	cout => \Add0~50\);

-- Location: LCCOMB_X36_Y6_N20
\Add0~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~65_combout\ = (!\estado_pres.e4~q\ & \Add0~49_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_pres.e4~q\,
	datad => \Add0~49_combout\,
	combout => \Add0~65_combout\);

-- Location: LCCOMB_X36_Y6_N24
\fsm:addressCounter[24]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fsm:addressCounter[24]~combout\ = (GLOBAL(\Selector0~10clkctrl_outclk\) & (\Add0~65_combout\)) # (!GLOBAL(\Selector0~10clkctrl_outclk\) & ((\fsm:addressCounter[24]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~65_combout\,
	datac => \fsm:addressCounter[24]~combout\,
	datad => \Selector0~10clkctrl_outclk\,
	combout => \fsm:addressCounter[24]~combout\);

-- Location: LCCOMB_X37_Y6_N24
\Add0~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~51_combout\ = \fsm:addressCounter[25]~combout\ $ (\Add0~50\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fsm:addressCounter[25]~combout\,
	cin => \Add0~50\,
	combout => \Add0~51_combout\);

-- Location: LCCOMB_X37_Y6_N28
\Add0~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~53_combout\ = (!\estado_pres.e4~q\ & \Add0~51_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estado_pres.e4~q\,
	datad => \Add0~51_combout\,
	combout => \Add0~53_combout\);

-- Location: LCCOMB_X37_Y6_N30
\fsm:addressCounter[25]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fsm:addressCounter[25]~combout\ = (GLOBAL(\Selector0~10clkctrl_outclk\) & ((\Add0~53_combout\))) # (!GLOBAL(\Selector0~10clkctrl_outclk\) & (\fsm:addressCounter[25]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm:addressCounter[25]~combout\,
	datac => \Add0~53_combout\,
	datad => \Selector0~10clkctrl_outclk\,
	combout => \fsm:addressCounter[25]~combout\);

-- Location: LCCOMB_X40_Y6_N12
\Selector0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~2_combout\ = (\fsm:addressCounter[24]~combout\ & (\fsm:addressCounter[23]~combout\ & (\fsm:addressCounter[25]~combout\ & \fsm:addressCounter[22]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm:addressCounter[24]~combout\,
	datab => \fsm:addressCounter[23]~combout\,
	datac => \fsm:addressCounter[25]~combout\,
	datad => \fsm:addressCounter[22]~combout\,
	combout => \Selector0~2_combout\);

-- Location: LCCOMB_X36_Y5_N14
\Selector0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~4_combout\ = (\fsm:addressCounter[16]~combout\ & (\fsm:addressCounter[15]~combout\ & (\fsm:addressCounter[14]~combout\ & \fsm:addressCounter[17]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm:addressCounter[16]~combout\,
	datab => \fsm:addressCounter[15]~combout\,
	datac => \fsm:addressCounter[14]~combout\,
	datad => \fsm:addressCounter[17]~combout\,
	combout => \Selector0~4_combout\);

-- Location: LCCOMB_X41_Y7_N8
\Selector0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~5_combout\ = (\fsm:addressCounter[10]~combout\ & (\fsm:addressCounter[12]~combout\ & (\fsm:addressCounter[13]~combout\ & \fsm:addressCounter[11]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm:addressCounter[10]~combout\,
	datab => \fsm:addressCounter[12]~combout\,
	datac => \fsm:addressCounter[13]~combout\,
	datad => \fsm:addressCounter[11]~combout\,
	combout => \Selector0~5_combout\);

-- Location: LCCOMB_X42_Y6_N0
\Selector0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~6_combout\ = (\Selector0~3_combout\ & (\Selector0~2_combout\ & (\Selector0~4_combout\ & \Selector0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~3_combout\,
	datab => \Selector0~2_combout\,
	datac => \Selector0~4_combout\,
	datad => \Selector0~5_combout\,
	combout => \Selector0~6_combout\);

-- Location: LCCOMB_X35_Y3_N22
\Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\readrequest~combout\ & (((\DRAM|new_sdram_controller_0|za_valid~q\)))) # (!\readrequest~combout\ & (((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(0))) # 
-- (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \readrequest~combout\,
	datab => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(1),
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(0),
	datad => \DRAM|new_sdram_controller_0|za_valid~q\,
	combout => \Selector0~0_combout\);

-- Location: IOIBUF_X0_Y18_N15
\ADCCLK~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADCCLK,
	o => \ADCCLK~input_o\);

-- Location: CLKCTRL_G3
\ADCCLK~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \ADCCLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \ADCCLK~inputclkctrl_outclk\);

-- Location: LCCOMB_X39_Y11_N10
\u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain[1]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain[1]~feeder_combout\);

-- Location: FF_X39_Y11_N11
\u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	d => \u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain[1]~feeder_combout\,
	clrn => \DE10Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain\(1));

-- Location: LCCOMB_X39_Y11_N18
\u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain[0]~feeder_combout\ = \u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain\(1),
	combout => \u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain[0]~feeder_combout\);

-- Location: FF_X39_Y11_N19
\u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	d => \u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain[0]~feeder_combout\,
	clrn => \DE10Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain\(0));

-- Location: LCCOMB_X39_Y11_N8
\u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~feeder_combout\ = \u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain\(0),
	combout => \u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~feeder_combout\);

-- Location: FF_X39_Y11_N9
\u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	d => \u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~feeder_combout\,
	clrn => \DE10Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\);

-- Location: FF_X37_Y11_N19
\u1|modular_adc_0|control_internal|u_control_fsm|eoc_synch_dly\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	asdata => \u1|modular_adc_0|control_internal|u_control_fsm|u_eoc_synchronizer|dreg\(0),
	clrn => \u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|modular_adc_0|control_internal|u_control_fsm|eoc_synch_dly~q\);

-- Location: FF_X37_Y11_N27
\u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRUP_SOC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	d => \u1|modular_adc_0|control_internal|u_control_fsm|Selector5~1_combout\,
	clrn => \u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRUP_SOC~q\);

-- Location: LCCOMB_X40_Y11_N6
\u1|modular_adc_0|control_internal|u_control_fsm|int_timer[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|int_timer[0]~8_combout\ = \u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(0) $ (VCC)
-- \u1|modular_adc_0|control_internal|u_control_fsm|int_timer[0]~9\ = CARRY(\u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(0),
	datad => VCC,
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|int_timer[0]~8_combout\,
	cout => \u1|modular_adc_0|control_internal|u_control_fsm|int_timer[0]~9\);

-- Location: FF_X37_Y11_N29
\u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PUTRESP_DLY1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	asdata => \u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\,
	clrn => \u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PUTRESP_DLY1~q\);

-- Location: FF_X38_Y11_N25
\u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PUTRESP_DLY2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	asdata => \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PUTRESP_DLY1~q\,
	clrn => \u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PUTRESP_DLY2~q\);

-- Location: LCCOMB_X37_Y11_N2
\u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PUTRESP_DLY3~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PUTRESP_DLY3~feeder_combout\ = \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PUTRESP_DLY2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PUTRESP_DLY2~q\,
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PUTRESP_DLY3~feeder_combout\);

-- Location: FF_X37_Y11_N3
\u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PUTRESP_DLY3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	d => \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PUTRESP_DLY3~feeder_combout\,
	clrn => \u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PUTRESP_DLY3~q\);

-- Location: LCCOMB_X37_Y11_N10
\u1|modular_adc_0|control_internal|u_control_fsm|Selector7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|Selector7~0_combout\ = (\u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRUP_SOC~q\ & (((!\u1|modular_adc_0|control_internal|u_control_fsm|u_eoc_synchronizer|dreg\(0) & 
-- \u1|modular_adc_0|control_internal|u_control_fsm|eoc_synch_dly~q\)))) # (!\u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRUP_SOC~q\ & (\u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PUTRESP_DLY3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRUP_SOC~q\,
	datab => \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PUTRESP_DLY3~q\,
	datac => \u1|modular_adc_0|control_internal|u_control_fsm|u_eoc_synchronizer|dreg\(0),
	datad => \u1|modular_adc_0|control_internal|u_control_fsm|eoc_synch_dly~q\,
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|Selector7~0_combout\);

-- Location: FF_X37_Y11_N11
\u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.GETCMD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	d => \u1|modular_adc_0|control_internal|u_control_fsm|Selector7~0_combout\,
	clrn => \u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.GETCMD~q\);

-- Location: LCCOMB_X40_Y11_N30
\u1|modular_adc_0|control_internal|u_control_fsm|arc_to_conv~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|arc_to_conv~0_combout\ = (\u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.GETCMD~q\ & !\u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.CONV~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.GETCMD~q\,
	datad => \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.CONV~q\,
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|arc_to_conv~0_combout\);

-- Location: PLL_3
\u1|altpll_0|sd1|pll7\ : fiftyfivenm_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 100,
	c0_initial => 1,
	c0_low => 100,
	c0_mode => "even",
	c0_ph => 0,
	c1_high => 0,
	c1_initial => 0,
	c1_low => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c1_use_casc_in => "off",
	c2_high => 0,
	c2_initial => 0,
	c2_low => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 0,
	c3_initial => 0,
	c3_low => 0,
	c3_mode => "bypass",
	c3_ph => 0,
	c3_use_casc_in => "off",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "c0",
	clk0_divide_by => 5,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 1,
	clk0_phase_shift => "0",
	clk1_counter => "unused",
	clk1_divide_by => 0,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 0,
	clk1_phase_shift => "0",
	clk2_counter => "unused",
	clk2_divide_by => 0,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 0,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock0",
	inclk0_input_frequency => 100000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 20,
	m => 40,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	self_reset_on_loss_lock => "off",
	simulation_type => "functional",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 312,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	areset => GND,
	fbin => \u1|altpll_0|sd1|wire_pll7_fbout\,
	inclk => \u1|altpll_0|sd1|pll7_INCLK_bus\,
	locked => \u1|altpll_0|sd1|wire_pll7_locked\,
	fbout => \u1|altpll_0|sd1|wire_pll7_fbout\,
	clk => \u1|altpll_0|sd1|pll7_CLK_bus\);

-- Location: LCCOMB_X40_Y11_N4
\u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.IDLE~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.IDLE~0_combout\ = (\u1|altpll_0|sd1|wire_pll7_locked\) # (\u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|altpll_0|sd1|wire_pll7_locked\,
	datac => \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.IDLE~q\,
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.IDLE~0_combout\);

-- Location: FF_X40_Y11_N5
\u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	d => \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.IDLE~0_combout\,
	clrn => \u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.IDLE~q\);

-- Location: LCCOMB_X40_Y11_N24
\u1|modular_adc_0|control_internal|u_control_fsm|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|Selector1~0_combout\ = (\u1|altpll_0|sd1|wire_pll7_locked\ & (((\u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN~q\ & !\u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(6))) # 
-- (!\u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.IDLE~q\))) # (!\u1|altpll_0|sd1|wire_pll7_locked\ & (((\u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN~q\ & 
-- !\u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|altpll_0|sd1|wire_pll7_locked\,
	datab => \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.IDLE~q\,
	datac => \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN~q\,
	datad => \u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(6),
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|Selector1~0_combout\);

-- Location: FF_X40_Y11_N25
\u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	d => \u1|modular_adc_0|control_internal|u_control_fsm|Selector1~0_combout\,
	clrn => \u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN~q\);

-- Location: LCCOMB_X40_Y11_N0
\u1|modular_adc_0|control_internal|u_control_fsm|int_timer[2]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|int_timer[2]~24_combout\ = (\u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN_TSEN~q\) # ((\u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN~q\) # 
-- ((!\u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.CONV~q\ & \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.GETCMD~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.CONV~q\,
	datab => \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.GETCMD~q\,
	datac => \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN_TSEN~q\,
	datad => \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN~q\,
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|int_timer[2]~24_combout\);

-- Location: FF_X40_Y11_N7
\u1|modular_adc_0|control_internal|u_control_fsm|int_timer[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	d => \u1|modular_adc_0|control_internal|u_control_fsm|int_timer[0]~8_combout\,
	clrn => \u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sclr => \u1|modular_adc_0|control_internal|u_control_fsm|arc_to_conv~0_combout\,
	ena => \u1|modular_adc_0|control_internal|u_control_fsm|int_timer[2]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(0));

-- Location: LCCOMB_X40_Y11_N8
\u1|modular_adc_0|control_internal|u_control_fsm|int_timer[1]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|int_timer[1]~10_combout\ = (\u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(1) & (!\u1|modular_adc_0|control_internal|u_control_fsm|int_timer[0]~9\)) # 
-- (!\u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(1) & ((\u1|modular_adc_0|control_internal|u_control_fsm|int_timer[0]~9\) # (GND)))
-- \u1|modular_adc_0|control_internal|u_control_fsm|int_timer[1]~11\ = CARRY((!\u1|modular_adc_0|control_internal|u_control_fsm|int_timer[0]~9\) # (!\u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(1),
	datad => VCC,
	cin => \u1|modular_adc_0|control_internal|u_control_fsm|int_timer[0]~9\,
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|int_timer[1]~10_combout\,
	cout => \u1|modular_adc_0|control_internal|u_control_fsm|int_timer[1]~11\);

-- Location: FF_X40_Y11_N9
\u1|modular_adc_0|control_internal|u_control_fsm|int_timer[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	d => \u1|modular_adc_0|control_internal|u_control_fsm|int_timer[1]~10_combout\,
	clrn => \u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sclr => \u1|modular_adc_0|control_internal|u_control_fsm|arc_to_conv~0_combout\,
	ena => \u1|modular_adc_0|control_internal|u_control_fsm|int_timer[2]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(1));

-- Location: LCCOMB_X40_Y11_N10
\u1|modular_adc_0|control_internal|u_control_fsm|int_timer[2]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|int_timer[2]~12_combout\ = (\u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(2) & (\u1|modular_adc_0|control_internal|u_control_fsm|int_timer[1]~11\ $ (GND))) # 
-- (!\u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(2) & (!\u1|modular_adc_0|control_internal|u_control_fsm|int_timer[1]~11\ & VCC))
-- \u1|modular_adc_0|control_internal|u_control_fsm|int_timer[2]~13\ = CARRY((\u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(2) & !\u1|modular_adc_0|control_internal|u_control_fsm|int_timer[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(2),
	datad => VCC,
	cin => \u1|modular_adc_0|control_internal|u_control_fsm|int_timer[1]~11\,
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|int_timer[2]~12_combout\,
	cout => \u1|modular_adc_0|control_internal|u_control_fsm|int_timer[2]~13\);

-- Location: FF_X40_Y11_N11
\u1|modular_adc_0|control_internal|u_control_fsm|int_timer[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	d => \u1|modular_adc_0|control_internal|u_control_fsm|int_timer[2]~12_combout\,
	clrn => \u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sclr => \u1|modular_adc_0|control_internal|u_control_fsm|arc_to_conv~0_combout\,
	ena => \u1|modular_adc_0|control_internal|u_control_fsm|int_timer[2]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(2));

-- Location: LCCOMB_X40_Y11_N12
\u1|modular_adc_0|control_internal|u_control_fsm|int_timer[3]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|int_timer[3]~14_combout\ = (\u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(3) & (!\u1|modular_adc_0|control_internal|u_control_fsm|int_timer[2]~13\)) # 
-- (!\u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(3) & ((\u1|modular_adc_0|control_internal|u_control_fsm|int_timer[2]~13\) # (GND)))
-- \u1|modular_adc_0|control_internal|u_control_fsm|int_timer[3]~15\ = CARRY((!\u1|modular_adc_0|control_internal|u_control_fsm|int_timer[2]~13\) # (!\u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(3),
	datad => VCC,
	cin => \u1|modular_adc_0|control_internal|u_control_fsm|int_timer[2]~13\,
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|int_timer[3]~14_combout\,
	cout => \u1|modular_adc_0|control_internal|u_control_fsm|int_timer[3]~15\);

-- Location: FF_X40_Y11_N13
\u1|modular_adc_0|control_internal|u_control_fsm|int_timer[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	d => \u1|modular_adc_0|control_internal|u_control_fsm|int_timer[3]~14_combout\,
	clrn => \u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sclr => \u1|modular_adc_0|control_internal|u_control_fsm|arc_to_conv~0_combout\,
	ena => \u1|modular_adc_0|control_internal|u_control_fsm|int_timer[2]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(3));

-- Location: LCCOMB_X40_Y11_N14
\u1|modular_adc_0|control_internal|u_control_fsm|int_timer[4]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|int_timer[4]~16_combout\ = (\u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(4) & (\u1|modular_adc_0|control_internal|u_control_fsm|int_timer[3]~15\ $ (GND))) # 
-- (!\u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(4) & (!\u1|modular_adc_0|control_internal|u_control_fsm|int_timer[3]~15\ & VCC))
-- \u1|modular_adc_0|control_internal|u_control_fsm|int_timer[4]~17\ = CARRY((\u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(4) & !\u1|modular_adc_0|control_internal|u_control_fsm|int_timer[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(4),
	datad => VCC,
	cin => \u1|modular_adc_0|control_internal|u_control_fsm|int_timer[3]~15\,
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|int_timer[4]~16_combout\,
	cout => \u1|modular_adc_0|control_internal|u_control_fsm|int_timer[4]~17\);

-- Location: FF_X40_Y11_N15
\u1|modular_adc_0|control_internal|u_control_fsm|int_timer[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	d => \u1|modular_adc_0|control_internal|u_control_fsm|int_timer[4]~16_combout\,
	clrn => \u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sclr => \u1|modular_adc_0|control_internal|u_control_fsm|arc_to_conv~0_combout\,
	ena => \u1|modular_adc_0|control_internal|u_control_fsm|int_timer[2]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(4));

-- Location: LCCOMB_X40_Y11_N16
\u1|modular_adc_0|control_internal|u_control_fsm|int_timer[5]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|int_timer[5]~18_combout\ = (\u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(5) & (!\u1|modular_adc_0|control_internal|u_control_fsm|int_timer[4]~17\)) # 
-- (!\u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(5) & ((\u1|modular_adc_0|control_internal|u_control_fsm|int_timer[4]~17\) # (GND)))
-- \u1|modular_adc_0|control_internal|u_control_fsm|int_timer[5]~19\ = CARRY((!\u1|modular_adc_0|control_internal|u_control_fsm|int_timer[4]~17\) # (!\u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(5),
	datad => VCC,
	cin => \u1|modular_adc_0|control_internal|u_control_fsm|int_timer[4]~17\,
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|int_timer[5]~18_combout\,
	cout => \u1|modular_adc_0|control_internal|u_control_fsm|int_timer[5]~19\);

-- Location: FF_X40_Y11_N17
\u1|modular_adc_0|control_internal|u_control_fsm|int_timer[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	d => \u1|modular_adc_0|control_internal|u_control_fsm|int_timer[5]~18_combout\,
	clrn => \u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sclr => \u1|modular_adc_0|control_internal|u_control_fsm|arc_to_conv~0_combout\,
	ena => \u1|modular_adc_0|control_internal|u_control_fsm|int_timer[2]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(5));

-- Location: LCCOMB_X40_Y11_N18
\u1|modular_adc_0|control_internal|u_control_fsm|int_timer[6]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|int_timer[6]~20_combout\ = (\u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(6) & (\u1|modular_adc_0|control_internal|u_control_fsm|int_timer[5]~19\ $ (GND))) # 
-- (!\u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(6) & (!\u1|modular_adc_0|control_internal|u_control_fsm|int_timer[5]~19\ & VCC))
-- \u1|modular_adc_0|control_internal|u_control_fsm|int_timer[6]~21\ = CARRY((\u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(6) & !\u1|modular_adc_0|control_internal|u_control_fsm|int_timer[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(6),
	datad => VCC,
	cin => \u1|modular_adc_0|control_internal|u_control_fsm|int_timer[5]~19\,
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|int_timer[6]~20_combout\,
	cout => \u1|modular_adc_0|control_internal|u_control_fsm|int_timer[6]~21\);

-- Location: FF_X40_Y11_N19
\u1|modular_adc_0|control_internal|u_control_fsm|int_timer[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	d => \u1|modular_adc_0|control_internal|u_control_fsm|int_timer[6]~20_combout\,
	clrn => \u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sclr => \u1|modular_adc_0|control_internal|u_control_fsm|arc_to_conv~0_combout\,
	ena => \u1|modular_adc_0|control_internal|u_control_fsm|int_timer[2]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(6));

-- Location: LCCOMB_X40_Y11_N20
\u1|modular_adc_0|control_internal|u_control_fsm|int_timer[7]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|int_timer[7]~22_combout\ = \u1|modular_adc_0|control_internal|u_control_fsm|int_timer[6]~21\ $ (\u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(7),
	cin => \u1|modular_adc_0|control_internal|u_control_fsm|int_timer[6]~21\,
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|int_timer[7]~22_combout\);

-- Location: FF_X40_Y11_N21
\u1|modular_adc_0|control_internal|u_control_fsm|int_timer[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	d => \u1|modular_adc_0|control_internal|u_control_fsm|int_timer[7]~22_combout\,
	clrn => \u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sclr => \u1|modular_adc_0|control_internal|u_control_fsm|arc_to_conv~0_combout\,
	ena => \u1|modular_adc_0|control_internal|u_control_fsm|int_timer[2]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(7));

-- Location: LCCOMB_X40_Y11_N26
\u1|modular_adc_0|control_internal|u_control_fsm|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|Selector2~0_combout\ = (\u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(7) & (\u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(6) & 
-- ((\u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN~q\)))) # (!\u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(7) & ((\u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN_TSEN~q\) # 
-- ((\u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(6) & \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(7),
	datab => \u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(6),
	datac => \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN_TSEN~q\,
	datad => \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN~q\,
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|Selector2~0_combout\);

-- Location: FF_X40_Y11_N27
\u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN_TSEN\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	d => \u1|modular_adc_0|control_internal|u_control_fsm|Selector2~0_combout\,
	clrn => \u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN_TSEN~q\);

-- Location: LCCOMB_X40_Y11_N2
\u1|modular_adc_0|control_internal|u_control_fsm|Selector18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|Selector18~0_combout\ = ((\u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN~q\) # ((\u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN_TSEN~q\ & 
-- !\u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(7)))) # (!\u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN_TSEN~q\,
	datab => \u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(7),
	datac => \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.IDLE~q\,
	datad => \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN~q\,
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|Selector18~0_combout\);

-- Location: LCCOMB_X38_Y11_N18
\u1|modular_adc_0|control_internal|u_control_fsm|Selector15~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|Selector15~2_combout\ = (!\u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.CONV~q\ & !\u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.GETCMD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.CONV~q\,
	datad => \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.GETCMD~q\,
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|Selector15~2_combout\);

-- Location: LCCOMB_X37_Y11_N28
\u1|modular_adc_0|control_internal|u_control_fsm|WideOr12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|WideOr12~0_combout\ = (!\u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\ & (!\u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PUTRESP_DLY2~q\ & 
-- (!\u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PUTRESP_DLY1~q\ & !\u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.CONV_DLY1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\,
	datab => \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PUTRESP_DLY2~q\,
	datac => \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PUTRESP_DLY1~q\,
	datad => \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.CONV_DLY1~q\,
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|WideOr12~0_combout\);

-- Location: LCCOMB_X38_Y11_N16
\u1|modular_adc_0|control_internal|u_control_fsm|WideOr17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|WideOr17~combout\ = (((\u1|modular_adc_0|control_internal|u_control_fsm|Selector5~1_combout\) # (\u1|modular_adc_0|control_internal|u_control_fsm|Selector7~0_combout\)) # 
-- (!\u1|modular_adc_0|control_internal|u_control_fsm|WideOr12~0_combout\)) # (!\u1|modular_adc_0|control_internal|u_control_fsm|Selector15~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|modular_adc_0|control_internal|u_control_fsm|Selector15~2_combout\,
	datab => \u1|modular_adc_0|control_internal|u_control_fsm|WideOr12~0_combout\,
	datac => \u1|modular_adc_0|control_internal|u_control_fsm|Selector5~1_combout\,
	datad => \u1|modular_adc_0|control_internal|u_control_fsm|Selector7~0_combout\,
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|WideOr17~combout\);

-- Location: LCCOMB_X38_Y11_N30
\u1|modular_adc_0|control_internal|u_control_fsm|Selector18~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|Selector18~1_combout\ = (!\u1|modular_adc_0|control_internal|u_control_fsm|Selector18~0_combout\ & ((\u1|modular_adc_0|control_internal|u_control_fsm|usr_pwd~q\) # 
-- (!\u1|modular_adc_0|control_internal|u_control_fsm|WideOr17~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|modular_adc_0|control_internal|u_control_fsm|Selector18~0_combout\,
	datac => \u1|modular_adc_0|control_internal|u_control_fsm|usr_pwd~q\,
	datad => \u1|modular_adc_0|control_internal|u_control_fsm|WideOr17~combout\,
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|Selector18~1_combout\);

-- Location: FF_X38_Y11_N31
\u1|modular_adc_0|control_internal|u_control_fsm|usr_pwd\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	d => \u1|modular_adc_0|control_internal|u_control_fsm|Selector18~1_combout\,
	clrn => \u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|modular_adc_0|control_internal|u_control_fsm|usr_pwd~q\);

-- Location: LCCOMB_X42_Y11_N4
\u1|modular_adc_0|control_internal|u_control_fsm|usr_pwd~_wirecell\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|usr_pwd~_wirecell_combout\ = !\u1|modular_adc_0|control_internal|u_control_fsm|usr_pwd~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u1|modular_adc_0|control_internal|u_control_fsm|usr_pwd~q\,
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|usr_pwd~_wirecell_combout\);

-- Location: LCCOMB_X44_Y41_N24
\~GND\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LCCOMB_X40_Y11_N28
\u1|modular_adc_0|control_internal|u_control_fsm|Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|Selector3~0_combout\ = (\u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN_TSEN~q\ & \u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN_TSEN~q\,
	datad => \u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(7),
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|Selector3~0_combout\);

-- Location: FF_X38_Y11_N15
\u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN_DONE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	d => \u1|modular_adc_0|control_internal|u_control_fsm|Selector3~1_combout\,
	clrn => \u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN_DONE~q\);

-- Location: LCCOMB_X38_Y11_N14
\u1|modular_adc_0|control_internal|u_control_fsm|Selector3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|Selector3~1_combout\ = (\u1|modular_adc_0|control_internal|u_control_fsm|Selector3~0_combout\) # ((\u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN_DONE~q\ & 
-- ((\u1|modular_adc_0|control_internal|u_control_fsm|clk_dft_synch_dly~q\) # (!\u1|modular_adc_0|control_internal|u_control_fsm|u_clk_dft_synchronizer|dreg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|modular_adc_0|control_internal|u_control_fsm|clk_dft_synch_dly~q\,
	datab => \u1|modular_adc_0|control_internal|u_control_fsm|Selector3~0_combout\,
	datac => \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN_DONE~q\,
	datad => \u1|modular_adc_0|control_internal|u_control_fsm|u_clk_dft_synchronizer|dreg\(0),
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|Selector3~1_combout\);

-- Location: LCCOMB_X38_Y11_N20
\u1|modular_adc_0|control_internal|u_control_fsm|WideOr12~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|WideOr12~1_combout\ = (!\u1|modular_adc_0|control_internal|u_control_fsm|Selector7~0_combout\ & (\u1|modular_adc_0|control_internal|u_control_fsm|WideOr12~0_combout\ & 
-- !\u1|modular_adc_0|control_internal|u_control_fsm|Selector4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|modular_adc_0|control_internal|u_control_fsm|Selector7~0_combout\,
	datab => \u1|modular_adc_0|control_internal|u_control_fsm|WideOr12~0_combout\,
	datad => \u1|modular_adc_0|control_internal|u_control_fsm|Selector4~0_combout\,
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|WideOr12~1_combout\);

-- Location: LCCOMB_X38_Y11_N2
\u1|modular_adc_0|control_internal|u_control_fsm|WideOr12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|WideOr12~combout\ = (\u1|modular_adc_0|control_internal|u_control_fsm|Selector1~0_combout\) # ((\u1|modular_adc_0|control_internal|u_control_fsm|Selector3~1_combout\) # 
-- ((\u1|modular_adc_0|control_internal|u_control_fsm|Selector5~1_combout\) # (!\u1|modular_adc_0|control_internal|u_control_fsm|WideOr12~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|modular_adc_0|control_internal|u_control_fsm|Selector1~0_combout\,
	datab => \u1|modular_adc_0|control_internal|u_control_fsm|Selector3~1_combout\,
	datac => \u1|modular_adc_0|control_internal|u_control_fsm|Selector5~1_combout\,
	datad => \u1|modular_adc_0|control_internal|u_control_fsm|WideOr12~1_combout\,
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|WideOr12~combout\);

-- Location: LCCOMB_X38_Y11_N22
\u1|modular_adc_0|control_internal|u_control_fsm|chsel[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|chsel[0]~2_combout\ = (\u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.GETCMD~q\) # ((\u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.CONV~q\) # 
-- ((\u1|modular_adc_0|control_internal|u_control_fsm|chsel\(0) & \u1|modular_adc_0|control_internal|u_control_fsm|WideOr12~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.GETCMD~q\,
	datab => \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.CONV~q\,
	datac => \u1|modular_adc_0|control_internal|u_control_fsm|chsel\(0),
	datad => \u1|modular_adc_0|control_internal|u_control_fsm|WideOr12~combout\,
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|chsel[0]~2_combout\);

-- Location: FF_X38_Y11_N23
\u1|modular_adc_0|control_internal|u_control_fsm|chsel[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	d => \u1|modular_adc_0|control_internal|u_control_fsm|chsel[0]~2_combout\,
	clrn => \u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|modular_adc_0|control_internal|u_control_fsm|chsel\(0));

-- Location: LCCOMB_X38_Y11_N8
\u1|modular_adc_0|control_internal|u_control_fsm|Selector15~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|Selector15~3_combout\ = (\u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.GETCMD~q\) # ((\u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.CONV~q\) # 
-- ((\u1|modular_adc_0|control_internal|u_control_fsm|chsel\(1) & \u1|modular_adc_0|control_internal|u_control_fsm|WideOr12~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.GETCMD~q\,
	datab => \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.CONV~q\,
	datac => \u1|modular_adc_0|control_internal|u_control_fsm|chsel\(1),
	datad => \u1|modular_adc_0|control_internal|u_control_fsm|WideOr12~combout\,
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|Selector15~3_combout\);

-- Location: FF_X38_Y11_N9
\u1|modular_adc_0|control_internal|u_control_fsm|chsel[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	d => \u1|modular_adc_0|control_internal|u_control_fsm|Selector15~3_combout\,
	clrn => \u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|modular_adc_0|control_internal|u_control_fsm|chsel\(1));

-- Location: LCCOMB_X43_Y18_N0
\u1|modular_adc_0|control_internal|adc_inst|decoder|WideOr4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|adc_inst|decoder|WideOr4~0_combout\ = (!\u1|modular_adc_0|control_internal|u_control_fsm|chsel\(1)) # (!\u1|modular_adc_0|control_internal|u_control_fsm|chsel\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|modular_adc_0|control_internal|u_control_fsm|chsel\(0),
	datad => \u1|modular_adc_0|control_internal|u_control_fsm|chsel\(1),
	combout => \u1|modular_adc_0|control_internal|adc_inst|decoder|WideOr4~0_combout\);

-- Location: LCCOMB_X43_Y13_N4
\u1|modular_adc_0|control_internal|adc_inst|decoder|WideOr2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|adc_inst|decoder|WideOr2~0_combout\ = (\u1|modular_adc_0|control_internal|u_control_fsm|chsel\(0)) # (!\u1|modular_adc_0|control_internal|u_control_fsm|chsel\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|modular_adc_0|control_internal|u_control_fsm|chsel\(1),
	datac => \u1|modular_adc_0|control_internal|u_control_fsm|chsel\(0),
	combout => \u1|modular_adc_0|control_internal|adc_inst|decoder|WideOr2~0_combout\);

-- Location: LCCOMB_X43_Y18_N2
\u1|modular_adc_0|control_internal|u_control_fsm|chsel[1]~_wirecell\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|chsel[1]~_wirecell_combout\ = !\u1|modular_adc_0|control_internal|u_control_fsm|chsel\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u1|modular_adc_0|control_internal|u_control_fsm|chsel\(1),
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|chsel[1]~_wirecell_combout\);

-- Location: ADCBLOCK_X43_Y52_N0
\u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|primitive_instance\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 4,
	device_partname_fivechar_prefix => "10m50",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 0,
	refsel => 1,
	reserve_block => "false",
	testbits => 66,
	tsclkdiv => 0,
	tsclksel => 1)
-- pragma translate_on
PORT MAP (
	soc => \u1|modular_adc_0|control_internal|u_control_fsm|soc~q\,
	usr_pwd => \u1|modular_adc_0|control_internal|u_control_fsm|usr_pwd~_wirecell_combout\,
	tsen => \~GND~combout\,
	clkin_from_pll_c0 => \u1|altpll_0|sd1|wire_pll7_clk\(0),
	chsel => \u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|primitive_instance_CHSEL_bus\,
	eoc => \u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|eoc\,
	dout => \u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|primitive_instance_DOUT_bus\);

-- Location: FF_X38_Y11_N5
\u1|modular_adc_0|control_internal|u_control_fsm|u_clk_dft_synchronizer|din_s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	asdata => \u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|clkout_adccore\,
	clrn => \u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|modular_adc_0|control_internal|u_control_fsm|u_clk_dft_synchronizer|din_s1~q\);

-- Location: FF_X38_Y11_N1
\u1|modular_adc_0|control_internal|u_control_fsm|u_clk_dft_synchronizer|dreg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	asdata => \u1|modular_adc_0|control_internal|u_control_fsm|u_clk_dft_synchronizer|din_s1~q\,
	clrn => \u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|modular_adc_0|control_internal|u_control_fsm|u_clk_dft_synchronizer|dreg\(0));

-- Location: FF_X38_Y11_N21
\u1|modular_adc_0|control_internal|u_control_fsm|clk_dft_synch_dly\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	asdata => \u1|modular_adc_0|control_internal|u_control_fsm|u_clk_dft_synchronizer|dreg\(0),
	clrn => \u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|modular_adc_0|control_internal|u_control_fsm|clk_dft_synch_dly~q\);

-- Location: LCCOMB_X38_Y11_N26
\u1|modular_adc_0|control_internal|u_control_fsm|Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|Selector4~0_combout\ = (\u1|modular_adc_0|control_internal|u_control_fsm|clk_dft_synch_dly~q\ & (((\u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRUP_CH~q\ & 
-- \u1|modular_adc_0|control_internal|u_control_fsm|u_clk_dft_synchronizer|dreg\(0))))) # (!\u1|modular_adc_0|control_internal|u_control_fsm|clk_dft_synch_dly~q\ & ((\u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRUP_CH~q\) # 
-- ((\u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN_DONE~q\ & \u1|modular_adc_0|control_internal|u_control_fsm|u_clk_dft_synchronizer|dreg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|modular_adc_0|control_internal|u_control_fsm|clk_dft_synch_dly~q\,
	datab => \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN_DONE~q\,
	datac => \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRUP_CH~q\,
	datad => \u1|modular_adc_0|control_internal|u_control_fsm|u_clk_dft_synchronizer|dreg\(0),
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|Selector4~0_combout\);

-- Location: FF_X38_Y11_N27
\u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRUP_CH\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	d => \u1|modular_adc_0|control_internal|u_control_fsm|Selector4~0_combout\,
	clrn => \u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRUP_CH~q\);

-- Location: LCCOMB_X38_Y11_N28
\u1|modular_adc_0|control_internal|u_control_fsm|Selector5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|Selector5~0_combout\ = (\u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRUP_CH~q\ & (\u1|modular_adc_0|control_internal|u_control_fsm|clk_dft_synch_dly~q\ & 
-- !\u1|modular_adc_0|control_internal|u_control_fsm|u_clk_dft_synchronizer|dreg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRUP_CH~q\,
	datac => \u1|modular_adc_0|control_internal|u_control_fsm|clk_dft_synch_dly~q\,
	datad => \u1|modular_adc_0|control_internal|u_control_fsm|u_clk_dft_synchronizer|dreg\(0),
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|Selector5~0_combout\);

-- Location: LCCOMB_X37_Y11_N26
\u1|modular_adc_0|control_internal|u_control_fsm|Selector5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|Selector5~1_combout\ = (\u1|modular_adc_0|control_internal|u_control_fsm|Selector5~0_combout\) # ((\u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRUP_SOC~q\ & 
-- ((\u1|modular_adc_0|control_internal|u_control_fsm|u_eoc_synchronizer|dreg\(0)) # (!\u1|modular_adc_0|control_internal|u_control_fsm|eoc_synch_dly~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|modular_adc_0|control_internal|u_control_fsm|u_eoc_synchronizer|dreg\(0),
	datab => \u1|modular_adc_0|control_internal|u_control_fsm|eoc_synch_dly~q\,
	datac => \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRUP_SOC~q\,
	datad => \u1|modular_adc_0|control_internal|u_control_fsm|Selector5~0_combout\,
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|Selector5~1_combout\);

-- Location: LCCOMB_X38_Y11_N12
\u1|modular_adc_0|control_internal|u_control_fsm|Selector17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|Selector17~0_combout\ = (\u1|modular_adc_0|control_internal|u_control_fsm|Selector5~1_combout\) # ((\u1|modular_adc_0|control_internal|u_control_fsm|soc~q\ & 
-- ((!\u1|modular_adc_0|control_internal|u_control_fsm|WideOr12~1_combout\) # (!\u1|modular_adc_0|control_internal|u_control_fsm|Selector15~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|modular_adc_0|control_internal|u_control_fsm|Selector5~1_combout\,
	datab => \u1|modular_adc_0|control_internal|u_control_fsm|Selector15~2_combout\,
	datac => \u1|modular_adc_0|control_internal|u_control_fsm|soc~q\,
	datad => \u1|modular_adc_0|control_internal|u_control_fsm|WideOr12~1_combout\,
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|Selector17~0_combout\);

-- Location: FF_X38_Y11_N13
\u1|modular_adc_0|control_internal|u_control_fsm|soc\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	d => \u1|modular_adc_0|control_internal|u_control_fsm|Selector17~0_combout\,
	clrn => \u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|modular_adc_0|control_internal|u_control_fsm|soc~q\);

-- Location: LCCOMB_X37_Y11_N24
\u1|modular_adc_0|control_internal|u_control_fsm|u_eoc_synchronizer|din_s1~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|u_eoc_synchronizer|din_s1~feeder_combout\ = \u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|eoc\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|eoc\,
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|u_eoc_synchronizer|din_s1~feeder_combout\);

-- Location: FF_X37_Y11_N25
\u1|modular_adc_0|control_internal|u_control_fsm|u_eoc_synchronizer|din_s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	d => \u1|modular_adc_0|control_internal|u_control_fsm|u_eoc_synchronizer|din_s1~feeder_combout\,
	clrn => \u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|modular_adc_0|control_internal|u_control_fsm|u_eoc_synchronizer|din_s1~q\);

-- Location: LCCOMB_X37_Y11_N22
\u1|modular_adc_0|control_internal|u_control_fsm|u_eoc_synchronizer|dreg[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|u_eoc_synchronizer|dreg[0]~feeder_combout\ = \u1|modular_adc_0|control_internal|u_control_fsm|u_eoc_synchronizer|din_s1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u1|modular_adc_0|control_internal|u_control_fsm|u_eoc_synchronizer|din_s1~q\,
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|u_eoc_synchronizer|dreg[0]~feeder_combout\);

-- Location: FF_X37_Y11_N23
\u1|modular_adc_0|control_internal|u_control_fsm|u_eoc_synchronizer|dreg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	d => \u1|modular_adc_0|control_internal|u_control_fsm|u_eoc_synchronizer|dreg[0]~feeder_combout\,
	clrn => \u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|modular_adc_0|control_internal|u_control_fsm|u_eoc_synchronizer|dreg\(0));

-- Location: LCCOMB_X37_Y11_N0
\u1|modular_adc_0|control_internal|u_control_fsm|Selector9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|Selector9~0_combout\ = (\u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.GETCMD~q\) # ((\u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.CONV~q\ & 
-- ((\u1|modular_adc_0|control_internal|u_control_fsm|u_eoc_synchronizer|dreg\(0)) # (!\u1|modular_adc_0|control_internal|u_control_fsm|eoc_synch_dly~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|modular_adc_0|control_internal|u_control_fsm|u_eoc_synchronizer|dreg\(0),
	datab => \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.GETCMD~q\,
	datac => \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.CONV~q\,
	datad => \u1|modular_adc_0|control_internal|u_control_fsm|eoc_synch_dly~q\,
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|Selector9~0_combout\);

-- Location: FF_X37_Y11_N1
\u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.CONV\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	d => \u1|modular_adc_0|control_internal|u_control_fsm|Selector9~0_combout\,
	clrn => \u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.CONV~q\);

-- Location: LCCOMB_X37_Y11_N20
\u1|modular_adc_0|control_internal|u_control_fsm|load_dout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|load_dout~0_combout\ = (\u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.CONV~q\ & (!\u1|modular_adc_0|control_internal|u_control_fsm|u_eoc_synchronizer|dreg\(0) & 
-- \u1|modular_adc_0|control_internal|u_control_fsm|eoc_synch_dly~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.CONV~q\,
	datac => \u1|modular_adc_0|control_internal|u_control_fsm|u_eoc_synchronizer|dreg\(0),
	datad => \u1|modular_adc_0|control_internal|u_control_fsm|eoc_synch_dly~q\,
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|load_dout~0_combout\);

-- Location: FF_X37_Y11_N21
\u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.CONV_DLY1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	d => \u1|modular_adc_0|control_internal|u_control_fsm|load_dout~0_combout\,
	clrn => \u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.CONV_DLY1~q\);

-- Location: LCCOMB_X37_Y11_N30
\u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~feeder_combout\ = \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.CONV_DLY1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.CONV_DLY1~q\,
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~feeder_combout\);

-- Location: FF_X37_Y11_N31
\u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	d => \u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~feeder_combout\,
	clrn => \u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\);

-- Location: LCCOMB_X36_Y11_N16
\u1|modular_adc_0|control_internal|u_control_fsm|pend~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|pend~0_combout\ = (\u1|modular_adc_0|control_internal|u_control_fsm|pend~q\) # (\u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|modular_adc_0|control_internal|u_control_fsm|pend~q\,
	datad => \u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\,
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|pend~0_combout\);

-- Location: FF_X36_Y11_N17
\u1|modular_adc_0|control_internal|u_control_fsm|pend\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	d => \u1|modular_adc_0|control_internal|u_control_fsm|pend~0_combout\,
	clrn => \u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|modular_adc_0|control_internal|u_control_fsm|pend~q\);

-- Location: LCCOMB_X36_Y11_N14
\u1|modular_adc_0|control_internal|u_control_fsm|load_rsp~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|load_rsp~0_combout\ = (\u1|modular_adc_0|control_internal|u_control_fsm|pend~q\ & \u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|modular_adc_0|control_internal|u_control_fsm|pend~q\,
	datad => \u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\,
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|load_rsp~0_combout\);

-- Location: FF_X32_Y7_N23
\u1|modular_adc_0|control_internal|u_control_fsm|rsp_valid\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	asdata => \u1|modular_adc_0|control_internal|u_control_fsm|load_rsp~0_combout\,
	clrn => \u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_valid~q\);

-- Location: LCCOMB_X32_Y7_N22
\Selector0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (\Selector0~0_combout\ & (\u1|modular_adc_0|control_internal|u_control_fsm|rsp_valid~q\ & \estado_pres.e3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector0~0_combout\,
	datac => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_valid~q\,
	datad => \estado_pres.e3~q\,
	combout => \Selector0~1_combout\);

-- Location: LCCOMB_X38_Y7_N0
\Selector0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~8_combout\ = (\fsm:addressCounter[2]~combout\ & (\fsm:addressCounter[3]~combout\ & (\fsm:addressCounter[5]~combout\ & \fsm:addressCounter[4]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm:addressCounter[2]~combout\,
	datab => \fsm:addressCounter[3]~combout\,
	datac => \fsm:addressCounter[5]~combout\,
	datad => \fsm:addressCounter[4]~combout\,
	combout => \Selector0~8_combout\);

-- Location: LCCOMB_X32_Y7_N28
\Selector0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~9_combout\ = (\fsm:addressCounter[0]~combout\ & (\Selector0~8_combout\ & (\estado_pres.e4~q\ & \fsm:addressCounter[1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm:addressCounter[0]~combout\,
	datab => \Selector0~8_combout\,
	datac => \estado_pres.e4~q\,
	datad => \fsm:addressCounter[1]~combout\,
	combout => \Selector0~9_combout\);

-- Location: LCCOMB_X32_Y7_N0
\Selector0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~10_combout\ = (\Selector0~1_combout\) # ((\Selector0~7_combout\ & (\Selector0~6_combout\ & \Selector0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~7_combout\,
	datab => \Selector0~6_combout\,
	datac => \Selector0~1_combout\,
	datad => \Selector0~9_combout\,
	combout => \Selector0~10_combout\);

-- Location: CLKCTRL_G18
\Selector0~10clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Selector0~10clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Selector0~10clkctrl_outclk\);

-- Location: LCCOMB_X39_Y7_N22
\fsm:addressCounter[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fsm:addressCounter[0]~combout\ = (GLOBAL(\Selector0~10clkctrl_outclk\) & (\Add0~77_combout\)) # (!GLOBAL(\Selector0~10clkctrl_outclk\) & ((\fsm:addressCounter[0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~77_combout\,
	datac => \fsm:addressCounter[0]~combout\,
	datad => \Selector0~10clkctrl_outclk\,
	combout => \fsm:addressCounter[0]~combout\);

-- Location: LCCOMB_X37_Y7_N8
\Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\fsm:addressCounter[1]~combout\ & (!\Add0~1\)) # (!\fsm:addressCounter[1]~combout\ & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!\fsm:addressCounter[1]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fsm:addressCounter[1]~combout\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X36_Y7_N30
\Add0~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~67_combout\ = (\Add0~2_combout\ & !\estado_pres.e4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~2_combout\,
	datad => \estado_pres.e4~q\,
	combout => \Add0~67_combout\);

-- Location: LCCOMB_X36_Y8_N30
\fsm:addressCounter[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fsm:addressCounter[1]~combout\ = (GLOBAL(\Selector0~10clkctrl_outclk\) & (\Add0~67_combout\)) # (!GLOBAL(\Selector0~10clkctrl_outclk\) & ((\fsm:addressCounter[1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~67_combout\,
	datac => \fsm:addressCounter[1]~combout\,
	datad => \Selector0~10clkctrl_outclk\,
	combout => \fsm:addressCounter[1]~combout\);

-- Location: LCCOMB_X37_Y7_N10
\Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (\fsm:addressCounter[2]~combout\ & (\Add0~3\ $ (GND))) # (!\fsm:addressCounter[2]~combout\ & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((\fsm:addressCounter[2]~combout\ & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fsm:addressCounter[2]~combout\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X34_Y7_N26
\Add0~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~68_combout\ = (!\estado_pres.e4~q\ & \Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_pres.e4~q\,
	datad => \Add0~4_combout\,
	combout => \Add0~68_combout\);

-- Location: LCCOMB_X34_Y7_N0
\fsm:addressCounter[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fsm:addressCounter[2]~combout\ = (GLOBAL(\Selector0~10clkctrl_outclk\) & (\Add0~68_combout\)) # (!GLOBAL(\Selector0~10clkctrl_outclk\) & ((\fsm:addressCounter[2]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~68_combout\,
	datac => \fsm:addressCounter[2]~combout\,
	datad => \Selector0~10clkctrl_outclk\,
	combout => \fsm:addressCounter[2]~combout\);

-- Location: LCCOMB_X37_Y7_N12
\Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\fsm:addressCounter[3]~combout\ & (!\Add0~5\)) # (!\fsm:addressCounter[3]~combout\ & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!\fsm:addressCounter[3]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fsm:addressCounter[3]~combout\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X34_Y7_N8
\Add0~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~69_combout\ = (!\estado_pres.e4~q\ & \Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_pres.e4~q\,
	datad => \Add0~6_combout\,
	combout => \Add0~69_combout\);

-- Location: LCCOMB_X34_Y7_N10
\fsm:addressCounter[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fsm:addressCounter[3]~combout\ = (GLOBAL(\Selector0~10clkctrl_outclk\) & (\Add0~69_combout\)) # (!GLOBAL(\Selector0~10clkctrl_outclk\) & ((\fsm:addressCounter[3]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~69_combout\,
	datac => \fsm:addressCounter[3]~combout\,
	datad => \Selector0~10clkctrl_outclk\,
	combout => \fsm:addressCounter[3]~combout\);

-- Location: LCCOMB_X37_Y7_N14
\Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (\fsm:addressCounter[4]~combout\ & (\Add0~7\ $ (GND))) # (!\fsm:addressCounter[4]~combout\ & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((\fsm:addressCounter[4]~combout\ & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fsm:addressCounter[4]~combout\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X37_Y7_N4
\Add0~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~70_combout\ = (\Add0~8_combout\ & !\estado_pres.e4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~8_combout\,
	datad => \estado_pres.e4~q\,
	combout => \Add0~70_combout\);

-- Location: LCCOMB_X37_Y7_N2
\fsm:addressCounter[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fsm:addressCounter[4]~combout\ = (GLOBAL(\Selector0~10clkctrl_outclk\) & ((\Add0~70_combout\))) # (!GLOBAL(\Selector0~10clkctrl_outclk\) & (\fsm:addressCounter[4]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm:addressCounter[4]~combout\,
	datab => \Add0~70_combout\,
	datad => \Selector0~10clkctrl_outclk\,
	combout => \fsm:addressCounter[4]~combout\);

-- Location: LCCOMB_X37_Y7_N16
\Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\fsm:addressCounter[5]~combout\ & (!\Add0~9\)) # (!\fsm:addressCounter[5]~combout\ & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!\fsm:addressCounter[5]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fsm:addressCounter[5]~combout\,
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X34_Y7_N2
\Add0~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~71_combout\ = (!\estado_pres.e4~q\ & \Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_pres.e4~q\,
	datac => \Add0~10_combout\,
	combout => \Add0~71_combout\);

-- Location: LCCOMB_X34_Y7_N12
\fsm:addressCounter[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fsm:addressCounter[5]~combout\ = (GLOBAL(\Selector0~10clkctrl_outclk\) & (\Add0~71_combout\)) # (!GLOBAL(\Selector0~10clkctrl_outclk\) & ((\fsm:addressCounter[5]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~71_combout\,
	datac => \fsm:addressCounter[5]~combout\,
	datad => \Selector0~10clkctrl_outclk\,
	combout => \fsm:addressCounter[5]~combout\);

-- Location: LCCOMB_X37_Y7_N18
\Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (\fsm:addressCounter[6]~combout\ & (\Add0~11\ $ (GND))) # (!\fsm:addressCounter[6]~combout\ & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((\fsm:addressCounter[6]~combout\ & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fsm:addressCounter[6]~combout\,
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X36_Y7_N20
\Add0~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~72_combout\ = (!\estado_pres.e4~q\ & \Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_pres.e4~q\,
	datad => \Add0~12_combout\,
	combout => \Add0~72_combout\);

-- Location: LCCOMB_X36_Y7_N18
\fsm:addressCounter[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fsm:addressCounter[6]~combout\ = (GLOBAL(\Selector0~10clkctrl_outclk\) & ((\Add0~72_combout\))) # (!GLOBAL(\Selector0~10clkctrl_outclk\) & (\fsm:addressCounter[6]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm:addressCounter[6]~combout\,
	datac => \Add0~72_combout\,
	datad => \Selector0~10clkctrl_outclk\,
	combout => \fsm:addressCounter[6]~combout\);

-- Location: LCCOMB_X37_Y7_N20
\Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (\fsm:addressCounter[7]~combout\ & (!\Add0~13\)) # (!\fsm:addressCounter[7]~combout\ & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!\fsm:addressCounter[7]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fsm:addressCounter[7]~combout\,
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X36_Y7_N22
\Add0~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~73_combout\ = (\Add0~14_combout\ & !\estado_pres.e4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~14_combout\,
	datad => \estado_pres.e4~q\,
	combout => \Add0~73_combout\);

-- Location: LCCOMB_X36_Y7_N0
\fsm:addressCounter[7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fsm:addressCounter[7]~combout\ = (GLOBAL(\Selector0~10clkctrl_outclk\) & ((\Add0~73_combout\))) # (!GLOBAL(\Selector0~10clkctrl_outclk\) & (\fsm:addressCounter[7]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm:addressCounter[7]~combout\,
	datac => \Add0~73_combout\,
	datad => \Selector0~10clkctrl_outclk\,
	combout => \fsm:addressCounter[7]~combout\);

-- Location: LCCOMB_X37_Y7_N22
\Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (\fsm:addressCounter[8]~combout\ & (\Add0~15\ $ (GND))) # (!\fsm:addressCounter[8]~combout\ & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((\fsm:addressCounter[8]~combout\ & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fsm:addressCounter[8]~combout\,
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X36_Y7_N10
\Add0~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~74_combout\ = (\Add0~16_combout\ & !\estado_pres.e4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~16_combout\,
	datad => \estado_pres.e4~q\,
	combout => \Add0~74_combout\);

-- Location: LCCOMB_X36_Y7_N6
\fsm:addressCounter[8]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fsm:addressCounter[8]~combout\ = (GLOBAL(\Selector0~10clkctrl_outclk\) & ((\Add0~74_combout\))) # (!GLOBAL(\Selector0~10clkctrl_outclk\) & (\fsm:addressCounter[8]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fsm:addressCounter[8]~combout\,
	datac => \Add0~74_combout\,
	datad => \Selector0~10clkctrl_outclk\,
	combout => \fsm:addressCounter[8]~combout\);

-- Location: LCCOMB_X37_Y7_N24
\Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (\fsm:addressCounter[9]~combout\ & (!\Add0~17\)) # (!\fsm:addressCounter[9]~combout\ & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!\fsm:addressCounter[9]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fsm:addressCounter[9]~combout\,
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X36_Y7_N24
\Add0~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~75_combout\ = (!\estado_pres.e4~q\ & \Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_pres.e4~q\,
	datad => \Add0~18_combout\,
	combout => \Add0~75_combout\);

-- Location: LCCOMB_X36_Y7_N8
\fsm:addressCounter[9]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fsm:addressCounter[9]~combout\ = (GLOBAL(\Selector0~10clkctrl_outclk\) & ((\Add0~75_combout\))) # (!GLOBAL(\Selector0~10clkctrl_outclk\) & (\fsm:addressCounter[9]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm:addressCounter[9]~combout\,
	datac => \Add0~75_combout\,
	datad => \Selector0~10clkctrl_outclk\,
	combout => \fsm:addressCounter[9]~combout\);

-- Location: LCCOMB_X37_Y7_N26
\Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (\fsm:addressCounter[10]~combout\ & (\Add0~19\ $ (GND))) # (!\fsm:addressCounter[10]~combout\ & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((\fsm:addressCounter[10]~combout\ & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fsm:addressCounter[10]~combout\,
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X37_Y7_N0
\Add0~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~76_combout\ = (\Add0~20_combout\ & !\estado_pres.e4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~20_combout\,
	datac => \estado_pres.e4~q\,
	combout => \Add0~76_combout\);

-- Location: LCCOMB_X38_Y7_N18
\fsm:addressCounter[10]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fsm:addressCounter[10]~combout\ = (GLOBAL(\Selector0~10clkctrl_outclk\) & ((\Add0~76_combout\))) # (!GLOBAL(\Selector0~10clkctrl_outclk\) & (\fsm:addressCounter[10]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm:addressCounter[10]~combout\,
	datac => \Add0~76_combout\,
	datad => \Selector0~10clkctrl_outclk\,
	combout => \fsm:addressCounter[10]~combout\);

-- Location: LCCOMB_X37_Y7_N28
\Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (\fsm:addressCounter[11]~combout\ & (!\Add0~21\)) # (!\fsm:addressCounter[11]~combout\ & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!\fsm:addressCounter[11]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fsm:addressCounter[11]~combout\,
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X39_Y7_N12
\Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (!\estado_pres.e4~q\ & \Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estado_pres.e4~q\,
	datad => \Add0~22_combout\,
	combout => \Add0~24_combout\);

-- Location: LCCOMB_X39_Y7_N0
\fsm:addressCounter[11]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fsm:addressCounter[11]~combout\ = (GLOBAL(\Selector0~10clkctrl_outclk\) & (\Add0~24_combout\)) # (!GLOBAL(\Selector0~10clkctrl_outclk\) & ((\fsm:addressCounter[11]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~24_combout\,
	datac => \fsm:addressCounter[11]~combout\,
	datad => \Selector0~10clkctrl_outclk\,
	combout => \fsm:addressCounter[11]~combout\);

-- Location: LCCOMB_X38_Y7_N22
\Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = (!\estado_pres.e4~q\ & \Add0~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estado_pres.e4~q\,
	datac => \Add0~25_combout\,
	combout => \Add0~54_combout\);

-- Location: LCCOMB_X38_Y7_N6
\fsm:addressCounter[12]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fsm:addressCounter[12]~combout\ = (GLOBAL(\Selector0~10clkctrl_outclk\) & (\Add0~54_combout\)) # (!GLOBAL(\Selector0~10clkctrl_outclk\) & ((\fsm:addressCounter[12]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~54_combout\,
	datac => \fsm:addressCounter[12]~combout\,
	datad => \Selector0~10clkctrl_outclk\,
	combout => \fsm:addressCounter[12]~combout\);

-- Location: LCCOMB_X38_Y7_N28
\memaddress~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memaddress~2_combout\ = (!\DE10Reset~input_o\ & \fsm:addressCounter[12]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DE10Reset~input_o\,
	datad => \fsm:addressCounter[12]~combout\,
	combout => \memaddress~2_combout\);

-- Location: LCCOMB_X38_Y7_N14
\memaddress[12]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- memaddress(12) = (GLOBAL(\estado_pres.e1~clkctrl_outclk\) & (memaddress(12))) # (!GLOBAL(\estado_pres.e1~clkctrl_outclk\) & ((\memaddress~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => memaddress(12),
	datac => \estado_pres.e1~clkctrl_outclk\,
	datad => \memaddress~2_combout\,
	combout => memaddress(12));

-- Location: LCCOMB_X35_Y7_N16
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[43]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\ = (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|wr_address~q\ & 
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|always2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|wr_address~q\,
	datad => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|always2~0_combout\,
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\);

-- Location: FF_X38_Y7_N21
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => memaddress(12),
	sload => VCC,
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(29));

-- Location: FF_X38_Y7_N15
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => memaddress(12),
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(29));

-- Location: LCCOMB_X38_Y7_N20
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[29]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[29]~3_combout\ = (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(29))) # (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\,
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(29),
	datad => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(29),
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[29]~3_combout\);

-- Location: LCCOMB_X37_Y6_N26
\memaddress~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memaddress~1_combout\ = (!\DE10Reset~input_o\ & \fsm:addressCounter[25]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DE10Reset~input_o\,
	datad => \fsm:addressCounter[25]~combout\,
	combout => \memaddress~1_combout\);

-- Location: LCCOMB_X38_Y7_N30
\memaddress[25]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- memaddress(25) = (GLOBAL(\estado_pres.e1~clkctrl_outclk\) & (memaddress(25))) # (!GLOBAL(\estado_pres.e1~clkctrl_outclk\) & ((\memaddress~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => memaddress(25),
	datac => \estado_pres.e1~clkctrl_outclk\,
	datad => \memaddress~1_combout\,
	combout => memaddress(25));

-- Location: FF_X38_Y7_N25
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => memaddress(25),
	sload => VCC,
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(42));

-- Location: FF_X38_Y7_N31
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => memaddress(25),
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(42));

-- Location: LCCOMB_X38_Y7_N24
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[42]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[42]~2_combout\ = (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(42))) # (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(42))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\,
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(42),
	datad => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(42),
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[42]~2_combout\);

-- Location: LCCOMB_X35_Y3_N24
\DRAM|new_sdram_controller_0|active_rnw~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|active_rnw~0_combout\ = (\DRAM|new_sdram_controller_0|init_done~q\ & ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(0)) # 
-- (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DRAM|new_sdram_controller_0|init_done~q\,
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(0),
	datad => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(1),
	combout => \DRAM|new_sdram_controller_0|active_rnw~0_combout\);

-- Location: LCCOMB_X35_Y5_N16
\DRAM|new_sdram_controller_0|active_rnw~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|active_rnw~1_combout\ = (!\DRAM|new_sdram_controller_0|refresh_request~q\ & \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DRAM|new_sdram_controller_0|refresh_request~q\,
	datad => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	combout => \DRAM|new_sdram_controller_0|active_rnw~1_combout\);

-- Location: LCCOMB_X32_Y3_N28
\DRAM|new_sdram_controller_0|Selector27~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector27~0_combout\ = (\DRAM|new_sdram_controller_0|Selector24~0_combout\ & (((!\DRAM|new_sdram_controller_0|refresh_request~q\ & 
-- !\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|Equal1~0_combout\)) # (!\DRAM|new_sdram_controller_0|m_state.100000000~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|Selector24~0_combout\,
	datab => \DRAM|new_sdram_controller_0|refresh_request~q\,
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|Equal1~0_combout\,
	datad => \DRAM|new_sdram_controller_0|m_state.100000000~q\,
	combout => \DRAM|new_sdram_controller_0|Selector27~0_combout\);

-- Location: FF_X36_Y4_N15
\DRAM|new_sdram_controller_0|active_rnw\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[43]~1_combout\,
	ena => \DRAM|new_sdram_controller_0|active_rnw~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|active_rnw~q\);

-- Location: LCCOMB_X36_Y6_N12
\memaddress~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memaddress~11_combout\ = (!\DE10Reset~input_o\ & \fsm:addressCounter[22]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DE10Reset~input_o\,
	datad => \fsm:addressCounter[22]~combout\,
	combout => \memaddress~11_combout\);

-- Location: LCCOMB_X36_Y6_N8
\memaddress[22]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- memaddress(22) = (GLOBAL(\estado_pres.e1~clkctrl_outclk\) & (memaddress(22))) # (!GLOBAL(\estado_pres.e1~clkctrl_outclk\) & ((\memaddress~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => memaddress(22),
	datac => \estado_pres.e1~clkctrl_outclk\,
	datad => \memaddress~11_combout\,
	combout => memaddress(22));

-- Location: LCCOMB_X36_Y6_N30
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[39]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[39]~feeder_combout\ = memaddress(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => memaddress(22),
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[39]~feeder_combout\);

-- Location: FF_X36_Y6_N31
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[39]~feeder_combout\,
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(39));

-- Location: FF_X36_Y6_N1
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => memaddress(22),
	sload => VCC,
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(39));

-- Location: LCCOMB_X36_Y6_N0
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[39]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[39]~12_combout\ = (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(39)))) # (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(39)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(39),
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(39),
	datad => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\,
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[39]~12_combout\);

-- Location: FF_X32_Y4_N7
\DRAM|new_sdram_controller_0|active_addr[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[39]~12_combout\,
	sload => VCC,
	ena => \DRAM|new_sdram_controller_0|active_rnw~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|active_addr\(21));

-- Location: LCCOMB_X38_Y6_N20
\memaddress~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memaddress~12_combout\ = (!\DE10Reset~input_o\ & \fsm:addressCounter[21]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DE10Reset~input_o\,
	datad => \fsm:addressCounter[21]~combout\,
	combout => \memaddress~12_combout\);

-- Location: LCCOMB_X38_Y6_N22
\memaddress[21]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- memaddress(21) = (GLOBAL(\estado_pres.e1~clkctrl_outclk\) & (memaddress(21))) # (!GLOBAL(\estado_pres.e1~clkctrl_outclk\) & ((\memaddress~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => memaddress(21),
	datac => \estado_pres.e1~clkctrl_outclk\,
	datad => \memaddress~12_combout\,
	combout => memaddress(21));

-- Location: FF_X38_Y6_N1
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => memaddress(21),
	sload => VCC,
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(38));

-- Location: FF_X38_Y6_N23
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => memaddress(21),
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(38));

-- Location: LCCOMB_X38_Y6_N0
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[38]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[38]~13_combout\ = (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(38))) # (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(38))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\,
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(38),
	datad => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(38),
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[38]~13_combout\);

-- Location: FF_X32_Y4_N29
\DRAM|new_sdram_controller_0|active_addr[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[38]~13_combout\,
	sload => VCC,
	ena => \DRAM|new_sdram_controller_0|active_rnw~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|active_addr\(20));

-- Location: LCCOMB_X32_Y4_N20
\DRAM|new_sdram_controller_0|pending~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|pending~7_combout\ = (\DRAM|new_sdram_controller_0|active_addr\(21) & (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[39]~12_combout\ & 
-- (\DRAM|new_sdram_controller_0|active_addr\(20) $ (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[38]~13_combout\)))) # (!\DRAM|new_sdram_controller_0|active_addr\(21) & 
-- (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[39]~12_combout\ & (\DRAM|new_sdram_controller_0|active_addr\(20) $ 
-- (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[38]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|active_addr\(21),
	datab => \DRAM|new_sdram_controller_0|active_addr\(20),
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[38]~13_combout\,
	datad => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[39]~12_combout\,
	combout => \DRAM|new_sdram_controller_0|pending~7_combout\);

-- Location: LCCOMB_X36_Y8_N20
\memaddress~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memaddress~10_combout\ = (!\DE10Reset~input_o\ & \fsm:addressCounter[19]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DE10Reset~input_o\,
	datad => \fsm:addressCounter[19]~combout\,
	combout => \memaddress~10_combout\);

-- Location: LCCOMB_X36_Y8_N14
\memaddress[19]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- memaddress(19) = (GLOBAL(\estado_pres.e1~clkctrl_outclk\) & (memaddress(19))) # (!GLOBAL(\estado_pres.e1~clkctrl_outclk\) & ((\memaddress~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_pres.e1~clkctrl_outclk\,
	datab => memaddress(19),
	datad => \memaddress~10_combout\,
	combout => memaddress(19));

-- Location: LCCOMB_X36_Y8_N22
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[36]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[36]~feeder_combout\ = memaddress(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => memaddress(19),
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[36]~feeder_combout\);

-- Location: FF_X36_Y8_N23
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[36]~feeder_combout\,
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(36));

-- Location: FF_X36_Y8_N17
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => memaddress(19),
	sload => VCC,
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(36));

-- Location: LCCOMB_X36_Y8_N16
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[36]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[36]~11_combout\ = (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(36)))) # (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(36)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(36),
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(36),
	datad => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\,
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[36]~11_combout\);

-- Location: LCCOMB_X38_Y6_N10
\memaddress~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memaddress~9_combout\ = (!\DE10Reset~input_o\ & \fsm:addressCounter[20]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DE10Reset~input_o\,
	datad => \fsm:addressCounter[20]~combout\,
	combout => \memaddress~9_combout\);

-- Location: LCCOMB_X38_Y6_N30
\memaddress[20]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- memaddress(20) = (GLOBAL(\estado_pres.e1~clkctrl_outclk\) & (memaddress(20))) # (!GLOBAL(\estado_pres.e1~clkctrl_outclk\) & ((\memaddress~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => memaddress(20),
	datac => \estado_pres.e1~clkctrl_outclk\,
	datad => \memaddress~9_combout\,
	combout => memaddress(20));

-- Location: FF_X38_Y6_N31
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => memaddress(20),
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(37));

-- Location: FF_X38_Y6_N5
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => memaddress(20),
	sload => VCC,
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(37));

-- Location: LCCOMB_X38_Y6_N4
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[37]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[37]~10_combout\ = (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(37)))) # (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(37)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\,
	datab => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(37),
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(37),
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[37]~10_combout\);

-- Location: FF_X36_Y4_N9
\DRAM|new_sdram_controller_0|active_addr[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[37]~10_combout\,
	sload => VCC,
	ena => \DRAM|new_sdram_controller_0|active_rnw~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|active_addr\(19));

-- Location: FF_X36_Y4_N19
\DRAM|new_sdram_controller_0|active_addr[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[36]~11_combout\,
	sload => VCC,
	ena => \DRAM|new_sdram_controller_0|active_rnw~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|active_addr\(18));

-- Location: LCCOMB_X36_Y4_N18
\DRAM|new_sdram_controller_0|pending~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|pending~6_combout\ = (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[36]~11_combout\ & (\DRAM|new_sdram_controller_0|active_addr\(18) & 
-- (\DRAM|new_sdram_controller_0|active_addr\(19) $ (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[37]~10_combout\)))) # 
-- (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[36]~11_combout\ & (!\DRAM|new_sdram_controller_0|active_addr\(18) & (\DRAM|new_sdram_controller_0|active_addr\(19) $ 
-- (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[37]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[36]~11_combout\,
	datab => \DRAM|new_sdram_controller_0|active_addr\(19),
	datac => \DRAM|new_sdram_controller_0|active_addr\(18),
	datad => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[37]~10_combout\,
	combout => \DRAM|new_sdram_controller_0|pending~6_combout\);

-- Location: LCCOMB_X36_Y6_N16
\memaddress~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memaddress~14_combout\ = (!\DE10Reset~input_o\ & \fsm:addressCounter[23]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DE10Reset~input_o\,
	datad => \fsm:addressCounter[23]~combout\,
	combout => \memaddress~14_combout\);

-- Location: LCCOMB_X36_Y6_N22
\memaddress[23]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- memaddress(23) = (GLOBAL(\estado_pres.e1~clkctrl_outclk\) & (memaddress(23))) # (!GLOBAL(\estado_pres.e1~clkctrl_outclk\) & ((\memaddress~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => memaddress(23),
	datac => \estado_pres.e1~clkctrl_outclk\,
	datad => \memaddress~14_combout\,
	combout => memaddress(23));

-- Location: FF_X36_Y6_N23
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => memaddress(23),
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(40));

-- Location: FF_X36_Y6_N29
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => memaddress(23),
	sload => VCC,
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(40));

-- Location: LCCOMB_X36_Y6_N28
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[40]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[40]~15_combout\ = (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(40)))) # (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(40)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(40),
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(40),
	datad => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\,
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[40]~15_combout\);

-- Location: FF_X32_Y4_N11
\DRAM|new_sdram_controller_0|active_addr[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[40]~15_combout\,
	sload => VCC,
	ena => \DRAM|new_sdram_controller_0|active_rnw~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|active_addr\(22));

-- Location: LCCOMB_X36_Y6_N6
\memaddress~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memaddress~13_combout\ = (!\DE10Reset~input_o\ & \fsm:addressCounter[24]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DE10Reset~input_o\,
	datad => \fsm:addressCounter[24]~combout\,
	combout => \memaddress~13_combout\);

-- Location: LCCOMB_X36_Y6_N14
\memaddress[24]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- memaddress(24) = (GLOBAL(\estado_pres.e1~clkctrl_outclk\) & (memaddress(24))) # (!GLOBAL(\estado_pres.e1~clkctrl_outclk\) & ((\memaddress~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => memaddress(24),
	datac => \estado_pres.e1~clkctrl_outclk\,
	datad => \memaddress~13_combout\,
	combout => memaddress(24));

-- Location: FF_X36_Y6_N15
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => memaddress(24),
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(41));

-- Location: FF_X36_Y6_N5
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => memaddress(24),
	sload => VCC,
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(41));

-- Location: LCCOMB_X36_Y6_N4
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[41]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[41]~14_combout\ = (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(41)))) # (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(41)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(41),
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(41),
	datad => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\,
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[41]~14_combout\);

-- Location: FF_X32_Y4_N1
\DRAM|new_sdram_controller_0|active_addr[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[41]~14_combout\,
	sload => VCC,
	ena => \DRAM|new_sdram_controller_0|active_rnw~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|active_addr\(23));

-- Location: LCCOMB_X35_Y4_N14
\DRAM|new_sdram_controller_0|pending~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|pending~8_combout\ = (\DRAM|new_sdram_controller_0|active_addr\(22) & (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[40]~15_combout\ & 
-- (\DRAM|new_sdram_controller_0|active_addr\(23) $ (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[41]~14_combout\)))) # (!\DRAM|new_sdram_controller_0|active_addr\(22) & 
-- (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[40]~15_combout\ & (\DRAM|new_sdram_controller_0|active_addr\(23) $ 
-- (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[41]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|active_addr\(22),
	datab => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[40]~15_combout\,
	datac => \DRAM|new_sdram_controller_0|active_addr\(23),
	datad => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[41]~14_combout\,
	combout => \DRAM|new_sdram_controller_0|pending~8_combout\);

-- Location: LCCOMB_X36_Y5_N20
\memaddress~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memaddress~8_combout\ = (!\DE10Reset~input_o\ & \fsm:addressCounter[17]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DE10Reset~input_o\,
	datad => \fsm:addressCounter[17]~combout\,
	combout => \memaddress~8_combout\);

-- Location: LCCOMB_X36_Y5_N30
\memaddress[17]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- memaddress(17) = (GLOBAL(\estado_pres.e1~clkctrl_outclk\) & (memaddress(17))) # (!GLOBAL(\estado_pres.e1~clkctrl_outclk\) & ((\memaddress~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => memaddress(17),
	datac => \estado_pres.e1~clkctrl_outclk\,
	datad => \memaddress~8_combout\,
	combout => memaddress(17));

-- Location: FF_X36_Y5_N5
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => memaddress(17),
	sload => VCC,
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(34));

-- Location: FF_X36_Y5_N31
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => memaddress(17),
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(34));

-- Location: LCCOMB_X36_Y5_N4
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[34]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[34]~9_combout\ = (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(34))) # (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(34))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\,
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(34),
	datad => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(34),
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[34]~9_combout\);

-- Location: LCCOMB_X38_Y6_N16
\memaddress~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memaddress~7_combout\ = (!\DE10Reset~input_o\ & \fsm:addressCounter[18]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DE10Reset~input_o\,
	datad => \fsm:addressCounter[18]~combout\,
	combout => \memaddress~7_combout\);

-- Location: LCCOMB_X38_Y6_N26
\memaddress[18]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- memaddress(18) = (GLOBAL(\estado_pres.e1~clkctrl_outclk\) & (memaddress(18))) # (!GLOBAL(\estado_pres.e1~clkctrl_outclk\) & ((\memaddress~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => memaddress(18),
	datac => \estado_pres.e1~clkctrl_outclk\,
	datad => \memaddress~7_combout\,
	combout => memaddress(18));

-- Location: FF_X38_Y6_N29
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => memaddress(18),
	sload => VCC,
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(35));

-- Location: FF_X38_Y6_N27
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => memaddress(18),
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(35));

-- Location: LCCOMB_X38_Y6_N28
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[35]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[35]~8_combout\ = (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(35))) # (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(35))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\,
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(35),
	datad => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(35),
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[35]~8_combout\);

-- Location: FF_X37_Y4_N15
\DRAM|new_sdram_controller_0|active_addr[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[34]~9_combout\,
	sload => VCC,
	ena => \DRAM|new_sdram_controller_0|active_rnw~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|active_addr\(16));

-- Location: FF_X37_Y4_N1
\DRAM|new_sdram_controller_0|active_addr[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[35]~8_combout\,
	sload => VCC,
	ena => \DRAM|new_sdram_controller_0|active_rnw~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|active_addr\(17));

-- Location: LCCOMB_X37_Y4_N14
\DRAM|new_sdram_controller_0|pending~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|pending~5_combout\ = (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[34]~9_combout\ & (\DRAM|new_sdram_controller_0|active_addr\(16) & 
-- (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[35]~8_combout\ $ (!\DRAM|new_sdram_controller_0|active_addr\(17))))) # 
-- (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[34]~9_combout\ & (!\DRAM|new_sdram_controller_0|active_addr\(16) & 
-- (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[35]~8_combout\ $ (!\DRAM|new_sdram_controller_0|active_addr\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[34]~9_combout\,
	datab => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[35]~8_combout\,
	datac => \DRAM|new_sdram_controller_0|active_addr\(16),
	datad => \DRAM|new_sdram_controller_0|active_addr\(17),
	combout => \DRAM|new_sdram_controller_0|pending~5_combout\);

-- Location: LCCOMB_X35_Y4_N20
\DRAM|new_sdram_controller_0|pending~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|pending~9_combout\ = (\DRAM|new_sdram_controller_0|pending~7_combout\ & (\DRAM|new_sdram_controller_0|pending~6_combout\ & (\DRAM|new_sdram_controller_0|pending~8_combout\ & \DRAM|new_sdram_controller_0|pending~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|pending~7_combout\,
	datab => \DRAM|new_sdram_controller_0|pending~6_combout\,
	datac => \DRAM|new_sdram_controller_0|pending~8_combout\,
	datad => \DRAM|new_sdram_controller_0|pending~5_combout\,
	combout => \DRAM|new_sdram_controller_0|pending~9_combout\);

-- Location: LCCOMB_X35_Y4_N8
\DRAM|new_sdram_controller_0|pending~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|pending~10_combout\ = (!\DRAM|new_sdram_controller_0|active_cs_n~q\ & (\DRAM|new_sdram_controller_0|pending~4_combout\ & \DRAM|new_sdram_controller_0|pending~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|active_cs_n~q\,
	datac => \DRAM|new_sdram_controller_0|pending~4_combout\,
	datad => \DRAM|new_sdram_controller_0|pending~9_combout\,
	combout => \DRAM|new_sdram_controller_0|pending~10_combout\);

-- Location: LCCOMB_X35_Y3_N26
\DRAM|new_sdram_controller_0|m_next~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|m_next~22_combout\ = (!\DRAM|new_sdram_controller_0|refresh_request~q\ & ((\DRAM|new_sdram_controller_0|pending~10_combout\) # ((!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(1) 
-- & !\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|refresh_request~q\,
	datab => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(1),
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(0),
	datad => \DRAM|new_sdram_controller_0|pending~10_combout\,
	combout => \DRAM|new_sdram_controller_0|m_next~22_combout\);

-- Location: LCCOMB_X34_Y3_N26
\DRAM|new_sdram_controller_0|Selector35~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector35~1_combout\ = (!\DRAM|new_sdram_controller_0|m_state.010000000~q\ & (!\DRAM|new_sdram_controller_0|active_rnw~q\ & ((\DRAM|new_sdram_controller_0|m_next~22_combout\) # 
-- (!\DRAM|new_sdram_controller_0|m_state.100000000~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_state.010000000~q\,
	datab => \DRAM|new_sdram_controller_0|m_state.100000000~q\,
	datac => \DRAM|new_sdram_controller_0|active_rnw~q\,
	datad => \DRAM|new_sdram_controller_0|m_next~22_combout\,
	combout => \DRAM|new_sdram_controller_0|Selector35~1_combout\);

-- Location: LCCOMB_X35_Y4_N18
\DRAM|new_sdram_controller_0|m_next~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|m_next~21_combout\ = ((!\DRAM|new_sdram_controller_0|active_cs_n~q\ & (\DRAM|new_sdram_controller_0|pending~4_combout\ & \DRAM|new_sdram_controller_0|pending~9_combout\))) # 
-- (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|active_cs_n~q\,
	datab => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|Equal1~0_combout\,
	datac => \DRAM|new_sdram_controller_0|pending~4_combout\,
	datad => \DRAM|new_sdram_controller_0|pending~9_combout\,
	combout => \DRAM|new_sdram_controller_0|m_next~21_combout\);

-- Location: LCCOMB_X34_Y3_N6
\DRAM|new_sdram_controller_0|Selector35~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector35~0_combout\ = (!\DRAM|new_sdram_controller_0|m_state.010000000~q\ & (((\DRAM|new_sdram_controller_0|m_next~21_combout\ & !\DRAM|new_sdram_controller_0|refresh_request~q\)) # 
-- (!\DRAM|new_sdram_controller_0|m_state.100000000~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_state.010000000~q\,
	datab => \DRAM|new_sdram_controller_0|m_next~21_combout\,
	datac => \DRAM|new_sdram_controller_0|m_state.100000000~q\,
	datad => \DRAM|new_sdram_controller_0|refresh_request~q\,
	combout => \DRAM|new_sdram_controller_0|Selector35~0_combout\);

-- Location: LCCOMB_X34_Y3_N8
\DRAM|new_sdram_controller_0|Selector34~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector34~1_combout\ = (\DRAM|new_sdram_controller_0|m_state.000000010~q\) # ((!\DRAM|new_sdram_controller_0|m_state.000000001~q\ & ((\DRAM|new_sdram_controller_0|refresh_request~q\) # 
-- (!\DRAM|new_sdram_controller_0|init_done~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_state.000000010~q\,
	datab => \DRAM|new_sdram_controller_0|init_done~q\,
	datac => \DRAM|new_sdram_controller_0|m_state.000000001~q\,
	datad => \DRAM|new_sdram_controller_0|refresh_request~q\,
	combout => \DRAM|new_sdram_controller_0|Selector34~1_combout\);

-- Location: LCCOMB_X35_Y3_N18
\DRAM|new_sdram_controller_0|m_next~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|m_next~23_combout\ = (\DRAM|new_sdram_controller_0|refresh_request~q\ & (\DRAM|new_sdram_controller_0|pending~10_combout\ & ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(1)) # 
-- (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|refresh_request~q\,
	datab => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(1),
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(0),
	datad => \DRAM|new_sdram_controller_0|pending~10_combout\,
	combout => \DRAM|new_sdram_controller_0|m_next~23_combout\);

-- Location: LCCOMB_X34_Y3_N28
\DRAM|new_sdram_controller_0|Selector34~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector34~2_combout\ = ((\DRAM|new_sdram_controller_0|Selector34~1_combout\) # ((!\DRAM|new_sdram_controller_0|m_addr~0_combout\ & \DRAM|new_sdram_controller_0|m_next~23_combout\))) # 
-- (!\DRAM|new_sdram_controller_0|Selector35~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|Selector35~0_combout\,
	datab => \DRAM|new_sdram_controller_0|Selector34~1_combout\,
	datac => \DRAM|new_sdram_controller_0|m_addr~0_combout\,
	datad => \DRAM|new_sdram_controller_0|m_next~23_combout\,
	combout => \DRAM|new_sdram_controller_0|Selector34~2_combout\);

-- Location: FF_X34_Y3_N27
\DRAM|new_sdram_controller_0|m_next.000010000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|Selector35~1_combout\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sclr => \DRAM|new_sdram_controller_0|ALT_INV_m_state.000000010~q\,
	ena => \DRAM|new_sdram_controller_0|Selector34~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|m_next.000010000~q\);

-- Location: LCCOMB_X32_Y3_N18
\DRAM|new_sdram_controller_0|Selector27~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector27~1_combout\ = (!\DRAM|new_sdram_controller_0|refresh_request~q\ & (\DRAM|new_sdram_controller_0|m_state.100000000~q\ & 
-- (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|Equal1~0_combout\ & \DRAM|new_sdram_controller_0|pending~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|refresh_request~q\,
	datab => \DRAM|new_sdram_controller_0|m_state.100000000~q\,
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|Equal1~0_combout\,
	datad => \DRAM|new_sdram_controller_0|pending~10_combout\,
	combout => \DRAM|new_sdram_controller_0|Selector27~1_combout\);

-- Location: LCCOMB_X32_Y3_N22
\DRAM|new_sdram_controller_0|Selector28~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector28~0_combout\ = (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[43]~1_combout\ & (\DRAM|new_sdram_controller_0|Selector27~0_combout\ & 
-- (\DRAM|new_sdram_controller_0|m_next.000010000~q\))) # (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[43]~1_combout\ & ((\DRAM|new_sdram_controller_0|Selector27~1_combout\) # 
-- ((\DRAM|new_sdram_controller_0|Selector27~0_combout\ & \DRAM|new_sdram_controller_0|m_next.000010000~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[43]~1_combout\,
	datab => \DRAM|new_sdram_controller_0|Selector27~0_combout\,
	datac => \DRAM|new_sdram_controller_0|m_next.000010000~q\,
	datad => \DRAM|new_sdram_controller_0|Selector27~1_combout\,
	combout => \DRAM|new_sdram_controller_0|Selector28~0_combout\);

-- Location: LCCOMB_X32_Y3_N26
\DRAM|new_sdram_controller_0|Selector27~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector27~4_combout\ = (!\DRAM|new_sdram_controller_0|m_state.000000001~q\ & ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|Equal1~0_combout\) # 
-- ((\DRAM|new_sdram_controller_0|refresh_request~q\) # (!\DRAM|new_sdram_controller_0|init_done~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|Equal1~0_combout\,
	datab => \DRAM|new_sdram_controller_0|init_done~q\,
	datac => \DRAM|new_sdram_controller_0|refresh_request~q\,
	datad => \DRAM|new_sdram_controller_0|m_state.000000001~q\,
	combout => \DRAM|new_sdram_controller_0|Selector27~4_combout\);

-- Location: LCCOMB_X31_Y4_N22
\DRAM|new_sdram_controller_0|Selector37~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector37~0_combout\ = (!\DRAM|new_sdram_controller_0|m_state.000000001~q\ & (\DRAM|new_sdram_controller_0|m_count\(2) & ((!\DRAM|new_sdram_controller_0|refresh_request~q\) # (!\DRAM|new_sdram_controller_0|init_done~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|init_done~q\,
	datab => \DRAM|new_sdram_controller_0|m_state.000000001~q\,
	datac => \DRAM|new_sdram_controller_0|m_count\(2),
	datad => \DRAM|new_sdram_controller_0|refresh_request~q\,
	combout => \DRAM|new_sdram_controller_0|Selector37~0_combout\);

-- Location: LCCOMB_X32_Y4_N18
\DRAM|new_sdram_controller_0|Selector38~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector38~0_combout\ = (\DRAM|new_sdram_controller_0|m_state.000010000~q\) # (\DRAM|new_sdram_controller_0|m_state.000000010~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DRAM|new_sdram_controller_0|m_state.000010000~q\,
	datad => \DRAM|new_sdram_controller_0|m_state.000000010~q\,
	combout => \DRAM|new_sdram_controller_0|Selector38~0_combout\);

-- Location: LCCOMB_X32_Y4_N2
\DRAM|new_sdram_controller_0|m_count[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|m_count[1]~5_combout\ = (\DRAM|new_sdram_controller_0|m_count[1]~4_combout\ & ((\DRAM|new_sdram_controller_0|m_count\(1) $ (!\DRAM|new_sdram_controller_0|Selector38~0_combout\)))) # 
-- (!\DRAM|new_sdram_controller_0|m_count[1]~4_combout\ & (\DRAM|new_sdram_controller_0|m_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_count[1]~4_combout\,
	datab => \DRAM|new_sdram_controller_0|m_count\(0),
	datac => \DRAM|new_sdram_controller_0|m_count\(1),
	datad => \DRAM|new_sdram_controller_0|Selector38~0_combout\,
	combout => \DRAM|new_sdram_controller_0|m_count[1]~5_combout\);

-- Location: LCCOMB_X35_Y4_N4
\DRAM|new_sdram_controller_0|m_count[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|m_count[1]~0_combout\ = (!\DRAM|new_sdram_controller_0|m_state.000000001~q\ & (((!\DRAM|new_sdram_controller_0|init_done~q\ & !\DRAM|new_sdram_controller_0|m_state.000001000~q\)) # 
-- (!\DRAM|new_sdram_controller_0|refresh_request~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|refresh_request~q\,
	datab => \DRAM|new_sdram_controller_0|m_state.000000001~q\,
	datac => \DRAM|new_sdram_controller_0|init_done~q\,
	datad => \DRAM|new_sdram_controller_0|m_state.000001000~q\,
	combout => \DRAM|new_sdram_controller_0|m_count[1]~0_combout\);

-- Location: LCCOMB_X31_Y4_N10
\DRAM|new_sdram_controller_0|Selector36~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector36~2_combout\ = (!\DRAM|new_sdram_controller_0|m_state.001000000~q\ & ((\DRAM|new_sdram_controller_0|refresh_request~q\) # ((!\DRAM|new_sdram_controller_0|m_next~21_combout\) # 
-- (!\DRAM|new_sdram_controller_0|m_state.100000000~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|refresh_request~q\,
	datab => \DRAM|new_sdram_controller_0|m_state.100000000~q\,
	datac => \DRAM|new_sdram_controller_0|m_next~21_combout\,
	datad => \DRAM|new_sdram_controller_0|m_state.001000000~q\,
	combout => \DRAM|new_sdram_controller_0|Selector36~2_combout\);

-- Location: LCCOMB_X31_Y4_N2
\DRAM|new_sdram_controller_0|m_count[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|m_count[1]~2_combout\ = (\DRAM|new_sdram_controller_0|m_count[1]~0_combout\) # ((\DRAM|new_sdram_controller_0|Selector24~0_combout\) # ((\DRAM|new_sdram_controller_0|m_count[1]~1_combout\) # 
-- (!\DRAM|new_sdram_controller_0|Selector36~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_count[1]~0_combout\,
	datab => \DRAM|new_sdram_controller_0|Selector24~0_combout\,
	datac => \DRAM|new_sdram_controller_0|m_count[1]~1_combout\,
	datad => \DRAM|new_sdram_controller_0|Selector36~2_combout\,
	combout => \DRAM|new_sdram_controller_0|m_count[1]~2_combout\);

-- Location: LCCOMB_X32_Y4_N26
\DRAM|new_sdram_controller_0|m_count[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|m_count[1]~6_combout\ = (\DRAM|new_sdram_controller_0|m_count[1]~2_combout\ & (((\DRAM|new_sdram_controller_0|m_count\(1))))) # (!\DRAM|new_sdram_controller_0|m_count[1]~2_combout\ & 
-- (!\DRAM|new_sdram_controller_0|m_state.100000000~q\ & (\DRAM|new_sdram_controller_0|m_count[1]~5_combout\ $ (!\DRAM|new_sdram_controller_0|m_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_state.100000000~q\,
	datab => \DRAM|new_sdram_controller_0|m_count[1]~5_combout\,
	datac => \DRAM|new_sdram_controller_0|m_count\(1),
	datad => \DRAM|new_sdram_controller_0|m_count[1]~2_combout\,
	combout => \DRAM|new_sdram_controller_0|m_count[1]~6_combout\);

-- Location: FF_X32_Y4_N27
\DRAM|new_sdram_controller_0|m_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|m_count[1]~6_combout\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|m_count\(1));

-- Location: LCCOMB_X32_Y4_N28
\DRAM|new_sdram_controller_0|LessThan1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|LessThan1~0_combout\ = (\DRAM|new_sdram_controller_0|m_count\(1)) # (\DRAM|new_sdram_controller_0|m_count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_count\(1),
	datad => \DRAM|new_sdram_controller_0|m_count\(2),
	combout => \DRAM|new_sdram_controller_0|LessThan1~0_combout\);

-- Location: LCCOMB_X35_Y3_N20
\DRAM|new_sdram_controller_0|Selector29~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector29~1_combout\ = (\DRAM|new_sdram_controller_0|LessThan1~0_combout\ & ((\DRAM|new_sdram_controller_0|m_state.000100000~q\) # ((\DRAM|new_sdram_controller_0|Selector29~0_combout\ & 
-- !\DRAM|new_sdram_controller_0|pending~10_combout\)))) # (!\DRAM|new_sdram_controller_0|LessThan1~0_combout\ & (\DRAM|new_sdram_controller_0|Selector29~0_combout\ & ((!\DRAM|new_sdram_controller_0|pending~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|LessThan1~0_combout\,
	datab => \DRAM|new_sdram_controller_0|Selector29~0_combout\,
	datac => \DRAM|new_sdram_controller_0|m_state.000100000~q\,
	datad => \DRAM|new_sdram_controller_0|pending~10_combout\,
	combout => \DRAM|new_sdram_controller_0|Selector29~1_combout\);

-- Location: FF_X35_Y3_N21
\DRAM|new_sdram_controller_0|m_state.000100000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|Selector29~1_combout\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|m_state.000100000~q\);

-- Location: LCCOMB_X35_Y4_N10
\DRAM|new_sdram_controller_0|m_count[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|m_count[1]~3_combout\ = (((\DRAM|new_sdram_controller_0|m_state.000000010~q\) # (\DRAM|new_sdram_controller_0|m_state.010000000~q\)) # (!\DRAM|new_sdram_controller_0|m_state.000000001~q\)) # 
-- (!\DRAM|new_sdram_controller_0|m_addr~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_addr~0_combout\,
	datab => \DRAM|new_sdram_controller_0|m_state.000000001~q\,
	datac => \DRAM|new_sdram_controller_0|m_state.000000010~q\,
	datad => \DRAM|new_sdram_controller_0|m_state.010000000~q\,
	combout => \DRAM|new_sdram_controller_0|m_count[1]~3_combout\);

-- Location: LCCOMB_X32_Y4_N12
\DRAM|new_sdram_controller_0|m_count[1]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|m_count[1]~4_combout\ = (\DRAM|new_sdram_controller_0|m_count[1]~3_combout\) # ((\DRAM|new_sdram_controller_0|m_state.000100000~q\ & (!\DRAM|new_sdram_controller_0|m_count\(1) & !\DRAM|new_sdram_controller_0|m_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_state.000100000~q\,
	datab => \DRAM|new_sdram_controller_0|m_count[1]~3_combout\,
	datac => \DRAM|new_sdram_controller_0|m_count\(1),
	datad => \DRAM|new_sdram_controller_0|m_count\(2),
	combout => \DRAM|new_sdram_controller_0|m_count[1]~4_combout\);

-- Location: LCCOMB_X32_Y4_N4
\DRAM|new_sdram_controller_0|m_count[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|m_count[0]~7_combout\ = (\DRAM|new_sdram_controller_0|m_state.100000000~q\) # ((\DRAM|new_sdram_controller_0|m_count[1]~4_combout\ & ((!\DRAM|new_sdram_controller_0|Selector38~0_combout\))) # 
-- (!\DRAM|new_sdram_controller_0|m_count[1]~4_combout\ & (!\DRAM|new_sdram_controller_0|m_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_count[1]~4_combout\,
	datab => \DRAM|new_sdram_controller_0|m_count\(0),
	datac => \DRAM|new_sdram_controller_0|m_state.100000000~q\,
	datad => \DRAM|new_sdram_controller_0|Selector38~0_combout\,
	combout => \DRAM|new_sdram_controller_0|m_count[0]~7_combout\);

-- Location: LCCOMB_X32_Y4_N24
\DRAM|new_sdram_controller_0|m_count[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|m_count[0]~8_combout\ = (\DRAM|new_sdram_controller_0|m_count[1]~2_combout\ & ((\DRAM|new_sdram_controller_0|m_count\(0)))) # (!\DRAM|new_sdram_controller_0|m_count[1]~2_combout\ & 
-- (\DRAM|new_sdram_controller_0|m_count[0]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DRAM|new_sdram_controller_0|m_count[0]~7_combout\,
	datac => \DRAM|new_sdram_controller_0|m_count\(0),
	datad => \DRAM|new_sdram_controller_0|m_count[1]~2_combout\,
	combout => \DRAM|new_sdram_controller_0|m_count[0]~8_combout\);

-- Location: FF_X32_Y4_N25
\DRAM|new_sdram_controller_0|m_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|m_count[0]~8_combout\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|m_count\(0));

-- Location: LCCOMB_X32_Y4_N22
\DRAM|new_sdram_controller_0|Selector37~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector37~1_combout\ = (\DRAM|new_sdram_controller_0|m_state.000000100~q\ & ((\DRAM|new_sdram_controller_0|m_count\(0)) # ((\DRAM|new_sdram_controller_0|m_count\(1))))) # (!\DRAM|new_sdram_controller_0|m_state.000000100~q\ & 
-- (\DRAM|new_sdram_controller_0|m_state.000100000~q\ & ((\DRAM|new_sdram_controller_0|m_count\(0)) # (\DRAM|new_sdram_controller_0|m_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_state.000000100~q\,
	datab => \DRAM|new_sdram_controller_0|m_count\(0),
	datac => \DRAM|new_sdram_controller_0|m_count\(1),
	datad => \DRAM|new_sdram_controller_0|m_state.000100000~q\,
	combout => \DRAM|new_sdram_controller_0|Selector37~1_combout\);

-- Location: LCCOMB_X31_Y4_N16
\DRAM|new_sdram_controller_0|Selector37~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector37~2_combout\ = (\DRAM|new_sdram_controller_0|m_state.010000000~q\) # ((\DRAM|new_sdram_controller_0|Selector37~0_combout\) # ((\DRAM|new_sdram_controller_0|m_count\(2) & 
-- \DRAM|new_sdram_controller_0|Selector37~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_state.010000000~q\,
	datab => \DRAM|new_sdram_controller_0|m_count\(2),
	datac => \DRAM|new_sdram_controller_0|Selector37~0_combout\,
	datad => \DRAM|new_sdram_controller_0|Selector37~1_combout\,
	combout => \DRAM|new_sdram_controller_0|Selector37~2_combout\);

-- Location: LCCOMB_X31_Y4_N14
\DRAM|new_sdram_controller_0|Selector37~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector37~3_combout\ = (\DRAM|new_sdram_controller_0|Selector37~2_combout\) # ((\DRAM|new_sdram_controller_0|m_count\(2) & ((\DRAM|new_sdram_controller_0|m_count[1]~1_combout\) # 
-- (!\DRAM|new_sdram_controller_0|Selector36~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_count[1]~1_combout\,
	datab => \DRAM|new_sdram_controller_0|Selector37~2_combout\,
	datac => \DRAM|new_sdram_controller_0|m_count\(2),
	datad => \DRAM|new_sdram_controller_0|Selector36~2_combout\,
	combout => \DRAM|new_sdram_controller_0|Selector37~3_combout\);

-- Location: FF_X31_Y4_N15
\DRAM|new_sdram_controller_0|m_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|Selector37~3_combout\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|m_count\(2));

-- Location: LCCOMB_X31_Y4_N24
\DRAM|new_sdram_controller_0|Selector30~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector30~3_combout\ = (\DRAM|new_sdram_controller_0|Selector30~2_combout\) # ((!\DRAM|new_sdram_controller_0|m_count\(2) & (\DRAM|new_sdram_controller_0|m_state.000100000~q\ & !\DRAM|new_sdram_controller_0|m_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|Selector30~2_combout\,
	datab => \DRAM|new_sdram_controller_0|m_count\(2),
	datac => \DRAM|new_sdram_controller_0|m_state.000100000~q\,
	datad => \DRAM|new_sdram_controller_0|m_count\(1),
	combout => \DRAM|new_sdram_controller_0|Selector30~3_combout\);

-- Location: FF_X31_Y4_N25
\DRAM|new_sdram_controller_0|m_state.001000000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|Selector30~3_combout\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|m_state.001000000~q\);

-- Location: LCCOMB_X35_Y4_N2
\DRAM|new_sdram_controller_0|WideOr8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|WideOr8~0_combout\ = (!\DRAM|new_sdram_controller_0|m_state.000000010~q\ & (!\DRAM|new_sdram_controller_0|m_state.010000000~q\ & !\DRAM|new_sdram_controller_0|m_state.001000000~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DRAM|new_sdram_controller_0|m_state.000000010~q\,
	datac => \DRAM|new_sdram_controller_0|m_state.010000000~q\,
	datad => \DRAM|new_sdram_controller_0|m_state.001000000~q\,
	combout => \DRAM|new_sdram_controller_0|WideOr8~0_combout\);

-- Location: LCCOMB_X32_Y3_N20
\DRAM|new_sdram_controller_0|Selector27~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector27~5_combout\ = ((\DRAM|new_sdram_controller_0|m_state.100000000~q\ & ((\DRAM|new_sdram_controller_0|refresh_request~q\) # 
-- (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|Equal1~0_combout\)))) # (!\DRAM|new_sdram_controller_0|WideOr8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|refresh_request~q\,
	datab => \DRAM|new_sdram_controller_0|WideOr8~0_combout\,
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|Equal1~0_combout\,
	datad => \DRAM|new_sdram_controller_0|m_state.100000000~q\,
	combout => \DRAM|new_sdram_controller_0|Selector27~5_combout\);

-- Location: LCCOMB_X32_Y3_N24
\DRAM|new_sdram_controller_0|Selector27~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector27~3_combout\ = (!\DRAM|new_sdram_controller_0|m_addr~0_combout\ & ((\DRAM|new_sdram_controller_0|refresh_request~q\) # ((\DRAM|new_sdram_controller_0|m_state.000000001~q\ & 
-- !\DRAM|new_sdram_controller_0|pending~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_addr~0_combout\,
	datab => \DRAM|new_sdram_controller_0|m_state.000000001~q\,
	datac => \DRAM|new_sdram_controller_0|refresh_request~q\,
	datad => \DRAM|new_sdram_controller_0|pending~combout\,
	combout => \DRAM|new_sdram_controller_0|Selector27~3_combout\);

-- Location: LCCOMB_X32_Y3_N14
\DRAM|new_sdram_controller_0|Selector27~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector27~6_combout\ = (\DRAM|new_sdram_controller_0|Selector27~4_combout\) # ((\DRAM|new_sdram_controller_0|Selector27~5_combout\) # ((\DRAM|new_sdram_controller_0|Selector24~0_combout\) # 
-- (\DRAM|new_sdram_controller_0|Selector27~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|Selector27~4_combout\,
	datab => \DRAM|new_sdram_controller_0|Selector27~5_combout\,
	datac => \DRAM|new_sdram_controller_0|Selector24~0_combout\,
	datad => \DRAM|new_sdram_controller_0|Selector27~3_combout\,
	combout => \DRAM|new_sdram_controller_0|Selector27~6_combout\);

-- Location: FF_X32_Y3_N23
\DRAM|new_sdram_controller_0|m_state.000010000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|Selector28~0_combout\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	ena => \DRAM|new_sdram_controller_0|Selector27~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|m_state.000010000~q\);

-- Location: LCCOMB_X32_Y3_N0
\DRAM|new_sdram_controller_0|m_addr~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|m_addr~0_combout\ = (!\DRAM|new_sdram_controller_0|m_state.000010000~q\ & !\DRAM|new_sdram_controller_0|m_state.000001000~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DRAM|new_sdram_controller_0|m_state.000010000~q\,
	datad => \DRAM|new_sdram_controller_0|m_state.000001000~q\,
	combout => \DRAM|new_sdram_controller_0|m_addr~0_combout\);

-- Location: LCCOMB_X35_Y4_N0
\DRAM|new_sdram_controller_0|active_rnw~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|active_rnw~2_combout\ = (\DRAM|new_sdram_controller_0|pending~combout\ & ((\DRAM|new_sdram_controller_0|m_state.100000000~q\) # ((\DRAM|new_sdram_controller_0|m_state.000000001~q\ & 
-- !\DRAM|new_sdram_controller_0|m_addr~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_state.100000000~q\,
	datab => \DRAM|new_sdram_controller_0|m_state.000000001~q\,
	datac => \DRAM|new_sdram_controller_0|m_addr~0_combout\,
	datad => \DRAM|new_sdram_controller_0|pending~combout\,
	combout => \DRAM|new_sdram_controller_0|active_rnw~2_combout\);

-- Location: LCCOMB_X35_Y4_N26
\DRAM|new_sdram_controller_0|active_rnw~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|active_rnw~3_combout\ = (\DRAM|new_sdram_controller_0|active_rnw~1_combout\ & ((\DRAM|new_sdram_controller_0|active_rnw~2_combout\) # ((\DRAM|new_sdram_controller_0|active_rnw~0_combout\ & 
-- !\DRAM|new_sdram_controller_0|m_state.000000001~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|active_rnw~0_combout\,
	datab => \DRAM|new_sdram_controller_0|active_rnw~1_combout\,
	datac => \DRAM|new_sdram_controller_0|m_state.000000001~q\,
	datad => \DRAM|new_sdram_controller_0|active_rnw~2_combout\,
	combout => \DRAM|new_sdram_controller_0|active_rnw~3_combout\);

-- Location: FF_X36_Y4_N23
\DRAM|new_sdram_controller_0|active_addr[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[42]~2_combout\,
	sload => VCC,
	ena => \DRAM|new_sdram_controller_0|active_rnw~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|active_addr\(24));

-- Location: FF_X36_Y4_N1
\DRAM|new_sdram_controller_0|active_addr[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[29]~3_combout\,
	sload => VCC,
	ena => \DRAM|new_sdram_controller_0|active_rnw~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|active_addr\(11));

-- Location: LCCOMB_X36_Y4_N0
\DRAM|new_sdram_controller_0|pending~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|pending~1_combout\ = (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[29]~3_combout\ & (\DRAM|new_sdram_controller_0|active_addr\(11) & 
-- (\DRAM|new_sdram_controller_0|active_addr\(24) $ (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[42]~2_combout\)))) # 
-- (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[29]~3_combout\ & (!\DRAM|new_sdram_controller_0|active_addr\(11) & (\DRAM|new_sdram_controller_0|active_addr\(24) $ 
-- (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[42]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[29]~3_combout\,
	datab => \DRAM|new_sdram_controller_0|active_addr\(24),
	datac => \DRAM|new_sdram_controller_0|active_addr\(11),
	datad => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[42]~2_combout\,
	combout => \DRAM|new_sdram_controller_0|pending~1_combout\);

-- Location: LCCOMB_X36_Y5_N12
\memaddress~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memaddress~3_combout\ = (!\DE10Reset~input_o\ & \fsm:addressCounter[14]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DE10Reset~input_o\,
	datad => \fsm:addressCounter[14]~combout\,
	combout => \memaddress~3_combout\);

-- Location: LCCOMB_X36_Y5_N22
\memaddress[14]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- memaddress(14) = (GLOBAL(\estado_pres.e1~clkctrl_outclk\) & (memaddress(14))) # (!GLOBAL(\estado_pres.e1~clkctrl_outclk\) & ((\memaddress~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => memaddress(14),
	datac => \estado_pres.e1~clkctrl_outclk\,
	datad => \memaddress~3_combout\,
	combout => memaddress(14));

-- Location: FF_X36_Y5_N9
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => memaddress(14),
	sload => VCC,
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(31));

-- Location: FF_X36_Y5_N23
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => memaddress(14),
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(31));

-- Location: LCCOMB_X36_Y5_N8
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[31]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[31]~4_combout\ = (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(31))) # (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\,
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(31),
	datad => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(31),
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[31]~4_combout\);

-- Location: LCCOMB_X38_Y7_N2
\memaddress~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memaddress~4_combout\ = (!\DE10Reset~input_o\ & \fsm:addressCounter[13]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DE10Reset~input_o\,
	datad => \fsm:addressCounter[13]~combout\,
	combout => \memaddress~4_combout\);

-- Location: LCCOMB_X38_Y7_N26
\memaddress[13]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- memaddress(13) = (GLOBAL(\estado_pres.e1~clkctrl_outclk\) & (memaddress(13))) # (!GLOBAL(\estado_pres.e1~clkctrl_outclk\) & ((\memaddress~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => memaddress(13),
	datac => \estado_pres.e1~clkctrl_outclk\,
	datad => \memaddress~4_combout\,
	combout => memaddress(13));

-- Location: FF_X38_Y7_N13
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => memaddress(13),
	sload => VCC,
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(30));

-- Location: FF_X38_Y7_N27
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => memaddress(13),
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(30));

-- Location: LCCOMB_X38_Y7_N12
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[30]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[30]~5_combout\ = (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(30))) # (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\,
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(30),
	datad => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(30),
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[30]~5_combout\);

-- Location: FF_X37_Y4_N27
\DRAM|new_sdram_controller_0|active_addr[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[30]~5_combout\,
	sload => VCC,
	ena => \DRAM|new_sdram_controller_0|active_rnw~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|active_addr\(12));

-- Location: FF_X37_Y4_N25
\DRAM|new_sdram_controller_0|active_addr[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[31]~4_combout\,
	sload => VCC,
	ena => \DRAM|new_sdram_controller_0|active_rnw~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|active_addr\(13));

-- Location: LCCOMB_X37_Y4_N26
\DRAM|new_sdram_controller_0|pending~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|pending~2_combout\ = (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[31]~4_combout\ & (\DRAM|new_sdram_controller_0|active_addr\(13) & 
-- (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[30]~5_combout\ $ (!\DRAM|new_sdram_controller_0|active_addr\(12))))) # 
-- (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[31]~4_combout\ & (!\DRAM|new_sdram_controller_0|active_addr\(13) & 
-- (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[30]~5_combout\ $ (!\DRAM|new_sdram_controller_0|active_addr\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[31]~4_combout\,
	datab => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[30]~5_combout\,
	datac => \DRAM|new_sdram_controller_0|active_addr\(12),
	datad => \DRAM|new_sdram_controller_0|active_addr\(13),
	combout => \DRAM|new_sdram_controller_0|pending~2_combout\);

-- Location: LCCOMB_X36_Y5_N2
\memaddress~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memaddress~6_combout\ = (!\DE10Reset~input_o\ & \fsm:addressCounter[15]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DE10Reset~input_o\,
	datad => \fsm:addressCounter[15]~combout\,
	combout => \memaddress~6_combout\);

-- Location: LCCOMB_X36_Y5_N10
\memaddress[15]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- memaddress(15) = (GLOBAL(\estado_pres.e1~clkctrl_outclk\) & (memaddress(15))) # (!GLOBAL(\estado_pres.e1~clkctrl_outclk\) & ((\memaddress~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => memaddress(15),
	datac => \estado_pres.e1~clkctrl_outclk\,
	datad => \memaddress~6_combout\,
	combout => memaddress(15));

-- Location: FF_X36_Y5_N11
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => memaddress(15),
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(32));

-- Location: LCCOMB_X36_Y5_N24
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[32]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[32]~feeder_combout\ = memaddress(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => memaddress(15),
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[32]~feeder_combout\);

-- Location: FF_X36_Y5_N25
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[32]~feeder_combout\,
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(32));

-- Location: LCCOMB_X37_Y5_N8
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[32]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[32]~7_combout\ = (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(32)))) # (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(32)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(32),
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\,
	datad => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(32),
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[32]~7_combout\);

-- Location: LCCOMB_X39_Y7_N18
\memaddress~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memaddress~5_combout\ = (!\DE10Reset~input_o\ & \fsm:addressCounter[16]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DE10Reset~input_o\,
	datad => \fsm:addressCounter[16]~combout\,
	combout => \memaddress~5_combout\);

-- Location: LCCOMB_X39_Y7_N14
\memaddress[16]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- memaddress(16) = (GLOBAL(\estado_pres.e1~clkctrl_outclk\) & (memaddress(16))) # (!GLOBAL(\estado_pres.e1~clkctrl_outclk\) & ((\memaddress~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_pres.e1~clkctrl_outclk\,
	datab => memaddress(16),
	datad => \memaddress~5_combout\,
	combout => memaddress(16));

-- Location: LCCOMB_X39_Y7_N26
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[33]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[33]~feeder_combout\ = memaddress(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => memaddress(16),
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[33]~feeder_combout\);

-- Location: FF_X39_Y7_N27
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[33]~feeder_combout\,
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(33));

-- Location: FF_X39_Y7_N17
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => memaddress(16),
	sload => VCC,
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(33));

-- Location: LCCOMB_X39_Y7_N16
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[33]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[33]~6_combout\ = (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(33)))) # (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(33)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(33),
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(33),
	datad => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\,
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[33]~6_combout\);

-- Location: FF_X38_Y4_N23
\DRAM|new_sdram_controller_0|active_addr[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[33]~6_combout\,
	sload => VCC,
	ena => \DRAM|new_sdram_controller_0|active_rnw~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|active_addr\(15));

-- Location: FF_X38_Y4_N25
\DRAM|new_sdram_controller_0|active_addr[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[32]~7_combout\,
	sload => VCC,
	ena => \DRAM|new_sdram_controller_0|active_rnw~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|active_addr\(14));

-- Location: LCCOMB_X38_Y4_N24
\DRAM|new_sdram_controller_0|pending~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|pending~3_combout\ = (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[32]~7_combout\ & (\DRAM|new_sdram_controller_0|active_addr\(14) & 
-- (\DRAM|new_sdram_controller_0|active_addr\(15) $ (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[33]~6_combout\)))) # 
-- (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[32]~7_combout\ & (!\DRAM|new_sdram_controller_0|active_addr\(14) & (\DRAM|new_sdram_controller_0|active_addr\(15) $ 
-- (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[33]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[32]~7_combout\,
	datab => \DRAM|new_sdram_controller_0|active_addr\(15),
	datac => \DRAM|new_sdram_controller_0|active_addr\(14),
	datad => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[33]~6_combout\,
	combout => \DRAM|new_sdram_controller_0|pending~3_combout\);

-- Location: LCCOMB_X39_Y7_N28
\memaddress~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memaddress~0_combout\ = (!\DE10Reset~input_o\ & \fsm:addressCounter[11]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DE10Reset~input_o\,
	datad => \fsm:addressCounter[11]~combout\,
	combout => \memaddress~0_combout\);

-- Location: LCCOMB_X39_Y7_N24
\memaddress[11]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- memaddress(11) = (GLOBAL(\estado_pres.e1~clkctrl_outclk\) & (memaddress(11))) # (!GLOBAL(\estado_pres.e1~clkctrl_outclk\) & ((\memaddress~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_pres.e1~clkctrl_outclk\,
	datab => memaddress(11),
	datad => \memaddress~0_combout\,
	combout => memaddress(11));

-- Location: LCCOMB_X39_Y7_N30
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[28]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[28]~feeder_combout\ = memaddress(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => memaddress(11),
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[28]~feeder_combout\);

-- Location: FF_X39_Y7_N31
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[28]~feeder_combout\,
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(28));

-- Location: FF_X39_Y7_N21
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => memaddress(11),
	sload => VCC,
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(28));

-- Location: LCCOMB_X39_Y7_N20
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[28]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[28]~0_combout\ = (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(28)))) # (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(28),
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(28),
	datad => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\,
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[28]~0_combout\);

-- Location: FF_X36_Y4_N29
\DRAM|new_sdram_controller_0|active_addr[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[28]~0_combout\,
	sload => VCC,
	ena => \DRAM|new_sdram_controller_0|active_rnw~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|active_addr\(10));

-- Location: LCCOMB_X36_Y4_N28
\DRAM|new_sdram_controller_0|pending~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|pending~0_combout\ = (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[28]~0_combout\ & (\DRAM|new_sdram_controller_0|active_addr\(10) & (\DRAM|new_sdram_controller_0|active_rnw~q\ $ 
-- (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[43]~1_combout\)))) # (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[28]~0_combout\ & 
-- (!\DRAM|new_sdram_controller_0|active_addr\(10) & (\DRAM|new_sdram_controller_0|active_rnw~q\ $ (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[43]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[28]~0_combout\,
	datab => \DRAM|new_sdram_controller_0|active_rnw~q\,
	datac => \DRAM|new_sdram_controller_0|active_addr\(10),
	datad => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[43]~1_combout\,
	combout => \DRAM|new_sdram_controller_0|pending~0_combout\);

-- Location: LCCOMB_X36_Y4_N12
\DRAM|new_sdram_controller_0|pending~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|pending~4_combout\ = (\DRAM|new_sdram_controller_0|pending~1_combout\ & (\DRAM|new_sdram_controller_0|pending~2_combout\ & (\DRAM|new_sdram_controller_0|pending~3_combout\ & \DRAM|new_sdram_controller_0|pending~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|pending~1_combout\,
	datab => \DRAM|new_sdram_controller_0|pending~2_combout\,
	datac => \DRAM|new_sdram_controller_0|pending~3_combout\,
	datad => \DRAM|new_sdram_controller_0|pending~0_combout\,
	combout => \DRAM|new_sdram_controller_0|pending~4_combout\);

-- Location: LCCOMB_X35_Y4_N16
\DRAM|new_sdram_controller_0|pending\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|pending~combout\ = (!\DRAM|new_sdram_controller_0|active_cs_n~q\ & (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|Equal1~0_combout\ & (\DRAM|new_sdram_controller_0|pending~4_combout\ & 
-- \DRAM|new_sdram_controller_0|pending~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|active_cs_n~q\,
	datab => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|Equal1~0_combout\,
	datac => \DRAM|new_sdram_controller_0|pending~4_combout\,
	datad => \DRAM|new_sdram_controller_0|pending~9_combout\,
	combout => \DRAM|new_sdram_controller_0|pending~combout\);

-- Location: LCCOMB_X35_Y6_N12
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~0_combout\ = \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ $ (((\DRAM|new_sdram_controller_0|f_pop~q\ & 
-- \DRAM|new_sdram_controller_0|pending~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|f_pop~q\,
	datab => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\,
	datad => \DRAM|new_sdram_controller_0|pending~combout\,
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~0_combout\);

-- Location: FF_X37_Y6_N27
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~0_combout\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\);

-- Location: LCCOMB_X35_Y7_N18
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[43]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[43]~1_combout\ = !\writerequest~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \writerequest~combout\,
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[43]~1_combout\);

-- Location: FF_X35_Y7_N19
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[43]~1_combout\,
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(43));

-- Location: LCCOMB_X36_Y4_N14
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[43]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[43]~1_combout\ = (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(43)))) # (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(43)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(43),
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\,
	datad => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(43),
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[43]~1_combout\);

-- Location: LCCOMB_X34_Y3_N20
\DRAM|new_sdram_controller_0|Selector34~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector34~0_combout\ = (!\DRAM|new_sdram_controller_0|m_state.010000000~q\ & (\DRAM|new_sdram_controller_0|active_rnw~q\ & ((\DRAM|new_sdram_controller_0|m_next~22_combout\) # 
-- (!\DRAM|new_sdram_controller_0|m_state.100000000~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_state.010000000~q\,
	datab => \DRAM|new_sdram_controller_0|m_state.100000000~q\,
	datac => \DRAM|new_sdram_controller_0|active_rnw~q\,
	datad => \DRAM|new_sdram_controller_0|m_next~22_combout\,
	combout => \DRAM|new_sdram_controller_0|Selector34~0_combout\);

-- Location: FF_X34_Y3_N21
\DRAM|new_sdram_controller_0|m_next.000001000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|Selector34~0_combout\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sclr => \DRAM|new_sdram_controller_0|ALT_INV_m_state.000000010~q\,
	ena => \DRAM|new_sdram_controller_0|Selector34~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|m_next.000001000~q\);

-- Location: LCCOMB_X32_Y3_N16
\DRAM|new_sdram_controller_0|Selector27~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector27~2_combout\ = (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[43]~1_combout\ & ((\DRAM|new_sdram_controller_0|Selector27~1_combout\) # 
-- ((\DRAM|new_sdram_controller_0|Selector27~0_combout\ & \DRAM|new_sdram_controller_0|m_next.000001000~q\)))) # (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[43]~1_combout\ & 
-- (\DRAM|new_sdram_controller_0|Selector27~0_combout\ & (\DRAM|new_sdram_controller_0|m_next.000001000~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[43]~1_combout\,
	datab => \DRAM|new_sdram_controller_0|Selector27~0_combout\,
	datac => \DRAM|new_sdram_controller_0|m_next.000001000~q\,
	datad => \DRAM|new_sdram_controller_0|Selector27~1_combout\,
	combout => \DRAM|new_sdram_controller_0|Selector27~2_combout\);

-- Location: FF_X32_Y3_N17
\DRAM|new_sdram_controller_0|m_state.000001000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|Selector27~2_combout\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	ena => \DRAM|new_sdram_controller_0|Selector27~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|m_state.000001000~q\);

-- Location: LCCOMB_X32_Y3_N30
\DRAM|new_sdram_controller_0|m_count[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|m_count[1]~1_combout\ = (\DRAM|new_sdram_controller_0|refresh_request~q\ & (!\DRAM|new_sdram_controller_0|pending~combout\ & ((\DRAM|new_sdram_controller_0|m_state.000001000~q\) # 
-- (\DRAM|new_sdram_controller_0|m_state.000010000~q\)))) # (!\DRAM|new_sdram_controller_0|refresh_request~q\ & ((\DRAM|new_sdram_controller_0|m_state.000001000~q\) # ((\DRAM|new_sdram_controller_0|m_state.000010000~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|refresh_request~q\,
	datab => \DRAM|new_sdram_controller_0|m_state.000001000~q\,
	datac => \DRAM|new_sdram_controller_0|m_state.000010000~q\,
	datad => \DRAM|new_sdram_controller_0|pending~combout\,
	combout => \DRAM|new_sdram_controller_0|m_count[1]~1_combout\);

-- Location: LCCOMB_X31_Y4_N30
\DRAM|new_sdram_controller_0|Selector25~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector25~4_combout\ = (!\DRAM|new_sdram_controller_0|m_state.000000001~q\ & \DRAM|new_sdram_controller_0|init_done~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DRAM|new_sdram_controller_0|m_state.000000001~q\,
	datac => \DRAM|new_sdram_controller_0|init_done~q\,
	combout => \DRAM|new_sdram_controller_0|Selector25~4_combout\);

-- Location: LCCOMB_X31_Y4_N28
\DRAM|new_sdram_controller_0|Selector36~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector36~3_combout\ = (\DRAM|new_sdram_controller_0|m_state.000000100~q\) # ((\DRAM|new_sdram_controller_0|Selector25~4_combout\) # ((\DRAM|new_sdram_controller_0|m_state.000100000~q\) # 
-- (!\DRAM|new_sdram_controller_0|Selector36~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_state.000000100~q\,
	datab => \DRAM|new_sdram_controller_0|Selector25~4_combout\,
	datac => \DRAM|new_sdram_controller_0|m_state.000100000~q\,
	datad => \DRAM|new_sdram_controller_0|Selector36~2_combout\,
	combout => \DRAM|new_sdram_controller_0|Selector36~3_combout\);

-- Location: LCCOMB_X31_Y4_N12
\DRAM|new_sdram_controller_0|Selector36~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector36~4_combout\ = (\DRAM|new_sdram_controller_0|Selector30~2_combout\) # ((\DRAM|new_sdram_controller_0|m_next.010000000~q\ & ((\DRAM|new_sdram_controller_0|m_count[1]~1_combout\) # 
-- (\DRAM|new_sdram_controller_0|Selector36~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_count[1]~1_combout\,
	datab => \DRAM|new_sdram_controller_0|Selector30~2_combout\,
	datac => \DRAM|new_sdram_controller_0|m_next.010000000~q\,
	datad => \DRAM|new_sdram_controller_0|Selector36~3_combout\,
	combout => \DRAM|new_sdram_controller_0|Selector36~4_combout\);

-- Location: FF_X31_Y4_N13
\DRAM|new_sdram_controller_0|m_next.010000000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|Selector36~4_combout\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|m_next.010000000~q\);

-- Location: LCCOMB_X31_Y4_N6
\DRAM|new_sdram_controller_0|Selector31~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector31~0_combout\ = (\DRAM|new_sdram_controller_0|m_next.010000000~q\ & (!\DRAM|new_sdram_controller_0|m_count\(1) & (!\DRAM|new_sdram_controller_0|m_count\(2) & \DRAM|new_sdram_controller_0|m_state.000000100~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_next.010000000~q\,
	datab => \DRAM|new_sdram_controller_0|m_count\(1),
	datac => \DRAM|new_sdram_controller_0|m_count\(2),
	datad => \DRAM|new_sdram_controller_0|m_state.000000100~q\,
	combout => \DRAM|new_sdram_controller_0|Selector31~0_combout\);

-- Location: FF_X31_Y4_N7
\DRAM|new_sdram_controller_0|m_state.010000000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|Selector31~0_combout\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|m_state.010000000~q\);

-- Location: LCCOMB_X34_Y3_N30
\DRAM|new_sdram_controller_0|Selector23~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector23~0_combout\ = (\DRAM|new_sdram_controller_0|ack_refresh_request~q\ & (((\DRAM|new_sdram_controller_0|m_state.000000001~q\) # (!\DRAM|new_sdram_controller_0|init_done~q\)))) # 
-- (!\DRAM|new_sdram_controller_0|ack_refresh_request~q\ & (\DRAM|new_sdram_controller_0|m_state.010000000~q\ & ((\DRAM|new_sdram_controller_0|m_state.000000001~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_state.010000000~q\,
	datab => \DRAM|new_sdram_controller_0|init_done~q\,
	datac => \DRAM|new_sdram_controller_0|ack_refresh_request~q\,
	datad => \DRAM|new_sdram_controller_0|m_state.000000001~q\,
	combout => \DRAM|new_sdram_controller_0|Selector23~0_combout\);

-- Location: FF_X34_Y3_N31
\DRAM|new_sdram_controller_0|ack_refresh_request\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|Selector23~0_combout\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|ack_refresh_request~q\);

-- Location: LCCOMB_X34_Y3_N10
\DRAM|new_sdram_controller_0|refresh_request~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|refresh_request~0_combout\ = (!\DRAM|new_sdram_controller_0|ack_refresh_request~q\ & (\DRAM|new_sdram_controller_0|init_done~q\ & ((\DRAM|new_sdram_controller_0|refresh_request~q\) # 
-- (\DRAM|new_sdram_controller_0|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|ack_refresh_request~q\,
	datab => \DRAM|new_sdram_controller_0|init_done~q\,
	datac => \DRAM|new_sdram_controller_0|refresh_request~q\,
	datad => \DRAM|new_sdram_controller_0|Equal0~4_combout\,
	combout => \DRAM|new_sdram_controller_0|refresh_request~0_combout\);

-- Location: FF_X34_Y3_N11
\DRAM|new_sdram_controller_0|refresh_request\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|refresh_request~0_combout\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|refresh_request~q\);

-- Location: LCCOMB_X32_Y3_N12
\DRAM|new_sdram_controller_0|Selector26~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector26~1_combout\ = ((\DRAM|new_sdram_controller_0|m_state.100000000~q\ & \DRAM|new_sdram_controller_0|refresh_request~q\)) # (!\DRAM|new_sdram_controller_0|WideOr8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_state.100000000~q\,
	datac => \DRAM|new_sdram_controller_0|refresh_request~q\,
	datad => \DRAM|new_sdram_controller_0|WideOr8~0_combout\,
	combout => \DRAM|new_sdram_controller_0|Selector26~1_combout\);

-- Location: LCCOMB_X32_Y3_N10
\DRAM|new_sdram_controller_0|Selector26~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector26~0_combout\ = (!\DRAM|new_sdram_controller_0|m_addr~0_combout\ & (\DRAM|new_sdram_controller_0|pending~combout\ & ((\DRAM|new_sdram_controller_0|m_state.000000100~q\) # 
-- (\DRAM|new_sdram_controller_0|refresh_request~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_state.000000100~q\,
	datab => \DRAM|new_sdram_controller_0|m_addr~0_combout\,
	datac => \DRAM|new_sdram_controller_0|refresh_request~q\,
	datad => \DRAM|new_sdram_controller_0|pending~combout\,
	combout => \DRAM|new_sdram_controller_0|Selector26~0_combout\);

-- Location: LCCOMB_X32_Y3_N8
\DRAM|new_sdram_controller_0|Selector26~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector26~2_combout\ = (\DRAM|new_sdram_controller_0|Selector26~1_combout\) # ((\DRAM|new_sdram_controller_0|Selector26~0_combout\) # ((\DRAM|new_sdram_controller_0|LessThan1~0_combout\ & 
-- \DRAM|new_sdram_controller_0|m_state.000000100~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|Selector26~1_combout\,
	datab => \DRAM|new_sdram_controller_0|LessThan1~0_combout\,
	datac => \DRAM|new_sdram_controller_0|m_state.000000100~q\,
	datad => \DRAM|new_sdram_controller_0|Selector26~0_combout\,
	combout => \DRAM|new_sdram_controller_0|Selector26~2_combout\);

-- Location: FF_X32_Y3_N9
\DRAM|new_sdram_controller_0|m_state.000000100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|Selector26~2_combout\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|m_state.000000100~q\);

-- Location: LCCOMB_X31_Y4_N0
\DRAM|new_sdram_controller_0|Selector24~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector24~0_combout\ = (\DRAM|new_sdram_controller_0|m_state.000000100~q\ & (!\DRAM|new_sdram_controller_0|m_count\(2) & !\DRAM|new_sdram_controller_0|m_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_state.000000100~q\,
	datac => \DRAM|new_sdram_controller_0|m_count\(2),
	datad => \DRAM|new_sdram_controller_0|m_count\(1),
	combout => \DRAM|new_sdram_controller_0|Selector24~0_combout\);

-- Location: LCCOMB_X35_Y3_N16
\DRAM|new_sdram_controller_0|Selector24~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector24~1_combout\ = ((!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(0) & (!\DRAM|new_sdram_controller_0|refresh_request~q\ & 
-- !\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(1)))) # (!\DRAM|new_sdram_controller_0|init_done~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(0),
	datab => \DRAM|new_sdram_controller_0|init_done~q\,
	datac => \DRAM|new_sdram_controller_0|refresh_request~q\,
	datad => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(1),
	combout => \DRAM|new_sdram_controller_0|Selector24~1_combout\);

-- Location: LCCOMB_X34_Y3_N12
\DRAM|new_sdram_controller_0|Selector93~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector93~0_combout\ = (!\DRAM|new_sdram_controller_0|m_state.000100000~q\ & (!\DRAM|new_sdram_controller_0|m_state.000000100~q\ & !\DRAM|new_sdram_controller_0|m_state.100000000~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_state.000100000~q\,
	datab => \DRAM|new_sdram_controller_0|m_state.000000100~q\,
	datac => \DRAM|new_sdram_controller_0|m_state.100000000~q\,
	combout => \DRAM|new_sdram_controller_0|Selector93~0_combout\);

-- Location: LCCOMB_X35_Y5_N8
\DRAM|new_sdram_controller_0|Selector33~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector33~0_combout\ = (\DRAM|new_sdram_controller_0|m_state.001000000~q\) # (((!\DRAM|new_sdram_controller_0|refresh_request~q\ & !\DRAM|new_sdram_controller_0|m_state.000000001~q\)) # 
-- (!\DRAM|new_sdram_controller_0|Selector93~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|refresh_request~q\,
	datab => \DRAM|new_sdram_controller_0|m_state.001000000~q\,
	datac => \DRAM|new_sdram_controller_0|m_state.000000001~q\,
	datad => \DRAM|new_sdram_controller_0|Selector93~0_combout\,
	combout => \DRAM|new_sdram_controller_0|Selector33~0_combout\);

-- Location: LCCOMB_X34_Y3_N2
\DRAM|new_sdram_controller_0|Selector33~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector33~1_combout\ = (\DRAM|new_sdram_controller_0|m_state.000000001~q\ & (!\DRAM|new_sdram_controller_0|m_next.000000001~q\ & ((\DRAM|new_sdram_controller_0|Selector33~0_combout\)))) # 
-- (!\DRAM|new_sdram_controller_0|m_state.000000001~q\ & (((!\DRAM|new_sdram_controller_0|m_next.000000001~q\ & \DRAM|new_sdram_controller_0|Selector33~0_combout\)) # (!\DRAM|new_sdram_controller_0|init_done~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_state.000000001~q\,
	datab => \DRAM|new_sdram_controller_0|m_next.000000001~q\,
	datac => \DRAM|new_sdram_controller_0|init_done~q\,
	datad => \DRAM|new_sdram_controller_0|Selector33~0_combout\,
	combout => \DRAM|new_sdram_controller_0|Selector33~1_combout\);

-- Location: LCCOMB_X35_Y3_N6
\DRAM|new_sdram_controller_0|Selector33~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector33~2_combout\ = ((\DRAM|new_sdram_controller_0|refresh_request~q\ & \DRAM|new_sdram_controller_0|pending~combout\)) # (!\DRAM|new_sdram_controller_0|m_next.000000001~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|refresh_request~q\,
	datab => \DRAM|new_sdram_controller_0|m_next.000000001~q\,
	datad => \DRAM|new_sdram_controller_0|pending~combout\,
	combout => \DRAM|new_sdram_controller_0|Selector33~2_combout\);

-- Location: LCCOMB_X34_Y3_N24
\DRAM|new_sdram_controller_0|Selector33~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector33~3_combout\ = (\DRAM|new_sdram_controller_0|Selector35~0_combout\ & (!\DRAM|new_sdram_controller_0|Selector33~1_combout\ & ((\DRAM|new_sdram_controller_0|m_addr~0_combout\) # 
-- (!\DRAM|new_sdram_controller_0|Selector33~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|Selector35~0_combout\,
	datab => \DRAM|new_sdram_controller_0|Selector33~1_combout\,
	datac => \DRAM|new_sdram_controller_0|m_addr~0_combout\,
	datad => \DRAM|new_sdram_controller_0|Selector33~2_combout\,
	combout => \DRAM|new_sdram_controller_0|Selector33~3_combout\);

-- Location: FF_X34_Y3_N25
\DRAM|new_sdram_controller_0|m_next.000000001\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|Selector33~3_combout\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|m_next.000000001~q\);

-- Location: LCCOMB_X34_Y3_N22
\DRAM|new_sdram_controller_0|Selector24~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector24~2_combout\ = (\DRAM|new_sdram_controller_0|Selector24~0_combout\ & (\DRAM|new_sdram_controller_0|m_next.000000001~q\ & ((\DRAM|new_sdram_controller_0|m_state.000000001~q\) # 
-- (!\DRAM|new_sdram_controller_0|Selector24~1_combout\)))) # (!\DRAM|new_sdram_controller_0|Selector24~0_combout\ & (((\DRAM|new_sdram_controller_0|m_state.000000001~q\)) # (!\DRAM|new_sdram_controller_0|Selector24~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|Selector24~0_combout\,
	datab => \DRAM|new_sdram_controller_0|Selector24~1_combout\,
	datac => \DRAM|new_sdram_controller_0|m_state.000000001~q\,
	datad => \DRAM|new_sdram_controller_0|m_next.000000001~q\,
	combout => \DRAM|new_sdram_controller_0|Selector24~2_combout\);

-- Location: FF_X34_Y3_N23
\DRAM|new_sdram_controller_0|m_state.000000001\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|Selector24~2_combout\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|m_state.000000001~q\);

-- Location: LCCOMB_X35_Y4_N28
\DRAM|new_sdram_controller_0|always5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|always5~0_combout\ = (\DRAM|new_sdram_controller_0|pending~combout\) # (!\DRAM|new_sdram_controller_0|f_pop~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|f_pop~q\,
	datad => \DRAM|new_sdram_controller_0|pending~combout\,
	combout => \DRAM|new_sdram_controller_0|always5~0_combout\);

-- Location: LCCOMB_X32_Y5_N26
\DRAM|new_sdram_controller_0|Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector3~0_combout\ = (!\DRAM|new_sdram_controller_0|i_state.010~q\ & (\DRAM|new_sdram_controller_0|WideOr6~0_combout\ & ((\DRAM|new_sdram_controller_0|i_cmd\(0)) # (!\DRAM|new_sdram_controller_0|i_state.101~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|i_state.101~q\,
	datab => \DRAM|new_sdram_controller_0|i_state.010~q\,
	datac => \DRAM|new_sdram_controller_0|i_cmd\(0),
	datad => \DRAM|new_sdram_controller_0|WideOr6~0_combout\,
	combout => \DRAM|new_sdram_controller_0|Selector3~0_combout\);

-- Location: FF_X32_Y5_N27
\DRAM|new_sdram_controller_0|i_cmd[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|Selector3~0_combout\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|i_cmd\(0));

-- Location: LCCOMB_X35_Y5_N26
\DRAM|new_sdram_controller_0|Selector22~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector22~0_combout\ = (\DRAM|new_sdram_controller_0|m_state.000000001~q\ & (((\DRAM|new_sdram_controller_0|m_state.001000000~q\)))) # (!\DRAM|new_sdram_controller_0|m_state.000000001~q\ & 
-- (!\DRAM|new_sdram_controller_0|init_done~q\ & ((\DRAM|new_sdram_controller_0|i_cmd\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_state.000000001~q\,
	datab => \DRAM|new_sdram_controller_0|init_done~q\,
	datac => \DRAM|new_sdram_controller_0|m_state.001000000~q\,
	datad => \DRAM|new_sdram_controller_0|i_cmd\(0),
	combout => \DRAM|new_sdram_controller_0|Selector22~0_combout\);

-- Location: LCCOMB_X35_Y5_N30
\DRAM|new_sdram_controller_0|Selector22~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector22~1_combout\ = (\DRAM|new_sdram_controller_0|m_state.000010000~q\ & (\DRAM|new_sdram_controller_0|always5~0_combout\ & ((\DRAM|new_sdram_controller_0|m_state.000000001~q\) # 
-- (\DRAM|new_sdram_controller_0|Selector22~0_combout\)))) # (!\DRAM|new_sdram_controller_0|m_state.000010000~q\ & (((\DRAM|new_sdram_controller_0|Selector22~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_state.000000001~q\,
	datab => \DRAM|new_sdram_controller_0|m_state.000010000~q\,
	datac => \DRAM|new_sdram_controller_0|always5~0_combout\,
	datad => \DRAM|new_sdram_controller_0|Selector22~0_combout\,
	combout => \DRAM|new_sdram_controller_0|Selector22~1_combout\);

-- Location: FF_X35_Y5_N31
\DRAM|new_sdram_controller_0|m_cmd[0]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|Selector22~1_combout\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|m_cmd[0]~_Duplicate_1_q\);

-- Location: LCCOMB_X32_Y5_N16
\DRAM|new_sdram_controller_0|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector1~0_combout\ = (!\DRAM|new_sdram_controller_0|i_state.011~q\ & (\DRAM|new_sdram_controller_0|i_state.000~q\ & ((\DRAM|new_sdram_controller_0|i_cmd\(2)) # (!\DRAM|new_sdram_controller_0|i_state.101~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|i_state.101~q\,
	datab => \DRAM|new_sdram_controller_0|i_state.011~q\,
	datac => \DRAM|new_sdram_controller_0|i_cmd\(2),
	datad => \DRAM|new_sdram_controller_0|i_state.000~q\,
	combout => \DRAM|new_sdram_controller_0|Selector1~0_combout\);

-- Location: FF_X32_Y5_N17
\DRAM|new_sdram_controller_0|i_cmd[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|Selector1~0_combout\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|i_cmd\(2));

-- Location: LCCOMB_X35_Y5_N20
\DRAM|new_sdram_controller_0|Selector20~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector20~0_combout\ = (\DRAM|new_sdram_controller_0|m_state.000000001~q\ & (((!\DRAM|new_sdram_controller_0|WideOr8~0_combout\)))) # (!\DRAM|new_sdram_controller_0|m_state.000000001~q\ & 
-- (!\DRAM|new_sdram_controller_0|init_done~q\ & (\DRAM|new_sdram_controller_0|i_cmd\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_state.000000001~q\,
	datab => \DRAM|new_sdram_controller_0|init_done~q\,
	datac => \DRAM|new_sdram_controller_0|i_cmd\(2),
	datad => \DRAM|new_sdram_controller_0|WideOr8~0_combout\,
	combout => \DRAM|new_sdram_controller_0|Selector20~0_combout\);

-- Location: FF_X35_Y5_N21
\DRAM|new_sdram_controller_0|m_cmd[2]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|Selector20~0_combout\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|m_cmd[2]~_Duplicate_1_q\);

-- Location: LCCOMB_X32_Y5_N4
\DRAM|new_sdram_controller_0|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector2~0_combout\ = (\DRAM|new_sdram_controller_0|WideOr6~0_combout\ & (!\DRAM|new_sdram_controller_0|i_state.001~q\ & ((\DRAM|new_sdram_controller_0|i_cmd\(1)) # (!\DRAM|new_sdram_controller_0|i_state.101~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|i_state.101~q\,
	datab => \DRAM|new_sdram_controller_0|WideOr6~0_combout\,
	datac => \DRAM|new_sdram_controller_0|i_cmd\(1),
	datad => \DRAM|new_sdram_controller_0|i_state.001~q\,
	combout => \DRAM|new_sdram_controller_0|Selector2~0_combout\);

-- Location: FF_X32_Y5_N5
\DRAM|new_sdram_controller_0|i_cmd[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|Selector2~0_combout\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|i_cmd\(1));

-- Location: LCCOMB_X35_Y4_N24
\DRAM|new_sdram_controller_0|Selector21~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector21~0_combout\ = (!\DRAM|new_sdram_controller_0|m_state.000000001~q\ & ((\DRAM|new_sdram_controller_0|init_done~q\) # (!\DRAM|new_sdram_controller_0|i_cmd\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DRAM|new_sdram_controller_0|m_state.000000001~q\,
	datac => \DRAM|new_sdram_controller_0|init_done~q\,
	datad => \DRAM|new_sdram_controller_0|i_cmd\(1),
	combout => \DRAM|new_sdram_controller_0|Selector21~0_combout\);

-- Location: LCCOMB_X35_Y4_N30
\DRAM|new_sdram_controller_0|WideOr9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|WideOr9~0_combout\ = (!\DRAM|new_sdram_controller_0|m_state.000010000~q\ & (\DRAM|new_sdram_controller_0|m_state.000000001~q\ & (!\DRAM|new_sdram_controller_0|m_state.010000000~q\ & 
-- !\DRAM|new_sdram_controller_0|m_state.000001000~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_state.000010000~q\,
	datab => \DRAM|new_sdram_controller_0|m_state.000000001~q\,
	datac => \DRAM|new_sdram_controller_0|m_state.010000000~q\,
	datad => \DRAM|new_sdram_controller_0|m_state.000001000~q\,
	combout => \DRAM|new_sdram_controller_0|WideOr9~0_combout\);

-- Location: LCCOMB_X35_Y4_N12
\DRAM|new_sdram_controller_0|Selector21~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector21~1_combout\ = (!\DRAM|new_sdram_controller_0|Selector21~0_combout\ & (!\DRAM|new_sdram_controller_0|WideOr9~0_combout\ & ((\DRAM|new_sdram_controller_0|m_addr~0_combout\) # 
-- (\DRAM|new_sdram_controller_0|always5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_addr~0_combout\,
	datab => \DRAM|new_sdram_controller_0|Selector21~0_combout\,
	datac => \DRAM|new_sdram_controller_0|WideOr9~0_combout\,
	datad => \DRAM|new_sdram_controller_0|always5~0_combout\,
	combout => \DRAM|new_sdram_controller_0|Selector21~1_combout\);

-- Location: FF_X35_Y4_N13
\DRAM|new_sdram_controller_0|m_cmd[1]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|Selector21~1_combout\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|m_cmd[1]~_Duplicate_1_q\);

-- Location: LCCOMB_X35_Y5_N28
\DRAM|new_sdram_controller_0|Equal4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Equal4~0_combout\ = (!\DRAM|new_sdram_controller_0|m_cmd[0]~_Duplicate_1_q\ & (!\DRAM|new_sdram_controller_0|m_cmd[2]~_Duplicate_1_q\ & \DRAM|new_sdram_controller_0|m_cmd[1]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_cmd[0]~_Duplicate_1_q\,
	datab => \DRAM|new_sdram_controller_0|m_cmd[2]~_Duplicate_1_q\,
	datad => \DRAM|new_sdram_controller_0|m_cmd[1]~_Duplicate_1_q\,
	combout => \DRAM|new_sdram_controller_0|Equal4~0_combout\);

-- Location: FF_X35_Y5_N29
\DRAM|new_sdram_controller_0|rd_valid[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|Equal4~0_combout\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|rd_valid\(0));

-- Location: LCCOMB_X35_Y5_N6
\DRAM|new_sdram_controller_0|rd_valid[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|rd_valid[1]~feeder_combout\ = \DRAM|new_sdram_controller_0|rd_valid\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DRAM|new_sdram_controller_0|rd_valid\(0),
	combout => \DRAM|new_sdram_controller_0|rd_valid[1]~feeder_combout\);

-- Location: FF_X35_Y5_N7
\DRAM|new_sdram_controller_0|rd_valid[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|rd_valid[1]~feeder_combout\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|rd_valid\(1));

-- Location: FF_X35_Y3_N7
\DRAM|new_sdram_controller_0|za_valid\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => \DRAM|new_sdram_controller_0|rd_valid\(1),
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|za_valid~q\);

-- Location: LCCOMB_X35_Y3_N28
\DRAM|mm_interconnect_0|avalon_mm_0_avm_m0_translator|read_accepted~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|mm_interconnect_0|avalon_mm_0_avm_m0_translator|read_accepted~0_combout\ = (!\DRAM|new_sdram_controller_0|za_valid~q\ & ((\DRAM|mm_interconnect_0|avalon_mm_0_avm_m0_translator|read_accepted~q\) # ((\readrequest~combout\ & 
-- !\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \readrequest~combout\,
	datab => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|Equal0~0_combout\,
	datac => \DRAM|mm_interconnect_0|avalon_mm_0_avm_m0_translator|read_accepted~q\,
	datad => \DRAM|new_sdram_controller_0|za_valid~q\,
	combout => \DRAM|mm_interconnect_0|avalon_mm_0_avm_m0_translator|read_accepted~0_combout\);

-- Location: FF_X35_Y3_N29
\DRAM|mm_interconnect_0|avalon_mm_0_avm_m0_translator|read_accepted\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|mm_interconnect_0|avalon_mm_0_avm_m0_translator|read_accepted~0_combout\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|mm_interconnect_0|avalon_mm_0_avm_m0_translator|read_accepted~q\);

-- Location: LCCOMB_X35_Y7_N0
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|always2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|always2~0_combout\ = (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|Equal0~0_combout\ & ((\writerequest~combout\) # 
-- ((!\DRAM|mm_interconnect_0|avalon_mm_0_avm_m0_translator|read_accepted~q\ & \readrequest~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|Equal0~0_combout\,
	datab => \DRAM|mm_interconnect_0|avalon_mm_0_avm_m0_translator|read_accepted~q\,
	datac => \readrequest~combout\,
	datad => \writerequest~combout\,
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|always2~0_combout\);

-- Location: LCCOMB_X37_Y4_N16
\DRAM|new_sdram_controller_0|f_select\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|f_select~combout\ = (\DRAM|new_sdram_controller_0|f_pop~q\ & \DRAM|new_sdram_controller_0|pending~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DRAM|new_sdram_controller_0|f_pop~q\,
	datad => \DRAM|new_sdram_controller_0|pending~combout\,
	combout => \DRAM|new_sdram_controller_0|f_select~combout\);

-- Location: LCCOMB_X35_Y3_N4
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries[1]~0_combout\ = \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(1) $ 
-- (((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(0) & (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|always2~0_combout\ & 
-- !\DRAM|new_sdram_controller_0|f_select~combout\)) # (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(0) & 
-- (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|always2~0_combout\ & \DRAM|new_sdram_controller_0|f_select~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(0),
	datab => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|always2~0_combout\,
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(1),
	datad => \DRAM|new_sdram_controller_0|f_select~combout\,
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries[1]~0_combout\);

-- Location: FF_X35_Y3_N5
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries[1]~0_combout\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(1));

-- Location: LCCOMB_X35_Y7_N12
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|Equal1~0_combout\ = (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(1)) # 
-- (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(1),
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(0),
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|Equal1~0_combout\);

-- Location: LCCOMB_X32_Y3_N4
\DRAM|new_sdram_controller_0|Selector32~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector32~0_combout\ = (\DRAM|new_sdram_controller_0|m_state.100000000~q\ & !\DRAM|new_sdram_controller_0|refresh_request~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_state.100000000~q\,
	datac => \DRAM|new_sdram_controller_0|refresh_request~q\,
	combout => \DRAM|new_sdram_controller_0|Selector32~0_combout\);

-- Location: LCCOMB_X32_Y3_N6
\DRAM|new_sdram_controller_0|Selector32~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector32~1_combout\ = (\DRAM|new_sdram_controller_0|m_addr~0_combout\ & (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|Equal1~0_combout\ & 
-- (\DRAM|new_sdram_controller_0|Selector32~0_combout\))) # (!\DRAM|new_sdram_controller_0|m_addr~0_combout\ & (((\DRAM|new_sdram_controller_0|Selector32~0_combout\) # (!\DRAM|new_sdram_controller_0|pending~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|Equal1~0_combout\,
	datab => \DRAM|new_sdram_controller_0|m_addr~0_combout\,
	datac => \DRAM|new_sdram_controller_0|Selector32~0_combout\,
	datad => \DRAM|new_sdram_controller_0|pending~combout\,
	combout => \DRAM|new_sdram_controller_0|Selector32~1_combout\);

-- Location: FF_X32_Y3_N7
\DRAM|new_sdram_controller_0|m_state.100000000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|Selector32~1_combout\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|m_state.100000000~q\);

-- Location: LCCOMB_X35_Y3_N0
\DRAM|new_sdram_controller_0|Selector29~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector29~0_combout\ = (\DRAM|new_sdram_controller_0|m_state.100000000~q\ & (!\DRAM|new_sdram_controller_0|refresh_request~q\ & 
-- ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(0)) # (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(0),
	datab => \DRAM|new_sdram_controller_0|m_state.100000000~q\,
	datac => \DRAM|new_sdram_controller_0|refresh_request~q\,
	datad => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(1),
	combout => \DRAM|new_sdram_controller_0|Selector29~0_combout\);

-- Location: LCCOMB_X35_Y3_N2
\DRAM|new_sdram_controller_0|Selector41~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector41~3_combout\ = (!\DRAM|new_sdram_controller_0|refresh_request~q\ & (\DRAM|new_sdram_controller_0|pending~combout\ & ((\DRAM|new_sdram_controller_0|m_state.000001000~q\) # 
-- (\DRAM|new_sdram_controller_0|m_state.000010000~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_state.000001000~q\,
	datab => \DRAM|new_sdram_controller_0|refresh_request~q\,
	datac => \DRAM|new_sdram_controller_0|m_state.000010000~q\,
	datad => \DRAM|new_sdram_controller_0|pending~combout\,
	combout => \DRAM|new_sdram_controller_0|Selector41~3_combout\);

-- Location: LCCOMB_X35_Y3_N10
\DRAM|new_sdram_controller_0|Selector41~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector41~2_combout\ = (\DRAM|new_sdram_controller_0|Selector25~5_combout\) # ((\DRAM|new_sdram_controller_0|Selector41~3_combout\) # ((\DRAM|new_sdram_controller_0|Selector29~0_combout\ & 
-- \DRAM|new_sdram_controller_0|pending~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|Selector25~5_combout\,
	datab => \DRAM|new_sdram_controller_0|Selector29~0_combout\,
	datac => \DRAM|new_sdram_controller_0|Selector41~3_combout\,
	datad => \DRAM|new_sdram_controller_0|pending~10_combout\,
	combout => \DRAM|new_sdram_controller_0|Selector41~2_combout\);

-- Location: FF_X35_Y3_N11
\DRAM|new_sdram_controller_0|f_pop\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|Selector41~2_combout\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|f_pop~q\);

-- Location: LCCOMB_X35_Y3_N14
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries[0]~1_combout\ = \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(0) $ 
-- (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|always2~0_combout\ $ (((\DRAM|new_sdram_controller_0|f_pop~q\ & \DRAM|new_sdram_controller_0|pending~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|f_pop~q\,
	datab => \DRAM|new_sdram_controller_0|pending~combout\,
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(0),
	datad => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|always2~0_combout\,
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries[0]~1_combout\);

-- Location: FF_X35_Y3_N15
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries[0]~1_combout\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(0));

-- Location: LCCOMB_X35_Y3_N12
\DRAM|new_sdram_controller_0|Selector25~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector25~5_combout\ = (!\DRAM|new_sdram_controller_0|refresh_request~q\ & (\DRAM|new_sdram_controller_0|Selector25~4_combout\ & 
-- ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(0)) # (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(0),
	datab => \DRAM|new_sdram_controller_0|refresh_request~q\,
	datac => \DRAM|new_sdram_controller_0|Selector25~4_combout\,
	datad => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(1),
	combout => \DRAM|new_sdram_controller_0|Selector25~5_combout\);

-- Location: FF_X35_Y3_N13
\DRAM|new_sdram_controller_0|m_state.000000010\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|Selector25~5_combout\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|m_state.000000010~q\);

-- Location: LCCOMB_X36_Y11_N26
\u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[0]~feeder_combout\ = \u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(0),
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[0]~feeder_combout\);

-- Location: LCCOMB_X37_Y11_N18
\u1|modular_adc_0|control_internal|u_control_fsm|load_dout~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|load_dout~1_combout\ = (!\u1|modular_adc_0|control_internal|u_control_fsm|u_eoc_synchronizer|dreg\(0) & (\u1|modular_adc_0|control_internal|u_control_fsm|pend~q\ & 
-- (\u1|modular_adc_0|control_internal|u_control_fsm|eoc_synch_dly~q\ & \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.CONV~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|modular_adc_0|control_internal|u_control_fsm|u_eoc_synchronizer|dreg\(0),
	datab => \u1|modular_adc_0|control_internal|u_control_fsm|pend~q\,
	datac => \u1|modular_adc_0|control_internal|u_control_fsm|eoc_synch_dly~q\,
	datad => \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.CONV~q\,
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|load_dout~1_combout\);

-- Location: FF_X36_Y11_N27
\u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	d => \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[0]~feeder_combout\,
	clrn => \u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	ena => \u1|modular_adc_0|control_internal|u_control_fsm|load_dout~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(0));

-- Location: LCCOMB_X36_Y11_N0
\u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~0_combout\ = (\u1|modular_adc_0|control_internal|u_control_fsm|pend~q\ & (\u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(0) & 
-- \u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|modular_adc_0|control_internal|u_control_fsm|pend~q\,
	datac => \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(0),
	datad => \u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\,
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~0_combout\);

-- Location: LCCOMB_X34_Y11_N10
\u1|modular_adc_0|control_internal|u_control_fsm|rsp_data[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data[0]~feeder_combout\ = \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~0_combout\,
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data[0]~feeder_combout\);

-- Location: FF_X34_Y11_N11
\u1|modular_adc_0|control_internal|u_control_fsm|rsp_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	d => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data[0]~feeder_combout\,
	clrn => \u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(0));

-- Location: CLKCTRL_G16
\Selector0~1clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Selector0~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Selector0~1clkctrl_outclk\);

-- Location: LCCOMB_X34_Y11_N12
\dataIN[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- dataIN(0) = (GLOBAL(\Selector0~1clkctrl_outclk\) & ((\u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(0)))) # (!GLOBAL(\Selector0~1clkctrl_outclk\) & (dataIN(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dataIN(0),
	datab => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(0),
	datac => \Selector0~1clkctrl_outclk\,
	combout => dataIN(0));

-- Location: FF_X34_Y11_N13
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => dataIN(0),
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(0));

-- Location: LCCOMB_X35_Y11_N28
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[0]~feeder_combout\ = dataIN(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => dataIN(0),
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[0]~feeder_combout\);

-- Location: FF_X35_Y11_N29
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[0]~feeder_combout\,
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(0));

-- Location: LCCOMB_X34_Y8_N22
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[0]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[0]~26_combout\ = (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(0))) # (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(0),
	datab => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(0),
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\,
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[0]~26_combout\);

-- Location: FF_X34_Y8_N23
\DRAM|new_sdram_controller_0|active_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[0]~26_combout\,
	ena => \DRAM|new_sdram_controller_0|active_rnw~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|active_data\(0));

-- Location: FF_X34_Y8_N1
\DRAM|new_sdram_controller_0|m_data[0]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => \DRAM|new_sdram_controller_0|Selector116~1_combout\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|m_data[0]~_Duplicate_1_q\);

-- Location: LCCOMB_X34_Y8_N0
\DRAM|new_sdram_controller_0|Selector116~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector116~0_combout\ = (\DRAM|new_sdram_controller_0|m_state.000000010~q\ & (\DRAM|new_sdram_controller_0|active_data\(0))) # (!\DRAM|new_sdram_controller_0|m_state.000000010~q\ & 
-- ((\DRAM|new_sdram_controller_0|m_state.000010000~q\ & (\DRAM|new_sdram_controller_0|active_data\(0))) # (!\DRAM|new_sdram_controller_0|m_state.000010000~q\ & ((\DRAM|new_sdram_controller_0|m_data[0]~_Duplicate_1_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_state.000000010~q\,
	datab => \DRAM|new_sdram_controller_0|active_data\(0),
	datac => \DRAM|new_sdram_controller_0|m_data[0]~_Duplicate_1_q\,
	datad => \DRAM|new_sdram_controller_0|m_state.000010000~q\,
	combout => \DRAM|new_sdram_controller_0|Selector116~0_combout\);

-- Location: LCCOMB_X34_Y4_N2
\DRAM|new_sdram_controller_0|m_data[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|m_data[0]~0_combout\ = (\DRAM|new_sdram_controller_0|m_state.000010000~q\ & (\DRAM|new_sdram_controller_0|f_pop~q\ & \DRAM|new_sdram_controller_0|pending~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DRAM|new_sdram_controller_0|m_state.000010000~q\,
	datac => \DRAM|new_sdram_controller_0|f_pop~q\,
	datad => \DRAM|new_sdram_controller_0|pending~combout\,
	combout => \DRAM|new_sdram_controller_0|m_data[0]~0_combout\);

-- Location: LCCOMB_X34_Y8_N4
\DRAM|new_sdram_controller_0|Selector116~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector116~1_combout\ = (\DRAM|new_sdram_controller_0|m_data[0]~0_combout\ & ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[0]~26_combout\))) # 
-- (!\DRAM|new_sdram_controller_0|m_data[0]~0_combout\ & (\DRAM|new_sdram_controller_0|Selector116~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DRAM|new_sdram_controller_0|Selector116~0_combout\,
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[0]~26_combout\,
	datad => \DRAM|new_sdram_controller_0|m_data[0]~0_combout\,
	combout => \DRAM|new_sdram_controller_0|Selector116~1_combout\);

-- Location: DDIOOUTCELL_X31_Y0_N25
\DRAM|new_sdram_controller_0|m_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|Selector116~1_combout\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|m_data\(0));

-- Location: DDIOOECELL_X31_Y0_N26
\DRAM|new_sdram_controller_0|oe\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "high")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|ALT_INV_always5~0_combout\,
	asdata => VCC,
	aload => \DRAM|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	sload => \DRAM|new_sdram_controller_0|ALT_INV_m_state.000010000~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|oe~q\);

-- Location: LCCOMB_X37_Y11_N6
\u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[1]~feeder_combout\ = \u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(1),
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[1]~feeder_combout\);

-- Location: FF_X37_Y11_N7
\u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	d => \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[1]~feeder_combout\,
	clrn => \u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	ena => \u1|modular_adc_0|control_internal|u_control_fsm|load_dout~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(1));

-- Location: LCCOMB_X36_Y11_N8
\u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~1_combout\ = (\u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(1) & (\u1|modular_adc_0|control_internal|u_control_fsm|pend~q\ & 
-- \u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(1),
	datac => \u1|modular_adc_0|control_internal|u_control_fsm|pend~q\,
	datad => \u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\,
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~1_combout\);

-- Location: FF_X36_Y11_N9
\u1|modular_adc_0|control_internal|u_control_fsm|rsp_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	d => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~1_combout\,
	clrn => \u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(1));

-- Location: LCCOMB_X35_Y11_N6
\dataIN[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- dataIN(1) = (GLOBAL(\Selector0~1clkctrl_outclk\) & ((\u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(1)))) # (!GLOBAL(\Selector0~1clkctrl_outclk\) & (dataIN(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dataIN(1),
	datac => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(1),
	datad => \Selector0~1clkctrl_outclk\,
	combout => dataIN(1));

-- Location: LCCOMB_X35_Y11_N20
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[1]~feeder_combout\ = dataIN(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => dataIN(1),
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[1]~feeder_combout\);

-- Location: FF_X35_Y11_N21
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[1]~feeder_combout\,
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(1));

-- Location: FF_X35_Y11_N7
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => dataIN(1),
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(1));

-- Location: LCCOMB_X34_Y8_N10
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[1]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[1]~27_combout\ = (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(1)))) # (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\,
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(1),
	datad => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(1),
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[1]~27_combout\);

-- Location: FF_X34_Y8_N11
\DRAM|new_sdram_controller_0|active_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[1]~27_combout\,
	ena => \DRAM|new_sdram_controller_0|active_rnw~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|active_data\(1));

-- Location: FF_X34_Y8_N27
\DRAM|new_sdram_controller_0|m_data[1]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => \DRAM|new_sdram_controller_0|Selector115~1_combout\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|m_data[1]~_Duplicate_1_q\);

-- Location: LCCOMB_X34_Y8_N26
\DRAM|new_sdram_controller_0|Selector115~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector115~0_combout\ = (\DRAM|new_sdram_controller_0|m_state.000000010~q\ & (\DRAM|new_sdram_controller_0|active_data\(1))) # (!\DRAM|new_sdram_controller_0|m_state.000000010~q\ & 
-- ((\DRAM|new_sdram_controller_0|m_state.000010000~q\ & (\DRAM|new_sdram_controller_0|active_data\(1))) # (!\DRAM|new_sdram_controller_0|m_state.000010000~q\ & ((\DRAM|new_sdram_controller_0|m_data[1]~_Duplicate_1_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_state.000000010~q\,
	datab => \DRAM|new_sdram_controller_0|active_data\(1),
	datac => \DRAM|new_sdram_controller_0|m_data[1]~_Duplicate_1_q\,
	datad => \DRAM|new_sdram_controller_0|m_state.000010000~q\,
	combout => \DRAM|new_sdram_controller_0|Selector115~0_combout\);

-- Location: LCCOMB_X34_Y8_N16
\DRAM|new_sdram_controller_0|Selector115~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector115~1_combout\ = (\DRAM|new_sdram_controller_0|m_data[0]~0_combout\ & (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[1]~27_combout\)) # 
-- (!\DRAM|new_sdram_controller_0|m_data[0]~0_combout\ & ((\DRAM|new_sdram_controller_0|Selector115~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[1]~27_combout\,
	datac => \DRAM|new_sdram_controller_0|Selector115~0_combout\,
	datad => \DRAM|new_sdram_controller_0|m_data[0]~0_combout\,
	combout => \DRAM|new_sdram_controller_0|Selector115~1_combout\);

-- Location: DDIOOUTCELL_X26_Y0_N18
\DRAM|new_sdram_controller_0|m_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|Selector115~1_combout\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|m_data\(1));

-- Location: DDIOOECELL_X26_Y0_N19
\DRAM|new_sdram_controller_0|oe~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "high")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|ALT_INV_always5~0_combout\,
	asdata => VCC,
	aload => \DRAM|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	sload => \DRAM|new_sdram_controller_0|ALT_INV_m_state.000010000~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|oe~_Duplicate_1_q\);

-- Location: LCCOMB_X36_Y11_N10
\u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[2]~feeder_combout\ = \u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(2),
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[2]~feeder_combout\);

-- Location: FF_X36_Y11_N11
\u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	d => \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[2]~feeder_combout\,
	clrn => \u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	ena => \u1|modular_adc_0|control_internal|u_control_fsm|load_dout~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(2));

-- Location: LCCOMB_X36_Y11_N28
\u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~2_combout\ = (\u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(2) & (\u1|modular_adc_0|control_internal|u_control_fsm|pend~q\ & 
-- \u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(2),
	datab => \u1|modular_adc_0|control_internal|u_control_fsm|pend~q\,
	datad => \u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\,
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~2_combout\);

-- Location: LCCOMB_X34_Y11_N20
\u1|modular_adc_0|control_internal|u_control_fsm|rsp_data[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data[2]~feeder_combout\ = \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~2_combout\,
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data[2]~feeder_combout\);

-- Location: FF_X34_Y11_N21
\u1|modular_adc_0|control_internal|u_control_fsm|rsp_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	d => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data[2]~feeder_combout\,
	clrn => \u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(2));

-- Location: LCCOMB_X34_Y11_N8
\dataIN[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- dataIN(2) = (GLOBAL(\Selector0~1clkctrl_outclk\) & (\u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(2))) # (!GLOBAL(\Selector0~1clkctrl_outclk\) & ((dataIN(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(2),
	datab => dataIN(2),
	datac => \Selector0~1clkctrl_outclk\,
	combout => dataIN(2));

-- Location: LCCOMB_X34_Y11_N18
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[2]~feeder_combout\ = dataIN(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => dataIN(2),
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[2]~feeder_combout\);

-- Location: FF_X34_Y11_N19
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[2]~feeder_combout\,
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(2));

-- Location: LCCOMB_X35_Y11_N14
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[2]~feeder_combout\ = dataIN(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => dataIN(2),
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[2]~feeder_combout\);

-- Location: FF_X35_Y11_N15
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[2]~feeder_combout\,
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(2));

-- Location: LCCOMB_X34_Y8_N30
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[2]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[2]~28_combout\ = (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(2))) # (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(2),
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\,
	datad => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(2),
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[2]~28_combout\);

-- Location: FF_X34_Y8_N31
\DRAM|new_sdram_controller_0|active_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[2]~28_combout\,
	ena => \DRAM|new_sdram_controller_0|active_rnw~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|active_data\(2));

-- Location: FF_X34_Y8_N25
\DRAM|new_sdram_controller_0|m_data[2]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => \DRAM|new_sdram_controller_0|Selector114~1_combout\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|m_data[2]~_Duplicate_1_q\);

-- Location: LCCOMB_X34_Y8_N24
\DRAM|new_sdram_controller_0|Selector114~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector114~0_combout\ = (\DRAM|new_sdram_controller_0|m_state.000000010~q\ & (\DRAM|new_sdram_controller_0|active_data\(2))) # (!\DRAM|new_sdram_controller_0|m_state.000000010~q\ & 
-- ((\DRAM|new_sdram_controller_0|m_state.000010000~q\ & (\DRAM|new_sdram_controller_0|active_data\(2))) # (!\DRAM|new_sdram_controller_0|m_state.000010000~q\ & ((\DRAM|new_sdram_controller_0|m_data[2]~_Duplicate_1_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_state.000000010~q\,
	datab => \DRAM|new_sdram_controller_0|active_data\(2),
	datac => \DRAM|new_sdram_controller_0|m_data[2]~_Duplicate_1_q\,
	datad => \DRAM|new_sdram_controller_0|m_state.000010000~q\,
	combout => \DRAM|new_sdram_controller_0|Selector114~0_combout\);

-- Location: LCCOMB_X34_Y8_N28
\DRAM|new_sdram_controller_0|Selector114~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector114~1_combout\ = (\DRAM|new_sdram_controller_0|m_data[0]~0_combout\ & ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[2]~28_combout\))) # 
-- (!\DRAM|new_sdram_controller_0|m_data[0]~0_combout\ & (\DRAM|new_sdram_controller_0|Selector114~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DRAM|new_sdram_controller_0|Selector114~0_combout\,
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[2]~28_combout\,
	datad => \DRAM|new_sdram_controller_0|m_data[0]~0_combout\,
	combout => \DRAM|new_sdram_controller_0|Selector114~1_combout\);

-- Location: DDIOOUTCELL_X34_Y0_N32
\DRAM|new_sdram_controller_0|m_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|Selector114~1_combout\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|m_data\(2));

-- Location: DDIOOECELL_X34_Y0_N33
\DRAM|new_sdram_controller_0|oe~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "high")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|ALT_INV_always5~0_combout\,
	asdata => VCC,
	aload => \DRAM|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	sload => \DRAM|new_sdram_controller_0|ALT_INV_m_state.000010000~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|oe~_Duplicate_2_q\);

-- Location: LCCOMB_X36_Y11_N6
\u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[3]~feeder_combout\ = \u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(3),
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[3]~feeder_combout\);

-- Location: FF_X36_Y11_N7
\u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	d => \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[3]~feeder_combout\,
	clrn => \u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	ena => \u1|modular_adc_0|control_internal|u_control_fsm|load_dout~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(3));

-- Location: LCCOMB_X36_Y11_N30
\u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~3_combout\ = (\u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(3) & (\u1|modular_adc_0|control_internal|u_control_fsm|pend~q\ & 
-- \u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(3),
	datab => \u1|modular_adc_0|control_internal|u_control_fsm|pend~q\,
	datad => \u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\,
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~3_combout\);

-- Location: FF_X36_Y11_N31
\u1|modular_adc_0|control_internal|u_control_fsm|rsp_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	d => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~3_combout\,
	clrn => \u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(3));

-- Location: LCCOMB_X35_Y11_N12
\dataIN[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- dataIN(3) = (GLOBAL(\Selector0~1clkctrl_outclk\) & ((\u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(3)))) # (!GLOBAL(\Selector0~1clkctrl_outclk\) & (dataIN(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dataIN(3),
	datac => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(3),
	datad => \Selector0~1clkctrl_outclk\,
	combout => dataIN(3));

-- Location: LCCOMB_X35_Y11_N18
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[3]~feeder_combout\ = dataIN(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => dataIN(3),
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[3]~feeder_combout\);

-- Location: FF_X35_Y11_N19
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[3]~feeder_combout\,
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(3));

-- Location: FF_X35_Y11_N13
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => dataIN(3),
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(3));

-- Location: LCCOMB_X34_Y8_N18
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[3]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[3]~29_combout\ = (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(3)))) # (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(3),
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(3),
	datad => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\,
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[3]~29_combout\);

-- Location: FF_X34_Y8_N19
\DRAM|new_sdram_controller_0|active_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[3]~29_combout\,
	ena => \DRAM|new_sdram_controller_0|active_rnw~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|active_data\(3));

-- Location: FF_X34_Y8_N7
\DRAM|new_sdram_controller_0|m_data[3]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => \DRAM|new_sdram_controller_0|Selector113~1_combout\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|m_data[3]~_Duplicate_1_q\);

-- Location: LCCOMB_X34_Y8_N6
\DRAM|new_sdram_controller_0|Selector113~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector113~0_combout\ = (\DRAM|new_sdram_controller_0|m_state.000000010~q\ & (\DRAM|new_sdram_controller_0|active_data\(3))) # (!\DRAM|new_sdram_controller_0|m_state.000000010~q\ & 
-- ((\DRAM|new_sdram_controller_0|m_state.000010000~q\ & (\DRAM|new_sdram_controller_0|active_data\(3))) # (!\DRAM|new_sdram_controller_0|m_state.000010000~q\ & ((\DRAM|new_sdram_controller_0|m_data[3]~_Duplicate_1_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_state.000000010~q\,
	datab => \DRAM|new_sdram_controller_0|active_data\(3),
	datac => \DRAM|new_sdram_controller_0|m_data[3]~_Duplicate_1_q\,
	datad => \DRAM|new_sdram_controller_0|m_state.000010000~q\,
	combout => \DRAM|new_sdram_controller_0|Selector113~0_combout\);

-- Location: LCCOMB_X34_Y8_N20
\DRAM|new_sdram_controller_0|Selector113~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector113~1_combout\ = (\DRAM|new_sdram_controller_0|m_data[0]~0_combout\ & ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[3]~29_combout\))) # 
-- (!\DRAM|new_sdram_controller_0|m_data[0]~0_combout\ & (\DRAM|new_sdram_controller_0|Selector113~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|Selector113~0_combout\,
	datab => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[3]~29_combout\,
	datad => \DRAM|new_sdram_controller_0|m_data[0]~0_combout\,
	combout => \DRAM|new_sdram_controller_0|Selector113~1_combout\);

-- Location: DDIOOUTCELL_X34_Y0_N25
\DRAM|new_sdram_controller_0|m_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|Selector113~1_combout\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|m_data\(3));

-- Location: DDIOOECELL_X34_Y0_N26
\DRAM|new_sdram_controller_0|oe~_Duplicate_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "high")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|ALT_INV_always5~0_combout\,
	asdata => VCC,
	aload => \DRAM|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	sload => \DRAM|new_sdram_controller_0|ALT_INV_m_state.000010000~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|oe~_Duplicate_3_q\);

-- Location: FF_X34_Y4_N5
\DRAM|new_sdram_controller_0|m_data[4]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => \DRAM|new_sdram_controller_0|Selector112~1_combout\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|m_data[4]~_Duplicate_1_q\);

-- Location: LCCOMB_X36_Y11_N4
\u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[4]~feeder_combout\ = \u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(4),
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[4]~feeder_combout\);

-- Location: FF_X36_Y11_N5
\u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	d => \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[4]~feeder_combout\,
	clrn => \u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	ena => \u1|modular_adc_0|control_internal|u_control_fsm|load_dout~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(4));

-- Location: LCCOMB_X36_Y11_N12
\u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~4_combout\ = (\u1|modular_adc_0|control_internal|u_control_fsm|pend~q\ & (\u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(4) & 
-- \u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|modular_adc_0|control_internal|u_control_fsm|pend~q\,
	datac => \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(4),
	datad => \u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\,
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~4_combout\);

-- Location: FF_X36_Y11_N13
\u1|modular_adc_0|control_internal|u_control_fsm|rsp_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	d => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~4_combout\,
	clrn => \u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(4));

-- Location: LCCOMB_X35_Y11_N24
\dataIN[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- dataIN(4) = (GLOBAL(\Selector0~1clkctrl_outclk\) & ((\u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(4)))) # (!GLOBAL(\Selector0~1clkctrl_outclk\) & (dataIN(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dataIN(4),
	datac => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(4),
	datad => \Selector0~1clkctrl_outclk\,
	combout => dataIN(4));

-- Location: FF_X35_Y11_N25
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => dataIN(4),
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(4));

-- Location: LCCOMB_X35_Y11_N30
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[4]~feeder_combout\ = dataIN(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => dataIN(4),
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[4]~feeder_combout\);

-- Location: FF_X35_Y11_N31
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[4]~feeder_combout\,
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(4));

-- Location: LCCOMB_X34_Y4_N28
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[4]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[4]~30_combout\ = (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(4))) # (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(4),
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(4),
	datad => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\,
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[4]~30_combout\);

-- Location: FF_X34_Y4_N29
\DRAM|new_sdram_controller_0|active_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[4]~30_combout\,
	ena => \DRAM|new_sdram_controller_0|active_rnw~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|active_data\(4));

-- Location: LCCOMB_X34_Y4_N4
\DRAM|new_sdram_controller_0|Selector112~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector112~0_combout\ = (\DRAM|new_sdram_controller_0|m_state.000000010~q\ & (((\DRAM|new_sdram_controller_0|active_data\(4))))) # (!\DRAM|new_sdram_controller_0|m_state.000000010~q\ & 
-- ((\DRAM|new_sdram_controller_0|m_state.000010000~q\ & ((\DRAM|new_sdram_controller_0|active_data\(4)))) # (!\DRAM|new_sdram_controller_0|m_state.000010000~q\ & (\DRAM|new_sdram_controller_0|m_data[4]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_state.000000010~q\,
	datab => \DRAM|new_sdram_controller_0|m_state.000010000~q\,
	datac => \DRAM|new_sdram_controller_0|m_data[4]~_Duplicate_1_q\,
	datad => \DRAM|new_sdram_controller_0|active_data\(4),
	combout => \DRAM|new_sdram_controller_0|Selector112~0_combout\);

-- Location: LCCOMB_X34_Y4_N6
\DRAM|new_sdram_controller_0|Selector112~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector112~1_combout\ = (\DRAM|new_sdram_controller_0|m_data[0]~0_combout\ & ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[4]~30_combout\))) # 
-- (!\DRAM|new_sdram_controller_0|m_data[0]~0_combout\ & (\DRAM|new_sdram_controller_0|Selector112~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DRAM|new_sdram_controller_0|Selector112~0_combout\,
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[4]~30_combout\,
	datad => \DRAM|new_sdram_controller_0|m_data[0]~0_combout\,
	combout => \DRAM|new_sdram_controller_0|Selector112~1_combout\);

-- Location: DDIOOUTCELL_X29_Y0_N4
\DRAM|new_sdram_controller_0|m_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|Selector112~1_combout\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|m_data\(4));

-- Location: DDIOOECELL_X29_Y0_N5
\DRAM|new_sdram_controller_0|oe~_Duplicate_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "high")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|ALT_INV_always5~0_combout\,
	asdata => VCC,
	aload => \DRAM|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	sload => \DRAM|new_sdram_controller_0|ALT_INV_m_state.000010000~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|oe~_Duplicate_4_q\);

-- Location: LCCOMB_X36_Y11_N18
\u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[5]~feeder_combout\ = \u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(5),
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[5]~feeder_combout\);

-- Location: FF_X36_Y11_N19
\u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	d => \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[5]~feeder_combout\,
	clrn => \u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	ena => \u1|modular_adc_0|control_internal|u_control_fsm|load_dout~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(5));

-- Location: LCCOMB_X36_Y11_N20
\u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~5_combout\ = (\u1|modular_adc_0|control_internal|u_control_fsm|pend~q\ & (\u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(5) & 
-- \u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|modular_adc_0|control_internal|u_control_fsm|pend~q\,
	datac => \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(5),
	datad => \u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\,
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~5_combout\);

-- Location: FF_X37_Y7_N3
\u1|modular_adc_0|control_internal|u_control_fsm|rsp_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	asdata => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~5_combout\,
	clrn => \u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(5));

-- Location: LCCOMB_X35_Y7_N30
\dataIN[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- dataIN(5) = (GLOBAL(\Selector0~1clkctrl_outclk\) & ((\u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(5)))) # (!GLOBAL(\Selector0~1clkctrl_outclk\) & (dataIN(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dataIN(5),
	datab => \Selector0~1clkctrl_outclk\,
	datac => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(5),
	combout => dataIN(5));

-- Location: FF_X35_Y7_N17
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => dataIN(5),
	sload => VCC,
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(5));

-- Location: LCCOMB_X35_Y7_N10
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[5]~feeder_combout\ = dataIN(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => dataIN(5),
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[5]~feeder_combout\);

-- Location: FF_X35_Y7_N11
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[5]~feeder_combout\,
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(5));

-- Location: LCCOMB_X34_Y4_N20
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[5]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[5]~31_combout\ = (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(5))) # (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(5),
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(5),
	datad => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\,
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[5]~31_combout\);

-- Location: FF_X34_Y4_N21
\DRAM|new_sdram_controller_0|active_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[5]~31_combout\,
	ena => \DRAM|new_sdram_controller_0|active_rnw~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|active_data\(5));

-- Location: FF_X34_Y4_N19
\DRAM|new_sdram_controller_0|m_data[5]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => \DRAM|new_sdram_controller_0|Selector111~1_combout\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|m_data[5]~_Duplicate_1_q\);

-- Location: LCCOMB_X34_Y4_N18
\DRAM|new_sdram_controller_0|Selector111~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector111~0_combout\ = (\DRAM|new_sdram_controller_0|m_state.000000010~q\ & (\DRAM|new_sdram_controller_0|active_data\(5))) # (!\DRAM|new_sdram_controller_0|m_state.000000010~q\ & 
-- ((\DRAM|new_sdram_controller_0|m_state.000010000~q\ & (\DRAM|new_sdram_controller_0|active_data\(5))) # (!\DRAM|new_sdram_controller_0|m_state.000010000~q\ & ((\DRAM|new_sdram_controller_0|m_data[5]~_Duplicate_1_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_state.000000010~q\,
	datab => \DRAM|new_sdram_controller_0|active_data\(5),
	datac => \DRAM|new_sdram_controller_0|m_data[5]~_Duplicate_1_q\,
	datad => \DRAM|new_sdram_controller_0|m_state.000010000~q\,
	combout => \DRAM|new_sdram_controller_0|Selector111~0_combout\);

-- Location: LCCOMB_X34_Y4_N22
\DRAM|new_sdram_controller_0|Selector111~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector111~1_combout\ = (\DRAM|new_sdram_controller_0|m_data[0]~0_combout\ & ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[5]~31_combout\))) # 
-- (!\DRAM|new_sdram_controller_0|m_data[0]~0_combout\ & (\DRAM|new_sdram_controller_0|Selector111~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DRAM|new_sdram_controller_0|Selector111~0_combout\,
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[5]~31_combout\,
	datad => \DRAM|new_sdram_controller_0|m_data[0]~0_combout\,
	combout => \DRAM|new_sdram_controller_0|Selector111~1_combout\);

-- Location: DDIOOUTCELL_X26_Y0_N32
\DRAM|new_sdram_controller_0|m_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|Selector111~1_combout\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|m_data\(5));

-- Location: DDIOOECELL_X26_Y0_N33
\DRAM|new_sdram_controller_0|oe~_Duplicate_5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "high")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|ALT_INV_always5~0_combout\,
	asdata => VCC,
	aload => \DRAM|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	sload => \DRAM|new_sdram_controller_0|ALT_INV_m_state.000010000~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|oe~_Duplicate_5_q\);

-- Location: FF_X37_Y11_N15
\u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	asdata => \u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(6),
	clrn => \u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sload => VCC,
	ena => \u1|modular_adc_0|control_internal|u_control_fsm|load_dout~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(6));

-- Location: LCCOMB_X36_Y11_N22
\u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~6_combout\ = (\u1|modular_adc_0|control_internal|u_control_fsm|pend~q\ & (\u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(6) & 
-- \u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|modular_adc_0|control_internal|u_control_fsm|pend~q\,
	datac => \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(6),
	datad => \u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\,
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~6_combout\);

-- Location: LCCOMB_X34_Y11_N2
\u1|modular_adc_0|control_internal|u_control_fsm|rsp_data[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data[6]~feeder_combout\ = \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~6_combout\,
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data[6]~feeder_combout\);

-- Location: FF_X34_Y11_N3
\u1|modular_adc_0|control_internal|u_control_fsm|rsp_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	d => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data[6]~feeder_combout\,
	clrn => \u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(6));

-- Location: LCCOMB_X34_Y11_N30
\dataIN[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- dataIN(6) = (GLOBAL(\Selector0~1clkctrl_outclk\) & ((\u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(6)))) # (!GLOBAL(\Selector0~1clkctrl_outclk\) & (dataIN(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dataIN(6),
	datab => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(6),
	datac => \Selector0~1clkctrl_outclk\,
	combout => dataIN(6));

-- Location: LCCOMB_X35_Y11_N16
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[6]~feeder_combout\ = dataIN(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => dataIN(6),
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[6]~feeder_combout\);

-- Location: FF_X35_Y11_N17
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[6]~feeder_combout\,
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(6));

-- Location: LCCOMB_X34_Y11_N0
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[6]~feeder_combout\ = dataIN(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => dataIN(6),
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[6]~feeder_combout\);

-- Location: FF_X34_Y11_N1
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[6]~feeder_combout\,
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(6));

-- Location: LCCOMB_X34_Y4_N12
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[6]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[6]~32_combout\ = (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(6)))) # (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(6),
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(6),
	datad => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\,
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[6]~32_combout\);

-- Location: FF_X34_Y4_N13
\DRAM|new_sdram_controller_0|active_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[6]~32_combout\,
	ena => \DRAM|new_sdram_controller_0|active_rnw~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|active_data\(6));

-- Location: FF_X34_Y4_N9
\DRAM|new_sdram_controller_0|m_data[6]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => \DRAM|new_sdram_controller_0|Selector110~1_combout\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|m_data[6]~_Duplicate_1_q\);

-- Location: LCCOMB_X34_Y4_N8
\DRAM|new_sdram_controller_0|Selector110~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector110~0_combout\ = (\DRAM|new_sdram_controller_0|m_state.000010000~q\ & (\DRAM|new_sdram_controller_0|active_data\(6))) # (!\DRAM|new_sdram_controller_0|m_state.000010000~q\ & 
-- ((\DRAM|new_sdram_controller_0|m_state.000000010~q\ & (\DRAM|new_sdram_controller_0|active_data\(6))) # (!\DRAM|new_sdram_controller_0|m_state.000000010~q\ & ((\DRAM|new_sdram_controller_0|m_data[6]~_Duplicate_1_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|active_data\(6),
	datab => \DRAM|new_sdram_controller_0|m_state.000010000~q\,
	datac => \DRAM|new_sdram_controller_0|m_data[6]~_Duplicate_1_q\,
	datad => \DRAM|new_sdram_controller_0|m_state.000000010~q\,
	combout => \DRAM|new_sdram_controller_0|Selector110~0_combout\);

-- Location: LCCOMB_X34_Y4_N26
\DRAM|new_sdram_controller_0|Selector110~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector110~1_combout\ = (\DRAM|new_sdram_controller_0|m_data[0]~0_combout\ & (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[6]~32_combout\)) # 
-- (!\DRAM|new_sdram_controller_0|m_data[0]~0_combout\ & ((\DRAM|new_sdram_controller_0|Selector110~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[6]~32_combout\,
	datac => \DRAM|new_sdram_controller_0|Selector110~0_combout\,
	datad => \DRAM|new_sdram_controller_0|m_data[0]~0_combout\,
	combout => \DRAM|new_sdram_controller_0|Selector110~1_combout\);

-- Location: DDIOOUTCELL_X26_Y0_N25
\DRAM|new_sdram_controller_0|m_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|Selector110~1_combout\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|m_data\(6));

-- Location: DDIOOECELL_X26_Y0_N26
\DRAM|new_sdram_controller_0|oe~_Duplicate_6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "high")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|ALT_INV_always5~0_combout\,
	asdata => VCC,
	aload => \DRAM|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	sload => \DRAM|new_sdram_controller_0|ALT_INV_m_state.000010000~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|oe~_Duplicate_6_q\);

-- Location: FF_X37_Y11_N13
\u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	asdata => \u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(7),
	clrn => \u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sload => VCC,
	ena => \u1|modular_adc_0|control_internal|u_control_fsm|load_dout~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(7));

-- Location: LCCOMB_X38_Y11_N0
\u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~7_combout\ = (\u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(7) & (\u1|modular_adc_0|control_internal|u_control_fsm|pend~q\ & 
-- \u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(7),
	datab => \u1|modular_adc_0|control_internal|u_control_fsm|pend~q\,
	datad => \u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\,
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~7_combout\);

-- Location: FF_X37_Y7_N5
\u1|modular_adc_0|control_internal|u_control_fsm|rsp_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	asdata => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~7_combout\,
	clrn => \u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(7));

-- Location: LCCOMB_X36_Y7_N2
\dataIN[7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- dataIN(7) = (GLOBAL(\Selector0~1clkctrl_outclk\) & ((\u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(7)))) # (!GLOBAL(\Selector0~1clkctrl_outclk\) & (dataIN(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => dataIN(7),
	datac => \Selector0~1clkctrl_outclk\,
	datad => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(7),
	combout => dataIN(7));

-- Location: FF_X36_Y7_N5
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => dataIN(7),
	sload => VCC,
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(7));

-- Location: LCCOMB_X35_Y7_N14
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[7]~feeder_combout\ = dataIN(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => dataIN(7),
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[7]~feeder_combout\);

-- Location: FF_X35_Y7_N15
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[7]~feeder_combout\,
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(7));

-- Location: LCCOMB_X34_Y4_N24
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[7]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[7]~33_combout\ = (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(7))) # (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(7),
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(7),
	datad => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\,
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[7]~33_combout\);

-- Location: FF_X34_Y4_N25
\DRAM|new_sdram_controller_0|active_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[7]~33_combout\,
	ena => \DRAM|new_sdram_controller_0|active_rnw~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|active_data\(7));

-- Location: FF_X34_Y4_N15
\DRAM|new_sdram_controller_0|m_data[7]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => \DRAM|new_sdram_controller_0|Selector109~1_combout\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|m_data[7]~_Duplicate_1_q\);

-- Location: LCCOMB_X34_Y4_N14
\DRAM|new_sdram_controller_0|Selector109~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector109~0_combout\ = (\DRAM|new_sdram_controller_0|m_state.000000010~q\ & (\DRAM|new_sdram_controller_0|active_data\(7))) # (!\DRAM|new_sdram_controller_0|m_state.000000010~q\ & 
-- ((\DRAM|new_sdram_controller_0|m_state.000010000~q\ & (\DRAM|new_sdram_controller_0|active_data\(7))) # (!\DRAM|new_sdram_controller_0|m_state.000010000~q\ & ((\DRAM|new_sdram_controller_0|m_data[7]~_Duplicate_1_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_state.000000010~q\,
	datab => \DRAM|new_sdram_controller_0|active_data\(7),
	datac => \DRAM|new_sdram_controller_0|m_data[7]~_Duplicate_1_q\,
	datad => \DRAM|new_sdram_controller_0|m_state.000010000~q\,
	combout => \DRAM|new_sdram_controller_0|Selector109~0_combout\);

-- Location: LCCOMB_X34_Y4_N30
\DRAM|new_sdram_controller_0|Selector109~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector109~1_combout\ = (\DRAM|new_sdram_controller_0|m_data[0]~0_combout\ & (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[7]~33_combout\)) # 
-- (!\DRAM|new_sdram_controller_0|m_data[0]~0_combout\ & ((\DRAM|new_sdram_controller_0|Selector109~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[7]~33_combout\,
	datac => \DRAM|new_sdram_controller_0|Selector109~0_combout\,
	datad => \DRAM|new_sdram_controller_0|m_data[0]~0_combout\,
	combout => \DRAM|new_sdram_controller_0|Selector109~1_combout\);

-- Location: DDIOOUTCELL_X31_Y0_N32
\DRAM|new_sdram_controller_0|m_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|Selector109~1_combout\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|m_data\(7));

-- Location: DDIOOECELL_X31_Y0_N33
\DRAM|new_sdram_controller_0|oe~_Duplicate_7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "high")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|ALT_INV_always5~0_combout\,
	asdata => VCC,
	aload => \DRAM|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	sload => \DRAM|new_sdram_controller_0|ALT_INV_m_state.000010000~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|oe~_Duplicate_7_q\);

-- Location: LCCOMB_X38_Y11_N10
\u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[8]~feeder_combout\ = \u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(8),
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[8]~feeder_combout\);

-- Location: FF_X38_Y11_N11
\u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	d => \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[8]~feeder_combout\,
	clrn => \u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	ena => \u1|modular_adc_0|control_internal|u_control_fsm|load_dout~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(8));

-- Location: LCCOMB_X39_Y11_N16
\u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~8_combout\ = (\u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\ & (\u1|modular_adc_0|control_internal|u_control_fsm|pend~q\ & 
-- \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\,
	datac => \u1|modular_adc_0|control_internal|u_control_fsm|pend~q\,
	datad => \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(8),
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~8_combout\);

-- Location: LCCOMB_X34_Y11_N24
\u1|modular_adc_0|control_internal|u_control_fsm|rsp_data[8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data[8]~feeder_combout\ = \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~8_combout\,
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data[8]~feeder_combout\);

-- Location: FF_X34_Y11_N25
\u1|modular_adc_0|control_internal|u_control_fsm|rsp_data[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	d => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data[8]~feeder_combout\,
	clrn => \u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(8));

-- Location: LCCOMB_X34_Y11_N14
\dataIN[8]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- dataIN(8) = (GLOBAL(\Selector0~1clkctrl_outclk\) & (\u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(8))) # (!GLOBAL(\Selector0~1clkctrl_outclk\) & ((dataIN(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(8),
	datab => dataIN(8),
	datac => \Selector0~1clkctrl_outclk\,
	combout => dataIN(8));

-- Location: LCCOMB_X35_Y11_N10
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[8]~feeder_combout\ = dataIN(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => dataIN(8),
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[8]~feeder_combout\);

-- Location: FF_X35_Y11_N11
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[8]~feeder_combout\,
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(8));

-- Location: FF_X34_Y11_N15
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => dataIN(8),
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(8));

-- Location: LCCOMB_X38_Y4_N8
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[8]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[8]~34_combout\ = (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(8)))) # (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\,
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(8),
	datad => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(8),
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[8]~34_combout\);

-- Location: FF_X38_Y4_N9
\DRAM|new_sdram_controller_0|active_data[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[8]~34_combout\,
	ena => \DRAM|new_sdram_controller_0|active_rnw~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|active_data\(8));

-- Location: FF_X38_Y4_N13
\DRAM|new_sdram_controller_0|m_data[8]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => \DRAM|new_sdram_controller_0|Selector108~1_combout\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|m_data[8]~_Duplicate_1_q\);

-- Location: LCCOMB_X38_Y4_N12
\DRAM|new_sdram_controller_0|Selector108~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector108~0_combout\ = (\DRAM|new_sdram_controller_0|m_state.000000010~q\ & (\DRAM|new_sdram_controller_0|active_data\(8))) # (!\DRAM|new_sdram_controller_0|m_state.000000010~q\ & 
-- ((\DRAM|new_sdram_controller_0|m_state.000010000~q\ & (\DRAM|new_sdram_controller_0|active_data\(8))) # (!\DRAM|new_sdram_controller_0|m_state.000010000~q\ & ((\DRAM|new_sdram_controller_0|m_data[8]~_Duplicate_1_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_state.000000010~q\,
	datab => \DRAM|new_sdram_controller_0|active_data\(8),
	datac => \DRAM|new_sdram_controller_0|m_data[8]~_Duplicate_1_q\,
	datad => \DRAM|new_sdram_controller_0|m_state.000010000~q\,
	combout => \DRAM|new_sdram_controller_0|Selector108~0_combout\);

-- Location: LCCOMB_X38_Y4_N30
\DRAM|new_sdram_controller_0|Selector108~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector108~1_combout\ = (\DRAM|new_sdram_controller_0|m_data[0]~0_combout\ & ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[8]~34_combout\))) # 
-- (!\DRAM|new_sdram_controller_0|m_data[0]~0_combout\ & (\DRAM|new_sdram_controller_0|Selector108~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|Selector108~0_combout\,
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[8]~34_combout\,
	datad => \DRAM|new_sdram_controller_0|m_data[0]~0_combout\,
	combout => \DRAM|new_sdram_controller_0|Selector108~1_combout\);

-- Location: DDIOOUTCELL_X36_Y0_N11
\DRAM|new_sdram_controller_0|m_data[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|Selector108~1_combout\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|m_data\(8));

-- Location: DDIOOECELL_X36_Y0_N12
\DRAM|new_sdram_controller_0|oe~_Duplicate_8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "high")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|ALT_INV_always5~0_combout\,
	asdata => VCC,
	aload => \DRAM|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	sload => \DRAM|new_sdram_controller_0|ALT_INV_m_state.000010000~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|oe~_Duplicate_8_q\);

-- Location: LCCOMB_X37_Y11_N8
\u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[9]~feeder_combout\ = \u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(9),
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[9]~feeder_combout\);

-- Location: FF_X37_Y11_N9
\u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	d => \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[9]~feeder_combout\,
	clrn => \u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	ena => \u1|modular_adc_0|control_internal|u_control_fsm|load_dout~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(9));

-- Location: LCCOMB_X37_Y11_N16
\u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~9_combout\ = (\u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\ & (\u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(9) & 
-- \u1|modular_adc_0|control_internal|u_control_fsm|pend~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\,
	datab => \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(9),
	datad => \u1|modular_adc_0|control_internal|u_control_fsm|pend~q\,
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~9_combout\);

-- Location: FF_X34_Y11_N7
\u1|modular_adc_0|control_internal|u_control_fsm|rsp_data[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	asdata => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~9_combout\,
	clrn => \u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(9));

-- Location: LCCOMB_X34_Y11_N28
\dataIN[9]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- dataIN(9) = (GLOBAL(\Selector0~1clkctrl_outclk\) & (\u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(9))) # (!GLOBAL(\Selector0~1clkctrl_outclk\) & ((dataIN(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(9),
	datac => \Selector0~1clkctrl_outclk\,
	datad => dataIN(9),
	combout => dataIN(9));

-- Location: LCCOMB_X34_Y11_N4
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[9]~feeder_combout\ = dataIN(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => dataIN(9),
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[9]~feeder_combout\);

-- Location: FF_X34_Y11_N5
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[9]~feeder_combout\,
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(9));

-- Location: LCCOMB_X35_Y11_N8
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[9]~feeder_combout\ = dataIN(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => dataIN(9),
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[9]~feeder_combout\);

-- Location: FF_X35_Y11_N9
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[9]~feeder_combout\,
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(9));

-- Location: LCCOMB_X34_Y8_N14
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[9]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[9]~35_combout\ = (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(9))) # (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(9),
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\,
	datad => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(9),
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[9]~35_combout\);

-- Location: FF_X34_Y8_N15
\DRAM|new_sdram_controller_0|active_data[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[9]~35_combout\,
	ena => \DRAM|new_sdram_controller_0|active_rnw~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|active_data\(9));

-- Location: FF_X34_Y8_N13
\DRAM|new_sdram_controller_0|m_data[9]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => \DRAM|new_sdram_controller_0|Selector107~1_combout\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|m_data[9]~_Duplicate_1_q\);

-- Location: LCCOMB_X34_Y8_N12
\DRAM|new_sdram_controller_0|Selector107~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector107~0_combout\ = (\DRAM|new_sdram_controller_0|m_state.000000010~q\ & (\DRAM|new_sdram_controller_0|active_data\(9))) # (!\DRAM|new_sdram_controller_0|m_state.000000010~q\ & 
-- ((\DRAM|new_sdram_controller_0|m_state.000010000~q\ & (\DRAM|new_sdram_controller_0|active_data\(9))) # (!\DRAM|new_sdram_controller_0|m_state.000010000~q\ & ((\DRAM|new_sdram_controller_0|m_data[9]~_Duplicate_1_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_state.000000010~q\,
	datab => \DRAM|new_sdram_controller_0|active_data\(9),
	datac => \DRAM|new_sdram_controller_0|m_data[9]~_Duplicate_1_q\,
	datad => \DRAM|new_sdram_controller_0|m_state.000010000~q\,
	combout => \DRAM|new_sdram_controller_0|Selector107~0_combout\);

-- Location: LCCOMB_X34_Y8_N8
\DRAM|new_sdram_controller_0|Selector107~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector107~1_combout\ = (\DRAM|new_sdram_controller_0|m_data[0]~0_combout\ & ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[9]~35_combout\))) # 
-- (!\DRAM|new_sdram_controller_0|m_data[0]~0_combout\ & (\DRAM|new_sdram_controller_0|Selector107~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|Selector107~0_combout\,
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[9]~35_combout\,
	datad => \DRAM|new_sdram_controller_0|m_data[0]~0_combout\,
	combout => \DRAM|new_sdram_controller_0|Selector107~1_combout\);

-- Location: DDIOOUTCELL_X29_Y0_N11
\DRAM|new_sdram_controller_0|m_data[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|Selector107~1_combout\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|m_data\(9));

-- Location: DDIOOECELL_X29_Y0_N12
\DRAM|new_sdram_controller_0|oe~_Duplicate_9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "high")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|ALT_INV_always5~0_combout\,
	asdata => VCC,
	aload => \DRAM|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	sload => \DRAM|new_sdram_controller_0|ALT_INV_m_state.000010000~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|oe~_Duplicate_9_q\);

-- Location: LCCOMB_X37_Y11_N4
\u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[10]~feeder_combout\ = \u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(10),
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[10]~feeder_combout\);

-- Location: FF_X37_Y11_N5
\u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	d => \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[10]~feeder_combout\,
	clrn => \u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	ena => \u1|modular_adc_0|control_internal|u_control_fsm|load_dout~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(10));

-- Location: LCCOMB_X40_Y7_N2
\u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~10_combout\ = (\u1|modular_adc_0|control_internal|u_control_fsm|pend~q\ & (\u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(10) & 
-- \u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|modular_adc_0|control_internal|u_control_fsm|pend~q\,
	datac => \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(10),
	datad => \u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\,
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~10_combout\);

-- Location: FF_X40_Y7_N3
\u1|modular_adc_0|control_internal|u_control_fsm|rsp_data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	d => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~10_combout\,
	clrn => \u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(10));

-- Location: LCCOMB_X40_Y7_N12
\dataIN[10]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- dataIN(10) = (GLOBAL(\Selector0~1clkctrl_outclk\) & ((\u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(10)))) # (!GLOBAL(\Selector0~1clkctrl_outclk\) & (dataIN(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dataIN(10),
	datab => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(10),
	datac => \Selector0~1clkctrl_outclk\,
	combout => dataIN(10));

-- Location: FF_X39_Y7_N25
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => dataIN(10),
	sload => VCC,
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(10));

-- Location: LCCOMB_X40_Y7_N24
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[10]~feeder_combout\ = dataIN(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => dataIN(10),
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[10]~feeder_combout\);

-- Location: FF_X40_Y7_N25
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[10]~feeder_combout\,
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(10));

-- Location: LCCOMB_X38_Y4_N0
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[10]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[10]~36_combout\ = (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(10))) # (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(10),
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\,
	datad => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(10),
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[10]~36_combout\);

-- Location: FF_X38_Y4_N1
\DRAM|new_sdram_controller_0|active_data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[10]~36_combout\,
	ena => \DRAM|new_sdram_controller_0|active_rnw~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|active_data\(10));

-- Location: FF_X38_Y4_N27
\DRAM|new_sdram_controller_0|m_data[10]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => \DRAM|new_sdram_controller_0|Selector106~1_combout\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|m_data[10]~_Duplicate_1_q\);

-- Location: LCCOMB_X38_Y4_N26
\DRAM|new_sdram_controller_0|Selector106~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector106~0_combout\ = (\DRAM|new_sdram_controller_0|m_state.000000010~q\ & (\DRAM|new_sdram_controller_0|active_data\(10))) # (!\DRAM|new_sdram_controller_0|m_state.000000010~q\ & 
-- ((\DRAM|new_sdram_controller_0|m_state.000010000~q\ & (\DRAM|new_sdram_controller_0|active_data\(10))) # (!\DRAM|new_sdram_controller_0|m_state.000010000~q\ & ((\DRAM|new_sdram_controller_0|m_data[10]~_Duplicate_1_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_state.000000010~q\,
	datab => \DRAM|new_sdram_controller_0|active_data\(10),
	datac => \DRAM|new_sdram_controller_0|m_data[10]~_Duplicate_1_q\,
	datad => \DRAM|new_sdram_controller_0|m_state.000010000~q\,
	combout => \DRAM|new_sdram_controller_0|Selector106~0_combout\);

-- Location: LCCOMB_X38_Y4_N18
\DRAM|new_sdram_controller_0|Selector106~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector106~1_combout\ = (\DRAM|new_sdram_controller_0|m_data[0]~0_combout\ & ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[10]~36_combout\))) # 
-- (!\DRAM|new_sdram_controller_0|m_data[0]~0_combout\ & (\DRAM|new_sdram_controller_0|Selector106~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|Selector106~0_combout\,
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[10]~36_combout\,
	datad => \DRAM|new_sdram_controller_0|m_data[0]~0_combout\,
	combout => \DRAM|new_sdram_controller_0|Selector106~1_combout\);

-- Location: DDIOOUTCELL_X36_Y0_N4
\DRAM|new_sdram_controller_0|m_data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|Selector106~1_combout\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|m_data\(10));

-- Location: DDIOOECELL_X36_Y0_N5
\DRAM|new_sdram_controller_0|oe~_Duplicate_10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "high")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|ALT_INV_always5~0_combout\,
	asdata => VCC,
	aload => \DRAM|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	sload => \DRAM|new_sdram_controller_0|ALT_INV_m_state.000010000~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|oe~_Duplicate_10_q\);

-- Location: FF_X34_Y4_N1
\DRAM|new_sdram_controller_0|m_data[11]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => \DRAM|new_sdram_controller_0|Selector105~1_combout\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|m_data[11]~_Duplicate_1_q\);

-- Location: FF_X37_Y11_N17
\u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	asdata => \u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(11),
	clrn => \u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sload => VCC,
	ena => \u1|modular_adc_0|control_internal|u_control_fsm|load_dout~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(11));

-- Location: LCCOMB_X40_Y7_N20
\u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~11_combout\ = (\u1|modular_adc_0|control_internal|u_control_fsm|pend~q\ & (\u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(11) & 
-- \u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|modular_adc_0|control_internal|u_control_fsm|pend~q\,
	datac => \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(11),
	datad => \u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\,
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~11_combout\);

-- Location: FF_X40_Y7_N21
\u1|modular_adc_0|control_internal|u_control_fsm|rsp_data[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	d => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~11_combout\,
	clrn => \u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(11));

-- Location: LCCOMB_X40_Y7_N30
\dataIN[11]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- dataIN(11) = (GLOBAL(\Selector0~1clkctrl_outclk\) & (\u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(11))) # (!GLOBAL(\Selector0~1clkctrl_outclk\) & ((dataIN(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(11),
	datac => \Selector0~1clkctrl_outclk\,
	datad => dataIN(11),
	combout => dataIN(11));

-- Location: FF_X39_Y7_N15
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => dataIN(11),
	sload => VCC,
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(11));

-- Location: FF_X40_Y7_N31
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => dataIN(11),
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(11));

-- Location: LCCOMB_X34_Y4_N16
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[11]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[11]~37_combout\ = (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(11))) # (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\,
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(11),
	datad => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(11),
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[11]~37_combout\);

-- Location: FF_X34_Y4_N17
\DRAM|new_sdram_controller_0|active_data[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[11]~37_combout\,
	ena => \DRAM|new_sdram_controller_0|active_rnw~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|active_data\(11));

-- Location: LCCOMB_X34_Y4_N0
\DRAM|new_sdram_controller_0|Selector105~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector105~0_combout\ = (\DRAM|new_sdram_controller_0|m_state.000000010~q\ & (((\DRAM|new_sdram_controller_0|active_data\(11))))) # (!\DRAM|new_sdram_controller_0|m_state.000000010~q\ & 
-- ((\DRAM|new_sdram_controller_0|m_state.000010000~q\ & ((\DRAM|new_sdram_controller_0|active_data\(11)))) # (!\DRAM|new_sdram_controller_0|m_state.000010000~q\ & (\DRAM|new_sdram_controller_0|m_data[11]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_state.000000010~q\,
	datab => \DRAM|new_sdram_controller_0|m_state.000010000~q\,
	datac => \DRAM|new_sdram_controller_0|m_data[11]~_Duplicate_1_q\,
	datad => \DRAM|new_sdram_controller_0|active_data\(11),
	combout => \DRAM|new_sdram_controller_0|Selector105~0_combout\);

-- Location: LCCOMB_X34_Y4_N10
\DRAM|new_sdram_controller_0|Selector105~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector105~1_combout\ = (\DRAM|new_sdram_controller_0|m_data[0]~0_combout\ & ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[11]~37_combout\))) # 
-- (!\DRAM|new_sdram_controller_0|m_data[0]~0_combout\ & (\DRAM|new_sdram_controller_0|Selector105~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DRAM|new_sdram_controller_0|Selector105~0_combout\,
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[11]~37_combout\,
	datad => \DRAM|new_sdram_controller_0|m_data[0]~0_combout\,
	combout => \DRAM|new_sdram_controller_0|Selector105~1_combout\);

-- Location: DDIOOUTCELL_X31_Y0_N11
\DRAM|new_sdram_controller_0|m_data[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|Selector105~1_combout\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|m_data\(11));

-- Location: DDIOOECELL_X31_Y0_N12
\DRAM|new_sdram_controller_0|oe~_Duplicate_11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "high")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|ALT_INV_always5~0_combout\,
	asdata => VCC,
	aload => \DRAM|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	sload => \DRAM|new_sdram_controller_0|ALT_INV_m_state.000010000~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|oe~_Duplicate_11_q\);

-- Location: DDIOOECELL_X24_Y0_N26
\DRAM|new_sdram_controller_0|oe~_Duplicate_12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "high")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|ALT_INV_always5~0_combout\,
	asdata => VCC,
	aload => \DRAM|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	sload => \DRAM|new_sdram_controller_0|ALT_INV_m_state.000010000~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|oe~_Duplicate_12_q\);

-- Location: DDIOOECELL_X24_Y0_N33
\DRAM|new_sdram_controller_0|oe~_Duplicate_13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "high")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|ALT_INV_always5~0_combout\,
	asdata => VCC,
	aload => \DRAM|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	sload => \DRAM|new_sdram_controller_0|ALT_INV_m_state.000010000~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|oe~_Duplicate_13_q\);

-- Location: DDIOOECELL_X24_Y0_N12
\DRAM|new_sdram_controller_0|oe~_Duplicate_14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "high")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|ALT_INV_always5~0_combout\,
	asdata => VCC,
	aload => \DRAM|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	sload => \DRAM|new_sdram_controller_0|ALT_INV_m_state.000010000~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|oe~_Duplicate_14_q\);

-- Location: DDIOOECELL_X24_Y0_N19
\DRAM|new_sdram_controller_0|oe~_Duplicate_15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "high")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|ALT_INV_always5~0_combout\,
	asdata => VCC,
	aload => \DRAM|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	sload => \DRAM|new_sdram_controller_0|ALT_INV_m_state.000010000~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|oe~_Duplicate_15_q\);

-- Location: CLKCTRL_PLL1E0
\DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[1]~clkctrl_e_DRAM_CLK\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "external clock output",
	ena_register_mode => "double register")
-- pragma translate_on
PORT MAP (
	inclk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[1]~clkctrl_e_DRAM_CLK_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[1]~clkctrl_e_DRAM_CLK_outclk\);

-- Location: LCCOMB_X36_Y8_N10
\memaddress~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memaddress~15_combout\ = (!\DE10Reset~input_o\ & \fsm:addressCounter[1]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DE10Reset~input_o\,
	datac => \fsm:addressCounter[1]~combout\,
	combout => \memaddress~15_combout\);

-- Location: LCCOMB_X36_Y8_N4
\memaddress[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- memaddress(1) = (GLOBAL(\estado_pres.e1~clkctrl_outclk\) & (memaddress(1))) # (!GLOBAL(\estado_pres.e1~clkctrl_outclk\) & ((\memaddress~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => memaddress(1),
	datac => \estado_pres.e1~clkctrl_outclk\,
	datad => \memaddress~15_combout\,
	combout => memaddress(1));

-- Location: FF_X36_Y8_N15
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => memaddress(1),
	sload => VCC,
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(18));

-- Location: FF_X36_Y8_N5
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => memaddress(1),
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(18));

-- Location: LCCOMB_X36_Y4_N26
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[18]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[18]~16_combout\ = (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(18)))) # (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\,
	datab => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(18),
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(18),
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[18]~16_combout\);

-- Location: LCCOMB_X35_Y4_N6
\DRAM|new_sdram_controller_0|m_addr[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|m_addr[3]~1_combout\ = (\DRAM|new_sdram_controller_0|m_addr~0_combout\ & (((\DRAM|new_sdram_controller_0|m_state.000000010~q\)))) # (!\DRAM|new_sdram_controller_0|m_addr~0_combout\ & (\DRAM|new_sdram_controller_0|f_pop~q\ & 
-- ((\DRAM|new_sdram_controller_0|pending~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|f_pop~q\,
	datab => \DRAM|new_sdram_controller_0|m_state.000000010~q\,
	datac => \DRAM|new_sdram_controller_0|m_addr~0_combout\,
	datad => \DRAM|new_sdram_controller_0|pending~combout\,
	combout => \DRAM|new_sdram_controller_0|m_addr[3]~1_combout\);

-- Location: FF_X32_Y4_N19
\DRAM|new_sdram_controller_0|i_addr[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => \DRAM|new_sdram_controller_0|i_state.111~q\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|i_addr\(12));

-- Location: FF_X36_Y4_N27
\DRAM|new_sdram_controller_0|active_addr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[18]~16_combout\,
	ena => \DRAM|new_sdram_controller_0|active_rnw~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|active_addr\(0));

-- Location: LCCOMB_X36_Y4_N20
\DRAM|new_sdram_controller_0|Selector98~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector98~0_combout\ = (\DRAM|new_sdram_controller_0|m_addr[3]~1_combout\ & (((!\DRAM|new_sdram_controller_0|m_addr~0_combout\)))) # (!\DRAM|new_sdram_controller_0|m_addr[3]~1_combout\ & 
-- ((\DRAM|new_sdram_controller_0|m_addr~0_combout\ & (!\DRAM|new_sdram_controller_0|i_addr\(12))) # (!\DRAM|new_sdram_controller_0|m_addr~0_combout\ & ((\DRAM|new_sdram_controller_0|active_addr\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|i_addr\(12),
	datab => \DRAM|new_sdram_controller_0|active_addr\(0),
	datac => \DRAM|new_sdram_controller_0|m_addr[3]~1_combout\,
	datad => \DRAM|new_sdram_controller_0|m_addr~0_combout\,
	combout => \DRAM|new_sdram_controller_0|Selector98~0_combout\);

-- Location: LCCOMB_X36_Y4_N6
\DRAM|new_sdram_controller_0|Selector98~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector98~1_combout\ = (\DRAM|new_sdram_controller_0|m_addr[3]~1_combout\ & ((\DRAM|new_sdram_controller_0|Selector98~0_combout\ & 
-- (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[18]~16_combout\)) # (!\DRAM|new_sdram_controller_0|Selector98~0_combout\ & ((\DRAM|new_sdram_controller_0|active_addr\(11)))))) # 
-- (!\DRAM|new_sdram_controller_0|m_addr[3]~1_combout\ & (((\DRAM|new_sdram_controller_0|Selector98~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[18]~16_combout\,
	datab => \DRAM|new_sdram_controller_0|active_addr\(11),
	datac => \DRAM|new_sdram_controller_0|m_addr[3]~1_combout\,
	datad => \DRAM|new_sdram_controller_0|Selector98~0_combout\,
	combout => \DRAM|new_sdram_controller_0|Selector98~1_combout\);

-- Location: LCCOMB_X34_Y3_N0
\DRAM|new_sdram_controller_0|Selector93~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector93~1_combout\ = (!\DRAM|new_sdram_controller_0|m_state.010000000~q\ & (\DRAM|new_sdram_controller_0|Selector93~0_combout\ & ((\DRAM|new_sdram_controller_0|m_state.000000001~q\) # 
-- (!\DRAM|new_sdram_controller_0|init_done~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_state.000000001~q\,
	datab => \DRAM|new_sdram_controller_0|init_done~q\,
	datac => \DRAM|new_sdram_controller_0|m_state.010000000~q\,
	datad => \DRAM|new_sdram_controller_0|Selector93~0_combout\,
	combout => \DRAM|new_sdram_controller_0|Selector93~1_combout\);

-- Location: DDIOOUTCELL_X40_Y0_N25
\DRAM|new_sdram_controller_0|m_addr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|Selector98~1_combout\,
	asdata => VCC,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sload => \DRAM|new_sdram_controller_0|m_state.001000000~q\,
	ena => \DRAM|new_sdram_controller_0|Selector93~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|m_addr\(0));

-- Location: LCCOMB_X34_Y7_N16
\memaddress~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memaddress~16_combout\ = (!\DE10Reset~input_o\ & \fsm:addressCounter[2]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DE10Reset~input_o\,
	datad => \fsm:addressCounter[2]~combout\,
	combout => \memaddress~16_combout\);

-- Location: LCCOMB_X34_Y7_N4
\memaddress[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- memaddress(2) = (GLOBAL(\estado_pres.e1~clkctrl_outclk\) & (memaddress(2))) # (!GLOBAL(\estado_pres.e1~clkctrl_outclk\) & ((\memaddress~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => memaddress(2),
	datac => \estado_pres.e1~clkctrl_outclk\,
	datad => \memaddress~16_combout\,
	combout => memaddress(2));

-- Location: FF_X34_Y7_N5
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => memaddress(2),
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(19));

-- Location: LCCOMB_X34_Y7_N30
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[19]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[19]~feeder_combout\ = memaddress(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => memaddress(2),
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[19]~feeder_combout\);

-- Location: FF_X34_Y7_N31
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[19]~feeder_combout\,
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(19));

-- Location: LCCOMB_X37_Y4_N2
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[19]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[19]~17_combout\ = (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(19))) # (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\,
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(19),
	datad => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(19),
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[19]~17_combout\);

-- Location: FF_X37_Y4_N3
\DRAM|new_sdram_controller_0|active_addr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[19]~17_combout\,
	ena => \DRAM|new_sdram_controller_0|active_rnw~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|active_addr\(1));

-- Location: LCCOMB_X37_Y4_N8
\DRAM|new_sdram_controller_0|Selector97~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector97~0_combout\ = (\DRAM|new_sdram_controller_0|m_addr~0_combout\ & (((!\DRAM|new_sdram_controller_0|i_addr\(12) & !\DRAM|new_sdram_controller_0|m_addr[3]~1_combout\)))) # (!\DRAM|new_sdram_controller_0|m_addr~0_combout\ 
-- & ((\DRAM|new_sdram_controller_0|active_addr\(1)) # ((\DRAM|new_sdram_controller_0|m_addr[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_addr~0_combout\,
	datab => \DRAM|new_sdram_controller_0|active_addr\(1),
	datac => \DRAM|new_sdram_controller_0|i_addr\(12),
	datad => \DRAM|new_sdram_controller_0|m_addr[3]~1_combout\,
	combout => \DRAM|new_sdram_controller_0|Selector97~0_combout\);

-- Location: LCCOMB_X37_Y4_N6
\DRAM|new_sdram_controller_0|Selector97~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector97~1_combout\ = (\DRAM|new_sdram_controller_0|Selector97~0_combout\ & ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[19]~17_combout\) # 
-- ((!\DRAM|new_sdram_controller_0|m_addr[3]~1_combout\)))) # (!\DRAM|new_sdram_controller_0|Selector97~0_combout\ & (((\DRAM|new_sdram_controller_0|active_addr\(12) & \DRAM|new_sdram_controller_0|m_addr[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[19]~17_combout\,
	datab => \DRAM|new_sdram_controller_0|Selector97~0_combout\,
	datac => \DRAM|new_sdram_controller_0|active_addr\(12),
	datad => \DRAM|new_sdram_controller_0|m_addr[3]~1_combout\,
	combout => \DRAM|new_sdram_controller_0|Selector97~1_combout\);

-- Location: DDIOOUTCELL_X38_Y0_N32
\DRAM|new_sdram_controller_0|m_addr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|Selector97~1_combout\,
	asdata => VCC,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sload => \DRAM|new_sdram_controller_0|m_state.001000000~q\,
	ena => \DRAM|new_sdram_controller_0|Selector93~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|m_addr\(1));

-- Location: LCCOMB_X34_Y7_N6
\memaddress~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memaddress~17_combout\ = (!\DE10Reset~input_o\ & \fsm:addressCounter[3]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DE10Reset~input_o\,
	datad => \fsm:addressCounter[3]~combout\,
	combout => \memaddress~17_combout\);

-- Location: LCCOMB_X34_Y7_N24
\memaddress[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- memaddress(3) = (GLOBAL(\estado_pres.e1~clkctrl_outclk\) & (memaddress(3))) # (!GLOBAL(\estado_pres.e1~clkctrl_outclk\) & ((\memaddress~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => memaddress(3),
	datac => \estado_pres.e1~clkctrl_outclk\,
	datad => \memaddress~17_combout\,
	combout => memaddress(3));

-- Location: LCCOMB_X34_Y7_N18
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[20]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[20]~feeder_combout\ = memaddress(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => memaddress(3),
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[20]~feeder_combout\);

-- Location: FF_X34_Y7_N19
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[20]~feeder_combout\,
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(20));

-- Location: FF_X34_Y7_N25
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => memaddress(3),
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(20));

-- Location: LCCOMB_X37_Y4_N24
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[20]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[20]~18_combout\ = (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(20)))) # (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\,
	datab => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(20),
	datad => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(20),
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[20]~18_combout\);

-- Location: FF_X37_Y4_N5
\DRAM|new_sdram_controller_0|active_addr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[20]~18_combout\,
	sload => VCC,
	ena => \DRAM|new_sdram_controller_0|active_rnw~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|active_addr\(2));

-- Location: LCCOMB_X37_Y4_N18
\DRAM|new_sdram_controller_0|Selector96~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector96~0_combout\ = (\DRAM|new_sdram_controller_0|m_addr~0_combout\ & (((!\DRAM|new_sdram_controller_0|i_addr\(12) & !\DRAM|new_sdram_controller_0|m_addr[3]~1_combout\)))) # (!\DRAM|new_sdram_controller_0|m_addr~0_combout\ 
-- & ((\DRAM|new_sdram_controller_0|active_addr\(2)) # ((\DRAM|new_sdram_controller_0|m_addr[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_addr~0_combout\,
	datab => \DRAM|new_sdram_controller_0|active_addr\(2),
	datac => \DRAM|new_sdram_controller_0|i_addr\(12),
	datad => \DRAM|new_sdram_controller_0|m_addr[3]~1_combout\,
	combout => \DRAM|new_sdram_controller_0|Selector96~0_combout\);

-- Location: LCCOMB_X37_Y4_N4
\DRAM|new_sdram_controller_0|Selector96~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector96~1_combout\ = (\DRAM|new_sdram_controller_0|m_addr[3]~1_combout\ & ((\DRAM|new_sdram_controller_0|Selector96~0_combout\ & 
-- ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[20]~18_combout\))) # (!\DRAM|new_sdram_controller_0|Selector96~0_combout\ & (\DRAM|new_sdram_controller_0|active_addr\(13))))) # 
-- (!\DRAM|new_sdram_controller_0|m_addr[3]~1_combout\ & (((\DRAM|new_sdram_controller_0|Selector96~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_addr[3]~1_combout\,
	datab => \DRAM|new_sdram_controller_0|active_addr\(13),
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[20]~18_combout\,
	datad => \DRAM|new_sdram_controller_0|Selector96~0_combout\,
	combout => \DRAM|new_sdram_controller_0|Selector96~1_combout\);

-- Location: DDIOOUTCELL_X40_Y0_N11
\DRAM|new_sdram_controller_0|m_addr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|Selector96~1_combout\,
	asdata => VCC,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sload => \DRAM|new_sdram_controller_0|m_state.001000000~q\,
	ena => \DRAM|new_sdram_controller_0|Selector93~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|m_addr\(2));

-- Location: LCCOMB_X39_Y7_N6
\memaddress~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memaddress~18_combout\ = (\fsm:addressCounter[4]~combout\ & !\DE10Reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fsm:addressCounter[4]~combout\,
	datad => \DE10Reset~input_o\,
	combout => \memaddress~18_combout\);

-- Location: LCCOMB_X39_Y7_N8
\memaddress[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- memaddress(4) = (GLOBAL(\estado_pres.e1~clkctrl_outclk\) & (memaddress(4))) # (!GLOBAL(\estado_pres.e1~clkctrl_outclk\) & ((\memaddress~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => memaddress(4),
	datac => \estado_pres.e1~clkctrl_outclk\,
	datad => \memaddress~18_combout\,
	combout => memaddress(4));

-- Location: FF_X39_Y7_N7
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => memaddress(4),
	sload => VCC,
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(21));

-- Location: FF_X39_Y7_N9
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => memaddress(4),
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(21));

-- Location: LCCOMB_X38_Y4_N4
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[21]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[21]~19_combout\ = (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(21)))) # (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(21),
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\,
	datad => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(21),
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[21]~19_combout\);

-- Location: FF_X38_Y4_N5
\DRAM|new_sdram_controller_0|active_addr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[21]~19_combout\,
	ena => \DRAM|new_sdram_controller_0|active_rnw~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|active_addr\(3));

-- Location: LCCOMB_X38_Y4_N2
\DRAM|new_sdram_controller_0|Selector95~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector95~0_combout\ = (\DRAM|new_sdram_controller_0|m_addr[3]~1_combout\ & (((!\DRAM|new_sdram_controller_0|m_addr~0_combout\)))) # (!\DRAM|new_sdram_controller_0|m_addr[3]~1_combout\ & 
-- ((\DRAM|new_sdram_controller_0|m_addr~0_combout\ & (!\DRAM|new_sdram_controller_0|i_addr\(12))) # (!\DRAM|new_sdram_controller_0|m_addr~0_combout\ & ((\DRAM|new_sdram_controller_0|active_addr\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_addr[3]~1_combout\,
	datab => \DRAM|new_sdram_controller_0|i_addr\(12),
	datac => \DRAM|new_sdram_controller_0|active_addr\(3),
	datad => \DRAM|new_sdram_controller_0|m_addr~0_combout\,
	combout => \DRAM|new_sdram_controller_0|Selector95~0_combout\);

-- Location: LCCOMB_X38_Y4_N20
\DRAM|new_sdram_controller_0|Selector95~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector95~1_combout\ = (\DRAM|new_sdram_controller_0|m_addr[3]~1_combout\ & ((\DRAM|new_sdram_controller_0|Selector95~0_combout\ & 
-- ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[21]~19_combout\))) # (!\DRAM|new_sdram_controller_0|Selector95~0_combout\ & (\DRAM|new_sdram_controller_0|active_addr\(14))))) # 
-- (!\DRAM|new_sdram_controller_0|m_addr[3]~1_combout\ & (((\DRAM|new_sdram_controller_0|Selector95~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_addr[3]~1_combout\,
	datab => \DRAM|new_sdram_controller_0|active_addr\(14),
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[21]~19_combout\,
	datad => \DRAM|new_sdram_controller_0|Selector95~0_combout\,
	combout => \DRAM|new_sdram_controller_0|Selector95~1_combout\);

-- Location: DDIOOUTCELL_X38_Y0_N25
\DRAM|new_sdram_controller_0|m_addr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|Selector95~1_combout\,
	asdata => VCC,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sload => \DRAM|new_sdram_controller_0|m_state.001000000~q\,
	ena => \DRAM|new_sdram_controller_0|Selector93~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|m_addr\(3));

-- Location: LCCOMB_X34_Y7_N28
\memaddress~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memaddress~19_combout\ = (!\DE10Reset~input_o\ & \fsm:addressCounter[5]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DE10Reset~input_o\,
	datad => \fsm:addressCounter[5]~combout\,
	combout => \memaddress~19_combout\);

-- Location: LCCOMB_X34_Y7_N20
\memaddress[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- memaddress(5) = (GLOBAL(\estado_pres.e1~clkctrl_outclk\) & (memaddress(5))) # (!GLOBAL(\estado_pres.e1~clkctrl_outclk\) & ((\memaddress~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => memaddress(5),
	datac => \estado_pres.e1~clkctrl_outclk\,
	datad => \memaddress~19_combout\,
	combout => memaddress(5));

-- Location: LCCOMB_X34_Y7_N22
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[22]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[22]~feeder_combout\ = memaddress(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => memaddress(5),
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[22]~feeder_combout\);

-- Location: FF_X34_Y7_N23
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[22]~feeder_combout\,
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(22));

-- Location: FF_X34_Y7_N21
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => memaddress(5),
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(22));

-- Location: LCCOMB_X38_Y4_N22
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[22]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[22]~20_combout\ = (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(22)))) # (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\,
	datab => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(22),
	datad => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(22),
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[22]~20_combout\);

-- Location: FF_X38_Y4_N7
\DRAM|new_sdram_controller_0|active_addr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[22]~20_combout\,
	sload => VCC,
	ena => \DRAM|new_sdram_controller_0|active_rnw~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|active_addr\(4));

-- Location: LCCOMB_X38_Y4_N16
\DRAM|new_sdram_controller_0|Selector94~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector94~0_combout\ = (\DRAM|new_sdram_controller_0|m_addr[3]~1_combout\ & (((!\DRAM|new_sdram_controller_0|m_addr~0_combout\)))) # (!\DRAM|new_sdram_controller_0|m_addr[3]~1_combout\ & 
-- ((\DRAM|new_sdram_controller_0|m_addr~0_combout\ & ((!\DRAM|new_sdram_controller_0|i_addr\(12)))) # (!\DRAM|new_sdram_controller_0|m_addr~0_combout\ & (\DRAM|new_sdram_controller_0|active_addr\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_addr[3]~1_combout\,
	datab => \DRAM|new_sdram_controller_0|active_addr\(4),
	datac => \DRAM|new_sdram_controller_0|i_addr\(12),
	datad => \DRAM|new_sdram_controller_0|m_addr~0_combout\,
	combout => \DRAM|new_sdram_controller_0|Selector94~0_combout\);

-- Location: LCCOMB_X38_Y4_N6
\DRAM|new_sdram_controller_0|Selector94~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector94~1_combout\ = (\DRAM|new_sdram_controller_0|m_addr[3]~1_combout\ & ((\DRAM|new_sdram_controller_0|Selector94~0_combout\ & 
-- ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[22]~20_combout\))) # (!\DRAM|new_sdram_controller_0|Selector94~0_combout\ & (\DRAM|new_sdram_controller_0|active_addr\(15))))) # 
-- (!\DRAM|new_sdram_controller_0|m_addr[3]~1_combout\ & (((\DRAM|new_sdram_controller_0|Selector94~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_addr[3]~1_combout\,
	datab => \DRAM|new_sdram_controller_0|active_addr\(15),
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[22]~20_combout\,
	datad => \DRAM|new_sdram_controller_0|Selector94~0_combout\,
	combout => \DRAM|new_sdram_controller_0|Selector94~1_combout\);

-- Location: DDIOOUTCELL_X38_Y0_N4
\DRAM|new_sdram_controller_0|m_addr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|Selector94~1_combout\,
	asdata => VCC,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sload => \DRAM|new_sdram_controller_0|m_state.001000000~q\,
	ena => \DRAM|new_sdram_controller_0|Selector93~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|m_addr\(4));

-- Location: FF_X37_Y4_N13
\DRAM|new_sdram_controller_0|m_addr[5]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => \DRAM|new_sdram_controller_0|Selector93~4_combout\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|m_addr[5]~_Duplicate_1_q\);

-- Location: LCCOMB_X37_Y4_N12
\DRAM|new_sdram_controller_0|Selector93~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector93~2_combout\ = (\DRAM|new_sdram_controller_0|Selector93~1_combout\ & ((\DRAM|new_sdram_controller_0|active_addr\(16)) # ((!\DRAM|new_sdram_controller_0|m_state.000000010~q\)))) # 
-- (!\DRAM|new_sdram_controller_0|Selector93~1_combout\ & (\DRAM|new_sdram_controller_0|m_addr[5]~_Duplicate_1_q\ & ((\DRAM|new_sdram_controller_0|active_addr\(16)) # (!\DRAM|new_sdram_controller_0|m_state.000000010~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|Selector93~1_combout\,
	datab => \DRAM|new_sdram_controller_0|active_addr\(16),
	datac => \DRAM|new_sdram_controller_0|m_addr[5]~_Duplicate_1_q\,
	datad => \DRAM|new_sdram_controller_0|m_state.000000010~q\,
	combout => \DRAM|new_sdram_controller_0|Selector93~2_combout\);

-- Location: LCCOMB_X36_Y7_N12
\memaddress~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memaddress~20_combout\ = (!\DE10Reset~input_o\ & \fsm:addressCounter[6]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DE10Reset~input_o\,
	datad => \fsm:addressCounter[6]~combout\,
	combout => \memaddress~20_combout\);

-- Location: LCCOMB_X36_Y7_N26
\memaddress[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- memaddress(6) = (GLOBAL(\estado_pres.e1~clkctrl_outclk\) & (memaddress(6))) # (!GLOBAL(\estado_pres.e1~clkctrl_outclk\) & ((\memaddress~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => memaddress(6),
	datac => \estado_pres.e1~clkctrl_outclk\,
	datad => \memaddress~20_combout\,
	combout => memaddress(6));

-- Location: FF_X36_Y7_N13
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => memaddress(6),
	sload => VCC,
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(23));

-- Location: FF_X36_Y7_N27
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => memaddress(6),
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(23));

-- Location: LCCOMB_X37_Y4_N28
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[23]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[23]~21_combout\ = (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(23))) # (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(23),
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\,
	datad => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(23),
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[23]~21_combout\);

-- Location: FF_X37_Y4_N29
\DRAM|new_sdram_controller_0|active_addr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[23]~21_combout\,
	ena => \DRAM|new_sdram_controller_0|active_rnw~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|active_addr\(5));

-- Location: LCCOMB_X37_Y4_N30
\DRAM|new_sdram_controller_0|Selector93~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector93~3_combout\ = (\DRAM|new_sdram_controller_0|m_addr~0_combout\) # ((\DRAM|new_sdram_controller_0|active_addr\(5) & ((!\DRAM|new_sdram_controller_0|pending~combout\) # (!\DRAM|new_sdram_controller_0|f_pop~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_addr~0_combout\,
	datab => \DRAM|new_sdram_controller_0|active_addr\(5),
	datac => \DRAM|new_sdram_controller_0|f_pop~q\,
	datad => \DRAM|new_sdram_controller_0|pending~combout\,
	combout => \DRAM|new_sdram_controller_0|Selector93~3_combout\);

-- Location: LCCOMB_X37_Y4_N22
\DRAM|new_sdram_controller_0|Selector93~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector93~4_combout\ = (\DRAM|new_sdram_controller_0|Selector93~2_combout\ & ((\DRAM|new_sdram_controller_0|Selector93~3_combout\) # 
-- ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[23]~21_combout\ & \DRAM|new_sdram_controller_0|f_select~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|Selector93~2_combout\,
	datab => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[23]~21_combout\,
	datac => \DRAM|new_sdram_controller_0|Selector93~3_combout\,
	datad => \DRAM|new_sdram_controller_0|f_select~combout\,
	combout => \DRAM|new_sdram_controller_0|Selector93~4_combout\);

-- Location: DDIOOUTCELL_X40_Y0_N18
\DRAM|new_sdram_controller_0|m_addr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|Selector93~4_combout\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|m_addr\(5));

-- Location: LCCOMB_X36_Y7_N28
\memaddress~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memaddress~21_combout\ = (!\DE10Reset~input_o\ & \fsm:addressCounter[7]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DE10Reset~input_o\,
	datad => \fsm:addressCounter[7]~combout\,
	combout => \memaddress~21_combout\);

-- Location: LCCOMB_X36_Y7_N14
\memaddress[7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- memaddress(7) = (GLOBAL(\estado_pres.e1~clkctrl_outclk\) & (memaddress(7))) # (!GLOBAL(\estado_pres.e1~clkctrl_outclk\) & ((\memaddress~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => memaddress(7),
	datac => \estado_pres.e1~clkctrl_outclk\,
	datad => \memaddress~21_combout\,
	combout => memaddress(7));

-- Location: FF_X36_Y7_N29
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => memaddress(7),
	sload => VCC,
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(24));

-- Location: FF_X36_Y7_N15
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => memaddress(7),
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(24));

-- Location: LCCOMB_X37_Y4_N0
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[24]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[24]~22_combout\ = (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(24))) # (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\,
	datab => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(24),
	datad => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(24),
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[24]~22_combout\);

-- Location: FF_X37_Y4_N21
\DRAM|new_sdram_controller_0|active_addr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[24]~22_combout\,
	sload => VCC,
	ena => \DRAM|new_sdram_controller_0|active_rnw~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|active_addr\(6));

-- Location: LCCOMB_X37_Y4_N10
\DRAM|new_sdram_controller_0|Selector92~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector92~0_combout\ = (\DRAM|new_sdram_controller_0|m_addr~0_combout\ & (((!\DRAM|new_sdram_controller_0|i_addr\(12) & !\DRAM|new_sdram_controller_0|m_addr[3]~1_combout\)))) # (!\DRAM|new_sdram_controller_0|m_addr~0_combout\ 
-- & ((\DRAM|new_sdram_controller_0|active_addr\(6)) # ((\DRAM|new_sdram_controller_0|m_addr[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_addr~0_combout\,
	datab => \DRAM|new_sdram_controller_0|active_addr\(6),
	datac => \DRAM|new_sdram_controller_0|i_addr\(12),
	datad => \DRAM|new_sdram_controller_0|m_addr[3]~1_combout\,
	combout => \DRAM|new_sdram_controller_0|Selector92~0_combout\);

-- Location: LCCOMB_X37_Y4_N20
\DRAM|new_sdram_controller_0|Selector92~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector92~1_combout\ = (\DRAM|new_sdram_controller_0|m_addr[3]~1_combout\ & ((\DRAM|new_sdram_controller_0|Selector92~0_combout\ & 
-- ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[24]~22_combout\))) # (!\DRAM|new_sdram_controller_0|Selector92~0_combout\ & (\DRAM|new_sdram_controller_0|active_addr\(17))))) # 
-- (!\DRAM|new_sdram_controller_0|m_addr[3]~1_combout\ & (((\DRAM|new_sdram_controller_0|Selector92~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_addr[3]~1_combout\,
	datab => \DRAM|new_sdram_controller_0|active_addr\(17),
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[24]~22_combout\,
	datad => \DRAM|new_sdram_controller_0|Selector92~0_combout\,
	combout => \DRAM|new_sdram_controller_0|Selector92~1_combout\);

-- Location: DDIOOUTCELL_X40_Y0_N4
\DRAM|new_sdram_controller_0|m_addr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|Selector92~1_combout\,
	asdata => VCC,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sload => \DRAM|new_sdram_controller_0|m_state.001000000~q\,
	ena => \DRAM|new_sdram_controller_0|Selector93~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|m_addr\(6));

-- Location: LCCOMB_X36_Y7_N16
\memaddress~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memaddress~22_combout\ = (!\DE10Reset~input_o\ & \fsm:addressCounter[8]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DE10Reset~input_o\,
	datad => \fsm:addressCounter[8]~combout\,
	combout => \memaddress~22_combout\);

-- Location: LCCOMB_X36_Y7_N4
\memaddress[8]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- memaddress(8) = (GLOBAL(\estado_pres.e1~clkctrl_outclk\) & (memaddress(8))) # (!GLOBAL(\estado_pres.e1~clkctrl_outclk\) & ((\memaddress~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_pres.e1~clkctrl_outclk\,
	datab => memaddress(8),
	datad => \memaddress~22_combout\,
	combout => memaddress(8));

-- Location: FF_X36_Y7_N17
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => memaddress(8),
	sload => VCC,
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(25));

-- Location: FF_X36_Y7_N11
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => memaddress(8),
	sload => VCC,
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(25));

-- Location: LCCOMB_X36_Y4_N4
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[25]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[25]~23_combout\ = (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(25))) # (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(25),
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\,
	datad => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(25),
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[25]~23_combout\);

-- Location: FF_X36_Y4_N5
\DRAM|new_sdram_controller_0|active_addr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[25]~23_combout\,
	ena => \DRAM|new_sdram_controller_0|active_rnw~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|active_addr\(7));

-- Location: LCCOMB_X36_Y4_N2
\DRAM|new_sdram_controller_0|Selector91~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector91~0_combout\ = (\DRAM|new_sdram_controller_0|m_addr[3]~1_combout\ & (((\DRAM|new_sdram_controller_0|active_addr\(18)) # (!\DRAM|new_sdram_controller_0|m_addr~0_combout\)))) # 
-- (!\DRAM|new_sdram_controller_0|m_addr[3]~1_combout\ & (!\DRAM|new_sdram_controller_0|i_addr\(12) & ((\DRAM|new_sdram_controller_0|m_addr~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|i_addr\(12),
	datab => \DRAM|new_sdram_controller_0|active_addr\(18),
	datac => \DRAM|new_sdram_controller_0|m_addr[3]~1_combout\,
	datad => \DRAM|new_sdram_controller_0|m_addr~0_combout\,
	combout => \DRAM|new_sdram_controller_0|Selector91~0_combout\);

-- Location: LCCOMB_X36_Y4_N24
\DRAM|new_sdram_controller_0|Selector91~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector91~1_combout\ = (\DRAM|new_sdram_controller_0|m_addr~0_combout\ & (((\DRAM|new_sdram_controller_0|Selector91~0_combout\)))) # (!\DRAM|new_sdram_controller_0|m_addr~0_combout\ & 
-- ((\DRAM|new_sdram_controller_0|Selector91~0_combout\ & ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[25]~23_combout\))) # (!\DRAM|new_sdram_controller_0|Selector91~0_combout\ & 
-- (\DRAM|new_sdram_controller_0|active_addr\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|active_addr\(7),
	datab => \DRAM|new_sdram_controller_0|m_addr~0_combout\,
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[25]~23_combout\,
	datad => \DRAM|new_sdram_controller_0|Selector91~0_combout\,
	combout => \DRAM|new_sdram_controller_0|Selector91~1_combout\);

-- Location: DDIOOUTCELL_X38_Y0_N18
\DRAM|new_sdram_controller_0|m_addr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|Selector91~1_combout\,
	asdata => VCC,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sload => \DRAM|new_sdram_controller_0|m_state.001000000~q\,
	ena => \DRAM|new_sdram_controller_0|Selector93~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|m_addr\(7));

-- Location: LCCOMB_X39_Y7_N10
\memaddress~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memaddress~23_combout\ = (!\DE10Reset~input_o\ & \fsm:addressCounter[9]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DE10Reset~input_o\,
	datad => \fsm:addressCounter[9]~combout\,
	combout => \memaddress~23_combout\);

-- Location: LCCOMB_X39_Y7_N4
\memaddress[9]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- memaddress(9) = (GLOBAL(\estado_pres.e1~clkctrl_outclk\) & (memaddress(9))) # (!GLOBAL(\estado_pres.e1~clkctrl_outclk\) & ((\memaddress~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => memaddress(9),
	datac => \estado_pres.e1~clkctrl_outclk\,
	datad => \memaddress~23_combout\,
	combout => memaddress(9));

-- Location: FF_X39_Y7_N11
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => memaddress(9),
	sload => VCC,
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(26));

-- Location: FF_X39_Y7_N5
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => memaddress(9),
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(26));

-- Location: LCCOMB_X36_Y4_N30
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[26]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[26]~24_combout\ = (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(26)))) # (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\,
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(26),
	datad => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(26),
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[26]~24_combout\);

-- Location: FF_X36_Y4_N31
\DRAM|new_sdram_controller_0|active_addr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[26]~24_combout\,
	ena => \DRAM|new_sdram_controller_0|active_rnw~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|active_addr\(8));

-- Location: LCCOMB_X36_Y4_N16
\DRAM|new_sdram_controller_0|Selector90~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector90~0_combout\ = (\DRAM|new_sdram_controller_0|m_addr~0_combout\ & (((!\DRAM|new_sdram_controller_0|m_addr[3]~1_combout\ & !\DRAM|new_sdram_controller_0|i_addr\(12))))) # (!\DRAM|new_sdram_controller_0|m_addr~0_combout\ 
-- & ((\DRAM|new_sdram_controller_0|active_addr\(8)) # ((\DRAM|new_sdram_controller_0|m_addr[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|active_addr\(8),
	datab => \DRAM|new_sdram_controller_0|m_addr~0_combout\,
	datac => \DRAM|new_sdram_controller_0|m_addr[3]~1_combout\,
	datad => \DRAM|new_sdram_controller_0|i_addr\(12),
	combout => \DRAM|new_sdram_controller_0|Selector90~0_combout\);

-- Location: LCCOMB_X36_Y4_N8
\DRAM|new_sdram_controller_0|Selector90~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector90~1_combout\ = (\DRAM|new_sdram_controller_0|m_addr[3]~1_combout\ & ((\DRAM|new_sdram_controller_0|Selector90~0_combout\ & 
-- (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[26]~24_combout\)) # (!\DRAM|new_sdram_controller_0|Selector90~0_combout\ & ((\DRAM|new_sdram_controller_0|active_addr\(19)))))) # 
-- (!\DRAM|new_sdram_controller_0|m_addr[3]~1_combout\ & (((\DRAM|new_sdram_controller_0|Selector90~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[26]~24_combout\,
	datab => \DRAM|new_sdram_controller_0|m_addr[3]~1_combout\,
	datac => \DRAM|new_sdram_controller_0|active_addr\(19),
	datad => \DRAM|new_sdram_controller_0|Selector90~0_combout\,
	combout => \DRAM|new_sdram_controller_0|Selector90~1_combout\);

-- Location: DDIOOUTCELL_X40_Y0_N32
\DRAM|new_sdram_controller_0|m_addr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|Selector90~1_combout\,
	asdata => VCC,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sload => \DRAM|new_sdram_controller_0|m_state.001000000~q\,
	ena => \DRAM|new_sdram_controller_0|Selector93~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|m_addr\(8));

-- Location: LCCOMB_X38_Y7_N10
\memaddress~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memaddress~24_combout\ = (!\DE10Reset~input_o\ & \fsm:addressCounter[10]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DE10Reset~input_o\,
	datad => \fsm:addressCounter[10]~combout\,
	combout => \memaddress~24_combout\);

-- Location: LCCOMB_X38_Y7_N4
\memaddress[10]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- memaddress(10) = (GLOBAL(\estado_pres.e1~clkctrl_outclk\) & (memaddress(10))) # (!GLOBAL(\estado_pres.e1~clkctrl_outclk\) & ((\memaddress~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => memaddress(10),
	datac => \estado_pres.e1~clkctrl_outclk\,
	datad => \memaddress~24_combout\,
	combout => memaddress(10));

-- Location: FF_X38_Y7_N11
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => memaddress(10),
	sload => VCC,
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(27));

-- Location: FF_X38_Y7_N5
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => memaddress(10),
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(27));

-- Location: LCCOMB_X38_Y4_N10
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[27]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[27]~25_combout\ = (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(27)))) # (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(27),
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\,
	datad => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(27),
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[27]~25_combout\);

-- Location: FF_X38_Y4_N11
\DRAM|new_sdram_controller_0|active_addr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[27]~25_combout\,
	ena => \DRAM|new_sdram_controller_0|active_rnw~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|active_addr\(9));

-- Location: LCCOMB_X38_Y4_N28
\DRAM|new_sdram_controller_0|Selector89~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector89~0_combout\ = (\DRAM|new_sdram_controller_0|m_addr~0_combout\ & ((\DRAM|new_sdram_controller_0|m_addr[3]~1_combout\ & (\DRAM|new_sdram_controller_0|active_addr\(20))) # 
-- (!\DRAM|new_sdram_controller_0|m_addr[3]~1_combout\ & ((!\DRAM|new_sdram_controller_0|i_addr\(12)))))) # (!\DRAM|new_sdram_controller_0|m_addr~0_combout\ & (((\DRAM|new_sdram_controller_0|m_addr[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|active_addr\(20),
	datab => \DRAM|new_sdram_controller_0|m_addr~0_combout\,
	datac => \DRAM|new_sdram_controller_0|i_addr\(12),
	datad => \DRAM|new_sdram_controller_0|m_addr[3]~1_combout\,
	combout => \DRAM|new_sdram_controller_0|Selector89~0_combout\);

-- Location: LCCOMB_X38_Y4_N14
\DRAM|new_sdram_controller_0|Selector89~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector89~1_combout\ = (\DRAM|new_sdram_controller_0|m_addr~0_combout\ & (((\DRAM|new_sdram_controller_0|Selector89~0_combout\)))) # (!\DRAM|new_sdram_controller_0|m_addr~0_combout\ & 
-- ((\DRAM|new_sdram_controller_0|Selector89~0_combout\ & ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[27]~25_combout\))) # (!\DRAM|new_sdram_controller_0|Selector89~0_combout\ & 
-- (\DRAM|new_sdram_controller_0|active_addr\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|active_addr\(9),
	datab => \DRAM|new_sdram_controller_0|m_addr~0_combout\,
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[27]~25_combout\,
	datad => \DRAM|new_sdram_controller_0|Selector89~0_combout\,
	combout => \DRAM|new_sdram_controller_0|Selector89~1_combout\);

-- Location: DDIOOUTCELL_X38_Y0_N11
\DRAM|new_sdram_controller_0|m_addr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|Selector89~1_combout\,
	asdata => VCC,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sload => \DRAM|new_sdram_controller_0|m_state.001000000~q\,
	ena => \DRAM|new_sdram_controller_0|Selector93~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|m_addr\(9));

-- Location: LCCOMB_X32_Y4_N6
\DRAM|new_sdram_controller_0|Selector88~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector88~2_combout\ = (\DRAM|new_sdram_controller_0|m_state.000000010~q\ & (\DRAM|new_sdram_controller_0|active_addr\(21))) # (!\DRAM|new_sdram_controller_0|m_state.000000010~q\ & 
-- ((!\DRAM|new_sdram_controller_0|i_addr\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_state.000000010~q\,
	datac => \DRAM|new_sdram_controller_0|active_addr\(21),
	datad => \DRAM|new_sdram_controller_0|i_addr\(12),
	combout => \DRAM|new_sdram_controller_0|Selector88~2_combout\);

-- Location: LCCOMB_X32_Y4_N30
\DRAM|new_sdram_controller_0|Selector88~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector88~3_combout\ = (\DRAM|new_sdram_controller_0|m_state.001000000~q\) # ((\DRAM|new_sdram_controller_0|Selector88~2_combout\ & (!\DRAM|new_sdram_controller_0|m_state.000010000~q\ & 
-- !\DRAM|new_sdram_controller_0|m_state.000001000~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|Selector88~2_combout\,
	datab => \DRAM|new_sdram_controller_0|m_state.000010000~q\,
	datac => \DRAM|new_sdram_controller_0|m_state.000001000~q\,
	datad => \DRAM|new_sdram_controller_0|m_state.001000000~q\,
	combout => \DRAM|new_sdram_controller_0|Selector88~3_combout\);

-- Location: DDIOOUTCELL_X29_Y0_N18
\DRAM|new_sdram_controller_0|m_addr[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|Selector88~3_combout\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	ena => \DRAM|new_sdram_controller_0|Selector93~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|m_addr\(10));

-- Location: LCCOMB_X32_Y4_N10
\DRAM|new_sdram_controller_0|Selector87~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector87~2_combout\ = (\DRAM|new_sdram_controller_0|m_state.000000010~q\ & (\DRAM|new_sdram_controller_0|active_addr\(22))) # (!\DRAM|new_sdram_controller_0|m_state.000000010~q\ & 
-- ((!\DRAM|new_sdram_controller_0|i_addr\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_state.000000010~q\,
	datac => \DRAM|new_sdram_controller_0|active_addr\(22),
	datad => \DRAM|new_sdram_controller_0|i_addr\(12),
	combout => \DRAM|new_sdram_controller_0|Selector87~2_combout\);

-- Location: LCCOMB_X32_Y4_N16
\DRAM|new_sdram_controller_0|Selector87~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector87~3_combout\ = (\DRAM|new_sdram_controller_0|m_state.001000000~q\) # ((\DRAM|new_sdram_controller_0|Selector87~2_combout\ & (!\DRAM|new_sdram_controller_0|m_state.000010000~q\ & 
-- !\DRAM|new_sdram_controller_0|m_state.000001000~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|Selector87~2_combout\,
	datab => \DRAM|new_sdram_controller_0|m_state.000010000~q\,
	datac => \DRAM|new_sdram_controller_0|m_state.000001000~q\,
	datad => \DRAM|new_sdram_controller_0|m_state.001000000~q\,
	combout => \DRAM|new_sdram_controller_0|Selector87~3_combout\);

-- Location: DDIOOUTCELL_X29_Y0_N25
\DRAM|new_sdram_controller_0|m_addr[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|Selector87~3_combout\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	ena => \DRAM|new_sdram_controller_0|Selector93~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|m_addr\(11));

-- Location: LCCOMB_X32_Y4_N0
\DRAM|new_sdram_controller_0|Selector86~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector86~2_combout\ = (\DRAM|new_sdram_controller_0|m_state.000000010~q\ & (\DRAM|new_sdram_controller_0|active_addr\(23))) # (!\DRAM|new_sdram_controller_0|m_state.000000010~q\ & 
-- ((!\DRAM|new_sdram_controller_0|i_addr\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_state.000000010~q\,
	datac => \DRAM|new_sdram_controller_0|active_addr\(23),
	datad => \DRAM|new_sdram_controller_0|i_addr\(12),
	combout => \DRAM|new_sdram_controller_0|Selector86~2_combout\);

-- Location: LCCOMB_X32_Y4_N14
\DRAM|new_sdram_controller_0|Selector86~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector86~3_combout\ = (\DRAM|new_sdram_controller_0|m_state.001000000~q\) # ((\DRAM|new_sdram_controller_0|Selector86~2_combout\ & (!\DRAM|new_sdram_controller_0|m_state.000010000~q\ & 
-- !\DRAM|new_sdram_controller_0|m_state.000001000~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|Selector86~2_combout\,
	datab => \DRAM|new_sdram_controller_0|m_state.000010000~q\,
	datac => \DRAM|new_sdram_controller_0|m_state.000001000~q\,
	datad => \DRAM|new_sdram_controller_0|m_state.001000000~q\,
	combout => \DRAM|new_sdram_controller_0|Selector86~3_combout\);

-- Location: DDIOOUTCELL_X29_Y0_N32
\DRAM|new_sdram_controller_0|m_addr[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|Selector86~3_combout\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	ena => \DRAM|new_sdram_controller_0|Selector93~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|m_addr\(12));

-- Location: LCCOMB_X36_Y4_N10
\DRAM|new_sdram_controller_0|Selector100~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector100~0_combout\ = (\DRAM|new_sdram_controller_0|m_state.000000010~q\ & (((\DRAM|new_sdram_controller_0|active_addr\(10))))) # (!\DRAM|new_sdram_controller_0|m_state.000000010~q\ & 
-- ((\DRAM|new_sdram_controller_0|f_select~combout\ & (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[28]~0_combout\)) # (!\DRAM|new_sdram_controller_0|f_select~combout\ & 
-- ((\DRAM|new_sdram_controller_0|active_addr\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[28]~0_combout\,
	datab => \DRAM|new_sdram_controller_0|active_addr\(10),
	datac => \DRAM|new_sdram_controller_0|m_state.000000010~q\,
	datad => \DRAM|new_sdram_controller_0|f_select~combout\,
	combout => \DRAM|new_sdram_controller_0|Selector100~0_combout\);

-- Location: LCCOMB_X32_Y4_N8
\DRAM|new_sdram_controller_0|WideOr16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|WideOr16~0_combout\ = (\DRAM|new_sdram_controller_0|m_state.000001000~q\) # ((\DRAM|new_sdram_controller_0|m_state.000010000~q\) # (\DRAM|new_sdram_controller_0|m_state.000000010~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DRAM|new_sdram_controller_0|m_state.000001000~q\,
	datac => \DRAM|new_sdram_controller_0|m_state.000010000~q\,
	datad => \DRAM|new_sdram_controller_0|m_state.000000010~q\,
	combout => \DRAM|new_sdram_controller_0|WideOr16~0_combout\);

-- Location: DDIOOUTCELL_X34_Y0_N18
\DRAM|new_sdram_controller_0|m_bank[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|Selector100~0_combout\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	ena => \DRAM|new_sdram_controller_0|WideOr16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|m_bank\(0));

-- Location: LCCOMB_X36_Y4_N22
\DRAM|new_sdram_controller_0|Selector99~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector99~0_combout\ = (\DRAM|new_sdram_controller_0|m_state.000000010~q\ & (((\DRAM|new_sdram_controller_0|active_addr\(24))))) # (!\DRAM|new_sdram_controller_0|m_state.000000010~q\ & 
-- ((\DRAM|new_sdram_controller_0|f_select~combout\ & (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[42]~2_combout\)) # (!\DRAM|new_sdram_controller_0|f_select~combout\ & 
-- ((\DRAM|new_sdram_controller_0|active_addr\(24))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[42]~2_combout\,
	datab => \DRAM|new_sdram_controller_0|m_state.000000010~q\,
	datac => \DRAM|new_sdram_controller_0|active_addr\(24),
	datad => \DRAM|new_sdram_controller_0|f_select~combout\,
	combout => \DRAM|new_sdram_controller_0|Selector99~0_combout\);

-- Location: DDIOOUTCELL_X34_Y0_N4
\DRAM|new_sdram_controller_0|m_bank[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|Selector99~0_combout\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	ena => \DRAM|new_sdram_controller_0|WideOr16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|m_bank\(1));

-- Location: DDIOOUTCELL_X31_Y0_N18
\DRAM|new_sdram_controller_0|m_cmd[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "high")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|ALT_INV_Selector21~1_combout\,
	asdata => VCC,
	aload => \DRAM|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|m_cmd\(1));

-- Location: LCCOMB_X31_Y4_N26
\DRAM|new_sdram_controller_0|Selector19~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector19~2_combout\ = (\DRAM|new_sdram_controller_0|m_next.010000000~q\ & (\DRAM|new_sdram_controller_0|m_state.001000000~q\ & ((!\DRAM|new_sdram_controller_0|refresh_request~q\)))) # 
-- (!\DRAM|new_sdram_controller_0|m_next.010000000~q\ & ((\DRAM|new_sdram_controller_0|m_state.000000100~q\) # ((\DRAM|new_sdram_controller_0|m_state.001000000~q\ & !\DRAM|new_sdram_controller_0|refresh_request~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_next.010000000~q\,
	datab => \DRAM|new_sdram_controller_0|m_state.001000000~q\,
	datac => \DRAM|new_sdram_controller_0|m_state.000000100~q\,
	datad => \DRAM|new_sdram_controller_0|refresh_request~q\,
	combout => \DRAM|new_sdram_controller_0|Selector19~2_combout\);

-- Location: LCCOMB_X32_Y5_N30
\DRAM|new_sdram_controller_0|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector0~0_combout\ = (\DRAM|new_sdram_controller_0|i_state.000~q\ & ((\DRAM|new_sdram_controller_0|i_cmd\(3)) # (!\DRAM|new_sdram_controller_0|i_state.101~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|i_state.101~q\,
	datac => \DRAM|new_sdram_controller_0|i_cmd\(3),
	datad => \DRAM|new_sdram_controller_0|i_state.000~q\,
	combout => \DRAM|new_sdram_controller_0|Selector0~0_combout\);

-- Location: FF_X32_Y5_N31
\DRAM|new_sdram_controller_0|i_cmd[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|Selector0~0_combout\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|i_cmd\(3));

-- Location: LCCOMB_X31_Y4_N8
\DRAM|new_sdram_controller_0|Selector19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector19~0_combout\ = (!\DRAM|new_sdram_controller_0|m_state.000000001~q\ & ((\DRAM|new_sdram_controller_0|init_done~q\ & (!\DRAM|new_sdram_controller_0|refresh_request~q\)) # (!\DRAM|new_sdram_controller_0|init_done~q\ & 
-- ((!\DRAM|new_sdram_controller_0|i_cmd\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|refresh_request~q\,
	datab => \DRAM|new_sdram_controller_0|m_state.000000001~q\,
	datac => \DRAM|new_sdram_controller_0|init_done~q\,
	datad => \DRAM|new_sdram_controller_0|i_cmd\(3),
	combout => \DRAM|new_sdram_controller_0|Selector19~0_combout\);

-- Location: LCCOMB_X31_Y4_N18
\DRAM|new_sdram_controller_0|Selector19~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector19~1_combout\ = (!\DRAM|new_sdram_controller_0|m_state.010000000~q\ & (!\DRAM|new_sdram_controller_0|m_state.001000000~q\ & (\DRAM|new_sdram_controller_0|m_state.000000001~q\ & 
-- !\DRAM|new_sdram_controller_0|m_state.000000100~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_state.010000000~q\,
	datab => \DRAM|new_sdram_controller_0|m_state.001000000~q\,
	datac => \DRAM|new_sdram_controller_0|m_state.000000001~q\,
	datad => \DRAM|new_sdram_controller_0|m_state.000000100~q\,
	combout => \DRAM|new_sdram_controller_0|Selector19~1_combout\);

-- Location: LCCOMB_X31_Y4_N4
\DRAM|new_sdram_controller_0|Selector19~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector19~3_combout\ = (!\DRAM|new_sdram_controller_0|Selector19~0_combout\ & (((!\DRAM|new_sdram_controller_0|Selector19~2_combout\ & !\DRAM|new_sdram_controller_0|Selector19~1_combout\)) # 
-- (!\DRAM|new_sdram_controller_0|active_cs_n~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|Selector19~2_combout\,
	datab => \DRAM|new_sdram_controller_0|active_cs_n~q\,
	datac => \DRAM|new_sdram_controller_0|Selector19~0_combout\,
	datad => \DRAM|new_sdram_controller_0|Selector19~1_combout\,
	combout => \DRAM|new_sdram_controller_0|Selector19~3_combout\);

-- Location: DDIOOUTCELL_X22_Y0_N18
\DRAM|new_sdram_controller_0|m_cmd[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "high")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|ALT_INV_Selector19~3_combout\,
	asdata => VCC,
	aload => \DRAM|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|m_cmd\(3));

-- Location: DDIOOUTCELL_X26_Y0_N11
\DRAM|new_sdram_controller_0|m_cmd[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "high")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|ALT_INV_Selector20~0_combout\,
	asdata => VCC,
	aload => \DRAM|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|m_cmd\(2));

-- Location: DDIOOUTCELL_X34_Y0_N11
\DRAM|new_sdram_controller_0|m_cmd[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "high")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|ALT_INV_Selector22~1_combout\,
	asdata => VCC,
	aload => \DRAM|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|m_cmd\(0));

-- Location: IOIBUF_X78_Y20_N1
\RW_switch~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RW_switch,
	o => \RW_switch~input_o\);

-- Location: IOIBUF_X22_Y0_N1
\addrUp~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addrUp,
	o => \addrUp~input_o\);

-- Location: IOIBUF_X78_Y37_N8
\addDw~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addDw,
	o => \addDw~input_o\);

-- Location: IOIBUF_X31_Y0_N22
\DRAM_DQ[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DRAM_DQ(0),
	o => \DRAM_DQ[0]~input_o\);

-- Location: IOIBUF_X26_Y0_N15
\DRAM_DQ[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DRAM_DQ(1),
	o => \DRAM_DQ[1]~input_o\);

-- Location: IOIBUF_X34_Y0_N29
\DRAM_DQ[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DRAM_DQ(2),
	o => \DRAM_DQ[2]~input_o\);

-- Location: IOIBUF_X34_Y0_N22
\DRAM_DQ[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DRAM_DQ(3),
	o => \DRAM_DQ[3]~input_o\);

-- Location: IOIBUF_X29_Y0_N1
\DRAM_DQ[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DRAM_DQ(4),
	o => \DRAM_DQ[4]~input_o\);

-- Location: IOIBUF_X26_Y0_N29
\DRAM_DQ[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DRAM_DQ(5),
	o => \DRAM_DQ[5]~input_o\);

-- Location: IOIBUF_X26_Y0_N22
\DRAM_DQ[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DRAM_DQ(6),
	o => \DRAM_DQ[6]~input_o\);

-- Location: IOIBUF_X31_Y0_N29
\DRAM_DQ[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DRAM_DQ(7),
	o => \DRAM_DQ[7]~input_o\);

-- Location: IOIBUF_X36_Y0_N8
\DRAM_DQ[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DRAM_DQ(8),
	o => \DRAM_DQ[8]~input_o\);

-- Location: IOIBUF_X29_Y0_N8
\DRAM_DQ[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DRAM_DQ(9),
	o => \DRAM_DQ[9]~input_o\);

-- Location: IOIBUF_X36_Y0_N1
\DRAM_DQ[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DRAM_DQ(10),
	o => \DRAM_DQ[10]~input_o\);

-- Location: IOIBUF_X31_Y0_N8
\DRAM_DQ[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DRAM_DQ(11),
	o => \DRAM_DQ[11]~input_o\);

-- Location: IOIBUF_X24_Y0_N22
\DRAM_DQ[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DRAM_DQ(12),
	o => \DRAM_DQ[12]~input_o\);

-- Location: IOIBUF_X24_Y0_N29
\DRAM_DQ[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DRAM_DQ(13),
	o => \DRAM_DQ[13]~input_o\);

-- Location: IOIBUF_X24_Y0_N8
\DRAM_DQ[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DRAM_DQ(14),
	o => \DRAM_DQ[14]~input_o\);

-- Location: IOIBUF_X24_Y0_N15
\DRAM_DQ[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DRAM_DQ(15),
	o => \DRAM_DQ[15]~input_o\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~GND~combout\,
	xe_ye => \~GND~combout\,
	se => \~GND~combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~GND~combout\,
	usr_pwd => VCC,
	tsen => \~GND~combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);
END structure;


