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

-- DATE "10/04/2023 15:10:00"

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
SIGNAL a_aALTERA_ASDO_DATA1_a_apadout : std_logic;
SIGNAL a_aALTERA_FLASH_nCE_nCSO_a_apadout : std_logic;
SIGNAL a_aALTERA_DATA0_a_apadout : std_logic;
SIGNAL a_aALTERA_ASDO_DATA1_a_aibuf_o : std_logic;
SIGNAL a_aALTERA_FLASH_nCE_nCSO_a_aibuf_o : std_logic;
SIGNAL a_aALTERA_DATA0_a_aibuf_o : std_logic;
SIGNAL a_aALTERA_ASDO_DATA1_a_aibuf_I_driver : std_logic;
SIGNAL a_aALTERA_FLASH_nCE_nCSO_a_aibuf_I_driver : std_logic;
SIGNAL a_aALTERA_DATA0_a_aibuf_I_driver : std_logic;

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

ENTITY 	Carte_DE2_115 IS
    PORT (
	SW : IN std_logic_vector(17 DOWNTO 0);
	Key : IN std_logic_vector(3 DOWNTO 0);
	LEDR : OUT std_logic_vector(17 DOWNTO 0);
	LEDG : OUT std_logic_vector(7 DOWNTO 0);
	Hex0 : OUT std_logic_vector(6 DOWNTO 0)
	);
END Carte_DE2_115;

