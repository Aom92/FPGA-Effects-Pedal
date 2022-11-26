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

-- DATE "11/26/2022 17:49:53"

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
	led_out : OUT std_logic_vector(15 DOWNTO 0);
	display0 : OUT std_logic_vector(7 DOWNTO 0);
	display1 : OUT std_logic_vector(7 DOWNTO 0);
	display2 : OUT std_logic_vector(7 DOWNTO 0);
	display3 : OUT std_logic_vector(7 DOWNTO 0);
	DRAM_CLK : OUT std_logic;
	DRAM_ADDR : OUT std_logic_vector(12 DOWNTO 0);
	DRAM_BA : OUT std_logic_vector(1 DOWNTO 0);
	DRAM_CAS_N : OUT std_logic;
	DRAM_CKE : OUT std_logic;
	DRAM_CS_N : OUT std_logic;
	DRAM_DQ : INOUT std_logic_vector(15 DOWNTO 0);
	DRAM_DQM : OUT std_logic_vector(1 DOWNTO 0);
	DRAM_RAS_N : OUT std_logic;
	DRAM_WE_N : OUT std_logic
	);
END AudioBufferTest;

-- Design Ports Information
-- RW_switch	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addrUp	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addDw	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[0]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[1]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[2]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[3]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[4]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[5]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[6]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[7]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[8]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[9]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[10]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[11]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[12]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[13]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[14]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[15]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display0[0]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display0[1]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display0[2]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display0[3]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display0[4]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display0[5]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display0[6]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display0[7]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display1[0]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display1[1]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display1[2]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display1[3]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display1[4]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display1[5]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display1[6]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display1[7]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display2[0]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display2[1]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display2[2]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display2[3]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display2[4]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display2[5]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display2[6]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display2[7]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display3[0]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display3[1]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display3[2]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display3[3]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display3[4]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display3[5]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display3[6]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display3[7]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_CLK	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_ADDR[0]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_ADDR[1]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_ADDR[2]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_ADDR[3]	=>  Location: PIN_U18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_ADDR[4]	=>  Location: PIN_U19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_ADDR[5]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_ADDR[6]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_ADDR[7]	=>  Location: PIN_R18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_ADDR[8]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_ADDR[9]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_ADDR[10]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_ADDR[11]	=>  Location: PIN_P20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_ADDR[12]	=>  Location: PIN_R20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_BA[0]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_BA[1]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_CAS_N	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_CKE	=>  Location: PIN_N22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_CS_N	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQM[0]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQM[1]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_RAS_N	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_WE_N	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[0]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[1]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[2]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[3]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[4]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[5]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[6]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[7]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[8]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[9]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[10]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[11]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[12]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[13]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[14]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[15]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADCCLK	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DE10CLK	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DE10Reset	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \ADCCLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DE10CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[1]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RW_switch~input_o\ : std_logic;
SIGNAL \addrUp~input_o\ : std_logic;
SIGNAL \addDw~input_o\ : std_logic;
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
SIGNAL \ADCCLK~input_o\ : std_logic;
SIGNAL \ADCCLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \u1|altpll_0|sd1|wire_pll7_fbout\ : std_logic;
SIGNAL \u1|altpll_0|sd1|wire_pll7_locked\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.IDLE~0_combout\ : std_logic;
SIGNAL \u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain[1]~feeder_combout\ : std_logic;
SIGNAL \DE10Reset~input_o\ : std_logic;
SIGNAL \u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain[0]~feeder_combout\ : std_logic;
SIGNAL \u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.IDLE~q\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|int_timer[0]~8_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|eoc_synch_dly~q\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|load_dout~1_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.CONV_DLY1~q\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~feeder_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PUTRESP_DLY1~q\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PUTRESP_DLY2~feeder_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PUTRESP_DLY2~q\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PUTRESP_DLY3~feeder_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PUTRESP_DLY3~q\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRUP_SOC~q\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|Selector7~0_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.GETCMD~q\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|Selector9~0_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.CONV~q\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|arc_to_conv~0_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|Selector1~0_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN~q\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|int_timer[3]~24_combout\ : std_logic;
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
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|Selector15~3_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|adc_inst|decoder|WideOr2~0_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|chsel[1]~_wirecell_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|clkout_adccore\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|u_clk_dft_synchronizer|din_s1~feeder_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|u_clk_dft_synchronizer|din_s1~q\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|u_clk_dft_synchronizer|dreg[0]~feeder_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|clk_dft_synch_dly~feeder_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|clk_dft_synch_dly~q\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|Selector3~0_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|Selector3~1_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN_DONE~q\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRUP_CH~q\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|Selector4~0_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|WideOr12~1_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|WideOr12~combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|chsel[0]~2_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|adc_inst|decoder|WideOr4~0_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|eoc\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|u_eoc_synchronizer|din_s1~feeder_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|u_eoc_synchronizer|din_s1~q\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|u_eoc_synchronizer|dreg[0]~feeder_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|Selector5~0_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|Selector5~1_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|Selector17~0_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|soc~q\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|pend~0_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|pend~q\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|load_dout~0_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~0_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~1_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~2_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[3]~feeder_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~3_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~4_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~5_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~6_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[7]~feeder_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~7_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~8_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[9]~feeder_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~9_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[10]~feeder_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~10_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~11_combout\ : std_logic;
SIGNAL \DE10CLK~input_o\ : std_logic;
SIGNAL \DE10CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|pll1~FBOUT\ : std_logic;
SIGNAL \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \DRAM_DQ[3]~input_o\ : std_logic;
SIGNAL \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain[1]~feeder_combout\ : std_logic;
SIGNAL \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|locked\ : std_logic;
SIGNAL \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain[0]~feeder_combout\ : std_logic;
SIGNAL \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\ : std_logic;
SIGNAL \sal_disp0[3]~feeder_combout\ : std_logic;
SIGNAL \DRAM_DQ[2]~input_o\ : std_logic;
SIGNAL \sal_disp0[2]~feeder_combout\ : std_logic;
SIGNAL \DRAM_DQ[0]~input_o\ : std_logic;
SIGNAL \sal_disp0[0]~feeder_combout\ : std_logic;
SIGNAL \DRAM_DQ[1]~input_o\ : std_logic;
SIGNAL \sal_disp0[1]~feeder_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \DRAM_DQ[7]~input_o\ : std_logic;
SIGNAL \sal_disp1[3]~feeder_combout\ : std_logic;
SIGNAL \DRAM_DQ[4]~input_o\ : std_logic;
SIGNAL \sal_disp1[0]~feeder_combout\ : std_logic;
SIGNAL \DRAM_DQ[5]~input_o\ : std_logic;
SIGNAL \sal_disp1[1]~feeder_combout\ : std_logic;
SIGNAL \DRAM_DQ[6]~input_o\ : std_logic;
SIGNAL \sal_disp1[2]~feeder_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \DRAM_DQ[11]~input_o\ : std_logic;
SIGNAL \sal_disp2[3]~feeder_combout\ : std_logic;
SIGNAL \DRAM_DQ[10]~input_o\ : std_logic;
SIGNAL \sal_disp2[2]~feeder_combout\ : std_logic;
SIGNAL \DRAM_DQ[9]~input_o\ : std_logic;
SIGNAL \sal_disp2[1]~feeder_combout\ : std_logic;
SIGNAL \DRAM_DQ[8]~input_o\ : std_logic;
SIGNAL \sal_disp2[0]~feeder_combout\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[1]~clkctrl_outclk\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|i_next.000~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|i_next.000~q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector18~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector6~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector5~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Add1~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector4~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector18~1_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|i_next.111~q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector12~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|i_state.111~q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector15~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector15~1_combout\ : std_logic;
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
SIGNAL \DRAM|new_sdram_controller_0|Equal0~3_combout\ : std_logic;
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
SIGNAL \DRAM|new_sdram_controller_0|Selector8~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|i_state.001~q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector15~2_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector13~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector13~1_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector13~2_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector9~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector7~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|i_state.000~q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector14~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector14~1_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector16~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector16~1_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|i_next.010~q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector9~1_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|i_state.010~q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector10~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector10~1_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|i_state.011~q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|WideOr6~combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector17~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|i_next.101~q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|i_state.101~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|i_state.101~q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|init_done~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|init_done~q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector25~4_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|active_cs_n~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|active_cs_n~1_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|active_cs_n~q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector34~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|pending~combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector32~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector32~1_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|m_state.100000000~q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector29~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector27~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector36~1_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|m_count[0]~3_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|m_count[0]~4_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|m_count[0]~5_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector38~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|m_count[1]~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|m_count[1]~1_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|m_count[0]~7_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|m_count[1]~2_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|m_count[1]~6_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|LessThan1~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector29~1_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|m_state.000100000~q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector30~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|m_state.001000000~q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|WideOr8~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector26~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector26~1_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|m_state.000000100~q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector36~2_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector36~3_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector36~4_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|m_next.010000000~q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector31~1_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|m_state.010000000~q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|m_next~17_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector33~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector34~1_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector34~2_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|m_next.000001000~q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector27~1_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|m_state.000001000~q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector36~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector37~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector37~1_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector37~2_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector37~3_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector31~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector24~1_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector24~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector33~1_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector33~2_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector33~3_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector33~4_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|m_next.000000001~q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector24~2_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|m_state.000000001~q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector23~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|ack_refresh_request~q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|refresh_request~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|refresh_request~q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector41~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|f_pop~q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries[1]~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries[0]~1_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|Equal1~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector25~5_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|m_state.000000010~q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector98~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|m_addr[1]~2_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|m_addr[1]~3_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|m_addr[5]~_Duplicate_1_q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector93~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector93~1_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector88~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|WideOr6~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector2~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector21~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector21~1_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector21~2_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector19~2_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector19~1_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector0~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector19~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector19~3_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector1~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector20~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector3~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector22~0_combout\ : std_logic;
SIGNAL \u1|altpll_0|sd1|wire_pll7_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \DRAM|new_sdram_controller_0|m_addr\ : std_logic_vector(12 DOWNTO 0);
SIGNAL sal_disp0 : std_logic_vector(3 DOWNTO 0);
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|int_timer\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \DRAM|new_sdram_controller_0|m_cmd\ : std_logic_vector(3 DOWNTO 0);
SIGNAL sal_disp1 : std_logic_vector(3 DOWNTO 0);
SIGNAL \DRAM|new_sdram_controller_0|m_count\ : std_logic_vector(2 DOWNTO 0);
SIGNAL sal_disp2 : std_logic_vector(3 DOWNTO 0);
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|u_eoc_synchronizer|dreg\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \DRAM|new_sdram_controller_0|za_data\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \DRAM|new_sdram_controller_0|i_addr\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \DRAM|new_sdram_controller_0|i_cmd\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \DRAM|new_sdram_controller_0|refresh_counter\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|chsel\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \DRAM|new_sdram_controller_0|i_count\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|u_clk_dft_synchronizer|dreg\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|new_sdram_controller_0|i_refs\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \DRAM|new_sdram_controller_0|ALT_INV_Selector22~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|ALT_INV_Selector20~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|ALT_INV_Selector19~3_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|ALT_INV_Selector21~2_combout\ : std_logic;
SIGNAL \DRAM|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\ : std_logic;
SIGNAL \ALT_INV_Mux14~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~0_combout\ : std_logic;

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

\ADCCLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \ADCCLK~input_o\);

\DE10CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \DE10CLK~input_o\);

\DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk\(0));

\DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[1]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk\(1));
\DRAM|new_sdram_controller_0|ALT_INV_Selector22~0_combout\ <= NOT \DRAM|new_sdram_controller_0|Selector22~0_combout\;
\DRAM|new_sdram_controller_0|ALT_INV_Selector20~0_combout\ <= NOT \DRAM|new_sdram_controller_0|Selector20~0_combout\;
\DRAM|new_sdram_controller_0|ALT_INV_Selector19~3_combout\ <= NOT \DRAM|new_sdram_controller_0|Selector19~3_combout\;
\DRAM|new_sdram_controller_0|ALT_INV_Selector21~2_combout\ <= NOT \DRAM|new_sdram_controller_0|Selector21~2_combout\;
\DRAM|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\ <= NOT \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\;
\ALT_INV_Mux14~0_combout\ <= NOT \Mux14~0_combout\;
\ALT_INV_Mux7~0_combout\ <= NOT \Mux7~0_combout\;
\ALT_INV_Mux0~0_combout\ <= NOT \Mux0~0_combout\;

-- Location: IOOBUF_X46_Y54_N2
\led_out[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(0),
	devoe => ww_devoe,
	o => ww_led_out(0));

-- Location: IOOBUF_X46_Y54_N23
\led_out[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(1),
	devoe => ww_devoe,
	o => ww_led_out(1));

-- Location: IOOBUF_X51_Y54_N16
\led_out[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(2),
	devoe => ww_devoe,
	o => ww_led_out(2));

-- Location: IOOBUF_X46_Y54_N9
\led_out[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(3),
	devoe => ww_devoe,
	o => ww_led_out(3));

-- Location: IOOBUF_X56_Y54_N30
\led_out[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(4),
	devoe => ww_devoe,
	o => ww_led_out(4));

-- Location: IOOBUF_X58_Y54_N23
\led_out[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(5),
	devoe => ww_devoe,
	o => ww_led_out(5));

-- Location: IOOBUF_X66_Y54_N23
\led_out[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(6),
	devoe => ww_devoe,
	o => ww_led_out(6));

-- Location: IOOBUF_X56_Y54_N9
\led_out[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(7),
	devoe => ww_devoe,
	o => ww_led_out(7));

-- Location: IOOBUF_X51_Y54_N9
\led_out[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(8),
	devoe => ww_devoe,
	o => ww_led_out(8));

-- Location: IOOBUF_X49_Y54_N9
\led_out[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(9),
	devoe => ww_devoe,
	o => ww_led_out(9));

-- Location: IOOBUF_X46_Y54_N30
\led_out[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(10),
	devoe => ww_devoe,
	o => ww_led_out(10));

-- Location: IOOBUF_X46_Y54_N16
\led_out[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(11),
	devoe => ww_devoe,
	o => ww_led_out(11));

-- Location: IOOBUF_X54_Y54_N9
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

-- Location: IOOBUF_X0_Y30_N2
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

-- Location: IOOBUF_X49_Y54_N30
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

-- Location: IOOBUF_X26_Y0_N30
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

-- Location: IOOBUF_X66_Y54_N16
\display0[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_display0(0));

-- Location: IOOBUF_X58_Y54_N16
\display0[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_display0(1));

-- Location: IOOBUF_X74_Y54_N9
\display0[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_display0(2));

-- Location: IOOBUF_X60_Y54_N2
\display0[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_display0(3));

-- Location: IOOBUF_X62_Y54_N30
\display0[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_display0(4));

-- Location: IOOBUF_X74_Y54_N2
\display0[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_display0(5));

-- Location: IOOBUF_X74_Y54_N16
\display0[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_display0(6));

-- Location: IOOBUF_X74_Y54_N23
\display0[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_display0(7));

-- Location: IOOBUF_X60_Y54_N16
\display1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_display1(0));

-- Location: IOOBUF_X69_Y54_N23
\display1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux13~0_combout\,
	devoe => ww_devoe,
	o => ww_display1(1));

-- Location: IOOBUF_X78_Y49_N9
\display1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux12~0_combout\,
	devoe => ww_devoe,
	o => ww_display1(2));

-- Location: IOOBUF_X78_Y49_N2
\display1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11~0_combout\,
	devoe => ww_devoe,
	o => ww_display1(3));

-- Location: IOOBUF_X60_Y54_N9
\display1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~0_combout\,
	devoe => ww_devoe,
	o => ww_display1(4));

-- Location: IOOBUF_X64_Y54_N2
\display1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~0_combout\,
	devoe => ww_devoe,
	o => ww_display1(5));

-- Location: IOOBUF_X66_Y54_N30
\display1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~0_combout\,
	devoe => ww_devoe,
	o => ww_display1(6));

-- Location: IOOBUF_X69_Y54_N30
\display1[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux7~0_combout\,
	devoe => ww_devoe,
	o => ww_display1(7));

-- Location: IOOBUF_X66_Y54_N9
\display2[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_display2(0));

-- Location: IOOBUF_X78_Y44_N9
\display2[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux20~0_combout\,
	devoe => ww_devoe,
	o => ww_display2(1));

-- Location: IOOBUF_X66_Y54_N2
\display2[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux19~0_combout\,
	devoe => ww_devoe,
	o => ww_display2(2));

-- Location: IOOBUF_X69_Y54_N16
\display2[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux18~0_combout\,
	devoe => ww_devoe,
	o => ww_display2(3));

-- Location: IOOBUF_X78_Y44_N2
\display2[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux17~0_combout\,
	devoe => ww_devoe,
	o => ww_display2(4));

-- Location: IOOBUF_X78_Y43_N2
\display2[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux16~0_combout\,
	devoe => ww_devoe,
	o => ww_display2(5));

-- Location: IOOBUF_X78_Y35_N2
\display2[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux15~0_combout\,
	devoe => ww_devoe,
	o => ww_display2(6));

-- Location: IOOBUF_X78_Y43_N9
\display2[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux14~0_combout\,
	devoe => ww_devoe,
	o => ww_display2(7));

-- Location: IOOBUF_X78_Y35_N9
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

-- Location: IOOBUF_X78_Y35_N23
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

-- Location: IOOBUF_X78_Y33_N9
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

-- Location: IOOBUF_X78_Y33_N2
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

-- Location: IOOBUF_X69_Y54_N9
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

-- Location: IOOBUF_X78_Y41_N9
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

-- Location: IOOBUF_X78_Y41_N2
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

-- Location: IOOBUF_X78_Y43_N16
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

-- Location: IOOBUF_X78_Y36_N24
\DRAM_CLK~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[1]~clkctrl_outclk\,
	devoe => ww_devoe,
	o => ww_DRAM_CLK);

-- Location: IOOBUF_X78_Y3_N16
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

-- Location: IOOBUF_X78_Y16_N24
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

-- Location: IOOBUF_X78_Y15_N23
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

-- Location: IOOBUF_X78_Y3_N23
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

-- Location: IOOBUF_X78_Y15_N16
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

-- Location: IOOBUF_X78_Y20_N16
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

-- Location: IOOBUF_X78_Y20_N24
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

-- Location: IOOBUF_X78_Y24_N24
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

-- Location: IOOBUF_X78_Y24_N16
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

-- Location: IOOBUF_X78_Y24_N9
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

-- Location: IOOBUF_X78_Y20_N9
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

-- Location: IOOBUF_X78_Y24_N2
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

-- Location: IOOBUF_X78_Y20_N2
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

-- Location: IOOBUF_X78_Y18_N9
\DRAM_BA[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_DRAM_BA(0));

-- Location: IOOBUF_X78_Y18_N2
\DRAM_BA[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_DRAM_BA(1));

-- Location: IOOBUF_X78_Y21_N23
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

-- Location: IOOBUF_X78_Y23_N2
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

-- Location: IOOBUF_X78_Y17_N16
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

-- Location: IOOBUF_X78_Y17_N2
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

-- Location: IOOBUF_X78_Y30_N2
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

-- Location: IOOBUF_X78_Y21_N16
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

-- Location: IOOBUF_X78_Y17_N23
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

-- Location: IOOBUF_X78_Y16_N2
\DRAM_DQ[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => DRAM_DQ(0));

-- Location: IOOBUF_X78_Y16_N9
\DRAM_DQ[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => DRAM_DQ(1));

-- Location: IOOBUF_X78_Y3_N2
\DRAM_DQ[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => DRAM_DQ(2));

-- Location: IOOBUF_X78_Y3_N9
\DRAM_DQ[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => DRAM_DQ(3));

-- Location: IOOBUF_X78_Y15_N9
\DRAM_DQ[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => DRAM_DQ(4));

-- Location: IOOBUF_X78_Y15_N2
\DRAM_DQ[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => DRAM_DQ(5));

-- Location: IOOBUF_X78_Y16_N16
\DRAM_DQ[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => DRAM_DQ(6));

