-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Full Version"

-- DATE "04/01/2020 22:18:33"

-- 
-- Device: Altera EP4CE115F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	BCD_Counter IS
    PORT (
	Clk : IN std_logic;
	Direction : IN std_logic;
	Init : IN std_logic;
	Enable : IN std_logic;
	Q_Out : OUT std_logic_vector(3 DOWNTO 0)
	);
END BCD_Counter;

-- Design Ports Information
-- Q_Out[0]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q_Out[1]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q_Out[2]	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q_Out[3]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Init	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Direction	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clk	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Enable	=>  Location: PIN_U9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF BCD_Counter IS
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
SIGNAL ww_Direction : std_logic;
SIGNAL ww_Init : std_logic;
SIGNAL ww_Enable : std_logic;
SIGNAL ww_Q_Out : std_logic_vector(3 DOWNTO 0);
SIGNAL \Clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Q_Out[0]~output_o\ : std_logic;
SIGNAL \Q_Out[1]~output_o\ : std_logic;
SIGNAL \Q_Out[2]~output_o\ : std_logic;
SIGNAL \Q_Out[3]~output_o\ : std_logic;
SIGNAL \Direction~input_o\ : std_logic;
SIGNAL \Init~input_o\ : std_logic;
SIGNAL \Q[0]~1_combout\ : std_logic;
SIGNAL \Clk~input_o\ : std_logic;
SIGNAL \Clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Q~15_combout\ : std_logic;
SIGNAL \Q[3]~5_combout\ : std_logic;
SIGNAL \Enable~input_o\ : std_logic;
SIGNAL \Q[3]~_emulated_q\ : std_logic;
SIGNAL \Q[3]~4_combout\ : std_logic;
SIGNAL \Q~9_combout\ : std_logic;
SIGNAL \Q~10_combout\ : std_logic;
SIGNAL \Q~11_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Q~12_combout\ : std_logic;
SIGNAL \Q~13_combout\ : std_logic;
SIGNAL \Q~8_combout\ : std_logic;
SIGNAL \Q~14_combout\ : std_logic;
SIGNAL \Q[0]~3_combout\ : std_logic;
SIGNAL \Q[0]~_emulated_q\ : std_logic;
SIGNAL \Q[0]~2_combout\ : std_logic;
SIGNAL Q : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_Init~input_o\ : std_logic;

BEGIN

ww_Clk <= Clk;
ww_Direction <= Direction;
ww_Init <= Init;
ww_Enable <= Enable;
Q_Out <= ww_Q_Out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clk~input_o\);
\ALT_INV_Init~input_o\ <= NOT \Init~input_o\;

-- Location: IOOBUF_X11_Y0_N2
\Q_Out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Q[0]~2_combout\,
	devoe => ww_devoe,
	o => \Q_Out[0]~output_o\);

-- Location: IOOBUF_X20_Y0_N16
\Q_Out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Q(1),
	devoe => ww_devoe,
	o => \Q_Out[1]~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\Q_Out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Q(2),
	devoe => ww_devoe,
	o => \Q_Out[2]~output_o\);

-- Location: IOOBUF_X11_Y0_N9
\Q_Out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Q[3]~4_combout\,
	devoe => ww_devoe,
	o => \Q_Out[3]~output_o\);

-- Location: IOIBUF_X16_Y0_N22
\Direction~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Direction,
	o => \Direction~input_o\);

-- Location: IOIBUF_X16_Y0_N8
\Init~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Init,
	o => \Init~input_o\);

-- Location: LCCOMB_X16_Y1_N12
\Q[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q[0]~1_combout\ = (\Init~input_o\ & (\Direction~input_o\)) # (!\Init~input_o\ & ((\Q[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Direction~input_o\,
	datac => \Init~input_o\,
	datad => \Q[0]~1_combout\,
	combout => \Q[0]~1_combout\);

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

