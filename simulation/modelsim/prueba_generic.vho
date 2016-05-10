-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 15.1.0 Build 185 10/21/2015 SJ Lite Edition"

-- DATE "05/10/2016 10:44:40"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	CONT7V2 IS
    PORT (
	CLK : IN std_logic;
	Rst : IN std_logic;
	EN : IN std_logic;
	SEL : IN std_logic_vector(1 DOWNTO 0);
	out1 : OUT std_logic_vector(6 DOWNTO 0)
	);
END CONT7V2;

-- Design Ports Information
-- out1[0]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out1[1]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out1[2]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out1[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out1[4]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out1[5]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out1[6]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEL[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEL[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EN	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rst	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF CONT7V2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_Rst : std_logic;
SIGNAL ww_EN : std_logic;
SIGNAL ww_SEL : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_out1 : std_logic_vector(6 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DF1|Clk_aux~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \out1[0]~output_o\ : std_logic;
SIGNAL \out1[1]~output_o\ : std_logic;
SIGNAL \out1[2]~output_o\ : std_logic;
SIGNAL \out1[3]~output_o\ : std_logic;
SIGNAL \out1[4]~output_o\ : std_logic;
SIGNAL \out1[5]~output_o\ : std_logic;
SIGNAL \out1[6]~output_o\ : std_logic;
SIGNAL \SEL[1]~input_o\ : std_logic;
SIGNAL \SEL[0]~input_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \DF1|Add0~0_combout\ : std_logic;
SIGNAL \DF1|count~12_combout\ : std_logic;
SIGNAL \Rst~input_o\ : std_logic;
SIGNAL \DF1|Add0~1\ : std_logic;
SIGNAL \DF1|Add0~2_combout\ : std_logic;
SIGNAL \DF1|Add0~3\ : std_logic;
SIGNAL \DF1|Add0~4_combout\ : std_logic;
SIGNAL \DF1|Add0~5\ : std_logic;
SIGNAL \DF1|Add0~6_combout\ : std_logic;
SIGNAL \DF1|Add0~7\ : std_logic;
SIGNAL \DF1|Add0~8_combout\ : std_logic;
SIGNAL \DF1|Add0~9\ : std_logic;
SIGNAL \DF1|Add0~10_combout\ : std_logic;
SIGNAL \DF1|Add0~11\ : std_logic;
SIGNAL \DF1|Add0~12_combout\ : std_logic;
SIGNAL \DF1|count~11_combout\ : std_logic;
SIGNAL \DF1|Add0~13\ : std_logic;
SIGNAL \DF1|Add0~14_combout\ : std_logic;
SIGNAL \DF1|Add0~15\ : std_logic;
SIGNAL \DF1|Add0~16_combout\ : std_logic;
SIGNAL \DF1|Add0~17\ : std_logic;
SIGNAL \DF1|Add0~18_combout\ : std_logic;
SIGNAL \DF1|Add0~19\ : std_logic;
SIGNAL \DF1|Add0~20_combout\ : std_logic;
SIGNAL \DF1|Add0~21\ : std_logic;
SIGNAL \DF1|Add0~22_combout\ : std_logic;
SIGNAL \DF1|count~10_combout\ : std_logic;
SIGNAL \DF1|Add0~23\ : std_logic;
SIGNAL \DF1|Add0~24_combout\ : std_logic;
SIGNAL \DF1|count~9_combout\ : std_logic;
SIGNAL \DF1|Add0~25\ : std_logic;
SIGNAL \DF1|Add0~26_combout\ : std_logic;
SIGNAL \DF1|count~8_combout\ : std_logic;
SIGNAL \DF1|Add0~27\ : std_logic;
SIGNAL \DF1|Add0~28_combout\ : std_logic;
SIGNAL \DF1|count~7_combout\ : std_logic;
SIGNAL \DF1|Add0~29\ : std_logic;
SIGNAL \DF1|Add0~30_combout\ : std_logic;
SIGNAL \DF1|Add0~31\ : std_logic;
SIGNAL \DF1|Add0~32_combout\ : std_logic;
SIGNAL \DF1|count~6_combout\ : std_logic;
SIGNAL \DF1|Add0~33\ : std_logic;
SIGNAL \DF1|Add0~34_combout\ : std_logic;
SIGNAL \DF1|Add0~35\ : std_logic;
SIGNAL \DF1|Add0~36_combout\ : std_logic;
SIGNAL \DF1|count~5_combout\ : std_logic;
SIGNAL \DF1|Add0~37\ : std_logic;
SIGNAL \DF1|Add0~38_combout\ : std_logic;
SIGNAL \DF1|count~4_combout\ : std_logic;
SIGNAL \DF1|Add0~39\ : std_logic;
SIGNAL \DF1|Add0~40_combout\ : std_logic;
SIGNAL \DF1|count~3_combout\ : std_logic;
SIGNAL \DF1|Equal0~3_combout\ : std_logic;
SIGNAL \DF1|Equal0~4_combout\ : std_logic;
SIGNAL \DF1|Equal0~6_combout\ : std_logic;
SIGNAL \DF1|Equal0~7_combout\ : std_logic;
SIGNAL \DF1|Equal0~5_combout\ : std_logic;
SIGNAL \DF1|Equal0~8_combout\ : std_logic;
SIGNAL \DF1|Add0~41\ : std_logic;
SIGNAL \DF1|Add0~42_combout\ : std_logic;
SIGNAL \DF1|count~2_combout\ : std_logic;
SIGNAL \DF1|Add0~43\ : std_logic;
SIGNAL \DF1|Add0~44_combout\ : std_logic;
SIGNAL \DF1|count~1_combout\ : std_logic;
SIGNAL \DF1|Add0~45\ : std_logic;
SIGNAL \DF1|Add0~46_combout\ : std_logic;
SIGNAL \DF1|Add0~47\ : std_logic;
SIGNAL \DF1|Add0~48_combout\ : std_logic;
SIGNAL \DF1|count~0_combout\ : std_logic;
SIGNAL \DF1|Equal0~1_combout\ : std_logic;
SIGNAL \DF1|Add0~49\ : std_logic;
SIGNAL \DF1|Add0~50_combout\ : std_logic;
SIGNAL \DF1|Add0~51\ : std_logic;
SIGNAL \DF1|Add0~52_combout\ : std_logic;
SIGNAL \DF1|Add0~53\ : std_logic;
SIGNAL \DF1|Add0~54_combout\ : std_logic;
SIGNAL \DF1|Add0~55\ : std_logic;
SIGNAL \DF1|Add0~56_combout\ : std_logic;
SIGNAL \DF1|Equal0~0_combout\ : std_logic;
SIGNAL \DF1|Equal0~2_combout\ : std_logic;
SIGNAL \DF1|Equal0~9_combout\ : std_logic;
SIGNAL \DF1|Clk_aux~0_combout\ : std_logic;
SIGNAL \DF1|Clk_aux~feeder_combout\ : std_logic;
SIGNAL \DF1|Clk_aux~q\ : std_logic;
SIGNAL \DF1|Clk_aux~clkctrl_outclk\ : std_logic;
SIGNAL \EN~input_o\ : std_logic;
SIGNAL \CONT1|aux~0_combout\ : std_logic;
SIGNAL \CONT1|aux~1_combout\ : std_logic;
SIGNAL \CONT1|aux~2_combout\ : std_logic;
SIGNAL \LFSR1|LFSR:3:i32:bit32|Q~feeder_combout\ : std_logic;
SIGNAL \LFSR1|LFSR:3:i32:bit32|Q~q\ : std_logic;
SIGNAL \LFSR1|LFSR:0:i0:bit0|Q~q\ : std_logic;
SIGNAL \LFSR1|XOR1~combout\ : std_logic;
SIGNAL \LFSR1|LFSR:1:i1:bit1|Q~q\ : std_logic;
SIGNAL \LFSR1|LFSR:2:i32:bit32|Q~feeder_combout\ : std_logic;
SIGNAL \LFSR1|LFSR:2:i32:bit32|Q~q\ : std_logic;
SIGNAL \s7SEG1|CONT_7SEG:2:MUX|Mux0~0_combout\ : std_logic;
SIGNAL \CONT2|aux~0_combout\ : std_logic;
SIGNAL \CONT2|aux~1_combout\ : std_logic;
SIGNAL \CONT3|aux[2]~feeder_combout\ : std_logic;
SIGNAL \CONT3|aux~0_combout\ : std_logic;
SIGNAL \CONT3|b[2]~feeder_combout\ : std_logic;
SIGNAL \s7SEG1|CONT_7SEG:2:MUX|Mux0~1_combout\ : std_logic;
SIGNAL \CONT2|aux[3]~feeder_combout\ : std_logic;
SIGNAL \CONT2|Add2~0_combout\ : std_logic;
SIGNAL \CONT2|aux~2_combout\ : std_logic;
SIGNAL \s7SEG1|CONT_7SEG:3:MUX|Mux0~0_combout\ : std_logic;
SIGNAL \CONT3|aux~1_combout\ : std_logic;
SIGNAL \CONT1|aux[3]~feeder_combout\ : std_logic;
SIGNAL \CONT1|Add0~0_combout\ : std_logic;
SIGNAL \CONT1|aux~3_combout\ : std_logic;
SIGNAL \s7SEG1|CONT_7SEG:3:MUX|Mux0~1_combout\ : std_logic;
SIGNAL \s7SEG1|CONT_7SEG:1:MUX|Mux0~0_combout\ : std_logic;
SIGNAL \s7SEG1|CONT_7SEG:1:MUX|Mux0~1_combout\ : std_logic;
SIGNAL \s7SEG1|CONT_7SEG:0:MUX|Mux0~0_combout\ : std_logic;
SIGNAL \s7SEG1|DEC|Mux6~0_combout\ : std_logic;
SIGNAL \s7SEG1|DEC|Mux5~0_combout\ : std_logic;
SIGNAL \s7SEG1|DEC|Mux4~0_combout\ : std_logic;
SIGNAL \s7SEG1|DEC|Mux3~0_combout\ : std_logic;
SIGNAL \s7SEG1|DEC|Mux2~0_combout\ : std_logic;
SIGNAL \s7SEG1|DEC|Mux1~0_combout\ : std_logic;
SIGNAL \s7SEG1|DEC|Mux0~0_combout\ : std_logic;
SIGNAL \CONT1|b\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CONT1|aux\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CONT3|b\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CONT2|b\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CONT2|aux\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CONT3|aux\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DF1|count\ : std_logic_vector(28 DOWNTO 0);
SIGNAL \s7SEG1|DEC|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \ALT_INV_Rst~input_o\ : std_logic;

BEGIN

ww_CLK <= CLK;
ww_Rst <= Rst;
ww_EN <= EN;
ww_SEL <= SEL;
out1 <= ww_out1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);

\DF1|Clk_aux~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \DF1|Clk_aux~q\);
\s7SEG1|DEC|ALT_INV_Mux6~0_combout\ <= NOT \s7SEG1|DEC|Mux6~0_combout\;
\ALT_INV_Rst~input_o\ <= NOT \Rst~input_o\;

-- Location: IOOBUF_X115_Y69_N2
\out1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s7SEG1|DEC|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \out1[0]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\out1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s7SEG1|DEC|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \out1[1]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\out1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s7SEG1|DEC|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \out1[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\out1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s7SEG1|DEC|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \out1[3]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\out1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s7SEG1|DEC|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \out1[4]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\out1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s7SEG1|DEC|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \out1[5]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\out1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s7SEG1|DEC|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \out1[6]~output_o\);

-- Location: IOIBUF_X115_Y14_N1
\SEL[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SEL(1),
	o => \SEL[1]~input_o\);

-- Location: IOIBUF_X115_Y17_N1
\SEL[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SEL(0),
	o => \SEL[0]~input_o\);

-- Location: IOIBUF_X0_Y36_N15
\CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G4
\CLK~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: LCCOMB_X102_Y14_N4
\DF1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DF1|Add0~0_combout\ = \DF1|count\(0) $ (VCC)
-- \DF1|Add0~1\ = CARRY(\DF1|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DF1|count\(0),
	datad => VCC,
	combout => \DF1|Add0~0_combout\,
	cout => \DF1|Add0~1\);

-- Location: LCCOMB_X102_Y14_N2
\DF1|count~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \DF1|count~12_combout\ = (\DF1|Add0~0_combout\ & !\DF1|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DF1|Add0~0_combout\,
	datac => \DF1|Equal0~9_combout\,
	combout => \DF1|count~12_combout\);

-- Location: IOIBUF_X115_Y13_N8
\Rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Rst,
	o => \Rst~input_o\);

-- Location: FF_X102_Y14_N3
\DF1|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DF1|count~12_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DF1|count\(0));