-- Design Ports Information
-- SW[8]	=>  Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_AC24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Key[2]	=>  Location: PIN_N21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Key[3]	=>  Location: PIN_R24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[10]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[11]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[12]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[13]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[14]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[15]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[16]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[17]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[2]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[3]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[4]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[5]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[6]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[7]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex0[3]	=>  Location: PIN_L26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- Hex0[4]	=>  Location: PIN_L25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- Hex0[5]	=>  Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- Hex0[6]	=>  Location: PIN_H22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Key[0]	=>  Location: PIN_M23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Key[1]	=>  Location: PIN_M21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[17]	=>  Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[15]	=>  Location: PIN_AA22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[14]	=>  Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[16]	=>  Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[12]	=>  Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[13]	=>  Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Carte_DE2_115 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SW : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_Key : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Hex0 : std_logic_vector(6 DOWNTO 0);
SIGNAL SW_a8_a_ainput_o : std_logic;
SIGNAL SW_a9_a_ainput_o : std_logic;
SIGNAL SW_a10_a_ainput_o : std_logic;
SIGNAL SW_a11_a_ainput_o : std_logic;
SIGNAL Key_a2_a_ainput_o : std_logic;
SIGNAL Key_a3_a_ainput_o : std_logic;
SIGNAL LEDR_a0_a_aoutput_o : std_logic;
SIGNAL LEDR_a1_a_aoutput_o : std_logic;
SIGNAL LEDR_a2_a_aoutput_o : std_logic;
SIGNAL LEDR_a3_a_aoutput_o : std_logic;
SIGNAL LEDR_a4_a_aoutput_o : std_logic;
SIGNAL LEDR_a5_a_aoutput_o : std_logic;
SIGNAL LEDR_a6_a_aoutput_o : std_logic;
SIGNAL LEDR_a7_a_aoutput_o : std_logic;
SIGNAL LEDR_a8_a_aoutput_o : std_logic;
SIGNAL LEDR_a9_a_aoutput_o : std_logic;
SIGNAL LEDR_a10_a_aoutput_o : std_logic;
SIGNAL LEDR_a11_a_aoutput_o : std_logic;
SIGNAL LEDR_a12_a_aoutput_o : std_logic;
SIGNAL LEDR_a13_a_aoutput_o : std_logic;
SIGNAL LEDR_a14_a_aoutput_o : std_logic;
SIGNAL LEDR_a15_a_aoutput_o : std_logic;
SIGNAL LEDR_a16_a_aoutput_o : std_logic;
SIGNAL LEDR_a17_a_aoutput_o : std_logic;
SIGNAL LEDG_a0_a_aoutput_o : std_logic;
SIGNAL LEDG_a1_a_aoutput_o : std_logic;
SIGNAL LEDG_a2_a_aoutput_o : std_logic;
SIGNAL LEDG_a3_a_aoutput_o : std_logic;
SIGNAL LEDG_a4_a_aoutput_o : std_logic;
SIGNAL LEDG_a5_a_aoutput_o : std_logic;
SIGNAL LEDG_a6_a_aoutput_o : std_logic;
SIGNAL LEDG_a7_a_aoutput_o : std_logic;
SIGNAL Hex0_a0_a_aoutput_o : std_logic;
SIGNAL Hex0_a1_a_aoutput_o : std_logic;
SIGNAL Hex0_a2_a_aoutput_o : std_logic;
SIGNAL Hex0_a3_a_aoutput_o : std_logic;
SIGNAL Hex0_a4_a_aoutput_o : std_logic;
SIGNAL Hex0_a5_a_aoutput_o : std_logic;
SIGNAL Hex0_a6_a_aoutput_o : std_logic;
SIGNAL Key_a0_a_ainput_o : std_logic;
SIGNAL SW_a0_a_ainput_o : std_logic;
SIGNAL registre_aq_a0_a_afeeder_combout : std_logic;
SIGNAL Key_a1_a_ainput_o : std_logic;
SIGNAL SW_a17_a_ainput_o : std_logic;
SIGNAL SW_a1_a_ainput_o : std_logic;
SIGNAL SW_a2_a_ainput_o : std_logic;
SIGNAL registre_aq_a2_a_afeeder_combout : std_logic;
SIGNAL SW_a3_a_ainput_o : std_logic;
SIGNAL SW_a4_a_ainput_o : std_logic;
SIGNAL registre_aq_a4_a_afeeder_combout : std_logic;
SIGNAL SW_a5_a_ainput_o : std_logic;
SIGNAL SW_a6_a_ainput_o : std_logic;
SIGNAL SW_a7_a_ainput_o : std_logic;
SIGNAL registre_aq_a7_a_afeeder_combout : std_logic;
SIGNAL SW_a14_a_ainput_o : std_logic;
SIGNAL SW_a15_a_ainput_o : std_logic;
SIGNAL registre_dec_aq_sig_a9_combout : std_logic;
SIGNAL registre_dec_aq_sig_a7_a_a7_combout : std_logic;
SIGNAL SW_a16_a_ainput_o : std_logic;
SIGNAL registre_dec_aq_sig_a6_a_a6_combout : std_logic;
SIGNAL registre_dec_aq_sig_a1_a_a8_combout : std_logic;
SIGNAL registre_dec_aq_sig_a5_a_a5_combout : std_logic;
SIGNAL registre_dec_aq_sig_a4_a_a4_combout : std_logic;
SIGNAL registre_dec_aq_sig_a3_a_a3_combout : std_logic;
SIGNAL registre_dec_aq_sig_a2_a_a2_combout : std_logic;
SIGNAL registre_dec_aq_sig_a1_a_a1_combout : std_logic;
SIGNAL registre_dec_aq_sig_a0_a_a0_combout : std_logic;
SIGNAL SW_a12_a_ainput_o : std_logic;
SIGNAL compteur_aq_sig_a3_combout : std_logic;
SIGNAL SW_a13_a_ainput_o : std_logic;
SIGNAL compteur_aq_sig_a1_a_a5_cout : std_logic;
SIGNAL compteur_aq_sig_a1_a_a6_combout : std_logic;
SIGNAL compteur_aq_sig_a1_a_a7 : std_logic;
SIGNAL compteur_aq_sig_a2_a_a8_combout : std_logic;
SIGNAL compteur_aq_sig_a2_a_a9 : std_logic;
SIGNAL compteur_aq_sig_a3_a_a10_combout : std_logic;
SIGNAL deco7seg_aMux6_a0_combout : std_logic;
SIGNAL deco7seg_aMux5_a0_combout : std_logic;
SIGNAL deco7seg_aMux4_a0_combout : std_logic;
SIGNAL deco7seg_aMux3_a0_combout : std_logic;
SIGNAL deco7seg_aMux2_a0_combout : std_logic;
SIGNAL deco7seg_aMux1_a0_combout : std_logic;
SIGNAL deco7seg_aMux0_a0_combout : std_logic;
SIGNAL registre_dec_aq_sig : std_logic_vector(7 DOWNTO 0);
SIGNAL compteur_aq_sig : std_logic_vector(3 DOWNTO 0);
SIGNAL registre_aq : std_logic_vector(7 DOWNTO 0);
SIGNAL ALT_INV_deco7seg_aMux0_a0_combout : std_logic;
SIGNAL LEDR_a0_a_aoutput_I_driver : std_logic;
SIGNAL LEDR_a1_a_aoutput_I_driver : std_logic;
SIGNAL LEDR_a2_a_aoutput_I_driver : std_logic;
SIGNAL LEDR_a3_a_aoutput_I_driver : std_logic;
SIGNAL LEDR_a4_a_aoutput_I_driver : std_logic;
SIGNAL LEDR_a5_a_aoutput_I_driver : std_logic;
SIGNAL LEDR_a6_a_aoutput_I_driver : std_logic;
SIGNAL LEDR_a7_a_aoutput_I_driver : std_logic;
SIGNAL LEDR_a8_a_aoutput_I_driver : std_logic;
SIGNAL LEDR_a9_a_aoutput_I_driver : std_logic;
SIGNAL LEDR_a10_a_aoutput_I_driver : std_logic;
SIGNAL LEDR_a11_a_aoutput_I_driver : std_logic;
SIGNAL LEDR_a12_a_aoutput_I_driver : std_logic;
SIGNAL LEDR_a13_a_aoutput_I_driver : std_logic;
SIGNAL LEDR_a14_a_aoutput_I_driver : std_logic;
SIGNAL LEDR_a15_a_aoutput_I_driver : std_logic;
SIGNAL LEDG_a0_a_aoutput_I_driver : std_logic;
SIGNAL LEDG_a1_a_aoutput_I_driver : std_logic;
SIGNAL LEDG_a2_a_aoutput_I_driver : std_logic;
SIGNAL LEDG_a3_a_aoutput_I_driver : std_logic;
SIGNAL Hex0_a0_a_aoutput_I_driver : std_logic;
SIGNAL Hex0_a1_a_aoutput_I_driver : std_logic;
SIGNAL Hex0_a2_a_aoutput_I_driver : std_logic;
SIGNAL Hex0_a3_a_aoutput_I_driver : std_logic;
SIGNAL Hex0_a4_a_aoutput_I_driver : std_logic;
SIGNAL Hex0_a5_a_aoutput_I_driver : std_logic;
SIGNAL Hex0_a6_a_aoutput_I_driver : std_logic;
SIGNAL Key_a0_a_ainput_I_driver : std_logic;
SIGNAL SW_a0_a_ainput_I_driver : std_logic;
SIGNAL registre_aq_a0_a_afeeder_DATAD_driver : std_logic;
SIGNAL Key_a1_a_ainput_I_driver : std_logic;
SIGNAL SW_a17_a_ainput_I_driver : std_logic;
SIGNAL registre_aq_a0_a_CLK_driver : std_logic;
SIGNAL registre_aq_a0_a_D_driver : std_logic;
SIGNAL registre_aq_a0_a_CLRN_driver : std_logic;
SIGNAL registre_aq_a0_a_ENA_driver : std_logic;
SIGNAL SW_a1_a_ainput_I_driver : std_logic;
SIGNAL registre_aq_a1_a_CLK_driver : std_logic;
SIGNAL registre_aq_a1_a_ASDATA_driver : std_logic;
SIGNAL registre_aq_a1_a_CLRN_driver : std_logic;
SIGNAL registre_aq_a1_a_ENA_driver : std_logic;
SIGNAL SW_a2_a_ainput_I_driver : std_logic;
SIGNAL registre_aq_a2_a_afeeder_DATAD_driver : std_logic;
SIGNAL registre_aq_a2_a_CLK_driver : std_logic;
SIGNAL registre_aq_a2_a_D_driver : std_logic;
SIGNAL registre_aq_a2_a_CLRN_driver : std_logic;
SIGNAL registre_aq_a2_a_ENA_driver : std_logic;
SIGNAL SW_a3_a_ainput_I_driver : std_logic;
SIGNAL registre_aq_a3_a_CLK_driver : std_logic;
SIGNAL registre_aq_a3_a_ASDATA_driver : std_logic;
SIGNAL registre_aq_a3_a_CLRN_driver : std_logic;
SIGNAL registre_aq_a3_a_ENA_driver : std_logic;
SIGNAL SW_a4_a_ainput_I_driver : std_logic;
SIGNAL registre_aq_a4_a_afeeder_DATAD_driver : std_logic;
SIGNAL registre_aq_a4_a_CLK_driver : std_logic;
SIGNAL registre_aq_a4_a_D_driver : std_logic;
SIGNAL registre_aq_a4_a_CLRN_driver : std_logic;
SIGNAL registre_aq_a4_a_ENA_driver : std_logic;
SIGNAL SW_a5_a_ainput_I_driver : std_logic;
SIGNAL registre_aq_a5_a_CLK_driver : std_logic;
SIGNAL registre_aq_a5_a_ASDATA_driver : std_logic;
SIGNAL registre_aq_a5_a_CLRN_driver : std_logic;
SIGNAL registre_aq_a5_a_ENA_driver : std_logic;
SIGNAL SW_a6_a_ainput_I_driver : std_logic;
SIGNAL registre_aq_a6_a_CLK_driver : std_logic;
SIGNAL registre_aq_a6_a_ASDATA_driver : std_logic;
SIGNAL registre_aq_a6_a_CLRN_driver : std_logic;
SIGNAL registre_aq_a6_a_ENA_driver : std_logic;
SIGNAL SW_a7_a_ainput_I_driver : std_logic;
SIGNAL registre_aq_a7_a_afeeder_DATAD_driver : std_logic;
SIGNAL registre_aq_a7_a_CLK_driver : std_logic;
SIGNAL registre_aq_a7_a_D_driver : std_logic;
SIGNAL registre_aq_a7_a_CLRN_driver : std_logic;
SIGNAL registre_aq_a7_a_ENA_driver : std_logic;
SIGNAL SW_a14_a_ainput_I_driver : std_logic;
SIGNAL SW_a15_a_ainput_I_driver : std_logic;
SIGNAL registre_dec_aq_sig_a9_DATAA_driver : std_logic;
SIGNAL registre_dec_aq_sig_a9_DATAD_driver : std_logic;
SIGNAL registre_dec_aq_sig_a7_a_a7_DATAB_driver : std_logic;
SIGNAL registre_dec_aq_sig_a7_a_a7_DATAC_driver : std_logic;
SIGNAL registre_dec_aq_sig_a7_a_a7_DATAD_driver : std_logic;
SIGNAL SW_a16_a_ainput_I_driver : std_logic;
SIGNAL registre_dec_aq_sig_a7_a_CLK_driver : std_logic;
SIGNAL registre_dec_aq_sig_a7_a_D_driver : std_logic;
SIGNAL registre_dec_aq_sig_a7_a_ASDATA_driver : std_logic;
SIGNAL registre_dec_aq_sig_a7_a_CLRN_driver : std_logic;
SIGNAL registre_dec_aq_sig_a7_a_SLOAD_driver : std_logic;
SIGNAL registre_dec_aq_sig_a6_a_a6_DATAA_driver : std_logic;
SIGNAL registre_dec_aq_sig_a6_a_a6_DATAB_driver : std_logic;
SIGNAL registre_dec_aq_sig_a6_a_a6_DATAD_driver : std_logic;
SIGNAL registre_dec_aq_sig_a1_a_a8_DATAA_driver : std_logic;
SIGNAL registre_dec_aq_sig_a1_a_a8_DATAD_driver : std_logic;
SIGNAL registre_dec_aq_sig_a6_a_CLK_driver : std_logic;
SIGNAL registre_dec_aq_sig_a6_a_D_driver : std_logic;
SIGNAL registre_dec_aq_sig_a6_a_ASDATA_driver : std_logic;
SIGNAL registre_dec_aq_sig_a6_a_CLRN_driver : std_logic;
SIGNAL registre_dec_aq_sig_a6_a_SLOAD_driver : std_logic;
SIGNAL registre_dec_aq_sig_a6_a_ENA_driver : std_logic;
SIGNAL registre_dec_aq_sig_a5_a_a5_DATAA_driver : std_logic;
SIGNAL registre_dec_aq_sig_a5_a_a5_DATAB_driver : std_logic;
SIGNAL registre_dec_aq_sig_a5_a_a5_DATAD_driver : std_logic;
SIGNAL registre_dec_aq_sig_a5_a_CLK_driver : std_logic;
SIGNAL registre_dec_aq_sig_a5_a_D_driver : std_logic;
SIGNAL registre_dec_aq_sig_a5_a_ASDATA_driver : std_logic;
SIGNAL registre_dec_aq_sig_a5_a_CLRN_driver : std_logic;
SIGNAL registre_dec_aq_sig_a5_a_SLOAD_driver : std_logic;
SIGNAL registre_dec_aq_sig_a5_a_ENA_driver : std_logic;
SIGNAL registre_dec_aq_sig_a4_a_a4_DATAA_driver : std_logic;
SIGNAL registre_dec_aq_sig_a4_a_a4_DATAB_driver : std_logic;
SIGNAL registre_dec_aq_sig_a4_a_a4_DATAD_driver : std_logic;
SIGNAL registre_dec_aq_sig_a4_a_CLK_driver : std_logic;
SIGNAL registre_dec_aq_sig_a4_a_D_driver : std_logic;
SIGNAL registre_dec_aq_sig_a4_a_ASDATA_driver : std_logic;
SIGNAL registre_dec_aq_sig_a4_a_CLRN_driver : std_logic;
SIGNAL registre_dec_aq_sig_a4_a_SLOAD_driver : std_logic;
SIGNAL registre_dec_aq_sig_a4_a_ENA_driver : std_logic;
SIGNAL registre_dec_aq_sig_a3_a_a3_DATAA_driver : std_logic;
SIGNAL registre_dec_aq_sig_a3_a_a3_DATAB_driver : std_logic;
SIGNAL registre_dec_aq_sig_a3_a_a3_DATAD_driver : std_logic;
SIGNAL registre_dec_aq_sig_a3_a_CLK_driver : std_logic;
SIGNAL registre_dec_aq_sig_a3_a_D_driver : std_logic;
SIGNAL registre_dec_aq_sig_a3_a_ASDATA_driver : std_logic;
SIGNAL registre_dec_aq_sig_a3_a_CLRN_driver : std_logic;
SIGNAL registre_dec_aq_sig_a3_a_SLOAD_driver : std_logic;
SIGNAL registre_dec_aq_sig_a3_a_ENA_driver : std_logic;
SIGNAL registre_dec_aq_sig_a2_a_a2_DATAA_driver : std_logic;
SIGNAL registre_dec_aq_sig_a2_a_a2_DATAB_driver : std_logic;
SIGNAL registre_dec_aq_sig_a2_a_a2_DATAD_driver : std_logic;
SIGNAL registre_dec_aq_sig_a2_a_CLK_driver : std_logic;
SIGNAL registre_dec_aq_sig_a2_a_D_driver : std_logic;
SIGNAL registre_dec_aq_sig_a2_a_ASDATA_driver : std_logic;
SIGNAL registre_dec_aq_sig_a2_a_CLRN_driver : std_logic;
SIGNAL registre_dec_aq_sig_a2_a_SLOAD_driver : std_logic;
SIGNAL registre_dec_aq_sig_a2_a_ENA_driver : std_logic;
SIGNAL registre_dec_aq_sig_a1_a_a1_DATAA_driver : std_logic;
SIGNAL registre_dec_aq_sig_a1_a_a1_DATAB_driver : std_logic;
SIGNAL registre_dec_aq_sig_a1_a_a1_DATAD_driver : std_logic;
SIGNAL registre_dec_aq_sig_a1_a_CLK_driver : std_logic;
SIGNAL registre_dec_aq_sig_a1_a_D_driver : std_logic;
SIGNAL registre_dec_aq_sig_a1_a_ASDATA_driver : std_logic;
SIGNAL registre_dec_aq_sig_a1_a_CLRN_driver : std_logic;
SIGNAL registre_dec_aq_sig_a1_a_SLOAD_driver : std_logic;
SIGNAL registre_dec_aq_sig_a1_a_ENA_driver : std_logic;
SIGNAL registre_dec_aq_sig_a0_a_a0_DATAA_driver : std_logic;
SIGNAL registre_dec_aq_sig_a0_a_a0_DATAB_driver : std_logic;
SIGNAL registre_dec_aq_sig_a0_a_a0_DATAC_driver : std_logic;
SIGNAL registre_dec_aq_sig_a0_a_a0_DATAD_driver : std_logic;
SIGNAL registre_dec_aq_sig_a0_a_CLK_driver : std_logic;
SIGNAL registre_dec_aq_sig_a0_a_D_driver : std_logic;
SIGNAL registre_dec_aq_sig_a0_a_ASDATA_driver : std_logic;
SIGNAL registre_dec_aq_sig_a0_a_CLRN_driver : std_logic;
SIGNAL registre_dec_aq_sig_a0_a_SLOAD_driver : std_logic;
SIGNAL SW_a12_a_ainput_I_driver : std_logic;
SIGNAL compteur_aq_sig_a3_DATAB_driver : std_logic;
SIGNAL compteur_aq_sig_a3_DATAC_driver : std_logic;
SIGNAL compteur_aq_sig_a3_DATAD_driver : std_logic;
SIGNAL compteur_aq_sig_a0_a_CLK_driver : std_logic;
SIGNAL compteur_aq_sig_a0_a_D_driver : std_logic;
SIGNAL compteur_aq_sig_a0_a_CLRN_driver : std_logic;
SIGNAL SW_a13_a_ainput_I_driver : std_logic;
SIGNAL compteur_aq_sig_a1_a_a5_DATAA_driver : std_logic;
SIGNAL compteur_aq_sig_a1_a_a6_DATAA_driver : std_logic;
SIGNAL compteur_aq_sig_a1_a_a6_DATAB_driver : std_logic;
SIGNAL compteur_aq_sig_a1_a_a6_CIN_driver : std_logic;
SIGNAL compteur_aq_sig_a1_a_CLK_driver : std_logic;
SIGNAL compteur_aq_sig_a1_a_D_driver : std_logic;
SIGNAL compteur_aq_sig_a1_a_ASDATA_driver : std_logic;
SIGNAL compteur_aq_sig_a1_a_CLRN_driver : std_logic;
SIGNAL compteur_aq_sig_a1_a_SLOAD_driver : std_logic;
SIGNAL compteur_aq_sig_a2_a_a8_DATAA_driver : std_logic;
SIGNAL compteur_aq_sig_a2_a_a8_DATAB_driver : std_logic;
SIGNAL compteur_aq_sig_a2_a_a8_CIN_driver : std_logic;
SIGNAL compteur_aq_sig_a2_a_CLK_driver : std_logic;
SIGNAL compteur_aq_sig_a2_a_D_driver : std_logic;
SIGNAL compteur_aq_sig_a2_a_ASDATA_driver : std_logic;
SIGNAL compteur_aq_sig_a2_a_CLRN_driver : std_logic;
SIGNAL compteur_aq_sig_a2_a_SLOAD_driver : std_logic;
SIGNAL compteur_aq_sig_a3_a_a10_DATAB_driver : std_logic;
SIGNAL compteur_aq_sig_a3_a_a10_DATAD_driver : std_logic;
SIGNAL compteur_aq_sig_a3_a_a10_CIN_driver : std_logic;
SIGNAL compteur_aq_sig_a3_a_CLK_driver : std_logic;
SIGNAL compteur_aq_sig_a3_a_D_driver : std_logic;
SIGNAL compteur_aq_sig_a3_a_ASDATA_driver : std_logic;
SIGNAL compteur_aq_sig_a3_a_CLRN_driver : std_logic;
SIGNAL compteur_aq_sig_a3_a_SLOAD_driver : std_logic;
SIGNAL deco7seg_aMux6_a0_DATAA_driver : std_logic;
SIGNAL deco7seg_aMux6_a0_DATAB_driver : std_logic;
SIGNAL deco7seg_aMux6_a0_DATAC_driver : std_logic;
SIGNAL deco7seg_aMux6_a0_DATAD_driver : std_logic;
SIGNAL deco7seg_aMux5_a0_DATAA_driver : std_logic;
SIGNAL deco7seg_aMux5_a0_DATAB_driver : std_logic;
SIGNAL deco7seg_aMux5_a0_DATAC_driver : std_logic;
SIGNAL deco7seg_aMux5_a0_DATAD_driver : std_logic;
SIGNAL deco7seg_aMux4_a0_DATAA_driver : std_logic;
SIGNAL deco7seg_aMux4_a0_DATAB_driver : std_logic;
SIGNAL deco7seg_aMux4_a0_DATAC_driver : std_logic;
SIGNAL deco7seg_aMux4_a0_DATAD_driver : std_logic;
SIGNAL deco7seg_aMux3_a0_DATAA_driver : std_logic;
SIGNAL deco7seg_aMux3_a0_DATAB_driver : std_logic;
SIGNAL deco7seg_aMux3_a0_DATAC_driver : std_logic;
SIGNAL deco7seg_aMux3_a0_DATAD_driver : std_logic;
SIGNAL deco7seg_aMux2_a0_DATAA_driver : std_logic;
SIGNAL deco7seg_aMux2_a0_DATAB_driver : std_logic;
SIGNAL deco7seg_aMux2_a0_DATAC_driver : std_logic;
SIGNAL deco7seg_aMux2_a0_DATAD_driver : std_logic;
SIGNAL deco7seg_aMux1_a0_DATAA_driver : std_logic;
SIGNAL deco7seg_aMux1_a0_DATAB_driver : std_logic;
SIGNAL deco7seg_aMux1_a0_DATAC_driver : std_logic;
SIGNAL deco7seg_aMux1_a0_DATAD_driver : std_logic;
SIGNAL deco7seg_aMux0_a0_DATAA_driver : std_logic;
SIGNAL deco7seg_aMux0_a0_DATAB_driver : std_logic;
SIGNAL deco7seg_aMux0_a0_DATAC_driver : std_logic;
SIGNAL deco7seg_aMux0_a0_DATAD_driver : std_logic;
SIGNAL SW_a8_a_ainput_I_driver : std_logic;
SIGNAL SW_a9_a_ainput_I_driver : std_logic;
SIGNAL SW_a10_a_ainput_I_driver : std_logic;
SIGNAL SW_a11_a_ainput_I_driver : std_logic;
SIGNAL Key_a2_a_ainput_I_driver : std_logic;
SIGNAL Key_a3_a_ainput_I_driver : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_SW <= SW;
ww_Key <= Key;
LEDR <= ww_LEDR;
LEDG <= ww_LEDG;
Hex0 <= ww_Hex0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
ALT_INV_deco7seg_aMux0_a0_combout <= NOT deco7seg_aMux0_a0_combout;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

