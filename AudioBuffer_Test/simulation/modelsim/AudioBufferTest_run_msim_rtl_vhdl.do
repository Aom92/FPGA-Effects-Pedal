transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlib SDRAMtest
vmap SDRAMtest SDRAMtest
vlog -vlog01compat -work SDRAMtest +incdir+/home/ar/Desktop/Hugo/DE10_AudioFun/AudioBuffer_Test/SDRAMtest/synthesis/submodules {/home/ar/Desktop/Hugo/DE10_AudioFun/AudioBuffer_Test/SDRAMtest/synthesis/submodules/altera_reset_controller.v}
vlog -vlog01compat -work SDRAMtest +incdir+/home/ar/Desktop/Hugo/DE10_AudioFun/AudioBuffer_Test/SDRAMtest/synthesis/submodules {/home/ar/Desktop/Hugo/DE10_AudioFun/AudioBuffer_Test/SDRAMtest/synthesis/submodules/altera_reset_synchronizer.v}
vlog -vlog01compat -work SDRAMtest +incdir+/home/ar/Desktop/Hugo/DE10_AudioFun/AudioBuffer_Test/SDRAMtest/synthesis/submodules {/home/ar/Desktop/Hugo/DE10_AudioFun/AudioBuffer_Test/SDRAMtest/synthesis/submodules/SDRAMtest_mm_interconnect_0.v}
vlog -vlog01compat -work SDRAMtest +incdir+/home/ar/Desktop/Hugo/DE10_AudioFun/AudioBuffer_Test/SDRAMtest/synthesis/submodules {/home/ar/Desktop/Hugo/DE10_AudioFun/AudioBuffer_Test/SDRAMtest/synthesis/submodules/SDRAMtest_sys_sdram_pll_0.v}
vlog -vlog01compat -work SDRAMtest +incdir+/home/ar/Desktop/Hugo/DE10_AudioFun/AudioBuffer_Test/SDRAMtest/synthesis/submodules {/home/ar/Desktop/Hugo/DE10_AudioFun/AudioBuffer_Test/SDRAMtest/synthesis/submodules/altera_up_avalon_reset_from_locked_signal.v}
vlog -vlog01compat -work SDRAMtest +incdir+/home/ar/Desktop/Hugo/DE10_AudioFun/AudioBuffer_Test/SDRAMtest/synthesis/submodules {/home/ar/Desktop/Hugo/DE10_AudioFun/AudioBuffer_Test/SDRAMtest/synthesis/submodules/altera_up_altpll.v}
vlog -vlog01compat -work SDRAMtest +incdir+/home/ar/Desktop/Hugo/DE10_AudioFun/AudioBuffer_Test/SDRAMtest/synthesis/submodules {/home/ar/Desktop/Hugo/DE10_AudioFun/AudioBuffer_Test/SDRAMtest/synthesis/submodules/SDRAMtest_new_sdram_controller_0.v}
vlib ADC
vmap ADC ADC
vlog -vlog01compat -work ADC +incdir+/home/ar/Desktop/Hugo/DE10_AudioFun/AudioBuffer_Test/ADC/synthesis/submodules {/home/ar/Desktop/Hugo/DE10_AudioFun/AudioBuffer_Test/ADC/synthesis/submodules/altera_reset_controller.v}
vlog -vlog01compat -work ADC +incdir+/home/ar/Desktop/Hugo/DE10_AudioFun/AudioBuffer_Test/ADC/synthesis/submodules {/home/ar/Desktop/Hugo/DE10_AudioFun/AudioBuffer_Test/ADC/synthesis/submodules/altera_reset_synchronizer.v}
vlog -vlog01compat -work ADC +incdir+/home/ar/Desktop/Hugo/DE10_AudioFun/AudioBuffer_Test/ADC/synthesis/submodules {/home/ar/Desktop/Hugo/DE10_AudioFun/AudioBuffer_Test/ADC/synthesis/submodules/ADC_modular_adc_0.v}
vlog -vlog01compat -work ADC +incdir+/home/ar/Desktop/Hugo/DE10_AudioFun/AudioBuffer_Test/ADC/synthesis/submodules {/home/ar/Desktop/Hugo/DE10_AudioFun/AudioBuffer_Test/ADC/synthesis/submodules/altera_modular_adc_control.v}
vlog -vlog01compat -work ADC +incdir+/home/ar/Desktop/Hugo/DE10_AudioFun/AudioBuffer_Test/ADC/synthesis/submodules {/home/ar/Desktop/Hugo/DE10_AudioFun/AudioBuffer_Test/ADC/synthesis/submodules/altera_modular_adc_control_avrg_fifo.v}
vlog -vlog01compat -work ADC +incdir+/home/ar/Desktop/Hugo/DE10_AudioFun/AudioBuffer_Test/ADC/synthesis/submodules {/home/ar/Desktop/Hugo/DE10_AudioFun/AudioBuffer_Test/ADC/synthesis/submodules/altera_modular_adc_control_fsm.v}
vlog -vlog01compat -work ADC +incdir+/home/ar/Desktop/Hugo/DE10_AudioFun/AudioBuffer_Test/ADC/synthesis/submodules {/home/ar/Desktop/Hugo/DE10_AudioFun/AudioBuffer_Test/ADC/synthesis/submodules/chsel_code_converter_sw_to_hw.v}
vlog -vlog01compat -work ADC +incdir+/home/ar/Desktop/Hugo/DE10_AudioFun/AudioBuffer_Test/ADC/synthesis/submodules {/home/ar/Desktop/Hugo/DE10_AudioFun/AudioBuffer_Test/ADC/synthesis/submodules/fiftyfivenm_adcblock_primitive_wrapper.v}
vlog -vlog01compat -work ADC +incdir+/home/ar/Desktop/Hugo/DE10_AudioFun/AudioBuffer_Test/ADC/synthesis/submodules {/home/ar/Desktop/Hugo/DE10_AudioFun/AudioBuffer_Test/ADC/synthesis/submodules/fiftyfivenm_adcblock_top_wrapper.v}
vlog -vlog01compat -work ADC +incdir+/home/ar/Desktop/Hugo/DE10_AudioFun/AudioBuffer_Test/ADC/synthesis/submodules {/home/ar/Desktop/Hugo/DE10_AudioFun/AudioBuffer_Test/ADC/synthesis/submodules/ADC_altpll_0.v}
vlog -sv -work SDRAMtest +incdir+/home/ar/Desktop/Hugo/DE10_AudioFun/AudioBuffer_Test/SDRAMtest/synthesis/submodules {/home/ar/Desktop/Hugo/DE10_AudioFun/AudioBuffer_Test/SDRAMtest/synthesis/submodules/altera_merlin_slave_translator.sv}
vlog -sv -work SDRAMtest +incdir+/home/ar/Desktop/Hugo/DE10_AudioFun/AudioBuffer_Test/SDRAMtest/synthesis/submodules {/home/ar/Desktop/Hugo/DE10_AudioFun/AudioBuffer_Test/SDRAMtest/synthesis/submodules/altera_merlin_master_translator.sv}
vcom -93 -work SDRAMtest {/home/ar/Desktop/Hugo/DE10_AudioFun/AudioBuffer_Test/SDRAMtest/synthesis/SDRAMtest.vhd}
vcom -93 -work ADC {/home/ar/Desktop/Hugo/DE10_AudioFun/AudioBuffer_Test/ADC/synthesis/ADC.vhd}
vcom -93 -work work {/home/ar/Desktop/Hugo/DE10_AudioFun/AudioBuffer_Test/AudioBufferTest.vhd}

