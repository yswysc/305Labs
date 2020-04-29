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

-- DATE "04/28/2020 17:40:31"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	test2 IS
    PORT (
	clk : IN std_logic;
	w : IN std_logic;
	x : IN std_logic_vector(13 DOWNTO 0);
	y : IN std_logic_vector(13 DOWNTO 0);
	a_out : OUT std_logic_vector(13 DOWNTO 0);
	b_out : OUT std_logic_vector(13 DOWNTO 0)
	);
END test2;

-- Design Ports Information
-- a_out[0]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_out[1]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_out[2]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_out[3]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_out[4]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_out[5]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_out[6]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_out[7]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_out[8]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_out[9]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_out[10]	=>  Location: PIN_R18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_out[11]	=>  Location: PIN_P20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_out[12]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_out[13]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_out[0]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_out[1]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_out[2]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_out[3]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_out[4]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_out[5]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_out[6]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_out[7]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_out[8]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_out[9]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_out[10]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_out[11]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_out[12]	=>  Location: PIN_R20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b_out[13]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[0]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[0]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w	=>  Location: PIN_U14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[1]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[1]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[2]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[2]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[3]	=>  Location: PIN_T16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[3]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[4]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[4]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[5]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[5]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[6]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[6]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[7]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[7]	=>  Location: PIN_W14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[8]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[8]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[9]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[9]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[10]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[10]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[11]	=>  Location: PIN_R19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[11]	=>  Location: PIN_N17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[12]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[12]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[13]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[13]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF test2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_w : std_logic;
SIGNAL ww_x : std_logic_vector(13 DOWNTO 0);
SIGNAL ww_y : std_logic_vector(13 DOWNTO 0);
SIGNAL ww_a_out : std_logic_vector(13 DOWNTO 0);
SIGNAL ww_b_out : std_logic_vector(13 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \a_out[0]~output_o\ : std_logic;
SIGNAL \a_out[1]~output_o\ : std_logic;
SIGNAL \a_out[2]~output_o\ : std_logic;
SIGNAL \a_out[3]~output_o\ : std_logic;
SIGNAL \a_out[4]~output_o\ : std_logic;
SIGNAL \a_out[5]~output_o\ : std_logic;
SIGNAL \a_out[6]~output_o\ : std_logic;
SIGNAL \a_out[7]~output_o\ : std_logic;
SIGNAL \a_out[8]~output_o\ : std_logic;
SIGNAL \a_out[9]~output_o\ : std_logic;
SIGNAL \a_out[10]~output_o\ : std_logic;
SIGNAL \a_out[11]~output_o\ : std_logic;
SIGNAL \a_out[12]~output_o\ : std_logic;
SIGNAL \a_out[13]~output_o\ : std_logic;
SIGNAL \b_out[0]~output_o\ : std_logic;
SIGNAL \b_out[1]~output_o\ : std_logic;
SIGNAL \b_out[2]~output_o\ : std_logic;
SIGNAL \b_out[3]~output_o\ : std_logic;
SIGNAL \b_out[4]~output_o\ : std_logic;
SIGNAL \b_out[5]~output_o\ : std_logic;
SIGNAL \b_out[6]~output_o\ : std_logic;
SIGNAL \b_out[7]~output_o\ : std_logic;
SIGNAL \b_out[8]~output_o\ : std_logic;
SIGNAL \b_out[9]~output_o\ : std_logic;
SIGNAL \b_out[10]~output_o\ : std_logic;
SIGNAL \b_out[11]~output_o\ : std_logic;
SIGNAL \b_out[12]~output_o\ : std_logic;
SIGNAL \b_out[13]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \y[0]~input_o\ : std_logic;
SIGNAL \w~input_o\ : std_logic;
SIGNAL \x[0]~input_o\ : std_logic;
SIGNAL \a_out~0_combout\ : std_logic;
SIGNAL \a_out[0]~reg0_q\ : std_logic;
SIGNAL \x[1]~input_o\ : std_logic;
SIGNAL \y[1]~input_o\ : std_logic;
SIGNAL \a_out~1_combout\ : std_logic;
SIGNAL \a_out[1]~reg0_q\ : std_logic;
SIGNAL \x[2]~input_o\ : std_logic;
SIGNAL \y[2]~input_o\ : std_logic;
SIGNAL \a_out~2_combout\ : std_logic;
SIGNAL \a_out[2]~reg0_q\ : std_logic;
SIGNAL \y[3]~input_o\ : std_logic;
SIGNAL \x[3]~input_o\ : std_logic;
SIGNAL \a_out~3_combout\ : std_logic;
SIGNAL \a_out[3]~reg0_q\ : std_logic;
SIGNAL \x[4]~input_o\ : std_logic;
SIGNAL \y[4]~input_o\ : std_logic;
SIGNAL \a_out~4_combout\ : std_logic;
SIGNAL \a_out[4]~reg0_q\ : std_logic;
SIGNAL \y[5]~input_o\ : std_logic;
SIGNAL \x[5]~input_o\ : std_logic;
SIGNAL \a_out~5_combout\ : std_logic;
SIGNAL \a_out[5]~reg0_q\ : std_logic;
SIGNAL \y[6]~input_o\ : std_logic;
SIGNAL \x[6]~input_o\ : std_logic;
SIGNAL \a_out~6_combout\ : std_logic;
SIGNAL \a_out[6]~reg0_q\ : std_logic;
SIGNAL \y[7]~input_o\ : std_logic;
SIGNAL \x[7]~input_o\ : std_logic;
SIGNAL \a_out~7_combout\ : std_logic;
SIGNAL \a_out[7]~reg0_q\ : std_logic;
SIGNAL \x[8]~input_o\ : std_logic;
SIGNAL \y[8]~input_o\ : std_logic;
SIGNAL \a_out~8_combout\ : std_logic;
SIGNAL \a_out[8]~reg0_q\ : std_logic;
SIGNAL \x[9]~input_o\ : std_logic;
SIGNAL \y[9]~input_o\ : std_logic;
SIGNAL \a_out~9_combout\ : std_logic;
SIGNAL \a_out[9]~reg0_q\ : std_logic;
SIGNAL \x[10]~input_o\ : std_logic;
SIGNAL \y[10]~input_o\ : std_logic;
SIGNAL \a_out~10_combout\ : std_logic;
SIGNAL \a_out[10]~reg0_q\ : std_logic;
SIGNAL \x[11]~input_o\ : std_logic;
SIGNAL \y[11]~input_o\ : std_logic;
SIGNAL \a_out~11_combout\ : std_logic;
SIGNAL \a_out[11]~reg0_q\ : std_logic;
SIGNAL \y[12]~input_o\ : std_logic;
SIGNAL \x[12]~input_o\ : std_logic;
SIGNAL \a_out~12_combout\ : std_logic;
SIGNAL \a_out[12]~reg0_q\ : std_logic;
SIGNAL \x[13]~input_o\ : std_logic;
SIGNAL \y[13]~input_o\ : std_logic;
SIGNAL \a_out~13_combout\ : std_logic;
SIGNAL \a_out[13]~reg0_q\ : std_logic;
SIGNAL \b_out[0]~reg0_q\ : std_logic;
SIGNAL \b_out[1]~reg0_q\ : std_logic;
SIGNAL \b_out[2]~reg0feeder_combout\ : std_logic;
SIGNAL \b_out[2]~reg0_q\ : std_logic;
SIGNAL \b_out[3]~reg0_q\ : std_logic;
SIGNAL \b_out[4]~reg0_q\ : std_logic;
SIGNAL \b_out[5]~reg0feeder_combout\ : std_logic;
SIGNAL \b_out[5]~reg0_q\ : std_logic;
SIGNAL \b_out[6]~reg0feeder_combout\ : std_logic;
SIGNAL \b_out[6]~reg0_q\ : std_logic;
SIGNAL \b_out[7]~reg0feeder_combout\ : std_logic;
SIGNAL \b_out[7]~reg0_q\ : std_logic;
SIGNAL \b_out[8]~reg0feeder_combout\ : std_logic;
SIGNAL \b_out[8]~reg0_q\ : std_logic;
SIGNAL \b_out[9]~reg0feeder_combout\ : std_logic;
SIGNAL \b_out[9]~reg0_q\ : std_logic;
SIGNAL \b_out[10]~reg0_q\ : std_logic;
SIGNAL \b_out[11]~reg0_q\ : std_logic;
SIGNAL \b_out[12]~reg0feeder_combout\ : std_logic;
SIGNAL \b_out[12]~reg0_q\ : std_logic;
SIGNAL \b_out[13]~reg0feeder_combout\ : std_logic;
SIGNAL \b_out[13]~reg0_q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_w <= w;
ww_x <= x;
ww_y <= y;
a_out <= ww_a_out;
b_out <= ww_b_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: IOOBUF_X28_Y0_N9
\a_out[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a_out[0]~reg0_q\,
	devoe => ww_devoe,
	o => \a_out[0]~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\a_out[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a_out[1]~reg0_q\,
	devoe => ww_devoe,
	o => \a_out[1]~output_o\);

-- Location: IOOBUF_X26_Y0_N16
\a_out[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a_out[2]~reg0_q\,
	devoe => ww_devoe,
	o => \a_out[2]~output_o\);

-- Location: IOOBUF_X19_Y0_N2
\a_out[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a_out[3]~reg0_q\,
	devoe => ww_devoe,
	o => \a_out[3]~output_o\);

-- Location: IOOBUF_X26_Y0_N30
\a_out[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a_out[4]~reg0_q\,
	devoe => ww_devoe,
	o => \a_out[4]~output_o\);

-- Location: IOOBUF_X32_Y0_N30
\a_out[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a_out[5]~reg0_q\,
	devoe => ww_devoe,
	o => \a_out[5]~output_o\);

-- Location: IOOBUF_X28_Y0_N2
\a_out[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a_out[6]~reg0_q\,
	devoe => ww_devoe,
	o => \a_out[6]~output_o\);

-- Location: IOOBUF_X28_Y0_N16
\a_out[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a_out[7]~reg0_q\,
	devoe => ww_devoe,
	o => \a_out[7]~output_o\);

-- Location: IOOBUF_X19_Y0_N23
\a_out[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a_out[8]~reg0_q\,
	devoe => ww_devoe,
	o => \a_out[8]~output_o\);

-- Location: IOOBUF_X21_Y0_N30
\a_out[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a_out[9]~reg0_q\,
	devoe => ww_devoe,
	o => \a_out[9]~output_o\);

-- Location: IOOBUF_X41_Y9_N23
\a_out[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a_out[10]~reg0_q\,
	devoe => ww_devoe,
	o => \a_out[10]~output_o\);

-- Location: IOOBUF_X41_Y10_N2
\a_out[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a_out[11]~reg0_q\,
	devoe => ww_devoe,
	o => \a_out[11]~output_o\);

-- Location: IOOBUF_X41_Y10_N23
\a_out[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a_out[12]~reg0_q\,
	devoe => ww_devoe,
	o => \a_out[12]~output_o\);

-- Location: IOOBUF_X41_Y12_N23
\a_out[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a_out[13]~reg0_q\,
	devoe => ww_devoe,
	o => \a_out[13]~output_o\);

-- Location: IOOBUF_X41_Y3_N2
\b_out[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b_out[0]~reg0_q\,
	devoe => ww_devoe,
	o => \b_out[0]~output_o\);

-- Location: IOOBUF_X19_Y0_N9
\b_out[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b_out[1]~reg0_q\,
	devoe => ww_devoe,
	o => \b_out[1]~output_o\);

-- Location: IOOBUF_X30_Y0_N23
\b_out[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b_out[2]~reg0_q\,
	devoe => ww_devoe,
	o => \b_out[2]~output_o\);

-- Location: IOOBUF_X41_Y3_N9
\b_out[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b_out[3]~reg0_q\,
	devoe => ww_devoe,
	o => \b_out[3]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\b_out[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b_out[4]~reg0_q\,
	devoe => ww_devoe,
	o => \b_out[4]~output_o\);

-- Location: IOOBUF_X23_Y0_N30
\b_out[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b_out[5]~reg0_q\,
	devoe => ww_devoe,
	o => \b_out[5]~output_o\);

-- Location: IOOBUF_X23_Y0_N2
\b_out[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b_out[6]~reg0_q\,
	devoe => ww_devoe,
	o => \b_out[6]~output_o\);

-- Location: IOOBUF_X26_Y0_N9
\b_out[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b_out[7]~reg0_q\,
	devoe => ww_devoe,
	o => \b_out[7]~output_o\);

-- Location: IOOBUF_X41_Y3_N23
\b_out[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b_out[8]~reg0_q\,
	devoe => ww_devoe,
	o => \b_out[8]~output_o\);

-- Location: IOOBUF_X26_Y0_N2
\b_out[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b_out[9]~reg0_q\,
	devoe => ww_devoe,
	o => \b_out[9]~output_o\);

-- Location: IOOBUF_X41_Y10_N9
\b_out[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b_out[10]~reg0_q\,
	devoe => ww_devoe,
	o => \b_out[10]~output_o\);

-- Location: IOOBUF_X41_Y13_N9
\b_out[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b_out[11]~reg0_q\,
	devoe => ww_devoe,
	o => \b_out[11]~output_o\);

-- Location: IOOBUF_X41_Y8_N16
\b_out[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b_out[12]~reg0_q\,
	devoe => ww_devoe,
	o => \b_out[12]~output_o\);

-- Location: IOOBUF_X41_Y8_N23
\b_out[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b_out[13]~reg0_q\,
	devoe => ww_devoe,
	o => \b_out[13]~output_o\);

-- Location: IOIBUF_X0_Y14_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G4
\clk~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X41_Y15_N1
\y[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(0),
	o => \y[0]~input_o\);

-- Location: IOIBUF_X39_Y0_N22
\w~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w,
	o => \w~input_o\);

-- Location: IOIBUF_X41_Y15_N8
\x[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(0),
	o => \x[0]~input_o\);

-- Location: LCCOMB_X29_Y1_N16
\a_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a_out~0_combout\ = (\w~input_o\ & ((\x[0]~input_o\))) # (!\w~input_o\ & (\y[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \y[0]~input_o\,
	datac => \w~input_o\,
	datad => \x[0]~input_o\,
	combout => \a_out~0_combout\);

-- Location: FF_X29_Y1_N17
\a_out[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a_out[0]~reg0_q\);

-- Location: IOIBUF_X19_Y0_N29
\x[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(1),
	o => \x[1]~input_o\);

-- Location: IOIBUF_X30_Y0_N8
\y[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(1),
	o => \y[1]~input_o\);

-- Location: LCCOMB_X29_Y1_N2
\a_out~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a_out~1_combout\ = (\w~input_o\ & (\x[1]~input_o\)) # (!\w~input_o\ & ((\y[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[1]~input_o\,
	datab => \y[1]~input_o\,
	datac => \w~input_o\,
	combout => \a_out~1_combout\);

