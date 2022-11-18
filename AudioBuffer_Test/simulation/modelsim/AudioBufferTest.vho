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

-- DATE "11/18/2022 09:29:21"

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
-- RW_switch	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addrUp	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addDw	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- led_out[10]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[11]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[12]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[13]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[14]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[15]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL \Selector1~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ADCCLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \estado_pres.e1~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \DE10CLK~input_o\ : std_logic;
SIGNAL \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|pll1~FBOUT\ : std_logic;
SIGNAL \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \ADCCLK~input_o\ : std_logic;
SIGNAL \ADCCLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain[1]~feeder_combout\ : std_logic;
SIGNAL \DE10Reset~input_o\ : std_logic;
SIGNAL \u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain[0]~feeder_combout\ : std_logic;
SIGNAL \u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PUTRESP_DLY1~q\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PUTRESP_DLY2~q\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|WideOr12~0_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|eoc_synch_dly~q\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PUTRESP_DLY3~q\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|int_timer[0]~8_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.GETCMD~q\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|Selector9~0_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.CONV~q\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|arc_to_conv~0_combout\ : std_logic;
SIGNAL \u1|altpll_0|sd1|wire_pll7_fbout\ : std_logic;
SIGNAL \u1|altpll_0|sd1|wire_pll7_locked\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.IDLE~0_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.IDLE~q\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|Selector1~0_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN~q\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|Selector2~0_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN_TSEN~q\ : std_logic;
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
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|Selector18~0_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|Selector15~2_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|WideOr17~combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|Selector18~1_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|usr_pwd~q\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|usr_pwd~_wirecell_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|Selector3~0_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN_DONE~q\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|Selector3~1_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|WideOr12~combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|Selector15~3_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|chsel[0]~2_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|adc_inst|decoder|WideOr4~0_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|adc_inst|decoder|WideOr2~0_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|chsel[1]~_wirecell_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|clkout_adccore\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|u_clk_dft_synchronizer|din_s1~feeder_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|u_clk_dft_synchronizer|din_s1~q\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|u_clk_dft_synchronizer|dreg[0]~feeder_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|clk_dft_synch_dly~feeder_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|clk_dft_synch_dly~q\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|Selector4~0_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRUP_CH~q\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|Selector5~0_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|Selector5~1_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRUP_SOC~q\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|Selector7~0_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|WideOr12~1_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|Selector17~0_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|soc~q\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|eoc\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|u_eoc_synchronizer|din_s1~feeder_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|u_eoc_synchronizer|din_s1~q\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|u_eoc_synchronizer|dreg[0]~feeder_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|load_dout~1_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.CONV_DLY1~q\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[0]~feeder_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|pend~0_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|pend~q\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|load_dout~0_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~0_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|load_rsp~0_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|rsp_valid~q\ : std_logic;
SIGNAL \DE10CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \estado_pres.e1~0_combout\ : std_logic;
SIGNAL \estado_pres.e1~feeder_combout\ : std_logic;
SIGNAL \estado_pres.e1~q\ : std_logic;
SIGNAL \estado_sig~1_combout\ : std_logic;
SIGNAL \estado_pres.e4~feeder_combout\ : std_logic;
SIGNAL \estado_pres.e4~q\ : std_logic;
SIGNAL \writerequest~combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries[1]~0_combout\ : std_logic;
SIGNAL \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain[1]~feeder_combout\ : std_logic;
SIGNAL \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|locked\ : std_logic;
SIGNAL \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~feeder_combout\ : std_logic;
SIGNAL \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|i_next.000~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|i_next.000~q\ : std_logic;
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
SIGNAL \DRAM|new_sdram_controller_0|Equal0~3_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Equal0~2_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Equal0~4_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector13~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector10~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector14~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector9~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector7~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|i_state.000~q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector6~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector5~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Add1~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector4~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector8~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|i_state.001~q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector16~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|WideOr6~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector16~1_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|i_next.010~q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector9~1_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|i_state.010~q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector10~1_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|i_state.011~q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector15~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector15~1_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector15~2_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector13~1_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector13~2_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector18~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector18~1_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|i_next.111~q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector12~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|i_state.111~q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector17~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|i_next.101~q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|i_state.101~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|i_state.101~q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|init_done~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|init_done~q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ : std_logic;
SIGNAL \estado_pres.e1~clkctrl_outclk\ : std_logic;
SIGNAL \addressCounter[0]~75_combout\ : std_logic;
SIGNAL \addressCounter[1]~25_combout\ : std_logic;
SIGNAL \addressCounter[1]~feeder_combout\ : std_logic;
SIGNAL \addressCounter[1]~26\ : std_logic;
SIGNAL \addressCounter[2]~27_combout\ : std_logic;
SIGNAL \addressCounter[2]~28\ : std_logic;
SIGNAL \addressCounter[3]~29_combout\ : std_logic;
SIGNAL \addressCounter[3]~feeder_combout\ : std_logic;
SIGNAL \addressCounter[3]~30\ : std_logic;
SIGNAL \addressCounter[4]~31_combout\ : std_logic;
SIGNAL \addressCounter[4]~32\ : std_logic;
SIGNAL \addressCounter[5]~33_combout\ : std_logic;
SIGNAL \addressCounter[5]~34\ : std_logic;
SIGNAL \addressCounter[6]~35_combout\ : std_logic;
SIGNAL \addressCounter[6]~36\ : std_logic;
SIGNAL \addressCounter[7]~37_combout\ : std_logic;
SIGNAL \addressCounter[7]~38\ : std_logic;
SIGNAL \addressCounter[8]~39_combout\ : std_logic;
SIGNAL \addressCounter[8]~40\ : std_logic;
SIGNAL \addressCounter[9]~41_combout\ : std_logic;
SIGNAL \addressCounter[9]~42\ : std_logic;
SIGNAL \addressCounter[10]~43_combout\ : std_logic;
SIGNAL \addressCounter[10]~feeder_combout\ : std_logic;
SIGNAL \addressCounter[10]~44\ : std_logic;
SIGNAL \addressCounter[11]~45_combout\ : std_logic;
SIGNAL \addressCounter[11]~46\ : std_logic;
SIGNAL \addressCounter[12]~47_combout\ : std_logic;
SIGNAL \addressCounter[12]~48\ : std_logic;
SIGNAL \addressCounter[13]~49_combout\ : std_logic;
SIGNAL \addressCounter[13]~feeder_combout\ : std_logic;
SIGNAL \addressCounter[13]~50\ : std_logic;
SIGNAL \addressCounter[14]~51_combout\ : std_logic;
SIGNAL \addressCounter[14]~52\ : std_logic;
SIGNAL \addressCounter[15]~53_combout\ : std_logic;
SIGNAL \addressCounter[15]~feeder_combout\ : std_logic;
SIGNAL \addressCounter[15]~54\ : std_logic;
SIGNAL \addressCounter[16]~55_combout\ : std_logic;
SIGNAL \addressCounter[16]~feeder_combout\ : std_logic;
SIGNAL \addressCounter[16]~56\ : std_logic;
SIGNAL \addressCounter[17]~57_combout\ : std_logic;
SIGNAL \addressCounter[17]~feeder_combout\ : std_logic;
SIGNAL \addressCounter[17]~58\ : std_logic;
SIGNAL \addressCounter[18]~59_combout\ : std_logic;
SIGNAL \addressCounter[18]~feeder_combout\ : std_logic;
SIGNAL \addressCounter[18]~60\ : std_logic;
SIGNAL \addressCounter[19]~61_combout\ : std_logic;
SIGNAL \addressCounter[19]~62\ : std_logic;
SIGNAL \addressCounter[20]~63_combout\ : std_logic;
SIGNAL \memaddress~11_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|wr_address~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|wr_address~q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[37]~feeder_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[37]~11_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|active_addr[19]~feeder_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|WideOr9~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|Equal1~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|active_addr[23]~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|active_addr[23]~1_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|active_addr[23]~2_combout\ : std_logic;
SIGNAL \addressCounter[20]~64\ : std_logic;
SIGNAL \addressCounter[21]~65_combout\ : std_logic;
SIGNAL \memaddress~10_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[38]~10_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|active_addr[20]~feeder_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|pending~6_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector25~4_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|active_cs_n~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|active_cs_n~1_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|active_cs_n~q\ : std_logic;
SIGNAL \addressCounter[21]~66\ : std_logic;
SIGNAL \addressCounter[22]~67_combout\ : std_logic;
SIGNAL \addressCounter[22]~feeder_combout\ : std_logic;
SIGNAL \addressCounter[22]~68\ : std_logic;
SIGNAL \addressCounter[23]~69_combout\ : std_logic;
SIGNAL \addressCounter[23]~70\ : std_logic;
SIGNAL \addressCounter[24]~71_combout\ : std_logic;
SIGNAL \memaddress~14_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[41]~feeder_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[41]~14_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|pending~8_combout\ : std_logic;
SIGNAL \memaddress~12_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[40]~feeder_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[40]~12_combout\ : std_logic;
SIGNAL \memaddress~13_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[39]~feeder_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[39]~13_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|active_addr[21]~feeder_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|pending~7_combout\ : std_logic;
SIGNAL \memaddress~8_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[36]~feeder_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[36]~8_combout\ : std_logic;
SIGNAL \memaddress~9_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[35]~feeder_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[35]~9_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|pending~5_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|pending~9_combout\ : std_logic;
SIGNAL \addressCounter[24]~72\ : std_logic;
SIGNAL \addressCounter[25]~73_combout\ : std_logic;
SIGNAL \memaddress~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[42]~0_combout\ : std_logic;
SIGNAL \memaddress~1_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[28]~1_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|pending~0_combout\ : std_logic;
SIGNAL \memaddress~2_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[30]~2_combout\ : std_logic;
SIGNAL \memaddress~3_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[29]~3_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|pending~1_combout\ : std_logic;
SIGNAL \memaddress~4_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[32]~4_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|active_addr[14]~feeder_combout\ : std_logic;
SIGNAL \memaddress~5_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[31]~feeder_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[31]~5_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|pending~2_combout\ : std_logic;
SIGNAL \memaddress~7_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[33]~feeder_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[33]~7_combout\ : std_logic;
SIGNAL \memaddress~6_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[34]~feeder_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[34]~6_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|pending~3_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|pending~4_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|pending~combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|m_count[0]~1_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|pending~10_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector29~1_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|m_state.000100000~q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector36~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector36~1_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|m_next~17_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|m_count[0]~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector36~2_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|m_next.010000000~q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector37~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector30~2_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector25~5_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|m_state.000000010~q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|m_count[0]~2_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|WideOr16~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|m_count[0]~7_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|m_count[0]~8_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector37~1_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector37~2_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector37~3_combout\ : std_logic;
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
SIGNAL \DRAM|new_sdram_controller_0|m_count[0]~4_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|m_count[0]~5_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Add3~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|m_count[1]~3_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|m_count[1]~6_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|LessThan1~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector33~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector33~1_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector34~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector35~1_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector35~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector33~2_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|m_next.000000001~q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector24~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector24~1_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|m_state.000000001~q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector30~3_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|m_state.001000000~q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|WideOr8~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector28~1_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector28~4_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector28~5_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector28~3_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector35~2_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector35~3_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|m_next.000010000~q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector28~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector28~2_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector28~6_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|m_state.000010000~q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector32~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector32~1_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|m_state.100000000~q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector29~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector41~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector41~1_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|f_pop~q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|f_select~combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries[0]~1_combout\ : std_logic;
SIGNAL \estado_pres.e3~0_combout\ : std_logic;
SIGNAL \estado_pres.e3~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Selector1~0clkctrl_outclk\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[0]~25_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|m_data[0]~_Duplicate_1_q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector116~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector116~1_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|always5~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|oe~q\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[1]~feeder_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~1_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[1]~26_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|m_data[1]~_Duplicate_1_q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector115~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector115~1_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|oe~_Duplicate_1_q\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[2]~feeder_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~2_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[2]~feeder_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[2]~27_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|m_data[2]~_Duplicate_1_q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector114~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector114~1_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|oe~_Duplicate_2_q\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[3]~feeder_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~3_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[3]~feeder_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[3]~28_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|m_data[3]~_Duplicate_1_q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector113~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector113~1_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|oe~_Duplicate_3_q\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[4]~feeder_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~4_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[4]~feeder_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[4]~29_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|m_data[4]~_Duplicate_1_q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector112~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector112~1_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|oe~_Duplicate_4_q\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[5]~feeder_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~5_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[5]~feeder_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[5]~30_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|m_data[5]~_Duplicate_1_q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector111~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector111~1_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|oe~_Duplicate_5_q\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[6]~feeder_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~6_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[6]~feeder_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[6]~31_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|m_data[6]~_Duplicate_1_q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector110~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector110~1_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|oe~_Duplicate_6_q\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[7]~feeder_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~7_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[7]~feeder_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[7]~32_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|m_data[7]~_Duplicate_1_q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector109~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector109~1_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|oe~_Duplicate_7_q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|m_data[8]~_Duplicate_1_q\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~8_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[8]~feeder_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[8]~33_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector108~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector108~1_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|oe~_Duplicate_8_q\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[9]~feeder_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~9_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[9]~feeder_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[9]~34_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|m_data[9]~_Duplicate_1_q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector107~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector107~1_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|oe~_Duplicate_9_q\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[10]~feeder_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~10_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data[10]~feeder_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[10]~feeder_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[10]~35_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|m_data[10]~_Duplicate_1_q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector106~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector106~1_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|oe~_Duplicate_10_q\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[11]~feeder_combout\ : std_logic;
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~11_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[11]~feeder_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[11]~36_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|m_data[11]~_Duplicate_1_q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector105~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector105~1_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|oe~_Duplicate_11_q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|oe~_Duplicate_12_q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|oe~_Duplicate_13_q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|oe~_Duplicate_14_q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|oe~_Duplicate_15_q\ : std_logic;
SIGNAL \DRAM_DQ[3]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[0]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[2]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[1]~input_o\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \DRAM_DQ[4]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[6]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[5]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[7]~input_o\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \DRAM_DQ[11]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[10]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[8]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[9]~input_o\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[1]~clkctrl_outclk\ : std_logic;
SIGNAL \memaddress~15_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[18]~15_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|m_addr[6]~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|i_addr[12]~feeder_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector98~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector98~1_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector93~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector93~1_combout\ : std_logic;
SIGNAL \memaddress~16_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[19]~feeder_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[19]~16_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector97~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector97~1_combout\ : std_logic;
SIGNAL \memaddress~17_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[20]~17_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector96~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector96~1_combout\ : std_logic;
SIGNAL \memaddress~18_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[21]~feeder_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[21]~18_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector95~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector95~1_combout\ : std_logic;
SIGNAL \memaddress~19_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[22]~feeder_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[22]~19_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector94~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector94~1_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|m_addr[5]~_Duplicate_1_q\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector93~3_combout\ : std_logic;
SIGNAL \memaddress~20_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[23]~20_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector93~2_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector93~4_combout\ : std_logic;
SIGNAL \memaddress~21_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[24]~21_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector92~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector92~1_combout\ : std_logic;
SIGNAL \memaddress~22_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[25]~feeder_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[25]~22_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector91~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector91~1_combout\ : std_logic;
SIGNAL \memaddress~23_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[26]~23_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector90~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector90~1_combout\ : std_logic;
SIGNAL \memaddress~24_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[27]~feeder_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[27]~feeder_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[27]~24_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector89~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector89~1_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector88~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector88~1_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector87~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector87~1_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector86~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector86~1_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector100~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector99~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector21~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector2~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector21~1_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector21~2_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector19~1_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector19~2_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector0~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector19~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector19~3_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector1~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector20~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector3~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector22~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|Selector22~1_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|m_data\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \DRAM|new_sdram_controller_0|i_refs\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|u_clk_dft_synchronizer|dreg\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|new_sdram_controller_0|active_data\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \DRAM|new_sdram_controller_0|i_count\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \DRAM|new_sdram_controller_0|m_cmd\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DRAM|new_sdram_controller_0|i_cmd\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DRAM|new_sdram_controller_0|i_addr\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\ : std_logic_vector(43 DOWNTO 0);
SIGNAL \DRAM|new_sdram_controller_0|za_data\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \DRAM|new_sdram_controller_0|m_addr\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \DRAM|new_sdram_controller_0|m_bank\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \u1|altpll_0|sd1|wire_pll7_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|chsel\ : std_logic_vector(4 DOWNTO 0);
SIGNAL addressCounter : std_logic_vector(25 DOWNTO 0);
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|u_eoc_synchronizer|dreg\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DRAM|new_sdram_controller_0|active_addr\ : std_logic_vector(24 DOWNTO 0);
SIGNAL memaddress : std_logic_vector(25 DOWNTO 0);
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|int_timer\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\ : std_logic_vector(43 DOWNTO 0);
SIGNAL dataIN : std_logic_vector(15 DOWNTO 0);
SIGNAL \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \DRAM|new_sdram_controller_0|m_count\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \DRAM|new_sdram_controller_0|refresh_counter\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \DRAM|new_sdram_controller_0|ALT_INV_Selector22~1_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|ALT_INV_Selector20~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|ALT_INV_Selector19~3_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|ALT_INV_Selector21~2_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|ALT_INV_m_state.000010000~q\ : std_logic;
SIGNAL \DRAM|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\ : std_logic;
SIGNAL \ALT_INV_Mux14~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|ALT_INV_oe~_Duplicate_15_q\ : std_logic;
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
SIGNAL \ALT_INV_DE10Reset~input_o\ : std_logic;
SIGNAL \DRAM|new_sdram_controller_0|ALT_INV_always5~0_combout\ : std_logic;

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

\Selector1~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Selector1~0_combout\);

\ADCCLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \ADCCLK~input_o\);

\estado_pres.e1~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \estado_pres.e1~q\);

\DE10CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \DE10CLK~input_o\);

\DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk\(0));

\DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[1]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk\(1));
\DRAM|new_sdram_controller_0|ALT_INV_Selector22~1_combout\ <= NOT \DRAM|new_sdram_controller_0|Selector22~1_combout\;
\DRAM|new_sdram_controller_0|ALT_INV_Selector20~0_combout\ <= NOT \DRAM|new_sdram_controller_0|Selector20~0_combout\;
\DRAM|new_sdram_controller_0|ALT_INV_Selector19~3_combout\ <= NOT \DRAM|new_sdram_controller_0|Selector19~3_combout\;
\DRAM|new_sdram_controller_0|ALT_INV_Selector21~2_combout\ <= NOT \DRAM|new_sdram_controller_0|Selector21~2_combout\;
\DRAM|new_sdram_controller_0|ALT_INV_m_state.000010000~q\ <= NOT \DRAM|new_sdram_controller_0|m_state.000010000~q\;
\DRAM|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\ <= NOT \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\;
\ALT_INV_Mux14~0_combout\ <= NOT \Mux14~0_combout\;
\ALT_INV_Mux7~0_combout\ <= NOT \Mux7~0_combout\;
\ALT_INV_Mux0~0_combout\ <= NOT \Mux0~0_combout\;
\DRAM|new_sdram_controller_0|ALT_INV_oe~_Duplicate_15_q\ <= NOT \DRAM|new_sdram_controller_0|oe~_Duplicate_15_q\;
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
\ALT_INV_DE10Reset~input_o\ <= NOT \DE10Reset~input_o\;
\DRAM|new_sdram_controller_0|ALT_INV_always5~0_combout\ <= NOT \DRAM|new_sdram_controller_0|always5~0_combout\;

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

-- Location: IOOBUF_X78_Y25_N9
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

-- Location: IOOBUF_X78_Y25_N16
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

-- Location: IOOBUF_X54_Y54_N30
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

-- Location: IOOBUF_X0_Y27_N23
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

-- Location: IOOBUF_X36_Y39_N23
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

-- Location: IOOBUF_X0_Y30_N23
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
	i => \DRAM|new_sdram_controller_0|m_bank\(0),
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
	i => \DRAM|new_sdram_controller_0|m_bank\(1),
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
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DRAM|new_sdram_controller_0|m_data\(0),
	oe => \DRAM|new_sdram_controller_0|ALT_INV_oe~q\,
	devoe => ww_devoe,
	o => ww_DRAM_DQ(0));

-- Location: IOOBUF_X78_Y16_N9
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

-- Location: IOOBUF_X78_Y3_N2
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

-- Location: IOOBUF_X78_Y3_N9
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

-- Location: IOOBUF_X78_Y15_N9
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

-- Location: IOOBUF_X78_Y15_N2
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

-- Location: IOOBUF_X78_Y16_N16
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

-- Location: IOOBUF_X78_Y17_N9
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

-- Location: IOOBUF_X78_Y23_N9
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

-- Location: IOOBUF_X78_Y30_N9
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

-- Location: IOOBUF_X78_Y29_N2
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

-- Location: IOOBUF_X78_Y29_N9
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

-- Location: IOOBUF_X78_Y31_N9
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

-- Location: IOOBUF_X78_Y31_N23
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

-- Location: IOOBUF_X78_Y31_N16
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

-- Location: IOOBUF_X78_Y31_N2
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

-- Location: LCCOMB_X64_Y35_N20
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

-- Location: FF_X64_Y35_N21
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

-- Location: LCCOMB_X64_Y35_N22
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

-- Location: FF_X64_Y35_N23
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

-- Location: FF_X64_Y35_N25
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

-- Location: FF_X67_Y28_N23
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

-- Location: FF_X67_Y28_N25
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

-- Location: LCCOMB_X67_Y28_N22
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

-- Location: FF_X62_Y35_N5
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

-- Location: FF_X63_Y35_N17
\u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PUTRESP_DLY3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	asdata => \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PUTRESP_DLY2~q\,
	clrn => \u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PUTRESP_DLY3~q\);

-- Location: LCCOMB_X59_Y32_N6
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

-- Location: FF_X63_Y35_N23
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

-- Location: LCCOMB_X63_Y35_N12
\u1|modular_adc_0|control_internal|u_control_fsm|Selector9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|Selector9~0_combout\ = (\u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.GETCMD~q\) # ((\u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.CONV~q\ & 
-- ((\u1|modular_adc_0|control_internal|u_control_fsm|u_eoc_synchronizer|dreg\(0)) # (!\u1|modular_adc_0|control_internal|u_control_fsm|eoc_synch_dly~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|modular_adc_0|control_internal|u_control_fsm|eoc_synch_dly~q\,
	datab => \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.GETCMD~q\,
	datac => \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.CONV~q\,
	datad => \u1|modular_adc_0|control_internal|u_control_fsm|u_eoc_synchronizer|dreg\(0),
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|Selector9~0_combout\);

-- Location: FF_X63_Y35_N13
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

-- Location: LCCOMB_X59_Y32_N26
\u1|modular_adc_0|control_internal|u_control_fsm|arc_to_conv~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|arc_to_conv~0_combout\ = (!\u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.CONV~q\ & \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.GETCMD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.CONV~q\,
	datad => \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.GETCMD~q\,
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|arc_to_conv~0_combout\);

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

-- Location: LCCOMB_X59_Y32_N0
\u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.IDLE~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.IDLE~0_combout\ = (\u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.IDLE~q\) # (\u1|altpll_0|sd1|wire_pll7_locked\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.IDLE~q\,
	datad => \u1|altpll_0|sd1|wire_pll7_locked\,
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.IDLE~0_combout\);

-- Location: FF_X59_Y32_N1
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

-- Location: LCCOMB_X59_Y32_N28
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

-- Location: FF_X59_Y32_N29
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

-- Location: LCCOMB_X59_Y32_N22
\u1|modular_adc_0|control_internal|u_control_fsm|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|Selector2~0_combout\ = (\u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(7) & (\u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN~q\ & 
-- ((\u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(6))))) # (!\u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(7) & ((\u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN_TSEN~q\) # 
-- ((\u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN~q\ & \u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(7),
	datab => \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN~q\,
	datac => \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN_TSEN~q\,
	datad => \u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(6),
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|Selector2~0_combout\);

-- Location: FF_X59_Y32_N23
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

-- Location: LCCOMB_X59_Y32_N24
\u1|modular_adc_0|control_internal|u_control_fsm|int_timer[2]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|int_timer[2]~24_combout\ = (\u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN_TSEN~q\) # ((\u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN~q\) # 
-- ((!\u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.CONV~q\ & \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.GETCMD~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN_TSEN~q\,
	datab => \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN~q\,
	datac => \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.CONV~q\,
	datad => \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.GETCMD~q\,
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|int_timer[2]~24_combout\);

-- Location: FF_X59_Y32_N7
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

-- Location: LCCOMB_X59_Y32_N8
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

-- Location: FF_X59_Y32_N9
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

-- Location: LCCOMB_X59_Y32_N10
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

-- Location: FF_X59_Y32_N11
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

-- Location: LCCOMB_X59_Y32_N12
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

-- Location: FF_X59_Y32_N13
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

-- Location: LCCOMB_X59_Y32_N14
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

-- Location: FF_X59_Y32_N15
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

-- Location: LCCOMB_X59_Y32_N16
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

-- Location: FF_X59_Y32_N17
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

-- Location: LCCOMB_X59_Y32_N18
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

-- Location: FF_X59_Y32_N19
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

-- Location: LCCOMB_X59_Y32_N20
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

-- Location: FF_X59_Y32_N21
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

-- Location: LCCOMB_X59_Y32_N30
\u1|modular_adc_0|control_internal|u_control_fsm|Selector18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|Selector18~0_combout\ = ((\u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN~q\) # ((!\u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(7) & 
-- \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN_TSEN~q\))) # (!\u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|modular_adc_0|control_internal|u_control_fsm|int_timer\(7),
	datab => \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.IDLE~q\,
	datac => \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN_TSEN~q\,
	datad => \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRDWN~q\,
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|Selector18~0_combout\);

-- Location: LCCOMB_X63_Y35_N10
\u1|modular_adc_0|control_internal|u_control_fsm|Selector15~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|Selector15~2_combout\ = (!\u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.GETCMD~q\ & !\u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.CONV~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.GETCMD~q\,
	datad => \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.CONV~q\,
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|Selector15~2_combout\);

-- Location: LCCOMB_X63_Y35_N0
\u1|modular_adc_0|control_internal|u_control_fsm|WideOr17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|WideOr17~combout\ = (((\u1|modular_adc_0|control_internal|u_control_fsm|Selector7~0_combout\) # (\u1|modular_adc_0|control_internal|u_control_fsm|Selector5~1_combout\)) # 
-- (!\u1|modular_adc_0|control_internal|u_control_fsm|WideOr12~0_combout\)) # (!\u1|modular_adc_0|control_internal|u_control_fsm|Selector15~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|modular_adc_0|control_internal|u_control_fsm|Selector15~2_combout\,
	datab => \u1|modular_adc_0|control_internal|u_control_fsm|WideOr12~0_combout\,
	datac => \u1|modular_adc_0|control_internal|u_control_fsm|Selector7~0_combout\,
	datad => \u1|modular_adc_0|control_internal|u_control_fsm|Selector5~1_combout\,
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|WideOr17~combout\);

-- Location: LCCOMB_X63_Y35_N4
\u1|modular_adc_0|control_internal|u_control_fsm|Selector18~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|Selector18~1_combout\ = (!\u1|modular_adc_0|control_internal|u_control_fsm|Selector18~0_combout\ & ((\u1|modular_adc_0|control_internal|u_control_fsm|usr_pwd~q\) # 
-- (!\u1|modular_adc_0|control_internal|u_control_fsm|WideOr17~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|modular_adc_0|control_internal|u_control_fsm|Selector18~0_combout\,
	datac => \u1|modular_adc_0|control_internal|u_control_fsm|usr_pwd~q\,
	datad => \u1|modular_adc_0|control_internal|u_control_fsm|WideOr17~combout\,
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|Selector18~1_combout\);

-- Location: FF_X63_Y35_N5
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

-- Location: LCCOMB_X63_Y35_N6
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

-- Location: LCCOMB_X59_Y32_N4
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

-- Location: FF_X64_Y35_N13
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

-- Location: LCCOMB_X64_Y35_N12
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

-- Location: LCCOMB_X63_Y35_N18
\u1|modular_adc_0|control_internal|u_control_fsm|WideOr12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|WideOr12~combout\ = ((\u1|modular_adc_0|control_internal|u_control_fsm|Selector1~0_combout\) # ((\u1|modular_adc_0|control_internal|u_control_fsm|Selector3~1_combout\) # 
-- (\u1|modular_adc_0|control_internal|u_control_fsm|Selector5~1_combout\))) # (!\u1|modular_adc_0|control_internal|u_control_fsm|WideOr12~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|modular_adc_0|control_internal|u_control_fsm|WideOr12~1_combout\,
	datab => \u1|modular_adc_0|control_internal|u_control_fsm|Selector1~0_combout\,
	datac => \u1|modular_adc_0|control_internal|u_control_fsm|Selector3~1_combout\,
	datad => \u1|modular_adc_0|control_internal|u_control_fsm|Selector5~1_combout\,
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|WideOr12~combout\);

-- Location: LCCOMB_X63_Y35_N2
\u1|modular_adc_0|control_internal|u_control_fsm|Selector15~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|Selector15~3_combout\ = (\u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.CONV~q\) # ((\u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.GETCMD~q\) # 
-- ((\u1|modular_adc_0|control_internal|u_control_fsm|chsel\(1) & \u1|modular_adc_0|control_internal|u_control_fsm|WideOr12~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.CONV~q\,
	datab => \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.GETCMD~q\,
	datac => \u1|modular_adc_0|control_internal|u_control_fsm|chsel\(1),
	datad => \u1|modular_adc_0|control_internal|u_control_fsm|WideOr12~combout\,
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|Selector15~3_combout\);

-- Location: FF_X63_Y35_N3
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

-- Location: LCCOMB_X63_Y35_N8
\u1|modular_adc_0|control_internal|u_control_fsm|chsel[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|chsel[0]~2_combout\ = (\u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.CONV~q\) # ((\u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.GETCMD~q\) # 
-- ((\u1|modular_adc_0|control_internal|u_control_fsm|chsel\(0) & \u1|modular_adc_0|control_internal|u_control_fsm|WideOr12~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.CONV~q\,
	datab => \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.GETCMD~q\,
	datac => \u1|modular_adc_0|control_internal|u_control_fsm|chsel\(0),
	datad => \u1|modular_adc_0|control_internal|u_control_fsm|WideOr12~combout\,
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|chsel[0]~2_combout\);

-- Location: FF_X63_Y35_N9
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

-- Location: LCCOMB_X63_Y35_N30
\u1|modular_adc_0|control_internal|adc_inst|decoder|WideOr4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|adc_inst|decoder|WideOr4~0_combout\ = (!\u1|modular_adc_0|control_internal|u_control_fsm|chsel\(0)) # (!\u1|modular_adc_0|control_internal|u_control_fsm|chsel\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|modular_adc_0|control_internal|u_control_fsm|chsel\(1),
	datac => \u1|modular_adc_0|control_internal|u_control_fsm|chsel\(0),
	combout => \u1|modular_adc_0|control_internal|adc_inst|decoder|WideOr4~0_combout\);

-- Location: LCCOMB_X63_Y35_N20
\u1|modular_adc_0|control_internal|adc_inst|decoder|WideOr2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|adc_inst|decoder|WideOr2~0_combout\ = (\u1|modular_adc_0|control_internal|u_control_fsm|chsel\(0)) # (!\u1|modular_adc_0|control_internal|u_control_fsm|chsel\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|modular_adc_0|control_internal|u_control_fsm|chsel\(1),
	datac => \u1|modular_adc_0|control_internal|u_control_fsm|chsel\(0),
	combout => \u1|modular_adc_0|control_internal|adc_inst|decoder|WideOr2~0_combout\);

-- Location: LCCOMB_X63_Y35_N24
\u1|modular_adc_0|control_internal|u_control_fsm|chsel[1]~_wirecell\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|chsel[1]~_wirecell_combout\ = !\u1|modular_adc_0|control_internal|u_control_fsm|chsel\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|modular_adc_0|control_internal|u_control_fsm|chsel\(1),
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

-- Location: LCCOMB_X64_Y35_N10
\u1|modular_adc_0|control_internal|u_control_fsm|u_clk_dft_synchronizer|din_s1~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|u_clk_dft_synchronizer|din_s1~feeder_combout\ = \u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|clkout_adccore\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|clkout_adccore\,
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|u_clk_dft_synchronizer|din_s1~feeder_combout\);

-- Location: FF_X64_Y35_N11
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

-- Location: LCCOMB_X64_Y35_N18
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

-- Location: FF_X64_Y35_N19
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

-- Location: LCCOMB_X64_Y35_N30
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

-- Location: FF_X64_Y35_N31
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

-- Location: LCCOMB_X64_Y35_N28
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

-- Location: FF_X64_Y35_N29
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

-- Location: LCCOMB_X64_Y35_N24
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

-- Location: LCCOMB_X63_Y35_N28
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

-- Location: FF_X63_Y35_N29
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

-- Location: LCCOMB_X63_Y35_N22
\u1|modular_adc_0|control_internal|u_control_fsm|Selector7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|Selector7~0_combout\ = (\u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRUP_SOC~q\ & (\u1|modular_adc_0|control_internal|u_control_fsm|eoc_synch_dly~q\ & 
-- ((!\u1|modular_adc_0|control_internal|u_control_fsm|u_eoc_synchronizer|dreg\(0))))) # (!\u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRUP_SOC~q\ & (((\u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PUTRESP_DLY3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|modular_adc_0|control_internal|u_control_fsm|eoc_synch_dly~q\,
	datab => \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PUTRESP_DLY3~q\,
	datac => \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.PWRUP_SOC~q\,
	datad => \u1|modular_adc_0|control_internal|u_control_fsm|u_eoc_synchronizer|dreg\(0),
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|Selector7~0_combout\);

-- Location: LCCOMB_X63_Y35_N26
\u1|modular_adc_0|control_internal|u_control_fsm|WideOr12~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|WideOr12~1_combout\ = (\u1|modular_adc_0|control_internal|u_control_fsm|WideOr12~0_combout\ & (!\u1|modular_adc_0|control_internal|u_control_fsm|Selector7~0_combout\ & 
-- !\u1|modular_adc_0|control_internal|u_control_fsm|Selector4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|modular_adc_0|control_internal|u_control_fsm|WideOr12~0_combout\,
	datac => \u1|modular_adc_0|control_internal|u_control_fsm|Selector7~0_combout\,
	datad => \u1|modular_adc_0|control_internal|u_control_fsm|Selector4~0_combout\,
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|WideOr12~1_combout\);

-- Location: LCCOMB_X63_Y35_N14
\u1|modular_adc_0|control_internal|u_control_fsm|Selector17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|Selector17~0_combout\ = (\u1|modular_adc_0|control_internal|u_control_fsm|Selector5~1_combout\) # ((\u1|modular_adc_0|control_internal|u_control_fsm|soc~q\ & 
-- ((!\u1|modular_adc_0|control_internal|u_control_fsm|Selector15~2_combout\) # (!\u1|modular_adc_0|control_internal|u_control_fsm|WideOr12~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|modular_adc_0|control_internal|u_control_fsm|WideOr12~1_combout\,
	datab => \u1|modular_adc_0|control_internal|u_control_fsm|Selector15~2_combout\,
	datac => \u1|modular_adc_0|control_internal|u_control_fsm|soc~q\,
	datad => \u1|modular_adc_0|control_internal|u_control_fsm|Selector5~1_combout\,
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|Selector17~0_combout\);

-- Location: FF_X63_Y35_N15
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

-- Location: LCCOMB_X62_Y35_N20
\u1|modular_adc_0|control_internal|u_control_fsm|u_eoc_synchronizer|din_s1~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|u_eoc_synchronizer|din_s1~feeder_combout\ = \u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|eoc\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|eoc\,
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|u_eoc_synchronizer|din_s1~feeder_combout\);

