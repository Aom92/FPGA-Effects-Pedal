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
-- VHDL created on Tue Mar 14 23:48:05 2023


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
        xOut_0 : out std_logic_vector(31 downto 0);  -- sfix32
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
    signal u0_m0_wo0_compute_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_u0_m0_wo0_compute_q_21_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_u0_m0_wo0_compute_q_22_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi0_r0_ra0_count0_inner_q : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi0_r0_ra0_count0_inner_i : SIGNED (5 downto 0);
    attribute preserve : boolean;
    attribute preserve of u0_m0_wo0_wi0_r0_ra0_count0_inner_i : signal is true;
    signal u0_m0_wo0_wi0_r0_ra0_count0_q : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi0_r0_ra0_count0_i : UNSIGNED (4 downto 0);
    attribute preserve of u0_m0_wo0_wi0_r0_ra0_count0_i : signal is true;
    signal u0_m0_wo0_wi0_r0_ra0_count1_lutreg_q : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi0_r0_ra0_count1_q : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi0_r0_ra0_count1_i : UNSIGNED (4 downto 0);
    attribute preserve of u0_m0_wo0_wi0_r0_ra0_count1_i : signal is true;
    signal u0_m0_wo0_wi0_r0_ra0_count1_eq : std_logic;
    attribute preserve of u0_m0_wo0_wi0_r0_ra0_count1_eq : signal is true;
    signal u0_m0_wo0_wi0_r0_ra0_add_0_0_a : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_wi0_r0_ra0_add_0_0_b : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_wi0_r0_ra0_add_0_0_o : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_wi0_r0_ra0_add_0_0_q : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_wi0_r0_ra66_count0_q : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_wi0_r0_ra66_count0_i : UNSIGNED (5 downto 0);
    attribute preserve of u0_m0_wo0_wi0_r0_ra66_count0_i : signal is true;
    signal u0_m0_wo0_wi0_r0_ra66_count1_lutreg_q : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_wi0_r0_ra66_add_0_0_a : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_ra66_add_0_0_b : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_ra66_add_0_0_o : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_ra66_add_0_0_q : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_we66_seq_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi0_r0_we66_seq_eq : std_logic;
    signal u0_m0_wo0_wi0_r0_wa0_q : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi0_r0_wa0_i : UNSIGNED (4 downto 0);
    attribute preserve of u0_m0_wo0_wi0_r0_wa0_i : signal is true;
    signal u0_m0_wo0_wi0_r0_wa66_q : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi0_r0_wa66_i : UNSIGNED (5 downto 0);
    attribute preserve of u0_m0_wo0_wi0_r0_wa66_i : signal is true;
    signal u0_m0_wo0_wi0_r0_memr0_reset0 : std_logic;
    signal u0_m0_wo0_wi0_r0_memr0_ia : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_memr0_aa : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi0_r0_memr0_ab : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi0_r0_memr0_iq : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_memr0_q : STD_LOGIC_VECTOR (11 downto 0);
    signal d_u0_m0_wo0_wi0_r0_memr0_q_18_q : STD_LOGIC_VECTOR (11 downto 0);
    signal d_u0_m0_wo0_wi0_r0_split1_c_17_q : STD_LOGIC_VECTOR (11 downto 0);
    signal d_u0_m0_wo0_wi0_r0_split1_b_17_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_memr1_reset0 : std_logic;
    signal u0_m0_wo0_wi0_r0_memr1_ia : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr1_aa : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi0_r0_memr1_ab : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi0_r0_memr1_iq : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr1_q : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr4_reset0 : std_logic;
    signal u0_m0_wo0_wi0_r0_memr4_ia : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr4_aa : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi0_r0_memr4_ab : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi0_r0_memr4_iq : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr4_q : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr7_reset0 : std_logic;
    signal u0_m0_wo0_wi0_r0_memr7_ia : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr7_aa : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi0_r0_memr7_ab : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi0_r0_memr7_iq : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr7_q : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr10_reset0 : std_logic;
    signal u0_m0_wo0_wi0_r0_memr10_ia : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr10_aa : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi0_r0_memr10_ab : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi0_r0_memr10_iq : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr10_q : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr13_reset0 : std_logic;
    signal u0_m0_wo0_wi0_r0_memr13_ia : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr13_aa : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi0_r0_memr13_ab : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi0_r0_memr13_iq : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr13_q : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr16_reset0 : std_logic;
    signal u0_m0_wo0_wi0_r0_memr16_ia : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr16_aa : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi0_r0_memr16_ab : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi0_r0_memr16_iq : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr16_q : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr19_reset0 : std_logic;
    signal u0_m0_wo0_wi0_r0_memr19_ia : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr19_aa : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi0_r0_memr19_ab : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi0_r0_memr19_iq : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr19_q : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr22_reset0 : std_logic;
    signal u0_m0_wo0_wi0_r0_memr22_ia : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr22_aa : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi0_r0_memr22_ab : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi0_r0_memr22_iq : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr22_q : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr25_reset0 : std_logic;
    signal u0_m0_wo0_wi0_r0_memr25_ia : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr25_aa : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi0_r0_memr25_ab : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi0_r0_memr25_iq : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr25_q : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr28_reset0 : std_logic;
    signal u0_m0_wo0_wi0_r0_memr28_ia : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr28_aa : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi0_r0_memr28_ab : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi0_r0_memr28_iq : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr28_q : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr31_reset0 : std_logic;
    signal u0_m0_wo0_wi0_r0_memr31_ia : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr31_aa : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi0_r0_memr31_ab : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi0_r0_memr31_iq : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr31_q : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr34_reset0 : std_logic;
    signal u0_m0_wo0_wi0_r0_memr34_ia : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr34_aa : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi0_r0_memr34_ab : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi0_r0_memr34_iq : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr34_q : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr37_reset0 : std_logic;
    signal u0_m0_wo0_wi0_r0_memr37_ia : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr37_aa : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi0_r0_memr37_ab : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi0_r0_memr37_iq : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr37_q : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr40_reset0 : std_logic;
    signal u0_m0_wo0_wi0_r0_memr40_ia : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr40_aa : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi0_r0_memr40_ab : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi0_r0_memr40_iq : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr40_q : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr43_reset0 : std_logic;
    signal u0_m0_wo0_wi0_r0_memr43_ia : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr43_aa : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi0_r0_memr43_ab : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi0_r0_memr43_iq : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr43_q : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr46_reset0 : std_logic;
    signal u0_m0_wo0_wi0_r0_memr46_ia : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr46_aa : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi0_r0_memr46_ab : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi0_r0_memr46_iq : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr46_q : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr49_reset0 : std_logic;
    signal u0_m0_wo0_wi0_r0_memr49_ia : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr49_aa : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi0_r0_memr49_ab : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi0_r0_memr49_iq : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr49_q : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr52_reset0 : std_logic;
    signal u0_m0_wo0_wi0_r0_memr52_ia : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr52_aa : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi0_r0_memr52_ab : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi0_r0_memr52_iq : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr52_q : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr55_reset0 : std_logic;
    signal u0_m0_wo0_wi0_r0_memr55_ia : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr55_aa : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi0_r0_memr55_ab : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi0_r0_memr55_iq : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr55_q : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr58_reset0 : std_logic;
    signal u0_m0_wo0_wi0_r0_memr58_ia : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr58_aa : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi0_r0_memr58_ab : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi0_r0_memr58_iq : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr58_q : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr61_reset0 : std_logic;
    signal u0_m0_wo0_wi0_r0_memr61_ia : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr61_aa : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi0_r0_memr61_ab : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi0_r0_memr61_iq : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr61_q : STD_LOGIC_VECTOR (35 downto 0);
    signal d_u0_m0_wo0_wi0_r0_split64_c_14_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_memr64_reset0 : std_logic;
    signal u0_m0_wo0_wi0_r0_memr64_ia : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr64_aa : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi0_r0_memr64_ab : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi0_r0_memr64_iq : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr64_q : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_ca66_q : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_ca66_i : UNSIGNED (4 downto 0);
    attribute preserve of u0_m0_wo0_ca66_i : signal is true;
    signal u0_m0_wo0_ca66_eq : std_logic;
    attribute preserve of u0_m0_wo0_ca66_eq : signal is true;
    signal d_u0_m0_wo0_ca66_q_13_q : STD_LOGIC_VECTOR (4 downto 0);
    signal d_u0_m0_wo0_ca66_q_16_q : STD_LOGIC_VECTOR (4 downto 0);
    signal d_u0_m0_wo0_ca66_q_17_q : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_cm0_q : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_cm1_q : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_cm2_q : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_cm3_q : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_cm4_q : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_cm5_q : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_cm6_q : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_cm7_q : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_cm8_q : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_cm9_q : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_cm10_q : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_cm11_q : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_cm12_q : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_cm13_q : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_cm14_q : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_cm15_q : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_cm16_q : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_cm17_q : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_cm18_q : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_cm19_q : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_cm20_q : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_cm21_q : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_cm22_q : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_cm23_q : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_cm24_q : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_cm25_q : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_cm26_q : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_cm27_q : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_cm28_q : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_cm29_q : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_cm30_q : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_cm31_q : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_cm32_q : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_cm33_q : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_cm34_q : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_cm35_q : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_cm36_q : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_cm37_q : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_cm38_q : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_cm39_q : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_cm40_q : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_cm41_q : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_cm42_q : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_cm43_q : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_cm44_q : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_cm45_q : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_cm46_q : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_cm47_q : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_cm48_q : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_cm49_q : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_cm50_q : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_cm51_q : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_cm52_q : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_cm53_q : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_cm54_q : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_cm55_q : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_cm56_q : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_cm57_q : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_cm58_q : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_cm59_q : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_cm60_q : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_cm61_q : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_cm62_q : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_cm63_q : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_cm64_q : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_cm65_q : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_66_a0 : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_66_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_66_s1 : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_66_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_66_q : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_65_a0 : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_65_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_65_s1 : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_65_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_65_q : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_64_a0 : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_64_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_64_s1 : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_64_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_64_q : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_63_a0 : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_63_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_63_s1 : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_63_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_63_q : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_62_a0 : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_62_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_62_s1 : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_62_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_62_q : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_61_a0 : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_61_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_61_s1 : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_61_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_61_q : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_60_a0 : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_60_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_60_s1 : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_60_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_60_q : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_59_a0 : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_59_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_59_s1 : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_59_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_59_q : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_58_a0 : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_58_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_58_s1 : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_58_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_58_q : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_57_a0 : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_57_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_57_s1 : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_57_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_57_q : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_56_a0 : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_56_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_56_s1 : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_56_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_56_q : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_55_a0 : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_55_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_55_s1 : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_55_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_55_q : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_54_a0 : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_54_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_54_s1 : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_54_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_54_q : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_53_a0 : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_53_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_53_s1 : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_53_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_53_q : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_52_a0 : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_52_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_52_s1 : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_52_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_52_q : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_51_a0 : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_51_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_51_s1 : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_51_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_51_q : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_50_a0 : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_50_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_50_s1 : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_50_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_50_q : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_49_a0 : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_49_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_49_s1 : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_49_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_49_q : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_48_a0 : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_48_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_48_s1 : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_48_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_48_q : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_47_a0 : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_47_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_47_s1 : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_47_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_47_q : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_46_a0 : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_46_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_46_s1 : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_46_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_46_q : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_45_a0 : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_45_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_45_s1 : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_45_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_45_q : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_44_a0 : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_44_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_44_s1 : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_44_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_44_q : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_43_a0 : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_43_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_43_s1 : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_43_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_43_q : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_42_a0 : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_42_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_42_s1 : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_42_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_42_q : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_41_a0 : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_41_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_41_s1 : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_41_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_41_q : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_40_a0 : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_40_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_40_s1 : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_40_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_40_q : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_39_a0 : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_39_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_39_s1 : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_39_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_39_q : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_38_a0 : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_38_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_38_s1 : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_38_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_38_q : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_37_a0 : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_37_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_37_s1 : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_37_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_37_q : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_a0 : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_s1 : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_36_q : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_a0 : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_s1 : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_35_q : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_34_a0 : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_34_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_34_s1 : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_34_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_34_q : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_a0 : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_s1 : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_33_q : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_a0 : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_s1 : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_32_q : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_a0 : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_s1 : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_31_q : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_30_a0 : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_30_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_30_s1 : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_30_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_30_q : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_a0 : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_s1 : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_29_q : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_a0 : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_s1 : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_28_q : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_a0 : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_s1 : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_27_q : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_26_a0 : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_26_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_26_s1 : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_26_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_26_q : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_a0 : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_s1 : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_25_q : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_a0 : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_s1 : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_24_q : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_a0 : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_s1 : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_23_q : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_22_a0 : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_22_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_22_s1 : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_22_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_22_q : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_a0 : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_s1 : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_21_q : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_a0 : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_s1 : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_20_q : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_a0 : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_s1 : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_19_q : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_a0 : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_s1 : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_18_q : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_a0 : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_s1 : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_17_q : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_a0 : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_s1 : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_16_q : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_a0 : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_s1 : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_15_q : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_14_a0 : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_14_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_14_s1 : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_14_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_14_q : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_a0 : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_s1 : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_13_q : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_a0 : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_s1 : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_12_q : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_a0 : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_s1 : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_11_q : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_10_a0 : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_10_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_10_s1 : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_10_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_10_q : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_a0 : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_s1 : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_9_q : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_a0 : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_s1 : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_8_q : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_a0 : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_s1 : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_7_q : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_6_a0 : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_6_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_6_s1 : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_6_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_6_q : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_a0 : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_s1 : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_5_q : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_a0 : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_s1 : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_4_q : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_a0 : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_s1 : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_3_q : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_2_a0 : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_2_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_2_s1 : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_2_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_2_q : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_a0 : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_s1 : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_1_q : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_add0_1_a : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_1_b : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_1_o : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_1_q : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_2_a : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_2_b : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_2_o : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_3_a : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_3_b : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_3_o : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_3_q : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_4_a : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_4_b : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_4_o : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_4_q : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_5_a : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_5_b : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_5_o : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_5_q : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_6_a : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_6_b : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_6_o : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_6_q : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_7_a : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_7_b : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_7_o : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_7_q : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_8_a : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_8_b : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_8_o : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_8_q : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_9_a : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_9_b : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_9_o : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_9_q : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_10_a : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_10_b : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_10_o : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_10_q : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_11_a : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_11_b : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_11_o : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_11_q : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_12_a : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_12_b : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_12_o : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_12_q : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_13_a : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_13_b : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_13_o : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_13_q : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_14_a : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_14_b : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_14_o : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_14_q : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_15_a : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_15_b : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_15_o : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_15_q : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_16_a : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_16_b : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_16_o : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_16_q : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_17_a : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_17_b : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_17_o : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_17_q : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_18_a : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_18_b : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_18_o : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_18_q : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_19_a : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_19_b : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_19_o : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_19_q : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_20_a : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_20_b : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_20_o : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_20_q : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_21_a : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_21_b : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_21_o : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_21_q : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_22_a : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_22_b : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_22_o : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_22_q : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_23_a : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_23_b : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_23_o : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_23_q : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_24_a : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_24_b : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_24_o : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_24_q : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_25_a : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_25_b : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_25_o : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_25_q : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_26_a : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_26_b : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_26_o : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_26_q : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_27_a : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_27_b : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_27_o : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_27_q : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_28_a : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_28_b : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_28_o : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_28_q : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_29_a : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_29_b : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_29_o : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_29_q : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_30_a : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_30_b : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_30_o : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_30_q : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_31_a : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_31_b : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_31_o : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_31_q : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_32_a : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_32_b : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_32_o : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add0_32_q : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add1_0_a : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_add1_0_b : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_add1_0_o : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_add1_0_q : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_add1_1_a : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_add1_1_b : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_add1_1_o : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_add1_1_q : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_add1_2_a : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_add1_2_b : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_add1_2_o : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_add1_2_q : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_add1_3_a : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_add1_3_b : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_add1_3_o : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_add1_3_q : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_add1_4_a : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_add1_4_b : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_add1_4_o : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_add1_4_q : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_add1_5_a : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_add1_5_b : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_add1_5_o : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_add1_5_q : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_add1_6_a : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_add1_6_b : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_add1_6_o : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_add1_6_q : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_add1_7_a : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_add1_7_b : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_add1_7_o : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_add1_7_q : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_add1_8_a : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_add1_8_b : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_add1_8_o : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_add1_8_q : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_add1_9_a : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_add1_9_b : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_add1_9_o : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_add1_9_q : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_add1_10_a : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_add1_10_b : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_add1_10_o : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_add1_10_q : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_add1_11_a : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_add1_11_b : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_add1_11_o : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_add1_11_q : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_add1_12_a : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_add1_12_b : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_add1_12_o : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_add1_12_q : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_add1_13_a : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_add1_13_b : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_add1_13_o : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_add1_13_q : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_add1_14_a : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_add1_14_b : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_add1_14_o : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_add1_14_q : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_add1_15_a : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_add1_15_b : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_add1_15_o : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_add1_15_q : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_add1_16_a : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_add1_16_b : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_add1_16_o : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_add1_16_q : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_add2_0_a : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_add2_0_b : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_add2_0_o : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_add2_0_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_add2_1_a : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_add2_1_b : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_add2_1_o : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_add2_1_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_add2_2_a : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_add2_2_b : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_add2_2_o : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_add2_2_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_add2_3_a : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_add2_3_b : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_add2_3_o : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_add2_3_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_add2_4_a : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_add2_4_b : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_add2_4_o : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_add2_4_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_add2_5_a : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_add2_5_b : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_add2_5_o : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_add2_5_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_add2_6_a : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_add2_6_b : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_add2_6_o : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_add2_6_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_add2_7_a : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_add2_7_b : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_add2_7_o : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_add2_7_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_add3_0_a : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add3_0_b : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add3_0_o : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add3_0_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add3_1_a : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add3_1_b : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add3_1_o : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add3_1_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add3_2_a : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add3_2_b : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add3_2_o : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add3_2_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add3_3_a : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add3_3_b : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add3_3_o : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add3_3_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add4_0_a : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add4_0_b : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add4_0_o : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add4_0_q : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add4_1_a : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add4_1_b : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add4_1_o : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add4_1_q : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add5_0_a : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_add5_0_b : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_add5_0_o : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_add5_0_q : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_add6_0_a : STD_LOGIC_VECTOR (27 downto 0);
    signal u0_m0_wo0_mtree_add6_0_b : STD_LOGIC_VECTOR (27 downto 0);
    signal u0_m0_wo0_mtree_add6_0_o : STD_LOGIC_VECTOR (27 downto 0);
    signal u0_m0_wo0_mtree_add6_0_q : STD_LOGIC_VECTOR (27 downto 0);
    signal u0_m0_wo0_aseq_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_aseq_eq : std_logic;
    signal u0_m0_wo0_accum_a : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_accum_b : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_accum_i : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_accum_o : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_accum_q : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_oseq_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_oseq_eq : std_logic;
    signal u0_m0_wo0_oseq_gated_reg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi0_r0_ra0_count0_run_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_oseq_gated_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi0_r0_ra0_count1_lut_q : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi0_r0_ra66_count1_lut_q : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_wi0_r0_ra0_resize_in : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi0_r0_ra0_resize_b : STD_LOGIC_VECTOR (4 downto 0);
    signal u0_m0_wo0_wi0_r0_ra66_resize_in : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi0_r0_ra66_resize_b : STD_LOGIC_VECTOR (5 downto 0);
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
    signal u0_m0_wo0_wi0_r0_split52_b : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_split52_c : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_split52_d : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_split55_b : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_split55_c : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_split55_d : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_split58_b : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_split58_c : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_split58_d : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_split61_b : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_split61_c : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_split61_d : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_split64_b : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_split64_c : STD_LOGIC_VECTOR (11 downto 0);
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
    signal u0_m0_wo0_wi0_r0_join52_q : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_join55_q : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_join58_q : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_join61_q : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_join64_q : STD_LOGIC_VECTOR (35 downto 0);

begin


    -- VCC(CONSTANT,1)@0
    VCC_q <= "1";

    -- u0_m0_wo0_run(ENABLEGENERATOR,13)@10 + 2
    u0_m0_wo0_run_ctrl <= u0_m0_wo0_run_out & xIn_v & u0_m0_wo0_run_enableQ;
    u0_m0_wo0_run_clkproc: PROCESS (clk, areset)
        variable u0_m0_wo0_run_enable_c : SIGNED(5 downto 0);
        variable u0_m0_wo0_run_inc : SIGNED(1 downto 0);
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_run_q <= "0";
            u0_m0_wo0_run_enable_c := TO_SIGNED(29, 6);
            u0_m0_wo0_run_enableQ <= "0";
            u0_m0_wo0_run_count <= "00";
            u0_m0_wo0_run_inc := (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (u0_m0_wo0_run_out = "1") THEN
                IF (u0_m0_wo0_run_enable_c(5) = '1') THEN
                    u0_m0_wo0_run_enable_c := u0_m0_wo0_run_enable_c - (-30);
                ELSE
                    u0_m0_wo0_run_enable_c := u0_m0_wo0_run_enable_c + (-1);
                END IF;
                u0_m0_wo0_run_enableQ <= STD_LOGIC_VECTOR(u0_m0_wo0_run_enable_c(5 downto 5));
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

    -- d_u0_m0_wo0_compute_q_21(DELAY,323)@12 + 9
    d_u0_m0_wo0_compute_q_21 : dspba_delay
    GENERIC MAP ( width => 1, depth => 9, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_compute_q, xout => d_u0_m0_wo0_compute_q_21_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_aseq(SEQUENCE,309)@21 + 1
    u0_m0_wo0_aseq_clkproc: PROCESS (clk, areset)
        variable u0_m0_wo0_aseq_c : SIGNED(6 downto 0);
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_aseq_c := "0000000";
            u0_m0_wo0_aseq_q <= "0";
            u0_m0_wo0_aseq_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (d_u0_m0_wo0_compute_q_21_q = "1") THEN
                IF (u0_m0_wo0_aseq_c = "0000000") THEN
                    u0_m0_wo0_aseq_eq <= '1';
                ELSE
                    u0_m0_wo0_aseq_eq <= '0';
                END IF;
                IF (u0_m0_wo0_aseq_eq = '1') THEN
                    u0_m0_wo0_aseq_c := u0_m0_wo0_aseq_c + 30;
                ELSE
                    u0_m0_wo0_aseq_c := u0_m0_wo0_aseq_c - 1;
                END IF;
                u0_m0_wo0_aseq_q <= STD_LOGIC_VECTOR(u0_m0_wo0_aseq_c(6 downto 6));
            END IF;
        END IF;
    END PROCESS;

    -- d_u0_m0_wo0_compute_q_22(DELAY,324)@21 + 1
    d_u0_m0_wo0_compute_q_22 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => d_u0_m0_wo0_compute_q_21_q, xout => d_u0_m0_wo0_compute_q_22_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_wi0_r0_ra0_count1(COUNTER,24)@12
    -- low=0, high=30, step=1, init=1
    u0_m0_wo0_wi0_r0_ra0_count1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_r0_ra0_count1_i <= TO_UNSIGNED(1, 5);
            u0_m0_wo0_wi0_r0_ra0_count1_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (u0_m0_wo0_memread_q = "1") THEN
                IF (u0_m0_wo0_wi0_r0_ra0_count1_i = TO_UNSIGNED(29, 5)) THEN
                    u0_m0_wo0_wi0_r0_ra0_count1_eq <= '1';
                ELSE
                    u0_m0_wo0_wi0_r0_ra0_count1_eq <= '0';
                END IF;
                IF (u0_m0_wo0_wi0_r0_ra0_count1_eq = '1') THEN
                    u0_m0_wo0_wi0_r0_ra0_count1_i <= u0_m0_wo0_wi0_r0_ra0_count1_i + 2;
                ELSE
                    u0_m0_wo0_wi0_r0_ra0_count1_i <= u0_m0_wo0_wi0_r0_ra0_count1_i + 1;
                END IF;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_wi0_r0_ra0_count1_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_wi0_r0_ra0_count1_i, 5)));

    -- u0_m0_wo0_wi0_r0_ra0_count1_lut(LOOKUP,22)@12
    u0_m0_wo0_wi0_r0_ra0_count1_lut_combproc: PROCESS (u0_m0_wo0_wi0_r0_ra0_count1_q)
    BEGIN
        -- Begin reserved scope level
        CASE (u0_m0_wo0_wi0_r0_ra0_count1_q) IS
            WHEN "00000" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "011111";
            WHEN "00001" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "000000";
            WHEN "00010" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "000001";
            WHEN "00011" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "000010";
            WHEN "00100" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "000011";
            WHEN "00101" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "000100";
            WHEN "00110" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "000101";
            WHEN "00111" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "000110";
            WHEN "01000" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "000111";
            WHEN "01001" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "001000";
            WHEN "01010" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "001001";
            WHEN "01011" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "001010";
            WHEN "01100" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "001011";
            WHEN "01101" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "001100";
            WHEN "01110" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "001101";
            WHEN "01111" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "001110";
            WHEN "10000" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "001111";
            WHEN "10001" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "010000";
            WHEN "10010" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "010001";
            WHEN "10011" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "010010";
            WHEN "10100" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "010011";
            WHEN "10101" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "010100";
            WHEN "10110" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "010101";
            WHEN "10111" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "010110";
            WHEN "11000" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "010111";
            WHEN "11001" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "011000";
            WHEN "11010" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "011001";
            WHEN "11011" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "011010";
            WHEN "11100" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "011011";
            WHEN "11101" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "011100";
            WHEN "11110" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "011101";
            WHEN OTHERS => -- unreachable
                           u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= (others => '-');
        END CASE;
        -- End reserved scope level
    END PROCESS;

    -- u0_m0_wo0_wi0_r0_ra0_count1_lutreg(REG,23)@12
    u0_m0_wo0_wi0_r0_ra0_count1_lutreg_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_r0_ra0_count1_lutreg_q <= "011111";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (u0_m0_wo0_memread_q = "1") THEN
                u0_m0_wo0_wi0_r0_ra0_count1_lutreg_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_ra0_count1_lut_q);
            END IF;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi0_r0_ra0_count0_inner(COUNTER,19)@12
    -- low=-1, high=29, step=-1, init=29
    u0_m0_wo0_wi0_r0_ra0_count0_inner_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_r0_ra0_count0_inner_i <= TO_SIGNED(29, 6);
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (u0_m0_wo0_memread_q = "1") THEN
                IF (u0_m0_wo0_wi0_r0_ra0_count0_inner_i(5 downto 5) = "1") THEN
                    u0_m0_wo0_wi0_r0_ra0_count0_inner_i <= u0_m0_wo0_wi0_r0_ra0_count0_inner_i - 34;
                ELSE
                    u0_m0_wo0_wi0_r0_ra0_count0_inner_i <= u0_m0_wo0_wi0_r0_ra0_count0_inner_i - 1;
                END IF;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_wi0_r0_ra0_count0_inner_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_wi0_r0_ra0_count0_inner_i, 6)));

    -- u0_m0_wo0_wi0_r0_ra0_count0_run(LOGICAL,20)@12
    u0_m0_wo0_wi0_r0_ra0_count0_run_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_ra0_count0_inner_q(5 downto 5));

    -- u0_m0_wo0_wi0_r0_ra0_count0(COUNTER,21)@12
    -- low=0, high=31, step=1, init=0
    u0_m0_wo0_wi0_r0_ra0_count0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_r0_ra0_count0_i <= TO_UNSIGNED(0, 5);
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (u0_m0_wo0_memread_q = "1" and u0_m0_wo0_wi0_r0_ra0_count0_run_q = "1") THEN
                u0_m0_wo0_wi0_r0_ra0_count0_i <= u0_m0_wo0_wi0_r0_ra0_count0_i + 1;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_wi0_r0_ra0_count0_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_wi0_r0_ra0_count0_i, 6)));

    -- u0_m0_wo0_wi0_r0_ra0_add_0_0(ADD,25)@12 + 1
    u0_m0_wo0_wi0_r0_ra0_add_0_0_a <= STD_LOGIC_VECTOR("0" & u0_m0_wo0_wi0_r0_ra0_count0_q);
    u0_m0_wo0_wi0_r0_ra0_add_0_0_b <= STD_LOGIC_VECTOR("0" & u0_m0_wo0_wi0_r0_ra0_count1_lutreg_q);
    u0_m0_wo0_wi0_r0_ra0_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_r0_ra0_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_wi0_r0_ra0_add_0_0_o <= STD_LOGIC_VECTOR(UNSIGNED(u0_m0_wo0_wi0_r0_ra0_add_0_0_a) + UNSIGNED(u0_m0_wo0_wi0_r0_ra0_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_wi0_r0_ra0_add_0_0_q <= u0_m0_wo0_wi0_r0_ra0_add_0_0_o(6 downto 0);

    -- u0_m0_wo0_wi0_r0_ra0_resize(BITSELECT,26)@13
    u0_m0_wo0_wi0_r0_ra0_resize_in <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_ra0_add_0_0_q(4 downto 0));
    u0_m0_wo0_wi0_r0_ra0_resize_b <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_ra0_resize_in(4 downto 0));

    -- d_xIn_0_13(DELAY,321)@10 + 3
    d_xIn_0_13 : dspba_delay
    GENERIC MAP ( width => 12, depth => 3, reset_kind => "ASYNC" )
    PORT MAP ( xin => xIn_0, xout => d_xIn_0_13_q, clk => clk, aclr => areset );

    -- d_in0_m0_wi0_wo0_assign_id1_q_13(DELAY,322)@10 + 3
    d_in0_m0_wi0_wo0_assign_id1_q_13 : dspba_delay
    GENERIC MAP ( width => 1, depth => 3, reset_kind => "ASYNC" )
    PORT MAP ( xin => xIn_v, xout => d_in0_m0_wi0_wo0_assign_id1_q_13_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_wi0_r0_wa0(COUNTER,36)@13
    -- low=0, high=31, step=1, init=29
    u0_m0_wo0_wi0_r0_wa0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_r0_wa0_i <= TO_UNSIGNED(29, 5);
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (d_in0_m0_wi0_wo0_assign_id1_q_13_q = "1") THEN
                u0_m0_wo0_wi0_r0_wa0_i <= u0_m0_wo0_wi0_r0_wa0_i + 1;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_wi0_r0_wa0_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_wi0_r0_wa0_i, 5)));

    -- u0_m0_wo0_wi0_r0_memr0(DUALMEM,38)@13
    u0_m0_wo0_wi0_r0_memr0_ia <= STD_LOGIC_VECTOR(d_xIn_0_13_q);
    u0_m0_wo0_wi0_r0_memr0_aa <= u0_m0_wo0_wi0_r0_wa0_q;
    u0_m0_wo0_wi0_r0_memr0_ab <= u0_m0_wo0_wi0_r0_ra0_resize_b;
    u0_m0_wo0_wi0_r0_memr0_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "DUAL_PORT",
        width_a => 12,
        widthad_a => 5,
        numwords_a => 32,
        width_b => 12,
        widthad_b => 5,
        numwords_b => 32,
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

    -- d_u0_m0_wo0_wi0_r0_memr0_q_18(DELAY,325)@13 + 5
    d_u0_m0_wo0_wi0_r0_memr0_q_18 : dspba_delay
    GENERIC MAP ( width => 12, depth => 5, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_memr0_q, xout => d_u0_m0_wo0_wi0_r0_memr0_q_18_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_ca66(COUNTER,105)@12
    -- low=0, high=30, step=1, init=0
    u0_m0_wo0_ca66_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_ca66_i <= TO_UNSIGNED(0, 5);
            u0_m0_wo0_ca66_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (u0_m0_wo0_compute_q = "1") THEN
                IF (u0_m0_wo0_ca66_i = TO_UNSIGNED(29, 5)) THEN
                    u0_m0_wo0_ca66_eq <= '1';
                ELSE
                    u0_m0_wo0_ca66_eq <= '0';
                END IF;
                IF (u0_m0_wo0_ca66_eq = '1') THEN
                    u0_m0_wo0_ca66_i <= u0_m0_wo0_ca66_i + 2;
                ELSE
                    u0_m0_wo0_ca66_i <= u0_m0_wo0_ca66_i + 1;
                END IF;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_ca66_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_ca66_i, 5)));

    -- d_u0_m0_wo0_ca66_q_13(DELAY,329)@12 + 1
    d_u0_m0_wo0_ca66_q_13 : dspba_delay
    GENERIC MAP ( width => 5, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_ca66_q, xout => d_u0_m0_wo0_ca66_q_13_q, clk => clk, aclr => areset );

    -- d_u0_m0_wo0_ca66_q_16(DELAY,330)@13 + 3
    d_u0_m0_wo0_ca66_q_16 : dspba_delay
    GENERIC MAP ( width => 5, depth => 3, reset_kind => "ASYNC" )
    PORT MAP ( xin => d_u0_m0_wo0_ca66_q_13_q, xout => d_u0_m0_wo0_ca66_q_16_q, clk => clk, aclr => areset );

    -- d_u0_m0_wo0_ca66_q_17(DELAY,331)@16 + 1
    d_u0_m0_wo0_ca66_q_17 : dspba_delay
    GENERIC MAP ( width => 5, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => d_u0_m0_wo0_ca66_q_16_q, xout => d_u0_m0_wo0_ca66_q_17_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_cm0(LOOKUP,109)@17 + 1
    u0_m0_wo0_cm0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm0_q <= "111111111";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (d_u0_m0_wo0_ca66_q_17_q) IS
                WHEN "00000" => u0_m0_wo0_cm0_q <= "111111111";
                WHEN "00001" => u0_m0_wo0_cm0_q <= "111111110";
                WHEN "00010" => u0_m0_wo0_cm0_q <= "111111110";
                WHEN "00011" => u0_m0_wo0_cm0_q <= "111111111";
                WHEN "00100" => u0_m0_wo0_cm0_q <= "000000000";
                WHEN "00101" => u0_m0_wo0_cm0_q <= "000000001";
                WHEN "00110" => u0_m0_wo0_cm0_q <= "000000011";
                WHEN "00111" => u0_m0_wo0_cm0_q <= "000000011";
                WHEN "01000" => u0_m0_wo0_cm0_q <= "000000011";
                WHEN "01001" => u0_m0_wo0_cm0_q <= "000000001";
                WHEN "01010" => u0_m0_wo0_cm0_q <= "111111111";
                WHEN "01011" => u0_m0_wo0_cm0_q <= "111111101";
                WHEN "01100" => u0_m0_wo0_cm0_q <= "000000000";
                WHEN "01101" => u0_m0_wo0_cm0_q <= "000000010";
                WHEN "01110" => u0_m0_wo0_cm0_q <= "000000001";
                WHEN "01111" => u0_m0_wo0_cm0_q <= "000000000";
                WHEN "10000" => u0_m0_wo0_cm0_q <= "000000000";
                WHEN "10001" => u0_m0_wo0_cm0_q <= "000000000";
                WHEN "10010" => u0_m0_wo0_cm0_q <= "000000000";
                WHEN "10011" => u0_m0_wo0_cm0_q <= "000000000";
                WHEN "10100" => u0_m0_wo0_cm0_q <= "000000000";
                WHEN "10101" => u0_m0_wo0_cm0_q <= "000000000";
                WHEN "10110" => u0_m0_wo0_cm0_q <= "000000000";
                WHEN "10111" => u0_m0_wo0_cm0_q <= "000000000";
                WHEN "11000" => u0_m0_wo0_cm0_q <= "000000000";
                WHEN "11001" => u0_m0_wo0_cm0_q <= "000000000";
                WHEN "11010" => u0_m0_wo0_cm0_q <= "000000000";
                WHEN "11011" => u0_m0_wo0_cm0_q <= "000000000";
                WHEN "11100" => u0_m0_wo0_cm0_q <= "000000000";
                WHEN "11101" => u0_m0_wo0_cm0_q <= "000000000";
                WHEN "11110" => u0_m0_wo0_cm0_q <= "000000000";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm0_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_66(MULT,176)@18 + 2
    u0_m0_wo0_mtree_mult1_66_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm0_q);
    u0_m0_wo0_mtree_mult1_66_b0 <= STD_LOGIC_VECTOR(d_u0_m0_wo0_wi0_r0_memr0_q_18_q);
    u0_m0_wo0_mtree_mult1_66_reset <= areset;
    u0_m0_wo0_mtree_mult1_66_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 9,
        lpm_widthb => 12,
        lpm_widthp => 21,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_66_a0,
        datab => u0_m0_wo0_mtree_mult1_66_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_66_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_66_s1
    );
    u0_m0_wo0_mtree_mult1_66_q <= u0_m0_wo0_mtree_mult1_66_s1;

    -- u0_m0_wo0_wi0_r0_ra66_count1_lut(LOOKUP,30)@12
    u0_m0_wo0_wi0_r0_ra66_count1_lut_combproc: PROCESS (u0_m0_wo0_wi0_r0_ra0_count1_q)
    BEGIN
        -- Begin reserved scope level
        CASE (u0_m0_wo0_wi0_r0_ra0_count1_q) IS
            WHEN "00000" => u0_m0_wo0_wi0_r0_ra66_count1_lut_q <= "0100001";
            WHEN "00001" => u0_m0_wo0_wi0_r0_ra66_count1_lut_q <= "0100010";
            WHEN "00010" => u0_m0_wo0_wi0_r0_ra66_count1_lut_q <= "0100011";
            WHEN "00011" => u0_m0_wo0_wi0_r0_ra66_count1_lut_q <= "0100100";
            WHEN "00100" => u0_m0_wo0_wi0_r0_ra66_count1_lut_q <= "0100101";
            WHEN "00101" => u0_m0_wo0_wi0_r0_ra66_count1_lut_q <= "0100110";
            WHEN "00110" => u0_m0_wo0_wi0_r0_ra66_count1_lut_q <= "0100111";
            WHEN "00111" => u0_m0_wo0_wi0_r0_ra66_count1_lut_q <= "0101000";
            WHEN "01000" => u0_m0_wo0_wi0_r0_ra66_count1_lut_q <= "0101001";
            WHEN "01001" => u0_m0_wo0_wi0_r0_ra66_count1_lut_q <= "0101010";
            WHEN "01010" => u0_m0_wo0_wi0_r0_ra66_count1_lut_q <= "0101011";
            WHEN "01011" => u0_m0_wo0_wi0_r0_ra66_count1_lut_q <= "0101100";
            WHEN "01100" => u0_m0_wo0_wi0_r0_ra66_count1_lut_q <= "0101101";
            WHEN "01101" => u0_m0_wo0_wi0_r0_ra66_count1_lut_q <= "0101110";
            WHEN "01110" => u0_m0_wo0_wi0_r0_ra66_count1_lut_q <= "0101111";
            WHEN "01111" => u0_m0_wo0_wi0_r0_ra66_count1_lut_q <= "0110000";
            WHEN "10000" => u0_m0_wo0_wi0_r0_ra66_count1_lut_q <= "0110001";
            WHEN "10001" => u0_m0_wo0_wi0_r0_ra66_count1_lut_q <= "0110010";
            WHEN "10010" => u0_m0_wo0_wi0_r0_ra66_count1_lut_q <= "0110011";
            WHEN "10011" => u0_m0_wo0_wi0_r0_ra66_count1_lut_q <= "0110100";
            WHEN "10100" => u0_m0_wo0_wi0_r0_ra66_count1_lut_q <= "0110101";
            WHEN "10101" => u0_m0_wo0_wi0_r0_ra66_count1_lut_q <= "0110110";
            WHEN "10110" => u0_m0_wo0_wi0_r0_ra66_count1_lut_q <= "0110111";
            WHEN "10111" => u0_m0_wo0_wi0_r0_ra66_count1_lut_q <= "0111000";
            WHEN "11000" => u0_m0_wo0_wi0_r0_ra66_count1_lut_q <= "0111001";
            WHEN "11001" => u0_m0_wo0_wi0_r0_ra66_count1_lut_q <= "0111010";
            WHEN "11010" => u0_m0_wo0_wi0_r0_ra66_count1_lut_q <= "0111011";
            WHEN "11011" => u0_m0_wo0_wi0_r0_ra66_count1_lut_q <= "0111100";
            WHEN "11100" => u0_m0_wo0_wi0_r0_ra66_count1_lut_q <= "0111101";
            WHEN "11101" => u0_m0_wo0_wi0_r0_ra66_count1_lut_q <= "0111110";
            WHEN "11110" => u0_m0_wo0_wi0_r0_ra66_count1_lut_q <= "0111111";
            WHEN OTHERS => -- unreachable
                           u0_m0_wo0_wi0_r0_ra66_count1_lut_q <= (others => '-');
        END CASE;
        -- End reserved scope level
    END PROCESS;

    -- u0_m0_wo0_wi0_r0_ra66_count1_lutreg(REG,31)@12
    u0_m0_wo0_wi0_r0_ra66_count1_lutreg_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_r0_ra66_count1_lutreg_q <= "0100001";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (u0_m0_wo0_memread_q = "1") THEN
                u0_m0_wo0_wi0_r0_ra66_count1_lutreg_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_ra66_count1_lut_q);
            END IF;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi0_r0_ra66_count0(COUNTER,29)@12
    -- low=0, high=63, step=1, init=0
    u0_m0_wo0_wi0_r0_ra66_count0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_r0_ra66_count0_i <= TO_UNSIGNED(0, 6);
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (u0_m0_wo0_memread_q = "1" and u0_m0_wo0_wi0_r0_ra0_count0_run_q = "1") THEN
                u0_m0_wo0_wi0_r0_ra66_count0_i <= u0_m0_wo0_wi0_r0_ra66_count0_i + 1;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_wi0_r0_ra66_count0_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_wi0_r0_ra66_count0_i, 7)));

    -- u0_m0_wo0_wi0_r0_ra66_add_0_0(ADD,33)@12 + 1
    u0_m0_wo0_wi0_r0_ra66_add_0_0_a <= STD_LOGIC_VECTOR("0" & u0_m0_wo0_wi0_r0_ra66_count0_q);
    u0_m0_wo0_wi0_r0_ra66_add_0_0_b <= STD_LOGIC_VECTOR("0" & u0_m0_wo0_wi0_r0_ra66_count1_lutreg_q);
    u0_m0_wo0_wi0_r0_ra66_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_r0_ra66_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_wi0_r0_ra66_add_0_0_o <= STD_LOGIC_VECTOR(UNSIGNED(u0_m0_wo0_wi0_r0_ra66_add_0_0_a) + UNSIGNED(u0_m0_wo0_wi0_r0_ra66_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_wi0_r0_ra66_add_0_0_q <= u0_m0_wo0_wi0_r0_ra66_add_0_0_o(7 downto 0);

    -- u0_m0_wo0_wi0_r0_ra66_resize(BITSELECT,34)@13
    u0_m0_wo0_wi0_r0_ra66_resize_in <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_ra66_add_0_0_q(5 downto 0));
    u0_m0_wo0_wi0_r0_ra66_resize_b <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_ra66_resize_in(5 downto 0));

    -- u0_m0_wo0_wi0_r0_join1(BITJOIN,39)@13
    u0_m0_wo0_wi0_r0_join1_q <= u0_m0_wo0_wi0_r0_split1_c & u0_m0_wo0_wi0_r0_split1_b & u0_m0_wo0_wi0_r0_memr0_q;

    -- u0_m0_wo0_wi0_r0_we66_seq(SEQUENCE,35)@12 + 1
    u0_m0_wo0_wi0_r0_we66_seq_clkproc: PROCESS (clk, areset)
        variable u0_m0_wo0_wi0_r0_we66_seq_c : SIGNED(6 downto 0);
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_r0_we66_seq_c := "0000000";
            u0_m0_wo0_wi0_r0_we66_seq_q <= "0";
            u0_m0_wo0_wi0_r0_we66_seq_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (u0_m0_wo0_compute_q = "1") THEN
                IF (u0_m0_wo0_wi0_r0_we66_seq_c = "0000000") THEN
                    u0_m0_wo0_wi0_r0_we66_seq_eq <= '1';
                ELSE
                    u0_m0_wo0_wi0_r0_we66_seq_eq <= '0';
                END IF;
                IF (u0_m0_wo0_wi0_r0_we66_seq_eq = '1') THEN
                    u0_m0_wo0_wi0_r0_we66_seq_c := u0_m0_wo0_wi0_r0_we66_seq_c + 30;
                ELSE
                    u0_m0_wo0_wi0_r0_we66_seq_c := u0_m0_wo0_wi0_r0_we66_seq_c - 1;
                END IF;
                u0_m0_wo0_wi0_r0_we66_seq_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_we66_seq_c(6 downto 6));
            ELSE
                u0_m0_wo0_wi0_r0_we66_seq_q <= "0";
            END IF;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi0_r0_wa66(COUNTER,37)@13
    -- low=0, high=63, step=1, init=0
    u0_m0_wo0_wi0_r0_wa66_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_r0_wa66_i <= TO_UNSIGNED(0, 6);
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (u0_m0_wo0_wi0_r0_we66_seq_q = "1") THEN
                u0_m0_wo0_wi0_r0_wa66_i <= u0_m0_wo0_wi0_r0_wa66_i + 1;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_wi0_r0_wa66_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_wi0_r0_wa66_i, 6)));

    -- u0_m0_wo0_wi0_r0_memr1(DUALMEM,41)@13
    u0_m0_wo0_wi0_r0_memr1_ia <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_join1_q);
    u0_m0_wo0_wi0_r0_memr1_aa <= u0_m0_wo0_wi0_r0_wa66_q;
    u0_m0_wo0_wi0_r0_memr1_ab <= u0_m0_wo0_wi0_r0_ra66_resize_b;
    u0_m0_wo0_wi0_r0_memr1_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "DUAL_PORT",
        width_a => 36,
        widthad_a => 6,
        numwords_a => 64,
        width_b => 36,
        widthad_b => 6,
        numwords_b => 64,
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
        wren_a => u0_m0_wo0_wi0_r0_we66_seq_q(0),
        address_b => u0_m0_wo0_wi0_r0_memr1_ab,
        q_b => u0_m0_wo0_wi0_r0_memr1_iq
    );
    u0_m0_wo0_wi0_r0_memr1_q <= u0_m0_wo0_wi0_r0_memr1_iq(35 downto 0);

    -- u0_m0_wo0_wi0_r0_split1(BITSELECT,40)@13
    u0_m0_wo0_wi0_r0_split1_b <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr1_q(11 downto 0));
    u0_m0_wo0_wi0_r0_split1_c <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr1_q(23 downto 12));
    u0_m0_wo0_wi0_r0_split1_d <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr1_q(35 downto 24));

    -- d_u0_m0_wo0_wi0_r0_split1_b_17(DELAY,326)@13 + 4
    d_u0_m0_wo0_wi0_r0_split1_b_17 : dspba_delay
    GENERIC MAP ( width => 12, depth => 4, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_split1_b, xout => d_u0_m0_wo0_wi0_r0_split1_b_17_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_cm1(LOOKUP,110)@16 + 1
    u0_m0_wo0_cm1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm1_q <= "000000001";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (d_u0_m0_wo0_ca66_q_16_q) IS
                WHEN "00000" => u0_m0_wo0_cm1_q <= "000000001";
                WHEN "00001" => u0_m0_wo0_cm1_q <= "000000011";
                WHEN "00010" => u0_m0_wo0_cm1_q <= "000000000";
                WHEN "00011" => u0_m0_wo0_cm1_q <= "111111110";
                WHEN "00100" => u0_m0_wo0_cm1_q <= "111111110";
                WHEN "00101" => u0_m0_wo0_cm1_q <= "111111110";
                WHEN "00110" => u0_m0_wo0_cm1_q <= "111111111";
                WHEN "00111" => u0_m0_wo0_cm1_q <= "000000000";
                WHEN "01000" => u0_m0_wo0_cm1_q <= "000000000";
                WHEN "01001" => u0_m0_wo0_cm1_q <= "000000000";
                WHEN "01010" => u0_m0_wo0_cm1_q <= "000000000";
                WHEN "01011" => u0_m0_wo0_cm1_q <= "000000000";
                WHEN "01100" => u0_m0_wo0_cm1_q <= "000000000";
                WHEN "01101" => u0_m0_wo0_cm1_q <= "000000000";
                WHEN "01110" => u0_m0_wo0_cm1_q <= "111111111";
                WHEN "01111" => u0_m0_wo0_cm1_q <= "111111110";
                WHEN "10000" => u0_m0_wo0_cm1_q <= "111111110";
                WHEN "10001" => u0_m0_wo0_cm1_q <= "111111111";
                WHEN "10010" => u0_m0_wo0_cm1_q <= "000000000";
                WHEN "10011" => u0_m0_wo0_cm1_q <= "000000000";
                WHEN "10100" => u0_m0_wo0_cm1_q <= "000000000";
                WHEN "10101" => u0_m0_wo0_cm1_q <= "000000000";
                WHEN "10110" => u0_m0_wo0_cm1_q <= "000000000";
                WHEN "10111" => u0_m0_wo0_cm1_q <= "000000001";
                WHEN "11000" => u0_m0_wo0_cm1_q <= "000000011";
                WHEN "11001" => u0_m0_wo0_cm1_q <= "000000010";
                WHEN "11010" => u0_m0_wo0_cm1_q <= "000000001";
                WHEN "11011" => u0_m0_wo0_cm1_q <= "000000001";
                WHEN "11100" => u0_m0_wo0_cm1_q <= "000000000";
                WHEN "11101" => u0_m0_wo0_cm1_q <= "000000000";
                WHEN "11110" => u0_m0_wo0_cm1_q <= "000000000";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm1_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_65(MULT,177)@17 + 2
    u0_m0_wo0_mtree_mult1_65_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm1_q);
    u0_m0_wo0_mtree_mult1_65_b0 <= STD_LOGIC_VECTOR(d_u0_m0_wo0_wi0_r0_split1_b_17_q);
    u0_m0_wo0_mtree_mult1_65_reset <= areset;
    u0_m0_wo0_mtree_mult1_65_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 9,
        lpm_widthb => 12,
        lpm_widthp => 21,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_65_a0,
        datab => u0_m0_wo0_mtree_mult1_65_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_65_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_65_s1
    );
    u0_m0_wo0_mtree_mult1_65_q <= u0_m0_wo0_mtree_mult1_65_s1;

    -- d_u0_m0_wo0_wi0_r0_split1_c_17(DELAY,327)@13 + 4
    d_u0_m0_wo0_wi0_r0_split1_c_17 : dspba_delay
    GENERIC MAP ( width => 12, depth => 4, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_split1_c, xout => d_u0_m0_wo0_wi0_r0_split1_c_17_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_cm2(LOOKUP,111)@16 + 1
    u0_m0_wo0_cm2_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm2_q <= "111111110";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (d_u0_m0_wo0_ca66_q_16_q) IS
                WHEN "00000" => u0_m0_wo0_cm2_q <= "111111110";
                WHEN "00001" => u0_m0_wo0_cm2_q <= "111111011";
                WHEN "00010" => u0_m0_wo0_cm2_q <= "111111101";
                WHEN "00011" => u0_m0_wo0_cm2_q <= "111111101";
                WHEN "00100" => u0_m0_wo0_cm2_q <= "111111110";
                WHEN "00101" => u0_m0_wo0_cm2_q <= "111111111";
                WHEN "00110" => u0_m0_wo0_cm2_q <= "000000000";
                WHEN "00111" => u0_m0_wo0_cm2_q <= "000000000";
                WHEN "01000" => u0_m0_wo0_cm2_q <= "000000010";
                WHEN "01001" => u0_m0_wo0_cm2_q <= "000000100";
                WHEN "01010" => u0_m0_wo0_cm2_q <= "000000100";
                WHEN "01011" => u0_m0_wo0_cm2_q <= "000000101";
                WHEN "01100" => u0_m0_wo0_cm2_q <= "000000111";
                WHEN "01101" => u0_m0_wo0_cm2_q <= "000001000";
                WHEN "01110" => u0_m0_wo0_cm2_q <= "000000101";
                WHEN "01111" => u0_m0_wo0_cm2_q <= "000000010";
                WHEN "10000" => u0_m0_wo0_cm2_q <= "000000010";
                WHEN "10001" => u0_m0_wo0_cm2_q <= "111111110";
                WHEN "10010" => u0_m0_wo0_cm2_q <= "111110111";
                WHEN "10011" => u0_m0_wo0_cm2_q <= "111110110";
                WHEN "10100" => u0_m0_wo0_cm2_q <= "111110110";
                WHEN "10101" => u0_m0_wo0_cm2_q <= "111110101";
                WHEN "10110" => u0_m0_wo0_cm2_q <= "111110101";
                WHEN "10111" => u0_m0_wo0_cm2_q <= "111111100";
                WHEN "11000" => u0_m0_wo0_cm2_q <= "000000001";
                WHEN "11001" => u0_m0_wo0_cm2_q <= "000000011";
                WHEN "11010" => u0_m0_wo0_cm2_q <= "000000011";
                WHEN "11011" => u0_m0_wo0_cm2_q <= "000000000";
                WHEN "11100" => u0_m0_wo0_cm2_q <= "111111011";
                WHEN "11101" => u0_m0_wo0_cm2_q <= "111110000";
                WHEN "11110" => u0_m0_wo0_cm2_q <= "111110011";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm2_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_64(MULT,178)@17 + 2
    u0_m0_wo0_mtree_mult1_64_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm2_q);
    u0_m0_wo0_mtree_mult1_64_b0 <= STD_LOGIC_VECTOR(d_u0_m0_wo0_wi0_r0_split1_c_17_q);
    u0_m0_wo0_mtree_mult1_64_reset <= areset;
    u0_m0_wo0_mtree_mult1_64_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 9,
        lpm_widthb => 12,
        lpm_widthp => 21,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_64_a0,
        datab => u0_m0_wo0_mtree_mult1_64_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_64_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_64_s1
    );
    u0_m0_wo0_mtree_mult1_64_q <= u0_m0_wo0_mtree_mult1_64_s1;

    -- u0_m0_wo0_mtree_add0_32(ADD,275)@19 + 1
    u0_m0_wo0_mtree_add0_32_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 21 => u0_m0_wo0_mtree_mult1_64_q(20)) & u0_m0_wo0_mtree_mult1_64_q));
    u0_m0_wo0_mtree_add0_32_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 21 => u0_m0_wo0_mtree_mult1_65_q(20)) & u0_m0_wo0_mtree_mult1_65_q));
    u0_m0_wo0_mtree_add0_32_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_32_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_32_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_32_a) + SIGNED(u0_m0_wo0_mtree_add0_32_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_32_q <= u0_m0_wo0_mtree_add0_32_o(21 downto 0);

    -- u0_m0_wo0_mtree_add1_16(ADD,292)@20 + 1
    u0_m0_wo0_mtree_add1_16_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((22 downto 22 => u0_m0_wo0_mtree_add0_32_q(21)) & u0_m0_wo0_mtree_add0_32_q));
    u0_m0_wo0_mtree_add1_16_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((22 downto 21 => u0_m0_wo0_mtree_mult1_66_q(20)) & u0_m0_wo0_mtree_mult1_66_q));
    u0_m0_wo0_mtree_add1_16_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_16_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_16_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_16_a) + SIGNED(u0_m0_wo0_mtree_add1_16_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_16_q <= u0_m0_wo0_mtree_add1_16_o(22 downto 0);

    -- u0_m0_wo0_cm3(LOOKUP,112)@12 + 1
    u0_m0_wo0_cm3_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm3_q <= "111111011";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca66_q) IS
                WHEN "00000" => u0_m0_wo0_cm3_q <= "111111011";
                WHEN "00001" => u0_m0_wo0_cm3_q <= "111110110";
                WHEN "00010" => u0_m0_wo0_cm3_q <= "111111000";
                WHEN "00011" => u0_m0_wo0_cm3_q <= "111111101";
                WHEN "00100" => u0_m0_wo0_cm3_q <= "000000000";
                WHEN "00101" => u0_m0_wo0_cm3_q <= "000000000";
                WHEN "00110" => u0_m0_wo0_cm3_q <= "000000011";
                WHEN "00111" => u0_m0_wo0_cm3_q <= "000001000";
                WHEN "01000" => u0_m0_wo0_cm3_q <= "000001001";
                WHEN "01001" => u0_m0_wo0_cm3_q <= "000001011";
                WHEN "01010" => u0_m0_wo0_cm3_q <= "000001101";
                WHEN "01011" => u0_m0_wo0_cm3_q <= "000001101";
                WHEN "01100" => u0_m0_wo0_cm3_q <= "000001010";
                WHEN "01101" => u0_m0_wo0_cm3_q <= "000000101";
                WHEN "01110" => u0_m0_wo0_cm3_q <= "000000000";
                WHEN "01111" => u0_m0_wo0_cm3_q <= "111111110";
                WHEN "10000" => u0_m0_wo0_cm3_q <= "000000000";
                WHEN "10001" => u0_m0_wo0_cm3_q <= "000000000";
                WHEN "10010" => u0_m0_wo0_cm3_q <= "111111110";
                WHEN "10011" => u0_m0_wo0_cm3_q <= "000000000";
                WHEN "10100" => u0_m0_wo0_cm3_q <= "000000011";
                WHEN "10101" => u0_m0_wo0_cm3_q <= "000000100";
                WHEN "10110" => u0_m0_wo0_cm3_q <= "000001000";
                WHEN "10111" => u0_m0_wo0_cm3_q <= "000001010";
                WHEN "11000" => u0_m0_wo0_cm3_q <= "000001001";
                WHEN "11001" => u0_m0_wo0_cm3_q <= "000001010";
                WHEN "11010" => u0_m0_wo0_cm3_q <= "000000110";
                WHEN "11011" => u0_m0_wo0_cm3_q <= "111111110";
                WHEN "11100" => u0_m0_wo0_cm3_q <= "111111000";
                WHEN "11101" => u0_m0_wo0_cm3_q <= "111111111";
                WHEN "11110" => u0_m0_wo0_cm3_q <= "000000100";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm3_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_63(MULT,179)@13 + 2
    u0_m0_wo0_mtree_mult1_63_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm3_q);
    u0_m0_wo0_mtree_mult1_63_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split1_d);
    u0_m0_wo0_mtree_mult1_63_reset <= areset;
    u0_m0_wo0_mtree_mult1_63_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 9,
        lpm_widthb => 12,
        lpm_widthp => 21,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_63_a0,
        datab => u0_m0_wo0_mtree_mult1_63_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_63_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_63_s1
    );
    u0_m0_wo0_mtree_mult1_63_q <= u0_m0_wo0_mtree_mult1_63_s1;

    -- u0_m0_wo0_wi0_r0_join4(BITJOIN,42)@13
    u0_m0_wo0_wi0_r0_join4_q <= u0_m0_wo0_wi0_r0_split4_c & u0_m0_wo0_wi0_r0_split4_b & u0_m0_wo0_wi0_r0_split1_d;

    -- u0_m0_wo0_wi0_r0_memr4(DUALMEM,44)@13
    u0_m0_wo0_wi0_r0_memr4_ia <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_join4_q);
    u0_m0_wo0_wi0_r0_memr4_aa <= u0_m0_wo0_wi0_r0_wa66_q;
    u0_m0_wo0_wi0_r0_memr4_ab <= u0_m0_wo0_wi0_r0_ra66_resize_b;
    u0_m0_wo0_wi0_r0_memr4_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "DUAL_PORT",
        width_a => 36,
        widthad_a => 6,
        numwords_a => 64,
        width_b => 36,
        widthad_b => 6,
        numwords_b => 64,
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
        wren_a => u0_m0_wo0_wi0_r0_we66_seq_q(0),
        address_b => u0_m0_wo0_wi0_r0_memr4_ab,
        q_b => u0_m0_wo0_wi0_r0_memr4_iq
    );
    u0_m0_wo0_wi0_r0_memr4_q <= u0_m0_wo0_wi0_r0_memr4_iq(35 downto 0);

    -- u0_m0_wo0_wi0_r0_split4(BITSELECT,43)@13
    u0_m0_wo0_wi0_r0_split4_b <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr4_q(11 downto 0));
    u0_m0_wo0_wi0_r0_split4_c <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr4_q(23 downto 12));
    u0_m0_wo0_wi0_r0_split4_d <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr4_q(35 downto 24));

    -- u0_m0_wo0_cm4(LOOKUP,113)@12 + 1
    u0_m0_wo0_cm4_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm4_q <= "000001010";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca66_q) IS
                WHEN "00000" => u0_m0_wo0_cm4_q <= "000001010";
                WHEN "00001" => u0_m0_wo0_cm4_q <= "000001001";
                WHEN "00010" => u0_m0_wo0_cm4_q <= "000000111";
                WHEN "00011" => u0_m0_wo0_cm4_q <= "000000111";
                WHEN "00100" => u0_m0_wo0_cm4_q <= "000001001";
                WHEN "00101" => u0_m0_wo0_cm4_q <= "000000110";
                WHEN "00110" => u0_m0_wo0_cm4_q <= "000000000";
                WHEN "00111" => u0_m0_wo0_cm4_q <= "111111110";
                WHEN "01000" => u0_m0_wo0_cm4_q <= "111111110";
                WHEN "01001" => u0_m0_wo0_cm4_q <= "000000000";
                WHEN "01010" => u0_m0_wo0_cm4_q <= "000000000";
                WHEN "01011" => u0_m0_wo0_cm4_q <= "111111111";
                WHEN "01100" => u0_m0_wo0_cm4_q <= "111111111";
                WHEN "01101" => u0_m0_wo0_cm4_q <= "000000001";
                WHEN "01110" => u0_m0_wo0_cm4_q <= "000000100";
                WHEN "01111" => u0_m0_wo0_cm4_q <= "000000111";
                WHEN "10000" => u0_m0_wo0_cm4_q <= "000000111";
                WHEN "10001" => u0_m0_wo0_cm4_q <= "000001001";
                WHEN "10010" => u0_m0_wo0_cm4_q <= "000001111";
                WHEN "10011" => u0_m0_wo0_cm4_q <= "000010010";
                WHEN "10100" => u0_m0_wo0_cm4_q <= "000010011";
                WHEN "10101" => u0_m0_wo0_cm4_q <= "000010010";
                WHEN "10110" => u0_m0_wo0_cm4_q <= "000001111";
                WHEN "10111" => u0_m0_wo0_cm4_q <= "000001010";
                WHEN "11000" => u0_m0_wo0_cm4_q <= "000000111";
                WHEN "11001" => u0_m0_wo0_cm4_q <= "000000110";
                WHEN "11010" => u0_m0_wo0_cm4_q <= "000000110";
                WHEN "11011" => u0_m0_wo0_cm4_q <= "000000010";
                WHEN "11100" => u0_m0_wo0_cm4_q <= "111111101";
                WHEN "11101" => u0_m0_wo0_cm4_q <= "111111101";
                WHEN "11110" => u0_m0_wo0_cm4_q <= "111111110";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm4_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_62(MULT,180)@13 + 2
    u0_m0_wo0_mtree_mult1_62_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm4_q);
    u0_m0_wo0_mtree_mult1_62_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split4_b);
    u0_m0_wo0_mtree_mult1_62_reset <= areset;
    u0_m0_wo0_mtree_mult1_62_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 9,
        lpm_widthb => 12,
        lpm_widthp => 21,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_62_a0,
        datab => u0_m0_wo0_mtree_mult1_62_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_62_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_62_s1
    );
    u0_m0_wo0_mtree_mult1_62_q <= u0_m0_wo0_mtree_mult1_62_s1;

    -- u0_m0_wo0_mtree_add0_31(ADD,274)@15 + 1
    u0_m0_wo0_mtree_add0_31_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 21 => u0_m0_wo0_mtree_mult1_62_q(20)) & u0_m0_wo0_mtree_mult1_62_q));
    u0_m0_wo0_mtree_add0_31_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 21 => u0_m0_wo0_mtree_mult1_63_q(20)) & u0_m0_wo0_mtree_mult1_63_q));
    u0_m0_wo0_mtree_add0_31_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_31_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_31_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_31_a) + SIGNED(u0_m0_wo0_mtree_add0_31_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_31_q <= u0_m0_wo0_mtree_add0_31_o(21 downto 0);

    -- u0_m0_wo0_cm5(LOOKUP,114)@12 + 1
    u0_m0_wo0_cm5_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm5_q <= "000000110";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca66_q) IS
                WHEN "00000" => u0_m0_wo0_cm5_q <= "000000110";
                WHEN "00001" => u0_m0_wo0_cm5_q <= "000000111";
                WHEN "00010" => u0_m0_wo0_cm5_q <= "000001001";
                WHEN "00011" => u0_m0_wo0_cm5_q <= "000000101";
                WHEN "00100" => u0_m0_wo0_cm5_q <= "000000100";
                WHEN "00101" => u0_m0_wo0_cm5_q <= "000000101";
                WHEN "00110" => u0_m0_wo0_cm5_q <= "000000100";
                WHEN "00111" => u0_m0_wo0_cm5_q <= "000000101";
                WHEN "01000" => u0_m0_wo0_cm5_q <= "000000111";
                WHEN "01001" => u0_m0_wo0_cm5_q <= "000000110";
                WHEN "01010" => u0_m0_wo0_cm5_q <= "000000100";
                WHEN "01011" => u0_m0_wo0_cm5_q <= "000000011";
                WHEN "01100" => u0_m0_wo0_cm5_q <= "000000001";
                WHEN "01101" => u0_m0_wo0_cm5_q <= "000000000";
                WHEN "01110" => u0_m0_wo0_cm5_q <= "000000000";
                WHEN "01111" => u0_m0_wo0_cm5_q <= "000000000";
                WHEN "10000" => u0_m0_wo0_cm5_q <= "000000000";
                WHEN "10001" => u0_m0_wo0_cm5_q <= "000000010";
                WHEN "10010" => u0_m0_wo0_cm5_q <= "000000001";
                WHEN "10011" => u0_m0_wo0_cm5_q <= "000000001";
                WHEN "10100" => u0_m0_wo0_cm5_q <= "000000001";
                WHEN "10101" => u0_m0_wo0_cm5_q <= "000000010";
                WHEN "10110" => u0_m0_wo0_cm5_q <= "000000100";
                WHEN "10111" => u0_m0_wo0_cm5_q <= "000000101";
                WHEN "11000" => u0_m0_wo0_cm5_q <= "000000101";
                WHEN "11001" => u0_m0_wo0_cm5_q <= "000000110";
                WHEN "11010" => u0_m0_wo0_cm5_q <= "000001001";
                WHEN "11011" => u0_m0_wo0_cm5_q <= "000001011";
                WHEN "11100" => u0_m0_wo0_cm5_q <= "000001011";
                WHEN "11101" => u0_m0_wo0_cm5_q <= "000001010";
                WHEN "11110" => u0_m0_wo0_cm5_q <= "000001010";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm5_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_61(MULT,181)@13 + 2
    u0_m0_wo0_mtree_mult1_61_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm5_q);
    u0_m0_wo0_mtree_mult1_61_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split4_c);
    u0_m0_wo0_mtree_mult1_61_reset <= areset;
    u0_m0_wo0_mtree_mult1_61_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 9,
        lpm_widthb => 12,
        lpm_widthp => 21,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_61_a0,
        datab => u0_m0_wo0_mtree_mult1_61_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_61_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_61_s1
    );
    u0_m0_wo0_mtree_mult1_61_q <= u0_m0_wo0_mtree_mult1_61_s1;

    -- u0_m0_wo0_cm6(LOOKUP,115)@12 + 1
    u0_m0_wo0_cm6_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm6_q <= "000000101";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca66_q) IS
                WHEN "00000" => u0_m0_wo0_cm6_q <= "000000101";
                WHEN "00001" => u0_m0_wo0_cm6_q <= "000000111";
                WHEN "00010" => u0_m0_wo0_cm6_q <= "000000100";
                WHEN "00011" => u0_m0_wo0_cm6_q <= "000000000";
                WHEN "00100" => u0_m0_wo0_cm6_q <= "111111111";
                WHEN "00101" => u0_m0_wo0_cm6_q <= "000000000";
                WHEN "00110" => u0_m0_wo0_cm6_q <= "000000010";
                WHEN "00111" => u0_m0_wo0_cm6_q <= "000000011";
                WHEN "01000" => u0_m0_wo0_cm6_q <= "000000011";
                WHEN "01001" => u0_m0_wo0_cm6_q <= "000000000";
                WHEN "01010" => u0_m0_wo0_cm6_q <= "111111100";
                WHEN "01011" => u0_m0_wo0_cm6_q <= "111111001";
                WHEN "01100" => u0_m0_wo0_cm6_q <= "111111000";
                WHEN "01101" => u0_m0_wo0_cm6_q <= "111111100";
                WHEN "01110" => u0_m0_wo0_cm6_q <= "111111101";
                WHEN "01111" => u0_m0_wo0_cm6_q <= "111111101";
                WHEN "10000" => u0_m0_wo0_cm6_q <= "000000000";
                WHEN "10001" => u0_m0_wo0_cm6_q <= "000000000";
                WHEN "10010" => u0_m0_wo0_cm6_q <= "000000000";
                WHEN "10011" => u0_m0_wo0_cm6_q <= "111111111";
                WHEN "10100" => u0_m0_wo0_cm6_q <= "000000000";
                WHEN "10101" => u0_m0_wo0_cm6_q <= "000000010";
                WHEN "10110" => u0_m0_wo0_cm6_q <= "000000100";
                WHEN "10111" => u0_m0_wo0_cm6_q <= "000000110";
                WHEN "11000" => u0_m0_wo0_cm6_q <= "000000011";
                WHEN "11001" => u0_m0_wo0_cm6_q <= "000000000";
                WHEN "11010" => u0_m0_wo0_cm6_q <= "000000000";
                WHEN "11011" => u0_m0_wo0_cm6_q <= "000000010";
                WHEN "11100" => u0_m0_wo0_cm6_q <= "000000101";
                WHEN "11101" => u0_m0_wo0_cm6_q <= "000000110";
                WHEN "11110" => u0_m0_wo0_cm6_q <= "000000111";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm6_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_60(MULT,182)@13 + 2
    u0_m0_wo0_mtree_mult1_60_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm6_q);
    u0_m0_wo0_mtree_mult1_60_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split4_d);
    u0_m0_wo0_mtree_mult1_60_reset <= areset;
    u0_m0_wo0_mtree_mult1_60_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 9,
        lpm_widthb => 12,
        lpm_widthp => 21,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_60_a0,
        datab => u0_m0_wo0_mtree_mult1_60_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_60_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_60_s1
    );
    u0_m0_wo0_mtree_mult1_60_q <= u0_m0_wo0_mtree_mult1_60_s1;

    -- u0_m0_wo0_mtree_add0_30(ADD,273)@15 + 1
    u0_m0_wo0_mtree_add0_30_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 21 => u0_m0_wo0_mtree_mult1_60_q(20)) & u0_m0_wo0_mtree_mult1_60_q));
    u0_m0_wo0_mtree_add0_30_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 21 => u0_m0_wo0_mtree_mult1_61_q(20)) & u0_m0_wo0_mtree_mult1_61_q));
    u0_m0_wo0_mtree_add0_30_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_30_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_30_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_30_a) + SIGNED(u0_m0_wo0_mtree_add0_30_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_30_q <= u0_m0_wo0_mtree_add0_30_o(21 downto 0);

    -- u0_m0_wo0_mtree_add1_15(ADD,291)@16 + 1
    u0_m0_wo0_mtree_add1_15_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((22 downto 22 => u0_m0_wo0_mtree_add0_30_q(21)) & u0_m0_wo0_mtree_add0_30_q));
    u0_m0_wo0_mtree_add1_15_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((22 downto 22 => u0_m0_wo0_mtree_add0_31_q(21)) & u0_m0_wo0_mtree_add0_31_q));
    u0_m0_wo0_mtree_add1_15_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_15_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_15_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_15_a) + SIGNED(u0_m0_wo0_mtree_add1_15_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_15_q <= u0_m0_wo0_mtree_add1_15_o(22 downto 0);

    -- u0_m0_wo0_wi0_r0_join7(BITJOIN,45)@13
    u0_m0_wo0_wi0_r0_join7_q <= u0_m0_wo0_wi0_r0_split7_c & u0_m0_wo0_wi0_r0_split7_b & u0_m0_wo0_wi0_r0_split4_d;

    -- u0_m0_wo0_wi0_r0_memr7(DUALMEM,47)@13
    u0_m0_wo0_wi0_r0_memr7_ia <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_join7_q);
    u0_m0_wo0_wi0_r0_memr7_aa <= u0_m0_wo0_wi0_r0_wa66_q;
    u0_m0_wo0_wi0_r0_memr7_ab <= u0_m0_wo0_wi0_r0_ra66_resize_b;
    u0_m0_wo0_wi0_r0_memr7_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "DUAL_PORT",
        width_a => 36,
        widthad_a => 6,
        numwords_a => 64,
        width_b => 36,
        widthad_b => 6,
        numwords_b => 64,
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
        wren_a => u0_m0_wo0_wi0_r0_we66_seq_q(0),
        address_b => u0_m0_wo0_wi0_r0_memr7_ab,
        q_b => u0_m0_wo0_wi0_r0_memr7_iq
    );
    u0_m0_wo0_wi0_r0_memr7_q <= u0_m0_wo0_wi0_r0_memr7_iq(35 downto 0);

    -- u0_m0_wo0_wi0_r0_split7(BITSELECT,46)@13
    u0_m0_wo0_wi0_r0_split7_b <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr7_q(11 downto 0));
    u0_m0_wo0_wi0_r0_split7_c <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr7_q(23 downto 12));
    u0_m0_wo0_wi0_r0_split7_d <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr7_q(35 downto 24));

    -- u0_m0_wo0_cm7(LOOKUP,116)@12 + 1
    u0_m0_wo0_cm7_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm7_q <= "111111010";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca66_q) IS
                WHEN "00000" => u0_m0_wo0_cm7_q <= "111111010";
                WHEN "00001" => u0_m0_wo0_cm7_q <= "111111100";
                WHEN "00010" => u0_m0_wo0_cm7_q <= "111110111";
                WHEN "00011" => u0_m0_wo0_cm7_q <= "111110010";
                WHEN "00100" => u0_m0_wo0_cm7_q <= "111110010";
                WHEN "00101" => u0_m0_wo0_cm7_q <= "111110101";
                WHEN "00110" => u0_m0_wo0_cm7_q <= "111111010";
                WHEN "00111" => u0_m0_wo0_cm7_q <= "111111011";
                WHEN "01000" => u0_m0_wo0_cm7_q <= "111111100";
                WHEN "01001" => u0_m0_wo0_cm7_q <= "000000000";
                WHEN "01010" => u0_m0_wo0_cm7_q <= "000000011";
                WHEN "01011" => u0_m0_wo0_cm7_q <= "000000011";
                WHEN "01100" => u0_m0_wo0_cm7_q <= "111111111";
                WHEN "01101" => u0_m0_wo0_cm7_q <= "111111000";
                WHEN "01110" => u0_m0_wo0_cm7_q <= "111110101";
                WHEN "01111" => u0_m0_wo0_cm7_q <= "111111000";
                WHEN "10000" => u0_m0_wo0_cm7_q <= "111111110";
                WHEN "10001" => u0_m0_wo0_cm7_q <= "111111111";
                WHEN "10010" => u0_m0_wo0_cm7_q <= "111111110";
                WHEN "10011" => u0_m0_wo0_cm7_q <= "111111101";
                WHEN "10100" => u0_m0_wo0_cm7_q <= "000000000";
                WHEN "10101" => u0_m0_wo0_cm7_q <= "111111111";
                WHEN "10110" => u0_m0_wo0_cm7_q <= "111111010";
                WHEN "10111" => u0_m0_wo0_cm7_q <= "111110110";
                WHEN "11000" => u0_m0_wo0_cm7_q <= "111111010";
                WHEN "11001" => u0_m0_wo0_cm7_q <= "000000010";
                WHEN "11010" => u0_m0_wo0_cm7_q <= "000000100";
                WHEN "11011" => u0_m0_wo0_cm7_q <= "000000001";
                WHEN "11100" => u0_m0_wo0_cm7_q <= "111111110";
                WHEN "11101" => u0_m0_wo0_cm7_q <= "111111101";
                WHEN "11110" => u0_m0_wo0_cm7_q <= "000000000";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm7_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_59(MULT,183)@13 + 2
    u0_m0_wo0_mtree_mult1_59_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm7_q);
    u0_m0_wo0_mtree_mult1_59_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split7_b);
    u0_m0_wo0_mtree_mult1_59_reset <= areset;
    u0_m0_wo0_mtree_mult1_59_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 9,
        lpm_widthb => 12,
        lpm_widthp => 21,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_59_a0,
        datab => u0_m0_wo0_mtree_mult1_59_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_59_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_59_s1
    );
    u0_m0_wo0_mtree_mult1_59_q <= u0_m0_wo0_mtree_mult1_59_s1;

    -- u0_m0_wo0_cm8(LOOKUP,117)@12 + 1
    u0_m0_wo0_cm8_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm8_q <= "000000000";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca66_q) IS
                WHEN "00000" => u0_m0_wo0_cm8_q <= "000000000";
                WHEN "00001" => u0_m0_wo0_cm8_q <= "111111110";
                WHEN "00010" => u0_m0_wo0_cm8_q <= "111111101";
                WHEN "00011" => u0_m0_wo0_cm8_q <= "111111110";
                WHEN "00100" => u0_m0_wo0_cm8_q <= "000000001";
                WHEN "00101" => u0_m0_wo0_cm8_q <= "000000000";
                WHEN "00110" => u0_m0_wo0_cm8_q <= "111111100";
                WHEN "00111" => u0_m0_wo0_cm8_q <= "111111010";
                WHEN "01000" => u0_m0_wo0_cm8_q <= "111111010";
                WHEN "01001" => u0_m0_wo0_cm8_q <= "111111100";
                WHEN "01010" => u0_m0_wo0_cm8_q <= "111111111";
                WHEN "01011" => u0_m0_wo0_cm8_q <= "111111110";
                WHEN "01100" => u0_m0_wo0_cm8_q <= "111111110";
                WHEN "01101" => u0_m0_wo0_cm8_q <= "000000000";
                WHEN "01110" => u0_m0_wo0_cm8_q <= "000000001";
                WHEN "01111" => u0_m0_wo0_cm8_q <= "000000000";
                WHEN "10000" => u0_m0_wo0_cm8_q <= "111111100";
                WHEN "10001" => u0_m0_wo0_cm8_q <= "111111100";
                WHEN "10010" => u0_m0_wo0_cm8_q <= "111111110";
                WHEN "10011" => u0_m0_wo0_cm8_q <= "111111111";
                WHEN "10100" => u0_m0_wo0_cm8_q <= "111111111";
                WHEN "10101" => u0_m0_wo0_cm8_q <= "111111110";
                WHEN "10110" => u0_m0_wo0_cm8_q <= "111111110";
                WHEN "10111" => u0_m0_wo0_cm8_q <= "000000001";
                WHEN "11000" => u0_m0_wo0_cm8_q <= "000000010";
                WHEN "11001" => u0_m0_wo0_cm8_q <= "000000000";
                WHEN "11010" => u0_m0_wo0_cm8_q <= "000000000";
                WHEN "11011" => u0_m0_wo0_cm8_q <= "000000011";
                WHEN "11100" => u0_m0_wo0_cm8_q <= "000000010";
                WHEN "11101" => u0_m0_wo0_cm8_q <= "111111101";
                WHEN "11110" => u0_m0_wo0_cm8_q <= "111111000";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm8_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_58(MULT,184)@13 + 2
    u0_m0_wo0_mtree_mult1_58_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm8_q);
    u0_m0_wo0_mtree_mult1_58_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split7_c);
    u0_m0_wo0_mtree_mult1_58_reset <= areset;
    u0_m0_wo0_mtree_mult1_58_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 9,
        lpm_widthb => 12,
        lpm_widthp => 21,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_58_a0,
        datab => u0_m0_wo0_mtree_mult1_58_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_58_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_58_s1
    );
    u0_m0_wo0_mtree_mult1_58_q <= u0_m0_wo0_mtree_mult1_58_s1;

    -- u0_m0_wo0_mtree_add0_29(ADD,272)@15 + 1
    u0_m0_wo0_mtree_add0_29_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 21 => u0_m0_wo0_mtree_mult1_58_q(20)) & u0_m0_wo0_mtree_mult1_58_q));
    u0_m0_wo0_mtree_add0_29_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 21 => u0_m0_wo0_mtree_mult1_59_q(20)) & u0_m0_wo0_mtree_mult1_59_q));
    u0_m0_wo0_mtree_add0_29_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_29_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_29_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_29_a) + SIGNED(u0_m0_wo0_mtree_add0_29_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_29_q <= u0_m0_wo0_mtree_add0_29_o(21 downto 0);

    -- u0_m0_wo0_cm9(LOOKUP,118)@12 + 1
    u0_m0_wo0_cm9_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm9_q <= "111110111";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca66_q) IS
                WHEN "00000" => u0_m0_wo0_cm9_q <= "111110111";
                WHEN "00001" => u0_m0_wo0_cm9_q <= "111110101";
                WHEN "00010" => u0_m0_wo0_cm9_q <= "111111000";
                WHEN "00011" => u0_m0_wo0_cm9_q <= "111111100";
                WHEN "00100" => u0_m0_wo0_cm9_q <= "000000000";
                WHEN "00101" => u0_m0_wo0_cm9_q <= "000000011";
                WHEN "00110" => u0_m0_wo0_cm9_q <= "000000100";
                WHEN "00111" => u0_m0_wo0_cm9_q <= "000000010";
                WHEN "01000" => u0_m0_wo0_cm9_q <= "000000001";
                WHEN "01001" => u0_m0_wo0_cm9_q <= "000000011";
                WHEN "01010" => u0_m0_wo0_cm9_q <= "000000000";
                WHEN "01011" => u0_m0_wo0_cm9_q <= "111111010";
                WHEN "01100" => u0_m0_wo0_cm9_q <= "111111000";
                WHEN "01101" => u0_m0_wo0_cm9_q <= "111111101";
                WHEN "01110" => u0_m0_wo0_cm9_q <= "111111011";
                WHEN "01111" => u0_m0_wo0_cm9_q <= "111111001";
                WHEN "10000" => u0_m0_wo0_cm9_q <= "111111101";
                WHEN "10001" => u0_m0_wo0_cm9_q <= "111111110";
                WHEN "10010" => u0_m0_wo0_cm9_q <= "111111111";
                WHEN "10011" => u0_m0_wo0_cm9_q <= "000000000";
                WHEN "10100" => u0_m0_wo0_cm9_q <= "000000001";
                WHEN "10101" => u0_m0_wo0_cm9_q <= "000000001";
                WHEN "10110" => u0_m0_wo0_cm9_q <= "000000010";
                WHEN "10111" => u0_m0_wo0_cm9_q <= "000000100";
                WHEN "11000" => u0_m0_wo0_cm9_q <= "000000100";
                WHEN "11001" => u0_m0_wo0_cm9_q <= "000000010";
                WHEN "11010" => u0_m0_wo0_cm9_q <= "000000001";
                WHEN "11011" => u0_m0_wo0_cm9_q <= "111111101";
                WHEN "11100" => u0_m0_wo0_cm9_q <= "111111100";
                WHEN "11101" => u0_m0_wo0_cm9_q <= "000000000";
                WHEN "11110" => u0_m0_wo0_cm9_q <= "000000010";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm9_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_57(MULT,185)@13 + 2
    u0_m0_wo0_mtree_mult1_57_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm9_q);
    u0_m0_wo0_mtree_mult1_57_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split7_d);
    u0_m0_wo0_mtree_mult1_57_reset <= areset;
    u0_m0_wo0_mtree_mult1_57_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 9,
        lpm_widthb => 12,
        lpm_widthp => 21,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_57_a0,
        datab => u0_m0_wo0_mtree_mult1_57_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_57_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_57_s1
    );
    u0_m0_wo0_mtree_mult1_57_q <= u0_m0_wo0_mtree_mult1_57_s1;

    -- u0_m0_wo0_wi0_r0_join10(BITJOIN,48)@13
    u0_m0_wo0_wi0_r0_join10_q <= u0_m0_wo0_wi0_r0_split10_c & u0_m0_wo0_wi0_r0_split10_b & u0_m0_wo0_wi0_r0_split7_d;

    -- u0_m0_wo0_wi0_r0_memr10(DUALMEM,50)@13
    u0_m0_wo0_wi0_r0_memr10_ia <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_join10_q);
    u0_m0_wo0_wi0_r0_memr10_aa <= u0_m0_wo0_wi0_r0_wa66_q;
    u0_m0_wo0_wi0_r0_memr10_ab <= u0_m0_wo0_wi0_r0_ra66_resize_b;
    u0_m0_wo0_wi0_r0_memr10_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "DUAL_PORT",
        width_a => 36,
        widthad_a => 6,
        numwords_a => 64,
        width_b => 36,
        widthad_b => 6,
        numwords_b => 64,
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
        wren_a => u0_m0_wo0_wi0_r0_we66_seq_q(0),
        address_b => u0_m0_wo0_wi0_r0_memr10_ab,
        q_b => u0_m0_wo0_wi0_r0_memr10_iq
    );
    u0_m0_wo0_wi0_r0_memr10_q <= u0_m0_wo0_wi0_r0_memr10_iq(35 downto 0);

    -- u0_m0_wo0_wi0_r0_split10(BITSELECT,49)@13
    u0_m0_wo0_wi0_r0_split10_b <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr10_q(11 downto 0));
    u0_m0_wo0_wi0_r0_split10_c <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr10_q(23 downto 12));
    u0_m0_wo0_wi0_r0_split10_d <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr10_q(35 downto 24));

    -- u0_m0_wo0_cm10(LOOKUP,119)@12 + 1
    u0_m0_wo0_cm10_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm10_q <= "111110001";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca66_q) IS
                WHEN "00000" => u0_m0_wo0_cm10_q <= "111110001";
                WHEN "00001" => u0_m0_wo0_cm10_q <= "111101110";
                WHEN "00010" => u0_m0_wo0_cm10_q <= "111110101";
                WHEN "00011" => u0_m0_wo0_cm10_q <= "111111110";
                WHEN "00100" => u0_m0_wo0_cm10_q <= "000000000";
                WHEN "00101" => u0_m0_wo0_cm10_q <= "000000000";
                WHEN "00110" => u0_m0_wo0_cm10_q <= "000000010";
                WHEN "00111" => u0_m0_wo0_cm10_q <= "000000001";
                WHEN "01000" => u0_m0_wo0_cm10_q <= "111111110";
                WHEN "01001" => u0_m0_wo0_cm10_q <= "111111011";
                WHEN "01010" => u0_m0_wo0_cm10_q <= "111111111";
                WHEN "01011" => u0_m0_wo0_cm10_q <= "111111111";
                WHEN "01100" => u0_m0_wo0_cm10_q <= "111111011";
                WHEN "01101" => u0_m0_wo0_cm10_q <= "111111100";
                WHEN "01110" => u0_m0_wo0_cm10_q <= "111111110";
                WHEN "01111" => u0_m0_wo0_cm10_q <= "111111101";
                WHEN "10000" => u0_m0_wo0_cm10_q <= "111111101";
                WHEN "10001" => u0_m0_wo0_cm10_q <= "000000000";
                WHEN "10010" => u0_m0_wo0_cm10_q <= "000000000";
                WHEN "10011" => u0_m0_wo0_cm10_q <= "000000000";
                WHEN "10100" => u0_m0_wo0_cm10_q <= "000000010";
                WHEN "10101" => u0_m0_wo0_cm10_q <= "000001000";
                WHEN "10110" => u0_m0_wo0_cm10_q <= "000001011";
                WHEN "10111" => u0_m0_wo0_cm10_q <= "000000110";
                WHEN "11000" => u0_m0_wo0_cm10_q <= "000000011";
                WHEN "11001" => u0_m0_wo0_cm10_q <= "000000110";
                WHEN "11010" => u0_m0_wo0_cm10_q <= "000001001";
                WHEN "11011" => u0_m0_wo0_cm10_q <= "000001001";
                WHEN "11100" => u0_m0_wo0_cm10_q <= "000000100";
                WHEN "11101" => u0_m0_wo0_cm10_q <= "000000000";
                WHEN "11110" => u0_m0_wo0_cm10_q <= "111111101";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm10_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_56(MULT,186)@13 + 2
    u0_m0_wo0_mtree_mult1_56_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm10_q);
    u0_m0_wo0_mtree_mult1_56_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split10_b);
    u0_m0_wo0_mtree_mult1_56_reset <= areset;
    u0_m0_wo0_mtree_mult1_56_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 9,
        lpm_widthb => 12,
        lpm_widthp => 21,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_56_a0,
        datab => u0_m0_wo0_mtree_mult1_56_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_56_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_56_s1
    );
    u0_m0_wo0_mtree_mult1_56_q <= u0_m0_wo0_mtree_mult1_56_s1;

    -- u0_m0_wo0_mtree_add0_28(ADD,271)@15 + 1
    u0_m0_wo0_mtree_add0_28_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 21 => u0_m0_wo0_mtree_mult1_56_q(20)) & u0_m0_wo0_mtree_mult1_56_q));
    u0_m0_wo0_mtree_add0_28_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 21 => u0_m0_wo0_mtree_mult1_57_q(20)) & u0_m0_wo0_mtree_mult1_57_q));
    u0_m0_wo0_mtree_add0_28_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_28_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_28_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_28_a) + SIGNED(u0_m0_wo0_mtree_add0_28_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_28_q <= u0_m0_wo0_mtree_add0_28_o(21 downto 0);

    -- u0_m0_wo0_mtree_add1_14(ADD,290)@16 + 1
    u0_m0_wo0_mtree_add1_14_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((22 downto 22 => u0_m0_wo0_mtree_add0_28_q(21)) & u0_m0_wo0_mtree_add0_28_q));
    u0_m0_wo0_mtree_add1_14_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((22 downto 22 => u0_m0_wo0_mtree_add0_29_q(21)) & u0_m0_wo0_mtree_add0_29_q));
    u0_m0_wo0_mtree_add1_14_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_14_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_14_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_14_a) + SIGNED(u0_m0_wo0_mtree_add1_14_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_14_q <= u0_m0_wo0_mtree_add1_14_o(22 downto 0);

    -- u0_m0_wo0_mtree_add2_7(ADD,300)@17 + 1
    u0_m0_wo0_mtree_add2_7_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((23 downto 23 => u0_m0_wo0_mtree_add1_14_q(22)) & u0_m0_wo0_mtree_add1_14_q));
    u0_m0_wo0_mtree_add2_7_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((23 downto 23 => u0_m0_wo0_mtree_add1_15_q(22)) & u0_m0_wo0_mtree_add1_15_q));
    u0_m0_wo0_mtree_add2_7_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add2_7_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add2_7_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add2_7_a) + SIGNED(u0_m0_wo0_mtree_add2_7_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add2_7_q <= u0_m0_wo0_mtree_add2_7_o(23 downto 0);

    -- u0_m0_wo0_cm11(LOOKUP,120)@12 + 1
    u0_m0_wo0_cm11_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm11_q <= "111100000";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca66_q) IS
                WHEN "00000" => u0_m0_wo0_cm11_q <= "111100000";
                WHEN "00001" => u0_m0_wo0_cm11_q <= "111101101";
                WHEN "00010" => u0_m0_wo0_cm11_q <= "000001001";
                WHEN "00011" => u0_m0_wo0_cm11_q <= "000011110";
                WHEN "00100" => u0_m0_wo0_cm11_q <= "000100101";
                WHEN "00101" => u0_m0_wo0_cm11_q <= "000011000";
                WHEN "00110" => u0_m0_wo0_cm11_q <= "000000110";
                WHEN "00111" => u0_m0_wo0_cm11_q <= "111101110";
                WHEN "01000" => u0_m0_wo0_cm11_q <= "111010011";
                WHEN "01001" => u0_m0_wo0_cm11_q <= "111010001";
                WHEN "01010" => u0_m0_wo0_cm11_q <= "111101011";
                WHEN "01011" => u0_m0_wo0_cm11_q <= "000001000";
                WHEN "01100" => u0_m0_wo0_cm11_q <= "000001101";
                WHEN "01101" => u0_m0_wo0_cm11_q <= "000000110";
                WHEN "01110" => u0_m0_wo0_cm11_q <= "000000100";
                WHEN "01111" => u0_m0_wo0_cm11_q <= "000001001";
                WHEN "10000" => u0_m0_wo0_cm11_q <= "000001000";
                WHEN "10001" => u0_m0_wo0_cm11_q <= "000000010";
                WHEN "10010" => u0_m0_wo0_cm11_q <= "000000000";
                WHEN "10011" => u0_m0_wo0_cm11_q <= "111111100";
                WHEN "10100" => u0_m0_wo0_cm11_q <= "111111000";
                WHEN "10101" => u0_m0_wo0_cm11_q <= "111110110";
                WHEN "10110" => u0_m0_wo0_cm11_q <= "111110011";
                WHEN "10111" => u0_m0_wo0_cm11_q <= "111110010";
                WHEN "11000" => u0_m0_wo0_cm11_q <= "111110101";
                WHEN "11001" => u0_m0_wo0_cm11_q <= "111111100";
                WHEN "11010" => u0_m0_wo0_cm11_q <= "000000101";
                WHEN "11011" => u0_m0_wo0_cm11_q <= "000001101";
                WHEN "11100" => u0_m0_wo0_cm11_q <= "000001111";
                WHEN "11101" => u0_m0_wo0_cm11_q <= "000000111";
                WHEN "11110" => u0_m0_wo0_cm11_q <= "111111010";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm11_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_55(MULT,187)@13 + 2
    u0_m0_wo0_mtree_mult1_55_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm11_q);
    u0_m0_wo0_mtree_mult1_55_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split10_c);
    u0_m0_wo0_mtree_mult1_55_reset <= areset;
    u0_m0_wo0_mtree_mult1_55_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 9,
        lpm_widthb => 12,
        lpm_widthp => 21,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_55_a0,
        datab => u0_m0_wo0_mtree_mult1_55_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_55_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_55_s1
    );
    u0_m0_wo0_mtree_mult1_55_q <= u0_m0_wo0_mtree_mult1_55_s1;

    -- u0_m0_wo0_cm12(LOOKUP,121)@12 + 1
    u0_m0_wo0_cm12_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm12_q <= "111101011";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca66_q) IS
                WHEN "00000" => u0_m0_wo0_cm12_q <= "111101011";
                WHEN "00001" => u0_m0_wo0_cm12_q <= "111110001";
                WHEN "00010" => u0_m0_wo0_cm12_q <= "111110001";
                WHEN "00011" => u0_m0_wo0_cm12_q <= "111101100";
                WHEN "00100" => u0_m0_wo0_cm12_q <= "111110011";
                WHEN "00101" => u0_m0_wo0_cm12_q <= "000000011";
                WHEN "00110" => u0_m0_wo0_cm12_q <= "000001011";
                WHEN "00111" => u0_m0_wo0_cm12_q <= "000000001";
                WHEN "01000" => u0_m0_wo0_cm12_q <= "111111000";
                WHEN "01001" => u0_m0_wo0_cm12_q <= "111110111";
                WHEN "01010" => u0_m0_wo0_cm12_q <= "111111010";
                WHEN "01011" => u0_m0_wo0_cm12_q <= "111111010";
                WHEN "01100" => u0_m0_wo0_cm12_q <= "000000000";
                WHEN "01101" => u0_m0_wo0_cm12_q <= "000000100";
                WHEN "01110" => u0_m0_wo0_cm12_q <= "111111010";
                WHEN "01111" => u0_m0_wo0_cm12_q <= "111110000";
                WHEN "10000" => u0_m0_wo0_cm12_q <= "111101111";
                WHEN "10001" => u0_m0_wo0_cm12_q <= "111110101";
                WHEN "10010" => u0_m0_wo0_cm12_q <= "000000000";
                WHEN "10011" => u0_m0_wo0_cm12_q <= "000000110";
                WHEN "10100" => u0_m0_wo0_cm12_q <= "000001110";
                WHEN "10101" => u0_m0_wo0_cm12_q <= "000011111";
                WHEN "10110" => u0_m0_wo0_cm12_q <= "000100101";
                WHEN "10111" => u0_m0_wo0_cm12_q <= "000001101";
                WHEN "11000" => u0_m0_wo0_cm12_q <= "111110100";
                WHEN "11001" => u0_m0_wo0_cm12_q <= "111101111";
                WHEN "11010" => u0_m0_wo0_cm12_q <= "111101101";
                WHEN "11011" => u0_m0_wo0_cm12_q <= "111101000";
                WHEN "11100" => u0_m0_wo0_cm12_q <= "111101110";
                WHEN "11101" => u0_m0_wo0_cm12_q <= "111110001";
                WHEN "11110" => u0_m0_wo0_cm12_q <= "111101001";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm12_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_54(MULT,188)@13 + 2
    u0_m0_wo0_mtree_mult1_54_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm12_q);
    u0_m0_wo0_mtree_mult1_54_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split10_d);
    u0_m0_wo0_mtree_mult1_54_reset <= areset;
    u0_m0_wo0_mtree_mult1_54_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 9,
        lpm_widthb => 12,
        lpm_widthp => 21,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_54_a0,
        datab => u0_m0_wo0_mtree_mult1_54_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_54_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_54_s1
    );
    u0_m0_wo0_mtree_mult1_54_q <= u0_m0_wo0_mtree_mult1_54_s1;

    -- u0_m0_wo0_mtree_add0_27(ADD,270)@15 + 1
    u0_m0_wo0_mtree_add0_27_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 21 => u0_m0_wo0_mtree_mult1_54_q(20)) & u0_m0_wo0_mtree_mult1_54_q));
    u0_m0_wo0_mtree_add0_27_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 21 => u0_m0_wo0_mtree_mult1_55_q(20)) & u0_m0_wo0_mtree_mult1_55_q));
    u0_m0_wo0_mtree_add0_27_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_27_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_27_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_27_a) + SIGNED(u0_m0_wo0_mtree_add0_27_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_27_q <= u0_m0_wo0_mtree_add0_27_o(21 downto 0);

    -- u0_m0_wo0_wi0_r0_join13(BITJOIN,51)@13
    u0_m0_wo0_wi0_r0_join13_q <= u0_m0_wo0_wi0_r0_split13_c & u0_m0_wo0_wi0_r0_split13_b & u0_m0_wo0_wi0_r0_split10_d;

    -- u0_m0_wo0_wi0_r0_memr13(DUALMEM,53)@13
    u0_m0_wo0_wi0_r0_memr13_ia <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_join13_q);
    u0_m0_wo0_wi0_r0_memr13_aa <= u0_m0_wo0_wi0_r0_wa66_q;
    u0_m0_wo0_wi0_r0_memr13_ab <= u0_m0_wo0_wi0_r0_ra66_resize_b;
    u0_m0_wo0_wi0_r0_memr13_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "DUAL_PORT",
        width_a => 36,
        widthad_a => 6,
        numwords_a => 64,
        width_b => 36,
        widthad_b => 6,
        numwords_b => 64,
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
        wren_a => u0_m0_wo0_wi0_r0_we66_seq_q(0),
        address_b => u0_m0_wo0_wi0_r0_memr13_ab,
        q_b => u0_m0_wo0_wi0_r0_memr13_iq
    );
    u0_m0_wo0_wi0_r0_memr13_q <= u0_m0_wo0_wi0_r0_memr13_iq(35 downto 0);

    -- u0_m0_wo0_wi0_r0_split13(BITSELECT,52)@13
    u0_m0_wo0_wi0_r0_split13_b <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr13_q(11 downto 0));
    u0_m0_wo0_wi0_r0_split13_c <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr13_q(23 downto 12));
    u0_m0_wo0_wi0_r0_split13_d <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr13_q(35 downto 24));

    -- u0_m0_wo0_cm13(LOOKUP,122)@12 + 1
    u0_m0_wo0_cm13_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm13_q <= "010110110";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca66_q) IS
                WHEN "00000" => u0_m0_wo0_cm13_q <= "010110110";
                WHEN "00001" => u0_m0_wo0_cm13_q <= "010100000";
                WHEN "00010" => u0_m0_wo0_cm13_q <= "001000011";
                WHEN "00011" => u0_m0_wo0_cm13_q <= "110111111";
                WHEN "00100" => u0_m0_wo0_cm13_q <= "110001100";
                WHEN "00101" => u0_m0_wo0_cm13_q <= "111011010";
                WHEN "00110" => u0_m0_wo0_cm13_q <= "111101110";
                WHEN "00111" => u0_m0_wo0_cm13_q <= "111000010";
                WHEN "01000" => u0_m0_wo0_cm13_q <= "110101110";
                WHEN "01001" => u0_m0_wo0_cm13_q <= "110100100";
                WHEN "01010" => u0_m0_wo0_cm13_q <= "110101001";
                WHEN "01011" => u0_m0_wo0_cm13_q <= "111001000";
                WHEN "01100" => u0_m0_wo0_cm13_q <= "111100101";
                WHEN "01101" => u0_m0_wo0_cm13_q <= "111101111";
                WHEN "01110" => u0_m0_wo0_cm13_q <= "111101101";
                WHEN "01111" => u0_m0_wo0_cm13_q <= "111100111";
                WHEN "10000" => u0_m0_wo0_cm13_q <= "111100010";
                WHEN "10001" => u0_m0_wo0_cm13_q <= "111010111";
                WHEN "10010" => u0_m0_wo0_cm13_q <= "110110111";
                WHEN "10011" => u0_m0_wo0_cm13_q <= "110011010";
                WHEN "10100" => u0_m0_wo0_cm13_q <= "110011011";
                WHEN "10101" => u0_m0_wo0_cm13_q <= "110111111";
                WHEN "10110" => u0_m0_wo0_cm13_q <= "111101110";
                WHEN "10111" => u0_m0_wo0_cm13_q <= "111111011";
                WHEN "11000" => u0_m0_wo0_cm13_q <= "111110001";
                WHEN "11001" => u0_m0_wo0_cm13_q <= "111100100";
                WHEN "11010" => u0_m0_wo0_cm13_q <= "111011111";
                WHEN "11011" => u0_m0_wo0_cm13_q <= "111101010";
                WHEN "11100" => u0_m0_wo0_cm13_q <= "111110111";
                WHEN "11101" => u0_m0_wo0_cm13_q <= "111110101";
                WHEN "11110" => u0_m0_wo0_cm13_q <= "111101011";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm13_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_53(MULT,189)@13 + 2
    u0_m0_wo0_mtree_mult1_53_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm13_q);
    u0_m0_wo0_mtree_mult1_53_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split13_b);
    u0_m0_wo0_mtree_mult1_53_reset <= areset;
    u0_m0_wo0_mtree_mult1_53_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 9,
        lpm_widthb => 12,
        lpm_widthp => 21,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_53_a0,
        datab => u0_m0_wo0_mtree_mult1_53_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_53_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_53_s1
    );
    u0_m0_wo0_mtree_mult1_53_q <= u0_m0_wo0_mtree_mult1_53_s1;

    -- u0_m0_wo0_cm14(LOOKUP,123)@12 + 1
    u0_m0_wo0_cm14_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm14_q <= "000001000";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca66_q) IS
                WHEN "00000" => u0_m0_wo0_cm14_q <= "000001000";
                WHEN "00001" => u0_m0_wo0_cm14_q <= "000101000";
                WHEN "00010" => u0_m0_wo0_cm14_q <= "000111111";
                WHEN "00011" => u0_m0_wo0_cm14_q <= "001000000";
                WHEN "00100" => u0_m0_wo0_cm14_q <= "001000010";
                WHEN "00101" => u0_m0_wo0_cm14_q <= "001000110";
                WHEN "00110" => u0_m0_wo0_cm14_q <= "000101010";
                WHEN "00111" => u0_m0_wo0_cm14_q <= "111111010";
                WHEN "01000" => u0_m0_wo0_cm14_q <= "111110011";
                WHEN "01001" => u0_m0_wo0_cm14_q <= "000011010";
                WHEN "01010" => u0_m0_wo0_cm14_q <= "000011100";
                WHEN "01011" => u0_m0_wo0_cm14_q <= "000001001";
                WHEN "01100" => u0_m0_wo0_cm14_q <= "000000101";
                WHEN "01101" => u0_m0_wo0_cm14_q <= "000010010";
                WHEN "01110" => u0_m0_wo0_cm14_q <= "000101111";
                WHEN "01111" => u0_m0_wo0_cm14_q <= "001001010";
                WHEN "10000" => u0_m0_wo0_cm14_q <= "001011000";
                WHEN "10001" => u0_m0_wo0_cm14_q <= "001011101";
                WHEN "10010" => u0_m0_wo0_cm14_q <= "001010111";
                WHEN "10011" => u0_m0_wo0_cm14_q <= "001000110";
                WHEN "10100" => u0_m0_wo0_cm14_q <= "001001001";
                WHEN "10101" => u0_m0_wo0_cm14_q <= "001010101";
                WHEN "10110" => u0_m0_wo0_cm14_q <= "001000000";
                WHEN "10111" => u0_m0_wo0_cm14_q <= "000001011";
                WHEN "11000" => u0_m0_wo0_cm14_q <= "111011010";
                WHEN "11001" => u0_m0_wo0_cm14_q <= "110111111";
                WHEN "11010" => u0_m0_wo0_cm14_q <= "110111110";
                WHEN "11011" => u0_m0_wo0_cm14_q <= "111100110";
                WHEN "11100" => u0_m0_wo0_cm14_q <= "000100001";
                WHEN "11101" => u0_m0_wo0_cm14_q <= "001111011";
                WHEN "11110" => u0_m0_wo0_cm14_q <= "010101100";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm14_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_52(MULT,190)@13 + 2
    u0_m0_wo0_mtree_mult1_52_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm14_q);
    u0_m0_wo0_mtree_mult1_52_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split13_c);
    u0_m0_wo0_mtree_mult1_52_reset <= areset;
    u0_m0_wo0_mtree_mult1_52_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 9,
        lpm_widthb => 12,
        lpm_widthp => 21,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_52_a0,
        datab => u0_m0_wo0_mtree_mult1_52_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_52_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_52_s1
    );
    u0_m0_wo0_mtree_mult1_52_q <= u0_m0_wo0_mtree_mult1_52_s1;

    -- u0_m0_wo0_mtree_add0_26(ADD,269)@15 + 1
    u0_m0_wo0_mtree_add0_26_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 21 => u0_m0_wo0_mtree_mult1_52_q(20)) & u0_m0_wo0_mtree_mult1_52_q));
    u0_m0_wo0_mtree_add0_26_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 21 => u0_m0_wo0_mtree_mult1_53_q(20)) & u0_m0_wo0_mtree_mult1_53_q));
    u0_m0_wo0_mtree_add0_26_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_26_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_26_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_26_a) + SIGNED(u0_m0_wo0_mtree_add0_26_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_26_q <= u0_m0_wo0_mtree_add0_26_o(21 downto 0);

    -- u0_m0_wo0_mtree_add1_13(ADD,289)@16 + 1
    u0_m0_wo0_mtree_add1_13_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((22 downto 22 => u0_m0_wo0_mtree_add0_26_q(21)) & u0_m0_wo0_mtree_add0_26_q));
    u0_m0_wo0_mtree_add1_13_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((22 downto 22 => u0_m0_wo0_mtree_add0_27_q(21)) & u0_m0_wo0_mtree_add0_27_q));
    u0_m0_wo0_mtree_add1_13_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_13_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_13_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_13_a) + SIGNED(u0_m0_wo0_mtree_add1_13_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_13_q <= u0_m0_wo0_mtree_add1_13_o(22 downto 0);

    -- u0_m0_wo0_cm15(LOOKUP,124)@12 + 1
    u0_m0_wo0_cm15_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm15_q <= "000000011";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca66_q) IS
                WHEN "00000" => u0_m0_wo0_cm15_q <= "000000011";
                WHEN "00001" => u0_m0_wo0_cm15_q <= "000000000";
                WHEN "00010" => u0_m0_wo0_cm15_q <= "000001111";
                WHEN "00011" => u0_m0_wo0_cm15_q <= "000100010";
                WHEN "00100" => u0_m0_wo0_cm15_q <= "000111100";
                WHEN "00101" => u0_m0_wo0_cm15_q <= "001001011";
                WHEN "00110" => u0_m0_wo0_cm15_q <= "000111010";
                WHEN "00111" => u0_m0_wo0_cm15_q <= "000010111";
                WHEN "01000" => u0_m0_wo0_cm15_q <= "000000001";
                WHEN "01001" => u0_m0_wo0_cm15_q <= "000000001";
                WHEN "01010" => u0_m0_wo0_cm15_q <= "111111101";
                WHEN "01011" => u0_m0_wo0_cm15_q <= "111101010";
                WHEN "01100" => u0_m0_wo0_cm15_q <= "111011110";
                WHEN "01101" => u0_m0_wo0_cm15_q <= "111010100";
                WHEN "01110" => u0_m0_wo0_cm15_q <= "111010011";
                WHEN "01111" => u0_m0_wo0_cm15_q <= "111100101";
                WHEN "10000" => u0_m0_wo0_cm15_q <= "000000001";
                WHEN "10001" => u0_m0_wo0_cm15_q <= "000011101";
                WHEN "10010" => u0_m0_wo0_cm15_q <= "000111010";
                WHEN "10011" => u0_m0_wo0_cm15_q <= "001010011";
                WHEN "10100" => u0_m0_wo0_cm15_q <= "001011010";
                WHEN "10101" => u0_m0_wo0_cm15_q <= "001000010";
                WHEN "10110" => u0_m0_wo0_cm15_q <= "000100101";
                WHEN "10111" => u0_m0_wo0_cm15_q <= "000100010";
                WHEN "11000" => u0_m0_wo0_cm15_q <= "000011001";
                WHEN "11001" => u0_m0_wo0_cm15_q <= "111111101";
                WHEN "11010" => u0_m0_wo0_cm15_q <= "111011000";
                WHEN "11011" => u0_m0_wo0_cm15_q <= "111000000";
                WHEN "11100" => u0_m0_wo0_cm15_q <= "111001001";
                WHEN "11101" => u0_m0_wo0_cm15_q <= "111011110";
                WHEN "11110" => u0_m0_wo0_cm15_q <= "111110101";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm15_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_51(MULT,191)@13 + 2
    u0_m0_wo0_mtree_mult1_51_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm15_q);
    u0_m0_wo0_mtree_mult1_51_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split13_d);
    u0_m0_wo0_mtree_mult1_51_reset <= areset;
    u0_m0_wo0_mtree_mult1_51_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 9,
        lpm_widthb => 12,
        lpm_widthp => 21,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_51_a0,
        datab => u0_m0_wo0_mtree_mult1_51_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_51_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_51_s1
    );
    u0_m0_wo0_mtree_mult1_51_q <= u0_m0_wo0_mtree_mult1_51_s1;

    -- u0_m0_wo0_wi0_r0_join16(BITJOIN,54)@13
    u0_m0_wo0_wi0_r0_join16_q <= u0_m0_wo0_wi0_r0_split16_c & u0_m0_wo0_wi0_r0_split16_b & u0_m0_wo0_wi0_r0_split13_d;

    -- u0_m0_wo0_wi0_r0_memr16(DUALMEM,56)@13
    u0_m0_wo0_wi0_r0_memr16_ia <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_join16_q);
    u0_m0_wo0_wi0_r0_memr16_aa <= u0_m0_wo0_wi0_r0_wa66_q;
    u0_m0_wo0_wi0_r0_memr16_ab <= u0_m0_wo0_wi0_r0_ra66_resize_b;
    u0_m0_wo0_wi0_r0_memr16_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "DUAL_PORT",
        width_a => 36,
        widthad_a => 6,
        numwords_a => 64,
        width_b => 36,
        widthad_b => 6,
        numwords_b => 64,
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
        wren_a => u0_m0_wo0_wi0_r0_we66_seq_q(0),
        address_b => u0_m0_wo0_wi0_r0_memr16_ab,
        q_b => u0_m0_wo0_wi0_r0_memr16_iq
    );
    u0_m0_wo0_wi0_r0_memr16_q <= u0_m0_wo0_wi0_r0_memr16_iq(35 downto 0);

    -- u0_m0_wo0_wi0_r0_split16(BITSELECT,55)@13
    u0_m0_wo0_wi0_r0_split16_b <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr16_q(11 downto 0));
    u0_m0_wo0_wi0_r0_split16_c <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr16_q(23 downto 12));
    u0_m0_wo0_wi0_r0_split16_d <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr16_q(35 downto 24));

    -- u0_m0_wo0_cm16(LOOKUP,125)@12 + 1
    u0_m0_wo0_cm16_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm16_q <= "000110000";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca66_q) IS
                WHEN "00000" => u0_m0_wo0_cm16_q <= "000110000";
                WHEN "00001" => u0_m0_wo0_cm16_q <= "000111001";
                WHEN "00010" => u0_m0_wo0_cm16_q <= "000101100";
                WHEN "00011" => u0_m0_wo0_cm16_q <= "000010100";
                WHEN "00100" => u0_m0_wo0_cm16_q <= "000001000";
                WHEN "00101" => u0_m0_wo0_cm16_q <= "000000100";
                WHEN "00110" => u0_m0_wo0_cm16_q <= "000010000";
                WHEN "00111" => u0_m0_wo0_cm16_q <= "000101001";
                WHEN "01000" => u0_m0_wo0_cm16_q <= "000111010";
                WHEN "01001" => u0_m0_wo0_cm16_q <= "000101101";
                WHEN "01010" => u0_m0_wo0_cm16_q <= "000010010";
                WHEN "01011" => u0_m0_wo0_cm16_q <= "000010011";
                WHEN "01100" => u0_m0_wo0_cm16_q <= "000011010";
                WHEN "01101" => u0_m0_wo0_cm16_q <= "000001111";
                WHEN "01110" => u0_m0_wo0_cm16_q <= "000000111";
                WHEN "01111" => u0_m0_wo0_cm16_q <= "000001010";
                WHEN "10000" => u0_m0_wo0_cm16_q <= "000001101";
                WHEN "10001" => u0_m0_wo0_cm16_q <= "000000111";
                WHEN "10010" => u0_m0_wo0_cm16_q <= "000000010";
                WHEN "10011" => u0_m0_wo0_cm16_q <= "111111010";
                WHEN "10100" => u0_m0_wo0_cm16_q <= "111110001";
                WHEN "10101" => u0_m0_wo0_cm16_q <= "111110100";
                WHEN "10110" => u0_m0_wo0_cm16_q <= "111110001";
                WHEN "10111" => u0_m0_wo0_cm16_q <= "111011110";
                WHEN "11000" => u0_m0_wo0_cm16_q <= "111001100";
                WHEN "11001" => u0_m0_wo0_cm16_q <= "111011101";
                WHEN "11010" => u0_m0_wo0_cm16_q <= "000001001";
                WHEN "11011" => u0_m0_wo0_cm16_q <= "000110100";
                WHEN "11100" => u0_m0_wo0_cm16_q <= "001000011";
                WHEN "11101" => u0_m0_wo0_cm16_q <= "000110101";
                WHEN "11110" => u0_m0_wo0_cm16_q <= "000011101";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm16_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_50(MULT,192)@13 + 2
    u0_m0_wo0_mtree_mult1_50_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm16_q);
    u0_m0_wo0_mtree_mult1_50_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split16_b);
    u0_m0_wo0_mtree_mult1_50_reset <= areset;
    u0_m0_wo0_mtree_mult1_50_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 9,
        lpm_widthb => 12,
        lpm_widthp => 21,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_50_a0,
        datab => u0_m0_wo0_mtree_mult1_50_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_50_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_50_s1
    );
    u0_m0_wo0_mtree_mult1_50_q <= u0_m0_wo0_mtree_mult1_50_s1;

    -- u0_m0_wo0_mtree_add0_25(ADD,268)@15 + 1
    u0_m0_wo0_mtree_add0_25_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 21 => u0_m0_wo0_mtree_mult1_50_q(20)) & u0_m0_wo0_mtree_mult1_50_q));
    u0_m0_wo0_mtree_add0_25_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 21 => u0_m0_wo0_mtree_mult1_51_q(20)) & u0_m0_wo0_mtree_mult1_51_q));
    u0_m0_wo0_mtree_add0_25_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_25_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_25_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_25_a) + SIGNED(u0_m0_wo0_mtree_add0_25_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_25_q <= u0_m0_wo0_mtree_add0_25_o(21 downto 0);

    -- u0_m0_wo0_cm17(LOOKUP,126)@12 + 1
    u0_m0_wo0_cm17_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm17_q <= "111100001";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca66_q) IS
                WHEN "00000" => u0_m0_wo0_cm17_q <= "111100001";
                WHEN "00001" => u0_m0_wo0_cm17_q <= "111101100";
                WHEN "00010" => u0_m0_wo0_cm17_q <= "111101100";
                WHEN "00011" => u0_m0_wo0_cm17_q <= "111011011";
                WHEN "00100" => u0_m0_wo0_cm17_q <= "111011100";
                WHEN "00101" => u0_m0_wo0_cm17_q <= "111111000";
                WHEN "00110" => u0_m0_wo0_cm17_q <= "000001000";
                WHEN "00111" => u0_m0_wo0_cm17_q <= "000000001";
                WHEN "01000" => u0_m0_wo0_cm17_q <= "111111011";
                WHEN "01001" => u0_m0_wo0_cm17_q <= "111111001";
                WHEN "01010" => u0_m0_wo0_cm17_q <= "111110010";
                WHEN "01011" => u0_m0_wo0_cm17_q <= "111100110";
                WHEN "01100" => u0_m0_wo0_cm17_q <= "111011100";
                WHEN "01101" => u0_m0_wo0_cm17_q <= "111100010";
                WHEN "01110" => u0_m0_wo0_cm17_q <= "111110000";
                WHEN "01111" => u0_m0_wo0_cm17_q <= "111111110";
                WHEN "10000" => u0_m0_wo0_cm17_q <= "000000001";
                WHEN "10001" => u0_m0_wo0_cm17_q <= "000000001";
                WHEN "10010" => u0_m0_wo0_cm17_q <= "000000101";
                WHEN "10011" => u0_m0_wo0_cm17_q <= "000001010";
                WHEN "10100" => u0_m0_wo0_cm17_q <= "000001100";
                WHEN "10101" => u0_m0_wo0_cm17_q <= "000001110";
                WHEN "10110" => u0_m0_wo0_cm17_q <= "000001010";
                WHEN "10111" => u0_m0_wo0_cm17_q <= "000000000";
                WHEN "11000" => u0_m0_wo0_cm17_q <= "000000100";
                WHEN "11001" => u0_m0_wo0_cm17_q <= "000000000";
                WHEN "11010" => u0_m0_wo0_cm17_q <= "111110110";
                WHEN "11011" => u0_m0_wo0_cm17_q <= "111110010";
                WHEN "11100" => u0_m0_wo0_cm17_q <= "111111000";
                WHEN "11101" => u0_m0_wo0_cm17_q <= "000010000";
                WHEN "11110" => u0_m0_wo0_cm17_q <= "000100010";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm17_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_49(MULT,193)@13 + 2
    u0_m0_wo0_mtree_mult1_49_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm17_q);
    u0_m0_wo0_mtree_mult1_49_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split16_c);
    u0_m0_wo0_mtree_mult1_49_reset <= areset;
    u0_m0_wo0_mtree_mult1_49_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 9,
        lpm_widthb => 12,
        lpm_widthp => 21,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_49_a0,
        datab => u0_m0_wo0_mtree_mult1_49_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_49_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_49_s1
    );
    u0_m0_wo0_mtree_mult1_49_q <= u0_m0_wo0_mtree_mult1_49_s1;

    -- u0_m0_wo0_cm18(LOOKUP,127)@12 + 1
    u0_m0_wo0_cm18_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm18_q <= "111101010";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca66_q) IS
                WHEN "00000" => u0_m0_wo0_cm18_q <= "111101010";
                WHEN "00001" => u0_m0_wo0_cm18_q <= "111101111";
                WHEN "00010" => u0_m0_wo0_cm18_q <= "111111010";
                WHEN "00011" => u0_m0_wo0_cm18_q <= "111111000";
                WHEN "00100" => u0_m0_wo0_cm18_q <= "111100111";
                WHEN "00101" => u0_m0_wo0_cm18_q <= "111011100";
                WHEN "00110" => u0_m0_wo0_cm18_q <= "111010101";
                WHEN "00111" => u0_m0_wo0_cm18_q <= "111010100";
                WHEN "01000" => u0_m0_wo0_cm18_q <= "111100100";
                WHEN "01001" => u0_m0_wo0_cm18_q <= "111101100";
                WHEN "01010" => u0_m0_wo0_cm18_q <= "111100011";
                WHEN "01011" => u0_m0_wo0_cm18_q <= "111100101";
                WHEN "01100" => u0_m0_wo0_cm18_q <= "111110110";
                WHEN "01101" => u0_m0_wo0_cm18_q <= "000000110";
                WHEN "01110" => u0_m0_wo0_cm18_q <= "000001101";
                WHEN "01111" => u0_m0_wo0_cm18_q <= "000001100";
                WHEN "10000" => u0_m0_wo0_cm18_q <= "111111001";
                WHEN "10001" => u0_m0_wo0_cm18_q <= "111100110";
                WHEN "10010" => u0_m0_wo0_cm18_q <= "111100110";
                WHEN "10011" => u0_m0_wo0_cm18_q <= "111110100";
                WHEN "10100" => u0_m0_wo0_cm18_q <= "111111110";
                WHEN "10101" => u0_m0_wo0_cm18_q <= "111111010";
                WHEN "10110" => u0_m0_wo0_cm18_q <= "111111101";
                WHEN "10111" => u0_m0_wo0_cm18_q <= "000001001";
                WHEN "11000" => u0_m0_wo0_cm18_q <= "000001111";
                WHEN "11001" => u0_m0_wo0_cm18_q <= "000000000";
                WHEN "11010" => u0_m0_wo0_cm18_q <= "111110101";
                WHEN "11011" => u0_m0_wo0_cm18_q <= "000001110";
                WHEN "11100" => u0_m0_wo0_cm18_q <= "000001101";
                WHEN "11101" => u0_m0_wo0_cm18_q <= "111101101";
                WHEN "11110" => u0_m0_wo0_cm18_q <= "111100101";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm18_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_48(MULT,194)@13 + 2
    u0_m0_wo0_mtree_mult1_48_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm18_q);
    u0_m0_wo0_mtree_mult1_48_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split16_d);
    u0_m0_wo0_mtree_mult1_48_reset <= areset;
    u0_m0_wo0_mtree_mult1_48_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 9,
        lpm_widthb => 12,
        lpm_widthp => 21,
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

    -- u0_m0_wo0_mtree_add0_24(ADD,267)@15 + 1
    u0_m0_wo0_mtree_add0_24_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 21 => u0_m0_wo0_mtree_mult1_48_q(20)) & u0_m0_wo0_mtree_mult1_48_q));
    u0_m0_wo0_mtree_add0_24_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 21 => u0_m0_wo0_mtree_mult1_49_q(20)) & u0_m0_wo0_mtree_mult1_49_q));
    u0_m0_wo0_mtree_add0_24_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_24_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_24_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_24_a) + SIGNED(u0_m0_wo0_mtree_add0_24_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_24_q <= u0_m0_wo0_mtree_add0_24_o(21 downto 0);

    -- u0_m0_wo0_mtree_add1_12(ADD,288)@16 + 1
    u0_m0_wo0_mtree_add1_12_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((22 downto 22 => u0_m0_wo0_mtree_add0_24_q(21)) & u0_m0_wo0_mtree_add0_24_q));
    u0_m0_wo0_mtree_add1_12_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((22 downto 22 => u0_m0_wo0_mtree_add0_25_q(21)) & u0_m0_wo0_mtree_add0_25_q));
    u0_m0_wo0_mtree_add1_12_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_12_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_12_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_12_a) + SIGNED(u0_m0_wo0_mtree_add1_12_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_12_q <= u0_m0_wo0_mtree_add1_12_o(22 downto 0);

    -- u0_m0_wo0_mtree_add2_6(ADD,299)@17 + 1
    u0_m0_wo0_mtree_add2_6_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((23 downto 23 => u0_m0_wo0_mtree_add1_12_q(22)) & u0_m0_wo0_mtree_add1_12_q));
    u0_m0_wo0_mtree_add2_6_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((23 downto 23 => u0_m0_wo0_mtree_add1_13_q(22)) & u0_m0_wo0_mtree_add1_13_q));
    u0_m0_wo0_mtree_add2_6_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add2_6_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add2_6_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add2_6_a) + SIGNED(u0_m0_wo0_mtree_add2_6_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add2_6_q <= u0_m0_wo0_mtree_add2_6_o(23 downto 0);

    -- u0_m0_wo0_mtree_add3_3(ADD,304)@18 + 1
    u0_m0_wo0_mtree_add3_3_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((24 downto 24 => u0_m0_wo0_mtree_add2_6_q(23)) & u0_m0_wo0_mtree_add2_6_q));
    u0_m0_wo0_mtree_add3_3_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((24 downto 24 => u0_m0_wo0_mtree_add2_7_q(23)) & u0_m0_wo0_mtree_add2_7_q));
    u0_m0_wo0_mtree_add3_3_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add3_3_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add3_3_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add3_3_a) + SIGNED(u0_m0_wo0_mtree_add3_3_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add3_3_q <= u0_m0_wo0_mtree_add3_3_o(24 downto 0);

    -- u0_m0_wo0_wi0_r0_join19(BITJOIN,57)@13
    u0_m0_wo0_wi0_r0_join19_q <= u0_m0_wo0_wi0_r0_split19_c & u0_m0_wo0_wi0_r0_split19_b & u0_m0_wo0_wi0_r0_split16_d;

    -- u0_m0_wo0_wi0_r0_memr19(DUALMEM,59)@13
    u0_m0_wo0_wi0_r0_memr19_ia <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_join19_q);
    u0_m0_wo0_wi0_r0_memr19_aa <= u0_m0_wo0_wi0_r0_wa66_q;
    u0_m0_wo0_wi0_r0_memr19_ab <= u0_m0_wo0_wi0_r0_ra66_resize_b;
    u0_m0_wo0_wi0_r0_memr19_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "DUAL_PORT",
        width_a => 36,
        widthad_a => 6,
        numwords_a => 64,
        width_b => 36,
        widthad_b => 6,
        numwords_b => 64,
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
        wren_a => u0_m0_wo0_wi0_r0_we66_seq_q(0),
        address_b => u0_m0_wo0_wi0_r0_memr19_ab,
        q_b => u0_m0_wo0_wi0_r0_memr19_iq
    );
    u0_m0_wo0_wi0_r0_memr19_q <= u0_m0_wo0_wi0_r0_memr19_iq(35 downto 0);

    -- u0_m0_wo0_wi0_r0_split19(BITSELECT,58)@13
    u0_m0_wo0_wi0_r0_split19_b <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr19_q(11 downto 0));
    u0_m0_wo0_wi0_r0_split19_c <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr19_q(23 downto 12));
    u0_m0_wo0_wi0_r0_split19_d <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr19_q(35 downto 24));

    -- u0_m0_wo0_cm19(LOOKUP,128)@12 + 1
    u0_m0_wo0_cm19_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm19_q <= "111111100";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca66_q) IS
                WHEN "00000" => u0_m0_wo0_cm19_q <= "111111100";
                WHEN "00001" => u0_m0_wo0_cm19_q <= "000000000";
                WHEN "00010" => u0_m0_wo0_cm19_q <= "111111000";
                WHEN "00011" => u0_m0_wo0_cm19_q <= "111101010";
                WHEN "00100" => u0_m0_wo0_cm19_q <= "111100000";
                WHEN "00101" => u0_m0_wo0_cm19_q <= "111101000";
                WHEN "00110" => u0_m0_wo0_cm19_q <= "000000001";
                WHEN "00111" => u0_m0_wo0_cm19_q <= "000001011";
                WHEN "01000" => u0_m0_wo0_cm19_q <= "000000101";
                WHEN "01001" => u0_m0_wo0_cm19_q <= "000000011";
                WHEN "01010" => u0_m0_wo0_cm19_q <= "000000011";
                WHEN "01011" => u0_m0_wo0_cm19_q <= "111111100";
                WHEN "01100" => u0_m0_wo0_cm19_q <= "111110011";
                WHEN "01101" => u0_m0_wo0_cm19_q <= "111110110";
                WHEN "01110" => u0_m0_wo0_cm19_q <= "000000000";
                WHEN "01111" => u0_m0_wo0_cm19_q <= "000000011";
                WHEN "10000" => u0_m0_wo0_cm19_q <= "000000000";
                WHEN "10001" => u0_m0_wo0_cm19_q <= "111111011";
                WHEN "10010" => u0_m0_wo0_cm19_q <= "000000011";
                WHEN "10011" => u0_m0_wo0_cm19_q <= "000000111";
                WHEN "10100" => u0_m0_wo0_cm19_q <= "111111111";
                WHEN "10101" => u0_m0_wo0_cm19_q <= "111110100";
                WHEN "10110" => u0_m0_wo0_cm19_q <= "111110111";
                WHEN "10111" => u0_m0_wo0_cm19_q <= "000000010";
                WHEN "11000" => u0_m0_wo0_cm19_q <= "111111111";
                WHEN "11001" => u0_m0_wo0_cm19_q <= "111101100";
                WHEN "11010" => u0_m0_wo0_cm19_q <= "111101010";
                WHEN "11011" => u0_m0_wo0_cm19_q <= "111110100";
                WHEN "11100" => u0_m0_wo0_cm19_q <= "111110001";
                WHEN "11101" => u0_m0_wo0_cm19_q <= "111101111";
                WHEN "11110" => u0_m0_wo0_cm19_q <= "111110001";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm19_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_47(MULT,195)@13 + 2
    u0_m0_wo0_mtree_mult1_47_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm19_q);
    u0_m0_wo0_mtree_mult1_47_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split19_b);
    u0_m0_wo0_mtree_mult1_47_reset <= areset;
    u0_m0_wo0_mtree_mult1_47_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 9,
        lpm_widthb => 12,
        lpm_widthp => 21,
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

    -- u0_m0_wo0_cm20(LOOKUP,129)@12 + 1
    u0_m0_wo0_cm20_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm20_q <= "111110100";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca66_q) IS
                WHEN "00000" => u0_m0_wo0_cm20_q <= "111110100";
                WHEN "00001" => u0_m0_wo0_cm20_q <= "111111011";
                WHEN "00010" => u0_m0_wo0_cm20_q <= "111111110";
                WHEN "00011" => u0_m0_wo0_cm20_q <= "111111001";
                WHEN "00100" => u0_m0_wo0_cm20_q <= "111111110";
                WHEN "00101" => u0_m0_wo0_cm20_q <= "000000100";
                WHEN "00110" => u0_m0_wo0_cm20_q <= "111111010";
                WHEN "00111" => u0_m0_wo0_cm20_q <= "111110001";
                WHEN "01000" => u0_m0_wo0_cm20_q <= "111101111";
                WHEN "01001" => u0_m0_wo0_cm20_q <= "111100111";
                WHEN "01010" => u0_m0_wo0_cm20_q <= "111100101";
                WHEN "01011" => u0_m0_wo0_cm20_q <= "111101000";
                WHEN "01100" => u0_m0_wo0_cm20_q <= "111101110";
                WHEN "01101" => u0_m0_wo0_cm20_q <= "111110111";
                WHEN "01110" => u0_m0_wo0_cm20_q <= "000000001";
                WHEN "01111" => u0_m0_wo0_cm20_q <= "000000111";
                WHEN "10000" => u0_m0_wo0_cm20_q <= "000000000";
                WHEN "10001" => u0_m0_wo0_cm20_q <= "111111000";
                WHEN "10010" => u0_m0_wo0_cm20_q <= "111111000";
                WHEN "10011" => u0_m0_wo0_cm20_q <= "111111001";
                WHEN "10100" => u0_m0_wo0_cm20_q <= "111111000";
                WHEN "10101" => u0_m0_wo0_cm20_q <= "111111100";
                WHEN "10110" => u0_m0_wo0_cm20_q <= "000000011";
                WHEN "10111" => u0_m0_wo0_cm20_q <= "000000100";
                WHEN "11000" => u0_m0_wo0_cm20_q <= "111111010";
                WHEN "11001" => u0_m0_wo0_cm20_q <= "111110101";
                WHEN "11010" => u0_m0_wo0_cm20_q <= "111111000";
                WHEN "11011" => u0_m0_wo0_cm20_q <= "111111011";
                WHEN "11100" => u0_m0_wo0_cm20_q <= "000000001";
                WHEN "11101" => u0_m0_wo0_cm20_q <= "000000011";
                WHEN "11110" => u0_m0_wo0_cm20_q <= "111111101";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm20_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_46(MULT,196)@13 + 2
    u0_m0_wo0_mtree_mult1_46_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm20_q);
    u0_m0_wo0_mtree_mult1_46_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split19_c);
    u0_m0_wo0_mtree_mult1_46_reset <= areset;
    u0_m0_wo0_mtree_mult1_46_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 9,
        lpm_widthb => 12,
        lpm_widthp => 21,
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

    -- u0_m0_wo0_mtree_add0_23(ADD,266)@15 + 1
    u0_m0_wo0_mtree_add0_23_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 21 => u0_m0_wo0_mtree_mult1_46_q(20)) & u0_m0_wo0_mtree_mult1_46_q));
    u0_m0_wo0_mtree_add0_23_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 21 => u0_m0_wo0_mtree_mult1_47_q(20)) & u0_m0_wo0_mtree_mult1_47_q));
    u0_m0_wo0_mtree_add0_23_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_23_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_23_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_23_a) + SIGNED(u0_m0_wo0_mtree_add0_23_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_23_q <= u0_m0_wo0_mtree_add0_23_o(21 downto 0);

    -- u0_m0_wo0_cm21(LOOKUP,130)@12 + 1
    u0_m0_wo0_cm21_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm21_q <= "111101111";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca66_q) IS
                WHEN "00000" => u0_m0_wo0_cm21_q <= "111101111";
                WHEN "00001" => u0_m0_wo0_cm21_q <= "111100111";
                WHEN "00010" => u0_m0_wo0_cm21_q <= "111101011";
                WHEN "00011" => u0_m0_wo0_cm21_q <= "111110101";
                WHEN "00100" => u0_m0_wo0_cm21_q <= "111110111";
                WHEN "00101" => u0_m0_wo0_cm21_q <= "111101111";
                WHEN "00110" => u0_m0_wo0_cm21_q <= "111101000";
                WHEN "00111" => u0_m0_wo0_cm21_q <= "111101000";
                WHEN "01000" => u0_m0_wo0_cm21_q <= "111101011";
                WHEN "01001" => u0_m0_wo0_cm21_q <= "111111011";
                WHEN "01010" => u0_m0_wo0_cm21_q <= "000000100";
                WHEN "01011" => u0_m0_wo0_cm21_q <= "000000000";
                WHEN "01100" => u0_m0_wo0_cm21_q <= "111111111";
                WHEN "01101" => u0_m0_wo0_cm21_q <= "111111011";
                WHEN "01110" => u0_m0_wo0_cm21_q <= "111110010";
                WHEN "01111" => u0_m0_wo0_cm21_q <= "111100101";
                WHEN "10000" => u0_m0_wo0_cm21_q <= "111011100";
                WHEN "10001" => u0_m0_wo0_cm21_q <= "111100010";
                WHEN "10010" => u0_m0_wo0_cm21_q <= "111110000";
                WHEN "10011" => u0_m0_wo0_cm21_q <= "000000111";
                WHEN "10100" => u0_m0_wo0_cm21_q <= "000010010";
                WHEN "10101" => u0_m0_wo0_cm21_q <= "111111000";
                WHEN "10110" => u0_m0_wo0_cm21_q <= "111100010";
                WHEN "10111" => u0_m0_wo0_cm21_q <= "111011011";
                WHEN "11000" => u0_m0_wo0_cm21_q <= "111100101";
                WHEN "11001" => u0_m0_wo0_cm21_q <= "111111001";
                WHEN "11010" => u0_m0_wo0_cm21_q <= "111111011";
                WHEN "11011" => u0_m0_wo0_cm21_q <= "111111000";
                WHEN "11100" => u0_m0_wo0_cm21_q <= "000000000";
                WHEN "11101" => u0_m0_wo0_cm21_q <= "000000101";
                WHEN "11110" => u0_m0_wo0_cm21_q <= "111111100";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm21_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_45(MULT,197)@13 + 2
    u0_m0_wo0_mtree_mult1_45_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm21_q);
    u0_m0_wo0_mtree_mult1_45_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split19_d);
    u0_m0_wo0_mtree_mult1_45_reset <= areset;
    u0_m0_wo0_mtree_mult1_45_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 9,
        lpm_widthb => 12,
        lpm_widthp => 21,
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

    -- u0_m0_wo0_wi0_r0_join22(BITJOIN,60)@13
    u0_m0_wo0_wi0_r0_join22_q <= u0_m0_wo0_wi0_r0_split22_c & u0_m0_wo0_wi0_r0_split22_b & u0_m0_wo0_wi0_r0_split19_d;

    -- u0_m0_wo0_wi0_r0_memr22(DUALMEM,62)@13
    u0_m0_wo0_wi0_r0_memr22_ia <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_join22_q);
    u0_m0_wo0_wi0_r0_memr22_aa <= u0_m0_wo0_wi0_r0_wa66_q;
    u0_m0_wo0_wi0_r0_memr22_ab <= u0_m0_wo0_wi0_r0_ra66_resize_b;
    u0_m0_wo0_wi0_r0_memr22_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "DUAL_PORT",
        width_a => 36,
        widthad_a => 6,
        numwords_a => 64,
        width_b => 36,
        widthad_b => 6,
        numwords_b => 64,
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
        wren_a => u0_m0_wo0_wi0_r0_we66_seq_q(0),
        address_b => u0_m0_wo0_wi0_r0_memr22_ab,
        q_b => u0_m0_wo0_wi0_r0_memr22_iq
    );
    u0_m0_wo0_wi0_r0_memr22_q <= u0_m0_wo0_wi0_r0_memr22_iq(35 downto 0);

    -- u0_m0_wo0_wi0_r0_split22(BITSELECT,61)@13
    u0_m0_wo0_wi0_r0_split22_b <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr22_q(11 downto 0));
    u0_m0_wo0_wi0_r0_split22_c <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr22_q(23 downto 12));
    u0_m0_wo0_wi0_r0_split22_d <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr22_q(35 downto 24));

    -- u0_m0_wo0_cm22(LOOKUP,131)@12 + 1
    u0_m0_wo0_cm22_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm22_q <= "111110110";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca66_q) IS
                WHEN "00000" => u0_m0_wo0_cm22_q <= "111110110";
                WHEN "00001" => u0_m0_wo0_cm22_q <= "111111101";
                WHEN "00010" => u0_m0_wo0_cm22_q <= "000001001";
                WHEN "00011" => u0_m0_wo0_cm22_q <= "000001011";
                WHEN "00100" => u0_m0_wo0_cm22_q <= "000001101";
                WHEN "00101" => u0_m0_wo0_cm22_q <= "000010010";
                WHEN "00110" => u0_m0_wo0_cm22_q <= "000010001";
                WHEN "00111" => u0_m0_wo0_cm22_q <= "000001001";
                WHEN "01000" => u0_m0_wo0_cm22_q <= "000001000";
                WHEN "01001" => u0_m0_wo0_cm22_q <= "000001000";
                WHEN "01010" => u0_m0_wo0_cm22_q <= "000000110";
                WHEN "01011" => u0_m0_wo0_cm22_q <= "000000100";
                WHEN "01100" => u0_m0_wo0_cm22_q <= "000000111";
                WHEN "01101" => u0_m0_wo0_cm22_q <= "000001101";
                WHEN "01110" => u0_m0_wo0_cm22_q <= "000001010";
                WHEN "01111" => u0_m0_wo0_cm22_q <= "000001010";
                WHEN "10000" => u0_m0_wo0_cm22_q <= "000001001";
                WHEN "10001" => u0_m0_wo0_cm22_q <= "000001001";
                WHEN "10010" => u0_m0_wo0_cm22_q <= "000001101";
                WHEN "10011" => u0_m0_wo0_cm22_q <= "000000011";
                WHEN "10100" => u0_m0_wo0_cm22_q <= "111110010";
                WHEN "10101" => u0_m0_wo0_cm22_q <= "111110011";
                WHEN "10110" => u0_m0_wo0_cm22_q <= "111111100";
                WHEN "10111" => u0_m0_wo0_cm22_q <= "000000000";
                WHEN "11000" => u0_m0_wo0_cm22_q <= "000000000";
                WHEN "11001" => u0_m0_wo0_cm22_q <= "000000010";
                WHEN "11010" => u0_m0_wo0_cm22_q <= "000000001";
                WHEN "11011" => u0_m0_wo0_cm22_q <= "111111101";
                WHEN "11100" => u0_m0_wo0_cm22_q <= "111110101";
                WHEN "11101" => u0_m0_wo0_cm22_q <= "111101101";
                WHEN "11110" => u0_m0_wo0_cm22_q <= "111110010";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm22_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_44(MULT,198)@13 + 2
    u0_m0_wo0_mtree_mult1_44_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm22_q);
    u0_m0_wo0_mtree_mult1_44_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split22_b);
    u0_m0_wo0_mtree_mult1_44_reset <= areset;
    u0_m0_wo0_mtree_mult1_44_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 9,
        lpm_widthb => 12,
        lpm_widthp => 21,
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

    -- u0_m0_wo0_mtree_add0_22(ADD,265)@15 + 1
    u0_m0_wo0_mtree_add0_22_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 21 => u0_m0_wo0_mtree_mult1_44_q(20)) & u0_m0_wo0_mtree_mult1_44_q));
    u0_m0_wo0_mtree_add0_22_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 21 => u0_m0_wo0_mtree_mult1_45_q(20)) & u0_m0_wo0_mtree_mult1_45_q));
    u0_m0_wo0_mtree_add0_22_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_22_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_22_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_22_a) + SIGNED(u0_m0_wo0_mtree_add0_22_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_22_q <= u0_m0_wo0_mtree_add0_22_o(21 downto 0);

    -- u0_m0_wo0_mtree_add1_11(ADD,287)@16 + 1
    u0_m0_wo0_mtree_add1_11_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((22 downto 22 => u0_m0_wo0_mtree_add0_22_q(21)) & u0_m0_wo0_mtree_add0_22_q));
    u0_m0_wo0_mtree_add1_11_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((22 downto 22 => u0_m0_wo0_mtree_add0_23_q(21)) & u0_m0_wo0_mtree_add0_23_q));
    u0_m0_wo0_mtree_add1_11_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_11_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_11_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_11_a) + SIGNED(u0_m0_wo0_mtree_add1_11_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_11_q <= u0_m0_wo0_mtree_add1_11_o(22 downto 0);

    -- u0_m0_wo0_cm23(LOOKUP,132)@12 + 1
    u0_m0_wo0_cm23_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm23_q <= "111110011";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca66_q) IS
                WHEN "00000" => u0_m0_wo0_cm23_q <= "111110011";
                WHEN "00001" => u0_m0_wo0_cm23_q <= "111110100";
                WHEN "00010" => u0_m0_wo0_cm23_q <= "000000000";
                WHEN "00011" => u0_m0_wo0_cm23_q <= "000000000";
                WHEN "00100" => u0_m0_wo0_cm23_q <= "111110110";
                WHEN "00101" => u0_m0_wo0_cm23_q <= "111110010";
                WHEN "00110" => u0_m0_wo0_cm23_q <= "111110111";
                WHEN "00111" => u0_m0_wo0_cm23_q <= "000000000";
                WHEN "01000" => u0_m0_wo0_cm23_q <= "000000111";
                WHEN "01001" => u0_m0_wo0_cm23_q <= "000000011";
                WHEN "01010" => u0_m0_wo0_cm23_q <= "111111000";
                WHEN "01011" => u0_m0_wo0_cm23_q <= "111101111";
                WHEN "01100" => u0_m0_wo0_cm23_q <= "111100000";
                WHEN "01101" => u0_m0_wo0_cm23_q <= "111010110";
                WHEN "01110" => u0_m0_wo0_cm23_q <= "111100010";
                WHEN "01111" => u0_m0_wo0_cm23_q <= "111101101";
                WHEN "10000" => u0_m0_wo0_cm23_q <= "111101000";
                WHEN "10001" => u0_m0_wo0_cm23_q <= "111011100";
                WHEN "10010" => u0_m0_wo0_cm23_q <= "111010110";
                WHEN "10011" => u0_m0_wo0_cm23_q <= "111011110";
                WHEN "10100" => u0_m0_wo0_cm23_q <= "111101011";
                WHEN "10101" => u0_m0_wo0_cm23_q <= "111110100";
                WHEN "10110" => u0_m0_wo0_cm23_q <= "000000000";
                WHEN "10111" => u0_m0_wo0_cm23_q <= "000000110";
                WHEN "11000" => u0_m0_wo0_cm23_q <= "000000111";
                WHEN "11001" => u0_m0_wo0_cm23_q <= "111111110";
                WHEN "11010" => u0_m0_wo0_cm23_q <= "111101111";
                WHEN "11011" => u0_m0_wo0_cm23_q <= "111101010";
                WHEN "11100" => u0_m0_wo0_cm23_q <= "111101101";
                WHEN "11101" => u0_m0_wo0_cm23_q <= "111110110";
                WHEN "11110" => u0_m0_wo0_cm23_q <= "111111010";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm23_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_43(MULT,199)@13 + 2
    u0_m0_wo0_mtree_mult1_43_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm23_q);
    u0_m0_wo0_mtree_mult1_43_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split22_c);
    u0_m0_wo0_mtree_mult1_43_reset <= areset;
    u0_m0_wo0_mtree_mult1_43_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 9,
        lpm_widthb => 12,
        lpm_widthp => 21,
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

    -- u0_m0_wo0_cm24(LOOKUP,133)@12 + 1
    u0_m0_wo0_cm24_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm24_q <= "111100011";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca66_q) IS
                WHEN "00000" => u0_m0_wo0_cm24_q <= "111100011";
                WHEN "00001" => u0_m0_wo0_cm24_q <= "111000000";
                WHEN "00010" => u0_m0_wo0_cm24_q <= "110011011";
                WHEN "00011" => u0_m0_wo0_cm24_q <= "110111100";
                WHEN "00100" => u0_m0_wo0_cm24_q <= "111010011";
                WHEN "00101" => u0_m0_wo0_cm24_q <= "110111011";
                WHEN "00110" => u0_m0_wo0_cm24_q <= "111000100";
                WHEN "00111" => u0_m0_wo0_cm24_q <= "111100101";
                WHEN "01000" => u0_m0_wo0_cm24_q <= "111110010";
                WHEN "01001" => u0_m0_wo0_cm24_q <= "111011110";
                WHEN "01010" => u0_m0_wo0_cm24_q <= "111001100";
                WHEN "01011" => u0_m0_wo0_cm24_q <= "111001000";
                WHEN "01100" => u0_m0_wo0_cm24_q <= "111010000";
                WHEN "01101" => u0_m0_wo0_cm24_q <= "111010010";
                WHEN "01110" => u0_m0_wo0_cm24_q <= "111010100";
                WHEN "01111" => u0_m0_wo0_cm24_q <= "111011100";
                WHEN "10000" => u0_m0_wo0_cm24_q <= "111100110";
                WHEN "10001" => u0_m0_wo0_cm24_q <= "111100011";
                WHEN "10010" => u0_m0_wo0_cm24_q <= "111010100";
                WHEN "10011" => u0_m0_wo0_cm24_q <= "111010101";
                WHEN "10100" => u0_m0_wo0_cm24_q <= "111010111";
                WHEN "10101" => u0_m0_wo0_cm24_q <= "111011001";
                WHEN "10110" => u0_m0_wo0_cm24_q <= "111110110";
                WHEN "10111" => u0_m0_wo0_cm24_q <= "000001011";
                WHEN "11000" => u0_m0_wo0_cm24_q <= "000001101";
                WHEN "11001" => u0_m0_wo0_cm24_q <= "000001000";
                WHEN "11010" => u0_m0_wo0_cm24_q <= "000000000";
                WHEN "11011" => u0_m0_wo0_cm24_q <= "111100110";
                WHEN "11100" => u0_m0_wo0_cm24_q <= "111001010";
                WHEN "11101" => u0_m0_wo0_cm24_q <= "111011000";
                WHEN "11110" => u0_m0_wo0_cm24_q <= "111110001";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm24_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_42(MULT,200)@13 + 2
    u0_m0_wo0_mtree_mult1_42_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm24_q);
    u0_m0_wo0_mtree_mult1_42_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split22_d);
    u0_m0_wo0_mtree_mult1_42_reset <= areset;
    u0_m0_wo0_mtree_mult1_42_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 9,
        lpm_widthb => 12,
        lpm_widthp => 21,
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

    -- u0_m0_wo0_mtree_add0_21(ADD,264)@15 + 1
    u0_m0_wo0_mtree_add0_21_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 21 => u0_m0_wo0_mtree_mult1_42_q(20)) & u0_m0_wo0_mtree_mult1_42_q));
    u0_m0_wo0_mtree_add0_21_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 21 => u0_m0_wo0_mtree_mult1_43_q(20)) & u0_m0_wo0_mtree_mult1_43_q));
    u0_m0_wo0_mtree_add0_21_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_21_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_21_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_21_a) + SIGNED(u0_m0_wo0_mtree_add0_21_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_21_q <= u0_m0_wo0_mtree_add0_21_o(21 downto 0);

    -- u0_m0_wo0_wi0_r0_join25(BITJOIN,63)@13
    u0_m0_wo0_wi0_r0_join25_q <= u0_m0_wo0_wi0_r0_split25_c & u0_m0_wo0_wi0_r0_split25_b & u0_m0_wo0_wi0_r0_split22_d;

    -- u0_m0_wo0_wi0_r0_memr25(DUALMEM,65)@13
    u0_m0_wo0_wi0_r0_memr25_ia <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_join25_q);
    u0_m0_wo0_wi0_r0_memr25_aa <= u0_m0_wo0_wi0_r0_wa66_q;
    u0_m0_wo0_wi0_r0_memr25_ab <= u0_m0_wo0_wi0_r0_ra66_resize_b;
    u0_m0_wo0_wi0_r0_memr25_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "DUAL_PORT",
        width_a => 36,
        widthad_a => 6,
        numwords_a => 64,
        width_b => 36,
        widthad_b => 6,
        numwords_b => 64,
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
        wren_a => u0_m0_wo0_wi0_r0_we66_seq_q(0),
        address_b => u0_m0_wo0_wi0_r0_memr25_ab,
        q_b => u0_m0_wo0_wi0_r0_memr25_iq
    );
    u0_m0_wo0_wi0_r0_memr25_q <= u0_m0_wo0_wi0_r0_memr25_iq(35 downto 0);

    -- u0_m0_wo0_wi0_r0_split25(BITSELECT,64)@13
    u0_m0_wo0_wi0_r0_split25_b <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr25_q(11 downto 0));
    u0_m0_wo0_wi0_r0_split25_c <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr25_q(23 downto 12));
    u0_m0_wo0_wi0_r0_split25_d <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr25_q(35 downto 24));

    -- u0_m0_wo0_cm25(LOOKUP,134)@12 + 1
    u0_m0_wo0_cm25_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm25_q <= "111111010";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca66_q) IS
                WHEN "00000" => u0_m0_wo0_cm25_q <= "111111010";
                WHEN "00001" => u0_m0_wo0_cm25_q <= "111111110";
                WHEN "00010" => u0_m0_wo0_cm25_q <= "000000000";
                WHEN "00011" => u0_m0_wo0_cm25_q <= "111110111";
                WHEN "00100" => u0_m0_wo0_cm25_q <= "111100100";
                WHEN "00101" => u0_m0_wo0_cm25_q <= "111011001";
                WHEN "00110" => u0_m0_wo0_cm25_q <= "111010111";
                WHEN "00111" => u0_m0_wo0_cm25_q <= "111100010";
                WHEN "01000" => u0_m0_wo0_cm25_q <= "111111011";
                WHEN "01001" => u0_m0_wo0_cm25_q <= "000010010";
                WHEN "01010" => u0_m0_wo0_cm25_q <= "000110000";
                WHEN "01011" => u0_m0_wo0_cm25_q <= "001100000";
                WHEN "01100" => u0_m0_wo0_cm25_q <= "010010101";
                WHEN "01101" => u0_m0_wo0_cm25_q <= "011001000";
                WHEN "01110" => u0_m0_wo0_cm25_q <= "011101101";
                WHEN "01111" => u0_m0_wo0_cm25_q <= "011111100";
                WHEN "10000" => u0_m0_wo0_cm25_q <= "011111111";
                WHEN "10001" => u0_m0_wo0_cm25_q <= "011110101";
                WHEN "10010" => u0_m0_wo0_cm25_q <= "011001100";
                WHEN "10011" => u0_m0_wo0_cm25_q <= "001111111";
                WHEN "10100" => u0_m0_wo0_cm25_q <= "000110001";
                WHEN "10101" => u0_m0_wo0_cm25_q <= "111101001";
                WHEN "10110" => u0_m0_wo0_cm25_q <= "110101011";
                WHEN "10111" => u0_m0_wo0_cm25_q <= "110010011";
                WHEN "11000" => u0_m0_wo0_cm25_q <= "110110001";
                WHEN "11001" => u0_m0_wo0_cm25_q <= "111100010";
                WHEN "11010" => u0_m0_wo0_cm25_q <= "000011011";
                WHEN "11011" => u0_m0_wo0_cm25_q <= "001000000";
                WHEN "11100" => u0_m0_wo0_cm25_q <= "000110000";
                WHEN "11101" => u0_m0_wo0_cm25_q <= "000011011";
                WHEN "11110" => u0_m0_wo0_cm25_q <= "000000001";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm25_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_41(MULT,201)@13 + 2
    u0_m0_wo0_mtree_mult1_41_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm25_q);
    u0_m0_wo0_mtree_mult1_41_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split25_b);
    u0_m0_wo0_mtree_mult1_41_reset <= areset;
    u0_m0_wo0_mtree_mult1_41_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 9,
        lpm_widthb => 12,
        lpm_widthp => 21,
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

    -- u0_m0_wo0_cm26(LOOKUP,135)@12 + 1
    u0_m0_wo0_cm26_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm26_q <= "000010101";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca66_q) IS
                WHEN "00000" => u0_m0_wo0_cm26_q <= "000010101";
                WHEN "00001" => u0_m0_wo0_cm26_q <= "000011000";
                WHEN "00010" => u0_m0_wo0_cm26_q <= "000100100";
                WHEN "00011" => u0_m0_wo0_cm26_q <= "000100110";
                WHEN "00100" => u0_m0_wo0_cm26_q <= "000100111";
                WHEN "00101" => u0_m0_wo0_cm26_q <= "000011000";
                WHEN "00110" => u0_m0_wo0_cm26_q <= "111111111";
                WHEN "00111" => u0_m0_wo0_cm26_q <= "111111101";
                WHEN "01000" => u0_m0_wo0_cm26_q <= "000000010";
                WHEN "01001" => u0_m0_wo0_cm26_q <= "000000000";
                WHEN "01010" => u0_m0_wo0_cm26_q <= "111111111";
                WHEN "01011" => u0_m0_wo0_cm26_q <= "111110110";
                WHEN "01100" => u0_m0_wo0_cm26_q <= "111101100";
                WHEN "01101" => u0_m0_wo0_cm26_q <= "111011000";
                WHEN "01110" => u0_m0_wo0_cm26_q <= "111000011";
                WHEN "01111" => u0_m0_wo0_cm26_q <= "110111100";
                WHEN "10000" => u0_m0_wo0_cm26_q <= "111000000";
                WHEN "10001" => u0_m0_wo0_cm26_q <= "111001110";
                WHEN "10010" => u0_m0_wo0_cm26_q <= "111100010";
                WHEN "10011" => u0_m0_wo0_cm26_q <= "111110100";
                WHEN "10100" => u0_m0_wo0_cm26_q <= "111110101";
                WHEN "10101" => u0_m0_wo0_cm26_q <= "111110011";
                WHEN "10110" => u0_m0_wo0_cm26_q <= "111111100";
                WHEN "10111" => u0_m0_wo0_cm26_q <= "000000101";
                WHEN "11000" => u0_m0_wo0_cm26_q <= "000001011";
                WHEN "11001" => u0_m0_wo0_cm26_q <= "000010110";
                WHEN "11010" => u0_m0_wo0_cm26_q <= "000011010";
                WHEN "11011" => u0_m0_wo0_cm26_q <= "000011010";
                WHEN "11100" => u0_m0_wo0_cm26_q <= "000010011";
                WHEN "11101" => u0_m0_wo0_cm26_q <= "000000101";
                WHEN "11110" => u0_m0_wo0_cm26_q <= "111111101";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm26_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_40(MULT,202)@13 + 2
    u0_m0_wo0_mtree_mult1_40_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm26_q);
    u0_m0_wo0_mtree_mult1_40_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split25_c);
    u0_m0_wo0_mtree_mult1_40_reset <= areset;
    u0_m0_wo0_mtree_mult1_40_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 9,
        lpm_widthb => 12,
        lpm_widthp => 21,
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

    -- u0_m0_wo0_mtree_add0_20(ADD,263)@15 + 1
    u0_m0_wo0_mtree_add0_20_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 21 => u0_m0_wo0_mtree_mult1_40_q(20)) & u0_m0_wo0_mtree_mult1_40_q));
    u0_m0_wo0_mtree_add0_20_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 21 => u0_m0_wo0_mtree_mult1_41_q(20)) & u0_m0_wo0_mtree_mult1_41_q));
    u0_m0_wo0_mtree_add0_20_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_20_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_20_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_20_a) + SIGNED(u0_m0_wo0_mtree_add0_20_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_20_q <= u0_m0_wo0_mtree_add0_20_o(21 downto 0);

    -- u0_m0_wo0_mtree_add1_10(ADD,286)@16 + 1
    u0_m0_wo0_mtree_add1_10_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((22 downto 22 => u0_m0_wo0_mtree_add0_20_q(21)) & u0_m0_wo0_mtree_add0_20_q));
    u0_m0_wo0_mtree_add1_10_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((22 downto 22 => u0_m0_wo0_mtree_add0_21_q(21)) & u0_m0_wo0_mtree_add0_21_q));
    u0_m0_wo0_mtree_add1_10_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_10_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_10_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_10_a) + SIGNED(u0_m0_wo0_mtree_add1_10_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_10_q <= u0_m0_wo0_mtree_add1_10_o(22 downto 0);

    -- u0_m0_wo0_mtree_add2_5(ADD,298)@17 + 1
    u0_m0_wo0_mtree_add2_5_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((23 downto 23 => u0_m0_wo0_mtree_add1_10_q(22)) & u0_m0_wo0_mtree_add1_10_q));
    u0_m0_wo0_mtree_add2_5_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((23 downto 23 => u0_m0_wo0_mtree_add1_11_q(22)) & u0_m0_wo0_mtree_add1_11_q));
    u0_m0_wo0_mtree_add2_5_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add2_5_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add2_5_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add2_5_a) + SIGNED(u0_m0_wo0_mtree_add2_5_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add2_5_q <= u0_m0_wo0_mtree_add2_5_o(23 downto 0);

    -- u0_m0_wo0_cm27(LOOKUP,136)@12 + 1
    u0_m0_wo0_cm27_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm27_q <= "000011110";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca66_q) IS
                WHEN "00000" => u0_m0_wo0_cm27_q <= "000011110";
                WHEN "00001" => u0_m0_wo0_cm27_q <= "000011011";
                WHEN "00010" => u0_m0_wo0_cm27_q <= "000001100";
                WHEN "00011" => u0_m0_wo0_cm27_q <= "000000101";
                WHEN "00100" => u0_m0_wo0_cm27_q <= "000010001";
                WHEN "00101" => u0_m0_wo0_cm27_q <= "000011111";
                WHEN "00110" => u0_m0_wo0_cm27_q <= "000011010";
                WHEN "00111" => u0_m0_wo0_cm27_q <= "000001000";
                WHEN "01000" => u0_m0_wo0_cm27_q <= "000000011";
                WHEN "01001" => u0_m0_wo0_cm27_q <= "111110101";
                WHEN "01010" => u0_m0_wo0_cm27_q <= "111110010";
                WHEN "01011" => u0_m0_wo0_cm27_q <= "000000100";
                WHEN "01100" => u0_m0_wo0_cm27_q <= "000000000";
                WHEN "01101" => u0_m0_wo0_cm27_q <= "111111001";
                WHEN "01110" => u0_m0_wo0_cm27_q <= "111111000";
                WHEN "01111" => u0_m0_wo0_cm27_q <= "111110000";
                WHEN "10000" => u0_m0_wo0_cm27_q <= "111101110";
                WHEN "10001" => u0_m0_wo0_cm27_q <= "111110100";
                WHEN "10010" => u0_m0_wo0_cm27_q <= "111111111";
                WHEN "10011" => u0_m0_wo0_cm27_q <= "111111101";
                WHEN "10100" => u0_m0_wo0_cm27_q <= "000000100";
                WHEN "10101" => u0_m0_wo0_cm27_q <= "000010010";
                WHEN "10110" => u0_m0_wo0_cm27_q <= "000001011";
                WHEN "10111" => u0_m0_wo0_cm27_q <= "000000000";
                WHEN "11000" => u0_m0_wo0_cm27_q <= "000000011";
                WHEN "11001" => u0_m0_wo0_cm27_q <= "000011010";
                WHEN "11010" => u0_m0_wo0_cm27_q <= "000100100";
                WHEN "11011" => u0_m0_wo0_cm27_q <= "000100000";
                WHEN "11100" => u0_m0_wo0_cm27_q <= "000100100";
                WHEN "11101" => u0_m0_wo0_cm27_q <= "000100010";
                WHEN "11110" => u0_m0_wo0_cm27_q <= "000011011";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm27_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_39(MULT,203)@13 + 2
    u0_m0_wo0_mtree_mult1_39_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm27_q);
    u0_m0_wo0_mtree_mult1_39_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split25_d);
    u0_m0_wo0_mtree_mult1_39_reset <= areset;
    u0_m0_wo0_mtree_mult1_39_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 9,
        lpm_widthb => 12,
        lpm_widthp => 21,
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

    -- u0_m0_wo0_wi0_r0_join28(BITJOIN,66)@13
    u0_m0_wo0_wi0_r0_join28_q <= u0_m0_wo0_wi0_r0_split28_c & u0_m0_wo0_wi0_r0_split28_b & u0_m0_wo0_wi0_r0_split25_d;

    -- u0_m0_wo0_wi0_r0_memr28(DUALMEM,68)@13
    u0_m0_wo0_wi0_r0_memr28_ia <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_join28_q);
    u0_m0_wo0_wi0_r0_memr28_aa <= u0_m0_wo0_wi0_r0_wa66_q;
    u0_m0_wo0_wi0_r0_memr28_ab <= u0_m0_wo0_wi0_r0_ra66_resize_b;
    u0_m0_wo0_wi0_r0_memr28_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "DUAL_PORT",
        width_a => 36,
        widthad_a => 6,
        numwords_a => 64,
        width_b => 36,
        widthad_b => 6,
        numwords_b => 64,
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
        wren_a => u0_m0_wo0_wi0_r0_we66_seq_q(0),
        address_b => u0_m0_wo0_wi0_r0_memr28_ab,
        q_b => u0_m0_wo0_wi0_r0_memr28_iq
    );
    u0_m0_wo0_wi0_r0_memr28_q <= u0_m0_wo0_wi0_r0_memr28_iq(35 downto 0);

    -- u0_m0_wo0_wi0_r0_split28(BITSELECT,67)@13
    u0_m0_wo0_wi0_r0_split28_b <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr28_q(11 downto 0));
    u0_m0_wo0_wi0_r0_split28_c <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr28_q(23 downto 12));
    u0_m0_wo0_wi0_r0_split28_d <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr28_q(35 downto 24));

    -- u0_m0_wo0_cm28(LOOKUP,137)@12 + 1
    u0_m0_wo0_cm28_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm28_q <= "000010000";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca66_q) IS
                WHEN "00000" => u0_m0_wo0_cm28_q <= "000010000";
                WHEN "00001" => u0_m0_wo0_cm28_q <= "000001111";
                WHEN "00010" => u0_m0_wo0_cm28_q <= "000001011";
                WHEN "00011" => u0_m0_wo0_cm28_q <= "000010000";
                WHEN "00100" => u0_m0_wo0_cm28_q <= "000010111";
                WHEN "00101" => u0_m0_wo0_cm28_q <= "000101011";
                WHEN "00110" => u0_m0_wo0_cm28_q <= "000111010";
                WHEN "00111" => u0_m0_wo0_cm28_q <= "000101010";
                WHEN "01000" => u0_m0_wo0_cm28_q <= "000001101";
                WHEN "01001" => u0_m0_wo0_cm28_q <= "000001111";
                WHEN "01010" => u0_m0_wo0_cm28_q <= "000011010";
                WHEN "01011" => u0_m0_wo0_cm28_q <= "000010111";
                WHEN "01100" => u0_m0_wo0_cm28_q <= "000010100";
                WHEN "01101" => u0_m0_wo0_cm28_q <= "000010100";
                WHEN "01110" => u0_m0_wo0_cm28_q <= "000010111";
                WHEN "01111" => u0_m0_wo0_cm28_q <= "000010011";
                WHEN "10000" => u0_m0_wo0_cm28_q <= "000010011";
                WHEN "10001" => u0_m0_wo0_cm28_q <= "000011101";
                WHEN "10010" => u0_m0_wo0_cm28_q <= "000101011";
                WHEN "10011" => u0_m0_wo0_cm28_q <= "000011101";
                WHEN "10100" => u0_m0_wo0_cm28_q <= "111111011";
                WHEN "10101" => u0_m0_wo0_cm28_q <= "111111100";
                WHEN "10110" => u0_m0_wo0_cm28_q <= "111111101";
                WHEN "10111" => u0_m0_wo0_cm28_q <= "111111011";
                WHEN "11000" => u0_m0_wo0_cm28_q <= "000010010";
                WHEN "11001" => u0_m0_wo0_cm28_q <= "000011100";
                WHEN "11010" => u0_m0_wo0_cm28_q <= "000001011";
                WHEN "11011" => u0_m0_wo0_cm28_q <= "111111111";
                WHEN "11100" => u0_m0_wo0_cm28_q <= "111111101";
                WHEN "11101" => u0_m0_wo0_cm28_q <= "000001000";
                WHEN "11110" => u0_m0_wo0_cm28_q <= "000011000";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm28_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_38(MULT,204)@13 + 2
    u0_m0_wo0_mtree_mult1_38_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm28_q);
    u0_m0_wo0_mtree_mult1_38_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split28_b);
    u0_m0_wo0_mtree_mult1_38_reset <= areset;
    u0_m0_wo0_mtree_mult1_38_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 9,
        lpm_widthb => 12,
        lpm_widthp => 21,
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

    -- u0_m0_wo0_mtree_add0_19(ADD,262)@15 + 1
    u0_m0_wo0_mtree_add0_19_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 21 => u0_m0_wo0_mtree_mult1_38_q(20)) & u0_m0_wo0_mtree_mult1_38_q));
    u0_m0_wo0_mtree_add0_19_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 21 => u0_m0_wo0_mtree_mult1_39_q(20)) & u0_m0_wo0_mtree_mult1_39_q));
    u0_m0_wo0_mtree_add0_19_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_19_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_19_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_19_a) + SIGNED(u0_m0_wo0_mtree_add0_19_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_19_q <= u0_m0_wo0_mtree_add0_19_o(21 downto 0);

    -- u0_m0_wo0_cm29(LOOKUP,138)@12 + 1
    u0_m0_wo0_cm29_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm29_q <= "111111000";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca66_q) IS
                WHEN "00000" => u0_m0_wo0_cm29_q <= "111111000";
                WHEN "00001" => u0_m0_wo0_cm29_q <= "000000001";
                WHEN "00010" => u0_m0_wo0_cm29_q <= "111111001";
                WHEN "00011" => u0_m0_wo0_cm29_q <= "111101011";
                WHEN "00100" => u0_m0_wo0_cm29_q <= "111110000";
                WHEN "00101" => u0_m0_wo0_cm29_q <= "111110110";
                WHEN "00110" => u0_m0_wo0_cm29_q <= "111111110";
                WHEN "00111" => u0_m0_wo0_cm29_q <= "000000011";
                WHEN "01000" => u0_m0_wo0_cm29_q <= "000000000";
                WHEN "01001" => u0_m0_wo0_cm29_q <= "000001011";
                WHEN "01010" => u0_m0_wo0_cm29_q <= "000010111";
                WHEN "01011" => u0_m0_wo0_cm29_q <= "000001101";
                WHEN "01100" => u0_m0_wo0_cm29_q <= "000000100";
                WHEN "01101" => u0_m0_wo0_cm29_q <= "111111110";
                WHEN "01110" => u0_m0_wo0_cm29_q <= "111110111";
                WHEN "01111" => u0_m0_wo0_cm29_q <= "111110110";
                WHEN "10000" => u0_m0_wo0_cm29_q <= "111110010";
                WHEN "10001" => u0_m0_wo0_cm29_q <= "111101110";
                WHEN "10010" => u0_m0_wo0_cm29_q <= "111101110";
                WHEN "10011" => u0_m0_wo0_cm29_q <= "111100111";
                WHEN "10100" => u0_m0_wo0_cm29_q <= "111100011";
                WHEN "10101" => u0_m0_wo0_cm29_q <= "111110000";
                WHEN "10110" => u0_m0_wo0_cm29_q <= "111110111";
                WHEN "10111" => u0_m0_wo0_cm29_q <= "000000001";
                WHEN "11000" => u0_m0_wo0_cm29_q <= "000010001";
                WHEN "11001" => u0_m0_wo0_cm29_q <= "000011010";
                WHEN "11010" => u0_m0_wo0_cm29_q <= "000001101";
                WHEN "11011" => u0_m0_wo0_cm29_q <= "111101111";
                WHEN "11100" => u0_m0_wo0_cm29_q <= "111110000";
                WHEN "11101" => u0_m0_wo0_cm29_q <= "000001010";
                WHEN "11110" => u0_m0_wo0_cm29_q <= "000010000";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm29_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_37(MULT,205)@13 + 2
    u0_m0_wo0_mtree_mult1_37_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm29_q);
    u0_m0_wo0_mtree_mult1_37_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split28_c);
    u0_m0_wo0_mtree_mult1_37_reset <= areset;
    u0_m0_wo0_mtree_mult1_37_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 9,
        lpm_widthb => 12,
        lpm_widthp => 21,
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

    -- u0_m0_wo0_cm30(LOOKUP,139)@12 + 1
    u0_m0_wo0_cm30_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm30_q <= "111101101";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca66_q) IS
                WHEN "00000" => u0_m0_wo0_cm30_q <= "111101101";
                WHEN "00001" => u0_m0_wo0_cm30_q <= "111011000";
                WHEN "00010" => u0_m0_wo0_cm30_q <= "110110110";
                WHEN "00011" => u0_m0_wo0_cm30_q <= "110010101";
                WHEN "00100" => u0_m0_wo0_cm30_q <= "110110001";
                WHEN "00101" => u0_m0_wo0_cm30_q <= "111010100";
                WHEN "00110" => u0_m0_wo0_cm30_q <= "000000110";
                WHEN "00111" => u0_m0_wo0_cm30_q <= "000010010";
                WHEN "01000" => u0_m0_wo0_cm30_q <= "001000001";
                WHEN "01001" => u0_m0_wo0_cm30_q <= "001111100";
                WHEN "01010" => u0_m0_wo0_cm30_q <= "001110101";
                WHEN "01011" => u0_m0_wo0_cm30_q <= "111111001";
                WHEN "01100" => u0_m0_wo0_cm30_q <= "110001101";
                WHEN "01101" => u0_m0_wo0_cm30_q <= "111110111";
                WHEN "01110" => u0_m0_wo0_cm30_q <= "000101011";
                WHEN "01111" => u0_m0_wo0_cm30_q <= "000000110";
                WHEN "10000" => u0_m0_wo0_cm30_q <= "111110000";
                WHEN "10001" => u0_m0_wo0_cm30_q <= "000000000";
                WHEN "10010" => u0_m0_wo0_cm30_q <= "000001001";
                WHEN "10011" => u0_m0_wo0_cm30_q <= "111110010";
                WHEN "10100" => u0_m0_wo0_cm30_q <= "111100010";
                WHEN "10101" => u0_m0_wo0_cm30_q <= "111100100";
                WHEN "10110" => u0_m0_wo0_cm30_q <= "111101110";
                WHEN "10111" => u0_m0_wo0_cm30_q <= "111111101";
                WHEN "11000" => u0_m0_wo0_cm30_q <= "000000010";
                WHEN "11001" => u0_m0_wo0_cm30_q <= "111111100";
                WHEN "11010" => u0_m0_wo0_cm30_q <= "111111100";
                WHEN "11011" => u0_m0_wo0_cm30_q <= "000000000";
                WHEN "11100" => u0_m0_wo0_cm30_q <= "111111001";
                WHEN "11101" => u0_m0_wo0_cm30_q <= "111110100";
                WHEN "11110" => u0_m0_wo0_cm30_q <= "111110011";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm30_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_36(MULT,206)@13 + 2
    u0_m0_wo0_mtree_mult1_36_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm30_q);
    u0_m0_wo0_mtree_mult1_36_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split28_d);
    u0_m0_wo0_mtree_mult1_36_reset <= areset;
    u0_m0_wo0_mtree_mult1_36_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 9,
        lpm_widthb => 12,
        lpm_widthp => 21,
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

    -- u0_m0_wo0_mtree_add0_18(ADD,261)@15 + 1
    u0_m0_wo0_mtree_add0_18_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 21 => u0_m0_wo0_mtree_mult1_36_q(20)) & u0_m0_wo0_mtree_mult1_36_q));
    u0_m0_wo0_mtree_add0_18_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 21 => u0_m0_wo0_mtree_mult1_37_q(20)) & u0_m0_wo0_mtree_mult1_37_q));
    u0_m0_wo0_mtree_add0_18_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_18_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_18_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_18_a) + SIGNED(u0_m0_wo0_mtree_add0_18_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_18_q <= u0_m0_wo0_mtree_add0_18_o(21 downto 0);

    -- u0_m0_wo0_mtree_add1_9(ADD,285)@16 + 1
    u0_m0_wo0_mtree_add1_9_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((22 downto 22 => u0_m0_wo0_mtree_add0_18_q(21)) & u0_m0_wo0_mtree_add0_18_q));
    u0_m0_wo0_mtree_add1_9_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((22 downto 22 => u0_m0_wo0_mtree_add0_19_q(21)) & u0_m0_wo0_mtree_add0_19_q));
    u0_m0_wo0_mtree_add1_9_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_9_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_9_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_9_a) + SIGNED(u0_m0_wo0_mtree_add1_9_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_9_q <= u0_m0_wo0_mtree_add1_9_o(22 downto 0);

    -- u0_m0_wo0_wi0_r0_join31(BITJOIN,69)@13
    u0_m0_wo0_wi0_r0_join31_q <= u0_m0_wo0_wi0_r0_split31_c & u0_m0_wo0_wi0_r0_split31_b & u0_m0_wo0_wi0_r0_split28_d;

    -- u0_m0_wo0_wi0_r0_memr31(DUALMEM,71)@13
    u0_m0_wo0_wi0_r0_memr31_ia <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_join31_q);
    u0_m0_wo0_wi0_r0_memr31_aa <= u0_m0_wo0_wi0_r0_wa66_q;
    u0_m0_wo0_wi0_r0_memr31_ab <= u0_m0_wo0_wi0_r0_ra66_resize_b;
    u0_m0_wo0_wi0_r0_memr31_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "DUAL_PORT",
        width_a => 36,
        widthad_a => 6,
        numwords_a => 64,
        width_b => 36,
        widthad_b => 6,
        numwords_b => 64,
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
        wren_a => u0_m0_wo0_wi0_r0_we66_seq_q(0),
        address_b => u0_m0_wo0_wi0_r0_memr31_ab,
        q_b => u0_m0_wo0_wi0_r0_memr31_iq
    );
    u0_m0_wo0_wi0_r0_memr31_q <= u0_m0_wo0_wi0_r0_memr31_iq(35 downto 0);

    -- u0_m0_wo0_wi0_r0_split31(BITSELECT,70)@13
    u0_m0_wo0_wi0_r0_split31_b <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr31_q(11 downto 0));
    u0_m0_wo0_wi0_r0_split31_c <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr31_q(23 downto 12));
    u0_m0_wo0_wi0_r0_split31_d <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr31_q(35 downto 24));

    -- u0_m0_wo0_cm31(LOOKUP,140)@12 + 1
    u0_m0_wo0_cm31_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm31_q <= "110110010";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca66_q) IS
                WHEN "00000" => u0_m0_wo0_cm31_q <= "110110010";
                WHEN "00001" => u0_m0_wo0_cm31_q <= "110110011";
                WHEN "00010" => u0_m0_wo0_cm31_q <= "111001001";
                WHEN "00011" => u0_m0_wo0_cm31_q <= "111000110";
                WHEN "00100" => u0_m0_wo0_cm31_q <= "110110011";
                WHEN "00101" => u0_m0_wo0_cm31_q <= "111000010";
                WHEN "00110" => u0_m0_wo0_cm31_q <= "111011111";
                WHEN "00111" => u0_m0_wo0_cm31_q <= "111101110";
                WHEN "01000" => u0_m0_wo0_cm31_q <= "111110101";
                WHEN "01001" => u0_m0_wo0_cm31_q <= "111100100";
                WHEN "01010" => u0_m0_wo0_cm31_q <= "111001101";
                WHEN "01011" => u0_m0_wo0_cm31_q <= "111010110";
                WHEN "01100" => u0_m0_wo0_cm31_q <= "111100001";
                WHEN "01101" => u0_m0_wo0_cm31_q <= "111100000";
                WHEN "01110" => u0_m0_wo0_cm31_q <= "111010011";
                WHEN "01111" => u0_m0_wo0_cm31_q <= "110101101";
                WHEN "10000" => u0_m0_wo0_cm31_q <= "110011101";
                WHEN "10001" => u0_m0_wo0_cm31_q <= "110011000";
                WHEN "10010" => u0_m0_wo0_cm31_q <= "110001000";
                WHEN "10011" => u0_m0_wo0_cm31_q <= "110010110";
                WHEN "10100" => u0_m0_wo0_cm31_q <= "111011011";
                WHEN "10101" => u0_m0_wo0_cm31_q <= "000011111";
                WHEN "10110" => u0_m0_wo0_cm31_q <= "000110100";
                WHEN "10111" => u0_m0_wo0_cm31_q <= "000001010";
                WHEN "11000" => u0_m0_wo0_cm31_q <= "000000010";
                WHEN "11001" => u0_m0_wo0_cm31_q <= "000101100";
                WHEN "11010" => u0_m0_wo0_cm31_q <= "000110100";
                WHEN "11011" => u0_m0_wo0_cm31_q <= "000101111";
                WHEN "11100" => u0_m0_wo0_cm31_q <= "000010010";
                WHEN "11101" => u0_m0_wo0_cm31_q <= "000000010";
                WHEN "11110" => u0_m0_wo0_cm31_q <= "000000000";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm31_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_35(MULT,207)@13 + 2
    u0_m0_wo0_mtree_mult1_35_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm31_q);
    u0_m0_wo0_mtree_mult1_35_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split31_b);
    u0_m0_wo0_mtree_mult1_35_reset <= areset;
    u0_m0_wo0_mtree_mult1_35_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 9,
        lpm_widthb => 12,
        lpm_widthp => 21,
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

    -- u0_m0_wo0_cm32(LOOKUP,141)@12 + 1
    u0_m0_wo0_cm32_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm32_q <= "000110000";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca66_q) IS
                WHEN "00000" => u0_m0_wo0_cm32_q <= "000110000";
                WHEN "00001" => u0_m0_wo0_cm32_q <= "000110001";
                WHEN "00010" => u0_m0_wo0_cm32_q <= "000101101";
                WHEN "00011" => u0_m0_wo0_cm32_q <= "000101011";
                WHEN "00100" => u0_m0_wo0_cm32_q <= "000011011";
                WHEN "00101" => u0_m0_wo0_cm32_q <= "000001100";
                WHEN "00110" => u0_m0_wo0_cm32_q <= "111111100";
                WHEN "00111" => u0_m0_wo0_cm32_q <= "000000000";
                WHEN "01000" => u0_m0_wo0_cm32_q <= "000010011";
                WHEN "01001" => u0_m0_wo0_cm32_q <= "000011000";
                WHEN "01010" => u0_m0_wo0_cm32_q <= "000001011";
                WHEN "01011" => u0_m0_wo0_cm32_q <= "000001000";
                WHEN "01100" => u0_m0_wo0_cm32_q <= "000011011";
                WHEN "01101" => u0_m0_wo0_cm32_q <= "000010101";
                WHEN "01110" => u0_m0_wo0_cm32_q <= "000001010";
                WHEN "01111" => u0_m0_wo0_cm32_q <= "000010011";
                WHEN "10000" => u0_m0_wo0_cm32_q <= "000111101";
                WHEN "10001" => u0_m0_wo0_cm32_q <= "001010000";
                WHEN "10010" => u0_m0_wo0_cm32_q <= "000110010";
                WHEN "10011" => u0_m0_wo0_cm32_q <= "000010010";
                WHEN "10100" => u0_m0_wo0_cm32_q <= "000000011";
                WHEN "10101" => u0_m0_wo0_cm32_q <= "111110000";
                WHEN "10110" => u0_m0_wo0_cm32_q <= "111100111";
                WHEN "10111" => u0_m0_wo0_cm32_q <= "111111110";
                WHEN "11000" => u0_m0_wo0_cm32_q <= "000001110";
                WHEN "11001" => u0_m0_wo0_cm32_q <= "111110010";
                WHEN "11010" => u0_m0_wo0_cm32_q <= "110111100";
                WHEN "11011" => u0_m0_wo0_cm32_q <= "110101010";
                WHEN "11100" => u0_m0_wo0_cm32_q <= "111001001";
                WHEN "11101" => u0_m0_wo0_cm32_q <= "111010100";
                WHEN "11110" => u0_m0_wo0_cm32_q <= "110111111";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm32_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_34(MULT,208)@13 + 2
    u0_m0_wo0_mtree_mult1_34_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm32_q);
    u0_m0_wo0_mtree_mult1_34_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split31_c);
    u0_m0_wo0_mtree_mult1_34_reset <= areset;
    u0_m0_wo0_mtree_mult1_34_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 9,
        lpm_widthb => 12,
        lpm_widthp => 21,
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

    -- u0_m0_wo0_mtree_add0_17(ADD,260)@15 + 1
    u0_m0_wo0_mtree_add0_17_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 21 => u0_m0_wo0_mtree_mult1_34_q(20)) & u0_m0_wo0_mtree_mult1_34_q));
    u0_m0_wo0_mtree_add0_17_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 21 => u0_m0_wo0_mtree_mult1_35_q(20)) & u0_m0_wo0_mtree_mult1_35_q));
    u0_m0_wo0_mtree_add0_17_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_17_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_17_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_17_a) + SIGNED(u0_m0_wo0_mtree_add0_17_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_17_q <= u0_m0_wo0_mtree_add0_17_o(21 downto 0);

    -- u0_m0_wo0_cm33(LOOKUP,142)@12 + 1
    u0_m0_wo0_cm33_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm33_q <= "000000001";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca66_q) IS
                WHEN "00000" => u0_m0_wo0_cm33_q <= "000000001";
                WHEN "00001" => u0_m0_wo0_cm33_q <= "000000000";
                WHEN "00010" => u0_m0_wo0_cm33_q <= "000001100";
                WHEN "00011" => u0_m0_wo0_cm33_q <= "000001101";
                WHEN "00100" => u0_m0_wo0_cm33_q <= "000010011";
                WHEN "00101" => u0_m0_wo0_cm33_q <= "000100001";
                WHEN "00110" => u0_m0_wo0_cm33_q <= "000111000";
                WHEN "00111" => u0_m0_wo0_cm33_q <= "000111111";
                WHEN "01000" => u0_m0_wo0_cm33_q <= "000110000";
                WHEN "01001" => u0_m0_wo0_cm33_q <= "000100101";
                WHEN "01010" => u0_m0_wo0_cm33_q <= "000110010";
                WHEN "01011" => u0_m0_wo0_cm33_q <= "001001111";
                WHEN "01100" => u0_m0_wo0_cm33_q <= "001101011";
                WHEN "01101" => u0_m0_wo0_cm33_q <= "001110011";
                WHEN "01110" => u0_m0_wo0_cm33_q <= "001110010";
                WHEN "01111" => u0_m0_wo0_cm33_q <= "001110010";
                WHEN "10000" => u0_m0_wo0_cm33_q <= "001111010";
                WHEN "10001" => u0_m0_wo0_cm33_q <= "001101111";
                WHEN "10010" => u0_m0_wo0_cm33_q <= "001010001";
                WHEN "10011" => u0_m0_wo0_cm33_q <= "000111110";
                WHEN "10100" => u0_m0_wo0_cm33_q <= "000101100";
                WHEN "10101" => u0_m0_wo0_cm33_q <= "000011110";
                WHEN "10110" => u0_m0_wo0_cm33_q <= "000100011";
                WHEN "10111" => u0_m0_wo0_cm33_q <= "000101110";
                WHEN "11000" => u0_m0_wo0_cm33_q <= "000101000";
                WHEN "11001" => u0_m0_wo0_cm33_q <= "000001100";
                WHEN "11010" => u0_m0_wo0_cm33_q <= "111110010";
                WHEN "11011" => u0_m0_wo0_cm33_q <= "111110111";
                WHEN "11100" => u0_m0_wo0_cm33_q <= "000010010";
                WHEN "11101" => u0_m0_wo0_cm33_q <= "000100101";
                WHEN "11110" => u0_m0_wo0_cm33_q <= "000101010";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm33_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_33(MULT,209)@13 + 2
    u0_m0_wo0_mtree_mult1_33_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm33_q);
    u0_m0_wo0_mtree_mult1_33_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split31_d);
    u0_m0_wo0_mtree_mult1_33_reset <= areset;
    u0_m0_wo0_mtree_mult1_33_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 9,
        lpm_widthb => 12,
        lpm_widthp => 21,
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

    -- u0_m0_wo0_wi0_r0_join34(BITJOIN,72)@13
    u0_m0_wo0_wi0_r0_join34_q <= u0_m0_wo0_wi0_r0_split34_c & u0_m0_wo0_wi0_r0_split34_b & u0_m0_wo0_wi0_r0_split31_d;

    -- u0_m0_wo0_wi0_r0_memr34(DUALMEM,74)@13
    u0_m0_wo0_wi0_r0_memr34_ia <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_join34_q);
    u0_m0_wo0_wi0_r0_memr34_aa <= u0_m0_wo0_wi0_r0_wa66_q;
    u0_m0_wo0_wi0_r0_memr34_ab <= u0_m0_wo0_wi0_r0_ra66_resize_b;
    u0_m0_wo0_wi0_r0_memr34_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "DUAL_PORT",
        width_a => 36,
        widthad_a => 6,
        numwords_a => 64,
        width_b => 36,
        widthad_b => 6,
        numwords_b => 64,
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
        wren_a => u0_m0_wo0_wi0_r0_we66_seq_q(0),
        address_b => u0_m0_wo0_wi0_r0_memr34_ab,
        q_b => u0_m0_wo0_wi0_r0_memr34_iq
    );
    u0_m0_wo0_wi0_r0_memr34_q <= u0_m0_wo0_wi0_r0_memr34_iq(35 downto 0);

    -- u0_m0_wo0_wi0_r0_split34(BITSELECT,73)@13
    u0_m0_wo0_wi0_r0_split34_b <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr34_q(11 downto 0));
    u0_m0_wo0_wi0_r0_split34_c <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr34_q(23 downto 12));
    u0_m0_wo0_wi0_r0_split34_d <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr34_q(35 downto 24));

    -- u0_m0_wo0_cm34(LOOKUP,143)@12 + 1
    u0_m0_wo0_cm34_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm34_q <= "111110101";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca66_q) IS
                WHEN "00000" => u0_m0_wo0_cm34_q <= "111110101";
                WHEN "00001" => u0_m0_wo0_cm34_q <= "000000101";
                WHEN "00010" => u0_m0_wo0_cm34_q <= "000000101";
                WHEN "00011" => u0_m0_wo0_cm34_q <= "111111110";
                WHEN "00100" => u0_m0_wo0_cm34_q <= "111111000";
                WHEN "00101" => u0_m0_wo0_cm34_q <= "111110111";
                WHEN "00110" => u0_m0_wo0_cm34_q <= "111101100";
                WHEN "00111" => u0_m0_wo0_cm34_q <= "111100110";
                WHEN "01000" => u0_m0_wo0_cm34_q <= "111111111";
                WHEN "01001" => u0_m0_wo0_cm34_q <= "000010111";
                WHEN "01010" => u0_m0_wo0_cm34_q <= "000100000";
                WHEN "01011" => u0_m0_wo0_cm34_q <= "000100100";
                WHEN "01100" => u0_m0_wo0_cm34_q <= "000101001";
                WHEN "01101" => u0_m0_wo0_cm34_q <= "000100011";
                WHEN "01110" => u0_m0_wo0_cm34_q <= "000001101";
                WHEN "01111" => u0_m0_wo0_cm34_q <= "000001001";
                WHEN "10000" => u0_m0_wo0_cm34_q <= "000010101";
                WHEN "10001" => u0_m0_wo0_cm34_q <= "000011011";
                WHEN "10010" => u0_m0_wo0_cm34_q <= "000100010";
                WHEN "10011" => u0_m0_wo0_cm34_q <= "000100101";
                WHEN "10100" => u0_m0_wo0_cm34_q <= "000100100";
                WHEN "10101" => u0_m0_wo0_cm34_q <= "000100010";
                WHEN "10110" => u0_m0_wo0_cm34_q <= "000101100";
                WHEN "10111" => u0_m0_wo0_cm34_q <= "000110100";
                WHEN "11000" => u0_m0_wo0_cm34_q <= "000110100";
                WHEN "11001" => u0_m0_wo0_cm34_q <= "000110111";
                WHEN "11010" => u0_m0_wo0_cm34_q <= "000101001";
                WHEN "11011" => u0_m0_wo0_cm34_q <= "000100000";
                WHEN "11100" => u0_m0_wo0_cm34_q <= "000101010";
                WHEN "11101" => u0_m0_wo0_cm34_q <= "000100111";
                WHEN "11110" => u0_m0_wo0_cm34_q <= "000011010";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm34_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_32(MULT,210)@13 + 2
    u0_m0_wo0_mtree_mult1_32_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm34_q);
    u0_m0_wo0_mtree_mult1_32_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split34_b);
    u0_m0_wo0_mtree_mult1_32_reset <= areset;
    u0_m0_wo0_mtree_mult1_32_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 9,
        lpm_widthb => 12,
        lpm_widthp => 21,
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

    -- u0_m0_wo0_mtree_add0_16(ADD,259)@15 + 1
    u0_m0_wo0_mtree_add0_16_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 21 => u0_m0_wo0_mtree_mult1_32_q(20)) & u0_m0_wo0_mtree_mult1_32_q));
    u0_m0_wo0_mtree_add0_16_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 21 => u0_m0_wo0_mtree_mult1_33_q(20)) & u0_m0_wo0_mtree_mult1_33_q));
    u0_m0_wo0_mtree_add0_16_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_16_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_16_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_16_a) + SIGNED(u0_m0_wo0_mtree_add0_16_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_16_q <= u0_m0_wo0_mtree_add0_16_o(21 downto 0);

    -- u0_m0_wo0_mtree_add1_8(ADD,284)@16 + 1
    u0_m0_wo0_mtree_add1_8_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((22 downto 22 => u0_m0_wo0_mtree_add0_16_q(21)) & u0_m0_wo0_mtree_add0_16_q));
    u0_m0_wo0_mtree_add1_8_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((22 downto 22 => u0_m0_wo0_mtree_add0_17_q(21)) & u0_m0_wo0_mtree_add0_17_q));
    u0_m0_wo0_mtree_add1_8_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_8_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_8_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_8_a) + SIGNED(u0_m0_wo0_mtree_add1_8_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_8_q <= u0_m0_wo0_mtree_add1_8_o(22 downto 0);

    -- u0_m0_wo0_mtree_add2_4(ADD,297)@17 + 1
    u0_m0_wo0_mtree_add2_4_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((23 downto 23 => u0_m0_wo0_mtree_add1_8_q(22)) & u0_m0_wo0_mtree_add1_8_q));
    u0_m0_wo0_mtree_add2_4_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((23 downto 23 => u0_m0_wo0_mtree_add1_9_q(22)) & u0_m0_wo0_mtree_add1_9_q));
    u0_m0_wo0_mtree_add2_4_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add2_4_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add2_4_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add2_4_a) + SIGNED(u0_m0_wo0_mtree_add2_4_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add2_4_q <= u0_m0_wo0_mtree_add2_4_o(23 downto 0);

    -- u0_m0_wo0_mtree_add3_2(ADD,303)@18 + 1
    u0_m0_wo0_mtree_add3_2_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((24 downto 24 => u0_m0_wo0_mtree_add2_4_q(23)) & u0_m0_wo0_mtree_add2_4_q));
    u0_m0_wo0_mtree_add3_2_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((24 downto 24 => u0_m0_wo0_mtree_add2_5_q(23)) & u0_m0_wo0_mtree_add2_5_q));
    u0_m0_wo0_mtree_add3_2_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add3_2_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add3_2_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add3_2_a) + SIGNED(u0_m0_wo0_mtree_add3_2_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add3_2_q <= u0_m0_wo0_mtree_add3_2_o(24 downto 0);

    -- u0_m0_wo0_mtree_add4_1(ADD,306)@19 + 1
    u0_m0_wo0_mtree_add4_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 25 => u0_m0_wo0_mtree_add3_2_q(24)) & u0_m0_wo0_mtree_add3_2_q));
    u0_m0_wo0_mtree_add4_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 25 => u0_m0_wo0_mtree_add3_3_q(24)) & u0_m0_wo0_mtree_add3_3_q));
    u0_m0_wo0_mtree_add4_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add4_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add4_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add4_1_a) + SIGNED(u0_m0_wo0_mtree_add4_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add4_1_q <= u0_m0_wo0_mtree_add4_1_o(25 downto 0);

    -- u0_m0_wo0_cm35(LOOKUP,144)@12 + 1
    u0_m0_wo0_cm35_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm35_q <= "111110011";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca66_q) IS
                WHEN "00000" => u0_m0_wo0_cm35_q <= "111110011";
                WHEN "00001" => u0_m0_wo0_cm35_q <= "111111110";
                WHEN "00010" => u0_m0_wo0_cm35_q <= "111111011";
                WHEN "00011" => u0_m0_wo0_cm35_q <= "111110000";
                WHEN "00100" => u0_m0_wo0_cm35_q <= "111101100";
                WHEN "00101" => u0_m0_wo0_cm35_q <= "111100001";
                WHEN "00110" => u0_m0_wo0_cm35_q <= "111011000";
                WHEN "00111" => u0_m0_wo0_cm35_q <= "111011100";
                WHEN "01000" => u0_m0_wo0_cm35_q <= "111101100";
                WHEN "01001" => u0_m0_wo0_cm35_q <= "000000000";
                WHEN "01010" => u0_m0_wo0_cm35_q <= "111111110";
                WHEN "01011" => u0_m0_wo0_cm35_q <= "111101100";
                WHEN "01100" => u0_m0_wo0_cm35_q <= "111100010";
                WHEN "01101" => u0_m0_wo0_cm35_q <= "111100100";
                WHEN "01110" => u0_m0_wo0_cm35_q <= "111101000";
                WHEN "01111" => u0_m0_wo0_cm35_q <= "111101010";
                WHEN "10000" => u0_m0_wo0_cm35_q <= "111101101";
                WHEN "10001" => u0_m0_wo0_cm35_q <= "111110011";
                WHEN "10010" => u0_m0_wo0_cm35_q <= "111111000";
                WHEN "10011" => u0_m0_wo0_cm35_q <= "111111101";
                WHEN "10100" => u0_m0_wo0_cm35_q <= "000000000";
                WHEN "10101" => u0_m0_wo0_cm35_q <= "000001000";
                WHEN "10110" => u0_m0_wo0_cm35_q <= "000001111";
                WHEN "10111" => u0_m0_wo0_cm35_q <= "000000011";
                WHEN "11000" => u0_m0_wo0_cm35_q <= "111101100";
                WHEN "11001" => u0_m0_wo0_cm35_q <= "111101010";
                WHEN "11010" => u0_m0_wo0_cm35_q <= "000000000";
                WHEN "11011" => u0_m0_wo0_cm35_q <= "000010000";
                WHEN "11100" => u0_m0_wo0_cm35_q <= "000010110";
                WHEN "11101" => u0_m0_wo0_cm35_q <= "000001000";
                WHEN "11110" => u0_m0_wo0_cm35_q <= "111110010";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm35_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_31(MULT,211)@13 + 2
    u0_m0_wo0_mtree_mult1_31_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm35_q);
    u0_m0_wo0_mtree_mult1_31_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split34_c);
    u0_m0_wo0_mtree_mult1_31_reset <= areset;
    u0_m0_wo0_mtree_mult1_31_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 9,
        lpm_widthb => 12,
        lpm_widthp => 21,
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

    -- u0_m0_wo0_cm36(LOOKUP,145)@12 + 1
    u0_m0_wo0_cm36_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm36_q <= "111100111";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca66_q) IS
                WHEN "00000" => u0_m0_wo0_cm36_q <= "111100111";
                WHEN "00001" => u0_m0_wo0_cm36_q <= "111110101";
                WHEN "00010" => u0_m0_wo0_cm36_q <= "000000001";
                WHEN "00011" => u0_m0_wo0_cm36_q <= "000000110";
                WHEN "00100" => u0_m0_wo0_cm36_q <= "000000100";
                WHEN "00101" => u0_m0_wo0_cm36_q <= "111111110";
                WHEN "00110" => u0_m0_wo0_cm36_q <= "111101010";
                WHEN "00111" => u0_m0_wo0_cm36_q <= "111011100";
                WHEN "01000" => u0_m0_wo0_cm36_q <= "111011101";
                WHEN "01001" => u0_m0_wo0_cm36_q <= "111101011";
                WHEN "01010" => u0_m0_wo0_cm36_q <= "111110101";
                WHEN "01011" => u0_m0_wo0_cm36_q <= "111111001";
                WHEN "01100" => u0_m0_wo0_cm36_q <= "111111011";
                WHEN "01101" => u0_m0_wo0_cm36_q <= "111110000";
                WHEN "01110" => u0_m0_wo0_cm36_q <= "111100011";
                WHEN "01111" => u0_m0_wo0_cm36_q <= "111101010";
                WHEN "10000" => u0_m0_wo0_cm36_q <= "111111011";
                WHEN "10001" => u0_m0_wo0_cm36_q <= "111111101";
                WHEN "10010" => u0_m0_wo0_cm36_q <= "111101101";
                WHEN "10011" => u0_m0_wo0_cm36_q <= "111100011";
                WHEN "10100" => u0_m0_wo0_cm36_q <= "111100101";
                WHEN "10101" => u0_m0_wo0_cm36_q <= "111100111";
                WHEN "10110" => u0_m0_wo0_cm36_q <= "111101011";
                WHEN "10111" => u0_m0_wo0_cm36_q <= "111110101";
                WHEN "11000" => u0_m0_wo0_cm36_q <= "111110101";
                WHEN "11001" => u0_m0_wo0_cm36_q <= "111100111";
                WHEN "11010" => u0_m0_wo0_cm36_q <= "111011011";
                WHEN "11011" => u0_m0_wo0_cm36_q <= "111010110";
                WHEN "11100" => u0_m0_wo0_cm36_q <= "111010011";
                WHEN "11101" => u0_m0_wo0_cm36_q <= "111011010";
                WHEN "11110" => u0_m0_wo0_cm36_q <= "111101000";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm36_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_30(MULT,212)@13 + 2
    u0_m0_wo0_mtree_mult1_30_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm36_q);
    u0_m0_wo0_mtree_mult1_30_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split34_d);
    u0_m0_wo0_mtree_mult1_30_reset <= areset;
    u0_m0_wo0_mtree_mult1_30_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 9,
        lpm_widthb => 12,
        lpm_widthp => 21,
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

    -- u0_m0_wo0_mtree_add0_15(ADD,258)@15 + 1
    u0_m0_wo0_mtree_add0_15_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 21 => u0_m0_wo0_mtree_mult1_30_q(20)) & u0_m0_wo0_mtree_mult1_30_q));
    u0_m0_wo0_mtree_add0_15_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 21 => u0_m0_wo0_mtree_mult1_31_q(20)) & u0_m0_wo0_mtree_mult1_31_q));
    u0_m0_wo0_mtree_add0_15_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_15_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_15_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_15_a) + SIGNED(u0_m0_wo0_mtree_add0_15_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_15_q <= u0_m0_wo0_mtree_add0_15_o(21 downto 0);

    -- u0_m0_wo0_wi0_r0_join37(BITJOIN,75)@13
    u0_m0_wo0_wi0_r0_join37_q <= u0_m0_wo0_wi0_r0_split37_c & u0_m0_wo0_wi0_r0_split37_b & u0_m0_wo0_wi0_r0_split34_d;

    -- u0_m0_wo0_wi0_r0_memr37(DUALMEM,77)@13
    u0_m0_wo0_wi0_r0_memr37_ia <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_join37_q);
    u0_m0_wo0_wi0_r0_memr37_aa <= u0_m0_wo0_wi0_r0_wa66_q;
    u0_m0_wo0_wi0_r0_memr37_ab <= u0_m0_wo0_wi0_r0_ra66_resize_b;
    u0_m0_wo0_wi0_r0_memr37_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "DUAL_PORT",
        width_a => 36,
        widthad_a => 6,
        numwords_a => 64,
        width_b => 36,
        widthad_b => 6,
        numwords_b => 64,
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
        wren_a => u0_m0_wo0_wi0_r0_we66_seq_q(0),
        address_b => u0_m0_wo0_wi0_r0_memr37_ab,
        q_b => u0_m0_wo0_wi0_r0_memr37_iq
    );
    u0_m0_wo0_wi0_r0_memr37_q <= u0_m0_wo0_wi0_r0_memr37_iq(35 downto 0);

    -- u0_m0_wo0_wi0_r0_split37(BITSELECT,76)@13
    u0_m0_wo0_wi0_r0_split37_b <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr37_q(11 downto 0));
    u0_m0_wo0_wi0_r0_split37_c <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr37_q(23 downto 12));
    u0_m0_wo0_wi0_r0_split37_d <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr37_q(35 downto 24));

    -- u0_m0_wo0_cm37(LOOKUP,146)@12 + 1
    u0_m0_wo0_cm37_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm37_q <= "000010011";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca66_q) IS
                WHEN "00000" => u0_m0_wo0_cm37_q <= "000010011";
                WHEN "00001" => u0_m0_wo0_cm37_q <= "000001100";
                WHEN "00010" => u0_m0_wo0_cm37_q <= "000000100";
                WHEN "00011" => u0_m0_wo0_cm37_q <= "000000010";
                WHEN "00100" => u0_m0_wo0_cm37_q <= "000000101";
                WHEN "00101" => u0_m0_wo0_cm37_q <= "000000101";
                WHEN "00110" => u0_m0_wo0_cm37_q <= "000001001";
                WHEN "00111" => u0_m0_wo0_cm37_q <= "000001010";
                WHEN "01000" => u0_m0_wo0_cm37_q <= "000000101";
                WHEN "01001" => u0_m0_wo0_cm37_q <= "000001101";
                WHEN "01010" => u0_m0_wo0_cm37_q <= "000001011";
                WHEN "01011" => u0_m0_wo0_cm37_q <= "111110011";
                WHEN "01100" => u0_m0_wo0_cm37_q <= "111011100";
                WHEN "01101" => u0_m0_wo0_cm37_q <= "111001110";
                WHEN "01110" => u0_m0_wo0_cm37_q <= "111001101";
                WHEN "01111" => u0_m0_wo0_cm37_q <= "111011100";
                WHEN "10000" => u0_m0_wo0_cm37_q <= "111100100";
                WHEN "10001" => u0_m0_wo0_cm37_q <= "111110011";
                WHEN "10010" => u0_m0_wo0_cm37_q <= "000000011";
                WHEN "10011" => u0_m0_wo0_cm37_q <= "000000001";
                WHEN "10100" => u0_m0_wo0_cm37_q <= "111111001";
                WHEN "10101" => u0_m0_wo0_cm37_q <= "111110110";
                WHEN "10110" => u0_m0_wo0_cm37_q <= "111111010";
                WHEN "10111" => u0_m0_wo0_cm37_q <= "111110011";
                WHEN "11000" => u0_m0_wo0_cm37_q <= "111100110";
                WHEN "11001" => u0_m0_wo0_cm37_q <= "111100010";
                WHEN "11010" => u0_m0_wo0_cm37_q <= "111100011";
                WHEN "11011" => u0_m0_wo0_cm37_q <= "111100111";
                WHEN "11100" => u0_m0_wo0_cm37_q <= "111100100";
                WHEN "11101" => u0_m0_wo0_cm37_q <= "111010111";
                WHEN "11110" => u0_m0_wo0_cm37_q <= "111011001";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm37_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_29(MULT,213)@13 + 2
    u0_m0_wo0_mtree_mult1_29_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm37_q);
    u0_m0_wo0_mtree_mult1_29_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split37_b);
    u0_m0_wo0_mtree_mult1_29_reset <= areset;
    u0_m0_wo0_mtree_mult1_29_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 9,
        lpm_widthb => 12,
        lpm_widthp => 21,
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

    -- u0_m0_wo0_cm38(LOOKUP,147)@12 + 1
    u0_m0_wo0_cm38_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm38_q <= "111110100";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca66_q) IS
                WHEN "00000" => u0_m0_wo0_cm38_q <= "111110100";
                WHEN "00001" => u0_m0_wo0_cm38_q <= "111100110";
                WHEN "00010" => u0_m0_wo0_cm38_q <= "111100001";
                WHEN "00011" => u0_m0_wo0_cm38_q <= "111101100";
                WHEN "00100" => u0_m0_wo0_cm38_q <= "111110000";
                WHEN "00101" => u0_m0_wo0_cm38_q <= "111101101";
                WHEN "00110" => u0_m0_wo0_cm38_q <= "111111101";
                WHEN "00111" => u0_m0_wo0_cm38_q <= "000001100";
                WHEN "01000" => u0_m0_wo0_cm38_q <= "000000001";
                WHEN "01001" => u0_m0_wo0_cm38_q <= "111101111";
                WHEN "01010" => u0_m0_wo0_cm38_q <= "111100011";
                WHEN "01011" => u0_m0_wo0_cm38_q <= "111100100";
                WHEN "01100" => u0_m0_wo0_cm38_q <= "111110010";
                WHEN "01101" => u0_m0_wo0_cm38_q <= "111111101";
                WHEN "01110" => u0_m0_wo0_cm38_q <= "000000000";
                WHEN "01111" => u0_m0_wo0_cm38_q <= "000000111";
                WHEN "10000" => u0_m0_wo0_cm38_q <= "000000110";
                WHEN "10001" => u0_m0_wo0_cm38_q <= "000000001";
                WHEN "10010" => u0_m0_wo0_cm38_q <= "111110100";
                WHEN "10011" => u0_m0_wo0_cm38_q <= "111101001";
                WHEN "10100" => u0_m0_wo0_cm38_q <= "111101000";
                WHEN "10101" => u0_m0_wo0_cm38_q <= "111101000";
                WHEN "10110" => u0_m0_wo0_cm38_q <= "111101101";
                WHEN "10111" => u0_m0_wo0_cm38_q <= "111111100";
                WHEN "11000" => u0_m0_wo0_cm38_q <= "000001001";
                WHEN "11001" => u0_m0_wo0_cm38_q <= "000000100";
                WHEN "11010" => u0_m0_wo0_cm38_q <= "111111110";
                WHEN "11011" => u0_m0_wo0_cm38_q <= "111111111";
                WHEN "11100" => u0_m0_wo0_cm38_q <= "000000100";
                WHEN "11101" => u0_m0_wo0_cm38_q <= "000001101";
                WHEN "11110" => u0_m0_wo0_cm38_q <= "000010010";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm38_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_28(MULT,214)@13 + 2
    u0_m0_wo0_mtree_mult1_28_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm38_q);
    u0_m0_wo0_mtree_mult1_28_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split37_c);
    u0_m0_wo0_mtree_mult1_28_reset <= areset;
    u0_m0_wo0_mtree_mult1_28_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 9,
        lpm_widthb => 12,
        lpm_widthp => 21,
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

    -- u0_m0_wo0_mtree_add0_14(ADD,257)@15 + 1
    u0_m0_wo0_mtree_add0_14_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 21 => u0_m0_wo0_mtree_mult1_28_q(20)) & u0_m0_wo0_mtree_mult1_28_q));
    u0_m0_wo0_mtree_add0_14_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 21 => u0_m0_wo0_mtree_mult1_29_q(20)) & u0_m0_wo0_mtree_mult1_29_q));
    u0_m0_wo0_mtree_add0_14_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_14_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_14_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_14_a) + SIGNED(u0_m0_wo0_mtree_add0_14_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_14_q <= u0_m0_wo0_mtree_add0_14_o(21 downto 0);

    -- u0_m0_wo0_mtree_add1_7(ADD,283)@16 + 1
    u0_m0_wo0_mtree_add1_7_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((22 downto 22 => u0_m0_wo0_mtree_add0_14_q(21)) & u0_m0_wo0_mtree_add0_14_q));
    u0_m0_wo0_mtree_add1_7_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((22 downto 22 => u0_m0_wo0_mtree_add0_15_q(21)) & u0_m0_wo0_mtree_add0_15_q));
    u0_m0_wo0_mtree_add1_7_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_7_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_7_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_7_a) + SIGNED(u0_m0_wo0_mtree_add1_7_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_7_q <= u0_m0_wo0_mtree_add1_7_o(22 downto 0);

    -- u0_m0_wo0_cm39(LOOKUP,148)@12 + 1
    u0_m0_wo0_cm39_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm39_q <= "000011110";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca66_q) IS
                WHEN "00000" => u0_m0_wo0_cm39_q <= "000011110";
                WHEN "00001" => u0_m0_wo0_cm39_q <= "000000000";
                WHEN "00010" => u0_m0_wo0_cm39_q <= "111111000";
                WHEN "00011" => u0_m0_wo0_cm39_q <= "000010100";
                WHEN "00100" => u0_m0_wo0_cm39_q <= "000001001";
                WHEN "00101" => u0_m0_wo0_cm39_q <= "111010110";
                WHEN "00110" => u0_m0_wo0_cm39_q <= "110001010";
                WHEN "00111" => u0_m0_wo0_cm39_q <= "101101001";
                WHEN "01000" => u0_m0_wo0_cm39_q <= "110011101";
                WHEN "01001" => u0_m0_wo0_cm39_q <= "111010100";
                WHEN "01010" => u0_m0_wo0_cm39_q <= "000000011";
                WHEN "01011" => u0_m0_wo0_cm39_q <= "000111111";
                WHEN "01100" => u0_m0_wo0_cm39_q <= "001100111";
                WHEN "01101" => u0_m0_wo0_cm39_q <= "010000111";
                WHEN "01110" => u0_m0_wo0_cm39_q <= "001011000";
                WHEN "01111" => u0_m0_wo0_cm39_q <= "111101000";
                WHEN "10000" => u0_m0_wo0_cm39_q <= "110011111";
                WHEN "10001" => u0_m0_wo0_cm39_q <= "110011000";
                WHEN "10010" => u0_m0_wo0_cm39_q <= "111110010";
                WHEN "10011" => u0_m0_wo0_cm39_q <= "001000011";
                WHEN "10100" => u0_m0_wo0_cm39_q <= "000101110";
                WHEN "10101" => u0_m0_wo0_cm39_q <= "000001001";
                WHEN "10110" => u0_m0_wo0_cm39_q <= "000000010";
                WHEN "10111" => u0_m0_wo0_cm39_q <= "000001011";
                WHEN "11000" => u0_m0_wo0_cm39_q <= "000001001";
                WHEN "11001" => u0_m0_wo0_cm39_q <= "111101111";
                WHEN "11010" => u0_m0_wo0_cm39_q <= "111011111";
                WHEN "11011" => u0_m0_wo0_cm39_q <= "111101010";
                WHEN "11100" => u0_m0_wo0_cm39_q <= "111110100";
                WHEN "11101" => u0_m0_wo0_cm39_q <= "111110100";
                WHEN "11110" => u0_m0_wo0_cm39_q <= "111110101";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm39_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_27(MULT,215)@13 + 2
    u0_m0_wo0_mtree_mult1_27_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm39_q);
    u0_m0_wo0_mtree_mult1_27_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split37_d);
    u0_m0_wo0_mtree_mult1_27_reset <= areset;
    u0_m0_wo0_mtree_mult1_27_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 9,
        lpm_widthb => 12,
        lpm_widthp => 21,
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

    -- u0_m0_wo0_wi0_r0_join40(BITJOIN,78)@13
    u0_m0_wo0_wi0_r0_join40_q <= u0_m0_wo0_wi0_r0_split40_c & u0_m0_wo0_wi0_r0_split40_b & u0_m0_wo0_wi0_r0_split37_d;

    -- u0_m0_wo0_wi0_r0_memr40(DUALMEM,80)@13
    u0_m0_wo0_wi0_r0_memr40_ia <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_join40_q);
    u0_m0_wo0_wi0_r0_memr40_aa <= u0_m0_wo0_wi0_r0_wa66_q;
    u0_m0_wo0_wi0_r0_memr40_ab <= u0_m0_wo0_wi0_r0_ra66_resize_b;
    u0_m0_wo0_wi0_r0_memr40_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "DUAL_PORT",
        width_a => 36,
        widthad_a => 6,
        numwords_a => 64,
        width_b => 36,
        widthad_b => 6,
        numwords_b => 64,
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
        wren_a => u0_m0_wo0_wi0_r0_we66_seq_q(0),
        address_b => u0_m0_wo0_wi0_r0_memr40_ab,
        q_b => u0_m0_wo0_wi0_r0_memr40_iq
    );
    u0_m0_wo0_wi0_r0_memr40_q <= u0_m0_wo0_wi0_r0_memr40_iq(35 downto 0);

    -- u0_m0_wo0_wi0_r0_split40(BITSELECT,79)@13
    u0_m0_wo0_wi0_r0_split40_b <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr40_q(11 downto 0));
    u0_m0_wo0_wi0_r0_split40_c <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr40_q(23 downto 12));
    u0_m0_wo0_wi0_r0_split40_d <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr40_q(35 downto 24));

    -- u0_m0_wo0_cm40(LOOKUP,149)@12 + 1
    u0_m0_wo0_cm40_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm40_q <= "101111010";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca66_q) IS
                WHEN "00000" => u0_m0_wo0_cm40_q <= "101111010";
                WHEN "00001" => u0_m0_wo0_cm40_q <= "110001010";
                WHEN "00010" => u0_m0_wo0_cm40_q <= "110101011";
                WHEN "00011" => u0_m0_wo0_cm40_q <= "111000111";
                WHEN "00100" => u0_m0_wo0_cm40_q <= "111000101";
                WHEN "00101" => u0_m0_wo0_cm40_q <= "111000000";
                WHEN "00110" => u0_m0_wo0_cm40_q <= "111000010";
                WHEN "00111" => u0_m0_wo0_cm40_q <= "111001101";
                WHEN "01000" => u0_m0_wo0_cm40_q <= "111100011";
                WHEN "01001" => u0_m0_wo0_cm40_q <= "111111111";
                WHEN "01010" => u0_m0_wo0_cm40_q <= "000001100";
                WHEN "01011" => u0_m0_wo0_cm40_q <= "000001101";
                WHEN "01100" => u0_m0_wo0_cm40_q <= "111110111";
                WHEN "01101" => u0_m0_wo0_cm40_q <= "111011010";
                WHEN "01110" => u0_m0_wo0_cm40_q <= "111000111";
                WHEN "01111" => u0_m0_wo0_cm40_q <= "111000000";
                WHEN "10000" => u0_m0_wo0_cm40_q <= "111010011";
                WHEN "10001" => u0_m0_wo0_cm40_q <= "111101101";
                WHEN "10010" => u0_m0_wo0_cm40_q <= "111110100";
                WHEN "10011" => u0_m0_wo0_cm40_q <= "111111100";
                WHEN "10100" => u0_m0_wo0_cm40_q <= "000000000";
                WHEN "10101" => u0_m0_wo0_cm40_q <= "000000010";
                WHEN "10110" => u0_m0_wo0_cm40_q <= "000001010";
                WHEN "10111" => u0_m0_wo0_cm40_q <= "000010001";
                WHEN "11000" => u0_m0_wo0_cm40_q <= "000001010";
                WHEN "11001" => u0_m0_wo0_cm40_q <= "111111000";
                WHEN "11010" => u0_m0_wo0_cm40_q <= "111111010";
                WHEN "11011" => u0_m0_wo0_cm40_q <= "000001101";
                WHEN "11100" => u0_m0_wo0_cm40_q <= "000011001";
                WHEN "11101" => u0_m0_wo0_cm40_q <= "000011100";
                WHEN "11110" => u0_m0_wo0_cm40_q <= "000100000";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm40_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_26(MULT,216)@13 + 2
    u0_m0_wo0_mtree_mult1_26_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm40_q);
    u0_m0_wo0_mtree_mult1_26_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split40_b);
    u0_m0_wo0_mtree_mult1_26_reset <= areset;
    u0_m0_wo0_mtree_mult1_26_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 9,
        lpm_widthb => 12,
        lpm_widthp => 21,
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

    -- u0_m0_wo0_mtree_add0_13(ADD,256)@15 + 1
    u0_m0_wo0_mtree_add0_13_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 21 => u0_m0_wo0_mtree_mult1_26_q(20)) & u0_m0_wo0_mtree_mult1_26_q));
    u0_m0_wo0_mtree_add0_13_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 21 => u0_m0_wo0_mtree_mult1_27_q(20)) & u0_m0_wo0_mtree_mult1_27_q));
    u0_m0_wo0_mtree_add0_13_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_13_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_13_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_13_a) + SIGNED(u0_m0_wo0_mtree_add0_13_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_13_q <= u0_m0_wo0_mtree_add0_13_o(21 downto 0);

    -- u0_m0_wo0_cm41(LOOKUP,150)@12 + 1
    u0_m0_wo0_cm41_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm41_q <= "001011010";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca66_q) IS
                WHEN "00000" => u0_m0_wo0_cm41_q <= "001011010";
                WHEN "00001" => u0_m0_wo0_cm41_q <= "001000101";
                WHEN "00010" => u0_m0_wo0_cm41_q <= "000100010";
                WHEN "00011" => u0_m0_wo0_cm41_q <= "000011100";
                WHEN "00100" => u0_m0_wo0_cm41_q <= "000010011";
                WHEN "00101" => u0_m0_wo0_cm41_q <= "000001000";
                WHEN "00110" => u0_m0_wo0_cm41_q <= "000001110";
                WHEN "00111" => u0_m0_wo0_cm41_q <= "000101110";
                WHEN "01000" => u0_m0_wo0_cm41_q <= "001010100";
                WHEN "01001" => u0_m0_wo0_cm41_q <= "001000101";
                WHEN "01010" => u0_m0_wo0_cm41_q <= "000110100";
                WHEN "01011" => u0_m0_wo0_cm41_q <= "001010000";
                WHEN "01100" => u0_m0_wo0_cm41_q <= "001100110";
                WHEN "01101" => u0_m0_wo0_cm41_q <= "001001011";
                WHEN "01110" => u0_m0_wo0_cm41_q <= "000001110";
                WHEN "01111" => u0_m0_wo0_cm41_q <= "111111101";
                WHEN "10000" => u0_m0_wo0_cm41_q <= "000011001";
                WHEN "10001" => u0_m0_wo0_cm41_q <= "000100011";
                WHEN "10010" => u0_m0_wo0_cm41_q <= "000011110";
                WHEN "10011" => u0_m0_wo0_cm41_q <= "000100101";
                WHEN "10100" => u0_m0_wo0_cm41_q <= "000100011";
                WHEN "10101" => u0_m0_wo0_cm41_q <= "000010001";
                WHEN "10110" => u0_m0_wo0_cm41_q <= "111111111";
                WHEN "10111" => u0_m0_wo0_cm41_q <= "111101101";
                WHEN "11000" => u0_m0_wo0_cm41_q <= "111011111";
                WHEN "11001" => u0_m0_wo0_cm41_q <= "111100000";
                WHEN "11010" => u0_m0_wo0_cm41_q <= "111101100";
                WHEN "11011" => u0_m0_wo0_cm41_q <= "111100011";
                WHEN "11100" => u0_m0_wo0_cm41_q <= "111000000";
                WHEN "11101" => u0_m0_wo0_cm41_q <= "110011111";
                WHEN "11110" => u0_m0_wo0_cm41_q <= "110000011";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm41_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_25(MULT,217)@13 + 2
    u0_m0_wo0_mtree_mult1_25_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm41_q);
    u0_m0_wo0_mtree_mult1_25_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split40_c);
    u0_m0_wo0_mtree_mult1_25_reset <= areset;
    u0_m0_wo0_mtree_mult1_25_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 9,
        lpm_widthb => 12,
        lpm_widthp => 21,
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

    -- u0_m0_wo0_cm42(LOOKUP,151)@12 + 1
    u0_m0_wo0_cm42_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm42_q <= "000111110";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca66_q) IS
                WHEN "00000" => u0_m0_wo0_cm42_q <= "000111110";
                WHEN "00001" => u0_m0_wo0_cm42_q <= "000110011";
                WHEN "00010" => u0_m0_wo0_cm42_q <= "000100111";
                WHEN "00011" => u0_m0_wo0_cm42_q <= "000011000";
                WHEN "00100" => u0_m0_wo0_cm42_q <= "000001100";
                WHEN "00101" => u0_m0_wo0_cm42_q <= "000011000";
                WHEN "00110" => u0_m0_wo0_cm42_q <= "000010011";
                WHEN "00111" => u0_m0_wo0_cm42_q <= "111111110";
                WHEN "01000" => u0_m0_wo0_cm42_q <= "111111011";
                WHEN "01001" => u0_m0_wo0_cm42_q <= "000000000";
                WHEN "01010" => u0_m0_wo0_cm42_q <= "000000001";
                WHEN "01011" => u0_m0_wo0_cm42_q <= "000011101";
                WHEN "01100" => u0_m0_wo0_cm42_q <= "001010111";
                WHEN "01101" => u0_m0_wo0_cm42_q <= "001110011";
                WHEN "01110" => u0_m0_wo0_cm42_q <= "001011010";
                WHEN "01111" => u0_m0_wo0_cm42_q <= "000101101";
                WHEN "10000" => u0_m0_wo0_cm42_q <= "000011100";
                WHEN "10001" => u0_m0_wo0_cm42_q <= "000101001";
                WHEN "10010" => u0_m0_wo0_cm42_q <= "000110011";
                WHEN "10011" => u0_m0_wo0_cm42_q <= "000010110";
                WHEN "10100" => u0_m0_wo0_cm42_q <= "111101111";
                WHEN "10101" => u0_m0_wo0_cm42_q <= "111110001";
                WHEN "10110" => u0_m0_wo0_cm42_q <= "000010001";
                WHEN "10111" => u0_m0_wo0_cm42_q <= "000101101";
                WHEN "11000" => u0_m0_wo0_cm42_q <= "000101101";
                WHEN "11001" => u0_m0_wo0_cm42_q <= "000101100";
                WHEN "11010" => u0_m0_wo0_cm42_q <= "001000010";
                WHEN "11011" => u0_m0_wo0_cm42_q <= "000110111";
                WHEN "11100" => u0_m0_wo0_cm42_q <= "000000111";
                WHEN "11101" => u0_m0_wo0_cm42_q <= "111111000";
                WHEN "11110" => u0_m0_wo0_cm42_q <= "000101010";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm42_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_24(MULT,218)@13 + 2
    u0_m0_wo0_mtree_mult1_24_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm42_q);
    u0_m0_wo0_mtree_mult1_24_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split40_d);
    u0_m0_wo0_mtree_mult1_24_reset <= areset;
    u0_m0_wo0_mtree_mult1_24_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 9,
        lpm_widthb => 12,
        lpm_widthp => 21,
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

    -- u0_m0_wo0_mtree_add0_12(ADD,255)@15 + 1
    u0_m0_wo0_mtree_add0_12_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 21 => u0_m0_wo0_mtree_mult1_24_q(20)) & u0_m0_wo0_mtree_mult1_24_q));
    u0_m0_wo0_mtree_add0_12_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 21 => u0_m0_wo0_mtree_mult1_25_q(20)) & u0_m0_wo0_mtree_mult1_25_q));
    u0_m0_wo0_mtree_add0_12_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_12_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_12_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_12_a) + SIGNED(u0_m0_wo0_mtree_add0_12_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_12_q <= u0_m0_wo0_mtree_add0_12_o(21 downto 0);

    -- u0_m0_wo0_mtree_add1_6(ADD,282)@16 + 1
    u0_m0_wo0_mtree_add1_6_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((22 downto 22 => u0_m0_wo0_mtree_add0_12_q(21)) & u0_m0_wo0_mtree_add0_12_q));
    u0_m0_wo0_mtree_add1_6_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((22 downto 22 => u0_m0_wo0_mtree_add0_13_q(21)) & u0_m0_wo0_mtree_add0_13_q));
    u0_m0_wo0_mtree_add1_6_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_6_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_6_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_6_a) + SIGNED(u0_m0_wo0_mtree_add1_6_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_6_q <= u0_m0_wo0_mtree_add1_6_o(22 downto 0);

    -- u0_m0_wo0_mtree_add2_3(ADD,296)@17 + 1
    u0_m0_wo0_mtree_add2_3_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((23 downto 23 => u0_m0_wo0_mtree_add1_6_q(22)) & u0_m0_wo0_mtree_add1_6_q));
    u0_m0_wo0_mtree_add2_3_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((23 downto 23 => u0_m0_wo0_mtree_add1_7_q(22)) & u0_m0_wo0_mtree_add1_7_q));
    u0_m0_wo0_mtree_add2_3_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add2_3_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add2_3_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add2_3_a) + SIGNED(u0_m0_wo0_mtree_add2_3_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add2_3_q <= u0_m0_wo0_mtree_add2_3_o(23 downto 0);

    -- u0_m0_wo0_wi0_r0_join43(BITJOIN,81)@13
    u0_m0_wo0_wi0_r0_join43_q <= u0_m0_wo0_wi0_r0_split43_c & u0_m0_wo0_wi0_r0_split43_b & u0_m0_wo0_wi0_r0_split40_d;

    -- u0_m0_wo0_wi0_r0_memr43(DUALMEM,83)@13
    u0_m0_wo0_wi0_r0_memr43_ia <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_join43_q);
    u0_m0_wo0_wi0_r0_memr43_aa <= u0_m0_wo0_wi0_r0_wa66_q;
    u0_m0_wo0_wi0_r0_memr43_ab <= u0_m0_wo0_wi0_r0_ra66_resize_b;
    u0_m0_wo0_wi0_r0_memr43_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "DUAL_PORT",
        width_a => 36,
        widthad_a => 6,
        numwords_a => 64,
        width_b => 36,
        widthad_b => 6,
        numwords_b => 64,
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
        wren_a => u0_m0_wo0_wi0_r0_we66_seq_q(0),
        address_b => u0_m0_wo0_wi0_r0_memr43_ab,
        q_b => u0_m0_wo0_wi0_r0_memr43_iq
    );
    u0_m0_wo0_wi0_r0_memr43_q <= u0_m0_wo0_wi0_r0_memr43_iq(35 downto 0);

    -- u0_m0_wo0_wi0_r0_split43(BITSELECT,82)@13
    u0_m0_wo0_wi0_r0_split43_b <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr43_q(11 downto 0));
    u0_m0_wo0_wi0_r0_split43_c <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr43_q(23 downto 12));
    u0_m0_wo0_wi0_r0_split43_d <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr43_q(35 downto 24));

    -- u0_m0_wo0_cm43(LOOKUP,152)@12 + 1
    u0_m0_wo0_cm43_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm43_q <= "000011101";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca66_q) IS
                WHEN "00000" => u0_m0_wo0_cm43_q <= "000011101";
                WHEN "00001" => u0_m0_wo0_cm43_q <= "000001001";
                WHEN "00010" => u0_m0_wo0_cm43_q <= "111101110";
                WHEN "00011" => u0_m0_wo0_cm43_q <= "111101100";
                WHEN "00100" => u0_m0_wo0_cm43_q <= "000000101";
                WHEN "00101" => u0_m0_wo0_cm43_q <= "000011011";
                WHEN "00110" => u0_m0_wo0_cm43_q <= "000100001";
                WHEN "00111" => u0_m0_wo0_cm43_q <= "000011000";
                WHEN "01000" => u0_m0_wo0_cm43_q <= "000001000";
                WHEN "01001" => u0_m0_wo0_cm43_q <= "111110011";
                WHEN "01010" => u0_m0_wo0_cm43_q <= "111101110";
                WHEN "01011" => u0_m0_wo0_cm43_q <= "111111011";
                WHEN "01100" => u0_m0_wo0_cm43_q <= "000001101";
                WHEN "01101" => u0_m0_wo0_cm43_q <= "000011010";
                WHEN "01110" => u0_m0_wo0_cm43_q <= "000011001";
                WHEN "01111" => u0_m0_wo0_cm43_q <= "000011000";
                WHEN "10000" => u0_m0_wo0_cm43_q <= "000010000";
                WHEN "10001" => u0_m0_wo0_cm43_q <= "000001101";
                WHEN "10010" => u0_m0_wo0_cm43_q <= "000001111";
                WHEN "10011" => u0_m0_wo0_cm43_q <= "000000011";
                WHEN "10100" => u0_m0_wo0_cm43_q <= "111111000";
                WHEN "10101" => u0_m0_wo0_cm43_q <= "111110000";
                WHEN "10110" => u0_m0_wo0_cm43_q <= "111101101";
                WHEN "10111" => u0_m0_wo0_cm43_q <= "111110010";
                WHEN "11000" => u0_m0_wo0_cm43_q <= "000000001";
                WHEN "11001" => u0_m0_wo0_cm43_q <= "000011010";
                WHEN "11010" => u0_m0_wo0_cm43_q <= "000100101";
                WHEN "11011" => u0_m0_wo0_cm43_q <= "000100011";
                WHEN "11100" => u0_m0_wo0_cm43_q <= "000101000";
                WHEN "11101" => u0_m0_wo0_cm43_q <= "000110111";
                WHEN "11110" => u0_m0_wo0_cm43_q <= "001000001";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm43_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_23(MULT,219)@13 + 2
    u0_m0_wo0_mtree_mult1_23_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm43_q);
    u0_m0_wo0_mtree_mult1_23_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split43_b);
    u0_m0_wo0_mtree_mult1_23_reset <= areset;
    u0_m0_wo0_mtree_mult1_23_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 9,
        lpm_widthb => 12,
        lpm_widthp => 21,
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

    -- u0_m0_wo0_cm44(LOOKUP,153)@12 + 1
    u0_m0_wo0_cm44_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm44_q <= "111111100";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca66_q) IS
                WHEN "00000" => u0_m0_wo0_cm44_q <= "111111100";
                WHEN "00001" => u0_m0_wo0_cm44_q <= "111111000";
                WHEN "00010" => u0_m0_wo0_cm44_q <= "111110101";
                WHEN "00011" => u0_m0_wo0_cm44_q <= "111111000";
                WHEN "00100" => u0_m0_wo0_cm44_q <= "111110110";
                WHEN "00101" => u0_m0_wo0_cm44_q <= "111110000";
                WHEN "00110" => u0_m0_wo0_cm44_q <= "111110000";
                WHEN "00111" => u0_m0_wo0_cm44_q <= "111111000";
                WHEN "01000" => u0_m0_wo0_cm44_q <= "000000010";
                WHEN "01001" => u0_m0_wo0_cm44_q <= "000001001";
                WHEN "01010" => u0_m0_wo0_cm44_q <= "000000101";
                WHEN "01011" => u0_m0_wo0_cm44_q <= "111111011";
                WHEN "01100" => u0_m0_wo0_cm44_q <= "111101010";
                WHEN "01101" => u0_m0_wo0_cm44_q <= "111100101";
                WHEN "01110" => u0_m0_wo0_cm44_q <= "111101101";
                WHEN "01111" => u0_m0_wo0_cm44_q <= "111110001";
                WHEN "10000" => u0_m0_wo0_cm44_q <= "111111000";
                WHEN "10001" => u0_m0_wo0_cm44_q <= "111111010";
                WHEN "10010" => u0_m0_wo0_cm44_q <= "111110011";
                WHEN "10011" => u0_m0_wo0_cm44_q <= "111110110";
                WHEN "10100" => u0_m0_wo0_cm44_q <= "000000010";
                WHEN "10101" => u0_m0_wo0_cm44_q <= "000001000";
                WHEN "10110" => u0_m0_wo0_cm44_q <= "000000100";
                WHEN "10111" => u0_m0_wo0_cm44_q <= "111111111";
                WHEN "11000" => u0_m0_wo0_cm44_q <= "000000000";
                WHEN "11001" => u0_m0_wo0_cm44_q <= "000000101";
                WHEN "11010" => u0_m0_wo0_cm44_q <= "000000000";
                WHEN "11011" => u0_m0_wo0_cm44_q <= "000000011";
                WHEN "11100" => u0_m0_wo0_cm44_q <= "000001001";
                WHEN "11101" => u0_m0_wo0_cm44_q <= "000011001";
                WHEN "11110" => u0_m0_wo0_cm44_q <= "000100111";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm44_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_22(MULT,220)@13 + 2
    u0_m0_wo0_mtree_mult1_22_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm44_q);
    u0_m0_wo0_mtree_mult1_22_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split43_c);
    u0_m0_wo0_mtree_mult1_22_reset <= areset;
    u0_m0_wo0_mtree_mult1_22_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 9,
        lpm_widthb => 12,
        lpm_widthp => 21,
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

    -- u0_m0_wo0_mtree_add0_11(ADD,254)@15 + 1
    u0_m0_wo0_mtree_add0_11_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 21 => u0_m0_wo0_mtree_mult1_22_q(20)) & u0_m0_wo0_mtree_mult1_22_q));
    u0_m0_wo0_mtree_add0_11_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 21 => u0_m0_wo0_mtree_mult1_23_q(20)) & u0_m0_wo0_mtree_mult1_23_q));
    u0_m0_wo0_mtree_add0_11_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_11_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_11_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_11_a) + SIGNED(u0_m0_wo0_mtree_add0_11_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_11_q <= u0_m0_wo0_mtree_add0_11_o(21 downto 0);

    -- u0_m0_wo0_cm45(LOOKUP,154)@12 + 1
    u0_m0_wo0_cm45_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm45_q <= "111101101";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca66_q) IS
                WHEN "00000" => u0_m0_wo0_cm45_q <= "111101101";
                WHEN "00001" => u0_m0_wo0_cm45_q <= "111101100";
                WHEN "00010" => u0_m0_wo0_cm45_q <= "111101100";
                WHEN "00011" => u0_m0_wo0_cm45_q <= "111101010";
                WHEN "00100" => u0_m0_wo0_cm45_q <= "111101011";
                WHEN "00101" => u0_m0_wo0_cm45_q <= "111101101";
                WHEN "00110" => u0_m0_wo0_cm45_q <= "111110010";
                WHEN "00111" => u0_m0_wo0_cm45_q <= "111110100";
                WHEN "01000" => u0_m0_wo0_cm45_q <= "111110001";
                WHEN "01001" => u0_m0_wo0_cm45_q <= "111110101";
                WHEN "01010" => u0_m0_wo0_cm45_q <= "111110111";
                WHEN "01011" => u0_m0_wo0_cm45_q <= "111100111";
                WHEN "01100" => u0_m0_wo0_cm45_q <= "111011011";
                WHEN "01101" => u0_m0_wo0_cm45_q <= "111011111";
                WHEN "01110" => u0_m0_wo0_cm45_q <= "111101000";
                WHEN "01111" => u0_m0_wo0_cm45_q <= "111110001";
                WHEN "10000" => u0_m0_wo0_cm45_q <= "111110110";
                WHEN "10001" => u0_m0_wo0_cm45_q <= "111110011";
                WHEN "10010" => u0_m0_wo0_cm45_q <= "111101100";
                WHEN "10011" => u0_m0_wo0_cm45_q <= "111101010";
                WHEN "10100" => u0_m0_wo0_cm45_q <= "111101100";
                WHEN "10101" => u0_m0_wo0_cm45_q <= "111110010";
                WHEN "10110" => u0_m0_wo0_cm45_q <= "000000000";
                WHEN "10111" => u0_m0_wo0_cm45_q <= "000000101";
                WHEN "11000" => u0_m0_wo0_cm45_q <= "000000010";
                WHEN "11001" => u0_m0_wo0_cm45_q <= "111111011";
                WHEN "11010" => u0_m0_wo0_cm45_q <= "111110111";
                WHEN "11011" => u0_m0_wo0_cm45_q <= "111111011";
                WHEN "11100" => u0_m0_wo0_cm45_q <= "111111100";
                WHEN "11101" => u0_m0_wo0_cm45_q <= "111111110";
                WHEN "11110" => u0_m0_wo0_cm45_q <= "000000000";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm45_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_21(MULT,221)@13 + 2
    u0_m0_wo0_mtree_mult1_21_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm45_q);
    u0_m0_wo0_mtree_mult1_21_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split43_d);
    u0_m0_wo0_mtree_mult1_21_reset <= areset;
    u0_m0_wo0_mtree_mult1_21_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 9,
        lpm_widthb => 12,
        lpm_widthp => 21,
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

    -- u0_m0_wo0_wi0_r0_join46(BITJOIN,84)@13
    u0_m0_wo0_wi0_r0_join46_q <= u0_m0_wo0_wi0_r0_split46_c & u0_m0_wo0_wi0_r0_split46_b & u0_m0_wo0_wi0_r0_split43_d;

    -- u0_m0_wo0_wi0_r0_memr46(DUALMEM,86)@13
    u0_m0_wo0_wi0_r0_memr46_ia <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_join46_q);
    u0_m0_wo0_wi0_r0_memr46_aa <= u0_m0_wo0_wi0_r0_wa66_q;
    u0_m0_wo0_wi0_r0_memr46_ab <= u0_m0_wo0_wi0_r0_ra66_resize_b;
    u0_m0_wo0_wi0_r0_memr46_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "DUAL_PORT",
        width_a => 36,
        widthad_a => 6,
        numwords_a => 64,
        width_b => 36,
        widthad_b => 6,
        numwords_b => 64,
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
        wren_a => u0_m0_wo0_wi0_r0_we66_seq_q(0),
        address_b => u0_m0_wo0_wi0_r0_memr46_ab,
        q_b => u0_m0_wo0_wi0_r0_memr46_iq
    );
    u0_m0_wo0_wi0_r0_memr46_q <= u0_m0_wo0_wi0_r0_memr46_iq(35 downto 0);

    -- u0_m0_wo0_wi0_r0_split46(BITSELECT,85)@13
    u0_m0_wo0_wi0_r0_split46_b <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr46_q(11 downto 0));
    u0_m0_wo0_wi0_r0_split46_c <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr46_q(23 downto 12));
    u0_m0_wo0_wi0_r0_split46_d <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr46_q(35 downto 24));

    -- u0_m0_wo0_cm46(LOOKUP,155)@12 + 1
    u0_m0_wo0_cm46_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm46_q <= "111110000";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca66_q) IS
                WHEN "00000" => u0_m0_wo0_cm46_q <= "111110000";
                WHEN "00001" => u0_m0_wo0_cm46_q <= "111101110";
                WHEN "00010" => u0_m0_wo0_cm46_q <= "111101010";
                WHEN "00011" => u0_m0_wo0_cm46_q <= "111100101";
                WHEN "00100" => u0_m0_wo0_cm46_q <= "111011111";
                WHEN "00101" => u0_m0_wo0_cm46_q <= "111011101";
                WHEN "00110" => u0_m0_wo0_cm46_q <= "111100111";
                WHEN "00111" => u0_m0_wo0_cm46_q <= "111110000";
                WHEN "01000" => u0_m0_wo0_cm46_q <= "111100011";
                WHEN "01001" => u0_m0_wo0_cm46_q <= "111011011";
                WHEN "01010" => u0_m0_wo0_cm46_q <= "111100101";
                WHEN "01011" => u0_m0_wo0_cm46_q <= "111110101";
                WHEN "01100" => u0_m0_wo0_cm46_q <= "000000011";
                WHEN "01101" => u0_m0_wo0_cm46_q <= "000000111";
                WHEN "01110" => u0_m0_wo0_cm46_q <= "000000001";
                WHEN "01111" => u0_m0_wo0_cm46_q <= "000000010";
                WHEN "10000" => u0_m0_wo0_cm46_q <= "000000011";
                WHEN "10001" => u0_m0_wo0_cm46_q <= "000000010";
                WHEN "10010" => u0_m0_wo0_cm46_q <= "000000001";
                WHEN "10011" => u0_m0_wo0_cm46_q <= "000000000";
                WHEN "10100" => u0_m0_wo0_cm46_q <= "111111111";
                WHEN "10101" => u0_m0_wo0_cm46_q <= "111111100";
                WHEN "10110" => u0_m0_wo0_cm46_q <= "000000000";
                WHEN "10111" => u0_m0_wo0_cm46_q <= "000000010";
                WHEN "11000" => u0_m0_wo0_cm46_q <= "111101111";
                WHEN "11001" => u0_m0_wo0_cm46_q <= "111011000";
                WHEN "11010" => u0_m0_wo0_cm46_q <= "111010100";
                WHEN "11011" => u0_m0_wo0_cm46_q <= "111011110";
                WHEN "11100" => u0_m0_wo0_cm46_q <= "111101001";
                WHEN "11101" => u0_m0_wo0_cm46_q <= "111101010";
                WHEN "11110" => u0_m0_wo0_cm46_q <= "111101100";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm46_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_20(MULT,222)@13 + 2
    u0_m0_wo0_mtree_mult1_20_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm46_q);
    u0_m0_wo0_mtree_mult1_20_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split46_b);
    u0_m0_wo0_mtree_mult1_20_reset <= areset;
    u0_m0_wo0_mtree_mult1_20_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 9,
        lpm_widthb => 12,
        lpm_widthp => 21,
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

    -- u0_m0_wo0_mtree_add0_10(ADD,253)@15 + 1
    u0_m0_wo0_mtree_add0_10_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 21 => u0_m0_wo0_mtree_mult1_20_q(20)) & u0_m0_wo0_mtree_mult1_20_q));
    u0_m0_wo0_mtree_add0_10_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 21 => u0_m0_wo0_mtree_mult1_21_q(20)) & u0_m0_wo0_mtree_mult1_21_q));
    u0_m0_wo0_mtree_add0_10_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_10_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_10_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_10_a) + SIGNED(u0_m0_wo0_mtree_add0_10_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_10_q <= u0_m0_wo0_mtree_add0_10_o(21 downto 0);

    -- u0_m0_wo0_mtree_add1_5(ADD,281)@16 + 1
    u0_m0_wo0_mtree_add1_5_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((22 downto 22 => u0_m0_wo0_mtree_add0_10_q(21)) & u0_m0_wo0_mtree_add0_10_q));
    u0_m0_wo0_mtree_add1_5_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((22 downto 22 => u0_m0_wo0_mtree_add0_11_q(21)) & u0_m0_wo0_mtree_add0_11_q));
    u0_m0_wo0_mtree_add1_5_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_5_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_5_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_5_a) + SIGNED(u0_m0_wo0_mtree_add1_5_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_5_q <= u0_m0_wo0_mtree_add1_5_o(22 downto 0);

    -- u0_m0_wo0_cm47(LOOKUP,156)@12 + 1
    u0_m0_wo0_cm47_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm47_q <= "111110101";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca66_q) IS
                WHEN "00000" => u0_m0_wo0_cm47_q <= "111110101";
                WHEN "00001" => u0_m0_wo0_cm47_q <= "111101100";
                WHEN "00010" => u0_m0_wo0_cm47_q <= "111110001";
                WHEN "00011" => u0_m0_wo0_cm47_q <= "111111011";
                WHEN "00100" => u0_m0_wo0_cm47_q <= "111111111";
                WHEN "00101" => u0_m0_wo0_cm47_q <= "000000000";
                WHEN "00110" => u0_m0_wo0_cm47_q <= "111111110";
                WHEN "00111" => u0_m0_wo0_cm47_q <= "000000000";
                WHEN "01000" => u0_m0_wo0_cm47_q <= "000000110";
                WHEN "01001" => u0_m0_wo0_cm47_q <= "000001001";
                WHEN "01010" => u0_m0_wo0_cm47_q <= "000000101";
                WHEN "01011" => u0_m0_wo0_cm47_q <= "000000001";
                WHEN "01100" => u0_m0_wo0_cm47_q <= "111111100";
                WHEN "01101" => u0_m0_wo0_cm47_q <= "111101110";
                WHEN "01110" => u0_m0_wo0_cm47_q <= "111100100";
                WHEN "01111" => u0_m0_wo0_cm47_q <= "111101010";
                WHEN "10000" => u0_m0_wo0_cm47_q <= "111110110";
                WHEN "10001" => u0_m0_wo0_cm47_q <= "111111101";
                WHEN "10010" => u0_m0_wo0_cm47_q <= "111111001";
                WHEN "10011" => u0_m0_wo0_cm47_q <= "111101111";
                WHEN "10100" => u0_m0_wo0_cm47_q <= "111110000";
                WHEN "10101" => u0_m0_wo0_cm47_q <= "111110010";
                WHEN "10110" => u0_m0_wo0_cm47_q <= "111110001";
                WHEN "10111" => u0_m0_wo0_cm47_q <= "111111010";
                WHEN "11000" => u0_m0_wo0_cm47_q <= "000000111";
                WHEN "11001" => u0_m0_wo0_cm47_q <= "000001011";
                WHEN "11010" => u0_m0_wo0_cm47_q <= "111111100";
                WHEN "11011" => u0_m0_wo0_cm47_q <= "111110001";
                WHEN "11100" => u0_m0_wo0_cm47_q <= "111110101";
                WHEN "11101" => u0_m0_wo0_cm47_q <= "111110111";
                WHEN "11110" => u0_m0_wo0_cm47_q <= "111110011";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm47_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_19(MULT,223)@13 + 2
    u0_m0_wo0_mtree_mult1_19_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm47_q);
    u0_m0_wo0_mtree_mult1_19_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split46_c);
    u0_m0_wo0_mtree_mult1_19_reset <= areset;
    u0_m0_wo0_mtree_mult1_19_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 9,
        lpm_widthb => 12,
        lpm_widthp => 21,
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

    -- u0_m0_wo0_cm48(LOOKUP,157)@12 + 1
    u0_m0_wo0_cm48_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm48_q <= "000010100";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca66_q) IS
                WHEN "00000" => u0_m0_wo0_cm48_q <= "000010100";
                WHEN "00001" => u0_m0_wo0_cm48_q <= "000001011";
                WHEN "00010" => u0_m0_wo0_cm48_q <= "000000000";
                WHEN "00011" => u0_m0_wo0_cm48_q <= "111111011";
                WHEN "00100" => u0_m0_wo0_cm48_q <= "111111100";
                WHEN "00101" => u0_m0_wo0_cm48_q <= "111111001";
                WHEN "00110" => u0_m0_wo0_cm48_q <= "111110101";
                WHEN "00111" => u0_m0_wo0_cm48_q <= "111110001";
                WHEN "01000" => u0_m0_wo0_cm48_q <= "111110100";
                WHEN "01001" => u0_m0_wo0_cm48_q <= "111111100";
                WHEN "01010" => u0_m0_wo0_cm48_q <= "111111111";
                WHEN "01011" => u0_m0_wo0_cm48_q <= "111111011";
                WHEN "01100" => u0_m0_wo0_cm48_q <= "111111110";
                WHEN "01101" => u0_m0_wo0_cm48_q <= "000000000";
                WHEN "01110" => u0_m0_wo0_cm48_q <= "111111111";
                WHEN "01111" => u0_m0_wo0_cm48_q <= "000000011";
                WHEN "10000" => u0_m0_wo0_cm48_q <= "000001110";
                WHEN "10001" => u0_m0_wo0_cm48_q <= "000010101";
                WHEN "10010" => u0_m0_wo0_cm48_q <= "000001110";
                WHEN "10011" => u0_m0_wo0_cm48_q <= "000000111";
                WHEN "10100" => u0_m0_wo0_cm48_q <= "000010000";
                WHEN "10101" => u0_m0_wo0_cm48_q <= "000011001";
                WHEN "10110" => u0_m0_wo0_cm48_q <= "000010010";
                WHEN "10111" => u0_m0_wo0_cm48_q <= "000001101";
                WHEN "11000" => u0_m0_wo0_cm48_q <= "000001110";
                WHEN "11001" => u0_m0_wo0_cm48_q <= "000000101";
                WHEN "11010" => u0_m0_wo0_cm48_q <= "111111000";
                WHEN "11011" => u0_m0_wo0_cm48_q <= "111110001";
                WHEN "11100" => u0_m0_wo0_cm48_q <= "111110110";
                WHEN "11101" => u0_m0_wo0_cm48_q <= "111111101";
                WHEN "11110" => u0_m0_wo0_cm48_q <= "111111101";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm48_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_18(MULT,224)@13 + 2
    u0_m0_wo0_mtree_mult1_18_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm48_q);
    u0_m0_wo0_mtree_mult1_18_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split46_d);
    u0_m0_wo0_mtree_mult1_18_reset <= areset;
    u0_m0_wo0_mtree_mult1_18_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 9,
        lpm_widthb => 12,
        lpm_widthp => 21,
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

    -- u0_m0_wo0_mtree_add0_9(ADD,252)@15 + 1
    u0_m0_wo0_mtree_add0_9_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 21 => u0_m0_wo0_mtree_mult1_18_q(20)) & u0_m0_wo0_mtree_mult1_18_q));
    u0_m0_wo0_mtree_add0_9_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 21 => u0_m0_wo0_mtree_mult1_19_q(20)) & u0_m0_wo0_mtree_mult1_19_q));
    u0_m0_wo0_mtree_add0_9_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_9_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_9_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_9_a) + SIGNED(u0_m0_wo0_mtree_add0_9_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_9_q <= u0_m0_wo0_mtree_add0_9_o(21 downto 0);

    -- u0_m0_wo0_wi0_r0_join49(BITJOIN,87)@13
    u0_m0_wo0_wi0_r0_join49_q <= u0_m0_wo0_wi0_r0_split49_c & u0_m0_wo0_wi0_r0_split49_b & u0_m0_wo0_wi0_r0_split46_d;

    -- u0_m0_wo0_wi0_r0_memr49(DUALMEM,89)@13
    u0_m0_wo0_wi0_r0_memr49_ia <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_join49_q);
    u0_m0_wo0_wi0_r0_memr49_aa <= u0_m0_wo0_wi0_r0_wa66_q;
    u0_m0_wo0_wi0_r0_memr49_ab <= u0_m0_wo0_wi0_r0_ra66_resize_b;
    u0_m0_wo0_wi0_r0_memr49_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "DUAL_PORT",
        width_a => 36,
        widthad_a => 6,
        numwords_a => 64,
        width_b => 36,
        widthad_b => 6,
        numwords_b => 64,
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
        wren_a => u0_m0_wo0_wi0_r0_we66_seq_q(0),
        address_b => u0_m0_wo0_wi0_r0_memr49_ab,
        q_b => u0_m0_wo0_wi0_r0_memr49_iq
    );
    u0_m0_wo0_wi0_r0_memr49_q <= u0_m0_wo0_wi0_r0_memr49_iq(35 downto 0);

    -- u0_m0_wo0_wi0_r0_split49(BITSELECT,88)@13
    u0_m0_wo0_wi0_r0_split49_b <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr49_q(11 downto 0));
    u0_m0_wo0_wi0_r0_split49_c <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr49_q(23 downto 12));
    u0_m0_wo0_wi0_r0_split49_d <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr49_q(35 downto 24));

    -- u0_m0_wo0_cm49(LOOKUP,158)@12 + 1
    u0_m0_wo0_cm49_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm49_q <= "111011100";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca66_q) IS
                WHEN "00000" => u0_m0_wo0_cm49_q <= "111011100";
                WHEN "00001" => u0_m0_wo0_cm49_q <= "111100010";
                WHEN "00010" => u0_m0_wo0_cm49_q <= "111110010";
                WHEN "00011" => u0_m0_wo0_cm49_q <= "111111111";
                WHEN "00100" => u0_m0_wo0_cm49_q <= "000001010";
                WHEN "00101" => u0_m0_wo0_cm49_q <= "000010001";
                WHEN "00110" => u0_m0_wo0_cm49_q <= "000001111";
                WHEN "00111" => u0_m0_wo0_cm49_q <= "000000110";
                WHEN "01000" => u0_m0_wo0_cm49_q <= "111111011";
                WHEN "01001" => u0_m0_wo0_cm49_q <= "111110111";
                WHEN "01010" => u0_m0_wo0_cm49_q <= "111111111";
                WHEN "01011" => u0_m0_wo0_cm49_q <= "000000111";
                WHEN "01100" => u0_m0_wo0_cm49_q <= "000001001";
                WHEN "01101" => u0_m0_wo0_cm49_q <= "000010001";
                WHEN "01110" => u0_m0_wo0_cm49_q <= "000010100";
                WHEN "01111" => u0_m0_wo0_cm49_q <= "000001101";
                WHEN "10000" => u0_m0_wo0_cm49_q <= "000000001";
                WHEN "10001" => u0_m0_wo0_cm49_q <= "111111010";
                WHEN "10010" => u0_m0_wo0_cm49_q <= "111111000";
                WHEN "10011" => u0_m0_wo0_cm49_q <= "111111000";
                WHEN "10100" => u0_m0_wo0_cm49_q <= "111110110";
                WHEN "10101" => u0_m0_wo0_cm49_q <= "111111001";
                WHEN "10110" => u0_m0_wo0_cm49_q <= "111110111";
                WHEN "10111" => u0_m0_wo0_cm49_q <= "111101100";
                WHEN "11000" => u0_m0_wo0_cm49_q <= "111101100";
                WHEN "11001" => u0_m0_wo0_cm49_q <= "111101111";
                WHEN "11010" => u0_m0_wo0_cm49_q <= "111110000";
                WHEN "11011" => u0_m0_wo0_cm49_q <= "111110011";
                WHEN "11100" => u0_m0_wo0_cm49_q <= "111111000";
                WHEN "11101" => u0_m0_wo0_cm49_q <= "000000100";
                WHEN "11110" => u0_m0_wo0_cm49_q <= "000010010";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm49_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_17(MULT,225)@13 + 2
    u0_m0_wo0_mtree_mult1_17_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm49_q);
    u0_m0_wo0_mtree_mult1_17_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split49_b);
    u0_m0_wo0_mtree_mult1_17_reset <= areset;
    u0_m0_wo0_mtree_mult1_17_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 9,
        lpm_widthb => 12,
        lpm_widthp => 21,
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

    -- u0_m0_wo0_cm50(LOOKUP,159)@12 + 1
    u0_m0_wo0_cm50_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm50_q <= "000011100";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca66_q) IS
                WHEN "00000" => u0_m0_wo0_cm50_q <= "000011100";
                WHEN "00001" => u0_m0_wo0_cm50_q <= "000011111";
                WHEN "00010" => u0_m0_wo0_cm50_q <= "000011111";
                WHEN "00011" => u0_m0_wo0_cm50_q <= "000010110";
                WHEN "00100" => u0_m0_wo0_cm50_q <= "000001000";
                WHEN "00101" => u0_m0_wo0_cm50_q <= "000000000";
                WHEN "00110" => u0_m0_wo0_cm50_q <= "111111001";
                WHEN "00111" => u0_m0_wo0_cm50_q <= "111111010";
                WHEN "01000" => u0_m0_wo0_cm50_q <= "000001011";
                WHEN "01001" => u0_m0_wo0_cm50_q <= "000011011";
                WHEN "01010" => u0_m0_wo0_cm50_q <= "000011111";
                WHEN "01011" => u0_m0_wo0_cm50_q <= "000101010";
                WHEN "01100" => u0_m0_wo0_cm50_q <= "000110101";
                WHEN "01101" => u0_m0_wo0_cm50_q <= "000100000";
                WHEN "01110" => u0_m0_wo0_cm50_q <= "111100110";
                WHEN "01111" => u0_m0_wo0_cm50_q <= "110111001";
                WHEN "10000" => u0_m0_wo0_cm50_q <= "110111000";
                WHEN "10001" => u0_m0_wo0_cm50_q <= "111001100";
                WHEN "10010" => u0_m0_wo0_cm50_q <= "111011011";
                WHEN "10011" => u0_m0_wo0_cm50_q <= "111011111";
                WHEN "10100" => u0_m0_wo0_cm50_q <= "111100100";
                WHEN "10101" => u0_m0_wo0_cm50_q <= "111101111";
                WHEN "10110" => u0_m0_wo0_cm50_q <= "111101101";
                WHEN "10111" => u0_m0_wo0_cm50_q <= "111101111";
                WHEN "11000" => u0_m0_wo0_cm50_q <= "111111101";
                WHEN "11001" => u0_m0_wo0_cm50_q <= "000000011";
                WHEN "11010" => u0_m0_wo0_cm50_q <= "000000100";
                WHEN "11011" => u0_m0_wo0_cm50_q <= "000000101";
                WHEN "11100" => u0_m0_wo0_cm50_q <= "000001001";
                WHEN "11101" => u0_m0_wo0_cm50_q <= "000000000";
                WHEN "11110" => u0_m0_wo0_cm50_q <= "111101010";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm50_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_16(MULT,226)@13 + 2
    u0_m0_wo0_mtree_mult1_16_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm50_q);
    u0_m0_wo0_mtree_mult1_16_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split49_c);
    u0_m0_wo0_mtree_mult1_16_reset <= areset;
    u0_m0_wo0_mtree_mult1_16_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 9,
        lpm_widthb => 12,
        lpm_widthp => 21,
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

    -- u0_m0_wo0_mtree_add0_8(ADD,251)@15 + 1
    u0_m0_wo0_mtree_add0_8_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 21 => u0_m0_wo0_mtree_mult1_16_q(20)) & u0_m0_wo0_mtree_mult1_16_q));
    u0_m0_wo0_mtree_add0_8_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 21 => u0_m0_wo0_mtree_mult1_17_q(20)) & u0_m0_wo0_mtree_mult1_17_q));
    u0_m0_wo0_mtree_add0_8_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_8_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_8_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_8_a) + SIGNED(u0_m0_wo0_mtree_add0_8_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_8_q <= u0_m0_wo0_mtree_add0_8_o(21 downto 0);

    -- u0_m0_wo0_mtree_add1_4(ADD,280)@16 + 1
    u0_m0_wo0_mtree_add1_4_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((22 downto 22 => u0_m0_wo0_mtree_add0_8_q(21)) & u0_m0_wo0_mtree_add0_8_q));
    u0_m0_wo0_mtree_add1_4_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((22 downto 22 => u0_m0_wo0_mtree_add0_9_q(21)) & u0_m0_wo0_mtree_add0_9_q));
    u0_m0_wo0_mtree_add1_4_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_4_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_4_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_4_a) + SIGNED(u0_m0_wo0_mtree_add1_4_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_4_q <= u0_m0_wo0_mtree_add1_4_o(22 downto 0);

    -- u0_m0_wo0_mtree_add2_2(ADD,295)@17 + 1
    u0_m0_wo0_mtree_add2_2_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((23 downto 23 => u0_m0_wo0_mtree_add1_4_q(22)) & u0_m0_wo0_mtree_add1_4_q));
    u0_m0_wo0_mtree_add2_2_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((23 downto 23 => u0_m0_wo0_mtree_add1_5_q(22)) & u0_m0_wo0_mtree_add1_5_q));
    u0_m0_wo0_mtree_add2_2_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add2_2_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add2_2_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add2_2_a) + SIGNED(u0_m0_wo0_mtree_add2_2_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add2_2_q <= u0_m0_wo0_mtree_add2_2_o(23 downto 0);

    -- u0_m0_wo0_mtree_add3_1(ADD,302)@18 + 1
    u0_m0_wo0_mtree_add3_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((24 downto 24 => u0_m0_wo0_mtree_add2_2_q(23)) & u0_m0_wo0_mtree_add2_2_q));
    u0_m0_wo0_mtree_add3_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((24 downto 24 => u0_m0_wo0_mtree_add2_3_q(23)) & u0_m0_wo0_mtree_add2_3_q));
    u0_m0_wo0_mtree_add3_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add3_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add3_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add3_1_a) + SIGNED(u0_m0_wo0_mtree_add3_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add3_1_q <= u0_m0_wo0_mtree_add3_1_o(24 downto 0);

    -- u0_m0_wo0_cm51(LOOKUP,160)@12 + 1
    u0_m0_wo0_cm51_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm51_q <= "000011100";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca66_q) IS
                WHEN "00000" => u0_m0_wo0_cm51_q <= "000011100";
                WHEN "00001" => u0_m0_wo0_cm51_q <= "000010111";
                WHEN "00010" => u0_m0_wo0_cm51_q <= "000000111";
                WHEN "00011" => u0_m0_wo0_cm51_q <= "111111000";
                WHEN "00100" => u0_m0_wo0_cm51_q <= "111111001";
                WHEN "00101" => u0_m0_wo0_cm51_q <= "000000111";
                WHEN "00110" => u0_m0_wo0_cm51_q <= "000001010";
                WHEN "00111" => u0_m0_wo0_cm51_q <= "000001010";
                WHEN "01000" => u0_m0_wo0_cm51_q <= "000001010";
                WHEN "01001" => u0_m0_wo0_cm51_q <= "000000101";
                WHEN "01010" => u0_m0_wo0_cm51_q <= "000000000";
                WHEN "01011" => u0_m0_wo0_cm51_q <= "111111110";
                WHEN "01100" => u0_m0_wo0_cm51_q <= "111111011";
                WHEN "01101" => u0_m0_wo0_cm51_q <= "111111000";
                WHEN "01110" => u0_m0_wo0_cm51_q <= "111111000";
                WHEN "01111" => u0_m0_wo0_cm51_q <= "111111011";
                WHEN "10000" => u0_m0_wo0_cm51_q <= "000000010";
                WHEN "10001" => u0_m0_wo0_cm51_q <= "000001000";
                WHEN "10010" => u0_m0_wo0_cm51_q <= "000010001";
                WHEN "10011" => u0_m0_wo0_cm51_q <= "000010101";
                WHEN "10100" => u0_m0_wo0_cm51_q <= "000001011";
                WHEN "10101" => u0_m0_wo0_cm51_q <= "111111000";
                WHEN "10110" => u0_m0_wo0_cm51_q <= "111101111";
                WHEN "10111" => u0_m0_wo0_cm51_q <= "111111100";
                WHEN "11000" => u0_m0_wo0_cm51_q <= "000010110";
                WHEN "11001" => u0_m0_wo0_cm51_q <= "000011110";
                WHEN "11010" => u0_m0_wo0_cm51_q <= "111111110";
                WHEN "11011" => u0_m0_wo0_cm51_q <= "111101010";
                WHEN "11100" => u0_m0_wo0_cm51_q <= "000000000";
                WHEN "11101" => u0_m0_wo0_cm51_q <= "000010011";
                WHEN "11110" => u0_m0_wo0_cm51_q <= "000011000";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm51_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_15(MULT,227)@13 + 2
    u0_m0_wo0_mtree_mult1_15_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm51_q);
    u0_m0_wo0_mtree_mult1_15_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split49_d);
    u0_m0_wo0_mtree_mult1_15_reset <= areset;
    u0_m0_wo0_mtree_mult1_15_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 9,
        lpm_widthb => 12,
        lpm_widthp => 21,
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

    -- u0_m0_wo0_wi0_r0_join52(BITJOIN,90)@13
    u0_m0_wo0_wi0_r0_join52_q <= u0_m0_wo0_wi0_r0_split52_c & u0_m0_wo0_wi0_r0_split52_b & u0_m0_wo0_wi0_r0_split49_d;

    -- u0_m0_wo0_wi0_r0_memr52(DUALMEM,92)@13
    u0_m0_wo0_wi0_r0_memr52_ia <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_join52_q);
    u0_m0_wo0_wi0_r0_memr52_aa <= u0_m0_wo0_wi0_r0_wa66_q;
    u0_m0_wo0_wi0_r0_memr52_ab <= u0_m0_wo0_wi0_r0_ra66_resize_b;
    u0_m0_wo0_wi0_r0_memr52_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "DUAL_PORT",
        width_a => 36,
        widthad_a => 6,
        numwords_a => 64,
        width_b => 36,
        widthad_b => 6,
        numwords_b => 64,
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
        address_a => u0_m0_wo0_wi0_r0_memr52_aa,
        data_a => u0_m0_wo0_wi0_r0_memr52_ia,
        wren_a => u0_m0_wo0_wi0_r0_we66_seq_q(0),
        address_b => u0_m0_wo0_wi0_r0_memr52_ab,
        q_b => u0_m0_wo0_wi0_r0_memr52_iq
    );
    u0_m0_wo0_wi0_r0_memr52_q <= u0_m0_wo0_wi0_r0_memr52_iq(35 downto 0);

    -- u0_m0_wo0_wi0_r0_split52(BITSELECT,91)@13
    u0_m0_wo0_wi0_r0_split52_b <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr52_q(11 downto 0));
    u0_m0_wo0_wi0_r0_split52_c <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr52_q(23 downto 12));
    u0_m0_wo0_wi0_r0_split52_d <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr52_q(35 downto 24));

    -- u0_m0_wo0_cm52(LOOKUP,161)@12 + 1
    u0_m0_wo0_cm52_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm52_q <= "000010100";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca66_q) IS
                WHEN "00000" => u0_m0_wo0_cm52_q <= "000010100";
                WHEN "00001" => u0_m0_wo0_cm52_q <= "000001110";
                WHEN "00010" => u0_m0_wo0_cm52_q <= "000001110";
                WHEN "00011" => u0_m0_wo0_cm52_q <= "000001110";
                WHEN "00100" => u0_m0_wo0_cm52_q <= "000001010";
                WHEN "00101" => u0_m0_wo0_cm52_q <= "000000110";
                WHEN "00110" => u0_m0_wo0_cm52_q <= "000000110";
                WHEN "00111" => u0_m0_wo0_cm52_q <= "000000011";
                WHEN "01000" => u0_m0_wo0_cm52_q <= "111111011";
                WHEN "01001" => u0_m0_wo0_cm52_q <= "111110110";
                WHEN "01010" => u0_m0_wo0_cm52_q <= "111111001";
                WHEN "01011" => u0_m0_wo0_cm52_q <= "111111111";
                WHEN "01100" => u0_m0_wo0_cm52_q <= "000000111";
                WHEN "01101" => u0_m0_wo0_cm52_q <= "000010101";
                WHEN "01110" => u0_m0_wo0_cm52_q <= "000011111";
                WHEN "01111" => u0_m0_wo0_cm52_q <= "000011011";
                WHEN "10000" => u0_m0_wo0_cm52_q <= "000010001";
                WHEN "10001" => u0_m0_wo0_cm52_q <= "000010000";
                WHEN "10010" => u0_m0_wo0_cm52_q <= "000010001";
                WHEN "10011" => u0_m0_wo0_cm52_q <= "000000110";
                WHEN "10100" => u0_m0_wo0_cm52_q <= "111111011";
                WHEN "10101" => u0_m0_wo0_cm52_q <= "111111100";
                WHEN "10110" => u0_m0_wo0_cm52_q <= "000000010";
                WHEN "10111" => u0_m0_wo0_cm52_q <= "000000011";
                WHEN "11000" => u0_m0_wo0_cm52_q <= "000000011";
                WHEN "11001" => u0_m0_wo0_cm52_q <= "000001000";
                WHEN "11010" => u0_m0_wo0_cm52_q <= "000001110";
                WHEN "11011" => u0_m0_wo0_cm52_q <= "000010000";
                WHEN "11100" => u0_m0_wo0_cm52_q <= "000001110";
                WHEN "11101" => u0_m0_wo0_cm52_q <= "000001101";
                WHEN "11110" => u0_m0_wo0_cm52_q <= "000010100";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm52_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_14(MULT,228)@13 + 2
    u0_m0_wo0_mtree_mult1_14_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm52_q);
    u0_m0_wo0_mtree_mult1_14_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split52_b);
    u0_m0_wo0_mtree_mult1_14_reset <= areset;
    u0_m0_wo0_mtree_mult1_14_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 9,
        lpm_widthb => 12,
        lpm_widthp => 21,
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

    -- u0_m0_wo0_mtree_add0_7(ADD,250)@15 + 1
    u0_m0_wo0_mtree_add0_7_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 21 => u0_m0_wo0_mtree_mult1_14_q(20)) & u0_m0_wo0_mtree_mult1_14_q));
    u0_m0_wo0_mtree_add0_7_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 21 => u0_m0_wo0_mtree_mult1_15_q(20)) & u0_m0_wo0_mtree_mult1_15_q));
    u0_m0_wo0_mtree_add0_7_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_7_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_7_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_7_a) + SIGNED(u0_m0_wo0_mtree_add0_7_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_7_q <= u0_m0_wo0_mtree_add0_7_o(21 downto 0);

    -- u0_m0_wo0_cm53(LOOKUP,162)@12 + 1
    u0_m0_wo0_cm53_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm53_q <= "111110110";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca66_q) IS
                WHEN "00000" => u0_m0_wo0_cm53_q <= "111110110";
                WHEN "00001" => u0_m0_wo0_cm53_q <= "111111000";
                WHEN "00010" => u0_m0_wo0_cm53_q <= "111110111";
                WHEN "00011" => u0_m0_wo0_cm53_q <= "111111000";
                WHEN "00100" => u0_m0_wo0_cm53_q <= "000000000";
                WHEN "00101" => u0_m0_wo0_cm53_q <= "000000110";
                WHEN "00110" => u0_m0_wo0_cm53_q <= "000000101";
                WHEN "00111" => u0_m0_wo0_cm53_q <= "000000011";
                WHEN "01000" => u0_m0_wo0_cm53_q <= "111111101";
                WHEN "01001" => u0_m0_wo0_cm53_q <= "111111001";
                WHEN "01010" => u0_m0_wo0_cm53_q <= "111111100";
                WHEN "01011" => u0_m0_wo0_cm53_q <= "111111101";
                WHEN "01100" => u0_m0_wo0_cm53_q <= "000000001";
                WHEN "01101" => u0_m0_wo0_cm53_q <= "000000101";
                WHEN "01110" => u0_m0_wo0_cm53_q <= "000000010";
                WHEN "01111" => u0_m0_wo0_cm53_q <= "111111010";
                WHEN "10000" => u0_m0_wo0_cm53_q <= "111110000";
                WHEN "10001" => u0_m0_wo0_cm53_q <= "111110000";
                WHEN "10010" => u0_m0_wo0_cm53_q <= "111111011";
                WHEN "10011" => u0_m0_wo0_cm53_q <= "000000001";
                WHEN "10100" => u0_m0_wo0_cm53_q <= "000000010";
                WHEN "10101" => u0_m0_wo0_cm53_q <= "000000010";
                WHEN "10110" => u0_m0_wo0_cm53_q <= "000000101";
                WHEN "10111" => u0_m0_wo0_cm53_q <= "000001000";
                WHEN "11000" => u0_m0_wo0_cm53_q <= "000000111";
                WHEN "11001" => u0_m0_wo0_cm53_q <= "000001001";
                WHEN "11010" => u0_m0_wo0_cm53_q <= "000001110";
                WHEN "11011" => u0_m0_wo0_cm53_q <= "000010010";
                WHEN "11100" => u0_m0_wo0_cm53_q <= "000010010";
                WHEN "11101" => u0_m0_wo0_cm53_q <= "000010100";
                WHEN "11110" => u0_m0_wo0_cm53_q <= "000010110";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm53_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_13(MULT,229)@13 + 2
    u0_m0_wo0_mtree_mult1_13_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm53_q);
    u0_m0_wo0_mtree_mult1_13_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split52_c);
    u0_m0_wo0_mtree_mult1_13_reset <= areset;
    u0_m0_wo0_mtree_mult1_13_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 9,
        lpm_widthb => 12,
        lpm_widthp => 21,
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

    -- u0_m0_wo0_cm54(LOOKUP,163)@12 + 1
    u0_m0_wo0_cm54_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm54_q <= "111110100";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca66_q) IS
                WHEN "00000" => u0_m0_wo0_cm54_q <= "111110100";
                WHEN "00001" => u0_m0_wo0_cm54_q <= "111101111";
                WHEN "00010" => u0_m0_wo0_cm54_q <= "111101110";
                WHEN "00011" => u0_m0_wo0_cm54_q <= "111110110";
                WHEN "00100" => u0_m0_wo0_cm54_q <= "111111010";
                WHEN "00101" => u0_m0_wo0_cm54_q <= "111111001";
                WHEN "00110" => u0_m0_wo0_cm54_q <= "111110110";
                WHEN "00111" => u0_m0_wo0_cm54_q <= "111110010";
                WHEN "01000" => u0_m0_wo0_cm54_q <= "111110011";
                WHEN "01001" => u0_m0_wo0_cm54_q <= "111111001";
                WHEN "01010" => u0_m0_wo0_cm54_q <= "111111100";
                WHEN "01011" => u0_m0_wo0_cm54_q <= "111111001";
                WHEN "01100" => u0_m0_wo0_cm54_q <= "111111001";
                WHEN "01101" => u0_m0_wo0_cm54_q <= "111111011";
                WHEN "01110" => u0_m0_wo0_cm54_q <= "111110101";
                WHEN "01111" => u0_m0_wo0_cm54_q <= "111110010";
                WHEN "10000" => u0_m0_wo0_cm54_q <= "111110101";
                WHEN "10001" => u0_m0_wo0_cm54_q <= "111111010";
                WHEN "10010" => u0_m0_wo0_cm54_q <= "111111110";
                WHEN "10011" => u0_m0_wo0_cm54_q <= "000000011";
                WHEN "10100" => u0_m0_wo0_cm54_q <= "000000011";
                WHEN "10101" => u0_m0_wo0_cm54_q <= "111111011";
                WHEN "10110" => u0_m0_wo0_cm54_q <= "111110011";
                WHEN "10111" => u0_m0_wo0_cm54_q <= "111110010";
                WHEN "11000" => u0_m0_wo0_cm54_q <= "111111000";
                WHEN "11001" => u0_m0_wo0_cm54_q <= "111111110";
                WHEN "11010" => u0_m0_wo0_cm54_q <= "000000000";
                WHEN "11011" => u0_m0_wo0_cm54_q <= "111111111";
                WHEN "11100" => u0_m0_wo0_cm54_q <= "111111011";
                WHEN "11101" => u0_m0_wo0_cm54_q <= "111111001";
                WHEN "11110" => u0_m0_wo0_cm54_q <= "111110110";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm54_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_12(MULT,230)@13 + 2
    u0_m0_wo0_mtree_mult1_12_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm54_q);
    u0_m0_wo0_mtree_mult1_12_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split52_d);
    u0_m0_wo0_mtree_mult1_12_reset <= areset;
    u0_m0_wo0_mtree_mult1_12_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 9,
        lpm_widthb => 12,
        lpm_widthp => 21,
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

    -- u0_m0_wo0_mtree_add0_6(ADD,249)@15 + 1
    u0_m0_wo0_mtree_add0_6_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 21 => u0_m0_wo0_mtree_mult1_12_q(20)) & u0_m0_wo0_mtree_mult1_12_q));
    u0_m0_wo0_mtree_add0_6_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 21 => u0_m0_wo0_mtree_mult1_13_q(20)) & u0_m0_wo0_mtree_mult1_13_q));
    u0_m0_wo0_mtree_add0_6_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_6_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_6_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_6_a) + SIGNED(u0_m0_wo0_mtree_add0_6_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_6_q <= u0_m0_wo0_mtree_add0_6_o(21 downto 0);

    -- u0_m0_wo0_mtree_add1_3(ADD,279)@16 + 1
    u0_m0_wo0_mtree_add1_3_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((22 downto 22 => u0_m0_wo0_mtree_add0_6_q(21)) & u0_m0_wo0_mtree_add0_6_q));
    u0_m0_wo0_mtree_add1_3_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((22 downto 22 => u0_m0_wo0_mtree_add0_7_q(21)) & u0_m0_wo0_mtree_add0_7_q));
    u0_m0_wo0_mtree_add1_3_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_3_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_3_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_3_a) + SIGNED(u0_m0_wo0_mtree_add1_3_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_3_q <= u0_m0_wo0_mtree_add1_3_o(22 downto 0);

    -- u0_m0_wo0_wi0_r0_join55(BITJOIN,93)@13
    u0_m0_wo0_wi0_r0_join55_q <= u0_m0_wo0_wi0_r0_split55_c & u0_m0_wo0_wi0_r0_split55_b & u0_m0_wo0_wi0_r0_split52_d;

    -- u0_m0_wo0_wi0_r0_memr55(DUALMEM,95)@13
    u0_m0_wo0_wi0_r0_memr55_ia <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_join55_q);
    u0_m0_wo0_wi0_r0_memr55_aa <= u0_m0_wo0_wi0_r0_wa66_q;
    u0_m0_wo0_wi0_r0_memr55_ab <= u0_m0_wo0_wi0_r0_ra66_resize_b;
    u0_m0_wo0_wi0_r0_memr55_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "DUAL_PORT",
        width_a => 36,
        widthad_a => 6,
        numwords_a => 64,
        width_b => 36,
        widthad_b => 6,
        numwords_b => 64,
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
        address_a => u0_m0_wo0_wi0_r0_memr55_aa,
        data_a => u0_m0_wo0_wi0_r0_memr55_ia,
        wren_a => u0_m0_wo0_wi0_r0_we66_seq_q(0),
        address_b => u0_m0_wo0_wi0_r0_memr55_ab,
        q_b => u0_m0_wo0_wi0_r0_memr55_iq
    );
    u0_m0_wo0_wi0_r0_memr55_q <= u0_m0_wo0_wi0_r0_memr55_iq(35 downto 0);

    -- u0_m0_wo0_wi0_r0_split55(BITSELECT,94)@13
    u0_m0_wo0_wi0_r0_split55_b <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr55_q(11 downto 0));
    u0_m0_wo0_wi0_r0_split55_c <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr55_q(23 downto 12));
    u0_m0_wo0_wi0_r0_split55_d <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr55_q(35 downto 24));

    -- u0_m0_wo0_cm55(LOOKUP,164)@12 + 1
    u0_m0_wo0_cm55_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm55_q <= "111111011";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca66_q) IS
                WHEN "00000" => u0_m0_wo0_cm55_q <= "111111011";
                WHEN "00001" => u0_m0_wo0_cm55_q <= "111110000";
                WHEN "00010" => u0_m0_wo0_cm55_q <= "111100101";
                WHEN "00011" => u0_m0_wo0_cm55_q <= "111011111";
                WHEN "00100" => u0_m0_wo0_cm55_q <= "111100110";
                WHEN "00101" => u0_m0_wo0_cm55_q <= "111111000";
                WHEN "00110" => u0_m0_wo0_cm55_q <= "000001000";
                WHEN "00111" => u0_m0_wo0_cm55_q <= "000010000";
                WHEN "01000" => u0_m0_wo0_cm55_q <= "000010010";
                WHEN "01001" => u0_m0_wo0_cm55_q <= "000001110";
                WHEN "01010" => u0_m0_wo0_cm55_q <= "000000000";
                WHEN "01011" => u0_m0_wo0_cm55_q <= "111110000";
                WHEN "01100" => u0_m0_wo0_cm55_q <= "111110000";
                WHEN "01101" => u0_m0_wo0_cm55_q <= "111111011";
                WHEN "01110" => u0_m0_wo0_cm55_q <= "111111011";
                WHEN "01111" => u0_m0_wo0_cm55_q <= "111110111";
                WHEN "10000" => u0_m0_wo0_cm55_q <= "111111100";
                WHEN "10001" => u0_m0_wo0_cm55_q <= "000000011";
                WHEN "10010" => u0_m0_wo0_cm55_q <= "000000110";
                WHEN "10011" => u0_m0_wo0_cm55_q <= "000000101";
                WHEN "10100" => u0_m0_wo0_cm55_q <= "000001000";
                WHEN "10101" => u0_m0_wo0_cm55_q <= "000001000";
                WHEN "10110" => u0_m0_wo0_cm55_q <= "000000000";
                WHEN "10111" => u0_m0_wo0_cm55_q <= "111110011";
                WHEN "11000" => u0_m0_wo0_cm55_q <= "111101101";
                WHEN "11001" => u0_m0_wo0_cm55_q <= "111110011";
                WHEN "11010" => u0_m0_wo0_cm55_q <= "111111100";
                WHEN "11011" => u0_m0_wo0_cm55_q <= "000000101";
                WHEN "11100" => u0_m0_wo0_cm55_q <= "000001000";
                WHEN "11101" => u0_m0_wo0_cm55_q <= "000000100";
                WHEN "11110" => u0_m0_wo0_cm55_q <= "111111011";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm55_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_11(MULT,231)@13 + 2
    u0_m0_wo0_mtree_mult1_11_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm55_q);
    u0_m0_wo0_mtree_mult1_11_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split55_b);
    u0_m0_wo0_mtree_mult1_11_reset <= areset;
    u0_m0_wo0_mtree_mult1_11_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 9,
        lpm_widthb => 12,
        lpm_widthp => 21,
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

    -- u0_m0_wo0_cm56(LOOKUP,165)@12 + 1
    u0_m0_wo0_cm56_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm56_q <= "000000011";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca66_q) IS
                WHEN "00000" => u0_m0_wo0_cm56_q <= "000000011";
                WHEN "00001" => u0_m0_wo0_cm56_q <= "000000111";
                WHEN "00010" => u0_m0_wo0_cm56_q <= "000001011";
                WHEN "00011" => u0_m0_wo0_cm56_q <= "000001100";
                WHEN "00100" => u0_m0_wo0_cm56_q <= "000001100";
                WHEN "00101" => u0_m0_wo0_cm56_q <= "000001100";
                WHEN "00110" => u0_m0_wo0_cm56_q <= "000001001";
                WHEN "00111" => u0_m0_wo0_cm56_q <= "000001001";
                WHEN "01000" => u0_m0_wo0_cm56_q <= "000001001";
                WHEN "01001" => u0_m0_wo0_cm56_q <= "000000111";
                WHEN "01010" => u0_m0_wo0_cm56_q <= "000000101";
                WHEN "01011" => u0_m0_wo0_cm56_q <= "000000000";
                WHEN "01100" => u0_m0_wo0_cm56_q <= "111111011";
                WHEN "01101" => u0_m0_wo0_cm56_q <= "111111010";
                WHEN "01110" => u0_m0_wo0_cm56_q <= "111111011";
                WHEN "01111" => u0_m0_wo0_cm56_q <= "111110111";
                WHEN "10000" => u0_m0_wo0_cm56_q <= "111110110";
                WHEN "10001" => u0_m0_wo0_cm56_q <= "111111011";
                WHEN "10010" => u0_m0_wo0_cm56_q <= "000000000";
                WHEN "10011" => u0_m0_wo0_cm56_q <= "000000000";
                WHEN "10100" => u0_m0_wo0_cm56_q <= "000000000";
                WHEN "10101" => u0_m0_wo0_cm56_q <= "000000000";
                WHEN "10110" => u0_m0_wo0_cm56_q <= "111111111";
                WHEN "10111" => u0_m0_wo0_cm56_q <= "111111010";
                WHEN "11000" => u0_m0_wo0_cm56_q <= "111111001";
                WHEN "11001" => u0_m0_wo0_cm56_q <= "111111000";
                WHEN "11010" => u0_m0_wo0_cm56_q <= "111111000";
                WHEN "11011" => u0_m0_wo0_cm56_q <= "111111100";
                WHEN "11100" => u0_m0_wo0_cm56_q <= "000000000";
                WHEN "11101" => u0_m0_wo0_cm56_q <= "000000010";
                WHEN "11110" => u0_m0_wo0_cm56_q <= "000000000";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm56_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_10(MULT,232)@13 + 2
    u0_m0_wo0_mtree_mult1_10_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm56_q);
    u0_m0_wo0_mtree_mult1_10_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split55_c);
    u0_m0_wo0_mtree_mult1_10_reset <= areset;
    u0_m0_wo0_mtree_mult1_10_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 9,
        lpm_widthb => 12,
        lpm_widthp => 21,
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

    -- u0_m0_wo0_mtree_add0_5(ADD,248)@15 + 1
    u0_m0_wo0_mtree_add0_5_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 21 => u0_m0_wo0_mtree_mult1_10_q(20)) & u0_m0_wo0_mtree_mult1_10_q));
    u0_m0_wo0_mtree_add0_5_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 21 => u0_m0_wo0_mtree_mult1_11_q(20)) & u0_m0_wo0_mtree_mult1_11_q));
    u0_m0_wo0_mtree_add0_5_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_5_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_5_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_5_a) + SIGNED(u0_m0_wo0_mtree_add0_5_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_5_q <= u0_m0_wo0_mtree_add0_5_o(21 downto 0);

    -- u0_m0_wo0_cm57(LOOKUP,166)@12 + 1
    u0_m0_wo0_cm57_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm57_q <= "000001100";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca66_q) IS
                WHEN "00000" => u0_m0_wo0_cm57_q <= "000001100";
                WHEN "00001" => u0_m0_wo0_cm57_q <= "000001101";
                WHEN "00010" => u0_m0_wo0_cm57_q <= "000001001";
                WHEN "00011" => u0_m0_wo0_cm57_q <= "000000000";
                WHEN "00100" => u0_m0_wo0_cm57_q <= "111111101";
                WHEN "00101" => u0_m0_wo0_cm57_q <= "111111111";
                WHEN "00110" => u0_m0_wo0_cm57_q <= "000000011";
                WHEN "00111" => u0_m0_wo0_cm57_q <= "000000100";
                WHEN "01000" => u0_m0_wo0_cm57_q <= "000000101";
                WHEN "01001" => u0_m0_wo0_cm57_q <= "000001001";
                WHEN "01010" => u0_m0_wo0_cm57_q <= "000010000";
                WHEN "01011" => u0_m0_wo0_cm57_q <= "000001111";
                WHEN "01100" => u0_m0_wo0_cm57_q <= "000000101";
                WHEN "01101" => u0_m0_wo0_cm57_q <= "111111110";
                WHEN "01110" => u0_m0_wo0_cm57_q <= "000000011";
                WHEN "01111" => u0_m0_wo0_cm57_q <= "000001011";
                WHEN "10000" => u0_m0_wo0_cm57_q <= "000001011";
                WHEN "10001" => u0_m0_wo0_cm57_q <= "000000111";
                WHEN "10010" => u0_m0_wo0_cm57_q <= "000000011";
                WHEN "10011" => u0_m0_wo0_cm57_q <= "000000011";
                WHEN "10100" => u0_m0_wo0_cm57_q <= "000000101";
                WHEN "10101" => u0_m0_wo0_cm57_q <= "000001001";
                WHEN "10110" => u0_m0_wo0_cm57_q <= "000001101";
                WHEN "10111" => u0_m0_wo0_cm57_q <= "000001110";
                WHEN "11000" => u0_m0_wo0_cm57_q <= "000001110";
                WHEN "11001" => u0_m0_wo0_cm57_q <= "000001101";
                WHEN "11010" => u0_m0_wo0_cm57_q <= "000001110";
                WHEN "11011" => u0_m0_wo0_cm57_q <= "000001101";
                WHEN "11100" => u0_m0_wo0_cm57_q <= "000001010";
                WHEN "11101" => u0_m0_wo0_cm57_q <= "000000111";
                WHEN "11110" => u0_m0_wo0_cm57_q <= "000000100";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm57_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_9(MULT,233)@13 + 2
    u0_m0_wo0_mtree_mult1_9_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm57_q);
    u0_m0_wo0_mtree_mult1_9_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split55_d);
    u0_m0_wo0_mtree_mult1_9_reset <= areset;
    u0_m0_wo0_mtree_mult1_9_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 9,
        lpm_widthb => 12,
        lpm_widthp => 21,
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

    -- u0_m0_wo0_wi0_r0_join58(BITJOIN,96)@13
    u0_m0_wo0_wi0_r0_join58_q <= u0_m0_wo0_wi0_r0_split58_c & u0_m0_wo0_wi0_r0_split58_b & u0_m0_wo0_wi0_r0_split55_d;

    -- u0_m0_wo0_wi0_r0_memr58(DUALMEM,98)@13
    u0_m0_wo0_wi0_r0_memr58_ia <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_join58_q);
    u0_m0_wo0_wi0_r0_memr58_aa <= u0_m0_wo0_wi0_r0_wa66_q;
    u0_m0_wo0_wi0_r0_memr58_ab <= u0_m0_wo0_wi0_r0_ra66_resize_b;
    u0_m0_wo0_wi0_r0_memr58_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "DUAL_PORT",
        width_a => 36,
        widthad_a => 6,
        numwords_a => 64,
        width_b => 36,
        widthad_b => 6,
        numwords_b => 64,
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
        address_a => u0_m0_wo0_wi0_r0_memr58_aa,
        data_a => u0_m0_wo0_wi0_r0_memr58_ia,
        wren_a => u0_m0_wo0_wi0_r0_we66_seq_q(0),
        address_b => u0_m0_wo0_wi0_r0_memr58_ab,
        q_b => u0_m0_wo0_wi0_r0_memr58_iq
    );
    u0_m0_wo0_wi0_r0_memr58_q <= u0_m0_wo0_wi0_r0_memr58_iq(35 downto 0);

    -- u0_m0_wo0_wi0_r0_split58(BITSELECT,97)@13
    u0_m0_wo0_wi0_r0_split58_b <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr58_q(11 downto 0));
    u0_m0_wo0_wi0_r0_split58_c <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr58_q(23 downto 12));
    u0_m0_wo0_wi0_r0_split58_d <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr58_q(35 downto 24));

    -- u0_m0_wo0_cm58(LOOKUP,167)@12 + 1
    u0_m0_wo0_cm58_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm58_q <= "000000110";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca66_q) IS
                WHEN "00000" => u0_m0_wo0_cm58_q <= "000000110";
                WHEN "00001" => u0_m0_wo0_cm58_q <= "000001100";
                WHEN "00010" => u0_m0_wo0_cm58_q <= "000010000";
                WHEN "00011" => u0_m0_wo0_cm58_q <= "000001110";
                WHEN "00100" => u0_m0_wo0_cm58_q <= "000001001";
                WHEN "00101" => u0_m0_wo0_cm58_q <= "000000111";
                WHEN "00110" => u0_m0_wo0_cm58_q <= "000001001";
                WHEN "00111" => u0_m0_wo0_cm58_q <= "000001011";
                WHEN "01000" => u0_m0_wo0_cm58_q <= "000001000";
                WHEN "01001" => u0_m0_wo0_cm58_q <= "000000011";
                WHEN "01010" => u0_m0_wo0_cm58_q <= "000000000";
                WHEN "01011" => u0_m0_wo0_cm58_q <= "111111100";
                WHEN "01100" => u0_m0_wo0_cm58_q <= "111111000";
                WHEN "01101" => u0_m0_wo0_cm58_q <= "111111010";
                WHEN "01110" => u0_m0_wo0_cm58_q <= "000000001";
                WHEN "01111" => u0_m0_wo0_cm58_q <= "000000100";
                WHEN "10000" => u0_m0_wo0_cm58_q <= "000000010";
                WHEN "10001" => u0_m0_wo0_cm58_q <= "111111110";
                WHEN "10010" => u0_m0_wo0_cm58_q <= "111111100";
                WHEN "10011" => u0_m0_wo0_cm58_q <= "111111101";
                WHEN "10100" => u0_m0_wo0_cm58_q <= "111111111";
                WHEN "10101" => u0_m0_wo0_cm58_q <= "000000101";
                WHEN "10110" => u0_m0_wo0_cm58_q <= "000001101";
                WHEN "10111" => u0_m0_wo0_cm58_q <= "000001111";
                WHEN "11000" => u0_m0_wo0_cm58_q <= "000001111";
                WHEN "11001" => u0_m0_wo0_cm58_q <= "000001101";
                WHEN "11010" => u0_m0_wo0_cm58_q <= "000001001";
                WHEN "11011" => u0_m0_wo0_cm58_q <= "000001010";
                WHEN "11100" => u0_m0_wo0_cm58_q <= "000001101";
                WHEN "11101" => u0_m0_wo0_cm58_q <= "000001100";
                WHEN "11110" => u0_m0_wo0_cm58_q <= "000001100";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm58_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_8(MULT,234)@13 + 2
    u0_m0_wo0_mtree_mult1_8_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm58_q);
    u0_m0_wo0_mtree_mult1_8_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split58_b);
    u0_m0_wo0_mtree_mult1_8_reset <= areset;
    u0_m0_wo0_mtree_mult1_8_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 9,
        lpm_widthb => 12,
        lpm_widthp => 21,
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

    -- u0_m0_wo0_mtree_add0_4(ADD,247)@15 + 1
    u0_m0_wo0_mtree_add0_4_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 21 => u0_m0_wo0_mtree_mult1_8_q(20)) & u0_m0_wo0_mtree_mult1_8_q));
    u0_m0_wo0_mtree_add0_4_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 21 => u0_m0_wo0_mtree_mult1_9_q(20)) & u0_m0_wo0_mtree_mult1_9_q));
    u0_m0_wo0_mtree_add0_4_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_4_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_4_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_4_a) + SIGNED(u0_m0_wo0_mtree_add0_4_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_4_q <= u0_m0_wo0_mtree_add0_4_o(21 downto 0);

    -- u0_m0_wo0_mtree_add1_2(ADD,278)@16 + 1
    u0_m0_wo0_mtree_add1_2_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((22 downto 22 => u0_m0_wo0_mtree_add0_4_q(21)) & u0_m0_wo0_mtree_add0_4_q));
    u0_m0_wo0_mtree_add1_2_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((22 downto 22 => u0_m0_wo0_mtree_add0_5_q(21)) & u0_m0_wo0_mtree_add0_5_q));
    u0_m0_wo0_mtree_add1_2_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_2_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_2_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_2_a) + SIGNED(u0_m0_wo0_mtree_add1_2_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_2_q <= u0_m0_wo0_mtree_add1_2_o(22 downto 0);

    -- u0_m0_wo0_mtree_add2_1(ADD,294)@17 + 1
    u0_m0_wo0_mtree_add2_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((23 downto 23 => u0_m0_wo0_mtree_add1_2_q(22)) & u0_m0_wo0_mtree_add1_2_q));
    u0_m0_wo0_mtree_add2_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((23 downto 23 => u0_m0_wo0_mtree_add1_3_q(22)) & u0_m0_wo0_mtree_add1_3_q));
    u0_m0_wo0_mtree_add2_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add2_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add2_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add2_1_a) + SIGNED(u0_m0_wo0_mtree_add2_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add2_1_q <= u0_m0_wo0_mtree_add2_1_o(23 downto 0);

    -- u0_m0_wo0_cm59(LOOKUP,168)@12 + 1
    u0_m0_wo0_cm59_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm59_q <= "111111100";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca66_q) IS
                WHEN "00000" => u0_m0_wo0_cm59_q <= "111111100";
                WHEN "00001" => u0_m0_wo0_cm59_q <= "111111100";
                WHEN "00010" => u0_m0_wo0_cm59_q <= "111111011";
                WHEN "00011" => u0_m0_wo0_cm59_q <= "111111101";
                WHEN "00100" => u0_m0_wo0_cm59_q <= "000000000";
                WHEN "00101" => u0_m0_wo0_cm59_q <= "000000100";
                WHEN "00110" => u0_m0_wo0_cm59_q <= "000000011";
                WHEN "00111" => u0_m0_wo0_cm59_q <= "000000000";
                WHEN "01000" => u0_m0_wo0_cm59_q <= "111111110";
                WHEN "01001" => u0_m0_wo0_cm59_q <= "111111100";
                WHEN "01010" => u0_m0_wo0_cm59_q <= "111111101";
                WHEN "01011" => u0_m0_wo0_cm59_q <= "111111110";
                WHEN "01100" => u0_m0_wo0_cm59_q <= "111111111";
                WHEN "01101" => u0_m0_wo0_cm59_q <= "000000000";
                WHEN "01110" => u0_m0_wo0_cm59_q <= "000000010";
                WHEN "01111" => u0_m0_wo0_cm59_q <= "000000110";
                WHEN "10000" => u0_m0_wo0_cm59_q <= "000000111";
                WHEN "10001" => u0_m0_wo0_cm59_q <= "000000101";
                WHEN "10010" => u0_m0_wo0_cm59_q <= "000000010";
                WHEN "10011" => u0_m0_wo0_cm59_q <= "000000011";
                WHEN "10100" => u0_m0_wo0_cm59_q <= "000000101";
                WHEN "10101" => u0_m0_wo0_cm59_q <= "000000101";
                WHEN "10110" => u0_m0_wo0_cm59_q <= "000000110";
                WHEN "10111" => u0_m0_wo0_cm59_q <= "000000101";
                WHEN "11000" => u0_m0_wo0_cm59_q <= "000000010";
                WHEN "11001" => u0_m0_wo0_cm59_q <= "000000000";
                WHEN "11010" => u0_m0_wo0_cm59_q <= "111111111";
                WHEN "11011" => u0_m0_wo0_cm59_q <= "000000000";
                WHEN "11100" => u0_m0_wo0_cm59_q <= "111111111";
                WHEN "11101" => u0_m0_wo0_cm59_q <= "111111111";
                WHEN "11110" => u0_m0_wo0_cm59_q <= "000000001";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm59_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_7(MULT,235)@13 + 2
    u0_m0_wo0_mtree_mult1_7_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm59_q);
    u0_m0_wo0_mtree_mult1_7_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split58_c);
    u0_m0_wo0_mtree_mult1_7_reset <= areset;
    u0_m0_wo0_mtree_mult1_7_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 9,
        lpm_widthb => 12,
        lpm_widthp => 21,
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

    -- u0_m0_wo0_cm60(LOOKUP,169)@12 + 1
    u0_m0_wo0_cm60_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm60_q <= "111111110";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca66_q) IS
                WHEN "00000" => u0_m0_wo0_cm60_q <= "111111110";
                WHEN "00001" => u0_m0_wo0_cm60_q <= "111111101";
                WHEN "00010" => u0_m0_wo0_cm60_q <= "111111110";
                WHEN "00011" => u0_m0_wo0_cm60_q <= "111111111";
                WHEN "00100" => u0_m0_wo0_cm60_q <= "111111101";
                WHEN "00101" => u0_m0_wo0_cm60_q <= "111111010";
                WHEN "00110" => u0_m0_wo0_cm60_q <= "111111010";
                WHEN "00111" => u0_m0_wo0_cm60_q <= "111111101";
                WHEN "01000" => u0_m0_wo0_cm60_q <= "111111110";
                WHEN "01001" => u0_m0_wo0_cm60_q <= "111111100";
                WHEN "01010" => u0_m0_wo0_cm60_q <= "111111011";
                WHEN "01011" => u0_m0_wo0_cm60_q <= "111111001";
                WHEN "01100" => u0_m0_wo0_cm60_q <= "111111000";
                WHEN "01101" => u0_m0_wo0_cm60_q <= "111111001";
                WHEN "01110" => u0_m0_wo0_cm60_q <= "111111010";
                WHEN "01111" => u0_m0_wo0_cm60_q <= "111111000";
                WHEN "10000" => u0_m0_wo0_cm60_q <= "111110111";
                WHEN "10001" => u0_m0_wo0_cm60_q <= "111111010";
                WHEN "10010" => u0_m0_wo0_cm60_q <= "000000000";
                WHEN "10011" => u0_m0_wo0_cm60_q <= "000000010";
                WHEN "10100" => u0_m0_wo0_cm60_q <= "000000010";
                WHEN "10101" => u0_m0_wo0_cm60_q <= "000000000";
                WHEN "10110" => u0_m0_wo0_cm60_q <= "111111100";
                WHEN "10111" => u0_m0_wo0_cm60_q <= "111111010";
                WHEN "11000" => u0_m0_wo0_cm60_q <= "111111011";
                WHEN "11001" => u0_m0_wo0_cm60_q <= "111111011";
                WHEN "11010" => u0_m0_wo0_cm60_q <= "111111011";
                WHEN "11011" => u0_m0_wo0_cm60_q <= "111111011";
                WHEN "11100" => u0_m0_wo0_cm60_q <= "111111100";
                WHEN "11101" => u0_m0_wo0_cm60_q <= "111111100";
                WHEN "11110" => u0_m0_wo0_cm60_q <= "111111011";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm60_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_6(MULT,236)@13 + 2
    u0_m0_wo0_mtree_mult1_6_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm60_q);
    u0_m0_wo0_mtree_mult1_6_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split58_d);
    u0_m0_wo0_mtree_mult1_6_reset <= areset;
    u0_m0_wo0_mtree_mult1_6_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 9,
        lpm_widthb => 12,
        lpm_widthp => 21,
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

    -- u0_m0_wo0_mtree_add0_3(ADD,246)@15 + 1
    u0_m0_wo0_mtree_add0_3_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 21 => u0_m0_wo0_mtree_mult1_6_q(20)) & u0_m0_wo0_mtree_mult1_6_q));
    u0_m0_wo0_mtree_add0_3_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 21 => u0_m0_wo0_mtree_mult1_7_q(20)) & u0_m0_wo0_mtree_mult1_7_q));
    u0_m0_wo0_mtree_add0_3_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_3_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_3_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_3_a) + SIGNED(u0_m0_wo0_mtree_add0_3_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_3_q <= u0_m0_wo0_mtree_add0_3_o(21 downto 0);

    -- u0_m0_wo0_wi0_r0_join61(BITJOIN,99)@13
    u0_m0_wo0_wi0_r0_join61_q <= u0_m0_wo0_wi0_r0_split61_c & u0_m0_wo0_wi0_r0_split61_b & u0_m0_wo0_wi0_r0_split58_d;

    -- u0_m0_wo0_wi0_r0_memr61(DUALMEM,101)@13
    u0_m0_wo0_wi0_r0_memr61_ia <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_join61_q);
    u0_m0_wo0_wi0_r0_memr61_aa <= u0_m0_wo0_wi0_r0_wa66_q;
    u0_m0_wo0_wi0_r0_memr61_ab <= u0_m0_wo0_wi0_r0_ra66_resize_b;
    u0_m0_wo0_wi0_r0_memr61_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "DUAL_PORT",
        width_a => 36,
        widthad_a => 6,
        numwords_a => 64,
        width_b => 36,
        widthad_b => 6,
        numwords_b => 64,
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
        address_a => u0_m0_wo0_wi0_r0_memr61_aa,
        data_a => u0_m0_wo0_wi0_r0_memr61_ia,
        wren_a => u0_m0_wo0_wi0_r0_we66_seq_q(0),
        address_b => u0_m0_wo0_wi0_r0_memr61_ab,
        q_b => u0_m0_wo0_wi0_r0_memr61_iq
    );
    u0_m0_wo0_wi0_r0_memr61_q <= u0_m0_wo0_wi0_r0_memr61_iq(35 downto 0);

    -- u0_m0_wo0_wi0_r0_split61(BITSELECT,100)@13
    u0_m0_wo0_wi0_r0_split61_b <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr61_q(11 downto 0));
    u0_m0_wo0_wi0_r0_split61_c <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr61_q(23 downto 12));
    u0_m0_wo0_wi0_r0_split61_d <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr61_q(35 downto 24));

    -- u0_m0_wo0_cm61(LOOKUP,170)@12 + 1
    u0_m0_wo0_cm61_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm61_q <= "000000000";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca66_q) IS
                WHEN "00000" => u0_m0_wo0_cm61_q <= "000000000";
                WHEN "00001" => u0_m0_wo0_cm61_q <= "111111110";
                WHEN "00010" => u0_m0_wo0_cm61_q <= "111111101";
                WHEN "00011" => u0_m0_wo0_cm61_q <= "111111110";
                WHEN "00100" => u0_m0_wo0_cm61_q <= "000000000";
                WHEN "00101" => u0_m0_wo0_cm61_q <= "111111111";
                WHEN "00110" => u0_m0_wo0_cm61_q <= "111111110";
                WHEN "00111" => u0_m0_wo0_cm61_q <= "111111111";
                WHEN "01000" => u0_m0_wo0_cm61_q <= "000000000";
                WHEN "01001" => u0_m0_wo0_cm61_q <= "000000000";
                WHEN "01010" => u0_m0_wo0_cm61_q <= "000000000";
                WHEN "01011" => u0_m0_wo0_cm61_q <= "000000000";
                WHEN "01100" => u0_m0_wo0_cm61_q <= "000000000";
                WHEN "01101" => u0_m0_wo0_cm61_q <= "000000000";
                WHEN "01110" => u0_m0_wo0_cm61_q <= "000000000";
                WHEN "01111" => u0_m0_wo0_cm61_q <= "111111111";
                WHEN "10000" => u0_m0_wo0_cm61_q <= "111111111";
                WHEN "10001" => u0_m0_wo0_cm61_q <= "111111110";
                WHEN "10010" => u0_m0_wo0_cm61_q <= "111111111";
                WHEN "10011" => u0_m0_wo0_cm61_q <= "000000000";
                WHEN "10100" => u0_m0_wo0_cm61_q <= "111111111";
                WHEN "10101" => u0_m0_wo0_cm61_q <= "111111110";
                WHEN "10110" => u0_m0_wo0_cm61_q <= "111111100";
                WHEN "10111" => u0_m0_wo0_cm61_q <= "111111010";
                WHEN "11000" => u0_m0_wo0_cm61_q <= "111111011";
                WHEN "11001" => u0_m0_wo0_cm61_q <= "111111101";
                WHEN "11010" => u0_m0_wo0_cm61_q <= "111111110";
                WHEN "11011" => u0_m0_wo0_cm61_q <= "111111110";
                WHEN "11100" => u0_m0_wo0_cm61_q <= "111111110";
                WHEN "11101" => u0_m0_wo0_cm61_q <= "111111110";
                WHEN "11110" => u0_m0_wo0_cm61_q <= "111111110";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm61_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_5(MULT,237)@13 + 2
    u0_m0_wo0_mtree_mult1_5_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm61_q);
    u0_m0_wo0_mtree_mult1_5_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split61_b);
    u0_m0_wo0_mtree_mult1_5_reset <= areset;
    u0_m0_wo0_mtree_mult1_5_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 9,
        lpm_widthb => 12,
        lpm_widthp => 21,
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

    -- u0_m0_wo0_cm62(LOOKUP,171)@12 + 1
    u0_m0_wo0_cm62_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm62_q <= "000000100";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca66_q) IS
                WHEN "00000" => u0_m0_wo0_cm62_q <= "000000100";
                WHEN "00001" => u0_m0_wo0_cm62_q <= "000000011";
                WHEN "00010" => u0_m0_wo0_cm62_q <= "000000010";
                WHEN "00011" => u0_m0_wo0_cm62_q <= "000000001";
                WHEN "00100" => u0_m0_wo0_cm62_q <= "000000000";
                WHEN "00101" => u0_m0_wo0_cm62_q <= "000000000";
                WHEN "00110" => u0_m0_wo0_cm62_q <= "000000001";
                WHEN "00111" => u0_m0_wo0_cm62_q <= "000000011";
                WHEN "01000" => u0_m0_wo0_cm62_q <= "000000011";
                WHEN "01001" => u0_m0_wo0_cm62_q <= "000000010";
                WHEN "01010" => u0_m0_wo0_cm62_q <= "000000010";
                WHEN "01011" => u0_m0_wo0_cm62_q <= "000000010";
                WHEN "01100" => u0_m0_wo0_cm62_q <= "000000010";
                WHEN "01101" => u0_m0_wo0_cm62_q <= "000000010";
                WHEN "01110" => u0_m0_wo0_cm62_q <= "000000001";
                WHEN "01111" => u0_m0_wo0_cm62_q <= "000000000";
                WHEN "10000" => u0_m0_wo0_cm62_q <= "111111110";
                WHEN "10001" => u0_m0_wo0_cm62_q <= "111111111";
                WHEN "10010" => u0_m0_wo0_cm62_q <= "000000000";
                WHEN "10011" => u0_m0_wo0_cm62_q <= "000000000";
                WHEN "10100" => u0_m0_wo0_cm62_q <= "000000000";
                WHEN "10101" => u0_m0_wo0_cm62_q <= "000000001";
                WHEN "10110" => u0_m0_wo0_cm62_q <= "000000010";
                WHEN "10111" => u0_m0_wo0_cm62_q <= "000000010";
                WHEN "11000" => u0_m0_wo0_cm62_q <= "000000010";
                WHEN "11001" => u0_m0_wo0_cm62_q <= "000000010";
                WHEN "11010" => u0_m0_wo0_cm62_q <= "000000001";
                WHEN "11011" => u0_m0_wo0_cm62_q <= "000000000";
                WHEN "11100" => u0_m0_wo0_cm62_q <= "000000000";
                WHEN "11101" => u0_m0_wo0_cm62_q <= "000000000";
                WHEN "11110" => u0_m0_wo0_cm62_q <= "000000000";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm62_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_4(MULT,238)@13 + 2
    u0_m0_wo0_mtree_mult1_4_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm62_q);
    u0_m0_wo0_mtree_mult1_4_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split61_c);
    u0_m0_wo0_mtree_mult1_4_reset <= areset;
    u0_m0_wo0_mtree_mult1_4_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 9,
        lpm_widthb => 12,
        lpm_widthp => 21,
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

    -- u0_m0_wo0_mtree_add0_2(ADD,245)@15 + 1
    u0_m0_wo0_mtree_add0_2_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 21 => u0_m0_wo0_mtree_mult1_4_q(20)) & u0_m0_wo0_mtree_mult1_4_q));
    u0_m0_wo0_mtree_add0_2_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 21 => u0_m0_wo0_mtree_mult1_5_q(20)) & u0_m0_wo0_mtree_mult1_5_q));
    u0_m0_wo0_mtree_add0_2_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_2_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_2_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_2_a) + SIGNED(u0_m0_wo0_mtree_add0_2_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_2_q <= u0_m0_wo0_mtree_add0_2_o(21 downto 0);

    -- u0_m0_wo0_mtree_add1_1(ADD,277)@16 + 1
    u0_m0_wo0_mtree_add1_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((22 downto 22 => u0_m0_wo0_mtree_add0_2_q(21)) & u0_m0_wo0_mtree_add0_2_q));
    u0_m0_wo0_mtree_add1_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((22 downto 22 => u0_m0_wo0_mtree_add0_3_q(21)) & u0_m0_wo0_mtree_add0_3_q));
    u0_m0_wo0_mtree_add1_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_1_a) + SIGNED(u0_m0_wo0_mtree_add1_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_1_q <= u0_m0_wo0_mtree_add1_1_o(22 downto 0);

    -- u0_m0_wo0_cm63(LOOKUP,172)@12 + 1
    u0_m0_wo0_cm63_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm63_q <= "000000000";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca66_q) IS
                WHEN "00000" => u0_m0_wo0_cm63_q <= "000000000";
                WHEN "00001" => u0_m0_wo0_cm63_q <= "000000001";
                WHEN "00010" => u0_m0_wo0_cm63_q <= "000000000";
                WHEN "00011" => u0_m0_wo0_cm63_q <= "000000000";
                WHEN "00100" => u0_m0_wo0_cm63_q <= "000000000";
                WHEN "00101" => u0_m0_wo0_cm63_q <= "000000000";
                WHEN "00110" => u0_m0_wo0_cm63_q <= "000000001";
                WHEN "00111" => u0_m0_wo0_cm63_q <= "000000001";
                WHEN "01000" => u0_m0_wo0_cm63_q <= "000000001";
                WHEN "01001" => u0_m0_wo0_cm63_q <= "000000001";
                WHEN "01010" => u0_m0_wo0_cm63_q <= "000000001";
                WHEN "01011" => u0_m0_wo0_cm63_q <= "000000010";
                WHEN "01100" => u0_m0_wo0_cm63_q <= "000000001";
                WHEN "01101" => u0_m0_wo0_cm63_q <= "000000001";
                WHEN "01110" => u0_m0_wo0_cm63_q <= "000000001";
                WHEN "01111" => u0_m0_wo0_cm63_q <= "000000010";
                WHEN "10000" => u0_m0_wo0_cm63_q <= "000000001";
                WHEN "10001" => u0_m0_wo0_cm63_q <= "000000000";
                WHEN "10010" => u0_m0_wo0_cm63_q <= "000000000";
                WHEN "10011" => u0_m0_wo0_cm63_q <= "000000001";
                WHEN "10100" => u0_m0_wo0_cm63_q <= "000000010";
                WHEN "10101" => u0_m0_wo0_cm63_q <= "000000010";
                WHEN "10110" => u0_m0_wo0_cm63_q <= "000000011";
                WHEN "10111" => u0_m0_wo0_cm63_q <= "000000011";
                WHEN "11000" => u0_m0_wo0_cm63_q <= "000000010";
                WHEN "11001" => u0_m0_wo0_cm63_q <= "000000010";
                WHEN "11010" => u0_m0_wo0_cm63_q <= "000000000";
                WHEN "11011" => u0_m0_wo0_cm63_q <= "000000000";
                WHEN "11100" => u0_m0_wo0_cm63_q <= "000000001";
                WHEN "11101" => u0_m0_wo0_cm63_q <= "000000010";
                WHEN "11110" => u0_m0_wo0_cm63_q <= "000000011";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm63_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_3(MULT,239)@13 + 2
    u0_m0_wo0_mtree_mult1_3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm63_q);
    u0_m0_wo0_mtree_mult1_3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split61_d);
    u0_m0_wo0_mtree_mult1_3_reset <= areset;
    u0_m0_wo0_mtree_mult1_3_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 9,
        lpm_widthb => 12,
        lpm_widthp => 21,
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

    -- u0_m0_wo0_wi0_r0_join64(BITJOIN,102)@13
    u0_m0_wo0_wi0_r0_join64_q <= u0_m0_wo0_wi0_r0_split64_c & u0_m0_wo0_wi0_r0_split64_b & u0_m0_wo0_wi0_r0_split61_d;

    -- u0_m0_wo0_wi0_r0_memr64(DUALMEM,104)@13
    u0_m0_wo0_wi0_r0_memr64_ia <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_join64_q);
    u0_m0_wo0_wi0_r0_memr64_aa <= u0_m0_wo0_wi0_r0_wa66_q;
    u0_m0_wo0_wi0_r0_memr64_ab <= u0_m0_wo0_wi0_r0_ra66_resize_b;
    u0_m0_wo0_wi0_r0_memr64_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "DUAL_PORT",
        width_a => 36,
        widthad_a => 6,
        numwords_a => 64,
        width_b => 36,
        widthad_b => 6,
        numwords_b => 64,
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
        address_a => u0_m0_wo0_wi0_r0_memr64_aa,
        data_a => u0_m0_wo0_wi0_r0_memr64_ia,
        wren_a => u0_m0_wo0_wi0_r0_we66_seq_q(0),
        address_b => u0_m0_wo0_wi0_r0_memr64_ab,
        q_b => u0_m0_wo0_wi0_r0_memr64_iq
    );
    u0_m0_wo0_wi0_r0_memr64_q <= u0_m0_wo0_wi0_r0_memr64_iq(35 downto 0);

    -- u0_m0_wo0_wi0_r0_split64(BITSELECT,103)@13
    u0_m0_wo0_wi0_r0_split64_b <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr64_q(11 downto 0));
    u0_m0_wo0_wi0_r0_split64_c <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr64_q(23 downto 12));

    -- u0_m0_wo0_cm64(LOOKUP,173)@12 + 1
    u0_m0_wo0_cm64_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm64_q <= "111111111";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca66_q) IS
                WHEN "00000" => u0_m0_wo0_cm64_q <= "111111111";
                WHEN "00001" => u0_m0_wo0_cm64_q <= "000000000";
                WHEN "00010" => u0_m0_wo0_cm64_q <= "000000000";
                WHEN "00011" => u0_m0_wo0_cm64_q <= "000000000";
                WHEN "00100" => u0_m0_wo0_cm64_q <= "000000000";
                WHEN "00101" => u0_m0_wo0_cm64_q <= "000000000";
                WHEN "00110" => u0_m0_wo0_cm64_q <= "111111111";
                WHEN "00111" => u0_m0_wo0_cm64_q <= "111111111";
                WHEN "01000" => u0_m0_wo0_cm64_q <= "000000000";
                WHEN "01001" => u0_m0_wo0_cm64_q <= "000000000";
                WHEN "01010" => u0_m0_wo0_cm64_q <= "111111111";
                WHEN "01011" => u0_m0_wo0_cm64_q <= "000000000";
                WHEN "01100" => u0_m0_wo0_cm64_q <= "000000000";
                WHEN "01101" => u0_m0_wo0_cm64_q <= "000000000";
                WHEN "01110" => u0_m0_wo0_cm64_q <= "000000000";
                WHEN "01111" => u0_m0_wo0_cm64_q <= "000000000";
                WHEN "10000" => u0_m0_wo0_cm64_q <= "000000000";
                WHEN "10001" => u0_m0_wo0_cm64_q <= "111111110";
                WHEN "10010" => u0_m0_wo0_cm64_q <= "111111101";
                WHEN "10011" => u0_m0_wo0_cm64_q <= "111111111";
                WHEN "10100" => u0_m0_wo0_cm64_q <= "000000000";
                WHEN "10101" => u0_m0_wo0_cm64_q <= "000000000";
                WHEN "10110" => u0_m0_wo0_cm64_q <= "000000000";
                WHEN "10111" => u0_m0_wo0_cm64_q <= "000000000";
                WHEN "11000" => u0_m0_wo0_cm64_q <= "111111111";
                WHEN "11001" => u0_m0_wo0_cm64_q <= "111111110";
                WHEN "11010" => u0_m0_wo0_cm64_q <= "111111111";
                WHEN "11011" => u0_m0_wo0_cm64_q <= "000000000";
                WHEN "11100" => u0_m0_wo0_cm64_q <= "000000000";
                WHEN "11101" => u0_m0_wo0_cm64_q <= "000000000";
                WHEN "11110" => u0_m0_wo0_cm64_q <= "000000000";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm64_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_2(MULT,240)@13 + 2
    u0_m0_wo0_mtree_mult1_2_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm64_q);
    u0_m0_wo0_mtree_mult1_2_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split64_b);
    u0_m0_wo0_mtree_mult1_2_reset <= areset;
    u0_m0_wo0_mtree_mult1_2_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 9,
        lpm_widthb => 12,
        lpm_widthp => 21,
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

    -- u0_m0_wo0_mtree_add0_1(ADD,244)@15 + 1
    u0_m0_wo0_mtree_add0_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 21 => u0_m0_wo0_mtree_mult1_2_q(20)) & u0_m0_wo0_mtree_mult1_2_q));
    u0_m0_wo0_mtree_add0_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 21 => u0_m0_wo0_mtree_mult1_3_q(20)) & u0_m0_wo0_mtree_mult1_3_q));
    u0_m0_wo0_mtree_add0_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_1_a) + SIGNED(u0_m0_wo0_mtree_add0_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_1_q <= u0_m0_wo0_mtree_add0_1_o(21 downto 0);

    -- d_u0_m0_wo0_wi0_r0_split64_c_14(DELAY,328)@13 + 1
    d_u0_m0_wo0_wi0_r0_split64_c_14 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_split64_c, xout => d_u0_m0_wo0_wi0_r0_split64_c_14_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_cm65(LOOKUP,174)@13 + 1
    u0_m0_wo0_cm65_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm65_q <= "000000000";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (d_u0_m0_wo0_ca66_q_13_q) IS
                WHEN "00000" => u0_m0_wo0_cm65_q <= "000000000";
                WHEN "00001" => u0_m0_wo0_cm65_q <= "000000000";
                WHEN "00010" => u0_m0_wo0_cm65_q <= "000000000";
                WHEN "00011" => u0_m0_wo0_cm65_q <= "000000000";
                WHEN "00100" => u0_m0_wo0_cm65_q <= "000000000";
                WHEN "00101" => u0_m0_wo0_cm65_q <= "000000000";
                WHEN "00110" => u0_m0_wo0_cm65_q <= "000000000";
                WHEN "00111" => u0_m0_wo0_cm65_q <= "000000000";
                WHEN "01000" => u0_m0_wo0_cm65_q <= "000000000";
                WHEN "01001" => u0_m0_wo0_cm65_q <= "000000000";
                WHEN "01010" => u0_m0_wo0_cm65_q <= "000000000";
                WHEN "01011" => u0_m0_wo0_cm65_q <= "000000000";
                WHEN "01100" => u0_m0_wo0_cm65_q <= "000000000";
                WHEN "01101" => u0_m0_wo0_cm65_q <= "000000000";
                WHEN "01110" => u0_m0_wo0_cm65_q <= "000000000";
                WHEN "01111" => u0_m0_wo0_cm65_q <= "000000000";
                WHEN "10000" => u0_m0_wo0_cm65_q <= "000000000";
                WHEN "10001" => u0_m0_wo0_cm65_q <= "000000000";
                WHEN "10010" => u0_m0_wo0_cm65_q <= "000000000";
                WHEN "10011" => u0_m0_wo0_cm65_q <= "000000000";
                WHEN "10100" => u0_m0_wo0_cm65_q <= "111111111";
                WHEN "10101" => u0_m0_wo0_cm65_q <= "111111111";
                WHEN "10110" => u0_m0_wo0_cm65_q <= "111111111";
                WHEN "10111" => u0_m0_wo0_cm65_q <= "111111111";
                WHEN "11000" => u0_m0_wo0_cm65_q <= "111111111";
                WHEN "11001" => u0_m0_wo0_cm65_q <= "000000000";
                WHEN "11010" => u0_m0_wo0_cm65_q <= "000000000";
                WHEN "11011" => u0_m0_wo0_cm65_q <= "000000000";
                WHEN "11100" => u0_m0_wo0_cm65_q <= "000000000";
                WHEN "11101" => u0_m0_wo0_cm65_q <= "000000000";
                WHEN "11110" => u0_m0_wo0_cm65_q <= "111111111";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm65_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_1(MULT,241)@14 + 2
    u0_m0_wo0_mtree_mult1_1_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm65_q);
    u0_m0_wo0_mtree_mult1_1_b0 <= STD_LOGIC_VECTOR(d_u0_m0_wo0_wi0_r0_split64_c_14_q);
    u0_m0_wo0_mtree_mult1_1_reset <= areset;
    u0_m0_wo0_mtree_mult1_1_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 9,
        lpm_widthb => 12,
        lpm_widthp => 21,
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

    -- u0_m0_wo0_mtree_add1_0(ADD,276)@16 + 1
    u0_m0_wo0_mtree_add1_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((22 downto 21 => u0_m0_wo0_mtree_mult1_1_q(20)) & u0_m0_wo0_mtree_mult1_1_q));
    u0_m0_wo0_mtree_add1_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((22 downto 22 => u0_m0_wo0_mtree_add0_1_q(21)) & u0_m0_wo0_mtree_add0_1_q));
    u0_m0_wo0_mtree_add1_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_0_a) + SIGNED(u0_m0_wo0_mtree_add1_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_0_q <= u0_m0_wo0_mtree_add1_0_o(22 downto 0);

    -- u0_m0_wo0_mtree_add2_0(ADD,293)@17 + 1
    u0_m0_wo0_mtree_add2_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((23 downto 23 => u0_m0_wo0_mtree_add1_0_q(22)) & u0_m0_wo0_mtree_add1_0_q));
    u0_m0_wo0_mtree_add2_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((23 downto 23 => u0_m0_wo0_mtree_add1_1_q(22)) & u0_m0_wo0_mtree_add1_1_q));
    u0_m0_wo0_mtree_add2_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add2_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add2_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add2_0_a) + SIGNED(u0_m0_wo0_mtree_add2_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add2_0_q <= u0_m0_wo0_mtree_add2_0_o(23 downto 0);

    -- u0_m0_wo0_mtree_add3_0(ADD,301)@18 + 1
    u0_m0_wo0_mtree_add3_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((24 downto 24 => u0_m0_wo0_mtree_add2_0_q(23)) & u0_m0_wo0_mtree_add2_0_q));
    u0_m0_wo0_mtree_add3_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((24 downto 24 => u0_m0_wo0_mtree_add2_1_q(23)) & u0_m0_wo0_mtree_add2_1_q));
    u0_m0_wo0_mtree_add3_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add3_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add3_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add3_0_a) + SIGNED(u0_m0_wo0_mtree_add3_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add3_0_q <= u0_m0_wo0_mtree_add3_0_o(24 downto 0);

    -- u0_m0_wo0_mtree_add4_0(ADD,305)@19 + 1
    u0_m0_wo0_mtree_add4_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 25 => u0_m0_wo0_mtree_add3_0_q(24)) & u0_m0_wo0_mtree_add3_0_q));
    u0_m0_wo0_mtree_add4_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 25 => u0_m0_wo0_mtree_add3_1_q(24)) & u0_m0_wo0_mtree_add3_1_q));
    u0_m0_wo0_mtree_add4_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add4_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add4_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add4_0_a) + SIGNED(u0_m0_wo0_mtree_add4_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add4_0_q <= u0_m0_wo0_mtree_add4_0_o(25 downto 0);

    -- u0_m0_wo0_mtree_add5_0(ADD,307)@20 + 1
    u0_m0_wo0_mtree_add5_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((26 downto 26 => u0_m0_wo0_mtree_add4_0_q(25)) & u0_m0_wo0_mtree_add4_0_q));
    u0_m0_wo0_mtree_add5_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((26 downto 26 => u0_m0_wo0_mtree_add4_1_q(25)) & u0_m0_wo0_mtree_add4_1_q));
    u0_m0_wo0_mtree_add5_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add5_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add5_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add5_0_a) + SIGNED(u0_m0_wo0_mtree_add5_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add5_0_q <= u0_m0_wo0_mtree_add5_0_o(26 downto 0);

    -- u0_m0_wo0_mtree_add6_0(ADD,308)@21 + 1
    u0_m0_wo0_mtree_add6_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((27 downto 27 => u0_m0_wo0_mtree_add5_0_q(26)) & u0_m0_wo0_mtree_add5_0_q));
    u0_m0_wo0_mtree_add6_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((27 downto 23 => u0_m0_wo0_mtree_add1_16_q(22)) & u0_m0_wo0_mtree_add1_16_q));
    u0_m0_wo0_mtree_add6_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add6_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add6_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add6_0_a) + SIGNED(u0_m0_wo0_mtree_add6_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add6_0_q <= u0_m0_wo0_mtree_add6_0_o(27 downto 0);

    -- u0_m0_wo0_accum(ADD,310)@22 + 1
    u0_m0_wo0_accum_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((31 downto 28 => u0_m0_wo0_mtree_add6_0_q(27)) & u0_m0_wo0_mtree_add6_0_q));
    u0_m0_wo0_accum_b <= STD_LOGIC_VECTOR(u0_m0_wo0_accum_q);
    u0_m0_wo0_accum_i <= u0_m0_wo0_accum_a;
    u0_m0_wo0_accum_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_accum_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (d_u0_m0_wo0_compute_q_22_q = "1") THEN
                IF (u0_m0_wo0_aseq_q = "1") THEN
                    u0_m0_wo0_accum_o <= u0_m0_wo0_accum_i;
                ELSE
                    u0_m0_wo0_accum_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_accum_a) + SIGNED(u0_m0_wo0_accum_b));
                END IF;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_accum_q <= u0_m0_wo0_accum_o(31 downto 0);

    -- GND(CONSTANT,0)@0
    GND_q <= "0";

    -- u0_m0_wo0_oseq(SEQUENCE,311)@21 + 1
    u0_m0_wo0_oseq_clkproc: PROCESS (clk, areset)
        variable u0_m0_wo0_oseq_c : SIGNED(6 downto 0);
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_oseq_c := "0011110";
            u0_m0_wo0_oseq_q <= "0";
            u0_m0_wo0_oseq_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (d_u0_m0_wo0_compute_q_21_q = "1") THEN
                IF (u0_m0_wo0_oseq_c = "0000000") THEN
                    u0_m0_wo0_oseq_eq <= '1';
                ELSE
                    u0_m0_wo0_oseq_eq <= '0';
                END IF;
                IF (u0_m0_wo0_oseq_eq = '1') THEN
                    u0_m0_wo0_oseq_c := u0_m0_wo0_oseq_c + 30;
                ELSE
                    u0_m0_wo0_oseq_c := u0_m0_wo0_oseq_c - 1;
                END IF;
                u0_m0_wo0_oseq_q <= STD_LOGIC_VECTOR(u0_m0_wo0_oseq_c(6 downto 6));
            END IF;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_oseq_gated(LOGICAL,312)@22
    u0_m0_wo0_oseq_gated_q <= u0_m0_wo0_oseq_q and d_u0_m0_wo0_compute_q_22_q;

    -- u0_m0_wo0_oseq_gated_reg(REG,313)@22 + 1
    u0_m0_wo0_oseq_gated_reg_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_oseq_gated_reg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_oseq_gated_reg_q <= STD_LOGIC_VECTOR(u0_m0_wo0_oseq_gated_q);
        END IF;
    END PROCESS;

    -- xOut(PORTOUT,318)@23 + 1
    xOut_v <= u0_m0_wo0_oseq_gated_reg_q;
    xOut_c <= STD_LOGIC_VECTOR("0000000" & GND_q);
    xOut_0 <= u0_m0_wo0_accum_q;

END normal;
