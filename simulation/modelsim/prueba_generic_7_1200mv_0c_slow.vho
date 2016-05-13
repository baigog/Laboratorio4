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

-- DATE "05/12/2016 20:21:47"

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

ENTITY 	DF_HZ_PLL IS
    PORT (
	clkin : IN std_logic;
	SelFreq : IN std_logic_vector(2 DOWNTO 0);
	CLKout : BUFFER std_logic;
	LEDout : BUFFER std_logic;
	locked : BUFFER std_logic;
	display1 : BUFFER std_logic_vector(6 DOWNTO 0);
	display0 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END DF_HZ_PLL;

-- Design Ports Information
-- CLKout	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDout	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- locked	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- SelFreq[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SelFreq[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SelFreq[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clkin	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF DF_HZ_PLL IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clkin : std_logic;
SIGNAL ww_SelFreq : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_CLKout : std_logic;
SIGNAL ww_LEDout : std_logic;
SIGNAL ww_locked : std_logic;
SIGNAL ww_display1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_display0 : std_logic_vector(6 DOWNTO 0);
SIGNAL \PLL1|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \PLL1|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;
SIGNAL \clkin~input_o\ : std_logic;
SIGNAL \PLL1|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \DF1|count[0]~14_combout\ : std_logic;
SIGNAL \DF1|count[0]~15\ : std_logic;
SIGNAL \DF1|count[1]~16_combout\ : std_logic;
SIGNAL \DF1|count[1]~17\ : std_logic;
SIGNAL \DF1|count[2]~18_combout\ : std_logic;
SIGNAL \DF1|count[2]~19\ : std_logic;
SIGNAL \DF1|count[3]~20_combout\ : std_logic;
SIGNAL \DF1|count[3]~21\ : std_logic;
SIGNAL \DF1|count[4]~22_combout\ : std_logic;
SIGNAL \DF1|count[4]~23\ : std_logic;
SIGNAL \DF1|count[5]~24_combout\ : std_logic;
SIGNAL \DF1|count[5]~25\ : std_logic;
SIGNAL \DF1|count[6]~26_combout\ : std_logic;
SIGNAL \DF1|Equal0~0_combout\ : std_logic;
SIGNAL \DF1|count[6]~27\ : std_logic;
SIGNAL \DF1|count[7]~28_combout\ : std_logic;
SIGNAL \DF1|count[7]~29\ : std_logic;
SIGNAL \DF1|count[8]~30_combout\ : std_logic;
SIGNAL \DF1|count[8]~31\ : std_logic;
SIGNAL \DF1|count[9]~32_combout\ : std_logic;
SIGNAL \DF1|count[9]~33\ : std_logic;
SIGNAL \DF1|count[10]~34_combout\ : std_logic;
SIGNAL \SelFreq[2]~input_o\ : std_logic;
SIGNAL \SelFreq[1]~input_o\ : std_logic;
SIGNAL \SelFreq[0]~input_o\ : std_logic;
SIGNAL \DF1|Mux4~0_combout\ : std_logic;
SIGNAL \DF1|prescaler[10]~0_combout\ : std_logic;
SIGNAL \DF1|Equal0~2_combout\ : std_logic;
SIGNAL \DF1|prescaler[5]~1_combout\ : std_logic;
SIGNAL \DF1|Equal0~1_combout\ : std_logic;
SIGNAL \DF1|count[10]~35\ : std_logic;
SIGNAL \DF1|count[11]~36_combout\ : std_logic;
SIGNAL \DF1|count[11]~37\ : std_logic;
SIGNAL \DF1|count[12]~38_combout\ : std_logic;
SIGNAL \DF1|count[12]~39\ : std_logic;
SIGNAL \DF1|count[13]~40_combout\ : std_logic;
SIGNAL \DF1|Equal0~3_combout\ : std_logic;
SIGNAL \DF1|Mux2~0_combout\ : std_logic;
SIGNAL \DF1|prescaler[9]~2_combout\ : std_logic;
SIGNAL \DF1|Equal0~4_combout\ : std_logic;
SIGNAL \DF1|Equal0~5_combout\ : std_logic;
SIGNAL \DF1|Clk_aux~0_combout\ : std_logic;
SIGNAL \DF1|Clk_aux~q\ : std_logic;
SIGNAL \DF1|Mux3~0_combout\ : std_logic;
SIGNAL \DF1|DEC1|Mux6~0_combout\ : std_logic;
SIGNAL \DF1|DEC1|Mux5~0_combout\ : std_logic;
SIGNAL \DF1|DEC1|Mux4~0_combout\ : std_logic;
SIGNAL \DF1|DEC1|Mux3~0_combout\ : std_logic;
SIGNAL \DF1|DEC1|Mux2~0_combout\ : std_logic;
SIGNAL \DF1|DEC1|Mux1~0_combout\ : std_logic;
SIGNAL \DF1|DEC1|Mux0~0_combout\ : std_logic;
SIGNAL \DF1|Mux5~0_combout\ : std_logic;
SIGNAL \DF1|Mux5~1_combout\ : std_logic;
SIGNAL \DF1|DEC0|Mux0~0_combout\ : std_logic;
SIGNAL \DF1|DEC0|Mux4~0_combout\ : std_logic;
SIGNAL \DF1|DEC0|Mux3~0_combout\ : std_logic;
SIGNAL \DF1|DEC0|Mux0~1_combout\ : std_logic;
SIGNAL \DF1|count\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \PLL1|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \DF1|display\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \DF1|prescaler\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \DF1|ALT_INV_display\ : std_logic_vector(2 DOWNTO 2);
SIGNAL \DF1|DEC1|ALT_INV_Mux1~0_combout\ : std_logic;

BEGIN

ww_clkin <= clkin;
ww_SelFreq <= SelFreq;
CLKout <= ww_CLKout;
LEDout <= ww_LEDout;
locked <= ww_locked;
display1 <= ww_display1;
display0 <= ww_display0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\PLL1|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \clkin~input_o\);

\PLL1|altpll_component|auto_generated|wire_pll1_clk\(0) <= \PLL1|altpll_component|auto_generated|pll1_CLK_bus\(0);
\PLL1|altpll_component|auto_generated|wire_pll1_clk\(1) <= \PLL1|altpll_component|auto_generated|pll1_CLK_bus\(1);
\PLL1|altpll_component|auto_generated|wire_pll1_clk\(2) <= \PLL1|altpll_component|auto_generated|pll1_CLK_bus\(2);
\PLL1|altpll_component|auto_generated|wire_pll1_clk\(3) <= \PLL1|altpll_component|auto_generated|pll1_CLK_bus\(3);
\PLL1|altpll_component|auto_generated|wire_pll1_clk\(4) <= \PLL1|altpll_component|auto_generated|pll1_CLK_bus\(4);

\PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \PLL1|altpll_component|auto_generated|wire_pll1_clk\(0));
\DF1|ALT_INV_display\(2) <= NOT \DF1|display\(2);
\DF1|DEC1|ALT_INV_Mux1~0_combout\ <= NOT \DF1|DEC1|Mux1~0_combout\;

-- Location: IOOBUF_X105_Y0_N16
\CLKout~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DF1|Clk_aux~q\,
	devoe => ww_devoe,
	o => ww_CLKout);

-- Location: IOOBUF_X107_Y73_N9
\LEDout~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DF1|Clk_aux~q\,
	devoe => ww_devoe,
	o => ww_LEDout);