-- Location: LCCOMB_X102_Y14_N6
\DF1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DF1|Add0~2_combout\ = (\DF1|count\(1) & (!\DF1|Add0~1\)) # (!\DF1|count\(1) & ((\DF1|Add0~1\) # (GND)))
-- \DF1|Add0~3\ = CARRY((!\DF1|Add0~1\) # (!\DF1|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DF1|count\(1),
	datad => VCC,
	cin => \DF1|Add0~1\,
	combout => \DF1|Add0~2_combout\,
	cout => \DF1|Add0~3\);

-- Location: FF_X102_Y14_N7
\DF1|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DF1|Add0~2_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DF1|count\(1));

-- Location: LCCOMB_X102_Y14_N8
\DF1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DF1|Add0~4_combout\ = (\DF1|count\(2) & (\DF1|Add0~3\ $ (GND))) # (!\DF1|count\(2) & (!\DF1|Add0~3\ & VCC))
-- \DF1|Add0~5\ = CARRY((\DF1|count\(2) & !\DF1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DF1|count\(2),
	datad => VCC,
	cin => \DF1|Add0~3\,
	combout => \DF1|Add0~4_combout\,
	cout => \DF1|Add0~5\);

-- Location: FF_X102_Y14_N9
\DF1|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DF1|Add0~4_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DF1|count\(2));

-- Location: LCCOMB_X102_Y14_N10
\DF1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DF1|Add0~6_combout\ = (\DF1|count\(3) & (!\DF1|Add0~5\)) # (!\DF1|count\(3) & ((\DF1|Add0~5\) # (GND)))
-- \DF1|Add0~7\ = CARRY((!\DF1|Add0~5\) # (!\DF1|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DF1|count\(3),
	datad => VCC,
	cin => \DF1|Add0~5\,
	combout => \DF1|Add0~6_combout\,
	cout => \DF1|Add0~7\);

-- Location: FF_X102_Y14_N11
\DF1|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DF1|Add0~6_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DF1|count\(3));

-- Location: LCCOMB_X102_Y14_N12
\DF1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \DF1|Add0~8_combout\ = (\DF1|count\(4) & (\DF1|Add0~7\ $ (GND))) # (!\DF1|count\(4) & (!\DF1|Add0~7\ & VCC))
-- \DF1|Add0~9\ = CARRY((\DF1|count\(4) & !\DF1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DF1|count\(4),
	datad => VCC,
	cin => \DF1|Add0~7\,
	combout => \DF1|Add0~8_combout\,
	cout => \DF1|Add0~9\);

-- Location: FF_X102_Y14_N13
\DF1|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DF1|Add0~8_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DF1|count\(4));

-- Location: LCCOMB_X102_Y14_N14
\DF1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \DF1|Add0~10_combout\ = (\DF1|count\(5) & (!\DF1|Add0~9\)) # (!\DF1|count\(5) & ((\DF1|Add0~9\) # (GND)))
-- \DF1|Add0~11\ = CARRY((!\DF1|Add0~9\) # (!\DF1|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DF1|count\(5),
	datad => VCC,
	cin => \DF1|Add0~9\,
	combout => \DF1|Add0~10_combout\,
	cout => \DF1|Add0~11\);

-- Location: FF_X102_Y14_N15
\DF1|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DF1|Add0~10_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DF1|count\(5));

-- Location: LCCOMB_X102_Y14_N16
\DF1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \DF1|Add0~12_combout\ = (\DF1|count\(6) & (\DF1|Add0~11\ $ (GND))) # (!\DF1|count\(6) & (!\DF1|Add0~11\ & VCC))
-- \DF1|Add0~13\ = CARRY((\DF1|count\(6) & !\DF1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DF1|count\(6),
	datad => VCC,
	cin => \DF1|Add0~11\,
	combout => \DF1|Add0~12_combout\,
	cout => \DF1|Add0~13\);

-- Location: LCCOMB_X103_Y14_N26
\DF1|count~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \DF1|count~11_combout\ = (\DF1|Add0~12_combout\ & !\DF1|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DF1|Add0~12_combout\,
	datad => \DF1|Equal0~9_combout\,
	combout => \DF1|count~11_combout\);

-- Location: FF_X103_Y14_N27
\DF1|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DF1|count~11_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DF1|count\(6));

