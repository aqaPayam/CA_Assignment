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
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "05/18/2023 20:44:55"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	FinalCircuit IS
    PORT (
	ready : OUT std_logic;
	clk : IN std_logic;
	S : IN std_logic;
	in1 : IN std_logic_vector(7 DOWNTO 0);
	in2 : IN std_logic_vector(7 DOWNTO 0);
	output : OUT std_logic_vector(7 DOWNTO 0)
	);
END FinalCircuit;

-- Design Ports Information
-- ready	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[7]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[6]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[5]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[4]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[3]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[2]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[1]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[0]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in2[0]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in2[1]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in2[2]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in2[3]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[0]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[1]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[2]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[3]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[4]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[5]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[6]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in2[4]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in2[5]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in2[6]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in2[7]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[7]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF FinalCircuit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_ready : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_S : std_logic;
SIGNAL ww_in1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_in2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_output : std_logic_vector(7 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ready~output_o\ : std_logic;
SIGNAL \output[7]~output_o\ : std_logic;
SIGNAL \output[6]~output_o\ : std_logic;
SIGNAL \output[5]~output_o\ : std_logic;
SIGNAL \output[4]~output_o\ : std_logic;
SIGNAL \output[3]~output_o\ : std_logic;
SIGNAL \output[2]~output_o\ : std_logic;
SIGNAL \output[1]~output_o\ : std_logic;
SIGNAL \output[0]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \S~input_o\ : std_logic;
SIGNAL \inst|inst30~combout\ : std_logic;
SIGNAL \inst|DFF2~0_combout\ : std_logic;
SIGNAL \inst|DFF2~q\ : std_logic;
SIGNAL \in1[6]~input_o\ : std_logic;
SIGNAL \inst1|R1|inst24~feeder_combout\ : std_logic;
SIGNAL \inst1|R1|inst24~q\ : std_logic;
SIGNAL \in1[4]~input_o\ : std_logic;
SIGNAL \inst1|R1|inst22~q\ : std_logic;
SIGNAL \in1[5]~input_o\ : std_logic;
SIGNAL \inst1|R1|inst23~feeder_combout\ : std_logic;
SIGNAL \inst1|R1|inst23~q\ : std_logic;
SIGNAL \inst1|R1|or8~1_combout\ : std_logic;
SIGNAL \in2[6]~input_o\ : std_logic;
SIGNAL \inst1|R2|inst24~feeder_combout\ : std_logic;
SIGNAL \inst1|R2|inst24~q\ : std_logic;
SIGNAL \in2[4]~input_o\ : std_logic;
SIGNAL \inst1|R2|inst22~q\ : std_logic;
SIGNAL \in2[5]~input_o\ : std_logic;
SIGNAL \inst1|R2|inst23~feeder_combout\ : std_logic;
SIGNAL \inst1|R2|inst23~q\ : std_logic;
SIGNAL \inst1|R2|or8~1_combout\ : std_logic;
SIGNAL \in1[1]~input_o\ : std_logic;
SIGNAL \inst1|R1|inst19~q\ : std_logic;
SIGNAL \in1[0]~input_o\ : std_logic;
SIGNAL \inst1|R1|inst18~q\ : std_logic;
SIGNAL \in1[3]~input_o\ : std_logic;
SIGNAL \inst1|R1|inst21~q\ : std_logic;
SIGNAL \in1[2]~input_o\ : std_logic;
SIGNAL \inst1|R1|inst20~q\ : std_logic;
SIGNAL \inst1|R1|or8~0_combout\ : std_logic;
SIGNAL \in2[1]~input_o\ : std_logic;
SIGNAL \inst1|R2|inst19~q\ : std_logic;
SIGNAL \in2[0]~input_o\ : std_logic;
SIGNAL \inst1|R2|inst18~q\ : std_logic;
SIGNAL \in2[3]~input_o\ : std_logic;
SIGNAL \inst1|R2|inst21~q\ : std_logic;
SIGNAL \in2[2]~input_o\ : std_logic;
SIGNAL \inst1|R2|inst20~q\ : std_logic;
SIGNAL \inst1|R2|or8~0_combout\ : std_logic;
SIGNAL \inst1|inst1~combout\ : std_logic;
SIGNAL \inst1|inst4|inst4~combout\ : std_logic;
SIGNAL \inst1|inst6|inst|6~0_combout\ : std_logic;
SIGNAL \inst|inst26~combout\ : std_logic;
SIGNAL \inst1|inst6|inst26~q\ : std_logic;
SIGNAL \inst|inst23~combout\ : std_logic;
SIGNAL \inst1|inst4|inst8~combout\ : std_logic;
SIGNAL \inst1|inst6|inst2|5~0_combout\ : std_logic;
SIGNAL \inst1|inst6|inst27~q\ : std_logic;
SIGNAL \inst1|inst4|inst11~combout\ : std_logic;
SIGNAL \inst1|inst4|inst26|inst2|inst5~4_combout\ : std_logic;
SIGNAL \inst1|inst4|inst26|inst2|inst5~5_combout\ : std_logic;
SIGNAL \inst1|inst6|inst3|5~0_combout\ : std_logic;
SIGNAL \inst1|inst6|inst28~q\ : std_logic;
SIGNAL \inst1|inst4|inst12~combout\ : std_logic;
SIGNAL \inst1|inst4|inst26|inst2|inst7~0_combout\ : std_logic;
SIGNAL \inst1|inst4|inst26|inst2|inst7~1_combout\ : std_logic;
SIGNAL \inst1|inst4|inst26|inst3|inst5~0_combout\ : std_logic;
SIGNAL \inst1|inst4|inst31|inst2|inst5~combout\ : std_logic;
SIGNAL \inst1|inst6|inst4|5~0_combout\ : std_logic;
SIGNAL \inst1|inst6|inst29~q\ : std_logic;
SIGNAL \inst1|inst4|inst13~combout\ : std_logic;
SIGNAL \inst1|inst4|inst26|inst3|inst7~0_combout\ : std_logic;
SIGNAL \inst1|inst4|inst31|inst2|inst7~0_combout\ : std_logic;
SIGNAL \inst1|inst4|inst31|inst3|inst5~combout\ : std_logic;
SIGNAL \inst1|inst4|inst36|inst2|inst5~combout\ : std_logic;
SIGNAL \inst1|inst6|inst5|5~2_combout\ : std_logic;
SIGNAL \inst1|inst6|inst30~q\ : std_logic;
SIGNAL \inst1|inst4|inst31|inst4|inst4~combout\ : std_logic;
SIGNAL \inst1|inst4|inst31|inst3|inst7~0_combout\ : std_logic;
SIGNAL \inst1|inst4|inst36|inst2|inst7~0_combout\ : std_logic;
SIGNAL \inst1|inst4|inst36|inst3|inst5~combout\ : std_logic;
SIGNAL \inst1|inst6|inst6|5~2_combout\ : std_logic;
SIGNAL \inst1|inst6|inst31~q\ : std_logic;
SIGNAL \inst1|inst4|inst31|inst4|inst7~0_combout\ : std_logic;
SIGNAL \inst1|inst4|inst36|inst3|inst7~0_combout\ : std_logic;
SIGNAL \inst1|inst6|inst7|5~0_combout\ : std_logic;
SIGNAL \inst1|inst6|inst32~q\ : std_logic;
SIGNAL \inst1|inst6|inst8|5~0_combout\ : std_logic;
SIGNAL \inst1|inst6|inst33~q\ : std_logic;
SIGNAL \inst|inst13~combout\ : std_logic;
SIGNAL \inst|DFF3~q\ : std_logic;
SIGNAL \inst|inst10~0_combout\ : std_logic;
SIGNAL \inst|inst10~combout\ : std_logic;
SIGNAL \inst|DFF1~q\ : std_logic;
SIGNAL \inst1|inst12~0_combout\ : std_logic;
SIGNAL \inst1|inst12~q\ : std_logic;
SIGNAL \in2[7]~input_o\ : std_logic;
SIGNAL \inst1|R2|inst25~feeder_combout\ : std_logic;
SIGNAL \inst1|R2|inst25~q\ : std_logic;
SIGNAL \in1[7]~input_o\ : std_logic;
SIGNAL \inst1|R1|inst25~q\ : std_logic;
SIGNAL \inst1|inst~combout\ : std_logic;
SIGNAL \inst|inst29~combout\ : std_logic;
SIGNAL \inst1|inst2|inst29~q\ : std_logic;
SIGNAL \inst1|inst5|inst7|inst|5~0_combout\ : std_logic;
SIGNAL \inst1|inst5|inst|inst18~q\ : std_logic;
SIGNAL \inst1|inst5|inst1|inst20~combout\ : std_logic;
SIGNAL \inst1|inst5|inst|inst21~2_combout\ : std_logic;
SIGNAL \inst1|inst5|inst|inst19~q\ : std_logic;
SIGNAL \inst1|inst5|inst1|inst21~combout\ : std_logic;
SIGNAL \inst1|inst5|inst|inst20~q\ : std_logic;
SIGNAL \inst1|inst5|inst1|inst22~combout\ : std_logic;
SIGNAL \inst1|inst5|inst|inst21~q\ : std_logic;
SIGNAL \inst1|inst2|inst28~q\ : std_logic;
SIGNAL \inst1|inst2|inst27~q\ : std_logic;
SIGNAL \inst1|inst2|inst26~feeder_combout\ : std_logic;
SIGNAL \inst1|inst2|inst26~q\ : std_logic;
SIGNAL \inst1|inst2|inst30~feeder_combout\ : std_logic;
SIGNAL \inst1|inst2|inst30~q\ : std_logic;
SIGNAL \inst1|inst2|inst31~feeder_combout\ : std_logic;
SIGNAL \inst1|inst2|inst31~q\ : std_logic;
SIGNAL \inst1|inst2|inst32~feeder_combout\ : std_logic;
SIGNAL \inst1|inst2|inst32~q\ : std_logic;
SIGNAL \inst1|inst2|inst18~q\ : std_logic;
SIGNAL \inst|ALT_INV_inst30~combout\ : std_logic;

BEGIN

ready <= ww_ready;
ww_clk <= clk;
ww_S <= S;
ww_in1 <= in1;
ww_in2 <= in2;
output <= ww_output;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\inst|ALT_INV_inst30~combout\ <= NOT \inst|inst30~combout\;

-- Location: IOOBUF_X31_Y31_N9
\ready~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst12~q\,
	devoe => ww_devoe,
	o => \ready~output_o\);