-- Location: IOOBUF_X78_Y17_N9
\DRAM_DQ[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => DRAM_DQ(7));

-- Location: IOOBUF_X78_Y23_N9
\DRAM_DQ[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => DRAM_DQ(8));

-- Location: IOOBUF_X78_Y30_N9
\DRAM_DQ[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => DRAM_DQ(9));

-- Location: IOOBUF_X78_Y29_N2
\DRAM_DQ[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => DRAM_DQ(10));

-- Location: IOOBUF_X78_Y29_N9
\DRAM_DQ[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => DRAM_DQ(11));

-- Location: IOOBUF_X78_Y31_N9
\DRAM_DQ[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => DRAM_DQ(12));

-- Location: IOOBUF_X78_Y31_N23
\DRAM_DQ[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => DRAM_DQ(13));

-- Location: IOOBUF_X78_Y31_N16
\DRAM_DQ[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => DRAM_DQ(14));

-- Location: IOOBUF_X78_Y31_N2
\DRAM_DQ[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => DRAM_DQ(15));

-- Location: IOIBUF_X0_Y23_N22
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

-- Location: CLKCTRL_G4
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

-- Location: PLL_1
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

-- Location: LCCOMB_X44_Y50_N6
\u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.IDLE~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.IDLE~0_combout\ = (\u1|altpll_0|sd1|wire_pll7_locked\) # (\u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|altpll_0|sd1|wire_pll7_locked\,
	datac => \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.IDLE~q\,
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.IDLE~0_combout\);

-- Location: LCCOMB_X44_Y51_N28
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

-- Location: IOIBUF_X51_Y54_N29
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

-- Location: FF_X44_Y51_N29
\u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	d => \u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain[1]~feeder_combout\,
	clrn => \DE10Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain\(1));

-- Location: LCCOMB_X44_Y51_N26
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

-- Location: FF_X44_Y51_N27
\u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	d => \u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain[0]~feeder_combout\,
	clrn => \DE10Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain\(0));

-- Location: FF_X44_Y51_N9
\u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	asdata => \u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain\(0),
	clrn => \DE10Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\);

-- Location: FF_X44_Y50_N7
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

-- Location: LCCOMB_X44_Y50_N12
\u1|modular_adc_0|control_internal|u_control_fsm|int_timer[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|int_timer[0]~8_combout\ = \u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(0) $ (VCC)
-- \u1|modular_adc_0|control_internal|u_control_fsm|int_timer[0]~9\ = CARRY(\u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(0),
	datad => VCC,
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|int_timer[0]~8_combout\,
	cout => \u1|modular_adc_0|control_internal|u_control_fsm|int_timer[0]~9\);

-- Location: FF_X45_Y51_N3
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

-- Location: LCCOMB_X45_Y51_N30
\u1|modular_adc_0|control_internal|u_control_fsm|load_dout~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|load_dout~1_combout\ = (\u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.CONV~q\ & (\u1|modular_adc_0|control_internal|u_control_fsm|eoc_synch_dly~q\ & 
-- !\u1|modular_adc_0|control_internal|u_control_fsm|u_eoc_synchronizer|dreg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.CONV~q\,
	datab => \u1|modular_adc_0|control_internal|u_control_fsm|eoc_synch_dly~q\,
	datad => \u1|modular_adc_0|control_internal|u_control_fsm|u_eoc_synchronizer|dreg\(0),
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|load_dout~1_combout\);

-- Location: FF_X45_Y51_N31
\u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.CONV_DLY1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	d => \u1|modular_adc_0|control_internal|u_control_fsm|load_dout~1_combout\,
	clrn => \u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.CONV_DLY1~q\);

-- Location: LCCOMB_X46_Y50_N8
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

-- Location: FF_X46_Y50_N9
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

-- Location: FF_X46_Y50_N1
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

-- Location: LCCOMB_X46_Y50_N10
\u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PUTRESP_DLY2~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PUTRESP_DLY2~feeder_combout\ = \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PUTRESP_DLY1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PUTRESP_DLY1~q\,
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PUTRESP_DLY2~feeder_combout\);

-- Location: FF_X46_Y50_N11
\u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PUTRESP_DLY2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	d => \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PUTRESP_DLY2~feeder_combout\,
	clrn => \u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PUTRESP_DLY2~q\);

-- Location: LCCOMB_X46_Y50_N4
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

-- Location: FF_X46_Y50_N5
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

-- Location: FF_X45_Y51_N11
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

-- Location: LCCOMB_X45_Y51_N24
\u1|modular_adc_0|control_internal|u_control_fsm|Selector7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|Selector7~0_combout\ = (\u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRUP_SOC~q\ & (((\u1|modular_adc_0|control_internal|u_control_fsm|eoc_synch_dly~q\ & 
-- !\u1|modular_adc_0|control_internal|u_control_fsm|u_eoc_synchronizer|dreg\(0))))) # (!\u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRUP_SOC~q\ & (\u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PUTRESP_DLY3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PUTRESP_DLY3~q\,
	datab => \u1|modular_adc_0|control_internal|u_control_fsm|eoc_synch_dly~q\,
	datac => \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRUP_SOC~q\,
	datad => \u1|modular_adc_0|control_internal|u_control_fsm|u_eoc_synchronizer|dreg\(0),
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|Selector7~0_combout\);

-- Location: FF_X45_Y51_N25
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

-- Location: LCCOMB_X45_Y51_N22
\u1|modular_adc_0|control_internal|u_control_fsm|Selector9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|Selector9~0_combout\ = (\u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.GETCMD~q\) # ((\u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.CONV~q\ & 
-- ((\u1|modular_adc_0|control_internal|u_control_fsm|u_eoc_synchronizer|dreg\(0)) # (!\u1|modular_adc_0|control_internal|u_control_fsm|eoc_synch_dly~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.GETCMD~q\,
	datab => \u1|modular_adc_0|control_internal|u_control_fsm|eoc_synch_dly~q\,
	datac => \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.CONV~q\,
	datad => \u1|modular_adc_0|control_internal|u_control_fsm|u_eoc_synchronizer|dreg\(0),
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|Selector9~0_combout\);

-- Location: FF_X45_Y51_N23
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

-- Location: LCCOMB_X44_Y50_N28
\u1|modular_adc_0|control_internal|u_control_fsm|arc_to_conv~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|arc_to_conv~0_combout\ = (!\u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.CONV~q\ & \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.GETCMD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.CONV~q\,
	datac => \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.GETCMD~q\,
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|arc_to_conv~0_combout\);

-- Location: LCCOMB_X44_Y50_N2
\u1|modular_adc_0|control_internal|u_control_fsm|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|Selector1~0_combout\ = (\u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.IDLE~q\ & (((\u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN~q\ & 
-- !\u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(6))))) # (!\u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.IDLE~q\ & ((\u1|altpll_0|sd1|wire_pll7_locked\) # ((\u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN~q\ & 
-- !\u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.IDLE~q\,
	datab => \u1|altpll_0|sd1|wire_pll7_locked\,
	datac => \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN~q\,
	datad => \u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(6),
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|Selector1~0_combout\);

-- Location: FF_X44_Y50_N3
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

-- Location: LCCOMB_X44_Y50_N30
\u1|modular_adc_0|control_internal|u_control_fsm|int_timer[3]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|int_timer[3]~24_combout\ = (\u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN_TSEN~q\) # ((\u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN~q\) # 
-- ((!\u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.CONV~q\ & \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.GETCMD~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN_TSEN~q\,
	datab => \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.CONV~q\,
	datac => \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.GETCMD~q\,
	datad => \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN~q\,
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|int_timer[3]~24_combout\);

-- Location: FF_X44_Y50_N13
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
	ena => \u1|modular_adc_0|control_internal|u_control_fsm|int_timer[3]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(0));

-- Location: LCCOMB_X44_Y50_N14
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

-- Location: FF_X44_Y50_N15
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
	ena => \u1|modular_adc_0|control_internal|u_control_fsm|int_timer[3]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(1));

-- Location: LCCOMB_X44_Y50_N16
\u1|modular_adc_0|control_internal|u_control_fsm|int_timer[2]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|int_timer[2]~12_combout\ = (\u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(2) & (\u1|modular_adc_0|control_internal|u_control_fsm|int_timer[1]~11\ $ (GND))) # 
-- (!\u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(2) & (!\u1|modular_adc_0|control_internal|u_control_fsm|int_timer[1]~11\ & VCC))
-- \u1|modular_adc_0|control_internal|u_control_fsm|int_timer[2]~13\ = CARRY((\u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(2) & !\u1|modular_adc_0|control_internal|u_control_fsm|int_timer[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(2),
	datad => VCC,
	cin => \u1|modular_adc_0|control_internal|u_control_fsm|int_timer[1]~11\,
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|int_timer[2]~12_combout\,
	cout => \u1|modular_adc_0|control_internal|u_control_fsm|int_timer[2]~13\);

-- Location: FF_X44_Y50_N17
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
	ena => \u1|modular_adc_0|control_internal|u_control_fsm|int_timer[3]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(2));

-- Location: LCCOMB_X44_Y50_N18
\u1|modular_adc_0|control_internal|u_control_fsm|int_timer[3]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|int_timer[3]~14_combout\ = (\u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(3) & (!\u1|modular_adc_0|control_internal|u_control_fsm|int_timer[2]~13\)) # 
-- (!\u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(3) & ((\u1|modular_adc_0|control_internal|u_control_fsm|int_timer[2]~13\) # (GND)))
-- \u1|modular_adc_0|control_internal|u_control_fsm|int_timer[3]~15\ = CARRY((!\u1|modular_adc_0|control_internal|u_control_fsm|int_timer[2]~13\) # (!\u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(3),
	datad => VCC,
	cin => \u1|modular_adc_0|control_internal|u_control_fsm|int_timer[2]~13\,
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|int_timer[3]~14_combout\,
	cout => \u1|modular_adc_0|control_internal|u_control_fsm|int_timer[3]~15\);

-- Location: FF_X44_Y50_N19
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
	ena => \u1|modular_adc_0|control_internal|u_control_fsm|int_timer[3]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(3));

-- Location: LCCOMB_X44_Y50_N20
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

-- Location: FF_X44_Y50_N21
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
	ena => \u1|modular_adc_0|control_internal|u_control_fsm|int_timer[3]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(4));

-- Location: LCCOMB_X44_Y50_N22
\u1|modular_adc_0|control_internal|u_control_fsm|int_timer[5]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|int_timer[5]~18_combout\ = (\u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(5) & (!\u1|modular_adc_0|control_internal|u_control_fsm|int_timer[4]~17\)) # 
-- (!\u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(5) & ((\u1|modular_adc_0|control_internal|u_control_fsm|int_timer[4]~17\) # (GND)))
-- \u1|modular_adc_0|control_internal|u_control_fsm|int_timer[5]~19\ = CARRY((!\u1|modular_adc_0|control_internal|u_control_fsm|int_timer[4]~17\) # (!\u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(5),
	datad => VCC,
	cin => \u1|modular_adc_0|control_internal|u_control_fsm|int_timer[4]~17\,
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|int_timer[5]~18_combout\,
	cout => \u1|modular_adc_0|control_internal|u_control_fsm|int_timer[5]~19\);

-- Location: FF_X44_Y50_N23
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
	ena => \u1|modular_adc_0|control_internal|u_control_fsm|int_timer[3]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(5));

-- Location: LCCOMB_X44_Y50_N24
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

-- Location: FF_X44_Y50_N25
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
	ena => \u1|modular_adc_0|control_internal|u_control_fsm|int_timer[3]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(6));

-- Location: LCCOMB_X44_Y50_N26
\u1|modular_adc_0|control_internal|u_control_fsm|int_timer[7]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|int_timer[7]~22_combout\ = \u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(7) $ (\u1|modular_adc_0|control_internal|u_control_fsm|int_timer[6]~21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(7),
	cin => \u1|modular_adc_0|control_internal|u_control_fsm|int_timer[6]~21\,
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|int_timer[7]~22_combout\);

-- Location: FF_X44_Y50_N27
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
	ena => \u1|modular_adc_0|control_internal|u_control_fsm|int_timer[3]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(7));

-- Location: LCCOMB_X44_Y50_N4
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

-- Location: FF_X44_Y50_N5
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

-- Location: LCCOMB_X44_Y50_N8
\u1|modular_adc_0|control_internal|u_control_fsm|Selector18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|Selector18~0_combout\ = ((\u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN~q\) # ((\u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN_TSEN~q\ & 
-- !\u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(7)))) # (!\u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.IDLE~q\,
	datab => \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN_TSEN~q\,
	datac => \u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(7),
	datad => \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN~q\,
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|Selector18~0_combout\);

-- Location: LCCOMB_X44_Y50_N0
\u1|modular_adc_0|control_internal|u_control_fsm|Selector15~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|Selector15~2_combout\ = (!\u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.CONV~q\ & !\u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.GETCMD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.CONV~q\,
	datac => \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.GETCMD~q\,
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|Selector15~2_combout\);

-- Location: LCCOMB_X46_Y50_N0
\u1|modular_adc_0|control_internal|u_control_fsm|WideOr12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|WideOr12~0_combout\ = (!\u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.CONV_DLY1~q\ & (!\u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\ & 
-- (!\u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PUTRESP_DLY1~q\ & !\u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PUTRESP_DLY2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.CONV_DLY1~q\,
	datab => \u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\,
	datac => \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PUTRESP_DLY1~q\,
	datad => \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PUTRESP_DLY2~q\,
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|WideOr12~0_combout\);

-- Location: LCCOMB_X45_Y51_N0
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

-- Location: LCCOMB_X45_Y51_N12
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

-- Location: FF_X45_Y51_N13
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

-- Location: LCCOMB_X44_Y51_N10
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

-- Location: LCCOMB_X46_Y47_N8
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

-- Location: LCCOMB_X45_Y51_N26
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

-- Location: FF_X45_Y51_N27
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

-- Location: LCCOMB_X45_Y51_N8
\u1|modular_adc_0|control_internal|adc_inst|decoder|WideOr2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|adc_inst|decoder|WideOr2~0_combout\ = (\u1|modular_adc_0|control_internal|u_control_fsm|chsel\(0)) # (!\u1|modular_adc_0|control_internal|u_control_fsm|chsel\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|modular_adc_0|control_internal|u_control_fsm|chsel\(0),
	datad => \u1|modular_adc_0|control_internal|u_control_fsm|chsel\(1),
	combout => \u1|modular_adc_0|control_internal|adc_inst|decoder|WideOr2~0_combout\);

-- Location: LCCOMB_X44_Y51_N16
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

-- Location: LCCOMB_X44_Y51_N6
\u1|modular_adc_0|control_internal|u_control_fsm|u_clk_dft_synchronizer|din_s1~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|u_clk_dft_synchronizer|din_s1~feeder_combout\ = \u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|clkout_adccore\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|clkout_adccore\,
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|u_clk_dft_synchronizer|din_s1~feeder_combout\);

-- Location: FF_X44_Y51_N7
\u1|modular_adc_0|control_internal|u_control_fsm|u_clk_dft_synchronizer|din_s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	d => \u1|modular_adc_0|control_internal|u_control_fsm|u_clk_dft_synchronizer|din_s1~feeder_combout\,
	clrn => \u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|modular_adc_0|control_internal|u_control_fsm|u_clk_dft_synchronizer|din_s1~q\);

-- Location: LCCOMB_X44_Y51_N18
\u1|modular_adc_0|control_internal|u_control_fsm|u_clk_dft_synchronizer|dreg[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|u_clk_dft_synchronizer|dreg[0]~feeder_combout\ = \u1|modular_adc_0|control_internal|u_control_fsm|u_clk_dft_synchronizer|din_s1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u1|modular_adc_0|control_internal|u_control_fsm|u_clk_dft_synchronizer|din_s1~q\,
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|u_clk_dft_synchronizer|dreg[0]~feeder_combout\);

-- Location: FF_X44_Y51_N19
\u1|modular_adc_0|control_internal|u_control_fsm|u_clk_dft_synchronizer|dreg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	d => \u1|modular_adc_0|control_internal|u_control_fsm|u_clk_dft_synchronizer|dreg[0]~feeder_combout\,
	clrn => \u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|modular_adc_0|control_internal|u_control_fsm|u_clk_dft_synchronizer|dreg\(0));

-- Location: LCCOMB_X44_Y51_N22
\u1|modular_adc_0|control_internal|u_control_fsm|clk_dft_synch_dly~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|clk_dft_synch_dly~feeder_combout\ = \u1|modular_adc_0|control_internal|u_control_fsm|u_clk_dft_synchronizer|dreg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u1|modular_adc_0|control_internal|u_control_fsm|u_clk_dft_synchronizer|dreg\(0),
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|clk_dft_synch_dly~feeder_combout\);

-- Location: FF_X44_Y51_N23
\u1|modular_adc_0|control_internal|u_control_fsm|clk_dft_synch_dly\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	d => \u1|modular_adc_0|control_internal|u_control_fsm|clk_dft_synch_dly~feeder_combout\,
	clrn => \u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|modular_adc_0|control_internal|u_control_fsm|clk_dft_synch_dly~q\);

-- Location: LCCOMB_X44_Y50_N10
\u1|modular_adc_0|control_internal|u_control_fsm|Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|Selector3~0_combout\ = (\u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN_TSEN~q\ & \u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN_TSEN~q\,
	datac => \u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(7),
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|Selector3~0_combout\);

-- Location: LCCOMB_X44_Y51_N12
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

-- Location: FF_X44_Y51_N13
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

-- Location: FF_X44_Y51_N25
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

-- Location: LCCOMB_X44_Y51_N24
\u1|modular_adc_0|control_internal|u_control_fsm|Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|Selector4~0_combout\ = (\u1|modular_adc_0|control_internal|u_control_fsm|clk_dft_synch_dly~q\ & (((\u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRUP_CH~q\ & 
-- \u1|modular_adc_0|control_internal|u_control_fsm|u_clk_dft_synchronizer|dreg\(0))))) # (!\u1|modular_adc_0|control_internal|u_control_fsm|clk_dft_synch_dly~q\ & ((\u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRUP_CH~q\) # 
-- ((\u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN_DONE~q\ & \u1|modular_adc_0|control_internal|u_control_fsm|u_clk_dft_synchronizer|dreg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN_DONE~q\,
	datab => \u1|modular_adc_0|control_internal|u_control_fsm|clk_dft_synch_dly~q\,
	datac => \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRUP_CH~q\,
	datad => \u1|modular_adc_0|control_internal|u_control_fsm|u_clk_dft_synchronizer|dreg\(0),
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|Selector4~0_combout\);

-- Location: LCCOMB_X45_Y51_N18
\u1|modular_adc_0|control_internal|u_control_fsm|WideOr12~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|WideOr12~1_combout\ = (!\u1|modular_adc_0|control_internal|u_control_fsm|Selector4~0_combout\ & (\u1|modular_adc_0|control_internal|u_control_fsm|WideOr12~0_combout\ & 
-- !\u1|modular_adc_0|control_internal|u_control_fsm|Selector7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|modular_adc_0|control_internal|u_control_fsm|Selector4~0_combout\,
	datab => \u1|modular_adc_0|control_internal|u_control_fsm|WideOr12~0_combout\,
	datad => \u1|modular_adc_0|control_internal|u_control_fsm|Selector7~0_combout\,
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|WideOr12~1_combout\);

-- Location: LCCOMB_X45_Y51_N20
\u1|modular_adc_0|control_internal|u_control_fsm|WideOr12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|WideOr12~combout\ = (\u1|modular_adc_0|control_internal|u_control_fsm|Selector1~0_combout\) # (((\u1|modular_adc_0|control_internal|u_control_fsm|Selector5~1_combout\) # 
-- (\u1|modular_adc_0|control_internal|u_control_fsm|Selector3~1_combout\)) # (!\u1|modular_adc_0|control_internal|u_control_fsm|WideOr12~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|modular_adc_0|control_internal|u_control_fsm|Selector1~0_combout\,
	datab => \u1|modular_adc_0|control_internal|u_control_fsm|WideOr12~1_combout\,
	datac => \u1|modular_adc_0|control_internal|u_control_fsm|Selector5~1_combout\,
	datad => \u1|modular_adc_0|control_internal|u_control_fsm|Selector3~1_combout\,
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|WideOr12~combout\);

