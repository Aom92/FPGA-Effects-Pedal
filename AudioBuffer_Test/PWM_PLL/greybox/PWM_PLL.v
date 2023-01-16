// Copyright (C) 2020  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and any partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details, at
// https://fpgasoftware.intel.com/eula.

// VENDOR "Altera"
// PROGRAM "Quartus Prime"
// VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

// DATE "12/17/2022 15:23:58"

// 
// Device: Altera 10M50DAF484C7G Package FBGA484
// 

// 
// This greybox netlist file is for third party Synthesis Tools
// for timing and resource estimation only.
// 


module PWM_PLL (
	clk_clk,
	pwm_clk_clk,
	reset_reset_n)/* synthesis synthesis_greybox=0 */;
input 	clk_clk;
output 	pwm_clk_clk;
input 	reset_reset_n;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \pwm_pll|sd1|wire_pll7_clk[0] ;
wire \reset_reset_n~input_o ;
wire \clk_clk~input_o ;


PWM_PLL_PWM_PLL_PWM_PLL pwm_pll(
	.wire_pll7_clk_0(\pwm_pll|sd1|wire_pll7_clk[0] ),
	.clk_clk(\clk_clk~input_o ));

assign \clk_clk~input_o  = clk_clk;

assign pwm_clk_clk = \pwm_pll|sd1|wire_pll7_clk[0] ;

assign \reset_reset_n~input_o  = reset_reset_n;

endmodule

module PWM_PLL_PWM_PLL_PWM_PLL (
	wire_pll7_clk_0,
	clk_clk)/* synthesis synthesis_greybox=0 */;
output 	wire_pll7_clk_0;
input 	clk_clk;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



PWM_PLL_PWM_PLL_PWM_PLL_altpll_ju22 sd1(
	.clk({clk_unconnected_wire_4,clk_unconnected_wire_3,clk_unconnected_wire_2,clk_unconnected_wire_1,wire_pll7_clk_0}),
	.inclk({gnd,clk_clk}));

endmodule

module PWM_PLL_PWM_PLL_PWM_PLL_altpll_ju22 (
	clk,
	inclk)/* synthesis synthesis_greybox=0 */;
output 	[4:0] clk;
input 	[1:0] inclk;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \wire_pll7_clk[1] ;
wire \wire_pll7_clk[2] ;
wire \wire_pll7_clk[3] ;
wire \wire_pll7_clk[4] ;
wire wire_pll7_fbout;

wire [4:0] pll7_CLK_bus;

assign clk[0] = pll7_CLK_bus[0];
assign \wire_pll7_clk[1]  = pll7_CLK_bus[1];
assign \wire_pll7_clk[2]  = pll7_CLK_bus[2];
assign \wire_pll7_clk[3]  = pll7_CLK_bus[3];
assign \wire_pll7_clk[4]  = pll7_CLK_bus[4];

fiftyfivenm_pll pll7(
	.areset(gnd),
	.pfdena(vcc),
	.fbin(wire_pll7_fbout),
	.phaseupdown(gnd),
	.phasestep(gnd),
	.scandata(gnd),
	.scanclk(gnd),
	.scanclkena(vcc),
	.configupdate(gnd),
	.clkswitch(gnd),
	.inclk({gnd,inclk[0]}),
	.phasecounterselect(3'b000),
	.phasedone(),
	.scandataout(),
	.scandone(),
	.activeclock(),
	.locked(),
	.vcooverrange(),
	.vcounderrange(),
	.fbout(wire_pll7_fbout),
	.clk(pll7_CLK_bus),
	.clkbad());
defparam pll7.auto_settings = "false";
defparam pll7.bandwidth_type = "auto";
defparam pll7.c0_high = 3000;
defparam pll7.c0_initial = 1;
defparam pll7.c0_low = 3000;
defparam pll7.c0_mode = "even";
defparam pll7.c0_ph = 0;
defparam pll7.c1_high = 1;
defparam pll7.c1_initial = 1;
defparam pll7.c1_low = 1;
defparam pll7.c1_mode = "bypass";
defparam pll7.c1_ph = 0;
defparam pll7.c1_use_casc_in = "off";
defparam pll7.c2_high = 1;
defparam pll7.c2_initial = 1;
defparam pll7.c2_low = 1;
defparam pll7.c2_mode = "bypass";
defparam pll7.c2_ph = 0;
defparam pll7.c2_use_casc_in = "off";
defparam pll7.c3_high = 1;
defparam pll7.c3_initial = 1;
defparam pll7.c3_low = 1;
defparam pll7.c3_mode = "bypass";
defparam pll7.c3_ph = 0;
defparam pll7.c3_use_casc_in = "off";
defparam pll7.c4_high = 1;
defparam pll7.c4_initial = 1;
defparam pll7.c4_low = 1;
defparam pll7.c4_mode = "bypass";
defparam pll7.c4_ph = 0;
defparam pll7.c4_use_casc_in = "off";
defparam pll7.charge_pump_current_bits = 2;
defparam pll7.clk0_counter = "c0";
defparam pll7.clk0_divide_by = 1000;
defparam pll7.clk0_duty_cycle = 50;
defparam pll7.clk0_multiply_by = 3;
defparam pll7.clk0_phase_shift = "0";
defparam pll7.clk1_counter = "unused";
defparam pll7.clk1_divide_by = 0;
defparam pll7.clk1_duty_cycle = 50;
defparam pll7.clk1_multiply_by = 0;
defparam pll7.clk1_phase_shift = "0";
defparam pll7.clk2_counter = "unused";
defparam pll7.clk2_divide_by = 0;
defparam pll7.clk2_duty_cycle = 50;
defparam pll7.clk2_multiply_by = 0;
defparam pll7.clk2_phase_shift = "0";
defparam pll7.clk3_counter = "unused";
defparam pll7.clk3_divide_by = 0;
defparam pll7.clk3_duty_cycle = 50;
defparam pll7.clk3_multiply_by = 0;
defparam pll7.clk3_phase_shift = "0";
defparam pll7.clk4_counter = "unused";
defparam pll7.clk4_divide_by = 0;
defparam pll7.clk4_duty_cycle = 50;
defparam pll7.clk4_multiply_by = 0;
defparam pll7.clk4_phase_shift = "0";
defparam pll7.compensate_clock = "clock0";
defparam pll7.inclk0_input_frequency = 20000;
defparam pll7.inclk1_input_frequency = 0;
defparam pll7.loop_filter_c_bits = 2;
defparam pll7.loop_filter_r_bits = 1;
defparam pll7.m = 18;
defparam pll7.m_initial = 1;
defparam pll7.m_ph = 0;
defparam pll7.n = 1;
defparam pll7.operation_mode = "normal";
defparam pll7.pfd_max = 0;
defparam pll7.pfd_min = 0;
defparam pll7.self_reset_on_loss_lock = "off";
defparam pll7.simulation_type = "timing";
defparam pll7.switch_over_type = "auto";
defparam pll7.vco_center = 0;
defparam pll7.vco_divide_by = 0;
defparam pll7.vco_frequency_control = "auto";
defparam pll7.vco_max = 0;
defparam pll7.vco_min = 0;
defparam pll7.vco_multiply_by = 0;
defparam pll7.vco_phase_shift_step = 0;
defparam pll7.vco_post_scale = 1;

endmodule