-- Location: IOOBUF_X33_Y28_N2
\output[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst2|inst29~q\,
	devoe => ww_devoe,
	o => \output[7]~output_o\);

-- Location: IOOBUF_X14_Y31_N2
\output[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst2|inst28~q\,
	devoe => ww_devoe,
	o => \output[6]~output_o\);

-- Location: IOOBUF_X33_Y28_N9
\output[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst2|inst27~q\,
	devoe => ww_devoe,
	o => \output[5]~output_o\);

-- Location: IOOBUF_X33_Y25_N9
\output[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst2|inst26~q\,
	devoe => ww_devoe,
	o => \output[4]~output_o\);

-- Location: IOOBUF_X33_Y27_N2
\output[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst2|inst30~q\,
	devoe => ww_devoe,
	o => \output[3]~output_o\);

-- Location: IOOBUF_X12_Y0_N9
\output[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst2|inst31~q\,
	devoe => ww_devoe,
	o => \output[2]~output_o\);

-- Location: IOOBUF_X33_Y27_N9
\output[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst2|inst32~q\,
	devoe => ww_devoe,
	o => \output[1]~output_o\);

-- Location: IOOBUF_X20_Y31_N9
\output[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst2|inst18~q\,
	devoe => ww_devoe,
	o => \output[0]~output_o\);

-- Location: IOIBUF_X16_Y0_N15
\clk~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G17
\clk~inputclkctrl\ : cycloneiv_clkctrl
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

-- Location: IOIBUF_X29_Y31_N8
\S~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S,
	o => \S~input_o\);

-- Location: LCCOMB_X14_Y27_N24
\inst|inst30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst30~combout\ = (!\inst|DFF1~q\) # (!\S~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~input_o\,
	datad => \inst|DFF1~q\,
	combout => \inst|inst30~combout\);

-- Location: LCCOMB_X14_Y27_N10
\inst|DFF2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|DFF2~0_combout\ = !\inst|inst30~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst30~combout\,
	combout => \inst|DFF2~0_combout\);

-- Location: FF_X14_Y27_N11
\inst|DFF2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|DFF2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DFF2~q\);

-- Location: IOIBUF_X16_Y31_N1
\in1[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(6),
	o => \in1[6]~input_o\);

-- Location: LCCOMB_X15_Y27_N24
\inst1|R1|inst24~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|R1|inst24~feeder_combout\ = \in1[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in1[6]~input_o\,
	combout => \inst1|R1|inst24~feeder_combout\);