-- Location: LCCOMB_X102_Y14_N18
\DF1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \DF1|Add0~14_combout\ = (\DF1|count\(7) & (!\DF1|Add0~13\)) # (!\DF1|count\(7) & ((\DF1|Add0~13\) # (GND)))
-- \DF1|Add0~15\ = CARRY((!\DF1|Add0~13\) # (!\DF1|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DF1|count\(7),
	datad => VCC,
	cin => \DF1|Add0~13\,
	combout => \DF1|Add0~14_combout\,
	cout => \DF1|Add0~15\);

-- Location: FF_X102_Y14_N19
\DF1|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DF1|Add0~14_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DF1|count\(7));

-- Location: LCCOMB_X102_Y14_N20
\DF1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \DF1|Add0~16_combout\ = (\DF1|count\(8) & (\DF1|Add0~15\ $ (GND))) # (!\DF1|count\(8) & (!\DF1|Add0~15\ & VCC))
-- \DF1|Add0~17\ = CARRY((\DF1|count\(8) & !\DF1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DF1|count\(8),
	datad => VCC,
	cin => \DF1|Add0~15\,
	combout => \DF1|Add0~16_combout\,
	cout => \DF1|Add0~17\);

-- Location: FF_X102_Y14_N21
\DF1|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DF1|Add0~16_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DF1|count\(8));

-- Location: LCCOMB_X102_Y14_N22
\DF1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \DF1|Add0~18_combout\ = (\DF1|count\(9) & (!\DF1|Add0~17\)) # (!\DF1|count\(9) & ((\DF1|Add0~17\) # (GND)))
-- \DF1|Add0~19\ = CARRY((!\DF1|Add0~17\) # (!\DF1|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DF1|count\(9),
	datad => VCC,
	cin => \DF1|Add0~17\,
	combout => \DF1|Add0~18_combout\,
	cout => \DF1|Add0~19\);

-- Location: FF_X102_Y14_N23
\DF1|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DF1|Add0~18_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DF1|count\(9));

-- Location: LCCOMB_X102_Y14_N24
\DF1|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \DF1|Add0~20_combout\ = (\DF1|count\(10) & (\DF1|Add0~19\ $ (GND))) # (!\DF1|count\(10) & (!\DF1|Add0~19\ & VCC))
-- \DF1|Add0~21\ = CARRY((\DF1|count\(10) & !\DF1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DF1|count\(10),
	datad => VCC,
	cin => \DF1|Add0~19\,
	combout => \DF1|Add0~20_combout\,
	cout => \DF1|Add0~21\);

-- Location: FF_X102_Y14_N25
\DF1|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DF1|Add0~20_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DF1|count\(10));

-- Location: LCCOMB_X102_Y14_N26
\DF1|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \DF1|Add0~22_combout\ = (\DF1|count\(11) & (!\DF1|Add0~21\)) # (!\DF1|count\(11) & ((\DF1|Add0~21\) # (GND)))
-- \DF1|Add0~23\ = CARRY((!\DF1|Add0~21\) # (!\DF1|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DF1|count\(11),
	datad => VCC,
	cin => \DF1|Add0~21\,
	combout => \DF1|Add0~22_combout\,
	cout => \DF1|Add0~23\);

-- Location: LCCOMB_X103_Y14_N6
\DF1|count~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \DF1|count~10_combout\ = (\DF1|Add0~22_combout\ & !\DF1|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DF1|Add0~22_combout\,
	datad => \DF1|Equal0~9_combout\,
	combout => \DF1|count~10_combout\);

-- Location: FF_X103_Y14_N7
\DF1|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DF1|count~10_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DF1|count\(11));

-- Location: LCCOMB_X102_Y14_N28
\DF1|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \DF1|Add0~24_combout\ = (\DF1|count\(12) & (\DF1|Add0~23\ $ (GND))) # (!\DF1|count\(12) & (!\DF1|Add0~23\ & VCC))
-- \DF1|Add0~25\ = CARRY((\DF1|count\(12) & !\DF1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DF1|count\(12),
	datad => VCC,
	cin => \DF1|Add0~23\,
	combout => \DF1|Add0~24_combout\,
	cout => \DF1|Add0~25\);

-- Location: LCCOMB_X103_Y14_N4
\DF1|count~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \DF1|count~9_combout\ = (!\DF1|Equal0~9_combout\ & \DF1|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DF1|Equal0~9_combout\,
	datac => \DF1|Add0~24_combout\,
	combout => \DF1|count~9_combout\);

-- Location: FF_X103_Y14_N5
\DF1|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DF1|count~9_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DF1|count\(12));

-- Location: LCCOMB_X102_Y14_N30
\DF1|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \DF1|Add0~26_combout\ = (\DF1|count\(13) & (!\DF1|Add0~25\)) # (!\DF1|count\(13) & ((\DF1|Add0~25\) # (GND)))
-- \DF1|Add0~27\ = CARRY((!\DF1|Add0~25\) # (!\DF1|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DF1|count\(13),
	datad => VCC,
	cin => \DF1|Add0~25\,
	combout => \DF1|Add0~26_combout\,
	cout => \DF1|Add0~27\);

-- Location: LCCOMB_X103_Y14_N20
\DF1|count~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \DF1|count~8_combout\ = (!\DF1|Equal0~9_combout\ & \DF1|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DF1|Equal0~9_combout\,
	datad => \DF1|Add0~26_combout\,
	combout => \DF1|count~8_combout\);

-- Location: FF_X103_Y14_N21
\DF1|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DF1|count~8_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DF1|count\(13));

-- Location: LCCOMB_X102_Y13_N0
\DF1|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \DF1|Add0~28_combout\ = (\DF1|count\(14) & (\DF1|Add0~27\ $ (GND))) # (!\DF1|count\(14) & (!\DF1|Add0~27\ & VCC))
-- \DF1|Add0~29\ = CARRY((\DF1|count\(14) & !\DF1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DF1|count\(14),
	datad => VCC,
	cin => \DF1|Add0~27\,
	combout => \DF1|Add0~28_combout\,
	cout => \DF1|Add0~29\);

-- Location: LCCOMB_X103_Y14_N10
\DF1|count~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \DF1|count~7_combout\ = (\DF1|Add0~28_combout\ & !\DF1|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DF1|Add0~28_combout\,
	datad => \DF1|Equal0~9_combout\,
	combout => \DF1|count~7_combout\);

-- Location: FF_X103_Y14_N11
\DF1|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DF1|count~7_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DF1|count\(14));

-- Location: LCCOMB_X102_Y13_N2
\DF1|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \DF1|Add0~30_combout\ = (\DF1|count\(15) & (!\DF1|Add0~29\)) # (!\DF1|count\(15) & ((\DF1|Add0~29\) # (GND)))
-- \DF1|Add0~31\ = CARRY((!\DF1|Add0~29\) # (!\DF1|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DF1|count\(15),
	datad => VCC,
	cin => \DF1|Add0~29\,
	combout => \DF1|Add0~30_combout\,
	cout => \DF1|Add0~31\);

-- Location: FF_X102_Y13_N3
\DF1|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DF1|Add0~30_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DF1|count\(15));

-- Location: LCCOMB_X102_Y13_N4
\DF1|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \DF1|Add0~32_combout\ = (\DF1|count\(16) & (\DF1|Add0~31\ $ (GND))) # (!\DF1|count\(16) & (!\DF1|Add0~31\ & VCC))
-- \DF1|Add0~33\ = CARRY((\DF1|count\(16) & !\DF1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DF1|count\(16),
	datad => VCC,
	cin => \DF1|Add0~31\,
	combout => \DF1|Add0~32_combout\,
	cout => \DF1|Add0~33\);

-- Location: LCCOMB_X103_Y14_N24
\DF1|count~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DF1|count~6_combout\ = (!\DF1|Equal0~9_combout\ & \DF1|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DF1|Equal0~9_combout\,
	datad => \DF1|Add0~32_combout\,
	combout => \DF1|count~6_combout\);

-- Location: FF_X103_Y14_N25
\DF1|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DF1|count~6_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DF1|count\(16));

