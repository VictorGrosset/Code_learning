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

-- DATE "09/22/2023 11:45:49"

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

ENTITY 	aff_mux IS
    PORT (
	sw : IN std_logic_vector(8 DOWNTO 0);
	hex1 : BUFFER std_logic_vector(6 DOWNTO 0);
	hex0 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END aff_mux;

-- Design Ports Information
-- hex1[0]	=>  Location: PIN_M24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- hex1[1]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- hex1[2]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- hex1[3]	=>  Location: PIN_W22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- hex1[4]	=>  Location: PIN_W25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- hex1[5]	=>  Location: PIN_U23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- hex1[6]	=>  Location: PIN_U24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- hex0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[3]	=>  Location: PIN_L26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- hex0[4]	=>  Location: PIN_L25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- hex0[5]	=>  Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- hex0[6]	=>  Location: PIN_H22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- sw[0]	=>  Location: PIN_AB28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[4]	=>  Location: PIN_AB27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[8]	=>  Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[1]	=>  Location: PIN_AC28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[5]	=>  Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[2]	=>  Location: PIN_AC27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[6]	=>  Location: PIN_AD26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[3]	=>  Location: PIN_AD27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[7]	=>  Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF aff_mux IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_sw : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_hex1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex0 : std_logic_vector(6 DOWNTO 0);
SIGNAL \hex1[0]~output_o\ : std_logic;
SIGNAL \hex1[1]~output_o\ : std_logic;
SIGNAL \hex1[2]~output_o\ : std_logic;
SIGNAL \hex1[3]~output_o\ : std_logic;
SIGNAL \hex1[4]~output_o\ : std_logic;
SIGNAL \hex1[5]~output_o\ : std_logic;
SIGNAL \hex1[6]~output_o\ : std_logic;
SIGNAL \hex0[0]~output_o\ : std_logic;
SIGNAL \hex0[1]~output_o\ : std_logic;
SIGNAL \hex0[2]~output_o\ : std_logic;
SIGNAL \hex0[3]~output_o\ : std_logic;
SIGNAL \hex0[4]~output_o\ : std_logic;
SIGNAL \hex0[5]~output_o\ : std_logic;
SIGNAL \hex0[6]~output_o\ : std_logic;
SIGNAL \sw[6]~input_o\ : std_logic;
SIGNAL \sw[8]~input_o\ : std_logic;
SIGNAL \sw[2]~input_o\ : std_logic;
SIGNAL \Mux|S[2]~2_combout\ : std_logic;
SIGNAL \sw[3]~input_o\ : std_logic;
SIGNAL \sw[7]~input_o\ : std_logic;
SIGNAL \Mux|S[3]~3_combout\ : std_logic;
SIGNAL \sw[5]~input_o\ : std_logic;
SIGNAL \sw[1]~input_o\ : std_logic;
SIGNAL \Mux|S[1]~1_combout\ : std_logic;
SIGNAL \sw[4]~input_o\ : std_logic;
SIGNAL \sw[0]~input_o\ : std_logic;
SIGNAL \Mux|S[0]~0_combout\ : std_logic;
SIGNAL \Deco1|Mux6~0_combout\ : std_logic;
SIGNAL \Deco1|Mux6~1_combout\ : std_logic;
SIGNAL \Deco1|Mux5~0_combout\ : std_logic;
SIGNAL \Deco1|Mux5~1_combout\ : std_logic;
SIGNAL \Deco1|Mux4~0_combout\ : std_logic;
SIGNAL \Deco1|Mux4~1_combout\ : std_logic;
SIGNAL \Deco1|Mux3~0_combout\ : std_logic;
SIGNAL \Deco1|Mux3~1_combout\ : std_logic;
SIGNAL \Deco1|Mux2~0_combout\ : std_logic;
SIGNAL \Deco1|Mux2~1_combout\ : std_logic;
SIGNAL \Deco1|Mux1~0_combout\ : std_logic;
SIGNAL \Deco1|Mux1~1_combout\ : std_logic;
SIGNAL \Deco1|Mux0~0_combout\ : std_logic;
SIGNAL \Deco1|Mux0~1_combout\ : std_logic;
SIGNAL \Deco0|Mux6~0_combout\ : std_logic;
SIGNAL \Deco0|Mux5~0_combout\ : std_logic;
SIGNAL \Deco0|Mux4~0_combout\ : std_logic;
SIGNAL \Deco0|Mux3~0_combout\ : std_logic;
SIGNAL \Deco0|Mux2~0_combout\ : std_logic;
SIGNAL \Deco0|Mux1~0_combout\ : std_logic;
SIGNAL \Deco0|Mux0~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_sw <= sw;
hex1 <= ww_hex1;
hex0 <= ww_hex0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X115_Y41_N2
\hex1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Deco1|Mux6~1_combout\,
	devoe => ww_devoe,
	o => \hex1[0]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\hex1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Deco1|Mux5~1_combout\,
	devoe => ww_devoe,
	o => \hex1[1]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\hex1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Deco1|Mux4~1_combout\,
	devoe => ww_devoe,
	o => \hex1[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\hex1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Deco1|Mux3~1_combout\,
	devoe => ww_devoe,
	o => \hex1[3]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\hex1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Deco1|Mux2~1_combout\,
	devoe => ww_devoe,
	o => \hex1[4]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\hex1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Deco1|Mux1~1_combout\,
	devoe => ww_devoe,
	o => \hex1[5]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\hex1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Deco1|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \hex1[6]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\hex0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Deco0|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \hex0[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\hex0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Deco0|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \hex0[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\hex0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Deco0|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \hex0[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\hex0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Deco0|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \hex0[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\hex0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Deco0|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \hex0[4]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\hex0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Deco0|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \hex0[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\hex0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Deco0|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \hex0[6]~output_o\);

-- Location: IOIBUF_X115_Y10_N1
\sw[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(6),
	o => \sw[6]~input_o\);

-- Location: IOIBUF_X115_Y4_N22
\sw[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(8),
	o => \sw[8]~input_o\);

-- Location: IOIBUF_X115_Y15_N8
\sw[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(2),
	o => \sw[2]~input_o\);

-- Location: LCCOMB_X114_Y14_N2
\Mux|S[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux|S[2]~2_combout\ = (\sw[8]~input_o\ & ((\sw[2]~input_o\))) # (!\sw[8]~input_o\ & (\sw[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw[6]~input_o\,
	datac => \sw[8]~input_o\,
	datad => \sw[2]~input_o\,
	combout => \Mux|S[2]~2_combout\);

-- Location: IOIBUF_X115_Y13_N8
\sw[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(3),
	o => \sw[3]~input_o\);

-- Location: IOIBUF_X115_Y15_N1
\sw[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(7),
	o => \sw[7]~input_o\);

-- Location: LCCOMB_X114_Y17_N2
\Mux|S[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux|S[3]~3_combout\ = (\sw[8]~input_o\ & (\sw[3]~input_o\)) # (!\sw[8]~input_o\ & ((\sw[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[3]~input_o\,
	datab => \sw[7]~input_o\,
	datac => \sw[8]~input_o\,
	combout => \Mux|S[3]~3_combout\);

-- Location: IOIBUF_X115_Y11_N8
\sw[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(5),
	o => \sw[5]~input_o\);

-- Location: IOIBUF_X115_Y14_N1
\sw[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(1),
	o => \sw[1]~input_o\);

-- Location: LCCOMB_X114_Y14_N0
\Mux|S[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux|S[1]~1_combout\ = (\sw[8]~input_o\ & ((\sw[1]~input_o\))) # (!\sw[8]~input_o\ & (\sw[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw[5]~input_o\,
	datac => \sw[8]~input_o\,
	datad => \sw[1]~input_o\,
	combout => \Mux|S[1]~1_combout\);

-- Location: IOIBUF_X115_Y18_N8
\sw[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(4),
	o => \sw[4]~input_o\);

-- Location: IOIBUF_X115_Y17_N1
\sw[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(0),
	o => \sw[0]~input_o\);

-- Location: LCCOMB_X114_Y17_N24
\Mux|S[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux|S[0]~0_combout\ = (\sw[8]~input_o\ & ((\sw[0]~input_o\))) # (!\sw[8]~input_o\ & (\sw[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[8]~input_o\,
	datac => \sw[4]~input_o\,
	datad => \sw[0]~input_o\,
	combout => \Mux|S[0]~0_combout\);

-- Location: LCCOMB_X114_Y25_N16
\Deco1|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Deco1|Mux6~0_combout\ = (\Mux|S[2]~2_combout\ & (!\Mux|S[1]~1_combout\ & (\Mux|S[3]~3_combout\ $ (!\Mux|S[0]~0_combout\)))) # (!\Mux|S[2]~2_combout\ & (\Mux|S[0]~0_combout\ & (\Mux|S[3]~3_combout\ $ (!\Mux|S[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux|S[2]~2_combout\,
	datab => \Mux|S[3]~3_combout\,
	datac => \Mux|S[1]~1_combout\,
	datad => \Mux|S[0]~0_combout\,
	combout => \Deco1|Mux6~0_combout\);

-- Location: LCCOMB_X114_Y25_N10
\Deco1|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Deco1|Mux6~1_combout\ = (\Deco1|Mux6~0_combout\) # (!\sw[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Deco1|Mux6~0_combout\,
	datad => \sw[8]~input_o\,
	combout => \Deco1|Mux6~1_combout\);

-- Location: LCCOMB_X114_Y25_N4
\Deco1|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Deco1|Mux5~0_combout\ = (\Mux|S[3]~3_combout\ & ((\Mux|S[0]~0_combout\ & ((\Mux|S[1]~1_combout\))) # (!\Mux|S[0]~0_combout\ & (\Mux|S[2]~2_combout\)))) # (!\Mux|S[3]~3_combout\ & (\Mux|S[2]~2_combout\ & (\Mux|S[1]~1_combout\ $ (\Mux|S[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux|S[2]~2_combout\,
	datab => \Mux|S[3]~3_combout\,
	datac => \Mux|S[1]~1_combout\,
	datad => \Mux|S[0]~0_combout\,
	combout => \Deco1|Mux5~0_combout\);

-- Location: LCCOMB_X114_Y28_N24
\Deco1|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Deco1|Mux5~1_combout\ = (\Deco1|Mux5~0_combout\) # (!\sw[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Deco1|Mux5~0_combout\,
	datad => \sw[8]~input_o\,
	combout => \Deco1|Mux5~1_combout\);

-- Location: LCCOMB_X114_Y25_N22
\Deco1|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Deco1|Mux4~0_combout\ = (\Mux|S[2]~2_combout\ & (\Mux|S[3]~3_combout\ & ((\Mux|S[1]~1_combout\) # (!\Mux|S[0]~0_combout\)))) # (!\Mux|S[2]~2_combout\ & (!\Mux|S[3]~3_combout\ & (\Mux|S[1]~1_combout\ & !\Mux|S[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux|S[2]~2_combout\,
	datab => \Mux|S[3]~3_combout\,
	datac => \Mux|S[1]~1_combout\,
	datad => \Mux|S[0]~0_combout\,
	combout => \Deco1|Mux4~0_combout\);

-- Location: LCCOMB_X114_Y25_N8
\Deco1|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Deco1|Mux4~1_combout\ = (\Deco1|Mux4~0_combout\) # (!\sw[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Deco1|Mux4~0_combout\,
	datad => \sw[8]~input_o\,
	combout => \Deco1|Mux4~1_combout\);

-- Location: LCCOMB_X114_Y25_N2
\Deco1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Deco1|Mux3~0_combout\ = (\Mux|S[1]~1_combout\ & ((\Mux|S[2]~2_combout\ & ((\Mux|S[0]~0_combout\))) # (!\Mux|S[2]~2_combout\ & (\Mux|S[3]~3_combout\ & !\Mux|S[0]~0_combout\)))) # (!\Mux|S[1]~1_combout\ & (!\Mux|S[3]~3_combout\ & (\Mux|S[2]~2_combout\ $ 
-- (\Mux|S[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux|S[2]~2_combout\,
	datab => \Mux|S[3]~3_combout\,
	datac => \Mux|S[1]~1_combout\,
	datad => \Mux|S[0]~0_combout\,
	combout => \Deco1|Mux3~0_combout\);

-- Location: LCCOMB_X114_Y28_N26
\Deco1|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Deco1|Mux3~1_combout\ = (\Deco1|Mux3~0_combout\) # (!\sw[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Deco1|Mux3~0_combout\,
	datad => \sw[8]~input_o\,
	combout => \Deco1|Mux3~1_combout\);

-- Location: LCCOMB_X114_Y25_N12
\Deco1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Deco1|Mux2~0_combout\ = (\Mux|S[1]~1_combout\ & (((!\Mux|S[3]~3_combout\ & \Mux|S[0]~0_combout\)))) # (!\Mux|S[1]~1_combout\ & ((\Mux|S[2]~2_combout\ & (!\Mux|S[3]~3_combout\)) # (!\Mux|S[2]~2_combout\ & ((\Mux|S[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux|S[2]~2_combout\,
	datab => \Mux|S[3]~3_combout\,
	datac => \Mux|S[1]~1_combout\,
	datad => \Mux|S[0]~0_combout\,
	combout => \Deco1|Mux2~0_combout\);

-- Location: LCCOMB_X114_Y25_N30
\Deco1|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Deco1|Mux2~1_combout\ = (\Deco1|Mux2~0_combout\) # (!\sw[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Deco1|Mux2~0_combout\,
	datad => \sw[8]~input_o\,
	combout => \Deco1|Mux2~1_combout\);

-- Location: LCCOMB_X114_Y25_N24
\Deco1|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Deco1|Mux1~0_combout\ = (\Mux|S[2]~2_combout\ & (\Mux|S[0]~0_combout\ & (\Mux|S[3]~3_combout\ $ (\Mux|S[1]~1_combout\)))) # (!\Mux|S[2]~2_combout\ & (!\Mux|S[3]~3_combout\ & ((\Mux|S[1]~1_combout\) # (\Mux|S[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux|S[2]~2_combout\,
	datab => \Mux|S[3]~3_combout\,
	datac => \Mux|S[1]~1_combout\,
	datad => \Mux|S[0]~0_combout\,
	combout => \Deco1|Mux1~0_combout\);

-- Location: LCCOMB_X114_Y25_N18
\Deco1|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Deco1|Mux1~1_combout\ = (\Deco1|Mux1~0_combout\) # (!\sw[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Deco1|Mux1~0_combout\,
	datad => \sw[8]~input_o\,
	combout => \Deco1|Mux1~1_combout\);

-- Location: LCCOMB_X114_Y25_N28
\Deco1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Deco1|Mux0~0_combout\ = (\Mux|S[0]~0_combout\ & ((\Mux|S[3]~3_combout\) # (\Mux|S[2]~2_combout\ $ (\Mux|S[1]~1_combout\)))) # (!\Mux|S[0]~0_combout\ & ((\Mux|S[1]~1_combout\) # (\Mux|S[2]~2_combout\ $ (\Mux|S[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux|S[2]~2_combout\,
	datab => \Mux|S[3]~3_combout\,
	datac => \Mux|S[1]~1_combout\,
	datad => \Mux|S[0]~0_combout\,
	combout => \Deco1|Mux0~0_combout\);

-- Location: LCCOMB_X114_Y28_N4
\Deco1|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Deco1|Mux0~1_combout\ = (!\sw[8]~input_o\) # (!\Deco1|Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Deco1|Mux0~0_combout\,
	datad => \sw[8]~input_o\,
	combout => \Deco1|Mux0~1_combout\);

-- Location: LCCOMB_X114_Y25_N14
\Deco0|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Deco0|Mux6~0_combout\ = (\Deco1|Mux6~0_combout\) # (\sw[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Deco1|Mux6~0_combout\,
	datad => \sw[8]~input_o\,
	combout => \Deco0|Mux6~0_combout\);

-- Location: LCCOMB_X114_Y28_N6
\Deco0|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Deco0|Mux5~0_combout\ = (\Deco1|Mux5~0_combout\) # (\sw[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Deco1|Mux5~0_combout\,
	datad => \sw[8]~input_o\,
	combout => \Deco0|Mux5~0_combout\);

-- Location: LCCOMB_X114_Y28_N0
\Deco0|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Deco0|Mux4~0_combout\ = (\Deco1|Mux4~0_combout\) # (\sw[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Deco1|Mux4~0_combout\,
	datad => \sw[8]~input_o\,
	combout => \Deco0|Mux4~0_combout\);