-- Location: FF_X29_Y1_N3
\a_out[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a_out~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a_out[1]~reg0_q\);

-- Location: IOIBUF_X28_Y0_N22
\x[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(2),
	o => \x[2]~input_o\);

-- Location: IOIBUF_X28_Y29_N15
\y[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(2),
	o => \y[2]~input_o\);

-- Location: LCCOMB_X29_Y1_N4
\a_out~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a_out~2_combout\ = (\w~input_o\ & (\x[2]~input_o\)) # (!\w~input_o\ & ((\y[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[2]~input_o\,
	datab => \y[2]~input_o\,
	datac => \w~input_o\,
	combout => \a_out~2_combout\);

-- Location: FF_X29_Y1_N5
\a_out[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a_out[2]~reg0_q\);

-- Location: IOIBUF_X32_Y0_N22
\y[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(3),
	o => \y[3]~input_o\);

-- Location: IOIBUF_X37_Y0_N8
\x[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(3),
	o => \x[3]~input_o\);

-- Location: LCCOMB_X29_Y1_N14
\a_out~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a_out~3_combout\ = (\w~input_o\ & ((\x[3]~input_o\))) # (!\w~input_o\ & (\y[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[3]~input_o\,
	datab => \x[3]~input_o\,
	datac => \w~input_o\,
	combout => \a_out~3_combout\);

