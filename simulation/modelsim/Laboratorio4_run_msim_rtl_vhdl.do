transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {E:/Mega/Facultad/FPGA/Laboratorio4/DEC_HEX_7SEG.vhd}
vcom -93 -work work {E:/Mega/Facultad/FPGA/Laboratorio4/DF_50MHZ.vhd}

vcom -93 -work work {E:/Mega/Facultad/FPGA/Laboratorio4/DF_50MHZ_PLL_TB.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  DF_50MHZ_PLL_TB

add wave *
view structure
view signals
run -all