-- Location: IOOBUF_X52_Y73_N23
\locked~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_locked);

-- Location: IOOBUF_X115_Y41_N2
\display1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DF1|DEC1|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_display1(0));

-- Location: IOOBUF_X115_Y30_N9
\display1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DF1|DEC1|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_display1(1));

-- Location: IOOBUF_X115_Y25_N23
\display1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DF1|DEC1|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_display1(2));

-- Location: IOOBUF_X115_Y30_N2
\display1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DF1|DEC1|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_display1(3));

-- Location: IOOBUF_X115_Y20_N9
\display1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DF1|DEC1|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_display1(4));

-- Location: IOOBUF_X115_Y22_N2
\display1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DF1|DEC1|ALT_INV_Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_display1(5));

-- Location: IOOBUF_X115_Y28_N9
\display1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DF1|DEC1|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_display1(6));

-- Location: IOOBUF_X69_Y73_N23
\display0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DF1|ALT_INV_display\(2),
	devoe => ww_devoe,
	o => ww_display0(0));

-- Location: IOOBUF_X107_Y73_N23
\display0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DF1|DEC0|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_display0(1));

-- Location: IOOBUF_X67_Y73_N23
\display0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DF1|DEC0|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_display0(2));

-- Location: IOOBUF_X115_Y50_N2
\display0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DF1|DEC0|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_display0(3));

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
	o => ww_display0(4));

