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

-- DATE "10/22/2022 18:00:39"

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
USE IEEE.NUMERIC_STD.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ADCtst IS
    PORT (
	CLK : IN std_logic;
	ADCLK : IN std_logic;
	RESET : IN std_logic;
	leds : OUT IEEE.NUMERIC_STD.unsigned(11 DOWNTO 0);
	display0 : OUT std_logic_vector(7 DOWNTO 0);
	display1 : OUT std_logic_vector(7 DOWNTO 0);
	display2 : OUT std_logic_vector(7 DOWNTO 0)
	);
END ADCtst;

-- Design Ports Information
-- leds[0]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[1]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[2]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[3]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[4]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[5]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[6]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[7]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[8]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[9]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[10]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[11]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- CLK	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADCLK	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ADCtst IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_ADCLK : std_logic;
SIGNAL ww_RESET : std_logic;
SIGNAL ww_leds : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_display0 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_display1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_display2 : std_logic_vector(7 DOWNTO 0);
SIGNAL \u0|modular_adc_0|control_internal|adc_inst|adcblock_instance|primitive_instance_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \u0|modular_adc_0|control_internal|adc_inst|adcblock_instance|primitive_instance_DOUT_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \u0|altpll_0|sd1|pll7_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \u0|altpll_0|sd1|pll7_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ADCLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \ADCLK~input_o\ : std_logic;
SIGNAL \ADCLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \u0|modular_adc_0|control_internal|u_control_fsm|int_timer[0]~8_combout\ : std_logic;
SIGNAL \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain[1]~feeder_combout\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\ : std_logic;
SIGNAL \u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PUTRESP_DLY1~q\ : std_logic;
SIGNAL \u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PUTRESP_DLY2~feeder_combout\ : std_logic;
SIGNAL \u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PUTRESP_DLY2~q\ : std_logic;
SIGNAL \u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PUTRESP_DLY3~feeder_combout\ : std_logic;
SIGNAL \u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PUTRESP_DLY3~q\ : std_logic;
SIGNAL \u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRUP_CH~q\ : std_logic;
SIGNAL \u0|modular_adc_0|control_internal|u_control_fsm|Selector5~0_combout\ : std_logic;
SIGNAL \u0|modular_adc_0|control_internal|u_control_fsm|Selector5~1_combout\ : std_logic;
SIGNAL \u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRUP_SOC~q\ : std_logic;
SIGNAL \u0|modular_adc_0|control_internal|u_control_fsm|Selector7~0_combout\ : std_logic;
SIGNAL \u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.GETCMD~q\ : std_logic;
SIGNAL \u0|modular_adc_0|control_internal|u_control_fsm|Selector9~0_combout\ : std_logic;
SIGNAL \u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.CONV~q\ : std_logic;
SIGNAL \u0|modular_adc_0|control_internal|u_control_fsm|arc_to_conv~0_combout\ : std_logic;
SIGNAL \u0|altpll_0|sd1|wire_pll7_fbout\ : std_logic;
SIGNAL \u0|altpll_0|sd1|wire_pll7_locked\ : std_logic;
SIGNAL \u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.IDLE~0_combout\ : std_logic;
SIGNAL \u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.IDLE~q\ : std_logic;
SIGNAL \u0|modular_adc_0|control_internal|u_control_fsm|Selector1~0_combout\ : std_logic;
SIGNAL \u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN~q\ : std_logic;
SIGNAL \u0|modular_adc_0|control_internal|u_control_fsm|int_timer[6]~24_combout\ : std_logic;
SIGNAL \u0|modular_adc_0|control_internal|u_control_fsm|int_timer[0]~9\ : std_logic;
SIGNAL \u0|modular_adc_0|control_internal|u_control_fsm|int_timer[1]~10_combout\ : std_logic;
SIGNAL \u0|modular_adc_0|control_internal|u_control_fsm|int_timer[1]~11\ : std_logic;
SIGNAL \u0|modular_adc_0|control_internal|u_control_fsm|int_timer[2]~12_combout\ : std_logic;
SIGNAL \u0|modular_adc_0|control_internal|u_control_fsm|int_timer[2]~13\ : std_logic;
SIGNAL \u0|modular_adc_0|control_internal|u_control_fsm|int_timer[3]~14_combout\ : std_logic;
SIGNAL \u0|modular_adc_0|control_internal|u_control_fsm|int_timer[3]~15\ : std_logic;
SIGNAL \u0|modular_adc_0|control_internal|u_control_fsm|int_timer[4]~16_combout\ : std_logic;
SIGNAL \u0|modular_adc_0|control_internal|u_control_fsm|int_timer[4]~17\ : std_logic;
SIGNAL \u0|modular_adc_0|control_internal|u_control_fsm|int_timer[5]~18_combout\ : std_logic;
SIGNAL \u0|modular_adc_0|control_internal|u_control_fsm|int_timer[5]~19\ : std_logic;
SIGNAL \u0|modular_adc_0|control_internal|u_control_fsm|int_timer[6]~20_combout\ : std_logic;
SIGNAL \u0|modular_adc_0|control_internal|u_control_fsm|int_timer[6]~21\ : std_logic;
SIGNAL \u0|modular_adc_0|control_internal|u_control_fsm|int_timer[7]~22_combout\ : std_logic;
SIGNAL \u0|modular_adc_0|control_internal|u_control_fsm|Selector2~0_combout\ : std_logic;
SIGNAL \u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN_TSEN~q\ : std_logic;
SIGNAL \u0|modular_adc_0|control_internal|u_control_fsm|Selector18~0_combout\ : std_logic;
SIGNAL \u0|modular_adc_0|control_internal|u_control_fsm|Selector15~2_combout\ : std_logic;
SIGNAL \u0|modular_adc_0|control_internal|u_control_fsm|WideOr12~0_combout\ : std_logic;
SIGNAL \u0|modular_adc_0|control_internal|u_control_fsm|WideOr17~combout\ : std_logic;
SIGNAL \u0|modular_adc_0|control_internal|u_control_fsm|Selector18~1_combout\ : std_logic;
SIGNAL \u0|modular_adc_0|control_internal|u_control_fsm|usr_pwd~q\ : std_logic;
SIGNAL \u0|modular_adc_0|control_internal|u_control_fsm|usr_pwd~_wirecell_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \u0|modular_adc_0|control_internal|u_control_fsm|Selector3~0_combout\ : std_logic;
SIGNAL \u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN_DONE~q\ : std_logic;
SIGNAL \u0|modular_adc_0|control_internal|u_control_fsm|Selector3~1_combout\ : std_logic;
SIGNAL \u0|modular_adc_0|control_internal|u_control_fsm|WideOr12~combout\ : std_logic;
SIGNAL \u0|modular_adc_0|control_internal|u_control_fsm|Selector15~3_combout\ : std_logic;
SIGNAL \u0|modular_adc_0|control_internal|u_control_fsm|chsel[0]~2_combout\ : std_logic;
SIGNAL \u0|modular_adc_0|control_internal|adc_inst|decoder|WideOr4~0_combout\ : std_logic;
SIGNAL \u0|modular_adc_0|control_internal|adc_inst|decoder|WideOr2~0_combout\ : std_logic;
SIGNAL \u0|modular_adc_0|control_internal|u_control_fsm|chsel[1]~_wirecell_combout\ : std_logic;
SIGNAL \u0|modular_adc_0|control_internal|adc_inst|adcblock_instance|clkout_adccore\ : std_logic;
SIGNAL \u0|modular_adc_0|control_internal|u_control_fsm|u_clk_dft_synchronizer|din_s1~feeder_combout\ : std_logic;
SIGNAL \u0|modular_adc_0|control_internal|u_control_fsm|u_clk_dft_synchronizer|din_s1~q\ : std_logic;
SIGNAL \u0|modular_adc_0|control_internal|u_control_fsm|u_clk_dft_synchronizer|dreg[0]~feeder_combout\ : std_logic;
SIGNAL \u0|modular_adc_0|control_internal|u_control_fsm|clk_dft_synch_dly~feeder_combout\ : std_logic;
SIGNAL \u0|modular_adc_0|control_internal|u_control_fsm|clk_dft_synch_dly~q\ : std_logic;
SIGNAL \u0|modular_adc_0|control_internal|u_control_fsm|Selector4~0_combout\ : std_logic;
SIGNAL \u0|modular_adc_0|control_internal|u_control_fsm|WideOr12~1_combout\ : std_logic;
SIGNAL \u0|modular_adc_0|control_internal|u_control_fsm|Selector17~0_combout\ : std_logic;
SIGNAL \u0|modular_adc_0|control_internal|u_control_fsm|soc~q\ : std_logic;
SIGNAL \u0|modular_adc_0|control_internal|adc_inst|adcblock_instance|eoc\ : std_logic;
SIGNAL \u0|modular_adc_0|control_internal|u_control_fsm|u_eoc_synchronizer|din_s1~feeder_combout\ : std_logic;
SIGNAL \u0|modular_adc_0|control_internal|u_control_fsm|u_eoc_synchronizer|din_s1~q\ : std_logic;
SIGNAL \u0|modular_adc_0|control_internal|u_control_fsm|u_eoc_synchronizer|dreg[0]~feeder_combout\ : std_logic;
SIGNAL \u0|modular_adc_0|control_internal|u_control_fsm|eoc_synch_dly~q\ : std_logic;
SIGNAL \u0|modular_adc_0|control_internal|u_control_fsm|load_dout~1_combout\ : std_logic;
SIGNAL \u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.CONV_DLY1~q\ : std_logic;
SIGNAL \u0|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\ : std_logic;
SIGNAL \u0|modular_adc_0|control_internal|u_control_fsm|dout_flp[0]~feeder_combout\ : std_logic;
SIGNAL \u0|modular_adc_0|control_internal|u_control_fsm|pend~0_combout\ : std_logic;
SIGNAL \u0|modular_adc_0|control_internal|u_control_fsm|pend~q\ : std_logic;
SIGNAL \u0|modular_adc_0|control_internal|u_control_fsm|load_dout~0_combout\ : std_logic;
SIGNAL \u0|modular_adc_0|control_internal|u_control_fsm|rsp_data~0_combout\ : std_logic;
SIGNAL \u0|modular_adc_0|control_internal|u_control_fsm|load_rsp~0_combout\ : std_logic;
SIGNAL \u0|modular_adc_0|control_internal|u_control_fsm|rsp_valid~q\ : std_logic;
SIGNAL \leds[0]~reg0_q\ : std_logic;
SIGNAL \u0|modular_adc_0|control_internal|u_control_fsm|dout_flp[1]~feeder_combout\ : std_logic;
SIGNAL \u0|modular_adc_0|control_internal|u_control_fsm|rsp_data~1_combout\ : std_logic;
SIGNAL \leds[1]~reg0feeder_combout\ : std_logic;
SIGNAL \leds[1]~reg0_q\ : std_logic;
SIGNAL \u0|modular_adc_0|control_internal|u_control_fsm|dout_flp[2]~feeder_combout\ : std_logic;
SIGNAL \u0|modular_adc_0|control_internal|u_control_fsm|rsp_data~2_combout\ : std_logic;
SIGNAL \leds[2]~reg0feeder_combout\ : std_logic;
SIGNAL \leds[2]~reg0_q\ : std_logic;
SIGNAL \u0|modular_adc_0|control_internal|u_control_fsm|rsp_data~3_combout\ : std_logic;
SIGNAL \leds[3]~reg0_q\ : std_logic;
SIGNAL \u0|modular_adc_0|control_internal|u_control_fsm|dout_flp[4]~feeder_combout\ : std_logic;
SIGNAL \u0|modular_adc_0|control_internal|u_control_fsm|rsp_data~4_combout\ : std_logic;
SIGNAL \u0|modular_adc_0|control_internal|u_control_fsm|rsp_data[4]~feeder_combout\ : std_logic;
SIGNAL \leds[4]~reg0_q\ : std_logic;
SIGNAL \u0|modular_adc_0|control_internal|u_control_fsm|dout_flp[5]~feeder_combout\ : std_logic;
SIGNAL \u0|modular_adc_0|control_internal|u_control_fsm|rsp_data~5_combout\ : std_logic;
SIGNAL \leds[5]~reg0feeder_combout\ : std_logic;
SIGNAL \leds[5]~reg0_q\ : std_logic;
SIGNAL \u0|modular_adc_0|control_internal|u_control_fsm|dout_flp[6]~feeder_combout\ : std_logic;
SIGNAL \u0|modular_adc_0|control_internal|u_control_fsm|rsp_data~6_combout\ : std_logic;
SIGNAL \leds[6]~reg0_q\ : std_logic;
SIGNAL \u0|modular_adc_0|control_internal|u_control_fsm|dout_flp[7]~feeder_combout\ : std_logic;
SIGNAL \u0|modular_adc_0|control_internal|u_control_fsm|rsp_data~7_combout\ : std_logic;
SIGNAL \u0|modular_adc_0|control_internal|u_control_fsm|rsp_data[7]~feeder_combout\ : std_logic;
SIGNAL \leds[7]~reg0_q\ : std_logic;
SIGNAL \u0|modular_adc_0|control_internal|u_control_fsm|dout_flp[8]~feeder_combout\ : std_logic;
SIGNAL \u0|modular_adc_0|control_internal|u_control_fsm|rsp_data~8_combout\ : std_logic;
SIGNAL \u0|modular_adc_0|control_internal|u_control_fsm|rsp_data[8]~feeder_combout\ : std_logic;
SIGNAL \leds[8]~reg0_q\ : std_logic;
SIGNAL \u0|modular_adc_0|control_internal|u_control_fsm|dout_flp[9]~feeder_combout\ : std_logic;
SIGNAL \u0|modular_adc_0|control_internal|u_control_fsm|rsp_data~9_combout\ : std_logic;
SIGNAL \u0|modular_adc_0|control_internal|u_control_fsm|rsp_data[9]~feeder_combout\ : std_logic;
SIGNAL \leds[9]~reg0_q\ : std_logic;
SIGNAL \u0|modular_adc_0|control_internal|u_control_fsm|dout_flp[10]~feeder_combout\ : std_logic;
SIGNAL \u0|modular_adc_0|control_internal|u_control_fsm|rsp_data~10_combout\ : std_logic;
SIGNAL \leds[10]~reg0_q\ : std_logic;
SIGNAL \u0|modular_adc_0|control_internal|u_control_fsm|rsp_data~11_combout\ : std_logic;
SIGNAL \u0|modular_adc_0|control_internal|u_control_fsm|rsp_data[11]~feeder_combout\ : std_logic;
SIGNAL \leds[11]~reg0_q\ : std_logic;
SIGNAL \sal_disp0[1]~feeder_combout\ : std_logic;
SIGNAL \sal_disp0[2]~feeder_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \sal_disp1[0]~feeder_combout\ : std_logic;
SIGNAL \sal_disp1[1]~feeder_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \u0|modular_adc_0|control_internal|u_control_fsm|rsp_data\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \u0|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \u0|modular_adc_0|control_internal|u_control_fsm|dout_flp\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \u0|altpll_0|sd1|wire_pll7_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \u0|modular_adc_0|control_internal|u_control_fsm|int_timer\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u0|modular_adc_0|control_internal|u_control_fsm|u_eoc_synchronizer|dreg\ : std_logic_vector(0 DOWNTO 0);
SIGNAL sal_disp0 : std_logic_vector(3 DOWNTO 0);
SIGNAL sal_disp1 : std_logic_vector(3 DOWNTO 0);
SIGNAL sal_disp2 : std_logic_vector(3 DOWNTO 0);
SIGNAL \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \u0|modular_adc_0|control_internal|u_control_fsm|chsel\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \u0|modular_adc_0|control_internal|u_control_fsm|u_clk_dft_synchronizer|dreg\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ALT_INV_Mux14~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~0_combout\ : std_logic;