-- Location: FF_X29_Y1_N15
\a_out[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a_out~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a_out[3]~reg0_q\);

-- Location: IOIBUF_X32_Y0_N15
\x[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(4),
	o => \x[4]~input_o\);

-- Location: IOIBUF_X30_Y0_N1
\y[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(4),
	o => \y[4]~input_o\);

-- Location: LCCOMB_X29_Y1_N8
\a_out~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a_out~4_combout\ = (\w~input_o\ & (\x[4]~input_o\)) # (!\w~input_o\ & ((\y[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[4]~input_o\,
	datab => \w~input_o\,
	datac => \y[4]~input_o\,
	combout => \a_out~4_combout\);

-- Location: FF_X29_Y1_N9
\a_out[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a_out~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a_out[4]~reg0_q\);

-- Location: IOIBUF_X23_Y0_N22
\y[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(5),
	o => \y[5]~input_o\);

-- Location: IOIBUF_X35_Y0_N15
\x[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(5),
	o => \x[5]~input_o\);

-- Location: LCCOMB_X29_Y1_N26
\a_out~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a_out~5_combout\ = (\w~input_o\ & ((\x[5]~input_o\))) # (!\w~input_o\ & (\y[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[5]~input_o\,
	datab => \x[5]~input_o\,
	datac => \w~input_o\,
	combout => \a_out~5_combout\);

