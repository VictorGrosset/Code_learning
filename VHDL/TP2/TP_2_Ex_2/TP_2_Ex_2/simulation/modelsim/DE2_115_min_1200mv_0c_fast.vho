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

-- DATE "09/22/2023 09:22:46"

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

ENTITY 	deco1p4 IS
    PORT (
	en : IN std_logic;
	sel : IN std_logic_vector(1 DOWNTO 0);
	s_deco : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END deco1p4;

-- Design Ports Information
-- s_deco[0]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_deco[1]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_deco[2]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_deco[3]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en	=>  Location: PIN_AA22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sel[1]	=>  Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sel[0]	=>  Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF deco1p4 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_en : std_logic;
SIGNAL ww_sel : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_s_deco : std_logic_vector(3 DOWNTO 0);
SIGNAL \s_deco[0]~output_o\ : std_logic;
SIGNAL \s_deco[1]~output_o\ : std_logic;
SIGNAL \s_deco[2]~output_o\ : std_logic;
SIGNAL \s_deco[3]~output_o\ : std_logic;
SIGNAL \en~input_o\ : std_logic;
SIGNAL \sel[0]~input_o\ : std_logic;
SIGNAL \sel[1]~input_o\ : std_logic;
SIGNAL \s_deco~0_combout\ : std_logic;
SIGNAL \s_deco~1_combout\ : std_logic;
SIGNAL \s_deco~2_combout\ : std_logic;
SIGNAL \s_deco~3_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_en <= en;
ww_sel <= sel;
s_deco <= ww_s_deco;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X58_Y73_N2
\s_deco[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s_deco~0_combout\,
	devoe => ww_devoe,
	o => \s_deco[0]~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\s_deco[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s_deco~1_combout\,
	devoe => ww_devoe,
	o => \s_deco[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N2
\s_deco[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s_deco~2_combout\,
	devoe => ww_devoe,
	o => \s_deco[2]~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\s_deco[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s_deco~3_combout\,
	devoe => ww_devoe,
	o => \s_deco[3]~output_o\);

-- Location: IOIBUF_X115_Y6_N15
\en~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_en,
	o => \en~input_o\);

-- Location: IOIBUF_X115_Y13_N1
\sel[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(0),
	o => \sel[0]~input_o\);

-- Location: IOIBUF_X115_Y14_N8
\sel[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(1),
	o => \sel[1]~input_o\);

-- Location: LCCOMB_X67_Y69_N0
\s_deco~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_deco~0_combout\ = (\en~input_o\ & (!\sel[0]~input_o\ & !\sel[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \en~input_o\,
	datac => \sel[0]~input_o\,
	datad => \sel[1]~input_o\,
	combout => \s_deco~0_combout\);

-- Location: LCCOMB_X67_Y69_N2
\s_deco~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_deco~1_combout\ = (\en~input_o\ & (\sel[0]~input_o\ & !\sel[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \en~input_o\,
	datac => \sel[0]~input_o\,
	datad => \sel[1]~input_o\,
	combout => \s_deco~1_combout\);

-- Location: LCCOMB_X67_Y69_N4
\s_deco~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_deco~2_combout\ = (\en~input_o\ & (!\sel[0]~input_o\ & \sel[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \en~input_o\,
	datac => \sel[0]~input_o\,
	datad => \sel[1]~input_o\,
	combout => \s_deco~2_combout\);

-- Location: LCCOMB_X67_Y69_N14
\s_deco~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_deco~3_combout\ = (\en~input_o\ & (\sel[0]~input_o\ & \sel[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \en~input_o\,
	datac => \sel[0]~input_o\,
	datad => \sel[1]~input_o\,
	combout => \s_deco~3_combout\);

ww_s_deco(0) <= \s_deco[0]~output_o\;

ww_s_deco(1) <= \s_deco[1]~output_o\;

ww_s_deco(2) <= \s_deco[2]~output_o\;

ww_s_deco(3) <= \s_deco[3]~output_o\;
END structure;