-- Location: LCCOMB_X102_Y13_N6
\DF1|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \DF1|Add0~34_combout\ = (\DF1|count\(17) & (!\DF1|Add0~33\)) # (!\DF1|count\(17) & ((\DF1|Add0~33\) # (GND)))
-- \DF1|Add0~35\ = CARRY((!\DF1|Add0~33\) # (!\DF1|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DF1|count\(17),
	datad => VCC,
	cin => \DF1|Add0~33\,
	combout => \DF1|Add0~34_combout\,
	cout => \DF1|Add0~35\);

-- Location: FF_X102_Y13_N7
\DF1|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DF1|Add0~34_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DF1|count\(17));

-- Location: LCCOMB_X102_Y13_N8
\DF1|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \DF1|Add0~36_combout\ = (\DF1|count\(18) & (\DF1|Add0~35\ $ (GND))) # (!\DF1|count\(18) & (!\DF1|Add0~35\ & VCC))
-- \DF1|Add0~37\ = CARRY((\DF1|count\(18) & !\DF1|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DF1|count\(18),
	datad => VCC,
	cin => \DF1|Add0~35\,
	combout => \DF1|Add0~36_combout\,
	cout => \DF1|Add0~37\);

-- Location: LCCOMB_X103_Y14_N28
\DF1|count~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DF1|count~5_combout\ = (!\DF1|Equal0~9_combout\ & \DF1|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DF1|Equal0~9_combout\,
	datad => \DF1|Add0~36_combout\,
	combout => \DF1|count~5_combout\);

-- Location: FF_X103_Y14_N29
\DF1|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DF1|count~5_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DF1|count\(18));

-- Location: LCCOMB_X102_Y13_N10
\DF1|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \DF1|Add0~38_combout\ = (\DF1|count\(19) & (!\DF1|Add0~37\)) # (!\DF1|count\(19) & ((\DF1|Add0~37\) # (GND)))
-- \DF1|Add0~39\ = CARRY((!\DF1|Add0~37\) # (!\DF1|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DF1|count\(19),
	datad => VCC,
	cin => \DF1|Add0~37\,
	combout => \DF1|Add0~38_combout\,
	cout => \DF1|Add0~39\);

-- Location: LCCOMB_X103_Y14_N18
\DF1|count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DF1|count~4_combout\ = (\DF1|Add0~38_combout\ & !\DF1|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DF1|Add0~38_combout\,
	datad => \DF1|Equal0~9_combout\,
	combout => \DF1|count~4_combout\);

-- Location: FF_X103_Y14_N19
\DF1|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DF1|count~4_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DF1|count\(19));

-- Location: LCCOMB_X102_Y13_N12
\DF1|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \DF1|Add0~40_combout\ = (\DF1|count\(20) & (\DF1|Add0~39\ $ (GND))) # (!\DF1|count\(20) & (!\DF1|Add0~39\ & VCC))
-- \DF1|Add0~41\ = CARRY((\DF1|count\(20) & !\DF1|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DF1|count\(20),
	datad => VCC,
	cin => \DF1|Add0~39\,
	combout => \DF1|Add0~40_combout\,
	cout => \DF1|Add0~41\);

-- Location: LCCOMB_X103_Y14_N16
\DF1|count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DF1|count~3_combout\ = (!\DF1|Equal0~9_combout\ & \DF1|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DF1|Equal0~9_combout\,
	datad => \DF1|Add0~40_combout\,
	combout => \DF1|count~3_combout\);

-- Location: FF_X103_Y14_N17
\DF1|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DF1|count~3_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DF1|count\(20));

