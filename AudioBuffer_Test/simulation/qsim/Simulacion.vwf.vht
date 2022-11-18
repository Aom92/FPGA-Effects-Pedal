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
-- Generated on "11/18/2022 11:41:52"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          AudioBufferTest
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY AudioBufferTest_vhd_vec_tst IS
END AudioBufferTest_vhd_vec_tst;
ARCHITECTURE AudioBufferTest_arch OF AudioBufferTest_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL ADCCLK : STD_LOGIC;
SIGNAL addDw : STD_LOGIC;
SIGNAL addrUp : STD_LOGIC;
SIGNAL DE10CLK : STD_LOGIC;
SIGNAL DE10Reset : STD_LOGIC;
SIGNAL display0 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL display1 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL display2 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL display3 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL DRAM_ADDR : STD_LOGIC_VECTOR(12 DOWNTO 0);
SIGNAL DRAM_BA : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL DRAM_CAS_N : STD_LOGIC;
SIGNAL DRAM_CKE : STD_LOGIC;
SIGNAL DRAM_CLK : STD_LOGIC;
SIGNAL DRAM_CS_N : STD_LOGIC;
SIGNAL DRAM_DQ : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL DRAM_DQM : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL DRAM_RAS_N : STD_LOGIC;
SIGNAL DRAM_WE_N : STD_LOGIC;
SIGNAL led_out : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL RW_switch : STD_LOGIC;
COMPONENT AudioBufferTest
	PORT (
	ADCCLK : IN STD_LOGIC;
	addDw : IN STD_LOGIC;
	addrUp : IN STD_LOGIC;
	DE10CLK : IN STD_LOGIC;
	DE10Reset : IN STD_LOGIC;
	display0 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	display1 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	display2 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	display3 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	DRAM_ADDR : OUT STD_LOGIC_VECTOR(12 DOWNTO 0);
	DRAM_BA : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	DRAM_CAS_N : OUT STD_LOGIC;
	DRAM_CKE : OUT STD_LOGIC;
	DRAM_CLK : OUT STD_LOGIC;
	DRAM_CS_N : OUT STD_LOGIC;
	DRAM_DQ : INOUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	DRAM_DQM : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	DRAM_RAS_N : OUT STD_LOGIC;
	DRAM_WE_N : OUT STD_LOGIC;
	led_out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	RW_switch : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : AudioBufferTest
	PORT MAP (
-- list connections between master ports and signals
	ADCCLK => ADCCLK,
	addDw => addDw,
	addrUp => addrUp,
	DE10CLK => DE10CLK,
	DE10Reset => DE10Reset,
	display0 => display0,
	display1 => display1,
	display2 => display2,
	display3 => display3,
	DRAM_ADDR => DRAM_ADDR,
	DRAM_BA => DRAM_BA,
	DRAM_CAS_N => DRAM_CAS_N,
	DRAM_CKE => DRAM_CKE,
	DRAM_CLK => DRAM_CLK,
	DRAM_CS_N => DRAM_CS_N,
	DRAM_DQ => DRAM_DQ,
	DRAM_DQM => DRAM_DQM,
	DRAM_RAS_N => DRAM_RAS_N,
	DRAM_WE_N => DRAM_WE_N,
	led_out => led_out,
	RW_switch => RW_switch
	);

-- ADCCLK
t_prcs_ADCCLK: PROCESS
BEGIN
LOOP
	ADCCLK <= '0';
	WAIT FOR 50000 ps;
	ADCCLK <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_ADCCLK;

-- DE10CLK
t_prcs_DE10CLK: PROCESS
BEGIN
	DE10CLK <= '1';
	WAIT FOR 20000 ps;
	FOR i IN 1 TO 9
	LOOP
		DE10CLK <= '0';
		WAIT FOR 50000 ps;
		DE10CLK <= '1';
		WAIT FOR 50000 ps;
	END LOOP;
	DE10CLK <= '0';
	WAIT FOR 50000 ps;
	DE10CLK <= '1';
WAIT;
END PROCESS t_prcs_DE10CLK;

-- DE10Reset
t_prcs_DE10Reset: PROCESS
BEGIN
	DE10Reset <= '0';
WAIT;
END PROCESS t_prcs_DE10Reset;
-- DRAM_DQ[15]
t_prcs_DRAM_DQ_15: PROCESS
BEGIN
	DRAM_DQ(15) <= 'Z';
WAIT;
END PROCESS t_prcs_DRAM_DQ_15;
-- DRAM_DQ[14]
t_prcs_DRAM_DQ_14: PROCESS
BEGIN
	DRAM_DQ(14) <= 'Z';
WAIT;
END PROCESS t_prcs_DRAM_DQ_14;
-- DRAM_DQ[13]
t_prcs_DRAM_DQ_13: PROCESS
BEGIN
	DRAM_DQ(13) <= 'Z';
WAIT;
END PROCESS t_prcs_DRAM_DQ_13;
-- DRAM_DQ[12]
t_prcs_DRAM_DQ_12: PROCESS
BEGIN
	DRAM_DQ(12) <= 'Z';
WAIT;
END PROCESS t_prcs_DRAM_DQ_12;
-- DRAM_DQ[11]
t_prcs_DRAM_DQ_11: PROCESS
BEGIN
	DRAM_DQ(11) <= 'Z';
WAIT;
END PROCESS t_prcs_DRAM_DQ_11;
-- DRAM_DQ[10]
t_prcs_DRAM_DQ_10: PROCESS
BEGIN
	DRAM_DQ(10) <= 'Z';
WAIT;
END PROCESS t_prcs_DRAM_DQ_10;
-- DRAM_DQ[9]
t_prcs_DRAM_DQ_9: PROCESS
BEGIN
	DRAM_DQ(9) <= 'Z';
WAIT;
END PROCESS t_prcs_DRAM_DQ_9;
-- DRAM_DQ[8]
t_prcs_DRAM_DQ_8: PROCESS
BEGIN
	DRAM_DQ(8) <= 'Z';
WAIT;
END PROCESS t_prcs_DRAM_DQ_8;
-- DRAM_DQ[7]
t_prcs_DRAM_DQ_7: PROCESS
BEGIN
	DRAM_DQ(7) <= 'Z';
WAIT;
END PROCESS t_prcs_DRAM_DQ_7;
-- DRAM_DQ[6]
t_prcs_DRAM_DQ_6: PROCESS
BEGIN
	DRAM_DQ(6) <= 'Z';
WAIT;
END PROCESS t_prcs_DRAM_DQ_6;
-- DRAM_DQ[5]
t_prcs_DRAM_DQ_5: PROCESS
BEGIN
	DRAM_DQ(5) <= 'Z';
WAIT;
END PROCESS t_prcs_DRAM_DQ_5;
-- DRAM_DQ[4]
t_prcs_DRAM_DQ_4: PROCESS
BEGIN
	DRAM_DQ(4) <= 'Z';
WAIT;
END PROCESS t_prcs_DRAM_DQ_4;
-- DRAM_DQ[3]
t_prcs_DRAM_DQ_3: PROCESS
BEGIN
	DRAM_DQ(3) <= 'Z';
WAIT;
END PROCESS t_prcs_DRAM_DQ_3;
-- DRAM_DQ[2]
t_prcs_DRAM_DQ_2: PROCESS
BEGIN
	DRAM_DQ(2) <= 'Z';
WAIT;
END PROCESS t_prcs_DRAM_DQ_2;
-- DRAM_DQ[1]
t_prcs_DRAM_DQ_1: PROCESS
BEGIN
	DRAM_DQ(1) <= 'Z';
WAIT;
END PROCESS t_prcs_DRAM_DQ_1;
-- DRAM_DQ[0]
t_prcs_DRAM_DQ_0: PROCESS
BEGIN
	DRAM_DQ(0) <= 'Z';
WAIT;
END PROCESS t_prcs_DRAM_DQ_0;

-- RW_switch
t_prcs_RW_switch: PROCESS
BEGIN
	RW_switch <= '0';
WAIT;
END PROCESS t_prcs_RW_switch;
END AudioBufferTest_arch;
