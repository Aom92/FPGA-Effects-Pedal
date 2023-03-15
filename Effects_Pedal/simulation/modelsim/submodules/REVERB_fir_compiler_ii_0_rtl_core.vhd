-- ------------------------------------------------------------------------- 
-- High Level Design Compiler for Intel(R) FPGAs Version 20.1 (Release Build #720)
-- Quartus Prime development tool and MATLAB/Simulink Interface
-- 
-- Legal Notice: Copyright 2020 Intel Corporation.  All rights reserved.
-- Your use of  Intel Corporation's design tools,  logic functions and other
-- software and  tools, and its AMPP partner logic functions, and any output
-- files any  of the foregoing (including  device programming  or simulation
-- files), and  any associated  documentation  or information  are expressly
-- subject  to the terms and  conditions of the  Intel FPGA Software License
-- Agreement, Intel MegaCore Function License Agreement, or other applicable
-- license agreement,  including,  without limitation,  that your use is for
-- the  sole  purpose of  programming  logic devices  manufactured by  Intel
-- and  sold by Intel  or its authorized  distributors. Please refer  to the
-- applicable agreement for further details.
-- ---------------------------------------------------------------------------

-- VHDL created from REVERB_fir_compiler_ii_0_rtl_core
-- VHDL created on Fri Mar 10 20:59:50 2023


library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;
use IEEE.MATH_REAL.all;
use std.TextIO.all;
use work.dspba_library_package.all;

LIBRARY altera_mf;
USE altera_mf.altera_mf_components.all;
LIBRARY lpm;
USE lpm.lpm_components.all;

entity REVERB_fir_compiler_ii_0_rtl_core is
    port (
        xIn_v : in std_logic_vector(0 downto 0);  -- sfix1
        xIn_c : in std_logic_vector(7 downto 0);  -- sfix8
        xIn_0 : in std_logic_vector(11 downto 0);  -- sfix12
        xOut_v : out std_logic_vector(0 downto 0);  -- ufix1
        xOut_c : out std_logic_vector(7 downto 0);  -- ufix8
        xOut_0 : out std_logic_vector(50 downto 0);  -- sfix51
        clk : in std_logic;
        areset : in std_logic
    );
end REVERB_fir_compiler_ii_0_rtl_core;

architecture normal of REVERB_fir_compiler_ii_0_rtl_core is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_xIn_0_13_q : STD_LOGIC_VECTOR (11 downto 0);
    signal d_in0_m0_wi0_wo0_assign_id1_q_13_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_run_count : STD_LOGIC_VECTOR (1 downto 0);
    signal u0_m0_wo0_run_preEnaQ : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_run_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_run_out : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_run_enableQ : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_run_ctrl : STD_LOGIC_VECTOR (2 downto 0);
    signal u0_m0_wo0_memread_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_u0_m0_wo0_memread_q_13_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_compute_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_u0_m0_wo0_compute_q_13_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_u0_m0_wo0_compute_q_20_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_u0_m0_wo0_compute_q_21_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi0_r0_ra0_count0_lutreg_q : STD_LOGIC_VECTOR (1 downto 0);
    signal u0_m0_wo0_wi0_r0_ra0_count0_q : STD_LOGIC_VECTOR (3 downto 0);
    signal u0_m0_wo0_wi0_r0_ra0_count0_i : UNSIGNED (3 downto 0);
    attribute preserve : boolean;
    attribute preserve of u0_m0_wo0_wi0_r0_ra0_count0_i : signal is true;
    signal u0_m0_wo0_wi0_r0_wa0_q : STD_LOGIC_VECTOR (1 downto 0);
    signal u0_m0_wo0_wi0_r0_wa0_i : UNSIGNED (1 downto 0);
    attribute preserve of u0_m0_wo0_wi0_r0_wa0_i : signal is true;
    signal u0_m0_wo0_wi0_r0_memr0_reset0 : std_logic;
    signal u0_m0_wo0_wi0_r0_memr0_ia : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_memr0_aa : STD_LOGIC_VECTOR (1 downto 0);
    signal u0_m0_wo0_wi0_r0_memr0_ab : STD_LOGIC_VECTOR (1 downto 0);
    signal u0_m0_wo0_wi0_r0_memr0_iq : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_memr0_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr1_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr2_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr3_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr4_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr5_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr6_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr7_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr8_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr9_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr10_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr11_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr12_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr13_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr14_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr15_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr16_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr17_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr18_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr19_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr20_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr21_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr22_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr23_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr24_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr25_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr26_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr27_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr28_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr29_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr30_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr31_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_ca31_q : STD_LOGIC_VECTOR (1 downto 0);
    signal u0_m0_wo0_ca31_i : UNSIGNED (1 downto 0);
    attribute preserve of u0_m0_wo0_ca31_i : signal is true;
    signal u0_m0_wo0_cm0_q : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm2_q : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm3_q : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm4_q : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm5_q : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm6_q : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm7_q : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm8_q : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm9_q : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm10_q : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm11_q : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm12_q : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm13_q : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm14_q : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm15_q : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm16_q : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm17_q : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm18_q : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm19_q : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm20_q : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm21_q : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm22_q : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm23_q : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm24_q : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm25_q : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm26_q : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm27_q : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm28_q : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm29_q : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm30_q : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm31_q : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_mtree_add0_0_a : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_add0_0_b : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_add0_0_o : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_add0_0_q : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_add0_1_a : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_add0_1_b : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_add0_1_o : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_add0_1_q : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_add0_2_a : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_add0_2_b : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_add0_2_o : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_add0_2_q : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_add0_3_a : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_add0_3_b : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_add0_3_o : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_add0_3_q : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_add0_4_a : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_add0_4_b : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_add0_4_o : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_add0_4_q : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_add0_5_a : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_add0_5_b : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_add0_5_o : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_add0_5_q : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_add0_6_a : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_add0_6_b : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_add0_6_o : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_add0_6_q : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_add0_7_a : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_add0_7_b : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_add0_7_o : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_add0_7_q : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_add0_8_a : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_add0_8_b : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_add0_8_o : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_add0_8_q : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_add0_9_a : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_add0_9_b : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_add0_9_o : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_add0_9_q : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_add0_10_a : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_add0_10_b : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_add0_10_o : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_add0_10_q : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_add0_11_a : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_add0_11_b : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_add0_11_o : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_add0_11_q : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_add0_12_a : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_add0_12_b : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_add0_12_o : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_add0_12_q : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_add0_13_a : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_add0_13_b : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_add0_13_o : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_add0_13_q : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_add0_14_a : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_add0_14_b : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_add0_14_o : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_add0_14_q : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_add0_15_a : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_add0_15_b : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_add0_15_o : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_add0_15_q : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_add1_0_a : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_add1_0_b : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_add1_0_o : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_add1_0_q : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_add1_1_a : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_add1_1_b : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_add1_1_o : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_add1_1_q : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_add1_2_a : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_add1_2_b : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_add1_2_o : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_add1_2_q : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_add1_3_a : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_add1_3_b : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_add1_3_o : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_add1_3_q : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_add1_4_a : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_add1_4_b : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_add1_4_o : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_add1_4_q : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_add1_5_a : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_add1_5_b : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_add1_5_o : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_add1_5_q : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_add1_6_a : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_add1_6_b : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_add1_6_o : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_add1_6_q : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_add1_7_a : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_add1_7_b : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_add1_7_o : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_add1_7_q : STD_LOGIC_VECTOR (45 downto 0);
    signal u0_m0_wo0_mtree_add2_0_a : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_add2_0_b : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_add2_0_o : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_add2_0_q : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_add2_1_a : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_add2_1_b : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_add2_1_o : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_add2_1_q : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_add2_2_a : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_add2_2_b : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_add2_2_o : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_add2_2_q : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_add2_3_a : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_add2_3_b : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_add2_3_o : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_add2_3_q : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_mtree_add3_0_a : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_add3_0_b : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_add3_0_o : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_add3_0_q : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_add3_1_a : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_add3_1_b : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_add3_1_o : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_add3_1_q : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_add4_0_a : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add4_0_b : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add4_0_o : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add4_0_q : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_aseq_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_aseq_eq : std_logic;
    signal u0_m0_wo0_accum_a : STD_LOGIC_VECTOR (50 downto 0);
    signal u0_m0_wo0_accum_b : STD_LOGIC_VECTOR (50 downto 0);
    signal u0_m0_wo0_accum_i : STD_LOGIC_VECTOR (50 downto 0);
    signal u0_m0_wo0_accum_o : STD_LOGIC_VECTOR (50 downto 0);
    signal u0_m0_wo0_accum_q : STD_LOGIC_VECTOR (50 downto 0);
    signal u0_m0_wo0_oseq_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_oseq_eq : std_logic;
    signal u0_m0_wo0_oseq_gated_reg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_im0_a0 : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_im0_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_im0_s1 : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_im0_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_31_im0_q : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_im3_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_im3_s1 : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_31_im3_q : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_result_add_0_0_a : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_result_add_0_0_b : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_result_add_0_0_o : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_result_add_0_0_q : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_30_im0_a0 : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_30_im0_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_30_im0_s1 : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_30_im0_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_30_im0_q : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_30_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_30_im3_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_30_im3_s1 : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_mult1_30_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_30_im3_q : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_mult1_30_result_add_0_0_a : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_30_result_add_0_0_b : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_30_result_add_0_0_o : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_30_result_add_0_0_q : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_im0_a0 : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_im0_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_im0_s1 : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_im0_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_29_im0_q : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_im3_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_im3_s1 : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_29_im3_q : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_result_add_0_0_a : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_result_add_0_0_b : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_result_add_0_0_o : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_result_add_0_0_q : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_im0_a0 : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_im0_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_im0_s1 : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_im0_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_28_im0_q : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_im3_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_im3_s1 : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_28_im3_q : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_result_add_0_0_a : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_result_add_0_0_b : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_result_add_0_0_o : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_result_add_0_0_q : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_im0_a0 : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_im0_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_im0_s1 : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_im0_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_27_im0_q : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_im3_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_im3_s1 : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_27_im3_q : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_result_add_0_0_a : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_result_add_0_0_b : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_result_add_0_0_o : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_result_add_0_0_q : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_26_im0_a0 : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_26_im0_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_26_im0_s1 : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_26_im0_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_26_im0_q : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_26_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_26_im3_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_26_im3_s1 : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_mult1_26_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_26_im3_q : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_mult1_26_result_add_0_0_a : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_26_result_add_0_0_b : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_26_result_add_0_0_o : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_26_result_add_0_0_q : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_im0_a0 : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_im0_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_im0_s1 : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_im0_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_25_im0_q : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_im3_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_im3_s1 : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_25_im3_q : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_result_add_0_0_a : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_result_add_0_0_b : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_result_add_0_0_o : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_result_add_0_0_q : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_im0_a0 : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_im0_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_im0_s1 : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_im0_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_24_im0_q : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_im3_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_im3_s1 : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_24_im3_q : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_result_add_0_0_a : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_result_add_0_0_b : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_result_add_0_0_o : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_result_add_0_0_q : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_im0_a0 : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_im0_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_im0_s1 : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_im0_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_23_im0_q : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_im3_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_im3_s1 : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_23_im3_q : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_result_add_0_0_a : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_result_add_0_0_b : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_result_add_0_0_o : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_result_add_0_0_q : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_22_im0_a0 : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_22_im0_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_22_im0_s1 : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_22_im0_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_22_im0_q : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_22_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_22_im3_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_22_im3_s1 : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_mult1_22_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_22_im3_q : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_mult1_22_result_add_0_0_a : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_22_result_add_0_0_b : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_22_result_add_0_0_o : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_22_result_add_0_0_q : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_im0_a0 : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_im0_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_im0_s1 : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_im0_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_21_im0_q : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_im3_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_im3_s1 : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_21_im3_q : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_result_add_0_0_a : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_result_add_0_0_b : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_result_add_0_0_o : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_result_add_0_0_q : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_im0_a0 : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_im0_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_im0_s1 : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_im0_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_20_im0_q : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_im3_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_im3_s1 : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_20_im3_q : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_result_add_0_0_a : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_result_add_0_0_b : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_result_add_0_0_o : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_result_add_0_0_q : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_im0_a0 : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_im0_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_im0_s1 : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_im0_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_19_im0_q : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_im3_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_im3_s1 : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_19_im3_q : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_result_add_0_0_a : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_result_add_0_0_b : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_result_add_0_0_o : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_result_add_0_0_q : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_im0_a0 : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_im0_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_im0_s1 : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_im0_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_18_im0_q : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_im3_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_im3_s1 : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_18_im3_q : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_result_add_0_0_a : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_result_add_0_0_b : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_result_add_0_0_o : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_result_add_0_0_q : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_im0_a0 : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_im0_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_im0_s1 : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_im0_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_17_im0_q : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_im3_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_im3_s1 : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_17_im3_q : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_result_add_0_0_a : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_result_add_0_0_b : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_result_add_0_0_o : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_result_add_0_0_q : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_im0_a0 : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_im0_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_im0_s1 : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_im0_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_16_im0_q : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_im3_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_im3_s1 : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_16_im3_q : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_result_add_0_0_a : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_result_add_0_0_b : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_result_add_0_0_o : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_result_add_0_0_q : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_im0_a0 : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_im0_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_im0_s1 : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_im0_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_15_im0_q : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_im3_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_im3_s1 : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_15_im3_q : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_result_add_0_0_a : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_result_add_0_0_b : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_result_add_0_0_o : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_result_add_0_0_q : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_14_im0_a0 : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_14_im0_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_14_im0_s1 : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_14_im0_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_14_im0_q : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_14_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_14_im3_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_14_im3_s1 : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_mult1_14_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_14_im3_q : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_mult1_14_result_add_0_0_a : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_14_result_add_0_0_b : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_14_result_add_0_0_o : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_14_result_add_0_0_q : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_im0_a0 : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_im0_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_im0_s1 : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_im0_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_13_im0_q : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_im3_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_im3_s1 : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_13_im3_q : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_result_add_0_0_a : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_result_add_0_0_b : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_result_add_0_0_o : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_result_add_0_0_q : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_im0_a0 : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_im0_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_im0_s1 : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_im0_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_12_im0_q : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_im3_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_im3_s1 : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_12_im3_q : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_result_add_0_0_a : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_result_add_0_0_b : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_result_add_0_0_o : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_result_add_0_0_q : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_im0_a0 : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_im0_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_im0_s1 : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_im0_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_11_im0_q : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_im3_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_im3_s1 : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_11_im3_q : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_result_add_0_0_a : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_result_add_0_0_b : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_result_add_0_0_o : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_result_add_0_0_q : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_10_im0_a0 : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_10_im0_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_10_im0_s1 : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_10_im0_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_10_im0_q : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_10_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_10_im3_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_10_im3_s1 : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_mult1_10_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_10_im3_q : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_mult1_10_result_add_0_0_a : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_10_result_add_0_0_b : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_10_result_add_0_0_o : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_10_result_add_0_0_q : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_im0_a0 : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_im0_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_im0_s1 : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_im0_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_9_im0_q : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_im3_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_im3_s1 : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_9_im3_q : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_result_add_0_0_a : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_result_add_0_0_b : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_result_add_0_0_o : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_result_add_0_0_q : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_im0_a0 : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_im0_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_im0_s1 : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_im0_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_8_im0_q : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_im3_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_im3_s1 : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_8_im3_q : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_result_add_0_0_a : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_result_add_0_0_b : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_result_add_0_0_o : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_result_add_0_0_q : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_im0_a0 : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_im0_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_im0_s1 : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_im0_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_7_im0_q : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_im3_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_im3_s1 : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_7_im3_q : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_result_add_0_0_a : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_result_add_0_0_b : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_result_add_0_0_o : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_result_add_0_0_q : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_6_im0_a0 : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_6_im0_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_6_im0_s1 : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_6_im0_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_6_im0_q : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_6_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_6_im3_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_6_im3_s1 : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_mult1_6_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_6_im3_q : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_mult1_6_result_add_0_0_a : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_6_result_add_0_0_b : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_6_result_add_0_0_o : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_6_result_add_0_0_q : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_im0_a0 : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_im0_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_im0_s1 : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_im0_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_5_im0_q : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_im3_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_im3_s1 : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_5_im3_q : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_result_add_0_0_a : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_result_add_0_0_b : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_result_add_0_0_o : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_result_add_0_0_q : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_im0_a0 : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_im0_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_im0_s1 : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_im0_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_4_im0_q : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_im3_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_im3_s1 : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_4_im3_q : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_result_add_0_0_a : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_result_add_0_0_b : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_result_add_0_0_o : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_result_add_0_0_q : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_im0_a0 : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_im0_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_im0_s1 : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_im0_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_3_im0_q : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_im3_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_im3_s1 : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_3_im3_q : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_result_add_0_0_a : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_result_add_0_0_b : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_result_add_0_0_o : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_result_add_0_0_q : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_2_im0_a0 : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_2_im0_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_2_im0_s1 : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_2_im0_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_2_im0_q : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_2_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_2_im3_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_2_im3_s1 : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_mult1_2_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_2_im3_q : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_mult1_2_result_add_0_0_a : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_2_result_add_0_0_b : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_2_result_add_0_0_o : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_2_result_add_0_0_q : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_im0_a0 : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_im0_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_im0_s1 : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_im0_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_1_im0_q : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_im3_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_im3_s1 : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_1_im3_q : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_result_add_0_0_a : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_result_add_0_0_b : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_result_add_0_0_o : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_result_add_0_0_q : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_im0_a0 : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_im0_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_im0_s1 : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_im0_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_0_im0_q : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_im3_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_im3_s1 : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_0_im3_q : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_result_add_0_0_a : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_result_add_0_0_b : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_result_add_0_0_o : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_result_add_0_0_q : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_oseq_gated_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi0_r0_ra0_count0_lut_q : STD_LOGIC_VECTOR (1 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_30_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_30_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_26_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_26_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_22_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_22_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_14_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_14_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_10_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_10_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_6_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_6_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_2_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_2_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_align_8_q : STD_LOGIC_VECTOR (43 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_align_8_qint : STD_LOGIC_VECTOR (43 downto 0);
    signal u0_m0_wo0_mtree_mult1_30_align_8_q : STD_LOGIC_VECTOR (43 downto 0);
    signal u0_m0_wo0_mtree_mult1_30_align_8_qint : STD_LOGIC_VECTOR (43 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_align_8_q : STD_LOGIC_VECTOR (43 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_align_8_qint : STD_LOGIC_VECTOR (43 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_align_8_q : STD_LOGIC_VECTOR (43 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_align_8_qint : STD_LOGIC_VECTOR (43 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_align_8_q : STD_LOGIC_VECTOR (43 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_align_8_qint : STD_LOGIC_VECTOR (43 downto 0);
    signal u0_m0_wo0_mtree_mult1_26_align_8_q : STD_LOGIC_VECTOR (43 downto 0);
    signal u0_m0_wo0_mtree_mult1_26_align_8_qint : STD_LOGIC_VECTOR (43 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_align_8_q : STD_LOGIC_VECTOR (43 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_align_8_qint : STD_LOGIC_VECTOR (43 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_align_8_q : STD_LOGIC_VECTOR (43 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_align_8_qint : STD_LOGIC_VECTOR (43 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_align_8_q : STD_LOGIC_VECTOR (43 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_align_8_qint : STD_LOGIC_VECTOR (43 downto 0);
    signal u0_m0_wo0_mtree_mult1_22_align_8_q : STD_LOGIC_VECTOR (43 downto 0);
    signal u0_m0_wo0_mtree_mult1_22_align_8_qint : STD_LOGIC_VECTOR (43 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_align_8_q : STD_LOGIC_VECTOR (43 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_align_8_qint : STD_LOGIC_VECTOR (43 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_align_8_q : STD_LOGIC_VECTOR (43 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_align_8_qint : STD_LOGIC_VECTOR (43 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_align_8_q : STD_LOGIC_VECTOR (43 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_align_8_qint : STD_LOGIC_VECTOR (43 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_align_8_q : STD_LOGIC_VECTOR (43 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_align_8_qint : STD_LOGIC_VECTOR (43 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_align_8_q : STD_LOGIC_VECTOR (43 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_align_8_qint : STD_LOGIC_VECTOR (43 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_align_8_q : STD_LOGIC_VECTOR (43 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_align_8_qint : STD_LOGIC_VECTOR (43 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_align_8_q : STD_LOGIC_VECTOR (43 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_align_8_qint : STD_LOGIC_VECTOR (43 downto 0);
    signal u0_m0_wo0_mtree_mult1_14_align_8_q : STD_LOGIC_VECTOR (43 downto 0);
    signal u0_m0_wo0_mtree_mult1_14_align_8_qint : STD_LOGIC_VECTOR (43 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_align_8_q : STD_LOGIC_VECTOR (43 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_align_8_qint : STD_LOGIC_VECTOR (43 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_align_8_q : STD_LOGIC_VECTOR (43 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_align_8_qint : STD_LOGIC_VECTOR (43 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_align_8_q : STD_LOGIC_VECTOR (43 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_align_8_qint : STD_LOGIC_VECTOR (43 downto 0);
    signal u0_m0_wo0_mtree_mult1_10_align_8_q : STD_LOGIC_VECTOR (43 downto 0);
    signal u0_m0_wo0_mtree_mult1_10_align_8_qint : STD_LOGIC_VECTOR (43 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_align_8_q : STD_LOGIC_VECTOR (43 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_align_8_qint : STD_LOGIC_VECTOR (43 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_align_8_q : STD_LOGIC_VECTOR (43 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_align_8_qint : STD_LOGIC_VECTOR (43 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_align_8_q : STD_LOGIC_VECTOR (43 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_align_8_qint : STD_LOGIC_VECTOR (43 downto 0);
    signal u0_m0_wo0_mtree_mult1_6_align_8_q : STD_LOGIC_VECTOR (43 downto 0);
    signal u0_m0_wo0_mtree_mult1_6_align_8_qint : STD_LOGIC_VECTOR (43 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_align_8_q : STD_LOGIC_VECTOR (43 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_align_8_qint : STD_LOGIC_VECTOR (43 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_align_8_q : STD_LOGIC_VECTOR (43 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_align_8_qint : STD_LOGIC_VECTOR (43 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_align_8_q : STD_LOGIC_VECTOR (43 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_align_8_qint : STD_LOGIC_VECTOR (43 downto 0);
    signal u0_m0_wo0_mtree_mult1_2_align_8_q : STD_LOGIC_VECTOR (43 downto 0);
    signal u0_m0_wo0_mtree_mult1_2_align_8_qint : STD_LOGIC_VECTOR (43 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_align_8_q : STD_LOGIC_VECTOR (43 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_align_8_qint : STD_LOGIC_VECTOR (43 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_align_8_q : STD_LOGIC_VECTOR (43 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_align_8_qint : STD_LOGIC_VECTOR (43 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_bjA5_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_30_bjA5_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_bjA5_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_bjA5_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_bjA5_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_26_bjA5_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_bjA5_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_bjA5_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_bjA5_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_22_bjA5_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_bjA5_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_bjA5_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_bjA5_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_bjA5_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_bjA5_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_bjA5_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_bjA5_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_14_bjA5_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_bjA5_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_bjA5_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_bjA5_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_10_bjA5_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_bjA5_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_bjA5_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_bjA5_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_6_bjA5_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_bjA5_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_bjA5_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_bjA5_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_2_bjA5_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_bjA5_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_bjA5_q : STD_LOGIC_VECTOR (17 downto 0);

begin


    -- VCC(CONSTANT,1)@0
    VCC_q <= "1";

    -- u0_m0_wo0_run(ENABLEGENERATOR,13)@10 + 2
    u0_m0_wo0_run_ctrl <= u0_m0_wo0_run_out & xIn_v & u0_m0_wo0_run_enableQ;
    u0_m0_wo0_run_clkproc: PROCESS (clk, areset)
        variable u0_m0_wo0_run_enable_c : SIGNED(2 downto 0);
        variable u0_m0_wo0_run_inc : SIGNED(1 downto 0);
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_run_q <= "0";
            u0_m0_wo0_run_enable_c := TO_SIGNED(2, 3);
            u0_m0_wo0_run_enableQ <= "0";
            u0_m0_wo0_run_count <= "00";
            u0_m0_wo0_run_inc := (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (u0_m0_wo0_run_out = "1") THEN
                IF (u0_m0_wo0_run_enable_c(2) = '1') THEN
                    u0_m0_wo0_run_enable_c := u0_m0_wo0_run_enable_c - (-3);
                ELSE
                    u0_m0_wo0_run_enable_c := u0_m0_wo0_run_enable_c + (-1);
                END IF;
                u0_m0_wo0_run_enableQ <= STD_LOGIC_VECTOR(u0_m0_wo0_run_enable_c(2 downto 2));
            ELSE
                u0_m0_wo0_run_enableQ <= "0";
            END IF;
            CASE (u0_m0_wo0_run_ctrl) IS
                WHEN "000" | "001" => u0_m0_wo0_run_inc := "00";
                WHEN "010" | "011" => u0_m0_wo0_run_inc := "11";
                WHEN "100" => u0_m0_wo0_run_inc := "00";
                WHEN "101" => u0_m0_wo0_run_inc := "01";
                WHEN "110" => u0_m0_wo0_run_inc := "11";
                WHEN "111" => u0_m0_wo0_run_inc := "00";
                WHEN OTHERS => 
            END CASE;
            u0_m0_wo0_run_count <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_run_count) + SIGNED(u0_m0_wo0_run_inc));
            u0_m0_wo0_run_q <= u0_m0_wo0_run_out;
        END IF;
    END PROCESS;
    u0_m0_wo0_run_preEnaQ <= u0_m0_wo0_run_count(1 downto 1);
    u0_m0_wo0_run_out <= u0_m0_wo0_run_preEnaQ and VCC_q;

    -- u0_m0_wo0_memread(DELAY,14)@12
    u0_m0_wo0_memread : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_run_q, xout => u0_m0_wo0_memread_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_compute(DELAY,16)@12
    u0_m0_wo0_compute : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_memread_q, xout => u0_m0_wo0_compute_q, clk => clk, aclr => areset );

    -- d_u0_m0_wo0_compute_q_13(DELAY,551)@12 + 1
    d_u0_m0_wo0_compute_q_13 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_compute_q, xout => d_u0_m0_wo0_compute_q_13_q, clk => clk, aclr => areset );

    -- d_u0_m0_wo0_compute_q_20(DELAY,552)@13 + 7
    d_u0_m0_wo0_compute_q_20 : dspba_delay
    GENERIC MAP ( width => 1, depth => 7, reset_kind => "ASYNC" )
    PORT MAP ( xin => d_u0_m0_wo0_compute_q_13_q, xout => d_u0_m0_wo0_compute_q_20_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_aseq(SEQUENCE,154)@20 + 1
    u0_m0_wo0_aseq_clkproc: PROCESS (clk, areset)
        variable u0_m0_wo0_aseq_c : SIGNED(4 downto 0);
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_aseq_c := "00000";
            u0_m0_wo0_aseq_q <= "0";
            u0_m0_wo0_aseq_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (d_u0_m0_wo0_compute_q_20_q = "1") THEN
                IF (u0_m0_wo0_aseq_c = "00000") THEN
                    u0_m0_wo0_aseq_eq <= '1';
                ELSE
                    u0_m0_wo0_aseq_eq <= '0';
                END IF;
                IF (u0_m0_wo0_aseq_eq = '1') THEN
                    u0_m0_wo0_aseq_c := u0_m0_wo0_aseq_c + 3;
                ELSE
                    u0_m0_wo0_aseq_c := u0_m0_wo0_aseq_c - 1;
                END IF;
                u0_m0_wo0_aseq_q <= STD_LOGIC_VECTOR(u0_m0_wo0_aseq_c(4 downto 4));
            END IF;
        END IF;
    END PROCESS;

    -- d_u0_m0_wo0_compute_q_21(DELAY,553)@20 + 1
    d_u0_m0_wo0_compute_q_21 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => d_u0_m0_wo0_compute_q_20_q, xout => d_u0_m0_wo0_compute_q_21_q, clk => clk, aclr => areset );

    -- d_u0_m0_wo0_memread_q_13(DELAY,550)@12 + 1
    d_u0_m0_wo0_memread_q_13 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_memread_q, xout => d_u0_m0_wo0_memread_q_13_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_wi0_r0_ra0_count0(COUNTER,21)@13
    -- low=0, high=15, step=1, init=1
    u0_m0_wo0_wi0_r0_ra0_count0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_r0_ra0_count0_i <= TO_UNSIGNED(1, 4);
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (d_u0_m0_wo0_memread_q_13_q = "1") THEN
                u0_m0_wo0_wi0_r0_ra0_count0_i <= u0_m0_wo0_wi0_r0_ra0_count0_i + 1;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_wi0_r0_ra0_count0_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_wi0_r0_ra0_count0_i, 4)));

    -- u0_m0_wo0_wi0_r0_ra0_count0_lut(LOOKUP,19)@13
    u0_m0_wo0_wi0_r0_ra0_count0_lut_combproc: PROCESS (u0_m0_wo0_wi0_r0_ra0_count0_q)
    BEGIN
        -- Begin reserved scope level
        CASE (u0_m0_wo0_wi0_r0_ra0_count0_q) IS
            WHEN "0000" => u0_m0_wo0_wi0_r0_ra0_count0_lut_q <= "00";
            WHEN "0001" => u0_m0_wo0_wi0_r0_ra0_count0_lut_q <= "01";
            WHEN "0010" => u0_m0_wo0_wi0_r0_ra0_count0_lut_q <= "10";
            WHEN "0011" => u0_m0_wo0_wi0_r0_ra0_count0_lut_q <= "11";
            WHEN "0100" => u0_m0_wo0_wi0_r0_ra0_count0_lut_q <= "01";
            WHEN "0101" => u0_m0_wo0_wi0_r0_ra0_count0_lut_q <= "10";
            WHEN "0110" => u0_m0_wo0_wi0_r0_ra0_count0_lut_q <= "11";
            WHEN "0111" => u0_m0_wo0_wi0_r0_ra0_count0_lut_q <= "00";
            WHEN "1000" => u0_m0_wo0_wi0_r0_ra0_count0_lut_q <= "10";
            WHEN "1001" => u0_m0_wo0_wi0_r0_ra0_count0_lut_q <= "11";
            WHEN "1010" => u0_m0_wo0_wi0_r0_ra0_count0_lut_q <= "00";
            WHEN "1011" => u0_m0_wo0_wi0_r0_ra0_count0_lut_q <= "01";
            WHEN "1100" => u0_m0_wo0_wi0_r0_ra0_count0_lut_q <= "11";
            WHEN "1101" => u0_m0_wo0_wi0_r0_ra0_count0_lut_q <= "00";
            WHEN "1110" => u0_m0_wo0_wi0_r0_ra0_count0_lut_q <= "01";
            WHEN "1111" => u0_m0_wo0_wi0_r0_ra0_count0_lut_q <= "10";
            WHEN OTHERS => -- unreachable
                           u0_m0_wo0_wi0_r0_ra0_count0_lut_q <= (others => '-');
        END CASE;
        -- End reserved scope level
    END PROCESS;

    -- u0_m0_wo0_wi0_r0_ra0_count0_lutreg(REG,20)@13
    u0_m0_wo0_wi0_r0_ra0_count0_lutreg_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_r0_ra0_count0_lutreg_q <= "00";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (d_u0_m0_wo0_memread_q_13_q = "1") THEN
                u0_m0_wo0_wi0_r0_ra0_count0_lutreg_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_ra0_count0_lut_q);
            END IF;
        END IF;
    END PROCESS;

    -- d_xIn_0_13(DELAY,548)@10 + 3
    d_xIn_0_13 : dspba_delay
    GENERIC MAP ( width => 12, depth => 3, reset_kind => "ASYNC" )
    PORT MAP ( xin => xIn_0, xout => d_xIn_0_13_q, clk => clk, aclr => areset );

    -- d_in0_m0_wi0_wo0_assign_id1_q_13(DELAY,549)@10 + 3
    d_in0_m0_wi0_wo0_assign_id1_q_13 : dspba_delay
    GENERIC MAP ( width => 1, depth => 3, reset_kind => "ASYNC" )
    PORT MAP ( xin => xIn_v, xout => d_in0_m0_wi0_wo0_assign_id1_q_13_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_wi0_r0_wa0(COUNTER,22)@13
    -- low=0, high=3, step=1, init=3
    u0_m0_wo0_wi0_r0_wa0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_r0_wa0_i <= TO_UNSIGNED(3, 2);
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (d_in0_m0_wi0_wo0_assign_id1_q_13_q = "1") THEN
                u0_m0_wo0_wi0_r0_wa0_i <= u0_m0_wo0_wi0_r0_wa0_i + 1;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_wi0_r0_wa0_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_wi0_r0_wa0_i, 2)));

    -- u0_m0_wo0_wi0_r0_memr0(DUALMEM,23)@13
    u0_m0_wo0_wi0_r0_memr0_ia <= STD_LOGIC_VECTOR(d_xIn_0_13_q);
    u0_m0_wo0_wi0_r0_memr0_aa <= u0_m0_wo0_wi0_r0_wa0_q;
    u0_m0_wo0_wi0_r0_memr0_ab <= u0_m0_wo0_wi0_r0_ra0_count0_lutreg_q;
    u0_m0_wo0_wi0_r0_memr0_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "DUAL_PORT",
        width_a => 12,
        widthad_a => 2,
        numwords_a => 4,
        width_b => 12,
        widthad_b => 2,
        numwords_b => 4,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        wrcontrol_wraddress_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "CLOCK0",
        outdata_aclr_b => "NONE",
        clock_enable_input_a => "NORMAL",
        clock_enable_input_b => "NORMAL",
        clock_enable_output_b => "NORMAL",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "FALSE",
        init_file => "UNUSED",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => '1',
        clock0 => clk,
        address_a => u0_m0_wo0_wi0_r0_memr0_aa,
        data_a => u0_m0_wo0_wi0_r0_memr0_ia,
        wren_a => d_in0_m0_wi0_wo0_assign_id1_q_13_q(0),
        address_b => u0_m0_wo0_wi0_r0_memr0_ab,
        q_b => u0_m0_wo0_wi0_r0_memr0_iq
    );
    u0_m0_wo0_wi0_r0_memr0_q <= u0_m0_wo0_wi0_r0_memr0_iq(11 downto 0);

    -- u0_m0_wo0_ca31(COUNTER,55)@12
    -- low=0, high=3, step=1, init=0
    u0_m0_wo0_ca31_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_ca31_i <= TO_UNSIGNED(0, 2);
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (u0_m0_wo0_compute_q = "1") THEN
                u0_m0_wo0_ca31_i <= u0_m0_wo0_ca31_i + 1;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_ca31_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_ca31_i, 2)));

    -- u0_m0_wo0_cm0(LOOKUP,59)@12 + 1
    u0_m0_wo0_cm0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm0_q <= "00000000000010100001100101111000";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca31_q) IS
                WHEN "00" => u0_m0_wo0_cm0_q <= "00000000000010100001100101111000";
                WHEN "01" => u0_m0_wo0_cm0_q <= "00000001101000000010101101000101";
                WHEN "10" => u0_m0_wo0_cm0_q <= "00000000111110100000110010110111";
                WHEN "11" => u0_m0_wo0_cm0_q <= "00000000111101001101001101100111";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm0_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_31_bs1_merged_bit_select(BITSELECT,516)@13
    u0_m0_wo0_mtree_mult1_31_bs1_merged_bit_select_b <= STD_LOGIC_VECTOR(u0_m0_wo0_cm0_q(31 downto 17));
    u0_m0_wo0_mtree_mult1_31_bs1_merged_bit_select_c <= STD_LOGIC_VECTOR(u0_m0_wo0_cm0_q(16 downto 0));

    -- u0_m0_wo0_mtree_mult1_31_im0(MULT,164)@13 + 2
    u0_m0_wo0_mtree_mult1_31_im0_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_31_bs1_merged_bit_select_b);
    u0_m0_wo0_mtree_mult1_31_im0_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr0_q);
    u0_m0_wo0_mtree_mult1_31_im0_reset <= areset;
    u0_m0_wo0_mtree_mult1_31_im0_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 15,
        lpm_widthb => 12,
        lpm_widthp => 27,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_31_im0_a0,
        datab => u0_m0_wo0_mtree_mult1_31_im0_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_31_im0_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_31_im0_s1
    );
    u0_m0_wo0_mtree_mult1_31_im0_q <= u0_m0_wo0_mtree_mult1_31_im0_s1;

    -- u0_m0_wo0_mtree_mult1_31_align_8(BITSHIFT,172)@15
    u0_m0_wo0_mtree_mult1_31_align_8_qint <= u0_m0_wo0_mtree_mult1_31_im0_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_31_align_8_q <= u0_m0_wo0_mtree_mult1_31_align_8_qint(43 downto 0);

    -- u0_m0_wo0_mtree_mult1_31_bjA5(BITJOIN,169)@13
    u0_m0_wo0_mtree_mult1_31_bjA5_q <= GND_q & u0_m0_wo0_mtree_mult1_31_bs1_merged_bit_select_c;

    -- u0_m0_wo0_mtree_mult1_31_im3(MULT,167)@13 + 2
    u0_m0_wo0_mtree_mult1_31_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_31_bjA5_q);
    u0_m0_wo0_mtree_mult1_31_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr0_q);
    u0_m0_wo0_mtree_mult1_31_im3_reset <= areset;
    u0_m0_wo0_mtree_mult1_31_im3_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 12,
        lpm_widthp => 30,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_31_im3_a0,
        datab => u0_m0_wo0_mtree_mult1_31_im3_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_31_im3_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_31_im3_s1
    );
    u0_m0_wo0_mtree_mult1_31_im3_q <= u0_m0_wo0_mtree_mult1_31_im3_s1;

    -- u0_m0_wo0_mtree_mult1_31_result_add_0_0(ADD,174)@15 + 1
    u0_m0_wo0_mtree_mult1_31_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((44 downto 30 => u0_m0_wo0_mtree_mult1_31_im3_q(29)) & u0_m0_wo0_mtree_mult1_31_im3_q));
    u0_m0_wo0_mtree_mult1_31_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((44 downto 44 => u0_m0_wo0_mtree_mult1_31_align_8_q(43)) & u0_m0_wo0_mtree_mult1_31_align_8_q));
    u0_m0_wo0_mtree_mult1_31_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_31_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_31_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_31_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_31_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_31_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_31_result_add_0_0_o(44 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr1(DELAY,24)@13
    u0_m0_wo0_wi0_r0_delayr1 : dspba_delay
    GENERIC MAP ( width => 12, depth => 16, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_memr0_q, xout => u0_m0_wo0_wi0_r0_delayr1_q, ena => d_u0_m0_wo0_compute_q_13_q(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_cm1(LOOKUP,60)@12 + 1
    u0_m0_wo0_cm1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm1_q <= "00110100001010001110111001100111";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca31_q) IS
                WHEN "00" => u0_m0_wo0_cm1_q <= "00110100001010001110111001100111";
                WHEN "01" => u0_m0_wo0_cm1_q <= "00001000110001100100010010011001";
                WHEN "10" => u0_m0_wo0_cm1_q <= "11101000100110001000111100011101";
                WHEN "11" => u0_m0_wo0_cm1_q <= "11111000000110100000001010110101";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm1_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_30_bs1_merged_bit_select(BITSELECT,517)@13
    u0_m0_wo0_mtree_mult1_30_bs1_merged_bit_select_b <= STD_LOGIC_VECTOR(u0_m0_wo0_cm1_q(31 downto 17));
    u0_m0_wo0_mtree_mult1_30_bs1_merged_bit_select_c <= STD_LOGIC_VECTOR(u0_m0_wo0_cm1_q(16 downto 0));

    -- u0_m0_wo0_mtree_mult1_30_im0(MULT,175)@13 + 2
    u0_m0_wo0_mtree_mult1_30_im0_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_30_bs1_merged_bit_select_b);
    u0_m0_wo0_mtree_mult1_30_im0_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr1_q);
    u0_m0_wo0_mtree_mult1_30_im0_reset <= areset;
    u0_m0_wo0_mtree_mult1_30_im0_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 15,
        lpm_widthb => 12,
        lpm_widthp => 27,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_30_im0_a0,
        datab => u0_m0_wo0_mtree_mult1_30_im0_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_30_im0_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_30_im0_s1
    );
    u0_m0_wo0_mtree_mult1_30_im0_q <= u0_m0_wo0_mtree_mult1_30_im0_s1;

    -- u0_m0_wo0_mtree_mult1_30_align_8(BITSHIFT,183)@15
    u0_m0_wo0_mtree_mult1_30_align_8_qint <= u0_m0_wo0_mtree_mult1_30_im0_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_30_align_8_q <= u0_m0_wo0_mtree_mult1_30_align_8_qint(43 downto 0);

    -- u0_m0_wo0_mtree_mult1_30_bjA5(BITJOIN,180)@13
    u0_m0_wo0_mtree_mult1_30_bjA5_q <= GND_q & u0_m0_wo0_mtree_mult1_30_bs1_merged_bit_select_c;

    -- u0_m0_wo0_mtree_mult1_30_im3(MULT,178)@13 + 2
    u0_m0_wo0_mtree_mult1_30_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_30_bjA5_q);
    u0_m0_wo0_mtree_mult1_30_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr1_q);
    u0_m0_wo0_mtree_mult1_30_im3_reset <= areset;
    u0_m0_wo0_mtree_mult1_30_im3_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 12,
        lpm_widthp => 30,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_30_im3_a0,
        datab => u0_m0_wo0_mtree_mult1_30_im3_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_30_im3_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_30_im3_s1
    );
    u0_m0_wo0_mtree_mult1_30_im3_q <= u0_m0_wo0_mtree_mult1_30_im3_s1;

    -- u0_m0_wo0_mtree_mult1_30_result_add_0_0(ADD,185)@15 + 1
    u0_m0_wo0_mtree_mult1_30_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((44 downto 30 => u0_m0_wo0_mtree_mult1_30_im3_q(29)) & u0_m0_wo0_mtree_mult1_30_im3_q));
    u0_m0_wo0_mtree_mult1_30_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((44 downto 44 => u0_m0_wo0_mtree_mult1_30_align_8_q(43)) & u0_m0_wo0_mtree_mult1_30_align_8_q));
    u0_m0_wo0_mtree_mult1_30_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_30_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_30_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_30_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_30_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_30_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_30_result_add_0_0_o(44 downto 0);

    -- u0_m0_wo0_mtree_add0_15(ADD,138)@16 + 1
    u0_m0_wo0_mtree_add0_15_a <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_30_result_add_0_0_q);
    u0_m0_wo0_mtree_add0_15_b <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_31_result_add_0_0_q);
    u0_m0_wo0_mtree_add0_15_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_15_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_15_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_15_a) + SIGNED(u0_m0_wo0_mtree_add0_15_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_15_q <= u0_m0_wo0_mtree_add0_15_o(44 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr2(DELAY,25)@13
    u0_m0_wo0_wi0_r0_delayr2 : dspba_delay
    GENERIC MAP ( width => 12, depth => 16, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr1_q, xout => u0_m0_wo0_wi0_r0_delayr2_q, ena => d_u0_m0_wo0_compute_q_13_q(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_cm2(LOOKUP,61)@12 + 1
    u0_m0_wo0_cm2_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm2_q <= "11001111111010010110100000100000";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca31_q) IS
                WHEN "00" => u0_m0_wo0_cm2_q <= "11001111111010010110100000100000";
                WHEN "01" => u0_m0_wo0_cm2_q <= "11100110010101110010010101110011";
                WHEN "10" => u0_m0_wo0_cm2_q <= "11111010011000011011000100100110";
                WHEN "11" => u0_m0_wo0_cm2_q <= "00001111101100011000001011011111";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm2_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_29_bs1_merged_bit_select(BITSELECT,518)@13
    u0_m0_wo0_mtree_mult1_29_bs1_merged_bit_select_b <= STD_LOGIC_VECTOR(u0_m0_wo0_cm2_q(31 downto 17));
    u0_m0_wo0_mtree_mult1_29_bs1_merged_bit_select_c <= STD_LOGIC_VECTOR(u0_m0_wo0_cm2_q(16 downto 0));

    -- u0_m0_wo0_mtree_mult1_29_im0(MULT,186)@13 + 2
    u0_m0_wo0_mtree_mult1_29_im0_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_29_bs1_merged_bit_select_b);
    u0_m0_wo0_mtree_mult1_29_im0_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr2_q);
    u0_m0_wo0_mtree_mult1_29_im0_reset <= areset;
    u0_m0_wo0_mtree_mult1_29_im0_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 15,
        lpm_widthb => 12,
        lpm_widthp => 27,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_29_im0_a0,
        datab => u0_m0_wo0_mtree_mult1_29_im0_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_29_im0_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_29_im0_s1
    );
    u0_m0_wo0_mtree_mult1_29_im0_q <= u0_m0_wo0_mtree_mult1_29_im0_s1;

    -- u0_m0_wo0_mtree_mult1_29_align_8(BITSHIFT,194)@15
    u0_m0_wo0_mtree_mult1_29_align_8_qint <= u0_m0_wo0_mtree_mult1_29_im0_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_29_align_8_q <= u0_m0_wo0_mtree_mult1_29_align_8_qint(43 downto 0);

    -- u0_m0_wo0_mtree_mult1_29_bjA5(BITJOIN,191)@13
    u0_m0_wo0_mtree_mult1_29_bjA5_q <= GND_q & u0_m0_wo0_mtree_mult1_29_bs1_merged_bit_select_c;

    -- u0_m0_wo0_mtree_mult1_29_im3(MULT,189)@13 + 2
    u0_m0_wo0_mtree_mult1_29_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_29_bjA5_q);
    u0_m0_wo0_mtree_mult1_29_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr2_q);
    u0_m0_wo0_mtree_mult1_29_im3_reset <= areset;
    u0_m0_wo0_mtree_mult1_29_im3_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 12,
        lpm_widthp => 30,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_29_im3_a0,
        datab => u0_m0_wo0_mtree_mult1_29_im3_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_29_im3_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_29_im3_s1
    );
    u0_m0_wo0_mtree_mult1_29_im3_q <= u0_m0_wo0_mtree_mult1_29_im3_s1;

    -- u0_m0_wo0_mtree_mult1_29_result_add_0_0(ADD,196)@15 + 1
    u0_m0_wo0_mtree_mult1_29_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((44 downto 30 => u0_m0_wo0_mtree_mult1_29_im3_q(29)) & u0_m0_wo0_mtree_mult1_29_im3_q));
    u0_m0_wo0_mtree_mult1_29_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((44 downto 44 => u0_m0_wo0_mtree_mult1_29_align_8_q(43)) & u0_m0_wo0_mtree_mult1_29_align_8_q));
    u0_m0_wo0_mtree_mult1_29_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_29_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_29_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_29_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_29_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_29_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_29_result_add_0_0_o(44 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr3(DELAY,26)@13
    u0_m0_wo0_wi0_r0_delayr3 : dspba_delay
    GENERIC MAP ( width => 12, depth => 16, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr2_q, xout => u0_m0_wo0_wi0_r0_delayr3_q, ena => d_u0_m0_wo0_compute_q_13_q(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_cm3(LOOKUP,62)@12 + 1
    u0_m0_wo0_cm3_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm3_q <= "00010110011111100001101110010010";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca31_q) IS
                WHEN "00" => u0_m0_wo0_cm3_q <= "00010110011111100001101110010010";
                WHEN "01" => u0_m0_wo0_cm3_q <= "00001000111111110000100010111100";
                WHEN "10" => u0_m0_wo0_cm3_q <= "11110000111001111011100011111011";
                WHEN "11" => u0_m0_wo0_cm3_q <= "11010110110011100000100001110111";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm3_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_28_bs1_merged_bit_select(BITSELECT,519)@13
    u0_m0_wo0_mtree_mult1_28_bs1_merged_bit_select_b <= STD_LOGIC_VECTOR(u0_m0_wo0_cm3_q(31 downto 17));
    u0_m0_wo0_mtree_mult1_28_bs1_merged_bit_select_c <= STD_LOGIC_VECTOR(u0_m0_wo0_cm3_q(16 downto 0));

    -- u0_m0_wo0_mtree_mult1_28_im0(MULT,197)@13 + 2
    u0_m0_wo0_mtree_mult1_28_im0_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_28_bs1_merged_bit_select_b);
    u0_m0_wo0_mtree_mult1_28_im0_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr3_q);
    u0_m0_wo0_mtree_mult1_28_im0_reset <= areset;
    u0_m0_wo0_mtree_mult1_28_im0_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 15,
        lpm_widthb => 12,
        lpm_widthp => 27,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_28_im0_a0,
        datab => u0_m0_wo0_mtree_mult1_28_im0_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_28_im0_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_28_im0_s1
    );
    u0_m0_wo0_mtree_mult1_28_im0_q <= u0_m0_wo0_mtree_mult1_28_im0_s1;

    -- u0_m0_wo0_mtree_mult1_28_align_8(BITSHIFT,205)@15
    u0_m0_wo0_mtree_mult1_28_align_8_qint <= u0_m0_wo0_mtree_mult1_28_im0_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_28_align_8_q <= u0_m0_wo0_mtree_mult1_28_align_8_qint(43 downto 0);

    -- u0_m0_wo0_mtree_mult1_28_bjA5(BITJOIN,202)@13
    u0_m0_wo0_mtree_mult1_28_bjA5_q <= GND_q & u0_m0_wo0_mtree_mult1_28_bs1_merged_bit_select_c;

    -- u0_m0_wo0_mtree_mult1_28_im3(MULT,200)@13 + 2
    u0_m0_wo0_mtree_mult1_28_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_28_bjA5_q);
    u0_m0_wo0_mtree_mult1_28_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr3_q);
    u0_m0_wo0_mtree_mult1_28_im3_reset <= areset;
    u0_m0_wo0_mtree_mult1_28_im3_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 12,
        lpm_widthp => 30,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_28_im3_a0,
        datab => u0_m0_wo0_mtree_mult1_28_im3_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_28_im3_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_28_im3_s1
    );
    u0_m0_wo0_mtree_mult1_28_im3_q <= u0_m0_wo0_mtree_mult1_28_im3_s1;

    -- u0_m0_wo0_mtree_mult1_28_result_add_0_0(ADD,207)@15 + 1
    u0_m0_wo0_mtree_mult1_28_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((44 downto 30 => u0_m0_wo0_mtree_mult1_28_im3_q(29)) & u0_m0_wo0_mtree_mult1_28_im3_q));
    u0_m0_wo0_mtree_mult1_28_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((44 downto 44 => u0_m0_wo0_mtree_mult1_28_align_8_q(43)) & u0_m0_wo0_mtree_mult1_28_align_8_q));
    u0_m0_wo0_mtree_mult1_28_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_28_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_28_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_28_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_28_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_28_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_28_result_add_0_0_o(44 downto 0);

    -- u0_m0_wo0_mtree_add0_14(ADD,137)@16 + 1
    u0_m0_wo0_mtree_add0_14_a <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_28_result_add_0_0_q);
    u0_m0_wo0_mtree_add0_14_b <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_29_result_add_0_0_q);
    u0_m0_wo0_mtree_add0_14_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_14_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_14_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_14_a) + SIGNED(u0_m0_wo0_mtree_add0_14_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_14_q <= u0_m0_wo0_mtree_add0_14_o(44 downto 0);

    -- u0_m0_wo0_mtree_add1_7(ADD,146)@17 + 1
    u0_m0_wo0_mtree_add1_7_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((45 downto 45 => u0_m0_wo0_mtree_add0_14_q(44)) & u0_m0_wo0_mtree_add0_14_q));
    u0_m0_wo0_mtree_add1_7_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((45 downto 45 => u0_m0_wo0_mtree_add0_15_q(44)) & u0_m0_wo0_mtree_add0_15_q));
    u0_m0_wo0_mtree_add1_7_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_7_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_7_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_7_a) + SIGNED(u0_m0_wo0_mtree_add1_7_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_7_q <= u0_m0_wo0_mtree_add1_7_o(45 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr4(DELAY,27)@13
    u0_m0_wo0_wi0_r0_delayr4 : dspba_delay
    GENERIC MAP ( width => 12, depth => 16, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr3_q, xout => u0_m0_wo0_wi0_r0_delayr4_q, ena => d_u0_m0_wo0_compute_q_13_q(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_cm4(LOOKUP,63)@12 + 1
    u0_m0_wo0_cm4_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm4_q <= "00101011000000001100110101111000";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca31_q) IS
                WHEN "00" => u0_m0_wo0_cm4_q <= "00101011000000001100110101111000";
                WHEN "01" => u0_m0_wo0_cm4_q <= "00110010100010110011001100110110";
                WHEN "10" => u0_m0_wo0_cm4_q <= "00101010011110100000011011001011";
                WHEN "11" => u0_m0_wo0_cm4_q <= "00101001111111001010011101001000";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm4_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_27_bs1_merged_bit_select(BITSELECT,520)@13
    u0_m0_wo0_mtree_mult1_27_bs1_merged_bit_select_b <= STD_LOGIC_VECTOR(u0_m0_wo0_cm4_q(31 downto 17));
    u0_m0_wo0_mtree_mult1_27_bs1_merged_bit_select_c <= STD_LOGIC_VECTOR(u0_m0_wo0_cm4_q(16 downto 0));

    -- u0_m0_wo0_mtree_mult1_27_im0(MULT,208)@13 + 2
    u0_m0_wo0_mtree_mult1_27_im0_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_27_bs1_merged_bit_select_b);
    u0_m0_wo0_mtree_mult1_27_im0_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr4_q);
    u0_m0_wo0_mtree_mult1_27_im0_reset <= areset;
    u0_m0_wo0_mtree_mult1_27_im0_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 15,
        lpm_widthb => 12,
        lpm_widthp => 27,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_27_im0_a0,
        datab => u0_m0_wo0_mtree_mult1_27_im0_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_27_im0_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_27_im0_s1
    );
    u0_m0_wo0_mtree_mult1_27_im0_q <= u0_m0_wo0_mtree_mult1_27_im0_s1;

    -- u0_m0_wo0_mtree_mult1_27_align_8(BITSHIFT,216)@15
    u0_m0_wo0_mtree_mult1_27_align_8_qint <= u0_m0_wo0_mtree_mult1_27_im0_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_27_align_8_q <= u0_m0_wo0_mtree_mult1_27_align_8_qint(43 downto 0);

    -- u0_m0_wo0_mtree_mult1_27_bjA5(BITJOIN,213)@13
    u0_m0_wo0_mtree_mult1_27_bjA5_q <= GND_q & u0_m0_wo0_mtree_mult1_27_bs1_merged_bit_select_c;

    -- u0_m0_wo0_mtree_mult1_27_im3(MULT,211)@13 + 2
    u0_m0_wo0_mtree_mult1_27_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_27_bjA5_q);
    u0_m0_wo0_mtree_mult1_27_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr4_q);
    u0_m0_wo0_mtree_mult1_27_im3_reset <= areset;
    u0_m0_wo0_mtree_mult1_27_im3_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 12,
        lpm_widthp => 30,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_27_im3_a0,
        datab => u0_m0_wo0_mtree_mult1_27_im3_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_27_im3_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_27_im3_s1
    );
    u0_m0_wo0_mtree_mult1_27_im3_q <= u0_m0_wo0_mtree_mult1_27_im3_s1;

    -- u0_m0_wo0_mtree_mult1_27_result_add_0_0(ADD,218)@15 + 1
    u0_m0_wo0_mtree_mult1_27_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((44 downto 30 => u0_m0_wo0_mtree_mult1_27_im3_q(29)) & u0_m0_wo0_mtree_mult1_27_im3_q));
    u0_m0_wo0_mtree_mult1_27_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((44 downto 44 => u0_m0_wo0_mtree_mult1_27_align_8_q(43)) & u0_m0_wo0_mtree_mult1_27_align_8_q));
    u0_m0_wo0_mtree_mult1_27_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_27_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_27_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_27_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_27_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_27_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_27_result_add_0_0_o(44 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr5(DELAY,28)@13
    u0_m0_wo0_wi0_r0_delayr5 : dspba_delay
    GENERIC MAP ( width => 12, depth => 16, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr4_q, xout => u0_m0_wo0_wi0_r0_delayr5_q, ena => d_u0_m0_wo0_compute_q_13_q(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_cm5(LOOKUP,64)@12 + 1
    u0_m0_wo0_cm5_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm5_q <= "11100101111110110011010010111101";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca31_q) IS
                WHEN "00" => u0_m0_wo0_cm5_q <= "11100101111110110011010010111101";
                WHEN "01" => u0_m0_wo0_cm5_q <= "00000101111111100110110101101001";
                WHEN "10" => u0_m0_wo0_cm5_q <= "11111000011101100100110010010010";
                WHEN "11" => u0_m0_wo0_cm5_q <= "00000101100000110010010011010011";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm5_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_26_bs1_merged_bit_select(BITSELECT,521)@13
    u0_m0_wo0_mtree_mult1_26_bs1_merged_bit_select_b <= STD_LOGIC_VECTOR(u0_m0_wo0_cm5_q(31 downto 17));
    u0_m0_wo0_mtree_mult1_26_bs1_merged_bit_select_c <= STD_LOGIC_VECTOR(u0_m0_wo0_cm5_q(16 downto 0));

    -- u0_m0_wo0_mtree_mult1_26_im0(MULT,219)@13 + 2
    u0_m0_wo0_mtree_mult1_26_im0_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_26_bs1_merged_bit_select_b);
    u0_m0_wo0_mtree_mult1_26_im0_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr5_q);
    u0_m0_wo0_mtree_mult1_26_im0_reset <= areset;
    u0_m0_wo0_mtree_mult1_26_im0_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 15,
        lpm_widthb => 12,
        lpm_widthp => 27,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_26_im0_a0,
        datab => u0_m0_wo0_mtree_mult1_26_im0_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_26_im0_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_26_im0_s1
    );
    u0_m0_wo0_mtree_mult1_26_im0_q <= u0_m0_wo0_mtree_mult1_26_im0_s1;

    -- u0_m0_wo0_mtree_mult1_26_align_8(BITSHIFT,227)@15
    u0_m0_wo0_mtree_mult1_26_align_8_qint <= u0_m0_wo0_mtree_mult1_26_im0_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_26_align_8_q <= u0_m0_wo0_mtree_mult1_26_align_8_qint(43 downto 0);

    -- u0_m0_wo0_mtree_mult1_26_bjA5(BITJOIN,224)@13
    u0_m0_wo0_mtree_mult1_26_bjA5_q <= GND_q & u0_m0_wo0_mtree_mult1_26_bs1_merged_bit_select_c;

    -- u0_m0_wo0_mtree_mult1_26_im3(MULT,222)@13 + 2
    u0_m0_wo0_mtree_mult1_26_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_26_bjA5_q);
    u0_m0_wo0_mtree_mult1_26_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr5_q);
    u0_m0_wo0_mtree_mult1_26_im3_reset <= areset;
    u0_m0_wo0_mtree_mult1_26_im3_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 12,
        lpm_widthp => 30,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_26_im3_a0,
        datab => u0_m0_wo0_mtree_mult1_26_im3_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_26_im3_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_26_im3_s1
    );
    u0_m0_wo0_mtree_mult1_26_im3_q <= u0_m0_wo0_mtree_mult1_26_im3_s1;

    -- u0_m0_wo0_mtree_mult1_26_result_add_0_0(ADD,229)@15 + 1
    u0_m0_wo0_mtree_mult1_26_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((44 downto 30 => u0_m0_wo0_mtree_mult1_26_im3_q(29)) & u0_m0_wo0_mtree_mult1_26_im3_q));
    u0_m0_wo0_mtree_mult1_26_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((44 downto 44 => u0_m0_wo0_mtree_mult1_26_align_8_q(43)) & u0_m0_wo0_mtree_mult1_26_align_8_q));
    u0_m0_wo0_mtree_mult1_26_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_26_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_26_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_26_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_26_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_26_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_26_result_add_0_0_o(44 downto 0);

    -- u0_m0_wo0_mtree_add0_13(ADD,136)@16 + 1
    u0_m0_wo0_mtree_add0_13_a <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_26_result_add_0_0_q);
    u0_m0_wo0_mtree_add0_13_b <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_27_result_add_0_0_q);
    u0_m0_wo0_mtree_add0_13_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_13_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_13_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_13_a) + SIGNED(u0_m0_wo0_mtree_add0_13_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_13_q <= u0_m0_wo0_mtree_add0_13_o(44 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr6(DELAY,29)@13
    u0_m0_wo0_wi0_r0_delayr6 : dspba_delay
    GENERIC MAP ( width => 12, depth => 16, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr5_q, xout => u0_m0_wo0_wi0_r0_delayr6_q, ena => d_u0_m0_wo0_compute_q_13_q(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_cm6(LOOKUP,65)@12 + 1
    u0_m0_wo0_cm6_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm6_q <= "11111011111111100000011110111001";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca31_q) IS
                WHEN "00" => u0_m0_wo0_cm6_q <= "11111011111111100000011110111001";
                WHEN "01" => u0_m0_wo0_cm6_q <= "11011111110000100100010101101100";
                WHEN "10" => u0_m0_wo0_cm6_q <= "11000100101010100000000100101111";
                WHEN "11" => u0_m0_wo0_cm6_q <= "10111101011111110000011110110010";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm6_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_25_bs1_merged_bit_select(BITSELECT,522)@13
    u0_m0_wo0_mtree_mult1_25_bs1_merged_bit_select_b <= STD_LOGIC_VECTOR(u0_m0_wo0_cm6_q(31 downto 17));
    u0_m0_wo0_mtree_mult1_25_bs1_merged_bit_select_c <= STD_LOGIC_VECTOR(u0_m0_wo0_cm6_q(16 downto 0));

    -- u0_m0_wo0_mtree_mult1_25_im0(MULT,230)@13 + 2
    u0_m0_wo0_mtree_mult1_25_im0_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_25_bs1_merged_bit_select_b);
    u0_m0_wo0_mtree_mult1_25_im0_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr6_q);
    u0_m0_wo0_mtree_mult1_25_im0_reset <= areset;
    u0_m0_wo0_mtree_mult1_25_im0_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 15,
        lpm_widthb => 12,
        lpm_widthp => 27,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_25_im0_a0,
        datab => u0_m0_wo0_mtree_mult1_25_im0_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_25_im0_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_25_im0_s1
    );
    u0_m0_wo0_mtree_mult1_25_im0_q <= u0_m0_wo0_mtree_mult1_25_im0_s1;

    -- u0_m0_wo0_mtree_mult1_25_align_8(BITSHIFT,238)@15
    u0_m0_wo0_mtree_mult1_25_align_8_qint <= u0_m0_wo0_mtree_mult1_25_im0_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_25_align_8_q <= u0_m0_wo0_mtree_mult1_25_align_8_qint(43 downto 0);

    -- u0_m0_wo0_mtree_mult1_25_bjA5(BITJOIN,235)@13
    u0_m0_wo0_mtree_mult1_25_bjA5_q <= GND_q & u0_m0_wo0_mtree_mult1_25_bs1_merged_bit_select_c;

    -- u0_m0_wo0_mtree_mult1_25_im3(MULT,233)@13 + 2
    u0_m0_wo0_mtree_mult1_25_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_25_bjA5_q);
    u0_m0_wo0_mtree_mult1_25_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr6_q);
    u0_m0_wo0_mtree_mult1_25_im3_reset <= areset;
    u0_m0_wo0_mtree_mult1_25_im3_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 12,
        lpm_widthp => 30,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_25_im3_a0,
        datab => u0_m0_wo0_mtree_mult1_25_im3_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_25_im3_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_25_im3_s1
    );
    u0_m0_wo0_mtree_mult1_25_im3_q <= u0_m0_wo0_mtree_mult1_25_im3_s1;

    -- u0_m0_wo0_mtree_mult1_25_result_add_0_0(ADD,240)@15 + 1
    u0_m0_wo0_mtree_mult1_25_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((44 downto 30 => u0_m0_wo0_mtree_mult1_25_im3_q(29)) & u0_m0_wo0_mtree_mult1_25_im3_q));
    u0_m0_wo0_mtree_mult1_25_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((44 downto 44 => u0_m0_wo0_mtree_mult1_25_align_8_q(43)) & u0_m0_wo0_mtree_mult1_25_align_8_q));
    u0_m0_wo0_mtree_mult1_25_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_25_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_25_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_25_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_25_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_25_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_25_result_add_0_0_o(44 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr7(DELAY,30)@13
    u0_m0_wo0_wi0_r0_delayr7 : dspba_delay
    GENERIC MAP ( width => 12, depth => 16, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr6_q, xout => u0_m0_wo0_wi0_r0_delayr7_q, ena => d_u0_m0_wo0_compute_q_13_q(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_cm7(LOOKUP,66)@12 + 1
    u0_m0_wo0_cm7_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm7_q <= "00111001110110110111000000110011";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca31_q) IS
                WHEN "00" => u0_m0_wo0_cm7_q <= "00111001110110110111000000110011";
                WHEN "01" => u0_m0_wo0_cm7_q <= "00101001000000111111111100101110";
                WHEN "10" => u0_m0_wo0_cm7_q <= "00100010111111110100110011111110";
                WHEN "11" => u0_m0_wo0_cm7_q <= "00001111100110111001001000101000";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm7_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_24_bs1_merged_bit_select(BITSELECT,523)@13
    u0_m0_wo0_mtree_mult1_24_bs1_merged_bit_select_b <= STD_LOGIC_VECTOR(u0_m0_wo0_cm7_q(31 downto 17));
    u0_m0_wo0_mtree_mult1_24_bs1_merged_bit_select_c <= STD_LOGIC_VECTOR(u0_m0_wo0_cm7_q(16 downto 0));

    -- u0_m0_wo0_mtree_mult1_24_im0(MULT,241)@13 + 2
    u0_m0_wo0_mtree_mult1_24_im0_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_24_bs1_merged_bit_select_b);
    u0_m0_wo0_mtree_mult1_24_im0_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr7_q);
    u0_m0_wo0_mtree_mult1_24_im0_reset <= areset;
    u0_m0_wo0_mtree_mult1_24_im0_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 15,
        lpm_widthb => 12,
        lpm_widthp => 27,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_24_im0_a0,
        datab => u0_m0_wo0_mtree_mult1_24_im0_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_24_im0_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_24_im0_s1
    );
    u0_m0_wo0_mtree_mult1_24_im0_q <= u0_m0_wo0_mtree_mult1_24_im0_s1;

    -- u0_m0_wo0_mtree_mult1_24_align_8(BITSHIFT,249)@15
    u0_m0_wo0_mtree_mult1_24_align_8_qint <= u0_m0_wo0_mtree_mult1_24_im0_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_24_align_8_q <= u0_m0_wo0_mtree_mult1_24_align_8_qint(43 downto 0);

    -- u0_m0_wo0_mtree_mult1_24_bjA5(BITJOIN,246)@13
    u0_m0_wo0_mtree_mult1_24_bjA5_q <= GND_q & u0_m0_wo0_mtree_mult1_24_bs1_merged_bit_select_c;

    -- u0_m0_wo0_mtree_mult1_24_im3(MULT,244)@13 + 2
    u0_m0_wo0_mtree_mult1_24_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_24_bjA5_q);
    u0_m0_wo0_mtree_mult1_24_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr7_q);
    u0_m0_wo0_mtree_mult1_24_im3_reset <= areset;
    u0_m0_wo0_mtree_mult1_24_im3_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 12,
        lpm_widthp => 30,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_24_im3_a0,
        datab => u0_m0_wo0_mtree_mult1_24_im3_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_24_im3_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_24_im3_s1
    );
    u0_m0_wo0_mtree_mult1_24_im3_q <= u0_m0_wo0_mtree_mult1_24_im3_s1;

    -- u0_m0_wo0_mtree_mult1_24_result_add_0_0(ADD,251)@15 + 1
    u0_m0_wo0_mtree_mult1_24_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((44 downto 30 => u0_m0_wo0_mtree_mult1_24_im3_q(29)) & u0_m0_wo0_mtree_mult1_24_im3_q));
    u0_m0_wo0_mtree_mult1_24_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((44 downto 44 => u0_m0_wo0_mtree_mult1_24_align_8_q(43)) & u0_m0_wo0_mtree_mult1_24_align_8_q));
    u0_m0_wo0_mtree_mult1_24_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_24_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_24_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_24_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_24_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_24_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_24_result_add_0_0_o(44 downto 0);

    -- u0_m0_wo0_mtree_add0_12(ADD,135)@16 + 1
    u0_m0_wo0_mtree_add0_12_a <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_24_result_add_0_0_q);
    u0_m0_wo0_mtree_add0_12_b <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_25_result_add_0_0_q);
    u0_m0_wo0_mtree_add0_12_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_12_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_12_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_12_a) + SIGNED(u0_m0_wo0_mtree_add0_12_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_12_q <= u0_m0_wo0_mtree_add0_12_o(44 downto 0);

    -- u0_m0_wo0_mtree_add1_6(ADD,145)@17 + 1
    u0_m0_wo0_mtree_add1_6_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((45 downto 45 => u0_m0_wo0_mtree_add0_12_q(44)) & u0_m0_wo0_mtree_add0_12_q));
    u0_m0_wo0_mtree_add1_6_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((45 downto 45 => u0_m0_wo0_mtree_add0_13_q(44)) & u0_m0_wo0_mtree_add0_13_q));
    u0_m0_wo0_mtree_add1_6_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_6_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_6_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_6_a) + SIGNED(u0_m0_wo0_mtree_add1_6_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_6_q <= u0_m0_wo0_mtree_add1_6_o(45 downto 0);

    -- u0_m0_wo0_mtree_add2_3(ADD,150)@18 + 1
    u0_m0_wo0_mtree_add2_3_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((46 downto 46 => u0_m0_wo0_mtree_add1_6_q(45)) & u0_m0_wo0_mtree_add1_6_q));
    u0_m0_wo0_mtree_add2_3_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((46 downto 46 => u0_m0_wo0_mtree_add1_7_q(45)) & u0_m0_wo0_mtree_add1_7_q));
    u0_m0_wo0_mtree_add2_3_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add2_3_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add2_3_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add2_3_a) + SIGNED(u0_m0_wo0_mtree_add2_3_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add2_3_q <= u0_m0_wo0_mtree_add2_3_o(46 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr8(DELAY,31)@13
    u0_m0_wo0_wi0_r0_delayr8 : dspba_delay
    GENERIC MAP ( width => 12, depth => 16, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr7_q, xout => u0_m0_wo0_wi0_r0_delayr8_q, ena => d_u0_m0_wo0_compute_q_13_q(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_cm8(LOOKUP,67)@12 + 1
    u0_m0_wo0_cm8_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm8_q <= "01111011000111111101011101010110";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca31_q) IS
                WHEN "00" => u0_m0_wo0_cm8_q <= "01111011000111111101011101010110";
                WHEN "01" => u0_m0_wo0_cm8_q <= "01111111111111111111111111111111";
                WHEN "10" => u0_m0_wo0_cm8_q <= "01111010010101011101100111100110";
                WHEN "11" => u0_m0_wo0_cm8_q <= "01011101011000011101110100000110";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm8_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_23_bs1_merged_bit_select(BITSELECT,524)@13
    u0_m0_wo0_mtree_mult1_23_bs1_merged_bit_select_b <= STD_LOGIC_VECTOR(u0_m0_wo0_cm8_q(31 downto 17));
    u0_m0_wo0_mtree_mult1_23_bs1_merged_bit_select_c <= STD_LOGIC_VECTOR(u0_m0_wo0_cm8_q(16 downto 0));

    -- u0_m0_wo0_mtree_mult1_23_im0(MULT,252)@13 + 2
    u0_m0_wo0_mtree_mult1_23_im0_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_23_bs1_merged_bit_select_b);
    u0_m0_wo0_mtree_mult1_23_im0_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr8_q);
    u0_m0_wo0_mtree_mult1_23_im0_reset <= areset;
    u0_m0_wo0_mtree_mult1_23_im0_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 15,
        lpm_widthb => 12,
        lpm_widthp => 27,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_23_im0_a0,
        datab => u0_m0_wo0_mtree_mult1_23_im0_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_23_im0_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_23_im0_s1
    );
    u0_m0_wo0_mtree_mult1_23_im0_q <= u0_m0_wo0_mtree_mult1_23_im0_s1;

    -- u0_m0_wo0_mtree_mult1_23_align_8(BITSHIFT,260)@15
    u0_m0_wo0_mtree_mult1_23_align_8_qint <= u0_m0_wo0_mtree_mult1_23_im0_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_23_align_8_q <= u0_m0_wo0_mtree_mult1_23_align_8_qint(43 downto 0);

    -- u0_m0_wo0_mtree_mult1_23_bjA5(BITJOIN,257)@13
    u0_m0_wo0_mtree_mult1_23_bjA5_q <= GND_q & u0_m0_wo0_mtree_mult1_23_bs1_merged_bit_select_c;

    -- u0_m0_wo0_mtree_mult1_23_im3(MULT,255)@13 + 2
    u0_m0_wo0_mtree_mult1_23_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_23_bjA5_q);
    u0_m0_wo0_mtree_mult1_23_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr8_q);
    u0_m0_wo0_mtree_mult1_23_im3_reset <= areset;
    u0_m0_wo0_mtree_mult1_23_im3_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 12,
        lpm_widthp => 30,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_23_im3_a0,
        datab => u0_m0_wo0_mtree_mult1_23_im3_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_23_im3_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_23_im3_s1
    );
    u0_m0_wo0_mtree_mult1_23_im3_q <= u0_m0_wo0_mtree_mult1_23_im3_s1;

    -- u0_m0_wo0_mtree_mult1_23_result_add_0_0(ADD,262)@15 + 1
    u0_m0_wo0_mtree_mult1_23_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((44 downto 30 => u0_m0_wo0_mtree_mult1_23_im3_q(29)) & u0_m0_wo0_mtree_mult1_23_im3_q));
    u0_m0_wo0_mtree_mult1_23_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((44 downto 44 => u0_m0_wo0_mtree_mult1_23_align_8_q(43)) & u0_m0_wo0_mtree_mult1_23_align_8_q));
    u0_m0_wo0_mtree_mult1_23_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_23_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_23_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_23_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_23_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_23_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_23_result_add_0_0_o(44 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr9(DELAY,32)@13
    u0_m0_wo0_wi0_r0_delayr9 : dspba_delay
    GENERIC MAP ( width => 12, depth => 16, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr8_q, xout => u0_m0_wo0_wi0_r0_delayr9_q, ena => d_u0_m0_wo0_compute_q_13_q(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_cm9(LOOKUP,68)@12 + 1
    u0_m0_wo0_cm9_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm9_q <= "01000010111001001110101110001111";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca31_q) IS
                WHEN "00" => u0_m0_wo0_cm9_q <= "01000010111001001110101110001111";
                WHEN "01" => u0_m0_wo0_cm9_q <= "00111101001100111100111001100001";
                WHEN "10" => u0_m0_wo0_cm9_q <= "00111111111111011011110001111110";
                WHEN "11" => u0_m0_wo0_cm9_q <= "01100001111010000010101111100110";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm9_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_22_bs1_merged_bit_select(BITSELECT,525)@13
    u0_m0_wo0_mtree_mult1_22_bs1_merged_bit_select_b <= STD_LOGIC_VECTOR(u0_m0_wo0_cm9_q(31 downto 17));
    u0_m0_wo0_mtree_mult1_22_bs1_merged_bit_select_c <= STD_LOGIC_VECTOR(u0_m0_wo0_cm9_q(16 downto 0));

    -- u0_m0_wo0_mtree_mult1_22_im0(MULT,263)@13 + 2
    u0_m0_wo0_mtree_mult1_22_im0_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_22_bs1_merged_bit_select_b);
    u0_m0_wo0_mtree_mult1_22_im0_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr9_q);
    u0_m0_wo0_mtree_mult1_22_im0_reset <= areset;
    u0_m0_wo0_mtree_mult1_22_im0_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 15,
        lpm_widthb => 12,
        lpm_widthp => 27,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_22_im0_a0,
        datab => u0_m0_wo0_mtree_mult1_22_im0_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_22_im0_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_22_im0_s1
    );
    u0_m0_wo0_mtree_mult1_22_im0_q <= u0_m0_wo0_mtree_mult1_22_im0_s1;

    -- u0_m0_wo0_mtree_mult1_22_align_8(BITSHIFT,271)@15
    u0_m0_wo0_mtree_mult1_22_align_8_qint <= u0_m0_wo0_mtree_mult1_22_im0_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_22_align_8_q <= u0_m0_wo0_mtree_mult1_22_align_8_qint(43 downto 0);

    -- u0_m0_wo0_mtree_mult1_22_bjA5(BITJOIN,268)@13
    u0_m0_wo0_mtree_mult1_22_bjA5_q <= GND_q & u0_m0_wo0_mtree_mult1_22_bs1_merged_bit_select_c;

    -- u0_m0_wo0_mtree_mult1_22_im3(MULT,266)@13 + 2
    u0_m0_wo0_mtree_mult1_22_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_22_bjA5_q);
    u0_m0_wo0_mtree_mult1_22_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr9_q);
    u0_m0_wo0_mtree_mult1_22_im3_reset <= areset;
    u0_m0_wo0_mtree_mult1_22_im3_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 12,
        lpm_widthp => 30,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_22_im3_a0,
        datab => u0_m0_wo0_mtree_mult1_22_im3_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_22_im3_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_22_im3_s1
    );
    u0_m0_wo0_mtree_mult1_22_im3_q <= u0_m0_wo0_mtree_mult1_22_im3_s1;

    -- u0_m0_wo0_mtree_mult1_22_result_add_0_0(ADD,273)@15 + 1
    u0_m0_wo0_mtree_mult1_22_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((44 downto 30 => u0_m0_wo0_mtree_mult1_22_im3_q(29)) & u0_m0_wo0_mtree_mult1_22_im3_q));
    u0_m0_wo0_mtree_mult1_22_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((44 downto 44 => u0_m0_wo0_mtree_mult1_22_align_8_q(43)) & u0_m0_wo0_mtree_mult1_22_align_8_q));
    u0_m0_wo0_mtree_mult1_22_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_22_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_22_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_22_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_22_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_22_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_22_result_add_0_0_o(44 downto 0);

    -- u0_m0_wo0_mtree_add0_11(ADD,134)@16 + 1
    u0_m0_wo0_mtree_add0_11_a <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_22_result_add_0_0_q);
    u0_m0_wo0_mtree_add0_11_b <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_23_result_add_0_0_q);
    u0_m0_wo0_mtree_add0_11_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_11_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_11_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_11_a) + SIGNED(u0_m0_wo0_mtree_add0_11_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_11_q <= u0_m0_wo0_mtree_add0_11_o(44 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr10(DELAY,33)@13
    u0_m0_wo0_wi0_r0_delayr10 : dspba_delay
    GENERIC MAP ( width => 12, depth => 16, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr9_q, xout => u0_m0_wo0_wi0_r0_delayr10_q, ena => d_u0_m0_wo0_compute_q_13_q(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_cm10(LOOKUP,69)@12 + 1
    u0_m0_wo0_cm10_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm10_q <= "11010011101010001101101111110011";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca31_q) IS
                WHEN "00" => u0_m0_wo0_cm10_q <= "11010011101010001101101111110011";
                WHEN "01" => u0_m0_wo0_cm10_q <= "11110110111101111001000000011010";
                WHEN "10" => u0_m0_wo0_cm10_q <= "00011011101001011010100011010111";
                WHEN "11" => u0_m0_wo0_cm10_q <= "00110011000111100010101001001000";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm10_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_21_bs1_merged_bit_select(BITSELECT,526)@13
    u0_m0_wo0_mtree_mult1_21_bs1_merged_bit_select_b <= STD_LOGIC_VECTOR(u0_m0_wo0_cm10_q(31 downto 17));
    u0_m0_wo0_mtree_mult1_21_bs1_merged_bit_select_c <= STD_LOGIC_VECTOR(u0_m0_wo0_cm10_q(16 downto 0));

    -- u0_m0_wo0_mtree_mult1_21_im0(MULT,274)@13 + 2
    u0_m0_wo0_mtree_mult1_21_im0_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_21_bs1_merged_bit_select_b);
    u0_m0_wo0_mtree_mult1_21_im0_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr10_q);
    u0_m0_wo0_mtree_mult1_21_im0_reset <= areset;
    u0_m0_wo0_mtree_mult1_21_im0_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 15,
        lpm_widthb => 12,
        lpm_widthp => 27,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_21_im0_a0,
        datab => u0_m0_wo0_mtree_mult1_21_im0_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_21_im0_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_21_im0_s1
    );
    u0_m0_wo0_mtree_mult1_21_im0_q <= u0_m0_wo0_mtree_mult1_21_im0_s1;

    -- u0_m0_wo0_mtree_mult1_21_align_8(BITSHIFT,282)@15
    u0_m0_wo0_mtree_mult1_21_align_8_qint <= u0_m0_wo0_mtree_mult1_21_im0_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_21_align_8_q <= u0_m0_wo0_mtree_mult1_21_align_8_qint(43 downto 0);

    -- u0_m0_wo0_mtree_mult1_21_bjA5(BITJOIN,279)@13
    u0_m0_wo0_mtree_mult1_21_bjA5_q <= GND_q & u0_m0_wo0_mtree_mult1_21_bs1_merged_bit_select_c;

    -- u0_m0_wo0_mtree_mult1_21_im3(MULT,277)@13 + 2
    u0_m0_wo0_mtree_mult1_21_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_21_bjA5_q);
    u0_m0_wo0_mtree_mult1_21_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr10_q);
    u0_m0_wo0_mtree_mult1_21_im3_reset <= areset;
    u0_m0_wo0_mtree_mult1_21_im3_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 12,
        lpm_widthp => 30,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_21_im3_a0,
        datab => u0_m0_wo0_mtree_mult1_21_im3_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_21_im3_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_21_im3_s1
    );
    u0_m0_wo0_mtree_mult1_21_im3_q <= u0_m0_wo0_mtree_mult1_21_im3_s1;

    -- u0_m0_wo0_mtree_mult1_21_result_add_0_0(ADD,284)@15 + 1
    u0_m0_wo0_mtree_mult1_21_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((44 downto 30 => u0_m0_wo0_mtree_mult1_21_im3_q(29)) & u0_m0_wo0_mtree_mult1_21_im3_q));
    u0_m0_wo0_mtree_mult1_21_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((44 downto 44 => u0_m0_wo0_mtree_mult1_21_align_8_q(43)) & u0_m0_wo0_mtree_mult1_21_align_8_q));
    u0_m0_wo0_mtree_mult1_21_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_21_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_21_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_21_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_21_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_21_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_21_result_add_0_0_o(44 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr11(DELAY,34)@13
    u0_m0_wo0_wi0_r0_delayr11 : dspba_delay
    GENERIC MAP ( width => 12, depth => 16, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr10_q, xout => u0_m0_wo0_wi0_r0_delayr11_q, ena => d_u0_m0_wo0_compute_q_13_q(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_cm11(LOOKUP,70)@12 + 1
    u0_m0_wo0_cm11_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm11_q <= "11001001110101000101011110110000";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca31_q) IS
                WHEN "00" => u0_m0_wo0_cm11_q <= "11001001110101000101011110110000";
                WHEN "01" => u0_m0_wo0_cm11_q <= "10110011011000100001001101011100";
                WHEN "10" => u0_m0_wo0_cm11_q <= "10110011010101001101011110000000";
                WHEN "11" => u0_m0_wo0_cm11_q <= "11001011111011001010100100101001";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm11_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_20_bs1_merged_bit_select(BITSELECT,527)@13
    u0_m0_wo0_mtree_mult1_20_bs1_merged_bit_select_b <= STD_LOGIC_VECTOR(u0_m0_wo0_cm11_q(31 downto 17));
    u0_m0_wo0_mtree_mult1_20_bs1_merged_bit_select_c <= STD_LOGIC_VECTOR(u0_m0_wo0_cm11_q(16 downto 0));

    -- u0_m0_wo0_mtree_mult1_20_im0(MULT,285)@13 + 2
    u0_m0_wo0_mtree_mult1_20_im0_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_20_bs1_merged_bit_select_b);
    u0_m0_wo0_mtree_mult1_20_im0_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr11_q);
    u0_m0_wo0_mtree_mult1_20_im0_reset <= areset;
    u0_m0_wo0_mtree_mult1_20_im0_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 15,
        lpm_widthb => 12,
        lpm_widthp => 27,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_20_im0_a0,
        datab => u0_m0_wo0_mtree_mult1_20_im0_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_20_im0_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_20_im0_s1
    );
    u0_m0_wo0_mtree_mult1_20_im0_q <= u0_m0_wo0_mtree_mult1_20_im0_s1;

    -- u0_m0_wo0_mtree_mult1_20_align_8(BITSHIFT,293)@15
    u0_m0_wo0_mtree_mult1_20_align_8_qint <= u0_m0_wo0_mtree_mult1_20_im0_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_20_align_8_q <= u0_m0_wo0_mtree_mult1_20_align_8_qint(43 downto 0);

    -- u0_m0_wo0_mtree_mult1_20_bjA5(BITJOIN,290)@13
    u0_m0_wo0_mtree_mult1_20_bjA5_q <= GND_q & u0_m0_wo0_mtree_mult1_20_bs1_merged_bit_select_c;

    -- u0_m0_wo0_mtree_mult1_20_im3(MULT,288)@13 + 2
    u0_m0_wo0_mtree_mult1_20_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_20_bjA5_q);
    u0_m0_wo0_mtree_mult1_20_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr11_q);
    u0_m0_wo0_mtree_mult1_20_im3_reset <= areset;
    u0_m0_wo0_mtree_mult1_20_im3_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 12,
        lpm_widthp => 30,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_20_im3_a0,
        datab => u0_m0_wo0_mtree_mult1_20_im3_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_20_im3_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_20_im3_s1
    );
    u0_m0_wo0_mtree_mult1_20_im3_q <= u0_m0_wo0_mtree_mult1_20_im3_s1;

    -- u0_m0_wo0_mtree_mult1_20_result_add_0_0(ADD,295)@15 + 1
    u0_m0_wo0_mtree_mult1_20_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((44 downto 30 => u0_m0_wo0_mtree_mult1_20_im3_q(29)) & u0_m0_wo0_mtree_mult1_20_im3_q));
    u0_m0_wo0_mtree_mult1_20_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((44 downto 44 => u0_m0_wo0_mtree_mult1_20_align_8_q(43)) & u0_m0_wo0_mtree_mult1_20_align_8_q));
    u0_m0_wo0_mtree_mult1_20_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_20_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_20_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_20_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_20_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_20_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_20_result_add_0_0_o(44 downto 0);

    -- u0_m0_wo0_mtree_add0_10(ADD,133)@16 + 1
    u0_m0_wo0_mtree_add0_10_a <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_20_result_add_0_0_q);
    u0_m0_wo0_mtree_add0_10_b <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_21_result_add_0_0_q);
    u0_m0_wo0_mtree_add0_10_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_10_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_10_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_10_a) + SIGNED(u0_m0_wo0_mtree_add0_10_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_10_q <= u0_m0_wo0_mtree_add0_10_o(44 downto 0);

    -- u0_m0_wo0_mtree_add1_5(ADD,144)@17 + 1
    u0_m0_wo0_mtree_add1_5_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((45 downto 45 => u0_m0_wo0_mtree_add0_10_q(44)) & u0_m0_wo0_mtree_add0_10_q));
    u0_m0_wo0_mtree_add1_5_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((45 downto 45 => u0_m0_wo0_mtree_add0_11_q(44)) & u0_m0_wo0_mtree_add0_11_q));
    u0_m0_wo0_mtree_add1_5_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_5_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_5_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_5_a) + SIGNED(u0_m0_wo0_mtree_add1_5_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_5_q <= u0_m0_wo0_mtree_add1_5_o(45 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr12(DELAY,35)@13
    u0_m0_wo0_wi0_r0_delayr12 : dspba_delay
    GENERIC MAP ( width => 12, depth => 16, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr11_q, xout => u0_m0_wo0_wi0_r0_delayr12_q, ena => d_u0_m0_wo0_compute_q_13_q(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_cm12(LOOKUP,71)@12 + 1
    u0_m0_wo0_cm12_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm12_q <= "10101000110000110011100010000010";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca31_q) IS
                WHEN "00" => u0_m0_wo0_cm12_q <= "10101000110000110011100010000010";
                WHEN "01" => u0_m0_wo0_cm12_q <= "10101001010100001111011001000100";
                WHEN "10" => u0_m0_wo0_cm12_q <= "10110011010111010011001100110011";
                WHEN "11" => u0_m0_wo0_cm12_q <= "11000111110010101010011010110010";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm12_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_19_bs1_merged_bit_select(BITSELECT,528)@13
    u0_m0_wo0_mtree_mult1_19_bs1_merged_bit_select_b <= STD_LOGIC_VECTOR(u0_m0_wo0_cm12_q(31 downto 17));
    u0_m0_wo0_mtree_mult1_19_bs1_merged_bit_select_c <= STD_LOGIC_VECTOR(u0_m0_wo0_cm12_q(16 downto 0));

    -- u0_m0_wo0_mtree_mult1_19_im0(MULT,296)@13 + 2
    u0_m0_wo0_mtree_mult1_19_im0_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_19_bs1_merged_bit_select_b);
    u0_m0_wo0_mtree_mult1_19_im0_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr12_q);
    u0_m0_wo0_mtree_mult1_19_im0_reset <= areset;
    u0_m0_wo0_mtree_mult1_19_im0_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 15,
        lpm_widthb => 12,
        lpm_widthp => 27,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_19_im0_a0,
        datab => u0_m0_wo0_mtree_mult1_19_im0_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_19_im0_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_19_im0_s1
    );
    u0_m0_wo0_mtree_mult1_19_im0_q <= u0_m0_wo0_mtree_mult1_19_im0_s1;

    -- u0_m0_wo0_mtree_mult1_19_align_8(BITSHIFT,304)@15
    u0_m0_wo0_mtree_mult1_19_align_8_qint <= u0_m0_wo0_mtree_mult1_19_im0_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_19_align_8_q <= u0_m0_wo0_mtree_mult1_19_align_8_qint(43 downto 0);

    -- u0_m0_wo0_mtree_mult1_19_bjA5(BITJOIN,301)@13
    u0_m0_wo0_mtree_mult1_19_bjA5_q <= GND_q & u0_m0_wo0_mtree_mult1_19_bs1_merged_bit_select_c;

    -- u0_m0_wo0_mtree_mult1_19_im3(MULT,299)@13 + 2
    u0_m0_wo0_mtree_mult1_19_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_19_bjA5_q);
    u0_m0_wo0_mtree_mult1_19_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr12_q);
    u0_m0_wo0_mtree_mult1_19_im3_reset <= areset;
    u0_m0_wo0_mtree_mult1_19_im3_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 12,
        lpm_widthp => 30,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_19_im3_a0,
        datab => u0_m0_wo0_mtree_mult1_19_im3_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_19_im3_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_19_im3_s1
    );
    u0_m0_wo0_mtree_mult1_19_im3_q <= u0_m0_wo0_mtree_mult1_19_im3_s1;

    -- u0_m0_wo0_mtree_mult1_19_result_add_0_0(ADD,306)@15 + 1
    u0_m0_wo0_mtree_mult1_19_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((44 downto 30 => u0_m0_wo0_mtree_mult1_19_im3_q(29)) & u0_m0_wo0_mtree_mult1_19_im3_q));
    u0_m0_wo0_mtree_mult1_19_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((44 downto 44 => u0_m0_wo0_mtree_mult1_19_align_8_q(43)) & u0_m0_wo0_mtree_mult1_19_align_8_q));
    u0_m0_wo0_mtree_mult1_19_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_19_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_19_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_19_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_19_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_19_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_19_result_add_0_0_o(44 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr13(DELAY,36)@13
    u0_m0_wo0_wi0_r0_delayr13 : dspba_delay
    GENERIC MAP ( width => 12, depth => 16, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr12_q, xout => u0_m0_wo0_wi0_r0_delayr13_q, ena => d_u0_m0_wo0_compute_q_13_q(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_cm13(LOOKUP,72)@12 + 1
    u0_m0_wo0_cm13_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm13_q <= "11000110101001110010100010100001";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca31_q) IS
                WHEN "00" => u0_m0_wo0_cm13_q <= "11000110101001110010100010100001";
                WHEN "01" => u0_m0_wo0_cm13_q <= "11000011101001100011010000100110";
                WHEN "10" => u0_m0_wo0_cm13_q <= "11000010001001101100010101100000";
                WHEN "11" => u0_m0_wo0_cm13_q <= "10110001011010000000111001001110";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm13_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_18_bs1_merged_bit_select(BITSELECT,529)@13
    u0_m0_wo0_mtree_mult1_18_bs1_merged_bit_select_b <= STD_LOGIC_VECTOR(u0_m0_wo0_cm13_q(31 downto 17));
    u0_m0_wo0_mtree_mult1_18_bs1_merged_bit_select_c <= STD_LOGIC_VECTOR(u0_m0_wo0_cm13_q(16 downto 0));

    -- u0_m0_wo0_mtree_mult1_18_im0(MULT,307)@13 + 2
    u0_m0_wo0_mtree_mult1_18_im0_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_18_bs1_merged_bit_select_b);
    u0_m0_wo0_mtree_mult1_18_im0_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr13_q);
    u0_m0_wo0_mtree_mult1_18_im0_reset <= areset;
    u0_m0_wo0_mtree_mult1_18_im0_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 15,
        lpm_widthb => 12,
        lpm_widthp => 27,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_18_im0_a0,
        datab => u0_m0_wo0_mtree_mult1_18_im0_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_18_im0_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_18_im0_s1
    );
    u0_m0_wo0_mtree_mult1_18_im0_q <= u0_m0_wo0_mtree_mult1_18_im0_s1;

    -- u0_m0_wo0_mtree_mult1_18_align_8(BITSHIFT,315)@15
    u0_m0_wo0_mtree_mult1_18_align_8_qint <= u0_m0_wo0_mtree_mult1_18_im0_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_18_align_8_q <= u0_m0_wo0_mtree_mult1_18_align_8_qint(43 downto 0);

    -- u0_m0_wo0_mtree_mult1_18_bjA5(BITJOIN,312)@13
    u0_m0_wo0_mtree_mult1_18_bjA5_q <= GND_q & u0_m0_wo0_mtree_mult1_18_bs1_merged_bit_select_c;

    -- u0_m0_wo0_mtree_mult1_18_im3(MULT,310)@13 + 2
    u0_m0_wo0_mtree_mult1_18_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_18_bjA5_q);
    u0_m0_wo0_mtree_mult1_18_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr13_q);
    u0_m0_wo0_mtree_mult1_18_im3_reset <= areset;
    u0_m0_wo0_mtree_mult1_18_im3_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 12,
        lpm_widthp => 30,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_18_im3_a0,
        datab => u0_m0_wo0_mtree_mult1_18_im3_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_18_im3_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_18_im3_s1
    );
    u0_m0_wo0_mtree_mult1_18_im3_q <= u0_m0_wo0_mtree_mult1_18_im3_s1;

    -- u0_m0_wo0_mtree_mult1_18_result_add_0_0(ADD,317)@15 + 1
    u0_m0_wo0_mtree_mult1_18_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((44 downto 30 => u0_m0_wo0_mtree_mult1_18_im3_q(29)) & u0_m0_wo0_mtree_mult1_18_im3_q));
    u0_m0_wo0_mtree_mult1_18_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((44 downto 44 => u0_m0_wo0_mtree_mult1_18_align_8_q(43)) & u0_m0_wo0_mtree_mult1_18_align_8_q));
    u0_m0_wo0_mtree_mult1_18_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_18_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_18_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_18_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_18_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_18_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_18_result_add_0_0_o(44 downto 0);

    -- u0_m0_wo0_mtree_add0_9(ADD,132)@16 + 1
    u0_m0_wo0_mtree_add0_9_a <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_18_result_add_0_0_q);
    u0_m0_wo0_mtree_add0_9_b <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_19_result_add_0_0_q);
    u0_m0_wo0_mtree_add0_9_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_9_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_9_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_9_a) + SIGNED(u0_m0_wo0_mtree_add0_9_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_9_q <= u0_m0_wo0_mtree_add0_9_o(44 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr14(DELAY,37)@13
    u0_m0_wo0_wi0_r0_delayr14 : dspba_delay
    GENERIC MAP ( width => 12, depth => 16, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr13_q, xout => u0_m0_wo0_wi0_r0_delayr14_q, ena => d_u0_m0_wo0_compute_q_13_q(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_cm14(LOOKUP,73)@12 + 1
    u0_m0_wo0_cm14_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm14_q <= "11101100011000010110101000011011";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca31_q) IS
                WHEN "00" => u0_m0_wo0_cm14_q <= "11101100011000010110101000011011";
                WHEN "01" => u0_m0_wo0_cm14_q <= "11101010010100111110010001101010";
                WHEN "10" => u0_m0_wo0_cm14_q <= "11100000110010011000110111111111";
                WHEN "11" => u0_m0_wo0_cm14_q <= "11001010000001111000100101011011";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm14_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_17_bs1_merged_bit_select(BITSELECT,530)@13
    u0_m0_wo0_mtree_mult1_17_bs1_merged_bit_select_b <= STD_LOGIC_VECTOR(u0_m0_wo0_cm14_q(31 downto 17));
    u0_m0_wo0_mtree_mult1_17_bs1_merged_bit_select_c <= STD_LOGIC_VECTOR(u0_m0_wo0_cm14_q(16 downto 0));

    -- u0_m0_wo0_mtree_mult1_17_im0(MULT,318)@13 + 2
    u0_m0_wo0_mtree_mult1_17_im0_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_17_bs1_merged_bit_select_b);
    u0_m0_wo0_mtree_mult1_17_im0_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr14_q);
    u0_m0_wo0_mtree_mult1_17_im0_reset <= areset;
    u0_m0_wo0_mtree_mult1_17_im0_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 15,
        lpm_widthb => 12,
        lpm_widthp => 27,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_17_im0_a0,
        datab => u0_m0_wo0_mtree_mult1_17_im0_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_17_im0_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_17_im0_s1
    );
    u0_m0_wo0_mtree_mult1_17_im0_q <= u0_m0_wo0_mtree_mult1_17_im0_s1;

    -- u0_m0_wo0_mtree_mult1_17_align_8(BITSHIFT,326)@15
    u0_m0_wo0_mtree_mult1_17_align_8_qint <= u0_m0_wo0_mtree_mult1_17_im0_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_17_align_8_q <= u0_m0_wo0_mtree_mult1_17_align_8_qint(43 downto 0);

    -- u0_m0_wo0_mtree_mult1_17_bjA5(BITJOIN,323)@13
    u0_m0_wo0_mtree_mult1_17_bjA5_q <= GND_q & u0_m0_wo0_mtree_mult1_17_bs1_merged_bit_select_c;

    -- u0_m0_wo0_mtree_mult1_17_im3(MULT,321)@13 + 2
    u0_m0_wo0_mtree_mult1_17_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_17_bjA5_q);
    u0_m0_wo0_mtree_mult1_17_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr14_q);
    u0_m0_wo0_mtree_mult1_17_im3_reset <= areset;
    u0_m0_wo0_mtree_mult1_17_im3_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 12,
        lpm_widthp => 30,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_17_im3_a0,
        datab => u0_m0_wo0_mtree_mult1_17_im3_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_17_im3_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_17_im3_s1
    );
    u0_m0_wo0_mtree_mult1_17_im3_q <= u0_m0_wo0_mtree_mult1_17_im3_s1;

    -- u0_m0_wo0_mtree_mult1_17_result_add_0_0(ADD,328)@15 + 1
    u0_m0_wo0_mtree_mult1_17_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((44 downto 30 => u0_m0_wo0_mtree_mult1_17_im3_q(29)) & u0_m0_wo0_mtree_mult1_17_im3_q));
    u0_m0_wo0_mtree_mult1_17_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((44 downto 44 => u0_m0_wo0_mtree_mult1_17_align_8_q(43)) & u0_m0_wo0_mtree_mult1_17_align_8_q));
    u0_m0_wo0_mtree_mult1_17_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_17_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_17_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_17_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_17_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_17_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_17_result_add_0_0_o(44 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr15(DELAY,38)@13
    u0_m0_wo0_wi0_r0_delayr15 : dspba_delay
    GENERIC MAP ( width => 12, depth => 16, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr14_q, xout => u0_m0_wo0_wi0_r0_delayr15_q, ena => d_u0_m0_wo0_compute_q_13_q(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_cm15(LOOKUP,74)@12 + 1
    u0_m0_wo0_cm15_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm15_q <= "11110101000101010011100110001000";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca31_q) IS
                WHEN "00" => u0_m0_wo0_cm15_q <= "11110101000101010011100110001000";
                WHEN "01" => u0_m0_wo0_cm15_q <= "11100000111001110010100000011011";
                WHEN "10" => u0_m0_wo0_cm15_q <= "11100111000000110010111110100000";
                WHEN "11" => u0_m0_wo0_cm15_q <= "11101100001010110001011000001101";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm15_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_16_bs1_merged_bit_select(BITSELECT,531)@13
    u0_m0_wo0_mtree_mult1_16_bs1_merged_bit_select_b <= STD_LOGIC_VECTOR(u0_m0_wo0_cm15_q(31 downto 17));
    u0_m0_wo0_mtree_mult1_16_bs1_merged_bit_select_c <= STD_LOGIC_VECTOR(u0_m0_wo0_cm15_q(16 downto 0));

    -- u0_m0_wo0_mtree_mult1_16_im0(MULT,329)@13 + 2
    u0_m0_wo0_mtree_mult1_16_im0_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_16_bs1_merged_bit_select_b);
    u0_m0_wo0_mtree_mult1_16_im0_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr15_q);
    u0_m0_wo0_mtree_mult1_16_im0_reset <= areset;
    u0_m0_wo0_mtree_mult1_16_im0_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 15,
        lpm_widthb => 12,
        lpm_widthp => 27,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_16_im0_a0,
        datab => u0_m0_wo0_mtree_mult1_16_im0_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_16_im0_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_16_im0_s1
    );
    u0_m0_wo0_mtree_mult1_16_im0_q <= u0_m0_wo0_mtree_mult1_16_im0_s1;

    -- u0_m0_wo0_mtree_mult1_16_align_8(BITSHIFT,337)@15
    u0_m0_wo0_mtree_mult1_16_align_8_qint <= u0_m0_wo0_mtree_mult1_16_im0_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_16_align_8_q <= u0_m0_wo0_mtree_mult1_16_align_8_qint(43 downto 0);

    -- u0_m0_wo0_mtree_mult1_16_bjA5(BITJOIN,334)@13
    u0_m0_wo0_mtree_mult1_16_bjA5_q <= GND_q & u0_m0_wo0_mtree_mult1_16_bs1_merged_bit_select_c;

    -- u0_m0_wo0_mtree_mult1_16_im3(MULT,332)@13 + 2
    u0_m0_wo0_mtree_mult1_16_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_16_bjA5_q);
    u0_m0_wo0_mtree_mult1_16_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr15_q);
    u0_m0_wo0_mtree_mult1_16_im3_reset <= areset;
    u0_m0_wo0_mtree_mult1_16_im3_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 12,
        lpm_widthp => 30,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_16_im3_a0,
        datab => u0_m0_wo0_mtree_mult1_16_im3_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_16_im3_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_16_im3_s1
    );
    u0_m0_wo0_mtree_mult1_16_im3_q <= u0_m0_wo0_mtree_mult1_16_im3_s1;

    -- u0_m0_wo0_mtree_mult1_16_result_add_0_0(ADD,339)@15 + 1
    u0_m0_wo0_mtree_mult1_16_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((44 downto 30 => u0_m0_wo0_mtree_mult1_16_im3_q(29)) & u0_m0_wo0_mtree_mult1_16_im3_q));
    u0_m0_wo0_mtree_mult1_16_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((44 downto 44 => u0_m0_wo0_mtree_mult1_16_align_8_q(43)) & u0_m0_wo0_mtree_mult1_16_align_8_q));
    u0_m0_wo0_mtree_mult1_16_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_16_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_16_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_16_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_16_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_16_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_16_result_add_0_0_o(44 downto 0);

    -- u0_m0_wo0_mtree_add0_8(ADD,131)@16 + 1
    u0_m0_wo0_mtree_add0_8_a <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_16_result_add_0_0_q);
    u0_m0_wo0_mtree_add0_8_b <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_17_result_add_0_0_q);
    u0_m0_wo0_mtree_add0_8_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_8_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_8_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_8_a) + SIGNED(u0_m0_wo0_mtree_add0_8_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_8_q <= u0_m0_wo0_mtree_add0_8_o(44 downto 0);

    -- u0_m0_wo0_mtree_add1_4(ADD,143)@17 + 1
    u0_m0_wo0_mtree_add1_4_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((45 downto 45 => u0_m0_wo0_mtree_add0_8_q(44)) & u0_m0_wo0_mtree_add0_8_q));
    u0_m0_wo0_mtree_add1_4_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((45 downto 45 => u0_m0_wo0_mtree_add0_9_q(44)) & u0_m0_wo0_mtree_add0_9_q));
    u0_m0_wo0_mtree_add1_4_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_4_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_4_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_4_a) + SIGNED(u0_m0_wo0_mtree_add1_4_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_4_q <= u0_m0_wo0_mtree_add1_4_o(45 downto 0);

    -- u0_m0_wo0_mtree_add2_2(ADD,149)@18 + 1
    u0_m0_wo0_mtree_add2_2_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((46 downto 46 => u0_m0_wo0_mtree_add1_4_q(45)) & u0_m0_wo0_mtree_add1_4_q));
    u0_m0_wo0_mtree_add2_2_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((46 downto 46 => u0_m0_wo0_mtree_add1_5_q(45)) & u0_m0_wo0_mtree_add1_5_q));
    u0_m0_wo0_mtree_add2_2_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add2_2_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add2_2_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add2_2_a) + SIGNED(u0_m0_wo0_mtree_add2_2_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add2_2_q <= u0_m0_wo0_mtree_add2_2_o(46 downto 0);

    -- u0_m0_wo0_mtree_add3_1(ADD,152)@19 + 1
    u0_m0_wo0_mtree_add3_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((47 downto 47 => u0_m0_wo0_mtree_add2_2_q(46)) & u0_m0_wo0_mtree_add2_2_q));
    u0_m0_wo0_mtree_add3_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((47 downto 47 => u0_m0_wo0_mtree_add2_3_q(46)) & u0_m0_wo0_mtree_add2_3_q));
    u0_m0_wo0_mtree_add3_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add3_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add3_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add3_1_a) + SIGNED(u0_m0_wo0_mtree_add3_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add3_1_q <= u0_m0_wo0_mtree_add3_1_o(47 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr16(DELAY,39)@13
    u0_m0_wo0_wi0_r0_delayr16 : dspba_delay
    GENERIC MAP ( width => 12, depth => 16, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr15_q, xout => u0_m0_wo0_wi0_r0_delayr16_q, ena => d_u0_m0_wo0_compute_q_13_q(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_cm16(LOOKUP,75)@12 + 1
    u0_m0_wo0_cm16_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm16_q <= "00000011100000010001110100111001";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca31_q) IS
                WHEN "00" => u0_m0_wo0_cm16_q <= "00000011100000010001110100111001";
                WHEN "01" => u0_m0_wo0_cm16_q <= "00000110100111101010000001011000";
                WHEN "10" => u0_m0_wo0_cm16_q <= "11101110011000001010100001111001";
                WHEN "11" => u0_m0_wo0_cm16_q <= "11111011110110010111011010001000";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm16_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_15_bs1_merged_bit_select(BITSELECT,532)@13
    u0_m0_wo0_mtree_mult1_15_bs1_merged_bit_select_b <= STD_LOGIC_VECTOR(u0_m0_wo0_cm16_q(31 downto 17));
    u0_m0_wo0_mtree_mult1_15_bs1_merged_bit_select_c <= STD_LOGIC_VECTOR(u0_m0_wo0_cm16_q(16 downto 0));

    -- u0_m0_wo0_mtree_mult1_15_im0(MULT,340)@13 + 2
    u0_m0_wo0_mtree_mult1_15_im0_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_15_bs1_merged_bit_select_b);
    u0_m0_wo0_mtree_mult1_15_im0_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr16_q);
    u0_m0_wo0_mtree_mult1_15_im0_reset <= areset;
    u0_m0_wo0_mtree_mult1_15_im0_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 15,
        lpm_widthb => 12,
        lpm_widthp => 27,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_15_im0_a0,
        datab => u0_m0_wo0_mtree_mult1_15_im0_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_15_im0_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_15_im0_s1
    );
    u0_m0_wo0_mtree_mult1_15_im0_q <= u0_m0_wo0_mtree_mult1_15_im0_s1;

    -- u0_m0_wo0_mtree_mult1_15_align_8(BITSHIFT,348)@15
    u0_m0_wo0_mtree_mult1_15_align_8_qint <= u0_m0_wo0_mtree_mult1_15_im0_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_15_align_8_q <= u0_m0_wo0_mtree_mult1_15_align_8_qint(43 downto 0);

    -- u0_m0_wo0_mtree_mult1_15_bjA5(BITJOIN,345)@13
    u0_m0_wo0_mtree_mult1_15_bjA5_q <= GND_q & u0_m0_wo0_mtree_mult1_15_bs1_merged_bit_select_c;

    -- u0_m0_wo0_mtree_mult1_15_im3(MULT,343)@13 + 2
    u0_m0_wo0_mtree_mult1_15_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_15_bjA5_q);
    u0_m0_wo0_mtree_mult1_15_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr16_q);
    u0_m0_wo0_mtree_mult1_15_im3_reset <= areset;
    u0_m0_wo0_mtree_mult1_15_im3_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 12,
        lpm_widthp => 30,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_15_im3_a0,
        datab => u0_m0_wo0_mtree_mult1_15_im3_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_15_im3_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_15_im3_s1
    );
    u0_m0_wo0_mtree_mult1_15_im3_q <= u0_m0_wo0_mtree_mult1_15_im3_s1;

    -- u0_m0_wo0_mtree_mult1_15_result_add_0_0(ADD,350)@15 + 1
    u0_m0_wo0_mtree_mult1_15_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((44 downto 30 => u0_m0_wo0_mtree_mult1_15_im3_q(29)) & u0_m0_wo0_mtree_mult1_15_im3_q));
    u0_m0_wo0_mtree_mult1_15_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((44 downto 44 => u0_m0_wo0_mtree_mult1_15_align_8_q(43)) & u0_m0_wo0_mtree_mult1_15_align_8_q));
    u0_m0_wo0_mtree_mult1_15_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_15_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_15_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_15_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_15_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_15_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_15_result_add_0_0_o(44 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr17(DELAY,40)@13
    u0_m0_wo0_wi0_r0_delayr17 : dspba_delay
    GENERIC MAP ( width => 12, depth => 16, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr16_q, xout => u0_m0_wo0_wi0_r0_delayr17_q, ena => d_u0_m0_wo0_compute_q_13_q(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_cm17(LOOKUP,76)@12 + 1
    u0_m0_wo0_cm17_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm17_q <= "11111010000011000101111001011111";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca31_q) IS
                WHEN "00" => u0_m0_wo0_cm17_q <= "11111010000011000101111001011111";
                WHEN "01" => u0_m0_wo0_cm17_q <= "11100010100111000011100010100001";
                WHEN "10" => u0_m0_wo0_cm17_q <= "11100110001010100011100010001111";
                WHEN "11" => u0_m0_wo0_cm17_q <= "11110110010110101101100010110110";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm17_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_14_bs1_merged_bit_select(BITSELECT,533)@13
    u0_m0_wo0_mtree_mult1_14_bs1_merged_bit_select_b <= STD_LOGIC_VECTOR(u0_m0_wo0_cm17_q(31 downto 17));
    u0_m0_wo0_mtree_mult1_14_bs1_merged_bit_select_c <= STD_LOGIC_VECTOR(u0_m0_wo0_cm17_q(16 downto 0));

    -- u0_m0_wo0_mtree_mult1_14_im0(MULT,351)@13 + 2
    u0_m0_wo0_mtree_mult1_14_im0_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_14_bs1_merged_bit_select_b);
    u0_m0_wo0_mtree_mult1_14_im0_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr17_q);
    u0_m0_wo0_mtree_mult1_14_im0_reset <= areset;
    u0_m0_wo0_mtree_mult1_14_im0_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 15,
        lpm_widthb => 12,
        lpm_widthp => 27,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_14_im0_a0,
        datab => u0_m0_wo0_mtree_mult1_14_im0_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_14_im0_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_14_im0_s1
    );
    u0_m0_wo0_mtree_mult1_14_im0_q <= u0_m0_wo0_mtree_mult1_14_im0_s1;

    -- u0_m0_wo0_mtree_mult1_14_align_8(BITSHIFT,359)@15
    u0_m0_wo0_mtree_mult1_14_align_8_qint <= u0_m0_wo0_mtree_mult1_14_im0_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_14_align_8_q <= u0_m0_wo0_mtree_mult1_14_align_8_qint(43 downto 0);

    -- u0_m0_wo0_mtree_mult1_14_bjA5(BITJOIN,356)@13
    u0_m0_wo0_mtree_mult1_14_bjA5_q <= GND_q & u0_m0_wo0_mtree_mult1_14_bs1_merged_bit_select_c;

    -- u0_m0_wo0_mtree_mult1_14_im3(MULT,354)@13 + 2
    u0_m0_wo0_mtree_mult1_14_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_14_bjA5_q);
    u0_m0_wo0_mtree_mult1_14_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr17_q);
    u0_m0_wo0_mtree_mult1_14_im3_reset <= areset;
    u0_m0_wo0_mtree_mult1_14_im3_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 12,
        lpm_widthp => 30,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_14_im3_a0,
        datab => u0_m0_wo0_mtree_mult1_14_im3_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_14_im3_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_14_im3_s1
    );
    u0_m0_wo0_mtree_mult1_14_im3_q <= u0_m0_wo0_mtree_mult1_14_im3_s1;

    -- u0_m0_wo0_mtree_mult1_14_result_add_0_0(ADD,361)@15 + 1
    u0_m0_wo0_mtree_mult1_14_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((44 downto 30 => u0_m0_wo0_mtree_mult1_14_im3_q(29)) & u0_m0_wo0_mtree_mult1_14_im3_q));
    u0_m0_wo0_mtree_mult1_14_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((44 downto 44 => u0_m0_wo0_mtree_mult1_14_align_8_q(43)) & u0_m0_wo0_mtree_mult1_14_align_8_q));
    u0_m0_wo0_mtree_mult1_14_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_14_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_14_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_14_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_14_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_14_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_14_result_add_0_0_o(44 downto 0);

    -- u0_m0_wo0_mtree_add0_7(ADD,130)@16 + 1
    u0_m0_wo0_mtree_add0_7_a <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_14_result_add_0_0_q);
    u0_m0_wo0_mtree_add0_7_b <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_15_result_add_0_0_q);
    u0_m0_wo0_mtree_add0_7_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_7_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_7_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_7_a) + SIGNED(u0_m0_wo0_mtree_add0_7_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_7_q <= u0_m0_wo0_mtree_add0_7_o(44 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr18(DELAY,41)@13
    u0_m0_wo0_wi0_r0_delayr18 : dspba_delay
    GENERIC MAP ( width => 12, depth => 16, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr17_q, xout => u0_m0_wo0_wi0_r0_delayr18_q, ena => d_u0_m0_wo0_compute_q_13_q(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_cm18(LOOKUP,77)@12 + 1
    u0_m0_wo0_cm18_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm18_q <= "11011101111101011000011001101001";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca31_q) IS
                WHEN "00" => u0_m0_wo0_cm18_q <= "11011101111101011000011001101001";
                WHEN "01" => u0_m0_wo0_cm18_q <= "11001101110011111011001000001001";
                WHEN "10" => u0_m0_wo0_cm18_q <= "11011001010001000000100001101010";
                WHEN "11" => u0_m0_wo0_cm18_q <= "11110111111100110101101010010111";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm18_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_13_bs1_merged_bit_select(BITSELECT,534)@13
    u0_m0_wo0_mtree_mult1_13_bs1_merged_bit_select_b <= STD_LOGIC_VECTOR(u0_m0_wo0_cm18_q(31 downto 17));
    u0_m0_wo0_mtree_mult1_13_bs1_merged_bit_select_c <= STD_LOGIC_VECTOR(u0_m0_wo0_cm18_q(16 downto 0));

    -- u0_m0_wo0_mtree_mult1_13_im0(MULT,362)@13 + 2
    u0_m0_wo0_mtree_mult1_13_im0_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_13_bs1_merged_bit_select_b);
    u0_m0_wo0_mtree_mult1_13_im0_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr18_q);
    u0_m0_wo0_mtree_mult1_13_im0_reset <= areset;
    u0_m0_wo0_mtree_mult1_13_im0_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 15,
        lpm_widthb => 12,
        lpm_widthp => 27,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_13_im0_a0,
        datab => u0_m0_wo0_mtree_mult1_13_im0_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_13_im0_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_13_im0_s1
    );
    u0_m0_wo0_mtree_mult1_13_im0_q <= u0_m0_wo0_mtree_mult1_13_im0_s1;

    -- u0_m0_wo0_mtree_mult1_13_align_8(BITSHIFT,370)@15
    u0_m0_wo0_mtree_mult1_13_align_8_qint <= u0_m0_wo0_mtree_mult1_13_im0_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_13_align_8_q <= u0_m0_wo0_mtree_mult1_13_align_8_qint(43 downto 0);

    -- u0_m0_wo0_mtree_mult1_13_bjA5(BITJOIN,367)@13
    u0_m0_wo0_mtree_mult1_13_bjA5_q <= GND_q & u0_m0_wo0_mtree_mult1_13_bs1_merged_bit_select_c;

    -- u0_m0_wo0_mtree_mult1_13_im3(MULT,365)@13 + 2
    u0_m0_wo0_mtree_mult1_13_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_13_bjA5_q);
    u0_m0_wo0_mtree_mult1_13_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr18_q);
    u0_m0_wo0_mtree_mult1_13_im3_reset <= areset;
    u0_m0_wo0_mtree_mult1_13_im3_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 12,
        lpm_widthp => 30,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_13_im3_a0,
        datab => u0_m0_wo0_mtree_mult1_13_im3_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_13_im3_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_13_im3_s1
    );
    u0_m0_wo0_mtree_mult1_13_im3_q <= u0_m0_wo0_mtree_mult1_13_im3_s1;

    -- u0_m0_wo0_mtree_mult1_13_result_add_0_0(ADD,372)@15 + 1
    u0_m0_wo0_mtree_mult1_13_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((44 downto 30 => u0_m0_wo0_mtree_mult1_13_im3_q(29)) & u0_m0_wo0_mtree_mult1_13_im3_q));
    u0_m0_wo0_mtree_mult1_13_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((44 downto 44 => u0_m0_wo0_mtree_mult1_13_align_8_q(43)) & u0_m0_wo0_mtree_mult1_13_align_8_q));
    u0_m0_wo0_mtree_mult1_13_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_13_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_13_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_13_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_13_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_13_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_13_result_add_0_0_o(44 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr19(DELAY,42)@13
    u0_m0_wo0_wi0_r0_delayr19 : dspba_delay
    GENERIC MAP ( width => 12, depth => 16, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr18_q, xout => u0_m0_wo0_wi0_r0_delayr19_q, ena => d_u0_m0_wo0_compute_q_13_q(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_cm19(LOOKUP,78)@12 + 1
    u0_m0_wo0_cm19_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm19_q <= "11100100101100010000111010001110";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca31_q) IS
                WHEN "00" => u0_m0_wo0_cm19_q <= "11100100101100010000111010001110";
                WHEN "01" => u0_m0_wo0_cm19_q <= "11011001111001110000010010010101";
                WHEN "10" => u0_m0_wo0_cm19_q <= "11100010000010001000111100111111";
                WHEN "11" => u0_m0_wo0_cm19_q <= "11101011110101010110101000011110";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm19_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_12_bs1_merged_bit_select(BITSELECT,535)@13
    u0_m0_wo0_mtree_mult1_12_bs1_merged_bit_select_b <= STD_LOGIC_VECTOR(u0_m0_wo0_cm19_q(31 downto 17));
    u0_m0_wo0_mtree_mult1_12_bs1_merged_bit_select_c <= STD_LOGIC_VECTOR(u0_m0_wo0_cm19_q(16 downto 0));

    -- u0_m0_wo0_mtree_mult1_12_im0(MULT,373)@13 + 2
    u0_m0_wo0_mtree_mult1_12_im0_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_12_bs1_merged_bit_select_b);
    u0_m0_wo0_mtree_mult1_12_im0_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr19_q);
    u0_m0_wo0_mtree_mult1_12_im0_reset <= areset;
    u0_m0_wo0_mtree_mult1_12_im0_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 15,
        lpm_widthb => 12,
        lpm_widthp => 27,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_12_im0_a0,
        datab => u0_m0_wo0_mtree_mult1_12_im0_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_12_im0_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_12_im0_s1
    );
    u0_m0_wo0_mtree_mult1_12_im0_q <= u0_m0_wo0_mtree_mult1_12_im0_s1;

    -- u0_m0_wo0_mtree_mult1_12_align_8(BITSHIFT,381)@15
    u0_m0_wo0_mtree_mult1_12_align_8_qint <= u0_m0_wo0_mtree_mult1_12_im0_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_12_align_8_q <= u0_m0_wo0_mtree_mult1_12_align_8_qint(43 downto 0);

    -- u0_m0_wo0_mtree_mult1_12_bjA5(BITJOIN,378)@13
    u0_m0_wo0_mtree_mult1_12_bjA5_q <= GND_q & u0_m0_wo0_mtree_mult1_12_bs1_merged_bit_select_c;

    -- u0_m0_wo0_mtree_mult1_12_im3(MULT,376)@13 + 2
    u0_m0_wo0_mtree_mult1_12_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_12_bjA5_q);
    u0_m0_wo0_mtree_mult1_12_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr19_q);
    u0_m0_wo0_mtree_mult1_12_im3_reset <= areset;
    u0_m0_wo0_mtree_mult1_12_im3_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 12,
        lpm_widthp => 30,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_12_im3_a0,
        datab => u0_m0_wo0_mtree_mult1_12_im3_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_12_im3_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_12_im3_s1
    );
    u0_m0_wo0_mtree_mult1_12_im3_q <= u0_m0_wo0_mtree_mult1_12_im3_s1;

    -- u0_m0_wo0_mtree_mult1_12_result_add_0_0(ADD,383)@15 + 1
    u0_m0_wo0_mtree_mult1_12_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((44 downto 30 => u0_m0_wo0_mtree_mult1_12_im3_q(29)) & u0_m0_wo0_mtree_mult1_12_im3_q));
    u0_m0_wo0_mtree_mult1_12_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((44 downto 44 => u0_m0_wo0_mtree_mult1_12_align_8_q(43)) & u0_m0_wo0_mtree_mult1_12_align_8_q));
    u0_m0_wo0_mtree_mult1_12_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_12_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_12_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_12_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_12_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_12_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_12_result_add_0_0_o(44 downto 0);

    -- u0_m0_wo0_mtree_add0_6(ADD,129)@16 + 1
    u0_m0_wo0_mtree_add0_6_a <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_12_result_add_0_0_q);
    u0_m0_wo0_mtree_add0_6_b <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_13_result_add_0_0_q);
    u0_m0_wo0_mtree_add0_6_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_6_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_6_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_6_a) + SIGNED(u0_m0_wo0_mtree_add0_6_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_6_q <= u0_m0_wo0_mtree_add0_6_o(44 downto 0);

    -- u0_m0_wo0_mtree_add1_3(ADD,142)@17 + 1
    u0_m0_wo0_mtree_add1_3_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((45 downto 45 => u0_m0_wo0_mtree_add0_6_q(44)) & u0_m0_wo0_mtree_add0_6_q));
    u0_m0_wo0_mtree_add1_3_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((45 downto 45 => u0_m0_wo0_mtree_add0_7_q(44)) & u0_m0_wo0_mtree_add0_7_q));
    u0_m0_wo0_mtree_add1_3_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_3_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_3_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_3_a) + SIGNED(u0_m0_wo0_mtree_add1_3_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_3_q <= u0_m0_wo0_mtree_add1_3_o(45 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr20(DELAY,43)@13
    u0_m0_wo0_wi0_r0_delayr20 : dspba_delay
    GENERIC MAP ( width => 12, depth => 16, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr19_q, xout => u0_m0_wo0_wi0_r0_delayr20_q, ena => d_u0_m0_wo0_compute_q_13_q(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_cm20(LOOKUP,79)@12 + 1
    u0_m0_wo0_cm20_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm20_q <= "11110111011110011100111111000110";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca31_q) IS
                WHEN "00" => u0_m0_wo0_cm20_q <= "11110111011110011100111111000110";
                WHEN "01" => u0_m0_wo0_cm20_q <= "11101110010100101011101001001110";
                WHEN "10" => u0_m0_wo0_cm20_q <= "11101100011010010001001101111111";
                WHEN "11" => u0_m0_wo0_cm20_q <= "11110011001001100101100101101010";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm20_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_11_bs1_merged_bit_select(BITSELECT,536)@13
    u0_m0_wo0_mtree_mult1_11_bs1_merged_bit_select_b <= STD_LOGIC_VECTOR(u0_m0_wo0_cm20_q(31 downto 17));
    u0_m0_wo0_mtree_mult1_11_bs1_merged_bit_select_c <= STD_LOGIC_VECTOR(u0_m0_wo0_cm20_q(16 downto 0));

    -- u0_m0_wo0_mtree_mult1_11_im0(MULT,384)@13 + 2
    u0_m0_wo0_mtree_mult1_11_im0_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_11_bs1_merged_bit_select_b);
    u0_m0_wo0_mtree_mult1_11_im0_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr20_q);
    u0_m0_wo0_mtree_mult1_11_im0_reset <= areset;
    u0_m0_wo0_mtree_mult1_11_im0_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 15,
        lpm_widthb => 12,
        lpm_widthp => 27,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_11_im0_a0,
        datab => u0_m0_wo0_mtree_mult1_11_im0_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_11_im0_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_11_im0_s1
    );
    u0_m0_wo0_mtree_mult1_11_im0_q <= u0_m0_wo0_mtree_mult1_11_im0_s1;

    -- u0_m0_wo0_mtree_mult1_11_align_8(BITSHIFT,392)@15
    u0_m0_wo0_mtree_mult1_11_align_8_qint <= u0_m0_wo0_mtree_mult1_11_im0_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_11_align_8_q <= u0_m0_wo0_mtree_mult1_11_align_8_qint(43 downto 0);

    -- u0_m0_wo0_mtree_mult1_11_bjA5(BITJOIN,389)@13
    u0_m0_wo0_mtree_mult1_11_bjA5_q <= GND_q & u0_m0_wo0_mtree_mult1_11_bs1_merged_bit_select_c;

    -- u0_m0_wo0_mtree_mult1_11_im3(MULT,387)@13 + 2
    u0_m0_wo0_mtree_mult1_11_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_11_bjA5_q);
    u0_m0_wo0_mtree_mult1_11_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr20_q);
    u0_m0_wo0_mtree_mult1_11_im3_reset <= areset;
    u0_m0_wo0_mtree_mult1_11_im3_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 12,
        lpm_widthp => 30,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_11_im3_a0,
        datab => u0_m0_wo0_mtree_mult1_11_im3_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_11_im3_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_11_im3_s1
    );
    u0_m0_wo0_mtree_mult1_11_im3_q <= u0_m0_wo0_mtree_mult1_11_im3_s1;

    -- u0_m0_wo0_mtree_mult1_11_result_add_0_0(ADD,394)@15 + 1
    u0_m0_wo0_mtree_mult1_11_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((44 downto 30 => u0_m0_wo0_mtree_mult1_11_im3_q(29)) & u0_m0_wo0_mtree_mult1_11_im3_q));
    u0_m0_wo0_mtree_mult1_11_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((44 downto 44 => u0_m0_wo0_mtree_mult1_11_align_8_q(43)) & u0_m0_wo0_mtree_mult1_11_align_8_q));
    u0_m0_wo0_mtree_mult1_11_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_11_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_11_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_11_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_11_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_11_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_11_result_add_0_0_o(44 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr21(DELAY,44)@13
    u0_m0_wo0_wi0_r0_delayr21 : dspba_delay
    GENERIC MAP ( width => 12, depth => 16, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr20_q, xout => u0_m0_wo0_wi0_r0_delayr21_q, ena => d_u0_m0_wo0_compute_q_13_q(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_cm21(LOOKUP,80)@12 + 1
    u0_m0_wo0_cm21_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm21_q <= "00000001100011110111001111011110";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca31_q) IS
                WHEN "00" => u0_m0_wo0_cm21_q <= "00000001100011110111001111011110";
                WHEN "01" => u0_m0_wo0_cm21_q <= "00010000000010111011010111001111";
                WHEN "10" => u0_m0_wo0_cm21_q <= "00001100111111101001000011101111";
                WHEN "11" => u0_m0_wo0_cm21_q <= "00000010001111100100011101000111";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm21_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_10_bs1_merged_bit_select(BITSELECT,537)@13
    u0_m0_wo0_mtree_mult1_10_bs1_merged_bit_select_b <= STD_LOGIC_VECTOR(u0_m0_wo0_cm21_q(31 downto 17));
    u0_m0_wo0_mtree_mult1_10_bs1_merged_bit_select_c <= STD_LOGIC_VECTOR(u0_m0_wo0_cm21_q(16 downto 0));

    -- u0_m0_wo0_mtree_mult1_10_im0(MULT,395)@13 + 2
    u0_m0_wo0_mtree_mult1_10_im0_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_10_bs1_merged_bit_select_b);
    u0_m0_wo0_mtree_mult1_10_im0_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr21_q);
    u0_m0_wo0_mtree_mult1_10_im0_reset <= areset;
    u0_m0_wo0_mtree_mult1_10_im0_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 15,
        lpm_widthb => 12,
        lpm_widthp => 27,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_10_im0_a0,
        datab => u0_m0_wo0_mtree_mult1_10_im0_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_10_im0_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_10_im0_s1
    );
    u0_m0_wo0_mtree_mult1_10_im0_q <= u0_m0_wo0_mtree_mult1_10_im0_s1;

    -- u0_m0_wo0_mtree_mult1_10_align_8(BITSHIFT,403)@15
    u0_m0_wo0_mtree_mult1_10_align_8_qint <= u0_m0_wo0_mtree_mult1_10_im0_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_10_align_8_q <= u0_m0_wo0_mtree_mult1_10_align_8_qint(43 downto 0);

    -- u0_m0_wo0_mtree_mult1_10_bjA5(BITJOIN,400)@13
    u0_m0_wo0_mtree_mult1_10_bjA5_q <= GND_q & u0_m0_wo0_mtree_mult1_10_bs1_merged_bit_select_c;

    -- u0_m0_wo0_mtree_mult1_10_im3(MULT,398)@13 + 2
    u0_m0_wo0_mtree_mult1_10_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_10_bjA5_q);
    u0_m0_wo0_mtree_mult1_10_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr21_q);
    u0_m0_wo0_mtree_mult1_10_im3_reset <= areset;
    u0_m0_wo0_mtree_mult1_10_im3_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 12,
        lpm_widthp => 30,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_10_im3_a0,
        datab => u0_m0_wo0_mtree_mult1_10_im3_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_10_im3_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_10_im3_s1
    );
    u0_m0_wo0_mtree_mult1_10_im3_q <= u0_m0_wo0_mtree_mult1_10_im3_s1;

    -- u0_m0_wo0_mtree_mult1_10_result_add_0_0(ADD,405)@15 + 1
    u0_m0_wo0_mtree_mult1_10_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((44 downto 30 => u0_m0_wo0_mtree_mult1_10_im3_q(29)) & u0_m0_wo0_mtree_mult1_10_im3_q));
    u0_m0_wo0_mtree_mult1_10_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((44 downto 44 => u0_m0_wo0_mtree_mult1_10_align_8_q(43)) & u0_m0_wo0_mtree_mult1_10_align_8_q));
    u0_m0_wo0_mtree_mult1_10_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_10_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_10_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_10_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_10_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_10_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_10_result_add_0_0_o(44 downto 0);

    -- u0_m0_wo0_mtree_add0_5(ADD,128)@16 + 1
    u0_m0_wo0_mtree_add0_5_a <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_10_result_add_0_0_q);
    u0_m0_wo0_mtree_add0_5_b <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_11_result_add_0_0_q);
    u0_m0_wo0_mtree_add0_5_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_5_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_5_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_5_a) + SIGNED(u0_m0_wo0_mtree_add0_5_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_5_q <= u0_m0_wo0_mtree_add0_5_o(44 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr22(DELAY,45)@13
    u0_m0_wo0_wi0_r0_delayr22 : dspba_delay
    GENERIC MAP ( width => 12, depth => 16, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr21_q, xout => u0_m0_wo0_wi0_r0_delayr22_q, ena => d_u0_m0_wo0_compute_q_13_q(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_cm22(LOOKUP,81)@12 + 1
    u0_m0_wo0_cm22_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm22_q <= "11101100111111010001011000001000";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca31_q) IS
                WHEN "00" => u0_m0_wo0_cm22_q <= "11101100111111010001011000001000";
                WHEN "01" => u0_m0_wo0_cm22_q <= "11100000011110000000111111101010";
                WHEN "10" => u0_m0_wo0_cm22_q <= "11011100011011100001010100010111";
                WHEN "11" => u0_m0_wo0_cm22_q <= "11100111011100101111101000100000";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm22_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_9_bs1_merged_bit_select(BITSELECT,538)@13
    u0_m0_wo0_mtree_mult1_9_bs1_merged_bit_select_b <= STD_LOGIC_VECTOR(u0_m0_wo0_cm22_q(31 downto 17));
    u0_m0_wo0_mtree_mult1_9_bs1_merged_bit_select_c <= STD_LOGIC_VECTOR(u0_m0_wo0_cm22_q(16 downto 0));

    -- u0_m0_wo0_mtree_mult1_9_im0(MULT,406)@13 + 2
    u0_m0_wo0_mtree_mult1_9_im0_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_9_bs1_merged_bit_select_b);
    u0_m0_wo0_mtree_mult1_9_im0_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr22_q);
    u0_m0_wo0_mtree_mult1_9_im0_reset <= areset;
    u0_m0_wo0_mtree_mult1_9_im0_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 15,
        lpm_widthb => 12,
        lpm_widthp => 27,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_9_im0_a0,
        datab => u0_m0_wo0_mtree_mult1_9_im0_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_9_im0_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_9_im0_s1
    );
    u0_m0_wo0_mtree_mult1_9_im0_q <= u0_m0_wo0_mtree_mult1_9_im0_s1;

    -- u0_m0_wo0_mtree_mult1_9_align_8(BITSHIFT,414)@15
    u0_m0_wo0_mtree_mult1_9_align_8_qint <= u0_m0_wo0_mtree_mult1_9_im0_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_9_align_8_q <= u0_m0_wo0_mtree_mult1_9_align_8_qint(43 downto 0);

    -- u0_m0_wo0_mtree_mult1_9_bjA5(BITJOIN,411)@13
    u0_m0_wo0_mtree_mult1_9_bjA5_q <= GND_q & u0_m0_wo0_mtree_mult1_9_bs1_merged_bit_select_c;

    -- u0_m0_wo0_mtree_mult1_9_im3(MULT,409)@13 + 2
    u0_m0_wo0_mtree_mult1_9_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_9_bjA5_q);
    u0_m0_wo0_mtree_mult1_9_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr22_q);
    u0_m0_wo0_mtree_mult1_9_im3_reset <= areset;
    u0_m0_wo0_mtree_mult1_9_im3_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 12,
        lpm_widthp => 30,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_9_im3_a0,
        datab => u0_m0_wo0_mtree_mult1_9_im3_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_9_im3_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_9_im3_s1
    );
    u0_m0_wo0_mtree_mult1_9_im3_q <= u0_m0_wo0_mtree_mult1_9_im3_s1;

    -- u0_m0_wo0_mtree_mult1_9_result_add_0_0(ADD,416)@15 + 1
    u0_m0_wo0_mtree_mult1_9_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((44 downto 30 => u0_m0_wo0_mtree_mult1_9_im3_q(29)) & u0_m0_wo0_mtree_mult1_9_im3_q));
    u0_m0_wo0_mtree_mult1_9_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((44 downto 44 => u0_m0_wo0_mtree_mult1_9_align_8_q(43)) & u0_m0_wo0_mtree_mult1_9_align_8_q));
    u0_m0_wo0_mtree_mult1_9_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_9_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_9_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_9_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_9_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_9_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_9_result_add_0_0_o(44 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr23(DELAY,46)@13
    u0_m0_wo0_wi0_r0_delayr23 : dspba_delay
    GENERIC MAP ( width => 12, depth => 16, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr22_q, xout => u0_m0_wo0_wi0_r0_delayr23_q, ena => d_u0_m0_wo0_compute_q_13_q(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_cm23(LOOKUP,82)@12 + 1
    u0_m0_wo0_cm23_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm23_q <= "00001001100101010010001000110010";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca31_q) IS
                WHEN "00" => u0_m0_wo0_cm23_q <= "00001001100101010010001000110010";
                WHEN "01" => u0_m0_wo0_cm23_q <= "11111010001001011100101010100000";
                WHEN "10" => u0_m0_wo0_cm23_q <= "11101100001110001010101100010000";
                WHEN "11" => u0_m0_wo0_cm23_q <= "11110011010101101100000111011001";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm23_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_8_bs1_merged_bit_select(BITSELECT,539)@13
    u0_m0_wo0_mtree_mult1_8_bs1_merged_bit_select_b <= STD_LOGIC_VECTOR(u0_m0_wo0_cm23_q(31 downto 17));
    u0_m0_wo0_mtree_mult1_8_bs1_merged_bit_select_c <= STD_LOGIC_VECTOR(u0_m0_wo0_cm23_q(16 downto 0));

    -- u0_m0_wo0_mtree_mult1_8_im0(MULT,417)@13 + 2
    u0_m0_wo0_mtree_mult1_8_im0_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_8_bs1_merged_bit_select_b);
    u0_m0_wo0_mtree_mult1_8_im0_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr23_q);
    u0_m0_wo0_mtree_mult1_8_im0_reset <= areset;
    u0_m0_wo0_mtree_mult1_8_im0_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 15,
        lpm_widthb => 12,
        lpm_widthp => 27,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_8_im0_a0,
        datab => u0_m0_wo0_mtree_mult1_8_im0_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_8_im0_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_8_im0_s1
    );
    u0_m0_wo0_mtree_mult1_8_im0_q <= u0_m0_wo0_mtree_mult1_8_im0_s1;

    -- u0_m0_wo0_mtree_mult1_8_align_8(BITSHIFT,425)@15
    u0_m0_wo0_mtree_mult1_8_align_8_qint <= u0_m0_wo0_mtree_mult1_8_im0_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_8_align_8_q <= u0_m0_wo0_mtree_mult1_8_align_8_qint(43 downto 0);

    -- u0_m0_wo0_mtree_mult1_8_bjA5(BITJOIN,422)@13
    u0_m0_wo0_mtree_mult1_8_bjA5_q <= GND_q & u0_m0_wo0_mtree_mult1_8_bs1_merged_bit_select_c;

    -- u0_m0_wo0_mtree_mult1_8_im3(MULT,420)@13 + 2
    u0_m0_wo0_mtree_mult1_8_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_8_bjA5_q);
    u0_m0_wo0_mtree_mult1_8_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr23_q);
    u0_m0_wo0_mtree_mult1_8_im3_reset <= areset;
    u0_m0_wo0_mtree_mult1_8_im3_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 12,
        lpm_widthp => 30,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_8_im3_a0,
        datab => u0_m0_wo0_mtree_mult1_8_im3_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_8_im3_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_8_im3_s1
    );
    u0_m0_wo0_mtree_mult1_8_im3_q <= u0_m0_wo0_mtree_mult1_8_im3_s1;

    -- u0_m0_wo0_mtree_mult1_8_result_add_0_0(ADD,427)@15 + 1
    u0_m0_wo0_mtree_mult1_8_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((44 downto 30 => u0_m0_wo0_mtree_mult1_8_im3_q(29)) & u0_m0_wo0_mtree_mult1_8_im3_q));
    u0_m0_wo0_mtree_mult1_8_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((44 downto 44 => u0_m0_wo0_mtree_mult1_8_align_8_q(43)) & u0_m0_wo0_mtree_mult1_8_align_8_q));
    u0_m0_wo0_mtree_mult1_8_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_8_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_8_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_8_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_8_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_8_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_8_result_add_0_0_o(44 downto 0);

    -- u0_m0_wo0_mtree_add0_4(ADD,127)@16 + 1
    u0_m0_wo0_mtree_add0_4_a <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_8_result_add_0_0_q);
    u0_m0_wo0_mtree_add0_4_b <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_9_result_add_0_0_q);
    u0_m0_wo0_mtree_add0_4_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_4_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_4_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_4_a) + SIGNED(u0_m0_wo0_mtree_add0_4_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_4_q <= u0_m0_wo0_mtree_add0_4_o(44 downto 0);

    -- u0_m0_wo0_mtree_add1_2(ADD,141)@17 + 1
    u0_m0_wo0_mtree_add1_2_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((45 downto 45 => u0_m0_wo0_mtree_add0_4_q(44)) & u0_m0_wo0_mtree_add0_4_q));
    u0_m0_wo0_mtree_add1_2_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((45 downto 45 => u0_m0_wo0_mtree_add0_5_q(44)) & u0_m0_wo0_mtree_add0_5_q));
    u0_m0_wo0_mtree_add1_2_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_2_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_2_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_2_a) + SIGNED(u0_m0_wo0_mtree_add1_2_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_2_q <= u0_m0_wo0_mtree_add1_2_o(45 downto 0);

    -- u0_m0_wo0_mtree_add2_1(ADD,148)@18 + 1
    u0_m0_wo0_mtree_add2_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((46 downto 46 => u0_m0_wo0_mtree_add1_2_q(45)) & u0_m0_wo0_mtree_add1_2_q));
    u0_m0_wo0_mtree_add2_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((46 downto 46 => u0_m0_wo0_mtree_add1_3_q(45)) & u0_m0_wo0_mtree_add1_3_q));
    u0_m0_wo0_mtree_add2_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add2_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add2_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add2_1_a) + SIGNED(u0_m0_wo0_mtree_add2_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add2_1_q <= u0_m0_wo0_mtree_add2_1_o(46 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr24(DELAY,47)@13
    u0_m0_wo0_wi0_r0_delayr24 : dspba_delay
    GENERIC MAP ( width => 12, depth => 16, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr23_q, xout => u0_m0_wo0_wi0_r0_delayr24_q, ena => d_u0_m0_wo0_compute_q_13_q(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_cm24(LOOKUP,83)@12 + 1
    u0_m0_wo0_cm24_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm24_q <= "00000011011000011100010101011000";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca31_q) IS
                WHEN "00" => u0_m0_wo0_cm24_q <= "00000011011000011100010101011000";
                WHEN "01" => u0_m0_wo0_cm24_q <= "11110110100110011110000110011111";
                WHEN "10" => u0_m0_wo0_cm24_q <= "11111110000101110000101110000001";
                WHEN "11" => u0_m0_wo0_cm24_q <= "00000110110101101011001000101100";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm24_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_7_bs1_merged_bit_select(BITSELECT,540)@13
    u0_m0_wo0_mtree_mult1_7_bs1_merged_bit_select_b <= STD_LOGIC_VECTOR(u0_m0_wo0_cm24_q(31 downto 17));
    u0_m0_wo0_mtree_mult1_7_bs1_merged_bit_select_c <= STD_LOGIC_VECTOR(u0_m0_wo0_cm24_q(16 downto 0));

    -- u0_m0_wo0_mtree_mult1_7_im0(MULT,428)@13 + 2
    u0_m0_wo0_mtree_mult1_7_im0_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_7_bs1_merged_bit_select_b);
    u0_m0_wo0_mtree_mult1_7_im0_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr24_q);
    u0_m0_wo0_mtree_mult1_7_im0_reset <= areset;
    u0_m0_wo0_mtree_mult1_7_im0_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 15,
        lpm_widthb => 12,
        lpm_widthp => 27,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_7_im0_a0,
        datab => u0_m0_wo0_mtree_mult1_7_im0_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_7_im0_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_7_im0_s1
    );
    u0_m0_wo0_mtree_mult1_7_im0_q <= u0_m0_wo0_mtree_mult1_7_im0_s1;

    -- u0_m0_wo0_mtree_mult1_7_align_8(BITSHIFT,436)@15
    u0_m0_wo0_mtree_mult1_7_align_8_qint <= u0_m0_wo0_mtree_mult1_7_im0_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_7_align_8_q <= u0_m0_wo0_mtree_mult1_7_align_8_qint(43 downto 0);

    -- u0_m0_wo0_mtree_mult1_7_bjA5(BITJOIN,433)@13
    u0_m0_wo0_mtree_mult1_7_bjA5_q <= GND_q & u0_m0_wo0_mtree_mult1_7_bs1_merged_bit_select_c;

    -- u0_m0_wo0_mtree_mult1_7_im3(MULT,431)@13 + 2
    u0_m0_wo0_mtree_mult1_7_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_7_bjA5_q);
    u0_m0_wo0_mtree_mult1_7_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr24_q);
    u0_m0_wo0_mtree_mult1_7_im3_reset <= areset;
    u0_m0_wo0_mtree_mult1_7_im3_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 12,
        lpm_widthp => 30,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_7_im3_a0,
        datab => u0_m0_wo0_mtree_mult1_7_im3_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_7_im3_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_7_im3_s1
    );
    u0_m0_wo0_mtree_mult1_7_im3_q <= u0_m0_wo0_mtree_mult1_7_im3_s1;

    -- u0_m0_wo0_mtree_mult1_7_result_add_0_0(ADD,438)@15 + 1
    u0_m0_wo0_mtree_mult1_7_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((44 downto 30 => u0_m0_wo0_mtree_mult1_7_im3_q(29)) & u0_m0_wo0_mtree_mult1_7_im3_q));
    u0_m0_wo0_mtree_mult1_7_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((44 downto 44 => u0_m0_wo0_mtree_mult1_7_align_8_q(43)) & u0_m0_wo0_mtree_mult1_7_align_8_q));
    u0_m0_wo0_mtree_mult1_7_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_7_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_7_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_7_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_7_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_7_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_7_result_add_0_0_o(44 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr25(DELAY,48)@13
    u0_m0_wo0_wi0_r0_delayr25 : dspba_delay
    GENERIC MAP ( width => 12, depth => 16, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr24_q, xout => u0_m0_wo0_wi0_r0_delayr25_q, ena => d_u0_m0_wo0_compute_q_13_q(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_cm25(LOOKUP,84)@12 + 1
    u0_m0_wo0_cm25_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm25_q <= "00000010100011001111110000100000";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca31_q) IS
                WHEN "00" => u0_m0_wo0_cm25_q <= "00000010100011001111110000100000";
                WHEN "01" => u0_m0_wo0_cm25_q <= "11111111001111011010101111110101";
                WHEN "10" => u0_m0_wo0_cm25_q <= "00000000101100110000000101000010";
                WHEN "11" => u0_m0_wo0_cm25_q <= "00001010111110110010010010110111";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm25_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_6_bs1_merged_bit_select(BITSELECT,541)@13
    u0_m0_wo0_mtree_mult1_6_bs1_merged_bit_select_b <= STD_LOGIC_VECTOR(u0_m0_wo0_cm25_q(31 downto 17));
    u0_m0_wo0_mtree_mult1_6_bs1_merged_bit_select_c <= STD_LOGIC_VECTOR(u0_m0_wo0_cm25_q(16 downto 0));

    -- u0_m0_wo0_mtree_mult1_6_im0(MULT,439)@13 + 2
    u0_m0_wo0_mtree_mult1_6_im0_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_6_bs1_merged_bit_select_b);
    u0_m0_wo0_mtree_mult1_6_im0_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr25_q);
    u0_m0_wo0_mtree_mult1_6_im0_reset <= areset;
    u0_m0_wo0_mtree_mult1_6_im0_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 15,
        lpm_widthb => 12,
        lpm_widthp => 27,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_6_im0_a0,
        datab => u0_m0_wo0_mtree_mult1_6_im0_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_6_im0_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_6_im0_s1
    );
    u0_m0_wo0_mtree_mult1_6_im0_q <= u0_m0_wo0_mtree_mult1_6_im0_s1;

    -- u0_m0_wo0_mtree_mult1_6_align_8(BITSHIFT,447)@15
    u0_m0_wo0_mtree_mult1_6_align_8_qint <= u0_m0_wo0_mtree_mult1_6_im0_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_6_align_8_q <= u0_m0_wo0_mtree_mult1_6_align_8_qint(43 downto 0);

    -- u0_m0_wo0_mtree_mult1_6_bjA5(BITJOIN,444)@13
    u0_m0_wo0_mtree_mult1_6_bjA5_q <= GND_q & u0_m0_wo0_mtree_mult1_6_bs1_merged_bit_select_c;

    -- u0_m0_wo0_mtree_mult1_6_im3(MULT,442)@13 + 2
    u0_m0_wo0_mtree_mult1_6_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_6_bjA5_q);
    u0_m0_wo0_mtree_mult1_6_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr25_q);
    u0_m0_wo0_mtree_mult1_6_im3_reset <= areset;
    u0_m0_wo0_mtree_mult1_6_im3_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 12,
        lpm_widthp => 30,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_6_im3_a0,
        datab => u0_m0_wo0_mtree_mult1_6_im3_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_6_im3_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_6_im3_s1
    );
    u0_m0_wo0_mtree_mult1_6_im3_q <= u0_m0_wo0_mtree_mult1_6_im3_s1;

    -- u0_m0_wo0_mtree_mult1_6_result_add_0_0(ADD,449)@15 + 1
    u0_m0_wo0_mtree_mult1_6_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((44 downto 30 => u0_m0_wo0_mtree_mult1_6_im3_q(29)) & u0_m0_wo0_mtree_mult1_6_im3_q));
    u0_m0_wo0_mtree_mult1_6_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((44 downto 44 => u0_m0_wo0_mtree_mult1_6_align_8_q(43)) & u0_m0_wo0_mtree_mult1_6_align_8_q));
    u0_m0_wo0_mtree_mult1_6_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_6_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_6_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_6_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_6_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_6_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_6_result_add_0_0_o(44 downto 0);

    -- u0_m0_wo0_mtree_add0_3(ADD,126)@16 + 1
    u0_m0_wo0_mtree_add0_3_a <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_6_result_add_0_0_q);
    u0_m0_wo0_mtree_add0_3_b <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_7_result_add_0_0_q);
    u0_m0_wo0_mtree_add0_3_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_3_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_3_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_3_a) + SIGNED(u0_m0_wo0_mtree_add0_3_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_3_q <= u0_m0_wo0_mtree_add0_3_o(44 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr26(DELAY,49)@13
    u0_m0_wo0_wi0_r0_delayr26 : dspba_delay
    GENERIC MAP ( width => 12, depth => 16, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr25_q, xout => u0_m0_wo0_wi0_r0_delayr26_q, ena => d_u0_m0_wo0_compute_q_13_q(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_cm26(LOOKUP,85)@12 + 1
    u0_m0_wo0_cm26_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm26_q <= "00000100000011101000000111010100";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca31_q) IS
                WHEN "00" => u0_m0_wo0_cm26_q <= "00000100000011101000000111010100";
                WHEN "01" => u0_m0_wo0_cm26_q <= "00000010110011010001000010000000";
                WHEN "10" => u0_m0_wo0_cm26_q <= "00000010001100100111000000001001";
                WHEN "11" => u0_m0_wo0_cm26_q <= "00000010011001000011110100010110";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm26_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_5_bs1_merged_bit_select(BITSELECT,542)@13
    u0_m0_wo0_mtree_mult1_5_bs1_merged_bit_select_b <= STD_LOGIC_VECTOR(u0_m0_wo0_cm26_q(31 downto 17));
    u0_m0_wo0_mtree_mult1_5_bs1_merged_bit_select_c <= STD_LOGIC_VECTOR(u0_m0_wo0_cm26_q(16 downto 0));

    -- u0_m0_wo0_mtree_mult1_5_im0(MULT,450)@13 + 2
    u0_m0_wo0_mtree_mult1_5_im0_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_5_bs1_merged_bit_select_b);
    u0_m0_wo0_mtree_mult1_5_im0_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr26_q);
    u0_m0_wo0_mtree_mult1_5_im0_reset <= areset;
    u0_m0_wo0_mtree_mult1_5_im0_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 15,
        lpm_widthb => 12,
        lpm_widthp => 27,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_5_im0_a0,
        datab => u0_m0_wo0_mtree_mult1_5_im0_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_5_im0_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_5_im0_s1
    );
    u0_m0_wo0_mtree_mult1_5_im0_q <= u0_m0_wo0_mtree_mult1_5_im0_s1;

    -- u0_m0_wo0_mtree_mult1_5_align_8(BITSHIFT,458)@15
    u0_m0_wo0_mtree_mult1_5_align_8_qint <= u0_m0_wo0_mtree_mult1_5_im0_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_5_align_8_q <= u0_m0_wo0_mtree_mult1_5_align_8_qint(43 downto 0);

    -- u0_m0_wo0_mtree_mult1_5_bjA5(BITJOIN,455)@13
    u0_m0_wo0_mtree_mult1_5_bjA5_q <= GND_q & u0_m0_wo0_mtree_mult1_5_bs1_merged_bit_select_c;

    -- u0_m0_wo0_mtree_mult1_5_im3(MULT,453)@13 + 2
    u0_m0_wo0_mtree_mult1_5_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_5_bjA5_q);
    u0_m0_wo0_mtree_mult1_5_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr26_q);
    u0_m0_wo0_mtree_mult1_5_im3_reset <= areset;
    u0_m0_wo0_mtree_mult1_5_im3_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 12,
        lpm_widthp => 30,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_5_im3_a0,
        datab => u0_m0_wo0_mtree_mult1_5_im3_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_5_im3_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_5_im3_s1
    );
    u0_m0_wo0_mtree_mult1_5_im3_q <= u0_m0_wo0_mtree_mult1_5_im3_s1;

    -- u0_m0_wo0_mtree_mult1_5_result_add_0_0(ADD,460)@15 + 1
    u0_m0_wo0_mtree_mult1_5_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((44 downto 30 => u0_m0_wo0_mtree_mult1_5_im3_q(29)) & u0_m0_wo0_mtree_mult1_5_im3_q));
    u0_m0_wo0_mtree_mult1_5_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((44 downto 44 => u0_m0_wo0_mtree_mult1_5_align_8_q(43)) & u0_m0_wo0_mtree_mult1_5_align_8_q));
    u0_m0_wo0_mtree_mult1_5_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_5_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_5_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_5_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_5_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_5_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_5_result_add_0_0_o(44 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr27(DELAY,50)@13
    u0_m0_wo0_wi0_r0_delayr27 : dspba_delay
    GENERIC MAP ( width => 12, depth => 16, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr26_q, xout => u0_m0_wo0_wi0_r0_delayr27_q, ena => d_u0_m0_wo0_compute_q_13_q(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_cm27(LOOKUP,86)@12 + 1
    u0_m0_wo0_cm27_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm27_q <= "11111101111010010110110001001101";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca31_q) IS
                WHEN "00" => u0_m0_wo0_cm27_q <= "11111101111010010110110001001101";
                WHEN "01" => u0_m0_wo0_cm27_q <= "11111110011010010011101111100101";
                WHEN "10" => u0_m0_wo0_cm27_q <= "00000011000011110011101111001100";
                WHEN "11" => u0_m0_wo0_cm27_q <= "00000110111111100110010111000000";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm27_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_4_bs1_merged_bit_select(BITSELECT,543)@13
    u0_m0_wo0_mtree_mult1_4_bs1_merged_bit_select_b <= STD_LOGIC_VECTOR(u0_m0_wo0_cm27_q(31 downto 17));
    u0_m0_wo0_mtree_mult1_4_bs1_merged_bit_select_c <= STD_LOGIC_VECTOR(u0_m0_wo0_cm27_q(16 downto 0));

    -- u0_m0_wo0_mtree_mult1_4_im0(MULT,461)@13 + 2
    u0_m0_wo0_mtree_mult1_4_im0_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_4_bs1_merged_bit_select_b);
    u0_m0_wo0_mtree_mult1_4_im0_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr27_q);
    u0_m0_wo0_mtree_mult1_4_im0_reset <= areset;
    u0_m0_wo0_mtree_mult1_4_im0_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 15,
        lpm_widthb => 12,
        lpm_widthp => 27,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_4_im0_a0,
        datab => u0_m0_wo0_mtree_mult1_4_im0_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_4_im0_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_4_im0_s1
    );
    u0_m0_wo0_mtree_mult1_4_im0_q <= u0_m0_wo0_mtree_mult1_4_im0_s1;

    -- u0_m0_wo0_mtree_mult1_4_align_8(BITSHIFT,469)@15
    u0_m0_wo0_mtree_mult1_4_align_8_qint <= u0_m0_wo0_mtree_mult1_4_im0_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_4_align_8_q <= u0_m0_wo0_mtree_mult1_4_align_8_qint(43 downto 0);

    -- u0_m0_wo0_mtree_mult1_4_bjA5(BITJOIN,466)@13
    u0_m0_wo0_mtree_mult1_4_bjA5_q <= GND_q & u0_m0_wo0_mtree_mult1_4_bs1_merged_bit_select_c;

    -- u0_m0_wo0_mtree_mult1_4_im3(MULT,464)@13 + 2
    u0_m0_wo0_mtree_mult1_4_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_4_bjA5_q);
    u0_m0_wo0_mtree_mult1_4_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr27_q);
    u0_m0_wo0_mtree_mult1_4_im3_reset <= areset;
    u0_m0_wo0_mtree_mult1_4_im3_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 12,
        lpm_widthp => 30,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_4_im3_a0,
        datab => u0_m0_wo0_mtree_mult1_4_im3_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_4_im3_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_4_im3_s1
    );
    u0_m0_wo0_mtree_mult1_4_im3_q <= u0_m0_wo0_mtree_mult1_4_im3_s1;

    -- u0_m0_wo0_mtree_mult1_4_result_add_0_0(ADD,471)@15 + 1
    u0_m0_wo0_mtree_mult1_4_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((44 downto 30 => u0_m0_wo0_mtree_mult1_4_im3_q(29)) & u0_m0_wo0_mtree_mult1_4_im3_q));
    u0_m0_wo0_mtree_mult1_4_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((44 downto 44 => u0_m0_wo0_mtree_mult1_4_align_8_q(43)) & u0_m0_wo0_mtree_mult1_4_align_8_q));
    u0_m0_wo0_mtree_mult1_4_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_4_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_4_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_4_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_4_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_4_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_4_result_add_0_0_o(44 downto 0);

    -- u0_m0_wo0_mtree_add0_2(ADD,125)@16 + 1
    u0_m0_wo0_mtree_add0_2_a <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_4_result_add_0_0_q);
    u0_m0_wo0_mtree_add0_2_b <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_5_result_add_0_0_q);
    u0_m0_wo0_mtree_add0_2_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_2_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_2_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_2_a) + SIGNED(u0_m0_wo0_mtree_add0_2_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_2_q <= u0_m0_wo0_mtree_add0_2_o(44 downto 0);

    -- u0_m0_wo0_mtree_add1_1(ADD,140)@17 + 1
    u0_m0_wo0_mtree_add1_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((45 downto 45 => u0_m0_wo0_mtree_add0_2_q(44)) & u0_m0_wo0_mtree_add0_2_q));
    u0_m0_wo0_mtree_add1_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((45 downto 45 => u0_m0_wo0_mtree_add0_3_q(44)) & u0_m0_wo0_mtree_add0_3_q));
    u0_m0_wo0_mtree_add1_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_1_a) + SIGNED(u0_m0_wo0_mtree_add1_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_1_q <= u0_m0_wo0_mtree_add1_1_o(45 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr28(DELAY,51)@13
    u0_m0_wo0_wi0_r0_delayr28 : dspba_delay
    GENERIC MAP ( width => 12, depth => 16, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr27_q, xout => u0_m0_wo0_wi0_r0_delayr28_q, ena => d_u0_m0_wo0_compute_q_13_q(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_cm28(LOOKUP,87)@12 + 1
    u0_m0_wo0_cm28_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm28_q <= "00000110101001111010111001011010";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca31_q) IS
                WHEN "00" => u0_m0_wo0_cm28_q <= "00000110101001111010111001011010";
                WHEN "01" => u0_m0_wo0_cm28_q <= "00000011000110001111110000011110";
                WHEN "10" => u0_m0_wo0_cm28_q <= "00000000110001011100111110010110";
                WHEN "11" => u0_m0_wo0_cm28_q <= "11111111010001100000011110101001";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm28_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_3_bs1_merged_bit_select(BITSELECT,544)@13
    u0_m0_wo0_mtree_mult1_3_bs1_merged_bit_select_b <= STD_LOGIC_VECTOR(u0_m0_wo0_cm28_q(31 downto 17));
    u0_m0_wo0_mtree_mult1_3_bs1_merged_bit_select_c <= STD_LOGIC_VECTOR(u0_m0_wo0_cm28_q(16 downto 0));

    -- u0_m0_wo0_mtree_mult1_3_im0(MULT,472)@13 + 2
    u0_m0_wo0_mtree_mult1_3_im0_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_3_bs1_merged_bit_select_b);
    u0_m0_wo0_mtree_mult1_3_im0_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr28_q);
    u0_m0_wo0_mtree_mult1_3_im0_reset <= areset;
    u0_m0_wo0_mtree_mult1_3_im0_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 15,
        lpm_widthb => 12,
        lpm_widthp => 27,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_3_im0_a0,
        datab => u0_m0_wo0_mtree_mult1_3_im0_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_3_im0_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_3_im0_s1
    );
    u0_m0_wo0_mtree_mult1_3_im0_q <= u0_m0_wo0_mtree_mult1_3_im0_s1;

    -- u0_m0_wo0_mtree_mult1_3_align_8(BITSHIFT,480)@15
    u0_m0_wo0_mtree_mult1_3_align_8_qint <= u0_m0_wo0_mtree_mult1_3_im0_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_3_align_8_q <= u0_m0_wo0_mtree_mult1_3_align_8_qint(43 downto 0);

    -- u0_m0_wo0_mtree_mult1_3_bjA5(BITJOIN,477)@13
    u0_m0_wo0_mtree_mult1_3_bjA5_q <= GND_q & u0_m0_wo0_mtree_mult1_3_bs1_merged_bit_select_c;

    -- u0_m0_wo0_mtree_mult1_3_im3(MULT,475)@13 + 2
    u0_m0_wo0_mtree_mult1_3_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_3_bjA5_q);
    u0_m0_wo0_mtree_mult1_3_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr28_q);
    u0_m0_wo0_mtree_mult1_3_im3_reset <= areset;
    u0_m0_wo0_mtree_mult1_3_im3_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 12,
        lpm_widthp => 30,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_3_im3_a0,
        datab => u0_m0_wo0_mtree_mult1_3_im3_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_3_im3_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_3_im3_s1
    );
    u0_m0_wo0_mtree_mult1_3_im3_q <= u0_m0_wo0_mtree_mult1_3_im3_s1;

    -- u0_m0_wo0_mtree_mult1_3_result_add_0_0(ADD,482)@15 + 1
    u0_m0_wo0_mtree_mult1_3_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((44 downto 30 => u0_m0_wo0_mtree_mult1_3_im3_q(29)) & u0_m0_wo0_mtree_mult1_3_im3_q));
    u0_m0_wo0_mtree_mult1_3_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((44 downto 44 => u0_m0_wo0_mtree_mult1_3_align_8_q(43)) & u0_m0_wo0_mtree_mult1_3_align_8_q));
    u0_m0_wo0_mtree_mult1_3_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_3_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_3_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_3_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_3_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_3_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_3_result_add_0_0_o(44 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr29(DELAY,52)@13
    u0_m0_wo0_wi0_r0_delayr29 : dspba_delay
    GENERIC MAP ( width => 12, depth => 16, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr28_q, xout => u0_m0_wo0_wi0_r0_delayr29_q, ena => d_u0_m0_wo0_compute_q_13_q(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_cm29(LOOKUP,88)@12 + 1
    u0_m0_wo0_cm29_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm29_q <= "11111101001111001010111111010001";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca31_q) IS
                WHEN "00" => u0_m0_wo0_cm29_q <= "11111101001111001010111111010001";
                WHEN "01" => u0_m0_wo0_cm29_q <= "00000000111111011000100001000010";
                WHEN "10" => u0_m0_wo0_cm29_q <= "00000011011110111110001111101001";
                WHEN "11" => u0_m0_wo0_cm29_q <= "00000110100101000010110110111000";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm29_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_2_bs1_merged_bit_select(BITSELECT,545)@13
    u0_m0_wo0_mtree_mult1_2_bs1_merged_bit_select_b <= STD_LOGIC_VECTOR(u0_m0_wo0_cm29_q(31 downto 17));
    u0_m0_wo0_mtree_mult1_2_bs1_merged_bit_select_c <= STD_LOGIC_VECTOR(u0_m0_wo0_cm29_q(16 downto 0));

    -- u0_m0_wo0_mtree_mult1_2_im0(MULT,483)@13 + 2
    u0_m0_wo0_mtree_mult1_2_im0_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_2_bs1_merged_bit_select_b);
    u0_m0_wo0_mtree_mult1_2_im0_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr29_q);
    u0_m0_wo0_mtree_mult1_2_im0_reset <= areset;
    u0_m0_wo0_mtree_mult1_2_im0_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 15,
        lpm_widthb => 12,
        lpm_widthp => 27,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_2_im0_a0,
        datab => u0_m0_wo0_mtree_mult1_2_im0_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_2_im0_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_2_im0_s1
    );
    u0_m0_wo0_mtree_mult1_2_im0_q <= u0_m0_wo0_mtree_mult1_2_im0_s1;

    -- u0_m0_wo0_mtree_mult1_2_align_8(BITSHIFT,491)@15
    u0_m0_wo0_mtree_mult1_2_align_8_qint <= u0_m0_wo0_mtree_mult1_2_im0_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_2_align_8_q <= u0_m0_wo0_mtree_mult1_2_align_8_qint(43 downto 0);

    -- u0_m0_wo0_mtree_mult1_2_bjA5(BITJOIN,488)@13
    u0_m0_wo0_mtree_mult1_2_bjA5_q <= GND_q & u0_m0_wo0_mtree_mult1_2_bs1_merged_bit_select_c;

    -- u0_m0_wo0_mtree_mult1_2_im3(MULT,486)@13 + 2
    u0_m0_wo0_mtree_mult1_2_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_2_bjA5_q);
    u0_m0_wo0_mtree_mult1_2_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr29_q);
    u0_m0_wo0_mtree_mult1_2_im3_reset <= areset;
    u0_m0_wo0_mtree_mult1_2_im3_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 12,
        lpm_widthp => 30,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_2_im3_a0,
        datab => u0_m0_wo0_mtree_mult1_2_im3_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_2_im3_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_2_im3_s1
    );
    u0_m0_wo0_mtree_mult1_2_im3_q <= u0_m0_wo0_mtree_mult1_2_im3_s1;

    -- u0_m0_wo0_mtree_mult1_2_result_add_0_0(ADD,493)@15 + 1
    u0_m0_wo0_mtree_mult1_2_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((44 downto 30 => u0_m0_wo0_mtree_mult1_2_im3_q(29)) & u0_m0_wo0_mtree_mult1_2_im3_q));
    u0_m0_wo0_mtree_mult1_2_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((44 downto 44 => u0_m0_wo0_mtree_mult1_2_align_8_q(43)) & u0_m0_wo0_mtree_mult1_2_align_8_q));
    u0_m0_wo0_mtree_mult1_2_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_2_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_2_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_2_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_2_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_2_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_2_result_add_0_0_o(44 downto 0);

    -- u0_m0_wo0_mtree_add0_1(ADD,124)@16 + 1
    u0_m0_wo0_mtree_add0_1_a <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_2_result_add_0_0_q);
    u0_m0_wo0_mtree_add0_1_b <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_3_result_add_0_0_q);
    u0_m0_wo0_mtree_add0_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_1_a) + SIGNED(u0_m0_wo0_mtree_add0_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_1_q <= u0_m0_wo0_mtree_add0_1_o(44 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr30(DELAY,53)@13
    u0_m0_wo0_wi0_r0_delayr30 : dspba_delay
    GENERIC MAP ( width => 12, depth => 16, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr29_q, xout => u0_m0_wo0_wi0_r0_delayr30_q, ena => d_u0_m0_wo0_compute_q_13_q(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_cm30(LOOKUP,89)@12 + 1
    u0_m0_wo0_cm30_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm30_q <= "00000010010000011100001011010010";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca31_q) IS
                WHEN "00" => u0_m0_wo0_cm30_q <= "00000010010000011100001011010010";
                WHEN "01" => u0_m0_wo0_cm30_q <= "11111111010100010010110010011000";
                WHEN "10" => u0_m0_wo0_cm30_q <= "11111101110010001010111111001111";
                WHEN "11" => u0_m0_wo0_cm30_q <= "11111101000000101110000000111001";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm30_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_1_bs1_merged_bit_select(BITSELECT,546)@13
    u0_m0_wo0_mtree_mult1_1_bs1_merged_bit_select_b <= STD_LOGIC_VECTOR(u0_m0_wo0_cm30_q(31 downto 17));
    u0_m0_wo0_mtree_mult1_1_bs1_merged_bit_select_c <= STD_LOGIC_VECTOR(u0_m0_wo0_cm30_q(16 downto 0));

    -- u0_m0_wo0_mtree_mult1_1_im0(MULT,494)@13 + 2
    u0_m0_wo0_mtree_mult1_1_im0_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_1_bs1_merged_bit_select_b);
    u0_m0_wo0_mtree_mult1_1_im0_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr30_q);
    u0_m0_wo0_mtree_mult1_1_im0_reset <= areset;
    u0_m0_wo0_mtree_mult1_1_im0_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 15,
        lpm_widthb => 12,
        lpm_widthp => 27,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_1_im0_a0,
        datab => u0_m0_wo0_mtree_mult1_1_im0_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_1_im0_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_1_im0_s1
    );
    u0_m0_wo0_mtree_mult1_1_im0_q <= u0_m0_wo0_mtree_mult1_1_im0_s1;

    -- u0_m0_wo0_mtree_mult1_1_align_8(BITSHIFT,502)@15
    u0_m0_wo0_mtree_mult1_1_align_8_qint <= u0_m0_wo0_mtree_mult1_1_im0_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_1_align_8_q <= u0_m0_wo0_mtree_mult1_1_align_8_qint(43 downto 0);

    -- u0_m0_wo0_mtree_mult1_1_bjA5(BITJOIN,499)@13
    u0_m0_wo0_mtree_mult1_1_bjA5_q <= GND_q & u0_m0_wo0_mtree_mult1_1_bs1_merged_bit_select_c;

    -- u0_m0_wo0_mtree_mult1_1_im3(MULT,497)@13 + 2
    u0_m0_wo0_mtree_mult1_1_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_1_bjA5_q);
    u0_m0_wo0_mtree_mult1_1_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr30_q);
    u0_m0_wo0_mtree_mult1_1_im3_reset <= areset;
    u0_m0_wo0_mtree_mult1_1_im3_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 12,
        lpm_widthp => 30,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_1_im3_a0,
        datab => u0_m0_wo0_mtree_mult1_1_im3_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_1_im3_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_1_im3_s1
    );
    u0_m0_wo0_mtree_mult1_1_im3_q <= u0_m0_wo0_mtree_mult1_1_im3_s1;

    -- u0_m0_wo0_mtree_mult1_1_result_add_0_0(ADD,504)@15 + 1
    u0_m0_wo0_mtree_mult1_1_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((44 downto 30 => u0_m0_wo0_mtree_mult1_1_im3_q(29)) & u0_m0_wo0_mtree_mult1_1_im3_q));
    u0_m0_wo0_mtree_mult1_1_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((44 downto 44 => u0_m0_wo0_mtree_mult1_1_align_8_q(43)) & u0_m0_wo0_mtree_mult1_1_align_8_q));
    u0_m0_wo0_mtree_mult1_1_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_1_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_1_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_1_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_1_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_1_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_1_result_add_0_0_o(44 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr31(DELAY,54)@13
    u0_m0_wo0_wi0_r0_delayr31 : dspba_delay
    GENERIC MAP ( width => 12, depth => 16, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr30_q, xout => u0_m0_wo0_wi0_r0_delayr31_q, ena => d_u0_m0_wo0_compute_q_13_q(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_cm31(LOOKUP,90)@12 + 1
    u0_m0_wo0_cm31_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm31_q <= "11111111001001011010010001010001";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca31_q) IS
                WHEN "00" => u0_m0_wo0_cm31_q <= "11111111001001011010010001010001";
                WHEN "01" => u0_m0_wo0_cm31_q <= "00000000011111011011100010101010";
                WHEN "10" => u0_m0_wo0_cm31_q <= "00000001111111011000000010011000";
                WHEN "11" => u0_m0_wo0_cm31_q <= "00000010100101001010010110000101";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm31_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_0_bs1_merged_bit_select(BITSELECT,547)@13
    u0_m0_wo0_mtree_mult1_0_bs1_merged_bit_select_b <= STD_LOGIC_VECTOR(u0_m0_wo0_cm31_q(31 downto 17));
    u0_m0_wo0_mtree_mult1_0_bs1_merged_bit_select_c <= STD_LOGIC_VECTOR(u0_m0_wo0_cm31_q(16 downto 0));

    -- u0_m0_wo0_mtree_mult1_0_im0(MULT,505)@13 + 2
    u0_m0_wo0_mtree_mult1_0_im0_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_0_bs1_merged_bit_select_b);
    u0_m0_wo0_mtree_mult1_0_im0_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr31_q);
    u0_m0_wo0_mtree_mult1_0_im0_reset <= areset;
    u0_m0_wo0_mtree_mult1_0_im0_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 15,
        lpm_widthb => 12,
        lpm_widthp => 27,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_0_im0_a0,
        datab => u0_m0_wo0_mtree_mult1_0_im0_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_0_im0_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_0_im0_s1
    );
    u0_m0_wo0_mtree_mult1_0_im0_q <= u0_m0_wo0_mtree_mult1_0_im0_s1;

    -- u0_m0_wo0_mtree_mult1_0_align_8(BITSHIFT,513)@15
    u0_m0_wo0_mtree_mult1_0_align_8_qint <= u0_m0_wo0_mtree_mult1_0_im0_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_0_align_8_q <= u0_m0_wo0_mtree_mult1_0_align_8_qint(43 downto 0);

    -- u0_m0_wo0_mtree_mult1_0_bjA5(BITJOIN,510)@13
    u0_m0_wo0_mtree_mult1_0_bjA5_q <= GND_q & u0_m0_wo0_mtree_mult1_0_bs1_merged_bit_select_c;

    -- u0_m0_wo0_mtree_mult1_0_im3(MULT,508)@13 + 2
    u0_m0_wo0_mtree_mult1_0_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_0_bjA5_q);
    u0_m0_wo0_mtree_mult1_0_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_delayr31_q);
    u0_m0_wo0_mtree_mult1_0_im3_reset <= areset;
    u0_m0_wo0_mtree_mult1_0_im3_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 12,
        lpm_widthp => 30,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_0_im3_a0,
        datab => u0_m0_wo0_mtree_mult1_0_im3_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_0_im3_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_0_im3_s1
    );
    u0_m0_wo0_mtree_mult1_0_im3_q <= u0_m0_wo0_mtree_mult1_0_im3_s1;

    -- u0_m0_wo0_mtree_mult1_0_result_add_0_0(ADD,515)@15 + 1
    u0_m0_wo0_mtree_mult1_0_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((44 downto 30 => u0_m0_wo0_mtree_mult1_0_im3_q(29)) & u0_m0_wo0_mtree_mult1_0_im3_q));
    u0_m0_wo0_mtree_mult1_0_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((44 downto 44 => u0_m0_wo0_mtree_mult1_0_align_8_q(43)) & u0_m0_wo0_mtree_mult1_0_align_8_q));
    u0_m0_wo0_mtree_mult1_0_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_0_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_0_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_0_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_0_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_0_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_0_result_add_0_0_o(44 downto 0);

    -- u0_m0_wo0_mtree_add0_0(ADD,123)@16 + 1
    u0_m0_wo0_mtree_add0_0_a <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_0_result_add_0_0_q);
    u0_m0_wo0_mtree_add0_0_b <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_1_result_add_0_0_q);
    u0_m0_wo0_mtree_add0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_0_a) + SIGNED(u0_m0_wo0_mtree_add0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_0_q <= u0_m0_wo0_mtree_add0_0_o(44 downto 0);

    -- u0_m0_wo0_mtree_add1_0(ADD,139)@17 + 1
    u0_m0_wo0_mtree_add1_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((45 downto 45 => u0_m0_wo0_mtree_add0_0_q(44)) & u0_m0_wo0_mtree_add0_0_q));
    u0_m0_wo0_mtree_add1_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((45 downto 45 => u0_m0_wo0_mtree_add0_1_q(44)) & u0_m0_wo0_mtree_add0_1_q));
    u0_m0_wo0_mtree_add1_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_0_a) + SIGNED(u0_m0_wo0_mtree_add1_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_0_q <= u0_m0_wo0_mtree_add1_0_o(45 downto 0);

    -- u0_m0_wo0_mtree_add2_0(ADD,147)@18 + 1
    u0_m0_wo0_mtree_add2_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((46 downto 46 => u0_m0_wo0_mtree_add1_0_q(45)) & u0_m0_wo0_mtree_add1_0_q));
    u0_m0_wo0_mtree_add2_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((46 downto 46 => u0_m0_wo0_mtree_add1_1_q(45)) & u0_m0_wo0_mtree_add1_1_q));
    u0_m0_wo0_mtree_add2_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add2_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add2_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add2_0_a) + SIGNED(u0_m0_wo0_mtree_add2_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add2_0_q <= u0_m0_wo0_mtree_add2_0_o(46 downto 0);

    -- u0_m0_wo0_mtree_add3_0(ADD,151)@19 + 1
    u0_m0_wo0_mtree_add3_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((47 downto 47 => u0_m0_wo0_mtree_add2_0_q(46)) & u0_m0_wo0_mtree_add2_0_q));
    u0_m0_wo0_mtree_add3_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((47 downto 47 => u0_m0_wo0_mtree_add2_1_q(46)) & u0_m0_wo0_mtree_add2_1_q));
    u0_m0_wo0_mtree_add3_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add3_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add3_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add3_0_a) + SIGNED(u0_m0_wo0_mtree_add3_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add3_0_q <= u0_m0_wo0_mtree_add3_0_o(47 downto 0);

    -- u0_m0_wo0_mtree_add4_0(ADD,153)@20 + 1
    u0_m0_wo0_mtree_add4_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 48 => u0_m0_wo0_mtree_add3_0_q(47)) & u0_m0_wo0_mtree_add3_0_q));
    u0_m0_wo0_mtree_add4_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 48 => u0_m0_wo0_mtree_add3_1_q(47)) & u0_m0_wo0_mtree_add3_1_q));
    u0_m0_wo0_mtree_add4_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add4_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add4_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add4_0_a) + SIGNED(u0_m0_wo0_mtree_add4_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add4_0_q <= u0_m0_wo0_mtree_add4_0_o(48 downto 0);

    -- u0_m0_wo0_accum(ADD,155)@21 + 1
    u0_m0_wo0_accum_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((50 downto 49 => u0_m0_wo0_mtree_add4_0_q(48)) & u0_m0_wo0_mtree_add4_0_q));
    u0_m0_wo0_accum_b <= STD_LOGIC_VECTOR(u0_m0_wo0_accum_q);
    u0_m0_wo0_accum_i <= u0_m0_wo0_accum_a;
    u0_m0_wo0_accum_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_accum_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (d_u0_m0_wo0_compute_q_21_q = "1") THEN
                IF (u0_m0_wo0_aseq_q = "1") THEN
                    u0_m0_wo0_accum_o <= u0_m0_wo0_accum_i;
                ELSE
                    u0_m0_wo0_accum_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_accum_a) + SIGNED(u0_m0_wo0_accum_b));
                END IF;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_accum_q <= u0_m0_wo0_accum_o(50 downto 0);

    -- GND(CONSTANT,0)@0
    GND_q <= "0";

    -- u0_m0_wo0_oseq(SEQUENCE,156)@20 + 1
    u0_m0_wo0_oseq_clkproc: PROCESS (clk, areset)
        variable u0_m0_wo0_oseq_c : SIGNED(4 downto 0);
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_oseq_c := "00011";
            u0_m0_wo0_oseq_q <= "0";
            u0_m0_wo0_oseq_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (d_u0_m0_wo0_compute_q_20_q = "1") THEN
                IF (u0_m0_wo0_oseq_c = "00000") THEN
                    u0_m0_wo0_oseq_eq <= '1';
                ELSE
                    u0_m0_wo0_oseq_eq <= '0';
                END IF;
                IF (u0_m0_wo0_oseq_eq = '1') THEN
                    u0_m0_wo0_oseq_c := u0_m0_wo0_oseq_c + 3;
                ELSE
                    u0_m0_wo0_oseq_c := u0_m0_wo0_oseq_c - 1;
                END IF;
                u0_m0_wo0_oseq_q <= STD_LOGIC_VECTOR(u0_m0_wo0_oseq_c(4 downto 4));
            END IF;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_oseq_gated(LOGICAL,157)@21
    u0_m0_wo0_oseq_gated_q <= u0_m0_wo0_oseq_q and d_u0_m0_wo0_compute_q_21_q;

    -- u0_m0_wo0_oseq_gated_reg(REG,158)@21 + 1
    u0_m0_wo0_oseq_gated_reg_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_oseq_gated_reg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_oseq_gated_reg_q <= STD_LOGIC_VECTOR(u0_m0_wo0_oseq_gated_q);
        END IF;
    END PROCESS;

    -- xOut(PORTOUT,163)@22 + 1
    xOut_v <= u0_m0_wo0_oseq_gated_reg_q;
    xOut_c <= STD_LOGIC_VECTOR("0000000" & GND_q);
    xOut_0 <= u0_m0_wo0_accum_q;

END normal;