-- Location: IOOBUF_X115_Y67_N16
\display0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DF1|DEC0|Mux0~1_combout\,
	devoe => ww_devoe,
	o => ww_display0(5));

-- Location: IOOBUF_X115_Y69_N2
\display0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DF1|DEC0|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_display0(6));

-- Location: IOIBUF_X0_Y36_N15
\clkin~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clkin,
	o => \clkin~input_o\);

-- Location: PLL_1
\PLL1|altpll_component|auto_generated|pll1\ : cycloneive_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 250,
	c0_initial => 1,
	c0_low => 250,
	c0_mode => "even",
	c0_ph => 0,
	c1_high => 250,
	c1_initial => 1,
	c1_low => 250,
	c1_mode => "even",
	c1_ph => 0,
	c1_use_casc_in => "on",
	c2_high => 0,
	c2_initial => 0,
	c2_low => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 0,
	c3_initial => 0,
	c3_low => 0,
	c3_mode => "bypass",
	c3_ph => 0,
	c3_use_casc_in => "off",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "c1",
	clk0_divide_by => 125000,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 3,
	clk0_phase_shift => "0",
	clk1_counter => "unused",
	clk1_divide_by => 0,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 0,
	clk1_phase_shift => "0",
	clk2_counter => "unused",
	clk2_divide_by => 0,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 0,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock0",
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 27,
	m => 6,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	self_reset_on_loss_lock => "off",
	simulation_type => "timing",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 416,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	areset => GND,
	fbin => \PLL1|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \PLL1|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \PLL1|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \PLL1|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G4
\PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: LCCOMB_X111_Y24_N4
\DF1|count[0]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \DF1|count[0]~14_combout\ = \DF1|count\(0) $ (VCC)
-- \DF1|count[0]~15\ = CARRY(\DF1|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DF1|count\(0),
	datad => VCC,
	combout => \DF1|count[0]~14_combout\,
	cout => \DF1|count[0]~15\);

-- Location: FF_X111_Y24_N5
\DF1|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \DF1|count[0]~14_combout\,
	sclr => \DF1|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DF1|count\(0));

-- Location: LCCOMB_X111_Y24_N6
\DF1|count[1]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \DF1|count[1]~16_combout\ = (\DF1|count\(1) & (!\DF1|count[0]~15\)) # (!\DF1|count\(1) & ((\DF1|count[0]~15\) # (GND)))
-- \DF1|count[1]~17\ = CARRY((!\DF1|count[0]~15\) # (!\DF1|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DF1|count\(1),
	datad => VCC,
	cin => \DF1|count[0]~15\,
	combout => \DF1|count[1]~16_combout\,
	cout => \DF1|count[1]~17\);

-- Location: FF_X111_Y24_N7
\DF1|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \DF1|count[1]~16_combout\,
	sclr => \DF1|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DF1|count\(1));