BEGIN

ww_CLK <= CLK;
ww_ADCLK <= ADCLK;
ww_RESET <= RESET;
leds <= IEEE.NUMERIC_STD.UNSIGNED(ww_leds);
display0 <= ww_display0;
display1 <= ww_display1;
display2 <= ww_display2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\u0|modular_adc_0|control_internal|adc_inst|adcblock_instance|primitive_instance_CHSEL_bus\ <= (\u0|modular_adc_0|control_internal|u_control_fsm|chsel[1]~_wirecell_combout\ & \u0|modular_adc_0|control_internal|u_control_fsm|chsel[1]~_wirecell_combout\ & 
\u0|modular_adc_0|control_internal|adc_inst|decoder|WideOr2~0_combout\ & \u0|modular_adc_0|control_internal|adc_inst|decoder|WideOr4~0_combout\ & \u0|modular_adc_0|control_internal|adc_inst|decoder|WideOr4~0_combout\);

\u0|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(0) <= \u0|modular_adc_0|control_internal|adc_inst|adcblock_instance|primitive_instance_DOUT_bus\(0);
\u0|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(1) <= \u0|modular_adc_0|control_internal|adc_inst|adcblock_instance|primitive_instance_DOUT_bus\(1);
\u0|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(2) <= \u0|modular_adc_0|control_internal|adc_inst|adcblock_instance|primitive_instance_DOUT_bus\(2);
\u0|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(3) <= \u0|modular_adc_0|control_internal|adc_inst|adcblock_instance|primitive_instance_DOUT_bus\(3);
\u0|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(4) <= \u0|modular_adc_0|control_internal|adc_inst|adcblock_instance|primitive_instance_DOUT_bus\(4);
\u0|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(5) <= \u0|modular_adc_0|control_internal|adc_inst|adcblock_instance|primitive_instance_DOUT_bus\(5);
\u0|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(6) <= \u0|modular_adc_0|control_internal|adc_inst|adcblock_instance|primitive_instance_DOUT_bus\(6);
\u0|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(7) <= \u0|modular_adc_0|control_internal|adc_inst|adcblock_instance|primitive_instance_DOUT_bus\(7);
\u0|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(8) <= \u0|modular_adc_0|control_internal|adc_inst|adcblock_instance|primitive_instance_DOUT_bus\(8);
\u0|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(9) <= \u0|modular_adc_0|control_internal|adc_inst|adcblock_instance|primitive_instance_DOUT_bus\(9);
\u0|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(10) <= \u0|modular_adc_0|control_internal|adc_inst|adcblock_instance|primitive_instance_DOUT_bus\(10);
\u0|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(11) <= \u0|modular_adc_0|control_internal|adc_inst|adcblock_instance|primitive_instance_DOUT_bus\(11);

\u0|altpll_0|sd1|pll7_INCLK_bus\ <= (gnd & \ADCLK~input_o\);

\u0|altpll_0|sd1|wire_pll7_clk\(0) <= \u0|altpll_0|sd1|pll7_CLK_bus\(0);
\u0|altpll_0|sd1|wire_pll7_clk\(1) <= \u0|altpll_0|sd1|pll7_CLK_bus\(1);
\u0|altpll_0|sd1|wire_pll7_clk\(2) <= \u0|altpll_0|sd1|pll7_CLK_bus\(2);
\u0|altpll_0|sd1|wire_pll7_clk\(3) <= \u0|altpll_0|sd1|pll7_CLK_bus\(3);
\u0|altpll_0|sd1|wire_pll7_clk\(4) <= \u0|altpll_0|sd1|pll7_CLK_bus\(4);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\ADCLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \ADCLK~input_o\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\ALT_INV_Mux14~0_combout\ <= NOT \Mux14~0_combout\;
\ALT_INV_Mux7~0_combout\ <= NOT \Mux7~0_combout\;
\ALT_INV_Mux0~0_combout\ <= NOT \Mux0~0_combout\;

-- Location: IOOBUF_X46_Y54_N23
\leds[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \leds[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_leds(0));

-- Location: IOOBUF_X51_Y54_N16
\leds[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \leds[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_leds(1));

-- Location: IOOBUF_X46_Y54_N9
\leds[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \leds[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_leds(2));

-- Location: IOOBUF_X56_Y54_N30
\leds[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \leds[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_leds(3));

-- Location: IOOBUF_X58_Y54_N23
\leds[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \leds[4]~reg0_q\,
	devoe => ww_devoe,
	o => ww_leds(4));

-- Location: IOOBUF_X66_Y54_N23
\leds[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \leds[5]~reg0_q\,
	devoe => ww_devoe,
	o => ww_leds(5));

-- Location: IOOBUF_X56_Y54_N9
\leds[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \leds[6]~reg0_q\,
	devoe => ww_devoe,
	o => ww_leds(6));

-- Location: IOOBUF_X51_Y54_N9
\leds[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \leds[7]~reg0_q\,
	devoe => ww_devoe,
	o => ww_leds(7));

-- Location: IOOBUF_X49_Y54_N9
\leds[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \leds[8]~reg0_q\,
	devoe => ww_devoe,
	o => ww_leds(8));

-- Location: IOOBUF_X60_Y54_N23
\leds[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \leds[9]~reg0_q\,
	devoe => ww_devoe,
	o => ww_leds(9));

-- Location: IOOBUF_X58_Y54_N9
\leds[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \leds[10]~reg0_q\,
	devoe => ww_devoe,
	o => ww_leds(10));

-- Location: IOOBUF_X60_Y54_N30
\leds[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \leds[11]~reg0_q\,
	devoe => ww_devoe,
	o => ww_leds(11));

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

-- Location: IOIBUF_X34_Y0_N29
\CLK~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G19
\CLK~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y23_N22
\ADCLK~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADCLK,
	o => \ADCLK~input_o\);

-- Location: CLKCTRL_G4
\ADCLK~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \ADCLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \ADCLK~inputclkctrl_outclk\);

-- Location: LCCOMB_X45_Y50_N0
\u0|modular_adc_0|control_internal|u_control_fsm|int_timer[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|modular_adc_0|control_internal|u_control_fsm|int_timer[0]~8_combout\ = \u0|modular_adc_0|control_internal|u_control_fsm|int_timer\(0) $ (VCC)
-- \u0|modular_adc_0|control_internal|u_control_fsm|int_timer[0]~9\ = CARRY(\u0|modular_adc_0|control_internal|u_control_fsm|int_timer\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|modular_adc_0|control_internal|u_control_fsm|int_timer\(0),
	datad => VCC,
	combout => \u0|modular_adc_0|control_internal|u_control_fsm|int_timer[0]~8_combout\,
	cout => \u0|modular_adc_0|control_internal|u_control_fsm|int_timer[0]~9\);

-- Location: LCCOMB_X46_Y51_N20
\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain[1]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain[1]~feeder_combout\);

-- Location: IOIBUF_X51_Y54_N29
\RESET~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RESET,
	o => \RESET~input_o\);

-- Location: FF_X46_Y51_N21
\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCLK~inputclkctrl_outclk\,
	d => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain[1]~feeder_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain\(1));

-- Location: FF_X46_Y51_N23
\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCLK~inputclkctrl_outclk\,
	asdata => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain\(1),
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain\(0));

-- Location: FF_X46_Y51_N9
\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCLK~inputclkctrl_outclk\,
	asdata => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain\(0),
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\);

-- Location: FF_X51_Y51_N19
\u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PUTRESP_DLY1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCLK~inputclkctrl_outclk\,
	asdata => \u0|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PUTRESP_DLY1~q\);

-- Location: LCCOMB_X51_Y51_N12
\u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PUTRESP_DLY2~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PUTRESP_DLY2~feeder_combout\ = \u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PUTRESP_DLY1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PUTRESP_DLY1~q\,
	combout => \u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PUTRESP_DLY2~feeder_combout\);

-- Location: FF_X51_Y51_N13
\u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PUTRESP_DLY2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCLK~inputclkctrl_outclk\,
	d => \u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PUTRESP_DLY2~feeder_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PUTRESP_DLY2~q\);

-- Location: LCCOMB_X46_Y51_N18
\u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PUTRESP_DLY3~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PUTRESP_DLY3~feeder_combout\ = \u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PUTRESP_DLY2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PUTRESP_DLY2~q\,
	combout => \u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PUTRESP_DLY3~feeder_combout\);

-- Location: FF_X46_Y51_N19
\u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PUTRESP_DLY3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCLK~inputclkctrl_outclk\,
	d => \u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PUTRESP_DLY3~feeder_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PUTRESP_DLY3~q\);

-- Location: FF_X46_Y51_N5
\u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRUP_CH\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCLK~inputclkctrl_outclk\,
	d => \u0|modular_adc_0|control_internal|u_control_fsm|Selector4~0_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRUP_CH~q\);

-- Location: LCCOMB_X46_Y51_N8
\u0|modular_adc_0|control_internal|u_control_fsm|Selector5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|modular_adc_0|control_internal|u_control_fsm|Selector5~0_combout\ = (\u0|modular_adc_0|control_internal|u_control_fsm|clk_dft_synch_dly~q\ & (\u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRUP_CH~q\ & 
-- !\u0|modular_adc_0|control_internal|u_control_fsm|u_clk_dft_synchronizer|dreg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|modular_adc_0|control_internal|u_control_fsm|clk_dft_synch_dly~q\,
	datab => \u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRUP_CH~q\,
	datad => \u0|modular_adc_0|control_internal|u_control_fsm|u_clk_dft_synchronizer|dreg\(0),
	combout => \u0|modular_adc_0|control_internal|u_control_fsm|Selector5~0_combout\);

-- Location: LCCOMB_X45_Y51_N8
\u0|modular_adc_0|control_internal|u_control_fsm|Selector5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|modular_adc_0|control_internal|u_control_fsm|Selector5~1_combout\ = (\u0|modular_adc_0|control_internal|u_control_fsm|Selector5~0_combout\) # ((\u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRUP_SOC~q\ & 
-- ((\u0|modular_adc_0|control_internal|u_control_fsm|u_eoc_synchronizer|dreg\(0)) # (!\u0|modular_adc_0|control_internal|u_control_fsm|eoc_synch_dly~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|modular_adc_0|control_internal|u_control_fsm|eoc_synch_dly~q\,
	datab => \u0|modular_adc_0|control_internal|u_control_fsm|Selector5~0_combout\,
	datac => \u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRUP_SOC~q\,
	datad => \u0|modular_adc_0|control_internal|u_control_fsm|u_eoc_synchronizer|dreg\(0),
	combout => \u0|modular_adc_0|control_internal|u_control_fsm|Selector5~1_combout\);

-- Location: FF_X45_Y51_N9
\u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRUP_SOC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCLK~inputclkctrl_outclk\,
	d => \u0|modular_adc_0|control_internal|u_control_fsm|Selector5~1_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRUP_SOC~q\);

-- Location: LCCOMB_X45_Y51_N24
\u0|modular_adc_0|control_internal|u_control_fsm|Selector7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|modular_adc_0|control_internal|u_control_fsm|Selector7~0_combout\ = (\u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRUP_SOC~q\ & (\u0|modular_adc_0|control_internal|u_control_fsm|eoc_synch_dly~q\ & 
-- ((!\u0|modular_adc_0|control_internal|u_control_fsm|u_eoc_synchronizer|dreg\(0))))) # (!\u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRUP_SOC~q\ & (((\u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PUTRESP_DLY3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|modular_adc_0|control_internal|u_control_fsm|eoc_synch_dly~q\,
	datab => \u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PUTRESP_DLY3~q\,
	datac => \u0|modular_adc_0|control_internal|u_control_fsm|u_eoc_synchronizer|dreg\(0),
	datad => \u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRUP_SOC~q\,
	combout => \u0|modular_adc_0|control_internal|u_control_fsm|Selector7~0_combout\);

-- Location: FF_X45_Y51_N25
\u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.GETCMD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCLK~inputclkctrl_outclk\,
	d => \u0|modular_adc_0|control_internal|u_control_fsm|Selector7~0_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.GETCMD~q\);

-- Location: LCCOMB_X45_Y51_N30
\u0|modular_adc_0|control_internal|u_control_fsm|Selector9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|modular_adc_0|control_internal|u_control_fsm|Selector9~0_combout\ = (\u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.GETCMD~q\) # ((\u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.CONV~q\ & 
-- ((\u0|modular_adc_0|control_internal|u_control_fsm|u_eoc_synchronizer|dreg\(0)) # (!\u0|modular_adc_0|control_internal|u_control_fsm|eoc_synch_dly~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|modular_adc_0|control_internal|u_control_fsm|eoc_synch_dly~q\,
	datab => \u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.GETCMD~q\,
	datac => \u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.CONV~q\,
	datad => \u0|modular_adc_0|control_internal|u_control_fsm|u_eoc_synchronizer|dreg\(0),
	combout => \u0|modular_adc_0|control_internal|u_control_fsm|Selector9~0_combout\);