LEDR_a0_a_aoutput_I_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => registre_aq(0),
	dataout => LEDR_a0_a_aoutput_I_driver);

-- Location: IOOBUF_X69_Y73_N16
LEDR_a0_a_aoutput : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => LEDR_a0_a_aoutput_I_driver,
	devoe => ww_devoe,
	o => LEDR_a0_a_aoutput_o);

LEDR_a1_a_aoutput_I_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => registre_aq(1),
	dataout => LEDR_a1_a_aoutput_I_driver);

-- Location: IOOBUF_X94_Y73_N2
LEDR_a1_a_aoutput : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => LEDR_a1_a_aoutput_I_driver,
	devoe => ww_devoe,
	o => LEDR_a1_a_aoutput_o);

LEDR_a2_a_aoutput_I_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => registre_aq(2),
	dataout => LEDR_a2_a_aoutput_I_driver);

-- Location: IOOBUF_X94_Y73_N9
LEDR_a2_a_aoutput : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => LEDR_a2_a_aoutput_I_driver,
	devoe => ww_devoe,
	o => LEDR_a2_a_aoutput_o);

LEDR_a3_a_aoutput_I_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => registre_aq(3),
	dataout => LEDR_a3_a_aoutput_I_driver);

-- Location: IOOBUF_X107_Y73_N16
LEDR_a3_a_aoutput : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => LEDR_a3_a_aoutput_I_driver,
	devoe => ww_devoe,
	o => LEDR_a3_a_aoutput_o);

LEDR_a4_a_aoutput_I_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => registre_aq(4),
	dataout => LEDR_a4_a_aoutput_I_driver);

-- Location: IOOBUF_X87_Y73_N16
LEDR_a4_a_aoutput : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => LEDR_a4_a_aoutput_I_driver,
	devoe => ww_devoe,
	o => LEDR_a4_a_aoutput_o);

LEDR_a5_a_aoutput_I_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => registre_aq(5),
	dataout => LEDR_a5_a_aoutput_I_driver);

-- Location: IOOBUF_X87_Y73_N9
LEDR_a5_a_aoutput : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => LEDR_a5_a_aoutput_I_driver,
	devoe => ww_devoe,
	o => LEDR_a5_a_aoutput_o);

LEDR_a6_a_aoutput_I_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => registre_aq(6),
	dataout => LEDR_a6_a_aoutput_I_driver);

-- Location: IOOBUF_X72_Y73_N9
LEDR_a6_a_aoutput : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => LEDR_a6_a_aoutput_I_driver,
	devoe => ww_devoe,
	o => LEDR_a6_a_aoutput_o);

LEDR_a7_a_aoutput_I_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => registre_aq(7),
	dataout => LEDR_a7_a_aoutput_I_driver);

-- Location: IOOBUF_X72_Y73_N2
LEDR_a7_a_aoutput : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => LEDR_a7_a_aoutput_I_driver,
	devoe => ww_devoe,
	o => LEDR_a7_a_aoutput_o);

LEDR_a8_a_aoutput_I_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => registre_dec_aq_sig(0),
	dataout => LEDR_a8_a_aoutput_I_driver);

-- Location: IOOBUF_X69_Y73_N2
LEDR_a8_a_aoutput : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => LEDR_a8_a_aoutput_I_driver,
	devoe => ww_devoe,
	o => LEDR_a8_a_aoutput_o);

LEDR_a9_a_aoutput_I_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => registre_dec_aq_sig(1),
	dataout => LEDR_a9_a_aoutput_I_driver);

-- Location: IOOBUF_X83_Y73_N23
LEDR_a9_a_aoutput : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => LEDR_a9_a_aoutput_I_driver,
	devoe => ww_devoe,
	o => LEDR_a9_a_aoutput_o);

LEDR_a10_a_aoutput_I_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => registre_dec_aq_sig(2),
	dataout => LEDR_a10_a_aoutput_I_driver);

-- Location: IOOBUF_X60_Y73_N23
LEDR_a10_a_aoutput : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => LEDR_a10_a_aoutput_I_driver,
	devoe => ww_devoe,
	o => LEDR_a10_a_aoutput_o);

LEDR_a11_a_aoutput_I_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => registre_dec_aq_sig(3),
	dataout => LEDR_a11_a_aoutput_I_driver);

-- Location: IOOBUF_X65_Y73_N23
LEDR_a11_a_aoutput : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => LEDR_a11_a_aoutput_I_driver,
	devoe => ww_devoe,
	o => LEDR_a11_a_aoutput_o);

LEDR_a12_a_aoutput_I_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => registre_dec_aq_sig(4),
	dataout => LEDR_a12_a_aoutput_I_driver);

-- Location: IOOBUF_X65_Y73_N16
LEDR_a12_a_aoutput : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => LEDR_a12_a_aoutput_I_driver,
	devoe => ww_devoe,
	o => LEDR_a12_a_aoutput_o);

LEDR_a13_a_aoutput_I_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => registre_dec_aq_sig(5),
	dataout => LEDR_a13_a_aoutput_I_driver);

-- Location: IOOBUF_X67_Y73_N9
LEDR_a13_a_aoutput : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => LEDR_a13_a_aoutput_I_driver,
	devoe => ww_devoe,
	o => LEDR_a13_a_aoutput_o);

LEDR_a14_a_aoutput_I_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => registre_dec_aq_sig(6),
	dataout => LEDR_a14_a_aoutput_I_driver);

-- Location: IOOBUF_X58_Y73_N2
LEDR_a14_a_aoutput : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => LEDR_a14_a_aoutput_I_driver,
	devoe => ww_devoe,
	o => LEDR_a14_a_aoutput_o);

LEDR_a15_a_aoutput_I_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => registre_dec_aq_sig(7),
	dataout => LEDR_a15_a_aoutput_I_driver);

-- Location: IOOBUF_X65_Y73_N9
LEDR_a15_a_aoutput : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => LEDR_a15_a_aoutput_I_driver,
	devoe => ww_devoe,
	o => LEDR_a15_a_aoutput_o);

-- Location: IOOBUF_X67_Y73_N2
LEDR_a16_a_aoutput : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => LEDR_a16_a_aoutput_o);

-- Location: IOOBUF_X60_Y73_N16
LEDR_a17_a_aoutput : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => LEDR_a17_a_aoutput_o);

LEDG_a0_a_aoutput_I_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => compteur_aq_sig(0),
	dataout => LEDG_a0_a_aoutput_I_driver);

-- Location: IOOBUF_X107_Y73_N9
LEDG_a0_a_aoutput : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => LEDG_a0_a_aoutput_I_driver,
	devoe => ww_devoe,
	o => LEDG_a0_a_aoutput_o);

LEDG_a1_a_aoutput_I_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => compteur_aq_sig(1),
	dataout => LEDG_a1_a_aoutput_I_driver);

-- Location: IOOBUF_X111_Y73_N9
LEDG_a1_a_aoutput : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => LEDG_a1_a_aoutput_I_driver,
	devoe => ww_devoe,
	o => LEDG_a1_a_aoutput_o);

LEDG_a2_a_aoutput_I_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => compteur_aq_sig(2),
	dataout => LEDG_a2_a_aoutput_I_driver);

-- Location: IOOBUF_X83_Y73_N2
LEDG_a2_a_aoutput : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => LEDG_a2_a_aoutput_I_driver,
	devoe => ww_devoe,
	o => LEDG_a2_a_aoutput_o);

LEDG_a3_a_aoutput_I_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => compteur_aq_sig(3),
	dataout => LEDG_a3_a_aoutput_I_driver);

-- Location: IOOBUF_X85_Y73_N23
LEDG_a3_a_aoutput : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => LEDG_a3_a_aoutput_I_driver,
	devoe => ww_devoe,
	o => LEDG_a3_a_aoutput_o);

-- Location: IOOBUF_X72_Y73_N16
LEDG_a4_a_aoutput : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => LEDG_a4_a_aoutput_o);

-- Location: IOOBUF_X74_Y73_N16
LEDG_a5_a_aoutput : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => LEDG_a5_a_aoutput_o);

-- Location: IOOBUF_X72_Y73_N23
LEDG_a6_a_aoutput : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => LEDG_a6_a_aoutput_o);

-- Location: IOOBUF_X74_Y73_N23
LEDG_a7_a_aoutput : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => LEDG_a7_a_aoutput_o);

Hex0_a0_a_aoutput_I_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => deco7seg_aMux6_a0_combout,
	dataout => Hex0_a0_a_aoutput_I_driver);

-- Location: IOOBUF_X69_Y73_N23
Hex0_a0_a_aoutput : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Hex0_a0_a_aoutput_I_driver,
	devoe => ww_devoe,
	o => Hex0_a0_a_aoutput_o);

Hex0_a1_a_aoutput_I_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => deco7seg_aMux5_a0_combout,
	dataout => Hex0_a1_a_aoutput_I_driver);

-- Location: IOOBUF_X107_Y73_N23
Hex0_a1_a_aoutput : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Hex0_a1_a_aoutput_I_driver,
	devoe => ww_devoe,
	o => Hex0_a1_a_aoutput_o);

Hex0_a2_a_aoutput_I_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => deco7seg_aMux4_a0_combout,
	dataout => Hex0_a2_a_aoutput_I_driver);

-- Location: IOOBUF_X67_Y73_N23
Hex0_a2_a_aoutput : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Hex0_a2_a_aoutput_I_driver,
	devoe => ww_devoe,
	o => Hex0_a2_a_aoutput_o);

Hex0_a3_a_aoutput_I_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => deco7seg_aMux3_a0_combout,
	dataout => Hex0_a3_a_aoutput_I_driver);

-- Location: IOOBUF_X115_Y50_N2
Hex0_a3_a_aoutput : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Hex0_a3_a_aoutput_I_driver,
	devoe => ww_devoe,
	o => Hex0_a3_a_aoutput_o);

Hex0_a4_a_aoutput_I_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => deco7seg_aMux2_a0_combout,
	dataout => Hex0_a4_a_aoutput_I_driver);

-- Location: IOOBUF_X115_Y54_N16
Hex0_a4_a_aoutput : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Hex0_a4_a_aoutput_I_driver,
	devoe => ww_devoe,
	o => Hex0_a4_a_aoutput_o);

Hex0_a5_a_aoutput_I_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => deco7seg_aMux1_a0_combout,
	dataout => Hex0_a5_a_aoutput_I_driver);

-- Location: IOOBUF_X115_Y67_N16
Hex0_a5_a_aoutput : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Hex0_a5_a_aoutput_I_driver,
	devoe => ww_devoe,
	o => Hex0_a5_a_aoutput_o);

Hex0_a6_a_aoutput_I_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => ALT_INV_deco7seg_aMux0_a0_combout,
	dataout => Hex0_a6_a_aoutput_I_driver);

-- Location: IOOBUF_X115_Y69_N2
Hex0_a6_a_aoutput : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Hex0_a6_a_aoutput_I_driver,
	devoe => ww_devoe,
	o => Hex0_a6_a_aoutput_o);

