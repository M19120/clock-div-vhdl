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
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "08/19/2023 11:59:43"

-- 
-- Device: Altera EP4CE6E22C8 Package TQFP144
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

ENTITY 	clk_div IS
    PORT (
	clk : IN std_logic;
	clk_q : OUT std_logic
	);
END clk_div;

-- Design Ports Information
-- clk_q	=>  Location: PIN_105,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_106,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF clk_div IS
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
SIGNAL ww_clk_q : std_logic;
SIGNAL \clk_q~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \q[0]~0_combout\ : std_logic;
SIGNAL q : std_logic_vector(0 DOWNTO 0);

BEGIN

ww_clk <= clk;
clk_q <= ww_clk_q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X34_Y19_N16
\clk_q~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => q(0),
	devoe => ww_devoe,
	o => \clk_q~output_o\);

-- Location: IOIBUF_X34_Y20_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: LCCOMB_X33_Y20_N8
\q[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \q[0]~0_combout\ = !q(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => q(0),
	combout => \q[0]~0_combout\);

-- Location: FF_X33_Y20_N9
\q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \q[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q(0));

ww_clk_q <= \clk_q~output_o\;
END structure;


