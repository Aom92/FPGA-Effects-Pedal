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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "07/25/2023 22:42:23"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          circ_buffer
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY circ_buffer_vhd_vec_tst IS
END circ_buffer_vhd_vec_tst;
ARCHITECTURE circ_buffer_arch OF circ_buffer_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL buff_empty : STD_LOGIC;
SIGNAL buff_full : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL data_in : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL data_out : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL rd_en : STD_LOGIC;
SIGNAL rst : STD_LOGIC;
SIGNAL wr_en : STD_LOGIC;
COMPONENT circ_buffer
	PORT (
	buff_empty : BUFFER STD_LOGIC;
	buff_full : BUFFER STD_LOGIC;
	clk : IN STD_LOGIC;
	data_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	data_out : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	rd_en : IN STD_LOGIC;
	rst : IN STD_LOGIC;
	wr_en : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : circ_buffer
	PORT MAP (
-- list connections between master ports and signals
	buff_empty => buff_empty,
	buff_full => buff_full,
	clk => clk,
	data_in => data_in,
	data_out => data_out,
	rd_en => rd_en,
	rst => rst,
	wr_en => wr_en
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 5000 ps;
	clk <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;
-- data_in[7]
t_prcs_data_in_7: PROCESS
BEGIN
	data_in(7) <= '0';
WAIT;
END PROCESS t_prcs_data_in_7;
-- data_in[6]
t_prcs_data_in_6: PROCESS
BEGIN
	data_in(6) <= '0';
WAIT;
END PROCESS t_prcs_data_in_6;
-- data_in[5]
t_prcs_data_in_5: PROCESS
BEGIN
	data_in(5) <= '0';
WAIT;
END PROCESS t_prcs_data_in_5;
-- data_in[4]
t_prcs_data_in_4: PROCESS
BEGIN
	data_in(4) <= '0';
WAIT;
END PROCESS t_prcs_data_in_4;
-- data_in[3]
t_prcs_data_in_3: PROCESS
BEGIN
	data_in(3) <= '0';
	WAIT FOR 640000 ps;
	data_in(3) <= '1';
WAIT;
END PROCESS t_prcs_data_in_3;
-- data_in[2]
t_prcs_data_in_2: PROCESS
BEGIN
	data_in(2) <= '0';
	WAIT FOR 320000 ps;
	data_in(2) <= '1';
	WAIT FOR 320000 ps;
	data_in(2) <= '0';
	WAIT FOR 320000 ps;
	data_in(2) <= '1';
WAIT;
END PROCESS t_prcs_data_in_2;
-- data_in[1]
t_prcs_data_in_1: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		data_in(1) <= '0';
		WAIT FOR 160000 ps;
		data_in(1) <= '1';
		WAIT FOR 160000 ps;
	END LOOP;
	data_in(1) <= '0';
WAIT;
END PROCESS t_prcs_data_in_1;
-- data_in[0]
t_prcs_data_in_0: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		data_in(0) <= '0';
		WAIT FOR 80000 ps;
		data_in(0) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	data_in(0) <= '0';
WAIT;
END PROCESS t_prcs_data_in_0;

-- rd_en
t_prcs_rd_en: PROCESS
BEGIN
	rd_en <= '0';
WAIT;
END PROCESS t_prcs_rd_en;

-- rst
t_prcs_rst: PROCESS
BEGIN
	rst <= '0';
WAIT;
END PROCESS t_prcs_rst;

-- wr_en
t_prcs_wr_en: PROCESS
BEGIN
	wr_en <= '1';
WAIT;
END PROCESS t_prcs_wr_en;
END circ_buffer_arch;