-- Location: FF_X45_Y51_N31
\u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.CONV\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCLK~inputclkctrl_outclk\,
	d => \u0|modular_adc_0|control_internal|u_control_fsm|Selector9~0_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.CONV~q\);

-- Location: LCCOMB_X45_Y50_N22
\u0|modular_adc_0|control_internal|u_control_fsm|arc_to_conv~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|modular_adc_0|control_internal|u_control_fsm|arc_to_conv~0_combout\ = (!\u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.CONV~q\ & \u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.GETCMD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.CONV~q\,
	datad => \u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.GETCMD~q\,
	combout => \u0|modular_adc_0|control_internal|u_control_fsm|arc_to_conv~0_combout\);

-- Location: PLL_1
\u0|altpll_0|sd1|pll7\ : fiftyfivenm_pll
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
	fbin => \u0|altpll_0|sd1|wire_pll7_fbout\,
	inclk => \u0|altpll_0|sd1|pll7_INCLK_bus\,
	locked => \u0|altpll_0|sd1|wire_pll7_locked\,
	fbout => \u0|altpll_0|sd1|wire_pll7_fbout\,
	clk => \u0|altpll_0|sd1|pll7_CLK_bus\);

-- Location: LCCOMB_X45_Y50_N16
\u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.IDLE~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.IDLE~0_combout\ = (\u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.IDLE~q\) # (\u0|altpll_0|sd1|wire_pll7_locked\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.IDLE~q\,
	datad => \u0|altpll_0|sd1|wire_pll7_locked\,
	combout => \u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.IDLE~0_combout\);

-- Location: FF_X45_Y50_N17
\u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCLK~inputclkctrl_outclk\,
	d => \u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.IDLE~0_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.IDLE~q\);

-- Location: LCCOMB_X45_Y50_N28
\u0|modular_adc_0|control_internal|u_control_fsm|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|modular_adc_0|control_internal|u_control_fsm|Selector1~0_combout\ = (\u0|modular_adc_0|control_internal|u_control_fsm|int_timer\(6) & (\u0|altpll_0|sd1|wire_pll7_locked\ & ((!\u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.IDLE~q\)))) # 
-- (!\u0|modular_adc_0|control_internal|u_control_fsm|int_timer\(6) & ((\u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN~q\) # ((\u0|altpll_0|sd1|wire_pll7_locked\ & !\u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.IDLE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|modular_adc_0|control_internal|u_control_fsm|int_timer\(6),
	datab => \u0|altpll_0|sd1|wire_pll7_locked\,
	datac => \u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN~q\,
	datad => \u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.IDLE~q\,
	combout => \u0|modular_adc_0|control_internal|u_control_fsm|Selector1~0_combout\);

-- Location: FF_X45_Y50_N29
\u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCLK~inputclkctrl_outclk\,
	d => \u0|modular_adc_0|control_internal|u_control_fsm|Selector1~0_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN~q\);