-- Location: FF_X62_Y35_N21
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

-- Location: LCCOMB_X62_Y35_N14
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

-- Location: FF_X62_Y35_N15
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

-- Location: LCCOMB_X62_Y35_N26
\u1|modular_adc_0|control_internal|u_control_fsm|load_dout~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|load_dout~1_combout\ = (!\u1|modular_adc_0|control_internal|u_control_fsm|u_eoc_synchronizer|dreg\(0) & (\u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.CONV~q\ & 
-- \u1|modular_adc_0|control_internal|u_control_fsm|eoc_synch_dly~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|modular_adc_0|control_internal|u_control_fsm|u_eoc_synchronizer|dreg\(0),
	datac => \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.CONV~q\,
	datad => \u1|modular_adc_0|control_internal|u_control_fsm|eoc_synch_dly~q\,
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|load_dout~1_combout\);

-- Location: FF_X62_Y35_N27
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

-- Location: FF_X67_Y28_N21
\u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	asdata => \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.CONV_DLY1~q\,
	clrn => \u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\);

-- Location: LCCOMB_X62_Y35_N18
\u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[0]~feeder_combout\ = \u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(0),
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[0]~feeder_combout\);

-- Location: LCCOMB_X67_Y28_N30
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

-- Location: FF_X67_Y28_N31
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

-- Location: LCCOMB_X62_Y35_N4
\u1|modular_adc_0|control_internal|u_control_fsm|load_dout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|load_dout~0_combout\ = (\u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.CONV~q\ & (!\u1|modular_adc_0|control_internal|u_control_fsm|u_eoc_synchronizer|dreg\(0) & 
-- (\u1|modular_adc_0|control_internal|u_control_fsm|eoc_synch_dly~q\ & \u1|modular_adc_0|control_internal|u_control_fsm|pend~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|modular_adc_0|control_internal|u_control_fsm|ctrl_state.CONV~q\,
	datab => \u1|modular_adc_0|control_internal|u_control_fsm|u_eoc_synchronizer|dreg\(0),
	datac => \u1|modular_adc_0|control_internal|u_control_fsm|eoc_synch_dly~q\,
	datad => \u1|modular_adc_0|control_internal|u_control_fsm|pend~q\,
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|load_dout~0_combout\);

-- Location: FF_X62_Y35_N19
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
	ena => \u1|modular_adc_0|control_internal|u_control_fsm|load_dout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(0));

-- Location: LCCOMB_X65_Y24_N30
\u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~0_combout\ = (\u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\ & (\u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(0) & 
-- \u1|modular_adc_0|control_internal|u_control_fsm|pend~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\,
	datac => \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(0),
	datad => \u1|modular_adc_0|control_internal|u_control_fsm|pend~q\,
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~0_combout\);

-- Location: FF_X65_Y24_N31
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

-- Location: LCCOMB_X69_Y20_N6
\u1|modular_adc_0|control_internal|u_control_fsm|load_rsp~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|load_rsp~0_combout\ = (\u1|modular_adc_0|control_internal|u_control_fsm|pend~q\ & \u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|modular_adc_0|control_internal|u_control_fsm|pend~q\,
	datad => \u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\,
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|load_rsp~0_combout\);

-- Location: FF_X69_Y20_N7
\u1|modular_adc_0|control_internal|u_control_fsm|rsp_valid\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	d => \u1|modular_adc_0|control_internal|u_control_fsm|load_rsp~0_combout\,
	clrn => \u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_valid~q\);

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

-- Location: LCCOMB_X71_Y27_N18
\estado_pres.e1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estado_pres.e1~0_combout\ = !\estado_pres.e4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_pres.e4~q\,
	combout => \estado_pres.e1~0_combout\);

-- Location: LCCOMB_X77_Y39_N16
\estado_pres.e1~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estado_pres.e1~feeder_combout\ = \estado_pres.e1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estado_pres.e1~0_combout\,
	combout => \estado_pres.e1~feeder_combout\);

-- Location: FF_X77_Y39_N17
\estado_pres.e1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \estado_pres.e1~feeder_combout\,
	clrn => \ALT_INV_DE10Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_pres.e1~q\);

-- Location: LCCOMB_X71_Y27_N30
\estado_sig~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estado_sig~1_combout\ = (!\estado_pres.e4~q\ & \estado_pres.e1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estado_pres.e4~q\,
	datad => \estado_pres.e1~q\,
	combout => \estado_sig~1_combout\);

-- Location: LCCOMB_X71_Y27_N16
\estado_pres.e4~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estado_pres.e4~feeder_combout\ = \estado_sig~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \estado_sig~1_combout\,
	combout => \estado_pres.e4~feeder_combout\);

-- Location: FF_X71_Y27_N17
\estado_pres.e4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \estado_pres.e4~feeder_combout\,
	clrn => \ALT_INV_DE10Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_pres.e4~q\);

-- Location: LCCOMB_X70_Y24_N16
writerequest : fiftyfivenm_lcell_comb
-- Equation(s):
-- \writerequest~combout\ = (\estado_pres.e4~q\ & ((\writerequest~combout\))) # (!\estado_pres.e4~q\ & (\Selector1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~0_combout\,
	datab => \writerequest~combout\,
	datad => \estado_pres.e4~q\,
	combout => \writerequest~combout\);