-- Location: LCCOMB_X114_Y28_N2
\Deco0|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Deco0|Mux3~0_combout\ = (\Deco1|Mux3~0_combout\) # (\sw[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Deco1|Mux3~0_combout\,
	datad => \sw[8]~input_o\,
	combout => \Deco0|Mux3~0_combout\);

-- Location: LCCOMB_X114_Y25_N0
\Deco0|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Deco0|Mux2~0_combout\ = (\Deco1|Mux2~0_combout\) # (\sw[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Deco1|Mux2~0_combout\,
	datad => \sw[8]~input_o\,
	combout => \Deco0|Mux2~0_combout\);

-- Location: LCCOMB_X114_Y28_N12
\Deco0|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Deco0|Mux1~0_combout\ = (\Deco1|Mux1~0_combout\) # (\sw[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Deco1|Mux1~0_combout\,
	datad => \sw[8]~input_o\,
	combout => \Deco0|Mux1~0_combout\);

-- Location: LCCOMB_X114_Y28_N14
\Deco0|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Deco0|Mux0~0_combout\ = (\sw[8]~input_o\) # (!\Deco1|Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Deco1|Mux0~0_combout\,
	datad => \sw[8]~input_o\,
	combout => \Deco0|Mux0~0_combout\);

ww_hex1(0) <= \hex1[0]~output_o\;

ww_hex1(1) <= \hex1[1]~output_o\;

ww_hex1(2) <= \hex1[2]~output_o\;

ww_hex1(3) <= \hex1[3]~output_o\;

ww_hex1(4) <= \hex1[4]~output_o\;

ww_hex1(5) <= \hex1[5]~output_o\;

ww_hex1(6) <= \hex1[6]~output_o\;

ww_hex0(0) <= \hex0[0]~output_o\;

ww_hex0(1) <= \hex0[1]~output_o\;

ww_hex0(2) <= \hex0[2]~output_o\;

ww_hex0(3) <= \hex0[3]~output_o\;

ww_hex0(4) <= \hex0[4]~output_o\;

ww_hex0(5) <= \hex0[5]~output_o\;

ww_hex0(6) <= \hex0[6]~output_o\;
END structure;


