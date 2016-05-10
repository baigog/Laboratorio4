transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {Laboratorio4_7_1200mv_85c_slow.vho}

vcom -93 -work work {E:/Mega/Facultad/FPGA/Laboratorio4/LFSR_4_TB.vhd}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /LFSR1=Laboratorio4_7_1200mv_85c_vhd_slow.sdo -L altera -L cycloneive -L gate_work -L work -voptargs="+acc"  LFSR_4_TB

add wave *
view structure
view signals
run -all