Key_a0_a_ainput_I_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => ww_Key(0),
	dataout => Key_a0_a_ainput_I_driver);

-- Location: IOIBUF_X115_Y40_N8
Key_a0_a_ainput : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => Key_a0_a_ainput_I_driver,
	o => Key_a0_a_ainput_o);

SW_a0_a_ainput_I_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => ww_SW(0),
	dataout => SW_a0_a_ainput_I_driver);

-- Location: IOIBUF_X115_Y17_N1
SW_a0_a_ainput : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SW_a0_a_ainput_I_driver,
	o => SW_a0_a_ainput_o);

registre_aq_a0_a_afeeder_DATAD_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => SW_a0_a_ainput_o,
	dataout => registre_aq_a0_a_afeeder_DATAD_driver);

-- Location: LCCOMB_X114_Y41_N20
registre_aq_a0_a_afeeder : cycloneive_lcell_comb
-- Equation(s):
-- registre_aq_a0_a_afeeder_combout = SW_a0_a_ainput_o

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => registre_aq_a0_a_afeeder_DATAD_driver,
	combout => registre_aq_a0_a_afeeder_combout);

Key_a1_a_ainput_I_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => ww_Key(1),
	dataout => Key_a1_a_ainput_I_driver);

-- Location: IOIBUF_X115_Y53_N15
Key_a1_a_ainput : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => Key_a1_a_ainput_I_driver,
	o => Key_a1_a_ainput_o);

SW_a17_a_ainput_I_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => ww_SW(17),
	dataout => SW_a17_a_ainput_I_driver);

-- Location: IOIBUF_X115_Y14_N8
SW_a17_a_ainput : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SW_a17_a_ainput_I_driver,
	o => SW_a17_a_ainput_o);

registre_aq_a0_a_CLK_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => Key_a0_a_ainput_o,
	dataout => registre_aq_a0_a_CLK_driver);

registre_aq_a0_a_D_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => registre_aq_a0_a_afeeder_combout,
	dataout => registre_aq_a0_a_D_driver);

registre_aq_a0_a_CLRN_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => Key_a1_a_ainput_o,
	dataout => registre_aq_a0_a_CLRN_driver);

registre_aq_a0_a_ENA_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => SW_a17_a_ainput_o,
	dataout => registre_aq_a0_a_ENA_driver);

-- Location: FF_X114_Y41_N21
registre_aq_a0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => registre_aq_a0_a_CLK_driver,
	d => registre_aq_a0_a_D_driver,
	clrn => registre_aq_a0_a_CLRN_driver,
	ena => registre_aq_a0_a_ENA_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => registre_aq(0));

SW_a1_a_ainput_I_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => ww_SW(1),
	dataout => SW_a1_a_ainput_I_driver);

-- Location: IOIBUF_X115_Y14_N1
SW_a1_a_ainput : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SW_a1_a_ainput_I_driver,
	o => SW_a1_a_ainput_o);

registre_aq_a1_a_CLK_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => Key_a0_a_ainput_o,
	dataout => registre_aq_a1_a_CLK_driver);

registre_aq_a1_a_ASDATA_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => SW_a1_a_ainput_o,
	dataout => registre_aq_a1_a_ASDATA_driver);

registre_aq_a1_a_CLRN_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => Key_a1_a_ainput_o,
	dataout => registre_aq_a1_a_CLRN_driver);

registre_aq_a1_a_ENA_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => SW_a17_a_ainput_o,
	dataout => registre_aq_a1_a_ENA_driver);

-- Location: FF_X114_Y41_N7
registre_aq_a1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => registre_aq_a1_a_CLK_driver,
	asdata => registre_aq_a1_a_ASDATA_driver,
	clrn => registre_aq_a1_a_CLRN_driver,
	sload => VCC,
	ena => registre_aq_a1_a_ENA_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => registre_aq(1));

SW_a2_a_ainput_I_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => ww_SW(2),
	dataout => SW_a2_a_ainput_I_driver);

-- Location: IOIBUF_X115_Y15_N8
SW_a2_a_ainput : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SW_a2_a_ainput_I_driver,
	o => SW_a2_a_ainput_o);

registre_aq_a2_a_afeeder_DATAD_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => SW_a2_a_ainput_o,
	dataout => registre_aq_a2_a_afeeder_DATAD_driver);

-- Location: LCCOMB_X114_Y41_N12
registre_aq_a2_a_afeeder : cycloneive_lcell_comb
-- Equation(s):
-- registre_aq_a2_a_afeeder_combout = SW_a2_a_ainput_o

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => registre_aq_a2_a_afeeder_DATAD_driver,
	combout => registre_aq_a2_a_afeeder_combout);

registre_aq_a2_a_CLK_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => Key_a0_a_ainput_o,
	dataout => registre_aq_a2_a_CLK_driver);

registre_aq_a2_a_D_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => registre_aq_a2_a_afeeder_combout,
	dataout => registre_aq_a2_a_D_driver);

registre_aq_a2_a_CLRN_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => Key_a1_a_ainput_o,
	dataout => registre_aq_a2_a_CLRN_driver);

registre_aq_a2_a_ENA_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => SW_a17_a_ainput_o,
	dataout => registre_aq_a2_a_ENA_driver);

-- Location: FF_X114_Y41_N13
registre_aq_a2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => registre_aq_a2_a_CLK_driver,
	d => registre_aq_a2_a_D_driver,
	clrn => registre_aq_a2_a_CLRN_driver,
	ena => registre_aq_a2_a_ENA_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => registre_aq(2));

SW_a3_a_ainput_I_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => ww_SW(3),
	dataout => SW_a3_a_ainput_I_driver);

-- Location: IOIBUF_X115_Y13_N8
SW_a3_a_ainput : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SW_a3_a_ainput_I_driver,
	o => SW_a3_a_ainput_o);

registre_aq_a3_a_CLK_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => Key_a0_a_ainput_o,
	dataout => registre_aq_a3_a_CLK_driver);

registre_aq_a3_a_ASDATA_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => SW_a3_a_ainput_o,
	dataout => registre_aq_a3_a_ASDATA_driver);

registre_aq_a3_a_CLRN_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => Key_a1_a_ainput_o,
	dataout => registre_aq_a3_a_CLRN_driver);

registre_aq_a3_a_ENA_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => SW_a17_a_ainput_o,
	dataout => registre_aq_a3_a_ENA_driver);

-- Location: FF_X114_Y41_N3
registre_aq_a3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => registre_aq_a3_a_CLK_driver,
	asdata => registre_aq_a3_a_ASDATA_driver,
	clrn => registre_aq_a3_a_CLRN_driver,
	sload => VCC,
	ena => registre_aq_a3_a_ENA_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => registre_aq(3));

SW_a4_a_ainput_I_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => ww_SW(4),
	dataout => SW_a4_a_ainput_I_driver);

-- Location: IOIBUF_X115_Y18_N8
SW_a4_a_ainput : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SW_a4_a_ainput_I_driver,
	o => SW_a4_a_ainput_o);

registre_aq_a4_a_afeeder_DATAD_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => SW_a4_a_ainput_o,
	dataout => registre_aq_a4_a_afeeder_DATAD_driver);

-- Location: LCCOMB_X114_Y41_N8
registre_aq_a4_a_afeeder : cycloneive_lcell_comb
-- Equation(s):
-- registre_aq_a4_a_afeeder_combout = SW_a4_a_ainput_o

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => registre_aq_a4_a_afeeder_DATAD_driver,
	combout => registre_aq_a4_a_afeeder_combout);

registre_aq_a4_a_CLK_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => Key_a0_a_ainput_o,
	dataout => registre_aq_a4_a_CLK_driver);

registre_aq_a4_a_D_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => registre_aq_a4_a_afeeder_combout,
	dataout => registre_aq_a4_a_D_driver);

registre_aq_a4_a_CLRN_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => Key_a1_a_ainput_o,
	dataout => registre_aq_a4_a_CLRN_driver);

registre_aq_a4_a_ENA_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => SW_a17_a_ainput_o,
	dataout => registre_aq_a4_a_ENA_driver);

-- Location: FF_X114_Y41_N9
registre_aq_a4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => registre_aq_a4_a_CLK_driver,
	d => registre_aq_a4_a_D_driver,
	clrn => registre_aq_a4_a_CLRN_driver,
	ena => registre_aq_a4_a_ENA_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => registre_aq(4));

SW_a5_a_ainput_I_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => ww_SW(5),
	dataout => SW_a5_a_ainput_I_driver);

-- Location: IOIBUF_X115_Y11_N8
SW_a5_a_ainput : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SW_a5_a_ainput_I_driver,
	o => SW_a5_a_ainput_o);

registre_aq_a5_a_CLK_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => Key_a0_a_ainput_o,
	dataout => registre_aq_a5_a_CLK_driver);

registre_aq_a5_a_ASDATA_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => SW_a5_a_ainput_o,
	dataout => registre_aq_a5_a_ASDATA_driver);

registre_aq_a5_a_CLRN_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => Key_a1_a_ainput_o,
	dataout => registre_aq_a5_a_CLRN_driver);

registre_aq_a5_a_ENA_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => SW_a17_a_ainput_o,
	dataout => registre_aq_a5_a_ENA_driver);

-- Location: FF_X114_Y41_N23
registre_aq_a5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => registre_aq_a5_a_CLK_driver,
	asdata => registre_aq_a5_a_ASDATA_driver,
	clrn => registre_aq_a5_a_CLRN_driver,
	sload => VCC,
	ena => registre_aq_a5_a_ENA_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => registre_aq(5));

SW_a6_a_ainput_I_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => ww_SW(6),
	dataout => SW_a6_a_ainput_I_driver);

-- Location: IOIBUF_X115_Y10_N1
SW_a6_a_ainput : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SW_a6_a_ainput_I_driver,
	o => SW_a6_a_ainput_o);

registre_aq_a6_a_CLK_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => Key_a0_a_ainput_o,
	dataout => registre_aq_a6_a_CLK_driver);

registre_aq_a6_a_ASDATA_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => SW_a6_a_ainput_o,
	dataout => registre_aq_a6_a_ASDATA_driver);

registre_aq_a6_a_CLRN_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => Key_a1_a_ainput_o,
	dataout => registre_aq_a6_a_CLRN_driver);

registre_aq_a6_a_ENA_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => SW_a17_a_ainput_o,
	dataout => registre_aq_a6_a_ENA_driver);

-- Location: FF_X114_Y41_N25
registre_aq_a6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => registre_aq_a6_a_CLK_driver,
	asdata => registre_aq_a6_a_ASDATA_driver,
	clrn => registre_aq_a6_a_CLRN_driver,
	sload => VCC,
	ena => registre_aq_a6_a_ENA_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => registre_aq(6));

SW_a7_a_ainput_I_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => ww_SW(7),
	dataout => SW_a7_a_ainput_I_driver);

-- Location: IOIBUF_X115_Y15_N1
SW_a7_a_ainput : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SW_a7_a_ainput_I_driver,
	o => SW_a7_a_ainput_o);

registre_aq_a7_a_afeeder_DATAD_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => SW_a7_a_ainput_o,
	dataout => registre_aq_a7_a_afeeder_DATAD_driver);

-- Location: LCCOMB_X114_Y41_N10
registre_aq_a7_a_afeeder : cycloneive_lcell_comb
-- Equation(s):
-- registre_aq_a7_a_afeeder_combout = SW_a7_a_ainput_o

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => registre_aq_a7_a_afeeder_DATAD_driver,
	combout => registre_aq_a7_a_afeeder_combout);

registre_aq_a7_a_CLK_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => Key_a0_a_ainput_o,
	dataout => registre_aq_a7_a_CLK_driver);

registre_aq_a7_a_D_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => registre_aq_a7_a_afeeder_combout,
	dataout => registre_aq_a7_a_D_driver);

registre_aq_a7_a_CLRN_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => Key_a1_a_ainput_o,
	dataout => registre_aq_a7_a_CLRN_driver);

registre_aq_a7_a_ENA_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => SW_a17_a_ainput_o,
	dataout => registre_aq_a7_a_ENA_driver);

-- Location: FF_X114_Y41_N11
registre_aq_a7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => registre_aq_a7_a_CLK_driver,
	d => registre_aq_a7_a_D_driver,
	clrn => registre_aq_a7_a_CLRN_driver,
	ena => registre_aq_a7_a_ENA_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => registre_aq(7));

SW_a14_a_ainput_I_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => ww_SW(14),
	dataout => SW_a14_a_ainput_I_driver);

