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

-- DATE "05/17/2023 00:15:13"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Octave IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	input : IN std_logic_vector(15 DOWNTO 0);
	output1 : OUT std_logic_vector(15 DOWNTO 0);
	output2 : OUT std_logic_vector(15 DOWNTO 0)
	);
END Octave;

-- Design Ports Information
-- output1[0]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output1[1]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output1[2]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output1[3]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output1[4]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output1[5]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output1[6]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output1[7]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output1[8]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output1[9]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output1[10]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output1[11]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output1[12]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output1[13]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output1[14]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output1[15]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output2[0]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output2[1]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output2[2]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output2[3]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output2[4]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output2[5]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output2[6]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output2[7]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output2[8]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output2[9]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output2[10]	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output2[11]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output2[12]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output2[13]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output2[14]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output2[15]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[0]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[1]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[2]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[3]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[4]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[5]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[6]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[7]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[8]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[9]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[10]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[11]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[12]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[13]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[14]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[15]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Octave IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_input : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_output1 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_output2 : std_logic_vector(15 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \output1[0]~output_o\ : std_logic;
SIGNAL \output1[1]~output_o\ : std_logic;
SIGNAL \output1[2]~output_o\ : std_logic;
SIGNAL \output1[3]~output_o\ : std_logic;
SIGNAL \output1[4]~output_o\ : std_logic;
SIGNAL \output1[5]~output_o\ : std_logic;
SIGNAL \output1[6]~output_o\ : std_logic;
SIGNAL \output1[7]~output_o\ : std_logic;
SIGNAL \output1[8]~output_o\ : std_logic;
SIGNAL \output1[9]~output_o\ : std_logic;
SIGNAL \output1[10]~output_o\ : std_logic;
SIGNAL \output1[11]~output_o\ : std_logic;
SIGNAL \output1[12]~output_o\ : std_logic;
SIGNAL \output1[13]~output_o\ : std_logic;
SIGNAL \output1[14]~output_o\ : std_logic;
SIGNAL \output1[15]~output_o\ : std_logic;
SIGNAL \output2[0]~output_o\ : std_logic;
SIGNAL \output2[1]~output_o\ : std_logic;
SIGNAL \output2[2]~output_o\ : std_logic;
SIGNAL \output2[3]~output_o\ : std_logic;
SIGNAL \output2[4]~output_o\ : std_logic;
SIGNAL \output2[5]~output_o\ : std_logic;
SIGNAL \output2[6]~output_o\ : std_logic;
SIGNAL \output2[7]~output_o\ : std_logic;
SIGNAL \output2[8]~output_o\ : std_logic;
SIGNAL \output2[9]~output_o\ : std_logic;
SIGNAL \output2[10]~output_o\ : std_logic;
SIGNAL \output2[11]~output_o\ : std_logic;
SIGNAL \output2[12]~output_o\ : std_logic;
SIGNAL \output2[13]~output_o\ : std_logic;
SIGNAL \output2[14]~output_o\ : std_logic;
SIGNAL \output2[15]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \input[0]~input_o\ : std_logic;
SIGNAL \counter~0_combout\ : std_logic;
SIGNAL \counter~q\ : std_logic;
SIGNAL \sample_hold[0]~feeder_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \output1~0_combout\ : std_logic;
SIGNAL \output1[0]~reg0_q\ : std_logic;
SIGNAL \input[1]~input_o\ : std_logic;
SIGNAL \sample_hold[1]~feeder_combout\ : std_logic;
SIGNAL \output1~1_combout\ : std_logic;
SIGNAL \output1[1]~reg0_q\ : std_logic;
SIGNAL \input[2]~input_o\ : std_logic;
SIGNAL \sample_hold[2]~feeder_combout\ : std_logic;
SIGNAL \output1~2_combout\ : std_logic;
SIGNAL \output1[2]~reg0_q\ : std_logic;
SIGNAL \input[3]~input_o\ : std_logic;
SIGNAL \sample_hold[3]~feeder_combout\ : std_logic;
SIGNAL \output1~3_combout\ : std_logic;
SIGNAL \output1[3]~reg0_q\ : std_logic;
SIGNAL \input[4]~input_o\ : std_logic;
SIGNAL \sample_hold[4]~feeder_combout\ : std_logic;
SIGNAL \output1~4_combout\ : std_logic;
SIGNAL \output1[4]~reg0_q\ : std_logic;
SIGNAL \input[5]~input_o\ : std_logic;
SIGNAL \sample_hold[5]~feeder_combout\ : std_logic;
SIGNAL \output1~5_combout\ : std_logic;
SIGNAL \output1[5]~reg0_q\ : std_logic;
SIGNAL \input[6]~input_o\ : std_logic;
SIGNAL \sample_hold[6]~feeder_combout\ : std_logic;
SIGNAL \output1~6_combout\ : std_logic;
SIGNAL \output1[6]~reg0_q\ : std_logic;
SIGNAL \input[7]~input_o\ : std_logic;
SIGNAL \sample_hold[7]~feeder_combout\ : std_logic;
SIGNAL \output1~7_combout\ : std_logic;
SIGNAL \output1[7]~reg0_q\ : std_logic;
SIGNAL \input[8]~input_o\ : std_logic;
SIGNAL \sample_hold[8]~feeder_combout\ : std_logic;
SIGNAL \output1~8_combout\ : std_logic;
SIGNAL \output1[8]~reg0_q\ : std_logic;
SIGNAL \input[9]~input_o\ : std_logic;
SIGNAL \sample_hold[9]~feeder_combout\ : std_logic;
SIGNAL \output1~9_combout\ : std_logic;
SIGNAL \output1[9]~reg0_q\ : std_logic;
SIGNAL \input[10]~input_o\ : std_logic;
SIGNAL \sample_hold[10]~feeder_combout\ : std_logic;
SIGNAL \output1~10_combout\ : std_logic;
SIGNAL \output1[10]~reg0_q\ : std_logic;
SIGNAL \input[11]~input_o\ : std_logic;
SIGNAL \sample_hold[11]~feeder_combout\ : std_logic;
SIGNAL \output1~11_combout\ : std_logic;
SIGNAL \output1[11]~reg0_q\ : std_logic;
SIGNAL \input[12]~input_o\ : std_logic;
SIGNAL \sample_hold[12]~feeder_combout\ : std_logic;
SIGNAL \output1~12_combout\ : std_logic;
SIGNAL \output1[12]~reg0_q\ : std_logic;
SIGNAL \input[13]~input_o\ : std_logic;
SIGNAL \sample_hold[13]~feeder_combout\ : std_logic;
SIGNAL \output1~13_combout\ : std_logic;
SIGNAL \output1[13]~reg0_q\ : std_logic;
SIGNAL \input[14]~input_o\ : std_logic;
SIGNAL \sample_hold[14]~feeder_combout\ : std_logic;
SIGNAL \output1~14_combout\ : std_logic;
SIGNAL \output1[14]~reg0_q\ : std_logic;
SIGNAL \input[15]~input_o\ : std_logic;
SIGNAL \sample_hold[15]~feeder_combout\ : std_logic;
SIGNAL \output1~15_combout\ : std_logic;
SIGNAL \output1[15]~reg0_q\ : std_logic;
SIGNAL sample_hold : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_input <= input;
output1 <= ww_output1;
output2 <= ww_output2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y42_N12
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X20_Y39_N2
\output1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output1[0]~reg0_q\,
	devoe => ww_devoe,
	o => \output1[0]~output_o\);