-- Location: LCCOMB_X70_Y20_N18
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries[1]~0_combout\ = (\DRAM|new_sdram_controller_0|f_select~combout\ & 
-- ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(0) & (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(1))) # 
-- (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(0) & (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(1) & !\writerequest~combout\)))) # 
-- (!\DRAM|new_sdram_controller_0|f_select~combout\ & (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(1) $ (((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(0) & 
-- \writerequest~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|f_select~combout\,
	datab => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(0),
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(1),
	datad => \writerequest~combout\,
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries[1]~0_combout\);

-- Location: LCCOMB_X75_Y19_N4
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

-- Location: FF_X75_Y19_N5
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

-- Location: FF_X75_Y19_N19
\DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain\(1),
	clrn => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|locked\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain\(0));

-- Location: LCCOMB_X75_Y19_N16
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

-- Location: FF_X75_Y19_N17
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

-- Location: FF_X70_Y20_N19
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

-- Location: LCCOMB_X72_Y23_N12
\DRAM|new_sdram_controller_0|i_next.000~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|i_next.000~0_combout\ = (\DRAM|new_sdram_controller_0|i_next.000~q\) # ((!\DRAM|new_sdram_controller_0|i_state.101~q\ & (\DRAM|new_sdram_controller_0|i_state.000~q\ & !\DRAM|new_sdram_controller_0|i_state.011~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|i_state.101~q\,
	datab => \DRAM|new_sdram_controller_0|i_state.000~q\,
	datac => \DRAM|new_sdram_controller_0|i_next.000~q\,
	datad => \DRAM|new_sdram_controller_0|i_state.011~q\,
	combout => \DRAM|new_sdram_controller_0|i_next.000~0_combout\);

-- Location: FF_X72_Y23_N13
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

-- Location: LCCOMB_X77_Y24_N4
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

-- Location: FF_X77_Y24_N5
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

-- Location: LCCOMB_X77_Y24_N6
\DRAM|new_sdram_controller_0|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Add0~2_combout\ = (\DRAM|new_sdram_controller_0|refresh_counter\(1) & (\DRAM|new_sdram_controller_0|Add0~1\ & VCC)) # (!\DRAM|new_sdram_controller_0|refresh_counter\(1) & (!\DRAM|new_sdram_controller_0|Add0~1\))
-- \DRAM|new_sdram_controller_0|Add0~3\ = CARRY((!\DRAM|new_sdram_controller_0|refresh_counter\(1) & !\DRAM|new_sdram_controller_0|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|refresh_counter\(1),
	datad => VCC,
	cin => \DRAM|new_sdram_controller_0|Add0~1\,
	combout => \DRAM|new_sdram_controller_0|Add0~2_combout\,
	cout => \DRAM|new_sdram_controller_0|Add0~3\);

-- Location: LCCOMB_X76_Y24_N2
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

-- Location: FF_X76_Y24_N3
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

-- Location: LCCOMB_X77_Y24_N8
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

-- Location: FF_X77_Y24_N9
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

-- Location: LCCOMB_X77_Y24_N10
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

-- Location: FF_X77_Y24_N11
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

-- Location: LCCOMB_X77_Y24_N12
\DRAM|new_sdram_controller_0|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Add0~8_combout\ = (\DRAM|new_sdram_controller_0|refresh_counter\(4) & (\DRAM|new_sdram_controller_0|Add0~7\ $ (GND))) # (!\DRAM|new_sdram_controller_0|refresh_counter\(4) & ((GND) # (!\DRAM|new_sdram_controller_0|Add0~7\)))
-- \DRAM|new_sdram_controller_0|Add0~9\ = CARRY((!\DRAM|new_sdram_controller_0|Add0~7\) # (!\DRAM|new_sdram_controller_0|refresh_counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DRAM|new_sdram_controller_0|refresh_counter\(4),
	datad => VCC,
	cin => \DRAM|new_sdram_controller_0|Add0~7\,
	combout => \DRAM|new_sdram_controller_0|Add0~8_combout\,
	cout => \DRAM|new_sdram_controller_0|Add0~9\);

-- Location: LCCOMB_X76_Y24_N6
\DRAM|new_sdram_controller_0|refresh_counter~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|refresh_counter~6_combout\ = (\DRAM|new_sdram_controller_0|Equal0~4_combout\) # (!\DRAM|new_sdram_controller_0|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|Equal0~4_combout\,
	datac => \DRAM|new_sdram_controller_0|Add0~8_combout\,
	combout => \DRAM|new_sdram_controller_0|refresh_counter~6_combout\);

-- Location: FF_X76_Y24_N7
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

-- Location: LCCOMB_X77_Y24_N14
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

-- Location: LCCOMB_X76_Y24_N16
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

-- Location: FF_X76_Y24_N17
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

-- Location: LCCOMB_X77_Y24_N16
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

-- Location: LCCOMB_X76_Y24_N22
\DRAM|new_sdram_controller_0|refresh_counter~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|refresh_counter~5_combout\ = (!\DRAM|new_sdram_controller_0|Equal0~4_combout\ & \DRAM|new_sdram_controller_0|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DRAM|new_sdram_controller_0|Equal0~4_combout\,
	datad => \DRAM|new_sdram_controller_0|Add0~12_combout\,
	combout => \DRAM|new_sdram_controller_0|refresh_counter~5_combout\);

-- Location: FF_X76_Y24_N23
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

-- Location: LCCOMB_X77_Y24_N18
\DRAM|new_sdram_controller_0|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Add0~14_combout\ = (\DRAM|new_sdram_controller_0|refresh_counter\(7) & (\DRAM|new_sdram_controller_0|Add0~13\ & VCC)) # (!\DRAM|new_sdram_controller_0|refresh_counter\(7) & (!\DRAM|new_sdram_controller_0|Add0~13\))
-- \DRAM|new_sdram_controller_0|Add0~15\ = CARRY((!\DRAM|new_sdram_controller_0|refresh_counter\(7) & !\DRAM|new_sdram_controller_0|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|refresh_counter\(7),
	datad => VCC,
	cin => \DRAM|new_sdram_controller_0|Add0~13\,
	combout => \DRAM|new_sdram_controller_0|Add0~14_combout\,
	cout => \DRAM|new_sdram_controller_0|Add0~15\);

-- Location: LCCOMB_X76_Y24_N0
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

-- Location: FF_X76_Y24_N1
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

-- Location: LCCOMB_X77_Y24_N20
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

-- Location: LCCOMB_X77_Y24_N0
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

-- Location: FF_X77_Y24_N1
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

-- Location: LCCOMB_X77_Y24_N22
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

-- Location: LCCOMB_X76_Y24_N18
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

-- Location: FF_X76_Y24_N19
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

-- Location: LCCOMB_X76_Y24_N12
\DRAM|new_sdram_controller_0|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Equal0~1_combout\ = (!\DRAM|new_sdram_controller_0|refresh_counter\(6) & (!\DRAM|new_sdram_controller_0|refresh_counter\(7) & (\DRAM|new_sdram_controller_0|refresh_counter\(8) & 
-- \DRAM|new_sdram_controller_0|refresh_counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|refresh_counter\(6),
	datab => \DRAM|new_sdram_controller_0|refresh_counter\(7),
	datac => \DRAM|new_sdram_controller_0|refresh_counter\(8),
	datad => \DRAM|new_sdram_controller_0|refresh_counter\(9),
	combout => \DRAM|new_sdram_controller_0|Equal0~1_combout\);

-- Location: LCCOMB_X77_Y24_N24
\DRAM|new_sdram_controller_0|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Add0~20_combout\ = (\DRAM|new_sdram_controller_0|refresh_counter\(10) & (\DRAM|new_sdram_controller_0|Add0~19\ $ (GND))) # (!\DRAM|new_sdram_controller_0|refresh_counter\(10) & ((GND) # 
-- (!\DRAM|new_sdram_controller_0|Add0~19\)))
-- \DRAM|new_sdram_controller_0|Add0~21\ = CARRY((!\DRAM|new_sdram_controller_0|Add0~19\) # (!\DRAM|new_sdram_controller_0|refresh_counter\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|refresh_counter\(10),
	datad => VCC,
	cin => \DRAM|new_sdram_controller_0|Add0~19\,
	combout => \DRAM|new_sdram_controller_0|Add0~20_combout\,
	cout => \DRAM|new_sdram_controller_0|Add0~21\);

-- Location: LCCOMB_X76_Y24_N26
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

-- Location: FF_X76_Y24_N27
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

-- Location: LCCOMB_X77_Y24_N26
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

-- Location: LCCOMB_X76_Y24_N10
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

-- Location: FF_X76_Y24_N11
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

-- Location: LCCOMB_X77_Y24_N28
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

-- Location: LCCOMB_X76_Y24_N28
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

-- Location: FF_X76_Y24_N29
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

-- Location: LCCOMB_X77_Y24_N30
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

-- Location: LCCOMB_X76_Y24_N8
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

-- Location: FF_X76_Y24_N9
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

-- Location: LCCOMB_X76_Y24_N20
\DRAM|new_sdram_controller_0|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Equal0~0_combout\ = (!\DRAM|new_sdram_controller_0|refresh_counter\(11) & (\DRAM|new_sdram_controller_0|refresh_counter\(13) & (\DRAM|new_sdram_controller_0|refresh_counter\(10) & 
-- !\DRAM|new_sdram_controller_0|refresh_counter\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|refresh_counter\(11),
	datab => \DRAM|new_sdram_controller_0|refresh_counter\(13),
	datac => \DRAM|new_sdram_controller_0|refresh_counter\(10),
	datad => \DRAM|new_sdram_controller_0|refresh_counter\(12),
	combout => \DRAM|new_sdram_controller_0|Equal0~0_combout\);

-- Location: LCCOMB_X76_Y24_N4
\DRAM|new_sdram_controller_0|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Equal0~3_combout\ = (!\DRAM|new_sdram_controller_0|refresh_counter\(1) & !\DRAM|new_sdram_controller_0|refresh_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DRAM|new_sdram_controller_0|refresh_counter\(1),
	datad => \DRAM|new_sdram_controller_0|refresh_counter\(0),
	combout => \DRAM|new_sdram_controller_0|Equal0~3_combout\);

-- Location: LCCOMB_X77_Y24_N2
\DRAM|new_sdram_controller_0|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Equal0~2_combout\ = (!\DRAM|new_sdram_controller_0|refresh_counter\(5) & (\DRAM|new_sdram_controller_0|refresh_counter\(4) & (!\DRAM|new_sdram_controller_0|refresh_counter\(2) & 
-- !\DRAM|new_sdram_controller_0|refresh_counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|refresh_counter\(5),
	datab => \DRAM|new_sdram_controller_0|refresh_counter\(4),
	datac => \DRAM|new_sdram_controller_0|refresh_counter\(2),
	datad => \DRAM|new_sdram_controller_0|refresh_counter\(3),
	combout => \DRAM|new_sdram_controller_0|Equal0~2_combout\);

-- Location: LCCOMB_X76_Y24_N30
\DRAM|new_sdram_controller_0|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Equal0~4_combout\ = (\DRAM|new_sdram_controller_0|Equal0~1_combout\ & (\DRAM|new_sdram_controller_0|Equal0~0_combout\ & (\DRAM|new_sdram_controller_0|Equal0~3_combout\ & \DRAM|new_sdram_controller_0|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|Equal0~1_combout\,
	datab => \DRAM|new_sdram_controller_0|Equal0~0_combout\,
	datac => \DRAM|new_sdram_controller_0|Equal0~3_combout\,
	datad => \DRAM|new_sdram_controller_0|Equal0~2_combout\,
	combout => \DRAM|new_sdram_controller_0|Equal0~4_combout\);

-- Location: LCCOMB_X71_Y23_N8
\DRAM|new_sdram_controller_0|Selector13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector13~0_combout\ = (!\DRAM|new_sdram_controller_0|i_state.101~q\ & \DRAM|new_sdram_controller_0|i_state.000~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DRAM|new_sdram_controller_0|i_state.101~q\,
	datad => \DRAM|new_sdram_controller_0|i_state.000~q\,
	combout => \DRAM|new_sdram_controller_0|Selector13~0_combout\);

-- Location: LCCOMB_X71_Y23_N2
\DRAM|new_sdram_controller_0|Selector10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector10~0_combout\ = (\DRAM|new_sdram_controller_0|i_state.011~q\ & ((\DRAM|new_sdram_controller_0|i_count\(2)) # (\DRAM|new_sdram_controller_0|i_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|i_count\(2),
	datab => \DRAM|new_sdram_controller_0|i_count\(1),
	datac => \DRAM|new_sdram_controller_0|i_state.011~q\,
	combout => \DRAM|new_sdram_controller_0|Selector10~0_combout\);

-- Location: LCCOMB_X71_Y23_N28
\DRAM|new_sdram_controller_0|Selector14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector14~0_combout\ = (\DRAM|new_sdram_controller_0|i_count\(1) & (((\DRAM|new_sdram_controller_0|i_count\(0) & \DRAM|new_sdram_controller_0|Selector10~0_combout\)) # (!\DRAM|new_sdram_controller_0|Selector13~0_combout\))) # 
-- (!\DRAM|new_sdram_controller_0|i_count\(1) & (!\DRAM|new_sdram_controller_0|i_count\(0) & ((\DRAM|new_sdram_controller_0|Selector10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|i_count\(0),
	datab => \DRAM|new_sdram_controller_0|Selector13~0_combout\,
	datac => \DRAM|new_sdram_controller_0|i_count\(1),
	datad => \DRAM|new_sdram_controller_0|Selector10~0_combout\,
	combout => \DRAM|new_sdram_controller_0|Selector14~0_combout\);

-- Location: FF_X71_Y23_N29
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

-- Location: LCCOMB_X71_Y23_N6
\DRAM|new_sdram_controller_0|Selector9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector9~0_combout\ = (!\DRAM|new_sdram_controller_0|i_count\(2) & (!\DRAM|new_sdram_controller_0|i_count\(1) & \DRAM|new_sdram_controller_0|i_state.011~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|i_count\(2),
	datab => \DRAM|new_sdram_controller_0|i_count\(1),
	datac => \DRAM|new_sdram_controller_0|i_state.011~q\,
	combout => \DRAM|new_sdram_controller_0|Selector9~0_combout\);

-- Location: LCCOMB_X72_Y23_N22
\DRAM|new_sdram_controller_0|Selector7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector7~0_combout\ = (\DRAM|new_sdram_controller_0|i_next.000~q\ & ((\DRAM|new_sdram_controller_0|Equal0~4_combout\) # ((\DRAM|new_sdram_controller_0|i_state.000~q\)))) # (!\DRAM|new_sdram_controller_0|i_next.000~q\ & 
-- (!\DRAM|new_sdram_controller_0|Selector9~0_combout\ & ((\DRAM|new_sdram_controller_0|Equal0~4_combout\) # (\DRAM|new_sdram_controller_0|i_state.000~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|i_next.000~q\,
	datab => \DRAM|new_sdram_controller_0|Equal0~4_combout\,
	datac => \DRAM|new_sdram_controller_0|i_state.000~q\,
	datad => \DRAM|new_sdram_controller_0|Selector9~0_combout\,
	combout => \DRAM|new_sdram_controller_0|Selector7~0_combout\);

-- Location: FF_X72_Y23_N23
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

-- Location: LCCOMB_X72_Y23_N0
\DRAM|new_sdram_controller_0|Selector6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector6~0_combout\ = (\DRAM|new_sdram_controller_0|i_state.010~q\ & ((!\DRAM|new_sdram_controller_0|i_refs\(0)))) # (!\DRAM|new_sdram_controller_0|i_state.010~q\ & (\DRAM|new_sdram_controller_0|i_state.000~q\ & 
-- \DRAM|new_sdram_controller_0|i_refs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|i_state.000~q\,
	datab => \DRAM|new_sdram_controller_0|i_state.010~q\,
	datac => \DRAM|new_sdram_controller_0|i_refs\(0),
	combout => \DRAM|new_sdram_controller_0|Selector6~0_combout\);

-- Location: FF_X72_Y23_N1
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

-- Location: LCCOMB_X72_Y23_N30
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

-- Location: FF_X72_Y23_N31
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

-- Location: LCCOMB_X72_Y23_N10
\DRAM|new_sdram_controller_0|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Add1~0_combout\ = (\DRAM|new_sdram_controller_0|i_refs\(1) & \DRAM|new_sdram_controller_0|i_refs\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|i_refs\(1),
	datad => \DRAM|new_sdram_controller_0|i_refs\(0),
	combout => \DRAM|new_sdram_controller_0|Add1~0_combout\);

-- Location: LCCOMB_X72_Y23_N20
\DRAM|new_sdram_controller_0|Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector4~0_combout\ = (\DRAM|new_sdram_controller_0|i_state.010~q\ & ((\DRAM|new_sdram_controller_0|i_refs\(2) $ (\DRAM|new_sdram_controller_0|Add1~0_combout\)))) # (!\DRAM|new_sdram_controller_0|i_state.010~q\ & 
-- (\DRAM|new_sdram_controller_0|i_state.000~q\ & (\DRAM|new_sdram_controller_0|i_refs\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|i_state.000~q\,
	datab => \DRAM|new_sdram_controller_0|i_state.010~q\,
	datac => \DRAM|new_sdram_controller_0|i_refs\(2),
	datad => \DRAM|new_sdram_controller_0|Add1~0_combout\,
	combout => \DRAM|new_sdram_controller_0|Selector4~0_combout\);

-- Location: FF_X72_Y23_N21
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

-- Location: LCCOMB_X72_Y23_N16
\DRAM|new_sdram_controller_0|Selector8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector8~0_combout\ = (!\DRAM|new_sdram_controller_0|i_state.000~q\ & \DRAM|new_sdram_controller_0|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|i_state.000~q\,
	datac => \DRAM|new_sdram_controller_0|Equal0~4_combout\,
	combout => \DRAM|new_sdram_controller_0|Selector8~0_combout\);

-- Location: FF_X72_Y23_N17
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

-- Location: LCCOMB_X72_Y23_N4
\DRAM|new_sdram_controller_0|Selector16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector16~0_combout\ = (\DRAM|new_sdram_controller_0|i_state.001~q\) # ((\DRAM|new_sdram_controller_0|i_state.010~q\ & ((!\DRAM|new_sdram_controller_0|i_refs\(2)) # (!\DRAM|new_sdram_controller_0|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|Add1~0_combout\,
	datab => \DRAM|new_sdram_controller_0|i_refs\(2),
	datac => \DRAM|new_sdram_controller_0|i_state.001~q\,
	datad => \DRAM|new_sdram_controller_0|i_state.010~q\,
	combout => \DRAM|new_sdram_controller_0|Selector16~0_combout\);

-- Location: LCCOMB_X72_Y23_N28
\DRAM|new_sdram_controller_0|WideOr6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|WideOr6~0_combout\ = (!\DRAM|new_sdram_controller_0|i_state.011~q\ & \DRAM|new_sdram_controller_0|i_state.000~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|i_state.011~q\,
	datac => \DRAM|new_sdram_controller_0|i_state.000~q\,
	combout => \DRAM|new_sdram_controller_0|WideOr6~0_combout\);

-- Location: LCCOMB_X71_Y23_N4
\DRAM|new_sdram_controller_0|Selector16~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector16~1_combout\ = (\DRAM|new_sdram_controller_0|Selector16~0_combout\) # ((\DRAM|new_sdram_controller_0|i_next.010~q\ & ((\DRAM|new_sdram_controller_0|i_state.101~q\) # 
-- (!\DRAM|new_sdram_controller_0|WideOr6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|Selector16~0_combout\,
	datab => \DRAM|new_sdram_controller_0|i_state.101~q\,
	datac => \DRAM|new_sdram_controller_0|i_next.010~q\,
	datad => \DRAM|new_sdram_controller_0|WideOr6~0_combout\,
	combout => \DRAM|new_sdram_controller_0|Selector16~1_combout\);

-- Location: FF_X71_Y23_N5
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

-- Location: LCCOMB_X71_Y23_N24
\DRAM|new_sdram_controller_0|Selector9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector9~1_combout\ = (!\DRAM|new_sdram_controller_0|i_count\(2) & (\DRAM|new_sdram_controller_0|i_next.010~q\ & (\DRAM|new_sdram_controller_0|i_state.011~q\ & !\DRAM|new_sdram_controller_0|i_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|i_count\(2),
	datab => \DRAM|new_sdram_controller_0|i_next.010~q\,
	datac => \DRAM|new_sdram_controller_0|i_state.011~q\,
	datad => \DRAM|new_sdram_controller_0|i_count\(1),
	combout => \DRAM|new_sdram_controller_0|Selector9~1_combout\);

-- Location: FF_X71_Y23_N25
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

-- Location: LCCOMB_X71_Y23_N14
\DRAM|new_sdram_controller_0|Selector10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector10~1_combout\ = (\DRAM|new_sdram_controller_0|i_state.111~q\) # ((\DRAM|new_sdram_controller_0|i_state.010~q\) # ((\DRAM|new_sdram_controller_0|Selector10~0_combout\) # (\DRAM|new_sdram_controller_0|i_state.001~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|i_state.111~q\,
	datab => \DRAM|new_sdram_controller_0|i_state.010~q\,
	datac => \DRAM|new_sdram_controller_0|Selector10~0_combout\,
	datad => \DRAM|new_sdram_controller_0|i_state.001~q\,
	combout => \DRAM|new_sdram_controller_0|Selector10~1_combout\);

-- Location: FF_X71_Y23_N15
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

-- Location: LCCOMB_X71_Y23_N12
\DRAM|new_sdram_controller_0|Selector15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector15~0_combout\ = (\DRAM|new_sdram_controller_0|i_state.011~q\ & (\DRAM|new_sdram_controller_0|i_count\(0) $ (((\DRAM|new_sdram_controller_0|i_count\(2)) # (\DRAM|new_sdram_controller_0|i_count\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|i_count\(0),
	datab => \DRAM|new_sdram_controller_0|i_state.011~q\,
	datac => \DRAM|new_sdram_controller_0|i_count\(2),
	datad => \DRAM|new_sdram_controller_0|i_count\(1),
	combout => \DRAM|new_sdram_controller_0|Selector15~0_combout\);

-- Location: LCCOMB_X71_Y23_N22
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

-- Location: LCCOMB_X71_Y23_N30
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

-- Location: FF_X71_Y23_N31
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

-- Location: LCCOMB_X71_Y23_N18
\DRAM|new_sdram_controller_0|Selector13~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector13~1_combout\ = ((\DRAM|new_sdram_controller_0|i_state.011~q\ & ((\DRAM|new_sdram_controller_0|i_count\(0)) # (\DRAM|new_sdram_controller_0|i_count\(1))))) # (!\DRAM|new_sdram_controller_0|Selector13~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|i_count\(0),
	datab => \DRAM|new_sdram_controller_0|Selector13~0_combout\,
	datac => \DRAM|new_sdram_controller_0|i_state.011~q\,
	datad => \DRAM|new_sdram_controller_0|i_count\(1),
	combout => \DRAM|new_sdram_controller_0|Selector13~1_combout\);

-- Location: LCCOMB_X71_Y23_N26
\DRAM|new_sdram_controller_0|Selector13~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector13~2_combout\ = (\DRAM|new_sdram_controller_0|i_state.111~q\) # ((\DRAM|new_sdram_controller_0|i_state.010~q\) # ((\DRAM|new_sdram_controller_0|Selector13~1_combout\ & \DRAM|new_sdram_controller_0|i_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|i_state.111~q\,
	datab => \DRAM|new_sdram_controller_0|Selector13~1_combout\,
	datac => \DRAM|new_sdram_controller_0|i_count\(2),
	datad => \DRAM|new_sdram_controller_0|i_state.010~q\,
	combout => \DRAM|new_sdram_controller_0|Selector13~2_combout\);

-- Location: FF_X71_Y23_N27
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

-- Location: LCCOMB_X72_Y23_N26
\DRAM|new_sdram_controller_0|Selector18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector18~0_combout\ = (\DRAM|new_sdram_controller_0|i_next.111~q\ & ((\DRAM|new_sdram_controller_0|i_state.101~q\) # ((\DRAM|new_sdram_controller_0|i_state.011~q\) # (!\DRAM|new_sdram_controller_0|i_state.000~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|i_state.101~q\,
	datab => \DRAM|new_sdram_controller_0|i_next.111~q\,
	datac => \DRAM|new_sdram_controller_0|i_state.000~q\,
	datad => \DRAM|new_sdram_controller_0|i_state.011~q\,
	combout => \DRAM|new_sdram_controller_0|Selector18~0_combout\);

-- Location: LCCOMB_X72_Y23_N14
\DRAM|new_sdram_controller_0|Selector18~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector18~1_combout\ = (\DRAM|new_sdram_controller_0|Selector18~0_combout\) # ((\DRAM|new_sdram_controller_0|Add1~0_combout\ & (\DRAM|new_sdram_controller_0|i_refs\(2) & \DRAM|new_sdram_controller_0|i_state.010~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|Add1~0_combout\,
	datab => \DRAM|new_sdram_controller_0|i_refs\(2),
	datac => \DRAM|new_sdram_controller_0|Selector18~0_combout\,
	datad => \DRAM|new_sdram_controller_0|i_state.010~q\,
	combout => \DRAM|new_sdram_controller_0|Selector18~1_combout\);

-- Location: FF_X72_Y23_N15
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

-- Location: LCCOMB_X71_Y23_N10
\DRAM|new_sdram_controller_0|Selector12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector12~0_combout\ = (!\DRAM|new_sdram_controller_0|i_count\(2) & (\DRAM|new_sdram_controller_0|i_next.111~q\ & (\DRAM|new_sdram_controller_0|i_state.011~q\ & !\DRAM|new_sdram_controller_0|i_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|i_count\(2),
	datab => \DRAM|new_sdram_controller_0|i_next.111~q\,
	datac => \DRAM|new_sdram_controller_0|i_state.011~q\,
	datad => \DRAM|new_sdram_controller_0|i_count\(1),
	combout => \DRAM|new_sdram_controller_0|Selector12~0_combout\);

-- Location: FF_X71_Y23_N11
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

-- Location: LCCOMB_X71_Y23_N0
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

-- Location: FF_X71_Y23_N1
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

-- Location: LCCOMB_X71_Y23_N16
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

-- Location: FF_X71_Y23_N17
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

-- Location: LCCOMB_X74_Y20_N26
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

-- Location: FF_X74_Y20_N27
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

-- Location: LCCOMB_X75_Y24_N20
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~0_combout\ = \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ $ 
-- (\DRAM|new_sdram_controller_0|f_select~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\,
	datad => \DRAM|new_sdram_controller_0|f_select~combout\,
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~0_combout\);

-- Location: FF_X75_Y24_N21
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~0_combout\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\);

-- Location: CLKCTRL_G7
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

-- Location: LCCOMB_X66_Y28_N4
\addressCounter[0]~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \addressCounter[0]~75_combout\ = !addressCounter(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => addressCounter(0),
	combout => \addressCounter[0]~75_combout\);

-- Location: FF_X66_Y28_N5
\addressCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \addressCounter[0]~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addressCounter(0));

-- Location: LCCOMB_X65_Y28_N8
\addressCounter[1]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \addressCounter[1]~25_combout\ = (addressCounter(0) & (addressCounter(1) $ (VCC))) # (!addressCounter(0) & (addressCounter(1) & VCC))
-- \addressCounter[1]~26\ = CARRY((addressCounter(0) & addressCounter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => addressCounter(0),
	datab => addressCounter(1),
	datad => VCC,
	combout => \addressCounter[1]~25_combout\,
	cout => \addressCounter[1]~26\);

-- Location: LCCOMB_X69_Y25_N16
\addressCounter[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \addressCounter[1]~feeder_combout\ = \addressCounter[1]~25_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \addressCounter[1]~25_combout\,
	combout => \addressCounter[1]~feeder_combout\);

-- Location: FF_X69_Y25_N17
\addressCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \addressCounter[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addressCounter(1));

-- Location: LCCOMB_X65_Y28_N10
\addressCounter[2]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \addressCounter[2]~27_combout\ = (addressCounter(2) & (!\addressCounter[1]~26\)) # (!addressCounter(2) & ((\addressCounter[1]~26\) # (GND)))
-- \addressCounter[2]~28\ = CARRY((!\addressCounter[1]~26\) # (!addressCounter(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => addressCounter(2),
	datad => VCC,
	cin => \addressCounter[1]~26\,
	combout => \addressCounter[2]~27_combout\,
	cout => \addressCounter[2]~28\);

-- Location: FF_X65_Y28_N11
\addressCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \addressCounter[2]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addressCounter(2));

-- Location: LCCOMB_X65_Y28_N12
\addressCounter[3]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \addressCounter[3]~29_combout\ = (addressCounter(3) & (\addressCounter[2]~28\ $ (GND))) # (!addressCounter(3) & (!\addressCounter[2]~28\ & VCC))
-- \addressCounter[3]~30\ = CARRY((addressCounter(3) & !\addressCounter[2]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => addressCounter(3),
	datad => VCC,
	cin => \addressCounter[2]~28\,
	combout => \addressCounter[3]~29_combout\,
	cout => \addressCounter[3]~30\);

-- Location: LCCOMB_X65_Y24_N2
\addressCounter[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \addressCounter[3]~feeder_combout\ = \addressCounter[3]~29_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \addressCounter[3]~29_combout\,
	combout => \addressCounter[3]~feeder_combout\);

-- Location: FF_X65_Y24_N3
\addressCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \addressCounter[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addressCounter(3));

-- Location: LCCOMB_X65_Y28_N14
\addressCounter[4]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \addressCounter[4]~31_combout\ = (addressCounter(4) & (!\addressCounter[3]~30\)) # (!addressCounter(4) & ((\addressCounter[3]~30\) # (GND)))
-- \addressCounter[4]~32\ = CARRY((!\addressCounter[3]~30\) # (!addressCounter(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => addressCounter(4),
	datad => VCC,
	cin => \addressCounter[3]~30\,
	combout => \addressCounter[4]~31_combout\,
	cout => \addressCounter[4]~32\);

-- Location: FF_X65_Y28_N15
\addressCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \addressCounter[4]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addressCounter(4));

-- Location: LCCOMB_X65_Y28_N16
\addressCounter[5]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \addressCounter[5]~33_combout\ = (addressCounter(5) & (\addressCounter[4]~32\ $ (GND))) # (!addressCounter(5) & (!\addressCounter[4]~32\ & VCC))
-- \addressCounter[5]~34\ = CARRY((addressCounter(5) & !\addressCounter[4]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => addressCounter(5),
	datad => VCC,
	cin => \addressCounter[4]~32\,
	combout => \addressCounter[5]~33_combout\,
	cout => \addressCounter[5]~34\);

-- Location: FF_X65_Y28_N17
\addressCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \addressCounter[5]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addressCounter(5));

-- Location: LCCOMB_X65_Y28_N18
\addressCounter[6]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \addressCounter[6]~35_combout\ = (addressCounter(6) & (!\addressCounter[5]~34\)) # (!addressCounter(6) & ((\addressCounter[5]~34\) # (GND)))
-- \addressCounter[6]~36\ = CARRY((!\addressCounter[5]~34\) # (!addressCounter(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => addressCounter(6),
	datad => VCC,
	cin => \addressCounter[5]~34\,
	combout => \addressCounter[6]~35_combout\,
	cout => \addressCounter[6]~36\);

-- Location: FF_X65_Y24_N1
\addressCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	asdata => \addressCounter[6]~35_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addressCounter(6));

-- Location: LCCOMB_X65_Y28_N20
\addressCounter[7]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \addressCounter[7]~37_combout\ = (addressCounter(7) & (\addressCounter[6]~36\ $ (GND))) # (!addressCounter(7) & (!\addressCounter[6]~36\ & VCC))
-- \addressCounter[7]~38\ = CARRY((addressCounter(7) & !\addressCounter[6]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => addressCounter(7),
	datad => VCC,
	cin => \addressCounter[6]~36\,
	combout => \addressCounter[7]~37_combout\,
	cout => \addressCounter[7]~38\);

-- Location: FF_X65_Y24_N19
\addressCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	asdata => \addressCounter[7]~37_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addressCounter(7));

-- Location: LCCOMB_X65_Y28_N22
\addressCounter[8]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \addressCounter[8]~39_combout\ = (addressCounter(8) & (!\addressCounter[7]~38\)) # (!addressCounter(8) & ((\addressCounter[7]~38\) # (GND)))
-- \addressCounter[8]~40\ = CARRY((!\addressCounter[7]~38\) # (!addressCounter(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => addressCounter(8),
	datad => VCC,
	cin => \addressCounter[7]~38\,
	combout => \addressCounter[8]~39_combout\,
	cout => \addressCounter[8]~40\);

-- Location: FF_X65_Y28_N23
\addressCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \addressCounter[8]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addressCounter(8));

-- Location: LCCOMB_X65_Y28_N24
\addressCounter[9]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \addressCounter[9]~41_combout\ = (addressCounter(9) & (\addressCounter[8]~40\ $ (GND))) # (!addressCounter(9) & (!\addressCounter[8]~40\ & VCC))
-- \addressCounter[9]~42\ = CARRY((addressCounter(9) & !\addressCounter[8]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => addressCounter(9),
	datad => VCC,
	cin => \addressCounter[8]~40\,
	combout => \addressCounter[9]~41_combout\,
	cout => \addressCounter[9]~42\);

-- Location: FF_X65_Y28_N25
\addressCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \addressCounter[9]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addressCounter(9));

-- Location: LCCOMB_X65_Y28_N26
\addressCounter[10]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \addressCounter[10]~43_combout\ = (addressCounter(10) & (!\addressCounter[9]~42\)) # (!addressCounter(10) & ((\addressCounter[9]~42\) # (GND)))
-- \addressCounter[10]~44\ = CARRY((!\addressCounter[9]~42\) # (!addressCounter(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => addressCounter(10),
	datad => VCC,
	cin => \addressCounter[9]~42\,
	combout => \addressCounter[10]~43_combout\,
	cout => \addressCounter[10]~44\);

-- Location: LCCOMB_X65_Y24_N20
\addressCounter[10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \addressCounter[10]~feeder_combout\ = \addressCounter[10]~43_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \addressCounter[10]~43_combout\,
	combout => \addressCounter[10]~feeder_combout\);

-- Location: FF_X65_Y24_N21
\addressCounter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \addressCounter[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addressCounter(10));

-- Location: LCCOMB_X65_Y28_N28
\addressCounter[11]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \addressCounter[11]~45_combout\ = (addressCounter(11) & (\addressCounter[10]~44\ $ (GND))) # (!addressCounter(11) & (!\addressCounter[10]~44\ & VCC))
-- \addressCounter[11]~46\ = CARRY((addressCounter(11) & !\addressCounter[10]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => addressCounter(11),
	datad => VCC,
	cin => \addressCounter[10]~44\,
	combout => \addressCounter[11]~45_combout\,
	cout => \addressCounter[11]~46\);

-- Location: FF_X65_Y24_N15
\addressCounter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	asdata => \addressCounter[11]~45_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addressCounter(11));

-- Location: LCCOMB_X65_Y28_N30
\addressCounter[12]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \addressCounter[12]~47_combout\ = (addressCounter(12) & (!\addressCounter[11]~46\)) # (!addressCounter(12) & ((\addressCounter[11]~46\) # (GND)))
-- \addressCounter[12]~48\ = CARRY((!\addressCounter[11]~46\) # (!addressCounter(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => addressCounter(12),
	datad => VCC,
	cin => \addressCounter[11]~46\,
	combout => \addressCounter[12]~47_combout\,
	cout => \addressCounter[12]~48\);

-- Location: FF_X65_Y24_N11
\addressCounter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	asdata => \addressCounter[12]~47_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addressCounter(12));

-- Location: LCCOMB_X65_Y27_N0
\addressCounter[13]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \addressCounter[13]~49_combout\ = (addressCounter(13) & (\addressCounter[12]~48\ $ (GND))) # (!addressCounter(13) & (!\addressCounter[12]~48\ & VCC))
-- \addressCounter[13]~50\ = CARRY((addressCounter(13) & !\addressCounter[12]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => addressCounter(13),
	datad => VCC,
	cin => \addressCounter[12]~48\,
	combout => \addressCounter[13]~49_combout\,
	cout => \addressCounter[13]~50\);

-- Location: LCCOMB_X65_Y24_N12
\addressCounter[13]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \addressCounter[13]~feeder_combout\ = \addressCounter[13]~49_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \addressCounter[13]~49_combout\,
	combout => \addressCounter[13]~feeder_combout\);

-- Location: FF_X65_Y24_N13
\addressCounter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \addressCounter[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addressCounter(13));

-- Location: LCCOMB_X65_Y27_N2
\addressCounter[14]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \addressCounter[14]~51_combout\ = (addressCounter(14) & (!\addressCounter[13]~50\)) # (!addressCounter(14) & ((\addressCounter[13]~50\) # (GND)))
-- \addressCounter[14]~52\ = CARRY((!\addressCounter[13]~50\) # (!addressCounter(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => addressCounter(14),
	datad => VCC,
	cin => \addressCounter[13]~50\,
	combout => \addressCounter[14]~51_combout\,
	cout => \addressCounter[14]~52\);

-- Location: FF_X65_Y27_N3
\addressCounter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \addressCounter[14]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addressCounter(14));

-- Location: LCCOMB_X65_Y27_N4
\addressCounter[15]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \addressCounter[15]~53_combout\ = (addressCounter(15) & (\addressCounter[14]~52\ $ (GND))) # (!addressCounter(15) & (!\addressCounter[14]~52\ & VCC))
-- \addressCounter[15]~54\ = CARRY((addressCounter(15) & !\addressCounter[14]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => addressCounter(15),
	datad => VCC,
	cin => \addressCounter[14]~52\,
	combout => \addressCounter[15]~53_combout\,
	cout => \addressCounter[15]~54\);

-- Location: LCCOMB_X65_Y24_N16
\addressCounter[15]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \addressCounter[15]~feeder_combout\ = \addressCounter[15]~53_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \addressCounter[15]~53_combout\,
	combout => \addressCounter[15]~feeder_combout\);

-- Location: FF_X65_Y24_N17
\addressCounter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \addressCounter[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addressCounter(15));

-- Location: LCCOMB_X65_Y27_N6
\addressCounter[16]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \addressCounter[16]~55_combout\ = (addressCounter(16) & (!\addressCounter[15]~54\)) # (!addressCounter(16) & ((\addressCounter[15]~54\) # (GND)))
-- \addressCounter[16]~56\ = CARRY((!\addressCounter[15]~54\) # (!addressCounter(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => addressCounter(16),
	datad => VCC,
	cin => \addressCounter[15]~54\,
	combout => \addressCounter[16]~55_combout\,
	cout => \addressCounter[16]~56\);

-- Location: LCCOMB_X66_Y27_N28
\addressCounter[16]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \addressCounter[16]~feeder_combout\ = \addressCounter[16]~55_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \addressCounter[16]~55_combout\,
	combout => \addressCounter[16]~feeder_combout\);

-- Location: FF_X66_Y27_N29
\addressCounter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \addressCounter[16]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addressCounter(16));

-- Location: LCCOMB_X65_Y27_N8
\addressCounter[17]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \addressCounter[17]~57_combout\ = (addressCounter(17) & (\addressCounter[16]~56\ $ (GND))) # (!addressCounter(17) & (!\addressCounter[16]~56\ & VCC))
-- \addressCounter[17]~58\ = CARRY((addressCounter(17) & !\addressCounter[16]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => addressCounter(17),
	datad => VCC,
	cin => \addressCounter[16]~56\,
	combout => \addressCounter[17]~57_combout\,
	cout => \addressCounter[17]~58\);

-- Location: LCCOMB_X66_Y25_N16
\addressCounter[17]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \addressCounter[17]~feeder_combout\ = \addressCounter[17]~57_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \addressCounter[17]~57_combout\,
	combout => \addressCounter[17]~feeder_combout\);

-- Location: FF_X66_Y25_N17
\addressCounter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \addressCounter[17]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addressCounter(17));

-- Location: LCCOMB_X65_Y27_N10
\addressCounter[18]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \addressCounter[18]~59_combout\ = (addressCounter(18) & (!\addressCounter[17]~58\)) # (!addressCounter(18) & ((\addressCounter[17]~58\) # (GND)))
-- \addressCounter[18]~60\ = CARRY((!\addressCounter[17]~58\) # (!addressCounter(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => addressCounter(18),
	datad => VCC,
	cin => \addressCounter[17]~58\,
	combout => \addressCounter[18]~59_combout\,
	cout => \addressCounter[18]~60\);

-- Location: LCCOMB_X66_Y27_N18
\addressCounter[18]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \addressCounter[18]~feeder_combout\ = \addressCounter[18]~59_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \addressCounter[18]~59_combout\,
	combout => \addressCounter[18]~feeder_combout\);

-- Location: FF_X66_Y27_N19
\addressCounter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \addressCounter[18]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addressCounter(18));

-- Location: LCCOMB_X65_Y27_N12
\addressCounter[19]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \addressCounter[19]~61_combout\ = (addressCounter(19) & (\addressCounter[18]~60\ $ (GND))) # (!addressCounter(19) & (!\addressCounter[18]~60\ & VCC))
-- \addressCounter[19]~62\ = CARRY((addressCounter(19) & !\addressCounter[18]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => addressCounter(19),
	datad => VCC,
	cin => \addressCounter[18]~60\,
	combout => \addressCounter[19]~61_combout\,
	cout => \addressCounter[19]~62\);

-- Location: FF_X65_Y27_N13
\addressCounter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \addressCounter[19]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addressCounter(19));

-- Location: LCCOMB_X65_Y27_N14
\addressCounter[20]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \addressCounter[20]~63_combout\ = (addressCounter(20) & (!\addressCounter[19]~62\)) # (!addressCounter(20) & ((\addressCounter[19]~62\) # (GND)))
-- \addressCounter[20]~64\ = CARRY((!\addressCounter[19]~62\) # (!addressCounter(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => addressCounter(20),
	datad => VCC,
	cin => \addressCounter[19]~62\,
	combout => \addressCounter[20]~63_combout\,
	cout => \addressCounter[20]~64\);

-- Location: FF_X65_Y27_N15
\addressCounter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \addressCounter[20]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addressCounter(20));

-- Location: LCCOMB_X65_Y27_N28
\memaddress~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memaddress~11_combout\ = (addressCounter(20) & !\DE10Reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => addressCounter(20),
	datad => \DE10Reset~input_o\,
	combout => \memaddress~11_combout\);

-- Location: LCCOMB_X72_Y24_N8
\memaddress[20]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- memaddress(20) = (GLOBAL(\estado_pres.e1~clkctrl_outclk\) & (memaddress(20))) # (!GLOBAL(\estado_pres.e1~clkctrl_outclk\) & ((\memaddress~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => memaddress(20),
	datac => \estado_pres.e1~clkctrl_outclk\,
	datad => \memaddress~11_combout\,
	combout => memaddress(20));

-- Location: LCCOMB_X70_Y22_N16
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|wr_address~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|wr_address~0_combout\ = \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|wr_address~q\ $ (((\writerequest~combout\ & 
-- ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(0)) # (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writerequest~combout\,
	datab => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(0),
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|wr_address~q\,
	datad => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(1),
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|wr_address~0_combout\);

-- Location: FF_X70_Y22_N17
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

-- Location: LCCOMB_X70_Y24_N20
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[43]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\ = (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|wr_address~q\ & (\writerequest~combout\ & 
-- ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(0)) # (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(1),
	datab => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|wr_address~q\,
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(0),
	datad => \writerequest~combout\,
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\);

-- Location: FF_X72_Y24_N29
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

-- Location: LCCOMB_X72_Y24_N6
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[37]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[37]~feeder_combout\ = memaddress(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => memaddress(20),
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[37]~feeder_combout\);

-- Location: LCCOMB_X70_Y24_N18
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~0_combout\ = (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|wr_address~q\ & (\writerequest~combout\ & 
-- ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(0)) # (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(1),
	datab => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(0),
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|wr_address~q\,
	datad => \writerequest~combout\,
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~0_combout\);

-- Location: FF_X72_Y24_N7
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[37]~feeder_combout\,
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(37));

-- Location: LCCOMB_X72_Y24_N28
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[37]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[37]~11_combout\ = (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(37))) # (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(37))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\,
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(37),
	datad => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(37),
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[37]~11_combout\);

-- Location: LCCOMB_X71_Y21_N24
\DRAM|new_sdram_controller_0|active_addr[19]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|active_addr[19]~feeder_combout\ = \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[37]~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[37]~11_combout\,
	combout => \DRAM|new_sdram_controller_0|active_addr[19]~feeder_combout\);

-- Location: LCCOMB_X70_Y20_N26
\DRAM|new_sdram_controller_0|WideOr9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|WideOr9~0_combout\ = (\DRAM|new_sdram_controller_0|m_state.000000001~q\ & !\DRAM|new_sdram_controller_0|m_state.000010000~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_state.000000001~q\,
	datad => \DRAM|new_sdram_controller_0|m_state.000010000~q\,
	combout => \DRAM|new_sdram_controller_0|WideOr9~0_combout\);

-- Location: LCCOMB_X72_Y20_N16
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|Equal1~0_combout\ = (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(1)) # 
-- (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(1),
	datad => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(0),
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|Equal1~0_combout\);

-- Location: LCCOMB_X75_Y20_N16
\DRAM|new_sdram_controller_0|active_addr[23]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|active_addr[23]~0_combout\ = (\DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\ & (!\DRAM|new_sdram_controller_0|refresh_request~q\ & ((\DRAM|new_sdram_controller_0|init_done~q\) # 
-- (\DRAM|new_sdram_controller_0|m_state.000000001~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|init_done~q\,
	datab => \DRAM|new_sdram_controller_0|m_state.000000001~q\,
	datac => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	datad => \DRAM|new_sdram_controller_0|refresh_request~q\,
	combout => \DRAM|new_sdram_controller_0|active_addr[23]~0_combout\);

-- Location: LCCOMB_X69_Y20_N28
\DRAM|new_sdram_controller_0|active_addr[23]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|active_addr[23]~1_combout\ = (\DRAM|new_sdram_controller_0|active_addr[23]~0_combout\ & ((\DRAM|new_sdram_controller_0|m_state.000000001~q\ & ((\DRAM|new_sdram_controller_0|pending~combout\))) # 
-- (!\DRAM|new_sdram_controller_0|m_state.000000001~q\ & (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|Equal1~0_combout\,
	datab => \DRAM|new_sdram_controller_0|m_state.000000001~q\,
	datac => \DRAM|new_sdram_controller_0|active_addr[23]~0_combout\,
	datad => \DRAM|new_sdram_controller_0|pending~combout\,
	combout => \DRAM|new_sdram_controller_0|active_addr[23]~1_combout\);

-- Location: LCCOMB_X70_Y20_N8
\DRAM|new_sdram_controller_0|active_addr[23]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|active_addr[23]~2_combout\ = (\DRAM|new_sdram_controller_0|active_addr[23]~1_combout\ & ((\DRAM|new_sdram_controller_0|m_state.100000000~q\ & (\DRAM|new_sdram_controller_0|pending~combout\)) # 
-- (!\DRAM|new_sdram_controller_0|m_state.100000000~q\ & ((!\DRAM|new_sdram_controller_0|WideOr9~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|pending~combout\,
	datab => \DRAM|new_sdram_controller_0|m_state.100000000~q\,
	datac => \DRAM|new_sdram_controller_0|WideOr9~0_combout\,
	datad => \DRAM|new_sdram_controller_0|active_addr[23]~1_combout\,
	combout => \DRAM|new_sdram_controller_0|active_addr[23]~2_combout\);

-- Location: FF_X71_Y21_N25
\DRAM|new_sdram_controller_0|active_addr[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|active_addr[19]~feeder_combout\,
	ena => \DRAM|new_sdram_controller_0|active_addr[23]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|active_addr\(19));

-- Location: LCCOMB_X65_Y27_N16
\addressCounter[21]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \addressCounter[21]~65_combout\ = (addressCounter(21) & (\addressCounter[20]~64\ $ (GND))) # (!addressCounter(21) & (!\addressCounter[20]~64\ & VCC))
-- \addressCounter[21]~66\ = CARRY((addressCounter(21) & !\addressCounter[20]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => addressCounter(21),
	datad => VCC,
	cin => \addressCounter[20]~64\,
	combout => \addressCounter[21]~65_combout\,
	cout => \addressCounter[21]~66\);

-- Location: FF_X65_Y27_N17
\addressCounter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \addressCounter[21]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addressCounter(21));

-- Location: LCCOMB_X72_Y24_N16
\memaddress~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memaddress~10_combout\ = (!\DE10Reset~input_o\ & addressCounter(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DE10Reset~input_o\,
	datac => addressCounter(21),
	combout => \memaddress~10_combout\);

-- Location: LCCOMB_X72_Y24_N30
\memaddress[21]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- memaddress(21) = (GLOBAL(\estado_pres.e1~clkctrl_outclk\) & (memaddress(21))) # (!GLOBAL(\estado_pres.e1~clkctrl_outclk\) & ((\memaddress~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => memaddress(21),
	datac => \estado_pres.e1~clkctrl_outclk\,
	datad => \memaddress~10_combout\,
	combout => memaddress(21));

-- Location: FF_X72_Y24_N13
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

-- Location: FF_X72_Y24_N19
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => memaddress(21),
	sload => VCC,
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(38));

-- Location: LCCOMB_X72_Y24_N12
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[38]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[38]~10_combout\ = (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
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
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[38]~10_combout\);

-- Location: LCCOMB_X70_Y21_N24
\DRAM|new_sdram_controller_0|active_addr[20]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|active_addr[20]~feeder_combout\ = \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[38]~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[38]~10_combout\,
	combout => \DRAM|new_sdram_controller_0|active_addr[20]~feeder_combout\);

-- Location: FF_X70_Y21_N25
\DRAM|new_sdram_controller_0|active_addr[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|active_addr[20]~feeder_combout\,
	ena => \DRAM|new_sdram_controller_0|active_addr[23]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|active_addr\(20));

-- Location: LCCOMB_X71_Y21_N30
\DRAM|new_sdram_controller_0|pending~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|pending~6_combout\ = (\DRAM|new_sdram_controller_0|active_addr\(19) & (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[37]~11_combout\ & 
-- (\DRAM|new_sdram_controller_0|active_addr\(20) $ (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[38]~10_combout\)))) # (!\DRAM|new_sdram_controller_0|active_addr\(19) & 
-- (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[37]~11_combout\ & (\DRAM|new_sdram_controller_0|active_addr\(20) $ 
-- (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[38]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|active_addr\(19),
	datab => \DRAM|new_sdram_controller_0|active_addr\(20),
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[38]~10_combout\,
	datad => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[37]~11_combout\,
	combout => \DRAM|new_sdram_controller_0|pending~6_combout\);

-- Location: LCCOMB_X70_Y20_N6
\DRAM|new_sdram_controller_0|Selector25~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector25~4_combout\ = (!\DRAM|new_sdram_controller_0|m_state.000000001~q\ & \DRAM|new_sdram_controller_0|init_done~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_state.000000001~q\,
	datad => \DRAM|new_sdram_controller_0|init_done~q\,
	combout => \DRAM|new_sdram_controller_0|Selector25~4_combout\);

-- Location: LCCOMB_X72_Y20_N28
\DRAM|new_sdram_controller_0|active_cs_n~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|active_cs_n~0_combout\ = (\DRAM|new_sdram_controller_0|active_cs_n~q\ & (((!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|Equal1~0_combout\) # 
-- (!\DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\)) # (!\DRAM|new_sdram_controller_0|Selector25~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|Selector25~4_combout\,
	datab => \DRAM|new_sdram_controller_0|active_cs_n~q\,
	datac => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	datad => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|Equal1~0_combout\,
	combout => \DRAM|new_sdram_controller_0|active_cs_n~0_combout\);

-- Location: LCCOMB_X72_Y20_N0
\DRAM|new_sdram_controller_0|active_cs_n~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|active_cs_n~1_combout\ = (\DRAM|new_sdram_controller_0|active_cs_n~0_combout\) # ((\DRAM|new_sdram_controller_0|Selector25~4_combout\ & (\DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\ & 
-- \DRAM|new_sdram_controller_0|refresh_request~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|Selector25~4_combout\,
	datab => \DRAM|new_sdram_controller_0|active_cs_n~0_combout\,
	datac => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	datad => \DRAM|new_sdram_controller_0|refresh_request~q\,
	combout => \DRAM|new_sdram_controller_0|active_cs_n~1_combout\);

-- Location: FF_X72_Y20_N1
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

-- Location: LCCOMB_X65_Y27_N18
\addressCounter[22]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \addressCounter[22]~67_combout\ = (addressCounter(22) & (!\addressCounter[21]~66\)) # (!addressCounter(22) & ((\addressCounter[21]~66\) # (GND)))
-- \addressCounter[22]~68\ = CARRY((!\addressCounter[21]~66\) # (!addressCounter(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => addressCounter(22),
	datad => VCC,
	cin => \addressCounter[21]~66\,
	combout => \addressCounter[22]~67_combout\,
	cout => \addressCounter[22]~68\);

-- Location: LCCOMB_X71_Y27_N20
\addressCounter[22]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \addressCounter[22]~feeder_combout\ = \addressCounter[22]~67_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \addressCounter[22]~67_combout\,
	combout => \addressCounter[22]~feeder_combout\);

-- Location: FF_X71_Y27_N21
\addressCounter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \addressCounter[22]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addressCounter(22));

-- Location: LCCOMB_X65_Y27_N20
\addressCounter[23]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \addressCounter[23]~69_combout\ = (addressCounter(23) & (\addressCounter[22]~68\ $ (GND))) # (!addressCounter(23) & (!\addressCounter[22]~68\ & VCC))
-- \addressCounter[23]~70\ = CARRY((addressCounter(23) & !\addressCounter[22]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => addressCounter(23),
	datad => VCC,
	cin => \addressCounter[22]~68\,
	combout => \addressCounter[23]~69_combout\,
	cout => \addressCounter[23]~70\);

-- Location: FF_X65_Y27_N21
\addressCounter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \addressCounter[23]~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addressCounter(23));

-- Location: LCCOMB_X65_Y27_N22
\addressCounter[24]~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \addressCounter[24]~71_combout\ = (addressCounter(24) & (!\addressCounter[23]~70\)) # (!addressCounter(24) & ((\addressCounter[23]~70\) # (GND)))
-- \addressCounter[24]~72\ = CARRY((!\addressCounter[23]~70\) # (!addressCounter(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => addressCounter(24),
	datad => VCC,
	cin => \addressCounter[23]~70\,
	combout => \addressCounter[24]~71_combout\,
	cout => \addressCounter[24]~72\);

-- Location: FF_X65_Y27_N23
\addressCounter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	d => \addressCounter[24]~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addressCounter(24));

-- Location: LCCOMB_X66_Y24_N14
\memaddress~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memaddress~14_combout\ = (!\DE10Reset~input_o\ & addressCounter(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DE10Reset~input_o\,
	datad => addressCounter(24),
	combout => \memaddress~14_combout\);

-- Location: LCCOMB_X67_Y24_N10
\memaddress[24]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- memaddress(24) = (GLOBAL(\estado_pres.e1~clkctrl_outclk\) & (memaddress(24))) # (!GLOBAL(\estado_pres.e1~clkctrl_outclk\) & ((\memaddress~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => memaddress(24),
	datac => \estado_pres.e1~clkctrl_outclk\,
	datad => \memaddress~14_combout\,
	combout => memaddress(24));

-- Location: LCCOMB_X67_Y24_N22
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[41]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[41]~feeder_combout\ = memaddress(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => memaddress(24),
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[41]~feeder_combout\);

-- Location: FF_X67_Y24_N23
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[41]~feeder_combout\,
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(41));

-- Location: FF_X67_Y24_N25
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

-- Location: LCCOMB_X67_Y24_N24
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

-- Location: FF_X70_Y21_N19
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
	ena => \DRAM|new_sdram_controller_0|active_addr[23]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|active_addr\(23));

-- Location: LCCOMB_X70_Y21_N0
\DRAM|new_sdram_controller_0|pending~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|pending~8_combout\ = (!\DRAM|new_sdram_controller_0|active_cs_n~q\ & (\DRAM|new_sdram_controller_0|active_addr\(23) $ 
-- (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[41]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|active_cs_n~q\,
	datab => \DRAM|new_sdram_controller_0|active_addr\(23),
	datad => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[41]~14_combout\,
	combout => \DRAM|new_sdram_controller_0|pending~8_combout\);

-- Location: LCCOMB_X65_Y27_N26
\memaddress~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memaddress~12_combout\ = (!\DE10Reset~input_o\ & addressCounter(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DE10Reset~input_o\,
	datad => addressCounter(23),
	combout => \memaddress~12_combout\);

-- Location: LCCOMB_X72_Y24_N22
\memaddress[23]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- memaddress(23) = (GLOBAL(\estado_pres.e1~clkctrl_outclk\) & (memaddress(23))) # (!GLOBAL(\estado_pres.e1~clkctrl_outclk\) & ((\memaddress~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => memaddress(23),
	datac => \estado_pres.e1~clkctrl_outclk\,
	datad => \memaddress~12_combout\,
	combout => memaddress(23));

-- Location: LCCOMB_X72_Y24_N14
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[40]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[40]~feeder_combout\ = memaddress(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => memaddress(23),
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[40]~feeder_combout\);

-- Location: FF_X72_Y24_N15
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[40]~feeder_combout\,
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(40));

-- Location: FF_X72_Y24_N25
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

-- Location: LCCOMB_X72_Y24_N24
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[40]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[40]~12_combout\ = (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(40)))) # (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(40)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\,
	datab => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(40),
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(40),
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[40]~12_combout\);

-- Location: FF_X71_Y21_N27
\DRAM|new_sdram_controller_0|active_addr[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[40]~12_combout\,
	sload => VCC,
	ena => \DRAM|new_sdram_controller_0|active_addr[23]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|active_addr\(22));

-- Location: LCCOMB_X71_Y27_N14
\memaddress~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memaddress~13_combout\ = (!\DE10Reset~input_o\ & addressCounter(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DE10Reset~input_o\,
	datad => addressCounter(22),
	combout => \memaddress~13_combout\);

-- Location: LCCOMB_X72_Y24_N4
\memaddress[22]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- memaddress(22) = (GLOBAL(\estado_pres.e1~clkctrl_outclk\) & (memaddress(22))) # (!GLOBAL(\estado_pres.e1~clkctrl_outclk\) & ((\memaddress~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => memaddress(22),
	datac => \estado_pres.e1~clkctrl_outclk\,
	datad => \memaddress~13_combout\,
	combout => memaddress(22));

-- Location: FF_X72_Y24_N21
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

-- Location: LCCOMB_X72_Y24_N10
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[39]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[39]~feeder_combout\ = memaddress(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => memaddress(22),
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[39]~feeder_combout\);

-- Location: FF_X72_Y24_N11
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[39]~feeder_combout\,
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(39));

-- Location: LCCOMB_X72_Y24_N20
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[39]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[39]~13_combout\ = (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(39))) # (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(39))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\,
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(39),
	datad => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(39),
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[39]~13_combout\);

-- Location: LCCOMB_X71_Y21_N28
\DRAM|new_sdram_controller_0|active_addr[21]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|active_addr[21]~feeder_combout\ = \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[39]~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[39]~13_combout\,
	combout => \DRAM|new_sdram_controller_0|active_addr[21]~feeder_combout\);

-- Location: FF_X71_Y21_N29
\DRAM|new_sdram_controller_0|active_addr[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|active_addr[21]~feeder_combout\,
	ena => \DRAM|new_sdram_controller_0|active_addr[23]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|active_addr\(21));

-- Location: LCCOMB_X71_Y21_N12
\DRAM|new_sdram_controller_0|pending~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|pending~7_combout\ = (\DRAM|new_sdram_controller_0|active_addr\(22) & (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[40]~12_combout\ & 
-- (\DRAM|new_sdram_controller_0|active_addr\(21) $ (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[39]~13_combout\)))) # (!\DRAM|new_sdram_controller_0|active_addr\(22) & 
-- (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[40]~12_combout\ & (\DRAM|new_sdram_controller_0|active_addr\(21) $ 
-- (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[39]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|active_addr\(22),
	datab => \DRAM|new_sdram_controller_0|active_addr\(21),
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[39]~13_combout\,
	datad => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[40]~12_combout\,
	combout => \DRAM|new_sdram_controller_0|pending~7_combout\);

-- Location: LCCOMB_X65_Y27_N30
\memaddress~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memaddress~8_combout\ = (!\DE10Reset~input_o\ & addressCounter(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DE10Reset~input_o\,
	datad => addressCounter(19),
	combout => \memaddress~8_combout\);

-- Location: LCCOMB_X66_Y24_N8
\memaddress[19]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- memaddress(19) = (GLOBAL(\estado_pres.e1~clkctrl_outclk\) & (memaddress(19))) # (!GLOBAL(\estado_pres.e1~clkctrl_outclk\) & ((\memaddress~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => memaddress(19),
	datac => \estado_pres.e1~clkctrl_outclk\,
	datad => \memaddress~8_combout\,
	combout => memaddress(19));

-- Location: LCCOMB_X66_Y24_N20
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[36]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[36]~feeder_combout\ = memaddress(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => memaddress(19),
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[36]~feeder_combout\);

-- Location: FF_X66_Y24_N21
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[36]~feeder_combout\,
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(36));

-- Location: FF_X66_Y24_N19
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => memaddress(19),
	sload => VCC,
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(36));

-- Location: LCCOMB_X66_Y24_N18
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[36]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[36]~8_combout\ = (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(36))) # (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(36))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(36),
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(36),
	datad => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\,
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[36]~8_combout\);

-- Location: FF_X70_Y21_N27
\DRAM|new_sdram_controller_0|active_addr[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[36]~8_combout\,
	sload => VCC,
	ena => \DRAM|new_sdram_controller_0|active_addr[23]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|active_addr\(18));

-- Location: LCCOMB_X66_Y27_N30
\memaddress~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memaddress~9_combout\ = (!\DE10Reset~input_o\ & addressCounter(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DE10Reset~input_o\,
	datad => addressCounter(18),
	combout => \memaddress~9_combout\);

-- Location: LCCOMB_X67_Y24_N4
\memaddress[18]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- memaddress(18) = (GLOBAL(\estado_pres.e1~clkctrl_outclk\) & (memaddress(18))) # (!GLOBAL(\estado_pres.e1~clkctrl_outclk\) & ((\memaddress~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => memaddress(18),
	datac => \estado_pres.e1~clkctrl_outclk\,
	datad => \memaddress~9_combout\,
	combout => memaddress(18));

-- Location: LCCOMB_X67_Y24_N18
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[35]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[35]~feeder_combout\ = memaddress(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => memaddress(18),
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[35]~feeder_combout\);

-- Location: FF_X67_Y24_N19
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[35]~feeder_combout\,
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(35));

-- Location: FF_X67_Y24_N9
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

-- Location: LCCOMB_X67_Y24_N8
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[35]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[35]~9_combout\ = (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(35)))) # (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(35)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(35),
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(35),
	datad => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\,
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[35]~9_combout\);

-- Location: FF_X70_Y21_N17
\DRAM|new_sdram_controller_0|active_addr[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[35]~9_combout\,
	sload => VCC,
	ena => \DRAM|new_sdram_controller_0|active_addr[23]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|active_addr\(17));

-- Location: LCCOMB_X70_Y21_N16
\DRAM|new_sdram_controller_0|pending~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|pending~5_combout\ = (\DRAM|new_sdram_controller_0|active_addr\(18) & (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[36]~8_combout\ & 
-- (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[35]~9_combout\ $ (!\DRAM|new_sdram_controller_0|active_addr\(17))))) # (!\DRAM|new_sdram_controller_0|active_addr\(18) & 
-- (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[36]~8_combout\ & (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[35]~9_combout\ $ 
-- (!\DRAM|new_sdram_controller_0|active_addr\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|active_addr\(18),
	datab => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[35]~9_combout\,
	datac => \DRAM|new_sdram_controller_0|active_addr\(17),
	datad => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[36]~8_combout\,
	combout => \DRAM|new_sdram_controller_0|pending~5_combout\);

-- Location: LCCOMB_X70_Y21_N30
\DRAM|new_sdram_controller_0|pending~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|pending~9_combout\ = (\DRAM|new_sdram_controller_0|pending~6_combout\ & (\DRAM|new_sdram_controller_0|pending~8_combout\ & (\DRAM|new_sdram_controller_0|pending~7_combout\ & \DRAM|new_sdram_controller_0|pending~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|pending~6_combout\,
	datab => \DRAM|new_sdram_controller_0|pending~8_combout\,
	datac => \DRAM|new_sdram_controller_0|pending~7_combout\,
	datad => \DRAM|new_sdram_controller_0|pending~5_combout\,
	combout => \DRAM|new_sdram_controller_0|pending~9_combout\);

-- Location: LCCOMB_X65_Y27_N24
\addressCounter[25]~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \addressCounter[25]~73_combout\ = addressCounter(25) $ (!\addressCounter[24]~72\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => addressCounter(25),
	cin => \addressCounter[24]~72\,
	combout => \addressCounter[25]~73_combout\);

-- Location: FF_X65_Y24_N29
\addressCounter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~inputclkctrl_outclk\,
	asdata => \addressCounter[25]~73_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => addressCounter(25));

-- Location: LCCOMB_X65_Y24_N8
\memaddress~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memaddress~0_combout\ = (!\DE10Reset~input_o\ & addressCounter(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DE10Reset~input_o\,
	datad => addressCounter(25),
	combout => \memaddress~0_combout\);

-- Location: LCCOMB_X70_Y24_N6
\memaddress[25]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- memaddress(25) = (GLOBAL(\estado_pres.e1~clkctrl_outclk\) & (memaddress(25))) # (!GLOBAL(\estado_pres.e1~clkctrl_outclk\) & ((\memaddress~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => memaddress(25),
	datac => \estado_pres.e1~clkctrl_outclk\,
	datad => \memaddress~0_combout\,
	combout => memaddress(25));

-- Location: FF_X70_Y24_N5
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

-- Location: FF_X70_Y24_N7
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => memaddress(25),
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(42));

-- Location: LCCOMB_X70_Y24_N4
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[42]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[42]~0_combout\ = (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(42))) # (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(42))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\,
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(42),
	datad => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(42),
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[42]~0_combout\);

-- Location: FF_X70_Y20_N7
\DRAM|new_sdram_controller_0|active_addr[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[42]~0_combout\,
	sload => VCC,
	ena => \DRAM|new_sdram_controller_0|active_addr[23]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|active_addr\(24));

-- Location: LCCOMB_X70_Y24_N28
\memaddress~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memaddress~1_combout\ = (!\DE10Reset~input_o\ & addressCounter(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DE10Reset~input_o\,
	datad => addressCounter(11),
	combout => \memaddress~1_combout\);

-- Location: LCCOMB_X70_Y24_N2
\memaddress[11]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- memaddress(11) = (GLOBAL(\estado_pres.e1~clkctrl_outclk\) & (memaddress(11))) # (!GLOBAL(\estado_pres.e1~clkctrl_outclk\) & ((\memaddress~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => memaddress(11),
	datac => \estado_pres.e1~clkctrl_outclk\,
	datad => \memaddress~1_combout\,
	combout => memaddress(11));

-- Location: FF_X70_Y24_N13
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

-- Location: FF_X70_Y24_N3
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => memaddress(11),
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(28));

-- Location: LCCOMB_X70_Y24_N12
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[28]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[28]~1_combout\ = (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(28))) # (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\,
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(28),
	datad => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(28),
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[28]~1_combout\);