-- Location: IOIBUF_X115_Y10_N8
SW_a14_a_ainput : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SW_a14_a_ainput_I_driver,
	o => SW_a14_a_ainput_o);

SW_a15_a_ainput_I_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => ww_SW(15),
	dataout => SW_a15_a_ainput_I_driver);

-- Location: IOIBUF_X115_Y6_N15
SW_a15_a_ainput : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SW_a15_a_ainput_I_driver,
	o => SW_a15_a_ainput_o);

registre_dec_aq_sig_a9_DATAA_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => SW_a14_a_ainput_o,
	dataout => registre_dec_aq_sig_a9_DATAA_driver);

registre_dec_aq_sig_a9_DATAD_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => registre_dec_aq_sig(6),
	dataout => registre_dec_aq_sig_a9_DATAD_driver);

-- Location: LCCOMB_X114_Y38_N24
registre_dec_aq_sig_a9 : cycloneive_lcell_comb
-- Equation(s):
-- registre_dec_aq_sig_a9_combout = (!SW_a14_a_ainput_o & registre_dec_aq_sig(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => registre_dec_aq_sig_a9_DATAA_driver,
	datad => registre_dec_aq_sig_a9_DATAD_driver,
	combout => registre_dec_aq_sig_a9_combout);

registre_dec_aq_sig_a7_a_a7_DATAB_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => SW_a15_a_ainput_o,
	dataout => registre_dec_aq_sig_a7_a_a7_DATAB_driver);

registre_dec_aq_sig_a7_a_a7_DATAC_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => registre_dec_aq_sig(7),
	dataout => registre_dec_aq_sig_a7_a_a7_DATAC_driver);

registre_dec_aq_sig_a7_a_a7_DATAD_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => registre_dec_aq_sig_a9_combout,
	dataout => registre_dec_aq_sig_a7_a_a7_DATAD_driver);

-- Location: LCCOMB_X113_Y38_N14
registre_dec_aq_sig_a7_a_a7 : cycloneive_lcell_comb
-- Equation(s):
-- registre_dec_aq_sig_a7_a_a7_combout = (SW_a15_a_ainput_o & ((registre_dec_aq_sig_a9_combout))) # (!SW_a15_a_ainput_o & (registre_dec_aq_sig(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => registre_dec_aq_sig_a7_a_a7_DATAB_driver,
	datac => registre_dec_aq_sig_a7_a_a7_DATAC_driver,
	datad => registre_dec_aq_sig_a7_a_a7_DATAD_driver,
	combout => registre_dec_aq_sig_a7_a_a7_combout);

SW_a16_a_ainput_I_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => ww_SW(16),
	dataout => SW_a16_a_ainput_I_driver);

-- Location: IOIBUF_X115_Y13_N1
SW_a16_a_ainput : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SW_a16_a_ainput_I_driver,
	o => SW_a16_a_ainput_o);

registre_dec_aq_sig_a7_a_CLK_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => Key_a0_a_ainput_o,
	dataout => registre_dec_aq_sig_a7_a_CLK_driver);

registre_dec_aq_sig_a7_a_D_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => registre_dec_aq_sig_a7_a_a7_combout,
	dataout => registre_dec_aq_sig_a7_a_D_driver);

registre_dec_aq_sig_a7_a_ASDATA_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => SW_a7_a_ainput_o,
	dataout => registre_dec_aq_sig_a7_a_ASDATA_driver);

registre_dec_aq_sig_a7_a_CLRN_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => Key_a1_a_ainput_o,
	dataout => registre_dec_aq_sig_a7_a_CLRN_driver);

registre_dec_aq_sig_a7_a_SLOAD_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => SW_a16_a_ainput_o,
	dataout => registre_dec_aq_sig_a7_a_SLOAD_driver);

-- Location: FF_X113_Y38_N15
registre_dec_aq_sig_a7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => registre_dec_aq_sig_a7_a_CLK_driver,
	d => registre_dec_aq_sig_a7_a_D_driver,
	asdata => registre_dec_aq_sig_a7_a_ASDATA_driver,
	clrn => registre_dec_aq_sig_a7_a_CLRN_driver,
	sload => registre_dec_aq_sig_a7_a_SLOAD_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => registre_dec_aq_sig(7));

registre_dec_aq_sig_a6_a_a6_DATAA_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => SW_a14_a_ainput_o,
	dataout => registre_dec_aq_sig_a6_a_a6_DATAA_driver);

registre_dec_aq_sig_a6_a_a6_DATAB_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => registre_dec_aq_sig(5),
	dataout => registre_dec_aq_sig_a6_a_a6_DATAB_driver);

registre_dec_aq_sig_a6_a_a6_DATAD_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => registre_dec_aq_sig(7),
	dataout => registre_dec_aq_sig_a6_a_a6_DATAD_driver);

-- Location: LCCOMB_X114_Y38_N18
registre_dec_aq_sig_a6_a_a6 : cycloneive_lcell_comb
-- Equation(s):
-- registre_dec_aq_sig_a6_a_a6_combout = (SW_a14_a_ainput_o & ((registre_dec_aq_sig(7)))) # (!SW_a14_a_ainput_o & (registre_dec_aq_sig(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => registre_dec_aq_sig_a6_a_a6_DATAA_driver,
	datab => registre_dec_aq_sig_a6_a_a6_DATAB_driver,
	datad => registre_dec_aq_sig_a6_a_a6_DATAD_driver,
	combout => registre_dec_aq_sig_a6_a_a6_combout);

registre_dec_aq_sig_a1_a_a8_DATAA_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => SW_a16_a_ainput_o,
	dataout => registre_dec_aq_sig_a1_a_a8_DATAA_driver);

registre_dec_aq_sig_a1_a_a8_DATAD_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => SW_a15_a_ainput_o,
	dataout => registre_dec_aq_sig_a1_a_a8_DATAD_driver);

-- Location: LCCOMB_X113_Y38_N4
registre_dec_aq_sig_a1_a_a8 : cycloneive_lcell_comb
-- Equation(s):
-- registre_dec_aq_sig_a1_a_a8_combout = (SW_a16_a_ainput_o) # (SW_a15_a_ainput_o)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => registre_dec_aq_sig_a1_a_a8_DATAA_driver,
	datad => registre_dec_aq_sig_a1_a_a8_DATAD_driver,
	combout => registre_dec_aq_sig_a1_a_a8_combout);

registre_dec_aq_sig_a6_a_CLK_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => Key_a0_a_ainput_o,
	dataout => registre_dec_aq_sig_a6_a_CLK_driver);

registre_dec_aq_sig_a6_a_D_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => registre_dec_aq_sig_a6_a_a6_combout,
	dataout => registre_dec_aq_sig_a6_a_D_driver);

registre_dec_aq_sig_a6_a_ASDATA_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => SW_a6_a_ainput_o,
	dataout => registre_dec_aq_sig_a6_a_ASDATA_driver);

registre_dec_aq_sig_a6_a_CLRN_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => Key_a1_a_ainput_o,
	dataout => registre_dec_aq_sig_a6_a_CLRN_driver);

registre_dec_aq_sig_a6_a_SLOAD_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => SW_a16_a_ainput_o,
	dataout => registre_dec_aq_sig_a6_a_SLOAD_driver);

registre_dec_aq_sig_a6_a_ENA_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => registre_dec_aq_sig_a1_a_a8_combout,
	dataout => registre_dec_aq_sig_a6_a_ENA_driver);

-- Location: FF_X114_Y38_N19
registre_dec_aq_sig_a6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => registre_dec_aq_sig_a6_a_CLK_driver,
	d => registre_dec_aq_sig_a6_a_D_driver,
	asdata => registre_dec_aq_sig_a6_a_ASDATA_driver,
	clrn => registre_dec_aq_sig_a6_a_CLRN_driver,
	sload => registre_dec_aq_sig_a6_a_SLOAD_driver,
	ena => registre_dec_aq_sig_a6_a_ENA_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => registre_dec_aq_sig(6));

registre_dec_aq_sig_a5_a_a5_DATAA_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => SW_a14_a_ainput_o,
	dataout => registre_dec_aq_sig_a5_a_a5_DATAA_driver);

registre_dec_aq_sig_a5_a_a5_DATAB_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => registre_dec_aq_sig(6),
	dataout => registre_dec_aq_sig_a5_a_a5_DATAB_driver);

registre_dec_aq_sig_a5_a_a5_DATAD_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => registre_dec_aq_sig(4),
	dataout => registre_dec_aq_sig_a5_a_a5_DATAD_driver);

-- Location: LCCOMB_X114_Y38_N16
registre_dec_aq_sig_a5_a_a5 : cycloneive_lcell_comb
-- Equation(s):
-- registre_dec_aq_sig_a5_a_a5_combout = (SW_a14_a_ainput_o & (registre_dec_aq_sig(6))) # (!SW_a14_a_ainput_o & ((registre_dec_aq_sig(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => registre_dec_aq_sig_a5_a_a5_DATAA_driver,
	datab => registre_dec_aq_sig_a5_a_a5_DATAB_driver,
	datad => registre_dec_aq_sig_a5_a_a5_DATAD_driver,
	combout => registre_dec_aq_sig_a5_a_a5_combout);

registre_dec_aq_sig_a5_a_CLK_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => Key_a0_a_ainput_o,
	dataout => registre_dec_aq_sig_a5_a_CLK_driver);

registre_dec_aq_sig_a5_a_D_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => registre_dec_aq_sig_a5_a_a5_combout,
	dataout => registre_dec_aq_sig_a5_a_D_driver);

registre_dec_aq_sig_a5_a_ASDATA_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => SW_a5_a_ainput_o,
	dataout => registre_dec_aq_sig_a5_a_ASDATA_driver);

registre_dec_aq_sig_a5_a_CLRN_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => Key_a1_a_ainput_o,
	dataout => registre_dec_aq_sig_a5_a_CLRN_driver);

registre_dec_aq_sig_a5_a_SLOAD_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => SW_a16_a_ainput_o,
	dataout => registre_dec_aq_sig_a5_a_SLOAD_driver);

registre_dec_aq_sig_a5_a_ENA_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => registre_dec_aq_sig_a1_a_a8_combout,
	dataout => registre_dec_aq_sig_a5_a_ENA_driver);

-- Location: FF_X114_Y38_N17
registre_dec_aq_sig_a5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => registre_dec_aq_sig_a5_a_CLK_driver,
	d => registre_dec_aq_sig_a5_a_D_driver,
	asdata => registre_dec_aq_sig_a5_a_ASDATA_driver,
	clrn => registre_dec_aq_sig_a5_a_CLRN_driver,
	sload => registre_dec_aq_sig_a5_a_SLOAD_driver,
	ena => registre_dec_aq_sig_a5_a_ENA_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => registre_dec_aq_sig(5));

registre_dec_aq_sig_a4_a_a4_DATAA_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => SW_a14_a_ainput_o,
	dataout => registre_dec_aq_sig_a4_a_a4_DATAA_driver);

registre_dec_aq_sig_a4_a_a4_DATAB_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => registre_dec_aq_sig(3),
	dataout => registre_dec_aq_sig_a4_a_a4_DATAB_driver);

registre_dec_aq_sig_a4_a_a4_DATAD_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => registre_dec_aq_sig(5),
	dataout => registre_dec_aq_sig_a4_a_a4_DATAD_driver);

-- Location: LCCOMB_X114_Y38_N2
registre_dec_aq_sig_a4_a_a4 : cycloneive_lcell_comb
-- Equation(s):
-- registre_dec_aq_sig_a4_a_a4_combout = (SW_a14_a_ainput_o & ((registre_dec_aq_sig(5)))) # (!SW_a14_a_ainput_o & (registre_dec_aq_sig(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => registre_dec_aq_sig_a4_a_a4_DATAA_driver,
	datab => registre_dec_aq_sig_a4_a_a4_DATAB_driver,
	datad => registre_dec_aq_sig_a4_a_a4_DATAD_driver,
	combout => registre_dec_aq_sig_a4_a_a4_combout);

registre_dec_aq_sig_a4_a_CLK_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => Key_a0_a_ainput_o,
	dataout => registre_dec_aq_sig_a4_a_CLK_driver);

registre_dec_aq_sig_a4_a_D_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => registre_dec_aq_sig_a4_a_a4_combout,
	dataout => registre_dec_aq_sig_a4_a_D_driver);

registre_dec_aq_sig_a4_a_ASDATA_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => SW_a4_a_ainput_o,
	dataout => registre_dec_aq_sig_a4_a_ASDATA_driver);

registre_dec_aq_sig_a4_a_CLRN_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => Key_a1_a_ainput_o,
	dataout => registre_dec_aq_sig_a4_a_CLRN_driver);