-- Location: IOOBUF_X29_Y39_N9
\output1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output1[1]~reg0_q\,
	devoe => ww_devoe,
	o => \output1[1]~output_o\);

-- Location: IOOBUF_X34_Y39_N23
\output1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output1[2]~reg0_q\,
	devoe => ww_devoe,
	o => \output1[2]~output_o\);

-- Location: IOOBUF_X29_Y39_N16
\output1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output1[3]~reg0_q\,
	devoe => ww_devoe,
	o => \output1[3]~output_o\);

-- Location: IOOBUF_X31_Y39_N23
\output1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output1[4]~reg0_q\,
	devoe => ww_devoe,
	o => \output1[4]~output_o\);

-- Location: IOOBUF_X34_Y39_N30
\output1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output1[5]~reg0_q\,
	devoe => ww_devoe,
	o => \output1[5]~output_o\);

-- Location: IOOBUF_X31_Y39_N30
\output1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output1[6]~reg0_q\,
	devoe => ww_devoe,
	o => \output1[6]~output_o\);

-- Location: IOOBUF_X36_Y39_N30
\output1[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output1[7]~reg0_q\,
	devoe => ww_devoe,
	o => \output1[7]~output_o\);

-- Location: IOOBUF_X24_Y39_N2
\output1[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output1[8]~reg0_q\,
	devoe => ww_devoe,
	o => \output1[8]~output_o\);

