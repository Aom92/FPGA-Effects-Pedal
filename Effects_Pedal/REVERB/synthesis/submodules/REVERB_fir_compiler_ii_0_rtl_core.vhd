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
-- VHDL created on Wed Nov  8 00:27:21 2023


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
        xOut_0 : out std_logic_vector(42 downto 0);  -- sfix43
        clk : in std_logic;
        areset : in std_logic
    );
end REVERB_fir_compiler_ii_0_rtl_core;

architecture normal of REVERB_fir_compiler_ii_0_rtl_core is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_xIn_0_15_q : STD_LOGIC_VECTOR (11 downto 0);
    signal d_in0_m0_wi0_wo0_assign_id1_q_15_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_run_count : STD_LOGIC_VECTOR (1 downto 0);
    signal u0_m0_wo0_run_preEnaQ : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_run_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_run_out : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_run_enableQ : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_run_ctrl : STD_LOGIC_VECTOR (2 downto 0);
    signal u0_m0_wo0_memread_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_u0_m0_wo0_memread_q_13_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_u0_m0_wo0_memread_q_14_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_compute_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_u0_m0_wo0_compute_q_14_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_u0_m0_wo0_compute_q_22_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_u0_m0_wo0_compute_q_23_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi0_r0_ra51_count0_inner_q : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_wi0_r0_ra51_count0_inner_i : SIGNED (8 downto 0);
    attribute preserve : boolean;
    attribute preserve of u0_m0_wo0_wi0_r0_ra51_count0_inner_i : signal is true;
    signal u0_m0_wo0_wi0_r0_ra51_count0_q : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_wi0_r0_ra51_count0_i : UNSIGNED (7 downto 0);
    attribute preserve of u0_m0_wo0_wi0_r0_ra51_count0_i : signal is true;
    signal u0_m0_wo0_wi0_r0_ra51_count1_q : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_ra51_count1_i : UNSIGNED (7 downto 0);
    attribute preserve of u0_m0_wo0_wi0_r0_ra51_count1_i : signal is true;
    signal u0_m0_wo0_wi0_r0_ra51_count1_eq : std_logic;
    attribute preserve of u0_m0_wo0_wi0_r0_ra51_count1_eq : signal is true;
    signal u0_m0_wo0_wi0_r0_ra51_add_0_0_a : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi0_r0_ra51_add_0_0_b : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi0_r0_ra51_add_0_0_o : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi0_r0_ra51_add_0_0_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi0_r0_we51_seq_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi0_r0_we51_seq_eq : std_logic;
    signal u0_m0_wo0_wi0_r0_wa0_q : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_wa0_i : UNSIGNED (7 downto 0);
    attribute preserve of u0_m0_wo0_wi0_r0_wa0_i : signal is true;
    signal u0_m0_wo0_wi0_r0_wa51_q : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_wa51_i : UNSIGNED (7 downto 0);
    attribute preserve of u0_m0_wo0_wi0_r0_wa51_i : signal is true;
    signal u0_m0_wo0_wi0_r0_memr0_reset0 : std_logic;
    signal u0_m0_wo0_wi0_r0_memr0_ia : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_memr0_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_memr0_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_memr0_iq : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_memr0_q : STD_LOGIC_VECTOR (11 downto 0);
    signal d_u0_m0_wo0_wi0_r0_split1_d_19_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_memr1_reset0 : std_logic;
    signal u0_m0_wo0_wi0_r0_memr1_ia : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr1_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_memr1_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_memr1_iq : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr1_q : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr4_reset0 : std_logic;
    signal u0_m0_wo0_wi0_r0_memr4_ia : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr4_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_memr4_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_memr4_iq : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr4_q : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr7_reset0 : std_logic;
    signal u0_m0_wo0_wi0_r0_memr7_ia : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr7_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_memr7_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_memr7_iq : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr7_q : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr10_reset0 : std_logic;
    signal u0_m0_wo0_wi0_r0_memr10_ia : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr10_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_memr10_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_memr10_iq : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr10_q : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr13_reset0 : std_logic;
    signal u0_m0_wo0_wi0_r0_memr13_ia : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr13_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_memr13_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_memr13_iq : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr13_q : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr16_reset0 : std_logic;
    signal u0_m0_wo0_wi0_r0_memr16_ia : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr16_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_memr16_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_memr16_iq : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr16_q : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr19_reset0 : std_logic;
    signal u0_m0_wo0_wi0_r0_memr19_ia : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr19_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_memr19_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_memr19_iq : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr19_q : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr22_reset0 : std_logic;
    signal u0_m0_wo0_wi0_r0_memr22_ia : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr22_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_memr22_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_memr22_iq : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr22_q : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr25_reset0 : std_logic;
    signal u0_m0_wo0_wi0_r0_memr25_ia : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr25_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_memr25_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_memr25_iq : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr25_q : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr28_reset0 : std_logic;
    signal u0_m0_wo0_wi0_r0_memr28_ia : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr28_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_memr28_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_memr28_iq : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr28_q : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr31_reset0 : std_logic;
    signal u0_m0_wo0_wi0_r0_memr31_ia : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr31_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_memr31_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_memr31_iq : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr31_q : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr34_reset0 : std_logic;
    signal u0_m0_wo0_wi0_r0_memr34_ia : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr34_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_memr34_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_memr34_iq : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr34_q : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr37_reset0 : std_logic;
    signal u0_m0_wo0_wi0_r0_memr37_ia : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr37_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_memr37_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_memr37_iq : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr37_q : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr40_reset0 : std_logic;
    signal u0_m0_wo0_wi0_r0_memr40_ia : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr40_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_memr40_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_memr40_iq : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr40_q : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr43_reset0 : std_logic;
    signal u0_m0_wo0_wi0_r0_memr43_ia : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr43_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_memr43_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_memr43_iq : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr43_q : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr46_reset0 : std_logic;
    signal u0_m0_wo0_wi0_r0_memr46_ia : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr46_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_memr46_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_memr46_iq : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr46_q : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr49_reset0 : std_logic;
    signal u0_m0_wo0_wi0_r0_memr49_ia : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr49_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_memr49_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_memr49_iq : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr49_q : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_ca51_q : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_ca51_i : UNSIGNED (7 downto 0);
    attribute preserve of u0_m0_wo0_ca51_i : signal is true;
    signal u0_m0_wo0_ca51_eq : std_logic;
    attribute preserve of u0_m0_wo0_ca51_eq : signal is true;
    signal d_u0_m0_wo0_ca51_q_17_q : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_mtree_mult1_48_a0 : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_48_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_48_s1 : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_48_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_48_q : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_47_a0 : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_47_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_47_s1 : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_47_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_47_q : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_46_a0 : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_46_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_46_s1 : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_46_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_46_q : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_45_a0 : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_45_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_45_s1 : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_45_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_45_q : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_44_a0 : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_44_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_44_s1 : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_44_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_44_q : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_43_a0 : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_43_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_43_s1 : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_43_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_43_q : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_42_a0 : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_42_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_42_s1 : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_42_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_42_q : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_41_a0 : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_41_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_41_s1 : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_41_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_41_q : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_40_a0 : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_40_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_40_s1 : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_40_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_40_q : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_39_a0 : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_39_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_39_s1 : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_39_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_39_q : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_38_a0 : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_38_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_38_s1 : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_38_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_38_q : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_37_a0 : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_37_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_37_s1 : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_37_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_37_q : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_a0 : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_s1 : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_36_q : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_a0 : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_s1 : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_35_q : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_34_a0 : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_34_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_34_s1 : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_34_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_34_q : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_a0 : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_s1 : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_33_q : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_a0 : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_s1 : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_32_q : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_a0 : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_s1 : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_31_q : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_30_a0 : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_30_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_30_s1 : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_30_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_30_q : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_a0 : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_s1 : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_29_q : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_a0 : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_s1 : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_28_q : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_a0 : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_s1 : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_27_q : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_26_a0 : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_26_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_26_s1 : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_26_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_26_q : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_a0 : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_s1 : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_25_q : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_a0 : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_s1 : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_24_q : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_a0 : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_s1 : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_23_q : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_22_a0 : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_22_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_22_s1 : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_22_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_22_q : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_a0 : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_s1 : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_21_q : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_a0 : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_s1 : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_20_q : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_a0 : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_s1 : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_19_q : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_a0 : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_s1 : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_18_q : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_a0 : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_s1 : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_17_q : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_a0 : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_s1 : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_16_q : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_a0 : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_s1 : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_15_q : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_14_a0 : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_14_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_14_s1 : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_14_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_14_q : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_a0 : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_s1 : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_13_q : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_a0 : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_s1 : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_12_q : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_a0 : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_s1 : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_11_q : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_10_a0 : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_10_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_10_s1 : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_10_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_10_q : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_a0 : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_s1 : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_9_q : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_a0 : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_s1 : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_8_q : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_a0 : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_s1 : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_7_q : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_6_a0 : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_6_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_6_s1 : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_6_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_6_q : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_a0 : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_s1 : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_5_q : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_a0 : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_s1 : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_4_q : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_a0 : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_s1 : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_3_q : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_2_a0 : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_2_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_2_s1 : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_2_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_2_q : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_a0 : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_s1 : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_1_q : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_a0 : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_s1 : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_0_q : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_add0_0_a : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add0_0_b : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add0_0_o : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add0_0_q : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add0_1_a : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add0_1_b : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add0_1_o : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add0_1_q : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add0_2_a : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add0_2_b : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add0_2_o : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add0_2_q : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add0_3_a : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add0_3_b : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add0_3_o : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add0_3_q : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add0_4_a : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add0_4_b : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add0_4_o : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add0_4_q : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add0_5_a : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add0_5_b : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add0_5_o : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add0_5_q : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add0_6_a : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add0_6_b : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add0_6_o : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add0_6_q : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add0_7_a : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add0_7_b : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add0_7_o : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add0_7_q : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add0_8_a : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add0_8_b : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add0_8_o : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add0_8_q : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add0_9_a : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add0_9_b : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add0_9_o : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add0_9_q : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add0_10_a : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add0_10_b : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add0_10_o : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add0_10_q : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add0_11_a : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add0_11_b : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add0_11_o : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add0_11_q : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add0_12_a : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add0_12_b : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add0_12_o : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add0_12_q : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add0_13_a : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add0_13_b : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add0_13_o : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add0_13_q : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add0_14_a : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add0_14_b : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add0_14_o : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add0_14_q : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add0_15_a : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add0_15_b : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add0_15_o : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add0_15_q : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add0_16_a : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add0_16_b : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add0_16_o : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add0_16_q : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add0_17_a : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add0_17_b : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add0_17_o : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add0_17_q : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add0_18_a : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add0_18_b : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add0_18_o : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add0_18_q : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add0_19_a : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add0_19_b : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add0_19_o : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add0_19_q : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add0_20_a : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add0_20_b : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add0_20_o : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add0_20_q : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add0_21_a : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add0_21_b : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add0_21_o : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add0_21_q : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add0_22_a : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add0_22_b : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add0_22_o : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add0_22_q : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add0_23_a : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add0_23_b : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add0_23_o : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add0_23_q : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add1_0_a : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_add1_0_b : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_add1_0_o : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_add1_0_q : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_add1_1_a : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_add1_1_b : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_add1_1_o : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_add1_1_q : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_add1_2_a : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_add1_2_b : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_add1_2_o : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_add1_2_q : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_add1_3_a : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_add1_3_b : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_add1_3_o : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_add1_3_q : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_add1_4_a : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_add1_4_b : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_add1_4_o : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_add1_4_q : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_add1_5_a : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_add1_5_b : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_add1_5_o : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_add1_5_q : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_add1_6_a : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_add1_6_b : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_add1_6_o : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_add1_6_q : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_add1_7_a : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_add1_7_b : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_add1_7_o : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_add1_7_q : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_add1_8_a : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_add1_8_b : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_add1_8_o : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_add1_8_q : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_add1_9_a : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_add1_9_b : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_add1_9_o : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_add1_9_q : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_add1_10_a : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_add1_10_b : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_add1_10_o : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_add1_10_q : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_add1_11_a : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_add1_11_b : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_add1_11_o : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_add1_11_q : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_add2_0_a : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_mtree_add2_0_b : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_mtree_add2_0_o : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_mtree_add2_0_q : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_mtree_add2_1_a : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_mtree_add2_1_b : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_mtree_add2_1_o : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_mtree_add2_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_mtree_add2_2_a : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_mtree_add2_2_b : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_mtree_add2_2_o : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_mtree_add2_2_q : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_mtree_add2_3_a : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_mtree_add2_3_b : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_mtree_add2_3_o : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_mtree_add2_3_q : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_mtree_add2_4_a : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_mtree_add2_4_b : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_mtree_add2_4_o : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_mtree_add2_4_q : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_mtree_add2_5_a : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_mtree_add2_5_b : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_mtree_add2_5_o : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_mtree_add2_5_q : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_mtree_add3_0_a : STD_LOGIC_VECTOR (32 downto 0);
    signal u0_m0_wo0_mtree_add3_0_b : STD_LOGIC_VECTOR (32 downto 0);
    signal u0_m0_wo0_mtree_add3_0_o : STD_LOGIC_VECTOR (32 downto 0);
    signal u0_m0_wo0_mtree_add3_0_q : STD_LOGIC_VECTOR (32 downto 0);
    signal u0_m0_wo0_mtree_add3_1_a : STD_LOGIC_VECTOR (32 downto 0);
    signal u0_m0_wo0_mtree_add3_1_b : STD_LOGIC_VECTOR (32 downto 0);
    signal u0_m0_wo0_mtree_add3_1_o : STD_LOGIC_VECTOR (32 downto 0);
    signal u0_m0_wo0_mtree_add3_1_q : STD_LOGIC_VECTOR (32 downto 0);
    signal u0_m0_wo0_mtree_add3_2_a : STD_LOGIC_VECTOR (32 downto 0);
    signal u0_m0_wo0_mtree_add3_2_b : STD_LOGIC_VECTOR (32 downto 0);
    signal u0_m0_wo0_mtree_add3_2_o : STD_LOGIC_VECTOR (32 downto 0);
    signal u0_m0_wo0_mtree_add3_2_q : STD_LOGIC_VECTOR (32 downto 0);
    signal u0_m0_wo0_mtree_add4_0_a : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_add4_0_b : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_add4_0_o : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_add4_0_q : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_add4_1_a : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_add4_1_b : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_add4_1_o : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_add4_1_q : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_add5_0_a : STD_LOGIC_VECTOR (34 downto 0);
    signal u0_m0_wo0_mtree_add5_0_b : STD_LOGIC_VECTOR (34 downto 0);
    signal u0_m0_wo0_mtree_add5_0_o : STD_LOGIC_VECTOR (34 downto 0);
    signal u0_m0_wo0_mtree_add5_0_q : STD_LOGIC_VECTOR (34 downto 0);
    signal u0_m0_wo0_aseq_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_aseq_eq : std_logic;
    signal u0_m0_wo0_accum_a : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_accum_b : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_accum_i : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_accum_o : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_accum_q : STD_LOGIC_VECTOR (42 downto 0);
    signal u0_m0_wo0_oseq_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_oseq_eq : std_logic;
    signal u0_m0_wo0_oseq_gated_reg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi0_r0_ra51_count1_lut_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_wi0_r0_ra51_count1_lut_lutmem_ia : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_wi0_r0_ra51_count1_lut_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_ra51_count1_lut_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_ra51_count1_lut_lutmem_ir : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_wi0_r0_ra51_count1_lut_lutmem_r : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_cm3_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm3_lutmem_ia : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm3_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm3_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm3_lutmem_ir : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm3_lutmem_r : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm4_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm4_lutmem_ia : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm4_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm4_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm4_lutmem_ir : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm4_lutmem_r : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm5_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm5_lutmem_ia : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm5_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm5_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm5_lutmem_ir : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm5_lutmem_r : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm6_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm6_lutmem_ia : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm6_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm6_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm6_lutmem_ir : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm6_lutmem_r : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm7_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm7_lutmem_ia : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm7_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm7_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm7_lutmem_ir : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm7_lutmem_r : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm8_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm8_lutmem_ia : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm8_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm8_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm8_lutmem_ir : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm8_lutmem_r : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm9_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm9_lutmem_ia : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm9_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm9_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm9_lutmem_ir : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm9_lutmem_r : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm10_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm10_lutmem_ia : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm10_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm10_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm10_lutmem_ir : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm10_lutmem_r : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm11_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm11_lutmem_ia : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm11_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm11_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm11_lutmem_ir : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm11_lutmem_r : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm12_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm12_lutmem_ia : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm12_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm12_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm12_lutmem_ir : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm12_lutmem_r : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm13_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm13_lutmem_ia : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm13_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm13_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm13_lutmem_ir : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm13_lutmem_r : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm14_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm14_lutmem_ia : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm14_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm14_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm14_lutmem_ir : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm14_lutmem_r : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm15_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm15_lutmem_ia : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm15_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm15_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm15_lutmem_ir : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm15_lutmem_r : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm16_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm16_lutmem_ia : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm16_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm16_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm16_lutmem_ir : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm16_lutmem_r : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm17_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm17_lutmem_ia : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm17_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm17_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm17_lutmem_ir : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm17_lutmem_r : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm18_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm18_lutmem_ia : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm18_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm18_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm18_lutmem_ir : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm18_lutmem_r : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm19_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm19_lutmem_ia : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm19_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm19_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm19_lutmem_ir : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm19_lutmem_r : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm20_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm20_lutmem_ia : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm20_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm20_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm20_lutmem_ir : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm20_lutmem_r : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm21_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm21_lutmem_ia : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm21_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm21_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm21_lutmem_ir : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm21_lutmem_r : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm22_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm22_lutmem_ia : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm22_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm22_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm22_lutmem_ir : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm22_lutmem_r : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm23_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm23_lutmem_ia : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm23_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm23_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm23_lutmem_ir : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm23_lutmem_r : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm24_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm24_lutmem_ia : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm24_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm24_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm24_lutmem_ir : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm24_lutmem_r : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm25_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm25_lutmem_ia : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm25_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm25_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm25_lutmem_ir : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm25_lutmem_r : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm26_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm26_lutmem_ia : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm26_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm26_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm26_lutmem_ir : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm26_lutmem_r : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm27_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm27_lutmem_ia : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm27_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm27_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm27_lutmem_ir : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm27_lutmem_r : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm28_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm28_lutmem_ia : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm28_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm28_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm28_lutmem_ir : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm28_lutmem_r : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm29_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm29_lutmem_ia : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm29_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm29_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm29_lutmem_ir : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm29_lutmem_r : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm30_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm30_lutmem_ia : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm30_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm30_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm30_lutmem_ir : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm30_lutmem_r : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm31_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm31_lutmem_ia : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm31_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm31_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm31_lutmem_ir : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm31_lutmem_r : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm32_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm32_lutmem_ia : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm32_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm32_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm32_lutmem_ir : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm32_lutmem_r : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm33_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm33_lutmem_ia : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm33_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm33_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm33_lutmem_ir : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm33_lutmem_r : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm34_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm34_lutmem_ia : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm34_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm34_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm34_lutmem_ir : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm34_lutmem_r : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm35_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm35_lutmem_ia : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm35_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm35_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm35_lutmem_ir : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm35_lutmem_r : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm36_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm36_lutmem_ia : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm36_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm36_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm36_lutmem_ir : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm36_lutmem_r : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm37_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm37_lutmem_ia : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm37_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm37_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm37_lutmem_ir : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm37_lutmem_r : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm38_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm38_lutmem_ia : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm38_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm38_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm38_lutmem_ir : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm38_lutmem_r : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm39_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm39_lutmem_ia : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm39_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm39_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm39_lutmem_ir : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm39_lutmem_r : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm40_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm40_lutmem_ia : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm40_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm40_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm40_lutmem_ir : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm40_lutmem_r : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm41_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm41_lutmem_ia : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm41_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm41_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm41_lutmem_ir : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm41_lutmem_r : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm42_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm42_lutmem_ia : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm42_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm42_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm42_lutmem_ir : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm42_lutmem_r : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm43_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm43_lutmem_ia : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm43_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm43_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm43_lutmem_ir : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm43_lutmem_r : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm44_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm44_lutmem_ia : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm44_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm44_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm44_lutmem_ir : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm44_lutmem_r : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm45_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm45_lutmem_ia : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm45_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm45_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm45_lutmem_ir : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm45_lutmem_r : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm46_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm46_lutmem_ia : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm46_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm46_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm46_lutmem_ir : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm46_lutmem_r : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm47_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm47_lutmem_ia : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm47_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm47_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm47_lutmem_ir : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm47_lutmem_r : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm48_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm48_lutmem_ia : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm48_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm48_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm48_lutmem_ir : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm48_lutmem_r : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm49_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm49_lutmem_ia : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm49_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm49_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm49_lutmem_ir : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm49_lutmem_r : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm50_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm50_lutmem_ia : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm50_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm50_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm50_lutmem_ir : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm50_lutmem_r : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm51_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm51_lutmem_ia : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm51_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm51_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm51_lutmem_ir : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm51_lutmem_r : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_wi0_r0_ra51_count0_run_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_oseq_gated_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi0_r0_ra51_resize_in : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_ra51_resize_b : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_split1_b : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_split1_c : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_split1_d : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_split4_b : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_split4_c : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_split4_d : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_split7_b : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_split7_c : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_split7_d : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_split10_b : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_split10_c : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_split10_d : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_split13_b : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_split13_c : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_split13_d : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_split16_b : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_split16_c : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_split16_d : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_split19_b : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_split19_c : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_split19_d : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_split22_b : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_split22_c : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_split22_d : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_split25_b : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_split25_c : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_split25_d : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_split28_b : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_split28_c : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_split28_d : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_split31_b : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_split31_c : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_split31_d : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_split34_b : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_split34_c : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_split34_d : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_split37_b : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_split37_c : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_split37_d : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_split40_b : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_split40_c : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_split40_d : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_split43_b : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_split43_c : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_split43_d : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_split46_b : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_split46_c : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_split46_d : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_split49_b : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_split49_c : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_split49_d : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_join1_q : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_join4_q : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_join7_q : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_join10_q : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_join13_q : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_join16_q : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_join19_q : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_join22_q : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_join25_q : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_join28_q : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_join31_q : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_join34_q : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_join37_q : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_join40_q : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_join43_q : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_join46_q : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_join49_q : STD_LOGIC_VECTOR (35 downto 0);