-- Location: LCCOMB_X16_Y1_N30
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = \Q[3]~4_combout\ $ (((Q(1)) # ((\Q[0]~2_combout\) # (Q(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(1),
	datab => \Q[0]~2_combout\,
	datac => \Q[3]~4_combout\,
	datad => Q(2),
	combout => \Add0~0_combout\);

-- Location: LCCOMB_X16_Y1_N16
\Q~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q~15_combout\ = (Q(1) & ((\Q[3]~4_combout\) # ((!\Q[0]~2_combout\) # (!Q(2))))) # (!Q(1) & (((Q(2)) # (\Q[0]~2_combout\)) # (!\Q[3]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(1),
	datab => \Q[3]~4_combout\,
	datac => Q(2),
	datad => \Q[0]~2_combout\,
	combout => \Q~15_combout\);

-- Location: LCCOMB_X16_Y1_N14
\Q[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q[3]~5_combout\ = \Q[0]~1_combout\ $ (((\Direction~input_o\ & (!\Add0~0_combout\)) # (!\Direction~input_o\ & ((!\Q~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011010010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q[0]~1_combout\,
	datab => \Direction~input_o\,
	datac => \Add0~0_combout\,
	datad => \Q~15_combout\,
	combout => \Q[3]~5_combout\);

-- Location: IOIBUF_X20_Y0_N22
\Enable~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Enable,
	o => \Enable~input_o\);

-- Location: FF_X16_Y1_N15
\Q[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Q[3]~5_combout\,
	clrn => \ALT_INV_Init~input_o\,
	ena => \Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Q[3]~_emulated_q\);

-- Location: LCCOMB_X16_Y1_N4
\Q[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q[3]~4_combout\ = (\Init~input_o\ & (\Direction~input_o\)) # (!\Init~input_o\ & ((\Q[0]~1_combout\ $ (\Q[3]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Direction~input_o\,
	datab => \Init~input_o\,
	datac => \Q[0]~1_combout\,
	datad => \Q[3]~_emulated_q\,
	combout => \Q[3]~4_combout\);

-- Location: LCCOMB_X16_Y1_N22
\Q~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q~9_combout\ = (!\Direction~input_o\ & (((\Q~8_combout\ & !\Q[0]~2_combout\)) # (!\Q[3]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Direction~input_o\,
	datab => \Q~8_combout\,
	datac => \Q[3]~4_combout\,
	datad => \Q[0]~2_combout\,
	combout => \Q~9_combout\);

-- Location: LCCOMB_X16_Y1_N24
\Q~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q~10_combout\ = (\Direction~input_o\ & ((Q(2)) # ((Q(1)) # (\Q[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(2),
	datab => Q(1),
	datac => \Q[3]~4_combout\,
	datad => \Direction~input_o\,
	combout => \Q~10_combout\);

-- Location: LCCOMB_X16_Y1_N28
\Q~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q~11_combout\ = (\Q~9_combout\ & ((\Q~10_combout\) # (\Q[0]~2_combout\ $ (Q(1))))) # (!\Q~9_combout\ & (\Q~10_combout\ & (\Q[0]~2_combout\ $ (!Q(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Q~9_combout\,
	datab => \Q[0]~2_combout\,
	datac => Q(1),
	datad => \Q~10_combout\,
	combout => \Q~11_combout\);

-- Location: FF_X16_Y1_N29
\Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Q~11_combout\,
	clrn => \ALT_INV_Init~input_o\,
	ena => \Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q(1));

-- Location: LCCOMB_X16_Y1_N18
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = Q(2) $ (((Q(1) & \Q[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Q(1),
	datac => Q(2),
	datad => \Q[0]~2_combout\,
	combout => \Add1~0_combout\);

-- Location: LCCOMB_X16_Y1_N20
\Q~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q~12_combout\ = (Q(2) & (((\Q[0]~2_combout\) # (Q(1))))) # (!Q(2) & (\Q[3]~4_combout\ & (!\Q[0]~2_combout\ & !Q(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(2),
	datab => \Q[3]~4_combout\,
	datac => \Q[0]~2_combout\,
	datad => Q(1),
	combout => \Q~12_combout\);

-- Location: LCCOMB_X16_Y1_N26
\Q~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q~13_combout\ = (\Direction~input_o\ & ((\Q~12_combout\) # ((\Add1~0_combout\ & \Q~9_combout\)))) # (!\Direction~input_o\ & (\Add1~0_combout\ & (\Q~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Direction~input_o\,
	datab => \Add1~0_combout\,
	datac => \Q~9_combout\,
	datad => \Q~12_combout\,
	combout => \Q~13_combout\);

-- Location: FF_X16_Y1_N27
\Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Q~13_combout\,
	clrn => \ALT_INV_Init~input_o\,
	ena => \Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q(2));

-- Location: LCCOMB_X16_Y1_N8
\Q~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q~8_combout\ = (!Q(2) & !Q(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => Q(2),
	datad => Q(1),
	combout => \Q~8_combout\);

-- Location: LCCOMB_X16_Y1_N10
\Q~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q~14_combout\ = (!\Q[0]~2_combout\ & ((\Direction~input_o\) # ((\Q~8_combout\) # (!\Q[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Direction~input_o\,
	datab => \Q~8_combout\,
	datac => \Q[3]~4_combout\,
	datad => \Q[0]~2_combout\,
	combout => \Q~14_combout\);

-- Location: LCCOMB_X16_Y1_N0
\Q[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q[0]~3_combout\ = \Q[0]~1_combout\ $ (\Q~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Q[0]~1_combout\,
	datad => \Q~14_combout\,
	combout => \Q[0]~3_combout\);

-- Location: FF_X16_Y1_N1
\Q[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Q[0]~3_combout\,
	clrn => \ALT_INV_Init~input_o\,
	ena => \Enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Q[0]~_emulated_q\);

-- Location: LCCOMB_X16_Y1_N2
\Q[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q[0]~2_combout\ = (\Init~input_o\ & (\Direction~input_o\)) # (!\Init~input_o\ & ((\Q[0]~1_combout\ $ (\Q[0]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Direction~input_o\,
	datab => \Init~input_o\,
	datac => \Q[0]~1_combout\,
	datad => \Q[0]~_emulated_q\,
	combout => \Q[0]~2_combout\);

ww_Q_Out(0) <= \Q_Out[0]~output_o\;

ww_Q_Out(1) <= \Q_Out[1]~output_o\;

ww_Q_Out(2) <= \Q_Out[2]~output_o\;

ww_Q_Out(3) <= \Q_Out[3]~output_o\;
END structure;


