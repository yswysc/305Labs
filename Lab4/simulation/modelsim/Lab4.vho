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

-- DATE "04/29/2020 17:02:06"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Timer IS
    PORT (
	Clk : IN std_logic;
	BUTTON1 : IN std_logic;
	BUTTON2 : IN std_logic;
	LED_1 : OUT std_logic_vector(7 DOWNTO 0);
	LED_10 : OUT std_logic_vector(7 DOWNTO 0);
	RC_OUT : OUT std_logic_vector(9 DOWNTO 0)
	);
END Timer;

-- Design Ports Information
-- LED_1[0]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_1[1]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_1[2]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_1[3]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_1[4]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_1[5]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_1[6]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_1[7]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_10[0]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_10[1]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_10[2]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_10[3]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_10[4]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_10[5]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_10[6]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_10[7]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RC_OUT[0]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RC_OUT[1]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RC_OUT[2]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RC_OUT[3]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RC_OUT[4]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RC_OUT[5]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RC_OUT[6]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RC_OUT[7]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RC_OUT[8]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RC_OUT[9]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BUTTON2	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BUTTON1	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clk	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Timer IS
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
SIGNAL ww_BUTTON1 : std_logic;
SIGNAL ww_BUTTON2 : std_logic;
SIGNAL ww_LED_1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_LED_10 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_RC_OUT : std_logic_vector(9 DOWNTO 0);
SIGNAL \DUT_Clk|gen_clk:clk_05Hz_i~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LED_1[0]~output_o\ : std_logic;
SIGNAL \LED_1[1]~output_o\ : std_logic;
SIGNAL \LED_1[2]~output_o\ : std_logic;
SIGNAL \LED_1[3]~output_o\ : std_logic;
SIGNAL \LED_1[4]~output_o\ : std_logic;
SIGNAL \LED_1[5]~output_o\ : std_logic;
SIGNAL \LED_1[6]~output_o\ : std_logic;
SIGNAL \LED_1[7]~output_o\ : std_logic;
SIGNAL \LED_10[0]~output_o\ : std_logic;
SIGNAL \LED_10[1]~output_o\ : std_logic;
SIGNAL \LED_10[2]~output_o\ : std_logic;
SIGNAL \LED_10[3]~output_o\ : std_logic;
SIGNAL \LED_10[4]~output_o\ : std_logic;
SIGNAL \LED_10[5]~output_o\ : std_logic;
SIGNAL \LED_10[6]~output_o\ : std_logic;
SIGNAL \LED_10[7]~output_o\ : std_logic;
SIGNAL \RC_OUT[0]~output_o\ : std_logic;
SIGNAL \RC_OUT[1]~output_o\ : std_logic;
SIGNAL \RC_OUT[2]~output_o\ : std_logic;
SIGNAL \RC_OUT[3]~output_o\ : std_logic;
SIGNAL \RC_OUT[4]~output_o\ : std_logic;
SIGNAL \RC_OUT[5]~output_o\ : std_logic;
SIGNAL \RC_OUT[6]~output_o\ : std_logic;
SIGNAL \RC_OUT[7]~output_o\ : std_logic;
SIGNAL \RC_OUT[8]~output_o\ : std_logic;
SIGNAL \RC_OUT[9]~output_o\ : std_logic;
SIGNAL \Clk~input_o\ : std_logic;
SIGNAL \Clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \DUT_Clk|Add0~0_combout\ : std_logic;
SIGNAL \DUT_Clk|prescaler~1_combout\ : std_logic;
SIGNAL \DUT_Clk|gen_clk:prescaler[0]~q\ : std_logic;
SIGNAL \DUT_Clk|Add0~1\ : std_logic;
SIGNAL \DUT_Clk|Add0~2_combout\ : std_logic;
SIGNAL \DUT_Clk|gen_clk:prescaler[1]~q\ : std_logic;
SIGNAL \DUT_Clk|Add0~3\ : std_logic;
SIGNAL \DUT_Clk|Add0~4_combout\ : std_logic;
SIGNAL \DUT_Clk|gen_clk:prescaler[2]~q\ : std_logic;
SIGNAL \DUT_Clk|Add0~5\ : std_logic;
SIGNAL \DUT_Clk|Add0~6_combout\ : std_logic;
SIGNAL \DUT_Clk|gen_clk:prescaler[3]~q\ : std_logic;
SIGNAL \DUT_Clk|Add0~7\ : std_logic;
SIGNAL \DUT_Clk|Add0~8_combout\ : std_logic;
SIGNAL \DUT_Clk|gen_clk:prescaler[4]~q\ : std_logic;
SIGNAL \DUT_Clk|Add0~9\ : std_logic;
SIGNAL \DUT_Clk|Add0~10_combout\ : std_logic;
SIGNAL \DUT_Clk|gen_clk:prescaler[5]~q\ : std_logic;
SIGNAL \DUT_Clk|Add0~11\ : std_logic;
SIGNAL \DUT_Clk|Add0~12_combout\ : std_logic;
SIGNAL \DUT_Clk|gen_clk:prescaler[6]~q\ : std_logic;
SIGNAL \DUT_Clk|Add0~13\ : std_logic;
SIGNAL \DUT_Clk|Add0~14_combout\ : std_logic;
SIGNAL \DUT_Clk|prescaler~0_combout\ : std_logic;
SIGNAL \DUT_Clk|gen_clk:prescaler[7]~q\ : std_logic;
SIGNAL \DUT_Clk|Add0~15\ : std_logic;
SIGNAL \DUT_Clk|Add0~16_combout\ : std_logic;
SIGNAL \DUT_Clk|gen_clk:prescaler[8]~q\ : std_logic;
SIGNAL \DUT_Clk|Add0~17\ : std_logic;
SIGNAL \DUT_Clk|Add0~18_combout\ : std_logic;
SIGNAL \DUT_Clk|gen_clk:prescaler[9]~q\ : std_logic;
SIGNAL \DUT_Clk|Add0~19\ : std_logic;
SIGNAL \DUT_Clk|Add0~20_combout\ : std_logic;
SIGNAL \DUT_Clk|gen_clk:prescaler[10]~q\ : std_logic;
SIGNAL \DUT_Clk|Add0~21\ : std_logic;
SIGNAL \DUT_Clk|Add0~22_combout\ : std_logic;
SIGNAL \DUT_Clk|gen_clk:prescaler[11]~q\ : std_logic;
SIGNAL \DUT_Clk|Add0~23\ : std_logic;
SIGNAL \DUT_Clk|Add0~24_combout\ : std_logic;
SIGNAL \DUT_Clk|prescaler~2_combout\ : std_logic;
SIGNAL \DUT_Clk|gen_clk:prescaler[12]~q\ : std_logic;
SIGNAL \DUT_Clk|Add0~25\ : std_logic;
SIGNAL \DUT_Clk|Add0~26_combout\ : std_logic;
SIGNAL \DUT_Clk|prescaler~3_combout\ : std_logic;
SIGNAL \DUT_Clk|gen_clk:prescaler[13]~q\ : std_logic;
SIGNAL \DUT_Clk|Add0~27\ : std_logic;
SIGNAL \DUT_Clk|Add0~28_combout\ : std_logic;
SIGNAL \DUT_Clk|prescaler~4_combout\ : std_logic;
SIGNAL \DUT_Clk|gen_clk:prescaler[14]~q\ : std_logic;
SIGNAL \DUT_Clk|Add0~29\ : std_logic;
SIGNAL \DUT_Clk|Add0~30_combout\ : std_logic;
SIGNAL \DUT_Clk|prescaler~5_combout\ : std_logic;
SIGNAL \DUT_Clk|gen_clk:prescaler[15]~q\ : std_logic;
SIGNAL \DUT_Clk|Add0~31\ : std_logic;
SIGNAL \DUT_Clk|Add0~32_combout\ : std_logic;
SIGNAL \DUT_Clk|gen_clk:prescaler[16]~q\ : std_logic;
SIGNAL \DUT_Clk|Add0~33\ : std_logic;
SIGNAL \DUT_Clk|Add0~34_combout\ : std_logic;
SIGNAL \DUT_Clk|prescaler~6_combout\ : std_logic;
SIGNAL \DUT_Clk|gen_clk:prescaler[17]~q\ : std_logic;
SIGNAL \DUT_Clk|Add0~35\ : std_logic;
SIGNAL \DUT_Clk|Add0~36_combout\ : std_logic;
SIGNAL \DUT_Clk|gen_clk:prescaler[18]~q\ : std_logic;
SIGNAL \DUT_Clk|Add0~37\ : std_logic;
SIGNAL \DUT_Clk|Add0~38_combout\ : std_logic;
SIGNAL \DUT_Clk|prescaler~7_combout\ : std_logic;
SIGNAL \DUT_Clk|gen_clk:prescaler[19]~q\ : std_logic;
SIGNAL \DUT_Clk|Add0~39\ : std_logic;
SIGNAL \DUT_Clk|Add0~40_combout\ : std_logic;
SIGNAL \DUT_Clk|prescaler~8_combout\ : std_logic;
SIGNAL \DUT_Clk|gen_clk:prescaler[20]~q\ : std_logic;
SIGNAL \DUT_Clk|Add0~41\ : std_logic;
SIGNAL \DUT_Clk|Add0~42_combout\ : std_logic;
SIGNAL \DUT_Clk|prescaler~9_combout\ : std_logic;
SIGNAL \DUT_Clk|gen_clk:prescaler[21]~q\ : std_logic;
SIGNAL \DUT_Clk|Add0~43\ : std_logic;
SIGNAL \DUT_Clk|Add0~44_combout\ : std_logic;
SIGNAL \DUT_Clk|prescaler~10_combout\ : std_logic;
SIGNAL \DUT_Clk|gen_clk:prescaler[22]~q\ : std_logic;
SIGNAL \DUT_Clk|Add0~45\ : std_logic;
SIGNAL \DUT_Clk|Add0~46_combout\ : std_logic;
SIGNAL \DUT_Clk|prescaler~11_combout\ : std_logic;
SIGNAL \DUT_Clk|gen_clk:prescaler[23]~q\ : std_logic;
SIGNAL \DUT_Clk|Add0~47\ : std_logic;
SIGNAL \DUT_Clk|Add0~48_combout\ : std_logic;
SIGNAL \DUT_Clk|gen_clk:prescaler[24]~q\ : std_logic;
SIGNAL \DUT_Clk|Add0~49\ : std_logic;
SIGNAL \DUT_Clk|Add0~50_combout\ : std_logic;
SIGNAL \DUT_Clk|prescaler~12_combout\ : std_logic;
SIGNAL \DUT_Clk|gen_clk:prescaler[25]~q\ : std_logic;
SIGNAL \DUT_Clk|Add0~51\ : std_logic;
SIGNAL \DUT_Clk|Add0~52_combout\ : std_logic;
SIGNAL \DUT_Clk|gen_clk:prescaler[26]~q\ : std_logic;
SIGNAL \DUT_Clk|Add0~53\ : std_logic;
SIGNAL \DUT_Clk|Add0~54_combout\ : std_logic;
SIGNAL \DUT_Clk|gen_clk:prescaler[27]~q\ : std_logic;
SIGNAL \DUT_Clk|Equal0~7_combout\ : std_logic;
SIGNAL \DUT_Clk|Equal0~5_combout\ : std_logic;
SIGNAL \DUT_Clk|Equal0~6_combout\ : std_logic;
SIGNAL \DUT_Clk|Equal0~3_combout\ : std_logic;
SIGNAL \DUT_Clk|Equal0~1_combout\ : std_logic;
SIGNAL \DUT_Clk|Equal0~2_combout\ : std_logic;
SIGNAL \DUT_Clk|Equal0~0_combout\ : std_logic;
SIGNAL \DUT_Clk|Equal0~4_combout\ : std_logic;
SIGNAL \DUT_Clk|Equal0~8_combout\ : std_logic;
SIGNAL \DUT_Clk|gen_clk:clk_05Hz_i~0_combout\ : std_logic;
SIGNAL \DUT_Clk|gen_clk:clk_05Hz_i~feeder_combout\ : std_logic;
SIGNAL \DUT_Clk|gen_clk:clk_05Hz_i~q\ : std_logic;
SIGNAL \DUT_Clk|gen_clk:clk_05Hz_i~clkctrl_outclk\ : std_logic;
SIGNAL \DUT_1s|Q[0]~2_combout\ : std_logic;
SIGNAL \BUTTON1~input_o\ : std_logic;
SIGNAL \DUT_1s|Add0~0_combout\ : std_logic;
SIGNAL \DUT_1s|Q[2]~0_combout\ : std_logic;
SIGNAL \DUT_AND_Gate|Z~0_combout\ : std_logic;
SIGNAL \DUT_1s|Q[3]~1_combout\ : std_logic;
SIGNAL \DUT_SevenSegment1|LED_out[1]~0_combout\ : std_logic;
SIGNAL \DUT_SevenSegment1|LED_out[2]~1_combout\ : std_logic;
SIGNAL \DUT_SevenSegment1|LED_out[3]~2_combout\ : std_logic;
SIGNAL \DUT_SevenSegment1|LED_out[4]~3_combout\ : std_logic;
SIGNAL \DUT_SevenSegment1|LED_out[5]~4_combout\ : std_logic;
SIGNAL \DUT_SevenSegment1|LED_out[6]~5_combout\ : std_logic;
SIGNAL \DUT_SevenSegment1|LED_out[7]~6_combout\ : std_logic;
SIGNAL \DUT_10s|Q[0]~4_combout\ : std_logic;
SIGNAL \DUT_AND_Gate|Z~combout\ : std_logic;
SIGNAL \DUT_10s|Add0~0_combout\ : std_logic;
SIGNAL \DUT_10s|Q[2]~3_combout\ : std_logic;
SIGNAL \DUT_SevenSegment10|LED_out[2]~7_combout\ : std_logic;
SIGNAL \DUT_10s|Q[3]~2_combout\ : std_logic;
SIGNAL \DUT_SevenSegment10|LED_out[1]~0_combout\ : std_logic;
SIGNAL \DUT_SevenSegment10|LED_out[2]~1_combout\ : std_logic;
SIGNAL \DUT_SevenSegment10|LED_out[3]~2_combout\ : std_logic;
SIGNAL \DUT_SevenSegment10|LED_out[4]~3_combout\ : std_logic;
SIGNAL \DUT_SevenSegment10|LED_out[5]~4_combout\ : std_logic;
SIGNAL \DUT_SevenSegment10|LED_out[6]~5_combout\ : std_logic;
SIGNAL \DUT_SevenSegment10|LED_out[7]~6_combout\ : std_logic;
SIGNAL \BUTTON2~input_o\ : std_logic;
SIGNAL \DUT_RingCounter|Q_Out[2]~0_combout\ : std_logic;
SIGNAL \DUT_RingCounter|Q_Out[3]~1_combout\ : std_logic;
SIGNAL \DUT_RingCounter|Q_Out[4]~2_combout\ : std_logic;
SIGNAL \DUT_RingCounter|Q_Out[5]~3_combout\ : std_logic;
SIGNAL \DUT_RingCounter|Q_Out[6]~4_combout\ : std_logic;
SIGNAL \DUT_RingCounter|Q_Out[7]~5_combout\ : std_logic;
SIGNAL \DUT_RingCounter|Q_Out[8]~6_combout\ : std_logic;
SIGNAL \DUT_RingCounter|Q_Out[9]~7_combout\ : std_logic;
SIGNAL \DUT_1s|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DUT_10s|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_BUTTON1~input_o\ : std_logic;
SIGNAL \DUT_SevenSegment10|ALT_INV_LED_out[3]~2_combout\ : std_logic;
SIGNAL \DUT_SevenSegment1|ALT_INV_LED_out[3]~2_combout\ : std_logic;