-- Location: FF_X15_Y27_N25
\inst1|R1|inst24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|R1|inst24~feeder_combout\,
	ena => \inst|ALT_INV_inst30~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|R1|inst24~q\);

-- Location: IOIBUF_X26_Y31_N8
\in1[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(4),
	o => \in1[4]~input_o\);

-- Location: FF_X15_Y27_N21
\inst1|R1|inst22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in1[4]~input_o\,
	sload => VCC,
	ena => \inst|ALT_INV_inst30~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|R1|inst22~q\);

-- Location: IOIBUF_X26_Y31_N1
\in1[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(5),
	o => \in1[5]~input_o\);

-- Location: LCCOMB_X15_Y27_N10
\inst1|R1|inst23~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|R1|inst23~feeder_combout\ = \in1[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in1[5]~input_o\,
	combout => \inst1|R1|inst23~feeder_combout\);

-- Location: FF_X15_Y27_N11
\inst1|R1|inst23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|R1|inst23~feeder_combout\,
	ena => \inst|ALT_INV_inst30~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|R1|inst23~q\);

-- Location: LCCOMB_X15_Y27_N20
\inst1|R1|or8~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|R1|or8~1_combout\ = (!\inst1|R1|inst24~q\ & (!\inst1|R1|inst22~q\ & !\inst1|R1|inst23~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|R1|inst24~q\,
	datac => \inst1|R1|inst22~q\,
	datad => \inst1|R1|inst23~q\,
	combout => \inst1|R1|or8~1_combout\);

-- Location: IOIBUF_X22_Y31_N1
\in2[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in2(6),
	o => \in2[6]~input_o\);

-- Location: LCCOMB_X15_Y27_N2
\inst1|R2|inst24~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|R2|inst24~feeder_combout\ = \in2[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in2[6]~input_o\,
	combout => \inst1|R2|inst24~feeder_combout\);

-- Location: FF_X15_Y27_N3
\inst1|R2|inst24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|R2|inst24~feeder_combout\,
	ena => \inst|ALT_INV_inst30~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|R2|inst24~q\);

-- Location: IOIBUF_X16_Y31_N8
\in2[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in2(4),
	o => \in2[4]~input_o\);

-- Location: FF_X15_Y27_N23
\inst1|R2|inst22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in2[4]~input_o\,
	sload => VCC,
	ena => \inst|ALT_INV_inst30~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|R2|inst22~q\);

-- Location: IOIBUF_X29_Y31_N1
\in2[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in2(5),
	o => \in2[5]~input_o\);

-- Location: LCCOMB_X15_Y27_N28
\inst1|R2|inst23~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|R2|inst23~feeder_combout\ = \in2[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in2[5]~input_o\,
	combout => \inst1|R2|inst23~feeder_combout\);

-- Location: FF_X15_Y27_N29
\inst1|R2|inst23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|R2|inst23~feeder_combout\,
	ena => \inst|ALT_INV_inst30~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|R2|inst23~q\);

-- Location: LCCOMB_X15_Y27_N22
\inst1|R2|or8~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|R2|or8~1_combout\ = (!\inst1|R2|inst24~q\ & (!\inst1|R2|inst22~q\ & !\inst1|R2|inst23~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|R2|inst24~q\,
	datac => \inst1|R2|inst22~q\,
	datad => \inst1|R2|inst23~q\,
	combout => \inst1|R2|or8~1_combout\);

-- Location: IOIBUF_X12_Y0_N1
\in1[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(1),
	o => \in1[1]~input_o\);

-- Location: FF_X13_Y27_N19
\inst1|R1|inst19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in1[1]~input_o\,
	sload => VCC,
	ena => \inst|ALT_INV_inst30~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|R1|inst19~q\);

-- Location: IOIBUF_X24_Y31_N8
\in1[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(0),
	o => \in1[0]~input_o\);

-- Location: FF_X13_Y27_N9
\inst1|R1|inst18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in1[0]~input_o\,
	sload => VCC,
	ena => \inst|ALT_INV_inst30~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|R1|inst18~q\);

-- Location: IOIBUF_X14_Y31_N8
\in1[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(3),
	o => \in1[3]~input_o\);

-- Location: FF_X13_Y27_N7
\inst1|R1|inst21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in1[3]~input_o\,
	sload => VCC,
	ena => \inst|ALT_INV_inst30~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|R1|inst21~q\);

-- Location: IOIBUF_X20_Y31_N1
\in1[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(2),
	o => \in1[2]~input_o\);

-- Location: FF_X13_Y27_N29
\inst1|R1|inst20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in1[2]~input_o\,
	sload => VCC,
	ena => \inst|ALT_INV_inst30~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|R1|inst20~q\);

-- Location: LCCOMB_X13_Y27_N6
\inst1|R1|or8~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|R1|or8~0_combout\ = (!\inst1|R1|inst19~q\ & (!\inst1|R1|inst18~q\ & (!\inst1|R1|inst21~q\ & !\inst1|R1|inst20~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|R1|inst19~q\,
	datab => \inst1|R1|inst18~q\,
	datac => \inst1|R1|inst21~q\,
	datad => \inst1|R1|inst20~q\,
	combout => \inst1|R1|or8~0_combout\);

-- Location: IOIBUF_X10_Y31_N1
\in2[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in2(1),
	o => \in2[1]~input_o\);

-- Location: FF_X13_Y27_N11
\inst1|R2|inst19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in2[1]~input_o\,
	sload => VCC,
	ena => \inst|ALT_INV_inst30~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|R2|inst19~q\);

-- Location: IOIBUF_X24_Y31_N1
\in2[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in2(0),
	o => \in2[0]~input_o\);

-- Location: FF_X13_Y27_N21
\inst1|R2|inst18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in2[0]~input_o\,
	sload => VCC,
	ena => \inst|ALT_INV_inst30~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|R2|inst18~q\);

-- Location: IOIBUF_X12_Y31_N1
\in2[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in2(3),
	o => \in2[3]~input_o\);

-- Location: FF_X13_Y27_N15
\inst1|R2|inst21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in2[3]~input_o\,
	sload => VCC,
	ena => \inst|ALT_INV_inst30~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|R2|inst21~q\);

-- Location: IOIBUF_X12_Y31_N8
\in2[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in2(2),
	o => \in2[2]~input_o\);

-- Location: FF_X13_Y27_N17
\inst1|R2|inst20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in2[2]~input_o\,
	sload => VCC,
	ena => \inst|ALT_INV_inst30~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|R2|inst20~q\);