registre_dec_aq_sig_a4_a_SLOAD_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => SW_a16_a_ainput_o,
	dataout => registre_dec_aq_sig_a4_a_SLOAD_driver);

registre_dec_aq_sig_a4_a_ENA_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => registre_dec_aq_sig_a1_a_a8_combout,
	dataout => registre_dec_aq_sig_a4_a_ENA_driver);

-- Location: FF_X114_Y38_N3
registre_dec_aq_sig_a4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => registre_dec_aq_sig_a4_a_CLK_driver,
	d => registre_dec_aq_sig_a4_a_D_driver,
	asdata => registre_dec_aq_sig_a4_a_ASDATA_driver,
	clrn => registre_dec_aq_sig_a4_a_CLRN_driver,
	sload => registre_dec_aq_sig_a4_a_SLOAD_driver,
	ena => registre_dec_aq_sig_a4_a_ENA_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => registre_dec_aq_sig(4));

registre_dec_aq_sig_a3_a_a3_DATAA_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => registre_dec_aq_sig(2),
	dataout => registre_dec_aq_sig_a3_a_a3_DATAA_driver);

registre_dec_aq_sig_a3_a_a3_DATAB_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => SW_a14_a_ainput_o,
	dataout => registre_dec_aq_sig_a3_a_a3_DATAB_driver);

registre_dec_aq_sig_a3_a_a3_DATAD_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => registre_dec_aq_sig(4),
	dataout => registre_dec_aq_sig_a3_a_a3_DATAD_driver);

-- Location: LCCOMB_X114_Y38_N20
registre_dec_aq_sig_a3_a_a3 : cycloneive_lcell_comb
-- Equation(s):
-- registre_dec_aq_sig_a3_a_a3_combout = (SW_a14_a_ainput_o & ((registre_dec_aq_sig(4)))) # (!SW_a14_a_ainput_o & (registre_dec_aq_sig(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => registre_dec_aq_sig_a3_a_a3_DATAA_driver,
	datab => registre_dec_aq_sig_a3_a_a3_DATAB_driver,
	datad => registre_dec_aq_sig_a3_a_a3_DATAD_driver,
	combout => registre_dec_aq_sig_a3_a_a3_combout);

registre_dec_aq_sig_a3_a_CLK_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => Key_a0_a_ainput_o,
	dataout => registre_dec_aq_sig_a3_a_CLK_driver);

registre_dec_aq_sig_a3_a_D_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => registre_dec_aq_sig_a3_a_a3_combout,
	dataout => registre_dec_aq_sig_a3_a_D_driver);

registre_dec_aq_sig_a3_a_ASDATA_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => SW_a3_a_ainput_o,
	dataout => registre_dec_aq_sig_a3_a_ASDATA_driver);

registre_dec_aq_sig_a3_a_CLRN_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => Key_a1_a_ainput_o,
	dataout => registre_dec_aq_sig_a3_a_CLRN_driver);

registre_dec_aq_sig_a3_a_SLOAD_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => SW_a16_a_ainput_o,
	dataout => registre_dec_aq_sig_a3_a_SLOAD_driver);

registre_dec_aq_sig_a3_a_ENA_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => registre_dec_aq_sig_a1_a_a8_combout,
	dataout => registre_dec_aq_sig_a3_a_ENA_driver);

-- Location: FF_X114_Y38_N21
registre_dec_aq_sig_a3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => registre_dec_aq_sig_a3_a_CLK_driver,
	d => registre_dec_aq_sig_a3_a_D_driver,
	asdata => registre_dec_aq_sig_a3_a_ASDATA_driver,
	clrn => registre_dec_aq_sig_a3_a_CLRN_driver,
	sload => registre_dec_aq_sig_a3_a_SLOAD_driver,
	ena => registre_dec_aq_sig_a3_a_ENA_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => registre_dec_aq_sig(3));

registre_dec_aq_sig_a2_a_a2_DATAA_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => SW_a14_a_ainput_o,
	dataout => registre_dec_aq_sig_a2_a_a2_DATAA_driver);

registre_dec_aq_sig_a2_a_a2_DATAB_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => registre_dec_aq_sig(3),
	dataout => registre_dec_aq_sig_a2_a_a2_DATAB_driver);

registre_dec_aq_sig_a2_a_a2_DATAD_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => registre_dec_aq_sig(1),
	dataout => registre_dec_aq_sig_a2_a_a2_DATAD_driver);

-- Location: LCCOMB_X114_Y38_N22
registre_dec_aq_sig_a2_a_a2 : cycloneive_lcell_comb
-- Equation(s):
-- registre_dec_aq_sig_a2_a_a2_combout = (SW_a14_a_ainput_o & (registre_dec_aq_sig(3))) # (!SW_a14_a_ainput_o & ((registre_dec_aq_sig(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => registre_dec_aq_sig_a2_a_a2_DATAA_driver,
	datab => registre_dec_aq_sig_a2_a_a2_DATAB_driver,
	datad => registre_dec_aq_sig_a2_a_a2_DATAD_driver,
	combout => registre_dec_aq_sig_a2_a_a2_combout);

registre_dec_aq_sig_a2_a_CLK_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => Key_a0_a_ainput_o,
	dataout => registre_dec_aq_sig_a2_a_CLK_driver);

registre_dec_aq_sig_a2_a_D_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => registre_dec_aq_sig_a2_a_a2_combout,
	dataout => registre_dec_aq_sig_a2_a_D_driver);

registre_dec_aq_sig_a2_a_ASDATA_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => SW_a2_a_ainput_o,
	dataout => registre_dec_aq_sig_a2_a_ASDATA_driver);

registre_dec_aq_sig_a2_a_CLRN_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => Key_a1_a_ainput_o,
	dataout => registre_dec_aq_sig_a2_a_CLRN_driver);

registre_dec_aq_sig_a2_a_SLOAD_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => SW_a16_a_ainput_o,
	dataout => registre_dec_aq_sig_a2_a_SLOAD_driver);

registre_dec_aq_sig_a2_a_ENA_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => registre_dec_aq_sig_a1_a_a8_combout,
	dataout => registre_dec_aq_sig_a2_a_ENA_driver);

-- Location: FF_X114_Y38_N23
registre_dec_aq_sig_a2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => registre_dec_aq_sig_a2_a_CLK_driver,
	d => registre_dec_aq_sig_a2_a_D_driver,
	asdata => registre_dec_aq_sig_a2_a_ASDATA_driver,
	clrn => registre_dec_aq_sig_a2_a_CLRN_driver,
	sload => registre_dec_aq_sig_a2_a_SLOAD_driver,
	ena => registre_dec_aq_sig_a2_a_ENA_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => registre_dec_aq_sig(2));

registre_dec_aq_sig_a1_a_a1_DATAA_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => SW_a14_a_ainput_o,
	dataout => registre_dec_aq_sig_a1_a_a1_DATAA_driver);

registre_dec_aq_sig_a1_a_a1_DATAB_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => registre_dec_aq_sig(2),
	dataout => registre_dec_aq_sig_a1_a_a1_DATAB_driver);

registre_dec_aq_sig_a1_a_a1_DATAD_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => registre_dec_aq_sig(0),
	dataout => registre_dec_aq_sig_a1_a_a1_DATAD_driver);

-- Location: LCCOMB_X114_Y38_N28
registre_dec_aq_sig_a1_a_a1 : cycloneive_lcell_comb
-- Equation(s):
-- registre_dec_aq_sig_a1_a_a1_combout = (SW_a14_a_ainput_o & (registre_dec_aq_sig(2))) # (!SW_a14_a_ainput_o & ((registre_dec_aq_sig(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => registre_dec_aq_sig_a1_a_a1_DATAA_driver,
	datab => registre_dec_aq_sig_a1_a_a1_DATAB_driver,
	datad => registre_dec_aq_sig_a1_a_a1_DATAD_driver,
	combout => registre_dec_aq_sig_a1_a_a1_combout);

registre_dec_aq_sig_a1_a_CLK_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => Key_a0_a_ainput_o,
	dataout => registre_dec_aq_sig_a1_a_CLK_driver);

registre_dec_aq_sig_a1_a_D_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => registre_dec_aq_sig_a1_a_a1_combout,
	dataout => registre_dec_aq_sig_a1_a_D_driver);

registre_dec_aq_sig_a1_a_ASDATA_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => SW_a1_a_ainput_o,
	dataout => registre_dec_aq_sig_a1_a_ASDATA_driver);

registre_dec_aq_sig_a1_a_CLRN_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => Key_a1_a_ainput_o,
	dataout => registre_dec_aq_sig_a1_a_CLRN_driver);

registre_dec_aq_sig_a1_a_SLOAD_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => SW_a16_a_ainput_o,
	dataout => registre_dec_aq_sig_a1_a_SLOAD_driver);

registre_dec_aq_sig_a1_a_ENA_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => registre_dec_aq_sig_a1_a_a8_combout,
	dataout => registre_dec_aq_sig_a1_a_ENA_driver);

-- Location: FF_X114_Y38_N29
registre_dec_aq_sig_a1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => registre_dec_aq_sig_a1_a_CLK_driver,
	d => registre_dec_aq_sig_a1_a_D_driver,
	asdata => registre_dec_aq_sig_a1_a_ASDATA_driver,
	clrn => registre_dec_aq_sig_a1_a_CLRN_driver,
	sload => registre_dec_aq_sig_a1_a_SLOAD_driver,
	ena => registre_dec_aq_sig_a1_a_ENA_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => registre_dec_aq_sig(1));

registre_dec_aq_sig_a0_a_a0_DATAA_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => SW_a14_a_ainput_o,
	dataout => registre_dec_aq_sig_a0_a_a0_DATAA_driver);

registre_dec_aq_sig_a0_a_a0_DATAB_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => SW_a15_a_ainput_o,
	dataout => registre_dec_aq_sig_a0_a_a0_DATAB_driver);

registre_dec_aq_sig_a0_a_a0_DATAC_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => registre_dec_aq_sig(0),
	dataout => registre_dec_aq_sig_a0_a_a0_DATAC_driver);

registre_dec_aq_sig_a0_a_a0_DATAD_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => registre_dec_aq_sig(1),
	dataout => registre_dec_aq_sig_a0_a_a0_DATAD_driver);

-- Location: LCCOMB_X113_Y38_N20
registre_dec_aq_sig_a0_a_a0 : cycloneive_lcell_comb
-- Equation(s):
-- registre_dec_aq_sig_a0_a_a0_combout = (SW_a15_a_ainput_o & (SW_a14_a_ainput_o & ((registre_dec_aq_sig(1))))) # (!SW_a15_a_ainput_o & (((registre_dec_aq_sig(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => registre_dec_aq_sig_a0_a_a0_DATAA_driver,
	datab => registre_dec_aq_sig_a0_a_a0_DATAB_driver,
	datac => registre_dec_aq_sig_a0_a_a0_DATAC_driver,
	datad => registre_dec_aq_sig_a0_a_a0_DATAD_driver,
	combout => registre_dec_aq_sig_a0_a_a0_combout);

registre_dec_aq_sig_a0_a_CLK_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => Key_a0_a_ainput_o,
	dataout => registre_dec_aq_sig_a0_a_CLK_driver);

registre_dec_aq_sig_a0_a_D_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => registre_dec_aq_sig_a0_a_a0_combout,
	dataout => registre_dec_aq_sig_a0_a_D_driver);

registre_dec_aq_sig_a0_a_ASDATA_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => SW_a0_a_ainput_o,
	dataout => registre_dec_aq_sig_a0_a_ASDATA_driver);

registre_dec_aq_sig_a0_a_CLRN_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => Key_a1_a_ainput_o,
	dataout => registre_dec_aq_sig_a0_a_CLRN_driver);

registre_dec_aq_sig_a0_a_SLOAD_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => SW_a16_a_ainput_o,
	dataout => registre_dec_aq_sig_a0_a_SLOAD_driver);

-- Location: FF_X113_Y38_N21
registre_dec_aq_sig_a0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => registre_dec_aq_sig_a0_a_CLK_driver,
	d => registre_dec_aq_sig_a0_a_D_driver,
	asdata => registre_dec_aq_sig_a0_a_ASDATA_driver,
	clrn => registre_dec_aq_sig_a0_a_CLRN_driver,
	sload => registre_dec_aq_sig_a0_a_SLOAD_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => registre_dec_aq_sig(0));

SW_a12_a_ainput_I_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => ww_SW(12),
	dataout => SW_a12_a_ainput_I_driver);

-- Location: IOIBUF_X115_Y7_N15
SW_a12_a_ainput : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SW_a12_a_ainput_I_driver,
	o => SW_a12_a_ainput_o);

