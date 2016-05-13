transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+E:/Mega/Facultad/FPGA/Laboratorio4/db {E:/Mega/Facultad/FPGA/Laboratorio4/db/pll_altpll.v}
vcom -93 -work work {E:/Mega/Facultad/FPGA/Laboratorio4/DF_HZ_PLL.vhd}
vcom -93 -work work {E:/Mega/Facultad/FPGA/Laboratorio4/DF_HZ.vhd}
vcom -93 -work work {E:/Mega/Facultad/FPGA/Laboratorio4/DEC_HEX_7SEG.vhd}
vcom -93 -work work {E:/Mega/Facultad/FPGA/Laboratorio4/PLL/PLL.vhd}

vcom -93 -work work {E:/Mega/Facultad/FPGA/Laboratorio4/DF_HZ_PLL_TB.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  DF_HZ_PLL_TB

add wave *
view structure
view signals
run -all