-- Location: LCCOMB_X45_Y50_N20
\u0|modular_adc_0|control_internal|u_control_fsm|int_timer[6]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|modular_adc_0|control_internal|u_control_fsm|int_timer[6]~24_combout\ = (\u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN_TSEN~q\) # ((\u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN~q\) # 
-- ((\u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.GETCMD~q\ & !\u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.CONV~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN_TSEN~q\,
	datab => \u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.GETCMD~q\,
	datac => \u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.CONV~q\,
	datad => \u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN~q\,
	combout => \u0|modular_adc_0|control_internal|u_control_fsm|int_timer[6]~24_combout\);

-- Location: FF_X45_Y50_N1
\u0|modular_adc_0|control_internal|u_control_fsm|int_timer[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCLK~inputclkctrl_outclk\,
	d => \u0|modular_adc_0|control_internal|u_control_fsm|int_timer[0]~8_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sclr => \u0|modular_adc_0|control_internal|u_control_fsm|arc_to_conv~0_combout\,
	ena => \u0|modular_adc_0|control_internal|u_control_fsm|int_timer[6]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|modular_adc_0|control_internal|u_control_fsm|int_timer\(0));

-- Location: LCCOMB_X45_Y50_N2
\u0|modular_adc_0|control_internal|u_control_fsm|int_timer[1]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|modular_adc_0|control_internal|u_control_fsm|int_timer[1]~10_combout\ = (\u0|modular_adc_0|control_internal|u_control_fsm|int_timer\(1) & (!\u0|modular_adc_0|control_internal|u_control_fsm|int_timer[0]~9\)) # 
-- (!\u0|modular_adc_0|control_internal|u_control_fsm|int_timer\(1) & ((\u0|modular_adc_0|control_internal|u_control_fsm|int_timer[0]~9\) # (GND)))
-- \u0|modular_adc_0|control_internal|u_control_fsm|int_timer[1]~11\ = CARRY((!\u0|modular_adc_0|control_internal|u_control_fsm|int_timer[0]~9\) # (!\u0|modular_adc_0|control_internal|u_control_fsm|int_timer\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|modular_adc_0|control_internal|u_control_fsm|int_timer\(1),
	datad => VCC,
	cin => \u0|modular_adc_0|control_internal|u_control_fsm|int_timer[0]~9\,
	combout => \u0|modular_adc_0|control_internal|u_control_fsm|int_timer[1]~10_combout\,
	cout => \u0|modular_adc_0|control_internal|u_control_fsm|int_timer[1]~11\);

-- Location: FF_X45_Y50_N3
\u0|modular_adc_0|control_internal|u_control_fsm|int_timer[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCLK~inputclkctrl_outclk\,
	d => \u0|modular_adc_0|control_internal|u_control_fsm|int_timer[1]~10_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sclr => \u0|modular_adc_0|control_internal|u_control_fsm|arc_to_conv~0_combout\,
	ena => \u0|modular_adc_0|control_internal|u_control_fsm|int_timer[6]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|modular_adc_0|control_internal|u_control_fsm|int_timer\(1));

-- Location: LCCOMB_X45_Y50_N4
\u0|modular_adc_0|control_internal|u_control_fsm|int_timer[2]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|modular_adc_0|control_internal|u_control_fsm|int_timer[2]~12_combout\ = (\u0|modular_adc_0|control_internal|u_control_fsm|int_timer\(2) & (\u0|modular_adc_0|control_internal|u_control_fsm|int_timer[1]~11\ $ (GND))) # 
-- (!\u0|modular_adc_0|control_internal|u_control_fsm|int_timer\(2) & (!\u0|modular_adc_0|control_internal|u_control_fsm|int_timer[1]~11\ & VCC))
-- \u0|modular_adc_0|control_internal|u_control_fsm|int_timer[2]~13\ = CARRY((\u0|modular_adc_0|control_internal|u_control_fsm|int_timer\(2) & !\u0|modular_adc_0|control_internal|u_control_fsm|int_timer[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|modular_adc_0|control_internal|u_control_fsm|int_timer\(2),
	datad => VCC,
	cin => \u0|modular_adc_0|control_internal|u_control_fsm|int_timer[1]~11\,
	combout => \u0|modular_adc_0|control_internal|u_control_fsm|int_timer[2]~12_combout\,
	cout => \u0|modular_adc_0|control_internal|u_control_fsm|int_timer[2]~13\);

-- Location: FF_X45_Y50_N5
\u0|modular_adc_0|control_internal|u_control_fsm|int_timer[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCLK~inputclkctrl_outclk\,
	d => \u0|modular_adc_0|control_internal|u_control_fsm|int_timer[2]~12_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sclr => \u0|modular_adc_0|control_internal|u_control_fsm|arc_to_conv~0_combout\,
	ena => \u0|modular_adc_0|control_internal|u_control_fsm|int_timer[6]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|modular_adc_0|control_internal|u_control_fsm|int_timer\(2));

-- Location: LCCOMB_X45_Y50_N6
\u0|modular_adc_0|control_internal|u_control_fsm|int_timer[3]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|modular_adc_0|control_internal|u_control_fsm|int_timer[3]~14_combout\ = (\u0|modular_adc_0|control_internal|u_control_fsm|int_timer\(3) & (!\u0|modular_adc_0|control_internal|u_control_fsm|int_timer[2]~13\)) # 
-- (!\u0|modular_adc_0|control_internal|u_control_fsm|int_timer\(3) & ((\u0|modular_adc_0|control_internal|u_control_fsm|int_timer[2]~13\) # (GND)))
-- \u0|modular_adc_0|control_internal|u_control_fsm|int_timer[3]~15\ = CARRY((!\u0|modular_adc_0|control_internal|u_control_fsm|int_timer[2]~13\) # (!\u0|modular_adc_0|control_internal|u_control_fsm|int_timer\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|modular_adc_0|control_internal|u_control_fsm|int_timer\(3),
	datad => VCC,
	cin => \u0|modular_adc_0|control_internal|u_control_fsm|int_timer[2]~13\,
	combout => \u0|modular_adc_0|control_internal|u_control_fsm|int_timer[3]~14_combout\,
	cout => \u0|modular_adc_0|control_internal|u_control_fsm|int_timer[3]~15\);

-- Location: FF_X45_Y50_N7
\u0|modular_adc_0|control_internal|u_control_fsm|int_timer[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCLK~inputclkctrl_outclk\,
	d => \u0|modular_adc_0|control_internal|u_control_fsm|int_timer[3]~14_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sclr => \u0|modular_adc_0|control_internal|u_control_fsm|arc_to_conv~0_combout\,
	ena => \u0|modular_adc_0|control_internal|u_control_fsm|int_timer[6]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|modular_adc_0|control_internal|u_control_fsm|int_timer\(3));

-- Location: LCCOMB_X45_Y50_N8
\u0|modular_adc_0|control_internal|u_control_fsm|int_timer[4]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|modular_adc_0|control_internal|u_control_fsm|int_timer[4]~16_combout\ = (\u0|modular_adc_0|control_internal|u_control_fsm|int_timer\(4) & (\u0|modular_adc_0|control_internal|u_control_fsm|int_timer[3]~15\ $ (GND))) # 
-- (!\u0|modular_adc_0|control_internal|u_control_fsm|int_timer\(4) & (!\u0|modular_adc_0|control_internal|u_control_fsm|int_timer[3]~15\ & VCC))
-- \u0|modular_adc_0|control_internal|u_control_fsm|int_timer[4]~17\ = CARRY((\u0|modular_adc_0|control_internal|u_control_fsm|int_timer\(4) & !\u0|modular_adc_0|control_internal|u_control_fsm|int_timer[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|modular_adc_0|control_internal|u_control_fsm|int_timer\(4),
	datad => VCC,
	cin => \u0|modular_adc_0|control_internal|u_control_fsm|int_timer[3]~15\,
	combout => \u0|modular_adc_0|control_internal|u_control_fsm|int_timer[4]~16_combout\,
	cout => \u0|modular_adc_0|control_internal|u_control_fsm|int_timer[4]~17\);

-- Location: FF_X45_Y50_N9
\u0|modular_adc_0|control_internal|u_control_fsm|int_timer[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCLK~inputclkctrl_outclk\,
	d => \u0|modular_adc_0|control_internal|u_control_fsm|int_timer[4]~16_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sclr => \u0|modular_adc_0|control_internal|u_control_fsm|arc_to_conv~0_combout\,
	ena => \u0|modular_adc_0|control_internal|u_control_fsm|int_timer[6]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|modular_adc_0|control_internal|u_control_fsm|int_timer\(4));

-- Location: LCCOMB_X45_Y50_N10
\u0|modular_adc_0|control_internal|u_control_fsm|int_timer[5]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|modular_adc_0|control_internal|u_control_fsm|int_timer[5]~18_combout\ = (\u0|modular_adc_0|control_internal|u_control_fsm|int_timer\(5) & (!\u0|modular_adc_0|control_internal|u_control_fsm|int_timer[4]~17\)) # 
-- (!\u0|modular_adc_0|control_internal|u_control_fsm|int_timer\(5) & ((\u0|modular_adc_0|control_internal|u_control_fsm|int_timer[4]~17\) # (GND)))
-- \u0|modular_adc_0|control_internal|u_control_fsm|int_timer[5]~19\ = CARRY((!\u0|modular_adc_0|control_internal|u_control_fsm|int_timer[4]~17\) # (!\u0|modular_adc_0|control_internal|u_control_fsm|int_timer\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|modular_adc_0|control_internal|u_control_fsm|int_timer\(5),
	datad => VCC,
	cin => \u0|modular_adc_0|control_internal|u_control_fsm|int_timer[4]~17\,
	combout => \u0|modular_adc_0|control_internal|u_control_fsm|int_timer[5]~18_combout\,
	cout => \u0|modular_adc_0|control_internal|u_control_fsm|int_timer[5]~19\);

-- Location: FF_X45_Y50_N11
\u0|modular_adc_0|control_internal|u_control_fsm|int_timer[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCLK~inputclkctrl_outclk\,
	d => \u0|modular_adc_0|control_internal|u_control_fsm|int_timer[5]~18_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sclr => \u0|modular_adc_0|control_internal|u_control_fsm|arc_to_conv~0_combout\,
	ena => \u0|modular_adc_0|control_internal|u_control_fsm|int_timer[6]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|modular_adc_0|control_internal|u_control_fsm|int_timer\(5));

-- Location: LCCOMB_X45_Y50_N12
\u0|modular_adc_0|control_internal|u_control_fsm|int_timer[6]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|modular_adc_0|control_internal|u_control_fsm|int_timer[6]~20_combout\ = (\u0|modular_adc_0|control_internal|u_control_fsm|int_timer\(6) & (\u0|modular_adc_0|control_internal|u_control_fsm|int_timer[5]~19\ $ (GND))) # 
-- (!\u0|modular_adc_0|control_internal|u_control_fsm|int_timer\(6) & (!\u0|modular_adc_0|control_internal|u_control_fsm|int_timer[5]~19\ & VCC))
-- \u0|modular_adc_0|control_internal|u_control_fsm|int_timer[6]~21\ = CARRY((\u0|modular_adc_0|control_internal|u_control_fsm|int_timer\(6) & !\u0|modular_adc_0|control_internal|u_control_fsm|int_timer[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|modular_adc_0|control_internal|u_control_fsm|int_timer\(6),
	datad => VCC,
	cin => \u0|modular_adc_0|control_internal|u_control_fsm|int_timer[5]~19\,
	combout => \u0|modular_adc_0|control_internal|u_control_fsm|int_timer[6]~20_combout\,
	cout => \u0|modular_adc_0|control_internal|u_control_fsm|int_timer[6]~21\);

-- Location: FF_X45_Y50_N13
\u0|modular_adc_0|control_internal|u_control_fsm|int_timer[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCLK~inputclkctrl_outclk\,
	d => \u0|modular_adc_0|control_internal|u_control_fsm|int_timer[6]~20_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sclr => \u0|modular_adc_0|control_internal|u_control_fsm|arc_to_conv~0_combout\,
	ena => \u0|modular_adc_0|control_internal|u_control_fsm|int_timer[6]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|modular_adc_0|control_internal|u_control_fsm|int_timer\(6));

-- Location: LCCOMB_X45_Y50_N14
\u0|modular_adc_0|control_internal|u_control_fsm|int_timer[7]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|modular_adc_0|control_internal|u_control_fsm|int_timer[7]~22_combout\ = \u0|modular_adc_0|control_internal|u_control_fsm|int_timer\(7) $ (\u0|modular_adc_0|control_internal|u_control_fsm|int_timer[6]~21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|modular_adc_0|control_internal|u_control_fsm|int_timer\(7),
	cin => \u0|modular_adc_0|control_internal|u_control_fsm|int_timer[6]~21\,
	combout => \u0|modular_adc_0|control_internal|u_control_fsm|int_timer[7]~22_combout\);

-- Location: FF_X45_Y50_N15
\u0|modular_adc_0|control_internal|u_control_fsm|int_timer[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCLK~inputclkctrl_outclk\,
	d => \u0|modular_adc_0|control_internal|u_control_fsm|int_timer[7]~22_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sclr => \u0|modular_adc_0|control_internal|u_control_fsm|arc_to_conv~0_combout\,
	ena => \u0|modular_adc_0|control_internal|u_control_fsm|int_timer[6]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|modular_adc_0|control_internal|u_control_fsm|int_timer\(7));

-- Location: LCCOMB_X45_Y50_N26
\u0|modular_adc_0|control_internal|u_control_fsm|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|modular_adc_0|control_internal|u_control_fsm|Selector2~0_combout\ = (\u0|modular_adc_0|control_internal|u_control_fsm|int_timer\(6) & ((\u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN~q\) # 
-- ((!\u0|modular_adc_0|control_internal|u_control_fsm|int_timer\(7) & \u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN_TSEN~q\)))) # (!\u0|modular_adc_0|control_internal|u_control_fsm|int_timer\(6) & 
-- (!\u0|modular_adc_0|control_internal|u_control_fsm|int_timer\(7) & (\u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN_TSEN~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|modular_adc_0|control_internal|u_control_fsm|int_timer\(6),
	datab => \u0|modular_adc_0|control_internal|u_control_fsm|int_timer\(7),
	datac => \u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN_TSEN~q\,
	datad => \u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN~q\,
	combout => \u0|modular_adc_0|control_internal|u_control_fsm|Selector2~0_combout\);

-- Location: FF_X45_Y50_N27
\u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN_TSEN\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCLK~inputclkctrl_outclk\,
	d => \u0|modular_adc_0|control_internal|u_control_fsm|Selector2~0_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN_TSEN~q\);

-- Location: LCCOMB_X45_Y50_N18
\u0|modular_adc_0|control_internal|u_control_fsm|Selector18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|modular_adc_0|control_internal|u_control_fsm|Selector18~0_combout\ = ((\u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN~q\) # ((\u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN_TSEN~q\ & 
-- !\u0|modular_adc_0|control_internal|u_control_fsm|int_timer\(7)))) # (!\u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN_TSEN~q\,
	datab => \u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.IDLE~q\,
	datac => \u0|modular_adc_0|control_internal|u_control_fsm|int_timer\(7),
	datad => \u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN~q\,
	combout => \u0|modular_adc_0|control_internal|u_control_fsm|Selector18~0_combout\);

-- Location: LCCOMB_X45_Y51_N22
\u0|modular_adc_0|control_internal|u_control_fsm|Selector15~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|modular_adc_0|control_internal|u_control_fsm|Selector15~2_combout\ = (!\u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.GETCMD~q\ & !\u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.CONV~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.GETCMD~q\,
	datad => \u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.CONV~q\,
	combout => \u0|modular_adc_0|control_internal|u_control_fsm|Selector15~2_combout\);

-- Location: LCCOMB_X51_Y51_N18
\u0|modular_adc_0|control_internal|u_control_fsm|WideOr12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|modular_adc_0|control_internal|u_control_fsm|WideOr12~0_combout\ = (!\u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PUTRESP_DLY2~q\ & (!\u0|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\ & 
-- (!\u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PUTRESP_DLY1~q\ & !\u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.CONV_DLY1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PUTRESP_DLY2~q\,
	datab => \u0|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\,
	datac => \u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PUTRESP_DLY1~q\,
	datad => \u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.CONV_DLY1~q\,
	combout => \u0|modular_adc_0|control_internal|u_control_fsm|WideOr12~0_combout\);

-- Location: LCCOMB_X45_Y51_N20
\u0|modular_adc_0|control_internal|u_control_fsm|WideOr17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|modular_adc_0|control_internal|u_control_fsm|WideOr17~combout\ = (((\u0|modular_adc_0|control_internal|u_control_fsm|Selector5~1_combout\) # (\u0|modular_adc_0|control_internal|u_control_fsm|Selector7~0_combout\)) # 
-- (!\u0|modular_adc_0|control_internal|u_control_fsm|WideOr12~0_combout\)) # (!\u0|modular_adc_0|control_internal|u_control_fsm|Selector15~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|modular_adc_0|control_internal|u_control_fsm|Selector15~2_combout\,
	datab => \u0|modular_adc_0|control_internal|u_control_fsm|WideOr12~0_combout\,
	datac => \u0|modular_adc_0|control_internal|u_control_fsm|Selector5~1_combout\,
	datad => \u0|modular_adc_0|control_internal|u_control_fsm|Selector7~0_combout\,
	combout => \u0|modular_adc_0|control_internal|u_control_fsm|WideOr17~combout\);

-- Location: LCCOMB_X45_Y51_N4
\u0|modular_adc_0|control_internal|u_control_fsm|Selector18~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|modular_adc_0|control_internal|u_control_fsm|Selector18~1_combout\ = (!\u0|modular_adc_0|control_internal|u_control_fsm|Selector18~0_combout\ & ((\u0|modular_adc_0|control_internal|u_control_fsm|usr_pwd~q\) # 
-- (!\u0|modular_adc_0|control_internal|u_control_fsm|WideOr17~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|modular_adc_0|control_internal|u_control_fsm|Selector18~0_combout\,
	datac => \u0|modular_adc_0|control_internal|u_control_fsm|usr_pwd~q\,
	datad => \u0|modular_adc_0|control_internal|u_control_fsm|WideOr17~combout\,
	combout => \u0|modular_adc_0|control_internal|u_control_fsm|Selector18~1_combout\);

-- Location: FF_X45_Y51_N5
\u0|modular_adc_0|control_internal|u_control_fsm|usr_pwd\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCLK~inputclkctrl_outclk\,
	d => \u0|modular_adc_0|control_internal|u_control_fsm|Selector18~1_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|modular_adc_0|control_internal|u_control_fsm|usr_pwd~q\);

-- Location: LCCOMB_X44_Y51_N26
\u0|modular_adc_0|control_internal|u_control_fsm|usr_pwd~_wirecell\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|modular_adc_0|control_internal|u_control_fsm|usr_pwd~_wirecell_combout\ = !\u0|modular_adc_0|control_internal|u_control_fsm|usr_pwd~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|modular_adc_0|control_internal|u_control_fsm|usr_pwd~q\,
	combout => \u0|modular_adc_0|control_internal|u_control_fsm|usr_pwd~_wirecell_combout\);

-- Location: LCCOMB_X44_Y51_N18
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

-- Location: LCCOMB_X45_Y50_N24
\u0|modular_adc_0|control_internal|u_control_fsm|Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|modular_adc_0|control_internal|u_control_fsm|Selector3~0_combout\ = (\u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN_TSEN~q\ & \u0|modular_adc_0|control_internal|u_control_fsm|int_timer\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN_TSEN~q\,
	datac => \u0|modular_adc_0|control_internal|u_control_fsm|int_timer\(7),
	combout => \u0|modular_adc_0|control_internal|u_control_fsm|Selector3~0_combout\);

-- Location: FF_X46_Y51_N25
\u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN_DONE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCLK~inputclkctrl_outclk\,
	d => \u0|modular_adc_0|control_internal|u_control_fsm|Selector3~1_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN_DONE~q\);

-- Location: LCCOMB_X46_Y51_N24
\u0|modular_adc_0|control_internal|u_control_fsm|Selector3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|modular_adc_0|control_internal|u_control_fsm|Selector3~1_combout\ = (\u0|modular_adc_0|control_internal|u_control_fsm|Selector3~0_combout\) # ((\u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN_DONE~q\ & 
-- ((\u0|modular_adc_0|control_internal|u_control_fsm|clk_dft_synch_dly~q\) # (!\u0|modular_adc_0|control_internal|u_control_fsm|u_clk_dft_synchronizer|dreg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|modular_adc_0|control_internal|u_control_fsm|clk_dft_synch_dly~q\,
	datab => \u0|modular_adc_0|control_internal|u_control_fsm|Selector3~0_combout\,
	datac => \u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN_DONE~q\,
	datad => \u0|modular_adc_0|control_internal|u_control_fsm|u_clk_dft_synchronizer|dreg\(0),
	combout => \u0|modular_adc_0|control_internal|u_control_fsm|Selector3~1_combout\);

-- Location: LCCOMB_X45_Y51_N2
\u0|modular_adc_0|control_internal|u_control_fsm|WideOr12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|modular_adc_0|control_internal|u_control_fsm|WideOr12~combout\ = ((\u0|modular_adc_0|control_internal|u_control_fsm|Selector1~0_combout\) # ((\u0|modular_adc_0|control_internal|u_control_fsm|Selector5~1_combout\) # 
-- (\u0|modular_adc_0|control_internal|u_control_fsm|Selector3~1_combout\))) # (!\u0|modular_adc_0|control_internal|u_control_fsm|WideOr12~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|modular_adc_0|control_internal|u_control_fsm|WideOr12~1_combout\,
	datab => \u0|modular_adc_0|control_internal|u_control_fsm|Selector1~0_combout\,
	datac => \u0|modular_adc_0|control_internal|u_control_fsm|Selector5~1_combout\,
	datad => \u0|modular_adc_0|control_internal|u_control_fsm|Selector3~1_combout\,
	combout => \u0|modular_adc_0|control_internal|u_control_fsm|WideOr12~combout\);

-- Location: LCCOMB_X45_Y51_N12
\u0|modular_adc_0|control_internal|u_control_fsm|Selector15~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|modular_adc_0|control_internal|u_control_fsm|Selector15~3_combout\ = (\u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.GETCMD~q\) # ((\u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.CONV~q\) # 
-- ((\u0|modular_adc_0|control_internal|u_control_fsm|chsel\(1) & \u0|modular_adc_0|control_internal|u_control_fsm|WideOr12~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.GETCMD~q\,
	datab => \u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.CONV~q\,
	datac => \u0|modular_adc_0|control_internal|u_control_fsm|chsel\(1),
	datad => \u0|modular_adc_0|control_internal|u_control_fsm|WideOr12~combout\,
	combout => \u0|modular_adc_0|control_internal|u_control_fsm|Selector15~3_combout\);

-- Location: FF_X45_Y51_N13
\u0|modular_adc_0|control_internal|u_control_fsm|chsel[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCLK~inputclkctrl_outclk\,
	d => \u0|modular_adc_0|control_internal|u_control_fsm|Selector15~3_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|modular_adc_0|control_internal|u_control_fsm|chsel\(1));

-- Location: LCCOMB_X45_Y51_N16
\u0|modular_adc_0|control_internal|u_control_fsm|chsel[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|modular_adc_0|control_internal|u_control_fsm|chsel[0]~2_combout\ = (\u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.GETCMD~q\) # ((\u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.CONV~q\) # 
-- ((\u0|modular_adc_0|control_internal|u_control_fsm|chsel\(0) & \u0|modular_adc_0|control_internal|u_control_fsm|WideOr12~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.GETCMD~q\,
	datab => \u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.CONV~q\,
	datac => \u0|modular_adc_0|control_internal|u_control_fsm|chsel\(0),
	datad => \u0|modular_adc_0|control_internal|u_control_fsm|WideOr12~combout\,
	combout => \u0|modular_adc_0|control_internal|u_control_fsm|chsel[0]~2_combout\);

-- Location: FF_X45_Y51_N17
\u0|modular_adc_0|control_internal|u_control_fsm|chsel[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCLK~inputclkctrl_outclk\,
	d => \u0|modular_adc_0|control_internal|u_control_fsm|chsel[0]~2_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|modular_adc_0|control_internal|u_control_fsm|chsel\(0));

-- Location: LCCOMB_X44_Y51_N6
\u0|modular_adc_0|control_internal|adc_inst|decoder|WideOr4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|modular_adc_0|control_internal|adc_inst|decoder|WideOr4~0_combout\ = (!\u0|modular_adc_0|control_internal|u_control_fsm|chsel\(0)) # (!\u0|modular_adc_0|control_internal|u_control_fsm|chsel\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|modular_adc_0|control_internal|u_control_fsm|chsel\(1),
	datad => \u0|modular_adc_0|control_internal|u_control_fsm|chsel\(0),
	combout => \u0|modular_adc_0|control_internal|adc_inst|decoder|WideOr4~0_combout\);

-- Location: LCCOMB_X44_Y51_N0
\u0|modular_adc_0|control_internal|adc_inst|decoder|WideOr2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|modular_adc_0|control_internal|adc_inst|decoder|WideOr2~0_combout\ = (\u0|modular_adc_0|control_internal|u_control_fsm|chsel\(0)) # (!\u0|modular_adc_0|control_internal|u_control_fsm|chsel\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|modular_adc_0|control_internal|u_control_fsm|chsel\(1),
	datad => \u0|modular_adc_0|control_internal|u_control_fsm|chsel\(0),
	combout => \u0|modular_adc_0|control_internal|adc_inst|decoder|WideOr2~0_combout\);

-- Location: LCCOMB_X44_Y51_N4
\u0|modular_adc_0|control_internal|u_control_fsm|chsel[1]~_wirecell\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|modular_adc_0|control_internal|u_control_fsm|chsel[1]~_wirecell_combout\ = !\u0|modular_adc_0|control_internal|u_control_fsm|chsel\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|modular_adc_0|control_internal|u_control_fsm|chsel\(1),
	combout => \u0|modular_adc_0|control_internal|u_control_fsm|chsel[1]~_wirecell_combout\);

-- Location: ADCBLOCK_X43_Y52_N0
\u0|modular_adc_0|control_internal|adc_inst|adcblock_instance|primitive_instance\ : fiftyfivenm_adcblock
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
	soc => \u0|modular_adc_0|control_internal|u_control_fsm|soc~q\,
	usr_pwd => \u0|modular_adc_0|control_internal|u_control_fsm|usr_pwd~_wirecell_combout\,
	tsen => \~GND~combout\,
	clkin_from_pll_c0 => \u0|altpll_0|sd1|wire_pll7_clk\(0),
	chsel => \u0|modular_adc_0|control_internal|adc_inst|adcblock_instance|primitive_instance_CHSEL_bus\,
	eoc => \u0|modular_adc_0|control_internal|adc_inst|adcblock_instance|eoc\,
	dout => \u0|modular_adc_0|control_internal|adc_inst|adcblock_instance|primitive_instance_DOUT_bus\);

-- Location: LCCOMB_X46_Y51_N28
\u0|modular_adc_0|control_internal|u_control_fsm|u_clk_dft_synchronizer|din_s1~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|modular_adc_0|control_internal|u_control_fsm|u_clk_dft_synchronizer|din_s1~feeder_combout\ = \u0|modular_adc_0|control_internal|adc_inst|adcblock_instance|clkout_adccore\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|modular_adc_0|control_internal|adc_inst|adcblock_instance|clkout_adccore\,
	combout => \u0|modular_adc_0|control_internal|u_control_fsm|u_clk_dft_synchronizer|din_s1~feeder_combout\);

-- Location: FF_X46_Y51_N29
\u0|modular_adc_0|control_internal|u_control_fsm|u_clk_dft_synchronizer|din_s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCLK~inputclkctrl_outclk\,
	d => \u0|modular_adc_0|control_internal|u_control_fsm|u_clk_dft_synchronizer|din_s1~feeder_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|modular_adc_0|control_internal|u_control_fsm|u_clk_dft_synchronizer|din_s1~q\);

-- Location: LCCOMB_X46_Y51_N30
\u0|modular_adc_0|control_internal|u_control_fsm|u_clk_dft_synchronizer|dreg[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|modular_adc_0|control_internal|u_control_fsm|u_clk_dft_synchronizer|dreg[0]~feeder_combout\ = \u0|modular_adc_0|control_internal|u_control_fsm|u_clk_dft_synchronizer|din_s1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|modular_adc_0|control_internal|u_control_fsm|u_clk_dft_synchronizer|din_s1~q\,
	combout => \u0|modular_adc_0|control_internal|u_control_fsm|u_clk_dft_synchronizer|dreg[0]~feeder_combout\);

-- Location: FF_X46_Y51_N31
\u0|modular_adc_0|control_internal|u_control_fsm|u_clk_dft_synchronizer|dreg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCLK~inputclkctrl_outclk\,
	d => \u0|modular_adc_0|control_internal|u_control_fsm|u_clk_dft_synchronizer|dreg[0]~feeder_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|modular_adc_0|control_internal|u_control_fsm|u_clk_dft_synchronizer|dreg\(0));

-- Location: LCCOMB_X46_Y51_N26
\u0|modular_adc_0|control_internal|u_control_fsm|clk_dft_synch_dly~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|modular_adc_0|control_internal|u_control_fsm|clk_dft_synch_dly~feeder_combout\ = \u0|modular_adc_0|control_internal|u_control_fsm|u_clk_dft_synchronizer|dreg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|modular_adc_0|control_internal|u_control_fsm|u_clk_dft_synchronizer|dreg\(0),
	combout => \u0|modular_adc_0|control_internal|u_control_fsm|clk_dft_synch_dly~feeder_combout\);

-- Location: FF_X46_Y51_N27
\u0|modular_adc_0|control_internal|u_control_fsm|clk_dft_synch_dly\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCLK~inputclkctrl_outclk\,
	d => \u0|modular_adc_0|control_internal|u_control_fsm|clk_dft_synch_dly~feeder_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|modular_adc_0|control_internal|u_control_fsm|clk_dft_synch_dly~q\);

-- Location: LCCOMB_X46_Y51_N4
\u0|modular_adc_0|control_internal|u_control_fsm|Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|modular_adc_0|control_internal|u_control_fsm|Selector4~0_combout\ = (\u0|modular_adc_0|control_internal|u_control_fsm|clk_dft_synch_dly~q\ & (((\u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRUP_CH~q\ & 
-- \u0|modular_adc_0|control_internal|u_control_fsm|u_clk_dft_synchronizer|dreg\(0))))) # (!\u0|modular_adc_0|control_internal|u_control_fsm|clk_dft_synch_dly~q\ & ((\u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRUP_CH~q\) # 
-- ((\u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN_DONE~q\ & \u0|modular_adc_0|control_internal|u_control_fsm|u_clk_dft_synchronizer|dreg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|modular_adc_0|control_internal|u_control_fsm|clk_dft_synch_dly~q\,
	datab => \u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN_DONE~q\,
	datac => \u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRUP_CH~q\,
	datad => \u0|modular_adc_0|control_internal|u_control_fsm|u_clk_dft_synchronizer|dreg\(0),
	combout => \u0|modular_adc_0|control_internal|u_control_fsm|Selector4~0_combout\);

-- Location: LCCOMB_X45_Y51_N10
\u0|modular_adc_0|control_internal|u_control_fsm|WideOr12~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|modular_adc_0|control_internal|u_control_fsm|WideOr12~1_combout\ = (!\u0|modular_adc_0|control_internal|u_control_fsm|Selector4~0_combout\ & (\u0|modular_adc_0|control_internal|u_control_fsm|WideOr12~0_combout\ & 
-- !\u0|modular_adc_0|control_internal|u_control_fsm|Selector7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|modular_adc_0|control_internal|u_control_fsm|Selector4~0_combout\,
	datab => \u0|modular_adc_0|control_internal|u_control_fsm|WideOr12~0_combout\,
	datad => \u0|modular_adc_0|control_internal|u_control_fsm|Selector7~0_combout\,
	combout => \u0|modular_adc_0|control_internal|u_control_fsm|WideOr12~1_combout\);

-- Location: LCCOMB_X45_Y51_N0
\u0|modular_adc_0|control_internal|u_control_fsm|Selector17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|modular_adc_0|control_internal|u_control_fsm|Selector17~0_combout\ = (\u0|modular_adc_0|control_internal|u_control_fsm|Selector5~1_combout\) # ((\u0|modular_adc_0|control_internal|u_control_fsm|soc~q\ & 
-- ((!\u0|modular_adc_0|control_internal|u_control_fsm|Selector15~2_combout\) # (!\u0|modular_adc_0|control_internal|u_control_fsm|WideOr12~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|modular_adc_0|control_internal|u_control_fsm|WideOr12~1_combout\,
	datab => \u0|modular_adc_0|control_internal|u_control_fsm|Selector5~1_combout\,
	datac => \u0|modular_adc_0|control_internal|u_control_fsm|soc~q\,
	datad => \u0|modular_adc_0|control_internal|u_control_fsm|Selector15~2_combout\,
	combout => \u0|modular_adc_0|control_internal|u_control_fsm|Selector17~0_combout\);

-- Location: FF_X45_Y51_N1
\u0|modular_adc_0|control_internal|u_control_fsm|soc\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCLK~inputclkctrl_outclk\,
	d => \u0|modular_adc_0|control_internal|u_control_fsm|Selector17~0_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|modular_adc_0|control_internal|u_control_fsm|soc~q\);

-- Location: LCCOMB_X45_Y51_N28
\u0|modular_adc_0|control_internal|u_control_fsm|u_eoc_synchronizer|din_s1~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|modular_adc_0|control_internal|u_control_fsm|u_eoc_synchronizer|din_s1~feeder_combout\ = \u0|modular_adc_0|control_internal|adc_inst|adcblock_instance|eoc\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|modular_adc_0|control_internal|adc_inst|adcblock_instance|eoc\,
	combout => \u0|modular_adc_0|control_internal|u_control_fsm|u_eoc_synchronizer|din_s1~feeder_combout\);

-- Location: FF_X45_Y51_N29
\u0|modular_adc_0|control_internal|u_control_fsm|u_eoc_synchronizer|din_s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCLK~inputclkctrl_outclk\,
	d => \u0|modular_adc_0|control_internal|u_control_fsm|u_eoc_synchronizer|din_s1~feeder_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|modular_adc_0|control_internal|u_control_fsm|u_eoc_synchronizer|din_s1~q\);

-- Location: LCCOMB_X45_Y51_N26
\u0|modular_adc_0|control_internal|u_control_fsm|u_eoc_synchronizer|dreg[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|modular_adc_0|control_internal|u_control_fsm|u_eoc_synchronizer|dreg[0]~feeder_combout\ = \u0|modular_adc_0|control_internal|u_control_fsm|u_eoc_synchronizer|din_s1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|modular_adc_0|control_internal|u_control_fsm|u_eoc_synchronizer|din_s1~q\,
	combout => \u0|modular_adc_0|control_internal|u_control_fsm|u_eoc_synchronizer|dreg[0]~feeder_combout\);

-- Location: FF_X45_Y51_N27
\u0|modular_adc_0|control_internal|u_control_fsm|u_eoc_synchronizer|dreg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCLK~inputclkctrl_outclk\,
	d => \u0|modular_adc_0|control_internal|u_control_fsm|u_eoc_synchronizer|dreg[0]~feeder_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|modular_adc_0|control_internal|u_control_fsm|u_eoc_synchronizer|dreg\(0));

-- Location: FF_X45_Y51_N19
\u0|modular_adc_0|control_internal|u_control_fsm|eoc_synch_dly\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCLK~inputclkctrl_outclk\,
	asdata => \u0|modular_adc_0|control_internal|u_control_fsm|u_eoc_synchronizer|dreg\(0),
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|modular_adc_0|control_internal|u_control_fsm|eoc_synch_dly~q\);