-- Location: IOOBUF_X0_Y36_N23
\output1[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output1[9]~reg0_q\,
	devoe => ww_devoe,
	o => \output1[9]~output_o\);

-- Location: IOOBUF_X20_Y39_N16
\output1[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output1[10]~reg0_q\,
	devoe => ww_devoe,
	o => \output1[10]~output_o\);

-- Location: IOOBUF_X24_Y39_N16
\output1[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output1[11]~reg0_q\,
	devoe => ww_devoe,
	o => \output1[11]~output_o\);

-- Location: IOOBUF_X0_Y36_N2
\output1[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output1[12]~reg0_q\,
	devoe => ww_devoe,
	o => \output1[12]~output_o\);

-- Location: IOOBUF_X24_Y39_N9
\output1[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output1[13]~reg0_q\,
	devoe => ww_devoe,
	o => \output1[13]~output_o\);

-- Location: IOOBUF_X22_Y39_N23
\output1[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output1[14]~reg0_q\,
	devoe => ww_devoe,
	o => \output1[14]~output_o\);

-- Location: IOOBUF_X20_Y39_N9
\output1[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output1[15]~reg0_q\,
	devoe => ww_devoe,
	o => \output1[15]~output_o\);

-- Location: IOOBUF_X66_Y54_N9
\output2[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output2[0]~output_o\);