-- Location: LCCOMB_X111_Y24_N8
\DF1|count[2]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \DF1|count[2]~18_combout\ = (\DF1|count\(2) & (\DF1|count[1]~17\ $ (GND))) # (!\DF1|count\(2) & (!\DF1|count[1]~17\ & VCC))
-- \DF1|count[2]~19\ = CARRY((\DF1|count\(2) & !\DF1|count[1]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DF1|count\(2),
	datad => VCC,
	cin => \DF1|count[1]~17\,
	combout => \DF1|count[2]~18_combout\,
	cout => \DF1|count[2]~19\);

-- Location: FF_X111_Y24_N9
\DF1|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \DF1|count[2]~18_combout\,
	sclr => \DF1|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DF1|count\(2));

-- Location: LCCOMB_X111_Y24_N10
\DF1|count[3]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \DF1|count[3]~20_combout\ = (\DF1|count\(3) & (!\DF1|count[2]~19\)) # (!\DF1|count\(3) & ((\DF1|count[2]~19\) # (GND)))
-- \DF1|count[3]~21\ = CARRY((!\DF1|count[2]~19\) # (!\DF1|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DF1|count\(3),
	datad => VCC,
	cin => \DF1|count[2]~19\,
	combout => \DF1|count[3]~20_combout\,
	cout => \DF1|count[3]~21\);

-- Location: FF_X111_Y24_N11
\DF1|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \DF1|count[3]~20_combout\,
	sclr => \DF1|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DF1|count\(3));

-- Location: LCCOMB_X111_Y24_N12
\DF1|count[4]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \DF1|count[4]~22_combout\ = (\DF1|count\(4) & (\DF1|count[3]~21\ $ (GND))) # (!\DF1|count\(4) & (!\DF1|count[3]~21\ & VCC))
-- \DF1|count[4]~23\ = CARRY((\DF1|count\(4) & !\DF1|count[3]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DF1|count\(4),
	datad => VCC,
	cin => \DF1|count[3]~21\,
	combout => \DF1|count[4]~22_combout\,
	cout => \DF1|count[4]~23\);

-- Location: FF_X111_Y24_N13
\DF1|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \DF1|count[4]~22_combout\,
	sclr => \DF1|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DF1|count\(4));

-- Location: LCCOMB_X111_Y24_N14
\DF1|count[5]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \DF1|count[5]~24_combout\ = (\DF1|count\(5) & (!\DF1|count[4]~23\)) # (!\DF1|count\(5) & ((\DF1|count[4]~23\) # (GND)))
-- \DF1|count[5]~25\ = CARRY((!\DF1|count[4]~23\) # (!\DF1|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DF1|count\(5),
	datad => VCC,
	cin => \DF1|count[4]~23\,
	combout => \DF1|count[5]~24_combout\,
	cout => \DF1|count[5]~25\);

-- Location: FF_X111_Y24_N15
\DF1|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \DF1|count[5]~24_combout\,
	sclr => \DF1|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DF1|count\(5));

-- Location: LCCOMB_X111_Y24_N16
\DF1|count[6]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \DF1|count[6]~26_combout\ = (\DF1|count\(6) & (\DF1|count[5]~25\ $ (GND))) # (!\DF1|count\(6) & (!\DF1|count[5]~25\ & VCC))
-- \DF1|count[6]~27\ = CARRY((\DF1|count\(6) & !\DF1|count[5]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DF1|count\(6),
	datad => VCC,
	cin => \DF1|count[5]~25\,
	combout => \DF1|count[6]~26_combout\,
	cout => \DF1|count[6]~27\);

-- Location: FF_X111_Y24_N17
\DF1|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \DF1|count[6]~26_combout\,
	sclr => \DF1|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DF1|count\(6));

