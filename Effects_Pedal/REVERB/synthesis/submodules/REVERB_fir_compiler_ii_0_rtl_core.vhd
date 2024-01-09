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
-- VHDL created on Mon Jan  8 12:41:34 2024


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
        xOut_0 : out std_logic_vector(46 downto 0);  -- sfix47
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
    signal d_u0_m0_wo0_compute_q_20_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_u0_m0_wo0_compute_q_21_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi0_r0_ra0_count0_inner_q : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_wi0_r0_ra0_count0_inner_i : SIGNED (10 downto 0);
    attribute preserve : boolean;
    attribute preserve of u0_m0_wo0_wi0_r0_ra0_count0_inner_i : signal is true;
    signal u0_m0_wo0_wi0_r0_ra0_count0_q : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_wi0_r0_ra0_count0_i : UNSIGNED (9 downto 0);
    attribute preserve of u0_m0_wo0_wi0_r0_ra0_count0_i : signal is true;
    signal u0_m0_wo0_wi0_r0_ra0_count1_q : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_wi0_r0_ra0_count1_i : UNSIGNED (9 downto 0);
    attribute preserve of u0_m0_wo0_wi0_r0_ra0_count1_i : signal is true;
    signal u0_m0_wo0_wi0_r0_ra0_add_0_0_a : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_ra0_add_0_0_b : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_ra0_add_0_0_o : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_ra0_add_0_0_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_ra9_count0_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_ra9_count0_i : UNSIGNED (10 downto 0);
    attribute preserve of u0_m0_wo0_wi0_r0_ra9_count0_i : signal is true;
    signal u0_m0_wo0_wi0_r0_ra9_count1_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi0_r0_ra9_count1_i : UNSIGNED (9 downto 0);
    attribute preserve of u0_m0_wo0_wi0_r0_ra9_count1_i : signal is true;
    signal u0_m0_wo0_wi0_r0_ra9_add_0_0_a : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_wi0_r0_ra9_add_0_0_b : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_wi0_r0_ra9_add_0_0_o : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_wi0_r0_ra9_add_0_0_q : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_wi0_r0_we9_seq_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi0_r0_we9_seq_eq : std_logic;
    signal u0_m0_wo0_wi0_r0_wa0_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi0_r0_wa0_i : UNSIGNED (9 downto 0);
    attribute preserve of u0_m0_wo0_wi0_r0_wa0_i : signal is true;
    signal u0_m0_wo0_wi0_r0_wa9_q : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_wi0_r0_wa9_i : UNSIGNED (10 downto 0);
    attribute preserve of u0_m0_wo0_wi0_r0_wa9_i : signal is true;
    signal u0_m0_wo0_wi0_r0_memr0_reset0 : std_logic;
    signal u0_m0_wo0_wi0_r0_memr0_ia : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_wi0_r0_memr0_aa : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi0_r0_memr0_ab : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi0_r0_memr0_iq : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_wi0_r0_memr0_q : STD_LOGIC_VECTOR (15 downto 0);
    signal d_u0_m0_wo0_wi0_r0_memr0_q_17_q : STD_LOGIC_VECTOR (15 downto 0);
    signal d_u0_m0_wo0_wi0_r0_split1_b_17_q : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_wi0_r0_memr1_reset0 : std_logic;
    signal u0_m0_wo0_wi0_r0_memr1_ia : STD_LOGIC_VECTOR (63 downto 0);
    signal u0_m0_wo0_wi0_r0_memr1_aa : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_wi0_r0_memr1_ab : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_wi0_r0_memr1_iq : STD_LOGIC_VECTOR (63 downto 0);
    signal u0_m0_wo0_wi0_r0_memr1_q : STD_LOGIC_VECTOR (63 downto 0);
    signal u0_m0_wo0_wi0_r0_memr5_reset0 : std_logic;
    signal u0_m0_wo0_wi0_r0_memr5_ia : STD_LOGIC_VECTOR (63 downto 0);
    signal u0_m0_wo0_wi0_r0_memr5_aa : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_wi0_r0_memr5_ab : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_wi0_r0_memr5_iq : STD_LOGIC_VECTOR (63 downto 0);
    signal u0_m0_wo0_wi0_r0_memr5_q : STD_LOGIC_VECTOR (63 downto 0);
    signal u0_m0_wo0_wi0_r0_memr9_reset0 : std_logic;
    signal u0_m0_wo0_wi0_r0_memr9_ia : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_wi0_r0_memr9_aa : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_wi0_r0_memr9_ab : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_wi0_r0_memr9_iq : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_wi0_r0_memr9_q : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_ca9_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_ca9_i : UNSIGNED (9 downto 0);
    attribute preserve of u0_m0_wo0_ca9_i : signal is true;
    signal d_u0_m0_wo0_ca9_q_15_q : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_a0 : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_b0 : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_s1 : STD_LOGIC_VECTOR (32 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_9_q : STD_LOGIC_VECTOR (32 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_a0 : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_b0 : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_s1 : STD_LOGIC_VECTOR (32 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_8_q : STD_LOGIC_VECTOR (32 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_a0 : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_b0 : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_s1 : STD_LOGIC_VECTOR (32 downto 0);
    signal u0_m0_wo0_mtree_mult1_7_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_7_q : STD_LOGIC_VECTOR (32 downto 0);
    signal u0_m0_wo0_mtree_mult1_6_a0 : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_6_b0 : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_6_s1 : STD_LOGIC_VECTOR (32 downto 0);
    signal u0_m0_wo0_mtree_mult1_6_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_6_q : STD_LOGIC_VECTOR (32 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_a0 : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_b0 : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_s1 : STD_LOGIC_VECTOR (32 downto 0);
    signal u0_m0_wo0_mtree_mult1_5_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_5_q : STD_LOGIC_VECTOR (32 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_a0 : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_b0 : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_s1 : STD_LOGIC_VECTOR (32 downto 0);
    signal u0_m0_wo0_mtree_mult1_4_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_4_q : STD_LOGIC_VECTOR (32 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_a0 : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_b0 : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_s1 : STD_LOGIC_VECTOR (32 downto 0);
    signal u0_m0_wo0_mtree_mult1_3_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_3_q : STD_LOGIC_VECTOR (32 downto 0);
    signal u0_m0_wo0_mtree_mult1_2_a0 : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_2_b0 : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_2_s1 : STD_LOGIC_VECTOR (32 downto 0);
    signal u0_m0_wo0_mtree_mult1_2_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_2_q : STD_LOGIC_VECTOR (32 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_a0 : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_b0 : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_s1 : STD_LOGIC_VECTOR (32 downto 0);
    signal u0_m0_wo0_mtree_mult1_1_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_1_q : STD_LOGIC_VECTOR (32 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_a0 : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_b0 : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_s1 : STD_LOGIC_VECTOR (32 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_0_q : STD_LOGIC_VECTOR (32 downto 0);
    signal u0_m0_wo0_mtree_add0_0_a : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_add0_0_b : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_add0_0_o : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_add0_0_q : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_add0_1_a : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_add0_1_b : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_add0_1_o : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_add0_1_q : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_add0_2_a : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_add0_2_b : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_add0_2_o : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_add0_2_q : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_add0_3_a : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_add0_3_b : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_add0_3_o : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_add0_3_q : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_add0_4_a : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_add0_4_b : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_add0_4_o : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_add0_4_q : STD_LOGIC_VECTOR (33 downto 0);
    signal u0_m0_wo0_mtree_add1_0_a : STD_LOGIC_VECTOR (34 downto 0);
    signal u0_m0_wo0_mtree_add1_0_b : STD_LOGIC_VECTOR (34 downto 0);
    signal u0_m0_wo0_mtree_add1_0_o : STD_LOGIC_VECTOR (34 downto 0);
    signal u0_m0_wo0_mtree_add1_0_q : STD_LOGIC_VECTOR (34 downto 0);
    signal u0_m0_wo0_mtree_add1_1_a : STD_LOGIC_VECTOR (34 downto 0);
    signal u0_m0_wo0_mtree_add1_1_b : STD_LOGIC_VECTOR (34 downto 0);
    signal u0_m0_wo0_mtree_add1_1_o : STD_LOGIC_VECTOR (34 downto 0);
    signal u0_m0_wo0_mtree_add1_1_q : STD_LOGIC_VECTOR (34 downto 0);
    signal u0_m0_wo0_mtree_add2_0_a : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_mtree_add2_0_b : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_mtree_add2_0_o : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_mtree_add2_0_q : STD_LOGIC_VECTOR (35 downto 0);
    signal u0_m0_wo0_mtree_add3_0_a : STD_LOGIC_VECTOR (36 downto 0);
    signal u0_m0_wo0_mtree_add3_0_b : STD_LOGIC_VECTOR (36 downto 0);
    signal u0_m0_wo0_mtree_add3_0_o : STD_LOGIC_VECTOR (36 downto 0);
    signal u0_m0_wo0_mtree_add3_0_q : STD_LOGIC_VECTOR (36 downto 0);
    signal u0_m0_wo0_aseq_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_aseq_eq : std_logic;
    signal u0_m0_wo0_accum_a : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_accum_b : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_accum_i : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_accum_o : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_accum_q : STD_LOGIC_VECTOR (46 downto 0);
    signal u0_m0_wo0_oseq_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_oseq_eq : std_logic;
    signal u0_m0_wo0_oseq_gated_reg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi0_r0_ra9_count1_lut_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_wi0_r0_ra9_count1_lut_lutmem_ia : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_ra9_count1_lut_lutmem_aa : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi0_r0_ra9_count1_lut_lutmem_ab : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi0_r0_ra9_count1_lut_lutmem_ir : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_ra9_count1_lut_lutmem_r : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_cm0_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm0_lutmem_ia : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm0_lutmem_aa : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_cm0_lutmem_ab : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_cm0_lutmem_ir : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm0_lutmem_r : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm1_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm1_lutmem_ia : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm1_lutmem_aa : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_cm1_lutmem_ab : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_cm1_lutmem_ir : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm1_lutmem_r : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm2_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm2_lutmem_ia : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm2_lutmem_aa : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_cm2_lutmem_ab : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_cm2_lutmem_ir : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm2_lutmem_r : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm3_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm3_lutmem_ia : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm3_lutmem_aa : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_cm3_lutmem_ab : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_cm3_lutmem_ir : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm3_lutmem_r : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm4_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm4_lutmem_ia : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm4_lutmem_aa : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_cm4_lutmem_ab : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_cm4_lutmem_ir : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm4_lutmem_r : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm5_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm5_lutmem_ia : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm5_lutmem_aa : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_cm5_lutmem_ab : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_cm5_lutmem_ir : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm5_lutmem_r : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm6_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm6_lutmem_ia : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm6_lutmem_aa : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_cm6_lutmem_ab : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_cm6_lutmem_ir : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm6_lutmem_r : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm7_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm7_lutmem_ia : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm7_lutmem_aa : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_cm7_lutmem_ab : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_cm7_lutmem_ir : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm7_lutmem_r : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm8_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm8_lutmem_ia : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm8_lutmem_aa : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_cm8_lutmem_ab : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_cm8_lutmem_ir : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm8_lutmem_r : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm9_lutmem_reset0 : std_logic;
    signal u0_m0_wo0_cm9_lutmem_ia : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm9_lutmem_aa : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_cm9_lutmem_ab : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_cm9_lutmem_ir : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_cm9_lutmem_r : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_wi0_r0_ra0_count0_run_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_oseq_gated_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi0_r0_ra0_resize_in : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi0_r0_ra0_resize_b : STD_LOGIC_VECTOR (9 downto 0);
    signal u0_m0_wo0_wi0_r0_ra9_resize_in : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_wi0_r0_ra9_resize_b : STD_LOGIC_VECTOR (10 downto 0);
    signal u0_m0_wo0_wi0_r0_split1_b : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_wi0_r0_split1_c : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_wi0_r0_split1_d : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_wi0_r0_split1_e : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_wi0_r0_split5_b : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_wi0_r0_split5_c : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_wi0_r0_split5_d : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_wi0_r0_split5_e : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_wi0_r0_join1_q : STD_LOGIC_VECTOR (63 downto 0);
    signal u0_m0_wo0_wi0_r0_join5_q : STD_LOGIC_VECTOR (63 downto 0);

begin


    -- VCC(CONSTANT,1)@0
    VCC_q <= "1";

    -- u0_m0_wo0_run(ENABLEGENERATOR,13)@10 + 2
    u0_m0_wo0_run_ctrl <= u0_m0_wo0_run_out & xIn_v & u0_m0_wo0_run_enableQ;
    u0_m0_wo0_run_clkproc: PROCESS (clk, areset)
        variable u0_m0_wo0_run_enable_c : SIGNED(10 downto 0);
        variable u0_m0_wo0_run_inc : SIGNED(1 downto 0);
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_run_q <= "0";
            u0_m0_wo0_run_enable_c := TO_SIGNED(1022, 11);
            u0_m0_wo0_run_enableQ <= "0";
            u0_m0_wo0_run_count <= "00";
            u0_m0_wo0_run_inc := (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (u0_m0_wo0_run_out = "1") THEN
                IF (u0_m0_wo0_run_enable_c(10) = '1') THEN
                    u0_m0_wo0_run_enable_c := u0_m0_wo0_run_enable_c - (-1023);
                ELSE
                    u0_m0_wo0_run_enable_c := u0_m0_wo0_run_enable_c + (-1);
                END IF;
                u0_m0_wo0_run_enableQ <= STD_LOGIC_VECTOR(u0_m0_wo0_run_enable_c(10 downto 10));
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

    -- d_u0_m0_wo0_memread_q_13(DELAY,99)@12 + 1
    d_u0_m0_wo0_memread_q_13 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_memread_q, xout => d_u0_m0_wo0_memread_q_13_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_compute(DELAY,16)@13
    u0_m0_wo0_compute : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => d_u0_m0_wo0_memread_q_13_q, xout => u0_m0_wo0_compute_q, clk => clk, aclr => areset );

    -- d_u0_m0_wo0_compute_q_14(DELAY,101)@13 + 1
    d_u0_m0_wo0_compute_q_14 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_compute_q, xout => d_u0_m0_wo0_compute_q_14_q, clk => clk, aclr => areset );

    -- d_u0_m0_wo0_compute_q_20(DELAY,102)@14 + 6
    d_u0_m0_wo0_compute_q_20 : dspba_delay
    GENERIC MAP ( width => 1, depth => 6, reset_kind => "ASYNC" )
    PORT MAP ( xin => d_u0_m0_wo0_compute_q_14_q, xout => d_u0_m0_wo0_compute_q_20_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_aseq(SEQUENCE,76)@20 + 1
    u0_m0_wo0_aseq_clkproc: PROCESS (clk, areset)
        variable u0_m0_wo0_aseq_c : SIGNED(12 downto 0);
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_aseq_c := "0000000000000";
            u0_m0_wo0_aseq_q <= "0";
            u0_m0_wo0_aseq_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (d_u0_m0_wo0_compute_q_20_q = "1") THEN
                IF (u0_m0_wo0_aseq_c = "0000000000000") THEN
                    u0_m0_wo0_aseq_eq <= '1';
                ELSE
                    u0_m0_wo0_aseq_eq <= '0';
                END IF;
                IF (u0_m0_wo0_aseq_eq = '1') THEN
                    u0_m0_wo0_aseq_c := u0_m0_wo0_aseq_c + 1023;
                ELSE
                    u0_m0_wo0_aseq_c := u0_m0_wo0_aseq_c - 1;
                END IF;
                u0_m0_wo0_aseq_q <= STD_LOGIC_VECTOR(u0_m0_wo0_aseq_c(12 downto 12));
            END IF;
        END IF;
    END PROCESS;

    -- d_u0_m0_wo0_compute_q_21(DELAY,103)@20 + 1
    d_u0_m0_wo0_compute_q_21 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => d_u0_m0_wo0_compute_q_20_q, xout => d_u0_m0_wo0_compute_q_21_q, clk => clk, aclr => areset );

    -- d_u0_m0_wo0_memread_q_14(DELAY,100)@13 + 1
    d_u0_m0_wo0_memread_q_14 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => d_u0_m0_wo0_memread_q_13_q, xout => d_u0_m0_wo0_memread_q_14_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_wi0_r0_ra0_count1(COUNTER,22)@14
    -- low=0, high=1023, step=1, init=0
    u0_m0_wo0_wi0_r0_ra0_count1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_r0_ra0_count1_i <= TO_UNSIGNED(0, 10);
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (d_u0_m0_wo0_memread_q_14_q = "1") THEN
                u0_m0_wo0_wi0_r0_ra0_count1_i <= u0_m0_wo0_wi0_r0_ra0_count1_i + 1;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_wi0_r0_ra0_count1_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_wi0_r0_ra0_count1_i, 11)));

    -- u0_m0_wo0_wi0_r0_ra0_count0_inner(COUNTER,19)@14
    -- low=-1, high=1022, step=-1, init=1022
    u0_m0_wo0_wi0_r0_ra0_count0_inner_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_r0_ra0_count0_inner_i <= TO_SIGNED(1022, 11);
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (d_u0_m0_wo0_memread_q_14_q = "1") THEN
                IF (u0_m0_wo0_wi0_r0_ra0_count0_inner_i(10 downto 10) = "1") THEN
                    u0_m0_wo0_wi0_r0_ra0_count0_inner_i <= u0_m0_wo0_wi0_r0_ra0_count0_inner_i - 1025;
                ELSE
                    u0_m0_wo0_wi0_r0_ra0_count0_inner_i <= u0_m0_wo0_wi0_r0_ra0_count0_inner_i - 1;
                END IF;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_wi0_r0_ra0_count0_inner_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_wi0_r0_ra0_count0_inner_i, 11)));

    -- u0_m0_wo0_wi0_r0_ra0_count0_run(LOGICAL,20)@14
    u0_m0_wo0_wi0_r0_ra0_count0_run_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_ra0_count0_inner_q(10 downto 10));

    -- u0_m0_wo0_wi0_r0_ra0_count0(COUNTER,21)@14
    -- low=0, high=1023, step=1, init=0
    u0_m0_wo0_wi0_r0_ra0_count0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_r0_ra0_count0_i <= TO_UNSIGNED(0, 10);
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (d_u0_m0_wo0_memread_q_14_q = "1" and u0_m0_wo0_wi0_r0_ra0_count0_run_q = "1") THEN
                u0_m0_wo0_wi0_r0_ra0_count0_i <= u0_m0_wo0_wi0_r0_ra0_count0_i + 1;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_wi0_r0_ra0_count0_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_wi0_r0_ra0_count0_i, 11)));

    -- u0_m0_wo0_wi0_r0_ra0_add_0_0(ADD,23)@14 + 1
    u0_m0_wo0_wi0_r0_ra0_add_0_0_a <= STD_LOGIC_VECTOR("0" & u0_m0_wo0_wi0_r0_ra0_count0_q);
    u0_m0_wo0_wi0_r0_ra0_add_0_0_b <= STD_LOGIC_VECTOR("0" & u0_m0_wo0_wi0_r0_ra0_count1_q);
    u0_m0_wo0_wi0_r0_ra0_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_r0_ra0_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_wi0_r0_ra0_add_0_0_o <= STD_LOGIC_VECTOR(UNSIGNED(u0_m0_wo0_wi0_r0_ra0_add_0_0_a) + UNSIGNED(u0_m0_wo0_wi0_r0_ra0_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_wi0_r0_ra0_add_0_0_q <= u0_m0_wo0_wi0_r0_ra0_add_0_0_o(11 downto 0);

    -- u0_m0_wo0_wi0_r0_ra0_resize(BITSELECT,24)@15
    u0_m0_wo0_wi0_r0_ra0_resize_in <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_ra0_add_0_0_q(9 downto 0));
    u0_m0_wo0_wi0_r0_ra0_resize_b <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_ra0_resize_in(9 downto 0));

    -- d_xIn_0_15(DELAY,97)@10 + 5
    d_xIn_0_15 : dspba_delay
    GENERIC MAP ( width => 16, depth => 5, reset_kind => "ASYNC" )
    PORT MAP ( xin => xIn_0, xout => d_xIn_0_15_q, clk => clk, aclr => areset );

    -- d_in0_m0_wi0_wo0_assign_id1_q_15(DELAY,98)@10 + 5
    d_in0_m0_wi0_wo0_assign_id1_q_15 : dspba_delay
    GENERIC MAP ( width => 1, depth => 5, reset_kind => "ASYNC" )
    PORT MAP ( xin => xIn_v, xout => d_in0_m0_wi0_wo0_assign_id1_q_15_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_wi0_r0_wa0(COUNTER,33)@15
    -- low=0, high=1023, step=1, init=1023
    u0_m0_wo0_wi0_r0_wa0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_r0_wa0_i <= TO_UNSIGNED(1023, 10);
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (d_in0_m0_wi0_wo0_assign_id1_q_15_q = "1") THEN
                u0_m0_wo0_wi0_r0_wa0_i <= u0_m0_wo0_wi0_r0_wa0_i + 1;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_wi0_r0_wa0_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_wi0_r0_wa0_i, 10)));

    -- u0_m0_wo0_wi0_r0_memr0(DUALMEM,35)@15
    u0_m0_wo0_wi0_r0_memr0_ia <= STD_LOGIC_VECTOR(d_xIn_0_15_q);
    u0_m0_wo0_wi0_r0_memr0_aa <= u0_m0_wo0_wi0_r0_wa0_q;
    u0_m0_wo0_wi0_r0_memr0_ab <= u0_m0_wo0_wi0_r0_ra0_resize_b;
    u0_m0_wo0_wi0_r0_memr0_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "DUAL_PORT",
        width_a => 16,
        widthad_a => 10,
        numwords_a => 1024,
        width_b => 16,
        widthad_b => 10,
        numwords_b => 1024,
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

    -- d_u0_m0_wo0_wi0_r0_memr0_q_17(DELAY,104)@15 + 2
    d_u0_m0_wo0_wi0_r0_memr0_q_17 : dspba_delay
    GENERIC MAP ( width => 16, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_memr0_q, xout => d_u0_m0_wo0_wi0_r0_memr0_q_17_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_ca9(COUNTER,43)@13
    -- low=0, high=1023, step=1, init=0
    u0_m0_wo0_ca9_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_ca9_i <= TO_UNSIGNED(0, 10);
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (u0_m0_wo0_compute_q = "1") THEN
                u0_m0_wo0_ca9_i <= u0_m0_wo0_ca9_i + 1;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_ca9_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_ca9_i, 10)));

    -- d_u0_m0_wo0_ca9_q_15(DELAY,106)@13 + 2
    d_u0_m0_wo0_ca9_q_15 : dspba_delay
    GENERIC MAP ( width => 10, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_ca9_q, xout => d_u0_m0_wo0_ca9_q_15_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_cm0_lutmem(DUALMEM,87)@15 + 2
    u0_m0_wo0_cm0_lutmem_aa <= d_u0_m0_wo0_ca9_q_15_q;
    u0_m0_wo0_cm0_lutmem_reset0 <= areset;
    u0_m0_wo0_cm0_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 17,
        widthad_a => 10,
        numwords_a => 1024,
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
    u0_m0_wo0_cm0_lutmem_r <= u0_m0_wo0_cm0_lutmem_ir(16 downto 0);

    -- u0_m0_wo0_mtree_mult1_9(MULT,57)@17 + 2
    u0_m0_wo0_mtree_mult1_9_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm0_lutmem_r);
    u0_m0_wo0_mtree_mult1_9_b0 <= STD_LOGIC_VECTOR(d_u0_m0_wo0_wi0_r0_memr0_q_17_q);
    u0_m0_wo0_mtree_mult1_9_reset <= areset;
    u0_m0_wo0_mtree_mult1_9_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 17,
        lpm_widthb => 16,
        lpm_widthp => 33,
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

    -- u0_m0_wo0_wi0_r0_ra9_count1(COUNTER,29)@12
    -- low=0, high=1023, step=1, init=0
    u0_m0_wo0_wi0_r0_ra9_count1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_r0_ra9_count1_i <= TO_UNSIGNED(0, 10);
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (u0_m0_wo0_memread_q = "1") THEN
                u0_m0_wo0_wi0_r0_ra9_count1_i <= u0_m0_wo0_wi0_r0_ra9_count1_i + 1;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_wi0_r0_ra9_count1_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_wi0_r0_ra9_count1_i, 10)));

    -- u0_m0_wo0_wi0_r0_ra9_count1_lut_lutmem(DUALMEM,86)@12 + 2
    u0_m0_wo0_wi0_r0_ra9_count1_lut_lutmem_aa <= u0_m0_wo0_wi0_r0_ra9_count1_q;
    u0_m0_wo0_wi0_r0_ra9_count1_lut_lutmem_reset0 <= areset;
    u0_m0_wo0_wi0_r0_ra9_count1_lut_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 12,
        widthad_a => 10,
        numwords_a => 1024,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        outdata_reg_a => "CLOCK0",
        outdata_aclr_a => "CLEAR0",
        clock_enable_input_a => "NORMAL",
        power_up_uninitialized => "FALSE",
        init_file => "REVERB_fir_compiler_ii_0_rtl_core_u0_m0_wo0_wi0_r0_ra9_count1_lut_lutmem.hex",
        init_file_layout => "PORT_A",
        intended_device_family => "MAX 10"
    )
    PORT MAP (
        clocken0 => VCC_q(0),
        aclr0 => u0_m0_wo0_wi0_r0_ra9_count1_lut_lutmem_reset0,
        clock0 => clk,
        address_a => u0_m0_wo0_wi0_r0_ra9_count1_lut_lutmem_aa,
        q_a => u0_m0_wo0_wi0_r0_ra9_count1_lut_lutmem_ir
    );
    u0_m0_wo0_wi0_r0_ra9_count1_lut_lutmem_r <= u0_m0_wo0_wi0_r0_ra9_count1_lut_lutmem_ir(11 downto 0);

    -- u0_m0_wo0_wi0_r0_ra9_count0(COUNTER,27)@14
    -- low=0, high=2047, step=1, init=0
    u0_m0_wo0_wi0_r0_ra9_count0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_r0_ra9_count0_i <= TO_UNSIGNED(0, 11);
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (d_u0_m0_wo0_memread_q_14_q = "1" and u0_m0_wo0_wi0_r0_ra0_count0_run_q = "1") THEN
                u0_m0_wo0_wi0_r0_ra9_count0_i <= u0_m0_wo0_wi0_r0_ra9_count0_i + 1;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_wi0_r0_ra9_count0_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_wi0_r0_ra9_count0_i, 12)));

    -- u0_m0_wo0_wi0_r0_ra9_add_0_0(ADD,30)@14 + 1
    u0_m0_wo0_wi0_r0_ra9_add_0_0_a <= STD_LOGIC_VECTOR("0" & u0_m0_wo0_wi0_r0_ra9_count0_q);
    u0_m0_wo0_wi0_r0_ra9_add_0_0_b <= STD_LOGIC_VECTOR("0" & u0_m0_wo0_wi0_r0_ra9_count1_lut_lutmem_r);
    u0_m0_wo0_wi0_r0_ra9_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_r0_ra9_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_wi0_r0_ra9_add_0_0_o <= STD_LOGIC_VECTOR(UNSIGNED(u0_m0_wo0_wi0_r0_ra9_add_0_0_a) + UNSIGNED(u0_m0_wo0_wi0_r0_ra9_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_wi0_r0_ra9_add_0_0_q <= u0_m0_wo0_wi0_r0_ra9_add_0_0_o(12 downto 0);

    -- u0_m0_wo0_wi0_r0_ra9_resize(BITSELECT,31)@15
    u0_m0_wo0_wi0_r0_ra9_resize_in <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_ra9_add_0_0_q(10 downto 0));
    u0_m0_wo0_wi0_r0_ra9_resize_b <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_ra9_resize_in(10 downto 0));

    -- u0_m0_wo0_wi0_r0_join1(BITJOIN,36)@15
    u0_m0_wo0_wi0_r0_join1_q <= u0_m0_wo0_wi0_r0_split1_d & u0_m0_wo0_wi0_r0_split1_c & u0_m0_wo0_wi0_r0_split1_b & u0_m0_wo0_wi0_r0_memr0_q;

    -- u0_m0_wo0_wi0_r0_we9_seq(SEQUENCE,32)@14 + 1
    u0_m0_wo0_wi0_r0_we9_seq_clkproc: PROCESS (clk, areset)
        variable u0_m0_wo0_wi0_r0_we9_seq_c : SIGNED(12 downto 0);
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_r0_we9_seq_c := "0000000000000";
            u0_m0_wo0_wi0_r0_we9_seq_q <= "0";
            u0_m0_wo0_wi0_r0_we9_seq_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (d_u0_m0_wo0_compute_q_14_q = "1") THEN
                IF (u0_m0_wo0_wi0_r0_we9_seq_c = "0000000000000") THEN
                    u0_m0_wo0_wi0_r0_we9_seq_eq <= '1';
                ELSE
                    u0_m0_wo0_wi0_r0_we9_seq_eq <= '0';
                END IF;
                IF (u0_m0_wo0_wi0_r0_we9_seq_eq = '1') THEN
                    u0_m0_wo0_wi0_r0_we9_seq_c := u0_m0_wo0_wi0_r0_we9_seq_c + 1023;
                ELSE
                    u0_m0_wo0_wi0_r0_we9_seq_c := u0_m0_wo0_wi0_r0_we9_seq_c - 1;
                END IF;
                u0_m0_wo0_wi0_r0_we9_seq_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_we9_seq_c(12 downto 12));
            ELSE
                u0_m0_wo0_wi0_r0_we9_seq_q <= "0";
            END IF;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi0_r0_wa9(COUNTER,34)@15
    -- low=0, high=2047, step=1, init=2
    u0_m0_wo0_wi0_r0_wa9_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_r0_wa9_i <= TO_UNSIGNED(2, 11);
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (u0_m0_wo0_wi0_r0_we9_seq_q = "1") THEN
                u0_m0_wo0_wi0_r0_wa9_i <= u0_m0_wo0_wi0_r0_wa9_i + 1;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_wi0_r0_wa9_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_wi0_r0_wa9_i, 11)));

    -- u0_m0_wo0_wi0_r0_memr1(DUALMEM,38)@15
    u0_m0_wo0_wi0_r0_memr1_ia <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_join1_q);
    u0_m0_wo0_wi0_r0_memr1_aa <= u0_m0_wo0_wi0_r0_wa9_q;
    u0_m0_wo0_wi0_r0_memr1_ab <= u0_m0_wo0_wi0_r0_ra9_resize_b;
    u0_m0_wo0_wi0_r0_memr1_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "DUAL_PORT",
        width_a => 64,
        widthad_a => 11,
        numwords_a => 2048,
        width_b => 64,
        widthad_b => 11,
        numwords_b => 2048,
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
        wren_a => u0_m0_wo0_wi0_r0_we9_seq_q(0),
        address_b => u0_m0_wo0_wi0_r0_memr1_ab,
        q_b => u0_m0_wo0_wi0_r0_memr1_iq
    );
    u0_m0_wo0_wi0_r0_memr1_q <= u0_m0_wo0_wi0_r0_memr1_iq(63 downto 0);

    -- u0_m0_wo0_wi0_r0_split1(BITSELECT,37)@15
    u0_m0_wo0_wi0_r0_split1_b <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr1_q(15 downto 0));
    u0_m0_wo0_wi0_r0_split1_c <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr1_q(31 downto 16));
    u0_m0_wo0_wi0_r0_split1_d <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr1_q(47 downto 32));
    u0_m0_wo0_wi0_r0_split1_e <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr1_q(63 downto 48));

    -- d_u0_m0_wo0_wi0_r0_split1_b_17(DELAY,105)@15 + 2
    d_u0_m0_wo0_wi0_r0_split1_b_17 : dspba_delay
    GENERIC MAP ( width => 16, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_split1_b, xout => d_u0_m0_wo0_wi0_r0_split1_b_17_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_cm1_lutmem(DUALMEM,88)@15 + 2
    u0_m0_wo0_cm1_lutmem_aa <= d_u0_m0_wo0_ca9_q_15_q;
    u0_m0_wo0_cm1_lutmem_reset0 <= areset;
    u0_m0_wo0_cm1_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 17,
        widthad_a => 10,
        numwords_a => 1024,
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
    u0_m0_wo0_cm1_lutmem_r <= u0_m0_wo0_cm1_lutmem_ir(16 downto 0);

    -- u0_m0_wo0_mtree_mult1_8(MULT,58)@17 + 2
    u0_m0_wo0_mtree_mult1_8_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm1_lutmem_r);
    u0_m0_wo0_mtree_mult1_8_b0 <= STD_LOGIC_VECTOR(d_u0_m0_wo0_wi0_r0_split1_b_17_q);
    u0_m0_wo0_mtree_mult1_8_reset <= areset;
    u0_m0_wo0_mtree_mult1_8_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 17,
        lpm_widthb => 16,
        lpm_widthp => 33,
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

    -- u0_m0_wo0_mtree_add0_4(ADD,71)@19 + 1
    u0_m0_wo0_mtree_add0_4_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 33 => u0_m0_wo0_mtree_mult1_8_q(32)) & u0_m0_wo0_mtree_mult1_8_q));
    u0_m0_wo0_mtree_add0_4_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 33 => u0_m0_wo0_mtree_mult1_9_q(32)) & u0_m0_wo0_mtree_mult1_9_q));
    u0_m0_wo0_mtree_add0_4_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_4_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_4_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_4_a) + SIGNED(u0_m0_wo0_mtree_add0_4_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_4_q <= u0_m0_wo0_mtree_add0_4_o(33 downto 0);

    -- u0_m0_wo0_cm2_lutmem(DUALMEM,89)@13 + 2
    u0_m0_wo0_cm2_lutmem_aa <= u0_m0_wo0_ca9_q;
    u0_m0_wo0_cm2_lutmem_reset0 <= areset;
    u0_m0_wo0_cm2_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 17,
        widthad_a => 10,
        numwords_a => 1024,
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
    u0_m0_wo0_cm2_lutmem_r <= u0_m0_wo0_cm2_lutmem_ir(16 downto 0);

    -- u0_m0_wo0_mtree_mult1_7(MULT,59)@15 + 2
    u0_m0_wo0_mtree_mult1_7_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm2_lutmem_r);
    u0_m0_wo0_mtree_mult1_7_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split1_c);
    u0_m0_wo0_mtree_mult1_7_reset <= areset;
    u0_m0_wo0_mtree_mult1_7_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 17,
        lpm_widthb => 16,
        lpm_widthp => 33,
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

    -- u0_m0_wo0_cm3_lutmem(DUALMEM,90)@13 + 2
    u0_m0_wo0_cm3_lutmem_aa <= u0_m0_wo0_ca9_q;
    u0_m0_wo0_cm3_lutmem_reset0 <= areset;
    u0_m0_wo0_cm3_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 17,
        widthad_a => 10,
        numwords_a => 1024,
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

    -- u0_m0_wo0_mtree_mult1_6(MULT,60)@15 + 2
    u0_m0_wo0_mtree_mult1_6_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm3_lutmem_r);
    u0_m0_wo0_mtree_mult1_6_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split1_d);
    u0_m0_wo0_mtree_mult1_6_reset <= areset;
    u0_m0_wo0_mtree_mult1_6_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 17,
        lpm_widthb => 16,
        lpm_widthp => 33,
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

    -- u0_m0_wo0_mtree_add0_3(ADD,70)@17 + 1
    u0_m0_wo0_mtree_add0_3_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 33 => u0_m0_wo0_mtree_mult1_6_q(32)) & u0_m0_wo0_mtree_mult1_6_q));
    u0_m0_wo0_mtree_add0_3_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 33 => u0_m0_wo0_mtree_mult1_7_q(32)) & u0_m0_wo0_mtree_mult1_7_q));
    u0_m0_wo0_mtree_add0_3_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_3_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_3_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_3_a) + SIGNED(u0_m0_wo0_mtree_add0_3_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_3_q <= u0_m0_wo0_mtree_add0_3_o(33 downto 0);

    -- u0_m0_wo0_cm4_lutmem(DUALMEM,91)@13 + 2
    u0_m0_wo0_cm4_lutmem_aa <= u0_m0_wo0_ca9_q;
    u0_m0_wo0_cm4_lutmem_reset0 <= areset;
    u0_m0_wo0_cm4_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 17,
        widthad_a => 10,
        numwords_a => 1024,
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

    -- u0_m0_wo0_mtree_mult1_5(MULT,61)@15 + 2
    u0_m0_wo0_mtree_mult1_5_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm4_lutmem_r);
    u0_m0_wo0_mtree_mult1_5_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split1_e);
    u0_m0_wo0_mtree_mult1_5_reset <= areset;
    u0_m0_wo0_mtree_mult1_5_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 17,
        lpm_widthb => 16,
        lpm_widthp => 33,
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

    -- u0_m0_wo0_wi0_r0_join5(BITJOIN,39)@15
    u0_m0_wo0_wi0_r0_join5_q <= u0_m0_wo0_wi0_r0_split5_d & u0_m0_wo0_wi0_r0_split5_c & u0_m0_wo0_wi0_r0_split5_b & u0_m0_wo0_wi0_r0_split1_e;

    -- u0_m0_wo0_wi0_r0_memr5(DUALMEM,41)@15
    u0_m0_wo0_wi0_r0_memr5_ia <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_join5_q);
    u0_m0_wo0_wi0_r0_memr5_aa <= u0_m0_wo0_wi0_r0_wa9_q;
    u0_m0_wo0_wi0_r0_memr5_ab <= u0_m0_wo0_wi0_r0_ra9_resize_b;
    u0_m0_wo0_wi0_r0_memr5_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "DUAL_PORT",
        width_a => 64,
        widthad_a => 11,
        numwords_a => 2048,
        width_b => 64,
        widthad_b => 11,
        numwords_b => 2048,
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
        wren_a => u0_m0_wo0_wi0_r0_we9_seq_q(0),
        address_b => u0_m0_wo0_wi0_r0_memr5_ab,
        q_b => u0_m0_wo0_wi0_r0_memr5_iq
    );
    u0_m0_wo0_wi0_r0_memr5_q <= u0_m0_wo0_wi0_r0_memr5_iq(63 downto 0);

    -- u0_m0_wo0_wi0_r0_split5(BITSELECT,40)@15
    u0_m0_wo0_wi0_r0_split5_b <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr5_q(15 downto 0));
    u0_m0_wo0_wi0_r0_split5_c <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr5_q(31 downto 16));
    u0_m0_wo0_wi0_r0_split5_d <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr5_q(47 downto 32));
    u0_m0_wo0_wi0_r0_split5_e <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr5_q(63 downto 48));

    -- u0_m0_wo0_cm5_lutmem(DUALMEM,92)@13 + 2
    u0_m0_wo0_cm5_lutmem_aa <= u0_m0_wo0_ca9_q;
    u0_m0_wo0_cm5_lutmem_reset0 <= areset;
    u0_m0_wo0_cm5_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 17,
        widthad_a => 10,
        numwords_a => 1024,
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

    -- u0_m0_wo0_mtree_mult1_4(MULT,62)@15 + 2
    u0_m0_wo0_mtree_mult1_4_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm5_lutmem_r);
    u0_m0_wo0_mtree_mult1_4_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split5_b);
    u0_m0_wo0_mtree_mult1_4_reset <= areset;
    u0_m0_wo0_mtree_mult1_4_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 17,
        lpm_widthb => 16,
        lpm_widthp => 33,
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

    -- u0_m0_wo0_mtree_add0_2(ADD,69)@17 + 1
    u0_m0_wo0_mtree_add0_2_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 33 => u0_m0_wo0_mtree_mult1_4_q(32)) & u0_m0_wo0_mtree_mult1_4_q));
    u0_m0_wo0_mtree_add0_2_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 33 => u0_m0_wo0_mtree_mult1_5_q(32)) & u0_m0_wo0_mtree_mult1_5_q));
    u0_m0_wo0_mtree_add0_2_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_2_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_2_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_2_a) + SIGNED(u0_m0_wo0_mtree_add0_2_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_2_q <= u0_m0_wo0_mtree_add0_2_o(33 downto 0);

    -- u0_m0_wo0_mtree_add1_1(ADD,73)@18 + 1
    u0_m0_wo0_mtree_add1_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((34 downto 34 => u0_m0_wo0_mtree_add0_2_q(33)) & u0_m0_wo0_mtree_add0_2_q));
    u0_m0_wo0_mtree_add1_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((34 downto 34 => u0_m0_wo0_mtree_add0_3_q(33)) & u0_m0_wo0_mtree_add0_3_q));
    u0_m0_wo0_mtree_add1_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_1_a) + SIGNED(u0_m0_wo0_mtree_add1_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_1_q <= u0_m0_wo0_mtree_add1_1_o(34 downto 0);

    -- u0_m0_wo0_cm6_lutmem(DUALMEM,93)@13 + 2
    u0_m0_wo0_cm6_lutmem_aa <= u0_m0_wo0_ca9_q;
    u0_m0_wo0_cm6_lutmem_reset0 <= areset;
    u0_m0_wo0_cm6_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 17,
        widthad_a => 10,
        numwords_a => 1024,
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

    -- u0_m0_wo0_mtree_mult1_3(MULT,63)@15 + 2
    u0_m0_wo0_mtree_mult1_3_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm6_lutmem_r);
    u0_m0_wo0_mtree_mult1_3_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split5_c);
    u0_m0_wo0_mtree_mult1_3_reset <= areset;
    u0_m0_wo0_mtree_mult1_3_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 17,
        lpm_widthb => 16,
        lpm_widthp => 33,
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

    -- u0_m0_wo0_cm7_lutmem(DUALMEM,94)@13 + 2
    u0_m0_wo0_cm7_lutmem_aa <= u0_m0_wo0_ca9_q;
    u0_m0_wo0_cm7_lutmem_reset0 <= areset;
    u0_m0_wo0_cm7_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 17,
        widthad_a => 10,
        numwords_a => 1024,
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

    -- u0_m0_wo0_mtree_mult1_2(MULT,64)@15 + 2
    u0_m0_wo0_mtree_mult1_2_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm7_lutmem_r);
    u0_m0_wo0_mtree_mult1_2_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split5_d);
    u0_m0_wo0_mtree_mult1_2_reset <= areset;
    u0_m0_wo0_mtree_mult1_2_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 17,
        lpm_widthb => 16,
        lpm_widthp => 33,
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

    -- u0_m0_wo0_mtree_add0_1(ADD,68)@17 + 1
    u0_m0_wo0_mtree_add0_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 33 => u0_m0_wo0_mtree_mult1_2_q(32)) & u0_m0_wo0_mtree_mult1_2_q));
    u0_m0_wo0_mtree_add0_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 33 => u0_m0_wo0_mtree_mult1_3_q(32)) & u0_m0_wo0_mtree_mult1_3_q));
    u0_m0_wo0_mtree_add0_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_1_a) + SIGNED(u0_m0_wo0_mtree_add0_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_1_q <= u0_m0_wo0_mtree_add0_1_o(33 downto 0);

    -- u0_m0_wo0_cm8_lutmem(DUALMEM,95)@13 + 2
    u0_m0_wo0_cm8_lutmem_aa <= u0_m0_wo0_ca9_q;
    u0_m0_wo0_cm8_lutmem_reset0 <= areset;
    u0_m0_wo0_cm8_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 17,
        widthad_a => 10,
        numwords_a => 1024,
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

    -- u0_m0_wo0_mtree_mult1_1(MULT,65)@15 + 2
    u0_m0_wo0_mtree_mult1_1_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm8_lutmem_r);
    u0_m0_wo0_mtree_mult1_1_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split5_e);
    u0_m0_wo0_mtree_mult1_1_reset <= areset;
    u0_m0_wo0_mtree_mult1_1_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 17,
        lpm_widthb => 16,
        lpm_widthp => 33,
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

    -- u0_m0_wo0_wi0_r0_memr9(DUALMEM,42)@15
    u0_m0_wo0_wi0_r0_memr9_ia <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_split5_e);
    u0_m0_wo0_wi0_r0_memr9_aa <= u0_m0_wo0_wi0_r0_wa9_q;
    u0_m0_wo0_wi0_r0_memr9_ab <= u0_m0_wo0_wi0_r0_ra9_resize_b;
    u0_m0_wo0_wi0_r0_memr9_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "DUAL_PORT",
        width_a => 16,
        widthad_a => 11,
        numwords_a => 2048,
        width_b => 16,
        widthad_b => 11,
        numwords_b => 2048,
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
        wren_a => u0_m0_wo0_wi0_r0_we9_seq_q(0),
        address_b => u0_m0_wo0_wi0_r0_memr9_ab,
        q_b => u0_m0_wo0_wi0_r0_memr9_iq
    );
    u0_m0_wo0_wi0_r0_memr9_q <= u0_m0_wo0_wi0_r0_memr9_iq(15 downto 0);

    -- u0_m0_wo0_cm9_lutmem(DUALMEM,96)@13 + 2
    u0_m0_wo0_cm9_lutmem_aa <= u0_m0_wo0_ca9_q;
    u0_m0_wo0_cm9_lutmem_reset0 <= areset;
    u0_m0_wo0_cm9_lutmem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "ROM",
        width_a => 17,
        widthad_a => 10,
        numwords_a => 1024,
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

    -- u0_m0_wo0_mtree_mult1_0(MULT,66)@15 + 2
    u0_m0_wo0_mtree_mult1_0_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm9_lutmem_r);
    u0_m0_wo0_mtree_mult1_0_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr9_q);
    u0_m0_wo0_mtree_mult1_0_reset <= areset;
    u0_m0_wo0_mtree_mult1_0_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 17,
        lpm_widthb => 16,
        lpm_widthp => 33,
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

    -- u0_m0_wo0_mtree_add0_0(ADD,67)@17 + 1
    u0_m0_wo0_mtree_add0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 33 => u0_m0_wo0_mtree_mult1_0_q(32)) & u0_m0_wo0_mtree_mult1_0_q));
    u0_m0_wo0_mtree_add0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 33 => u0_m0_wo0_mtree_mult1_1_q(32)) & u0_m0_wo0_mtree_mult1_1_q));
    u0_m0_wo0_mtree_add0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_0_a) + SIGNED(u0_m0_wo0_mtree_add0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_0_q <= u0_m0_wo0_mtree_add0_0_o(33 downto 0);

    -- u0_m0_wo0_mtree_add1_0(ADD,72)@18 + 1
    u0_m0_wo0_mtree_add1_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((34 downto 34 => u0_m0_wo0_mtree_add0_0_q(33)) & u0_m0_wo0_mtree_add0_0_q));
    u0_m0_wo0_mtree_add1_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((34 downto 34 => u0_m0_wo0_mtree_add0_1_q(33)) & u0_m0_wo0_mtree_add0_1_q));
    u0_m0_wo0_mtree_add1_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_0_a) + SIGNED(u0_m0_wo0_mtree_add1_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_0_q <= u0_m0_wo0_mtree_add1_0_o(34 downto 0);

    -- u0_m0_wo0_mtree_add2_0(ADD,74)@19 + 1
    u0_m0_wo0_mtree_add2_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((35 downto 35 => u0_m0_wo0_mtree_add1_0_q(34)) & u0_m0_wo0_mtree_add1_0_q));
    u0_m0_wo0_mtree_add2_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((35 downto 35 => u0_m0_wo0_mtree_add1_1_q(34)) & u0_m0_wo0_mtree_add1_1_q));
    u0_m0_wo0_mtree_add2_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add2_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add2_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add2_0_a) + SIGNED(u0_m0_wo0_mtree_add2_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add2_0_q <= u0_m0_wo0_mtree_add2_0_o(35 downto 0);

    -- u0_m0_wo0_mtree_add3_0(ADD,75)@20 + 1
    u0_m0_wo0_mtree_add3_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((36 downto 36 => u0_m0_wo0_mtree_add2_0_q(35)) & u0_m0_wo0_mtree_add2_0_q));
    u0_m0_wo0_mtree_add3_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((36 downto 34 => u0_m0_wo0_mtree_add0_4_q(33)) & u0_m0_wo0_mtree_add0_4_q));
    u0_m0_wo0_mtree_add3_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add3_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add3_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add3_0_a) + SIGNED(u0_m0_wo0_mtree_add3_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add3_0_q <= u0_m0_wo0_mtree_add3_0_o(36 downto 0);

    -- u0_m0_wo0_accum(ADD,77)@21 + 1
    u0_m0_wo0_accum_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((46 downto 37 => u0_m0_wo0_mtree_add3_0_q(36)) & u0_m0_wo0_mtree_add3_0_q));
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
    u0_m0_wo0_accum_q <= u0_m0_wo0_accum_o(46 downto 0);

    -- GND(CONSTANT,0)@0
    GND_q <= "0";

    -- u0_m0_wo0_oseq(SEQUENCE,78)@20 + 1
    u0_m0_wo0_oseq_clkproc: PROCESS (clk, areset)
        variable u0_m0_wo0_oseq_c : SIGNED(12 downto 0);
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_oseq_c := "0001111111111";
            u0_m0_wo0_oseq_q <= "0";
            u0_m0_wo0_oseq_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (d_u0_m0_wo0_compute_q_20_q = "1") THEN
                IF (u0_m0_wo0_oseq_c = "0000000000000") THEN
                    u0_m0_wo0_oseq_eq <= '1';
                ELSE
                    u0_m0_wo0_oseq_eq <= '0';
                END IF;
                IF (u0_m0_wo0_oseq_eq = '1') THEN
                    u0_m0_wo0_oseq_c := u0_m0_wo0_oseq_c + 1023;
                ELSE
                    u0_m0_wo0_oseq_c := u0_m0_wo0_oseq_c - 1;
                END IF;
                u0_m0_wo0_oseq_q <= STD_LOGIC_VECTOR(u0_m0_wo0_oseq_c(12 downto 12));
            END IF;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_oseq_gated(LOGICAL,79)@21
    u0_m0_wo0_oseq_gated_q <= u0_m0_wo0_oseq_q and d_u0_m0_wo0_compute_q_21_q;

    -- u0_m0_wo0_oseq_gated_reg(REG,80)@21 + 1
    u0_m0_wo0_oseq_gated_reg_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_oseq_gated_reg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_oseq_gated_reg_q <= STD_LOGIC_VECTOR(u0_m0_wo0_oseq_gated_q);
        END IF;
    END PROCESS;

    -- xOut(PORTOUT,85)@22 + 1
    xOut_v <= u0_m0_wo0_oseq_gated_reg_q;
    xOut_c <= STD_LOGIC_VECTOR("0000000" & GND_q);
    xOut_0 <= u0_m0_wo0_accum_q;

END normal;
