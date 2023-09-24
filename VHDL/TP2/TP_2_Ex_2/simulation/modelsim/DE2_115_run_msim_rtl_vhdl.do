transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {H:/VHDL/TP2/TP_2_Ex_2/TP_2_Ex_2/src/deco1p4.vhd}

