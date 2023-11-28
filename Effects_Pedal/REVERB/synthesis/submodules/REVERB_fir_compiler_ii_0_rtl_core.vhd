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
-- VHDL created on Mon Nov 27 23:33:37 2023


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
        xIn_0 : in std_logic_vector(15 downto 0);  -- sfix16
        xOut_v : out std_logic_vector(0 downto 0);  -- ufix1
        xOut_c : out std_logic_vector(7 downto 0);  -- ufix8
        xOut_0 : out std_logic_vector(61 downto 0);  -- sfix62
        clk : in std_logic;
        areset : in std_logic
    );
end REVERB_fir_compiler_ii_0_rtl_core;

architecture normal of REVERB_fir_compiler_ii_0_rtl_core is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_xIn_0_15_q : STD_LOGIC_VECTOR (15 downto 0);
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
    signal d_u0_m0_wo0_compute_q_23_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_u0_m0_wo0_compute_q_24_q : STD_LOGIC_VECTOR (0 downto 0);
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
    signal u0_m0_wo0_wi0_r0_memr0_ia : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_wi0_r0_memr0_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_memr0_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_memr0_iq : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_wi0_r0_memr0_q : STD_LOGIC_VECTOR (15 downto 0);
    signal d_u0_m0_wo0_wi0_r0_memr0_q_17_q : STD_LOGIC_VECTOR (15 downto 0);
    signal d_u0_m0_wo0_wi0_r0_split1_d_17_q : STD_LOGIC_VECTOR (15 downto 0);
    signal d_u0_m0_wo0_wi0_r0_split1_c_17_q : STD_LOGIC_VECTOR (15 downto 0);
    signal d_u0_m0_wo0_wi0_r0_split1_b_17_q : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_wi0_r0_memr1_reset0 : std_logic;
    signal u0_m0_wo0_wi0_r0_memr1_ia : STD_LOGIC_VECTOR (63 downto 0);
    signal u0_m0_wo0_wi0_r0_memr1_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_memr1_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_memr1_iq : STD_LOGIC_VECTOR (63 downto 0);
    signal u0_m0_wo0_wi0_r0_memr1_q : STD_LOGIC_VECTOR (63 downto 0);
    signal u0_m0_wo0_wi0_r0_memr5_reset0 : std_logic;
    signal u0_m0_wo0_wi0_r0_memr5_ia : STD_LOGIC_VECTOR (63 downto 0);
    signal u0_m0_wo0_wi0_r0_memr5_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_memr5_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_memr5_iq : STD_LOGIC_VECTOR (63 downto 0);
    signal u0_m0_wo0_wi0_r0_memr5_q : STD_LOGIC_VECTOR (63 downto 0);
    signal u0_m0_wo0_wi0_r0_memr9_reset0 : std_logic;
    signal u0_m0_wo0_wi0_r0_memr9_ia : STD_LOGIC_VECTOR (63 downto 0);
    signal u0_m0_wo0_wi0_r0_memr9_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_memr9_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_memr9_iq : STD_LOGIC_VECTOR (63 downto 0);
    signal u0_m0_wo0_wi0_r0_memr9_q : STD_LOGIC_VECTOR (63 downto 0);
    signal u0_m0_wo0_wi0_r0_memr13_reset0 : std_logic;
    signal u0_m0_wo0_wi0_r0_memr13_ia : STD_LOGIC_VECTOR (63 downto 0);
    signal u0_m0_wo0_wi0_r0_memr13_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_memr13_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_memr13_iq : STD_LOGIC_VECTOR (63 downto 0);
    signal u0_m0_wo0_wi0_r0_memr13_q : STD_LOGIC_VECTOR (63 downto 0);
    signal u0_m0_wo0_wi0_r0_memr17_reset0 : std_logic;
    signal u0_m0_wo0_wi0_r0_memr17_ia : STD_LOGIC_VECTOR (63 downto 0);
    signal u0_m0_wo0_wi0_r0_memr17_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_memr17_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_memr17_iq : STD_LOGIC_VECTOR (63 downto 0);
    signal u0_m0_wo0_wi0_r0_memr17_q : STD_LOGIC_VECTOR (63 downto 0);
    signal u0_m0_wo0_wi0_r0_memr21_reset0 : std_logic;
    signal u0_m0_wo0_wi0_r0_memr21_ia : STD_LOGIC_VECTOR (63 downto 0);
    signal u0_m0_wo0_wi0_r0_memr21_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_memr21_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_memr21_iq : STD_LOGIC_VECTOR (63 downto 0);
    signal u0_m0_wo0_wi0_r0_memr21_q : STD_LOGIC_VECTOR (63 downto 0);
    signal u0_m0_wo0_wi0_r0_memr25_reset0 : std_logic;
    signal u0_m0_wo0_wi0_r0_memr25_ia : STD_LOGIC_VECTOR (63 downto 0);
    signal u0_m0_wo0_wi0_r0_memr25_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_memr25_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_memr25_iq : STD_LOGIC_VECTOR (63 downto 0);
    signal u0_m0_wo0_wi0_r0_memr25_q : STD_LOGIC_VECTOR (63 downto 0);
    signal u0_m0_wo0_wi0_r0_memr29_reset0 : std_logic;
    signal u0_m0_wo0_wi0_r0_memr29_ia : STD_LOGIC_VECTOR (63 downto 0);
    signal u0_m0_wo0_wi0_r0_memr29_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_memr29_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_memr29_iq : STD_LOGIC_VECTOR (63 downto 0);
    signal u0_m0_wo0_wi0_r0_memr29_q : STD_LOGIC_VECTOR (63 downto 0);
    signal u0_m0_wo0_wi0_r0_memr33_reset0 : std_logic;
    signal u0_m0_wo0_wi0_r0_memr33_ia : STD_LOGIC_VECTOR (63 downto 0);
    signal u0_m0_wo0_wi0_r0_memr33_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_memr33_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_memr33_iq : STD_LOGIC_VECTOR (63 downto 0);
    signal u0_m0_wo0_wi0_r0_memr33_q : STD_LOGIC_VECTOR (63 downto 0);
    signal u0_m0_wo0_wi0_r0_memr37_reset0 : std_logic;
    signal u0_m0_wo0_wi0_r0_memr37_ia : STD_LOGIC_VECTOR (63 downto 0);
    signal u0_m0_wo0_wi0_r0_memr37_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_memr37_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_memr37_iq : STD_LOGIC_VECTOR (63 downto 0);
    signal u0_m0_wo0_wi0_r0_memr37_q : STD_LOGIC_VECTOR (63 downto 0);
    signal u0_m0_wo0_wi0_r0_memr41_reset0 : std_logic;
    signal u0_m0_wo0_wi0_r0_memr41_ia : STD_LOGIC_VECTOR (63 downto 0);
    signal u0_m0_wo0_wi0_r0_memr41_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_memr41_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_memr41_iq : STD_LOGIC_VECTOR (63 downto 0);
    signal u0_m0_wo0_wi0_r0_memr41_q : STD_LOGIC_VECTOR (63 downto 0);
    signal u0_m0_wo0_wi0_r0_memr45_reset0 : std_logic;
    signal u0_m0_wo0_wi0_r0_memr45_ia : STD_LOGIC_VECTOR (63 downto 0);
    signal u0_m0_wo0_wi0_r0_memr45_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_memr45_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_memr45_iq : STD_LOGIC_VECTOR (63 downto 0);
    signal u0_m0_wo0_wi0_r0_memr45_q : STD_LOGIC_VECTOR (63 downto 0);
    signal u0_m0_wo0_wi0_r0_memr49_reset0 : std_logic;
    signal u0_m0_wo0_wi0_r0_memr49_ia : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_wi0_r0_memr49_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_memr49_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_memr49_iq : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_wi0_r0_memr49_q : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_ca51_q : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_ca51_i : UNSIGNED (7 downto 0);
    attribute preserve of u0_m0_wo0_ca51_i : signal is true;
    signal u0_m0_wo0_ca51_eq : std_logic;
    attribute preserve of u0_m0_wo0_ca51_eq : signal is true;
    signal d_u0_m0_wo0_ca51_q_15_q : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_mtree_add0_0_a : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add0_0_b : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add0_0_o : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add0_0_q : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add0_1_a : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add0_1_b : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add0_1_o : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add0_1_q : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add0_2_a : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add0_2_b : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add0_2_o : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add0_2_q : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add0_3_a : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add0_3_b : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add0_3_o : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add0_3_q : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add0_4_a : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add0_4_b : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add0_4_o : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add0_4_q : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add0_5_a : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add0_5_b : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add0_5_o : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add0_5_q : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add0_6_a : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add0_6_b : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add0_6_o : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add0_6_q : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add0_7_a : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add0_7_b : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add0_7_o : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add0_7_q : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add0_8_a : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add0_8_b : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add0_8_o : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add0_8_q : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add0_9_a : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add0_9_b : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add0_9_o : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add0_9_q : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add0_10_a : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add0_10_b : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add0_10_o : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add0_10_q : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add0_11_a : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add0_11_b : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add0_11_o : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add0_11_q : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add0_12_a : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add0_12_b : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add0_12_o : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add0_12_q : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add0_13_a : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add0_13_b : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add0_13_o : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add0_13_q : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add0_14_a : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add0_14_b : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add0_14_o : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add0_14_q : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add0_15_a : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add0_15_b : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add0_15_o : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add0_15_q : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add0_16_a : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add0_16_b : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add0_16_o : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add0_16_q : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add0_17_a : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add0_17_b : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add0_17_o : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add0_17_q : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add0_18_a : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add0_18_b : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add0_18_o : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add0_18_q : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add0_19_a : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add0_19_b : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add0_19_o : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add0_19_q : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add0_20_a : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add0_20_b : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add0_20_o : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add0_20_q : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add0_21_a : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add0_21_b : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add0_21_o : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add0_21_q : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add0_22_a : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add0_22_b : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add0_22_o : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add0_22_q : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add0_23_a : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add0_23_b : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add0_23_o : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add0_23_q : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add0_24_a : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add0_24_b : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add0_24_o : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add0_24_q : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add0_25_a : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add0_25_b : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add0_25_o : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add0_25_q : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_add1_0_a : STD_LOGIC_VECTOR (49 downto 0);
    signal u0_m0_wo0_mtree_add1_0_b : STD_LOGIC_VECTOR (49 downto 0);
    signal u0_m0_wo0_mtree_add1_0_o : STD_LOGIC_VECTOR (49 downto 0);
    signal u0_m0_wo0_mtree_add1_0_q : STD_LOGIC_VECTOR (49 downto 0);
    signal u0_m0_wo0_mtree_add1_1_a : STD_LOGIC_VECTOR (49 downto 0);
    signal u0_m0_wo0_mtree_add1_1_b : STD_LOGIC_VECTOR (49 downto 0);
    signal u0_m0_wo0_mtree_add1_1_o : STD_LOGIC_VECTOR (49 downto 0);
    signal u0_m0_wo0_mtree_add1_1_q : STD_LOGIC_VECTOR (49 downto 0);
    signal u0_m0_wo0_mtree_add1_2_a : STD_LOGIC_VECTOR (49 downto 0);
    signal u0_m0_wo0_mtree_add1_2_b : STD_LOGIC_VECTOR (49 downto 0);
    signal u0_m0_wo0_mtree_add1_2_o : STD_LOGIC_VECTOR (49 downto 0);
    signal u0_m0_wo0_mtree_add1_2_q : STD_LOGIC_VECTOR (49 downto 0);
    signal u0_m0_wo0_mtree_add1_3_a : STD_LOGIC_VECTOR (49 downto 0);
    signal u0_m0_wo0_mtree_add1_3_b : STD_LOGIC_VECTOR (49 downto 0);
    signal u0_m0_wo0_mtree_add1_3_o : STD_LOGIC_VECTOR (49 downto 0);
    signal u0_m0_wo0_mtree_add1_3_q : STD_LOGIC_VECTOR (49 downto 0);
    signal u0_m0_wo0_mtree_add1_4_a : STD_LOGIC_VECTOR (49 downto 0);
    signal u0_m0_wo0_mtree_add1_4_b : STD_LOGIC_VECTOR (49 downto 0);
    signal u0_m0_wo0_mtree_add1_4_o : STD_LOGIC_VECTOR (49 downto 0);
    signal u0_m0_wo0_mtree_add1_4_q : STD_LOGIC_VECTOR (49 downto 0);
    signal u0_m0_wo0_mtree_add1_5_a : STD_LOGIC_VECTOR (49 downto 0);
    signal u0_m0_wo0_mtree_add1_5_b : STD_LOGIC_VECTOR (49 downto 0);
    signal u0_m0_wo0_mtree_add1_5_o : STD_LOGIC_VECTOR (49 downto 0);
    signal u0_m0_wo0_mtree_add1_5_q : STD_LOGIC_VECTOR (49 downto 0);
    signal u0_m0_wo0_mtree_add1_6_a : STD_LOGIC_VECTOR (49 downto 0);
    signal u0_m0_wo0_mtree_add1_6_b : STD_LOGIC_VECTOR (49 downto 0);
    signal u0_m0_wo0_mtree_add1_6_o : STD_LOGIC_VECTOR (49 downto 0);
    signal u0_m0_wo0_mtree_add1_6_q : STD_LOGIC_VECTOR (49 downto 0);
    signal u0_m0_wo0_mtree_add1_7_a : STD_LOGIC_VECTOR (49 downto 0);
    signal u0_m0_wo0_mtree_add1_7_b : STD_LOGIC_VECTOR (49 downto 0);
    signal u0_m0_wo0_mtree_add1_7_o : STD_LOGIC_VECTOR (49 downto 0);
    signal u0_m0_wo0_mtree_add1_7_q : STD_LOGIC_VECTOR (49 downto 0);
    signal u0_m0_wo0_mtree_add1_8_a : STD_LOGIC_VECTOR (49 downto 0);
    signal u0_m0_wo0_mtree_add1_8_b : STD_LOGIC_VECTOR (49 downto 0);
    signal u0_m0_wo0_mtree_add1_8_o : STD_LOGIC_VECTOR (49 downto 0);
    signal u0_m0_wo0_mtree_add1_8_q : STD_LOGIC_VECTOR (49 downto 0);
    signal u0_m0_wo0_mtree_add1_9_a : STD_LOGIC_VECTOR (49 downto 0);
    signal u0_m0_wo0_mtree_add1_9_b : STD_LOGIC_VECTOR (49 downto 0);
    signal u0_m0_wo0_mtree_add1_9_o : STD_LOGIC_VECTOR (49 downto 0);
    signal u0_m0_wo0_mtree_add1_9_q : STD_LOGIC_VECTOR (49 downto 0);
    signal u0_m0_wo0_mtree_add1_10_a : STD_LOGIC_VECTOR (49 downto 0);
    signal u0_m0_wo0_mtree_add1_10_b : STD_LOGIC_VECTOR (49 downto 0);
    signal u0_m0_wo0_mtree_add1_10_o : STD_LOGIC_VECTOR (49 downto 0);
    signal u0_m0_wo0_mtree_add1_10_q : STD_LOGIC_VECTOR (49 downto 0);
    signal u0_m0_wo0_mtree_add1_11_a : STD_LOGIC_VECTOR (49 downto 0);
    signal u0_m0_wo0_mtree_add1_11_b : STD_LOGIC_VECTOR (49 downto 0);
    signal u0_m0_wo0_mtree_add1_11_o : STD_LOGIC_VECTOR (49 downto 0);
    signal u0_m0_wo0_mtree_add1_11_q : STD_LOGIC_VECTOR (49 downto 0);
    signal u0_m0_wo0_mtree_add1_12_a : STD_LOGIC_VECTOR (49 downto 0);
    signal u0_m0_wo0_mtree_add1_12_b : STD_LOGIC_VECTOR (49 downto 0);
    signal u0_m0_wo0_mtree_add1_12_o : STD_LOGIC_VECTOR (49 downto 0);
    signal u0_m0_wo0_mtree_add1_12_q : STD_LOGIC_VECTOR (49 downto 0);
    signal u0_m0_wo0_mtree_add2_0_a : STD_LOGIC_VECTOR (50 downto 0);
    signal u0_m0_wo0_mtree_add2_0_b : STD_LOGIC_VECTOR (50 downto 0);
    signal u0_m0_wo0_mtree_add2_0_o : STD_LOGIC_VECTOR (50 downto 0);
    signal u0_m0_wo0_mtree_add2_0_q : STD_LOGIC_VECTOR (50 downto 0);
    signal u0_m0_wo0_mtree_add2_1_a : STD_LOGIC_VECTOR (50 downto 0);
    signal u0_m0_wo0_mtree_add2_1_b : STD_LOGIC_VECTOR (50 downto 0);
    signal u0_m0_wo0_mtree_add2_1_o : STD_LOGIC_VECTOR (50 downto 0);
    signal u0_m0_wo0_mtree_add2_1_q : STD_LOGIC_VECTOR (50 downto 0);
    signal u0_m0_wo0_mtree_add2_2_a : STD_LOGIC_VECTOR (50 downto 0);
    signal u0_m0_wo0_mtree_add2_2_b : STD_LOGIC_VECTOR (50 downto 0);
    signal u0_m0_wo0_mtree_add2_2_o : STD_LOGIC_VECTOR (50 downto 0);
    signal u0_m0_wo0_mtree_add2_2_q : STD_LOGIC_VECTOR (50 downto 0);
    signal u0_m0_wo0_mtree_add2_3_a : STD_LOGIC_VECTOR (50 downto 0);
    signal u0_m0_wo0_mtree_add2_3_b : STD_LOGIC_VECTOR (50 downto 0);
    signal u0_m0_wo0_mtree_add2_3_o : STD_LOGIC_VECTOR (50 downto 0);
    signal u0_m0_wo0_mtree_add2_3_q : STD_LOGIC_VECTOR (50 downto 0);
    signal u0_m0_wo0_mtree_add2_4_a : STD_LOGIC_VECTOR (50 downto 0);
    signal u0_m0_wo0_mtree_add2_4_b : STD_LOGIC_VECTOR (50 downto 0);
    signal u0_m0_wo0_mtree_add2_4_o : STD_LOGIC_VECTOR (50 downto 0);
    signal u0_m0_wo0_mtree_add2_4_q : STD_LOGIC_VECTOR (50 downto 0);
    signal u0_m0_wo0_mtree_add2_5_a : STD_LOGIC_VECTOR (50 downto 0);
    signal u0_m0_wo0_mtree_add2_5_b : STD_LOGIC_VECTOR (50 downto 0);
    signal u0_m0_wo0_mtree_add2_5_o : STD_LOGIC_VECTOR (50 downto 0);
    signal u0_m0_wo0_mtree_add2_5_q : STD_LOGIC_VECTOR (50 downto 0);
    signal u0_m0_wo0_mtree_add3_0_a : STD_LOGIC_VECTOR (51 downto 0);
    signal u0_m0_wo0_mtree_add3_0_b : STD_LOGIC_VECTOR (51 downto 0);
    signal u0_m0_wo0_mtree_add3_0_o : STD_LOGIC_VECTOR (51 downto 0);
    signal u0_m0_wo0_mtree_add3_0_q : STD_LOGIC_VECTOR (51 downto 0);
    signal u0_m0_wo0_mtree_add3_1_a : STD_LOGIC_VECTOR (51 downto 0);
    signal u0_m0_wo0_mtree_add3_1_b : STD_LOGIC_VECTOR (51 downto 0);
    signal u0_m0_wo0_mtree_add3_1_o : STD_LOGIC_VECTOR (51 downto 0);
    signal u0_m0_wo0_mtree_add3_1_q : STD_LOGIC_VECTOR (51 downto 0);
    signal u0_m0_wo0_mtree_add3_2_a : STD_LOGIC_VECTOR (51 downto 0);
    signal u0_m0_wo0_mtree_add3_2_b : STD_LOGIC_VECTOR (51 downto 0);
    signal u0_m0_wo0_mtree_add3_2_o : STD_LOGIC_VECTOR (51 downto 0);
    signal u0_m0_wo0_mtree_add3_2_q : STD_LOGIC_VECTOR (51 downto 0);
    signal u0_m0_wo0_mtree_add4_0_a : STD_LOGIC_VECTOR (52 downto 0);
    signal u0_m0_wo0_mtree_add4_0_b : STD_LOGIC_VECTOR (52 downto 0);
    signal u0_m0_wo0_mtree_add4_0_o : STD_LOGIC_VECTOR (52 downto 0);
    signal u0_m0_wo0_mtree_add4_0_q : STD_LOGIC_VECTOR (52 downto 0);
    signal u0_m0_wo0_mtree_add4_1_a : STD_LOGIC_VECTOR (52 downto 0);
    signal u0_m0_wo0_mtree_add4_1_b : STD_LOGIC_VECTOR (52 downto 0);
    signal u0_m0_wo0_mtree_add4_1_o : STD_LOGIC_VECTOR (52 downto 0);
    signal u0_m0_wo0_mtree_add4_1_q : STD_LOGIC_VECTOR (52 downto 0);
    signal u0_m0_wo0_mtree_add5_0_a : STD_LOGIC_VECTOR (53 downto 0);
    signal u0_m0_wo0_mtree_add5_0_b : STD_LOGIC_VECTOR (53 downto 0);
    signal u0_m0_wo0_mtree_add5_0_o : STD_LOGIC_VECTOR (53 downto 0);
    signal u0_m0_wo0_mtree_add5_0_q : STD_LOGIC_VECTOR (53 downto 0);
    signal u0_m0_wo0_aseq_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_aseq_eq : std_logic;
    signal u0_m0_wo0_accum_a : STD_LOGIC_VECTOR (61 downto 0);
    signal u0_m0_wo0_accum_b : STD_LOGIC_VECTOR (61 downto 0);
    signal u0_m0_wo0_accum_i : STD_LOGIC_VECTOR (61 downto 0);
    signal u0_m0_wo0_accum_o : STD_LOGIC_VECTOR (61 downto 0);
    signal u0_m0_wo0_accum_q : STD_LOGIC_VECTOR (61 downto 0);
    signal u0_m0_wo0_oseq_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_oseq_eq : std_logic;
    signal u0_m0_wo0_oseq_gated_reg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi0_r0_ra51_count1_lut_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_wi0_r0_ra51_count1_lut_lutmem_ia : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_wi0_r0_ra51_count1_lut_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_ra51_count1_lut_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_ra51_count1_lut_lutmem_ir : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_wi0_r0_ra51_count1_lut_lutmem_r : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_cm0_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm0_lutmem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm0_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm0_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm0_lutmem_ir : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm0_lutmem_r : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm1_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm1_lutmem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm1_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm1_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm1_lutmem_ir : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm1_lutmem_r : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm2_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm2_lutmem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm2_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm2_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm2_lutmem_ir : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm2_lutmem_r : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm3_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm3_lutmem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm3_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm3_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm3_lutmem_ir : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm3_lutmem_r : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm4_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm4_lutmem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm4_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm4_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm4_lutmem_ir : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm4_lutmem_r : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm5_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm5_lutmem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm5_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm5_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm5_lutmem_ir : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm5_lutmem_r : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm6_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm6_lutmem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm6_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm6_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm6_lutmem_ir : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm6_lutmem_r : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm7_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm7_lutmem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm7_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm7_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm7_lutmem_ir : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm7_lutmem_r : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm8_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm8_lutmem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm8_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm8_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm8_lutmem_ir : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm8_lutmem_r : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm9_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm9_lutmem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm9_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm9_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm9_lutmem_ir : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm9_lutmem_r : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm10_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm10_lutmem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm10_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm10_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm10_lutmem_ir : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm10_lutmem_r : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm11_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm11_lutmem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm11_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm11_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm11_lutmem_ir : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm11_lutmem_r : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm12_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm12_lutmem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm12_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm12_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm12_lutmem_ir : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm12_lutmem_r : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm13_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm13_lutmem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm13_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm13_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm13_lutmem_ir : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm13_lutmem_r : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm14_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm14_lutmem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm14_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm14_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm14_lutmem_ir : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm14_lutmem_r : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm15_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm15_lutmem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm15_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm15_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm15_lutmem_ir : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm15_lutmem_r : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm16_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm16_lutmem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm16_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm16_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm16_lutmem_ir : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm16_lutmem_r : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm17_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm17_lutmem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm17_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm17_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm17_lutmem_ir : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm17_lutmem_r : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm18_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm18_lutmem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm18_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm18_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm18_lutmem_ir : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm18_lutmem_r : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm19_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm19_lutmem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm19_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm19_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm19_lutmem_ir : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm19_lutmem_r : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm20_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm20_lutmem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm20_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm20_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm20_lutmem_ir : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm20_lutmem_r : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm21_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm21_lutmem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm21_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm21_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm21_lutmem_ir : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm21_lutmem_r : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm22_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm22_lutmem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm22_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm22_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm22_lutmem_ir : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm22_lutmem_r : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm23_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm23_lutmem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm23_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm23_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm23_lutmem_ir : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm23_lutmem_r : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm24_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm24_lutmem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm24_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm24_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm24_lutmem_ir : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm24_lutmem_r : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm25_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm25_lutmem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm25_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm25_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm25_lutmem_ir : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm25_lutmem_r : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm26_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm26_lutmem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm26_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm26_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm26_lutmem_ir : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm26_lutmem_r : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm27_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm27_lutmem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm27_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm27_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm27_lutmem_ir : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm27_lutmem_r : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm28_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm28_lutmem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm28_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm28_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm28_lutmem_ir : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm28_lutmem_r : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm29_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm29_lutmem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm29_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm29_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm29_lutmem_ir : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm29_lutmem_r : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm30_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm30_lutmem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm30_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm30_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm30_lutmem_ir : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm30_lutmem_r : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm31_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm31_lutmem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm31_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm31_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm31_lutmem_ir : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm31_lutmem_r : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm32_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm32_lutmem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm32_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm32_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm32_lutmem_ir : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm32_lutmem_r : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm33_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm33_lutmem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm33_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm33_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm33_lutmem_ir : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm33_lutmem_r : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm34_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm34_lutmem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm34_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm34_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm34_lutmem_ir : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm34_lutmem_r : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm35_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm35_lutmem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm35_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm35_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm35_lutmem_ir : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm35_lutmem_r : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm36_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm36_lutmem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm36_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm36_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm36_lutmem_ir : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm36_lutmem_r : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm37_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm37_lutmem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm37_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm37_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm37_lutmem_ir : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm37_lutmem_r : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm38_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm38_lutmem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm38_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm38_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm38_lutmem_ir : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm38_lutmem_r : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm39_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm39_lutmem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm39_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm39_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm39_lutmem_ir : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm39_lutmem_r : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm40_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm40_lutmem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm40_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm40_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm40_lutmem_ir : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm40_lutmem_r : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm41_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm41_lutmem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm41_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm41_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm41_lutmem_ir : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm41_lutmem_r : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm42_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm42_lutmem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm42_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm42_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm42_lutmem_ir : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm42_lutmem_r : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm43_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm43_lutmem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm43_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm43_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm43_lutmem_ir : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm43_lutmem_r : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm44_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm44_lutmem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm44_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm44_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm44_lutmem_ir : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm44_lutmem_r : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm45_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm45_lutmem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm45_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm45_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm45_lutmem_ir : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm45_lutmem_r : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm46_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm46_lutmem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm46_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm46_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm46_lutmem_ir : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm46_lutmem_r : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm47_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm47_lutmem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm47_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm47_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm47_lutmem_ir : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm47_lutmem_r : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm48_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm48_lutmem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm48_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm48_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm48_lutmem_ir : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm48_lutmem_r : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm49_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm49_lutmem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm49_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm49_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm49_lutmem_ir : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm49_lutmem_r : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm50_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm50_lutmem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm50_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm50_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm50_lutmem_ir : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm50_lutmem_r : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm51_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm51_lutmem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm51_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm51_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm51_lutmem_ir : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_cm51_lutmem_r : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_mtree_mult1_51_im0_a0 : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_51_im0_b0 : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_51_im0_s1 : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_mult1_51_im0_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_51_im0_q : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_mult1_51_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_51_im3_b0 : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_51_im3_s1 : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_51_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_51_im3_q : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_51_result_add_0_0_a : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_51_result_add_0_0_b : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_51_result_add_0_0_o : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_51_result_add_0_0_q : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_50_im0_a0 : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_50_im0_b0 : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_50_im0_s1 : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_mult1_50_im0_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_50_im0_q : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_mult1_50_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_50_im3_b0 : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_50_im3_s1 : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_50_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_50_im3_q : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_50_result_add_0_0_a : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_50_result_add_0_0_b : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_50_result_add_0_0_o : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_50_result_add_0_0_q : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_49_im0_a0 : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_49_im0_b0 : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_49_im0_s1 : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_mult1_49_im0_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_49_im0_q : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_mult1_49_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_49_im3_b0 : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_49_im3_s1 : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_49_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_49_im3_q : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_49_result_add_0_0_a : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_49_result_add_0_0_b : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_49_result_add_0_0_o : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_49_result_add_0_0_q : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_48_im0_a0 : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_48_im0_b0 : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_48_im0_s1 : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_mult1_48_im0_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_48_im0_q : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_mult1_48_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_48_im3_b0 : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_48_im3_s1 : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_48_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_48_im3_q : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_48_result_add_0_0_a : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_48_result_add_0_0_b : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_48_result_add_0_0_o : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_48_result_add_0_0_q : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_47_im0_a0 : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_47_im0_b0 : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_47_im0_s1 : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_mult1_47_im0_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_47_im0_q : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_mult1_47_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_47_im3_b0 : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_47_im3_s1 : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_47_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_47_im3_q : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_47_result_add_0_0_a : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_47_result_add_0_0_b : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_47_result_add_0_0_o : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_47_result_add_0_0_q : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_46_im0_a0 : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_46_im0_b0 : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_46_im0_s1 : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_mult1_46_im0_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_46_im0_q : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_mult1_46_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_46_im3_b0 : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_46_im3_s1 : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_46_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_46_im3_q : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_46_result_add_0_0_a : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_46_result_add_0_0_b : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_46_result_add_0_0_o : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_46_result_add_0_0_q : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_45_im0_a0 : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_45_im0_b0 : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_45_im0_s1 : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_mult1_45_im0_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_45_im0_q : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_mult1_45_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_45_im3_b0 : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_45_im3_s1 : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_45_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_45_im3_q : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_45_result_add_0_0_a : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_45_result_add_0_0_b : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_45_result_add_0_0_o : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_45_result_add_0_0_q : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_44_im0_a0 : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_44_im0_b0 : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_44_im0_s1 : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_mult1_44_im0_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_44_im0_q : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_mult1_44_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_44_im3_b0 : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_44_im3_s1 : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_44_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_44_im3_q : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_44_result_add_0_0_a : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_44_result_add_0_0_b : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_44_result_add_0_0_o : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_44_result_add_0_0_q : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_43_im0_a0 : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_43_im0_b0 : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_43_im0_s1 : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_mult1_43_im0_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_43_im0_q : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_mult1_43_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_43_im3_b0 : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_43_im3_s1 : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_43_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_43_im3_q : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_43_result_add_0_0_a : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_43_result_add_0_0_b : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_43_result_add_0_0_o : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_43_result_add_0_0_q : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_42_im0_a0 : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_42_im0_b0 : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_42_im0_s1 : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_mult1_42_im0_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_42_im0_q : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_mult1_42_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_42_im3_b0 : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_42_im3_s1 : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_42_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_42_im3_q : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_42_result_add_0_0_a : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_42_result_add_0_0_b : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_42_result_add_0_0_o : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_42_result_add_0_0_q : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_41_im0_a0 : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_41_im0_b0 : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_41_im0_s1 : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_mult1_41_im0_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_41_im0_q : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_mult1_41_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_41_im3_b0 : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_41_im3_s1 : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_41_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_41_im3_q : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_41_result_add_0_0_a : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_41_result_add_0_0_b : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_41_result_add_0_0_o : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_41_result_add_0_0_q : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_40_im0_a0 : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_40_im0_b0 : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_40_im0_s1 : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_mult1_40_im0_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_40_im0_q : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_mult1_40_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_40_im3_b0 : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_40_im3_s1 : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_40_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_40_im3_q : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_40_result_add_0_0_a : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_40_result_add_0_0_b : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_40_result_add_0_0_o : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_40_result_add_0_0_q : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_39_im0_a0 : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_39_im0_b0 : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_39_im0_s1 : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_mult1_39_im0_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_39_im0_q : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_mult1_39_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_39_im3_b0 : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_39_im3_s1 : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_39_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_39_im3_q : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_39_result_add_0_0_a : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_39_result_add_0_0_b : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_39_result_add_0_0_o : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_39_result_add_0_0_q : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_38_im0_a0 : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_38_im0_b0 : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_38_im0_s1 : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_mult1_38_im0_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_38_im0_q : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_mult1_38_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_38_im3_b0 : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_38_im3_s1 : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_38_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_38_im3_q : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_38_result_add_0_0_a : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_38_result_add_0_0_b : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_38_result_add_0_0_o : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_38_result_add_0_0_q : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_37_im0_a0 : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_37_im0_b0 : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_37_im0_s1 : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_mult1_37_im0_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_37_im0_q : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_mult1_37_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_37_im3_b0 : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_37_im3_s1 : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_37_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_37_im3_q : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_37_result_add_0_0_a : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_37_result_add_0_0_b : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_37_result_add_0_0_o : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_37_result_add_0_0_q : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_im0_a0 : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_im0_b0 : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_im0_s1 : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_im0_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_36_im0_q : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_im3_b0 : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_im3_s1 : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_36_im3_q : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_result_add_0_0_a : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_result_add_0_0_b : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_result_add_0_0_o : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_result_add_0_0_q : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_im0_a0 : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_im0_b0 : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_im0_s1 : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_im0_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_35_im0_q : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_im3_b0 : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_im3_s1 : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_35_im3_q : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_result_add_0_0_a : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_result_add_0_0_b : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_result_add_0_0_o : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_result_add_0_0_q : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_34_im0_a0 : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_34_im0_b0 : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_34_im0_s1 : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_mult1_34_im0_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_34_im0_q : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_mult1_34_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_34_im3_b0 : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_34_im3_s1 : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_34_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_34_im3_q : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_34_result_add_0_0_a : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_34_result_add_0_0_b : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_34_result_add_0_0_o : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_34_result_add_0_0_q : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_im0_a0 : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_im0_b0 : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_im0_s1 : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_im0_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_33_im0_q : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_im3_b0 : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_im3_s1 : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_33_im3_q : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_result_add_0_0_a : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_result_add_0_0_b : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_result_add_0_0_o : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_result_add_0_0_q : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_im0_a0 : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_im0_b0 : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_im0_s1 : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_im0_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_32_im0_q : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_im3_b0 : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_im3_s1 : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_32_im3_q : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_result_add_0_0_a : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_result_add_0_0_b : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_result_add_0_0_o : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_result_add_0_0_q : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_im0_a0 : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_im0_b0 : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_im0_s1 : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_im0_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_31_im0_q : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_im3_b0 : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_im3_s1 : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_31_im3_q : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_result_add_0_0_a : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_result_add_0_0_b : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_result_add_0_0_o : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_result_add_0_0_q : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_30_im0_a0 : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_30_im0_b0 : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_30_im0_s1 : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_mult1_30_im0_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_30_im0_q : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_mult1_30_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_30_im3_b0 : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_30_im3_s1 : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_30_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_30_im3_q : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_30_result_add_0_0_a : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_30_result_add_0_0_b : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_30_result_add_0_0_o : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_30_result_add_0_0_q : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_im0_a0 : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_im0_b0 : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_im0_s1 : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_im0_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_29_im0_q : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_im3_b0 : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_im3_s1 : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_29_im3_q : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_result_add_0_0_a : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_result_add_0_0_b : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_result_add_0_0_o : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_result_add_0_0_q : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_im0_a0 : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_im0_b0 : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_im0_s1 : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_im0_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_28_im0_q : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_im3_b0 : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_im3_s1 : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_28_im3_q : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_result_add_0_0_a : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_result_add_0_0_b : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_result_add_0_0_o : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_result_add_0_0_q : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_im0_a0 : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_im0_b0 : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_im0_s1 : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_im0_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_27_im0_q : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_im3_b0 : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_im3_s1 : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_27_im3_q : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_result_add_0_0_a : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_result_add_0_0_b : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_result_add_0_0_o : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_result_add_0_0_q : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_26_im0_a0 : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_26_im0_b0 : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_26_im0_s1 : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_mult1_26_im0_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_26_im0_q : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_mult1_26_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_26_im3_b0 : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_26_im3_s1 : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_26_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_26_im3_q : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_26_result_add_0_0_a : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_26_result_add_0_0_b : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_26_result_add_0_0_o : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_26_result_add_0_0_q : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_im0_a0 : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_im0_b0 : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_im0_s1 : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_im0_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_25_im0_q : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_im3_b0 : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_im3_s1 : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_25_im3_q : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_result_add_0_0_a : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_result_add_0_0_b : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_result_add_0_0_o : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_result_add_0_0_q : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_im0_a0 : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_im0_b0 : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_im0_s1 : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_im0_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_24_im0_q : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_im3_b0 : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_im3_s1 : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_24_im3_q : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_result_add_0_0_a : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_result_add_0_0_b : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_result_add_0_0_o : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_result_add_0_0_q : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_im0_a0 : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_im0_b0 : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_im0_s1 : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_im0_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_23_im0_q : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_im3_b0 : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_im3_s1 : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_23_im3_q : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_result_add_0_0_a : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_result_add_0_0_b : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_result_add_0_0_o : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_result_add_0_0_q : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_22_im0_a0 : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_22_im0_b0 : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_22_im0_s1 : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_mult1_22_im0_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_22_im0_q : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_mult1_22_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_22_im3_b0 : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_22_im3_s1 : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_22_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_22_im3_q : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_22_result_add_0_0_a : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_22_result_add_0_0_b : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_22_result_add_0_0_o : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_22_result_add_0_0_q : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_im0_a0 : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_im0_b0 : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_im0_s1 : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_im0_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_21_im0_q : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_im3_b0 : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_im3_s1 : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_21_im3_q : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_result_add_0_0_a : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_result_add_0_0_b : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_result_add_0_0_o : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_result_add_0_0_q : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_im0_a0 : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_im0_b0 : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_im0_s1 : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_im0_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_20_im0_q : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_im3_b0 : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_im3_s1 : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_20_im3_q : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_result_add_0_0_a : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_result_add_0_0_b : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_result_add_0_0_o : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_result_add_0_0_q : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_im0_a0 : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_im0_b0 : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_im0_s1 : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_im0_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_19_im0_q : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_im3_b0 : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_im3_s1 : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_19_im3_q : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_result_add_0_0_a : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_result_add_0_0_b : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_result_add_0_0_o : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_result_add_0_0_q : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_im0_a0 : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_im0_b0 : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_im0_s1 : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_im0_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_18_im0_q : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_im3_b0 : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_im3_s1 : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_18_im3_q : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_result_add_0_0_a : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_result_add_0_0_b : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_result_add_0_0_o : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_result_add_0_0_q : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_im0_a0 : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_im0_b0 : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_im0_s1 : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_im0_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_17_im0_q : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_im3_b0 : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_im3_s1 : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_17_im3_q : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_result_add_0_0_a : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_result_add_0_0_b : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_result_add_0_0_o : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_result_add_0_0_q : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_im0_a0 : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_im0_b0 : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_im0_s1 : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_im0_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_16_im0_q : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_im3_b0 : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_im3_s1 : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_16_im3_q : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_result_add_0_0_a : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_result_add_0_0_b : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_result_add_0_0_o : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_result_add_0_0_q : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_im0_a0 : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_im0_b0 : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_im0_s1 : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_im0_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_15_im0_q : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_im3_b0 : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_im3_s1 : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_15_im3_q : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_result_add_0_0_a : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_result_add_0_0_b : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_result_add_0_0_o : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_result_add_0_0_q : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_14_im0_a0 : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_14_im0_b0 : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_14_im0_s1 : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_mult1_14_im0_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_14_im0_q : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_mult1_14_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_14_im3_b0 : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_14_im3_s1 : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_14_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_14_im3_q : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_14_result_add_0_0_a : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_14_result_add_0_0_b : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_14_result_add_0_0_o : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_14_result_add_0_0_q : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_im0_a0 : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_im0_b0 : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_im0_s1 : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_im0_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_13_im0_q : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_im3_b0 : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_im3_s1 : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_13_im3_q : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_result_add_0_0_a : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_result_add_0_0_b : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_result_add_0_0_o : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_result_add_0_0_q : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_im0_a0 : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_im0_b0 : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_im0_s1 : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_im0_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_12_im0_q : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_im3_b0 : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_im3_s1 : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_12_im3_q : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_result_add_0_0_a : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_result_add_0_0_b : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_result_add_0_0_o : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_result_add_0_0_q : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_im0_a0 : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_im0_b0 : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_im0_s1 : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_im0_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_11_im0_q : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_im3_b0 : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_im3_s1 : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_11_im3_q : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_result_add_0_0_a : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_result_add_0_0_b : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_result_add_0_0_o : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_result_add_0_0_q : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_10_im0_a0 : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_10_im0_b0 : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_10_im0_s1 : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_mult1_10_im0_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_10_im0_q : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_mult1_10_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_10_im3_b0 : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_10_im3_s1 : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_10_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_10_im3_q : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_10_result_add_0_0_a : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_10_result_add_0_0_b : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_10_result_add_0_0_o : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_10_result_add_0_0_q : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_im0_a0 : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_im0_b0 : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_im0_s1 : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_im0_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_9_im0_q : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_im3_b0 : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_im3_s1 : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_9_im3_q : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_result_add_0_0_a : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_result_add_0_0_b : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_result_add_0_0_o : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_result_add_0_0_q : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_im0_a0 : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_im0_b0 : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_im0_s1 : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_im0_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_8_im0_q : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_im3_b0 : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_im3_s1 : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_8_im3_q : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_result_add_0_0_a : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_result_add_0_0_b : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_result_add_0_0_o : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_result_add_0_0_q : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_im0_a0 : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_im0_b0 : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_im0_s1 : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_im0_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_7_im0_q : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_im3_b0 : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_im3_s1 : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_7_im3_q : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_result_add_0_0_a : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_result_add_0_0_b : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_result_add_0_0_o : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_result_add_0_0_q : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_6_im0_a0 : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_6_im0_b0 : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_6_im0_s1 : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_mult1_6_im0_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_6_im0_q : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_mult1_6_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_6_im3_b0 : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_6_im3_s1 : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_6_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_6_im3_q : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_6_result_add_0_0_a : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_6_result_add_0_0_b : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_6_result_add_0_0_o : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_6_result_add_0_0_q : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_im0_a0 : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_im0_b0 : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_im0_s1 : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_im0_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_5_im0_q : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_im3_b0 : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_im3_s1 : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_5_im3_q : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_result_add_0_0_a : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_result_add_0_0_b : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_result_add_0_0_o : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_result_add_0_0_q : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_im0_a0 : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_im0_b0 : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_im0_s1 : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_im0_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_4_im0_q : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_im3_b0 : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_im3_s1 : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_4_im3_q : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_result_add_0_0_a : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_result_add_0_0_b : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_result_add_0_0_o : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_result_add_0_0_q : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_im0_a0 : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_im0_b0 : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_im0_s1 : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_im0_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_3_im0_q : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_im3_b0 : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_im3_s1 : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_3_im3_q : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_result_add_0_0_a : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_result_add_0_0_b : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_result_add_0_0_o : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_result_add_0_0_q : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_2_im0_a0 : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_2_im0_b0 : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_2_im0_s1 : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_mult1_2_im0_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_2_im0_q : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_mult1_2_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_2_im3_b0 : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_2_im3_s1 : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_2_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_2_im3_q : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_2_result_add_0_0_a : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_2_result_add_0_0_b : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_2_result_add_0_0_o : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_2_result_add_0_0_q : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_im0_a0 : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_im0_b0 : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_im0_s1 : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_im0_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_1_im0_q : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_im3_b0 : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_im3_s1 : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_1_im3_q : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_result_add_0_0_a : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_result_add_0_0_b : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_result_add_0_0_o : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_result_add_0_0_q : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_im0_a0 : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_im0_b0 : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_im0_s1 : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_im0_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_0_im0_q : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_im3_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_im3_b0 : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_im3_s1 : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_im3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_0_im3_q : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_result_add_0_0_a : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_result_add_0_0_b : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_result_add_0_0_o : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_result_add_0_0_q : STD_LOGIC_VECTOR (48 downto 0);
    signal u0_m0_wo0_wi0_r0_ra51_count0_run_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_oseq_gated_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi0_r0_ra51_resize_in : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_ra51_resize_b : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_split1_b : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_wi0_r0_split1_c : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_wi0_r0_split1_d : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_wi0_r0_split1_e : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_wi0_r0_split5_b : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_wi0_r0_split5_c : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_wi0_r0_split5_d : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_wi0_r0_split5_e : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_wi0_r0_split9_b : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_wi0_r0_split9_c : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_wi0_r0_split9_d : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_wi0_r0_split9_e : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_wi0_r0_split13_b : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_wi0_r0_split13_c : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_wi0_r0_split13_d : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_wi0_r0_split13_e : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_wi0_r0_split17_b : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_wi0_r0_split17_c : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_wi0_r0_split17_d : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_wi0_r0_split17_e : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_wi0_r0_split21_b : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_wi0_r0_split21_c : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_wi0_r0_split21_d : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_wi0_r0_split21_e : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_wi0_r0_split25_b : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_wi0_r0_split25_c : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_wi0_r0_split25_d : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_wi0_r0_split25_e : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_wi0_r0_split29_b : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_wi0_r0_split29_c : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_wi0_r0_split29_d : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_wi0_r0_split29_e : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_wi0_r0_split33_b : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_wi0_r0_split33_c : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_wi0_r0_split33_d : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_wi0_r0_split33_e : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_wi0_r0_split37_b : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_wi0_r0_split37_c : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_wi0_r0_split37_d : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_wi0_r0_split37_e : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_wi0_r0_split41_b : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_wi0_r0_split41_c : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_wi0_r0_split41_d : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_wi0_r0_split41_e : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_wi0_r0_split45_b : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_wi0_r0_split45_c : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_wi0_r0_split45_d : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_wi0_r0_split45_e : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_wi0_r0_split49_b : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_wi0_r0_split49_c : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_wi0_r0_split49_d : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_51_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_51_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_50_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_50_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_49_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_49_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_48_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_48_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_47_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_47_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_46_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_46_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_45_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_45_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_44_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_44_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_43_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_43_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_42_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_42_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_41_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_41_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_40_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_40_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_39_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_39_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_38_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_38_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_37_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_37_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_34_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_34_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (16 downto 0);
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
    signal u0_m0_wo0_mtree_mult1_51_align_8_q : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_51_align_8_qint : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_50_align_8_q : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_50_align_8_qint : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_49_align_8_q : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_49_align_8_qint : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_48_align_8_q : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_48_align_8_qint : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_47_align_8_q : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_47_align_8_qint : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_46_align_8_q : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_46_align_8_qint : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_45_align_8_q : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_45_align_8_qint : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_44_align_8_q : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_44_align_8_qint : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_43_align_8_q : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_43_align_8_qint : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_42_align_8_q : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_42_align_8_qint : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_41_align_8_q : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_41_align_8_qint : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_40_align_8_q : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_40_align_8_qint : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_39_align_8_q : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_39_align_8_qint : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_38_align_8_q : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_38_align_8_qint : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_37_align_8_q : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_37_align_8_qint : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_align_8_q : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_align_8_qint : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_align_8_q : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_align_8_qint : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_34_align_8_q : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_34_align_8_qint : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_align_8_q : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_align_8_qint : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_align_8_q : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_align_8_qint : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_align_8_q : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_align_8_qint : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_30_align_8_q : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_30_align_8_qint : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_align_8_q : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_align_8_qint : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_align_8_q : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_align_8_qint : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_align_8_q : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_align_8_qint : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_26_align_8_q : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_26_align_8_qint : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_align_8_q : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_align_8_qint : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_align_8_q : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_align_8_qint : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_align_8_q : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_align_8_qint : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_22_align_8_q : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_22_align_8_qint : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_align_8_q : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_align_8_qint : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_align_8_q : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_align_8_qint : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_align_8_q : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_align_8_qint : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_align_8_q : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_align_8_qint : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_align_8_q : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_align_8_qint : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_align_8_q : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_align_8_qint : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_align_8_q : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_align_8_qint : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_14_align_8_q : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_14_align_8_qint : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_align_8_q : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_align_8_qint : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_align_8_q : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_align_8_qint : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_align_8_q : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_align_8_qint : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_10_align_8_q : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_10_align_8_qint : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_align_8_q : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_align_8_qint : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_align_8_q : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_align_8_qint : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_align_8_q : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_align_8_qint : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_6_align_8_q : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_6_align_8_qint : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_align_8_q : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_align_8_qint : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_align_8_q : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_align_8_qint : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_align_8_q : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_align_8_qint : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_2_align_8_q : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_2_align_8_qint : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_align_8_q : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_align_8_qint : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_align_8_q : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_align_8_qint : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_wi0_r0_join1_q : STD_LOGIC_VECTOR (63 downto 0);
    signal u0_m0_wo0_wi0_r0_join5_q : STD_LOGIC_VECTOR (63 downto 0);
    signal u0_m0_wo0_wi0_r0_join9_q : STD_LOGIC_VECTOR (63 downto 0);
    signal u0_m0_wo0_wi0_r0_join13_q : STD_LOGIC_VECTOR (63 downto 0);
    signal u0_m0_wo0_wi0_r0_join17_q : STD_LOGIC_VECTOR (63 downto 0);
    signal u0_m0_wo0_wi0_r0_join21_q : STD_LOGIC_VECTOR (63 downto 0);
    signal u0_m0_wo0_wi0_r0_join25_q : STD_LOGIC_VECTOR (63 downto 0);
    signal u0_m0_wo0_wi0_r0_join29_q : STD_LOGIC_VECTOR (63 downto 0);
    signal u0_m0_wo0_wi0_r0_join33_q : STD_LOGIC_VECTOR (63 downto 0);
    signal u0_m0_wo0_wi0_r0_join37_q : STD_LOGIC_VECTOR (63 downto 0);
    signal u0_m0_wo0_wi0_r0_join41_q : STD_LOGIC_VECTOR (63 downto 0);
    signal u0_m0_wo0_wi0_r0_join45_q : STD_LOGIC_VECTOR (63 downto 0);
    signal u0_m0_wo0_wi0_r0_join49_q : STD_LOGIC_VECTOR (47 downto 0);
    signal u0_m0_wo0_mtree_mult1_51_bjA5_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_50_bjA5_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_49_bjA5_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_48_bjA5_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_47_bjA5_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_46_bjA5_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_45_bjA5_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_44_bjA5_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_43_bjA5_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_42_bjA5_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_41_bjA5_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_40_bjA5_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_39_bjA5_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_38_bjA5_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_37_bjA5_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_bjA5_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_bjA5_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_34_bjA5_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_bjA5_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_bjA5_q : STD_LOGIC_VECTOR (17 downto 0);
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

    -- d_u0_m0_wo0_memread_q_13(DELAY,917)@12 + 1
    d_u0_m0_wo0_memread_q_13 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_memread_q, xout => d_u0_m0_wo0_memread_q_13_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_compute(DELAY,16)@13
    u0_m0_wo0_compute : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => d_u0_m0_wo0_memread_q_13_q, xout => u0_m0_wo0_compute_q, clk => clk, aclr => areset );

    -- d_u0_m0_wo0_compute_q_14(DELAY,919)@13 + 1
    d_u0_m0_wo0_compute_q_14 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_compute_q, xout => d_u0_m0_wo0_compute_q_14_q, clk => clk, aclr => areset );

    -- d_u0_m0_wo0_compute_q_23(DELAY,920)@14 + 9
    d_u0_m0_wo0_compute_q_23 : dspba_delay
    GENERIC MAP ( width => 1, depth => 9, reset_kind => "ASYNC" )
    PORT MAP ( xin => d_u0_m0_wo0_compute_q_14_q, xout => d_u0_m0_wo0_compute_q_23_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_aseq(SEQUENCE,228)@23 + 1
    u0_m0_wo0_aseq_clkproc: PROCESS (clk, areset)
        variable u0_m0_wo0_aseq_c : SIGNED(9 downto 0);
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_aseq_c := "0000000000";
            u0_m0_wo0_aseq_q <= "0";
            u0_m0_wo0_aseq_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (d_u0_m0_wo0_compute_q_23_q = "1") THEN
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

    -- d_u0_m0_wo0_compute_q_24(DELAY,921)@23 + 1
    d_u0_m0_wo0_compute_q_24 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => d_u0_m0_wo0_compute_q_23_q, xout => d_u0_m0_wo0_compute_q_24_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_ca51(COUNTER,69)@13
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

    -- d_u0_m0_wo0_ca51_q_15(DELAY,926)@13 + 2
    d_u0_m0_wo0_ca51_q_15 : dspba_delay
    GENERIC MAP ( width => 8, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_ca51_q, xout => d_u0_m0_wo0_ca51_q_15_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_cm0_lutmem(DUALMEM,239)@15 + 2
    u0_m0_wo0_cm0_lutmem_aa <= d_u0_m0_wo0_ca51_q_15_q;
    u0_m0_wo0_cm0_lutmem_reset0 <= areset;
    u0_m0_wo0_cm0_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 32,
        widthad_a => 8,
        numwords_a => 197,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "REVERB_fir_compiler_ii_0_rtl_core_u0_m0_wo0_cm0_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => '1',
        aclr0 => u0_m0_wo0_cm0_lutmem_reset0,
        clock0 => clk,
        address_a => u0_m0_wo0_cm0_lutmem_aa,
        q_a => u0_m0_wo0_cm0_lutmem_ir
    );
    u0_m0_wo0_cm0_lutmem_r <= u0_m0_wo0_cm0_lutmem_ir(31 downto 0);

    -- u0_m0_wo0_mtree_mult1_51_bs1_merged_bit_select(BITSELECT,863)@17
    u0_m0_wo0_mtree_mult1_51_bs1_merged_bit_select_b <= STD_LOGIC_VECTOR(u0_m0_wo0_cm0_lutmem_r(31 downto 17));
    u0_m0_wo0_mtree_mult1_51_bs1_merged_bit_select_c <= STD_LOGIC_VECTOR(u0_m0_wo0_cm0_lutmem_r(16 downto 0));

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

    -- u0_m0_wo0_wi0_r0_ra51_count1_lut_lutmem(DUALMEM,238)@12 + 2
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

    -- d_u0_m0_wo0_memread_q_14(DELAY,918)@13 + 1
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

    -- d_xIn_0_15(DELAY,915)@10 + 5
    d_xIn_0_15 : dspba_delay
    GENERIC MAP ( width => 16, depth => 5, reset_kind => "ASYNC" )
    PORT MAP ( xin => xIn_0, xout => d_xIn_0_15_q, clk => clk, aclr => areset );

    -- d_in0_m0_wi0_wo0_assign_id1_q_15(DELAY,916)@10 + 5
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
        width_a => 16,
        widthad_a => 8,
        numwords_a => 256,
        width_b => 16,
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
    u0_m0_wo0_wi0_r0_memr0_q <= u0_m0_wo0_wi0_r0_memr0_iq(15 downto 0);

    -- d_u0_m0_wo0_wi0_r0_memr0_q_17(DELAY,922)@15 + 2
    d_u0_m0_wo0_wi0_r0_memr0_q_17 : dspba_delay
    GENERIC MAP ( width => 16, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_memr0_q, xout => d_u0_m0_wo0_wi0_r0_memr0_q_17_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_51_im0(MULT,291)@17 + 2
    u0_m0_wo0_mtree_mult1_51_im0_a0 <= STD_LOGIC_VECTOR(d_u0_m0_wo0_wi0_r0_memr0_q_17_q);
    u0_m0_wo0_mtree_mult1_51_im0_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_51_bs1_merged_bit_select_b);
    u0_m0_wo0_mtree_mult1_51_im0_reset <= areset;
    u0_m0_wo0_mtree_mult1_51_im0_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 16,
        lpm_widthb => 15,
        lpm_widthp => 31,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_51_im0_a0,
        datab => u0_m0_wo0_mtree_mult1_51_im0_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_51_im0_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_51_im0_s1
    );
    u0_m0_wo0_mtree_mult1_51_im0_q <= u0_m0_wo0_mtree_mult1_51_im0_s1;

    -- u0_m0_wo0_mtree_mult1_51_align_8(BITSHIFT,299)@19
    u0_m0_wo0_mtree_mult1_51_align_8_qint <= u0_m0_wo0_mtree_mult1_51_im0_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_51_align_8_q <= u0_m0_wo0_mtree_mult1_51_align_8_qint(47 downto 0);

    -- u0_m0_wo0_mtree_mult1_51_bjA5(BITJOIN,296)@17
    u0_m0_wo0_mtree_mult1_51_bjA5_q <= GND_q & u0_m0_wo0_mtree_mult1_51_bs1_merged_bit_select_c;

    -- u0_m0_wo0_mtree_mult1_51_im3(MULT,294)@17 + 2
    u0_m0_wo0_mtree_mult1_51_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_51_bjA5_q);
    u0_m0_wo0_mtree_mult1_51_im3_b0 <= STD_LOGIC_VECTOR(d_u0_m0_wo0_wi0_r0_memr0_q_17_q);
    u0_m0_wo0_mtree_mult1_51_im3_reset <= areset;
    u0_m0_wo0_mtree_mult1_51_im3_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 16,
        lpm_widthp => 34,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_51_im3_a0,
        datab => u0_m0_wo0_mtree_mult1_51_im3_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_51_im3_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_51_im3_s1
    );
    u0_m0_wo0_mtree_mult1_51_im3_q <= u0_m0_wo0_mtree_mult1_51_im3_s1;

    -- u0_m0_wo0_mtree_mult1_51_result_add_0_0(ADD,301)@19 + 1
    u0_m0_wo0_mtree_mult1_51_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 34 => u0_m0_wo0_mtree_mult1_51_im3_q(33)) & u0_m0_wo0_mtree_mult1_51_im3_q));
    u0_m0_wo0_mtree_mult1_51_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 48 => u0_m0_wo0_mtree_mult1_51_align_8_q(47)) & u0_m0_wo0_mtree_mult1_51_align_8_q));
    u0_m0_wo0_mtree_mult1_51_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_51_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_51_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_51_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_51_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_51_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_51_result_add_0_0_o(48 downto 0);

    -- u0_m0_wo0_cm1_lutmem(DUALMEM,240)@15 + 2
    u0_m0_wo0_cm1_lutmem_aa <= d_u0_m0_wo0_ca51_q_15_q;
    u0_m0_wo0_cm1_lutmem_reset0 <= areset;
    u0_m0_wo0_cm1_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 32,
        widthad_a => 8,
        numwords_a => 197,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "REVERB_fir_compiler_ii_0_rtl_core_u0_m0_wo0_cm1_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => '1',
        aclr0 => u0_m0_wo0_cm1_lutmem_reset0,
        clock0 => clk,
        address_a => u0_m0_wo0_cm1_lutmem_aa,
        q_a => u0_m0_wo0_cm1_lutmem_ir
    );
    u0_m0_wo0_cm1_lutmem_r <= u0_m0_wo0_cm1_lutmem_ir(31 downto 0);

    -- u0_m0_wo0_mtree_mult1_50_bs1_merged_bit_select(BITSELECT,864)@17
    u0_m0_wo0_mtree_mult1_50_bs1_merged_bit_select_b <= STD_LOGIC_VECTOR(u0_m0_wo0_cm1_lutmem_r(31 downto 17));
    u0_m0_wo0_mtree_mult1_50_bs1_merged_bit_select_c <= STD_LOGIC_VECTOR(u0_m0_wo0_cm1_lutmem_r(16 downto 0));

    -- u0_m0_wo0_wi0_r0_join1(BITJOIN,30)@15
    u0_m0_wo0_wi0_r0_join1_q <= u0_m0_wo0_wi0_r0_split1_d & u0_m0_wo0_wi0_r0_split1_c & u0_m0_wo0_wi0_r0_split1_b & u0_m0_wo0_wi0_r0_memr0_q;

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
        width_a => 64,
        widthad_a => 8,
        numwords_a => 256,
        width_b => 64,
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
    u0_m0_wo0_wi0_r0_memr1_q <= u0_m0_wo0_wi0_r0_memr1_iq(63 downto 0);

    -- u0_m0_wo0_wi0_r0_split1(BITSELECT,31)@15
    u0_m0_wo0_wi0_r0_split1_b <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr1_q(15 downto 0));
    u0_m0_wo0_wi0_r0_split1_c <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr1_q(31 downto 16));
    u0_m0_wo0_wi0_r0_split1_d <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr1_q(47 downto 32));
    u0_m0_wo0_wi0_r0_split1_e <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr1_q(63 downto 48));

    -- d_u0_m0_wo0_wi0_r0_split1_b_17(DELAY,923)@15 + 2
    d_u0_m0_wo0_wi0_r0_split1_b_17 : dspba_delay
    GENERIC MAP ( width => 16, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_split1_b, xout => d_u0_m0_wo0_wi0_r0_split1_b_17_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_50_im0(MULT,302)@17 + 2
    u0_m0_wo0_mtree_mult1_50_im0_a0 <= STD_LOGIC_VECTOR(d_u0_m0_wo0_wi0_r0_split1_b_17_q);
    u0_m0_wo0_mtree_mult1_50_im0_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_50_bs1_merged_bit_select_b);
    u0_m0_wo0_mtree_mult1_50_im0_reset <= areset;
    u0_m0_wo0_mtree_mult1_50_im0_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 16,
        lpm_widthb => 15,
        lpm_widthp => 31,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_50_im0_a0,
        datab => u0_m0_wo0_mtree_mult1_50_im0_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_50_im0_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_50_im0_s1
    );
    u0_m0_wo0_mtree_mult1_50_im0_q <= u0_m0_wo0_mtree_mult1_50_im0_s1;

    -- u0_m0_wo0_mtree_mult1_50_align_8(BITSHIFT,310)@19
    u0_m0_wo0_mtree_mult1_50_align_8_qint <= u0_m0_wo0_mtree_mult1_50_im0_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_50_align_8_q <= u0_m0_wo0_mtree_mult1_50_align_8_qint(47 downto 0);

    -- u0_m0_wo0_mtree_mult1_50_bjA5(BITJOIN,307)@17
    u0_m0_wo0_mtree_mult1_50_bjA5_q <= GND_q & u0_m0_wo0_mtree_mult1_50_bs1_merged_bit_select_c;

    -- u0_m0_wo0_mtree_mult1_50_im3(MULT,305)@17 + 2
    u0_m0_wo0_mtree_mult1_50_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_50_bjA5_q);
    u0_m0_wo0_mtree_mult1_50_im3_b0 <= STD_LOGIC_VECTOR(d_u0_m0_wo0_wi0_r0_split1_b_17_q);
    u0_m0_wo0_mtree_mult1_50_im3_reset <= areset;
    u0_m0_wo0_mtree_mult1_50_im3_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 16,
        lpm_widthp => 34,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_50_im3_a0,
        datab => u0_m0_wo0_mtree_mult1_50_im3_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_50_im3_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_50_im3_s1
    );
    u0_m0_wo0_mtree_mult1_50_im3_q <= u0_m0_wo0_mtree_mult1_50_im3_s1;

    -- u0_m0_wo0_mtree_mult1_50_result_add_0_0(ADD,312)@19 + 1
    u0_m0_wo0_mtree_mult1_50_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 34 => u0_m0_wo0_mtree_mult1_50_im3_q(33)) & u0_m0_wo0_mtree_mult1_50_im3_q));
    u0_m0_wo0_mtree_mult1_50_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 48 => u0_m0_wo0_mtree_mult1_50_align_8_q(47)) & u0_m0_wo0_mtree_mult1_50_align_8_q));
    u0_m0_wo0_mtree_mult1_50_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_50_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_50_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_50_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_50_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_50_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_50_result_add_0_0_o(48 downto 0);

    -- u0_m0_wo0_mtree_add0_25(ADD,202)@20 + 1
    u0_m0_wo0_mtree_add0_25_a <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_50_result_add_0_0_q);
    u0_m0_wo0_mtree_add0_25_b <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_51_result_add_0_0_q);
    u0_m0_wo0_mtree_add0_25_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_25_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_25_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_25_a) + SIGNED(u0_m0_wo0_mtree_add0_25_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_25_q <= u0_m0_wo0_mtree_add0_25_o(48 downto 0);

    -- u0_m0_wo0_cm2_lutmem(DUALMEM,241)@15 + 2
    u0_m0_wo0_cm2_lutmem_aa <= d_u0_m0_wo0_ca51_q_15_q;
    u0_m0_wo0_cm2_lutmem_reset0 <= areset;
    u0_m0_wo0_cm2_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 32,
        widthad_a => 8,
        numwords_a => 197,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "REVERB_fir_compiler_ii_0_rtl_core_u0_m0_wo0_cm2_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => '1',
        aclr0 => u0_m0_wo0_cm2_lutmem_reset0,
        clock0 => clk,
        address_a => u0_m0_wo0_cm2_lutmem_aa,
        q_a => u0_m0_wo0_cm2_lutmem_ir
    );
    u0_m0_wo0_cm2_lutmem_r <= u0_m0_wo0_cm2_lutmem_ir(31 downto 0);

    -- u0_m0_wo0_mtree_mult1_49_bs1_merged_bit_select(BITSELECT,865)@17
    u0_m0_wo0_mtree_mult1_49_bs1_merged_bit_select_b <= STD_LOGIC_VECTOR(u0_m0_wo0_cm2_lutmem_r(31 downto 17));
    u0_m0_wo0_mtree_mult1_49_bs1_merged_bit_select_c <= STD_LOGIC_VECTOR(u0_m0_wo0_cm2_lutmem_r(16 downto 0));

    -- d_u0_m0_wo0_wi0_r0_split1_c_17(DELAY,924)@15 + 2
    d_u0_m0_wo0_wi0_r0_split1_c_17 : dspba_delay
    GENERIC MAP ( width => 16, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_split1_c, xout => d_u0_m0_wo0_wi0_r0_split1_c_17_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_49_im0(MULT,313)@17 + 2
    u0_m0_wo0_mtree_mult1_49_im0_a0 <= STD_LOGIC_VECTOR(d_u0_m0_wo0_wi0_r0_split1_c_17_q);
    u0_m0_wo0_mtree_mult1_49_im0_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_49_bs1_merged_bit_select_b);
    u0_m0_wo0_mtree_mult1_49_im0_reset <= areset;
    u0_m0_wo0_mtree_mult1_49_im0_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 16,
        lpm_widthb => 15,
        lpm_widthp => 31,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_49_im0_a0,
        datab => u0_m0_wo0_mtree_mult1_49_im0_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_49_im0_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_49_im0_s1
    );
    u0_m0_wo0_mtree_mult1_49_im0_q <= u0_m0_wo0_mtree_mult1_49_im0_s1;

    -- u0_m0_wo0_mtree_mult1_49_align_8(BITSHIFT,321)@19
    u0_m0_wo0_mtree_mult1_49_align_8_qint <= u0_m0_wo0_mtree_mult1_49_im0_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_49_align_8_q <= u0_m0_wo0_mtree_mult1_49_align_8_qint(47 downto 0);

    -- u0_m0_wo0_mtree_mult1_49_bjA5(BITJOIN,318)@17
    u0_m0_wo0_mtree_mult1_49_bjA5_q <= GND_q & u0_m0_wo0_mtree_mult1_49_bs1_merged_bit_select_c;

    -- u0_m0_wo0_mtree_mult1_49_im3(MULT,316)@17 + 2
    u0_m0_wo0_mtree_mult1_49_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_49_bjA5_q);
    u0_m0_wo0_mtree_mult1_49_im3_b0 <= STD_LOGIC_VECTOR(d_u0_m0_wo0_wi0_r0_split1_c_17_q);
    u0_m0_wo0_mtree_mult1_49_im3_reset <= areset;
    u0_m0_wo0_mtree_mult1_49_im3_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 16,
        lpm_widthp => 34,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_49_im3_a0,
        datab => u0_m0_wo0_mtree_mult1_49_im3_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_49_im3_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_49_im3_s1
    );
    u0_m0_wo0_mtree_mult1_49_im3_q <= u0_m0_wo0_mtree_mult1_49_im3_s1;

    -- u0_m0_wo0_mtree_mult1_49_result_add_0_0(ADD,323)@19 + 1
    u0_m0_wo0_mtree_mult1_49_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 34 => u0_m0_wo0_mtree_mult1_49_im3_q(33)) & u0_m0_wo0_mtree_mult1_49_im3_q));
    u0_m0_wo0_mtree_mult1_49_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 48 => u0_m0_wo0_mtree_mult1_49_align_8_q(47)) & u0_m0_wo0_mtree_mult1_49_align_8_q));
    u0_m0_wo0_mtree_mult1_49_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_49_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_49_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_49_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_49_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_49_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_49_result_add_0_0_o(48 downto 0);

    -- u0_m0_wo0_cm3_lutmem(DUALMEM,242)@15 + 2
    u0_m0_wo0_cm3_lutmem_aa <= d_u0_m0_wo0_ca51_q_15_q;
    u0_m0_wo0_cm3_lutmem_reset0 <= areset;
    u0_m0_wo0_cm3_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 32,
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
    u0_m0_wo0_cm3_lutmem_r <= u0_m0_wo0_cm3_lutmem_ir(31 downto 0);

    -- u0_m0_wo0_mtree_mult1_48_bs1_merged_bit_select(BITSELECT,866)@17
    u0_m0_wo0_mtree_mult1_48_bs1_merged_bit_select_b <= STD_LOGIC_VECTOR(u0_m0_wo0_cm3_lutmem_r(31 downto 17));
    u0_m0_wo0_mtree_mult1_48_bs1_merged_bit_select_c <= STD_LOGIC_VECTOR(u0_m0_wo0_cm3_lutmem_r(16 downto 0));

    -- d_u0_m0_wo0_wi0_r0_split1_d_17(DELAY,925)@15 + 2
    d_u0_m0_wo0_wi0_r0_split1_d_17 : dspba_delay
    GENERIC MAP ( width => 16, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_split1_d, xout => d_u0_m0_wo0_wi0_r0_split1_d_17_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_48_im0(MULT,324)@17 + 2
    u0_m0_wo0_mtree_mult1_48_im0_a0 <= STD_LOGIC_VECTOR(d_u0_m0_wo0_wi0_r0_split1_d_17_q);
    u0_m0_wo0_mtree_mult1_48_im0_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_48_bs1_merged_bit_select_b);
    u0_m0_wo0_mtree_mult1_48_im0_reset <= areset;
    u0_m0_wo0_mtree_mult1_48_im0_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 16,
        lpm_widthb => 15,
        lpm_widthp => 31,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_48_im0_a0,
        datab => u0_m0_wo0_mtree_mult1_48_im0_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_48_im0_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_48_im0_s1
    );
    u0_m0_wo0_mtree_mult1_48_im0_q <= u0_m0_wo0_mtree_mult1_48_im0_s1;

    -- u0_m0_wo0_mtree_mult1_48_align_8(BITSHIFT,332)@19
    u0_m0_wo0_mtree_mult1_48_align_8_qint <= u0_m0_wo0_mtree_mult1_48_im0_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_48_align_8_q <= u0_m0_wo0_mtree_mult1_48_align_8_qint(47 downto 0);

    -- u0_m0_wo0_mtree_mult1_48_bjA5(BITJOIN,329)@17
    u0_m0_wo0_mtree_mult1_48_bjA5_q <= GND_q & u0_m0_wo0_mtree_mult1_48_bs1_merged_bit_select_c;

    -- u0_m0_wo0_mtree_mult1_48_im3(MULT,327)@17 + 2
    u0_m0_wo0_mtree_mult1_48_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_48_bjA5_q);
    u0_m0_wo0_mtree_mult1_48_im3_b0 <= STD_LOGIC_VECTOR(d_u0_m0_wo0_wi0_r0_split1_d_17_q);
    u0_m0_wo0_mtree_mult1_48_im3_reset <= areset;
    u0_m0_wo0_mtree_mult1_48_im3_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 16,
        lpm_widthp => 34,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_48_im3_a0,
        datab => u0_m0_wo0_mtree_mult1_48_im3_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_48_im3_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_48_im3_s1
    );
    u0_m0_wo0_mtree_mult1_48_im3_q <= u0_m0_wo0_mtree_mult1_48_im3_s1;

    -- u0_m0_wo0_mtree_mult1_48_result_add_0_0(ADD,334)@19 + 1
    u0_m0_wo0_mtree_mult1_48_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 34 => u0_m0_wo0_mtree_mult1_48_im3_q(33)) & u0_m0_wo0_mtree_mult1_48_im3_q));
    u0_m0_wo0_mtree_mult1_48_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 48 => u0_m0_wo0_mtree_mult1_48_align_8_q(47)) & u0_m0_wo0_mtree_mult1_48_align_8_q));
    u0_m0_wo0_mtree_mult1_48_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_48_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_48_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_48_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_48_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_48_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_48_result_add_0_0_o(48 downto 0);

    -- u0_m0_wo0_mtree_add0_24(ADD,201)@20 + 1
    u0_m0_wo0_mtree_add0_24_a <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_48_result_add_0_0_q);
    u0_m0_wo0_mtree_add0_24_b <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_49_result_add_0_0_q);
    u0_m0_wo0_mtree_add0_24_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_24_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_24_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_24_a) + SIGNED(u0_m0_wo0_mtree_add0_24_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_24_q <= u0_m0_wo0_mtree_add0_24_o(48 downto 0);

    -- u0_m0_wo0_mtree_add1_12(ADD,215)@21 + 1
    u0_m0_wo0_mtree_add1_12_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((49 downto 49 => u0_m0_wo0_mtree_add0_24_q(48)) & u0_m0_wo0_mtree_add0_24_q));
    u0_m0_wo0_mtree_add1_12_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((49 downto 49 => u0_m0_wo0_mtree_add0_25_q(48)) & u0_m0_wo0_mtree_add0_25_q));
    u0_m0_wo0_mtree_add1_12_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_12_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_12_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_12_a) + SIGNED(u0_m0_wo0_mtree_add1_12_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_12_q <= u0_m0_wo0_mtree_add1_12_o(49 downto 0);

    -- u0_m0_wo0_cm4_lutmem(DUALMEM,243)@13 + 2
    u0_m0_wo0_cm4_lutmem_aa <= u0_m0_wo0_ca51_q;
    u0_m0_wo0_cm4_lutmem_reset0 <= areset;
    u0_m0_wo0_cm4_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 32,
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
    u0_m0_wo0_cm4_lutmem_r <= u0_m0_wo0_cm4_lutmem_ir(31 downto 0);

    -- u0_m0_wo0_mtree_mult1_47_bs1_merged_bit_select(BITSELECT,867)@15
    u0_m0_wo0_mtree_mult1_47_bs1_merged_bit_select_b <= STD_LOGIC_VECTOR(u0_m0_wo0_cm4_lutmem_r(31 downto 17));
    u0_m0_wo0_mtree_mult1_47_bs1_merged_bit_select_c <= STD_LOGIC_VECTOR(u0_m0_wo0_cm4_lutmem_r(16 downto 0));

    -- u0_m0_wo0_mtree_mult1_47_im0(MULT,335)@15 + 2
    u0_m0_wo0_mtree_mult1_47_im0_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split1_e);
    u0_m0_wo0_mtree_mult1_47_im0_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_47_bs1_merged_bit_select_b);
    u0_m0_wo0_mtree_mult1_47_im0_reset <= areset;
    u0_m0_wo0_mtree_mult1_47_im0_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 16,
        lpm_widthb => 15,
        lpm_widthp => 31,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_47_im0_a0,
        datab => u0_m0_wo0_mtree_mult1_47_im0_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_47_im0_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_47_im0_s1
    );
    u0_m0_wo0_mtree_mult1_47_im0_q <= u0_m0_wo0_mtree_mult1_47_im0_s1;

    -- u0_m0_wo0_mtree_mult1_47_align_8(BITSHIFT,343)@17
    u0_m0_wo0_mtree_mult1_47_align_8_qint <= u0_m0_wo0_mtree_mult1_47_im0_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_47_align_8_q <= u0_m0_wo0_mtree_mult1_47_align_8_qint(47 downto 0);

    -- u0_m0_wo0_mtree_mult1_47_bjA5(BITJOIN,340)@15
    u0_m0_wo0_mtree_mult1_47_bjA5_q <= GND_q & u0_m0_wo0_mtree_mult1_47_bs1_merged_bit_select_c;

    -- u0_m0_wo0_mtree_mult1_47_im3(MULT,338)@15 + 2
    u0_m0_wo0_mtree_mult1_47_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_47_bjA5_q);
    u0_m0_wo0_mtree_mult1_47_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split1_e);
    u0_m0_wo0_mtree_mult1_47_im3_reset <= areset;
    u0_m0_wo0_mtree_mult1_47_im3_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 16,
        lpm_widthp => 34,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_47_im3_a0,
        datab => u0_m0_wo0_mtree_mult1_47_im3_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_47_im3_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_47_im3_s1
    );
    u0_m0_wo0_mtree_mult1_47_im3_q <= u0_m0_wo0_mtree_mult1_47_im3_s1;

    -- u0_m0_wo0_mtree_mult1_47_result_add_0_0(ADD,345)@17 + 1
    u0_m0_wo0_mtree_mult1_47_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 34 => u0_m0_wo0_mtree_mult1_47_im3_q(33)) & u0_m0_wo0_mtree_mult1_47_im3_q));
    u0_m0_wo0_mtree_mult1_47_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 48 => u0_m0_wo0_mtree_mult1_47_align_8_q(47)) & u0_m0_wo0_mtree_mult1_47_align_8_q));
    u0_m0_wo0_mtree_mult1_47_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_47_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_47_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_47_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_47_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_47_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_47_result_add_0_0_o(48 downto 0);

    -- u0_m0_wo0_cm5_lutmem(DUALMEM,244)@13 + 2
    u0_m0_wo0_cm5_lutmem_aa <= u0_m0_wo0_ca51_q;
    u0_m0_wo0_cm5_lutmem_reset0 <= areset;
    u0_m0_wo0_cm5_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 32,
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
    u0_m0_wo0_cm5_lutmem_r <= u0_m0_wo0_cm5_lutmem_ir(31 downto 0);

    -- u0_m0_wo0_mtree_mult1_46_bs1_merged_bit_select(BITSELECT,868)@15
    u0_m0_wo0_mtree_mult1_46_bs1_merged_bit_select_b <= STD_LOGIC_VECTOR(u0_m0_wo0_cm5_lutmem_r(31 downto 17));
    u0_m0_wo0_mtree_mult1_46_bs1_merged_bit_select_c <= STD_LOGIC_VECTOR(u0_m0_wo0_cm5_lutmem_r(16 downto 0));

    -- u0_m0_wo0_wi0_r0_join5(BITJOIN,33)@15
    u0_m0_wo0_wi0_r0_join5_q <= u0_m0_wo0_wi0_r0_split5_d & u0_m0_wo0_wi0_r0_split5_c & u0_m0_wo0_wi0_r0_split5_b & u0_m0_wo0_wi0_r0_split1_e;

    -- u0_m0_wo0_wi0_r0_memr5(DUALMEM,35)@15
    u0_m0_wo0_wi0_r0_memr5_ia <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_join5_q);
    u0_m0_wo0_wi0_r0_memr5_aa <= u0_m0_wo0_wi0_r0_wa51_q;
    u0_m0_wo0_wi0_r0_memr5_ab <= u0_m0_wo0_wi0_r0_ra51_resize_b;
    u0_m0_wo0_wi0_r0_memr5_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "DUAL_PORT",
        width_a => 64,
        widthad_a => 8,
        numwords_a => 256,
        width_b => 64,
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
        address_a => u0_m0_wo0_wi0_r0_memr5_aa,
        data_a => u0_m0_wo0_wi0_r0_memr5_ia,
        wren_a => u0_m0_wo0_wi0_r0_we51_seq_q(0),
        address_b => u0_m0_wo0_wi0_r0_memr5_ab,
        q_b => u0_m0_wo0_wi0_r0_memr5_iq
    );
    u0_m0_wo0_wi0_r0_memr5_q <= u0_m0_wo0_wi0_r0_memr5_iq(63 downto 0);

    -- u0_m0_wo0_wi0_r0_split5(BITSELECT,34)@15
    u0_m0_wo0_wi0_r0_split5_b <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr5_q(15 downto 0));
    u0_m0_wo0_wi0_r0_split5_c <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr5_q(31 downto 16));
    u0_m0_wo0_wi0_r0_split5_d <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr5_q(47 downto 32));
    u0_m0_wo0_wi0_r0_split5_e <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr5_q(63 downto 48));

    -- u0_m0_wo0_mtree_mult1_46_im0(MULT,346)@15 + 2
    u0_m0_wo0_mtree_mult1_46_im0_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split5_b);
    u0_m0_wo0_mtree_mult1_46_im0_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_46_bs1_merged_bit_select_b);
    u0_m0_wo0_mtree_mult1_46_im0_reset <= areset;
    u0_m0_wo0_mtree_mult1_46_im0_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 16,
        lpm_widthb => 15,
        lpm_widthp => 31,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_46_im0_a0,
        datab => u0_m0_wo0_mtree_mult1_46_im0_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_46_im0_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_46_im0_s1
    );
    u0_m0_wo0_mtree_mult1_46_im0_q <= u0_m0_wo0_mtree_mult1_46_im0_s1;

    -- u0_m0_wo0_mtree_mult1_46_align_8(BITSHIFT,354)@17
    u0_m0_wo0_mtree_mult1_46_align_8_qint <= u0_m0_wo0_mtree_mult1_46_im0_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_46_align_8_q <= u0_m0_wo0_mtree_mult1_46_align_8_qint(47 downto 0);

    -- u0_m0_wo0_mtree_mult1_46_bjA5(BITJOIN,351)@15
    u0_m0_wo0_mtree_mult1_46_bjA5_q <= GND_q & u0_m0_wo0_mtree_mult1_46_bs1_merged_bit_select_c;

    -- u0_m0_wo0_mtree_mult1_46_im3(MULT,349)@15 + 2
    u0_m0_wo0_mtree_mult1_46_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_46_bjA5_q);
    u0_m0_wo0_mtree_mult1_46_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split5_b);
    u0_m0_wo0_mtree_mult1_46_im3_reset <= areset;
    u0_m0_wo0_mtree_mult1_46_im3_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 16,
        lpm_widthp => 34,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_46_im3_a0,
        datab => u0_m0_wo0_mtree_mult1_46_im3_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_46_im3_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_46_im3_s1
    );
    u0_m0_wo0_mtree_mult1_46_im3_q <= u0_m0_wo0_mtree_mult1_46_im3_s1;

    -- u0_m0_wo0_mtree_mult1_46_result_add_0_0(ADD,356)@17 + 1
    u0_m0_wo0_mtree_mult1_46_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 34 => u0_m0_wo0_mtree_mult1_46_im3_q(33)) & u0_m0_wo0_mtree_mult1_46_im3_q));
    u0_m0_wo0_mtree_mult1_46_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 48 => u0_m0_wo0_mtree_mult1_46_align_8_q(47)) & u0_m0_wo0_mtree_mult1_46_align_8_q));
    u0_m0_wo0_mtree_mult1_46_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_46_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_46_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_46_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_46_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_46_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_46_result_add_0_0_o(48 downto 0);

    -- u0_m0_wo0_mtree_add0_23(ADD,200)@18 + 1
    u0_m0_wo0_mtree_add0_23_a <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_46_result_add_0_0_q);
    u0_m0_wo0_mtree_add0_23_b <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_47_result_add_0_0_q);
    u0_m0_wo0_mtree_add0_23_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_23_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_23_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_23_a) + SIGNED(u0_m0_wo0_mtree_add0_23_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_23_q <= u0_m0_wo0_mtree_add0_23_o(48 downto 0);

    -- u0_m0_wo0_cm6_lutmem(DUALMEM,245)@13 + 2
    u0_m0_wo0_cm6_lutmem_aa <= u0_m0_wo0_ca51_q;
    u0_m0_wo0_cm6_lutmem_reset0 <= areset;
    u0_m0_wo0_cm6_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 32,
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
    u0_m0_wo0_cm6_lutmem_r <= u0_m0_wo0_cm6_lutmem_ir(31 downto 0);

    -- u0_m0_wo0_mtree_mult1_45_bs1_merged_bit_select(BITSELECT,869)@15
    u0_m0_wo0_mtree_mult1_45_bs1_merged_bit_select_b <= STD_LOGIC_VECTOR(u0_m0_wo0_cm6_lutmem_r(31 downto 17));
    u0_m0_wo0_mtree_mult1_45_bs1_merged_bit_select_c <= STD_LOGIC_VECTOR(u0_m0_wo0_cm6_lutmem_r(16 downto 0));

    -- u0_m0_wo0_mtree_mult1_45_im0(MULT,357)@15 + 2
    u0_m0_wo0_mtree_mult1_45_im0_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split5_c);
    u0_m0_wo0_mtree_mult1_45_im0_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_45_bs1_merged_bit_select_b);
    u0_m0_wo0_mtree_mult1_45_im0_reset <= areset;
    u0_m0_wo0_mtree_mult1_45_im0_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 16,
        lpm_widthb => 15,
        lpm_widthp => 31,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_45_im0_a0,
        datab => u0_m0_wo0_mtree_mult1_45_im0_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_45_im0_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_45_im0_s1
    );
    u0_m0_wo0_mtree_mult1_45_im0_q <= u0_m0_wo0_mtree_mult1_45_im0_s1;

    -- u0_m0_wo0_mtree_mult1_45_align_8(BITSHIFT,365)@17
    u0_m0_wo0_mtree_mult1_45_align_8_qint <= u0_m0_wo0_mtree_mult1_45_im0_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_45_align_8_q <= u0_m0_wo0_mtree_mult1_45_align_8_qint(47 downto 0);

    -- u0_m0_wo0_mtree_mult1_45_bjA5(BITJOIN,362)@15
    u0_m0_wo0_mtree_mult1_45_bjA5_q <= GND_q & u0_m0_wo0_mtree_mult1_45_bs1_merged_bit_select_c;

    -- u0_m0_wo0_mtree_mult1_45_im3(MULT,360)@15 + 2
    u0_m0_wo0_mtree_mult1_45_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_45_bjA5_q);
    u0_m0_wo0_mtree_mult1_45_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split5_c);
    u0_m0_wo0_mtree_mult1_45_im3_reset <= areset;
    u0_m0_wo0_mtree_mult1_45_im3_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 16,
        lpm_widthp => 34,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_45_im3_a0,
        datab => u0_m0_wo0_mtree_mult1_45_im3_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_45_im3_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_45_im3_s1
    );
    u0_m0_wo0_mtree_mult1_45_im3_q <= u0_m0_wo0_mtree_mult1_45_im3_s1;

    -- u0_m0_wo0_mtree_mult1_45_result_add_0_0(ADD,367)@17 + 1
    u0_m0_wo0_mtree_mult1_45_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 34 => u0_m0_wo0_mtree_mult1_45_im3_q(33)) & u0_m0_wo0_mtree_mult1_45_im3_q));
    u0_m0_wo0_mtree_mult1_45_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 48 => u0_m0_wo0_mtree_mult1_45_align_8_q(47)) & u0_m0_wo0_mtree_mult1_45_align_8_q));
    u0_m0_wo0_mtree_mult1_45_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_45_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_45_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_45_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_45_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_45_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_45_result_add_0_0_o(48 downto 0);

    -- u0_m0_wo0_cm7_lutmem(DUALMEM,246)@13 + 2
    u0_m0_wo0_cm7_lutmem_aa <= u0_m0_wo0_ca51_q;
    u0_m0_wo0_cm7_lutmem_reset0 <= areset;
    u0_m0_wo0_cm7_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 32,
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
    u0_m0_wo0_cm7_lutmem_r <= u0_m0_wo0_cm7_lutmem_ir(31 downto 0);

    -- u0_m0_wo0_mtree_mult1_44_bs1_merged_bit_select(BITSELECT,870)@15
    u0_m0_wo0_mtree_mult1_44_bs1_merged_bit_select_b <= STD_LOGIC_VECTOR(u0_m0_wo0_cm7_lutmem_r(31 downto 17));
    u0_m0_wo0_mtree_mult1_44_bs1_merged_bit_select_c <= STD_LOGIC_VECTOR(u0_m0_wo0_cm7_lutmem_r(16 downto 0));

    -- u0_m0_wo0_mtree_mult1_44_im0(MULT,368)@15 + 2
    u0_m0_wo0_mtree_mult1_44_im0_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split5_d);
    u0_m0_wo0_mtree_mult1_44_im0_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_44_bs1_merged_bit_select_b);
    u0_m0_wo0_mtree_mult1_44_im0_reset <= areset;
    u0_m0_wo0_mtree_mult1_44_im0_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 16,
        lpm_widthb => 15,
        lpm_widthp => 31,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_44_im0_a0,
        datab => u0_m0_wo0_mtree_mult1_44_im0_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_44_im0_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_44_im0_s1
    );
    u0_m0_wo0_mtree_mult1_44_im0_q <= u0_m0_wo0_mtree_mult1_44_im0_s1;

    -- u0_m0_wo0_mtree_mult1_44_align_8(BITSHIFT,376)@17
    u0_m0_wo0_mtree_mult1_44_align_8_qint <= u0_m0_wo0_mtree_mult1_44_im0_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_44_align_8_q <= u0_m0_wo0_mtree_mult1_44_align_8_qint(47 downto 0);

    -- u0_m0_wo0_mtree_mult1_44_bjA5(BITJOIN,373)@15
    u0_m0_wo0_mtree_mult1_44_bjA5_q <= GND_q & u0_m0_wo0_mtree_mult1_44_bs1_merged_bit_select_c;

    -- u0_m0_wo0_mtree_mult1_44_im3(MULT,371)@15 + 2
    u0_m0_wo0_mtree_mult1_44_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_44_bjA5_q);
    u0_m0_wo0_mtree_mult1_44_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split5_d);
    u0_m0_wo0_mtree_mult1_44_im3_reset <= areset;
    u0_m0_wo0_mtree_mult1_44_im3_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 16,
        lpm_widthp => 34,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_44_im3_a0,
        datab => u0_m0_wo0_mtree_mult1_44_im3_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_44_im3_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_44_im3_s1
    );
    u0_m0_wo0_mtree_mult1_44_im3_q <= u0_m0_wo0_mtree_mult1_44_im3_s1;

    -- u0_m0_wo0_mtree_mult1_44_result_add_0_0(ADD,378)@17 + 1
    u0_m0_wo0_mtree_mult1_44_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 34 => u0_m0_wo0_mtree_mult1_44_im3_q(33)) & u0_m0_wo0_mtree_mult1_44_im3_q));
    u0_m0_wo0_mtree_mult1_44_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 48 => u0_m0_wo0_mtree_mult1_44_align_8_q(47)) & u0_m0_wo0_mtree_mult1_44_align_8_q));
    u0_m0_wo0_mtree_mult1_44_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_44_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_44_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_44_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_44_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_44_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_44_result_add_0_0_o(48 downto 0);

    -- u0_m0_wo0_mtree_add0_22(ADD,199)@18 + 1
    u0_m0_wo0_mtree_add0_22_a <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_44_result_add_0_0_q);
    u0_m0_wo0_mtree_add0_22_b <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_45_result_add_0_0_q);
    u0_m0_wo0_mtree_add0_22_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_22_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_22_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_22_a) + SIGNED(u0_m0_wo0_mtree_add0_22_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_22_q <= u0_m0_wo0_mtree_add0_22_o(48 downto 0);

    -- u0_m0_wo0_mtree_add1_11(ADD,214)@19 + 1
    u0_m0_wo0_mtree_add1_11_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((49 downto 49 => u0_m0_wo0_mtree_add0_22_q(48)) & u0_m0_wo0_mtree_add0_22_q));
    u0_m0_wo0_mtree_add1_11_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((49 downto 49 => u0_m0_wo0_mtree_add0_23_q(48)) & u0_m0_wo0_mtree_add0_23_q));
    u0_m0_wo0_mtree_add1_11_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_11_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_11_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_11_a) + SIGNED(u0_m0_wo0_mtree_add1_11_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_11_q <= u0_m0_wo0_mtree_add1_11_o(49 downto 0);

    -- u0_m0_wo0_cm8_lutmem(DUALMEM,247)@13 + 2
    u0_m0_wo0_cm8_lutmem_aa <= u0_m0_wo0_ca51_q;
    u0_m0_wo0_cm8_lutmem_reset0 <= areset;
    u0_m0_wo0_cm8_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 32,
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
    u0_m0_wo0_cm8_lutmem_r <= u0_m0_wo0_cm8_lutmem_ir(31 downto 0);

    -- u0_m0_wo0_mtree_mult1_43_bs1_merged_bit_select(BITSELECT,871)@15
    u0_m0_wo0_mtree_mult1_43_bs1_merged_bit_select_b <= STD_LOGIC_VECTOR(u0_m0_wo0_cm8_lutmem_r(31 downto 17));
    u0_m0_wo0_mtree_mult1_43_bs1_merged_bit_select_c <= STD_LOGIC_VECTOR(u0_m0_wo0_cm8_lutmem_r(16 downto 0));

    -- u0_m0_wo0_mtree_mult1_43_im0(MULT,379)@15 + 2
    u0_m0_wo0_mtree_mult1_43_im0_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split5_e);
    u0_m0_wo0_mtree_mult1_43_im0_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_43_bs1_merged_bit_select_b);
    u0_m0_wo0_mtree_mult1_43_im0_reset <= areset;
    u0_m0_wo0_mtree_mult1_43_im0_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 16,
        lpm_widthb => 15,
        lpm_widthp => 31,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_43_im0_a0,
        datab => u0_m0_wo0_mtree_mult1_43_im0_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_43_im0_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_43_im0_s1
    );
    u0_m0_wo0_mtree_mult1_43_im0_q <= u0_m0_wo0_mtree_mult1_43_im0_s1;

    -- u0_m0_wo0_mtree_mult1_43_align_8(BITSHIFT,387)@17
    u0_m0_wo0_mtree_mult1_43_align_8_qint <= u0_m0_wo0_mtree_mult1_43_im0_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_43_align_8_q <= u0_m0_wo0_mtree_mult1_43_align_8_qint(47 downto 0);

    -- u0_m0_wo0_mtree_mult1_43_bjA5(BITJOIN,384)@15
    u0_m0_wo0_mtree_mult1_43_bjA5_q <= GND_q & u0_m0_wo0_mtree_mult1_43_bs1_merged_bit_select_c;

    -- u0_m0_wo0_mtree_mult1_43_im3(MULT,382)@15 + 2
    u0_m0_wo0_mtree_mult1_43_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_43_bjA5_q);
    u0_m0_wo0_mtree_mult1_43_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split5_e);
    u0_m0_wo0_mtree_mult1_43_im3_reset <= areset;
    u0_m0_wo0_mtree_mult1_43_im3_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 16,
        lpm_widthp => 34,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_43_im3_a0,
        datab => u0_m0_wo0_mtree_mult1_43_im3_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_43_im3_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_43_im3_s1
    );
    u0_m0_wo0_mtree_mult1_43_im3_q <= u0_m0_wo0_mtree_mult1_43_im3_s1;

    -- u0_m0_wo0_mtree_mult1_43_result_add_0_0(ADD,389)@17 + 1
    u0_m0_wo0_mtree_mult1_43_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 34 => u0_m0_wo0_mtree_mult1_43_im3_q(33)) & u0_m0_wo0_mtree_mult1_43_im3_q));
    u0_m0_wo0_mtree_mult1_43_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 48 => u0_m0_wo0_mtree_mult1_43_align_8_q(47)) & u0_m0_wo0_mtree_mult1_43_align_8_q));
    u0_m0_wo0_mtree_mult1_43_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_43_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_43_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_43_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_43_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_43_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_43_result_add_0_0_o(48 downto 0);

    -- u0_m0_wo0_cm9_lutmem(DUALMEM,248)@13 + 2
    u0_m0_wo0_cm9_lutmem_aa <= u0_m0_wo0_ca51_q;
    u0_m0_wo0_cm9_lutmem_reset0 <= areset;
    u0_m0_wo0_cm9_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 32,
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
    u0_m0_wo0_cm9_lutmem_r <= u0_m0_wo0_cm9_lutmem_ir(31 downto 0);

    -- u0_m0_wo0_mtree_mult1_42_bs1_merged_bit_select(BITSELECT,872)@15
    u0_m0_wo0_mtree_mult1_42_bs1_merged_bit_select_b <= STD_LOGIC_VECTOR(u0_m0_wo0_cm9_lutmem_r(31 downto 17));
    u0_m0_wo0_mtree_mult1_42_bs1_merged_bit_select_c <= STD_LOGIC_VECTOR(u0_m0_wo0_cm9_lutmem_r(16 downto 0));

    -- u0_m0_wo0_wi0_r0_join9(BITJOIN,36)@15
    u0_m0_wo0_wi0_r0_join9_q <= u0_m0_wo0_wi0_r0_split9_d & u0_m0_wo0_wi0_r0_split9_c & u0_m0_wo0_wi0_r0_split9_b & u0_m0_wo0_wi0_r0_split5_e;

    -- u0_m0_wo0_wi0_r0_memr9(DUALMEM,38)@15
    u0_m0_wo0_wi0_r0_memr9_ia <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_join9_q);
    u0_m0_wo0_wi0_r0_memr9_aa <= u0_m0_wo0_wi0_r0_wa51_q;
    u0_m0_wo0_wi0_r0_memr9_ab <= u0_m0_wo0_wi0_r0_ra51_resize_b;
    u0_m0_wo0_wi0_r0_memr9_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "DUAL_PORT",
        width_a => 64,
        widthad_a => 8,
        numwords_a => 256,
        width_b => 64,
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
        address_a => u0_m0_wo0_wi0_r0_memr9_aa,
        data_a => u0_m0_wo0_wi0_r0_memr9_ia,
        wren_a => u0_m0_wo0_wi0_r0_we51_seq_q(0),
        address_b => u0_m0_wo0_wi0_r0_memr9_ab,
        q_b => u0_m0_wo0_wi0_r0_memr9_iq
    );
    u0_m0_wo0_wi0_r0_memr9_q <= u0_m0_wo0_wi0_r0_memr9_iq(63 downto 0);

    -- u0_m0_wo0_wi0_r0_split9(BITSELECT,37)@15
    u0_m0_wo0_wi0_r0_split9_b <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr9_q(15 downto 0));
    u0_m0_wo0_wi0_r0_split9_c <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr9_q(31 downto 16));
    u0_m0_wo0_wi0_r0_split9_d <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr9_q(47 downto 32));
    u0_m0_wo0_wi0_r0_split9_e <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr9_q(63 downto 48));

    -- u0_m0_wo0_mtree_mult1_42_im0(MULT,390)@15 + 2
    u0_m0_wo0_mtree_mult1_42_im0_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split9_b);
    u0_m0_wo0_mtree_mult1_42_im0_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_42_bs1_merged_bit_select_b);
    u0_m0_wo0_mtree_mult1_42_im0_reset <= areset;
    u0_m0_wo0_mtree_mult1_42_im0_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 16,
        lpm_widthb => 15,
        lpm_widthp => 31,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_42_im0_a0,
        datab => u0_m0_wo0_mtree_mult1_42_im0_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_42_im0_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_42_im0_s1
    );
    u0_m0_wo0_mtree_mult1_42_im0_q <= u0_m0_wo0_mtree_mult1_42_im0_s1;

    -- u0_m0_wo0_mtree_mult1_42_align_8(BITSHIFT,398)@17
    u0_m0_wo0_mtree_mult1_42_align_8_qint <= u0_m0_wo0_mtree_mult1_42_im0_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_42_align_8_q <= u0_m0_wo0_mtree_mult1_42_align_8_qint(47 downto 0);

    -- u0_m0_wo0_mtree_mult1_42_bjA5(BITJOIN,395)@15
    u0_m0_wo0_mtree_mult1_42_bjA5_q <= GND_q & u0_m0_wo0_mtree_mult1_42_bs1_merged_bit_select_c;

    -- u0_m0_wo0_mtree_mult1_42_im3(MULT,393)@15 + 2
    u0_m0_wo0_mtree_mult1_42_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_42_bjA5_q);
    u0_m0_wo0_mtree_mult1_42_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split9_b);
    u0_m0_wo0_mtree_mult1_42_im3_reset <= areset;
    u0_m0_wo0_mtree_mult1_42_im3_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 16,
        lpm_widthp => 34,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_42_im3_a0,
        datab => u0_m0_wo0_mtree_mult1_42_im3_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_42_im3_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_42_im3_s1
    );
    u0_m0_wo0_mtree_mult1_42_im3_q <= u0_m0_wo0_mtree_mult1_42_im3_s1;

    -- u0_m0_wo0_mtree_mult1_42_result_add_0_0(ADD,400)@17 + 1
    u0_m0_wo0_mtree_mult1_42_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 34 => u0_m0_wo0_mtree_mult1_42_im3_q(33)) & u0_m0_wo0_mtree_mult1_42_im3_q));
    u0_m0_wo0_mtree_mult1_42_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 48 => u0_m0_wo0_mtree_mult1_42_align_8_q(47)) & u0_m0_wo0_mtree_mult1_42_align_8_q));
    u0_m0_wo0_mtree_mult1_42_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_42_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_42_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_42_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_42_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_42_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_42_result_add_0_0_o(48 downto 0);

    -- u0_m0_wo0_mtree_add0_21(ADD,198)@18 + 1
    u0_m0_wo0_mtree_add0_21_a <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_42_result_add_0_0_q);
    u0_m0_wo0_mtree_add0_21_b <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_43_result_add_0_0_q);
    u0_m0_wo0_mtree_add0_21_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_21_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_21_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_21_a) + SIGNED(u0_m0_wo0_mtree_add0_21_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_21_q <= u0_m0_wo0_mtree_add0_21_o(48 downto 0);

    -- u0_m0_wo0_cm10_lutmem(DUALMEM,249)@13 + 2
    u0_m0_wo0_cm10_lutmem_aa <= u0_m0_wo0_ca51_q;
    u0_m0_wo0_cm10_lutmem_reset0 <= areset;
    u0_m0_wo0_cm10_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 32,
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
    u0_m0_wo0_cm10_lutmem_r <= u0_m0_wo0_cm10_lutmem_ir(31 downto 0);

    -- u0_m0_wo0_mtree_mult1_41_bs1_merged_bit_select(BITSELECT,873)@15
    u0_m0_wo0_mtree_mult1_41_bs1_merged_bit_select_b <= STD_LOGIC_VECTOR(u0_m0_wo0_cm10_lutmem_r(31 downto 17));
    u0_m0_wo0_mtree_mult1_41_bs1_merged_bit_select_c <= STD_LOGIC_VECTOR(u0_m0_wo0_cm10_lutmem_r(16 downto 0));

    -- u0_m0_wo0_mtree_mult1_41_im0(MULT,401)@15 + 2
    u0_m0_wo0_mtree_mult1_41_im0_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split9_c);
    u0_m0_wo0_mtree_mult1_41_im0_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_41_bs1_merged_bit_select_b);
    u0_m0_wo0_mtree_mult1_41_im0_reset <= areset;
    u0_m0_wo0_mtree_mult1_41_im0_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 16,
        lpm_widthb => 15,
        lpm_widthp => 31,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_41_im0_a0,
        datab => u0_m0_wo0_mtree_mult1_41_im0_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_41_im0_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_41_im0_s1
    );
    u0_m0_wo0_mtree_mult1_41_im0_q <= u0_m0_wo0_mtree_mult1_41_im0_s1;

    -- u0_m0_wo0_mtree_mult1_41_align_8(BITSHIFT,409)@17
    u0_m0_wo0_mtree_mult1_41_align_8_qint <= u0_m0_wo0_mtree_mult1_41_im0_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_41_align_8_q <= u0_m0_wo0_mtree_mult1_41_align_8_qint(47 downto 0);

    -- u0_m0_wo0_mtree_mult1_41_bjA5(BITJOIN,406)@15
    u0_m0_wo0_mtree_mult1_41_bjA5_q <= GND_q & u0_m0_wo0_mtree_mult1_41_bs1_merged_bit_select_c;

    -- u0_m0_wo0_mtree_mult1_41_im3(MULT,404)@15 + 2
    u0_m0_wo0_mtree_mult1_41_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_41_bjA5_q);
    u0_m0_wo0_mtree_mult1_41_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split9_c);
    u0_m0_wo0_mtree_mult1_41_im3_reset <= areset;
    u0_m0_wo0_mtree_mult1_41_im3_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 16,
        lpm_widthp => 34,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_41_im3_a0,
        datab => u0_m0_wo0_mtree_mult1_41_im3_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_41_im3_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_41_im3_s1
    );
    u0_m0_wo0_mtree_mult1_41_im3_q <= u0_m0_wo0_mtree_mult1_41_im3_s1;

    -- u0_m0_wo0_mtree_mult1_41_result_add_0_0(ADD,411)@17 + 1
    u0_m0_wo0_mtree_mult1_41_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 34 => u0_m0_wo0_mtree_mult1_41_im3_q(33)) & u0_m0_wo0_mtree_mult1_41_im3_q));
    u0_m0_wo0_mtree_mult1_41_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 48 => u0_m0_wo0_mtree_mult1_41_align_8_q(47)) & u0_m0_wo0_mtree_mult1_41_align_8_q));
    u0_m0_wo0_mtree_mult1_41_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_41_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_41_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_41_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_41_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_41_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_41_result_add_0_0_o(48 downto 0);

    -- u0_m0_wo0_cm11_lutmem(DUALMEM,250)@13 + 2
    u0_m0_wo0_cm11_lutmem_aa <= u0_m0_wo0_ca51_q;
    u0_m0_wo0_cm11_lutmem_reset0 <= areset;
    u0_m0_wo0_cm11_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 32,
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
    u0_m0_wo0_cm11_lutmem_r <= u0_m0_wo0_cm11_lutmem_ir(31 downto 0);

    -- u0_m0_wo0_mtree_mult1_40_bs1_merged_bit_select(BITSELECT,874)@15
    u0_m0_wo0_mtree_mult1_40_bs1_merged_bit_select_b <= STD_LOGIC_VECTOR(u0_m0_wo0_cm11_lutmem_r(31 downto 17));
    u0_m0_wo0_mtree_mult1_40_bs1_merged_bit_select_c <= STD_LOGIC_VECTOR(u0_m0_wo0_cm11_lutmem_r(16 downto 0));

    -- u0_m0_wo0_mtree_mult1_40_im0(MULT,412)@15 + 2
    u0_m0_wo0_mtree_mult1_40_im0_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split9_d);
    u0_m0_wo0_mtree_mult1_40_im0_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_40_bs1_merged_bit_select_b);
    u0_m0_wo0_mtree_mult1_40_im0_reset <= areset;
    u0_m0_wo0_mtree_mult1_40_im0_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 16,
        lpm_widthb => 15,
        lpm_widthp => 31,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_40_im0_a0,
        datab => u0_m0_wo0_mtree_mult1_40_im0_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_40_im0_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_40_im0_s1
    );
    u0_m0_wo0_mtree_mult1_40_im0_q <= u0_m0_wo0_mtree_mult1_40_im0_s1;

    -- u0_m0_wo0_mtree_mult1_40_align_8(BITSHIFT,420)@17
    u0_m0_wo0_mtree_mult1_40_align_8_qint <= u0_m0_wo0_mtree_mult1_40_im0_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_40_align_8_q <= u0_m0_wo0_mtree_mult1_40_align_8_qint(47 downto 0);

    -- u0_m0_wo0_mtree_mult1_40_bjA5(BITJOIN,417)@15
    u0_m0_wo0_mtree_mult1_40_bjA5_q <= GND_q & u0_m0_wo0_mtree_mult1_40_bs1_merged_bit_select_c;

    -- u0_m0_wo0_mtree_mult1_40_im3(MULT,415)@15 + 2
    u0_m0_wo0_mtree_mult1_40_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_40_bjA5_q);
    u0_m0_wo0_mtree_mult1_40_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split9_d);
    u0_m0_wo0_mtree_mult1_40_im3_reset <= areset;
    u0_m0_wo0_mtree_mult1_40_im3_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 16,
        lpm_widthp => 34,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_40_im3_a0,
        datab => u0_m0_wo0_mtree_mult1_40_im3_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_40_im3_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_40_im3_s1
    );
    u0_m0_wo0_mtree_mult1_40_im3_q <= u0_m0_wo0_mtree_mult1_40_im3_s1;

    -- u0_m0_wo0_mtree_mult1_40_result_add_0_0(ADD,422)@17 + 1
    u0_m0_wo0_mtree_mult1_40_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 34 => u0_m0_wo0_mtree_mult1_40_im3_q(33)) & u0_m0_wo0_mtree_mult1_40_im3_q));
    u0_m0_wo0_mtree_mult1_40_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 48 => u0_m0_wo0_mtree_mult1_40_align_8_q(47)) & u0_m0_wo0_mtree_mult1_40_align_8_q));
    u0_m0_wo0_mtree_mult1_40_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_40_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_40_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_40_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_40_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_40_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_40_result_add_0_0_o(48 downto 0);

    -- u0_m0_wo0_mtree_add0_20(ADD,197)@18 + 1
    u0_m0_wo0_mtree_add0_20_a <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_40_result_add_0_0_q);
    u0_m0_wo0_mtree_add0_20_b <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_41_result_add_0_0_q);
    u0_m0_wo0_mtree_add0_20_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_20_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_20_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_20_a) + SIGNED(u0_m0_wo0_mtree_add0_20_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_20_q <= u0_m0_wo0_mtree_add0_20_o(48 downto 0);

    -- u0_m0_wo0_mtree_add1_10(ADD,213)@19 + 1
    u0_m0_wo0_mtree_add1_10_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((49 downto 49 => u0_m0_wo0_mtree_add0_20_q(48)) & u0_m0_wo0_mtree_add0_20_q));
    u0_m0_wo0_mtree_add1_10_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((49 downto 49 => u0_m0_wo0_mtree_add0_21_q(48)) & u0_m0_wo0_mtree_add0_21_q));
    u0_m0_wo0_mtree_add1_10_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_10_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_10_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_10_a) + SIGNED(u0_m0_wo0_mtree_add1_10_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_10_q <= u0_m0_wo0_mtree_add1_10_o(49 downto 0);

    -- u0_m0_wo0_mtree_add2_5(ADD,221)@20 + 1
    u0_m0_wo0_mtree_add2_5_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((50 downto 50 => u0_m0_wo0_mtree_add1_10_q(49)) & u0_m0_wo0_mtree_add1_10_q));
    u0_m0_wo0_mtree_add2_5_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((50 downto 50 => u0_m0_wo0_mtree_add1_11_q(49)) & u0_m0_wo0_mtree_add1_11_q));
    u0_m0_wo0_mtree_add2_5_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add2_5_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add2_5_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add2_5_a) + SIGNED(u0_m0_wo0_mtree_add2_5_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add2_5_q <= u0_m0_wo0_mtree_add2_5_o(50 downto 0);

    -- u0_m0_wo0_cm12_lutmem(DUALMEM,251)@13 + 2
    u0_m0_wo0_cm12_lutmem_aa <= u0_m0_wo0_ca51_q;
    u0_m0_wo0_cm12_lutmem_reset0 <= areset;
    u0_m0_wo0_cm12_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 32,
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
    u0_m0_wo0_cm12_lutmem_r <= u0_m0_wo0_cm12_lutmem_ir(31 downto 0);

    -- u0_m0_wo0_mtree_mult1_39_bs1_merged_bit_select(BITSELECT,875)@15
    u0_m0_wo0_mtree_mult1_39_bs1_merged_bit_select_b <= STD_LOGIC_VECTOR(u0_m0_wo0_cm12_lutmem_r(31 downto 17));
    u0_m0_wo0_mtree_mult1_39_bs1_merged_bit_select_c <= STD_LOGIC_VECTOR(u0_m0_wo0_cm12_lutmem_r(16 downto 0));

    -- u0_m0_wo0_mtree_mult1_39_im0(MULT,423)@15 + 2
    u0_m0_wo0_mtree_mult1_39_im0_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split9_e);
    u0_m0_wo0_mtree_mult1_39_im0_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_39_bs1_merged_bit_select_b);
    u0_m0_wo0_mtree_mult1_39_im0_reset <= areset;
    u0_m0_wo0_mtree_mult1_39_im0_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 16,
        lpm_widthb => 15,
        lpm_widthp => 31,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_39_im0_a0,
        datab => u0_m0_wo0_mtree_mult1_39_im0_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_39_im0_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_39_im0_s1
    );
    u0_m0_wo0_mtree_mult1_39_im0_q <= u0_m0_wo0_mtree_mult1_39_im0_s1;

    -- u0_m0_wo0_mtree_mult1_39_align_8(BITSHIFT,431)@17
    u0_m0_wo0_mtree_mult1_39_align_8_qint <= u0_m0_wo0_mtree_mult1_39_im0_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_39_align_8_q <= u0_m0_wo0_mtree_mult1_39_align_8_qint(47 downto 0);

    -- u0_m0_wo0_mtree_mult1_39_bjA5(BITJOIN,428)@15
    u0_m0_wo0_mtree_mult1_39_bjA5_q <= GND_q & u0_m0_wo0_mtree_mult1_39_bs1_merged_bit_select_c;

    -- u0_m0_wo0_mtree_mult1_39_im3(MULT,426)@15 + 2
    u0_m0_wo0_mtree_mult1_39_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_39_bjA5_q);
    u0_m0_wo0_mtree_mult1_39_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split9_e);
    u0_m0_wo0_mtree_mult1_39_im3_reset <= areset;
    u0_m0_wo0_mtree_mult1_39_im3_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 16,
        lpm_widthp => 34,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_39_im3_a0,
        datab => u0_m0_wo0_mtree_mult1_39_im3_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_39_im3_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_39_im3_s1
    );
    u0_m0_wo0_mtree_mult1_39_im3_q <= u0_m0_wo0_mtree_mult1_39_im3_s1;

    -- u0_m0_wo0_mtree_mult1_39_result_add_0_0(ADD,433)@17 + 1
    u0_m0_wo0_mtree_mult1_39_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 34 => u0_m0_wo0_mtree_mult1_39_im3_q(33)) & u0_m0_wo0_mtree_mult1_39_im3_q));
    u0_m0_wo0_mtree_mult1_39_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 48 => u0_m0_wo0_mtree_mult1_39_align_8_q(47)) & u0_m0_wo0_mtree_mult1_39_align_8_q));
    u0_m0_wo0_mtree_mult1_39_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_39_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_39_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_39_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_39_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_39_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_39_result_add_0_0_o(48 downto 0);

    -- u0_m0_wo0_cm13_lutmem(DUALMEM,252)@13 + 2
    u0_m0_wo0_cm13_lutmem_aa <= u0_m0_wo0_ca51_q;
    u0_m0_wo0_cm13_lutmem_reset0 <= areset;
    u0_m0_wo0_cm13_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 32,
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
    u0_m0_wo0_cm13_lutmem_r <= u0_m0_wo0_cm13_lutmem_ir(31 downto 0);

    -- u0_m0_wo0_mtree_mult1_38_bs1_merged_bit_select(BITSELECT,876)@15
    u0_m0_wo0_mtree_mult1_38_bs1_merged_bit_select_b <= STD_LOGIC_VECTOR(u0_m0_wo0_cm13_lutmem_r(31 downto 17));
    u0_m0_wo0_mtree_mult1_38_bs1_merged_bit_select_c <= STD_LOGIC_VECTOR(u0_m0_wo0_cm13_lutmem_r(16 downto 0));

    -- u0_m0_wo0_wi0_r0_join13(BITJOIN,39)@15
    u0_m0_wo0_wi0_r0_join13_q <= u0_m0_wo0_wi0_r0_split13_d & u0_m0_wo0_wi0_r0_split13_c & u0_m0_wo0_wi0_r0_split13_b & u0_m0_wo0_wi0_r0_split9_e;

    -- u0_m0_wo0_wi0_r0_memr13(DUALMEM,41)@15
    u0_m0_wo0_wi0_r0_memr13_ia <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_join13_q);
    u0_m0_wo0_wi0_r0_memr13_aa <= u0_m0_wo0_wi0_r0_wa51_q;
    u0_m0_wo0_wi0_r0_memr13_ab <= u0_m0_wo0_wi0_r0_ra51_resize_b;
    u0_m0_wo0_wi0_r0_memr13_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "DUAL_PORT",
        width_a => 64,
        widthad_a => 8,
        numwords_a => 256,
        width_b => 64,
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
    u0_m0_wo0_wi0_r0_memr13_q <= u0_m0_wo0_wi0_r0_memr13_iq(63 downto 0);

    -- u0_m0_wo0_wi0_r0_split13(BITSELECT,40)@15
    u0_m0_wo0_wi0_r0_split13_b <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr13_q(15 downto 0));
    u0_m0_wo0_wi0_r0_split13_c <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr13_q(31 downto 16));
    u0_m0_wo0_wi0_r0_split13_d <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr13_q(47 downto 32));
    u0_m0_wo0_wi0_r0_split13_e <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr13_q(63 downto 48));

    -- u0_m0_wo0_mtree_mult1_38_im0(MULT,434)@15 + 2
    u0_m0_wo0_mtree_mult1_38_im0_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split13_b);
    u0_m0_wo0_mtree_mult1_38_im0_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_38_bs1_merged_bit_select_b);
    u0_m0_wo0_mtree_mult1_38_im0_reset <= areset;
    u0_m0_wo0_mtree_mult1_38_im0_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 16,
        lpm_widthb => 15,
        lpm_widthp => 31,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_38_im0_a0,
        datab => u0_m0_wo0_mtree_mult1_38_im0_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_38_im0_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_38_im0_s1
    );
    u0_m0_wo0_mtree_mult1_38_im0_q <= u0_m0_wo0_mtree_mult1_38_im0_s1;

    -- u0_m0_wo0_mtree_mult1_38_align_8(BITSHIFT,442)@17
    u0_m0_wo0_mtree_mult1_38_align_8_qint <= u0_m0_wo0_mtree_mult1_38_im0_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_38_align_8_q <= u0_m0_wo0_mtree_mult1_38_align_8_qint(47 downto 0);

    -- u0_m0_wo0_mtree_mult1_38_bjA5(BITJOIN,439)@15
    u0_m0_wo0_mtree_mult1_38_bjA5_q <= GND_q & u0_m0_wo0_mtree_mult1_38_bs1_merged_bit_select_c;

    -- u0_m0_wo0_mtree_mult1_38_im3(MULT,437)@15 + 2
    u0_m0_wo0_mtree_mult1_38_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_38_bjA5_q);
    u0_m0_wo0_mtree_mult1_38_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split13_b);
    u0_m0_wo0_mtree_mult1_38_im3_reset <= areset;
    u0_m0_wo0_mtree_mult1_38_im3_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 16,
        lpm_widthp => 34,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_38_im3_a0,
        datab => u0_m0_wo0_mtree_mult1_38_im3_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_38_im3_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_38_im3_s1
    );
    u0_m0_wo0_mtree_mult1_38_im3_q <= u0_m0_wo0_mtree_mult1_38_im3_s1;

    -- u0_m0_wo0_mtree_mult1_38_result_add_0_0(ADD,444)@17 + 1
    u0_m0_wo0_mtree_mult1_38_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 34 => u0_m0_wo0_mtree_mult1_38_im3_q(33)) & u0_m0_wo0_mtree_mult1_38_im3_q));
    u0_m0_wo0_mtree_mult1_38_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 48 => u0_m0_wo0_mtree_mult1_38_align_8_q(47)) & u0_m0_wo0_mtree_mult1_38_align_8_q));
    u0_m0_wo0_mtree_mult1_38_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_38_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_38_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_38_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_38_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_38_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_38_result_add_0_0_o(48 downto 0);

    -- u0_m0_wo0_mtree_add0_19(ADD,196)@18 + 1
    u0_m0_wo0_mtree_add0_19_a <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_38_result_add_0_0_q);
    u0_m0_wo0_mtree_add0_19_b <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_39_result_add_0_0_q);
    u0_m0_wo0_mtree_add0_19_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_19_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_19_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_19_a) + SIGNED(u0_m0_wo0_mtree_add0_19_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_19_q <= u0_m0_wo0_mtree_add0_19_o(48 downto 0);

    -- u0_m0_wo0_cm14_lutmem(DUALMEM,253)@13 + 2
    u0_m0_wo0_cm14_lutmem_aa <= u0_m0_wo0_ca51_q;
    u0_m0_wo0_cm14_lutmem_reset0 <= areset;
    u0_m0_wo0_cm14_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 32,
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
    u0_m0_wo0_cm14_lutmem_r <= u0_m0_wo0_cm14_lutmem_ir(31 downto 0);

    -- u0_m0_wo0_mtree_mult1_37_bs1_merged_bit_select(BITSELECT,877)@15
    u0_m0_wo0_mtree_mult1_37_bs1_merged_bit_select_b <= STD_LOGIC_VECTOR(u0_m0_wo0_cm14_lutmem_r(31 downto 17));
    u0_m0_wo0_mtree_mult1_37_bs1_merged_bit_select_c <= STD_LOGIC_VECTOR(u0_m0_wo0_cm14_lutmem_r(16 downto 0));

    -- u0_m0_wo0_mtree_mult1_37_im0(MULT,445)@15 + 2
    u0_m0_wo0_mtree_mult1_37_im0_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split13_c);
    u0_m0_wo0_mtree_mult1_37_im0_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_37_bs1_merged_bit_select_b);
    u0_m0_wo0_mtree_mult1_37_im0_reset <= areset;
    u0_m0_wo0_mtree_mult1_37_im0_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 16,
        lpm_widthb => 15,
        lpm_widthp => 31,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_37_im0_a0,
        datab => u0_m0_wo0_mtree_mult1_37_im0_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_37_im0_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_37_im0_s1
    );
    u0_m0_wo0_mtree_mult1_37_im0_q <= u0_m0_wo0_mtree_mult1_37_im0_s1;

    -- u0_m0_wo0_mtree_mult1_37_align_8(BITSHIFT,453)@17
    u0_m0_wo0_mtree_mult1_37_align_8_qint <= u0_m0_wo0_mtree_mult1_37_im0_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_37_align_8_q <= u0_m0_wo0_mtree_mult1_37_align_8_qint(47 downto 0);

    -- u0_m0_wo0_mtree_mult1_37_bjA5(BITJOIN,450)@15
    u0_m0_wo0_mtree_mult1_37_bjA5_q <= GND_q & u0_m0_wo0_mtree_mult1_37_bs1_merged_bit_select_c;

    -- u0_m0_wo0_mtree_mult1_37_im3(MULT,448)@15 + 2
    u0_m0_wo0_mtree_mult1_37_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_37_bjA5_q);
    u0_m0_wo0_mtree_mult1_37_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split13_c);
    u0_m0_wo0_mtree_mult1_37_im3_reset <= areset;
    u0_m0_wo0_mtree_mult1_37_im3_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 16,
        lpm_widthp => 34,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_37_im3_a0,
        datab => u0_m0_wo0_mtree_mult1_37_im3_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_37_im3_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_37_im3_s1
    );
    u0_m0_wo0_mtree_mult1_37_im3_q <= u0_m0_wo0_mtree_mult1_37_im3_s1;

    -- u0_m0_wo0_mtree_mult1_37_result_add_0_0(ADD,455)@17 + 1
    u0_m0_wo0_mtree_mult1_37_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 34 => u0_m0_wo0_mtree_mult1_37_im3_q(33)) & u0_m0_wo0_mtree_mult1_37_im3_q));
    u0_m0_wo0_mtree_mult1_37_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 48 => u0_m0_wo0_mtree_mult1_37_align_8_q(47)) & u0_m0_wo0_mtree_mult1_37_align_8_q));
    u0_m0_wo0_mtree_mult1_37_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_37_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_37_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_37_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_37_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_37_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_37_result_add_0_0_o(48 downto 0);

    -- u0_m0_wo0_cm15_lutmem(DUALMEM,254)@13 + 2
    u0_m0_wo0_cm15_lutmem_aa <= u0_m0_wo0_ca51_q;
    u0_m0_wo0_cm15_lutmem_reset0 <= areset;
    u0_m0_wo0_cm15_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 32,
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
    u0_m0_wo0_cm15_lutmem_r <= u0_m0_wo0_cm15_lutmem_ir(31 downto 0);

    -- u0_m0_wo0_mtree_mult1_36_bs1_merged_bit_select(BITSELECT,878)@15
    u0_m0_wo0_mtree_mult1_36_bs1_merged_bit_select_b <= STD_LOGIC_VECTOR(u0_m0_wo0_cm15_lutmem_r(31 downto 17));
    u0_m0_wo0_mtree_mult1_36_bs1_merged_bit_select_c <= STD_LOGIC_VECTOR(u0_m0_wo0_cm15_lutmem_r(16 downto 0));

    -- u0_m0_wo0_mtree_mult1_36_im0(MULT,456)@15 + 2
    u0_m0_wo0_mtree_mult1_36_im0_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split13_d);
    u0_m0_wo0_mtree_mult1_36_im0_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_36_bs1_merged_bit_select_b);
    u0_m0_wo0_mtree_mult1_36_im0_reset <= areset;
    u0_m0_wo0_mtree_mult1_36_im0_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 16,
        lpm_widthb => 15,
        lpm_widthp => 31,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_36_im0_a0,
        datab => u0_m0_wo0_mtree_mult1_36_im0_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_36_im0_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_36_im0_s1
    );
    u0_m0_wo0_mtree_mult1_36_im0_q <= u0_m0_wo0_mtree_mult1_36_im0_s1;

    -- u0_m0_wo0_mtree_mult1_36_align_8(BITSHIFT,464)@17
    u0_m0_wo0_mtree_mult1_36_align_8_qint <= u0_m0_wo0_mtree_mult1_36_im0_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_36_align_8_q <= u0_m0_wo0_mtree_mult1_36_align_8_qint(47 downto 0);

    -- u0_m0_wo0_mtree_mult1_36_bjA5(BITJOIN,461)@15
    u0_m0_wo0_mtree_mult1_36_bjA5_q <= GND_q & u0_m0_wo0_mtree_mult1_36_bs1_merged_bit_select_c;

    -- u0_m0_wo0_mtree_mult1_36_im3(MULT,459)@15 + 2
    u0_m0_wo0_mtree_mult1_36_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_36_bjA5_q);
    u0_m0_wo0_mtree_mult1_36_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split13_d);
    u0_m0_wo0_mtree_mult1_36_im3_reset <= areset;
    u0_m0_wo0_mtree_mult1_36_im3_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 16,
        lpm_widthp => 34,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_36_im3_a0,
        datab => u0_m0_wo0_mtree_mult1_36_im3_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_36_im3_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_36_im3_s1
    );
    u0_m0_wo0_mtree_mult1_36_im3_q <= u0_m0_wo0_mtree_mult1_36_im3_s1;

    -- u0_m0_wo0_mtree_mult1_36_result_add_0_0(ADD,466)@17 + 1
    u0_m0_wo0_mtree_mult1_36_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 34 => u0_m0_wo0_mtree_mult1_36_im3_q(33)) & u0_m0_wo0_mtree_mult1_36_im3_q));
    u0_m0_wo0_mtree_mult1_36_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 48 => u0_m0_wo0_mtree_mult1_36_align_8_q(47)) & u0_m0_wo0_mtree_mult1_36_align_8_q));
    u0_m0_wo0_mtree_mult1_36_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_36_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_36_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_36_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_36_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_36_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_36_result_add_0_0_o(48 downto 0);

    -- u0_m0_wo0_mtree_add0_18(ADD,195)@18 + 1
    u0_m0_wo0_mtree_add0_18_a <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_36_result_add_0_0_q);
    u0_m0_wo0_mtree_add0_18_b <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_37_result_add_0_0_q);
    u0_m0_wo0_mtree_add0_18_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_18_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_18_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_18_a) + SIGNED(u0_m0_wo0_mtree_add0_18_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_18_q <= u0_m0_wo0_mtree_add0_18_o(48 downto 0);

    -- u0_m0_wo0_mtree_add1_9(ADD,212)@19 + 1
    u0_m0_wo0_mtree_add1_9_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((49 downto 49 => u0_m0_wo0_mtree_add0_18_q(48)) & u0_m0_wo0_mtree_add0_18_q));
    u0_m0_wo0_mtree_add1_9_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((49 downto 49 => u0_m0_wo0_mtree_add0_19_q(48)) & u0_m0_wo0_mtree_add0_19_q));
    u0_m0_wo0_mtree_add1_9_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_9_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_9_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_9_a) + SIGNED(u0_m0_wo0_mtree_add1_9_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_9_q <= u0_m0_wo0_mtree_add1_9_o(49 downto 0);

    -- u0_m0_wo0_cm16_lutmem(DUALMEM,255)@13 + 2
    u0_m0_wo0_cm16_lutmem_aa <= u0_m0_wo0_ca51_q;
    u0_m0_wo0_cm16_lutmem_reset0 <= areset;
    u0_m0_wo0_cm16_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 32,
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
    u0_m0_wo0_cm16_lutmem_r <= u0_m0_wo0_cm16_lutmem_ir(31 downto 0);

    -- u0_m0_wo0_mtree_mult1_35_bs1_merged_bit_select(BITSELECT,879)@15
    u0_m0_wo0_mtree_mult1_35_bs1_merged_bit_select_b <= STD_LOGIC_VECTOR(u0_m0_wo0_cm16_lutmem_r(31 downto 17));
    u0_m0_wo0_mtree_mult1_35_bs1_merged_bit_select_c <= STD_LOGIC_VECTOR(u0_m0_wo0_cm16_lutmem_r(16 downto 0));

    -- u0_m0_wo0_mtree_mult1_35_im0(MULT,467)@15 + 2
    u0_m0_wo0_mtree_mult1_35_im0_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split13_e);
    u0_m0_wo0_mtree_mult1_35_im0_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_35_bs1_merged_bit_select_b);
    u0_m0_wo0_mtree_mult1_35_im0_reset <= areset;
    u0_m0_wo0_mtree_mult1_35_im0_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 16,
        lpm_widthb => 15,
        lpm_widthp => 31,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_35_im0_a0,
        datab => u0_m0_wo0_mtree_mult1_35_im0_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_35_im0_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_35_im0_s1
    );
    u0_m0_wo0_mtree_mult1_35_im0_q <= u0_m0_wo0_mtree_mult1_35_im0_s1;

    -- u0_m0_wo0_mtree_mult1_35_align_8(BITSHIFT,475)@17
    u0_m0_wo0_mtree_mult1_35_align_8_qint <= u0_m0_wo0_mtree_mult1_35_im0_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_35_align_8_q <= u0_m0_wo0_mtree_mult1_35_align_8_qint(47 downto 0);

    -- u0_m0_wo0_mtree_mult1_35_bjA5(BITJOIN,472)@15
    u0_m0_wo0_mtree_mult1_35_bjA5_q <= GND_q & u0_m0_wo0_mtree_mult1_35_bs1_merged_bit_select_c;

    -- u0_m0_wo0_mtree_mult1_35_im3(MULT,470)@15 + 2
    u0_m0_wo0_mtree_mult1_35_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_35_bjA5_q);
    u0_m0_wo0_mtree_mult1_35_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split13_e);
    u0_m0_wo0_mtree_mult1_35_im3_reset <= areset;
    u0_m0_wo0_mtree_mult1_35_im3_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 16,
        lpm_widthp => 34,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_35_im3_a0,
        datab => u0_m0_wo0_mtree_mult1_35_im3_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_35_im3_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_35_im3_s1
    );
    u0_m0_wo0_mtree_mult1_35_im3_q <= u0_m0_wo0_mtree_mult1_35_im3_s1;

    -- u0_m0_wo0_mtree_mult1_35_result_add_0_0(ADD,477)@17 + 1
    u0_m0_wo0_mtree_mult1_35_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 34 => u0_m0_wo0_mtree_mult1_35_im3_q(33)) & u0_m0_wo0_mtree_mult1_35_im3_q));
    u0_m0_wo0_mtree_mult1_35_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 48 => u0_m0_wo0_mtree_mult1_35_align_8_q(47)) & u0_m0_wo0_mtree_mult1_35_align_8_q));
    u0_m0_wo0_mtree_mult1_35_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_35_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_35_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_35_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_35_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_35_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_35_result_add_0_0_o(48 downto 0);

    -- u0_m0_wo0_cm17_lutmem(DUALMEM,256)@13 + 2
    u0_m0_wo0_cm17_lutmem_aa <= u0_m0_wo0_ca51_q;
    u0_m0_wo0_cm17_lutmem_reset0 <= areset;
    u0_m0_wo0_cm17_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 32,
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
    u0_m0_wo0_cm17_lutmem_r <= u0_m0_wo0_cm17_lutmem_ir(31 downto 0);

    -- u0_m0_wo0_mtree_mult1_34_bs1_merged_bit_select(BITSELECT,880)@15
    u0_m0_wo0_mtree_mult1_34_bs1_merged_bit_select_b <= STD_LOGIC_VECTOR(u0_m0_wo0_cm17_lutmem_r(31 downto 17));
    u0_m0_wo0_mtree_mult1_34_bs1_merged_bit_select_c <= STD_LOGIC_VECTOR(u0_m0_wo0_cm17_lutmem_r(16 downto 0));

    -- u0_m0_wo0_wi0_r0_join17(BITJOIN,42)@15
    u0_m0_wo0_wi0_r0_join17_q <= u0_m0_wo0_wi0_r0_split17_d & u0_m0_wo0_wi0_r0_split17_c & u0_m0_wo0_wi0_r0_split17_b & u0_m0_wo0_wi0_r0_split13_e;

    -- u0_m0_wo0_wi0_r0_memr17(DUALMEM,44)@15
    u0_m0_wo0_wi0_r0_memr17_ia <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_join17_q);
    u0_m0_wo0_wi0_r0_memr17_aa <= u0_m0_wo0_wi0_r0_wa51_q;
    u0_m0_wo0_wi0_r0_memr17_ab <= u0_m0_wo0_wi0_r0_ra51_resize_b;
    u0_m0_wo0_wi0_r0_memr17_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "DUAL_PORT",
        width_a => 64,
        widthad_a => 8,
        numwords_a => 256,
        width_b => 64,
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
        address_a => u0_m0_wo0_wi0_r0_memr17_aa,
        data_a => u0_m0_wo0_wi0_r0_memr17_ia,
        wren_a => u0_m0_wo0_wi0_r0_we51_seq_q(0),
        address_b => u0_m0_wo0_wi0_r0_memr17_ab,
        q_b => u0_m0_wo0_wi0_r0_memr17_iq
    );
    u0_m0_wo0_wi0_r0_memr17_q <= u0_m0_wo0_wi0_r0_memr17_iq(63 downto 0);

    -- u0_m0_wo0_wi0_r0_split17(BITSELECT,43)@15
    u0_m0_wo0_wi0_r0_split17_b <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr17_q(15 downto 0));
    u0_m0_wo0_wi0_r0_split17_c <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr17_q(31 downto 16));
    u0_m0_wo0_wi0_r0_split17_d <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr17_q(47 downto 32));
    u0_m0_wo0_wi0_r0_split17_e <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr17_q(63 downto 48));

    -- u0_m0_wo0_mtree_mult1_34_im0(MULT,478)@15 + 2
    u0_m0_wo0_mtree_mult1_34_im0_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split17_b);
    u0_m0_wo0_mtree_mult1_34_im0_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_34_bs1_merged_bit_select_b);
    u0_m0_wo0_mtree_mult1_34_im0_reset <= areset;
    u0_m0_wo0_mtree_mult1_34_im0_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 16,
        lpm_widthb => 15,
        lpm_widthp => 31,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_34_im0_a0,
        datab => u0_m0_wo0_mtree_mult1_34_im0_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_34_im0_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_34_im0_s1
    );
    u0_m0_wo0_mtree_mult1_34_im0_q <= u0_m0_wo0_mtree_mult1_34_im0_s1;

    -- u0_m0_wo0_mtree_mult1_34_align_8(BITSHIFT,486)@17
    u0_m0_wo0_mtree_mult1_34_align_8_qint <= u0_m0_wo0_mtree_mult1_34_im0_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_34_align_8_q <= u0_m0_wo0_mtree_mult1_34_align_8_qint(47 downto 0);

    -- u0_m0_wo0_mtree_mult1_34_bjA5(BITJOIN,483)@15
    u0_m0_wo0_mtree_mult1_34_bjA5_q <= GND_q & u0_m0_wo0_mtree_mult1_34_bs1_merged_bit_select_c;

    -- u0_m0_wo0_mtree_mult1_34_im3(MULT,481)@15 + 2
    u0_m0_wo0_mtree_mult1_34_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_34_bjA5_q);
    u0_m0_wo0_mtree_mult1_34_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split17_b);
    u0_m0_wo0_mtree_mult1_34_im3_reset <= areset;
    u0_m0_wo0_mtree_mult1_34_im3_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 16,
        lpm_widthp => 34,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_34_im3_a0,
        datab => u0_m0_wo0_mtree_mult1_34_im3_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_34_im3_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_34_im3_s1
    );
    u0_m0_wo0_mtree_mult1_34_im3_q <= u0_m0_wo0_mtree_mult1_34_im3_s1;

    -- u0_m0_wo0_mtree_mult1_34_result_add_0_0(ADD,488)@17 + 1
    u0_m0_wo0_mtree_mult1_34_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 34 => u0_m0_wo0_mtree_mult1_34_im3_q(33)) & u0_m0_wo0_mtree_mult1_34_im3_q));
    u0_m0_wo0_mtree_mult1_34_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 48 => u0_m0_wo0_mtree_mult1_34_align_8_q(47)) & u0_m0_wo0_mtree_mult1_34_align_8_q));
    u0_m0_wo0_mtree_mult1_34_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_34_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_34_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_34_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_34_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_34_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_34_result_add_0_0_o(48 downto 0);

    -- u0_m0_wo0_mtree_add0_17(ADD,194)@18 + 1
    u0_m0_wo0_mtree_add0_17_a <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_34_result_add_0_0_q);
    u0_m0_wo0_mtree_add0_17_b <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_35_result_add_0_0_q);
    u0_m0_wo0_mtree_add0_17_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_17_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_17_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_17_a) + SIGNED(u0_m0_wo0_mtree_add0_17_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_17_q <= u0_m0_wo0_mtree_add0_17_o(48 downto 0);

    -- u0_m0_wo0_cm18_lutmem(DUALMEM,257)@13 + 2
    u0_m0_wo0_cm18_lutmem_aa <= u0_m0_wo0_ca51_q;
    u0_m0_wo0_cm18_lutmem_reset0 <= areset;
    u0_m0_wo0_cm18_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 32,
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
    u0_m0_wo0_cm18_lutmem_r <= u0_m0_wo0_cm18_lutmem_ir(31 downto 0);

    -- u0_m0_wo0_mtree_mult1_33_bs1_merged_bit_select(BITSELECT,881)@15
    u0_m0_wo0_mtree_mult1_33_bs1_merged_bit_select_b <= STD_LOGIC_VECTOR(u0_m0_wo0_cm18_lutmem_r(31 downto 17));
    u0_m0_wo0_mtree_mult1_33_bs1_merged_bit_select_c <= STD_LOGIC_VECTOR(u0_m0_wo0_cm18_lutmem_r(16 downto 0));

    -- u0_m0_wo0_mtree_mult1_33_im0(MULT,489)@15 + 2
    u0_m0_wo0_mtree_mult1_33_im0_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split17_c);
    u0_m0_wo0_mtree_mult1_33_im0_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_33_bs1_merged_bit_select_b);
    u0_m0_wo0_mtree_mult1_33_im0_reset <= areset;
    u0_m0_wo0_mtree_mult1_33_im0_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 16,
        lpm_widthb => 15,
        lpm_widthp => 31,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_33_im0_a0,
        datab => u0_m0_wo0_mtree_mult1_33_im0_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_33_im0_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_33_im0_s1
    );
    u0_m0_wo0_mtree_mult1_33_im0_q <= u0_m0_wo0_mtree_mult1_33_im0_s1;

    -- u0_m0_wo0_mtree_mult1_33_align_8(BITSHIFT,497)@17
    u0_m0_wo0_mtree_mult1_33_align_8_qint <= u0_m0_wo0_mtree_mult1_33_im0_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_33_align_8_q <= u0_m0_wo0_mtree_mult1_33_align_8_qint(47 downto 0);

    -- u0_m0_wo0_mtree_mult1_33_bjA5(BITJOIN,494)@15
    u0_m0_wo0_mtree_mult1_33_bjA5_q <= GND_q & u0_m0_wo0_mtree_mult1_33_bs1_merged_bit_select_c;

    -- u0_m0_wo0_mtree_mult1_33_im3(MULT,492)@15 + 2
    u0_m0_wo0_mtree_mult1_33_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_33_bjA5_q);
    u0_m0_wo0_mtree_mult1_33_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split17_c);
    u0_m0_wo0_mtree_mult1_33_im3_reset <= areset;
    u0_m0_wo0_mtree_mult1_33_im3_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 16,
        lpm_widthp => 34,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_33_im3_a0,
        datab => u0_m0_wo0_mtree_mult1_33_im3_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_33_im3_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_33_im3_s1
    );
    u0_m0_wo0_mtree_mult1_33_im3_q <= u0_m0_wo0_mtree_mult1_33_im3_s1;

    -- u0_m0_wo0_mtree_mult1_33_result_add_0_0(ADD,499)@17 + 1
    u0_m0_wo0_mtree_mult1_33_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 34 => u0_m0_wo0_mtree_mult1_33_im3_q(33)) & u0_m0_wo0_mtree_mult1_33_im3_q));
    u0_m0_wo0_mtree_mult1_33_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 48 => u0_m0_wo0_mtree_mult1_33_align_8_q(47)) & u0_m0_wo0_mtree_mult1_33_align_8_q));
    u0_m0_wo0_mtree_mult1_33_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_33_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_33_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_33_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_33_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_33_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_33_result_add_0_0_o(48 downto 0);

    -- u0_m0_wo0_cm19_lutmem(DUALMEM,258)@13 + 2
    u0_m0_wo0_cm19_lutmem_aa <= u0_m0_wo0_ca51_q;
    u0_m0_wo0_cm19_lutmem_reset0 <= areset;
    u0_m0_wo0_cm19_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 32,
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
    u0_m0_wo0_cm19_lutmem_r <= u0_m0_wo0_cm19_lutmem_ir(31 downto 0);

    -- u0_m0_wo0_mtree_mult1_32_bs1_merged_bit_select(BITSELECT,882)@15
    u0_m0_wo0_mtree_mult1_32_bs1_merged_bit_select_b <= STD_LOGIC_VECTOR(u0_m0_wo0_cm19_lutmem_r(31 downto 17));
    u0_m0_wo0_mtree_mult1_32_bs1_merged_bit_select_c <= STD_LOGIC_VECTOR(u0_m0_wo0_cm19_lutmem_r(16 downto 0));

    -- u0_m0_wo0_mtree_mult1_32_im0(MULT,500)@15 + 2
    u0_m0_wo0_mtree_mult1_32_im0_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split17_d);
    u0_m0_wo0_mtree_mult1_32_im0_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_32_bs1_merged_bit_select_b);
    u0_m0_wo0_mtree_mult1_32_im0_reset <= areset;
    u0_m0_wo0_mtree_mult1_32_im0_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 16,
        lpm_widthb => 15,
        lpm_widthp => 31,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_32_im0_a0,
        datab => u0_m0_wo0_mtree_mult1_32_im0_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_32_im0_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_32_im0_s1
    );
    u0_m0_wo0_mtree_mult1_32_im0_q <= u0_m0_wo0_mtree_mult1_32_im0_s1;

    -- u0_m0_wo0_mtree_mult1_32_align_8(BITSHIFT,508)@17
    u0_m0_wo0_mtree_mult1_32_align_8_qint <= u0_m0_wo0_mtree_mult1_32_im0_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_32_align_8_q <= u0_m0_wo0_mtree_mult1_32_align_8_qint(47 downto 0);

    -- u0_m0_wo0_mtree_mult1_32_bjA5(BITJOIN,505)@15
    u0_m0_wo0_mtree_mult1_32_bjA5_q <= GND_q & u0_m0_wo0_mtree_mult1_32_bs1_merged_bit_select_c;

    -- u0_m0_wo0_mtree_mult1_32_im3(MULT,503)@15 + 2
    u0_m0_wo0_mtree_mult1_32_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_32_bjA5_q);
    u0_m0_wo0_mtree_mult1_32_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split17_d);
    u0_m0_wo0_mtree_mult1_32_im3_reset <= areset;
    u0_m0_wo0_mtree_mult1_32_im3_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 16,
        lpm_widthp => 34,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_32_im3_a0,
        datab => u0_m0_wo0_mtree_mult1_32_im3_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_32_im3_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_32_im3_s1
    );
    u0_m0_wo0_mtree_mult1_32_im3_q <= u0_m0_wo0_mtree_mult1_32_im3_s1;

    -- u0_m0_wo0_mtree_mult1_32_result_add_0_0(ADD,510)@17 + 1
    u0_m0_wo0_mtree_mult1_32_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 34 => u0_m0_wo0_mtree_mult1_32_im3_q(33)) & u0_m0_wo0_mtree_mult1_32_im3_q));
    u0_m0_wo0_mtree_mult1_32_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 48 => u0_m0_wo0_mtree_mult1_32_align_8_q(47)) & u0_m0_wo0_mtree_mult1_32_align_8_q));
    u0_m0_wo0_mtree_mult1_32_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_32_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_32_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_32_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_32_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_32_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_32_result_add_0_0_o(48 downto 0);

    -- u0_m0_wo0_mtree_add0_16(ADD,193)@18 + 1
    u0_m0_wo0_mtree_add0_16_a <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_32_result_add_0_0_q);
    u0_m0_wo0_mtree_add0_16_b <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_33_result_add_0_0_q);
    u0_m0_wo0_mtree_add0_16_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_16_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_16_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_16_a) + SIGNED(u0_m0_wo0_mtree_add0_16_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_16_q <= u0_m0_wo0_mtree_add0_16_o(48 downto 0);

    -- u0_m0_wo0_mtree_add1_8(ADD,211)@19 + 1
    u0_m0_wo0_mtree_add1_8_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((49 downto 49 => u0_m0_wo0_mtree_add0_16_q(48)) & u0_m0_wo0_mtree_add0_16_q));
    u0_m0_wo0_mtree_add1_8_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((49 downto 49 => u0_m0_wo0_mtree_add0_17_q(48)) & u0_m0_wo0_mtree_add0_17_q));
    u0_m0_wo0_mtree_add1_8_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_8_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_8_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_8_a) + SIGNED(u0_m0_wo0_mtree_add1_8_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_8_q <= u0_m0_wo0_mtree_add1_8_o(49 downto 0);

    -- u0_m0_wo0_mtree_add2_4(ADD,220)@20 + 1
    u0_m0_wo0_mtree_add2_4_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((50 downto 50 => u0_m0_wo0_mtree_add1_8_q(49)) & u0_m0_wo0_mtree_add1_8_q));
    u0_m0_wo0_mtree_add2_4_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((50 downto 50 => u0_m0_wo0_mtree_add1_9_q(49)) & u0_m0_wo0_mtree_add1_9_q));
    u0_m0_wo0_mtree_add2_4_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add2_4_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add2_4_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add2_4_a) + SIGNED(u0_m0_wo0_mtree_add2_4_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add2_4_q <= u0_m0_wo0_mtree_add2_4_o(50 downto 0);

    -- u0_m0_wo0_mtree_add3_2(ADD,224)@21 + 1
    u0_m0_wo0_mtree_add3_2_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((51 downto 51 => u0_m0_wo0_mtree_add2_4_q(50)) & u0_m0_wo0_mtree_add2_4_q));
    u0_m0_wo0_mtree_add3_2_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((51 downto 51 => u0_m0_wo0_mtree_add2_5_q(50)) & u0_m0_wo0_mtree_add2_5_q));
    u0_m0_wo0_mtree_add3_2_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add3_2_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add3_2_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add3_2_a) + SIGNED(u0_m0_wo0_mtree_add3_2_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add3_2_q <= u0_m0_wo0_mtree_add3_2_o(51 downto 0);

    -- u0_m0_wo0_mtree_add4_1(ADD,226)@22 + 1
    u0_m0_wo0_mtree_add4_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((52 downto 52 => u0_m0_wo0_mtree_add3_2_q(51)) & u0_m0_wo0_mtree_add3_2_q));
    u0_m0_wo0_mtree_add4_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((52 downto 50 => u0_m0_wo0_mtree_add1_12_q(49)) & u0_m0_wo0_mtree_add1_12_q));
    u0_m0_wo0_mtree_add4_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add4_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add4_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add4_1_a) + SIGNED(u0_m0_wo0_mtree_add4_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add4_1_q <= u0_m0_wo0_mtree_add4_1_o(52 downto 0);

    -- u0_m0_wo0_cm20_lutmem(DUALMEM,259)@13 + 2
    u0_m0_wo0_cm20_lutmem_aa <= u0_m0_wo0_ca51_q;
    u0_m0_wo0_cm20_lutmem_reset0 <= areset;
    u0_m0_wo0_cm20_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 32,
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
    u0_m0_wo0_cm20_lutmem_r <= u0_m0_wo0_cm20_lutmem_ir(31 downto 0);

    -- u0_m0_wo0_mtree_mult1_31_bs1_merged_bit_select(BITSELECT,883)@15
    u0_m0_wo0_mtree_mult1_31_bs1_merged_bit_select_b <= STD_LOGIC_VECTOR(u0_m0_wo0_cm20_lutmem_r(31 downto 17));
    u0_m0_wo0_mtree_mult1_31_bs1_merged_bit_select_c <= STD_LOGIC_VECTOR(u0_m0_wo0_cm20_lutmem_r(16 downto 0));

    -- u0_m0_wo0_mtree_mult1_31_im0(MULT,511)@15 + 2
    u0_m0_wo0_mtree_mult1_31_im0_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split17_e);
    u0_m0_wo0_mtree_mult1_31_im0_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_31_bs1_merged_bit_select_b);
    u0_m0_wo0_mtree_mult1_31_im0_reset <= areset;
    u0_m0_wo0_mtree_mult1_31_im0_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 16,
        lpm_widthb => 15,
        lpm_widthp => 31,
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

    -- u0_m0_wo0_mtree_mult1_31_align_8(BITSHIFT,519)@17
    u0_m0_wo0_mtree_mult1_31_align_8_qint <= u0_m0_wo0_mtree_mult1_31_im0_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_31_align_8_q <= u0_m0_wo0_mtree_mult1_31_align_8_qint(47 downto 0);

    -- u0_m0_wo0_mtree_mult1_31_bjA5(BITJOIN,516)@15
    u0_m0_wo0_mtree_mult1_31_bjA5_q <= GND_q & u0_m0_wo0_mtree_mult1_31_bs1_merged_bit_select_c;

    -- u0_m0_wo0_mtree_mult1_31_im3(MULT,514)@15 + 2
    u0_m0_wo0_mtree_mult1_31_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_31_bjA5_q);
    u0_m0_wo0_mtree_mult1_31_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split17_e);
    u0_m0_wo0_mtree_mult1_31_im3_reset <= areset;
    u0_m0_wo0_mtree_mult1_31_im3_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 16,
        lpm_widthp => 34,
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

    -- u0_m0_wo0_mtree_mult1_31_result_add_0_0(ADD,521)@17 + 1
    u0_m0_wo0_mtree_mult1_31_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 34 => u0_m0_wo0_mtree_mult1_31_im3_q(33)) & u0_m0_wo0_mtree_mult1_31_im3_q));
    u0_m0_wo0_mtree_mult1_31_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 48 => u0_m0_wo0_mtree_mult1_31_align_8_q(47)) & u0_m0_wo0_mtree_mult1_31_align_8_q));
    u0_m0_wo0_mtree_mult1_31_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_31_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_31_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_31_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_31_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_31_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_31_result_add_0_0_o(48 downto 0);

    -- u0_m0_wo0_cm21_lutmem(DUALMEM,260)@13 + 2
    u0_m0_wo0_cm21_lutmem_aa <= u0_m0_wo0_ca51_q;
    u0_m0_wo0_cm21_lutmem_reset0 <= areset;
    u0_m0_wo0_cm21_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 32,
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
    u0_m0_wo0_cm21_lutmem_r <= u0_m0_wo0_cm21_lutmem_ir(31 downto 0);

    -- u0_m0_wo0_mtree_mult1_30_bs1_merged_bit_select(BITSELECT,884)@15
    u0_m0_wo0_mtree_mult1_30_bs1_merged_bit_select_b <= STD_LOGIC_VECTOR(u0_m0_wo0_cm21_lutmem_r(31 downto 17));
    u0_m0_wo0_mtree_mult1_30_bs1_merged_bit_select_c <= STD_LOGIC_VECTOR(u0_m0_wo0_cm21_lutmem_r(16 downto 0));

    -- u0_m0_wo0_wi0_r0_join21(BITJOIN,45)@15
    u0_m0_wo0_wi0_r0_join21_q <= u0_m0_wo0_wi0_r0_split21_d & u0_m0_wo0_wi0_r0_split21_c & u0_m0_wo0_wi0_r0_split21_b & u0_m0_wo0_wi0_r0_split17_e;

    -- u0_m0_wo0_wi0_r0_memr21(DUALMEM,47)@15
    u0_m0_wo0_wi0_r0_memr21_ia <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_join21_q);
    u0_m0_wo0_wi0_r0_memr21_aa <= u0_m0_wo0_wi0_r0_wa51_q;
    u0_m0_wo0_wi0_r0_memr21_ab <= u0_m0_wo0_wi0_r0_ra51_resize_b;
    u0_m0_wo0_wi0_r0_memr21_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "DUAL_PORT",
        width_a => 64,
        widthad_a => 8,
        numwords_a => 256,
        width_b => 64,
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
        address_a => u0_m0_wo0_wi0_r0_memr21_aa,
        data_a => u0_m0_wo0_wi0_r0_memr21_ia,
        wren_a => u0_m0_wo0_wi0_r0_we51_seq_q(0),
        address_b => u0_m0_wo0_wi0_r0_memr21_ab,
        q_b => u0_m0_wo0_wi0_r0_memr21_iq
    );
    u0_m0_wo0_wi0_r0_memr21_q <= u0_m0_wo0_wi0_r0_memr21_iq(63 downto 0);

    -- u0_m0_wo0_wi0_r0_split21(BITSELECT,46)@15
    u0_m0_wo0_wi0_r0_split21_b <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr21_q(15 downto 0));
    u0_m0_wo0_wi0_r0_split21_c <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr21_q(31 downto 16));
    u0_m0_wo0_wi0_r0_split21_d <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr21_q(47 downto 32));
    u0_m0_wo0_wi0_r0_split21_e <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr21_q(63 downto 48));

    -- u0_m0_wo0_mtree_mult1_30_im0(MULT,522)@15 + 2
    u0_m0_wo0_mtree_mult1_30_im0_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split21_b);
    u0_m0_wo0_mtree_mult1_30_im0_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_30_bs1_merged_bit_select_b);
    u0_m0_wo0_mtree_mult1_30_im0_reset <= areset;
    u0_m0_wo0_mtree_mult1_30_im0_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 16,
        lpm_widthb => 15,
        lpm_widthp => 31,
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

    -- u0_m0_wo0_mtree_mult1_30_align_8(BITSHIFT,530)@17
    u0_m0_wo0_mtree_mult1_30_align_8_qint <= u0_m0_wo0_mtree_mult1_30_im0_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_30_align_8_q <= u0_m0_wo0_mtree_mult1_30_align_8_qint(47 downto 0);

    -- u0_m0_wo0_mtree_mult1_30_bjA5(BITJOIN,527)@15
    u0_m0_wo0_mtree_mult1_30_bjA5_q <= GND_q & u0_m0_wo0_mtree_mult1_30_bs1_merged_bit_select_c;

    -- u0_m0_wo0_mtree_mult1_30_im3(MULT,525)@15 + 2
    u0_m0_wo0_mtree_mult1_30_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_30_bjA5_q);
    u0_m0_wo0_mtree_mult1_30_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split21_b);
    u0_m0_wo0_mtree_mult1_30_im3_reset <= areset;
    u0_m0_wo0_mtree_mult1_30_im3_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 16,
        lpm_widthp => 34,
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

    -- u0_m0_wo0_mtree_mult1_30_result_add_0_0(ADD,532)@17 + 1
    u0_m0_wo0_mtree_mult1_30_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 34 => u0_m0_wo0_mtree_mult1_30_im3_q(33)) & u0_m0_wo0_mtree_mult1_30_im3_q));
    u0_m0_wo0_mtree_mult1_30_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 48 => u0_m0_wo0_mtree_mult1_30_align_8_q(47)) & u0_m0_wo0_mtree_mult1_30_align_8_q));
    u0_m0_wo0_mtree_mult1_30_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_30_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_30_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_30_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_30_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_30_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_30_result_add_0_0_o(48 downto 0);

    -- u0_m0_wo0_mtree_add0_15(ADD,192)@18 + 1
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
    u0_m0_wo0_mtree_add0_15_q <= u0_m0_wo0_mtree_add0_15_o(48 downto 0);

    -- u0_m0_wo0_cm22_lutmem(DUALMEM,261)@13 + 2
    u0_m0_wo0_cm22_lutmem_aa <= u0_m0_wo0_ca51_q;
    u0_m0_wo0_cm22_lutmem_reset0 <= areset;
    u0_m0_wo0_cm22_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 32,
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
    u0_m0_wo0_cm22_lutmem_r <= u0_m0_wo0_cm22_lutmem_ir(31 downto 0);

    -- u0_m0_wo0_mtree_mult1_29_bs1_merged_bit_select(BITSELECT,885)@15
    u0_m0_wo0_mtree_mult1_29_bs1_merged_bit_select_b <= STD_LOGIC_VECTOR(u0_m0_wo0_cm22_lutmem_r(31 downto 17));
    u0_m0_wo0_mtree_mult1_29_bs1_merged_bit_select_c <= STD_LOGIC_VECTOR(u0_m0_wo0_cm22_lutmem_r(16 downto 0));

    -- u0_m0_wo0_mtree_mult1_29_im0(MULT,533)@15 + 2
    u0_m0_wo0_mtree_mult1_29_im0_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split21_c);
    u0_m0_wo0_mtree_mult1_29_im0_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_29_bs1_merged_bit_select_b);
    u0_m0_wo0_mtree_mult1_29_im0_reset <= areset;
    u0_m0_wo0_mtree_mult1_29_im0_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 16,
        lpm_widthb => 15,
        lpm_widthp => 31,
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

    -- u0_m0_wo0_mtree_mult1_29_align_8(BITSHIFT,541)@17
    u0_m0_wo0_mtree_mult1_29_align_8_qint <= u0_m0_wo0_mtree_mult1_29_im0_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_29_align_8_q <= u0_m0_wo0_mtree_mult1_29_align_8_qint(47 downto 0);

    -- u0_m0_wo0_mtree_mult1_29_bjA5(BITJOIN,538)@15
    u0_m0_wo0_mtree_mult1_29_bjA5_q <= GND_q & u0_m0_wo0_mtree_mult1_29_bs1_merged_bit_select_c;

    -- u0_m0_wo0_mtree_mult1_29_im3(MULT,536)@15 + 2
    u0_m0_wo0_mtree_mult1_29_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_29_bjA5_q);
    u0_m0_wo0_mtree_mult1_29_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split21_c);
    u0_m0_wo0_mtree_mult1_29_im3_reset <= areset;
    u0_m0_wo0_mtree_mult1_29_im3_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 16,
        lpm_widthp => 34,
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

    -- u0_m0_wo0_mtree_mult1_29_result_add_0_0(ADD,543)@17 + 1
    u0_m0_wo0_mtree_mult1_29_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 34 => u0_m0_wo0_mtree_mult1_29_im3_q(33)) & u0_m0_wo0_mtree_mult1_29_im3_q));
    u0_m0_wo0_mtree_mult1_29_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 48 => u0_m0_wo0_mtree_mult1_29_align_8_q(47)) & u0_m0_wo0_mtree_mult1_29_align_8_q));
    u0_m0_wo0_mtree_mult1_29_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_29_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_29_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_29_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_29_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_29_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_29_result_add_0_0_o(48 downto 0);

    -- u0_m0_wo0_cm23_lutmem(DUALMEM,262)@13 + 2
    u0_m0_wo0_cm23_lutmem_aa <= u0_m0_wo0_ca51_q;
    u0_m0_wo0_cm23_lutmem_reset0 <= areset;
    u0_m0_wo0_cm23_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 32,
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
    u0_m0_wo0_cm23_lutmem_r <= u0_m0_wo0_cm23_lutmem_ir(31 downto 0);

    -- u0_m0_wo0_mtree_mult1_28_bs1_merged_bit_select(BITSELECT,886)@15
    u0_m0_wo0_mtree_mult1_28_bs1_merged_bit_select_b <= STD_LOGIC_VECTOR(u0_m0_wo0_cm23_lutmem_r(31 downto 17));
    u0_m0_wo0_mtree_mult1_28_bs1_merged_bit_select_c <= STD_LOGIC_VECTOR(u0_m0_wo0_cm23_lutmem_r(16 downto 0));

    -- u0_m0_wo0_mtree_mult1_28_im0(MULT,544)@15 + 2
    u0_m0_wo0_mtree_mult1_28_im0_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split21_d);
    u0_m0_wo0_mtree_mult1_28_im0_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_28_bs1_merged_bit_select_b);
    u0_m0_wo0_mtree_mult1_28_im0_reset <= areset;
    u0_m0_wo0_mtree_mult1_28_im0_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 16,
        lpm_widthb => 15,
        lpm_widthp => 31,
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

    -- u0_m0_wo0_mtree_mult1_28_align_8(BITSHIFT,552)@17
    u0_m0_wo0_mtree_mult1_28_align_8_qint <= u0_m0_wo0_mtree_mult1_28_im0_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_28_align_8_q <= u0_m0_wo0_mtree_mult1_28_align_8_qint(47 downto 0);

    -- u0_m0_wo0_mtree_mult1_28_bjA5(BITJOIN,549)@15
    u0_m0_wo0_mtree_mult1_28_bjA5_q <= GND_q & u0_m0_wo0_mtree_mult1_28_bs1_merged_bit_select_c;

    -- u0_m0_wo0_mtree_mult1_28_im3(MULT,547)@15 + 2
    u0_m0_wo0_mtree_mult1_28_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_28_bjA5_q);
    u0_m0_wo0_mtree_mult1_28_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split21_d);
    u0_m0_wo0_mtree_mult1_28_im3_reset <= areset;
    u0_m0_wo0_mtree_mult1_28_im3_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 16,
        lpm_widthp => 34,
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

    -- u0_m0_wo0_mtree_mult1_28_result_add_0_0(ADD,554)@17 + 1
    u0_m0_wo0_mtree_mult1_28_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 34 => u0_m0_wo0_mtree_mult1_28_im3_q(33)) & u0_m0_wo0_mtree_mult1_28_im3_q));
    u0_m0_wo0_mtree_mult1_28_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 48 => u0_m0_wo0_mtree_mult1_28_align_8_q(47)) & u0_m0_wo0_mtree_mult1_28_align_8_q));
    u0_m0_wo0_mtree_mult1_28_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_28_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_28_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_28_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_28_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_28_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_28_result_add_0_0_o(48 downto 0);

    -- u0_m0_wo0_mtree_add0_14(ADD,191)@18 + 1
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
    u0_m0_wo0_mtree_add0_14_q <= u0_m0_wo0_mtree_add0_14_o(48 downto 0);

    -- u0_m0_wo0_mtree_add1_7(ADD,210)@19 + 1
    u0_m0_wo0_mtree_add1_7_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((49 downto 49 => u0_m0_wo0_mtree_add0_14_q(48)) & u0_m0_wo0_mtree_add0_14_q));
    u0_m0_wo0_mtree_add1_7_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((49 downto 49 => u0_m0_wo0_mtree_add0_15_q(48)) & u0_m0_wo0_mtree_add0_15_q));
    u0_m0_wo0_mtree_add1_7_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_7_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_7_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_7_a) + SIGNED(u0_m0_wo0_mtree_add1_7_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_7_q <= u0_m0_wo0_mtree_add1_7_o(49 downto 0);

    -- u0_m0_wo0_cm24_lutmem(DUALMEM,263)@13 + 2
    u0_m0_wo0_cm24_lutmem_aa <= u0_m0_wo0_ca51_q;
    u0_m0_wo0_cm24_lutmem_reset0 <= areset;
    u0_m0_wo0_cm24_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 32,
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
    u0_m0_wo0_cm24_lutmem_r <= u0_m0_wo0_cm24_lutmem_ir(31 downto 0);

    -- u0_m0_wo0_mtree_mult1_27_bs1_merged_bit_select(BITSELECT,887)@15
    u0_m0_wo0_mtree_mult1_27_bs1_merged_bit_select_b <= STD_LOGIC_VECTOR(u0_m0_wo0_cm24_lutmem_r(31 downto 17));
    u0_m0_wo0_mtree_mult1_27_bs1_merged_bit_select_c <= STD_LOGIC_VECTOR(u0_m0_wo0_cm24_lutmem_r(16 downto 0));

    -- u0_m0_wo0_mtree_mult1_27_im0(MULT,555)@15 + 2
    u0_m0_wo0_mtree_mult1_27_im0_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split21_e);
    u0_m0_wo0_mtree_mult1_27_im0_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_27_bs1_merged_bit_select_b);
    u0_m0_wo0_mtree_mult1_27_im0_reset <= areset;
    u0_m0_wo0_mtree_mult1_27_im0_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 16,
        lpm_widthb => 15,
        lpm_widthp => 31,
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

    -- u0_m0_wo0_mtree_mult1_27_align_8(BITSHIFT,563)@17
    u0_m0_wo0_mtree_mult1_27_align_8_qint <= u0_m0_wo0_mtree_mult1_27_im0_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_27_align_8_q <= u0_m0_wo0_mtree_mult1_27_align_8_qint(47 downto 0);

    -- u0_m0_wo0_mtree_mult1_27_bjA5(BITJOIN,560)@15
    u0_m0_wo0_mtree_mult1_27_bjA5_q <= GND_q & u0_m0_wo0_mtree_mult1_27_bs1_merged_bit_select_c;

    -- u0_m0_wo0_mtree_mult1_27_im3(MULT,558)@15 + 2
    u0_m0_wo0_mtree_mult1_27_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_27_bjA5_q);
    u0_m0_wo0_mtree_mult1_27_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split21_e);
    u0_m0_wo0_mtree_mult1_27_im3_reset <= areset;
    u0_m0_wo0_mtree_mult1_27_im3_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 16,
        lpm_widthp => 34,
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

    -- u0_m0_wo0_mtree_mult1_27_result_add_0_0(ADD,565)@17 + 1
    u0_m0_wo0_mtree_mult1_27_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 34 => u0_m0_wo0_mtree_mult1_27_im3_q(33)) & u0_m0_wo0_mtree_mult1_27_im3_q));
    u0_m0_wo0_mtree_mult1_27_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 48 => u0_m0_wo0_mtree_mult1_27_align_8_q(47)) & u0_m0_wo0_mtree_mult1_27_align_8_q));
    u0_m0_wo0_mtree_mult1_27_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_27_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_27_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_27_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_27_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_27_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_27_result_add_0_0_o(48 downto 0);

    -- u0_m0_wo0_cm25_lutmem(DUALMEM,264)@13 + 2
    u0_m0_wo0_cm25_lutmem_aa <= u0_m0_wo0_ca51_q;
    u0_m0_wo0_cm25_lutmem_reset0 <= areset;
    u0_m0_wo0_cm25_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 32,
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
    u0_m0_wo0_cm25_lutmem_r <= u0_m0_wo0_cm25_lutmem_ir(31 downto 0);

    -- u0_m0_wo0_mtree_mult1_26_bs1_merged_bit_select(BITSELECT,888)@15
    u0_m0_wo0_mtree_mult1_26_bs1_merged_bit_select_b <= STD_LOGIC_VECTOR(u0_m0_wo0_cm25_lutmem_r(31 downto 17));
    u0_m0_wo0_mtree_mult1_26_bs1_merged_bit_select_c <= STD_LOGIC_VECTOR(u0_m0_wo0_cm25_lutmem_r(16 downto 0));

    -- u0_m0_wo0_wi0_r0_join25(BITJOIN,48)@15
    u0_m0_wo0_wi0_r0_join25_q <= u0_m0_wo0_wi0_r0_split25_d & u0_m0_wo0_wi0_r0_split25_c & u0_m0_wo0_wi0_r0_split25_b & u0_m0_wo0_wi0_r0_split21_e;

    -- u0_m0_wo0_wi0_r0_memr25(DUALMEM,50)@15
    u0_m0_wo0_wi0_r0_memr25_ia <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_join25_q);
    u0_m0_wo0_wi0_r0_memr25_aa <= u0_m0_wo0_wi0_r0_wa51_q;
    u0_m0_wo0_wi0_r0_memr25_ab <= u0_m0_wo0_wi0_r0_ra51_resize_b;
    u0_m0_wo0_wi0_r0_memr25_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "DUAL_PORT",
        width_a => 64,
        widthad_a => 8,
        numwords_a => 256,
        width_b => 64,
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
    u0_m0_wo0_wi0_r0_memr25_q <= u0_m0_wo0_wi0_r0_memr25_iq(63 downto 0);

    -- u0_m0_wo0_wi0_r0_split25(BITSELECT,49)@15
    u0_m0_wo0_wi0_r0_split25_b <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr25_q(15 downto 0));
    u0_m0_wo0_wi0_r0_split25_c <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr25_q(31 downto 16));
    u0_m0_wo0_wi0_r0_split25_d <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr25_q(47 downto 32));
    u0_m0_wo0_wi0_r0_split25_e <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr25_q(63 downto 48));

    -- u0_m0_wo0_mtree_mult1_26_im0(MULT,566)@15 + 2
    u0_m0_wo0_mtree_mult1_26_im0_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split25_b);
    u0_m0_wo0_mtree_mult1_26_im0_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_26_bs1_merged_bit_select_b);
    u0_m0_wo0_mtree_mult1_26_im0_reset <= areset;
    u0_m0_wo0_mtree_mult1_26_im0_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 16,
        lpm_widthb => 15,
        lpm_widthp => 31,
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

    -- u0_m0_wo0_mtree_mult1_26_align_8(BITSHIFT,574)@17
    u0_m0_wo0_mtree_mult1_26_align_8_qint <= u0_m0_wo0_mtree_mult1_26_im0_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_26_align_8_q <= u0_m0_wo0_mtree_mult1_26_align_8_qint(47 downto 0);

    -- u0_m0_wo0_mtree_mult1_26_bjA5(BITJOIN,571)@15
    u0_m0_wo0_mtree_mult1_26_bjA5_q <= GND_q & u0_m0_wo0_mtree_mult1_26_bs1_merged_bit_select_c;

    -- u0_m0_wo0_mtree_mult1_26_im3(MULT,569)@15 + 2
    u0_m0_wo0_mtree_mult1_26_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_26_bjA5_q);
    u0_m0_wo0_mtree_mult1_26_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split25_b);
    u0_m0_wo0_mtree_mult1_26_im3_reset <= areset;
    u0_m0_wo0_mtree_mult1_26_im3_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 16,
        lpm_widthp => 34,
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

    -- u0_m0_wo0_mtree_mult1_26_result_add_0_0(ADD,576)@17 + 1
    u0_m0_wo0_mtree_mult1_26_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 34 => u0_m0_wo0_mtree_mult1_26_im3_q(33)) & u0_m0_wo0_mtree_mult1_26_im3_q));
    u0_m0_wo0_mtree_mult1_26_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 48 => u0_m0_wo0_mtree_mult1_26_align_8_q(47)) & u0_m0_wo0_mtree_mult1_26_align_8_q));
    u0_m0_wo0_mtree_mult1_26_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_26_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_26_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_26_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_26_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_26_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_26_result_add_0_0_o(48 downto 0);

    -- u0_m0_wo0_mtree_add0_13(ADD,190)@18 + 1
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
    u0_m0_wo0_mtree_add0_13_q <= u0_m0_wo0_mtree_add0_13_o(48 downto 0);

    -- u0_m0_wo0_cm26_lutmem(DUALMEM,265)@13 + 2
    u0_m0_wo0_cm26_lutmem_aa <= u0_m0_wo0_ca51_q;
    u0_m0_wo0_cm26_lutmem_reset0 <= areset;
    u0_m0_wo0_cm26_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 32,
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
    u0_m0_wo0_cm26_lutmem_r <= u0_m0_wo0_cm26_lutmem_ir(31 downto 0);

    -- u0_m0_wo0_mtree_mult1_25_bs1_merged_bit_select(BITSELECT,889)@15
    u0_m0_wo0_mtree_mult1_25_bs1_merged_bit_select_b <= STD_LOGIC_VECTOR(u0_m0_wo0_cm26_lutmem_r(31 downto 17));
    u0_m0_wo0_mtree_mult1_25_bs1_merged_bit_select_c <= STD_LOGIC_VECTOR(u0_m0_wo0_cm26_lutmem_r(16 downto 0));

    -- u0_m0_wo0_mtree_mult1_25_im0(MULT,577)@15 + 2
    u0_m0_wo0_mtree_mult1_25_im0_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split25_c);
    u0_m0_wo0_mtree_mult1_25_im0_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_25_bs1_merged_bit_select_b);
    u0_m0_wo0_mtree_mult1_25_im0_reset <= areset;
    u0_m0_wo0_mtree_mult1_25_im0_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 16,
        lpm_widthb => 15,
        lpm_widthp => 31,
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

    -- u0_m0_wo0_mtree_mult1_25_align_8(BITSHIFT,585)@17
    u0_m0_wo0_mtree_mult1_25_align_8_qint <= u0_m0_wo0_mtree_mult1_25_im0_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_25_align_8_q <= u0_m0_wo0_mtree_mult1_25_align_8_qint(47 downto 0);

    -- u0_m0_wo0_mtree_mult1_25_bjA5(BITJOIN,582)@15
    u0_m0_wo0_mtree_mult1_25_bjA5_q <= GND_q & u0_m0_wo0_mtree_mult1_25_bs1_merged_bit_select_c;

    -- u0_m0_wo0_mtree_mult1_25_im3(MULT,580)@15 + 2
    u0_m0_wo0_mtree_mult1_25_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_25_bjA5_q);
    u0_m0_wo0_mtree_mult1_25_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split25_c);
    u0_m0_wo0_mtree_mult1_25_im3_reset <= areset;
    u0_m0_wo0_mtree_mult1_25_im3_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 16,
        lpm_widthp => 34,
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

    -- u0_m0_wo0_mtree_mult1_25_result_add_0_0(ADD,587)@17 + 1
    u0_m0_wo0_mtree_mult1_25_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 34 => u0_m0_wo0_mtree_mult1_25_im3_q(33)) & u0_m0_wo0_mtree_mult1_25_im3_q));
    u0_m0_wo0_mtree_mult1_25_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 48 => u0_m0_wo0_mtree_mult1_25_align_8_q(47)) & u0_m0_wo0_mtree_mult1_25_align_8_q));
    u0_m0_wo0_mtree_mult1_25_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_25_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_25_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_25_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_25_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_25_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_25_result_add_0_0_o(48 downto 0);

    -- u0_m0_wo0_cm27_lutmem(DUALMEM,266)@13 + 2
    u0_m0_wo0_cm27_lutmem_aa <= u0_m0_wo0_ca51_q;
    u0_m0_wo0_cm27_lutmem_reset0 <= areset;
    u0_m0_wo0_cm27_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 32,
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
    u0_m0_wo0_cm27_lutmem_r <= u0_m0_wo0_cm27_lutmem_ir(31 downto 0);

    -- u0_m0_wo0_mtree_mult1_24_bs1_merged_bit_select(BITSELECT,890)@15
    u0_m0_wo0_mtree_mult1_24_bs1_merged_bit_select_b <= STD_LOGIC_VECTOR(u0_m0_wo0_cm27_lutmem_r(31 downto 17));
    u0_m0_wo0_mtree_mult1_24_bs1_merged_bit_select_c <= STD_LOGIC_VECTOR(u0_m0_wo0_cm27_lutmem_r(16 downto 0));

    -- u0_m0_wo0_mtree_mult1_24_im0(MULT,588)@15 + 2
    u0_m0_wo0_mtree_mult1_24_im0_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split25_d);
    u0_m0_wo0_mtree_mult1_24_im0_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_24_bs1_merged_bit_select_b);
    u0_m0_wo0_mtree_mult1_24_im0_reset <= areset;
    u0_m0_wo0_mtree_mult1_24_im0_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 16,
        lpm_widthb => 15,
        lpm_widthp => 31,
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

    -- u0_m0_wo0_mtree_mult1_24_align_8(BITSHIFT,596)@17
    u0_m0_wo0_mtree_mult1_24_align_8_qint <= u0_m0_wo0_mtree_mult1_24_im0_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_24_align_8_q <= u0_m0_wo0_mtree_mult1_24_align_8_qint(47 downto 0);

    -- u0_m0_wo0_mtree_mult1_24_bjA5(BITJOIN,593)@15
    u0_m0_wo0_mtree_mult1_24_bjA5_q <= GND_q & u0_m0_wo0_mtree_mult1_24_bs1_merged_bit_select_c;

    -- u0_m0_wo0_mtree_mult1_24_im3(MULT,591)@15 + 2
    u0_m0_wo0_mtree_mult1_24_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_24_bjA5_q);
    u0_m0_wo0_mtree_mult1_24_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split25_d);
    u0_m0_wo0_mtree_mult1_24_im3_reset <= areset;
    u0_m0_wo0_mtree_mult1_24_im3_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 16,
        lpm_widthp => 34,
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

    -- u0_m0_wo0_mtree_mult1_24_result_add_0_0(ADD,598)@17 + 1
    u0_m0_wo0_mtree_mult1_24_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 34 => u0_m0_wo0_mtree_mult1_24_im3_q(33)) & u0_m0_wo0_mtree_mult1_24_im3_q));
    u0_m0_wo0_mtree_mult1_24_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 48 => u0_m0_wo0_mtree_mult1_24_align_8_q(47)) & u0_m0_wo0_mtree_mult1_24_align_8_q));
    u0_m0_wo0_mtree_mult1_24_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_24_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_24_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_24_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_24_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_24_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_24_result_add_0_0_o(48 downto 0);

    -- u0_m0_wo0_mtree_add0_12(ADD,189)@18 + 1
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
    u0_m0_wo0_mtree_add0_12_q <= u0_m0_wo0_mtree_add0_12_o(48 downto 0);

    -- u0_m0_wo0_mtree_add1_6(ADD,209)@19 + 1
    u0_m0_wo0_mtree_add1_6_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((49 downto 49 => u0_m0_wo0_mtree_add0_12_q(48)) & u0_m0_wo0_mtree_add0_12_q));
    u0_m0_wo0_mtree_add1_6_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((49 downto 49 => u0_m0_wo0_mtree_add0_13_q(48)) & u0_m0_wo0_mtree_add0_13_q));
    u0_m0_wo0_mtree_add1_6_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_6_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_6_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_6_a) + SIGNED(u0_m0_wo0_mtree_add1_6_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_6_q <= u0_m0_wo0_mtree_add1_6_o(49 downto 0);

    -- u0_m0_wo0_mtree_add2_3(ADD,219)@20 + 1
    u0_m0_wo0_mtree_add2_3_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((50 downto 50 => u0_m0_wo0_mtree_add1_6_q(49)) & u0_m0_wo0_mtree_add1_6_q));
    u0_m0_wo0_mtree_add2_3_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((50 downto 50 => u0_m0_wo0_mtree_add1_7_q(49)) & u0_m0_wo0_mtree_add1_7_q));
    u0_m0_wo0_mtree_add2_3_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add2_3_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add2_3_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add2_3_a) + SIGNED(u0_m0_wo0_mtree_add2_3_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add2_3_q <= u0_m0_wo0_mtree_add2_3_o(50 downto 0);

    -- u0_m0_wo0_cm28_lutmem(DUALMEM,267)@13 + 2
    u0_m0_wo0_cm28_lutmem_aa <= u0_m0_wo0_ca51_q;
    u0_m0_wo0_cm28_lutmem_reset0 <= areset;
    u0_m0_wo0_cm28_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 32,
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
    u0_m0_wo0_cm28_lutmem_r <= u0_m0_wo0_cm28_lutmem_ir(31 downto 0);

    -- u0_m0_wo0_mtree_mult1_23_bs1_merged_bit_select(BITSELECT,891)@15
    u0_m0_wo0_mtree_mult1_23_bs1_merged_bit_select_b <= STD_LOGIC_VECTOR(u0_m0_wo0_cm28_lutmem_r(31 downto 17));
    u0_m0_wo0_mtree_mult1_23_bs1_merged_bit_select_c <= STD_LOGIC_VECTOR(u0_m0_wo0_cm28_lutmem_r(16 downto 0));

    -- u0_m0_wo0_mtree_mult1_23_im0(MULT,599)@15 + 2
    u0_m0_wo0_mtree_mult1_23_im0_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split25_e);
    u0_m0_wo0_mtree_mult1_23_im0_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_23_bs1_merged_bit_select_b);
    u0_m0_wo0_mtree_mult1_23_im0_reset <= areset;
    u0_m0_wo0_mtree_mult1_23_im0_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 16,
        lpm_widthb => 15,
        lpm_widthp => 31,
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

    -- u0_m0_wo0_mtree_mult1_23_align_8(BITSHIFT,607)@17
    u0_m0_wo0_mtree_mult1_23_align_8_qint <= u0_m0_wo0_mtree_mult1_23_im0_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_23_align_8_q <= u0_m0_wo0_mtree_mult1_23_align_8_qint(47 downto 0);

    -- u0_m0_wo0_mtree_mult1_23_bjA5(BITJOIN,604)@15
    u0_m0_wo0_mtree_mult1_23_bjA5_q <= GND_q & u0_m0_wo0_mtree_mult1_23_bs1_merged_bit_select_c;

    -- u0_m0_wo0_mtree_mult1_23_im3(MULT,602)@15 + 2
    u0_m0_wo0_mtree_mult1_23_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_23_bjA5_q);
    u0_m0_wo0_mtree_mult1_23_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split25_e);
    u0_m0_wo0_mtree_mult1_23_im3_reset <= areset;
    u0_m0_wo0_mtree_mult1_23_im3_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 16,
        lpm_widthp => 34,
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

    -- u0_m0_wo0_mtree_mult1_23_result_add_0_0(ADD,609)@17 + 1
    u0_m0_wo0_mtree_mult1_23_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 34 => u0_m0_wo0_mtree_mult1_23_im3_q(33)) & u0_m0_wo0_mtree_mult1_23_im3_q));
    u0_m0_wo0_mtree_mult1_23_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 48 => u0_m0_wo0_mtree_mult1_23_align_8_q(47)) & u0_m0_wo0_mtree_mult1_23_align_8_q));
    u0_m0_wo0_mtree_mult1_23_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_23_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_23_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_23_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_23_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_23_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_23_result_add_0_0_o(48 downto 0);

    -- u0_m0_wo0_cm29_lutmem(DUALMEM,268)@13 + 2
    u0_m0_wo0_cm29_lutmem_aa <= u0_m0_wo0_ca51_q;
    u0_m0_wo0_cm29_lutmem_reset0 <= areset;
    u0_m0_wo0_cm29_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 32,
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
    u0_m0_wo0_cm29_lutmem_r <= u0_m0_wo0_cm29_lutmem_ir(31 downto 0);

    -- u0_m0_wo0_mtree_mult1_22_bs1_merged_bit_select(BITSELECT,892)@15
    u0_m0_wo0_mtree_mult1_22_bs1_merged_bit_select_b <= STD_LOGIC_VECTOR(u0_m0_wo0_cm29_lutmem_r(31 downto 17));
    u0_m0_wo0_mtree_mult1_22_bs1_merged_bit_select_c <= STD_LOGIC_VECTOR(u0_m0_wo0_cm29_lutmem_r(16 downto 0));

    -- u0_m0_wo0_wi0_r0_join29(BITJOIN,51)@15
    u0_m0_wo0_wi0_r0_join29_q <= u0_m0_wo0_wi0_r0_split29_d & u0_m0_wo0_wi0_r0_split29_c & u0_m0_wo0_wi0_r0_split29_b & u0_m0_wo0_wi0_r0_split25_e;

    -- u0_m0_wo0_wi0_r0_memr29(DUALMEM,53)@15
    u0_m0_wo0_wi0_r0_memr29_ia <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_join29_q);
    u0_m0_wo0_wi0_r0_memr29_aa <= u0_m0_wo0_wi0_r0_wa51_q;
    u0_m0_wo0_wi0_r0_memr29_ab <= u0_m0_wo0_wi0_r0_ra51_resize_b;
    u0_m0_wo0_wi0_r0_memr29_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "DUAL_PORT",
        width_a => 64,
        widthad_a => 8,
        numwords_a => 256,
        width_b => 64,
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
        address_a => u0_m0_wo0_wi0_r0_memr29_aa,
        data_a => u0_m0_wo0_wi0_r0_memr29_ia,
        wren_a => u0_m0_wo0_wi0_r0_we51_seq_q(0),
        address_b => u0_m0_wo0_wi0_r0_memr29_ab,
        q_b => u0_m0_wo0_wi0_r0_memr29_iq
    );
    u0_m0_wo0_wi0_r0_memr29_q <= u0_m0_wo0_wi0_r0_memr29_iq(63 downto 0);

    -- u0_m0_wo0_wi0_r0_split29(BITSELECT,52)@15
    u0_m0_wo0_wi0_r0_split29_b <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr29_q(15 downto 0));
    u0_m0_wo0_wi0_r0_split29_c <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr29_q(31 downto 16));
    u0_m0_wo0_wi0_r0_split29_d <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr29_q(47 downto 32));
    u0_m0_wo0_wi0_r0_split29_e <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr29_q(63 downto 48));

    -- u0_m0_wo0_mtree_mult1_22_im0(MULT,610)@15 + 2
    u0_m0_wo0_mtree_mult1_22_im0_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split29_b);
    u0_m0_wo0_mtree_mult1_22_im0_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_22_bs1_merged_bit_select_b);
    u0_m0_wo0_mtree_mult1_22_im0_reset <= areset;
    u0_m0_wo0_mtree_mult1_22_im0_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 16,
        lpm_widthb => 15,
        lpm_widthp => 31,
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

    -- u0_m0_wo0_mtree_mult1_22_align_8(BITSHIFT,618)@17
    u0_m0_wo0_mtree_mult1_22_align_8_qint <= u0_m0_wo0_mtree_mult1_22_im0_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_22_align_8_q <= u0_m0_wo0_mtree_mult1_22_align_8_qint(47 downto 0);

    -- u0_m0_wo0_mtree_mult1_22_bjA5(BITJOIN,615)@15
    u0_m0_wo0_mtree_mult1_22_bjA5_q <= GND_q & u0_m0_wo0_mtree_mult1_22_bs1_merged_bit_select_c;

    -- u0_m0_wo0_mtree_mult1_22_im3(MULT,613)@15 + 2
    u0_m0_wo0_mtree_mult1_22_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_22_bjA5_q);
    u0_m0_wo0_mtree_mult1_22_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split29_b);
    u0_m0_wo0_mtree_mult1_22_im3_reset <= areset;
    u0_m0_wo0_mtree_mult1_22_im3_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 16,
        lpm_widthp => 34,
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

    -- u0_m0_wo0_mtree_mult1_22_result_add_0_0(ADD,620)@17 + 1
    u0_m0_wo0_mtree_mult1_22_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 34 => u0_m0_wo0_mtree_mult1_22_im3_q(33)) & u0_m0_wo0_mtree_mult1_22_im3_q));
    u0_m0_wo0_mtree_mult1_22_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 48 => u0_m0_wo0_mtree_mult1_22_align_8_q(47)) & u0_m0_wo0_mtree_mult1_22_align_8_q));
    u0_m0_wo0_mtree_mult1_22_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_22_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_22_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_22_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_22_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_22_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_22_result_add_0_0_o(48 downto 0);

    -- u0_m0_wo0_mtree_add0_11(ADD,188)@18 + 1
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
    u0_m0_wo0_mtree_add0_11_q <= u0_m0_wo0_mtree_add0_11_o(48 downto 0);

    -- u0_m0_wo0_cm30_lutmem(DUALMEM,269)@13 + 2
    u0_m0_wo0_cm30_lutmem_aa <= u0_m0_wo0_ca51_q;
    u0_m0_wo0_cm30_lutmem_reset0 <= areset;
    u0_m0_wo0_cm30_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 32,
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
    u0_m0_wo0_cm30_lutmem_r <= u0_m0_wo0_cm30_lutmem_ir(31 downto 0);

    -- u0_m0_wo0_mtree_mult1_21_bs1_merged_bit_select(BITSELECT,893)@15
    u0_m0_wo0_mtree_mult1_21_bs1_merged_bit_select_b <= STD_LOGIC_VECTOR(u0_m0_wo0_cm30_lutmem_r(31 downto 17));
    u0_m0_wo0_mtree_mult1_21_bs1_merged_bit_select_c <= STD_LOGIC_VECTOR(u0_m0_wo0_cm30_lutmem_r(16 downto 0));

    -- u0_m0_wo0_mtree_mult1_21_im0(MULT,621)@15 + 2
    u0_m0_wo0_mtree_mult1_21_im0_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split29_c);
    u0_m0_wo0_mtree_mult1_21_im0_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_21_bs1_merged_bit_select_b);
    u0_m0_wo0_mtree_mult1_21_im0_reset <= areset;
    u0_m0_wo0_mtree_mult1_21_im0_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 16,
        lpm_widthb => 15,
        lpm_widthp => 31,
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

    -- u0_m0_wo0_mtree_mult1_21_align_8(BITSHIFT,629)@17
    u0_m0_wo0_mtree_mult1_21_align_8_qint <= u0_m0_wo0_mtree_mult1_21_im0_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_21_align_8_q <= u0_m0_wo0_mtree_mult1_21_align_8_qint(47 downto 0);

    -- u0_m0_wo0_mtree_mult1_21_bjA5(BITJOIN,626)@15
    u0_m0_wo0_mtree_mult1_21_bjA5_q <= GND_q & u0_m0_wo0_mtree_mult1_21_bs1_merged_bit_select_c;

    -- u0_m0_wo0_mtree_mult1_21_im3(MULT,624)@15 + 2
    u0_m0_wo0_mtree_mult1_21_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_21_bjA5_q);
    u0_m0_wo0_mtree_mult1_21_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split29_c);
    u0_m0_wo0_mtree_mult1_21_im3_reset <= areset;
    u0_m0_wo0_mtree_mult1_21_im3_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 16,
        lpm_widthp => 34,
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

    -- u0_m0_wo0_mtree_mult1_21_result_add_0_0(ADD,631)@17 + 1
    u0_m0_wo0_mtree_mult1_21_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 34 => u0_m0_wo0_mtree_mult1_21_im3_q(33)) & u0_m0_wo0_mtree_mult1_21_im3_q));
    u0_m0_wo0_mtree_mult1_21_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 48 => u0_m0_wo0_mtree_mult1_21_align_8_q(47)) & u0_m0_wo0_mtree_mult1_21_align_8_q));
    u0_m0_wo0_mtree_mult1_21_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_21_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_21_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_21_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_21_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_21_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_21_result_add_0_0_o(48 downto 0);

    -- u0_m0_wo0_cm31_lutmem(DUALMEM,270)@13 + 2
    u0_m0_wo0_cm31_lutmem_aa <= u0_m0_wo0_ca51_q;
    u0_m0_wo0_cm31_lutmem_reset0 <= areset;
    u0_m0_wo0_cm31_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 32,
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
    u0_m0_wo0_cm31_lutmem_r <= u0_m0_wo0_cm31_lutmem_ir(31 downto 0);

    -- u0_m0_wo0_mtree_mult1_20_bs1_merged_bit_select(BITSELECT,894)@15
    u0_m0_wo0_mtree_mult1_20_bs1_merged_bit_select_b <= STD_LOGIC_VECTOR(u0_m0_wo0_cm31_lutmem_r(31 downto 17));
    u0_m0_wo0_mtree_mult1_20_bs1_merged_bit_select_c <= STD_LOGIC_VECTOR(u0_m0_wo0_cm31_lutmem_r(16 downto 0));

    -- u0_m0_wo0_mtree_mult1_20_im0(MULT,632)@15 + 2
    u0_m0_wo0_mtree_mult1_20_im0_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split29_d);
    u0_m0_wo0_mtree_mult1_20_im0_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_20_bs1_merged_bit_select_b);
    u0_m0_wo0_mtree_mult1_20_im0_reset <= areset;
    u0_m0_wo0_mtree_mult1_20_im0_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 16,
        lpm_widthb => 15,
        lpm_widthp => 31,
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

    -- u0_m0_wo0_mtree_mult1_20_align_8(BITSHIFT,640)@17
    u0_m0_wo0_mtree_mult1_20_align_8_qint <= u0_m0_wo0_mtree_mult1_20_im0_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_20_align_8_q <= u0_m0_wo0_mtree_mult1_20_align_8_qint(47 downto 0);

    -- u0_m0_wo0_mtree_mult1_20_bjA5(BITJOIN,637)@15
    u0_m0_wo0_mtree_mult1_20_bjA5_q <= GND_q & u0_m0_wo0_mtree_mult1_20_bs1_merged_bit_select_c;

    -- u0_m0_wo0_mtree_mult1_20_im3(MULT,635)@15 + 2
    u0_m0_wo0_mtree_mult1_20_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_20_bjA5_q);
    u0_m0_wo0_mtree_mult1_20_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split29_d);
    u0_m0_wo0_mtree_mult1_20_im3_reset <= areset;
    u0_m0_wo0_mtree_mult1_20_im3_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 16,
        lpm_widthp => 34,
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

    -- u0_m0_wo0_mtree_mult1_20_result_add_0_0(ADD,642)@17 + 1
    u0_m0_wo0_mtree_mult1_20_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 34 => u0_m0_wo0_mtree_mult1_20_im3_q(33)) & u0_m0_wo0_mtree_mult1_20_im3_q));
    u0_m0_wo0_mtree_mult1_20_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 48 => u0_m0_wo0_mtree_mult1_20_align_8_q(47)) & u0_m0_wo0_mtree_mult1_20_align_8_q));
    u0_m0_wo0_mtree_mult1_20_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_20_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_20_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_20_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_20_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_20_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_20_result_add_0_0_o(48 downto 0);

    -- u0_m0_wo0_mtree_add0_10(ADD,187)@18 + 1
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
    u0_m0_wo0_mtree_add0_10_q <= u0_m0_wo0_mtree_add0_10_o(48 downto 0);

    -- u0_m0_wo0_mtree_add1_5(ADD,208)@19 + 1
    u0_m0_wo0_mtree_add1_5_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((49 downto 49 => u0_m0_wo0_mtree_add0_10_q(48)) & u0_m0_wo0_mtree_add0_10_q));
    u0_m0_wo0_mtree_add1_5_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((49 downto 49 => u0_m0_wo0_mtree_add0_11_q(48)) & u0_m0_wo0_mtree_add0_11_q));
    u0_m0_wo0_mtree_add1_5_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_5_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_5_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_5_a) + SIGNED(u0_m0_wo0_mtree_add1_5_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_5_q <= u0_m0_wo0_mtree_add1_5_o(49 downto 0);

    -- u0_m0_wo0_cm32_lutmem(DUALMEM,271)@13 + 2
    u0_m0_wo0_cm32_lutmem_aa <= u0_m0_wo0_ca51_q;
    u0_m0_wo0_cm32_lutmem_reset0 <= areset;
    u0_m0_wo0_cm32_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 32,
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
    u0_m0_wo0_cm32_lutmem_r <= u0_m0_wo0_cm32_lutmem_ir(31 downto 0);

    -- u0_m0_wo0_mtree_mult1_19_bs1_merged_bit_select(BITSELECT,895)@15
    u0_m0_wo0_mtree_mult1_19_bs1_merged_bit_select_b <= STD_LOGIC_VECTOR(u0_m0_wo0_cm32_lutmem_r(31 downto 17));
    u0_m0_wo0_mtree_mult1_19_bs1_merged_bit_select_c <= STD_LOGIC_VECTOR(u0_m0_wo0_cm32_lutmem_r(16 downto 0));

    -- u0_m0_wo0_mtree_mult1_19_im0(MULT,643)@15 + 2
    u0_m0_wo0_mtree_mult1_19_im0_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split29_e);
    u0_m0_wo0_mtree_mult1_19_im0_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_19_bs1_merged_bit_select_b);
    u0_m0_wo0_mtree_mult1_19_im0_reset <= areset;
    u0_m0_wo0_mtree_mult1_19_im0_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 16,
        lpm_widthb => 15,
        lpm_widthp => 31,
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

    -- u0_m0_wo0_mtree_mult1_19_align_8(BITSHIFT,651)@17
    u0_m0_wo0_mtree_mult1_19_align_8_qint <= u0_m0_wo0_mtree_mult1_19_im0_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_19_align_8_q <= u0_m0_wo0_mtree_mult1_19_align_8_qint(47 downto 0);

    -- u0_m0_wo0_mtree_mult1_19_bjA5(BITJOIN,648)@15
    u0_m0_wo0_mtree_mult1_19_bjA5_q <= GND_q & u0_m0_wo0_mtree_mult1_19_bs1_merged_bit_select_c;

    -- u0_m0_wo0_mtree_mult1_19_im3(MULT,646)@15 + 2
    u0_m0_wo0_mtree_mult1_19_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_19_bjA5_q);
    u0_m0_wo0_mtree_mult1_19_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split29_e);
    u0_m0_wo0_mtree_mult1_19_im3_reset <= areset;
    u0_m0_wo0_mtree_mult1_19_im3_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 16,
        lpm_widthp => 34,
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

    -- u0_m0_wo0_mtree_mult1_19_result_add_0_0(ADD,653)@17 + 1
    u0_m0_wo0_mtree_mult1_19_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 34 => u0_m0_wo0_mtree_mult1_19_im3_q(33)) & u0_m0_wo0_mtree_mult1_19_im3_q));
    u0_m0_wo0_mtree_mult1_19_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 48 => u0_m0_wo0_mtree_mult1_19_align_8_q(47)) & u0_m0_wo0_mtree_mult1_19_align_8_q));
    u0_m0_wo0_mtree_mult1_19_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_19_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_19_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_19_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_19_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_19_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_19_result_add_0_0_o(48 downto 0);

    -- u0_m0_wo0_cm33_lutmem(DUALMEM,272)@13 + 2
    u0_m0_wo0_cm33_lutmem_aa <= u0_m0_wo0_ca51_q;
    u0_m0_wo0_cm33_lutmem_reset0 <= areset;
    u0_m0_wo0_cm33_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 32,
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
    u0_m0_wo0_cm33_lutmem_r <= u0_m0_wo0_cm33_lutmem_ir(31 downto 0);

    -- u0_m0_wo0_mtree_mult1_18_bs1_merged_bit_select(BITSELECT,896)@15
    u0_m0_wo0_mtree_mult1_18_bs1_merged_bit_select_b <= STD_LOGIC_VECTOR(u0_m0_wo0_cm33_lutmem_r(31 downto 17));
    u0_m0_wo0_mtree_mult1_18_bs1_merged_bit_select_c <= STD_LOGIC_VECTOR(u0_m0_wo0_cm33_lutmem_r(16 downto 0));

    -- u0_m0_wo0_wi0_r0_join33(BITJOIN,54)@15
    u0_m0_wo0_wi0_r0_join33_q <= u0_m0_wo0_wi0_r0_split33_d & u0_m0_wo0_wi0_r0_split33_c & u0_m0_wo0_wi0_r0_split33_b & u0_m0_wo0_wi0_r0_split29_e;

    -- u0_m0_wo0_wi0_r0_memr33(DUALMEM,56)@15
    u0_m0_wo0_wi0_r0_memr33_ia <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_join33_q);
    u0_m0_wo0_wi0_r0_memr33_aa <= u0_m0_wo0_wi0_r0_wa51_q;
    u0_m0_wo0_wi0_r0_memr33_ab <= u0_m0_wo0_wi0_r0_ra51_resize_b;
    u0_m0_wo0_wi0_r0_memr33_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "DUAL_PORT",
        width_a => 64,
        widthad_a => 8,
        numwords_a => 256,
        width_b => 64,
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
        address_a => u0_m0_wo0_wi0_r0_memr33_aa,
        data_a => u0_m0_wo0_wi0_r0_memr33_ia,
        wren_a => u0_m0_wo0_wi0_r0_we51_seq_q(0),
        address_b => u0_m0_wo0_wi0_r0_memr33_ab,
        q_b => u0_m0_wo0_wi0_r0_memr33_iq
    );
    u0_m0_wo0_wi0_r0_memr33_q <= u0_m0_wo0_wi0_r0_memr33_iq(63 downto 0);

    -- u0_m0_wo0_wi0_r0_split33(BITSELECT,55)@15
    u0_m0_wo0_wi0_r0_split33_b <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr33_q(15 downto 0));
    u0_m0_wo0_wi0_r0_split33_c <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr33_q(31 downto 16));
    u0_m0_wo0_wi0_r0_split33_d <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr33_q(47 downto 32));
    u0_m0_wo0_wi0_r0_split33_e <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr33_q(63 downto 48));

    -- u0_m0_wo0_mtree_mult1_18_im0(MULT,654)@15 + 2
    u0_m0_wo0_mtree_mult1_18_im0_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split33_b);
    u0_m0_wo0_mtree_mult1_18_im0_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_18_bs1_merged_bit_select_b);
    u0_m0_wo0_mtree_mult1_18_im0_reset <= areset;
    u0_m0_wo0_mtree_mult1_18_im0_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 16,
        lpm_widthb => 15,
        lpm_widthp => 31,
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

    -- u0_m0_wo0_mtree_mult1_18_align_8(BITSHIFT,662)@17
    u0_m0_wo0_mtree_mult1_18_align_8_qint <= u0_m0_wo0_mtree_mult1_18_im0_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_18_align_8_q <= u0_m0_wo0_mtree_mult1_18_align_8_qint(47 downto 0);

    -- u0_m0_wo0_mtree_mult1_18_bjA5(BITJOIN,659)@15
    u0_m0_wo0_mtree_mult1_18_bjA5_q <= GND_q & u0_m0_wo0_mtree_mult1_18_bs1_merged_bit_select_c;

    -- u0_m0_wo0_mtree_mult1_18_im3(MULT,657)@15 + 2
    u0_m0_wo0_mtree_mult1_18_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_18_bjA5_q);
    u0_m0_wo0_mtree_mult1_18_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split33_b);
    u0_m0_wo0_mtree_mult1_18_im3_reset <= areset;
    u0_m0_wo0_mtree_mult1_18_im3_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 16,
        lpm_widthp => 34,
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

    -- u0_m0_wo0_mtree_mult1_18_result_add_0_0(ADD,664)@17 + 1
    u0_m0_wo0_mtree_mult1_18_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 34 => u0_m0_wo0_mtree_mult1_18_im3_q(33)) & u0_m0_wo0_mtree_mult1_18_im3_q));
    u0_m0_wo0_mtree_mult1_18_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 48 => u0_m0_wo0_mtree_mult1_18_align_8_q(47)) & u0_m0_wo0_mtree_mult1_18_align_8_q));
    u0_m0_wo0_mtree_mult1_18_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_18_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_18_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_18_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_18_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_18_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_18_result_add_0_0_o(48 downto 0);

    -- u0_m0_wo0_mtree_add0_9(ADD,186)@18 + 1
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
    u0_m0_wo0_mtree_add0_9_q <= u0_m0_wo0_mtree_add0_9_o(48 downto 0);

    -- u0_m0_wo0_cm34_lutmem(DUALMEM,273)@13 + 2
    u0_m0_wo0_cm34_lutmem_aa <= u0_m0_wo0_ca51_q;
    u0_m0_wo0_cm34_lutmem_reset0 <= areset;
    u0_m0_wo0_cm34_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 32,
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
    u0_m0_wo0_cm34_lutmem_r <= u0_m0_wo0_cm34_lutmem_ir(31 downto 0);

    -- u0_m0_wo0_mtree_mult1_17_bs1_merged_bit_select(BITSELECT,897)@15
    u0_m0_wo0_mtree_mult1_17_bs1_merged_bit_select_b <= STD_LOGIC_VECTOR(u0_m0_wo0_cm34_lutmem_r(31 downto 17));
    u0_m0_wo0_mtree_mult1_17_bs1_merged_bit_select_c <= STD_LOGIC_VECTOR(u0_m0_wo0_cm34_lutmem_r(16 downto 0));

    -- u0_m0_wo0_mtree_mult1_17_im0(MULT,665)@15 + 2
    u0_m0_wo0_mtree_mult1_17_im0_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split33_c);
    u0_m0_wo0_mtree_mult1_17_im0_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_17_bs1_merged_bit_select_b);
    u0_m0_wo0_mtree_mult1_17_im0_reset <= areset;
    u0_m0_wo0_mtree_mult1_17_im0_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 16,
        lpm_widthb => 15,
        lpm_widthp => 31,
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

    -- u0_m0_wo0_mtree_mult1_17_align_8(BITSHIFT,673)@17
    u0_m0_wo0_mtree_mult1_17_align_8_qint <= u0_m0_wo0_mtree_mult1_17_im0_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_17_align_8_q <= u0_m0_wo0_mtree_mult1_17_align_8_qint(47 downto 0);

    -- u0_m0_wo0_mtree_mult1_17_bjA5(BITJOIN,670)@15
    u0_m0_wo0_mtree_mult1_17_bjA5_q <= GND_q & u0_m0_wo0_mtree_mult1_17_bs1_merged_bit_select_c;

    -- u0_m0_wo0_mtree_mult1_17_im3(MULT,668)@15 + 2
    u0_m0_wo0_mtree_mult1_17_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_17_bjA5_q);
    u0_m0_wo0_mtree_mult1_17_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split33_c);
    u0_m0_wo0_mtree_mult1_17_im3_reset <= areset;
    u0_m0_wo0_mtree_mult1_17_im3_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 16,
        lpm_widthp => 34,
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

    -- u0_m0_wo0_mtree_mult1_17_result_add_0_0(ADD,675)@17 + 1
    u0_m0_wo0_mtree_mult1_17_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 34 => u0_m0_wo0_mtree_mult1_17_im3_q(33)) & u0_m0_wo0_mtree_mult1_17_im3_q));
    u0_m0_wo0_mtree_mult1_17_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 48 => u0_m0_wo0_mtree_mult1_17_align_8_q(47)) & u0_m0_wo0_mtree_mult1_17_align_8_q));
    u0_m0_wo0_mtree_mult1_17_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_17_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_17_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_17_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_17_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_17_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_17_result_add_0_0_o(48 downto 0);

    -- u0_m0_wo0_cm35_lutmem(DUALMEM,274)@13 + 2
    u0_m0_wo0_cm35_lutmem_aa <= u0_m0_wo0_ca51_q;
    u0_m0_wo0_cm35_lutmem_reset0 <= areset;
    u0_m0_wo0_cm35_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 32,
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
    u0_m0_wo0_cm35_lutmem_r <= u0_m0_wo0_cm35_lutmem_ir(31 downto 0);

    -- u0_m0_wo0_mtree_mult1_16_bs1_merged_bit_select(BITSELECT,898)@15
    u0_m0_wo0_mtree_mult1_16_bs1_merged_bit_select_b <= STD_LOGIC_VECTOR(u0_m0_wo0_cm35_lutmem_r(31 downto 17));
    u0_m0_wo0_mtree_mult1_16_bs1_merged_bit_select_c <= STD_LOGIC_VECTOR(u0_m0_wo0_cm35_lutmem_r(16 downto 0));

    -- u0_m0_wo0_mtree_mult1_16_im0(MULT,676)@15 + 2
    u0_m0_wo0_mtree_mult1_16_im0_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split33_d);
    u0_m0_wo0_mtree_mult1_16_im0_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_16_bs1_merged_bit_select_b);
    u0_m0_wo0_mtree_mult1_16_im0_reset <= areset;
    u0_m0_wo0_mtree_mult1_16_im0_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 16,
        lpm_widthb => 15,
        lpm_widthp => 31,
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

    -- u0_m0_wo0_mtree_mult1_16_align_8(BITSHIFT,684)@17
    u0_m0_wo0_mtree_mult1_16_align_8_qint <= u0_m0_wo0_mtree_mult1_16_im0_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_16_align_8_q <= u0_m0_wo0_mtree_mult1_16_align_8_qint(47 downto 0);

    -- u0_m0_wo0_mtree_mult1_16_bjA5(BITJOIN,681)@15
    u0_m0_wo0_mtree_mult1_16_bjA5_q <= GND_q & u0_m0_wo0_mtree_mult1_16_bs1_merged_bit_select_c;

    -- u0_m0_wo0_mtree_mult1_16_im3(MULT,679)@15 + 2
    u0_m0_wo0_mtree_mult1_16_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_16_bjA5_q);
    u0_m0_wo0_mtree_mult1_16_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split33_d);
    u0_m0_wo0_mtree_mult1_16_im3_reset <= areset;
    u0_m0_wo0_mtree_mult1_16_im3_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 16,
        lpm_widthp => 34,
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

    -- u0_m0_wo0_mtree_mult1_16_result_add_0_0(ADD,686)@17 + 1
    u0_m0_wo0_mtree_mult1_16_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 34 => u0_m0_wo0_mtree_mult1_16_im3_q(33)) & u0_m0_wo0_mtree_mult1_16_im3_q));
    u0_m0_wo0_mtree_mult1_16_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 48 => u0_m0_wo0_mtree_mult1_16_align_8_q(47)) & u0_m0_wo0_mtree_mult1_16_align_8_q));
    u0_m0_wo0_mtree_mult1_16_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_16_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_16_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_16_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_16_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_16_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_16_result_add_0_0_o(48 downto 0);

    -- u0_m0_wo0_mtree_add0_8(ADD,185)@18 + 1
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
    u0_m0_wo0_mtree_add0_8_q <= u0_m0_wo0_mtree_add0_8_o(48 downto 0);

    -- u0_m0_wo0_mtree_add1_4(ADD,207)@19 + 1
    u0_m0_wo0_mtree_add1_4_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((49 downto 49 => u0_m0_wo0_mtree_add0_8_q(48)) & u0_m0_wo0_mtree_add0_8_q));
    u0_m0_wo0_mtree_add1_4_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((49 downto 49 => u0_m0_wo0_mtree_add0_9_q(48)) & u0_m0_wo0_mtree_add0_9_q));
    u0_m0_wo0_mtree_add1_4_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_4_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_4_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_4_a) + SIGNED(u0_m0_wo0_mtree_add1_4_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_4_q <= u0_m0_wo0_mtree_add1_4_o(49 downto 0);

    -- u0_m0_wo0_mtree_add2_2(ADD,218)@20 + 1
    u0_m0_wo0_mtree_add2_2_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((50 downto 50 => u0_m0_wo0_mtree_add1_4_q(49)) & u0_m0_wo0_mtree_add1_4_q));
    u0_m0_wo0_mtree_add2_2_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((50 downto 50 => u0_m0_wo0_mtree_add1_5_q(49)) & u0_m0_wo0_mtree_add1_5_q));
    u0_m0_wo0_mtree_add2_2_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add2_2_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add2_2_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add2_2_a) + SIGNED(u0_m0_wo0_mtree_add2_2_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add2_2_q <= u0_m0_wo0_mtree_add2_2_o(50 downto 0);

    -- u0_m0_wo0_mtree_add3_1(ADD,223)@21 + 1
    u0_m0_wo0_mtree_add3_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((51 downto 51 => u0_m0_wo0_mtree_add2_2_q(50)) & u0_m0_wo0_mtree_add2_2_q));
    u0_m0_wo0_mtree_add3_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((51 downto 51 => u0_m0_wo0_mtree_add2_3_q(50)) & u0_m0_wo0_mtree_add2_3_q));
    u0_m0_wo0_mtree_add3_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add3_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add3_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add3_1_a) + SIGNED(u0_m0_wo0_mtree_add3_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add3_1_q <= u0_m0_wo0_mtree_add3_1_o(51 downto 0);

    -- u0_m0_wo0_cm36_lutmem(DUALMEM,275)@13 + 2
    u0_m0_wo0_cm36_lutmem_aa <= u0_m0_wo0_ca51_q;
    u0_m0_wo0_cm36_lutmem_reset0 <= areset;
    u0_m0_wo0_cm36_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 32,
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
    u0_m0_wo0_cm36_lutmem_r <= u0_m0_wo0_cm36_lutmem_ir(31 downto 0);

    -- u0_m0_wo0_mtree_mult1_15_bs1_merged_bit_select(BITSELECT,899)@15
    u0_m0_wo0_mtree_mult1_15_bs1_merged_bit_select_b <= STD_LOGIC_VECTOR(u0_m0_wo0_cm36_lutmem_r(31 downto 17));
    u0_m0_wo0_mtree_mult1_15_bs1_merged_bit_select_c <= STD_LOGIC_VECTOR(u0_m0_wo0_cm36_lutmem_r(16 downto 0));

    -- u0_m0_wo0_mtree_mult1_15_im0(MULT,687)@15 + 2
    u0_m0_wo0_mtree_mult1_15_im0_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split33_e);
    u0_m0_wo0_mtree_mult1_15_im0_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_15_bs1_merged_bit_select_b);
    u0_m0_wo0_mtree_mult1_15_im0_reset <= areset;
    u0_m0_wo0_mtree_mult1_15_im0_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 16,
        lpm_widthb => 15,
        lpm_widthp => 31,
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

    -- u0_m0_wo0_mtree_mult1_15_align_8(BITSHIFT,695)@17
    u0_m0_wo0_mtree_mult1_15_align_8_qint <= u0_m0_wo0_mtree_mult1_15_im0_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_15_align_8_q <= u0_m0_wo0_mtree_mult1_15_align_8_qint(47 downto 0);

    -- u0_m0_wo0_mtree_mult1_15_bjA5(BITJOIN,692)@15
    u0_m0_wo0_mtree_mult1_15_bjA5_q <= GND_q & u0_m0_wo0_mtree_mult1_15_bs1_merged_bit_select_c;

    -- u0_m0_wo0_mtree_mult1_15_im3(MULT,690)@15 + 2
    u0_m0_wo0_mtree_mult1_15_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_15_bjA5_q);
    u0_m0_wo0_mtree_mult1_15_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split33_e);
    u0_m0_wo0_mtree_mult1_15_im3_reset <= areset;
    u0_m0_wo0_mtree_mult1_15_im3_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 16,
        lpm_widthp => 34,
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

    -- u0_m0_wo0_mtree_mult1_15_result_add_0_0(ADD,697)@17 + 1
    u0_m0_wo0_mtree_mult1_15_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 34 => u0_m0_wo0_mtree_mult1_15_im3_q(33)) & u0_m0_wo0_mtree_mult1_15_im3_q));
    u0_m0_wo0_mtree_mult1_15_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 48 => u0_m0_wo0_mtree_mult1_15_align_8_q(47)) & u0_m0_wo0_mtree_mult1_15_align_8_q));
    u0_m0_wo0_mtree_mult1_15_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_15_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_15_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_15_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_15_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_15_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_15_result_add_0_0_o(48 downto 0);

    -- u0_m0_wo0_cm37_lutmem(DUALMEM,276)@13 + 2
    u0_m0_wo0_cm37_lutmem_aa <= u0_m0_wo0_ca51_q;
    u0_m0_wo0_cm37_lutmem_reset0 <= areset;
    u0_m0_wo0_cm37_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 32,
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
    u0_m0_wo0_cm37_lutmem_r <= u0_m0_wo0_cm37_lutmem_ir(31 downto 0);

    -- u0_m0_wo0_mtree_mult1_14_bs1_merged_bit_select(BITSELECT,900)@15
    u0_m0_wo0_mtree_mult1_14_bs1_merged_bit_select_b <= STD_LOGIC_VECTOR(u0_m0_wo0_cm37_lutmem_r(31 downto 17));
    u0_m0_wo0_mtree_mult1_14_bs1_merged_bit_select_c <= STD_LOGIC_VECTOR(u0_m0_wo0_cm37_lutmem_r(16 downto 0));

    -- u0_m0_wo0_wi0_r0_join37(BITJOIN,57)@15
    u0_m0_wo0_wi0_r0_join37_q <= u0_m0_wo0_wi0_r0_split37_d & u0_m0_wo0_wi0_r0_split37_c & u0_m0_wo0_wi0_r0_split37_b & u0_m0_wo0_wi0_r0_split33_e;

    -- u0_m0_wo0_wi0_r0_memr37(DUALMEM,59)@15
    u0_m0_wo0_wi0_r0_memr37_ia <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_join37_q);
    u0_m0_wo0_wi0_r0_memr37_aa <= u0_m0_wo0_wi0_r0_wa51_q;
    u0_m0_wo0_wi0_r0_memr37_ab <= u0_m0_wo0_wi0_r0_ra51_resize_b;
    u0_m0_wo0_wi0_r0_memr37_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "DUAL_PORT",
        width_a => 64,
        widthad_a => 8,
        numwords_a => 256,
        width_b => 64,
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
    u0_m0_wo0_wi0_r0_memr37_q <= u0_m0_wo0_wi0_r0_memr37_iq(63 downto 0);

    -- u0_m0_wo0_wi0_r0_split37(BITSELECT,58)@15
    u0_m0_wo0_wi0_r0_split37_b <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr37_q(15 downto 0));
    u0_m0_wo0_wi0_r0_split37_c <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr37_q(31 downto 16));
    u0_m0_wo0_wi0_r0_split37_d <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr37_q(47 downto 32));
    u0_m0_wo0_wi0_r0_split37_e <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr37_q(63 downto 48));

    -- u0_m0_wo0_mtree_mult1_14_im0(MULT,698)@15 + 2
    u0_m0_wo0_mtree_mult1_14_im0_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split37_b);
    u0_m0_wo0_mtree_mult1_14_im0_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_14_bs1_merged_bit_select_b);
    u0_m0_wo0_mtree_mult1_14_im0_reset <= areset;
    u0_m0_wo0_mtree_mult1_14_im0_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 16,
        lpm_widthb => 15,
        lpm_widthp => 31,
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

    -- u0_m0_wo0_mtree_mult1_14_align_8(BITSHIFT,706)@17
    u0_m0_wo0_mtree_mult1_14_align_8_qint <= u0_m0_wo0_mtree_mult1_14_im0_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_14_align_8_q <= u0_m0_wo0_mtree_mult1_14_align_8_qint(47 downto 0);

    -- u0_m0_wo0_mtree_mult1_14_bjA5(BITJOIN,703)@15
    u0_m0_wo0_mtree_mult1_14_bjA5_q <= GND_q & u0_m0_wo0_mtree_mult1_14_bs1_merged_bit_select_c;

    -- u0_m0_wo0_mtree_mult1_14_im3(MULT,701)@15 + 2
    u0_m0_wo0_mtree_mult1_14_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_14_bjA5_q);
    u0_m0_wo0_mtree_mult1_14_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split37_b);
    u0_m0_wo0_mtree_mult1_14_im3_reset <= areset;
    u0_m0_wo0_mtree_mult1_14_im3_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 16,
        lpm_widthp => 34,
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

    -- u0_m0_wo0_mtree_mult1_14_result_add_0_0(ADD,708)@17 + 1
    u0_m0_wo0_mtree_mult1_14_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 34 => u0_m0_wo0_mtree_mult1_14_im3_q(33)) & u0_m0_wo0_mtree_mult1_14_im3_q));
    u0_m0_wo0_mtree_mult1_14_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 48 => u0_m0_wo0_mtree_mult1_14_align_8_q(47)) & u0_m0_wo0_mtree_mult1_14_align_8_q));
    u0_m0_wo0_mtree_mult1_14_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_14_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_14_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_14_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_14_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_14_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_14_result_add_0_0_o(48 downto 0);

    -- u0_m0_wo0_mtree_add0_7(ADD,184)@18 + 1
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
    u0_m0_wo0_mtree_add0_7_q <= u0_m0_wo0_mtree_add0_7_o(48 downto 0);

    -- u0_m0_wo0_cm38_lutmem(DUALMEM,277)@13 + 2
    u0_m0_wo0_cm38_lutmem_aa <= u0_m0_wo0_ca51_q;
    u0_m0_wo0_cm38_lutmem_reset0 <= areset;
    u0_m0_wo0_cm38_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 32,
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
    u0_m0_wo0_cm38_lutmem_r <= u0_m0_wo0_cm38_lutmem_ir(31 downto 0);

    -- u0_m0_wo0_mtree_mult1_13_bs1_merged_bit_select(BITSELECT,901)@15
    u0_m0_wo0_mtree_mult1_13_bs1_merged_bit_select_b <= STD_LOGIC_VECTOR(u0_m0_wo0_cm38_lutmem_r(31 downto 17));
    u0_m0_wo0_mtree_mult1_13_bs1_merged_bit_select_c <= STD_LOGIC_VECTOR(u0_m0_wo0_cm38_lutmem_r(16 downto 0));

    -- u0_m0_wo0_mtree_mult1_13_im0(MULT,709)@15 + 2
    u0_m0_wo0_mtree_mult1_13_im0_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split37_c);
    u0_m0_wo0_mtree_mult1_13_im0_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_13_bs1_merged_bit_select_b);
    u0_m0_wo0_mtree_mult1_13_im0_reset <= areset;
    u0_m0_wo0_mtree_mult1_13_im0_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 16,
        lpm_widthb => 15,
        lpm_widthp => 31,
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

    -- u0_m0_wo0_mtree_mult1_13_align_8(BITSHIFT,717)@17
    u0_m0_wo0_mtree_mult1_13_align_8_qint <= u0_m0_wo0_mtree_mult1_13_im0_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_13_align_8_q <= u0_m0_wo0_mtree_mult1_13_align_8_qint(47 downto 0);

    -- u0_m0_wo0_mtree_mult1_13_bjA5(BITJOIN,714)@15
    u0_m0_wo0_mtree_mult1_13_bjA5_q <= GND_q & u0_m0_wo0_mtree_mult1_13_bs1_merged_bit_select_c;

    -- u0_m0_wo0_mtree_mult1_13_im3(MULT,712)@15 + 2
    u0_m0_wo0_mtree_mult1_13_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_13_bjA5_q);
    u0_m0_wo0_mtree_mult1_13_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split37_c);
    u0_m0_wo0_mtree_mult1_13_im3_reset <= areset;
    u0_m0_wo0_mtree_mult1_13_im3_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 16,
        lpm_widthp => 34,
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

    -- u0_m0_wo0_mtree_mult1_13_result_add_0_0(ADD,719)@17 + 1
    u0_m0_wo0_mtree_mult1_13_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 34 => u0_m0_wo0_mtree_mult1_13_im3_q(33)) & u0_m0_wo0_mtree_mult1_13_im3_q));
    u0_m0_wo0_mtree_mult1_13_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 48 => u0_m0_wo0_mtree_mult1_13_align_8_q(47)) & u0_m0_wo0_mtree_mult1_13_align_8_q));
    u0_m0_wo0_mtree_mult1_13_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_13_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_13_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_13_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_13_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_13_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_13_result_add_0_0_o(48 downto 0);

    -- u0_m0_wo0_cm39_lutmem(DUALMEM,278)@13 + 2
    u0_m0_wo0_cm39_lutmem_aa <= u0_m0_wo0_ca51_q;
    u0_m0_wo0_cm39_lutmem_reset0 <= areset;
    u0_m0_wo0_cm39_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 32,
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
    u0_m0_wo0_cm39_lutmem_r <= u0_m0_wo0_cm39_lutmem_ir(31 downto 0);

    -- u0_m0_wo0_mtree_mult1_12_bs1_merged_bit_select(BITSELECT,902)@15
    u0_m0_wo0_mtree_mult1_12_bs1_merged_bit_select_b <= STD_LOGIC_VECTOR(u0_m0_wo0_cm39_lutmem_r(31 downto 17));
    u0_m0_wo0_mtree_mult1_12_bs1_merged_bit_select_c <= STD_LOGIC_VECTOR(u0_m0_wo0_cm39_lutmem_r(16 downto 0));

    -- u0_m0_wo0_mtree_mult1_12_im0(MULT,720)@15 + 2
    u0_m0_wo0_mtree_mult1_12_im0_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split37_d);
    u0_m0_wo0_mtree_mult1_12_im0_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_12_bs1_merged_bit_select_b);
    u0_m0_wo0_mtree_mult1_12_im0_reset <= areset;
    u0_m0_wo0_mtree_mult1_12_im0_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 16,
        lpm_widthb => 15,
        lpm_widthp => 31,
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

    -- u0_m0_wo0_mtree_mult1_12_align_8(BITSHIFT,728)@17
    u0_m0_wo0_mtree_mult1_12_align_8_qint <= u0_m0_wo0_mtree_mult1_12_im0_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_12_align_8_q <= u0_m0_wo0_mtree_mult1_12_align_8_qint(47 downto 0);

    -- u0_m0_wo0_mtree_mult1_12_bjA5(BITJOIN,725)@15
    u0_m0_wo0_mtree_mult1_12_bjA5_q <= GND_q & u0_m0_wo0_mtree_mult1_12_bs1_merged_bit_select_c;

    -- u0_m0_wo0_mtree_mult1_12_im3(MULT,723)@15 + 2
    u0_m0_wo0_mtree_mult1_12_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_12_bjA5_q);
    u0_m0_wo0_mtree_mult1_12_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split37_d);
    u0_m0_wo0_mtree_mult1_12_im3_reset <= areset;
    u0_m0_wo0_mtree_mult1_12_im3_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 16,
        lpm_widthp => 34,
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

    -- u0_m0_wo0_mtree_mult1_12_result_add_0_0(ADD,730)@17 + 1
    u0_m0_wo0_mtree_mult1_12_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 34 => u0_m0_wo0_mtree_mult1_12_im3_q(33)) & u0_m0_wo0_mtree_mult1_12_im3_q));
    u0_m0_wo0_mtree_mult1_12_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 48 => u0_m0_wo0_mtree_mult1_12_align_8_q(47)) & u0_m0_wo0_mtree_mult1_12_align_8_q));
    u0_m0_wo0_mtree_mult1_12_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_12_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_12_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_12_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_12_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_12_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_12_result_add_0_0_o(48 downto 0);

    -- u0_m0_wo0_mtree_add0_6(ADD,183)@18 + 1
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
    u0_m0_wo0_mtree_add0_6_q <= u0_m0_wo0_mtree_add0_6_o(48 downto 0);

    -- u0_m0_wo0_mtree_add1_3(ADD,206)@19 + 1
    u0_m0_wo0_mtree_add1_3_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((49 downto 49 => u0_m0_wo0_mtree_add0_6_q(48)) & u0_m0_wo0_mtree_add0_6_q));
    u0_m0_wo0_mtree_add1_3_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((49 downto 49 => u0_m0_wo0_mtree_add0_7_q(48)) & u0_m0_wo0_mtree_add0_7_q));
    u0_m0_wo0_mtree_add1_3_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_3_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_3_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_3_a) + SIGNED(u0_m0_wo0_mtree_add1_3_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_3_q <= u0_m0_wo0_mtree_add1_3_o(49 downto 0);

    -- u0_m0_wo0_cm40_lutmem(DUALMEM,279)@13 + 2
    u0_m0_wo0_cm40_lutmem_aa <= u0_m0_wo0_ca51_q;
    u0_m0_wo0_cm40_lutmem_reset0 <= areset;
    u0_m0_wo0_cm40_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 32,
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
    u0_m0_wo0_cm40_lutmem_r <= u0_m0_wo0_cm40_lutmem_ir(31 downto 0);

    -- u0_m0_wo0_mtree_mult1_11_bs1_merged_bit_select(BITSELECT,903)@15
    u0_m0_wo0_mtree_mult1_11_bs1_merged_bit_select_b <= STD_LOGIC_VECTOR(u0_m0_wo0_cm40_lutmem_r(31 downto 17));
    u0_m0_wo0_mtree_mult1_11_bs1_merged_bit_select_c <= STD_LOGIC_VECTOR(u0_m0_wo0_cm40_lutmem_r(16 downto 0));

    -- u0_m0_wo0_mtree_mult1_11_im0(MULT,731)@15 + 2
    u0_m0_wo0_mtree_mult1_11_im0_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split37_e);
    u0_m0_wo0_mtree_mult1_11_im0_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_11_bs1_merged_bit_select_b);
    u0_m0_wo0_mtree_mult1_11_im0_reset <= areset;
    u0_m0_wo0_mtree_mult1_11_im0_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 16,
        lpm_widthb => 15,
        lpm_widthp => 31,
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

    -- u0_m0_wo0_mtree_mult1_11_align_8(BITSHIFT,739)@17
    u0_m0_wo0_mtree_mult1_11_align_8_qint <= u0_m0_wo0_mtree_mult1_11_im0_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_11_align_8_q <= u0_m0_wo0_mtree_mult1_11_align_8_qint(47 downto 0);

    -- u0_m0_wo0_mtree_mult1_11_bjA5(BITJOIN,736)@15
    u0_m0_wo0_mtree_mult1_11_bjA5_q <= GND_q & u0_m0_wo0_mtree_mult1_11_bs1_merged_bit_select_c;

    -- u0_m0_wo0_mtree_mult1_11_im3(MULT,734)@15 + 2
    u0_m0_wo0_mtree_mult1_11_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_11_bjA5_q);
    u0_m0_wo0_mtree_mult1_11_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split37_e);
    u0_m0_wo0_mtree_mult1_11_im3_reset <= areset;
    u0_m0_wo0_mtree_mult1_11_im3_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 16,
        lpm_widthp => 34,
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

    -- u0_m0_wo0_mtree_mult1_11_result_add_0_0(ADD,741)@17 + 1
    u0_m0_wo0_mtree_mult1_11_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 34 => u0_m0_wo0_mtree_mult1_11_im3_q(33)) & u0_m0_wo0_mtree_mult1_11_im3_q));
    u0_m0_wo0_mtree_mult1_11_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 48 => u0_m0_wo0_mtree_mult1_11_align_8_q(47)) & u0_m0_wo0_mtree_mult1_11_align_8_q));
    u0_m0_wo0_mtree_mult1_11_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_11_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_11_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_11_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_11_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_11_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_11_result_add_0_0_o(48 downto 0);

    -- u0_m0_wo0_cm41_lutmem(DUALMEM,280)@13 + 2
    u0_m0_wo0_cm41_lutmem_aa <= u0_m0_wo0_ca51_q;
    u0_m0_wo0_cm41_lutmem_reset0 <= areset;
    u0_m0_wo0_cm41_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 32,
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
    u0_m0_wo0_cm41_lutmem_r <= u0_m0_wo0_cm41_lutmem_ir(31 downto 0);

    -- u0_m0_wo0_mtree_mult1_10_bs1_merged_bit_select(BITSELECT,904)@15
    u0_m0_wo0_mtree_mult1_10_bs1_merged_bit_select_b <= STD_LOGIC_VECTOR(u0_m0_wo0_cm41_lutmem_r(31 downto 17));
    u0_m0_wo0_mtree_mult1_10_bs1_merged_bit_select_c <= STD_LOGIC_VECTOR(u0_m0_wo0_cm41_lutmem_r(16 downto 0));

    -- u0_m0_wo0_wi0_r0_join41(BITJOIN,60)@15
    u0_m0_wo0_wi0_r0_join41_q <= u0_m0_wo0_wi0_r0_split41_d & u0_m0_wo0_wi0_r0_split41_c & u0_m0_wo0_wi0_r0_split41_b & u0_m0_wo0_wi0_r0_split37_e;

    -- u0_m0_wo0_wi0_r0_memr41(DUALMEM,62)@15
    u0_m0_wo0_wi0_r0_memr41_ia <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_join41_q);
    u0_m0_wo0_wi0_r0_memr41_aa <= u0_m0_wo0_wi0_r0_wa51_q;
    u0_m0_wo0_wi0_r0_memr41_ab <= u0_m0_wo0_wi0_r0_ra51_resize_b;
    u0_m0_wo0_wi0_r0_memr41_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "DUAL_PORT",
        width_a => 64,
        widthad_a => 8,
        numwords_a => 256,
        width_b => 64,
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
        address_a => u0_m0_wo0_wi0_r0_memr41_aa,
        data_a => u0_m0_wo0_wi0_r0_memr41_ia,
        wren_a => u0_m0_wo0_wi0_r0_we51_seq_q(0),
        address_b => u0_m0_wo0_wi0_r0_memr41_ab,
        q_b => u0_m0_wo0_wi0_r0_memr41_iq
    );
    u0_m0_wo0_wi0_r0_memr41_q <= u0_m0_wo0_wi0_r0_memr41_iq(63 downto 0);

    -- u0_m0_wo0_wi0_r0_split41(BITSELECT,61)@15
    u0_m0_wo0_wi0_r0_split41_b <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr41_q(15 downto 0));
    u0_m0_wo0_wi0_r0_split41_c <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr41_q(31 downto 16));
    u0_m0_wo0_wi0_r0_split41_d <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr41_q(47 downto 32));
    u0_m0_wo0_wi0_r0_split41_e <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr41_q(63 downto 48));

    -- u0_m0_wo0_mtree_mult1_10_im0(MULT,742)@15 + 2
    u0_m0_wo0_mtree_mult1_10_im0_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split41_b);
    u0_m0_wo0_mtree_mult1_10_im0_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_10_bs1_merged_bit_select_b);
    u0_m0_wo0_mtree_mult1_10_im0_reset <= areset;
    u0_m0_wo0_mtree_mult1_10_im0_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 16,
        lpm_widthb => 15,
        lpm_widthp => 31,
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

    -- u0_m0_wo0_mtree_mult1_10_align_8(BITSHIFT,750)@17
    u0_m0_wo0_mtree_mult1_10_align_8_qint <= u0_m0_wo0_mtree_mult1_10_im0_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_10_align_8_q <= u0_m0_wo0_mtree_mult1_10_align_8_qint(47 downto 0);

    -- u0_m0_wo0_mtree_mult1_10_bjA5(BITJOIN,747)@15
    u0_m0_wo0_mtree_mult1_10_bjA5_q <= GND_q & u0_m0_wo0_mtree_mult1_10_bs1_merged_bit_select_c;

    -- u0_m0_wo0_mtree_mult1_10_im3(MULT,745)@15 + 2
    u0_m0_wo0_mtree_mult1_10_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_10_bjA5_q);
    u0_m0_wo0_mtree_mult1_10_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split41_b);
    u0_m0_wo0_mtree_mult1_10_im3_reset <= areset;
    u0_m0_wo0_mtree_mult1_10_im3_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 16,
        lpm_widthp => 34,
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

    -- u0_m0_wo0_mtree_mult1_10_result_add_0_0(ADD,752)@17 + 1
    u0_m0_wo0_mtree_mult1_10_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 34 => u0_m0_wo0_mtree_mult1_10_im3_q(33)) & u0_m0_wo0_mtree_mult1_10_im3_q));
    u0_m0_wo0_mtree_mult1_10_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 48 => u0_m0_wo0_mtree_mult1_10_align_8_q(47)) & u0_m0_wo0_mtree_mult1_10_align_8_q));
    u0_m0_wo0_mtree_mult1_10_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_10_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_10_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_10_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_10_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_10_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_10_result_add_0_0_o(48 downto 0);

    -- u0_m0_wo0_mtree_add0_5(ADD,182)@18 + 1
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
    u0_m0_wo0_mtree_add0_5_q <= u0_m0_wo0_mtree_add0_5_o(48 downto 0);

    -- u0_m0_wo0_cm42_lutmem(DUALMEM,281)@13 + 2
    u0_m0_wo0_cm42_lutmem_aa <= u0_m0_wo0_ca51_q;
    u0_m0_wo0_cm42_lutmem_reset0 <= areset;
    u0_m0_wo0_cm42_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 32,
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
    u0_m0_wo0_cm42_lutmem_r <= u0_m0_wo0_cm42_lutmem_ir(31 downto 0);

    -- u0_m0_wo0_mtree_mult1_9_bs1_merged_bit_select(BITSELECT,905)@15
    u0_m0_wo0_mtree_mult1_9_bs1_merged_bit_select_b <= STD_LOGIC_VECTOR(u0_m0_wo0_cm42_lutmem_r(31 downto 17));
    u0_m0_wo0_mtree_mult1_9_bs1_merged_bit_select_c <= STD_LOGIC_VECTOR(u0_m0_wo0_cm42_lutmem_r(16 downto 0));

    -- u0_m0_wo0_mtree_mult1_9_im0(MULT,753)@15 + 2
    u0_m0_wo0_mtree_mult1_9_im0_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split41_c);
    u0_m0_wo0_mtree_mult1_9_im0_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_9_bs1_merged_bit_select_b);
    u0_m0_wo0_mtree_mult1_9_im0_reset <= areset;
    u0_m0_wo0_mtree_mult1_9_im0_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 16,
        lpm_widthb => 15,
        lpm_widthp => 31,
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

    -- u0_m0_wo0_mtree_mult1_9_align_8(BITSHIFT,761)@17
    u0_m0_wo0_mtree_mult1_9_align_8_qint <= u0_m0_wo0_mtree_mult1_9_im0_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_9_align_8_q <= u0_m0_wo0_mtree_mult1_9_align_8_qint(47 downto 0);

    -- u0_m0_wo0_mtree_mult1_9_bjA5(BITJOIN,758)@15
    u0_m0_wo0_mtree_mult1_9_bjA5_q <= GND_q & u0_m0_wo0_mtree_mult1_9_bs1_merged_bit_select_c;

    -- u0_m0_wo0_mtree_mult1_9_im3(MULT,756)@15 + 2
    u0_m0_wo0_mtree_mult1_9_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_9_bjA5_q);
    u0_m0_wo0_mtree_mult1_9_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split41_c);
    u0_m0_wo0_mtree_mult1_9_im3_reset <= areset;
    u0_m0_wo0_mtree_mult1_9_im3_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 16,
        lpm_widthp => 34,
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

    -- u0_m0_wo0_mtree_mult1_9_result_add_0_0(ADD,763)@17 + 1
    u0_m0_wo0_mtree_mult1_9_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 34 => u0_m0_wo0_mtree_mult1_9_im3_q(33)) & u0_m0_wo0_mtree_mult1_9_im3_q));
    u0_m0_wo0_mtree_mult1_9_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 48 => u0_m0_wo0_mtree_mult1_9_align_8_q(47)) & u0_m0_wo0_mtree_mult1_9_align_8_q));
    u0_m0_wo0_mtree_mult1_9_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_9_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_9_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_9_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_9_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_9_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_9_result_add_0_0_o(48 downto 0);

    -- u0_m0_wo0_cm43_lutmem(DUALMEM,282)@13 + 2
    u0_m0_wo0_cm43_lutmem_aa <= u0_m0_wo0_ca51_q;
    u0_m0_wo0_cm43_lutmem_reset0 <= areset;
    u0_m0_wo0_cm43_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 32,
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
    u0_m0_wo0_cm43_lutmem_r <= u0_m0_wo0_cm43_lutmem_ir(31 downto 0);

    -- u0_m0_wo0_mtree_mult1_8_bs1_merged_bit_select(BITSELECT,906)@15
    u0_m0_wo0_mtree_mult1_8_bs1_merged_bit_select_b <= STD_LOGIC_VECTOR(u0_m0_wo0_cm43_lutmem_r(31 downto 17));
    u0_m0_wo0_mtree_mult1_8_bs1_merged_bit_select_c <= STD_LOGIC_VECTOR(u0_m0_wo0_cm43_lutmem_r(16 downto 0));

    -- u0_m0_wo0_mtree_mult1_8_im0(MULT,764)@15 + 2
    u0_m0_wo0_mtree_mult1_8_im0_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split41_d);
    u0_m0_wo0_mtree_mult1_8_im0_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_8_bs1_merged_bit_select_b);
    u0_m0_wo0_mtree_mult1_8_im0_reset <= areset;
    u0_m0_wo0_mtree_mult1_8_im0_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 16,
        lpm_widthb => 15,
        lpm_widthp => 31,
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

    -- u0_m0_wo0_mtree_mult1_8_align_8(BITSHIFT,772)@17
    u0_m0_wo0_mtree_mult1_8_align_8_qint <= u0_m0_wo0_mtree_mult1_8_im0_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_8_align_8_q <= u0_m0_wo0_mtree_mult1_8_align_8_qint(47 downto 0);

    -- u0_m0_wo0_mtree_mult1_8_bjA5(BITJOIN,769)@15
    u0_m0_wo0_mtree_mult1_8_bjA5_q <= GND_q & u0_m0_wo0_mtree_mult1_8_bs1_merged_bit_select_c;

    -- u0_m0_wo0_mtree_mult1_8_im3(MULT,767)@15 + 2
    u0_m0_wo0_mtree_mult1_8_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_8_bjA5_q);
    u0_m0_wo0_mtree_mult1_8_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split41_d);
    u0_m0_wo0_mtree_mult1_8_im3_reset <= areset;
    u0_m0_wo0_mtree_mult1_8_im3_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 16,
        lpm_widthp => 34,
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

    -- u0_m0_wo0_mtree_mult1_8_result_add_0_0(ADD,774)@17 + 1
    u0_m0_wo0_mtree_mult1_8_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 34 => u0_m0_wo0_mtree_mult1_8_im3_q(33)) & u0_m0_wo0_mtree_mult1_8_im3_q));
    u0_m0_wo0_mtree_mult1_8_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 48 => u0_m0_wo0_mtree_mult1_8_align_8_q(47)) & u0_m0_wo0_mtree_mult1_8_align_8_q));
    u0_m0_wo0_mtree_mult1_8_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_8_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_8_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_8_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_8_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_8_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_8_result_add_0_0_o(48 downto 0);

    -- u0_m0_wo0_mtree_add0_4(ADD,181)@18 + 1
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
    u0_m0_wo0_mtree_add0_4_q <= u0_m0_wo0_mtree_add0_4_o(48 downto 0);

    -- u0_m0_wo0_mtree_add1_2(ADD,205)@19 + 1
    u0_m0_wo0_mtree_add1_2_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((49 downto 49 => u0_m0_wo0_mtree_add0_4_q(48)) & u0_m0_wo0_mtree_add0_4_q));
    u0_m0_wo0_mtree_add1_2_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((49 downto 49 => u0_m0_wo0_mtree_add0_5_q(48)) & u0_m0_wo0_mtree_add0_5_q));
    u0_m0_wo0_mtree_add1_2_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_2_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_2_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_2_a) + SIGNED(u0_m0_wo0_mtree_add1_2_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_2_q <= u0_m0_wo0_mtree_add1_2_o(49 downto 0);

    -- u0_m0_wo0_mtree_add2_1(ADD,217)@20 + 1
    u0_m0_wo0_mtree_add2_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((50 downto 50 => u0_m0_wo0_mtree_add1_2_q(49)) & u0_m0_wo0_mtree_add1_2_q));
    u0_m0_wo0_mtree_add2_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((50 downto 50 => u0_m0_wo0_mtree_add1_3_q(49)) & u0_m0_wo0_mtree_add1_3_q));
    u0_m0_wo0_mtree_add2_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add2_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add2_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add2_1_a) + SIGNED(u0_m0_wo0_mtree_add2_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add2_1_q <= u0_m0_wo0_mtree_add2_1_o(50 downto 0);

    -- u0_m0_wo0_cm44_lutmem(DUALMEM,283)@13 + 2
    u0_m0_wo0_cm44_lutmem_aa <= u0_m0_wo0_ca51_q;
    u0_m0_wo0_cm44_lutmem_reset0 <= areset;
    u0_m0_wo0_cm44_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 32,
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
    u0_m0_wo0_cm44_lutmem_r <= u0_m0_wo0_cm44_lutmem_ir(31 downto 0);

    -- u0_m0_wo0_mtree_mult1_7_bs1_merged_bit_select(BITSELECT,907)@15
    u0_m0_wo0_mtree_mult1_7_bs1_merged_bit_select_b <= STD_LOGIC_VECTOR(u0_m0_wo0_cm44_lutmem_r(31 downto 17));
    u0_m0_wo0_mtree_mult1_7_bs1_merged_bit_select_c <= STD_LOGIC_VECTOR(u0_m0_wo0_cm44_lutmem_r(16 downto 0));

    -- u0_m0_wo0_mtree_mult1_7_im0(MULT,775)@15 + 2
    u0_m0_wo0_mtree_mult1_7_im0_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split41_e);
    u0_m0_wo0_mtree_mult1_7_im0_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_7_bs1_merged_bit_select_b);
    u0_m0_wo0_mtree_mult1_7_im0_reset <= areset;
    u0_m0_wo0_mtree_mult1_7_im0_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 16,
        lpm_widthb => 15,
        lpm_widthp => 31,
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

    -- u0_m0_wo0_mtree_mult1_7_align_8(BITSHIFT,783)@17
    u0_m0_wo0_mtree_mult1_7_align_8_qint <= u0_m0_wo0_mtree_mult1_7_im0_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_7_align_8_q <= u0_m0_wo0_mtree_mult1_7_align_8_qint(47 downto 0);

    -- u0_m0_wo0_mtree_mult1_7_bjA5(BITJOIN,780)@15
    u0_m0_wo0_mtree_mult1_7_bjA5_q <= GND_q & u0_m0_wo0_mtree_mult1_7_bs1_merged_bit_select_c;

    -- u0_m0_wo0_mtree_mult1_7_im3(MULT,778)@15 + 2
    u0_m0_wo0_mtree_mult1_7_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_7_bjA5_q);
    u0_m0_wo0_mtree_mult1_7_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split41_e);
    u0_m0_wo0_mtree_mult1_7_im3_reset <= areset;
    u0_m0_wo0_mtree_mult1_7_im3_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 16,
        lpm_widthp => 34,
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

    -- u0_m0_wo0_mtree_mult1_7_result_add_0_0(ADD,785)@17 + 1
    u0_m0_wo0_mtree_mult1_7_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 34 => u0_m0_wo0_mtree_mult1_7_im3_q(33)) & u0_m0_wo0_mtree_mult1_7_im3_q));
    u0_m0_wo0_mtree_mult1_7_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 48 => u0_m0_wo0_mtree_mult1_7_align_8_q(47)) & u0_m0_wo0_mtree_mult1_7_align_8_q));
    u0_m0_wo0_mtree_mult1_7_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_7_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_7_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_7_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_7_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_7_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_7_result_add_0_0_o(48 downto 0);

    -- u0_m0_wo0_cm45_lutmem(DUALMEM,284)@13 + 2
    u0_m0_wo0_cm45_lutmem_aa <= u0_m0_wo0_ca51_q;
    u0_m0_wo0_cm45_lutmem_reset0 <= areset;
    u0_m0_wo0_cm45_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 32,
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
    u0_m0_wo0_cm45_lutmem_r <= u0_m0_wo0_cm45_lutmem_ir(31 downto 0);

    -- u0_m0_wo0_mtree_mult1_6_bs1_merged_bit_select(BITSELECT,908)@15
    u0_m0_wo0_mtree_mult1_6_bs1_merged_bit_select_b <= STD_LOGIC_VECTOR(u0_m0_wo0_cm45_lutmem_r(31 downto 17));
    u0_m0_wo0_mtree_mult1_6_bs1_merged_bit_select_c <= STD_LOGIC_VECTOR(u0_m0_wo0_cm45_lutmem_r(16 downto 0));

    -- u0_m0_wo0_wi0_r0_join45(BITJOIN,63)@15
    u0_m0_wo0_wi0_r0_join45_q <= u0_m0_wo0_wi0_r0_split45_d & u0_m0_wo0_wi0_r0_split45_c & u0_m0_wo0_wi0_r0_split45_b & u0_m0_wo0_wi0_r0_split41_e;

    -- u0_m0_wo0_wi0_r0_memr45(DUALMEM,65)@15
    u0_m0_wo0_wi0_r0_memr45_ia <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_join45_q);
    u0_m0_wo0_wi0_r0_memr45_aa <= u0_m0_wo0_wi0_r0_wa51_q;
    u0_m0_wo0_wi0_r0_memr45_ab <= u0_m0_wo0_wi0_r0_ra51_resize_b;
    u0_m0_wo0_wi0_r0_memr45_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "DUAL_PORT",
        width_a => 64,
        widthad_a => 8,
        numwords_a => 256,
        width_b => 64,
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
        address_a => u0_m0_wo0_wi0_r0_memr45_aa,
        data_a => u0_m0_wo0_wi0_r0_memr45_ia,
        wren_a => u0_m0_wo0_wi0_r0_we51_seq_q(0),
        address_b => u0_m0_wo0_wi0_r0_memr45_ab,
        q_b => u0_m0_wo0_wi0_r0_memr45_iq
    );
    u0_m0_wo0_wi0_r0_memr45_q <= u0_m0_wo0_wi0_r0_memr45_iq(63 downto 0);

    -- u0_m0_wo0_wi0_r0_split45(BITSELECT,64)@15
    u0_m0_wo0_wi0_r0_split45_b <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr45_q(15 downto 0));
    u0_m0_wo0_wi0_r0_split45_c <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr45_q(31 downto 16));
    u0_m0_wo0_wi0_r0_split45_d <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr45_q(47 downto 32));
    u0_m0_wo0_wi0_r0_split45_e <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr45_q(63 downto 48));

    -- u0_m0_wo0_mtree_mult1_6_im0(MULT,786)@15 + 2
    u0_m0_wo0_mtree_mult1_6_im0_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split45_b);
    u0_m0_wo0_mtree_mult1_6_im0_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_6_bs1_merged_bit_select_b);
    u0_m0_wo0_mtree_mult1_6_im0_reset <= areset;
    u0_m0_wo0_mtree_mult1_6_im0_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 16,
        lpm_widthb => 15,
        lpm_widthp => 31,
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

    -- u0_m0_wo0_mtree_mult1_6_align_8(BITSHIFT,794)@17
    u0_m0_wo0_mtree_mult1_6_align_8_qint <= u0_m0_wo0_mtree_mult1_6_im0_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_6_align_8_q <= u0_m0_wo0_mtree_mult1_6_align_8_qint(47 downto 0);

    -- u0_m0_wo0_mtree_mult1_6_bjA5(BITJOIN,791)@15
    u0_m0_wo0_mtree_mult1_6_bjA5_q <= GND_q & u0_m0_wo0_mtree_mult1_6_bs1_merged_bit_select_c;

    -- u0_m0_wo0_mtree_mult1_6_im3(MULT,789)@15 + 2
    u0_m0_wo0_mtree_mult1_6_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_6_bjA5_q);
    u0_m0_wo0_mtree_mult1_6_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split45_b);
    u0_m0_wo0_mtree_mult1_6_im3_reset <= areset;
    u0_m0_wo0_mtree_mult1_6_im3_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 16,
        lpm_widthp => 34,
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

    -- u0_m0_wo0_mtree_mult1_6_result_add_0_0(ADD,796)@17 + 1
    u0_m0_wo0_mtree_mult1_6_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 34 => u0_m0_wo0_mtree_mult1_6_im3_q(33)) & u0_m0_wo0_mtree_mult1_6_im3_q));
    u0_m0_wo0_mtree_mult1_6_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 48 => u0_m0_wo0_mtree_mult1_6_align_8_q(47)) & u0_m0_wo0_mtree_mult1_6_align_8_q));
    u0_m0_wo0_mtree_mult1_6_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_6_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_6_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_6_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_6_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_6_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_6_result_add_0_0_o(48 downto 0);

    -- u0_m0_wo0_mtree_add0_3(ADD,180)@18 + 1
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
    u0_m0_wo0_mtree_add0_3_q <= u0_m0_wo0_mtree_add0_3_o(48 downto 0);

    -- u0_m0_wo0_cm46_lutmem(DUALMEM,285)@13 + 2
    u0_m0_wo0_cm46_lutmem_aa <= u0_m0_wo0_ca51_q;
    u0_m0_wo0_cm46_lutmem_reset0 <= areset;
    u0_m0_wo0_cm46_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 32,
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
    u0_m0_wo0_cm46_lutmem_r <= u0_m0_wo0_cm46_lutmem_ir(31 downto 0);

    -- u0_m0_wo0_mtree_mult1_5_bs1_merged_bit_select(BITSELECT,909)@15
    u0_m0_wo0_mtree_mult1_5_bs1_merged_bit_select_b <= STD_LOGIC_VECTOR(u0_m0_wo0_cm46_lutmem_r(31 downto 17));
    u0_m0_wo0_mtree_mult1_5_bs1_merged_bit_select_c <= STD_LOGIC_VECTOR(u0_m0_wo0_cm46_lutmem_r(16 downto 0));

    -- u0_m0_wo0_mtree_mult1_5_im0(MULT,797)@15 + 2
    u0_m0_wo0_mtree_mult1_5_im0_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split45_c);
    u0_m0_wo0_mtree_mult1_5_im0_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_5_bs1_merged_bit_select_b);
    u0_m0_wo0_mtree_mult1_5_im0_reset <= areset;
    u0_m0_wo0_mtree_mult1_5_im0_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 16,
        lpm_widthb => 15,
        lpm_widthp => 31,
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

    -- u0_m0_wo0_mtree_mult1_5_align_8(BITSHIFT,805)@17
    u0_m0_wo0_mtree_mult1_5_align_8_qint <= u0_m0_wo0_mtree_mult1_5_im0_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_5_align_8_q <= u0_m0_wo0_mtree_mult1_5_align_8_qint(47 downto 0);

    -- u0_m0_wo0_mtree_mult1_5_bjA5(BITJOIN,802)@15
    u0_m0_wo0_mtree_mult1_5_bjA5_q <= GND_q & u0_m0_wo0_mtree_mult1_5_bs1_merged_bit_select_c;

    -- u0_m0_wo0_mtree_mult1_5_im3(MULT,800)@15 + 2
    u0_m0_wo0_mtree_mult1_5_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_5_bjA5_q);
    u0_m0_wo0_mtree_mult1_5_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split45_c);
    u0_m0_wo0_mtree_mult1_5_im3_reset <= areset;
    u0_m0_wo0_mtree_mult1_5_im3_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 16,
        lpm_widthp => 34,
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

    -- u0_m0_wo0_mtree_mult1_5_result_add_0_0(ADD,807)@17 + 1
    u0_m0_wo0_mtree_mult1_5_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 34 => u0_m0_wo0_mtree_mult1_5_im3_q(33)) & u0_m0_wo0_mtree_mult1_5_im3_q));
    u0_m0_wo0_mtree_mult1_5_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 48 => u0_m0_wo0_mtree_mult1_5_align_8_q(47)) & u0_m0_wo0_mtree_mult1_5_align_8_q));
    u0_m0_wo0_mtree_mult1_5_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_5_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_5_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_5_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_5_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_5_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_5_result_add_0_0_o(48 downto 0);

    -- u0_m0_wo0_cm47_lutmem(DUALMEM,286)@13 + 2
    u0_m0_wo0_cm47_lutmem_aa <= u0_m0_wo0_ca51_q;
    u0_m0_wo0_cm47_lutmem_reset0 <= areset;
    u0_m0_wo0_cm47_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 32,
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
    u0_m0_wo0_cm47_lutmem_r <= u0_m0_wo0_cm47_lutmem_ir(31 downto 0);

    -- u0_m0_wo0_mtree_mult1_4_bs1_merged_bit_select(BITSELECT,910)@15
    u0_m0_wo0_mtree_mult1_4_bs1_merged_bit_select_b <= STD_LOGIC_VECTOR(u0_m0_wo0_cm47_lutmem_r(31 downto 17));
    u0_m0_wo0_mtree_mult1_4_bs1_merged_bit_select_c <= STD_LOGIC_VECTOR(u0_m0_wo0_cm47_lutmem_r(16 downto 0));

    -- u0_m0_wo0_mtree_mult1_4_im0(MULT,808)@15 + 2
    u0_m0_wo0_mtree_mult1_4_im0_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split45_d);
    u0_m0_wo0_mtree_mult1_4_im0_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_4_bs1_merged_bit_select_b);
    u0_m0_wo0_mtree_mult1_4_im0_reset <= areset;
    u0_m0_wo0_mtree_mult1_4_im0_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 16,
        lpm_widthb => 15,
        lpm_widthp => 31,
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

    -- u0_m0_wo0_mtree_mult1_4_align_8(BITSHIFT,816)@17
    u0_m0_wo0_mtree_mult1_4_align_8_qint <= u0_m0_wo0_mtree_mult1_4_im0_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_4_align_8_q <= u0_m0_wo0_mtree_mult1_4_align_8_qint(47 downto 0);

    -- u0_m0_wo0_mtree_mult1_4_bjA5(BITJOIN,813)@15
    u0_m0_wo0_mtree_mult1_4_bjA5_q <= GND_q & u0_m0_wo0_mtree_mult1_4_bs1_merged_bit_select_c;

    -- u0_m0_wo0_mtree_mult1_4_im3(MULT,811)@15 + 2
    u0_m0_wo0_mtree_mult1_4_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_4_bjA5_q);
    u0_m0_wo0_mtree_mult1_4_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split45_d);
    u0_m0_wo0_mtree_mult1_4_im3_reset <= areset;
    u0_m0_wo0_mtree_mult1_4_im3_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 16,
        lpm_widthp => 34,
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

    -- u0_m0_wo0_mtree_mult1_4_result_add_0_0(ADD,818)@17 + 1
    u0_m0_wo0_mtree_mult1_4_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 34 => u0_m0_wo0_mtree_mult1_4_im3_q(33)) & u0_m0_wo0_mtree_mult1_4_im3_q));
    u0_m0_wo0_mtree_mult1_4_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 48 => u0_m0_wo0_mtree_mult1_4_align_8_q(47)) & u0_m0_wo0_mtree_mult1_4_align_8_q));
    u0_m0_wo0_mtree_mult1_4_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_4_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_4_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_4_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_4_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_4_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_4_result_add_0_0_o(48 downto 0);

    -- u0_m0_wo0_mtree_add0_2(ADD,179)@18 + 1
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
    u0_m0_wo0_mtree_add0_2_q <= u0_m0_wo0_mtree_add0_2_o(48 downto 0);

    -- u0_m0_wo0_mtree_add1_1(ADD,204)@19 + 1
    u0_m0_wo0_mtree_add1_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((49 downto 49 => u0_m0_wo0_mtree_add0_2_q(48)) & u0_m0_wo0_mtree_add0_2_q));
    u0_m0_wo0_mtree_add1_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((49 downto 49 => u0_m0_wo0_mtree_add0_3_q(48)) & u0_m0_wo0_mtree_add0_3_q));
    u0_m0_wo0_mtree_add1_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_1_a) + SIGNED(u0_m0_wo0_mtree_add1_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_1_q <= u0_m0_wo0_mtree_add1_1_o(49 downto 0);

    -- u0_m0_wo0_cm48_lutmem(DUALMEM,287)@13 + 2
    u0_m0_wo0_cm48_lutmem_aa <= u0_m0_wo0_ca51_q;
    u0_m0_wo0_cm48_lutmem_reset0 <= areset;
    u0_m0_wo0_cm48_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 32,
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
    u0_m0_wo0_cm48_lutmem_r <= u0_m0_wo0_cm48_lutmem_ir(31 downto 0);

    -- u0_m0_wo0_mtree_mult1_3_bs1_merged_bit_select(BITSELECT,911)@15
    u0_m0_wo0_mtree_mult1_3_bs1_merged_bit_select_b <= STD_LOGIC_VECTOR(u0_m0_wo0_cm48_lutmem_r(31 downto 17));
    u0_m0_wo0_mtree_mult1_3_bs1_merged_bit_select_c <= STD_LOGIC_VECTOR(u0_m0_wo0_cm48_lutmem_r(16 downto 0));

    -- u0_m0_wo0_mtree_mult1_3_im0(MULT,819)@15 + 2
    u0_m0_wo0_mtree_mult1_3_im0_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split45_e);
    u0_m0_wo0_mtree_mult1_3_im0_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_3_bs1_merged_bit_select_b);
    u0_m0_wo0_mtree_mult1_3_im0_reset <= areset;
    u0_m0_wo0_mtree_mult1_3_im0_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 16,
        lpm_widthb => 15,
        lpm_widthp => 31,
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

    -- u0_m0_wo0_mtree_mult1_3_align_8(BITSHIFT,827)@17
    u0_m0_wo0_mtree_mult1_3_align_8_qint <= u0_m0_wo0_mtree_mult1_3_im0_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_3_align_8_q <= u0_m0_wo0_mtree_mult1_3_align_8_qint(47 downto 0);

    -- u0_m0_wo0_mtree_mult1_3_bjA5(BITJOIN,824)@15
    u0_m0_wo0_mtree_mult1_3_bjA5_q <= GND_q & u0_m0_wo0_mtree_mult1_3_bs1_merged_bit_select_c;

    -- u0_m0_wo0_mtree_mult1_3_im3(MULT,822)@15 + 2
    u0_m0_wo0_mtree_mult1_3_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_3_bjA5_q);
    u0_m0_wo0_mtree_mult1_3_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split45_e);
    u0_m0_wo0_mtree_mult1_3_im3_reset <= areset;
    u0_m0_wo0_mtree_mult1_3_im3_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 16,
        lpm_widthp => 34,
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

    -- u0_m0_wo0_mtree_mult1_3_result_add_0_0(ADD,829)@17 + 1
    u0_m0_wo0_mtree_mult1_3_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 34 => u0_m0_wo0_mtree_mult1_3_im3_q(33)) & u0_m0_wo0_mtree_mult1_3_im3_q));
    u0_m0_wo0_mtree_mult1_3_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 48 => u0_m0_wo0_mtree_mult1_3_align_8_q(47)) & u0_m0_wo0_mtree_mult1_3_align_8_q));
    u0_m0_wo0_mtree_mult1_3_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_3_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_3_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_3_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_3_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_3_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_3_result_add_0_0_o(48 downto 0);

    -- u0_m0_wo0_cm49_lutmem(DUALMEM,288)@13 + 2
    u0_m0_wo0_cm49_lutmem_aa <= u0_m0_wo0_ca51_q;
    u0_m0_wo0_cm49_lutmem_reset0 <= areset;
    u0_m0_wo0_cm49_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 32,
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
    u0_m0_wo0_cm49_lutmem_r <= u0_m0_wo0_cm49_lutmem_ir(31 downto 0);

    -- u0_m0_wo0_mtree_mult1_2_bs1_merged_bit_select(BITSELECT,912)@15
    u0_m0_wo0_mtree_mult1_2_bs1_merged_bit_select_b <= STD_LOGIC_VECTOR(u0_m0_wo0_cm49_lutmem_r(31 downto 17));
    u0_m0_wo0_mtree_mult1_2_bs1_merged_bit_select_c <= STD_LOGIC_VECTOR(u0_m0_wo0_cm49_lutmem_r(16 downto 0));

    -- u0_m0_wo0_wi0_r0_join49(BITJOIN,66)@15
    u0_m0_wo0_wi0_r0_join49_q <= u0_m0_wo0_wi0_r0_split49_c & u0_m0_wo0_wi0_r0_split49_b & u0_m0_wo0_wi0_r0_split45_e;

    -- u0_m0_wo0_wi0_r0_memr49(DUALMEM,68)@15
    u0_m0_wo0_wi0_r0_memr49_ia <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_join49_q);
    u0_m0_wo0_wi0_r0_memr49_aa <= u0_m0_wo0_wi0_r0_wa51_q;
    u0_m0_wo0_wi0_r0_memr49_ab <= u0_m0_wo0_wi0_r0_ra51_resize_b;
    u0_m0_wo0_wi0_r0_memr49_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "DUAL_PORT",
        width_a => 48,
        widthad_a => 8,
        numwords_a => 256,
        width_b => 48,
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
    u0_m0_wo0_wi0_r0_memr49_q <= u0_m0_wo0_wi0_r0_memr49_iq(47 downto 0);

    -- u0_m0_wo0_wi0_r0_split49(BITSELECT,67)@15
    u0_m0_wo0_wi0_r0_split49_b <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr49_q(15 downto 0));
    u0_m0_wo0_wi0_r0_split49_c <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr49_q(31 downto 16));
    u0_m0_wo0_wi0_r0_split49_d <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr49_q(47 downto 32));

    -- u0_m0_wo0_mtree_mult1_2_im0(MULT,830)@15 + 2
    u0_m0_wo0_mtree_mult1_2_im0_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split49_b);
    u0_m0_wo0_mtree_mult1_2_im0_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_2_bs1_merged_bit_select_b);
    u0_m0_wo0_mtree_mult1_2_im0_reset <= areset;
    u0_m0_wo0_mtree_mult1_2_im0_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 16,
        lpm_widthb => 15,
        lpm_widthp => 31,
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

    -- u0_m0_wo0_mtree_mult1_2_align_8(BITSHIFT,838)@17
    u0_m0_wo0_mtree_mult1_2_align_8_qint <= u0_m0_wo0_mtree_mult1_2_im0_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_2_align_8_q <= u0_m0_wo0_mtree_mult1_2_align_8_qint(47 downto 0);

    -- u0_m0_wo0_mtree_mult1_2_bjA5(BITJOIN,835)@15
    u0_m0_wo0_mtree_mult1_2_bjA5_q <= GND_q & u0_m0_wo0_mtree_mult1_2_bs1_merged_bit_select_c;

    -- u0_m0_wo0_mtree_mult1_2_im3(MULT,833)@15 + 2
    u0_m0_wo0_mtree_mult1_2_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_2_bjA5_q);
    u0_m0_wo0_mtree_mult1_2_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split49_b);
    u0_m0_wo0_mtree_mult1_2_im3_reset <= areset;
    u0_m0_wo0_mtree_mult1_2_im3_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 16,
        lpm_widthp => 34,
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

    -- u0_m0_wo0_mtree_mult1_2_result_add_0_0(ADD,840)@17 + 1
    u0_m0_wo0_mtree_mult1_2_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 34 => u0_m0_wo0_mtree_mult1_2_im3_q(33)) & u0_m0_wo0_mtree_mult1_2_im3_q));
    u0_m0_wo0_mtree_mult1_2_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 48 => u0_m0_wo0_mtree_mult1_2_align_8_q(47)) & u0_m0_wo0_mtree_mult1_2_align_8_q));
    u0_m0_wo0_mtree_mult1_2_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_2_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_2_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_2_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_2_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_2_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_2_result_add_0_0_o(48 downto 0);

    -- u0_m0_wo0_mtree_add0_1(ADD,178)@18 + 1
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
    u0_m0_wo0_mtree_add0_1_q <= u0_m0_wo0_mtree_add0_1_o(48 downto 0);

    -- u0_m0_wo0_cm50_lutmem(DUALMEM,289)@13 + 2
    u0_m0_wo0_cm50_lutmem_aa <= u0_m0_wo0_ca51_q;
    u0_m0_wo0_cm50_lutmem_reset0 <= areset;
    u0_m0_wo0_cm50_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 32,
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
    u0_m0_wo0_cm50_lutmem_r <= u0_m0_wo0_cm50_lutmem_ir(31 downto 0);

    -- u0_m0_wo0_mtree_mult1_1_bs1_merged_bit_select(BITSELECT,913)@15
    u0_m0_wo0_mtree_mult1_1_bs1_merged_bit_select_b <= STD_LOGIC_VECTOR(u0_m0_wo0_cm50_lutmem_r(31 downto 17));
    u0_m0_wo0_mtree_mult1_1_bs1_merged_bit_select_c <= STD_LOGIC_VECTOR(u0_m0_wo0_cm50_lutmem_r(16 downto 0));

    -- u0_m0_wo0_mtree_mult1_1_im0(MULT,841)@15 + 2
    u0_m0_wo0_mtree_mult1_1_im0_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split49_c);
    u0_m0_wo0_mtree_mult1_1_im0_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_1_bs1_merged_bit_select_b);
    u0_m0_wo0_mtree_mult1_1_im0_reset <= areset;
    u0_m0_wo0_mtree_mult1_1_im0_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 16,
        lpm_widthb => 15,
        lpm_widthp => 31,
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

    -- u0_m0_wo0_mtree_mult1_1_align_8(BITSHIFT,849)@17
    u0_m0_wo0_mtree_mult1_1_align_8_qint <= u0_m0_wo0_mtree_mult1_1_im0_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_1_align_8_q <= u0_m0_wo0_mtree_mult1_1_align_8_qint(47 downto 0);

    -- u0_m0_wo0_mtree_mult1_1_bjA5(BITJOIN,846)@15
    u0_m0_wo0_mtree_mult1_1_bjA5_q <= GND_q & u0_m0_wo0_mtree_mult1_1_bs1_merged_bit_select_c;

    -- u0_m0_wo0_mtree_mult1_1_im3(MULT,844)@15 + 2
    u0_m0_wo0_mtree_mult1_1_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_1_bjA5_q);
    u0_m0_wo0_mtree_mult1_1_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split49_c);
    u0_m0_wo0_mtree_mult1_1_im3_reset <= areset;
    u0_m0_wo0_mtree_mult1_1_im3_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 16,
        lpm_widthp => 34,
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

    -- u0_m0_wo0_mtree_mult1_1_result_add_0_0(ADD,851)@17 + 1
    u0_m0_wo0_mtree_mult1_1_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 34 => u0_m0_wo0_mtree_mult1_1_im3_q(33)) & u0_m0_wo0_mtree_mult1_1_im3_q));
    u0_m0_wo0_mtree_mult1_1_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 48 => u0_m0_wo0_mtree_mult1_1_align_8_q(47)) & u0_m0_wo0_mtree_mult1_1_align_8_q));
    u0_m0_wo0_mtree_mult1_1_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_1_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_1_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_1_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_1_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_1_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_1_result_add_0_0_o(48 downto 0);

    -- u0_m0_wo0_cm51_lutmem(DUALMEM,290)@13 + 2
    u0_m0_wo0_cm51_lutmem_aa <= u0_m0_wo0_ca51_q;
    u0_m0_wo0_cm51_lutmem_reset0 <= areset;
    u0_m0_wo0_cm51_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 32,
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
    u0_m0_wo0_cm51_lutmem_r <= u0_m0_wo0_cm51_lutmem_ir(31 downto 0);

    -- u0_m0_wo0_mtree_mult1_0_bs1_merged_bit_select(BITSELECT,914)@15
    u0_m0_wo0_mtree_mult1_0_bs1_merged_bit_select_b <= STD_LOGIC_VECTOR(u0_m0_wo0_cm51_lutmem_r(31 downto 17));
    u0_m0_wo0_mtree_mult1_0_bs1_merged_bit_select_c <= STD_LOGIC_VECTOR(u0_m0_wo0_cm51_lutmem_r(16 downto 0));

    -- u0_m0_wo0_mtree_mult1_0_im0(MULT,852)@15 + 2
    u0_m0_wo0_mtree_mult1_0_im0_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split49_d);
    u0_m0_wo0_mtree_mult1_0_im0_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_0_bs1_merged_bit_select_b);
    u0_m0_wo0_mtree_mult1_0_im0_reset <= areset;
    u0_m0_wo0_mtree_mult1_0_im0_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 16,
        lpm_widthb => 15,
        lpm_widthp => 31,
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

    -- u0_m0_wo0_mtree_mult1_0_align_8(BITSHIFT,860)@17
    u0_m0_wo0_mtree_mult1_0_align_8_qint <= u0_m0_wo0_mtree_mult1_0_im0_q & "00000000000000000";
    u0_m0_wo0_mtree_mult1_0_align_8_q <= u0_m0_wo0_mtree_mult1_0_align_8_qint(47 downto 0);

    -- u0_m0_wo0_mtree_mult1_0_bjA5(BITJOIN,857)@15
    u0_m0_wo0_mtree_mult1_0_bjA5_q <= GND_q & u0_m0_wo0_mtree_mult1_0_bs1_merged_bit_select_c;

    -- u0_m0_wo0_mtree_mult1_0_im3(MULT,855)@15 + 2
    u0_m0_wo0_mtree_mult1_0_im3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_0_bjA5_q);
    u0_m0_wo0_mtree_mult1_0_im3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split49_d);
    u0_m0_wo0_mtree_mult1_0_im3_reset <= areset;
    u0_m0_wo0_mtree_mult1_0_im3_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 16,
        lpm_widthp => 34,
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

    -- u0_m0_wo0_mtree_mult1_0_result_add_0_0(ADD,862)@17 + 1
    u0_m0_wo0_mtree_mult1_0_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 34 => u0_m0_wo0_mtree_mult1_0_im3_q(33)) & u0_m0_wo0_mtree_mult1_0_im3_q));
    u0_m0_wo0_mtree_mult1_0_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((48 downto 48 => u0_m0_wo0_mtree_mult1_0_align_8_q(47)) & u0_m0_wo0_mtree_mult1_0_align_8_q));
    u0_m0_wo0_mtree_mult1_0_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_0_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_0_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_0_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_0_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_0_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_0_result_add_0_0_o(48 downto 0);

    -- u0_m0_wo0_mtree_add0_0(ADD,177)@18 + 1
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
    u0_m0_wo0_mtree_add0_0_q <= u0_m0_wo0_mtree_add0_0_o(48 downto 0);

    -- u0_m0_wo0_mtree_add1_0(ADD,203)@19 + 1
    u0_m0_wo0_mtree_add1_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((49 downto 49 => u0_m0_wo0_mtree_add0_0_q(48)) & u0_m0_wo0_mtree_add0_0_q));
    u0_m0_wo0_mtree_add1_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((49 downto 49 => u0_m0_wo0_mtree_add0_1_q(48)) & u0_m0_wo0_mtree_add0_1_q));
    u0_m0_wo0_mtree_add1_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_0_a) + SIGNED(u0_m0_wo0_mtree_add1_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_0_q <= u0_m0_wo0_mtree_add1_0_o(49 downto 0);

    -- u0_m0_wo0_mtree_add2_0(ADD,216)@20 + 1
    u0_m0_wo0_mtree_add2_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((50 downto 50 => u0_m0_wo0_mtree_add1_0_q(49)) & u0_m0_wo0_mtree_add1_0_q));
    u0_m0_wo0_mtree_add2_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((50 downto 50 => u0_m0_wo0_mtree_add1_1_q(49)) & u0_m0_wo0_mtree_add1_1_q));
    u0_m0_wo0_mtree_add2_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add2_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add2_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add2_0_a) + SIGNED(u0_m0_wo0_mtree_add2_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add2_0_q <= u0_m0_wo0_mtree_add2_0_o(50 downto 0);

    -- u0_m0_wo0_mtree_add3_0(ADD,222)@21 + 1
    u0_m0_wo0_mtree_add3_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((51 downto 51 => u0_m0_wo0_mtree_add2_0_q(50)) & u0_m0_wo0_mtree_add2_0_q));
    u0_m0_wo0_mtree_add3_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((51 downto 51 => u0_m0_wo0_mtree_add2_1_q(50)) & u0_m0_wo0_mtree_add2_1_q));
    u0_m0_wo0_mtree_add3_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add3_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add3_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add3_0_a) + SIGNED(u0_m0_wo0_mtree_add3_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add3_0_q <= u0_m0_wo0_mtree_add3_0_o(51 downto 0);

    -- u0_m0_wo0_mtree_add4_0(ADD,225)@22 + 1
    u0_m0_wo0_mtree_add4_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((52 downto 52 => u0_m0_wo0_mtree_add3_0_q(51)) & u0_m0_wo0_mtree_add3_0_q));
    u0_m0_wo0_mtree_add4_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((52 downto 52 => u0_m0_wo0_mtree_add3_1_q(51)) & u0_m0_wo0_mtree_add3_1_q));
    u0_m0_wo0_mtree_add4_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add4_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add4_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add4_0_a) + SIGNED(u0_m0_wo0_mtree_add4_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add4_0_q <= u0_m0_wo0_mtree_add4_0_o(52 downto 0);

    -- u0_m0_wo0_mtree_add5_0(ADD,227)@23 + 1
    u0_m0_wo0_mtree_add5_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((53 downto 53 => u0_m0_wo0_mtree_add4_0_q(52)) & u0_m0_wo0_mtree_add4_0_q));
    u0_m0_wo0_mtree_add5_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((53 downto 53 => u0_m0_wo0_mtree_add4_1_q(52)) & u0_m0_wo0_mtree_add4_1_q));
    u0_m0_wo0_mtree_add5_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add5_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add5_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add5_0_a) + SIGNED(u0_m0_wo0_mtree_add5_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add5_0_q <= u0_m0_wo0_mtree_add5_0_o(53 downto 0);

    -- u0_m0_wo0_accum(ADD,229)@24 + 1
    u0_m0_wo0_accum_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((61 downto 54 => u0_m0_wo0_mtree_add5_0_q(53)) & u0_m0_wo0_mtree_add5_0_q));
    u0_m0_wo0_accum_b <= STD_LOGIC_VECTOR(u0_m0_wo0_accum_q);
    u0_m0_wo0_accum_i <= u0_m0_wo0_accum_a;
    u0_m0_wo0_accum_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_accum_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (d_u0_m0_wo0_compute_q_24_q = "1") THEN
                IF (u0_m0_wo0_aseq_q = "1") THEN
                    u0_m0_wo0_accum_o <= u0_m0_wo0_accum_i;
                ELSE
                    u0_m0_wo0_accum_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_accum_a) + SIGNED(u0_m0_wo0_accum_b));
                END IF;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_accum_q <= u0_m0_wo0_accum_o(61 downto 0);

    -- GND(CONSTANT,0)@0
    GND_q <= "0";

    -- u0_m0_wo0_oseq(SEQUENCE,230)@23 + 1
    u0_m0_wo0_oseq_clkproc: PROCESS (clk, areset)
        variable u0_m0_wo0_oseq_c : SIGNED(9 downto 0);
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_oseq_c := "0011000100";
            u0_m0_wo0_oseq_q <= "0";
            u0_m0_wo0_oseq_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (d_u0_m0_wo0_compute_q_23_q = "1") THEN
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

    -- u0_m0_wo0_oseq_gated(LOGICAL,231)@24
    u0_m0_wo0_oseq_gated_q <= u0_m0_wo0_oseq_q and d_u0_m0_wo0_compute_q_24_q;

    -- u0_m0_wo0_oseq_gated_reg(REG,232)@24 + 1
    u0_m0_wo0_oseq_gated_reg_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_oseq_gated_reg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_oseq_gated_reg_q <= STD_LOGIC_VECTOR(u0_m0_wo0_oseq_gated_q);
        END IF;
    END PROCESS;

    -- xOut(PORTOUT,237)@25 + 1
    xOut_v <= u0_m0_wo0_oseq_gated_reg_q;
    xOut_c <= STD_LOGIC_VECTOR("0000000" & GND_q);
    xOut_0 <= u0_m0_wo0_accum_q;

END normal;
