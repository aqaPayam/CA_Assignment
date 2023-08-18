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

-- DATE "05/05/2023 13:53:13"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	FinalCircuit IS
    PORT (
	Exp : OUT std_logic_vector(3 DOWNTO 0);
	Y : IN std_logic_vector(3 DOWNTO 0);
	X : IN std_logic_vector(3 DOWNTO 0);
	Fraction : OUT std_logic_vector(2 DOWNTO 0)
	);
END FinalCircuit;

-- Design Ports Information
-- Exp[3]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Exp[2]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Exp[1]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Exp[0]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Fraction[2]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Fraction[1]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Fraction[0]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[0]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[3]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[2]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[0]	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[3]	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[1]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[2]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[1]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_Exp : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Y : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_X : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Fraction : std_logic_vector(2 DOWNTO 0);
SIGNAL \X[0]~input_o\ : std_logic;
SIGNAL \Exp[3]~output_o\ : std_logic;
SIGNAL \Exp[2]~output_o\ : std_logic;
SIGNAL \Exp[1]~output_o\ : std_logic;
SIGNAL \Exp[0]~output_o\ : std_logic;
SIGNAL \Fraction[2]~output_o\ : std_logic;
SIGNAL \Fraction[1]~output_o\ : std_logic;
SIGNAL \Fraction[0]~output_o\ : std_logic;
SIGNAL \X[2]~input_o\ : std_logic;
SIGNAL \X[3]~input_o\ : std_logic;
SIGNAL \inst6|inst~0_combout\ : std_logic;
SIGNAL \Y[2]~input_o\ : std_logic;
SIGNAL \Y[1]~input_o\ : std_logic;
SIGNAL \Y[0]~input_o\ : std_logic;
SIGNAL \X[1]~input_o\ : std_logic;
SIGNAL \inst4|inst14~combout\ : std_logic;
SIGNAL \Y[3]~input_o\ : std_logic;
SIGNAL \inst4|inst22~combout\ : std_logic;
SIGNAL \inst2|inst9|inst4|inst4~0_combout\ : std_logic;
SIGNAL \inst2|inst9|inst2|inst4~0_combout\ : std_logic;
SIGNAL \inst4|inst10~0_combout\ : std_logic;
SIGNAL \inst4|inst21~combout\ : std_logic;
SIGNAL \inst4|inst20~combout\ : std_logic;
SIGNAL \inst4|inst4\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst4|inst\ : std_logic_vector(3 DOWNTO 0);

BEGIN