-- Location: FF_X29_Y1_N27
\a_out[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a_out~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a_out[5]~reg0_q\);

-- Location: IOIBUF_X35_Y0_N22
\y[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(6),
	o => \y[6]~input_o\);

-- Location: IOIBUF_X28_Y0_N29
\x[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(6),
	o => \x[6]~input_o\);

-- Location: LCCOMB_X29_Y1_N28
\a_out~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a_out~6_combout\ = (\w~input_o\ & ((\x[6]~input_o\))) # (!\w~input_o\ & (\y[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[6]~input_o\,
	datab => \x[6]~input_o\,
	datac => \w~input_o\,
	combout => \a_out~6_combout\);

-- Location: FF_X29_Y1_N29
\a_out[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a_out~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a_out[6]~reg0_q\);

-- Location: IOIBUF_X30_Y0_N15
\y[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(7),
	o => \y[7]~input_o\);

-- Location: IOIBUF_X30_Y0_N29
\x[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(7),
	o => \x[7]~input_o\);

-- Location: LCCOMB_X29_Y1_N30
\a_out~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a_out~7_combout\ = (\w~input_o\ & ((\x[7]~input_o\))) # (!\w~input_o\ & (\y[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \y[7]~input_o\,
	datac => \w~input_o\,
	datad => \x[7]~input_o\,
	combout => \a_out~7_combout\);

