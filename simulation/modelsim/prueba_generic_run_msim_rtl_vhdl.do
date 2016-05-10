transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {E:/Mega/Facultad/FPGA/Laboratorio4/MUX_4_1.vhd}
vcom -93 -work work {E:/Mega/Facultad/FPGA/Laboratorio4/CONT_7SEG.vhd}
vcom -93 -work work {E:/Mega/Facultad/FPGA/Laboratorio4/DF_HZ.vhd}
vcom -93 -work work {E:/Mega/Facultad/FPGA/Laboratorio4/DEC_HEX_7SEG.vhd}
vcom -93 -work work {E:/Mega/Facultad/FPGA/Laboratorio4/FF_D.vhd}
vcom -93 -work work {E:/Mega/Facultad/FPGA/Laboratorio4/LFSR_4.vhd}
vcom -93 -work work {E:/Mega/Facultad/FPGA/Laboratorio4/CONT4_UPDOWN.vhd}
vcom -93 -work work {E:/Mega/Facultad/FPGA/Laboratorio4/CONT7V2.vhd}

vcom -93 -work work {E:/Mega/Facultad/FPGA/Laboratorio4/CONT7V2_TB.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  CONT7V2_TB

add wave *
view structure
view signals
run -all