-- Location: FF_X70_Y20_N11
\DRAM|new_sdram_controller_0|active_addr[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[28]~1_combout\,
	sload => VCC,
	ena => \DRAM|new_sdram_controller_0|active_addr[23]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|active_addr\(10));

-- Location: LCCOMB_X70_Y20_N10
\DRAM|new_sdram_controller_0|pending~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|pending~0_combout\ = (\DRAM|new_sdram_controller_0|active_addr\(24) & (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[42]~0_combout\ & 
-- (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[28]~1_combout\ $ (!\DRAM|new_sdram_controller_0|active_addr\(10))))) # (!\DRAM|new_sdram_controller_0|active_addr\(24) & 
-- (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[42]~0_combout\ & (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[28]~1_combout\ $ 
-- (!\DRAM|new_sdram_controller_0|active_addr\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|active_addr\(24),
	datab => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[28]~1_combout\,
	datac => \DRAM|new_sdram_controller_0|active_addr\(10),
	datad => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[42]~0_combout\,
	combout => \DRAM|new_sdram_controller_0|pending~0_combout\);

-- Location: LCCOMB_X65_Y24_N18
\memaddress~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memaddress~2_combout\ = (!\DE10Reset~input_o\ & addressCounter(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DE10Reset~input_o\,
	datad => addressCounter(13),
	combout => \memaddress~2_combout\);

-- Location: LCCOMB_X70_Y24_N26
\memaddress[13]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- memaddress(13) = (GLOBAL(\estado_pres.e1~clkctrl_outclk\) & (memaddress(13))) # (!GLOBAL(\estado_pres.e1~clkctrl_outclk\) & ((\memaddress~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => memaddress(13),
	datac => \estado_pres.e1~clkctrl_outclk\,
	datad => \memaddress~2_combout\,
	combout => memaddress(13));

-- Location: FF_X70_Y24_N25
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

-- Location: FF_X70_Y24_N27
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => memaddress(13),
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(30));

-- Location: LCCOMB_X70_Y24_N24
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[30]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[30]~2_combout\ = (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(30))) # (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\,
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(30),
	datad => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(30),
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[30]~2_combout\);

-- Location: FF_X70_Y19_N9
\DRAM|new_sdram_controller_0|active_addr[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[30]~2_combout\,
	sload => VCC,
	ena => \DRAM|new_sdram_controller_0|active_addr[23]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|active_addr\(12));

-- Location: LCCOMB_X65_Y24_N14
\memaddress~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memaddress~3_combout\ = (!\DE10Reset~input_o\ & addressCounter(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DE10Reset~input_o\,
	datad => addressCounter(12),
	combout => \memaddress~3_combout\);

-- Location: LCCOMB_X70_Y24_N10
\memaddress[12]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- memaddress(12) = (GLOBAL(\estado_pres.e1~clkctrl_outclk\) & (memaddress(12))) # (!GLOBAL(\estado_pres.e1~clkctrl_outclk\) & ((\memaddress~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => memaddress(12),
	datac => \estado_pres.e1~clkctrl_outclk\,
	datad => \memaddress~3_combout\,
	combout => memaddress(12));

-- Location: FF_X70_Y24_N1
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

-- Location: FF_X70_Y24_N11
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => memaddress(12),
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(29));

-- Location: LCCOMB_X70_Y24_N0
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[29]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[29]~3_combout\ = (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(29))) # (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\,
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(29),
	datad => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(29),
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[29]~3_combout\);

-- Location: FF_X70_Y20_N1
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
	ena => \DRAM|new_sdram_controller_0|active_addr[23]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|active_addr\(11));

-- Location: LCCOMB_X70_Y20_N0
\DRAM|new_sdram_controller_0|pending~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|pending~1_combout\ = (\DRAM|new_sdram_controller_0|active_addr\(12) & (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[30]~2_combout\ & 
-- (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[29]~3_combout\ $ (!\DRAM|new_sdram_controller_0|active_addr\(11))))) # (!\DRAM|new_sdram_controller_0|active_addr\(12) & 
-- (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[30]~2_combout\ & (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[29]~3_combout\ $ 
-- (!\DRAM|new_sdram_controller_0|active_addr\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|active_addr\(12),
	datab => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[29]~3_combout\,
	datac => \DRAM|new_sdram_controller_0|active_addr\(11),
	datad => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[30]~2_combout\,
	combout => \DRAM|new_sdram_controller_0|pending~1_combout\);

-- Location: LCCOMB_X65_Y24_N10
\memaddress~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memaddress~4_combout\ = (!\DE10Reset~input_o\ & addressCounter(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DE10Reset~input_o\,
	datad => addressCounter(15),
	combout => \memaddress~4_combout\);

-- Location: LCCOMB_X70_Y24_N30
\memaddress[15]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- memaddress(15) = (GLOBAL(\estado_pres.e1~clkctrl_outclk\) & (memaddress(15))) # (!GLOBAL(\estado_pres.e1~clkctrl_outclk\) & ((\memaddress~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => memaddress(15),
	datac => \estado_pres.e1~clkctrl_outclk\,
	datad => \memaddress~4_combout\,
	combout => memaddress(15));

-- Location: FF_X70_Y24_N9
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => memaddress(15),
	sload => VCC,
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(32));

-- Location: FF_X70_Y24_N31
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => memaddress(15),
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(32));

-- Location: LCCOMB_X70_Y24_N8
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[32]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[32]~4_combout\ = (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(32))) # (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(32))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\,
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(32),
	datad => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(32),
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[32]~4_combout\);

-- Location: LCCOMB_X70_Y19_N26
\DRAM|new_sdram_controller_0|active_addr[14]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|active_addr[14]~feeder_combout\ = \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[32]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[32]~4_combout\,
	combout => \DRAM|new_sdram_controller_0|active_addr[14]~feeder_combout\);

-- Location: FF_X70_Y19_N27
\DRAM|new_sdram_controller_0|active_addr[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|active_addr[14]~feeder_combout\,
	ena => \DRAM|new_sdram_controller_0|active_addr[23]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|active_addr\(14));

-- Location: LCCOMB_X66_Y24_N12
\memaddress~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memaddress~5_combout\ = (!\DE10Reset~input_o\ & addressCounter(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DE10Reset~input_o\,
	datad => addressCounter(14),
	combout => \memaddress~5_combout\);

-- Location: LCCOMB_X66_Y24_N6
\memaddress[14]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- memaddress(14) = (GLOBAL(\estado_pres.e1~clkctrl_outclk\) & (memaddress(14))) # (!GLOBAL(\estado_pres.e1~clkctrl_outclk\) & ((\memaddress~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => memaddress(14),
	datab => \estado_pres.e1~clkctrl_outclk\,
	datad => \memaddress~5_combout\,
	combout => memaddress(14));

-- Location: LCCOMB_X66_Y24_N10
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[31]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[31]~feeder_combout\ = memaddress(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => memaddress(14),
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[31]~feeder_combout\);

-- Location: FF_X66_Y24_N11
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[31]~feeder_combout\,
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(31));

-- Location: FF_X66_Y24_N29
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

-- Location: LCCOMB_X66_Y24_N28
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[31]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[31]~5_combout\ = (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(31)))) # (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(31),
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(31),
	datad => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\,
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[31]~5_combout\);

-- Location: FF_X70_Y20_N27
\DRAM|new_sdram_controller_0|active_addr[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[31]~5_combout\,
	sload => VCC,
	ena => \DRAM|new_sdram_controller_0|active_addr[23]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|active_addr\(13));

-- Location: LCCOMB_X70_Y20_N30
\DRAM|new_sdram_controller_0|pending~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|pending~2_combout\ = (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[32]~4_combout\ & (\DRAM|new_sdram_controller_0|active_addr\(14) & 
-- (\DRAM|new_sdram_controller_0|active_addr\(13) $ (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[31]~5_combout\)))) # 
-- (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[32]~4_combout\ & (!\DRAM|new_sdram_controller_0|active_addr\(14) & (\DRAM|new_sdram_controller_0|active_addr\(13) $ 
-- (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[31]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[32]~4_combout\,
	datab => \DRAM|new_sdram_controller_0|active_addr\(14),
	datac => \DRAM|new_sdram_controller_0|active_addr\(13),
	datad => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[31]~5_combout\,
	combout => \DRAM|new_sdram_controller_0|pending~2_combout\);

-- Location: LCCOMB_X66_Y27_N0
\memaddress~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memaddress~7_combout\ = (!\DE10Reset~input_o\ & addressCounter(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DE10Reset~input_o\,
	datad => addressCounter(16),
	combout => \memaddress~7_combout\);

-- Location: LCCOMB_X67_Y24_N2
\memaddress[16]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- memaddress(16) = (GLOBAL(\estado_pres.e1~clkctrl_outclk\) & (memaddress(16))) # (!GLOBAL(\estado_pres.e1~clkctrl_outclk\) & ((\memaddress~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => memaddress(16),
	datac => \estado_pres.e1~clkctrl_outclk\,
	datad => \memaddress~7_combout\,
	combout => memaddress(16));

-- Location: LCCOMB_X67_Y24_N30
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[33]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[33]~feeder_combout\ = memaddress(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => memaddress(16),
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[33]~feeder_combout\);

-- Location: FF_X67_Y24_N31
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[33]~feeder_combout\,
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(33));

-- Location: FF_X67_Y24_N13
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

-- Location: LCCOMB_X67_Y24_N12
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[33]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[33]~7_combout\ = (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
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
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[33]~7_combout\);

-- Location: LCCOMB_X67_Y24_N6
\memaddress~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memaddress~6_combout\ = (!\DE10Reset~input_o\ & addressCounter(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DE10Reset~input_o\,
	datad => addressCounter(17),
	combout => \memaddress~6_combout\);

-- Location: LCCOMB_X67_Y24_N20
\memaddress[17]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- memaddress(17) = (GLOBAL(\estado_pres.e1~clkctrl_outclk\) & (memaddress(17))) # (!GLOBAL(\estado_pres.e1~clkctrl_outclk\) & ((\memaddress~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => memaddress(17),
	datac => \estado_pres.e1~clkctrl_outclk\,
	datad => \memaddress~6_combout\,
	combout => memaddress(17));

-- Location: LCCOMB_X67_Y24_N26
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[34]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[34]~feeder_combout\ = memaddress(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => memaddress(17),
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[34]~feeder_combout\);

-- Location: FF_X67_Y24_N27
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[34]~feeder_combout\,
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(34));

-- Location: FF_X67_Y24_N17
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

-- Location: LCCOMB_X67_Y24_N16
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[34]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[34]~6_combout\ = (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(34)))) # (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(34)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(34),
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(34),
	datad => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\,
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[34]~6_combout\);

-- Location: FF_X70_Y20_N5
\DRAM|new_sdram_controller_0|active_addr[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[34]~6_combout\,
	sload => VCC,
	ena => \DRAM|new_sdram_controller_0|active_addr[23]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|active_addr\(16));

-- Location: FF_X70_Y20_N25
\DRAM|new_sdram_controller_0|active_addr[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[33]~7_combout\,
	sload => VCC,
	ena => \DRAM|new_sdram_controller_0|active_addr[23]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|active_addr\(15));