-- Location: FF_X29_Y1_N31
\a_out[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a_out~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a_out[7]~reg0_q\);

-- Location: IOIBUF_X37_Y0_N29
\x[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(8),
	o => \x[8]~input_o\);

-- Location: IOIBUF_X32_Y0_N8
\y[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(8),
	o => \y[8]~input_o\);

-- Location: LCCOMB_X29_Y1_N0
\a_out~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a_out~8_combout\ = (\w~input_o\ & (\x[8]~input_o\)) # (!\w~input_o\ & ((\y[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[8]~input_o\,
	datab => \y[8]~input_o\,
	datac => \w~input_o\,
	combout => \a_out~8_combout\);

-- Location: FF_X29_Y1_N1
\a_out[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a_out~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a_out[8]~reg0_q\);

-- Location: IOIBUF_X32_Y0_N1
\x[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(9),
	o => \x[9]~input_o\);

-- Location: IOIBUF_X26_Y0_N22
\y[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(9),
	o => \y[9]~input_o\);

-- Location: LCCOMB_X29_Y1_N18
\a_out~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a_out~9_combout\ = (\w~input_o\ & (\x[9]~input_o\)) # (!\w~input_o\ & ((\y[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[9]~input_o\,
	datab => \w~input_o\,
	datac => \y[9]~input_o\,
	combout => \a_out~9_combout\);