-- Location: LCCOMB_X111_Y24_N0
\DF1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DF1|Equal0~0_combout\ = (\DF1|count\(1) & (\DF1|count\(6) & (\DF1|count\(2) & \DF1|count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DF1|count\(1),
	datab => \DF1|count\(6),
	datac => \DF1|count\(2),
	datad => \DF1|count\(4),
	combout => \DF1|Equal0~0_combout\);

-- Location: LCCOMB_X111_Y24_N18
\DF1|count[7]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \DF1|count[7]~28_combout\ = (\DF1|count\(7) & (!\DF1|count[6]~27\)) # (!\DF1|count\(7) & ((\DF1|count[6]~27\) # (GND)))
-- \DF1|count[7]~29\ = CARRY((!\DF1|count[6]~27\) # (!\DF1|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DF1|count\(7),
	datad => VCC,
	cin => \DF1|count[6]~27\,
	combout => \DF1|count[7]~28_combout\,
	cout => \DF1|count[7]~29\);

-- Location: FF_X111_Y24_N19
\DF1|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \DF1|count[7]~28_combout\,
	sclr => \DF1|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DF1|count\(7));

-- Location: LCCOMB_X111_Y24_N20
\DF1|count[8]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \DF1|count[8]~30_combout\ = (\DF1|count\(8) & (\DF1|count[7]~29\ $ (GND))) # (!\DF1|count\(8) & (!\DF1|count[7]~29\ & VCC))
-- \DF1|count[8]~31\ = CARRY((\DF1|count\(8) & !\DF1|count[7]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DF1|count\(8),
	datad => VCC,
	cin => \DF1|count[7]~29\,
	combout => \DF1|count[8]~30_combout\,
	cout => \DF1|count[8]~31\);

-- Location: FF_X111_Y24_N21
\DF1|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \DF1|count[8]~30_combout\,
	sclr => \DF1|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DF1|count\(8));

-- Location: LCCOMB_X111_Y24_N22
\DF1|count[9]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \DF1|count[9]~32_combout\ = (\DF1|count\(9) & (!\DF1|count[8]~31\)) # (!\DF1|count\(9) & ((\DF1|count[8]~31\) # (GND)))
-- \DF1|count[9]~33\ = CARRY((!\DF1|count[8]~31\) # (!\DF1|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DF1|count\(9),
	datad => VCC,
	cin => \DF1|count[8]~31\,
	combout => \DF1|count[9]~32_combout\,
	cout => \DF1|count[9]~33\);

-- Location: FF_X111_Y24_N23
\DF1|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \DF1|count[9]~32_combout\,
	sclr => \DF1|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DF1|count\(9));

-- Location: LCCOMB_X111_Y24_N24
\DF1|count[10]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \DF1|count[10]~34_combout\ = (\DF1|count\(10) & (\DF1|count[9]~33\ $ (GND))) # (!\DF1|count\(10) & (!\DF1|count[9]~33\ & VCC))
-- \DF1|count[10]~35\ = CARRY((\DF1|count\(10) & !\DF1|count[9]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DF1|count\(10),
	datad => VCC,
	cin => \DF1|count[9]~33\,
	combout => \DF1|count[10]~34_combout\,
	cout => \DF1|count[10]~35\);

-- Location: FF_X111_Y24_N25
\DF1|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \DF1|count[10]~34_combout\,
	sclr => \DF1|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DF1|count\(10));

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

-- Location: LCCOMB_X112_Y24_N16
\DF1|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DF1|Mux4~0_combout\ = (\SelFreq[2]~input_o\) # ((\SelFreq[1]~input_o\ & \SelFreq[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelFreq[2]~input_o\,
	datab => \SelFreq[1]~input_o\,
	datac => \SelFreq[0]~input_o\,
	combout => \DF1|Mux4~0_combout\);

-- Location: LCCOMB_X112_Y24_N28
\DF1|prescaler[10]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DF1|prescaler[10]~0_combout\ = !\DF1|Mux4~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DF1|Mux4~0_combout\,
	combout => \DF1|prescaler[10]~0_combout\);

-- Location: FF_X112_Y24_N29
\DF1|prescaler[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \DF1|prescaler[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DF1|prescaler\(10));

-- Location: LCCOMB_X112_Y24_N18
\DF1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DF1|Equal0~2_combout\ = (\DF1|count\(10) & (\DF1|count\(8) & (\DF1|count\(7) & \DF1|prescaler\(10)))) # (!\DF1|count\(10) & (!\DF1|count\(8) & (!\DF1|count\(7) & !\DF1|prescaler\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DF1|count\(10),
	datab => \DF1|count\(8),
	datac => \DF1|count\(7),
	datad => \DF1|prescaler\(10),
	combout => \DF1|Equal0~2_combout\);