-- Location: LCCOMB_X103_Y14_N22
\DF1|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DF1|Equal0~3_combout\ = (\DF1|count\(19) & (\DF1|count\(18) & (!\DF1|count\(17) & \DF1|count\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DF1|count\(19),
	datab => \DF1|count\(18),
	datac => \DF1|count\(17),
	datad => \DF1|count\(20),
	combout => \DF1|Equal0~3_combout\);

-- Location: LCCOMB_X103_Y14_N14
\DF1|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DF1|Equal0~4_combout\ = (\DF1|count\(14) & (\DF1|count\(16) & (!\DF1|count\(15) & \DF1|count\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DF1|count\(14),
	datab => \DF1|count\(16),
	datac => \DF1|count\(15),
	datad => \DF1|count\(13),
	combout => \DF1|Equal0~4_combout\);

-- Location: LCCOMB_X103_Y14_N0
\DF1|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DF1|Equal0~6_combout\ = (!\DF1|count\(5) & (!\DF1|count\(7) & (\DF1|count\(6) & !\DF1|count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DF1|count\(5),
	datab => \DF1|count\(7),
	datac => \DF1|count\(6),
	datad => \DF1|count\(8),
	combout => \DF1|Equal0~6_combout\);

-- Location: LCCOMB_X102_Y14_N0
\DF1|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \DF1|Equal0~7_combout\ = (!\DF1|count\(4) & (!\DF1|count\(2) & (!\DF1|count\(1) & !\DF1|count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DF1|count\(4),
	datab => \DF1|count\(2),
	datac => \DF1|count\(1),
	datad => \DF1|count\(3),
	combout => \DF1|Equal0~7_combout\);

-- Location: LCCOMB_X103_Y14_N12
\DF1|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DF1|Equal0~5_combout\ = (\DF1|count\(11) & (!\DF1|count\(10) & (\DF1|count\(12) & !\DF1|count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DF1|count\(11),
	datab => \DF1|count\(10),
	datac => \DF1|count\(12),
	datad => \DF1|count\(9),
	combout => \DF1|Equal0~5_combout\);

-- Location: LCCOMB_X103_Y14_N30
\DF1|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \DF1|Equal0~8_combout\ = (!\DF1|count\(0) & (\DF1|Equal0~6_combout\ & (\DF1|Equal0~7_combout\ & \DF1|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DF1|count\(0),
	datab => \DF1|Equal0~6_combout\,
	datac => \DF1|Equal0~7_combout\,
	datad => \DF1|Equal0~5_combout\,
	combout => \DF1|Equal0~8_combout\);

-- Location: LCCOMB_X102_Y13_N14
\DF1|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \DF1|Add0~42_combout\ = (\DF1|count\(21) & (!\DF1|Add0~41\)) # (!\DF1|count\(21) & ((\DF1|Add0~41\) # (GND)))
-- \DF1|Add0~43\ = CARRY((!\DF1|Add0~41\) # (!\DF1|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DF1|count\(21),
	datad => VCC,
	cin => \DF1|Add0~41\,
	combout => \DF1|Add0~42_combout\,
	cout => \DF1|Add0~43\);

-- Location: LCCOMB_X103_Y13_N30
\DF1|count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DF1|count~2_combout\ = (!\DF1|Equal0~9_combout\ & \DF1|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DF1|Equal0~9_combout\,
	datad => \DF1|Add0~42_combout\,
	combout => \DF1|count~2_combout\);

-- Location: FF_X103_Y13_N31
\DF1|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DF1|count~2_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DF1|count\(21));

-- Location: LCCOMB_X102_Y13_N16
\DF1|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \DF1|Add0~44_combout\ = (\DF1|count\(22) & (\DF1|Add0~43\ $ (GND))) # (!\DF1|count\(22) & (!\DF1|Add0~43\ & VCC))
-- \DF1|Add0~45\ = CARRY((\DF1|count\(22) & !\DF1|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DF1|count\(22),
	datad => VCC,
	cin => \DF1|Add0~43\,
	combout => \DF1|Add0~44_combout\,
	cout => \DF1|Add0~45\);

-- Location: LCCOMB_X102_Y13_N30
\DF1|count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DF1|count~1_combout\ = (!\DF1|Equal0~9_combout\ & \DF1|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DF1|Equal0~9_combout\,
	datad => \DF1|Add0~44_combout\,
	combout => \DF1|count~1_combout\);

-- Location: FF_X102_Y13_N31
\DF1|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DF1|count~1_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DF1|count\(22));

-- Location: LCCOMB_X102_Y13_N18
\DF1|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \DF1|Add0~46_combout\ = (\DF1|count\(23) & (!\DF1|Add0~45\)) # (!\DF1|count\(23) & ((\DF1|Add0~45\) # (GND)))
-- \DF1|Add0~47\ = CARRY((!\DF1|Add0~45\) # (!\DF1|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DF1|count\(23),
	datad => VCC,
	cin => \DF1|Add0~45\,
	combout => \DF1|Add0~46_combout\,
	cout => \DF1|Add0~47\);

-- Location: FF_X102_Y13_N19
\DF1|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DF1|Add0~46_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DF1|count\(23));

-- Location: LCCOMB_X102_Y13_N20
\DF1|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \DF1|Add0~48_combout\ = (\DF1|count\(24) & (\DF1|Add0~47\ $ (GND))) # (!\DF1|count\(24) & (!\DF1|Add0~47\ & VCC))
-- \DF1|Add0~49\ = CARRY((\DF1|count\(24) & !\DF1|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DF1|count\(24),
	datad => VCC,
	cin => \DF1|Add0~47\,
	combout => \DF1|Add0~48_combout\,
	cout => \DF1|Add0~49\);

-- Location: LCCOMB_X103_Y13_N26
\DF1|count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DF1|count~0_combout\ = (!\DF1|Equal0~9_combout\ & \DF1|Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DF1|Equal0~9_combout\,
	datad => \DF1|Add0~48_combout\,
	combout => \DF1|count~0_combout\);

-- Location: FF_X103_Y13_N27
\DF1|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DF1|count~0_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DF1|count\(24));

-- Location: LCCOMB_X103_Y13_N22
\DF1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DF1|Equal0~1_combout\ = (\DF1|count\(24) & !\DF1|count\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DF1|count\(24),
	datad => \DF1|count\(23),
	combout => \DF1|Equal0~1_combout\);

-- Location: LCCOMB_X102_Y13_N22
\DF1|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \DF1|Add0~50_combout\ = (\DF1|count\(25) & (!\DF1|Add0~49\)) # (!\DF1|count\(25) & ((\DF1|Add0~49\) # (GND)))
-- \DF1|Add0~51\ = CARRY((!\DF1|Add0~49\) # (!\DF1|count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DF1|count\(25),
	datad => VCC,
	cin => \DF1|Add0~49\,
	combout => \DF1|Add0~50_combout\,
	cout => \DF1|Add0~51\);

-- Location: FF_X102_Y13_N23
\DF1|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DF1|Add0~50_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DF1|count\(25));

-- Location: LCCOMB_X102_Y13_N24
\DF1|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \DF1|Add0~52_combout\ = (\DF1|count\(26) & (\DF1|Add0~51\ $ (GND))) # (!\DF1|count\(26) & (!\DF1|Add0~51\ & VCC))
-- \DF1|Add0~53\ = CARRY((\DF1|count\(26) & !\DF1|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DF1|count\(26),
	datad => VCC,
	cin => \DF1|Add0~51\,
	combout => \DF1|Add0~52_combout\,
	cout => \DF1|Add0~53\);

-- Location: FF_X102_Y13_N25
\DF1|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DF1|Add0~52_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DF1|count\(26));

-- Location: LCCOMB_X102_Y13_N26
\DF1|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \DF1|Add0~54_combout\ = (\DF1|count\(27) & (!\DF1|Add0~53\)) # (!\DF1|count\(27) & ((\DF1|Add0~53\) # (GND)))
-- \DF1|Add0~55\ = CARRY((!\DF1|Add0~53\) # (!\DF1|count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DF1|count\(27),
	datad => VCC,
	cin => \DF1|Add0~53\,
	combout => \DF1|Add0~54_combout\,
	cout => \DF1|Add0~55\);

-- Location: FF_X102_Y13_N27
\DF1|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DF1|Add0~54_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DF1|count\(27));

-- Location: LCCOMB_X102_Y13_N28
\DF1|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \DF1|Add0~56_combout\ = \DF1|Add0~55\ $ (!\DF1|count\(28))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \DF1|count\(28),
	cin => \DF1|Add0~55\,
	combout => \DF1|Add0~56_combout\);

-- Location: FF_X102_Y13_N29
\DF1|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DF1|Add0~56_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DF1|count\(28));

-- Location: LCCOMB_X103_Y13_N20
\DF1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DF1|Equal0~0_combout\ = (!\DF1|count\(27) & (!\DF1|count\(26) & (!\DF1|count\(28) & !\DF1|count\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DF1|count\(27),
	datab => \DF1|count\(26),
	datac => \DF1|count\(28),
	datad => \DF1|count\(25),
	combout => \DF1|Equal0~0_combout\);

-- Location: LCCOMB_X103_Y13_N0
\DF1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DF1|Equal0~2_combout\ = (\DF1|count\(21) & (\DF1|count\(22) & (\DF1|Equal0~1_combout\ & \DF1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DF1|count\(21),
	datab => \DF1|count\(22),
	datac => \DF1|Equal0~1_combout\,
	datad => \DF1|Equal0~0_combout\,
	combout => \DF1|Equal0~2_combout\);

-- Location: LCCOMB_X103_Y14_N8
\DF1|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \DF1|Equal0~9_combout\ = (\DF1|Equal0~3_combout\ & (\DF1|Equal0~4_combout\ & (\DF1|Equal0~8_combout\ & \DF1|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DF1|Equal0~3_combout\,
	datab => \DF1|Equal0~4_combout\,
	datac => \DF1|Equal0~8_combout\,
	datad => \DF1|Equal0~2_combout\,
	combout => \DF1|Equal0~9_combout\);

-- Location: LCCOMB_X103_Y13_N28
\DF1|Clk_aux~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DF1|Clk_aux~0_combout\ = \DF1|Clk_aux~q\ $ (\DF1|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DF1|Clk_aux~q\,
	datad => \DF1|Equal0~9_combout\,
	combout => \DF1|Clk_aux~0_combout\);

-- Location: LCCOMB_X103_Y13_N24
\DF1|Clk_aux~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DF1|Clk_aux~feeder_combout\ = \DF1|Clk_aux~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DF1|Clk_aux~0_combout\,
	combout => \DF1|Clk_aux~feeder_combout\);

-- Location: FF_X103_Y13_N25
\DF1|Clk_aux\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DF1|Clk_aux~feeder_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DF1|Clk_aux~q\);

-- Location: CLKCTRL_G5
\DF1|Clk_aux~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \DF1|Clk_aux~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \DF1|Clk_aux~clkctrl_outclk\);

-- Location: IOIBUF_X115_Y15_N8
\EN~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EN,
	o => \EN~input_o\);

-- Location: LCCOMB_X113_Y30_N14
\CONT1|aux~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONT1|aux~0_combout\ = \CONT1|aux\(0) $ (\EN~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CONT1|aux\(0),
	datad => \EN~input_o\,
	combout => \CONT1|aux~0_combout\);

-- Location: FF_X113_Y30_N15
\CONT1|aux[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DF1|Clk_aux~clkctrl_outclk\,
	d => \CONT1|aux~0_combout\,
	ena => \ALT_INV_Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONT1|aux\(0));

-- Location: LCCOMB_X113_Y30_N12
\CONT1|aux~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONT1|aux~1_combout\ = \CONT1|aux\(1) $ (((\CONT1|aux\(0) & \EN~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONT1|aux\(0),
	datac => \CONT1|aux\(1),
	datad => \EN~input_o\,
	combout => \CONT1|aux~1_combout\);

-- Location: FF_X113_Y30_N13
\CONT1|aux[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DF1|Clk_aux~clkctrl_outclk\,
	d => \CONT1|aux~1_combout\,
	ena => \ALT_INV_Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONT1|aux\(1));

-- Location: FF_X113_Y30_N7
\CONT1|aux[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DF1|Clk_aux~clkctrl_outclk\,
	d => \CONT1|aux~2_combout\,
	ena => \ALT_INV_Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONT1|aux\(2));

-- Location: LCCOMB_X113_Y30_N6
\CONT1|aux~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONT1|aux~2_combout\ = \CONT1|aux\(2) $ (((\CONT1|aux\(1) & (\CONT1|aux\(0) & \EN~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONT1|aux\(1),
	datab => \CONT1|aux\(0),
	datac => \CONT1|aux\(2),
	datad => \EN~input_o\,
	combout => \CONT1|aux~2_combout\);

-- Location: FF_X113_Y30_N29
\CONT1|b[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DF1|Clk_aux~clkctrl_outclk\,
	asdata => \CONT1|aux~2_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONT1|b\(2));

-- Location: LCCOMB_X114_Y30_N22
\LFSR1|LFSR:3:i32:bit32|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \LFSR1|LFSR:3:i32:bit32|Q~feeder_combout\ = \LFSR1|LFSR:2:i32:bit32|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \LFSR1|LFSR:2:i32:bit32|Q~q\,
	combout => \LFSR1|LFSR:3:i32:bit32|Q~feeder_combout\);

-- Location: FF_X114_Y30_N23
\LFSR1|LFSR:3:i32:bit32|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DF1|Clk_aux~clkctrl_outclk\,
	d => \LFSR1|LFSR:3:i32:bit32|Q~feeder_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LFSR1|LFSR:3:i32:bit32|Q~q\);

-- Location: FF_X114_Y30_N29
\LFSR1|LFSR:0:i0:bit0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DF1|Clk_aux~clkctrl_outclk\,
	asdata => \LFSR1|LFSR:3:i32:bit32|Q~q\,
	clrn => \ALT_INV_Rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LFSR1|LFSR:0:i0:bit0|Q~q\);

-- Location: LCCOMB_X114_Y30_N10
\LFSR1|XOR1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LFSR1|XOR1~combout\ = \LFSR1|LFSR:3:i32:bit32|Q~q\ $ (!\LFSR1|LFSR:0:i0:bit0|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LFSR1|LFSR:3:i32:bit32|Q~q\,
	datad => \LFSR1|LFSR:0:i0:bit0|Q~q\,
	combout => \LFSR1|XOR1~combout\);

-- Location: FF_X114_Y30_N11
\LFSR1|LFSR:1:i1:bit1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DF1|Clk_aux~clkctrl_outclk\,
	d => \LFSR1|XOR1~combout\,
	clrn => \ALT_INV_Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LFSR1|LFSR:1:i1:bit1|Q~q\);

-- Location: LCCOMB_X114_Y30_N6
\LFSR1|LFSR:2:i32:bit32|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \LFSR1|LFSR:2:i32:bit32|Q~feeder_combout\ = \LFSR1|LFSR:1:i1:bit1|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \LFSR1|LFSR:1:i1:bit1|Q~q\,
	combout => \LFSR1|LFSR:2:i32:bit32|Q~feeder_combout\);

-- Location: FF_X114_Y30_N7
\LFSR1|LFSR:2:i32:bit32|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DF1|Clk_aux~clkctrl_outclk\,
	d => \LFSR1|LFSR:2:i32:bit32|Q~feeder_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LFSR1|LFSR:2:i32:bit32|Q~q\);

-- Location: LCCOMB_X113_Y30_N28
\s7SEG1|CONT_7SEG:2:MUX|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s7SEG1|CONT_7SEG:2:MUX|Mux0~0_combout\ = (\SEL[1]~input_o\ & (\SEL[0]~input_o\)) # (!\SEL[1]~input_o\ & ((\SEL[0]~input_o\ & (\CONT1|b\(2))) # (!\SEL[0]~input_o\ & ((!\LFSR1|LFSR:2:i32:bit32|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL[1]~input_o\,
	datab => \SEL[0]~input_o\,
	datac => \CONT1|b\(2),
	datad => \LFSR1|LFSR:2:i32:bit32|Q~q\,
	combout => \s7SEG1|CONT_7SEG:2:MUX|Mux0~0_combout\);

-- Location: LCCOMB_X113_Y30_N30
\CONT2|aux~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONT2|aux~0_combout\ = \CONT2|aux\(1) $ (((!\CONT1|aux\(0) & \EN~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONT1|aux\(0),
	datac => \CONT2|aux\(1),
	datad => \EN~input_o\,
	combout => \CONT2|aux~0_combout\);

-- Location: FF_X113_Y30_N31
\CONT2|aux[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DF1|Clk_aux~clkctrl_outclk\,
	d => \CONT2|aux~0_combout\,
	ena => \ALT_INV_Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONT2|aux\(1));

-- Location: FF_X113_Y30_N21
\CONT2|aux[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DF1|Clk_aux~clkctrl_outclk\,
	d => \CONT2|aux~1_combout\,
	ena => \ALT_INV_Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONT2|aux\(2));

-- Location: LCCOMB_X113_Y30_N20
\CONT2|aux~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONT2|aux~1_combout\ = \CONT2|aux\(2) $ (((!\CONT2|aux\(1) & (!\CONT1|aux\(0) & \EN~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONT2|aux\(1),
	datab => \CONT1|aux\(0),
	datac => \CONT2|aux\(2),
	datad => \EN~input_o\,
	combout => \CONT2|aux~1_combout\);

-- Location: FF_X113_Y30_N11
\CONT2|b[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DF1|Clk_aux~clkctrl_outclk\,
	asdata => \CONT2|aux~1_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONT2|b\(2));

-- Location: LCCOMB_X114_Y30_N20
\CONT3|aux[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONT3|aux[2]~feeder_combout\ = \CONT3|aux~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CONT3|aux~0_combout\,
	combout => \CONT3|aux[2]~feeder_combout\);

-- Location: FF_X114_Y30_N21
\CONT3|aux[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DF1|Clk_aux~clkctrl_outclk\,
	d => \CONT3|aux[2]~feeder_combout\,
	ena => \ALT_INV_Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONT3|aux\(2));

-- Location: LCCOMB_X114_Y30_N12
\CONT3|aux~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONT3|aux~0_combout\ = \CONT3|aux\(2) $ (((\EN~input_o\ & \CONT1|aux\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONT3|aux\(2),
	datac => \EN~input_o\,
	datad => \CONT1|aux\(0),
	combout => \CONT3|aux~0_combout\);

-- Location: LCCOMB_X114_Y30_N18
\CONT3|b[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONT3|b[2]~feeder_combout\ = \CONT3|aux~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CONT3|aux~0_combout\,
	combout => \CONT3|b[2]~feeder_combout\);

-- Location: FF_X114_Y30_N19
\CONT3|b[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DF1|Clk_aux~clkctrl_outclk\,
	d => \CONT3|b[2]~feeder_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONT3|b\(2));

-- Location: LCCOMB_X113_Y30_N10
\s7SEG1|CONT_7SEG:2:MUX|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \s7SEG1|CONT_7SEG:2:MUX|Mux0~1_combout\ = (\SEL[1]~input_o\ & ((\s7SEG1|CONT_7SEG:2:MUX|Mux0~0_combout\ & ((\CONT3|b\(2)))) # (!\s7SEG1|CONT_7SEG:2:MUX|Mux0~0_combout\ & (\CONT2|b\(2))))) # (!\SEL[1]~input_o\ & (\s7SEG1|CONT_7SEG:2:MUX|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL[1]~input_o\,
	datab => \s7SEG1|CONT_7SEG:2:MUX|Mux0~0_combout\,
	datac => \CONT2|b\(2),
	datad => \CONT3|b\(2),
	combout => \s7SEG1|CONT_7SEG:2:MUX|Mux0~1_combout\);

-- Location: LCCOMB_X113_Y30_N16
\CONT2|aux[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONT2|aux[3]~feeder_combout\ = \CONT2|aux~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CONT2|aux~2_combout\,
	combout => \CONT2|aux[3]~feeder_combout\);

-- Location: FF_X113_Y30_N17
\CONT2|aux[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DF1|Clk_aux~clkctrl_outclk\,
	d => \CONT2|aux[3]~feeder_combout\,
	ena => \ALT_INV_Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONT2|aux\(3));

-- Location: LCCOMB_X113_Y30_N18
\CONT2|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONT2|Add2~0_combout\ = \CONT2|aux\(3) $ (((\CONT2|aux\(1)) # ((\CONT2|aux\(2)) # (\CONT1|aux\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONT2|aux\(1),
	datab => \CONT2|aux\(2),
	datac => \CONT1|aux\(0),
	datad => \CONT2|aux\(3),
	combout => \CONT2|Add2~0_combout\);

-- Location: LCCOMB_X113_Y30_N22
\CONT2|aux~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONT2|aux~2_combout\ = (\EN~input_o\ & ((!\CONT2|Add2~0_combout\))) # (!\EN~input_o\ & (\CONT2|aux\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EN~input_o\,
	datab => \CONT2|aux\(3),
	datad => \CONT2|Add2~0_combout\,
	combout => \CONT2|aux~2_combout\);

-- Location: FF_X113_Y30_N25
\CONT2|b[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DF1|Clk_aux~clkctrl_outclk\,
	asdata => \CONT2|aux~2_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONT2|b\(3));

-- Location: LCCOMB_X113_Y30_N24
\s7SEG1|CONT_7SEG:3:MUX|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s7SEG1|CONT_7SEG:3:MUX|Mux0~0_combout\ = (\SEL[1]~input_o\ & (((\CONT2|b\(3)) # (\SEL[0]~input_o\)))) # (!\SEL[1]~input_o\ & (!\LFSR1|LFSR:3:i32:bit32|Q~q\ & ((!\SEL[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL[1]~input_o\,
	datab => \LFSR1|LFSR:3:i32:bit32|Q~q\,
	datac => \CONT2|b\(3),
	datad => \SEL[0]~input_o\,
	combout => \s7SEG1|CONT_7SEG:3:MUX|Mux0~0_combout\);

-- Location: FF_X114_Y30_N15
\CONT3|aux[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DF1|Clk_aux~clkctrl_outclk\,
	d => \CONT3|aux~1_combout\,
	ena => \ALT_INV_Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONT3|aux\(3));

-- Location: LCCOMB_X114_Y30_N14
\CONT3|aux~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONT3|aux~1_combout\ = \CONT3|aux\(3) $ (((\EN~input_o\ & (\CONT3|aux\(2) & \CONT1|aux\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EN~input_o\,
	datab => \CONT3|aux\(2),
	datac => \CONT3|aux\(3),
	datad => \CONT1|aux\(0),
	combout => \CONT3|aux~1_combout\);

-- Location: FF_X114_Y30_N17
\CONT3|b[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DF1|Clk_aux~clkctrl_outclk\,
	asdata => \CONT3|aux~1_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONT3|b\(3));

-- Location: LCCOMB_X113_Y30_N8
\CONT1|aux[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONT1|aux[3]~feeder_combout\ = \CONT1|aux~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CONT1|aux~3_combout\,
	combout => \CONT1|aux[3]~feeder_combout\);

-- Location: FF_X113_Y30_N9
\CONT1|aux[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DF1|Clk_aux~clkctrl_outclk\,
	d => \CONT1|aux[3]~feeder_combout\,
	ena => \ALT_INV_Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONT1|aux\(3));

-- Location: LCCOMB_X113_Y30_N2
\CONT1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONT1|Add0~0_combout\ = \CONT1|aux\(3) $ (((\CONT1|aux\(2) & (\CONT1|aux\(0) & \CONT1|aux\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONT1|aux\(2),
	datab => \CONT1|aux\(0),
	datac => \CONT1|aux\(3),
	datad => \CONT1|aux\(1),
	combout => \CONT1|Add0~0_combout\);

-- Location: LCCOMB_X113_Y30_N4
\CONT1|aux~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONT1|aux~3_combout\ = (\EN~input_o\ & ((\CONT1|Add0~0_combout\))) # (!\EN~input_o\ & (\CONT1|aux\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EN~input_o\,
	datab => \CONT1|aux\(3),
	datad => \CONT1|Add0~0_combout\,
	combout => \CONT1|aux~3_combout\);

-- Location: FF_X113_Y30_N23
\CONT1|b[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DF1|Clk_aux~clkctrl_outclk\,
	asdata => \CONT1|aux~3_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONT1|b\(3));

-- Location: LCCOMB_X114_Y30_N16
\s7SEG1|CONT_7SEG:3:MUX|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \s7SEG1|CONT_7SEG:3:MUX|Mux0~1_combout\ = (\SEL[0]~input_o\ & ((\s7SEG1|CONT_7SEG:3:MUX|Mux0~0_combout\ & (\CONT3|b\(3))) # (!\s7SEG1|CONT_7SEG:3:MUX|Mux0~0_combout\ & ((\CONT1|b\(3)))))) # (!\SEL[0]~input_o\ & (\s7SEG1|CONT_7SEG:3:MUX|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL[0]~input_o\,
	datab => \s7SEG1|CONT_7SEG:3:MUX|Mux0~0_combout\,
	datac => \CONT3|b\(3),
	datad => \CONT1|b\(3),
	combout => \s7SEG1|CONT_7SEG:3:MUX|Mux0~1_combout\);

-- Location: FF_X113_Y30_N1
\CONT2|b[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DF1|Clk_aux~clkctrl_outclk\,
	asdata => \CONT2|aux~0_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONT2|b\(1));

-- Location: LCCOMB_X113_Y30_N0
\s7SEG1|CONT_7SEG:1:MUX|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s7SEG1|CONT_7SEG:1:MUX|Mux0~0_combout\ = (\SEL[1]~input_o\ & ((\SEL[0]~input_o\) # ((\CONT2|b\(1))))) # (!\SEL[1]~input_o\ & (!\SEL[0]~input_o\ & ((!\LFSR1|LFSR:1:i1:bit1|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL[1]~input_o\,
	datab => \SEL[0]~input_o\,
	datac => \CONT2|b\(1),
	datad => \LFSR1|LFSR:1:i1:bit1|Q~q\,
	combout => \s7SEG1|CONT_7SEG:1:MUX|Mux0~0_combout\);

-- Location: FF_X113_Y30_N5
\CONT1|b[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DF1|Clk_aux~clkctrl_outclk\,
	asdata => \CONT1|aux~0_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONT1|b\(0));

-- Location: FF_X113_Y30_N27
\CONT1|b[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DF1|Clk_aux~clkctrl_outclk\,
	asdata => \CONT1|aux~1_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONT1|b\(1));

-- Location: LCCOMB_X113_Y30_N26
\s7SEG1|CONT_7SEG:1:MUX|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \s7SEG1|CONT_7SEG:1:MUX|Mux0~1_combout\ = (\s7SEG1|CONT_7SEG:1:MUX|Mux0~0_combout\ & ((\CONT1|b\(0)) # ((!\SEL[0]~input_o\)))) # (!\s7SEG1|CONT_7SEG:1:MUX|Mux0~0_combout\ & (((\CONT1|b\(1) & \SEL[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s7SEG1|CONT_7SEG:1:MUX|Mux0~0_combout\,
	datab => \CONT1|b\(0),
	datac => \CONT1|b\(1),
	datad => \SEL[0]~input_o\,
	combout => \s7SEG1|CONT_7SEG:1:MUX|Mux0~1_combout\);

-- Location: LCCOMB_X114_Y30_N28
\s7SEG1|CONT_7SEG:0:MUX|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s7SEG1|CONT_7SEG:0:MUX|Mux0~0_combout\ = (\SEL[0]~input_o\ & (\CONT1|b\(0) & ((!\SEL[1]~input_o\)))) # (!\SEL[0]~input_o\ & ((\SEL[1]~input_o\ & (\CONT1|b\(0))) # (!\SEL[1]~input_o\ & ((!\LFSR1|LFSR:0:i0:bit0|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL[0]~input_o\,
	datab => \CONT1|b\(0),
	datac => \LFSR1|LFSR:0:i0:bit0|Q~q\,
	datad => \SEL[1]~input_o\,
	combout => \s7SEG1|CONT_7SEG:0:MUX|Mux0~0_combout\);

-- Location: LCCOMB_X114_Y30_N30
\s7SEG1|DEC|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s7SEG1|DEC|Mux6~0_combout\ = (\s7SEG1|CONT_7SEG:0:MUX|Mux0~0_combout\ & ((\s7SEG1|CONT_7SEG:3:MUX|Mux0~1_combout\) # (\s7SEG1|CONT_7SEG:2:MUX|Mux0~1_combout\ $ (\s7SEG1|CONT_7SEG:1:MUX|Mux0~1_combout\)))) # (!\s7SEG1|CONT_7SEG:0:MUX|Mux0~0_combout\ & 
-- ((\s7SEG1|CONT_7SEG:1:MUX|Mux0~1_combout\) # (\s7SEG1|CONT_7SEG:2:MUX|Mux0~1_combout\ $ (\s7SEG1|CONT_7SEG:3:MUX|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s7SEG1|CONT_7SEG:2:MUX|Mux0~1_combout\,
	datab => \s7SEG1|CONT_7SEG:3:MUX|Mux0~1_combout\,
	datac => \s7SEG1|CONT_7SEG:1:MUX|Mux0~1_combout\,
	datad => \s7SEG1|CONT_7SEG:0:MUX|Mux0~0_combout\,
	combout => \s7SEG1|DEC|Mux6~0_combout\);

-- Location: LCCOMB_X114_Y30_N4
\s7SEG1|DEC|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s7SEG1|DEC|Mux5~0_combout\ = (\s7SEG1|CONT_7SEG:2:MUX|Mux0~1_combout\ & (\s7SEG1|CONT_7SEG:0:MUX|Mux0~0_combout\ & (\s7SEG1|CONT_7SEG:3:MUX|Mux0~1_combout\ $ (\s7SEG1|CONT_7SEG:1:MUX|Mux0~1_combout\)))) # (!\s7SEG1|CONT_7SEG:2:MUX|Mux0~1_combout\ & 
-- (!\s7SEG1|CONT_7SEG:3:MUX|Mux0~1_combout\ & ((\s7SEG1|CONT_7SEG:1:MUX|Mux0~1_combout\) # (\s7SEG1|CONT_7SEG:0:MUX|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s7SEG1|CONT_7SEG:2:MUX|Mux0~1_combout\,
	datab => \s7SEG1|CONT_7SEG:3:MUX|Mux0~1_combout\,
	datac => \s7SEG1|CONT_7SEG:1:MUX|Mux0~1_combout\,
	datad => \s7SEG1|CONT_7SEG:0:MUX|Mux0~0_combout\,
	combout => \s7SEG1|DEC|Mux5~0_combout\);

-- Location: LCCOMB_X114_Y30_N8
\s7SEG1|DEC|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s7SEG1|DEC|Mux4~0_combout\ = (\s7SEG1|CONT_7SEG:1:MUX|Mux0~1_combout\ & (((!\s7SEG1|CONT_7SEG:3:MUX|Mux0~1_combout\ & \s7SEG1|CONT_7SEG:0:MUX|Mux0~0_combout\)))) # (!\s7SEG1|CONT_7SEG:1:MUX|Mux0~1_combout\ & ((\s7SEG1|CONT_7SEG:2:MUX|Mux0~1_combout\ & 
-- (!\s7SEG1|CONT_7SEG:3:MUX|Mux0~1_combout\)) # (!\s7SEG1|CONT_7SEG:2:MUX|Mux0~1_combout\ & ((\s7SEG1|CONT_7SEG:0:MUX|Mux0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s7SEG1|CONT_7SEG:2:MUX|Mux0~1_combout\,
	datab => \s7SEG1|CONT_7SEG:3:MUX|Mux0~1_combout\,
	datac => \s7SEG1|CONT_7SEG:1:MUX|Mux0~1_combout\,
	datad => \s7SEG1|CONT_7SEG:0:MUX|Mux0~0_combout\,
	combout => \s7SEG1|DEC|Mux4~0_combout\);

-- Location: LCCOMB_X114_Y30_N0
\s7SEG1|DEC|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s7SEG1|DEC|Mux3~0_combout\ = (\s7SEG1|CONT_7SEG:0:MUX|Mux0~0_combout\ & (\s7SEG1|CONT_7SEG:2:MUX|Mux0~1_combout\ $ (((!\s7SEG1|CONT_7SEG:1:MUX|Mux0~1_combout\))))) # (!\s7SEG1|CONT_7SEG:0:MUX|Mux0~0_combout\ & ((\s7SEG1|CONT_7SEG:2:MUX|Mux0~1_combout\ & 
-- (!\s7SEG1|CONT_7SEG:3:MUX|Mux0~1_combout\ & !\s7SEG1|CONT_7SEG:1:MUX|Mux0~1_combout\)) # (!\s7SEG1|CONT_7SEG:2:MUX|Mux0~1_combout\ & (\s7SEG1|CONT_7SEG:3:MUX|Mux0~1_combout\ & \s7SEG1|CONT_7SEG:1:MUX|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s7SEG1|CONT_7SEG:2:MUX|Mux0~1_combout\,
	datab => \s7SEG1|CONT_7SEG:3:MUX|Mux0~1_combout\,
	datac => \s7SEG1|CONT_7SEG:1:MUX|Mux0~1_combout\,
	datad => \s7SEG1|CONT_7SEG:0:MUX|Mux0~0_combout\,
	combout => \s7SEG1|DEC|Mux3~0_combout\);

-- Location: LCCOMB_X114_Y30_N26
\s7SEG1|DEC|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s7SEG1|DEC|Mux2~0_combout\ = (\s7SEG1|CONT_7SEG:2:MUX|Mux0~1_combout\ & (\s7SEG1|CONT_7SEG:3:MUX|Mux0~1_combout\ & ((\s7SEG1|CONT_7SEG:1:MUX|Mux0~1_combout\) # (!\s7SEG1|CONT_7SEG:0:MUX|Mux0~0_combout\)))) # (!\s7SEG1|CONT_7SEG:2:MUX|Mux0~1_combout\ & 
-- (!\s7SEG1|CONT_7SEG:3:MUX|Mux0~1_combout\ & (\s7SEG1|CONT_7SEG:1:MUX|Mux0~1_combout\ & !\s7SEG1|CONT_7SEG:0:MUX|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s7SEG1|CONT_7SEG:2:MUX|Mux0~1_combout\,
	datab => \s7SEG1|CONT_7SEG:3:MUX|Mux0~1_combout\,
	datac => \s7SEG1|CONT_7SEG:1:MUX|Mux0~1_combout\,
	datad => \s7SEG1|CONT_7SEG:0:MUX|Mux0~0_combout\,
	combout => \s7SEG1|DEC|Mux2~0_combout\);

-- Location: LCCOMB_X114_Y30_N24
\s7SEG1|DEC|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s7SEG1|DEC|Mux1~0_combout\ = (\s7SEG1|CONT_7SEG:3:MUX|Mux0~1_combout\ & ((\s7SEG1|CONT_7SEG:0:MUX|Mux0~0_combout\ & ((\s7SEG1|CONT_7SEG:1:MUX|Mux0~1_combout\))) # (!\s7SEG1|CONT_7SEG:0:MUX|Mux0~0_combout\ & (\s7SEG1|CONT_7SEG:2:MUX|Mux0~1_combout\)))) # 
-- (!\s7SEG1|CONT_7SEG:3:MUX|Mux0~1_combout\ & (\s7SEG1|CONT_7SEG:2:MUX|Mux0~1_combout\ & (\s7SEG1|CONT_7SEG:1:MUX|Mux0~1_combout\ $ (\s7SEG1|CONT_7SEG:0:MUX|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s7SEG1|CONT_7SEG:2:MUX|Mux0~1_combout\,
	datab => \s7SEG1|CONT_7SEG:3:MUX|Mux0~1_combout\,
	datac => \s7SEG1|CONT_7SEG:1:MUX|Mux0~1_combout\,
	datad => \s7SEG1|CONT_7SEG:0:MUX|Mux0~0_combout\,
	combout => \s7SEG1|DEC|Mux1~0_combout\);

-- Location: LCCOMB_X114_Y30_N2
\s7SEG1|DEC|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s7SEG1|DEC|Mux0~0_combout\ = (\s7SEG1|CONT_7SEG:2:MUX|Mux0~1_combout\ & (!\s7SEG1|CONT_7SEG:1:MUX|Mux0~1_combout\ & (\s7SEG1|CONT_7SEG:3:MUX|Mux0~1_combout\ $ (!\s7SEG1|CONT_7SEG:0:MUX|Mux0~0_combout\)))) # (!\s7SEG1|CONT_7SEG:2:MUX|Mux0~1_combout\ & 
-- (\s7SEG1|CONT_7SEG:0:MUX|Mux0~0_combout\ & (\s7SEG1|CONT_7SEG:3:MUX|Mux0~1_combout\ $ (!\s7SEG1|CONT_7SEG:1:MUX|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s7SEG1|CONT_7SEG:2:MUX|Mux0~1_combout\,
	datab => \s7SEG1|CONT_7SEG:3:MUX|Mux0~1_combout\,
	datac => \s7SEG1|CONT_7SEG:1:MUX|Mux0~1_combout\,
	datad => \s7SEG1|CONT_7SEG:0:MUX|Mux0~0_combout\,
	combout => \s7SEG1|DEC|Mux0~0_combout\);

ww_out1(0) <= \out1[0]~output_o\;

ww_out1(1) <= \out1[1]~output_o\;

ww_out1(2) <= \out1[2]~output_o\;

ww_out1(3) <= \out1[3]~output_o\;

ww_out1(4) <= \out1[4]~output_o\;

ww_out1(5) <= \out1[5]~output_o\;

ww_out1(6) <= \out1[6]~output_o\;
END structure;