compteur_aq_sig_a3_DATAB_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => SW_a12_a_ainput_o,
	dataout => compteur_aq_sig_a3_DATAB_driver);

compteur_aq_sig_a3_DATAC_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => compteur_aq_sig(0),
	dataout => compteur_aq_sig_a3_DATAC_driver);

compteur_aq_sig_a3_DATAD_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => SW_a0_a_ainput_o,
	dataout => compteur_aq_sig_a3_DATAD_driver);

-- Location: LCCOMB_X114_Y40_N12
compteur_aq_sig_a3 : cycloneive_lcell_comb
-- Equation(s):
-- compteur_aq_sig_a3_combout = (SW_a12_a_ainput_o & ((SW_a0_a_ainput_o))) # (!SW_a12_a_ainput_o & (!compteur_aq_sig(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => compteur_aq_sig_a3_DATAB_driver,
	datac => compteur_aq_sig_a3_DATAC_driver,
	datad => compteur_aq_sig_a3_DATAD_driver,
	combout => compteur_aq_sig_a3_combout);

compteur_aq_sig_a0_a_CLK_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => Key_a0_a_ainput_o,
	dataout => compteur_aq_sig_a0_a_CLK_driver);

compteur_aq_sig_a0_a_D_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => compteur_aq_sig_a3_combout,
	dataout => compteur_aq_sig_a0_a_D_driver);

compteur_aq_sig_a0_a_CLRN_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => Key_a1_a_ainput_o,
	dataout => compteur_aq_sig_a0_a_CLRN_driver);

-- Location: FF_X114_Y40_N13
compteur_aq_sig_a0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => compteur_aq_sig_a0_a_CLK_driver,
	d => compteur_aq_sig_a0_a_D_driver,
	clrn => compteur_aq_sig_a0_a_CLRN_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => compteur_aq_sig(0));

SW_a13_a_ainput_I_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => ww_SW(13),
	dataout => SW_a13_a_ainput_I_driver);

-- Location: IOIBUF_X115_Y9_N22
SW_a13_a_ainput : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SW_a13_a_ainput_I_driver,
	o => SW_a13_a_ainput_o);

compteur_aq_sig_a1_a_a5_DATAA_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => compteur_aq_sig(0),
	dataout => compteur_aq_sig_a1_a_a5_DATAA_driver);

-- Location: LCCOMB_X114_Y40_N18
compteur_aq_sig_a1_a_a5 : cycloneive_lcell_comb
-- Equation(s):
-- compteur_aq_sig_a1_a_a5_cout = CARRY(compteur_aq_sig(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => compteur_aq_sig_a1_a_a5_DATAA_driver,
	datad => VCC,
	cout => compteur_aq_sig_a1_a_a5_cout);

compteur_aq_sig_a1_a_a6_DATAA_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => SW_a13_a_ainput_o,
	dataout => compteur_aq_sig_a1_a_a6_DATAA_driver);

compteur_aq_sig_a1_a_a6_DATAB_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => compteur_aq_sig(1),
	dataout => compteur_aq_sig_a1_a_a6_DATAB_driver);

compteur_aq_sig_a1_a_a6_CIN_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => compteur_aq_sig_a1_a_a5_cout,
	dataout => compteur_aq_sig_a1_a_a6_CIN_driver);

-- Location: LCCOMB_X114_Y40_N20
compteur_aq_sig_a1_a_a6 : cycloneive_lcell_comb
-- Equation(s):
-- compteur_aq_sig_a1_a_a6_combout = (SW_a13_a_ainput_o & ((compteur_aq_sig(1) & (!compteur_aq_sig_a1_a_a5_cout)) # (!compteur_aq_sig(1) & ((compteur_aq_sig_a1_a_a5_cout) # (GND))))) # (!SW_a13_a_ainput_o & ((compteur_aq_sig(1) & 
-- (compteur_aq_sig_a1_a_a5_cout & VCC)) # (!compteur_aq_sig(1) & (!compteur_aq_sig_a1_a_a5_cout))))
-- compteur_aq_sig_a1_a_a7 = CARRY((SW_a13_a_ainput_o & ((!compteur_aq_sig_a1_a_a5_cout) # (!compteur_aq_sig(1)))) # (!SW_a13_a_ainput_o & (!compteur_aq_sig(1) & !compteur_aq_sig_a1_a_a5_cout)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => compteur_aq_sig_a1_a_a6_DATAA_driver,
	datab => compteur_aq_sig_a1_a_a6_DATAB_driver,
	datad => VCC,
	cin => compteur_aq_sig_a1_a_a6_CIN_driver,
	combout => compteur_aq_sig_a1_a_a6_combout,
	cout => compteur_aq_sig_a1_a_a7);

compteur_aq_sig_a1_a_CLK_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => Key_a0_a_ainput_o,
	dataout => compteur_aq_sig_a1_a_CLK_driver);

compteur_aq_sig_a1_a_D_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => compteur_aq_sig_a1_a_a6_combout,
	dataout => compteur_aq_sig_a1_a_D_driver);

compteur_aq_sig_a1_a_ASDATA_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => SW_a1_a_ainput_o,
	dataout => compteur_aq_sig_a1_a_ASDATA_driver);

compteur_aq_sig_a1_a_CLRN_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => Key_a1_a_ainput_o,
	dataout => compteur_aq_sig_a1_a_CLRN_driver);

compteur_aq_sig_a1_a_SLOAD_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => SW_a12_a_ainput_o,
	dataout => compteur_aq_sig_a1_a_SLOAD_driver);

-- Location: FF_X114_Y40_N21
compteur_aq_sig_a1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => compteur_aq_sig_a1_a_CLK_driver,
	d => compteur_aq_sig_a1_a_D_driver,
	asdata => compteur_aq_sig_a1_a_ASDATA_driver,
	clrn => compteur_aq_sig_a1_a_CLRN_driver,
	sload => compteur_aq_sig_a1_a_SLOAD_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => compteur_aq_sig(1));

compteur_aq_sig_a2_a_a8_DATAA_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => compteur_aq_sig(2),
	dataout => compteur_aq_sig_a2_a_a8_DATAA_driver);

compteur_aq_sig_a2_a_a8_DATAB_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => SW_a13_a_ainput_o,
	dataout => compteur_aq_sig_a2_a_a8_DATAB_driver);

compteur_aq_sig_a2_a_a8_CIN_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => compteur_aq_sig_a1_a_a7,
	dataout => compteur_aq_sig_a2_a_a8_CIN_driver);

-- Location: LCCOMB_X114_Y40_N22
compteur_aq_sig_a2_a_a8 : cycloneive_lcell_comb
-- Equation(s):
-- compteur_aq_sig_a2_a_a8_combout = ((compteur_aq_sig(2) $ (SW_a13_a_ainput_o $ (compteur_aq_sig_a1_a_a7)))) # (GND)
-- compteur_aq_sig_a2_a_a9 = CARRY((compteur_aq_sig(2) & ((!compteur_aq_sig_a1_a_a7) # (!SW_a13_a_ainput_o))) # (!compteur_aq_sig(2) & (!SW_a13_a_ainput_o & !compteur_aq_sig_a1_a_a7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => compteur_aq_sig_a2_a_a8_DATAA_driver,
	datab => compteur_aq_sig_a2_a_a8_DATAB_driver,
	datad => VCC,
	cin => compteur_aq_sig_a2_a_a8_CIN_driver,
	combout => compteur_aq_sig_a2_a_a8_combout,
	cout => compteur_aq_sig_a2_a_a9);

compteur_aq_sig_a2_a_CLK_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => Key_a0_a_ainput_o,
	dataout => compteur_aq_sig_a2_a_CLK_driver);

compteur_aq_sig_a2_a_D_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => compteur_aq_sig_a2_a_a8_combout,
	dataout => compteur_aq_sig_a2_a_D_driver);

compteur_aq_sig_a2_a_ASDATA_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => SW_a2_a_ainput_o,
	dataout => compteur_aq_sig_a2_a_ASDATA_driver);

compteur_aq_sig_a2_a_CLRN_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => Key_a1_a_ainput_o,
	dataout => compteur_aq_sig_a2_a_CLRN_driver);

compteur_aq_sig_a2_a_SLOAD_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => SW_a12_a_ainput_o,
	dataout => compteur_aq_sig_a2_a_SLOAD_driver);

-- Location: FF_X114_Y40_N23
compteur_aq_sig_a2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => compteur_aq_sig_a2_a_CLK_driver,
	d => compteur_aq_sig_a2_a_D_driver,
	asdata => compteur_aq_sig_a2_a_ASDATA_driver,
	clrn => compteur_aq_sig_a2_a_CLRN_driver,
	sload => compteur_aq_sig_a2_a_SLOAD_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => compteur_aq_sig(2));

compteur_aq_sig_a3_a_a10_DATAB_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => SW_a13_a_ainput_o,
	dataout => compteur_aq_sig_a3_a_a10_DATAB_driver);

compteur_aq_sig_a3_a_a10_DATAD_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => compteur_aq_sig(3),
	dataout => compteur_aq_sig_a3_a_a10_DATAD_driver);

compteur_aq_sig_a3_a_a10_CIN_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => compteur_aq_sig_a2_a_a9,
	dataout => compteur_aq_sig_a3_a_a10_CIN_driver);

-- Location: LCCOMB_X114_Y40_N24
compteur_aq_sig_a3_a_a10 : cycloneive_lcell_comb
-- Equation(s):
-- compteur_aq_sig_a3_a_a10_combout = SW_a13_a_ainput_o $ (compteur_aq_sig_a2_a_a9 $ (!compteur_aq_sig(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => compteur_aq_sig_a3_a_a10_DATAB_driver,
	datad => compteur_aq_sig_a3_a_a10_DATAD_driver,
	cin => compteur_aq_sig_a3_a_a10_CIN_driver,
	combout => compteur_aq_sig_a3_a_a10_combout);

compteur_aq_sig_a3_a_CLK_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => Key_a0_a_ainput_o,
	dataout => compteur_aq_sig_a3_a_CLK_driver);

compteur_aq_sig_a3_a_D_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => compteur_aq_sig_a3_a_a10_combout,
	dataout => compteur_aq_sig_a3_a_D_driver);

compteur_aq_sig_a3_a_ASDATA_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => SW_a3_a_ainput_o,
	dataout => compteur_aq_sig_a3_a_ASDATA_driver);

compteur_aq_sig_a3_a_CLRN_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => Key_a1_a_ainput_o,
	dataout => compteur_aq_sig_a3_a_CLRN_driver);

compteur_aq_sig_a3_a_SLOAD_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => SW_a12_a_ainput_o,
	dataout => compteur_aq_sig_a3_a_SLOAD_driver);

-- Location: FF_X114_Y40_N25
compteur_aq_sig_a3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => compteur_aq_sig_a3_a_CLK_driver,
	d => compteur_aq_sig_a3_a_D_driver,
	asdata => compteur_aq_sig_a3_a_ASDATA_driver,
	clrn => compteur_aq_sig_a3_a_CLRN_driver,
	sload => compteur_aq_sig_a3_a_SLOAD_driver,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => compteur_aq_sig(3));

deco7seg_aMux6_a0_DATAA_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => compteur_aq_sig(0),
	dataout => deco7seg_aMux6_a0_DATAA_driver);

deco7seg_aMux6_a0_DATAB_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => compteur_aq_sig(2),
	dataout => deco7seg_aMux6_a0_DATAB_driver);

deco7seg_aMux6_a0_DATAC_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => compteur_aq_sig(1),
	dataout => deco7seg_aMux6_a0_DATAC_driver);

deco7seg_aMux6_a0_DATAD_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => compteur_aq_sig(3),
	dataout => deco7seg_aMux6_a0_DATAD_driver);

-- Location: LCCOMB_X107_Y72_N28
deco7seg_aMux6_a0 : cycloneive_lcell_comb
-- Equation(s):
-- deco7seg_aMux6_a0_combout = (compteur_aq_sig(2) & (!compteur_aq_sig(1) & (compteur_aq_sig(0) $ (!compteur_aq_sig(3))))) # (!compteur_aq_sig(2) & (compteur_aq_sig(0) & (compteur_aq_sig(1) $ (!compteur_aq_sig(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => deco7seg_aMux6_a0_DATAA_driver,
	datab => deco7seg_aMux6_a0_DATAB_driver,
	datac => deco7seg_aMux6_a0_DATAC_driver,
	datad => deco7seg_aMux6_a0_DATAD_driver,
	combout => deco7seg_aMux6_a0_combout);

deco7seg_aMux5_a0_DATAA_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => compteur_aq_sig(0),
	dataout => deco7seg_aMux5_a0_DATAA_driver);