-- Location: LCCOMB_X45_Y51_N6
\u0|modular_adc_0|control_internal|u_control_fsm|load_dout~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|modular_adc_0|control_internal|u_control_fsm|load_dout~1_combout\ = (\u0|modular_adc_0|control_internal|u_control_fsm|eoc_synch_dly~q\ & (!\u0|modular_adc_0|control_internal|u_control_fsm|u_eoc_synchronizer|dreg\(0) & 
-- \u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.CONV~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|modular_adc_0|control_internal|u_control_fsm|eoc_synch_dly~q\,
	datac => \u0|modular_adc_0|control_internal|u_control_fsm|u_eoc_synchronizer|dreg\(0),
	datad => \u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.CONV~q\,
	combout => \u0|modular_adc_0|control_internal|u_control_fsm|load_dout~1_combout\);

-- Location: FF_X45_Y51_N7
\u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.CONV_DLY1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCLK~inputclkctrl_outclk\,
	d => \u0|modular_adc_0|control_internal|u_control_fsm|load_dout~1_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.CONV_DLY1~q\);

-- Location: FF_X51_Y51_N9
\u0|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCLK~inputclkctrl_outclk\,
	asdata => \u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.CONV_DLY1~q\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\);

-- Location: LCCOMB_X44_Y51_N28
\u0|modular_adc_0|control_internal|u_control_fsm|dout_flp[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|modular_adc_0|control_internal|u_control_fsm|dout_flp[0]~feeder_combout\ = \u0|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(0),
	combout => \u0|modular_adc_0|control_internal|u_control_fsm|dout_flp[0]~feeder_combout\);

-- Location: LCCOMB_X61_Y51_N8
\u0|modular_adc_0|control_internal|u_control_fsm|pend~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|modular_adc_0|control_internal|u_control_fsm|pend~0_combout\ = (\u0|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\) # (\u0|modular_adc_0|control_internal|u_control_fsm|pend~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\,
	datac => \u0|modular_adc_0|control_internal|u_control_fsm|pend~q\,
	combout => \u0|modular_adc_0|control_internal|u_control_fsm|pend~0_combout\);

-- Location: FF_X61_Y51_N9
\u0|modular_adc_0|control_internal|u_control_fsm|pend\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCLK~inputclkctrl_outclk\,
	d => \u0|modular_adc_0|control_internal|u_control_fsm|pend~0_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|modular_adc_0|control_internal|u_control_fsm|pend~q\);