-- Location: FF_X29_Y1_N19
\a_out[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a_out~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a_out[9]~reg0_q\);

-- Location: IOIBUF_X41_Y8_N1
\x[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(10),
	o => \x[10]~input_o\);

-- Location: IOIBUF_X41_Y8_N8
\y[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(10),
	o => \y[10]~input_o\);

-- Location: LCCOMB_X40_Y10_N8
\a_out~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a_out~10_combout\ = (\w~input_o\ & (\x[10]~input_o\)) # (!\w~input_o\ & ((\y[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x[10]~input_o\,
	datac => \w~input_o\,
	datad => \y[10]~input_o\,
	combout => \a_out~10_combout\);

-- Location: FF_X40_Y10_N9
\a_out[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a_out~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a_out[10]~reg0_q\);

-- Location: IOIBUF_X41_Y9_N15
\x[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(11),
	o => \x[11]~input_o\);

-- Location: IOIBUF_X41_Y12_N1
\y[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(11),
	o => \y[11]~input_o\);

-- Location: LCCOMB_X40_Y10_N10
\a_out~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a_out~11_combout\ = (\w~input_o\ & (\x[11]~input_o\)) # (!\w~input_o\ & ((\y[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[11]~input_o\,
	datac => \w~input_o\,
	datad => \y[11]~input_o\,
	combout => \a_out~11_combout\);

-- Location: FF_X40_Y10_N11
\a_out[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a_out~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a_out[11]~reg0_q\);

-- Location: IOIBUF_X41_Y10_N15
\y[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(12),
	o => \y[12]~input_o\);

-- Location: IOIBUF_X41_Y12_N8
\x[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(12),
	o => \x[12]~input_o\);

-- Location: LCCOMB_X40_Y10_N12
\a_out~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a_out~12_combout\ = (\w~input_o\ & ((\x[12]~input_o\))) # (!\w~input_o\ & (\y[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \y[12]~input_o\,
	datac => \w~input_o\,
	datad => \x[12]~input_o\,
	combout => \a_out~12_combout\);

-- Location: FF_X40_Y10_N13
\a_out[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a_out~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a_out[12]~reg0_q\);

-- Location: IOIBUF_X41_Y11_N1
\x[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(13),
	o => \x[13]~input_o\);

-- Location: IOIBUF_X41_Y12_N15
\y[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(13),
	o => \y[13]~input_o\);

-- Location: LCCOMB_X40_Y10_N22
\a_out~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a_out~13_combout\ = (\w~input_o\ & (\x[13]~input_o\)) # (!\w~input_o\ & ((\y[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[13]~input_o\,
	datac => \w~input_o\,
	datad => \y[13]~input_o\,
	combout => \a_out~13_combout\);

-- Location: FF_X40_Y10_N23
\a_out[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a_out~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a_out[13]~reg0_q\);