deco7seg_aMux5_a0_DATAB_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => compteur_aq_sig(2),
	dataout => deco7seg_aMux5_a0_DATAB_driver);

deco7seg_aMux5_a0_DATAC_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => compteur_aq_sig(1),
	dataout => deco7seg_aMux5_a0_DATAC_driver);

deco7seg_aMux5_a0_DATAD_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => compteur_aq_sig(3),
	dataout => deco7seg_aMux5_a0_DATAD_driver);

-- Location: LCCOMB_X107_Y72_N2
deco7seg_aMux5_a0 : cycloneive_lcell_comb
-- Equation(s):
-- deco7seg_aMux5_a0_combout = (compteur_aq_sig(1) & ((compteur_aq_sig(0) & ((compteur_aq_sig(3)))) # (!compteur_aq_sig(0) & (compteur_aq_sig(2))))) # (!compteur_aq_sig(1) & (compteur_aq_sig(2) & (compteur_aq_sig(0) $ (compteur_aq_sig(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => deco7seg_aMux5_a0_DATAA_driver,
	datab => deco7seg_aMux5_a0_DATAB_driver,
	datac => deco7seg_aMux5_a0_DATAC_driver,
	datad => deco7seg_aMux5_a0_DATAD_driver,
	combout => deco7seg_aMux5_a0_combout);

deco7seg_aMux4_a0_DATAA_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => compteur_aq_sig(0),
	dataout => deco7seg_aMux4_a0_DATAA_driver);

deco7seg_aMux4_a0_DATAB_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => compteur_aq_sig(2),
	dataout => deco7seg_aMux4_a0_DATAB_driver);

deco7seg_aMux4_a0_DATAC_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => compteur_aq_sig(1),
	dataout => deco7seg_aMux4_a0_DATAC_driver);

deco7seg_aMux4_a0_DATAD_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => compteur_aq_sig(3),
	dataout => deco7seg_aMux4_a0_DATAD_driver);

-- Location: LCCOMB_X107_Y72_N0
deco7seg_aMux4_a0 : cycloneive_lcell_comb
-- Equation(s):
-- deco7seg_aMux4_a0_combout = (compteur_aq_sig(2) & (compteur_aq_sig(3) & ((compteur_aq_sig(1)) # (!compteur_aq_sig(0))))) # (!compteur_aq_sig(2) & (!compteur_aq_sig(0) & (compteur_aq_sig(1) & !compteur_aq_sig(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => deco7seg_aMux4_a0_DATAA_driver,
	datab => deco7seg_aMux4_a0_DATAB_driver,
	datac => deco7seg_aMux4_a0_DATAC_driver,
	datad => deco7seg_aMux4_a0_DATAD_driver,
	combout => deco7seg_aMux4_a0_combout);

deco7seg_aMux3_a0_DATAA_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => compteur_aq_sig(0),
	dataout => deco7seg_aMux3_a0_DATAA_driver);

deco7seg_aMux3_a0_DATAB_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => compteur_aq_sig(2),
	dataout => deco7seg_aMux3_a0_DATAB_driver);

deco7seg_aMux3_a0_DATAC_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => compteur_aq_sig(1),
	dataout => deco7seg_aMux3_a0_DATAC_driver);

deco7seg_aMux3_a0_DATAD_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => compteur_aq_sig(3),
	dataout => deco7seg_aMux3_a0_DATAD_driver);

-- Location: LCCOMB_X114_Y40_N2
deco7seg_aMux3_a0 : cycloneive_lcell_comb
-- Equation(s):
-- deco7seg_aMux3_a0_combout = (compteur_aq_sig(1) & ((compteur_aq_sig(0) & (compteur_aq_sig(2))) # (!compteur_aq_sig(0) & (!compteur_aq_sig(2) & compteur_aq_sig(3))))) # (!compteur_aq_sig(1) & (!compteur_aq_sig(3) & (compteur_aq_sig(0) $ 
-- (compteur_aq_sig(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => deco7seg_aMux3_a0_DATAA_driver,
	datab => deco7seg_aMux3_a0_DATAB_driver,
	datac => deco7seg_aMux3_a0_DATAC_driver,
	datad => deco7seg_aMux3_a0_DATAD_driver,
	combout => deco7seg_aMux3_a0_combout);

deco7seg_aMux2_a0_DATAA_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => compteur_aq_sig(0),
	dataout => deco7seg_aMux2_a0_DATAA_driver);

deco7seg_aMux2_a0_DATAB_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => compteur_aq_sig(2),
	dataout => deco7seg_aMux2_a0_DATAB_driver);

deco7seg_aMux2_a0_DATAC_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => compteur_aq_sig(1),
	dataout => deco7seg_aMux2_a0_DATAC_driver);

deco7seg_aMux2_a0_DATAD_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => compteur_aq_sig(3),
	dataout => deco7seg_aMux2_a0_DATAD_driver);

-- Location: LCCOMB_X114_Y40_N16
deco7seg_aMux2_a0 : cycloneive_lcell_comb
-- Equation(s):
-- deco7seg_aMux2_a0_combout = (compteur_aq_sig(1) & (compteur_aq_sig(0) & ((!compteur_aq_sig(3))))) # (!compteur_aq_sig(1) & ((compteur_aq_sig(2) & ((!compteur_aq_sig(3)))) # (!compteur_aq_sig(2) & (compteur_aq_sig(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => deco7seg_aMux2_a0_DATAA_driver,
	datab => deco7seg_aMux2_a0_DATAB_driver,
	datac => deco7seg_aMux2_a0_DATAC_driver,
	datad => deco7seg_aMux2_a0_DATAD_driver,
	combout => deco7seg_aMux2_a0_combout);

deco7seg_aMux1_a0_DATAA_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => compteur_aq_sig(0),
	dataout => deco7seg_aMux1_a0_DATAA_driver);

deco7seg_aMux1_a0_DATAB_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => compteur_aq_sig(2),
	dataout => deco7seg_aMux1_a0_DATAB_driver);

deco7seg_aMux1_a0_DATAC_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => compteur_aq_sig(1),
	dataout => deco7seg_aMux1_a0_DATAC_driver);

deco7seg_aMux1_a0_DATAD_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => compteur_aq_sig(3),
	dataout => deco7seg_aMux1_a0_DATAD_driver);

-- Location: LCCOMB_X107_Y72_N30
deco7seg_aMux1_a0 : cycloneive_lcell_comb
-- Equation(s):
-- deco7seg_aMux1_a0_combout = (compteur_aq_sig(0) & (compteur_aq_sig(3) $ (((compteur_aq_sig(1)) # (!compteur_aq_sig(2)))))) # (!compteur_aq_sig(0) & (!compteur_aq_sig(2) & (compteur_aq_sig(1) & !compteur_aq_sig(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => deco7seg_aMux1_a0_DATAA_driver,
	datab => deco7seg_aMux1_a0_DATAB_driver,
	datac => deco7seg_aMux1_a0_DATAC_driver,
	datad => deco7seg_aMux1_a0_DATAD_driver,
	combout => deco7seg_aMux1_a0_combout);

deco7seg_aMux0_a0_DATAA_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => compteur_aq_sig(0),
	dataout => deco7seg_aMux0_a0_DATAA_driver);

deco7seg_aMux0_a0_DATAB_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => compteur_aq_sig(2),
	dataout => deco7seg_aMux0_a0_DATAB_driver);

deco7seg_aMux0_a0_DATAC_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => compteur_aq_sig(1),
	dataout => deco7seg_aMux0_a0_DATAC_driver);

deco7seg_aMux0_a0_DATAD_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => compteur_aq_sig(3),
	dataout => deco7seg_aMux0_a0_DATAD_driver);

-- Location: LCCOMB_X107_Y72_N12
deco7seg_aMux0_a0 : cycloneive_lcell_comb
-- Equation(s):
-- deco7seg_aMux0_a0_combout = (compteur_aq_sig(0) & ((compteur_aq_sig(3)) # (compteur_aq_sig(2) $ (compteur_aq_sig(1))))) # (!compteur_aq_sig(0) & ((compteur_aq_sig(1)) # (compteur_aq_sig(2) $ (compteur_aq_sig(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => deco7seg_aMux0_a0_DATAA_driver,
	datab => deco7seg_aMux0_a0_DATAB_driver,
	datac => deco7seg_aMux0_a0_DATAC_driver,
	datad => deco7seg_aMux0_a0_DATAD_driver,
	combout => deco7seg_aMux0_a0_combout);

SW_a8_a_ainput_I_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => ww_SW(8),
	dataout => SW_a8_a_ainput_I_driver);

-- Location: IOIBUF_X115_Y4_N22
SW_a8_a_ainput : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SW_a8_a_ainput_I_driver,
	o => SW_a8_a_ainput_o);

SW_a9_a_ainput_I_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => ww_SW(9),
	dataout => SW_a9_a_ainput_I_driver);

-- Location: IOIBUF_X115_Y16_N8
SW_a9_a_ainput : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SW_a9_a_ainput_I_driver,
	o => SW_a9_a_ainput_o);

SW_a10_a_ainput_I_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => ww_SW(10),
	dataout => SW_a10_a_ainput_I_driver);

-- Location: IOIBUF_X115_Y4_N15
SW_a10_a_ainput : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SW_a10_a_ainput_I_driver,
	o => SW_a10_a_ainput_o);

SW_a11_a_ainput_I_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => ww_SW(11),
	dataout => SW_a11_a_ainput_I_driver);

-- Location: IOIBUF_X115_Y5_N15
SW_a11_a_ainput : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SW_a11_a_ainput_I_driver,
	o => SW_a11_a_ainput_o);

Key_a2_a_ainput_I_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => ww_Key(2),
	dataout => Key_a2_a_ainput_I_driver);

-- Location: IOIBUF_X115_Y42_N15
Key_a2_a_ainput : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => Key_a2_a_ainput_I_driver,
	o => Key_a2_a_ainput_o);

Key_a3_a_ainput_I_routing_wire_inst : cycloneive_routing_wire
PORT MAP (
	datain => ww_Key(3),
	dataout => Key_a3_a_ainput_I_driver);

-- Location: IOIBUF_X115_Y35_N22
Key_a3_a_ainput : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => Key_a3_a_ainput_I_driver,
	o => Key_a3_a_ainput_o);

ww_LEDR(0) <= LEDR_a0_a_aoutput_o;

ww_LEDR(1) <= LEDR_a1_a_aoutput_o;

ww_LEDR(2) <= LEDR_a2_a_aoutput_o;

ww_LEDR(3) <= LEDR_a3_a_aoutput_o;

ww_LEDR(4) <= LEDR_a4_a_aoutput_o;

ww_LEDR(5) <= LEDR_a5_a_aoutput_o;

ww_LEDR(6) <= LEDR_a6_a_aoutput_o;

ww_LEDR(7) <= LEDR_a7_a_aoutput_o;

ww_LEDR(8) <= LEDR_a8_a_aoutput_o;

ww_LEDR(9) <= LEDR_a9_a_aoutput_o;

ww_LEDR(10) <= LEDR_a10_a_aoutput_o;

ww_LEDR(11) <= LEDR_a11_a_aoutput_o;

ww_LEDR(12) <= LEDR_a12_a_aoutput_o;

ww_LEDR(13) <= LEDR_a13_a_aoutput_o;

ww_LEDR(14) <= LEDR_a14_a_aoutput_o;

ww_LEDR(15) <= LEDR_a15_a_aoutput_o;

ww_LEDR(16) <= LEDR_a16_a_aoutput_o;

ww_LEDR(17) <= LEDR_a17_a_aoutput_o;

ww_LEDG(0) <= LEDG_a0_a_aoutput_o;

ww_LEDG(1) <= LEDG_a1_a_aoutput_o;

ww_LEDG(2) <= LEDG_a2_a_aoutput_o;

ww_LEDG(3) <= LEDG_a3_a_aoutput_o;

ww_LEDG(4) <= LEDG_a4_a_aoutput_o;

ww_LEDG(5) <= LEDG_a5_a_aoutput_o;

ww_LEDG(6) <= LEDG_a6_a_aoutput_o;

ww_LEDG(7) <= LEDG_a7_a_aoutput_o;

ww_Hex0(0) <= Hex0_a0_a_aoutput_o;

ww_Hex0(1) <= Hex0_a1_a_aoutput_o;

ww_Hex0(2) <= Hex0_a2_a_aoutput_o;

ww_Hex0(3) <= Hex0_a3_a_aoutput_o;

ww_Hex0(4) <= Hex0_a4_a_aoutput_o;

ww_Hex0(5) <= Hex0_a5_a_aoutput_o;

ww_Hex0(6) <= Hex0_a6_a_aoutput_o;
END structure;


