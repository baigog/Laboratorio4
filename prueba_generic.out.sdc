## Generated SDC file "prueba_generic.out.sdc"

## Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
## Your use of Altera Corporation's design tools, logic functions 
## and other software and tools, and its AMPP partner logic 
## functions, and any output files from any of the foregoing 
## (including device programming or simulation files), and any 
## associated documentation or information are expressly subject 
## to the terms and conditions of the Altera Program License 
## Subscription Agreement, the Altera Quartus Prime License Agreement,
## the Altera MegaCore Function License Agreement, or other 
## applicable license agreement, including, without limitation, 
## that your use is for the sole purpose of programming logic 
## devices manufactured by Altera and sold by Altera or its 
## authorized distributors.  Please refer to the applicable 
## agreement for further details.


## VENDOR  "Altera"
## PROGRAM "Quartus Prime"
## VERSION "Version 15.1.0 Build 185 10/21/2015 SJ Lite Edition"

## DATE    "Mon May 16 11:25:27 2016"

##
## DEVICE  "EP4CE115F29C7"
##


#**************************************************************
# Time Information
#**************************************************************

set_time_format -unit ns -decimal_places 3



#**************************************************************
# Create Clock
#**************************************************************

create_clock -name {CLK} -period 20.000 -waveform { 0.000 10.000 } [get_ports {CLK}]
create_clock -name {DF_HZ:DF1|Clk_aux} -period 1.000 -waveform { 0.000 0.500 } [get_registers {DF_HZ:DF1|Clk_aux}]


#**************************************************************
# Create Generated Clock
#**************************************************************



#**************************************************************
# Set Clock Latency
#**************************************************************



#**************************************************************
# Set Clock Uncertainty
#**************************************************************

set_clock_uncertainty -rise_from [get_clocks {DF_HZ:DF1|Clk_aux}] -rise_to [get_clocks {DF_HZ:DF1|Clk_aux}]  0.020  
set_clock_uncertainty -rise_from [get_clocks {DF_HZ:DF1|Clk_aux}] -fall_to [get_clocks {DF_HZ:DF1|Clk_aux}]  0.020  
set_clock_uncertainty -rise_from [get_clocks {DF_HZ:DF1|Clk_aux}] -rise_to [get_clocks {CLK}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {DF_HZ:DF1|Clk_aux}] -fall_to [get_clocks {CLK}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {DF_HZ:DF1|Clk_aux}] -rise_to [get_clocks {DF_HZ:DF1|Clk_aux}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {DF_HZ:DF1|Clk_aux}] -fall_to [get_clocks {DF_HZ:DF1|Clk_aux}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {DF_HZ:DF1|Clk_aux}] -rise_to [get_clocks {CLK}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {DF_HZ:DF1|Clk_aux}] -fall_to [get_clocks {CLK}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {CLK}] -rise_to [get_clocks {DF_HZ:DF1|Clk_aux}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {CLK}] -fall_to [get_clocks {DF_HZ:DF1|Clk_aux}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {CLK}] -rise_to [get_clocks {CLK}]  0.020  
set_clock_uncertainty -rise_from [get_clocks {CLK}] -fall_to [get_clocks {CLK}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {CLK}] -rise_to [get_clocks {DF_HZ:DF1|Clk_aux}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {CLK}] -fall_to [get_clocks {DF_HZ:DF1|Clk_aux}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {CLK}] -rise_to [get_clocks {CLK}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {CLK}] -fall_to [get_clocks {CLK}]  0.020  


#**************************************************************
# Set Input Delay
#**************************************************************



#**************************************************************
# Set Output Delay
#**************************************************************



#**************************************************************
# Set Clock Groups
#**************************************************************



#**************************************************************
# Set False Path
#**************************************************************



#**************************************************************
# Set Multicycle Path
#**************************************************************



#**************************************************************
# Set Maximum Delay
#**************************************************************



#**************************************************************
# Set Minimum Delay
#**************************************************************



#**************************************************************
# Set Input Transition
#**************************************************************