-- Location: LCCOMB_X45_Y51_N16
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

-- Location: FF_X45_Y51_N17
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

-- Location: LCCOMB_X45_Y51_N14
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

-- Location: LCCOMB_X45_Y51_N28
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

-- Location: FF_X45_Y51_N29
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

-- Location: LCCOMB_X45_Y51_N6
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

-- Location: FF_X45_Y51_N7
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

-- Location: LCCOMB_X44_Y51_N8
\u1|modular_adc_0|control_internal|u_control_fsm|Selector5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|Selector5~0_combout\ = (\u1|modular_adc_0|control_internal|u_control_fsm|clk_dft_synch_dly~q\ & (\u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRUP_CH~q\ & 
-- !\u1|modular_adc_0|control_internal|u_control_fsm|u_clk_dft_synchronizer|dreg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|modular_adc_0|control_internal|u_control_fsm|clk_dft_synch_dly~q\,
	datab => \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRUP_CH~q\,
	datad => \u1|modular_adc_0|control_internal|u_control_fsm|u_clk_dft_synchronizer|dreg\(0),
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|Selector5~0_combout\);

-- Location: LCCOMB_X45_Y51_N10
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

-- Location: LCCOMB_X45_Y51_N4
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

-- Location: FF_X45_Y51_N5
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

-- Location: LCCOMB_X46_Y50_N2
\u1|modular_adc_0|control_internal|u_control_fsm|pend~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|pend~0_combout\ = (\u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\) # (\u1|modular_adc_0|control_internal|u_control_fsm|pend~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\,
	datac => \u1|modular_adc_0|control_internal|u_control_fsm|pend~q\,
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|pend~0_combout\);

-- Location: FF_X46_Y50_N3
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

-- Location: LCCOMB_X45_Y51_N2
\u1|modular_adc_0|control_internal|u_control_fsm|load_dout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|load_dout~0_combout\ = (\u1|modular_adc_0|control_internal|u_control_fsm|pend~q\ & (\u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.CONV~q\ & 
-- (\u1|modular_adc_0|control_internal|u_control_fsm|eoc_synch_dly~q\ & !\u1|modular_adc_0|control_internal|u_control_fsm|u_eoc_synchronizer|dreg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|modular_adc_0|control_internal|u_control_fsm|pend~q\,
	datab => \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.CONV~q\,
	datac => \u1|modular_adc_0|control_internal|u_control_fsm|eoc_synch_dly~q\,
	datad => \u1|modular_adc_0|control_internal|u_control_fsm|u_eoc_synchronizer|dreg\(0),
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|load_dout~0_combout\);

-- Location: FF_X45_Y51_N9
\u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	asdata => \u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(0),
	clrn => \u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sload => VCC,
	ena => \u1|modular_adc_0|control_internal|u_control_fsm|load_dout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(0));

-- Location: LCCOMB_X46_Y51_N8
\u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~0_combout\ = (\u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(0) & (\u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\ & 
-- \u1|modular_adc_0|control_internal|u_control_fsm|pend~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(0),
	datac => \u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\,
	datad => \u1|modular_adc_0|control_internal|u_control_fsm|pend~q\,
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~0_combout\);

-- Location: FF_X46_Y51_N9
\u1|modular_adc_0|control_internal|u_control_fsm|rsp_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	d => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~0_combout\,
	clrn => \u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(0));

-- Location: FF_X46_Y51_N25
\u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	asdata => \u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(1),
	clrn => \u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sload => VCC,
	ena => \u1|modular_adc_0|control_internal|u_control_fsm|load_dout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(1));

-- Location: LCCOMB_X46_Y51_N26
\u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~1_combout\ = (\u1|modular_adc_0|control_internal|u_control_fsm|pend~q\ & (\u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\ & 
-- \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|modular_adc_0|control_internal|u_control_fsm|pend~q\,
	datac => \u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\,
	datad => \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(1),
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~1_combout\);

-- Location: FF_X46_Y51_N27
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

-- Location: FF_X45_Y51_N19
\u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	asdata => \u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(2),
	clrn => \u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sload => VCC,
	ena => \u1|modular_adc_0|control_internal|u_control_fsm|load_dout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(2));

-- Location: LCCOMB_X46_Y51_N28
\u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~2_combout\ = (\u1|modular_adc_0|control_internal|u_control_fsm|pend~q\ & (\u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\ & 
-- \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|modular_adc_0|control_internal|u_control_fsm|pend~q\,
	datab => \u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\,
	datad => \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(2),
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~2_combout\);

-- Location: FF_X46_Y51_N29
\u1|modular_adc_0|control_internal|u_control_fsm|rsp_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	d => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~2_combout\,
	clrn => \u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(2));

-- Location: LCCOMB_X46_Y51_N18
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

-- Location: FF_X46_Y51_N19
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
	ena => \u1|modular_adc_0|control_internal|u_control_fsm|load_dout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(3));

-- Location: LCCOMB_X46_Y51_N6
\u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~3_combout\ = (\u1|modular_adc_0|control_internal|u_control_fsm|pend~q\ & (\u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\ & 
-- \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|modular_adc_0|control_internal|u_control_fsm|pend~q\,
	datac => \u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\,
	datad => \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(3),
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~3_combout\);

-- Location: FF_X46_Y51_N7
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

-- Location: FF_X46_Y51_N5
\u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	asdata => \u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(4),
	clrn => \u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sload => VCC,
	ena => \u1|modular_adc_0|control_internal|u_control_fsm|load_dout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(4));

-- Location: LCCOMB_X46_Y51_N0
\u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~4_combout\ = (\u1|modular_adc_0|control_internal|u_control_fsm|pend~q\ & (\u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(4) & 
-- \u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|modular_adc_0|control_internal|u_control_fsm|pend~q\,
	datab => \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(4),
	datac => \u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\,
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~4_combout\);

-- Location: FF_X46_Y51_N1
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

-- Location: FF_X46_Y51_N15
\u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	asdata => \u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(5),
	clrn => \u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sload => VCC,
	ena => \u1|modular_adc_0|control_internal|u_control_fsm|load_dout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(5));

-- Location: LCCOMB_X46_Y51_N2
\u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~5_combout\ = (\u1|modular_adc_0|control_internal|u_control_fsm|pend~q\ & (\u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(5) & 
-- \u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|modular_adc_0|control_internal|u_control_fsm|pend~q\,
	datab => \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(5),
	datac => \u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\,
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~5_combout\);

-- Location: FF_X46_Y51_N3
\u1|modular_adc_0|control_internal|u_control_fsm|rsp_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	d => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~5_combout\,
	clrn => \u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(5));

-- Location: FF_X45_Y51_N15
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
	ena => \u1|modular_adc_0|control_internal|u_control_fsm|load_dout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(6));

-- Location: LCCOMB_X46_Y51_N20
\u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~6_combout\ = (\u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(6) & (\u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\ & 
-- \u1|modular_adc_0|control_internal|u_control_fsm|pend~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(6),
	datac => \u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\,
	datad => \u1|modular_adc_0|control_internal|u_control_fsm|pend~q\,
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~6_combout\);

-- Location: FF_X46_Y51_N21
\u1|modular_adc_0|control_internal|u_control_fsm|rsp_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	d => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~6_combout\,
	clrn => \u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(6));

-- Location: LCCOMB_X46_Y51_N16
\u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[7]~feeder_combout\ = \u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(7),
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[7]~feeder_combout\);

-- Location: FF_X46_Y51_N17
\u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	d => \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[7]~feeder_combout\,
	clrn => \u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	ena => \u1|modular_adc_0|control_internal|u_control_fsm|load_dout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(7));

-- Location: LCCOMB_X46_Y51_N30
\u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~7_combout\ = (\u1|modular_adc_0|control_internal|u_control_fsm|pend~q\ & (\u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\ & 
-- \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|modular_adc_0|control_internal|u_control_fsm|pend~q\,
	datac => \u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\,
	datad => \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(7),
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~7_combout\);

-- Location: FF_X46_Y51_N31
\u1|modular_adc_0|control_internal|u_control_fsm|rsp_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	d => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~7_combout\,
	clrn => \u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(7));

-- Location: FF_X46_Y50_N29
\u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	asdata => \u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(8),
	clrn => \u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sload => VCC,
	ena => \u1|modular_adc_0|control_internal|u_control_fsm|load_dout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(8));

-- Location: LCCOMB_X46_Y50_N24
\u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~8_combout\ = (\u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(8) & (\u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\ & 
-- \u1|modular_adc_0|control_internal|u_control_fsm|pend~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(8),
	datac => \u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\,
	datad => \u1|modular_adc_0|control_internal|u_control_fsm|pend~q\,
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~8_combout\);

-- Location: FF_X46_Y50_N25
\u1|modular_adc_0|control_internal|u_control_fsm|rsp_data[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	d => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~8_combout\,
	clrn => \u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(8));

-- Location: LCCOMB_X46_Y50_N6
\u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[9]~feeder_combout\ = \u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(9),
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[9]~feeder_combout\);

-- Location: FF_X46_Y50_N7
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
	ena => \u1|modular_adc_0|control_internal|u_control_fsm|load_dout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(9));

-- Location: LCCOMB_X46_Y50_N18
\u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~9_combout\ = (\u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(9) & (\u1|modular_adc_0|control_internal|u_control_fsm|pend~q\ & 
-- \u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(9),
	datab => \u1|modular_adc_0|control_internal|u_control_fsm|pend~q\,
	datac => \u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\,
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~9_combout\);

-- Location: FF_X46_Y50_N19
\u1|modular_adc_0|control_internal|u_control_fsm|rsp_data[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	d => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~9_combout\,
	clrn => \u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(9));

-- Location: LCCOMB_X46_Y51_N10
\u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[10]~feeder_combout\ = \u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(10),
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[10]~feeder_combout\);

-- Location: FF_X46_Y51_N11
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
	ena => \u1|modular_adc_0|control_internal|u_control_fsm|load_dout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(10));

-- Location: LCCOMB_X46_Y50_N12
\u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~10_combout\ = (\u1|modular_adc_0|control_internal|u_control_fsm|pend~q\ & (\u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\ & 
-- \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|modular_adc_0|control_internal|u_control_fsm|pend~q\,
	datac => \u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\,
	datad => \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(10),
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~10_combout\);

-- Location: FF_X46_Y50_N13
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

-- Location: FF_X46_Y51_N13
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
	ena => \u1|modular_adc_0|control_internal|u_control_fsm|load_dout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(11));

-- Location: LCCOMB_X46_Y50_N22
\u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~11_combout\ = (\u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(11) & (\u1|modular_adc_0|control_internal|u_control_fsm|pend~q\ & 
-- \u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(11),
	datab => \u1|modular_adc_0|control_internal|u_control_fsm|pend~q\,
	datac => \u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\,
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~11_combout\);

-- Location: FF_X46_Y50_N23
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

-- Location: IOIBUF_X34_Y0_N29
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

-- Location: CLKCTRL_G19
\DE10CLK~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \DE10CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \DE10CLK~inputclkctrl_outclk\);

-- Location: PLL_4
\DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|pll1\ : fiftyfivenm_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 3,
	c0_initial => 2,
	c0_low => 2,
	c0_mode => "odd",
	c0_ph => 4,
	c1_high => 3,
	c1_initial => 1,
	c1_low => 2,
	c1_mode => "odd",
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
	clk0_divide_by => 1,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 2,
	clk0_phase_shift => "0",
	clk1_counter => "c1",
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

-- Location: CLKCTRL_G8
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

-- Location: IOIBUF_X78_Y3_N8
\DRAM_DQ[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(3),
	o => \DRAM_DQ[3]~input_o\);

-- Location: LCCOMB_X74_Y11_N10
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

-- Location: FF_X74_Y11_N11
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

-- Location: LCCOMB_X74_Y11_N24
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

-- Location: FF_X74_Y11_N25
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

-- Location: FF_X72_Y15_N9
\DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain\(0),
	clrn => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|locked\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\);

-- Location: DDIOINCELL_X78_Y3_N10
\DRAM|new_sdram_controller_0|za_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM_DQ[3]~input_o\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|za_data\(3));

-- Location: LCCOMB_X71_Y45_N6
\sal_disp0[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sal_disp0[3]~feeder_combout\ = \DRAM|new_sdram_controller_0|za_data\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DRAM|new_sdram_controller_0|za_data\(3),
	combout => \sal_disp0[3]~feeder_combout\);

-- Location: FF_X71_Y45_N7
\sal_disp0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \sal_disp0[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sal_disp0(3));

-- Location: IOIBUF_X78_Y3_N1
\DRAM_DQ[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(2),
	o => \DRAM_DQ[2]~input_o\);

-- Location: DDIOINCELL_X78_Y3_N3
\DRAM|new_sdram_controller_0|za_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM_DQ[2]~input_o\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|za_data\(2));

-- Location: LCCOMB_X71_Y45_N20
\sal_disp0[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sal_disp0[2]~feeder_combout\ = \DRAM|new_sdram_controller_0|za_data\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DRAM|new_sdram_controller_0|za_data\(2),
	combout => \sal_disp0[2]~feeder_combout\);

-- Location: FF_X71_Y45_N21
\sal_disp0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \sal_disp0[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sal_disp0(2));

-- Location: IOIBUF_X78_Y16_N1
\DRAM_DQ[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(0),
	o => \DRAM_DQ[0]~input_o\);

-- Location: DDIOINCELL_X78_Y16_N3
\DRAM|new_sdram_controller_0|za_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM_DQ[0]~input_o\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|za_data\(0));

-- Location: LCCOMB_X71_Y45_N8
\sal_disp0[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sal_disp0[0]~feeder_combout\ = \DRAM|new_sdram_controller_0|za_data\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DRAM|new_sdram_controller_0|za_data\(0),
	combout => \sal_disp0[0]~feeder_combout\);

-- Location: FF_X71_Y45_N9
\sal_disp0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \sal_disp0[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sal_disp0(0));

-- Location: IOIBUF_X78_Y16_N8
\DRAM_DQ[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(1),
	o => \DRAM_DQ[1]~input_o\);

-- Location: DDIOINCELL_X78_Y16_N10
\DRAM|new_sdram_controller_0|za_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM_DQ[1]~input_o\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|za_data\(1));

-- Location: LCCOMB_X71_Y45_N18
\sal_disp0[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sal_disp0[1]~feeder_combout\ = \DRAM|new_sdram_controller_0|za_data\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|za_data\(1),
	combout => \sal_disp0[1]~feeder_combout\);

-- Location: FF_X71_Y45_N19
\sal_disp0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \sal_disp0[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sal_disp0(1));

