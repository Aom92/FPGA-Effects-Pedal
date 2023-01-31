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

-- DATE "01/31/2023 12:57:26"

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

ENTITY 	Effects_Pedal IS
    PORT (
	DRAM_CLK : OUT std_logic;
	DE10CLK : IN std_logic;
	DE10Reset : IN std_logic;
	DELAY_EN : IN std_logic;
	ADCCLK : IN std_logic;
	DRAM_DQ : INOUT std_logic_vector(15 DOWNTO 0);
	DRAM_CAS_N : OUT std_logic;
	DRAM_CKE : OUT std_logic;
	DRAM_CS_N : OUT std_logic;
	DRAM_RAS_N : OUT std_logic;
	DRAM_WE_N : OUT std_logic;
	AUDIO_OUT : OUT std_logic;
	display0 : OUT std_logic_vector(7 DOWNTO 0);
	display1 : OUT std_logic_vector(7 DOWNTO 0);
	display2 : OUT std_logic_vector(7 DOWNTO 0);
	display3 : OUT std_logic_vector(7 DOWNTO 0);
	DRAM_ADDR : OUT std_logic_vector(12 DOWNTO 0);
	DRAM_BA : OUT std_logic_vector(1 DOWNTO 0);
	DRAM_DQM : OUT std_logic_vector(1 DOWNTO 0);
	led_out : OUT std_logic_vector(15 DOWNTO 0)
	);
END Effects_Pedal;

-- Design Ports Information
-- DRAM_CLK	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_CAS_N	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_CKE	=>  Location: PIN_N22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_CS_N	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_RAS_N	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_WE_N	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUDIO_OUT	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display0[7]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display0[6]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display0[5]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display0[4]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display0[3]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display0[2]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display0[1]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display0[0]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display1[7]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display1[6]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display1[5]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display1[4]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display1[3]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display1[2]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display1[1]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display1[0]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display2[7]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display2[6]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display2[5]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display2[4]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display2[3]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display2[2]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display2[1]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display2[0]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display3[7]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display3[6]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display3[5]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display3[4]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display3[3]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display3[2]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display3[1]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display3[0]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_ADDR[12]	=>  Location: PIN_R20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_ADDR[11]	=>  Location: PIN_P20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_ADDR[10]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_ADDR[9]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_ADDR[8]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_ADDR[7]	=>  Location: PIN_R18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_ADDR[6]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_ADDR[5]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_ADDR[4]	=>  Location: PIN_U19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_ADDR[3]	=>  Location: PIN_U18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_ADDR[2]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_ADDR[1]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_ADDR[0]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_BA[1]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_BA[0]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQM[1]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQM[0]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[15]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[14]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[13]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[12]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[11]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[10]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[9]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[8]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[7]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[6]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[5]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[4]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[3]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[2]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[1]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[0]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[15]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[14]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[13]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[12]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[11]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[10]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[9]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[8]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[7]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[6]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[5]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[4]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[3]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[2]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[1]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[0]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DE10CLK	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DELAY_EN	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADCCLK	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DE10Reset	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Effects_Pedal IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_DRAM_CLK : std_logic;
SIGNAL ww_DE10CLK : std_logic;
SIGNAL ww_DE10Reset : std_logic;
SIGNAL ww_DELAY_EN : std_logic;
SIGNAL ww_ADCCLK : std_logic;
SIGNAL ww_DRAM_CAS_N : std_logic;
SIGNAL ww_DRAM_CKE : std_logic;
SIGNAL ww_DRAM_CS_N : std_logic;
SIGNAL ww_DRAM_RAS_N : std_logic;
SIGNAL ww_DRAM_WE_N : std_logic;
SIGNAL ww_AUDIO_OUT : std_logic;
SIGNAL ww_display0 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_display1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_display2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_display3 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_DRAM_ADDR : std_logic_vector(12 DOWNTO 0);
SIGNAL ww_DRAM_BA : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_DRAM_DQM : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_led_out : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|primitive_instance_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|primitive_instance_DOUT_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst|u1|altpll_0|sd1|pll7_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst|u1|altpll_0|sd1|pll7_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ADCCLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DE10CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[1]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|pll1~FBOUT\ : std_logic;
SIGNAL \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \DE10CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \ADCCLK~input_o\ : std_logic;
SIGNAL \ADCCLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer[0]~8_combout\ : std_logic;
SIGNAL \inst|u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain[1]~feeder_combout\ : std_logic;
SIGNAL \DE10Reset~input_o\ : std_logic;
SIGNAL \inst|u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain[0]~feeder_combout\ : std_logic;
SIGNAL \inst|u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~feeder_combout\ : std_logic;
SIGNAL \inst|u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\ : std_logic;
SIGNAL \inst|u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRUP_SOC~q\ : std_logic;
SIGNAL \inst|u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PUTRESP_DLY1~q\ : std_logic;
SIGNAL \inst|u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PUTRESP_DLY2~q\ : std_logic;
SIGNAL \inst|u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PUTRESP_DLY3~q\ : std_logic;
SIGNAL \inst|u1|modular_adc_0|control_internal|u_control_fsm|Selector7~0_combout\ : std_logic;
SIGNAL \inst|u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.GETCMD~q\ : std_logic;
SIGNAL \inst|u1|modular_adc_0|control_internal|u_control_fsm|Selector9~0_combout\ : std_logic;
SIGNAL \inst|u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.CONV~q\ : std_logic;
SIGNAL \inst|u1|modular_adc_0|control_internal|u_control_fsm|arc_to_conv~0_combout\ : std_logic;
SIGNAL \inst|u1|altpll_0|sd1|wire_pll7_fbout\ : std_logic;
SIGNAL \inst|u1|altpll_0|sd1|wire_pll7_locked\ : std_logic;
SIGNAL \inst|u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.IDLE~0_combout\ : std_logic;
SIGNAL \inst|u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.IDLE~q\ : std_logic;
SIGNAL \inst|u1|modular_adc_0|control_internal|u_control_fsm|Selector1~0_combout\ : std_logic;
SIGNAL \inst|u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN~q\ : std_logic;
SIGNAL \inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer[5]~24_combout\ : std_logic;
SIGNAL \inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer[0]~9\ : std_logic;
SIGNAL \inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer[1]~10_combout\ : std_logic;
SIGNAL \inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer[1]~11\ : std_logic;
SIGNAL \inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer[2]~12_combout\ : std_logic;
SIGNAL \inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer[2]~13\ : std_logic;
SIGNAL \inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer[3]~14_combout\ : std_logic;
SIGNAL \inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer[3]~15\ : std_logic;
SIGNAL \inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer[4]~16_combout\ : std_logic;
SIGNAL \inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer[4]~17\ : std_logic;
SIGNAL \inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer[5]~18_combout\ : std_logic;
SIGNAL \inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer[5]~19\ : std_logic;
SIGNAL \inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer[6]~20_combout\ : std_logic;
SIGNAL \inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer[6]~21\ : std_logic;
SIGNAL \inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer[7]~22_combout\ : std_logic;
SIGNAL \inst|u1|modular_adc_0|control_internal|u_control_fsm|Selector2~0_combout\ : std_logic;
SIGNAL \inst|u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN_TSEN~q\ : std_logic;
SIGNAL \inst|u1|modular_adc_0|control_internal|u_control_fsm|Selector18~0_combout\ : std_logic;
SIGNAL \inst|u1|modular_adc_0|control_internal|u_control_fsm|WideOr12~0_combout\ : std_logic;
SIGNAL \inst|u1|modular_adc_0|control_internal|u_control_fsm|Selector15~2_combout\ : std_logic;
SIGNAL \inst|u1|modular_adc_0|control_internal|u_control_fsm|WideOr17~combout\ : std_logic;
SIGNAL \inst|u1|modular_adc_0|control_internal|u_control_fsm|Selector18~1_combout\ : std_logic;
SIGNAL \inst|u1|modular_adc_0|control_internal|u_control_fsm|usr_pwd~q\ : std_logic;
SIGNAL \inst|u1|modular_adc_0|control_internal|u_control_fsm|usr_pwd~_wirecell_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \inst|u1|modular_adc_0|control_internal|u_control_fsm|Selector3~0_combout\ : std_logic;
SIGNAL \inst|u1|modular_adc_0|control_internal|u_control_fsm|Selector3~1_combout\ : std_logic;
SIGNAL \inst|u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN_DONE~q\ : std_logic;
SIGNAL \inst|u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRUP_CH~q\ : std_logic;
SIGNAL \inst|u1|modular_adc_0|control_internal|u_control_fsm|Selector4~0_combout\ : std_logic;
SIGNAL \inst|u1|modular_adc_0|control_internal|u_control_fsm|WideOr12~1_combout\ : std_logic;
SIGNAL \inst|u1|modular_adc_0|control_internal|u_control_fsm|WideOr12~combout\ : std_logic;
SIGNAL \inst|u1|modular_adc_0|control_internal|u_control_fsm|chsel[0]~2_combout\ : std_logic;
SIGNAL \inst|u1|modular_adc_0|control_internal|u_control_fsm|Selector15~3_combout\ : std_logic;
SIGNAL \inst|u1|modular_adc_0|control_internal|adc_inst|decoder|WideOr4~0_combout\ : std_logic;
SIGNAL \inst|u1|modular_adc_0|control_internal|adc_inst|decoder|WideOr2~0_combout\ : std_logic;
SIGNAL \inst|u1|modular_adc_0|control_internal|u_control_fsm|chsel[1]~_wirecell_combout\ : std_logic;
SIGNAL \inst|u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|clkout_adccore\ : std_logic;
SIGNAL \inst|u1|modular_adc_0|control_internal|u_control_fsm|u_clk_dft_synchronizer|din_s1~feeder_combout\ : std_logic;
SIGNAL \inst|u1|modular_adc_0|control_internal|u_control_fsm|u_clk_dft_synchronizer|din_s1~q\ : std_logic;
SIGNAL \inst|u1|modular_adc_0|control_internal|u_control_fsm|u_clk_dft_synchronizer|dreg[0]~feeder_combout\ : std_logic;
SIGNAL \inst|u1|modular_adc_0|control_internal|u_control_fsm|clk_dft_synch_dly~q\ : std_logic;
SIGNAL \inst|u1|modular_adc_0|control_internal|u_control_fsm|Selector5~0_combout\ : std_logic;
SIGNAL \inst|u1|modular_adc_0|control_internal|u_control_fsm|Selector5~1_combout\ : std_logic;
SIGNAL \inst|u1|modular_adc_0|control_internal|u_control_fsm|Selector17~0_combout\ : std_logic;
SIGNAL \inst|u1|modular_adc_0|control_internal|u_control_fsm|soc~q\ : std_logic;
SIGNAL \inst|u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|eoc\ : std_logic;
SIGNAL \inst|u1|modular_adc_0|control_internal|u_control_fsm|u_eoc_synchronizer|din_s1~feeder_combout\ : std_logic;
SIGNAL \inst|u1|modular_adc_0|control_internal|u_control_fsm|u_eoc_synchronizer|din_s1~q\ : std_logic;
SIGNAL \inst|u1|modular_adc_0|control_internal|u_control_fsm|eoc_synch_dly~q\ : std_logic;
SIGNAL \inst|u1|modular_adc_0|control_internal|u_control_fsm|load_dout~1_combout\ : std_logic;
SIGNAL \inst|u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.CONV_DLY1~q\ : std_logic;
SIGNAL \inst|u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~feeder_combout\ : std_logic;
SIGNAL \inst|u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\ : std_logic;
SIGNAL \inst|u1|modular_adc_0|control_internal|u_control_fsm|pend~feeder_combout\ : std_logic;
SIGNAL \inst|u1|modular_adc_0|control_internal|u_control_fsm|pend~q\ : std_logic;
SIGNAL \inst|u1|modular_adc_0|control_internal|u_control_fsm|load_rsp~0_combout\ : std_logic;
SIGNAL \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_valid~q\ : std_logic;
SIGNAL \inst4|addressCounter[0]~26_combout\ : std_logic;
SIGNAL \inst4|retardo~0_combout\ : std_logic;
SIGNAL \inst4|addressCounter[0]~27\ : std_logic;
SIGNAL \inst4|addressCounter[1]~28_combout\ : std_logic;
SIGNAL \inst4|addressCounter[1]~29\ : std_logic;
SIGNAL \inst4|addressCounter[2]~30_combout\ : std_logic;
SIGNAL \inst4|addressCounter[2]~31\ : std_logic;
SIGNAL \inst4|addressCounter[3]~32_combout\ : std_logic;
SIGNAL \inst4|addressCounter[3]~33\ : std_logic;
SIGNAL \inst4|addressCounter[4]~34_combout\ : std_logic;
SIGNAL \inst4|addressCounter[4]~35\ : std_logic;
SIGNAL \inst4|addressCounter[5]~36_combout\ : std_logic;
SIGNAL \inst4|addressCounter[5]~37\ : std_logic;
SIGNAL \inst4|addressCounter[6]~38_combout\ : std_logic;
SIGNAL \inst4|addressCounter[6]~39\ : std_logic;
SIGNAL \inst4|addressCounter[7]~40_combout\ : std_logic;
SIGNAL \inst4|addressCounter[7]~41\ : std_logic;
SIGNAL \inst4|addressCounter[8]~42_combout\ : std_logic;
SIGNAL \inst4|addressCounter[8]~43\ : std_logic;
SIGNAL \inst4|addressCounter[9]~44_combout\ : std_logic;
SIGNAL \inst4|addressCounter[9]~45\ : std_logic;
SIGNAL \inst4|addressCounter[10]~46_combout\ : std_logic;
SIGNAL \inst4|addressCounter[10]~47\ : std_logic;
SIGNAL \inst4|addressCounter[11]~48_combout\ : std_logic;
SIGNAL \inst4|addressCounter[11]~49\ : std_logic;
SIGNAL \inst4|addressCounter[12]~50_combout\ : std_logic;
SIGNAL \inst4|addressCounter[12]~51\ : std_logic;
SIGNAL \inst4|addressCounter[13]~52_combout\ : std_logic;
SIGNAL \inst4|addressCounter[13]~53\ : std_logic;
SIGNAL \inst4|addressCounter[14]~54_combout\ : std_logic;
SIGNAL \inst4|addressCounter[14]~55\ : std_logic;
SIGNAL \inst4|addressCounter[15]~56_combout\ : std_logic;
SIGNAL \inst4|addressCounter[15]~57\ : std_logic;
SIGNAL \inst4|addressCounter[16]~58_combout\ : std_logic;
SIGNAL \inst4|addressCounter[16]~59\ : std_logic;
SIGNAL \inst4|addressCounter[17]~60_combout\ : std_logic;
SIGNAL \inst4|addressCounter[17]~61\ : std_logic;
SIGNAL \inst4|addressCounter[18]~62_combout\ : std_logic;
SIGNAL \inst4|addressCounter[18]~63\ : std_logic;
SIGNAL \inst4|addressCounter[19]~64_combout\ : std_logic;
SIGNAL \inst4|addressCounter[19]~65\ : std_logic;
SIGNAL \inst4|addressCounter[20]~66_combout\ : std_logic;
SIGNAL \inst4|addressCounter[20]~67\ : std_logic;
SIGNAL \inst4|addressCounter[21]~68_combout\ : std_logic;
SIGNAL \inst4|addressCounter[21]~69\ : std_logic;
SIGNAL \inst4|addressCounter[22]~70_combout\ : std_logic;
SIGNAL \inst4|addressCounter[22]~71\ : std_logic;
SIGNAL \inst4|addressCounter[23]~72_combout\ : std_logic;
SIGNAL \inst4|addressCounter[23]~73\ : std_logic;
SIGNAL \inst4|addressCounter[24]~74_combout\ : std_logic;
SIGNAL \inst4|LessThan0~7_combout\ : std_logic;
SIGNAL \inst4|addressCounter[24]~75\ : std_logic;
SIGNAL \inst4|addressCounter[25]~76_combout\ : std_logic;
SIGNAL \inst4|LessThan0~1_combout\ : std_logic;
SIGNAL \inst4|LessThan0~2_combout\ : std_logic;
SIGNAL \inst4|LessThan0~3_combout\ : std_logic;
SIGNAL \inst4|LessThan0~4_combout\ : std_logic;
SIGNAL \inst4|LessThan0~0_combout\ : std_logic;
SIGNAL \inst4|LessThan0~5_combout\ : std_logic;
SIGNAL \inst4|LessThan0~6_combout\ : std_logic;
SIGNAL \inst4|LessThan0~8_combout\ : std_logic;
SIGNAL \inst4|BufferFull~0_combout\ : std_logic;
SIGNAL \inst4|BufferFull~q\ : std_logic;
SIGNAL \inst4|retardo~1_combout\ : std_logic;
SIGNAL \inst4|write_op~feeder_combout\ : std_logic;
SIGNAL \DELAY_EN~input_o\ : std_logic;
SIGNAL \inst4|sal_disp0[3]~0_combout\ : std_logic;
SIGNAL \inst4|write_op~q\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|Equal0~0_combout\ : std_logic;
SIGNAL \inst4|read_op~0_combout\ : std_logic;
SIGNAL \inst4|read_op~q\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Add0~0_combout\ : std_logic;
SIGNAL \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain[1]~feeder_combout\ : std_logic;
SIGNAL \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|locked\ : std_logic;
SIGNAL \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~feeder_combout\ : std_logic;
SIGNAL \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Add0~1\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Add0~2_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|refresh_counter~8_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Add0~3\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Add0~4_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Add0~5\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Add0~6_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Add0~7\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Add0~8_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|refresh_counter~6_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Add0~9\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Add0~10_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|refresh_counter~7_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Equal0~2_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Equal0~3_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Add0~11\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Add0~12_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|refresh_counter~5_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Add0~13\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Add0~14_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|refresh_counter~4_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Add0~15\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Add0~16_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|refresh_counter[8]~12_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Add0~17\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Add0~18_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|refresh_counter[9]~11_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Equal0~1_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Add0~19\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Add0~20_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|refresh_counter~1_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Add0~21\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Add0~22_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|refresh_counter~3_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Add0~23\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Add0~24_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|refresh_counter~2_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Add0~25\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Add0~26_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|refresh_counter~0_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Equal0~0_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Equal0~4_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector18~0_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector8~0_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|i_state.001~q\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector16~0_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|WideOr6~0_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector16~1_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|i_next.010~q\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector13~0_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector14~0_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector9~0_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|i_state.010~q\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector6~0_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector5~0_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Add1~0_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector4~0_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector18~1_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|i_next.111~q\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector12~1_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|i_state.111~q\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector17~0_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|i_next.101~q\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector12~0_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|i_state.101~0_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|i_state.101~q\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|i_next.000~0_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|i_next.000~q\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector7~0_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|i_state.000~q\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector15~1_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector15~0_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector15~2_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector13~1_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector13~2_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector10~0_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector10~1_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|i_state.011~q\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector1~0_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|m_state.000000010~q\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|init_done~0_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|init_done~q\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector37~0_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector37~1_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector37~2_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~0_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|wr_address~0_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|wr_address~q\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~0_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[38]~feeder_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[38]~13_combout\ : std_logic;
SIGNAL \inst4|address[22]~feeder_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[39]~feeder_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[39]~12_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|active_rnw~1_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~1_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[43]~1_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[43]~1_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|active_cs_n~0_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|active_cs_n~1_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|active_cs_n~q\ : std_logic;
SIGNAL \inst4|address[25]~feeder_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[42]~feeder_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[42]~3_combout\ : std_logic;
SIGNAL \inst4|address[12]~feeder_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[29]~feeder_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[29]~2_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|pending~1_combout\ : std_logic;
SIGNAL \inst4|address[15]~feeder_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[32]~feeder_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[32]~7_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[33]~feeder_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[33]~6_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|pending~3_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[30]~feeder_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[30]~5_combout\ : std_logic;
SIGNAL \inst4|address[14]~feeder_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[31]~feeder_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[31]~4_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|pending~2_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|active_rnw~feeder_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|active_rnw~q\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[28]~feeder_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[28]~0_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|pending~0_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|pending~4_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|pending~10_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector27~1_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector27~0_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector33~3_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector34~0_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector34~1_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector34~2_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector34~3_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector34~4_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|m_next.000001000~q\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector27~2_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector27~4_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector27~5_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector27~3_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector27~6_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|m_state.000001000~q\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector35~0_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|m_next.000010000~q\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector28~0_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|m_state.000010000~q\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|m_addr~0_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|active_rnw~2_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|active_rnw~0_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|active_rnw~3_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|pending~7_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[36]~feeder_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[36]~11_combout\ : std_logic;
SIGNAL \inst4|address[20]~feeder_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[37]~feeder_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[37]~10_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|pending~6_combout\ : std_logic;
SIGNAL \inst4|address[23]~feeder_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[40]~feeder_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[40]~15_combout\ : std_logic;
SIGNAL \inst4|address[24]~feeder_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[41]~feeder_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[41]~14_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|pending~8_combout\ : std_logic;
SIGNAL \inst4|address[18]~feeder_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[35]~feeder_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[35]~8_combout\ : std_logic;
SIGNAL \inst4|address[17]~feeder_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[34]~feeder_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[34]~9_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|pending~5_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|pending~9_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|m_next~17_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector36~2_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|m_count[1]~1_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector37~3_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|LessThan1~0_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector29~0_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector29~1_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|m_state.000100000~q\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector93~0_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector33~0_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector33~1_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector33~2_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector33~4_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|m_next.000000001~q\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector24~0_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector24~1_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|m_state.000000001~q\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector30~2_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector41~6_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector36~3_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector36~4_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|m_next.010000000~q\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector31~1_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|m_state.010000000~q\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector23~0_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|ack_refresh_request~q\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|refresh_request~0_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|refresh_request~q\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector32~0_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector32~1_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|m_state.100000000~q\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector26~1_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector26~0_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector26~2_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|m_state.000000100~q\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector31~0_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|m_count[1]~0_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|m_count[1]~2_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector38~0_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|m_count[1]~3_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|m_count[1]~4_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|m_count[0]~7_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|m_count[0]~8_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|m_count[1]~5_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|m_count[1]~6_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector30~3_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|m_state.001000000~q\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|WideOr8~0_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector20~0_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|m_cmd[2]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector3~0_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector22~0_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector22~1_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|m_cmd[0]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector2~0_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector21~0_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|WideOr9~0_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector21~1_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|m_cmd[1]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Equal4~0_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|za_valid~feeder_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|za_valid~q\ : std_logic;
SIGNAL \inst2|DRAM|mm_interconnect_0|avalon_mm_0_avm_m0_translator|read_accepted~0_combout\ : std_logic;
SIGNAL \inst2|DRAM|mm_interconnect_0|avalon_mm_0_avm_m0_translator|read_accepted~q\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|always2~0_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|f_select~combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries[1]~0_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|Equal1~0_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|pending~combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries[0]~1_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector41~9_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector41~8_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector41~7_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|f_pop~q\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|always5~0_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|oe~q\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|oe~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|oe~_Duplicate_2_q\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|oe~_Duplicate_3_q\ : std_logic;
SIGNAL \inst|u1|modular_adc_0|control_internal|u_control_fsm|load_dout~0_combout\ : std_logic;
SIGNAL \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~0_combout\ : std_logic;
SIGNAL \inst4|write_buff[11]~feeder_combout\ : std_logic;
SIGNAL \inst4|write_buff[11]~0_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[11]~feeder_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[11]~feeder_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[11]~26_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|m_data[11]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector105~0_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|m_data[11]~0_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector105~1_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|oe~_Duplicate_4_q\ : std_logic;
SIGNAL \inst|u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[10]~feeder_combout\ : std_logic;
SIGNAL \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~1_combout\ : std_logic;
SIGNAL \inst4|write_buff[10]~feeder_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[10]~feeder_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[10]~feeder_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[10]~27_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|m_data[10]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector106~0_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector106~1_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|oe~_Duplicate_5_q\ : std_logic;
SIGNAL \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~2_combout\ : std_logic;
SIGNAL \inst4|write_buff[9]~feeder_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[9]~feeder_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[9]~feeder_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[9]~28_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|m_data[9]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector107~0_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector107~1_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|oe~_Duplicate_6_q\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|m_data[8]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst|u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[8]~feeder_combout\ : std_logic;
SIGNAL \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~3_combout\ : std_logic;
SIGNAL \inst4|write_buff[8]~feeder_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[8]~feeder_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[8]~feeder_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[8]~29_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector108~0_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector108~1_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|oe~_Duplicate_7_q\ : std_logic;
SIGNAL \inst|u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[7]~feeder_combout\ : std_logic;
SIGNAL \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~4_combout\ : std_logic;
SIGNAL \inst4|write_buff[7]~feeder_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[7]~feeder_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[7]~30_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|m_data[7]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector109~0_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector109~1_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|oe~_Duplicate_8_q\ : std_logic;
SIGNAL \inst|u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[6]~feeder_combout\ : std_logic;
SIGNAL \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~5_combout\ : std_logic;
SIGNAL \inst4|write_buff[6]~feeder_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[6]~feeder_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[6]~feeder_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[6]~31_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|m_data[6]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector110~0_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector110~1_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|oe~_Duplicate_9_q\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|m_data[5]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst|u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[5]~feeder_combout\ : std_logic;
SIGNAL \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~6_combout\ : std_logic;
SIGNAL \inst4|write_buff[5]~feeder_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[5]~feeder_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[5]~feeder_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[5]~32_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector111~0_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector111~1_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|oe~_Duplicate_10_q\ : std_logic;
SIGNAL \inst|u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[4]~feeder_combout\ : std_logic;
SIGNAL \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~7_combout\ : std_logic;
SIGNAL \inst4|write_buff[4]~feeder_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[4]~feeder_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[4]~feeder_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[4]~33_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|m_data[4]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector112~0_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector112~1_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|oe~_Duplicate_11_q\ : std_logic;
SIGNAL \inst|u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[3]~feeder_combout\ : std_logic;
SIGNAL \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~8_combout\ : std_logic;
SIGNAL \inst4|write_buff[3]~feeder_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[3]~feeder_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[3]~feeder_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[3]~34_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|m_data[3]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector113~0_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector113~1_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|oe~_Duplicate_12_q\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|m_data[2]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst|u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[2]~feeder_combout\ : std_logic;
SIGNAL \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~9_combout\ : std_logic;
SIGNAL \inst4|write_buff[2]~feeder_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[2]~feeder_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[2]~35_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector114~0_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector114~1_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|oe~_Duplicate_13_q\ : std_logic;
SIGNAL \inst|u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[1]~feeder_combout\ : std_logic;
SIGNAL \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~10_combout\ : std_logic;
SIGNAL \inst4|write_buff[1]~feeder_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[1]~feeder_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[1]~feeder_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[1]~36_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|m_data[1]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector115~0_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector115~1_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|oe~_Duplicate_14_q\ : std_logic;
SIGNAL \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~11_combout\ : std_logic;
SIGNAL \inst4|write_buff[0]~feeder_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[0]~feeder_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[0]~feeder_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[0]~37_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|m_data[0]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector116~0_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector116~1_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|oe~_Duplicate_15_q\ : std_logic;
SIGNAL \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[1]~clkctrl_outclk\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector19~1_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector19~2_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector0~0_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector19~0_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector19~3_combout\ : std_logic;
SIGNAL \DRAM_DQ[15]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[14]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[13]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[12]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[11]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[10]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[9]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[8]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[7]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[6]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[5]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[4]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[3]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[2]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[1]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[0]~input_o\ : std_logic;
SIGNAL \inst4|Audio_Out[0]~17\ : std_logic;
SIGNAL \inst4|Audio_Out[1]~19\ : std_logic;
SIGNAL \inst4|Audio_Out[2]~21\ : std_logic;
SIGNAL \inst4|Audio_Out[3]~23\ : std_logic;
SIGNAL \inst4|Audio_Out[4]~25\ : std_logic;
SIGNAL \inst4|Audio_Out[5]~27\ : std_logic;
SIGNAL \inst4|Audio_Out[6]~29\ : std_logic;
SIGNAL \inst4|Audio_Out[7]~31\ : std_logic;
SIGNAL \inst4|Audio_Out[8]~33\ : std_logic;
SIGNAL \inst4|Audio_Out[9]~35\ : std_logic;
SIGNAL \inst4|Audio_Out[10]~37\ : std_logic;
SIGNAL \inst4|Audio_Out[11]~39\ : std_logic;
SIGNAL \inst4|Audio_Out[12]~41\ : std_logic;
SIGNAL \inst4|Audio_Out[13]~43\ : std_logic;
SIGNAL \inst4|Audio_Out[14]~45\ : std_logic;
SIGNAL \inst4|Audio_Out[15]~46_combout\ : std_logic;
SIGNAL \inst4|Audio_Out[15]~feeder_combout\ : std_logic;
SIGNAL \inst4|Audio_Out[14]~44_combout\ : std_logic;
SIGNAL \inst4|Audio_Out[14]~feeder_combout\ : std_logic;
SIGNAL \inst4|Audio_Out[13]~42_combout\ : std_logic;
SIGNAL \inst4|Audio_Out[13]~feeder_combout\ : std_logic;
SIGNAL \inst4|Audio_Out[12]~40_combout\ : std_logic;
SIGNAL \inst4|Audio_Out[12]~feeder_combout\ : std_logic;
SIGNAL \inst4|Audio_Out[11]~38_combout\ : std_logic;
SIGNAL \inst4|Audio_Out[11]~feeder_combout\ : std_logic;
SIGNAL \inst4|Audio_Out[10]~36_combout\ : std_logic;
SIGNAL \inst4|Audio_Out[10]~feeder_combout\ : std_logic;
SIGNAL \inst4|Audio_Out[9]~34_combout\ : std_logic;
SIGNAL \inst4|Audio_Out[9]~feeder_combout\ : std_logic;
SIGNAL \inst4|Audio_Out[8]~32_combout\ : std_logic;
SIGNAL \inst4|Audio_Out[8]~feeder_combout\ : std_logic;
SIGNAL \inst4|Audio_Out[7]~30_combout\ : std_logic;
SIGNAL \inst4|Audio_Out[7]~feeder_combout\ : std_logic;
SIGNAL \inst4|Audio_Out[6]~28_combout\ : std_logic;
SIGNAL \inst4|Audio_Out[6]~feeder_combout\ : std_logic;
SIGNAL \inst4|Audio_Out[5]~26_combout\ : std_logic;
SIGNAL \inst4|Audio_Out[5]~feeder_combout\ : std_logic;
SIGNAL \inst4|Audio_Out[4]~24_combout\ : std_logic;
SIGNAL \inst4|Audio_Out[4]~feeder_combout\ : std_logic;
SIGNAL \inst4|Audio_Out[3]~22_combout\ : std_logic;
SIGNAL \inst4|Audio_Out[3]~feeder_combout\ : std_logic;
SIGNAL \inst4|Audio_Out[2]~20_combout\ : std_logic;
SIGNAL \inst4|Audio_Out[2]~feeder_combout\ : std_logic;
SIGNAL \inst4|Audio_Out[1]~18_combout\ : std_logic;
SIGNAL \inst4|Audio_Out[1]~feeder_combout\ : std_logic;
SIGNAL \inst4|Audio_Out[0]~16_combout\ : std_logic;
SIGNAL \inst4|Audio_Out[0]~feeder_combout\ : std_logic;
SIGNAL \inst10|PWM_Acumulador[0]~17_combout\ : std_logic;
SIGNAL \inst10|PWM_Acumulador[0]~18\ : std_logic;
SIGNAL \inst10|PWM_Acumulador[1]~19_combout\ : std_logic;
SIGNAL \inst10|PWM_Acumulador[1]~20\ : std_logic;
SIGNAL \inst10|PWM_Acumulador[2]~21_combout\ : std_logic;
SIGNAL \inst10|PWM_Acumulador[2]~22\ : std_logic;
SIGNAL \inst10|PWM_Acumulador[3]~23_combout\ : std_logic;
SIGNAL \inst10|PWM_Acumulador[3]~24\ : std_logic;
SIGNAL \inst10|PWM_Acumulador[4]~25_combout\ : std_logic;
SIGNAL \inst10|PWM_Acumulador[4]~26\ : std_logic;
SIGNAL \inst10|PWM_Acumulador[5]~27_combout\ : std_logic;
SIGNAL \inst10|PWM_Acumulador[5]~28\ : std_logic;
SIGNAL \inst10|PWM_Acumulador[6]~29_combout\ : std_logic;
SIGNAL \inst10|PWM_Acumulador[6]~30\ : std_logic;
SIGNAL \inst10|PWM_Acumulador[7]~31_combout\ : std_logic;
SIGNAL \inst10|PWM_Acumulador[7]~32\ : std_logic;
SIGNAL \inst10|PWM_Acumulador[8]~33_combout\ : std_logic;
SIGNAL \inst10|PWM_Acumulador[8]~34\ : std_logic;
SIGNAL \inst10|PWM_Acumulador[9]~35_combout\ : std_logic;
SIGNAL \inst10|PWM_Acumulador[9]~36\ : std_logic;
SIGNAL \inst10|PWM_Acumulador[10]~37_combout\ : std_logic;
SIGNAL \inst10|PWM_Acumulador[10]~38\ : std_logic;
SIGNAL \inst10|PWM_Acumulador[11]~39_combout\ : std_logic;
SIGNAL \inst10|PWM_Acumulador[11]~40\ : std_logic;
SIGNAL \inst10|PWM_Acumulador[12]~41_combout\ : std_logic;
SIGNAL \inst10|PWM_Acumulador[12]~42\ : std_logic;
SIGNAL \inst10|PWM_Acumulador[13]~43_combout\ : std_logic;
SIGNAL \inst10|PWM_Acumulador[13]~44\ : std_logic;
SIGNAL \inst10|PWM_Acumulador[14]~45_combout\ : std_logic;
SIGNAL \inst10|PWM_Acumulador[14]~46\ : std_logic;
SIGNAL \inst10|PWM_Acumulador[15]~47_combout\ : std_logic;
SIGNAL \inst10|PWM_Acumulador[15]~48\ : std_logic;
SIGNAL \inst10|PWM_Acumulador[16]~49_combout\ : std_logic;
SIGNAL \inst4|Mux0~0_combout\ : std_logic;
SIGNAL \inst4|Mux1~0_combout\ : std_logic;
SIGNAL \inst4|Mux2~0_combout\ : std_logic;
SIGNAL \inst4|Mux3~0_combout\ : std_logic;
SIGNAL \inst4|Mux4~0_combout\ : std_logic;
SIGNAL \inst4|Mux5~0_combout\ : std_logic;
SIGNAL \inst4|Mux6~0_combout\ : std_logic;
SIGNAL \inst4|Mux7~0_combout\ : std_logic;
SIGNAL \inst4|Mux8~0_combout\ : std_logic;
SIGNAL \inst4|Mux9~0_combout\ : std_logic;
SIGNAL \inst4|Mux10~0_combout\ : std_logic;
SIGNAL \inst4|Mux11~0_combout\ : std_logic;
SIGNAL \inst4|Mux12~0_combout\ : std_logic;
SIGNAL \inst4|Mux13~0_combout\ : std_logic;
SIGNAL \inst4|sal_disp2[1]~feeder_combout\ : std_logic;
SIGNAL \inst4|Mux14~0_combout\ : std_logic;
SIGNAL \inst4|Mux15~0_combout\ : std_logic;
SIGNAL \inst4|Mux16~0_combout\ : std_logic;
SIGNAL \inst4|Mux17~0_combout\ : std_logic;
SIGNAL \inst4|Mux18~0_combout\ : std_logic;
SIGNAL \inst4|Mux19~0_combout\ : std_logic;
SIGNAL \inst4|Mux20~0_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector86~2_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector86~3_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector93~1_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector87~2_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector87~3_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector88~2_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector88~3_combout\ : std_logic;
SIGNAL \inst4|address[10]~feeder_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[27]~feeder_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[27]~feeder_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[27]~16_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|m_addr[0]~1_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector89~0_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector89~1_combout\ : std_logic;
SIGNAL \inst4|address[9]~feeder_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[26]~feeder_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[26]~feeder_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[26]~17_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector90~0_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector90~1_combout\ : std_logic;
SIGNAL \inst4|address[8]~feeder_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[25]~feeder_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[25]~feeder_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[25]~18_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector91~0_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector91~1_combout\ : std_logic;
SIGNAL \inst4|address[7]~feeder_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[24]~feeder_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[24]~feeder_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[24]~19_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector92~0_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector92~1_combout\ : std_logic;
SIGNAL \inst4|address[6]~feeder_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[23]~feeder_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[23]~feeder_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[23]~20_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector93~3_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|m_addr[5]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector93~2_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector93~4_combout\ : std_logic;
SIGNAL \inst4|address[5]~feeder_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[22]~feeder_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[22]~feeder_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[22]~21_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector94~0_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector94~1_combout\ : std_logic;
SIGNAL \inst4|address[4]~feeder_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[21]~feeder_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[21]~feeder_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[21]~22_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector95~0_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector95~1_combout\ : std_logic;
SIGNAL \inst4|address[3]~feeder_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[20]~feeder_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[20]~23_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector96~0_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector96~1_combout\ : std_logic;
SIGNAL \inst4|address[2]~feeder_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[19]~feeder_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[19]~feeder_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[19]~24_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector97~0_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector97~1_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[18]~feeder_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[18]~feeder_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[18]~25_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector98~0_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector98~1_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector99~0_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|WideOr16~0_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|Selector100~0_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|m_addr\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst4|address\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst10|PWM_Acumulador\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \inst4|Audio_Out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst4|addressCounter\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \inst2|DRAM|new_sdram_controller_0|m_cmd\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|u1|altpll_0|sd1|wire_pll7_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst|u1|modular_adc_0|control_internal|u_control_fsm|u_eoc_synchronizer|dreg\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst4|sal_disp0\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst4|sal_disp1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst4|sal_disp2\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|DRAM|new_sdram_controller_0|m_bank\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst2|DRAM|new_sdram_controller_0|i_cmd\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|DRAM|new_sdram_controller_0|active_addr\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \inst2|DRAM|new_sdram_controller_0|i_refs\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\ : std_logic_vector(43 DOWNTO 0);
SIGNAL \inst2|DRAM|new_sdram_controller_0|i_count\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\ : std_logic_vector(43 DOWNTO 0);
SIGNAL \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_channel\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst2|DRAM|new_sdram_controller_0|i_addr\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst|u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst2|DRAM|new_sdram_controller_0|m_count\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst2|DRAM|new_sdram_controller_0|refresh_counter\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \inst|u1|modular_adc_0|control_internal|u_control_fsm|chsel\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst2|DRAM|new_sdram_controller_0|za_data\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst|u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst2|DRAM|new_sdram_controller_0|active_data\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst2|DRAM|new_sdram_controller_0|rd_valid\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst2|DRAM|new_sdram_controller_0|m_data\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst|u1|modular_adc_0|control_internal|u_control_fsm|u_clk_dft_synchronizer|dreg\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst4|write_buff\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst2|DRAM|new_sdram_controller_0|ALT_INV_oe~_Duplicate_15_q\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|ALT_INV_m_state.000010000~q\ : std_logic;
SIGNAL \inst4|ALT_INV_BufferFull~q\ : std_logic;
SIGNAL \inst4|ALT_INV_Mux14~0_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \inst4|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|ALT_INV_Selector22~1_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|ALT_INV_Selector20~0_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|ALT_INV_Selector19~3_combout\ : std_logic;
SIGNAL \inst2|DRAM|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|ALT_INV_Selector21~1_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|ALT_INV_always5~0_combout\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|ALT_INV_oe~_Duplicate_14_q\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|ALT_INV_oe~_Duplicate_13_q\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|ALT_INV_oe~_Duplicate_12_q\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|ALT_INV_oe~_Duplicate_11_q\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|ALT_INV_oe~_Duplicate_10_q\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|ALT_INV_oe~_Duplicate_9_q\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|ALT_INV_oe~_Duplicate_8_q\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|ALT_INV_oe~_Duplicate_7_q\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|ALT_INV_oe~_Duplicate_6_q\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|ALT_INV_oe~_Duplicate_5_q\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|ALT_INV_oe~_Duplicate_4_q\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|ALT_INV_oe~_Duplicate_3_q\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|ALT_INV_oe~_Duplicate_2_q\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|ALT_INV_oe~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|DRAM|new_sdram_controller_0|ALT_INV_oe~q\ : std_logic;
SIGNAL \ALT_INV_DELAY_EN~input_o\ : std_logic;

BEGIN

DRAM_CLK <= ww_DRAM_CLK;
ww_DE10CLK <= DE10CLK;
ww_DE10Reset <= DE10Reset;
ww_DELAY_EN <= DELAY_EN;
ww_ADCCLK <= ADCCLK;
DRAM_CAS_N <= ww_DRAM_CAS_N;
DRAM_CKE <= ww_DRAM_CKE;
DRAM_CS_N <= ww_DRAM_CS_N;
DRAM_RAS_N <= ww_DRAM_RAS_N;
DRAM_WE_N <= ww_DRAM_WE_N;
AUDIO_OUT <= ww_AUDIO_OUT;
display0 <= ww_display0;
display1 <= ww_display1;
display2 <= ww_display2;
display3 <= ww_display3;
DRAM_ADDR <= ww_DRAM_ADDR;
DRAM_BA <= ww_DRAM_BA;
DRAM_DQM <= ww_DRAM_DQM;
led_out <= ww_led_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|pll1_INCLK_bus\ <= (gnd & \DE10CLK~input_o\);

\inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk\(0) <= \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|pll1_CLK_bus\(0);
\inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk\(1) <= \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|pll1_CLK_bus\(1);
\inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk\(2) <= \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|pll1_CLK_bus\(2);
\inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk\(3) <= \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|pll1_CLK_bus\(3);
\inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk\(4) <= \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|pll1_CLK_bus\(4);

\inst|u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|primitive_instance_CHSEL_bus\ <= (\inst|u1|modular_adc_0|control_internal|u_control_fsm|chsel[1]~_wirecell_combout\ & 
\inst|u1|modular_adc_0|control_internal|u_control_fsm|chsel[1]~_wirecell_combout\ & \inst|u1|modular_adc_0|control_internal|adc_inst|decoder|WideOr2~0_combout\ & \inst|u1|modular_adc_0|control_internal|adc_inst|decoder|WideOr4~0_combout\ & 
\inst|u1|modular_adc_0|control_internal|adc_inst|decoder|WideOr4~0_combout\);

\inst|u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(0) <= \inst|u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|primitive_instance_DOUT_bus\(0);
\inst|u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(1) <= \inst|u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|primitive_instance_DOUT_bus\(1);
\inst|u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(2) <= \inst|u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|primitive_instance_DOUT_bus\(2);
\inst|u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(3) <= \inst|u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|primitive_instance_DOUT_bus\(3);
\inst|u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(4) <= \inst|u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|primitive_instance_DOUT_bus\(4);
\inst|u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(5) <= \inst|u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|primitive_instance_DOUT_bus\(5);
\inst|u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(6) <= \inst|u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|primitive_instance_DOUT_bus\(6);
\inst|u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(7) <= \inst|u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|primitive_instance_DOUT_bus\(7);
\inst|u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(8) <= \inst|u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|primitive_instance_DOUT_bus\(8);
\inst|u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(9) <= \inst|u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|primitive_instance_DOUT_bus\(9);
\inst|u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(10) <= \inst|u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|primitive_instance_DOUT_bus\(10);
\inst|u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(11) <= \inst|u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|primitive_instance_DOUT_bus\(11);

\inst|u1|altpll_0|sd1|pll7_INCLK_bus\ <= (gnd & \ADCCLK~input_o\);

\inst|u1|altpll_0|sd1|wire_pll7_clk\(0) <= \inst|u1|altpll_0|sd1|pll7_CLK_bus\(0);
\inst|u1|altpll_0|sd1|wire_pll7_clk\(1) <= \inst|u1|altpll_0|sd1|pll7_CLK_bus\(1);
\inst|u1|altpll_0|sd1|wire_pll7_clk\(2) <= \inst|u1|altpll_0|sd1|pll7_CLK_bus\(2);
\inst|u1|altpll_0|sd1|wire_pll7_clk\(3) <= \inst|u1|altpll_0|sd1|pll7_CLK_bus\(3);
\inst|u1|altpll_0|sd1|wire_pll7_clk\(4) <= \inst|u1|altpll_0|sd1|pll7_CLK_bus\(4);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\ADCCLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \ADCCLK~input_o\);

\DE10CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \DE10CLK~input_o\);

\inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk\(0));

\inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[1]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk\(1));
\inst2|DRAM|new_sdram_controller_0|ALT_INV_oe~_Duplicate_15_q\ <= NOT \inst2|DRAM|new_sdram_controller_0|oe~_Duplicate_15_q\;
\inst2|DRAM|new_sdram_controller_0|ALT_INV_m_state.000010000~q\ <= NOT \inst2|DRAM|new_sdram_controller_0|m_state.000010000~q\;
\inst4|ALT_INV_BufferFull~q\ <= NOT \inst4|BufferFull~q\;
\inst4|ALT_INV_Mux14~0_combout\ <= NOT \inst4|Mux14~0_combout\;
\inst4|ALT_INV_Mux7~0_combout\ <= NOT \inst4|Mux7~0_combout\;
\inst4|ALT_INV_Mux0~0_combout\ <= NOT \inst4|Mux0~0_combout\;
\inst2|DRAM|new_sdram_controller_0|ALT_INV_Selector22~1_combout\ <= NOT \inst2|DRAM|new_sdram_controller_0|Selector22~1_combout\;
\inst2|DRAM|new_sdram_controller_0|ALT_INV_Selector20~0_combout\ <= NOT \inst2|DRAM|new_sdram_controller_0|Selector20~0_combout\;
\inst2|DRAM|new_sdram_controller_0|ALT_INV_Selector19~3_combout\ <= NOT \inst2|DRAM|new_sdram_controller_0|Selector19~3_combout\;
\inst2|DRAM|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\ <= NOT \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\;
\inst2|DRAM|new_sdram_controller_0|ALT_INV_Selector21~1_combout\ <= NOT \inst2|DRAM|new_sdram_controller_0|Selector21~1_combout\;
\inst2|DRAM|new_sdram_controller_0|ALT_INV_always5~0_combout\ <= NOT \inst2|DRAM|new_sdram_controller_0|always5~0_combout\;
\inst2|DRAM|new_sdram_controller_0|ALT_INV_oe~_Duplicate_14_q\ <= NOT \inst2|DRAM|new_sdram_controller_0|oe~_Duplicate_14_q\;
\inst2|DRAM|new_sdram_controller_0|ALT_INV_oe~_Duplicate_13_q\ <= NOT \inst2|DRAM|new_sdram_controller_0|oe~_Duplicate_13_q\;
\inst2|DRAM|new_sdram_controller_0|ALT_INV_oe~_Duplicate_12_q\ <= NOT \inst2|DRAM|new_sdram_controller_0|oe~_Duplicate_12_q\;
\inst2|DRAM|new_sdram_controller_0|ALT_INV_oe~_Duplicate_11_q\ <= NOT \inst2|DRAM|new_sdram_controller_0|oe~_Duplicate_11_q\;
\inst2|DRAM|new_sdram_controller_0|ALT_INV_oe~_Duplicate_10_q\ <= NOT \inst2|DRAM|new_sdram_controller_0|oe~_Duplicate_10_q\;
\inst2|DRAM|new_sdram_controller_0|ALT_INV_oe~_Duplicate_9_q\ <= NOT \inst2|DRAM|new_sdram_controller_0|oe~_Duplicate_9_q\;
\inst2|DRAM|new_sdram_controller_0|ALT_INV_oe~_Duplicate_8_q\ <= NOT \inst2|DRAM|new_sdram_controller_0|oe~_Duplicate_8_q\;
\inst2|DRAM|new_sdram_controller_0|ALT_INV_oe~_Duplicate_7_q\ <= NOT \inst2|DRAM|new_sdram_controller_0|oe~_Duplicate_7_q\;
\inst2|DRAM|new_sdram_controller_0|ALT_INV_oe~_Duplicate_6_q\ <= NOT \inst2|DRAM|new_sdram_controller_0|oe~_Duplicate_6_q\;
\inst2|DRAM|new_sdram_controller_0|ALT_INV_oe~_Duplicate_5_q\ <= NOT \inst2|DRAM|new_sdram_controller_0|oe~_Duplicate_5_q\;
\inst2|DRAM|new_sdram_controller_0|ALT_INV_oe~_Duplicate_4_q\ <= NOT \inst2|DRAM|new_sdram_controller_0|oe~_Duplicate_4_q\;
\inst2|DRAM|new_sdram_controller_0|ALT_INV_oe~_Duplicate_3_q\ <= NOT \inst2|DRAM|new_sdram_controller_0|oe~_Duplicate_3_q\;
\inst2|DRAM|new_sdram_controller_0|ALT_INV_oe~_Duplicate_2_q\ <= NOT \inst2|DRAM|new_sdram_controller_0|oe~_Duplicate_2_q\;
\inst2|DRAM|new_sdram_controller_0|ALT_INV_oe~_Duplicate_1_q\ <= NOT \inst2|DRAM|new_sdram_controller_0|oe~_Duplicate_1_q\;
\inst2|DRAM|new_sdram_controller_0|ALT_INV_oe~q\ <= NOT \inst2|DRAM|new_sdram_controller_0|oe~q\;
\ALT_INV_DELAY_EN~input_o\ <= NOT \DELAY_EN~input_o\;

-- Location: IOOBUF_X78_Y36_N24
\DRAM_CLK~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[1]~clkctrl_outclk\,
	devoe => ww_devoe,
	o => ww_DRAM_CLK);

-- Location: IOOBUF_X78_Y21_N23
\DRAM_CAS_N~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|DRAM|new_sdram_controller_0|m_cmd\(1),
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
	i => \inst2|DRAM|new_sdram_controller_0|m_cmd\(3),
	devoe => ww_devoe,
	o => ww_DRAM_CS_N);

-- Location: IOOBUF_X78_Y21_N16
\DRAM_RAS_N~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|DRAM|new_sdram_controller_0|m_cmd\(2),
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
	i => \inst2|DRAM|new_sdram_controller_0|m_cmd\(0),
	devoe => ww_devoe,
	o => ww_DRAM_WE_N);

-- Location: IOOBUF_X29_Y0_N2
\AUDIO_OUT~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|PWM_Acumulador\(16),
	devoe => ww_devoe,
	o => ww_AUDIO_OUT);

-- Location: IOOBUF_X74_Y54_N23
\display0[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_display0(7));

-- Location: IOOBUF_X74_Y54_N16
\display0[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_display0(6));

-- Location: IOOBUF_X74_Y54_N2
\display0[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_display0(5));

-- Location: IOOBUF_X62_Y54_N30
\display0[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_display0(4));

-- Location: IOOBUF_X60_Y54_N2
\display0[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_display0(3));

-- Location: IOOBUF_X74_Y54_N9
\display0[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_display0(2));

-- Location: IOOBUF_X58_Y54_N16
\display0[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_display0(1));

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

-- Location: IOOBUF_X69_Y54_N30
\display1[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|ALT_INV_Mux7~0_combout\,
	devoe => ww_devoe,
	o => ww_display1(7));

-- Location: IOOBUF_X66_Y54_N30
\display1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Mux8~0_combout\,
	devoe => ww_devoe,
	o => ww_display1(6));

-- Location: IOOBUF_X64_Y54_N2
\display1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Mux9~0_combout\,
	devoe => ww_devoe,
	o => ww_display1(5));

-- Location: IOOBUF_X60_Y54_N9
\display1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Mux10~0_combout\,
	devoe => ww_devoe,
	o => ww_display1(4));

-- Location: IOOBUF_X78_Y49_N2
\display1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Mux11~0_combout\,
	devoe => ww_devoe,
	o => ww_display1(3));

-- Location: IOOBUF_X78_Y49_N9
\display1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Mux12~0_combout\,
	devoe => ww_devoe,
	o => ww_display1(2));

-- Location: IOOBUF_X69_Y54_N23
\display1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Mux13~0_combout\,
	devoe => ww_devoe,
	o => ww_display1(1));

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

-- Location: IOOBUF_X78_Y43_N9
\display2[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|ALT_INV_Mux14~0_combout\,
	devoe => ww_devoe,
	o => ww_display2(7));

-- Location: IOOBUF_X78_Y35_N2
\display2[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Mux15~0_combout\,
	devoe => ww_devoe,
	o => ww_display2(6));

-- Location: IOOBUF_X78_Y43_N2
\display2[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Mux16~0_combout\,
	devoe => ww_devoe,
	o => ww_display2(5));

-- Location: IOOBUF_X78_Y44_N2
\display2[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Mux17~0_combout\,
	devoe => ww_devoe,
	o => ww_display2(4));

-- Location: IOOBUF_X69_Y54_N16
\display2[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Mux18~0_combout\,
	devoe => ww_devoe,
	o => ww_display2(3));

-- Location: IOOBUF_X66_Y54_N2
\display2[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Mux19~0_combout\,
	devoe => ww_devoe,
	o => ww_display2(2));

-- Location: IOOBUF_X78_Y44_N9
\display2[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Mux20~0_combout\,
	devoe => ww_devoe,
	o => ww_display2(1));

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

-- Location: IOOBUF_X78_Y43_N16
\display3[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|ALT_INV_BufferFull~q\,
	devoe => ww_devoe,
	o => ww_display3(7));

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

-- Location: IOOBUF_X69_Y54_N9
\display3[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|BufferFull~q\,
	devoe => ww_devoe,
	o => ww_display3(4));

-- Location: IOOBUF_X78_Y33_N2
\display3[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|BufferFull~q\,
	devoe => ww_devoe,
	o => ww_display3(3));

-- Location: IOOBUF_X78_Y33_N9
\display3[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|BufferFull~q\,
	devoe => ww_devoe,
	o => ww_display3(2));

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

-- Location: IOOBUF_X78_Y35_N9
\display3[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_display3(0));

-- Location: IOOBUF_X78_Y20_N2
\DRAM_ADDR[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|DRAM|new_sdram_controller_0|m_addr\(12),
	devoe => ww_devoe,
	o => ww_DRAM_ADDR(12));

-- Location: IOOBUF_X78_Y24_N2
\DRAM_ADDR[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|DRAM|new_sdram_controller_0|m_addr\(11),
	devoe => ww_devoe,
	o => ww_DRAM_ADDR(11));

-- Location: IOOBUF_X78_Y20_N9
\DRAM_ADDR[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|DRAM|new_sdram_controller_0|m_addr\(10),
	devoe => ww_devoe,
	o => ww_DRAM_ADDR(10));

-- Location: IOOBUF_X78_Y24_N9
\DRAM_ADDR[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|DRAM|new_sdram_controller_0|m_addr\(9),
	devoe => ww_devoe,
	o => ww_DRAM_ADDR(9));

-- Location: IOOBUF_X78_Y24_N16
\DRAM_ADDR[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|DRAM|new_sdram_controller_0|m_addr\(8),
	devoe => ww_devoe,
	o => ww_DRAM_ADDR(8));

-- Location: IOOBUF_X78_Y24_N24
\DRAM_ADDR[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|DRAM|new_sdram_controller_0|m_addr\(7),
	devoe => ww_devoe,
	o => ww_DRAM_ADDR(7));

-- Location: IOOBUF_X78_Y20_N24
\DRAM_ADDR[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|DRAM|new_sdram_controller_0|m_addr\(6),
	devoe => ww_devoe,
	o => ww_DRAM_ADDR(6));

-- Location: IOOBUF_X78_Y20_N16
\DRAM_ADDR[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|DRAM|new_sdram_controller_0|m_addr\(5),
	devoe => ww_devoe,
	o => ww_DRAM_ADDR(5));

-- Location: IOOBUF_X78_Y15_N16
\DRAM_ADDR[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|DRAM|new_sdram_controller_0|m_addr\(4),
	devoe => ww_devoe,
	o => ww_DRAM_ADDR(4));

-- Location: IOOBUF_X78_Y3_N23
\DRAM_ADDR[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|DRAM|new_sdram_controller_0|m_addr\(3),
	devoe => ww_devoe,
	o => ww_DRAM_ADDR(3));

-- Location: IOOBUF_X78_Y15_N23
\DRAM_ADDR[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|DRAM|new_sdram_controller_0|m_addr\(2),
	devoe => ww_devoe,
	o => ww_DRAM_ADDR(2));

-- Location: IOOBUF_X78_Y16_N24
\DRAM_ADDR[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|DRAM|new_sdram_controller_0|m_addr\(1),
	devoe => ww_devoe,
	o => ww_DRAM_ADDR(1));

-- Location: IOOBUF_X78_Y3_N16
\DRAM_ADDR[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|DRAM|new_sdram_controller_0|m_addr\(0),
	devoe => ww_devoe,
	o => ww_DRAM_ADDR(0));

-- Location: IOOBUF_X78_Y18_N2
\DRAM_BA[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|DRAM|new_sdram_controller_0|m_bank\(1),
	devoe => ww_devoe,
	o => ww_DRAM_BA(1));

-- Location: IOOBUF_X78_Y18_N9
\DRAM_BA[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|DRAM|new_sdram_controller_0|m_bank\(0),
	devoe => ww_devoe,
	o => ww_DRAM_BA(0));

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

-- Location: IOOBUF_X78_Y43_N23
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

-- Location: IOOBUF_X31_Y0_N2
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

-- Location: IOOBUF_X34_Y39_N9
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

-- Location: IOOBUF_X51_Y54_N2
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

-- Location: IOOBUF_X78_Y36_N2
\led_out[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(11),
	devoe => ww_devoe,
	o => ww_led_out(11));

-- Location: IOOBUF_X78_Y36_N16
\led_out[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(10),
	devoe => ww_devoe,
	o => ww_led_out(10));

-- Location: IOOBUF_X49_Y54_N9
\led_out[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(9),
	devoe => ww_devoe,
	o => ww_led_out(9));

-- Location: IOOBUF_X51_Y54_N9
\led_out[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(8),
	devoe => ww_devoe,
	o => ww_led_out(8));

-- Location: IOOBUF_X56_Y54_N9
\led_out[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(7),
	devoe => ww_devoe,
	o => ww_led_out(7));

-- Location: IOOBUF_X66_Y54_N23
\led_out[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(6),
	devoe => ww_devoe,
	o => ww_led_out(6));

-- Location: IOOBUF_X58_Y54_N23
\led_out[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(5),
	devoe => ww_devoe,
	o => ww_led_out(5));

-- Location: IOOBUF_X56_Y54_N30
\led_out[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(4),
	devoe => ww_devoe,
	o => ww_led_out(4));

-- Location: IOOBUF_X46_Y54_N9
\led_out[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(3),
	devoe => ww_devoe,
	o => ww_led_out(3));

-- Location: IOOBUF_X51_Y54_N16
\led_out[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(2),
	devoe => ww_devoe,
	o => ww_led_out(2));

-- Location: IOOBUF_X46_Y54_N23
\led_out[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(1),
	devoe => ww_devoe,
	o => ww_led_out(1));

-- Location: IOOBUF_X46_Y54_N2
\led_out[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(0),
	devoe => ww_devoe,
	o => ww_led_out(0));

-- Location: IOOBUF_X78_Y31_N2
\DRAM_DQ[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	oe => \inst2|DRAM|new_sdram_controller_0|ALT_INV_oe~q\,
	devoe => ww_devoe,
	o => DRAM_DQ(15));

-- Location: IOOBUF_X78_Y31_N16
\DRAM_DQ[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	oe => \inst2|DRAM|new_sdram_controller_0|ALT_INV_oe~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => DRAM_DQ(14));

-- Location: IOOBUF_X78_Y31_N23
\DRAM_DQ[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	oe => \inst2|DRAM|new_sdram_controller_0|ALT_INV_oe~_Duplicate_2_q\,
	devoe => ww_devoe,
	o => DRAM_DQ(13));

-- Location: IOOBUF_X78_Y31_N9
\DRAM_DQ[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	oe => \inst2|DRAM|new_sdram_controller_0|ALT_INV_oe~_Duplicate_3_q\,
	devoe => ww_devoe,
	o => DRAM_DQ(12));

-- Location: IOOBUF_X78_Y29_N9
\DRAM_DQ[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|DRAM|new_sdram_controller_0|m_data\(11),
	oe => \inst2|DRAM|new_sdram_controller_0|ALT_INV_oe~_Duplicate_4_q\,
	devoe => ww_devoe,
	o => DRAM_DQ(11));

-- Location: IOOBUF_X78_Y29_N2
\DRAM_DQ[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|DRAM|new_sdram_controller_0|m_data\(10),
	oe => \inst2|DRAM|new_sdram_controller_0|ALT_INV_oe~_Duplicate_5_q\,
	devoe => ww_devoe,
	o => DRAM_DQ(10));

-- Location: IOOBUF_X78_Y30_N9
\DRAM_DQ[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|DRAM|new_sdram_controller_0|m_data\(9),
	oe => \inst2|DRAM|new_sdram_controller_0|ALT_INV_oe~_Duplicate_6_q\,
	devoe => ww_devoe,
	o => DRAM_DQ(9));

-- Location: IOOBUF_X78_Y23_N9
\DRAM_DQ[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|DRAM|new_sdram_controller_0|m_data\(8),
	oe => \inst2|DRAM|new_sdram_controller_0|ALT_INV_oe~_Duplicate_7_q\,
	devoe => ww_devoe,
	o => DRAM_DQ(8));

-- Location: IOOBUF_X78_Y17_N9
\DRAM_DQ[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|DRAM|new_sdram_controller_0|m_data\(7),
	oe => \inst2|DRAM|new_sdram_controller_0|ALT_INV_oe~_Duplicate_8_q\,
	devoe => ww_devoe,
	o => DRAM_DQ(7));

-- Location: IOOBUF_X78_Y16_N16
\DRAM_DQ[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|DRAM|new_sdram_controller_0|m_data\(6),
	oe => \inst2|DRAM|new_sdram_controller_0|ALT_INV_oe~_Duplicate_9_q\,
	devoe => ww_devoe,
	o => DRAM_DQ(6));

-- Location: IOOBUF_X78_Y15_N2
\DRAM_DQ[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|DRAM|new_sdram_controller_0|m_data\(5),
	oe => \inst2|DRAM|new_sdram_controller_0|ALT_INV_oe~_Duplicate_10_q\,
	devoe => ww_devoe,
	o => DRAM_DQ(5));

-- Location: IOOBUF_X78_Y15_N9
\DRAM_DQ[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|DRAM|new_sdram_controller_0|m_data\(4),
	oe => \inst2|DRAM|new_sdram_controller_0|ALT_INV_oe~_Duplicate_11_q\,
	devoe => ww_devoe,
	o => DRAM_DQ(4));

-- Location: IOOBUF_X78_Y3_N9
\DRAM_DQ[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|DRAM|new_sdram_controller_0|m_data\(3),
	oe => \inst2|DRAM|new_sdram_controller_0|ALT_INV_oe~_Duplicate_12_q\,
	devoe => ww_devoe,
	o => DRAM_DQ(3));

-- Location: IOOBUF_X78_Y3_N2
\DRAM_DQ[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|DRAM|new_sdram_controller_0|m_data\(2),
	oe => \inst2|DRAM|new_sdram_controller_0|ALT_INV_oe~_Duplicate_13_q\,
	devoe => ww_devoe,
	o => DRAM_DQ(2));

-- Location: IOOBUF_X78_Y16_N9
\DRAM_DQ[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|DRAM|new_sdram_controller_0|m_data\(1),
	oe => \inst2|DRAM|new_sdram_controller_0|ALT_INV_oe~_Duplicate_14_q\,
	devoe => ww_devoe,
	o => DRAM_DQ(1));

-- Location: IOOBUF_X78_Y16_N2
\DRAM_DQ[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|DRAM|new_sdram_controller_0|m_data\(0),
	oe => \inst2|DRAM|new_sdram_controller_0|ALT_INV_oe~_Duplicate_15_q\,
	devoe => ww_devoe,
	o => DRAM_DQ(0));

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

-- Location: PLL_4
\inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|pll1\ : fiftyfivenm_pll
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
	fbin => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|pll1~FBOUT\,
	inclk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|pll1_INCLK_bus\,
	locked => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|locked\,
	fbout => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|pll1~FBOUT\,
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G8
\inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\);

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

-- Location: LCCOMB_X45_Y47_N12
\inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer[0]~8_combout\ = \inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(0) $ (VCC)
-- \inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer[0]~9\ = CARRY(\inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(0),
	datad => VCC,
	combout => \inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer[0]~8_combout\,
	cout => \inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer[0]~9\);

-- Location: LCCOMB_X47_Y48_N24
\inst|u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain[1]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst|u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain[1]~feeder_combout\);

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

-- Location: FF_X47_Y48_N25
\inst|u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	d => \inst|u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain[1]~feeder_combout\,
	clrn => \DE10Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain\(1));

-- Location: LCCOMB_X47_Y48_N6
\inst|u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain[0]~feeder_combout\ = \inst|u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain\(1),
	combout => \inst|u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain[0]~feeder_combout\);

-- Location: FF_X47_Y48_N7
\inst|u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	d => \inst|u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain[0]~feeder_combout\,
	clrn => \DE10Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain\(0));

-- Location: LCCOMB_X47_Y48_N30
\inst|u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~feeder_combout\ = \inst|u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain\(0),
	combout => \inst|u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~feeder_combout\);

-- Location: FF_X47_Y48_N31
\inst|u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	d => \inst|u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~feeder_combout\,
	clrn => \DE10Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\);

-- Location: FF_X45_Y48_N11
\inst|u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRUP_SOC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	d => \inst|u1|modular_adc_0|control_internal|u_control_fsm|Selector5~1_combout\,
	clrn => \inst|u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRUP_SOC~q\);

-- Location: FF_X50_Y48_N3
\inst|u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PUTRESP_DLY1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	asdata => \inst|u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\,
	clrn => \inst|u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PUTRESP_DLY1~q\);

-- Location: FF_X46_Y48_N13
\inst|u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PUTRESP_DLY2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	asdata => \inst|u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PUTRESP_DLY1~q\,
	clrn => \inst|u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PUTRESP_DLY2~q\);

-- Location: FF_X46_Y48_N21
\inst|u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PUTRESP_DLY3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	asdata => \inst|u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PUTRESP_DLY2~q\,
	clrn => \inst|u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PUTRESP_DLY3~q\);

-- Location: LCCOMB_X45_Y48_N22
\inst|u1|modular_adc_0|control_internal|u_control_fsm|Selector7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u1|modular_adc_0|control_internal|u_control_fsm|Selector7~0_combout\ = (\inst|u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRUP_SOC~q\ & (\inst|u1|modular_adc_0|control_internal|u_control_fsm|eoc_synch_dly~q\ & 
-- ((!\inst|u1|modular_adc_0|control_internal|u_control_fsm|u_eoc_synchronizer|dreg\(0))))) # (!\inst|u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRUP_SOC~q\ & 
-- (((\inst|u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PUTRESP_DLY3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRUP_SOC~q\,
	datab => \inst|u1|modular_adc_0|control_internal|u_control_fsm|eoc_synch_dly~q\,
	datac => \inst|u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PUTRESP_DLY3~q\,
	datad => \inst|u1|modular_adc_0|control_internal|u_control_fsm|u_eoc_synchronizer|dreg\(0),
	combout => \inst|u1|modular_adc_0|control_internal|u_control_fsm|Selector7~0_combout\);

-- Location: FF_X45_Y48_N23
\inst|u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.GETCMD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	d => \inst|u1|modular_adc_0|control_internal|u_control_fsm|Selector7~0_combout\,
	clrn => \inst|u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.GETCMD~q\);

-- Location: LCCOMB_X46_Y48_N30
\inst|u1|modular_adc_0|control_internal|u_control_fsm|Selector9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u1|modular_adc_0|control_internal|u_control_fsm|Selector9~0_combout\ = (\inst|u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.GETCMD~q\) # ((\inst|u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.CONV~q\ & 
-- ((\inst|u1|modular_adc_0|control_internal|u_control_fsm|u_eoc_synchronizer|dreg\(0)) # (!\inst|u1|modular_adc_0|control_internal|u_control_fsm|eoc_synch_dly~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u1|modular_adc_0|control_internal|u_control_fsm|eoc_synch_dly~q\,
	datab => \inst|u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.GETCMD~q\,
	datac => \inst|u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.CONV~q\,
	datad => \inst|u1|modular_adc_0|control_internal|u_control_fsm|u_eoc_synchronizer|dreg\(0),
	combout => \inst|u1|modular_adc_0|control_internal|u_control_fsm|Selector9~0_combout\);

-- Location: FF_X46_Y48_N31
\inst|u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.CONV\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	d => \inst|u1|modular_adc_0|control_internal|u_control_fsm|Selector9~0_combout\,
	clrn => \inst|u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.CONV~q\);

-- Location: LCCOMB_X45_Y47_N2
\inst|u1|modular_adc_0|control_internal|u_control_fsm|arc_to_conv~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u1|modular_adc_0|control_internal|u_control_fsm|arc_to_conv~0_combout\ = (!\inst|u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.CONV~q\ & \inst|u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.GETCMD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.CONV~q\,
	datad => \inst|u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.GETCMD~q\,
	combout => \inst|u1|modular_adc_0|control_internal|u_control_fsm|arc_to_conv~0_combout\);

-- Location: PLL_1
\inst|u1|altpll_0|sd1|pll7\ : fiftyfivenm_pll
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
	fbin => \inst|u1|altpll_0|sd1|wire_pll7_fbout\,
	inclk => \inst|u1|altpll_0|sd1|pll7_INCLK_bus\,
	locked => \inst|u1|altpll_0|sd1|wire_pll7_locked\,
	fbout => \inst|u1|altpll_0|sd1|wire_pll7_fbout\,
	clk => \inst|u1|altpll_0|sd1|pll7_CLK_bus\);

-- Location: LCCOMB_X45_Y47_N28
\inst|u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.IDLE~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.IDLE~0_combout\ = (\inst|u1|altpll_0|sd1|wire_pll7_locked\) # (\inst|u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|u1|altpll_0|sd1|wire_pll7_locked\,
	datac => \inst|u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.IDLE~q\,
	combout => \inst|u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.IDLE~0_combout\);

-- Location: FF_X45_Y47_N29
\inst|u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	d => \inst|u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.IDLE~0_combout\,
	clrn => \inst|u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.IDLE~q\);

-- Location: LCCOMB_X45_Y47_N8
\inst|u1|modular_adc_0|control_internal|u_control_fsm|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u1|modular_adc_0|control_internal|u_control_fsm|Selector1~0_combout\ = (\inst|u1|altpll_0|sd1|wire_pll7_locked\ & (((!\inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(6) & 
-- \inst|u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN~q\)) # (!\inst|u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.IDLE~q\))) # (!\inst|u1|altpll_0|sd1|wire_pll7_locked\ & 
-- (!\inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(6) & (\inst|u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u1|altpll_0|sd1|wire_pll7_locked\,
	datab => \inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(6),
	datac => \inst|u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN~q\,
	datad => \inst|u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.IDLE~q\,
	combout => \inst|u1|modular_adc_0|control_internal|u_control_fsm|Selector1~0_combout\);

-- Location: FF_X45_Y47_N9
\inst|u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	d => \inst|u1|modular_adc_0|control_internal|u_control_fsm|Selector1~0_combout\,
	clrn => \inst|u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN~q\);

-- Location: LCCOMB_X45_Y47_N4
\inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer[5]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer[5]~24_combout\ = (\inst|u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN~q\) # ((\inst|u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN_TSEN~q\) # 
-- ((\inst|u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.GETCMD~q\ & !\inst|u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.CONV~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.GETCMD~q\,
	datab => \inst|u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN~q\,
	datac => \inst|u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.CONV~q\,
	datad => \inst|u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN_TSEN~q\,
	combout => \inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer[5]~24_combout\);

-- Location: FF_X45_Y47_N13
\inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	d => \inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer[0]~8_combout\,
	clrn => \inst|u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sclr => \inst|u1|modular_adc_0|control_internal|u_control_fsm|arc_to_conv~0_combout\,
	ena => \inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer[5]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(0));

-- Location: LCCOMB_X45_Y47_N14
\inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer[1]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer[1]~10_combout\ = (\inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(1) & (!\inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer[0]~9\)) # 
-- (!\inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(1) & ((\inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer[0]~9\) # (GND)))
-- \inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer[1]~11\ = CARRY((!\inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer[0]~9\) # (!\inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(1),
	datad => VCC,
	cin => \inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer[0]~9\,
	combout => \inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer[1]~10_combout\,
	cout => \inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer[1]~11\);

-- Location: FF_X45_Y47_N15
\inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	d => \inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer[1]~10_combout\,
	clrn => \inst|u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sclr => \inst|u1|modular_adc_0|control_internal|u_control_fsm|arc_to_conv~0_combout\,
	ena => \inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer[5]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(1));

-- Location: LCCOMB_X45_Y47_N16
\inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer[2]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer[2]~12_combout\ = (\inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(2) & (\inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer[1]~11\ $ (GND))) # 
-- (!\inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(2) & (!\inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer[1]~11\ & VCC))
-- \inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer[2]~13\ = CARRY((\inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(2) & !\inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(2),
	datad => VCC,
	cin => \inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer[1]~11\,
	combout => \inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer[2]~12_combout\,
	cout => \inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer[2]~13\);

-- Location: FF_X45_Y47_N17
\inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	d => \inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer[2]~12_combout\,
	clrn => \inst|u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sclr => \inst|u1|modular_adc_0|control_internal|u_control_fsm|arc_to_conv~0_combout\,
	ena => \inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer[5]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(2));

-- Location: LCCOMB_X45_Y47_N18
\inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer[3]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer[3]~14_combout\ = (\inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(3) & (!\inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer[2]~13\)) # 
-- (!\inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(3) & ((\inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer[2]~13\) # (GND)))
-- \inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer[3]~15\ = CARRY((!\inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer[2]~13\) # (!\inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(3),
	datad => VCC,
	cin => \inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer[2]~13\,
	combout => \inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer[3]~14_combout\,
	cout => \inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer[3]~15\);

-- Location: FF_X45_Y47_N19
\inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	d => \inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer[3]~14_combout\,
	clrn => \inst|u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sclr => \inst|u1|modular_adc_0|control_internal|u_control_fsm|arc_to_conv~0_combout\,
	ena => \inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer[5]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(3));

-- Location: LCCOMB_X45_Y47_N20
\inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer[4]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer[4]~16_combout\ = (\inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(4) & (\inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer[3]~15\ $ (GND))) # 
-- (!\inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(4) & (!\inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer[3]~15\ & VCC))
-- \inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer[4]~17\ = CARRY((\inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(4) & !\inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(4),
	datad => VCC,
	cin => \inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer[3]~15\,
	combout => \inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer[4]~16_combout\,
	cout => \inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer[4]~17\);

-- Location: FF_X45_Y47_N21
\inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	d => \inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer[4]~16_combout\,
	clrn => \inst|u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sclr => \inst|u1|modular_adc_0|control_internal|u_control_fsm|arc_to_conv~0_combout\,
	ena => \inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer[5]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(4));

-- Location: LCCOMB_X45_Y47_N22
\inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer[5]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer[5]~18_combout\ = (\inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(5) & (!\inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer[4]~17\)) # 
-- (!\inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(5) & ((\inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer[4]~17\) # (GND)))
-- \inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer[5]~19\ = CARRY((!\inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer[4]~17\) # (!\inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(5),
	datad => VCC,
	cin => \inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer[4]~17\,
	combout => \inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer[5]~18_combout\,
	cout => \inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer[5]~19\);

-- Location: FF_X45_Y47_N23
\inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	d => \inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer[5]~18_combout\,
	clrn => \inst|u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sclr => \inst|u1|modular_adc_0|control_internal|u_control_fsm|arc_to_conv~0_combout\,
	ena => \inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer[5]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(5));

-- Location: LCCOMB_X45_Y47_N24
\inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer[6]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer[6]~20_combout\ = (\inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(6) & (\inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer[5]~19\ $ (GND))) # 
-- (!\inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(6) & (!\inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer[5]~19\ & VCC))
-- \inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer[6]~21\ = CARRY((\inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(6) & !\inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(6),
	datad => VCC,
	cin => \inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer[5]~19\,
	combout => \inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer[6]~20_combout\,
	cout => \inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer[6]~21\);

-- Location: FF_X45_Y47_N25
\inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	d => \inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer[6]~20_combout\,
	clrn => \inst|u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sclr => \inst|u1|modular_adc_0|control_internal|u_control_fsm|arc_to_conv~0_combout\,
	ena => \inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer[5]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(6));

-- Location: LCCOMB_X45_Y47_N26
\inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer[7]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer[7]~22_combout\ = \inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(7) $ (\inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer[6]~21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(7),
	cin => \inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer[6]~21\,
	combout => \inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer[7]~22_combout\);

-- Location: FF_X45_Y47_N27
\inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	d => \inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer[7]~22_combout\,
	clrn => \inst|u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sclr => \inst|u1|modular_adc_0|control_internal|u_control_fsm|arc_to_conv~0_combout\,
	ena => \inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer[5]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(7));

-- Location: LCCOMB_X45_Y47_N10
\inst|u1|modular_adc_0|control_internal|u_control_fsm|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u1|modular_adc_0|control_internal|u_control_fsm|Selector2~0_combout\ = (\inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(7) & (\inst|u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN~q\ & 
-- ((\inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(6))))) # (!\inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(7) & ((\inst|u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN_TSEN~q\) # 
-- ((\inst|u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN~q\ & \inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(7),
	datab => \inst|u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN~q\,
	datac => \inst|u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN_TSEN~q\,
	datad => \inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(6),
	combout => \inst|u1|modular_adc_0|control_internal|u_control_fsm|Selector2~0_combout\);

-- Location: FF_X45_Y47_N11
\inst|u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN_TSEN\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	d => \inst|u1|modular_adc_0|control_internal|u_control_fsm|Selector2~0_combout\,
	clrn => \inst|u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN_TSEN~q\);

-- Location: LCCOMB_X45_Y47_N6
\inst|u1|modular_adc_0|control_internal|u_control_fsm|Selector18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u1|modular_adc_0|control_internal|u_control_fsm|Selector18~0_combout\ = (\inst|u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN~q\) # (((\inst|u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN_TSEN~q\ & 
-- !\inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(7))) # (!\inst|u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.IDLE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN_TSEN~q\,
	datab => \inst|u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN~q\,
	datac => \inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(7),
	datad => \inst|u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.IDLE~q\,
	combout => \inst|u1|modular_adc_0|control_internal|u_control_fsm|Selector18~0_combout\);

-- Location: LCCOMB_X46_Y48_N12
\inst|u1|modular_adc_0|control_internal|u_control_fsm|WideOr12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u1|modular_adc_0|control_internal|u_control_fsm|WideOr12~0_combout\ = (!\inst|u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\ & (!\inst|u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PUTRESP_DLY1~q\ & 
-- (!\inst|u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PUTRESP_DLY2~q\ & !\inst|u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.CONV_DLY1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\,
	datab => \inst|u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PUTRESP_DLY1~q\,
	datac => \inst|u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PUTRESP_DLY2~q\,
	datad => \inst|u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.CONV_DLY1~q\,
	combout => \inst|u1|modular_adc_0|control_internal|u_control_fsm|WideOr12~0_combout\);

-- Location: LCCOMB_X45_Y48_N26
\inst|u1|modular_adc_0|control_internal|u_control_fsm|Selector15~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u1|modular_adc_0|control_internal|u_control_fsm|Selector15~2_combout\ = (!\inst|u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.GETCMD~q\ & !\inst|u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.CONV~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.GETCMD~q\,
	datad => \inst|u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.CONV~q\,
	combout => \inst|u1|modular_adc_0|control_internal|u_control_fsm|Selector15~2_combout\);

-- Location: LCCOMB_X45_Y48_N24
\inst|u1|modular_adc_0|control_internal|u_control_fsm|WideOr17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u1|modular_adc_0|control_internal|u_control_fsm|WideOr17~combout\ = (\inst|u1|modular_adc_0|control_internal|u_control_fsm|Selector5~1_combout\) # (((\inst|u1|modular_adc_0|control_internal|u_control_fsm|Selector7~0_combout\) # 
-- (!\inst|u1|modular_adc_0|control_internal|u_control_fsm|Selector15~2_combout\)) # (!\inst|u1|modular_adc_0|control_internal|u_control_fsm|WideOr12~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u1|modular_adc_0|control_internal|u_control_fsm|Selector5~1_combout\,
	datab => \inst|u1|modular_adc_0|control_internal|u_control_fsm|WideOr12~0_combout\,
	datac => \inst|u1|modular_adc_0|control_internal|u_control_fsm|Selector7~0_combout\,
	datad => \inst|u1|modular_adc_0|control_internal|u_control_fsm|Selector15~2_combout\,
	combout => \inst|u1|modular_adc_0|control_internal|u_control_fsm|WideOr17~combout\);

-- Location: LCCOMB_X50_Y48_N24
\inst|u1|modular_adc_0|control_internal|u_control_fsm|Selector18~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u1|modular_adc_0|control_internal|u_control_fsm|Selector18~1_combout\ = (!\inst|u1|modular_adc_0|control_internal|u_control_fsm|Selector18~0_combout\ & ((\inst|u1|modular_adc_0|control_internal|u_control_fsm|usr_pwd~q\) # 
-- (!\inst|u1|modular_adc_0|control_internal|u_control_fsm|WideOr17~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u1|modular_adc_0|control_internal|u_control_fsm|Selector18~0_combout\,
	datac => \inst|u1|modular_adc_0|control_internal|u_control_fsm|usr_pwd~q\,
	datad => \inst|u1|modular_adc_0|control_internal|u_control_fsm|WideOr17~combout\,
	combout => \inst|u1|modular_adc_0|control_internal|u_control_fsm|Selector18~1_combout\);

-- Location: FF_X50_Y48_N25
\inst|u1|modular_adc_0|control_internal|u_control_fsm|usr_pwd\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	d => \inst|u1|modular_adc_0|control_internal|u_control_fsm|Selector18~1_combout\,
	clrn => \inst|u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u1|modular_adc_0|control_internal|u_control_fsm|usr_pwd~q\);

-- Location: LCCOMB_X50_Y48_N28
\inst|u1|modular_adc_0|control_internal|u_control_fsm|usr_pwd~_wirecell\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u1|modular_adc_0|control_internal|u_control_fsm|usr_pwd~_wirecell_combout\ = !\inst|u1|modular_adc_0|control_internal|u_control_fsm|usr_pwd~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|u1|modular_adc_0|control_internal|u_control_fsm|usr_pwd~q\,
	combout => \inst|u1|modular_adc_0|control_internal|u_control_fsm|usr_pwd~_wirecell_combout\);

-- Location: LCCOMB_X70_Y44_N16
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

-- Location: LCCOMB_X45_Y47_N0
\inst|u1|modular_adc_0|control_internal|u_control_fsm|Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u1|modular_adc_0|control_internal|u_control_fsm|Selector3~0_combout\ = (\inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(7) & \inst|u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN_TSEN~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(7),
	datad => \inst|u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN_TSEN~q\,
	combout => \inst|u1|modular_adc_0|control_internal|u_control_fsm|Selector3~0_combout\);

-- Location: LCCOMB_X45_Y48_N16
\inst|u1|modular_adc_0|control_internal|u_control_fsm|Selector3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u1|modular_adc_0|control_internal|u_control_fsm|Selector3~1_combout\ = (\inst|u1|modular_adc_0|control_internal|u_control_fsm|Selector3~0_combout\) # ((\inst|u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN_DONE~q\ & 
-- ((\inst|u1|modular_adc_0|control_internal|u_control_fsm|clk_dft_synch_dly~q\) # (!\inst|u1|modular_adc_0|control_internal|u_control_fsm|u_clk_dft_synchronizer|dreg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u1|modular_adc_0|control_internal|u_control_fsm|clk_dft_synch_dly~q\,
	datab => \inst|u1|modular_adc_0|control_internal|u_control_fsm|Selector3~0_combout\,
	datac => \inst|u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN_DONE~q\,
	datad => \inst|u1|modular_adc_0|control_internal|u_control_fsm|u_clk_dft_synchronizer|dreg\(0),
	combout => \inst|u1|modular_adc_0|control_internal|u_control_fsm|Selector3~1_combout\);

-- Location: FF_X45_Y48_N17
\inst|u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN_DONE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	d => \inst|u1|modular_adc_0|control_internal|u_control_fsm|Selector3~1_combout\,
	clrn => \inst|u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN_DONE~q\);

-- Location: FF_X45_Y48_N29
\inst|u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRUP_CH\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	d => \inst|u1|modular_adc_0|control_internal|u_control_fsm|Selector4~0_combout\,
	clrn => \inst|u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRUP_CH~q\);

-- Location: LCCOMB_X45_Y48_N28
\inst|u1|modular_adc_0|control_internal|u_control_fsm|Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u1|modular_adc_0|control_internal|u_control_fsm|Selector4~0_combout\ = (\inst|u1|modular_adc_0|control_internal|u_control_fsm|clk_dft_synch_dly~q\ & (((\inst|u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRUP_CH~q\ & 
-- \inst|u1|modular_adc_0|control_internal|u_control_fsm|u_clk_dft_synchronizer|dreg\(0))))) # (!\inst|u1|modular_adc_0|control_internal|u_control_fsm|clk_dft_synch_dly~q\ & ((\inst|u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRUP_CH~q\) # 
-- ((\inst|u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN_DONE~q\ & \inst|u1|modular_adc_0|control_internal|u_control_fsm|u_clk_dft_synchronizer|dreg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u1|modular_adc_0|control_internal|u_control_fsm|clk_dft_synch_dly~q\,
	datab => \inst|u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN_DONE~q\,
	datac => \inst|u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRUP_CH~q\,
	datad => \inst|u1|modular_adc_0|control_internal|u_control_fsm|u_clk_dft_synchronizer|dreg\(0),
	combout => \inst|u1|modular_adc_0|control_internal|u_control_fsm|Selector4~0_combout\);

-- Location: LCCOMB_X45_Y48_N2
\inst|u1|modular_adc_0|control_internal|u_control_fsm|WideOr12~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u1|modular_adc_0|control_internal|u_control_fsm|WideOr12~1_combout\ = (\inst|u1|modular_adc_0|control_internal|u_control_fsm|WideOr12~0_combout\ & (!\inst|u1|modular_adc_0|control_internal|u_control_fsm|Selector7~0_combout\ & 
-- !\inst|u1|modular_adc_0|control_internal|u_control_fsm|Selector4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|u1|modular_adc_0|control_internal|u_control_fsm|WideOr12~0_combout\,
	datac => \inst|u1|modular_adc_0|control_internal|u_control_fsm|Selector7~0_combout\,
	datad => \inst|u1|modular_adc_0|control_internal|u_control_fsm|Selector4~0_combout\,
	combout => \inst|u1|modular_adc_0|control_internal|u_control_fsm|WideOr12~1_combout\);

-- Location: LCCOMB_X45_Y48_N0
\inst|u1|modular_adc_0|control_internal|u_control_fsm|WideOr12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u1|modular_adc_0|control_internal|u_control_fsm|WideOr12~combout\ = (\inst|u1|modular_adc_0|control_internal|u_control_fsm|Selector1~0_combout\) # (((\inst|u1|modular_adc_0|control_internal|u_control_fsm|Selector3~1_combout\) # 
-- (\inst|u1|modular_adc_0|control_internal|u_control_fsm|Selector5~1_combout\)) # (!\inst|u1|modular_adc_0|control_internal|u_control_fsm|WideOr12~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u1|modular_adc_0|control_internal|u_control_fsm|Selector1~0_combout\,
	datab => \inst|u1|modular_adc_0|control_internal|u_control_fsm|WideOr12~1_combout\,
	datac => \inst|u1|modular_adc_0|control_internal|u_control_fsm|Selector3~1_combout\,
	datad => \inst|u1|modular_adc_0|control_internal|u_control_fsm|Selector5~1_combout\,
	combout => \inst|u1|modular_adc_0|control_internal|u_control_fsm|WideOr12~combout\);

-- Location: LCCOMB_X45_Y48_N30
\inst|u1|modular_adc_0|control_internal|u_control_fsm|chsel[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u1|modular_adc_0|control_internal|u_control_fsm|chsel[0]~2_combout\ = (\inst|u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.GETCMD~q\) # ((\inst|u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.CONV~q\) # 
-- ((\inst|u1|modular_adc_0|control_internal|u_control_fsm|chsel\(0) & \inst|u1|modular_adc_0|control_internal|u_control_fsm|WideOr12~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.GETCMD~q\,
	datab => \inst|u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.CONV~q\,
	datac => \inst|u1|modular_adc_0|control_internal|u_control_fsm|chsel\(0),
	datad => \inst|u1|modular_adc_0|control_internal|u_control_fsm|WideOr12~combout\,
	combout => \inst|u1|modular_adc_0|control_internal|u_control_fsm|chsel[0]~2_combout\);

-- Location: FF_X45_Y48_N31
\inst|u1|modular_adc_0|control_internal|u_control_fsm|chsel[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	d => \inst|u1|modular_adc_0|control_internal|u_control_fsm|chsel[0]~2_combout\,
	clrn => \inst|u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u1|modular_adc_0|control_internal|u_control_fsm|chsel\(0));

-- Location: LCCOMB_X45_Y48_N14
\inst|u1|modular_adc_0|control_internal|u_control_fsm|Selector15~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u1|modular_adc_0|control_internal|u_control_fsm|Selector15~3_combout\ = (\inst|u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.GETCMD~q\) # ((\inst|u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.CONV~q\) # 
-- ((\inst|u1|modular_adc_0|control_internal|u_control_fsm|chsel\(1) & \inst|u1|modular_adc_0|control_internal|u_control_fsm|WideOr12~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.GETCMD~q\,
	datab => \inst|u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.CONV~q\,
	datac => \inst|u1|modular_adc_0|control_internal|u_control_fsm|chsel\(1),
	datad => \inst|u1|modular_adc_0|control_internal|u_control_fsm|WideOr12~combout\,
	combout => \inst|u1|modular_adc_0|control_internal|u_control_fsm|Selector15~3_combout\);

-- Location: FF_X45_Y48_N15
\inst|u1|modular_adc_0|control_internal|u_control_fsm|chsel[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	d => \inst|u1|modular_adc_0|control_internal|u_control_fsm|Selector15~3_combout\,
	clrn => \inst|u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u1|modular_adc_0|control_internal|u_control_fsm|chsel\(1));

-- Location: LCCOMB_X45_Y48_N8
\inst|u1|modular_adc_0|control_internal|adc_inst|decoder|WideOr4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u1|modular_adc_0|control_internal|adc_inst|decoder|WideOr4~0_combout\ = (!\inst|u1|modular_adc_0|control_internal|u_control_fsm|chsel\(1)) # (!\inst|u1|modular_adc_0|control_internal|u_control_fsm|chsel\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|u1|modular_adc_0|control_internal|u_control_fsm|chsel\(0),
	datad => \inst|u1|modular_adc_0|control_internal|u_control_fsm|chsel\(1),
	combout => \inst|u1|modular_adc_0|control_internal|adc_inst|decoder|WideOr4~0_combout\);

-- Location: LCCOMB_X45_Y48_N6
\inst|u1|modular_adc_0|control_internal|adc_inst|decoder|WideOr2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u1|modular_adc_0|control_internal|adc_inst|decoder|WideOr2~0_combout\ = (\inst|u1|modular_adc_0|control_internal|u_control_fsm|chsel\(0)) # (!\inst|u1|modular_adc_0|control_internal|u_control_fsm|chsel\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|u1|modular_adc_0|control_internal|u_control_fsm|chsel\(0),
	datad => \inst|u1|modular_adc_0|control_internal|u_control_fsm|chsel\(1),
	combout => \inst|u1|modular_adc_0|control_internal|adc_inst|decoder|WideOr2~0_combout\);

-- Location: LCCOMB_X47_Y48_N2
\inst|u1|modular_adc_0|control_internal|u_control_fsm|chsel[1]~_wirecell\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u1|modular_adc_0|control_internal|u_control_fsm|chsel[1]~_wirecell_combout\ = !\inst|u1|modular_adc_0|control_internal|u_control_fsm|chsel\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|u1|modular_adc_0|control_internal|u_control_fsm|chsel\(1),
	combout => \inst|u1|modular_adc_0|control_internal|u_control_fsm|chsel[1]~_wirecell_combout\);

-- Location: ADCBLOCK_X43_Y52_N0
\inst|u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|primitive_instance\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 1,
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
	soc => \inst|u1|modular_adc_0|control_internal|u_control_fsm|soc~q\,
	usr_pwd => \inst|u1|modular_adc_0|control_internal|u_control_fsm|usr_pwd~_wirecell_combout\,
	tsen => \~GND~combout\,
	clkin_from_pll_c0 => \inst|u1|altpll_0|sd1|wire_pll7_clk\(0),
	chsel => \inst|u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|primitive_instance_CHSEL_bus\,
	eoc => \inst|u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|eoc\,
	dout => \inst|u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|primitive_instance_DOUT_bus\);

-- Location: LCCOMB_X45_Y48_N20
\inst|u1|modular_adc_0|control_internal|u_control_fsm|u_clk_dft_synchronizer|din_s1~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u1|modular_adc_0|control_internal|u_control_fsm|u_clk_dft_synchronizer|din_s1~feeder_combout\ = \inst|u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|clkout_adccore\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|clkout_adccore\,
	combout => \inst|u1|modular_adc_0|control_internal|u_control_fsm|u_clk_dft_synchronizer|din_s1~feeder_combout\);

-- Location: FF_X45_Y48_N21
\inst|u1|modular_adc_0|control_internal|u_control_fsm|u_clk_dft_synchronizer|din_s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	d => \inst|u1|modular_adc_0|control_internal|u_control_fsm|u_clk_dft_synchronizer|din_s1~feeder_combout\,
	clrn => \inst|u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u1|modular_adc_0|control_internal|u_control_fsm|u_clk_dft_synchronizer|din_s1~q\);

-- Location: LCCOMB_X45_Y48_N4
\inst|u1|modular_adc_0|control_internal|u_control_fsm|u_clk_dft_synchronizer|dreg[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u1|modular_adc_0|control_internal|u_control_fsm|u_clk_dft_synchronizer|dreg[0]~feeder_combout\ = \inst|u1|modular_adc_0|control_internal|u_control_fsm|u_clk_dft_synchronizer|din_s1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|u1|modular_adc_0|control_internal|u_control_fsm|u_clk_dft_synchronizer|din_s1~q\,
	combout => \inst|u1|modular_adc_0|control_internal|u_control_fsm|u_clk_dft_synchronizer|dreg[0]~feeder_combout\);

-- Location: FF_X45_Y48_N5
\inst|u1|modular_adc_0|control_internal|u_control_fsm|u_clk_dft_synchronizer|dreg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	d => \inst|u1|modular_adc_0|control_internal|u_control_fsm|u_clk_dft_synchronizer|dreg[0]~feeder_combout\,
	clrn => \inst|u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u1|modular_adc_0|control_internal|u_control_fsm|u_clk_dft_synchronizer|dreg\(0));

-- Location: FF_X45_Y48_N27
\inst|u1|modular_adc_0|control_internal|u_control_fsm|clk_dft_synch_dly\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	asdata => \inst|u1|modular_adc_0|control_internal|u_control_fsm|u_clk_dft_synchronizer|dreg\(0),
	clrn => \inst|u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u1|modular_adc_0|control_internal|u_control_fsm|clk_dft_synch_dly~q\);

-- Location: LCCOMB_X45_Y48_N12
\inst|u1|modular_adc_0|control_internal|u_control_fsm|Selector5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u1|modular_adc_0|control_internal|u_control_fsm|Selector5~0_combout\ = (\inst|u1|modular_adc_0|control_internal|u_control_fsm|clk_dft_synch_dly~q\ & (\inst|u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRUP_CH~q\ & 
-- !\inst|u1|modular_adc_0|control_internal|u_control_fsm|u_clk_dft_synchronizer|dreg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u1|modular_adc_0|control_internal|u_control_fsm|clk_dft_synch_dly~q\,
	datab => \inst|u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRUP_CH~q\,
	datad => \inst|u1|modular_adc_0|control_internal|u_control_fsm|u_clk_dft_synchronizer|dreg\(0),
	combout => \inst|u1|modular_adc_0|control_internal|u_control_fsm|Selector5~0_combout\);

-- Location: LCCOMB_X45_Y48_N10
\inst|u1|modular_adc_0|control_internal|u_control_fsm|Selector5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u1|modular_adc_0|control_internal|u_control_fsm|Selector5~1_combout\ = (\inst|u1|modular_adc_0|control_internal|u_control_fsm|Selector5~0_combout\) # ((\inst|u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRUP_SOC~q\ & 
-- ((\inst|u1|modular_adc_0|control_internal|u_control_fsm|u_eoc_synchronizer|dreg\(0)) # (!\inst|u1|modular_adc_0|control_internal|u_control_fsm|eoc_synch_dly~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u1|modular_adc_0|control_internal|u_control_fsm|Selector5~0_combout\,
	datab => \inst|u1|modular_adc_0|control_internal|u_control_fsm|eoc_synch_dly~q\,
	datac => \inst|u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRUP_SOC~q\,
	datad => \inst|u1|modular_adc_0|control_internal|u_control_fsm|u_eoc_synchronizer|dreg\(0),
	combout => \inst|u1|modular_adc_0|control_internal|u_control_fsm|Selector5~1_combout\);

-- Location: LCCOMB_X45_Y48_N18
\inst|u1|modular_adc_0|control_internal|u_control_fsm|Selector17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u1|modular_adc_0|control_internal|u_control_fsm|Selector17~0_combout\ = (\inst|u1|modular_adc_0|control_internal|u_control_fsm|Selector5~1_combout\) # ((\inst|u1|modular_adc_0|control_internal|u_control_fsm|soc~q\ & 
-- ((!\inst|u1|modular_adc_0|control_internal|u_control_fsm|WideOr12~1_combout\) # (!\inst|u1|modular_adc_0|control_internal|u_control_fsm|Selector15~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u1|modular_adc_0|control_internal|u_control_fsm|Selector5~1_combout\,
	datab => \inst|u1|modular_adc_0|control_internal|u_control_fsm|Selector15~2_combout\,
	datac => \inst|u1|modular_adc_0|control_internal|u_control_fsm|soc~q\,
	datad => \inst|u1|modular_adc_0|control_internal|u_control_fsm|WideOr12~1_combout\,
	combout => \inst|u1|modular_adc_0|control_internal|u_control_fsm|Selector17~0_combout\);

-- Location: FF_X45_Y48_N19
\inst|u1|modular_adc_0|control_internal|u_control_fsm|soc\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	d => \inst|u1|modular_adc_0|control_internal|u_control_fsm|Selector17~0_combout\,
	clrn => \inst|u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u1|modular_adc_0|control_internal|u_control_fsm|soc~q\);

-- Location: LCCOMB_X46_Y48_N26
\inst|u1|modular_adc_0|control_internal|u_control_fsm|u_eoc_synchronizer|din_s1~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u1|modular_adc_0|control_internal|u_control_fsm|u_eoc_synchronizer|din_s1~feeder_combout\ = \inst|u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|eoc\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|eoc\,
	combout => \inst|u1|modular_adc_0|control_internal|u_control_fsm|u_eoc_synchronizer|din_s1~feeder_combout\);

-- Location: FF_X46_Y48_N27
\inst|u1|modular_adc_0|control_internal|u_control_fsm|u_eoc_synchronizer|din_s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	d => \inst|u1|modular_adc_0|control_internal|u_control_fsm|u_eoc_synchronizer|din_s1~feeder_combout\,
	clrn => \inst|u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u1|modular_adc_0|control_internal|u_control_fsm|u_eoc_synchronizer|din_s1~q\);

-- Location: FF_X46_Y48_N7
\inst|u1|modular_adc_0|control_internal|u_control_fsm|u_eoc_synchronizer|dreg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	asdata => \inst|u1|modular_adc_0|control_internal|u_control_fsm|u_eoc_synchronizer|din_s1~q\,
	clrn => \inst|u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u1|modular_adc_0|control_internal|u_control_fsm|u_eoc_synchronizer|dreg\(0));

-- Location: FF_X45_Y48_N13
\inst|u1|modular_adc_0|control_internal|u_control_fsm|eoc_synch_dly\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	asdata => \inst|u1|modular_adc_0|control_internal|u_control_fsm|u_eoc_synchronizer|dreg\(0),
	clrn => \inst|u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u1|modular_adc_0|control_internal|u_control_fsm|eoc_synch_dly~q\);

-- Location: LCCOMB_X46_Y48_N18
\inst|u1|modular_adc_0|control_internal|u_control_fsm|load_dout~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u1|modular_adc_0|control_internal|u_control_fsm|load_dout~1_combout\ = (\inst|u1|modular_adc_0|control_internal|u_control_fsm|eoc_synch_dly~q\ & (\inst|u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.CONV~q\ & 
-- !\inst|u1|modular_adc_0|control_internal|u_control_fsm|u_eoc_synchronizer|dreg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u1|modular_adc_0|control_internal|u_control_fsm|eoc_synch_dly~q\,
	datac => \inst|u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.CONV~q\,
	datad => \inst|u1|modular_adc_0|control_internal|u_control_fsm|u_eoc_synchronizer|dreg\(0),
	combout => \inst|u1|modular_adc_0|control_internal|u_control_fsm|load_dout~1_combout\);

-- Location: FF_X46_Y48_N19
\inst|u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.CONV_DLY1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	d => \inst|u1|modular_adc_0|control_internal|u_control_fsm|load_dout~1_combout\,
	clrn => \inst|u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.CONV_DLY1~q\);

-- Location: LCCOMB_X46_Y48_N8
\inst|u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~feeder_combout\ = \inst|u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.CONV_DLY1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.CONV_DLY1~q\,
	combout => \inst|u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~feeder_combout\);

-- Location: FF_X46_Y48_N9
\inst|u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	d => \inst|u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~feeder_combout\,
	clrn => \inst|u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\);

-- Location: LCCOMB_X50_Y48_N6
\inst|u1|modular_adc_0|control_internal|u_control_fsm|pend~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u1|modular_adc_0|control_internal|u_control_fsm|pend~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst|u1|modular_adc_0|control_internal|u_control_fsm|pend~feeder_combout\);

-- Location: FF_X50_Y48_N7
\inst|u1|modular_adc_0|control_internal|u_control_fsm|pend\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	d => \inst|u1|modular_adc_0|control_internal|u_control_fsm|pend~feeder_combout\,
	clrn => \inst|u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	ena => \inst|u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u1|modular_adc_0|control_internal|u_control_fsm|pend~q\);

-- Location: LCCOMB_X50_Y48_N4
\inst|u1|modular_adc_0|control_internal|u_control_fsm|load_rsp~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u1|modular_adc_0|control_internal|u_control_fsm|load_rsp~0_combout\ = (\inst|u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\ & \inst|u1|modular_adc_0|control_internal|u_control_fsm|pend~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\,
	datad => \inst|u1|modular_adc_0|control_internal|u_control_fsm|pend~q\,
	combout => \inst|u1|modular_adc_0|control_internal|u_control_fsm|load_rsp~0_combout\);

-- Location: FF_X50_Y48_N19
\inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_valid\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	asdata => \inst|u1|modular_adc_0|control_internal|u_control_fsm|load_rsp~0_combout\,
	clrn => \inst|u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_valid~q\);

-- Location: LCCOMB_X70_Y25_N6
\inst4|addressCounter[0]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|addressCounter[0]~26_combout\ = \inst4|addressCounter\(0) $ (VCC)
-- \inst4|addressCounter[0]~27\ = CARRY(\inst4|addressCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|addressCounter\(0),
	datad => VCC,
	combout => \inst4|addressCounter[0]~26_combout\,
	cout => \inst4|addressCounter[0]~27\);

-- Location: FF_X50_Y48_N5
\inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_channel[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	d => \inst|u1|modular_adc_0|control_internal|u_control_fsm|load_rsp~0_combout\,
	clrn => \inst|u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_channel\(0));

-- Location: LCCOMB_X50_Y48_N18
\inst4|retardo~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|retardo~0_combout\ = (\inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_channel\(0) & \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_valid~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_channel\(0),
	datac => \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_valid~q\,
	combout => \inst4|retardo~0_combout\);

-- Location: FF_X70_Y25_N7
\inst4|addressCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \inst4|addressCounter[0]~26_combout\,
	sclr => \inst4|LessThan0~8_combout\,
	ena => \inst4|retardo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|addressCounter\(0));

-- Location: LCCOMB_X70_Y25_N8
\inst4|addressCounter[1]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|addressCounter[1]~28_combout\ = (\inst4|addressCounter\(1) & (!\inst4|addressCounter[0]~27\)) # (!\inst4|addressCounter\(1) & ((\inst4|addressCounter[0]~27\) # (GND)))
-- \inst4|addressCounter[1]~29\ = CARRY((!\inst4|addressCounter[0]~27\) # (!\inst4|addressCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|addressCounter\(1),
	datad => VCC,
	cin => \inst4|addressCounter[0]~27\,
	combout => \inst4|addressCounter[1]~28_combout\,
	cout => \inst4|addressCounter[1]~29\);

-- Location: FF_X70_Y25_N9
\inst4|addressCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \inst4|addressCounter[1]~28_combout\,
	sclr => \inst4|LessThan0~8_combout\,
	ena => \inst4|retardo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|addressCounter\(1));

-- Location: LCCOMB_X70_Y25_N10
\inst4|addressCounter[2]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|addressCounter[2]~30_combout\ = (\inst4|addressCounter\(2) & (\inst4|addressCounter[1]~29\ $ (GND))) # (!\inst4|addressCounter\(2) & (!\inst4|addressCounter[1]~29\ & VCC))
-- \inst4|addressCounter[2]~31\ = CARRY((\inst4|addressCounter\(2) & !\inst4|addressCounter[1]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|addressCounter\(2),
	datad => VCC,
	cin => \inst4|addressCounter[1]~29\,
	combout => \inst4|addressCounter[2]~30_combout\,
	cout => \inst4|addressCounter[2]~31\);

-- Location: FF_X70_Y25_N11
\inst4|addressCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \inst4|addressCounter[2]~30_combout\,
	sclr => \inst4|LessThan0~8_combout\,
	ena => \inst4|retardo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|addressCounter\(2));

-- Location: LCCOMB_X70_Y25_N12
\inst4|addressCounter[3]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|addressCounter[3]~32_combout\ = (\inst4|addressCounter\(3) & (!\inst4|addressCounter[2]~31\)) # (!\inst4|addressCounter\(3) & ((\inst4|addressCounter[2]~31\) # (GND)))
-- \inst4|addressCounter[3]~33\ = CARRY((!\inst4|addressCounter[2]~31\) # (!\inst4|addressCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|addressCounter\(3),
	datad => VCC,
	cin => \inst4|addressCounter[2]~31\,
	combout => \inst4|addressCounter[3]~32_combout\,
	cout => \inst4|addressCounter[3]~33\);

-- Location: FF_X70_Y25_N13
\inst4|addressCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \inst4|addressCounter[3]~32_combout\,
	sclr => \inst4|LessThan0~8_combout\,
	ena => \inst4|retardo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|addressCounter\(3));

-- Location: LCCOMB_X70_Y25_N14
\inst4|addressCounter[4]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|addressCounter[4]~34_combout\ = (\inst4|addressCounter\(4) & (\inst4|addressCounter[3]~33\ $ (GND))) # (!\inst4|addressCounter\(4) & (!\inst4|addressCounter[3]~33\ & VCC))
-- \inst4|addressCounter[4]~35\ = CARRY((\inst4|addressCounter\(4) & !\inst4|addressCounter[3]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|addressCounter\(4),
	datad => VCC,
	cin => \inst4|addressCounter[3]~33\,
	combout => \inst4|addressCounter[4]~34_combout\,
	cout => \inst4|addressCounter[4]~35\);

-- Location: FF_X70_Y25_N15
\inst4|addressCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \inst4|addressCounter[4]~34_combout\,
	sclr => \inst4|LessThan0~8_combout\,
	ena => \inst4|retardo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|addressCounter\(4));

-- Location: LCCOMB_X70_Y25_N16
\inst4|addressCounter[5]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|addressCounter[5]~36_combout\ = (\inst4|addressCounter\(5) & (!\inst4|addressCounter[4]~35\)) # (!\inst4|addressCounter\(5) & ((\inst4|addressCounter[4]~35\) # (GND)))
-- \inst4|addressCounter[5]~37\ = CARRY((!\inst4|addressCounter[4]~35\) # (!\inst4|addressCounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|addressCounter\(5),
	datad => VCC,
	cin => \inst4|addressCounter[4]~35\,
	combout => \inst4|addressCounter[5]~36_combout\,
	cout => \inst4|addressCounter[5]~37\);

-- Location: FF_X70_Y25_N17
\inst4|addressCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \inst4|addressCounter[5]~36_combout\,
	sclr => \inst4|LessThan0~8_combout\,
	ena => \inst4|retardo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|addressCounter\(5));

-- Location: LCCOMB_X70_Y25_N18
\inst4|addressCounter[6]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|addressCounter[6]~38_combout\ = (\inst4|addressCounter\(6) & (\inst4|addressCounter[5]~37\ $ (GND))) # (!\inst4|addressCounter\(6) & (!\inst4|addressCounter[5]~37\ & VCC))
-- \inst4|addressCounter[6]~39\ = CARRY((\inst4|addressCounter\(6) & !\inst4|addressCounter[5]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|addressCounter\(6),
	datad => VCC,
	cin => \inst4|addressCounter[5]~37\,
	combout => \inst4|addressCounter[6]~38_combout\,
	cout => \inst4|addressCounter[6]~39\);

-- Location: FF_X70_Y25_N19
\inst4|addressCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \inst4|addressCounter[6]~38_combout\,
	sclr => \inst4|LessThan0~8_combout\,
	ena => \inst4|retardo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|addressCounter\(6));

-- Location: LCCOMB_X70_Y25_N20
\inst4|addressCounter[7]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|addressCounter[7]~40_combout\ = (\inst4|addressCounter\(7) & (!\inst4|addressCounter[6]~39\)) # (!\inst4|addressCounter\(7) & ((\inst4|addressCounter[6]~39\) # (GND)))
-- \inst4|addressCounter[7]~41\ = CARRY((!\inst4|addressCounter[6]~39\) # (!\inst4|addressCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|addressCounter\(7),
	datad => VCC,
	cin => \inst4|addressCounter[6]~39\,
	combout => \inst4|addressCounter[7]~40_combout\,
	cout => \inst4|addressCounter[7]~41\);

-- Location: FF_X70_Y25_N21
\inst4|addressCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \inst4|addressCounter[7]~40_combout\,
	sclr => \inst4|LessThan0~8_combout\,
	ena => \inst4|retardo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|addressCounter\(7));

-- Location: LCCOMB_X70_Y25_N22
\inst4|addressCounter[8]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|addressCounter[8]~42_combout\ = (\inst4|addressCounter\(8) & (\inst4|addressCounter[7]~41\ $ (GND))) # (!\inst4|addressCounter\(8) & (!\inst4|addressCounter[7]~41\ & VCC))
-- \inst4|addressCounter[8]~43\ = CARRY((\inst4|addressCounter\(8) & !\inst4|addressCounter[7]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|addressCounter\(8),
	datad => VCC,
	cin => \inst4|addressCounter[7]~41\,
	combout => \inst4|addressCounter[8]~42_combout\,
	cout => \inst4|addressCounter[8]~43\);

-- Location: FF_X70_Y25_N23
\inst4|addressCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \inst4|addressCounter[8]~42_combout\,
	sclr => \inst4|LessThan0~8_combout\,
	ena => \inst4|retardo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|addressCounter\(8));

-- Location: LCCOMB_X70_Y25_N24
\inst4|addressCounter[9]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|addressCounter[9]~44_combout\ = (\inst4|addressCounter\(9) & (!\inst4|addressCounter[8]~43\)) # (!\inst4|addressCounter\(9) & ((\inst4|addressCounter[8]~43\) # (GND)))
-- \inst4|addressCounter[9]~45\ = CARRY((!\inst4|addressCounter[8]~43\) # (!\inst4|addressCounter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|addressCounter\(9),
	datad => VCC,
	cin => \inst4|addressCounter[8]~43\,
	combout => \inst4|addressCounter[9]~44_combout\,
	cout => \inst4|addressCounter[9]~45\);

-- Location: FF_X70_Y25_N25
\inst4|addressCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \inst4|addressCounter[9]~44_combout\,
	sclr => \inst4|LessThan0~8_combout\,
	ena => \inst4|retardo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|addressCounter\(9));

-- Location: LCCOMB_X70_Y25_N26
\inst4|addressCounter[10]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|addressCounter[10]~46_combout\ = (\inst4|addressCounter\(10) & (\inst4|addressCounter[9]~45\ $ (GND))) # (!\inst4|addressCounter\(10) & (!\inst4|addressCounter[9]~45\ & VCC))
-- \inst4|addressCounter[10]~47\ = CARRY((\inst4|addressCounter\(10) & !\inst4|addressCounter[9]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|addressCounter\(10),
	datad => VCC,
	cin => \inst4|addressCounter[9]~45\,
	combout => \inst4|addressCounter[10]~46_combout\,
	cout => \inst4|addressCounter[10]~47\);

-- Location: FF_X70_Y25_N27
\inst4|addressCounter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \inst4|addressCounter[10]~46_combout\,
	sclr => \inst4|LessThan0~8_combout\,
	ena => \inst4|retardo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|addressCounter\(10));

-- Location: LCCOMB_X70_Y25_N28
\inst4|addressCounter[11]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|addressCounter[11]~48_combout\ = (\inst4|addressCounter\(11) & (!\inst4|addressCounter[10]~47\)) # (!\inst4|addressCounter\(11) & ((\inst4|addressCounter[10]~47\) # (GND)))
-- \inst4|addressCounter[11]~49\ = CARRY((!\inst4|addressCounter[10]~47\) # (!\inst4|addressCounter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|addressCounter\(11),
	datad => VCC,
	cin => \inst4|addressCounter[10]~47\,
	combout => \inst4|addressCounter[11]~48_combout\,
	cout => \inst4|addressCounter[11]~49\);

-- Location: FF_X70_Y25_N29
\inst4|addressCounter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \inst4|addressCounter[11]~48_combout\,
	sclr => \inst4|LessThan0~8_combout\,
	ena => \inst4|retardo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|addressCounter\(11));

-- Location: LCCOMB_X70_Y25_N30
\inst4|addressCounter[12]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|addressCounter[12]~50_combout\ = (\inst4|addressCounter\(12) & (\inst4|addressCounter[11]~49\ $ (GND))) # (!\inst4|addressCounter\(12) & (!\inst4|addressCounter[11]~49\ & VCC))
-- \inst4|addressCounter[12]~51\ = CARRY((\inst4|addressCounter\(12) & !\inst4|addressCounter[11]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|addressCounter\(12),
	datad => VCC,
	cin => \inst4|addressCounter[11]~49\,
	combout => \inst4|addressCounter[12]~50_combout\,
	cout => \inst4|addressCounter[12]~51\);

-- Location: FF_X70_Y25_N31
\inst4|addressCounter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \inst4|addressCounter[12]~50_combout\,
	sclr => \inst4|LessThan0~8_combout\,
	ena => \inst4|retardo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|addressCounter\(12));

-- Location: LCCOMB_X70_Y24_N0
\inst4|addressCounter[13]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|addressCounter[13]~52_combout\ = (\inst4|addressCounter\(13) & (!\inst4|addressCounter[12]~51\)) # (!\inst4|addressCounter\(13) & ((\inst4|addressCounter[12]~51\) # (GND)))
-- \inst4|addressCounter[13]~53\ = CARRY((!\inst4|addressCounter[12]~51\) # (!\inst4|addressCounter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|addressCounter\(13),
	datad => VCC,
	cin => \inst4|addressCounter[12]~51\,
	combout => \inst4|addressCounter[13]~52_combout\,
	cout => \inst4|addressCounter[13]~53\);

-- Location: FF_X70_Y24_N1
\inst4|addressCounter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \inst4|addressCounter[13]~52_combout\,
	sclr => \inst4|LessThan0~8_combout\,
	ena => \inst4|retardo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|addressCounter\(13));

-- Location: LCCOMB_X70_Y24_N2
\inst4|addressCounter[14]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|addressCounter[14]~54_combout\ = (\inst4|addressCounter\(14) & (\inst4|addressCounter[13]~53\ $ (GND))) # (!\inst4|addressCounter\(14) & (!\inst4|addressCounter[13]~53\ & VCC))
-- \inst4|addressCounter[14]~55\ = CARRY((\inst4|addressCounter\(14) & !\inst4|addressCounter[13]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|addressCounter\(14),
	datad => VCC,
	cin => \inst4|addressCounter[13]~53\,
	combout => \inst4|addressCounter[14]~54_combout\,
	cout => \inst4|addressCounter[14]~55\);

-- Location: FF_X70_Y24_N3
\inst4|addressCounter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \inst4|addressCounter[14]~54_combout\,
	sclr => \inst4|LessThan0~8_combout\,
	ena => \inst4|retardo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|addressCounter\(14));

-- Location: LCCOMB_X70_Y24_N4
\inst4|addressCounter[15]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|addressCounter[15]~56_combout\ = (\inst4|addressCounter\(15) & (!\inst4|addressCounter[14]~55\)) # (!\inst4|addressCounter\(15) & ((\inst4|addressCounter[14]~55\) # (GND)))
-- \inst4|addressCounter[15]~57\ = CARRY((!\inst4|addressCounter[14]~55\) # (!\inst4|addressCounter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|addressCounter\(15),
	datad => VCC,
	cin => \inst4|addressCounter[14]~55\,
	combout => \inst4|addressCounter[15]~56_combout\,
	cout => \inst4|addressCounter[15]~57\);

-- Location: FF_X70_Y24_N5
\inst4|addressCounter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \inst4|addressCounter[15]~56_combout\,
	sclr => \inst4|LessThan0~8_combout\,
	ena => \inst4|retardo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|addressCounter\(15));

-- Location: LCCOMB_X70_Y24_N6
\inst4|addressCounter[16]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|addressCounter[16]~58_combout\ = (\inst4|addressCounter\(16) & (\inst4|addressCounter[15]~57\ $ (GND))) # (!\inst4|addressCounter\(16) & (!\inst4|addressCounter[15]~57\ & VCC))
-- \inst4|addressCounter[16]~59\ = CARRY((\inst4|addressCounter\(16) & !\inst4|addressCounter[15]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|addressCounter\(16),
	datad => VCC,
	cin => \inst4|addressCounter[15]~57\,
	combout => \inst4|addressCounter[16]~58_combout\,
	cout => \inst4|addressCounter[16]~59\);

-- Location: FF_X70_Y24_N7
\inst4|addressCounter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \inst4|addressCounter[16]~58_combout\,
	sclr => \inst4|LessThan0~8_combout\,
	ena => \inst4|retardo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|addressCounter\(16));

-- Location: LCCOMB_X70_Y24_N8
\inst4|addressCounter[17]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|addressCounter[17]~60_combout\ = (\inst4|addressCounter\(17) & (!\inst4|addressCounter[16]~59\)) # (!\inst4|addressCounter\(17) & ((\inst4|addressCounter[16]~59\) # (GND)))
-- \inst4|addressCounter[17]~61\ = CARRY((!\inst4|addressCounter[16]~59\) # (!\inst4|addressCounter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|addressCounter\(17),
	datad => VCC,
	cin => \inst4|addressCounter[16]~59\,
	combout => \inst4|addressCounter[17]~60_combout\,
	cout => \inst4|addressCounter[17]~61\);

-- Location: FF_X70_Y24_N9
\inst4|addressCounter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \inst4|addressCounter[17]~60_combout\,
	sclr => \inst4|LessThan0~8_combout\,
	ena => \inst4|retardo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|addressCounter\(17));

-- Location: LCCOMB_X70_Y24_N10
\inst4|addressCounter[18]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|addressCounter[18]~62_combout\ = (\inst4|addressCounter\(18) & (\inst4|addressCounter[17]~61\ $ (GND))) # (!\inst4|addressCounter\(18) & (!\inst4|addressCounter[17]~61\ & VCC))
-- \inst4|addressCounter[18]~63\ = CARRY((\inst4|addressCounter\(18) & !\inst4|addressCounter[17]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|addressCounter\(18),
	datad => VCC,
	cin => \inst4|addressCounter[17]~61\,
	combout => \inst4|addressCounter[18]~62_combout\,
	cout => \inst4|addressCounter[18]~63\);

-- Location: FF_X70_Y24_N11
\inst4|addressCounter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \inst4|addressCounter[18]~62_combout\,
	sclr => \inst4|LessThan0~8_combout\,
	ena => \inst4|retardo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|addressCounter\(18));

-- Location: LCCOMB_X70_Y24_N12
\inst4|addressCounter[19]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|addressCounter[19]~64_combout\ = (\inst4|addressCounter\(19) & (!\inst4|addressCounter[18]~63\)) # (!\inst4|addressCounter\(19) & ((\inst4|addressCounter[18]~63\) # (GND)))
-- \inst4|addressCounter[19]~65\ = CARRY((!\inst4|addressCounter[18]~63\) # (!\inst4|addressCounter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|addressCounter\(19),
	datad => VCC,
	cin => \inst4|addressCounter[18]~63\,
	combout => \inst4|addressCounter[19]~64_combout\,
	cout => \inst4|addressCounter[19]~65\);

-- Location: FF_X70_Y24_N13
\inst4|addressCounter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \inst4|addressCounter[19]~64_combout\,
	sclr => \inst4|LessThan0~8_combout\,
	ena => \inst4|retardo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|addressCounter\(19));

-- Location: LCCOMB_X70_Y24_N14
\inst4|addressCounter[20]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|addressCounter[20]~66_combout\ = (\inst4|addressCounter\(20) & (\inst4|addressCounter[19]~65\ $ (GND))) # (!\inst4|addressCounter\(20) & (!\inst4|addressCounter[19]~65\ & VCC))
-- \inst4|addressCounter[20]~67\ = CARRY((\inst4|addressCounter\(20) & !\inst4|addressCounter[19]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|addressCounter\(20),
	datad => VCC,
	cin => \inst4|addressCounter[19]~65\,
	combout => \inst4|addressCounter[20]~66_combout\,
	cout => \inst4|addressCounter[20]~67\);

-- Location: FF_X70_Y24_N15
\inst4|addressCounter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \inst4|addressCounter[20]~66_combout\,
	sclr => \inst4|LessThan0~8_combout\,
	ena => \inst4|retardo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|addressCounter\(20));

-- Location: LCCOMB_X70_Y24_N16
\inst4|addressCounter[21]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|addressCounter[21]~68_combout\ = (\inst4|addressCounter\(21) & (!\inst4|addressCounter[20]~67\)) # (!\inst4|addressCounter\(21) & ((\inst4|addressCounter[20]~67\) # (GND)))
-- \inst4|addressCounter[21]~69\ = CARRY((!\inst4|addressCounter[20]~67\) # (!\inst4|addressCounter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|addressCounter\(21),
	datad => VCC,
	cin => \inst4|addressCounter[20]~67\,
	combout => \inst4|addressCounter[21]~68_combout\,
	cout => \inst4|addressCounter[21]~69\);

-- Location: FF_X70_Y24_N17
\inst4|addressCounter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \inst4|addressCounter[21]~68_combout\,
	sclr => \inst4|LessThan0~8_combout\,
	ena => \inst4|retardo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|addressCounter\(21));

-- Location: LCCOMB_X70_Y24_N18
\inst4|addressCounter[22]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|addressCounter[22]~70_combout\ = (\inst4|addressCounter\(22) & (\inst4|addressCounter[21]~69\ $ (GND))) # (!\inst4|addressCounter\(22) & (!\inst4|addressCounter[21]~69\ & VCC))
-- \inst4|addressCounter[22]~71\ = CARRY((\inst4|addressCounter\(22) & !\inst4|addressCounter[21]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|addressCounter\(22),
	datad => VCC,
	cin => \inst4|addressCounter[21]~69\,
	combout => \inst4|addressCounter[22]~70_combout\,
	cout => \inst4|addressCounter[22]~71\);

-- Location: FF_X70_Y24_N19
\inst4|addressCounter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \inst4|addressCounter[22]~70_combout\,
	sclr => \inst4|LessThan0~8_combout\,
	ena => \inst4|retardo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|addressCounter\(22));

-- Location: LCCOMB_X70_Y24_N20
\inst4|addressCounter[23]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|addressCounter[23]~72_combout\ = (\inst4|addressCounter\(23) & (!\inst4|addressCounter[22]~71\)) # (!\inst4|addressCounter\(23) & ((\inst4|addressCounter[22]~71\) # (GND)))
-- \inst4|addressCounter[23]~73\ = CARRY((!\inst4|addressCounter[22]~71\) # (!\inst4|addressCounter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|addressCounter\(23),
	datad => VCC,
	cin => \inst4|addressCounter[22]~71\,
	combout => \inst4|addressCounter[23]~72_combout\,
	cout => \inst4|addressCounter[23]~73\);

-- Location: FF_X70_Y24_N21
\inst4|addressCounter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \inst4|addressCounter[23]~72_combout\,
	sclr => \inst4|LessThan0~8_combout\,
	ena => \inst4|retardo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|addressCounter\(23));

-- Location: LCCOMB_X70_Y24_N22
\inst4|addressCounter[24]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|addressCounter[24]~74_combout\ = (\inst4|addressCounter\(24) & (\inst4|addressCounter[23]~73\ $ (GND))) # (!\inst4|addressCounter\(24) & (!\inst4|addressCounter[23]~73\ & VCC))
-- \inst4|addressCounter[24]~75\ = CARRY((\inst4|addressCounter\(24) & !\inst4|addressCounter[23]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|addressCounter\(24),
	datad => VCC,
	cin => \inst4|addressCounter[23]~73\,
	combout => \inst4|addressCounter[24]~74_combout\,
	cout => \inst4|addressCounter[24]~75\);

-- Location: FF_X70_Y24_N23
\inst4|addressCounter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \inst4|addressCounter[24]~74_combout\,
	sclr => \inst4|LessThan0~8_combout\,
	ena => \inst4|retardo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|addressCounter\(24));

-- Location: LCCOMB_X71_Y24_N10
\inst4|LessThan0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|LessThan0~7_combout\ = (\inst4|addressCounter\(22)) # ((\inst4|addressCounter\(23)) # ((\inst4|addressCounter\(21)) # (\inst4|addressCounter\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|addressCounter\(22),
	datab => \inst4|addressCounter\(23),
	datac => \inst4|addressCounter\(21),
	datad => \inst4|addressCounter\(24),
	combout => \inst4|LessThan0~7_combout\);

-- Location: LCCOMB_X70_Y24_N24
\inst4|addressCounter[25]~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|addressCounter[25]~76_combout\ = \inst4|addressCounter[24]~75\ $ (\inst4|addressCounter\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst4|addressCounter\(25),
	cin => \inst4|addressCounter[24]~75\,
	combout => \inst4|addressCounter[25]~76_combout\);

-- Location: FF_X70_Y24_N25
\inst4|addressCounter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \inst4|addressCounter[25]~76_combout\,
	sclr => \inst4|LessThan0~8_combout\,
	ena => \inst4|retardo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|addressCounter\(25));

-- Location: LCCOMB_X70_Y25_N0
\inst4|LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|LessThan0~1_combout\ = (\inst4|addressCounter\(3) & ((\inst4|addressCounter\(2)) # ((\inst4|addressCounter\(0)) # (\inst4|addressCounter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|addressCounter\(2),
	datab => \inst4|addressCounter\(0),
	datac => \inst4|addressCounter\(1),
	datad => \inst4|addressCounter\(3),
	combout => \inst4|LessThan0~1_combout\);

-- Location: LCCOMB_X70_Y25_N2
\inst4|LessThan0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|LessThan0~2_combout\ = (\inst4|addressCounter\(6) & (\inst4|addressCounter\(5) & (\inst4|addressCounter\(4) & \inst4|addressCounter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|addressCounter\(6),
	datab => \inst4|addressCounter\(5),
	datac => \inst4|addressCounter\(4),
	datad => \inst4|addressCounter\(7),
	combout => \inst4|LessThan0~2_combout\);

-- Location: LCCOMB_X70_Y25_N4
\inst4|LessThan0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|LessThan0~3_combout\ = (\inst4|addressCounter\(8)) # ((\inst4|addressCounter\(9)) # ((\inst4|LessThan0~1_combout\ & \inst4|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LessThan0~1_combout\,
	datab => \inst4|LessThan0~2_combout\,
	datac => \inst4|addressCounter\(8),
	datad => \inst4|addressCounter\(9),
	combout => \inst4|LessThan0~3_combout\);

-- Location: LCCOMB_X70_Y23_N0
\inst4|LessThan0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|LessThan0~4_combout\ = (\inst4|addressCounter\(12)) # ((\inst4|addressCounter\(11)) # ((\inst4|addressCounter\(10) & \inst4|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|addressCounter\(10),
	datab => \inst4|addressCounter\(12),
	datac => \inst4|addressCounter\(11),
	datad => \inst4|LessThan0~3_combout\,
	combout => \inst4|LessThan0~4_combout\);

-- Location: LCCOMB_X70_Y24_N26
\inst4|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|LessThan0~0_combout\ = (\inst4|addressCounter\(15)) # (\inst4|addressCounter\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|addressCounter\(15),
	datad => \inst4|addressCounter\(14),
	combout => \inst4|LessThan0~0_combout\);

-- Location: LCCOMB_X70_Y24_N28
\inst4|LessThan0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|LessThan0~5_combout\ = (\inst4|addressCounter\(16) & ((\inst4|LessThan0~0_combout\) # ((\inst4|LessThan0~4_combout\ & \inst4|addressCounter\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|addressCounter\(16),
	datab => \inst4|LessThan0~4_combout\,
	datac => \inst4|LessThan0~0_combout\,
	datad => \inst4|addressCounter\(13),
	combout => \inst4|LessThan0~5_combout\);

-- Location: LCCOMB_X71_Y24_N16
\inst4|LessThan0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|LessThan0~6_combout\ = (\inst4|addressCounter\(17)) # ((\inst4|addressCounter\(20)) # ((\inst4|addressCounter\(19)) # (\inst4|addressCounter\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|addressCounter\(17),
	datab => \inst4|addressCounter\(20),
	datac => \inst4|addressCounter\(19),
	datad => \inst4|addressCounter\(18),
	combout => \inst4|LessThan0~6_combout\);

-- Location: LCCOMB_X71_Y24_N4
\inst4|LessThan0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|LessThan0~8_combout\ = (\inst4|LessThan0~7_combout\) # ((\inst4|addressCounter\(25)) # ((\inst4|LessThan0~5_combout\) # (\inst4|LessThan0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LessThan0~7_combout\,
	datab => \inst4|addressCounter\(25),
	datac => \inst4|LessThan0~5_combout\,
	datad => \inst4|LessThan0~6_combout\,
	combout => \inst4|LessThan0~8_combout\);

-- Location: LCCOMB_X71_Y25_N8
\inst4|BufferFull~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|BufferFull~0_combout\ = \inst4|BufferFull~q\ $ (\inst4|LessThan0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|BufferFull~q\,
	datad => \inst4|LessThan0~8_combout\,
	combout => \inst4|BufferFull~0_combout\);

-- Location: FF_X71_Y25_N9
\inst4|BufferFull\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \inst4|BufferFull~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|BufferFull~q\);

-- Location: LCCOMB_X72_Y24_N2
\inst4|retardo~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|retardo~1_combout\ = (\inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_valid~q\ & (!\inst4|BufferFull~q\ & \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_channel\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_valid~q\,
	datac => \inst4|BufferFull~q\,
	datad => \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_channel\(0),
	combout => \inst4|retardo~1_combout\);

-- Location: LCCOMB_X74_Y24_N28
\inst4|write_op~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|write_op~feeder_combout\ = \inst4|retardo~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|retardo~1_combout\,
	combout => \inst4|write_op~feeder_combout\);

-- Location: IOIBUF_X51_Y54_N22
\DELAY_EN~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DELAY_EN,
	o => \DELAY_EN~input_o\);

-- Location: LCCOMB_X72_Y24_N24
\inst4|sal_disp0[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|sal_disp0[3]~0_combout\ = (\inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_valid~q\ & (\inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_channel\(0) & \DELAY_EN~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_valid~q\,
	datac => \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_channel\(0),
	datad => \DELAY_EN~input_o\,
	combout => \inst4|sal_disp0[3]~0_combout\);

-- Location: FF_X74_Y24_N29
\inst4|write_op\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \inst4|write_op~feeder_combout\,
	ena => \inst4|sal_disp0[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|write_op~q\);

-- Location: LCCOMB_X74_Y22_N14
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|Equal0~0_combout\ = (!\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(0) & 
-- \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(0),
	datad => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(1),
	combout => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|Equal0~0_combout\);

-- Location: LCCOMB_X74_Y24_N22
\inst4|read_op~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|read_op~0_combout\ = !\inst4|retardo~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|retardo~1_combout\,
	combout => \inst4|read_op~0_combout\);

-- Location: FF_X74_Y24_N23
\inst4|read_op\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \inst4|read_op~0_combout\,
	ena => \inst4|sal_disp0[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|read_op~q\);

-- Location: LCCOMB_X74_Y15_N2
\inst2|DRAM|new_sdram_controller_0|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Add0~0_combout\ = \inst2|DRAM|new_sdram_controller_0|refresh_counter\(0) $ (VCC)
-- \inst2|DRAM|new_sdram_controller_0|Add0~1\ = CARRY(\inst2|DRAM|new_sdram_controller_0|refresh_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|DRAM|new_sdram_controller_0|refresh_counter\(0),
	datad => VCC,
	combout => \inst2|DRAM|new_sdram_controller_0|Add0~0_combout\,
	cout => \inst2|DRAM|new_sdram_controller_0|Add0~1\);

-- Location: LCCOMB_X74_Y19_N0
\inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain[1]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain[1]~feeder_combout\);

-- Location: FF_X74_Y19_N1
\inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain[1]~feeder_combout\,
	clrn => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|locked\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain\(1));

-- Location: FF_X74_Y19_N13
\inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain\(1),
	clrn => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|locked\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain\(0));

-- Location: LCCOMB_X74_Y19_N18
\inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~feeder_combout\ = \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain\(0),
	combout => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~feeder_combout\);

-- Location: FF_X74_Y19_N19
\inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~feeder_combout\,
	clrn => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|locked\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\);

-- Location: FF_X74_Y15_N3
\inst2|DRAM|new_sdram_controller_0|refresh_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|Add0~0_combout\,
	clrn => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|refresh_counter\(0));

-- Location: LCCOMB_X74_Y15_N4
\inst2|DRAM|new_sdram_controller_0|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Add0~2_combout\ = (\inst2|DRAM|new_sdram_controller_0|refresh_counter\(1) & (\inst2|DRAM|new_sdram_controller_0|Add0~1\ & VCC)) # (!\inst2|DRAM|new_sdram_controller_0|refresh_counter\(1) & 
-- (!\inst2|DRAM|new_sdram_controller_0|Add0~1\))
-- \inst2|DRAM|new_sdram_controller_0|Add0~3\ = CARRY((!\inst2|DRAM|new_sdram_controller_0|refresh_counter\(1) & !\inst2|DRAM|new_sdram_controller_0|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|refresh_counter\(1),
	datad => VCC,
	cin => \inst2|DRAM|new_sdram_controller_0|Add0~1\,
	combout => \inst2|DRAM|new_sdram_controller_0|Add0~2_combout\,
	cout => \inst2|DRAM|new_sdram_controller_0|Add0~3\);

-- Location: LCCOMB_X72_Y15_N6
\inst2|DRAM|new_sdram_controller_0|refresh_counter~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|refresh_counter~8_combout\ = (\inst2|DRAM|new_sdram_controller_0|Add0~2_combout\ & !\inst2|DRAM|new_sdram_controller_0|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|DRAM|new_sdram_controller_0|Add0~2_combout\,
	datac => \inst2|DRAM|new_sdram_controller_0|Equal0~4_combout\,
	combout => \inst2|DRAM|new_sdram_controller_0|refresh_counter~8_combout\);

-- Location: FF_X72_Y15_N7
\inst2|DRAM|new_sdram_controller_0|refresh_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|refresh_counter~8_combout\,
	clrn => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|refresh_counter\(1));

-- Location: LCCOMB_X74_Y15_N6
\inst2|DRAM|new_sdram_controller_0|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Add0~4_combout\ = (\inst2|DRAM|new_sdram_controller_0|refresh_counter\(2) & ((GND) # (!\inst2|DRAM|new_sdram_controller_0|Add0~3\))) # (!\inst2|DRAM|new_sdram_controller_0|refresh_counter\(2) & 
-- (\inst2|DRAM|new_sdram_controller_0|Add0~3\ $ (GND)))
-- \inst2|DRAM|new_sdram_controller_0|Add0~5\ = CARRY((\inst2|DRAM|new_sdram_controller_0|refresh_counter\(2)) # (!\inst2|DRAM|new_sdram_controller_0|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|refresh_counter\(2),
	datad => VCC,
	cin => \inst2|DRAM|new_sdram_controller_0|Add0~3\,
	combout => \inst2|DRAM|new_sdram_controller_0|Add0~4_combout\,
	cout => \inst2|DRAM|new_sdram_controller_0|Add0~5\);

-- Location: FF_X74_Y15_N7
\inst2|DRAM|new_sdram_controller_0|refresh_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|Add0~4_combout\,
	clrn => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|refresh_counter\(2));

-- Location: LCCOMB_X74_Y15_N8
\inst2|DRAM|new_sdram_controller_0|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Add0~6_combout\ = (\inst2|DRAM|new_sdram_controller_0|refresh_counter\(3) & (\inst2|DRAM|new_sdram_controller_0|Add0~5\ & VCC)) # (!\inst2|DRAM|new_sdram_controller_0|refresh_counter\(3) & 
-- (!\inst2|DRAM|new_sdram_controller_0|Add0~5\))
-- \inst2|DRAM|new_sdram_controller_0|Add0~7\ = CARRY((!\inst2|DRAM|new_sdram_controller_0|refresh_counter\(3) & !\inst2|DRAM|new_sdram_controller_0|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|DRAM|new_sdram_controller_0|refresh_counter\(3),
	datad => VCC,
	cin => \inst2|DRAM|new_sdram_controller_0|Add0~5\,
	combout => \inst2|DRAM|new_sdram_controller_0|Add0~6_combout\,
	cout => \inst2|DRAM|new_sdram_controller_0|Add0~7\);

-- Location: FF_X74_Y15_N9
\inst2|DRAM|new_sdram_controller_0|refresh_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|Add0~6_combout\,
	clrn => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|refresh_counter\(3));

-- Location: LCCOMB_X74_Y15_N10
\inst2|DRAM|new_sdram_controller_0|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Add0~8_combout\ = (\inst2|DRAM|new_sdram_controller_0|refresh_counter\(4) & (\inst2|DRAM|new_sdram_controller_0|Add0~7\ $ (GND))) # (!\inst2|DRAM|new_sdram_controller_0|refresh_counter\(4) & ((GND) # 
-- (!\inst2|DRAM|new_sdram_controller_0|Add0~7\)))
-- \inst2|DRAM|new_sdram_controller_0|Add0~9\ = CARRY((!\inst2|DRAM|new_sdram_controller_0|Add0~7\) # (!\inst2|DRAM|new_sdram_controller_0|refresh_counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|DRAM|new_sdram_controller_0|refresh_counter\(4),
	datad => VCC,
	cin => \inst2|DRAM|new_sdram_controller_0|Add0~7\,
	combout => \inst2|DRAM|new_sdram_controller_0|Add0~8_combout\,
	cout => \inst2|DRAM|new_sdram_controller_0|Add0~9\);

-- Location: LCCOMB_X72_Y15_N10
\inst2|DRAM|new_sdram_controller_0|refresh_counter~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|refresh_counter~6_combout\ = (\inst2|DRAM|new_sdram_controller_0|Equal0~4_combout\) # (!\inst2|DRAM|new_sdram_controller_0|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|Add0~8_combout\,
	datac => \inst2|DRAM|new_sdram_controller_0|Equal0~4_combout\,
	combout => \inst2|DRAM|new_sdram_controller_0|refresh_counter~6_combout\);

-- Location: FF_X72_Y15_N11
\inst2|DRAM|new_sdram_controller_0|refresh_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|refresh_counter~6_combout\,
	clrn => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|refresh_counter\(4));

-- Location: LCCOMB_X74_Y15_N12
\inst2|DRAM|new_sdram_controller_0|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Add0~10_combout\ = (\inst2|DRAM|new_sdram_controller_0|refresh_counter\(5) & (\inst2|DRAM|new_sdram_controller_0|Add0~9\ & VCC)) # (!\inst2|DRAM|new_sdram_controller_0|refresh_counter\(5) & 
-- (!\inst2|DRAM|new_sdram_controller_0|Add0~9\))
-- \inst2|DRAM|new_sdram_controller_0|Add0~11\ = CARRY((!\inst2|DRAM|new_sdram_controller_0|refresh_counter\(5) & !\inst2|DRAM|new_sdram_controller_0|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|refresh_counter\(5),
	datad => VCC,
	cin => \inst2|DRAM|new_sdram_controller_0|Add0~9\,
	combout => \inst2|DRAM|new_sdram_controller_0|Add0~10_combout\,
	cout => \inst2|DRAM|new_sdram_controller_0|Add0~11\);

-- Location: LCCOMB_X72_Y15_N28
\inst2|DRAM|new_sdram_controller_0|refresh_counter~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|refresh_counter~7_combout\ = (!\inst2|DRAM|new_sdram_controller_0|Equal0~4_combout\ & \inst2|DRAM|new_sdram_controller_0|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|DRAM|new_sdram_controller_0|Equal0~4_combout\,
	datad => \inst2|DRAM|new_sdram_controller_0|Add0~10_combout\,
	combout => \inst2|DRAM|new_sdram_controller_0|refresh_counter~7_combout\);

-- Location: FF_X72_Y15_N29
\inst2|DRAM|new_sdram_controller_0|refresh_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|refresh_counter~7_combout\,
	clrn => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|refresh_counter\(5));

-- Location: LCCOMB_X74_Y15_N30
\inst2|DRAM|new_sdram_controller_0|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Equal0~2_combout\ = (!\inst2|DRAM|new_sdram_controller_0|refresh_counter\(5) & (\inst2|DRAM|new_sdram_controller_0|refresh_counter\(4) & (!\inst2|DRAM|new_sdram_controller_0|refresh_counter\(3) & 
-- !\inst2|DRAM|new_sdram_controller_0|refresh_counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|refresh_counter\(5),
	datab => \inst2|DRAM|new_sdram_controller_0|refresh_counter\(4),
	datac => \inst2|DRAM|new_sdram_controller_0|refresh_counter\(3),
	datad => \inst2|DRAM|new_sdram_controller_0|refresh_counter\(2),
	combout => \inst2|DRAM|new_sdram_controller_0|Equal0~2_combout\);

-- Location: LCCOMB_X72_Y15_N16
\inst2|DRAM|new_sdram_controller_0|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Equal0~3_combout\ = (!\inst2|DRAM|new_sdram_controller_0|refresh_counter\(1) & !\inst2|DRAM|new_sdram_controller_0|refresh_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|refresh_counter\(1),
	datad => \inst2|DRAM|new_sdram_controller_0|refresh_counter\(0),
	combout => \inst2|DRAM|new_sdram_controller_0|Equal0~3_combout\);

-- Location: LCCOMB_X74_Y15_N14
\inst2|DRAM|new_sdram_controller_0|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Add0~12_combout\ = (\inst2|DRAM|new_sdram_controller_0|refresh_counter\(6) & ((GND) # (!\inst2|DRAM|new_sdram_controller_0|Add0~11\))) # (!\inst2|DRAM|new_sdram_controller_0|refresh_counter\(6) & 
-- (\inst2|DRAM|new_sdram_controller_0|Add0~11\ $ (GND)))
-- \inst2|DRAM|new_sdram_controller_0|Add0~13\ = CARRY((\inst2|DRAM|new_sdram_controller_0|refresh_counter\(6)) # (!\inst2|DRAM|new_sdram_controller_0|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|refresh_counter\(6),
	datad => VCC,
	cin => \inst2|DRAM|new_sdram_controller_0|Add0~11\,
	combout => \inst2|DRAM|new_sdram_controller_0|Add0~12_combout\,
	cout => \inst2|DRAM|new_sdram_controller_0|Add0~13\);

-- Location: LCCOMB_X72_Y15_N30
\inst2|DRAM|new_sdram_controller_0|refresh_counter~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|refresh_counter~5_combout\ = (!\inst2|DRAM|new_sdram_controller_0|Equal0~4_combout\ & \inst2|DRAM|new_sdram_controller_0|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|DRAM|new_sdram_controller_0|Equal0~4_combout\,
	datad => \inst2|DRAM|new_sdram_controller_0|Add0~12_combout\,
	combout => \inst2|DRAM|new_sdram_controller_0|refresh_counter~5_combout\);

-- Location: FF_X72_Y15_N31
\inst2|DRAM|new_sdram_controller_0|refresh_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|refresh_counter~5_combout\,
	clrn => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|refresh_counter\(6));

-- Location: LCCOMB_X74_Y15_N16
\inst2|DRAM|new_sdram_controller_0|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Add0~14_combout\ = (\inst2|DRAM|new_sdram_controller_0|refresh_counter\(7) & (\inst2|DRAM|new_sdram_controller_0|Add0~13\ & VCC)) # (!\inst2|DRAM|new_sdram_controller_0|refresh_counter\(7) & 
-- (!\inst2|DRAM|new_sdram_controller_0|Add0~13\))
-- \inst2|DRAM|new_sdram_controller_0|Add0~15\ = CARRY((!\inst2|DRAM|new_sdram_controller_0|refresh_counter\(7) & !\inst2|DRAM|new_sdram_controller_0|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|refresh_counter\(7),
	datad => VCC,
	cin => \inst2|DRAM|new_sdram_controller_0|Add0~13\,
	combout => \inst2|DRAM|new_sdram_controller_0|Add0~14_combout\,
	cout => \inst2|DRAM|new_sdram_controller_0|Add0~15\);

-- Location: LCCOMB_X72_Y15_N20
\inst2|DRAM|new_sdram_controller_0|refresh_counter~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|refresh_counter~4_combout\ = (!\inst2|DRAM|new_sdram_controller_0|Equal0~4_combout\ & \inst2|DRAM|new_sdram_controller_0|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|DRAM|new_sdram_controller_0|Equal0~4_combout\,
	datad => \inst2|DRAM|new_sdram_controller_0|Add0~14_combout\,
	combout => \inst2|DRAM|new_sdram_controller_0|refresh_counter~4_combout\);

-- Location: FF_X72_Y15_N21
\inst2|DRAM|new_sdram_controller_0|refresh_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|refresh_counter~4_combout\,
	clrn => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|refresh_counter\(7));

-- Location: LCCOMB_X74_Y15_N18
\inst2|DRAM|new_sdram_controller_0|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Add0~16_combout\ = (\inst2|DRAM|new_sdram_controller_0|refresh_counter\(8) & (\inst2|DRAM|new_sdram_controller_0|Add0~15\ $ (GND))) # (!\inst2|DRAM|new_sdram_controller_0|refresh_counter\(8) & ((GND) # 
-- (!\inst2|DRAM|new_sdram_controller_0|Add0~15\)))
-- \inst2|DRAM|new_sdram_controller_0|Add0~17\ = CARRY((!\inst2|DRAM|new_sdram_controller_0|Add0~15\) # (!\inst2|DRAM|new_sdram_controller_0|refresh_counter\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|DRAM|new_sdram_controller_0|refresh_counter\(8),
	datad => VCC,
	cin => \inst2|DRAM|new_sdram_controller_0|Add0~15\,
	combout => \inst2|DRAM|new_sdram_controller_0|Add0~16_combout\,
	cout => \inst2|DRAM|new_sdram_controller_0|Add0~17\);

-- Location: LCCOMB_X72_Y15_N2
\inst2|DRAM|new_sdram_controller_0|refresh_counter[8]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|refresh_counter[8]~12_combout\ = !\inst2|DRAM|new_sdram_controller_0|Add0~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|DRAM|new_sdram_controller_0|Add0~16_combout\,
	combout => \inst2|DRAM|new_sdram_controller_0|refresh_counter[8]~12_combout\);

-- Location: FF_X72_Y15_N3
\inst2|DRAM|new_sdram_controller_0|refresh_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|refresh_counter[8]~12_combout\,
	clrn => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|refresh_counter\(8));

-- Location: LCCOMB_X74_Y15_N20
\inst2|DRAM|new_sdram_controller_0|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Add0~18_combout\ = (\inst2|DRAM|new_sdram_controller_0|refresh_counter\(9) & (!\inst2|DRAM|new_sdram_controller_0|Add0~17\)) # (!\inst2|DRAM|new_sdram_controller_0|refresh_counter\(9) & 
-- (\inst2|DRAM|new_sdram_controller_0|Add0~17\ & VCC))
-- \inst2|DRAM|new_sdram_controller_0|Add0~19\ = CARRY((\inst2|DRAM|new_sdram_controller_0|refresh_counter\(9) & !\inst2|DRAM|new_sdram_controller_0|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|DRAM|new_sdram_controller_0|refresh_counter\(9),
	datad => VCC,
	cin => \inst2|DRAM|new_sdram_controller_0|Add0~17\,
	combout => \inst2|DRAM|new_sdram_controller_0|Add0~18_combout\,
	cout => \inst2|DRAM|new_sdram_controller_0|Add0~19\);

-- Location: LCCOMB_X74_Y15_N0
\inst2|DRAM|new_sdram_controller_0|refresh_counter[9]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|refresh_counter[9]~11_combout\ = !\inst2|DRAM|new_sdram_controller_0|Add0~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|DRAM|new_sdram_controller_0|Add0~18_combout\,
	combout => \inst2|DRAM|new_sdram_controller_0|refresh_counter[9]~11_combout\);

-- Location: FF_X74_Y15_N1
\inst2|DRAM|new_sdram_controller_0|refresh_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|refresh_counter[9]~11_combout\,
	clrn => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|refresh_counter\(9));

-- Location: LCCOMB_X72_Y15_N8
\inst2|DRAM|new_sdram_controller_0|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Equal0~1_combout\ = (!\inst2|DRAM|new_sdram_controller_0|refresh_counter\(6) & (\inst2|DRAM|new_sdram_controller_0|refresh_counter\(8) & (\inst2|DRAM|new_sdram_controller_0|refresh_counter\(9) & 
-- !\inst2|DRAM|new_sdram_controller_0|refresh_counter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|refresh_counter\(6),
	datab => \inst2|DRAM|new_sdram_controller_0|refresh_counter\(8),
	datac => \inst2|DRAM|new_sdram_controller_0|refresh_counter\(9),
	datad => \inst2|DRAM|new_sdram_controller_0|refresh_counter\(7),
	combout => \inst2|DRAM|new_sdram_controller_0|Equal0~1_combout\);

-- Location: LCCOMB_X74_Y15_N22
\inst2|DRAM|new_sdram_controller_0|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Add0~20_combout\ = (\inst2|DRAM|new_sdram_controller_0|refresh_counter\(10) & (\inst2|DRAM|new_sdram_controller_0|Add0~19\ $ (GND))) # (!\inst2|DRAM|new_sdram_controller_0|refresh_counter\(10) & ((GND) # 
-- (!\inst2|DRAM|new_sdram_controller_0|Add0~19\)))
-- \inst2|DRAM|new_sdram_controller_0|Add0~21\ = CARRY((!\inst2|DRAM|new_sdram_controller_0|Add0~19\) # (!\inst2|DRAM|new_sdram_controller_0|refresh_counter\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|refresh_counter\(10),
	datad => VCC,
	cin => \inst2|DRAM|new_sdram_controller_0|Add0~19\,
	combout => \inst2|DRAM|new_sdram_controller_0|Add0~20_combout\,
	cout => \inst2|DRAM|new_sdram_controller_0|Add0~21\);

-- Location: LCCOMB_X72_Y15_N18
\inst2|DRAM|new_sdram_controller_0|refresh_counter~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|refresh_counter~1_combout\ = (\inst2|DRAM|new_sdram_controller_0|Equal0~4_combout\) # (!\inst2|DRAM|new_sdram_controller_0|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|DRAM|new_sdram_controller_0|Equal0~4_combout\,
	datad => \inst2|DRAM|new_sdram_controller_0|Add0~20_combout\,
	combout => \inst2|DRAM|new_sdram_controller_0|refresh_counter~1_combout\);

-- Location: FF_X72_Y15_N19
\inst2|DRAM|new_sdram_controller_0|refresh_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|refresh_counter~1_combout\,
	clrn => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|refresh_counter\(10));

-- Location: LCCOMB_X74_Y15_N24
\inst2|DRAM|new_sdram_controller_0|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Add0~22_combout\ = (\inst2|DRAM|new_sdram_controller_0|refresh_counter\(11) & (\inst2|DRAM|new_sdram_controller_0|Add0~21\ & VCC)) # (!\inst2|DRAM|new_sdram_controller_0|refresh_counter\(11) & 
-- (!\inst2|DRAM|new_sdram_controller_0|Add0~21\))
-- \inst2|DRAM|new_sdram_controller_0|Add0~23\ = CARRY((!\inst2|DRAM|new_sdram_controller_0|refresh_counter\(11) & !\inst2|DRAM|new_sdram_controller_0|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|DRAM|new_sdram_controller_0|refresh_counter\(11),
	datad => VCC,
	cin => \inst2|DRAM|new_sdram_controller_0|Add0~21\,
	combout => \inst2|DRAM|new_sdram_controller_0|Add0~22_combout\,
	cout => \inst2|DRAM|new_sdram_controller_0|Add0~23\);

-- Location: LCCOMB_X72_Y15_N22
\inst2|DRAM|new_sdram_controller_0|refresh_counter~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|refresh_counter~3_combout\ = (!\inst2|DRAM|new_sdram_controller_0|Equal0~4_combout\ & \inst2|DRAM|new_sdram_controller_0|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|DRAM|new_sdram_controller_0|Equal0~4_combout\,
	datad => \inst2|DRAM|new_sdram_controller_0|Add0~22_combout\,
	combout => \inst2|DRAM|new_sdram_controller_0|refresh_counter~3_combout\);

-- Location: FF_X72_Y15_N23
\inst2|DRAM|new_sdram_controller_0|refresh_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|refresh_counter~3_combout\,
	clrn => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|refresh_counter\(11));

-- Location: LCCOMB_X74_Y15_N26
\inst2|DRAM|new_sdram_controller_0|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Add0~24_combout\ = (\inst2|DRAM|new_sdram_controller_0|refresh_counter\(12) & ((GND) # (!\inst2|DRAM|new_sdram_controller_0|Add0~23\))) # (!\inst2|DRAM|new_sdram_controller_0|refresh_counter\(12) & 
-- (\inst2|DRAM|new_sdram_controller_0|Add0~23\ $ (GND)))
-- \inst2|DRAM|new_sdram_controller_0|Add0~25\ = CARRY((\inst2|DRAM|new_sdram_controller_0|refresh_counter\(12)) # (!\inst2|DRAM|new_sdram_controller_0|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|DRAM|new_sdram_controller_0|refresh_counter\(12),
	datad => VCC,
	cin => \inst2|DRAM|new_sdram_controller_0|Add0~23\,
	combout => \inst2|DRAM|new_sdram_controller_0|Add0~24_combout\,
	cout => \inst2|DRAM|new_sdram_controller_0|Add0~25\);

-- Location: LCCOMB_X72_Y15_N12
\inst2|DRAM|new_sdram_controller_0|refresh_counter~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|refresh_counter~2_combout\ = (!\inst2|DRAM|new_sdram_controller_0|Equal0~4_combout\ & \inst2|DRAM|new_sdram_controller_0|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|DRAM|new_sdram_controller_0|Equal0~4_combout\,
	datad => \inst2|DRAM|new_sdram_controller_0|Add0~24_combout\,
	combout => \inst2|DRAM|new_sdram_controller_0|refresh_counter~2_combout\);

-- Location: FF_X72_Y15_N13
\inst2|DRAM|new_sdram_controller_0|refresh_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|refresh_counter~2_combout\,
	clrn => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|refresh_counter\(12));

-- Location: LCCOMB_X74_Y15_N28
\inst2|DRAM|new_sdram_controller_0|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Add0~26_combout\ = \inst2|DRAM|new_sdram_controller_0|Add0~25\ $ (\inst2|DRAM|new_sdram_controller_0|refresh_counter\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst2|DRAM|new_sdram_controller_0|refresh_counter\(13),
	cin => \inst2|DRAM|new_sdram_controller_0|Add0~25\,
	combout => \inst2|DRAM|new_sdram_controller_0|Add0~26_combout\);

-- Location: LCCOMB_X72_Y15_N0
\inst2|DRAM|new_sdram_controller_0|refresh_counter~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|refresh_counter~0_combout\ = (\inst2|DRAM|new_sdram_controller_0|Equal0~4_combout\) # (!\inst2|DRAM|new_sdram_controller_0|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|Add0~26_combout\,
	datac => \inst2|DRAM|new_sdram_controller_0|Equal0~4_combout\,
	combout => \inst2|DRAM|new_sdram_controller_0|refresh_counter~0_combout\);

-- Location: FF_X72_Y15_N1
\inst2|DRAM|new_sdram_controller_0|refresh_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|refresh_counter~0_combout\,
	clrn => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|refresh_counter\(13));

-- Location: LCCOMB_X72_Y15_N24
\inst2|DRAM|new_sdram_controller_0|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Equal0~0_combout\ = (!\inst2|DRAM|new_sdram_controller_0|refresh_counter\(12) & (\inst2|DRAM|new_sdram_controller_0|refresh_counter\(13) & (!\inst2|DRAM|new_sdram_controller_0|refresh_counter\(11) & 
-- \inst2|DRAM|new_sdram_controller_0|refresh_counter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|refresh_counter\(12),
	datab => \inst2|DRAM|new_sdram_controller_0|refresh_counter\(13),
	datac => \inst2|DRAM|new_sdram_controller_0|refresh_counter\(11),
	datad => \inst2|DRAM|new_sdram_controller_0|refresh_counter\(10),
	combout => \inst2|DRAM|new_sdram_controller_0|Equal0~0_combout\);

-- Location: LCCOMB_X72_Y15_N26
\inst2|DRAM|new_sdram_controller_0|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Equal0~4_combout\ = (\inst2|DRAM|new_sdram_controller_0|Equal0~2_combout\ & (\inst2|DRAM|new_sdram_controller_0|Equal0~3_combout\ & (\inst2|DRAM|new_sdram_controller_0|Equal0~1_combout\ & 
-- \inst2|DRAM|new_sdram_controller_0|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|Equal0~2_combout\,
	datab => \inst2|DRAM|new_sdram_controller_0|Equal0~3_combout\,
	datac => \inst2|DRAM|new_sdram_controller_0|Equal0~1_combout\,
	datad => \inst2|DRAM|new_sdram_controller_0|Equal0~0_combout\,
	combout => \inst2|DRAM|new_sdram_controller_0|Equal0~4_combout\);

-- Location: LCCOMB_X70_Y19_N10
\inst2|DRAM|new_sdram_controller_0|Selector18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector18~0_combout\ = (\inst2|DRAM|new_sdram_controller_0|i_next.111~q\ & ((\inst2|DRAM|new_sdram_controller_0|i_state.011~q\) # ((\inst2|DRAM|new_sdram_controller_0|i_state.101~q\) # 
-- (!\inst2|DRAM|new_sdram_controller_0|i_state.000~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|i_state.011~q\,
	datab => \inst2|DRAM|new_sdram_controller_0|i_next.111~q\,
	datac => \inst2|DRAM|new_sdram_controller_0|i_state.000~q\,
	datad => \inst2|DRAM|new_sdram_controller_0|i_state.101~q\,
	combout => \inst2|DRAM|new_sdram_controller_0|Selector18~0_combout\);

-- Location: LCCOMB_X70_Y19_N24
\inst2|DRAM|new_sdram_controller_0|Selector8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector8~0_combout\ = (\inst2|DRAM|new_sdram_controller_0|Equal0~4_combout\ & !\inst2|DRAM|new_sdram_controller_0|i_state.000~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|DRAM|new_sdram_controller_0|Equal0~4_combout\,
	datad => \inst2|DRAM|new_sdram_controller_0|i_state.000~q\,
	combout => \inst2|DRAM|new_sdram_controller_0|Selector8~0_combout\);

-- Location: FF_X70_Y19_N25
\inst2|DRAM|new_sdram_controller_0|i_state.001\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|Selector8~0_combout\,
	clrn => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|i_state.001~q\);

-- Location: LCCOMB_X71_Y19_N8
\inst2|DRAM|new_sdram_controller_0|Selector16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector16~0_combout\ = (\inst2|DRAM|new_sdram_controller_0|i_state.001~q\) # ((\inst2|DRAM|new_sdram_controller_0|i_state.010~q\ & ((!\inst2|DRAM|new_sdram_controller_0|i_refs\(2)) # 
-- (!\inst2|DRAM|new_sdram_controller_0|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|Add1~0_combout\,
	datab => \inst2|DRAM|new_sdram_controller_0|i_state.001~q\,
	datac => \inst2|DRAM|new_sdram_controller_0|i_refs\(2),
	datad => \inst2|DRAM|new_sdram_controller_0|i_state.010~q\,
	combout => \inst2|DRAM|new_sdram_controller_0|Selector16~0_combout\);

-- Location: LCCOMB_X70_Y19_N4
\inst2|DRAM|new_sdram_controller_0|WideOr6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|WideOr6~0_combout\ = (\inst2|DRAM|new_sdram_controller_0|i_state.000~q\ & !\inst2|DRAM|new_sdram_controller_0|i_state.011~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|DRAM|new_sdram_controller_0|i_state.000~q\,
	datad => \inst2|DRAM|new_sdram_controller_0|i_state.011~q\,
	combout => \inst2|DRAM|new_sdram_controller_0|WideOr6~0_combout\);

-- Location: LCCOMB_X72_Y19_N12
\inst2|DRAM|new_sdram_controller_0|Selector16~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector16~1_combout\ = (\inst2|DRAM|new_sdram_controller_0|Selector16~0_combout\) # ((\inst2|DRAM|new_sdram_controller_0|i_next.010~q\ & ((\inst2|DRAM|new_sdram_controller_0|i_state.101~q\) # 
-- (!\inst2|DRAM|new_sdram_controller_0|WideOr6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|Selector16~0_combout\,
	datab => \inst2|DRAM|new_sdram_controller_0|WideOr6~0_combout\,
	datac => \inst2|DRAM|new_sdram_controller_0|i_next.010~q\,
	datad => \inst2|DRAM|new_sdram_controller_0|i_state.101~q\,
	combout => \inst2|DRAM|new_sdram_controller_0|Selector16~1_combout\);

-- Location: FF_X72_Y19_N13
\inst2|DRAM|new_sdram_controller_0|i_next.010\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|Selector16~1_combout\,
	clrn => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|i_next.010~q\);

-- Location: LCCOMB_X72_Y19_N8
\inst2|DRAM|new_sdram_controller_0|Selector13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector13~0_combout\ = (\inst2|DRAM|new_sdram_controller_0|i_state.000~q\ & !\inst2|DRAM|new_sdram_controller_0|i_state.101~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|DRAM|new_sdram_controller_0|i_state.000~q\,
	datad => \inst2|DRAM|new_sdram_controller_0|i_state.101~q\,
	combout => \inst2|DRAM|new_sdram_controller_0|Selector13~0_combout\);

-- Location: LCCOMB_X72_Y19_N14
\inst2|DRAM|new_sdram_controller_0|Selector14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector14~0_combout\ = (\inst2|DRAM|new_sdram_controller_0|i_count\(1) & (((\inst2|DRAM|new_sdram_controller_0|i_count\(0) & \inst2|DRAM|new_sdram_controller_0|Selector10~0_combout\)) # 
-- (!\inst2|DRAM|new_sdram_controller_0|Selector13~0_combout\))) # (!\inst2|DRAM|new_sdram_controller_0|i_count\(1) & (!\inst2|DRAM|new_sdram_controller_0|i_count\(0) & ((\inst2|DRAM|new_sdram_controller_0|Selector10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|i_count\(0),
	datab => \inst2|DRAM|new_sdram_controller_0|Selector13~0_combout\,
	datac => \inst2|DRAM|new_sdram_controller_0|i_count\(1),
	datad => \inst2|DRAM|new_sdram_controller_0|Selector10~0_combout\,
	combout => \inst2|DRAM|new_sdram_controller_0|Selector14~0_combout\);

-- Location: FF_X72_Y19_N15
\inst2|DRAM|new_sdram_controller_0|i_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|Selector14~0_combout\,
	clrn => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|i_count\(1));

-- Location: LCCOMB_X72_Y19_N6
\inst2|DRAM|new_sdram_controller_0|Selector9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector9~0_combout\ = (\inst2|DRAM|new_sdram_controller_0|i_next.010~q\ & (!\inst2|DRAM|new_sdram_controller_0|i_count\(2) & (!\inst2|DRAM|new_sdram_controller_0|i_count\(1) & 
-- \inst2|DRAM|new_sdram_controller_0|i_state.011~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|i_next.010~q\,
	datab => \inst2|DRAM|new_sdram_controller_0|i_count\(2),
	datac => \inst2|DRAM|new_sdram_controller_0|i_count\(1),
	datad => \inst2|DRAM|new_sdram_controller_0|i_state.011~q\,
	combout => \inst2|DRAM|new_sdram_controller_0|Selector9~0_combout\);

-- Location: FF_X72_Y19_N7
\inst2|DRAM|new_sdram_controller_0|i_state.010\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|Selector9~0_combout\,
	clrn => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|i_state.010~q\);

-- Location: LCCOMB_X70_Y19_N22
\inst2|DRAM|new_sdram_controller_0|Selector6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector6~0_combout\ = (\inst2|DRAM|new_sdram_controller_0|i_state.010~q\ & (!\inst2|DRAM|new_sdram_controller_0|i_refs\(0))) # (!\inst2|DRAM|new_sdram_controller_0|i_state.010~q\ & 
-- (\inst2|DRAM|new_sdram_controller_0|i_refs\(0) & \inst2|DRAM|new_sdram_controller_0|i_state.000~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|DRAM|new_sdram_controller_0|i_state.010~q\,
	datac => \inst2|DRAM|new_sdram_controller_0|i_refs\(0),
	datad => \inst2|DRAM|new_sdram_controller_0|i_state.000~q\,
	combout => \inst2|DRAM|new_sdram_controller_0|Selector6~0_combout\);

-- Location: FF_X70_Y19_N23
\inst2|DRAM|new_sdram_controller_0|i_refs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|Selector6~0_combout\,
	ena => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|i_refs\(0));

-- Location: LCCOMB_X70_Y19_N28
\inst2|DRAM|new_sdram_controller_0|Selector5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector5~0_combout\ = (\inst2|DRAM|new_sdram_controller_0|i_state.010~q\ & (\inst2|DRAM|new_sdram_controller_0|i_refs\(0) $ ((\inst2|DRAM|new_sdram_controller_0|i_refs\(1))))) # 
-- (!\inst2|DRAM|new_sdram_controller_0|i_state.010~q\ & (((\inst2|DRAM|new_sdram_controller_0|i_refs\(1) & \inst2|DRAM|new_sdram_controller_0|i_state.000~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|i_refs\(0),
	datab => \inst2|DRAM|new_sdram_controller_0|i_state.010~q\,
	datac => \inst2|DRAM|new_sdram_controller_0|i_refs\(1),
	datad => \inst2|DRAM|new_sdram_controller_0|i_state.000~q\,
	combout => \inst2|DRAM|new_sdram_controller_0|Selector5~0_combout\);

-- Location: FF_X70_Y19_N29
\inst2|DRAM|new_sdram_controller_0|i_refs[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|Selector5~0_combout\,
	ena => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|i_refs\(1));

-- Location: LCCOMB_X70_Y19_N8
\inst2|DRAM|new_sdram_controller_0|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Add1~0_combout\ = (\inst2|DRAM|new_sdram_controller_0|i_refs\(1) & \inst2|DRAM|new_sdram_controller_0|i_refs\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|DRAM|new_sdram_controller_0|i_refs\(1),
	datac => \inst2|DRAM|new_sdram_controller_0|i_refs\(0),
	combout => \inst2|DRAM|new_sdram_controller_0|Add1~0_combout\);

-- Location: LCCOMB_X70_Y19_N2
\inst2|DRAM|new_sdram_controller_0|Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector4~0_combout\ = (\inst2|DRAM|new_sdram_controller_0|i_state.010~q\ & (\inst2|DRAM|new_sdram_controller_0|Add1~0_combout\ $ ((\inst2|DRAM|new_sdram_controller_0|i_refs\(2))))) # 
-- (!\inst2|DRAM|new_sdram_controller_0|i_state.010~q\ & (((\inst2|DRAM|new_sdram_controller_0|i_refs\(2) & \inst2|DRAM|new_sdram_controller_0|i_state.000~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|Add1~0_combout\,
	datab => \inst2|DRAM|new_sdram_controller_0|i_state.010~q\,
	datac => \inst2|DRAM|new_sdram_controller_0|i_refs\(2),
	datad => \inst2|DRAM|new_sdram_controller_0|i_state.000~q\,
	combout => \inst2|DRAM|new_sdram_controller_0|Selector4~0_combout\);

-- Location: FF_X70_Y19_N3
\inst2|DRAM|new_sdram_controller_0|i_refs[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|Selector4~0_combout\,
	ena => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|i_refs\(2));

-- Location: LCCOMB_X70_Y19_N16
\inst2|DRAM|new_sdram_controller_0|Selector18~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector18~1_combout\ = (\inst2|DRAM|new_sdram_controller_0|Selector18~0_combout\) # ((\inst2|DRAM|new_sdram_controller_0|i_refs\(2) & (\inst2|DRAM|new_sdram_controller_0|i_state.010~q\ & 
-- \inst2|DRAM|new_sdram_controller_0|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|Selector18~0_combout\,
	datab => \inst2|DRAM|new_sdram_controller_0|i_refs\(2),
	datac => \inst2|DRAM|new_sdram_controller_0|i_state.010~q\,
	datad => \inst2|DRAM|new_sdram_controller_0|Add1~0_combout\,
	combout => \inst2|DRAM|new_sdram_controller_0|Selector18~1_combout\);

-- Location: FF_X70_Y19_N17
\inst2|DRAM|new_sdram_controller_0|i_next.111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|Selector18~1_combout\,
	clrn => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|i_next.111~q\);

-- Location: LCCOMB_X72_Y19_N24
\inst2|DRAM|new_sdram_controller_0|Selector12~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector12~1_combout\ = (\inst2|DRAM|new_sdram_controller_0|i_next.111~q\ & (!\inst2|DRAM|new_sdram_controller_0|i_count\(2) & (!\inst2|DRAM|new_sdram_controller_0|i_count\(1) & 
-- \inst2|DRAM|new_sdram_controller_0|i_state.011~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|i_next.111~q\,
	datab => \inst2|DRAM|new_sdram_controller_0|i_count\(2),
	datac => \inst2|DRAM|new_sdram_controller_0|i_count\(1),
	datad => \inst2|DRAM|new_sdram_controller_0|i_state.011~q\,
	combout => \inst2|DRAM|new_sdram_controller_0|Selector12~1_combout\);

-- Location: FF_X72_Y19_N25
\inst2|DRAM|new_sdram_controller_0|i_state.111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|Selector12~1_combout\,
	clrn => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|i_state.111~q\);

-- Location: LCCOMB_X72_Y19_N2
\inst2|DRAM|new_sdram_controller_0|Selector17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector17~0_combout\ = (\inst2|DRAM|new_sdram_controller_0|i_state.111~q\) # ((\inst2|DRAM|new_sdram_controller_0|i_next.101~q\ & ((\inst2|DRAM|new_sdram_controller_0|i_state.101~q\) # 
-- (!\inst2|DRAM|new_sdram_controller_0|WideOr6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|i_state.111~q\,
	datab => \inst2|DRAM|new_sdram_controller_0|WideOr6~0_combout\,
	datac => \inst2|DRAM|new_sdram_controller_0|i_next.101~q\,
	datad => \inst2|DRAM|new_sdram_controller_0|i_state.101~q\,
	combout => \inst2|DRAM|new_sdram_controller_0|Selector17~0_combout\);

-- Location: FF_X72_Y19_N3
\inst2|DRAM|new_sdram_controller_0|i_next.101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|Selector17~0_combout\,
	clrn => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|i_next.101~q\);

-- Location: LCCOMB_X72_Y19_N0
\inst2|DRAM|new_sdram_controller_0|Selector12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector12~0_combout\ = (!\inst2|DRAM|new_sdram_controller_0|i_count\(2) & (!\inst2|DRAM|new_sdram_controller_0|i_count\(1) & \inst2|DRAM|new_sdram_controller_0|i_state.011~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|DRAM|new_sdram_controller_0|i_count\(2),
	datac => \inst2|DRAM|new_sdram_controller_0|i_count\(1),
	datad => \inst2|DRAM|new_sdram_controller_0|i_state.011~q\,
	combout => \inst2|DRAM|new_sdram_controller_0|Selector12~0_combout\);

-- Location: LCCOMB_X72_Y19_N18
\inst2|DRAM|new_sdram_controller_0|i_state.101~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|i_state.101~0_combout\ = (\inst2|DRAM|new_sdram_controller_0|i_state.101~q\) # ((\inst2|DRAM|new_sdram_controller_0|i_next.101~q\ & \inst2|DRAM|new_sdram_controller_0|Selector12~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|DRAM|new_sdram_controller_0|i_next.101~q\,
	datac => \inst2|DRAM|new_sdram_controller_0|i_state.101~q\,
	datad => \inst2|DRAM|new_sdram_controller_0|Selector12~0_combout\,
	combout => \inst2|DRAM|new_sdram_controller_0|i_state.101~0_combout\);

-- Location: FF_X72_Y19_N19
\inst2|DRAM|new_sdram_controller_0|i_state.101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|i_state.101~0_combout\,
	clrn => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|i_state.101~q\);

-- Location: LCCOMB_X70_Y19_N30
\inst2|DRAM|new_sdram_controller_0|i_next.000~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|i_next.000~0_combout\ = (\inst2|DRAM|new_sdram_controller_0|i_next.000~q\) # ((!\inst2|DRAM|new_sdram_controller_0|i_state.011~q\ & (\inst2|DRAM|new_sdram_controller_0|i_state.000~q\ & 
-- !\inst2|DRAM|new_sdram_controller_0|i_state.101~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|i_state.011~q\,
	datab => \inst2|DRAM|new_sdram_controller_0|i_state.000~q\,
	datac => \inst2|DRAM|new_sdram_controller_0|i_next.000~q\,
	datad => \inst2|DRAM|new_sdram_controller_0|i_state.101~q\,
	combout => \inst2|DRAM|new_sdram_controller_0|i_next.000~0_combout\);

-- Location: FF_X70_Y19_N31
\inst2|DRAM|new_sdram_controller_0|i_next.000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|i_next.000~0_combout\,
	clrn => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|i_next.000~q\);

-- Location: LCCOMB_X70_Y19_N18
\inst2|DRAM|new_sdram_controller_0|Selector7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector7~0_combout\ = (\inst2|DRAM|new_sdram_controller_0|Equal0~4_combout\ & ((\inst2|DRAM|new_sdram_controller_0|i_next.000~q\) # ((!\inst2|DRAM|new_sdram_controller_0|Selector12~0_combout\)))) # 
-- (!\inst2|DRAM|new_sdram_controller_0|Equal0~4_combout\ & (\inst2|DRAM|new_sdram_controller_0|i_state.000~q\ & ((\inst2|DRAM|new_sdram_controller_0|i_next.000~q\) # (!\inst2|DRAM|new_sdram_controller_0|Selector12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|Equal0~4_combout\,
	datab => \inst2|DRAM|new_sdram_controller_0|i_next.000~q\,
	datac => \inst2|DRAM|new_sdram_controller_0|i_state.000~q\,
	datad => \inst2|DRAM|new_sdram_controller_0|Selector12~0_combout\,
	combout => \inst2|DRAM|new_sdram_controller_0|Selector7~0_combout\);

-- Location: FF_X70_Y19_N19
\inst2|DRAM|new_sdram_controller_0|i_state.000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|Selector7~0_combout\,
	clrn => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|i_state.000~q\);

-- Location: LCCOMB_X72_Y19_N30
\inst2|DRAM|new_sdram_controller_0|Selector15~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector15~1_combout\ = (\inst2|DRAM|new_sdram_controller_0|i_count\(0) & ((\inst2|DRAM|new_sdram_controller_0|i_state.101~q\) # (!\inst2|DRAM|new_sdram_controller_0|i_state.000~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|i_count\(0),
	datac => \inst2|DRAM|new_sdram_controller_0|i_state.000~q\,
	datad => \inst2|DRAM|new_sdram_controller_0|i_state.101~q\,
	combout => \inst2|DRAM|new_sdram_controller_0|Selector15~1_combout\);

-- Location: LCCOMB_X72_Y19_N4
\inst2|DRAM|new_sdram_controller_0|Selector15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector15~0_combout\ = (\inst2|DRAM|new_sdram_controller_0|i_state.011~q\ & (\inst2|DRAM|new_sdram_controller_0|i_count\(0) $ (((\inst2|DRAM|new_sdram_controller_0|i_count\(2)) # 
-- (\inst2|DRAM|new_sdram_controller_0|i_count\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|i_count\(0),
	datab => \inst2|DRAM|new_sdram_controller_0|i_count\(2),
	datac => \inst2|DRAM|new_sdram_controller_0|i_count\(1),
	datad => \inst2|DRAM|new_sdram_controller_0|i_state.011~q\,
	combout => \inst2|DRAM|new_sdram_controller_0|Selector15~0_combout\);

-- Location: LCCOMB_X72_Y19_N22
\inst2|DRAM|new_sdram_controller_0|Selector15~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector15~2_combout\ = (\inst2|DRAM|new_sdram_controller_0|Selector15~1_combout\) # ((\inst2|DRAM|new_sdram_controller_0|i_state.001~q\) # ((\inst2|DRAM|new_sdram_controller_0|Selector15~0_combout\) # 
-- (\inst2|DRAM|new_sdram_controller_0|i_state.010~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|Selector15~1_combout\,
	datab => \inst2|DRAM|new_sdram_controller_0|i_state.001~q\,
	datac => \inst2|DRAM|new_sdram_controller_0|Selector15~0_combout\,
	datad => \inst2|DRAM|new_sdram_controller_0|i_state.010~q\,
	combout => \inst2|DRAM|new_sdram_controller_0|Selector15~2_combout\);

-- Location: FF_X72_Y19_N23
\inst2|DRAM|new_sdram_controller_0|i_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|Selector15~2_combout\,
	clrn => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|i_count\(0));

-- Location: LCCOMB_X72_Y19_N26
\inst2|DRAM|new_sdram_controller_0|Selector13~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector13~1_combout\ = ((\inst2|DRAM|new_sdram_controller_0|i_state.011~q\ & ((\inst2|DRAM|new_sdram_controller_0|i_count\(0)) # (\inst2|DRAM|new_sdram_controller_0|i_count\(1))))) # 
-- (!\inst2|DRAM|new_sdram_controller_0|Selector13~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|i_count\(0),
	datab => \inst2|DRAM|new_sdram_controller_0|i_count\(1),
	datac => \inst2|DRAM|new_sdram_controller_0|Selector13~0_combout\,
	datad => \inst2|DRAM|new_sdram_controller_0|i_state.011~q\,
	combout => \inst2|DRAM|new_sdram_controller_0|Selector13~1_combout\);

-- Location: LCCOMB_X72_Y19_N28
\inst2|DRAM|new_sdram_controller_0|Selector13~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector13~2_combout\ = (\inst2|DRAM|new_sdram_controller_0|i_state.111~q\) # ((\inst2|DRAM|new_sdram_controller_0|i_state.010~q\) # ((\inst2|DRAM|new_sdram_controller_0|Selector13~1_combout\ & 
-- \inst2|DRAM|new_sdram_controller_0|i_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|Selector13~1_combout\,
	datab => \inst2|DRAM|new_sdram_controller_0|i_state.111~q\,
	datac => \inst2|DRAM|new_sdram_controller_0|i_count\(2),
	datad => \inst2|DRAM|new_sdram_controller_0|i_state.010~q\,
	combout => \inst2|DRAM|new_sdram_controller_0|Selector13~2_combout\);

-- Location: FF_X72_Y19_N29
\inst2|DRAM|new_sdram_controller_0|i_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|Selector13~2_combout\,
	clrn => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|i_count\(2));

-- Location: LCCOMB_X72_Y19_N10
\inst2|DRAM|new_sdram_controller_0|Selector10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector10~0_combout\ = (\inst2|DRAM|new_sdram_controller_0|i_state.011~q\ & ((\inst2|DRAM|new_sdram_controller_0|i_count\(2)) # (\inst2|DRAM|new_sdram_controller_0|i_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|DRAM|new_sdram_controller_0|i_count\(2),
	datac => \inst2|DRAM|new_sdram_controller_0|i_count\(1),
	datad => \inst2|DRAM|new_sdram_controller_0|i_state.011~q\,
	combout => \inst2|DRAM|new_sdram_controller_0|Selector10~0_combout\);

-- Location: LCCOMB_X72_Y19_N20
\inst2|DRAM|new_sdram_controller_0|Selector10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector10~1_combout\ = (\inst2|DRAM|new_sdram_controller_0|Selector10~0_combout\) # ((\inst2|DRAM|new_sdram_controller_0|i_state.111~q\) # ((\inst2|DRAM|new_sdram_controller_0|i_state.001~q\) # 
-- (\inst2|DRAM|new_sdram_controller_0|i_state.010~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|Selector10~0_combout\,
	datab => \inst2|DRAM|new_sdram_controller_0|i_state.111~q\,
	datac => \inst2|DRAM|new_sdram_controller_0|i_state.001~q\,
	datad => \inst2|DRAM|new_sdram_controller_0|i_state.010~q\,
	combout => \inst2|DRAM|new_sdram_controller_0|Selector10~1_combout\);

-- Location: FF_X72_Y19_N21
\inst2|DRAM|new_sdram_controller_0|i_state.011\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|Selector10~1_combout\,
	clrn => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|i_state.011~q\);

-- Location: LCCOMB_X70_Y19_N6
\inst2|DRAM|new_sdram_controller_0|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector1~0_combout\ = (!\inst2|DRAM|new_sdram_controller_0|i_state.011~q\ & (\inst2|DRAM|new_sdram_controller_0|i_state.000~q\ & ((\inst2|DRAM|new_sdram_controller_0|i_cmd\(2)) # 
-- (!\inst2|DRAM|new_sdram_controller_0|i_state.101~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|i_state.011~q\,
	datab => \inst2|DRAM|new_sdram_controller_0|i_state.000~q\,
	datac => \inst2|DRAM|new_sdram_controller_0|i_cmd\(2),
	datad => \inst2|DRAM|new_sdram_controller_0|i_state.101~q\,
	combout => \inst2|DRAM|new_sdram_controller_0|Selector1~0_combout\);

-- Location: FF_X70_Y19_N7
\inst2|DRAM|new_sdram_controller_0|i_cmd[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|Selector1~0_combout\,
	clrn => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|i_cmd\(2));

-- Location: FF_X74_Y20_N15
\inst2|DRAM|new_sdram_controller_0|m_state.000000010\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|Selector41~9_combout\,
	clrn => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|m_state.000000010~q\);

-- Location: LCCOMB_X70_Y19_N0
\inst2|DRAM|new_sdram_controller_0|init_done~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|init_done~0_combout\ = (\inst2|DRAM|new_sdram_controller_0|init_done~q\) # (\inst2|DRAM|new_sdram_controller_0|i_state.101~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|DRAM|new_sdram_controller_0|init_done~q\,
	datad => \inst2|DRAM|new_sdram_controller_0|i_state.101~q\,
	combout => \inst2|DRAM|new_sdram_controller_0|init_done~0_combout\);

-- Location: FF_X70_Y19_N1
\inst2|DRAM|new_sdram_controller_0|init_done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|init_done~0_combout\,
	clrn => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|init_done~q\);

-- Location: LCCOMB_X74_Y18_N18
\inst2|DRAM|new_sdram_controller_0|Selector37~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector37~0_combout\ = (\inst2|DRAM|new_sdram_controller_0|m_count\(2) & (!\inst2|DRAM|new_sdram_controller_0|m_state.000000001~q\ & ((!\inst2|DRAM|new_sdram_controller_0|init_done~q\) # 
-- (!\inst2|DRAM|new_sdram_controller_0|refresh_request~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|refresh_request~q\,
	datab => \inst2|DRAM|new_sdram_controller_0|m_count\(2),
	datac => \inst2|DRAM|new_sdram_controller_0|init_done~q\,
	datad => \inst2|DRAM|new_sdram_controller_0|m_state.000000001~q\,
	combout => \inst2|DRAM|new_sdram_controller_0|Selector37~0_combout\);

-- Location: LCCOMB_X74_Y18_N4
\inst2|DRAM|new_sdram_controller_0|Selector37~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector37~1_combout\ = (\inst2|DRAM|new_sdram_controller_0|m_state.000000100~q\ & ((\inst2|DRAM|new_sdram_controller_0|m_count\(1)) # ((\inst2|DRAM|new_sdram_controller_0|m_count\(0))))) # 
-- (!\inst2|DRAM|new_sdram_controller_0|m_state.000000100~q\ & (\inst2|DRAM|new_sdram_controller_0|m_state.000100000~q\ & ((\inst2|DRAM|new_sdram_controller_0|m_count\(1)) # (\inst2|DRAM|new_sdram_controller_0|m_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|m_state.000000100~q\,
	datab => \inst2|DRAM|new_sdram_controller_0|m_count\(1),
	datac => \inst2|DRAM|new_sdram_controller_0|m_state.000100000~q\,
	datad => \inst2|DRAM|new_sdram_controller_0|m_count\(0),
	combout => \inst2|DRAM|new_sdram_controller_0|Selector37~1_combout\);

-- Location: LCCOMB_X74_Y18_N6
\inst2|DRAM|new_sdram_controller_0|Selector37~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector37~2_combout\ = (\inst2|DRAM|new_sdram_controller_0|m_state.010000000~q\) # ((\inst2|DRAM|new_sdram_controller_0|Selector37~0_combout\) # ((\inst2|DRAM|new_sdram_controller_0|Selector37~1_combout\ & 
-- \inst2|DRAM|new_sdram_controller_0|m_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|m_state.010000000~q\,
	datab => \inst2|DRAM|new_sdram_controller_0|Selector37~0_combout\,
	datac => \inst2|DRAM|new_sdram_controller_0|Selector37~1_combout\,
	datad => \inst2|DRAM|new_sdram_controller_0|m_count\(2),
	combout => \inst2|DRAM|new_sdram_controller_0|Selector37~2_combout\);

-- Location: LCCOMB_X74_Y20_N18
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~0_combout\ = \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ $ 
-- (((\inst2|DRAM|new_sdram_controller_0|pending~combout\ & \inst2|DRAM|new_sdram_controller_0|f_pop~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|pending~combout\,
	datac => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\,
	datad => \inst2|DRAM|new_sdram_controller_0|f_pop~q\,
	combout => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~0_combout\);

-- Location: FF_X74_Y20_N19
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~0_combout\,
	clrn => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\);

-- Location: FF_X71_Y24_N21
\inst4|address[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	asdata => \inst4|addressCounter\(21),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|address\(21));

-- Location: LCCOMB_X74_Y22_N26
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|wr_address~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|wr_address~0_combout\ = \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|wr_address~q\ $ 
-- (\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|always2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|wr_address~q\,
	datad => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|always2~0_combout\,
	combout => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|wr_address~0_combout\);

-- Location: FF_X74_Y22_N27
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|wr_address\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|wr_address~0_combout\,
	clrn => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|wr_address~q\);

-- Location: LCCOMB_X74_Y22_N28
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~0_combout\ = (!\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|wr_address~q\ & 
-- \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|always2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|wr_address~q\,
	datad => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|always2~0_combout\,
	combout => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~0_combout\);

-- Location: FF_X75_Y24_N19
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => \inst4|address\(21),
	sload => VCC,
	ena => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(38));

-- Location: LCCOMB_X75_Y24_N16
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[38]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[38]~feeder_combout\ = \inst4|address\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|address\(21),
	combout => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[38]~feeder_combout\);

-- Location: LCCOMB_X74_Y22_N8
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[43]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\ = (\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|wr_address~q\ & 
-- \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|always2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|wr_address~q\,
	datad => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|always2~0_combout\,
	combout => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\);

-- Location: FF_X75_Y24_N17
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[38]~feeder_combout\,
	ena => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(38));

-- Location: LCCOMB_X75_Y24_N18
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[38]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[38]~13_combout\ = (\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- ((\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(38)))) # (!\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- (\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(38)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\,
	datac => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(38),
	datad => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(38),
	combout => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[38]~13_combout\);

-- Location: LCCOMB_X71_Y24_N26
\inst4|address[22]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|address[22]~feeder_combout\ = \inst4|addressCounter\(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|addressCounter\(22),
	combout => \inst4|address[22]~feeder_combout\);

-- Location: FF_X71_Y24_N27
\inst4|address[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \inst4|address[22]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|address\(22));

-- Location: FF_X77_Y20_N19
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => \inst4|address\(22),
	sload => VCC,
	ena => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(39));

-- Location: LCCOMB_X77_Y22_N0
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[39]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[39]~feeder_combout\ = \inst4|address\(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|address\(22),
	combout => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[39]~feeder_combout\);

-- Location: FF_X77_Y22_N1
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[39]~feeder_combout\,
	ena => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(39));

-- Location: LCCOMB_X77_Y20_N18
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[39]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[39]~12_combout\ = (\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- ((\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(39)))) # (!\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- (\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(39)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\,
	datac => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(39),
	datad => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(39),
	combout => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[39]~12_combout\);

-- Location: LCCOMB_X75_Y19_N12
\inst2|DRAM|new_sdram_controller_0|active_rnw~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|active_rnw~1_combout\ = (\inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\ & !\inst2|DRAM|new_sdram_controller_0|refresh_request~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	datad => \inst2|DRAM|new_sdram_controller_0|refresh_request~q\,
	combout => \inst2|DRAM|new_sdram_controller_0|active_rnw~1_combout\);

-- Location: LCCOMB_X75_Y21_N10
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~1_combout\ = !\inst4|write_op~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|write_op~q\,
	combout => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~1_combout\);

-- Location: FF_X75_Y21_N11
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~1_combout\,
	ena => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(43));

-- Location: LCCOMB_X75_Y21_N24
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[43]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[43]~1_combout\ = !\inst4|write_op~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|write_op~q\,
	combout => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[43]~1_combout\);

-- Location: FF_X75_Y21_N25
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[43]~1_combout\,
	ena => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(43));

-- Location: LCCOMB_X75_Y21_N20
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[43]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[43]~1_combout\ = (\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- ((\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(43)))) # (!\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- (\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(43)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(43),
	datac => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\,
	datad => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(43),
	combout => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[43]~1_combout\);

-- Location: LCCOMB_X75_Y19_N26
\inst2|DRAM|new_sdram_controller_0|active_cs_n~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|active_cs_n~0_combout\ = (\inst2|DRAM|new_sdram_controller_0|m_state.000000001~q\) # (((!\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(1) & 
-- !\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(0))) # (!\inst2|DRAM|new_sdram_controller_0|init_done~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(1),
	datab => \inst2|DRAM|new_sdram_controller_0|m_state.000000001~q\,
	datac => \inst2|DRAM|new_sdram_controller_0|init_done~q\,
	datad => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(0),
	combout => \inst2|DRAM|new_sdram_controller_0|active_cs_n~0_combout\);

-- Location: LCCOMB_X74_Y18_N2
\inst2|DRAM|new_sdram_controller_0|active_cs_n~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|active_cs_n~1_combout\ = (\inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\ & ((\inst2|DRAM|new_sdram_controller_0|Selector30~2_combout\) # 
-- ((\inst2|DRAM|new_sdram_controller_0|active_cs_n~q\ & \inst2|DRAM|new_sdram_controller_0|active_cs_n~0_combout\)))) # (!\inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\ & 
-- (((\inst2|DRAM|new_sdram_controller_0|active_cs_n~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|Selector30~2_combout\,
	datab => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	datac => \inst2|DRAM|new_sdram_controller_0|active_cs_n~q\,
	datad => \inst2|DRAM|new_sdram_controller_0|active_cs_n~0_combout\,
	combout => \inst2|DRAM|new_sdram_controller_0|active_cs_n~1_combout\);

-- Location: FF_X74_Y18_N3
\inst2|DRAM|new_sdram_controller_0|active_cs_n\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|active_cs_n~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|active_cs_n~q\);

-- Location: LCCOMB_X71_Y24_N30
\inst4|address[25]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|address[25]~feeder_combout\ = \inst4|addressCounter\(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|addressCounter\(25),
	combout => \inst4|address[25]~feeder_combout\);

-- Location: FF_X71_Y24_N31
\inst4|address[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \inst4|address[25]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|address\(25));

-- Location: LCCOMB_X71_Y20_N20
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[42]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[42]~feeder_combout\ = \inst4|address\(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|address\(25),
	combout => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[42]~feeder_combout\);

-- Location: FF_X71_Y20_N21
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[42]~feeder_combout\,
	ena => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(42));

-- Location: FF_X71_Y20_N15
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => \inst4|address\(25),
	sload => VCC,
	ena => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(42));

-- Location: LCCOMB_X71_Y20_N14
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[42]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[42]~3_combout\ = (\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- (\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(42))) # (!\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- ((\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(42))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(42),
	datac => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(42),
	datad => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\,
	combout => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[42]~3_combout\);

-- Location: LCCOMB_X70_Y23_N12
\inst4|address[12]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|address[12]~feeder_combout\ = \inst4|addressCounter\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|addressCounter\(12),
	combout => \inst4|address[12]~feeder_combout\);

-- Location: FF_X70_Y23_N13
\inst4|address[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \inst4|address[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|address\(12));

-- Location: LCCOMB_X72_Y20_N24
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[29]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[29]~feeder_combout\ = \inst4|address\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|address\(12),
	combout => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[29]~feeder_combout\);

-- Location: FF_X72_Y20_N25
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[29]~feeder_combout\,
	ena => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(29));

-- Location: FF_X72_Y20_N3
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => \inst4|address\(12),
	sload => VCC,
	ena => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(29));

-- Location: LCCOMB_X72_Y20_N2
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[29]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[29]~2_combout\ = (\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- (\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(29))) # (!\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- ((\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(29),
	datac => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(29),
	datad => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\,
	combout => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[29]~2_combout\);

-- Location: FF_X75_Y20_N11
\inst2|DRAM|new_sdram_controller_0|active_addr[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[42]~3_combout\,
	sload => VCC,
	ena => \inst2|DRAM|new_sdram_controller_0|active_rnw~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|active_addr\(24));

-- Location: FF_X75_Y20_N13
\inst2|DRAM|new_sdram_controller_0|active_addr[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[29]~2_combout\,
	sload => VCC,
	ena => \inst2|DRAM|new_sdram_controller_0|active_rnw~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|active_addr\(11));

-- Location: LCCOMB_X75_Y20_N10
\inst2|DRAM|new_sdram_controller_0|pending~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|pending~1_combout\ = (\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[42]~3_combout\ & (\inst2|DRAM|new_sdram_controller_0|active_addr\(24) & 
-- (\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[29]~2_combout\ $ (!\inst2|DRAM|new_sdram_controller_0|active_addr\(11))))) # 
-- (!\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[42]~3_combout\ & (!\inst2|DRAM|new_sdram_controller_0|active_addr\(24) & 
-- (\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[29]~2_combout\ $ (!\inst2|DRAM|new_sdram_controller_0|active_addr\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[42]~3_combout\,
	datab => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[29]~2_combout\,
	datac => \inst2|DRAM|new_sdram_controller_0|active_addr\(24),
	datad => \inst2|DRAM|new_sdram_controller_0|active_addr\(11),
	combout => \inst2|DRAM|new_sdram_controller_0|pending~1_combout\);

-- Location: LCCOMB_X69_Y24_N28
\inst4|address[15]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|address[15]~feeder_combout\ = \inst4|addressCounter\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|addressCounter\(15),
	combout => \inst4|address[15]~feeder_combout\);

-- Location: FF_X69_Y24_N29
\inst4|address[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \inst4|address[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|address\(15));

-- Location: LCCOMB_X72_Y20_N0
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[32]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[32]~feeder_combout\ = \inst4|address\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|address\(15),
	combout => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[32]~feeder_combout\);

-- Location: FF_X72_Y20_N1
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[32]~feeder_combout\,
	ena => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(32));

-- Location: FF_X72_Y20_N19
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => \inst4|address\(15),
	sload => VCC,
	ena => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(32));

-- Location: LCCOMB_X72_Y20_N18
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[32]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[32]~7_combout\ = (\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- (\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(32))) # (!\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- ((\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(32))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(32),
	datac => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(32),
	datad => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\,
	combout => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[32]~7_combout\);

-- Location: FF_X71_Y24_N25
\inst4|address[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	asdata => \inst4|addressCounter\(16),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|address\(16));

-- Location: LCCOMB_X72_Y20_N28
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[33]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[33]~feeder_combout\ = \inst4|address\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|address\(16),
	combout => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[33]~feeder_combout\);

-- Location: FF_X72_Y20_N29
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[33]~feeder_combout\,
	ena => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(33));

-- Location: FF_X72_Y20_N7
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => \inst4|address\(16),
	sload => VCC,
	ena => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(33));

-- Location: LCCOMB_X72_Y20_N6
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[33]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[33]~6_combout\ = (\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- (\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(33))) # (!\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- ((\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(33))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(33),
	datac => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(33),
	datad => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\,
	combout => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[33]~6_combout\);

-- Location: FF_X75_Y20_N1
\inst2|DRAM|new_sdram_controller_0|active_addr[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[32]~7_combout\,
	sload => VCC,
	ena => \inst2|DRAM|new_sdram_controller_0|active_rnw~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|active_addr\(14));

-- Location: FF_X76_Y20_N3
\inst2|DRAM|new_sdram_controller_0|active_addr[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[33]~6_combout\,
	sload => VCC,
	ena => \inst2|DRAM|new_sdram_controller_0|active_rnw~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|active_addr\(15));

-- Location: LCCOMB_X75_Y20_N0
\inst2|DRAM|new_sdram_controller_0|pending~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|pending~3_combout\ = (\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[32]~7_combout\ & (\inst2|DRAM|new_sdram_controller_0|active_addr\(14) & 
-- (\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[33]~6_combout\ $ (!\inst2|DRAM|new_sdram_controller_0|active_addr\(15))))) # 
-- (!\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[32]~7_combout\ & (!\inst2|DRAM|new_sdram_controller_0|active_addr\(14) & 
-- (\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[33]~6_combout\ $ (!\inst2|DRAM|new_sdram_controller_0|active_addr\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[32]~7_combout\,
	datab => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[33]~6_combout\,
	datac => \inst2|DRAM|new_sdram_controller_0|active_addr\(14),
	datad => \inst2|DRAM|new_sdram_controller_0|active_addr\(15),
	combout => \inst2|DRAM|new_sdram_controller_0|pending~3_combout\);

-- Location: FF_X69_Y24_N11
\inst4|address[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	asdata => \inst4|addressCounter\(13),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|address\(13));

-- Location: LCCOMB_X72_Y20_N8
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[30]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[30]~feeder_combout\ = \inst4|address\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|address\(13),
	combout => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[30]~feeder_combout\);

-- Location: FF_X72_Y20_N9
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[30]~feeder_combout\,
	ena => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(30));

-- Location: FF_X72_Y20_N27
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => \inst4|address\(13),
	sload => VCC,
	ena => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(30));

-- Location: LCCOMB_X72_Y20_N26
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[30]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[30]~5_combout\ = (\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- (\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(30))) # (!\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- ((\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(30),
	datac => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(30),
	datad => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\,
	combout => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[30]~5_combout\);

-- Location: LCCOMB_X69_Y24_N0
\inst4|address[14]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|address[14]~feeder_combout\ = \inst4|addressCounter\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|addressCounter\(14),
	combout => \inst4|address[14]~feeder_combout\);

-- Location: FF_X69_Y24_N1
\inst4|address[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \inst4|address[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|address\(14));

-- Location: LCCOMB_X72_Y20_N4
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[31]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[31]~feeder_combout\ = \inst4|address\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|address\(14),
	combout => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[31]~feeder_combout\);

-- Location: FF_X72_Y20_N5
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[31]~feeder_combout\,
	ena => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(31));

-- Location: FF_X72_Y20_N23
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => \inst4|address\(14),
	sload => VCC,
	ena => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(31));

-- Location: LCCOMB_X72_Y20_N22
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[31]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[31]~4_combout\ = (\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- (\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(31))) # (!\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- ((\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(31),
	datac => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(31),
	datad => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\,
	combout => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[31]~4_combout\);

-- Location: FF_X76_Y20_N17
\inst2|DRAM|new_sdram_controller_0|active_addr[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[31]~4_combout\,
	sload => VCC,
	ena => \inst2|DRAM|new_sdram_controller_0|active_rnw~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|active_addr\(13));

-- Location: FF_X75_Y20_N31
\inst2|DRAM|new_sdram_controller_0|active_addr[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[30]~5_combout\,
	sload => VCC,
	ena => \inst2|DRAM|new_sdram_controller_0|active_rnw~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|active_addr\(12));

-- Location: LCCOMB_X75_Y20_N30
\inst2|DRAM|new_sdram_controller_0|pending~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|pending~2_combout\ = (\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[30]~5_combout\ & (\inst2|DRAM|new_sdram_controller_0|active_addr\(12) & 
-- (\inst2|DRAM|new_sdram_controller_0|active_addr\(13) $ (!\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[31]~4_combout\)))) # 
-- (!\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[30]~5_combout\ & (!\inst2|DRAM|new_sdram_controller_0|active_addr\(12) & (\inst2|DRAM|new_sdram_controller_0|active_addr\(13) $ 
-- (!\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[31]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[30]~5_combout\,
	datab => \inst2|DRAM|new_sdram_controller_0|active_addr\(13),
	datac => \inst2|DRAM|new_sdram_controller_0|active_addr\(12),
	datad => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[31]~4_combout\,
	combout => \inst2|DRAM|new_sdram_controller_0|pending~2_combout\);

-- Location: LCCOMB_X74_Y21_N4
\inst2|DRAM|new_sdram_controller_0|active_rnw~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|active_rnw~feeder_combout\ = \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[43]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[43]~1_combout\,
	combout => \inst2|DRAM|new_sdram_controller_0|active_rnw~feeder_combout\);

-- Location: FF_X74_Y21_N5
\inst2|DRAM|new_sdram_controller_0|active_rnw\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|active_rnw~feeder_combout\,
	ena => \inst2|DRAM|new_sdram_controller_0|active_rnw~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|active_rnw~q\);

-- Location: FF_X70_Y23_N19
\inst4|address[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	asdata => \inst4|addressCounter\(11),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|address\(11));

-- Location: LCCOMB_X71_Y20_N24
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[28]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[28]~feeder_combout\ = \inst4|address\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|address\(11),
	combout => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[28]~feeder_combout\);

-- Location: FF_X71_Y20_N25
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[28]~feeder_combout\,
	ena => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(28));

-- Location: FF_X71_Y20_N11
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => \inst4|address\(11),
	sload => VCC,
	ena => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(28));

-- Location: LCCOMB_X71_Y20_N10
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[28]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[28]~0_combout\ = (\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- (\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(28))) # (!\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- ((\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(28),
	datac => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(28),
	datad => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\,
	combout => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[28]~0_combout\);

-- Location: FF_X75_Y20_N25
\inst2|DRAM|new_sdram_controller_0|active_addr[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[28]~0_combout\,
	sload => VCC,
	ena => \inst2|DRAM|new_sdram_controller_0|active_rnw~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|active_addr\(10));

-- Location: LCCOMB_X75_Y20_N24
\inst2|DRAM|new_sdram_controller_0|pending~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|pending~0_combout\ = (\inst2|DRAM|new_sdram_controller_0|active_rnw~q\ & (\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[43]~1_combout\ & 
-- (\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[28]~0_combout\ $ (!\inst2|DRAM|new_sdram_controller_0|active_addr\(10))))) # (!\inst2|DRAM|new_sdram_controller_0|active_rnw~q\ & 
-- (!\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[43]~1_combout\ & (\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[28]~0_combout\ $ 
-- (!\inst2|DRAM|new_sdram_controller_0|active_addr\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|active_rnw~q\,
	datab => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[28]~0_combout\,
	datac => \inst2|DRAM|new_sdram_controller_0|active_addr\(10),
	datad => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[43]~1_combout\,
	combout => \inst2|DRAM|new_sdram_controller_0|pending~0_combout\);

-- Location: LCCOMB_X75_Y20_N18
\inst2|DRAM|new_sdram_controller_0|pending~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|pending~4_combout\ = (\inst2|DRAM|new_sdram_controller_0|pending~1_combout\ & (\inst2|DRAM|new_sdram_controller_0|pending~3_combout\ & (\inst2|DRAM|new_sdram_controller_0|pending~2_combout\ & 
-- \inst2|DRAM|new_sdram_controller_0|pending~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|pending~1_combout\,
	datab => \inst2|DRAM|new_sdram_controller_0|pending~3_combout\,
	datac => \inst2|DRAM|new_sdram_controller_0|pending~2_combout\,
	datad => \inst2|DRAM|new_sdram_controller_0|pending~0_combout\,
	combout => \inst2|DRAM|new_sdram_controller_0|pending~4_combout\);

-- Location: LCCOMB_X75_Y20_N26
\inst2|DRAM|new_sdram_controller_0|pending~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|pending~10_combout\ = (!\inst2|DRAM|new_sdram_controller_0|active_cs_n~q\ & (\inst2|DRAM|new_sdram_controller_0|pending~4_combout\ & \inst2|DRAM|new_sdram_controller_0|pending~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|active_cs_n~q\,
	datab => \inst2|DRAM|new_sdram_controller_0|pending~4_combout\,
	datad => \inst2|DRAM|new_sdram_controller_0|pending~9_combout\,
	combout => \inst2|DRAM|new_sdram_controller_0|pending~10_combout\);

-- Location: LCCOMB_X74_Y21_N2
\inst2|DRAM|new_sdram_controller_0|Selector27~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector27~1_combout\ = (\inst2|DRAM|new_sdram_controller_0|m_state.100000000~q\ & (\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|Equal1~0_combout\ & 
-- (!\inst2|DRAM|new_sdram_controller_0|refresh_request~q\ & \inst2|DRAM|new_sdram_controller_0|pending~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|m_state.100000000~q\,
	datab => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|Equal1~0_combout\,
	datac => \inst2|DRAM|new_sdram_controller_0|refresh_request~q\,
	datad => \inst2|DRAM|new_sdram_controller_0|pending~10_combout\,
	combout => \inst2|DRAM|new_sdram_controller_0|Selector27~1_combout\);

-- Location: LCCOMB_X74_Y21_N8
\inst2|DRAM|new_sdram_controller_0|Selector27~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector27~0_combout\ = (\inst2|DRAM|new_sdram_controller_0|Selector31~0_combout\ & (((!\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|Equal1~0_combout\ & 
-- !\inst2|DRAM|new_sdram_controller_0|refresh_request~q\)) # (!\inst2|DRAM|new_sdram_controller_0|m_state.100000000~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|Equal1~0_combout\,
	datab => \inst2|DRAM|new_sdram_controller_0|Selector31~0_combout\,
	datac => \inst2|DRAM|new_sdram_controller_0|refresh_request~q\,
	datad => \inst2|DRAM|new_sdram_controller_0|m_state.100000000~q\,
	combout => \inst2|DRAM|new_sdram_controller_0|Selector27~0_combout\);

-- Location: LCCOMB_X75_Y18_N2
\inst2|DRAM|new_sdram_controller_0|Selector33~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector33~3_combout\ = (!\inst2|DRAM|new_sdram_controller_0|m_state.010000000~q\ & (((!\inst2|DRAM|new_sdram_controller_0|refresh_request~q\ & \inst2|DRAM|new_sdram_controller_0|m_next~17_combout\)) # 
-- (!\inst2|DRAM|new_sdram_controller_0|m_state.100000000~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|refresh_request~q\,
	datab => \inst2|DRAM|new_sdram_controller_0|m_state.010000000~q\,
	datac => \inst2|DRAM|new_sdram_controller_0|m_next~17_combout\,
	datad => \inst2|DRAM|new_sdram_controller_0|m_state.100000000~q\,
	combout => \inst2|DRAM|new_sdram_controller_0|Selector33~3_combout\);

-- Location: LCCOMB_X74_Y19_N16
\inst2|DRAM|new_sdram_controller_0|Selector34~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector34~0_combout\ = (\inst2|DRAM|new_sdram_controller_0|m_state.000000010~q\ & (\inst2|DRAM|new_sdram_controller_0|active_rnw~q\ & \inst2|DRAM|new_sdram_controller_0|Selector33~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|DRAM|new_sdram_controller_0|m_state.000000010~q\,
	datac => \inst2|DRAM|new_sdram_controller_0|active_rnw~q\,
	datad => \inst2|DRAM|new_sdram_controller_0|Selector33~3_combout\,
	combout => \inst2|DRAM|new_sdram_controller_0|Selector34~0_combout\);

-- Location: LCCOMB_X74_Y21_N20
\inst2|DRAM|new_sdram_controller_0|Selector34~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector34~1_combout\ = (\inst2|DRAM|new_sdram_controller_0|m_state.000000010~q\) # ((!\inst2|DRAM|new_sdram_controller_0|m_state.000000001~q\ & ((\inst2|DRAM|new_sdram_controller_0|refresh_request~q\) # 
-- (!\inst2|DRAM|new_sdram_controller_0|init_done~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|refresh_request~q\,
	datab => \inst2|DRAM|new_sdram_controller_0|m_state.000000010~q\,
	datac => \inst2|DRAM|new_sdram_controller_0|init_done~q\,
	datad => \inst2|DRAM|new_sdram_controller_0|m_state.000000001~q\,
	combout => \inst2|DRAM|new_sdram_controller_0|Selector34~1_combout\);

-- Location: LCCOMB_X74_Y21_N22
\inst2|DRAM|new_sdram_controller_0|Selector34~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector34~2_combout\ = (\inst2|DRAM|new_sdram_controller_0|m_state.010000000~q\) # ((\inst2|DRAM|new_sdram_controller_0|Selector34~1_combout\) # ((\inst2|DRAM|new_sdram_controller_0|refresh_request~q\ & 
-- \inst2|DRAM|new_sdram_controller_0|m_state.100000000~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|m_state.010000000~q\,
	datab => \inst2|DRAM|new_sdram_controller_0|Selector34~1_combout\,
	datac => \inst2|DRAM|new_sdram_controller_0|refresh_request~q\,
	datad => \inst2|DRAM|new_sdram_controller_0|m_state.100000000~q\,
	combout => \inst2|DRAM|new_sdram_controller_0|Selector34~2_combout\);

-- Location: LCCOMB_X74_Y21_N0
\inst2|DRAM|new_sdram_controller_0|Selector34~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector34~3_combout\ = (!\inst2|DRAM|new_sdram_controller_0|m_addr~0_combout\ & (\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|Equal1~0_combout\ & 
-- (\inst2|DRAM|new_sdram_controller_0|refresh_request~q\ & \inst2|DRAM|new_sdram_controller_0|pending~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|m_addr~0_combout\,
	datab => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|Equal1~0_combout\,
	datac => \inst2|DRAM|new_sdram_controller_0|refresh_request~q\,
	datad => \inst2|DRAM|new_sdram_controller_0|pending~10_combout\,
	combout => \inst2|DRAM|new_sdram_controller_0|Selector34~3_combout\);

-- Location: LCCOMB_X74_Y21_N26
\inst2|DRAM|new_sdram_controller_0|Selector34~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector34~4_combout\ = (\inst2|DRAM|new_sdram_controller_0|Selector34~2_combout\) # ((\inst2|DRAM|new_sdram_controller_0|Selector34~3_combout\) # ((!\inst2|DRAM|new_sdram_controller_0|m_next~17_combout\ & 
-- \inst2|DRAM|new_sdram_controller_0|m_state.100000000~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|Selector34~2_combout\,
	datab => \inst2|DRAM|new_sdram_controller_0|Selector34~3_combout\,
	datac => \inst2|DRAM|new_sdram_controller_0|m_next~17_combout\,
	datad => \inst2|DRAM|new_sdram_controller_0|m_state.100000000~q\,
	combout => \inst2|DRAM|new_sdram_controller_0|Selector34~4_combout\);

-- Location: FF_X74_Y19_N17
\inst2|DRAM|new_sdram_controller_0|m_next.000001000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|Selector34~0_combout\,
	clrn => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	ena => \inst2|DRAM|new_sdram_controller_0|Selector34~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|m_next.000001000~q\);

-- Location: LCCOMB_X74_Y21_N24
\inst2|DRAM|new_sdram_controller_0|Selector27~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector27~2_combout\ = (\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[43]~1_combout\ & ((\inst2|DRAM|new_sdram_controller_0|Selector27~1_combout\) # 
-- ((\inst2|DRAM|new_sdram_controller_0|Selector27~0_combout\ & \inst2|DRAM|new_sdram_controller_0|m_next.000001000~q\)))) # (!\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[43]~1_combout\ & 
-- (((\inst2|DRAM|new_sdram_controller_0|Selector27~0_combout\ & \inst2|DRAM|new_sdram_controller_0|m_next.000001000~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[43]~1_combout\,
	datab => \inst2|DRAM|new_sdram_controller_0|Selector27~1_combout\,
	datac => \inst2|DRAM|new_sdram_controller_0|Selector27~0_combout\,
	datad => \inst2|DRAM|new_sdram_controller_0|m_next.000001000~q\,
	combout => \inst2|DRAM|new_sdram_controller_0|Selector27~2_combout\);

-- Location: LCCOMB_X74_Y21_N30
\inst2|DRAM|new_sdram_controller_0|Selector27~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector27~4_combout\ = (!\inst2|DRAM|new_sdram_controller_0|m_state.000000001~q\ & ((\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|Equal1~0_combout\) # 
-- ((\inst2|DRAM|new_sdram_controller_0|refresh_request~q\) # (!\inst2|DRAM|new_sdram_controller_0|init_done~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|Equal1~0_combout\,
	datab => \inst2|DRAM|new_sdram_controller_0|init_done~q\,
	datac => \inst2|DRAM|new_sdram_controller_0|refresh_request~q\,
	datad => \inst2|DRAM|new_sdram_controller_0|m_state.000000001~q\,
	combout => \inst2|DRAM|new_sdram_controller_0|Selector27~4_combout\);

-- Location: LCCOMB_X74_Y21_N16
\inst2|DRAM|new_sdram_controller_0|Selector27~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector27~5_combout\ = ((\inst2|DRAM|new_sdram_controller_0|m_state.100000000~q\ & ((\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|Equal1~0_combout\) # 
-- (\inst2|DRAM|new_sdram_controller_0|refresh_request~q\)))) # (!\inst2|DRAM|new_sdram_controller_0|WideOr8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|Equal1~0_combout\,
	datab => \inst2|DRAM|new_sdram_controller_0|WideOr8~0_combout\,
	datac => \inst2|DRAM|new_sdram_controller_0|refresh_request~q\,
	datad => \inst2|DRAM|new_sdram_controller_0|m_state.100000000~q\,
	combout => \inst2|DRAM|new_sdram_controller_0|Selector27~5_combout\);

-- Location: LCCOMB_X74_Y21_N12
\inst2|DRAM|new_sdram_controller_0|Selector27~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector27~3_combout\ = (!\inst2|DRAM|new_sdram_controller_0|m_addr~0_combout\ & ((\inst2|DRAM|new_sdram_controller_0|refresh_request~q\) # ((!\inst2|DRAM|new_sdram_controller_0|pending~combout\ & 
-- \inst2|DRAM|new_sdram_controller_0|m_state.000000001~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|m_addr~0_combout\,
	datab => \inst2|DRAM|new_sdram_controller_0|pending~combout\,
	datac => \inst2|DRAM|new_sdram_controller_0|refresh_request~q\,
	datad => \inst2|DRAM|new_sdram_controller_0|m_state.000000001~q\,
	combout => \inst2|DRAM|new_sdram_controller_0|Selector27~3_combout\);

-- Location: LCCOMB_X74_Y21_N10
\inst2|DRAM|new_sdram_controller_0|Selector27~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector27~6_combout\ = (\inst2|DRAM|new_sdram_controller_0|Selector27~4_combout\) # ((\inst2|DRAM|new_sdram_controller_0|Selector27~5_combout\) # ((\inst2|DRAM|new_sdram_controller_0|Selector31~0_combout\) # 
-- (\inst2|DRAM|new_sdram_controller_0|Selector27~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|Selector27~4_combout\,
	datab => \inst2|DRAM|new_sdram_controller_0|Selector27~5_combout\,
	datac => \inst2|DRAM|new_sdram_controller_0|Selector31~0_combout\,
	datad => \inst2|DRAM|new_sdram_controller_0|Selector27~3_combout\,
	combout => \inst2|DRAM|new_sdram_controller_0|Selector27~6_combout\);

-- Location: FF_X74_Y21_N25
\inst2|DRAM|new_sdram_controller_0|m_state.000001000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|Selector27~2_combout\,
	clrn => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	ena => \inst2|DRAM|new_sdram_controller_0|Selector27~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|m_state.000001000~q\);

-- Location: LCCOMB_X74_Y19_N26
\inst2|DRAM|new_sdram_controller_0|Selector35~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector35~0_combout\ = (\inst2|DRAM|new_sdram_controller_0|m_state.000000010~q\ & (!\inst2|DRAM|new_sdram_controller_0|active_rnw~q\ & \inst2|DRAM|new_sdram_controller_0|Selector33~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|DRAM|new_sdram_controller_0|m_state.000000010~q\,
	datac => \inst2|DRAM|new_sdram_controller_0|active_rnw~q\,
	datad => \inst2|DRAM|new_sdram_controller_0|Selector33~3_combout\,
	combout => \inst2|DRAM|new_sdram_controller_0|Selector35~0_combout\);

-- Location: FF_X74_Y19_N27
\inst2|DRAM|new_sdram_controller_0|m_next.000010000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|Selector35~0_combout\,
	clrn => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	ena => \inst2|DRAM|new_sdram_controller_0|Selector34~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|m_next.000010000~q\);

-- Location: LCCOMB_X74_Y21_N18
\inst2|DRAM|new_sdram_controller_0|Selector28~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector28~0_combout\ = (\inst2|DRAM|new_sdram_controller_0|m_next.000010000~q\ & ((\inst2|DRAM|new_sdram_controller_0|Selector27~0_combout\) # 
-- ((!\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[43]~1_combout\ & \inst2|DRAM|new_sdram_controller_0|Selector27~1_combout\)))) # (!\inst2|DRAM|new_sdram_controller_0|m_next.000010000~q\ & 
-- (((!\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[43]~1_combout\ & \inst2|DRAM|new_sdram_controller_0|Selector27~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|m_next.000010000~q\,
	datab => \inst2|DRAM|new_sdram_controller_0|Selector27~0_combout\,
	datac => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[43]~1_combout\,
	datad => \inst2|DRAM|new_sdram_controller_0|Selector27~1_combout\,
	combout => \inst2|DRAM|new_sdram_controller_0|Selector28~0_combout\);

-- Location: FF_X74_Y21_N19
\inst2|DRAM|new_sdram_controller_0|m_state.000010000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|Selector28~0_combout\,
	clrn => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	ena => \inst2|DRAM|new_sdram_controller_0|Selector27~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|m_state.000010000~q\);

-- Location: LCCOMB_X75_Y18_N10
\inst2|DRAM|new_sdram_controller_0|m_addr~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|m_addr~0_combout\ = (!\inst2|DRAM|new_sdram_controller_0|m_state.000001000~q\ & !\inst2|DRAM|new_sdram_controller_0|m_state.000010000~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|DRAM|new_sdram_controller_0|m_state.000001000~q\,
	datad => \inst2|DRAM|new_sdram_controller_0|m_state.000010000~q\,
	combout => \inst2|DRAM|new_sdram_controller_0|m_addr~0_combout\);

-- Location: LCCOMB_X75_Y19_N22
\inst2|DRAM|new_sdram_controller_0|active_rnw~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|active_rnw~2_combout\ = (\inst2|DRAM|new_sdram_controller_0|pending~combout\ & ((\inst2|DRAM|new_sdram_controller_0|m_state.100000000~q\) # ((!\inst2|DRAM|new_sdram_controller_0|m_addr~0_combout\ & 
-- \inst2|DRAM|new_sdram_controller_0|m_state.000000001~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|pending~combout\,
	datab => \inst2|DRAM|new_sdram_controller_0|m_addr~0_combout\,
	datac => \inst2|DRAM|new_sdram_controller_0|m_state.100000000~q\,
	datad => \inst2|DRAM|new_sdram_controller_0|m_state.000000001~q\,
	combout => \inst2|DRAM|new_sdram_controller_0|active_rnw~2_combout\);

-- Location: LCCOMB_X75_Y19_N10
\inst2|DRAM|new_sdram_controller_0|active_rnw~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|active_rnw~0_combout\ = (\inst2|DRAM|new_sdram_controller_0|init_done~q\ & ((\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(0)) # 
-- (\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(0),
	datab => \inst2|DRAM|new_sdram_controller_0|init_done~q\,
	datad => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(1),
	combout => \inst2|DRAM|new_sdram_controller_0|active_rnw~0_combout\);

-- Location: LCCOMB_X75_Y19_N16
\inst2|DRAM|new_sdram_controller_0|active_rnw~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|active_rnw~3_combout\ = (\inst2|DRAM|new_sdram_controller_0|active_rnw~1_combout\ & ((\inst2|DRAM|new_sdram_controller_0|active_rnw~2_combout\) # ((!\inst2|DRAM|new_sdram_controller_0|m_state.000000001~q\ & 
-- \inst2|DRAM|new_sdram_controller_0|active_rnw~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|active_rnw~1_combout\,
	datab => \inst2|DRAM|new_sdram_controller_0|m_state.000000001~q\,
	datac => \inst2|DRAM|new_sdram_controller_0|active_rnw~2_combout\,
	datad => \inst2|DRAM|new_sdram_controller_0|active_rnw~0_combout\,
	combout => \inst2|DRAM|new_sdram_controller_0|active_rnw~3_combout\);

-- Location: FF_X76_Y20_N29
\inst2|DRAM|new_sdram_controller_0|active_addr[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[39]~12_combout\,
	sload => VCC,
	ena => \inst2|DRAM|new_sdram_controller_0|active_rnw~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|active_addr\(21));

-- Location: FF_X76_Y20_N11
\inst2|DRAM|new_sdram_controller_0|active_addr[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[38]~13_combout\,
	sload => VCC,
	ena => \inst2|DRAM|new_sdram_controller_0|active_rnw~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|active_addr\(20));

-- Location: LCCOMB_X76_Y20_N10
\inst2|DRAM|new_sdram_controller_0|pending~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|pending~7_combout\ = (\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[38]~13_combout\ & (\inst2|DRAM|new_sdram_controller_0|active_addr\(20) & 
-- (\inst2|DRAM|new_sdram_controller_0|active_addr\(21) $ (!\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[39]~12_combout\)))) # 
-- (!\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[38]~13_combout\ & (!\inst2|DRAM|new_sdram_controller_0|active_addr\(20) & (\inst2|DRAM|new_sdram_controller_0|active_addr\(21) $ 
-- (!\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[39]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[38]~13_combout\,
	datab => \inst2|DRAM|new_sdram_controller_0|active_addr\(21),
	datac => \inst2|DRAM|new_sdram_controller_0|active_addr\(20),
	datad => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[39]~12_combout\,
	combout => \inst2|DRAM|new_sdram_controller_0|pending~7_combout\);

-- Location: FF_X71_Y24_N9
\inst4|address[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	asdata => \inst4|addressCounter\(19),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|address\(19));

-- Location: LCCOMB_X71_Y20_N16
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[36]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[36]~feeder_combout\ = \inst4|address\(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|address\(19),
	combout => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[36]~feeder_combout\);

-- Location: FF_X71_Y20_N17
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[36]~feeder_combout\,
	ena => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(36));

-- Location: FF_X71_Y20_N3
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => \inst4|address\(19),
	sload => VCC,
	ena => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(36));

-- Location: LCCOMB_X71_Y20_N2
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[36]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[36]~11_combout\ = (\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- (\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(36))) # (!\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- ((\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(36))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(36),
	datac => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(36),
	datad => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\,
	combout => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[36]~11_combout\);

-- Location: LCCOMB_X71_Y24_N6
\inst4|address[20]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|address[20]~feeder_combout\ = \inst4|addressCounter\(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|addressCounter\(20),
	combout => \inst4|address[20]~feeder_combout\);

-- Location: FF_X71_Y24_N7
\inst4|address[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \inst4|address[20]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|address\(20));

-- Location: LCCOMB_X72_Y20_N12
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[37]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[37]~feeder_combout\ = \inst4|address\(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|address\(20),
	combout => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[37]~feeder_combout\);

-- Location: FF_X72_Y20_N13
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[37]~feeder_combout\,
	ena => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(37));

-- Location: FF_X72_Y20_N31
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => \inst4|address\(20),
	sload => VCC,
	ena => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(37));

-- Location: LCCOMB_X72_Y20_N30
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[37]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[37]~10_combout\ = (\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- (\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(37))) # (!\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- ((\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(37))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(37),
	datac => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(37),
	datad => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\,
	combout => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[37]~10_combout\);

-- Location: FF_X77_Y20_N25
\inst2|DRAM|new_sdram_controller_0|active_addr[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[37]~10_combout\,
	sload => VCC,
	ena => \inst2|DRAM|new_sdram_controller_0|active_rnw~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|active_addr\(19));

-- Location: FF_X76_Y20_N1
\inst2|DRAM|new_sdram_controller_0|active_addr[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[36]~11_combout\,
	sload => VCC,
	ena => \inst2|DRAM|new_sdram_controller_0|active_rnw~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|active_addr\(18));

-- Location: LCCOMB_X76_Y20_N0
\inst2|DRAM|new_sdram_controller_0|pending~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|pending~6_combout\ = (\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[36]~11_combout\ & (\inst2|DRAM|new_sdram_controller_0|active_addr\(18) & 
-- (\inst2|DRAM|new_sdram_controller_0|active_addr\(19) $ (!\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[37]~10_combout\)))) # 
-- (!\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[36]~11_combout\ & (!\inst2|DRAM|new_sdram_controller_0|active_addr\(18) & (\inst2|DRAM|new_sdram_controller_0|active_addr\(19) $ 
-- (!\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[37]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[36]~11_combout\,
	datab => \inst2|DRAM|new_sdram_controller_0|active_addr\(19),
	datac => \inst2|DRAM|new_sdram_controller_0|active_addr\(18),
	datad => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[37]~10_combout\,
	combout => \inst2|DRAM|new_sdram_controller_0|pending~6_combout\);

-- Location: LCCOMB_X71_Y24_N0
\inst4|address[23]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|address[23]~feeder_combout\ = \inst4|addressCounter\(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|addressCounter\(23),
	combout => \inst4|address[23]~feeder_combout\);

-- Location: FF_X71_Y24_N1
\inst4|address[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \inst4|address[23]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|address\(23));

-- Location: LCCOMB_X71_Y20_N0
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[40]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[40]~feeder_combout\ = \inst4|address\(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|address\(23),
	combout => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[40]~feeder_combout\);

-- Location: FF_X71_Y20_N1
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[40]~feeder_combout\,
	ena => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(40));

-- Location: FF_X71_Y20_N27
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => \inst4|address\(23),
	sload => VCC,
	ena => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(40));

-- Location: LCCOMB_X71_Y20_N26
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[40]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[40]~15_combout\ = (\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- (\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(40))) # (!\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- ((\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(40))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(40),
	datac => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(40),
	datad => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\,
	combout => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[40]~15_combout\);

-- Location: LCCOMB_X71_Y24_N14
\inst4|address[24]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|address[24]~feeder_combout\ = \inst4|addressCounter\(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|addressCounter\(24),
	combout => \inst4|address[24]~feeder_combout\);

-- Location: FF_X71_Y24_N15
\inst4|address[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \inst4|address[24]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|address\(24));

-- Location: LCCOMB_X71_Y20_N28
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[41]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[41]~feeder_combout\ = \inst4|address\(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|address\(24),
	combout => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[41]~feeder_combout\);

-- Location: FF_X71_Y20_N29
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[41]~feeder_combout\,
	ena => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(41));

-- Location: FF_X71_Y20_N23
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => \inst4|address\(24),
	sload => VCC,
	ena => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(41));

-- Location: LCCOMB_X71_Y20_N22
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[41]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[41]~14_combout\ = (\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- (\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(41))) # (!\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- ((\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(41))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(41),
	datac => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(41),
	datad => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\,
	combout => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[41]~14_combout\);

-- Location: FF_X76_Y20_N9
\inst2|DRAM|new_sdram_controller_0|active_addr[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[41]~14_combout\,
	sload => VCC,
	ena => \inst2|DRAM|new_sdram_controller_0|active_rnw~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|active_addr\(23));

-- Location: FF_X76_Y20_N23
\inst2|DRAM|new_sdram_controller_0|active_addr[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[40]~15_combout\,
	sload => VCC,
	ena => \inst2|DRAM|new_sdram_controller_0|active_rnw~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|active_addr\(22));

-- Location: LCCOMB_X76_Y20_N22
\inst2|DRAM|new_sdram_controller_0|pending~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|pending~8_combout\ = (\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[40]~15_combout\ & (\inst2|DRAM|new_sdram_controller_0|active_addr\(22) & 
-- (\inst2|DRAM|new_sdram_controller_0|active_addr\(23) $ (!\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[41]~14_combout\)))) # 
-- (!\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[40]~15_combout\ & (!\inst2|DRAM|new_sdram_controller_0|active_addr\(22) & (\inst2|DRAM|new_sdram_controller_0|active_addr\(23) $ 
-- (!\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[41]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[40]~15_combout\,
	datab => \inst2|DRAM|new_sdram_controller_0|active_addr\(23),
	datac => \inst2|DRAM|new_sdram_controller_0|active_addr\(22),
	datad => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[41]~14_combout\,
	combout => \inst2|DRAM|new_sdram_controller_0|pending~8_combout\);

-- Location: LCCOMB_X71_Y24_N18
\inst4|address[18]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|address[18]~feeder_combout\ = \inst4|addressCounter\(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|addressCounter\(18),
	combout => \inst4|address[18]~feeder_combout\);

-- Location: FF_X71_Y24_N19
\inst4|address[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \inst4|address[18]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|address\(18));

-- Location: LCCOMB_X72_Y20_N20
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[35]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[35]~feeder_combout\ = \inst4|address\(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|address\(18),
	combout => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[35]~feeder_combout\);

-- Location: FF_X72_Y20_N21
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[35]~feeder_combout\,
	ena => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(35));

-- Location: FF_X72_Y20_N15
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => \inst4|address\(18),
	sload => VCC,
	ena => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(35));

-- Location: LCCOMB_X72_Y20_N14
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[35]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[35]~8_combout\ = (\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- (\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(35))) # (!\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- ((\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(35))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(35),
	datac => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(35),
	datad => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\,
	combout => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[35]~8_combout\);

-- Location: FF_X76_Y20_N31
\inst2|DRAM|new_sdram_controller_0|active_addr[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[35]~8_combout\,
	sload => VCC,
	ena => \inst2|DRAM|new_sdram_controller_0|active_rnw~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|active_addr\(17));

-- Location: LCCOMB_X71_Y24_N12
\inst4|address[17]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|address[17]~feeder_combout\ = \inst4|addressCounter\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|addressCounter\(17),
	combout => \inst4|address[17]~feeder_combout\);

-- Location: FF_X71_Y24_N13
\inst4|address[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \inst4|address[17]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|address\(17));

-- Location: LCCOMB_X72_Y20_N16
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[34]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[34]~feeder_combout\ = \inst4|address\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|address\(17),
	combout => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[34]~feeder_combout\);

-- Location: FF_X72_Y20_N17
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[34]~feeder_combout\,
	ena => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(34));

-- Location: FF_X72_Y20_N11
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => \inst4|address\(17),
	sload => VCC,
	ena => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(34));

-- Location: LCCOMB_X72_Y20_N10
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[34]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[34]~9_combout\ = (\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- (\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(34))) # (!\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- ((\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(34))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(34),
	datac => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(34),
	datad => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\,
	combout => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[34]~9_combout\);

-- Location: FF_X76_Y20_N13
\inst2|DRAM|new_sdram_controller_0|active_addr[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[34]~9_combout\,
	sload => VCC,
	ena => \inst2|DRAM|new_sdram_controller_0|active_rnw~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|active_addr\(16));

-- Location: LCCOMB_X76_Y20_N12
\inst2|DRAM|new_sdram_controller_0|pending~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|pending~5_combout\ = (\inst2|DRAM|new_sdram_controller_0|active_addr\(17) & (\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[35]~8_combout\ & 
-- (\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[34]~9_combout\ $ (!\inst2|DRAM|new_sdram_controller_0|active_addr\(16))))) # (!\inst2|DRAM|new_sdram_controller_0|active_addr\(17) & 
-- (!\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[35]~8_combout\ & (\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[34]~9_combout\ $ 
-- (!\inst2|DRAM|new_sdram_controller_0|active_addr\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|active_addr\(17),
	datab => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[34]~9_combout\,
	datac => \inst2|DRAM|new_sdram_controller_0|active_addr\(16),
	datad => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[35]~8_combout\,
	combout => \inst2|DRAM|new_sdram_controller_0|pending~5_combout\);

-- Location: LCCOMB_X76_Y20_N18
\inst2|DRAM|new_sdram_controller_0|pending~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|pending~9_combout\ = (\inst2|DRAM|new_sdram_controller_0|pending~7_combout\ & (\inst2|DRAM|new_sdram_controller_0|pending~6_combout\ & (\inst2|DRAM|new_sdram_controller_0|pending~8_combout\ & 
-- \inst2|DRAM|new_sdram_controller_0|pending~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|pending~7_combout\,
	datab => \inst2|DRAM|new_sdram_controller_0|pending~6_combout\,
	datac => \inst2|DRAM|new_sdram_controller_0|pending~8_combout\,
	datad => \inst2|DRAM|new_sdram_controller_0|pending~5_combout\,
	combout => \inst2|DRAM|new_sdram_controller_0|pending~9_combout\);

-- Location: LCCOMB_X74_Y20_N22
\inst2|DRAM|new_sdram_controller_0|m_next~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|m_next~17_combout\ = ((\inst2|DRAM|new_sdram_controller_0|pending~9_combout\ & (!\inst2|DRAM|new_sdram_controller_0|active_cs_n~q\ & \inst2|DRAM|new_sdram_controller_0|pending~4_combout\))) # 
-- (!\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|pending~9_combout\,
	datab => \inst2|DRAM|new_sdram_controller_0|active_cs_n~q\,
	datac => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|Equal1~0_combout\,
	datad => \inst2|DRAM|new_sdram_controller_0|pending~4_combout\,
	combout => \inst2|DRAM|new_sdram_controller_0|m_next~17_combout\);

-- Location: LCCOMB_X75_Y18_N18
\inst2|DRAM|new_sdram_controller_0|Selector36~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector36~2_combout\ = (!\inst2|DRAM|new_sdram_controller_0|m_state.001000000~q\ & (((\inst2|DRAM|new_sdram_controller_0|refresh_request~q\) # (!\inst2|DRAM|new_sdram_controller_0|m_state.100000000~q\)) # 
-- (!\inst2|DRAM|new_sdram_controller_0|m_next~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|m_next~17_combout\,
	datab => \inst2|DRAM|new_sdram_controller_0|m_state.100000000~q\,
	datac => \inst2|DRAM|new_sdram_controller_0|refresh_request~q\,
	datad => \inst2|DRAM|new_sdram_controller_0|m_state.001000000~q\,
	combout => \inst2|DRAM|new_sdram_controller_0|Selector36~2_combout\);

-- Location: LCCOMB_X75_Y18_N24
\inst2|DRAM|new_sdram_controller_0|m_count[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|m_count[1]~1_combout\ = (\inst2|DRAM|new_sdram_controller_0|m_state.000001000~q\ & (((!\inst2|DRAM|new_sdram_controller_0|pending~combout\) # (!\inst2|DRAM|new_sdram_controller_0|refresh_request~q\)))) # 
-- (!\inst2|DRAM|new_sdram_controller_0|m_state.000001000~q\ & (\inst2|DRAM|new_sdram_controller_0|m_state.000010000~q\ & ((!\inst2|DRAM|new_sdram_controller_0|pending~combout\) # (!\inst2|DRAM|new_sdram_controller_0|refresh_request~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|m_state.000001000~q\,
	datab => \inst2|DRAM|new_sdram_controller_0|m_state.000010000~q\,
	datac => \inst2|DRAM|new_sdram_controller_0|refresh_request~q\,
	datad => \inst2|DRAM|new_sdram_controller_0|pending~combout\,
	combout => \inst2|DRAM|new_sdram_controller_0|m_count[1]~1_combout\);

-- Location: LCCOMB_X74_Y18_N0
\inst2|DRAM|new_sdram_controller_0|Selector37~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector37~3_combout\ = (\inst2|DRAM|new_sdram_controller_0|Selector37~2_combout\) # ((\inst2|DRAM|new_sdram_controller_0|m_count\(2) & ((\inst2|DRAM|new_sdram_controller_0|m_count[1]~1_combout\) # 
-- (!\inst2|DRAM|new_sdram_controller_0|Selector36~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|Selector37~2_combout\,
	datab => \inst2|DRAM|new_sdram_controller_0|Selector36~2_combout\,
	datac => \inst2|DRAM|new_sdram_controller_0|m_count\(2),
	datad => \inst2|DRAM|new_sdram_controller_0|m_count[1]~1_combout\,
	combout => \inst2|DRAM|new_sdram_controller_0|Selector37~3_combout\);

-- Location: FF_X74_Y18_N1
\inst2|DRAM|new_sdram_controller_0|m_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|Selector37~3_combout\,
	clrn => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|m_count\(2));

-- Location: LCCOMB_X74_Y19_N28
\inst2|DRAM|new_sdram_controller_0|LessThan1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|LessThan1~0_combout\ = (\inst2|DRAM|new_sdram_controller_0|m_count\(2)) # (\inst2|DRAM|new_sdram_controller_0|m_count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|m_count\(2),
	datac => \inst2|DRAM|new_sdram_controller_0|m_count\(1),
	combout => \inst2|DRAM|new_sdram_controller_0|LessThan1~0_combout\);

-- Location: LCCOMB_X74_Y20_N0
\inst2|DRAM|new_sdram_controller_0|Selector29~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector29~0_combout\ = (\inst2|DRAM|new_sdram_controller_0|m_state.100000000~q\ & (!\inst2|DRAM|new_sdram_controller_0|refresh_request~q\ & 
-- ((\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(0)) # (\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(0),
	datab => \inst2|DRAM|new_sdram_controller_0|m_state.100000000~q\,
	datac => \inst2|DRAM|new_sdram_controller_0|refresh_request~q\,
	datad => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(1),
	combout => \inst2|DRAM|new_sdram_controller_0|Selector29~0_combout\);

-- Location: LCCOMB_X74_Y20_N24
\inst2|DRAM|new_sdram_controller_0|Selector29~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector29~1_combout\ = (\inst2|DRAM|new_sdram_controller_0|LessThan1~0_combout\ & ((\inst2|DRAM|new_sdram_controller_0|m_state.000100000~q\) # ((\inst2|DRAM|new_sdram_controller_0|Selector29~0_combout\ & 
-- !\inst2|DRAM|new_sdram_controller_0|pending~10_combout\)))) # (!\inst2|DRAM|new_sdram_controller_0|LessThan1~0_combout\ & (\inst2|DRAM|new_sdram_controller_0|Selector29~0_combout\ & ((!\inst2|DRAM|new_sdram_controller_0|pending~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|LessThan1~0_combout\,
	datab => \inst2|DRAM|new_sdram_controller_0|Selector29~0_combout\,
	datac => \inst2|DRAM|new_sdram_controller_0|m_state.000100000~q\,
	datad => \inst2|DRAM|new_sdram_controller_0|pending~10_combout\,
	combout => \inst2|DRAM|new_sdram_controller_0|Selector29~1_combout\);

-- Location: FF_X74_Y20_N25
\inst2|DRAM|new_sdram_controller_0|m_state.000100000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|Selector29~1_combout\,
	clrn => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|m_state.000100000~q\);

-- Location: LCCOMB_X74_Y18_N14
\inst2|DRAM|new_sdram_controller_0|Selector93~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector93~0_combout\ = (!\inst2|DRAM|new_sdram_controller_0|m_state.000100000~q\ & (!\inst2|DRAM|new_sdram_controller_0|m_state.000000100~q\ & !\inst2|DRAM|new_sdram_controller_0|m_state.100000000~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|m_state.000100000~q\,
	datac => \inst2|DRAM|new_sdram_controller_0|m_state.000000100~q\,
	datad => \inst2|DRAM|new_sdram_controller_0|m_state.100000000~q\,
	combout => \inst2|DRAM|new_sdram_controller_0|Selector93~0_combout\);

-- Location: LCCOMB_X75_Y18_N28
\inst2|DRAM|new_sdram_controller_0|Selector33~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector33~0_combout\ = (\inst2|DRAM|new_sdram_controller_0|m_state.001000000~q\) # (((!\inst2|DRAM|new_sdram_controller_0|refresh_request~q\ & !\inst2|DRAM|new_sdram_controller_0|m_state.000000001~q\)) # 
-- (!\inst2|DRAM|new_sdram_controller_0|Selector93~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|m_state.001000000~q\,
	datab => \inst2|DRAM|new_sdram_controller_0|Selector93~0_combout\,
	datac => \inst2|DRAM|new_sdram_controller_0|refresh_request~q\,
	datad => \inst2|DRAM|new_sdram_controller_0|m_state.000000001~q\,
	combout => \inst2|DRAM|new_sdram_controller_0|Selector33~0_combout\);

-- Location: LCCOMB_X75_Y18_N22
\inst2|DRAM|new_sdram_controller_0|Selector33~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector33~1_combout\ = (\inst2|DRAM|new_sdram_controller_0|m_state.000000001~q\ & (!\inst2|DRAM|new_sdram_controller_0|m_next.000000001~q\ & ((\inst2|DRAM|new_sdram_controller_0|Selector33~0_combout\)))) # 
-- (!\inst2|DRAM|new_sdram_controller_0|m_state.000000001~q\ & (((!\inst2|DRAM|new_sdram_controller_0|m_next.000000001~q\ & \inst2|DRAM|new_sdram_controller_0|Selector33~0_combout\)) # (!\inst2|DRAM|new_sdram_controller_0|init_done~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|m_state.000000001~q\,
	datab => \inst2|DRAM|new_sdram_controller_0|m_next.000000001~q\,
	datac => \inst2|DRAM|new_sdram_controller_0|init_done~q\,
	datad => \inst2|DRAM|new_sdram_controller_0|Selector33~0_combout\,
	combout => \inst2|DRAM|new_sdram_controller_0|Selector33~1_combout\);

-- Location: LCCOMB_X75_Y18_N8
\inst2|DRAM|new_sdram_controller_0|Selector33~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector33~2_combout\ = ((\inst2|DRAM|new_sdram_controller_0|pending~combout\ & \inst2|DRAM|new_sdram_controller_0|refresh_request~q\)) # (!\inst2|DRAM|new_sdram_controller_0|m_next.000000001~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|DRAM|new_sdram_controller_0|pending~combout\,
	datac => \inst2|DRAM|new_sdram_controller_0|refresh_request~q\,
	datad => \inst2|DRAM|new_sdram_controller_0|m_next.000000001~q\,
	combout => \inst2|DRAM|new_sdram_controller_0|Selector33~2_combout\);

-- Location: LCCOMB_X75_Y18_N0
\inst2|DRAM|new_sdram_controller_0|Selector33~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector33~4_combout\ = (!\inst2|DRAM|new_sdram_controller_0|Selector33~1_combout\ & (\inst2|DRAM|new_sdram_controller_0|Selector33~3_combout\ & ((\inst2|DRAM|new_sdram_controller_0|m_addr~0_combout\) # 
-- (!\inst2|DRAM|new_sdram_controller_0|Selector33~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|Selector33~1_combout\,
	datab => \inst2|DRAM|new_sdram_controller_0|Selector33~3_combout\,
	datac => \inst2|DRAM|new_sdram_controller_0|Selector33~2_combout\,
	datad => \inst2|DRAM|new_sdram_controller_0|m_addr~0_combout\,
	combout => \inst2|DRAM|new_sdram_controller_0|Selector33~4_combout\);

-- Location: FF_X75_Y18_N1
\inst2|DRAM|new_sdram_controller_0|m_next.000000001\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|Selector33~4_combout\,
	clrn => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|m_next.000000001~q\);

-- Location: LCCOMB_X75_Y19_N24
\inst2|DRAM|new_sdram_controller_0|Selector24~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector24~0_combout\ = ((!\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(1) & (!\inst2|DRAM|new_sdram_controller_0|refresh_request~q\ & 
-- !\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(0)))) # (!\inst2|DRAM|new_sdram_controller_0|init_done~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(1),
	datab => \inst2|DRAM|new_sdram_controller_0|refresh_request~q\,
	datac => \inst2|DRAM|new_sdram_controller_0|init_done~q\,
	datad => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(0),
	combout => \inst2|DRAM|new_sdram_controller_0|Selector24~0_combout\);

-- Location: LCCOMB_X75_Y18_N16
\inst2|DRAM|new_sdram_controller_0|Selector24~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector24~1_combout\ = (\inst2|DRAM|new_sdram_controller_0|Selector31~0_combout\ & (\inst2|DRAM|new_sdram_controller_0|m_next.000000001~q\ & ((\inst2|DRAM|new_sdram_controller_0|m_state.000000001~q\) # 
-- (!\inst2|DRAM|new_sdram_controller_0|Selector24~0_combout\)))) # (!\inst2|DRAM|new_sdram_controller_0|Selector31~0_combout\ & (((\inst2|DRAM|new_sdram_controller_0|m_state.000000001~q\) # (!\inst2|DRAM|new_sdram_controller_0|Selector24~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|Selector31~0_combout\,
	datab => \inst2|DRAM|new_sdram_controller_0|m_next.000000001~q\,
	datac => \inst2|DRAM|new_sdram_controller_0|m_state.000000001~q\,
	datad => \inst2|DRAM|new_sdram_controller_0|Selector24~0_combout\,
	combout => \inst2|DRAM|new_sdram_controller_0|Selector24~1_combout\);

-- Location: FF_X75_Y18_N17
\inst2|DRAM|new_sdram_controller_0|m_state.000000001\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|Selector24~1_combout\,
	clrn => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|m_state.000000001~q\);

-- Location: LCCOMB_X74_Y18_N30
\inst2|DRAM|new_sdram_controller_0|Selector30~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector30~2_combout\ = (\inst2|DRAM|new_sdram_controller_0|refresh_request~q\ & (\inst2|DRAM|new_sdram_controller_0|init_done~q\ & !\inst2|DRAM|new_sdram_controller_0|m_state.000000001~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|refresh_request~q\,
	datac => \inst2|DRAM|new_sdram_controller_0|init_done~q\,
	datad => \inst2|DRAM|new_sdram_controller_0|m_state.000000001~q\,
	combout => \inst2|DRAM|new_sdram_controller_0|Selector30~2_combout\);

-- Location: LCCOMB_X74_Y18_N20
\inst2|DRAM|new_sdram_controller_0|Selector41~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector41~6_combout\ = (\inst2|DRAM|new_sdram_controller_0|init_done~q\ & !\inst2|DRAM|new_sdram_controller_0|m_state.000000001~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|DRAM|new_sdram_controller_0|init_done~q\,
	datad => \inst2|DRAM|new_sdram_controller_0|m_state.000000001~q\,
	combout => \inst2|DRAM|new_sdram_controller_0|Selector41~6_combout\);

-- Location: LCCOMB_X74_Y18_N8
\inst2|DRAM|new_sdram_controller_0|Selector36~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector36~3_combout\ = (\inst2|DRAM|new_sdram_controller_0|m_state.000100000~q\) # ((\inst2|DRAM|new_sdram_controller_0|Selector41~6_combout\) # ((\inst2|DRAM|new_sdram_controller_0|m_state.000000100~q\) # 
-- (!\inst2|DRAM|new_sdram_controller_0|Selector36~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|m_state.000100000~q\,
	datab => \inst2|DRAM|new_sdram_controller_0|Selector41~6_combout\,
	datac => \inst2|DRAM|new_sdram_controller_0|m_state.000000100~q\,
	datad => \inst2|DRAM|new_sdram_controller_0|Selector36~2_combout\,
	combout => \inst2|DRAM|new_sdram_controller_0|Selector36~3_combout\);

-- Location: LCCOMB_X74_Y18_N24
\inst2|DRAM|new_sdram_controller_0|Selector36~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector36~4_combout\ = (\inst2|DRAM|new_sdram_controller_0|Selector30~2_combout\) # ((\inst2|DRAM|new_sdram_controller_0|m_next.010000000~q\ & ((\inst2|DRAM|new_sdram_controller_0|Selector36~3_combout\) # 
-- (\inst2|DRAM|new_sdram_controller_0|m_count[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|Selector30~2_combout\,
	datab => \inst2|DRAM|new_sdram_controller_0|Selector36~3_combout\,
	datac => \inst2|DRAM|new_sdram_controller_0|m_next.010000000~q\,
	datad => \inst2|DRAM|new_sdram_controller_0|m_count[1]~1_combout\,
	combout => \inst2|DRAM|new_sdram_controller_0|Selector36~4_combout\);

-- Location: FF_X74_Y18_N25
\inst2|DRAM|new_sdram_controller_0|m_next.010000000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|Selector36~4_combout\,
	clrn => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|m_next.010000000~q\);

-- Location: LCCOMB_X74_Y18_N16
\inst2|DRAM|new_sdram_controller_0|Selector31~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector31~1_combout\ = (\inst2|DRAM|new_sdram_controller_0|m_state.000000100~q\ & (\inst2|DRAM|new_sdram_controller_0|m_next.010000000~q\ & (!\inst2|DRAM|new_sdram_controller_0|m_count\(1) & 
-- !\inst2|DRAM|new_sdram_controller_0|m_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|m_state.000000100~q\,
	datab => \inst2|DRAM|new_sdram_controller_0|m_next.010000000~q\,
	datac => \inst2|DRAM|new_sdram_controller_0|m_count\(1),
	datad => \inst2|DRAM|new_sdram_controller_0|m_count\(2),
	combout => \inst2|DRAM|new_sdram_controller_0|Selector31~1_combout\);

-- Location: FF_X74_Y18_N17
\inst2|DRAM|new_sdram_controller_0|m_state.010000000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|Selector31~1_combout\,
	clrn => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|m_state.010000000~q\);

-- Location: LCCOMB_X75_Y19_N20
\inst2|DRAM|new_sdram_controller_0|Selector23~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector23~0_combout\ = (\inst2|DRAM|new_sdram_controller_0|ack_refresh_request~q\ & (((\inst2|DRAM|new_sdram_controller_0|m_state.000000001~q\) # (!\inst2|DRAM|new_sdram_controller_0|init_done~q\)))) # 
-- (!\inst2|DRAM|new_sdram_controller_0|ack_refresh_request~q\ & (\inst2|DRAM|new_sdram_controller_0|m_state.010000000~q\ & ((\inst2|DRAM|new_sdram_controller_0|m_state.000000001~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|m_state.010000000~q\,
	datab => \inst2|DRAM|new_sdram_controller_0|init_done~q\,
	datac => \inst2|DRAM|new_sdram_controller_0|ack_refresh_request~q\,
	datad => \inst2|DRAM|new_sdram_controller_0|m_state.000000001~q\,
	combout => \inst2|DRAM|new_sdram_controller_0|Selector23~0_combout\);

-- Location: FF_X75_Y19_N21
\inst2|DRAM|new_sdram_controller_0|ack_refresh_request\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|Selector23~0_combout\,
	clrn => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|ack_refresh_request~q\);

-- Location: LCCOMB_X75_Y19_N2
\inst2|DRAM|new_sdram_controller_0|refresh_request~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|refresh_request~0_combout\ = (\inst2|DRAM|new_sdram_controller_0|init_done~q\ & (!\inst2|DRAM|new_sdram_controller_0|ack_refresh_request~q\ & ((\inst2|DRAM|new_sdram_controller_0|Equal0~4_combout\) # 
-- (\inst2|DRAM|new_sdram_controller_0|refresh_request~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|Equal0~4_combout\,
	datab => \inst2|DRAM|new_sdram_controller_0|init_done~q\,
	datac => \inst2|DRAM|new_sdram_controller_0|refresh_request~q\,
	datad => \inst2|DRAM|new_sdram_controller_0|ack_refresh_request~q\,
	combout => \inst2|DRAM|new_sdram_controller_0|refresh_request~0_combout\);

-- Location: FF_X75_Y19_N3
\inst2|DRAM|new_sdram_controller_0|refresh_request\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|refresh_request~0_combout\,
	clrn => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|refresh_request~q\);

-- Location: LCCOMB_X75_Y18_N12
\inst2|DRAM|new_sdram_controller_0|Selector32~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector32~0_combout\ = (!\inst2|DRAM|new_sdram_controller_0|refresh_request~q\ & \inst2|DRAM|new_sdram_controller_0|m_state.100000000~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|DRAM|new_sdram_controller_0|refresh_request~q\,
	datad => \inst2|DRAM|new_sdram_controller_0|m_state.100000000~q\,
	combout => \inst2|DRAM|new_sdram_controller_0|Selector32~0_combout\);

-- Location: LCCOMB_X75_Y18_N6
\inst2|DRAM|new_sdram_controller_0|Selector32~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector32~1_combout\ = (\inst2|DRAM|new_sdram_controller_0|Selector32~0_combout\ & (((!\inst2|DRAM|new_sdram_controller_0|m_addr~0_combout\) # 
-- (!\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|Equal1~0_combout\)))) # (!\inst2|DRAM|new_sdram_controller_0|Selector32~0_combout\ & (!\inst2|DRAM|new_sdram_controller_0|pending~combout\ & 
-- ((!\inst2|DRAM|new_sdram_controller_0|m_addr~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|Selector32~0_combout\,
	datab => \inst2|DRAM|new_sdram_controller_0|pending~combout\,
	datac => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|Equal1~0_combout\,
	datad => \inst2|DRAM|new_sdram_controller_0|m_addr~0_combout\,
	combout => \inst2|DRAM|new_sdram_controller_0|Selector32~1_combout\);

-- Location: FF_X75_Y18_N7
\inst2|DRAM|new_sdram_controller_0|m_state.100000000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|Selector32~1_combout\,
	clrn => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|m_state.100000000~q\);

-- Location: LCCOMB_X74_Y20_N12
\inst2|DRAM|new_sdram_controller_0|Selector26~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector26~1_combout\ = ((\inst2|DRAM|new_sdram_controller_0|m_state.100000000~q\ & \inst2|DRAM|new_sdram_controller_0|refresh_request~q\)) # (!\inst2|DRAM|new_sdram_controller_0|WideOr8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|DRAM|new_sdram_controller_0|WideOr8~0_combout\,
	datac => \inst2|DRAM|new_sdram_controller_0|m_state.100000000~q\,
	datad => \inst2|DRAM|new_sdram_controller_0|refresh_request~q\,
	combout => \inst2|DRAM|new_sdram_controller_0|Selector26~1_combout\);

-- Location: LCCOMB_X74_Y20_N10
\inst2|DRAM|new_sdram_controller_0|Selector26~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector26~0_combout\ = (\inst2|DRAM|new_sdram_controller_0|pending~combout\ & (!\inst2|DRAM|new_sdram_controller_0|m_addr~0_combout\ & ((\inst2|DRAM|new_sdram_controller_0|refresh_request~q\) # 
-- (\inst2|DRAM|new_sdram_controller_0|m_state.000000100~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|pending~combout\,
	datab => \inst2|DRAM|new_sdram_controller_0|m_addr~0_combout\,
	datac => \inst2|DRAM|new_sdram_controller_0|refresh_request~q\,
	datad => \inst2|DRAM|new_sdram_controller_0|m_state.000000100~q\,
	combout => \inst2|DRAM|new_sdram_controller_0|Selector26~0_combout\);

-- Location: LCCOMB_X74_Y20_N4
\inst2|DRAM|new_sdram_controller_0|Selector26~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector26~2_combout\ = (\inst2|DRAM|new_sdram_controller_0|Selector26~1_combout\) # ((\inst2|DRAM|new_sdram_controller_0|Selector26~0_combout\) # ((\inst2|DRAM|new_sdram_controller_0|LessThan1~0_combout\ & 
-- \inst2|DRAM|new_sdram_controller_0|m_state.000000100~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|Selector26~1_combout\,
	datab => \inst2|DRAM|new_sdram_controller_0|LessThan1~0_combout\,
	datac => \inst2|DRAM|new_sdram_controller_0|m_state.000000100~q\,
	datad => \inst2|DRAM|new_sdram_controller_0|Selector26~0_combout\,
	combout => \inst2|DRAM|new_sdram_controller_0|Selector26~2_combout\);

-- Location: FF_X74_Y20_N5
\inst2|DRAM|new_sdram_controller_0|m_state.000000100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|Selector26~2_combout\,
	clrn => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|m_state.000000100~q\);

-- Location: LCCOMB_X74_Y18_N10
\inst2|DRAM|new_sdram_controller_0|Selector31~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector31~0_combout\ = (\inst2|DRAM|new_sdram_controller_0|m_state.000000100~q\ & (!\inst2|DRAM|new_sdram_controller_0|m_count\(2) & !\inst2|DRAM|new_sdram_controller_0|m_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|m_state.000000100~q\,
	datab => \inst2|DRAM|new_sdram_controller_0|m_count\(2),
	datac => \inst2|DRAM|new_sdram_controller_0|m_count\(1),
	combout => \inst2|DRAM|new_sdram_controller_0|Selector31~0_combout\);

-- Location: LCCOMB_X75_Y18_N30
\inst2|DRAM|new_sdram_controller_0|m_count[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|m_count[1]~0_combout\ = (!\inst2|DRAM|new_sdram_controller_0|m_state.000000001~q\ & (((!\inst2|DRAM|new_sdram_controller_0|init_done~q\ & !\inst2|DRAM|new_sdram_controller_0|m_state.000001000~q\)) # 
-- (!\inst2|DRAM|new_sdram_controller_0|refresh_request~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|refresh_request~q\,
	datab => \inst2|DRAM|new_sdram_controller_0|init_done~q\,
	datac => \inst2|DRAM|new_sdram_controller_0|m_state.000001000~q\,
	datad => \inst2|DRAM|new_sdram_controller_0|m_state.000000001~q\,
	combout => \inst2|DRAM|new_sdram_controller_0|m_count[1]~0_combout\);

-- Location: LCCOMB_X75_Y18_N26
\inst2|DRAM|new_sdram_controller_0|m_count[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|m_count[1]~2_combout\ = (\inst2|DRAM|new_sdram_controller_0|Selector31~0_combout\) # (((\inst2|DRAM|new_sdram_controller_0|m_count[1]~0_combout\) # (\inst2|DRAM|new_sdram_controller_0|m_count[1]~1_combout\)) # 
-- (!\inst2|DRAM|new_sdram_controller_0|Selector36~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|Selector31~0_combout\,
	datab => \inst2|DRAM|new_sdram_controller_0|Selector36~2_combout\,
	datac => \inst2|DRAM|new_sdram_controller_0|m_count[1]~0_combout\,
	datad => \inst2|DRAM|new_sdram_controller_0|m_count[1]~1_combout\,
	combout => \inst2|DRAM|new_sdram_controller_0|m_count[1]~2_combout\);

-- Location: LCCOMB_X74_Y19_N24
\inst2|DRAM|new_sdram_controller_0|Selector38~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector38~0_combout\ = (\inst2|DRAM|new_sdram_controller_0|m_state.000000010~q\) # (\inst2|DRAM|new_sdram_controller_0|m_state.000010000~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|DRAM|new_sdram_controller_0|m_state.000000010~q\,
	datad => \inst2|DRAM|new_sdram_controller_0|m_state.000010000~q\,
	combout => \inst2|DRAM|new_sdram_controller_0|Selector38~0_combout\);

-- Location: LCCOMB_X74_Y19_N10
\inst2|DRAM|new_sdram_controller_0|m_count[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|m_count[1]~3_combout\ = ((\inst2|DRAM|new_sdram_controller_0|m_state.000000010~q\) # ((\inst2|DRAM|new_sdram_controller_0|m_state.010000000~q\) # (!\inst2|DRAM|new_sdram_controller_0|m_state.000000001~q\))) # 
-- (!\inst2|DRAM|new_sdram_controller_0|m_addr~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|m_addr~0_combout\,
	datab => \inst2|DRAM|new_sdram_controller_0|m_state.000000010~q\,
	datac => \inst2|DRAM|new_sdram_controller_0|m_state.000000001~q\,
	datad => \inst2|DRAM|new_sdram_controller_0|m_state.010000000~q\,
	combout => \inst2|DRAM|new_sdram_controller_0|m_count[1]~3_combout\);

-- Location: LCCOMB_X74_Y19_N20
\inst2|DRAM|new_sdram_controller_0|m_count[1]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|m_count[1]~4_combout\ = (\inst2|DRAM|new_sdram_controller_0|m_count[1]~3_combout\) # ((!\inst2|DRAM|new_sdram_controller_0|m_count\(1) & (\inst2|DRAM|new_sdram_controller_0|m_state.000100000~q\ & 
-- !\inst2|DRAM|new_sdram_controller_0|m_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|m_count\(1),
	datab => \inst2|DRAM|new_sdram_controller_0|m_state.000100000~q\,
	datac => \inst2|DRAM|new_sdram_controller_0|m_count\(2),
	datad => \inst2|DRAM|new_sdram_controller_0|m_count[1]~3_combout\,
	combout => \inst2|DRAM|new_sdram_controller_0|m_count[1]~4_combout\);

-- Location: LCCOMB_X74_Y19_N2
\inst2|DRAM|new_sdram_controller_0|m_count[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|m_count[0]~7_combout\ = (\inst2|DRAM|new_sdram_controller_0|m_state.100000000~q\) # ((\inst2|DRAM|new_sdram_controller_0|m_count[1]~4_combout\ & ((!\inst2|DRAM|new_sdram_controller_0|Selector38~0_combout\))) # 
-- (!\inst2|DRAM|new_sdram_controller_0|m_count[1]~4_combout\ & (!\inst2|DRAM|new_sdram_controller_0|m_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|m_count\(0),
	datab => \inst2|DRAM|new_sdram_controller_0|Selector38~0_combout\,
	datac => \inst2|DRAM|new_sdram_controller_0|m_state.100000000~q\,
	datad => \inst2|DRAM|new_sdram_controller_0|m_count[1]~4_combout\,
	combout => \inst2|DRAM|new_sdram_controller_0|m_count[0]~7_combout\);

-- Location: LCCOMB_X74_Y19_N6
\inst2|DRAM|new_sdram_controller_0|m_count[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|m_count[0]~8_combout\ = (\inst2|DRAM|new_sdram_controller_0|m_count[1]~2_combout\ & (\inst2|DRAM|new_sdram_controller_0|m_count\(0))) # (!\inst2|DRAM|new_sdram_controller_0|m_count[1]~2_combout\ & 
-- ((\inst2|DRAM|new_sdram_controller_0|m_count[0]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|DRAM|new_sdram_controller_0|m_count[1]~2_combout\,
	datac => \inst2|DRAM|new_sdram_controller_0|m_count\(0),
	datad => \inst2|DRAM|new_sdram_controller_0|m_count[0]~7_combout\,
	combout => \inst2|DRAM|new_sdram_controller_0|m_count[0]~8_combout\);

-- Location: FF_X74_Y19_N7
\inst2|DRAM|new_sdram_controller_0|m_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|m_count[0]~8_combout\,
	clrn => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|m_count\(0));

-- Location: LCCOMB_X74_Y19_N22
\inst2|DRAM|new_sdram_controller_0|m_count[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|m_count[1]~5_combout\ = (\inst2|DRAM|new_sdram_controller_0|m_count[1]~4_combout\ & ((\inst2|DRAM|new_sdram_controller_0|Selector38~0_combout\ $ (!\inst2|DRAM|new_sdram_controller_0|m_count\(1))))) # 
-- (!\inst2|DRAM|new_sdram_controller_0|m_count[1]~4_combout\ & (\inst2|DRAM|new_sdram_controller_0|m_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|m_count\(0),
	datab => \inst2|DRAM|new_sdram_controller_0|Selector38~0_combout\,
	datac => \inst2|DRAM|new_sdram_controller_0|m_count\(1),
	datad => \inst2|DRAM|new_sdram_controller_0|m_count[1]~4_combout\,
	combout => \inst2|DRAM|new_sdram_controller_0|m_count[1]~5_combout\);

-- Location: LCCOMB_X74_Y19_N30
\inst2|DRAM|new_sdram_controller_0|m_count[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|m_count[1]~6_combout\ = (\inst2|DRAM|new_sdram_controller_0|m_count[1]~2_combout\ & (((\inst2|DRAM|new_sdram_controller_0|m_count\(1))))) # (!\inst2|DRAM|new_sdram_controller_0|m_count[1]~2_combout\ & 
-- (!\inst2|DRAM|new_sdram_controller_0|m_state.100000000~q\ & (\inst2|DRAM|new_sdram_controller_0|m_count[1]~5_combout\ $ (!\inst2|DRAM|new_sdram_controller_0|m_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|m_count[1]~5_combout\,
	datab => \inst2|DRAM|new_sdram_controller_0|m_count[1]~2_combout\,
	datac => \inst2|DRAM|new_sdram_controller_0|m_count\(1),
	datad => \inst2|DRAM|new_sdram_controller_0|m_state.100000000~q\,
	combout => \inst2|DRAM|new_sdram_controller_0|m_count[1]~6_combout\);

-- Location: FF_X74_Y19_N31
\inst2|DRAM|new_sdram_controller_0|m_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|m_count[1]~6_combout\,
	clrn => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|m_count\(1));

-- Location: LCCOMB_X74_Y18_N28
\inst2|DRAM|new_sdram_controller_0|Selector30~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector30~3_combout\ = (\inst2|DRAM|new_sdram_controller_0|Selector30~2_combout\) # ((!\inst2|DRAM|new_sdram_controller_0|m_count\(1) & (!\inst2|DRAM|new_sdram_controller_0|m_count\(2) & 
-- \inst2|DRAM|new_sdram_controller_0|m_state.000100000~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|m_count\(1),
	datab => \inst2|DRAM|new_sdram_controller_0|m_count\(2),
	datac => \inst2|DRAM|new_sdram_controller_0|m_state.000100000~q\,
	datad => \inst2|DRAM|new_sdram_controller_0|Selector30~2_combout\,
	combout => \inst2|DRAM|new_sdram_controller_0|Selector30~3_combout\);

-- Location: FF_X74_Y18_N29
\inst2|DRAM|new_sdram_controller_0|m_state.001000000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|Selector30~3_combout\,
	clrn => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|m_state.001000000~q\);

-- Location: LCCOMB_X75_Y19_N28
\inst2|DRAM|new_sdram_controller_0|WideOr8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|WideOr8~0_combout\ = (!\inst2|DRAM|new_sdram_controller_0|m_state.000000010~q\ & (!\inst2|DRAM|new_sdram_controller_0|m_state.001000000~q\ & !\inst2|DRAM|new_sdram_controller_0|m_state.010000000~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|DRAM|new_sdram_controller_0|m_state.000000010~q\,
	datac => \inst2|DRAM|new_sdram_controller_0|m_state.001000000~q\,
	datad => \inst2|DRAM|new_sdram_controller_0|m_state.010000000~q\,
	combout => \inst2|DRAM|new_sdram_controller_0|WideOr8~0_combout\);

-- Location: LCCOMB_X75_Y19_N18
\inst2|DRAM|new_sdram_controller_0|Selector20~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector20~0_combout\ = (\inst2|DRAM|new_sdram_controller_0|m_state.000000001~q\ & (((!\inst2|DRAM|new_sdram_controller_0|WideOr8~0_combout\)))) # (!\inst2|DRAM|new_sdram_controller_0|m_state.000000001~q\ & 
-- (\inst2|DRAM|new_sdram_controller_0|i_cmd\(2) & ((!\inst2|DRAM|new_sdram_controller_0|init_done~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|i_cmd\(2),
	datab => \inst2|DRAM|new_sdram_controller_0|WideOr8~0_combout\,
	datac => \inst2|DRAM|new_sdram_controller_0|init_done~q\,
	datad => \inst2|DRAM|new_sdram_controller_0|m_state.000000001~q\,
	combout => \inst2|DRAM|new_sdram_controller_0|Selector20~0_combout\);

-- Location: FF_X75_Y19_N19
\inst2|DRAM|new_sdram_controller_0|m_cmd[2]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|Selector20~0_combout\,
	clrn => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|m_cmd[2]~_Duplicate_1_q\);

-- Location: LCCOMB_X72_Y19_N16
\inst2|DRAM|new_sdram_controller_0|Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector3~0_combout\ = (!\inst2|DRAM|new_sdram_controller_0|i_state.010~q\ & (\inst2|DRAM|new_sdram_controller_0|WideOr6~0_combout\ & ((\inst2|DRAM|new_sdram_controller_0|i_cmd\(0)) # 
-- (!\inst2|DRAM|new_sdram_controller_0|i_state.101~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|i_state.010~q\,
	datab => \inst2|DRAM|new_sdram_controller_0|WideOr6~0_combout\,
	datac => \inst2|DRAM|new_sdram_controller_0|i_cmd\(0),
	datad => \inst2|DRAM|new_sdram_controller_0|i_state.101~q\,
	combout => \inst2|DRAM|new_sdram_controller_0|Selector3~0_combout\);

-- Location: FF_X72_Y19_N17
\inst2|DRAM|new_sdram_controller_0|i_cmd[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|Selector3~0_combout\,
	clrn => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|i_cmd\(0));

-- Location: LCCOMB_X75_Y19_N14
\inst2|DRAM|new_sdram_controller_0|Selector22~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector22~0_combout\ = (\inst2|DRAM|new_sdram_controller_0|m_state.000000001~q\ & (((\inst2|DRAM|new_sdram_controller_0|m_state.001000000~q\)))) # (!\inst2|DRAM|new_sdram_controller_0|m_state.000000001~q\ & 
-- (\inst2|DRAM|new_sdram_controller_0|i_cmd\(0) & (!\inst2|DRAM|new_sdram_controller_0|init_done~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|i_cmd\(0),
	datab => \inst2|DRAM|new_sdram_controller_0|init_done~q\,
	datac => \inst2|DRAM|new_sdram_controller_0|m_state.001000000~q\,
	datad => \inst2|DRAM|new_sdram_controller_0|m_state.000000001~q\,
	combout => \inst2|DRAM|new_sdram_controller_0|Selector22~0_combout\);

-- Location: LCCOMB_X75_Y19_N4
\inst2|DRAM|new_sdram_controller_0|Selector22~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector22~1_combout\ = (\inst2|DRAM|new_sdram_controller_0|m_state.000010000~q\ & (\inst2|DRAM|new_sdram_controller_0|always5~0_combout\ & ((\inst2|DRAM|new_sdram_controller_0|Selector22~0_combout\) # 
-- (\inst2|DRAM|new_sdram_controller_0|m_state.000000001~q\)))) # (!\inst2|DRAM|new_sdram_controller_0|m_state.000010000~q\ & (\inst2|DRAM|new_sdram_controller_0|Selector22~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|m_state.000010000~q\,
	datab => \inst2|DRAM|new_sdram_controller_0|Selector22~0_combout\,
	datac => \inst2|DRAM|new_sdram_controller_0|always5~0_combout\,
	datad => \inst2|DRAM|new_sdram_controller_0|m_state.000000001~q\,
	combout => \inst2|DRAM|new_sdram_controller_0|Selector22~1_combout\);

-- Location: FF_X75_Y19_N5
\inst2|DRAM|new_sdram_controller_0|m_cmd[0]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|Selector22~1_combout\,
	clrn => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|m_cmd[0]~_Duplicate_1_q\);

-- Location: LCCOMB_X70_Y19_N26
\inst2|DRAM|new_sdram_controller_0|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector2~0_combout\ = (\inst2|DRAM|new_sdram_controller_0|WideOr6~0_combout\ & (!\inst2|DRAM|new_sdram_controller_0|i_state.001~q\ & ((\inst2|DRAM|new_sdram_controller_0|i_cmd\(1)) # 
-- (!\inst2|DRAM|new_sdram_controller_0|i_state.101~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|i_state.101~q\,
	datab => \inst2|DRAM|new_sdram_controller_0|WideOr6~0_combout\,
	datac => \inst2|DRAM|new_sdram_controller_0|i_cmd\(1),
	datad => \inst2|DRAM|new_sdram_controller_0|i_state.001~q\,
	combout => \inst2|DRAM|new_sdram_controller_0|Selector2~0_combout\);

-- Location: FF_X70_Y19_N27
\inst2|DRAM|new_sdram_controller_0|i_cmd[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|Selector2~0_combout\,
	clrn => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|i_cmd\(1));

-- Location: LCCOMB_X74_Y19_N8
\inst2|DRAM|new_sdram_controller_0|Selector21~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector21~0_combout\ = (!\inst2|DRAM|new_sdram_controller_0|m_state.000000001~q\ & ((\inst2|DRAM|new_sdram_controller_0|init_done~q\) # (!\inst2|DRAM|new_sdram_controller_0|i_cmd\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|i_cmd\(1),
	datab => \inst2|DRAM|new_sdram_controller_0|init_done~q\,
	datac => \inst2|DRAM|new_sdram_controller_0|m_state.000000001~q\,
	combout => \inst2|DRAM|new_sdram_controller_0|Selector21~0_combout\);

-- Location: LCCOMB_X75_Y19_N6
\inst2|DRAM|new_sdram_controller_0|WideOr9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|WideOr9~0_combout\ = (!\inst2|DRAM|new_sdram_controller_0|m_state.010000000~q\ & (!\inst2|DRAM|new_sdram_controller_0|m_state.000001000~q\ & (!\inst2|DRAM|new_sdram_controller_0|m_state.000010000~q\ & 
-- \inst2|DRAM|new_sdram_controller_0|m_state.000000001~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|m_state.010000000~q\,
	datab => \inst2|DRAM|new_sdram_controller_0|m_state.000001000~q\,
	datac => \inst2|DRAM|new_sdram_controller_0|m_state.000010000~q\,
	datad => \inst2|DRAM|new_sdram_controller_0|m_state.000000001~q\,
	combout => \inst2|DRAM|new_sdram_controller_0|WideOr9~0_combout\);

-- Location: LCCOMB_X75_Y19_N0
\inst2|DRAM|new_sdram_controller_0|Selector21~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector21~1_combout\ = (!\inst2|DRAM|new_sdram_controller_0|Selector21~0_combout\ & (!\inst2|DRAM|new_sdram_controller_0|WideOr9~0_combout\ & ((\inst2|DRAM|new_sdram_controller_0|m_addr~0_combout\) # 
-- (\inst2|DRAM|new_sdram_controller_0|always5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|Selector21~0_combout\,
	datab => \inst2|DRAM|new_sdram_controller_0|m_addr~0_combout\,
	datac => \inst2|DRAM|new_sdram_controller_0|always5~0_combout\,
	datad => \inst2|DRAM|new_sdram_controller_0|WideOr9~0_combout\,
	combout => \inst2|DRAM|new_sdram_controller_0|Selector21~1_combout\);

-- Location: FF_X75_Y19_N1
\inst2|DRAM|new_sdram_controller_0|m_cmd[1]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|Selector21~1_combout\,
	clrn => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|m_cmd[1]~_Duplicate_1_q\);

-- Location: LCCOMB_X75_Y19_N30
\inst2|DRAM|new_sdram_controller_0|Equal4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Equal4~0_combout\ = (!\inst2|DRAM|new_sdram_controller_0|m_cmd[2]~_Duplicate_1_q\ & (!\inst2|DRAM|new_sdram_controller_0|m_cmd[0]~_Duplicate_1_q\ & \inst2|DRAM|new_sdram_controller_0|m_cmd[1]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|DRAM|new_sdram_controller_0|m_cmd[2]~_Duplicate_1_q\,
	datac => \inst2|DRAM|new_sdram_controller_0|m_cmd[0]~_Duplicate_1_q\,
	datad => \inst2|DRAM|new_sdram_controller_0|m_cmd[1]~_Duplicate_1_q\,
	combout => \inst2|DRAM|new_sdram_controller_0|Equal4~0_combout\);

-- Location: FF_X75_Y19_N31
\inst2|DRAM|new_sdram_controller_0|rd_valid[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|Equal4~0_combout\,
	clrn => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|rd_valid\(0));

-- Location: FF_X74_Y19_N25
\inst2|DRAM|new_sdram_controller_0|rd_valid[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => \inst2|DRAM|new_sdram_controller_0|rd_valid\(0),
	clrn => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|rd_valid\(1));

-- Location: LCCOMB_X74_Y22_N30
\inst2|DRAM|new_sdram_controller_0|za_valid~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|za_valid~feeder_combout\ = \inst2|DRAM|new_sdram_controller_0|rd_valid\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|DRAM|new_sdram_controller_0|rd_valid\(1),
	combout => \inst2|DRAM|new_sdram_controller_0|za_valid~feeder_combout\);

-- Location: FF_X74_Y22_N31
\inst2|DRAM|new_sdram_controller_0|za_valid\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|za_valid~feeder_combout\,
	clrn => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|za_valid~q\);

-- Location: LCCOMB_X74_Y22_N12
\inst2|DRAM|mm_interconnect_0|avalon_mm_0_avm_m0_translator|read_accepted~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|mm_interconnect_0|avalon_mm_0_avm_m0_translator|read_accepted~0_combout\ = (!\inst2|DRAM|new_sdram_controller_0|za_valid~q\ & ((\inst2|DRAM|mm_interconnect_0|avalon_mm_0_avm_m0_translator|read_accepted~q\) # ((\inst4|read_op~q\ & 
-- !\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|read_op~q\,
	datab => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|Equal0~0_combout\,
	datac => \inst2|DRAM|mm_interconnect_0|avalon_mm_0_avm_m0_translator|read_accepted~q\,
	datad => \inst2|DRAM|new_sdram_controller_0|za_valid~q\,
	combout => \inst2|DRAM|mm_interconnect_0|avalon_mm_0_avm_m0_translator|read_accepted~0_combout\);

-- Location: FF_X74_Y22_N13
\inst2|DRAM|mm_interconnect_0|avalon_mm_0_avm_m0_translator|read_accepted\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|mm_interconnect_0|avalon_mm_0_avm_m0_translator|read_accepted~0_combout\,
	clrn => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|mm_interconnect_0|avalon_mm_0_avm_m0_translator|read_accepted~q\);

-- Location: LCCOMB_X74_Y22_N24
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|always2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|always2~0_combout\ = (!\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|Equal0~0_combout\ & ((\inst4|write_op~q\) # 
-- ((\inst4|read_op~q\ & !\inst2|DRAM|mm_interconnect_0|avalon_mm_0_avm_m0_translator|read_accepted~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|write_op~q\,
	datab => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|Equal0~0_combout\,
	datac => \inst4|read_op~q\,
	datad => \inst2|DRAM|mm_interconnect_0|avalon_mm_0_avm_m0_translator|read_accepted~q\,
	combout => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|always2~0_combout\);

-- Location: LCCOMB_X71_Y20_N12
\inst2|DRAM|new_sdram_controller_0|f_select\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|f_select~combout\ = (\inst2|DRAM|new_sdram_controller_0|f_pop~q\ & \inst2|DRAM|new_sdram_controller_0|pending~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|DRAM|new_sdram_controller_0|f_pop~q\,
	datad => \inst2|DRAM|new_sdram_controller_0|pending~combout\,
	combout => \inst2|DRAM|new_sdram_controller_0|f_select~combout\);

-- Location: LCCOMB_X74_Y20_N28
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries[1]~0_combout\ = \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(1) $ 
-- (((\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(0) & (\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|always2~0_combout\ & 
-- !\inst2|DRAM|new_sdram_controller_0|f_select~combout\)) # (!\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(0) & 
-- (!\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|always2~0_combout\ & \inst2|DRAM|new_sdram_controller_0|f_select~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(0),
	datab => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|always2~0_combout\,
	datac => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(1),
	datad => \inst2|DRAM|new_sdram_controller_0|f_select~combout\,
	combout => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries[1]~0_combout\);

-- Location: FF_X74_Y20_N29
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries[1]~0_combout\,
	clrn => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(1));

-- Location: LCCOMB_X74_Y20_N8
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|Equal1~0_combout\ = (\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(0)) # 
-- (\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(0),
	datad => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(1),
	combout => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|Equal1~0_combout\);

-- Location: LCCOMB_X75_Y20_N20
\inst2|DRAM|new_sdram_controller_0|pending\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|pending~combout\ = (\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|Equal1~0_combout\ & (\inst2|DRAM|new_sdram_controller_0|pending~4_combout\ & 
-- (!\inst2|DRAM|new_sdram_controller_0|active_cs_n~q\ & \inst2|DRAM|new_sdram_controller_0|pending~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|Equal1~0_combout\,
	datab => \inst2|DRAM|new_sdram_controller_0|pending~4_combout\,
	datac => \inst2|DRAM|new_sdram_controller_0|active_cs_n~q\,
	datad => \inst2|DRAM|new_sdram_controller_0|pending~9_combout\,
	combout => \inst2|DRAM|new_sdram_controller_0|pending~combout\);

-- Location: LCCOMB_X74_Y20_N30
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries[0]~1_combout\ = \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|always2~0_combout\ $ 
-- (\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(0) $ (((\inst2|DRAM|new_sdram_controller_0|pending~combout\ & \inst2|DRAM|new_sdram_controller_0|f_pop~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|pending~combout\,
	datab => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|always2~0_combout\,
	datac => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(0),
	datad => \inst2|DRAM|new_sdram_controller_0|f_pop~q\,
	combout => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries[0]~1_combout\);

-- Location: FF_X74_Y20_N31
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries[0]~1_combout\,
	clrn => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(0));

-- Location: LCCOMB_X74_Y20_N14
\inst2|DRAM|new_sdram_controller_0|Selector41~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector41~9_combout\ = (!\inst2|DRAM|new_sdram_controller_0|refresh_request~q\ & (\inst2|DRAM|new_sdram_controller_0|Selector41~6_combout\ & 
-- ((\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(0)) # (\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(0),
	datab => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(1),
	datac => \inst2|DRAM|new_sdram_controller_0|refresh_request~q\,
	datad => \inst2|DRAM|new_sdram_controller_0|Selector41~6_combout\,
	combout => \inst2|DRAM|new_sdram_controller_0|Selector41~9_combout\);

-- Location: LCCOMB_X74_Y21_N28
\inst2|DRAM|new_sdram_controller_0|Selector41~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector41~8_combout\ = (!\inst2|DRAM|new_sdram_controller_0|refresh_request~q\ & (\inst2|DRAM|new_sdram_controller_0|pending~combout\ & ((\inst2|DRAM|new_sdram_controller_0|m_state.000010000~q\) # 
-- (\inst2|DRAM|new_sdram_controller_0|m_state.000001000~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|refresh_request~q\,
	datab => \inst2|DRAM|new_sdram_controller_0|m_state.000010000~q\,
	datac => \inst2|DRAM|new_sdram_controller_0|pending~combout\,
	datad => \inst2|DRAM|new_sdram_controller_0|m_state.000001000~q\,
	combout => \inst2|DRAM|new_sdram_controller_0|Selector41~8_combout\);

-- Location: LCCOMB_X74_Y20_N26
\inst2|DRAM|new_sdram_controller_0|Selector41~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector41~7_combout\ = (\inst2|DRAM|new_sdram_controller_0|Selector41~9_combout\) # ((\inst2|DRAM|new_sdram_controller_0|Selector41~8_combout\) # ((\inst2|DRAM|new_sdram_controller_0|Selector29~0_combout\ & 
-- \inst2|DRAM|new_sdram_controller_0|pending~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|Selector41~9_combout\,
	datab => \inst2|DRAM|new_sdram_controller_0|Selector29~0_combout\,
	datac => \inst2|DRAM|new_sdram_controller_0|Selector41~8_combout\,
	datad => \inst2|DRAM|new_sdram_controller_0|pending~10_combout\,
	combout => \inst2|DRAM|new_sdram_controller_0|Selector41~7_combout\);

-- Location: FF_X74_Y20_N27
\inst2|DRAM|new_sdram_controller_0|f_pop\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|Selector41~7_combout\,
	clrn => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|f_pop~q\);

-- Location: LCCOMB_X75_Y19_N8
\inst2|DRAM|new_sdram_controller_0|always5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|always5~0_combout\ = (\inst2|DRAM|new_sdram_controller_0|pending~combout\) # (!\inst2|DRAM|new_sdram_controller_0|f_pop~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|DRAM|new_sdram_controller_0|f_pop~q\,
	datad => \inst2|DRAM|new_sdram_controller_0|pending~combout\,
	combout => \inst2|DRAM|new_sdram_controller_0|always5~0_combout\);

-- Location: DDIOOECELL_X78_Y31_N5
\inst2|DRAM|new_sdram_controller_0|oe\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "high")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|ALT_INV_always5~0_combout\,
	asdata => VCC,
	aload => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	sload => \inst2|DRAM|new_sdram_controller_0|ALT_INV_m_state.000010000~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|oe~q\);

-- Location: DDIOOECELL_X78_Y31_N19
\inst2|DRAM|new_sdram_controller_0|oe~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "high")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|ALT_INV_always5~0_combout\,
	asdata => VCC,
	aload => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	sload => \inst2|DRAM|new_sdram_controller_0|ALT_INV_m_state.000010000~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|oe~_Duplicate_1_q\);

-- Location: DDIOOECELL_X78_Y31_N26
\inst2|DRAM|new_sdram_controller_0|oe~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "high")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|ALT_INV_always5~0_combout\,
	asdata => VCC,
	aload => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	sload => \inst2|DRAM|new_sdram_controller_0|ALT_INV_m_state.000010000~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|oe~_Duplicate_2_q\);

-- Location: DDIOOECELL_X78_Y31_N12
\inst2|DRAM|new_sdram_controller_0|oe~_Duplicate_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "high")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|ALT_INV_always5~0_combout\,
	asdata => VCC,
	aload => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	sload => \inst2|DRAM|new_sdram_controller_0|ALT_INV_m_state.000010000~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|oe~_Duplicate_3_q\);

-- Location: LCCOMB_X46_Y48_N6
\inst|u1|modular_adc_0|control_internal|u_control_fsm|load_dout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u1|modular_adc_0|control_internal|u_control_fsm|load_dout~0_combout\ = (\inst|u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.CONV~q\ & (\inst|u1|modular_adc_0|control_internal|u_control_fsm|pend~q\ & 
-- (!\inst|u1|modular_adc_0|control_internal|u_control_fsm|u_eoc_synchronizer|dreg\(0) & \inst|u1|modular_adc_0|control_internal|u_control_fsm|eoc_synch_dly~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.CONV~q\,
	datab => \inst|u1|modular_adc_0|control_internal|u_control_fsm|pend~q\,
	datac => \inst|u1|modular_adc_0|control_internal|u_control_fsm|u_eoc_synchronizer|dreg\(0),
	datad => \inst|u1|modular_adc_0|control_internal|u_control_fsm|eoc_synch_dly~q\,
	combout => \inst|u1|modular_adc_0|control_internal|u_control_fsm|load_dout~0_combout\);

-- Location: FF_X46_Y48_N1
\inst|u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	asdata => \inst|u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(11),
	clrn => \inst|u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sload => VCC,
	ena => \inst|u1|modular_adc_0|control_internal|u_control_fsm|load_dout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(11));

-- Location: LCCOMB_X50_Y48_N0
\inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~0_combout\ = (\inst|u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(11) & (\inst|u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\ & 
-- \inst|u1|modular_adc_0|control_internal|u_control_fsm|pend~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(11),
	datac => \inst|u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\,
	datad => \inst|u1|modular_adc_0|control_internal|u_control_fsm|pend~q\,
	combout => \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~0_combout\);

-- Location: FF_X50_Y48_N1
\inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	d => \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~0_combout\,
	clrn => \inst|u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(11));

-- Location: LCCOMB_X75_Y22_N26
\inst4|write_buff[11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|write_buff[11]~feeder_combout\ = \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(11),
	combout => \inst4|write_buff[11]~feeder_combout\);

-- Location: LCCOMB_X72_Y24_N6
\inst4|write_buff[11]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|write_buff[11]~0_combout\ = (\inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_valid~q\ & (\inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_channel\(0) & (!\inst4|BufferFull~q\ & \DELAY_EN~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_valid~q\,
	datab => \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_channel\(0),
	datac => \inst4|BufferFull~q\,
	datad => \DELAY_EN~input_o\,
	combout => \inst4|write_buff[11]~0_combout\);

-- Location: FF_X75_Y22_N27
\inst4|write_buff[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \inst4|write_buff[11]~feeder_combout\,
	ena => \inst4|write_buff[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|write_buff\(11));

-- Location: LCCOMB_X74_Y22_N0
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[11]~feeder_combout\ = \inst4|write_buff\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|write_buff\(11),
	combout => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[11]~feeder_combout\);

-- Location: FF_X74_Y22_N1
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[11]~feeder_combout\,
	ena => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(11));

-- Location: LCCOMB_X75_Y22_N2
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[11]~feeder_combout\ = \inst4|write_buff\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|write_buff\(11),
	combout => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[11]~feeder_combout\);

-- Location: FF_X75_Y22_N3
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[11]~feeder_combout\,
	ena => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(11));

-- Location: LCCOMB_X76_Y22_N20
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[11]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[11]~26_combout\ = (\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- (\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(11))) # (!\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- ((\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(11),
	datac => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\,
	datad => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(11),
	combout => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[11]~26_combout\);

-- Location: FF_X76_Y22_N21
\inst2|DRAM|new_sdram_controller_0|active_data[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[11]~26_combout\,
	ena => \inst2|DRAM|new_sdram_controller_0|active_rnw~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|active_data\(11));

-- Location: FF_X76_Y22_N9
\inst2|DRAM|new_sdram_controller_0|m_data[11]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|Selector105~1_combout\,
	clrn => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|m_data[11]~_Duplicate_1_q\);

-- Location: LCCOMB_X77_Y22_N12
\inst2|DRAM|new_sdram_controller_0|Selector105~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector105~0_combout\ = (\inst2|DRAM|new_sdram_controller_0|m_state.000010000~q\ & (\inst2|DRAM|new_sdram_controller_0|active_data\(11))) # (!\inst2|DRAM|new_sdram_controller_0|m_state.000010000~q\ & 
-- ((\inst2|DRAM|new_sdram_controller_0|m_state.000000010~q\ & (\inst2|DRAM|new_sdram_controller_0|active_data\(11))) # (!\inst2|DRAM|new_sdram_controller_0|m_state.000000010~q\ & ((\inst2|DRAM|new_sdram_controller_0|m_data[11]~_Duplicate_1_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|m_state.000010000~q\,
	datab => \inst2|DRAM|new_sdram_controller_0|active_data\(11),
	datac => \inst2|DRAM|new_sdram_controller_0|m_state.000000010~q\,
	datad => \inst2|DRAM|new_sdram_controller_0|m_data[11]~_Duplicate_1_q\,
	combout => \inst2|DRAM|new_sdram_controller_0|Selector105~0_combout\);

-- Location: LCCOMB_X76_Y22_N6
\inst2|DRAM|new_sdram_controller_0|m_data[11]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|m_data[11]~0_combout\ = (\inst2|DRAM|new_sdram_controller_0|f_pop~q\ & (\inst2|DRAM|new_sdram_controller_0|m_state.000010000~q\ & \inst2|DRAM|new_sdram_controller_0|pending~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|DRAM|new_sdram_controller_0|f_pop~q\,
	datac => \inst2|DRAM|new_sdram_controller_0|m_state.000010000~q\,
	datad => \inst2|DRAM|new_sdram_controller_0|pending~combout\,
	combout => \inst2|DRAM|new_sdram_controller_0|m_data[11]~0_combout\);

-- Location: LCCOMB_X76_Y22_N8
\inst2|DRAM|new_sdram_controller_0|Selector105~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector105~1_combout\ = (\inst2|DRAM|new_sdram_controller_0|m_data[11]~0_combout\ & (\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[11]~26_combout\)) # 
-- (!\inst2|DRAM|new_sdram_controller_0|m_data[11]~0_combout\ & ((\inst2|DRAM|new_sdram_controller_0|Selector105~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[11]~26_combout\,
	datac => \inst2|DRAM|new_sdram_controller_0|Selector105~0_combout\,
	datad => \inst2|DRAM|new_sdram_controller_0|m_data[11]~0_combout\,
	combout => \inst2|DRAM|new_sdram_controller_0|Selector105~1_combout\);

-- Location: DDIOOUTCELL_X78_Y29_N11
\inst2|DRAM|new_sdram_controller_0|m_data[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|Selector105~1_combout\,
	clrn => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|m_data\(11));

-- Location: DDIOOECELL_X78_Y29_N12
\inst2|DRAM|new_sdram_controller_0|oe~_Duplicate_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "high")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|ALT_INV_always5~0_combout\,
	asdata => VCC,
	aload => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	sload => \inst2|DRAM|new_sdram_controller_0|ALT_INV_m_state.000010000~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|oe~_Duplicate_4_q\);

-- Location: LCCOMB_X46_Y48_N2
\inst|u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[10]~feeder_combout\ = \inst|u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(10),
	combout => \inst|u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[10]~feeder_combout\);

-- Location: FF_X46_Y48_N3
\inst|u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	d => \inst|u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[10]~feeder_combout\,
	clrn => \inst|u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	ena => \inst|u1|modular_adc_0|control_internal|u_control_fsm|load_dout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(10));

-- Location: LCCOMB_X50_Y48_N26
\inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~1_combout\ = (\inst|u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(10) & (\inst|u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\ & 
-- \inst|u1|modular_adc_0|control_internal|u_control_fsm|pend~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(10),
	datac => \inst|u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\,
	datad => \inst|u1|modular_adc_0|control_internal|u_control_fsm|pend~q\,
	combout => \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~1_combout\);

-- Location: FF_X50_Y48_N27
\inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	d => \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~1_combout\,
	clrn => \inst|u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(10));

-- Location: LCCOMB_X75_Y22_N28
\inst4|write_buff[10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|write_buff[10]~feeder_combout\ = \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(10),
	combout => \inst4|write_buff[10]~feeder_combout\);

-- Location: FF_X75_Y22_N29
\inst4|write_buff[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \inst4|write_buff[10]~feeder_combout\,
	ena => \inst4|write_buff[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|write_buff\(10));

-- Location: LCCOMB_X74_Y22_N10
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[10]~feeder_combout\ = \inst4|write_buff\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|write_buff\(10),
	combout => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[10]~feeder_combout\);

-- Location: FF_X74_Y22_N11
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[10]~feeder_combout\,
	ena => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(10));

-- Location: LCCOMB_X75_Y22_N12
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[10]~feeder_combout\ = \inst4|write_buff\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|write_buff\(10),
	combout => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[10]~feeder_combout\);

-- Location: FF_X75_Y22_N13
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[10]~feeder_combout\,
	ena => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(10));

-- Location: LCCOMB_X76_Y22_N0
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[10]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[10]~27_combout\ = (\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- (\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(10))) # (!\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- ((\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(10),
	datac => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\,
	datad => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(10),
	combout => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[10]~27_combout\);

-- Location: FF_X76_Y22_N1
\inst2|DRAM|new_sdram_controller_0|active_data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[10]~27_combout\,
	ena => \inst2|DRAM|new_sdram_controller_0|active_rnw~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|active_data\(10));

-- Location: FF_X76_Y22_N19
\inst2|DRAM|new_sdram_controller_0|m_data[10]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|Selector106~1_combout\,
	clrn => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|m_data[10]~_Duplicate_1_q\);

-- Location: LCCOMB_X76_Y22_N26
\inst2|DRAM|new_sdram_controller_0|Selector106~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector106~0_combout\ = (\inst2|DRAM|new_sdram_controller_0|m_state.000010000~q\ & (\inst2|DRAM|new_sdram_controller_0|active_data\(10))) # (!\inst2|DRAM|new_sdram_controller_0|m_state.000010000~q\ & 
-- ((\inst2|DRAM|new_sdram_controller_0|m_state.000000010~q\ & (\inst2|DRAM|new_sdram_controller_0|active_data\(10))) # (!\inst2|DRAM|new_sdram_controller_0|m_state.000000010~q\ & ((\inst2|DRAM|new_sdram_controller_0|m_data[10]~_Duplicate_1_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|active_data\(10),
	datab => \inst2|DRAM|new_sdram_controller_0|m_data[10]~_Duplicate_1_q\,
	datac => \inst2|DRAM|new_sdram_controller_0|m_state.000010000~q\,
	datad => \inst2|DRAM|new_sdram_controller_0|m_state.000000010~q\,
	combout => \inst2|DRAM|new_sdram_controller_0|Selector106~0_combout\);

-- Location: LCCOMB_X76_Y22_N18
\inst2|DRAM|new_sdram_controller_0|Selector106~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector106~1_combout\ = (\inst2|DRAM|new_sdram_controller_0|m_data[11]~0_combout\ & (\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[10]~27_combout\)) # 
-- (!\inst2|DRAM|new_sdram_controller_0|m_data[11]~0_combout\ & ((\inst2|DRAM|new_sdram_controller_0|Selector106~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[10]~27_combout\,
	datac => \inst2|DRAM|new_sdram_controller_0|Selector106~0_combout\,
	datad => \inst2|DRAM|new_sdram_controller_0|m_data[11]~0_combout\,
	combout => \inst2|DRAM|new_sdram_controller_0|Selector106~1_combout\);

-- Location: DDIOOUTCELL_X78_Y29_N4
\inst2|DRAM|new_sdram_controller_0|m_data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|Selector106~1_combout\,
	clrn => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|m_data\(10));

-- Location: DDIOOECELL_X78_Y29_N5
\inst2|DRAM|new_sdram_controller_0|oe~_Duplicate_5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "high")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|ALT_INV_always5~0_combout\,
	asdata => VCC,
	aload => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	sload => \inst2|DRAM|new_sdram_controller_0|ALT_INV_m_state.000010000~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|oe~_Duplicate_5_q\);

-- Location: FF_X46_Y48_N17
\inst|u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	asdata => \inst|u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(9),
	clrn => \inst|u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sload => VCC,
	ena => \inst|u1|modular_adc_0|control_internal|u_control_fsm|load_dout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(9));

-- Location: LCCOMB_X50_Y48_N12
\inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~2_combout\ = (\inst|u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(9) & (\inst|u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\ & 
-- \inst|u1|modular_adc_0|control_internal|u_control_fsm|pend~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(9),
	datac => \inst|u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\,
	datad => \inst|u1|modular_adc_0|control_internal|u_control_fsm|pend~q\,
	combout => \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~2_combout\);

-- Location: FF_X50_Y48_N13
\inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	d => \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~2_combout\,
	clrn => \inst|u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(9));

-- Location: LCCOMB_X75_Y22_N6
\inst4|write_buff[9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|write_buff[9]~feeder_combout\ = \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(9),
	combout => \inst4|write_buff[9]~feeder_combout\);

-- Location: FF_X75_Y22_N7
\inst4|write_buff[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \inst4|write_buff[9]~feeder_combout\,
	ena => \inst4|write_buff[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|write_buff\(9));

-- Location: LCCOMB_X74_Y22_N20
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[9]~feeder_combout\ = \inst4|write_buff\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|write_buff\(9),
	combout => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[9]~feeder_combout\);

-- Location: FF_X74_Y22_N21
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[9]~feeder_combout\,
	ena => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(9));

-- Location: LCCOMB_X75_Y22_N14
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[9]~feeder_combout\ = \inst4|write_buff\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|write_buff\(9),
	combout => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[9]~feeder_combout\);

-- Location: FF_X75_Y22_N15
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[9]~feeder_combout\,
	ena => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(9));

-- Location: LCCOMB_X76_Y22_N4
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[9]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[9]~28_combout\ = (\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- (\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(9))) # (!\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- ((\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(9),
	datac => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\,
	datad => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(9),
	combout => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[9]~28_combout\);

-- Location: FF_X76_Y22_N5
\inst2|DRAM|new_sdram_controller_0|active_data[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[9]~28_combout\,
	ena => \inst2|DRAM|new_sdram_controller_0|active_rnw~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|active_data\(9));

-- Location: FF_X76_Y22_N13
\inst2|DRAM|new_sdram_controller_0|m_data[9]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|Selector107~1_combout\,
	clrn => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|m_data[9]~_Duplicate_1_q\);

-- Location: LCCOMB_X76_Y22_N14
\inst2|DRAM|new_sdram_controller_0|Selector107~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector107~0_combout\ = (\inst2|DRAM|new_sdram_controller_0|m_state.000000010~q\ & (((\inst2|DRAM|new_sdram_controller_0|active_data\(9))))) # (!\inst2|DRAM|new_sdram_controller_0|m_state.000000010~q\ & 
-- ((\inst2|DRAM|new_sdram_controller_0|m_state.000010000~q\ & (\inst2|DRAM|new_sdram_controller_0|active_data\(9))) # (!\inst2|DRAM|new_sdram_controller_0|m_state.000010000~q\ & ((\inst2|DRAM|new_sdram_controller_0|m_data[9]~_Duplicate_1_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|m_state.000000010~q\,
	datab => \inst2|DRAM|new_sdram_controller_0|m_state.000010000~q\,
	datac => \inst2|DRAM|new_sdram_controller_0|active_data\(9),
	datad => \inst2|DRAM|new_sdram_controller_0|m_data[9]~_Duplicate_1_q\,
	combout => \inst2|DRAM|new_sdram_controller_0|Selector107~0_combout\);

-- Location: LCCOMB_X76_Y22_N12
\inst2|DRAM|new_sdram_controller_0|Selector107~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector107~1_combout\ = (\inst2|DRAM|new_sdram_controller_0|m_data[11]~0_combout\ & (\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[9]~28_combout\)) # 
-- (!\inst2|DRAM|new_sdram_controller_0|m_data[11]~0_combout\ & ((\inst2|DRAM|new_sdram_controller_0|Selector107~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[9]~28_combout\,
	datac => \inst2|DRAM|new_sdram_controller_0|Selector107~0_combout\,
	datad => \inst2|DRAM|new_sdram_controller_0|m_data[11]~0_combout\,
	combout => \inst2|DRAM|new_sdram_controller_0|Selector107~1_combout\);

-- Location: DDIOOUTCELL_X78_Y30_N11
\inst2|DRAM|new_sdram_controller_0|m_data[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|Selector107~1_combout\,
	clrn => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|m_data\(9));

-- Location: DDIOOECELL_X78_Y30_N12
\inst2|DRAM|new_sdram_controller_0|oe~_Duplicate_6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "high")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|ALT_INV_always5~0_combout\,
	asdata => VCC,
	aload => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	sload => \inst2|DRAM|new_sdram_controller_0|ALT_INV_m_state.000010000~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|oe~_Duplicate_6_q\);

-- Location: FF_X76_Y22_N31
\inst2|DRAM|new_sdram_controller_0|m_data[8]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|Selector108~1_combout\,
	clrn => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|m_data[8]~_Duplicate_1_q\);

-- Location: LCCOMB_X47_Y48_N8
\inst|u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[8]~feeder_combout\ = \inst|u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(8),
	combout => \inst|u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[8]~feeder_combout\);

-- Location: FF_X47_Y48_N9
\inst|u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	d => \inst|u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[8]~feeder_combout\,
	clrn => \inst|u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	ena => \inst|u1|modular_adc_0|control_internal|u_control_fsm|load_dout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(8));

-- Location: LCCOMB_X47_Y48_N0
\inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~3_combout\ = (\inst|u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(8) & (\inst|u1|modular_adc_0|control_internal|u_control_fsm|pend~q\ & 
-- \inst|u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(8),
	datac => \inst|u1|modular_adc_0|control_internal|u_control_fsm|pend~q\,
	datad => \inst|u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\,
	combout => \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~3_combout\);

-- Location: FF_X47_Y48_N1
\inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	d => \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~3_combout\,
	clrn => \inst|u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(8));

-- Location: LCCOMB_X75_Y22_N24
\inst4|write_buff[8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|write_buff[8]~feeder_combout\ = \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(8),
	combout => \inst4|write_buff[8]~feeder_combout\);

-- Location: FF_X75_Y22_N25
\inst4|write_buff[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \inst4|write_buff[8]~feeder_combout\,
	ena => \inst4|write_buff[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|write_buff\(8));

-- Location: LCCOMB_X74_Y22_N6
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[8]~feeder_combout\ = \inst4|write_buff\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|write_buff\(8),
	combout => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[8]~feeder_combout\);

-- Location: FF_X74_Y22_N7
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[8]~feeder_combout\,
	ena => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(8));

-- Location: LCCOMB_X75_Y22_N8
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[8]~feeder_combout\ = \inst4|write_buff\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|write_buff\(8),
	combout => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[8]~feeder_combout\);

-- Location: FF_X75_Y22_N9
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[8]~feeder_combout\,
	ena => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(8));

-- Location: LCCOMB_X76_Y22_N16
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[8]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[8]~29_combout\ = (\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- (\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(8))) # (!\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- ((\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(8),
	datac => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\,
	datad => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(8),
	combout => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[8]~29_combout\);

-- Location: FF_X76_Y22_N17
\inst2|DRAM|new_sdram_controller_0|active_data[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[8]~29_combout\,
	ena => \inst2|DRAM|new_sdram_controller_0|active_rnw~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|active_data\(8));

-- Location: LCCOMB_X76_Y22_N2
\inst2|DRAM|new_sdram_controller_0|Selector108~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector108~0_combout\ = (\inst2|DRAM|new_sdram_controller_0|m_state.000000010~q\ & (((\inst2|DRAM|new_sdram_controller_0|active_data\(8))))) # (!\inst2|DRAM|new_sdram_controller_0|m_state.000000010~q\ & 
-- ((\inst2|DRAM|new_sdram_controller_0|m_state.000010000~q\ & ((\inst2|DRAM|new_sdram_controller_0|active_data\(8)))) # (!\inst2|DRAM|new_sdram_controller_0|m_state.000010000~q\ & (\inst2|DRAM|new_sdram_controller_0|m_data[8]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|m_data[8]~_Duplicate_1_q\,
	datab => \inst2|DRAM|new_sdram_controller_0|m_state.000000010~q\,
	datac => \inst2|DRAM|new_sdram_controller_0|m_state.000010000~q\,
	datad => \inst2|DRAM|new_sdram_controller_0|active_data\(8),
	combout => \inst2|DRAM|new_sdram_controller_0|Selector108~0_combout\);

-- Location: LCCOMB_X76_Y22_N30
\inst2|DRAM|new_sdram_controller_0|Selector108~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector108~1_combout\ = (\inst2|DRAM|new_sdram_controller_0|m_data[11]~0_combout\ & ((\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[8]~29_combout\))) # 
-- (!\inst2|DRAM|new_sdram_controller_0|m_data[11]~0_combout\ & (\inst2|DRAM|new_sdram_controller_0|Selector108~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|DRAM|new_sdram_controller_0|Selector108~0_combout\,
	datac => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[8]~29_combout\,
	datad => \inst2|DRAM|new_sdram_controller_0|m_data[11]~0_combout\,
	combout => \inst2|DRAM|new_sdram_controller_0|Selector108~1_combout\);

-- Location: DDIOOUTCELL_X78_Y23_N11
\inst2|DRAM|new_sdram_controller_0|m_data[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|Selector108~1_combout\,
	clrn => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|m_data\(8));

-- Location: DDIOOECELL_X78_Y23_N12
\inst2|DRAM|new_sdram_controller_0|oe~_Duplicate_7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "high")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|ALT_INV_always5~0_combout\,
	asdata => VCC,
	aload => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	sload => \inst2|DRAM|new_sdram_controller_0|ALT_INV_m_state.000010000~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|oe~_Duplicate_7_q\);

-- Location: LCCOMB_X47_Y48_N10
\inst|u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[7]~feeder_combout\ = \inst|u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(7),
	combout => \inst|u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[7]~feeder_combout\);

-- Location: FF_X47_Y48_N11
\inst|u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	d => \inst|u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[7]~feeder_combout\,
	clrn => \inst|u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	ena => \inst|u1|modular_adc_0|control_internal|u_control_fsm|load_dout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(7));

-- Location: LCCOMB_X50_Y48_N30
\inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~4_combout\ = (\inst|u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(7) & (\inst|u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\ & 
-- \inst|u1|modular_adc_0|control_internal|u_control_fsm|pend~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(7),
	datac => \inst|u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\,
	datad => \inst|u1|modular_adc_0|control_internal|u_control_fsm|pend~q\,
	combout => \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~4_combout\);

-- Location: FF_X50_Y48_N31
\inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	d => \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~4_combout\,
	clrn => \inst|u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(7));

-- Location: LCCOMB_X75_Y22_N10
\inst4|write_buff[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|write_buff[7]~feeder_combout\ = \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(7),
	combout => \inst4|write_buff[7]~feeder_combout\);

-- Location: FF_X75_Y22_N11
\inst4|write_buff[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \inst4|write_buff[7]~feeder_combout\,
	ena => \inst4|write_buff[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|write_buff\(7));

-- Location: FF_X74_Y22_N29
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => \inst4|write_buff\(7),
	sload => VCC,
	ena => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(7));

-- Location: LCCOMB_X75_Y22_N18
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[7]~feeder_combout\ = \inst4|write_buff\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|write_buff\(7),
	combout => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[7]~feeder_combout\);

-- Location: FF_X75_Y22_N19
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[7]~feeder_combout\,
	ena => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(7));

-- Location: LCCOMB_X76_Y22_N28
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[7]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[7]~30_combout\ = (\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- (\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(7))) # (!\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- ((\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(7),
	datac => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\,
	datad => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(7),
	combout => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[7]~30_combout\);

-- Location: FF_X76_Y22_N25
\inst2|DRAM|new_sdram_controller_0|m_data[7]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|Selector109~1_combout\,
	clrn => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|m_data[7]~_Duplicate_1_q\);

-- Location: FF_X76_Y22_N29
\inst2|DRAM|new_sdram_controller_0|active_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[7]~30_combout\,
	ena => \inst2|DRAM|new_sdram_controller_0|active_rnw~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|active_data\(7));

-- Location: LCCOMB_X76_Y22_N22
\inst2|DRAM|new_sdram_controller_0|Selector109~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector109~0_combout\ = (\inst2|DRAM|new_sdram_controller_0|m_state.000000010~q\ & (((\inst2|DRAM|new_sdram_controller_0|active_data\(7))))) # (!\inst2|DRAM|new_sdram_controller_0|m_state.000000010~q\ & 
-- ((\inst2|DRAM|new_sdram_controller_0|m_state.000010000~q\ & ((\inst2|DRAM|new_sdram_controller_0|active_data\(7)))) # (!\inst2|DRAM|new_sdram_controller_0|m_state.000010000~q\ & (\inst2|DRAM|new_sdram_controller_0|m_data[7]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|m_data[7]~_Duplicate_1_q\,
	datab => \inst2|DRAM|new_sdram_controller_0|m_state.000000010~q\,
	datac => \inst2|DRAM|new_sdram_controller_0|m_state.000010000~q\,
	datad => \inst2|DRAM|new_sdram_controller_0|active_data\(7),
	combout => \inst2|DRAM|new_sdram_controller_0|Selector109~0_combout\);

-- Location: LCCOMB_X76_Y22_N24
\inst2|DRAM|new_sdram_controller_0|Selector109~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector109~1_combout\ = (\inst2|DRAM|new_sdram_controller_0|m_data[11]~0_combout\ & (\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[7]~30_combout\)) # 
-- (!\inst2|DRAM|new_sdram_controller_0|m_data[11]~0_combout\ & ((\inst2|DRAM|new_sdram_controller_0|Selector109~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[7]~30_combout\,
	datac => \inst2|DRAM|new_sdram_controller_0|Selector109~0_combout\,
	datad => \inst2|DRAM|new_sdram_controller_0|m_data[11]~0_combout\,
	combout => \inst2|DRAM|new_sdram_controller_0|Selector109~1_combout\);

-- Location: DDIOOUTCELL_X78_Y17_N11
\inst2|DRAM|new_sdram_controller_0|m_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|Selector109~1_combout\,
	clrn => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|m_data\(7));

-- Location: DDIOOECELL_X78_Y17_N12
\inst2|DRAM|new_sdram_controller_0|oe~_Duplicate_8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "high")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|ALT_INV_always5~0_combout\,
	asdata => VCC,
	aload => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	sload => \inst2|DRAM|new_sdram_controller_0|ALT_INV_m_state.000010000~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|oe~_Duplicate_8_q\);

-- Location: LCCOMB_X46_Y48_N24
\inst|u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[6]~feeder_combout\ = \inst|u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(6),
	combout => \inst|u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[6]~feeder_combout\);

-- Location: FF_X46_Y48_N25
\inst|u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	d => \inst|u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[6]~feeder_combout\,
	clrn => \inst|u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	ena => \inst|u1|modular_adc_0|control_internal|u_control_fsm|load_dout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(6));

-- Location: LCCOMB_X50_Y48_N16
\inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~5_combout\ = (\inst|u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(6) & (\inst|u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\ & 
-- \inst|u1|modular_adc_0|control_internal|u_control_fsm|pend~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(6),
	datac => \inst|u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\,
	datad => \inst|u1|modular_adc_0|control_internal|u_control_fsm|pend~q\,
	combout => \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~5_combout\);

-- Location: FF_X50_Y48_N17
\inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	d => \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~5_combout\,
	clrn => \inst|u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(6));

-- Location: LCCOMB_X75_Y22_N20
\inst4|write_buff[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|write_buff[6]~feeder_combout\ = \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(6),
	combout => \inst4|write_buff[6]~feeder_combout\);

-- Location: FF_X75_Y22_N21
\inst4|write_buff[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \inst4|write_buff[6]~feeder_combout\,
	ena => \inst4|write_buff[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|write_buff\(6));

-- Location: LCCOMB_X77_Y22_N30
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[6]~feeder_combout\ = \inst4|write_buff\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|write_buff\(6),
	combout => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[6]~feeder_combout\);

-- Location: FF_X77_Y22_N31
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[6]~feeder_combout\,
	ena => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(6));

-- Location: LCCOMB_X75_Y22_N4
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[6]~feeder_combout\ = \inst4|write_buff\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|write_buff\(6),
	combout => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[6]~feeder_combout\);

-- Location: FF_X75_Y22_N5
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[6]~feeder_combout\,
	ena => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(6));

-- Location: LCCOMB_X77_Y22_N24
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[6]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[6]~31_combout\ = (\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- (\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(6))) # (!\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- ((\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(6),
	datab => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(6),
	datac => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\,
	combout => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[6]~31_combout\);

-- Location: FF_X77_Y22_N25
\inst2|DRAM|new_sdram_controller_0|active_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[6]~31_combout\,
	ena => \inst2|DRAM|new_sdram_controller_0|active_rnw~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|active_data\(6));

-- Location: FF_X76_Y22_N11
\inst2|DRAM|new_sdram_controller_0|m_data[6]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|Selector110~1_combout\,
	clrn => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|m_data[6]~_Duplicate_1_q\);

-- Location: LCCOMB_X77_Y22_N2
\inst2|DRAM|new_sdram_controller_0|Selector110~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector110~0_combout\ = (\inst2|DRAM|new_sdram_controller_0|m_state.000010000~q\ & (\inst2|DRAM|new_sdram_controller_0|active_data\(6))) # (!\inst2|DRAM|new_sdram_controller_0|m_state.000010000~q\ & 
-- ((\inst2|DRAM|new_sdram_controller_0|m_state.000000010~q\ & (\inst2|DRAM|new_sdram_controller_0|active_data\(6))) # (!\inst2|DRAM|new_sdram_controller_0|m_state.000000010~q\ & ((\inst2|DRAM|new_sdram_controller_0|m_data[6]~_Duplicate_1_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|m_state.000010000~q\,
	datab => \inst2|DRAM|new_sdram_controller_0|active_data\(6),
	datac => \inst2|DRAM|new_sdram_controller_0|m_state.000000010~q\,
	datad => \inst2|DRAM|new_sdram_controller_0|m_data[6]~_Duplicate_1_q\,
	combout => \inst2|DRAM|new_sdram_controller_0|Selector110~0_combout\);

-- Location: LCCOMB_X76_Y22_N10
\inst2|DRAM|new_sdram_controller_0|Selector110~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector110~1_combout\ = (\inst2|DRAM|new_sdram_controller_0|m_data[11]~0_combout\ & ((\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[6]~31_combout\))) # 
-- (!\inst2|DRAM|new_sdram_controller_0|m_data[11]~0_combout\ & (\inst2|DRAM|new_sdram_controller_0|Selector110~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|Selector110~0_combout\,
	datab => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[6]~31_combout\,
	datad => \inst2|DRAM|new_sdram_controller_0|m_data[11]~0_combout\,
	combout => \inst2|DRAM|new_sdram_controller_0|Selector110~1_combout\);

-- Location: DDIOOUTCELL_X78_Y16_N18
\inst2|DRAM|new_sdram_controller_0|m_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|Selector110~1_combout\,
	clrn => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|m_data\(6));

-- Location: DDIOOECELL_X78_Y16_N19
\inst2|DRAM|new_sdram_controller_0|oe~_Duplicate_9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "high")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|ALT_INV_always5~0_combout\,
	asdata => VCC,
	aload => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	sload => \inst2|DRAM|new_sdram_controller_0|ALT_INV_m_state.000010000~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|oe~_Duplicate_9_q\);

-- Location: FF_X77_Y19_N9
\inst2|DRAM|new_sdram_controller_0|m_data[5]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|Selector111~1_combout\,
	clrn => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|m_data[5]~_Duplicate_1_q\);

-- Location: LCCOMB_X46_Y48_N10
\inst|u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[5]~feeder_combout\ = \inst|u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(5),
	combout => \inst|u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[5]~feeder_combout\);

-- Location: FF_X46_Y48_N11
\inst|u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	d => \inst|u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[5]~feeder_combout\,
	clrn => \inst|u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	ena => \inst|u1|modular_adc_0|control_internal|u_control_fsm|load_dout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(5));

-- Location: LCCOMB_X50_Y48_N10
\inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~6_combout\ = (\inst|u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(5) & (\inst|u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\ & 
-- \inst|u1|modular_adc_0|control_internal|u_control_fsm|pend~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(5),
	datac => \inst|u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\,
	datad => \inst|u1|modular_adc_0|control_internal|u_control_fsm|pend~q\,
	combout => \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~6_combout\);

-- Location: FF_X50_Y48_N11
\inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	d => \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~6_combout\,
	clrn => \inst|u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(5));

-- Location: LCCOMB_X75_Y22_N22
\inst4|write_buff[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|write_buff[5]~feeder_combout\ = \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(5),
	combout => \inst4|write_buff[5]~feeder_combout\);

-- Location: FF_X75_Y22_N23
\inst4|write_buff[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \inst4|write_buff[5]~feeder_combout\,
	ena => \inst4|write_buff[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|write_buff\(5));

-- Location: LCCOMB_X75_Y22_N30
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[5]~feeder_combout\ = \inst4|write_buff\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|write_buff\(5),
	combout => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[5]~feeder_combout\);

-- Location: FF_X75_Y22_N31
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[5]~feeder_combout\,
	ena => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(5));

-- Location: LCCOMB_X77_Y22_N20
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[5]~feeder_combout\ = \inst4|write_buff\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|write_buff\(5),
	combout => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[5]~feeder_combout\);

-- Location: FF_X77_Y22_N21
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[5]~feeder_combout\,
	ena => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(5));

-- Location: LCCOMB_X77_Y19_N28
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[5]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[5]~32_combout\ = (\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- ((\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(5)))) # (!\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- (\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\,
	datac => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(5),
	datad => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(5),
	combout => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[5]~32_combout\);

-- Location: FF_X77_Y19_N29
\inst2|DRAM|new_sdram_controller_0|active_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[5]~32_combout\,
	ena => \inst2|DRAM|new_sdram_controller_0|active_rnw~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|active_data\(5));

-- Location: LCCOMB_X77_Y19_N30
\inst2|DRAM|new_sdram_controller_0|Selector111~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector111~0_combout\ = (\inst2|DRAM|new_sdram_controller_0|m_state.000000010~q\ & (((\inst2|DRAM|new_sdram_controller_0|active_data\(5))))) # (!\inst2|DRAM|new_sdram_controller_0|m_state.000000010~q\ & 
-- ((\inst2|DRAM|new_sdram_controller_0|m_state.000010000~q\ & ((\inst2|DRAM|new_sdram_controller_0|active_data\(5)))) # (!\inst2|DRAM|new_sdram_controller_0|m_state.000010000~q\ & (\inst2|DRAM|new_sdram_controller_0|m_data[5]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|m_state.000000010~q\,
	datab => \inst2|DRAM|new_sdram_controller_0|m_state.000010000~q\,
	datac => \inst2|DRAM|new_sdram_controller_0|m_data[5]~_Duplicate_1_q\,
	datad => \inst2|DRAM|new_sdram_controller_0|active_data\(5),
	combout => \inst2|DRAM|new_sdram_controller_0|Selector111~0_combout\);

-- Location: LCCOMB_X77_Y19_N8
\inst2|DRAM|new_sdram_controller_0|Selector111~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector111~1_combout\ = (\inst2|DRAM|new_sdram_controller_0|m_data[11]~0_combout\ & ((\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[5]~32_combout\))) # 
-- (!\inst2|DRAM|new_sdram_controller_0|m_data[11]~0_combout\ & (\inst2|DRAM|new_sdram_controller_0|Selector111~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|Selector111~0_combout\,
	datac => \inst2|DRAM|new_sdram_controller_0|m_data[11]~0_combout\,
	datad => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[5]~32_combout\,
	combout => \inst2|DRAM|new_sdram_controller_0|Selector111~1_combout\);

-- Location: DDIOOUTCELL_X78_Y15_N4
\inst2|DRAM|new_sdram_controller_0|m_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|Selector111~1_combout\,
	clrn => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|m_data\(5));

-- Location: DDIOOECELL_X78_Y15_N5
\inst2|DRAM|new_sdram_controller_0|oe~_Duplicate_10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "high")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|ALT_INV_always5~0_combout\,
	asdata => VCC,
	aload => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	sload => \inst2|DRAM|new_sdram_controller_0|ALT_INV_m_state.000010000~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|oe~_Duplicate_10_q\);

-- Location: LCCOMB_X46_Y48_N28
\inst|u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[4]~feeder_combout\ = \inst|u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(4),
	combout => \inst|u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[4]~feeder_combout\);

-- Location: FF_X46_Y48_N29
\inst|u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	d => \inst|u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[4]~feeder_combout\,
	clrn => \inst|u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	ena => \inst|u1|modular_adc_0|control_internal|u_control_fsm|load_dout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(4));

-- Location: LCCOMB_X50_Y48_N20
\inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~7_combout\ = (\inst|u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(4) & (\inst|u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\ & 
-- \inst|u1|modular_adc_0|control_internal|u_control_fsm|pend~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(4),
	datac => \inst|u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\,
	datad => \inst|u1|modular_adc_0|control_internal|u_control_fsm|pend~q\,
	combout => \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~7_combout\);

-- Location: FF_X50_Y48_N21
\inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	d => \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~7_combout\,
	clrn => \inst|u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(4));

-- Location: LCCOMB_X72_Y24_N20
\inst4|write_buff[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|write_buff[4]~feeder_combout\ = \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(4),
	combout => \inst4|write_buff[4]~feeder_combout\);

-- Location: FF_X72_Y24_N21
\inst4|write_buff[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \inst4|write_buff[4]~feeder_combout\,
	ena => \inst4|write_buff[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|write_buff\(4));

-- Location: LCCOMB_X74_Y22_N16
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[4]~feeder_combout\ = \inst4|write_buff\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|write_buff\(4),
	combout => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[4]~feeder_combout\);

-- Location: FF_X74_Y22_N17
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[4]~feeder_combout\,
	ena => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(4));

-- Location: LCCOMB_X72_Y22_N30
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[4]~feeder_combout\ = \inst4|write_buff\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|write_buff\(4),
	combout => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[4]~feeder_combout\);

-- Location: FF_X72_Y22_N31
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[4]~feeder_combout\,
	ena => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(4));

-- Location: LCCOMB_X77_Y19_N16
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[4]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[4]~33_combout\ = (\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- (\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(4))) # (!\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- ((\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(4),
	datab => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\,
	datac => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(4),
	combout => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[4]~33_combout\);

-- Location: FF_X77_Y19_N27
\inst2|DRAM|new_sdram_controller_0|m_data[4]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|Selector112~1_combout\,
	clrn => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|m_data[4]~_Duplicate_1_q\);

-- Location: FF_X77_Y19_N17
\inst2|DRAM|new_sdram_controller_0|active_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[4]~33_combout\,
	ena => \inst2|DRAM|new_sdram_controller_0|active_rnw~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|active_data\(4));

-- Location: LCCOMB_X77_Y19_N2
\inst2|DRAM|new_sdram_controller_0|Selector112~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector112~0_combout\ = (\inst2|DRAM|new_sdram_controller_0|m_state.000010000~q\ & (((\inst2|DRAM|new_sdram_controller_0|active_data\(4))))) # (!\inst2|DRAM|new_sdram_controller_0|m_state.000010000~q\ & 
-- ((\inst2|DRAM|new_sdram_controller_0|m_state.000000010~q\ & ((\inst2|DRAM|new_sdram_controller_0|active_data\(4)))) # (!\inst2|DRAM|new_sdram_controller_0|m_state.000000010~q\ & (\inst2|DRAM|new_sdram_controller_0|m_data[4]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|m_data[4]~_Duplicate_1_q\,
	datab => \inst2|DRAM|new_sdram_controller_0|m_state.000010000~q\,
	datac => \inst2|DRAM|new_sdram_controller_0|m_state.000000010~q\,
	datad => \inst2|DRAM|new_sdram_controller_0|active_data\(4),
	combout => \inst2|DRAM|new_sdram_controller_0|Selector112~0_combout\);

-- Location: LCCOMB_X77_Y19_N26
\inst2|DRAM|new_sdram_controller_0|Selector112~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector112~1_combout\ = (\inst2|DRAM|new_sdram_controller_0|m_data[11]~0_combout\ & (\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[4]~33_combout\)) # 
-- (!\inst2|DRAM|new_sdram_controller_0|m_data[11]~0_combout\ & ((\inst2|DRAM|new_sdram_controller_0|Selector112~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[4]~33_combout\,
	datac => \inst2|DRAM|new_sdram_controller_0|m_data[11]~0_combout\,
	datad => \inst2|DRAM|new_sdram_controller_0|Selector112~0_combout\,
	combout => \inst2|DRAM|new_sdram_controller_0|Selector112~1_combout\);

-- Location: DDIOOUTCELL_X78_Y15_N11
\inst2|DRAM|new_sdram_controller_0|m_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|Selector112~1_combout\,
	clrn => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|m_data\(4));

-- Location: DDIOOECELL_X78_Y15_N12
\inst2|DRAM|new_sdram_controller_0|oe~_Duplicate_11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "high")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|ALT_INV_always5~0_combout\,
	asdata => VCC,
	aload => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	sload => \inst2|DRAM|new_sdram_controller_0|ALT_INV_m_state.000010000~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|oe~_Duplicate_11_q\);

-- Location: LCCOMB_X47_Y48_N12
\inst|u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[3]~feeder_combout\ = \inst|u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(3),
	combout => \inst|u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[3]~feeder_combout\);

-- Location: FF_X47_Y48_N13
\inst|u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	d => \inst|u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[3]~feeder_combout\,
	clrn => \inst|u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	ena => \inst|u1|modular_adc_0|control_internal|u_control_fsm|load_dout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(3));

-- Location: LCCOMB_X50_Y48_N14
\inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~8_combout\ = (\inst|u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(3) & (\inst|u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\ & 
-- \inst|u1|modular_adc_0|control_internal|u_control_fsm|pend~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(3),
	datac => \inst|u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\,
	datad => \inst|u1|modular_adc_0|control_internal|u_control_fsm|pend~q\,
	combout => \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~8_combout\);

-- Location: FF_X50_Y48_N15
\inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	d => \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~8_combout\,
	clrn => \inst|u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(3));

-- Location: LCCOMB_X72_Y24_N22
\inst4|write_buff[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|write_buff[3]~feeder_combout\ = \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(3),
	combout => \inst4|write_buff[3]~feeder_combout\);

-- Location: FF_X72_Y24_N23
\inst4|write_buff[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \inst4|write_buff[3]~feeder_combout\,
	ena => \inst4|write_buff[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|write_buff\(3));

-- Location: LCCOMB_X72_Y22_N0
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[3]~feeder_combout\ = \inst4|write_buff\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|write_buff\(3),
	combout => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[3]~feeder_combout\);

-- Location: FF_X72_Y22_N1
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[3]~feeder_combout\,
	ena => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(3));

-- Location: LCCOMB_X74_Y22_N2
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[3]~feeder_combout\ = \inst4|write_buff\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|write_buff\(3),
	combout => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[3]~feeder_combout\);

-- Location: FF_X74_Y22_N3
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[3]~feeder_combout\,
	ena => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(3));

-- Location: LCCOMB_X76_Y19_N16
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[3]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[3]~34_combout\ = (\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- ((\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(3)))) # (!\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- (\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(3),
	datac => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\,
	datad => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(3),
	combout => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[3]~34_combout\);

-- Location: FF_X76_Y19_N17
\inst2|DRAM|new_sdram_controller_0|active_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[3]~34_combout\,
	ena => \inst2|DRAM|new_sdram_controller_0|active_rnw~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|active_data\(3));

-- Location: FF_X77_Y19_N21
\inst2|DRAM|new_sdram_controller_0|m_data[3]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|Selector113~1_combout\,
	clrn => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|m_data[3]~_Duplicate_1_q\);

-- Location: LCCOMB_X77_Y19_N12
\inst2|DRAM|new_sdram_controller_0|Selector113~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector113~0_combout\ = (\inst2|DRAM|new_sdram_controller_0|m_state.000010000~q\ & (\inst2|DRAM|new_sdram_controller_0|active_data\(3))) # (!\inst2|DRAM|new_sdram_controller_0|m_state.000010000~q\ & 
-- ((\inst2|DRAM|new_sdram_controller_0|m_state.000000010~q\ & (\inst2|DRAM|new_sdram_controller_0|active_data\(3))) # (!\inst2|DRAM|new_sdram_controller_0|m_state.000000010~q\ & ((\inst2|DRAM|new_sdram_controller_0|m_data[3]~_Duplicate_1_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|m_state.000010000~q\,
	datab => \inst2|DRAM|new_sdram_controller_0|active_data\(3),
	datac => \inst2|DRAM|new_sdram_controller_0|m_state.000000010~q\,
	datad => \inst2|DRAM|new_sdram_controller_0|m_data[3]~_Duplicate_1_q\,
	combout => \inst2|DRAM|new_sdram_controller_0|Selector113~0_combout\);

-- Location: LCCOMB_X77_Y19_N20
\inst2|DRAM|new_sdram_controller_0|Selector113~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector113~1_combout\ = (\inst2|DRAM|new_sdram_controller_0|m_data[11]~0_combout\ & (\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[3]~34_combout\)) # 
-- (!\inst2|DRAM|new_sdram_controller_0|m_data[11]~0_combout\ & ((\inst2|DRAM|new_sdram_controller_0|Selector113~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[3]~34_combout\,
	datac => \inst2|DRAM|new_sdram_controller_0|m_data[11]~0_combout\,
	datad => \inst2|DRAM|new_sdram_controller_0|Selector113~0_combout\,
	combout => \inst2|DRAM|new_sdram_controller_0|Selector113~1_combout\);

-- Location: DDIOOUTCELL_X78_Y3_N11
\inst2|DRAM|new_sdram_controller_0|m_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|Selector113~1_combout\,
	clrn => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|m_data\(3));

-- Location: DDIOOECELL_X78_Y3_N12
\inst2|DRAM|new_sdram_controller_0|oe~_Duplicate_12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "high")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|ALT_INV_always5~0_combout\,
	asdata => VCC,
	aload => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	sload => \inst2|DRAM|new_sdram_controller_0|ALT_INV_m_state.000010000~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|oe~_Duplicate_12_q\);

-- Location: FF_X77_Y19_N23
\inst2|DRAM|new_sdram_controller_0|m_data[2]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|Selector114~1_combout\,
	clrn => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|m_data[2]~_Duplicate_1_q\);

-- Location: LCCOMB_X46_Y48_N22
\inst|u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[2]~feeder_combout\ = \inst|u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(2),
	combout => \inst|u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[2]~feeder_combout\);

-- Location: FF_X46_Y48_N23
\inst|u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	d => \inst|u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[2]~feeder_combout\,
	clrn => \inst|u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	ena => \inst|u1|modular_adc_0|control_internal|u_control_fsm|load_dout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(2));

-- Location: LCCOMB_X47_Y48_N26
\inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~9_combout\ = (\inst|u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\ & (\inst|u1|modular_adc_0|control_internal|u_control_fsm|pend~q\ & 
-- \inst|u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\,
	datac => \inst|u1|modular_adc_0|control_internal|u_control_fsm|pend~q\,
	datad => \inst|u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(2),
	combout => \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~9_combout\);

-- Location: FF_X47_Y48_N27
\inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	d => \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~9_combout\,
	clrn => \inst|u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(2));

-- Location: LCCOMB_X72_Y24_N8
\inst4|write_buff[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|write_buff[2]~feeder_combout\ = \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(2),
	combout => \inst4|write_buff[2]~feeder_combout\);

-- Location: FF_X72_Y24_N9
\inst4|write_buff[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \inst4|write_buff[2]~feeder_combout\,
	ena => \inst4|write_buff[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|write_buff\(2));

-- Location: LCCOMB_X72_Y22_N10
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[2]~feeder_combout\ = \inst4|write_buff\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|write_buff\(2),
	combout => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[2]~feeder_combout\);

-- Location: FF_X72_Y22_N11
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[2]~feeder_combout\,
	ena => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(2));

-- Location: FF_X74_Y22_N15
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => \inst4|write_buff\(2),
	sload => VCC,
	ena => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(2));

-- Location: LCCOMB_X76_Y19_N10
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[2]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[2]~35_combout\ = (\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- ((\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(2)))) # (!\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- (\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(2),
	datac => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\,
	datad => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(2),
	combout => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[2]~35_combout\);

-- Location: FF_X76_Y19_N11
\inst2|DRAM|new_sdram_controller_0|active_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[2]~35_combout\,
	ena => \inst2|DRAM|new_sdram_controller_0|active_rnw~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|active_data\(2));

-- Location: LCCOMB_X77_Y19_N14
\inst2|DRAM|new_sdram_controller_0|Selector114~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector114~0_combout\ = (\inst2|DRAM|new_sdram_controller_0|m_state.000000010~q\ & (((\inst2|DRAM|new_sdram_controller_0|active_data\(2))))) # (!\inst2|DRAM|new_sdram_controller_0|m_state.000000010~q\ & 
-- ((\inst2|DRAM|new_sdram_controller_0|m_state.000010000~q\ & ((\inst2|DRAM|new_sdram_controller_0|active_data\(2)))) # (!\inst2|DRAM|new_sdram_controller_0|m_state.000010000~q\ & (\inst2|DRAM|new_sdram_controller_0|m_data[2]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|m_state.000000010~q\,
	datab => \inst2|DRAM|new_sdram_controller_0|m_state.000010000~q\,
	datac => \inst2|DRAM|new_sdram_controller_0|m_data[2]~_Duplicate_1_q\,
	datad => \inst2|DRAM|new_sdram_controller_0|active_data\(2),
	combout => \inst2|DRAM|new_sdram_controller_0|Selector114~0_combout\);

-- Location: LCCOMB_X77_Y19_N22
\inst2|DRAM|new_sdram_controller_0|Selector114~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector114~1_combout\ = (\inst2|DRAM|new_sdram_controller_0|m_data[11]~0_combout\ & ((\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[2]~35_combout\))) # 
-- (!\inst2|DRAM|new_sdram_controller_0|m_data[11]~0_combout\ & (\inst2|DRAM|new_sdram_controller_0|Selector114~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|DRAM|new_sdram_controller_0|Selector114~0_combout\,
	datac => \inst2|DRAM|new_sdram_controller_0|m_data[11]~0_combout\,
	datad => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[2]~35_combout\,
	combout => \inst2|DRAM|new_sdram_controller_0|Selector114~1_combout\);

-- Location: DDIOOUTCELL_X78_Y3_N4
\inst2|DRAM|new_sdram_controller_0|m_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|Selector114~1_combout\,
	clrn => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|m_data\(2));

-- Location: DDIOOECELL_X78_Y3_N5
\inst2|DRAM|new_sdram_controller_0|oe~_Duplicate_13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "high")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|ALT_INV_always5~0_combout\,
	asdata => VCC,
	aload => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	sload => \inst2|DRAM|new_sdram_controller_0|ALT_INV_m_state.000010000~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|oe~_Duplicate_13_q\);

-- Location: LCCOMB_X46_Y48_N4
\inst|u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[1]~feeder_combout\ = \inst|u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(1),
	combout => \inst|u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[1]~feeder_combout\);

-- Location: FF_X46_Y48_N5
\inst|u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	d => \inst|u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[1]~feeder_combout\,
	clrn => \inst|u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	ena => \inst|u1|modular_adc_0|control_internal|u_control_fsm|load_dout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(1));

-- Location: LCCOMB_X50_Y48_N8
\inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~10_combout\ = (\inst|u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\ & (\inst|u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(1) & 
-- \inst|u1|modular_adc_0|control_internal|u_control_fsm|pend~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\,
	datac => \inst|u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(1),
	datad => \inst|u1|modular_adc_0|control_internal|u_control_fsm|pend~q\,
	combout => \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~10_combout\);

-- Location: FF_X50_Y48_N9
\inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	d => \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~10_combout\,
	clrn => \inst|u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(1));

-- Location: LCCOMB_X72_Y24_N18
\inst4|write_buff[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|write_buff[1]~feeder_combout\ = \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(1),
	combout => \inst4|write_buff[1]~feeder_combout\);

-- Location: FF_X72_Y24_N19
\inst4|write_buff[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \inst4|write_buff[1]~feeder_combout\,
	ena => \inst4|write_buff[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|write_buff\(1));

-- Location: LCCOMB_X72_Y22_N4
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[1]~feeder_combout\ = \inst4|write_buff\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|write_buff\(1),
	combout => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[1]~feeder_combout\);

-- Location: FF_X72_Y22_N5
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[1]~feeder_combout\,
	ena => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(1));

-- Location: LCCOMB_X74_Y22_N4
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[1]~feeder_combout\ = \inst4|write_buff\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|write_buff\(1),
	combout => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[1]~feeder_combout\);

-- Location: FF_X74_Y22_N5
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[1]~feeder_combout\,
	ena => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(1));

-- Location: LCCOMB_X76_Y19_N20
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[1]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[1]~36_combout\ = (\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- ((\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(1)))) # (!\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- (\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(1),
	datac => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\,
	datad => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(1),
	combout => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[1]~36_combout\);

-- Location: FF_X76_Y19_N21
\inst2|DRAM|new_sdram_controller_0|active_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[1]~36_combout\,
	ena => \inst2|DRAM|new_sdram_controller_0|active_rnw~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|active_data\(1));

-- Location: FF_X77_Y19_N25
\inst2|DRAM|new_sdram_controller_0|m_data[1]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|Selector115~1_combout\,
	clrn => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|m_data[1]~_Duplicate_1_q\);

-- Location: LCCOMB_X77_Y19_N0
\inst2|DRAM|new_sdram_controller_0|Selector115~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector115~0_combout\ = (\inst2|DRAM|new_sdram_controller_0|m_state.000000010~q\ & (((\inst2|DRAM|new_sdram_controller_0|active_data\(1))))) # (!\inst2|DRAM|new_sdram_controller_0|m_state.000000010~q\ & 
-- ((\inst2|DRAM|new_sdram_controller_0|m_state.000010000~q\ & (\inst2|DRAM|new_sdram_controller_0|active_data\(1))) # (!\inst2|DRAM|new_sdram_controller_0|m_state.000010000~q\ & ((\inst2|DRAM|new_sdram_controller_0|m_data[1]~_Duplicate_1_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|m_state.000000010~q\,
	datab => \inst2|DRAM|new_sdram_controller_0|m_state.000010000~q\,
	datac => \inst2|DRAM|new_sdram_controller_0|active_data\(1),
	datad => \inst2|DRAM|new_sdram_controller_0|m_data[1]~_Duplicate_1_q\,
	combout => \inst2|DRAM|new_sdram_controller_0|Selector115~0_combout\);

-- Location: LCCOMB_X77_Y19_N24
\inst2|DRAM|new_sdram_controller_0|Selector115~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector115~1_combout\ = (\inst2|DRAM|new_sdram_controller_0|m_data[11]~0_combout\ & (\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[1]~36_combout\)) # 
-- (!\inst2|DRAM|new_sdram_controller_0|m_data[11]~0_combout\ & ((\inst2|DRAM|new_sdram_controller_0|Selector115~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[1]~36_combout\,
	datac => \inst2|DRAM|new_sdram_controller_0|m_data[11]~0_combout\,
	datad => \inst2|DRAM|new_sdram_controller_0|Selector115~0_combout\,
	combout => \inst2|DRAM|new_sdram_controller_0|Selector115~1_combout\);

-- Location: DDIOOUTCELL_X78_Y16_N11
\inst2|DRAM|new_sdram_controller_0|m_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|Selector115~1_combout\,
	clrn => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|m_data\(1));

-- Location: DDIOOECELL_X78_Y16_N12
\inst2|DRAM|new_sdram_controller_0|oe~_Duplicate_14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "high")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|ALT_INV_always5~0_combout\,
	asdata => VCC,
	aload => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	sload => \inst2|DRAM|new_sdram_controller_0|ALT_INV_m_state.000010000~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|oe~_Duplicate_14_q\);

-- Location: FF_X46_Y48_N15
\inst|u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	asdata => \inst|u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(0),
	clrn => \inst|u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sload => VCC,
	ena => \inst|u1|modular_adc_0|control_internal|u_control_fsm|load_dout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(0));

-- Location: LCCOMB_X47_Y48_N20
\inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~11_combout\ = (\inst|u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(0) & (\inst|u1|modular_adc_0|control_internal|u_control_fsm|pend~q\ & 
-- \inst|u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(0),
	datac => \inst|u1|modular_adc_0|control_internal|u_control_fsm|pend~q\,
	datad => \inst|u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\,
	combout => \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~11_combout\);

-- Location: FF_X47_Y48_N21
\inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	d => \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~11_combout\,
	clrn => \inst|u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(0));

-- Location: LCCOMB_X72_Y24_N12
\inst4|write_buff[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|write_buff[0]~feeder_combout\ = \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(0),
	combout => \inst4|write_buff[0]~feeder_combout\);

-- Location: FF_X72_Y24_N13
\inst4|write_buff[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \inst4|write_buff[0]~feeder_combout\,
	ena => \inst4|write_buff[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|write_buff\(0));

-- Location: LCCOMB_X75_Y22_N0
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[0]~feeder_combout\ = \inst4|write_buff\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|write_buff\(0),
	combout => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[0]~feeder_combout\);

-- Location: FF_X75_Y22_N1
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[0]~feeder_combout\,
	ena => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(0));

-- Location: LCCOMB_X77_Y22_N6
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[0]~feeder_combout\ = \inst4|write_buff\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|write_buff\(0),
	combout => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[0]~feeder_combout\);

-- Location: FF_X77_Y22_N7
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[0]~feeder_combout\,
	ena => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(0));

-- Location: LCCOMB_X77_Y19_N10
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[0]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[0]~37_combout\ = (\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- ((\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(0)))) # (!\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- (\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(0),
	datab => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\,
	datad => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(0),
	combout => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[0]~37_combout\);

-- Location: FF_X77_Y19_N11
\inst2|DRAM|new_sdram_controller_0|active_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[0]~37_combout\,
	ena => \inst2|DRAM|new_sdram_controller_0|active_rnw~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|active_data\(0));

-- Location: FF_X77_Y19_N19
\inst2|DRAM|new_sdram_controller_0|m_data[0]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|Selector116~1_combout\,
	clrn => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|m_data[0]~_Duplicate_1_q\);

-- Location: LCCOMB_X77_Y19_N4
\inst2|DRAM|new_sdram_controller_0|Selector116~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector116~0_combout\ = (\inst2|DRAM|new_sdram_controller_0|m_state.000010000~q\ & (\inst2|DRAM|new_sdram_controller_0|active_data\(0))) # (!\inst2|DRAM|new_sdram_controller_0|m_state.000010000~q\ & 
-- ((\inst2|DRAM|new_sdram_controller_0|m_state.000000010~q\ & (\inst2|DRAM|new_sdram_controller_0|active_data\(0))) # (!\inst2|DRAM|new_sdram_controller_0|m_state.000000010~q\ & ((\inst2|DRAM|new_sdram_controller_0|m_data[0]~_Duplicate_1_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|active_data\(0),
	datab => \inst2|DRAM|new_sdram_controller_0|m_state.000010000~q\,
	datac => \inst2|DRAM|new_sdram_controller_0|m_state.000000010~q\,
	datad => \inst2|DRAM|new_sdram_controller_0|m_data[0]~_Duplicate_1_q\,
	combout => \inst2|DRAM|new_sdram_controller_0|Selector116~0_combout\);

-- Location: LCCOMB_X77_Y19_N18
\inst2|DRAM|new_sdram_controller_0|Selector116~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector116~1_combout\ = (\inst2|DRAM|new_sdram_controller_0|m_data[11]~0_combout\ & ((\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[0]~37_combout\))) # 
-- (!\inst2|DRAM|new_sdram_controller_0|m_data[11]~0_combout\ & (\inst2|DRAM|new_sdram_controller_0|Selector116~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|DRAM|new_sdram_controller_0|Selector116~0_combout\,
	datac => \inst2|DRAM|new_sdram_controller_0|m_data[11]~0_combout\,
	datad => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[0]~37_combout\,
	combout => \inst2|DRAM|new_sdram_controller_0|Selector116~1_combout\);

-- Location: DDIOOUTCELL_X78_Y16_N4
\inst2|DRAM|new_sdram_controller_0|m_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|Selector116~1_combout\,
	clrn => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|m_data\(0));

-- Location: DDIOOECELL_X78_Y16_N5
\inst2|DRAM|new_sdram_controller_0|oe~_Duplicate_15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "high")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|ALT_INV_always5~0_combout\,
	asdata => VCC,
	aload => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	sload => \inst2|DRAM|new_sdram_controller_0|ALT_INV_m_state.000010000~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|oe~_Duplicate_15_q\);

-- Location: CLKCTRL_G9
\inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[1]~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[1]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[1]~clkctrl_outclk\);

-- Location: DDIOOUTCELL_X78_Y21_N25
\inst2|DRAM|new_sdram_controller_0|m_cmd[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "high")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|ALT_INV_Selector21~1_combout\,
	asdata => VCC,
	aload => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|m_cmd\(1));

-- Location: LCCOMB_X74_Y18_N22
\inst2|DRAM|new_sdram_controller_0|Selector19~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector19~1_combout\ = (!\inst2|DRAM|new_sdram_controller_0|m_state.000000100~q\ & (!\inst2|DRAM|new_sdram_controller_0|m_state.001000000~q\ & (!\inst2|DRAM|new_sdram_controller_0|m_state.010000000~q\ & 
-- \inst2|DRAM|new_sdram_controller_0|m_state.000000001~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|m_state.000000100~q\,
	datab => \inst2|DRAM|new_sdram_controller_0|m_state.001000000~q\,
	datac => \inst2|DRAM|new_sdram_controller_0|m_state.010000000~q\,
	datad => \inst2|DRAM|new_sdram_controller_0|m_state.000000001~q\,
	combout => \inst2|DRAM|new_sdram_controller_0|Selector19~1_combout\);

-- Location: LCCOMB_X74_Y18_N26
\inst2|DRAM|new_sdram_controller_0|Selector19~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector19~2_combout\ = (\inst2|DRAM|new_sdram_controller_0|m_state.000000100~q\ & (((\inst2|DRAM|new_sdram_controller_0|m_state.001000000~q\ & !\inst2|DRAM|new_sdram_controller_0|refresh_request~q\)) # 
-- (!\inst2|DRAM|new_sdram_controller_0|m_next.010000000~q\))) # (!\inst2|DRAM|new_sdram_controller_0|m_state.000000100~q\ & (\inst2|DRAM|new_sdram_controller_0|m_state.001000000~q\ & (!\inst2|DRAM|new_sdram_controller_0|refresh_request~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|m_state.000000100~q\,
	datab => \inst2|DRAM|new_sdram_controller_0|m_state.001000000~q\,
	datac => \inst2|DRAM|new_sdram_controller_0|refresh_request~q\,
	datad => \inst2|DRAM|new_sdram_controller_0|m_next.010000000~q\,
	combout => \inst2|DRAM|new_sdram_controller_0|Selector19~2_combout\);

-- Location: LCCOMB_X70_Y19_N12
\inst2|DRAM|new_sdram_controller_0|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector0~0_combout\ = (\inst2|DRAM|new_sdram_controller_0|i_state.000~q\ & ((\inst2|DRAM|new_sdram_controller_0|i_cmd\(3)) # (!\inst2|DRAM|new_sdram_controller_0|i_state.101~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|DRAM|new_sdram_controller_0|i_state.000~q\,
	datac => \inst2|DRAM|new_sdram_controller_0|i_cmd\(3),
	datad => \inst2|DRAM|new_sdram_controller_0|i_state.101~q\,
	combout => \inst2|DRAM|new_sdram_controller_0|Selector0~0_combout\);

-- Location: FF_X70_Y19_N13
\inst2|DRAM|new_sdram_controller_0|i_cmd[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|Selector0~0_combout\,
	clrn => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|i_cmd\(3));

-- Location: LCCOMB_X75_Y18_N4
\inst2|DRAM|new_sdram_controller_0|Selector19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector19~0_combout\ = (!\inst2|DRAM|new_sdram_controller_0|m_state.000000001~q\ & ((\inst2|DRAM|new_sdram_controller_0|init_done~q\ & (!\inst2|DRAM|new_sdram_controller_0|refresh_request~q\)) # 
-- (!\inst2|DRAM|new_sdram_controller_0|init_done~q\ & ((!\inst2|DRAM|new_sdram_controller_0|i_cmd\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|refresh_request~q\,
	datab => \inst2|DRAM|new_sdram_controller_0|i_cmd\(3),
	datac => \inst2|DRAM|new_sdram_controller_0|init_done~q\,
	datad => \inst2|DRAM|new_sdram_controller_0|m_state.000000001~q\,
	combout => \inst2|DRAM|new_sdram_controller_0|Selector19~0_combout\);

-- Location: LCCOMB_X74_Y18_N12
\inst2|DRAM|new_sdram_controller_0|Selector19~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector19~3_combout\ = (!\inst2|DRAM|new_sdram_controller_0|Selector19~0_combout\ & (((!\inst2|DRAM|new_sdram_controller_0|Selector19~1_combout\ & !\inst2|DRAM|new_sdram_controller_0|Selector19~2_combout\)) # 
-- (!\inst2|DRAM|new_sdram_controller_0|active_cs_n~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|Selector19~1_combout\,
	datab => \inst2|DRAM|new_sdram_controller_0|active_cs_n~q\,
	datac => \inst2|DRAM|new_sdram_controller_0|Selector19~2_combout\,
	datad => \inst2|DRAM|new_sdram_controller_0|Selector19~0_combout\,
	combout => \inst2|DRAM|new_sdram_controller_0|Selector19~3_combout\);

-- Location: DDIOOUTCELL_X78_Y17_N18
\inst2|DRAM|new_sdram_controller_0|m_cmd[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "high")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|ALT_INV_Selector19~3_combout\,
	asdata => VCC,
	aload => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|m_cmd\(3));

-- Location: DDIOOUTCELL_X78_Y21_N18
\inst2|DRAM|new_sdram_controller_0|m_cmd[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "high")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|ALT_INV_Selector20~0_combout\,
	asdata => VCC,
	aload => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|m_cmd\(2));

-- Location: DDIOOUTCELL_X78_Y17_N25
\inst2|DRAM|new_sdram_controller_0|m_cmd[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "high")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|ALT_INV_Selector22~1_combout\,
	asdata => VCC,
	aload => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|m_cmd\(0));

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

-- Location: DDIOINCELL_X78_Y31_N3
\inst2|DRAM|new_sdram_controller_0|za_data[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM_DQ[15]~input_o\,
	clrn => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|za_data\(15));

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

-- Location: DDIOINCELL_X78_Y31_N17
\inst2|DRAM|new_sdram_controller_0|za_data[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM_DQ[14]~input_o\,
	clrn => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|za_data\(14));

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

-- Location: DDIOINCELL_X78_Y31_N24
\inst2|DRAM|new_sdram_controller_0|za_data[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM_DQ[13]~input_o\,
	clrn => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|za_data\(13));

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

-- Location: DDIOINCELL_X78_Y31_N10
\inst2|DRAM|new_sdram_controller_0|za_data[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM_DQ[12]~input_o\,
	clrn => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|za_data\(12));

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
\inst2|DRAM|new_sdram_controller_0|za_data[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM_DQ[11]~input_o\,
	clrn => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|za_data\(11));

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
\inst2|DRAM|new_sdram_controller_0|za_data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM_DQ[10]~input_o\,
	clrn => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|za_data\(10));

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
\inst2|DRAM|new_sdram_controller_0|za_data[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM_DQ[9]~input_o\,
	clrn => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|za_data\(9));

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
\inst2|DRAM|new_sdram_controller_0|za_data[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM_DQ[8]~input_o\,
	clrn => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|za_data\(8));

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
\inst2|DRAM|new_sdram_controller_0|za_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM_DQ[7]~input_o\,
	clrn => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|za_data\(7));

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
\inst2|DRAM|new_sdram_controller_0|za_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM_DQ[6]~input_o\,
	clrn => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|za_data\(6));

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
\inst2|DRAM|new_sdram_controller_0|za_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM_DQ[5]~input_o\,
	clrn => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|za_data\(5));

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
\inst2|DRAM|new_sdram_controller_0|za_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM_DQ[4]~input_o\,
	clrn => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|za_data\(4));

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

-- Location: DDIOINCELL_X78_Y3_N10
\inst2|DRAM|new_sdram_controller_0|za_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM_DQ[3]~input_o\,
	clrn => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|za_data\(3));

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
\inst2|DRAM|new_sdram_controller_0|za_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM_DQ[2]~input_o\,
	clrn => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|za_data\(2));

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
\inst2|DRAM|new_sdram_controller_0|za_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM_DQ[1]~input_o\,
	clrn => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|za_data\(1));

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
\inst2|DRAM|new_sdram_controller_0|za_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM_DQ[0]~input_o\,
	clrn => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|za_data\(0));

-- Location: LCCOMB_X77_Y29_N0
\inst4|Audio_Out[0]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Audio_Out[0]~16_combout\ = (\inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(0) & (\inst2|DRAM|new_sdram_controller_0|za_data\(0) $ (VCC))) # (!\inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(0) & 
-- (\inst2|DRAM|new_sdram_controller_0|za_data\(0) & VCC))
-- \inst4|Audio_Out[0]~17\ = CARRY((\inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(0) & \inst2|DRAM|new_sdram_controller_0|za_data\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(0),
	datab => \inst2|DRAM|new_sdram_controller_0|za_data\(0),
	datad => VCC,
	combout => \inst4|Audio_Out[0]~16_combout\,
	cout => \inst4|Audio_Out[0]~17\);

-- Location: LCCOMB_X77_Y29_N2
\inst4|Audio_Out[1]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Audio_Out[1]~18_combout\ = (\inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(1) & ((\inst2|DRAM|new_sdram_controller_0|za_data\(1) & (\inst4|Audio_Out[0]~17\ & VCC)) # (!\inst2|DRAM|new_sdram_controller_0|za_data\(1) & 
-- (!\inst4|Audio_Out[0]~17\)))) # (!\inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(1) & ((\inst2|DRAM|new_sdram_controller_0|za_data\(1) & (!\inst4|Audio_Out[0]~17\)) # (!\inst2|DRAM|new_sdram_controller_0|za_data\(1) & 
-- ((\inst4|Audio_Out[0]~17\) # (GND)))))
-- \inst4|Audio_Out[1]~19\ = CARRY((\inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(1) & (!\inst2|DRAM|new_sdram_controller_0|za_data\(1) & !\inst4|Audio_Out[0]~17\)) # (!\inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(1) & 
-- ((!\inst4|Audio_Out[0]~17\) # (!\inst2|DRAM|new_sdram_controller_0|za_data\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(1),
	datab => \inst2|DRAM|new_sdram_controller_0|za_data\(1),
	datad => VCC,
	cin => \inst4|Audio_Out[0]~17\,
	combout => \inst4|Audio_Out[1]~18_combout\,
	cout => \inst4|Audio_Out[1]~19\);

-- Location: LCCOMB_X77_Y29_N4
\inst4|Audio_Out[2]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Audio_Out[2]~20_combout\ = ((\inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(2) $ (\inst2|DRAM|new_sdram_controller_0|za_data\(2) $ (!\inst4|Audio_Out[1]~19\)))) # (GND)
-- \inst4|Audio_Out[2]~21\ = CARRY((\inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(2) & ((\inst2|DRAM|new_sdram_controller_0|za_data\(2)) # (!\inst4|Audio_Out[1]~19\))) # (!\inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(2) & 
-- (\inst2|DRAM|new_sdram_controller_0|za_data\(2) & !\inst4|Audio_Out[1]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(2),
	datab => \inst2|DRAM|new_sdram_controller_0|za_data\(2),
	datad => VCC,
	cin => \inst4|Audio_Out[1]~19\,
	combout => \inst4|Audio_Out[2]~20_combout\,
	cout => \inst4|Audio_Out[2]~21\);

-- Location: LCCOMB_X77_Y29_N6
\inst4|Audio_Out[3]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Audio_Out[3]~22_combout\ = (\inst2|DRAM|new_sdram_controller_0|za_data\(3) & ((\inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(3) & (\inst4|Audio_Out[2]~21\ & VCC)) # 
-- (!\inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(3) & (!\inst4|Audio_Out[2]~21\)))) # (!\inst2|DRAM|new_sdram_controller_0|za_data\(3) & ((\inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(3) & (!\inst4|Audio_Out[2]~21\)) # 
-- (!\inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(3) & ((\inst4|Audio_Out[2]~21\) # (GND)))))
-- \inst4|Audio_Out[3]~23\ = CARRY((\inst2|DRAM|new_sdram_controller_0|za_data\(3) & (!\inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(3) & !\inst4|Audio_Out[2]~21\)) # (!\inst2|DRAM|new_sdram_controller_0|za_data\(3) & 
-- ((!\inst4|Audio_Out[2]~21\) # (!\inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|za_data\(3),
	datab => \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(3),
	datad => VCC,
	cin => \inst4|Audio_Out[2]~21\,
	combout => \inst4|Audio_Out[3]~22_combout\,
	cout => \inst4|Audio_Out[3]~23\);

-- Location: LCCOMB_X77_Y29_N8
\inst4|Audio_Out[4]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Audio_Out[4]~24_combout\ = ((\inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(4) $ (\inst2|DRAM|new_sdram_controller_0|za_data\(4) $ (!\inst4|Audio_Out[3]~23\)))) # (GND)
-- \inst4|Audio_Out[4]~25\ = CARRY((\inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(4) & ((\inst2|DRAM|new_sdram_controller_0|za_data\(4)) # (!\inst4|Audio_Out[3]~23\))) # (!\inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(4) & 
-- (\inst2|DRAM|new_sdram_controller_0|za_data\(4) & !\inst4|Audio_Out[3]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(4),
	datab => \inst2|DRAM|new_sdram_controller_0|za_data\(4),
	datad => VCC,
	cin => \inst4|Audio_Out[3]~23\,
	combout => \inst4|Audio_Out[4]~24_combout\,
	cout => \inst4|Audio_Out[4]~25\);

-- Location: LCCOMB_X77_Y29_N10
\inst4|Audio_Out[5]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Audio_Out[5]~26_combout\ = (\inst2|DRAM|new_sdram_controller_0|za_data\(5) & ((\inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(5) & (\inst4|Audio_Out[4]~25\ & VCC)) # 
-- (!\inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(5) & (!\inst4|Audio_Out[4]~25\)))) # (!\inst2|DRAM|new_sdram_controller_0|za_data\(5) & ((\inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(5) & (!\inst4|Audio_Out[4]~25\)) # 
-- (!\inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(5) & ((\inst4|Audio_Out[4]~25\) # (GND)))))
-- \inst4|Audio_Out[5]~27\ = CARRY((\inst2|DRAM|new_sdram_controller_0|za_data\(5) & (!\inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(5) & !\inst4|Audio_Out[4]~25\)) # (!\inst2|DRAM|new_sdram_controller_0|za_data\(5) & 
-- ((!\inst4|Audio_Out[4]~25\) # (!\inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|za_data\(5),
	datab => \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(5),
	datad => VCC,
	cin => \inst4|Audio_Out[4]~25\,
	combout => \inst4|Audio_Out[5]~26_combout\,
	cout => \inst4|Audio_Out[5]~27\);

-- Location: LCCOMB_X77_Y29_N12
\inst4|Audio_Out[6]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Audio_Out[6]~28_combout\ = ((\inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(6) $ (\inst2|DRAM|new_sdram_controller_0|za_data\(6) $ (!\inst4|Audio_Out[5]~27\)))) # (GND)
-- \inst4|Audio_Out[6]~29\ = CARRY((\inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(6) & ((\inst2|DRAM|new_sdram_controller_0|za_data\(6)) # (!\inst4|Audio_Out[5]~27\))) # (!\inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(6) & 
-- (\inst2|DRAM|new_sdram_controller_0|za_data\(6) & !\inst4|Audio_Out[5]~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(6),
	datab => \inst2|DRAM|new_sdram_controller_0|za_data\(6),
	datad => VCC,
	cin => \inst4|Audio_Out[5]~27\,
	combout => \inst4|Audio_Out[6]~28_combout\,
	cout => \inst4|Audio_Out[6]~29\);

-- Location: LCCOMB_X77_Y29_N14
\inst4|Audio_Out[7]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Audio_Out[7]~30_combout\ = (\inst2|DRAM|new_sdram_controller_0|za_data\(7) & ((\inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(7) & (\inst4|Audio_Out[6]~29\ & VCC)) # 
-- (!\inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(7) & (!\inst4|Audio_Out[6]~29\)))) # (!\inst2|DRAM|new_sdram_controller_0|za_data\(7) & ((\inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(7) & (!\inst4|Audio_Out[6]~29\)) # 
-- (!\inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(7) & ((\inst4|Audio_Out[6]~29\) # (GND)))))
-- \inst4|Audio_Out[7]~31\ = CARRY((\inst2|DRAM|new_sdram_controller_0|za_data\(7) & (!\inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(7) & !\inst4|Audio_Out[6]~29\)) # (!\inst2|DRAM|new_sdram_controller_0|za_data\(7) & 
-- ((!\inst4|Audio_Out[6]~29\) # (!\inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|za_data\(7),
	datab => \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(7),
	datad => VCC,
	cin => \inst4|Audio_Out[6]~29\,
	combout => \inst4|Audio_Out[7]~30_combout\,
	cout => \inst4|Audio_Out[7]~31\);

-- Location: LCCOMB_X77_Y29_N16
\inst4|Audio_Out[8]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Audio_Out[8]~32_combout\ = ((\inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(8) $ (\inst2|DRAM|new_sdram_controller_0|za_data\(8) $ (!\inst4|Audio_Out[7]~31\)))) # (GND)
-- \inst4|Audio_Out[8]~33\ = CARRY((\inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(8) & ((\inst2|DRAM|new_sdram_controller_0|za_data\(8)) # (!\inst4|Audio_Out[7]~31\))) # (!\inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(8) & 
-- (\inst2|DRAM|new_sdram_controller_0|za_data\(8) & !\inst4|Audio_Out[7]~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(8),
	datab => \inst2|DRAM|new_sdram_controller_0|za_data\(8),
	datad => VCC,
	cin => \inst4|Audio_Out[7]~31\,
	combout => \inst4|Audio_Out[8]~32_combout\,
	cout => \inst4|Audio_Out[8]~33\);

-- Location: LCCOMB_X77_Y29_N18
\inst4|Audio_Out[9]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Audio_Out[9]~34_combout\ = (\inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(9) & ((\inst2|DRAM|new_sdram_controller_0|za_data\(9) & (\inst4|Audio_Out[8]~33\ & VCC)) # (!\inst2|DRAM|new_sdram_controller_0|za_data\(9) & 
-- (!\inst4|Audio_Out[8]~33\)))) # (!\inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(9) & ((\inst2|DRAM|new_sdram_controller_0|za_data\(9) & (!\inst4|Audio_Out[8]~33\)) # (!\inst2|DRAM|new_sdram_controller_0|za_data\(9) & 
-- ((\inst4|Audio_Out[8]~33\) # (GND)))))
-- \inst4|Audio_Out[9]~35\ = CARRY((\inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(9) & (!\inst2|DRAM|new_sdram_controller_0|za_data\(9) & !\inst4|Audio_Out[8]~33\)) # (!\inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(9) & 
-- ((!\inst4|Audio_Out[8]~33\) # (!\inst2|DRAM|new_sdram_controller_0|za_data\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(9),
	datab => \inst2|DRAM|new_sdram_controller_0|za_data\(9),
	datad => VCC,
	cin => \inst4|Audio_Out[8]~33\,
	combout => \inst4|Audio_Out[9]~34_combout\,
	cout => \inst4|Audio_Out[9]~35\);

-- Location: LCCOMB_X77_Y29_N20
\inst4|Audio_Out[10]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Audio_Out[10]~36_combout\ = ((\inst2|DRAM|new_sdram_controller_0|za_data\(10) $ (\inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(10) $ (!\inst4|Audio_Out[9]~35\)))) # (GND)
-- \inst4|Audio_Out[10]~37\ = CARRY((\inst2|DRAM|new_sdram_controller_0|za_data\(10) & ((\inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(10)) # (!\inst4|Audio_Out[9]~35\))) # (!\inst2|DRAM|new_sdram_controller_0|za_data\(10) & 
-- (\inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(10) & !\inst4|Audio_Out[9]~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|za_data\(10),
	datab => \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(10),
	datad => VCC,
	cin => \inst4|Audio_Out[9]~35\,
	combout => \inst4|Audio_Out[10]~36_combout\,
	cout => \inst4|Audio_Out[10]~37\);

-- Location: LCCOMB_X77_Y29_N22
\inst4|Audio_Out[11]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Audio_Out[11]~38_combout\ = (\inst2|DRAM|new_sdram_controller_0|za_data\(11) & ((\inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(11) & (\inst4|Audio_Out[10]~37\ & VCC)) # 
-- (!\inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(11) & (!\inst4|Audio_Out[10]~37\)))) # (!\inst2|DRAM|new_sdram_controller_0|za_data\(11) & ((\inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(11) & 
-- (!\inst4|Audio_Out[10]~37\)) # (!\inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(11) & ((\inst4|Audio_Out[10]~37\) # (GND)))))
-- \inst4|Audio_Out[11]~39\ = CARRY((\inst2|DRAM|new_sdram_controller_0|za_data\(11) & (!\inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(11) & !\inst4|Audio_Out[10]~37\)) # (!\inst2|DRAM|new_sdram_controller_0|za_data\(11) & 
-- ((!\inst4|Audio_Out[10]~37\) # (!\inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|za_data\(11),
	datab => \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(11),
	datad => VCC,
	cin => \inst4|Audio_Out[10]~37\,
	combout => \inst4|Audio_Out[11]~38_combout\,
	cout => \inst4|Audio_Out[11]~39\);

-- Location: LCCOMB_X77_Y29_N24
\inst4|Audio_Out[12]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Audio_Out[12]~40_combout\ = (\inst2|DRAM|new_sdram_controller_0|za_data\(12) & (\inst4|Audio_Out[11]~39\ $ (GND))) # (!\inst2|DRAM|new_sdram_controller_0|za_data\(12) & (!\inst4|Audio_Out[11]~39\ & VCC))
-- \inst4|Audio_Out[12]~41\ = CARRY((\inst2|DRAM|new_sdram_controller_0|za_data\(12) & !\inst4|Audio_Out[11]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|za_data\(12),
	datad => VCC,
	cin => \inst4|Audio_Out[11]~39\,
	combout => \inst4|Audio_Out[12]~40_combout\,
	cout => \inst4|Audio_Out[12]~41\);

-- Location: LCCOMB_X77_Y29_N26
\inst4|Audio_Out[13]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Audio_Out[13]~42_combout\ = (\inst2|DRAM|new_sdram_controller_0|za_data\(13) & (!\inst4|Audio_Out[12]~41\)) # (!\inst2|DRAM|new_sdram_controller_0|za_data\(13) & ((\inst4|Audio_Out[12]~41\) # (GND)))
-- \inst4|Audio_Out[13]~43\ = CARRY((!\inst4|Audio_Out[12]~41\) # (!\inst2|DRAM|new_sdram_controller_0|za_data\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|DRAM|new_sdram_controller_0|za_data\(13),
	datad => VCC,
	cin => \inst4|Audio_Out[12]~41\,
	combout => \inst4|Audio_Out[13]~42_combout\,
	cout => \inst4|Audio_Out[13]~43\);

-- Location: LCCOMB_X77_Y29_N28
\inst4|Audio_Out[14]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Audio_Out[14]~44_combout\ = (\inst2|DRAM|new_sdram_controller_0|za_data\(14) & (\inst4|Audio_Out[13]~43\ $ (GND))) # (!\inst2|DRAM|new_sdram_controller_0|za_data\(14) & (!\inst4|Audio_Out[13]~43\ & VCC))
-- \inst4|Audio_Out[14]~45\ = CARRY((\inst2|DRAM|new_sdram_controller_0|za_data\(14) & !\inst4|Audio_Out[13]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|DRAM|new_sdram_controller_0|za_data\(14),
	datad => VCC,
	cin => \inst4|Audio_Out[13]~43\,
	combout => \inst4|Audio_Out[14]~44_combout\,
	cout => \inst4|Audio_Out[14]~45\);

-- Location: LCCOMB_X77_Y29_N30
\inst4|Audio_Out[15]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Audio_Out[15]~46_combout\ = \inst2|DRAM|new_sdram_controller_0|za_data\(15) $ (\inst4|Audio_Out[14]~45\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|DRAM|new_sdram_controller_0|za_data\(15),
	cin => \inst4|Audio_Out[14]~45\,
	combout => \inst4|Audio_Out[15]~46_combout\);

-- Location: LCCOMB_X76_Y29_N24
\inst4|Audio_Out[15]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Audio_Out[15]~feeder_combout\ = \inst4|Audio_Out[15]~46_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|Audio_Out[15]~46_combout\,
	combout => \inst4|Audio_Out[15]~feeder_combout\);

-- Location: FF_X76_Y29_N25
\inst4|Audio_Out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \inst4|Audio_Out[15]~feeder_combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_DELAY_EN~input_o\,
	ena => \inst4|retardo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|Audio_Out\(15));

-- Location: LCCOMB_X76_Y29_N18
\inst4|Audio_Out[14]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Audio_Out[14]~feeder_combout\ = \inst4|Audio_Out[14]~44_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|Audio_Out[14]~44_combout\,
	combout => \inst4|Audio_Out[14]~feeder_combout\);

-- Location: FF_X76_Y29_N19
\inst4|Audio_Out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \inst4|Audio_Out[14]~feeder_combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_DELAY_EN~input_o\,
	ena => \inst4|retardo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|Audio_Out\(14));

-- Location: LCCOMB_X76_Y29_N12
\inst4|Audio_Out[13]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Audio_Out[13]~feeder_combout\ = \inst4|Audio_Out[13]~42_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|Audio_Out[13]~42_combout\,
	combout => \inst4|Audio_Out[13]~feeder_combout\);

-- Location: FF_X76_Y29_N13
\inst4|Audio_Out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \inst4|Audio_Out[13]~feeder_combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_DELAY_EN~input_o\,
	ena => \inst4|retardo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|Audio_Out\(13));

-- Location: LCCOMB_X76_Y29_N22
\inst4|Audio_Out[12]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Audio_Out[12]~feeder_combout\ = \inst4|Audio_Out[12]~40_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|Audio_Out[12]~40_combout\,
	combout => \inst4|Audio_Out[12]~feeder_combout\);

-- Location: FF_X76_Y29_N23
\inst4|Audio_Out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \inst4|Audio_Out[12]~feeder_combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_DELAY_EN~input_o\,
	ena => \inst4|retardo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|Audio_Out\(12));

-- Location: LCCOMB_X76_Y29_N8
\inst4|Audio_Out[11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Audio_Out[11]~feeder_combout\ = \inst4|Audio_Out[11]~38_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Audio_Out[11]~38_combout\,
	combout => \inst4|Audio_Out[11]~feeder_combout\);

-- Location: FF_X76_Y29_N9
\inst4|Audio_Out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \inst4|Audio_Out[11]~feeder_combout\,
	asdata => \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(11),
	sload => \ALT_INV_DELAY_EN~input_o\,
	ena => \inst4|retardo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|Audio_Out\(11));

-- Location: LCCOMB_X76_Y29_N2
\inst4|Audio_Out[10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Audio_Out[10]~feeder_combout\ = \inst4|Audio_Out[10]~36_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Audio_Out[10]~36_combout\,
	combout => \inst4|Audio_Out[10]~feeder_combout\);

-- Location: FF_X76_Y29_N3
\inst4|Audio_Out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \inst4|Audio_Out[10]~feeder_combout\,
	asdata => \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(10),
	sload => \ALT_INV_DELAY_EN~input_o\,
	ena => \inst4|retardo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|Audio_Out\(10));

-- Location: LCCOMB_X76_Y29_N20
\inst4|Audio_Out[9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Audio_Out[9]~feeder_combout\ = \inst4|Audio_Out[9]~34_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|Audio_Out[9]~34_combout\,
	combout => \inst4|Audio_Out[9]~feeder_combout\);

-- Location: FF_X76_Y29_N21
\inst4|Audio_Out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \inst4|Audio_Out[9]~feeder_combout\,
	asdata => \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(9),
	sload => \ALT_INV_DELAY_EN~input_o\,
	ena => \inst4|retardo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|Audio_Out\(9));

-- Location: LCCOMB_X76_Y29_N6
\inst4|Audio_Out[8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Audio_Out[8]~feeder_combout\ = \inst4|Audio_Out[8]~32_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Audio_Out[8]~32_combout\,
	combout => \inst4|Audio_Out[8]~feeder_combout\);

-- Location: FF_X76_Y29_N7
\inst4|Audio_Out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \inst4|Audio_Out[8]~feeder_combout\,
	asdata => \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(8),
	sload => \ALT_INV_DELAY_EN~input_o\,
	ena => \inst4|retardo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|Audio_Out\(8));

-- Location: LCCOMB_X76_Y30_N0
\inst4|Audio_Out[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Audio_Out[7]~feeder_combout\ = \inst4|Audio_Out[7]~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|Audio_Out[7]~30_combout\,
	combout => \inst4|Audio_Out[7]~feeder_combout\);

-- Location: FF_X76_Y30_N1
\inst4|Audio_Out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \inst4|Audio_Out[7]~feeder_combout\,
	asdata => \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(7),
	sload => \ALT_INV_DELAY_EN~input_o\,
	ena => \inst4|retardo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|Audio_Out\(7));

-- Location: LCCOMB_X76_Y30_N2
\inst4|Audio_Out[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Audio_Out[6]~feeder_combout\ = \inst4|Audio_Out[6]~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|Audio_Out[6]~28_combout\,
	combout => \inst4|Audio_Out[6]~feeder_combout\);

-- Location: FF_X76_Y30_N3
\inst4|Audio_Out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \inst4|Audio_Out[6]~feeder_combout\,
	asdata => \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(6),
	sload => \ALT_INV_DELAY_EN~input_o\,
	ena => \inst4|retardo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|Audio_Out\(6));

-- Location: LCCOMB_X76_Y30_N12
\inst4|Audio_Out[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Audio_Out[5]~feeder_combout\ = \inst4|Audio_Out[5]~26_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Audio_Out[5]~26_combout\,
	combout => \inst4|Audio_Out[5]~feeder_combout\);

-- Location: FF_X76_Y30_N13
\inst4|Audio_Out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \inst4|Audio_Out[5]~feeder_combout\,
	asdata => \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(5),
	sload => \ALT_INV_DELAY_EN~input_o\,
	ena => \inst4|retardo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|Audio_Out\(5));

-- Location: LCCOMB_X76_Y30_N6
\inst4|Audio_Out[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Audio_Out[4]~feeder_combout\ = \inst4|Audio_Out[4]~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|Audio_Out[4]~24_combout\,
	combout => \inst4|Audio_Out[4]~feeder_combout\);

-- Location: FF_X76_Y30_N7
\inst4|Audio_Out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \inst4|Audio_Out[4]~feeder_combout\,
	asdata => \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(4),
	sload => \ALT_INV_DELAY_EN~input_o\,
	ena => \inst4|retardo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|Audio_Out\(4));

-- Location: LCCOMB_X76_Y29_N0
\inst4|Audio_Out[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Audio_Out[3]~feeder_combout\ = \inst4|Audio_Out[3]~22_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|Audio_Out[3]~22_combout\,
	combout => \inst4|Audio_Out[3]~feeder_combout\);

-- Location: FF_X76_Y29_N1
\inst4|Audio_Out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \inst4|Audio_Out[3]~feeder_combout\,
	asdata => \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(3),
	sload => \ALT_INV_DELAY_EN~input_o\,
	ena => \inst4|retardo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|Audio_Out\(3));

-- Location: LCCOMB_X76_Y29_N26
\inst4|Audio_Out[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Audio_Out[2]~feeder_combout\ = \inst4|Audio_Out[2]~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Audio_Out[2]~20_combout\,
	combout => \inst4|Audio_Out[2]~feeder_combout\);

-- Location: FF_X76_Y29_N27
\inst4|Audio_Out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \inst4|Audio_Out[2]~feeder_combout\,
	asdata => \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(2),
	sload => \ALT_INV_DELAY_EN~input_o\,
	ena => \inst4|retardo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|Audio_Out\(2));

-- Location: LCCOMB_X76_Y30_N24
\inst4|Audio_Out[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Audio_Out[1]~feeder_combout\ = \inst4|Audio_Out[1]~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|Audio_Out[1]~18_combout\,
	combout => \inst4|Audio_Out[1]~feeder_combout\);

-- Location: FF_X76_Y30_N25
\inst4|Audio_Out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \inst4|Audio_Out[1]~feeder_combout\,
	asdata => \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(1),
	sload => \ALT_INV_DELAY_EN~input_o\,
	ena => \inst4|retardo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|Audio_Out\(1));

-- Location: LCCOMB_X76_Y29_N28
\inst4|Audio_Out[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Audio_Out[0]~feeder_combout\ = \inst4|Audio_Out[0]~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|Audio_Out[0]~16_combout\,
	combout => \inst4|Audio_Out[0]~feeder_combout\);

-- Location: FF_X76_Y29_N29
\inst4|Audio_Out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \inst4|Audio_Out[0]~feeder_combout\,
	asdata => \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(0),
	sload => \ALT_INV_DELAY_EN~input_o\,
	ena => \inst4|retardo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|Audio_Out\(0));

-- Location: LCCOMB_X75_Y30_N16
\inst10|PWM_Acumulador[0]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|PWM_Acumulador[0]~17_combout\ = (\inst4|Audio_Out\(0) & (\inst10|PWM_Acumulador\(0) $ (VCC))) # (!\inst4|Audio_Out\(0) & (\inst10|PWM_Acumulador\(0) & VCC))
-- \inst10|PWM_Acumulador[0]~18\ = CARRY((\inst4|Audio_Out\(0) & \inst10|PWM_Acumulador\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Audio_Out\(0),
	datab => \inst10|PWM_Acumulador\(0),
	datad => VCC,
	combout => \inst10|PWM_Acumulador[0]~17_combout\,
	cout => \inst10|PWM_Acumulador[0]~18\);

-- Location: FF_X75_Y30_N17
\inst10|PWM_Acumulador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \inst10|PWM_Acumulador[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|PWM_Acumulador\(0));

-- Location: LCCOMB_X75_Y30_N18
\inst10|PWM_Acumulador[1]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|PWM_Acumulador[1]~19_combout\ = (\inst10|PWM_Acumulador\(1) & ((\inst4|Audio_Out\(1) & (\inst10|PWM_Acumulador[0]~18\ & VCC)) # (!\inst4|Audio_Out\(1) & (!\inst10|PWM_Acumulador[0]~18\)))) # (!\inst10|PWM_Acumulador\(1) & ((\inst4|Audio_Out\(1) & 
-- (!\inst10|PWM_Acumulador[0]~18\)) # (!\inst4|Audio_Out\(1) & ((\inst10|PWM_Acumulador[0]~18\) # (GND)))))
-- \inst10|PWM_Acumulador[1]~20\ = CARRY((\inst10|PWM_Acumulador\(1) & (!\inst4|Audio_Out\(1) & !\inst10|PWM_Acumulador[0]~18\)) # (!\inst10|PWM_Acumulador\(1) & ((!\inst10|PWM_Acumulador[0]~18\) # (!\inst4|Audio_Out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|PWM_Acumulador\(1),
	datab => \inst4|Audio_Out\(1),
	datad => VCC,
	cin => \inst10|PWM_Acumulador[0]~18\,
	combout => \inst10|PWM_Acumulador[1]~19_combout\,
	cout => \inst10|PWM_Acumulador[1]~20\);

-- Location: FF_X75_Y30_N19
\inst10|PWM_Acumulador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \inst10|PWM_Acumulador[1]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|PWM_Acumulador\(1));

-- Location: LCCOMB_X75_Y30_N20
\inst10|PWM_Acumulador[2]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|PWM_Acumulador[2]~21_combout\ = ((\inst10|PWM_Acumulador\(2) $ (\inst4|Audio_Out\(2) $ (!\inst10|PWM_Acumulador[1]~20\)))) # (GND)
-- \inst10|PWM_Acumulador[2]~22\ = CARRY((\inst10|PWM_Acumulador\(2) & ((\inst4|Audio_Out\(2)) # (!\inst10|PWM_Acumulador[1]~20\))) # (!\inst10|PWM_Acumulador\(2) & (\inst4|Audio_Out\(2) & !\inst10|PWM_Acumulador[1]~20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|PWM_Acumulador\(2),
	datab => \inst4|Audio_Out\(2),
	datad => VCC,
	cin => \inst10|PWM_Acumulador[1]~20\,
	combout => \inst10|PWM_Acumulador[2]~21_combout\,
	cout => \inst10|PWM_Acumulador[2]~22\);

-- Location: FF_X75_Y30_N21
\inst10|PWM_Acumulador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \inst10|PWM_Acumulador[2]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|PWM_Acumulador\(2));

-- Location: LCCOMB_X75_Y30_N22
\inst10|PWM_Acumulador[3]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|PWM_Acumulador[3]~23_combout\ = (\inst10|PWM_Acumulador\(3) & ((\inst4|Audio_Out\(3) & (\inst10|PWM_Acumulador[2]~22\ & VCC)) # (!\inst4|Audio_Out\(3) & (!\inst10|PWM_Acumulador[2]~22\)))) # (!\inst10|PWM_Acumulador\(3) & ((\inst4|Audio_Out\(3) & 
-- (!\inst10|PWM_Acumulador[2]~22\)) # (!\inst4|Audio_Out\(3) & ((\inst10|PWM_Acumulador[2]~22\) # (GND)))))
-- \inst10|PWM_Acumulador[3]~24\ = CARRY((\inst10|PWM_Acumulador\(3) & (!\inst4|Audio_Out\(3) & !\inst10|PWM_Acumulador[2]~22\)) # (!\inst10|PWM_Acumulador\(3) & ((!\inst10|PWM_Acumulador[2]~22\) # (!\inst4|Audio_Out\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|PWM_Acumulador\(3),
	datab => \inst4|Audio_Out\(3),
	datad => VCC,
	cin => \inst10|PWM_Acumulador[2]~22\,
	combout => \inst10|PWM_Acumulador[3]~23_combout\,
	cout => \inst10|PWM_Acumulador[3]~24\);

-- Location: FF_X75_Y30_N23
\inst10|PWM_Acumulador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \inst10|PWM_Acumulador[3]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|PWM_Acumulador\(3));

-- Location: LCCOMB_X75_Y30_N24
\inst10|PWM_Acumulador[4]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|PWM_Acumulador[4]~25_combout\ = ((\inst4|Audio_Out\(4) $ (\inst10|PWM_Acumulador\(4) $ (!\inst10|PWM_Acumulador[3]~24\)))) # (GND)
-- \inst10|PWM_Acumulador[4]~26\ = CARRY((\inst4|Audio_Out\(4) & ((\inst10|PWM_Acumulador\(4)) # (!\inst10|PWM_Acumulador[3]~24\))) # (!\inst4|Audio_Out\(4) & (\inst10|PWM_Acumulador\(4) & !\inst10|PWM_Acumulador[3]~24\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Audio_Out\(4),
	datab => \inst10|PWM_Acumulador\(4),
	datad => VCC,
	cin => \inst10|PWM_Acumulador[3]~24\,
	combout => \inst10|PWM_Acumulador[4]~25_combout\,
	cout => \inst10|PWM_Acumulador[4]~26\);

-- Location: FF_X75_Y30_N25
\inst10|PWM_Acumulador[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \inst10|PWM_Acumulador[4]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|PWM_Acumulador\(4));

-- Location: LCCOMB_X75_Y30_N26
\inst10|PWM_Acumulador[5]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|PWM_Acumulador[5]~27_combout\ = (\inst10|PWM_Acumulador\(5) & ((\inst4|Audio_Out\(5) & (\inst10|PWM_Acumulador[4]~26\ & VCC)) # (!\inst4|Audio_Out\(5) & (!\inst10|PWM_Acumulador[4]~26\)))) # (!\inst10|PWM_Acumulador\(5) & ((\inst4|Audio_Out\(5) & 
-- (!\inst10|PWM_Acumulador[4]~26\)) # (!\inst4|Audio_Out\(5) & ((\inst10|PWM_Acumulador[4]~26\) # (GND)))))
-- \inst10|PWM_Acumulador[5]~28\ = CARRY((\inst10|PWM_Acumulador\(5) & (!\inst4|Audio_Out\(5) & !\inst10|PWM_Acumulador[4]~26\)) # (!\inst10|PWM_Acumulador\(5) & ((!\inst10|PWM_Acumulador[4]~26\) # (!\inst4|Audio_Out\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|PWM_Acumulador\(5),
	datab => \inst4|Audio_Out\(5),
	datad => VCC,
	cin => \inst10|PWM_Acumulador[4]~26\,
	combout => \inst10|PWM_Acumulador[5]~27_combout\,
	cout => \inst10|PWM_Acumulador[5]~28\);

-- Location: FF_X75_Y30_N27
\inst10|PWM_Acumulador[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \inst10|PWM_Acumulador[5]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|PWM_Acumulador\(5));

-- Location: LCCOMB_X75_Y30_N28
\inst10|PWM_Acumulador[6]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|PWM_Acumulador[6]~29_combout\ = ((\inst4|Audio_Out\(6) $ (\inst10|PWM_Acumulador\(6) $ (!\inst10|PWM_Acumulador[5]~28\)))) # (GND)
-- \inst10|PWM_Acumulador[6]~30\ = CARRY((\inst4|Audio_Out\(6) & ((\inst10|PWM_Acumulador\(6)) # (!\inst10|PWM_Acumulador[5]~28\))) # (!\inst4|Audio_Out\(6) & (\inst10|PWM_Acumulador\(6) & !\inst10|PWM_Acumulador[5]~28\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Audio_Out\(6),
	datab => \inst10|PWM_Acumulador\(6),
	datad => VCC,
	cin => \inst10|PWM_Acumulador[5]~28\,
	combout => \inst10|PWM_Acumulador[6]~29_combout\,
	cout => \inst10|PWM_Acumulador[6]~30\);

-- Location: FF_X75_Y30_N29
\inst10|PWM_Acumulador[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \inst10|PWM_Acumulador[6]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|PWM_Acumulador\(6));

-- Location: LCCOMB_X75_Y30_N30
\inst10|PWM_Acumulador[7]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|PWM_Acumulador[7]~31_combout\ = (\inst10|PWM_Acumulador\(7) & ((\inst4|Audio_Out\(7) & (\inst10|PWM_Acumulador[6]~30\ & VCC)) # (!\inst4|Audio_Out\(7) & (!\inst10|PWM_Acumulador[6]~30\)))) # (!\inst10|PWM_Acumulador\(7) & ((\inst4|Audio_Out\(7) & 
-- (!\inst10|PWM_Acumulador[6]~30\)) # (!\inst4|Audio_Out\(7) & ((\inst10|PWM_Acumulador[6]~30\) # (GND)))))
-- \inst10|PWM_Acumulador[7]~32\ = CARRY((\inst10|PWM_Acumulador\(7) & (!\inst4|Audio_Out\(7) & !\inst10|PWM_Acumulador[6]~30\)) # (!\inst10|PWM_Acumulador\(7) & ((!\inst10|PWM_Acumulador[6]~30\) # (!\inst4|Audio_Out\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|PWM_Acumulador\(7),
	datab => \inst4|Audio_Out\(7),
	datad => VCC,
	cin => \inst10|PWM_Acumulador[6]~30\,
	combout => \inst10|PWM_Acumulador[7]~31_combout\,
	cout => \inst10|PWM_Acumulador[7]~32\);

-- Location: FF_X75_Y30_N31
\inst10|PWM_Acumulador[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \inst10|PWM_Acumulador[7]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|PWM_Acumulador\(7));

-- Location: LCCOMB_X75_Y29_N0
\inst10|PWM_Acumulador[8]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|PWM_Acumulador[8]~33_combout\ = ((\inst4|Audio_Out\(8) $ (\inst10|PWM_Acumulador\(8) $ (!\inst10|PWM_Acumulador[7]~32\)))) # (GND)
-- \inst10|PWM_Acumulador[8]~34\ = CARRY((\inst4|Audio_Out\(8) & ((\inst10|PWM_Acumulador\(8)) # (!\inst10|PWM_Acumulador[7]~32\))) # (!\inst4|Audio_Out\(8) & (\inst10|PWM_Acumulador\(8) & !\inst10|PWM_Acumulador[7]~32\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Audio_Out\(8),
	datab => \inst10|PWM_Acumulador\(8),
	datad => VCC,
	cin => \inst10|PWM_Acumulador[7]~32\,
	combout => \inst10|PWM_Acumulador[8]~33_combout\,
	cout => \inst10|PWM_Acumulador[8]~34\);

-- Location: FF_X75_Y29_N1
\inst10|PWM_Acumulador[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \inst10|PWM_Acumulador[8]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|PWM_Acumulador\(8));

-- Location: LCCOMB_X75_Y29_N2
\inst10|PWM_Acumulador[9]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|PWM_Acumulador[9]~35_combout\ = (\inst4|Audio_Out\(9) & ((\inst10|PWM_Acumulador\(9) & (\inst10|PWM_Acumulador[8]~34\ & VCC)) # (!\inst10|PWM_Acumulador\(9) & (!\inst10|PWM_Acumulador[8]~34\)))) # (!\inst4|Audio_Out\(9) & 
-- ((\inst10|PWM_Acumulador\(9) & (!\inst10|PWM_Acumulador[8]~34\)) # (!\inst10|PWM_Acumulador\(9) & ((\inst10|PWM_Acumulador[8]~34\) # (GND)))))
-- \inst10|PWM_Acumulador[9]~36\ = CARRY((\inst4|Audio_Out\(9) & (!\inst10|PWM_Acumulador\(9) & !\inst10|PWM_Acumulador[8]~34\)) # (!\inst4|Audio_Out\(9) & ((!\inst10|PWM_Acumulador[8]~34\) # (!\inst10|PWM_Acumulador\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Audio_Out\(9),
	datab => \inst10|PWM_Acumulador\(9),
	datad => VCC,
	cin => \inst10|PWM_Acumulador[8]~34\,
	combout => \inst10|PWM_Acumulador[9]~35_combout\,
	cout => \inst10|PWM_Acumulador[9]~36\);

-- Location: FF_X75_Y29_N3
\inst10|PWM_Acumulador[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \inst10|PWM_Acumulador[9]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|PWM_Acumulador\(9));

-- Location: LCCOMB_X75_Y29_N4
\inst10|PWM_Acumulador[10]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|PWM_Acumulador[10]~37_combout\ = ((\inst4|Audio_Out\(10) $ (\inst10|PWM_Acumulador\(10) $ (!\inst10|PWM_Acumulador[9]~36\)))) # (GND)
-- \inst10|PWM_Acumulador[10]~38\ = CARRY((\inst4|Audio_Out\(10) & ((\inst10|PWM_Acumulador\(10)) # (!\inst10|PWM_Acumulador[9]~36\))) # (!\inst4|Audio_Out\(10) & (\inst10|PWM_Acumulador\(10) & !\inst10|PWM_Acumulador[9]~36\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Audio_Out\(10),
	datab => \inst10|PWM_Acumulador\(10),
	datad => VCC,
	cin => \inst10|PWM_Acumulador[9]~36\,
	combout => \inst10|PWM_Acumulador[10]~37_combout\,
	cout => \inst10|PWM_Acumulador[10]~38\);

-- Location: FF_X75_Y29_N5
\inst10|PWM_Acumulador[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \inst10|PWM_Acumulador[10]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|PWM_Acumulador\(10));

-- Location: LCCOMB_X75_Y29_N6
\inst10|PWM_Acumulador[11]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|PWM_Acumulador[11]~39_combout\ = (\inst10|PWM_Acumulador\(11) & ((\inst4|Audio_Out\(11) & (\inst10|PWM_Acumulador[10]~38\ & VCC)) # (!\inst4|Audio_Out\(11) & (!\inst10|PWM_Acumulador[10]~38\)))) # (!\inst10|PWM_Acumulador\(11) & 
-- ((\inst4|Audio_Out\(11) & (!\inst10|PWM_Acumulador[10]~38\)) # (!\inst4|Audio_Out\(11) & ((\inst10|PWM_Acumulador[10]~38\) # (GND)))))
-- \inst10|PWM_Acumulador[11]~40\ = CARRY((\inst10|PWM_Acumulador\(11) & (!\inst4|Audio_Out\(11) & !\inst10|PWM_Acumulador[10]~38\)) # (!\inst10|PWM_Acumulador\(11) & ((!\inst10|PWM_Acumulador[10]~38\) # (!\inst4|Audio_Out\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|PWM_Acumulador\(11),
	datab => \inst4|Audio_Out\(11),
	datad => VCC,
	cin => \inst10|PWM_Acumulador[10]~38\,
	combout => \inst10|PWM_Acumulador[11]~39_combout\,
	cout => \inst10|PWM_Acumulador[11]~40\);

-- Location: FF_X75_Y29_N7
\inst10|PWM_Acumulador[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \inst10|PWM_Acumulador[11]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|PWM_Acumulador\(11));

-- Location: LCCOMB_X75_Y29_N8
\inst10|PWM_Acumulador[12]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|PWM_Acumulador[12]~41_combout\ = ((\inst10|PWM_Acumulador\(12) $ (\inst4|Audio_Out\(12) $ (!\inst10|PWM_Acumulador[11]~40\)))) # (GND)
-- \inst10|PWM_Acumulador[12]~42\ = CARRY((\inst10|PWM_Acumulador\(12) & ((\inst4|Audio_Out\(12)) # (!\inst10|PWM_Acumulador[11]~40\))) # (!\inst10|PWM_Acumulador\(12) & (\inst4|Audio_Out\(12) & !\inst10|PWM_Acumulador[11]~40\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|PWM_Acumulador\(12),
	datab => \inst4|Audio_Out\(12),
	datad => VCC,
	cin => \inst10|PWM_Acumulador[11]~40\,
	combout => \inst10|PWM_Acumulador[12]~41_combout\,
	cout => \inst10|PWM_Acumulador[12]~42\);

-- Location: FF_X75_Y29_N9
\inst10|PWM_Acumulador[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \inst10|PWM_Acumulador[12]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|PWM_Acumulador\(12));

-- Location: LCCOMB_X75_Y29_N10
\inst10|PWM_Acumulador[13]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|PWM_Acumulador[13]~43_combout\ = (\inst10|PWM_Acumulador\(13) & ((\inst4|Audio_Out\(13) & (\inst10|PWM_Acumulador[12]~42\ & VCC)) # (!\inst4|Audio_Out\(13) & (!\inst10|PWM_Acumulador[12]~42\)))) # (!\inst10|PWM_Acumulador\(13) & 
-- ((\inst4|Audio_Out\(13) & (!\inst10|PWM_Acumulador[12]~42\)) # (!\inst4|Audio_Out\(13) & ((\inst10|PWM_Acumulador[12]~42\) # (GND)))))
-- \inst10|PWM_Acumulador[13]~44\ = CARRY((\inst10|PWM_Acumulador\(13) & (!\inst4|Audio_Out\(13) & !\inst10|PWM_Acumulador[12]~42\)) # (!\inst10|PWM_Acumulador\(13) & ((!\inst10|PWM_Acumulador[12]~42\) # (!\inst4|Audio_Out\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|PWM_Acumulador\(13),
	datab => \inst4|Audio_Out\(13),
	datad => VCC,
	cin => \inst10|PWM_Acumulador[12]~42\,
	combout => \inst10|PWM_Acumulador[13]~43_combout\,
	cout => \inst10|PWM_Acumulador[13]~44\);

-- Location: FF_X75_Y29_N11
\inst10|PWM_Acumulador[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \inst10|PWM_Acumulador[13]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|PWM_Acumulador\(13));

-- Location: LCCOMB_X75_Y29_N12
\inst10|PWM_Acumulador[14]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|PWM_Acumulador[14]~45_combout\ = ((\inst10|PWM_Acumulador\(14) $ (\inst4|Audio_Out\(14) $ (!\inst10|PWM_Acumulador[13]~44\)))) # (GND)
-- \inst10|PWM_Acumulador[14]~46\ = CARRY((\inst10|PWM_Acumulador\(14) & ((\inst4|Audio_Out\(14)) # (!\inst10|PWM_Acumulador[13]~44\))) # (!\inst10|PWM_Acumulador\(14) & (\inst4|Audio_Out\(14) & !\inst10|PWM_Acumulador[13]~44\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|PWM_Acumulador\(14),
	datab => \inst4|Audio_Out\(14),
	datad => VCC,
	cin => \inst10|PWM_Acumulador[13]~44\,
	combout => \inst10|PWM_Acumulador[14]~45_combout\,
	cout => \inst10|PWM_Acumulador[14]~46\);

-- Location: FF_X75_Y29_N13
\inst10|PWM_Acumulador[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \inst10|PWM_Acumulador[14]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|PWM_Acumulador\(14));

-- Location: LCCOMB_X75_Y29_N14
\inst10|PWM_Acumulador[15]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|PWM_Acumulador[15]~47_combout\ = (\inst10|PWM_Acumulador\(15) & ((\inst4|Audio_Out\(15) & (\inst10|PWM_Acumulador[14]~46\ & VCC)) # (!\inst4|Audio_Out\(15) & (!\inst10|PWM_Acumulador[14]~46\)))) # (!\inst10|PWM_Acumulador\(15) & 
-- ((\inst4|Audio_Out\(15) & (!\inst10|PWM_Acumulador[14]~46\)) # (!\inst4|Audio_Out\(15) & ((\inst10|PWM_Acumulador[14]~46\) # (GND)))))
-- \inst10|PWM_Acumulador[15]~48\ = CARRY((\inst10|PWM_Acumulador\(15) & (!\inst4|Audio_Out\(15) & !\inst10|PWM_Acumulador[14]~46\)) # (!\inst10|PWM_Acumulador\(15) & ((!\inst10|PWM_Acumulador[14]~46\) # (!\inst4|Audio_Out\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|PWM_Acumulador\(15),
	datab => \inst4|Audio_Out\(15),
	datad => VCC,
	cin => \inst10|PWM_Acumulador[14]~46\,
	combout => \inst10|PWM_Acumulador[15]~47_combout\,
	cout => \inst10|PWM_Acumulador[15]~48\);

-- Location: FF_X75_Y29_N15
\inst10|PWM_Acumulador[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \inst10|PWM_Acumulador[15]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|PWM_Acumulador\(15));

-- Location: LCCOMB_X75_Y29_N16
\inst10|PWM_Acumulador[16]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|PWM_Acumulador[16]~49_combout\ = !\inst10|PWM_Acumulador[15]~48\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst10|PWM_Acumulador[15]~48\,
	combout => \inst10|PWM_Acumulador[16]~49_combout\);

-- Location: FF_X75_Y29_N17
\inst10|PWM_Acumulador[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \inst10|PWM_Acumulador[16]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|PWM_Acumulador\(16));

-- Location: FF_X74_Y24_N21
\inst4|sal_disp0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	asdata => \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(2),
	sload => VCC,
	ena => \inst4|sal_disp0[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sal_disp0\(2));

-- Location: FF_X74_Y24_N3
\inst4|sal_disp0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	asdata => \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(1),
	sload => VCC,
	ena => \inst4|sal_disp0[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sal_disp0\(1));

-- Location: FF_X74_Y24_N15
\inst4|sal_disp0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	asdata => \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(3),
	sload => VCC,
	ena => \inst4|sal_disp0[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sal_disp0\(3));

-- Location: FF_X74_Y24_N1
\inst4|sal_disp0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	asdata => \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(0),
	sload => VCC,
	ena => \inst4|sal_disp0[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sal_disp0\(0));

-- Location: LCCOMB_X74_Y24_N24
\inst4|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Mux0~0_combout\ = (\inst4|sal_disp0\(0) & ((\inst4|sal_disp0\(3)) # (\inst4|sal_disp0\(2) $ (\inst4|sal_disp0\(1))))) # (!\inst4|sal_disp0\(0) & ((\inst4|sal_disp0\(1)) # (\inst4|sal_disp0\(2) $ (\inst4|sal_disp0\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sal_disp0\(2),
	datab => \inst4|sal_disp0\(1),
	datac => \inst4|sal_disp0\(3),
	datad => \inst4|sal_disp0\(0),
	combout => \inst4|Mux0~0_combout\);

-- Location: LCCOMB_X74_Y24_N10
\inst4|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Mux1~0_combout\ = (\inst4|sal_disp0\(2) & (\inst4|sal_disp0\(0) & (\inst4|sal_disp0\(1) $ (\inst4|sal_disp0\(3))))) # (!\inst4|sal_disp0\(2) & (!\inst4|sal_disp0\(3) & ((\inst4|sal_disp0\(1)) # (\inst4|sal_disp0\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sal_disp0\(2),
	datab => \inst4|sal_disp0\(1),
	datac => \inst4|sal_disp0\(3),
	datad => \inst4|sal_disp0\(0),
	combout => \inst4|Mux1~0_combout\);

-- Location: LCCOMB_X74_Y24_N4
\inst4|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Mux2~0_combout\ = (\inst4|sal_disp0\(1) & (((!\inst4|sal_disp0\(3) & \inst4|sal_disp0\(0))))) # (!\inst4|sal_disp0\(1) & ((\inst4|sal_disp0\(2) & (!\inst4|sal_disp0\(3))) # (!\inst4|sal_disp0\(2) & ((\inst4|sal_disp0\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sal_disp0\(2),
	datab => \inst4|sal_disp0\(1),
	datac => \inst4|sal_disp0\(3),
	datad => \inst4|sal_disp0\(0),
	combout => \inst4|Mux2~0_combout\);

-- Location: LCCOMB_X74_Y24_N0
\inst4|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Mux3~0_combout\ = (\inst4|sal_disp0\(1) & ((\inst4|sal_disp0\(2) & ((\inst4|sal_disp0\(0)))) # (!\inst4|sal_disp0\(2) & (\inst4|sal_disp0\(3) & !\inst4|sal_disp0\(0))))) # (!\inst4|sal_disp0\(1) & (!\inst4|sal_disp0\(3) & (\inst4|sal_disp0\(2) $ 
-- (\inst4|sal_disp0\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sal_disp0\(3),
	datab => \inst4|sal_disp0\(2),
	datac => \inst4|sal_disp0\(0),
	datad => \inst4|sal_disp0\(1),
	combout => \inst4|Mux3~0_combout\);

-- Location: LCCOMB_X74_Y24_N2
\inst4|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Mux4~0_combout\ = (\inst4|sal_disp0\(3) & (\inst4|sal_disp0\(2) & ((\inst4|sal_disp0\(1)) # (!\inst4|sal_disp0\(0))))) # (!\inst4|sal_disp0\(3) & (!\inst4|sal_disp0\(2) & (\inst4|sal_disp0\(1) & !\inst4|sal_disp0\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sal_disp0\(3),
	datab => \inst4|sal_disp0\(2),
	datac => \inst4|sal_disp0\(1),
	datad => \inst4|sal_disp0\(0),
	combout => \inst4|Mux4~0_combout\);

-- Location: LCCOMB_X74_Y24_N20
\inst4|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Mux5~0_combout\ = (\inst4|sal_disp0\(3) & ((\inst4|sal_disp0\(0) & (\inst4|sal_disp0\(1))) # (!\inst4|sal_disp0\(0) & ((\inst4|sal_disp0\(2)))))) # (!\inst4|sal_disp0\(3) & (\inst4|sal_disp0\(2) & (\inst4|sal_disp0\(1) $ (\inst4|sal_disp0\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sal_disp0\(3),
	datab => \inst4|sal_disp0\(1),
	datac => \inst4|sal_disp0\(2),
	datad => \inst4|sal_disp0\(0),
	combout => \inst4|Mux5~0_combout\);

-- Location: LCCOMB_X74_Y24_N14
\inst4|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Mux6~0_combout\ = (\inst4|sal_disp0\(2) & (!\inst4|sal_disp0\(1) & (\inst4|sal_disp0\(0) $ (!\inst4|sal_disp0\(3))))) # (!\inst4|sal_disp0\(2) & (\inst4|sal_disp0\(0) & (\inst4|sal_disp0\(3) $ (!\inst4|sal_disp0\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sal_disp0\(2),
	datab => \inst4|sal_disp0\(0),
	datac => \inst4|sal_disp0\(3),
	datad => \inst4|sal_disp0\(1),
	combout => \inst4|Mux6~0_combout\);

-- Location: FF_X74_Y24_N7
\inst4|sal_disp1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	asdata => \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(4),
	sload => VCC,
	ena => \inst4|sal_disp0[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sal_disp1\(0));

-- Location: FF_X74_Y24_N19
\inst4|sal_disp1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	asdata => \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(6),
	sload => VCC,
	ena => \inst4|sal_disp0[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sal_disp1\(2));

-- Location: FF_X74_Y24_N13
\inst4|sal_disp1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	asdata => \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(7),
	sload => VCC,
	ena => \inst4|sal_disp0[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sal_disp1\(3));

-- Location: FF_X74_Y24_N17
\inst4|sal_disp1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	asdata => \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(5),
	sload => VCC,
	ena => \inst4|sal_disp0[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sal_disp1\(1));

-- Location: LCCOMB_X74_Y24_N30
\inst4|Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Mux7~0_combout\ = (\inst4|sal_disp1\(0) & ((\inst4|sal_disp1\(3)) # (\inst4|sal_disp1\(2) $ (\inst4|sal_disp1\(1))))) # (!\inst4|sal_disp1\(0) & ((\inst4|sal_disp1\(1)) # (\inst4|sal_disp1\(2) $ (\inst4|sal_disp1\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sal_disp1\(0),
	datab => \inst4|sal_disp1\(2),
	datac => \inst4|sal_disp1\(3),
	datad => \inst4|sal_disp1\(1),
	combout => \inst4|Mux7~0_combout\);

-- Location: LCCOMB_X74_Y24_N8
\inst4|Mux8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Mux8~0_combout\ = (\inst4|sal_disp1\(0) & (\inst4|sal_disp1\(3) $ (((\inst4|sal_disp1\(1)) # (!\inst4|sal_disp1\(2)))))) # (!\inst4|sal_disp1\(0) & (!\inst4|sal_disp1\(2) & (!\inst4|sal_disp1\(3) & \inst4|sal_disp1\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sal_disp1\(0),
	datab => \inst4|sal_disp1\(2),
	datac => \inst4|sal_disp1\(3),
	datad => \inst4|sal_disp1\(1),
	combout => \inst4|Mux8~0_combout\);

-- Location: LCCOMB_X74_Y24_N26
\inst4|Mux9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Mux9~0_combout\ = (\inst4|sal_disp1\(1) & (\inst4|sal_disp1\(0) & ((!\inst4|sal_disp1\(3))))) # (!\inst4|sal_disp1\(1) & ((\inst4|sal_disp1\(2) & ((!\inst4|sal_disp1\(3)))) # (!\inst4|sal_disp1\(2) & (\inst4|sal_disp1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sal_disp1\(0),
	datab => \inst4|sal_disp1\(2),
	datac => \inst4|sal_disp1\(3),
	datad => \inst4|sal_disp1\(1),
	combout => \inst4|Mux9~0_combout\);

-- Location: LCCOMB_X74_Y24_N6
\inst4|Mux10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Mux10~0_combout\ = (\inst4|sal_disp1\(1) & ((\inst4|sal_disp1\(2) & (\inst4|sal_disp1\(0))) # (!\inst4|sal_disp1\(2) & (!\inst4|sal_disp1\(0) & \inst4|sal_disp1\(3))))) # (!\inst4|sal_disp1\(1) & (!\inst4|sal_disp1\(3) & (\inst4|sal_disp1\(2) $ 
-- (\inst4|sal_disp1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sal_disp1\(1),
	datab => \inst4|sal_disp1\(2),
	datac => \inst4|sal_disp1\(0),
	datad => \inst4|sal_disp1\(3),
	combout => \inst4|Mux10~0_combout\);

-- Location: LCCOMB_X74_Y24_N16
\inst4|Mux11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Mux11~0_combout\ = (\inst4|sal_disp1\(3) & (\inst4|sal_disp1\(2) & ((\inst4|sal_disp1\(1)) # (!\inst4|sal_disp1\(0))))) # (!\inst4|sal_disp1\(3) & (!\inst4|sal_disp1\(0) & (\inst4|sal_disp1\(1) & !\inst4|sal_disp1\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sal_disp1\(0),
	datab => \inst4|sal_disp1\(3),
	datac => \inst4|sal_disp1\(1),
	datad => \inst4|sal_disp1\(2),
	combout => \inst4|Mux11~0_combout\);

-- Location: LCCOMB_X74_Y24_N18
\inst4|Mux12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Mux12~0_combout\ = (\inst4|sal_disp1\(3) & ((\inst4|sal_disp1\(0) & ((\inst4|sal_disp1\(1)))) # (!\inst4|sal_disp1\(0) & (\inst4|sal_disp1\(2))))) # (!\inst4|sal_disp1\(3) & (\inst4|sal_disp1\(2) & (\inst4|sal_disp1\(0) $ (\inst4|sal_disp1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sal_disp1\(0),
	datab => \inst4|sal_disp1\(3),
	datac => \inst4|sal_disp1\(2),
	datad => \inst4|sal_disp1\(1),
	combout => \inst4|Mux12~0_combout\);

-- Location: LCCOMB_X74_Y24_N12
\inst4|Mux13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Mux13~0_combout\ = (\inst4|sal_disp1\(2) & (!\inst4|sal_disp1\(1) & (\inst4|sal_disp1\(0) $ (!\inst4|sal_disp1\(3))))) # (!\inst4|sal_disp1\(2) & (\inst4|sal_disp1\(0) & (\inst4|sal_disp1\(3) $ (!\inst4|sal_disp1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sal_disp1\(0),
	datab => \inst4|sal_disp1\(2),
	datac => \inst4|sal_disp1\(3),
	datad => \inst4|sal_disp1\(1),
	combout => \inst4|Mux13~0_combout\);

-- Location: FF_X74_Y44_N7
\inst4|sal_disp2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	asdata => \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(11),
	sload => VCC,
	ena => \inst4|sal_disp0[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sal_disp2\(3));

-- Location: FF_X74_Y44_N25
\inst4|sal_disp2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	asdata => \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(8),
	sload => VCC,
	ena => \inst4|sal_disp0[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sal_disp2\(0));

-- Location: LCCOMB_X74_Y44_N26
\inst4|sal_disp2[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|sal_disp2[1]~feeder_combout\ = \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(9),
	combout => \inst4|sal_disp2[1]~feeder_combout\);

-- Location: FF_X74_Y44_N27
\inst4|sal_disp2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \inst4|sal_disp2[1]~feeder_combout\,
	ena => \inst4|sal_disp0[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sal_disp2\(1));

-- Location: FF_X74_Y44_N29
\inst4|sal_disp2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	asdata => \inst|u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(10),
	sload => VCC,
	ena => \inst4|sal_disp0[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|sal_disp2\(2));

-- Location: LCCOMB_X74_Y44_N8
\inst4|Mux14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Mux14~0_combout\ = (\inst4|sal_disp2\(0) & ((\inst4|sal_disp2\(3)) # (\inst4|sal_disp2\(1) $ (\inst4|sal_disp2\(2))))) # (!\inst4|sal_disp2\(0) & ((\inst4|sal_disp2\(1)) # (\inst4|sal_disp2\(3) $ (\inst4|sal_disp2\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sal_disp2\(3),
	datab => \inst4|sal_disp2\(0),
	datac => \inst4|sal_disp2\(1),
	datad => \inst4|sal_disp2\(2),
	combout => \inst4|Mux14~0_combout\);

-- Location: LCCOMB_X74_Y44_N10
\inst4|Mux15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Mux15~0_combout\ = (\inst4|sal_disp2\(0) & (\inst4|sal_disp2\(3) $ (((\inst4|sal_disp2\(1)) # (!\inst4|sal_disp2\(2)))))) # (!\inst4|sal_disp2\(0) & (!\inst4|sal_disp2\(3) & (\inst4|sal_disp2\(1) & !\inst4|sal_disp2\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sal_disp2\(3),
	datab => \inst4|sal_disp2\(0),
	datac => \inst4|sal_disp2\(1),
	datad => \inst4|sal_disp2\(2),
	combout => \inst4|Mux15~0_combout\);

-- Location: LCCOMB_X74_Y44_N20
\inst4|Mux16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Mux16~0_combout\ = (\inst4|sal_disp2\(1) & (!\inst4|sal_disp2\(3) & (\inst4|sal_disp2\(0)))) # (!\inst4|sal_disp2\(1) & ((\inst4|sal_disp2\(2) & (!\inst4|sal_disp2\(3))) # (!\inst4|sal_disp2\(2) & ((\inst4|sal_disp2\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sal_disp2\(3),
	datab => \inst4|sal_disp2\(0),
	datac => \inst4|sal_disp2\(1),
	datad => \inst4|sal_disp2\(2),
	combout => \inst4|Mux16~0_combout\);

-- Location: LCCOMB_X74_Y44_N22
\inst4|Mux17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Mux17~0_combout\ = (\inst4|sal_disp2\(1) & ((\inst4|sal_disp2\(0) & ((\inst4|sal_disp2\(2)))) # (!\inst4|sal_disp2\(0) & (\inst4|sal_disp2\(3) & !\inst4|sal_disp2\(2))))) # (!\inst4|sal_disp2\(1) & (!\inst4|sal_disp2\(3) & (\inst4|sal_disp2\(0) $ 
-- (\inst4|sal_disp2\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sal_disp2\(3),
	datab => \inst4|sal_disp2\(0),
	datac => \inst4|sal_disp2\(1),
	datad => \inst4|sal_disp2\(2),
	combout => \inst4|Mux17~0_combout\);

-- Location: LCCOMB_X74_Y44_N16
\inst4|Mux18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Mux18~0_combout\ = (\inst4|sal_disp2\(3) & (\inst4|sal_disp2\(2) & ((\inst4|sal_disp2\(1)) # (!\inst4|sal_disp2\(0))))) # (!\inst4|sal_disp2\(3) & (!\inst4|sal_disp2\(0) & (\inst4|sal_disp2\(1) & !\inst4|sal_disp2\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sal_disp2\(3),
	datab => \inst4|sal_disp2\(0),
	datac => \inst4|sal_disp2\(1),
	datad => \inst4|sal_disp2\(2),
	combout => \inst4|Mux18~0_combout\);

-- Location: LCCOMB_X74_Y44_N2
\inst4|Mux19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Mux19~0_combout\ = (\inst4|sal_disp2\(3) & ((\inst4|sal_disp2\(0) & (\inst4|sal_disp2\(1))) # (!\inst4|sal_disp2\(0) & ((\inst4|sal_disp2\(2)))))) # (!\inst4|sal_disp2\(3) & (\inst4|sal_disp2\(2) & (\inst4|sal_disp2\(0) $ (\inst4|sal_disp2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sal_disp2\(3),
	datab => \inst4|sal_disp2\(0),
	datac => \inst4|sal_disp2\(1),
	datad => \inst4|sal_disp2\(2),
	combout => \inst4|Mux19~0_combout\);

-- Location: LCCOMB_X74_Y44_N12
\inst4|Mux20~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Mux20~0_combout\ = (\inst4|sal_disp2\(3) & (\inst4|sal_disp2\(0) & (\inst4|sal_disp2\(1) $ (\inst4|sal_disp2\(2))))) # (!\inst4|sal_disp2\(3) & (!\inst4|sal_disp2\(1) & (\inst4|sal_disp2\(0) $ (\inst4|sal_disp2\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sal_disp2\(3),
	datab => \inst4|sal_disp2\(0),
	datac => \inst4|sal_disp2\(1),
	datad => \inst4|sal_disp2\(2),
	combout => \inst4|Mux20~0_combout\);

-- Location: FF_X75_Y20_N15
\inst2|DRAM|new_sdram_controller_0|i_addr[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => \inst2|DRAM|new_sdram_controller_0|i_state.111~q\,
	clrn => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|i_addr\(12));

-- Location: LCCOMB_X76_Y20_N8
\inst2|DRAM|new_sdram_controller_0|Selector86~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector86~2_combout\ = (\inst2|DRAM|new_sdram_controller_0|m_state.000000010~q\ & (\inst2|DRAM|new_sdram_controller_0|active_addr\(23))) # (!\inst2|DRAM|new_sdram_controller_0|m_state.000000010~q\ & 
-- ((!\inst2|DRAM|new_sdram_controller_0|i_addr\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|DRAM|new_sdram_controller_0|m_state.000000010~q\,
	datac => \inst2|DRAM|new_sdram_controller_0|active_addr\(23),
	datad => \inst2|DRAM|new_sdram_controller_0|i_addr\(12),
	combout => \inst2|DRAM|new_sdram_controller_0|Selector86~2_combout\);

-- Location: LCCOMB_X76_Y20_N26
\inst2|DRAM|new_sdram_controller_0|Selector86~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector86~3_combout\ = (\inst2|DRAM|new_sdram_controller_0|m_state.001000000~q\) # ((!\inst2|DRAM|new_sdram_controller_0|m_state.000001000~q\ & (!\inst2|DRAM|new_sdram_controller_0|m_state.000010000~q\ & 
-- \inst2|DRAM|new_sdram_controller_0|Selector86~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|m_state.001000000~q\,
	datab => \inst2|DRAM|new_sdram_controller_0|m_state.000001000~q\,
	datac => \inst2|DRAM|new_sdram_controller_0|m_state.000010000~q\,
	datad => \inst2|DRAM|new_sdram_controller_0|Selector86~2_combout\,
	combout => \inst2|DRAM|new_sdram_controller_0|Selector86~3_combout\);

-- Location: LCCOMB_X74_Y21_N14
\inst2|DRAM|new_sdram_controller_0|Selector93~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector93~1_combout\ = (!\inst2|DRAM|new_sdram_controller_0|m_state.010000000~q\ & (\inst2|DRAM|new_sdram_controller_0|Selector93~0_combout\ & ((\inst2|DRAM|new_sdram_controller_0|m_state.000000001~q\) # 
-- (!\inst2|DRAM|new_sdram_controller_0|init_done~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|m_state.010000000~q\,
	datab => \inst2|DRAM|new_sdram_controller_0|m_state.000000001~q\,
	datac => \inst2|DRAM|new_sdram_controller_0|init_done~q\,
	datad => \inst2|DRAM|new_sdram_controller_0|Selector93~0_combout\,
	combout => \inst2|DRAM|new_sdram_controller_0|Selector93~1_combout\);

-- Location: DDIOOUTCELL_X78_Y20_N4
\inst2|DRAM|new_sdram_controller_0|m_addr[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|Selector86~3_combout\,
	clrn => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	ena => \inst2|DRAM|new_sdram_controller_0|Selector93~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|m_addr\(12));

-- Location: LCCOMB_X76_Y20_N16
\inst2|DRAM|new_sdram_controller_0|Selector87~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector87~2_combout\ = (\inst2|DRAM|new_sdram_controller_0|m_state.000000010~q\ & ((\inst2|DRAM|new_sdram_controller_0|active_addr\(22)))) # (!\inst2|DRAM|new_sdram_controller_0|m_state.000000010~q\ & 
-- (!\inst2|DRAM|new_sdram_controller_0|i_addr\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|i_addr\(12),
	datab => \inst2|DRAM|new_sdram_controller_0|m_state.000000010~q\,
	datad => \inst2|DRAM|new_sdram_controller_0|active_addr\(22),
	combout => \inst2|DRAM|new_sdram_controller_0|Selector87~2_combout\);

-- Location: LCCOMB_X76_Y20_N4
\inst2|DRAM|new_sdram_controller_0|Selector87~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector87~3_combout\ = (\inst2|DRAM|new_sdram_controller_0|m_state.001000000~q\) # ((!\inst2|DRAM|new_sdram_controller_0|m_state.000001000~q\ & (!\inst2|DRAM|new_sdram_controller_0|m_state.000010000~q\ & 
-- \inst2|DRAM|new_sdram_controller_0|Selector87~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|m_state.001000000~q\,
	datab => \inst2|DRAM|new_sdram_controller_0|m_state.000001000~q\,
	datac => \inst2|DRAM|new_sdram_controller_0|m_state.000010000~q\,
	datad => \inst2|DRAM|new_sdram_controller_0|Selector87~2_combout\,
	combout => \inst2|DRAM|new_sdram_controller_0|Selector87~3_combout\);

-- Location: DDIOOUTCELL_X78_Y24_N4
\inst2|DRAM|new_sdram_controller_0|m_addr[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|Selector87~3_combout\,
	clrn => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	ena => \inst2|DRAM|new_sdram_controller_0|Selector93~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|m_addr\(11));

-- Location: LCCOMB_X76_Y20_N28
\inst2|DRAM|new_sdram_controller_0|Selector88~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector88~2_combout\ = (\inst2|DRAM|new_sdram_controller_0|m_state.000000010~q\ & (\inst2|DRAM|new_sdram_controller_0|active_addr\(21))) # (!\inst2|DRAM|new_sdram_controller_0|m_state.000000010~q\ & 
-- ((!\inst2|DRAM|new_sdram_controller_0|i_addr\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|DRAM|new_sdram_controller_0|m_state.000000010~q\,
	datac => \inst2|DRAM|new_sdram_controller_0|active_addr\(21),
	datad => \inst2|DRAM|new_sdram_controller_0|i_addr\(12),
	combout => \inst2|DRAM|new_sdram_controller_0|Selector88~2_combout\);

-- Location: LCCOMB_X76_Y20_N6
\inst2|DRAM|new_sdram_controller_0|Selector88~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector88~3_combout\ = (\inst2|DRAM|new_sdram_controller_0|m_state.001000000~q\) # ((!\inst2|DRAM|new_sdram_controller_0|m_state.000001000~q\ & (!\inst2|DRAM|new_sdram_controller_0|m_state.000010000~q\ & 
-- \inst2|DRAM|new_sdram_controller_0|Selector88~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|m_state.001000000~q\,
	datab => \inst2|DRAM|new_sdram_controller_0|m_state.000001000~q\,
	datac => \inst2|DRAM|new_sdram_controller_0|m_state.000010000~q\,
	datad => \inst2|DRAM|new_sdram_controller_0|Selector88~2_combout\,
	combout => \inst2|DRAM|new_sdram_controller_0|Selector88~3_combout\);

-- Location: DDIOOUTCELL_X78_Y20_N11
\inst2|DRAM|new_sdram_controller_0|m_addr[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|Selector88~3_combout\,
	clrn => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	ena => \inst2|DRAM|new_sdram_controller_0|Selector93~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|m_addr\(10));

-- Location: LCCOMB_X70_Y23_N30
\inst4|address[10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|address[10]~feeder_combout\ = \inst4|addressCounter\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|addressCounter\(10),
	combout => \inst4|address[10]~feeder_combout\);

-- Location: FF_X70_Y23_N31
\inst4|address[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \inst4|address[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|address\(10));

-- Location: LCCOMB_X75_Y24_N22
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[27]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[27]~feeder_combout\ = \inst4|address\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|address\(10),
	combout => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[27]~feeder_combout\);

-- Location: FF_X75_Y24_N23
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[27]~feeder_combout\,
	ena => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(27));

-- Location: LCCOMB_X75_Y24_N12
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[27]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[27]~feeder_combout\ = \inst4|address\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|address\(10),
	combout => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[27]~feeder_combout\);

-- Location: FF_X75_Y24_N13
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[27]~feeder_combout\,
	ena => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(27));

-- Location: LCCOMB_X77_Y20_N28
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[27]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[27]~16_combout\ = (\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- ((\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(27)))) # (!\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- (\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\,
	datac => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(27),
	datad => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(27),
	combout => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[27]~16_combout\);

-- Location: LCCOMB_X75_Y20_N8
\inst2|DRAM|new_sdram_controller_0|m_addr[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|m_addr[0]~1_combout\ = (\inst2|DRAM|new_sdram_controller_0|m_addr~0_combout\ & (\inst2|DRAM|new_sdram_controller_0|m_state.000000010~q\)) # (!\inst2|DRAM|new_sdram_controller_0|m_addr~0_combout\ & 
-- (((\inst2|DRAM|new_sdram_controller_0|f_pop~q\ & \inst2|DRAM|new_sdram_controller_0|pending~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|m_addr~0_combout\,
	datab => \inst2|DRAM|new_sdram_controller_0|m_state.000000010~q\,
	datac => \inst2|DRAM|new_sdram_controller_0|f_pop~q\,
	datad => \inst2|DRAM|new_sdram_controller_0|pending~combout\,
	combout => \inst2|DRAM|new_sdram_controller_0|m_addr[0]~1_combout\);

-- Location: FF_X77_Y20_N29
\inst2|DRAM|new_sdram_controller_0|active_addr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[27]~16_combout\,
	ena => \inst2|DRAM|new_sdram_controller_0|active_rnw~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|active_addr\(9));

-- Location: LCCOMB_X77_Y20_N30
\inst2|DRAM|new_sdram_controller_0|Selector89~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector89~0_combout\ = (\inst2|DRAM|new_sdram_controller_0|m_addr~0_combout\ & (!\inst2|DRAM|new_sdram_controller_0|i_addr\(12) & (!\inst2|DRAM|new_sdram_controller_0|m_addr[0]~1_combout\))) # 
-- (!\inst2|DRAM|new_sdram_controller_0|m_addr~0_combout\ & (((\inst2|DRAM|new_sdram_controller_0|m_addr[0]~1_combout\) # (\inst2|DRAM|new_sdram_controller_0|active_addr\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|m_addr~0_combout\,
	datab => \inst2|DRAM|new_sdram_controller_0|i_addr\(12),
	datac => \inst2|DRAM|new_sdram_controller_0|m_addr[0]~1_combout\,
	datad => \inst2|DRAM|new_sdram_controller_0|active_addr\(9),
	combout => \inst2|DRAM|new_sdram_controller_0|Selector89~0_combout\);

-- Location: LCCOMB_X77_Y20_N16
\inst2|DRAM|new_sdram_controller_0|Selector89~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector89~1_combout\ = (\inst2|DRAM|new_sdram_controller_0|Selector89~0_combout\ & (((\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[27]~16_combout\) # 
-- (!\inst2|DRAM|new_sdram_controller_0|m_addr[0]~1_combout\)))) # (!\inst2|DRAM|new_sdram_controller_0|Selector89~0_combout\ & (\inst2|DRAM|new_sdram_controller_0|active_addr\(20) & ((\inst2|DRAM|new_sdram_controller_0|m_addr[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|active_addr\(20),
	datab => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[27]~16_combout\,
	datac => \inst2|DRAM|new_sdram_controller_0|Selector89~0_combout\,
	datad => \inst2|DRAM|new_sdram_controller_0|m_addr[0]~1_combout\,
	combout => \inst2|DRAM|new_sdram_controller_0|Selector89~1_combout\);

-- Location: DDIOOUTCELL_X78_Y24_N11
\inst2|DRAM|new_sdram_controller_0|m_addr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|Selector89~1_combout\,
	asdata => VCC,
	clrn => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sload => \inst2|DRAM|new_sdram_controller_0|m_state.001000000~q\,
	ena => \inst2|DRAM|new_sdram_controller_0|Selector93~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|m_addr\(9));

-- Location: LCCOMB_X74_Y25_N16
\inst4|address[9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|address[9]~feeder_combout\ = \inst4|addressCounter\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|addressCounter\(9),
	combout => \inst4|address[9]~feeder_combout\);

-- Location: FF_X74_Y25_N17
\inst4|address[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \inst4|address[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|address\(9));

-- Location: LCCOMB_X75_Y24_N2
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[26]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[26]~feeder_combout\ = \inst4|address\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|address\(9),
	combout => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[26]~feeder_combout\);

-- Location: FF_X75_Y24_N3
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[26]~feeder_combout\,
	ena => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(26));

-- Location: LCCOMB_X75_Y24_N24
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[26]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[26]~feeder_combout\ = \inst4|address\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|address\(9),
	combout => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[26]~feeder_combout\);

-- Location: FF_X75_Y24_N25
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[26]~feeder_combout\,
	ena => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(26));

-- Location: LCCOMB_X77_Y20_N24
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[26]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[26]~17_combout\ = (\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- ((\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(26)))) # (!\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- (\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(26),
	datab => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\,
	datad => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(26),
	combout => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[26]~17_combout\);

-- Location: FF_X77_Y20_N3
\inst2|DRAM|new_sdram_controller_0|active_addr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[26]~17_combout\,
	sload => VCC,
	ena => \inst2|DRAM|new_sdram_controller_0|active_rnw~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|active_addr\(8));

-- Location: LCCOMB_X77_Y20_N4
\inst2|DRAM|new_sdram_controller_0|Selector90~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector90~0_combout\ = (\inst2|DRAM|new_sdram_controller_0|m_addr~0_combout\ & (!\inst2|DRAM|new_sdram_controller_0|i_addr\(12) & (!\inst2|DRAM|new_sdram_controller_0|m_addr[0]~1_combout\))) # 
-- (!\inst2|DRAM|new_sdram_controller_0|m_addr~0_combout\ & (((\inst2|DRAM|new_sdram_controller_0|m_addr[0]~1_combout\) # (\inst2|DRAM|new_sdram_controller_0|active_addr\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|m_addr~0_combout\,
	datab => \inst2|DRAM|new_sdram_controller_0|i_addr\(12),
	datac => \inst2|DRAM|new_sdram_controller_0|m_addr[0]~1_combout\,
	datad => \inst2|DRAM|new_sdram_controller_0|active_addr\(8),
	combout => \inst2|DRAM|new_sdram_controller_0|Selector90~0_combout\);

-- Location: LCCOMB_X77_Y20_N2
\inst2|DRAM|new_sdram_controller_0|Selector90~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector90~1_combout\ = (\inst2|DRAM|new_sdram_controller_0|Selector90~0_combout\ & (((\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[26]~17_combout\) # 
-- (!\inst2|DRAM|new_sdram_controller_0|m_addr[0]~1_combout\)))) # (!\inst2|DRAM|new_sdram_controller_0|Selector90~0_combout\ & (\inst2|DRAM|new_sdram_controller_0|active_addr\(19) & ((\inst2|DRAM|new_sdram_controller_0|m_addr[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|active_addr\(19),
	datab => \inst2|DRAM|new_sdram_controller_0|Selector90~0_combout\,
	datac => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[26]~17_combout\,
	datad => \inst2|DRAM|new_sdram_controller_0|m_addr[0]~1_combout\,
	combout => \inst2|DRAM|new_sdram_controller_0|Selector90~1_combout\);

-- Location: DDIOOUTCELL_X78_Y24_N18
\inst2|DRAM|new_sdram_controller_0|m_addr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|Selector90~1_combout\,
	asdata => VCC,
	clrn => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sload => \inst2|DRAM|new_sdram_controller_0|m_state.001000000~q\,
	ena => \inst2|DRAM|new_sdram_controller_0|Selector93~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|m_addr\(8));

-- Location: LCCOMB_X71_Y25_N18
\inst4|address[8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|address[8]~feeder_combout\ = \inst4|addressCounter\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|addressCounter\(8),
	combout => \inst4|address[8]~feeder_combout\);

-- Location: FF_X71_Y25_N19
\inst4|address[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \inst4|address[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|address\(8));

-- Location: LCCOMB_X75_Y24_N14
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[25]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[25]~feeder_combout\ = \inst4|address\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|address\(8),
	combout => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[25]~feeder_combout\);

-- Location: FF_X75_Y24_N15
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[25]~feeder_combout\,
	ena => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(25));

-- Location: LCCOMB_X75_Y24_N4
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[25]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[25]~feeder_combout\ = \inst4|address\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|address\(8),
	combout => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[25]~feeder_combout\);

-- Location: FF_X75_Y24_N5
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[25]~feeder_combout\,
	ena => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(25));

-- Location: LCCOMB_X77_Y20_N14
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[25]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[25]~18_combout\ = (\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- ((\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(25)))) # (!\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- (\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\,
	datac => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(25),
	datad => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(25),
	combout => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[25]~18_combout\);

-- Location: FF_X77_Y20_N15
\inst2|DRAM|new_sdram_controller_0|active_addr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[25]~18_combout\,
	ena => \inst2|DRAM|new_sdram_controller_0|active_rnw~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|active_addr\(7));

-- Location: LCCOMB_X77_Y20_N0
\inst2|DRAM|new_sdram_controller_0|Selector91~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector91~0_combout\ = (\inst2|DRAM|new_sdram_controller_0|m_addr~0_combout\ & (!\inst2|DRAM|new_sdram_controller_0|i_addr\(12) & (!\inst2|DRAM|new_sdram_controller_0|m_addr[0]~1_combout\))) # 
-- (!\inst2|DRAM|new_sdram_controller_0|m_addr~0_combout\ & (((\inst2|DRAM|new_sdram_controller_0|m_addr[0]~1_combout\) # (\inst2|DRAM|new_sdram_controller_0|active_addr\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|m_addr~0_combout\,
	datab => \inst2|DRAM|new_sdram_controller_0|i_addr\(12),
	datac => \inst2|DRAM|new_sdram_controller_0|m_addr[0]~1_combout\,
	datad => \inst2|DRAM|new_sdram_controller_0|active_addr\(7),
	combout => \inst2|DRAM|new_sdram_controller_0|Selector91~0_combout\);

-- Location: LCCOMB_X77_Y20_N26
\inst2|DRAM|new_sdram_controller_0|Selector91~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector91~1_combout\ = (\inst2|DRAM|new_sdram_controller_0|m_addr[0]~1_combout\ & ((\inst2|DRAM|new_sdram_controller_0|Selector91~0_combout\ & 
-- ((\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[25]~18_combout\))) # (!\inst2|DRAM|new_sdram_controller_0|Selector91~0_combout\ & (\inst2|DRAM|new_sdram_controller_0|active_addr\(18))))) # 
-- (!\inst2|DRAM|new_sdram_controller_0|m_addr[0]~1_combout\ & (((\inst2|DRAM|new_sdram_controller_0|Selector91~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|active_addr\(18),
	datab => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[25]~18_combout\,
	datac => \inst2|DRAM|new_sdram_controller_0|m_addr[0]~1_combout\,
	datad => \inst2|DRAM|new_sdram_controller_0|Selector91~0_combout\,
	combout => \inst2|DRAM|new_sdram_controller_0|Selector91~1_combout\);

-- Location: DDIOOUTCELL_X78_Y24_N26
\inst2|DRAM|new_sdram_controller_0|m_addr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|Selector91~1_combout\,
	asdata => VCC,
	clrn => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sload => \inst2|DRAM|new_sdram_controller_0|m_state.001000000~q\,
	ena => \inst2|DRAM|new_sdram_controller_0|Selector93~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|m_addr\(7));

-- Location: LCCOMB_X74_Y25_N26
\inst4|address[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|address[7]~feeder_combout\ = \inst4|addressCounter\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|addressCounter\(7),
	combout => \inst4|address[7]~feeder_combout\);

-- Location: FF_X74_Y25_N27
\inst4|address[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \inst4|address[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|address\(7));

-- Location: LCCOMB_X75_Y24_N26
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[24]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[24]~feeder_combout\ = \inst4|address\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|address\(7),
	combout => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[24]~feeder_combout\);

-- Location: FF_X75_Y24_N27
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[24]~feeder_combout\,
	ena => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(24));

-- Location: LCCOMB_X75_Y24_N8
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[24]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[24]~feeder_combout\ = \inst4|address\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|address\(7),
	combout => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[24]~feeder_combout\);

-- Location: FF_X75_Y24_N9
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[24]~feeder_combout\,
	ena => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(24));

-- Location: LCCOMB_X76_Y20_N30
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[24]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[24]~19_combout\ = (\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- ((\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(24)))) # (!\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- (\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(24),
	datab => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\,
	datad => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(24),
	combout => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[24]~19_combout\);

-- Location: FF_X76_Y20_N21
\inst2|DRAM|new_sdram_controller_0|active_addr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[24]~19_combout\,
	sload => VCC,
	ena => \inst2|DRAM|new_sdram_controller_0|active_rnw~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|active_addr\(6));

-- Location: LCCOMB_X76_Y20_N14
\inst2|DRAM|new_sdram_controller_0|Selector92~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector92~0_combout\ = (\inst2|DRAM|new_sdram_controller_0|m_addr~0_combout\ & (!\inst2|DRAM|new_sdram_controller_0|i_addr\(12) & ((!\inst2|DRAM|new_sdram_controller_0|m_addr[0]~1_combout\)))) # 
-- (!\inst2|DRAM|new_sdram_controller_0|m_addr~0_combout\ & (((\inst2|DRAM|new_sdram_controller_0|active_addr\(6)) # (\inst2|DRAM|new_sdram_controller_0|m_addr[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|i_addr\(12),
	datab => \inst2|DRAM|new_sdram_controller_0|active_addr\(6),
	datac => \inst2|DRAM|new_sdram_controller_0|m_addr~0_combout\,
	datad => \inst2|DRAM|new_sdram_controller_0|m_addr[0]~1_combout\,
	combout => \inst2|DRAM|new_sdram_controller_0|Selector92~0_combout\);

-- Location: LCCOMB_X76_Y20_N20
\inst2|DRAM|new_sdram_controller_0|Selector92~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector92~1_combout\ = (\inst2|DRAM|new_sdram_controller_0|Selector92~0_combout\ & (((\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[24]~19_combout\) # 
-- (!\inst2|DRAM|new_sdram_controller_0|m_addr[0]~1_combout\)))) # (!\inst2|DRAM|new_sdram_controller_0|Selector92~0_combout\ & (\inst2|DRAM|new_sdram_controller_0|active_addr\(17) & ((\inst2|DRAM|new_sdram_controller_0|m_addr[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|active_addr\(17),
	datab => \inst2|DRAM|new_sdram_controller_0|Selector92~0_combout\,
	datac => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[24]~19_combout\,
	datad => \inst2|DRAM|new_sdram_controller_0|m_addr[0]~1_combout\,
	combout => \inst2|DRAM|new_sdram_controller_0|Selector92~1_combout\);

-- Location: DDIOOUTCELL_X78_Y20_N26
\inst2|DRAM|new_sdram_controller_0|m_addr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|Selector92~1_combout\,
	asdata => VCC,
	clrn => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sload => \inst2|DRAM|new_sdram_controller_0|m_state.001000000~q\,
	ena => \inst2|DRAM|new_sdram_controller_0|Selector93~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|m_addr\(6));

-- Location: LCCOMB_X74_Y25_N28
\inst4|address[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|address[6]~feeder_combout\ = \inst4|addressCounter\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|addressCounter\(6),
	combout => \inst4|address[6]~feeder_combout\);

-- Location: FF_X74_Y25_N29
\inst4|address[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \inst4|address[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|address\(6));

-- Location: LCCOMB_X75_Y24_N6
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[23]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[23]~feeder_combout\ = \inst4|address\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|address\(6),
	combout => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[23]~feeder_combout\);

-- Location: FF_X75_Y24_N7
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[23]~feeder_combout\,
	ena => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(23));

-- Location: LCCOMB_X75_Y24_N28
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[23]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[23]~feeder_combout\ = \inst4|address\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|address\(6),
	combout => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[23]~feeder_combout\);

-- Location: FF_X75_Y24_N29
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[23]~feeder_combout\,
	ena => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(23));

-- Location: LCCOMB_X74_Y20_N20
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[23]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[23]~20_combout\ = (\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- ((\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(23)))) # (!\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- (\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(23),
	datab => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\,
	datad => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(23),
	combout => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[23]~20_combout\);

-- Location: FF_X74_Y20_N21
\inst2|DRAM|new_sdram_controller_0|active_addr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[23]~20_combout\,
	ena => \inst2|DRAM|new_sdram_controller_0|active_rnw~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|active_addr\(5));

-- Location: LCCOMB_X74_Y20_N6
\inst2|DRAM|new_sdram_controller_0|Selector93~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector93~3_combout\ = (\inst2|DRAM|new_sdram_controller_0|m_addr~0_combout\) # ((\inst2|DRAM|new_sdram_controller_0|active_addr\(5) & ((!\inst2|DRAM|new_sdram_controller_0|f_pop~q\) # 
-- (!\inst2|DRAM|new_sdram_controller_0|pending~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|pending~combout\,
	datab => \inst2|DRAM|new_sdram_controller_0|active_addr\(5),
	datac => \inst2|DRAM|new_sdram_controller_0|m_addr~0_combout\,
	datad => \inst2|DRAM|new_sdram_controller_0|f_pop~q\,
	combout => \inst2|DRAM|new_sdram_controller_0|Selector93~3_combout\);

-- Location: FF_X74_Y20_N17
\inst2|DRAM|new_sdram_controller_0|m_addr[5]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|Selector93~4_combout\,
	clrn => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|m_addr[5]~_Duplicate_1_q\);

-- Location: LCCOMB_X74_Y20_N2
\inst2|DRAM|new_sdram_controller_0|Selector93~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector93~2_combout\ = (\inst2|DRAM|new_sdram_controller_0|active_addr\(16) & (((\inst2|DRAM|new_sdram_controller_0|Selector93~1_combout\) # (\inst2|DRAM|new_sdram_controller_0|m_addr[5]~_Duplicate_1_q\)))) # 
-- (!\inst2|DRAM|new_sdram_controller_0|active_addr\(16) & (!\inst2|DRAM|new_sdram_controller_0|m_state.000000010~q\ & ((\inst2|DRAM|new_sdram_controller_0|Selector93~1_combout\) # (\inst2|DRAM|new_sdram_controller_0|m_addr[5]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|active_addr\(16),
	datab => \inst2|DRAM|new_sdram_controller_0|m_state.000000010~q\,
	datac => \inst2|DRAM|new_sdram_controller_0|Selector93~1_combout\,
	datad => \inst2|DRAM|new_sdram_controller_0|m_addr[5]~_Duplicate_1_q\,
	combout => \inst2|DRAM|new_sdram_controller_0|Selector93~2_combout\);

-- Location: LCCOMB_X74_Y20_N16
\inst2|DRAM|new_sdram_controller_0|Selector93~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector93~4_combout\ = (\inst2|DRAM|new_sdram_controller_0|Selector93~2_combout\ & ((\inst2|DRAM|new_sdram_controller_0|Selector93~3_combout\) # 
-- ((\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[23]~20_combout\ & \inst2|DRAM|new_sdram_controller_0|f_select~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|Selector93~3_combout\,
	datab => \inst2|DRAM|new_sdram_controller_0|Selector93~2_combout\,
	datac => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[23]~20_combout\,
	datad => \inst2|DRAM|new_sdram_controller_0|f_select~combout\,
	combout => \inst2|DRAM|new_sdram_controller_0|Selector93~4_combout\);

-- Location: DDIOOUTCELL_X78_Y20_N18
\inst2|DRAM|new_sdram_controller_0|m_addr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|Selector93~4_combout\,
	clrn => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|m_addr\(5));

-- Location: LCCOMB_X74_Y25_N30
\inst4|address[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|address[5]~feeder_combout\ = \inst4|addressCounter\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|addressCounter\(5),
	combout => \inst4|address[5]~feeder_combout\);

-- Location: FF_X74_Y25_N31
\inst4|address[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \inst4|address[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|address\(5));

-- Location: LCCOMB_X75_Y24_N10
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[22]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[22]~feeder_combout\ = \inst4|address\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|address\(5),
	combout => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[22]~feeder_combout\);

-- Location: FF_X75_Y24_N11
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[22]~feeder_combout\,
	ena => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(22));

-- Location: LCCOMB_X75_Y24_N0
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[22]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[22]~feeder_combout\ = \inst4|address\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|address\(5),
	combout => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[22]~feeder_combout\);

-- Location: FF_X75_Y24_N1
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[22]~feeder_combout\,
	ena => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(22));

-- Location: LCCOMB_X75_Y20_N12
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[22]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[22]~21_combout\ = (\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- ((\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(22)))) # (!\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- (\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(22),
	datab => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(22),
	datad => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\,
	combout => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[22]~21_combout\);

-- Location: FF_X75_Y20_N27
\inst2|DRAM|new_sdram_controller_0|active_addr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[22]~21_combout\,
	sload => VCC,
	ena => \inst2|DRAM|new_sdram_controller_0|active_rnw~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|active_addr\(4));

-- Location: LCCOMB_X75_Y20_N4
\inst2|DRAM|new_sdram_controller_0|Selector94~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector94~0_combout\ = (\inst2|DRAM|new_sdram_controller_0|m_addr[0]~1_combout\ & (((!\inst2|DRAM|new_sdram_controller_0|m_addr~0_combout\)))) # (!\inst2|DRAM|new_sdram_controller_0|m_addr[0]~1_combout\ & 
-- ((\inst2|DRAM|new_sdram_controller_0|m_addr~0_combout\ & ((!\inst2|DRAM|new_sdram_controller_0|i_addr\(12)))) # (!\inst2|DRAM|new_sdram_controller_0|m_addr~0_combout\ & (\inst2|DRAM|new_sdram_controller_0|active_addr\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|active_addr\(4),
	datab => \inst2|DRAM|new_sdram_controller_0|i_addr\(12),
	datac => \inst2|DRAM|new_sdram_controller_0|m_addr[0]~1_combout\,
	datad => \inst2|DRAM|new_sdram_controller_0|m_addr~0_combout\,
	combout => \inst2|DRAM|new_sdram_controller_0|Selector94~0_combout\);

-- Location: LCCOMB_X76_Y20_N2
\inst2|DRAM|new_sdram_controller_0|Selector94~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector94~1_combout\ = (\inst2|DRAM|new_sdram_controller_0|Selector94~0_combout\ & ((\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[22]~21_combout\) # 
-- ((!\inst2|DRAM|new_sdram_controller_0|m_addr[0]~1_combout\)))) # (!\inst2|DRAM|new_sdram_controller_0|Selector94~0_combout\ & (((\inst2|DRAM|new_sdram_controller_0|active_addr\(15) & \inst2|DRAM|new_sdram_controller_0|m_addr[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[22]~21_combout\,
	datab => \inst2|DRAM|new_sdram_controller_0|Selector94~0_combout\,
	datac => \inst2|DRAM|new_sdram_controller_0|active_addr\(15),
	datad => \inst2|DRAM|new_sdram_controller_0|m_addr[0]~1_combout\,
	combout => \inst2|DRAM|new_sdram_controller_0|Selector94~1_combout\);

-- Location: DDIOOUTCELL_X78_Y15_N18
\inst2|DRAM|new_sdram_controller_0|m_addr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|Selector94~1_combout\,
	asdata => VCC,
	clrn => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sload => \inst2|DRAM|new_sdram_controller_0|m_state.001000000~q\,
	ena => \inst2|DRAM|new_sdram_controller_0|Selector93~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|m_addr\(4));

-- Location: LCCOMB_X74_Y25_N24
\inst4|address[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|address[4]~feeder_combout\ = \inst4|addressCounter\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|addressCounter\(4),
	combout => \inst4|address[4]~feeder_combout\);

-- Location: FF_X74_Y25_N25
\inst4|address[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \inst4|address[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|address\(4));

-- Location: LCCOMB_X75_Y24_N20
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[21]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[21]~feeder_combout\ = \inst4|address\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|address\(4),
	combout => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[21]~feeder_combout\);

-- Location: FF_X75_Y24_N21
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[21]~feeder_combout\,
	ena => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(21));

-- Location: LCCOMB_X75_Y24_N30
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[21]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[21]~feeder_combout\ = \inst4|address\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|address\(4),
	combout => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[21]~feeder_combout\);

-- Location: FF_X75_Y24_N31
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[21]~feeder_combout\,
	ena => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(21));

-- Location: LCCOMB_X75_Y20_N22
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[21]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[21]~22_combout\ = (\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- (\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(21))) # (!\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- ((\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(21),
	datab => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(21),
	datad => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\,
	combout => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[21]~22_combout\);

-- Location: FF_X75_Y20_N23
\inst2|DRAM|new_sdram_controller_0|active_addr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[21]~22_combout\,
	ena => \inst2|DRAM|new_sdram_controller_0|active_rnw~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|active_addr\(3));

-- Location: LCCOMB_X75_Y20_N16
\inst2|DRAM|new_sdram_controller_0|Selector95~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector95~0_combout\ = (\inst2|DRAM|new_sdram_controller_0|m_addr~0_combout\ & (!\inst2|DRAM|new_sdram_controller_0|i_addr\(12) & (!\inst2|DRAM|new_sdram_controller_0|m_addr[0]~1_combout\))) # 
-- (!\inst2|DRAM|new_sdram_controller_0|m_addr~0_combout\ & (((\inst2|DRAM|new_sdram_controller_0|m_addr[0]~1_combout\) # (\inst2|DRAM|new_sdram_controller_0|active_addr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|m_addr~0_combout\,
	datab => \inst2|DRAM|new_sdram_controller_0|i_addr\(12),
	datac => \inst2|DRAM|new_sdram_controller_0|m_addr[0]~1_combout\,
	datad => \inst2|DRAM|new_sdram_controller_0|active_addr\(3),
	combout => \inst2|DRAM|new_sdram_controller_0|Selector95~0_combout\);

-- Location: LCCOMB_X75_Y20_N2
\inst2|DRAM|new_sdram_controller_0|Selector95~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector95~1_combout\ = (\inst2|DRAM|new_sdram_controller_0|m_addr[0]~1_combout\ & ((\inst2|DRAM|new_sdram_controller_0|Selector95~0_combout\ & 
-- ((\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[21]~22_combout\))) # (!\inst2|DRAM|new_sdram_controller_0|Selector95~0_combout\ & (\inst2|DRAM|new_sdram_controller_0|active_addr\(14))))) # 
-- (!\inst2|DRAM|new_sdram_controller_0|m_addr[0]~1_combout\ & (((\inst2|DRAM|new_sdram_controller_0|Selector95~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|active_addr\(14),
	datab => \inst2|DRAM|new_sdram_controller_0|m_addr[0]~1_combout\,
	datac => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[21]~22_combout\,
	datad => \inst2|DRAM|new_sdram_controller_0|Selector95~0_combout\,
	combout => \inst2|DRAM|new_sdram_controller_0|Selector95~1_combout\);

-- Location: DDIOOUTCELL_X78_Y3_N25
\inst2|DRAM|new_sdram_controller_0|m_addr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|Selector95~1_combout\,
	asdata => VCC,
	clrn => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sload => \inst2|DRAM|new_sdram_controller_0|m_state.001000000~q\,
	ena => \inst2|DRAM|new_sdram_controller_0|Selector93~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|m_addr\(3));

-- Location: LCCOMB_X71_Y25_N20
\inst4|address[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|address[3]~feeder_combout\ = \inst4|addressCounter\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|addressCounter\(3),
	combout => \inst4|address[3]~feeder_combout\);

-- Location: FF_X71_Y25_N21
\inst4|address[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \inst4|address[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|address\(3));

-- Location: LCCOMB_X77_Y20_N22
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[20]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[20]~feeder_combout\ = \inst4|address\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|address\(3),
	combout => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[20]~feeder_combout\);

-- Location: FF_X77_Y20_N23
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[20]~feeder_combout\,
	ena => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(20));

-- Location: FF_X74_Y22_N9
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => \inst4|address\(3),
	sload => VCC,
	ena => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(20));

-- Location: LCCOMB_X77_Y20_N20
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[20]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[20]~23_combout\ = (\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- ((\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(20)))) # (!\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- (\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(20),
	datab => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\,
	datad => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(20),
	combout => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[20]~23_combout\);

-- Location: FF_X77_Y20_N21
\inst2|DRAM|new_sdram_controller_0|active_addr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[20]~23_combout\,
	ena => \inst2|DRAM|new_sdram_controller_0|active_rnw~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|active_addr\(2));

-- Location: LCCOMB_X76_Y20_N24
\inst2|DRAM|new_sdram_controller_0|Selector96~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector96~0_combout\ = (\inst2|DRAM|new_sdram_controller_0|m_addr~0_combout\ & ((\inst2|DRAM|new_sdram_controller_0|m_addr[0]~1_combout\ & ((\inst2|DRAM|new_sdram_controller_0|active_addr\(13)))) # 
-- (!\inst2|DRAM|new_sdram_controller_0|m_addr[0]~1_combout\ & (!\inst2|DRAM|new_sdram_controller_0|i_addr\(12))))) # (!\inst2|DRAM|new_sdram_controller_0|m_addr~0_combout\ & (((\inst2|DRAM|new_sdram_controller_0|m_addr[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|i_addr\(12),
	datab => \inst2|DRAM|new_sdram_controller_0|active_addr\(13),
	datac => \inst2|DRAM|new_sdram_controller_0|m_addr~0_combout\,
	datad => \inst2|DRAM|new_sdram_controller_0|m_addr[0]~1_combout\,
	combout => \inst2|DRAM|new_sdram_controller_0|Selector96~0_combout\);

-- Location: LCCOMB_X77_Y20_N8
\inst2|DRAM|new_sdram_controller_0|Selector96~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector96~1_combout\ = (\inst2|DRAM|new_sdram_controller_0|m_addr~0_combout\ & (((\inst2|DRAM|new_sdram_controller_0|Selector96~0_combout\)))) # (!\inst2|DRAM|new_sdram_controller_0|m_addr~0_combout\ & 
-- ((\inst2|DRAM|new_sdram_controller_0|Selector96~0_combout\ & ((\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[20]~23_combout\))) # (!\inst2|DRAM|new_sdram_controller_0|Selector96~0_combout\ & 
-- (\inst2|DRAM|new_sdram_controller_0|active_addr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|active_addr\(2),
	datab => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[20]~23_combout\,
	datac => \inst2|DRAM|new_sdram_controller_0|m_addr~0_combout\,
	datad => \inst2|DRAM|new_sdram_controller_0|Selector96~0_combout\,
	combout => \inst2|DRAM|new_sdram_controller_0|Selector96~1_combout\);

-- Location: DDIOOUTCELL_X78_Y15_N25
\inst2|DRAM|new_sdram_controller_0|m_addr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|Selector96~1_combout\,
	asdata => VCC,
	clrn => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sload => \inst2|DRAM|new_sdram_controller_0|m_state.001000000~q\,
	ena => \inst2|DRAM|new_sdram_controller_0|Selector93~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|m_addr\(2));

-- Location: LCCOMB_X72_Y22_N26
\inst4|address[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|address[2]~feeder_combout\ = \inst4|addressCounter\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|addressCounter\(2),
	combout => \inst4|address[2]~feeder_combout\);

-- Location: FF_X72_Y22_N27
\inst4|address[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \inst4|address[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|address\(2));

-- Location: LCCOMB_X75_Y22_N16
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[19]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[19]~feeder_combout\ = \inst4|address\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|address\(2),
	combout => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[19]~feeder_combout\);

-- Location: FF_X75_Y22_N17
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[19]~feeder_combout\,
	ena => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(19));

-- Location: LCCOMB_X77_Y22_N26
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[19]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[19]~feeder_combout\ = \inst4|address\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|address\(2),
	combout => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[19]~feeder_combout\);

-- Location: FF_X77_Y22_N27
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[19]~feeder_combout\,
	ena => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(19));

-- Location: LCCOMB_X77_Y20_N10
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[19]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[19]~24_combout\ = (\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- ((\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(19)))) # (!\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- (\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(19),
	datab => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\,
	datad => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(19),
	combout => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[19]~24_combout\);

-- Location: FF_X77_Y20_N11
\inst2|DRAM|new_sdram_controller_0|active_addr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[19]~24_combout\,
	ena => \inst2|DRAM|new_sdram_controller_0|active_rnw~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|active_addr\(1));

-- Location: LCCOMB_X77_Y20_N12
\inst2|DRAM|new_sdram_controller_0|Selector97~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector97~0_combout\ = (\inst2|DRAM|new_sdram_controller_0|m_addr~0_combout\ & (!\inst2|DRAM|new_sdram_controller_0|i_addr\(12) & (!\inst2|DRAM|new_sdram_controller_0|m_addr[0]~1_combout\))) # 
-- (!\inst2|DRAM|new_sdram_controller_0|m_addr~0_combout\ & (((\inst2|DRAM|new_sdram_controller_0|m_addr[0]~1_combout\) # (\inst2|DRAM|new_sdram_controller_0|active_addr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|m_addr~0_combout\,
	datab => \inst2|DRAM|new_sdram_controller_0|i_addr\(12),
	datac => \inst2|DRAM|new_sdram_controller_0|m_addr[0]~1_combout\,
	datad => \inst2|DRAM|new_sdram_controller_0|active_addr\(1),
	combout => \inst2|DRAM|new_sdram_controller_0|Selector97~0_combout\);

-- Location: LCCOMB_X77_Y20_N6
\inst2|DRAM|new_sdram_controller_0|Selector97~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector97~1_combout\ = (\inst2|DRAM|new_sdram_controller_0|m_addr[0]~1_combout\ & ((\inst2|DRAM|new_sdram_controller_0|Selector97~0_combout\ & 
-- (\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[19]~24_combout\)) # (!\inst2|DRAM|new_sdram_controller_0|Selector97~0_combout\ & ((\inst2|DRAM|new_sdram_controller_0|active_addr\(12)))))) # 
-- (!\inst2|DRAM|new_sdram_controller_0|m_addr[0]~1_combout\ & (((\inst2|DRAM|new_sdram_controller_0|Selector97~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[19]~24_combout\,
	datab => \inst2|DRAM|new_sdram_controller_0|m_addr[0]~1_combout\,
	datac => \inst2|DRAM|new_sdram_controller_0|active_addr\(12),
	datad => \inst2|DRAM|new_sdram_controller_0|Selector97~0_combout\,
	combout => \inst2|DRAM|new_sdram_controller_0|Selector97~1_combout\);

-- Location: DDIOOUTCELL_X78_Y16_N26
\inst2|DRAM|new_sdram_controller_0|m_addr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|Selector97~1_combout\,
	asdata => VCC,
	clrn => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sload => \inst2|DRAM|new_sdram_controller_0|m_state.001000000~q\,
	ena => \inst2|DRAM|new_sdram_controller_0|Selector93~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|m_addr\(1));

-- Location: FF_X72_Y22_N13
\inst4|address[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	asdata => \inst4|addressCounter\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|address\(1));

-- Location: LCCOMB_X72_Y22_N8
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[18]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[18]~feeder_combout\ = \inst4|address\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|address\(1),
	combout => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[18]~feeder_combout\);

-- Location: FF_X72_Y22_N9
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[18]~feeder_combout\,
	ena => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(18));

-- Location: LCCOMB_X74_Y22_N18
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[18]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[18]~feeder_combout\ = \inst4|address\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|address\(1),
	combout => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[18]~feeder_combout\);

-- Location: FF_X74_Y22_N19
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[18]~feeder_combout\,
	ena => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(18));

-- Location: LCCOMB_X75_Y20_N28
\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[18]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[18]~25_combout\ = (\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- ((\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(18)))) # (!\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- (\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(18),
	datab => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\,
	datad => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(18),
	combout => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[18]~25_combout\);

-- Location: FF_X75_Y20_N29
\inst2|DRAM|new_sdram_controller_0|active_addr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[18]~25_combout\,
	ena => \inst2|DRAM|new_sdram_controller_0|active_rnw~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|active_addr\(0));

-- Location: LCCOMB_X75_Y20_N14
\inst2|DRAM|new_sdram_controller_0|Selector98~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector98~0_combout\ = (\inst2|DRAM|new_sdram_controller_0|m_addr~0_combout\ & ((\inst2|DRAM|new_sdram_controller_0|m_addr[0]~1_combout\ & ((\inst2|DRAM|new_sdram_controller_0|active_addr\(11)))) # 
-- (!\inst2|DRAM|new_sdram_controller_0|m_addr[0]~1_combout\ & (!\inst2|DRAM|new_sdram_controller_0|i_addr\(12))))) # (!\inst2|DRAM|new_sdram_controller_0|m_addr~0_combout\ & (\inst2|DRAM|new_sdram_controller_0|m_addr[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|m_addr~0_combout\,
	datab => \inst2|DRAM|new_sdram_controller_0|m_addr[0]~1_combout\,
	datac => \inst2|DRAM|new_sdram_controller_0|i_addr\(12),
	datad => \inst2|DRAM|new_sdram_controller_0|active_addr\(11),
	combout => \inst2|DRAM|new_sdram_controller_0|Selector98~0_combout\);

-- Location: LCCOMB_X75_Y20_N6
\inst2|DRAM|new_sdram_controller_0|Selector98~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector98~1_combout\ = (\inst2|DRAM|new_sdram_controller_0|m_addr~0_combout\ & (((\inst2|DRAM|new_sdram_controller_0|Selector98~0_combout\)))) # (!\inst2|DRAM|new_sdram_controller_0|m_addr~0_combout\ & 
-- ((\inst2|DRAM|new_sdram_controller_0|Selector98~0_combout\ & (\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[18]~25_combout\)) # (!\inst2|DRAM|new_sdram_controller_0|Selector98~0_combout\ & 
-- ((\inst2|DRAM|new_sdram_controller_0|active_addr\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|m_addr~0_combout\,
	datab => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[18]~25_combout\,
	datac => \inst2|DRAM|new_sdram_controller_0|active_addr\(0),
	datad => \inst2|DRAM|new_sdram_controller_0|Selector98~0_combout\,
	combout => \inst2|DRAM|new_sdram_controller_0|Selector98~1_combout\);

-- Location: DDIOOUTCELL_X78_Y3_N18
\inst2|DRAM|new_sdram_controller_0|m_addr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|Selector98~1_combout\,
	asdata => VCC,
	clrn => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sload => \inst2|DRAM|new_sdram_controller_0|m_state.001000000~q\,
	ena => \inst2|DRAM|new_sdram_controller_0|Selector93~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|m_addr\(0));

-- Location: LCCOMB_X71_Y20_N30
\inst2|DRAM|new_sdram_controller_0|Selector99~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector99~0_combout\ = (\inst2|DRAM|new_sdram_controller_0|m_state.000000010~q\ & (((\inst2|DRAM|new_sdram_controller_0|active_addr\(24))))) # (!\inst2|DRAM|new_sdram_controller_0|m_state.000000010~q\ & 
-- ((\inst2|DRAM|new_sdram_controller_0|f_select~combout\ & (\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[42]~3_combout\)) # (!\inst2|DRAM|new_sdram_controller_0|f_select~combout\ & 
-- ((\inst2|DRAM|new_sdram_controller_0|active_addr\(24))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|m_state.000000010~q\,
	datab => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[42]~3_combout\,
	datac => \inst2|DRAM|new_sdram_controller_0|active_addr\(24),
	datad => \inst2|DRAM|new_sdram_controller_0|f_select~combout\,
	combout => \inst2|DRAM|new_sdram_controller_0|Selector99~0_combout\);

-- Location: LCCOMB_X74_Y19_N12
\inst2|DRAM|new_sdram_controller_0|WideOr16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|WideOr16~0_combout\ = (\inst2|DRAM|new_sdram_controller_0|m_state.000001000~q\) # ((\inst2|DRAM|new_sdram_controller_0|m_state.000000010~q\) # (\inst2|DRAM|new_sdram_controller_0|m_state.000010000~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|m_state.000001000~q\,
	datab => \inst2|DRAM|new_sdram_controller_0|m_state.000000010~q\,
	datad => \inst2|DRAM|new_sdram_controller_0|m_state.000010000~q\,
	combout => \inst2|DRAM|new_sdram_controller_0|WideOr16~0_combout\);

-- Location: DDIOOUTCELL_X78_Y18_N4
\inst2|DRAM|new_sdram_controller_0|m_bank[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|Selector99~0_combout\,
	clrn => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	ena => \inst2|DRAM|new_sdram_controller_0|WideOr16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|m_bank\(1));

-- Location: LCCOMB_X71_Y20_N8
\inst2|DRAM|new_sdram_controller_0|Selector100~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|DRAM|new_sdram_controller_0|Selector100~0_combout\ = (\inst2|DRAM|new_sdram_controller_0|m_state.000000010~q\ & (((\inst2|DRAM|new_sdram_controller_0|active_addr\(10))))) # (!\inst2|DRAM|new_sdram_controller_0|m_state.000000010~q\ & 
-- ((\inst2|DRAM|new_sdram_controller_0|f_select~combout\ & (\inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[28]~0_combout\)) # (!\inst2|DRAM|new_sdram_controller_0|f_select~combout\ & 
-- ((\inst2|DRAM|new_sdram_controller_0|active_addr\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[28]~0_combout\,
	datab => \inst2|DRAM|new_sdram_controller_0|m_state.000000010~q\,
	datac => \inst2|DRAM|new_sdram_controller_0|active_addr\(10),
	datad => \inst2|DRAM|new_sdram_controller_0|f_select~combout\,
	combout => \inst2|DRAM|new_sdram_controller_0|Selector100~0_combout\);

-- Location: DDIOOUTCELL_X78_Y18_N11
\inst2|DRAM|new_sdram_controller_0|m_bank[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \inst2|DRAM|new_sdram_controller_0|Selector100~0_combout\,
	clrn => \inst2|DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	ena => \inst2|DRAM|new_sdram_controller_0|WideOr16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|DRAM|new_sdram_controller_0|m_bank\(0));

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