Exp <= ww_Exp;
ww_Y <= Y;
ww_X <= X;
Fraction <= ww_Fraction;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X12_Y31_N9
\Exp[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst22~combout\,
	devoe => ww_devoe,
	o => \Exp[3]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\Exp[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst21~combout\,
	devoe => ww_devoe,
	o => \Exp[2]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\Exp[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst20~combout\,
	devoe => ww_devoe,
	o => \Exp[1]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\Exp[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst4\(0),
	devoe => ww_devoe,
	o => \Exp[0]~output_o\);

-- Location: IOOBUF_X8_Y0_N9
\Fraction[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Fraction[2]~output_o\);

-- Location: IOOBUF_X24_Y0_N2
\Fraction[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Fraction[1]~output_o\);

-- Location: IOOBUF_X10_Y31_N2
\Fraction[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Fraction[0]~output_o\);

-- Location: IOIBUF_X12_Y0_N1
\X[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(2),
	o => \X[2]~input_o\);

-- Location: IOIBUF_X33_Y10_N1
\X[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(3),
	o => \X[3]~input_o\);

-- Location: LCCOMB_X15_Y1_N10
\inst6|inst~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst6|inst~0_combout\ = (\X[2]~input_o\) # (\X[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[2]~input_o\,
	datad => \X[3]~input_o\,
	combout => \inst6|inst~0_combout\);

-- Location: IOIBUF_X20_Y0_N1
\Y[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(2),
	o => \Y[2]~input_o\);

-- Location: IOIBUF_X20_Y0_N8
\Y[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(1),
	o => \Y[1]~input_o\);

-- Location: IOIBUF_X26_Y0_N8
\Y[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(0),
	o => \Y[0]~input_o\);

-- Location: IOIBUF_X12_Y0_N8
\X[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(1),
	o => \X[1]~input_o\);

-- Location: LCCOMB_X15_Y1_N16
\inst4|inst[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst4|inst\(0) = (\Y[0]~input_o\ & ((\X[3]~input_o\) # ((!\X[2]~input_o\ & \X[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[2]~input_o\,
	datab => \Y[0]~input_o\,
	datac => \X[1]~input_o\,
	datad => \X[3]~input_o\,
	combout => \inst4|inst\(0));

-- Location: LCCOMB_X15_Y1_N20
\inst4|inst14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst4|inst14~combout\ = (\Y[2]~input_o\ & ((\inst6|inst~0_combout\ & ((\Y[1]~input_o\) # (\inst4|inst\(0)))) # (!\inst6|inst~0_combout\ & (\Y[1]~input_o\ & \inst4|inst\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst~0_combout\,
	datab => \Y[2]~input_o\,
	datac => \Y[1]~input_o\,
	datad => \inst4|inst\(0),
	combout => \inst4|inst14~combout\);

-- Location: IOIBUF_X33_Y16_N1
\Y[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(3),
	o => \Y[3]~input_o\);

-- Location: LCCOMB_X15_Y1_N22
\inst4|inst22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst4|inst22~combout\ = \inst4|inst14~combout\ $ (\Y[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inst14~combout\,
	datac => \Y[3]~input_o\,
	combout => \inst4|inst22~combout\);

-- Location: LCCOMB_X15_Y1_N0
\inst2|inst9|inst4|inst4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|inst9|inst4|inst4~0_combout\ = (!\X[3]~input_o\ & ((\X[2]~input_o\) # (\X[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[2]~input_o\,
	datac => \X[1]~input_o\,
	datad => \X[3]~input_o\,
	combout => \inst2|inst9|inst4|inst4~0_combout\);

-- Location: LCCOMB_X15_Y1_N2
\inst2|inst9|inst2|inst4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst2|inst9|inst2|inst4~0_combout\ = (\X[3]~input_o\) # ((!\X[2]~input_o\ & \X[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[2]~input_o\,
	datac => \X[1]~input_o\,
	datad => \X[3]~input_o\,
	combout => \inst2|inst9|inst2|inst4~0_combout\);

-- Location: LCCOMB_X15_Y1_N12
\inst4|inst10~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst4|inst10~0_combout\ = (\inst2|inst9|inst4|inst4~0_combout\ & (\Y[1]~input_o\ & ((\Y[0]~input_o\) # (!\inst2|inst9|inst2|inst4~0_combout\)))) # (!\inst2|inst9|inst4|inst4~0_combout\ & (\inst2|inst9|inst2|inst4~0_combout\ & ((\Y[1]~input_o\) # 
-- (\Y[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst9|inst4|inst4~0_combout\,
	datab => \inst2|inst9|inst2|inst4~0_combout\,
	datac => \Y[1]~input_o\,
	datad => \Y[0]~input_o\,
	combout => \inst4|inst10~0_combout\);

-- Location: LCCOMB_X15_Y1_N6
\inst4|inst21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst4|inst21~combout\ = \inst4|inst10~0_combout\ $ (\Y[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst10~0_combout\,
	datac => \Y[2]~input_o\,
	combout => \inst4|inst21~combout\);

-- Location: LCCOMB_X15_Y1_N24
\inst4|inst20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst4|inst20~combout\ = \inst6|inst~0_combout\ $ (\Y[1]~input_o\ $ (((\inst2|inst9|inst2|inst4~0_combout\ & \Y[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst~0_combout\,
	datab => \inst2|inst9|inst2|inst4~0_combout\,
	datac => \Y[1]~input_o\,
	datad => \Y[0]~input_o\,
	combout => \inst4|inst20~combout\);

-- Location: LCCOMB_X15_Y1_N18
\inst4|inst4[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst4|inst4\(0) = \Y[0]~input_o\ $ (((\X[3]~input_o\) # ((!\X[2]~input_o\ & \X[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[2]~input_o\,
	datab => \Y[0]~input_o\,
	datac => \X[1]~input_o\,
	datad => \X[3]~input_o\,
	combout => \inst4|inst4\(0));

-- Location: IOIBUF_X33_Y16_N8
\X[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(0),
	o => \X[0]~input_o\);

ww_Exp(3) <= \Exp[3]~output_o\;

ww_Exp(2) <= \Exp[2]~output_o\;

ww_Exp(1) <= \Exp[1]~output_o\;

ww_Exp(0) <= \Exp[0]~output_o\;

ww_Fraction(2) <= \Fraction[2]~output_o\;

ww_Fraction(1) <= \Fraction[1]~output_o\;

ww_Fraction(0) <= \Fraction[0]~output_o\;
END structure;


