transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {H:/Programmation/VHDL/TP_1_Ex_1/src/mux4v1.vhd}
