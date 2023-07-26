transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/UNAM/Servicio Social/Trabajo/DE10_AudioFun/Octave_Test/circ_buffer.vhd}