-- Location: LCCOMB_X45_Y51_N18
\u0|modular_adc_0|control_internal|u_control_fsm|load_dout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|modular_adc_0|control_internal|u_control_fsm|load_dout~0_combout\ = (!\u0|modular_adc_0|control_internal|u_control_fsm|u_eoc_synchronizer|dreg\(0) & (\u0|modular_adc_0|control_internal|u_control_fsm|pend~q\ & 
-- (\u0|modular_adc_0|control_internal|u_control_fsm|eoc_synch_dly~q\ & \u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.CONV~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|modular_adc_0|control_internal|u_control_fsm|u_eoc_synchronizer|dreg\(0),
	datab => \u0|modular_adc_0|control_internal|u_control_fsm|pend~q\,
	datac => \u0|modular_adc_0|control_internal|u_control_fsm|eoc_synch_dly~q\,
	datad => \u0|modular_adc_0|control_internal|u_control_fsm|ctrl_state.CONV~q\,
	combout => \u0|modular_adc_0|control_internal|u_control_fsm|load_dout~0_combout\);

-- Location: FF_X44_Y51_N29
\u0|modular_adc_0|control_internal|u_control_fsm|dout_flp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCLK~inputclkctrl_outclk\,
	d => \u0|modular_adc_0|control_internal|u_control_fsm|dout_flp[0]~feeder_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	ena => \u0|modular_adc_0|control_internal|u_control_fsm|load_dout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|modular_adc_0|control_internal|u_control_fsm|dout_flp\(0));

-- Location: LCCOMB_X62_Y51_N0
\u0|modular_adc_0|control_internal|u_control_fsm|rsp_data~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|modular_adc_0|control_internal|u_control_fsm|rsp_data~0_combout\ = (\u0|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\ & (\u0|modular_adc_0|control_internal|u_control_fsm|dout_flp\(0) & 
-- \u0|modular_adc_0|control_internal|u_control_fsm|pend~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\,
	datac => \u0|modular_adc_0|control_internal|u_control_fsm|dout_flp\(0),
	datad => \u0|modular_adc_0|control_internal|u_control_fsm|pend~q\,
	combout => \u0|modular_adc_0|control_internal|u_control_fsm|rsp_data~0_combout\);

-- Location: FF_X62_Y51_N1
\u0|modular_adc_0|control_internal|u_control_fsm|rsp_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCLK~inputclkctrl_outclk\,
	d => \u0|modular_adc_0|control_internal|u_control_fsm|rsp_data~0_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|modular_adc_0|control_internal|u_control_fsm|rsp_data\(0));

-- Location: LCCOMB_X63_Y51_N22
\u0|modular_adc_0|control_internal|u_control_fsm|load_rsp~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|modular_adc_0|control_internal|u_control_fsm|load_rsp~0_combout\ = (\u0|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\ & \u0|modular_adc_0|control_internal|u_control_fsm|pend~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\,
	datad => \u0|modular_adc_0|control_internal|u_control_fsm|pend~q\,
	combout => \u0|modular_adc_0|control_internal|u_control_fsm|load_rsp~0_combout\);

-- Location: FF_X63_Y51_N23
\u0|modular_adc_0|control_internal|u_control_fsm|rsp_valid\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCLK~inputclkctrl_outclk\,
	d => \u0|modular_adc_0|control_internal|u_control_fsm|load_rsp~0_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|modular_adc_0|control_internal|u_control_fsm|rsp_valid~q\);

-- Location: FF_X63_Y51_N29
\leds[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \u0|modular_adc_0|control_internal|u_control_fsm|rsp_data\(0),
	sload => VCC,
	ena => \u0|modular_adc_0|control_internal|u_control_fsm|rsp_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leds[0]~reg0_q\);

-- Location: LCCOMB_X44_Y51_N14
\u0|modular_adc_0|control_internal|u_control_fsm|dout_flp[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|modular_adc_0|control_internal|u_control_fsm|dout_flp[1]~feeder_combout\ = \u0|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(1),
	combout => \u0|modular_adc_0|control_internal|u_control_fsm|dout_flp[1]~feeder_combout\);

-- Location: FF_X44_Y51_N15
\u0|modular_adc_0|control_internal|u_control_fsm|dout_flp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCLK~inputclkctrl_outclk\,
	d => \u0|modular_adc_0|control_internal|u_control_fsm|dout_flp[1]~feeder_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	ena => \u0|modular_adc_0|control_internal|u_control_fsm|load_dout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|modular_adc_0|control_internal|u_control_fsm|dout_flp\(1));

-- Location: LCCOMB_X62_Y51_N10
\u0|modular_adc_0|control_internal|u_control_fsm|rsp_data~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|modular_adc_0|control_internal|u_control_fsm|rsp_data~1_combout\ = (\u0|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\ & (\u0|modular_adc_0|control_internal|u_control_fsm|dout_flp\(1) & 
-- \u0|modular_adc_0|control_internal|u_control_fsm|pend~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\,
	datac => \u0|modular_adc_0|control_internal|u_control_fsm|dout_flp\(1),
	datad => \u0|modular_adc_0|control_internal|u_control_fsm|pend~q\,
	combout => \u0|modular_adc_0|control_internal|u_control_fsm|rsp_data~1_combout\);

-- Location: FF_X62_Y51_N11
\u0|modular_adc_0|control_internal|u_control_fsm|rsp_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCLK~inputclkctrl_outclk\,
	d => \u0|modular_adc_0|control_internal|u_control_fsm|rsp_data~1_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|modular_adc_0|control_internal|u_control_fsm|rsp_data\(1));

-- Location: LCCOMB_X62_Y51_N24
\leds[1]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leds[1]~reg0feeder_combout\ = \u0|modular_adc_0|control_internal|u_control_fsm|rsp_data\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|modular_adc_0|control_internal|u_control_fsm|rsp_data\(1),
	combout => \leds[1]~reg0feeder_combout\);

-- Location: FF_X62_Y51_N25
\leds[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \leds[1]~reg0feeder_combout\,
	ena => \u0|modular_adc_0|control_internal|u_control_fsm|rsp_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leds[1]~reg0_q\);

-- Location: LCCOMB_X44_Y51_N24
\u0|modular_adc_0|control_internal|u_control_fsm|dout_flp[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|modular_adc_0|control_internal|u_control_fsm|dout_flp[2]~feeder_combout\ = \u0|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(2),
	combout => \u0|modular_adc_0|control_internal|u_control_fsm|dout_flp[2]~feeder_combout\);

-- Location: FF_X44_Y51_N25
\u0|modular_adc_0|control_internal|u_control_fsm|dout_flp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCLK~inputclkctrl_outclk\,
	d => \u0|modular_adc_0|control_internal|u_control_fsm|dout_flp[2]~feeder_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	ena => \u0|modular_adc_0|control_internal|u_control_fsm|load_dout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|modular_adc_0|control_internal|u_control_fsm|dout_flp\(2));

-- Location: LCCOMB_X62_Y51_N20
\u0|modular_adc_0|control_internal|u_control_fsm|rsp_data~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|modular_adc_0|control_internal|u_control_fsm|rsp_data~2_combout\ = (\u0|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\ & (\u0|modular_adc_0|control_internal|u_control_fsm|dout_flp\(2) & 
-- \u0|modular_adc_0|control_internal|u_control_fsm|pend~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\,
	datac => \u0|modular_adc_0|control_internal|u_control_fsm|dout_flp\(2),
	datad => \u0|modular_adc_0|control_internal|u_control_fsm|pend~q\,
	combout => \u0|modular_adc_0|control_internal|u_control_fsm|rsp_data~2_combout\);

-- Location: FF_X62_Y51_N21
\u0|modular_adc_0|control_internal|u_control_fsm|rsp_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCLK~inputclkctrl_outclk\,
	d => \u0|modular_adc_0|control_internal|u_control_fsm|rsp_data~2_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|modular_adc_0|control_internal|u_control_fsm|rsp_data\(2));

-- Location: LCCOMB_X62_Y51_N30
\leds[2]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leds[2]~reg0feeder_combout\ = \u0|modular_adc_0|control_internal|u_control_fsm|rsp_data\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|modular_adc_0|control_internal|u_control_fsm|rsp_data\(2),
	combout => \leds[2]~reg0feeder_combout\);

-- Location: FF_X62_Y51_N31
\leds[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \leds[2]~reg0feeder_combout\,
	ena => \u0|modular_adc_0|control_internal|u_control_fsm|rsp_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leds[2]~reg0_q\);

-- Location: FF_X45_Y51_N23
\u0|modular_adc_0|control_internal|u_control_fsm|dout_flp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCLK~inputclkctrl_outclk\,
	asdata => \u0|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(3),
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sload => VCC,
	ena => \u0|modular_adc_0|control_internal|u_control_fsm|load_dout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|modular_adc_0|control_internal|u_control_fsm|dout_flp\(3));

-- Location: LCCOMB_X61_Y51_N6
\u0|modular_adc_0|control_internal|u_control_fsm|rsp_data~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|modular_adc_0|control_internal|u_control_fsm|rsp_data~3_combout\ = (\u0|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\ & (\u0|modular_adc_0|control_internal|u_control_fsm|pend~q\ & 
-- \u0|modular_adc_0|control_internal|u_control_fsm|dout_flp\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\,
	datab => \u0|modular_adc_0|control_internal|u_control_fsm|pend~q\,
	datad => \u0|modular_adc_0|control_internal|u_control_fsm|dout_flp\(3),
	combout => \u0|modular_adc_0|control_internal|u_control_fsm|rsp_data~3_combout\);

-- Location: FF_X61_Y51_N7
\u0|modular_adc_0|control_internal|u_control_fsm|rsp_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCLK~inputclkctrl_outclk\,
	d => \u0|modular_adc_0|control_internal|u_control_fsm|rsp_data~3_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|modular_adc_0|control_internal|u_control_fsm|rsp_data\(3));

-- Location: FF_X62_Y51_N29
\leds[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \u0|modular_adc_0|control_internal|u_control_fsm|rsp_data\(3),
	sload => VCC,
	ena => \u0|modular_adc_0|control_internal|u_control_fsm|rsp_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leds[3]~reg0_q\);

-- Location: LCCOMB_X44_Y51_N30
\u0|modular_adc_0|control_internal|u_control_fsm|dout_flp[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|modular_adc_0|control_internal|u_control_fsm|dout_flp[4]~feeder_combout\ = \u0|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(4),
	combout => \u0|modular_adc_0|control_internal|u_control_fsm|dout_flp[4]~feeder_combout\);

-- Location: FF_X44_Y51_N31
\u0|modular_adc_0|control_internal|u_control_fsm|dout_flp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCLK~inputclkctrl_outclk\,
	d => \u0|modular_adc_0|control_internal|u_control_fsm|dout_flp[4]~feeder_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	ena => \u0|modular_adc_0|control_internal|u_control_fsm|load_dout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|modular_adc_0|control_internal|u_control_fsm|dout_flp\(4));

-- Location: LCCOMB_X61_Y51_N22
\u0|modular_adc_0|control_internal|u_control_fsm|rsp_data~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|modular_adc_0|control_internal|u_control_fsm|rsp_data~4_combout\ = (\u0|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\ & (\u0|modular_adc_0|control_internal|u_control_fsm|dout_flp\(4) & 
-- \u0|modular_adc_0|control_internal|u_control_fsm|pend~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\,
	datab => \u0|modular_adc_0|control_internal|u_control_fsm|dout_flp\(4),
	datac => \u0|modular_adc_0|control_internal|u_control_fsm|pend~q\,
	combout => \u0|modular_adc_0|control_internal|u_control_fsm|rsp_data~4_combout\);

-- Location: LCCOMB_X64_Y51_N30
\u0|modular_adc_0|control_internal|u_control_fsm|rsp_data[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|modular_adc_0|control_internal|u_control_fsm|rsp_data[4]~feeder_combout\ = \u0|modular_adc_0|control_internal|u_control_fsm|rsp_data~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|modular_adc_0|control_internal|u_control_fsm|rsp_data~4_combout\,
	combout => \u0|modular_adc_0|control_internal|u_control_fsm|rsp_data[4]~feeder_combout\);

-- Location: FF_X64_Y51_N31
\u0|modular_adc_0|control_internal|u_control_fsm|rsp_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCLK~inputclkctrl_outclk\,
	d => \u0|modular_adc_0|control_internal|u_control_fsm|rsp_data[4]~feeder_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|modular_adc_0|control_internal|u_control_fsm|rsp_data\(4));

-- Location: FF_X63_Y51_N31
\leds[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \u0|modular_adc_0|control_internal|u_control_fsm|rsp_data\(4),
	sload => VCC,
	ena => \u0|modular_adc_0|control_internal|u_control_fsm|rsp_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leds[4]~reg0_q\);

-- Location: LCCOMB_X45_Y51_N14
\u0|modular_adc_0|control_internal|u_control_fsm|dout_flp[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|modular_adc_0|control_internal|u_control_fsm|dout_flp[5]~feeder_combout\ = \u0|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(5),
	combout => \u0|modular_adc_0|control_internal|u_control_fsm|dout_flp[5]~feeder_combout\);

-- Location: FF_X45_Y51_N15
\u0|modular_adc_0|control_internal|u_control_fsm|dout_flp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCLK~inputclkctrl_outclk\,
	d => \u0|modular_adc_0|control_internal|u_control_fsm|dout_flp[5]~feeder_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	ena => \u0|modular_adc_0|control_internal|u_control_fsm|load_dout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|modular_adc_0|control_internal|u_control_fsm|dout_flp\(5));

-- Location: LCCOMB_X62_Y51_N6
\u0|modular_adc_0|control_internal|u_control_fsm|rsp_data~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|modular_adc_0|control_internal|u_control_fsm|rsp_data~5_combout\ = (\u0|modular_adc_0|control_internal|u_control_fsm|dout_flp\(5) & (\u0|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\ & 
-- \u0|modular_adc_0|control_internal|u_control_fsm|pend~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|modular_adc_0|control_internal|u_control_fsm|dout_flp\(5),
	datab => \u0|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\,
	datad => \u0|modular_adc_0|control_internal|u_control_fsm|pend~q\,
	combout => \u0|modular_adc_0|control_internal|u_control_fsm|rsp_data~5_combout\);

-- Location: FF_X62_Y51_N7
\u0|modular_adc_0|control_internal|u_control_fsm|rsp_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCLK~inputclkctrl_outclk\,
	d => \u0|modular_adc_0|control_internal|u_control_fsm|rsp_data~5_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|modular_adc_0|control_internal|u_control_fsm|rsp_data\(5));

-- Location: LCCOMB_X62_Y51_N8
\leds[5]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leds[5]~reg0feeder_combout\ = \u0|modular_adc_0|control_internal|u_control_fsm|rsp_data\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|modular_adc_0|control_internal|u_control_fsm|rsp_data\(5),
	combout => \leds[5]~reg0feeder_combout\);