-- Location: FF_X40_Y3_N17
\b_out[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \x[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b_out[0]~reg0_q\);

-- Location: FF_X21_Y1_N17
\b_out[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \x[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b_out[1]~reg0_q\);

-- Location: LCCOMB_X29_Y1_N20
\b_out[2]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b_out[2]~reg0feeder_combout\ = \x[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \x[2]~input_o\,
	combout => \b_out[2]~reg0feeder_combout\);

-- Location: FF_X29_Y1_N21
\b_out[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b_out[2]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b_out[2]~reg0_q\);

-- Location: FF_X39_Y3_N17
\b_out[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \x[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b_out[3]~reg0_q\);

-- Location: FF_X29_Y1_N23
\b_out[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \x[4]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b_out[4]~reg0_q\);

-- Location: LCCOMB_X29_Y1_N24
\b_out[5]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b_out[5]~reg0feeder_combout\ = \x[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \x[5]~input_o\,
	combout => \b_out[5]~reg0feeder_combout\);

-- Location: FF_X29_Y1_N25
\b_out[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b_out[5]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b_out[5]~reg0_q\);

-- Location: LCCOMB_X29_Y1_N10
\b_out[6]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b_out[6]~reg0feeder_combout\ = \x[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \x[6]~input_o\,
	combout => \b_out[6]~reg0feeder_combout\);

-- Location: FF_X29_Y1_N11
\b_out[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b_out[6]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b_out[6]~reg0_q\);

-- Location: LCCOMB_X29_Y1_N12
\b_out[7]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b_out[7]~reg0feeder_combout\ = \x[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \x[7]~input_o\,
	combout => \b_out[7]~reg0feeder_combout\);

-- Location: FF_X29_Y1_N13
\b_out[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b_out[7]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b_out[7]~reg0_q\);

-- Location: LCCOMB_X37_Y3_N24
\b_out[8]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b_out[8]~reg0feeder_combout\ = \x[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \x[8]~input_o\,
	combout => \b_out[8]~reg0feeder_combout\);

-- Location: FF_X37_Y3_N25
\b_out[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b_out[8]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b_out[8]~reg0_q\);

-- Location: LCCOMB_X29_Y1_N6
\b_out[9]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b_out[9]~reg0feeder_combout\ = \x[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \x[9]~input_o\,
	combout => \b_out[9]~reg0feeder_combout\);

-- Location: FF_X29_Y1_N7
\b_out[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b_out[9]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b_out[9]~reg0_q\);

-- Location: FF_X40_Y10_N17
\b_out[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \x[10]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b_out[10]~reg0_q\);

-- Location: FF_X40_Y10_N3
\b_out[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \x[11]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b_out[11]~reg0_q\);

-- Location: LCCOMB_X40_Y10_N28
\b_out[12]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b_out[12]~reg0feeder_combout\ = \x[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \x[12]~input_o\,
	combout => \b_out[12]~reg0feeder_combout\);

-- Location: FF_X40_Y10_N29
\b_out[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b_out[12]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b_out[12]~reg0_q\);

-- Location: LCCOMB_X40_Y10_N30
\b_out[13]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b_out[13]~reg0feeder_combout\ = \x[13]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \x[13]~input_o\,
	combout => \b_out[13]~reg0feeder_combout\);

-- Location: FF_X40_Y10_N31
\b_out[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b_out[13]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b_out[13]~reg0_q\);

ww_a_out(0) <= \a_out[0]~output_o\;

ww_a_out(1) <= \a_out[1]~output_o\;

ww_a_out(2) <= \a_out[2]~output_o\;

ww_a_out(3) <= \a_out[3]~output_o\;

ww_a_out(4) <= \a_out[4]~output_o\;

ww_a_out(5) <= \a_out[5]~output_o\;

ww_a_out(6) <= \a_out[6]~output_o\;

ww_a_out(7) <= \a_out[7]~output_o\;

ww_a_out(8) <= \a_out[8]~output_o\;

ww_a_out(9) <= \a_out[9]~output_o\;

ww_a_out(10) <= \a_out[10]~output_o\;

ww_a_out(11) <= \a_out[11]~output_o\;

ww_a_out(12) <= \a_out[12]~output_o\;

ww_a_out(13) <= \a_out[13]~output_o\;

ww_b_out(0) <= \b_out[0]~output_o\;

ww_b_out(1) <= \b_out[1]~output_o\;

ww_b_out(2) <= \b_out[2]~output_o\;

ww_b_out(3) <= \b_out[3]~output_o\;

ww_b_out(4) <= \b_out[4]~output_o\;

ww_b_out(5) <= \b_out[5]~output_o\;

ww_b_out(6) <= \b_out[6]~output_o\;

ww_b_out(7) <= \b_out[7]~output_o\;

ww_b_out(8) <= \b_out[8]~output_o\;

ww_b_out(9) <= \b_out[9]~output_o\;

ww_b_out(10) <= \b_out[10]~output_o\;

ww_b_out(11) <= \b_out[11]~output_o\;

ww_b_out(12) <= \b_out[12]~output_o\;

ww_b_out(13) <= \b_out[13]~output_o\;
END structure;


