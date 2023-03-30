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
-- VHDL created on Wed Mar 29 11:44:58 2023


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
        xOut_0 : out std_logic_vector(38 downto 0);  -- sfix39
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
    signal d_u0_m0_wo0_compute_q_23_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_u0_m0_wo0_compute_q_24_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi0_r0_ra81_count0_inner_q : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_wi0_r0_ra81_count0_inner_i : SIGNED (8 downto 0);
    attribute preserve : boolean;
    attribute preserve of u0_m0_wo0_wi0_r0_ra81_count0_inner_i : signal is true;
    signal u0_m0_wo0_wi0_r0_ra81_count0_q : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_wi0_r0_ra81_count0_i : UNSIGNED (7 downto 0);
    attribute preserve of u0_m0_wo0_wi0_r0_ra81_count0_i : signal is true;
    signal u0_m0_wo0_wi0_r0_ra81_count1_q : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_ra81_count1_i : UNSIGNED (7 downto 0);
    attribute preserve of u0_m0_wo0_wi0_r0_ra81_count1_i : signal is true;
    signal u0_m0_wo0_wi0_r0_ra81_count1_eq : std_logic;
    attribute preserve of u0_m0_wo0_wi0_r0_ra81_count1_eq : signal is true;
    signal u0_m0_wo0_wi0_r0_ra81_add_0_0_a : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi0_r0_ra81_add_0_0_b : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi0_r0_ra81_add_0_0_o : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi0_r0_ra81_add_0_0_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi0_r0_we81_seq_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi0_r0_we81_seq_eq : std_logic;
    signal u0_m0_wo0_wi0_r0_wa0_q : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_wa0_i : UNSIGNED (7 downto 0);
    attribute preserve of u0_m0_wo0_wi0_r0_wa0_i : signal is true;
    signal u0_m0_wo0_wi0_r0_wa81_q : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_wa81_i : UNSIGNED (7 downto 0);
    attribute preserve of u0_m0_wo0_wi0_r0_wa81_i : signal is true;
    signal u0_m0_wo0_wi0_r0_memr0_reset0 : std_logic;
    signal u0_m0_wo0_wi0_r0_memr0_ia : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_memr0_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_memr0_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_memr0_iq : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_memr0_q : STD_LOGIC_VECTOR (11 downto 0);
    signal d_u0_m0_wo0_wi0_r0_split1_d_16_q : STD_LOGIC_VECTOR (11 downto 0);
    signal d_u0_m0_wo0_wi0_r0_split1_c_16_q : STD_LOGIC_VECTOR (11 downto 0);
    signal d_u0_m0_wo0_wi0_r0_split1_b_20_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_memr1_reset0 : std_logic;
    signal u0_m0_wo0_wi0_r0_memr1_ia : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr1_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_memr1_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_memr1_iq : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr1_q : STD_LOGIC_VECTOR (35 downto 0);
    signal d_u0_m0_wo0_wi0_r0_split4_d_16_q : STD_LOGIC_VECTOR (11 downto 0);
    signal d_u0_m0_wo0_wi0_r0_split4_c_16_q : STD_LOGIC_VECTOR (11 downto 0);
    signal d_u0_m0_wo0_wi0_r0_split4_b_16_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_memr4_reset0 : std_logic;
    signal u0_m0_wo0_wi0_r0_memr4_ia : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr4_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_memr4_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_memr4_iq : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr4_q : STD_LOGIC_VECTOR (35 downto 0);
    signal d_u0_m0_wo0_wi0_r0_split7_d_16_q : STD_LOGIC_VECTOR (11 downto 0);
    signal d_u0_m0_wo0_wi0_r0_split7_c_16_q : STD_LOGIC_VECTOR (11 downto 0);
    signal d_u0_m0_wo0_wi0_r0_split7_b_16_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_memr7_reset0 : std_logic;
    signal u0_m0_wo0_wi0_r0_memr7_ia : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr7_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_memr7_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_memr7_iq : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr7_q : STD_LOGIC_VECTOR (35 downto 0);
    signal d_u0_m0_wo0_wi0_r0_split10_d_16_q : STD_LOGIC_VECTOR (11 downto 0);
    signal d_u0_m0_wo0_wi0_r0_split10_c_16_q : STD_LOGIC_VECTOR (11 downto 0);
    signal d_u0_m0_wo0_wi0_r0_split10_b_16_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_memr10_reset0 : std_logic;
    signal u0_m0_wo0_wi0_r0_memr10_ia : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr10_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_memr10_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_memr10_iq : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr10_q : STD_LOGIC_VECTOR (35 downto 0);
    signal d_u0_m0_wo0_wi0_r0_split13_d_16_q : STD_LOGIC_VECTOR (11 downto 0);
    signal d_u0_m0_wo0_wi0_r0_split13_c_16_q : STD_LOGIC_VECTOR (11 downto 0);
    signal d_u0_m0_wo0_wi0_r0_split13_b_16_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_memr13_reset0 : std_logic;
    signal u0_m0_wo0_wi0_r0_memr13_ia : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr13_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_memr13_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_memr13_iq : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr13_q : STD_LOGIC_VECTOR (35 downto 0);
    signal d_u0_m0_wo0_wi0_r0_split16_c_16_q : STD_LOGIC_VECTOR (11 downto 0);
    signal d_u0_m0_wo0_wi0_r0_split16_b_16_q : STD_LOGIC_VECTOR (11 downto 0);
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
    signal u0_m0_wo0_wi0_r0_memr52_reset0 : std_logic;
    signal u0_m0_wo0_wi0_r0_memr52_ia : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr52_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_memr52_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_memr52_iq : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr52_q : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr55_reset0 : std_logic;
    signal u0_m0_wo0_wi0_r0_memr55_ia : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr55_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_memr55_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_memr55_iq : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr55_q : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr58_reset0 : std_logic;
    signal u0_m0_wo0_wi0_r0_memr58_ia : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr58_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_memr58_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_memr58_iq : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr58_q : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr61_reset0 : std_logic;
    signal u0_m0_wo0_wi0_r0_memr61_ia : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr61_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_memr61_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_memr61_iq : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr61_q : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr64_reset0 : std_logic;
    signal u0_m0_wo0_wi0_r0_memr64_ia : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr64_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_memr64_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_memr64_iq : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr64_q : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr67_reset0 : std_logic;
    signal u0_m0_wo0_wi0_r0_memr67_ia : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr67_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_memr67_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_memr67_iq : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr67_q : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr70_reset0 : std_logic;
    signal u0_m0_wo0_wi0_r0_memr70_ia : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr70_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_memr70_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_memr70_iq : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr70_q : STD_LOGIC_VECTOR (35 downto 0);
    signal d_u0_m0_wo0_wi0_r0_split73_d_16_q : STD_LOGIC_VECTOR (11 downto 0);
    signal d_u0_m0_wo0_wi0_r0_split73_c_16_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_memr73_reset0 : std_logic;
    signal u0_m0_wo0_wi0_r0_memr73_ia : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr73_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_memr73_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_memr73_iq : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr73_q : STD_LOGIC_VECTOR (35 downto 0);
    signal d_u0_m0_wo0_wi0_r0_split76_c_16_q : STD_LOGIC_VECTOR (11 downto 0);
    signal d_u0_m0_wo0_wi0_r0_split76_b_16_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_memr76_reset0 : std_logic;
    signal u0_m0_wo0_wi0_r0_memr76_ia : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr76_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_memr76_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_memr76_iq : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr76_q : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr79_reset0 : std_logic;
    signal u0_m0_wo0_wi0_r0_memr79_ia : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr79_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_memr79_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_memr79_iq : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_memr79_q : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_ca81_q : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_ca81_i : UNSIGNED (7 downto 0);
    attribute preserve of u0_m0_wo0_ca81_i : signal is true;
    signal u0_m0_wo0_ca81_eq : std_logic;
    attribute preserve of u0_m0_wo0_ca81_eq : signal is true;
    signal d_u0_m0_wo0_ca81_q_14_q : STD_LOGIC_VECTOR (7 downto 0);
    signal d_u0_m0_wo0_ca81_q_18_q : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_mtree_mult1_80_a0 : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_80_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_80_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_80_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_80_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_79_a0 : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_79_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_79_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_79_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_79_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_78_a0 : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_78_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_78_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_78_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_78_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_77_a0 : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_77_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_77_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_77_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_77_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_76_a0 : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_76_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_76_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_76_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_76_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_75_a0 : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_75_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_75_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_75_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_75_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_74_a0 : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_74_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_74_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_74_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_74_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_73_a0 : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_73_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_73_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_73_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_73_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_72_a0 : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_72_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_72_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_72_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_72_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_71_a0 : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_71_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_71_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_71_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_71_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_70_a0 : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_70_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_70_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_70_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_70_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_69_a0 : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_69_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_69_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_69_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_69_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_68_a0 : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_68_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_68_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_68_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_68_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_67_a0 : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_67_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_67_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_67_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_67_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_66_a0 : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_66_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_66_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_66_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_66_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_65_a0 : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_65_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_65_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_65_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_65_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_64_a0 : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_64_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_64_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_64_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_64_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_63_a0 : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_63_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_63_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_63_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_63_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_62_a0 : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_62_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_62_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_62_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_62_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_61_a0 : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_61_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_61_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_61_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_61_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_60_a0 : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_60_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_60_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_60_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_60_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_59_a0 : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_59_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_59_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_59_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_59_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_58_a0 : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_58_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_58_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_58_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_58_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_57_a0 : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_57_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_57_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_57_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_57_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_56_a0 : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_56_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_56_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_56_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_56_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_55_a0 : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_55_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_55_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_55_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_55_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_54_a0 : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_54_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_54_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_54_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_54_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_53_a0 : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_53_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_53_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_53_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_53_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_52_a0 : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_52_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_52_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_52_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_52_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_51_a0 : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_51_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_51_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_51_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_51_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_50_a0 : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_50_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_50_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_50_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_50_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_49_a0 : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_49_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_49_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_49_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_49_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_48_a0 : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_48_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_48_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_48_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_48_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_47_a0 : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_47_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_47_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_47_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_47_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_46_a0 : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_46_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_46_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_46_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_46_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_45_a0 : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_45_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_45_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_45_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_45_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_44_a0 : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_44_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_44_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_44_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_44_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_43_a0 : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_43_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_43_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_43_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_43_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_42_a0 : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_42_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_42_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_42_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_42_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_41_a0 : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_41_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_41_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_41_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_41_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_40_a0 : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_40_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_40_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_40_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_40_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_39_a0 : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_39_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_39_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_39_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_39_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_38_a0 : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_38_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_38_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_38_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_38_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_37_a0 : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_37_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_37_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_37_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_37_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_a0 : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_36_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_36_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_a0 : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_35_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_35_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_34_a0 : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_34_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_34_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_34_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_34_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_a0 : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_33_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_33_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_a0 : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_32_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_a0 : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_31_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_30_a0 : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_30_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_30_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_30_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_30_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_a0 : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_29_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_a0 : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_28_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_a0 : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_27_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_26_a0 : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_26_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_26_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_26_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_26_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_a0 : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_25_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_25_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_a0 : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_24_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_a0 : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_23_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_22_a0 : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_22_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_22_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_22_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_22_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_a0 : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_21_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_a0 : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_20_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_a0 : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_19_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_a0 : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_18_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_a0 : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_17_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_a0 : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_16_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_a0 : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_15_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_15_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_14_a0 : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_14_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_14_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_14_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_14_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_a0 : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_13_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_a0 : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_12_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_a0 : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_11_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_10_a0 : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_10_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_10_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_10_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_10_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_a0 : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_9_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_a0 : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_8_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_a0 : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_7_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_6_a0 : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_6_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_6_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_6_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_6_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_a0 : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_5_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_a0 : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_b0 : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_s1 : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_4_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add0_2_a : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_2_b : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_2_o : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_2_q : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_3_a : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_3_b : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_3_o : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_3_q : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_4_a : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_4_b : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_4_o : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_4_q : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_5_a : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_5_b : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_5_o : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_5_q : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_6_a : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_6_b : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_6_o : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_6_q : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_7_a : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_7_b : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_7_o : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_7_q : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_8_a : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_8_b : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_8_o : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_8_q : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_9_a : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_9_b : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_9_o : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_9_q : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_10_a : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_10_b : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_10_o : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_10_q : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_11_a : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_11_b : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_11_o : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_11_q : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_12_a : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_12_b : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_12_o : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_12_q : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_13_a : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_13_b : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_13_o : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_13_q : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_14_a : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_14_b : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_14_o : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_14_q : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_15_a : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_15_b : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_15_o : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_15_q : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_16_a : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_16_b : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_16_o : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_16_q : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_17_a : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_17_b : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_17_o : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_17_q : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_18_a : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_18_b : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_18_o : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_18_q : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_19_a : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_19_b : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_19_o : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_19_q : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_20_a : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_20_b : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_20_o : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_20_q : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_21_a : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_21_b : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_21_o : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_21_q : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_22_a : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_22_b : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_22_o : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_22_q : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_23_a : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_23_b : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_23_o : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_23_q : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_24_a : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_24_b : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_24_o : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_24_q : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_25_a : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_25_b : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_25_o : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_25_q : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_26_a : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_26_b : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_26_o : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_26_q : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_27_a : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_27_b : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_27_o : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_27_q : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_28_a : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_28_b : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_28_o : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_28_q : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_29_a : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_29_b : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_29_o : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_29_q : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_30_a : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_30_b : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_30_o : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_30_q : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_31_a : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_31_b : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_31_o : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_31_q : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_32_a : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_32_b : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_32_o : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_32_q : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_33_a : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_33_b : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_33_o : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_33_q : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_34_a : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_34_b : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_34_o : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_34_q : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_35_a : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_35_b : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_35_o : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_35_q : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_36_a : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_36_b : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_36_o : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_36_q : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_37_a : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_37_b : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_37_o : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_37_q : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_38_a : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_38_b : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_38_o : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_38_q : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_39_a : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_39_b : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_39_o : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add0_39_q : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_add1_1_a : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_add1_1_b : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_add1_1_o : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_add1_1_q : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_add1_2_a : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_add1_2_b : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_add1_2_o : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_add1_2_q : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_add1_3_a : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_add1_3_b : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_add1_3_o : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_add1_3_q : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_add1_4_a : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_add1_4_b : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_add1_4_o : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_add1_4_q : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_add1_5_a : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_add1_5_b : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_add1_5_o : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_add1_5_q : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_add1_6_a : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_add1_6_b : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_add1_6_o : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_add1_6_q : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_add1_7_a : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_add1_7_b : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_add1_7_o : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_add1_7_q : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_add1_8_a : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_add1_8_b : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_add1_8_o : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_add1_8_q : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_add1_9_a : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_add1_9_b : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_add1_9_o : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_add1_9_q : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_add1_10_a : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_add1_10_b : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_add1_10_o : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_add1_10_q : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_add1_11_a : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_add1_11_b : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_add1_11_o : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_add1_11_q : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_add1_12_a : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_add1_12_b : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_add1_12_o : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_add1_12_q : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_add1_13_a : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_add1_13_b : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_add1_13_o : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_add1_13_q : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_add1_14_a : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_add1_14_b : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_add1_14_o : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_add1_14_q : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_add1_15_a : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_add1_15_b : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_add1_15_o : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_add1_15_q : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_add1_16_a : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_add1_16_b : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_add1_16_o : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_add1_16_q : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_add1_17_a : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_add1_17_b : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_add1_17_o : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_add1_17_q : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_add1_18_a : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_add1_18_b : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_add1_18_o : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_add1_18_q : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_add1_19_a : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_add1_19_b : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_add1_19_o : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_add1_19_q : STD_LOGIC_VECTOR (26 downto 0);
    signal u0_m0_wo0_mtree_add2_1_a : STD_LOGIC_VECTOR (27 downto 0);
    signal u0_m0_wo0_mtree_add2_1_b : STD_LOGIC_VECTOR (27 downto 0);
    signal u0_m0_wo0_mtree_add2_1_o : STD_LOGIC_VECTOR (27 downto 0);
    signal u0_m0_wo0_mtree_add2_1_q : STD_LOGIC_VECTOR (27 downto 0);
    signal u0_m0_wo0_mtree_add2_2_a : STD_LOGIC_VECTOR (27 downto 0);
    signal u0_m0_wo0_mtree_add2_2_b : STD_LOGIC_VECTOR (27 downto 0);
    signal u0_m0_wo0_mtree_add2_2_o : STD_LOGIC_VECTOR (27 downto 0);
    signal u0_m0_wo0_mtree_add2_2_q : STD_LOGIC_VECTOR (27 downto 0);
    signal u0_m0_wo0_mtree_add2_3_a : STD_LOGIC_VECTOR (27 downto 0);
    signal u0_m0_wo0_mtree_add2_3_b : STD_LOGIC_VECTOR (27 downto 0);
    signal u0_m0_wo0_mtree_add2_3_o : STD_LOGIC_VECTOR (27 downto 0);
    signal u0_m0_wo0_mtree_add2_3_q : STD_LOGIC_VECTOR (27 downto 0);
    signal u0_m0_wo0_mtree_add2_4_a : STD_LOGIC_VECTOR (27 downto 0);
    signal u0_m0_wo0_mtree_add2_4_b : STD_LOGIC_VECTOR (27 downto 0);
    signal u0_m0_wo0_mtree_add2_4_o : STD_LOGIC_VECTOR (27 downto 0);
    signal u0_m0_wo0_mtree_add2_4_q : STD_LOGIC_VECTOR (27 downto 0);
    signal u0_m0_wo0_mtree_add2_5_a : STD_LOGIC_VECTOR (27 downto 0);
    signal u0_m0_wo0_mtree_add2_5_b : STD_LOGIC_VECTOR (27 downto 0);
    signal u0_m0_wo0_mtree_add2_5_o : STD_LOGIC_VECTOR (27 downto 0);
    signal u0_m0_wo0_mtree_add2_5_q : STD_LOGIC_VECTOR (27 downto 0);
    signal u0_m0_wo0_mtree_add2_6_a : STD_LOGIC_VECTOR (27 downto 0);
    signal u0_m0_wo0_mtree_add2_6_b : STD_LOGIC_VECTOR (27 downto 0);
    signal u0_m0_wo0_mtree_add2_6_o : STD_LOGIC_VECTOR (27 downto 0);
    signal u0_m0_wo0_mtree_add2_6_q : STD_LOGIC_VECTOR (27 downto 0);
    signal u0_m0_wo0_mtree_add2_7_a : STD_LOGIC_VECTOR (27 downto 0);
    signal u0_m0_wo0_mtree_add2_7_b : STD_LOGIC_VECTOR (27 downto 0);
    signal u0_m0_wo0_mtree_add2_7_o : STD_LOGIC_VECTOR (27 downto 0);
    signal u0_m0_wo0_mtree_add2_7_q : STD_LOGIC_VECTOR (27 downto 0);
    signal u0_m0_wo0_mtree_add2_8_a : STD_LOGIC_VECTOR (27 downto 0);
    signal u0_m0_wo0_mtree_add2_8_b : STD_LOGIC_VECTOR (27 downto 0);
    signal u0_m0_wo0_mtree_add2_8_o : STD_LOGIC_VECTOR (27 downto 0);
    signal u0_m0_wo0_mtree_add2_8_q : STD_LOGIC_VECTOR (27 downto 0);
    signal u0_m0_wo0_mtree_add2_9_a : STD_LOGIC_VECTOR (27 downto 0);
    signal u0_m0_wo0_mtree_add2_9_b : STD_LOGIC_VECTOR (27 downto 0);
    signal u0_m0_wo0_mtree_add2_9_o : STD_LOGIC_VECTOR (27 downto 0);
    signal u0_m0_wo0_mtree_add2_9_q : STD_LOGIC_VECTOR (27 downto 0);
    signal u0_m0_wo0_mtree_add3_0_a : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_add3_0_b : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_add3_0_o : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_add3_0_q : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_add3_1_a : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_add3_1_b : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_add3_1_o : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_add3_1_q : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_add3_2_a : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_add3_2_b : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_add3_2_o : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_add3_2_q : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_add3_3_a : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_add3_3_b : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_add3_3_o : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_add3_3_q : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_add3_4_a : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_add3_4_b : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_add3_4_o : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_add3_4_q : STD_LOGIC_VECTOR (28 downto 0);
    signal u0_m0_wo0_mtree_add4_0_a : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add4_0_b : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add4_0_o : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add4_0_q : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add4_1_a : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add4_1_b : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add4_1_o : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add4_1_q : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add4_2_a : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add4_2_b : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add4_2_o : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add4_2_q : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add5_0_a : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_add5_0_b : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_add5_0_o : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_add5_0_q : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_add6_0_a : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_mtree_add6_0_b : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_mtree_add6_0_o : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_mtree_add6_0_q : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_aseq_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_aseq_eq : std_logic;
    signal u0_m0_wo0_accum_a : STD_LOGIC_VECTOR (38 downto 0);
    signal u0_m0_wo0_accum_b : STD_LOGIC_VECTOR (38 downto 0);
    signal u0_m0_wo0_accum_i : STD_LOGIC_VECTOR (38 downto 0);
    signal u0_m0_wo0_accum_o : STD_LOGIC_VECTOR (38 downto 0);
    signal u0_m0_wo0_accum_q : STD_LOGIC_VECTOR (38 downto 0);
    signal u0_m0_wo0_oseq_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_oseq_eq : std_logic;
    signal u0_m0_wo0_oseq_gated_reg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi0_r0_ra81_count1_lut_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_wi0_r0_ra81_count1_lut_lutmem_ia : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_wi0_r0_ra81_count1_lut_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_ra81_count1_lut_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_ra81_count1_lut_lutmem_ir : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_wi0_r0_ra81_count1_lut_lutmem_r : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_cm1_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm1_lutmem_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm1_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm1_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm1_lutmem_ir : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm1_lutmem_r : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm2_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm2_lutmem_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm2_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm2_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm2_lutmem_ir : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm2_lutmem_r : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm3_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm3_lutmem_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm3_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm3_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm3_lutmem_ir : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm3_lutmem_r : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm4_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm4_lutmem_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm4_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm4_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm4_lutmem_ir : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm4_lutmem_r : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm5_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm5_lutmem_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm5_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm5_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm5_lutmem_ir : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm5_lutmem_r : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm6_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm6_lutmem_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm6_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm6_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm6_lutmem_ir : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm6_lutmem_r : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm7_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm7_lutmem_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm7_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm7_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm7_lutmem_ir : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm7_lutmem_r : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm8_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm8_lutmem_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm8_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm8_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm8_lutmem_ir : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm8_lutmem_r : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm9_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm9_lutmem_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm9_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm9_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm9_lutmem_ir : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm9_lutmem_r : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm10_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm10_lutmem_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm10_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm10_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm10_lutmem_ir : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm10_lutmem_r : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm11_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm11_lutmem_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm11_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm11_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm11_lutmem_ir : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm11_lutmem_r : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm12_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm12_lutmem_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm12_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm12_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm12_lutmem_ir : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm12_lutmem_r : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm13_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm13_lutmem_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm13_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm13_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm13_lutmem_ir : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm13_lutmem_r : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm14_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm14_lutmem_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm14_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm14_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm14_lutmem_ir : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm14_lutmem_r : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm15_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm15_lutmem_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm15_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm15_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm15_lutmem_ir : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm15_lutmem_r : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm16_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm16_lutmem_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm16_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm16_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm16_lutmem_ir : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm16_lutmem_r : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm17_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm17_lutmem_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm17_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm17_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm17_lutmem_ir : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm17_lutmem_r : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm18_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm18_lutmem_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm18_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm18_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm18_lutmem_ir : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm18_lutmem_r : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm19_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm19_lutmem_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm19_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm19_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm19_lutmem_ir : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm19_lutmem_r : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm20_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm20_lutmem_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm20_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm20_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm20_lutmem_ir : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm20_lutmem_r : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm21_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm21_lutmem_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm21_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm21_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm21_lutmem_ir : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm21_lutmem_r : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm22_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm22_lutmem_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm22_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm22_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm22_lutmem_ir : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm22_lutmem_r : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm23_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm23_lutmem_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm23_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm23_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm23_lutmem_ir : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm23_lutmem_r : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm24_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm24_lutmem_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm24_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm24_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm24_lutmem_ir : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm24_lutmem_r : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm25_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm25_lutmem_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm25_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm25_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm25_lutmem_ir : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm25_lutmem_r : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm26_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm26_lutmem_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm26_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm26_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm26_lutmem_ir : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm26_lutmem_r : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm27_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm27_lutmem_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm27_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm27_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm27_lutmem_ir : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm27_lutmem_r : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm28_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm28_lutmem_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm28_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm28_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm28_lutmem_ir : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm28_lutmem_r : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm29_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm29_lutmem_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm29_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm29_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm29_lutmem_ir : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm29_lutmem_r : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm30_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm30_lutmem_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm30_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm30_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm30_lutmem_ir : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm30_lutmem_r : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm31_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm31_lutmem_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm31_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm31_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm31_lutmem_ir : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm31_lutmem_r : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm32_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm32_lutmem_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm32_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm32_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm32_lutmem_ir : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm32_lutmem_r : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm33_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm33_lutmem_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm33_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm33_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm33_lutmem_ir : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm33_lutmem_r : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm34_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm34_lutmem_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm34_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm34_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm34_lutmem_ir : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm34_lutmem_r : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm35_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm35_lutmem_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm35_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm35_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm35_lutmem_ir : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm35_lutmem_r : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm36_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm36_lutmem_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm36_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm36_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm36_lutmem_ir : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm36_lutmem_r : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm37_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm37_lutmem_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm37_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm37_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm37_lutmem_ir : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm37_lutmem_r : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm38_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm38_lutmem_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm38_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm38_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm38_lutmem_ir : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm38_lutmem_r : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm39_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm39_lutmem_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm39_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm39_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm39_lutmem_ir : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm39_lutmem_r : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm40_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm40_lutmem_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm40_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm40_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm40_lutmem_ir : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm40_lutmem_r : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm41_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm41_lutmem_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm41_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm41_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm41_lutmem_ir : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm41_lutmem_r : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm42_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm42_lutmem_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm42_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm42_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm42_lutmem_ir : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm42_lutmem_r : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm43_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm43_lutmem_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm43_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm43_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm43_lutmem_ir : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm43_lutmem_r : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm44_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm44_lutmem_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm44_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm44_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm44_lutmem_ir : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm44_lutmem_r : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm45_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm45_lutmem_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm45_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm45_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm45_lutmem_ir : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm45_lutmem_r : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm46_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm46_lutmem_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm46_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm46_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm46_lutmem_ir : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm46_lutmem_r : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm47_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm47_lutmem_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm47_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm47_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm47_lutmem_ir : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm47_lutmem_r : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm48_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm48_lutmem_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm48_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm48_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm48_lutmem_ir : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm48_lutmem_r : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm49_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm49_lutmem_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm49_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm49_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm49_lutmem_ir : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm49_lutmem_r : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm50_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm50_lutmem_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm50_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm50_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm50_lutmem_ir : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm50_lutmem_r : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm51_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm51_lutmem_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm51_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm51_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm51_lutmem_ir : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm51_lutmem_r : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm52_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm52_lutmem_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm52_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm52_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm52_lutmem_ir : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm52_lutmem_r : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm53_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm53_lutmem_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm53_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm53_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm53_lutmem_ir : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm53_lutmem_r : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm54_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm54_lutmem_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm54_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm54_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm54_lutmem_ir : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm54_lutmem_r : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm55_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm55_lutmem_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm55_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm55_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm55_lutmem_ir : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm55_lutmem_r : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm56_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm56_lutmem_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm56_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm56_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm56_lutmem_ir : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm56_lutmem_r : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm57_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm57_lutmem_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm57_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm57_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm57_lutmem_ir : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm57_lutmem_r : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm58_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm58_lutmem_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm58_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm58_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm58_lutmem_ir : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm58_lutmem_r : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm59_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm59_lutmem_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm59_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm59_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm59_lutmem_ir : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm59_lutmem_r : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm60_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm60_lutmem_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm60_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm60_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm60_lutmem_ir : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm60_lutmem_r : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm61_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm61_lutmem_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm61_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm61_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm61_lutmem_ir : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm61_lutmem_r : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm62_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm62_lutmem_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm62_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm62_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm62_lutmem_ir : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm62_lutmem_r : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm63_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm63_lutmem_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm63_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm63_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm63_lutmem_ir : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm63_lutmem_r : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm64_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm64_lutmem_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm64_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm64_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm64_lutmem_ir : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm64_lutmem_r : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm65_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm65_lutmem_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm65_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm65_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm65_lutmem_ir : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm65_lutmem_r : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm66_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm66_lutmem_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm66_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm66_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm66_lutmem_ir : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm66_lutmem_r : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm67_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm67_lutmem_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm67_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm67_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm67_lutmem_ir : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm67_lutmem_r : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm68_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm68_lutmem_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm68_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm68_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm68_lutmem_ir : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm68_lutmem_r : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm69_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm69_lutmem_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm69_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm69_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm69_lutmem_ir : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm69_lutmem_r : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm70_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm70_lutmem_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm70_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm70_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm70_lutmem_ir : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm70_lutmem_r : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm71_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm71_lutmem_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm71_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm71_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm71_lutmem_ir : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm71_lutmem_r : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm72_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm72_lutmem_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm72_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm72_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm72_lutmem_ir : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm72_lutmem_r : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm73_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm73_lutmem_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm73_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm73_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm73_lutmem_ir : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm73_lutmem_r : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm74_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm74_lutmem_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm74_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm74_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm74_lutmem_ir : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm74_lutmem_r : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm75_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm75_lutmem_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm75_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm75_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm75_lutmem_ir : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm75_lutmem_r : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm76_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm76_lutmem_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm76_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm76_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm76_lutmem_ir : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm76_lutmem_r : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm77_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm77_lutmem_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm77_lutmem_aa : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm77_lutmem_ab : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_cm77_lutmem_ir : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm77_lutmem_r : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_wi0_r0_ra81_count0_run_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_oseq_gated_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi0_r0_ra81_resize_in : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_ra81_resize_b : STD_LOGIC_VECTOR (7 downto 0);
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
    signal u0_m0_wo0_wi0_r0_split64_d : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_split67_b : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_split67_c : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_split67_d : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_split70_b : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_split70_c : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_split70_d : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_split73_b : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_split73_c : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_split73_d : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_split76_b : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_split76_c : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_split76_d : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_split79_b : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_split79_c : STD_LOGIC_VECTOR (11 downto 0);
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
    signal u0_m0_wo0_wi0_r0_join67_q : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_join70_q : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_join73_q : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_join76_q : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_wi0_r0_join79_q : STD_LOGIC_VECTOR (35 downto 0);

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
            u0_m0_wo0_run_enable_c := TO_SIGNED(198, 9);
            u0_m0_wo0_run_enableQ <= "0";
            u0_m0_wo0_run_count <= "00";
            u0_m0_wo0_run_inc := (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (u0_m0_wo0_run_out = "1") THEN
                IF (u0_m0_wo0_run_enable_c(8) = '1') THEN
                    u0_m0_wo0_run_enable_c := u0_m0_wo0_run_enable_c - (-199);
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

    -- d_u0_m0_wo0_memread_q_13(DELAY,463)@12 + 1
    d_u0_m0_wo0_memread_q_13 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_memread_q, xout => d_u0_m0_wo0_memread_q_13_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_compute(DELAY,16)@13
    u0_m0_wo0_compute : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => d_u0_m0_wo0_memread_q_13_q, xout => u0_m0_wo0_compute_q, clk => clk, aclr => areset );

    -- d_u0_m0_wo0_compute_q_14(DELAY,465)@13 + 1
    d_u0_m0_wo0_compute_q_14 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_compute_q, xout => d_u0_m0_wo0_compute_q_14_q, clk => clk, aclr => areset );

    -- d_u0_m0_wo0_compute_q_23(DELAY,466)@14 + 9
    d_u0_m0_wo0_compute_q_23 : dspba_delay
    GENERIC MAP ( width => 1, depth => 9, reset_kind => "ASYNC" )
    PORT MAP ( xin => d_u0_m0_wo0_compute_q_14_q, xout => d_u0_m0_wo0_compute_q_23_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_aseq(SEQUENCE,360)@23 + 1
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
                    u0_m0_wo0_aseq_c := u0_m0_wo0_aseq_c + 199;
                ELSE
                    u0_m0_wo0_aseq_c := u0_m0_wo0_aseq_c - 1;
                END IF;
                u0_m0_wo0_aseq_q <= STD_LOGIC_VECTOR(u0_m0_wo0_aseq_c(9 downto 9));
            END IF;
        END IF;
    END PROCESS;

    -- d_u0_m0_wo0_compute_q_24(DELAY,467)@23 + 1
    d_u0_m0_wo0_compute_q_24 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => d_u0_m0_wo0_compute_q_23_q, xout => d_u0_m0_wo0_compute_q_24_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_wi0_r0_ra81_count1(COUNTER,23)@12
    -- low=0, high=199, step=1, init=0
    u0_m0_wo0_wi0_r0_ra81_count1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_r0_ra81_count1_i <= TO_UNSIGNED(0, 8);
            u0_m0_wo0_wi0_r0_ra81_count1_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (u0_m0_wo0_memread_q = "1") THEN
                IF (u0_m0_wo0_wi0_r0_ra81_count1_i = TO_UNSIGNED(198, 8)) THEN
                    u0_m0_wo0_wi0_r0_ra81_count1_eq <= '1';
                ELSE
                    u0_m0_wo0_wi0_r0_ra81_count1_eq <= '0';
                END IF;
                IF (u0_m0_wo0_wi0_r0_ra81_count1_eq = '1') THEN
                    u0_m0_wo0_wi0_r0_ra81_count1_i <= u0_m0_wo0_wi0_r0_ra81_count1_i + 57;
                ELSE
                    u0_m0_wo0_wi0_r0_ra81_count1_i <= u0_m0_wo0_wi0_r0_ra81_count1_i + 1;
                END IF;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_wi0_r0_ra81_count1_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_wi0_r0_ra81_count1_i, 8)));

    -- u0_m0_wo0_wi0_r0_ra81_count1_lut_lutmem(DUALMEM,383)@12 + 2
    u0_m0_wo0_wi0_r0_ra81_count1_lut_lutmem_aa <= u0_m0_wo0_wi0_r0_ra81_count1_q;
    u0_m0_wo0_wi0_r0_ra81_count1_lut_lutmem_reset0 <= areset;
    u0_m0_wo0_wi0_r0_ra81_count1_lut_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 9,
        widthad_a => 8,
        numwords_a => 200,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "REVERB_fir_compiler_ii_0_rtl_core_u0_m0_wo0_wi0_r0_ra81_count1_lut_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => u0_m0_wo0_wi0_r0_ra81_count1_lut_lutmem_reset0,
        clock0 => clk,
        address_a => u0_m0_wo0_wi0_r0_ra81_count1_lut_lutmem_aa,
        q_a => u0_m0_wo0_wi0_r0_ra81_count1_lut_lutmem_ir
    );
    u0_m0_wo0_wi0_r0_ra81_count1_lut_lutmem_r <= u0_m0_wo0_wi0_r0_ra81_count1_lut_lutmem_ir(8 downto 0);

    -- u0_m0_wo0_wi0_r0_ra81_count0_inner(COUNTER,19)@14
    -- low=-1, high=198, step=-1, init=198
    u0_m0_wo0_wi0_r0_ra81_count0_inner_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_r0_ra81_count0_inner_i <= TO_SIGNED(198, 9);
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (d_u0_m0_wo0_memread_q_14_q = "1") THEN
                IF (u0_m0_wo0_wi0_r0_ra81_count0_inner_i(8 downto 8) = "1") THEN
                    u0_m0_wo0_wi0_r0_ra81_count0_inner_i <= u0_m0_wo0_wi0_r0_ra81_count0_inner_i - 313;
                ELSE
                    u0_m0_wo0_wi0_r0_ra81_count0_inner_i <= u0_m0_wo0_wi0_r0_ra81_count0_inner_i - 1;
                END IF;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_wi0_r0_ra81_count0_inner_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_wi0_r0_ra81_count0_inner_i, 9)));

    -- u0_m0_wo0_wi0_r0_ra81_count0_run(LOGICAL,20)@14
    u0_m0_wo0_wi0_r0_ra81_count0_run_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_ra81_count0_inner_q(8 downto 8));

    -- d_u0_m0_wo0_memread_q_14(DELAY,464)@13 + 1
    d_u0_m0_wo0_memread_q_14 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => d_u0_m0_wo0_memread_q_13_q, xout => d_u0_m0_wo0_memread_q_14_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_wi0_r0_ra81_count0(COUNTER,21)@14
    -- low=0, high=255, step=1, init=0
    u0_m0_wo0_wi0_r0_ra81_count0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_r0_ra81_count0_i <= TO_UNSIGNED(0, 8);
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (d_u0_m0_wo0_memread_q_14_q = "1" and u0_m0_wo0_wi0_r0_ra81_count0_run_q = "1") THEN
                u0_m0_wo0_wi0_r0_ra81_count0_i <= u0_m0_wo0_wi0_r0_ra81_count0_i + 1;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_wi0_r0_ra81_count0_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_wi0_r0_ra81_count0_i, 9)));

    -- u0_m0_wo0_wi0_r0_ra81_add_0_0(ADD,24)@14 + 1
    u0_m0_wo0_wi0_r0_ra81_add_0_0_a <= STD_LOGIC_VECTOR("0" & u0_m0_wo0_wi0_r0_ra81_count0_q);
    u0_m0_wo0_wi0_r0_ra81_add_0_0_b <= STD_LOGIC_VECTOR("0" & u0_m0_wo0_wi0_r0_ra81_count1_lut_lutmem_r);
    u0_m0_wo0_wi0_r0_ra81_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_r0_ra81_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_wi0_r0_ra81_add_0_0_o <= STD_LOGIC_VECTOR(UNSIGNED(u0_m0_wo0_wi0_r0_ra81_add_0_0_a) + UNSIGNED(u0_m0_wo0_wi0_r0_ra81_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_wi0_r0_ra81_add_0_0_q <= u0_m0_wo0_wi0_r0_ra81_add_0_0_o(9 downto 0);

    -- u0_m0_wo0_wi0_r0_ra81_resize(BITSELECT,25)@15
    u0_m0_wo0_wi0_r0_ra81_resize_in <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_ra81_add_0_0_q(7 downto 0));
    u0_m0_wo0_wi0_r0_ra81_resize_b <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_ra81_resize_in(7 downto 0));

    -- d_xIn_0_15(DELAY,461)@10 + 5
    d_xIn_0_15 : dspba_delay
    GENERIC MAP ( width => 12, depth => 5, reset_kind => "ASYNC" )
    PORT MAP ( xin => xIn_0, xout => d_xIn_0_15_q, clk => clk, aclr => areset );

    -- d_in0_m0_wi0_wo0_assign_id1_q_15(DELAY,462)@10 + 5
    d_in0_m0_wi0_wo0_assign_id1_q_15 : dspba_delay
    GENERIC MAP ( width => 1, depth => 5, reset_kind => "ASYNC" )
    PORT MAP ( xin => xIn_v, xout => d_in0_m0_wi0_wo0_assign_id1_q_15_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_wi0_r0_wa0(COUNTER,27)@15
    -- low=0, high=255, step=1, init=145
    u0_m0_wo0_wi0_r0_wa0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_r0_wa0_i <= TO_UNSIGNED(145, 8);
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
    u0_m0_wo0_wi0_r0_memr0_ab <= u0_m0_wo0_wi0_r0_ra81_resize_b;
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

    -- u0_m0_wo0_wi0_r0_we81_seq(SEQUENCE,26)@14 + 1
    u0_m0_wo0_wi0_r0_we81_seq_clkproc: PROCESS (clk, areset)
        variable u0_m0_wo0_wi0_r0_we81_seq_c : SIGNED(9 downto 0);
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_r0_we81_seq_c := "0000000000";
            u0_m0_wo0_wi0_r0_we81_seq_q <= "0";
            u0_m0_wo0_wi0_r0_we81_seq_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (d_u0_m0_wo0_compute_q_14_q = "1") THEN
                IF (u0_m0_wo0_wi0_r0_we81_seq_c = "0000000000") THEN
                    u0_m0_wo0_wi0_r0_we81_seq_eq <= '1';
                ELSE
                    u0_m0_wo0_wi0_r0_we81_seq_eq <= '0';
                END IF;
                IF (u0_m0_wo0_wi0_r0_we81_seq_eq = '1') THEN
                    u0_m0_wo0_wi0_r0_we81_seq_c := u0_m0_wo0_wi0_r0_we81_seq_c + 199;
                ELSE
                    u0_m0_wo0_wi0_r0_we81_seq_c := u0_m0_wo0_wi0_r0_we81_seq_c - 1;
                END IF;
                u0_m0_wo0_wi0_r0_we81_seq_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_we81_seq_c(9 downto 9));
            ELSE
                u0_m0_wo0_wi0_r0_we81_seq_q <= "0";
            END IF;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi0_r0_wa81(COUNTER,28)@15
    -- low=0, high=255, step=1, init=146
    u0_m0_wo0_wi0_r0_wa81_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_r0_wa81_i <= TO_UNSIGNED(146, 8);
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (u0_m0_wo0_wi0_r0_we81_seq_q = "1") THEN
                u0_m0_wo0_wi0_r0_wa81_i <= u0_m0_wo0_wi0_r0_wa81_i + 1;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_wi0_r0_wa81_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_wi0_r0_wa81_i, 8)));

    -- u0_m0_wo0_wi0_r0_memr1(DUALMEM,32)@15
    u0_m0_wo0_wi0_r0_memr1_ia <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_join1_q);
    u0_m0_wo0_wi0_r0_memr1_aa <= u0_m0_wo0_wi0_r0_wa81_q;
    u0_m0_wo0_wi0_r0_memr1_ab <= u0_m0_wo0_wi0_r0_ra81_resize_b;
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
        wren_a => u0_m0_wo0_wi0_r0_we81_seq_q(0),
        address_b => u0_m0_wo0_wi0_r0_memr1_ab,
        q_b => u0_m0_wo0_wi0_r0_memr1_iq
    );
    u0_m0_wo0_wi0_r0_memr1_q <= u0_m0_wo0_wi0_r0_memr1_iq(35 downto 0);

    -- u0_m0_wo0_wi0_r0_split1(BITSELECT,31)@15
    u0_m0_wo0_wi0_r0_split1_b <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr1_q(11 downto 0));
    u0_m0_wo0_wi0_r0_split1_c <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr1_q(23 downto 12));
    u0_m0_wo0_wi0_r0_split1_d <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr1_q(35 downto 24));

    -- d_u0_m0_wo0_wi0_r0_split1_b_20(DELAY,468)@15 + 5
    d_u0_m0_wo0_wi0_r0_split1_b_20 : dspba_delay
    GENERIC MAP ( width => 12, depth => 5, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_split1_b, xout => d_u0_m0_wo0_wi0_r0_split1_b_20_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_ca81(COUNTER,111)@13
    -- low=0, high=199, step=1, init=0
    u0_m0_wo0_ca81_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_ca81_i <= TO_UNSIGNED(0, 8);
            u0_m0_wo0_ca81_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (u0_m0_wo0_compute_q = "1") THEN
                IF (u0_m0_wo0_ca81_i = TO_UNSIGNED(198, 8)) THEN
                    u0_m0_wo0_ca81_eq <= '1';
                ELSE
                    u0_m0_wo0_ca81_eq <= '0';
                END IF;
                IF (u0_m0_wo0_ca81_eq = '1') THEN
                    u0_m0_wo0_ca81_i <= u0_m0_wo0_ca81_i + 57;
                ELSE
                    u0_m0_wo0_ca81_i <= u0_m0_wo0_ca81_i + 1;
                END IF;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_ca81_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_ca81_i, 8)));

    -- d_u0_m0_wo0_ca81_q_14(DELAY,489)@13 + 1
    d_u0_m0_wo0_ca81_q_14 : dspba_delay
    GENERIC MAP ( width => 8, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_ca81_q, xout => d_u0_m0_wo0_ca81_q_14_q, clk => clk, aclr => areset );

    -- d_u0_m0_wo0_ca81_q_18(DELAY,490)@14 + 4
    d_u0_m0_wo0_ca81_q_18 : dspba_delay
    GENERIC MAP ( width => 8, depth => 4, reset_kind => "ASYNC" )
    PORT MAP ( xin => d_u0_m0_wo0_ca81_q_14_q, xout => d_u0_m0_wo0_ca81_q_18_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_cm1_lutmem(DUALMEM,384)@18 + 2
    u0_m0_wo0_cm1_lutmem_aa <= d_u0_m0_wo0_ca81_q_18_q;
    u0_m0_wo0_cm1_lutmem_reset0 <= areset;
    u0_m0_wo0_cm1_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 13,
        widthad_a => 8,
        numwords_a => 200,
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
    u0_m0_wo0_cm1_lutmem_r <= u0_m0_wo0_cm1_lutmem_ir(12 downto 0);

    -- u0_m0_wo0_mtree_mult1_80(MULT,198)@20 + 2
    u0_m0_wo0_mtree_mult1_80_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm1_lutmem_r);
    u0_m0_wo0_mtree_mult1_80_b0 <= STD_LOGIC_VECTOR(d_u0_m0_wo0_wi0_r0_split1_b_20_q);
    u0_m0_wo0_mtree_mult1_80_reset <= areset;
    u0_m0_wo0_mtree_mult1_80_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 13,
        lpm_widthb => 12,
        lpm_widthp => 25,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_80_a0,
        datab => u0_m0_wo0_mtree_mult1_80_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_80_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_80_s1
    );
    u0_m0_wo0_mtree_mult1_80_q <= u0_m0_wo0_mtree_mult1_80_s1;

    -- d_u0_m0_wo0_wi0_r0_split1_c_16(DELAY,469)@15 + 1
    d_u0_m0_wo0_wi0_r0_split1_c_16 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_split1_c, xout => d_u0_m0_wo0_wi0_r0_split1_c_16_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_cm2_lutmem(DUALMEM,385)@14 + 2
    u0_m0_wo0_cm2_lutmem_aa <= d_u0_m0_wo0_ca81_q_14_q;
    u0_m0_wo0_cm2_lutmem_reset0 <= areset;
    u0_m0_wo0_cm2_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 13,
        widthad_a => 8,
        numwords_a => 200,
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
    u0_m0_wo0_cm2_lutmem_r <= u0_m0_wo0_cm2_lutmem_ir(12 downto 0);

    -- u0_m0_wo0_mtree_mult1_79(MULT,199)@16 + 2
    u0_m0_wo0_mtree_mult1_79_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm2_lutmem_r);
    u0_m0_wo0_mtree_mult1_79_b0 <= STD_LOGIC_VECTOR(d_u0_m0_wo0_wi0_r0_split1_c_16_q);
    u0_m0_wo0_mtree_mult1_79_reset <= areset;
    u0_m0_wo0_mtree_mult1_79_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 13,
        lpm_widthb => 12,
        lpm_widthp => 25,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_79_a0,
        datab => u0_m0_wo0_mtree_mult1_79_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_79_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_79_s1
    );
    u0_m0_wo0_mtree_mult1_79_q <= u0_m0_wo0_mtree_mult1_79_s1;

    -- d_u0_m0_wo0_wi0_r0_split1_d_16(DELAY,470)@15 + 1
    d_u0_m0_wo0_wi0_r0_split1_d_16 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_split1_d, xout => d_u0_m0_wo0_wi0_r0_split1_d_16_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_cm3_lutmem(DUALMEM,386)@14 + 2
    u0_m0_wo0_cm3_lutmem_aa <= d_u0_m0_wo0_ca81_q_14_q;
    u0_m0_wo0_cm3_lutmem_reset0 <= areset;
    u0_m0_wo0_cm3_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 13,
        widthad_a => 8,
        numwords_a => 200,
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
    u0_m0_wo0_cm3_lutmem_r <= u0_m0_wo0_cm3_lutmem_ir(12 downto 0);

    -- u0_m0_wo0_mtree_mult1_78(MULT,200)@16 + 2
    u0_m0_wo0_mtree_mult1_78_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm3_lutmem_r);
    u0_m0_wo0_mtree_mult1_78_b0 <= STD_LOGIC_VECTOR(d_u0_m0_wo0_wi0_r0_split1_d_16_q);
    u0_m0_wo0_mtree_mult1_78_reset <= areset;
    u0_m0_wo0_mtree_mult1_78_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 13,
        lpm_widthb => 12,
        lpm_widthp => 25,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_78_a0,
        datab => u0_m0_wo0_mtree_mult1_78_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_78_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_78_s1
    );
    u0_m0_wo0_mtree_mult1_78_q <= u0_m0_wo0_mtree_mult1_78_s1;

    -- u0_m0_wo0_mtree_add0_39(ADD,318)@18 + 1
    u0_m0_wo0_mtree_add0_39_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 25 => u0_m0_wo0_mtree_mult1_78_q(24)) & u0_m0_wo0_mtree_mult1_78_q));
    u0_m0_wo0_mtree_add0_39_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 25 => u0_m0_wo0_mtree_mult1_79_q(24)) & u0_m0_wo0_mtree_mult1_79_q));
    u0_m0_wo0_mtree_add0_39_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_39_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_39_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_39_a) + SIGNED(u0_m0_wo0_mtree_add0_39_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_39_q <= u0_m0_wo0_mtree_add0_39_o(25 downto 0);

    -- u0_m0_wo0_wi0_r0_join4(BITJOIN,33)@15
    u0_m0_wo0_wi0_r0_join4_q <= u0_m0_wo0_wi0_r0_split4_c & u0_m0_wo0_wi0_r0_split4_b & u0_m0_wo0_wi0_r0_split1_d;

    -- u0_m0_wo0_wi0_r0_memr4(DUALMEM,35)@15
    u0_m0_wo0_wi0_r0_memr4_ia <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_join4_q);
    u0_m0_wo0_wi0_r0_memr4_aa <= u0_m0_wo0_wi0_r0_wa81_q;
    u0_m0_wo0_wi0_r0_memr4_ab <= u0_m0_wo0_wi0_r0_ra81_resize_b;
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
        wren_a => u0_m0_wo0_wi0_r0_we81_seq_q(0),
        address_b => u0_m0_wo0_wi0_r0_memr4_ab,
        q_b => u0_m0_wo0_wi0_r0_memr4_iq
    );
    u0_m0_wo0_wi0_r0_memr4_q <= u0_m0_wo0_wi0_r0_memr4_iq(35 downto 0);

    -- u0_m0_wo0_wi0_r0_split4(BITSELECT,34)@15
    u0_m0_wo0_wi0_r0_split4_b <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr4_q(11 downto 0));
    u0_m0_wo0_wi0_r0_split4_c <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr4_q(23 downto 12));
    u0_m0_wo0_wi0_r0_split4_d <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr4_q(35 downto 24));

    -- d_u0_m0_wo0_wi0_r0_split4_b_16(DELAY,471)@15 + 1
    d_u0_m0_wo0_wi0_r0_split4_b_16 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_split4_b, xout => d_u0_m0_wo0_wi0_r0_split4_b_16_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_cm4_lutmem(DUALMEM,387)@14 + 2
    u0_m0_wo0_cm4_lutmem_aa <= d_u0_m0_wo0_ca81_q_14_q;
    u0_m0_wo0_cm4_lutmem_reset0 <= areset;
    u0_m0_wo0_cm4_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 13,
        widthad_a => 8,
        numwords_a => 200,
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
    u0_m0_wo0_cm4_lutmem_r <= u0_m0_wo0_cm4_lutmem_ir(12 downto 0);

    -- u0_m0_wo0_mtree_mult1_77(MULT,201)@16 + 2
    u0_m0_wo0_mtree_mult1_77_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm4_lutmem_r);
    u0_m0_wo0_mtree_mult1_77_b0 <= STD_LOGIC_VECTOR(d_u0_m0_wo0_wi0_r0_split4_b_16_q);
    u0_m0_wo0_mtree_mult1_77_reset <= areset;
    u0_m0_wo0_mtree_mult1_77_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 13,
        lpm_widthb => 12,
        lpm_widthp => 25,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_77_a0,
        datab => u0_m0_wo0_mtree_mult1_77_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_77_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_77_s1
    );
    u0_m0_wo0_mtree_mult1_77_q <= u0_m0_wo0_mtree_mult1_77_s1;

    -- d_u0_m0_wo0_wi0_r0_split4_c_16(DELAY,472)@15 + 1
    d_u0_m0_wo0_wi0_r0_split4_c_16 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_split4_c, xout => d_u0_m0_wo0_wi0_r0_split4_c_16_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_cm5_lutmem(DUALMEM,388)@14 + 2
    u0_m0_wo0_cm5_lutmem_aa <= d_u0_m0_wo0_ca81_q_14_q;
    u0_m0_wo0_cm5_lutmem_reset0 <= areset;
    u0_m0_wo0_cm5_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 13,
        widthad_a => 8,
        numwords_a => 200,
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
    u0_m0_wo0_cm5_lutmem_r <= u0_m0_wo0_cm5_lutmem_ir(12 downto 0);

    -- u0_m0_wo0_mtree_mult1_76(MULT,202)@16 + 2
    u0_m0_wo0_mtree_mult1_76_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm5_lutmem_r);
    u0_m0_wo0_mtree_mult1_76_b0 <= STD_LOGIC_VECTOR(d_u0_m0_wo0_wi0_r0_split4_c_16_q);
    u0_m0_wo0_mtree_mult1_76_reset <= areset;
    u0_m0_wo0_mtree_mult1_76_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 13,
        lpm_widthb => 12,
        lpm_widthp => 25,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_76_a0,
        datab => u0_m0_wo0_mtree_mult1_76_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_76_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_76_s1
    );
    u0_m0_wo0_mtree_mult1_76_q <= u0_m0_wo0_mtree_mult1_76_s1;

    -- u0_m0_wo0_mtree_add0_38(ADD,317)@18 + 1
    u0_m0_wo0_mtree_add0_38_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 25 => u0_m0_wo0_mtree_mult1_76_q(24)) & u0_m0_wo0_mtree_mult1_76_q));
    u0_m0_wo0_mtree_add0_38_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 25 => u0_m0_wo0_mtree_mult1_77_q(24)) & u0_m0_wo0_mtree_mult1_77_q));
    u0_m0_wo0_mtree_add0_38_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_38_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_38_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_38_a) + SIGNED(u0_m0_wo0_mtree_add0_38_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_38_q <= u0_m0_wo0_mtree_add0_38_o(25 downto 0);

    -- u0_m0_wo0_mtree_add1_19(ADD,339)@19 + 1
    u0_m0_wo0_mtree_add1_19_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((26 downto 26 => u0_m0_wo0_mtree_add0_38_q(25)) & u0_m0_wo0_mtree_add0_38_q));
    u0_m0_wo0_mtree_add1_19_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((26 downto 26 => u0_m0_wo0_mtree_add0_39_q(25)) & u0_m0_wo0_mtree_add0_39_q));
    u0_m0_wo0_mtree_add1_19_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_19_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_19_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_19_a) + SIGNED(u0_m0_wo0_mtree_add1_19_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_19_q <= u0_m0_wo0_mtree_add1_19_o(26 downto 0);

    -- d_u0_m0_wo0_wi0_r0_split4_d_16(DELAY,473)@15 + 1
    d_u0_m0_wo0_wi0_r0_split4_d_16 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_split4_d, xout => d_u0_m0_wo0_wi0_r0_split4_d_16_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_cm6_lutmem(DUALMEM,389)@14 + 2
    u0_m0_wo0_cm6_lutmem_aa <= d_u0_m0_wo0_ca81_q_14_q;
    u0_m0_wo0_cm6_lutmem_reset0 <= areset;
    u0_m0_wo0_cm6_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 13,
        widthad_a => 8,
        numwords_a => 200,
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
    u0_m0_wo0_cm6_lutmem_r <= u0_m0_wo0_cm6_lutmem_ir(12 downto 0);

    -- u0_m0_wo0_mtree_mult1_75(MULT,203)@16 + 2
    u0_m0_wo0_mtree_mult1_75_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm6_lutmem_r);
    u0_m0_wo0_mtree_mult1_75_b0 <= STD_LOGIC_VECTOR(d_u0_m0_wo0_wi0_r0_split4_d_16_q);
    u0_m0_wo0_mtree_mult1_75_reset <= areset;
    u0_m0_wo0_mtree_mult1_75_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 13,
        lpm_widthb => 12,
        lpm_widthp => 25,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_75_a0,
        datab => u0_m0_wo0_mtree_mult1_75_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_75_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_75_s1
    );
    u0_m0_wo0_mtree_mult1_75_q <= u0_m0_wo0_mtree_mult1_75_s1;

    -- u0_m0_wo0_wi0_r0_join7(BITJOIN,36)@15
    u0_m0_wo0_wi0_r0_join7_q <= u0_m0_wo0_wi0_r0_split7_c & u0_m0_wo0_wi0_r0_split7_b & u0_m0_wo0_wi0_r0_split4_d;

    -- u0_m0_wo0_wi0_r0_memr7(DUALMEM,38)@15
    u0_m0_wo0_wi0_r0_memr7_ia <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_join7_q);
    u0_m0_wo0_wi0_r0_memr7_aa <= u0_m0_wo0_wi0_r0_wa81_q;
    u0_m0_wo0_wi0_r0_memr7_ab <= u0_m0_wo0_wi0_r0_ra81_resize_b;
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
        wren_a => u0_m0_wo0_wi0_r0_we81_seq_q(0),
        address_b => u0_m0_wo0_wi0_r0_memr7_ab,
        q_b => u0_m0_wo0_wi0_r0_memr7_iq
    );
    u0_m0_wo0_wi0_r0_memr7_q <= u0_m0_wo0_wi0_r0_memr7_iq(35 downto 0);

    -- u0_m0_wo0_wi0_r0_split7(BITSELECT,37)@15
    u0_m0_wo0_wi0_r0_split7_b <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr7_q(11 downto 0));
    u0_m0_wo0_wi0_r0_split7_c <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr7_q(23 downto 12));
    u0_m0_wo0_wi0_r0_split7_d <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr7_q(35 downto 24));

    -- d_u0_m0_wo0_wi0_r0_split7_b_16(DELAY,474)@15 + 1
    d_u0_m0_wo0_wi0_r0_split7_b_16 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_split7_b, xout => d_u0_m0_wo0_wi0_r0_split7_b_16_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_cm7_lutmem(DUALMEM,390)@14 + 2
    u0_m0_wo0_cm7_lutmem_aa <= d_u0_m0_wo0_ca81_q_14_q;
    u0_m0_wo0_cm7_lutmem_reset0 <= areset;
    u0_m0_wo0_cm7_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 13,
        widthad_a => 8,
        numwords_a => 200,
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
    u0_m0_wo0_cm7_lutmem_r <= u0_m0_wo0_cm7_lutmem_ir(12 downto 0);

    -- u0_m0_wo0_mtree_mult1_74(MULT,204)@16 + 2
    u0_m0_wo0_mtree_mult1_74_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm7_lutmem_r);
    u0_m0_wo0_mtree_mult1_74_b0 <= STD_LOGIC_VECTOR(d_u0_m0_wo0_wi0_r0_split7_b_16_q);
    u0_m0_wo0_mtree_mult1_74_reset <= areset;
    u0_m0_wo0_mtree_mult1_74_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 13,
        lpm_widthb => 12,
        lpm_widthp => 25,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_74_a0,
        datab => u0_m0_wo0_mtree_mult1_74_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_74_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_74_s1
    );
    u0_m0_wo0_mtree_mult1_74_q <= u0_m0_wo0_mtree_mult1_74_s1;

    -- u0_m0_wo0_mtree_add0_37(ADD,316)@18 + 1
    u0_m0_wo0_mtree_add0_37_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 25 => u0_m0_wo0_mtree_mult1_74_q(24)) & u0_m0_wo0_mtree_mult1_74_q));
    u0_m0_wo0_mtree_add0_37_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 25 => u0_m0_wo0_mtree_mult1_75_q(24)) & u0_m0_wo0_mtree_mult1_75_q));
    u0_m0_wo0_mtree_add0_37_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_37_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_37_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_37_a) + SIGNED(u0_m0_wo0_mtree_add0_37_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_37_q <= u0_m0_wo0_mtree_add0_37_o(25 downto 0);

    -- d_u0_m0_wo0_wi0_r0_split7_c_16(DELAY,475)@15 + 1
    d_u0_m0_wo0_wi0_r0_split7_c_16 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_split7_c, xout => d_u0_m0_wo0_wi0_r0_split7_c_16_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_cm8_lutmem(DUALMEM,391)@14 + 2
    u0_m0_wo0_cm8_lutmem_aa <= d_u0_m0_wo0_ca81_q_14_q;
    u0_m0_wo0_cm8_lutmem_reset0 <= areset;
    u0_m0_wo0_cm8_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 13,
        widthad_a => 8,
        numwords_a => 200,
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
    u0_m0_wo0_cm8_lutmem_r <= u0_m0_wo0_cm8_lutmem_ir(12 downto 0);

    -- u0_m0_wo0_mtree_mult1_73(MULT,205)@16 + 2
    u0_m0_wo0_mtree_mult1_73_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm8_lutmem_r);
    u0_m0_wo0_mtree_mult1_73_b0 <= STD_LOGIC_VECTOR(d_u0_m0_wo0_wi0_r0_split7_c_16_q);
    u0_m0_wo0_mtree_mult1_73_reset <= areset;
    u0_m0_wo0_mtree_mult1_73_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 13,
        lpm_widthb => 12,
        lpm_widthp => 25,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_73_a0,
        datab => u0_m0_wo0_mtree_mult1_73_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_73_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_73_s1
    );
    u0_m0_wo0_mtree_mult1_73_q <= u0_m0_wo0_mtree_mult1_73_s1;

    -- d_u0_m0_wo0_wi0_r0_split7_d_16(DELAY,476)@15 + 1
    d_u0_m0_wo0_wi0_r0_split7_d_16 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_split7_d, xout => d_u0_m0_wo0_wi0_r0_split7_d_16_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_cm9_lutmem(DUALMEM,392)@14 + 2
    u0_m0_wo0_cm9_lutmem_aa <= d_u0_m0_wo0_ca81_q_14_q;
    u0_m0_wo0_cm9_lutmem_reset0 <= areset;
    u0_m0_wo0_cm9_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 13,
        widthad_a => 8,
        numwords_a => 200,
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
    u0_m0_wo0_cm9_lutmem_r <= u0_m0_wo0_cm9_lutmem_ir(12 downto 0);

    -- u0_m0_wo0_mtree_mult1_72(MULT,206)@16 + 2
    u0_m0_wo0_mtree_mult1_72_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm9_lutmem_r);
    u0_m0_wo0_mtree_mult1_72_b0 <= STD_LOGIC_VECTOR(d_u0_m0_wo0_wi0_r0_split7_d_16_q);
    u0_m0_wo0_mtree_mult1_72_reset <= areset;
    u0_m0_wo0_mtree_mult1_72_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 13,
        lpm_widthb => 12,
        lpm_widthp => 25,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_72_a0,
        datab => u0_m0_wo0_mtree_mult1_72_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_72_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_72_s1
    );
    u0_m0_wo0_mtree_mult1_72_q <= u0_m0_wo0_mtree_mult1_72_s1;

    -- u0_m0_wo0_mtree_add0_36(ADD,315)@18 + 1
    u0_m0_wo0_mtree_add0_36_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 25 => u0_m0_wo0_mtree_mult1_72_q(24)) & u0_m0_wo0_mtree_mult1_72_q));
    u0_m0_wo0_mtree_add0_36_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 25 => u0_m0_wo0_mtree_mult1_73_q(24)) & u0_m0_wo0_mtree_mult1_73_q));
    u0_m0_wo0_mtree_add0_36_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_36_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_36_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_36_a) + SIGNED(u0_m0_wo0_mtree_add0_36_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_36_q <= u0_m0_wo0_mtree_add0_36_o(25 downto 0);

    -- u0_m0_wo0_mtree_add1_18(ADD,338)@19 + 1
    u0_m0_wo0_mtree_add1_18_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((26 downto 26 => u0_m0_wo0_mtree_add0_36_q(25)) & u0_m0_wo0_mtree_add0_36_q));
    u0_m0_wo0_mtree_add1_18_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((26 downto 26 => u0_m0_wo0_mtree_add0_37_q(25)) & u0_m0_wo0_mtree_add0_37_q));
    u0_m0_wo0_mtree_add1_18_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_18_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_18_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_18_a) + SIGNED(u0_m0_wo0_mtree_add1_18_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_18_q <= u0_m0_wo0_mtree_add1_18_o(26 downto 0);

    -- u0_m0_wo0_mtree_add2_9(ADD,349)@20 + 1
    u0_m0_wo0_mtree_add2_9_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((27 downto 27 => u0_m0_wo0_mtree_add1_18_q(26)) & u0_m0_wo0_mtree_add1_18_q));
    u0_m0_wo0_mtree_add2_9_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((27 downto 27 => u0_m0_wo0_mtree_add1_19_q(26)) & u0_m0_wo0_mtree_add1_19_q));
    u0_m0_wo0_mtree_add2_9_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add2_9_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add2_9_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add2_9_a) + SIGNED(u0_m0_wo0_mtree_add2_9_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add2_9_q <= u0_m0_wo0_mtree_add2_9_o(27 downto 0);

    -- u0_m0_wo0_wi0_r0_join10(BITJOIN,39)@15
    u0_m0_wo0_wi0_r0_join10_q <= u0_m0_wo0_wi0_r0_split10_c & u0_m0_wo0_wi0_r0_split10_b & u0_m0_wo0_wi0_r0_split7_d;

    -- u0_m0_wo0_wi0_r0_memr10(DUALMEM,41)@15
    u0_m0_wo0_wi0_r0_memr10_ia <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_join10_q);
    u0_m0_wo0_wi0_r0_memr10_aa <= u0_m0_wo0_wi0_r0_wa81_q;
    u0_m0_wo0_wi0_r0_memr10_ab <= u0_m0_wo0_wi0_r0_ra81_resize_b;
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
        wren_a => u0_m0_wo0_wi0_r0_we81_seq_q(0),
        address_b => u0_m0_wo0_wi0_r0_memr10_ab,
        q_b => u0_m0_wo0_wi0_r0_memr10_iq
    );
    u0_m0_wo0_wi0_r0_memr10_q <= u0_m0_wo0_wi0_r0_memr10_iq(35 downto 0);

    -- u0_m0_wo0_wi0_r0_split10(BITSELECT,40)@15
    u0_m0_wo0_wi0_r0_split10_b <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr10_q(11 downto 0));
    u0_m0_wo0_wi0_r0_split10_c <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr10_q(23 downto 12));
    u0_m0_wo0_wi0_r0_split10_d <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr10_q(35 downto 24));

    -- d_u0_m0_wo0_wi0_r0_split10_b_16(DELAY,477)@15 + 1
    d_u0_m0_wo0_wi0_r0_split10_b_16 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_split10_b, xout => d_u0_m0_wo0_wi0_r0_split10_b_16_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_cm10_lutmem(DUALMEM,393)@14 + 2
    u0_m0_wo0_cm10_lutmem_aa <= d_u0_m0_wo0_ca81_q_14_q;
    u0_m0_wo0_cm10_lutmem_reset0 <= areset;
    u0_m0_wo0_cm10_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 13,
        widthad_a => 8,
        numwords_a => 200,
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
    u0_m0_wo0_cm10_lutmem_r <= u0_m0_wo0_cm10_lutmem_ir(12 downto 0);

    -- u0_m0_wo0_mtree_mult1_71(MULT,207)@16 + 2
    u0_m0_wo0_mtree_mult1_71_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm10_lutmem_r);
    u0_m0_wo0_mtree_mult1_71_b0 <= STD_LOGIC_VECTOR(d_u0_m0_wo0_wi0_r0_split10_b_16_q);
    u0_m0_wo0_mtree_mult1_71_reset <= areset;
    u0_m0_wo0_mtree_mult1_71_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 13,
        lpm_widthb => 12,
        lpm_widthp => 25,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_71_a0,
        datab => u0_m0_wo0_mtree_mult1_71_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_71_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_71_s1
    );
    u0_m0_wo0_mtree_mult1_71_q <= u0_m0_wo0_mtree_mult1_71_s1;

    -- d_u0_m0_wo0_wi0_r0_split10_c_16(DELAY,478)@15 + 1
    d_u0_m0_wo0_wi0_r0_split10_c_16 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_split10_c, xout => d_u0_m0_wo0_wi0_r0_split10_c_16_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_cm11_lutmem(DUALMEM,394)@14 + 2
    u0_m0_wo0_cm11_lutmem_aa <= d_u0_m0_wo0_ca81_q_14_q;
    u0_m0_wo0_cm11_lutmem_reset0 <= areset;
    u0_m0_wo0_cm11_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 13,
        widthad_a => 8,
        numwords_a => 200,
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
    u0_m0_wo0_cm11_lutmem_r <= u0_m0_wo0_cm11_lutmem_ir(12 downto 0);

    -- u0_m0_wo0_mtree_mult1_70(MULT,208)@16 + 2
    u0_m0_wo0_mtree_mult1_70_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm11_lutmem_r);
    u0_m0_wo0_mtree_mult1_70_b0 <= STD_LOGIC_VECTOR(d_u0_m0_wo0_wi0_r0_split10_c_16_q);
    u0_m0_wo0_mtree_mult1_70_reset <= areset;
    u0_m0_wo0_mtree_mult1_70_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 13,
        lpm_widthb => 12,
        lpm_widthp => 25,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_70_a0,
        datab => u0_m0_wo0_mtree_mult1_70_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_70_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_70_s1
    );
    u0_m0_wo0_mtree_mult1_70_q <= u0_m0_wo0_mtree_mult1_70_s1;

    -- u0_m0_wo0_mtree_add0_35(ADD,314)@18 + 1
    u0_m0_wo0_mtree_add0_35_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 25 => u0_m0_wo0_mtree_mult1_70_q(24)) & u0_m0_wo0_mtree_mult1_70_q));
    u0_m0_wo0_mtree_add0_35_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 25 => u0_m0_wo0_mtree_mult1_71_q(24)) & u0_m0_wo0_mtree_mult1_71_q));
    u0_m0_wo0_mtree_add0_35_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_35_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_35_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_35_a) + SIGNED(u0_m0_wo0_mtree_add0_35_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_35_q <= u0_m0_wo0_mtree_add0_35_o(25 downto 0);

    -- d_u0_m0_wo0_wi0_r0_split10_d_16(DELAY,479)@15 + 1
    d_u0_m0_wo0_wi0_r0_split10_d_16 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_split10_d, xout => d_u0_m0_wo0_wi0_r0_split10_d_16_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_cm12_lutmem(DUALMEM,395)@14 + 2
    u0_m0_wo0_cm12_lutmem_aa <= d_u0_m0_wo0_ca81_q_14_q;
    u0_m0_wo0_cm12_lutmem_reset0 <= areset;
    u0_m0_wo0_cm12_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 13,
        widthad_a => 8,
        numwords_a => 200,
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
    u0_m0_wo0_cm12_lutmem_r <= u0_m0_wo0_cm12_lutmem_ir(12 downto 0);

    -- u0_m0_wo0_mtree_mult1_69(MULT,209)@16 + 2
    u0_m0_wo0_mtree_mult1_69_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm12_lutmem_r);
    u0_m0_wo0_mtree_mult1_69_b0 <= STD_LOGIC_VECTOR(d_u0_m0_wo0_wi0_r0_split10_d_16_q);
    u0_m0_wo0_mtree_mult1_69_reset <= areset;
    u0_m0_wo0_mtree_mult1_69_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 13,
        lpm_widthb => 12,
        lpm_widthp => 25,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_69_a0,
        datab => u0_m0_wo0_mtree_mult1_69_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_69_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_69_s1
    );
    u0_m0_wo0_mtree_mult1_69_q <= u0_m0_wo0_mtree_mult1_69_s1;

    -- u0_m0_wo0_wi0_r0_join13(BITJOIN,42)@15
    u0_m0_wo0_wi0_r0_join13_q <= u0_m0_wo0_wi0_r0_split13_c & u0_m0_wo0_wi0_r0_split13_b & u0_m0_wo0_wi0_r0_split10_d;

    -- u0_m0_wo0_wi0_r0_memr13(DUALMEM,44)@15
    u0_m0_wo0_wi0_r0_memr13_ia <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_join13_q);
    u0_m0_wo0_wi0_r0_memr13_aa <= u0_m0_wo0_wi0_r0_wa81_q;
    u0_m0_wo0_wi0_r0_memr13_ab <= u0_m0_wo0_wi0_r0_ra81_resize_b;
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
        wren_a => u0_m0_wo0_wi0_r0_we81_seq_q(0),
        address_b => u0_m0_wo0_wi0_r0_memr13_ab,
        q_b => u0_m0_wo0_wi0_r0_memr13_iq
    );
    u0_m0_wo0_wi0_r0_memr13_q <= u0_m0_wo0_wi0_r0_memr13_iq(35 downto 0);

    -- u0_m0_wo0_wi0_r0_split13(BITSELECT,43)@15
    u0_m0_wo0_wi0_r0_split13_b <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr13_q(11 downto 0));
    u0_m0_wo0_wi0_r0_split13_c <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr13_q(23 downto 12));
    u0_m0_wo0_wi0_r0_split13_d <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr13_q(35 downto 24));

    -- d_u0_m0_wo0_wi0_r0_split13_b_16(DELAY,480)@15 + 1
    d_u0_m0_wo0_wi0_r0_split13_b_16 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_split13_b, xout => d_u0_m0_wo0_wi0_r0_split13_b_16_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_cm13_lutmem(DUALMEM,396)@14 + 2
    u0_m0_wo0_cm13_lutmem_aa <= d_u0_m0_wo0_ca81_q_14_q;
    u0_m0_wo0_cm13_lutmem_reset0 <= areset;
    u0_m0_wo0_cm13_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 13,
        widthad_a => 8,
        numwords_a => 200,
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
    u0_m0_wo0_cm13_lutmem_r <= u0_m0_wo0_cm13_lutmem_ir(12 downto 0);

    -- u0_m0_wo0_mtree_mult1_68(MULT,210)@16 + 2
    u0_m0_wo0_mtree_mult1_68_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm13_lutmem_r);
    u0_m0_wo0_mtree_mult1_68_b0 <= STD_LOGIC_VECTOR(d_u0_m0_wo0_wi0_r0_split13_b_16_q);
    u0_m0_wo0_mtree_mult1_68_reset <= areset;
    u0_m0_wo0_mtree_mult1_68_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 13,
        lpm_widthb => 12,
        lpm_widthp => 25,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_68_a0,
        datab => u0_m0_wo0_mtree_mult1_68_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_68_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_68_s1
    );
    u0_m0_wo0_mtree_mult1_68_q <= u0_m0_wo0_mtree_mult1_68_s1;

    -- u0_m0_wo0_mtree_add0_34(ADD,313)@18 + 1
    u0_m0_wo0_mtree_add0_34_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 25 => u0_m0_wo0_mtree_mult1_68_q(24)) & u0_m0_wo0_mtree_mult1_68_q));
    u0_m0_wo0_mtree_add0_34_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 25 => u0_m0_wo0_mtree_mult1_69_q(24)) & u0_m0_wo0_mtree_mult1_69_q));
    u0_m0_wo0_mtree_add0_34_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_34_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_34_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_34_a) + SIGNED(u0_m0_wo0_mtree_add0_34_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_34_q <= u0_m0_wo0_mtree_add0_34_o(25 downto 0);

    -- u0_m0_wo0_mtree_add1_17(ADD,337)@19 + 1
    u0_m0_wo0_mtree_add1_17_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((26 downto 26 => u0_m0_wo0_mtree_add0_34_q(25)) & u0_m0_wo0_mtree_add0_34_q));
    u0_m0_wo0_mtree_add1_17_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((26 downto 26 => u0_m0_wo0_mtree_add0_35_q(25)) & u0_m0_wo0_mtree_add0_35_q));
    u0_m0_wo0_mtree_add1_17_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_17_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_17_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_17_a) + SIGNED(u0_m0_wo0_mtree_add1_17_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_17_q <= u0_m0_wo0_mtree_add1_17_o(26 downto 0);

    -- d_u0_m0_wo0_wi0_r0_split13_c_16(DELAY,481)@15 + 1
    d_u0_m0_wo0_wi0_r0_split13_c_16 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_split13_c, xout => d_u0_m0_wo0_wi0_r0_split13_c_16_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_cm14_lutmem(DUALMEM,397)@14 + 2
    u0_m0_wo0_cm14_lutmem_aa <= d_u0_m0_wo0_ca81_q_14_q;
    u0_m0_wo0_cm14_lutmem_reset0 <= areset;
    u0_m0_wo0_cm14_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 13,
        widthad_a => 8,
        numwords_a => 200,
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
    u0_m0_wo0_cm14_lutmem_r <= u0_m0_wo0_cm14_lutmem_ir(12 downto 0);

    -- u0_m0_wo0_mtree_mult1_67(MULT,211)@16 + 2
    u0_m0_wo0_mtree_mult1_67_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm14_lutmem_r);
    u0_m0_wo0_mtree_mult1_67_b0 <= STD_LOGIC_VECTOR(d_u0_m0_wo0_wi0_r0_split13_c_16_q);
    u0_m0_wo0_mtree_mult1_67_reset <= areset;
    u0_m0_wo0_mtree_mult1_67_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 13,
        lpm_widthb => 12,
        lpm_widthp => 25,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 2
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_67_a0,
        datab => u0_m0_wo0_mtree_mult1_67_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_67_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_67_s1
    );
    u0_m0_wo0_mtree_mult1_67_q <= u0_m0_wo0_mtree_mult1_67_s1;

    -- d_u0_m0_wo0_wi0_r0_split13_d_16(DELAY,482)@15 + 1
    d_u0_m0_wo0_wi0_r0_split13_d_16 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_split13_d, xout => d_u0_m0_wo0_wi0_r0_split13_d_16_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_cm15_lutmem(DUALMEM,398)@14 + 2
    u0_m0_wo0_cm15_lutmem_aa <= d_u0_m0_wo0_ca81_q_14_q;
    u0_m0_wo0_cm15_lutmem_reset0 <= areset;
    u0_m0_wo0_cm15_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 13,
        widthad_a => 8,
        numwords_a => 200,
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
    u0_m0_wo0_cm15_lutmem_r <= u0_m0_wo0_cm15_lutmem_ir(12 downto 0);

    -- u0_m0_wo0_mtree_mult1_66(MULT,212)@16 + 2
    u0_m0_wo0_mtree_mult1_66_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm15_lutmem_r);
    u0_m0_wo0_mtree_mult1_66_b0 <= STD_LOGIC_VECTOR(d_u0_m0_wo0_wi0_r0_split13_d_16_q);
    u0_m0_wo0_mtree_mult1_66_reset <= areset;
    u0_m0_wo0_mtree_mult1_66_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 13,
        lpm_widthb => 12,
        lpm_widthp => 25,
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

    -- u0_m0_wo0_mtree_add0_33(ADD,312)@18 + 1
    u0_m0_wo0_mtree_add0_33_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 25 => u0_m0_wo0_mtree_mult1_66_q(24)) & u0_m0_wo0_mtree_mult1_66_q));
    u0_m0_wo0_mtree_add0_33_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 25 => u0_m0_wo0_mtree_mult1_67_q(24)) & u0_m0_wo0_mtree_mult1_67_q));
    u0_m0_wo0_mtree_add0_33_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_33_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_33_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_33_a) + SIGNED(u0_m0_wo0_mtree_add0_33_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_33_q <= u0_m0_wo0_mtree_add0_33_o(25 downto 0);

    -- u0_m0_wo0_wi0_r0_join16(BITJOIN,45)@15
    u0_m0_wo0_wi0_r0_join16_q <= u0_m0_wo0_wi0_r0_split16_c & u0_m0_wo0_wi0_r0_split16_b & u0_m0_wo0_wi0_r0_split13_d;

    -- u0_m0_wo0_wi0_r0_memr16(DUALMEM,47)@15
    u0_m0_wo0_wi0_r0_memr16_ia <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_join16_q);
    u0_m0_wo0_wi0_r0_memr16_aa <= u0_m0_wo0_wi0_r0_wa81_q;
    u0_m0_wo0_wi0_r0_memr16_ab <= u0_m0_wo0_wi0_r0_ra81_resize_b;
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
        wren_a => u0_m0_wo0_wi0_r0_we81_seq_q(0),
        address_b => u0_m0_wo0_wi0_r0_memr16_ab,
        q_b => u0_m0_wo0_wi0_r0_memr16_iq
    );
    u0_m0_wo0_wi0_r0_memr16_q <= u0_m0_wo0_wi0_r0_memr16_iq(35 downto 0);

    -- u0_m0_wo0_wi0_r0_split16(BITSELECT,46)@15
    u0_m0_wo0_wi0_r0_split16_b <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr16_q(11 downto 0));
    u0_m0_wo0_wi0_r0_split16_c <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr16_q(23 downto 12));
    u0_m0_wo0_wi0_r0_split16_d <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr16_q(35 downto 24));

    -- d_u0_m0_wo0_wi0_r0_split16_b_16(DELAY,483)@15 + 1
    d_u0_m0_wo0_wi0_r0_split16_b_16 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_split16_b, xout => d_u0_m0_wo0_wi0_r0_split16_b_16_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_cm16_lutmem(DUALMEM,399)@14 + 2
    u0_m0_wo0_cm16_lutmem_aa <= d_u0_m0_wo0_ca81_q_14_q;
    u0_m0_wo0_cm16_lutmem_reset0 <= areset;
    u0_m0_wo0_cm16_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 13,
        widthad_a => 8,
        numwords_a => 200,
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
    u0_m0_wo0_cm16_lutmem_r <= u0_m0_wo0_cm16_lutmem_ir(12 downto 0);

    -- u0_m0_wo0_mtree_mult1_65(MULT,213)@16 + 2
    u0_m0_wo0_mtree_mult1_65_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm16_lutmem_r);
    u0_m0_wo0_mtree_mult1_65_b0 <= STD_LOGIC_VECTOR(d_u0_m0_wo0_wi0_r0_split16_b_16_q);
    u0_m0_wo0_mtree_mult1_65_reset <= areset;
    u0_m0_wo0_mtree_mult1_65_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 13,
        lpm_widthb => 12,
        lpm_widthp => 25,
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

    -- d_u0_m0_wo0_wi0_r0_split16_c_16(DELAY,484)@15 + 1
    d_u0_m0_wo0_wi0_r0_split16_c_16 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_split16_c, xout => d_u0_m0_wo0_wi0_r0_split16_c_16_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_cm17_lutmem(DUALMEM,400)@14 + 2
    u0_m0_wo0_cm17_lutmem_aa <= d_u0_m0_wo0_ca81_q_14_q;
    u0_m0_wo0_cm17_lutmem_reset0 <= areset;
    u0_m0_wo0_cm17_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 13,
        widthad_a => 8,
        numwords_a => 200,
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
    u0_m0_wo0_cm17_lutmem_r <= u0_m0_wo0_cm17_lutmem_ir(12 downto 0);

    -- u0_m0_wo0_mtree_mult1_64(MULT,214)@16 + 2
    u0_m0_wo0_mtree_mult1_64_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm17_lutmem_r);
    u0_m0_wo0_mtree_mult1_64_b0 <= STD_LOGIC_VECTOR(d_u0_m0_wo0_wi0_r0_split16_c_16_q);
    u0_m0_wo0_mtree_mult1_64_reset <= areset;
    u0_m0_wo0_mtree_mult1_64_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 13,
        lpm_widthb => 12,
        lpm_widthp => 25,
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

    -- u0_m0_wo0_mtree_add0_32(ADD,311)@18 + 1
    u0_m0_wo0_mtree_add0_32_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 25 => u0_m0_wo0_mtree_mult1_64_q(24)) & u0_m0_wo0_mtree_mult1_64_q));
    u0_m0_wo0_mtree_add0_32_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 25 => u0_m0_wo0_mtree_mult1_65_q(24)) & u0_m0_wo0_mtree_mult1_65_q));
    u0_m0_wo0_mtree_add0_32_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_32_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_32_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_32_a) + SIGNED(u0_m0_wo0_mtree_add0_32_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_32_q <= u0_m0_wo0_mtree_add0_32_o(25 downto 0);

    -- u0_m0_wo0_mtree_add1_16(ADD,336)@19 + 1
    u0_m0_wo0_mtree_add1_16_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((26 downto 26 => u0_m0_wo0_mtree_add0_32_q(25)) & u0_m0_wo0_mtree_add0_32_q));
    u0_m0_wo0_mtree_add1_16_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((26 downto 26 => u0_m0_wo0_mtree_add0_33_q(25)) & u0_m0_wo0_mtree_add0_33_q));
    u0_m0_wo0_mtree_add1_16_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_16_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_16_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_16_a) + SIGNED(u0_m0_wo0_mtree_add1_16_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_16_q <= u0_m0_wo0_mtree_add1_16_o(26 downto 0);

    -- u0_m0_wo0_mtree_add2_8(ADD,348)@20 + 1
    u0_m0_wo0_mtree_add2_8_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((27 downto 27 => u0_m0_wo0_mtree_add1_16_q(26)) & u0_m0_wo0_mtree_add1_16_q));
    u0_m0_wo0_mtree_add2_8_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((27 downto 27 => u0_m0_wo0_mtree_add1_17_q(26)) & u0_m0_wo0_mtree_add1_17_q));
    u0_m0_wo0_mtree_add2_8_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add2_8_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add2_8_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add2_8_a) + SIGNED(u0_m0_wo0_mtree_add2_8_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add2_8_q <= u0_m0_wo0_mtree_add2_8_o(27 downto 0);

    -- u0_m0_wo0_mtree_add3_4(ADD,354)@21 + 1
    u0_m0_wo0_mtree_add3_4_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((28 downto 28 => u0_m0_wo0_mtree_add2_8_q(27)) & u0_m0_wo0_mtree_add2_8_q));
    u0_m0_wo0_mtree_add3_4_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((28 downto 28 => u0_m0_wo0_mtree_add2_9_q(27)) & u0_m0_wo0_mtree_add2_9_q));
    u0_m0_wo0_mtree_add3_4_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add3_4_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add3_4_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add3_4_a) + SIGNED(u0_m0_wo0_mtree_add3_4_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add3_4_q <= u0_m0_wo0_mtree_add3_4_o(28 downto 0);

    -- u0_m0_wo0_mtree_add4_2(ADD,357)@22 + 1
    u0_m0_wo0_mtree_add4_2_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((29 downto 29 => u0_m0_wo0_mtree_add3_4_q(28)) & u0_m0_wo0_mtree_add3_4_q));
    u0_m0_wo0_mtree_add4_2_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((29 downto 25 => u0_m0_wo0_mtree_mult1_80_q(24)) & u0_m0_wo0_mtree_mult1_80_q));
    u0_m0_wo0_mtree_add4_2_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add4_2_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add4_2_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add4_2_a) + SIGNED(u0_m0_wo0_mtree_add4_2_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add4_2_q <= u0_m0_wo0_mtree_add4_2_o(29 downto 0);

    -- u0_m0_wo0_cm18_lutmem(DUALMEM,401)@13 + 2
    u0_m0_wo0_cm18_lutmem_aa <= u0_m0_wo0_ca81_q;
    u0_m0_wo0_cm18_lutmem_reset0 <= areset;
    u0_m0_wo0_cm18_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 13,
        widthad_a => 8,
        numwords_a => 200,
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
    u0_m0_wo0_cm18_lutmem_r <= u0_m0_wo0_cm18_lutmem_ir(12 downto 0);

    -- u0_m0_wo0_mtree_mult1_63(MULT,215)@15 + 2
    u0_m0_wo0_mtree_mult1_63_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm18_lutmem_r);
    u0_m0_wo0_mtree_mult1_63_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split16_d);
    u0_m0_wo0_mtree_mult1_63_reset <= areset;
    u0_m0_wo0_mtree_mult1_63_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 13,
        lpm_widthb => 12,
        lpm_widthp => 25,
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

    -- u0_m0_wo0_wi0_r0_join19(BITJOIN,48)@15
    u0_m0_wo0_wi0_r0_join19_q <= u0_m0_wo0_wi0_r0_split19_c & u0_m0_wo0_wi0_r0_split19_b & u0_m0_wo0_wi0_r0_split16_d;

    -- u0_m0_wo0_wi0_r0_memr19(DUALMEM,50)@15
    u0_m0_wo0_wi0_r0_memr19_ia <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_join19_q);
    u0_m0_wo0_wi0_r0_memr19_aa <= u0_m0_wo0_wi0_r0_wa81_q;
    u0_m0_wo0_wi0_r0_memr19_ab <= u0_m0_wo0_wi0_r0_ra81_resize_b;
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
        wren_a => u0_m0_wo0_wi0_r0_we81_seq_q(0),
        address_b => u0_m0_wo0_wi0_r0_memr19_ab,
        q_b => u0_m0_wo0_wi0_r0_memr19_iq
    );
    u0_m0_wo0_wi0_r0_memr19_q <= u0_m0_wo0_wi0_r0_memr19_iq(35 downto 0);

    -- u0_m0_wo0_wi0_r0_split19(BITSELECT,49)@15
    u0_m0_wo0_wi0_r0_split19_b <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr19_q(11 downto 0));
    u0_m0_wo0_wi0_r0_split19_c <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr19_q(23 downto 12));
    u0_m0_wo0_wi0_r0_split19_d <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr19_q(35 downto 24));

    -- u0_m0_wo0_cm19_lutmem(DUALMEM,402)@13 + 2
    u0_m0_wo0_cm19_lutmem_aa <= u0_m0_wo0_ca81_q;
    u0_m0_wo0_cm19_lutmem_reset0 <= areset;
    u0_m0_wo0_cm19_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 13,
        widthad_a => 8,
        numwords_a => 200,
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
    u0_m0_wo0_cm19_lutmem_r <= u0_m0_wo0_cm19_lutmem_ir(12 downto 0);

    -- u0_m0_wo0_mtree_mult1_62(MULT,216)@15 + 2
    u0_m0_wo0_mtree_mult1_62_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm19_lutmem_r);
    u0_m0_wo0_mtree_mult1_62_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split19_b);
    u0_m0_wo0_mtree_mult1_62_reset <= areset;
    u0_m0_wo0_mtree_mult1_62_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 13,
        lpm_widthb => 12,
        lpm_widthp => 25,
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

    -- u0_m0_wo0_mtree_add0_31(ADD,310)@17 + 1
    u0_m0_wo0_mtree_add0_31_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 25 => u0_m0_wo0_mtree_mult1_62_q(24)) & u0_m0_wo0_mtree_mult1_62_q));
    u0_m0_wo0_mtree_add0_31_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 25 => u0_m0_wo0_mtree_mult1_63_q(24)) & u0_m0_wo0_mtree_mult1_63_q));
    u0_m0_wo0_mtree_add0_31_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_31_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_31_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_31_a) + SIGNED(u0_m0_wo0_mtree_add0_31_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_31_q <= u0_m0_wo0_mtree_add0_31_o(25 downto 0);

    -- u0_m0_wo0_cm20_lutmem(DUALMEM,403)@13 + 2
    u0_m0_wo0_cm20_lutmem_aa <= u0_m0_wo0_ca81_q;
    u0_m0_wo0_cm20_lutmem_reset0 <= areset;
    u0_m0_wo0_cm20_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 13,
        widthad_a => 8,
        numwords_a => 200,
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
    u0_m0_wo0_cm20_lutmem_r <= u0_m0_wo0_cm20_lutmem_ir(12 downto 0);

    -- u0_m0_wo0_mtree_mult1_61(MULT,217)@15 + 2
    u0_m0_wo0_mtree_mult1_61_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm20_lutmem_r);
    u0_m0_wo0_mtree_mult1_61_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split19_c);
    u0_m0_wo0_mtree_mult1_61_reset <= areset;
    u0_m0_wo0_mtree_mult1_61_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 13,
        lpm_widthb => 12,
        lpm_widthp => 25,
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

    -- u0_m0_wo0_cm21_lutmem(DUALMEM,404)@13 + 2
    u0_m0_wo0_cm21_lutmem_aa <= u0_m0_wo0_ca81_q;
    u0_m0_wo0_cm21_lutmem_reset0 <= areset;
    u0_m0_wo0_cm21_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 13,
        widthad_a => 8,
        numwords_a => 200,
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
    u0_m0_wo0_cm21_lutmem_r <= u0_m0_wo0_cm21_lutmem_ir(12 downto 0);

    -- u0_m0_wo0_mtree_mult1_60(MULT,218)@15 + 2
    u0_m0_wo0_mtree_mult1_60_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm21_lutmem_r);
    u0_m0_wo0_mtree_mult1_60_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split19_d);
    u0_m0_wo0_mtree_mult1_60_reset <= areset;
    u0_m0_wo0_mtree_mult1_60_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 13,
        lpm_widthb => 12,
        lpm_widthp => 25,
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

    -- u0_m0_wo0_mtree_add0_30(ADD,309)@17 + 1
    u0_m0_wo0_mtree_add0_30_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 25 => u0_m0_wo0_mtree_mult1_60_q(24)) & u0_m0_wo0_mtree_mult1_60_q));
    u0_m0_wo0_mtree_add0_30_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 25 => u0_m0_wo0_mtree_mult1_61_q(24)) & u0_m0_wo0_mtree_mult1_61_q));
    u0_m0_wo0_mtree_add0_30_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_30_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_30_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_30_a) + SIGNED(u0_m0_wo0_mtree_add0_30_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_30_q <= u0_m0_wo0_mtree_add0_30_o(25 downto 0);

    -- u0_m0_wo0_mtree_add1_15(ADD,335)@18 + 1
    u0_m0_wo0_mtree_add1_15_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((26 downto 26 => u0_m0_wo0_mtree_add0_30_q(25)) & u0_m0_wo0_mtree_add0_30_q));
    u0_m0_wo0_mtree_add1_15_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((26 downto 26 => u0_m0_wo0_mtree_add0_31_q(25)) & u0_m0_wo0_mtree_add0_31_q));
    u0_m0_wo0_mtree_add1_15_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_15_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_15_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_15_a) + SIGNED(u0_m0_wo0_mtree_add1_15_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_15_q <= u0_m0_wo0_mtree_add1_15_o(26 downto 0);

    -- u0_m0_wo0_wi0_r0_join22(BITJOIN,51)@15
    u0_m0_wo0_wi0_r0_join22_q <= u0_m0_wo0_wi0_r0_split22_c & u0_m0_wo0_wi0_r0_split22_b & u0_m0_wo0_wi0_r0_split19_d;

    -- u0_m0_wo0_wi0_r0_memr22(DUALMEM,53)@15
    u0_m0_wo0_wi0_r0_memr22_ia <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_join22_q);
    u0_m0_wo0_wi0_r0_memr22_aa <= u0_m0_wo0_wi0_r0_wa81_q;
    u0_m0_wo0_wi0_r0_memr22_ab <= u0_m0_wo0_wi0_r0_ra81_resize_b;
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
        wren_a => u0_m0_wo0_wi0_r0_we81_seq_q(0),
        address_b => u0_m0_wo0_wi0_r0_memr22_ab,
        q_b => u0_m0_wo0_wi0_r0_memr22_iq
    );
    u0_m0_wo0_wi0_r0_memr22_q <= u0_m0_wo0_wi0_r0_memr22_iq(35 downto 0);

    -- u0_m0_wo0_wi0_r0_split22(BITSELECT,52)@15
    u0_m0_wo0_wi0_r0_split22_b <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr22_q(11 downto 0));
    u0_m0_wo0_wi0_r0_split22_c <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr22_q(23 downto 12));
    u0_m0_wo0_wi0_r0_split22_d <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr22_q(35 downto 24));

    -- u0_m0_wo0_cm22_lutmem(DUALMEM,405)@13 + 2
    u0_m0_wo0_cm22_lutmem_aa <= u0_m0_wo0_ca81_q;
    u0_m0_wo0_cm22_lutmem_reset0 <= areset;
    u0_m0_wo0_cm22_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 13,
        widthad_a => 8,
        numwords_a => 200,
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
    u0_m0_wo0_cm22_lutmem_r <= u0_m0_wo0_cm22_lutmem_ir(12 downto 0);

    -- u0_m0_wo0_mtree_mult1_59(MULT,219)@15 + 2
    u0_m0_wo0_mtree_mult1_59_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm22_lutmem_r);
    u0_m0_wo0_mtree_mult1_59_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split22_b);
    u0_m0_wo0_mtree_mult1_59_reset <= areset;
    u0_m0_wo0_mtree_mult1_59_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 13,
        lpm_widthb => 12,
        lpm_widthp => 25,
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

    -- u0_m0_wo0_cm23_lutmem(DUALMEM,406)@13 + 2
    u0_m0_wo0_cm23_lutmem_aa <= u0_m0_wo0_ca81_q;
    u0_m0_wo0_cm23_lutmem_reset0 <= areset;
    u0_m0_wo0_cm23_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 13,
        widthad_a => 8,
        numwords_a => 200,
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
    u0_m0_wo0_cm23_lutmem_r <= u0_m0_wo0_cm23_lutmem_ir(12 downto 0);

    -- u0_m0_wo0_mtree_mult1_58(MULT,220)@15 + 2
    u0_m0_wo0_mtree_mult1_58_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm23_lutmem_r);
    u0_m0_wo0_mtree_mult1_58_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split22_c);
    u0_m0_wo0_mtree_mult1_58_reset <= areset;
    u0_m0_wo0_mtree_mult1_58_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 13,
        lpm_widthb => 12,
        lpm_widthp => 25,
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

    -- u0_m0_wo0_mtree_add0_29(ADD,308)@17 + 1
    u0_m0_wo0_mtree_add0_29_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 25 => u0_m0_wo0_mtree_mult1_58_q(24)) & u0_m0_wo0_mtree_mult1_58_q));
    u0_m0_wo0_mtree_add0_29_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 25 => u0_m0_wo0_mtree_mult1_59_q(24)) & u0_m0_wo0_mtree_mult1_59_q));
    u0_m0_wo0_mtree_add0_29_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_29_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_29_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_29_a) + SIGNED(u0_m0_wo0_mtree_add0_29_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_29_q <= u0_m0_wo0_mtree_add0_29_o(25 downto 0);

    -- u0_m0_wo0_cm24_lutmem(DUALMEM,407)@13 + 2
    u0_m0_wo0_cm24_lutmem_aa <= u0_m0_wo0_ca81_q;
    u0_m0_wo0_cm24_lutmem_reset0 <= areset;
    u0_m0_wo0_cm24_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 13,
        widthad_a => 8,
        numwords_a => 200,
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
    u0_m0_wo0_cm24_lutmem_r <= u0_m0_wo0_cm24_lutmem_ir(12 downto 0);

    -- u0_m0_wo0_mtree_mult1_57(MULT,221)@15 + 2
    u0_m0_wo0_mtree_mult1_57_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm24_lutmem_r);
    u0_m0_wo0_mtree_mult1_57_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split22_d);
    u0_m0_wo0_mtree_mult1_57_reset <= areset;
    u0_m0_wo0_mtree_mult1_57_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 13,
        lpm_widthb => 12,
        lpm_widthp => 25,
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

    -- u0_m0_wo0_wi0_r0_join25(BITJOIN,54)@15
    u0_m0_wo0_wi0_r0_join25_q <= u0_m0_wo0_wi0_r0_split25_c & u0_m0_wo0_wi0_r0_split25_b & u0_m0_wo0_wi0_r0_split22_d;

    -- u0_m0_wo0_wi0_r0_memr25(DUALMEM,56)@15
    u0_m0_wo0_wi0_r0_memr25_ia <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_join25_q);
    u0_m0_wo0_wi0_r0_memr25_aa <= u0_m0_wo0_wi0_r0_wa81_q;
    u0_m0_wo0_wi0_r0_memr25_ab <= u0_m0_wo0_wi0_r0_ra81_resize_b;
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
        wren_a => u0_m0_wo0_wi0_r0_we81_seq_q(0),
        address_b => u0_m0_wo0_wi0_r0_memr25_ab,
        q_b => u0_m0_wo0_wi0_r0_memr25_iq
    );
    u0_m0_wo0_wi0_r0_memr25_q <= u0_m0_wo0_wi0_r0_memr25_iq(35 downto 0);

    -- u0_m0_wo0_wi0_r0_split25(BITSELECT,55)@15
    u0_m0_wo0_wi0_r0_split25_b <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr25_q(11 downto 0));
    u0_m0_wo0_wi0_r0_split25_c <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr25_q(23 downto 12));
    u0_m0_wo0_wi0_r0_split25_d <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr25_q(35 downto 24));

    -- u0_m0_wo0_cm25_lutmem(DUALMEM,408)@13 + 2
    u0_m0_wo0_cm25_lutmem_aa <= u0_m0_wo0_ca81_q;
    u0_m0_wo0_cm25_lutmem_reset0 <= areset;
    u0_m0_wo0_cm25_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 13,
        widthad_a => 8,
        numwords_a => 200,
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
    u0_m0_wo0_cm25_lutmem_r <= u0_m0_wo0_cm25_lutmem_ir(12 downto 0);

    -- u0_m0_wo0_mtree_mult1_56(MULT,222)@15 + 2
    u0_m0_wo0_mtree_mult1_56_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm25_lutmem_r);
    u0_m0_wo0_mtree_mult1_56_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split25_b);
    u0_m0_wo0_mtree_mult1_56_reset <= areset;
    u0_m0_wo0_mtree_mult1_56_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 13,
        lpm_widthb => 12,
        lpm_widthp => 25,
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

    -- u0_m0_wo0_mtree_add0_28(ADD,307)@17 + 1
    u0_m0_wo0_mtree_add0_28_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 25 => u0_m0_wo0_mtree_mult1_56_q(24)) & u0_m0_wo0_mtree_mult1_56_q));
    u0_m0_wo0_mtree_add0_28_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 25 => u0_m0_wo0_mtree_mult1_57_q(24)) & u0_m0_wo0_mtree_mult1_57_q));
    u0_m0_wo0_mtree_add0_28_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_28_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_28_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_28_a) + SIGNED(u0_m0_wo0_mtree_add0_28_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_28_q <= u0_m0_wo0_mtree_add0_28_o(25 downto 0);

    -- u0_m0_wo0_mtree_add1_14(ADD,334)@18 + 1
    u0_m0_wo0_mtree_add1_14_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((26 downto 26 => u0_m0_wo0_mtree_add0_28_q(25)) & u0_m0_wo0_mtree_add0_28_q));
    u0_m0_wo0_mtree_add1_14_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((26 downto 26 => u0_m0_wo0_mtree_add0_29_q(25)) & u0_m0_wo0_mtree_add0_29_q));
    u0_m0_wo0_mtree_add1_14_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_14_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_14_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_14_a) + SIGNED(u0_m0_wo0_mtree_add1_14_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_14_q <= u0_m0_wo0_mtree_add1_14_o(26 downto 0);

    -- u0_m0_wo0_mtree_add2_7(ADD,347)@19 + 1
    u0_m0_wo0_mtree_add2_7_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((27 downto 27 => u0_m0_wo0_mtree_add1_14_q(26)) & u0_m0_wo0_mtree_add1_14_q));
    u0_m0_wo0_mtree_add2_7_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((27 downto 27 => u0_m0_wo0_mtree_add1_15_q(26)) & u0_m0_wo0_mtree_add1_15_q));
    u0_m0_wo0_mtree_add2_7_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add2_7_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add2_7_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add2_7_a) + SIGNED(u0_m0_wo0_mtree_add2_7_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add2_7_q <= u0_m0_wo0_mtree_add2_7_o(27 downto 0);

    -- u0_m0_wo0_cm26_lutmem(DUALMEM,409)@13 + 2
    u0_m0_wo0_cm26_lutmem_aa <= u0_m0_wo0_ca81_q;
    u0_m0_wo0_cm26_lutmem_reset0 <= areset;
    u0_m0_wo0_cm26_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 13,
        widthad_a => 8,
        numwords_a => 200,
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
    u0_m0_wo0_cm26_lutmem_r <= u0_m0_wo0_cm26_lutmem_ir(12 downto 0);

    -- u0_m0_wo0_mtree_mult1_55(MULT,223)@15 + 2
    u0_m0_wo0_mtree_mult1_55_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm26_lutmem_r);
    u0_m0_wo0_mtree_mult1_55_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split25_c);
    u0_m0_wo0_mtree_mult1_55_reset <= areset;
    u0_m0_wo0_mtree_mult1_55_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 13,
        lpm_widthb => 12,
        lpm_widthp => 25,
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

    -- u0_m0_wo0_cm27_lutmem(DUALMEM,410)@13 + 2
    u0_m0_wo0_cm27_lutmem_aa <= u0_m0_wo0_ca81_q;
    u0_m0_wo0_cm27_lutmem_reset0 <= areset;
    u0_m0_wo0_cm27_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 13,
        widthad_a => 8,
        numwords_a => 200,
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
    u0_m0_wo0_cm27_lutmem_r <= u0_m0_wo0_cm27_lutmem_ir(12 downto 0);

    -- u0_m0_wo0_mtree_mult1_54(MULT,224)@15 + 2
    u0_m0_wo0_mtree_mult1_54_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm27_lutmem_r);
    u0_m0_wo0_mtree_mult1_54_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split25_d);
    u0_m0_wo0_mtree_mult1_54_reset <= areset;
    u0_m0_wo0_mtree_mult1_54_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 13,
        lpm_widthb => 12,
        lpm_widthp => 25,
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

    -- u0_m0_wo0_mtree_add0_27(ADD,306)@17 + 1
    u0_m0_wo0_mtree_add0_27_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 25 => u0_m0_wo0_mtree_mult1_54_q(24)) & u0_m0_wo0_mtree_mult1_54_q));
    u0_m0_wo0_mtree_add0_27_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 25 => u0_m0_wo0_mtree_mult1_55_q(24)) & u0_m0_wo0_mtree_mult1_55_q));
    u0_m0_wo0_mtree_add0_27_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_27_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_27_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_27_a) + SIGNED(u0_m0_wo0_mtree_add0_27_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_27_q <= u0_m0_wo0_mtree_add0_27_o(25 downto 0);

    -- u0_m0_wo0_wi0_r0_join28(BITJOIN,57)@15
    u0_m0_wo0_wi0_r0_join28_q <= u0_m0_wo0_wi0_r0_split28_c & u0_m0_wo0_wi0_r0_split28_b & u0_m0_wo0_wi0_r0_split25_d;

    -- u0_m0_wo0_wi0_r0_memr28(DUALMEM,59)@15
    u0_m0_wo0_wi0_r0_memr28_ia <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_join28_q);
    u0_m0_wo0_wi0_r0_memr28_aa <= u0_m0_wo0_wi0_r0_wa81_q;
    u0_m0_wo0_wi0_r0_memr28_ab <= u0_m0_wo0_wi0_r0_ra81_resize_b;
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
        wren_a => u0_m0_wo0_wi0_r0_we81_seq_q(0),
        address_b => u0_m0_wo0_wi0_r0_memr28_ab,
        q_b => u0_m0_wo0_wi0_r0_memr28_iq
    );
    u0_m0_wo0_wi0_r0_memr28_q <= u0_m0_wo0_wi0_r0_memr28_iq(35 downto 0);

    -- u0_m0_wo0_wi0_r0_split28(BITSELECT,58)@15
    u0_m0_wo0_wi0_r0_split28_b <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr28_q(11 downto 0));
    u0_m0_wo0_wi0_r0_split28_c <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr28_q(23 downto 12));
    u0_m0_wo0_wi0_r0_split28_d <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr28_q(35 downto 24));

    -- u0_m0_wo0_cm28_lutmem(DUALMEM,411)@13 + 2
    u0_m0_wo0_cm28_lutmem_aa <= u0_m0_wo0_ca81_q;
    u0_m0_wo0_cm28_lutmem_reset0 <= areset;
    u0_m0_wo0_cm28_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 13,
        widthad_a => 8,
        numwords_a => 200,
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
    u0_m0_wo0_cm28_lutmem_r <= u0_m0_wo0_cm28_lutmem_ir(12 downto 0);

    -- u0_m0_wo0_mtree_mult1_53(MULT,225)@15 + 2
    u0_m0_wo0_mtree_mult1_53_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm28_lutmem_r);
    u0_m0_wo0_mtree_mult1_53_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split28_b);
    u0_m0_wo0_mtree_mult1_53_reset <= areset;
    u0_m0_wo0_mtree_mult1_53_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 13,
        lpm_widthb => 12,
        lpm_widthp => 25,
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

    -- u0_m0_wo0_cm29_lutmem(DUALMEM,412)@13 + 2
    u0_m0_wo0_cm29_lutmem_aa <= u0_m0_wo0_ca81_q;
    u0_m0_wo0_cm29_lutmem_reset0 <= areset;
    u0_m0_wo0_cm29_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 13,
        widthad_a => 8,
        numwords_a => 200,
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
    u0_m0_wo0_cm29_lutmem_r <= u0_m0_wo0_cm29_lutmem_ir(12 downto 0);

    -- u0_m0_wo0_mtree_mult1_52(MULT,226)@15 + 2
    u0_m0_wo0_mtree_mult1_52_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm29_lutmem_r);
    u0_m0_wo0_mtree_mult1_52_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split28_c);
    u0_m0_wo0_mtree_mult1_52_reset <= areset;
    u0_m0_wo0_mtree_mult1_52_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 13,
        lpm_widthb => 12,
        lpm_widthp => 25,
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

    -- u0_m0_wo0_mtree_add0_26(ADD,305)@17 + 1
    u0_m0_wo0_mtree_add0_26_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 25 => u0_m0_wo0_mtree_mult1_52_q(24)) & u0_m0_wo0_mtree_mult1_52_q));
    u0_m0_wo0_mtree_add0_26_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 25 => u0_m0_wo0_mtree_mult1_53_q(24)) & u0_m0_wo0_mtree_mult1_53_q));
    u0_m0_wo0_mtree_add0_26_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_26_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_26_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_26_a) + SIGNED(u0_m0_wo0_mtree_add0_26_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_26_q <= u0_m0_wo0_mtree_add0_26_o(25 downto 0);

    -- u0_m0_wo0_mtree_add1_13(ADD,333)@18 + 1
    u0_m0_wo0_mtree_add1_13_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((26 downto 26 => u0_m0_wo0_mtree_add0_26_q(25)) & u0_m0_wo0_mtree_add0_26_q));
    u0_m0_wo0_mtree_add1_13_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((26 downto 26 => u0_m0_wo0_mtree_add0_27_q(25)) & u0_m0_wo0_mtree_add0_27_q));
    u0_m0_wo0_mtree_add1_13_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_13_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_13_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_13_a) + SIGNED(u0_m0_wo0_mtree_add1_13_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_13_q <= u0_m0_wo0_mtree_add1_13_o(26 downto 0);

    -- u0_m0_wo0_cm30_lutmem(DUALMEM,413)@13 + 2
    u0_m0_wo0_cm30_lutmem_aa <= u0_m0_wo0_ca81_q;
    u0_m0_wo0_cm30_lutmem_reset0 <= areset;
    u0_m0_wo0_cm30_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 13,
        widthad_a => 8,
        numwords_a => 200,
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
    u0_m0_wo0_cm30_lutmem_r <= u0_m0_wo0_cm30_lutmem_ir(12 downto 0);

    -- u0_m0_wo0_mtree_mult1_51(MULT,227)@15 + 2
    u0_m0_wo0_mtree_mult1_51_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm30_lutmem_r);
    u0_m0_wo0_mtree_mult1_51_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split28_d);
    u0_m0_wo0_mtree_mult1_51_reset <= areset;
    u0_m0_wo0_mtree_mult1_51_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 13,
        lpm_widthb => 12,
        lpm_widthp => 25,
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

    -- u0_m0_wo0_wi0_r0_join31(BITJOIN,60)@15
    u0_m0_wo0_wi0_r0_join31_q <= u0_m0_wo0_wi0_r0_split31_c & u0_m0_wo0_wi0_r0_split31_b & u0_m0_wo0_wi0_r0_split28_d;

    -- u0_m0_wo0_wi0_r0_memr31(DUALMEM,62)@15
    u0_m0_wo0_wi0_r0_memr31_ia <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_join31_q);
    u0_m0_wo0_wi0_r0_memr31_aa <= u0_m0_wo0_wi0_r0_wa81_q;
    u0_m0_wo0_wi0_r0_memr31_ab <= u0_m0_wo0_wi0_r0_ra81_resize_b;
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
        wren_a => u0_m0_wo0_wi0_r0_we81_seq_q(0),
        address_b => u0_m0_wo0_wi0_r0_memr31_ab,
        q_b => u0_m0_wo0_wi0_r0_memr31_iq
    );
    u0_m0_wo0_wi0_r0_memr31_q <= u0_m0_wo0_wi0_r0_memr31_iq(35 downto 0);

    -- u0_m0_wo0_wi0_r0_split31(BITSELECT,61)@15
    u0_m0_wo0_wi0_r0_split31_b <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr31_q(11 downto 0));
    u0_m0_wo0_wi0_r0_split31_c <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr31_q(23 downto 12));
    u0_m0_wo0_wi0_r0_split31_d <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr31_q(35 downto 24));

    -- u0_m0_wo0_cm31_lutmem(DUALMEM,414)@13 + 2
    u0_m0_wo0_cm31_lutmem_aa <= u0_m0_wo0_ca81_q;
    u0_m0_wo0_cm31_lutmem_reset0 <= areset;
    u0_m0_wo0_cm31_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 13,
        widthad_a => 8,
        numwords_a => 200,
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
    u0_m0_wo0_cm31_lutmem_r <= u0_m0_wo0_cm31_lutmem_ir(12 downto 0);

    -- u0_m0_wo0_mtree_mult1_50(MULT,228)@15 + 2
    u0_m0_wo0_mtree_mult1_50_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm31_lutmem_r);
    u0_m0_wo0_mtree_mult1_50_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split31_b);
    u0_m0_wo0_mtree_mult1_50_reset <= areset;
    u0_m0_wo0_mtree_mult1_50_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 13,
        lpm_widthb => 12,
        lpm_widthp => 25,
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

    -- u0_m0_wo0_mtree_add0_25(ADD,304)@17 + 1
    u0_m0_wo0_mtree_add0_25_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 25 => u0_m0_wo0_mtree_mult1_50_q(24)) & u0_m0_wo0_mtree_mult1_50_q));
    u0_m0_wo0_mtree_add0_25_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 25 => u0_m0_wo0_mtree_mult1_51_q(24)) & u0_m0_wo0_mtree_mult1_51_q));
    u0_m0_wo0_mtree_add0_25_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_25_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_25_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_25_a) + SIGNED(u0_m0_wo0_mtree_add0_25_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_25_q <= u0_m0_wo0_mtree_add0_25_o(25 downto 0);

    -- u0_m0_wo0_cm32_lutmem(DUALMEM,415)@13 + 2
    u0_m0_wo0_cm32_lutmem_aa <= u0_m0_wo0_ca81_q;
    u0_m0_wo0_cm32_lutmem_reset0 <= areset;
    u0_m0_wo0_cm32_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 13,
        widthad_a => 8,
        numwords_a => 200,
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
    u0_m0_wo0_cm32_lutmem_r <= u0_m0_wo0_cm32_lutmem_ir(12 downto 0);

    -- u0_m0_wo0_mtree_mult1_49(MULT,229)@15 + 2
    u0_m0_wo0_mtree_mult1_49_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm32_lutmem_r);
    u0_m0_wo0_mtree_mult1_49_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split31_c);
    u0_m0_wo0_mtree_mult1_49_reset <= areset;
    u0_m0_wo0_mtree_mult1_49_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 13,
        lpm_widthb => 12,
        lpm_widthp => 25,
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

    -- u0_m0_wo0_cm33_lutmem(DUALMEM,416)@13 + 2
    u0_m0_wo0_cm33_lutmem_aa <= u0_m0_wo0_ca81_q;
    u0_m0_wo0_cm33_lutmem_reset0 <= areset;
    u0_m0_wo0_cm33_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 13,
        widthad_a => 8,
        numwords_a => 200,
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
    u0_m0_wo0_cm33_lutmem_r <= u0_m0_wo0_cm33_lutmem_ir(12 downto 0);

    -- u0_m0_wo0_mtree_mult1_48(MULT,230)@15 + 2
    u0_m0_wo0_mtree_mult1_48_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm33_lutmem_r);
    u0_m0_wo0_mtree_mult1_48_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split31_d);
    u0_m0_wo0_mtree_mult1_48_reset <= areset;
    u0_m0_wo0_mtree_mult1_48_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 13,
        lpm_widthb => 12,
        lpm_widthp => 25,
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

    -- u0_m0_wo0_mtree_add0_24(ADD,303)@17 + 1
    u0_m0_wo0_mtree_add0_24_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 25 => u0_m0_wo0_mtree_mult1_48_q(24)) & u0_m0_wo0_mtree_mult1_48_q));
    u0_m0_wo0_mtree_add0_24_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 25 => u0_m0_wo0_mtree_mult1_49_q(24)) & u0_m0_wo0_mtree_mult1_49_q));
    u0_m0_wo0_mtree_add0_24_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_24_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_24_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_24_a) + SIGNED(u0_m0_wo0_mtree_add0_24_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_24_q <= u0_m0_wo0_mtree_add0_24_o(25 downto 0);

    -- u0_m0_wo0_mtree_add1_12(ADD,332)@18 + 1
    u0_m0_wo0_mtree_add1_12_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((26 downto 26 => u0_m0_wo0_mtree_add0_24_q(25)) & u0_m0_wo0_mtree_add0_24_q));
    u0_m0_wo0_mtree_add1_12_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((26 downto 26 => u0_m0_wo0_mtree_add0_25_q(25)) & u0_m0_wo0_mtree_add0_25_q));
    u0_m0_wo0_mtree_add1_12_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_12_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_12_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_12_a) + SIGNED(u0_m0_wo0_mtree_add1_12_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_12_q <= u0_m0_wo0_mtree_add1_12_o(26 downto 0);

    -- u0_m0_wo0_mtree_add2_6(ADD,346)@19 + 1
    u0_m0_wo0_mtree_add2_6_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((27 downto 27 => u0_m0_wo0_mtree_add1_12_q(26)) & u0_m0_wo0_mtree_add1_12_q));
    u0_m0_wo0_mtree_add2_6_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((27 downto 27 => u0_m0_wo0_mtree_add1_13_q(26)) & u0_m0_wo0_mtree_add1_13_q));
    u0_m0_wo0_mtree_add2_6_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add2_6_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add2_6_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add2_6_a) + SIGNED(u0_m0_wo0_mtree_add2_6_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add2_6_q <= u0_m0_wo0_mtree_add2_6_o(27 downto 0);

    -- u0_m0_wo0_mtree_add3_3(ADD,353)@20 + 1
    u0_m0_wo0_mtree_add3_3_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((28 downto 28 => u0_m0_wo0_mtree_add2_6_q(27)) & u0_m0_wo0_mtree_add2_6_q));
    u0_m0_wo0_mtree_add3_3_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((28 downto 28 => u0_m0_wo0_mtree_add2_7_q(27)) & u0_m0_wo0_mtree_add2_7_q));
    u0_m0_wo0_mtree_add3_3_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add3_3_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add3_3_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add3_3_a) + SIGNED(u0_m0_wo0_mtree_add3_3_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add3_3_q <= u0_m0_wo0_mtree_add3_3_o(28 downto 0);

    -- u0_m0_wo0_wi0_r0_join34(BITJOIN,63)@15
    u0_m0_wo0_wi0_r0_join34_q <= u0_m0_wo0_wi0_r0_split34_c & u0_m0_wo0_wi0_r0_split34_b & u0_m0_wo0_wi0_r0_split31_d;

    -- u0_m0_wo0_wi0_r0_memr34(DUALMEM,65)@15
    u0_m0_wo0_wi0_r0_memr34_ia <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_join34_q);
    u0_m0_wo0_wi0_r0_memr34_aa <= u0_m0_wo0_wi0_r0_wa81_q;
    u0_m0_wo0_wi0_r0_memr34_ab <= u0_m0_wo0_wi0_r0_ra81_resize_b;
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
        wren_a => u0_m0_wo0_wi0_r0_we81_seq_q(0),
        address_b => u0_m0_wo0_wi0_r0_memr34_ab,
        q_b => u0_m0_wo0_wi0_r0_memr34_iq
    );
    u0_m0_wo0_wi0_r0_memr34_q <= u0_m0_wo0_wi0_r0_memr34_iq(35 downto 0);

    -- u0_m0_wo0_wi0_r0_split34(BITSELECT,64)@15
    u0_m0_wo0_wi0_r0_split34_b <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr34_q(11 downto 0));
    u0_m0_wo0_wi0_r0_split34_c <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr34_q(23 downto 12));
    u0_m0_wo0_wi0_r0_split34_d <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr34_q(35 downto 24));

    -- u0_m0_wo0_cm34_lutmem(DUALMEM,417)@13 + 2
    u0_m0_wo0_cm34_lutmem_aa <= u0_m0_wo0_ca81_q;
    u0_m0_wo0_cm34_lutmem_reset0 <= areset;
    u0_m0_wo0_cm34_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 13,
        widthad_a => 8,
        numwords_a => 200,
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
    u0_m0_wo0_cm34_lutmem_r <= u0_m0_wo0_cm34_lutmem_ir(12 downto 0);

    -- u0_m0_wo0_mtree_mult1_47(MULT,231)@15 + 2
    u0_m0_wo0_mtree_mult1_47_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm34_lutmem_r);
    u0_m0_wo0_mtree_mult1_47_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split34_b);
    u0_m0_wo0_mtree_mult1_47_reset <= areset;
    u0_m0_wo0_mtree_mult1_47_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 13,
        lpm_widthb => 12,
        lpm_widthp => 25,
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

    -- u0_m0_wo0_cm35_lutmem(DUALMEM,418)@13 + 2
    u0_m0_wo0_cm35_lutmem_aa <= u0_m0_wo0_ca81_q;
    u0_m0_wo0_cm35_lutmem_reset0 <= areset;
    u0_m0_wo0_cm35_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 13,
        widthad_a => 8,
        numwords_a => 200,
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
    u0_m0_wo0_cm35_lutmem_r <= u0_m0_wo0_cm35_lutmem_ir(12 downto 0);

    -- u0_m0_wo0_mtree_mult1_46(MULT,232)@15 + 2
    u0_m0_wo0_mtree_mult1_46_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm35_lutmem_r);
    u0_m0_wo0_mtree_mult1_46_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split34_c);
    u0_m0_wo0_mtree_mult1_46_reset <= areset;
    u0_m0_wo0_mtree_mult1_46_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 13,
        lpm_widthb => 12,
        lpm_widthp => 25,
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

    -- u0_m0_wo0_mtree_add0_23(ADD,302)@17 + 1
    u0_m0_wo0_mtree_add0_23_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 25 => u0_m0_wo0_mtree_mult1_46_q(24)) & u0_m0_wo0_mtree_mult1_46_q));
    u0_m0_wo0_mtree_add0_23_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 25 => u0_m0_wo0_mtree_mult1_47_q(24)) & u0_m0_wo0_mtree_mult1_47_q));
    u0_m0_wo0_mtree_add0_23_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_23_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_23_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_23_a) + SIGNED(u0_m0_wo0_mtree_add0_23_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_23_q <= u0_m0_wo0_mtree_add0_23_o(25 downto 0);

    -- u0_m0_wo0_cm36_lutmem(DUALMEM,419)@13 + 2
    u0_m0_wo0_cm36_lutmem_aa <= u0_m0_wo0_ca81_q;
    u0_m0_wo0_cm36_lutmem_reset0 <= areset;
    u0_m0_wo0_cm36_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 13,
        widthad_a => 8,
        numwords_a => 200,
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
    u0_m0_wo0_cm36_lutmem_r <= u0_m0_wo0_cm36_lutmem_ir(12 downto 0);

    -- u0_m0_wo0_mtree_mult1_45(MULT,233)@15 + 2
    u0_m0_wo0_mtree_mult1_45_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm36_lutmem_r);
    u0_m0_wo0_mtree_mult1_45_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split34_d);
    u0_m0_wo0_mtree_mult1_45_reset <= areset;
    u0_m0_wo0_mtree_mult1_45_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 13,
        lpm_widthb => 12,
        lpm_widthp => 25,
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

    -- u0_m0_wo0_wi0_r0_join37(BITJOIN,66)@15
    u0_m0_wo0_wi0_r0_join37_q <= u0_m0_wo0_wi0_r0_split37_c & u0_m0_wo0_wi0_r0_split37_b & u0_m0_wo0_wi0_r0_split34_d;

    -- u0_m0_wo0_wi0_r0_memr37(DUALMEM,68)@15
    u0_m0_wo0_wi0_r0_memr37_ia <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_join37_q);
    u0_m0_wo0_wi0_r0_memr37_aa <= u0_m0_wo0_wi0_r0_wa81_q;
    u0_m0_wo0_wi0_r0_memr37_ab <= u0_m0_wo0_wi0_r0_ra81_resize_b;
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
        wren_a => u0_m0_wo0_wi0_r0_we81_seq_q(0),
        address_b => u0_m0_wo0_wi0_r0_memr37_ab,
        q_b => u0_m0_wo0_wi0_r0_memr37_iq
    );
    u0_m0_wo0_wi0_r0_memr37_q <= u0_m0_wo0_wi0_r0_memr37_iq(35 downto 0);

    -- u0_m0_wo0_wi0_r0_split37(BITSELECT,67)@15
    u0_m0_wo0_wi0_r0_split37_b <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr37_q(11 downto 0));
    u0_m0_wo0_wi0_r0_split37_c <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr37_q(23 downto 12));
    u0_m0_wo0_wi0_r0_split37_d <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr37_q(35 downto 24));

    -- u0_m0_wo0_cm37_lutmem(DUALMEM,420)@13 + 2
    u0_m0_wo0_cm37_lutmem_aa <= u0_m0_wo0_ca81_q;
    u0_m0_wo0_cm37_lutmem_reset0 <= areset;
    u0_m0_wo0_cm37_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 13,
        widthad_a => 8,
        numwords_a => 200,
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
    u0_m0_wo0_cm37_lutmem_r <= u0_m0_wo0_cm37_lutmem_ir(12 downto 0);

    -- u0_m0_wo0_mtree_mult1_44(MULT,234)@15 + 2
    u0_m0_wo0_mtree_mult1_44_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm37_lutmem_r);
    u0_m0_wo0_mtree_mult1_44_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split37_b);
    u0_m0_wo0_mtree_mult1_44_reset <= areset;
    u0_m0_wo0_mtree_mult1_44_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 13,
        lpm_widthb => 12,
        lpm_widthp => 25,
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

    -- u0_m0_wo0_mtree_add0_22(ADD,301)@17 + 1
    u0_m0_wo0_mtree_add0_22_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 25 => u0_m0_wo0_mtree_mult1_44_q(24)) & u0_m0_wo0_mtree_mult1_44_q));
    u0_m0_wo0_mtree_add0_22_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 25 => u0_m0_wo0_mtree_mult1_45_q(24)) & u0_m0_wo0_mtree_mult1_45_q));
    u0_m0_wo0_mtree_add0_22_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_22_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_22_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_22_a) + SIGNED(u0_m0_wo0_mtree_add0_22_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_22_q <= u0_m0_wo0_mtree_add0_22_o(25 downto 0);

    -- u0_m0_wo0_mtree_add1_11(ADD,331)@18 + 1
    u0_m0_wo0_mtree_add1_11_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((26 downto 26 => u0_m0_wo0_mtree_add0_22_q(25)) & u0_m0_wo0_mtree_add0_22_q));
    u0_m0_wo0_mtree_add1_11_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((26 downto 26 => u0_m0_wo0_mtree_add0_23_q(25)) & u0_m0_wo0_mtree_add0_23_q));
    u0_m0_wo0_mtree_add1_11_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_11_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_11_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_11_a) + SIGNED(u0_m0_wo0_mtree_add1_11_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_11_q <= u0_m0_wo0_mtree_add1_11_o(26 downto 0);

    -- u0_m0_wo0_cm38_lutmem(DUALMEM,421)@13 + 2
    u0_m0_wo0_cm38_lutmem_aa <= u0_m0_wo0_ca81_q;
    u0_m0_wo0_cm38_lutmem_reset0 <= areset;
    u0_m0_wo0_cm38_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 13,
        widthad_a => 8,
        numwords_a => 200,
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
    u0_m0_wo0_cm38_lutmem_r <= u0_m0_wo0_cm38_lutmem_ir(12 downto 0);

    -- u0_m0_wo0_mtree_mult1_43(MULT,235)@15 + 2
    u0_m0_wo0_mtree_mult1_43_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm38_lutmem_r);
    u0_m0_wo0_mtree_mult1_43_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split37_c);
    u0_m0_wo0_mtree_mult1_43_reset <= areset;
    u0_m0_wo0_mtree_mult1_43_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 13,
        lpm_widthb => 12,
        lpm_widthp => 25,
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

    -- u0_m0_wo0_cm39_lutmem(DUALMEM,422)@13 + 2
    u0_m0_wo0_cm39_lutmem_aa <= u0_m0_wo0_ca81_q;
    u0_m0_wo0_cm39_lutmem_reset0 <= areset;
    u0_m0_wo0_cm39_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 13,
        widthad_a => 8,
        numwords_a => 200,
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
    u0_m0_wo0_cm39_lutmem_r <= u0_m0_wo0_cm39_lutmem_ir(12 downto 0);

    -- u0_m0_wo0_mtree_mult1_42(MULT,236)@15 + 2
    u0_m0_wo0_mtree_mult1_42_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm39_lutmem_r);
    u0_m0_wo0_mtree_mult1_42_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split37_d);
    u0_m0_wo0_mtree_mult1_42_reset <= areset;
    u0_m0_wo0_mtree_mult1_42_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 13,
        lpm_widthb => 12,
        lpm_widthp => 25,
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

    -- u0_m0_wo0_mtree_add0_21(ADD,300)@17 + 1
    u0_m0_wo0_mtree_add0_21_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 25 => u0_m0_wo0_mtree_mult1_42_q(24)) & u0_m0_wo0_mtree_mult1_42_q));
    u0_m0_wo0_mtree_add0_21_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 25 => u0_m0_wo0_mtree_mult1_43_q(24)) & u0_m0_wo0_mtree_mult1_43_q));
    u0_m0_wo0_mtree_add0_21_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_21_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_21_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_21_a) + SIGNED(u0_m0_wo0_mtree_add0_21_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_21_q <= u0_m0_wo0_mtree_add0_21_o(25 downto 0);

    -- u0_m0_wo0_wi0_r0_join40(BITJOIN,69)@15
    u0_m0_wo0_wi0_r0_join40_q <= u0_m0_wo0_wi0_r0_split40_c & u0_m0_wo0_wi0_r0_split40_b & u0_m0_wo0_wi0_r0_split37_d;

    -- u0_m0_wo0_wi0_r0_memr40(DUALMEM,71)@15
    u0_m0_wo0_wi0_r0_memr40_ia <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_join40_q);
    u0_m0_wo0_wi0_r0_memr40_aa <= u0_m0_wo0_wi0_r0_wa81_q;
    u0_m0_wo0_wi0_r0_memr40_ab <= u0_m0_wo0_wi0_r0_ra81_resize_b;
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
        wren_a => u0_m0_wo0_wi0_r0_we81_seq_q(0),
        address_b => u0_m0_wo0_wi0_r0_memr40_ab,
        q_b => u0_m0_wo0_wi0_r0_memr40_iq
    );
    u0_m0_wo0_wi0_r0_memr40_q <= u0_m0_wo0_wi0_r0_memr40_iq(35 downto 0);

    -- u0_m0_wo0_wi0_r0_split40(BITSELECT,70)@15
    u0_m0_wo0_wi0_r0_split40_b <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr40_q(11 downto 0));
    u0_m0_wo0_wi0_r0_split40_c <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr40_q(23 downto 12));
    u0_m0_wo0_wi0_r0_split40_d <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr40_q(35 downto 24));

    -- u0_m0_wo0_cm40_lutmem(DUALMEM,423)@13 + 2
    u0_m0_wo0_cm40_lutmem_aa <= u0_m0_wo0_ca81_q;
    u0_m0_wo0_cm40_lutmem_reset0 <= areset;
    u0_m0_wo0_cm40_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 13,
        widthad_a => 8,
        numwords_a => 200,
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
    u0_m0_wo0_cm40_lutmem_r <= u0_m0_wo0_cm40_lutmem_ir(12 downto 0);

    -- u0_m0_wo0_mtree_mult1_41(MULT,237)@15 + 2
    u0_m0_wo0_mtree_mult1_41_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm40_lutmem_r);
    u0_m0_wo0_mtree_mult1_41_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split40_b);
    u0_m0_wo0_mtree_mult1_41_reset <= areset;
    u0_m0_wo0_mtree_mult1_41_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 13,
        lpm_widthb => 12,
        lpm_widthp => 25,
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

    -- u0_m0_wo0_cm41_lutmem(DUALMEM,424)@13 + 2
    u0_m0_wo0_cm41_lutmem_aa <= u0_m0_wo0_ca81_q;
    u0_m0_wo0_cm41_lutmem_reset0 <= areset;
    u0_m0_wo0_cm41_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 13,
        widthad_a => 8,
        numwords_a => 200,
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
    u0_m0_wo0_cm41_lutmem_r <= u0_m0_wo0_cm41_lutmem_ir(12 downto 0);

    -- u0_m0_wo0_mtree_mult1_40(MULT,238)@15 + 2
    u0_m0_wo0_mtree_mult1_40_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm41_lutmem_r);
    u0_m0_wo0_mtree_mult1_40_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split40_c);
    u0_m0_wo0_mtree_mult1_40_reset <= areset;
    u0_m0_wo0_mtree_mult1_40_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 13,
        lpm_widthb => 12,
        lpm_widthp => 25,
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

    -- u0_m0_wo0_mtree_add0_20(ADD,299)@17 + 1
    u0_m0_wo0_mtree_add0_20_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 25 => u0_m0_wo0_mtree_mult1_40_q(24)) & u0_m0_wo0_mtree_mult1_40_q));
    u0_m0_wo0_mtree_add0_20_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 25 => u0_m0_wo0_mtree_mult1_41_q(24)) & u0_m0_wo0_mtree_mult1_41_q));
    u0_m0_wo0_mtree_add0_20_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_20_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_20_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_20_a) + SIGNED(u0_m0_wo0_mtree_add0_20_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_20_q <= u0_m0_wo0_mtree_add0_20_o(25 downto 0);

    -- u0_m0_wo0_mtree_add1_10(ADD,330)@18 + 1
    u0_m0_wo0_mtree_add1_10_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((26 downto 26 => u0_m0_wo0_mtree_add0_20_q(25)) & u0_m0_wo0_mtree_add0_20_q));
    u0_m0_wo0_mtree_add1_10_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((26 downto 26 => u0_m0_wo0_mtree_add0_21_q(25)) & u0_m0_wo0_mtree_add0_21_q));
    u0_m0_wo0_mtree_add1_10_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_10_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_10_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_10_a) + SIGNED(u0_m0_wo0_mtree_add1_10_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_10_q <= u0_m0_wo0_mtree_add1_10_o(26 downto 0);

    -- u0_m0_wo0_mtree_add2_5(ADD,345)@19 + 1
    u0_m0_wo0_mtree_add2_5_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((27 downto 27 => u0_m0_wo0_mtree_add1_10_q(26)) & u0_m0_wo0_mtree_add1_10_q));
    u0_m0_wo0_mtree_add2_5_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((27 downto 27 => u0_m0_wo0_mtree_add1_11_q(26)) & u0_m0_wo0_mtree_add1_11_q));
    u0_m0_wo0_mtree_add2_5_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add2_5_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add2_5_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add2_5_a) + SIGNED(u0_m0_wo0_mtree_add2_5_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add2_5_q <= u0_m0_wo0_mtree_add2_5_o(27 downto 0);

    -- u0_m0_wo0_cm42_lutmem(DUALMEM,425)@13 + 2
    u0_m0_wo0_cm42_lutmem_aa <= u0_m0_wo0_ca81_q;
    u0_m0_wo0_cm42_lutmem_reset0 <= areset;
    u0_m0_wo0_cm42_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 13,
        widthad_a => 8,
        numwords_a => 200,
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
    u0_m0_wo0_cm42_lutmem_r <= u0_m0_wo0_cm42_lutmem_ir(12 downto 0);

    -- u0_m0_wo0_mtree_mult1_39(MULT,239)@15 + 2
    u0_m0_wo0_mtree_mult1_39_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm42_lutmem_r);
    u0_m0_wo0_mtree_mult1_39_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split40_d);
    u0_m0_wo0_mtree_mult1_39_reset <= areset;
    u0_m0_wo0_mtree_mult1_39_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 13,
        lpm_widthb => 12,
        lpm_widthp => 25,
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

    -- u0_m0_wo0_wi0_r0_join43(BITJOIN,72)@15
    u0_m0_wo0_wi0_r0_join43_q <= u0_m0_wo0_wi0_r0_split43_c & u0_m0_wo0_wi0_r0_split43_b & u0_m0_wo0_wi0_r0_split40_d;

    -- u0_m0_wo0_wi0_r0_memr43(DUALMEM,74)@15
    u0_m0_wo0_wi0_r0_memr43_ia <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_join43_q);
    u0_m0_wo0_wi0_r0_memr43_aa <= u0_m0_wo0_wi0_r0_wa81_q;
    u0_m0_wo0_wi0_r0_memr43_ab <= u0_m0_wo0_wi0_r0_ra81_resize_b;
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
        wren_a => u0_m0_wo0_wi0_r0_we81_seq_q(0),
        address_b => u0_m0_wo0_wi0_r0_memr43_ab,
        q_b => u0_m0_wo0_wi0_r0_memr43_iq
    );
    u0_m0_wo0_wi0_r0_memr43_q <= u0_m0_wo0_wi0_r0_memr43_iq(35 downto 0);

    -- u0_m0_wo0_wi0_r0_split43(BITSELECT,73)@15
    u0_m0_wo0_wi0_r0_split43_b <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr43_q(11 downto 0));
    u0_m0_wo0_wi0_r0_split43_c <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr43_q(23 downto 12));
    u0_m0_wo0_wi0_r0_split43_d <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr43_q(35 downto 24));

    -- u0_m0_wo0_cm43_lutmem(DUALMEM,426)@13 + 2
    u0_m0_wo0_cm43_lutmem_aa <= u0_m0_wo0_ca81_q;
    u0_m0_wo0_cm43_lutmem_reset0 <= areset;
    u0_m0_wo0_cm43_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 13,
        widthad_a => 8,
        numwords_a => 200,
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
    u0_m0_wo0_cm43_lutmem_r <= u0_m0_wo0_cm43_lutmem_ir(12 downto 0);

    -- u0_m0_wo0_mtree_mult1_38(MULT,240)@15 + 2
    u0_m0_wo0_mtree_mult1_38_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm43_lutmem_r);
    u0_m0_wo0_mtree_mult1_38_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split43_b);
    u0_m0_wo0_mtree_mult1_38_reset <= areset;
    u0_m0_wo0_mtree_mult1_38_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 13,
        lpm_widthb => 12,
        lpm_widthp => 25,
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

    -- u0_m0_wo0_mtree_add0_19(ADD,298)@17 + 1
    u0_m0_wo0_mtree_add0_19_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 25 => u0_m0_wo0_mtree_mult1_38_q(24)) & u0_m0_wo0_mtree_mult1_38_q));
    u0_m0_wo0_mtree_add0_19_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 25 => u0_m0_wo0_mtree_mult1_39_q(24)) & u0_m0_wo0_mtree_mult1_39_q));
    u0_m0_wo0_mtree_add0_19_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_19_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_19_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_19_a) + SIGNED(u0_m0_wo0_mtree_add0_19_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_19_q <= u0_m0_wo0_mtree_add0_19_o(25 downto 0);

    -- u0_m0_wo0_cm44_lutmem(DUALMEM,427)@13 + 2
    u0_m0_wo0_cm44_lutmem_aa <= u0_m0_wo0_ca81_q;
    u0_m0_wo0_cm44_lutmem_reset0 <= areset;
    u0_m0_wo0_cm44_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 13,
        widthad_a => 8,
        numwords_a => 200,
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
    u0_m0_wo0_cm44_lutmem_r <= u0_m0_wo0_cm44_lutmem_ir(12 downto 0);

    -- u0_m0_wo0_mtree_mult1_37(MULT,241)@15 + 2
    u0_m0_wo0_mtree_mult1_37_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm44_lutmem_r);
    u0_m0_wo0_mtree_mult1_37_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split43_c);
    u0_m0_wo0_mtree_mult1_37_reset <= areset;
    u0_m0_wo0_mtree_mult1_37_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 13,
        lpm_widthb => 12,
        lpm_widthp => 25,
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

    -- u0_m0_wo0_cm45_lutmem(DUALMEM,428)@13 + 2
    u0_m0_wo0_cm45_lutmem_aa <= u0_m0_wo0_ca81_q;
    u0_m0_wo0_cm45_lutmem_reset0 <= areset;
    u0_m0_wo0_cm45_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 13,
        widthad_a => 8,
        numwords_a => 200,
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
    u0_m0_wo0_cm45_lutmem_r <= u0_m0_wo0_cm45_lutmem_ir(12 downto 0);

    -- u0_m0_wo0_mtree_mult1_36(MULT,242)@15 + 2
    u0_m0_wo0_mtree_mult1_36_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm45_lutmem_r);
    u0_m0_wo0_mtree_mult1_36_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split43_d);
    u0_m0_wo0_mtree_mult1_36_reset <= areset;
    u0_m0_wo0_mtree_mult1_36_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 13,
        lpm_widthb => 12,
        lpm_widthp => 25,
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

    -- u0_m0_wo0_mtree_add0_18(ADD,297)@17 + 1
    u0_m0_wo0_mtree_add0_18_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 25 => u0_m0_wo0_mtree_mult1_36_q(24)) & u0_m0_wo0_mtree_mult1_36_q));
    u0_m0_wo0_mtree_add0_18_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 25 => u0_m0_wo0_mtree_mult1_37_q(24)) & u0_m0_wo0_mtree_mult1_37_q));
    u0_m0_wo0_mtree_add0_18_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_18_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_18_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_18_a) + SIGNED(u0_m0_wo0_mtree_add0_18_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_18_q <= u0_m0_wo0_mtree_add0_18_o(25 downto 0);

    -- u0_m0_wo0_mtree_add1_9(ADD,329)@18 + 1
    u0_m0_wo0_mtree_add1_9_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((26 downto 26 => u0_m0_wo0_mtree_add0_18_q(25)) & u0_m0_wo0_mtree_add0_18_q));
    u0_m0_wo0_mtree_add1_9_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((26 downto 26 => u0_m0_wo0_mtree_add0_19_q(25)) & u0_m0_wo0_mtree_add0_19_q));
    u0_m0_wo0_mtree_add1_9_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_9_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_9_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_9_a) + SIGNED(u0_m0_wo0_mtree_add1_9_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_9_q <= u0_m0_wo0_mtree_add1_9_o(26 downto 0);

    -- u0_m0_wo0_wi0_r0_join46(BITJOIN,75)@15
    u0_m0_wo0_wi0_r0_join46_q <= u0_m0_wo0_wi0_r0_split46_c & u0_m0_wo0_wi0_r0_split46_b & u0_m0_wo0_wi0_r0_split43_d;

    -- u0_m0_wo0_wi0_r0_memr46(DUALMEM,77)@15
    u0_m0_wo0_wi0_r0_memr46_ia <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_join46_q);
    u0_m0_wo0_wi0_r0_memr46_aa <= u0_m0_wo0_wi0_r0_wa81_q;
    u0_m0_wo0_wi0_r0_memr46_ab <= u0_m0_wo0_wi0_r0_ra81_resize_b;
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
        wren_a => u0_m0_wo0_wi0_r0_we81_seq_q(0),
        address_b => u0_m0_wo0_wi0_r0_memr46_ab,
        q_b => u0_m0_wo0_wi0_r0_memr46_iq
    );
    u0_m0_wo0_wi0_r0_memr46_q <= u0_m0_wo0_wi0_r0_memr46_iq(35 downto 0);

    -- u0_m0_wo0_wi0_r0_split46(BITSELECT,76)@15
    u0_m0_wo0_wi0_r0_split46_b <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr46_q(11 downto 0));
    u0_m0_wo0_wi0_r0_split46_c <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr46_q(23 downto 12));
    u0_m0_wo0_wi0_r0_split46_d <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr46_q(35 downto 24));

    -- u0_m0_wo0_cm46_lutmem(DUALMEM,429)@13 + 2
    u0_m0_wo0_cm46_lutmem_aa <= u0_m0_wo0_ca81_q;
    u0_m0_wo0_cm46_lutmem_reset0 <= areset;
    u0_m0_wo0_cm46_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 13,
        widthad_a => 8,
        numwords_a => 200,
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
    u0_m0_wo0_cm46_lutmem_r <= u0_m0_wo0_cm46_lutmem_ir(12 downto 0);

    -- u0_m0_wo0_mtree_mult1_35(MULT,243)@15 + 2
    u0_m0_wo0_mtree_mult1_35_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm46_lutmem_r);
    u0_m0_wo0_mtree_mult1_35_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split46_b);
    u0_m0_wo0_mtree_mult1_35_reset <= areset;
    u0_m0_wo0_mtree_mult1_35_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 13,
        lpm_widthb => 12,
        lpm_widthp => 25,
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

    -- u0_m0_wo0_cm47_lutmem(DUALMEM,430)@13 + 2
    u0_m0_wo0_cm47_lutmem_aa <= u0_m0_wo0_ca81_q;
    u0_m0_wo0_cm47_lutmem_reset0 <= areset;
    u0_m0_wo0_cm47_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 13,
        widthad_a => 8,
        numwords_a => 200,
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
    u0_m0_wo0_cm47_lutmem_r <= u0_m0_wo0_cm47_lutmem_ir(12 downto 0);

    -- u0_m0_wo0_mtree_mult1_34(MULT,244)@15 + 2
    u0_m0_wo0_mtree_mult1_34_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm47_lutmem_r);
    u0_m0_wo0_mtree_mult1_34_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split46_c);
    u0_m0_wo0_mtree_mult1_34_reset <= areset;
    u0_m0_wo0_mtree_mult1_34_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 13,
        lpm_widthb => 12,
        lpm_widthp => 25,
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

    -- u0_m0_wo0_mtree_add0_17(ADD,296)@17 + 1
    u0_m0_wo0_mtree_add0_17_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 25 => u0_m0_wo0_mtree_mult1_34_q(24)) & u0_m0_wo0_mtree_mult1_34_q));
    u0_m0_wo0_mtree_add0_17_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 25 => u0_m0_wo0_mtree_mult1_35_q(24)) & u0_m0_wo0_mtree_mult1_35_q));
    u0_m0_wo0_mtree_add0_17_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_17_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_17_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_17_a) + SIGNED(u0_m0_wo0_mtree_add0_17_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_17_q <= u0_m0_wo0_mtree_add0_17_o(25 downto 0);

    -- u0_m0_wo0_cm48_lutmem(DUALMEM,431)@13 + 2
    u0_m0_wo0_cm48_lutmem_aa <= u0_m0_wo0_ca81_q;
    u0_m0_wo0_cm48_lutmem_reset0 <= areset;
    u0_m0_wo0_cm48_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 13,
        widthad_a => 8,
        numwords_a => 200,
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
    u0_m0_wo0_cm48_lutmem_r <= u0_m0_wo0_cm48_lutmem_ir(12 downto 0);

    -- u0_m0_wo0_mtree_mult1_33(MULT,245)@15 + 2
    u0_m0_wo0_mtree_mult1_33_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm48_lutmem_r);
    u0_m0_wo0_mtree_mult1_33_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split46_d);
    u0_m0_wo0_mtree_mult1_33_reset <= areset;
    u0_m0_wo0_mtree_mult1_33_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 13,
        lpm_widthb => 12,
        lpm_widthp => 25,
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

    -- u0_m0_wo0_wi0_r0_join49(BITJOIN,78)@15
    u0_m0_wo0_wi0_r0_join49_q <= u0_m0_wo0_wi0_r0_split49_c & u0_m0_wo0_wi0_r0_split49_b & u0_m0_wo0_wi0_r0_split46_d;

    -- u0_m0_wo0_wi0_r0_memr49(DUALMEM,80)@15
    u0_m0_wo0_wi0_r0_memr49_ia <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_join49_q);
    u0_m0_wo0_wi0_r0_memr49_aa <= u0_m0_wo0_wi0_r0_wa81_q;
    u0_m0_wo0_wi0_r0_memr49_ab <= u0_m0_wo0_wi0_r0_ra81_resize_b;
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
        wren_a => u0_m0_wo0_wi0_r0_we81_seq_q(0),
        address_b => u0_m0_wo0_wi0_r0_memr49_ab,
        q_b => u0_m0_wo0_wi0_r0_memr49_iq
    );
    u0_m0_wo0_wi0_r0_memr49_q <= u0_m0_wo0_wi0_r0_memr49_iq(35 downto 0);

    -- u0_m0_wo0_wi0_r0_split49(BITSELECT,79)@15
    u0_m0_wo0_wi0_r0_split49_b <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr49_q(11 downto 0));
    u0_m0_wo0_wi0_r0_split49_c <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr49_q(23 downto 12));
    u0_m0_wo0_wi0_r0_split49_d <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr49_q(35 downto 24));

    -- u0_m0_wo0_cm49_lutmem(DUALMEM,432)@13 + 2
    u0_m0_wo0_cm49_lutmem_aa <= u0_m0_wo0_ca81_q;
    u0_m0_wo0_cm49_lutmem_reset0 <= areset;
    u0_m0_wo0_cm49_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 13,
        widthad_a => 8,
        numwords_a => 200,
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
    u0_m0_wo0_cm49_lutmem_r <= u0_m0_wo0_cm49_lutmem_ir(12 downto 0);

    -- u0_m0_wo0_mtree_mult1_32(MULT,246)@15 + 2
    u0_m0_wo0_mtree_mult1_32_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm49_lutmem_r);
    u0_m0_wo0_mtree_mult1_32_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split49_b);
    u0_m0_wo0_mtree_mult1_32_reset <= areset;
    u0_m0_wo0_mtree_mult1_32_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 13,
        lpm_widthb => 12,
        lpm_widthp => 25,
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

    -- u0_m0_wo0_mtree_add0_16(ADD,295)@17 + 1
    u0_m0_wo0_mtree_add0_16_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 25 => u0_m0_wo0_mtree_mult1_32_q(24)) & u0_m0_wo0_mtree_mult1_32_q));
    u0_m0_wo0_mtree_add0_16_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 25 => u0_m0_wo0_mtree_mult1_33_q(24)) & u0_m0_wo0_mtree_mult1_33_q));
    u0_m0_wo0_mtree_add0_16_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_16_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_16_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_16_a) + SIGNED(u0_m0_wo0_mtree_add0_16_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_16_q <= u0_m0_wo0_mtree_add0_16_o(25 downto 0);

    -- u0_m0_wo0_mtree_add1_8(ADD,328)@18 + 1
    u0_m0_wo0_mtree_add1_8_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((26 downto 26 => u0_m0_wo0_mtree_add0_16_q(25)) & u0_m0_wo0_mtree_add0_16_q));
    u0_m0_wo0_mtree_add1_8_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((26 downto 26 => u0_m0_wo0_mtree_add0_17_q(25)) & u0_m0_wo0_mtree_add0_17_q));
    u0_m0_wo0_mtree_add1_8_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_8_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_8_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_8_a) + SIGNED(u0_m0_wo0_mtree_add1_8_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_8_q <= u0_m0_wo0_mtree_add1_8_o(26 downto 0);

    -- u0_m0_wo0_mtree_add2_4(ADD,344)@19 + 1
    u0_m0_wo0_mtree_add2_4_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((27 downto 27 => u0_m0_wo0_mtree_add1_8_q(26)) & u0_m0_wo0_mtree_add1_8_q));
    u0_m0_wo0_mtree_add2_4_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((27 downto 27 => u0_m0_wo0_mtree_add1_9_q(26)) & u0_m0_wo0_mtree_add1_9_q));
    u0_m0_wo0_mtree_add2_4_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add2_4_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add2_4_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add2_4_a) + SIGNED(u0_m0_wo0_mtree_add2_4_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add2_4_q <= u0_m0_wo0_mtree_add2_4_o(27 downto 0);

    -- u0_m0_wo0_mtree_add3_2(ADD,352)@20 + 1
    u0_m0_wo0_mtree_add3_2_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((28 downto 28 => u0_m0_wo0_mtree_add2_4_q(27)) & u0_m0_wo0_mtree_add2_4_q));
    u0_m0_wo0_mtree_add3_2_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((28 downto 28 => u0_m0_wo0_mtree_add2_5_q(27)) & u0_m0_wo0_mtree_add2_5_q));
    u0_m0_wo0_mtree_add3_2_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add3_2_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add3_2_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add3_2_a) + SIGNED(u0_m0_wo0_mtree_add3_2_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add3_2_q <= u0_m0_wo0_mtree_add3_2_o(28 downto 0);

    -- u0_m0_wo0_mtree_add4_1(ADD,356)@21 + 1
    u0_m0_wo0_mtree_add4_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((29 downto 29 => u0_m0_wo0_mtree_add3_2_q(28)) & u0_m0_wo0_mtree_add3_2_q));
    u0_m0_wo0_mtree_add4_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((29 downto 29 => u0_m0_wo0_mtree_add3_3_q(28)) & u0_m0_wo0_mtree_add3_3_q));
    u0_m0_wo0_mtree_add4_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add4_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add4_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add4_1_a) + SIGNED(u0_m0_wo0_mtree_add4_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add4_1_q <= u0_m0_wo0_mtree_add4_1_o(29 downto 0);

    -- u0_m0_wo0_cm50_lutmem(DUALMEM,433)@13 + 2
    u0_m0_wo0_cm50_lutmem_aa <= u0_m0_wo0_ca81_q;
    u0_m0_wo0_cm50_lutmem_reset0 <= areset;
    u0_m0_wo0_cm50_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 13,
        widthad_a => 8,
        numwords_a => 200,
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
    u0_m0_wo0_cm50_lutmem_r <= u0_m0_wo0_cm50_lutmem_ir(12 downto 0);

    -- u0_m0_wo0_mtree_mult1_31(MULT,247)@15 + 2
    u0_m0_wo0_mtree_mult1_31_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm50_lutmem_r);
    u0_m0_wo0_mtree_mult1_31_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split49_c);
    u0_m0_wo0_mtree_mult1_31_reset <= areset;
    u0_m0_wo0_mtree_mult1_31_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 13,
        lpm_widthb => 12,
        lpm_widthp => 25,
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

    -- u0_m0_wo0_cm51_lutmem(DUALMEM,434)@13 + 2
    u0_m0_wo0_cm51_lutmem_aa <= u0_m0_wo0_ca81_q;
    u0_m0_wo0_cm51_lutmem_reset0 <= areset;
    u0_m0_wo0_cm51_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 13,
        widthad_a => 8,
        numwords_a => 200,
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
    u0_m0_wo0_cm51_lutmem_r <= u0_m0_wo0_cm51_lutmem_ir(12 downto 0);

    -- u0_m0_wo0_mtree_mult1_30(MULT,248)@15 + 2
    u0_m0_wo0_mtree_mult1_30_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm51_lutmem_r);
    u0_m0_wo0_mtree_mult1_30_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split49_d);
    u0_m0_wo0_mtree_mult1_30_reset <= areset;
    u0_m0_wo0_mtree_mult1_30_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 13,
        lpm_widthb => 12,
        lpm_widthp => 25,
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

    -- u0_m0_wo0_mtree_add0_15(ADD,294)@17 + 1
    u0_m0_wo0_mtree_add0_15_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 25 => u0_m0_wo0_mtree_mult1_30_q(24)) & u0_m0_wo0_mtree_mult1_30_q));
    u0_m0_wo0_mtree_add0_15_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 25 => u0_m0_wo0_mtree_mult1_31_q(24)) & u0_m0_wo0_mtree_mult1_31_q));
    u0_m0_wo0_mtree_add0_15_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_15_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_15_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_15_a) + SIGNED(u0_m0_wo0_mtree_add0_15_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_15_q <= u0_m0_wo0_mtree_add0_15_o(25 downto 0);

    -- u0_m0_wo0_wi0_r0_join52(BITJOIN,81)@15
    u0_m0_wo0_wi0_r0_join52_q <= u0_m0_wo0_wi0_r0_split52_c & u0_m0_wo0_wi0_r0_split52_b & u0_m0_wo0_wi0_r0_split49_d;

    -- u0_m0_wo0_wi0_r0_memr52(DUALMEM,83)@15
    u0_m0_wo0_wi0_r0_memr52_ia <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_join52_q);
    u0_m0_wo0_wi0_r0_memr52_aa <= u0_m0_wo0_wi0_r0_wa81_q;
    u0_m0_wo0_wi0_r0_memr52_ab <= u0_m0_wo0_wi0_r0_ra81_resize_b;
    u0_m0_wo0_wi0_r0_memr52_dmem : altsyncram
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
        address_a => u0_m0_wo0_wi0_r0_memr52_aa,
        data_a => u0_m0_wo0_wi0_r0_memr52_ia,
        wren_a => u0_m0_wo0_wi0_r0_we81_seq_q(0),
        address_b => u0_m0_wo0_wi0_r0_memr52_ab,
        q_b => u0_m0_wo0_wi0_r0_memr52_iq
    );
    u0_m0_wo0_wi0_r0_memr52_q <= u0_m0_wo0_wi0_r0_memr52_iq(35 downto 0);

    -- u0_m0_wo0_wi0_r0_split52(BITSELECT,82)@15
    u0_m0_wo0_wi0_r0_split52_b <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr52_q(11 downto 0));
    u0_m0_wo0_wi0_r0_split52_c <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr52_q(23 downto 12));
    u0_m0_wo0_wi0_r0_split52_d <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr52_q(35 downto 24));

    -- u0_m0_wo0_cm52_lutmem(DUALMEM,435)@13 + 2
    u0_m0_wo0_cm52_lutmem_aa <= u0_m0_wo0_ca81_q;
    u0_m0_wo0_cm52_lutmem_reset0 <= areset;
    u0_m0_wo0_cm52_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 13,
        widthad_a => 8,
        numwords_a => 200,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "REVERB_fir_compiler_ii_0_rtl_core_u0_m0_wo0_cm52_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => '1',
        aclr0 => u0_m0_wo0_cm52_lutmem_reset0,
        clock0 => clk,
        address_a => u0_m0_wo0_cm52_lutmem_aa,
        q_a => u0_m0_wo0_cm52_lutmem_ir
    );
    u0_m0_wo0_cm52_lutmem_r <= u0_m0_wo0_cm52_lutmem_ir(12 downto 0);

    -- u0_m0_wo0_mtree_mult1_29(MULT,249)@15 + 2
    u0_m0_wo0_mtree_mult1_29_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm52_lutmem_r);
    u0_m0_wo0_mtree_mult1_29_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split52_b);
    u0_m0_wo0_mtree_mult1_29_reset <= areset;
    u0_m0_wo0_mtree_mult1_29_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 13,
        lpm_widthb => 12,
        lpm_widthp => 25,
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

    -- u0_m0_wo0_cm53_lutmem(DUALMEM,436)@13 + 2
    u0_m0_wo0_cm53_lutmem_aa <= u0_m0_wo0_ca81_q;
    u0_m0_wo0_cm53_lutmem_reset0 <= areset;
    u0_m0_wo0_cm53_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 13,
        widthad_a => 8,
        numwords_a => 200,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "REVERB_fir_compiler_ii_0_rtl_core_u0_m0_wo0_cm53_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => '1',
        aclr0 => u0_m0_wo0_cm53_lutmem_reset0,
        clock0 => clk,
        address_a => u0_m0_wo0_cm53_lutmem_aa,
        q_a => u0_m0_wo0_cm53_lutmem_ir
    );
    u0_m0_wo0_cm53_lutmem_r <= u0_m0_wo0_cm53_lutmem_ir(12 downto 0);

    -- u0_m0_wo0_mtree_mult1_28(MULT,250)@15 + 2
    u0_m0_wo0_mtree_mult1_28_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm53_lutmem_r);
    u0_m0_wo0_mtree_mult1_28_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split52_c);
    u0_m0_wo0_mtree_mult1_28_reset <= areset;
    u0_m0_wo0_mtree_mult1_28_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 13,
        lpm_widthb => 12,
        lpm_widthp => 25,
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

    -- u0_m0_wo0_mtree_add0_14(ADD,293)@17 + 1
    u0_m0_wo0_mtree_add0_14_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 25 => u0_m0_wo0_mtree_mult1_28_q(24)) & u0_m0_wo0_mtree_mult1_28_q));
    u0_m0_wo0_mtree_add0_14_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 25 => u0_m0_wo0_mtree_mult1_29_q(24)) & u0_m0_wo0_mtree_mult1_29_q));
    u0_m0_wo0_mtree_add0_14_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_14_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_14_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_14_a) + SIGNED(u0_m0_wo0_mtree_add0_14_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_14_q <= u0_m0_wo0_mtree_add0_14_o(25 downto 0);

    -- u0_m0_wo0_mtree_add1_7(ADD,327)@18 + 1
    u0_m0_wo0_mtree_add1_7_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((26 downto 26 => u0_m0_wo0_mtree_add0_14_q(25)) & u0_m0_wo0_mtree_add0_14_q));
    u0_m0_wo0_mtree_add1_7_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((26 downto 26 => u0_m0_wo0_mtree_add0_15_q(25)) & u0_m0_wo0_mtree_add0_15_q));
    u0_m0_wo0_mtree_add1_7_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_7_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_7_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_7_a) + SIGNED(u0_m0_wo0_mtree_add1_7_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_7_q <= u0_m0_wo0_mtree_add1_7_o(26 downto 0);

    -- u0_m0_wo0_cm54_lutmem(DUALMEM,437)@13 + 2
    u0_m0_wo0_cm54_lutmem_aa <= u0_m0_wo0_ca81_q;
    u0_m0_wo0_cm54_lutmem_reset0 <= areset;
    u0_m0_wo0_cm54_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 13,
        widthad_a => 8,
        numwords_a => 200,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "REVERB_fir_compiler_ii_0_rtl_core_u0_m0_wo0_cm54_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => '1',
        aclr0 => u0_m0_wo0_cm54_lutmem_reset0,
        clock0 => clk,
        address_a => u0_m0_wo0_cm54_lutmem_aa,
        q_a => u0_m0_wo0_cm54_lutmem_ir
    );
    u0_m0_wo0_cm54_lutmem_r <= u0_m0_wo0_cm54_lutmem_ir(12 downto 0);

    -- u0_m0_wo0_mtree_mult1_27(MULT,251)@15 + 2
    u0_m0_wo0_mtree_mult1_27_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm54_lutmem_r);
    u0_m0_wo0_mtree_mult1_27_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split52_d);
    u0_m0_wo0_mtree_mult1_27_reset <= areset;
    u0_m0_wo0_mtree_mult1_27_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 13,
        lpm_widthb => 12,
        lpm_widthp => 25,
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

    -- u0_m0_wo0_wi0_r0_join55(BITJOIN,84)@15
    u0_m0_wo0_wi0_r0_join55_q <= u0_m0_wo0_wi0_r0_split55_c & u0_m0_wo0_wi0_r0_split55_b & u0_m0_wo0_wi0_r0_split52_d;

    -- u0_m0_wo0_wi0_r0_memr55(DUALMEM,86)@15
    u0_m0_wo0_wi0_r0_memr55_ia <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_join55_q);
    u0_m0_wo0_wi0_r0_memr55_aa <= u0_m0_wo0_wi0_r0_wa81_q;
    u0_m0_wo0_wi0_r0_memr55_ab <= u0_m0_wo0_wi0_r0_ra81_resize_b;
    u0_m0_wo0_wi0_r0_memr55_dmem : altsyncram
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
        address_a => u0_m0_wo0_wi0_r0_memr55_aa,
        data_a => u0_m0_wo0_wi0_r0_memr55_ia,
        wren_a => u0_m0_wo0_wi0_r0_we81_seq_q(0),
        address_b => u0_m0_wo0_wi0_r0_memr55_ab,
        q_b => u0_m0_wo0_wi0_r0_memr55_iq
    );
    u0_m0_wo0_wi0_r0_memr55_q <= u0_m0_wo0_wi0_r0_memr55_iq(35 downto 0);

    -- u0_m0_wo0_wi0_r0_split55(BITSELECT,85)@15
    u0_m0_wo0_wi0_r0_split55_b <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr55_q(11 downto 0));
    u0_m0_wo0_wi0_r0_split55_c <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr55_q(23 downto 12));
    u0_m0_wo0_wi0_r0_split55_d <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr55_q(35 downto 24));

    -- u0_m0_wo0_cm55_lutmem(DUALMEM,438)@13 + 2
    u0_m0_wo0_cm55_lutmem_aa <= u0_m0_wo0_ca81_q;
    u0_m0_wo0_cm55_lutmem_reset0 <= areset;
    u0_m0_wo0_cm55_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 13,
        widthad_a => 8,
        numwords_a => 200,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "REVERB_fir_compiler_ii_0_rtl_core_u0_m0_wo0_cm55_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => '1',
        aclr0 => u0_m0_wo0_cm55_lutmem_reset0,
        clock0 => clk,
        address_a => u0_m0_wo0_cm55_lutmem_aa,
        q_a => u0_m0_wo0_cm55_lutmem_ir
    );
    u0_m0_wo0_cm55_lutmem_r <= u0_m0_wo0_cm55_lutmem_ir(12 downto 0);

    -- u0_m0_wo0_mtree_mult1_26(MULT,252)@15 + 2
    u0_m0_wo0_mtree_mult1_26_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm55_lutmem_r);
    u0_m0_wo0_mtree_mult1_26_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split55_b);
    u0_m0_wo0_mtree_mult1_26_reset <= areset;
    u0_m0_wo0_mtree_mult1_26_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 13,
        lpm_widthb => 12,
        lpm_widthp => 25,
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

    -- u0_m0_wo0_mtree_add0_13(ADD,292)@17 + 1
    u0_m0_wo0_mtree_add0_13_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 25 => u0_m0_wo0_mtree_mult1_26_q(24)) & u0_m0_wo0_mtree_mult1_26_q));
    u0_m0_wo0_mtree_add0_13_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 25 => u0_m0_wo0_mtree_mult1_27_q(24)) & u0_m0_wo0_mtree_mult1_27_q));
    u0_m0_wo0_mtree_add0_13_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_13_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_13_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_13_a) + SIGNED(u0_m0_wo0_mtree_add0_13_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_13_q <= u0_m0_wo0_mtree_add0_13_o(25 downto 0);

    -- u0_m0_wo0_cm56_lutmem(DUALMEM,439)@13 + 2
    u0_m0_wo0_cm56_lutmem_aa <= u0_m0_wo0_ca81_q;
    u0_m0_wo0_cm56_lutmem_reset0 <= areset;
    u0_m0_wo0_cm56_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 13,
        widthad_a => 8,
        numwords_a => 200,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "REVERB_fir_compiler_ii_0_rtl_core_u0_m0_wo0_cm56_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => '1',
        aclr0 => u0_m0_wo0_cm56_lutmem_reset0,
        clock0 => clk,
        address_a => u0_m0_wo0_cm56_lutmem_aa,
        q_a => u0_m0_wo0_cm56_lutmem_ir
    );
    u0_m0_wo0_cm56_lutmem_r <= u0_m0_wo0_cm56_lutmem_ir(12 downto 0);

    -- u0_m0_wo0_mtree_mult1_25(MULT,253)@15 + 2
    u0_m0_wo0_mtree_mult1_25_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm56_lutmem_r);
    u0_m0_wo0_mtree_mult1_25_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split55_c);
    u0_m0_wo0_mtree_mult1_25_reset <= areset;
    u0_m0_wo0_mtree_mult1_25_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 13,
        lpm_widthb => 12,
        lpm_widthp => 25,
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

    -- u0_m0_wo0_cm57_lutmem(DUALMEM,440)@13 + 2
    u0_m0_wo0_cm57_lutmem_aa <= u0_m0_wo0_ca81_q;
    u0_m0_wo0_cm57_lutmem_reset0 <= areset;
    u0_m0_wo0_cm57_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 13,
        widthad_a => 8,
        numwords_a => 200,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "REVERB_fir_compiler_ii_0_rtl_core_u0_m0_wo0_cm57_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => '1',
        aclr0 => u0_m0_wo0_cm57_lutmem_reset0,
        clock0 => clk,
        address_a => u0_m0_wo0_cm57_lutmem_aa,
        q_a => u0_m0_wo0_cm57_lutmem_ir
    );
    u0_m0_wo0_cm57_lutmem_r <= u0_m0_wo0_cm57_lutmem_ir(12 downto 0);

    -- u0_m0_wo0_mtree_mult1_24(MULT,254)@15 + 2
    u0_m0_wo0_mtree_mult1_24_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm57_lutmem_r);
    u0_m0_wo0_mtree_mult1_24_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split55_d);
    u0_m0_wo0_mtree_mult1_24_reset <= areset;
    u0_m0_wo0_mtree_mult1_24_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 13,
        lpm_widthb => 12,
        lpm_widthp => 25,
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

    -- u0_m0_wo0_mtree_add0_12(ADD,291)@17 + 1
    u0_m0_wo0_mtree_add0_12_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 25 => u0_m0_wo0_mtree_mult1_24_q(24)) & u0_m0_wo0_mtree_mult1_24_q));
    u0_m0_wo0_mtree_add0_12_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 25 => u0_m0_wo0_mtree_mult1_25_q(24)) & u0_m0_wo0_mtree_mult1_25_q));
    u0_m0_wo0_mtree_add0_12_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_12_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_12_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_12_a) + SIGNED(u0_m0_wo0_mtree_add0_12_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_12_q <= u0_m0_wo0_mtree_add0_12_o(25 downto 0);

    -- u0_m0_wo0_mtree_add1_6(ADD,326)@18 + 1
    u0_m0_wo0_mtree_add1_6_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((26 downto 26 => u0_m0_wo0_mtree_add0_12_q(25)) & u0_m0_wo0_mtree_add0_12_q));
    u0_m0_wo0_mtree_add1_6_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((26 downto 26 => u0_m0_wo0_mtree_add0_13_q(25)) & u0_m0_wo0_mtree_add0_13_q));
    u0_m0_wo0_mtree_add1_6_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_6_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_6_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_6_a) + SIGNED(u0_m0_wo0_mtree_add1_6_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_6_q <= u0_m0_wo0_mtree_add1_6_o(26 downto 0);

    -- u0_m0_wo0_mtree_add2_3(ADD,343)@19 + 1
    u0_m0_wo0_mtree_add2_3_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((27 downto 27 => u0_m0_wo0_mtree_add1_6_q(26)) & u0_m0_wo0_mtree_add1_6_q));
    u0_m0_wo0_mtree_add2_3_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((27 downto 27 => u0_m0_wo0_mtree_add1_7_q(26)) & u0_m0_wo0_mtree_add1_7_q));
    u0_m0_wo0_mtree_add2_3_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add2_3_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add2_3_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add2_3_a) + SIGNED(u0_m0_wo0_mtree_add2_3_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add2_3_q <= u0_m0_wo0_mtree_add2_3_o(27 downto 0);

    -- u0_m0_wo0_wi0_r0_join58(BITJOIN,87)@15
    u0_m0_wo0_wi0_r0_join58_q <= u0_m0_wo0_wi0_r0_split58_c & u0_m0_wo0_wi0_r0_split58_b & u0_m0_wo0_wi0_r0_split55_d;

    -- u0_m0_wo0_wi0_r0_memr58(DUALMEM,89)@15
    u0_m0_wo0_wi0_r0_memr58_ia <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_join58_q);
    u0_m0_wo0_wi0_r0_memr58_aa <= u0_m0_wo0_wi0_r0_wa81_q;
    u0_m0_wo0_wi0_r0_memr58_ab <= u0_m0_wo0_wi0_r0_ra81_resize_b;
    u0_m0_wo0_wi0_r0_memr58_dmem : altsyncram
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
        address_a => u0_m0_wo0_wi0_r0_memr58_aa,
        data_a => u0_m0_wo0_wi0_r0_memr58_ia,
        wren_a => u0_m0_wo0_wi0_r0_we81_seq_q(0),
        address_b => u0_m0_wo0_wi0_r0_memr58_ab,
        q_b => u0_m0_wo0_wi0_r0_memr58_iq
    );
    u0_m0_wo0_wi0_r0_memr58_q <= u0_m0_wo0_wi0_r0_memr58_iq(35 downto 0);

    -- u0_m0_wo0_wi0_r0_split58(BITSELECT,88)@15
    u0_m0_wo0_wi0_r0_split58_b <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr58_q(11 downto 0));
    u0_m0_wo0_wi0_r0_split58_c <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr58_q(23 downto 12));
    u0_m0_wo0_wi0_r0_split58_d <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr58_q(35 downto 24));

    -- u0_m0_wo0_cm58_lutmem(DUALMEM,441)@13 + 2
    u0_m0_wo0_cm58_lutmem_aa <= u0_m0_wo0_ca81_q;
    u0_m0_wo0_cm58_lutmem_reset0 <= areset;
    u0_m0_wo0_cm58_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 13,
        widthad_a => 8,
        numwords_a => 200,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "REVERB_fir_compiler_ii_0_rtl_core_u0_m0_wo0_cm58_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => '1',
        aclr0 => u0_m0_wo0_cm58_lutmem_reset0,
        clock0 => clk,
        address_a => u0_m0_wo0_cm58_lutmem_aa,
        q_a => u0_m0_wo0_cm58_lutmem_ir
    );
    u0_m0_wo0_cm58_lutmem_r <= u0_m0_wo0_cm58_lutmem_ir(12 downto 0);

    -- u0_m0_wo0_mtree_mult1_23(MULT,255)@15 + 2
    u0_m0_wo0_mtree_mult1_23_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm58_lutmem_r);
    u0_m0_wo0_mtree_mult1_23_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split58_b);
    u0_m0_wo0_mtree_mult1_23_reset <= areset;
    u0_m0_wo0_mtree_mult1_23_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 13,
        lpm_widthb => 12,
        lpm_widthp => 25,
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

    -- u0_m0_wo0_cm59_lutmem(DUALMEM,442)@13 + 2
    u0_m0_wo0_cm59_lutmem_aa <= u0_m0_wo0_ca81_q;
    u0_m0_wo0_cm59_lutmem_reset0 <= areset;
    u0_m0_wo0_cm59_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 13,
        widthad_a => 8,
        numwords_a => 200,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "REVERB_fir_compiler_ii_0_rtl_core_u0_m0_wo0_cm59_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => '1',
        aclr0 => u0_m0_wo0_cm59_lutmem_reset0,
        clock0 => clk,
        address_a => u0_m0_wo0_cm59_lutmem_aa,
        q_a => u0_m0_wo0_cm59_lutmem_ir
    );
    u0_m0_wo0_cm59_lutmem_r <= u0_m0_wo0_cm59_lutmem_ir(12 downto 0);

    -- u0_m0_wo0_mtree_mult1_22(MULT,256)@15 + 2
    u0_m0_wo0_mtree_mult1_22_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm59_lutmem_r);
    u0_m0_wo0_mtree_mult1_22_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split58_c);
    u0_m0_wo0_mtree_mult1_22_reset <= areset;
    u0_m0_wo0_mtree_mult1_22_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 13,
        lpm_widthb => 12,
        lpm_widthp => 25,
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

    -- u0_m0_wo0_mtree_add0_11(ADD,290)@17 + 1
    u0_m0_wo0_mtree_add0_11_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 25 => u0_m0_wo0_mtree_mult1_22_q(24)) & u0_m0_wo0_mtree_mult1_22_q));
    u0_m0_wo0_mtree_add0_11_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 25 => u0_m0_wo0_mtree_mult1_23_q(24)) & u0_m0_wo0_mtree_mult1_23_q));
    u0_m0_wo0_mtree_add0_11_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_11_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_11_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_11_a) + SIGNED(u0_m0_wo0_mtree_add0_11_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_11_q <= u0_m0_wo0_mtree_add0_11_o(25 downto 0);

    -- u0_m0_wo0_cm60_lutmem(DUALMEM,443)@13 + 2
    u0_m0_wo0_cm60_lutmem_aa <= u0_m0_wo0_ca81_q;
    u0_m0_wo0_cm60_lutmem_reset0 <= areset;
    u0_m0_wo0_cm60_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 13,
        widthad_a => 8,
        numwords_a => 200,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "REVERB_fir_compiler_ii_0_rtl_core_u0_m0_wo0_cm60_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => '1',
        aclr0 => u0_m0_wo0_cm60_lutmem_reset0,
        clock0 => clk,
        address_a => u0_m0_wo0_cm60_lutmem_aa,
        q_a => u0_m0_wo0_cm60_lutmem_ir
    );
    u0_m0_wo0_cm60_lutmem_r <= u0_m0_wo0_cm60_lutmem_ir(12 downto 0);

    -- u0_m0_wo0_mtree_mult1_21(MULT,257)@15 + 2
    u0_m0_wo0_mtree_mult1_21_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm60_lutmem_r);
    u0_m0_wo0_mtree_mult1_21_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split58_d);
    u0_m0_wo0_mtree_mult1_21_reset <= areset;
    u0_m0_wo0_mtree_mult1_21_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 13,
        lpm_widthb => 12,
        lpm_widthp => 25,
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

    -- u0_m0_wo0_wi0_r0_join61(BITJOIN,90)@15
    u0_m0_wo0_wi0_r0_join61_q <= u0_m0_wo0_wi0_r0_split61_c & u0_m0_wo0_wi0_r0_split61_b & u0_m0_wo0_wi0_r0_split58_d;

    -- u0_m0_wo0_wi0_r0_memr61(DUALMEM,92)@15
    u0_m0_wo0_wi0_r0_memr61_ia <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_join61_q);
    u0_m0_wo0_wi0_r0_memr61_aa <= u0_m0_wo0_wi0_r0_wa81_q;
    u0_m0_wo0_wi0_r0_memr61_ab <= u0_m0_wo0_wi0_r0_ra81_resize_b;
    u0_m0_wo0_wi0_r0_memr61_dmem : altsyncram
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
        address_a => u0_m0_wo0_wi0_r0_memr61_aa,
        data_a => u0_m0_wo0_wi0_r0_memr61_ia,
        wren_a => u0_m0_wo0_wi0_r0_we81_seq_q(0),
        address_b => u0_m0_wo0_wi0_r0_memr61_ab,
        q_b => u0_m0_wo0_wi0_r0_memr61_iq
    );
    u0_m0_wo0_wi0_r0_memr61_q <= u0_m0_wo0_wi0_r0_memr61_iq(35 downto 0);

    -- u0_m0_wo0_wi0_r0_split61(BITSELECT,91)@15
    u0_m0_wo0_wi0_r0_split61_b <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr61_q(11 downto 0));
    u0_m0_wo0_wi0_r0_split61_c <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr61_q(23 downto 12));
    u0_m0_wo0_wi0_r0_split61_d <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr61_q(35 downto 24));

    -- u0_m0_wo0_cm61_lutmem(DUALMEM,444)@13 + 2
    u0_m0_wo0_cm61_lutmem_aa <= u0_m0_wo0_ca81_q;
    u0_m0_wo0_cm61_lutmem_reset0 <= areset;
    u0_m0_wo0_cm61_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 13,
        widthad_a => 8,
        numwords_a => 200,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "REVERB_fir_compiler_ii_0_rtl_core_u0_m0_wo0_cm61_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => '1',
        aclr0 => u0_m0_wo0_cm61_lutmem_reset0,
        clock0 => clk,
        address_a => u0_m0_wo0_cm61_lutmem_aa,
        q_a => u0_m0_wo0_cm61_lutmem_ir
    );
    u0_m0_wo0_cm61_lutmem_r <= u0_m0_wo0_cm61_lutmem_ir(12 downto 0);

    -- u0_m0_wo0_mtree_mult1_20(MULT,258)@15 + 2
    u0_m0_wo0_mtree_mult1_20_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm61_lutmem_r);
    u0_m0_wo0_mtree_mult1_20_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split61_b);
    u0_m0_wo0_mtree_mult1_20_reset <= areset;
    u0_m0_wo0_mtree_mult1_20_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 13,
        lpm_widthb => 12,
        lpm_widthp => 25,
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

    -- u0_m0_wo0_mtree_add0_10(ADD,289)@17 + 1
    u0_m0_wo0_mtree_add0_10_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 25 => u0_m0_wo0_mtree_mult1_20_q(24)) & u0_m0_wo0_mtree_mult1_20_q));
    u0_m0_wo0_mtree_add0_10_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 25 => u0_m0_wo0_mtree_mult1_21_q(24)) & u0_m0_wo0_mtree_mult1_21_q));
    u0_m0_wo0_mtree_add0_10_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_10_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_10_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_10_a) + SIGNED(u0_m0_wo0_mtree_add0_10_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_10_q <= u0_m0_wo0_mtree_add0_10_o(25 downto 0);

    -- u0_m0_wo0_mtree_add1_5(ADD,325)@18 + 1
    u0_m0_wo0_mtree_add1_5_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((26 downto 26 => u0_m0_wo0_mtree_add0_10_q(25)) & u0_m0_wo0_mtree_add0_10_q));
    u0_m0_wo0_mtree_add1_5_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((26 downto 26 => u0_m0_wo0_mtree_add0_11_q(25)) & u0_m0_wo0_mtree_add0_11_q));
    u0_m0_wo0_mtree_add1_5_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_5_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_5_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_5_a) + SIGNED(u0_m0_wo0_mtree_add1_5_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_5_q <= u0_m0_wo0_mtree_add1_5_o(26 downto 0);

    -- u0_m0_wo0_cm62_lutmem(DUALMEM,445)@13 + 2
    u0_m0_wo0_cm62_lutmem_aa <= u0_m0_wo0_ca81_q;
    u0_m0_wo0_cm62_lutmem_reset0 <= areset;
    u0_m0_wo0_cm62_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 13,
        widthad_a => 8,
        numwords_a => 200,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "REVERB_fir_compiler_ii_0_rtl_core_u0_m0_wo0_cm62_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => '1',
        aclr0 => u0_m0_wo0_cm62_lutmem_reset0,
        clock0 => clk,
        address_a => u0_m0_wo0_cm62_lutmem_aa,
        q_a => u0_m0_wo0_cm62_lutmem_ir
    );
    u0_m0_wo0_cm62_lutmem_r <= u0_m0_wo0_cm62_lutmem_ir(12 downto 0);

    -- u0_m0_wo0_mtree_mult1_19(MULT,259)@15 + 2
    u0_m0_wo0_mtree_mult1_19_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm62_lutmem_r);
    u0_m0_wo0_mtree_mult1_19_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split61_c);
    u0_m0_wo0_mtree_mult1_19_reset <= areset;
    u0_m0_wo0_mtree_mult1_19_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 13,
        lpm_widthb => 12,
        lpm_widthp => 25,
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

    -- u0_m0_wo0_cm63_lutmem(DUALMEM,446)@13 + 2
    u0_m0_wo0_cm63_lutmem_aa <= u0_m0_wo0_ca81_q;
    u0_m0_wo0_cm63_lutmem_reset0 <= areset;
    u0_m0_wo0_cm63_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 13,
        widthad_a => 8,
        numwords_a => 200,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "REVERB_fir_compiler_ii_0_rtl_core_u0_m0_wo0_cm63_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => '1',
        aclr0 => u0_m0_wo0_cm63_lutmem_reset0,
        clock0 => clk,
        address_a => u0_m0_wo0_cm63_lutmem_aa,
        q_a => u0_m0_wo0_cm63_lutmem_ir
    );
    u0_m0_wo0_cm63_lutmem_r <= u0_m0_wo0_cm63_lutmem_ir(12 downto 0);

    -- u0_m0_wo0_mtree_mult1_18(MULT,260)@15 + 2
    u0_m0_wo0_mtree_mult1_18_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm63_lutmem_r);
    u0_m0_wo0_mtree_mult1_18_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split61_d);
    u0_m0_wo0_mtree_mult1_18_reset <= areset;
    u0_m0_wo0_mtree_mult1_18_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 13,
        lpm_widthb => 12,
        lpm_widthp => 25,
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

    -- u0_m0_wo0_mtree_add0_9(ADD,288)@17 + 1
    u0_m0_wo0_mtree_add0_9_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 25 => u0_m0_wo0_mtree_mult1_18_q(24)) & u0_m0_wo0_mtree_mult1_18_q));
    u0_m0_wo0_mtree_add0_9_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 25 => u0_m0_wo0_mtree_mult1_19_q(24)) & u0_m0_wo0_mtree_mult1_19_q));
    u0_m0_wo0_mtree_add0_9_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_9_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_9_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_9_a) + SIGNED(u0_m0_wo0_mtree_add0_9_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_9_q <= u0_m0_wo0_mtree_add0_9_o(25 downto 0);

    -- u0_m0_wo0_wi0_r0_join64(BITJOIN,93)@15
    u0_m0_wo0_wi0_r0_join64_q <= u0_m0_wo0_wi0_r0_split64_c & u0_m0_wo0_wi0_r0_split64_b & u0_m0_wo0_wi0_r0_split61_d;

    -- u0_m0_wo0_wi0_r0_memr64(DUALMEM,95)@15
    u0_m0_wo0_wi0_r0_memr64_ia <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_join64_q);
    u0_m0_wo0_wi0_r0_memr64_aa <= u0_m0_wo0_wi0_r0_wa81_q;
    u0_m0_wo0_wi0_r0_memr64_ab <= u0_m0_wo0_wi0_r0_ra81_resize_b;
    u0_m0_wo0_wi0_r0_memr64_dmem : altsyncram
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
        address_a => u0_m0_wo0_wi0_r0_memr64_aa,
        data_a => u0_m0_wo0_wi0_r0_memr64_ia,
        wren_a => u0_m0_wo0_wi0_r0_we81_seq_q(0),
        address_b => u0_m0_wo0_wi0_r0_memr64_ab,
        q_b => u0_m0_wo0_wi0_r0_memr64_iq
    );
    u0_m0_wo0_wi0_r0_memr64_q <= u0_m0_wo0_wi0_r0_memr64_iq(35 downto 0);

    -- u0_m0_wo0_wi0_r0_split64(BITSELECT,94)@15
    u0_m0_wo0_wi0_r0_split64_b <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr64_q(11 downto 0));
    u0_m0_wo0_wi0_r0_split64_c <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr64_q(23 downto 12));
    u0_m0_wo0_wi0_r0_split64_d <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr64_q(35 downto 24));

    -- u0_m0_wo0_cm64_lutmem(DUALMEM,447)@13 + 2
    u0_m0_wo0_cm64_lutmem_aa <= u0_m0_wo0_ca81_q;
    u0_m0_wo0_cm64_lutmem_reset0 <= areset;
    u0_m0_wo0_cm64_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 13,
        widthad_a => 8,
        numwords_a => 200,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "REVERB_fir_compiler_ii_0_rtl_core_u0_m0_wo0_cm64_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => '1',
        aclr0 => u0_m0_wo0_cm64_lutmem_reset0,
        clock0 => clk,
        address_a => u0_m0_wo0_cm64_lutmem_aa,
        q_a => u0_m0_wo0_cm64_lutmem_ir
    );
    u0_m0_wo0_cm64_lutmem_r <= u0_m0_wo0_cm64_lutmem_ir(12 downto 0);

    -- u0_m0_wo0_mtree_mult1_17(MULT,261)@15 + 2
    u0_m0_wo0_mtree_mult1_17_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm64_lutmem_r);
    u0_m0_wo0_mtree_mult1_17_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split64_b);
    u0_m0_wo0_mtree_mult1_17_reset <= areset;
    u0_m0_wo0_mtree_mult1_17_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 13,
        lpm_widthb => 12,
        lpm_widthp => 25,
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

    -- u0_m0_wo0_cm65_lutmem(DUALMEM,448)@13 + 2
    u0_m0_wo0_cm65_lutmem_aa <= u0_m0_wo0_ca81_q;
    u0_m0_wo0_cm65_lutmem_reset0 <= areset;
    u0_m0_wo0_cm65_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 13,
        widthad_a => 8,
        numwords_a => 200,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "REVERB_fir_compiler_ii_0_rtl_core_u0_m0_wo0_cm65_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => '1',
        aclr0 => u0_m0_wo0_cm65_lutmem_reset0,
        clock0 => clk,
        address_a => u0_m0_wo0_cm65_lutmem_aa,
        q_a => u0_m0_wo0_cm65_lutmem_ir
    );
    u0_m0_wo0_cm65_lutmem_r <= u0_m0_wo0_cm65_lutmem_ir(12 downto 0);

    -- u0_m0_wo0_mtree_mult1_16(MULT,262)@15 + 2
    u0_m0_wo0_mtree_mult1_16_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm65_lutmem_r);
    u0_m0_wo0_mtree_mult1_16_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split64_c);
    u0_m0_wo0_mtree_mult1_16_reset <= areset;
    u0_m0_wo0_mtree_mult1_16_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 13,
        lpm_widthb => 12,
        lpm_widthp => 25,
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

    -- u0_m0_wo0_mtree_add0_8(ADD,287)@17 + 1
    u0_m0_wo0_mtree_add0_8_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 25 => u0_m0_wo0_mtree_mult1_16_q(24)) & u0_m0_wo0_mtree_mult1_16_q));
    u0_m0_wo0_mtree_add0_8_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 25 => u0_m0_wo0_mtree_mult1_17_q(24)) & u0_m0_wo0_mtree_mult1_17_q));
    u0_m0_wo0_mtree_add0_8_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_8_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_8_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_8_a) + SIGNED(u0_m0_wo0_mtree_add0_8_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_8_q <= u0_m0_wo0_mtree_add0_8_o(25 downto 0);

    -- u0_m0_wo0_mtree_add1_4(ADD,324)@18 + 1
    u0_m0_wo0_mtree_add1_4_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((26 downto 26 => u0_m0_wo0_mtree_add0_8_q(25)) & u0_m0_wo0_mtree_add0_8_q));
    u0_m0_wo0_mtree_add1_4_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((26 downto 26 => u0_m0_wo0_mtree_add0_9_q(25)) & u0_m0_wo0_mtree_add0_9_q));
    u0_m0_wo0_mtree_add1_4_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_4_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_4_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_4_a) + SIGNED(u0_m0_wo0_mtree_add1_4_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_4_q <= u0_m0_wo0_mtree_add1_4_o(26 downto 0);

    -- u0_m0_wo0_mtree_add2_2(ADD,342)@19 + 1
    u0_m0_wo0_mtree_add2_2_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((27 downto 27 => u0_m0_wo0_mtree_add1_4_q(26)) & u0_m0_wo0_mtree_add1_4_q));
    u0_m0_wo0_mtree_add2_2_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((27 downto 27 => u0_m0_wo0_mtree_add1_5_q(26)) & u0_m0_wo0_mtree_add1_5_q));
    u0_m0_wo0_mtree_add2_2_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add2_2_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add2_2_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add2_2_a) + SIGNED(u0_m0_wo0_mtree_add2_2_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add2_2_q <= u0_m0_wo0_mtree_add2_2_o(27 downto 0);

    -- u0_m0_wo0_mtree_add3_1(ADD,351)@20 + 1
    u0_m0_wo0_mtree_add3_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((28 downto 28 => u0_m0_wo0_mtree_add2_2_q(27)) & u0_m0_wo0_mtree_add2_2_q));
    u0_m0_wo0_mtree_add3_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((28 downto 28 => u0_m0_wo0_mtree_add2_3_q(27)) & u0_m0_wo0_mtree_add2_3_q));
    u0_m0_wo0_mtree_add3_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add3_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add3_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add3_1_a) + SIGNED(u0_m0_wo0_mtree_add3_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add3_1_q <= u0_m0_wo0_mtree_add3_1_o(28 downto 0);

    -- u0_m0_wo0_cm66_lutmem(DUALMEM,449)@13 + 2
    u0_m0_wo0_cm66_lutmem_aa <= u0_m0_wo0_ca81_q;
    u0_m0_wo0_cm66_lutmem_reset0 <= areset;
    u0_m0_wo0_cm66_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 13,
        widthad_a => 8,
        numwords_a => 200,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "REVERB_fir_compiler_ii_0_rtl_core_u0_m0_wo0_cm66_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => '1',
        aclr0 => u0_m0_wo0_cm66_lutmem_reset0,
        clock0 => clk,
        address_a => u0_m0_wo0_cm66_lutmem_aa,
        q_a => u0_m0_wo0_cm66_lutmem_ir
    );
    u0_m0_wo0_cm66_lutmem_r <= u0_m0_wo0_cm66_lutmem_ir(12 downto 0);

    -- u0_m0_wo0_mtree_mult1_15(MULT,263)@15 + 2
    u0_m0_wo0_mtree_mult1_15_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm66_lutmem_r);
    u0_m0_wo0_mtree_mult1_15_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split64_d);
    u0_m0_wo0_mtree_mult1_15_reset <= areset;
    u0_m0_wo0_mtree_mult1_15_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 13,
        lpm_widthb => 12,
        lpm_widthp => 25,
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

    -- u0_m0_wo0_wi0_r0_join67(BITJOIN,96)@15
    u0_m0_wo0_wi0_r0_join67_q <= u0_m0_wo0_wi0_r0_split67_c & u0_m0_wo0_wi0_r0_split67_b & u0_m0_wo0_wi0_r0_split64_d;

    -- u0_m0_wo0_wi0_r0_memr67(DUALMEM,98)@15
    u0_m0_wo0_wi0_r0_memr67_ia <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_join67_q);
    u0_m0_wo0_wi0_r0_memr67_aa <= u0_m0_wo0_wi0_r0_wa81_q;
    u0_m0_wo0_wi0_r0_memr67_ab <= u0_m0_wo0_wi0_r0_ra81_resize_b;
    u0_m0_wo0_wi0_r0_memr67_dmem : altsyncram
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
        address_a => u0_m0_wo0_wi0_r0_memr67_aa,
        data_a => u0_m0_wo0_wi0_r0_memr67_ia,
        wren_a => u0_m0_wo0_wi0_r0_we81_seq_q(0),
        address_b => u0_m0_wo0_wi0_r0_memr67_ab,
        q_b => u0_m0_wo0_wi0_r0_memr67_iq
    );
    u0_m0_wo0_wi0_r0_memr67_q <= u0_m0_wo0_wi0_r0_memr67_iq(35 downto 0);

    -- u0_m0_wo0_wi0_r0_split67(BITSELECT,97)@15
    u0_m0_wo0_wi0_r0_split67_b <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr67_q(11 downto 0));
    u0_m0_wo0_wi0_r0_split67_c <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr67_q(23 downto 12));
    u0_m0_wo0_wi0_r0_split67_d <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr67_q(35 downto 24));

    -- u0_m0_wo0_cm67_lutmem(DUALMEM,450)@13 + 2
    u0_m0_wo0_cm67_lutmem_aa <= u0_m0_wo0_ca81_q;
    u0_m0_wo0_cm67_lutmem_reset0 <= areset;
    u0_m0_wo0_cm67_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 13,
        widthad_a => 8,
        numwords_a => 200,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "REVERB_fir_compiler_ii_0_rtl_core_u0_m0_wo0_cm67_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => '1',
        aclr0 => u0_m0_wo0_cm67_lutmem_reset0,
        clock0 => clk,
        address_a => u0_m0_wo0_cm67_lutmem_aa,
        q_a => u0_m0_wo0_cm67_lutmem_ir
    );
    u0_m0_wo0_cm67_lutmem_r <= u0_m0_wo0_cm67_lutmem_ir(12 downto 0);

    -- u0_m0_wo0_mtree_mult1_14(MULT,264)@15 + 2
    u0_m0_wo0_mtree_mult1_14_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm67_lutmem_r);
    u0_m0_wo0_mtree_mult1_14_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split67_b);
    u0_m0_wo0_mtree_mult1_14_reset <= areset;
    u0_m0_wo0_mtree_mult1_14_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 13,
        lpm_widthb => 12,
        lpm_widthp => 25,
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

    -- u0_m0_wo0_mtree_add0_7(ADD,286)@17 + 1
    u0_m0_wo0_mtree_add0_7_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 25 => u0_m0_wo0_mtree_mult1_14_q(24)) & u0_m0_wo0_mtree_mult1_14_q));
    u0_m0_wo0_mtree_add0_7_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 25 => u0_m0_wo0_mtree_mult1_15_q(24)) & u0_m0_wo0_mtree_mult1_15_q));
    u0_m0_wo0_mtree_add0_7_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_7_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_7_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_7_a) + SIGNED(u0_m0_wo0_mtree_add0_7_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_7_q <= u0_m0_wo0_mtree_add0_7_o(25 downto 0);

    -- u0_m0_wo0_cm68_lutmem(DUALMEM,451)@13 + 2
    u0_m0_wo0_cm68_lutmem_aa <= u0_m0_wo0_ca81_q;
    u0_m0_wo0_cm68_lutmem_reset0 <= areset;
    u0_m0_wo0_cm68_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 13,
        widthad_a => 8,
        numwords_a => 200,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "REVERB_fir_compiler_ii_0_rtl_core_u0_m0_wo0_cm68_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => '1',
        aclr0 => u0_m0_wo0_cm68_lutmem_reset0,
        clock0 => clk,
        address_a => u0_m0_wo0_cm68_lutmem_aa,
        q_a => u0_m0_wo0_cm68_lutmem_ir
    );
    u0_m0_wo0_cm68_lutmem_r <= u0_m0_wo0_cm68_lutmem_ir(12 downto 0);

    -- u0_m0_wo0_mtree_mult1_13(MULT,265)@15 + 2
    u0_m0_wo0_mtree_mult1_13_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm68_lutmem_r);
    u0_m0_wo0_mtree_mult1_13_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split67_c);
    u0_m0_wo0_mtree_mult1_13_reset <= areset;
    u0_m0_wo0_mtree_mult1_13_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 13,
        lpm_widthb => 12,
        lpm_widthp => 25,
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

    -- u0_m0_wo0_cm69_lutmem(DUALMEM,452)@13 + 2
    u0_m0_wo0_cm69_lutmem_aa <= u0_m0_wo0_ca81_q;
    u0_m0_wo0_cm69_lutmem_reset0 <= areset;
    u0_m0_wo0_cm69_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 13,
        widthad_a => 8,
        numwords_a => 200,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "REVERB_fir_compiler_ii_0_rtl_core_u0_m0_wo0_cm69_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => '1',
        aclr0 => u0_m0_wo0_cm69_lutmem_reset0,
        clock0 => clk,
        address_a => u0_m0_wo0_cm69_lutmem_aa,
        q_a => u0_m0_wo0_cm69_lutmem_ir
    );
    u0_m0_wo0_cm69_lutmem_r <= u0_m0_wo0_cm69_lutmem_ir(12 downto 0);

    -- u0_m0_wo0_mtree_mult1_12(MULT,266)@15 + 2
    u0_m0_wo0_mtree_mult1_12_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm69_lutmem_r);
    u0_m0_wo0_mtree_mult1_12_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split67_d);
    u0_m0_wo0_mtree_mult1_12_reset <= areset;
    u0_m0_wo0_mtree_mult1_12_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 13,
        lpm_widthb => 12,
        lpm_widthp => 25,
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

    -- u0_m0_wo0_mtree_add0_6(ADD,285)@17 + 1
    u0_m0_wo0_mtree_add0_6_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 25 => u0_m0_wo0_mtree_mult1_12_q(24)) & u0_m0_wo0_mtree_mult1_12_q));
    u0_m0_wo0_mtree_add0_6_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 25 => u0_m0_wo0_mtree_mult1_13_q(24)) & u0_m0_wo0_mtree_mult1_13_q));
    u0_m0_wo0_mtree_add0_6_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_6_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_6_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_6_a) + SIGNED(u0_m0_wo0_mtree_add0_6_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_6_q <= u0_m0_wo0_mtree_add0_6_o(25 downto 0);

    -- u0_m0_wo0_mtree_add1_3(ADD,323)@18 + 1
    u0_m0_wo0_mtree_add1_3_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((26 downto 26 => u0_m0_wo0_mtree_add0_6_q(25)) & u0_m0_wo0_mtree_add0_6_q));
    u0_m0_wo0_mtree_add1_3_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((26 downto 26 => u0_m0_wo0_mtree_add0_7_q(25)) & u0_m0_wo0_mtree_add0_7_q));
    u0_m0_wo0_mtree_add1_3_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_3_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_3_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_3_a) + SIGNED(u0_m0_wo0_mtree_add1_3_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_3_q <= u0_m0_wo0_mtree_add1_3_o(26 downto 0);

    -- u0_m0_wo0_wi0_r0_join70(BITJOIN,99)@15
    u0_m0_wo0_wi0_r0_join70_q <= u0_m0_wo0_wi0_r0_split70_c & u0_m0_wo0_wi0_r0_split70_b & u0_m0_wo0_wi0_r0_split67_d;

    -- u0_m0_wo0_wi0_r0_memr70(DUALMEM,101)@15
    u0_m0_wo0_wi0_r0_memr70_ia <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_join70_q);
    u0_m0_wo0_wi0_r0_memr70_aa <= u0_m0_wo0_wi0_r0_wa81_q;
    u0_m0_wo0_wi0_r0_memr70_ab <= u0_m0_wo0_wi0_r0_ra81_resize_b;
    u0_m0_wo0_wi0_r0_memr70_dmem : altsyncram
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
        address_a => u0_m0_wo0_wi0_r0_memr70_aa,
        data_a => u0_m0_wo0_wi0_r0_memr70_ia,
        wren_a => u0_m0_wo0_wi0_r0_we81_seq_q(0),
        address_b => u0_m0_wo0_wi0_r0_memr70_ab,
        q_b => u0_m0_wo0_wi0_r0_memr70_iq
    );
    u0_m0_wo0_wi0_r0_memr70_q <= u0_m0_wo0_wi0_r0_memr70_iq(35 downto 0);

    -- u0_m0_wo0_wi0_r0_split70(BITSELECT,100)@15
    u0_m0_wo0_wi0_r0_split70_b <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr70_q(11 downto 0));
    u0_m0_wo0_wi0_r0_split70_c <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr70_q(23 downto 12));
    u0_m0_wo0_wi0_r0_split70_d <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr70_q(35 downto 24));

    -- u0_m0_wo0_cm70_lutmem(DUALMEM,453)@13 + 2
    u0_m0_wo0_cm70_lutmem_aa <= u0_m0_wo0_ca81_q;
    u0_m0_wo0_cm70_lutmem_reset0 <= areset;
    u0_m0_wo0_cm70_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 13,
        widthad_a => 8,
        numwords_a => 200,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "REVERB_fir_compiler_ii_0_rtl_core_u0_m0_wo0_cm70_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => '1',
        aclr0 => u0_m0_wo0_cm70_lutmem_reset0,
        clock0 => clk,
        address_a => u0_m0_wo0_cm70_lutmem_aa,
        q_a => u0_m0_wo0_cm70_lutmem_ir
    );
    u0_m0_wo0_cm70_lutmem_r <= u0_m0_wo0_cm70_lutmem_ir(12 downto 0);

    -- u0_m0_wo0_mtree_mult1_11(MULT,267)@15 + 2
    u0_m0_wo0_mtree_mult1_11_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm70_lutmem_r);
    u0_m0_wo0_mtree_mult1_11_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split70_b);
    u0_m0_wo0_mtree_mult1_11_reset <= areset;
    u0_m0_wo0_mtree_mult1_11_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 13,
        lpm_widthb => 12,
        lpm_widthp => 25,
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

    -- u0_m0_wo0_cm71_lutmem(DUALMEM,454)@13 + 2
    u0_m0_wo0_cm71_lutmem_aa <= u0_m0_wo0_ca81_q;
    u0_m0_wo0_cm71_lutmem_reset0 <= areset;
    u0_m0_wo0_cm71_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 13,
        widthad_a => 8,
        numwords_a => 200,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "REVERB_fir_compiler_ii_0_rtl_core_u0_m0_wo0_cm71_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => '1',
        aclr0 => u0_m0_wo0_cm71_lutmem_reset0,
        clock0 => clk,
        address_a => u0_m0_wo0_cm71_lutmem_aa,
        q_a => u0_m0_wo0_cm71_lutmem_ir
    );
    u0_m0_wo0_cm71_lutmem_r <= u0_m0_wo0_cm71_lutmem_ir(12 downto 0);

    -- u0_m0_wo0_mtree_mult1_10(MULT,268)@15 + 2
    u0_m0_wo0_mtree_mult1_10_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm71_lutmem_r);
    u0_m0_wo0_mtree_mult1_10_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split70_c);
    u0_m0_wo0_mtree_mult1_10_reset <= areset;
    u0_m0_wo0_mtree_mult1_10_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 13,
        lpm_widthb => 12,
        lpm_widthp => 25,
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

    -- u0_m0_wo0_mtree_add0_5(ADD,284)@17 + 1
    u0_m0_wo0_mtree_add0_5_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 25 => u0_m0_wo0_mtree_mult1_10_q(24)) & u0_m0_wo0_mtree_mult1_10_q));
    u0_m0_wo0_mtree_add0_5_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 25 => u0_m0_wo0_mtree_mult1_11_q(24)) & u0_m0_wo0_mtree_mult1_11_q));
    u0_m0_wo0_mtree_add0_5_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_5_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_5_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_5_a) + SIGNED(u0_m0_wo0_mtree_add0_5_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_5_q <= u0_m0_wo0_mtree_add0_5_o(25 downto 0);

    -- u0_m0_wo0_cm72_lutmem(DUALMEM,455)@13 + 2
    u0_m0_wo0_cm72_lutmem_aa <= u0_m0_wo0_ca81_q;
    u0_m0_wo0_cm72_lutmem_reset0 <= areset;
    u0_m0_wo0_cm72_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 13,
        widthad_a => 8,
        numwords_a => 200,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "REVERB_fir_compiler_ii_0_rtl_core_u0_m0_wo0_cm72_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => '1',
        aclr0 => u0_m0_wo0_cm72_lutmem_reset0,
        clock0 => clk,
        address_a => u0_m0_wo0_cm72_lutmem_aa,
        q_a => u0_m0_wo0_cm72_lutmem_ir
    );
    u0_m0_wo0_cm72_lutmem_r <= u0_m0_wo0_cm72_lutmem_ir(12 downto 0);

    -- u0_m0_wo0_mtree_mult1_9(MULT,269)@15 + 2
    u0_m0_wo0_mtree_mult1_9_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm72_lutmem_r);
    u0_m0_wo0_mtree_mult1_9_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split70_d);
    u0_m0_wo0_mtree_mult1_9_reset <= areset;
    u0_m0_wo0_mtree_mult1_9_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 13,
        lpm_widthb => 12,
        lpm_widthp => 25,
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

    -- u0_m0_wo0_wi0_r0_join73(BITJOIN,102)@15
    u0_m0_wo0_wi0_r0_join73_q <= u0_m0_wo0_wi0_r0_split73_c & u0_m0_wo0_wi0_r0_split73_b & u0_m0_wo0_wi0_r0_split70_d;

    -- u0_m0_wo0_wi0_r0_memr73(DUALMEM,104)@15
    u0_m0_wo0_wi0_r0_memr73_ia <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_join73_q);
    u0_m0_wo0_wi0_r0_memr73_aa <= u0_m0_wo0_wi0_r0_wa81_q;
    u0_m0_wo0_wi0_r0_memr73_ab <= u0_m0_wo0_wi0_r0_ra81_resize_b;
    u0_m0_wo0_wi0_r0_memr73_dmem : altsyncram
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
        address_a => u0_m0_wo0_wi0_r0_memr73_aa,
        data_a => u0_m0_wo0_wi0_r0_memr73_ia,
        wren_a => u0_m0_wo0_wi0_r0_we81_seq_q(0),
        address_b => u0_m0_wo0_wi0_r0_memr73_ab,
        q_b => u0_m0_wo0_wi0_r0_memr73_iq
    );
    u0_m0_wo0_wi0_r0_memr73_q <= u0_m0_wo0_wi0_r0_memr73_iq(35 downto 0);

    -- u0_m0_wo0_wi0_r0_split73(BITSELECT,103)@15
    u0_m0_wo0_wi0_r0_split73_b <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr73_q(11 downto 0));
    u0_m0_wo0_wi0_r0_split73_c <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr73_q(23 downto 12));
    u0_m0_wo0_wi0_r0_split73_d <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr73_q(35 downto 24));

    -- u0_m0_wo0_cm73_lutmem(DUALMEM,456)@13 + 2
    u0_m0_wo0_cm73_lutmem_aa <= u0_m0_wo0_ca81_q;
    u0_m0_wo0_cm73_lutmem_reset0 <= areset;
    u0_m0_wo0_cm73_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 13,
        widthad_a => 8,
        numwords_a => 200,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "REVERB_fir_compiler_ii_0_rtl_core_u0_m0_wo0_cm73_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => '1',
        aclr0 => u0_m0_wo0_cm73_lutmem_reset0,
        clock0 => clk,
        address_a => u0_m0_wo0_cm73_lutmem_aa,
        q_a => u0_m0_wo0_cm73_lutmem_ir
    );
    u0_m0_wo0_cm73_lutmem_r <= u0_m0_wo0_cm73_lutmem_ir(12 downto 0);

    -- u0_m0_wo0_mtree_mult1_8(MULT,270)@15 + 2
    u0_m0_wo0_mtree_mult1_8_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm73_lutmem_r);
    u0_m0_wo0_mtree_mult1_8_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split73_b);
    u0_m0_wo0_mtree_mult1_8_reset <= areset;
    u0_m0_wo0_mtree_mult1_8_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 13,
        lpm_widthb => 12,
        lpm_widthp => 25,
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

    -- u0_m0_wo0_mtree_add0_4(ADD,283)@17 + 1
    u0_m0_wo0_mtree_add0_4_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 25 => u0_m0_wo0_mtree_mult1_8_q(24)) & u0_m0_wo0_mtree_mult1_8_q));
    u0_m0_wo0_mtree_add0_4_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 25 => u0_m0_wo0_mtree_mult1_9_q(24)) & u0_m0_wo0_mtree_mult1_9_q));
    u0_m0_wo0_mtree_add0_4_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_4_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_4_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_4_a) + SIGNED(u0_m0_wo0_mtree_add0_4_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_4_q <= u0_m0_wo0_mtree_add0_4_o(25 downto 0);

    -- u0_m0_wo0_mtree_add1_2(ADD,322)@18 + 1
    u0_m0_wo0_mtree_add1_2_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((26 downto 26 => u0_m0_wo0_mtree_add0_4_q(25)) & u0_m0_wo0_mtree_add0_4_q));
    u0_m0_wo0_mtree_add1_2_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((26 downto 26 => u0_m0_wo0_mtree_add0_5_q(25)) & u0_m0_wo0_mtree_add0_5_q));
    u0_m0_wo0_mtree_add1_2_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_2_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_2_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_2_a) + SIGNED(u0_m0_wo0_mtree_add1_2_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_2_q <= u0_m0_wo0_mtree_add1_2_o(26 downto 0);

    -- u0_m0_wo0_mtree_add2_1(ADD,341)@19 + 1
    u0_m0_wo0_mtree_add2_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((27 downto 27 => u0_m0_wo0_mtree_add1_2_q(26)) & u0_m0_wo0_mtree_add1_2_q));
    u0_m0_wo0_mtree_add2_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((27 downto 27 => u0_m0_wo0_mtree_add1_3_q(26)) & u0_m0_wo0_mtree_add1_3_q));
    u0_m0_wo0_mtree_add2_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add2_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add2_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add2_1_a) + SIGNED(u0_m0_wo0_mtree_add2_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add2_1_q <= u0_m0_wo0_mtree_add2_1_o(27 downto 0);

    -- d_u0_m0_wo0_wi0_r0_split73_c_16(DELAY,485)@15 + 1
    d_u0_m0_wo0_wi0_r0_split73_c_16 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_split73_c, xout => d_u0_m0_wo0_wi0_r0_split73_c_16_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_cm74_lutmem(DUALMEM,457)@14 + 2
    u0_m0_wo0_cm74_lutmem_aa <= d_u0_m0_wo0_ca81_q_14_q;
    u0_m0_wo0_cm74_lutmem_reset0 <= areset;
    u0_m0_wo0_cm74_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 13,
        widthad_a => 8,
        numwords_a => 200,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "REVERB_fir_compiler_ii_0_rtl_core_u0_m0_wo0_cm74_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => '1',
        aclr0 => u0_m0_wo0_cm74_lutmem_reset0,
        clock0 => clk,
        address_a => u0_m0_wo0_cm74_lutmem_aa,
        q_a => u0_m0_wo0_cm74_lutmem_ir
    );
    u0_m0_wo0_cm74_lutmem_r <= u0_m0_wo0_cm74_lutmem_ir(12 downto 0);

    -- u0_m0_wo0_mtree_mult1_7(MULT,271)@16 + 2
    u0_m0_wo0_mtree_mult1_7_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm74_lutmem_r);
    u0_m0_wo0_mtree_mult1_7_b0 <= STD_LOGIC_VECTOR(d_u0_m0_wo0_wi0_r0_split73_c_16_q);
    u0_m0_wo0_mtree_mult1_7_reset <= areset;
    u0_m0_wo0_mtree_mult1_7_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 13,
        lpm_widthb => 12,
        lpm_widthp => 25,
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

    -- d_u0_m0_wo0_wi0_r0_split73_d_16(DELAY,486)@15 + 1
    d_u0_m0_wo0_wi0_r0_split73_d_16 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_split73_d, xout => d_u0_m0_wo0_wi0_r0_split73_d_16_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_cm75_lutmem(DUALMEM,458)@14 + 2
    u0_m0_wo0_cm75_lutmem_aa <= d_u0_m0_wo0_ca81_q_14_q;
    u0_m0_wo0_cm75_lutmem_reset0 <= areset;
    u0_m0_wo0_cm75_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 13,
        widthad_a => 8,
        numwords_a => 200,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "REVERB_fir_compiler_ii_0_rtl_core_u0_m0_wo0_cm75_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => '1',
        aclr0 => u0_m0_wo0_cm75_lutmem_reset0,
        clock0 => clk,
        address_a => u0_m0_wo0_cm75_lutmem_aa,
        q_a => u0_m0_wo0_cm75_lutmem_ir
    );
    u0_m0_wo0_cm75_lutmem_r <= u0_m0_wo0_cm75_lutmem_ir(12 downto 0);

    -- u0_m0_wo0_mtree_mult1_6(MULT,272)@16 + 2
    u0_m0_wo0_mtree_mult1_6_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm75_lutmem_r);
    u0_m0_wo0_mtree_mult1_6_b0 <= STD_LOGIC_VECTOR(d_u0_m0_wo0_wi0_r0_split73_d_16_q);
    u0_m0_wo0_mtree_mult1_6_reset <= areset;
    u0_m0_wo0_mtree_mult1_6_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 13,
        lpm_widthb => 12,
        lpm_widthp => 25,
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

    -- u0_m0_wo0_mtree_add0_3(ADD,282)@18 + 1
    u0_m0_wo0_mtree_add0_3_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 25 => u0_m0_wo0_mtree_mult1_6_q(24)) & u0_m0_wo0_mtree_mult1_6_q));
    u0_m0_wo0_mtree_add0_3_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 25 => u0_m0_wo0_mtree_mult1_7_q(24)) & u0_m0_wo0_mtree_mult1_7_q));
    u0_m0_wo0_mtree_add0_3_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_3_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_3_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_3_a) + SIGNED(u0_m0_wo0_mtree_add0_3_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_3_q <= u0_m0_wo0_mtree_add0_3_o(25 downto 0);

    -- u0_m0_wo0_wi0_r0_join76(BITJOIN,105)@15
    u0_m0_wo0_wi0_r0_join76_q <= u0_m0_wo0_wi0_r0_split76_c & u0_m0_wo0_wi0_r0_split76_b & u0_m0_wo0_wi0_r0_split73_d;

    -- u0_m0_wo0_wi0_r0_memr76(DUALMEM,107)@15
    u0_m0_wo0_wi0_r0_memr76_ia <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_join76_q);
    u0_m0_wo0_wi0_r0_memr76_aa <= u0_m0_wo0_wi0_r0_wa81_q;
    u0_m0_wo0_wi0_r0_memr76_ab <= u0_m0_wo0_wi0_r0_ra81_resize_b;
    u0_m0_wo0_wi0_r0_memr76_dmem : altsyncram
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
        address_a => u0_m0_wo0_wi0_r0_memr76_aa,
        data_a => u0_m0_wo0_wi0_r0_memr76_ia,
        wren_a => u0_m0_wo0_wi0_r0_we81_seq_q(0),
        address_b => u0_m0_wo0_wi0_r0_memr76_ab,
        q_b => u0_m0_wo0_wi0_r0_memr76_iq
    );
    u0_m0_wo0_wi0_r0_memr76_q <= u0_m0_wo0_wi0_r0_memr76_iq(35 downto 0);

    -- u0_m0_wo0_wi0_r0_split76(BITSELECT,106)@15
    u0_m0_wo0_wi0_r0_split76_b <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr76_q(11 downto 0));
    u0_m0_wo0_wi0_r0_split76_c <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr76_q(23 downto 12));
    u0_m0_wo0_wi0_r0_split76_d <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr76_q(35 downto 24));

    -- d_u0_m0_wo0_wi0_r0_split76_b_16(DELAY,487)@15 + 1
    d_u0_m0_wo0_wi0_r0_split76_b_16 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_split76_b, xout => d_u0_m0_wo0_wi0_r0_split76_b_16_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_cm76_lutmem(DUALMEM,459)@14 + 2
    u0_m0_wo0_cm76_lutmem_aa <= d_u0_m0_wo0_ca81_q_14_q;
    u0_m0_wo0_cm76_lutmem_reset0 <= areset;
    u0_m0_wo0_cm76_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 13,
        widthad_a => 8,
        numwords_a => 200,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "REVERB_fir_compiler_ii_0_rtl_core_u0_m0_wo0_cm76_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => '1',
        aclr0 => u0_m0_wo0_cm76_lutmem_reset0,
        clock0 => clk,
        address_a => u0_m0_wo0_cm76_lutmem_aa,
        q_a => u0_m0_wo0_cm76_lutmem_ir
    );
    u0_m0_wo0_cm76_lutmem_r <= u0_m0_wo0_cm76_lutmem_ir(12 downto 0);

    -- u0_m0_wo0_mtree_mult1_5(MULT,273)@16 + 2
    u0_m0_wo0_mtree_mult1_5_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm76_lutmem_r);
    u0_m0_wo0_mtree_mult1_5_b0 <= STD_LOGIC_VECTOR(d_u0_m0_wo0_wi0_r0_split76_b_16_q);
    u0_m0_wo0_mtree_mult1_5_reset <= areset;
    u0_m0_wo0_mtree_mult1_5_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 13,
        lpm_widthb => 12,
        lpm_widthp => 25,
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

    -- d_u0_m0_wo0_wi0_r0_split76_c_16(DELAY,488)@15 + 1
    d_u0_m0_wo0_wi0_r0_split76_c_16 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_split76_c, xout => d_u0_m0_wo0_wi0_r0_split76_c_16_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_cm77_lutmem(DUALMEM,460)@14 + 2
    u0_m0_wo0_cm77_lutmem_aa <= d_u0_m0_wo0_ca81_q_14_q;
    u0_m0_wo0_cm77_lutmem_reset0 <= areset;
    u0_m0_wo0_cm77_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 13,
        widthad_a => 8,
        numwords_a => 200,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "REVERB_fir_compiler_ii_0_rtl_core_u0_m0_wo0_cm77_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => '1',
        aclr0 => u0_m0_wo0_cm77_lutmem_reset0,
        clock0 => clk,
        address_a => u0_m0_wo0_cm77_lutmem_aa,
        q_a => u0_m0_wo0_cm77_lutmem_ir
    );
    u0_m0_wo0_cm77_lutmem_r <= u0_m0_wo0_cm77_lutmem_ir(12 downto 0);

    -- u0_m0_wo0_mtree_mult1_4(MULT,274)@16 + 2
    u0_m0_wo0_mtree_mult1_4_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm77_lutmem_r);
    u0_m0_wo0_mtree_mult1_4_b0 <= STD_LOGIC_VECTOR(d_u0_m0_wo0_wi0_r0_split76_c_16_q);
    u0_m0_wo0_mtree_mult1_4_reset <= areset;
    u0_m0_wo0_mtree_mult1_4_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 13,
        lpm_widthb => 12,
        lpm_widthp => 25,
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

    -- u0_m0_wo0_mtree_add0_2(ADD,281)@18 + 1
    u0_m0_wo0_mtree_add0_2_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 25 => u0_m0_wo0_mtree_mult1_4_q(24)) & u0_m0_wo0_mtree_mult1_4_q));
    u0_m0_wo0_mtree_add0_2_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 25 => u0_m0_wo0_mtree_mult1_5_q(24)) & u0_m0_wo0_mtree_mult1_5_q));
    u0_m0_wo0_mtree_add0_2_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_2_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_2_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_2_a) + SIGNED(u0_m0_wo0_mtree_add0_2_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_2_q <= u0_m0_wo0_mtree_add0_2_o(25 downto 0);

    -- u0_m0_wo0_mtree_add1_1(ADD,321)@19 + 1
    u0_m0_wo0_mtree_add1_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((26 downto 26 => u0_m0_wo0_mtree_add0_2_q(25)) & u0_m0_wo0_mtree_add0_2_q));
    u0_m0_wo0_mtree_add1_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((26 downto 26 => u0_m0_wo0_mtree_add0_3_q(25)) & u0_m0_wo0_mtree_add0_3_q));
    u0_m0_wo0_mtree_add1_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_1_a) + SIGNED(u0_m0_wo0_mtree_add1_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_1_q <= u0_m0_wo0_mtree_add1_1_o(26 downto 0);

    -- u0_m0_wo0_mtree_add3_0(ADD,350)@20 + 1
    u0_m0_wo0_mtree_add3_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((28 downto 27 => u0_m0_wo0_mtree_add1_1_q(26)) & u0_m0_wo0_mtree_add1_1_q));
    u0_m0_wo0_mtree_add3_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((28 downto 28 => u0_m0_wo0_mtree_add2_1_q(27)) & u0_m0_wo0_mtree_add2_1_q));
    u0_m0_wo0_mtree_add3_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add3_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add3_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add3_0_a) + SIGNED(u0_m0_wo0_mtree_add3_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add3_0_q <= u0_m0_wo0_mtree_add3_0_o(28 downto 0);

    -- u0_m0_wo0_mtree_add4_0(ADD,355)@21 + 1
    u0_m0_wo0_mtree_add4_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((29 downto 29 => u0_m0_wo0_mtree_add3_0_q(28)) & u0_m0_wo0_mtree_add3_0_q));
    u0_m0_wo0_mtree_add4_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((29 downto 29 => u0_m0_wo0_mtree_add3_1_q(28)) & u0_m0_wo0_mtree_add3_1_q));
    u0_m0_wo0_mtree_add4_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add4_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add4_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add4_0_a) + SIGNED(u0_m0_wo0_mtree_add4_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add4_0_q <= u0_m0_wo0_mtree_add4_0_o(29 downto 0);

    -- u0_m0_wo0_mtree_add5_0(ADD,358)@22 + 1
    u0_m0_wo0_mtree_add5_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((30 downto 30 => u0_m0_wo0_mtree_add4_0_q(29)) & u0_m0_wo0_mtree_add4_0_q));
    u0_m0_wo0_mtree_add5_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((30 downto 30 => u0_m0_wo0_mtree_add4_1_q(29)) & u0_m0_wo0_mtree_add4_1_q));
    u0_m0_wo0_mtree_add5_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add5_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add5_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add5_0_a) + SIGNED(u0_m0_wo0_mtree_add5_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add5_0_q <= u0_m0_wo0_mtree_add5_0_o(30 downto 0);

    -- u0_m0_wo0_mtree_add6_0(ADD,359)@23 + 1
    u0_m0_wo0_mtree_add6_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((31 downto 31 => u0_m0_wo0_mtree_add5_0_q(30)) & u0_m0_wo0_mtree_add5_0_q));
    u0_m0_wo0_mtree_add6_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((31 downto 30 => u0_m0_wo0_mtree_add4_2_q(29)) & u0_m0_wo0_mtree_add4_2_q));
    u0_m0_wo0_mtree_add6_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add6_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add6_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add6_0_a) + SIGNED(u0_m0_wo0_mtree_add6_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add6_0_q <= u0_m0_wo0_mtree_add6_0_o(31 downto 0);

    -- u0_m0_wo0_accum(ADD,361)@24 + 1
    u0_m0_wo0_accum_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((38 downto 32 => u0_m0_wo0_mtree_add6_0_q(31)) & u0_m0_wo0_mtree_add6_0_q));
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
    u0_m0_wo0_accum_q <= u0_m0_wo0_accum_o(38 downto 0);

    -- GND(CONSTANT,0)@0
    GND_q <= "0";

    -- u0_m0_wo0_oseq(SEQUENCE,362)@23 + 1
    u0_m0_wo0_oseq_clkproc: PROCESS (clk, areset)
        variable u0_m0_wo0_oseq_c : SIGNED(9 downto 0);
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_oseq_c := "0011000111";
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
                    u0_m0_wo0_oseq_c := u0_m0_wo0_oseq_c + 199;
                ELSE
                    u0_m0_wo0_oseq_c := u0_m0_wo0_oseq_c - 1;
                END IF;
                u0_m0_wo0_oseq_q <= STD_LOGIC_VECTOR(u0_m0_wo0_oseq_c(9 downto 9));
            END IF;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_oseq_gated(LOGICAL,363)@24
    u0_m0_wo0_oseq_gated_q <= u0_m0_wo0_oseq_q and d_u0_m0_wo0_compute_q_24_q;

    -- u0_m0_wo0_oseq_gated_reg(REG,364)@24 + 1
    u0_m0_wo0_oseq_gated_reg_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_oseq_gated_reg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_oseq_gated_reg_q <= STD_LOGIC_VECTOR(u0_m0_wo0_oseq_gated_q);
        END IF;
    END PROCESS;

    -- xOut(PORTOUT,369)@25 + 1
    xOut_v <= u0_m0_wo0_oseq_gated_reg_q;
    xOut_c <= STD_LOGIC_VECTOR("0000000" & GND_q);
    xOut_0 <= u0_m0_wo0_accum_q;

    -- u0_m0_wo0_wi0_r0_memr79(DUALMEM,110)@15
    u0_m0_wo0_wi0_r0_memr79_ia <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_join79_q);
    u0_m0_wo0_wi0_r0_memr79_aa <= u0_m0_wo0_wi0_r0_wa81_q;
    u0_m0_wo0_wi0_r0_memr79_ab <= u0_m0_wo0_wi0_r0_ra81_resize_b;
    u0_m0_wo0_wi0_r0_memr79_dmem : altsyncram
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
        address_a => u0_m0_wo0_wi0_r0_memr79_aa,
        data_a => u0_m0_wo0_wi0_r0_memr79_ia,
        wren_a => u0_m0_wo0_wi0_r0_we81_seq_q(0),
        address_b => u0_m0_wo0_wi0_r0_memr79_ab,
        q_b => u0_m0_wo0_wi0_r0_memr79_iq
    );
    u0_m0_wo0_wi0_r0_memr79_q <= u0_m0_wo0_wi0_r0_memr79_iq(35 downto 0);

    -- u0_m0_wo0_wi0_r0_split79(BITSELECT,109)@15
    u0_m0_wo0_wi0_r0_split79_b <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr79_q(11 downto 0));
    u0_m0_wo0_wi0_r0_split79_c <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr79_q(23 downto 12));

    -- u0_m0_wo0_wi0_r0_join79(BITJOIN,108)@15
    u0_m0_wo0_wi0_r0_join79_q <= u0_m0_wo0_wi0_r0_split79_c & u0_m0_wo0_wi0_r0_split79_b & u0_m0_wo0_wi0_r0_split76_d;

END normal;