-- Location: LCCOMB_X13_Y27_N14
\inst1|R2|or8~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|R2|or8~0_combout\ = (!\inst1|R2|inst19~q\ & (!\inst1|R2|inst18~q\ & (!\inst1|R2|inst21~q\ & !\inst1|R2|inst20~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|R2|inst19~q\,
	datab => \inst1|R2|inst18~q\,
	datac => \inst1|R2|inst21~q\,
	datad => \inst1|R2|inst20~q\,
	combout => \inst1|R2|or8~0_combout\);

-- Location: LCCOMB_X14_Y27_N4
\inst1|inst1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|inst1~combout\ = (\inst1|R1|or8~1_combout\ & ((\inst1|R1|or8~0_combout\) # ((\inst1|R2|or8~1_combout\ & \inst1|R2|or8~0_combout\)))) # (!\inst1|R1|or8~1_combout\ & (\inst1|R2|or8~1_combout\ & ((\inst1|R2|or8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|R1|or8~1_combout\,
	datab => \inst1|R2|or8~1_combout\,
	datac => \inst1|R1|or8~0_combout\,
	datad => \inst1|R2|or8~0_combout\,
	combout => \inst1|inst1~combout\);

-- Location: LCCOMB_X13_Y27_N8
\inst1|inst4|inst4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|inst4|inst4~combout\ = (\inst1|R1|inst18~q\ & \inst1|R2|inst19~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|R1|inst18~q\,
	datad => \inst1|R2|inst19~q\,
	combout => \inst1|inst4|inst4~combout\);

-- Location: LCCOMB_X13_Y27_N4
\inst1|inst6|inst|6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|inst6|inst|6~0_combout\ = (\inst1|R2|inst18~q\ & (\inst1|R1|inst18~q\ & ((\inst1|inst6|inst33~q\) # (!\inst|DFF3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|R2|inst18~q\,
	datab => \inst1|R1|inst18~q\,
	datac => \inst1|inst6|inst33~q\,
	datad => \inst|DFF3~q\,
	combout => \inst1|inst6|inst|6~0_combout\);

-- Location: LCCOMB_X13_Y27_N16
\inst|inst26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst26~combout\ = (\inst|DFF2~q\ & !\inst1|inst1~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|DFF2~q\,
	datad => \inst1|inst1~combout\,
	combout => \inst|inst26~combout\);

-- Location: FF_X13_Y27_N5
\inst1|inst6|inst26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|inst6|inst|6~0_combout\,
	ena => \inst|inst26~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst6|inst26~q\);

-- Location: LCCOMB_X14_Y27_N8
\inst|inst23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst23~combout\ = (\inst|DFF3~q\ & !\inst1|inst6|inst33~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DFF3~q\,
	datad => \inst1|inst6|inst33~q\,
	combout => \inst|inst23~combout\);

-- Location: LCCOMB_X13_Y27_N24
\inst1|inst4|inst8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|inst4|inst8~combout\ = (\inst1|R2|inst18~q\ & \inst1|R1|inst19~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|R2|inst18~q\,
	datad => \inst1|R1|inst19~q\,
	combout => \inst1|inst4|inst8~combout\);

-- Location: LCCOMB_X13_Y27_N22
\inst1|inst6|inst2|5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|inst6|inst2|5~0_combout\ = (\inst|inst23~combout\ & (((\inst1|inst6|inst26~q\)))) # (!\inst|inst23~combout\ & (\inst1|inst4|inst4~combout\ $ (((\inst1|inst4|inst8~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst4|inst4~combout\,
	datab => \inst1|inst6|inst26~q\,
	datac => \inst|inst23~combout\,
	datad => \inst1|inst4|inst8~combout\,
	combout => \inst1|inst6|inst2|5~0_combout\);

-- Location: FF_X13_Y27_N23
\inst1|inst6|inst27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|inst6|inst2|5~0_combout\,
	ena => \inst|inst26~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst6|inst27~q\);

-- Location: LCCOMB_X13_Y27_N10
\inst1|inst4|inst11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|inst4|inst11~combout\ = (\inst1|R2|inst18~q\ & \inst1|R1|inst20~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|R2|inst18~q\,
	datad => \inst1|R1|inst20~q\,
	combout => \inst1|inst4|inst11~combout\);

-- Location: LCCOMB_X13_Y27_N26
\inst1|inst4|inst26|inst2|inst5~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|inst4|inst26|inst2|inst5~4_combout\ = (\inst1|R2|inst19~q\ & (\inst1|R1|inst19~q\ $ (((\inst1|R2|inst20~q\ & \inst1|R1|inst18~q\))))) # (!\inst1|R2|inst19~q\ & (\inst1|R2|inst20~q\ & (\inst1|R1|inst18~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|R2|inst19~q\,
	datab => \inst1|R2|inst20~q\,
	datac => \inst1|R1|inst18~q\,
	datad => \inst1|R1|inst19~q\,
	combout => \inst1|inst4|inst26|inst2|inst5~4_combout\);

-- Location: LCCOMB_X13_Y27_N30
\inst1|inst4|inst26|inst2|inst5~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|inst4|inst26|inst2|inst5~5_combout\ = \inst1|inst4|inst26|inst2|inst5~4_combout\ $ (((\inst1|R2|inst19~q\ & (\inst1|R1|inst18~q\ & \inst1|inst4|inst8~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|R2|inst19~q\,
	datab => \inst1|R1|inst18~q\,
	datac => \inst1|inst4|inst26|inst2|inst5~4_combout\,
	datad => \inst1|inst4|inst8~combout\,
	combout => \inst1|inst4|inst26|inst2|inst5~5_combout\);

-- Location: LCCOMB_X13_Y27_N0
\inst1|inst6|inst3|5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|inst6|inst3|5~0_combout\ = (\inst|inst23~combout\ & (\inst1|inst6|inst27~q\)) # (!\inst|inst23~combout\ & ((\inst1|inst4|inst11~combout\ $ (\inst1|inst4|inst26|inst2|inst5~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst6|inst27~q\,
	datab => \inst|inst23~combout\,
	datac => \inst1|inst4|inst11~combout\,
	datad => \inst1|inst4|inst26|inst2|inst5~5_combout\,
	combout => \inst1|inst6|inst3|5~0_combout\);

-- Location: FF_X13_Y27_N1
\inst1|inst6|inst28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|inst6|inst3|5~0_combout\,
	ena => \inst|inst26~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst6|inst28~q\);

-- Location: LCCOMB_X13_Y27_N20
\inst1|inst4|inst12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|inst4|inst12~combout\ = (\inst1|R2|inst19~q\ & \inst1|R1|inst20~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|R2|inst19~q\,
	datad => \inst1|R1|inst20~q\,
	combout => \inst1|inst4|inst12~combout\);

-- Location: LCCOMB_X13_Y27_N28
\inst1|inst4|inst26|inst2|inst7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|inst4|inst26|inst2|inst7~0_combout\ = (\inst1|R2|inst18~q\) # (\inst1|R2|inst20~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|R2|inst18~q\,
	datad => \inst1|R2|inst20~q\,
	combout => \inst1|inst4|inst26|inst2|inst7~0_combout\);

-- Location: LCCOMB_X13_Y27_N2
\inst1|inst4|inst26|inst2|inst7~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|inst4|inst26|inst2|inst7~1_combout\ = (\inst1|R2|inst19~q\ & (\inst1|R1|inst19~q\ & (\inst1|R1|inst18~q\ & \inst1|inst4|inst26|inst2|inst7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|R2|inst19~q\,
	datab => \inst1|R1|inst19~q\,
	datac => \inst1|R1|inst18~q\,
	datad => \inst1|inst4|inst26|inst2|inst7~0_combout\,
	combout => \inst1|inst4|inst26|inst2|inst7~1_combout\);

-- Location: LCCOMB_X13_Y27_N18
\inst1|inst4|inst26|inst3|inst5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|inst4|inst26|inst3|inst5~0_combout\ = \inst1|R1|inst18~q\ $ (\inst1|inst4|inst26|inst2|inst7~1_combout\ $ (((\inst1|R2|inst20~q\ & \inst1|R1|inst19~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|R1|inst18~q\,
	datab => \inst1|R2|inst20~q\,
	datac => \inst1|R1|inst19~q\,
	datad => \inst1|inst4|inst26|inst2|inst7~1_combout\,
	combout => \inst1|inst4|inst26|inst3|inst5~0_combout\);

-- Location: LCCOMB_X12_Y27_N28
\inst1|inst4|inst31|inst2|inst5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|inst4|inst31|inst2|inst5~combout\ = \inst1|inst4|inst12~combout\ $ (\inst1|inst4|inst26|inst3|inst5~0_combout\ $ (((\inst1|inst4|inst11~combout\ & \inst1|inst4|inst26|inst2|inst5~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst4|inst12~combout\,
	datab => \inst1|inst4|inst11~combout\,
	datac => \inst1|inst4|inst26|inst2|inst5~5_combout\,
	datad => \inst1|inst4|inst26|inst3|inst5~0_combout\,
	combout => \inst1|inst4|inst31|inst2|inst5~combout\);

-- Location: LCCOMB_X12_Y27_N12
\inst1|inst6|inst4|5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|inst6|inst4|5~0_combout\ = (\inst|inst23~combout\ & (((\inst1|inst6|inst28~q\)))) # (!\inst|inst23~combout\ & (\inst1|R2|inst18~q\ $ (((\inst1|inst4|inst31|inst2|inst5~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|R2|inst18~q\,
	datab => \inst1|inst6|inst28~q\,
	datac => \inst|inst23~combout\,
	datad => \inst1|inst4|inst31|inst2|inst5~combout\,
	combout => \inst1|inst6|inst4|5~0_combout\);

-- Location: FF_X12_Y27_N13
\inst1|inst6|inst29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|inst6|inst4|5~0_combout\,
	ena => \inst|inst26~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst6|inst29~q\);

-- Location: LCCOMB_X12_Y27_N24
\inst1|inst4|inst13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|inst4|inst13~combout\ = (\inst1|R1|inst20~q\ & \inst1|R2|inst20~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|R1|inst20~q\,
	datac => \inst1|R2|inst20~q\,
	combout => \inst1|inst4|inst13~combout\);

-- Location: LCCOMB_X13_Y27_N12
\inst1|inst4|inst26|inst3|inst7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|inst4|inst26|inst3|inst7~0_combout\ = (\inst1|R1|inst18~q\ & ((\inst1|inst4|inst26|inst2|inst7~1_combout\) # ((\inst1|R1|inst19~q\ & \inst1|R2|inst20~q\)))) # (!\inst1|R1|inst18~q\ & (\inst1|R1|inst19~q\ & (\inst1|R2|inst20~q\ & 
-- \inst1|inst4|inst26|inst2|inst7~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|R1|inst19~q\,
	datab => \inst1|R2|inst20~q\,
	datac => \inst1|R1|inst18~q\,
	datad => \inst1|inst4|inst26|inst2|inst7~1_combout\,
	combout => \inst1|inst4|inst26|inst3|inst7~0_combout\);

-- Location: LCCOMB_X12_Y27_N6
\inst1|inst4|inst31|inst2|inst7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|inst4|inst31|inst2|inst7~0_combout\ = (\inst1|inst4|inst12~combout\ & ((\inst1|inst4|inst26|inst3|inst5~0_combout\) # ((\inst1|inst4|inst11~combout\ & \inst1|inst4|inst26|inst2|inst5~5_combout\)))) # (!\inst1|inst4|inst12~combout\ & 
-- (\inst1|inst4|inst11~combout\ & (\inst1|inst4|inst26|inst2|inst5~5_combout\ & \inst1|inst4|inst26|inst3|inst5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst4|inst12~combout\,
	datab => \inst1|inst4|inst11~combout\,
	datac => \inst1|inst4|inst26|inst2|inst5~5_combout\,
	datad => \inst1|inst4|inst26|inst3|inst5~0_combout\,
	combout => \inst1|inst4|inst31|inst2|inst7~0_combout\);

-- Location: LCCOMB_X12_Y27_N2
\inst1|inst4|inst31|inst3|inst5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|inst4|inst31|inst3|inst5~combout\ = \inst1|R1|inst19~q\ $ (\inst1|inst4|inst13~combout\ $ (\inst1|inst4|inst26|inst3|inst7~0_combout\ $ (\inst1|inst4|inst31|inst2|inst7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|R1|inst19~q\,
	datab => \inst1|inst4|inst13~combout\,
	datac => \inst1|inst4|inst26|inst3|inst7~0_combout\,
	datad => \inst1|inst4|inst31|inst2|inst7~0_combout\,
	combout => \inst1|inst4|inst31|inst3|inst5~combout\);

-- Location: LCCOMB_X12_Y27_N30
\inst1|inst4|inst36|inst2|inst5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|inst4|inst36|inst2|inst5~combout\ = \inst1|R2|inst19~q\ $ (\inst1|inst4|inst31|inst3|inst5~combout\ $ (((\inst1|inst4|inst31|inst2|inst5~combout\ & \inst1|R2|inst18~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|R2|inst19~q\,
	datab => \inst1|inst4|inst31|inst2|inst5~combout\,
	datac => \inst1|R2|inst18~q\,
	datad => \inst1|inst4|inst31|inst3|inst5~combout\,
	combout => \inst1|inst4|inst36|inst2|inst5~combout\);

-- Location: LCCOMB_X12_Y27_N22
\inst1|inst6|inst5|5~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|inst6|inst5|5~2_combout\ = (\inst1|inst6|inst33~q\ & (((\inst1|inst4|inst36|inst2|inst5~combout\)))) # (!\inst1|inst6|inst33~q\ & ((\inst|DFF3~q\ & (\inst1|inst6|inst29~q\)) # (!\inst|DFF3~q\ & ((\inst1|inst4|inst36|inst2|inst5~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst6|inst29~q\,
	datab => \inst1|inst6|inst33~q\,
	datac => \inst1|inst4|inst36|inst2|inst5~combout\,
	datad => \inst|DFF3~q\,
	combout => \inst1|inst6|inst5|5~2_combout\);

-- Location: FF_X12_Y27_N23
\inst1|inst6|inst30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|inst6|inst5|5~2_combout\,
	ena => \inst|inst26~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst6|inst30~q\);

-- Location: LCCOMB_X12_Y27_N14
\inst1|inst4|inst31|inst4|inst4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|inst4|inst31|inst4|inst4~combout\ = \inst1|R1|inst20~q\ $ (((\inst1|R1|inst19~q\ & \inst1|inst4|inst26|inst3|inst7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|R1|inst19~q\,
	datac => \inst1|inst4|inst26|inst3|inst7~0_combout\,
	datad => \inst1|R1|inst20~q\,
	combout => \inst1|inst4|inst31|inst4|inst4~combout\);

-- Location: LCCOMB_X12_Y27_N8
\inst1|inst4|inst31|inst3|inst7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|inst4|inst31|inst3|inst7~0_combout\ = (\inst1|inst4|inst13~combout\ & ((\inst1|inst4|inst31|inst2|inst7~0_combout\) # (\inst1|R1|inst19~q\ $ (\inst1|inst4|inst26|inst3|inst7~0_combout\)))) # (!\inst1|inst4|inst13~combout\ & 
-- (\inst1|inst4|inst31|inst2|inst7~0_combout\ & (\inst1|R1|inst19~q\ $ (\inst1|inst4|inst26|inst3|inst7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|R1|inst19~q\,
	datab => \inst1|inst4|inst13~combout\,
	datac => \inst1|inst4|inst26|inst3|inst7~0_combout\,
	datad => \inst1|inst4|inst31|inst2|inst7~0_combout\,
	combout => \inst1|inst4|inst31|inst3|inst7~0_combout\);

-- Location: LCCOMB_X12_Y27_N20
\inst1|inst4|inst36|inst2|inst7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|inst4|inst36|inst2|inst7~0_combout\ = (\inst1|R2|inst19~q\ & ((\inst1|inst4|inst31|inst3|inst5~combout\) # ((\inst1|inst4|inst31|inst2|inst5~combout\ & \inst1|R2|inst18~q\)))) # (!\inst1|R2|inst19~q\ & (\inst1|inst4|inst31|inst2|inst5~combout\ & 
-- (\inst1|R2|inst18~q\ & \inst1|inst4|inst31|inst3|inst5~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|R2|inst19~q\,
	datab => \inst1|inst4|inst31|inst2|inst5~combout\,
	datac => \inst1|R2|inst18~q\,
	datad => \inst1|inst4|inst31|inst3|inst5~combout\,
	combout => \inst1|inst4|inst36|inst2|inst7~0_combout\);

-- Location: LCCOMB_X12_Y27_N18
\inst1|inst4|inst36|inst3|inst5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|inst4|inst36|inst3|inst5~combout\ = \inst1|R2|inst20~q\ $ (\inst1|inst4|inst31|inst4|inst4~combout\ $ (\inst1|inst4|inst31|inst3|inst7~0_combout\ $ (\inst1|inst4|inst36|inst2|inst7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|R2|inst20~q\,
	datab => \inst1|inst4|inst31|inst4|inst4~combout\,
	datac => \inst1|inst4|inst31|inst3|inst7~0_combout\,
	datad => \inst1|inst4|inst36|inst2|inst7~0_combout\,
	combout => \inst1|inst4|inst36|inst3|inst5~combout\);

-- Location: LCCOMB_X12_Y27_N16
\inst1|inst6|inst6|5~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|inst6|inst6|5~2_combout\ = (\inst1|inst6|inst33~q\ & (((\inst1|inst4|inst36|inst3|inst5~combout\)))) # (!\inst1|inst6|inst33~q\ & ((\inst|DFF3~q\ & (\inst1|inst6|inst30~q\)) # (!\inst|DFF3~q\ & ((\inst1|inst4|inst36|inst3|inst5~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst6|inst33~q\,
	datab => \inst|DFF3~q\,
	datac => \inst1|inst6|inst30~q\,
	datad => \inst1|inst4|inst36|inst3|inst5~combout\,
	combout => \inst1|inst6|inst6|5~2_combout\);

-- Location: FF_X12_Y27_N17
\inst1|inst6|inst31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|inst6|inst6|5~2_combout\,
	ena => \inst|inst26~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst6|inst31~q\);

-- Location: LCCOMB_X12_Y27_N4
\inst1|inst4|inst31|inst4|inst7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|inst4|inst31|inst4|inst7~0_combout\ = (\inst1|inst4|inst31|inst3|inst7~0_combout\ & ((\inst1|R1|inst20~q\) # ((\inst1|R1|inst19~q\ & \inst1|inst4|inst26|inst3|inst7~0_combout\)))) # (!\inst1|inst4|inst31|inst3|inst7~0_combout\ & 
-- (\inst1|R1|inst19~q\ & (\inst1|inst4|inst26|inst3|inst7~0_combout\ & \inst1|R1|inst20~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|R1|inst19~q\,
	datab => \inst1|inst4|inst26|inst3|inst7~0_combout\,
	datac => \inst1|inst4|inst31|inst3|inst7~0_combout\,
	datad => \inst1|R1|inst20~q\,
	combout => \inst1|inst4|inst31|inst4|inst7~0_combout\);

-- Location: LCCOMB_X12_Y27_N10
\inst1|inst4|inst36|inst3|inst7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|inst4|inst36|inst3|inst7~0_combout\ = (\inst1|R2|inst20~q\ & ((\inst1|inst4|inst36|inst2|inst7~0_combout\) # (\inst1|inst4|inst31|inst4|inst4~combout\ $ (\inst1|inst4|inst31|inst3|inst7~0_combout\)))) # (!\inst1|R2|inst20~q\ & 
-- (\inst1|inst4|inst36|inst2|inst7~0_combout\ & (\inst1|inst4|inst31|inst4|inst4~combout\ $ (\inst1|inst4|inst31|inst3|inst7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|R2|inst20~q\,
	datab => \inst1|inst4|inst31|inst4|inst4~combout\,
	datac => \inst1|inst4|inst31|inst3|inst7~0_combout\,
	datad => \inst1|inst4|inst36|inst2|inst7~0_combout\,
	combout => \inst1|inst4|inst36|inst3|inst7~0_combout\);

-- Location: LCCOMB_X12_Y27_N26
\inst1|inst6|inst7|5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|inst6|inst7|5~0_combout\ = (\inst|inst23~combout\ & (\inst1|inst6|inst31~q\)) # (!\inst|inst23~combout\ & ((\inst1|inst4|inst31|inst4|inst7~0_combout\ $ (!\inst1|inst4|inst36|inst3|inst7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst6|inst31~q\,
	datab => \inst|inst23~combout\,
	datac => \inst1|inst4|inst31|inst4|inst7~0_combout\,
	datad => \inst1|inst4|inst36|inst3|inst7~0_combout\,
	combout => \inst1|inst6|inst7|5~0_combout\);

-- Location: FF_X12_Y27_N27
\inst1|inst6|inst32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|inst6|inst7|5~0_combout\,
	ena => \inst|inst26~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst6|inst32~q\);

-- Location: LCCOMB_X12_Y27_N0
\inst1|inst6|inst8|5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|inst6|inst8|5~0_combout\ = (\inst|inst23~combout\ & (\inst1|inst6|inst32~q\)) # (!\inst|inst23~combout\ & (((\inst1|inst4|inst31|inst4|inst7~0_combout\) # (\inst1|inst4|inst36|inst3|inst7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst6|inst32~q\,
	datab => \inst|inst23~combout\,
	datac => \inst1|inst4|inst31|inst4|inst7~0_combout\,
	datad => \inst1|inst4|inst36|inst3|inst7~0_combout\,
	combout => \inst1|inst6|inst8|5~0_combout\);

-- Location: FF_X12_Y27_N1
\inst1|inst6|inst33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|inst6|inst8|5~0_combout\,
	ena => \inst|inst26~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst6|inst33~q\);

-- Location: LCCOMB_X14_Y27_N30
\inst|inst13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst13~combout\ = (\inst|DFF2~q\ & (((\inst|DFF3~q\ & !\inst1|inst6|inst33~q\)) # (!\inst1|inst1~combout\))) # (!\inst|DFF2~q\ & (((\inst|DFF3~q\ & !\inst1|inst6|inst33~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DFF2~q\,
	datab => \inst1|inst1~combout\,
	datac => \inst|DFF3~q\,
	datad => \inst1|inst6|inst33~q\,
	combout => \inst|inst13~combout\);

-- Location: FF_X14_Y27_N31
\inst|DFF3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst13~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DFF3~q\);

-- Location: LCCOMB_X14_Y27_N20
\inst|inst10~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst10~0_combout\ = (\inst|DFF3~q\ & (!\inst1|inst6|inst33~q\ & ((!\inst1|inst1~combout\) # (!\inst|DFF2~q\)))) # (!\inst|DFF3~q\ & (((!\inst1|inst1~combout\)) # (!\inst|DFF2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DFF3~q\,
	datab => \inst|DFF2~q\,
	datac => \inst1|inst1~combout\,
	datad => \inst1|inst6|inst33~q\,
	combout => \inst|inst10~0_combout\);

-- Location: LCCOMB_X14_Y27_N2
\inst|inst10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst10~combout\ = ((!\S~input_o\ & \inst|DFF1~q\)) # (!\inst|inst10~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~input_o\,
	datac => \inst|DFF1~q\,
	datad => \inst|inst10~0_combout\,
	combout => \inst|inst10~combout\);

-- Location: FF_X14_Y27_N3
\inst|DFF1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|inst10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DFF1~q\);

-- Location: LCCOMB_X14_Y27_N28
\inst1|inst12~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|inst12~0_combout\ = (\inst1|inst12~q\ & (((!\inst|DFF1~q\)) # (!\S~input_o\))) # (!\inst1|inst12~q\ & (((!\inst|inst10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~input_o\,
	datab => \inst|DFF1~q\,
	datac => \inst1|inst12~q\,
	datad => \inst|inst10~0_combout\,
	combout => \inst1|inst12~0_combout\);

-- Location: FF_X14_Y27_N29
\inst1|inst12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|inst12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst12~q\);

-- Location: IOIBUF_X22_Y31_N8
\in2[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in2(7),
	o => \in2[7]~input_o\);

-- Location: LCCOMB_X15_Y27_N0
\inst1|R2|inst25~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|R2|inst25~feeder_combout\ = \in2[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in2[7]~input_o\,
	combout => \inst1|R2|inst25~feeder_combout\);

-- Location: FF_X15_Y27_N1
\inst1|R2|inst25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|R2|inst25~feeder_combout\,
	ena => \inst|ALT_INV_inst30~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|R2|inst25~q\);

-- Location: IOIBUF_X31_Y31_N1
\in1[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(7),
	o => \in1[7]~input_o\);

-- Location: FF_X15_Y27_N7
\inst1|R1|inst25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in1[7]~input_o\,
	sload => VCC,
	ena => \inst|ALT_INV_inst30~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|R1|inst25~q\);

-- Location: LCCOMB_X14_Y27_N18
\inst1|inst\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|inst~combout\ = \inst1|R2|inst25~q\ $ (\inst1|R1|inst25~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|R2|inst25~q\,
	datad => \inst1|R1|inst25~q\,
	combout => \inst1|inst~combout\);

-- Location: LCCOMB_X14_Y27_N0
\inst|inst29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst29~combout\ = (\inst|DFF3~q\ & \inst1|inst6|inst33~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DFF3~q\,
	datad => \inst1|inst6|inst33~q\,
	combout => \inst|inst29~combout\);

-- Location: FF_X14_Y27_N19
\inst1|inst2|inst29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|inst~combout\,
	clrn => \inst|inst30~combout\,
	ena => \inst|inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst2|inst29~q\);

-- Location: LCCOMB_X14_Y27_N14
\inst1|inst5|inst7|inst|5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|inst5|inst7|inst|5~0_combout\ = \inst1|inst5|inst|inst18~q\ $ (((\inst|DFF3~q\ & !\inst1|inst6|inst33~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DFF3~q\,
	datab => \inst1|inst5|inst|inst18~q\,
	datad => \inst1|inst6|inst33~q\,
	combout => \inst1|inst5|inst7|inst|5~0_combout\);

-- Location: FF_X13_Y27_N25
\inst1|inst5|inst|inst18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|inst5|inst7|inst|5~0_combout\,
	sload => VCC,
	ena => \inst|inst26~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst5|inst|inst18~q\);

-- Location: LCCOMB_X15_Y27_N4
\inst1|inst5|inst1|inst20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|inst5|inst1|inst20~combout\ = \inst1|inst5|inst|inst19~q\ $ (\inst1|inst5|inst|inst18~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst5|inst|inst19~q\,
	datad => \inst1|inst5|inst|inst18~q\,
	combout => \inst1|inst5|inst1|inst20~combout\);

-- Location: LCCOMB_X14_Y27_N6
\inst1|inst5|inst|inst21~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|inst5|inst|inst21~2_combout\ = (\inst|DFF3~q\ & (\inst|DFF2~q\ & (!\inst1|inst1~combout\ & !\inst1|inst6|inst33~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DFF3~q\,
	datab => \inst|DFF2~q\,
	datac => \inst1|inst1~combout\,
	datad => \inst1|inst6|inst33~q\,
	combout => \inst1|inst5|inst|inst21~2_combout\);

-- Location: FF_X15_Y27_N5
\inst1|inst5|inst|inst19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|inst5|inst1|inst20~combout\,
	ena => \inst1|inst5|inst|inst21~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst5|inst|inst19~q\);

-- Location: LCCOMB_X15_Y27_N30
\inst1|inst5|inst1|inst21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|inst5|inst1|inst21~combout\ = \inst1|inst5|inst|inst20~q\ $ (((\inst1|inst5|inst|inst19~q\ & \inst1|inst5|inst|inst18~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst5|inst|inst19~q\,
	datac => \inst1|inst5|inst|inst20~q\,
	datad => \inst1|inst5|inst|inst18~q\,
	combout => \inst1|inst5|inst1|inst21~combout\);

-- Location: FF_X15_Y27_N31
\inst1|inst5|inst|inst20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|inst5|inst1|inst21~combout\,
	ena => \inst1|inst5|inst|inst21~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst5|inst|inst20~q\);

-- Location: LCCOMB_X15_Y27_N12
\inst1|inst5|inst1|inst22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|inst5|inst1|inst22~combout\ = \inst1|inst5|inst|inst21~q\ $ (((\inst1|inst5|inst|inst20~q\ & (\inst1|inst5|inst|inst19~q\ & \inst1|inst5|inst|inst18~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5|inst|inst20~q\,
	datab => \inst1|inst5|inst|inst19~q\,
	datac => \inst1|inst5|inst|inst21~q\,
	datad => \inst1|inst5|inst|inst18~q\,
	combout => \inst1|inst5|inst1|inst22~combout\);

-- Location: FF_X15_Y27_N13
\inst1|inst5|inst|inst21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|inst5|inst1|inst22~combout\,
	ena => \inst1|inst5|inst|inst21~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst5|inst|inst21~q\);

-- Location: FF_X14_Y27_N25
\inst1|inst2|inst28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|inst5|inst|inst21~q\,
	clrn => \inst|inst30~combout\,
	sload => VCC,
	ena => \inst|inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst2|inst28~q\);

-- Location: FF_X14_Y27_N15
\inst1|inst2|inst27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|inst5|inst|inst20~q\,
	clrn => \inst|inst30~combout\,
	sload => VCC,
	ena => \inst|inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst2|inst27~q\);

-- Location: LCCOMB_X14_Y27_N16
\inst1|inst2|inst26~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|inst2|inst26~feeder_combout\ = \inst1|inst5|inst|inst19~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|inst5|inst|inst19~q\,
	combout => \inst1|inst2|inst26~feeder_combout\);

-- Location: FF_X14_Y27_N17
\inst1|inst2|inst26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|inst2|inst26~feeder_combout\,
	clrn => \inst|inst30~combout\,
	ena => \inst|inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst2|inst26~q\);

-- Location: LCCOMB_X14_Y27_N22
\inst1|inst2|inst30~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|inst2|inst30~feeder_combout\ = \inst1|inst5|inst|inst18~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|inst5|inst|inst18~q\,
	combout => \inst1|inst2|inst30~feeder_combout\);

-- Location: FF_X14_Y27_N23
\inst1|inst2|inst30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|inst2|inst30~feeder_combout\,
	clrn => \inst|inst30~combout\,
	ena => \inst|inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst2|inst30~q\);

-- Location: LCCOMB_X14_Y27_N12
\inst1|inst2|inst31~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|inst2|inst31~feeder_combout\ = \inst1|inst6|inst32~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|inst6|inst32~q\,
	combout => \inst1|inst2|inst31~feeder_combout\);

-- Location: FF_X14_Y27_N13
\inst1|inst2|inst31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|inst2|inst31~feeder_combout\,
	clrn => \inst|inst30~combout\,
	ena => \inst|inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst2|inst31~q\);

-- Location: LCCOMB_X14_Y27_N26
\inst1|inst2|inst32~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst1|inst2|inst32~feeder_combout\ = \inst1|inst6|inst31~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|inst6|inst31~q\,
	combout => \inst1|inst2|inst32~feeder_combout\);

-- Location: FF_X14_Y27_N27
\inst1|inst2|inst32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|inst2|inst32~feeder_combout\,
	clrn => \inst|inst30~combout\,
	ena => \inst|inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst2|inst32~q\);

-- Location: FF_X14_Y27_N1
\inst1|inst2|inst18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|inst6|inst30~q\,
	clrn => \inst|inst30~combout\,
	sload => VCC,
	ena => \inst|inst29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst2|inst18~q\);

ww_ready <= \ready~output_o\;

ww_output(7) <= \output[7]~output_o\;

ww_output(6) <= \output[6]~output_o\;

ww_output(5) <= \output[5]~output_o\;

ww_output(4) <= \output[4]~output_o\;

ww_output(3) <= \output[3]~output_o\;

ww_output(2) <= \output[2]~output_o\;

ww_output(1) <= \output[1]~output_o\;

ww_output(0) <= \output[0]~output_o\;
END structure;


