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

-- DATE "05/11/2016 12:09:16"

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

ENTITY 	DF_HZ IS
    PORT (
	CLKin : IN std_logic;
	rst : IN std_logic;
	SelFreq : IN std_logic_vector(2 DOWNTO 0);
	CLKout : BUFFER std_logic;
	LEDout : BUFFER std_logic;
	display1 : BUFFER std_logic_vector(6 DOWNTO 0);
	display0 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END DF_HZ;

-- Design Ports Information
-- CLKout	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDout	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display1[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display1[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display1[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display1[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display1[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display1[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display1[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLKin	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SelFreq[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SelFreq[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SelFreq[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF DF_HZ IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLKin : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_SelFreq : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_CLKout : std_logic;
SIGNAL ww_LEDout : std_logic;
SIGNAL ww_display1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_display0 : std_logic_vector(6 DOWNTO 0);
SIGNAL \CLKin~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLKout~output_o\ : std_logic;
SIGNAL \LEDout~output_o\ : std_logic;
SIGNAL \display1[0]~output_o\ : std_logic;
SIGNAL \display1[1]~output_o\ : std_logic;
SIGNAL \display1[2]~output_o\ : std_logic;
SIGNAL \display1[3]~output_o\ : std_logic;
SIGNAL \display1[4]~output_o\ : std_logic;
SIGNAL \display1[5]~output_o\ : std_logic;
SIGNAL \display1[6]~output_o\ : std_logic;
SIGNAL \display0[0]~output_o\ : std_logic;
SIGNAL \display0[1]~output_o\ : std_logic;
SIGNAL \display0[2]~output_o\ : std_logic;
SIGNAL \display0[3]~output_o\ : std_logic;
SIGNAL \display0[4]~output_o\ : std_logic;
SIGNAL \display0[5]~output_o\ : std_logic;
SIGNAL \display0[6]~output_o\ : std_logic;
SIGNAL \CLKin~input_o\ : std_logic;
SIGNAL \CLKin~inputclkctrl_outclk\ : std_logic;
SIGNAL \count[0]~29_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \count[0]~30\ : std_logic;
SIGNAL \count[1]~31_combout\ : std_logic;
SIGNAL \count[1]~32\ : std_logic;
SIGNAL \count[2]~33_combout\ : std_logic;
SIGNAL \count[2]~34\ : std_logic;
SIGNAL \count[3]~35_combout\ : std_logic;
SIGNAL \SelFreq[1]~input_o\ : std_logic;
SIGNAL \SelFreq[0]~input_o\ : std_logic;
SIGNAL \SelFreq[2]~input_o\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \prescaler[3]~1_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \display[4]~feeder_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \prescaler[0]~feeder_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \display[5]~feeder_combout\ : std_logic;
SIGNAL \count[3]~36\ : std_logic;
SIGNAL \count[4]~37_combout\ : std_logic;
SIGNAL \count[4]~38\ : std_logic;
SIGNAL \count[5]~39_combout\ : std_logic;
SIGNAL \count[5]~40\ : std_logic;
SIGNAL \count[6]~41_combout\ : std_logic;
SIGNAL \count[6]~42\ : std_logic;
SIGNAL \count[7]~43_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \count[7]~44\ : std_logic;
SIGNAL \count[8]~45_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \count[8]~46\ : std_logic;
SIGNAL \count[9]~47_combout\ : std_logic;
SIGNAL \count[9]~48\ : std_logic;
SIGNAL \count[10]~49_combout\ : std_logic;
SIGNAL \count[10]~50\ : std_logic;
SIGNAL \count[11]~51_combout\ : std_logic;
SIGNAL \count[11]~52\ : std_logic;
SIGNAL \count[12]~53_combout\ : std_logic;
SIGNAL \count[12]~54\ : std_logic;
SIGNAL \count[13]~55_combout\ : std_logic;
SIGNAL \count[13]~56\ : std_logic;
SIGNAL \count[14]~57_combout\ : std_logic;
SIGNAL \count[14]~58\ : std_logic;
SIGNAL \count[15]~59_combout\ : std_logic;
SIGNAL \count[15]~60\ : std_logic;
SIGNAL \count[16]~61_combout\ : std_logic;
SIGNAL \count[16]~62\ : std_logic;
SIGNAL \count[17]~63_combout\ : std_logic;
SIGNAL \count[17]~64\ : std_logic;
SIGNAL \count[18]~65_combout\ : std_logic;
SIGNAL \count[18]~66\ : std_logic;
SIGNAL \count[19]~67_combout\ : std_logic;
SIGNAL \count[19]~68\ : std_logic;
SIGNAL \count[20]~69_combout\ : std_logic;
SIGNAL \count[20]~70\ : std_logic;
SIGNAL \count[21]~71_combout\ : std_logic;
SIGNAL \count[21]~72\ : std_logic;
SIGNAL \count[22]~73_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \count[22]~74\ : std_logic;
SIGNAL \count[23]~75_combout\ : std_logic;
SIGNAL \count[23]~76\ : std_logic;
SIGNAL \count[24]~77_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \count[24]~78\ : std_logic;
SIGNAL \count[25]~79_combout\ : std_logic;
SIGNAL \count[25]~80\ : std_logic;
SIGNAL \count[26]~81_combout\ : std_logic;
SIGNAL \count[26]~82\ : std_logic;
SIGNAL \count[27]~83_combout\ : std_logic;
SIGNAL \count[27]~84\ : std_logic;
SIGNAL \count[28]~85_combout\ : std_logic;
SIGNAL \Equal0~11_combout\ : std_logic;
SIGNAL \Equal0~12_combout\ : std_logic;
SIGNAL \Equal0~13_combout\ : std_logic;
SIGNAL \Clk_aux~0_combout\ : std_logic;
SIGNAL \Clk_aux~q\ : std_logic;
SIGNAL \DEC1|Mux6~0_combout\ : std_logic;
SIGNAL \DEC1|Mux5~0_combout\ : std_logic;
SIGNAL \DEC1|Mux4~0_combout\ : std_logic;
SIGNAL \DEC1|Mux3~0_combout\ : std_logic;
SIGNAL \DEC1|Mux2~0_combout\ : std_logic;
SIGNAL \DEC1|Mux1~0_combout\ : std_logic;
SIGNAL \DEC1|Mux0~0_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \DEC0|Mux0~0_combout\ : std_logic;
SIGNAL \DEC0|Mux4~0_combout\ : std_logic;
SIGNAL \DEC0|Mux3~0_combout\ : std_logic;
SIGNAL \DEC0|Mux0~1_combout\ : std_logic;
SIGNAL count : std_logic_vector(28 DOWNTO 0);
SIGNAL display : std_logic_vector(7 DOWNTO 0);
SIGNAL prescaler : std_logic_vector(28 DOWNTO 0);
SIGNAL \ALT_INV_rst~input_o\ : std_logic;
SIGNAL \DEC0|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL ALT_INV_display : std_logic_vector(2 DOWNTO 2);
SIGNAL \DEC1|ALT_INV_Mux1~0_combout\ : std_logic;

BEGIN

ww_CLKin <= CLKin;
ww_rst <= rst;
ww_SelFreq <= SelFreq;
CLKout <= ww_CLKout;
LEDout <= ww_LEDout;
display1 <= ww_display1;
display0 <= ww_display0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLKin~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLKin~input_o\);
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;
\DEC0|ALT_INV_Mux3~0_combout\ <= NOT \DEC0|Mux3~0_combout\;
ALT_INV_display(2) <= NOT display(2);
\DEC1|ALT_INV_Mux1~0_combout\ <= NOT \DEC1|Mux1~0_combout\;

-- Location: IOOBUF_X105_Y0_N16
\CLKout~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Clk_aux~q\,
	devoe => ww_devoe,
	o => \CLKout~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\LEDout~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Clk_aux~q\,
	devoe => ww_devoe,
	o => \LEDout~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\display1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC1|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \display1[0]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\display1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC1|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \display1[1]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\display1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC1|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \display1[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\display1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC1|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \display1[3]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\display1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC1|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \display1[4]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\display1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC1|ALT_INV_Mux1~0_combout\,
	devoe => ww_devoe,
	o => \display1[5]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\display1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC1|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \display1[6]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\display0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_display(2),
	devoe => ww_devoe,
	o => \display0[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\display0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC0|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \display0[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\display0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC0|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \display0[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\display0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC0|ALT_INV_Mux3~0_combout\,
	devoe => ww_devoe,
	o => \display0[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\display0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \display0[4]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\display0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC0|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \display0[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\display0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC0|ALT_INV_Mux3~0_combout\,
	devoe => ww_devoe,
	o => \display0[6]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\CLKin~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLKin,
	o => \CLKin~input_o\);

-- Location: CLKCTRL_G4
\CLKin~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLKin~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLKin~inputclkctrl_outclk\);

-- Location: LCCOMB_X112_Y28_N4
\count[0]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[0]~29_combout\ = count(0) $ (VCC)
-- \count[0]~30\ = CARRY(count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(0),
	datad => VCC,
	combout => \count[0]~29_combout\,
	cout => \count[0]~30\);

-- Location: IOIBUF_X115_Y13_N8
\rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: FF_X112_Y28_N5
\count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKin~inputclkctrl_outclk\,
	d => \count[0]~29_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \Equal0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(0));

-- Location: LCCOMB_X112_Y28_N6
\count[1]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[1]~31_combout\ = (count(1) & (!\count[0]~30\)) # (!count(1) & ((\count[0]~30\) # (GND)))
-- \count[1]~32\ = CARRY((!\count[0]~30\) # (!count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(1),
	datad => VCC,
	cin => \count[0]~30\,
	combout => \count[1]~31_combout\,
	cout => \count[1]~32\);

-- Location: FF_X112_Y28_N7
\count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKin~inputclkctrl_outclk\,
	d => \count[1]~31_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \Equal0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(1));

-- Location: LCCOMB_X112_Y28_N8
\count[2]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[2]~33_combout\ = (count(2) & (\count[1]~32\ $ (GND))) # (!count(2) & (!\count[1]~32\ & VCC))
-- \count[2]~34\ = CARRY((count(2) & !\count[1]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(2),
	datad => VCC,
	cin => \count[1]~32\,
	combout => \count[2]~33_combout\,
	cout => \count[2]~34\);

-- Location: FF_X112_Y28_N9
\count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKin~inputclkctrl_outclk\,
	d => \count[2]~33_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \Equal0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(2));

-- Location: LCCOMB_X112_Y28_N10
\count[3]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[3]~35_combout\ = (count(3) & (!\count[2]~34\)) # (!count(3) & ((\count[2]~34\) # (GND)))
-- \count[3]~36\ = CARRY((!\count[2]~34\) # (!count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datad => VCC,
	cin => \count[2]~34\,
	combout => \count[3]~35_combout\,
	cout => \count[3]~36\);

-- Location: FF_X112_Y28_N11
\count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKin~inputclkctrl_outclk\,
	d => \count[3]~35_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \Equal0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(3));

-- Location: IOIBUF_X115_Y14_N1
\SelFreq[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SelFreq(1),
	o => \SelFreq[1]~input_o\);

-- Location: IOIBUF_X115_Y17_N1
\SelFreq[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SelFreq(0),
	o => \SelFreq[0]~input_o\);

-- Location: IOIBUF_X115_Y15_N8
\SelFreq[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SelFreq(2),
	o => \SelFreq[2]~input_o\);

-- Location: LCCOMB_X114_Y32_N8
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (!\SelFreq[1]~input_o\ & (\SelFreq[0]~input_o\ & !\SelFreq[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SelFreq[1]~input_o\,
	datac => \SelFreq[0]~input_o\,
	datad => \SelFreq[2]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X114_Y28_N10
\prescaler[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \prescaler[3]~1_combout\ = !\Mux5~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux5~0_combout\,
	combout => \prescaler[3]~1_combout\);

-- Location: FF_X113_Y28_N7
\prescaler[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKin~inputclkctrl_outclk\,
	asdata => \prescaler[3]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prescaler(3));

-- Location: LCCOMB_X114_Y32_N20
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\SelFreq[2]~input_o\) # ((\SelFreq[1]~input_o\ & \SelFreq[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SelFreq[1]~input_o\,
	datac => \SelFreq[0]~input_o\,
	datad => \SelFreq[2]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X113_Y28_N24
\display[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \display[4]~feeder_combout\ = \Mux0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux0~0_combout\,
	combout => \display[4]~feeder_combout\);

-- Location: FF_X113_Y28_N25
\display[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKin~inputclkctrl_outclk\,
	d => \display[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => display(4));

-- Location: LCCOMB_X113_Y28_N6
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (count(3) & (prescaler(3) & (count(2) $ (!display(4))))) # (!count(3) & (!prescaler(3) & (count(2) $ (!display(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datab => count(2),
	datac => prescaler(3),
	datad => display(4),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X114_Y32_N26
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\SelFreq[1]~input_o\) # ((\SelFreq[0]~input_o\) # (\SelFreq[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SelFreq[1]~input_o\,
	datac => \SelFreq[0]~input_o\,
	datad => \SelFreq[2]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X113_Y28_N22
\prescaler[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \prescaler[0]~feeder_combout\ = \Mux3~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux3~0_combout\,
	combout => \prescaler[0]~feeder_combout\);

-- Location: FF_X113_Y28_N23
\prescaler[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKin~inputclkctrl_outclk\,
	d => \prescaler[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prescaler(0));

-- Location: LCCOMB_X113_Y28_N28
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (prescaler(0) & (count(0) & (count(1) $ (!display(4))))) # (!prescaler(0) & (!count(0) & (count(1) $ (!display(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => prescaler(0),
	datab => count(1),
	datac => count(0),
	datad => display(4),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X114_Y32_N24
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\SelFreq[1]~input_o\ & (!\SelFreq[0]~input_o\ & !\SelFreq[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SelFreq[1]~input_o\,
	datac => \SelFreq[0]~input_o\,
	datad => \SelFreq[2]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X113_Y28_N12
\display[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \display[5]~feeder_combout\ = \Mux2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux2~0_combout\,
	combout => \display[5]~feeder_combout\);

-- Location: FF_X113_Y28_N13
\display[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKin~inputclkctrl_outclk\,
	d => \display[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => display(5));

-- Location: LCCOMB_X112_Y28_N12
\count[4]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[4]~37_combout\ = (count(4) & (\count[3]~36\ $ (GND))) # (!count(4) & (!\count[3]~36\ & VCC))
-- \count[4]~38\ = CARRY((count(4) & !\count[3]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(4),
	datad => VCC,
	cin => \count[3]~36\,
	combout => \count[4]~37_combout\,
	cout => \count[4]~38\);

-- Location: FF_X112_Y28_N13
\count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKin~inputclkctrl_outclk\,
	d => \count[4]~37_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \Equal0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(4));

-- Location: LCCOMB_X112_Y28_N14
\count[5]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[5]~39_combout\ = (count(5) & (!\count[4]~38\)) # (!count(5) & ((\count[4]~38\) # (GND)))
-- \count[5]~40\ = CARRY((!\count[4]~38\) # (!count(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(5),
	datad => VCC,
	cin => \count[4]~38\,
	combout => \count[5]~39_combout\,
	cout => \count[5]~40\);

-- Location: FF_X112_Y28_N15
\count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKin~inputclkctrl_outclk\,
	d => \count[5]~39_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \Equal0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(5));

-- Location: LCCOMB_X112_Y28_N16
\count[6]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[6]~41_combout\ = (count(6) & (\count[5]~40\ $ (GND))) # (!count(6) & (!\count[5]~40\ & VCC))
-- \count[6]~42\ = CARRY((count(6) & !\count[5]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(6),
	datad => VCC,
	cin => \count[5]~40\,
	combout => \count[6]~41_combout\,
	cout => \count[6]~42\);

-- Location: FF_X112_Y28_N17
\count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKin~inputclkctrl_outclk\,
	d => \count[6]~41_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \Equal0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(6));

-- Location: LCCOMB_X112_Y28_N18
\count[7]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[7]~43_combout\ = (count(7) & (!\count[6]~42\)) # (!count(7) & ((\count[6]~42\) # (GND)))
-- \count[7]~44\ = CARRY((!\count[6]~42\) # (!count(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(7),
	datad => VCC,
	cin => \count[6]~42\,
	combout => \count[7]~43_combout\,
	cout => \count[7]~44\);

-- Location: FF_X112_Y28_N19
\count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKin~inputclkctrl_outclk\,
	d => \count[7]~43_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \Equal0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(7));

-- Location: LCCOMB_X114_Y32_N14
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\SelFreq[1]~input_o\ & (\SelFreq[0]~input_o\ & !\SelFreq[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SelFreq[1]~input_o\,
	datac => \SelFreq[0]~input_o\,
	datad => \SelFreq[2]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: FF_X113_Y28_N3
\display[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKin~inputclkctrl_outclk\,
	asdata => \Mux1~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => display(6));

-- Location: LCCOMB_X112_Y28_N20
\count[8]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[8]~45_combout\ = (count(8) & (\count[7]~44\ $ (GND))) # (!count(8) & (!\count[7]~44\ & VCC))
-- \count[8]~46\ = CARRY((count(8) & !\count[7]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(8),
	datad => VCC,
	cin => \count[7]~44\,
	combout => \count[8]~45_combout\,
	cout => \count[8]~46\);

-- Location: FF_X112_Y28_N21
\count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKin~inputclkctrl_outclk\,
	d => \count[8]~45_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \Equal0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(8));

-- Location: LCCOMB_X113_Y28_N2
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (display(5) & (count(7) & (display(6) $ (!count(8))))) # (!display(5) & (!count(7) & (display(6) $ (!count(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => display(5),
	datab => count(7),
	datac => display(6),
	datad => count(8),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X113_Y28_N0
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (display(5) & (count(6) & (prescaler(0) $ (!count(5))))) # (!display(5) & (!count(6) & (prescaler(0) $ (!count(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => display(5),
	datab => prescaler(0),
	datac => count(6),
	datad => count(5),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X113_Y28_N10
\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~1_combout\ & (\Equal0~0_combout\ & (\Equal0~3_combout\ & \Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Equal0~0_combout\,
	datac => \Equal0~3_combout\,
	datad => \Equal0~2_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X112_Y28_N22
\count[9]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[9]~47_combout\ = (count(9) & (!\count[8]~46\)) # (!count(9) & ((\count[8]~46\) # (GND)))
-- \count[9]~48\ = CARRY((!\count[8]~46\) # (!count(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(9),
	datad => VCC,
	cin => \count[8]~46\,
	combout => \count[9]~47_combout\,
	cout => \count[9]~48\);

-- Location: FF_X112_Y28_N23
\count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKin~inputclkctrl_outclk\,
	d => \count[9]~47_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \Equal0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(9));

-- Location: LCCOMB_X112_Y28_N24
\count[10]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[10]~49_combout\ = (count(10) & (\count[9]~48\ $ (GND))) # (!count(10) & (!\count[9]~48\ & VCC))
-- \count[10]~50\ = CARRY((count(10) & !\count[9]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(10),
	datad => VCC,
	cin => \count[9]~48\,
	combout => \count[10]~49_combout\,
	cout => \count[10]~50\);

-- Location: FF_X112_Y28_N25
\count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKin~inputclkctrl_outclk\,
	d => \count[10]~49_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \Equal0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(10));

-- Location: LCCOMB_X112_Y28_N26
\count[11]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[11]~51_combout\ = (count(11) & (!\count[10]~50\)) # (!count(11) & ((\count[10]~50\) # (GND)))
-- \count[11]~52\ = CARRY((!\count[10]~50\) # (!count(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(11),
	datad => VCC,
	cin => \count[10]~50\,
	combout => \count[11]~51_combout\,
	cout => \count[11]~52\);

-- Location: FF_X112_Y28_N27
\count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKin~inputclkctrl_outclk\,
	d => \count[11]~51_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \Equal0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(11));

-- Location: LCCOMB_X112_Y28_N28
\count[12]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[12]~53_combout\ = (count(12) & (\count[11]~52\ $ (GND))) # (!count(12) & (!\count[11]~52\ & VCC))
-- \count[12]~54\ = CARRY((count(12) & !\count[11]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(12),
	datad => VCC,
	cin => \count[11]~52\,
	combout => \count[12]~53_combout\,
	cout => \count[12]~54\);

-- Location: FF_X112_Y28_N29
\count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKin~inputclkctrl_outclk\,
	d => \count[12]~53_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \Equal0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(12));

-- Location: LCCOMB_X112_Y28_N30
\count[13]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[13]~55_combout\ = (count(13) & (!\count[12]~54\)) # (!count(13) & ((\count[12]~54\) # (GND)))
-- \count[13]~56\ = CARRY((!\count[12]~54\) # (!count(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(13),
	datad => VCC,
	cin => \count[12]~54\,
	combout => \count[13]~55_combout\,
	cout => \count[13]~56\);

-- Location: FF_X112_Y28_N31
\count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKin~inputclkctrl_outclk\,
	d => \count[13]~55_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \Equal0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(13));

-- Location: LCCOMB_X112_Y27_N0
\count[14]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[14]~57_combout\ = (count(14) & (\count[13]~56\ $ (GND))) # (!count(14) & (!\count[13]~56\ & VCC))
-- \count[14]~58\ = CARRY((count(14) & !\count[13]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(14),
	datad => VCC,
	cin => \count[13]~56\,
	combout => \count[14]~57_combout\,
	cout => \count[14]~58\);

-- Location: FF_X112_Y27_N1
\count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKin~inputclkctrl_outclk\,
	d => \count[14]~57_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \Equal0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(14));

-- Location: LCCOMB_X112_Y27_N2
\count[15]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[15]~59_combout\ = (count(15) & (!\count[14]~58\)) # (!count(15) & ((\count[14]~58\) # (GND)))
-- \count[15]~60\ = CARRY((!\count[14]~58\) # (!count(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(15),
	datad => VCC,
	cin => \count[14]~58\,
	combout => \count[15]~59_combout\,
	cout => \count[15]~60\);

-- Location: FF_X112_Y27_N3
\count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKin~inputclkctrl_outclk\,
	d => \count[15]~59_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \Equal0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(15));

-- Location: LCCOMB_X112_Y27_N4
\count[16]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[16]~61_combout\ = (count(16) & (\count[15]~60\ $ (GND))) # (!count(16) & (!\count[15]~60\ & VCC))
-- \count[16]~62\ = CARRY((count(16) & !\count[15]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(16),
	datad => VCC,
	cin => \count[15]~60\,
	combout => \count[16]~61_combout\,
	cout => \count[16]~62\);

-- Location: FF_X112_Y27_N5
\count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKin~inputclkctrl_outclk\,
	d => \count[16]~61_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \Equal0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(16));

-- Location: LCCOMB_X112_Y27_N6
\count[17]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[17]~63_combout\ = (count(17) & (!\count[16]~62\)) # (!count(17) & ((\count[16]~62\) # (GND)))
-- \count[17]~64\ = CARRY((!\count[16]~62\) # (!count(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(17),
	datad => VCC,
	cin => \count[16]~62\,
	combout => \count[17]~63_combout\,
	cout => \count[17]~64\);

-- Location: FF_X112_Y27_N7
\count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKin~inputclkctrl_outclk\,
	d => \count[17]~63_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \Equal0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(17));

-- Location: LCCOMB_X112_Y27_N8
\count[18]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[18]~65_combout\ = (count(18) & (\count[17]~64\ $ (GND))) # (!count(18) & (!\count[17]~64\ & VCC))
-- \count[18]~66\ = CARRY((count(18) & !\count[17]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(18),
	datad => VCC,
	cin => \count[17]~64\,
	combout => \count[18]~65_combout\,
	cout => \count[18]~66\);

-- Location: FF_X112_Y27_N9
\count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKin~inputclkctrl_outclk\,
	d => \count[18]~65_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \Equal0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(18));

-- Location: LCCOMB_X112_Y27_N10
\count[19]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[19]~67_combout\ = (count(19) & (!\count[18]~66\)) # (!count(19) & ((\count[18]~66\) # (GND)))
-- \count[19]~68\ = CARRY((!\count[18]~66\) # (!count(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(19),
	datad => VCC,
	cin => \count[18]~66\,
	combout => \count[19]~67_combout\,
	cout => \count[19]~68\);

-- Location: FF_X112_Y27_N11
\count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKin~inputclkctrl_outclk\,
	d => \count[19]~67_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \Equal0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(19));

-- Location: LCCOMB_X112_Y27_N12
\count[20]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[20]~69_combout\ = (count(20) & (\count[19]~68\ $ (GND))) # (!count(20) & (!\count[19]~68\ & VCC))
-- \count[20]~70\ = CARRY((count(20) & !\count[19]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(20),
	datad => VCC,
	cin => \count[19]~68\,
	combout => \count[20]~69_combout\,
	cout => \count[20]~70\);

-- Location: FF_X112_Y27_N13
\count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKin~inputclkctrl_outclk\,
	d => \count[20]~69_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \Equal0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(20));

-- Location: LCCOMB_X112_Y27_N14
\count[21]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[21]~71_combout\ = (count(21) & (!\count[20]~70\)) # (!count(21) & ((\count[20]~70\) # (GND)))
-- \count[21]~72\ = CARRY((!\count[20]~70\) # (!count(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(21),
	datad => VCC,
	cin => \count[20]~70\,
	combout => \count[21]~71_combout\,
	cout => \count[21]~72\);

-- Location: FF_X112_Y27_N15
\count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKin~inputclkctrl_outclk\,
	d => \count[21]~71_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \Equal0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(21));

-- Location: LCCOMB_X112_Y27_N16
\count[22]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[22]~73_combout\ = (count(22) & (\count[21]~72\ $ (GND))) # (!count(22) & (!\count[21]~72\ & VCC))
-- \count[22]~74\ = CARRY((count(22) & !\count[21]~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(22),
	datad => VCC,
	cin => \count[21]~72\,
	combout => \count[22]~73_combout\,
	cout => \count[22]~74\);

-- Location: FF_X112_Y27_N17
\count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKin~inputclkctrl_outclk\,
	d => \count[22]~73_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \Equal0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(22));

-- Location: LCCOMB_X113_Y28_N18
\Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = (count(4) & (!count(10) & (display(4) $ (!count(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(4),
	datab => display(4),
	datac => count(22),
	datad => count(10),
	combout => \Equal0~10_combout\);

-- Location: LCCOMB_X113_Y28_N8
\Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (count(11) & (display(4) & (display(6) $ (!count(9))))) # (!count(11) & (!display(4) & (display(6) $ (!count(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(11),
	datab => display(4),
	datac => display(6),
	datad => count(9),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X113_Y28_N14
\Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (count(14) & (display(4) & (count(19) & count(18)))) # (!count(14) & (!display(4) & (!count(19) & !count(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(14),
	datab => display(4),
	datac => count(19),
	datad => count(18),
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X112_Y27_N18
\count[23]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[23]~75_combout\ = (count(23) & (!\count[22]~74\)) # (!count(23) & ((\count[22]~74\) # (GND)))
-- \count[23]~76\ = CARRY((!\count[22]~74\) # (!count(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(23),
	datad => VCC,
	cin => \count[22]~74\,
	combout => \count[23]~75_combout\,
	cout => \count[23]~76\);

-- Location: FF_X112_Y27_N19
\count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKin~inputclkctrl_outclk\,
	d => \count[23]~75_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \Equal0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(23));

-- Location: LCCOMB_X112_Y27_N20
\count[24]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[24]~77_combout\ = (count(24) & (\count[23]~76\ $ (GND))) # (!count(24) & (!\count[23]~76\ & VCC))
-- \count[24]~78\ = CARRY((count(24) & !\count[23]~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(24),
	datad => VCC,
	cin => \count[23]~76\,
	combout => \count[24]~77_combout\,
	cout => \count[24]~78\);

-- Location: FF_X112_Y27_N21
\count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKin~inputclkctrl_outclk\,
	d => \count[24]~77_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \Equal0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(24));

-- Location: FF_X113_Y28_N27
\prescaler[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKin~inputclkctrl_outclk\,
	asdata => \SelFreq[2]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prescaler(12));

-- Location: LCCOMB_X113_Y28_N26
\Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (count(20) & (count(24) & (prescaler(12) & count(21)))) # (!count(20) & (!count(24) & (!prescaler(12) & !count(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(20),
	datab => count(24),
	datac => prescaler(12),
	datad => count(21),
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X113_Y28_N20
\Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (count(13) & (count(12) & (prescaler(12) & count(16)))) # (!count(13) & (!count(12) & (!prescaler(12) & !count(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(13),
	datab => count(12),
	datac => prescaler(12),
	datad => count(16),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X113_Y28_N4
\Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (\Equal0~5_combout\ & (\Equal0~7_combout\ & (\Equal0~8_combout\ & \Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~5_combout\,
	datab => \Equal0~7_combout\,
	datac => \Equal0~8_combout\,
	datad => \Equal0~6_combout\,
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X112_Y27_N22
\count[25]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[25]~79_combout\ = (count(25) & (!\count[24]~78\)) # (!count(25) & ((\count[24]~78\) # (GND)))
-- \count[25]~80\ = CARRY((!\count[24]~78\) # (!count(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(25),
	datad => VCC,
	cin => \count[24]~78\,
	combout => \count[25]~79_combout\,
	cout => \count[25]~80\);

-- Location: FF_X112_Y27_N23
\count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKin~inputclkctrl_outclk\,
	d => \count[25]~79_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \Equal0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(25));

-- Location: LCCOMB_X112_Y27_N24
\count[26]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[26]~81_combout\ = (count(26) & (\count[25]~80\ $ (GND))) # (!count(26) & (!\count[25]~80\ & VCC))
-- \count[26]~82\ = CARRY((count(26) & !\count[25]~80\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(26),
	datad => VCC,
	cin => \count[25]~80\,
	combout => \count[26]~81_combout\,
	cout => \count[26]~82\);

-- Location: FF_X112_Y27_N25
\count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKin~inputclkctrl_outclk\,
	d => \count[26]~81_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \Equal0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(26));

-- Location: LCCOMB_X112_Y27_N26
\count[27]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[27]~83_combout\ = (count(27) & (!\count[26]~82\)) # (!count(27) & ((\count[26]~82\) # (GND)))
-- \count[27]~84\ = CARRY((!\count[26]~82\) # (!count(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(27),
	datad => VCC,
	cin => \count[26]~82\,
	combout => \count[27]~83_combout\,
	cout => \count[27]~84\);

-- Location: FF_X112_Y27_N27
\count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKin~inputclkctrl_outclk\,
	d => \count[27]~83_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \Equal0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(27));

-- Location: LCCOMB_X112_Y27_N28
\count[28]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[28]~85_combout\ = \count[27]~84\ $ (!count(28))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => count(28),
	cin => \count[27]~84\,
	combout => \count[28]~85_combout\);

-- Location: FF_X112_Y27_N29
\count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKin~inputclkctrl_outclk\,
	d => \count[28]~85_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \Equal0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(28));

-- Location: LCCOMB_X112_Y27_N30
\Equal0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~11_combout\ = (!count(17) & (!count(15) & (!count(25) & !count(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(17),
	datab => count(15),
	datac => count(25),
	datad => count(23),
	combout => \Equal0~11_combout\);

-- Location: LCCOMB_X113_Y28_N16
\Equal0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~12_combout\ = (!count(26) & (!count(27) & (!count(28) & \Equal0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(26),
	datab => count(27),
	datac => count(28),
	datad => \Equal0~11_combout\,
	combout => \Equal0~12_combout\);

-- Location: LCCOMB_X113_Y28_N30
\Equal0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~13_combout\ = (\Equal0~4_combout\ & (\Equal0~10_combout\ & (\Equal0~9_combout\ & \Equal0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datab => \Equal0~10_combout\,
	datac => \Equal0~9_combout\,
	datad => \Equal0~12_combout\,
	combout => \Equal0~13_combout\);

-- Location: LCCOMB_X112_Y28_N0
\Clk_aux~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Clk_aux~0_combout\ = \Clk_aux~q\ $ (\Equal0~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Clk_aux~q\,
	datad => \Equal0~13_combout\,
	combout => \Clk_aux~0_combout\);

-- Location: FF_X112_Y28_N1
Clk_aux : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKin~inputclkctrl_outclk\,
	d => \Clk_aux~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clk_aux~q\);

-- Location: LCCOMB_X114_Y28_N12
\DEC1|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEC1|Mux6~0_combout\ = (display(6) & (display(4) & display(5))) # (!display(6) & ((!display(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => display(6),
	datab => display(4),
	datad => display(5),
	combout => \DEC1|Mux6~0_combout\);

-- Location: LCCOMB_X114_Y28_N2
\DEC1|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEC1|Mux5~0_combout\ = (display(6) & (display(4) & display(5))) # (!display(6) & ((display(4)) # (display(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => display(6),
	datab => display(4),
	datad => display(5),
	combout => \DEC1|Mux5~0_combout\);

-- Location: LCCOMB_X114_Y28_N28
\DEC1|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEC1|Mux4~0_combout\ = (display(4)) # ((display(6) & !display(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => display(6),
	datab => display(4),
	datad => display(5),
	combout => \DEC1|Mux4~0_combout\);

-- Location: LCCOMB_X114_Y28_N18
\DEC1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEC1|Mux3~0_combout\ = (display(6) & (display(4) $ (!display(5)))) # (!display(6) & (display(4) & !display(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => display(6),
	datab => display(4),
	datad => display(5),
	combout => \DEC1|Mux3~0_combout\);

-- Location: LCCOMB_X114_Y28_N16
\DEC1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEC1|Mux2~0_combout\ = (!display(6) & (!display(4) & display(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => display(6),
	datab => display(4),
	datad => display(5),
	combout => \DEC1|Mux2~0_combout\);

-- Location: LCCOMB_X114_Y28_N6
\DEC1|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEC1|Mux1~0_combout\ = (display(4) $ (!display(5))) # (!display(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => display(6),
	datab => display(4),
	datad => display(5),
	combout => \DEC1|Mux1~0_combout\);

-- Location: LCCOMB_X114_Y28_N8
\DEC1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEC1|Mux0~0_combout\ = (!display(5) & (display(6) $ (display(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => display(6),
	datab => display(4),
	datad => display(5),
	combout => \DEC1|Mux0~0_combout\);

-- Location: FF_X114_Y32_N9
\display[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKin~inputclkctrl_outclk\,
	d => \Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => display(2));

-- Location: LCCOMB_X114_Y32_N22
\Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (!\SelFreq[1]~input_o\ & !\SelFreq[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SelFreq[1]~input_o\,
	datad => \SelFreq[2]~input_o\,
	combout => \Mux5~1_combout\);

-- Location: FF_X114_Y32_N23
\display[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKin~inputclkctrl_outclk\,
	d => \Mux5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => display(0));

-- Location: LCCOMB_X114_Y32_N12
\DEC0|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEC0|Mux0~0_combout\ = (!display(2) & display(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => display(2),
	datac => display(0),
	combout => \DEC0|Mux0~0_combout\);

-- Location: LCCOMB_X114_Y32_N10
\DEC0|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEC0|Mux4~0_combout\ = (display(2)) # (display(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => display(2),
	datac => display(0),
	combout => \DEC0|Mux4~0_combout\);

-- Location: LCCOMB_X114_Y32_N4
\DEC0|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEC0|Mux3~0_combout\ = display(2) $ (!display(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => display(2),
	datac => display(0),
	combout => \DEC0|Mux3~0_combout\);

-- Location: LCCOMB_X114_Y32_N18
\DEC0|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DEC0|Mux0~1_combout\ = (display(2) & display(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => display(2),
	datac => display(0),
	combout => \DEC0|Mux0~1_combout\);

ww_CLKout <= \CLKout~output_o\;

ww_LEDout <= \LEDout~output_o\;

ww_display1(0) <= \display1[0]~output_o\;

ww_display1(1) <= \display1[1]~output_o\;

ww_display1(2) <= \display1[2]~output_o\;

ww_display1(3) <= \display1[3]~output_o\;

ww_display1(4) <= \display1[4]~output_o\;

ww_display1(5) <= \display1[5]~output_o\;

ww_display1(6) <= \display1[6]~output_o\;

ww_display0(0) <= \display0[0]~output_o\;

ww_display0(1) <= \display0[1]~output_o\;

ww_display0(2) <= \display0[2]~output_o\;

ww_display0(3) <= \display0[3]~output_o\;

ww_display0(4) <= \display0[4]~output_o\;

ww_display0(5) <= \display0[5]~output_o\;

ww_display0(6) <= \display0[6]~output_o\;
END structure;