-- Location: LCCOMB_X112_Y24_N22
\DF1|prescaler[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DF1|prescaler[5]~1_combout\ = !\SelFreq[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SelFreq[2]~input_o\,
	combout => \DF1|prescaler[5]~1_combout\);

-- Location: FF_X112_Y24_N23
\DF1|prescaler[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \DF1|prescaler[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DF1|prescaler\(5));

-- Location: LCCOMB_X112_Y24_N8
\DF1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DF1|Equal0~1_combout\ = (\DF1|count\(3) & (\DF1|prescaler\(10) & (\DF1|prescaler\(5) $ (!\DF1|count\(5))))) # (!\DF1|count\(3) & (!\DF1|prescaler\(10) & (\DF1|prescaler\(5) $ (!\DF1|count\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DF1|count\(3),
	datab => \DF1|prescaler\(10),
	datac => \DF1|prescaler\(5),
	datad => \DF1|count\(5),
	combout => \DF1|Equal0~1_combout\);

-- Location: LCCOMB_X111_Y24_N26
\DF1|count[11]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \DF1|count[11]~36_combout\ = (\DF1|count\(11) & (!\DF1|count[10]~35\)) # (!\DF1|count\(11) & ((\DF1|count[10]~35\) # (GND)))
-- \DF1|count[11]~37\ = CARRY((!\DF1|count[10]~35\) # (!\DF1|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DF1|count\(11),
	datad => VCC,
	cin => \DF1|count[10]~35\,
	combout => \DF1|count[11]~36_combout\,
	cout => \DF1|count[11]~37\);

-- Location: FF_X111_Y24_N27
\DF1|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \DF1|count[11]~36_combout\,
	sclr => \DF1|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DF1|count\(11));

-- Location: LCCOMB_X111_Y24_N28
\DF1|count[12]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \DF1|count[12]~38_combout\ = (\DF1|count\(12) & (\DF1|count[11]~37\ $ (GND))) # (!\DF1|count\(12) & (!\DF1|count[11]~37\ & VCC))
-- \DF1|count[12]~39\ = CARRY((\DF1|count\(12) & !\DF1|count[11]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DF1|count\(12),
	datad => VCC,
	cin => \DF1|count[11]~37\,
	combout => \DF1|count[12]~38_combout\,
	cout => \DF1|count[12]~39\);

-- Location: FF_X111_Y24_N29
\DF1|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \DF1|count[12]~38_combout\,
	sclr => \DF1|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DF1|count\(12));

-- Location: LCCOMB_X111_Y24_N30
\DF1|count[13]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \DF1|count[13]~40_combout\ = \DF1|count\(13) $ (\DF1|count[12]~39\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DF1|count\(13),
	cin => \DF1|count[12]~39\,
	combout => \DF1|count[13]~40_combout\);

-- Location: FF_X111_Y24_N31
\DF1|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \DF1|count[13]~40_combout\,
	sclr => \DF1|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DF1|count\(13));