-- Location: IOOBUF_X0_Y3_N16
\output2[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output2[1]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\output2[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output2[2]~output_o\);

-- Location: IOOBUF_X62_Y0_N30
\output2[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output2[3]~output_o\);

-- Location: IOOBUF_X22_Y0_N2
\output2[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output2[4]~output_o\);

-- Location: IOOBUF_X0_Y10_N16
\output2[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output2[5]~output_o\);

-- Location: IOOBUF_X49_Y54_N30
\output2[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output2[6]~output_o\);

-- Location: IOOBUF_X24_Y0_N30
\output2[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output2[7]~output_o\);

-- Location: IOOBUF_X0_Y30_N9
\output2[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output2[8]~output_o\);

-- Location: IOOBUF_X78_Y17_N2
\output2[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output2[9]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\output2[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output2[10]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\output2[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output2[11]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\output2[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output2[12]~output_o\);

-- Location: IOOBUF_X0_Y29_N9
\output2[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output2[13]~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\output2[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output2[14]~output_o\);

-- Location: IOOBUF_X58_Y54_N2
\output2[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output2[15]~output_o\);

-- Location: IOIBUF_X0_Y18_N15
\clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G3
\clk~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X22_Y39_N29
\input[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(0),
	o => \input[0]~input_o\);

-- Location: LCCOMB_X26_Y36_N14
\counter~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter~0_combout\ = !\counter~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter~q\,
	combout => \counter~0_combout\);

-- Location: FF_X26_Y36_N15
counter : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter~q\);

-- Location: LCCOMB_X25_Y36_N12
\sample_hold[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sample_hold[0]~feeder_combout\ = \input[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input[0]~input_o\,
	combout => \sample_hold[0]~feeder_combout\);

-- Location: IOIBUF_X0_Y18_N22
\reset~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G4
\reset~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: FF_X25_Y36_N13
\sample_hold[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sample_hold[0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sample_hold(0));

-- Location: LCCOMB_X26_Y36_N24
\output1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output1~0_combout\ = (\counter~q\ & (\input[0]~input_o\)) # (!\counter~q\ & ((sample_hold(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[0]~input_o\,
	datac => \counter~q\,
	datad => sample_hold(0),
	combout => \output1~0_combout\);

-- Location: FF_X26_Y36_N25
\output1[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output1~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output1[0]~reg0_q\);

-- Location: IOIBUF_X29_Y39_N1
\input[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(1),
	o => \input[1]~input_o\);

-- Location: LCCOMB_X27_Y36_N18
\sample_hold[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sample_hold[1]~feeder_combout\ = \input[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input[1]~input_o\,
	combout => \sample_hold[1]~feeder_combout\);

-- Location: FF_X27_Y36_N19
\sample_hold[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sample_hold[1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sample_hold(1));

-- Location: LCCOMB_X27_Y36_N28
\output1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output1~1_combout\ = (\counter~q\ & ((\input[1]~input_o\))) # (!\counter~q\ & (sample_hold(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sample_hold(1),
	datac => \input[1]~input_o\,
	datad => \counter~q\,
	combout => \output1~1_combout\);

-- Location: FF_X27_Y36_N29
\output1[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output1~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output1[1]~reg0_q\);

-- Location: IOIBUF_X31_Y39_N15
\input[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(2),
	o => \input[2]~input_o\);

-- Location: LCCOMB_X27_Y36_N8
\sample_hold[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sample_hold[2]~feeder_combout\ = \input[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input[2]~input_o\,
	combout => \sample_hold[2]~feeder_combout\);

-- Location: FF_X27_Y36_N9
\sample_hold[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sample_hold[2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sample_hold(2));

-- Location: LCCOMB_X27_Y36_N10
\output1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output1~2_combout\ = (\counter~q\ & (\input[2]~input_o\)) # (!\counter~q\ & ((sample_hold(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input[2]~input_o\,
	datac => sample_hold(2),
	datad => \counter~q\,
	combout => \output1~2_combout\);

-- Location: FF_X27_Y36_N11
\output1[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output1~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output1[2]~reg0_q\);

-- Location: IOIBUF_X31_Y39_N1
\input[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(3),
	o => \input[3]~input_o\);

-- Location: LCCOMB_X27_Y36_N30
\sample_hold[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sample_hold[3]~feeder_combout\ = \input[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input[3]~input_o\,
	combout => \sample_hold[3]~feeder_combout\);

-- Location: FF_X27_Y36_N31
\sample_hold[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sample_hold[3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sample_hold(3));

-- Location: LCCOMB_X27_Y36_N24
\output1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output1~3_combout\ = (\counter~q\ & (\input[3]~input_o\)) # (!\counter~q\ & ((sample_hold(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input[3]~input_o\,
	datac => sample_hold(3),
	datad => \counter~q\,
	combout => \output1~3_combout\);

-- Location: FF_X27_Y36_N25
\output1[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output1~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output1[3]~reg0_q\);

-- Location: IOIBUF_X34_Y39_N8
\input[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(4),
	o => \input[4]~input_o\);

-- Location: LCCOMB_X27_Y36_N4
\sample_hold[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sample_hold[4]~feeder_combout\ = \input[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input[4]~input_o\,
	combout => \sample_hold[4]~feeder_combout\);

-- Location: FF_X27_Y36_N5
\sample_hold[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sample_hold[4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sample_hold(4));

-- Location: LCCOMB_X27_Y36_N2
\output1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output1~4_combout\ = (\counter~q\ & (\input[4]~input_o\)) # (!\counter~q\ & ((sample_hold(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[4]~input_o\,
	datac => sample_hold(4),
	datad => \counter~q\,
	combout => \output1~4_combout\);

-- Location: FF_X27_Y36_N3
\output1[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output1~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output1[4]~reg0_q\);

-- Location: IOIBUF_X31_Y39_N8
\input[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(5),
	o => \input[5]~input_o\);

-- Location: LCCOMB_X27_Y36_N22
\sample_hold[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sample_hold[5]~feeder_combout\ = \input[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input[5]~input_o\,
	combout => \sample_hold[5]~feeder_combout\);

-- Location: FF_X27_Y36_N23
\sample_hold[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sample_hold[5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sample_hold(5));

-- Location: LCCOMB_X27_Y36_N16
\output1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output1~5_combout\ = (\counter~q\ & (\input[5]~input_o\)) # (!\counter~q\ & ((sample_hold(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[5]~input_o\,
	datac => sample_hold(5),
	datad => \counter~q\,
	combout => \output1~5_combout\);

-- Location: FF_X27_Y36_N17
\output1[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output1~5_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output1[5]~reg0_q\);

-- Location: IOIBUF_X34_Y39_N1
\input[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(6),
	o => \input[6]~input_o\);

-- Location: LCCOMB_X27_Y36_N12
\sample_hold[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sample_hold[6]~feeder_combout\ = \input[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input[6]~input_o\,
	combout => \sample_hold[6]~feeder_combout\);

-- Location: FF_X27_Y36_N13
\sample_hold[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sample_hold[6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sample_hold(6));

-- Location: LCCOMB_X27_Y36_N14
\output1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output1~6_combout\ = (\counter~q\ & ((\input[6]~input_o\))) # (!\counter~q\ & (sample_hold(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sample_hold(6),
	datab => \input[6]~input_o\,
	datad => \counter~q\,
	combout => \output1~6_combout\);

-- Location: FF_X27_Y36_N15
\output1[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output1~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output1[6]~reg0_q\);

-- Location: IOIBUF_X34_Y39_N15
\input[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(7),
	o => \input[7]~input_o\);

-- Location: LCCOMB_X27_Y36_N26
\sample_hold[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sample_hold[7]~feeder_combout\ = \input[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input[7]~input_o\,
	combout => \sample_hold[7]~feeder_combout\);

-- Location: FF_X27_Y36_N27
\sample_hold[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sample_hold[7]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sample_hold(7));

-- Location: LCCOMB_X27_Y36_N20
\output1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output1~7_combout\ = (\counter~q\ & (\input[7]~input_o\)) # (!\counter~q\ & ((sample_hold(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input[7]~input_o\,
	datac => sample_hold(7),
	datad => \counter~q\,
	combout => \output1~7_combout\);

-- Location: FF_X27_Y36_N21
\output1[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output1~7_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output1[7]~reg0_q\);

-- Location: IOIBUF_X26_Y39_N29
\input[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(8),
	o => \input[8]~input_o\);

-- Location: LCCOMB_X26_Y36_N16
\sample_hold[8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sample_hold[8]~feeder_combout\ = \input[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input[8]~input_o\,
	combout => \sample_hold[8]~feeder_combout\);

-- Location: FF_X26_Y36_N17
\sample_hold[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sample_hold[8]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sample_hold(8));

-- Location: LCCOMB_X26_Y36_N30
\output1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output1~8_combout\ = (\counter~q\ & (\input[8]~input_o\)) # (!\counter~q\ & ((sample_hold(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input[8]~input_o\,
	datac => \counter~q\,
	datad => sample_hold(8),
	combout => \output1~8_combout\);

-- Location: FF_X26_Y36_N31
\output1[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output1~8_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output1[8]~reg0_q\);

-- Location: IOIBUF_X26_Y39_N15
\input[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(9),
	o => \input[9]~input_o\);

-- Location: LCCOMB_X26_Y36_N18
\sample_hold[9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sample_hold[9]~feeder_combout\ = \input[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input[9]~input_o\,
	combout => \sample_hold[9]~feeder_combout\);

-- Location: FF_X26_Y36_N19
\sample_hold[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sample_hold[9]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sample_hold(9));

-- Location: LCCOMB_X26_Y36_N4
\output1~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output1~9_combout\ = (\counter~q\ & (\input[9]~input_o\)) # (!\counter~q\ & ((sample_hold(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input[9]~input_o\,
	datac => \counter~q\,
	datad => sample_hold(9),
	combout => \output1~9_combout\);

-- Location: FF_X26_Y36_N5
\output1[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output1~9_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output1[9]~reg0_q\);

-- Location: IOIBUF_X26_Y39_N8
\input[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(10),
	o => \input[10]~input_o\);

-- Location: LCCOMB_X26_Y36_N12
\sample_hold[10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sample_hold[10]~feeder_combout\ = \input[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input[10]~input_o\,
	combout => \sample_hold[10]~feeder_combout\);

-- Location: FF_X26_Y36_N13
\sample_hold[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sample_hold[10]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sample_hold(10));

-- Location: LCCOMB_X26_Y36_N6
\output1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output1~10_combout\ = (\counter~q\ & (\input[10]~input_o\)) # (!\counter~q\ & ((sample_hold(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input[10]~input_o\,
	datac => \counter~q\,
	datad => sample_hold(10),
	combout => \output1~10_combout\);

-- Location: FF_X26_Y36_N7
\output1[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output1~10_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output1[10]~reg0_q\);

-- Location: IOIBUF_X24_Y39_N22
\input[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(11),
	o => \input[11]~input_o\);

-- Location: LCCOMB_X25_Y36_N14
\sample_hold[11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sample_hold[11]~feeder_combout\ = \input[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input[11]~input_o\,
	combout => \sample_hold[11]~feeder_combout\);

-- Location: FF_X25_Y36_N15
\sample_hold[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sample_hold[11]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sample_hold(11));

-- Location: LCCOMB_X26_Y36_N28
\output1~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output1~11_combout\ = (\counter~q\ & (\input[11]~input_o\)) # (!\counter~q\ & ((sample_hold(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input[11]~input_o\,
	datac => \counter~q\,
	datad => sample_hold(11),
	combout => \output1~11_combout\);

-- Location: FF_X26_Y36_N29
\output1[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output1~11_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output1[11]~reg0_q\);

-- Location: IOIBUF_X26_Y39_N1
\input[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(12),
	o => \input[12]~input_o\);

-- Location: LCCOMB_X26_Y36_N2
\sample_hold[12]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sample_hold[12]~feeder_combout\ = \input[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input[12]~input_o\,
	combout => \sample_hold[12]~feeder_combout\);

-- Location: FF_X26_Y36_N3
\sample_hold[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sample_hold[12]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sample_hold(12));

-- Location: LCCOMB_X26_Y36_N22
\output1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output1~12_combout\ = (\counter~q\ & (\input[12]~input_o\)) # (!\counter~q\ & ((sample_hold(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[12]~input_o\,
	datac => \counter~q\,
	datad => sample_hold(12),
	combout => \output1~12_combout\);

-- Location: FF_X26_Y36_N23
\output1[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output1~12_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output1[12]~reg0_q\);

-- Location: IOIBUF_X26_Y39_N22
\input[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(13),
	o => \input[13]~input_o\);

-- Location: LCCOMB_X26_Y36_N20
\sample_hold[13]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sample_hold[13]~feeder_combout\ = \input[13]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input[13]~input_o\,
	combout => \sample_hold[13]~feeder_combout\);

-- Location: FF_X26_Y36_N21
\sample_hold[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sample_hold[13]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sample_hold(13));

-- Location: LCCOMB_X26_Y36_N0
\output1~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output1~13_combout\ = (\counter~q\ & (\input[13]~input_o\)) # (!\counter~q\ & ((sample_hold(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[13]~input_o\,
	datac => \counter~q\,
	datad => sample_hold(13),
	combout => \output1~13_combout\);

-- Location: FF_X26_Y36_N1
\output1[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output1~13_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output1[13]~reg0_q\);

-- Location: IOIBUF_X24_Y39_N29
\input[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(14),
	o => \input[14]~input_o\);

-- Location: LCCOMB_X25_Y36_N24
\sample_hold[14]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sample_hold[14]~feeder_combout\ = \input[14]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input[14]~input_o\,
	combout => \sample_hold[14]~feeder_combout\);

-- Location: FF_X25_Y36_N25
\sample_hold[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sample_hold[14]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sample_hold(14));

-- Location: LCCOMB_X26_Y36_N26
\output1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output1~14_combout\ = (\counter~q\ & (\input[14]~input_o\)) # (!\counter~q\ & ((sample_hold(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[14]~input_o\,
	datac => \counter~q\,
	datad => sample_hold(14),
	combout => \output1~14_combout\);

-- Location: FF_X26_Y36_N27
\output1[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output1~14_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output1[14]~reg0_q\);

-- Location: IOIBUF_X22_Y39_N15
\input[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(15),
	o => \input[15]~input_o\);

-- Location: LCCOMB_X26_Y36_N10
\sample_hold[15]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sample_hold[15]~feeder_combout\ = \input[15]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input[15]~input_o\,
	combout => \sample_hold[15]~feeder_combout\);

-- Location: FF_X26_Y36_N11
\sample_hold[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sample_hold[15]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sample_hold(15));

-- Location: LCCOMB_X26_Y36_N8
\output1~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output1~15_combout\ = (\counter~q\ & (\input[15]~input_o\)) # (!\counter~q\ & ((sample_hold(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[15]~input_o\,
	datac => \counter~q\,
	datad => sample_hold(15),
	combout => \output1~15_combout\);

-- Location: FF_X26_Y36_N9
\output1[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \output1~15_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output1[15]~reg0_q\);

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
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

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
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_output1(0) <= \output1[0]~output_o\;

ww_output1(1) <= \output1[1]~output_o\;

ww_output1(2) <= \output1[2]~output_o\;

ww_output1(3) <= \output1[3]~output_o\;

ww_output1(4) <= \output1[4]~output_o\;

ww_output1(5) <= \output1[5]~output_o\;

ww_output1(6) <= \output1[6]~output_o\;

ww_output1(7) <= \output1[7]~output_o\;

ww_output1(8) <= \output1[8]~output_o\;

ww_output1(9) <= \output1[9]~output_o\;

ww_output1(10) <= \output1[10]~output_o\;

ww_output1(11) <= \output1[11]~output_o\;

ww_output1(12) <= \output1[12]~output_o\;

ww_output1(13) <= \output1[13]~output_o\;

ww_output1(14) <= \output1[14]~output_o\;

ww_output1(15) <= \output1[15]~output_o\;

ww_output2(0) <= \output2[0]~output_o\;

ww_output2(1) <= \output2[1]~output_o\;

ww_output2(2) <= \output2[2]~output_o\;

ww_output2(3) <= \output2[3]~output_o\;

ww_output2(4) <= \output2[4]~output_o\;

ww_output2(5) <= \output2[5]~output_o\;

ww_output2(6) <= \output2[6]~output_o\;

ww_output2(7) <= \output2[7]~output_o\;

ww_output2(8) <= \output2[8]~output_o\;

ww_output2(9) <= \output2[9]~output_o\;

ww_output2(10) <= \output2[10]~output_o\;

ww_output2(11) <= \output2[11]~output_o\;

ww_output2(12) <= \output2[12]~output_o\;

ww_output2(13) <= \output2[13]~output_o\;

ww_output2(14) <= \output2[14]~output_o\;

ww_output2(15) <= \output2[15]~output_o\;
END structure;


