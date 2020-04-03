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

-- DATE "04/03/2020 18:28:35"

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
-- Q_Out[0]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q_Out[1]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q_Out[2]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q_Out[3]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Enable	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Init	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Direction	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clk	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \Clk~input_o\ : std_logic;
SIGNAL \Clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \Init~input_o\ : std_logic;
SIGNAL \Enable~input_o\ : std_logic;
SIGNAL \Direction~input_o\ : std_logic;
SIGNAL \Q~11_combout\ : std_logic;
SIGNAL \Q~10_combout\ : std_logic;
SIGNAL \Q~23_combout\ : std_logic;
SIGNAL \Q~17_combout\ : std_logic;
SIGNAL \Q~18_combout\ : std_logic;
SIGNAL \Q~19_combout\ : std_logic;
SIGNAL \Q~20_combout\ : std_logic;
SIGNAL \Q~21_combout\ : std_logic;
SIGNAL \Q~4_combout\ : std_logic;
SIGNAL \Q~3_combout\ : std_logic;
SIGNAL \Q~22_combout\ : std_logic;
SIGNAL \Q~14_combout\ : std_logic;
SIGNAL \Q~15_combout\ : std_logic;
SIGNAL \Q~16_combout\ : std_logic;
SIGNAL Q : std_logic_vector(3 DOWNTO 0);

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

-- Location: IOOBUF_X65_Y0_N2
\Q_Out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Q(0),
	devoe => ww_devoe,
	o => \Q_Out[0]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
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

-- Location: IOOBUF_X69_Y0_N9
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

-- Location: IOOBUF_X65_Y0_N9
\Q_Out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Q(3),
	devoe => ww_devoe,
	o => \Q_Out[3]~output_o\);

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

-- Location: IOIBUF_X69_Y0_N1
\Init~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Init,
	o => \Init~input_o\);

-- Location: IOIBUF_X67_Y0_N8
\Enable~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Enable,
	o => \Enable~input_o\);

-- Location: IOIBUF_X67_Y0_N1
\Direction~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Direction,
	o => \Direction~input_o\);

-- Location: LCCOMB_X67_Y1_N14
\Q~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q~11_combout\ = (Q(1) & (((Q(0))))) # (!Q(1) & (!Q(0) & ((Q(3)) # (Q(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(1),
	datab => Q(3),
	datac => Q(2),
	datad => Q(0),
	combout => \Q~11_combout\);

-- Location: LCCOMB_X67_Y1_N16
\Q~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q~10_combout\ = (!Q(3) & (Q(1) $ (Q(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Q(3),
	datac => Q(1),
	datad => Q(0),
	combout => \Q~10_combout\);

-- Location: LCCOMB_X67_Y1_N30
\Q~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q~23_combout\ = (!\Init~input_o\ & ((\Direction~input_o\ & (\Q~11_combout\)) # (!\Direction~input_o\ & ((\Q~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Init~input_o\,
	datab => \Direction~input_o\,
	datac => \Q~11_combout\,
	datad => \Q~10_combout\,
	combout => \Q~23_combout\);

-- Location: LCCOMB_X67_Y1_N28
\Q~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q~17_combout\ = (\Enable~input_o\) # (\Init~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Enable~input_o\,
	datad => \Init~input_o\,
	combout => \Q~17_combout\);

-- Location: FF_X67_Y1_N31
\Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Q~23_combout\,
	ena => \Q~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q(1));

-- Location: LCCOMB_X67_Y1_N6
\Q~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q~18_combout\ = (Q(1) & ((Q(2)) # (!Q(0)))) # (!Q(1) & (Q(2) & !Q(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(1),
	datac => Q(2),
	datad => Q(0),
	combout => \Q~18_combout\);

-- Location: LCCOMB_X67_Y1_N4
\Q~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q~19_combout\ = (\Enable~input_o\ & ((Q(3) & (!Q(0) & !\Q~18_combout\)) # (!Q(3) & (Q(0) & \Q~18_combout\)))) # (!\Enable~input_o\ & (Q(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Enable~input_o\,
	datab => Q(3),
	datac => Q(0),
	datad => \Q~18_combout\,
	combout => \Q~19_combout\);

-- Location: LCCOMB_X67_Y1_N10
\Q~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q~20_combout\ = (\Enable~input_o\ & ((Q(3)) # (Q(0) $ (!\Q~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Enable~input_o\,
	datab => Q(3),
	datac => Q(0),
	datad => \Q~18_combout\,
	combout => \Q~20_combout\);

-- Location: LCCOMB_X67_Y1_N2
\Q~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q~21_combout\ = (\Init~input_o\ & (\Direction~input_o\)) # (!\Init~input_o\ & (\Q~19_combout\ $ (((\Direction~input_o\ & \Q~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Init~input_o\,
	datab => \Direction~input_o\,
	datac => \Q~19_combout\,
	datad => \Q~20_combout\,
	combout => \Q~21_combout\);

-- Location: FF_X67_Y1_N3
\Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Q~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q(3));

-- Location: LCCOMB_X67_Y1_N26
\Q~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q~4_combout\ = (\Direction~input_o\ & (Q(2) $ (((!Q(1) & !Q(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(1),
	datab => \Direction~input_o\,
	datac => Q(2),
	datad => Q(0),
	combout => \Q~4_combout\);

-- Location: LCCOMB_X67_Y1_N20
\Q~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q~3_combout\ = (Q(1) & (Q(2) $ (((!\Direction~input_o\ & Q(0)))))) # (!Q(1) & (Q(2) & ((Q(0)) # (!\Direction~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(1),
	datab => \Direction~input_o\,
	datac => Q(2),
	datad => Q(0),
	combout => \Q~3_combout\);

-- Location: LCCOMB_X67_Y1_N8
\Q~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q~22_combout\ = (!\Init~input_o\ & ((Q(3) & (\Q~4_combout\)) # (!Q(3) & ((\Q~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Init~input_o\,
	datab => Q(3),
	datac => \Q~4_combout\,
	datad => \Q~3_combout\,
	combout => \Q~22_combout\);

-- Location: FF_X67_Y1_N9
\Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Q~22_combout\,
	ena => \Q~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q(2));

-- Location: LCCOMB_X67_Y1_N12
\Q~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q~14_combout\ = (Q(3) & ((Q(2)) # (Q(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Q(2),
	datac => Q(1),
	datad => Q(3),
	combout => \Q~14_combout\);

-- Location: LCCOMB_X67_Y1_N18
\Q~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q~15_combout\ = (\Init~input_o\ & (\Direction~input_o\)) # (!\Init~input_o\ & (!\Direction~input_o\ & \Q~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Init~input_o\,
	datac => \Direction~input_o\,
	datad => \Q~14_combout\,
	combout => \Q~15_combout\);

-- Location: LCCOMB_X67_Y1_N24
\Q~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q~16_combout\ = (\Init~input_o\ & (((\Q~15_combout\)))) # (!\Init~input_o\ & ((\Enable~input_o\ & (!Q(0) & !\Q~15_combout\)) # (!\Enable~input_o\ & (Q(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Init~input_o\,
	datab => \Enable~input_o\,
	datac => Q(0),
	datad => \Q~15_combout\,
	combout => \Q~16_combout\);

-- Location: FF_X67_Y1_N25
\Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Q~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q(0));

ww_Q_Out(0) <= \Q_Out[0]~output_o\;

ww_Q_Out(1) <= \Q_Out[1]~output_o\;

ww_Q_Out(2) <= \Q_Out[2]~output_o\;

ww_Q_Out(3) <= \Q_Out[3]~output_o\;
END structure;