-- Location: LCCOMB_X71_Y45_N0
\Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (sal_disp0(3) & (sal_disp0(0) & (sal_disp0(2) $ (sal_disp0(1))))) # (!sal_disp0(3) & (!sal_disp0(1) & (sal_disp0(2) $ (sal_disp0(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sal_disp0(3),
	datab => sal_disp0(2),
	datac => sal_disp0(0),
	datad => sal_disp0(1),
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X71_Y45_N10
\Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (sal_disp0(3) & ((sal_disp0(0) & ((sal_disp0(1)))) # (!sal_disp0(0) & (sal_disp0(2))))) # (!sal_disp0(3) & (sal_disp0(2) & (sal_disp0(0) $ (sal_disp0(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sal_disp0(3),
	datab => sal_disp0(2),
	datac => sal_disp0(0),
	datad => sal_disp0(1),
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X71_Y45_N12
\Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (sal_disp0(3) & (sal_disp0(2) & ((sal_disp0(1)) # (!sal_disp0(0))))) # (!sal_disp0(3) & (!sal_disp0(2) & (!sal_disp0(0) & sal_disp0(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sal_disp0(3),
	datab => sal_disp0(2),
	datac => sal_disp0(0),
	datad => sal_disp0(1),
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X71_Y45_N22
\Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (sal_disp0(1) & ((sal_disp0(2) & ((sal_disp0(0)))) # (!sal_disp0(2) & (sal_disp0(3) & !sal_disp0(0))))) # (!sal_disp0(1) & (!sal_disp0(3) & (sal_disp0(2) $ (sal_disp0(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sal_disp0(3),
	datab => sal_disp0(2),
	datac => sal_disp0(0),
	datad => sal_disp0(1),
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X71_Y45_N16
\Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (sal_disp0(1) & (!sal_disp0(3) & ((sal_disp0(0))))) # (!sal_disp0(1) & ((sal_disp0(2) & (!sal_disp0(3))) # (!sal_disp0(2) & ((sal_disp0(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sal_disp0(3),
	datab => sal_disp0(2),
	datac => sal_disp0(0),
	datad => sal_disp0(1),
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X71_Y45_N2
\Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (sal_disp0(2) & (sal_disp0(0) & (sal_disp0(3) $ (sal_disp0(1))))) # (!sal_disp0(2) & (!sal_disp0(3) & ((sal_disp0(0)) # (sal_disp0(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sal_disp0(3),
	datab => sal_disp0(2),
	datac => sal_disp0(0),
	datad => sal_disp0(1),
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X71_Y45_N28
\Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (sal_disp0(0) & ((sal_disp0(3)) # (sal_disp0(2) $ (sal_disp0(1))))) # (!sal_disp0(0) & ((sal_disp0(1)) # (sal_disp0(3) $ (sal_disp0(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sal_disp0(3),
	datab => sal_disp0(2),
	datac => sal_disp0(0),
	datad => sal_disp0(1),
	combout => \Mux0~0_combout\);

-- Location: IOIBUF_X78_Y17_N8
\DRAM_DQ[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(7),
	o => \DRAM_DQ[7]~input_o\);

-- Location: DDIOINCELL_X78_Y17_N10
\DRAM|new_sdram_controller_0|za_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM_DQ[7]~input_o\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|za_data\(7));

-- Location: LCCOMB_X72_Y50_N6
\sal_disp1[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sal_disp1[3]~feeder_combout\ = \DRAM|new_sdram_controller_0|za_data\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DRAM|new_sdram_controller_0|za_data\(7),
	combout => \sal_disp1[3]~feeder_combout\);

-- Location: FF_X72_Y50_N7
\sal_disp1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \sal_disp1[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sal_disp1(3));

-- Location: IOIBUF_X78_Y15_N8
\DRAM_DQ[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(4),
	o => \DRAM_DQ[4]~input_o\);

-- Location: DDIOINCELL_X78_Y15_N10
\DRAM|new_sdram_controller_0|za_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM_DQ[4]~input_o\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|za_data\(4));

-- Location: LCCOMB_X72_Y50_N16
\sal_disp1[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sal_disp1[0]~feeder_combout\ = \DRAM|new_sdram_controller_0|za_data\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DRAM|new_sdram_controller_0|za_data\(4),
	combout => \sal_disp1[0]~feeder_combout\);

-- Location: FF_X72_Y50_N17
\sal_disp1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \sal_disp1[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sal_disp1(0));

-- Location: IOIBUF_X78_Y15_N1
\DRAM_DQ[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(5),
	o => \DRAM_DQ[5]~input_o\);

-- Location: DDIOINCELL_X78_Y15_N3
\DRAM|new_sdram_controller_0|za_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM_DQ[5]~input_o\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|za_data\(5));

-- Location: LCCOMB_X72_Y50_N26
\sal_disp1[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sal_disp1[1]~feeder_combout\ = \DRAM|new_sdram_controller_0|za_data\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DRAM|new_sdram_controller_0|za_data\(5),
	combout => \sal_disp1[1]~feeder_combout\);

-- Location: FF_X72_Y50_N27
\sal_disp1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \sal_disp1[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sal_disp1(1));

-- Location: IOIBUF_X78_Y16_N15
\DRAM_DQ[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(6),
	o => \DRAM_DQ[6]~input_o\);

-- Location: DDIOINCELL_X78_Y16_N17
\DRAM|new_sdram_controller_0|za_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM_DQ[6]~input_o\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|za_data\(6));

-- Location: LCCOMB_X72_Y50_N28
\sal_disp1[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sal_disp1[2]~feeder_combout\ = \DRAM|new_sdram_controller_0|za_data\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DRAM|new_sdram_controller_0|za_data\(6),
	combout => \sal_disp1[2]~feeder_combout\);

-- Location: FF_X72_Y50_N29
\sal_disp1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \sal_disp1[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sal_disp1(2));

-- Location: LCCOMB_X72_Y50_N8
\Mux13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (sal_disp1(3) & (sal_disp1(0) & (sal_disp1(1) $ (sal_disp1(2))))) # (!sal_disp1(3) & (!sal_disp1(1) & (sal_disp1(0) $ (sal_disp1(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sal_disp1(3),
	datab => sal_disp1(0),
	datac => sal_disp1(1),
	datad => sal_disp1(2),
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X72_Y50_N18
\Mux12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (sal_disp1(3) & ((sal_disp1(0) & (sal_disp1(1))) # (!sal_disp1(0) & ((sal_disp1(2)))))) # (!sal_disp1(3) & (sal_disp1(2) & (sal_disp1(0) $ (sal_disp1(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sal_disp1(3),
	datab => sal_disp1(0),
	datac => sal_disp1(1),
	datad => sal_disp1(2),
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X72_Y50_N20
\Mux11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (sal_disp1(3) & (sal_disp1(2) & ((sal_disp1(1)) # (!sal_disp1(0))))) # (!sal_disp1(3) & (!sal_disp1(0) & (sal_disp1(1) & !sal_disp1(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sal_disp1(3),
	datab => sal_disp1(0),
	datac => sal_disp1(1),
	datad => sal_disp1(2),
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X72_Y50_N22
\Mux10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (sal_disp1(1) & ((sal_disp1(0) & ((sal_disp1(2)))) # (!sal_disp1(0) & (sal_disp1(3) & !sal_disp1(2))))) # (!sal_disp1(1) & (!sal_disp1(3) & (sal_disp1(0) $ (sal_disp1(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sal_disp1(3),
	datab => sal_disp1(0),
	datac => sal_disp1(1),
	datad => sal_disp1(2),
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X72_Y50_N24
\Mux9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (sal_disp1(1) & (!sal_disp1(3) & (sal_disp1(0)))) # (!sal_disp1(1) & ((sal_disp1(2) & (!sal_disp1(3))) # (!sal_disp1(2) & ((sal_disp1(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sal_disp1(3),
	datab => sal_disp1(0),
	datac => sal_disp1(1),
	datad => sal_disp1(2),
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X72_Y50_N2
\Mux8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (sal_disp1(0) & (sal_disp1(3) $ (((sal_disp1(1)) # (!sal_disp1(2)))))) # (!sal_disp1(0) & (!sal_disp1(3) & (sal_disp1(1) & !sal_disp1(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sal_disp1(3),
	datab => sal_disp1(0),
	datac => sal_disp1(1),
	datad => sal_disp1(2),
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X72_Y50_N4
\Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (sal_disp1(0) & ((sal_disp1(3)) # (sal_disp1(1) $ (sal_disp1(2))))) # (!sal_disp1(0) & ((sal_disp1(1)) # (sal_disp1(3) $ (sal_disp1(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sal_disp1(3),
	datab => sal_disp1(0),
	datac => sal_disp1(1),
	datad => sal_disp1(2),
	combout => \Mux7~0_combout\);

-- Location: IOIBUF_X78_Y29_N8
\DRAM_DQ[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(11),
	o => \DRAM_DQ[11]~input_o\);

-- Location: DDIOINCELL_X78_Y29_N10
\DRAM|new_sdram_controller_0|za_data[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM_DQ[11]~input_o\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|za_data\(11));

-- Location: LCCOMB_X74_Y40_N6
\sal_disp2[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sal_disp2[3]~feeder_combout\ = \DRAM|new_sdram_controller_0|za_data\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DRAM|new_sdram_controller_0|za_data\(11),
	combout => \sal_disp2[3]~feeder_combout\);

-- Location: FF_X74_Y40_N7
\sal_disp2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \sal_disp2[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sal_disp2(3));

-- Location: IOIBUF_X78_Y29_N1
\DRAM_DQ[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(10),
	o => \DRAM_DQ[10]~input_o\);

-- Location: DDIOINCELL_X78_Y29_N3
\DRAM|new_sdram_controller_0|za_data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM_DQ[10]~input_o\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|za_data\(10));

-- Location: LCCOMB_X74_Y40_N28
\sal_disp2[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sal_disp2[2]~feeder_combout\ = \DRAM|new_sdram_controller_0|za_data\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DRAM|new_sdram_controller_0|za_data\(10),
	combout => \sal_disp2[2]~feeder_combout\);

-- Location: FF_X74_Y40_N29
\sal_disp2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \sal_disp2[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sal_disp2(2));

-- Location: IOIBUF_X78_Y30_N8
\DRAM_DQ[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(9),
	o => \DRAM_DQ[9]~input_o\);

-- Location: DDIOINCELL_X78_Y30_N10
\DRAM|new_sdram_controller_0|za_data[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM_DQ[9]~input_o\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|za_data\(9));

-- Location: LCCOMB_X74_Y40_N26
\sal_disp2[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sal_disp2[1]~feeder_combout\ = \DRAM|new_sdram_controller_0|za_data\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DRAM|new_sdram_controller_0|za_data\(9),
	combout => \sal_disp2[1]~feeder_combout\);

-- Location: FF_X74_Y40_N27
\sal_disp2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \sal_disp2[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sal_disp2(1));

-- Location: IOIBUF_X78_Y23_N8
\DRAM_DQ[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(8),
	o => \DRAM_DQ[8]~input_o\);

-- Location: DDIOINCELL_X78_Y23_N10
\DRAM|new_sdram_controller_0|za_data[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM_DQ[8]~input_o\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|za_data\(8));

-- Location: LCCOMB_X74_Y40_N24
\sal_disp2[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sal_disp2[0]~feeder_combout\ = \DRAM|new_sdram_controller_0|za_data\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|za_data\(8),
	combout => \sal_disp2[0]~feeder_combout\);

-- Location: FF_X74_Y40_N25
\sal_disp2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \sal_disp2[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sal_disp2(0));

-- Location: LCCOMB_X74_Y40_N8
\Mux20~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = (sal_disp2(3) & (sal_disp2(0) & (sal_disp2(2) $ (sal_disp2(1))))) # (!sal_disp2(3) & (!sal_disp2(1) & (sal_disp2(2) $ (sal_disp2(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sal_disp2(3),
	datab => sal_disp2(2),
	datac => sal_disp2(1),
	datad => sal_disp2(0),
	combout => \Mux20~0_combout\);

-- Location: LCCOMB_X74_Y40_N2
\Mux19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = (sal_disp2(3) & ((sal_disp2(0) & ((sal_disp2(1)))) # (!sal_disp2(0) & (sal_disp2(2))))) # (!sal_disp2(3) & (sal_disp2(2) & (sal_disp2(1) $ (sal_disp2(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sal_disp2(3),
	datab => sal_disp2(2),
	datac => sal_disp2(1),
	datad => sal_disp2(0),
	combout => \Mux19~0_combout\);

-- Location: LCCOMB_X74_Y40_N4
\Mux18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = (sal_disp2(3) & (sal_disp2(2) & ((sal_disp2(1)) # (!sal_disp2(0))))) # (!sal_disp2(3) & (!sal_disp2(2) & (sal_disp2(1) & !sal_disp2(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sal_disp2(3),
	datab => sal_disp2(2),
	datac => sal_disp2(1),
	datad => sal_disp2(0),
	combout => \Mux18~0_combout\);

-- Location: LCCOMB_X74_Y40_N22
\Mux17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (sal_disp2(1) & ((sal_disp2(2) & ((sal_disp2(0)))) # (!sal_disp2(2) & (sal_disp2(3) & !sal_disp2(0))))) # (!sal_disp2(1) & (!sal_disp2(3) & (sal_disp2(2) $ (sal_disp2(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sal_disp2(3),
	datab => sal_disp2(2),
	datac => sal_disp2(1),
	datad => sal_disp2(0),
	combout => \Mux17~0_combout\);

-- Location: LCCOMB_X74_Y40_N16
\Mux16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = (sal_disp2(1) & (!sal_disp2(3) & ((sal_disp2(0))))) # (!sal_disp2(1) & ((sal_disp2(2) & (!sal_disp2(3))) # (!sal_disp2(2) & ((sal_disp2(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sal_disp2(3),
	datab => sal_disp2(2),
	datac => sal_disp2(1),
	datad => sal_disp2(0),
	combout => \Mux16~0_combout\);

-- Location: LCCOMB_X74_Y40_N10
\Mux15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (sal_disp2(2) & (sal_disp2(0) & (sal_disp2(3) $ (sal_disp2(1))))) # (!sal_disp2(2) & (!sal_disp2(3) & ((sal_disp2(1)) # (sal_disp2(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sal_disp2(3),
	datab => sal_disp2(2),
	datac => sal_disp2(1),
	datad => sal_disp2(0),
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X74_Y40_N12
\Mux14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (sal_disp2(0) & ((sal_disp2(3)) # (sal_disp2(2) $ (sal_disp2(1))))) # (!sal_disp2(0) & ((sal_disp2(1)) # (sal_disp2(3) $ (sal_disp2(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sal_disp2(3),
	datab => sal_disp2(2),
	datac => sal_disp2(1),
	datad => sal_disp2(0),
	combout => \Mux14~0_combout\);

-- Location: CLKCTRL_G9
\DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[1]~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[1]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[1]~clkctrl_outclk\);

-- Location: LCCOMB_X74_Y21_N26
\DRAM|new_sdram_controller_0|i_next.000~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|i_next.000~0_combout\ = (\DRAM|new_sdram_controller_0|i_next.000~q\) # ((!\DRAM|new_sdram_controller_0|i_state.101~q\ & (!\DRAM|new_sdram_controller_0|i_state.011~q\ & \DRAM|new_sdram_controller_0|i_state.000~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|i_state.101~q\,
	datab => \DRAM|new_sdram_controller_0|i_state.011~q\,
	datac => \DRAM|new_sdram_controller_0|i_next.000~q\,
	datad => \DRAM|new_sdram_controller_0|i_state.000~q\,
	combout => \DRAM|new_sdram_controller_0|i_next.000~0_combout\);

-- Location: FF_X74_Y21_N27
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

-- Location: LCCOMB_X74_Y20_N10
\DRAM|new_sdram_controller_0|Selector18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector18~0_combout\ = (\DRAM|new_sdram_controller_0|i_next.111~q\ & ((\DRAM|new_sdram_controller_0|i_state.011~q\) # ((\DRAM|new_sdram_controller_0|i_state.101~q\) # (!\DRAM|new_sdram_controller_0|i_state.000~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|i_state.011~q\,
	datab => \DRAM|new_sdram_controller_0|i_next.111~q\,
	datac => \DRAM|new_sdram_controller_0|i_state.000~q\,
	datad => \DRAM|new_sdram_controller_0|i_state.101~q\,
	combout => \DRAM|new_sdram_controller_0|Selector18~0_combout\);

-- Location: LCCOMB_X74_Y20_N14
\DRAM|new_sdram_controller_0|Selector6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector6~0_combout\ = (\DRAM|new_sdram_controller_0|i_refs\(0) & (\DRAM|new_sdram_controller_0|i_state.000~q\ & !\DRAM|new_sdram_controller_0|i_state.010~q\)) # (!\DRAM|new_sdram_controller_0|i_refs\(0) & 
-- ((\DRAM|new_sdram_controller_0|i_state.010~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|i_state.000~q\,
	datac => \DRAM|new_sdram_controller_0|i_refs\(0),
	datad => \DRAM|new_sdram_controller_0|i_state.010~q\,
	combout => \DRAM|new_sdram_controller_0|Selector6~0_combout\);

-- Location: FF_X74_Y20_N15
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

-- Location: LCCOMB_X74_Y20_N4
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

-- Location: FF_X74_Y20_N5
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

-- Location: LCCOMB_X74_Y20_N8
\DRAM|new_sdram_controller_0|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Add1~0_combout\ = (\DRAM|new_sdram_controller_0|i_refs\(1) & \DRAM|new_sdram_controller_0|i_refs\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DRAM|new_sdram_controller_0|i_refs\(1),
	datac => \DRAM|new_sdram_controller_0|i_refs\(0),
	combout => \DRAM|new_sdram_controller_0|Add1~0_combout\);

-- Location: LCCOMB_X74_Y20_N26
\DRAM|new_sdram_controller_0|Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector4~0_combout\ = (\DRAM|new_sdram_controller_0|i_state.010~q\ & ((\DRAM|new_sdram_controller_0|Add1~0_combout\ $ (\DRAM|new_sdram_controller_0|i_refs\(2))))) # (!\DRAM|new_sdram_controller_0|i_state.010~q\ & 
-- (\DRAM|new_sdram_controller_0|i_state.000~q\ & ((\DRAM|new_sdram_controller_0|i_refs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|i_state.000~q\,
	datab => \DRAM|new_sdram_controller_0|Add1~0_combout\,
	datac => \DRAM|new_sdram_controller_0|i_refs\(2),
	datad => \DRAM|new_sdram_controller_0|i_state.010~q\,
	combout => \DRAM|new_sdram_controller_0|Selector4~0_combout\);

-- Location: FF_X74_Y20_N27
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

-- Location: LCCOMB_X74_Y20_N24
\DRAM|new_sdram_controller_0|Selector18~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector18~1_combout\ = (\DRAM|new_sdram_controller_0|Selector18~0_combout\) # ((\DRAM|new_sdram_controller_0|Add1~0_combout\ & (\DRAM|new_sdram_controller_0|i_refs\(2) & \DRAM|new_sdram_controller_0|i_state.010~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|Selector18~0_combout\,
	datab => \DRAM|new_sdram_controller_0|Add1~0_combout\,
	datac => \DRAM|new_sdram_controller_0|i_refs\(2),
	datad => \DRAM|new_sdram_controller_0|i_state.010~q\,
	combout => \DRAM|new_sdram_controller_0|Selector18~1_combout\);

-- Location: FF_X74_Y20_N25
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

-- Location: LCCOMB_X74_Y20_N0
\DRAM|new_sdram_controller_0|Selector12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector12~0_combout\ = (\DRAM|new_sdram_controller_0|i_state.011~q\ & (!\DRAM|new_sdram_controller_0|i_count\(1) & (!\DRAM|new_sdram_controller_0|i_count\(2) & \DRAM|new_sdram_controller_0|i_next.111~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|i_state.011~q\,
	datab => \DRAM|new_sdram_controller_0|i_count\(1),
	datac => \DRAM|new_sdram_controller_0|i_count\(2),
	datad => \DRAM|new_sdram_controller_0|i_next.111~q\,
	combout => \DRAM|new_sdram_controller_0|Selector12~0_combout\);

-- Location: FF_X74_Y20_N1
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

-- Location: LCCOMB_X74_Y21_N20
\DRAM|new_sdram_controller_0|Selector15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector15~0_combout\ = (\DRAM|new_sdram_controller_0|i_state.011~q\ & (\DRAM|new_sdram_controller_0|i_count\(0) $ (((\DRAM|new_sdram_controller_0|i_count\(2)) # (\DRAM|new_sdram_controller_0|i_count\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|i_count\(2),
	datab => \DRAM|new_sdram_controller_0|i_count\(0),
	datac => \DRAM|new_sdram_controller_0|i_state.011~q\,
	datad => \DRAM|new_sdram_controller_0|i_count\(1),
	combout => \DRAM|new_sdram_controller_0|Selector15~0_combout\);

-- Location: LCCOMB_X74_Y21_N14
\DRAM|new_sdram_controller_0|Selector15~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector15~1_combout\ = (\DRAM|new_sdram_controller_0|i_count\(0) & ((\DRAM|new_sdram_controller_0|i_state.101~q\) # (!\DRAM|new_sdram_controller_0|i_state.000~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DRAM|new_sdram_controller_0|i_count\(0),
	datac => \DRAM|new_sdram_controller_0|i_state.101~q\,
	datad => \DRAM|new_sdram_controller_0|i_state.000~q\,
	combout => \DRAM|new_sdram_controller_0|Selector15~1_combout\);

-- Location: LCCOMB_X76_Y19_N4
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

-- Location: FF_X76_Y19_N5
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

-- Location: LCCOMB_X76_Y19_N6
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

-- Location: LCCOMB_X76_Y19_N2
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

-- Location: FF_X76_Y19_N3
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

-- Location: LCCOMB_X76_Y19_N8
\DRAM|new_sdram_controller_0|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Add0~4_combout\ = (\DRAM|new_sdram_controller_0|refresh_counter\(2) & ((GND) # (!\DRAM|new_sdram_controller_0|Add0~3\))) # (!\DRAM|new_sdram_controller_0|refresh_counter\(2) & (\DRAM|new_sdram_controller_0|Add0~3\ $ (GND)))
-- \DRAM|new_sdram_controller_0|Add0~5\ = CARRY((\DRAM|new_sdram_controller_0|refresh_counter\(2)) # (!\DRAM|new_sdram_controller_0|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DRAM|new_sdram_controller_0|refresh_counter\(2),
	datad => VCC,
	cin => \DRAM|new_sdram_controller_0|Add0~3\,
	combout => \DRAM|new_sdram_controller_0|Add0~4_combout\,
	cout => \DRAM|new_sdram_controller_0|Add0~5\);

-- Location: FF_X76_Y19_N9
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

-- Location: LCCOMB_X76_Y19_N10
\DRAM|new_sdram_controller_0|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Add0~6_combout\ = (\DRAM|new_sdram_controller_0|refresh_counter\(3) & (\DRAM|new_sdram_controller_0|Add0~5\ & VCC)) # (!\DRAM|new_sdram_controller_0|refresh_counter\(3) & (!\DRAM|new_sdram_controller_0|Add0~5\))
-- \DRAM|new_sdram_controller_0|Add0~7\ = CARRY((!\DRAM|new_sdram_controller_0|refresh_counter\(3) & !\DRAM|new_sdram_controller_0|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|refresh_counter\(3),
	datad => VCC,
	cin => \DRAM|new_sdram_controller_0|Add0~5\,
	combout => \DRAM|new_sdram_controller_0|Add0~6_combout\,
	cout => \DRAM|new_sdram_controller_0|Add0~7\);

-- Location: FF_X76_Y19_N11
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

-- Location: LCCOMB_X76_Y19_N12
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

-- Location: LCCOMB_X77_Y19_N20
\DRAM|new_sdram_controller_0|refresh_counter~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|refresh_counter~6_combout\ = (\DRAM|new_sdram_controller_0|Equal0~4_combout\) # (!\DRAM|new_sdram_controller_0|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DRAM|new_sdram_controller_0|Equal0~4_combout\,
	datad => \DRAM|new_sdram_controller_0|Add0~8_combout\,
	combout => \DRAM|new_sdram_controller_0|refresh_counter~6_combout\);

-- Location: FF_X77_Y19_N21
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

-- Location: LCCOMB_X76_Y19_N14
\DRAM|new_sdram_controller_0|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Add0~10_combout\ = (\DRAM|new_sdram_controller_0|refresh_counter\(5) & (\DRAM|new_sdram_controller_0|Add0~9\ & VCC)) # (!\DRAM|new_sdram_controller_0|refresh_counter\(5) & (!\DRAM|new_sdram_controller_0|Add0~9\))
-- \DRAM|new_sdram_controller_0|Add0~11\ = CARRY((!\DRAM|new_sdram_controller_0|refresh_counter\(5) & !\DRAM|new_sdram_controller_0|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|refresh_counter\(5),
	datad => VCC,
	cin => \DRAM|new_sdram_controller_0|Add0~9\,
	combout => \DRAM|new_sdram_controller_0|Add0~10_combout\,
	cout => \DRAM|new_sdram_controller_0|Add0~11\);

-- Location: LCCOMB_X77_Y19_N6
\DRAM|new_sdram_controller_0|refresh_counter~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|refresh_counter~7_combout\ = (!\DRAM|new_sdram_controller_0|Equal0~4_combout\ & \DRAM|new_sdram_controller_0|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DRAM|new_sdram_controller_0|Equal0~4_combout\,
	datad => \DRAM|new_sdram_controller_0|Add0~10_combout\,
	combout => \DRAM|new_sdram_controller_0|refresh_counter~7_combout\);

-- Location: FF_X77_Y19_N7
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

-- Location: LCCOMB_X77_Y19_N8
\DRAM|new_sdram_controller_0|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Equal0~2_combout\ = (!\DRAM|new_sdram_controller_0|refresh_counter\(2) & (\DRAM|new_sdram_controller_0|refresh_counter\(4) & (!\DRAM|new_sdram_controller_0|refresh_counter\(3) & 
-- !\DRAM|new_sdram_controller_0|refresh_counter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|refresh_counter\(2),
	datab => \DRAM|new_sdram_controller_0|refresh_counter\(4),
	datac => \DRAM|new_sdram_controller_0|refresh_counter\(3),
	datad => \DRAM|new_sdram_controller_0|refresh_counter\(5),
	combout => \DRAM|new_sdram_controller_0|Equal0~2_combout\);

-- Location: LCCOMB_X75_Y19_N8
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

-- Location: LCCOMB_X76_Y19_N16
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

-- Location: LCCOMB_X77_Y19_N18
\DRAM|new_sdram_controller_0|refresh_counter~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|refresh_counter~5_combout\ = (\DRAM|new_sdram_controller_0|Add0~12_combout\ & !\DRAM|new_sdram_controller_0|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DRAM|new_sdram_controller_0|Add0~12_combout\,
	datad => \DRAM|new_sdram_controller_0|Equal0~4_combout\,
	combout => \DRAM|new_sdram_controller_0|refresh_counter~5_combout\);

-- Location: FF_X77_Y19_N19
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

-- Location: LCCOMB_X76_Y19_N18
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

-- Location: LCCOMB_X77_Y19_N24
\DRAM|new_sdram_controller_0|refresh_counter~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|refresh_counter~4_combout\ = (!\DRAM|new_sdram_controller_0|Equal0~4_combout\ & \DRAM|new_sdram_controller_0|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DRAM|new_sdram_controller_0|Equal0~4_combout\,
	datad => \DRAM|new_sdram_controller_0|Add0~14_combout\,
	combout => \DRAM|new_sdram_controller_0|refresh_counter~4_combout\);

-- Location: FF_X77_Y19_N25
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

-- Location: LCCOMB_X76_Y19_N20
\DRAM|new_sdram_controller_0|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Add0~16_combout\ = (\DRAM|new_sdram_controller_0|refresh_counter\(8) & (\DRAM|new_sdram_controller_0|Add0~15\ $ (GND))) # (!\DRAM|new_sdram_controller_0|refresh_counter\(8) & ((GND) # (!\DRAM|new_sdram_controller_0|Add0~15\)))
-- \DRAM|new_sdram_controller_0|Add0~17\ = CARRY((!\DRAM|new_sdram_controller_0|Add0~15\) # (!\DRAM|new_sdram_controller_0|refresh_counter\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DRAM|new_sdram_controller_0|refresh_counter\(8),
	datad => VCC,
	cin => \DRAM|new_sdram_controller_0|Add0~15\,
	combout => \DRAM|new_sdram_controller_0|Add0~16_combout\,
	cout => \DRAM|new_sdram_controller_0|Add0~17\);

-- Location: LCCOMB_X77_Y19_N22
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

-- Location: FF_X77_Y19_N23
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

-- Location: LCCOMB_X76_Y19_N22
\DRAM|new_sdram_controller_0|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Add0~18_combout\ = (\DRAM|new_sdram_controller_0|refresh_counter\(9) & (!\DRAM|new_sdram_controller_0|Add0~17\)) # (!\DRAM|new_sdram_controller_0|refresh_counter\(9) & (\DRAM|new_sdram_controller_0|Add0~17\ & VCC))
-- \DRAM|new_sdram_controller_0|Add0~19\ = CARRY((\DRAM|new_sdram_controller_0|refresh_counter\(9) & !\DRAM|new_sdram_controller_0|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DRAM|new_sdram_controller_0|refresh_counter\(9),
	datad => VCC,
	cin => \DRAM|new_sdram_controller_0|Add0~17\,
	combout => \DRAM|new_sdram_controller_0|Add0~18_combout\,
	cout => \DRAM|new_sdram_controller_0|Add0~19\);

-- Location: LCCOMB_X75_Y19_N6
\DRAM|new_sdram_controller_0|refresh_counter[9]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|refresh_counter[9]~11_combout\ = !\DRAM|new_sdram_controller_0|Add0~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DRAM|new_sdram_controller_0|Add0~18_combout\,
	combout => \DRAM|new_sdram_controller_0|refresh_counter[9]~11_combout\);

-- Location: FF_X75_Y19_N7
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

-- Location: LCCOMB_X76_Y19_N0
\DRAM|new_sdram_controller_0|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Equal0~1_combout\ = (\DRAM|new_sdram_controller_0|refresh_counter\(8) & (!\DRAM|new_sdram_controller_0|refresh_counter\(7) & (\DRAM|new_sdram_controller_0|refresh_counter\(9) & 
-- !\DRAM|new_sdram_controller_0|refresh_counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|refresh_counter\(8),
	datab => \DRAM|new_sdram_controller_0|refresh_counter\(7),
	datac => \DRAM|new_sdram_controller_0|refresh_counter\(9),
	datad => \DRAM|new_sdram_controller_0|refresh_counter\(6),
	combout => \DRAM|new_sdram_controller_0|Equal0~1_combout\);

-- Location: LCCOMB_X76_Y19_N24
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

-- Location: LCCOMB_X75_Y19_N22
\DRAM|new_sdram_controller_0|refresh_counter~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|refresh_counter~1_combout\ = (\DRAM|new_sdram_controller_0|Equal0~4_combout\) # (!\DRAM|new_sdram_controller_0|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|Add0~20_combout\,
	datac => \DRAM|new_sdram_controller_0|Equal0~4_combout\,
	combout => \DRAM|new_sdram_controller_0|refresh_counter~1_combout\);

-- Location: FF_X75_Y19_N23
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

-- Location: LCCOMB_X76_Y19_N26
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

-- Location: LCCOMB_X75_Y19_N2
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

-- Location: FF_X75_Y19_N3
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

-- Location: LCCOMB_X76_Y19_N28
\DRAM|new_sdram_controller_0|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Add0~24_combout\ = (\DRAM|new_sdram_controller_0|refresh_counter\(12) & ((GND) # (!\DRAM|new_sdram_controller_0|Add0~23\))) # (!\DRAM|new_sdram_controller_0|refresh_counter\(12) & (\DRAM|new_sdram_controller_0|Add0~23\ $ 
-- (GND)))
-- \DRAM|new_sdram_controller_0|Add0~25\ = CARRY((\DRAM|new_sdram_controller_0|refresh_counter\(12)) # (!\DRAM|new_sdram_controller_0|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|refresh_counter\(12),
	datad => VCC,
	cin => \DRAM|new_sdram_controller_0|Add0~23\,
	combout => \DRAM|new_sdram_controller_0|Add0~24_combout\,
	cout => \DRAM|new_sdram_controller_0|Add0~25\);

-- Location: LCCOMB_X75_Y19_N16
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

-- Location: FF_X75_Y19_N17
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

-- Location: LCCOMB_X76_Y19_N30
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

-- Location: LCCOMB_X75_Y19_N12
\DRAM|new_sdram_controller_0|refresh_counter~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|refresh_counter~0_combout\ = (\DRAM|new_sdram_controller_0|Equal0~4_combout\) # (!\DRAM|new_sdram_controller_0|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|Equal0~4_combout\,
	datac => \DRAM|new_sdram_controller_0|Add0~26_combout\,
	combout => \DRAM|new_sdram_controller_0|refresh_counter~0_combout\);

-- Location: FF_X75_Y19_N13
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

-- Location: LCCOMB_X75_Y19_N28
\DRAM|new_sdram_controller_0|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Equal0~0_combout\ = (\DRAM|new_sdram_controller_0|refresh_counter\(13) & (!\DRAM|new_sdram_controller_0|refresh_counter\(12) & (\DRAM|new_sdram_controller_0|refresh_counter\(10) & 
-- !\DRAM|new_sdram_controller_0|refresh_counter\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|refresh_counter\(13),
	datab => \DRAM|new_sdram_controller_0|refresh_counter\(12),
	datac => \DRAM|new_sdram_controller_0|refresh_counter\(10),
	datad => \DRAM|new_sdram_controller_0|refresh_counter\(11),
	combout => \DRAM|new_sdram_controller_0|Equal0~0_combout\);

-- Location: LCCOMB_X75_Y19_N26
\DRAM|new_sdram_controller_0|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Equal0~4_combout\ = (\DRAM|new_sdram_controller_0|Equal0~2_combout\ & (\DRAM|new_sdram_controller_0|Equal0~3_combout\ & (\DRAM|new_sdram_controller_0|Equal0~1_combout\ & \DRAM|new_sdram_controller_0|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|Equal0~2_combout\,
	datab => \DRAM|new_sdram_controller_0|Equal0~3_combout\,
	datac => \DRAM|new_sdram_controller_0|Equal0~1_combout\,
	datad => \DRAM|new_sdram_controller_0|Equal0~0_combout\,
	combout => \DRAM|new_sdram_controller_0|Equal0~4_combout\);

-- Location: LCCOMB_X74_Y21_N16
\DRAM|new_sdram_controller_0|Selector8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector8~0_combout\ = (!\DRAM|new_sdram_controller_0|i_state.000~q\ & \DRAM|new_sdram_controller_0|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|i_state.000~q\,
	datad => \DRAM|new_sdram_controller_0|Equal0~4_combout\,
	combout => \DRAM|new_sdram_controller_0|Selector8~0_combout\);

-- Location: FF_X74_Y21_N17
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

-- Location: LCCOMB_X74_Y21_N4
\DRAM|new_sdram_controller_0|Selector15~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector15~2_combout\ = (\DRAM|new_sdram_controller_0|i_state.010~q\) # ((\DRAM|new_sdram_controller_0|Selector15~0_combout\) # ((\DRAM|new_sdram_controller_0|Selector15~1_combout\) # 
-- (\DRAM|new_sdram_controller_0|i_state.001~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|i_state.010~q\,
	datab => \DRAM|new_sdram_controller_0|Selector15~0_combout\,
	datac => \DRAM|new_sdram_controller_0|Selector15~1_combout\,
	datad => \DRAM|new_sdram_controller_0|i_state.001~q\,
	combout => \DRAM|new_sdram_controller_0|Selector15~2_combout\);

-- Location: FF_X74_Y21_N5
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

-- Location: LCCOMB_X74_Y21_N22
\DRAM|new_sdram_controller_0|Selector13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector13~0_combout\ = (\DRAM|new_sdram_controller_0|i_count\(2) & (\DRAM|new_sdram_controller_0|i_state.011~q\ & ((\DRAM|new_sdram_controller_0|i_count\(0)) # (\DRAM|new_sdram_controller_0|i_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|i_count\(2),
	datab => \DRAM|new_sdram_controller_0|i_count\(0),
	datac => \DRAM|new_sdram_controller_0|i_state.011~q\,
	datad => \DRAM|new_sdram_controller_0|i_count\(1),
	combout => \DRAM|new_sdram_controller_0|Selector13~0_combout\);

-- Location: LCCOMB_X74_Y21_N0
\DRAM|new_sdram_controller_0|Selector13~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector13~1_combout\ = (\DRAM|new_sdram_controller_0|i_state.010~q\) # ((\DRAM|new_sdram_controller_0|i_count\(2) & ((\DRAM|new_sdram_controller_0|i_state.101~q\) # (!\DRAM|new_sdram_controller_0|i_state.000~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|i_count\(2),
	datab => \DRAM|new_sdram_controller_0|i_state.010~q\,
	datac => \DRAM|new_sdram_controller_0|i_state.101~q\,
	datad => \DRAM|new_sdram_controller_0|i_state.000~q\,
	combout => \DRAM|new_sdram_controller_0|Selector13~1_combout\);

-- Location: LCCOMB_X74_Y21_N30
\DRAM|new_sdram_controller_0|Selector13~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector13~2_combout\ = (\DRAM|new_sdram_controller_0|i_state.111~q\) # ((\DRAM|new_sdram_controller_0|Selector13~0_combout\) # (\DRAM|new_sdram_controller_0|Selector13~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DRAM|new_sdram_controller_0|i_state.111~q\,
	datac => \DRAM|new_sdram_controller_0|Selector13~0_combout\,
	datad => \DRAM|new_sdram_controller_0|Selector13~1_combout\,
	combout => \DRAM|new_sdram_controller_0|Selector13~2_combout\);

-- Location: FF_X74_Y21_N31
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

-- Location: LCCOMB_X74_Y20_N2
\DRAM|new_sdram_controller_0|Selector9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector9~0_combout\ = (\DRAM|new_sdram_controller_0|i_state.011~q\ & (!\DRAM|new_sdram_controller_0|i_count\(1) & !\DRAM|new_sdram_controller_0|i_count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|i_state.011~q\,
	datab => \DRAM|new_sdram_controller_0|i_count\(1),
	datac => \DRAM|new_sdram_controller_0|i_count\(2),
	combout => \DRAM|new_sdram_controller_0|Selector9~0_combout\);

-- Location: LCCOMB_X74_Y21_N10
\DRAM|new_sdram_controller_0|Selector7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector7~0_combout\ = (\DRAM|new_sdram_controller_0|i_next.000~q\ & (((\DRAM|new_sdram_controller_0|i_state.000~q\) # (\DRAM|new_sdram_controller_0|Equal0~4_combout\)))) # (!\DRAM|new_sdram_controller_0|i_next.000~q\ & 
-- (!\DRAM|new_sdram_controller_0|Selector9~0_combout\ & ((\DRAM|new_sdram_controller_0|i_state.000~q\) # (\DRAM|new_sdram_controller_0|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|i_next.000~q\,
	datab => \DRAM|new_sdram_controller_0|Selector9~0_combout\,
	datac => \DRAM|new_sdram_controller_0|i_state.000~q\,
	datad => \DRAM|new_sdram_controller_0|Equal0~4_combout\,
	combout => \DRAM|new_sdram_controller_0|Selector7~0_combout\);

-- Location: FF_X74_Y21_N11
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

-- Location: LCCOMB_X74_Y21_N18
\DRAM|new_sdram_controller_0|Selector14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector14~0_combout\ = (\DRAM|new_sdram_controller_0|i_state.011~q\ & ((\DRAM|new_sdram_controller_0|i_count\(0) & ((\DRAM|new_sdram_controller_0|i_count\(1)))) # (!\DRAM|new_sdram_controller_0|i_count\(0) & 
-- (\DRAM|new_sdram_controller_0|i_count\(2) & !\DRAM|new_sdram_controller_0|i_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|i_count\(2),
	datab => \DRAM|new_sdram_controller_0|i_count\(0),
	datac => \DRAM|new_sdram_controller_0|i_state.011~q\,
	datad => \DRAM|new_sdram_controller_0|i_count\(1),
	combout => \DRAM|new_sdram_controller_0|Selector14~0_combout\);

-- Location: LCCOMB_X74_Y21_N24
\DRAM|new_sdram_controller_0|Selector14~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector14~1_combout\ = (\DRAM|new_sdram_controller_0|Selector14~0_combout\) # ((\DRAM|new_sdram_controller_0|i_count\(1) & ((\DRAM|new_sdram_controller_0|i_state.101~q\) # (!\DRAM|new_sdram_controller_0|i_state.000~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|i_state.000~q\,
	datab => \DRAM|new_sdram_controller_0|i_state.101~q\,
	datac => \DRAM|new_sdram_controller_0|i_count\(1),
	datad => \DRAM|new_sdram_controller_0|Selector14~0_combout\,
	combout => \DRAM|new_sdram_controller_0|Selector14~1_combout\);

-- Location: FF_X74_Y21_N25
\DRAM|new_sdram_controller_0|i_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|Selector14~1_combout\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|i_count\(1));

-- Location: LCCOMB_X74_Y20_N30
\DRAM|new_sdram_controller_0|Selector16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector16~0_combout\ = (\DRAM|new_sdram_controller_0|i_state.010~q\ & (((!\DRAM|new_sdram_controller_0|i_refs\(1)) # (!\DRAM|new_sdram_controller_0|i_refs\(0))) # (!\DRAM|new_sdram_controller_0|i_refs\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|i_refs\(2),
	datab => \DRAM|new_sdram_controller_0|i_refs\(0),
	datac => \DRAM|new_sdram_controller_0|i_refs\(1),
	datad => \DRAM|new_sdram_controller_0|i_state.010~q\,
	combout => \DRAM|new_sdram_controller_0|Selector16~0_combout\);

-- Location: LCCOMB_X74_Y20_N16
\DRAM|new_sdram_controller_0|Selector16~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector16~1_combout\ = (\DRAM|new_sdram_controller_0|Selector16~0_combout\) # ((\DRAM|new_sdram_controller_0|i_state.001~q\) # ((\DRAM|new_sdram_controller_0|WideOr6~combout\ & \DRAM|new_sdram_controller_0|i_next.010~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|Selector16~0_combout\,
	datab => \DRAM|new_sdram_controller_0|WideOr6~combout\,
	datac => \DRAM|new_sdram_controller_0|i_next.010~q\,
	datad => \DRAM|new_sdram_controller_0|i_state.001~q\,
	combout => \DRAM|new_sdram_controller_0|Selector16~1_combout\);

-- Location: FF_X74_Y20_N17
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

-- Location: LCCOMB_X74_Y20_N6
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

-- Location: FF_X74_Y20_N7
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

-- Location: LCCOMB_X74_Y20_N22
\DRAM|new_sdram_controller_0|Selector10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector10~0_combout\ = (\DRAM|new_sdram_controller_0|i_state.111~q\) # ((\DRAM|new_sdram_controller_0|i_state.011~q\ & ((\DRAM|new_sdram_controller_0|i_count\(1)) # (\DRAM|new_sdram_controller_0|i_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|i_state.011~q\,
	datab => \DRAM|new_sdram_controller_0|i_count\(1),
	datac => \DRAM|new_sdram_controller_0|i_count\(2),
	datad => \DRAM|new_sdram_controller_0|i_state.111~q\,
	combout => \DRAM|new_sdram_controller_0|Selector10~0_combout\);

-- Location: LCCOMB_X74_Y20_N12
\DRAM|new_sdram_controller_0|Selector10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector10~1_combout\ = (\DRAM|new_sdram_controller_0|i_state.010~q\) # ((\DRAM|new_sdram_controller_0|Selector10~0_combout\) # (\DRAM|new_sdram_controller_0|i_state.001~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|i_state.010~q\,
	datac => \DRAM|new_sdram_controller_0|Selector10~0_combout\,
	datad => \DRAM|new_sdram_controller_0|i_state.001~q\,
	combout => \DRAM|new_sdram_controller_0|Selector10~1_combout\);

-- Location: FF_X74_Y20_N13
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

-- Location: LCCOMB_X74_Y20_N28
\DRAM|new_sdram_controller_0|WideOr6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|WideOr6~combout\ = (\DRAM|new_sdram_controller_0|i_state.011~q\) # ((\DRAM|new_sdram_controller_0|i_state.101~q\) # (!\DRAM|new_sdram_controller_0|i_state.000~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|i_state.011~q\,
	datac => \DRAM|new_sdram_controller_0|i_state.000~q\,
	datad => \DRAM|new_sdram_controller_0|i_state.101~q\,
	combout => \DRAM|new_sdram_controller_0|WideOr6~combout\);

-- Location: LCCOMB_X74_Y20_N20
\DRAM|new_sdram_controller_0|Selector17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector17~0_combout\ = (\DRAM|new_sdram_controller_0|i_state.111~q\) # ((\DRAM|new_sdram_controller_0|WideOr6~combout\ & \DRAM|new_sdram_controller_0|i_next.101~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DRAM|new_sdram_controller_0|WideOr6~combout\,
	datac => \DRAM|new_sdram_controller_0|i_next.101~q\,
	datad => \DRAM|new_sdram_controller_0|i_state.111~q\,
	combout => \DRAM|new_sdram_controller_0|Selector17~0_combout\);

-- Location: FF_X74_Y20_N21
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

-- Location: LCCOMB_X74_Y20_N18
\DRAM|new_sdram_controller_0|i_state.101~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|i_state.101~0_combout\ = (\DRAM|new_sdram_controller_0|i_state.101~q\) # ((\DRAM|new_sdram_controller_0|i_next.101~q\ & \DRAM|new_sdram_controller_0|Selector9~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DRAM|new_sdram_controller_0|i_next.101~q\,
	datac => \DRAM|new_sdram_controller_0|i_state.101~q\,
	datad => \DRAM|new_sdram_controller_0|Selector9~0_combout\,
	combout => \DRAM|new_sdram_controller_0|i_state.101~0_combout\);

-- Location: FF_X74_Y20_N19
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

-- Location: LCCOMB_X75_Y19_N0
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

-- Location: FF_X75_Y19_N1
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

-- Location: LCCOMB_X74_Y19_N0
\DRAM|new_sdram_controller_0|Selector25~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector25~4_combout\ = (\DRAM|new_sdram_controller_0|init_done~q\ & !\DRAM|new_sdram_controller_0|m_state.000000001~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DRAM|new_sdram_controller_0|init_done~q\,
	datac => \DRAM|new_sdram_controller_0|m_state.000000001~q\,
	combout => \DRAM|new_sdram_controller_0|Selector25~4_combout\);

-- Location: LCCOMB_X72_Y15_N8
\DRAM|new_sdram_controller_0|active_cs_n~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|active_cs_n~0_combout\ = (\DRAM|new_sdram_controller_0|active_cs_n~q\ & (((!\DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\) # 
-- (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|Equal1~0_combout\)) # (!\DRAM|new_sdram_controller_0|Selector25~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|Selector25~4_combout\,
	datab => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|Equal1~0_combout\,
	datac => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	datad => \DRAM|new_sdram_controller_0|active_cs_n~q\,
	combout => \DRAM|new_sdram_controller_0|active_cs_n~0_combout\);

-- Location: LCCOMB_X74_Y19_N24
\DRAM|new_sdram_controller_0|active_cs_n~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|active_cs_n~1_combout\ = (\DRAM|new_sdram_controller_0|active_cs_n~0_combout\) # ((\DRAM|new_sdram_controller_0|refresh_request~q\ & (\DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\ & 
-- \DRAM|new_sdram_controller_0|Selector25~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|active_cs_n~0_combout\,
	datab => \DRAM|new_sdram_controller_0|refresh_request~q\,
	datac => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	datad => \DRAM|new_sdram_controller_0|Selector25~4_combout\,
	combout => \DRAM|new_sdram_controller_0|active_cs_n~1_combout\);

-- Location: FF_X74_Y19_N25
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

-- Location: LCCOMB_X72_Y15_N10
\DRAM|new_sdram_controller_0|Selector34~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector34~0_combout\ = (\DRAM|new_sdram_controller_0|m_state.000001000~q\ & (!\DRAM|new_sdram_controller_0|active_cs_n~q\ & ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(1)) # 
-- (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(1),
	datab => \DRAM|new_sdram_controller_0|m_state.000001000~q\,
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(0),
	datad => \DRAM|new_sdram_controller_0|active_cs_n~q\,
	combout => \DRAM|new_sdram_controller_0|Selector34~0_combout\);

-- Location: LCCOMB_X72_Y15_N28
\DRAM|new_sdram_controller_0|pending\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|pending~combout\ = (!\DRAM|new_sdram_controller_0|active_cs_n~q\ & ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(1)) # 
-- (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(1),
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(0),
	datad => \DRAM|new_sdram_controller_0|active_cs_n~q\,
	combout => \DRAM|new_sdram_controller_0|pending~combout\);

-- Location: LCCOMB_X72_Y15_N0
\DRAM|new_sdram_controller_0|Selector32~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector32~0_combout\ = (!\DRAM|new_sdram_controller_0|refresh_request~q\ & ((\DRAM|new_sdram_controller_0|m_state.000001000~q\) # 
-- ((!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(1) & !\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|refresh_request~q\,
	datab => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(1),
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(0),
	datad => \DRAM|new_sdram_controller_0|m_state.000001000~q\,
	combout => \DRAM|new_sdram_controller_0|Selector32~0_combout\);

-- Location: LCCOMB_X72_Y15_N26
\DRAM|new_sdram_controller_0|Selector32~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector32~1_combout\ = (\DRAM|new_sdram_controller_0|pending~combout\ & (\DRAM|new_sdram_controller_0|Selector32~0_combout\ & (\DRAM|new_sdram_controller_0|m_state.100000000~q\))) # 
-- (!\DRAM|new_sdram_controller_0|pending~combout\ & ((\DRAM|new_sdram_controller_0|m_state.000001000~q\) # ((\DRAM|new_sdram_controller_0|Selector32~0_combout\ & \DRAM|new_sdram_controller_0|m_state.100000000~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|pending~combout\,
	datab => \DRAM|new_sdram_controller_0|Selector32~0_combout\,
	datac => \DRAM|new_sdram_controller_0|m_state.100000000~q\,
	datad => \DRAM|new_sdram_controller_0|m_state.000001000~q\,
	combout => \DRAM|new_sdram_controller_0|Selector32~1_combout\);

-- Location: FF_X72_Y15_N27
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

-- Location: LCCOMB_X72_Y15_N4
\DRAM|new_sdram_controller_0|Selector29~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector29~0_combout\ = (\DRAM|new_sdram_controller_0|m_state.100000000~q\ & (!\DRAM|new_sdram_controller_0|refresh_request~q\ & 
-- ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(1)) # (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_state.100000000~q\,
	datab => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(1),
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(0),
	datad => \DRAM|new_sdram_controller_0|refresh_request~q\,
	combout => \DRAM|new_sdram_controller_0|Selector29~0_combout\);

-- Location: LCCOMB_X72_Y15_N6
\DRAM|new_sdram_controller_0|Selector27~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector27~0_combout\ = (\DRAM|new_sdram_controller_0|Selector34~0_combout\ & (\DRAM|new_sdram_controller_0|refresh_request~q\ & ((\DRAM|new_sdram_controller_0|active_cs_n~q\) # 
-- (!\DRAM|new_sdram_controller_0|Selector29~0_combout\)))) # (!\DRAM|new_sdram_controller_0|Selector34~0_combout\ & ((\DRAM|new_sdram_controller_0|active_cs_n~q\) # ((!\DRAM|new_sdram_controller_0|Selector29~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|Selector34~0_combout\,
	datab => \DRAM|new_sdram_controller_0|active_cs_n~q\,
	datac => \DRAM|new_sdram_controller_0|Selector29~0_combout\,
	datad => \DRAM|new_sdram_controller_0|refresh_request~q\,
	combout => \DRAM|new_sdram_controller_0|Selector27~0_combout\);

-- Location: LCCOMB_X72_Y15_N12
\DRAM|new_sdram_controller_0|Selector36~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector36~1_combout\ = (!\DRAM|new_sdram_controller_0|refresh_request~q\ & (\DRAM|new_sdram_controller_0|m_state.100000000~q\ & ((!\DRAM|new_sdram_controller_0|active_cs_n~q\) # 
-- (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|refresh_request~q\,
	datab => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|Equal1~0_combout\,
	datac => \DRAM|new_sdram_controller_0|m_state.100000000~q\,
	datad => \DRAM|new_sdram_controller_0|active_cs_n~q\,
	combout => \DRAM|new_sdram_controller_0|Selector36~1_combout\);

-- Location: LCCOMB_X72_Y19_N8
\DRAM|new_sdram_controller_0|m_count[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|m_count[0]~3_combout\ = (!\DRAM|new_sdram_controller_0|Selector34~0_combout\ & ((\DRAM|new_sdram_controller_0|m_state.000001000~q\) # ((!\DRAM|new_sdram_controller_0|m_state.000000001~q\ & 
-- !\DRAM|new_sdram_controller_0|init_done~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_state.000001000~q\,
	datab => \DRAM|new_sdram_controller_0|m_state.000000001~q\,
	datac => \DRAM|new_sdram_controller_0|Selector34~0_combout\,
	datad => \DRAM|new_sdram_controller_0|init_done~q\,
	combout => \DRAM|new_sdram_controller_0|m_count[0]~3_combout\);

-- Location: LCCOMB_X74_Y19_N6
\DRAM|new_sdram_controller_0|m_count[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|m_count[0]~4_combout\ = (\DRAM|new_sdram_controller_0|m_state.001000000~q\) # ((!\DRAM|new_sdram_controller_0|refresh_request~q\ & ((\DRAM|new_sdram_controller_0|m_state.000001000~q\) # 
-- (!\DRAM|new_sdram_controller_0|m_state.000000001~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_state.001000000~q\,
	datab => \DRAM|new_sdram_controller_0|refresh_request~q\,
	datac => \DRAM|new_sdram_controller_0|m_state.000000001~q\,
	datad => \DRAM|new_sdram_controller_0|m_state.000001000~q\,
	combout => \DRAM|new_sdram_controller_0|m_count[0]~4_combout\);

-- Location: LCCOMB_X71_Y19_N30
\DRAM|new_sdram_controller_0|m_count[0]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|m_count[0]~5_combout\ = (\DRAM|new_sdram_controller_0|m_count[0]~3_combout\) # ((\DRAM|new_sdram_controller_0|Selector36~1_combout\) # ((\DRAM|new_sdram_controller_0|Selector31~0_combout\) # 
-- (\DRAM|new_sdram_controller_0|m_count[0]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_count[0]~3_combout\,
	datab => \DRAM|new_sdram_controller_0|Selector36~1_combout\,
	datac => \DRAM|new_sdram_controller_0|Selector31~0_combout\,
	datad => \DRAM|new_sdram_controller_0|m_count[0]~4_combout\,
	combout => \DRAM|new_sdram_controller_0|m_count[0]~5_combout\);

-- Location: LCCOMB_X71_Y19_N0
\DRAM|new_sdram_controller_0|Selector38~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector38~0_combout\ = (!\DRAM|new_sdram_controller_0|m_state.100000000~q\ & \DRAM|new_sdram_controller_0|m_state.000000010~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DRAM|new_sdram_controller_0|m_state.100000000~q\,
	datad => \DRAM|new_sdram_controller_0|m_state.000000010~q\,
	combout => \DRAM|new_sdram_controller_0|Selector38~0_combout\);

-- Location: LCCOMB_X72_Y19_N22
\DRAM|new_sdram_controller_0|m_count[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|m_count[1]~0_combout\ = (!\DRAM|new_sdram_controller_0|m_state.000000010~q\ & (\DRAM|new_sdram_controller_0|m_state.000000001~q\ & (!\DRAM|new_sdram_controller_0|m_state.000001000~q\ & 
-- !\DRAM|new_sdram_controller_0|m_state.010000000~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_state.000000010~q\,
	datab => \DRAM|new_sdram_controller_0|m_state.000000001~q\,
	datac => \DRAM|new_sdram_controller_0|m_state.000001000~q\,
	datad => \DRAM|new_sdram_controller_0|m_state.010000000~q\,
	combout => \DRAM|new_sdram_controller_0|m_count[1]~0_combout\);

-- Location: LCCOMB_X71_Y19_N18
\DRAM|new_sdram_controller_0|m_count[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|m_count[1]~1_combout\ = (!\DRAM|new_sdram_controller_0|m_state.100000000~q\ & (\DRAM|new_sdram_controller_0|m_count[1]~0_combout\ & ((\DRAM|new_sdram_controller_0|LessThan1~0_combout\) # 
-- (!\DRAM|new_sdram_controller_0|m_state.000100000~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_state.000100000~q\,
	datab => \DRAM|new_sdram_controller_0|m_state.100000000~q\,
	datac => \DRAM|new_sdram_controller_0|LessThan1~0_combout\,
	datad => \DRAM|new_sdram_controller_0|m_count[1]~0_combout\,
	combout => \DRAM|new_sdram_controller_0|m_count[1]~1_combout\);

-- Location: LCCOMB_X71_Y19_N12
\DRAM|new_sdram_controller_0|m_count[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|m_count[0]~7_combout\ = (\DRAM|new_sdram_controller_0|m_count[0]~5_combout\ & (((\DRAM|new_sdram_controller_0|m_count\(0))))) # (!\DRAM|new_sdram_controller_0|m_count[0]~5_combout\ & 
-- (!\DRAM|new_sdram_controller_0|Selector38~0_combout\ & ((!\DRAM|new_sdram_controller_0|m_count[1]~1_combout\) # (!\DRAM|new_sdram_controller_0|m_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000110110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_count[0]~5_combout\,
	datab => \DRAM|new_sdram_controller_0|Selector38~0_combout\,
	datac => \DRAM|new_sdram_controller_0|m_count\(0),
	datad => \DRAM|new_sdram_controller_0|m_count[1]~1_combout\,
	combout => \DRAM|new_sdram_controller_0|m_count[0]~7_combout\);

-- Location: FF_X71_Y19_N13
\DRAM|new_sdram_controller_0|m_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|m_count[0]~7_combout\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|m_count\(0));

-- Location: LCCOMB_X71_Y19_N20
\DRAM|new_sdram_controller_0|m_count[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|m_count[1]~2_combout\ = (\DRAM|new_sdram_controller_0|Selector38~0_combout\) # ((\DRAM|new_sdram_controller_0|m_count[1]~1_combout\ & (\DRAM|new_sdram_controller_0|m_count\(0) $ (!\DRAM|new_sdram_controller_0|m_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_count\(0),
	datab => \DRAM|new_sdram_controller_0|Selector38~0_combout\,
	datac => \DRAM|new_sdram_controller_0|m_count\(1),
	datad => \DRAM|new_sdram_controller_0|m_count[1]~1_combout\,
	combout => \DRAM|new_sdram_controller_0|m_count[1]~2_combout\);

-- Location: LCCOMB_X71_Y19_N26
\DRAM|new_sdram_controller_0|m_count[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|m_count[1]~6_combout\ = (\DRAM|new_sdram_controller_0|m_count[0]~5_combout\ & (\DRAM|new_sdram_controller_0|m_count\(1))) # (!\DRAM|new_sdram_controller_0|m_count[0]~5_combout\ & 
-- ((\DRAM|new_sdram_controller_0|m_count[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_count[0]~5_combout\,
	datac => \DRAM|new_sdram_controller_0|m_count\(1),
	datad => \DRAM|new_sdram_controller_0|m_count[1]~2_combout\,
	combout => \DRAM|new_sdram_controller_0|m_count[1]~6_combout\);

-- Location: FF_X71_Y19_N27
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

-- Location: LCCOMB_X71_Y19_N14
\DRAM|new_sdram_controller_0|LessThan1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|LessThan1~0_combout\ = (\DRAM|new_sdram_controller_0|m_count\(1)) # (\DRAM|new_sdram_controller_0|m_count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DRAM|new_sdram_controller_0|m_count\(1),
	datad => \DRAM|new_sdram_controller_0|m_count\(2),
	combout => \DRAM|new_sdram_controller_0|LessThan1~0_combout\);

-- Location: LCCOMB_X72_Y15_N20
\DRAM|new_sdram_controller_0|Selector29~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector29~1_combout\ = (\DRAM|new_sdram_controller_0|LessThan1~0_combout\ & ((\DRAM|new_sdram_controller_0|m_state.000100000~q\) # ((\DRAM|new_sdram_controller_0|Selector29~0_combout\ & 
-- \DRAM|new_sdram_controller_0|active_cs_n~q\)))) # (!\DRAM|new_sdram_controller_0|LessThan1~0_combout\ & (\DRAM|new_sdram_controller_0|Selector29~0_combout\ & ((\DRAM|new_sdram_controller_0|active_cs_n~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|LessThan1~0_combout\,
	datab => \DRAM|new_sdram_controller_0|Selector29~0_combout\,
	datac => \DRAM|new_sdram_controller_0|m_state.000100000~q\,
	datad => \DRAM|new_sdram_controller_0|active_cs_n~q\,
	combout => \DRAM|new_sdram_controller_0|Selector29~1_combout\);

-- Location: FF_X72_Y15_N21
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

-- Location: LCCOMB_X71_Y19_N16
\DRAM|new_sdram_controller_0|Selector30~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector30~0_combout\ = (\DRAM|new_sdram_controller_0|m_state.000100000~q\ & (((\DRAM|new_sdram_controller_0|refresh_request~q\ & \DRAM|new_sdram_controller_0|Selector25~4_combout\)) # 
-- (!\DRAM|new_sdram_controller_0|LessThan1~0_combout\))) # (!\DRAM|new_sdram_controller_0|m_state.000100000~q\ & (\DRAM|new_sdram_controller_0|refresh_request~q\ & (\DRAM|new_sdram_controller_0|Selector25~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_state.000100000~q\,
	datab => \DRAM|new_sdram_controller_0|refresh_request~q\,
	datac => \DRAM|new_sdram_controller_0|Selector25~4_combout\,
	datad => \DRAM|new_sdram_controller_0|LessThan1~0_combout\,
	combout => \DRAM|new_sdram_controller_0|Selector30~0_combout\);

-- Location: FF_X71_Y19_N17
\DRAM|new_sdram_controller_0|m_state.001000000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|Selector30~0_combout\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|m_state.001000000~q\);

-- Location: LCCOMB_X72_Y19_N26
\DRAM|new_sdram_controller_0|WideOr8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|WideOr8~0_combout\ = (!\DRAM|new_sdram_controller_0|m_state.010000000~q\ & (!\DRAM|new_sdram_controller_0|m_state.001000000~q\ & !\DRAM|new_sdram_controller_0|m_state.000000010~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DRAM|new_sdram_controller_0|m_state.010000000~q\,
	datac => \DRAM|new_sdram_controller_0|m_state.001000000~q\,
	datad => \DRAM|new_sdram_controller_0|m_state.000000010~q\,
	combout => \DRAM|new_sdram_controller_0|WideOr8~0_combout\);

-- Location: LCCOMB_X72_Y19_N28
\DRAM|new_sdram_controller_0|Selector26~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector26~0_combout\ = (\DRAM|new_sdram_controller_0|WideOr8~0_combout\ & (((!\DRAM|new_sdram_controller_0|Selector34~0_combout\ & !\DRAM|new_sdram_controller_0|m_state.100000000~q\)) # 
-- (!\DRAM|new_sdram_controller_0|refresh_request~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|WideOr8~0_combout\,
	datab => \DRAM|new_sdram_controller_0|refresh_request~q\,
	datac => \DRAM|new_sdram_controller_0|Selector34~0_combout\,
	datad => \DRAM|new_sdram_controller_0|m_state.100000000~q\,
	combout => \DRAM|new_sdram_controller_0|Selector26~0_combout\);

-- Location: LCCOMB_X72_Y19_N24
\DRAM|new_sdram_controller_0|Selector26~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector26~1_combout\ = ((\DRAM|new_sdram_controller_0|m_state.000000100~q\ & ((\DRAM|new_sdram_controller_0|LessThan1~0_combout\) # (\DRAM|new_sdram_controller_0|Selector34~0_combout\)))) # 
-- (!\DRAM|new_sdram_controller_0|Selector26~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|LessThan1~0_combout\,
	datab => \DRAM|new_sdram_controller_0|Selector34~0_combout\,
	datac => \DRAM|new_sdram_controller_0|m_state.000000100~q\,
	datad => \DRAM|new_sdram_controller_0|Selector26~0_combout\,
	combout => \DRAM|new_sdram_controller_0|Selector26~1_combout\);

-- Location: FF_X72_Y19_N25
\DRAM|new_sdram_controller_0|m_state.000000100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|Selector26~1_combout\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|m_state.000000100~q\);

-- Location: LCCOMB_X71_Y19_N8
\DRAM|new_sdram_controller_0|Selector36~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector36~2_combout\ = (\DRAM|new_sdram_controller_0|m_state.001000000~q\) # ((\DRAM|new_sdram_controller_0|m_state.000100000~q\) # (\DRAM|new_sdram_controller_0|m_state.000000100~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DRAM|new_sdram_controller_0|m_state.001000000~q\,
	datac => \DRAM|new_sdram_controller_0|m_state.000100000~q\,
	datad => \DRAM|new_sdram_controller_0|m_state.000000100~q\,
	combout => \DRAM|new_sdram_controller_0|Selector36~2_combout\);

-- Location: LCCOMB_X71_Y19_N10
\DRAM|new_sdram_controller_0|Selector36~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector36~3_combout\ = (\DRAM|new_sdram_controller_0|m_next.010000000~q\ & (((\DRAM|new_sdram_controller_0|Selector25~4_combout\) # (\DRAM|new_sdram_controller_0|Selector36~2_combout\)))) # 
-- (!\DRAM|new_sdram_controller_0|m_next.010000000~q\ & (\DRAM|new_sdram_controller_0|refresh_request~q\ & (\DRAM|new_sdram_controller_0|Selector25~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_next.010000000~q\,
	datab => \DRAM|new_sdram_controller_0|refresh_request~q\,
	datac => \DRAM|new_sdram_controller_0|Selector25~4_combout\,
	datad => \DRAM|new_sdram_controller_0|Selector36~2_combout\,
	combout => \DRAM|new_sdram_controller_0|Selector36~3_combout\);

-- Location: LCCOMB_X71_Y19_N6
\DRAM|new_sdram_controller_0|Selector36~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector36~4_combout\ = (\DRAM|new_sdram_controller_0|Selector36~3_combout\) # ((\DRAM|new_sdram_controller_0|m_next.010000000~q\ & ((\DRAM|new_sdram_controller_0|Selector36~0_combout\) # 
-- (\DRAM|new_sdram_controller_0|Selector36~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|Selector36~0_combout\,
	datab => \DRAM|new_sdram_controller_0|Selector36~1_combout\,
	datac => \DRAM|new_sdram_controller_0|m_next.010000000~q\,
	datad => \DRAM|new_sdram_controller_0|Selector36~3_combout\,
	combout => \DRAM|new_sdram_controller_0|Selector36~4_combout\);

-- Location: FF_X71_Y19_N7
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

-- Location: LCCOMB_X71_Y19_N2
\DRAM|new_sdram_controller_0|Selector31~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector31~1_combout\ = (\DRAM|new_sdram_controller_0|m_next.010000000~q\ & (!\DRAM|new_sdram_controller_0|m_count\(2) & (!\DRAM|new_sdram_controller_0|m_count\(1) & \DRAM|new_sdram_controller_0|m_state.000000100~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_next.010000000~q\,
	datab => \DRAM|new_sdram_controller_0|m_count\(2),
	datac => \DRAM|new_sdram_controller_0|m_count\(1),
	datad => \DRAM|new_sdram_controller_0|m_state.000000100~q\,
	combout => \DRAM|new_sdram_controller_0|Selector31~1_combout\);

-- Location: FF_X71_Y19_N3
\DRAM|new_sdram_controller_0|m_state.010000000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|Selector31~1_combout\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|m_state.010000000~q\);

-- Location: LCCOMB_X72_Y15_N22
\DRAM|new_sdram_controller_0|m_next~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|m_next~17_combout\ = (!\DRAM|new_sdram_controller_0|refresh_request~q\ & (((!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(1) & 
-- !\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(0))) # (!\DRAM|new_sdram_controller_0|active_cs_n~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|refresh_request~q\,
	datab => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(1),
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(0),
	datad => \DRAM|new_sdram_controller_0|active_cs_n~q\,
	combout => \DRAM|new_sdram_controller_0|m_next~17_combout\);

-- Location: LCCOMB_X72_Y19_N14
\DRAM|new_sdram_controller_0|Selector33~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector33~0_combout\ = (!\DRAM|new_sdram_controller_0|m_state.010000000~q\ & ((\DRAM|new_sdram_controller_0|m_next~17_combout\) # (!\DRAM|new_sdram_controller_0|m_state.100000000~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DRAM|new_sdram_controller_0|m_state.010000000~q\,
	datac => \DRAM|new_sdram_controller_0|m_state.100000000~q\,
	datad => \DRAM|new_sdram_controller_0|m_next~17_combout\,
	combout => \DRAM|new_sdram_controller_0|Selector33~0_combout\);

-- Location: LCCOMB_X72_Y19_N16
\DRAM|new_sdram_controller_0|Selector34~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector34~1_combout\ = (\DRAM|new_sdram_controller_0|m_state.000000001~q\ & (((!\DRAM|new_sdram_controller_0|Selector34~0_combout\)) # (!\DRAM|new_sdram_controller_0|refresh_request~q\))) # 
-- (!\DRAM|new_sdram_controller_0|m_state.000000001~q\ & (!\DRAM|new_sdram_controller_0|refresh_request~q\ & ((\DRAM|new_sdram_controller_0|init_done~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_state.000000001~q\,
	datab => \DRAM|new_sdram_controller_0|refresh_request~q\,
	datac => \DRAM|new_sdram_controller_0|Selector34~0_combout\,
	datad => \DRAM|new_sdram_controller_0|init_done~q\,
	combout => \DRAM|new_sdram_controller_0|Selector34~1_combout\);

-- Location: LCCOMB_X72_Y19_N6
\DRAM|new_sdram_controller_0|Selector34~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector34~2_combout\ = (\DRAM|new_sdram_controller_0|Selector33~0_combout\ & ((\DRAM|new_sdram_controller_0|m_state.000000010~q\) # ((\DRAM|new_sdram_controller_0|m_next.000001000~q\ & 
-- \DRAM|new_sdram_controller_0|Selector34~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_state.000000010~q\,
	datab => \DRAM|new_sdram_controller_0|Selector33~0_combout\,
	datac => \DRAM|new_sdram_controller_0|m_next.000001000~q\,
	datad => \DRAM|new_sdram_controller_0|Selector34~1_combout\,
	combout => \DRAM|new_sdram_controller_0|Selector34~2_combout\);

-- Location: FF_X72_Y19_N7
\DRAM|new_sdram_controller_0|m_next.000001000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|Selector34~2_combout\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|m_next.000001000~q\);

-- Location: LCCOMB_X74_Y19_N28
\DRAM|new_sdram_controller_0|Selector27~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector27~1_combout\ = ((\DRAM|new_sdram_controller_0|Selector31~0_combout\ & \DRAM|new_sdram_controller_0|m_next.000001000~q\)) # (!\DRAM|new_sdram_controller_0|Selector27~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|Selector27~0_combout\,
	datac => \DRAM|new_sdram_controller_0|Selector31~0_combout\,
	datad => \DRAM|new_sdram_controller_0|m_next.000001000~q\,
	combout => \DRAM|new_sdram_controller_0|Selector27~1_combout\);

-- Location: FF_X74_Y19_N29
\DRAM|new_sdram_controller_0|m_state.000001000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|Selector27~1_combout\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|m_state.000001000~q\);

-- Location: LCCOMB_X72_Y15_N18
\DRAM|new_sdram_controller_0|Selector36~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector36~0_combout\ = (\DRAM|new_sdram_controller_0|m_state.000001000~q\ & (((\DRAM|new_sdram_controller_0|active_cs_n~q\) # 
-- (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|Equal1~0_combout\)) # (!\DRAM|new_sdram_controller_0|refresh_request~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|refresh_request~q\,
	datab => \DRAM|new_sdram_controller_0|m_state.000001000~q\,
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|Equal1~0_combout\,
	datad => \DRAM|new_sdram_controller_0|active_cs_n~q\,
	combout => \DRAM|new_sdram_controller_0|Selector36~0_combout\);

-- Location: LCCOMB_X71_Y19_N22
\DRAM|new_sdram_controller_0|Selector37~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector37~0_combout\ = (\DRAM|new_sdram_controller_0|m_count\(1) & ((\DRAM|new_sdram_controller_0|m_state.000000100~q\) # ((\DRAM|new_sdram_controller_0|m_state.000100000~q\)))) # (!\DRAM|new_sdram_controller_0|m_count\(1) & 
-- (\DRAM|new_sdram_controller_0|m_count\(0) & ((\DRAM|new_sdram_controller_0|m_state.000000100~q\) # (\DRAM|new_sdram_controller_0|m_state.000100000~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_count\(1),
	datab => \DRAM|new_sdram_controller_0|m_state.000000100~q\,
	datac => \DRAM|new_sdram_controller_0|m_state.000100000~q\,
	datad => \DRAM|new_sdram_controller_0|m_count\(0),
	combout => \DRAM|new_sdram_controller_0|Selector37~0_combout\);

-- Location: LCCOMB_X72_Y19_N2
\DRAM|new_sdram_controller_0|Selector37~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector37~1_combout\ = (!\DRAM|new_sdram_controller_0|m_state.001000000~q\ & ((\DRAM|new_sdram_controller_0|m_state.000000001~q\) # ((\DRAM|new_sdram_controller_0|refresh_request~q\ & 
-- \DRAM|new_sdram_controller_0|init_done~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_state.001000000~q\,
	datab => \DRAM|new_sdram_controller_0|refresh_request~q\,
	datac => \DRAM|new_sdram_controller_0|m_state.000000001~q\,
	datad => \DRAM|new_sdram_controller_0|init_done~q\,
	combout => \DRAM|new_sdram_controller_0|Selector37~1_combout\);

-- Location: LCCOMB_X72_Y19_N4
\DRAM|new_sdram_controller_0|Selector37~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector37~2_combout\ = (!\DRAM|new_sdram_controller_0|Selector37~0_combout\ & (\DRAM|new_sdram_controller_0|Selector37~1_combout\ & ((!\DRAM|new_sdram_controller_0|m_state.100000000~q\) # 
-- (!\DRAM|new_sdram_controller_0|m_next~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|Selector37~0_combout\,
	datab => \DRAM|new_sdram_controller_0|m_next~17_combout\,
	datac => \DRAM|new_sdram_controller_0|m_state.100000000~q\,
	datad => \DRAM|new_sdram_controller_0|Selector37~1_combout\,
	combout => \DRAM|new_sdram_controller_0|Selector37~2_combout\);

-- Location: LCCOMB_X71_Y19_N24
\DRAM|new_sdram_controller_0|Selector37~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector37~3_combout\ = (\DRAM|new_sdram_controller_0|m_state.010000000~q\) # ((\DRAM|new_sdram_controller_0|m_count\(2) & ((\DRAM|new_sdram_controller_0|Selector36~0_combout\) # 
-- (!\DRAM|new_sdram_controller_0|Selector37~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|Selector36~0_combout\,
	datab => \DRAM|new_sdram_controller_0|m_state.010000000~q\,
	datac => \DRAM|new_sdram_controller_0|m_count\(2),
	datad => \DRAM|new_sdram_controller_0|Selector37~2_combout\,
	combout => \DRAM|new_sdram_controller_0|Selector37~3_combout\);

-- Location: FF_X71_Y19_N25
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

-- Location: LCCOMB_X71_Y19_N4
\DRAM|new_sdram_controller_0|Selector31~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector31~0_combout\ = (!\DRAM|new_sdram_controller_0|m_count\(2) & (!\DRAM|new_sdram_controller_0|m_count\(1) & \DRAM|new_sdram_controller_0|m_state.000000100~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DRAM|new_sdram_controller_0|m_count\(2),
	datac => \DRAM|new_sdram_controller_0|m_count\(1),
	datad => \DRAM|new_sdram_controller_0|m_state.000000100~q\,
	combout => \DRAM|new_sdram_controller_0|Selector31~0_combout\);

-- Location: LCCOMB_X72_Y19_N10
\DRAM|new_sdram_controller_0|Selector24~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector24~1_combout\ = (\DRAM|new_sdram_controller_0|m_state.001000000~q\) # ((\DRAM|new_sdram_controller_0|m_state.000000001~q\) # ((\DRAM|new_sdram_controller_0|m_state.010000000~q\) # 
-- (\DRAM|new_sdram_controller_0|m_state.000000010~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_state.001000000~q\,
	datab => \DRAM|new_sdram_controller_0|m_state.000000001~q\,
	datac => \DRAM|new_sdram_controller_0|m_state.010000000~q\,
	datad => \DRAM|new_sdram_controller_0|m_state.000000010~q\,
	combout => \DRAM|new_sdram_controller_0|Selector24~1_combout\);

-- Location: LCCOMB_X74_Y19_N26
\DRAM|new_sdram_controller_0|Selector24~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector24~0_combout\ = (\DRAM|new_sdram_controller_0|init_done~q\ & ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|Equal1~0_combout\) # 
-- ((\DRAM|new_sdram_controller_0|refresh_request~q\) # (\DRAM|new_sdram_controller_0|m_state.000001000~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|Equal1~0_combout\,
	datab => \DRAM|new_sdram_controller_0|refresh_request~q\,
	datac => \DRAM|new_sdram_controller_0|init_done~q\,
	datad => \DRAM|new_sdram_controller_0|m_state.000001000~q\,
	combout => \DRAM|new_sdram_controller_0|Selector24~0_combout\);

-- Location: LCCOMB_X72_Y19_N18
\DRAM|new_sdram_controller_0|Selector33~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector33~1_combout\ = (\DRAM|new_sdram_controller_0|m_state.100000000~q\) # ((\DRAM|new_sdram_controller_0|m_state.000000100~q\) # ((\DRAM|new_sdram_controller_0|m_state.000001000~q\) # 
-- (\DRAM|new_sdram_controller_0|m_state.000100000~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_state.100000000~q\,
	datab => \DRAM|new_sdram_controller_0|m_state.000000100~q\,
	datac => \DRAM|new_sdram_controller_0|m_state.000001000~q\,
	datad => \DRAM|new_sdram_controller_0|m_state.000100000~q\,
	combout => \DRAM|new_sdram_controller_0|Selector33~1_combout\);

-- Location: LCCOMB_X72_Y19_N12
\DRAM|new_sdram_controller_0|Selector33~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector33~2_combout\ = (\DRAM|new_sdram_controller_0|m_state.001000000~q\) # ((\DRAM|new_sdram_controller_0|Selector33~1_combout\) # ((!\DRAM|new_sdram_controller_0|m_state.000000001~q\ & 
-- !\DRAM|new_sdram_controller_0|refresh_request~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_state.001000000~q\,
	datab => \DRAM|new_sdram_controller_0|m_state.000000001~q\,
	datac => \DRAM|new_sdram_controller_0|refresh_request~q\,
	datad => \DRAM|new_sdram_controller_0|Selector33~1_combout\,
	combout => \DRAM|new_sdram_controller_0|Selector33~2_combout\);

-- Location: LCCOMB_X72_Y19_N30
\DRAM|new_sdram_controller_0|Selector33~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector33~3_combout\ = (\DRAM|new_sdram_controller_0|Selector33~2_combout\ & (((!\DRAM|new_sdram_controller_0|m_state.000000001~q\ & !\DRAM|new_sdram_controller_0|init_done~q\)) # 
-- (!\DRAM|new_sdram_controller_0|m_next.000000001~q\))) # (!\DRAM|new_sdram_controller_0|Selector33~2_combout\ & (((!\DRAM|new_sdram_controller_0|m_state.000000001~q\ & !\DRAM|new_sdram_controller_0|init_done~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|Selector33~2_combout\,
	datab => \DRAM|new_sdram_controller_0|m_next.000000001~q\,
	datac => \DRAM|new_sdram_controller_0|m_state.000000001~q\,
	datad => \DRAM|new_sdram_controller_0|init_done~q\,
	combout => \DRAM|new_sdram_controller_0|Selector33~3_combout\);

-- Location: LCCOMB_X72_Y19_N0
\DRAM|new_sdram_controller_0|Selector33~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector33~4_combout\ = (!\DRAM|new_sdram_controller_0|Selector33~3_combout\ & (\DRAM|new_sdram_controller_0|Selector33~0_combout\ & ((!\DRAM|new_sdram_controller_0|Selector34~0_combout\) # 
-- (!\DRAM|new_sdram_controller_0|refresh_request~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|Selector33~3_combout\,
	datab => \DRAM|new_sdram_controller_0|Selector33~0_combout\,
	datac => \DRAM|new_sdram_controller_0|refresh_request~q\,
	datad => \DRAM|new_sdram_controller_0|Selector34~0_combout\,
	combout => \DRAM|new_sdram_controller_0|Selector33~4_combout\);

-- Location: FF_X72_Y19_N1
\DRAM|new_sdram_controller_0|m_next.000000001\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|Selector33~4_combout\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|m_next.000000001~q\);

-- Location: LCCOMB_X74_Y19_N14
\DRAM|new_sdram_controller_0|Selector24~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector24~2_combout\ = (\DRAM|new_sdram_controller_0|Selector31~0_combout\ & (((\DRAM|new_sdram_controller_0|m_next.000000001~q\)))) # (!\DRAM|new_sdram_controller_0|Selector31~0_combout\ & 
-- ((\DRAM|new_sdram_controller_0|Selector24~1_combout\) # ((\DRAM|new_sdram_controller_0|Selector24~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|Selector31~0_combout\,
	datab => \DRAM|new_sdram_controller_0|Selector24~1_combout\,
	datac => \DRAM|new_sdram_controller_0|Selector24~0_combout\,
	datad => \DRAM|new_sdram_controller_0|m_next.000000001~q\,
	combout => \DRAM|new_sdram_controller_0|Selector24~2_combout\);

-- Location: FF_X74_Y19_N15
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

-- Location: LCCOMB_X74_Y19_N20
\DRAM|new_sdram_controller_0|Selector23~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector23~0_combout\ = (\DRAM|new_sdram_controller_0|m_state.000000001~q\ & (((\DRAM|new_sdram_controller_0|ack_refresh_request~q\) # (\DRAM|new_sdram_controller_0|m_state.010000000~q\)))) # 
-- (!\DRAM|new_sdram_controller_0|m_state.000000001~q\ & (!\DRAM|new_sdram_controller_0|init_done~q\ & (\DRAM|new_sdram_controller_0|ack_refresh_request~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_state.000000001~q\,
	datab => \DRAM|new_sdram_controller_0|init_done~q\,
	datac => \DRAM|new_sdram_controller_0|ack_refresh_request~q\,
	datad => \DRAM|new_sdram_controller_0|m_state.010000000~q\,
	combout => \DRAM|new_sdram_controller_0|Selector23~0_combout\);

-- Location: FF_X74_Y19_N21
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

-- Location: LCCOMB_X74_Y19_N2
\DRAM|new_sdram_controller_0|refresh_request~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|refresh_request~0_combout\ = (\DRAM|new_sdram_controller_0|init_done~q\ & (!\DRAM|new_sdram_controller_0|ack_refresh_request~q\ & ((\DRAM|new_sdram_controller_0|refresh_request~q\) # 
-- (\DRAM|new_sdram_controller_0|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|init_done~q\,
	datab => \DRAM|new_sdram_controller_0|ack_refresh_request~q\,
	datac => \DRAM|new_sdram_controller_0|refresh_request~q\,
	datad => \DRAM|new_sdram_controller_0|Equal0~4_combout\,
	combout => \DRAM|new_sdram_controller_0|refresh_request~0_combout\);

-- Location: FF_X74_Y19_N3
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

-- Location: LCCOMB_X72_Y15_N14
\DRAM|new_sdram_controller_0|Selector41~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector41~0_combout\ = ((!\DRAM|new_sdram_controller_0|refresh_request~q\ & (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|Equal1~0_combout\ & 
-- \DRAM|new_sdram_controller_0|Selector25~4_combout\))) # (!\DRAM|new_sdram_controller_0|Selector27~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|refresh_request~q\,
	datab => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|Equal1~0_combout\,
	datac => \DRAM|new_sdram_controller_0|Selector27~0_combout\,
	datad => \DRAM|new_sdram_controller_0|Selector25~4_combout\,
	combout => \DRAM|new_sdram_controller_0|Selector41~0_combout\);

-- Location: FF_X72_Y15_N15
\DRAM|new_sdram_controller_0|f_pop\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|Selector41~0_combout\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|f_pop~q\);

-- Location: LCCOMB_X72_Y15_N16
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries[1]~0_combout\ = (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(0) & 
-- (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(1) $ (((\DRAM|new_sdram_controller_0|active_cs_n~q\) # (!\DRAM|new_sdram_controller_0|f_pop~q\))))) # 
-- (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(0) & (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(1) & ((\DRAM|new_sdram_controller_0|active_cs_n~q\) # 
-- (!\DRAM|new_sdram_controller_0|f_pop~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(0),
	datab => \DRAM|new_sdram_controller_0|f_pop~q\,
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(1),
	datad => \DRAM|new_sdram_controller_0|active_cs_n~q\,
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries[1]~0_combout\);

-- Location: FF_X72_Y15_N17
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

-- Location: LCCOMB_X72_Y15_N2
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries[0]~1_combout\ = (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(1) & (\DRAM|new_sdram_controller_0|f_pop~q\ & 
-- ((!\DRAM|new_sdram_controller_0|active_cs_n~q\)))) # (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(1) & (((\DRAM|new_sdram_controller_0|f_pop~q\ & !\DRAM|new_sdram_controller_0|active_cs_n~q\)) # 
-- (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(1),
	datab => \DRAM|new_sdram_controller_0|f_pop~q\,
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(0),
	datad => \DRAM|new_sdram_controller_0|active_cs_n~q\,
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries[0]~1_combout\);

-- Location: FF_X72_Y15_N3
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

-- Location: LCCOMB_X72_Y15_N24
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|Equal1~0_combout\ = (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(0)) # 
-- (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(0),
	datad => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(1),
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|Equal1~0_combout\);

-- Location: LCCOMB_X74_Y19_N10
\DRAM|new_sdram_controller_0|Selector25~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector25~5_combout\ = (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|Equal1~0_combout\ & (\DRAM|new_sdram_controller_0|init_done~q\ & (!\DRAM|new_sdram_controller_0|m_state.000000001~q\ 
-- & !\DRAM|new_sdram_controller_0|refresh_request~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|Equal1~0_combout\,
	datab => \DRAM|new_sdram_controller_0|init_done~q\,
	datac => \DRAM|new_sdram_controller_0|m_state.000000001~q\,
	datad => \DRAM|new_sdram_controller_0|refresh_request~q\,
	combout => \DRAM|new_sdram_controller_0|Selector25~5_combout\);

-- Location: FF_X74_Y19_N11
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

-- Location: FF_X74_Y19_N17
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

-- Location: LCCOMB_X74_Y19_N16
\DRAM|new_sdram_controller_0|Selector98~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector98~0_combout\ = (!\DRAM|new_sdram_controller_0|m_state.000000010~q\ & (!\DRAM|new_sdram_controller_0|i_addr\(12) & !\DRAM|new_sdram_controller_0|m_state.000001000~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_state.000000010~q\,
	datac => \DRAM|new_sdram_controller_0|i_addr\(12),
	datad => \DRAM|new_sdram_controller_0|m_state.000001000~q\,
	combout => \DRAM|new_sdram_controller_0|Selector98~0_combout\);

-- Location: LCCOMB_X71_Y19_N28
\DRAM|new_sdram_controller_0|m_addr[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|m_addr[1]~2_combout\ = (!\DRAM|new_sdram_controller_0|m_state.010000000~q\ & (!\DRAM|new_sdram_controller_0|m_state.100000000~q\ & (!\DRAM|new_sdram_controller_0|m_state.000100000~q\ & 
-- !\DRAM|new_sdram_controller_0|m_state.000000100~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_state.010000000~q\,
	datab => \DRAM|new_sdram_controller_0|m_state.100000000~q\,
	datac => \DRAM|new_sdram_controller_0|m_state.000100000~q\,
	datad => \DRAM|new_sdram_controller_0|m_state.000000100~q\,
	combout => \DRAM|new_sdram_controller_0|m_addr[1]~2_combout\);

-- Location: LCCOMB_X77_Y19_N2
\DRAM|new_sdram_controller_0|m_addr[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|m_addr[1]~3_combout\ = (\DRAM|new_sdram_controller_0|m_addr[1]~2_combout\ & ((\DRAM|new_sdram_controller_0|m_state.000000001~q\) # (!\DRAM|new_sdram_controller_0|init_done~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DRAM|new_sdram_controller_0|m_state.000000001~q\,
	datac => \DRAM|new_sdram_controller_0|m_addr[1]~2_combout\,
	datad => \DRAM|new_sdram_controller_0|init_done~q\,
	combout => \DRAM|new_sdram_controller_0|m_addr[1]~3_combout\);

-- Location: DDIOOUTCELL_X78_Y3_N18
\DRAM|new_sdram_controller_0|m_addr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|Selector98~0_combout\,
	asdata => VCC,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sload => \DRAM|new_sdram_controller_0|m_state.001000000~q\,
	ena => \DRAM|new_sdram_controller_0|m_addr[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|m_addr\(0));

-- Location: DDIOOUTCELL_X78_Y16_N26
\DRAM|new_sdram_controller_0|m_addr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|Selector98~0_combout\,
	asdata => VCC,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sload => \DRAM|new_sdram_controller_0|m_state.001000000~q\,
	ena => \DRAM|new_sdram_controller_0|m_addr[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|m_addr\(1));

-- Location: DDIOOUTCELL_X78_Y15_N25
\DRAM|new_sdram_controller_0|m_addr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|Selector98~0_combout\,
	asdata => VCC,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sload => \DRAM|new_sdram_controller_0|m_state.001000000~q\,
	ena => \DRAM|new_sdram_controller_0|m_addr[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|m_addr\(2));

-- Location: DDIOOUTCELL_X78_Y3_N25
\DRAM|new_sdram_controller_0|m_addr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|Selector98~0_combout\,
	asdata => VCC,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sload => \DRAM|new_sdram_controller_0|m_state.001000000~q\,
	ena => \DRAM|new_sdram_controller_0|m_addr[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|m_addr\(3));

-- Location: DDIOOUTCELL_X78_Y15_N18
\DRAM|new_sdram_controller_0|m_addr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|Selector98~0_combout\,
	asdata => VCC,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sload => \DRAM|new_sdram_controller_0|m_state.001000000~q\,
	ena => \DRAM|new_sdram_controller_0|m_addr[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|m_addr\(4));

-- Location: FF_X77_Y19_N17
\DRAM|new_sdram_controller_0|m_addr[5]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|Selector93~1_combout\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|m_addr[5]~_Duplicate_1_q\);

-- Location: LCCOMB_X77_Y19_N10
\DRAM|new_sdram_controller_0|Selector93~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector93~0_combout\ = (\DRAM|new_sdram_controller_0|m_state.001000000~q\) # ((!\DRAM|new_sdram_controller_0|m_state.000000001~q\ & ((\DRAM|new_sdram_controller_0|m_addr[5]~_Duplicate_1_q\) # 
-- (!\DRAM|new_sdram_controller_0|init_done~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|init_done~q\,
	datab => \DRAM|new_sdram_controller_0|m_state.001000000~q\,
	datac => \DRAM|new_sdram_controller_0|m_state.000000001~q\,
	datad => \DRAM|new_sdram_controller_0|m_addr[5]~_Duplicate_1_q\,
	combout => \DRAM|new_sdram_controller_0|Selector93~0_combout\);

-- Location: LCCOMB_X77_Y19_N16
\DRAM|new_sdram_controller_0|Selector93~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector93~1_combout\ = (\DRAM|new_sdram_controller_0|Selector93~0_combout\) # ((!\DRAM|new_sdram_controller_0|m_addr[1]~2_combout\ & \DRAM|new_sdram_controller_0|m_addr[5]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_addr[1]~2_combout\,
	datac => \DRAM|new_sdram_controller_0|m_addr[5]~_Duplicate_1_q\,
	datad => \DRAM|new_sdram_controller_0|Selector93~0_combout\,
	combout => \DRAM|new_sdram_controller_0|Selector93~1_combout\);

-- Location: DDIOOUTCELL_X78_Y20_N18
\DRAM|new_sdram_controller_0|m_addr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|Selector93~1_combout\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|m_addr\(5));

-- Location: DDIOOUTCELL_X78_Y20_N26
\DRAM|new_sdram_controller_0|m_addr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|Selector98~0_combout\,
	asdata => VCC,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sload => \DRAM|new_sdram_controller_0|m_state.001000000~q\,
	ena => \DRAM|new_sdram_controller_0|m_addr[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|m_addr\(6));

-- Location: DDIOOUTCELL_X78_Y24_N26
\DRAM|new_sdram_controller_0|m_addr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|Selector98~0_combout\,
	asdata => VCC,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sload => \DRAM|new_sdram_controller_0|m_state.001000000~q\,
	ena => \DRAM|new_sdram_controller_0|m_addr[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|m_addr\(7));

-- Location: DDIOOUTCELL_X78_Y24_N18
\DRAM|new_sdram_controller_0|m_addr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|Selector98~0_combout\,
	asdata => VCC,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sload => \DRAM|new_sdram_controller_0|m_state.001000000~q\,
	ena => \DRAM|new_sdram_controller_0|m_addr[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|m_addr\(8));

-- Location: DDIOOUTCELL_X78_Y24_N11
\DRAM|new_sdram_controller_0|m_addr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|Selector98~0_combout\,
	asdata => VCC,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sload => \DRAM|new_sdram_controller_0|m_state.001000000~q\,
	ena => \DRAM|new_sdram_controller_0|m_addr[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|m_addr\(9));

-- Location: LCCOMB_X74_Y19_N18
\DRAM|new_sdram_controller_0|Selector88~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector88~0_combout\ = (\DRAM|new_sdram_controller_0|m_state.001000000~q\) # ((!\DRAM|new_sdram_controller_0|m_state.000000010~q\ & (!\DRAM|new_sdram_controller_0|i_addr\(12) & 
-- !\DRAM|new_sdram_controller_0|m_state.000001000~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_state.000000010~q\,
	datab => \DRAM|new_sdram_controller_0|i_addr\(12),
	datac => \DRAM|new_sdram_controller_0|m_state.001000000~q\,
	datad => \DRAM|new_sdram_controller_0|m_state.000001000~q\,
	combout => \DRAM|new_sdram_controller_0|Selector88~0_combout\);

-- Location: DDIOOUTCELL_X78_Y20_N11
\DRAM|new_sdram_controller_0|m_addr[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|Selector88~0_combout\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	ena => \DRAM|new_sdram_controller_0|m_addr[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|m_addr\(10));

-- Location: DDIOOUTCELL_X78_Y24_N4
\DRAM|new_sdram_controller_0|m_addr[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|Selector88~0_combout\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	ena => \DRAM|new_sdram_controller_0|m_addr[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|m_addr\(11));

-- Location: DDIOOUTCELL_X78_Y20_N4
\DRAM|new_sdram_controller_0|m_addr[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|Selector88~0_combout\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	ena => \DRAM|new_sdram_controller_0|m_addr[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|m_addr\(12));

-- Location: LCCOMB_X74_Y21_N28
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

-- Location: LCCOMB_X74_Y21_N8
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

-- Location: FF_X74_Y21_N9
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

-- Location: LCCOMB_X74_Y19_N12
\DRAM|new_sdram_controller_0|Selector21~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector21~0_combout\ = (!\DRAM|new_sdram_controller_0|m_state.000000001~q\ & ((\DRAM|new_sdram_controller_0|init_done~q\) # (!\DRAM|new_sdram_controller_0|i_cmd\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|i_cmd\(1),
	datab => \DRAM|new_sdram_controller_0|init_done~q\,
	datac => \DRAM|new_sdram_controller_0|m_state.000000001~q\,
	combout => \DRAM|new_sdram_controller_0|Selector21~0_combout\);

-- Location: LCCOMB_X74_Y19_N22
\DRAM|new_sdram_controller_0|Selector21~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector21~1_combout\ = (\DRAM|new_sdram_controller_0|Selector21~0_combout\) # ((!\DRAM|new_sdram_controller_0|m_state.000001000~q\ & (\DRAM|new_sdram_controller_0|m_state.000000001~q\ & 
-- !\DRAM|new_sdram_controller_0|m_state.010000000~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|Selector21~0_combout\,
	datab => \DRAM|new_sdram_controller_0|m_state.000001000~q\,
	datac => \DRAM|new_sdram_controller_0|m_state.000000001~q\,
	datad => \DRAM|new_sdram_controller_0|m_state.010000000~q\,
	combout => \DRAM|new_sdram_controller_0|Selector21~1_combout\);

-- Location: LCCOMB_X72_Y15_N30
\DRAM|new_sdram_controller_0|Selector21~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector21~2_combout\ = (!\DRAM|new_sdram_controller_0|Selector21~1_combout\ & ((\DRAM|new_sdram_controller_0|pending~combout\) # ((!\DRAM|new_sdram_controller_0|m_state.000001000~q\) # 
-- (!\DRAM|new_sdram_controller_0|f_pop~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|Selector21~1_combout\,
	datab => \DRAM|new_sdram_controller_0|pending~combout\,
	datac => \DRAM|new_sdram_controller_0|f_pop~q\,
	datad => \DRAM|new_sdram_controller_0|m_state.000001000~q\,
	combout => \DRAM|new_sdram_controller_0|Selector21~2_combout\);

-- Location: DDIOOUTCELL_X78_Y21_N25
\DRAM|new_sdram_controller_0|m_cmd[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "high")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|ALT_INV_Selector21~2_combout\,
	asdata => VCC,
	aload => \DRAM|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|m_cmd\(1));

-- Location: LCCOMB_X74_Y19_N30
\DRAM|new_sdram_controller_0|Selector19~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector19~2_combout\ = (\DRAM|new_sdram_controller_0|m_state.000000100~q\ & (((\DRAM|new_sdram_controller_0|m_state.001000000~q\ & !\DRAM|new_sdram_controller_0|refresh_request~q\)) # 
-- (!\DRAM|new_sdram_controller_0|m_next.010000000~q\))) # (!\DRAM|new_sdram_controller_0|m_state.000000100~q\ & (((\DRAM|new_sdram_controller_0|m_state.001000000~q\ & !\DRAM|new_sdram_controller_0|refresh_request~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_state.000000100~q\,
	datab => \DRAM|new_sdram_controller_0|m_next.010000000~q\,
	datac => \DRAM|new_sdram_controller_0|m_state.001000000~q\,
	datad => \DRAM|new_sdram_controller_0|refresh_request~q\,
	combout => \DRAM|new_sdram_controller_0|Selector19~2_combout\);

-- Location: LCCOMB_X74_Y19_N4
\DRAM|new_sdram_controller_0|Selector19~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector19~1_combout\ = (!\DRAM|new_sdram_controller_0|m_state.001000000~q\ & (\DRAM|new_sdram_controller_0|m_state.000000001~q\ & (!\DRAM|new_sdram_controller_0|m_state.000000100~q\ & 
-- !\DRAM|new_sdram_controller_0|m_state.010000000~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_state.001000000~q\,
	datab => \DRAM|new_sdram_controller_0|m_state.000000001~q\,
	datac => \DRAM|new_sdram_controller_0|m_state.000000100~q\,
	datad => \DRAM|new_sdram_controller_0|m_state.010000000~q\,
	combout => \DRAM|new_sdram_controller_0|Selector19~1_combout\);

-- Location: LCCOMB_X74_Y21_N2
\DRAM|new_sdram_controller_0|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector0~0_combout\ = (\DRAM|new_sdram_controller_0|i_state.000~q\ & ((\DRAM|new_sdram_controller_0|i_cmd\(3)) # (!\DRAM|new_sdram_controller_0|i_state.101~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DRAM|new_sdram_controller_0|i_state.101~q\,
	datac => \DRAM|new_sdram_controller_0|i_cmd\(3),
	datad => \DRAM|new_sdram_controller_0|i_state.000~q\,
	combout => \DRAM|new_sdram_controller_0|Selector0~0_combout\);

-- Location: FF_X74_Y21_N3
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

-- Location: LCCOMB_X75_Y19_N18
\DRAM|new_sdram_controller_0|Selector19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector19~0_combout\ = (!\DRAM|new_sdram_controller_0|m_state.000000001~q\ & ((\DRAM|new_sdram_controller_0|init_done~q\ & ((!\DRAM|new_sdram_controller_0|refresh_request~q\))) # (!\DRAM|new_sdram_controller_0|init_done~q\ & 
-- (!\DRAM|new_sdram_controller_0|i_cmd\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_state.000000001~q\,
	datab => \DRAM|new_sdram_controller_0|i_cmd\(3),
	datac => \DRAM|new_sdram_controller_0|init_done~q\,
	datad => \DRAM|new_sdram_controller_0|refresh_request~q\,
	combout => \DRAM|new_sdram_controller_0|Selector19~0_combout\);

-- Location: LCCOMB_X74_Y19_N8
\DRAM|new_sdram_controller_0|Selector19~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector19~3_combout\ = (!\DRAM|new_sdram_controller_0|Selector19~0_combout\ & (((!\DRAM|new_sdram_controller_0|Selector19~2_combout\ & !\DRAM|new_sdram_controller_0|Selector19~1_combout\)) # 
-- (!\DRAM|new_sdram_controller_0|active_cs_n~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|Selector19~2_combout\,
	datab => \DRAM|new_sdram_controller_0|active_cs_n~q\,
	datac => \DRAM|new_sdram_controller_0|Selector19~1_combout\,
	datad => \DRAM|new_sdram_controller_0|Selector19~0_combout\,
	combout => \DRAM|new_sdram_controller_0|Selector19~3_combout\);

-- Location: DDIOOUTCELL_X78_Y17_N18
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

-- Location: LCCOMB_X74_Y21_N12
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

-- Location: FF_X74_Y21_N13
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

-- Location: LCCOMB_X72_Y19_N20
\DRAM|new_sdram_controller_0|Selector20~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector20~0_combout\ = (\DRAM|new_sdram_controller_0|m_state.000000001~q\ & (((!\DRAM|new_sdram_controller_0|WideOr8~0_combout\)))) # (!\DRAM|new_sdram_controller_0|m_state.000000001~q\ & 
-- (\DRAM|new_sdram_controller_0|i_cmd\(2) & ((!\DRAM|new_sdram_controller_0|init_done~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|i_cmd\(2),
	datab => \DRAM|new_sdram_controller_0|m_state.000000001~q\,
	datac => \DRAM|new_sdram_controller_0|WideOr8~0_combout\,
	datad => \DRAM|new_sdram_controller_0|init_done~q\,
	combout => \DRAM|new_sdram_controller_0|Selector20~0_combout\);

-- Location: DDIOOUTCELL_X78_Y21_N18
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

-- Location: LCCOMB_X74_Y21_N6
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

-- Location: FF_X74_Y21_N7
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

-- Location: LCCOMB_X77_Y19_N12
\DRAM|new_sdram_controller_0|Selector22~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector22~0_combout\ = (\DRAM|new_sdram_controller_0|m_state.000000001~q\ & (((\DRAM|new_sdram_controller_0|m_state.001000000~q\)))) # (!\DRAM|new_sdram_controller_0|m_state.000000001~q\ & 
-- (\DRAM|new_sdram_controller_0|i_cmd\(0) & ((!\DRAM|new_sdram_controller_0|init_done~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|i_cmd\(0),
	datab => \DRAM|new_sdram_controller_0|m_state.001000000~q\,
	datac => \DRAM|new_sdram_controller_0|m_state.000000001~q\,
	datad => \DRAM|new_sdram_controller_0|init_done~q\,
	combout => \DRAM|new_sdram_controller_0|Selector22~0_combout\);

-- Location: DDIOOUTCELL_X78_Y17_N25
\DRAM|new_sdram_controller_0|m_cmd[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "high")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|ALT_INV_Selector22~0_combout\,
	asdata => VCC,
	aload => \DRAM|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|m_cmd\(0));

-- Location: IOIBUF_X56_Y0_N22
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

-- Location: IOIBUF_X78_Y44_N23
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

-- Location: IOIBUF_X62_Y0_N15
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

-- Location: IOIBUF_X78_Y31_N8
\DRAM_DQ[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(12),
	o => \DRAM_DQ[12]~input_o\);

-- Location: IOIBUF_X78_Y31_N22
\DRAM_DQ[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(13),
	o => \DRAM_DQ[13]~input_o\);

-- Location: IOIBUF_X78_Y31_N15
\DRAM_DQ[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(14),
	o => \DRAM_DQ[14]~input_o\);

-- Location: IOIBUF_X78_Y31_N1
\DRAM_DQ[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(15),
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