-- Location: FF_X62_Y51_N9
\leds[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \leds[5]~reg0feeder_combout\,
	ena => \u0|modular_adc_0|control_internal|u_control_fsm|rsp_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leds[5]~reg0_q\);

-- Location: LCCOMB_X44_Y51_N12
\u0|modular_adc_0|control_internal|u_control_fsm|dout_flp[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|modular_adc_0|control_internal|u_control_fsm|dout_flp[6]~feeder_combout\ = \u0|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(6),
	combout => \u0|modular_adc_0|control_internal|u_control_fsm|dout_flp[6]~feeder_combout\);

-- Location: FF_X44_Y51_N13
\u0|modular_adc_0|control_internal|u_control_fsm|dout_flp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCLK~inputclkctrl_outclk\,
	d => \u0|modular_adc_0|control_internal|u_control_fsm|dout_flp[6]~feeder_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	ena => \u0|modular_adc_0|control_internal|u_control_fsm|load_dout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|modular_adc_0|control_internal|u_control_fsm|dout_flp\(6));

-- Location: LCCOMB_X62_Y51_N28
\u0|modular_adc_0|control_internal|u_control_fsm|rsp_data~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|modular_adc_0|control_internal|u_control_fsm|rsp_data~6_combout\ = (\u0|modular_adc_0|control_internal|u_control_fsm|dout_flp\(6) & (\u0|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\ & 
-- \u0|modular_adc_0|control_internal|u_control_fsm|pend~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|modular_adc_0|control_internal|u_control_fsm|dout_flp\(6),
	datab => \u0|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\,
	datad => \u0|modular_adc_0|control_internal|u_control_fsm|pend~q\,
	combout => \u0|modular_adc_0|control_internal|u_control_fsm|rsp_data~6_combout\);

-- Location: FF_X64_Y51_N21
\u0|modular_adc_0|control_internal|u_control_fsm|rsp_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCLK~inputclkctrl_outclk\,
	asdata => \u0|modular_adc_0|control_internal|u_control_fsm|rsp_data~6_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|modular_adc_0|control_internal|u_control_fsm|rsp_data\(6));

-- Location: FF_X63_Y51_N25
\leds[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \u0|modular_adc_0|control_internal|u_control_fsm|rsp_data\(6),
	sload => VCC,
	ena => \u0|modular_adc_0|control_internal|u_control_fsm|rsp_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leds[6]~reg0_q\);

-- Location: LCCOMB_X44_Y51_N22
\u0|modular_adc_0|control_internal|u_control_fsm|dout_flp[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|modular_adc_0|control_internal|u_control_fsm|dout_flp[7]~feeder_combout\ = \u0|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(7),
	combout => \u0|modular_adc_0|control_internal|u_control_fsm|dout_flp[7]~feeder_combout\);

-- Location: FF_X44_Y51_N23
\u0|modular_adc_0|control_internal|u_control_fsm|dout_flp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCLK~inputclkctrl_outclk\,
	d => \u0|modular_adc_0|control_internal|u_control_fsm|dout_flp[7]~feeder_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	ena => \u0|modular_adc_0|control_internal|u_control_fsm|load_dout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|modular_adc_0|control_internal|u_control_fsm|dout_flp\(7));

-- Location: LCCOMB_X61_Y51_N0
\u0|modular_adc_0|control_internal|u_control_fsm|rsp_data~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|modular_adc_0|control_internal|u_control_fsm|rsp_data~7_combout\ = (\u0|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\ & (\u0|modular_adc_0|control_internal|u_control_fsm|dout_flp\(7) & 
-- \u0|modular_adc_0|control_internal|u_control_fsm|pend~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\,
	datab => \u0|modular_adc_0|control_internal|u_control_fsm|dout_flp\(7),
	datac => \u0|modular_adc_0|control_internal|u_control_fsm|pend~q\,
	combout => \u0|modular_adc_0|control_internal|u_control_fsm|rsp_data~7_combout\);

-- Location: LCCOMB_X64_Y51_N14
\u0|modular_adc_0|control_internal|u_control_fsm|rsp_data[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|modular_adc_0|control_internal|u_control_fsm|rsp_data[7]~feeder_combout\ = \u0|modular_adc_0|control_internal|u_control_fsm|rsp_data~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|modular_adc_0|control_internal|u_control_fsm|rsp_data~7_combout\,
	combout => \u0|modular_adc_0|control_internal|u_control_fsm|rsp_data[7]~feeder_combout\);

-- Location: FF_X64_Y51_N15
\u0|modular_adc_0|control_internal|u_control_fsm|rsp_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCLK~inputclkctrl_outclk\,
	d => \u0|modular_adc_0|control_internal|u_control_fsm|rsp_data[7]~feeder_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|modular_adc_0|control_internal|u_control_fsm|rsp_data\(7));

-- Location: FF_X63_Y51_N15
\leds[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \u0|modular_adc_0|control_internal|u_control_fsm|rsp_data\(7),
	sload => VCC,
	ena => \u0|modular_adc_0|control_internal|u_control_fsm|rsp_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leds[7]~reg0_q\);

-- Location: LCCOMB_X44_Y51_N20
\u0|modular_adc_0|control_internal|u_control_fsm|dout_flp[8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|modular_adc_0|control_internal|u_control_fsm|dout_flp[8]~feeder_combout\ = \u0|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(8),
	combout => \u0|modular_adc_0|control_internal|u_control_fsm|dout_flp[8]~feeder_combout\);

-- Location: FF_X44_Y51_N21
\u0|modular_adc_0|control_internal|u_control_fsm|dout_flp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCLK~inputclkctrl_outclk\,
	d => \u0|modular_adc_0|control_internal|u_control_fsm|dout_flp[8]~feeder_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	ena => \u0|modular_adc_0|control_internal|u_control_fsm|load_dout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|modular_adc_0|control_internal|u_control_fsm|dout_flp\(8));

-- Location: LCCOMB_X61_Y51_N10
\u0|modular_adc_0|control_internal|u_control_fsm|rsp_data~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|modular_adc_0|control_internal|u_control_fsm|rsp_data~8_combout\ = (\u0|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\ & (\u0|modular_adc_0|control_internal|u_control_fsm|pend~q\ & 
-- \u0|modular_adc_0|control_internal|u_control_fsm|dout_flp\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\,
	datab => \u0|modular_adc_0|control_internal|u_control_fsm|pend~q\,
	datac => \u0|modular_adc_0|control_internal|u_control_fsm|dout_flp\(8),
	combout => \u0|modular_adc_0|control_internal|u_control_fsm|rsp_data~8_combout\);

-- Location: LCCOMB_X64_Y51_N12
\u0|modular_adc_0|control_internal|u_control_fsm|rsp_data[8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|modular_adc_0|control_internal|u_control_fsm|rsp_data[8]~feeder_combout\ = \u0|modular_adc_0|control_internal|u_control_fsm|rsp_data~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|modular_adc_0|control_internal|u_control_fsm|rsp_data~8_combout\,
	combout => \u0|modular_adc_0|control_internal|u_control_fsm|rsp_data[8]~feeder_combout\);

-- Location: FF_X64_Y51_N13
\u0|modular_adc_0|control_internal|u_control_fsm|rsp_data[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCLK~inputclkctrl_outclk\,
	d => \u0|modular_adc_0|control_internal|u_control_fsm|rsp_data[8]~feeder_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|modular_adc_0|control_internal|u_control_fsm|rsp_data\(8));

-- Location: FF_X63_Y51_N21
\leds[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \u0|modular_adc_0|control_internal|u_control_fsm|rsp_data\(8),
	sload => VCC,
	ena => \u0|modular_adc_0|control_internal|u_control_fsm|rsp_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leds[8]~reg0_q\);

-- Location: LCCOMB_X44_Y51_N10
\u0|modular_adc_0|control_internal|u_control_fsm|dout_flp[9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|modular_adc_0|control_internal|u_control_fsm|dout_flp[9]~feeder_combout\ = \u0|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(9),
	combout => \u0|modular_adc_0|control_internal|u_control_fsm|dout_flp[9]~feeder_combout\);

-- Location: FF_X44_Y51_N11
\u0|modular_adc_0|control_internal|u_control_fsm|dout_flp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCLK~inputclkctrl_outclk\,
	d => \u0|modular_adc_0|control_internal|u_control_fsm|dout_flp[9]~feeder_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	ena => \u0|modular_adc_0|control_internal|u_control_fsm|load_dout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|modular_adc_0|control_internal|u_control_fsm|dout_flp\(9));

-- Location: LCCOMB_X61_Y51_N12
\u0|modular_adc_0|control_internal|u_control_fsm|rsp_data~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|modular_adc_0|control_internal|u_control_fsm|rsp_data~9_combout\ = (\u0|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\ & (\u0|modular_adc_0|control_internal|u_control_fsm|pend~q\ & 
-- \u0|modular_adc_0|control_internal|u_control_fsm|dout_flp\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\,
	datab => \u0|modular_adc_0|control_internal|u_control_fsm|pend~q\,
	datac => \u0|modular_adc_0|control_internal|u_control_fsm|dout_flp\(9),
	combout => \u0|modular_adc_0|control_internal|u_control_fsm|rsp_data~9_combout\);

-- Location: LCCOMB_X62_Y51_N4
\u0|modular_adc_0|control_internal|u_control_fsm|rsp_data[9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|modular_adc_0|control_internal|u_control_fsm|rsp_data[9]~feeder_combout\ = \u0|modular_adc_0|control_internal|u_control_fsm|rsp_data~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|modular_adc_0|control_internal|u_control_fsm|rsp_data~9_combout\,
	combout => \u0|modular_adc_0|control_internal|u_control_fsm|rsp_data[9]~feeder_combout\);

-- Location: FF_X62_Y51_N5
\u0|modular_adc_0|control_internal|u_control_fsm|rsp_data[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCLK~inputclkctrl_outclk\,
	d => \u0|modular_adc_0|control_internal|u_control_fsm|rsp_data[9]~feeder_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|modular_adc_0|control_internal|u_control_fsm|rsp_data\(9));

-- Location: FF_X63_Y51_N7
\leds[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \u0|modular_adc_0|control_internal|u_control_fsm|rsp_data\(9),
	sload => VCC,
	ena => \u0|modular_adc_0|control_internal|u_control_fsm|rsp_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leds[9]~reg0_q\);

-- Location: LCCOMB_X44_Y51_N16
\u0|modular_adc_0|control_internal|u_control_fsm|dout_flp[10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|modular_adc_0|control_internal|u_control_fsm|dout_flp[10]~feeder_combout\ = \u0|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(10),
	combout => \u0|modular_adc_0|control_internal|u_control_fsm|dout_flp[10]~feeder_combout\);

-- Location: FF_X44_Y51_N17
\u0|modular_adc_0|control_internal|u_control_fsm|dout_flp[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCLK~inputclkctrl_outclk\,
	d => \u0|modular_adc_0|control_internal|u_control_fsm|dout_flp[10]~feeder_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	ena => \u0|modular_adc_0|control_internal|u_control_fsm|load_dout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|modular_adc_0|control_internal|u_control_fsm|dout_flp\(10));

-- Location: LCCOMB_X61_Y51_N14
\u0|modular_adc_0|control_internal|u_control_fsm|rsp_data~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|modular_adc_0|control_internal|u_control_fsm|rsp_data~10_combout\ = (\u0|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\ & (\u0|modular_adc_0|control_internal|u_control_fsm|pend~q\ & 
-- \u0|modular_adc_0|control_internal|u_control_fsm|dout_flp\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\,
	datab => \u0|modular_adc_0|control_internal|u_control_fsm|pend~q\,
	datad => \u0|modular_adc_0|control_internal|u_control_fsm|dout_flp\(10),
	combout => \u0|modular_adc_0|control_internal|u_control_fsm|rsp_data~10_combout\);

-- Location: FF_X62_Y51_N27
\u0|modular_adc_0|control_internal|u_control_fsm|rsp_data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCLK~inputclkctrl_outclk\,
	asdata => \u0|modular_adc_0|control_internal|u_control_fsm|rsp_data~10_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|modular_adc_0|control_internal|u_control_fsm|rsp_data\(10));

-- Location: FF_X63_Y51_N1
\leds[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \u0|modular_adc_0|control_internal|u_control_fsm|rsp_data\(10),
	sload => VCC,
	ena => \u0|modular_adc_0|control_internal|u_control_fsm|rsp_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leds[10]~reg0_q\);

-- Location: FF_X45_Y51_N11
\u0|modular_adc_0|control_internal|u_control_fsm|dout_flp[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCLK~inputclkctrl_outclk\,
	asdata => \u0|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(11),
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sload => VCC,
	ena => \u0|modular_adc_0|control_internal|u_control_fsm|load_dout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|modular_adc_0|control_internal|u_control_fsm|dout_flp\(11));

-- Location: LCCOMB_X61_Y51_N20
\u0|modular_adc_0|control_internal|u_control_fsm|rsp_data~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|modular_adc_0|control_internal|u_control_fsm|rsp_data~11_combout\ = (\u0|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\ & (\u0|modular_adc_0|control_internal|u_control_fsm|pend~q\ & 
-- \u0|modular_adc_0|control_internal|u_control_fsm|dout_flp\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\,
	datab => \u0|modular_adc_0|control_internal|u_control_fsm|pend~q\,
	datad => \u0|modular_adc_0|control_internal|u_control_fsm|dout_flp\(11),
	combout => \u0|modular_adc_0|control_internal|u_control_fsm|rsp_data~11_combout\);

-- Location: LCCOMB_X64_Y51_N10
\u0|modular_adc_0|control_internal|u_control_fsm|rsp_data[11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u0|modular_adc_0|control_internal|u_control_fsm|rsp_data[11]~feeder_combout\ = \u0|modular_adc_0|control_internal|u_control_fsm|rsp_data~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|modular_adc_0|control_internal|u_control_fsm|rsp_data~11_combout\,
	combout => \u0|modular_adc_0|control_internal|u_control_fsm|rsp_data[11]~feeder_combout\);

-- Location: FF_X64_Y51_N11
\u0|modular_adc_0|control_internal|u_control_fsm|rsp_data[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCLK~inputclkctrl_outclk\,
	d => \u0|modular_adc_0|control_internal|u_control_fsm|rsp_data[11]~feeder_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|modular_adc_0|control_internal|u_control_fsm|rsp_data\(11));

-- Location: FF_X63_Y51_N3
\leds[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \u0|modular_adc_0|control_internal|u_control_fsm|rsp_data\(11),
	sload => VCC,
	ena => \u0|modular_adc_0|control_internal|u_control_fsm|rsp_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leds[11]~reg0_q\);

-- Location: FF_X62_Y51_N3
\sal_disp0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \u0|modular_adc_0|control_internal|u_control_fsm|rsp_data\(3),
	sload => VCC,
	ena => \u0|modular_adc_0|control_internal|u_control_fsm|rsp_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sal_disp0(3));

-- Location: LCCOMB_X62_Y51_N12
\sal_disp0[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sal_disp0[1]~feeder_combout\ = \u0|modular_adc_0|control_internal|u_control_fsm|rsp_data\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|modular_adc_0|control_internal|u_control_fsm|rsp_data\(1),
	combout => \sal_disp0[1]~feeder_combout\);

-- Location: FF_X62_Y51_N13
\sal_disp0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sal_disp0[1]~feeder_combout\,
	ena => \u0|modular_adc_0|control_internal|u_control_fsm|rsp_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sal_disp0(1));