begin


    -- VCC(CONSTANT,1)@0
    VCC_q <= "1";

    -- u0_m0_wo0_run(ENABLEGENERATOR,13)@10 + 2
    u0_m0_wo0_run_ctrl <= u0_m0_wo0_run_out & xIn_v & u0_m0_wo0_run_enableQ;
    u0_m0_wo0_run_clkproc: PROCESS (clk, areset)
        variable u0_m0_wo0_run_enable_c : SIGNED(8 downto 0);
        variable u0_m0_wo0_run_inc : SIGNED(1 downto 0);
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_run_q <= "0";
            u0_m0_wo0_run_enable_c := TO_SIGNED(195, 9);
            u0_m0_wo0_run_enableQ <= "0";
            u0_m0_wo0_run_count <= "00";
            u0_m0_wo0_run_inc := (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (u0_m0_wo0_run_out = "1") THEN
                IF (u0_m0_wo0_run_enable_c(8) = '1') THEN
                    u0_m0_wo0_run_enable_c := u0_m0_wo0_run_enable_c - (-196);
                ELSE
                    u0_m0_wo0_run_enable_c := u0_m0_wo0_run_enable_c + (-1);
                END IF;
                u0_m0_wo0_run_enableQ <= STD_LOGIC_VECTOR(u0_m0_wo0_run_enable_c(8 downto 8));
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

    -- d_u0_m0_wo0_memread_q_13(DELAY,309)@12 + 1
    d_u0_m0_wo0_memread_q_13 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_memread_q, xout => d_u0_m0_wo0_memread_q_13_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_compute(DELAY,16)@13
    u0_m0_wo0_compute : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => d_u0_m0_wo0_memread_q_13_q, xout => u0_m0_wo0_compute_q, clk => clk, aclr => areset );

    -- d_u0_m0_wo0_compute_q_14(DELAY,311)@13 + 1
    d_u0_m0_wo0_compute_q_14 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_compute_q, xout => d_u0_m0_wo0_compute_q_14_q, clk => clk, aclr => areset );

    -- d_u0_m0_wo0_compute_q_22(DELAY,312)@14 + 8
    d_u0_m0_wo0_compute_q_22 : dspba_delay
    GENERIC MAP ( width => 1, depth => 8, reset_kind => "ASYNC" )
    PORT MAP ( xin => d_u0_m0_wo0_compute_q_14_q, xout => d_u0_m0_wo0_compute_q_22_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_aseq(SEQUENCE,240)@22 + 1
    u0_m0_wo0_aseq_clkproc: PROCESS (clk, areset)
        variable u0_m0_wo0_aseq_c : SIGNED(9 downto 0);
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_aseq_c := "0000000000";
            u0_m0_wo0_aseq_q <= "0";
            u0_m0_wo0_aseq_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (d_u0_m0_wo0_compute_q_22_q = "1") THEN
                IF (u0_m0_wo0_aseq_c = "0000000000") THEN
                    u0_m0_wo0_aseq_eq <= '1';
                ELSE
                    u0_m0_wo0_aseq_eq <= '0';
                END IF;
                IF (u0_m0_wo0_aseq_eq = '1') THEN
                    u0_m0_wo0_aseq_c := u0_m0_wo0_aseq_c + 196;
                ELSE
                    u0_m0_wo0_aseq_c := u0_m0_wo0_aseq_c - 1;
                END IF;
                u0_m0_wo0_aseq_q <= STD_LOGIC_VECTOR(u0_m0_wo0_aseq_c(9 downto 9));
            END IF;
        END IF;
    END PROCESS;

    -- d_u0_m0_wo0_compute_q_23(DELAY,313)@22 + 1
    d_u0_m0_wo0_compute_q_23 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => d_u0_m0_wo0_compute_q_22_q, xout => d_u0_m0_wo0_compute_q_23_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_wi0_r0_ra51_count1(COUNTER,23)@12
    -- low=0, high=196, step=1, init=0
    u0_m0_wo0_wi0_r0_ra51_count1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_r0_ra51_count1_i <= TO_UNSIGNED(0, 8);
            u0_m0_wo0_wi0_r0_ra51_count1_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (u0_m0_wo0_memread_q = "1") THEN
                IF (u0_m0_wo0_wi0_r0_ra51_count1_i = TO_UNSIGNED(195, 8)) THEN
                    u0_m0_wo0_wi0_r0_ra51_count1_eq <= '1';
                ELSE
                    u0_m0_wo0_wi0_r0_ra51_count1_eq <= '0';
                END IF;
                IF (u0_m0_wo0_wi0_r0_ra51_count1_eq = '1') THEN
                    u0_m0_wo0_wi0_r0_ra51_count1_i <= u0_m0_wo0_wi0_r0_ra51_count1_i + 60;
                ELSE
                    u0_m0_wo0_wi0_r0_ra51_count1_i <= u0_m0_wo0_wi0_r0_ra51_count1_i + 1;
                END IF;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_wi0_r0_ra51_count1_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_wi0_r0_ra51_count1_i, 8)));

    -- u0_m0_wo0_wi0_r0_ra51_count1_lut_lutmem(DUALMEM,257)@12 + 2
    u0_m0_wo0_wi0_r0_ra51_count1_lut_lutmem_aa <= u0_m0_wo0_wi0_r0_ra51_count1_q;
    u0_m0_wo0_wi0_r0_ra51_count1_lut_lutmem_reset0 <= areset;
    u0_m0_wo0_wi0_r0_ra51_count1_lut_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 9,
        widthad_a => 8,
        numwords_a => 197,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "REVERB_fir_compiler_ii_0_rtl_core_u0_m0_wo0_wi0_r0_ra51_count1_lut_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => u0_m0_wo0_wi0_r0_ra51_count1_lut_lutmem_reset0,
        clock0 => clk,
        address_a => u0_m0_wo0_wi0_r0_ra51_count1_lut_lutmem_aa,
        q_a => u0_m0_wo0_wi0_r0_ra51_count1_lut_lutmem_ir
    );
    u0_m0_wo0_wi0_r0_ra51_count1_lut_lutmem_r <= u0_m0_wo0_wi0_r0_ra51_count1_lut_lutmem_ir(8 downto 0);

    -- u0_m0_wo0_wi0_r0_ra51_count0_inner(COUNTER,19)@14
    -- low=-1, high=195, step=-1, init=195
    u0_m0_wo0_wi0_r0_ra51_count0_inner_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_r0_ra51_count0_inner_i <= TO_SIGNED(195, 9);
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (d_u0_m0_wo0_memread_q_14_q = "1") THEN
                IF (u0_m0_wo0_wi0_r0_ra51_count0_inner_i(8 downto 8) = "1") THEN
                    u0_m0_wo0_wi0_r0_ra51_count0_inner_i <= u0_m0_wo0_wi0_r0_ra51_count0_inner_i - 316;
                ELSE
                    u0_m0_wo0_wi0_r0_ra51_count0_inner_i <= u0_m0_wo0_wi0_r0_ra51_count0_inner_i - 1;
                END IF;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_wi0_r0_ra51_count0_inner_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_wi0_r0_ra51_count0_inner_i, 9)));

    -- u0_m0_wo0_wi0_r0_ra51_count0_run(LOGICAL,20)@14
    u0_m0_wo0_wi0_r0_ra51_count0_run_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_ra51_count0_inner_q(8 downto 8));

    -- d_u0_m0_wo0_memread_q_14(DELAY,310)@13 + 1
    d_u0_m0_wo0_memread_q_14 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => d_u0_m0_wo0_memread_q_13_q, xout => d_u0_m0_wo0_memread_q_14_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_wi0_r0_ra51_count0(COUNTER,21)@14
    -- low=0, high=255, step=1, init=0
    u0_m0_wo0_wi0_r0_ra51_count0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_r0_ra51_count0_i <= TO_UNSIGNED(0, 8);
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (d_u0_m0_wo0_memread_q_14_q = "1" and u0_m0_wo0_wi0_r0_ra51_count0_run_q = "1") THEN
                u0_m0_wo0_wi0_r0_ra51_count0_i <= u0_m0_wo0_wi0_r0_ra51_count0_i + 1;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_wi0_r0_ra51_count0_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_wi0_r0_ra51_count0_i, 9)));

    -- u0_m0_wo0_wi0_r0_ra51_add_0_0(ADD,24)@14 + 1
    u0_m0_wo0_wi0_r0_ra51_add_0_0_a <= STD_LOGIC_VECTOR("0" & u0_m0_wo0_wi0_r0_ra51_count0_q);
    u0_m0_wo0_wi0_r0_ra51_add_0_0_b <= STD_LOGIC_VECTOR("0" & u0_m0_wo0_wi0_r0_ra51_count1_lut_lutmem_r);
    u0_m0_wo0_wi0_r0_ra51_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_r0_ra51_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_wi0_r0_ra51_add_0_0_o <= STD_LOGIC_VECTOR(UNSIGNED(u0_m0_wo0_wi0_r0_ra51_add_0_0_a) + UNSIGNED(u0_m0_wo0_wi0_r0_ra51_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_wi0_r0_ra51_add_0_0_q <= u0_m0_wo0_wi0_r0_ra51_add_0_0_o(9 downto 0);

    -- u0_m0_wo0_wi0_r0_ra51_resize(BITSELECT,25)@15
    u0_m0_wo0_wi0_r0_ra51_resize_in <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_ra51_add_0_0_q(7 downto 0));
    u0_m0_wo0_wi0_r0_ra51_resize_b <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_ra51_resize_in(7 downto 0));

    -- d_xIn_0_15(DELAY,307)@10 + 5
    d_xIn_0_15 : dspba_delay
    GENERIC MAP ( width => 12, depth => 5, reset_kind => "ASYNC" )
    PORT MAP ( xin => xIn_0, xout => d_xIn_0_15_q, clk => clk, aclr => areset );

    -- d_in0_m0_wi0_wo0_assign_id1_q_15(DELAY,308)@10 + 5
    d_in0_m0_wi0_wo0_assign_id1_q_15 : dspba_delay
    GENERIC MAP ( width => 1, depth => 5, reset_kind => "ASYNC" )
    PORT MAP ( xin => xIn_v, xout => d_in0_m0_wi0_wo0_assign_id1_q_15_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_wi0_r0_wa0(COUNTER,27)@15
    -- low=0, high=255, step=1, init=139
    u0_m0_wo0_wi0_r0_wa0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_r0_wa0_i <= TO_UNSIGNED(139, 8);
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (d_in0_m0_wi0_wo0_assign_id1_q_15_q = "1") THEN
                u0_m0_wo0_wi0_r0_wa0_i <= u0_m0_wo0_wi0_r0_wa0_i + 1;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_wi0_r0_wa0_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_wi0_r0_wa0_i, 8)));

    -- u0_m0_wo0_wi0_r0_memr0(DUALMEM,29)@15
    u0_m0_wo0_wi0_r0_memr0_ia <= STD_LOGIC_VECTOR(d_xIn_0_15_q);
    u0_m0_wo0_wi0_r0_memr0_aa <= u0_m0_wo0_wi0_r0_wa0_q;
    u0_m0_wo0_wi0_r0_memr0_ab <= u0_m0_wo0_wi0_r0_ra51_resize_b;
    u0_m0_wo0_wi0_r0_memr0_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "DUAL_PORT",
        width_a => 12,
        widthad_a => 8,
        numwords_a => 256,
        width_b => 12,
        widthad_b => 8,
        numwords_b => 256,
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
        wren_a => d_in0_m0_wi0_wo0_assign_id1_q_15_q(0),
        address_b => u0_m0_wo0_wi0_r0_memr0_ab,
        q_b => u0_m0_wo0_wi0_r0_memr0_iq
    );
    u0_m0_wo0_wi0_r0_memr0_q <= u0_m0_wo0_wi0_r0_memr0_iq(11 downto 0);

    -- u0_m0_wo0_wi0_r0_join1(BITJOIN,30)@15
    u0_m0_wo0_wi0_r0_join1_q <= u0_m0_wo0_wi0_r0_split1_c & u0_m0_wo0_wi0_r0_split1_b & u0_m0_wo0_wi0_r0_memr0_q;

    -- u0_m0_wo0_wi0_r0_we51_seq(SEQUENCE,26)@14 + 1
    u0_m0_wo0_wi0_r0_we51_seq_clkproc: PROCESS (clk, areset)
        variable u0_m0_wo0_wi0_r0_we51_seq_c : SIGNED(9 downto 0);
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_r0_we51_seq_c := "0000000000";
            u0_m0_wo0_wi0_r0_we51_seq_q <= "0";
            u0_m0_wo0_wi0_r0_we51_seq_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (d_u0_m0_wo0_compute_q_14_q = "1") THEN
                IF (u0_m0_wo0_wi0_r0_we51_seq_c = "0000000000") THEN
                    u0_m0_wo0_wi0_r0_we51_seq_eq <= '1';
                ELSE
                    u0_m0_wo0_wi0_r0_we51_seq_eq <= '0';
                END IF;
                IF (u0_m0_wo0_wi0_r0_we51_seq_eq = '1') THEN
                    u0_m0_wo0_wi0_r0_we51_seq_c := u0_m0_wo0_wi0_r0_we51_seq_c + 196;
                ELSE
                    u0_m0_wo0_wi0_r0_we51_seq_c := u0_m0_wo0_wi0_r0_we51_seq_c - 1;
                END IF;
                u0_m0_wo0_wi0_r0_we51_seq_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_we51_seq_c(9 downto 9));
            ELSE
                u0_m0_wo0_wi0_r0_we51_seq_q <= "0";
            END IF;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi0_r0_wa51(COUNTER,28)@15
    -- low=0, high=255, step=1, init=140
    u0_m0_wo0_wi0_r0_wa51_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_r0_wa51_i <= TO_UNSIGNED(140, 8);
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (u0_m0_wo0_wi0_r0_we51_seq_q = "1") THEN
                u0_m0_wo0_wi0_r0_wa51_i <= u0_m0_wo0_wi0_r0_wa51_i + 1;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_wi0_r0_wa51_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_wi0_r0_wa51_i, 8)));

    -- u0_m0_wo0_wi0_r0_memr1(DUALMEM,32)@15
    u0_m0_wo0_wi0_r0_memr1_ia <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_join1_q);
    u0_m0_wo0_wi0_r0_memr1_aa <= u0_m0_wo0_wi0_r0_wa51_q;
    u0_m0_wo0_wi0_r0_memr1_ab <= u0_m0_wo0_wi0_r0_ra51_resize_b;
    u0_m0_wo0_wi0_r0_memr1_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "DUAL_PORT",
        width_a => 36,
        widthad_a => 8,
        numwords_a => 256,
        width_b => 36,
        widthad_b => 8,
        numwords_b => 256,
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
        address_a => u0_m0_wo0_wi0_r0_memr1_aa,
        data_a => u0_m0_wo0_wi0_r0_memr1_ia,
        wren_a => u0_m0_wo0_wi0_r0_we51_seq_q(0),
        address_b => u0_m0_wo0_wi0_r0_memr1_ab,
        q_b => u0_m0_wo0_wi0_r0_memr1_iq
    );
    u0_m0_wo0_wi0_r0_memr1_q <= u0_m0_wo0_wi0_r0_memr1_iq(35 downto 0);

    -- u0_m0_wo0_wi0_r0_split1(BITSELECT,31)@15
    u0_m0_wo0_wi0_r0_split1_b <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr1_q(11 downto 0));
    u0_m0_wo0_wi0_r0_split1_c <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr1_q(23 downto 12));
    u0_m0_wo0_wi0_r0_split1_d <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr1_q(35 downto 24));

    -- d_u0_m0_wo0_wi0_r0_split1_d_19(DELAY,314)@15 + 4
    d_u0_m0_wo0_wi0_r0_split1_d_19 : dspba_delay
    GENERIC MAP ( width => 12, depth => 4, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_split1_d, xout => d_u0_m0_wo0_wi0_r0_split1_d_19_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_ca51(COUNTER,81)@13
    -- low=0, high=196, step=1, init=0
    u0_m0_wo0_ca51_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_ca51_i <= TO_UNSIGNED(0, 8);
            u0_m0_wo0_ca51_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (u0_m0_wo0_compute_q = "1") THEN
                IF (u0_m0_wo0_ca51_i = TO_UNSIGNED(195, 8)) THEN
                    u0_m0_wo0_ca51_eq <= '1';
                ELSE
                    u0_m0_wo0_ca51_eq <= '0';
                END IF;
                IF (u0_m0_wo0_ca51_eq = '1') THEN
                    u0_m0_wo0_ca51_i <= u0_m0_wo0_ca51_i + 60;
                ELSE
                    u0_m0_wo0_ca51_i <= u0_m0_wo0_ca51_i + 1;
                END IF;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_ca51_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_ca51_i, 8)));

    -- d_u0_m0_wo0_ca51_q_17(DELAY,315)@13 + 4
    d_u0_m0_wo0_ca51_q_17 : dspba_delay
    GENERIC MAP ( width => 8, depth => 4, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_ca51_q, xout => d_u0_m0_wo0_ca51_q_17_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_cm3_lutmem(DUALMEM,258)@17 + 2
    u0_m0_wo0_cm3_lutmem_aa <= d_u0_m0_wo0_ca51_q_17_q;
    u0_m0_wo0_cm3_lutmem_reset0 <= areset;
    u0_m0_wo0_cm3_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 17,
        widthad_a => 8,
        numwords_a => 197,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "REVERB_fir_compiler_ii_0_rtl_core_u0_m0_wo0_cm3_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => '1',
        aclr0 => u0_m0_wo0_cm3_lutmem_reset0,
        clock0 => clk,
        address_a => u0_m0_wo0_cm3_lutmem_aa,
        q_a => u0_m0_wo0_cm3_lutmem_ir
    );
    u0_m0_wo0_cm3_lutmem_r <= u0_m0_wo0_cm3_lutmem_ir(16 downto 0);

    -- u0_m0_wo0_mtree_mult1_48(MULT,140)@19 + 2
    u0_m0_wo0_mtree_mult1_48_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm3_lutmem_r);
    u0_m0_wo0_mtree_mult1_48_b0 <= STD_LOGIC_VECTOR(d_u0_m0_wo0_wi0_r0_split1_d_19_q);
    u0_m0_wo0_mtree_mult1_48_reset <= areset;
    u0_m0_wo0_mtree_mult1_48_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 17,
        lpm_widthb => 12,
        lpm_widthp => 29,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_48_a0,
        datab => u0_m0_wo0_mtree_mult1_48_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_48_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_48_s1
    );
    u0_m0_wo0_mtree_mult1_48_q <= u0_m0_wo0_mtree_mult1_48_s1;

    -- u0_m0_wo0_wi0_r0_join4(BITJOIN,33)@15
    u0_m0_wo0_wi0_r0_join4_q <= u0_m0_wo0_wi0_r0_split4_c & u0_m0_wo0_wi0_r0_split4_b & u0_m0_wo0_wi0_r0_split1_d;

    -- u0_m0_wo0_wi0_r0_memr4(DUALMEM,35)@15
    u0_m0_wo0_wi0_r0_memr4_ia <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_join4_q);
    u0_m0_wo0_wi0_r0_memr4_aa <= u0_m0_wo0_wi0_r0_wa51_q;
    u0_m0_wo0_wi0_r0_memr4_ab <= u0_m0_wo0_wi0_r0_ra51_resize_b;
    u0_m0_wo0_wi0_r0_memr4_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "DUAL_PORT",
        width_a => 36,
        widthad_a => 8,
        numwords_a => 256,
        width_b => 36,
        widthad_b => 8,
        numwords_b => 256,
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
        address_a => u0_m0_wo0_wi0_r0_memr4_aa,
        data_a => u0_m0_wo0_wi0_r0_memr4_ia,
        wren_a => u0_m0_wo0_wi0_r0_we51_seq_q(0),
        address_b => u0_m0_wo0_wi0_r0_memr4_ab,
        q_b => u0_m0_wo0_wi0_r0_memr4_iq
    );
    u0_m0_wo0_wi0_r0_memr4_q <= u0_m0_wo0_wi0_r0_memr4_iq(35 downto 0);

    -- u0_m0_wo0_wi0_r0_split4(BITSELECT,34)@15
    u0_m0_wo0_wi0_r0_split4_b <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr4_q(11 downto 0));
    u0_m0_wo0_wi0_r0_split4_c <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr4_q(23 downto 12));
    u0_m0_wo0_wi0_r0_split4_d <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr4_q(35 downto 24));

    -- u0_m0_wo0_cm4_lutmem(DUALMEM,259)@13 + 2
    u0_m0_wo0_cm4_lutmem_aa <= u0_m0_wo0_ca51_q;
    u0_m0_wo0_cm4_lutmem_reset0 <= areset;
    u0_m0_wo0_cm4_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 17,
        widthad_a => 8,
        numwords_a => 197,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "REVERB_fir_compiler_ii_0_rtl_core_u0_m0_wo0_cm4_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => '1',
        aclr0 => u0_m0_wo0_cm4_lutmem_reset0,
        clock0 => clk,
        address_a => u0_m0_wo0_cm4_lutmem_aa,
        q_a => u0_m0_wo0_cm4_lutmem_ir
    );
    u0_m0_wo0_cm4_lutmem_r <= u0_m0_wo0_cm4_lutmem_ir(16 downto 0);

    -- u0_m0_wo0_mtree_mult1_47(MULT,141)@15 + 2
    u0_m0_wo0_mtree_mult1_47_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm4_lutmem_r);
    u0_m0_wo0_mtree_mult1_47_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split4_b);
    u0_m0_wo0_mtree_mult1_47_reset <= areset;
    u0_m0_wo0_mtree_mult1_47_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 17,
        lpm_widthb => 12,
        lpm_widthp => 29,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_47_a0,
        datab => u0_m0_wo0_mtree_mult1_47_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_47_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_47_s1
    );
    u0_m0_wo0_mtree_mult1_47_q <= u0_m0_wo0_mtree_mult1_47_s1;

    -- u0_m0_wo0_cm5_lutmem(DUALMEM,260)@13 + 2
    u0_m0_wo0_cm5_lutmem_aa <= u0_m0_wo0_ca51_q;
    u0_m0_wo0_cm5_lutmem_reset0 <= areset;
    u0_m0_wo0_cm5_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 17,
        widthad_a => 8,
        numwords_a => 197,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "REVERB_fir_compiler_ii_0_rtl_core_u0_m0_wo0_cm5_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => '1',
        aclr0 => u0_m0_wo0_cm5_lutmem_reset0,
        clock0 => clk,
        address_a => u0_m0_wo0_cm5_lutmem_aa,
        q_a => u0_m0_wo0_cm5_lutmem_ir
    );
    u0_m0_wo0_cm5_lutmem_r <= u0_m0_wo0_cm5_lutmem_ir(16 downto 0);

    -- u0_m0_wo0_mtree_mult1_46(MULT,142)@15 + 2
    u0_m0_wo0_mtree_mult1_46_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm5_lutmem_r);
    u0_m0_wo0_mtree_mult1_46_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split4_c);
    u0_m0_wo0_mtree_mult1_46_reset <= areset;
    u0_m0_wo0_mtree_mult1_46_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 17,
        lpm_widthb => 12,
        lpm_widthp => 29,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_46_a0,
        datab => u0_m0_wo0_mtree_mult1_46_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_46_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_46_s1
    );
    u0_m0_wo0_mtree_mult1_46_q <= u0_m0_wo0_mtree_mult1_46_s1;

    -- u0_m0_wo0_mtree_add0_23(ADD,212)@17 + 1
    u0_m0_wo0_mtree_add0_23_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((29 downto 29 => u0_m0_wo0_mtree_mult1_46_q(28)) & u0_m0_wo0_mtree_mult1_46_q));
    u0_m0_wo0_mtree_add0_23_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((29 downto 29 => u0_m0_wo0_mtree_mult1_47_q(28)) & u0_m0_wo0_mtree_mult1_47_q));
    u0_m0_wo0_mtree_add0_23_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_23_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_23_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_23_a) + SIGNED(u0_m0_wo0_mtree_add0_23_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_23_q <= u0_m0_wo0_mtree_add0_23_o(29 downto 0);

    -- u0_m0_wo0_cm6_lutmem(DUALMEM,261)@13 + 2
    u0_m0_wo0_cm6_lutmem_aa <= u0_m0_wo0_ca51_q;
    u0_m0_wo0_cm6_lutmem_reset0 <= areset;
    u0_m0_wo0_cm6_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 17,
        widthad_a => 8,
        numwords_a => 197,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "REVERB_fir_compiler_ii_0_rtl_core_u0_m0_wo0_cm6_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => '1',
        aclr0 => u0_m0_wo0_cm6_lutmem_reset0,
        clock0 => clk,
        address_a => u0_m0_wo0_cm6_lutmem_aa,
        q_a => u0_m0_wo0_cm6_lutmem_ir
    );
    u0_m0_wo0_cm6_lutmem_r <= u0_m0_wo0_cm6_lutmem_ir(16 downto 0);

    -- u0_m0_wo0_mtree_mult1_45(MULT,143)@15 + 2
    u0_m0_wo0_mtree_mult1_45_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm6_lutmem_r);
    u0_m0_wo0_mtree_mult1_45_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split4_d);
    u0_m0_wo0_mtree_mult1_45_reset <= areset;
    u0_m0_wo0_mtree_mult1_45_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 17,
        lpm_widthb => 12,
        lpm_widthp => 29,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_45_a0,
        datab => u0_m0_wo0_mtree_mult1_45_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_45_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_45_s1
    );
    u0_m0_wo0_mtree_mult1_45_q <= u0_m0_wo0_mtree_mult1_45_s1;

    -- u0_m0_wo0_wi0_r0_join7(BITJOIN,36)@15
    u0_m0_wo0_wi0_r0_join7_q <= u0_m0_wo0_wi0_r0_split7_c & u0_m0_wo0_wi0_r0_split7_b & u0_m0_wo0_wi0_r0_split4_d;

    -- u0_m0_wo0_wi0_r0_memr7(DUALMEM,38)@15
    u0_m0_wo0_wi0_r0_memr7_ia <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_join7_q);
    u0_m0_wo0_wi0_r0_memr7_aa <= u0_m0_wo0_wi0_r0_wa51_q;
    u0_m0_wo0_wi0_r0_memr7_ab <= u0_m0_wo0_wi0_r0_ra51_resize_b;
    u0_m0_wo0_wi0_r0_memr7_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "DUAL_PORT",
        width_a => 36,
        widthad_a => 8,
        numwords_a => 256,
        width_b => 36,
        widthad_b => 8,
        numwords_b => 256,
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
        address_a => u0_m0_wo0_wi0_r0_memr7_aa,
        data_a => u0_m0_wo0_wi0_r0_memr7_ia,
        wren_a => u0_m0_wo0_wi0_r0_we51_seq_q(0),
        address_b => u0_m0_wo0_wi0_r0_memr7_ab,
        q_b => u0_m0_wo0_wi0_r0_memr7_iq
    );
    u0_m0_wo0_wi0_r0_memr7_q <= u0_m0_wo0_wi0_r0_memr7_iq(35 downto 0);

    -- u0_m0_wo0_wi0_r0_split7(BITSELECT,37)@15
    u0_m0_wo0_wi0_r0_split7_b <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr7_q(11 downto 0));
    u0_m0_wo0_wi0_r0_split7_c <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr7_q(23 downto 12));
    u0_m0_wo0_wi0_r0_split7_d <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr7_q(35 downto 24));

    -- u0_m0_wo0_cm7_lutmem(DUALMEM,262)@13 + 2
    u0_m0_wo0_cm7_lutmem_aa <= u0_m0_wo0_ca51_q;
    u0_m0_wo0_cm7_lutmem_reset0 <= areset;
    u0_m0_wo0_cm7_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 17,
        widthad_a => 8,
        numwords_a => 197,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "REVERB_fir_compiler_ii_0_rtl_core_u0_m0_wo0_cm7_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => '1',
        aclr0 => u0_m0_wo0_cm7_lutmem_reset0,
        clock0 => clk,
        address_a => u0_m0_wo0_cm7_lutmem_aa,
        q_a => u0_m0_wo0_cm7_lutmem_ir
    );
    u0_m0_wo0_cm7_lutmem_r <= u0_m0_wo0_cm7_lutmem_ir(16 downto 0);

    -- u0_m0_wo0_mtree_mult1_44(MULT,144)@15 + 2
    u0_m0_wo0_mtree_mult1_44_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm7_lutmem_r);
    u0_m0_wo0_mtree_mult1_44_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split7_b);
    u0_m0_wo0_mtree_mult1_44_reset <= areset;
    u0_m0_wo0_mtree_mult1_44_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 17,
        lpm_widthb => 12,
        lpm_widthp => 29,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_44_a0,
        datab => u0_m0_wo0_mtree_mult1_44_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_44_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_44_s1
    );
    u0_m0_wo0_mtree_mult1_44_q <= u0_m0_wo0_mtree_mult1_44_s1;

    -- u0_m0_wo0_mtree_add0_22(ADD,211)@17 + 1
    u0_m0_wo0_mtree_add0_22_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((29 downto 29 => u0_m0_wo0_mtree_mult1_44_q(28)) & u0_m0_wo0_mtree_mult1_44_q));
    u0_m0_wo0_mtree_add0_22_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((29 downto 29 => u0_m0_wo0_mtree_mult1_45_q(28)) & u0_m0_wo0_mtree_mult1_45_q));
    u0_m0_wo0_mtree_add0_22_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_22_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_22_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_22_a) + SIGNED(u0_m0_wo0_mtree_add0_22_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_22_q <= u0_m0_wo0_mtree_add0_22_o(29 downto 0);

    -- u0_m0_wo0_mtree_add1_11(ADD,226)@18 + 1
    u0_m0_wo0_mtree_add1_11_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((30 downto 30 => u0_m0_wo0_mtree_add0_22_q(29)) & u0_m0_wo0_mtree_add0_22_q));
    u0_m0_wo0_mtree_add1_11_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((30 downto 30 => u0_m0_wo0_mtree_add0_23_q(29)) & u0_m0_wo0_mtree_add0_23_q));
    u0_m0_wo0_mtree_add1_11_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_11_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_11_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_11_a) + SIGNED(u0_m0_wo0_mtree_add1_11_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_11_q <= u0_m0_wo0_mtree_add1_11_o(30 downto 0);

    -- u0_m0_wo0_cm8_lutmem(DUALMEM,263)@13 + 2
    u0_m0_wo0_cm8_lutmem_aa <= u0_m0_wo0_ca51_q;
    u0_m0_wo0_cm8_lutmem_reset0 <= areset;
    u0_m0_wo0_cm8_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 17,
        widthad_a => 8,
        numwords_a => 197,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "REVERB_fir_compiler_ii_0_rtl_core_u0_m0_wo0_cm8_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => '1',
        aclr0 => u0_m0_wo0_cm8_lutmem_reset0,
        clock0 => clk,
        address_a => u0_m0_wo0_cm8_lutmem_aa,
        q_a => u0_m0_wo0_cm8_lutmem_ir
    );
    u0_m0_wo0_cm8_lutmem_r <= u0_m0_wo0_cm8_lutmem_ir(16 downto 0);

    -- u0_m0_wo0_mtree_mult1_43(MULT,145)@15 + 2
    u0_m0_wo0_mtree_mult1_43_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm8_lutmem_r);
    u0_m0_wo0_mtree_mult1_43_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split7_c);
    u0_m0_wo0_mtree_mult1_43_reset <= areset;
    u0_m0_wo0_mtree_mult1_43_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 17,
        lpm_widthb => 12,
        lpm_widthp => 29,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_43_a0,
        datab => u0_m0_wo0_mtree_mult1_43_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_43_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_43_s1
    );
    u0_m0_wo0_mtree_mult1_43_q <= u0_m0_wo0_mtree_mult1_43_s1;

    -- u0_m0_wo0_cm9_lutmem(DUALMEM,264)@13 + 2
    u0_m0_wo0_cm9_lutmem_aa <= u0_m0_wo0_ca51_q;
    u0_m0_wo0_cm9_lutmem_reset0 <= areset;
    u0_m0_wo0_cm9_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 17,
        widthad_a => 8,
        numwords_a => 197,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "REVERB_fir_compiler_ii_0_rtl_core_u0_m0_wo0_cm9_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => '1',
        aclr0 => u0_m0_wo0_cm9_lutmem_reset0,
        clock0 => clk,
        address_a => u0_m0_wo0_cm9_lutmem_aa,
        q_a => u0_m0_wo0_cm9_lutmem_ir
    );
    u0_m0_wo0_cm9_lutmem_r <= u0_m0_wo0_cm9_lutmem_ir(16 downto 0);

    -- u0_m0_wo0_mtree_mult1_42(MULT,146)@15 + 2
    u0_m0_wo0_mtree_mult1_42_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm9_lutmem_r);
    u0_m0_wo0_mtree_mult1_42_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split7_d);
    u0_m0_wo0_mtree_mult1_42_reset <= areset;
    u0_m0_wo0_mtree_mult1_42_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 17,
        lpm_widthb => 12,
        lpm_widthp => 29,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_42_a0,
        datab => u0_m0_wo0_mtree_mult1_42_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_42_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_42_s1
    );
    u0_m0_wo0_mtree_mult1_42_q <= u0_m0_wo0_mtree_mult1_42_s1;

    -- u0_m0_wo0_mtree_add0_21(ADD,210)@17 + 1
    u0_m0_wo0_mtree_add0_21_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((29 downto 29 => u0_m0_wo0_mtree_mult1_42_q(28)) & u0_m0_wo0_mtree_mult1_42_q));
    u0_m0_wo0_mtree_add0_21_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((29 downto 29 => u0_m0_wo0_mtree_mult1_43_q(28)) & u0_m0_wo0_mtree_mult1_43_q));
    u0_m0_wo0_mtree_add0_21_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_21_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_21_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_21_a) + SIGNED(u0_m0_wo0_mtree_add0_21_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_21_q <= u0_m0_wo0_mtree_add0_21_o(29 downto 0);

    -- u0_m0_wo0_wi0_r0_join10(BITJOIN,39)@15
    u0_m0_wo0_wi0_r0_join10_q <= u0_m0_wo0_wi0_r0_split10_c & u0_m0_wo0_wi0_r0_split10_b & u0_m0_wo0_wi0_r0_split7_d;

    -- u0_m0_wo0_wi0_r0_memr10(DUALMEM,41)@15
    u0_m0_wo0_wi0_r0_memr10_ia <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_join10_q);
    u0_m0_wo0_wi0_r0_memr10_aa <= u0_m0_wo0_wi0_r0_wa51_q;
    u0_m0_wo0_wi0_r0_memr10_ab <= u0_m0_wo0_wi0_r0_ra51_resize_b;
    u0_m0_wo0_wi0_r0_memr10_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "DUAL_PORT",
        width_a => 36,
        widthad_a => 8,
        numwords_a => 256,
        width_b => 36,
        widthad_b => 8,
        numwords_b => 256,
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
        address_a => u0_m0_wo0_wi0_r0_memr10_aa,
        data_a => u0_m0_wo0_wi0_r0_memr10_ia,
        wren_a => u0_m0_wo0_wi0_r0_we51_seq_q(0),
        address_b => u0_m0_wo0_wi0_r0_memr10_ab,
        q_b => u0_m0_wo0_wi0_r0_memr10_iq
    );
    u0_m0_wo0_wi0_r0_memr10_q <= u0_m0_wo0_wi0_r0_memr10_iq(35 downto 0);

    -- u0_m0_wo0_wi0_r0_split10(BITSELECT,40)@15
    u0_m0_wo0_wi0_r0_split10_b <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr10_q(11 downto 0));
    u0_m0_wo0_wi0_r0_split10_c <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr10_q(23 downto 12));
    u0_m0_wo0_wi0_r0_split10_d <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr10_q(35 downto 24));

    -- u0_m0_wo0_cm10_lutmem(DUALMEM,265)@13 + 2
    u0_m0_wo0_cm10_lutmem_aa <= u0_m0_wo0_ca51_q;
    u0_m0_wo0_cm10_lutmem_reset0 <= areset;
    u0_m0_wo0_cm10_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 17,
        widthad_a => 8,
        numwords_a => 197,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "REVERB_fir_compiler_ii_0_rtl_core_u0_m0_wo0_cm10_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => '1',
        aclr0 => u0_m0_wo0_cm10_lutmem_reset0,
        clock0 => clk,
        address_a => u0_m0_wo0_cm10_lutmem_aa,
        q_a => u0_m0_wo0_cm10_lutmem_ir
    );
    u0_m0_wo0_cm10_lutmem_r <= u0_m0_wo0_cm10_lutmem_ir(16 downto 0);

    -- u0_m0_wo0_mtree_mult1_41(MULT,147)@15 + 2
    u0_m0_wo0_mtree_mult1_41_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm10_lutmem_r);
    u0_m0_wo0_mtree_mult1_41_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split10_b);
    u0_m0_wo0_mtree_mult1_41_reset <= areset;
    u0_m0_wo0_mtree_mult1_41_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 17,
        lpm_widthb => 12,
        lpm_widthp => 29,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_41_a0,
        datab => u0_m0_wo0_mtree_mult1_41_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_41_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_41_s1
    );
    u0_m0_wo0_mtree_mult1_41_q <= u0_m0_wo0_mtree_mult1_41_s1;

    -- u0_m0_wo0_cm11_lutmem(DUALMEM,266)@13 + 2
    u0_m0_wo0_cm11_lutmem_aa <= u0_m0_wo0_ca51_q;
    u0_m0_wo0_cm11_lutmem_reset0 <= areset;
    u0_m0_wo0_cm11_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 17,
        widthad_a => 8,
        numwords_a => 197,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "REVERB_fir_compiler_ii_0_rtl_core_u0_m0_wo0_cm11_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => '1',
        aclr0 => u0_m0_wo0_cm11_lutmem_reset0,
        clock0 => clk,
        address_a => u0_m0_wo0_cm11_lutmem_aa,
        q_a => u0_m0_wo0_cm11_lutmem_ir
    );
    u0_m0_wo0_cm11_lutmem_r <= u0_m0_wo0_cm11_lutmem_ir(16 downto 0);

    -- u0_m0_wo0_mtree_mult1_40(MULT,148)@15 + 2
    u0_m0_wo0_mtree_mult1_40_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm11_lutmem_r);
    u0_m0_wo0_mtree_mult1_40_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split10_c);
    u0_m0_wo0_mtree_mult1_40_reset <= areset;
    u0_m0_wo0_mtree_mult1_40_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 17,
        lpm_widthb => 12,
        lpm_widthp => 29,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_40_a0,
        datab => u0_m0_wo0_mtree_mult1_40_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_40_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_40_s1
    );
    u0_m0_wo0_mtree_mult1_40_q <= u0_m0_wo0_mtree_mult1_40_s1;

    -- u0_m0_wo0_mtree_add0_20(ADD,209)@17 + 1
    u0_m0_wo0_mtree_add0_20_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((29 downto 29 => u0_m0_wo0_mtree_mult1_40_q(28)) & u0_m0_wo0_mtree_mult1_40_q));
    u0_m0_wo0_mtree_add0_20_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((29 downto 29 => u0_m0_wo0_mtree_mult1_41_q(28)) & u0_m0_wo0_mtree_mult1_41_q));
    u0_m0_wo0_mtree_add0_20_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_20_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_20_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_20_a) + SIGNED(u0_m0_wo0_mtree_add0_20_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_20_q <= u0_m0_wo0_mtree_add0_20_o(29 downto 0);

    -- u0_m0_wo0_mtree_add1_10(ADD,225)@18 + 1
    u0_m0_wo0_mtree_add1_10_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((30 downto 30 => u0_m0_wo0_mtree_add0_20_q(29)) & u0_m0_wo0_mtree_add0_20_q));
    u0_m0_wo0_mtree_add1_10_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((30 downto 30 => u0_m0_wo0_mtree_add0_21_q(29)) & u0_m0_wo0_mtree_add0_21_q));
    u0_m0_wo0_mtree_add1_10_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_10_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_10_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_10_a) + SIGNED(u0_m0_wo0_mtree_add1_10_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_10_q <= u0_m0_wo0_mtree_add1_10_o(30 downto 0);

    -- u0_m0_wo0_mtree_add2_5(ADD,233)@19 + 1
    u0_m0_wo0_mtree_add2_5_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((31 downto 31 => u0_m0_wo0_mtree_add1_10_q(30)) & u0_m0_wo0_mtree_add1_10_q));
    u0_m0_wo0_mtree_add2_5_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((31 downto 31 => u0_m0_wo0_mtree_add1_11_q(30)) & u0_m0_wo0_mtree_add1_11_q));
    u0_m0_wo0_mtree_add2_5_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add2_5_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add2_5_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add2_5_a) + SIGNED(u0_m0_wo0_mtree_add2_5_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add2_5_q <= u0_m0_wo0_mtree_add2_5_o(31 downto 0);

    -- u0_m0_wo0_cm12_lutmem(DUALMEM,267)@13 + 2
    u0_m0_wo0_cm12_lutmem_aa <= u0_m0_wo0_ca51_q;
    u0_m0_wo0_cm12_lutmem_reset0 <= areset;
    u0_m0_wo0_cm12_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 17,
        widthad_a => 8,
        numwords_a => 197,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "REVERB_fir_compiler_ii_0_rtl_core_u0_m0_wo0_cm12_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => '1',
        aclr0 => u0_m0_wo0_cm12_lutmem_reset0,
        clock0 => clk,
        address_a => u0_m0_wo0_cm12_lutmem_aa,
        q_a => u0_m0_wo0_cm12_lutmem_ir
    );
    u0_m0_wo0_cm12_lutmem_r <= u0_m0_wo0_cm12_lutmem_ir(16 downto 0);

    -- u0_m0_wo0_mtree_mult1_39(MULT,149)@15 + 2
    u0_m0_wo0_mtree_mult1_39_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm12_lutmem_r);
    u0_m0_wo0_mtree_mult1_39_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split10_d);
    u0_m0_wo0_mtree_mult1_39_reset <= areset;
    u0_m0_wo0_mtree_mult1_39_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 17,
        lpm_widthb => 12,
        lpm_widthp => 29,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_39_a0,
        datab => u0_m0_wo0_mtree_mult1_39_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_39_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_39_s1
    );
    u0_m0_wo0_mtree_mult1_39_q <= u0_m0_wo0_mtree_mult1_39_s1;

    -- u0_m0_wo0_wi0_r0_join13(BITJOIN,42)@15
    u0_m0_wo0_wi0_r0_join13_q <= u0_m0_wo0_wi0_r0_split13_c & u0_m0_wo0_wi0_r0_split13_b & u0_m0_wo0_wi0_r0_split10_d;

    -- u0_m0_wo0_wi0_r0_memr13(DUALMEM,44)@15
    u0_m0_wo0_wi0_r0_memr13_ia <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_join13_q);
    u0_m0_wo0_wi0_r0_memr13_aa <= u0_m0_wo0_wi0_r0_wa51_q;
    u0_m0_wo0_wi0_r0_memr13_ab <= u0_m0_wo0_wi0_r0_ra51_resize_b;
    u0_m0_wo0_wi0_r0_memr13_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "DUAL_PORT",
        width_a => 36,
        widthad_a => 8,
        numwords_a => 256,
        width_b => 36,
        widthad_b => 8,
        numwords_b => 256,
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
        address_a => u0_m0_wo0_wi0_r0_memr13_aa,
        data_a => u0_m0_wo0_wi0_r0_memr13_ia,
        wren_a => u0_m0_wo0_wi0_r0_we51_seq_q(0),
        address_b => u0_m0_wo0_wi0_r0_memr13_ab,
        q_b => u0_m0_wo0_wi0_r0_memr13_iq
    );
    u0_m0_wo0_wi0_r0_memr13_q <= u0_m0_wo0_wi0_r0_memr13_iq(35 downto 0);

    -- u0_m0_wo0_wi0_r0_split13(BITSELECT,43)@15
    u0_m0_wo0_wi0_r0_split13_b <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr13_q(11 downto 0));
    u0_m0_wo0_wi0_r0_split13_c <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr13_q(23 downto 12));
    u0_m0_wo0_wi0_r0_split13_d <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr13_q(35 downto 24));

    -- u0_m0_wo0_cm13_lutmem(DUALMEM,268)@13 + 2
    u0_m0_wo0_cm13_lutmem_aa <= u0_m0_wo0_ca51_q;
    u0_m0_wo0_cm13_lutmem_reset0 <= areset;
    u0_m0_wo0_cm13_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 17,
        widthad_a => 8,
        numwords_a => 197,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "REVERB_fir_compiler_ii_0_rtl_core_u0_m0_wo0_cm13_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => '1',
        aclr0 => u0_m0_wo0_cm13_lutmem_reset0,
        clock0 => clk,
        address_a => u0_m0_wo0_cm13_lutmem_aa,
        q_a => u0_m0_wo0_cm13_lutmem_ir
    );
    u0_m0_wo0_cm13_lutmem_r <= u0_m0_wo0_cm13_lutmem_ir(16 downto 0);

    -- u0_m0_wo0_mtree_mult1_38(MULT,150)@15 + 2
    u0_m0_wo0_mtree_mult1_38_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm13_lutmem_r);
    u0_m0_wo0_mtree_mult1_38_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split13_b);
    u0_m0_wo0_mtree_mult1_38_reset <= areset;
    u0_m0_wo0_mtree_mult1_38_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 17,
        lpm_widthb => 12,
        lpm_widthp => 29,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_38_a0,
        datab => u0_m0_wo0_mtree_mult1_38_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_38_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_38_s1
    );
    u0_m0_wo0_mtree_mult1_38_q <= u0_m0_wo0_mtree_mult1_38_s1;

    -- u0_m0_wo0_mtree_add0_19(ADD,208)@17 + 1
    u0_m0_wo0_mtree_add0_19_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((29 downto 29 => u0_m0_wo0_mtree_mult1_38_q(28)) & u0_m0_wo0_mtree_mult1_38_q));
    u0_m0_wo0_mtree_add0_19_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((29 downto 29 => u0_m0_wo0_mtree_mult1_39_q(28)) & u0_m0_wo0_mtree_mult1_39_q));
    u0_m0_wo0_mtree_add0_19_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_19_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_19_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_19_a) + SIGNED(u0_m0_wo0_mtree_add0_19_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_19_q <= u0_m0_wo0_mtree_add0_19_o(29 downto 0);

    -- u0_m0_wo0_cm14_lutmem(DUALMEM,269)@13 + 2
    u0_m0_wo0_cm14_lutmem_aa <= u0_m0_wo0_ca51_q;
    u0_m0_wo0_cm14_lutmem_reset0 <= areset;
    u0_m0_wo0_cm14_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 17,
        widthad_a => 8,
        numwords_a => 197,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "REVERB_fir_compiler_ii_0_rtl_core_u0_m0_wo0_cm14_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => '1',
        aclr0 => u0_m0_wo0_cm14_lutmem_reset0,
        clock0 => clk,
        address_a => u0_m0_wo0_cm14_lutmem_aa,
        q_a => u0_m0_wo0_cm14_lutmem_ir
    );
    u0_m0_wo0_cm14_lutmem_r <= u0_m0_wo0_cm14_lutmem_ir(16 downto 0);

    -- u0_m0_wo0_mtree_mult1_37(MULT,151)@15 + 2
    u0_m0_wo0_mtree_mult1_37_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm14_lutmem_r);
    u0_m0_wo0_mtree_mult1_37_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split13_c);
    u0_m0_wo0_mtree_mult1_37_reset <= areset;
    u0_m0_wo0_mtree_mult1_37_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 17,
        lpm_widthb => 12,
        lpm_widthp => 29,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_37_a0,
        datab => u0_m0_wo0_mtree_mult1_37_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_37_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_37_s1
    );
    u0_m0_wo0_mtree_mult1_37_q <= u0_m0_wo0_mtree_mult1_37_s1;

    -- u0_m0_wo0_cm15_lutmem(DUALMEM,270)@13 + 2
    u0_m0_wo0_cm15_lutmem_aa <= u0_m0_wo0_ca51_q;
    u0_m0_wo0_cm15_lutmem_reset0 <= areset;
    u0_m0_wo0_cm15_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 17,
        widthad_a => 8,
        numwords_a => 197,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "REVERB_fir_compiler_ii_0_rtl_core_u0_m0_wo0_cm15_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => '1',
        aclr0 => u0_m0_wo0_cm15_lutmem_reset0,
        clock0 => clk,
        address_a => u0_m0_wo0_cm15_lutmem_aa,
        q_a => u0_m0_wo0_cm15_lutmem_ir
    );
    u0_m0_wo0_cm15_lutmem_r <= u0_m0_wo0_cm15_lutmem_ir(16 downto 0);

    -- u0_m0_wo0_mtree_mult1_36(MULT,152)@15 + 2
    u0_m0_wo0_mtree_mult1_36_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm15_lutmem_r);
    u0_m0_wo0_mtree_mult1_36_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split13_d);
    u0_m0_wo0_mtree_mult1_36_reset <= areset;
    u0_m0_wo0_mtree_mult1_36_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 17,
        lpm_widthb => 12,
        lpm_widthp => 29,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_36_a0,
        datab => u0_m0_wo0_mtree_mult1_36_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_36_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_36_s1
    );
    u0_m0_wo0_mtree_mult1_36_q <= u0_m0_wo0_mtree_mult1_36_s1;

    -- u0_m0_wo0_mtree_add0_18(ADD,207)@17 + 1
    u0_m0_wo0_mtree_add0_18_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((29 downto 29 => u0_m0_wo0_mtree_mult1_36_q(28)) & u0_m0_wo0_mtree_mult1_36_q));
    u0_m0_wo0_mtree_add0_18_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((29 downto 29 => u0_m0_wo0_mtree_mult1_37_q(28)) & u0_m0_wo0_mtree_mult1_37_q));
    u0_m0_wo0_mtree_add0_18_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_18_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_18_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_18_a) + SIGNED(u0_m0_wo0_mtree_add0_18_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_18_q <= u0_m0_wo0_mtree_add0_18_o(29 downto 0);

    -- u0_m0_wo0_mtree_add1_9(ADD,224)@18 + 1
    u0_m0_wo0_mtree_add1_9_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((30 downto 30 => u0_m0_wo0_mtree_add0_18_q(29)) & u0_m0_wo0_mtree_add0_18_q));
    u0_m0_wo0_mtree_add1_9_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((30 downto 30 => u0_m0_wo0_mtree_add0_19_q(29)) & u0_m0_wo0_mtree_add0_19_q));
    u0_m0_wo0_mtree_add1_9_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_9_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_9_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_9_a) + SIGNED(u0_m0_wo0_mtree_add1_9_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_9_q <= u0_m0_wo0_mtree_add1_9_o(30 downto 0);

    -- u0_m0_wo0_wi0_r0_join16(BITJOIN,45)@15
    u0_m0_wo0_wi0_r0_join16_q <= u0_m0_wo0_wi0_r0_split16_c & u0_m0_wo0_wi0_r0_split16_b & u0_m0_wo0_wi0_r0_split13_d;

    -- u0_m0_wo0_wi0_r0_memr16(DUALMEM,47)@15
    u0_m0_wo0_wi0_r0_memr16_ia <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_join16_q);
    u0_m0_wo0_wi0_r0_memr16_aa <= u0_m0_wo0_wi0_r0_wa51_q;
    u0_m0_wo0_wi0_r0_memr16_ab <= u0_m0_wo0_wi0_r0_ra51_resize_b;
    u0_m0_wo0_wi0_r0_memr16_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "DUAL_PORT",
        width_a => 36,
        widthad_a => 8,
        numwords_a => 256,
        width_b => 36,
        widthad_b => 8,
        numwords_b => 256,
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
        address_a => u0_m0_wo0_wi0_r0_memr16_aa,
        data_a => u0_m0_wo0_wi0_r0_memr16_ia,
        wren_a => u0_m0_wo0_wi0_r0_we51_seq_q(0),
        address_b => u0_m0_wo0_wi0_r0_memr16_ab,
        q_b => u0_m0_wo0_wi0_r0_memr16_iq
    );
    u0_m0_wo0_wi0_r0_memr16_q <= u0_m0_wo0_wi0_r0_memr16_iq(35 downto 0);

    -- u0_m0_wo0_wi0_r0_split16(BITSELECT,46)@15
    u0_m0_wo0_wi0_r0_split16_b <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr16_q(11 downto 0));
    u0_m0_wo0_wi0_r0_split16_c <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr16_q(23 downto 12));
    u0_m0_wo0_wi0_r0_split16_d <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr16_q(35 downto 24));

    -- u0_m0_wo0_cm16_lutmem(DUALMEM,271)@13 + 2
    u0_m0_wo0_cm16_lutmem_aa <= u0_m0_wo0_ca51_q;
    u0_m0_wo0_cm16_lutmem_reset0 <= areset;
    u0_m0_wo0_cm16_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 17,
        widthad_a => 8,
        numwords_a => 197,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "REVERB_fir_compiler_ii_0_rtl_core_u0_m0_wo0_cm16_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => '1',
        aclr0 => u0_m0_wo0_cm16_lutmem_reset0,
        clock0 => clk,
        address_a => u0_m0_wo0_cm16_lutmem_aa,
        q_a => u0_m0_wo0_cm16_lutmem_ir
    );
    u0_m0_wo0_cm16_lutmem_r <= u0_m0_wo0_cm16_lutmem_ir(16 downto 0);

    -- u0_m0_wo0_mtree_mult1_35(MULT,153)@15 + 2
    u0_m0_wo0_mtree_mult1_35_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm16_lutmem_r);
    u0_m0_wo0_mtree_mult1_35_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split16_b);
    u0_m0_wo0_mtree_mult1_35_reset <= areset;
    u0_m0_wo0_mtree_mult1_35_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 17,
        lpm_widthb => 12,
        lpm_widthp => 29,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_35_a0,
        datab => u0_m0_wo0_mtree_mult1_35_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_35_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_35_s1
    );
    u0_m0_wo0_mtree_mult1_35_q <= u0_m0_wo0_mtree_mult1_35_s1;

    -- u0_m0_wo0_cm17_lutmem(DUALMEM,272)@13 + 2
    u0_m0_wo0_cm17_lutmem_aa <= u0_m0_wo0_ca51_q;
    u0_m0_wo0_cm17_lutmem_reset0 <= areset;
    u0_m0_wo0_cm17_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 17,
        widthad_a => 8,
        numwords_a => 197,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "REVERB_fir_compiler_ii_0_rtl_core_u0_m0_wo0_cm17_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => '1',
        aclr0 => u0_m0_wo0_cm17_lutmem_reset0,
        clock0 => clk,
        address_a => u0_m0_wo0_cm17_lutmem_aa,
        q_a => u0_m0_wo0_cm17_lutmem_ir
    );
    u0_m0_wo0_cm17_lutmem_r <= u0_m0_wo0_cm17_lutmem_ir(16 downto 0);

    -- u0_m0_wo0_mtree_mult1_34(MULT,154)@15 + 2
    u0_m0_wo0_mtree_mult1_34_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm17_lutmem_r);
    u0_m0_wo0_mtree_mult1_34_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split16_c);
    u0_m0_wo0_mtree_mult1_34_reset <= areset;
    u0_m0_wo0_mtree_mult1_34_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 17,
        lpm_widthb => 12,
        lpm_widthp => 29,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_34_a0,
        datab => u0_m0_wo0_mtree_mult1_34_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_34_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_34_s1
    );
    u0_m0_wo0_mtree_mult1_34_q <= u0_m0_wo0_mtree_mult1_34_s1;

    -- u0_m0_wo0_mtree_add0_17(ADD,206)@17 + 1
    u0_m0_wo0_mtree_add0_17_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((29 downto 29 => u0_m0_wo0_mtree_mult1_34_q(28)) & u0_m0_wo0_mtree_mult1_34_q));
    u0_m0_wo0_mtree_add0_17_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((29 downto 29 => u0_m0_wo0_mtree_mult1_35_q(28)) & u0_m0_wo0_mtree_mult1_35_q));
    u0_m0_wo0_mtree_add0_17_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_17_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_17_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_17_a) + SIGNED(u0_m0_wo0_mtree_add0_17_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_17_q <= u0_m0_wo0_mtree_add0_17_o(29 downto 0);

    -- u0_m0_wo0_cm18_lutmem(DUALMEM,273)@13 + 2
    u0_m0_wo0_cm18_lutmem_aa <= u0_m0_wo0_ca51_q;
    u0_m0_wo0_cm18_lutmem_reset0 <= areset;
    u0_m0_wo0_cm18_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 17,
        widthad_a => 8,
        numwords_a => 197,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "REVERB_fir_compiler_ii_0_rtl_core_u0_m0_wo0_cm18_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => '1',
        aclr0 => u0_m0_wo0_cm18_lutmem_reset0,
        clock0 => clk,
        address_a => u0_m0_wo0_cm18_lutmem_aa,
        q_a => u0_m0_wo0_cm18_lutmem_ir
    );
    u0_m0_wo0_cm18_lutmem_r <= u0_m0_wo0_cm18_lutmem_ir(16 downto 0);

    -- u0_m0_wo0_mtree_mult1_33(MULT,155)@15 + 2
    u0_m0_wo0_mtree_mult1_33_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm18_lutmem_r);
    u0_m0_wo0_mtree_mult1_33_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split16_d);
    u0_m0_wo0_mtree_mult1_33_reset <= areset;
    u0_m0_wo0_mtree_mult1_33_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 17,
        lpm_widthb => 12,
        lpm_widthp => 29,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_33_a0,
        datab => u0_m0_wo0_mtree_mult1_33_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_33_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_33_s1
    );
    u0_m0_wo0_mtree_mult1_33_q <= u0_m0_wo0_mtree_mult1_33_s1;

    -- u0_m0_wo0_wi0_r0_join19(BITJOIN,48)@15
    u0_m0_wo0_wi0_r0_join19_q <= u0_m0_wo0_wi0_r0_split19_c & u0_m0_wo0_wi0_r0_split19_b & u0_m0_wo0_wi0_r0_split16_d;

    -- u0_m0_wo0_wi0_r0_memr19(DUALMEM,50)@15
    u0_m0_wo0_wi0_r0_memr19_ia <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_join19_q);
    u0_m0_wo0_wi0_r0_memr19_aa <= u0_m0_wo0_wi0_r0_wa51_q;
    u0_m0_wo0_wi0_r0_memr19_ab <= u0_m0_wo0_wi0_r0_ra51_resize_b;
    u0_m0_wo0_wi0_r0_memr19_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "DUAL_PORT",
        width_a => 36,
        widthad_a => 8,
        numwords_a => 256,
        width_b => 36,
        widthad_b => 8,
        numwords_b => 256,
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
        address_a => u0_m0_wo0_wi0_r0_memr19_aa,
        data_a => u0_m0_wo0_wi0_r0_memr19_ia,
        wren_a => u0_m0_wo0_wi0_r0_we51_seq_q(0),
        address_b => u0_m0_wo0_wi0_r0_memr19_ab,
        q_b => u0_m0_wo0_wi0_r0_memr19_iq
    );
    u0_m0_wo0_wi0_r0_memr19_q <= u0_m0_wo0_wi0_r0_memr19_iq(35 downto 0);

    -- u0_m0_wo0_wi0_r0_split19(BITSELECT,49)@15
    u0_m0_wo0_wi0_r0_split19_b <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr19_q(11 downto 0));
    u0_m0_wo0_wi0_r0_split19_c <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr19_q(23 downto 12));
    u0_m0_wo0_wi0_r0_split19_d <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr19_q(35 downto 24));

    -- u0_m0_wo0_cm19_lutmem(DUALMEM,274)@13 + 2
    u0_m0_wo0_cm19_lutmem_aa <= u0_m0_wo0_ca51_q;
    u0_m0_wo0_cm19_lutmem_reset0 <= areset;
    u0_m0_wo0_cm19_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 17,
        widthad_a => 8,
        numwords_a => 197,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "REVERB_fir_compiler_ii_0_rtl_core_u0_m0_wo0_cm19_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => '1',
        aclr0 => u0_m0_wo0_cm19_lutmem_reset0,
        clock0 => clk,
        address_a => u0_m0_wo0_cm19_lutmem_aa,
        q_a => u0_m0_wo0_cm19_lutmem_ir
    );
    u0_m0_wo0_cm19_lutmem_r <= u0_m0_wo0_cm19_lutmem_ir(16 downto 0);

    -- u0_m0_wo0_mtree_mult1_32(MULT,156)@15 + 2
    u0_m0_wo0_mtree_mult1_32_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm19_lutmem_r);
    u0_m0_wo0_mtree_mult1_32_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split19_b);
    u0_m0_wo0_mtree_mult1_32_reset <= areset;
    u0_m0_wo0_mtree_mult1_32_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 17,
        lpm_widthb => 12,
        lpm_widthp => 29,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_32_a0,
        datab => u0_m0_wo0_mtree_mult1_32_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_32_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_32_s1
    );
    u0_m0_wo0_mtree_mult1_32_q <= u0_m0_wo0_mtree_mult1_32_s1;

    -- u0_m0_wo0_mtree_add0_16(ADD,205)@17 + 1
    u0_m0_wo0_mtree_add0_16_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((29 downto 29 => u0_m0_wo0_mtree_mult1_32_q(28)) & u0_m0_wo0_mtree_mult1_32_q));
    u0_m0_wo0_mtree_add0_16_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((29 downto 29 => u0_m0_wo0_mtree_mult1_33_q(28)) & u0_m0_wo0_mtree_mult1_33_q));
    u0_m0_wo0_mtree_add0_16_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_16_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_16_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_16_a) + SIGNED(u0_m0_wo0_mtree_add0_16_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_16_q <= u0_m0_wo0_mtree_add0_16_o(29 downto 0);

    -- u0_m0_wo0_mtree_add1_8(ADD,223)@18 + 1
    u0_m0_wo0_mtree_add1_8_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((30 downto 30 => u0_m0_wo0_mtree_add0_16_q(29)) & u0_m0_wo0_mtree_add0_16_q));
    u0_m0_wo0_mtree_add1_8_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((30 downto 30 => u0_m0_wo0_mtree_add0_17_q(29)) & u0_m0_wo0_mtree_add0_17_q));
    u0_m0_wo0_mtree_add1_8_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_8_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_8_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_8_a) + SIGNED(u0_m0_wo0_mtree_add1_8_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_8_q <= u0_m0_wo0_mtree_add1_8_o(30 downto 0);

    -- u0_m0_wo0_mtree_add2_4(ADD,232)@19 + 1
    u0_m0_wo0_mtree_add2_4_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((31 downto 31 => u0_m0_wo0_mtree_add1_8_q(30)) & u0_m0_wo0_mtree_add1_8_q));
    u0_m0_wo0_mtree_add2_4_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((31 downto 31 => u0_m0_wo0_mtree_add1_9_q(30)) & u0_m0_wo0_mtree_add1_9_q));
    u0_m0_wo0_mtree_add2_4_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add2_4_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add2_4_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add2_4_a) + SIGNED(u0_m0_wo0_mtree_add2_4_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add2_4_q <= u0_m0_wo0_mtree_add2_4_o(31 downto 0);

    -- u0_m0_wo0_mtree_add3_2(ADD,236)@20 + 1
    u0_m0_wo0_mtree_add3_2_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((32 downto 32 => u0_m0_wo0_mtree_add2_4_q(31)) & u0_m0_wo0_mtree_add2_4_q));
    u0_m0_wo0_mtree_add3_2_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((32 downto 32 => u0_m0_wo0_mtree_add2_5_q(31)) & u0_m0_wo0_mtree_add2_5_q));
    u0_m0_wo0_mtree_add3_2_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add3_2_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add3_2_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add3_2_a) + SIGNED(u0_m0_wo0_mtree_add3_2_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add3_2_q <= u0_m0_wo0_mtree_add3_2_o(32 downto 0);

    -- u0_m0_wo0_mtree_add4_1(ADD,238)@21 + 1
    u0_m0_wo0_mtree_add4_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 33 => u0_m0_wo0_mtree_add3_2_q(32)) & u0_m0_wo0_mtree_add3_2_q));
    u0_m0_wo0_mtree_add4_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 29 => u0_m0_wo0_mtree_mult1_48_q(28)) & u0_m0_wo0_mtree_mult1_48_q));
    u0_m0_wo0_mtree_add4_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add4_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add4_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add4_1_a) + SIGNED(u0_m0_wo0_mtree_add4_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add4_1_q <= u0_m0_wo0_mtree_add4_1_o(33 downto 0);

    -- u0_m0_wo0_cm20_lutmem(DUALMEM,275)@13 + 2
    u0_m0_wo0_cm20_lutmem_aa <= u0_m0_wo0_ca51_q;
    u0_m0_wo0_cm20_lutmem_reset0 <= areset;
    u0_m0_wo0_cm20_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 17,
        widthad_a => 8,
        numwords_a => 197,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "REVERB_fir_compiler_ii_0_rtl_core_u0_m0_wo0_cm20_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => '1',
        aclr0 => u0_m0_wo0_cm20_lutmem_reset0,
        clock0 => clk,
        address_a => u0_m0_wo0_cm20_lutmem_aa,
        q_a => u0_m0_wo0_cm20_lutmem_ir
    );
    u0_m0_wo0_cm20_lutmem_r <= u0_m0_wo0_cm20_lutmem_ir(16 downto 0);

    -- u0_m0_wo0_mtree_mult1_31(MULT,157)@15 + 2
    u0_m0_wo0_mtree_mult1_31_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm20_lutmem_r);
    u0_m0_wo0_mtree_mult1_31_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split19_c);
    u0_m0_wo0_mtree_mult1_31_reset <= areset;
    u0_m0_wo0_mtree_mult1_31_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 17,
        lpm_widthb => 12,
        lpm_widthp => 29,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_31_a0,
        datab => u0_m0_wo0_mtree_mult1_31_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_31_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_31_s1
    );
    u0_m0_wo0_mtree_mult1_31_q <= u0_m0_wo0_mtree_mult1_31_s1;

    -- u0_m0_wo0_cm21_lutmem(DUALMEM,276)@13 + 2
    u0_m0_wo0_cm21_lutmem_aa <= u0_m0_wo0_ca51_q;
    u0_m0_wo0_cm21_lutmem_reset0 <= areset;
    u0_m0_wo0_cm21_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 17,
        widthad_a => 8,
        numwords_a => 197,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "REVERB_fir_compiler_ii_0_rtl_core_u0_m0_wo0_cm21_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => '1',
        aclr0 => u0_m0_wo0_cm21_lutmem_reset0,
        clock0 => clk,
        address_a => u0_m0_wo0_cm21_lutmem_aa,
        q_a => u0_m0_wo0_cm21_lutmem_ir
    );
    u0_m0_wo0_cm21_lutmem_r <= u0_m0_wo0_cm21_lutmem_ir(16 downto 0);

    -- u0_m0_wo0_mtree_mult1_30(MULT,158)@15 + 2
    u0_m0_wo0_mtree_mult1_30_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm21_lutmem_r);
    u0_m0_wo0_mtree_mult1_30_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split19_d);
    u0_m0_wo0_mtree_mult1_30_reset <= areset;
    u0_m0_wo0_mtree_mult1_30_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 17,
        lpm_widthb => 12,
        lpm_widthp => 29,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_30_a0,
        datab => u0_m0_wo0_mtree_mult1_30_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_30_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_30_s1
    );
    u0_m0_wo0_mtree_mult1_30_q <= u0_m0_wo0_mtree_mult1_30_s1;

    -- u0_m0_wo0_mtree_add0_15(ADD,204)@17 + 1
    u0_m0_wo0_mtree_add0_15_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((29 downto 29 => u0_m0_wo0_mtree_mult1_30_q(28)) & u0_m0_wo0_mtree_mult1_30_q));
    u0_m0_wo0_mtree_add0_15_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((29 downto 29 => u0_m0_wo0_mtree_mult1_31_q(28)) & u0_m0_wo0_mtree_mult1_31_q));
    u0_m0_wo0_mtree_add0_15_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_15_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_15_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_15_a) + SIGNED(u0_m0_wo0_mtree_add0_15_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_15_q <= u0_m0_wo0_mtree_add0_15_o(29 downto 0);

    -- u0_m0_wo0_wi0_r0_join22(BITJOIN,51)@15
    u0_m0_wo0_wi0_r0_join22_q <= u0_m0_wo0_wi0_r0_split22_c & u0_m0_wo0_wi0_r0_split22_b & u0_m0_wo0_wi0_r0_split19_d;

    -- u0_m0_wo0_wi0_r0_memr22(DUALMEM,53)@15
    u0_m0_wo0_wi0_r0_memr22_ia <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_join22_q);
    u0_m0_wo0_wi0_r0_memr22_aa <= u0_m0_wo0_wi0_r0_wa51_q;
    u0_m0_wo0_wi0_r0_memr22_ab <= u0_m0_wo0_wi0_r0_ra51_resize_b;
    u0_m0_wo0_wi0_r0_memr22_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "DUAL_PORT",
        width_a => 36,
        widthad_a => 8,
        numwords_a => 256,
        width_b => 36,
        widthad_b => 8,
        numwords_b => 256,
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
        address_a => u0_m0_wo0_wi0_r0_memr22_aa,
        data_a => u0_m0_wo0_wi0_r0_memr22_ia,
        wren_a => u0_m0_wo0_wi0_r0_we51_seq_q(0),
        address_b => u0_m0_wo0_wi0_r0_memr22_ab,
        q_b => u0_m0_wo0_wi0_r0_memr22_iq
    );
    u0_m0_wo0_wi0_r0_memr22_q <= u0_m0_wo0_wi0_r0_memr22_iq(35 downto 0);

    -- u0_m0_wo0_wi0_r0_split22(BITSELECT,52)@15
    u0_m0_wo0_wi0_r0_split22_b <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr22_q(11 downto 0));
    u0_m0_wo0_wi0_r0_split22_c <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr22_q(23 downto 12));
    u0_m0_wo0_wi0_r0_split22_d <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr22_q(35 downto 24));

    -- u0_m0_wo0_cm22_lutmem(DUALMEM,277)@13 + 2
    u0_m0_wo0_cm22_lutmem_aa <= u0_m0_wo0_ca51_q;
    u0_m0_wo0_cm22_lutmem_reset0 <= areset;
    u0_m0_wo0_cm22_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 17,
        widthad_a => 8,
        numwords_a => 197,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "REVERB_fir_compiler_ii_0_rtl_core_u0_m0_wo0_cm22_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => '1',
        aclr0 => u0_m0_wo0_cm22_lutmem_reset0,
        clock0 => clk,
        address_a => u0_m0_wo0_cm22_lutmem_aa,
        q_a => u0_m0_wo0_cm22_lutmem_ir
    );
    u0_m0_wo0_cm22_lutmem_r <= u0_m0_wo0_cm22_lutmem_ir(16 downto 0);

    -- u0_m0_wo0_mtree_mult1_29(MULT,159)@15 + 2
    u0_m0_wo0_mtree_mult1_29_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm22_lutmem_r);
    u0_m0_wo0_mtree_mult1_29_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split22_b);
    u0_m0_wo0_mtree_mult1_29_reset <= areset;
    u0_m0_wo0_mtree_mult1_29_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 17,
        lpm_widthb => 12,
        lpm_widthp => 29,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_29_a0,
        datab => u0_m0_wo0_mtree_mult1_29_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_29_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_29_s1
    );
    u0_m0_wo0_mtree_mult1_29_q <= u0_m0_wo0_mtree_mult1_29_s1;

    -- u0_m0_wo0_cm23_lutmem(DUALMEM,278)@13 + 2
    u0_m0_wo0_cm23_lutmem_aa <= u0_m0_wo0_ca51_q;
    u0_m0_wo0_cm23_lutmem_reset0 <= areset;
    u0_m0_wo0_cm23_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 17,
        widthad_a => 8,
        numwords_a => 197,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "REVERB_fir_compiler_ii_0_rtl_core_u0_m0_wo0_cm23_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => '1',
        aclr0 => u0_m0_wo0_cm23_lutmem_reset0,
        clock0 => clk,
        address_a => u0_m0_wo0_cm23_lutmem_aa,
        q_a => u0_m0_wo0_cm23_lutmem_ir
    );
    u0_m0_wo0_cm23_lutmem_r <= u0_m0_wo0_cm23_lutmem_ir(16 downto 0);

    -- u0_m0_wo0_mtree_mult1_28(MULT,160)@15 + 2
    u0_m0_wo0_mtree_mult1_28_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm23_lutmem_r);
    u0_m0_wo0_mtree_mult1_28_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split22_c);
    u0_m0_wo0_mtree_mult1_28_reset <= areset;
    u0_m0_wo0_mtree_mult1_28_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 17,
        lpm_widthb => 12,
        lpm_widthp => 29,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_28_a0,
        datab => u0_m0_wo0_mtree_mult1_28_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_28_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_28_s1
    );
    u0_m0_wo0_mtree_mult1_28_q <= u0_m0_wo0_mtree_mult1_28_s1;

    -- u0_m0_wo0_mtree_add0_14(ADD,203)@17 + 1
    u0_m0_wo0_mtree_add0_14_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((29 downto 29 => u0_m0_wo0_mtree_mult1_28_q(28)) & u0_m0_wo0_mtree_mult1_28_q));
    u0_m0_wo0_mtree_add0_14_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((29 downto 29 => u0_m0_wo0_mtree_mult1_29_q(28)) & u0_m0_wo0_mtree_mult1_29_q));
    u0_m0_wo0_mtree_add0_14_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_14_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_14_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_14_a) + SIGNED(u0_m0_wo0_mtree_add0_14_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_14_q <= u0_m0_wo0_mtree_add0_14_o(29 downto 0);

    -- u0_m0_wo0_mtree_add1_7(ADD,222)@18 + 1
    u0_m0_wo0_mtree_add1_7_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((30 downto 30 => u0_m0_wo0_mtree_add0_14_q(29)) & u0_m0_wo0_mtree_add0_14_q));
    u0_m0_wo0_mtree_add1_7_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((30 downto 30 => u0_m0_wo0_mtree_add0_15_q(29)) & u0_m0_wo0_mtree_add0_15_q));
    u0_m0_wo0_mtree_add1_7_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_7_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_7_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_7_a) + SIGNED(u0_m0_wo0_mtree_add1_7_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_7_q <= u0_m0_wo0_mtree_add1_7_o(30 downto 0);

    -- u0_m0_wo0_cm24_lutmem(DUALMEM,279)@13 + 2
    u0_m0_wo0_cm24_lutmem_aa <= u0_m0_wo0_ca51_q;
    u0_m0_wo0_cm24_lutmem_reset0 <= areset;
    u0_m0_wo0_cm24_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 17,
        widthad_a => 8,
        numwords_a => 197,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "REVERB_fir_compiler_ii_0_rtl_core_u0_m0_wo0_cm24_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => '1',
        aclr0 => u0_m0_wo0_cm24_lutmem_reset0,
        clock0 => clk,
        address_a => u0_m0_wo0_cm24_lutmem_aa,
        q_a => u0_m0_wo0_cm24_lutmem_ir
    );
    u0_m0_wo0_cm24_lutmem_r <= u0_m0_wo0_cm24_lutmem_ir(16 downto 0);

    -- u0_m0_wo0_mtree_mult1_27(MULT,161)@15 + 2
    u0_m0_wo0_mtree_mult1_27_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm24_lutmem_r);
    u0_m0_wo0_mtree_mult1_27_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split22_d);
    u0_m0_wo0_mtree_mult1_27_reset <= areset;
    u0_m0_wo0_mtree_mult1_27_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 17,
        lpm_widthb => 12,
        lpm_widthp => 29,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_27_a0,
        datab => u0_m0_wo0_mtree_mult1_27_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_27_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_27_s1
    );
    u0_m0_wo0_mtree_mult1_27_q <= u0_m0_wo0_mtree_mult1_27_s1;

    -- u0_m0_wo0_wi0_r0_join25(BITJOIN,54)@15
    u0_m0_wo0_wi0_r0_join25_q <= u0_m0_wo0_wi0_r0_split25_c & u0_m0_wo0_wi0_r0_split25_b & u0_m0_wo0_wi0_r0_split22_d;

    -- u0_m0_wo0_wi0_r0_memr25(DUALMEM,56)@15
    u0_m0_wo0_wi0_r0_memr25_ia <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_join25_q);
    u0_m0_wo0_wi0_r0_memr25_aa <= u0_m0_wo0_wi0_r0_wa51_q;
    u0_m0_wo0_wi0_r0_memr25_ab <= u0_m0_wo0_wi0_r0_ra51_resize_b;
    u0_m0_wo0_wi0_r0_memr25_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "DUAL_PORT",
        width_a => 36,
        widthad_a => 8,
        numwords_a => 256,
        width_b => 36,
        widthad_b => 8,
        numwords_b => 256,
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
        address_a => u0_m0_wo0_wi0_r0_memr25_aa,
        data_a => u0_m0_wo0_wi0_r0_memr25_ia,
        wren_a => u0_m0_wo0_wi0_r0_we51_seq_q(0),
        address_b => u0_m0_wo0_wi0_r0_memr25_ab,
        q_b => u0_m0_wo0_wi0_r0_memr25_iq
    );
    u0_m0_wo0_wi0_r0_memr25_q <= u0_m0_wo0_wi0_r0_memr25_iq(35 downto 0);

    -- u0_m0_wo0_wi0_r0_split25(BITSELECT,55)@15
    u0_m0_wo0_wi0_r0_split25_b <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr25_q(11 downto 0));
    u0_m0_wo0_wi0_r0_split25_c <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr25_q(23 downto 12));
    u0_m0_wo0_wi0_r0_split25_d <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr25_q(35 downto 24));

    -- u0_m0_wo0_cm25_lutmem(DUALMEM,280)@13 + 2
    u0_m0_wo0_cm25_lutmem_aa <= u0_m0_wo0_ca51_q;
    u0_m0_wo0_cm25_lutmem_reset0 <= areset;
    u0_m0_wo0_cm25_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 17,
        widthad_a => 8,
        numwords_a => 197,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "REVERB_fir_compiler_ii_0_rtl_core_u0_m0_wo0_cm25_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => '1',
        aclr0 => u0_m0_wo0_cm25_lutmem_reset0,
        clock0 => clk,
        address_a => u0_m0_wo0_cm25_lutmem_aa,
        q_a => u0_m0_wo0_cm25_lutmem_ir
    );
    u0_m0_wo0_cm25_lutmem_r <= u0_m0_wo0_cm25_lutmem_ir(16 downto 0);

    -- u0_m0_wo0_mtree_mult1_26(MULT,162)@15 + 2
    u0_m0_wo0_mtree_mult1_26_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm25_lutmem_r);
    u0_m0_wo0_mtree_mult1_26_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split25_b);
    u0_m0_wo0_mtree_mult1_26_reset <= areset;
    u0_m0_wo0_mtree_mult1_26_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 17,
        lpm_widthb => 12,
        lpm_widthp => 29,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_26_a0,
        datab => u0_m0_wo0_mtree_mult1_26_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_26_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_26_s1
    );
    u0_m0_wo0_mtree_mult1_26_q <= u0_m0_wo0_mtree_mult1_26_s1;

    -- u0_m0_wo0_mtree_add0_13(ADD,202)@17 + 1
    u0_m0_wo0_mtree_add0_13_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((29 downto 29 => u0_m0_wo0_mtree_mult1_26_q(28)) & u0_m0_wo0_mtree_mult1_26_q));
    u0_m0_wo0_mtree_add0_13_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((29 downto 29 => u0_m0_wo0_mtree_mult1_27_q(28)) & u0_m0_wo0_mtree_mult1_27_q));
    u0_m0_wo0_mtree_add0_13_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_13_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_13_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_13_a) + SIGNED(u0_m0_wo0_mtree_add0_13_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_13_q <= u0_m0_wo0_mtree_add0_13_o(29 downto 0);

    -- u0_m0_wo0_cm26_lutmem(DUALMEM,281)@13 + 2
    u0_m0_wo0_cm26_lutmem_aa <= u0_m0_wo0_ca51_q;
    u0_m0_wo0_cm26_lutmem_reset0 <= areset;
    u0_m0_wo0_cm26_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 17,
        widthad_a => 8,
        numwords_a => 197,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "REVERB_fir_compiler_ii_0_rtl_core_u0_m0_wo0_cm26_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => '1',
        aclr0 => u0_m0_wo0_cm26_lutmem_reset0,
        clock0 => clk,
        address_a => u0_m0_wo0_cm26_lutmem_aa,
        q_a => u0_m0_wo0_cm26_lutmem_ir
    );
    u0_m0_wo0_cm26_lutmem_r <= u0_m0_wo0_cm26_lutmem_ir(16 downto 0);

    -- u0_m0_wo0_mtree_mult1_25(MULT,163)@15 + 2
    u0_m0_wo0_mtree_mult1_25_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm26_lutmem_r);
    u0_m0_wo0_mtree_mult1_25_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split25_c);
    u0_m0_wo0_mtree_mult1_25_reset <= areset;
    u0_m0_wo0_mtree_mult1_25_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 17,
        lpm_widthb => 12,
        lpm_widthp => 29,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_25_a0,
        datab => u0_m0_wo0_mtree_mult1_25_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_25_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_25_s1
    );
    u0_m0_wo0_mtree_mult1_25_q <= u0_m0_wo0_mtree_mult1_25_s1;

    -- u0_m0_wo0_cm27_lutmem(DUALMEM,282)@13 + 2
    u0_m0_wo0_cm27_lutmem_aa <= u0_m0_wo0_ca51_q;
    u0_m0_wo0_cm27_lutmem_reset0 <= areset;
    u0_m0_wo0_cm27_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 17,
        widthad_a => 8,
        numwords_a => 197,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "REVERB_fir_compiler_ii_0_rtl_core_u0_m0_wo0_cm27_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => '1',
        aclr0 => u0_m0_wo0_cm27_lutmem_reset0,
        clock0 => clk,
        address_a => u0_m0_wo0_cm27_lutmem_aa,
        q_a => u0_m0_wo0_cm27_lutmem_ir
    );
    u0_m0_wo0_cm27_lutmem_r <= u0_m0_wo0_cm27_lutmem_ir(16 downto 0);

    -- u0_m0_wo0_mtree_mult1_24(MULT,164)@15 + 2
    u0_m0_wo0_mtree_mult1_24_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm27_lutmem_r);
    u0_m0_wo0_mtree_mult1_24_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split25_d);
    u0_m0_wo0_mtree_mult1_24_reset <= areset;
    u0_m0_wo0_mtree_mult1_24_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 17,
        lpm_widthb => 12,
        lpm_widthp => 29,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_24_a0,
        datab => u0_m0_wo0_mtree_mult1_24_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_24_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_24_s1
    );
    u0_m0_wo0_mtree_mult1_24_q <= u0_m0_wo0_mtree_mult1_24_s1;

    -- u0_m0_wo0_mtree_add0_12(ADD,201)@17 + 1
    u0_m0_wo0_mtree_add0_12_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((29 downto 29 => u0_m0_wo0_mtree_mult1_24_q(28)) & u0_m0_wo0_mtree_mult1_24_q));
    u0_m0_wo0_mtree_add0_12_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((29 downto 29 => u0_m0_wo0_mtree_mult1_25_q(28)) & u0_m0_wo0_mtree_mult1_25_q));
    u0_m0_wo0_mtree_add0_12_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_12_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_12_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_12_a) + SIGNED(u0_m0_wo0_mtree_add0_12_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_12_q <= u0_m0_wo0_mtree_add0_12_o(29 downto 0);

    -- u0_m0_wo0_mtree_add1_6(ADD,221)@18 + 1
    u0_m0_wo0_mtree_add1_6_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((30 downto 30 => u0_m0_wo0_mtree_add0_12_q(29)) & u0_m0_wo0_mtree_add0_12_q));
    u0_m0_wo0_mtree_add1_6_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((30 downto 30 => u0_m0_wo0_mtree_add0_13_q(29)) & u0_m0_wo0_mtree_add0_13_q));
    u0_m0_wo0_mtree_add1_6_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_6_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_6_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_6_a) + SIGNED(u0_m0_wo0_mtree_add1_6_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_6_q <= u0_m0_wo0_mtree_add1_6_o(30 downto 0);

    -- u0_m0_wo0_mtree_add2_3(ADD,231)@19 + 1
    u0_m0_wo0_mtree_add2_3_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((31 downto 31 => u0_m0_wo0_mtree_add1_6_q(30)) & u0_m0_wo0_mtree_add1_6_q));
    u0_m0_wo0_mtree_add2_3_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((31 downto 31 => u0_m0_wo0_mtree_add1_7_q(30)) & u0_m0_wo0_mtree_add1_7_q));
    u0_m0_wo0_mtree_add2_3_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add2_3_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add2_3_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add2_3_a) + SIGNED(u0_m0_wo0_mtree_add2_3_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add2_3_q <= u0_m0_wo0_mtree_add2_3_o(31 downto 0);

    -- u0_m0_wo0_wi0_r0_join28(BITJOIN,57)@15
    u0_m0_wo0_wi0_r0_join28_q <= u0_m0_wo0_wi0_r0_split28_c & u0_m0_wo0_wi0_r0_split28_b & u0_m0_wo0_wi0_r0_split25_d;

    -- u0_m0_wo0_wi0_r0_memr28(DUALMEM,59)@15
    u0_m0_wo0_wi0_r0_memr28_ia <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_join28_q);
    u0_m0_wo0_wi0_r0_memr28_aa <= u0_m0_wo0_wi0_r0_wa51_q;
    u0_m0_wo0_wi0_r0_memr28_ab <= u0_m0_wo0_wi0_r0_ra51_resize_b;
    u0_m0_wo0_wi0_r0_memr28_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "DUAL_PORT",
        width_a => 36,
        widthad_a => 8,
        numwords_a => 256,
        width_b => 36,
        widthad_b => 8,
        numwords_b => 256,
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
        address_a => u0_m0_wo0_wi0_r0_memr28_aa,
        data_a => u0_m0_wo0_wi0_r0_memr28_ia,
        wren_a => u0_m0_wo0_wi0_r0_we51_seq_q(0),
        address_b => u0_m0_wo0_wi0_r0_memr28_ab,
        q_b => u0_m0_wo0_wi0_r0_memr28_iq
    );
    u0_m0_wo0_wi0_r0_memr28_q <= u0_m0_wo0_wi0_r0_memr28_iq(35 downto 0);

    -- u0_m0_wo0_wi0_r0_split28(BITSELECT,58)@15
    u0_m0_wo0_wi0_r0_split28_b <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr28_q(11 downto 0));
    u0_m0_wo0_wi0_r0_split28_c <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr28_q(23 downto 12));
    u0_m0_wo0_wi0_r0_split28_d <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr28_q(35 downto 24));

    -- u0_m0_wo0_cm28_lutmem(DUALMEM,283)@13 + 2
    u0_m0_wo0_cm28_lutmem_aa <= u0_m0_wo0_ca51_q;
    u0_m0_wo0_cm28_lutmem_reset0 <= areset;
    u0_m0_wo0_cm28_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 17,
        widthad_a => 8,
        numwords_a => 197,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "REVERB_fir_compiler_ii_0_rtl_core_u0_m0_wo0_cm28_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => '1',
        aclr0 => u0_m0_wo0_cm28_lutmem_reset0,
        clock0 => clk,
        address_a => u0_m0_wo0_cm28_lutmem_aa,
        q_a => u0_m0_wo0_cm28_lutmem_ir
    );
    u0_m0_wo0_cm28_lutmem_r <= u0_m0_wo0_cm28_lutmem_ir(16 downto 0);

    -- u0_m0_wo0_mtree_mult1_23(MULT,165)@15 + 2
    u0_m0_wo0_mtree_mult1_23_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm28_lutmem_r);
    u0_m0_wo0_mtree_mult1_23_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split28_b);
    u0_m0_wo0_mtree_mult1_23_reset <= areset;
    u0_m0_wo0_mtree_mult1_23_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 17,
        lpm_widthb => 12,
        lpm_widthp => 29,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_23_a0,
        datab => u0_m0_wo0_mtree_mult1_23_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_23_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_23_s1
    );
    u0_m0_wo0_mtree_mult1_23_q <= u0_m0_wo0_mtree_mult1_23_s1;

    -- u0_m0_wo0_cm29_lutmem(DUALMEM,284)@13 + 2
    u0_m0_wo0_cm29_lutmem_aa <= u0_m0_wo0_ca51_q;
    u0_m0_wo0_cm29_lutmem_reset0 <= areset;
    u0_m0_wo0_cm29_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 17,
        widthad_a => 8,
        numwords_a => 197,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "REVERB_fir_compiler_ii_0_rtl_core_u0_m0_wo0_cm29_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => '1',
        aclr0 => u0_m0_wo0_cm29_lutmem_reset0,
        clock0 => clk,
        address_a => u0_m0_wo0_cm29_lutmem_aa,
        q_a => u0_m0_wo0_cm29_lutmem_ir
    );
    u0_m0_wo0_cm29_lutmem_r <= u0_m0_wo0_cm29_lutmem_ir(16 downto 0);

    -- u0_m0_wo0_mtree_mult1_22(MULT,166)@15 + 2
    u0_m0_wo0_mtree_mult1_22_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm29_lutmem_r);
    u0_m0_wo0_mtree_mult1_22_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split28_c);
    u0_m0_wo0_mtree_mult1_22_reset <= areset;
    u0_m0_wo0_mtree_mult1_22_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 17,
        lpm_widthb => 12,
        lpm_widthp => 29,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_22_a0,
        datab => u0_m0_wo0_mtree_mult1_22_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_22_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_22_s1
    );
    u0_m0_wo0_mtree_mult1_22_q <= u0_m0_wo0_mtree_mult1_22_s1;

    -- u0_m0_wo0_mtree_add0_11(ADD,200)@17 + 1
    u0_m0_wo0_mtree_add0_11_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((29 downto 29 => u0_m0_wo0_mtree_mult1_22_q(28)) & u0_m0_wo0_mtree_mult1_22_q));
    u0_m0_wo0_mtree_add0_11_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((29 downto 29 => u0_m0_wo0_mtree_mult1_23_q(28)) & u0_m0_wo0_mtree_mult1_23_q));
    u0_m0_wo0_mtree_add0_11_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_11_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_11_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_11_a) + SIGNED(u0_m0_wo0_mtree_add0_11_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_11_q <= u0_m0_wo0_mtree_add0_11_o(29 downto 0);

    -- u0_m0_wo0_cm30_lutmem(DUALMEM,285)@13 + 2
    u0_m0_wo0_cm30_lutmem_aa <= u0_m0_wo0_ca51_q;
    u0_m0_wo0_cm30_lutmem_reset0 <= areset;
    u0_m0_wo0_cm30_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 17,
        widthad_a => 8,
        numwords_a => 197,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "REVERB_fir_compiler_ii_0_rtl_core_u0_m0_wo0_cm30_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => '1',
        aclr0 => u0_m0_wo0_cm30_lutmem_reset0,
        clock0 => clk,
        address_a => u0_m0_wo0_cm30_lutmem_aa,
        q_a => u0_m0_wo0_cm30_lutmem_ir
    );
    u0_m0_wo0_cm30_lutmem_r <= u0_m0_wo0_cm30_lutmem_ir(16 downto 0);

    -- u0_m0_wo0_mtree_mult1_21(MULT,167)@15 + 2
    u0_m0_wo0_mtree_mult1_21_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm30_lutmem_r);
    u0_m0_wo0_mtree_mult1_21_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split28_d);
    u0_m0_wo0_mtree_mult1_21_reset <= areset;
    u0_m0_wo0_mtree_mult1_21_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 17,
        lpm_widthb => 12,
        lpm_widthp => 29,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_21_a0,
        datab => u0_m0_wo0_mtree_mult1_21_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_21_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_21_s1
    );
    u0_m0_wo0_mtree_mult1_21_q <= u0_m0_wo0_mtree_mult1_21_s1;

    -- u0_m0_wo0_wi0_r0_join31(BITJOIN,60)@15
    u0_m0_wo0_wi0_r0_join31_q <= u0_m0_wo0_wi0_r0_split31_c & u0_m0_wo0_wi0_r0_split31_b & u0_m0_wo0_wi0_r0_split28_d;

    -- u0_m0_wo0_wi0_r0_memr31(DUALMEM,62)@15
    u0_m0_wo0_wi0_r0_memr31_ia <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_join31_q);
    u0_m0_wo0_wi0_r0_memr31_aa <= u0_m0_wo0_wi0_r0_wa51_q;
    u0_m0_wo0_wi0_r0_memr31_ab <= u0_m0_wo0_wi0_r0_ra51_resize_b;
    u0_m0_wo0_wi0_r0_memr31_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "DUAL_PORT",
        width_a => 36,
        widthad_a => 8,
        numwords_a => 256,
        width_b => 36,
        widthad_b => 8,
        numwords_b => 256,
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
        address_a => u0_m0_wo0_wi0_r0_memr31_aa,
        data_a => u0_m0_wo0_wi0_r0_memr31_ia,
        wren_a => u0_m0_wo0_wi0_r0_we51_seq_q(0),
        address_b => u0_m0_wo0_wi0_r0_memr31_ab,
        q_b => u0_m0_wo0_wi0_r0_memr31_iq
    );
    u0_m0_wo0_wi0_r0_memr31_q <= u0_m0_wo0_wi0_r0_memr31_iq(35 downto 0);

    -- u0_m0_wo0_wi0_r0_split31(BITSELECT,61)@15
    u0_m0_wo0_wi0_r0_split31_b <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr31_q(11 downto 0));
    u0_m0_wo0_wi0_r0_split31_c <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr31_q(23 downto 12));
    u0_m0_wo0_wi0_r0_split31_d <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr31_q(35 downto 24));

    -- u0_m0_wo0_cm31_lutmem(DUALMEM,286)@13 + 2
    u0_m0_wo0_cm31_lutmem_aa <= u0_m0_wo0_ca51_q;
    u0_m0_wo0_cm31_lutmem_reset0 <= areset;
    u0_m0_wo0_cm31_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 17,
        widthad_a => 8,
        numwords_a => 197,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "REVERB_fir_compiler_ii_0_rtl_core_u0_m0_wo0_cm31_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => '1',
        aclr0 => u0_m0_wo0_cm31_lutmem_reset0,
        clock0 => clk,
        address_a => u0_m0_wo0_cm31_lutmem_aa,
        q_a => u0_m0_wo0_cm31_lutmem_ir
    );
    u0_m0_wo0_cm31_lutmem_r <= u0_m0_wo0_cm31_lutmem_ir(16 downto 0);

    -- u0_m0_wo0_mtree_mult1_20(MULT,168)@15 + 2
    u0_m0_wo0_mtree_mult1_20_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm31_lutmem_r);
    u0_m0_wo0_mtree_mult1_20_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split31_b);
    u0_m0_wo0_mtree_mult1_20_reset <= areset;
    u0_m0_wo0_mtree_mult1_20_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 17,
        lpm_widthb => 12,
        lpm_widthp => 29,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_20_a0,
        datab => u0_m0_wo0_mtree_mult1_20_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_20_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_20_s1
    );
    u0_m0_wo0_mtree_mult1_20_q <= u0_m0_wo0_mtree_mult1_20_s1;

    -- u0_m0_wo0_mtree_add0_10(ADD,199)@17 + 1
    u0_m0_wo0_mtree_add0_10_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((29 downto 29 => u0_m0_wo0_mtree_mult1_20_q(28)) & u0_m0_wo0_mtree_mult1_20_q));
    u0_m0_wo0_mtree_add0_10_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((29 downto 29 => u0_m0_wo0_mtree_mult1_21_q(28)) & u0_m0_wo0_mtree_mult1_21_q));
    u0_m0_wo0_mtree_add0_10_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_10_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_10_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_10_a) + SIGNED(u0_m0_wo0_mtree_add0_10_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_10_q <= u0_m0_wo0_mtree_add0_10_o(29 downto 0);

    -- u0_m0_wo0_mtree_add1_5(ADD,220)@18 + 1
    u0_m0_wo0_mtree_add1_5_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((30 downto 30 => u0_m0_wo0_mtree_add0_10_q(29)) & u0_m0_wo0_mtree_add0_10_q));
    u0_m0_wo0_mtree_add1_5_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((30 downto 30 => u0_m0_wo0_mtree_add0_11_q(29)) & u0_m0_wo0_mtree_add0_11_q));
    u0_m0_wo0_mtree_add1_5_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_5_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_5_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_5_a) + SIGNED(u0_m0_wo0_mtree_add1_5_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_5_q <= u0_m0_wo0_mtree_add1_5_o(30 downto 0);

    -- u0_m0_wo0_cm32_lutmem(DUALMEM,287)@13 + 2
    u0_m0_wo0_cm32_lutmem_aa <= u0_m0_wo0_ca51_q;
    u0_m0_wo0_cm32_lutmem_reset0 <= areset;
    u0_m0_wo0_cm32_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 17,
        widthad_a => 8,
        numwords_a => 197,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "REVERB_fir_compiler_ii_0_rtl_core_u0_m0_wo0_cm32_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => '1',
        aclr0 => u0_m0_wo0_cm32_lutmem_reset0,
        clock0 => clk,
        address_a => u0_m0_wo0_cm32_lutmem_aa,
        q_a => u0_m0_wo0_cm32_lutmem_ir
    );
    u0_m0_wo0_cm32_lutmem_r <= u0_m0_wo0_cm32_lutmem_ir(16 downto 0);

    -- u0_m0_wo0_mtree_mult1_19(MULT,169)@15 + 2
    u0_m0_wo0_mtree_mult1_19_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm32_lutmem_r);
    u0_m0_wo0_mtree_mult1_19_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split31_c);
    u0_m0_wo0_mtree_mult1_19_reset <= areset;
    u0_m0_wo0_mtree_mult1_19_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 17,
        lpm_widthb => 12,
        lpm_widthp => 29,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_19_a0,
        datab => u0_m0_wo0_mtree_mult1_19_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_19_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_19_s1
    );
    u0_m0_wo0_mtree_mult1_19_q <= u0_m0_wo0_mtree_mult1_19_s1;

    -- u0_m0_wo0_cm33_lutmem(DUALMEM,288)@13 + 2
    u0_m0_wo0_cm33_lutmem_aa <= u0_m0_wo0_ca51_q;
    u0_m0_wo0_cm33_lutmem_reset0 <= areset;
    u0_m0_wo0_cm33_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 17,
        widthad_a => 8,
        numwords_a => 197,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "REVERB_fir_compiler_ii_0_rtl_core_u0_m0_wo0_cm33_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => '1',
        aclr0 => u0_m0_wo0_cm33_lutmem_reset0,
        clock0 => clk,
        address_a => u0_m0_wo0_cm33_lutmem_aa,
        q_a => u0_m0_wo0_cm33_lutmem_ir
    );
    u0_m0_wo0_cm33_lutmem_r <= u0_m0_wo0_cm33_lutmem_ir(16 downto 0);

    -- u0_m0_wo0_mtree_mult1_18(MULT,170)@15 + 2
    u0_m0_wo0_mtree_mult1_18_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm33_lutmem_r);
    u0_m0_wo0_mtree_mult1_18_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split31_d);
    u0_m0_wo0_mtree_mult1_18_reset <= areset;
    u0_m0_wo0_mtree_mult1_18_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 17,
        lpm_widthb => 12,
        lpm_widthp => 29,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_18_a0,
        datab => u0_m0_wo0_mtree_mult1_18_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_18_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_18_s1
    );
    u0_m0_wo0_mtree_mult1_18_q <= u0_m0_wo0_mtree_mult1_18_s1;

    -- u0_m0_wo0_mtree_add0_9(ADD,198)@17 + 1
    u0_m0_wo0_mtree_add0_9_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((29 downto 29 => u0_m0_wo0_mtree_mult1_18_q(28)) & u0_m0_wo0_mtree_mult1_18_q));
    u0_m0_wo0_mtree_add0_9_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((29 downto 29 => u0_m0_wo0_mtree_mult1_19_q(28)) & u0_m0_wo0_mtree_mult1_19_q));
    u0_m0_wo0_mtree_add0_9_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_9_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_9_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_9_a) + SIGNED(u0_m0_wo0_mtree_add0_9_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_9_q <= u0_m0_wo0_mtree_add0_9_o(29 downto 0);

    -- u0_m0_wo0_wi0_r0_join34(BITJOIN,63)@15
    u0_m0_wo0_wi0_r0_join34_q <= u0_m0_wo0_wi0_r0_split34_c & u0_m0_wo0_wi0_r0_split34_b & u0_m0_wo0_wi0_r0_split31_d;

    -- u0_m0_wo0_wi0_r0_memr34(DUALMEM,65)@15
    u0_m0_wo0_wi0_r0_memr34_ia <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_join34_q);
    u0_m0_wo0_wi0_r0_memr34_aa <= u0_m0_wo0_wi0_r0_wa51_q;
    u0_m0_wo0_wi0_r0_memr34_ab <= u0_m0_wo0_wi0_r0_ra51_resize_b;
    u0_m0_wo0_wi0_r0_memr34_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "DUAL_PORT",
        width_a => 36,
        widthad_a => 8,
        numwords_a => 256,
        width_b => 36,
        widthad_b => 8,
        numwords_b => 256,
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
        address_a => u0_m0_wo0_wi0_r0_memr34_aa,
        data_a => u0_m0_wo0_wi0_r0_memr34_ia,
        wren_a => u0_m0_wo0_wi0_r0_we51_seq_q(0),
        address_b => u0_m0_wo0_wi0_r0_memr34_ab,
        q_b => u0_m0_wo0_wi0_r0_memr34_iq
    );
    u0_m0_wo0_wi0_r0_memr34_q <= u0_m0_wo0_wi0_r0_memr34_iq(35 downto 0);

    -- u0_m0_wo0_wi0_r0_split34(BITSELECT,64)@15
    u0_m0_wo0_wi0_r0_split34_b <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr34_q(11 downto 0));
    u0_m0_wo0_wi0_r0_split34_c <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr34_q(23 downto 12));
    u0_m0_wo0_wi0_r0_split34_d <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr34_q(35 downto 24));

    -- u0_m0_wo0_cm34_lutmem(DUALMEM,289)@13 + 2
    u0_m0_wo0_cm34_lutmem_aa <= u0_m0_wo0_ca51_q;
    u0_m0_wo0_cm34_lutmem_reset0 <= areset;
    u0_m0_wo0_cm34_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 17,
        widthad_a => 8,
        numwords_a => 197,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "REVERB_fir_compiler_ii_0_rtl_core_u0_m0_wo0_cm34_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => '1',
        aclr0 => u0_m0_wo0_cm34_lutmem_reset0,
        clock0 => clk,
        address_a => u0_m0_wo0_cm34_lutmem_aa,
        q_a => u0_m0_wo0_cm34_lutmem_ir
    );
    u0_m0_wo0_cm34_lutmem_r <= u0_m0_wo0_cm34_lutmem_ir(16 downto 0);

    -- u0_m0_wo0_mtree_mult1_17(MULT,171)@15 + 2
    u0_m0_wo0_mtree_mult1_17_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm34_lutmem_r);
    u0_m0_wo0_mtree_mult1_17_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split34_b);
    u0_m0_wo0_mtree_mult1_17_reset <= areset;
    u0_m0_wo0_mtree_mult1_17_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 17,
        lpm_widthb => 12,
        lpm_widthp => 29,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_17_a0,
        datab => u0_m0_wo0_mtree_mult1_17_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_17_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_17_s1
    );
    u0_m0_wo0_mtree_mult1_17_q <= u0_m0_wo0_mtree_mult1_17_s1;

    -- u0_m0_wo0_cm35_lutmem(DUALMEM,290)@13 + 2
    u0_m0_wo0_cm35_lutmem_aa <= u0_m0_wo0_ca51_q;
    u0_m0_wo0_cm35_lutmem_reset0 <= areset;
    u0_m0_wo0_cm35_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 17,
        widthad_a => 8,
        numwords_a => 197,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "REVERB_fir_compiler_ii_0_rtl_core_u0_m0_wo0_cm35_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => '1',
        aclr0 => u0_m0_wo0_cm35_lutmem_reset0,
        clock0 => clk,
        address_a => u0_m0_wo0_cm35_lutmem_aa,
        q_a => u0_m0_wo0_cm35_lutmem_ir
    );
    u0_m0_wo0_cm35_lutmem_r <= u0_m0_wo0_cm35_lutmem_ir(16 downto 0);

    -- u0_m0_wo0_mtree_mult1_16(MULT,172)@15 + 2
    u0_m0_wo0_mtree_mult1_16_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm35_lutmem_r);
    u0_m0_wo0_mtree_mult1_16_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split34_c);
    u0_m0_wo0_mtree_mult1_16_reset <= areset;
    u0_m0_wo0_mtree_mult1_16_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 17,
        lpm_widthb => 12,
        lpm_widthp => 29,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_16_a0,
        datab => u0_m0_wo0_mtree_mult1_16_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_16_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_16_s1
    );
    u0_m0_wo0_mtree_mult1_16_q <= u0_m0_wo0_mtree_mult1_16_s1;

    -- u0_m0_wo0_mtree_add0_8(ADD,197)@17 + 1
    u0_m0_wo0_mtree_add0_8_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((29 downto 29 => u0_m0_wo0_mtree_mult1_16_q(28)) & u0_m0_wo0_mtree_mult1_16_q));
    u0_m0_wo0_mtree_add0_8_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((29 downto 29 => u0_m0_wo0_mtree_mult1_17_q(28)) & u0_m0_wo0_mtree_mult1_17_q));
    u0_m0_wo0_mtree_add0_8_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_8_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_8_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_8_a) + SIGNED(u0_m0_wo0_mtree_add0_8_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_8_q <= u0_m0_wo0_mtree_add0_8_o(29 downto 0);

    -- u0_m0_wo0_mtree_add1_4(ADD,219)@18 + 1
    u0_m0_wo0_mtree_add1_4_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((30 downto 30 => u0_m0_wo0_mtree_add0_8_q(29)) & u0_m0_wo0_mtree_add0_8_q));
    u0_m0_wo0_mtree_add1_4_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((30 downto 30 => u0_m0_wo0_mtree_add0_9_q(29)) & u0_m0_wo0_mtree_add0_9_q));
    u0_m0_wo0_mtree_add1_4_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_4_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_4_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_4_a) + SIGNED(u0_m0_wo0_mtree_add1_4_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_4_q <= u0_m0_wo0_mtree_add1_4_o(30 downto 0);

    -- u0_m0_wo0_mtree_add2_2(ADD,230)@19 + 1
    u0_m0_wo0_mtree_add2_2_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((31 downto 31 => u0_m0_wo0_mtree_add1_4_q(30)) & u0_m0_wo0_mtree_add1_4_q));
    u0_m0_wo0_mtree_add2_2_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((31 downto 31 => u0_m0_wo0_mtree_add1_5_q(30)) & u0_m0_wo0_mtree_add1_5_q));
    u0_m0_wo0_mtree_add2_2_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add2_2_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add2_2_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add2_2_a) + SIGNED(u0_m0_wo0_mtree_add2_2_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add2_2_q <= u0_m0_wo0_mtree_add2_2_o(31 downto 0);

    -- u0_m0_wo0_mtree_add3_1(ADD,235)@20 + 1
    u0_m0_wo0_mtree_add3_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((32 downto 32 => u0_m0_wo0_mtree_add2_2_q(31)) & u0_m0_wo0_mtree_add2_2_q));
    u0_m0_wo0_mtree_add3_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((32 downto 32 => u0_m0_wo0_mtree_add2_3_q(31)) & u0_m0_wo0_mtree_add2_3_q));
    u0_m0_wo0_mtree_add3_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add3_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add3_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add3_1_a) + SIGNED(u0_m0_wo0_mtree_add3_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add3_1_q <= u0_m0_wo0_mtree_add3_1_o(32 downto 0);

    -- u0_m0_wo0_cm36_lutmem(DUALMEM,291)@13 + 2
    u0_m0_wo0_cm36_lutmem_aa <= u0_m0_wo0_ca51_q;
    u0_m0_wo0_cm36_lutmem_reset0 <= areset;
    u0_m0_wo0_cm36_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 17,
        widthad_a => 8,
        numwords_a => 197,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "REVERB_fir_compiler_ii_0_rtl_core_u0_m0_wo0_cm36_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => '1',
        aclr0 => u0_m0_wo0_cm36_lutmem_reset0,
        clock0 => clk,
        address_a => u0_m0_wo0_cm36_lutmem_aa,
        q_a => u0_m0_wo0_cm36_lutmem_ir
    );
    u0_m0_wo0_cm36_lutmem_r <= u0_m0_wo0_cm36_lutmem_ir(16 downto 0);

    -- u0_m0_wo0_mtree_mult1_15(MULT,173)@15 + 2
    u0_m0_wo0_mtree_mult1_15_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm36_lutmem_r);
    u0_m0_wo0_mtree_mult1_15_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split34_d);
    u0_m0_wo0_mtree_mult1_15_reset <= areset;
    u0_m0_wo0_mtree_mult1_15_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 17,
        lpm_widthb => 12,
        lpm_widthp => 29,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_15_a0,
        datab => u0_m0_wo0_mtree_mult1_15_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_15_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_15_s1
    );
    u0_m0_wo0_mtree_mult1_15_q <= u0_m0_wo0_mtree_mult1_15_s1;

    -- u0_m0_wo0_wi0_r0_join37(BITJOIN,66)@15
    u0_m0_wo0_wi0_r0_join37_q <= u0_m0_wo0_wi0_r0_split37_c & u0_m0_wo0_wi0_r0_split37_b & u0_m0_wo0_wi0_r0_split34_d;

    -- u0_m0_wo0_wi0_r0_memr37(DUALMEM,68)@15
    u0_m0_wo0_wi0_r0_memr37_ia <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_join37_q);
    u0_m0_wo0_wi0_r0_memr37_aa <= u0_m0_wo0_wi0_r0_wa51_q;
    u0_m0_wo0_wi0_r0_memr37_ab <= u0_m0_wo0_wi0_r0_ra51_resize_b;
    u0_m0_wo0_wi0_r0_memr37_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "DUAL_PORT",
        width_a => 36,
        widthad_a => 8,
        numwords_a => 256,
        width_b => 36,
        widthad_b => 8,
        numwords_b => 256,
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
        address_a => u0_m0_wo0_wi0_r0_memr37_aa,
        data_a => u0_m0_wo0_wi0_r0_memr37_ia,
        wren_a => u0_m0_wo0_wi0_r0_we51_seq_q(0),
        address_b => u0_m0_wo0_wi0_r0_memr37_ab,
        q_b => u0_m0_wo0_wi0_r0_memr37_iq
    );
    u0_m0_wo0_wi0_r0_memr37_q <= u0_m0_wo0_wi0_r0_memr37_iq(35 downto 0);

    -- u0_m0_wo0_wi0_r0_split37(BITSELECT,67)@15
    u0_m0_wo0_wi0_r0_split37_b <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr37_q(11 downto 0));
    u0_m0_wo0_wi0_r0_split37_c <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr37_q(23 downto 12));
    u0_m0_wo0_wi0_r0_split37_d <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr37_q(35 downto 24));

    -- u0_m0_wo0_cm37_lutmem(DUALMEM,292)@13 + 2
    u0_m0_wo0_cm37_lutmem_aa <= u0_m0_wo0_ca51_q;
    u0_m0_wo0_cm37_lutmem_reset0 <= areset;
    u0_m0_wo0_cm37_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 17,
        widthad_a => 8,
        numwords_a => 197,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "REVERB_fir_compiler_ii_0_rtl_core_u0_m0_wo0_cm37_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => '1',
        aclr0 => u0_m0_wo0_cm37_lutmem_reset0,
        clock0 => clk,
        address_a => u0_m0_wo0_cm37_lutmem_aa,
        q_a => u0_m0_wo0_cm37_lutmem_ir
    );
    u0_m0_wo0_cm37_lutmem_r <= u0_m0_wo0_cm37_lutmem_ir(16 downto 0);

    -- u0_m0_wo0_mtree_mult1_14(MULT,174)@15 + 2
    u0_m0_wo0_mtree_mult1_14_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm37_lutmem_r);
    u0_m0_wo0_mtree_mult1_14_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split37_b);
    u0_m0_wo0_mtree_mult1_14_reset <= areset;
    u0_m0_wo0_mtree_mult1_14_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 17,
        lpm_widthb => 12,
        lpm_widthp => 29,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_14_a0,
        datab => u0_m0_wo0_mtree_mult1_14_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_14_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_14_s1
    );
    u0_m0_wo0_mtree_mult1_14_q <= u0_m0_wo0_mtree_mult1_14_s1;

    -- u0_m0_wo0_mtree_add0_7(ADD,196)@17 + 1
    u0_m0_wo0_mtree_add0_7_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((29 downto 29 => u0_m0_wo0_mtree_mult1_14_q(28)) & u0_m0_wo0_mtree_mult1_14_q));
    u0_m0_wo0_mtree_add0_7_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((29 downto 29 => u0_m0_wo0_mtree_mult1_15_q(28)) & u0_m0_wo0_mtree_mult1_15_q));
    u0_m0_wo0_mtree_add0_7_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_7_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_7_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_7_a) + SIGNED(u0_m0_wo0_mtree_add0_7_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_7_q <= u0_m0_wo0_mtree_add0_7_o(29 downto 0);

    -- u0_m0_wo0_cm38_lutmem(DUALMEM,293)@13 + 2
    u0_m0_wo0_cm38_lutmem_aa <= u0_m0_wo0_ca51_q;
    u0_m0_wo0_cm38_lutmem_reset0 <= areset;
    u0_m0_wo0_cm38_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 17,
        widthad_a => 8,
        numwords_a => 197,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "REVERB_fir_compiler_ii_0_rtl_core_u0_m0_wo0_cm38_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => '1',
        aclr0 => u0_m0_wo0_cm38_lutmem_reset0,
        clock0 => clk,
        address_a => u0_m0_wo0_cm38_lutmem_aa,
        q_a => u0_m0_wo0_cm38_lutmem_ir
    );
    u0_m0_wo0_cm38_lutmem_r <= u0_m0_wo0_cm38_lutmem_ir(16 downto 0);

    -- u0_m0_wo0_mtree_mult1_13(MULT,175)@15 + 2
    u0_m0_wo0_mtree_mult1_13_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm38_lutmem_r);
    u0_m0_wo0_mtree_mult1_13_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split37_c);
    u0_m0_wo0_mtree_mult1_13_reset <= areset;
    u0_m0_wo0_mtree_mult1_13_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 17,
        lpm_widthb => 12,
        lpm_widthp => 29,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_13_a0,
        datab => u0_m0_wo0_mtree_mult1_13_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_13_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_13_s1
    );
    u0_m0_wo0_mtree_mult1_13_q <= u0_m0_wo0_mtree_mult1_13_s1;

    -- u0_m0_wo0_cm39_lutmem(DUALMEM,294)@13 + 2
    u0_m0_wo0_cm39_lutmem_aa <= u0_m0_wo0_ca51_q;
    u0_m0_wo0_cm39_lutmem_reset0 <= areset;
    u0_m0_wo0_cm39_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 17,
        widthad_a => 8,
        numwords_a => 197,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "REVERB_fir_compiler_ii_0_rtl_core_u0_m0_wo0_cm39_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => '1',
        aclr0 => u0_m0_wo0_cm39_lutmem_reset0,
        clock0 => clk,
        address_a => u0_m0_wo0_cm39_lutmem_aa,
        q_a => u0_m0_wo0_cm39_lutmem_ir
    );
    u0_m0_wo0_cm39_lutmem_r <= u0_m0_wo0_cm39_lutmem_ir(16 downto 0);

    -- u0_m0_wo0_mtree_mult1_12(MULT,176)@15 + 2
    u0_m0_wo0_mtree_mult1_12_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm39_lutmem_r);
    u0_m0_wo0_mtree_mult1_12_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split37_d);
    u0_m0_wo0_mtree_mult1_12_reset <= areset;
    u0_m0_wo0_mtree_mult1_12_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 17,
        lpm_widthb => 12,
        lpm_widthp => 29,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_12_a0,
        datab => u0_m0_wo0_mtree_mult1_12_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_12_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_12_s1
    );
    u0_m0_wo0_mtree_mult1_12_q <= u0_m0_wo0_mtree_mult1_12_s1;

    -- u0_m0_wo0_mtree_add0_6(ADD,195)@17 + 1
    u0_m0_wo0_mtree_add0_6_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((29 downto 29 => u0_m0_wo0_mtree_mult1_12_q(28)) & u0_m0_wo0_mtree_mult1_12_q));
    u0_m0_wo0_mtree_add0_6_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((29 downto 29 => u0_m0_wo0_mtree_mult1_13_q(28)) & u0_m0_wo0_mtree_mult1_13_q));
    u0_m0_wo0_mtree_add0_6_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_6_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_6_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_6_a) + SIGNED(u0_m0_wo0_mtree_add0_6_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_6_q <= u0_m0_wo0_mtree_add0_6_o(29 downto 0);

    -- u0_m0_wo0_mtree_add1_3(ADD,218)@18 + 1
    u0_m0_wo0_mtree_add1_3_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((30 downto 30 => u0_m0_wo0_mtree_add0_6_q(29)) & u0_m0_wo0_mtree_add0_6_q));
    u0_m0_wo0_mtree_add1_3_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((30 downto 30 => u0_m0_wo0_mtree_add0_7_q(29)) & u0_m0_wo0_mtree_add0_7_q));
    u0_m0_wo0_mtree_add1_3_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_3_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_3_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_3_a) + SIGNED(u0_m0_wo0_mtree_add1_3_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_3_q <= u0_m0_wo0_mtree_add1_3_o(30 downto 0);

    -- u0_m0_wo0_wi0_r0_join40(BITJOIN,69)@15
    u0_m0_wo0_wi0_r0_join40_q <= u0_m0_wo0_wi0_r0_split40_c & u0_m0_wo0_wi0_r0_split40_b & u0_m0_wo0_wi0_r0_split37_d;

    -- u0_m0_wo0_wi0_r0_memr40(DUALMEM,71)@15
    u0_m0_wo0_wi0_r0_memr40_ia <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_join40_q);
    u0_m0_wo0_wi0_r0_memr40_aa <= u0_m0_wo0_wi0_r0_wa51_q;
    u0_m0_wo0_wi0_r0_memr40_ab <= u0_m0_wo0_wi0_r0_ra51_resize_b;
    u0_m0_wo0_wi0_r0_memr40_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "DUAL_PORT",
        width_a => 36,
        widthad_a => 8,
        numwords_a => 256,
        width_b => 36,
        widthad_b => 8,
        numwords_b => 256,
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
        address_a => u0_m0_wo0_wi0_r0_memr40_aa,
        data_a => u0_m0_wo0_wi0_r0_memr40_ia,
        wren_a => u0_m0_wo0_wi0_r0_we51_seq_q(0),
        address_b => u0_m0_wo0_wi0_r0_memr40_ab,
        q_b => u0_m0_wo0_wi0_r0_memr40_iq
    );
    u0_m0_wo0_wi0_r0_memr40_q <= u0_m0_wo0_wi0_r0_memr40_iq(35 downto 0);

    -- u0_m0_wo0_wi0_r0_split40(BITSELECT,70)@15
    u0_m0_wo0_wi0_r0_split40_b <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr40_q(11 downto 0));
    u0_m0_wo0_wi0_r0_split40_c <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr40_q(23 downto 12));
    u0_m0_wo0_wi0_r0_split40_d <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr40_q(35 downto 24));

    -- u0_m0_wo0_cm40_lutmem(DUALMEM,295)@13 + 2
    u0_m0_wo0_cm40_lutmem_aa <= u0_m0_wo0_ca51_q;
    u0_m0_wo0_cm40_lutmem_reset0 <= areset;
    u0_m0_wo0_cm40_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 17,
        widthad_a => 8,
        numwords_a => 197,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "REVERB_fir_compiler_ii_0_rtl_core_u0_m0_wo0_cm40_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => '1',
        aclr0 => u0_m0_wo0_cm40_lutmem_reset0,
        clock0 => clk,
        address_a => u0_m0_wo0_cm40_lutmem_aa,
        q_a => u0_m0_wo0_cm40_lutmem_ir
    );
    u0_m0_wo0_cm40_lutmem_r <= u0_m0_wo0_cm40_lutmem_ir(16 downto 0);

    -- u0_m0_wo0_mtree_mult1_11(MULT,177)@15 + 2
    u0_m0_wo0_mtree_mult1_11_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm40_lutmem_r);
    u0_m0_wo0_mtree_mult1_11_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split40_b);
    u0_m0_wo0_mtree_mult1_11_reset <= areset;
    u0_m0_wo0_mtree_mult1_11_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 17,
        lpm_widthb => 12,
        lpm_widthp => 29,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_11_a0,
        datab => u0_m0_wo0_mtree_mult1_11_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_11_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_11_s1
    );
    u0_m0_wo0_mtree_mult1_11_q <= u0_m0_wo0_mtree_mult1_11_s1;

    -- u0_m0_wo0_cm41_lutmem(DUALMEM,296)@13 + 2
    u0_m0_wo0_cm41_lutmem_aa <= u0_m0_wo0_ca51_q;
    u0_m0_wo0_cm41_lutmem_reset0 <= areset;
    u0_m0_wo0_cm41_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 17,
        widthad_a => 8,
        numwords_a => 197,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "REVERB_fir_compiler_ii_0_rtl_core_u0_m0_wo0_cm41_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => '1',
        aclr0 => u0_m0_wo0_cm41_lutmem_reset0,
        clock0 => clk,
        address_a => u0_m0_wo0_cm41_lutmem_aa,
        q_a => u0_m0_wo0_cm41_lutmem_ir
    );
    u0_m0_wo0_cm41_lutmem_r <= u0_m0_wo0_cm41_lutmem_ir(16 downto 0);

    -- u0_m0_wo0_mtree_mult1_10(MULT,178)@15 + 2
    u0_m0_wo0_mtree_mult1_10_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm41_lutmem_r);
    u0_m0_wo0_mtree_mult1_10_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split40_c);
    u0_m0_wo0_mtree_mult1_10_reset <= areset;
    u0_m0_wo0_mtree_mult1_10_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 17,
        lpm_widthb => 12,
        lpm_widthp => 29,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_10_a0,
        datab => u0_m0_wo0_mtree_mult1_10_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_10_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_10_s1
    );
    u0_m0_wo0_mtree_mult1_10_q <= u0_m0_wo0_mtree_mult1_10_s1;

    -- u0_m0_wo0_mtree_add0_5(ADD,194)@17 + 1
    u0_m0_wo0_mtree_add0_5_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((29 downto 29 => u0_m0_wo0_mtree_mult1_10_q(28)) & u0_m0_wo0_mtree_mult1_10_q));
    u0_m0_wo0_mtree_add0_5_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((29 downto 29 => u0_m0_wo0_mtree_mult1_11_q(28)) & u0_m0_wo0_mtree_mult1_11_q));
    u0_m0_wo0_mtree_add0_5_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_5_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_5_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_5_a) + SIGNED(u0_m0_wo0_mtree_add0_5_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_5_q <= u0_m0_wo0_mtree_add0_5_o(29 downto 0);

    -- u0_m0_wo0_cm42_lutmem(DUALMEM,297)@13 + 2
    u0_m0_wo0_cm42_lutmem_aa <= u0_m0_wo0_ca51_q;
    u0_m0_wo0_cm42_lutmem_reset0 <= areset;
    u0_m0_wo0_cm42_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 17,
        widthad_a => 8,
        numwords_a => 197,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "REVERB_fir_compiler_ii_0_rtl_core_u0_m0_wo0_cm42_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => '1',
        aclr0 => u0_m0_wo0_cm42_lutmem_reset0,
        clock0 => clk,
        address_a => u0_m0_wo0_cm42_lutmem_aa,
        q_a => u0_m0_wo0_cm42_lutmem_ir
    );
    u0_m0_wo0_cm42_lutmem_r <= u0_m0_wo0_cm42_lutmem_ir(16 downto 0);

    -- u0_m0_wo0_mtree_mult1_9(MULT,179)@15 + 2
    u0_m0_wo0_mtree_mult1_9_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm42_lutmem_r);
    u0_m0_wo0_mtree_mult1_9_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split40_d);
    u0_m0_wo0_mtree_mult1_9_reset <= areset;
    u0_m0_wo0_mtree_mult1_9_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 17,
        lpm_widthb => 12,
        lpm_widthp => 29,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_9_a0,
        datab => u0_m0_wo0_mtree_mult1_9_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_9_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_9_s1
    );
    u0_m0_wo0_mtree_mult1_9_q <= u0_m0_wo0_mtree_mult1_9_s1;

    -- u0_m0_wo0_wi0_r0_join43(BITJOIN,72)@15
    u0_m0_wo0_wi0_r0_join43_q <= u0_m0_wo0_wi0_r0_split43_c & u0_m0_wo0_wi0_r0_split43_b & u0_m0_wo0_wi0_r0_split40_d;

    -- u0_m0_wo0_wi0_r0_memr43(DUALMEM,74)@15
    u0_m0_wo0_wi0_r0_memr43_ia <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_join43_q);
    u0_m0_wo0_wi0_r0_memr43_aa <= u0_m0_wo0_wi0_r0_wa51_q;
    u0_m0_wo0_wi0_r0_memr43_ab <= u0_m0_wo0_wi0_r0_ra51_resize_b;
    u0_m0_wo0_wi0_r0_memr43_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "DUAL_PORT",
        width_a => 36,
        widthad_a => 8,
        numwords_a => 256,
        width_b => 36,
        widthad_b => 8,
        numwords_b => 256,
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
        address_a => u0_m0_wo0_wi0_r0_memr43_aa,
        data_a => u0_m0_wo0_wi0_r0_memr43_ia,
        wren_a => u0_m0_wo0_wi0_r0_we51_seq_q(0),
        address_b => u0_m0_wo0_wi0_r0_memr43_ab,
        q_b => u0_m0_wo0_wi0_r0_memr43_iq
    );
    u0_m0_wo0_wi0_r0_memr43_q <= u0_m0_wo0_wi0_r0_memr43_iq(35 downto 0);

    -- u0_m0_wo0_wi0_r0_split43(BITSELECT,73)@15
    u0_m0_wo0_wi0_r0_split43_b <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr43_q(11 downto 0));
    u0_m0_wo0_wi0_r0_split43_c <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr43_q(23 downto 12));
    u0_m0_wo0_wi0_r0_split43_d <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr43_q(35 downto 24));

    -- u0_m0_wo0_cm43_lutmem(DUALMEM,298)@13 + 2
    u0_m0_wo0_cm43_lutmem_aa <= u0_m0_wo0_ca51_q;
    u0_m0_wo0_cm43_lutmem_reset0 <= areset;
    u0_m0_wo0_cm43_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 17,
        widthad_a => 8,
        numwords_a => 197,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "REVERB_fir_compiler_ii_0_rtl_core_u0_m0_wo0_cm43_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => '1',
        aclr0 => u0_m0_wo0_cm43_lutmem_reset0,
        clock0 => clk,
        address_a => u0_m0_wo0_cm43_lutmem_aa,
        q_a => u0_m0_wo0_cm43_lutmem_ir
    );
    u0_m0_wo0_cm43_lutmem_r <= u0_m0_wo0_cm43_lutmem_ir(16 downto 0);

    -- u0_m0_wo0_mtree_mult1_8(MULT,180)@15 + 2
    u0_m0_wo0_mtree_mult1_8_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm43_lutmem_r);
    u0_m0_wo0_mtree_mult1_8_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split43_b);
    u0_m0_wo0_mtree_mult1_8_reset <= areset;
    u0_m0_wo0_mtree_mult1_8_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 17,
        lpm_widthb => 12,
        lpm_widthp => 29,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_8_a0,
        datab => u0_m0_wo0_mtree_mult1_8_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_8_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_8_s1
    );
    u0_m0_wo0_mtree_mult1_8_q <= u0_m0_wo0_mtree_mult1_8_s1;

    -- u0_m0_wo0_mtree_add0_4(ADD,193)@17 + 1
    u0_m0_wo0_mtree_add0_4_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((29 downto 29 => u0_m0_wo0_mtree_mult1_8_q(28)) & u0_m0_wo0_mtree_mult1_8_q));
    u0_m0_wo0_mtree_add0_4_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((29 downto 29 => u0_m0_wo0_mtree_mult1_9_q(28)) & u0_m0_wo0_mtree_mult1_9_q));
    u0_m0_wo0_mtree_add0_4_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_4_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_4_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_4_a) + SIGNED(u0_m0_wo0_mtree_add0_4_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_4_q <= u0_m0_wo0_mtree_add0_4_o(29 downto 0);

    -- u0_m0_wo0_mtree_add1_2(ADD,217)@18 + 1
    u0_m0_wo0_mtree_add1_2_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((30 downto 30 => u0_m0_wo0_mtree_add0_4_q(29)) & u0_m0_wo0_mtree_add0_4_q));
    u0_m0_wo0_mtree_add1_2_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((30 downto 30 => u0_m0_wo0_mtree_add0_5_q(29)) & u0_m0_wo0_mtree_add0_5_q));
    u0_m0_wo0_mtree_add1_2_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_2_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_2_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_2_a) + SIGNED(u0_m0_wo0_mtree_add1_2_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_2_q <= u0_m0_wo0_mtree_add1_2_o(30 downto 0);

    -- u0_m0_wo0_mtree_add2_1(ADD,229)@19 + 1
    u0_m0_wo0_mtree_add2_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((31 downto 31 => u0_m0_wo0_mtree_add1_2_q(30)) & u0_m0_wo0_mtree_add1_2_q));
    u0_m0_wo0_mtree_add2_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((31 downto 31 => u0_m0_wo0_mtree_add1_3_q(30)) & u0_m0_wo0_mtree_add1_3_q));
    u0_m0_wo0_mtree_add2_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add2_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add2_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add2_1_a) + SIGNED(u0_m0_wo0_mtree_add2_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add2_1_q <= u0_m0_wo0_mtree_add2_1_o(31 downto 0);

    -- u0_m0_wo0_cm44_lutmem(DUALMEM,299)@13 + 2
    u0_m0_wo0_cm44_lutmem_aa <= u0_m0_wo0_ca51_q;
    u0_m0_wo0_cm44_lutmem_reset0 <= areset;
    u0_m0_wo0_cm44_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 17,
        widthad_a => 8,
        numwords_a => 197,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "REVERB_fir_compiler_ii_0_rtl_core_u0_m0_wo0_cm44_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => '1',
        aclr0 => u0_m0_wo0_cm44_lutmem_reset0,
        clock0 => clk,
        address_a => u0_m0_wo0_cm44_lutmem_aa,
        q_a => u0_m0_wo0_cm44_lutmem_ir
    );
    u0_m0_wo0_cm44_lutmem_r <= u0_m0_wo0_cm44_lutmem_ir(16 downto 0);

    -- u0_m0_wo0_mtree_mult1_7(MULT,181)@15 + 2
    u0_m0_wo0_mtree_mult1_7_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm44_lutmem_r);
    u0_m0_wo0_mtree_mult1_7_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split43_c);
    u0_m0_wo0_mtree_mult1_7_reset <= areset;
    u0_m0_wo0_mtree_mult1_7_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 17,
        lpm_widthb => 12,
        lpm_widthp => 29,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_7_a0,
        datab => u0_m0_wo0_mtree_mult1_7_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_7_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_7_s1
    );
    u0_m0_wo0_mtree_mult1_7_q <= u0_m0_wo0_mtree_mult1_7_s1;

    -- u0_m0_wo0_cm45_lutmem(DUALMEM,300)@13 + 2
    u0_m0_wo0_cm45_lutmem_aa <= u0_m0_wo0_ca51_q;
    u0_m0_wo0_cm45_lutmem_reset0 <= areset;
    u0_m0_wo0_cm45_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 17,
        widthad_a => 8,
        numwords_a => 197,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "REVERB_fir_compiler_ii_0_rtl_core_u0_m0_wo0_cm45_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => '1',
        aclr0 => u0_m0_wo0_cm45_lutmem_reset0,
        clock0 => clk,
        address_a => u0_m0_wo0_cm45_lutmem_aa,
        q_a => u0_m0_wo0_cm45_lutmem_ir
    );
    u0_m0_wo0_cm45_lutmem_r <= u0_m0_wo0_cm45_lutmem_ir(16 downto 0);

    -- u0_m0_wo0_mtree_mult1_6(MULT,182)@15 + 2
    u0_m0_wo0_mtree_mult1_6_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm45_lutmem_r);
    u0_m0_wo0_mtree_mult1_6_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split43_d);
    u0_m0_wo0_mtree_mult1_6_reset <= areset;
    u0_m0_wo0_mtree_mult1_6_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 17,
        lpm_widthb => 12,
        lpm_widthp => 29,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_6_a0,
        datab => u0_m0_wo0_mtree_mult1_6_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_6_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_6_s1
    );
    u0_m0_wo0_mtree_mult1_6_q <= u0_m0_wo0_mtree_mult1_6_s1;

    -- u0_m0_wo0_mtree_add0_3(ADD,192)@17 + 1
    u0_m0_wo0_mtree_add0_3_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((29 downto 29 => u0_m0_wo0_mtree_mult1_6_q(28)) & u0_m0_wo0_mtree_mult1_6_q));
    u0_m0_wo0_mtree_add0_3_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((29 downto 29 => u0_m0_wo0_mtree_mult1_7_q(28)) & u0_m0_wo0_mtree_mult1_7_q));
    u0_m0_wo0_mtree_add0_3_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_3_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_3_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_3_a) + SIGNED(u0_m0_wo0_mtree_add0_3_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_3_q <= u0_m0_wo0_mtree_add0_3_o(29 downto 0);

    -- u0_m0_wo0_wi0_r0_join46(BITJOIN,75)@15
    u0_m0_wo0_wi0_r0_join46_q <= u0_m0_wo0_wi0_r0_split46_c & u0_m0_wo0_wi0_r0_split46_b & u0_m0_wo0_wi0_r0_split43_d;

    -- u0_m0_wo0_wi0_r0_memr46(DUALMEM,77)@15
    u0_m0_wo0_wi0_r0_memr46_ia <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_join46_q);
    u0_m0_wo0_wi0_r0_memr46_aa <= u0_m0_wo0_wi0_r0_wa51_q;
    u0_m0_wo0_wi0_r0_memr46_ab <= u0_m0_wo0_wi0_r0_ra51_resize_b;
    u0_m0_wo0_wi0_r0_memr46_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "DUAL_PORT",
        width_a => 36,
        widthad_a => 8,
        numwords_a => 256,
        width_b => 36,
        widthad_b => 8,
        numwords_b => 256,
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
        address_a => u0_m0_wo0_wi0_r0_memr46_aa,
        data_a => u0_m0_wo0_wi0_r0_memr46_ia,
        wren_a => u0_m0_wo0_wi0_r0_we51_seq_q(0),
        address_b => u0_m0_wo0_wi0_r0_memr46_ab,
        q_b => u0_m0_wo0_wi0_r0_memr46_iq
    );
    u0_m0_wo0_wi0_r0_memr46_q <= u0_m0_wo0_wi0_r0_memr46_iq(35 downto 0);

    -- u0_m0_wo0_wi0_r0_split46(BITSELECT,76)@15
    u0_m0_wo0_wi0_r0_split46_b <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr46_q(11 downto 0));
    u0_m0_wo0_wi0_r0_split46_c <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr46_q(23 downto 12));
    u0_m0_wo0_wi0_r0_split46_d <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr46_q(35 downto 24));

    -- u0_m0_wo0_cm46_lutmem(DUALMEM,301)@13 + 2
    u0_m0_wo0_cm46_lutmem_aa <= u0_m0_wo0_ca51_q;
    u0_m0_wo0_cm46_lutmem_reset0 <= areset;
    u0_m0_wo0_cm46_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 17,
        widthad_a => 8,
        numwords_a => 197,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "REVERB_fir_compiler_ii_0_rtl_core_u0_m0_wo0_cm46_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => '1',
        aclr0 => u0_m0_wo0_cm46_lutmem_reset0,
        clock0 => clk,
        address_a => u0_m0_wo0_cm46_lutmem_aa,
        q_a => u0_m0_wo0_cm46_lutmem_ir
    );
    u0_m0_wo0_cm46_lutmem_r <= u0_m0_wo0_cm46_lutmem_ir(16 downto 0);

    -- u0_m0_wo0_mtree_mult1_5(MULT,183)@15 + 2
    u0_m0_wo0_mtree_mult1_5_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm46_lutmem_r);
    u0_m0_wo0_mtree_mult1_5_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split46_b);
    u0_m0_wo0_mtree_mult1_5_reset <= areset;
    u0_m0_wo0_mtree_mult1_5_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 17,
        lpm_widthb => 12,
        lpm_widthp => 29,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_5_a0,
        datab => u0_m0_wo0_mtree_mult1_5_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_5_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_5_s1
    );
    u0_m0_wo0_mtree_mult1_5_q <= u0_m0_wo0_mtree_mult1_5_s1;

    -- u0_m0_wo0_cm47_lutmem(DUALMEM,302)@13 + 2
    u0_m0_wo0_cm47_lutmem_aa <= u0_m0_wo0_ca51_q;
    u0_m0_wo0_cm47_lutmem_reset0 <= areset;
    u0_m0_wo0_cm47_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 17,
        widthad_a => 8,
        numwords_a => 197,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "REVERB_fir_compiler_ii_0_rtl_core_u0_m0_wo0_cm47_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => '1',
        aclr0 => u0_m0_wo0_cm47_lutmem_reset0,
        clock0 => clk,
        address_a => u0_m0_wo0_cm47_lutmem_aa,
        q_a => u0_m0_wo0_cm47_lutmem_ir
    );
    u0_m0_wo0_cm47_lutmem_r <= u0_m0_wo0_cm47_lutmem_ir(16 downto 0);

    -- u0_m0_wo0_mtree_mult1_4(MULT,184)@15 + 2
    u0_m0_wo0_mtree_mult1_4_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm47_lutmem_r);
    u0_m0_wo0_mtree_mult1_4_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split46_c);
    u0_m0_wo0_mtree_mult1_4_reset <= areset;
    u0_m0_wo0_mtree_mult1_4_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 17,
        lpm_widthb => 12,
        lpm_widthp => 29,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_4_a0,
        datab => u0_m0_wo0_mtree_mult1_4_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_4_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_4_s1
    );
    u0_m0_wo0_mtree_mult1_4_q <= u0_m0_wo0_mtree_mult1_4_s1;

    -- u0_m0_wo0_mtree_add0_2(ADD,191)@17 + 1
    u0_m0_wo0_mtree_add0_2_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((29 downto 29 => u0_m0_wo0_mtree_mult1_4_q(28)) & u0_m0_wo0_mtree_mult1_4_q));
    u0_m0_wo0_mtree_add0_2_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((29 downto 29 => u0_m0_wo0_mtree_mult1_5_q(28)) & u0_m0_wo0_mtree_mult1_5_q));
    u0_m0_wo0_mtree_add0_2_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_2_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_2_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_2_a) + SIGNED(u0_m0_wo0_mtree_add0_2_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_2_q <= u0_m0_wo0_mtree_add0_2_o(29 downto 0);

    -- u0_m0_wo0_mtree_add1_1(ADD,216)@18 + 1
    u0_m0_wo0_mtree_add1_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((30 downto 30 => u0_m0_wo0_mtree_add0_2_q(29)) & u0_m0_wo0_mtree_add0_2_q));
    u0_m0_wo0_mtree_add1_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((30 downto 30 => u0_m0_wo0_mtree_add0_3_q(29)) & u0_m0_wo0_mtree_add0_3_q));
    u0_m0_wo0_mtree_add1_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_1_a) + SIGNED(u0_m0_wo0_mtree_add1_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_1_q <= u0_m0_wo0_mtree_add1_1_o(30 downto 0);

    -- u0_m0_wo0_cm48_lutmem(DUALMEM,303)@13 + 2
    u0_m0_wo0_cm48_lutmem_aa <= u0_m0_wo0_ca51_q;
    u0_m0_wo0_cm48_lutmem_reset0 <= areset;
    u0_m0_wo0_cm48_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 17,
        widthad_a => 8,
        numwords_a => 197,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "REVERB_fir_compiler_ii_0_rtl_core_u0_m0_wo0_cm48_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => '1',
        aclr0 => u0_m0_wo0_cm48_lutmem_reset0,
        clock0 => clk,
        address_a => u0_m0_wo0_cm48_lutmem_aa,
        q_a => u0_m0_wo0_cm48_lutmem_ir
    );
    u0_m0_wo0_cm48_lutmem_r <= u0_m0_wo0_cm48_lutmem_ir(16 downto 0);

    -- u0_m0_wo0_mtree_mult1_3(MULT,185)@15 + 2
    u0_m0_wo0_mtree_mult1_3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm48_lutmem_r);
    u0_m0_wo0_mtree_mult1_3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split46_d);
    u0_m0_wo0_mtree_mult1_3_reset <= areset;
    u0_m0_wo0_mtree_mult1_3_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 17,
        lpm_widthb => 12,
        lpm_widthp => 29,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_3_a0,
        datab => u0_m0_wo0_mtree_mult1_3_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_3_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_3_s1
    );
    u0_m0_wo0_mtree_mult1_3_q <= u0_m0_wo0_mtree_mult1_3_s1;

    -- u0_m0_wo0_wi0_r0_join49(BITJOIN,78)@15
    u0_m0_wo0_wi0_r0_join49_q <= u0_m0_wo0_wi0_r0_split49_c & u0_m0_wo0_wi0_r0_split49_b & u0_m0_wo0_wi0_r0_split46_d;

    -- u0_m0_wo0_wi0_r0_memr49(DUALMEM,80)@15
    u0_m0_wo0_wi0_r0_memr49_ia <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_join49_q);
    u0_m0_wo0_wi0_r0_memr49_aa <= u0_m0_wo0_wi0_r0_wa51_q;
    u0_m0_wo0_wi0_r0_memr49_ab <= u0_m0_wo0_wi0_r0_ra51_resize_b;
    u0_m0_wo0_wi0_r0_memr49_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "DUAL_PORT",
        width_a => 36,
        widthad_a => 8,
        numwords_a => 256,
        width_b => 36,
        widthad_b => 8,
        numwords_b => 256,
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
        address_a => u0_m0_wo0_wi0_r0_memr49_aa,
        data_a => u0_m0_wo0_wi0_r0_memr49_ia,
        wren_a => u0_m0_wo0_wi0_r0_we51_seq_q(0),
        address_b => u0_m0_wo0_wi0_r0_memr49_ab,
        q_b => u0_m0_wo0_wi0_r0_memr49_iq
    );
    u0_m0_wo0_wi0_r0_memr49_q <= u0_m0_wo0_wi0_r0_memr49_iq(35 downto 0);

    -- u0_m0_wo0_wi0_r0_split49(BITSELECT,79)@15
    u0_m0_wo0_wi0_r0_split49_b <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr49_q(11 downto 0));
    u0_m0_wo0_wi0_r0_split49_c <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr49_q(23 downto 12));
    u0_m0_wo0_wi0_r0_split49_d <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr49_q(35 downto 24));

    -- u0_m0_wo0_cm49_lutmem(DUALMEM,304)@13 + 2
    u0_m0_wo0_cm49_lutmem_aa <= u0_m0_wo0_ca51_q;
    u0_m0_wo0_cm49_lutmem_reset0 <= areset;
    u0_m0_wo0_cm49_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 17,
        widthad_a => 8,
        numwords_a => 197,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "REVERB_fir_compiler_ii_0_rtl_core_u0_m0_wo0_cm49_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => '1',
        aclr0 => u0_m0_wo0_cm49_lutmem_reset0,
        clock0 => clk,
        address_a => u0_m0_wo0_cm49_lutmem_aa,
        q_a => u0_m0_wo0_cm49_lutmem_ir
    );
    u0_m0_wo0_cm49_lutmem_r <= u0_m0_wo0_cm49_lutmem_ir(16 downto 0);

    -- u0_m0_wo0_mtree_mult1_2(MULT,186)@15 + 2
    u0_m0_wo0_mtree_mult1_2_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm49_lutmem_r);
    u0_m0_wo0_mtree_mult1_2_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split49_b);
    u0_m0_wo0_mtree_mult1_2_reset <= areset;
    u0_m0_wo0_mtree_mult1_2_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 17,
        lpm_widthb => 12,
        lpm_widthp => 29,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_2_a0,
        datab => u0_m0_wo0_mtree_mult1_2_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_2_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_2_s1
    );
    u0_m0_wo0_mtree_mult1_2_q <= u0_m0_wo0_mtree_mult1_2_s1;

    -- u0_m0_wo0_mtree_add0_1(ADD,190)@17 + 1
    u0_m0_wo0_mtree_add0_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((29 downto 29 => u0_m0_wo0_mtree_mult1_2_q(28)) & u0_m0_wo0_mtree_mult1_2_q));
    u0_m0_wo0_mtree_add0_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((29 downto 29 => u0_m0_wo0_mtree_mult1_3_q(28)) & u0_m0_wo0_mtree_mult1_3_q));
    u0_m0_wo0_mtree_add0_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_1_a) + SIGNED(u0_m0_wo0_mtree_add0_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_1_q <= u0_m0_wo0_mtree_add0_1_o(29 downto 0);

    -- u0_m0_wo0_cm50_lutmem(DUALMEM,305)@13 + 2
    u0_m0_wo0_cm50_lutmem_aa <= u0_m0_wo0_ca51_q;
    u0_m0_wo0_cm50_lutmem_reset0 <= areset;
    u0_m0_wo0_cm50_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 17,
        widthad_a => 8,
        numwords_a => 197,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "REVERB_fir_compiler_ii_0_rtl_core_u0_m0_wo0_cm50_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => '1',
        aclr0 => u0_m0_wo0_cm50_lutmem_reset0,
        clock0 => clk,
        address_a => u0_m0_wo0_cm50_lutmem_aa,
        q_a => u0_m0_wo0_cm50_lutmem_ir
    );
    u0_m0_wo0_cm50_lutmem_r <= u0_m0_wo0_cm50_lutmem_ir(16 downto 0);

    -- u0_m0_wo0_mtree_mult1_1(MULT,187)@15 + 2
    u0_m0_wo0_mtree_mult1_1_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm50_lutmem_r);
    u0_m0_wo0_mtree_mult1_1_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split49_c);
    u0_m0_wo0_mtree_mult1_1_reset <= areset;
    u0_m0_wo0_mtree_mult1_1_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 17,
        lpm_widthb => 12,
        lpm_widthp => 29,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_1_a0,
        datab => u0_m0_wo0_mtree_mult1_1_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_1_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_1_s1
    );
    u0_m0_wo0_mtree_mult1_1_q <= u0_m0_wo0_mtree_mult1_1_s1;

    -- u0_m0_wo0_cm51_lutmem(DUALMEM,306)@13 + 2
    u0_m0_wo0_cm51_lutmem_aa <= u0_m0_wo0_ca51_q;
    u0_m0_wo0_cm51_lutmem_reset0 <= areset;
    u0_m0_wo0_cm51_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 17,
        widthad_a => 8,
        numwords_a => 197,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "REVERB_fir_compiler_ii_0_rtl_core_u0_m0_wo0_cm51_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => '1',
        aclr0 => u0_m0_wo0_cm51_lutmem_reset0,
        clock0 => clk,
        address_a => u0_m0_wo0_cm51_lutmem_aa,
        q_a => u0_m0_wo0_cm51_lutmem_ir
    );
    u0_m0_wo0_cm51_lutmem_r <= u0_m0_wo0_cm51_lutmem_ir(16 downto 0);

    -- u0_m0_wo0_mtree_mult1_0(MULT,188)@15 + 2
    u0_m0_wo0_mtree_mult1_0_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm51_lutmem_r);
    u0_m0_wo0_mtree_mult1_0_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split49_d);
    u0_m0_wo0_mtree_mult1_0_reset <= areset;
    u0_m0_wo0_mtree_mult1_0_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 17,
        lpm_widthb => 12,
        lpm_widthp => 29,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_0_a0,
        datab => u0_m0_wo0_mtree_mult1_0_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_0_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_0_s1
    );
    u0_m0_wo0_mtree_mult1_0_q <= u0_m0_wo0_mtree_mult1_0_s1;

    -- u0_m0_wo0_mtree_add0_0(ADD,189)@17 + 1
    u0_m0_wo0_mtree_add0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((29 downto 29 => u0_m0_wo0_mtree_mult1_0_q(28)) & u0_m0_wo0_mtree_mult1_0_q));
    u0_m0_wo0_mtree_add0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((29 downto 29 => u0_m0_wo0_mtree_mult1_1_q(28)) & u0_m0_wo0_mtree_mult1_1_q));
    u0_m0_wo0_mtree_add0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_0_a) + SIGNED(u0_m0_wo0_mtree_add0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_0_q <= u0_m0_wo0_mtree_add0_0_o(29 downto 0);

    -- u0_m0_wo0_mtree_add1_0(ADD,215)@18 + 1
    u0_m0_wo0_mtree_add1_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((30 downto 30 => u0_m0_wo0_mtree_add0_0_q(29)) & u0_m0_wo0_mtree_add0_0_q));
    u0_m0_wo0_mtree_add1_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((30 downto 30 => u0_m0_wo0_mtree_add0_1_q(29)) & u0_m0_wo0_mtree_add0_1_q));
    u0_m0_wo0_mtree_add1_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_0_a) + SIGNED(u0_m0_wo0_mtree_add1_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_0_q <= u0_m0_wo0_mtree_add1_0_o(30 downto 0);

    -- u0_m0_wo0_mtree_add2_0(ADD,228)@19 + 1
    u0_m0_wo0_mtree_add2_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((31 downto 31 => u0_m0_wo0_mtree_add1_0_q(30)) & u0_m0_wo0_mtree_add1_0_q));
    u0_m0_wo0_mtree_add2_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((31 downto 31 => u0_m0_wo0_mtree_add1_1_q(30)) & u0_m0_wo0_mtree_add1_1_q));
    u0_m0_wo0_mtree_add2_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add2_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add2_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add2_0_a) + SIGNED(u0_m0_wo0_mtree_add2_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add2_0_q <= u0_m0_wo0_mtree_add2_0_o(31 downto 0);

    -- u0_m0_wo0_mtree_add3_0(ADD,234)@20 + 1
    u0_m0_wo0_mtree_add3_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((32 downto 32 => u0_m0_wo0_mtree_add2_0_q(31)) & u0_m0_wo0_mtree_add2_0_q));
    u0_m0_wo0_mtree_add3_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((32 downto 32 => u0_m0_wo0_mtree_add2_1_q(31)) & u0_m0_wo0_mtree_add2_1_q));
    u0_m0_wo0_mtree_add3_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add3_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add3_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add3_0_a) + SIGNED(u0_m0_wo0_mtree_add3_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add3_0_q <= u0_m0_wo0_mtree_add3_0_o(32 downto 0);

    -- u0_m0_wo0_mtree_add4_0(ADD,237)@21 + 1
    u0_m0_wo0_mtree_add4_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 33 => u0_m0_wo0_mtree_add3_0_q(32)) & u0_m0_wo0_mtree_add3_0_q));
    u0_m0_wo0_mtree_add4_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 33 => u0_m0_wo0_mtree_add3_1_q(32)) & u0_m0_wo0_mtree_add3_1_q));
    u0_m0_wo0_mtree_add4_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add4_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add4_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add4_0_a) + SIGNED(u0_m0_wo0_mtree_add4_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add4_0_q <= u0_m0_wo0_mtree_add4_0_o(33 downto 0);

    -- u0_m0_wo0_mtree_add5_0(ADD,239)@22 + 1
    u0_m0_wo0_mtree_add5_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((34 downto 34 => u0_m0_wo0_mtree_add4_0_q(33)) & u0_m0_wo0_mtree_add4_0_q));
    u0_m0_wo0_mtree_add5_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((34 downto 34 => u0_m0_wo0_mtree_add4_1_q(33)) & u0_m0_wo0_mtree_add4_1_q));
    u0_m0_wo0_mtree_add5_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add5_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add5_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add5_0_a) + SIGNED(u0_m0_wo0_mtree_add5_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add5_0_q <= u0_m0_wo0_mtree_add5_0_o(34 downto 0);

    -- u0_m0_wo0_accum(ADD,241)@23 + 1
    u0_m0_wo0_accum_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((42 downto 35 => u0_m0_wo0_mtree_add5_0_q(34)) & u0_m0_wo0_mtree_add5_0_q));
    u0_m0_wo0_accum_b <= STD_LOGIC_VECTOR(u0_m0_wo0_accum_q);
    u0_m0_wo0_accum_i <= u0_m0_wo0_accum_a;
    u0_m0_wo0_accum_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_accum_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (d_u0_m0_wo0_compute_q_23_q = "1") THEN
                IF (u0_m0_wo0_aseq_q = "1") THEN
                    u0_m0_wo0_accum_o <= u0_m0_wo0_accum_i;
                ELSE
                    u0_m0_wo0_accum_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_accum_a) + SIGNED(u0_m0_wo0_accum_b));
                END IF;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_accum_q <= u0_m0_wo0_accum_o(42 downto 0);

    -- GND(CONSTANT,0)@0
    GND_q <= "0";

    -- u0_m0_wo0_oseq(SEQUENCE,242)@22 + 1
    u0_m0_wo0_oseq_clkproc: PROCESS (clk, areset)
        variable u0_m0_wo0_oseq_c : SIGNED(9 downto 0);
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_oseq_c := "0011000100";
            u0_m0_wo0_oseq_q <= "0";
            u0_m0_wo0_oseq_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (d_u0_m0_wo0_compute_q_22_q = "1") THEN
                IF (u0_m0_wo0_oseq_c = "0000000000") THEN
                    u0_m0_wo0_oseq_eq <= '1';
                ELSE
                    u0_m0_wo0_oseq_eq <= '0';
                END IF;
                IF (u0_m0_wo0_oseq_eq = '1') THEN
                    u0_m0_wo0_oseq_c := u0_m0_wo0_oseq_c + 196;
                ELSE
                    u0_m0_wo0_oseq_c := u0_m0_wo0_oseq_c - 1;
                END IF;
                u0_m0_wo0_oseq_q <= STD_LOGIC_VECTOR(u0_m0_wo0_oseq_c(9 downto 9));
            END IF;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_oseq_gated(LOGICAL,243)@23
    u0_m0_wo0_oseq_gated_q <= u0_m0_wo0_oseq_q and d_u0_m0_wo0_compute_q_23_q;

    -- u0_m0_wo0_oseq_gated_reg(REG,244)@23 + 1
    u0_m0_wo0_oseq_gated_reg_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_oseq_gated_reg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_oseq_gated_reg_q <= STD_LOGIC_VECTOR(u0_m0_wo0_oseq_gated_q);
        END IF;
    END PROCESS;

    -- xOut(PORTOUT,249)@24 + 1
    xOut_v <= u0_m0_wo0_oseq_gated_reg_q;
    xOut_c <= STD_LOGIC_VECTOR("0000000" & GND_q);
    xOut_0 <= u0_m0_wo0_accum_q;

END normal;
