-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "12/16/2023 15:12:43"

-- 
-- Device: Altera EP4CE6E22C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	clk_div IS
    PORT (
	clk : IN std_logic;
	clk_out : OUT std_logic
	);
END clk_div;

-- Design Ports Information
-- clk_out	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_clk_out : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_out~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \cuenta[0]~5_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \cuenta[0]~6\ : std_logic;
SIGNAL \cuenta[1]~7_combout\ : std_logic;
SIGNAL \cuenta[1]~8\ : std_logic;
SIGNAL \cuenta[2]~9_combout\ : std_logic;
SIGNAL \cuenta[2]~10\ : std_logic;
SIGNAL \cuenta[3]~11_combout\ : std_logic;
SIGNAL \cuenta[3]~12\ : std_logic;
SIGNAL \cuenta[4]~13_combout\ : std_logic;
SIGNAL \q_oi~0_combout\ : std_logic;
SIGNAL \q_oi~q\ : std_logic;
SIGNAL cuenta : std_logic_vector(4 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
clk_out <= ww_clk_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y8_N16
\clk_out~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q_oi~q\,
	devoe => ww_devoe,
	o => \clk_out~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
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

-- Location: LCCOMB_X1_Y8_N14
\cuenta[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \cuenta[0]~5_combout\ = cuenta(0) $ (VCC)
-- \cuenta[0]~6\ = CARRY(cuenta(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => cuenta(0),
	datad => VCC,
	combout => \cuenta[0]~5_combout\,
	cout => \cuenta[0]~6\);

-- Location: LCCOMB_X1_Y8_N6
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ((!cuenta(1) & (!cuenta(0) & !cuenta(2)))) # (!cuenta(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cuenta(1),
	datab => cuenta(3),
	datac => cuenta(0),
	datad => cuenta(2),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X1_Y8_N12
\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (cuenta(4) & !\LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => cuenta(4),
	datad => \LessThan0~0_combout\,
	combout => \LessThan0~1_combout\);

-- Location: FF_X1_Y8_N15
\cuenta[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cuenta[0]~5_combout\,
	sclr => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cuenta(0));

-- Location: LCCOMB_X1_Y8_N16
\cuenta[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \cuenta[1]~7_combout\ = (cuenta(1) & (!\cuenta[0]~6\)) # (!cuenta(1) & ((\cuenta[0]~6\) # (GND)))
-- \cuenta[1]~8\ = CARRY((!\cuenta[0]~6\) # (!cuenta(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cuenta(1),
	datad => VCC,
	cin => \cuenta[0]~6\,
	combout => \cuenta[1]~7_combout\,
	cout => \cuenta[1]~8\);

-- Location: FF_X1_Y8_N17
\cuenta[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cuenta[1]~7_combout\,
	sclr => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cuenta(1));

-- Location: LCCOMB_X1_Y8_N18
\cuenta[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \cuenta[2]~9_combout\ = (cuenta(2) & (\cuenta[1]~8\ $ (GND))) # (!cuenta(2) & (!\cuenta[1]~8\ & VCC))
-- \cuenta[2]~10\ = CARRY((cuenta(2) & !\cuenta[1]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cuenta(2),
	datad => VCC,
	cin => \cuenta[1]~8\,
	combout => \cuenta[2]~9_combout\,
	cout => \cuenta[2]~10\);

-- Location: FF_X1_Y8_N19
\cuenta[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cuenta[2]~9_combout\,
	sclr => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cuenta(2));

-- Location: LCCOMB_X1_Y8_N20
\cuenta[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \cuenta[3]~11_combout\ = (cuenta(3) & (!\cuenta[2]~10\)) # (!cuenta(3) & ((\cuenta[2]~10\) # (GND)))
-- \cuenta[3]~12\ = CARRY((!\cuenta[2]~10\) # (!cuenta(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cuenta(3),
	datad => VCC,
	cin => \cuenta[2]~10\,
	combout => \cuenta[3]~11_combout\,
	cout => \cuenta[3]~12\);

-- Location: FF_X1_Y8_N21
\cuenta[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cuenta[3]~11_combout\,
	sclr => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cuenta(3));

-- Location: LCCOMB_X1_Y8_N22
\cuenta[4]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \cuenta[4]~13_combout\ = cuenta(4) $ (!\cuenta[3]~12\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cuenta(4),
	cin => \cuenta[3]~12\,
	combout => \cuenta[4]~13_combout\);

-- Location: FF_X1_Y8_N23
\cuenta[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cuenta[4]~13_combout\,
	sclr => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cuenta(4));

-- Location: LCCOMB_X1_Y8_N28
\q_oi~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \q_oi~0_combout\ = \q_oi~q\ $ (((cuenta(4) & !\LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cuenta(4),
	datac => \q_oi~q\,
	datad => \LessThan0~0_combout\,
	combout => \q_oi~0_combout\);

-- Location: FF_X1_Y8_N29
q_oi : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \q_oi~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q_oi~q\);

ww_clk_out <= \clk_out~output_o\;
END structure;