-- Location: LCCOMB_X62_Y51_N14
\sal_disp0[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sal_disp0[2]~feeder_combout\ = \u0|modular_adc_0|control_internal|u_control_fsm|rsp_data\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|modular_adc_0|control_internal|u_control_fsm|rsp_data\(2),
	combout => \sal_disp0[2]~feeder_combout\);

-- Location: FF_X62_Y51_N15
\sal_disp0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sal_disp0[2]~feeder_combout\,
	ena => \u0|modular_adc_0|control_internal|u_control_fsm|rsp_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sal_disp0(2));

-- Location: FF_X62_Y51_N17
\sal_disp0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \u0|modular_adc_0|control_internal|u_control_fsm|rsp_data\(0),
	sload => VCC,
	ena => \u0|modular_adc_0|control_internal|u_control_fsm|rsp_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sal_disp0(0));

-- Location: LCCOMB_X61_Y51_N28
\Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (sal_disp0(3) & (sal_disp0(0) & (sal_disp0(1) $ (sal_disp0(2))))) # (!sal_disp0(3) & (!sal_disp0(1) & (sal_disp0(2) $ (sal_disp0(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sal_disp0(3),
	datab => sal_disp0(1),
	datac => sal_disp0(2),
	datad => sal_disp0(0),
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X62_Y51_N22
\Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (sal_disp0(1) & ((sal_disp0(0) & (sal_disp0(3))) # (!sal_disp0(0) & ((sal_disp0(2)))))) # (!sal_disp0(1) & (sal_disp0(2) & (sal_disp0(3) $ (sal_disp0(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sal_disp0(1),
	datab => sal_disp0(3),
	datac => sal_disp0(2),
	datad => sal_disp0(0),
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X61_Y51_N26
\Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (sal_disp0(3) & (sal_disp0(2) & ((sal_disp0(1)) # (!sal_disp0(0))))) # (!sal_disp0(3) & (sal_disp0(1) & (!sal_disp0(2) & !sal_disp0(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sal_disp0(3),
	datab => sal_disp0(1),
	datac => sal_disp0(2),
	datad => sal_disp0(0),
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X61_Y51_N24
\Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (sal_disp0(1) & ((sal_disp0(2) & ((sal_disp0(0)))) # (!sal_disp0(2) & (sal_disp0(3) & !sal_disp0(0))))) # (!sal_disp0(1) & (!sal_disp0(3) & (sal_disp0(2) $ (sal_disp0(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sal_disp0(3),
	datab => sal_disp0(1),
	datac => sal_disp0(2),
	datad => sal_disp0(0),
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X62_Y51_N16
\Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (sal_disp0(1) & (((sal_disp0(0) & !sal_disp0(3))))) # (!sal_disp0(1) & ((sal_disp0(2) & ((!sal_disp0(3)))) # (!sal_disp0(2) & (sal_disp0(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sal_disp0(1),
	datab => sal_disp0(2),
	datac => sal_disp0(0),
	datad => sal_disp0(3),
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X62_Y51_N18
\Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (sal_disp0(1) & (!sal_disp0(3) & ((sal_disp0(0)) # (!sal_disp0(2))))) # (!sal_disp0(1) & (sal_disp0(0) & (sal_disp0(3) $ (!sal_disp0(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sal_disp0(1),
	datab => sal_disp0(3),
	datac => sal_disp0(2),
	datad => sal_disp0(0),
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X62_Y51_N2
\Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (sal_disp0(0) & ((sal_disp0(3)) # (sal_disp0(1) $ (sal_disp0(2))))) # (!sal_disp0(0) & ((sal_disp0(1)) # (sal_disp0(2) $ (sal_disp0(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sal_disp0(1),
	datab => sal_disp0(2),
	datac => sal_disp0(3),
	datad => sal_disp0(0),
	combout => \Mux0~0_combout\);

-- Location: FF_X63_Y51_N11
\sal_disp1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \u0|modular_adc_0|control_internal|u_control_fsm|rsp_data\(6),
	sload => VCC,
	ena => \u0|modular_adc_0|control_internal|u_control_fsm|rsp_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sal_disp1(2));

-- Location: LCCOMB_X64_Y51_N24
\sal_disp1[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sal_disp1[0]~feeder_combout\ = \u0|modular_adc_0|control_internal|u_control_fsm|rsp_data\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|modular_adc_0|control_internal|u_control_fsm|rsp_data\(4),
	combout => \sal_disp1[0]~feeder_combout\);

-- Location: FF_X64_Y51_N25
\sal_disp1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sal_disp1[0]~feeder_combout\,
	ena => \u0|modular_adc_0|control_internal|u_control_fsm|rsp_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sal_disp1(0));

-- Location: LCCOMB_X63_Y51_N16
\sal_disp1[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sal_disp1[1]~feeder_combout\ = \u0|modular_adc_0|control_internal|u_control_fsm|rsp_data\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|modular_adc_0|control_internal|u_control_fsm|rsp_data\(5),
	combout => \sal_disp1[1]~feeder_combout\);

-- Location: FF_X63_Y51_N17
\sal_disp1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sal_disp1[1]~feeder_combout\,
	ena => \u0|modular_adc_0|control_internal|u_control_fsm|rsp_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sal_disp1(1));

-- Location: FF_X63_Y51_N9
\sal_disp1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \u0|modular_adc_0|control_internal|u_control_fsm|rsp_data\(7),
	sload => VCC,
	ena => \u0|modular_adc_0|control_internal|u_control_fsm|rsp_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sal_disp1(3));

-- Location: LCCOMB_X64_Y51_N22
\Mux13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (sal_disp1(2) & (!sal_disp1(1) & (sal_disp1(0) $ (!sal_disp1(3))))) # (!sal_disp1(2) & (sal_disp1(0) & (sal_disp1(1) $ (!sal_disp1(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sal_disp1(2),
	datab => sal_disp1(0),
	datac => sal_disp1(1),
	datad => sal_disp1(3),
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X64_Y51_N28
\Mux12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (sal_disp1(1) & ((sal_disp1(0) & ((sal_disp1(3)))) # (!sal_disp1(0) & (sal_disp1(2))))) # (!sal_disp1(1) & (sal_disp1(2) & (sal_disp1(0) $ (sal_disp1(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sal_disp1(2),
	datab => sal_disp1(0),
	datac => sal_disp1(1),
	datad => sal_disp1(3),
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X64_Y51_N18
\Mux11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (sal_disp1(2) & (sal_disp1(3) & ((sal_disp1(1)) # (!sal_disp1(0))))) # (!sal_disp1(2) & (!sal_disp1(0) & (sal_disp1(1) & !sal_disp1(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sal_disp1(2),
	datab => sal_disp1(0),
	datac => sal_disp1(1),
	datad => sal_disp1(3),
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X64_Y51_N4
\Mux10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (sal_disp1(1) & ((sal_disp1(2) & (sal_disp1(0))) # (!sal_disp1(2) & (!sal_disp1(0) & sal_disp1(3))))) # (!sal_disp1(1) & (!sal_disp1(3) & (sal_disp1(2) $ (sal_disp1(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sal_disp1(2),
	datab => sal_disp1(0),
	datac => sal_disp1(1),
	datad => sal_disp1(3),
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X64_Y51_N2
\Mux9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (sal_disp1(1) & (((sal_disp1(0) & !sal_disp1(3))))) # (!sal_disp1(1) & ((sal_disp1(2) & ((!sal_disp1(3)))) # (!sal_disp1(2) & (sal_disp1(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sal_disp1(2),
	datab => sal_disp1(0),
	datac => sal_disp1(1),
	datad => sal_disp1(3),
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X64_Y51_N0
\Mux8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (sal_disp1(2) & (sal_disp1(0) & (sal_disp1(1) $ (sal_disp1(3))))) # (!sal_disp1(2) & (!sal_disp1(3) & ((sal_disp1(0)) # (sal_disp1(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sal_disp1(2),
	datab => sal_disp1(0),
	datac => sal_disp1(1),
	datad => sal_disp1(3),
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X64_Y51_N26
\Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (sal_disp1(0) & ((sal_disp1(3)) # (sal_disp1(2) $ (sal_disp1(1))))) # (!sal_disp1(0) & ((sal_disp1(1)) # (sal_disp1(2) $ (sal_disp1(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sal_disp1(2),
	datab => sal_disp1(0),
	datac => sal_disp1(1),
	datad => sal_disp1(3),
	combout => \Mux7~0_combout\);

-- Location: FF_X63_Y51_N27
\sal_disp2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \u0|modular_adc_0|control_internal|u_control_fsm|rsp_data\(8),
	sload => VCC,
	ena => \u0|modular_adc_0|control_internal|u_control_fsm|rsp_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sal_disp2(0));

-- Location: FF_X63_Y51_N5
\sal_disp2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \u0|modular_adc_0|control_internal|u_control_fsm|rsp_data\(11),
	sload => VCC,
	ena => \u0|modular_adc_0|control_internal|u_control_fsm|rsp_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sal_disp2(3));

-- Location: FF_X63_Y51_N13
\sal_disp2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \u0|modular_adc_0|control_internal|u_control_fsm|rsp_data\(9),
	sload => VCC,
	ena => \u0|modular_adc_0|control_internal|u_control_fsm|rsp_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sal_disp2(1));

-- Location: FF_X63_Y51_N19
\sal_disp2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \u0|modular_adc_0|control_internal|u_control_fsm|rsp_data\(10),
	sload => VCC,
	ena => \u0|modular_adc_0|control_internal|u_control_fsm|rsp_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sal_disp2(2));

-- Location: LCCOMB_X64_Y51_N8
\Mux20~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = (sal_disp2(3) & (sal_disp2(0) & (sal_disp2(1) $ (sal_disp2(2))))) # (!sal_disp2(3) & (!sal_disp2(1) & (sal_disp2(0) $ (sal_disp2(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sal_disp2(0),
	datab => sal_disp2(3),
	datac => sal_disp2(1),
	datad => sal_disp2(2),
	combout => \Mux20~0_combout\);

-- Location: LCCOMB_X63_Y51_N26
\Mux19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = (sal_disp2(3) & ((sal_disp2(0) & ((sal_disp2(1)))) # (!sal_disp2(0) & (sal_disp2(2))))) # (!sal_disp2(3) & (sal_disp2(2) & (sal_disp2(0) $ (sal_disp2(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sal_disp2(3),
	datab => sal_disp2(2),
	datac => sal_disp2(0),
	datad => sal_disp2(1),
	combout => \Mux19~0_combout\);

-- Location: LCCOMB_X64_Y51_N6
\Mux18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = (sal_disp2(3) & (sal_disp2(2) & ((sal_disp2(1)) # (!sal_disp2(0))))) # (!sal_disp2(3) & (!sal_disp2(0) & (sal_disp2(1) & !sal_disp2(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sal_disp2(0),
	datab => sal_disp2(3),
	datac => sal_disp2(1),
	datad => sal_disp2(2),
	combout => \Mux18~0_combout\);

-- Location: LCCOMB_X64_Y51_N16
\Mux17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (sal_disp2(1) & ((sal_disp2(0) & ((sal_disp2(2)))) # (!sal_disp2(0) & (sal_disp2(3) & !sal_disp2(2))))) # (!sal_disp2(1) & (!sal_disp2(3) & (sal_disp2(0) $ (sal_disp2(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sal_disp2(0),
	datab => sal_disp2(3),
	datac => sal_disp2(1),
	datad => sal_disp2(2),
	combout => \Mux17~0_combout\);

-- Location: LCCOMB_X63_Y51_N12
\Mux16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = (sal_disp2(1) & (sal_disp2(0) & (!sal_disp2(3)))) # (!sal_disp2(1) & ((sal_disp2(2) & ((!sal_disp2(3)))) # (!sal_disp2(2) & (sal_disp2(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sal_disp2(0),
	datab => sal_disp2(3),
	datac => sal_disp2(1),
	datad => sal_disp2(2),
	combout => \Mux16~0_combout\);

-- Location: LCCOMB_X63_Y51_N18
\Mux15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (sal_disp2(0) & (sal_disp2(3) $ (((sal_disp2(1)) # (!sal_disp2(2)))))) # (!sal_disp2(0) & (!sal_disp2(3) & (!sal_disp2(2) & sal_disp2(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sal_disp2(0),
	datab => sal_disp2(3),
	datac => sal_disp2(2),
	datad => sal_disp2(1),
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X63_Y51_N4
\Mux14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (sal_disp2(0) & ((sal_disp2(3)) # (sal_disp2(2) $ (sal_disp2(1))))) # (!sal_disp2(0) & ((sal_disp2(1)) # (sal_disp2(2) $ (sal_disp2(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sal_disp2(0),
	datab => sal_disp2(2),
	datac => sal_disp2(3),
	datad => sal_disp2(1),
	combout => \Mux14~0_combout\);

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