BEGIN

ww_Clk <= Clk;
ww_BUTTON1 <= BUTTON1;
ww_BUTTON2 <= BUTTON2;
LED_1 <= ww_LED_1;
LED_10 <= ww_LED_10;
RC_OUT <= ww_RC_OUT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\DUT_Clk|gen_clk:clk_05Hz_i~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \DUT_Clk|gen_clk:clk_05Hz_i~q\);

\Clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clk~input_o\);
\ALT_INV_BUTTON1~input_o\ <= NOT \BUTTON1~input_o\;
\DUT_SevenSegment10|ALT_INV_LED_out[3]~2_combout\ <= NOT \DUT_SevenSegment10|LED_out[3]~2_combout\;
\DUT_SevenSegment1|ALT_INV_LED_out[3]~2_combout\ <= NOT \DUT_SevenSegment1|LED_out[3]~2_combout\;

-- Location: IOOBUF_X23_Y29_N9
\LED_1[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \LED_1[0]~output_o\);

-- Location: IOOBUF_X21_Y29_N23
\LED_1[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_SevenSegment1|LED_out[1]~0_combout\,
	devoe => ww_devoe,
	o => \LED_1[1]~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\LED_1[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_SevenSegment1|LED_out[2]~1_combout\,
	devoe => ww_devoe,
	o => \LED_1[2]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\LED_1[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_SevenSegment1|ALT_INV_LED_out[3]~2_combout\,
	devoe => ww_devoe,
	o => \LED_1[3]~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\LED_1[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_SevenSegment1|LED_out[4]~3_combout\,
	devoe => ww_devoe,
	o => \LED_1[4]~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\LED_1[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_SevenSegment1|LED_out[5]~4_combout\,
	devoe => ww_devoe,
	o => \LED_1[5]~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\LED_1[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_SevenSegment1|LED_out[6]~5_combout\,
	devoe => ww_devoe,
	o => \LED_1[6]~output_o\);

-- Location: IOOBUF_X26_Y29_N16
\LED_1[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_SevenSegment1|LED_out[7]~6_combout\,
	devoe => ww_devoe,
	o => \LED_1[7]~output_o\);

-- Location: IOOBUF_X26_Y29_N30
\LED_10[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \LED_10[0]~output_o\);

-- Location: IOOBUF_X21_Y29_N2
\LED_10[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_SevenSegment10|LED_out[1]~0_combout\,
	devoe => ww_devoe,
	o => \LED_10[1]~output_o\);

-- Location: IOOBUF_X21_Y29_N9
\LED_10[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_SevenSegment10|LED_out[2]~1_combout\,
	devoe => ww_devoe,
	o => \LED_10[2]~output_o\);

-- Location: IOOBUF_X23_Y29_N2
\LED_10[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_SevenSegment10|ALT_INV_LED_out[3]~2_combout\,
	devoe => ww_devoe,
	o => \LED_10[3]~output_o\);

-- Location: IOOBUF_X23_Y29_N23
\LED_10[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_SevenSegment10|LED_out[4]~3_combout\,
	devoe => ww_devoe,
	o => \LED_10[4]~output_o\);

-- Location: IOOBUF_X23_Y29_N30
\LED_10[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_SevenSegment10|LED_out[5]~4_combout\,
	devoe => ww_devoe,
	o => \LED_10[5]~output_o\);

-- Location: IOOBUF_X28_Y29_N16
\LED_10[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_SevenSegment10|LED_out[6]~5_combout\,
	devoe => ww_devoe,
	o => \LED_10[6]~output_o\);

-- Location: IOOBUF_X26_Y29_N23
\LED_10[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_SevenSegment10|LED_out[7]~6_combout\,
	devoe => ww_devoe,
	o => \LED_10[7]~output_o\);

-- Location: IOOBUF_X0_Y20_N9
\RC_OUT[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BUTTON2~input_o\,
	devoe => ww_devoe,
	o => \RC_OUT[0]~output_o\);

-- Location: IOOBUF_X0_Y20_N2
\RC_OUT[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BUTTON2~input_o\,
	devoe => ww_devoe,
	o => \RC_OUT[1]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\RC_OUT[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_RingCounter|Q_Out[2]~0_combout\,
	devoe => ww_devoe,
	o => \RC_OUT[2]~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\RC_OUT[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_RingCounter|Q_Out[3]~1_combout\,
	devoe => ww_devoe,
	o => \RC_OUT[3]~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\RC_OUT[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_RingCounter|Q_Out[4]~2_combout\,
	devoe => ww_devoe,
	o => \RC_OUT[4]~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\RC_OUT[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_RingCounter|Q_Out[5]~3_combout\,
	devoe => ww_devoe,
	o => \RC_OUT[5]~output_o\);

-- Location: IOOBUF_X0_Y26_N23
\RC_OUT[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_RingCounter|Q_Out[6]~4_combout\,
	devoe => ww_devoe,
	o => \RC_OUT[6]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\RC_OUT[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_RingCounter|Q_Out[7]~5_combout\,
	devoe => ww_devoe,
	o => \RC_OUT[7]~output_o\);

-- Location: IOOBUF_X0_Y27_N9
\RC_OUT[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_RingCounter|Q_Out[8]~6_combout\,
	devoe => ww_devoe,
	o => \RC_OUT[8]~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\RC_OUT[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_RingCounter|Q_Out[9]~7_combout\,
	devoe => ww_devoe,
	o => \RC_OUT[9]~output_o\);

-- Location: IOIBUF_X41_Y15_N1
\Clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clk,
	o => \Clk~input_o\);

-- Location: CLKCTRL_G9
\Clk~inputclkctrl\ : cycloneiii_clkctrl
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

-- Location: LCCOMB_X16_Y20_N4
\DUT_Clk|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DUT_Clk|Add0~0_combout\ = \DUT_Clk|gen_clk:prescaler[0]~q\ $ (VCC)
-- \DUT_Clk|Add0~1\ = CARRY(\DUT_Clk|gen_clk:prescaler[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DUT_Clk|gen_clk:prescaler[0]~q\,
	datad => VCC,
	combout => \DUT_Clk|Add0~0_combout\,
	cout => \DUT_Clk|Add0~1\);

-- Location: LCCOMB_X17_Y20_N14
\DUT_Clk|prescaler~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DUT_Clk|prescaler~1_combout\ = (\DUT_Clk|Add0~0_combout\ & !\DUT_Clk|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DUT_Clk|Add0~0_combout\,
	datad => \DUT_Clk|Equal0~8_combout\,
	combout => \DUT_Clk|prescaler~1_combout\);

-- Location: FF_X17_Y20_N15
\DUT_Clk|gen_clk:prescaler[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \DUT_Clk|prescaler~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT_Clk|gen_clk:prescaler[0]~q\);

-- Location: LCCOMB_X16_Y20_N6
\DUT_Clk|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DUT_Clk|Add0~2_combout\ = (\DUT_Clk|gen_clk:prescaler[1]~q\ & (!\DUT_Clk|Add0~1\)) # (!\DUT_Clk|gen_clk:prescaler[1]~q\ & ((\DUT_Clk|Add0~1\) # (GND)))
-- \DUT_Clk|Add0~3\ = CARRY((!\DUT_Clk|Add0~1\) # (!\DUT_Clk|gen_clk:prescaler[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DUT_Clk|gen_clk:prescaler[1]~q\,
	datad => VCC,
	cin => \DUT_Clk|Add0~1\,
	combout => \DUT_Clk|Add0~2_combout\,
	cout => \DUT_Clk|Add0~3\);

-- Location: FF_X16_Y20_N7
\DUT_Clk|gen_clk:prescaler[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \DUT_Clk|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT_Clk|gen_clk:prescaler[1]~q\);

-- Location: LCCOMB_X16_Y20_N8
\DUT_Clk|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DUT_Clk|Add0~4_combout\ = (\DUT_Clk|gen_clk:prescaler[2]~q\ & (\DUT_Clk|Add0~3\ $ (GND))) # (!\DUT_Clk|gen_clk:prescaler[2]~q\ & (!\DUT_Clk|Add0~3\ & VCC))
-- \DUT_Clk|Add0~5\ = CARRY((\DUT_Clk|gen_clk:prescaler[2]~q\ & !\DUT_Clk|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DUT_Clk|gen_clk:prescaler[2]~q\,
	datad => VCC,
	cin => \DUT_Clk|Add0~3\,
	combout => \DUT_Clk|Add0~4_combout\,
	cout => \DUT_Clk|Add0~5\);

-- Location: FF_X16_Y20_N9
\DUT_Clk|gen_clk:prescaler[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \DUT_Clk|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT_Clk|gen_clk:prescaler[2]~q\);

-- Location: LCCOMB_X16_Y20_N10
\DUT_Clk|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DUT_Clk|Add0~6_combout\ = (\DUT_Clk|gen_clk:prescaler[3]~q\ & (!\DUT_Clk|Add0~5\)) # (!\DUT_Clk|gen_clk:prescaler[3]~q\ & ((\DUT_Clk|Add0~5\) # (GND)))
-- \DUT_Clk|Add0~7\ = CARRY((!\DUT_Clk|Add0~5\) # (!\DUT_Clk|gen_clk:prescaler[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DUT_Clk|gen_clk:prescaler[3]~q\,
	datad => VCC,
	cin => \DUT_Clk|Add0~5\,
	combout => \DUT_Clk|Add0~6_combout\,
	cout => \DUT_Clk|Add0~7\);

-- Location: FF_X16_Y20_N11
\DUT_Clk|gen_clk:prescaler[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \DUT_Clk|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT_Clk|gen_clk:prescaler[3]~q\);

-- Location: LCCOMB_X16_Y20_N12
\DUT_Clk|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DUT_Clk|Add0~8_combout\ = (\DUT_Clk|gen_clk:prescaler[4]~q\ & (\DUT_Clk|Add0~7\ $ (GND))) # (!\DUT_Clk|gen_clk:prescaler[4]~q\ & (!\DUT_Clk|Add0~7\ & VCC))
-- \DUT_Clk|Add0~9\ = CARRY((\DUT_Clk|gen_clk:prescaler[4]~q\ & !\DUT_Clk|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DUT_Clk|gen_clk:prescaler[4]~q\,
	datad => VCC,
	cin => \DUT_Clk|Add0~7\,
	combout => \DUT_Clk|Add0~8_combout\,
	cout => \DUT_Clk|Add0~9\);

-- Location: FF_X16_Y20_N13
\DUT_Clk|gen_clk:prescaler[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \DUT_Clk|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT_Clk|gen_clk:prescaler[4]~q\);

-- Location: LCCOMB_X16_Y20_N14
\DUT_Clk|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DUT_Clk|Add0~10_combout\ = (\DUT_Clk|gen_clk:prescaler[5]~q\ & (!\DUT_Clk|Add0~9\)) # (!\DUT_Clk|gen_clk:prescaler[5]~q\ & ((\DUT_Clk|Add0~9\) # (GND)))
-- \DUT_Clk|Add0~11\ = CARRY((!\DUT_Clk|Add0~9\) # (!\DUT_Clk|gen_clk:prescaler[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DUT_Clk|gen_clk:prescaler[5]~q\,
	datad => VCC,
	cin => \DUT_Clk|Add0~9\,
	combout => \DUT_Clk|Add0~10_combout\,
	cout => \DUT_Clk|Add0~11\);

-- Location: FF_X16_Y20_N15
\DUT_Clk|gen_clk:prescaler[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \DUT_Clk|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT_Clk|gen_clk:prescaler[5]~q\);

-- Location: LCCOMB_X16_Y20_N16
\DUT_Clk|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DUT_Clk|Add0~12_combout\ = (\DUT_Clk|gen_clk:prescaler[6]~q\ & (\DUT_Clk|Add0~11\ $ (GND))) # (!\DUT_Clk|gen_clk:prescaler[6]~q\ & (!\DUT_Clk|Add0~11\ & VCC))
-- \DUT_Clk|Add0~13\ = CARRY((\DUT_Clk|gen_clk:prescaler[6]~q\ & !\DUT_Clk|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DUT_Clk|gen_clk:prescaler[6]~q\,
	datad => VCC,
	cin => \DUT_Clk|Add0~11\,
	combout => \DUT_Clk|Add0~12_combout\,
	cout => \DUT_Clk|Add0~13\);

-- Location: FF_X16_Y20_N17
\DUT_Clk|gen_clk:prescaler[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \DUT_Clk|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT_Clk|gen_clk:prescaler[6]~q\);

-- Location: LCCOMB_X16_Y20_N18
\DUT_Clk|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DUT_Clk|Add0~14_combout\ = (\DUT_Clk|gen_clk:prescaler[7]~q\ & (!\DUT_Clk|Add0~13\)) # (!\DUT_Clk|gen_clk:prescaler[7]~q\ & ((\DUT_Clk|Add0~13\) # (GND)))
-- \DUT_Clk|Add0~15\ = CARRY((!\DUT_Clk|Add0~13\) # (!\DUT_Clk|gen_clk:prescaler[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DUT_Clk|gen_clk:prescaler[7]~q\,
	datad => VCC,
	cin => \DUT_Clk|Add0~13\,
	combout => \DUT_Clk|Add0~14_combout\,
	cout => \DUT_Clk|Add0~15\);

-- Location: LCCOMB_X16_Y20_N0
\DUT_Clk|prescaler~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DUT_Clk|prescaler~0_combout\ = (!\DUT_Clk|Equal0~8_combout\ & \DUT_Clk|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DUT_Clk|Equal0~8_combout\,
	datad => \DUT_Clk|Add0~14_combout\,
	combout => \DUT_Clk|prescaler~0_combout\);

-- Location: FF_X16_Y20_N1
\DUT_Clk|gen_clk:prescaler[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \DUT_Clk|prescaler~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT_Clk|gen_clk:prescaler[7]~q\);

-- Location: LCCOMB_X16_Y20_N20
\DUT_Clk|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DUT_Clk|Add0~16_combout\ = (\DUT_Clk|gen_clk:prescaler[8]~q\ & (\DUT_Clk|Add0~15\ $ (GND))) # (!\DUT_Clk|gen_clk:prescaler[8]~q\ & (!\DUT_Clk|Add0~15\ & VCC))
-- \DUT_Clk|Add0~17\ = CARRY((\DUT_Clk|gen_clk:prescaler[8]~q\ & !\DUT_Clk|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DUT_Clk|gen_clk:prescaler[8]~q\,
	datad => VCC,
	cin => \DUT_Clk|Add0~15\,
	combout => \DUT_Clk|Add0~16_combout\,
	cout => \DUT_Clk|Add0~17\);

-- Location: FF_X16_Y20_N21
\DUT_Clk|gen_clk:prescaler[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \DUT_Clk|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT_Clk|gen_clk:prescaler[8]~q\);

-- Location: LCCOMB_X16_Y20_N22
\DUT_Clk|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DUT_Clk|Add0~18_combout\ = (\DUT_Clk|gen_clk:prescaler[9]~q\ & (!\DUT_Clk|Add0~17\)) # (!\DUT_Clk|gen_clk:prescaler[9]~q\ & ((\DUT_Clk|Add0~17\) # (GND)))
-- \DUT_Clk|Add0~19\ = CARRY((!\DUT_Clk|Add0~17\) # (!\DUT_Clk|gen_clk:prescaler[9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DUT_Clk|gen_clk:prescaler[9]~q\,
	datad => VCC,
	cin => \DUT_Clk|Add0~17\,
	combout => \DUT_Clk|Add0~18_combout\,
	cout => \DUT_Clk|Add0~19\);

-- Location: FF_X16_Y20_N23
\DUT_Clk|gen_clk:prescaler[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \DUT_Clk|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT_Clk|gen_clk:prescaler[9]~q\);

-- Location: LCCOMB_X16_Y20_N24
\DUT_Clk|Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DUT_Clk|Add0~20_combout\ = (\DUT_Clk|gen_clk:prescaler[10]~q\ & (\DUT_Clk|Add0~19\ $ (GND))) # (!\DUT_Clk|gen_clk:prescaler[10]~q\ & (!\DUT_Clk|Add0~19\ & VCC))
-- \DUT_Clk|Add0~21\ = CARRY((\DUT_Clk|gen_clk:prescaler[10]~q\ & !\DUT_Clk|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DUT_Clk|gen_clk:prescaler[10]~q\,
	datad => VCC,
	cin => \DUT_Clk|Add0~19\,
	combout => \DUT_Clk|Add0~20_combout\,
	cout => \DUT_Clk|Add0~21\);

-- Location: FF_X16_Y20_N25
\DUT_Clk|gen_clk:prescaler[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \DUT_Clk|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT_Clk|gen_clk:prescaler[10]~q\);

-- Location: LCCOMB_X16_Y20_N26
\DUT_Clk|Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DUT_Clk|Add0~22_combout\ = (\DUT_Clk|gen_clk:prescaler[11]~q\ & (!\DUT_Clk|Add0~21\)) # (!\DUT_Clk|gen_clk:prescaler[11]~q\ & ((\DUT_Clk|Add0~21\) # (GND)))
-- \DUT_Clk|Add0~23\ = CARRY((!\DUT_Clk|Add0~21\) # (!\DUT_Clk|gen_clk:prescaler[11]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DUT_Clk|gen_clk:prescaler[11]~q\,
	datad => VCC,
	cin => \DUT_Clk|Add0~21\,
	combout => \DUT_Clk|Add0~22_combout\,
	cout => \DUT_Clk|Add0~23\);

-- Location: FF_X16_Y20_N27
\DUT_Clk|gen_clk:prescaler[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \DUT_Clk|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT_Clk|gen_clk:prescaler[11]~q\);

-- Location: LCCOMB_X16_Y20_N28
\DUT_Clk|Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DUT_Clk|Add0~24_combout\ = (\DUT_Clk|gen_clk:prescaler[12]~q\ & (\DUT_Clk|Add0~23\ $ (GND))) # (!\DUT_Clk|gen_clk:prescaler[12]~q\ & (!\DUT_Clk|Add0~23\ & VCC))
-- \DUT_Clk|Add0~25\ = CARRY((\DUT_Clk|gen_clk:prescaler[12]~q\ & !\DUT_Clk|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DUT_Clk|gen_clk:prescaler[12]~q\,
	datad => VCC,
	cin => \DUT_Clk|Add0~23\,
	combout => \DUT_Clk|Add0~24_combout\,
	cout => \DUT_Clk|Add0~25\);

-- Location: LCCOMB_X17_Y20_N24
\DUT_Clk|prescaler~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DUT_Clk|prescaler~2_combout\ = (\DUT_Clk|Add0~24_combout\ & !\DUT_Clk|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DUT_Clk|Add0~24_combout\,
	datad => \DUT_Clk|Equal0~8_combout\,
	combout => \DUT_Clk|prescaler~2_combout\);

-- Location: FF_X17_Y20_N25
\DUT_Clk|gen_clk:prescaler[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \DUT_Clk|prescaler~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT_Clk|gen_clk:prescaler[12]~q\);

-- Location: LCCOMB_X16_Y20_N30
\DUT_Clk|Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DUT_Clk|Add0~26_combout\ = (\DUT_Clk|gen_clk:prescaler[13]~q\ & (!\DUT_Clk|Add0~25\)) # (!\DUT_Clk|gen_clk:prescaler[13]~q\ & ((\DUT_Clk|Add0~25\) # (GND)))
-- \DUT_Clk|Add0~27\ = CARRY((!\DUT_Clk|Add0~25\) # (!\DUT_Clk|gen_clk:prescaler[13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DUT_Clk|gen_clk:prescaler[13]~q\,
	datad => VCC,
	cin => \DUT_Clk|Add0~25\,
	combout => \DUT_Clk|Add0~26_combout\,
	cout => \DUT_Clk|Add0~27\);

-- Location: LCCOMB_X16_Y20_N2
\DUT_Clk|prescaler~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DUT_Clk|prescaler~3_combout\ = (\DUT_Clk|Add0~26_combout\ & !\DUT_Clk|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DUT_Clk|Add0~26_combout\,
	datad => \DUT_Clk|Equal0~8_combout\,
	combout => \DUT_Clk|prescaler~3_combout\);

-- Location: FF_X16_Y20_N3
\DUT_Clk|gen_clk:prescaler[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \DUT_Clk|prescaler~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT_Clk|gen_clk:prescaler[13]~q\);

-- Location: LCCOMB_X16_Y19_N0
\DUT_Clk|Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DUT_Clk|Add0~28_combout\ = (\DUT_Clk|gen_clk:prescaler[14]~q\ & (\DUT_Clk|Add0~27\ $ (GND))) # (!\DUT_Clk|gen_clk:prescaler[14]~q\ & (!\DUT_Clk|Add0~27\ & VCC))
-- \DUT_Clk|Add0~29\ = CARRY((\DUT_Clk|gen_clk:prescaler[14]~q\ & !\DUT_Clk|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DUT_Clk|gen_clk:prescaler[14]~q\,
	datad => VCC,
	cin => \DUT_Clk|Add0~27\,
	combout => \DUT_Clk|Add0~28_combout\,
	cout => \DUT_Clk|Add0~29\);

-- Location: LCCOMB_X17_Y20_N30
\DUT_Clk|prescaler~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DUT_Clk|prescaler~4_combout\ = (!\DUT_Clk|Equal0~8_combout\ & \DUT_Clk|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DUT_Clk|Equal0~8_combout\,
	datad => \DUT_Clk|Add0~28_combout\,
	combout => \DUT_Clk|prescaler~4_combout\);

-- Location: FF_X17_Y20_N31
\DUT_Clk|gen_clk:prescaler[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \DUT_Clk|prescaler~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT_Clk|gen_clk:prescaler[14]~q\);

-- Location: LCCOMB_X16_Y19_N2
\DUT_Clk|Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DUT_Clk|Add0~30_combout\ = (\DUT_Clk|gen_clk:prescaler[15]~q\ & (!\DUT_Clk|Add0~29\)) # (!\DUT_Clk|gen_clk:prescaler[15]~q\ & ((\DUT_Clk|Add0~29\) # (GND)))
-- \DUT_Clk|Add0~31\ = CARRY((!\DUT_Clk|Add0~29\) # (!\DUT_Clk|gen_clk:prescaler[15]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DUT_Clk|gen_clk:prescaler[15]~q\,
	datad => VCC,
	cin => \DUT_Clk|Add0~29\,
	combout => \DUT_Clk|Add0~30_combout\,
	cout => \DUT_Clk|Add0~31\);

-- Location: LCCOMB_X17_Y20_N12
\DUT_Clk|prescaler~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DUT_Clk|prescaler~5_combout\ = (!\DUT_Clk|Equal0~8_combout\ & \DUT_Clk|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DUT_Clk|Equal0~8_combout\,
	datac => \DUT_Clk|Add0~30_combout\,
	combout => \DUT_Clk|prescaler~5_combout\);

-- Location: FF_X17_Y20_N13
\DUT_Clk|gen_clk:prescaler[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \DUT_Clk|prescaler~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT_Clk|gen_clk:prescaler[15]~q\);

-- Location: LCCOMB_X16_Y19_N4
\DUT_Clk|Add0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DUT_Clk|Add0~32_combout\ = (\DUT_Clk|gen_clk:prescaler[16]~q\ & (\DUT_Clk|Add0~31\ $ (GND))) # (!\DUT_Clk|gen_clk:prescaler[16]~q\ & (!\DUT_Clk|Add0~31\ & VCC))
-- \DUT_Clk|Add0~33\ = CARRY((\DUT_Clk|gen_clk:prescaler[16]~q\ & !\DUT_Clk|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DUT_Clk|gen_clk:prescaler[16]~q\,
	datad => VCC,
	cin => \DUT_Clk|Add0~31\,
	combout => \DUT_Clk|Add0~32_combout\,
	cout => \DUT_Clk|Add0~33\);

-- Location: FF_X16_Y19_N5
\DUT_Clk|gen_clk:prescaler[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \DUT_Clk|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT_Clk|gen_clk:prescaler[16]~q\);

-- Location: LCCOMB_X16_Y19_N6
\DUT_Clk|Add0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DUT_Clk|Add0~34_combout\ = (\DUT_Clk|gen_clk:prescaler[17]~q\ & (!\DUT_Clk|Add0~33\)) # (!\DUT_Clk|gen_clk:prescaler[17]~q\ & ((\DUT_Clk|Add0~33\) # (GND)))
-- \DUT_Clk|Add0~35\ = CARRY((!\DUT_Clk|Add0~33\) # (!\DUT_Clk|gen_clk:prescaler[17]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DUT_Clk|gen_clk:prescaler[17]~q\,
	datad => VCC,
	cin => \DUT_Clk|Add0~33\,
	combout => \DUT_Clk|Add0~34_combout\,
	cout => \DUT_Clk|Add0~35\);

-- Location: LCCOMB_X17_Y19_N4
\DUT_Clk|prescaler~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DUT_Clk|prescaler~6_combout\ = (\DUT_Clk|Add0~34_combout\ & !\DUT_Clk|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DUT_Clk|Add0~34_combout\,
	datad => \DUT_Clk|Equal0~8_combout\,
	combout => \DUT_Clk|prescaler~6_combout\);

-- Location: FF_X17_Y19_N5
\DUT_Clk|gen_clk:prescaler[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \DUT_Clk|prescaler~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT_Clk|gen_clk:prescaler[17]~q\);

-- Location: LCCOMB_X16_Y19_N8
\DUT_Clk|Add0~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DUT_Clk|Add0~36_combout\ = (\DUT_Clk|gen_clk:prescaler[18]~q\ & (\DUT_Clk|Add0~35\ $ (GND))) # (!\DUT_Clk|gen_clk:prescaler[18]~q\ & (!\DUT_Clk|Add0~35\ & VCC))
-- \DUT_Clk|Add0~37\ = CARRY((\DUT_Clk|gen_clk:prescaler[18]~q\ & !\DUT_Clk|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DUT_Clk|gen_clk:prescaler[18]~q\,
	datad => VCC,
	cin => \DUT_Clk|Add0~35\,
	combout => \DUT_Clk|Add0~36_combout\,
	cout => \DUT_Clk|Add0~37\);

-- Location: FF_X16_Y19_N9
\DUT_Clk|gen_clk:prescaler[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \DUT_Clk|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT_Clk|gen_clk:prescaler[18]~q\);

-- Location: LCCOMB_X16_Y19_N10
\DUT_Clk|Add0~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DUT_Clk|Add0~38_combout\ = (\DUT_Clk|gen_clk:prescaler[19]~q\ & (!\DUT_Clk|Add0~37\)) # (!\DUT_Clk|gen_clk:prescaler[19]~q\ & ((\DUT_Clk|Add0~37\) # (GND)))
-- \DUT_Clk|Add0~39\ = CARRY((!\DUT_Clk|Add0~37\) # (!\DUT_Clk|gen_clk:prescaler[19]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DUT_Clk|gen_clk:prescaler[19]~q\,
	datad => VCC,
	cin => \DUT_Clk|Add0~37\,
	combout => \DUT_Clk|Add0~38_combout\,
	cout => \DUT_Clk|Add0~39\);

-- Location: LCCOMB_X16_Y19_N28
\DUT_Clk|prescaler~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DUT_Clk|prescaler~7_combout\ = (!\DUT_Clk|Equal0~8_combout\ & \DUT_Clk|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DUT_Clk|Equal0~8_combout\,
	datad => \DUT_Clk|Add0~38_combout\,
	combout => \DUT_Clk|prescaler~7_combout\);

-- Location: FF_X16_Y19_N29
\DUT_Clk|gen_clk:prescaler[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \DUT_Clk|prescaler~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT_Clk|gen_clk:prescaler[19]~q\);

-- Location: LCCOMB_X16_Y19_N12
\DUT_Clk|Add0~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DUT_Clk|Add0~40_combout\ = (\DUT_Clk|gen_clk:prescaler[20]~q\ & (\DUT_Clk|Add0~39\ $ (GND))) # (!\DUT_Clk|gen_clk:prescaler[20]~q\ & (!\DUT_Clk|Add0~39\ & VCC))
-- \DUT_Clk|Add0~41\ = CARRY((\DUT_Clk|gen_clk:prescaler[20]~q\ & !\DUT_Clk|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DUT_Clk|gen_clk:prescaler[20]~q\,
	datad => VCC,
	cin => \DUT_Clk|Add0~39\,
	combout => \DUT_Clk|Add0~40_combout\,
	cout => \DUT_Clk|Add0~41\);

-- Location: LCCOMB_X17_Y19_N20
\DUT_Clk|prescaler~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DUT_Clk|prescaler~8_combout\ = (!\DUT_Clk|Equal0~8_combout\ & \DUT_Clk|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DUT_Clk|Equal0~8_combout\,
	datad => \DUT_Clk|Add0~40_combout\,
	combout => \DUT_Clk|prescaler~8_combout\);

-- Location: FF_X17_Y19_N21
\DUT_Clk|gen_clk:prescaler[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \DUT_Clk|prescaler~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT_Clk|gen_clk:prescaler[20]~q\);

-- Location: LCCOMB_X16_Y19_N14
\DUT_Clk|Add0~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DUT_Clk|Add0~42_combout\ = (\DUT_Clk|gen_clk:prescaler[21]~q\ & (!\DUT_Clk|Add0~41\)) # (!\DUT_Clk|gen_clk:prescaler[21]~q\ & ((\DUT_Clk|Add0~41\) # (GND)))
-- \DUT_Clk|Add0~43\ = CARRY((!\DUT_Clk|Add0~41\) # (!\DUT_Clk|gen_clk:prescaler[21]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DUT_Clk|gen_clk:prescaler[21]~q\,
	datad => VCC,
	cin => \DUT_Clk|Add0~41\,
	combout => \DUT_Clk|Add0~42_combout\,
	cout => \DUT_Clk|Add0~43\);

-- Location: LCCOMB_X17_Y19_N2
\DUT_Clk|prescaler~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DUT_Clk|prescaler~9_combout\ = (!\DUT_Clk|Equal0~8_combout\ & \DUT_Clk|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DUT_Clk|Equal0~8_combout\,
	datad => \DUT_Clk|Add0~42_combout\,
	combout => \DUT_Clk|prescaler~9_combout\);

-- Location: FF_X17_Y19_N3
\DUT_Clk|gen_clk:prescaler[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \DUT_Clk|prescaler~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT_Clk|gen_clk:prescaler[21]~q\);

-- Location: LCCOMB_X16_Y19_N16
\DUT_Clk|Add0~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DUT_Clk|Add0~44_combout\ = (\DUT_Clk|gen_clk:prescaler[22]~q\ & (\DUT_Clk|Add0~43\ $ (GND))) # (!\DUT_Clk|gen_clk:prescaler[22]~q\ & (!\DUT_Clk|Add0~43\ & VCC))
-- \DUT_Clk|Add0~45\ = CARRY((\DUT_Clk|gen_clk:prescaler[22]~q\ & !\DUT_Clk|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DUT_Clk|gen_clk:prescaler[22]~q\,
	datad => VCC,
	cin => \DUT_Clk|Add0~43\,
	combout => \DUT_Clk|Add0~44_combout\,
	cout => \DUT_Clk|Add0~45\);

-- Location: LCCOMB_X16_Y19_N30
\DUT_Clk|prescaler~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DUT_Clk|prescaler~10_combout\ = (!\DUT_Clk|Equal0~8_combout\ & \DUT_Clk|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DUT_Clk|Equal0~8_combout\,
	datad => \DUT_Clk|Add0~44_combout\,
	combout => \DUT_Clk|prescaler~10_combout\);

-- Location: FF_X16_Y19_N31
\DUT_Clk|gen_clk:prescaler[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \DUT_Clk|prescaler~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT_Clk|gen_clk:prescaler[22]~q\);

-- Location: LCCOMB_X16_Y19_N18
\DUT_Clk|Add0~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DUT_Clk|Add0~46_combout\ = (\DUT_Clk|gen_clk:prescaler[23]~q\ & (!\DUT_Clk|Add0~45\)) # (!\DUT_Clk|gen_clk:prescaler[23]~q\ & ((\DUT_Clk|Add0~45\) # (GND)))
-- \DUT_Clk|Add0~47\ = CARRY((!\DUT_Clk|Add0~45\) # (!\DUT_Clk|gen_clk:prescaler[23]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DUT_Clk|gen_clk:prescaler[23]~q\,
	datad => VCC,
	cin => \DUT_Clk|Add0~45\,
	combout => \DUT_Clk|Add0~46_combout\,
	cout => \DUT_Clk|Add0~47\);

-- Location: LCCOMB_X17_Y19_N6
\DUT_Clk|prescaler~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DUT_Clk|prescaler~11_combout\ = (!\DUT_Clk|Equal0~8_combout\ & \DUT_Clk|Add0~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DUT_Clk|Equal0~8_combout\,
	datad => \DUT_Clk|Add0~46_combout\,
	combout => \DUT_Clk|prescaler~11_combout\);

-- Location: FF_X17_Y19_N7
\DUT_Clk|gen_clk:prescaler[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \DUT_Clk|prescaler~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT_Clk|gen_clk:prescaler[23]~q\);

-- Location: LCCOMB_X16_Y19_N20
\DUT_Clk|Add0~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DUT_Clk|Add0~48_combout\ = (\DUT_Clk|gen_clk:prescaler[24]~q\ & (\DUT_Clk|Add0~47\ $ (GND))) # (!\DUT_Clk|gen_clk:prescaler[24]~q\ & (!\DUT_Clk|Add0~47\ & VCC))
-- \DUT_Clk|Add0~49\ = CARRY((\DUT_Clk|gen_clk:prescaler[24]~q\ & !\DUT_Clk|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DUT_Clk|gen_clk:prescaler[24]~q\,
	datad => VCC,
	cin => \DUT_Clk|Add0~47\,
	combout => \DUT_Clk|Add0~48_combout\,
	cout => \DUT_Clk|Add0~49\);

-- Location: FF_X16_Y19_N21
\DUT_Clk|gen_clk:prescaler[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \DUT_Clk|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT_Clk|gen_clk:prescaler[24]~q\);

-- Location: LCCOMB_X16_Y19_N22
\DUT_Clk|Add0~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DUT_Clk|Add0~50_combout\ = (\DUT_Clk|gen_clk:prescaler[25]~q\ & (!\DUT_Clk|Add0~49\)) # (!\DUT_Clk|gen_clk:prescaler[25]~q\ & ((\DUT_Clk|Add0~49\) # (GND)))
-- \DUT_Clk|Add0~51\ = CARRY((!\DUT_Clk|Add0~49\) # (!\DUT_Clk|gen_clk:prescaler[25]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DUT_Clk|gen_clk:prescaler[25]~q\,
	datad => VCC,
	cin => \DUT_Clk|Add0~49\,
	combout => \DUT_Clk|Add0~50_combout\,
	cout => \DUT_Clk|Add0~51\);

-- Location: LCCOMB_X17_Y19_N10
\DUT_Clk|prescaler~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DUT_Clk|prescaler~12_combout\ = (!\DUT_Clk|Equal0~8_combout\ & \DUT_Clk|Add0~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DUT_Clk|Equal0~8_combout\,
	datad => \DUT_Clk|Add0~50_combout\,
	combout => \DUT_Clk|prescaler~12_combout\);

-- Location: FF_X17_Y19_N11
\DUT_Clk|gen_clk:prescaler[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \DUT_Clk|prescaler~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT_Clk|gen_clk:prescaler[25]~q\);

-- Location: LCCOMB_X16_Y19_N24
\DUT_Clk|Add0~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DUT_Clk|Add0~52_combout\ = (\DUT_Clk|gen_clk:prescaler[26]~q\ & (\DUT_Clk|Add0~51\ $ (GND))) # (!\DUT_Clk|gen_clk:prescaler[26]~q\ & (!\DUT_Clk|Add0~51\ & VCC))
-- \DUT_Clk|Add0~53\ = CARRY((\DUT_Clk|gen_clk:prescaler[26]~q\ & !\DUT_Clk|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DUT_Clk|gen_clk:prescaler[26]~q\,
	datad => VCC,
	cin => \DUT_Clk|Add0~51\,
	combout => \DUT_Clk|Add0~52_combout\,
	cout => \DUT_Clk|Add0~53\);

-- Location: FF_X16_Y19_N25
\DUT_Clk|gen_clk:prescaler[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \DUT_Clk|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT_Clk|gen_clk:prescaler[26]~q\);

-- Location: LCCOMB_X16_Y19_N26
\DUT_Clk|Add0~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DUT_Clk|Add0~54_combout\ = \DUT_Clk|gen_clk:prescaler[27]~q\ $ (\DUT_Clk|Add0~53\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DUT_Clk|gen_clk:prescaler[27]~q\,
	cin => \DUT_Clk|Add0~53\,
	combout => \DUT_Clk|Add0~54_combout\);

-- Location: FF_X16_Y19_N27
\DUT_Clk|gen_clk:prescaler[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \DUT_Clk|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT_Clk|gen_clk:prescaler[27]~q\);

-- Location: LCCOMB_X17_Y19_N26
\DUT_Clk|Equal0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DUT_Clk|Equal0~7_combout\ = (\DUT_Clk|gen_clk:prescaler[25]~q\ & (!\DUT_Clk|gen_clk:prescaler[26]~q\ & (!\DUT_Clk|gen_clk:prescaler[27]~q\ & !\DUT_Clk|gen_clk:prescaler[24]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT_Clk|gen_clk:prescaler[25]~q\,
	datab => \DUT_Clk|gen_clk:prescaler[26]~q\,
	datac => \DUT_Clk|gen_clk:prescaler[27]~q\,
	datad => \DUT_Clk|gen_clk:prescaler[24]~q\,
	combout => \DUT_Clk|Equal0~7_combout\);

-- Location: LCCOMB_X17_Y19_N28
\DUT_Clk|Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DUT_Clk|Equal0~5_combout\ = (!\DUT_Clk|gen_clk:prescaler[18]~q\ & (\DUT_Clk|gen_clk:prescaler[17]~q\ & (!\DUT_Clk|gen_clk:prescaler[16]~q\ & \DUT_Clk|gen_clk:prescaler[19]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT_Clk|gen_clk:prescaler[18]~q\,
	datab => \DUT_Clk|gen_clk:prescaler[17]~q\,
	datac => \DUT_Clk|gen_clk:prescaler[16]~q\,
	datad => \DUT_Clk|gen_clk:prescaler[19]~q\,
	combout => \DUT_Clk|Equal0~5_combout\);

-- Location: LCCOMB_X17_Y19_N22
\DUT_Clk|Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DUT_Clk|Equal0~6_combout\ = (\DUT_Clk|gen_clk:prescaler[23]~q\ & (\DUT_Clk|gen_clk:prescaler[22]~q\ & (\DUT_Clk|gen_clk:prescaler[21]~q\ & \DUT_Clk|gen_clk:prescaler[20]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT_Clk|gen_clk:prescaler[23]~q\,
	datab => \DUT_Clk|gen_clk:prescaler[22]~q\,
	datac => \DUT_Clk|gen_clk:prescaler[21]~q\,
	datad => \DUT_Clk|gen_clk:prescaler[20]~q\,
	combout => \DUT_Clk|Equal0~6_combout\);

-- Location: LCCOMB_X17_Y20_N26
\DUT_Clk|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DUT_Clk|Equal0~3_combout\ = (\DUT_Clk|gen_clk:prescaler[15]~q\ & (\DUT_Clk|gen_clk:prescaler[12]~q\ & (\DUT_Clk|gen_clk:prescaler[14]~q\ & \DUT_Clk|gen_clk:prescaler[13]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT_Clk|gen_clk:prescaler[15]~q\,
	datab => \DUT_Clk|gen_clk:prescaler[12]~q\,
	datac => \DUT_Clk|gen_clk:prescaler[14]~q\,
	datad => \DUT_Clk|gen_clk:prescaler[13]~q\,
	combout => \DUT_Clk|Equal0~3_combout\);

-- Location: LCCOMB_X17_Y20_N8
\DUT_Clk|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DUT_Clk|Equal0~1_combout\ = (!\DUT_Clk|gen_clk:prescaler[2]~q\ & (!\DUT_Clk|gen_clk:prescaler[0]~q\ & (!\DUT_Clk|gen_clk:prescaler[1]~q\ & !\DUT_Clk|gen_clk:prescaler[3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT_Clk|gen_clk:prescaler[2]~q\,
	datab => \DUT_Clk|gen_clk:prescaler[0]~q\,
	datac => \DUT_Clk|gen_clk:prescaler[1]~q\,
	datad => \DUT_Clk|gen_clk:prescaler[3]~q\,
	combout => \DUT_Clk|Equal0~1_combout\);

-- Location: LCCOMB_X17_Y20_N22
\DUT_Clk|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DUT_Clk|Equal0~2_combout\ = (!\DUT_Clk|gen_clk:prescaler[11]~q\ & (!\DUT_Clk|gen_clk:prescaler[8]~q\ & (!\DUT_Clk|gen_clk:prescaler[10]~q\ & !\DUT_Clk|gen_clk:prescaler[9]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT_Clk|gen_clk:prescaler[11]~q\,
	datab => \DUT_Clk|gen_clk:prescaler[8]~q\,
	datac => \DUT_Clk|gen_clk:prescaler[10]~q\,
	datad => \DUT_Clk|gen_clk:prescaler[9]~q\,
	combout => \DUT_Clk|Equal0~2_combout\);

-- Location: LCCOMB_X17_Y20_N20
\DUT_Clk|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DUT_Clk|Equal0~0_combout\ = (!\DUT_Clk|gen_clk:prescaler[4]~q\ & (!\DUT_Clk|gen_clk:prescaler[6]~q\ & (\DUT_Clk|gen_clk:prescaler[7]~q\ & !\DUT_Clk|gen_clk:prescaler[5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT_Clk|gen_clk:prescaler[4]~q\,
	datab => \DUT_Clk|gen_clk:prescaler[6]~q\,
	datac => \DUT_Clk|gen_clk:prescaler[7]~q\,
	datad => \DUT_Clk|gen_clk:prescaler[5]~q\,
	combout => \DUT_Clk|Equal0~0_combout\);

-- Location: LCCOMB_X17_Y20_N28
\DUT_Clk|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DUT_Clk|Equal0~4_combout\ = (\DUT_Clk|Equal0~3_combout\ & (\DUT_Clk|Equal0~1_combout\ & (\DUT_Clk|Equal0~2_combout\ & \DUT_Clk|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT_Clk|Equal0~3_combout\,
	datab => \DUT_Clk|Equal0~1_combout\,
	datac => \DUT_Clk|Equal0~2_combout\,
	datad => \DUT_Clk|Equal0~0_combout\,
	combout => \DUT_Clk|Equal0~4_combout\);

-- Location: LCCOMB_X17_Y19_N0
\DUT_Clk|Equal0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DUT_Clk|Equal0~8_combout\ = (\DUT_Clk|Equal0~7_combout\ & (\DUT_Clk|Equal0~5_combout\ & (\DUT_Clk|Equal0~6_combout\ & \DUT_Clk|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT_Clk|Equal0~7_combout\,
	datab => \DUT_Clk|Equal0~5_combout\,
	datac => \DUT_Clk|Equal0~6_combout\,
	datad => \DUT_Clk|Equal0~4_combout\,
	combout => \DUT_Clk|Equal0~8_combout\);

-- Location: LCCOMB_X17_Y19_N12
\DUT_Clk|gen_clk:clk_05Hz_i~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DUT_Clk|gen_clk:clk_05Hz_i~0_combout\ = \DUT_Clk|gen_clk:clk_05Hz_i~q\ $ (\DUT_Clk|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT_Clk|gen_clk:clk_05Hz_i~q\,
	datad => \DUT_Clk|Equal0~8_combout\,
	combout => \DUT_Clk|gen_clk:clk_05Hz_i~0_combout\);

-- Location: LCCOMB_X17_Y19_N24
\DUT_Clk|gen_clk:clk_05Hz_i~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DUT_Clk|gen_clk:clk_05Hz_i~feeder_combout\ = \DUT_Clk|gen_clk:clk_05Hz_i~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT_Clk|gen_clk:clk_05Hz_i~0_combout\,
	combout => \DUT_Clk|gen_clk:clk_05Hz_i~feeder_combout\);

-- Location: FF_X17_Y19_N25
\DUT_Clk|gen_clk:clk_05Hz_i\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \DUT_Clk|gen_clk:clk_05Hz_i~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT_Clk|gen_clk:clk_05Hz_i~q\);

-- Location: CLKCTRL_G12
\DUT_Clk|gen_clk:clk_05Hz_i~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \DUT_Clk|gen_clk:clk_05Hz_i~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \DUT_Clk|gen_clk:clk_05Hz_i~clkctrl_outclk\);

-- Location: LCCOMB_X24_Y28_N4
\DUT_1s|Q[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DUT_1s|Q[0]~2_combout\ = !\DUT_1s|Q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DUT_1s|Q\(0),
	combout => \DUT_1s|Q[0]~2_combout\);

-- Location: IOIBUF_X0_Y23_N15
\BUTTON1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BUTTON1,
	o => \BUTTON1~input_o\);

-- Location: FF_X24_Y28_N5
\DUT_1s|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DUT_Clk|gen_clk:clk_05Hz_i~clkctrl_outclk\,
	d => \DUT_1s|Q[0]~2_combout\,
	ena => \ALT_INV_BUTTON1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT_1s|Q\(0));

-- Location: LCCOMB_X24_Y28_N6
\DUT_1s|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DUT_1s|Add0~0_combout\ = \DUT_1s|Q\(1) $ (\DUT_1s|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DUT_1s|Q\(1),
	datad => \DUT_1s|Q\(0),
	combout => \DUT_1s|Add0~0_combout\);

-- Location: FF_X24_Y28_N7
\DUT_1s|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DUT_Clk|gen_clk:clk_05Hz_i~clkctrl_outclk\,
	d => \DUT_1s|Add0~0_combout\,
	ena => \ALT_INV_BUTTON1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT_1s|Q\(1));

-- Location: LCCOMB_X24_Y28_N28
\DUT_1s|Q[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DUT_1s|Q[2]~0_combout\ = \DUT_1s|Q\(2) $ (((\DUT_1s|Q\(0) & (\DUT_1s|Q\(1) & !\BUTTON1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT_1s|Q\(0),
	datab => \DUT_1s|Q\(1),
	datac => \DUT_1s|Q\(2),
	datad => \BUTTON1~input_o\,
	combout => \DUT_1s|Q[2]~0_combout\);

-- Location: FF_X24_Y28_N29
\DUT_1s|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DUT_Clk|gen_clk:clk_05Hz_i~clkctrl_outclk\,
	d => \DUT_1s|Q[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT_1s|Q\(2));

-- Location: LCCOMB_X24_Y28_N10
\DUT_AND_Gate|Z~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DUT_AND_Gate|Z~0_combout\ = (\DUT_1s|Q\(0) & \DUT_1s|Q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DUT_1s|Q\(0),
	datad => \DUT_1s|Q\(1),
	combout => \DUT_AND_Gate|Z~0_combout\);

-- Location: LCCOMB_X24_Y28_N22
\DUT_1s|Q[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DUT_1s|Q[3]~1_combout\ = \DUT_1s|Q\(3) $ (((!\BUTTON1~input_o\ & (\DUT_AND_Gate|Z~0_combout\ & \DUT_1s|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUTTON1~input_o\,
	datab => \DUT_AND_Gate|Z~0_combout\,
	datac => \DUT_1s|Q\(3),
	datad => \DUT_1s|Q\(2),
	combout => \DUT_1s|Q[3]~1_combout\);

-- Location: FF_X24_Y28_N23
\DUT_1s|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DUT_Clk|gen_clk:clk_05Hz_i~clkctrl_outclk\,
	d => \DUT_1s|Q[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT_1s|Q\(3));

-- Location: LCCOMB_X23_Y28_N4
\DUT_SevenSegment1|LED_out[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DUT_SevenSegment1|LED_out[1]~0_combout\ = (\DUT_1s|Q\(2) & (!\DUT_1s|Q\(1) & (\DUT_1s|Q\(3) $ (!\DUT_1s|Q\(0))))) # (!\DUT_1s|Q\(2) & (\DUT_1s|Q\(0) & (\DUT_1s|Q\(1) $ (!\DUT_1s|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT_1s|Q\(1),
	datab => \DUT_1s|Q\(2),
	datac => \DUT_1s|Q\(3),
	datad => \DUT_1s|Q\(0),
	combout => \DUT_SevenSegment1|LED_out[1]~0_combout\);

-- Location: LCCOMB_X23_Y28_N26
\DUT_SevenSegment1|LED_out[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DUT_SevenSegment1|LED_out[2]~1_combout\ = (\DUT_1s|Q\(1) & ((\DUT_1s|Q\(0) & ((\DUT_1s|Q\(3)))) # (!\DUT_1s|Q\(0) & (\DUT_1s|Q\(2))))) # (!\DUT_1s|Q\(1) & (\DUT_1s|Q\(2) & (\DUT_1s|Q\(3) $ (\DUT_1s|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT_1s|Q\(1),
	datab => \DUT_1s|Q\(2),
	datac => \DUT_1s|Q\(3),
	datad => \DUT_1s|Q\(0),
	combout => \DUT_SevenSegment1|LED_out[2]~1_combout\);

-- Location: LCCOMB_X23_Y28_N28
\DUT_SevenSegment1|LED_out[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DUT_SevenSegment1|LED_out[3]~2_combout\ = (\DUT_1s|Q\(2) & (((!\DUT_1s|Q\(1) & \DUT_1s|Q\(0))) # (!\DUT_1s|Q\(3)))) # (!\DUT_1s|Q\(2) & (((\DUT_1s|Q\(3)) # (\DUT_1s|Q\(0))) # (!\DUT_1s|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT_1s|Q\(1),
	datab => \DUT_1s|Q\(2),
	datac => \DUT_1s|Q\(3),
	datad => \DUT_1s|Q\(0),
	combout => \DUT_SevenSegment1|LED_out[3]~2_combout\);

-- Location: LCCOMB_X24_Y28_N20
\DUT_SevenSegment1|LED_out[4]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DUT_SevenSegment1|LED_out[4]~3_combout\ = (\DUT_1s|Q\(1) & ((\DUT_1s|Q\(0) & ((\DUT_1s|Q\(2)))) # (!\DUT_1s|Q\(0) & (\DUT_1s|Q\(3) & !\DUT_1s|Q\(2))))) # (!\DUT_1s|Q\(1) & (!\DUT_1s|Q\(3) & (\DUT_1s|Q\(0) $ (\DUT_1s|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT_1s|Q\(0),
	datab => \DUT_1s|Q\(1),
	datac => \DUT_1s|Q\(3),
	datad => \DUT_1s|Q\(2),
	combout => \DUT_SevenSegment1|LED_out[4]~3_combout\);

-- Location: LCCOMB_X24_Y28_N26
\DUT_SevenSegment1|LED_out[5]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DUT_SevenSegment1|LED_out[5]~4_combout\ = (\DUT_1s|Q\(1) & (\DUT_1s|Q\(0) & (!\DUT_1s|Q\(3)))) # (!\DUT_1s|Q\(1) & ((\DUT_1s|Q\(2) & ((!\DUT_1s|Q\(3)))) # (!\DUT_1s|Q\(2) & (\DUT_1s|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT_1s|Q\(0),
	datab => \DUT_1s|Q\(1),
	datac => \DUT_1s|Q\(3),
	datad => \DUT_1s|Q\(2),
	combout => \DUT_SevenSegment1|LED_out[5]~4_combout\);

-- Location: LCCOMB_X24_Y28_N16
\DUT_SevenSegment1|LED_out[6]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DUT_SevenSegment1|LED_out[6]~5_combout\ = (\DUT_1s|Q\(0) & (\DUT_1s|Q\(3) $ (((\DUT_1s|Q\(1)) # (!\DUT_1s|Q\(2)))))) # (!\DUT_1s|Q\(0) & (\DUT_1s|Q\(1) & (!\DUT_1s|Q\(3) & !\DUT_1s|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT_1s|Q\(0),
	datab => \DUT_1s|Q\(1),
	datac => \DUT_1s|Q\(3),
	datad => \DUT_1s|Q\(2),
	combout => \DUT_SevenSegment1|LED_out[6]~5_combout\);

-- Location: LCCOMB_X24_Y28_N14
\DUT_SevenSegment1|LED_out[7]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DUT_SevenSegment1|LED_out[7]~6_combout\ = (\DUT_1s|Q\(0) & (!\DUT_1s|Q\(3) & (\DUT_1s|Q\(1) $ (!\DUT_1s|Q\(2))))) # (!\DUT_1s|Q\(0) & (!\DUT_1s|Q\(1) & (\DUT_1s|Q\(3) $ (!\DUT_1s|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT_1s|Q\(0),
	datab => \DUT_1s|Q\(1),
	datac => \DUT_1s|Q\(3),
	datad => \DUT_1s|Q\(2),
	combout => \DUT_SevenSegment1|LED_out[7]~6_combout\);

-- Location: LCCOMB_X23_Y28_N8
\DUT_10s|Q[0]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DUT_10s|Q[0]~4_combout\ = !\DUT_10s|Q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DUT_10s|Q\(0),
	combout => \DUT_10s|Q[0]~4_combout\);

-- Location: LCCOMB_X24_Y28_N18
\DUT_AND_Gate|Z\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DUT_AND_Gate|Z~combout\ = (!\BUTTON1~input_o\ & (\DUT_1s|Q\(2) & (\DUT_1s|Q\(3) & \DUT_AND_Gate|Z~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUTTON1~input_o\,
	datab => \DUT_1s|Q\(2),
	datac => \DUT_1s|Q\(3),
	datad => \DUT_AND_Gate|Z~0_combout\,
	combout => \DUT_AND_Gate|Z~combout\);

-- Location: FF_X23_Y28_N9
\DUT_10s|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DUT_Clk|gen_clk:clk_05Hz_i~clkctrl_outclk\,
	d => \DUT_10s|Q[0]~4_combout\,
	ena => \DUT_AND_Gate|Z~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT_10s|Q\(0));

-- Location: LCCOMB_X23_Y28_N22
\DUT_10s|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DUT_10s|Add0~0_combout\ = \DUT_10s|Q\(0) $ (\DUT_10s|Q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DUT_10s|Q\(0),
	datac => \DUT_10s|Q\(1),
	combout => \DUT_10s|Add0~0_combout\);

-- Location: FF_X23_Y28_N23
\DUT_10s|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DUT_Clk|gen_clk:clk_05Hz_i~clkctrl_outclk\,
	d => \DUT_10s|Add0~0_combout\,
	ena => \DUT_AND_Gate|Z~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT_10s|Q\(1));

-- Location: LCCOMB_X24_Y28_N12
\DUT_10s|Q[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DUT_10s|Q[2]~3_combout\ = \DUT_10s|Q\(2) $ (((\DUT_10s|Q\(0) & (\DUT_10s|Q\(1) & \DUT_AND_Gate|Z~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT_10s|Q\(0),
	datab => \DUT_10s|Q\(1),
	datac => \DUT_10s|Q\(2),
	datad => \DUT_AND_Gate|Z~combout\,
	combout => \DUT_10s|Q[2]~3_combout\);

-- Location: FF_X24_Y28_N13
\DUT_10s|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DUT_Clk|gen_clk:clk_05Hz_i~clkctrl_outclk\,
	d => \DUT_10s|Q[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT_10s|Q\(2));

-- Location: LCCOMB_X24_Y28_N24
\DUT_SevenSegment10|LED_out[2]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DUT_SevenSegment10|LED_out[2]~7_combout\ = (\DUT_10s|Q\(0) & \DUT_10s|Q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT_10s|Q\(0),
	datad => \DUT_10s|Q\(1),
	combout => \DUT_SevenSegment10|LED_out[2]~7_combout\);

-- Location: LCCOMB_X24_Y28_N2
\DUT_10s|Q[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DUT_10s|Q[3]~2_combout\ = \DUT_10s|Q\(3) $ (((\DUT_10s|Q\(2) & (\DUT_AND_Gate|Z~combout\ & \DUT_SevenSegment10|LED_out[2]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT_10s|Q\(2),
	datab => \DUT_AND_Gate|Z~combout\,
	datac => \DUT_10s|Q\(3),
	datad => \DUT_SevenSegment10|LED_out[2]~7_combout\,
	combout => \DUT_10s|Q[3]~2_combout\);

-- Location: FF_X24_Y28_N3
\DUT_10s|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DUT_Clk|gen_clk:clk_05Hz_i~clkctrl_outclk\,
	d => \DUT_10s|Q[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT_10s|Q\(3));

-- Location: LCCOMB_X23_Y28_N6
\DUT_SevenSegment10|LED_out[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DUT_SevenSegment10|LED_out[1]~0_combout\ = (\DUT_10s|Q\(2) & (!\DUT_10s|Q\(1) & (\DUT_10s|Q\(0) $ (!\DUT_10s|Q\(3))))) # (!\DUT_10s|Q\(2) & (\DUT_10s|Q\(0) & (\DUT_10s|Q\(1) $ (!\DUT_10s|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT_10s|Q\(1),
	datab => \DUT_10s|Q\(2),
	datac => \DUT_10s|Q\(0),
	datad => \DUT_10s|Q\(3),
	combout => \DUT_SevenSegment10|LED_out[1]~0_combout\);

-- Location: LCCOMB_X23_Y28_N0
\DUT_SevenSegment10|LED_out[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DUT_SevenSegment10|LED_out[2]~1_combout\ = (\DUT_10s|Q\(1) & ((\DUT_10s|Q\(0) & ((\DUT_10s|Q\(3)))) # (!\DUT_10s|Q\(0) & (\DUT_10s|Q\(2))))) # (!\DUT_10s|Q\(1) & (\DUT_10s|Q\(2) & (\DUT_10s|Q\(0) $ (\DUT_10s|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT_10s|Q\(1),
	datab => \DUT_10s|Q\(2),
	datac => \DUT_10s|Q\(0),
	datad => \DUT_10s|Q\(3),
	combout => \DUT_SevenSegment10|LED_out[2]~1_combout\);

-- Location: LCCOMB_X24_Y28_N0
\DUT_SevenSegment10|LED_out[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DUT_SevenSegment10|LED_out[3]~2_combout\ = (\DUT_10s|Q\(3) & (((\DUT_10s|Q\(0) & !\DUT_10s|Q\(1))) # (!\DUT_10s|Q\(2)))) # (!\DUT_10s|Q\(3) & ((\DUT_10s|Q\(0)) # ((\DUT_10s|Q\(2)) # (!\DUT_10s|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT_10s|Q\(0),
	datab => \DUT_10s|Q\(1),
	datac => \DUT_10s|Q\(3),
	datad => \DUT_10s|Q\(2),
	combout => \DUT_SevenSegment10|LED_out[3]~2_combout\);

-- Location: LCCOMB_X23_Y28_N2
\DUT_SevenSegment10|LED_out[4]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DUT_SevenSegment10|LED_out[4]~3_combout\ = (\DUT_10s|Q\(1) & ((\DUT_10s|Q\(2) & (\DUT_10s|Q\(0))) # (!\DUT_10s|Q\(2) & (!\DUT_10s|Q\(0) & \DUT_10s|Q\(3))))) # (!\DUT_10s|Q\(1) & (!\DUT_10s|Q\(3) & (\DUT_10s|Q\(2) $ (\DUT_10s|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT_10s|Q\(1),
	datab => \DUT_10s|Q\(2),
	datac => \DUT_10s|Q\(0),
	datad => \DUT_10s|Q\(3),
	combout => \DUT_SevenSegment10|LED_out[4]~3_combout\);

-- Location: LCCOMB_X23_Y28_N20
\DUT_SevenSegment10|LED_out[5]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DUT_SevenSegment10|LED_out[5]~4_combout\ = (\DUT_10s|Q\(1) & (((\DUT_10s|Q\(0) & !\DUT_10s|Q\(3))))) # (!\DUT_10s|Q\(1) & ((\DUT_10s|Q\(2) & ((!\DUT_10s|Q\(3)))) # (!\DUT_10s|Q\(2) & (\DUT_10s|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT_10s|Q\(1),
	datab => \DUT_10s|Q\(2),
	datac => \DUT_10s|Q\(0),
	datad => \DUT_10s|Q\(3),
	combout => \DUT_SevenSegment10|LED_out[5]~4_combout\);

-- Location: LCCOMB_X24_Y28_N30
\DUT_SevenSegment10|LED_out[6]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DUT_SevenSegment10|LED_out[6]~5_combout\ = (\DUT_10s|Q\(0) & (\DUT_10s|Q\(3) $ (((\DUT_10s|Q\(1)) # (!\DUT_10s|Q\(2)))))) # (!\DUT_10s|Q\(0) & (\DUT_10s|Q\(1) & (!\DUT_10s|Q\(3) & !\DUT_10s|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT_10s|Q\(0),
	datab => \DUT_10s|Q\(1),
	datac => \DUT_10s|Q\(3),
	datad => \DUT_10s|Q\(2),
	combout => \DUT_SevenSegment10|LED_out[6]~5_combout\);

-- Location: LCCOMB_X24_Y28_N8
\DUT_SevenSegment10|LED_out[7]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DUT_SevenSegment10|LED_out[7]~6_combout\ = (\DUT_10s|Q\(0) & (!\DUT_10s|Q\(3) & (\DUT_10s|Q\(1) $ (!\DUT_10s|Q\(2))))) # (!\DUT_10s|Q\(0) & (!\DUT_10s|Q\(1) & (\DUT_10s|Q\(3) $ (!\DUT_10s|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT_10s|Q\(0),
	datab => \DUT_10s|Q\(1),
	datac => \DUT_10s|Q\(3),
	datad => \DUT_10s|Q\(2),
	combout => \DUT_SevenSegment10|LED_out[7]~6_combout\);

-- Location: IOIBUF_X0_Y23_N1
\BUTTON2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BUTTON2,
	o => \BUTTON2~input_o\);

-- Location: LCCOMB_X23_Y28_N14
\DUT_RingCounter|Q_Out[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DUT_RingCounter|Q_Out[2]~0_combout\ = (\DUT_1s|Q\(0)) # (\BUTTON2~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT_1s|Q\(0),
	datad => \BUTTON2~input_o\,
	combout => \DUT_RingCounter|Q_Out[2]~0_combout\);

-- Location: LCCOMB_X23_Y28_N24
\DUT_RingCounter|Q_Out[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DUT_RingCounter|Q_Out[3]~1_combout\ = (\DUT_1s|Q\(1)) # (\BUTTON2~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT_1s|Q\(1),
	datad => \BUTTON2~input_o\,
	combout => \DUT_RingCounter|Q_Out[3]~1_combout\);

-- Location: LCCOMB_X23_Y28_N10
\DUT_RingCounter|Q_Out[4]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DUT_RingCounter|Q_Out[4]~2_combout\ = (\DUT_1s|Q\(2)) # (\BUTTON2~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DUT_1s|Q\(2),
	datad => \BUTTON2~input_o\,
	combout => \DUT_RingCounter|Q_Out[4]~2_combout\);

-- Location: LCCOMB_X12_Y28_N28
\DUT_RingCounter|Q_Out[5]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DUT_RingCounter|Q_Out[5]~3_combout\ = (\DUT_1s|Q\(3)) # (\BUTTON2~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DUT_1s|Q\(3),
	datad => \BUTTON2~input_o\,
	combout => \DUT_RingCounter|Q_Out[5]~3_combout\);

-- Location: LCCOMB_X23_Y28_N12
\DUT_RingCounter|Q_Out[6]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DUT_RingCounter|Q_Out[6]~4_combout\ = (\BUTTON2~input_o\) # (\DUT_10s|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BUTTON2~input_o\,
	datac => \DUT_10s|Q\(0),
	combout => \DUT_RingCounter|Q_Out[6]~4_combout\);

-- Location: LCCOMB_X23_Y28_N18
\DUT_RingCounter|Q_Out[7]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DUT_RingCounter|Q_Out[7]~5_combout\ = (\BUTTON2~input_o\) # (\DUT_10s|Q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BUTTON2~input_o\,
	datac => \DUT_10s|Q\(1),
	combout => \DUT_RingCounter|Q_Out[7]~5_combout\);

-- Location: LCCOMB_X23_Y28_N16
\DUT_RingCounter|Q_Out[8]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DUT_RingCounter|Q_Out[8]~6_combout\ = (\BUTTON2~input_o\) # (\DUT_10s|Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BUTTON2~input_o\,
	datac => \DUT_10s|Q\(2),
	combout => \DUT_RingCounter|Q_Out[8]~6_combout\);

-- Location: LCCOMB_X23_Y28_N30
\DUT_RingCounter|Q_Out[9]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DUT_RingCounter|Q_Out[9]~7_combout\ = (\BUTTON2~input_o\) # (\DUT_10s|Q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BUTTON2~input_o\,
	datad => \DUT_10s|Q\(3),
	combout => \DUT_RingCounter|Q_Out[9]~7_combout\);

ww_LED_1(0) <= \LED_1[0]~output_o\;

ww_LED_1(1) <= \LED_1[1]~output_o\;

ww_LED_1(2) <= \LED_1[2]~output_o\;

ww_LED_1(3) <= \LED_1[3]~output_o\;

ww_LED_1(4) <= \LED_1[4]~output_o\;

ww_LED_1(5) <= \LED_1[5]~output_o\;

ww_LED_1(6) <= \LED_1[6]~output_o\;

ww_LED_1(7) <= \LED_1[7]~output_o\;

ww_LED_10(0) <= \LED_10[0]~output_o\;

ww_LED_10(1) <= \LED_10[1]~output_o\;

ww_LED_10(2) <= \LED_10[2]~output_o\;

ww_LED_10(3) <= \LED_10[3]~output_o\;

ww_LED_10(4) <= \LED_10[4]~output_o\;

ww_LED_10(5) <= \LED_10[5]~output_o\;

ww_LED_10(6) <= \LED_10[6]~output_o\;

ww_LED_10(7) <= \LED_10[7]~output_o\;

ww_RC_OUT(0) <= \RC_OUT[0]~output_o\;

ww_RC_OUT(1) <= \RC_OUT[1]~output_o\;

ww_RC_OUT(2) <= \RC_OUT[2]~output_o\;

ww_RC_OUT(3) <= \RC_OUT[3]~output_o\;

ww_RC_OUT(4) <= \RC_OUT[4]~output_o\;

ww_RC_OUT(5) <= \RC_OUT[5]~output_o\;

ww_RC_OUT(6) <= \RC_OUT[6]~output_o\;

ww_RC_OUT(7) <= \RC_OUT[7]~output_o\;

ww_RC_OUT(8) <= \RC_OUT[8]~output_o\;

ww_RC_OUT(9) <= \RC_OUT[9]~output_o\;
END structure;