-- Location: LCCOMB_X70_Y20_N24
\DRAM|new_sdram_controller_0|pending~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|pending~3_combout\ = (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[33]~7_combout\ & (\DRAM|new_sdram_controller_0|active_addr\(15) & 
-- (\DRAM|new_sdram_controller_0|active_addr\(16) $ (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[34]~6_combout\)))) # 
-- (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[33]~7_combout\ & (!\DRAM|new_sdram_controller_0|active_addr\(15) & (\DRAM|new_sdram_controller_0|active_addr\(16) $ 
-- (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[34]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[33]~7_combout\,
	datab => \DRAM|new_sdram_controller_0|active_addr\(16),
	datac => \DRAM|new_sdram_controller_0|active_addr\(15),
	datad => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[34]~6_combout\,
	combout => \DRAM|new_sdram_controller_0|pending~3_combout\);

-- Location: LCCOMB_X69_Y20_N18
\DRAM|new_sdram_controller_0|pending~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|pending~4_combout\ = (\DRAM|new_sdram_controller_0|pending~0_combout\ & (\DRAM|new_sdram_controller_0|pending~1_combout\ & (\DRAM|new_sdram_controller_0|pending~2_combout\ & \DRAM|new_sdram_controller_0|pending~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|pending~0_combout\,
	datab => \DRAM|new_sdram_controller_0|pending~1_combout\,
	datac => \DRAM|new_sdram_controller_0|pending~2_combout\,
	datad => \DRAM|new_sdram_controller_0|pending~3_combout\,
	combout => \DRAM|new_sdram_controller_0|pending~4_combout\);

-- Location: LCCOMB_X69_Y20_N10
\DRAM|new_sdram_controller_0|pending\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|pending~combout\ = (\DRAM|new_sdram_controller_0|pending~9_combout\ & (\DRAM|new_sdram_controller_0|pending~4_combout\ & ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(0)) # 
-- (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(0),
	datab => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(1),
	datac => \DRAM|new_sdram_controller_0|pending~9_combout\,
	datad => \DRAM|new_sdram_controller_0|pending~4_combout\,
	combout => \DRAM|new_sdram_controller_0|pending~combout\);

-- Location: LCCOMB_X72_Y20_N26
\DRAM|new_sdram_controller_0|m_count[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|m_count[0]~1_combout\ = (\DRAM|new_sdram_controller_0|m_state.000010000~q\ & ((!\DRAM|new_sdram_controller_0|pending~combout\) # (!\DRAM|new_sdram_controller_0|refresh_request~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DRAM|new_sdram_controller_0|refresh_request~q\,
	datac => \DRAM|new_sdram_controller_0|m_state.000010000~q\,
	datad => \DRAM|new_sdram_controller_0|pending~combout\,
	combout => \DRAM|new_sdram_controller_0|m_count[0]~1_combout\);

-- Location: LCCOMB_X69_Y20_N8
\DRAM|new_sdram_controller_0|pending~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|pending~10_combout\ = (\DRAM|new_sdram_controller_0|pending~9_combout\ & \DRAM|new_sdram_controller_0|pending~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DRAM|new_sdram_controller_0|pending~9_combout\,
	datad => \DRAM|new_sdram_controller_0|pending~4_combout\,
	combout => \DRAM|new_sdram_controller_0|pending~10_combout\);

-- Location: LCCOMB_X72_Y20_N14
\DRAM|new_sdram_controller_0|Selector29~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector29~1_combout\ = (\DRAM|new_sdram_controller_0|Selector29~0_combout\ & (((\DRAM|new_sdram_controller_0|m_state.000100000~q\ & \DRAM|new_sdram_controller_0|LessThan1~0_combout\)) # 
-- (!\DRAM|new_sdram_controller_0|pending~10_combout\))) # (!\DRAM|new_sdram_controller_0|Selector29~0_combout\ & (((\DRAM|new_sdram_controller_0|m_state.000100000~q\ & \DRAM|new_sdram_controller_0|LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|Selector29~0_combout\,
	datab => \DRAM|new_sdram_controller_0|pending~10_combout\,
	datac => \DRAM|new_sdram_controller_0|m_state.000100000~q\,
	datad => \DRAM|new_sdram_controller_0|LessThan1~0_combout\,
	combout => \DRAM|new_sdram_controller_0|Selector29~1_combout\);

-- Location: FF_X72_Y20_N15
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

-- Location: LCCOMB_X74_Y20_N2
\DRAM|new_sdram_controller_0|Selector36~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector36~0_combout\ = (\DRAM|new_sdram_controller_0|m_next.010000000~q\ & ((\DRAM|new_sdram_controller_0|m_state.000100000~q\) # ((\DRAM|new_sdram_controller_0|m_state.001000000~q\) # 
-- (\DRAM|new_sdram_controller_0|m_state.000000100~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_state.000100000~q\,
	datab => \DRAM|new_sdram_controller_0|m_next.010000000~q\,
	datac => \DRAM|new_sdram_controller_0|m_state.001000000~q\,
	datad => \DRAM|new_sdram_controller_0|m_state.000000100~q\,
	combout => \DRAM|new_sdram_controller_0|Selector36~0_combout\);

-- Location: LCCOMB_X72_Y20_N24
\DRAM|new_sdram_controller_0|Selector36~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector36~1_combout\ = (\DRAM|new_sdram_controller_0|Selector36~0_combout\) # ((\DRAM|new_sdram_controller_0|Selector25~4_combout\ & ((\DRAM|new_sdram_controller_0|m_next.010000000~q\) # 
-- (\DRAM|new_sdram_controller_0|refresh_request~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|Selector36~0_combout\,
	datab => \DRAM|new_sdram_controller_0|m_next.010000000~q\,
	datac => \DRAM|new_sdram_controller_0|Selector25~4_combout\,
	datad => \DRAM|new_sdram_controller_0|refresh_request~q\,
	combout => \DRAM|new_sdram_controller_0|Selector36~1_combout\);

-- Location: LCCOMB_X69_Y20_N26
\DRAM|new_sdram_controller_0|m_next~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|m_next~17_combout\ = (!\DRAM|new_sdram_controller_0|refresh_request~q\ & (((\DRAM|new_sdram_controller_0|pending~9_combout\ & \DRAM|new_sdram_controller_0|pending~4_combout\)) # 
-- (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|Equal1~0_combout\,
	datab => \DRAM|new_sdram_controller_0|refresh_request~q\,
	datac => \DRAM|new_sdram_controller_0|pending~9_combout\,
	datad => \DRAM|new_sdram_controller_0|pending~4_combout\,
	combout => \DRAM|new_sdram_controller_0|m_next~17_combout\);

-- Location: LCCOMB_X71_Y20_N28
\DRAM|new_sdram_controller_0|m_count[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|m_count[0]~0_combout\ = (\DRAM|new_sdram_controller_0|m_state.100000000~q\ & \DRAM|new_sdram_controller_0|m_next~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DRAM|new_sdram_controller_0|m_state.100000000~q\,
	datad => \DRAM|new_sdram_controller_0|m_next~17_combout\,
	combout => \DRAM|new_sdram_controller_0|m_count[0]~0_combout\);

-- Location: LCCOMB_X72_Y20_N2
\DRAM|new_sdram_controller_0|Selector36~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector36~2_combout\ = (\DRAM|new_sdram_controller_0|Selector36~1_combout\) # ((\DRAM|new_sdram_controller_0|m_next.010000000~q\ & ((\DRAM|new_sdram_controller_0|m_count[0]~1_combout\) # 
-- (\DRAM|new_sdram_controller_0|m_count[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_count[0]~1_combout\,
	datab => \DRAM|new_sdram_controller_0|Selector36~1_combout\,
	datac => \DRAM|new_sdram_controller_0|m_next.010000000~q\,
	datad => \DRAM|new_sdram_controller_0|m_count[0]~0_combout\,
	combout => \DRAM|new_sdram_controller_0|Selector36~2_combout\);

-- Location: FF_X72_Y20_N3
\DRAM|new_sdram_controller_0|m_next.010000000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|Selector36~2_combout\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|m_next.010000000~q\);

-- Location: LCCOMB_X75_Y20_N22
\DRAM|new_sdram_controller_0|Selector37~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector37~0_combout\ = (!\DRAM|new_sdram_controller_0|m_state.000000001~q\ & ((!\DRAM|new_sdram_controller_0|refresh_request~q\) # (!\DRAM|new_sdram_controller_0|init_done~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DRAM|new_sdram_controller_0|m_state.000000001~q\,
	datac => \DRAM|new_sdram_controller_0|init_done~q\,
	datad => \DRAM|new_sdram_controller_0|refresh_request~q\,
	combout => \DRAM|new_sdram_controller_0|Selector37~0_combout\);

-- Location: LCCOMB_X71_Y20_N6
\DRAM|new_sdram_controller_0|Selector30~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector30~2_combout\ = (!\DRAM|new_sdram_controller_0|m_count\(2) & (!\DRAM|new_sdram_controller_0|m_count\(1) & \DRAM|new_sdram_controller_0|m_state.000100000~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DRAM|new_sdram_controller_0|m_count\(2),
	datac => \DRAM|new_sdram_controller_0|m_count\(1),
	datad => \DRAM|new_sdram_controller_0|m_state.000100000~q\,
	combout => \DRAM|new_sdram_controller_0|Selector30~2_combout\);

-- Location: LCCOMB_X72_Y20_N20
\DRAM|new_sdram_controller_0|Selector25~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector25~5_combout\ = (\DRAM|new_sdram_controller_0|Selector25~4_combout\ & (!\DRAM|new_sdram_controller_0|refresh_request~q\ & 
-- ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(0)) # (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|Selector25~4_combout\,
	datab => \DRAM|new_sdram_controller_0|refresh_request~q\,
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(0),
	datad => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(1),
	combout => \DRAM|new_sdram_controller_0|Selector25~5_combout\);

-- Location: FF_X72_Y20_N21
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

-- Location: LCCOMB_X71_Y20_N0
\DRAM|new_sdram_controller_0|m_count[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|m_count[0]~2_combout\ = (\DRAM|new_sdram_controller_0|Selector30~2_combout\) # ((\DRAM|new_sdram_controller_0|m_state.000000010~q\) # ((\DRAM|new_sdram_controller_0|m_state.010000000~q\) # 
-- (!\DRAM|new_sdram_controller_0|WideOr9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|Selector30~2_combout\,
	datab => \DRAM|new_sdram_controller_0|m_state.000000010~q\,
	datac => \DRAM|new_sdram_controller_0|WideOr9~0_combout\,
	datad => \DRAM|new_sdram_controller_0|m_state.010000000~q\,
	combout => \DRAM|new_sdram_controller_0|m_count[0]~2_combout\);

-- Location: LCCOMB_X75_Y20_N30
\DRAM|new_sdram_controller_0|WideOr16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|WideOr16~0_combout\ = (\DRAM|new_sdram_controller_0|m_state.000010000~q\) # (\DRAM|new_sdram_controller_0|m_state.000000010~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_state.000010000~q\,
	datac => \DRAM|new_sdram_controller_0|m_state.000000010~q\,
	combout => \DRAM|new_sdram_controller_0|WideOr16~0_combout\);

-- Location: LCCOMB_X71_Y20_N2
\DRAM|new_sdram_controller_0|m_count[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|m_count[0]~7_combout\ = (\DRAM|new_sdram_controller_0|m_state.100000000~q\) # ((\DRAM|new_sdram_controller_0|m_count[0]~2_combout\ & ((!\DRAM|new_sdram_controller_0|WideOr16~0_combout\))) # 
-- (!\DRAM|new_sdram_controller_0|m_count[0]~2_combout\ & (!\DRAM|new_sdram_controller_0|m_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_count\(0),
	datab => \DRAM|new_sdram_controller_0|m_count[0]~2_combout\,
	datac => \DRAM|new_sdram_controller_0|m_state.100000000~q\,
	datad => \DRAM|new_sdram_controller_0|WideOr16~0_combout\,
	combout => \DRAM|new_sdram_controller_0|m_count[0]~7_combout\);

-- Location: LCCOMB_X71_Y20_N22
\DRAM|new_sdram_controller_0|m_count[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|m_count[0]~8_combout\ = (\DRAM|new_sdram_controller_0|m_count[0]~5_combout\ & (((\DRAM|new_sdram_controller_0|m_count\(0))))) # (!\DRAM|new_sdram_controller_0|m_count[0]~5_combout\ & 
-- ((\DRAM|new_sdram_controller_0|m_count[0]~1_combout\ & ((\DRAM|new_sdram_controller_0|m_count\(0)))) # (!\DRAM|new_sdram_controller_0|m_count[0]~1_combout\ & (\DRAM|new_sdram_controller_0|m_count[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_count[0]~5_combout\,
	datab => \DRAM|new_sdram_controller_0|m_count[0]~7_combout\,
	datac => \DRAM|new_sdram_controller_0|m_count\(0),
	datad => \DRAM|new_sdram_controller_0|m_count[0]~1_combout\,
	combout => \DRAM|new_sdram_controller_0|m_count[0]~8_combout\);

-- Location: FF_X71_Y20_N23
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

-- Location: LCCOMB_X71_Y20_N20
\DRAM|new_sdram_controller_0|Selector37~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector37~1_combout\ = (\DRAM|new_sdram_controller_0|m_count\(0) & (((\DRAM|new_sdram_controller_0|m_state.000000100~q\) # (\DRAM|new_sdram_controller_0|m_state.000100000~q\)))) # (!\DRAM|new_sdram_controller_0|m_count\(0) & 
-- (\DRAM|new_sdram_controller_0|m_count\(1) & ((\DRAM|new_sdram_controller_0|m_state.000000100~q\) # (\DRAM|new_sdram_controller_0|m_state.000100000~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_count\(0),
	datab => \DRAM|new_sdram_controller_0|m_count\(1),
	datac => \DRAM|new_sdram_controller_0|m_state.000000100~q\,
	datad => \DRAM|new_sdram_controller_0|m_state.000100000~q\,
	combout => \DRAM|new_sdram_controller_0|Selector37~1_combout\);

-- Location: LCCOMB_X71_Y20_N10
\DRAM|new_sdram_controller_0|Selector37~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector37~2_combout\ = (\DRAM|new_sdram_controller_0|Selector37~0_combout\) # ((\DRAM|new_sdram_controller_0|Selector37~1_combout\) # ((\DRAM|new_sdram_controller_0|m_state.001000000~q\) # 
-- (\DRAM|new_sdram_controller_0|m_count[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|Selector37~0_combout\,
	datab => \DRAM|new_sdram_controller_0|Selector37~1_combout\,
	datac => \DRAM|new_sdram_controller_0|m_state.001000000~q\,
	datad => \DRAM|new_sdram_controller_0|m_count[0]~0_combout\,
	combout => \DRAM|new_sdram_controller_0|Selector37~2_combout\);

-- Location: LCCOMB_X71_Y20_N18
\DRAM|new_sdram_controller_0|Selector37~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector37~3_combout\ = (\DRAM|new_sdram_controller_0|m_state.010000000~q\) # ((\DRAM|new_sdram_controller_0|m_count\(2) & ((\DRAM|new_sdram_controller_0|Selector37~2_combout\) # 
-- (\DRAM|new_sdram_controller_0|m_count[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|Selector37~2_combout\,
	datab => \DRAM|new_sdram_controller_0|m_state.010000000~q\,
	datac => \DRAM|new_sdram_controller_0|m_count\(2),
	datad => \DRAM|new_sdram_controller_0|m_count[0]~1_combout\,
	combout => \DRAM|new_sdram_controller_0|Selector37~3_combout\);

-- Location: FF_X71_Y20_N19
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

-- Location: LCCOMB_X71_Y20_N24
\DRAM|new_sdram_controller_0|Selector31~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector31~0_combout\ = (\DRAM|new_sdram_controller_0|m_next.010000000~q\ & (!\DRAM|new_sdram_controller_0|m_count\(1) & (\DRAM|new_sdram_controller_0|m_state.000000100~q\ & !\DRAM|new_sdram_controller_0|m_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_next.010000000~q\,
	datab => \DRAM|new_sdram_controller_0|m_count\(1),
	datac => \DRAM|new_sdram_controller_0|m_state.000000100~q\,
	datad => \DRAM|new_sdram_controller_0|m_count\(2),
	combout => \DRAM|new_sdram_controller_0|Selector31~0_combout\);

-- Location: FF_X71_Y20_N25
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

-- Location: LCCOMB_X75_Y20_N18
\DRAM|new_sdram_controller_0|Selector23~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector23~0_combout\ = (\DRAM|new_sdram_controller_0|ack_refresh_request~q\ & (((\DRAM|new_sdram_controller_0|m_state.000000001~q\)) # (!\DRAM|new_sdram_controller_0|init_done~q\))) # 
-- (!\DRAM|new_sdram_controller_0|ack_refresh_request~q\ & (((\DRAM|new_sdram_controller_0|m_state.010000000~q\ & \DRAM|new_sdram_controller_0|m_state.000000001~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|init_done~q\,
	datab => \DRAM|new_sdram_controller_0|m_state.010000000~q\,
	datac => \DRAM|new_sdram_controller_0|ack_refresh_request~q\,
	datad => \DRAM|new_sdram_controller_0|m_state.000000001~q\,
	combout => \DRAM|new_sdram_controller_0|Selector23~0_combout\);

-- Location: FF_X75_Y20_N19
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

-- Location: LCCOMB_X75_Y20_N24
\DRAM|new_sdram_controller_0|refresh_request~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|refresh_request~0_combout\ = (\DRAM|new_sdram_controller_0|init_done~q\ & (!\DRAM|new_sdram_controller_0|ack_refresh_request~q\ & ((\DRAM|new_sdram_controller_0|Equal0~4_combout\) # 
-- (\DRAM|new_sdram_controller_0|refresh_request~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|init_done~q\,
	datab => \DRAM|new_sdram_controller_0|Equal0~4_combout\,
	datac => \DRAM|new_sdram_controller_0|refresh_request~q\,
	datad => \DRAM|new_sdram_controller_0|ack_refresh_request~q\,
	combout => \DRAM|new_sdram_controller_0|refresh_request~0_combout\);

-- Location: FF_X75_Y20_N25
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

-- Location: LCCOMB_X74_Y20_N20
\DRAM|new_sdram_controller_0|Selector26~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector26~1_combout\ = ((\DRAM|new_sdram_controller_0|m_state.100000000~q\ & \DRAM|new_sdram_controller_0|refresh_request~q\)) # (!\DRAM|new_sdram_controller_0|WideOr8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DRAM|new_sdram_controller_0|m_state.100000000~q\,
	datac => \DRAM|new_sdram_controller_0|WideOr8~0_combout\,
	datad => \DRAM|new_sdram_controller_0|refresh_request~q\,
	combout => \DRAM|new_sdram_controller_0|Selector26~1_combout\);

-- Location: LCCOMB_X74_Y20_N18
\DRAM|new_sdram_controller_0|Selector26~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector26~0_combout\ = (\DRAM|new_sdram_controller_0|pending~combout\ & (\DRAM|new_sdram_controller_0|m_state.000010000~q\ & ((\DRAM|new_sdram_controller_0|m_state.000000100~q\) # 
-- (\DRAM|new_sdram_controller_0|refresh_request~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|pending~combout\,
	datab => \DRAM|new_sdram_controller_0|m_state.000000100~q\,
	datac => \DRAM|new_sdram_controller_0|m_state.000010000~q\,
	datad => \DRAM|new_sdram_controller_0|refresh_request~q\,
	combout => \DRAM|new_sdram_controller_0|Selector26~0_combout\);

-- Location: LCCOMB_X74_Y20_N16
\DRAM|new_sdram_controller_0|Selector26~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector26~2_combout\ = (\DRAM|new_sdram_controller_0|Selector26~1_combout\) # ((\DRAM|new_sdram_controller_0|Selector26~0_combout\) # ((\DRAM|new_sdram_controller_0|LessThan1~0_combout\ & 
-- \DRAM|new_sdram_controller_0|m_state.000000100~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|LessThan1~0_combout\,
	datab => \DRAM|new_sdram_controller_0|Selector26~1_combout\,
	datac => \DRAM|new_sdram_controller_0|m_state.000000100~q\,
	datad => \DRAM|new_sdram_controller_0|Selector26~0_combout\,
	combout => \DRAM|new_sdram_controller_0|Selector26~2_combout\);

-- Location: FF_X74_Y20_N17
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

-- Location: LCCOMB_X71_Y20_N26
\DRAM|new_sdram_controller_0|m_count[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|m_count[0]~4_combout\ = (\DRAM|new_sdram_controller_0|m_state.001000000~q\) # ((\DRAM|new_sdram_controller_0|m_state.000000100~q\ & (!\DRAM|new_sdram_controller_0|m_count\(1) & !\DRAM|new_sdram_controller_0|m_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_state.000000100~q\,
	datab => \DRAM|new_sdram_controller_0|m_count\(1),
	datac => \DRAM|new_sdram_controller_0|m_state.001000000~q\,
	datad => \DRAM|new_sdram_controller_0|m_count\(2),
	combout => \DRAM|new_sdram_controller_0|m_count[0]~4_combout\);

-- Location: LCCOMB_X71_Y20_N12
\DRAM|new_sdram_controller_0|m_count[0]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|m_count[0]~5_combout\ = (\DRAM|new_sdram_controller_0|m_count[0]~4_combout\) # ((\DRAM|new_sdram_controller_0|Selector37~0_combout\) # ((\DRAM|new_sdram_controller_0|m_state.100000000~q\ & 
-- \DRAM|new_sdram_controller_0|m_next~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_count[0]~4_combout\,
	datab => \DRAM|new_sdram_controller_0|m_state.100000000~q\,
	datac => \DRAM|new_sdram_controller_0|Selector37~0_combout\,
	datad => \DRAM|new_sdram_controller_0|m_next~17_combout\,
	combout => \DRAM|new_sdram_controller_0|m_count[0]~5_combout\);

-- Location: LCCOMB_X71_Y20_N30
\DRAM|new_sdram_controller_0|Add3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Add3~0_combout\ = \DRAM|new_sdram_controller_0|m_count\(1) $ (\DRAM|new_sdram_controller_0|m_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DRAM|new_sdram_controller_0|m_count\(1),
	datac => \DRAM|new_sdram_controller_0|m_count\(0),
	combout => \DRAM|new_sdram_controller_0|Add3~0_combout\);

-- Location: LCCOMB_X71_Y20_N16
\DRAM|new_sdram_controller_0|m_count[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|m_count[1]~3_combout\ = (!\DRAM|new_sdram_controller_0|m_state.100000000~q\ & ((\DRAM|new_sdram_controller_0|m_count[0]~2_combout\ & ((\DRAM|new_sdram_controller_0|WideOr16~0_combout\))) # 
-- (!\DRAM|new_sdram_controller_0|m_count[0]~2_combout\ & (!\DRAM|new_sdram_controller_0|Add3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|Add3~0_combout\,
	datab => \DRAM|new_sdram_controller_0|m_count[0]~2_combout\,
	datac => \DRAM|new_sdram_controller_0|m_state.100000000~q\,
	datad => \DRAM|new_sdram_controller_0|WideOr16~0_combout\,
	combout => \DRAM|new_sdram_controller_0|m_count[1]~3_combout\);

-- Location: LCCOMB_X71_Y20_N4
\DRAM|new_sdram_controller_0|m_count[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|m_count[1]~6_combout\ = (\DRAM|new_sdram_controller_0|m_count[0]~5_combout\ & (((\DRAM|new_sdram_controller_0|m_count\(1))))) # (!\DRAM|new_sdram_controller_0|m_count[0]~5_combout\ & 
-- ((\DRAM|new_sdram_controller_0|m_count[0]~1_combout\ & ((\DRAM|new_sdram_controller_0|m_count\(1)))) # (!\DRAM|new_sdram_controller_0|m_count[0]~1_combout\ & (\DRAM|new_sdram_controller_0|m_count[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_count[0]~5_combout\,
	datab => \DRAM|new_sdram_controller_0|m_count[1]~3_combout\,
	datac => \DRAM|new_sdram_controller_0|m_count\(1),
	datad => \DRAM|new_sdram_controller_0|m_count[0]~1_combout\,
	combout => \DRAM|new_sdram_controller_0|m_count[1]~6_combout\);

-- Location: FF_X71_Y20_N5
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

-- Location: LCCOMB_X71_Y20_N8
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

-- Location: LCCOMB_X74_Y20_N0
\DRAM|new_sdram_controller_0|Selector33~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector33~0_combout\ = (\DRAM|new_sdram_controller_0|m_state.000100000~q\) # ((\DRAM|new_sdram_controller_0|m_state.000000100~q\) # ((\DRAM|new_sdram_controller_0|m_state.000010000~q\) # 
-- (\DRAM|new_sdram_controller_0|m_state.100000000~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_state.000100000~q\,
	datab => \DRAM|new_sdram_controller_0|m_state.000000100~q\,
	datac => \DRAM|new_sdram_controller_0|m_state.000010000~q\,
	datad => \DRAM|new_sdram_controller_0|m_state.100000000~q\,
	combout => \DRAM|new_sdram_controller_0|Selector33~0_combout\);

-- Location: LCCOMB_X74_Y20_N6
\DRAM|new_sdram_controller_0|Selector33~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector33~1_combout\ = (\DRAM|new_sdram_controller_0|Selector33~0_combout\) # ((\DRAM|new_sdram_controller_0|m_state.001000000~q\) # ((!\DRAM|new_sdram_controller_0|m_state.000000001~q\ & 
-- !\DRAM|new_sdram_controller_0|refresh_request~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|Selector33~0_combout\,
	datab => \DRAM|new_sdram_controller_0|m_state.000000001~q\,
	datac => \DRAM|new_sdram_controller_0|m_state.001000000~q\,
	datad => \DRAM|new_sdram_controller_0|refresh_request~q\,
	combout => \DRAM|new_sdram_controller_0|Selector33~1_combout\);

-- Location: LCCOMB_X75_Y20_N20
\DRAM|new_sdram_controller_0|Selector34~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector34~0_combout\ = (\DRAM|new_sdram_controller_0|m_state.000000001~q\) # (\DRAM|new_sdram_controller_0|init_done~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DRAM|new_sdram_controller_0|m_state.000000001~q\,
	datac => \DRAM|new_sdram_controller_0|init_done~q\,
	combout => \DRAM|new_sdram_controller_0|Selector34~0_combout\);

-- Location: LCCOMB_X74_Y20_N14
\DRAM|new_sdram_controller_0|Selector35~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector35~1_combout\ = (\DRAM|new_sdram_controller_0|Selector34~0_combout\ & (((!\DRAM|new_sdram_controller_0|pending~combout\) # (!\DRAM|new_sdram_controller_0|refresh_request~q\)) # 
-- (!\DRAM|new_sdram_controller_0|m_state.000010000~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_state.000010000~q\,
	datab => \DRAM|new_sdram_controller_0|refresh_request~q\,
	datac => \DRAM|new_sdram_controller_0|Selector34~0_combout\,
	datad => \DRAM|new_sdram_controller_0|pending~combout\,
	combout => \DRAM|new_sdram_controller_0|Selector35~1_combout\);

-- Location: LCCOMB_X74_Y20_N24
\DRAM|new_sdram_controller_0|Selector35~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector35~0_combout\ = (!\DRAM|new_sdram_controller_0|m_state.010000000~q\ & ((\DRAM|new_sdram_controller_0|m_next~17_combout\) # (!\DRAM|new_sdram_controller_0|m_state.100000000~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DRAM|new_sdram_controller_0|m_state.010000000~q\,
	datac => \DRAM|new_sdram_controller_0|m_state.100000000~q\,
	datad => \DRAM|new_sdram_controller_0|m_next~17_combout\,
	combout => \DRAM|new_sdram_controller_0|Selector35~0_combout\);

-- Location: LCCOMB_X74_Y20_N4
\DRAM|new_sdram_controller_0|Selector33~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector33~2_combout\ = (\DRAM|new_sdram_controller_0|Selector35~1_combout\ & (\DRAM|new_sdram_controller_0|Selector35~0_combout\ & ((\DRAM|new_sdram_controller_0|m_next.000000001~q\) # 
-- (!\DRAM|new_sdram_controller_0|Selector33~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|Selector33~1_combout\,
	datab => \DRAM|new_sdram_controller_0|Selector35~1_combout\,
	datac => \DRAM|new_sdram_controller_0|m_next.000000001~q\,
	datad => \DRAM|new_sdram_controller_0|Selector35~0_combout\,
	combout => \DRAM|new_sdram_controller_0|Selector33~2_combout\);

-- Location: FF_X74_Y20_N5
\DRAM|new_sdram_controller_0|m_next.000000001\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|Selector33~2_combout\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|m_next.000000001~q\);

-- Location: LCCOMB_X74_Y20_N30
\DRAM|new_sdram_controller_0|Selector24~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector24~0_combout\ = (!\DRAM|new_sdram_controller_0|m_state.000000001~q\ & (((!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|Equal1~0_combout\ & 
-- !\DRAM|new_sdram_controller_0|refresh_request~q\)) # (!\DRAM|new_sdram_controller_0|init_done~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|init_done~q\,
	datab => \DRAM|new_sdram_controller_0|m_state.000000001~q\,
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|Equal1~0_combout\,
	datad => \DRAM|new_sdram_controller_0|refresh_request~q\,
	combout => \DRAM|new_sdram_controller_0|Selector24~0_combout\);

-- Location: LCCOMB_X74_Y20_N28
\DRAM|new_sdram_controller_0|Selector24~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector24~1_combout\ = (!\DRAM|new_sdram_controller_0|Selector24~0_combout\ & ((\DRAM|new_sdram_controller_0|LessThan1~0_combout\) # ((\DRAM|new_sdram_controller_0|m_next.000000001~q\) # 
-- (!\DRAM|new_sdram_controller_0|m_state.000000100~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|LessThan1~0_combout\,
	datab => \DRAM|new_sdram_controller_0|m_next.000000001~q\,
	datac => \DRAM|new_sdram_controller_0|Selector24~0_combout\,
	datad => \DRAM|new_sdram_controller_0|m_state.000000100~q\,
	combout => \DRAM|new_sdram_controller_0|Selector24~1_combout\);

-- Location: FF_X74_Y20_N29
\DRAM|new_sdram_controller_0|m_state.000000001\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|Selector24~1_combout\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|m_state.000000001~q\);

-- Location: LCCOMB_X75_Y20_N0
\DRAM|new_sdram_controller_0|Selector30~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector30~3_combout\ = (\DRAM|new_sdram_controller_0|Selector30~2_combout\) # ((\DRAM|new_sdram_controller_0|init_done~q\ & (!\DRAM|new_sdram_controller_0|m_state.000000001~q\ & 
-- \DRAM|new_sdram_controller_0|refresh_request~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|init_done~q\,
	datab => \DRAM|new_sdram_controller_0|m_state.000000001~q\,
	datac => \DRAM|new_sdram_controller_0|Selector30~2_combout\,
	datad => \DRAM|new_sdram_controller_0|refresh_request~q\,
	combout => \DRAM|new_sdram_controller_0|Selector30~3_combout\);

-- Location: FF_X75_Y20_N1
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

-- Location: LCCOMB_X75_Y20_N28
\DRAM|new_sdram_controller_0|WideOr8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|WideOr8~0_combout\ = (!\DRAM|new_sdram_controller_0|m_state.001000000~q\ & (!\DRAM|new_sdram_controller_0|m_state.000000010~q\ & !\DRAM|new_sdram_controller_0|m_state.010000000~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DRAM|new_sdram_controller_0|m_state.001000000~q\,
	datac => \DRAM|new_sdram_controller_0|m_state.000000010~q\,
	datad => \DRAM|new_sdram_controller_0|m_state.010000000~q\,
	combout => \DRAM|new_sdram_controller_0|WideOr8~0_combout\);

-- Location: LCCOMB_X72_Y20_N4
\DRAM|new_sdram_controller_0|Selector28~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector28~1_combout\ = (\DRAM|new_sdram_controller_0|m_state.100000000~q\ & ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(0)) # 
-- ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(1)) # (\DRAM|new_sdram_controller_0|refresh_request~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(0),
	datab => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(1),
	datac => \DRAM|new_sdram_controller_0|m_state.100000000~q\,
	datad => \DRAM|new_sdram_controller_0|refresh_request~q\,
	combout => \DRAM|new_sdram_controller_0|Selector28~1_combout\);

-- Location: LCCOMB_X72_Y20_N12
\DRAM|new_sdram_controller_0|Selector28~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector28~4_combout\ = (\DRAM|new_sdram_controller_0|WideOr8~0_combout\ & (!\DRAM|new_sdram_controller_0|Selector28~1_combout\ & !\DRAM|new_sdram_controller_0|refresh_request~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DRAM|new_sdram_controller_0|WideOr8~0_combout\,
	datac => \DRAM|new_sdram_controller_0|Selector28~1_combout\,
	datad => \DRAM|new_sdram_controller_0|refresh_request~q\,
	combout => \DRAM|new_sdram_controller_0|Selector28~4_combout\);

-- Location: LCCOMB_X74_Y20_N12
\DRAM|new_sdram_controller_0|Selector28~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector28~5_combout\ = (\DRAM|new_sdram_controller_0|Selector34~0_combout\ & (\DRAM|new_sdram_controller_0|m_state.000010000~q\ & ((\DRAM|new_sdram_controller_0|LessThan1~0_combout\) # 
-- (!\DRAM|new_sdram_controller_0|m_state.000000100~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|Selector34~0_combout\,
	datab => \DRAM|new_sdram_controller_0|LessThan1~0_combout\,
	datac => \DRAM|new_sdram_controller_0|m_state.000010000~q\,
	datad => \DRAM|new_sdram_controller_0|m_state.000000100~q\,
	combout => \DRAM|new_sdram_controller_0|Selector28~5_combout\);

-- Location: LCCOMB_X69_Y20_N4
\DRAM|new_sdram_controller_0|Selector28~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector28~3_combout\ = (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|Equal1~0_combout\ & (\DRAM|new_sdram_controller_0|pending~4_combout\ & 
-- (\DRAM|new_sdram_controller_0|pending~9_combout\ & \DRAM|new_sdram_controller_0|m_state.000000001~q\))) # (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|Equal1~0_combout\ & 
-- (((!\DRAM|new_sdram_controller_0|m_state.000000001~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|Equal1~0_combout\,
	datab => \DRAM|new_sdram_controller_0|pending~4_combout\,
	datac => \DRAM|new_sdram_controller_0|pending~9_combout\,
	datad => \DRAM|new_sdram_controller_0|m_state.000000001~q\,
	combout => \DRAM|new_sdram_controller_0|Selector28~3_combout\);

-- Location: LCCOMB_X75_Y20_N12
\DRAM|new_sdram_controller_0|Selector35~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector35~2_combout\ = (\DRAM|new_sdram_controller_0|m_next.000010000~q\ & (((\DRAM|new_sdram_controller_0|m_state.000000001~q\) # (!\DRAM|new_sdram_controller_0|init_done~q\)) # 
-- (!\DRAM|new_sdram_controller_0|refresh_request~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_next.000010000~q\,
	datab => \DRAM|new_sdram_controller_0|refresh_request~q\,
	datac => \DRAM|new_sdram_controller_0|init_done~q\,
	datad => \DRAM|new_sdram_controller_0|m_state.000000001~q\,
	combout => \DRAM|new_sdram_controller_0|Selector35~2_combout\);

-- Location: LCCOMB_X75_Y20_N10
\DRAM|new_sdram_controller_0|Selector35~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector35~3_combout\ = (\DRAM|new_sdram_controller_0|Selector35~0_combout\ & ((\DRAM|new_sdram_controller_0|m_state.000000010~q\) # ((\DRAM|new_sdram_controller_0|Selector35~2_combout\ & 
-- \DRAM|new_sdram_controller_0|Selector35~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|Selector35~2_combout\,
	datab => \DRAM|new_sdram_controller_0|Selector35~0_combout\,
	datac => \DRAM|new_sdram_controller_0|m_state.000000010~q\,
	datad => \DRAM|new_sdram_controller_0|Selector35~1_combout\,
	combout => \DRAM|new_sdram_controller_0|Selector35~3_combout\);

-- Location: FF_X75_Y20_N11
\DRAM|new_sdram_controller_0|m_next.000010000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|Selector35~3_combout\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|m_next.000010000~q\);

-- Location: LCCOMB_X71_Y20_N14
\DRAM|new_sdram_controller_0|Selector28~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector28~0_combout\ = (\DRAM|new_sdram_controller_0|m_state.000000100~q\ & (!\DRAM|new_sdram_controller_0|m_count\(2) & (!\DRAM|new_sdram_controller_0|m_count\(1) & \DRAM|new_sdram_controller_0|m_next.000010000~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_state.000000100~q\,
	datab => \DRAM|new_sdram_controller_0|m_count\(2),
	datac => \DRAM|new_sdram_controller_0|m_count\(1),
	datad => \DRAM|new_sdram_controller_0|m_next.000010000~q\,
	combout => \DRAM|new_sdram_controller_0|Selector28~0_combout\);

-- Location: LCCOMB_X72_Y20_N6
\DRAM|new_sdram_controller_0|Selector28~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector28~2_combout\ = (\DRAM|new_sdram_controller_0|Selector28~1_combout\ & (((\DRAM|new_sdram_controller_0|pending~10_combout\ & !\DRAM|new_sdram_controller_0|refresh_request~q\)))) # 
-- (!\DRAM|new_sdram_controller_0|Selector28~1_combout\ & (\DRAM|new_sdram_controller_0|Selector28~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|Selector28~0_combout\,
	datab => \DRAM|new_sdram_controller_0|Selector28~1_combout\,
	datac => \DRAM|new_sdram_controller_0|pending~10_combout\,
	datad => \DRAM|new_sdram_controller_0|refresh_request~q\,
	combout => \DRAM|new_sdram_controller_0|Selector28~2_combout\);

-- Location: LCCOMB_X72_Y20_N22
\DRAM|new_sdram_controller_0|Selector28~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector28~6_combout\ = (\DRAM|new_sdram_controller_0|Selector28~2_combout\) # ((\DRAM|new_sdram_controller_0|Selector28~4_combout\ & (\DRAM|new_sdram_controller_0|Selector28~5_combout\ & 
-- \DRAM|new_sdram_controller_0|Selector28~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|Selector28~4_combout\,
	datab => \DRAM|new_sdram_controller_0|Selector28~5_combout\,
	datac => \DRAM|new_sdram_controller_0|Selector28~3_combout\,
	datad => \DRAM|new_sdram_controller_0|Selector28~2_combout\,
	combout => \DRAM|new_sdram_controller_0|Selector28~6_combout\);

-- Location: FF_X72_Y20_N23
\DRAM|new_sdram_controller_0|m_state.000010000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|Selector28~6_combout\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|m_state.000010000~q\);

-- Location: LCCOMB_X72_Y20_N18
\DRAM|new_sdram_controller_0|Selector32~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector32~0_combout\ = (!\DRAM|new_sdram_controller_0|refresh_request~q\ & ((\DRAM|new_sdram_controller_0|m_state.000010000~q\) # 
-- ((!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(1) & !\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_state.000010000~q\,
	datab => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(1),
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(0),
	datad => \DRAM|new_sdram_controller_0|refresh_request~q\,
	combout => \DRAM|new_sdram_controller_0|Selector32~0_combout\);

-- Location: LCCOMB_X72_Y20_N8
\DRAM|new_sdram_controller_0|Selector32~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector32~1_combout\ = (\DRAM|new_sdram_controller_0|m_state.000010000~q\ & (((\DRAM|new_sdram_controller_0|Selector32~0_combout\ & \DRAM|new_sdram_controller_0|m_state.100000000~q\)) # 
-- (!\DRAM|new_sdram_controller_0|pending~combout\))) # (!\DRAM|new_sdram_controller_0|m_state.000010000~q\ & (\DRAM|new_sdram_controller_0|Selector32~0_combout\ & (\DRAM|new_sdram_controller_0|m_state.100000000~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_state.000010000~q\,
	datab => \DRAM|new_sdram_controller_0|Selector32~0_combout\,
	datac => \DRAM|new_sdram_controller_0|m_state.100000000~q\,
	datad => \DRAM|new_sdram_controller_0|pending~combout\,
	combout => \DRAM|new_sdram_controller_0|Selector32~1_combout\);

-- Location: FF_X72_Y20_N9
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

-- Location: LCCOMB_X72_Y20_N30
\DRAM|new_sdram_controller_0|Selector29~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector29~0_combout\ = (\DRAM|new_sdram_controller_0|m_state.100000000~q\ & (!\DRAM|new_sdram_controller_0|refresh_request~q\ & 
-- ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(0)) # (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(0),
	datab => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(1),
	datac => \DRAM|new_sdram_controller_0|m_state.100000000~q\,
	datad => \DRAM|new_sdram_controller_0|refresh_request~q\,
	combout => \DRAM|new_sdram_controller_0|Selector29~0_combout\);

-- Location: LCCOMB_X69_Y20_N20
\DRAM|new_sdram_controller_0|Selector41~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector41~0_combout\ = (!\DRAM|new_sdram_controller_0|refresh_request~q\ & (\DRAM|new_sdram_controller_0|m_state.000010000~q\ & \DRAM|new_sdram_controller_0|pending~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DRAM|new_sdram_controller_0|refresh_request~q\,
	datac => \DRAM|new_sdram_controller_0|m_state.000010000~q\,
	datad => \DRAM|new_sdram_controller_0|pending~combout\,
	combout => \DRAM|new_sdram_controller_0|Selector41~0_combout\);

-- Location: LCCOMB_X72_Y20_N10
\DRAM|new_sdram_controller_0|Selector41~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector41~1_combout\ = (\DRAM|new_sdram_controller_0|Selector41~0_combout\) # ((\DRAM|new_sdram_controller_0|Selector25~5_combout\) # ((\DRAM|new_sdram_controller_0|Selector29~0_combout\ & 
-- \DRAM|new_sdram_controller_0|pending~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|Selector29~0_combout\,
	datab => \DRAM|new_sdram_controller_0|pending~10_combout\,
	datac => \DRAM|new_sdram_controller_0|Selector41~0_combout\,
	datad => \DRAM|new_sdram_controller_0|Selector25~5_combout\,
	combout => \DRAM|new_sdram_controller_0|Selector41~1_combout\);

-- Location: FF_X72_Y20_N11
\DRAM|new_sdram_controller_0|f_pop\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|Selector41~1_combout\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|f_pop~q\);

-- Location: LCCOMB_X69_Y20_N12
\DRAM|new_sdram_controller_0|f_select\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|f_select~combout\ = (\DRAM|new_sdram_controller_0|f_pop~q\ & (\DRAM|new_sdram_controller_0|pending~4_combout\ & (\DRAM|new_sdram_controller_0|pending~9_combout\ & 
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|f_pop~q\,
	datab => \DRAM|new_sdram_controller_0|pending~4_combout\,
	datac => \DRAM|new_sdram_controller_0|pending~9_combout\,
	datad => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|Equal1~0_combout\,
	combout => \DRAM|new_sdram_controller_0|f_select~combout\);

-- Location: LCCOMB_X70_Y20_N16
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries[0]~1_combout\ = \DRAM|new_sdram_controller_0|f_select~combout\ $ 
-- (((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(0) & ((!\writerequest~combout\))) # (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(0) & 
-- (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(1) & \writerequest~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|f_select~combout\,
	datab => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(1),
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(0),
	datad => \writerequest~combout\,
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries[0]~1_combout\);

-- Location: FF_X70_Y20_N17
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

-- Location: LCCOMB_X69_Y20_N16
\estado_pres.e3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estado_pres.e3~0_combout\ = !\estado_pres.e1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \estado_pres.e1~q\,
	combout => \estado_pres.e3~0_combout\);

-- Location: FF_X69_Y20_N31
\estado_pres.e3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DE10CLK~input_o\,
	asdata => \estado_pres.e3~0_combout\,
	clrn => \ALT_INV_DE10Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_pres.e3~q\);

-- Location: LCCOMB_X69_Y20_N30
\Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\u1|modular_adc_0|control_internal|u_control_fsm|rsp_valid~q\ & (\estado_pres.e3~q\ & ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(0)) # 
-- (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_valid~q\,
	datab => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(0),
	datac => \estado_pres.e3~q\,
	datad => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entries\(1),
	combout => \Selector1~0_combout\);

-- Location: CLKCTRL_G5
\Selector1~0clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Selector1~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Selector1~0clkctrl_outclk\);

-- Location: LCCOMB_X70_Y24_N22
\dataIN[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- dataIN(0) = (GLOBAL(\Selector1~0clkctrl_outclk\) & ((\u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(0)))) # (!GLOBAL(\Selector1~0clkctrl_outclk\) & (dataIN(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dataIN(0),
	datac => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(0),
	datad => \Selector1~0clkctrl_outclk\,
	combout => dataIN(0));

-- Location: FF_X70_Y24_N23
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

-- Location: FF_X70_Y24_N17
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => dataIN(0),
	sload => VCC,
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(0));

-- Location: LCCOMB_X74_Y22_N14
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[0]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[0]~25_combout\ = (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(0))) # (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(0),
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\,
	datad => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(0),
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[0]~25_combout\);

-- Location: FF_X74_Y22_N15
\DRAM|new_sdram_controller_0|active_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[0]~25_combout\,
	ena => \DRAM|new_sdram_controller_0|active_addr[23]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|active_data\(0));

-- Location: FF_X74_Y22_N25
\DRAM|new_sdram_controller_0|m_data[0]~_Duplicate_1\ : dffeas
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
	q => \DRAM|new_sdram_controller_0|m_data[0]~_Duplicate_1_q\);

-- Location: LCCOMB_X74_Y22_N12
\DRAM|new_sdram_controller_0|Selector116~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector116~0_combout\ = (\DRAM|new_sdram_controller_0|m_state.000000010~q\ & (\DRAM|new_sdram_controller_0|active_data\(0))) # (!\DRAM|new_sdram_controller_0|m_state.000000010~q\ & 
-- ((\DRAM|new_sdram_controller_0|m_state.000010000~q\ & (\DRAM|new_sdram_controller_0|active_data\(0))) # (!\DRAM|new_sdram_controller_0|m_state.000010000~q\ & ((\DRAM|new_sdram_controller_0|m_data[0]~_Duplicate_1_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|active_data\(0),
	datab => \DRAM|new_sdram_controller_0|m_state.000000010~q\,
	datac => \DRAM|new_sdram_controller_0|m_state.000010000~q\,
	datad => \DRAM|new_sdram_controller_0|m_data[0]~_Duplicate_1_q\,
	combout => \DRAM|new_sdram_controller_0|Selector116~0_combout\);

-- Location: LCCOMB_X74_Y22_N24
\DRAM|new_sdram_controller_0|Selector116~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector116~1_combout\ = (\DRAM|new_sdram_controller_0|m_state.000010000~q\ & ((\DRAM|new_sdram_controller_0|f_select~combout\ & 
-- ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[0]~25_combout\))) # (!\DRAM|new_sdram_controller_0|f_select~combout\ & (\DRAM|new_sdram_controller_0|Selector116~0_combout\)))) # 
-- (!\DRAM|new_sdram_controller_0|m_state.000010000~q\ & (\DRAM|new_sdram_controller_0|Selector116~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|Selector116~0_combout\,
	datab => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[0]~25_combout\,
	datac => \DRAM|new_sdram_controller_0|m_state.000010000~q\,
	datad => \DRAM|new_sdram_controller_0|f_select~combout\,
	combout => \DRAM|new_sdram_controller_0|Selector116~1_combout\);

-- Location: DDIOOUTCELL_X78_Y16_N4
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

-- Location: LCCOMB_X69_Y20_N14
\DRAM|new_sdram_controller_0|always5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|always5~0_combout\ = ((\DRAM|new_sdram_controller_0|pending~4_combout\ & (\DRAM|new_sdram_controller_0|pending~9_combout\ & 
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|Equal1~0_combout\))) # (!\DRAM|new_sdram_controller_0|f_pop~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|f_pop~q\,
	datab => \DRAM|new_sdram_controller_0|pending~4_combout\,
	datac => \DRAM|new_sdram_controller_0|pending~9_combout\,
	datad => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|Equal1~0_combout\,
	combout => \DRAM|new_sdram_controller_0|always5~0_combout\);

-- Location: DDIOOECELL_X78_Y16_N5
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

-- Location: LCCOMB_X62_Y35_N22
\u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[1]~feeder_combout\ = \u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(1),
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[1]~feeder_combout\);

-- Location: FF_X62_Y35_N23
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
	ena => \u1|modular_adc_0|control_internal|u_control_fsm|load_dout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(1));

-- Location: LCCOMB_X70_Y27_N20
\u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~1_combout\ = (\u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\ & (\u1|modular_adc_0|control_internal|u_control_fsm|pend~q\ & 
-- \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\,
	datac => \u1|modular_adc_0|control_internal|u_control_fsm|pend~q\,
	datad => \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(1),
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~1_combout\);

-- Location: FF_X70_Y27_N21
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

-- Location: LCCOMB_X70_Y24_N14
\dataIN[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- dataIN(1) = (GLOBAL(\Selector1~0clkctrl_outclk\) & ((\u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(1)))) # (!GLOBAL(\Selector1~0clkctrl_outclk\) & (dataIN(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~0clkctrl_outclk\,
	datab => dataIN(1),
	datad => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(1),
	combout => dataIN(1));

-- Location: FF_X70_Y24_N29
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => dataIN(1),
	sload => VCC,
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(1));

-- Location: FF_X70_Y24_N15
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => dataIN(1),
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(1));

-- Location: LCCOMB_X74_Y22_N22
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[1]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[1]~26_combout\ = (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(1))) # (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\,
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(1),
	datad => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(1),
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[1]~26_combout\);

-- Location: FF_X74_Y22_N19
\DRAM|new_sdram_controller_0|m_data[1]~_Duplicate_1\ : dffeas
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
	q => \DRAM|new_sdram_controller_0|m_data[1]~_Duplicate_1_q\);

-- Location: FF_X74_Y22_N23
\DRAM|new_sdram_controller_0|active_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[1]~26_combout\,
	ena => \DRAM|new_sdram_controller_0|active_addr[23]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|active_data\(1));

-- Location: LCCOMB_X74_Y22_N8
\DRAM|new_sdram_controller_0|Selector115~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector115~0_combout\ = (\DRAM|new_sdram_controller_0|m_state.000000010~q\ & (((\DRAM|new_sdram_controller_0|active_data\(1))))) # (!\DRAM|new_sdram_controller_0|m_state.000000010~q\ & 
-- ((\DRAM|new_sdram_controller_0|m_state.000010000~q\ & ((\DRAM|new_sdram_controller_0|active_data\(1)))) # (!\DRAM|new_sdram_controller_0|m_state.000010000~q\ & (\DRAM|new_sdram_controller_0|m_data[1]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_state.000000010~q\,
	datab => \DRAM|new_sdram_controller_0|m_data[1]~_Duplicate_1_q\,
	datac => \DRAM|new_sdram_controller_0|m_state.000010000~q\,
	datad => \DRAM|new_sdram_controller_0|active_data\(1),
	combout => \DRAM|new_sdram_controller_0|Selector115~0_combout\);

-- Location: LCCOMB_X74_Y22_N18
\DRAM|new_sdram_controller_0|Selector115~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector115~1_combout\ = (\DRAM|new_sdram_controller_0|m_state.000010000~q\ & ((\DRAM|new_sdram_controller_0|f_select~combout\ & 
-- (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[1]~26_combout\)) # (!\DRAM|new_sdram_controller_0|f_select~combout\ & ((\DRAM|new_sdram_controller_0|Selector115~0_combout\))))) # 
-- (!\DRAM|new_sdram_controller_0|m_state.000010000~q\ & (((\DRAM|new_sdram_controller_0|Selector115~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[1]~26_combout\,
	datab => \DRAM|new_sdram_controller_0|Selector115~0_combout\,
	datac => \DRAM|new_sdram_controller_0|m_state.000010000~q\,
	datad => \DRAM|new_sdram_controller_0|f_select~combout\,
	combout => \DRAM|new_sdram_controller_0|Selector115~1_combout\);

-- Location: DDIOOUTCELL_X78_Y16_N11
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

-- Location: DDIOOECELL_X78_Y16_N12
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

-- Location: LCCOMB_X62_Y35_N10
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

-- Location: FF_X62_Y35_N11
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
	ena => \u1|modular_adc_0|control_internal|u_control_fsm|load_dout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(2));

-- Location: LCCOMB_X65_Y24_N4
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

-- Location: FF_X65_Y24_N5
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

-- Location: LCCOMB_X69_Y24_N24
\dataIN[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- dataIN(2) = (GLOBAL(\Selector1~0clkctrl_outclk\) & ((\u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(2)))) # (!GLOBAL(\Selector1~0clkctrl_outclk\) & (dataIN(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dataIN(2),
	datac => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(2),
	datad => \Selector1~0clkctrl_outclk\,
	combout => dataIN(2));

-- Location: LCCOMB_X69_Y24_N22
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

-- Location: FF_X69_Y24_N23
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[2]~feeder_combout\,
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(2));

-- Location: FF_X69_Y24_N25
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => dataIN(2),
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(2));

-- Location: LCCOMB_X74_Y22_N10
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[2]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[2]~27_combout\ = (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(2)))) # (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(2),
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\,
	datad => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(2),
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[2]~27_combout\);

-- Location: FF_X74_Y22_N11
\DRAM|new_sdram_controller_0|active_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[2]~27_combout\,
	ena => \DRAM|new_sdram_controller_0|active_addr[23]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|active_data\(2));

-- Location: FF_X74_Y22_N17
\DRAM|new_sdram_controller_0|m_data[2]~_Duplicate_1\ : dffeas
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
	q => \DRAM|new_sdram_controller_0|m_data[2]~_Duplicate_1_q\);

-- Location: LCCOMB_X74_Y22_N0
\DRAM|new_sdram_controller_0|Selector114~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector114~0_combout\ = (\DRAM|new_sdram_controller_0|m_state.000010000~q\ & (\DRAM|new_sdram_controller_0|active_data\(2))) # (!\DRAM|new_sdram_controller_0|m_state.000010000~q\ & 
-- ((\DRAM|new_sdram_controller_0|m_state.000000010~q\ & (\DRAM|new_sdram_controller_0|active_data\(2))) # (!\DRAM|new_sdram_controller_0|m_state.000000010~q\ & ((\DRAM|new_sdram_controller_0|m_data[2]~_Duplicate_1_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|active_data\(2),
	datab => \DRAM|new_sdram_controller_0|m_state.000010000~q\,
	datac => \DRAM|new_sdram_controller_0|m_state.000000010~q\,
	datad => \DRAM|new_sdram_controller_0|m_data[2]~_Duplicate_1_q\,
	combout => \DRAM|new_sdram_controller_0|Selector114~0_combout\);

-- Location: LCCOMB_X74_Y22_N16
\DRAM|new_sdram_controller_0|Selector114~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector114~1_combout\ = (\DRAM|new_sdram_controller_0|m_state.000010000~q\ & ((\DRAM|new_sdram_controller_0|f_select~combout\ & 
-- ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[2]~27_combout\))) # (!\DRAM|new_sdram_controller_0|f_select~combout\ & (\DRAM|new_sdram_controller_0|Selector114~0_combout\)))) # 
-- (!\DRAM|new_sdram_controller_0|m_state.000010000~q\ & (\DRAM|new_sdram_controller_0|Selector114~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|Selector114~0_combout\,
	datab => \DRAM|new_sdram_controller_0|m_state.000010000~q\,
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[2]~27_combout\,
	datad => \DRAM|new_sdram_controller_0|f_select~combout\,
	combout => \DRAM|new_sdram_controller_0|Selector114~1_combout\);

-- Location: DDIOOUTCELL_X78_Y3_N4
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

-- Location: DDIOOECELL_X78_Y3_N5
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

-- Location: LCCOMB_X62_Y35_N16
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

-- Location: FF_X62_Y35_N17
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

-- Location: LCCOMB_X65_Y24_N22
\u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~3_combout\ = (\u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\ & (\u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(3) & 
-- \u1|modular_adc_0|control_internal|u_control_fsm|pend~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\,
	datac => \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(3),
	datad => \u1|modular_adc_0|control_internal|u_control_fsm|pend~q\,
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~3_combout\);

-- Location: FF_X65_Y24_N23
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

-- Location: LCCOMB_X69_Y24_N28
\dataIN[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- dataIN(3) = (GLOBAL(\Selector1~0clkctrl_outclk\) & (\u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(3))) # (!GLOBAL(\Selector1~0clkctrl_outclk\) & ((dataIN(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(3),
	datab => dataIN(3),
	datad => \Selector1~0clkctrl_outclk\,
	combout => dataIN(3));

-- Location: FF_X69_Y24_N29
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

-- Location: LCCOMB_X69_Y24_N6
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

-- Location: FF_X69_Y24_N7
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[3]~feeder_combout\,
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(3));

-- Location: LCCOMB_X74_Y22_N26
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[3]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[3]~28_combout\ = (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(3))) # (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\,
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(3),
	datad => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(3),
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[3]~28_combout\);

-- Location: FF_X74_Y22_N3
\DRAM|new_sdram_controller_0|m_data[3]~_Duplicate_1\ : dffeas
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
	q => \DRAM|new_sdram_controller_0|m_data[3]~_Duplicate_1_q\);

-- Location: FF_X74_Y22_N27
\DRAM|new_sdram_controller_0|active_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[3]~28_combout\,
	ena => \DRAM|new_sdram_controller_0|active_addr[23]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|active_data\(3));

-- Location: LCCOMB_X74_Y22_N20
\DRAM|new_sdram_controller_0|Selector113~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector113~0_combout\ = (\DRAM|new_sdram_controller_0|m_state.000000010~q\ & (((\DRAM|new_sdram_controller_0|active_data\(3))))) # (!\DRAM|new_sdram_controller_0|m_state.000000010~q\ & 
-- ((\DRAM|new_sdram_controller_0|m_state.000010000~q\ & ((\DRAM|new_sdram_controller_0|active_data\(3)))) # (!\DRAM|new_sdram_controller_0|m_state.000010000~q\ & (\DRAM|new_sdram_controller_0|m_data[3]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_state.000000010~q\,
	datab => \DRAM|new_sdram_controller_0|m_data[3]~_Duplicate_1_q\,
	datac => \DRAM|new_sdram_controller_0|m_state.000010000~q\,
	datad => \DRAM|new_sdram_controller_0|active_data\(3),
	combout => \DRAM|new_sdram_controller_0|Selector113~0_combout\);

-- Location: LCCOMB_X74_Y22_N2
\DRAM|new_sdram_controller_0|Selector113~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector113~1_combout\ = (\DRAM|new_sdram_controller_0|m_state.000010000~q\ & ((\DRAM|new_sdram_controller_0|f_select~combout\ & 
-- (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[3]~28_combout\)) # (!\DRAM|new_sdram_controller_0|f_select~combout\ & ((\DRAM|new_sdram_controller_0|Selector113~0_combout\))))) # 
-- (!\DRAM|new_sdram_controller_0|m_state.000010000~q\ & (((\DRAM|new_sdram_controller_0|Selector113~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[3]~28_combout\,
	datab => \DRAM|new_sdram_controller_0|Selector113~0_combout\,
	datac => \DRAM|new_sdram_controller_0|m_state.000010000~q\,
	datad => \DRAM|new_sdram_controller_0|f_select~combout\,
	combout => \DRAM|new_sdram_controller_0|Selector113~1_combout\);

-- Location: DDIOOUTCELL_X78_Y3_N11
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

-- Location: DDIOOECELL_X78_Y3_N12
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

-- Location: LCCOMB_X62_Y35_N28
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

-- Location: FF_X62_Y35_N29
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
	ena => \u1|modular_adc_0|control_internal|u_control_fsm|load_dout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(4));

-- Location: LCCOMB_X70_Y27_N18
\u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~4_combout\ = (\u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(4) & (\u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\ & 
-- \u1|modular_adc_0|control_internal|u_control_fsm|pend~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(4),
	datab => \u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\,
	datac => \u1|modular_adc_0|control_internal|u_control_fsm|pend~q\,
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~4_combout\);

-- Location: FF_X70_Y27_N19
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

-- Location: LCCOMB_X71_Y24_N2
\dataIN[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- dataIN(4) = (GLOBAL(\Selector1~0clkctrl_outclk\) & ((\u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(4)))) # (!GLOBAL(\Selector1~0clkctrl_outclk\) & (dataIN(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~0clkctrl_outclk\,
	datab => dataIN(4),
	datad => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(4),
	combout => dataIN(4));

-- Location: FF_X71_Y24_N3
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => dataIN(4),
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(4));

-- Location: LCCOMB_X71_Y24_N8
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[4]~feeder_combout\ = dataIN(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => dataIN(4),
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[4]~feeder_combout\);

-- Location: FF_X71_Y24_N9
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[4]~feeder_combout\,
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(4));

-- Location: LCCOMB_X74_Y22_N30
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[4]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[4]~29_combout\ = (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(4)))) # (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(4),
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\,
	datad => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(4),
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[4]~29_combout\);

-- Location: FF_X74_Y22_N31
\DRAM|new_sdram_controller_0|active_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[4]~29_combout\,
	ena => \DRAM|new_sdram_controller_0|active_addr[23]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|active_data\(4));

-- Location: FF_X74_Y22_N29
\DRAM|new_sdram_controller_0|m_data[4]~_Duplicate_1\ : dffeas
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
	q => \DRAM|new_sdram_controller_0|m_data[4]~_Duplicate_1_q\);

-- Location: LCCOMB_X74_Y22_N4
\DRAM|new_sdram_controller_0|Selector112~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector112~0_combout\ = (\DRAM|new_sdram_controller_0|m_state.000000010~q\ & (\DRAM|new_sdram_controller_0|active_data\(4))) # (!\DRAM|new_sdram_controller_0|m_state.000000010~q\ & 
-- ((\DRAM|new_sdram_controller_0|m_state.000010000~q\ & (\DRAM|new_sdram_controller_0|active_data\(4))) # (!\DRAM|new_sdram_controller_0|m_state.000010000~q\ & ((\DRAM|new_sdram_controller_0|m_data[4]~_Duplicate_1_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_state.000000010~q\,
	datab => \DRAM|new_sdram_controller_0|active_data\(4),
	datac => \DRAM|new_sdram_controller_0|m_state.000010000~q\,
	datad => \DRAM|new_sdram_controller_0|m_data[4]~_Duplicate_1_q\,
	combout => \DRAM|new_sdram_controller_0|Selector112~0_combout\);

-- Location: LCCOMB_X74_Y22_N28
\DRAM|new_sdram_controller_0|Selector112~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector112~1_combout\ = (\DRAM|new_sdram_controller_0|m_state.000010000~q\ & ((\DRAM|new_sdram_controller_0|f_select~combout\ & 
-- (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[4]~29_combout\)) # (!\DRAM|new_sdram_controller_0|f_select~combout\ & ((\DRAM|new_sdram_controller_0|Selector112~0_combout\))))) # 
-- (!\DRAM|new_sdram_controller_0|m_state.000010000~q\ & (((\DRAM|new_sdram_controller_0|Selector112~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[4]~29_combout\,
	datab => \DRAM|new_sdram_controller_0|Selector112~0_combout\,
	datac => \DRAM|new_sdram_controller_0|m_state.000010000~q\,
	datad => \DRAM|new_sdram_controller_0|f_select~combout\,
	combout => \DRAM|new_sdram_controller_0|Selector112~1_combout\);

-- Location: DDIOOUTCELL_X78_Y15_N11
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

-- Location: DDIOOECELL_X78_Y15_N12
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

-- Location: LCCOMB_X62_Y35_N30
\u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[5]~feeder_combout\ = \u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(5),
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[5]~feeder_combout\);

-- Location: FF_X62_Y35_N31
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
	ena => \u1|modular_adc_0|control_internal|u_control_fsm|load_dout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(5));

-- Location: LCCOMB_X70_Y27_N8
\u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~5_combout\ = (\u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\ & (\u1|modular_adc_0|control_internal|u_control_fsm|pend~q\ & 
-- \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\,
	datac => \u1|modular_adc_0|control_internal|u_control_fsm|pend~q\,
	datad => \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(5),
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~5_combout\);

-- Location: FF_X70_Y27_N9
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

-- Location: LCCOMB_X71_Y24_N6
\dataIN[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- dataIN(5) = (GLOBAL(\Selector1~0clkctrl_outclk\) & ((\u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(5)))) # (!GLOBAL(\Selector1~0clkctrl_outclk\) & (dataIN(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dataIN(5),
	datac => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(5),
	datad => \Selector1~0clkctrl_outclk\,
	combout => dataIN(5));

-- Location: FF_X71_Y24_N7
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => dataIN(5),
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(5));

-- Location: LCCOMB_X71_Y24_N4
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[5]~feeder_combout\ = dataIN(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => dataIN(5),
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[5]~feeder_combout\);

-- Location: FF_X71_Y24_N5
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[5]~feeder_combout\,
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(5));

-- Location: LCCOMB_X75_Y24_N24
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[5]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[5]~30_combout\ = (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(5)))) # (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(5),
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(5),
	datad => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\,
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[5]~30_combout\);

-- Location: FF_X75_Y24_N31
\DRAM|new_sdram_controller_0|m_data[5]~_Duplicate_1\ : dffeas
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
	q => \DRAM|new_sdram_controller_0|m_data[5]~_Duplicate_1_q\);

-- Location: FF_X75_Y24_N25
\DRAM|new_sdram_controller_0|active_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[5]~30_combout\,
	ena => \DRAM|new_sdram_controller_0|active_addr[23]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|active_data\(5));

-- Location: LCCOMB_X75_Y24_N18
\DRAM|new_sdram_controller_0|Selector111~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector111~0_combout\ = (\DRAM|new_sdram_controller_0|m_state.000000010~q\ & (((\DRAM|new_sdram_controller_0|active_data\(5))))) # (!\DRAM|new_sdram_controller_0|m_state.000000010~q\ & 
-- ((\DRAM|new_sdram_controller_0|m_state.000010000~q\ & ((\DRAM|new_sdram_controller_0|active_data\(5)))) # (!\DRAM|new_sdram_controller_0|m_state.000010000~q\ & (\DRAM|new_sdram_controller_0|m_data[5]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_data[5]~_Duplicate_1_q\,
	datab => \DRAM|new_sdram_controller_0|m_state.000000010~q\,
	datac => \DRAM|new_sdram_controller_0|m_state.000010000~q\,
	datad => \DRAM|new_sdram_controller_0|active_data\(5),
	combout => \DRAM|new_sdram_controller_0|Selector111~0_combout\);

-- Location: LCCOMB_X75_Y24_N30
\DRAM|new_sdram_controller_0|Selector111~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector111~1_combout\ = (\DRAM|new_sdram_controller_0|m_state.000010000~q\ & ((\DRAM|new_sdram_controller_0|f_select~combout\ & 
-- (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[5]~30_combout\)) # (!\DRAM|new_sdram_controller_0|f_select~combout\ & ((\DRAM|new_sdram_controller_0|Selector111~0_combout\))))) # 
-- (!\DRAM|new_sdram_controller_0|m_state.000010000~q\ & (((\DRAM|new_sdram_controller_0|Selector111~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[5]~30_combout\,
	datab => \DRAM|new_sdram_controller_0|Selector111~0_combout\,
	datac => \DRAM|new_sdram_controller_0|m_state.000010000~q\,
	datad => \DRAM|new_sdram_controller_0|f_select~combout\,
	combout => \DRAM|new_sdram_controller_0|Selector111~1_combout\);

-- Location: DDIOOUTCELL_X78_Y15_N4
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

-- Location: DDIOOECELL_X78_Y15_N5
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

-- Location: LCCOMB_X62_Y35_N2
\u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[6]~feeder_combout\ = \u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(6),
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[6]~feeder_combout\);

-- Location: FF_X62_Y35_N3
\u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	d => \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[6]~feeder_combout\,
	clrn => \u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	ena => \u1|modular_adc_0|control_internal|u_control_fsm|load_dout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(6));

-- Location: LCCOMB_X70_Y27_N10
\u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~6_combout\ = (\u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\ & (\u1|modular_adc_0|control_internal|u_control_fsm|pend~q\ & 
-- \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\,
	datac => \u1|modular_adc_0|control_internal|u_control_fsm|pend~q\,
	datad => \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(6),
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~6_combout\);

-- Location: FF_X70_Y27_N11
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

-- Location: LCCOMB_X71_Y24_N28
\dataIN[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- dataIN(6) = (GLOBAL(\Selector1~0clkctrl_outclk\) & ((\u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(6)))) # (!GLOBAL(\Selector1~0clkctrl_outclk\) & (dataIN(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~0clkctrl_outclk\,
	datac => dataIN(6),
	datad => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(6),
	combout => dataIN(6));

-- Location: FF_X71_Y24_N29
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => dataIN(6),
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(6));

-- Location: LCCOMB_X71_Y24_N14
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

-- Location: FF_X71_Y24_N15
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[6]~feeder_combout\,
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(6));

-- Location: LCCOMB_X75_Y24_N12
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[6]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[6]~31_combout\ = (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(6))) # (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\,
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(6),
	datad => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(6),
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[6]~31_combout\);

-- Location: FF_X75_Y24_N13
\DRAM|new_sdram_controller_0|active_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[6]~31_combout\,
	ena => \DRAM|new_sdram_controller_0|active_addr[23]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|active_data\(6));

-- Location: FF_X75_Y24_N29
\DRAM|new_sdram_controller_0|m_data[6]~_Duplicate_1\ : dffeas
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
	q => \DRAM|new_sdram_controller_0|m_data[6]~_Duplicate_1_q\);

-- Location: LCCOMB_X75_Y24_N26
\DRAM|new_sdram_controller_0|Selector110~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector110~0_combout\ = (\DRAM|new_sdram_controller_0|m_state.000010000~q\ & (\DRAM|new_sdram_controller_0|active_data\(6))) # (!\DRAM|new_sdram_controller_0|m_state.000010000~q\ & 
-- ((\DRAM|new_sdram_controller_0|m_state.000000010~q\ & (\DRAM|new_sdram_controller_0|active_data\(6))) # (!\DRAM|new_sdram_controller_0|m_state.000000010~q\ & ((\DRAM|new_sdram_controller_0|m_data[6]~_Duplicate_1_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|active_data\(6),
	datab => \DRAM|new_sdram_controller_0|m_state.000010000~q\,
	datac => \DRAM|new_sdram_controller_0|m_state.000000010~q\,
	datad => \DRAM|new_sdram_controller_0|m_data[6]~_Duplicate_1_q\,
	combout => \DRAM|new_sdram_controller_0|Selector110~0_combout\);

-- Location: LCCOMB_X75_Y24_N28
\DRAM|new_sdram_controller_0|Selector110~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector110~1_combout\ = (\DRAM|new_sdram_controller_0|m_state.000010000~q\ & ((\DRAM|new_sdram_controller_0|f_select~combout\ & 
-- ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[6]~31_combout\))) # (!\DRAM|new_sdram_controller_0|f_select~combout\ & (\DRAM|new_sdram_controller_0|Selector110~0_combout\)))) # 
-- (!\DRAM|new_sdram_controller_0|m_state.000010000~q\ & (\DRAM|new_sdram_controller_0|Selector110~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|Selector110~0_combout\,
	datab => \DRAM|new_sdram_controller_0|m_state.000010000~q\,
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[6]~31_combout\,
	datad => \DRAM|new_sdram_controller_0|f_select~combout\,
	combout => \DRAM|new_sdram_controller_0|Selector110~1_combout\);

-- Location: DDIOOUTCELL_X78_Y16_N18
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

-- Location: DDIOOECELL_X78_Y16_N19
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

-- Location: LCCOMB_X62_Y35_N12
\u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[7]~feeder_combout\ = \u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(7),
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[7]~feeder_combout\);

-- Location: FF_X62_Y35_N13
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

-- Location: LCCOMB_X70_Y27_N12
\u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~7_combout\ = (\u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\ & (\u1|modular_adc_0|control_internal|u_control_fsm|pend~q\ & 
-- \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\,
	datac => \u1|modular_adc_0|control_internal|u_control_fsm|pend~q\,
	datad => \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(7),
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~7_combout\);

-- Location: FF_X70_Y27_N13
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

-- Location: LCCOMB_X71_Y24_N16
\dataIN[7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- dataIN(7) = (GLOBAL(\Selector1~0clkctrl_outclk\) & ((\u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(7)))) # (!GLOBAL(\Selector1~0clkctrl_outclk\) & (dataIN(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~0clkctrl_outclk\,
	datab => dataIN(7),
	datad => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(7),
	combout => dataIN(7));

-- Location: FF_X71_Y24_N17
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => dataIN(7),
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(7));

-- Location: LCCOMB_X71_Y24_N26
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

-- Location: FF_X71_Y24_N27
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[7]~feeder_combout\,
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(7));

-- Location: LCCOMB_X71_Y21_N22
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[7]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[7]~32_combout\ = (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(7))) # (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(7),
	datab => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(7),
	datad => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\,
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[7]~32_combout\);

-- Location: FF_X71_Y21_N15
\DRAM|new_sdram_controller_0|m_data[7]~_Duplicate_1\ : dffeas
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
	q => \DRAM|new_sdram_controller_0|m_data[7]~_Duplicate_1_q\);

-- Location: FF_X71_Y21_N23
\DRAM|new_sdram_controller_0|active_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[7]~32_combout\,
	ena => \DRAM|new_sdram_controller_0|active_addr[23]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|active_data\(7));

-- Location: LCCOMB_X71_Y21_N4
\DRAM|new_sdram_controller_0|Selector109~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector109~0_combout\ = (\DRAM|new_sdram_controller_0|m_state.000000010~q\ & (((\DRAM|new_sdram_controller_0|active_data\(7))))) # (!\DRAM|new_sdram_controller_0|m_state.000000010~q\ & 
-- ((\DRAM|new_sdram_controller_0|m_state.000010000~q\ & ((\DRAM|new_sdram_controller_0|active_data\(7)))) # (!\DRAM|new_sdram_controller_0|m_state.000010000~q\ & (\DRAM|new_sdram_controller_0|m_data[7]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_state.000000010~q\,
	datab => \DRAM|new_sdram_controller_0|m_state.000010000~q\,
	datac => \DRAM|new_sdram_controller_0|m_data[7]~_Duplicate_1_q\,
	datad => \DRAM|new_sdram_controller_0|active_data\(7),
	combout => \DRAM|new_sdram_controller_0|Selector109~0_combout\);

-- Location: LCCOMB_X71_Y21_N14
\DRAM|new_sdram_controller_0|Selector109~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector109~1_combout\ = (\DRAM|new_sdram_controller_0|m_state.000010000~q\ & ((\DRAM|new_sdram_controller_0|f_select~combout\ & 
-- (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[7]~32_combout\)) # (!\DRAM|new_sdram_controller_0|f_select~combout\ & ((\DRAM|new_sdram_controller_0|Selector109~0_combout\))))) # 
-- (!\DRAM|new_sdram_controller_0|m_state.000010000~q\ & (((\DRAM|new_sdram_controller_0|Selector109~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[7]~32_combout\,
	datab => \DRAM|new_sdram_controller_0|m_state.000010000~q\,
	datac => \DRAM|new_sdram_controller_0|Selector109~0_combout\,
	datad => \DRAM|new_sdram_controller_0|f_select~combout\,
	combout => \DRAM|new_sdram_controller_0|Selector109~1_combout\);

-- Location: DDIOOUTCELL_X78_Y17_N11
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

-- Location: DDIOOECELL_X78_Y17_N12
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

-- Location: FF_X71_Y21_N21
\DRAM|new_sdram_controller_0|m_data[8]~_Duplicate_1\ : dffeas
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
	q => \DRAM|new_sdram_controller_0|m_data[8]~_Duplicate_1_q\);

-- Location: FF_X62_Y35_N1
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

-- Location: LCCOMB_X70_Y27_N30
\u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~8_combout\ = (\u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\ & (\u1|modular_adc_0|control_internal|u_control_fsm|pend~q\ & 
-- \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\,
	datac => \u1|modular_adc_0|control_internal|u_control_fsm|pend~q\,
	datad => \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(8),
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~8_combout\);

-- Location: FF_X70_Y27_N31
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

-- Location: LCCOMB_X71_Y24_N18
\dataIN[8]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- dataIN(8) = (GLOBAL(\Selector1~0clkctrl_outclk\) & ((\u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(8)))) # (!GLOBAL(\Selector1~0clkctrl_outclk\) & (dataIN(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~0clkctrl_outclk\,
	datab => dataIN(8),
	datad => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(8),
	combout => dataIN(8));

-- Location: LCCOMB_X71_Y24_N0
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[8]~feeder_combout\ = dataIN(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => dataIN(8),
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[8]~feeder_combout\);

-- Location: FF_X71_Y24_N1
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[8]~feeder_combout\,
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(8));

-- Location: FF_X71_Y24_N19
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => dataIN(8),
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(8));

-- Location: LCCOMB_X71_Y21_N6
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[8]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[8]~33_combout\ = (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(8))) # (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(8),
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(8),
	datad => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\,
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[8]~33_combout\);

-- Location: FF_X71_Y21_N7
\DRAM|new_sdram_controller_0|active_data[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[8]~33_combout\,
	ena => \DRAM|new_sdram_controller_0|active_addr[23]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|active_data\(8));

-- Location: LCCOMB_X71_Y21_N8
\DRAM|new_sdram_controller_0|Selector108~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector108~0_combout\ = (\DRAM|new_sdram_controller_0|m_state.000000010~q\ & (((\DRAM|new_sdram_controller_0|active_data\(8))))) # (!\DRAM|new_sdram_controller_0|m_state.000000010~q\ & 
-- ((\DRAM|new_sdram_controller_0|m_state.000010000~q\ & ((\DRAM|new_sdram_controller_0|active_data\(8)))) # (!\DRAM|new_sdram_controller_0|m_state.000010000~q\ & (\DRAM|new_sdram_controller_0|m_data[8]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_state.000000010~q\,
	datab => \DRAM|new_sdram_controller_0|m_data[8]~_Duplicate_1_q\,
	datac => \DRAM|new_sdram_controller_0|m_state.000010000~q\,
	datad => \DRAM|new_sdram_controller_0|active_data\(8),
	combout => \DRAM|new_sdram_controller_0|Selector108~0_combout\);

-- Location: LCCOMB_X71_Y21_N20
\DRAM|new_sdram_controller_0|Selector108~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector108~1_combout\ = (\DRAM|new_sdram_controller_0|m_state.000010000~q\ & ((\DRAM|new_sdram_controller_0|f_select~combout\ & 
-- ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[8]~33_combout\))) # (!\DRAM|new_sdram_controller_0|f_select~combout\ & (\DRAM|new_sdram_controller_0|Selector108~0_combout\)))) # 
-- (!\DRAM|new_sdram_controller_0|m_state.000010000~q\ & (\DRAM|new_sdram_controller_0|Selector108~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|Selector108~0_combout\,
	datab => \DRAM|new_sdram_controller_0|m_state.000010000~q\,
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[8]~33_combout\,
	datad => \DRAM|new_sdram_controller_0|f_select~combout\,
	combout => \DRAM|new_sdram_controller_0|Selector108~1_combout\);

-- Location: DDIOOUTCELL_X78_Y23_N11
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

-- Location: DDIOOECELL_X78_Y23_N12
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

-- Location: LCCOMB_X62_Y35_N6
\u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[9]~feeder_combout\ = \u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(9),
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[9]~feeder_combout\);

-- Location: FF_X62_Y35_N7
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

-- Location: LCCOMB_X70_Y27_N28
\u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~9_combout\ = (\u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\ & (\u1|modular_adc_0|control_internal|u_control_fsm|pend~q\ & 
-- \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\,
	datac => \u1|modular_adc_0|control_internal|u_control_fsm|pend~q\,
	datad => \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(9),
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~9_combout\);

-- Location: FF_X70_Y27_N29
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

-- Location: LCCOMB_X71_Y24_N24
\dataIN[9]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- dataIN(9) = (GLOBAL(\Selector1~0clkctrl_outclk\) & ((\u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(9)))) # (!GLOBAL(\Selector1~0clkctrl_outclk\) & (dataIN(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~0clkctrl_outclk\,
	datac => dataIN(9),
	datad => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(9),
	combout => dataIN(9));

-- Location: LCCOMB_X71_Y24_N22
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

-- Location: FF_X71_Y24_N23
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[9]~feeder_combout\,
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(9));

-- Location: FF_X71_Y24_N25
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => dataIN(9),
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(9));

-- Location: LCCOMB_X75_Y24_N16
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[9]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[9]~34_combout\ = (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(9)))) # (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\,
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(9),
	datad => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(9),
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[9]~34_combout\);

-- Location: FF_X75_Y24_N17
\DRAM|new_sdram_controller_0|active_data[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[9]~34_combout\,
	ena => \DRAM|new_sdram_controller_0|active_addr[23]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|active_data\(9));

-- Location: FF_X75_Y24_N15
\DRAM|new_sdram_controller_0|m_data[9]~_Duplicate_1\ : dffeas
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
	q => \DRAM|new_sdram_controller_0|m_data[9]~_Duplicate_1_q\);

-- Location: LCCOMB_X75_Y24_N22
\DRAM|new_sdram_controller_0|Selector107~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector107~0_combout\ = (\DRAM|new_sdram_controller_0|m_state.000010000~q\ & (\DRAM|new_sdram_controller_0|active_data\(9))) # (!\DRAM|new_sdram_controller_0|m_state.000010000~q\ & 
-- ((\DRAM|new_sdram_controller_0|m_state.000000010~q\ & (\DRAM|new_sdram_controller_0|active_data\(9))) # (!\DRAM|new_sdram_controller_0|m_state.000000010~q\ & ((\DRAM|new_sdram_controller_0|m_data[9]~_Duplicate_1_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|active_data\(9),
	datab => \DRAM|new_sdram_controller_0|m_data[9]~_Duplicate_1_q\,
	datac => \DRAM|new_sdram_controller_0|m_state.000010000~q\,
	datad => \DRAM|new_sdram_controller_0|m_state.000000010~q\,
	combout => \DRAM|new_sdram_controller_0|Selector107~0_combout\);

-- Location: LCCOMB_X75_Y24_N14
\DRAM|new_sdram_controller_0|Selector107~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector107~1_combout\ = (\DRAM|new_sdram_controller_0|m_state.000010000~q\ & ((\DRAM|new_sdram_controller_0|f_select~combout\ & 
-- ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[9]~34_combout\))) # (!\DRAM|new_sdram_controller_0|f_select~combout\ & (\DRAM|new_sdram_controller_0|Selector107~0_combout\)))) # 
-- (!\DRAM|new_sdram_controller_0|m_state.000010000~q\ & (\DRAM|new_sdram_controller_0|Selector107~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|Selector107~0_combout\,
	datab => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[9]~34_combout\,
	datac => \DRAM|new_sdram_controller_0|m_state.000010000~q\,
	datad => \DRAM|new_sdram_controller_0|f_select~combout\,
	combout => \DRAM|new_sdram_controller_0|Selector107~1_combout\);

-- Location: DDIOOUTCELL_X78_Y30_N11
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

-- Location: DDIOOECELL_X78_Y30_N12
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

-- Location: LCCOMB_X62_Y35_N8
\u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[10]~feeder_combout\ = \u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(10),
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[10]~feeder_combout\);

-- Location: FF_X62_Y35_N9
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

-- Location: LCCOMB_X67_Y28_N28
\u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~10_combout\ = (\u1|modular_adc_0|control_internal|u_control_fsm|pend~q\ & (\u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\ & 
-- \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|modular_adc_0|control_internal|u_control_fsm|pend~q\,
	datab => \u1|modular_adc_0|control_internal|u_control_fsm|conv_dly1_s_flp~q\,
	datad => \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(10),
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~10_combout\);

-- Location: LCCOMB_X70_Y27_N14
\u1|modular_adc_0|control_internal|u_control_fsm|rsp_data[10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data[10]~feeder_combout\ = \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data~10_combout\,
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data[10]~feeder_combout\);

-- Location: FF_X70_Y27_N15
\u1|modular_adc_0|control_internal|u_control_fsm|rsp_data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	d => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data[10]~feeder_combout\,
	clrn => \u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(10));

-- Location: LCCOMB_X71_Y24_N10
\dataIN[10]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- dataIN(10) = (GLOBAL(\Selector1~0clkctrl_outclk\) & ((\u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(10)))) # (!GLOBAL(\Selector1~0clkctrl_outclk\) & (dataIN(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~0clkctrl_outclk\,
	datab => dataIN(10),
	datad => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(10),
	combout => dataIN(10));

-- Location: LCCOMB_X71_Y24_N12
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[10]~feeder_combout\ = dataIN(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => dataIN(10),
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[10]~feeder_combout\);

-- Location: FF_X71_Y24_N13
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[10]~feeder_combout\,
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(10));

-- Location: FF_X71_Y24_N11
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => dataIN(10),
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(10));

-- Location: LCCOMB_X75_Y24_N8
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[10]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[10]~35_combout\ = (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(10))) # (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\,
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(10),
	datad => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(10),
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[10]~35_combout\);

-- Location: FF_X75_Y24_N9
\DRAM|new_sdram_controller_0|active_data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[10]~35_combout\,
	ena => \DRAM|new_sdram_controller_0|active_addr[23]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|active_data\(10));

-- Location: FF_X75_Y24_N1
\DRAM|new_sdram_controller_0|m_data[10]~_Duplicate_1\ : dffeas
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
	q => \DRAM|new_sdram_controller_0|m_data[10]~_Duplicate_1_q\);

-- Location: LCCOMB_X75_Y24_N6
\DRAM|new_sdram_controller_0|Selector106~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector106~0_combout\ = (\DRAM|new_sdram_controller_0|m_state.000010000~q\ & (\DRAM|new_sdram_controller_0|active_data\(10))) # (!\DRAM|new_sdram_controller_0|m_state.000010000~q\ & 
-- ((\DRAM|new_sdram_controller_0|m_state.000000010~q\ & (\DRAM|new_sdram_controller_0|active_data\(10))) # (!\DRAM|new_sdram_controller_0|m_state.000000010~q\ & ((\DRAM|new_sdram_controller_0|m_data[10]~_Duplicate_1_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|active_data\(10),
	datab => \DRAM|new_sdram_controller_0|m_state.000010000~q\,
	datac => \DRAM|new_sdram_controller_0|m_state.000000010~q\,
	datad => \DRAM|new_sdram_controller_0|m_data[10]~_Duplicate_1_q\,
	combout => \DRAM|new_sdram_controller_0|Selector106~0_combout\);

-- Location: LCCOMB_X75_Y24_N0
\DRAM|new_sdram_controller_0|Selector106~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector106~1_combout\ = (\DRAM|new_sdram_controller_0|m_state.000010000~q\ & ((\DRAM|new_sdram_controller_0|f_select~combout\ & 
-- ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[10]~35_combout\))) # (!\DRAM|new_sdram_controller_0|f_select~combout\ & (\DRAM|new_sdram_controller_0|Selector106~0_combout\)))) # 
-- (!\DRAM|new_sdram_controller_0|m_state.000010000~q\ & (\DRAM|new_sdram_controller_0|Selector106~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|Selector106~0_combout\,
	datab => \DRAM|new_sdram_controller_0|m_state.000010000~q\,
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[10]~35_combout\,
	datad => \DRAM|new_sdram_controller_0|f_select~combout\,
	combout => \DRAM|new_sdram_controller_0|Selector106~1_combout\);

-- Location: DDIOOUTCELL_X78_Y29_N4
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

-- Location: DDIOOECELL_X78_Y29_N5
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

-- Location: LCCOMB_X62_Y35_N24
\u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[11]~feeder_combout\ = \u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u1|modular_adc_0|control_internal|adc_inst|adcblock_instance|wire_from_adc_dout\(11),
	combout => \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[11]~feeder_combout\);

-- Location: FF_X62_Y35_N25
\u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ADCCLK~inputclkctrl_outclk\,
	d => \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp[11]~feeder_combout\,
	clrn => \u1|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	ena => \u1|modular_adc_0|control_internal|u_control_fsm|load_dout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|modular_adc_0|control_internal|u_control_fsm|dout_flp\(11));

-- Location: LCCOMB_X70_Y27_N4
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

-- Location: FF_X70_Y27_N5
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

-- Location: LCCOMB_X71_Y24_N20
\dataIN[11]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- dataIN(11) = (GLOBAL(\Selector1~0clkctrl_outclk\) & ((\u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(11)))) # (!GLOBAL(\Selector1~0clkctrl_outclk\) & (dataIN(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~0clkctrl_outclk\,
	datab => dataIN(11),
	datad => \u1|modular_adc_0|control_internal|u_control_fsm|rsp_data\(11),
	combout => dataIN(11));

-- Location: LCCOMB_X71_Y24_N30
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[11]~feeder_combout\ = dataIN(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => dataIN(11),
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[11]~feeder_combout\);

-- Location: FF_X71_Y24_N31
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[11]~feeder_combout\,
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(11));

-- Location: FF_X71_Y24_N21
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => dataIN(11),
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(11));

-- Location: LCCOMB_X72_Y24_N18
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[11]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[11]~36_combout\ = (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(11)))) # (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\,
	datab => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(11),
	datad => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(11),
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[11]~36_combout\);

-- Location: FF_X75_Y24_N11
\DRAM|new_sdram_controller_0|m_data[11]~_Duplicate_1\ : dffeas
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
	q => \DRAM|new_sdram_controller_0|m_data[11]~_Duplicate_1_q\);

-- Location: FF_X75_Y24_N5
\DRAM|new_sdram_controller_0|active_data[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[11]~36_combout\,
	sload => VCC,
	ena => \DRAM|new_sdram_controller_0|active_addr[23]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|active_data\(11));

-- Location: LCCOMB_X75_Y24_N4
\DRAM|new_sdram_controller_0|Selector105~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector105~0_combout\ = (\DRAM|new_sdram_controller_0|m_state.000010000~q\ & (((\DRAM|new_sdram_controller_0|active_data\(11))))) # (!\DRAM|new_sdram_controller_0|m_state.000010000~q\ & 
-- ((\DRAM|new_sdram_controller_0|m_state.000000010~q\ & ((\DRAM|new_sdram_controller_0|active_data\(11)))) # (!\DRAM|new_sdram_controller_0|m_state.000000010~q\ & (\DRAM|new_sdram_controller_0|m_data[11]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_data[11]~_Duplicate_1_q\,
	datab => \DRAM|new_sdram_controller_0|m_state.000010000~q\,
	datac => \DRAM|new_sdram_controller_0|active_data\(11),
	datad => \DRAM|new_sdram_controller_0|m_state.000000010~q\,
	combout => \DRAM|new_sdram_controller_0|Selector105~0_combout\);

-- Location: LCCOMB_X75_Y24_N10
\DRAM|new_sdram_controller_0|Selector105~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector105~1_combout\ = (\DRAM|new_sdram_controller_0|m_state.000010000~q\ & ((\DRAM|new_sdram_controller_0|f_select~combout\ & 
-- (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[11]~36_combout\)) # (!\DRAM|new_sdram_controller_0|f_select~combout\ & ((\DRAM|new_sdram_controller_0|Selector105~0_combout\))))) # 
-- (!\DRAM|new_sdram_controller_0|m_state.000010000~q\ & (((\DRAM|new_sdram_controller_0|Selector105~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[11]~36_combout\,
	datab => \DRAM|new_sdram_controller_0|Selector105~0_combout\,
	datac => \DRAM|new_sdram_controller_0|m_state.000010000~q\,
	datad => \DRAM|new_sdram_controller_0|f_select~combout\,
	combout => \DRAM|new_sdram_controller_0|Selector105~1_combout\);

-- Location: DDIOOUTCELL_X78_Y29_N11
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

-- Location: DDIOOECELL_X78_Y29_N12
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

-- Location: DDIOOECELL_X78_Y31_N12
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

-- Location: DDIOOECELL_X78_Y31_N26
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

-- Location: DDIOOECELL_X78_Y31_N19
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

-- Location: DDIOOECELL_X78_Y31_N5
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

-- Location: IOIBUF_X78_Y3_N8
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

-- Location: IOIBUF_X78_Y16_N1
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

-- Location: IOIBUF_X78_Y3_N1
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

-- Location: IOIBUF_X78_Y16_N8
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

-- Location: LCCOMB_X75_Y51_N0
\Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\DRAM|new_sdram_controller_0|za_data\(3) & (\DRAM|new_sdram_controller_0|za_data\(0) & (\DRAM|new_sdram_controller_0|za_data\(2) $ (\DRAM|new_sdram_controller_0|za_data\(1))))) # (!\DRAM|new_sdram_controller_0|za_data\(3) & 
-- (!\DRAM|new_sdram_controller_0|za_data\(1) & (\DRAM|new_sdram_controller_0|za_data\(0) $ (\DRAM|new_sdram_controller_0|za_data\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|za_data\(3),
	datab => \DRAM|new_sdram_controller_0|za_data\(0),
	datac => \DRAM|new_sdram_controller_0|za_data\(2),
	datad => \DRAM|new_sdram_controller_0|za_data\(1),
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X75_Y51_N2
\Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\DRAM|new_sdram_controller_0|za_data\(3) & ((\DRAM|new_sdram_controller_0|za_data\(0) & ((\DRAM|new_sdram_controller_0|za_data\(1)))) # (!\DRAM|new_sdram_controller_0|za_data\(0) & (\DRAM|new_sdram_controller_0|za_data\(2))))) # 
-- (!\DRAM|new_sdram_controller_0|za_data\(3) & (\DRAM|new_sdram_controller_0|za_data\(2) & (\DRAM|new_sdram_controller_0|za_data\(0) $ (\DRAM|new_sdram_controller_0|za_data\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|za_data\(3),
	datab => \DRAM|new_sdram_controller_0|za_data\(0),
	datac => \DRAM|new_sdram_controller_0|za_data\(2),
	datad => \DRAM|new_sdram_controller_0|za_data\(1),
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X75_Y51_N16
\Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\DRAM|new_sdram_controller_0|za_data\(3) & (\DRAM|new_sdram_controller_0|za_data\(2) & ((\DRAM|new_sdram_controller_0|za_data\(1)) # (!\DRAM|new_sdram_controller_0|za_data\(0))))) # (!\DRAM|new_sdram_controller_0|za_data\(3) & 
-- (!\DRAM|new_sdram_controller_0|za_data\(0) & (!\DRAM|new_sdram_controller_0|za_data\(2) & \DRAM|new_sdram_controller_0|za_data\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|za_data\(3),
	datab => \DRAM|new_sdram_controller_0|za_data\(0),
	datac => \DRAM|new_sdram_controller_0|za_data\(2),
	datad => \DRAM|new_sdram_controller_0|za_data\(1),
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X75_Y51_N18
\Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\DRAM|new_sdram_controller_0|za_data\(1) & ((\DRAM|new_sdram_controller_0|za_data\(0) & ((\DRAM|new_sdram_controller_0|za_data\(2)))) # (!\DRAM|new_sdram_controller_0|za_data\(0) & (\DRAM|new_sdram_controller_0|za_data\(3) & 
-- !\DRAM|new_sdram_controller_0|za_data\(2))))) # (!\DRAM|new_sdram_controller_0|za_data\(1) & (!\DRAM|new_sdram_controller_0|za_data\(3) & (\DRAM|new_sdram_controller_0|za_data\(0) $ (\DRAM|new_sdram_controller_0|za_data\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|za_data\(3),
	datab => \DRAM|new_sdram_controller_0|za_data\(0),
	datac => \DRAM|new_sdram_controller_0|za_data\(2),
	datad => \DRAM|new_sdram_controller_0|za_data\(1),
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X75_Y51_N4
\Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\DRAM|new_sdram_controller_0|za_data\(1) & (!\DRAM|new_sdram_controller_0|za_data\(3) & (\DRAM|new_sdram_controller_0|za_data\(0)))) # (!\DRAM|new_sdram_controller_0|za_data\(1) & ((\DRAM|new_sdram_controller_0|za_data\(2) & 
-- (!\DRAM|new_sdram_controller_0|za_data\(3))) # (!\DRAM|new_sdram_controller_0|za_data\(2) & ((\DRAM|new_sdram_controller_0|za_data\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|za_data\(3),
	datab => \DRAM|new_sdram_controller_0|za_data\(0),
	datac => \DRAM|new_sdram_controller_0|za_data\(2),
	datad => \DRAM|new_sdram_controller_0|za_data\(1),
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X75_Y51_N26
\Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\DRAM|new_sdram_controller_0|za_data\(0) & (\DRAM|new_sdram_controller_0|za_data\(3) $ (((\DRAM|new_sdram_controller_0|za_data\(1)) # (!\DRAM|new_sdram_controller_0|za_data\(2)))))) # (!\DRAM|new_sdram_controller_0|za_data\(0) & 
-- (!\DRAM|new_sdram_controller_0|za_data\(3) & (!\DRAM|new_sdram_controller_0|za_data\(2) & \DRAM|new_sdram_controller_0|za_data\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|za_data\(3),
	datab => \DRAM|new_sdram_controller_0|za_data\(0),
	datac => \DRAM|new_sdram_controller_0|za_data\(2),
	datad => \DRAM|new_sdram_controller_0|za_data\(1),
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X75_Y51_N12
\Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\DRAM|new_sdram_controller_0|za_data\(0) & ((\DRAM|new_sdram_controller_0|za_data\(3)) # (\DRAM|new_sdram_controller_0|za_data\(2) $ (\DRAM|new_sdram_controller_0|za_data\(1))))) # (!\DRAM|new_sdram_controller_0|za_data\(0) & 
-- ((\DRAM|new_sdram_controller_0|za_data\(1)) # (\DRAM|new_sdram_controller_0|za_data\(3) $ (\DRAM|new_sdram_controller_0|za_data\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|za_data\(3),
	datab => \DRAM|new_sdram_controller_0|za_data\(0),
	datac => \DRAM|new_sdram_controller_0|za_data\(2),
	datad => \DRAM|new_sdram_controller_0|za_data\(1),
	combout => \Mux0~0_combout\);

-- Location: IOIBUF_X78_Y15_N8
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

-- Location: IOIBUF_X78_Y16_N15
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

-- Location: IOIBUF_X78_Y15_N1
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

-- Location: IOIBUF_X78_Y17_N8
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

-- Location: LCCOMB_X74_Y49_N0
\Mux13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (\DRAM|new_sdram_controller_0|za_data\(6) & (!\DRAM|new_sdram_controller_0|za_data\(5) & (\DRAM|new_sdram_controller_0|za_data\(4) $ (!\DRAM|new_sdram_controller_0|za_data\(7))))) # (!\DRAM|new_sdram_controller_0|za_data\(6) & 
-- (\DRAM|new_sdram_controller_0|za_data\(4) & (\DRAM|new_sdram_controller_0|za_data\(5) $ (!\DRAM|new_sdram_controller_0|za_data\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|za_data\(4),
	datab => \DRAM|new_sdram_controller_0|za_data\(6),
	datac => \DRAM|new_sdram_controller_0|za_data\(5),
	datad => \DRAM|new_sdram_controller_0|za_data\(7),
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X74_Y49_N6
\Mux12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (\DRAM|new_sdram_controller_0|za_data\(5) & ((\DRAM|new_sdram_controller_0|za_data\(4) & ((\DRAM|new_sdram_controller_0|za_data\(7)))) # (!\DRAM|new_sdram_controller_0|za_data\(4) & (\DRAM|new_sdram_controller_0|za_data\(6))))) # 
-- (!\DRAM|new_sdram_controller_0|za_data\(5) & (\DRAM|new_sdram_controller_0|za_data\(6) & (\DRAM|new_sdram_controller_0|za_data\(4) $ (\DRAM|new_sdram_controller_0|za_data\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|za_data\(4),
	datab => \DRAM|new_sdram_controller_0|za_data\(6),
	datac => \DRAM|new_sdram_controller_0|za_data\(5),
	datad => \DRAM|new_sdram_controller_0|za_data\(7),
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X74_Y49_N20
\Mux11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (\DRAM|new_sdram_controller_0|za_data\(6) & (\DRAM|new_sdram_controller_0|za_data\(7) & ((\DRAM|new_sdram_controller_0|za_data\(5)) # (!\DRAM|new_sdram_controller_0|za_data\(4))))) # (!\DRAM|new_sdram_controller_0|za_data\(6) & 
-- (!\DRAM|new_sdram_controller_0|za_data\(4) & (\DRAM|new_sdram_controller_0|za_data\(5) & !\DRAM|new_sdram_controller_0|za_data\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|za_data\(4),
	datab => \DRAM|new_sdram_controller_0|za_data\(6),
	datac => \DRAM|new_sdram_controller_0|za_data\(5),
	datad => \DRAM|new_sdram_controller_0|za_data\(7),
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X74_Y49_N10
\Mux10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (\DRAM|new_sdram_controller_0|za_data\(5) & ((\DRAM|new_sdram_controller_0|za_data\(4) & (\DRAM|new_sdram_controller_0|za_data\(6))) # (!\DRAM|new_sdram_controller_0|za_data\(4) & (!\DRAM|new_sdram_controller_0|za_data\(6) & 
-- \DRAM|new_sdram_controller_0|za_data\(7))))) # (!\DRAM|new_sdram_controller_0|za_data\(5) & (!\DRAM|new_sdram_controller_0|za_data\(7) & (\DRAM|new_sdram_controller_0|za_data\(4) $ (\DRAM|new_sdram_controller_0|za_data\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|za_data\(4),
	datab => \DRAM|new_sdram_controller_0|za_data\(6),
	datac => \DRAM|new_sdram_controller_0|za_data\(5),
	datad => \DRAM|new_sdram_controller_0|za_data\(7),
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X74_Y49_N12
\Mux9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\DRAM|new_sdram_controller_0|za_data\(5) & (\DRAM|new_sdram_controller_0|za_data\(4) & ((!\DRAM|new_sdram_controller_0|za_data\(7))))) # (!\DRAM|new_sdram_controller_0|za_data\(5) & ((\DRAM|new_sdram_controller_0|za_data\(6) & 
-- ((!\DRAM|new_sdram_controller_0|za_data\(7)))) # (!\DRAM|new_sdram_controller_0|za_data\(6) & (\DRAM|new_sdram_controller_0|za_data\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|za_data\(4),
	datab => \DRAM|new_sdram_controller_0|za_data\(6),
	datac => \DRAM|new_sdram_controller_0|za_data\(5),
	datad => \DRAM|new_sdram_controller_0|za_data\(7),
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X74_Y49_N22
\Mux8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\DRAM|new_sdram_controller_0|za_data\(4) & (\DRAM|new_sdram_controller_0|za_data\(7) $ (((\DRAM|new_sdram_controller_0|za_data\(5)) # (!\DRAM|new_sdram_controller_0|za_data\(6)))))) # (!\DRAM|new_sdram_controller_0|za_data\(4) & 
-- (!\DRAM|new_sdram_controller_0|za_data\(6) & (\DRAM|new_sdram_controller_0|za_data\(5) & !\DRAM|new_sdram_controller_0|za_data\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|za_data\(4),
	datab => \DRAM|new_sdram_controller_0|za_data\(6),
	datac => \DRAM|new_sdram_controller_0|za_data\(5),
	datad => \DRAM|new_sdram_controller_0|za_data\(7),
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X74_Y49_N4
\Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\DRAM|new_sdram_controller_0|za_data\(4) & ((\DRAM|new_sdram_controller_0|za_data\(7)) # (\DRAM|new_sdram_controller_0|za_data\(6) $ (\DRAM|new_sdram_controller_0|za_data\(5))))) # (!\DRAM|new_sdram_controller_0|za_data\(4) & 
-- ((\DRAM|new_sdram_controller_0|za_data\(5)) # (\DRAM|new_sdram_controller_0|za_data\(6) $ (\DRAM|new_sdram_controller_0|za_data\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|za_data\(4),
	datab => \DRAM|new_sdram_controller_0|za_data\(6),
	datac => \DRAM|new_sdram_controller_0|za_data\(5),
	datad => \DRAM|new_sdram_controller_0|za_data\(7),
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
	i => ww_DRAM_DQ(11),
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

-- Location: IOIBUF_X78_Y29_N1
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

-- Location: IOIBUF_X78_Y23_N8
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

-- Location: IOIBUF_X78_Y30_N8
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

-- Location: LCCOMB_X77_Y43_N0
\Mux20~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = (\DRAM|new_sdram_controller_0|za_data\(11) & (\DRAM|new_sdram_controller_0|za_data\(8) & (\DRAM|new_sdram_controller_0|za_data\(10) $ (\DRAM|new_sdram_controller_0|za_data\(9))))) # (!\DRAM|new_sdram_controller_0|za_data\(11) & 
-- (!\DRAM|new_sdram_controller_0|za_data\(9) & (\DRAM|new_sdram_controller_0|za_data\(10) $ (\DRAM|new_sdram_controller_0|za_data\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|za_data\(11),
	datab => \DRAM|new_sdram_controller_0|za_data\(10),
	datac => \DRAM|new_sdram_controller_0|za_data\(8),
	datad => \DRAM|new_sdram_controller_0|za_data\(9),
	combout => \Mux20~0_combout\);

-- Location: LCCOMB_X77_Y43_N26
\Mux19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = (\DRAM|new_sdram_controller_0|za_data\(11) & ((\DRAM|new_sdram_controller_0|za_data\(8) & ((\DRAM|new_sdram_controller_0|za_data\(9)))) # (!\DRAM|new_sdram_controller_0|za_data\(8) & (\DRAM|new_sdram_controller_0|za_data\(10))))) # 
-- (!\DRAM|new_sdram_controller_0|za_data\(11) & (\DRAM|new_sdram_controller_0|za_data\(10) & (\DRAM|new_sdram_controller_0|za_data\(8) $ (\DRAM|new_sdram_controller_0|za_data\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|za_data\(11),
	datab => \DRAM|new_sdram_controller_0|za_data\(10),
	datac => \DRAM|new_sdram_controller_0|za_data\(8),
	datad => \DRAM|new_sdram_controller_0|za_data\(9),
	combout => \Mux19~0_combout\);

-- Location: LCCOMB_X77_Y43_N28
\Mux18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = (\DRAM|new_sdram_controller_0|za_data\(11) & (\DRAM|new_sdram_controller_0|za_data\(10) & ((\DRAM|new_sdram_controller_0|za_data\(9)) # (!\DRAM|new_sdram_controller_0|za_data\(8))))) # (!\DRAM|new_sdram_controller_0|za_data\(11) & 
-- (!\DRAM|new_sdram_controller_0|za_data\(10) & (!\DRAM|new_sdram_controller_0|za_data\(8) & \DRAM|new_sdram_controller_0|za_data\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|za_data\(11),
	datab => \DRAM|new_sdram_controller_0|za_data\(10),
	datac => \DRAM|new_sdram_controller_0|za_data\(8),
	datad => \DRAM|new_sdram_controller_0|za_data\(9),
	combout => \Mux18~0_combout\);

-- Location: LCCOMB_X77_Y43_N2
\Mux17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (\DRAM|new_sdram_controller_0|za_data\(9) & ((\DRAM|new_sdram_controller_0|za_data\(10) & ((\DRAM|new_sdram_controller_0|za_data\(8)))) # (!\DRAM|new_sdram_controller_0|za_data\(10) & (\DRAM|new_sdram_controller_0|za_data\(11) & 
-- !\DRAM|new_sdram_controller_0|za_data\(8))))) # (!\DRAM|new_sdram_controller_0|za_data\(9) & (!\DRAM|new_sdram_controller_0|za_data\(11) & (\DRAM|new_sdram_controller_0|za_data\(10) $ (\DRAM|new_sdram_controller_0|za_data\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|za_data\(11),
	datab => \DRAM|new_sdram_controller_0|za_data\(10),
	datac => \DRAM|new_sdram_controller_0|za_data\(8),
	datad => \DRAM|new_sdram_controller_0|za_data\(9),
	combout => \Mux17~0_combout\);

-- Location: LCCOMB_X77_Y43_N16
\Mux16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = (\DRAM|new_sdram_controller_0|za_data\(9) & (!\DRAM|new_sdram_controller_0|za_data\(11) & ((\DRAM|new_sdram_controller_0|za_data\(8))))) # (!\DRAM|new_sdram_controller_0|za_data\(9) & ((\DRAM|new_sdram_controller_0|za_data\(10) & 
-- (!\DRAM|new_sdram_controller_0|za_data\(11))) # (!\DRAM|new_sdram_controller_0|za_data\(10) & ((\DRAM|new_sdram_controller_0|za_data\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|za_data\(11),
	datab => \DRAM|new_sdram_controller_0|za_data\(10),
	datac => \DRAM|new_sdram_controller_0|za_data\(8),
	datad => \DRAM|new_sdram_controller_0|za_data\(9),
	combout => \Mux16~0_combout\);

-- Location: LCCOMB_X77_Y43_N18
\Mux15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (\DRAM|new_sdram_controller_0|za_data\(10) & (\DRAM|new_sdram_controller_0|za_data\(8) & (\DRAM|new_sdram_controller_0|za_data\(11) $ (\DRAM|new_sdram_controller_0|za_data\(9))))) # (!\DRAM|new_sdram_controller_0|za_data\(10) & 
-- (!\DRAM|new_sdram_controller_0|za_data\(11) & ((\DRAM|new_sdram_controller_0|za_data\(8)) # (\DRAM|new_sdram_controller_0|za_data\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|za_data\(11),
	datab => \DRAM|new_sdram_controller_0|za_data\(10),
	datac => \DRAM|new_sdram_controller_0|za_data\(8),
	datad => \DRAM|new_sdram_controller_0|za_data\(9),
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X77_Y43_N12
\Mux14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (\DRAM|new_sdram_controller_0|za_data\(8) & ((\DRAM|new_sdram_controller_0|za_data\(11)) # (\DRAM|new_sdram_controller_0|za_data\(10) $ (\DRAM|new_sdram_controller_0|za_data\(9))))) # (!\DRAM|new_sdram_controller_0|za_data\(8) & 
-- ((\DRAM|new_sdram_controller_0|za_data\(9)) # (\DRAM|new_sdram_controller_0|za_data\(11) $ (\DRAM|new_sdram_controller_0|za_data\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|za_data\(11),
	datab => \DRAM|new_sdram_controller_0|za_data\(10),
	datac => \DRAM|new_sdram_controller_0|za_data\(8),
	datad => \DRAM|new_sdram_controller_0|za_data\(9),
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

-- Location: LCCOMB_X69_Y24_N20
\memaddress~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memaddress~15_combout\ = (!\DE10Reset~input_o\ & addressCounter(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DE10Reset~input_o\,
	datad => addressCounter(1),
	combout => \memaddress~15_combout\);

-- Location: LCCOMB_X69_Y24_N30
\memaddress[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- memaddress(1) = (GLOBAL(\estado_pres.e1~clkctrl_outclk\) & (memaddress(1))) # (!GLOBAL(\estado_pres.e1~clkctrl_outclk\) & ((\memaddress~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => memaddress(1),
	datac => \estado_pres.e1~clkctrl_outclk\,
	datad => \memaddress~15_combout\,
	combout => memaddress(1));

-- Location: FF_X69_Y24_N21
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => memaddress(1),
	sload => VCC,
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(18));

-- Location: FF_X69_Y24_N31
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => memaddress(1),
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(18));

-- Location: LCCOMB_X70_Y19_N28
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[18]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[18]~15_combout\ = (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(18))) # (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(18),
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(18),
	datad => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\,
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[18]~15_combout\);

-- Location: LCCOMB_X69_Y20_N22
\DRAM|new_sdram_controller_0|m_addr[6]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|m_addr[6]~0_combout\ = (\DRAM|new_sdram_controller_0|m_state.000010000~q\ & (((\DRAM|new_sdram_controller_0|f_pop~q\ & \DRAM|new_sdram_controller_0|pending~combout\)))) # (!\DRAM|new_sdram_controller_0|m_state.000010000~q\ & 
-- (\DRAM|new_sdram_controller_0|m_state.000000010~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_state.000010000~q\,
	datab => \DRAM|new_sdram_controller_0|m_state.000000010~q\,
	datac => \DRAM|new_sdram_controller_0|f_pop~q\,
	datad => \DRAM|new_sdram_controller_0|pending~combout\,
	combout => \DRAM|new_sdram_controller_0|m_addr[6]~0_combout\);

-- Location: FF_X70_Y19_N29
\DRAM|new_sdram_controller_0|active_addr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[18]~15_combout\,
	ena => \DRAM|new_sdram_controller_0|active_addr[23]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|active_addr\(0));

-- Location: LCCOMB_X71_Y23_N20
\DRAM|new_sdram_controller_0|i_addr[12]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|i_addr[12]~feeder_combout\ = \DRAM|new_sdram_controller_0|i_state.111~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DRAM|new_sdram_controller_0|i_state.111~q\,
	combout => \DRAM|new_sdram_controller_0|i_addr[12]~feeder_combout\);

-- Location: FF_X71_Y23_N21
\DRAM|new_sdram_controller_0|i_addr[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|i_addr[12]~feeder_combout\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|i_addr\(12));

-- Location: LCCOMB_X70_Y19_N2
\DRAM|new_sdram_controller_0|Selector98~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector98~0_combout\ = (\DRAM|new_sdram_controller_0|m_state.000010000~q\ & ((\DRAM|new_sdram_controller_0|active_addr\(0)) # ((\DRAM|new_sdram_controller_0|m_addr[6]~0_combout\)))) # 
-- (!\DRAM|new_sdram_controller_0|m_state.000010000~q\ & (((!\DRAM|new_sdram_controller_0|m_addr[6]~0_combout\ & !\DRAM|new_sdram_controller_0|i_addr\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|active_addr\(0),
	datab => \DRAM|new_sdram_controller_0|m_state.000010000~q\,
	datac => \DRAM|new_sdram_controller_0|m_addr[6]~0_combout\,
	datad => \DRAM|new_sdram_controller_0|i_addr\(12),
	combout => \DRAM|new_sdram_controller_0|Selector98~0_combout\);

-- Location: LCCOMB_X70_Y19_N4
\DRAM|new_sdram_controller_0|Selector98~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector98~1_combout\ = (\DRAM|new_sdram_controller_0|m_addr[6]~0_combout\ & ((\DRAM|new_sdram_controller_0|Selector98~0_combout\ & 
-- ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[18]~15_combout\))) # (!\DRAM|new_sdram_controller_0|Selector98~0_combout\ & (\DRAM|new_sdram_controller_0|active_addr\(11))))) # 
-- (!\DRAM|new_sdram_controller_0|m_addr[6]~0_combout\ & (((\DRAM|new_sdram_controller_0|Selector98~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|active_addr\(11),
	datab => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[18]~15_combout\,
	datac => \DRAM|new_sdram_controller_0|m_addr[6]~0_combout\,
	datad => \DRAM|new_sdram_controller_0|Selector98~0_combout\,
	combout => \DRAM|new_sdram_controller_0|Selector98~1_combout\);

-- Location: LCCOMB_X74_Y20_N22
\DRAM|new_sdram_controller_0|Selector93~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector93~0_combout\ = (!\DRAM|new_sdram_controller_0|m_state.000100000~q\ & (!\DRAM|new_sdram_controller_0|m_state.000000100~q\ & (!\DRAM|new_sdram_controller_0|m_state.100000000~q\ & 
-- !\DRAM|new_sdram_controller_0|m_state.010000000~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_state.000100000~q\,
	datab => \DRAM|new_sdram_controller_0|m_state.000000100~q\,
	datac => \DRAM|new_sdram_controller_0|m_state.100000000~q\,
	datad => \DRAM|new_sdram_controller_0|m_state.010000000~q\,
	combout => \DRAM|new_sdram_controller_0|Selector93~0_combout\);

-- Location: LCCOMB_X70_Y20_N4
\DRAM|new_sdram_controller_0|Selector93~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector93~1_combout\ = (\DRAM|new_sdram_controller_0|Selector93~0_combout\ & ((\DRAM|new_sdram_controller_0|m_state.000000001~q\) # (!\DRAM|new_sdram_controller_0|init_done~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_state.000000001~q\,
	datab => \DRAM|new_sdram_controller_0|init_done~q\,
	datad => \DRAM|new_sdram_controller_0|Selector93~0_combout\,
	combout => \DRAM|new_sdram_controller_0|Selector93~1_combout\);

-- Location: DDIOOUTCELL_X78_Y3_N18
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

-- Location: LCCOMB_X66_Y24_N16
\memaddress~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memaddress~16_combout\ = (!\DE10Reset~input_o\ & addressCounter(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DE10Reset~input_o\,
	datad => addressCounter(2),
	combout => \memaddress~16_combout\);

-- Location: LCCOMB_X66_Y24_N24
\memaddress[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- memaddress(2) = (GLOBAL(\estado_pres.e1~clkctrl_outclk\) & (memaddress(2))) # (!GLOBAL(\estado_pres.e1~clkctrl_outclk\) & ((\memaddress~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_pres.e1~clkctrl_outclk\,
	datab => memaddress(2),
	datad => \memaddress~16_combout\,
	combout => memaddress(2));

-- Location: FF_X66_Y24_N17
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => memaddress(2),
	sload => VCC,
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(19));

-- Location: LCCOMB_X67_Y24_N28
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[19]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[19]~feeder_combout\ = memaddress(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => memaddress(2),
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[19]~feeder_combout\);

-- Location: FF_X67_Y24_N29
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[19]~feeder_combout\,
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(19));

-- Location: LCCOMB_X70_Y19_N8
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[19]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[19]~16_combout\ = (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(19)))) # (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(19),
	datab => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(19),
	datad => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\,
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[19]~16_combout\);

-- Location: FF_X70_Y19_N31
\DRAM|new_sdram_controller_0|active_addr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[19]~16_combout\,
	sload => VCC,
	ena => \DRAM|new_sdram_controller_0|active_addr[23]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|active_addr\(1));

-- Location: LCCOMB_X70_Y19_N20
\DRAM|new_sdram_controller_0|Selector97~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector97~0_combout\ = (\DRAM|new_sdram_controller_0|m_addr[6]~0_combout\ & (((\DRAM|new_sdram_controller_0|m_state.000010000~q\)))) # (!\DRAM|new_sdram_controller_0|m_addr[6]~0_combout\ & 
-- ((\DRAM|new_sdram_controller_0|m_state.000010000~q\ & (\DRAM|new_sdram_controller_0|active_addr\(1))) # (!\DRAM|new_sdram_controller_0|m_state.000010000~q\ & ((!\DRAM|new_sdram_controller_0|i_addr\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|active_addr\(1),
	datab => \DRAM|new_sdram_controller_0|i_addr\(12),
	datac => \DRAM|new_sdram_controller_0|m_addr[6]~0_combout\,
	datad => \DRAM|new_sdram_controller_0|m_state.000010000~q\,
	combout => \DRAM|new_sdram_controller_0|Selector97~0_combout\);

-- Location: LCCOMB_X70_Y19_N30
\DRAM|new_sdram_controller_0|Selector97~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector97~1_combout\ = (\DRAM|new_sdram_controller_0|m_addr[6]~0_combout\ & ((\DRAM|new_sdram_controller_0|Selector97~0_combout\ & 
-- ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[19]~16_combout\))) # (!\DRAM|new_sdram_controller_0|Selector97~0_combout\ & (\DRAM|new_sdram_controller_0|active_addr\(12))))) # 
-- (!\DRAM|new_sdram_controller_0|m_addr[6]~0_combout\ & (((\DRAM|new_sdram_controller_0|Selector97~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|active_addr\(12),
	datab => \DRAM|new_sdram_controller_0|m_addr[6]~0_combout\,
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[19]~16_combout\,
	datad => \DRAM|new_sdram_controller_0|Selector97~0_combout\,
	combout => \DRAM|new_sdram_controller_0|Selector97~1_combout\);

-- Location: DDIOOUTCELL_X78_Y16_N26
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

-- Location: LCCOMB_X65_Y24_N28
\memaddress~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memaddress~17_combout\ = (!\DE10Reset~input_o\ & addressCounter(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DE10Reset~input_o\,
	datad => addressCounter(3),
	combout => \memaddress~17_combout\);

-- Location: LCCOMB_X66_Y24_N22
\memaddress[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- memaddress(3) = (GLOBAL(\estado_pres.e1~clkctrl_outclk\) & (memaddress(3))) # (!GLOBAL(\estado_pres.e1~clkctrl_outclk\) & ((\memaddress~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => memaddress(3),
	datac => \estado_pres.e1~clkctrl_outclk\,
	datad => \memaddress~17_combout\,
	combout => memaddress(3));

-- Location: FF_X66_Y24_N13
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => memaddress(3),
	sload => VCC,
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(20));

-- Location: FF_X66_Y24_N23
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

-- Location: LCCOMB_X70_Y19_N14
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[20]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[20]~17_combout\ = (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(20)))) # (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(20),
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(20),
	datad => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\,
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[20]~17_combout\);

-- Location: FF_X70_Y19_N15
\DRAM|new_sdram_controller_0|active_addr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[20]~17_combout\,
	ena => \DRAM|new_sdram_controller_0|active_addr[23]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|active_addr\(2));

-- Location: LCCOMB_X70_Y19_N16
\DRAM|new_sdram_controller_0|Selector96~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector96~0_combout\ = (\DRAM|new_sdram_controller_0|m_addr[6]~0_combout\ & (((\DRAM|new_sdram_controller_0|m_state.000010000~q\)))) # (!\DRAM|new_sdram_controller_0|m_addr[6]~0_combout\ & 
-- ((\DRAM|new_sdram_controller_0|m_state.000010000~q\ & (\DRAM|new_sdram_controller_0|active_addr\(2))) # (!\DRAM|new_sdram_controller_0|m_state.000010000~q\ & ((!\DRAM|new_sdram_controller_0|i_addr\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|active_addr\(2),
	datab => \DRAM|new_sdram_controller_0|i_addr\(12),
	datac => \DRAM|new_sdram_controller_0|m_addr[6]~0_combout\,
	datad => \DRAM|new_sdram_controller_0|m_state.000010000~q\,
	combout => \DRAM|new_sdram_controller_0|Selector96~0_combout\);

-- Location: LCCOMB_X70_Y19_N6
\DRAM|new_sdram_controller_0|Selector96~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector96~1_combout\ = (\DRAM|new_sdram_controller_0|m_addr[6]~0_combout\ & ((\DRAM|new_sdram_controller_0|Selector96~0_combout\ & 
-- ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[20]~17_combout\))) # (!\DRAM|new_sdram_controller_0|Selector96~0_combout\ & (\DRAM|new_sdram_controller_0|active_addr\(13))))) # 
-- (!\DRAM|new_sdram_controller_0|m_addr[6]~0_combout\ & (((\DRAM|new_sdram_controller_0|Selector96~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|active_addr\(13),
	datab => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[20]~17_combout\,
	datac => \DRAM|new_sdram_controller_0|m_addr[6]~0_combout\,
	datad => \DRAM|new_sdram_controller_0|Selector96~0_combout\,
	combout => \DRAM|new_sdram_controller_0|Selector96~1_combout\);

-- Location: DDIOOUTCELL_X78_Y15_N25
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

-- Location: LCCOMB_X65_Y28_N0
\memaddress~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memaddress~18_combout\ = (!\DE10Reset~input_o\ & addressCounter(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DE10Reset~input_o\,
	datac => addressCounter(4),
	combout => \memaddress~18_combout\);

-- Location: LCCOMB_X69_Y24_N12
\memaddress[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- memaddress(4) = (GLOBAL(\estado_pres.e1~clkctrl_outclk\) & (memaddress(4))) # (!GLOBAL(\estado_pres.e1~clkctrl_outclk\) & ((\memaddress~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => memaddress(4),
	datac => \estado_pres.e1~clkctrl_outclk\,
	datad => \memaddress~18_combout\,
	combout => memaddress(4));

-- Location: FF_X69_Y24_N13
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

-- Location: LCCOMB_X69_Y24_N14
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[21]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[21]~feeder_combout\ = memaddress(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => memaddress(4),
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[21]~feeder_combout\);

-- Location: FF_X69_Y24_N15
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[21]~feeder_combout\,
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(21));

-- Location: LCCOMB_X70_Y19_N0
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[21]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[21]~18_combout\ = (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(21))) # (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(21),
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(21),
	datad => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\,
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[21]~18_combout\);

-- Location: FF_X70_Y19_N1
\DRAM|new_sdram_controller_0|active_addr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[21]~18_combout\,
	ena => \DRAM|new_sdram_controller_0|active_addr[23]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|active_addr\(3));

-- Location: LCCOMB_X70_Y19_N18
\DRAM|new_sdram_controller_0|Selector95~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector95~0_combout\ = (\DRAM|new_sdram_controller_0|m_addr[6]~0_combout\ & (((\DRAM|new_sdram_controller_0|m_state.000010000~q\)))) # (!\DRAM|new_sdram_controller_0|m_addr[6]~0_combout\ & 
-- ((\DRAM|new_sdram_controller_0|m_state.000010000~q\ & (\DRAM|new_sdram_controller_0|active_addr\(3))) # (!\DRAM|new_sdram_controller_0|m_state.000010000~q\ & ((!\DRAM|new_sdram_controller_0|i_addr\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|active_addr\(3),
	datab => \DRAM|new_sdram_controller_0|i_addr\(12),
	datac => \DRAM|new_sdram_controller_0|m_addr[6]~0_combout\,
	datad => \DRAM|new_sdram_controller_0|m_state.000010000~q\,
	combout => \DRAM|new_sdram_controller_0|Selector95~0_combout\);

-- Location: LCCOMB_X70_Y19_N12
\DRAM|new_sdram_controller_0|Selector95~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector95~1_combout\ = (\DRAM|new_sdram_controller_0|m_addr[6]~0_combout\ & ((\DRAM|new_sdram_controller_0|Selector95~0_combout\ & 
-- ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[21]~18_combout\))) # (!\DRAM|new_sdram_controller_0|Selector95~0_combout\ & (\DRAM|new_sdram_controller_0|active_addr\(14))))) # 
-- (!\DRAM|new_sdram_controller_0|m_addr[6]~0_combout\ & (((\DRAM|new_sdram_controller_0|Selector95~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|active_addr\(14),
	datab => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[21]~18_combout\,
	datac => \DRAM|new_sdram_controller_0|m_addr[6]~0_combout\,
	datad => \DRAM|new_sdram_controller_0|Selector95~0_combout\,
	combout => \DRAM|new_sdram_controller_0|Selector95~1_combout\);

-- Location: DDIOOUTCELL_X78_Y3_N25
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

-- Location: LCCOMB_X65_Y28_N6
\memaddress~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memaddress~19_combout\ = (!\DE10Reset~input_o\ & addressCounter(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DE10Reset~input_o\,
	datad => addressCounter(5),
	combout => \memaddress~19_combout\);

-- Location: LCCOMB_X69_Y24_N0
\memaddress[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- memaddress(5) = (GLOBAL(\estado_pres.e1~clkctrl_outclk\) & (memaddress(5))) # (!GLOBAL(\estado_pres.e1~clkctrl_outclk\) & ((\memaddress~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => memaddress(5),
	datac => \estado_pres.e1~clkctrl_outclk\,
	datad => \memaddress~19_combout\,
	combout => memaddress(5));

-- Location: FF_X69_Y24_N1
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

-- Location: LCCOMB_X69_Y24_N10
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

-- Location: FF_X69_Y24_N11
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[22]~feeder_combout\,
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(22));

-- Location: LCCOMB_X70_Y19_N10
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[22]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[22]~19_combout\ = (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(22))) # (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(22),
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(22),
	datad => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\,
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[22]~19_combout\);

-- Location: FF_X70_Y19_N11
\DRAM|new_sdram_controller_0|active_addr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[22]~19_combout\,
	ena => \DRAM|new_sdram_controller_0|active_addr[23]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|active_addr\(4));

-- Location: LCCOMB_X70_Y19_N24
\DRAM|new_sdram_controller_0|Selector94~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector94~0_combout\ = (\DRAM|new_sdram_controller_0|m_addr[6]~0_combout\ & (((\DRAM|new_sdram_controller_0|m_state.000010000~q\)))) # (!\DRAM|new_sdram_controller_0|m_addr[6]~0_combout\ & 
-- ((\DRAM|new_sdram_controller_0|m_state.000010000~q\ & (\DRAM|new_sdram_controller_0|active_addr\(4))) # (!\DRAM|new_sdram_controller_0|m_state.000010000~q\ & ((!\DRAM|new_sdram_controller_0|i_addr\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|active_addr\(4),
	datab => \DRAM|new_sdram_controller_0|i_addr\(12),
	datac => \DRAM|new_sdram_controller_0|m_addr[6]~0_combout\,
	datad => \DRAM|new_sdram_controller_0|m_state.000010000~q\,
	combout => \DRAM|new_sdram_controller_0|Selector94~0_combout\);

-- Location: LCCOMB_X70_Y19_N22
\DRAM|new_sdram_controller_0|Selector94~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector94~1_combout\ = (\DRAM|new_sdram_controller_0|m_addr[6]~0_combout\ & ((\DRAM|new_sdram_controller_0|Selector94~0_combout\ & 
-- (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[22]~19_combout\)) # (!\DRAM|new_sdram_controller_0|Selector94~0_combout\ & ((\DRAM|new_sdram_controller_0|active_addr\(15)))))) # 
-- (!\DRAM|new_sdram_controller_0|m_addr[6]~0_combout\ & (((\DRAM|new_sdram_controller_0|Selector94~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[22]~19_combout\,
	datab => \DRAM|new_sdram_controller_0|active_addr\(15),
	datac => \DRAM|new_sdram_controller_0|m_addr[6]~0_combout\,
	datad => \DRAM|new_sdram_controller_0|Selector94~0_combout\,
	combout => \DRAM|new_sdram_controller_0|Selector94~1_combout\);

-- Location: DDIOOUTCELL_X78_Y15_N18
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

-- Location: FF_X70_Y20_N13
\DRAM|new_sdram_controller_0|m_addr[5]~_Duplicate_1\ : dffeas
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
	q => \DRAM|new_sdram_controller_0|m_addr[5]~_Duplicate_1_q\);

-- Location: LCCOMB_X70_Y20_N22
\DRAM|new_sdram_controller_0|Selector93~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector93~3_combout\ = (\DRAM|new_sdram_controller_0|m_addr[5]~_Duplicate_1_q\) # ((\DRAM|new_sdram_controller_0|Selector93~0_combout\ & ((\DRAM|new_sdram_controller_0|m_state.000000001~q\) # 
-- (!\DRAM|new_sdram_controller_0|init_done~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_addr[5]~_Duplicate_1_q\,
	datab => \DRAM|new_sdram_controller_0|init_done~q\,
	datac => \DRAM|new_sdram_controller_0|m_state.000000001~q\,
	datad => \DRAM|new_sdram_controller_0|Selector93~0_combout\,
	combout => \DRAM|new_sdram_controller_0|Selector93~3_combout\);

-- Location: LCCOMB_X65_Y24_N26
\memaddress~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memaddress~20_combout\ = (!\DE10Reset~input_o\ & addressCounter(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DE10Reset~input_o\,
	datad => addressCounter(6),
	combout => \memaddress~20_combout\);

-- Location: LCCOMB_X65_Y24_N6
\memaddress[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- memaddress(6) = (GLOBAL(\estado_pres.e1~clkctrl_outclk\) & (memaddress(6))) # (!GLOBAL(\estado_pres.e1~clkctrl_outclk\) & ((\memaddress~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => memaddress(6),
	datac => \memaddress~20_combout\,
	datad => \estado_pres.e1~clkctrl_outclk\,
	combout => memaddress(6));

-- Location: FF_X66_Y24_N25
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => memaddress(6),
	sload => VCC,
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(23));

-- Location: FF_X66_Y24_N31
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

-- Location: LCCOMB_X66_Y24_N30
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[23]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[23]~20_combout\ = (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(23)))) # (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(23),
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(23),
	datad => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\,
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[23]~20_combout\);

-- Location: FF_X70_Y20_N3
\DRAM|new_sdram_controller_0|active_addr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[23]~20_combout\,
	sload => VCC,
	ena => \DRAM|new_sdram_controller_0|active_addr[23]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|active_addr\(5));

-- Location: LCCOMB_X70_Y20_N2
\DRAM|new_sdram_controller_0|Selector93~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector93~2_combout\ = ((\DRAM|new_sdram_controller_0|f_select~combout\ & (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[23]~20_combout\)) # 
-- (!\DRAM|new_sdram_controller_0|f_select~combout\ & ((\DRAM|new_sdram_controller_0|active_addr\(5))))) # (!\DRAM|new_sdram_controller_0|m_state.000010000~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_state.000010000~q\,
	datab => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[23]~20_combout\,
	datac => \DRAM|new_sdram_controller_0|active_addr\(5),
	datad => \DRAM|new_sdram_controller_0|f_select~combout\,
	combout => \DRAM|new_sdram_controller_0|Selector93~2_combout\);

-- Location: LCCOMB_X70_Y20_N12
\DRAM|new_sdram_controller_0|Selector93~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector93~4_combout\ = (\DRAM|new_sdram_controller_0|Selector93~3_combout\ & (\DRAM|new_sdram_controller_0|Selector93~2_combout\ & ((\DRAM|new_sdram_controller_0|active_addr\(16)) # 
-- (!\DRAM|new_sdram_controller_0|m_state.000000010~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|Selector93~3_combout\,
	datab => \DRAM|new_sdram_controller_0|m_state.000000010~q\,
	datac => \DRAM|new_sdram_controller_0|active_addr\(16),
	datad => \DRAM|new_sdram_controller_0|Selector93~2_combout\,
	combout => \DRAM|new_sdram_controller_0|Selector93~4_combout\);

-- Location: DDIOOUTCELL_X78_Y20_N18
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

-- Location: LCCOMB_X66_Y24_N0
\memaddress~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memaddress~21_combout\ = (!\DE10Reset~input_o\ & addressCounter(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DE10Reset~input_o\,
	datad => addressCounter(7),
	combout => \memaddress~21_combout\);

-- Location: LCCOMB_X66_Y24_N26
\memaddress[7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- memaddress(7) = (GLOBAL(\estado_pres.e1~clkctrl_outclk\) & (memaddress(7))) # (!GLOBAL(\estado_pres.e1~clkctrl_outclk\) & ((\memaddress~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => memaddress(7),
	datac => \estado_pres.e1~clkctrl_outclk\,
	datad => \memaddress~21_combout\,
	combout => memaddress(7));

-- Location: FF_X66_Y24_N27
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => memaddress(7),
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(24));

-- Location: FF_X66_Y24_N1
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => memaddress(7),
	sload => VCC,
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(24));

-- Location: LCCOMB_X70_Y21_N18
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[24]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[24]~21_combout\ = (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
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
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[24]~21_combout\);

-- Location: FF_X70_Y21_N1
\DRAM|new_sdram_controller_0|active_addr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[24]~21_combout\,
	sload => VCC,
	ena => \DRAM|new_sdram_controller_0|active_addr[23]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|active_addr\(6));

-- Location: LCCOMB_X70_Y21_N20
\DRAM|new_sdram_controller_0|Selector92~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector92~0_combout\ = (\DRAM|new_sdram_controller_0|m_state.000010000~q\ & ((\DRAM|new_sdram_controller_0|m_addr[6]~0_combout\) # ((\DRAM|new_sdram_controller_0|active_addr\(6))))) # 
-- (!\DRAM|new_sdram_controller_0|m_state.000010000~q\ & (!\DRAM|new_sdram_controller_0|m_addr[6]~0_combout\ & ((!\DRAM|new_sdram_controller_0|i_addr\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_state.000010000~q\,
	datab => \DRAM|new_sdram_controller_0|m_addr[6]~0_combout\,
	datac => \DRAM|new_sdram_controller_0|active_addr\(6),
	datad => \DRAM|new_sdram_controller_0|i_addr\(12),
	combout => \DRAM|new_sdram_controller_0|Selector92~0_combout\);

-- Location: LCCOMB_X70_Y21_N14
\DRAM|new_sdram_controller_0|Selector92~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector92~1_combout\ = (\DRAM|new_sdram_controller_0|m_addr[6]~0_combout\ & ((\DRAM|new_sdram_controller_0|Selector92~0_combout\ & 
-- ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[24]~21_combout\))) # (!\DRAM|new_sdram_controller_0|Selector92~0_combout\ & (\DRAM|new_sdram_controller_0|active_addr\(17))))) # 
-- (!\DRAM|new_sdram_controller_0|m_addr[6]~0_combout\ & (((\DRAM|new_sdram_controller_0|Selector92~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|active_addr\(17),
	datab => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[24]~21_combout\,
	datac => \DRAM|new_sdram_controller_0|m_addr[6]~0_combout\,
	datad => \DRAM|new_sdram_controller_0|Selector92~0_combout\,
	combout => \DRAM|new_sdram_controller_0|Selector92~1_combout\);

-- Location: DDIOOUTCELL_X78_Y20_N26
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

-- Location: LCCOMB_X65_Y28_N4
\memaddress~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memaddress~22_combout\ = (!\DE10Reset~input_o\ & addressCounter(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DE10Reset~input_o\,
	datac => addressCounter(8),
	combout => \memaddress~22_combout\);

-- Location: LCCOMB_X69_Y24_N16
\memaddress[8]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- memaddress(8) = (GLOBAL(\estado_pres.e1~clkctrl_outclk\) & (memaddress(8))) # (!GLOBAL(\estado_pres.e1~clkctrl_outclk\) & ((\memaddress~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => memaddress(8),
	datac => \memaddress~22_combout\,
	datad => \estado_pres.e1~clkctrl_outclk\,
	combout => memaddress(8));

-- Location: LCCOMB_X69_Y24_N26
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[25]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[25]~feeder_combout\ = memaddress(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => memaddress(8),
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[25]~feeder_combout\);

-- Location: FF_X69_Y24_N27
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[25]~feeder_combout\,
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(25));

-- Location: FF_X69_Y24_N17
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => memaddress(8),
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(25));

-- Location: LCCOMB_X70_Y21_N26
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[25]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[25]~22_combout\ = (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(25)))) # (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\,
	datab => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(25),
	datad => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(25),
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[25]~22_combout\);

-- Location: FF_X70_Y21_N13
\DRAM|new_sdram_controller_0|active_addr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[25]~22_combout\,
	sload => VCC,
	ena => \DRAM|new_sdram_controller_0|active_addr[23]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|active_addr\(7));

-- Location: LCCOMB_X70_Y21_N10
\DRAM|new_sdram_controller_0|Selector91~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector91~0_combout\ = (\DRAM|new_sdram_controller_0|m_addr[6]~0_combout\ & (((\DRAM|new_sdram_controller_0|m_state.000010000~q\)))) # (!\DRAM|new_sdram_controller_0|m_addr[6]~0_combout\ & 
-- ((\DRAM|new_sdram_controller_0|m_state.000010000~q\ & (\DRAM|new_sdram_controller_0|active_addr\(7))) # (!\DRAM|new_sdram_controller_0|m_state.000010000~q\ & ((!\DRAM|new_sdram_controller_0|i_addr\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|active_addr\(7),
	datab => \DRAM|new_sdram_controller_0|i_addr\(12),
	datac => \DRAM|new_sdram_controller_0|m_addr[6]~0_combout\,
	datad => \DRAM|new_sdram_controller_0|m_state.000010000~q\,
	combout => \DRAM|new_sdram_controller_0|Selector91~0_combout\);

-- Location: LCCOMB_X70_Y21_N12
\DRAM|new_sdram_controller_0|Selector91~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector91~1_combout\ = (\DRAM|new_sdram_controller_0|m_addr[6]~0_combout\ & ((\DRAM|new_sdram_controller_0|Selector91~0_combout\ & 
-- ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[25]~22_combout\))) # (!\DRAM|new_sdram_controller_0|Selector91~0_combout\ & (\DRAM|new_sdram_controller_0|active_addr\(18))))) # 
-- (!\DRAM|new_sdram_controller_0|m_addr[6]~0_combout\ & (((\DRAM|new_sdram_controller_0|Selector91~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|active_addr\(18),
	datab => \DRAM|new_sdram_controller_0|m_addr[6]~0_combout\,
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[25]~22_combout\,
	datad => \DRAM|new_sdram_controller_0|Selector91~0_combout\,
	combout => \DRAM|new_sdram_controller_0|Selector91~1_combout\);

-- Location: DDIOOUTCELL_X78_Y24_N26
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

-- Location: LCCOMB_X65_Y28_N2
\memaddress~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memaddress~23_combout\ = (!\DE10Reset~input_o\ & addressCounter(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DE10Reset~input_o\,
	datad => addressCounter(9),
	combout => \memaddress~23_combout\);

-- Location: LCCOMB_X66_Y24_N4
\memaddress[9]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- memaddress(9) = (GLOBAL(\estado_pres.e1~clkctrl_outclk\) & (memaddress(9))) # (!GLOBAL(\estado_pres.e1~clkctrl_outclk\) & ((\memaddress~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => memaddress(9),
	datac => \memaddress~23_combout\,
	datad => \estado_pres.e1~clkctrl_outclk\,
	combout => memaddress(9));

-- Location: FF_X66_Y24_N5
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => memaddress(9),
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(26));

-- Location: FF_X66_Y24_N7
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	asdata => memaddress(9),
	sload => VCC,
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(26));

-- Location: LCCOMB_X70_Y21_N8
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[26]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[26]~23_combout\ = (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
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
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[26]~23_combout\);

-- Location: FF_X70_Y21_N9
\DRAM|new_sdram_controller_0|active_addr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[26]~23_combout\,
	ena => \DRAM|new_sdram_controller_0|active_addr[23]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|active_addr\(8));

-- Location: LCCOMB_X70_Y21_N2
\DRAM|new_sdram_controller_0|Selector90~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector90~0_combout\ = (\DRAM|new_sdram_controller_0|m_state.000010000~q\ & (((\DRAM|new_sdram_controller_0|m_addr[6]~0_combout\) # (\DRAM|new_sdram_controller_0|active_addr\(8))))) # 
-- (!\DRAM|new_sdram_controller_0|m_state.000010000~q\ & (!\DRAM|new_sdram_controller_0|i_addr\(12) & (!\DRAM|new_sdram_controller_0|m_addr[6]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_state.000010000~q\,
	datab => \DRAM|new_sdram_controller_0|i_addr\(12),
	datac => \DRAM|new_sdram_controller_0|m_addr[6]~0_combout\,
	datad => \DRAM|new_sdram_controller_0|active_addr\(8),
	combout => \DRAM|new_sdram_controller_0|Selector90~0_combout\);

-- Location: LCCOMB_X70_Y21_N4
\DRAM|new_sdram_controller_0|Selector90~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector90~1_combout\ = (\DRAM|new_sdram_controller_0|m_addr[6]~0_combout\ & ((\DRAM|new_sdram_controller_0|Selector90~0_combout\ & 
-- ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[26]~23_combout\))) # (!\DRAM|new_sdram_controller_0|Selector90~0_combout\ & (\DRAM|new_sdram_controller_0|active_addr\(19))))) # 
-- (!\DRAM|new_sdram_controller_0|m_addr[6]~0_combout\ & (((\DRAM|new_sdram_controller_0|Selector90~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|active_addr\(19),
	datab => \DRAM|new_sdram_controller_0|m_addr[6]~0_combout\,
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[26]~23_combout\,
	datad => \DRAM|new_sdram_controller_0|Selector90~0_combout\,
	combout => \DRAM|new_sdram_controller_0|Selector90~1_combout\);

-- Location: DDIOOUTCELL_X78_Y24_N18
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

-- Location: LCCOMB_X65_Y24_N24
\memaddress~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \memaddress~24_combout\ = (!\DE10Reset~input_o\ & addressCounter(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DE10Reset~input_o\,
	datad => addressCounter(10),
	combout => \memaddress~24_combout\);

-- Location: LCCOMB_X65_Y24_N0
\memaddress[10]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- memaddress(10) = (GLOBAL(\estado_pres.e1~clkctrl_outclk\) & (memaddress(10))) # (!GLOBAL(\estado_pres.e1~clkctrl_outclk\) & ((\memaddress~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_pres.e1~clkctrl_outclk\,
	datab => memaddress(10),
	datad => \memaddress~24_combout\,
	combout => memaddress(10));

-- Location: LCCOMB_X69_Y24_N18
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[27]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[27]~feeder_combout\ = memaddress(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => memaddress(10),
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[27]~feeder_combout\);

-- Location: FF_X69_Y24_N19
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[27]~feeder_combout\,
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(27));

-- Location: LCCOMB_X69_Y24_N4
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[27]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[27]~feeder_combout\ = memaddress(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => memaddress(10),
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[27]~feeder_combout\);

-- Location: FF_X69_Y24_N5
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[27]~feeder_combout\,
	ena => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(27));

-- Location: LCCOMB_X70_Y21_N22
\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[27]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[27]~24_combout\ = (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(27)))) # (!\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\ & 
-- (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_0\(27),
	datab => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|entry_1\(27),
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_address~q\,
	combout => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[27]~24_combout\);

-- Location: FF_X70_Y21_N23
\DRAM|new_sdram_controller_0|active_addr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[27]~24_combout\,
	ena => \DRAM|new_sdram_controller_0|active_addr[23]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|active_addr\(9));

-- Location: LCCOMB_X70_Y21_N28
\DRAM|new_sdram_controller_0|Selector89~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector89~0_combout\ = (\DRAM|new_sdram_controller_0|m_state.000010000~q\ & (((\DRAM|new_sdram_controller_0|m_addr[6]~0_combout\) # (\DRAM|new_sdram_controller_0|active_addr\(9))))) # 
-- (!\DRAM|new_sdram_controller_0|m_state.000010000~q\ & (!\DRAM|new_sdram_controller_0|i_addr\(12) & (!\DRAM|new_sdram_controller_0|m_addr[6]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_state.000010000~q\,
	datab => \DRAM|new_sdram_controller_0|i_addr\(12),
	datac => \DRAM|new_sdram_controller_0|m_addr[6]~0_combout\,
	datad => \DRAM|new_sdram_controller_0|active_addr\(9),
	combout => \DRAM|new_sdram_controller_0|Selector89~0_combout\);

-- Location: LCCOMB_X70_Y21_N6
\DRAM|new_sdram_controller_0|Selector89~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector89~1_combout\ = (\DRAM|new_sdram_controller_0|m_addr[6]~0_combout\ & ((\DRAM|new_sdram_controller_0|Selector89~0_combout\ & 
-- (\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[27]~24_combout\)) # (!\DRAM|new_sdram_controller_0|Selector89~0_combout\ & ((\DRAM|new_sdram_controller_0|active_addr\(20)))))) # 
-- (!\DRAM|new_sdram_controller_0|m_addr[6]~0_combout\ & (((\DRAM|new_sdram_controller_0|Selector89~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[27]~24_combout\,
	datab => \DRAM|new_sdram_controller_0|active_addr\(20),
	datac => \DRAM|new_sdram_controller_0|m_addr[6]~0_combout\,
	datad => \DRAM|new_sdram_controller_0|Selector89~0_combout\,
	combout => \DRAM|new_sdram_controller_0|Selector89~1_combout\);

-- Location: DDIOOUTCELL_X78_Y24_N11
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

-- Location: LCCOMB_X71_Y21_N18
\DRAM|new_sdram_controller_0|Selector88~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector88~0_combout\ = (!\DRAM|new_sdram_controller_0|m_state.000010000~q\ & ((\DRAM|new_sdram_controller_0|m_state.000000010~q\ & ((\DRAM|new_sdram_controller_0|active_addr\(21)))) # 
-- (!\DRAM|new_sdram_controller_0|m_state.000000010~q\ & (!\DRAM|new_sdram_controller_0|i_addr\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|i_addr\(12),
	datab => \DRAM|new_sdram_controller_0|active_addr\(21),
	datac => \DRAM|new_sdram_controller_0|m_state.000010000~q\,
	datad => \DRAM|new_sdram_controller_0|m_state.000000010~q\,
	combout => \DRAM|new_sdram_controller_0|Selector88~0_combout\);

-- Location: LCCOMB_X71_Y21_N16
\DRAM|new_sdram_controller_0|Selector88~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector88~1_combout\ = (\DRAM|new_sdram_controller_0|m_state.001000000~q\) # (\DRAM|new_sdram_controller_0|Selector88~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DRAM|new_sdram_controller_0|m_state.001000000~q\,
	datad => \DRAM|new_sdram_controller_0|Selector88~0_combout\,
	combout => \DRAM|new_sdram_controller_0|Selector88~1_combout\);

-- Location: DDIOOUTCELL_X78_Y20_N11
\DRAM|new_sdram_controller_0|m_addr[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|Selector88~1_combout\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	ena => \DRAM|new_sdram_controller_0|Selector93~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|m_addr\(10));

-- Location: LCCOMB_X71_Y21_N26
\DRAM|new_sdram_controller_0|Selector87~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector87~0_combout\ = (!\DRAM|new_sdram_controller_0|m_state.000010000~q\ & ((\DRAM|new_sdram_controller_0|m_state.000000010~q\ & ((\DRAM|new_sdram_controller_0|active_addr\(22)))) # 
-- (!\DRAM|new_sdram_controller_0|m_state.000000010~q\ & (!\DRAM|new_sdram_controller_0|i_addr\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|i_addr\(12),
	datab => \DRAM|new_sdram_controller_0|m_state.000010000~q\,
	datac => \DRAM|new_sdram_controller_0|active_addr\(22),
	datad => \DRAM|new_sdram_controller_0|m_state.000000010~q\,
	combout => \DRAM|new_sdram_controller_0|Selector87~0_combout\);

-- Location: LCCOMB_X74_Y21_N20
\DRAM|new_sdram_controller_0|Selector87~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector87~1_combout\ = (\DRAM|new_sdram_controller_0|m_state.001000000~q\) # (\DRAM|new_sdram_controller_0|Selector87~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DRAM|new_sdram_controller_0|m_state.001000000~q\,
	datad => \DRAM|new_sdram_controller_0|Selector87~0_combout\,
	combout => \DRAM|new_sdram_controller_0|Selector87~1_combout\);

-- Location: DDIOOUTCELL_X78_Y24_N4
\DRAM|new_sdram_controller_0|m_addr[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|Selector87~1_combout\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	ena => \DRAM|new_sdram_controller_0|Selector93~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|m_addr\(11));

-- Location: LCCOMB_X71_Y21_N2
\DRAM|new_sdram_controller_0|Selector86~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector86~0_combout\ = (!\DRAM|new_sdram_controller_0|m_state.000010000~q\ & ((\DRAM|new_sdram_controller_0|m_state.000000010~q\ & ((\DRAM|new_sdram_controller_0|active_addr\(23)))) # 
-- (!\DRAM|new_sdram_controller_0|m_state.000000010~q\ & (!\DRAM|new_sdram_controller_0|i_addr\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|i_addr\(12),
	datab => \DRAM|new_sdram_controller_0|active_addr\(23),
	datac => \DRAM|new_sdram_controller_0|m_state.000010000~q\,
	datad => \DRAM|new_sdram_controller_0|m_state.000000010~q\,
	combout => \DRAM|new_sdram_controller_0|Selector86~0_combout\);

-- Location: LCCOMB_X71_Y21_N0
\DRAM|new_sdram_controller_0|Selector86~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector86~1_combout\ = (\DRAM|new_sdram_controller_0|m_state.001000000~q\) # (\DRAM|new_sdram_controller_0|Selector86~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DRAM|new_sdram_controller_0|m_state.001000000~q\,
	datad => \DRAM|new_sdram_controller_0|Selector86~0_combout\,
	combout => \DRAM|new_sdram_controller_0|Selector86~1_combout\);

-- Location: DDIOOUTCELL_X78_Y20_N4
\DRAM|new_sdram_controller_0|m_addr[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DRAM|sys_sdram_pll_0|sys_pll|PLL_for_DE_Series_Boards|auto_generated|clk[0]~clkctrl_outclk\,
	d => \DRAM|new_sdram_controller_0|Selector86~1_combout\,
	clrn => \DRAM|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	ena => \DRAM|new_sdram_controller_0|Selector93~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DRAM|new_sdram_controller_0|m_addr\(12));

-- Location: LCCOMB_X70_Y20_N28
\DRAM|new_sdram_controller_0|Selector100~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector100~0_combout\ = (\DRAM|new_sdram_controller_0|m_state.000000010~q\ & (\DRAM|new_sdram_controller_0|active_addr\(10))) # (!\DRAM|new_sdram_controller_0|m_state.000000010~q\ & 
-- ((\DRAM|new_sdram_controller_0|f_select~combout\ & ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[28]~1_combout\))) # (!\DRAM|new_sdram_controller_0|f_select~combout\ & 
-- (\DRAM|new_sdram_controller_0|active_addr\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|active_addr\(10),
	datab => \DRAM|new_sdram_controller_0|m_state.000000010~q\,
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[28]~1_combout\,
	datad => \DRAM|new_sdram_controller_0|f_select~combout\,
	combout => \DRAM|new_sdram_controller_0|Selector100~0_combout\);

-- Location: DDIOOUTCELL_X78_Y18_N11
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

-- Location: LCCOMB_X70_Y20_N20
\DRAM|new_sdram_controller_0|Selector99~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector99~0_combout\ = (\DRAM|new_sdram_controller_0|m_state.000000010~q\ & (\DRAM|new_sdram_controller_0|active_addr\(24))) # (!\DRAM|new_sdram_controller_0|m_state.000000010~q\ & 
-- ((\DRAM|new_sdram_controller_0|f_select~combout\ & ((\DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[42]~0_combout\))) # (!\DRAM|new_sdram_controller_0|f_select~combout\ & 
-- (\DRAM|new_sdram_controller_0|active_addr\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|active_addr\(24),
	datab => \DRAM|new_sdram_controller_0|m_state.000000010~q\,
	datac => \DRAM|new_sdram_controller_0|the_SDRAMtest_new_sdram_controller_0_input_efifo_module|rd_data[42]~0_combout\,
	datad => \DRAM|new_sdram_controller_0|f_select~combout\,
	combout => \DRAM|new_sdram_controller_0|Selector99~0_combout\);

-- Location: DDIOOUTCELL_X78_Y18_N4
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

-- Location: LCCOMB_X70_Y20_N14
\DRAM|new_sdram_controller_0|Selector21~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector21~0_combout\ = (\DRAM|new_sdram_controller_0|m_state.000010000~q\ & (\DRAM|new_sdram_controller_0|f_pop~q\ & !\DRAM|new_sdram_controller_0|pending~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DRAM|new_sdram_controller_0|m_state.000010000~q\,
	datac => \DRAM|new_sdram_controller_0|f_pop~q\,
	datad => \DRAM|new_sdram_controller_0|pending~combout\,
	combout => \DRAM|new_sdram_controller_0|Selector21~0_combout\);

-- Location: LCCOMB_X72_Y23_N24
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

-- Location: FF_X72_Y23_N25
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

-- Location: LCCOMB_X75_Y20_N8
\DRAM|new_sdram_controller_0|Selector21~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector21~1_combout\ = (!\DRAM|new_sdram_controller_0|m_state.000000001~q\ & ((\DRAM|new_sdram_controller_0|init_done~q\) # (!\DRAM|new_sdram_controller_0|i_cmd\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|init_done~q\,
	datab => \DRAM|new_sdram_controller_0|m_state.000000001~q\,
	datac => \DRAM|new_sdram_controller_0|i_cmd\(1),
	combout => \DRAM|new_sdram_controller_0|Selector21~1_combout\);

-- Location: LCCOMB_X75_Y20_N2
\DRAM|new_sdram_controller_0|Selector21~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector21~2_combout\ = (!\DRAM|new_sdram_controller_0|Selector21~0_combout\ & (!\DRAM|new_sdram_controller_0|Selector21~1_combout\ & ((\DRAM|new_sdram_controller_0|m_state.010000000~q\) # 
-- (!\DRAM|new_sdram_controller_0|WideOr9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|Selector21~0_combout\,
	datab => \DRAM|new_sdram_controller_0|m_state.010000000~q\,
	datac => \DRAM|new_sdram_controller_0|Selector21~1_combout\,
	datad => \DRAM|new_sdram_controller_0|WideOr9~0_combout\,
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

-- Location: LCCOMB_X74_Y20_N8
\DRAM|new_sdram_controller_0|Selector19~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector19~1_combout\ = (!\DRAM|new_sdram_controller_0|m_state.010000000~q\ & (\DRAM|new_sdram_controller_0|m_state.000000001~q\ & (!\DRAM|new_sdram_controller_0|m_state.001000000~q\ & 
-- !\DRAM|new_sdram_controller_0|m_state.000000100~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_state.010000000~q\,
	datab => \DRAM|new_sdram_controller_0|m_state.000000001~q\,
	datac => \DRAM|new_sdram_controller_0|m_state.001000000~q\,
	datad => \DRAM|new_sdram_controller_0|m_state.000000100~q\,
	combout => \DRAM|new_sdram_controller_0|Selector19~1_combout\);

-- Location: LCCOMB_X74_Y20_N10
\DRAM|new_sdram_controller_0|Selector19~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector19~2_combout\ = (\DRAM|new_sdram_controller_0|m_next.010000000~q\ & (((\DRAM|new_sdram_controller_0|m_state.001000000~q\ & !\DRAM|new_sdram_controller_0|refresh_request~q\)))) # 
-- (!\DRAM|new_sdram_controller_0|m_next.010000000~q\ & ((\DRAM|new_sdram_controller_0|m_state.000000100~q\) # ((\DRAM|new_sdram_controller_0|m_state.001000000~q\ & !\DRAM|new_sdram_controller_0|refresh_request~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_next.010000000~q\,
	datab => \DRAM|new_sdram_controller_0|m_state.000000100~q\,
	datac => \DRAM|new_sdram_controller_0|m_state.001000000~q\,
	datad => \DRAM|new_sdram_controller_0|refresh_request~q\,
	combout => \DRAM|new_sdram_controller_0|Selector19~2_combout\);

-- Location: LCCOMB_X72_Y23_N6
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

-- Location: FF_X72_Y23_N7
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

-- Location: LCCOMB_X75_Y20_N26
\DRAM|new_sdram_controller_0|Selector19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector19~0_combout\ = (!\DRAM|new_sdram_controller_0|m_state.000000001~q\ & ((\DRAM|new_sdram_controller_0|init_done~q\ & ((!\DRAM|new_sdram_controller_0|refresh_request~q\))) # (!\DRAM|new_sdram_controller_0|init_done~q\ & 
-- (!\DRAM|new_sdram_controller_0|i_cmd\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|init_done~q\,
	datab => \DRAM|new_sdram_controller_0|m_state.000000001~q\,
	datac => \DRAM|new_sdram_controller_0|i_cmd\(3),
	datad => \DRAM|new_sdram_controller_0|refresh_request~q\,
	combout => \DRAM|new_sdram_controller_0|Selector19~0_combout\);

-- Location: LCCOMB_X75_Y17_N20
\DRAM|new_sdram_controller_0|Selector19~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector19~3_combout\ = (!\DRAM|new_sdram_controller_0|Selector19~0_combout\ & (((!\DRAM|new_sdram_controller_0|Selector19~1_combout\ & !\DRAM|new_sdram_controller_0|Selector19~2_combout\)) # 
-- (!\DRAM|new_sdram_controller_0|active_cs_n~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|Selector19~1_combout\,
	datab => \DRAM|new_sdram_controller_0|Selector19~2_combout\,
	datac => \DRAM|new_sdram_controller_0|active_cs_n~q\,
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

-- Location: LCCOMB_X72_Y23_N8
\DRAM|new_sdram_controller_0|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector1~0_combout\ = (\DRAM|new_sdram_controller_0|i_state.000~q\ & (!\DRAM|new_sdram_controller_0|i_state.011~q\ & ((\DRAM|new_sdram_controller_0|i_cmd\(2)) # (!\DRAM|new_sdram_controller_0|i_state.101~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|i_state.101~q\,
	datab => \DRAM|new_sdram_controller_0|i_state.000~q\,
	datac => \DRAM|new_sdram_controller_0|i_cmd\(2),
	datad => \DRAM|new_sdram_controller_0|i_state.011~q\,
	combout => \DRAM|new_sdram_controller_0|Selector1~0_combout\);

-- Location: FF_X72_Y23_N9
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

-- Location: LCCOMB_X75_Y20_N6
\DRAM|new_sdram_controller_0|Selector20~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector20~0_combout\ = (\DRAM|new_sdram_controller_0|m_state.000000001~q\ & (((!\DRAM|new_sdram_controller_0|WideOr8~0_combout\)))) # (!\DRAM|new_sdram_controller_0|m_state.000000001~q\ & 
-- (!\DRAM|new_sdram_controller_0|init_done~q\ & (\DRAM|new_sdram_controller_0|i_cmd\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|init_done~q\,
	datab => \DRAM|new_sdram_controller_0|m_state.000000001~q\,
	datac => \DRAM|new_sdram_controller_0|i_cmd\(2),
	datad => \DRAM|new_sdram_controller_0|WideOr8~0_combout\,
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

-- Location: LCCOMB_X72_Y23_N18
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

-- Location: FF_X72_Y23_N19
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

-- Location: LCCOMB_X75_Y20_N4
\DRAM|new_sdram_controller_0|Selector22~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector22~0_combout\ = (!\DRAM|new_sdram_controller_0|m_state.000000001~q\ & ((\DRAM|new_sdram_controller_0|init_done~q\) # (!\DRAM|new_sdram_controller_0|i_cmd\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|init_done~q\,
	datab => \DRAM|new_sdram_controller_0|m_state.000000001~q\,
	datad => \DRAM|new_sdram_controller_0|i_cmd\(0),
	combout => \DRAM|new_sdram_controller_0|Selector22~0_combout\);

-- Location: LCCOMB_X75_Y20_N14
\DRAM|new_sdram_controller_0|Selector22~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DRAM|new_sdram_controller_0|Selector22~1_combout\ = (!\DRAM|new_sdram_controller_0|Selector22~0_combout\ & (!\DRAM|new_sdram_controller_0|Selector21~0_combout\ & ((\DRAM|new_sdram_controller_0|m_state.001000000~q\) # 
-- (!\DRAM|new_sdram_controller_0|WideOr9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DRAM|new_sdram_controller_0|m_state.001000000~q\,
	datab => \DRAM|new_sdram_controller_0|WideOr9~0_combout\,
	datac => \DRAM|new_sdram_controller_0|Selector22~0_combout\,
	datad => \DRAM|new_sdram_controller_0|Selector21~0_combout\,
	combout => \DRAM|new_sdram_controller_0|Selector22~1_combout\);

-- Location: DDIOOUTCELL_X78_Y17_N25
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

-- Location: IOIBUF_X14_Y0_N15
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

-- Location: IOIBUF_X62_Y0_N29
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

-- Location: IOIBUF_X71_Y54_N29
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
	i => ww_DRAM_DQ(12),
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
	i => ww_DRAM_DQ(13),
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
	i => ww_DRAM_DQ(14),
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


