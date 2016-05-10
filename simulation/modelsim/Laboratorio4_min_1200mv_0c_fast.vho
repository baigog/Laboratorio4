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

-- DATE "05/02/2016 14:04:56"

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

ENTITY 	CONT4_UPDOWN IS
    PORT (
	Clk : IN std_logic;
	UPDOWN : IN std_logic;
	EN : IN std_logic;
	X2 : IN std_logic;
	b : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END CONT4_UPDOWN;

-- Design Ports Information
-- b[0]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[1]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[2]	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[3]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UPDOWN	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X2	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EN	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF CONT4_UPDOWN IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Clk : std_logic;
SIGNAL ww_UPDOWN : std_logic;
SIGNAL ww_EN : std_logic;
SIGNAL ww_X2 : std_logic;
SIGNAL ww_b : std_logic_vector(3 DOWNTO 0);
SIGNAL \Clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b[0]~output_o\ : std_logic;
SIGNAL \b[1]~output_o\ : std_logic;
SIGNAL \b[2]~output_o\ : std_logic;
SIGNAL \b[3]~output_o\ : std_logic;
SIGNAL \Clk~input_o\ : std_logic;
SIGNAL \Clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \X2~input_o\ : std_logic;
SIGNAL \UPDOWN~input_o\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \aux[0]~5_cout\ : std_logic;
SIGNAL \aux[0]~6_combout\ : std_logic;
SIGNAL \EN~input_o\ : std_logic;
SIGNAL \aux[0]~7\ : std_logic;
SIGNAL \aux[1]~8_combout\ : std_logic;
SIGNAL \aux[1]~9\ : std_logic;
SIGNAL \aux[2]~10_combout\ : std_logic;
SIGNAL \aux[2]~11\ : std_logic;
SIGNAL \aux[3]~12_combout\ : std_logic;
SIGNAL aux : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_Clk <= Clk;
ww_UPDOWN <= UPDOWN;
ww_EN <= EN;
ww_X2 <= X2;
b <= ww_b;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clk~input_o\);

-- Location: IOOBUF_X1_Y73_N2
\b[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => aux(0),
	devoe => ww_devoe,
	o => \b[0]~output_o\);

-- Location: IOOBUF_X3_Y73_N23
\b[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => aux(1),
	devoe => ww_devoe,
	o => \b[1]~output_o\);

-- Location: IOOBUF_X1_Y73_N16
\b[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => aux(2),
	devoe => ww_devoe,
	o => \b[2]~output_o\);

-- Location: IOOBUF_X1_Y73_N9
\b[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => aux(3),
	devoe => ww_devoe,
	o => \b[3]~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\Clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clk,
	o => \Clk~input_o\);

-- Location: CLKCTRL_G2
\Clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X3_Y73_N1
\X2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X2,
	o => \X2~input_o\);

-- Location: IOIBUF_X3_Y73_N8
\UPDOWN~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_UPDOWN,
	o => \UPDOWN~input_o\);

-- Location: LCCOMB_X2_Y72_N28
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = \X2~input_o\ $ (\UPDOWN~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \X2~input_o\,
	datad => \UPDOWN~input_o\,
	combout => \Add0~0_combout\);

-- Location: LCCOMB_X2_Y72_N6
\aux[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux[0]~5_cout\ = CARRY(\UPDOWN~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UPDOWN~input_o\,
	datad => VCC,
	cout => \aux[0]~5_cout\);

-- Location: LCCOMB_X2_Y72_N8
\aux[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux[0]~6_combout\ = (\Add0~0_combout\ & ((aux(0) & (!\aux[0]~5_cout\)) # (!aux(0) & ((\aux[0]~5_cout\) # (GND))))) # (!\Add0~0_combout\ & ((aux(0) & (\aux[0]~5_cout\ & VCC)) # (!aux(0) & (!\aux[0]~5_cout\))))
-- \aux[0]~7\ = CARRY((\Add0~0_combout\ & ((!\aux[0]~5_cout\) # (!aux(0)))) # (!\Add0~0_combout\ & (!aux(0) & !\aux[0]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => aux(0),
	datad => VCC,
	cin => \aux[0]~5_cout\,
	combout => \aux[0]~6_combout\,
	cout => \aux[0]~7\);

-- Location: IOIBUF_X1_Y73_N22
\EN~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EN,
	o => \EN~input_o\);

-- Location: FF_X2_Y72_N9
\aux[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \aux[0]~6_combout\,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => aux(0));

-- Location: LCCOMB_X2_Y72_N10
\aux[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux[1]~8_combout\ = ((aux(1) $ (\UPDOWN~input_o\ $ (\aux[0]~7\)))) # (GND)
-- \aux[1]~9\ = CARRY((aux(1) & ((!\aux[0]~7\) # (!\UPDOWN~input_o\))) # (!aux(1) & (!\UPDOWN~input_o\ & !\aux[0]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => aux(1),
	datab => \UPDOWN~input_o\,
	datad => VCC,
	cin => \aux[0]~7\,
	combout => \aux[1]~8_combout\,
	cout => \aux[1]~9\);

-- Location: FF_X2_Y72_N11
\aux[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \aux[1]~8_combout\,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => aux(1));

-- Location: LCCOMB_X2_Y72_N12
\aux[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux[2]~10_combout\ = (aux(2) & ((\UPDOWN~input_o\ & (!\aux[1]~9\)) # (!\UPDOWN~input_o\ & (\aux[1]~9\ & VCC)))) # (!aux(2) & ((\UPDOWN~input_o\ & ((\aux[1]~9\) # (GND))) # (!\UPDOWN~input_o\ & (!\aux[1]~9\))))
-- \aux[2]~11\ = CARRY((aux(2) & (\UPDOWN~input_o\ & !\aux[1]~9\)) # (!aux(2) & ((\UPDOWN~input_o\) # (!\aux[1]~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => aux(2),
	datab => \UPDOWN~input_o\,
	datad => VCC,
	cin => \aux[1]~9\,
	combout => \aux[2]~10_combout\,
	cout => \aux[2]~11\);

-- Location: FF_X2_Y72_N13
\aux[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \aux[2]~10_combout\,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => aux(2));

-- Location: LCCOMB_X2_Y72_N14
\aux[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \aux[3]~12_combout\ = aux(3) $ (\aux[2]~11\ $ (\UPDOWN~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => aux(3),
	datad => \UPDOWN~input_o\,
	cin => \aux[2]~11\,
	combout => \aux[3]~12_combout\);

-- Location: FF_X2_Y72_N15
\aux[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \aux[3]~12_combout\,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => aux(3));

ww_b(0) <= \b[0]~output_o\;

ww_b(1) <= \b[1]~output_o\;

ww_b(2) <= \b[2]~output_o\;

ww_b(3) <= \b[3]~output_o\;
END structure;


