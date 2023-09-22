-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Standard Edition"

-- DATE "09/15/2023 11:18:20"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
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
-- LEDG[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[2]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[3]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[4]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[5]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[6]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[7]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[8]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[10]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[11]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[12]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[13]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[14]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[15]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[16]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[17]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	exo3_complet IS
    PORT (
	E : IN std_logic_vector(15 DOWNTO 1);
	S : OUT std_logic_vector(6 DOWNTO 0)
	);
END exo3_complet;

-- Design Ports Information
-- S[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_L26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- S[4]	=>  Location: PIN_L25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- S[5]	=>  Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- S[6]	=>  Location: PIN_H22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- E[15]	=>  Location: PIN_AA22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- E[13]	=>  Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- E[11]	=>  Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- E[12]	=>  Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- E[14]	=>  Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- E[10]	=>  Location: PIN_AC24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- E[9]	=>  Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- E[7]	=>  Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- E[5]	=>  Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- E[6]	=>  Location: PIN_AD26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- E[3]	=>  Location: PIN_AD27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- E[1]	=>  Location: PIN_AC28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- E[2]	=>  Location: PIN_AC27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- E[4]	=>  Location: PIN_AB27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- E[8]	=>  Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF exo3_complet IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_E : std_logic_vector(15 DOWNTO 1);
SIGNAL ww_S : std_logic_vector(6 DOWNTO 0);
SIGNAL \S[0]~output_o\ : std_logic;
SIGNAL \S[1]~output_o\ : std_logic;
SIGNAL \S[2]~output_o\ : std_logic;
SIGNAL \S[3]~output_o\ : std_logic;
SIGNAL \S[4]~output_o\ : std_logic;
SIGNAL \S[5]~output_o\ : std_logic;
SIGNAL \S[6]~output_o\ : std_logic;
SIGNAL \E[11]~input_o\ : std_logic;
SIGNAL \E[8]~input_o\ : std_logic;
SIGNAL \E[9]~input_o\ : std_logic;
SIGNAL \num|numero~12_combout\ : std_logic;
SIGNAL \E[13]~input_o\ : std_logic;
SIGNAL \E[15]~input_o\ : std_logic;
SIGNAL \E[12]~input_o\ : std_logic;
SIGNAL \E[10]~input_o\ : std_logic;
SIGNAL \E[14]~input_o\ : std_logic;
SIGNAL \num|numero~1_combout\ : std_logic;
SIGNAL \num|numero[3]~14_combout\ : std_logic;
SIGNAL \num|numero[0]~0_combout\ : std_logic;
SIGNAL \num|numero[0]~2_combout\ : std_logic;
SIGNAL \E[1]~input_o\ : std_logic;
SIGNAL \E[3]~input_o\ : std_logic;
SIGNAL \E[2]~input_o\ : std_logic;
SIGNAL \E[4]~input_o\ : std_logic;
SIGNAL \num|numero[0]~3_combout\ : std_logic;
SIGNAL \E[7]~input_o\ : std_logic;
SIGNAL \E[6]~input_o\ : std_logic;
SIGNAL \E[5]~input_o\ : std_logic;
SIGNAL \num|numero[0]~4_combout\ : std_logic;
SIGNAL \num|numero[0]~5_combout\ : std_logic;
SIGNAL \num|numero~6_combout\ : std_logic;
SIGNAL \num|numero~7_combout\ : std_logic;
SIGNAL \num|numero~8_combout\ : std_logic;
SIGNAL \num|numero~9_combout\ : std_logic;
SIGNAL \num|numero[1]~15_combout\ : std_logic;
SIGNAL \num|numero[1]~16_combout\ : std_logic;
SIGNAL \num|numero[2]~10_combout\ : std_logic;
SIGNAL \num|numero~11_combout\ : std_logic;
SIGNAL \num|numero[2]~13_combout\ : std_logic;
SIGNAL \deco|Mux6~0_combout\ : std_logic;
SIGNAL \deco|Mux5~0_combout\ : std_logic;
SIGNAL \deco|Mux4~0_combout\ : std_logic;
SIGNAL \deco|Mux3~0_combout\ : std_logic;
SIGNAL \deco|Mux2~0_combout\ : std_logic;
SIGNAL \deco|Mux1~0_combout\ : std_logic;
SIGNAL \deco|Mux0~0_combout\ : std_logic;
SIGNAL \deco|ALT_INV_Mux0~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_E <= E;
S <= ww_S;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\deco|ALT_INV_Mux0~0_combout\ <= NOT \deco|Mux0~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X69_Y73_N23
\S[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \deco|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \S[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\S[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \deco|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \S[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\S[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \deco|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \S[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\S[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \deco|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \S[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\S[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \deco|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \S[4]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\S[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \deco|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \S[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\S[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \deco|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \S[6]~output_o\);

-- Location: IOIBUF_X115_Y5_N15
\E[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_E(11),
	o => \E[11]~input_o\);

-- Location: IOIBUF_X115_Y4_N22
\E[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_E(8),
	o => \E[8]~input_o\);

-- Location: IOIBUF_X115_Y16_N8
\E[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_E(9),
	o => \E[9]~input_o\);

-- Location: LCCOMB_X114_Y11_N22
\num|numero~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \num|numero~12_combout\ = (!\E[11]~input_o\ & (!\E[8]~input_o\ & !\E[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \E[11]~input_o\,
	datac => \E[8]~input_o\,
	datad => \E[9]~input_o\,
	combout => \num|numero~12_combout\);

-- Location: IOIBUF_X115_Y9_N22
\E[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_E(13),
	o => \E[13]~input_o\);

-- Location: IOIBUF_X115_Y6_N15
\E[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_E(15),
	o => \E[15]~input_o\);

-- Location: IOIBUF_X115_Y7_N15
\E[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_E(12),
	o => \E[12]~input_o\);

-- Location: IOIBUF_X115_Y4_N15
\E[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_E(10),
	o => \E[10]~input_o\);

-- Location: IOIBUF_X115_Y10_N8
\E[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_E(14),
	o => \E[14]~input_o\);

-- Location: LCCOMB_X114_Y11_N18
\num|numero~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \num|numero~1_combout\ = (!\E[12]~input_o\ & (!\E[10]~input_o\ & !\E[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E[12]~input_o\,
	datab => \E[10]~input_o\,
	datac => \E[14]~input_o\,
	combout => \num|numero~1_combout\);

-- Location: LCCOMB_X114_Y11_N2
\num|numero[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \num|numero[3]~14_combout\ = ((\E[13]~input_o\) # ((\E[15]~input_o\) # (!\num|numero~1_combout\))) # (!\num|numero~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \num|numero~12_combout\,
	datab => \E[13]~input_o\,
	datac => \E[15]~input_o\,
	datad => \num|numero~1_combout\,
	combout => \num|numero[3]~14_combout\);

-- Location: LCCOMB_X114_Y11_N16
\num|numero[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \num|numero[0]~0_combout\ = (!\E[14]~input_o\ & ((\E[13]~input_o\) # ((!\E[12]~input_o\ & \E[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E[12]~input_o\,
	datab => \E[14]~input_o\,
	datac => \E[13]~input_o\,
	datad => \E[11]~input_o\,
	combout => \num|numero[0]~0_combout\);

-- Location: LCCOMB_X114_Y11_N28
\num|numero[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \num|numero[0]~2_combout\ = (\num|numero[0]~0_combout\) # ((\E[15]~input_o\) # ((\num|numero~1_combout\ & \E[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \num|numero[0]~0_combout\,
	datab => \num|numero~1_combout\,
	datac => \E[15]~input_o\,
	datad => \E[9]~input_o\,
	combout => \num|numero[0]~2_combout\);

-- Location: IOIBUF_X115_Y14_N1
\E[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_E(1),
	o => \E[1]~input_o\);

-- Location: IOIBUF_X115_Y13_N8
\E[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_E(3),
	o => \E[3]~input_o\);

-- Location: IOIBUF_X115_Y15_N8
\E[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_E(2),
	o => \E[2]~input_o\);

-- Location: IOIBUF_X115_Y18_N8
\E[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_E(4),
	o => \E[4]~input_o\);

-- Location: LCCOMB_X114_Y11_N6
\num|numero[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \num|numero[0]~3_combout\ = (!\E[4]~input_o\ & ((\E[3]~input_o\) # ((\E[1]~input_o\ & !\E[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E[1]~input_o\,
	datab => \E[3]~input_o\,
	datac => \E[2]~input_o\,
	datad => \E[4]~input_o\,
	combout => \num|numero[0]~3_combout\);

-- Location: IOIBUF_X115_Y15_N1
\E[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_E(7),
	o => \E[7]~input_o\);

-- Location: IOIBUF_X115_Y10_N1
\E[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_E(6),
	o => \E[6]~input_o\);

-- Location: IOIBUF_X115_Y11_N8
\E[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_E(5),
	o => \E[5]~input_o\);

-- Location: LCCOMB_X114_Y11_N8
\num|numero[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \num|numero[0]~4_combout\ = (\E[7]~input_o\) # ((!\E[6]~input_o\ & ((\num|numero[0]~3_combout\) # (\E[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \num|numero[0]~3_combout\,
	datab => \E[7]~input_o\,
	datac => \E[6]~input_o\,
	datad => \E[5]~input_o\,
	combout => \num|numero[0]~4_combout\);

-- Location: LCCOMB_X114_Y11_N10
\num|numero[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \num|numero[0]~5_combout\ = (\num|numero[0]~2_combout\) # ((!\E[8]~input_o\ & (\num|numero[0]~4_combout\ & \num|numero~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E[8]~input_o\,
	datab => \num|numero[0]~2_combout\,
	datac => \num|numero[0]~4_combout\,
	datad => \num|numero~1_combout\,
	combout => \num|numero[0]~5_combout\);

-- Location: LCCOMB_X114_Y11_N4
\num|numero~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \num|numero~6_combout\ = (!\E[8]~input_o\ & !\E[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \E[8]~input_o\,
	datad => \E[9]~input_o\,
	combout => \num|numero~6_combout\);

-- Location: LCCOMB_X114_Y11_N14
\num|numero~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \num|numero~7_combout\ = (!\E[5]~input_o\ & (!\E[4]~input_o\ & ((\E[3]~input_o\) # (\E[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E[5]~input_o\,
	datab => \E[3]~input_o\,
	datac => \E[2]~input_o\,
	datad => \E[4]~input_o\,
	combout => \num|numero~7_combout\);

-- Location: LCCOMB_X114_Y11_N24
\num|numero~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \num|numero~8_combout\ = (\num|numero~6_combout\ & ((\E[6]~input_o\) # ((\E[7]~input_o\) # (\num|numero~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E[6]~input_o\,
	datab => \num|numero~6_combout\,
	datac => \E[7]~input_o\,
	datad => \num|numero~7_combout\,
	combout => \num|numero~8_combout\);

-- Location: LCCOMB_X114_Y10_N0
\num|numero~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \num|numero~9_combout\ = (\E[10]~input_o\) # (\E[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \E[10]~input_o\,
	datac => \E[11]~input_o\,
	combout => \num|numero~9_combout\);

-- Location: LCCOMB_X114_Y11_N12
\num|numero[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \num|numero[1]~15_combout\ = (\E[13]~input_o\) # ((!\E[12]~input_o\ & ((\num|numero~8_combout\) # (\num|numero~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E[12]~input_o\,
	datab => \num|numero~8_combout\,
	datac => \E[13]~input_o\,
	datad => \num|numero~9_combout\,
	combout => \num|numero[1]~15_combout\);

-- Location: LCCOMB_X114_Y11_N30
\num|numero[1]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \num|numero[1]~16_combout\ = (\num|numero[1]~15_combout\ & (((\E[15]~input_o\) # (\E[14]~input_o\)) # (!\E[13]~input_o\))) # (!\num|numero[1]~15_combout\ & (!\E[13]~input_o\ & ((\E[15]~input_o\) # (\E[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \num|numero[1]~15_combout\,
	datab => \E[13]~input_o\,
	datac => \E[15]~input_o\,
	datad => \E[14]~input_o\,
	combout => \num|numero[1]~16_combout\);

-- Location: LCCOMB_X114_Y11_N26
\num|numero[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \num|numero[2]~10_combout\ = (\E[12]~input_o\) # ((\E[13]~input_o\) # ((\E[15]~input_o\) # (\E[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E[12]~input_o\,
	datab => \E[13]~input_o\,
	datac => \E[15]~input_o\,
	datad => \E[14]~input_o\,
	combout => \num|numero[2]~10_combout\);

-- Location: LCCOMB_X114_Y11_N20
\num|numero~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \num|numero~11_combout\ = (\E[5]~input_o\) # ((\E[7]~input_o\) # ((\E[6]~input_o\) # (\E[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E[5]~input_o\,
	datab => \E[7]~input_o\,
	datac => \E[6]~input_o\,
	datad => \E[4]~input_o\,
	combout => \num|numero~11_combout\);

-- Location: LCCOMB_X114_Y11_N0
\num|numero[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \num|numero[2]~13_combout\ = (\num|numero[2]~10_combout\) # ((\num|numero~11_combout\ & (\num|numero~12_combout\ & !\E[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \num|numero[2]~10_combout\,
	datab => \num|numero~11_combout\,
	datac => \num|numero~12_combout\,
	datad => \E[10]~input_o\,
	combout => \num|numero[2]~13_combout\);

-- Location: LCCOMB_X114_Y54_N16
\deco|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \deco|Mux6~0_combout\ = (\num|numero[3]~14_combout\ & (\num|numero[0]~5_combout\ & (\num|numero[1]~16_combout\ $ (\num|numero[2]~13_combout\)))) # (!\num|numero[3]~14_combout\ & (!\num|numero[1]~16_combout\ & (\num|numero[0]~5_combout\ $ 
-- (\num|numero[2]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \num|numero[3]~14_combout\,
	datab => \num|numero[0]~5_combout\,
	datac => \num|numero[1]~16_combout\,
	datad => \num|numero[2]~13_combout\,
	combout => \deco|Mux6~0_combout\);

-- Location: LCCOMB_X114_Y54_N18
\deco|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \deco|Mux5~0_combout\ = (\num|numero[3]~14_combout\ & ((\num|numero[0]~5_combout\ & (\num|numero[1]~16_combout\)) # (!\num|numero[0]~5_combout\ & ((\num|numero[2]~13_combout\))))) # (!\num|numero[3]~14_combout\ & (\num|numero[2]~13_combout\ & 
-- (\num|numero[0]~5_combout\ $ (\num|numero[1]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \num|numero[3]~14_combout\,
	datab => \num|numero[0]~5_combout\,
	datac => \num|numero[1]~16_combout\,
	datad => \num|numero[2]~13_combout\,
	combout => \deco|Mux5~0_combout\);

-- Location: LCCOMB_X114_Y54_N12
\deco|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \deco|Mux4~0_combout\ = (\num|numero[3]~14_combout\ & (\num|numero[2]~13_combout\ & ((\num|numero[1]~16_combout\) # (!\num|numero[0]~5_combout\)))) # (!\num|numero[3]~14_combout\ & (!\num|numero[0]~5_combout\ & (\num|numero[1]~16_combout\ & 
-- !\num|numero[2]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \num|numero[3]~14_combout\,
	datab => \num|numero[0]~5_combout\,
	datac => \num|numero[1]~16_combout\,
	datad => \num|numero[2]~13_combout\,
	combout => \deco|Mux4~0_combout\);

-- Location: LCCOMB_X114_Y54_N30
\deco|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \deco|Mux3~0_combout\ = (\num|numero[0]~5_combout\ & ((\num|numero[1]~16_combout\ $ (!\num|numero[2]~13_combout\)))) # (!\num|numero[0]~5_combout\ & ((\num|numero[3]~14_combout\ & (\num|numero[1]~16_combout\ & !\num|numero[2]~13_combout\)) # 
-- (!\num|numero[3]~14_combout\ & (!\num|numero[1]~16_combout\ & \num|numero[2]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \num|numero[3]~14_combout\,
	datab => \num|numero[0]~5_combout\,
	datac => \num|numero[1]~16_combout\,
	datad => \num|numero[2]~13_combout\,
	combout => \deco|Mux3~0_combout\);

-- Location: LCCOMB_X114_Y54_N8
\deco|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \deco|Mux2~0_combout\ = (\num|numero[1]~16_combout\ & (!\num|numero[3]~14_combout\ & (\num|numero[0]~5_combout\))) # (!\num|numero[1]~16_combout\ & ((\num|numero[2]~13_combout\ & (!\num|numero[3]~14_combout\)) # (!\num|numero[2]~13_combout\ & 
-- ((\num|numero[0]~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \num|numero[3]~14_combout\,
	datab => \num|numero[0]~5_combout\,
	datac => \num|numero[1]~16_combout\,
	datad => \num|numero[2]~13_combout\,
	combout => \deco|Mux2~0_combout\);

-- Location: LCCOMB_X114_Y54_N26
\deco|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \deco|Mux1~0_combout\ = (\num|numero[0]~5_combout\ & (\num|numero[3]~14_combout\ $ (((\num|numero[1]~16_combout\) # (!\num|numero[2]~13_combout\))))) # (!\num|numero[0]~5_combout\ & (!\num|numero[3]~14_combout\ & (\num|numero[1]~16_combout\ & 
-- !\num|numero[2]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \num|numero[3]~14_combout\,
	datab => \num|numero[0]~5_combout\,
	datac => \num|numero[1]~16_combout\,
	datad => \num|numero[2]~13_combout\,
	combout => \deco|Mux1~0_combout\);

-- Location: LCCOMB_X114_Y54_N28
\deco|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \deco|Mux0~0_combout\ = (\num|numero[0]~5_combout\ & ((\num|numero[3]~14_combout\) # (\num|numero[1]~16_combout\ $ (\num|numero[2]~13_combout\)))) # (!\num|numero[0]~5_combout\ & ((\num|numero[1]~16_combout\) # (\num|numero[3]~14_combout\ $ 
-- (\num|numero[2]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \num|numero[3]~14_combout\,
	datab => \num|numero[0]~5_combout\,
	datac => \num|numero[1]~16_combout\,
	datad => \num|numero[2]~13_combout\,
	combout => \deco|Mux0~0_combout\);

ww_S(0) <= \S[0]~output_o\;

ww_S(1) <= \S[1]~output_o\;

ww_S(2) <= \S[2]~output_o\;

ww_S(3) <= \S[3]~output_o\;

ww_S(4) <= \S[4]~output_o\;

ww_S(5) <= \S[5]~output_o\;

ww_S(6) <= \S[6]~output_o\;
END structure;