-- Location: LCCOMB_X112_Y24_N30
\DF1|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DF1|Equal0~3_combout\ = (\DF1|count\(13) & (((!\DF1|prescaler\(10)) # (!\DF1|count\(11))) # (!\DF1|count\(12)))) # (!\DF1|count\(13) & ((\DF1|count\(12)) # ((\DF1|count\(11)) # (\DF1|prescaler\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DF1|count\(13),
	datab => \DF1|count\(12),
	datac => \DF1|count\(11),
	datad => \DF1|prescaler\(10),
	combout => \DF1|Equal0~3_combout\);

-- Location: LCCOMB_X112_Y24_N10
\DF1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DF1|Mux2~0_combout\ = (!\SelFreq[2]~input_o\ & (\SelFreq[1]~input_o\ & \SelFreq[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelFreq[2]~input_o\,
	datab => \SelFreq[1]~input_o\,
	datac => \SelFreq[0]~input_o\,
	combout => \DF1|Mux2~0_combout\);

-- Location: LCCOMB_X112_Y24_N12
\DF1|prescaler[9]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DF1|prescaler[9]~2_combout\ = !\DF1|Mux2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DF1|Mux2~0_combout\,
	combout => \DF1|prescaler[9]~2_combout\);

-- Location: FF_X112_Y24_N13
\DF1|prescaler[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \DF1|prescaler[9]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DF1|prescaler\(9));

-- Location: LCCOMB_X112_Y24_N24
\DF1|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DF1|Equal0~4_combout\ = (!\DF1|Equal0~3_combout\ & (\DF1|count\(0) & (\DF1|count\(9) $ (!\DF1|prescaler\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DF1|Equal0~3_combout\,
	datab => \DF1|count\(9),
	datac => \DF1|count\(0),
	datad => \DF1|prescaler\(9),
	combout => \DF1|Equal0~4_combout\);

-- Location: LCCOMB_X111_Y24_N2
\DF1|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DF1|Equal0~5_combout\ = (\DF1|Equal0~0_combout\ & (\DF1|Equal0~2_combout\ & (\DF1|Equal0~1_combout\ & \DF1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DF1|Equal0~0_combout\,
	datab => \DF1|Equal0~2_combout\,
	datac => \DF1|Equal0~1_combout\,
	datad => \DF1|Equal0~4_combout\,
	combout => \DF1|Equal0~5_combout\);

-- Location: LCCOMB_X110_Y24_N0
\DF1|Clk_aux~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DF1|Clk_aux~0_combout\ = \DF1|Clk_aux~q\ $ (\DF1|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DF1|Clk_aux~q\,
	datad => \DF1|Equal0~5_combout\,
	combout => \DF1|Clk_aux~0_combout\);

-- Location: FF_X110_Y24_N1
\DF1|Clk_aux\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \DF1|Clk_aux~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DF1|Clk_aux~q\);

-- Location: LCCOMB_X112_Y24_N20
\DF1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DF1|Mux3~0_combout\ = (!\SelFreq[2]~input_o\ & (\SelFreq[1]~input_o\ & !\SelFreq[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelFreq[2]~input_o\,
	datab => \SelFreq[1]~input_o\,
	datac => \SelFreq[0]~input_o\,
	combout => \DF1|Mux3~0_combout\);

-- Location: FF_X112_Y24_N21
\DF1|display[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \DF1|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DF1|display\(5));

-- Location: FF_X112_Y24_N17
\DF1|display[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \DF1|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DF1|display\(4));

-- Location: FF_X112_Y24_N11
\DF1|display[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \DF1|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DF1|display\(6));

-- Location: LCCOMB_X114_Y25_N8
\DF1|DEC1|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DF1|DEC1|Mux6~0_combout\ = (\DF1|display\(5) & (\DF1|display\(4) & \DF1|display\(6))) # (!\DF1|display\(5) & ((!\DF1|display\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DF1|display\(5),
	datab => \DF1|display\(4),
	datac => \DF1|display\(6),
	combout => \DF1|DEC1|Mux6~0_combout\);

-- Location: LCCOMB_X114_Y25_N2
\DF1|DEC1|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DF1|DEC1|Mux5~0_combout\ = (\DF1|display\(5) & ((\DF1|display\(4)) # (!\DF1|display\(6)))) # (!\DF1|display\(5) & (\DF1|display\(4) & !\DF1|display\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DF1|display\(5),
	datab => \DF1|display\(4),
	datac => \DF1|display\(6),
	combout => \DF1|DEC1|Mux5~0_combout\);

-- Location: LCCOMB_X114_Y25_N12
\DF1|DEC1|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DF1|DEC1|Mux4~0_combout\ = (\DF1|display\(4)) # ((!\DF1|display\(5) & \DF1|display\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DF1|display\(5),
	datab => \DF1|display\(4),
	datac => \DF1|display\(6),
	combout => \DF1|DEC1|Mux4~0_combout\);

-- Location: LCCOMB_X114_Y25_N22
\DF1|DEC1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DF1|DEC1|Mux3~0_combout\ = (\DF1|display\(5) & (\DF1|display\(4) & \DF1|display\(6))) # (!\DF1|display\(5) & (\DF1|display\(4) $ (\DF1|display\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DF1|display\(5),
	datab => \DF1|display\(4),
	datac => \DF1|display\(6),
	combout => \DF1|DEC1|Mux3~0_combout\);

-- Location: LCCOMB_X112_Y24_N6
\DF1|DEC1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DF1|DEC1|Mux2~0_combout\ = (\DF1|display\(5) & (!\DF1|display\(4) & !\DF1|display\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DF1|display\(5),
	datac => \DF1|display\(4),
	datad => \DF1|display\(6),
	combout => \DF1|DEC1|Mux2~0_combout\);

-- Location: LCCOMB_X114_Y25_N24
\DF1|DEC1|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DF1|DEC1|Mux1~0_combout\ = (\DF1|display\(5) $ (!\DF1|display\(4))) # (!\DF1|display\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111110011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DF1|display\(5),
	datab => \DF1|display\(4),
	datac => \DF1|display\(6),
	combout => \DF1|DEC1|Mux1~0_combout\);

-- Location: LCCOMB_X114_Y25_N26
\DF1|DEC1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DF1|DEC1|Mux0~0_combout\ = (!\DF1|display\(5) & (\DF1|display\(4) $ (\DF1|display\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DF1|display\(5),
	datab => \DF1|display\(4),
	datac => \DF1|display\(6),
	combout => \DF1|DEC1|Mux0~0_combout\);

-- Location: LCCOMB_X112_Y24_N0
\DF1|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DF1|Mux5~0_combout\ = (!\SelFreq[2]~input_o\ & (!\SelFreq[1]~input_o\ & \SelFreq[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelFreq[2]~input_o\,
	datab => \SelFreq[1]~input_o\,
	datac => \SelFreq[0]~input_o\,
	combout => \DF1|Mux5~0_combout\);

-- Location: FF_X112_Y24_N1
\DF1|display[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \DF1|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DF1|display\(2));

-- Location: LCCOMB_X112_Y24_N26
\DF1|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DF1|Mux5~1_combout\ = (!\SelFreq[1]~input_o\ & !\SelFreq[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SelFreq[1]~input_o\,
	datac => \SelFreq[2]~input_o\,
	combout => \DF1|Mux5~1_combout\);

-- Location: FF_X112_Y24_N27
\DF1|display[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PLL1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \DF1|Mux5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DF1|display\(0));

-- Location: LCCOMB_X109_Y65_N0
\DF1|DEC0|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DF1|DEC0|Mux0~0_combout\ = (\DF1|display\(0) & !\DF1|display\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DF1|display\(0),
	datad => \DF1|display\(2),
	combout => \DF1|DEC0|Mux0~0_combout\);

-- Location: LCCOMB_X109_Y65_N2
\DF1|DEC0|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DF1|DEC0|Mux4~0_combout\ = (\DF1|display\(0)) # (\DF1|display\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DF1|display\(0),
	datad => \DF1|display\(2),
	combout => \DF1|DEC0|Mux4~0_combout\);

-- Location: LCCOMB_X109_Y65_N20
\DF1|DEC0|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DF1|DEC0|Mux3~0_combout\ = \DF1|display\(0) $ (\DF1|display\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DF1|display\(0),
	datad => \DF1|display\(2),
	combout => \DF1|DEC0|Mux3~0_combout\);

-- Location: LCCOMB_X109_Y65_N22
\DF1|DEC0|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DF1|DEC0|Mux0~1_combout\ = (\DF1|display\(0) & \DF1|display\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DF1|display\(0),
	datad => \DF1|display\(2),
	combout => \DF1|DEC0|Mux0~1_combout\);
END structure;


