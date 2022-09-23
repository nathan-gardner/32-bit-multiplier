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
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "09/23/2022 17:50:27"

-- 
-- Device: Altera 10M50DAF484C6GES Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	multiplier32 IS
    PORT (
	product : BUFFER std_logic_vector(63 DOWNTO 0);
	load_con : BUFFER std_logic;
	add_con : BUFFER std_logic;
	shift_con : BUFFER std_logic;
	multiplicand : IN std_logic_vector(31 DOWNTO 0);
	multiplier : IN std_logic_vector(31 DOWNTO 0);
	reset : IN std_logic;
	clk : IN std_logic;
	count_out : BUFFER std_logic_vector(31 DOWNTO 0);
	adder_result : BUFFER std_logic_vector(31 DOWNTO 0)
	);
END multiplier32;

-- Design Ports Information
-- product[0]	=>  Location: PIN_AA11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[1]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[2]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[3]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[4]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[5]	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[6]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[7]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[8]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[9]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[10]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[11]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[12]	=>  Location: PIN_U19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[13]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[14]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[15]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[16]	=>  Location: PIN_U18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[17]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[18]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[19]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[20]	=>  Location: PIN_W18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[21]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[22]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[23]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[24]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[25]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[26]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[27]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[28]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[29]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[30]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[31]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[32]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[33]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[34]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[35]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[36]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[37]	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[38]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[39]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[40]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[41]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[42]	=>  Location: PIN_W11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[43]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[44]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[45]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[46]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[47]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[48]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[49]	=>  Location: PIN_P10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[50]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[51]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[52]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[53]	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[54]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[55]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[56]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[57]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[58]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[59]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[60]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[61]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[62]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[63]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load_con	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- add_con	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- shift_con	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_out[0]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_out[1]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_out[2]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_out[3]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_out[4]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_out[5]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_out[6]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_out[7]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_out[8]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_out[9]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_out[10]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_out[11]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_out[12]	=>  Location: PIN_P20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_out[13]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_out[14]	=>  Location: PIN_R18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_out[15]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_out[16]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_out[17]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_out[18]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_out[19]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_out[20]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_out[21]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_out[22]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_out[23]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_out[24]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_out[25]	=>  Location: PIN_N22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_out[26]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_out[27]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_out[28]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_out[29]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_out[30]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_out[31]	=>  Location: PIN_R20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adder_result[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adder_result[1]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adder_result[2]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adder_result[3]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adder_result[4]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adder_result[5]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adder_result[6]	=>  Location: PIN_W14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adder_result[7]	=>  Location: PIN_P13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adder_result[8]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adder_result[9]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adder_result[10]	=>  Location: PIN_U5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adder_result[11]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adder_result[12]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adder_result[13]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adder_result[14]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adder_result[15]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adder_result[16]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adder_result[17]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adder_result[18]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adder_result[19]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adder_result[20]	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adder_result[21]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adder_result[22]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adder_result[23]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adder_result[24]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adder_result[25]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adder_result[26]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adder_result[27]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adder_result[28]	=>  Location: PIN_W5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adder_result[29]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adder_result[30]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adder_result[31]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplier[0]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplier[1]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplier[2]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplier[3]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplier[4]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplier[5]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplier[6]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplier[7]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplier[8]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplier[9]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplier[10]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplier[11]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplier[12]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplier[13]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplier[14]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplier[15]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplier[16]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplier[17]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplier[18]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplier[19]	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplier[20]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplier[21]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplier[22]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplier[23]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplier[24]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplier[25]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplier[26]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplier[27]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplier[28]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplier[29]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplier[30]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplier[31]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplicand[0]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplicand[1]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplicand[2]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplicand[3]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplicand[4]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplicand[5]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplicand[6]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplicand[7]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplicand[8]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplicand[9]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplicand[10]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplicand[11]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplicand[12]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplicand[13]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplicand[14]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplicand[15]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplicand[16]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplicand[17]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplicand[18]	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplicand[19]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplicand[20]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplicand[21]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplicand[22]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplicand[23]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplicand[24]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplicand[25]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplicand[26]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplicand[27]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplicand[28]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplicand[29]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplicand[30]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplicand[31]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF multiplier32 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_product : std_logic_vector(63 DOWNTO 0);
SIGNAL ww_load_con : std_logic;
SIGNAL ww_add_con : std_logic;
SIGNAL ww_shift_con : std_logic;
SIGNAL ww_multiplicand : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_multiplier : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_reset : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_count_out : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_adder_result : std_logic_vector(31 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \multiplier[0]~input_o\ : std_logic;
SIGNAL \multiplier[1]~input_o\ : std_logic;
SIGNAL \multiplier[2]~input_o\ : std_logic;
SIGNAL \multiplier[3]~input_o\ : std_logic;
SIGNAL \multiplier[4]~input_o\ : std_logic;
SIGNAL \multiplier[5]~input_o\ : std_logic;
SIGNAL \multiplier[6]~input_o\ : std_logic;
SIGNAL \multiplier[7]~input_o\ : std_logic;
SIGNAL \multiplier[8]~input_o\ : std_logic;
SIGNAL \multiplier[9]~input_o\ : std_logic;
SIGNAL \multiplier[10]~input_o\ : std_logic;
SIGNAL \multiplier[11]~input_o\ : std_logic;
SIGNAL \multiplier[12]~input_o\ : std_logic;
SIGNAL \multiplier[13]~input_o\ : std_logic;
SIGNAL \multiplier[14]~input_o\ : std_logic;
SIGNAL \multiplier[15]~input_o\ : std_logic;
SIGNAL \multiplier[16]~input_o\ : std_logic;
SIGNAL \multiplier[17]~input_o\ : std_logic;
SIGNAL \multiplier[18]~input_o\ : std_logic;
SIGNAL \multiplier[19]~input_o\ : std_logic;
SIGNAL \multiplier[20]~input_o\ : std_logic;
SIGNAL \multiplier[21]~input_o\ : std_logic;
SIGNAL \multiplier[22]~input_o\ : std_logic;
SIGNAL \multiplier[23]~input_o\ : std_logic;
SIGNAL \multiplier[24]~input_o\ : std_logic;
SIGNAL \multiplier[25]~input_o\ : std_logic;
SIGNAL \multiplier[26]~input_o\ : std_logic;
SIGNAL \multiplier[27]~input_o\ : std_logic;
SIGNAL \multiplier[28]~input_o\ : std_logic;
SIGNAL \multiplier[29]~input_o\ : std_logic;
SIGNAL \multiplier[30]~input_o\ : std_logic;
SIGNAL \multiplier[31]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \product[0]~output_o\ : std_logic;
SIGNAL \product[1]~output_o\ : std_logic;
SIGNAL \product[2]~output_o\ : std_logic;
SIGNAL \product[3]~output_o\ : std_logic;
SIGNAL \product[4]~output_o\ : std_logic;
SIGNAL \product[5]~output_o\ : std_logic;
SIGNAL \product[6]~output_o\ : std_logic;
SIGNAL \product[7]~output_o\ : std_logic;
SIGNAL \product[8]~output_o\ : std_logic;
SIGNAL \product[9]~output_o\ : std_logic;
SIGNAL \product[10]~output_o\ : std_logic;
SIGNAL \product[11]~output_o\ : std_logic;
SIGNAL \product[12]~output_o\ : std_logic;
SIGNAL \product[13]~output_o\ : std_logic;
SIGNAL \product[14]~output_o\ : std_logic;
SIGNAL \product[15]~output_o\ : std_logic;
SIGNAL \product[16]~output_o\ : std_logic;
SIGNAL \product[17]~output_o\ : std_logic;
SIGNAL \product[18]~output_o\ : std_logic;
SIGNAL \product[19]~output_o\ : std_logic;
SIGNAL \product[20]~output_o\ : std_logic;
SIGNAL \product[21]~output_o\ : std_logic;
SIGNAL \product[22]~output_o\ : std_logic;
SIGNAL \product[23]~output_o\ : std_logic;
SIGNAL \product[24]~output_o\ : std_logic;
SIGNAL \product[25]~output_o\ : std_logic;
SIGNAL \product[26]~output_o\ : std_logic;
SIGNAL \product[27]~output_o\ : std_logic;
SIGNAL \product[28]~output_o\ : std_logic;
SIGNAL \product[29]~output_o\ : std_logic;
SIGNAL \product[30]~output_o\ : std_logic;
SIGNAL \product[31]~output_o\ : std_logic;
SIGNAL \product[32]~output_o\ : std_logic;
SIGNAL \product[33]~output_o\ : std_logic;
SIGNAL \product[34]~output_o\ : std_logic;
SIGNAL \product[35]~output_o\ : std_logic;
SIGNAL \product[36]~output_o\ : std_logic;
SIGNAL \product[37]~output_o\ : std_logic;
SIGNAL \product[38]~output_o\ : std_logic;
SIGNAL \product[39]~output_o\ : std_logic;
SIGNAL \product[40]~output_o\ : std_logic;
SIGNAL \product[41]~output_o\ : std_logic;
SIGNAL \product[42]~output_o\ : std_logic;
SIGNAL \product[43]~output_o\ : std_logic;
SIGNAL \product[44]~output_o\ : std_logic;
SIGNAL \product[45]~output_o\ : std_logic;
SIGNAL \product[46]~output_o\ : std_logic;
SIGNAL \product[47]~output_o\ : std_logic;
SIGNAL \product[48]~output_o\ : std_logic;
SIGNAL \product[49]~output_o\ : std_logic;
SIGNAL \product[50]~output_o\ : std_logic;
SIGNAL \product[51]~output_o\ : std_logic;
SIGNAL \product[52]~output_o\ : std_logic;
SIGNAL \product[53]~output_o\ : std_logic;
SIGNAL \product[54]~output_o\ : std_logic;
SIGNAL \product[55]~output_o\ : std_logic;
SIGNAL \product[56]~output_o\ : std_logic;
SIGNAL \product[57]~output_o\ : std_logic;
SIGNAL \product[58]~output_o\ : std_logic;
SIGNAL \product[59]~output_o\ : std_logic;
SIGNAL \product[60]~output_o\ : std_logic;
SIGNAL \product[61]~output_o\ : std_logic;
SIGNAL \product[62]~output_o\ : std_logic;
SIGNAL \product[63]~output_o\ : std_logic;
SIGNAL \load_con~output_o\ : std_logic;
SIGNAL \add_con~output_o\ : std_logic;
SIGNAL \shift_con~output_o\ : std_logic;
SIGNAL \count_out[0]~output_o\ : std_logic;
SIGNAL \count_out[1]~output_o\ : std_logic;
SIGNAL \count_out[2]~output_o\ : std_logic;
SIGNAL \count_out[3]~output_o\ : std_logic;
SIGNAL \count_out[4]~output_o\ : std_logic;
SIGNAL \count_out[5]~output_o\ : std_logic;
SIGNAL \count_out[6]~output_o\ : std_logic;
SIGNAL \count_out[7]~output_o\ : std_logic;
SIGNAL \count_out[8]~output_o\ : std_logic;
SIGNAL \count_out[9]~output_o\ : std_logic;
SIGNAL \count_out[10]~output_o\ : std_logic;
SIGNAL \count_out[11]~output_o\ : std_logic;
SIGNAL \count_out[12]~output_o\ : std_logic;
SIGNAL \count_out[13]~output_o\ : std_logic;
SIGNAL \count_out[14]~output_o\ : std_logic;
SIGNAL \count_out[15]~output_o\ : std_logic;
SIGNAL \count_out[16]~output_o\ : std_logic;
SIGNAL \count_out[17]~output_o\ : std_logic;
SIGNAL \count_out[18]~output_o\ : std_logic;
SIGNAL \count_out[19]~output_o\ : std_logic;
SIGNAL \count_out[20]~output_o\ : std_logic;
SIGNAL \count_out[21]~output_o\ : std_logic;
SIGNAL \count_out[22]~output_o\ : std_logic;
SIGNAL \count_out[23]~output_o\ : std_logic;
SIGNAL \count_out[24]~output_o\ : std_logic;
SIGNAL \count_out[25]~output_o\ : std_logic;
SIGNAL \count_out[26]~output_o\ : std_logic;
SIGNAL \count_out[27]~output_o\ : std_logic;
SIGNAL \count_out[28]~output_o\ : std_logic;
SIGNAL \count_out[29]~output_o\ : std_logic;
SIGNAL \count_out[30]~output_o\ : std_logic;
SIGNAL \count_out[31]~output_o\ : std_logic;
SIGNAL \adder_result[0]~output_o\ : std_logic;
SIGNAL \adder_result[1]~output_o\ : std_logic;
SIGNAL \adder_result[2]~output_o\ : std_logic;
SIGNAL \adder_result[3]~output_o\ : std_logic;
SIGNAL \adder_result[4]~output_o\ : std_logic;
SIGNAL \adder_result[5]~output_o\ : std_logic;
SIGNAL \adder_result[6]~output_o\ : std_logic;
SIGNAL \adder_result[7]~output_o\ : std_logic;
SIGNAL \adder_result[8]~output_o\ : std_logic;
SIGNAL \adder_result[9]~output_o\ : std_logic;
SIGNAL \adder_result[10]~output_o\ : std_logic;
SIGNAL \adder_result[11]~output_o\ : std_logic;
SIGNAL \adder_result[12]~output_o\ : std_logic;
SIGNAL \adder_result[13]~output_o\ : std_logic;
SIGNAL \adder_result[14]~output_o\ : std_logic;
SIGNAL \adder_result[15]~output_o\ : std_logic;
SIGNAL \adder_result[16]~output_o\ : std_logic;
SIGNAL \adder_result[17]~output_o\ : std_logic;
SIGNAL \adder_result[18]~output_o\ : std_logic;
SIGNAL \adder_result[19]~output_o\ : std_logic;
SIGNAL \adder_result[20]~output_o\ : std_logic;
SIGNAL \adder_result[21]~output_o\ : std_logic;
SIGNAL \adder_result[22]~output_o\ : std_logic;
SIGNAL \adder_result[23]~output_o\ : std_logic;
SIGNAL \adder_result[24]~output_o\ : std_logic;
SIGNAL \adder_result[25]~output_o\ : std_logic;
SIGNAL \adder_result[26]~output_o\ : std_logic;
SIGNAL \adder_result[27]~output_o\ : std_logic;
SIGNAL \adder_result[28]~output_o\ : std_logic;
SIGNAL \adder_result[29]~output_o\ : std_logic;
SIGNAL \adder_result[30]~output_o\ : std_logic;
SIGNAL \adder_result[31]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \control_unit_inst|count[0]~93_combout\ : std_logic;
SIGNAL \control_unit_inst|count[1]~31_combout\ : std_logic;
SIGNAL \control_unit_inst|count[1]~32\ : std_logic;
SIGNAL \control_unit_inst|count[2]~33_combout\ : std_logic;
SIGNAL \control_unit_inst|count[2]~34\ : std_logic;
SIGNAL \control_unit_inst|count[3]~35_combout\ : std_logic;
SIGNAL \control_unit_inst|count[3]~36\ : std_logic;
SIGNAL \control_unit_inst|count[4]~37_combout\ : std_logic;
SIGNAL \control_unit_inst|count[4]~38\ : std_logic;
SIGNAL \control_unit_inst|count[5]~39_combout\ : std_logic;
SIGNAL \control_unit_inst|count[5]~40\ : std_logic;
SIGNAL \control_unit_inst|count[6]~41_combout\ : std_logic;
SIGNAL \control_unit_inst|count[6]~42\ : std_logic;
SIGNAL \control_unit_inst|count[7]~43_combout\ : std_logic;
SIGNAL \control_unit_inst|count[7]~44\ : std_logic;
SIGNAL \control_unit_inst|count[8]~45_combout\ : std_logic;
SIGNAL \control_unit_inst|count[8]~46\ : std_logic;
SIGNAL \control_unit_inst|count[9]~47_combout\ : std_logic;
SIGNAL \control_unit_inst|count[9]~48\ : std_logic;
SIGNAL \control_unit_inst|count[10]~49_combout\ : std_logic;
SIGNAL \control_unit_inst|count[10]~50\ : std_logic;
SIGNAL \control_unit_inst|count[11]~51_combout\ : std_logic;
SIGNAL \control_unit_inst|count[11]~52\ : std_logic;
SIGNAL \control_unit_inst|count[12]~53_combout\ : std_logic;
SIGNAL \control_unit_inst|count[12]~54\ : std_logic;
SIGNAL \control_unit_inst|count[13]~55_combout\ : std_logic;
SIGNAL \control_unit_inst|count[13]~56\ : std_logic;
SIGNAL \control_unit_inst|count[14]~57_combout\ : std_logic;
SIGNAL \control_unit_inst|count[14]~58\ : std_logic;
SIGNAL \control_unit_inst|count[15]~59_combout\ : std_logic;
SIGNAL \control_unit_inst|count[15]~60\ : std_logic;
SIGNAL \control_unit_inst|count[16]~61_combout\ : std_logic;
SIGNAL \control_unit_inst|count[16]~62\ : std_logic;
SIGNAL \control_unit_inst|count[17]~63_combout\ : std_logic;
SIGNAL \control_unit_inst|count[17]~64\ : std_logic;
SIGNAL \control_unit_inst|count[18]~65_combout\ : std_logic;
SIGNAL \control_unit_inst|count[18]~66\ : std_logic;
SIGNAL \control_unit_inst|count[19]~67_combout\ : std_logic;
SIGNAL \control_unit_inst|Equal0~5_combout\ : std_logic;
SIGNAL \control_unit_inst|count[19]~68\ : std_logic;
SIGNAL \control_unit_inst|count[20]~69_combout\ : std_logic;
SIGNAL \control_unit_inst|count[20]~70\ : std_logic;
SIGNAL \control_unit_inst|count[21]~71_combout\ : std_logic;
SIGNAL \control_unit_inst|count[21]~72\ : std_logic;
SIGNAL \control_unit_inst|count[22]~73_combout\ : std_logic;
SIGNAL \control_unit_inst|count[22]~74\ : std_logic;
SIGNAL \control_unit_inst|count[23]~75_combout\ : std_logic;
SIGNAL \control_unit_inst|Equal0~6_combout\ : std_logic;
SIGNAL \control_unit_inst|Equal0~7_combout\ : std_logic;
SIGNAL \control_unit_inst|count[23]~76\ : std_logic;
SIGNAL \control_unit_inst|count[24]~77_combout\ : std_logic;
SIGNAL \control_unit_inst|count[24]~78\ : std_logic;
SIGNAL \control_unit_inst|count[25]~79_combout\ : std_logic;
SIGNAL \control_unit_inst|count[25]~80\ : std_logic;
SIGNAL \control_unit_inst|count[26]~81_combout\ : std_logic;
SIGNAL \control_unit_inst|count[26]~82\ : std_logic;
SIGNAL \control_unit_inst|count[27]~83_combout\ : std_logic;
SIGNAL \control_unit_inst|count[27]~84\ : std_logic;
SIGNAL \control_unit_inst|count[28]~85_combout\ : std_logic;
SIGNAL \control_unit_inst|count[28]~86\ : std_logic;
SIGNAL \control_unit_inst|count[29]~87_combout\ : std_logic;
SIGNAL \control_unit_inst|count[29]~88\ : std_logic;
SIGNAL \control_unit_inst|count[30]~89_combout\ : std_logic;
SIGNAL \control_unit_inst|count[30]~90\ : std_logic;
SIGNAL \control_unit_inst|count[31]~91_combout\ : std_logic;
SIGNAL \control_unit_inst|Equal0~9_combout\ : std_logic;
SIGNAL \control_unit_inst|Equal0~8_combout\ : std_logic;
SIGNAL \control_unit_inst|Equal0~0_combout\ : std_logic;
SIGNAL \control_unit_inst|Equal0~1_combout\ : std_logic;
SIGNAL \control_unit_inst|Equal0~3_combout\ : std_logic;
SIGNAL \control_unit_inst|Equal0~2_combout\ : std_logic;
SIGNAL \control_unit_inst|Equal0~4_combout\ : std_logic;
SIGNAL \control_unit_inst|Equal0~10_combout\ : std_logic;
SIGNAL \control_unit_inst|comb~1_combout\ : std_logic;
SIGNAL \control_unit_inst|comb~0_combout\ : std_logic;
SIGNAL \product_reg_inst|product_reg~71_combout\ : std_logic;
SIGNAL \control_unit_inst|next_state.add_state_168~combout\ : std_logic;
SIGNAL \control_unit_inst|curr_state.add_state~q\ : std_logic;
SIGNAL \control_unit_inst|next_state.shift_state_177~combout\ : std_logic;
SIGNAL \control_unit_inst|curr_state.shift_state~q\ : std_logic;
SIGNAL \multiplicand[0]~input_o\ : std_logic;
SIGNAL \multiplicand32_inst|address[0]~feeder_combout\ : std_logic;
SIGNAL \adder_inst|Add0~0_combout\ : std_logic;
SIGNAL \adder_inst|Add0~2_combout\ : std_logic;
SIGNAL \multiplicand[1]~input_o\ : std_logic;
SIGNAL \multiplicand32_inst|address[1]~feeder_combout\ : std_logic;
SIGNAL \adder_inst|Add0~1\ : std_logic;
SIGNAL \adder_inst|Add0~3_combout\ : std_logic;
SIGNAL \adder_inst|Add0~5_combout\ : std_logic;
SIGNAL \multiplicand[2]~input_o\ : std_logic;
SIGNAL \multiplicand32_inst|address[2]~feeder_combout\ : std_logic;
SIGNAL \adder_inst|Add0~4\ : std_logic;
SIGNAL \adder_inst|Add0~6_combout\ : std_logic;
SIGNAL \adder_inst|Add0~8_combout\ : std_logic;
SIGNAL \multiplicand[3]~input_o\ : std_logic;
SIGNAL \multiplicand32_inst|address[3]~feeder_combout\ : std_logic;
SIGNAL \adder_inst|Add0~7\ : std_logic;
SIGNAL \adder_inst|Add0~9_combout\ : std_logic;
SIGNAL \adder_inst|Add0~11_combout\ : std_logic;
SIGNAL \multiplicand[5]~input_o\ : std_logic;
SIGNAL \multiplicand32_inst|address[5]~feeder_combout\ : std_logic;
SIGNAL \multiplicand[4]~input_o\ : std_logic;
SIGNAL \multiplicand32_inst|address[4]~feeder_combout\ : std_logic;
SIGNAL \adder_inst|Add0~10\ : std_logic;
SIGNAL \adder_inst|Add0~13\ : std_logic;
SIGNAL \adder_inst|Add0~15_combout\ : std_logic;
SIGNAL \adder_inst|Add0~17_combout\ : std_logic;
SIGNAL \multiplicand[7]~input_o\ : std_logic;
SIGNAL \multiplicand32_inst|address[7]~feeder_combout\ : std_logic;
SIGNAL \multiplicand[6]~input_o\ : std_logic;
SIGNAL \multiplicand32_inst|address[6]~feeder_combout\ : std_logic;
SIGNAL \adder_inst|Add0~16\ : std_logic;
SIGNAL \adder_inst|Add0~19\ : std_logic;
SIGNAL \adder_inst|Add0~21_combout\ : std_logic;
SIGNAL \adder_inst|Add0~23_combout\ : std_logic;
SIGNAL \multiplicand[9]~input_o\ : std_logic;
SIGNAL \multiplicand32_inst|address[9]~feeder_combout\ : std_logic;
SIGNAL \multiplicand[8]~input_o\ : std_logic;
SIGNAL \multiplicand32_inst|address[8]~feeder_combout\ : std_logic;
SIGNAL \adder_inst|Add0~22\ : std_logic;
SIGNAL \adder_inst|Add0~25\ : std_logic;
SIGNAL \adder_inst|Add0~27_combout\ : std_logic;
SIGNAL \adder_inst|Add0~29_combout\ : std_logic;
SIGNAL \multiplicand[11]~input_o\ : std_logic;
SIGNAL \multiplicand32_inst|address[11]~feeder_combout\ : std_logic;
SIGNAL \multiplicand[10]~input_o\ : std_logic;
SIGNAL \multiplicand32_inst|address[10]~feeder_combout\ : std_logic;
SIGNAL \adder_inst|Add0~28\ : std_logic;
SIGNAL \adder_inst|Add0~31\ : std_logic;
SIGNAL \adder_inst|Add0~33_combout\ : std_logic;
SIGNAL \adder_inst|Add0~35_combout\ : std_logic;
SIGNAL \multiplicand[14]~input_o\ : std_logic;
SIGNAL \multiplicand32_inst|address[14]~feeder_combout\ : std_logic;
SIGNAL \multiplicand[13]~input_o\ : std_logic;
SIGNAL \multiplicand32_inst|address[13]~feeder_combout\ : std_logic;
SIGNAL \multiplicand[12]~input_o\ : std_logic;
SIGNAL \multiplicand32_inst|address[12]~feeder_combout\ : std_logic;
SIGNAL \adder_inst|Add0~34\ : std_logic;
SIGNAL \adder_inst|Add0~37\ : std_logic;
SIGNAL \adder_inst|Add0~40\ : std_logic;
SIGNAL \adder_inst|Add0~42_combout\ : std_logic;
SIGNAL \adder_inst|Add0~44_combout\ : std_logic;
SIGNAL \multiplicand[17]~input_o\ : std_logic;
SIGNAL \multiplicand32_inst|address[17]~feeder_combout\ : std_logic;
SIGNAL \multiplicand[16]~input_o\ : std_logic;
SIGNAL \multiplicand32_inst|address[16]~feeder_combout\ : std_logic;
SIGNAL \multiplicand[15]~input_o\ : std_logic;
SIGNAL \multiplicand32_inst|address[15]~feeder_combout\ : std_logic;
SIGNAL \adder_inst|Add0~43\ : std_logic;
SIGNAL \adder_inst|Add0~46\ : std_logic;
SIGNAL \adder_inst|Add0~49\ : std_logic;
SIGNAL \adder_inst|Add0~51_combout\ : std_logic;
SIGNAL \adder_inst|Add0~53_combout\ : std_logic;
SIGNAL \multiplicand[18]~input_o\ : std_logic;
SIGNAL \multiplicand32_inst|address[18]~feeder_combout\ : std_logic;
SIGNAL \adder_inst|Add0~52\ : std_logic;
SIGNAL \adder_inst|Add0~54_combout\ : std_logic;
SIGNAL \adder_inst|Add0~56_combout\ : std_logic;
SIGNAL \multiplicand[19]~input_o\ : std_logic;
SIGNAL \multiplicand32_inst|address[19]~feeder_combout\ : std_logic;
SIGNAL \adder_inst|Add0~55\ : std_logic;
SIGNAL \adder_inst|Add0~57_combout\ : std_logic;
SIGNAL \adder_inst|Add0~59_combout\ : std_logic;
SIGNAL \multiplicand[20]~input_o\ : std_logic;
SIGNAL \multiplicand32_inst|address[20]~feeder_combout\ : std_logic;
SIGNAL \adder_inst|Add0~58\ : std_logic;
SIGNAL \adder_inst|Add0~60_combout\ : std_logic;
SIGNAL \adder_inst|Add0~62_combout\ : std_logic;
SIGNAL \multiplicand[23]~input_o\ : std_logic;
SIGNAL \multiplicand32_inst|address[23]~feeder_combout\ : std_logic;
SIGNAL \multiplicand[22]~input_o\ : std_logic;
SIGNAL \multiplicand32_inst|address[22]~feeder_combout\ : std_logic;
SIGNAL \multiplicand[21]~input_o\ : std_logic;
SIGNAL \multiplicand32_inst|address[21]~feeder_combout\ : std_logic;
SIGNAL \adder_inst|Add0~61\ : std_logic;
SIGNAL \adder_inst|Add0~64\ : std_logic;
SIGNAL \adder_inst|Add0~67\ : std_logic;
SIGNAL \adder_inst|Add0~69_combout\ : std_logic;
SIGNAL \adder_inst|Add0~71_combout\ : std_logic;
SIGNAL \multiplicand[25]~input_o\ : std_logic;
SIGNAL \multiplicand32_inst|address[25]~feeder_combout\ : std_logic;
SIGNAL \multiplicand[24]~input_o\ : std_logic;
SIGNAL \multiplicand32_inst|address[24]~feeder_combout\ : std_logic;
SIGNAL \adder_inst|Add0~70\ : std_logic;
SIGNAL \adder_inst|Add0~73\ : std_logic;
SIGNAL \adder_inst|Add0~75_combout\ : std_logic;
SIGNAL \adder_inst|Add0~77_combout\ : std_logic;
SIGNAL \product_reg_inst|product_reg~69_combout\ : std_logic;
SIGNAL \multiplicand[31]~input_o\ : std_logic;
SIGNAL \multiplicand32_inst|address[31]~feeder_combout\ : std_logic;
SIGNAL \multiplicand[30]~input_o\ : std_logic;
SIGNAL \multiplicand32_inst|address[30]~feeder_combout\ : std_logic;
SIGNAL \multiplicand[29]~input_o\ : std_logic;
SIGNAL \multiplicand32_inst|address[29]~feeder_combout\ : std_logic;
SIGNAL \multiplicand[28]~input_o\ : std_logic;
SIGNAL \multiplicand32_inst|address[28]~feeder_combout\ : std_logic;
SIGNAL \multiplicand[27]~input_o\ : std_logic;
SIGNAL \multiplicand32_inst|address[27]~feeder_combout\ : std_logic;
SIGNAL \multiplicand[26]~input_o\ : std_logic;
SIGNAL \multiplicand32_inst|address[26]~feeder_combout\ : std_logic;
SIGNAL \adder_inst|Add0~76\ : std_logic;
SIGNAL \adder_inst|Add0~79\ : std_logic;
SIGNAL \adder_inst|Add0~82\ : std_logic;
SIGNAL \adder_inst|Add0~85\ : std_logic;
SIGNAL \adder_inst|Add0~88\ : std_logic;
SIGNAL \adder_inst|Add0~91\ : std_logic;
SIGNAL \adder_inst|Add0~93_combout\ : std_logic;
SIGNAL \product_reg_inst|product_reg~70_combout\ : std_logic;
SIGNAL \product_reg_inst|product_reg~67_combout\ : std_logic;
SIGNAL \adder_inst|Add0~90_combout\ : std_logic;
SIGNAL \product_reg_inst|product_reg~68_combout\ : std_logic;
SIGNAL \product_reg_inst|product_reg[33]~34_combout\ : std_logic;
SIGNAL \product_reg_inst|product_reg~65_combout\ : std_logic;
SIGNAL \adder_inst|Add0~87_combout\ : std_logic;
SIGNAL \product_reg_inst|product_reg~66_combout\ : std_logic;
SIGNAL \product_reg_inst|product_reg~63_combout\ : std_logic;
SIGNAL \adder_inst|Add0~84_combout\ : std_logic;
SIGNAL \product_reg_inst|product_reg~64_combout\ : std_logic;
SIGNAL \product_reg_inst|product_reg~61_combout\ : std_logic;
SIGNAL \adder_inst|Add0~81_combout\ : std_logic;
SIGNAL \product_reg_inst|product_reg~62_combout\ : std_logic;
SIGNAL \adder_inst|Add0~78_combout\ : std_logic;
SIGNAL \adder_inst|Add0~80_combout\ : std_logic;
SIGNAL \product_reg_inst|product_reg~60_combout\ : std_logic;
SIGNAL \product_reg_inst|product_reg~59_combout\ : std_logic;
SIGNAL \adder_inst|Add0~72_combout\ : std_logic;
SIGNAL \adder_inst|Add0~74_combout\ : std_logic;
SIGNAL \product_reg_inst|product_reg~58_combout\ : std_logic;
SIGNAL \product_reg_inst|product_reg~57_combout\ : std_logic;
SIGNAL \adder_inst|Add0~66_combout\ : std_logic;
SIGNAL \adder_inst|Add0~68_combout\ : std_logic;
SIGNAL \product_reg_inst|product_reg~56_combout\ : std_logic;
SIGNAL \adder_inst|Add0~63_combout\ : std_logic;
SIGNAL \adder_inst|Add0~65_combout\ : std_logic;
SIGNAL \product_reg_inst|product_reg~55_combout\ : std_logic;
SIGNAL \product_reg_inst|product_reg~54_combout\ : std_logic;
SIGNAL \product_reg_inst|product_reg~53_combout\ : std_logic;
SIGNAL \product_reg_inst|product_reg~52_combout\ : std_logic;
SIGNAL \product_reg_inst|product_reg~51_combout\ : std_logic;
SIGNAL \adder_inst|Add0~48_combout\ : std_logic;
SIGNAL \adder_inst|Add0~50_combout\ : std_logic;
SIGNAL \product_reg_inst|product_reg~50_combout\ : std_logic;
SIGNAL \adder_inst|Add0~45_combout\ : std_logic;
SIGNAL \adder_inst|Add0~47_combout\ : std_logic;
SIGNAL \product_reg_inst|product_reg~49_combout\ : std_logic;
SIGNAL \product_reg_inst|product_reg~48_combout\ : std_logic;
SIGNAL \adder_inst|Add0~39_combout\ : std_logic;
SIGNAL \adder_inst|Add0~41_combout\ : std_logic;
SIGNAL \product_reg_inst|product_reg~47_combout\ : std_logic;
SIGNAL \adder_inst|Add0~36_combout\ : std_logic;
SIGNAL \adder_inst|Add0~38_combout\ : std_logic;
SIGNAL \product_reg_inst|product_reg~46_combout\ : std_logic;
SIGNAL \product_reg_inst|product_reg~45_combout\ : std_logic;
SIGNAL \adder_inst|Add0~30_combout\ : std_logic;
SIGNAL \adder_inst|Add0~32_combout\ : std_logic;
SIGNAL \product_reg_inst|product_reg~44_combout\ : std_logic;
SIGNAL \product_reg_inst|product_reg~43_combout\ : std_logic;
SIGNAL \adder_inst|Add0~24_combout\ : std_logic;
SIGNAL \adder_inst|Add0~26_combout\ : std_logic;
SIGNAL \product_reg_inst|product_reg~42_combout\ : std_logic;
SIGNAL \product_reg_inst|product_reg~41_combout\ : std_logic;
SIGNAL \adder_inst|Add0~18_combout\ : std_logic;
SIGNAL \adder_inst|Add0~20_combout\ : std_logic;
SIGNAL \product_reg_inst|product_reg~40_combout\ : std_logic;
SIGNAL \product_reg_inst|product_reg~39_combout\ : std_logic;
SIGNAL \adder_inst|Add0~12_combout\ : std_logic;
SIGNAL \adder_inst|Add0~14_combout\ : std_logic;
SIGNAL \product_reg_inst|product_reg~38_combout\ : std_logic;
SIGNAL \product_reg_inst|product_reg~37_combout\ : std_logic;
SIGNAL \product_reg_inst|product_reg~36_combout\ : std_logic;
SIGNAL \product_reg_inst|product_reg~35_combout\ : std_logic;
SIGNAL \product_reg_inst|product_reg~33_combout\ : std_logic;
SIGNAL \product_reg_inst|product_reg~32_combout\ : std_logic;
SIGNAL \product_reg_inst|product_reg[0]~1_combout\ : std_logic;
SIGNAL \product_reg_inst|product_reg~31_combout\ : std_logic;
SIGNAL \product_reg_inst|product_reg~30_combout\ : std_logic;
SIGNAL \product_reg_inst|product_reg~29_combout\ : std_logic;
SIGNAL \product_reg_inst|product_reg~28_combout\ : std_logic;
SIGNAL \product_reg_inst|product_reg~27_combout\ : std_logic;
SIGNAL \product_reg_inst|product_reg~26_combout\ : std_logic;
SIGNAL \product_reg_inst|product_reg~25_combout\ : std_logic;
SIGNAL \product_reg_inst|product_reg~24_combout\ : std_logic;
SIGNAL \product_reg_inst|product_reg~23_combout\ : std_logic;
SIGNAL \product_reg_inst|product_reg~22_combout\ : std_logic;
SIGNAL \product_reg_inst|product_reg~21_combout\ : std_logic;
SIGNAL \product_reg_inst|product_reg~20_combout\ : std_logic;
SIGNAL \product_reg_inst|product_reg~19_combout\ : std_logic;
SIGNAL \product_reg_inst|product_reg~18_combout\ : std_logic;
SIGNAL \product_reg_inst|product_reg~17_combout\ : std_logic;
SIGNAL \product_reg_inst|product_reg~16_combout\ : std_logic;
SIGNAL \product_reg_inst|product_reg~15_combout\ : std_logic;
SIGNAL \product_reg_inst|product_reg~14_combout\ : std_logic;
SIGNAL \product_reg_inst|product_reg~13_combout\ : std_logic;
SIGNAL \product_reg_inst|product_reg~12_combout\ : std_logic;
SIGNAL \product_reg_inst|product_reg~11_combout\ : std_logic;
SIGNAL \product_reg_inst|product_reg~10_combout\ : std_logic;
SIGNAL \product_reg_inst|product_reg~9_combout\ : std_logic;
SIGNAL \product_reg_inst|product_reg~8_combout\ : std_logic;
SIGNAL \product_reg_inst|product_reg~7_combout\ : std_logic;
SIGNAL \product_reg_inst|product_reg~6_combout\ : std_logic;
SIGNAL \product_reg_inst|product_reg~5_combout\ : std_logic;
SIGNAL \product_reg_inst|product_reg~4_combout\ : std_logic;
SIGNAL \product_reg_inst|product_reg~3_combout\ : std_logic;
SIGNAL \product_reg_inst|product_reg~2_combout\ : std_logic;
SIGNAL \product_reg_inst|product_reg~0_combout\ : std_logic;
SIGNAL \adder_inst|Add0~83_combout\ : std_logic;
SIGNAL \adder_inst|Add0~86_combout\ : std_logic;
SIGNAL \adder_inst|Add0~89_combout\ : std_logic;
SIGNAL \adder_inst|Add0~92_combout\ : std_logic;
SIGNAL \adder_inst|Add0~95_combout\ : std_logic;
SIGNAL \control_unit_inst|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \product_reg_inst|product_reg\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \multiplicand32_inst|address\ : std_logic_vector(31 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

product <= ww_product;
load_con <= ww_load_con;
add_con <= ww_add_con;
shift_con <= ww_shift_con;
ww_multiplicand <= multiplicand;
ww_multiplier <= multiplier;
ww_reset <= reset;
ww_clk <= clk;
count_out <= ww_count_out;
adder_result <= ww_adder_result;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y51_N8
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X40_Y0_N9
\product[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \product_reg_inst|product_reg\(0),
	devoe => ww_devoe,
	o => \product[0]~output_o\);

-- Location: IOOBUF_X46_Y0_N2
\product[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \product_reg_inst|product_reg\(1),
	devoe => ww_devoe,
	o => \product[1]~output_o\);

-- Location: IOOBUF_X49_Y0_N2
\product[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \product_reg_inst|product_reg\(2),
	devoe => ww_devoe,
	o => \product[2]~output_o\);

-- Location: IOOBUF_X49_Y0_N16
\product[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \product_reg_inst|product_reg\(3),
	devoe => ww_devoe,
	o => \product[3]~output_o\);

-- Location: IOOBUF_X56_Y0_N16
\product[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \product_reg_inst|product_reg\(4),
	devoe => ww_devoe,
	o => \product[4]~output_o\);

-- Location: IOOBUF_X46_Y0_N9
\product[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \product_reg_inst|product_reg\(5),
	devoe => ww_devoe,
	o => \product[5]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\product[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \product_reg_inst|product_reg\(6),
	devoe => ww_devoe,
	o => \product[6]~output_o\);

-- Location: IOOBUF_X54_Y0_N16
\product[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \product_reg_inst|product_reg\(7),
	devoe => ww_devoe,
	o => \product[7]~output_o\);

-- Location: IOOBUF_X56_Y0_N23
\product[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \product_reg_inst|product_reg\(8),
	devoe => ww_devoe,
	o => \product[8]~output_o\);

-- Location: IOOBUF_X78_Y15_N2
\product[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \product_reg_inst|product_reg\(9),
	devoe => ww_devoe,
	o => \product[9]~output_o\);

-- Location: IOOBUF_X62_Y0_N30
\product[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \product_reg_inst|product_reg\(10),
	devoe => ww_devoe,
	o => \product[10]~output_o\);

-- Location: IOOBUF_X78_Y3_N9
\product[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \product_reg_inst|product_reg\(11),
	devoe => ww_devoe,
	o => \product[11]~output_o\);

-- Location: IOOBUF_X78_Y15_N16
\product[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \product_reg_inst|product_reg\(12),
	devoe => ww_devoe,
	o => \product[12]~output_o\);

-- Location: IOOBUF_X69_Y0_N16
\product[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \product_reg_inst|product_reg\(13),
	devoe => ww_devoe,
	o => \product[13]~output_o\);

-- Location: IOOBUF_X78_Y15_N23
\product[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \product_reg_inst|product_reg\(14),
	devoe => ww_devoe,
	o => \product[14]~output_o\);

-- Location: IOOBUF_X78_Y15_N9
\product[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \product_reg_inst|product_reg\(15),
	devoe => ww_devoe,
	o => \product[15]~output_o\);

-- Location: IOOBUF_X78_Y3_N23
\product[16]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \product_reg_inst|product_reg\(16),
	devoe => ww_devoe,
	o => \product[16]~output_o\);

-- Location: IOOBUF_X58_Y0_N16
\product[17]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \product_reg_inst|product_reg\(17),
	devoe => ww_devoe,
	o => \product[17]~output_o\);

-- Location: IOOBUF_X78_Y3_N16
\product[18]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \product_reg_inst|product_reg\(18),
	devoe => ww_devoe,
	o => \product[18]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\product[19]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \product_reg_inst|product_reg\(19),
	devoe => ww_devoe,
	o => \product[19]~output_o\);

-- Location: IOOBUF_X62_Y0_N9
\product[20]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \product_reg_inst|product_reg\(20),
	devoe => ww_devoe,
	o => \product[20]~output_o\);

-- Location: IOOBUF_X69_Y0_N23
\product[21]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \product_reg_inst|product_reg\(21),
	devoe => ww_devoe,
	o => \product[21]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\product[22]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \product_reg_inst|product_reg\(22),
	devoe => ww_devoe,
	o => \product[22]~output_o\);

-- Location: IOOBUF_X78_Y16_N9
\product[23]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \product_reg_inst|product_reg\(23),
	devoe => ww_devoe,
	o => \product[23]~output_o\);

-- Location: IOOBUF_X78_Y3_N2
\product[24]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \product_reg_inst|product_reg\(24),
	devoe => ww_devoe,
	o => \product[24]~output_o\);

-- Location: IOOBUF_X60_Y0_N30
\product[25]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \product_reg_inst|product_reg\(25),
	devoe => ww_devoe,
	o => \product[25]~output_o\);

-- Location: IOOBUF_X58_Y0_N30
\product[26]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \product_reg_inst|product_reg\(26),
	devoe => ww_devoe,
	o => \product[26]~output_o\);

-- Location: IOOBUF_X58_Y0_N2
\product[27]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \product_reg_inst|product_reg\(27),
	devoe => ww_devoe,
	o => \product[27]~output_o\);

-- Location: IOOBUF_X56_Y0_N9
\product[28]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \product_reg_inst|product_reg\(28),
	devoe => ww_devoe,
	o => \product[28]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\product[29]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \product_reg_inst|product_reg\(29),
	devoe => ww_devoe,
	o => \product[29]~output_o\);

-- Location: IOOBUF_X54_Y0_N9
\product[30]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \product_reg_inst|product_reg\(30),
	devoe => ww_devoe,
	o => \product[30]~output_o\);

-- Location: IOOBUF_X56_Y0_N30
\product[31]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \product_reg_inst|product_reg\(31),
	devoe => ww_devoe,
	o => \product[31]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\product[32]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \product_reg_inst|product_reg\(32),
	devoe => ww_devoe,
	o => \product[32]~output_o\);

-- Location: IOOBUF_X34_Y0_N9
\product[33]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \product_reg_inst|product_reg\(33),
	devoe => ww_devoe,
	o => \product[33]~output_o\);

-- Location: IOOBUF_X14_Y0_N16
\product[34]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \product_reg_inst|product_reg\(34),
	devoe => ww_devoe,
	o => \product[34]~output_o\);

-- Location: IOOBUF_X36_Y39_N23
\product[35]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \product_reg_inst|product_reg\(35),
	devoe => ww_devoe,
	o => \product[35]~output_o\);

-- Location: IOOBUF_X51_Y0_N23
\product[36]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \product_reg_inst|product_reg\(36),
	devoe => ww_devoe,
	o => \product[36]~output_o\);

-- Location: IOOBUF_X58_Y0_N9
\product[37]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \product_reg_inst|product_reg\(37),
	devoe => ww_devoe,
	o => \product[37]~output_o\);

-- Location: IOOBUF_X40_Y0_N2
\product[38]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \product_reg_inst|product_reg\(38),
	devoe => ww_devoe,
	o => \product[38]~output_o\);

-- Location: IOOBUF_X49_Y0_N30
\product[39]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \product_reg_inst|product_reg\(39),
	devoe => ww_devoe,
	o => \product[39]~output_o\);

-- Location: IOOBUF_X51_Y0_N9
\product[40]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \product_reg_inst|product_reg\(40),
	devoe => ww_devoe,
	o => \product[40]~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\product[41]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \product_reg_inst|product_reg\(41),
	devoe => ww_devoe,
	o => \product[41]~output_o\);

-- Location: IOOBUF_X36_Y0_N9
\product[42]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \product_reg_inst|product_reg\(42),
	devoe => ww_devoe,
	o => \product[42]~output_o\);

-- Location: IOOBUF_X58_Y0_N23
\product[43]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \product_reg_inst|product_reg\(43),
	devoe => ww_devoe,
	o => \product[43]~output_o\);

-- Location: IOOBUF_X34_Y0_N30
\product[44]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \product_reg_inst|product_reg\(44),
	devoe => ww_devoe,
	o => \product[44]~output_o\);

-- Location: IOOBUF_X38_Y0_N30
\product[45]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \product_reg_inst|product_reg\(45),
	devoe => ww_devoe,
	o => \product[45]~output_o\);

-- Location: IOOBUF_X34_Y0_N2
\product[46]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \product_reg_inst|product_reg\(46),
	devoe => ww_devoe,
	o => \product[46]~output_o\);

-- Location: IOOBUF_X34_Y39_N16
\product[47]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \product_reg_inst|product_reg\(47),
	devoe => ww_devoe,
	o => \product[47]~output_o\);

-- Location: IOOBUF_X54_Y0_N2
\product[48]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \product_reg_inst|product_reg\(48),
	devoe => ww_devoe,
	o => \product[48]~output_o\);

-- Location: IOOBUF_X26_Y0_N9
\product[49]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \product_reg_inst|product_reg\(49),
	devoe => ww_devoe,
	o => \product[49]~output_o\);

-- Location: IOOBUF_X26_Y0_N23
\product[50]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \product_reg_inst|product_reg\(50),
	devoe => ww_devoe,
	o => \product[50]~output_o\);

-- Location: IOOBUF_X16_Y0_N16
\product[51]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \product_reg_inst|product_reg\(51),
	devoe => ww_devoe,
	o => \product[51]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\product[52]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \product_reg_inst|product_reg\(52),
	devoe => ww_devoe,
	o => \product[52]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\product[53]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \product_reg_inst|product_reg\(53),
	devoe => ww_devoe,
	o => \product[53]~output_o\);

-- Location: IOOBUF_X26_Y0_N2
\product[54]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \product_reg_inst|product_reg\(54),
	devoe => ww_devoe,
	o => \product[54]~output_o\);

-- Location: IOOBUF_X31_Y0_N30
\product[55]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \product_reg_inst|product_reg\(55),
	devoe => ww_devoe,
	o => \product[55]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\product[56]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \product_reg_inst|product_reg\(56),
	devoe => ww_devoe,
	o => \product[56]~output_o\);

-- Location: IOOBUF_X18_Y0_N30
\product[57]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \product_reg_inst|product_reg\(57),
	devoe => ww_devoe,
	o => \product[57]~output_o\);

-- Location: IOOBUF_X56_Y0_N2
\product[58]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \product_reg_inst|product_reg\(58),
	devoe => ww_devoe,
	o => \product[58]~output_o\);

-- Location: IOOBUF_X24_Y0_N2
\product[59]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \product_reg_inst|product_reg\(59),
	devoe => ww_devoe,
	o => \product[59]~output_o\);

-- Location: IOOBUF_X29_Y0_N9
\product[60]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \product_reg_inst|product_reg\(60),
	devoe => ww_devoe,
	o => \product[60]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\product[61]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \product_reg_inst|product_reg\(61),
	devoe => ww_devoe,
	o => \product[61]~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\product[62]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \product_reg_inst|product_reg\(62),
	devoe => ww_devoe,
	o => \product[62]~output_o\);

-- Location: IOOBUF_X38_Y0_N23
\product[63]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \product_reg_inst|product_reg\(63),
	devoe => ww_devoe,
	o => \product[63]~output_o\);

-- Location: IOOBUF_X0_Y30_N16
\load_con~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \load_con~output_o\);

-- Location: IOOBUF_X78_Y16_N2
\add_con~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \control_unit_inst|curr_state.add_state~q\,
	devoe => ww_devoe,
	o => \add_con~output_o\);

-- Location: IOOBUF_X78_Y17_N16
\shift_con~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \control_unit_inst|curr_state.shift_state~q\,
	devoe => ww_devoe,
	o => \shift_con~output_o\);

-- Location: IOOBUF_X78_Y29_N16
\count_out[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \control_unit_inst|count\(0),
	devoe => ww_devoe,
	o => \count_out[0]~output_o\);

-- Location: IOOBUF_X78_Y21_N2
\count_out[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \control_unit_inst|count\(1),
	devoe => ww_devoe,
	o => \count_out[1]~output_o\);

-- Location: IOOBUF_X78_Y21_N9
\count_out[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \control_unit_inst|count\(2),
	devoe => ww_devoe,
	o => \count_out[2]~output_o\);

-- Location: IOOBUF_X78_Y24_N16
\count_out[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \control_unit_inst|count\(3),
	devoe => ww_devoe,
	o => \count_out[3]~output_o\);

-- Location: IOOBUF_X78_Y25_N2
\count_out[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \control_unit_inst|count\(4),
	devoe => ww_devoe,
	o => \count_out[4]~output_o\);

-- Location: IOOBUF_X78_Y21_N16
\count_out[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \control_unit_inst|count\(5),
	devoe => ww_devoe,
	o => \count_out[5]~output_o\);

-- Location: IOOBUF_X78_Y18_N9
\count_out[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \control_unit_inst|count\(6),
	devoe => ww_devoe,
	o => \count_out[6]~output_o\);

-- Location: IOOBUF_X78_Y29_N2
\count_out[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \control_unit_inst|count\(7),
	devoe => ww_devoe,
	o => \count_out[7]~output_o\);

-- Location: IOOBUF_X78_Y30_N16
\count_out[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \control_unit_inst|count\(8),
	devoe => ww_devoe,
	o => \count_out[8]~output_o\);

-- Location: IOOBUF_X78_Y30_N9
\count_out[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \control_unit_inst|count\(9),
	devoe => ww_devoe,
	o => \count_out[9]~output_o\);

-- Location: IOOBUF_X78_Y21_N23
\count_out[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \control_unit_inst|count\(10),
	devoe => ww_devoe,
	o => \count_out[10]~output_o\);

-- Location: IOOBUF_X78_Y29_N23
\count_out[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \control_unit_inst|count\(11),
	devoe => ww_devoe,
	o => \count_out[11]~output_o\);

-- Location: IOOBUF_X78_Y24_N2
\count_out[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \control_unit_inst|count\(12),
	devoe => ww_devoe,
	o => \count_out[12]~output_o\);

-- Location: IOOBUF_X78_Y18_N16
\count_out[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \control_unit_inst|count\(13),
	devoe => ww_devoe,
	o => \count_out[13]~output_o\);

-- Location: IOOBUF_X78_Y24_N24
\count_out[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \control_unit_inst|count\(14),
	devoe => ww_devoe,
	o => \count_out[14]~output_o\);

-- Location: IOOBUF_X78_Y25_N16
\count_out[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \control_unit_inst|count\(15),
	devoe => ww_devoe,
	o => \count_out[15]~output_o\);

-- Location: IOOBUF_X78_Y18_N23
\count_out[16]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \control_unit_inst|count\(16),
	devoe => ww_devoe,
	o => \count_out[16]~output_o\);

-- Location: IOOBUF_X78_Y17_N9
\count_out[17]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \control_unit_inst|count\(17),
	devoe => ww_devoe,
	o => \count_out[17]~output_o\);

-- Location: IOOBUF_X78_Y18_N2
\count_out[18]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \control_unit_inst|count\(18),
	devoe => ww_devoe,
	o => \count_out[18]~output_o\);

-- Location: IOOBUF_X78_Y24_N9
\count_out[19]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \control_unit_inst|count\(19),
	devoe => ww_devoe,
	o => \count_out[19]~output_o\);

-- Location: IOOBUF_X78_Y20_N9
\count_out[20]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \control_unit_inst|count\(20),
	devoe => ww_devoe,
	o => \count_out[20]~output_o\);

-- Location: IOOBUF_X78_Y20_N16
\count_out[21]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \control_unit_inst|count\(21),
	devoe => ww_devoe,
	o => \count_out[21]~output_o\);

-- Location: IOOBUF_X78_Y29_N9
\count_out[22]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \control_unit_inst|count\(22),
	devoe => ww_devoe,
	o => \count_out[22]~output_o\);

-- Location: IOOBUF_X78_Y23_N9
\count_out[23]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \control_unit_inst|count\(23),
	devoe => ww_devoe,
	o => \count_out[23]~output_o\);

-- Location: IOOBUF_X78_Y30_N2
\count_out[24]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \control_unit_inst|count\(24),
	devoe => ww_devoe,
	o => \count_out[24]~output_o\);

-- Location: IOOBUF_X78_Y23_N2
\count_out[25]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \control_unit_inst|count\(25),
	devoe => ww_devoe,
	o => \count_out[25]~output_o\);

-- Location: IOOBUF_X78_Y23_N23
\count_out[26]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \control_unit_inst|count\(26),
	devoe => ww_devoe,
	o => \count_out[26]~output_o\);

-- Location: IOOBUF_X78_Y20_N24
\count_out[27]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \control_unit_inst|count\(27),
	devoe => ww_devoe,
	o => \count_out[27]~output_o\);

-- Location: IOOBUF_X78_Y23_N16
\count_out[28]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \control_unit_inst|count\(28),
	devoe => ww_devoe,
	o => \count_out[28]~output_o\);

-- Location: IOOBUF_X78_Y25_N9
\count_out[29]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \control_unit_inst|count\(29),
	devoe => ww_devoe,
	o => \count_out[29]~output_o\);

-- Location: IOOBUF_X78_Y25_N23
\count_out[30]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \control_unit_inst|count\(30),
	devoe => ww_devoe,
	o => \count_out[30]~output_o\);

-- Location: IOOBUF_X78_Y20_N2
\count_out[31]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \control_unit_inst|count\(31),
	devoe => ww_devoe,
	o => \count_out[31]~output_o\);

-- Location: IOOBUF_X40_Y0_N23
\adder_result[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder_inst|Add0~2_combout\,
	devoe => ww_devoe,
	o => \adder_result[0]~output_o\);

-- Location: IOOBUF_X40_Y0_N30
\adder_result[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder_inst|Add0~5_combout\,
	devoe => ww_devoe,
	o => \adder_result[1]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\adder_result[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder_inst|Add0~8_combout\,
	devoe => ww_devoe,
	o => \adder_result[2]~output_o\);

-- Location: IOOBUF_X29_Y0_N30
\adder_result[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder_inst|Add0~11_combout\,
	devoe => ww_devoe,
	o => \adder_result[3]~output_o\);

-- Location: IOOBUF_X51_Y0_N16
\adder_result[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder_inst|Add0~14_combout\,
	devoe => ww_devoe,
	o => \adder_result[4]~output_o\);

-- Location: IOOBUF_X40_Y0_N16
\adder_result[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder_inst|Add0~17_combout\,
	devoe => ww_devoe,
	o => \adder_result[5]~output_o\);

-- Location: IOOBUF_X49_Y0_N23
\adder_result[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder_inst|Add0~20_combout\,
	devoe => ww_devoe,
	o => \adder_result[6]~output_o\);

-- Location: IOOBUF_X51_Y0_N30
\adder_result[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder_inst|Add0~23_combout\,
	devoe => ww_devoe,
	o => \adder_result[7]~output_o\);

-- Location: IOOBUF_X34_Y39_N9
\adder_result[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder_inst|Add0~26_combout\,
	devoe => ww_devoe,
	o => \adder_result[8]~output_o\);

-- Location: IOOBUF_X34_Y39_N2
\adder_result[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder_inst|Add0~29_combout\,
	devoe => ww_devoe,
	o => \adder_result[9]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\adder_result[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder_inst|Add0~32_combout\,
	devoe => ww_devoe,
	o => \adder_result[10]~output_o\);

-- Location: IOOBUF_X36_Y39_N16
\adder_result[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder_inst|Add0~35_combout\,
	devoe => ww_devoe,
	o => \adder_result[11]~output_o\);

-- Location: IOOBUF_X0_Y9_N9
\adder_result[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder_inst|Add0~38_combout\,
	devoe => ww_devoe,
	o => \adder_result[12]~output_o\);

-- Location: IOOBUF_X0_Y9_N2
\adder_result[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder_inst|Add0~41_combout\,
	devoe => ww_devoe,
	o => \adder_result[13]~output_o\);

-- Location: IOOBUF_X31_Y39_N23
\adder_result[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder_inst|Add0~44_combout\,
	devoe => ww_devoe,
	o => \adder_result[14]~output_o\);

-- Location: IOOBUF_X0_Y9_N16
\adder_result[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder_inst|Add0~47_combout\,
	devoe => ww_devoe,
	o => \adder_result[15]~output_o\);

-- Location: IOOBUF_X24_Y0_N30
\adder_result[16]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder_inst|Add0~50_combout\,
	devoe => ww_devoe,
	o => \adder_result[16]~output_o\);

-- Location: IOOBUF_X24_Y0_N23
\adder_result[17]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder_inst|Add0~53_combout\,
	devoe => ww_devoe,
	o => \adder_result[17]~output_o\);

-- Location: IOOBUF_X29_Y39_N9
\adder_result[18]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder_inst|Add0~56_combout\,
	devoe => ww_devoe,
	o => \adder_result[18]~output_o\);

-- Location: IOOBUF_X29_Y0_N16
\adder_result[19]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder_inst|Add0~59_combout\,
	devoe => ww_devoe,
	o => \adder_result[19]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\adder_result[20]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder_inst|Add0~62_combout\,
	devoe => ww_devoe,
	o => \adder_result[20]~output_o\);

-- Location: IOOBUF_X22_Y0_N2
\adder_result[21]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder_inst|Add0~65_combout\,
	devoe => ww_devoe,
	o => \adder_result[21]~output_o\);

-- Location: IOOBUF_X22_Y0_N9
\adder_result[22]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder_inst|Add0~68_combout\,
	devoe => ww_devoe,
	o => \adder_result[22]~output_o\);

-- Location: IOOBUF_X22_Y0_N16
\adder_result[23]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder_inst|Add0~71_combout\,
	devoe => ww_devoe,
	o => \adder_result[23]~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\adder_result[24]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder_inst|Add0~74_combout\,
	devoe => ww_devoe,
	o => \adder_result[24]~output_o\);

-- Location: IOOBUF_X22_Y0_N23
\adder_result[25]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder_inst|Add0~77_combout\,
	devoe => ww_devoe,
	o => \adder_result[25]~output_o\);

-- Location: IOOBUF_X20_Y0_N16
\adder_result[26]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder_inst|Add0~80_combout\,
	devoe => ww_devoe,
	o => \adder_result[26]~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\adder_result[27]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder_inst|Add0~83_combout\,
	devoe => ww_devoe,
	o => \adder_result[27]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\adder_result[28]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder_inst|Add0~86_combout\,
	devoe => ww_devoe,
	o => \adder_result[28]~output_o\);

-- Location: IOOBUF_X24_Y0_N16
\adder_result[29]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder_inst|Add0~89_combout\,
	devoe => ww_devoe,
	o => \adder_result[29]~output_o\);

-- Location: IOOBUF_X36_Y0_N2
\adder_result[30]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder_inst|Add0~92_combout\,
	devoe => ww_devoe,
	o => \adder_result[30]~output_o\);

-- Location: IOOBUF_X54_Y0_N30
\adder_result[31]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder_inst|Add0~95_combout\,
	devoe => ww_devoe,
	o => \adder_result[31]~output_o\);

-- Location: IOIBUF_X0_Y18_N15
\clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G3
\clk~inputclkctrl\ : fiftyfivenm_clkctrl
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

-- Location: IOIBUF_X78_Y16_N23
\reset~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LCCOMB_X77_Y22_N28
\control_unit_inst|count[0]~93\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \control_unit_inst|count[0]~93_combout\ = !\control_unit_inst|count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \control_unit_inst|count\(0),
	combout => \control_unit_inst|count[0]~93_combout\);

-- Location: FF_X77_Y22_N29
\control_unit_inst|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \control_unit_inst|count[0]~93_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_unit_inst|count\(0));

-- Location: LCCOMB_X77_Y24_N2
\control_unit_inst|count[1]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \control_unit_inst|count[1]~31_combout\ = (\control_unit_inst|count\(0) & (\control_unit_inst|count\(1) $ (VCC))) # (!\control_unit_inst|count\(0) & (\control_unit_inst|count\(1) & VCC))
-- \control_unit_inst|count[1]~32\ = CARRY((\control_unit_inst|count\(0) & \control_unit_inst|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_unit_inst|count\(0),
	datab => \control_unit_inst|count\(1),
	datad => VCC,
	combout => \control_unit_inst|count[1]~31_combout\,
	cout => \control_unit_inst|count[1]~32\);

-- Location: FF_X77_Y24_N3
\control_unit_inst|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \control_unit_inst|count[1]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_unit_inst|count\(1));

-- Location: LCCOMB_X77_Y24_N4
\control_unit_inst|count[2]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \control_unit_inst|count[2]~33_combout\ = (\control_unit_inst|count\(2) & (!\control_unit_inst|count[1]~32\)) # (!\control_unit_inst|count\(2) & ((\control_unit_inst|count[1]~32\) # (GND)))
-- \control_unit_inst|count[2]~34\ = CARRY((!\control_unit_inst|count[1]~32\) # (!\control_unit_inst|count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control_unit_inst|count\(2),
	datad => VCC,
	cin => \control_unit_inst|count[1]~32\,
	combout => \control_unit_inst|count[2]~33_combout\,
	cout => \control_unit_inst|count[2]~34\);

-- Location: FF_X77_Y24_N5
\control_unit_inst|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \control_unit_inst|count[2]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_unit_inst|count\(2));

-- Location: LCCOMB_X77_Y24_N6
\control_unit_inst|count[3]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \control_unit_inst|count[3]~35_combout\ = (\control_unit_inst|count\(3) & (\control_unit_inst|count[2]~34\ $ (GND))) # (!\control_unit_inst|count\(3) & (!\control_unit_inst|count[2]~34\ & VCC))
-- \control_unit_inst|count[3]~36\ = CARRY((\control_unit_inst|count\(3) & !\control_unit_inst|count[2]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control_unit_inst|count\(3),
	datad => VCC,
	cin => \control_unit_inst|count[2]~34\,
	combout => \control_unit_inst|count[3]~35_combout\,
	cout => \control_unit_inst|count[3]~36\);

-- Location: FF_X77_Y24_N7
\control_unit_inst|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \control_unit_inst|count[3]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_unit_inst|count\(3));

-- Location: LCCOMB_X77_Y24_N8
\control_unit_inst|count[4]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \control_unit_inst|count[4]~37_combout\ = (\control_unit_inst|count\(4) & (!\control_unit_inst|count[3]~36\)) # (!\control_unit_inst|count\(4) & ((\control_unit_inst|count[3]~36\) # (GND)))
-- \control_unit_inst|count[4]~38\ = CARRY((!\control_unit_inst|count[3]~36\) # (!\control_unit_inst|count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control_unit_inst|count\(4),
	datad => VCC,
	cin => \control_unit_inst|count[3]~36\,
	combout => \control_unit_inst|count[4]~37_combout\,
	cout => \control_unit_inst|count[4]~38\);

-- Location: FF_X77_Y24_N9
\control_unit_inst|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \control_unit_inst|count[4]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_unit_inst|count\(4));

-- Location: LCCOMB_X77_Y24_N10
\control_unit_inst|count[5]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \control_unit_inst|count[5]~39_combout\ = (\control_unit_inst|count\(5) & (\control_unit_inst|count[4]~38\ $ (GND))) # (!\control_unit_inst|count\(5) & (!\control_unit_inst|count[4]~38\ & VCC))
-- \control_unit_inst|count[5]~40\ = CARRY((\control_unit_inst|count\(5) & !\control_unit_inst|count[4]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control_unit_inst|count\(5),
	datad => VCC,
	cin => \control_unit_inst|count[4]~38\,
	combout => \control_unit_inst|count[5]~39_combout\,
	cout => \control_unit_inst|count[5]~40\);

-- Location: FF_X77_Y24_N11
\control_unit_inst|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \control_unit_inst|count[5]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_unit_inst|count\(5));

-- Location: LCCOMB_X77_Y24_N12
\control_unit_inst|count[6]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \control_unit_inst|count[6]~41_combout\ = (\control_unit_inst|count\(6) & (!\control_unit_inst|count[5]~40\)) # (!\control_unit_inst|count\(6) & ((\control_unit_inst|count[5]~40\) # (GND)))
-- \control_unit_inst|count[6]~42\ = CARRY((!\control_unit_inst|count[5]~40\) # (!\control_unit_inst|count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control_unit_inst|count\(6),
	datad => VCC,
	cin => \control_unit_inst|count[5]~40\,
	combout => \control_unit_inst|count[6]~41_combout\,
	cout => \control_unit_inst|count[6]~42\);

-- Location: FF_X77_Y24_N13
\control_unit_inst|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \control_unit_inst|count[6]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_unit_inst|count\(6));

-- Location: LCCOMB_X77_Y24_N14
\control_unit_inst|count[7]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \control_unit_inst|count[7]~43_combout\ = (\control_unit_inst|count\(7) & (\control_unit_inst|count[6]~42\ $ (GND))) # (!\control_unit_inst|count\(7) & (!\control_unit_inst|count[6]~42\ & VCC))
-- \control_unit_inst|count[7]~44\ = CARRY((\control_unit_inst|count\(7) & !\control_unit_inst|count[6]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control_unit_inst|count\(7),
	datad => VCC,
	cin => \control_unit_inst|count[6]~42\,
	combout => \control_unit_inst|count[7]~43_combout\,
	cout => \control_unit_inst|count[7]~44\);

-- Location: FF_X77_Y24_N15
\control_unit_inst|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \control_unit_inst|count[7]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_unit_inst|count\(7));

-- Location: LCCOMB_X77_Y24_N16
\control_unit_inst|count[8]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \control_unit_inst|count[8]~45_combout\ = (\control_unit_inst|count\(8) & (!\control_unit_inst|count[7]~44\)) # (!\control_unit_inst|count\(8) & ((\control_unit_inst|count[7]~44\) # (GND)))
-- \control_unit_inst|count[8]~46\ = CARRY((!\control_unit_inst|count[7]~44\) # (!\control_unit_inst|count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control_unit_inst|count\(8),
	datad => VCC,
	cin => \control_unit_inst|count[7]~44\,
	combout => \control_unit_inst|count[8]~45_combout\,
	cout => \control_unit_inst|count[8]~46\);

-- Location: FF_X77_Y24_N17
\control_unit_inst|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \control_unit_inst|count[8]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_unit_inst|count\(8));

-- Location: LCCOMB_X77_Y24_N18
\control_unit_inst|count[9]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \control_unit_inst|count[9]~47_combout\ = (\control_unit_inst|count\(9) & (\control_unit_inst|count[8]~46\ $ (GND))) # (!\control_unit_inst|count\(9) & (!\control_unit_inst|count[8]~46\ & VCC))
-- \control_unit_inst|count[9]~48\ = CARRY((\control_unit_inst|count\(9) & !\control_unit_inst|count[8]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control_unit_inst|count\(9),
	datad => VCC,
	cin => \control_unit_inst|count[8]~46\,
	combout => \control_unit_inst|count[9]~47_combout\,
	cout => \control_unit_inst|count[9]~48\);

-- Location: FF_X77_Y24_N19
\control_unit_inst|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \control_unit_inst|count[9]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_unit_inst|count\(9));

-- Location: LCCOMB_X77_Y24_N20
\control_unit_inst|count[10]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \control_unit_inst|count[10]~49_combout\ = (\control_unit_inst|count\(10) & (!\control_unit_inst|count[9]~48\)) # (!\control_unit_inst|count\(10) & ((\control_unit_inst|count[9]~48\) # (GND)))
-- \control_unit_inst|count[10]~50\ = CARRY((!\control_unit_inst|count[9]~48\) # (!\control_unit_inst|count\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control_unit_inst|count\(10),
	datad => VCC,
	cin => \control_unit_inst|count[9]~48\,
	combout => \control_unit_inst|count[10]~49_combout\,
	cout => \control_unit_inst|count[10]~50\);

-- Location: FF_X77_Y24_N21
\control_unit_inst|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \control_unit_inst|count[10]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_unit_inst|count\(10));

-- Location: LCCOMB_X77_Y24_N22
\control_unit_inst|count[11]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \control_unit_inst|count[11]~51_combout\ = (\control_unit_inst|count\(11) & (\control_unit_inst|count[10]~50\ $ (GND))) # (!\control_unit_inst|count\(11) & (!\control_unit_inst|count[10]~50\ & VCC))
-- \control_unit_inst|count[11]~52\ = CARRY((\control_unit_inst|count\(11) & !\control_unit_inst|count[10]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control_unit_inst|count\(11),
	datad => VCC,
	cin => \control_unit_inst|count[10]~50\,
	combout => \control_unit_inst|count[11]~51_combout\,
	cout => \control_unit_inst|count[11]~52\);

-- Location: FF_X77_Y24_N23
\control_unit_inst|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \control_unit_inst|count[11]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_unit_inst|count\(11));

-- Location: LCCOMB_X77_Y24_N24
\control_unit_inst|count[12]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \control_unit_inst|count[12]~53_combout\ = (\control_unit_inst|count\(12) & (!\control_unit_inst|count[11]~52\)) # (!\control_unit_inst|count\(12) & ((\control_unit_inst|count[11]~52\) # (GND)))
-- \control_unit_inst|count[12]~54\ = CARRY((!\control_unit_inst|count[11]~52\) # (!\control_unit_inst|count\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control_unit_inst|count\(12),
	datad => VCC,
	cin => \control_unit_inst|count[11]~52\,
	combout => \control_unit_inst|count[12]~53_combout\,
	cout => \control_unit_inst|count[12]~54\);

-- Location: FF_X77_Y24_N25
\control_unit_inst|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \control_unit_inst|count[12]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_unit_inst|count\(12));

-- Location: LCCOMB_X77_Y24_N26
\control_unit_inst|count[13]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \control_unit_inst|count[13]~55_combout\ = (\control_unit_inst|count\(13) & (\control_unit_inst|count[12]~54\ $ (GND))) # (!\control_unit_inst|count\(13) & (!\control_unit_inst|count[12]~54\ & VCC))
-- \control_unit_inst|count[13]~56\ = CARRY((\control_unit_inst|count\(13) & !\control_unit_inst|count[12]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control_unit_inst|count\(13),
	datad => VCC,
	cin => \control_unit_inst|count[12]~54\,
	combout => \control_unit_inst|count[13]~55_combout\,
	cout => \control_unit_inst|count[13]~56\);

-- Location: FF_X77_Y24_N27
\control_unit_inst|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \control_unit_inst|count[13]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_unit_inst|count\(13));

-- Location: LCCOMB_X77_Y24_N28
\control_unit_inst|count[14]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \control_unit_inst|count[14]~57_combout\ = (\control_unit_inst|count\(14) & (!\control_unit_inst|count[13]~56\)) # (!\control_unit_inst|count\(14) & ((\control_unit_inst|count[13]~56\) # (GND)))
-- \control_unit_inst|count[14]~58\ = CARRY((!\control_unit_inst|count[13]~56\) # (!\control_unit_inst|count\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control_unit_inst|count\(14),
	datad => VCC,
	cin => \control_unit_inst|count[13]~56\,
	combout => \control_unit_inst|count[14]~57_combout\,
	cout => \control_unit_inst|count[14]~58\);

-- Location: FF_X77_Y24_N29
\control_unit_inst|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \control_unit_inst|count[14]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_unit_inst|count\(14));

-- Location: LCCOMB_X77_Y24_N30
\control_unit_inst|count[15]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \control_unit_inst|count[15]~59_combout\ = (\control_unit_inst|count\(15) & (\control_unit_inst|count[14]~58\ $ (GND))) # (!\control_unit_inst|count\(15) & (!\control_unit_inst|count[14]~58\ & VCC))
-- \control_unit_inst|count[15]~60\ = CARRY((\control_unit_inst|count\(15) & !\control_unit_inst|count[14]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control_unit_inst|count\(15),
	datad => VCC,
	cin => \control_unit_inst|count[14]~58\,
	combout => \control_unit_inst|count[15]~59_combout\,
	cout => \control_unit_inst|count[15]~60\);

-- Location: FF_X77_Y24_N31
\control_unit_inst|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \control_unit_inst|count[15]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_unit_inst|count\(15));

-- Location: LCCOMB_X77_Y23_N0
\control_unit_inst|count[16]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \control_unit_inst|count[16]~61_combout\ = (\control_unit_inst|count\(16) & (!\control_unit_inst|count[15]~60\)) # (!\control_unit_inst|count\(16) & ((\control_unit_inst|count[15]~60\) # (GND)))
-- \control_unit_inst|count[16]~62\ = CARRY((!\control_unit_inst|count[15]~60\) # (!\control_unit_inst|count\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control_unit_inst|count\(16),
	datad => VCC,
	cin => \control_unit_inst|count[15]~60\,
	combout => \control_unit_inst|count[16]~61_combout\,
	cout => \control_unit_inst|count[16]~62\);

-- Location: FF_X77_Y23_N1
\control_unit_inst|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \control_unit_inst|count[16]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_unit_inst|count\(16));

-- Location: LCCOMB_X77_Y23_N2
\control_unit_inst|count[17]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \control_unit_inst|count[17]~63_combout\ = (\control_unit_inst|count\(17) & (\control_unit_inst|count[16]~62\ $ (GND))) # (!\control_unit_inst|count\(17) & (!\control_unit_inst|count[16]~62\ & VCC))
-- \control_unit_inst|count[17]~64\ = CARRY((\control_unit_inst|count\(17) & !\control_unit_inst|count[16]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control_unit_inst|count\(17),
	datad => VCC,
	cin => \control_unit_inst|count[16]~62\,
	combout => \control_unit_inst|count[17]~63_combout\,
	cout => \control_unit_inst|count[17]~64\);

-- Location: FF_X77_Y23_N3
\control_unit_inst|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \control_unit_inst|count[17]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_unit_inst|count\(17));

-- Location: LCCOMB_X77_Y23_N4
\control_unit_inst|count[18]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \control_unit_inst|count[18]~65_combout\ = (\control_unit_inst|count\(18) & (!\control_unit_inst|count[17]~64\)) # (!\control_unit_inst|count\(18) & ((\control_unit_inst|count[17]~64\) # (GND)))
-- \control_unit_inst|count[18]~66\ = CARRY((!\control_unit_inst|count[17]~64\) # (!\control_unit_inst|count\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control_unit_inst|count\(18),
	datad => VCC,
	cin => \control_unit_inst|count[17]~64\,
	combout => \control_unit_inst|count[18]~65_combout\,
	cout => \control_unit_inst|count[18]~66\);

-- Location: FF_X77_Y23_N5
\control_unit_inst|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \control_unit_inst|count[18]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_unit_inst|count\(18));

-- Location: LCCOMB_X77_Y23_N6
\control_unit_inst|count[19]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \control_unit_inst|count[19]~67_combout\ = (\control_unit_inst|count\(19) & (\control_unit_inst|count[18]~66\ $ (GND))) # (!\control_unit_inst|count\(19) & (!\control_unit_inst|count[18]~66\ & VCC))
-- \control_unit_inst|count[19]~68\ = CARRY((\control_unit_inst|count\(19) & !\control_unit_inst|count[18]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control_unit_inst|count\(19),
	datad => VCC,
	cin => \control_unit_inst|count[18]~66\,
	combout => \control_unit_inst|count[19]~67_combout\,
	cout => \control_unit_inst|count[19]~68\);

-- Location: FF_X77_Y23_N7
\control_unit_inst|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \control_unit_inst|count[19]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_unit_inst|count\(19));

-- Location: LCCOMB_X77_Y22_N30
\control_unit_inst|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \control_unit_inst|Equal0~5_combout\ = (!\control_unit_inst|count\(19) & !\control_unit_inst|count\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_unit_inst|count\(19),
	datad => \control_unit_inst|count\(18),
	combout => \control_unit_inst|Equal0~5_combout\);

-- Location: LCCOMB_X77_Y23_N8
\control_unit_inst|count[20]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \control_unit_inst|count[20]~69_combout\ = (\control_unit_inst|count\(20) & (!\control_unit_inst|count[19]~68\)) # (!\control_unit_inst|count\(20) & ((\control_unit_inst|count[19]~68\) # (GND)))
-- \control_unit_inst|count[20]~70\ = CARRY((!\control_unit_inst|count[19]~68\) # (!\control_unit_inst|count\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control_unit_inst|count\(20),
	datad => VCC,
	cin => \control_unit_inst|count[19]~68\,
	combout => \control_unit_inst|count[20]~69_combout\,
	cout => \control_unit_inst|count[20]~70\);

-- Location: FF_X77_Y23_N9
\control_unit_inst|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \control_unit_inst|count[20]~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_unit_inst|count\(20));

-- Location: LCCOMB_X77_Y23_N10
\control_unit_inst|count[21]~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \control_unit_inst|count[21]~71_combout\ = (\control_unit_inst|count\(21) & (\control_unit_inst|count[20]~70\ $ (GND))) # (!\control_unit_inst|count\(21) & (!\control_unit_inst|count[20]~70\ & VCC))
-- \control_unit_inst|count[21]~72\ = CARRY((\control_unit_inst|count\(21) & !\control_unit_inst|count[20]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control_unit_inst|count\(21),
	datad => VCC,
	cin => \control_unit_inst|count[20]~70\,
	combout => \control_unit_inst|count[21]~71_combout\,
	cout => \control_unit_inst|count[21]~72\);

-- Location: FF_X77_Y23_N11
\control_unit_inst|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \control_unit_inst|count[21]~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_unit_inst|count\(21));

-- Location: LCCOMB_X77_Y23_N12
\control_unit_inst|count[22]~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \control_unit_inst|count[22]~73_combout\ = (\control_unit_inst|count\(22) & (!\control_unit_inst|count[21]~72\)) # (!\control_unit_inst|count\(22) & ((\control_unit_inst|count[21]~72\) # (GND)))
-- \control_unit_inst|count[22]~74\ = CARRY((!\control_unit_inst|count[21]~72\) # (!\control_unit_inst|count\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control_unit_inst|count\(22),
	datad => VCC,
	cin => \control_unit_inst|count[21]~72\,
	combout => \control_unit_inst|count[22]~73_combout\,
	cout => \control_unit_inst|count[22]~74\);

-- Location: FF_X77_Y23_N13
\control_unit_inst|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \control_unit_inst|count[22]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_unit_inst|count\(22));

-- Location: LCCOMB_X77_Y23_N14
\control_unit_inst|count[23]~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \control_unit_inst|count[23]~75_combout\ = (\control_unit_inst|count\(23) & (\control_unit_inst|count[22]~74\ $ (GND))) # (!\control_unit_inst|count\(23) & (!\control_unit_inst|count[22]~74\ & VCC))
-- \control_unit_inst|count[23]~76\ = CARRY((\control_unit_inst|count\(23) & !\control_unit_inst|count[22]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control_unit_inst|count\(23),
	datad => VCC,
	cin => \control_unit_inst|count[22]~74\,
	combout => \control_unit_inst|count[23]~75_combout\,
	cout => \control_unit_inst|count[23]~76\);

-- Location: FF_X77_Y23_N15
\control_unit_inst|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \control_unit_inst|count[23]~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_unit_inst|count\(23));

-- Location: LCCOMB_X77_Y22_N8
\control_unit_inst|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \control_unit_inst|Equal0~6_combout\ = (!\control_unit_inst|count\(22) & (!\control_unit_inst|count\(21) & (!\control_unit_inst|count\(20) & !\control_unit_inst|count\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_unit_inst|count\(22),
	datab => \control_unit_inst|count\(21),
	datac => \control_unit_inst|count\(20),
	datad => \control_unit_inst|count\(23),
	combout => \control_unit_inst|Equal0~6_combout\);

-- Location: LCCOMB_X77_Y22_N26
\control_unit_inst|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \control_unit_inst|Equal0~7_combout\ = (\control_unit_inst|Equal0~5_combout\ & (\control_unit_inst|Equal0~6_combout\ & (!\control_unit_inst|count\(17) & !\control_unit_inst|count\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_unit_inst|Equal0~5_combout\,
	datab => \control_unit_inst|Equal0~6_combout\,
	datac => \control_unit_inst|count\(17),
	datad => \control_unit_inst|count\(16),
	combout => \control_unit_inst|Equal0~7_combout\);

-- Location: LCCOMB_X77_Y23_N16
\control_unit_inst|count[24]~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \control_unit_inst|count[24]~77_combout\ = (\control_unit_inst|count\(24) & (!\control_unit_inst|count[23]~76\)) # (!\control_unit_inst|count\(24) & ((\control_unit_inst|count[23]~76\) # (GND)))
-- \control_unit_inst|count[24]~78\ = CARRY((!\control_unit_inst|count[23]~76\) # (!\control_unit_inst|count\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control_unit_inst|count\(24),
	datad => VCC,
	cin => \control_unit_inst|count[23]~76\,
	combout => \control_unit_inst|count[24]~77_combout\,
	cout => \control_unit_inst|count[24]~78\);

-- Location: FF_X77_Y23_N17
\control_unit_inst|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \control_unit_inst|count[24]~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_unit_inst|count\(24));

-- Location: LCCOMB_X77_Y23_N18
\control_unit_inst|count[25]~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \control_unit_inst|count[25]~79_combout\ = (\control_unit_inst|count\(25) & (\control_unit_inst|count[24]~78\ $ (GND))) # (!\control_unit_inst|count\(25) & (!\control_unit_inst|count[24]~78\ & VCC))
-- \control_unit_inst|count[25]~80\ = CARRY((\control_unit_inst|count\(25) & !\control_unit_inst|count[24]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control_unit_inst|count\(25),
	datad => VCC,
	cin => \control_unit_inst|count[24]~78\,
	combout => \control_unit_inst|count[25]~79_combout\,
	cout => \control_unit_inst|count[25]~80\);

-- Location: FF_X77_Y23_N19
\control_unit_inst|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \control_unit_inst|count[25]~79_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_unit_inst|count\(25));

-- Location: LCCOMB_X77_Y23_N20
\control_unit_inst|count[26]~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \control_unit_inst|count[26]~81_combout\ = (\control_unit_inst|count\(26) & (!\control_unit_inst|count[25]~80\)) # (!\control_unit_inst|count\(26) & ((\control_unit_inst|count[25]~80\) # (GND)))
-- \control_unit_inst|count[26]~82\ = CARRY((!\control_unit_inst|count[25]~80\) # (!\control_unit_inst|count\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control_unit_inst|count\(26),
	datad => VCC,
	cin => \control_unit_inst|count[25]~80\,
	combout => \control_unit_inst|count[26]~81_combout\,
	cout => \control_unit_inst|count[26]~82\);

-- Location: FF_X77_Y23_N21
\control_unit_inst|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \control_unit_inst|count[26]~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_unit_inst|count\(26));

-- Location: LCCOMB_X77_Y23_N22
\control_unit_inst|count[27]~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \control_unit_inst|count[27]~83_combout\ = (\control_unit_inst|count\(27) & (\control_unit_inst|count[26]~82\ $ (GND))) # (!\control_unit_inst|count\(27) & (!\control_unit_inst|count[26]~82\ & VCC))
-- \control_unit_inst|count[27]~84\ = CARRY((\control_unit_inst|count\(27) & !\control_unit_inst|count[26]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control_unit_inst|count\(27),
	datad => VCC,
	cin => \control_unit_inst|count[26]~82\,
	combout => \control_unit_inst|count[27]~83_combout\,
	cout => \control_unit_inst|count[27]~84\);

-- Location: FF_X77_Y23_N23
\control_unit_inst|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \control_unit_inst|count[27]~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_unit_inst|count\(27));

-- Location: LCCOMB_X77_Y23_N24
\control_unit_inst|count[28]~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \control_unit_inst|count[28]~85_combout\ = (\control_unit_inst|count\(28) & (!\control_unit_inst|count[27]~84\)) # (!\control_unit_inst|count\(28) & ((\control_unit_inst|count[27]~84\) # (GND)))
-- \control_unit_inst|count[28]~86\ = CARRY((!\control_unit_inst|count[27]~84\) # (!\control_unit_inst|count\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control_unit_inst|count\(28),
	datad => VCC,
	cin => \control_unit_inst|count[27]~84\,
	combout => \control_unit_inst|count[28]~85_combout\,
	cout => \control_unit_inst|count[28]~86\);

-- Location: FF_X77_Y23_N25
\control_unit_inst|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \control_unit_inst|count[28]~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_unit_inst|count\(28));

-- Location: LCCOMB_X77_Y23_N26
\control_unit_inst|count[29]~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \control_unit_inst|count[29]~87_combout\ = (\control_unit_inst|count\(29) & (\control_unit_inst|count[28]~86\ $ (GND))) # (!\control_unit_inst|count\(29) & (!\control_unit_inst|count[28]~86\ & VCC))
-- \control_unit_inst|count[29]~88\ = CARRY((\control_unit_inst|count\(29) & !\control_unit_inst|count[28]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control_unit_inst|count\(29),
	datad => VCC,
	cin => \control_unit_inst|count[28]~86\,
	combout => \control_unit_inst|count[29]~87_combout\,
	cout => \control_unit_inst|count[29]~88\);

-- Location: FF_X77_Y23_N27
\control_unit_inst|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \control_unit_inst|count[29]~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_unit_inst|count\(29));

-- Location: LCCOMB_X77_Y23_N28
\control_unit_inst|count[30]~89\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \control_unit_inst|count[30]~89_combout\ = (\control_unit_inst|count\(30) & (!\control_unit_inst|count[29]~88\)) # (!\control_unit_inst|count\(30) & ((\control_unit_inst|count[29]~88\) # (GND)))
-- \control_unit_inst|count[30]~90\ = CARRY((!\control_unit_inst|count[29]~88\) # (!\control_unit_inst|count\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \control_unit_inst|count\(30),
	datad => VCC,
	cin => \control_unit_inst|count[29]~88\,
	combout => \control_unit_inst|count[30]~89_combout\,
	cout => \control_unit_inst|count[30]~90\);

-- Location: FF_X77_Y23_N29
\control_unit_inst|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \control_unit_inst|count[30]~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_unit_inst|count\(30));

-- Location: LCCOMB_X77_Y23_N30
\control_unit_inst|count[31]~91\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \control_unit_inst|count[31]~91_combout\ = \control_unit_inst|count\(31) $ (!\control_unit_inst|count[30]~90\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \control_unit_inst|count\(31),
	cin => \control_unit_inst|count[30]~90\,
	combout => \control_unit_inst|count[31]~91_combout\);

-- Location: FF_X77_Y23_N31
\control_unit_inst|count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \control_unit_inst|count[31]~91_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_unit_inst|count\(31));

-- Location: LCCOMB_X77_Y22_N14
\control_unit_inst|Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \control_unit_inst|Equal0~9_combout\ = (!\control_unit_inst|count\(29) & (!\control_unit_inst|count\(30) & (!\control_unit_inst|count\(31) & !\control_unit_inst|count\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_unit_inst|count\(29),
	datab => \control_unit_inst|count\(30),
	datac => \control_unit_inst|count\(31),
	datad => \control_unit_inst|count\(28),
	combout => \control_unit_inst|Equal0~9_combout\);

-- Location: LCCOMB_X77_Y22_N4
\control_unit_inst|Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \control_unit_inst|Equal0~8_combout\ = (!\control_unit_inst|count\(27) & (!\control_unit_inst|count\(26) & (!\control_unit_inst|count\(24) & !\control_unit_inst|count\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_unit_inst|count\(27),
	datab => \control_unit_inst|count\(26),
	datac => \control_unit_inst|count\(24),
	datad => \control_unit_inst|count\(25),
	combout => \control_unit_inst|Equal0~8_combout\);

-- Location: LCCOMB_X77_Y22_N22
\control_unit_inst|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \control_unit_inst|Equal0~0_combout\ = (!\control_unit_inst|count\(2) & (\control_unit_inst|count\(0) & (!\control_unit_inst|count\(3) & !\control_unit_inst|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_unit_inst|count\(2),
	datab => \control_unit_inst|count\(0),
	datac => \control_unit_inst|count\(3),
	datad => \control_unit_inst|count\(1),
	combout => \control_unit_inst|Equal0~0_combout\);

-- Location: LCCOMB_X77_Y22_N24
\control_unit_inst|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \control_unit_inst|Equal0~1_combout\ = (\control_unit_inst|count\(6) & (!\control_unit_inst|count\(5) & (!\control_unit_inst|count\(4) & !\control_unit_inst|count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_unit_inst|count\(6),
	datab => \control_unit_inst|count\(5),
	datac => \control_unit_inst|count\(4),
	datad => \control_unit_inst|count\(7),
	combout => \control_unit_inst|Equal0~1_combout\);

-- Location: LCCOMB_X77_Y24_N0
\control_unit_inst|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \control_unit_inst|Equal0~3_combout\ = (!\control_unit_inst|count\(15) & (!\control_unit_inst|count\(12) & (!\control_unit_inst|count\(13) & !\control_unit_inst|count\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_unit_inst|count\(15),
	datab => \control_unit_inst|count\(12),
	datac => \control_unit_inst|count\(13),
	datad => \control_unit_inst|count\(14),
	combout => \control_unit_inst|Equal0~3_combout\);

-- Location: LCCOMB_X77_Y22_N10
\control_unit_inst|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \control_unit_inst|Equal0~2_combout\ = (!\control_unit_inst|count\(10) & (!\control_unit_inst|count\(11) & (!\control_unit_inst|count\(8) & !\control_unit_inst|count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_unit_inst|count\(10),
	datab => \control_unit_inst|count\(11),
	datac => \control_unit_inst|count\(8),
	datad => \control_unit_inst|count\(9),
	combout => \control_unit_inst|Equal0~2_combout\);

-- Location: LCCOMB_X77_Y22_N12
\control_unit_inst|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \control_unit_inst|Equal0~4_combout\ = (\control_unit_inst|Equal0~0_combout\ & (\control_unit_inst|Equal0~1_combout\ & (\control_unit_inst|Equal0~3_combout\ & \control_unit_inst|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_unit_inst|Equal0~0_combout\,
	datab => \control_unit_inst|Equal0~1_combout\,
	datac => \control_unit_inst|Equal0~3_combout\,
	datad => \control_unit_inst|Equal0~2_combout\,
	combout => \control_unit_inst|Equal0~4_combout\);

-- Location: LCCOMB_X77_Y22_N0
\control_unit_inst|Equal0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \control_unit_inst|Equal0~10_combout\ = (\control_unit_inst|Equal0~7_combout\ & (\control_unit_inst|Equal0~9_combout\ & (\control_unit_inst|Equal0~8_combout\ & \control_unit_inst|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_unit_inst|Equal0~7_combout\,
	datab => \control_unit_inst|Equal0~9_combout\,
	datac => \control_unit_inst|Equal0~8_combout\,
	datad => \control_unit_inst|Equal0~4_combout\,
	combout => \control_unit_inst|Equal0~10_combout\);

-- Location: LCCOMB_X77_Y22_N20
\control_unit_inst|comb~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \control_unit_inst|comb~1_combout\ = (\control_unit_inst|Equal0~10_combout\) # (\control_unit_inst|curr_state.shift_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control_unit_inst|Equal0~10_combout\,
	datad => \control_unit_inst|curr_state.shift_state~q\,
	combout => \control_unit_inst|comb~1_combout\);

-- Location: LCCOMB_X77_Y22_N18
\control_unit_inst|comb~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \control_unit_inst|comb~0_combout\ = (\control_unit_inst|Equal0~10_combout\) # (\control_unit_inst|curr_state.add_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control_unit_inst|Equal0~10_combout\,
	datac => \control_unit_inst|curr_state.add_state~q\,
	combout => \control_unit_inst|comb~0_combout\);

-- Location: LCCOMB_X36_Y4_N22
\product_reg_inst|product_reg~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \product_reg_inst|product_reg~71_combout\ = (\control_unit_inst|curr_state.add_state~q\) # (\control_unit_inst|curr_state.shift_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \control_unit_inst|curr_state.add_state~q\,
	datad => \control_unit_inst|curr_state.shift_state~q\,
	combout => \product_reg_inst|product_reg~71_combout\);

-- Location: LCCOMB_X77_Y22_N16
\control_unit_inst|next_state.add_state_168\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \control_unit_inst|next_state.add_state_168~combout\ = (!\control_unit_inst|comb~0_combout\ & ((\product_reg_inst|product_reg~71_combout\) # (\control_unit_inst|next_state.add_state_168~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control_unit_inst|comb~0_combout\,
	datac => \product_reg_inst|product_reg~71_combout\,
	datad => \control_unit_inst|next_state.add_state_168~combout\,
	combout => \control_unit_inst|next_state.add_state_168~combout\);

-- Location: FF_X77_Y22_N17
\control_unit_inst|curr_state.add_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \control_unit_inst|next_state.add_state_168~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_unit_inst|curr_state.add_state~q\);

-- Location: LCCOMB_X77_Y22_N2
\control_unit_inst|next_state.shift_state_177\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \control_unit_inst|next_state.shift_state_177~combout\ = (!\control_unit_inst|comb~1_combout\ & ((\control_unit_inst|curr_state.add_state~q\) # (\control_unit_inst|next_state.shift_state_177~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control_unit_inst|comb~1_combout\,
	datac => \control_unit_inst|curr_state.add_state~q\,
	datad => \control_unit_inst|next_state.shift_state_177~combout\,
	combout => \control_unit_inst|next_state.shift_state_177~combout\);

-- Location: FF_X77_Y22_N3
\control_unit_inst|curr_state.shift_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \control_unit_inst|next_state.shift_state_177~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control_unit_inst|curr_state.shift_state~q\);

-- Location: IOIBUF_X20_Y0_N29
\multiplicand[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_multiplicand(0),
	o => \multiplicand[0]~input_o\);

-- Location: LCCOMB_X34_Y5_N16
\multiplicand32_inst|address[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multiplicand32_inst|address[0]~feeder_combout\ = \multiplicand[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \multiplicand[0]~input_o\,
	combout => \multiplicand32_inst|address[0]~feeder_combout\);

-- Location: FF_X34_Y5_N17
\multiplicand32_inst|address[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multiplicand32_inst|address[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplicand32_inst|address\(0));

-- Location: LCCOMB_X35_Y5_N0
\adder_inst|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder_inst|Add0~0_combout\ = (\multiplicand32_inst|address\(0) & (\product_reg_inst|product_reg\(32) $ (VCC))) # (!\multiplicand32_inst|address\(0) & (\product_reg_inst|product_reg\(32) & VCC))
-- \adder_inst|Add0~1\ = CARRY((\multiplicand32_inst|address\(0) & \product_reg_inst|product_reg\(32)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplicand32_inst|address\(0),
	datab => \product_reg_inst|product_reg\(32),
	datad => VCC,
	combout => \adder_inst|Add0~0_combout\,
	cout => \adder_inst|Add0~1\);

-- Location: LCCOMB_X36_Y4_N20
\adder_inst|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder_inst|Add0~2_combout\ = (\product_reg_inst|product_reg\(0) & ((\adder_inst|Add0~0_combout\))) # (!\product_reg_inst|product_reg\(0) & (\product_reg_inst|product_reg\(32)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \product_reg_inst|product_reg\(32),
	datac => \adder_inst|Add0~0_combout\,
	datad => \product_reg_inst|product_reg\(0),
	combout => \adder_inst|Add0~2_combout\);

-- Location: IOIBUF_X34_Y39_N29
\multiplicand[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_multiplicand(1),
	o => \multiplicand[1]~input_o\);

-- Location: LCCOMB_X34_Y5_N2
\multiplicand32_inst|address[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multiplicand32_inst|address[1]~feeder_combout\ = \multiplicand[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \multiplicand[1]~input_o\,
	combout => \multiplicand32_inst|address[1]~feeder_combout\);

-- Location: FF_X34_Y5_N3
\multiplicand32_inst|address[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multiplicand32_inst|address[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplicand32_inst|address\(1));

-- Location: LCCOMB_X35_Y5_N2
\adder_inst|Add0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder_inst|Add0~3_combout\ = (\multiplicand32_inst|address\(1) & ((\product_reg_inst|product_reg\(33) & (\adder_inst|Add0~1\ & VCC)) # (!\product_reg_inst|product_reg\(33) & (!\adder_inst|Add0~1\)))) # (!\multiplicand32_inst|address\(1) & 
-- ((\product_reg_inst|product_reg\(33) & (!\adder_inst|Add0~1\)) # (!\product_reg_inst|product_reg\(33) & ((\adder_inst|Add0~1\) # (GND)))))
-- \adder_inst|Add0~4\ = CARRY((\multiplicand32_inst|address\(1) & (!\product_reg_inst|product_reg\(33) & !\adder_inst|Add0~1\)) # (!\multiplicand32_inst|address\(1) & ((!\adder_inst|Add0~1\) # (!\product_reg_inst|product_reg\(33)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multiplicand32_inst|address\(1),
	datab => \product_reg_inst|product_reg\(33),
	datad => VCC,
	cin => \adder_inst|Add0~1\,
	combout => \adder_inst|Add0~3_combout\,
	cout => \adder_inst|Add0~4\);

-- Location: LCCOMB_X36_Y4_N30
\adder_inst|Add0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder_inst|Add0~5_combout\ = (\product_reg_inst|product_reg\(0) & ((\adder_inst|Add0~3_combout\))) # (!\product_reg_inst|product_reg\(0) & (\product_reg_inst|product_reg\(33)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \product_reg_inst|product_reg\(33),
	datac => \adder_inst|Add0~3_combout\,
	datad => \product_reg_inst|product_reg\(0),
	combout => \adder_inst|Add0~5_combout\);

-- Location: IOIBUF_X26_Y0_N29
\multiplicand[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_multiplicand(2),
	o => \multiplicand[2]~input_o\);

-- Location: LCCOMB_X34_Y5_N12
\multiplicand32_inst|address[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multiplicand32_inst|address[2]~feeder_combout\ = \multiplicand[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \multiplicand[2]~input_o\,
	combout => \multiplicand32_inst|address[2]~feeder_combout\);

-- Location: FF_X34_Y5_N13
\multiplicand32_inst|address[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multiplicand32_inst|address[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplicand32_inst|address\(2));

-- Location: LCCOMB_X35_Y5_N4
\adder_inst|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder_inst|Add0~6_combout\ = ((\multiplicand32_inst|address\(2) $ (\product_reg_inst|product_reg\(34) $ (!\adder_inst|Add0~4\)))) # (GND)
-- \adder_inst|Add0~7\ = CARRY((\multiplicand32_inst|address\(2) & ((\product_reg_inst|product_reg\(34)) # (!\adder_inst|Add0~4\))) # (!\multiplicand32_inst|address\(2) & (\product_reg_inst|product_reg\(34) & !\adder_inst|Add0~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multiplicand32_inst|address\(2),
	datab => \product_reg_inst|product_reg\(34),
	datad => VCC,
	cin => \adder_inst|Add0~4\,
	combout => \adder_inst|Add0~6_combout\,
	cout => \adder_inst|Add0~7\);

-- Location: LCCOMB_X36_Y4_N0
\adder_inst|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder_inst|Add0~8_combout\ = (\product_reg_inst|product_reg\(0) & (\adder_inst|Add0~6_combout\)) # (!\product_reg_inst|product_reg\(0) & ((\product_reg_inst|product_reg\(34))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder_inst|Add0~6_combout\,
	datac => \product_reg_inst|product_reg\(34),
	datad => \product_reg_inst|product_reg\(0),
	combout => \adder_inst|Add0~8_combout\);

-- Location: IOIBUF_X36_Y39_N29
\multiplicand[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_multiplicand(3),
	o => \multiplicand[3]~input_o\);

-- Location: LCCOMB_X34_Y5_N6
\multiplicand32_inst|address[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multiplicand32_inst|address[3]~feeder_combout\ = \multiplicand[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \multiplicand[3]~input_o\,
	combout => \multiplicand32_inst|address[3]~feeder_combout\);

-- Location: FF_X34_Y5_N7
\multiplicand32_inst|address[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multiplicand32_inst|address[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplicand32_inst|address\(3));

-- Location: LCCOMB_X35_Y5_N6
\adder_inst|Add0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder_inst|Add0~9_combout\ = (\multiplicand32_inst|address\(3) & ((\product_reg_inst|product_reg\(35) & (\adder_inst|Add0~7\ & VCC)) # (!\product_reg_inst|product_reg\(35) & (!\adder_inst|Add0~7\)))) # (!\multiplicand32_inst|address\(3) & 
-- ((\product_reg_inst|product_reg\(35) & (!\adder_inst|Add0~7\)) # (!\product_reg_inst|product_reg\(35) & ((\adder_inst|Add0~7\) # (GND)))))
-- \adder_inst|Add0~10\ = CARRY((\multiplicand32_inst|address\(3) & (!\product_reg_inst|product_reg\(35) & !\adder_inst|Add0~7\)) # (!\multiplicand32_inst|address\(3) & ((!\adder_inst|Add0~7\) # (!\product_reg_inst|product_reg\(35)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multiplicand32_inst|address\(3),
	datab => \product_reg_inst|product_reg\(35),
	datad => VCC,
	cin => \adder_inst|Add0~7\,
	combout => \adder_inst|Add0~9_combout\,
	cout => \adder_inst|Add0~10\);

-- Location: LCCOMB_X36_Y4_N2
\adder_inst|Add0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder_inst|Add0~11_combout\ = (\product_reg_inst|product_reg\(0) & ((\adder_inst|Add0~9_combout\))) # (!\product_reg_inst|product_reg\(0) & (\product_reg_inst|product_reg\(35)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \product_reg_inst|product_reg\(35),
	datac => \adder_inst|Add0~9_combout\,
	datad => \product_reg_inst|product_reg\(0),
	combout => \adder_inst|Add0~11_combout\);

-- Location: IOIBUF_X16_Y0_N22
\multiplicand[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_multiplicand(5),
	o => \multiplicand[5]~input_o\);

-- Location: LCCOMB_X34_Y5_N10
\multiplicand32_inst|address[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multiplicand32_inst|address[5]~feeder_combout\ = \multiplicand[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \multiplicand[5]~input_o\,
	combout => \multiplicand32_inst|address[5]~feeder_combout\);

-- Location: FF_X34_Y5_N11
\multiplicand32_inst|address[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multiplicand32_inst|address[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplicand32_inst|address\(5));

-- Location: IOIBUF_X34_Y39_N22
\multiplicand[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_multiplicand(4),
	o => \multiplicand[4]~input_o\);

-- Location: LCCOMB_X34_Y5_N24
\multiplicand32_inst|address[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multiplicand32_inst|address[4]~feeder_combout\ = \multiplicand[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \multiplicand[4]~input_o\,
	combout => \multiplicand32_inst|address[4]~feeder_combout\);

-- Location: FF_X34_Y5_N25
\multiplicand32_inst|address[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multiplicand32_inst|address[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplicand32_inst|address\(4));

-- Location: LCCOMB_X35_Y5_N8
\adder_inst|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder_inst|Add0~12_combout\ = ((\product_reg_inst|product_reg\(36) $ (\multiplicand32_inst|address\(4) $ (!\adder_inst|Add0~10\)))) # (GND)
-- \adder_inst|Add0~13\ = CARRY((\product_reg_inst|product_reg\(36) & ((\multiplicand32_inst|address\(4)) # (!\adder_inst|Add0~10\))) # (!\product_reg_inst|product_reg\(36) & (\multiplicand32_inst|address\(4) & !\adder_inst|Add0~10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \product_reg_inst|product_reg\(36),
	datab => \multiplicand32_inst|address\(4),
	datad => VCC,
	cin => \adder_inst|Add0~10\,
	combout => \adder_inst|Add0~12_combout\,
	cout => \adder_inst|Add0~13\);

-- Location: LCCOMB_X35_Y5_N10
\adder_inst|Add0~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder_inst|Add0~15_combout\ = (\multiplicand32_inst|address\(5) & ((\product_reg_inst|product_reg\(37) & (\adder_inst|Add0~13\ & VCC)) # (!\product_reg_inst|product_reg\(37) & (!\adder_inst|Add0~13\)))) # (!\multiplicand32_inst|address\(5) & 
-- ((\product_reg_inst|product_reg\(37) & (!\adder_inst|Add0~13\)) # (!\product_reg_inst|product_reg\(37) & ((\adder_inst|Add0~13\) # (GND)))))
-- \adder_inst|Add0~16\ = CARRY((\multiplicand32_inst|address\(5) & (!\product_reg_inst|product_reg\(37) & !\adder_inst|Add0~13\)) # (!\multiplicand32_inst|address\(5) & ((!\adder_inst|Add0~13\) # (!\product_reg_inst|product_reg\(37)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multiplicand32_inst|address\(5),
	datab => \product_reg_inst|product_reg\(37),
	datad => VCC,
	cin => \adder_inst|Add0~13\,
	combout => \adder_inst|Add0~15_combout\,
	cout => \adder_inst|Add0~16\);

-- Location: LCCOMB_X43_Y4_N26
\adder_inst|Add0~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder_inst|Add0~17_combout\ = (\product_reg_inst|product_reg\(0) & (\adder_inst|Add0~15_combout\)) # (!\product_reg_inst|product_reg\(0) & ((\product_reg_inst|product_reg\(37))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \product_reg_inst|product_reg\(0),
	datac => \adder_inst|Add0~15_combout\,
	datad => \product_reg_inst|product_reg\(37),
	combout => \adder_inst|Add0~17_combout\);

-- Location: IOIBUF_X31_Y0_N22
\multiplicand[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_multiplicand(7),
	o => \multiplicand[7]~input_o\);

-- Location: LCCOMB_X34_Y5_N14
\multiplicand32_inst|address[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multiplicand32_inst|address[7]~feeder_combout\ = \multiplicand[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \multiplicand[7]~input_o\,
	combout => \multiplicand32_inst|address[7]~feeder_combout\);

-- Location: FF_X34_Y5_N15
\multiplicand32_inst|address[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multiplicand32_inst|address[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplicand32_inst|address\(7));

-- Location: IOIBUF_X31_Y39_N8
\multiplicand[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_multiplicand(6),
	o => \multiplicand[6]~input_o\);

-- Location: LCCOMB_X34_Y5_N20
\multiplicand32_inst|address[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multiplicand32_inst|address[6]~feeder_combout\ = \multiplicand[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \multiplicand[6]~input_o\,
	combout => \multiplicand32_inst|address[6]~feeder_combout\);

-- Location: FF_X34_Y5_N21
\multiplicand32_inst|address[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multiplicand32_inst|address[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplicand32_inst|address\(6));

-- Location: LCCOMB_X35_Y5_N12
\adder_inst|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder_inst|Add0~18_combout\ = ((\multiplicand32_inst|address\(6) $ (\product_reg_inst|product_reg\(38) $ (!\adder_inst|Add0~16\)))) # (GND)
-- \adder_inst|Add0~19\ = CARRY((\multiplicand32_inst|address\(6) & ((\product_reg_inst|product_reg\(38)) # (!\adder_inst|Add0~16\))) # (!\multiplicand32_inst|address\(6) & (\product_reg_inst|product_reg\(38) & !\adder_inst|Add0~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multiplicand32_inst|address\(6),
	datab => \product_reg_inst|product_reg\(38),
	datad => VCC,
	cin => \adder_inst|Add0~16\,
	combout => \adder_inst|Add0~18_combout\,
	cout => \adder_inst|Add0~19\);

-- Location: LCCOMB_X35_Y5_N14
\adder_inst|Add0~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder_inst|Add0~21_combout\ = (\multiplicand32_inst|address\(7) & ((\product_reg_inst|product_reg\(39) & (\adder_inst|Add0~19\ & VCC)) # (!\product_reg_inst|product_reg\(39) & (!\adder_inst|Add0~19\)))) # (!\multiplicand32_inst|address\(7) & 
-- ((\product_reg_inst|product_reg\(39) & (!\adder_inst|Add0~19\)) # (!\product_reg_inst|product_reg\(39) & ((\adder_inst|Add0~19\) # (GND)))))
-- \adder_inst|Add0~22\ = CARRY((\multiplicand32_inst|address\(7) & (!\product_reg_inst|product_reg\(39) & !\adder_inst|Add0~19\)) # (!\multiplicand32_inst|address\(7) & ((!\adder_inst|Add0~19\) # (!\product_reg_inst|product_reg\(39)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multiplicand32_inst|address\(7),
	datab => \product_reg_inst|product_reg\(39),
	datad => VCC,
	cin => \adder_inst|Add0~19\,
	combout => \adder_inst|Add0~21_combout\,
	cout => \adder_inst|Add0~22\);

-- Location: LCCOMB_X43_Y4_N6
\adder_inst|Add0~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder_inst|Add0~23_combout\ = (\product_reg_inst|product_reg\(0) & ((\adder_inst|Add0~21_combout\))) # (!\product_reg_inst|product_reg\(0) & (\product_reg_inst|product_reg\(39)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \product_reg_inst|product_reg\(39),
	datab => \product_reg_inst|product_reg\(0),
	datac => \adder_inst|Add0~21_combout\,
	combout => \adder_inst|Add0~23_combout\);

-- Location: IOIBUF_X22_Y0_N29
\multiplicand[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_multiplicand(9),
	o => \multiplicand[9]~input_o\);

-- Location: LCCOMB_X34_Y5_N18
\multiplicand32_inst|address[9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multiplicand32_inst|address[9]~feeder_combout\ = \multiplicand[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \multiplicand[9]~input_o\,
	combout => \multiplicand32_inst|address[9]~feeder_combout\);

-- Location: FF_X34_Y5_N19
\multiplicand32_inst|address[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multiplicand32_inst|address[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplicand32_inst|address\(9));

-- Location: IOIBUF_X0_Y9_N22
\multiplicand[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_multiplicand(8),
	o => \multiplicand[8]~input_o\);

-- Location: LCCOMB_X34_Y5_N8
\multiplicand32_inst|address[8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multiplicand32_inst|address[8]~feeder_combout\ = \multiplicand[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \multiplicand[8]~input_o\,
	combout => \multiplicand32_inst|address[8]~feeder_combout\);

-- Location: FF_X34_Y5_N9
\multiplicand32_inst|address[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multiplicand32_inst|address[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplicand32_inst|address\(8));

-- Location: LCCOMB_X35_Y5_N16
\adder_inst|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder_inst|Add0~24_combout\ = ((\multiplicand32_inst|address\(8) $ (\product_reg_inst|product_reg\(40) $ (!\adder_inst|Add0~22\)))) # (GND)
-- \adder_inst|Add0~25\ = CARRY((\multiplicand32_inst|address\(8) & ((\product_reg_inst|product_reg\(40)) # (!\adder_inst|Add0~22\))) # (!\multiplicand32_inst|address\(8) & (\product_reg_inst|product_reg\(40) & !\adder_inst|Add0~22\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multiplicand32_inst|address\(8),
	datab => \product_reg_inst|product_reg\(40),
	datad => VCC,
	cin => \adder_inst|Add0~22\,
	combout => \adder_inst|Add0~24_combout\,
	cout => \adder_inst|Add0~25\);

-- Location: LCCOMB_X35_Y5_N18
\adder_inst|Add0~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder_inst|Add0~27_combout\ = (\product_reg_inst|product_reg\(41) & ((\multiplicand32_inst|address\(9) & (\adder_inst|Add0~25\ & VCC)) # (!\multiplicand32_inst|address\(9) & (!\adder_inst|Add0~25\)))) # (!\product_reg_inst|product_reg\(41) & 
-- ((\multiplicand32_inst|address\(9) & (!\adder_inst|Add0~25\)) # (!\multiplicand32_inst|address\(9) & ((\adder_inst|Add0~25\) # (GND)))))
-- \adder_inst|Add0~28\ = CARRY((\product_reg_inst|product_reg\(41) & (!\multiplicand32_inst|address\(9) & !\adder_inst|Add0~25\)) # (!\product_reg_inst|product_reg\(41) & ((!\adder_inst|Add0~25\) # (!\multiplicand32_inst|address\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \product_reg_inst|product_reg\(41),
	datab => \multiplicand32_inst|address\(9),
	datad => VCC,
	cin => \adder_inst|Add0~25\,
	combout => \adder_inst|Add0~27_combout\,
	cout => \adder_inst|Add0~28\);

-- Location: LCCOMB_X36_Y5_N10
\adder_inst|Add0~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder_inst|Add0~29_combout\ = (\product_reg_inst|product_reg\(0) & (\adder_inst|Add0~27_combout\)) # (!\product_reg_inst|product_reg\(0) & ((\product_reg_inst|product_reg\(41))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adder_inst|Add0~27_combout\,
	datac => \product_reg_inst|product_reg\(0),
	datad => \product_reg_inst|product_reg\(41),
	combout => \adder_inst|Add0~29_combout\);

-- Location: IOIBUF_X18_Y0_N1
\multiplicand[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_multiplicand(11),
	o => \multiplicand[11]~input_o\);

-- Location: LCCOMB_X34_Y5_N22
\multiplicand32_inst|address[11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multiplicand32_inst|address[11]~feeder_combout\ = \multiplicand[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \multiplicand[11]~input_o\,
	combout => \multiplicand32_inst|address[11]~feeder_combout\);

-- Location: FF_X34_Y5_N23
\multiplicand32_inst|address[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multiplicand32_inst|address[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplicand32_inst|address\(11));

-- Location: IOIBUF_X29_Y39_N1
\multiplicand[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_multiplicand(10),
	o => \multiplicand[10]~input_o\);

-- Location: LCCOMB_X34_Y5_N4
\multiplicand32_inst|address[10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multiplicand32_inst|address[10]~feeder_combout\ = \multiplicand[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \multiplicand[10]~input_o\,
	combout => \multiplicand32_inst|address[10]~feeder_combout\);

-- Location: FF_X34_Y5_N5
\multiplicand32_inst|address[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multiplicand32_inst|address[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplicand32_inst|address\(10));

-- Location: LCCOMB_X35_Y5_N20
\adder_inst|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder_inst|Add0~30_combout\ = ((\product_reg_inst|product_reg\(42) $ (\multiplicand32_inst|address\(10) $ (!\adder_inst|Add0~28\)))) # (GND)
-- \adder_inst|Add0~31\ = CARRY((\product_reg_inst|product_reg\(42) & ((\multiplicand32_inst|address\(10)) # (!\adder_inst|Add0~28\))) # (!\product_reg_inst|product_reg\(42) & (\multiplicand32_inst|address\(10) & !\adder_inst|Add0~28\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \product_reg_inst|product_reg\(42),
	datab => \multiplicand32_inst|address\(10),
	datad => VCC,
	cin => \adder_inst|Add0~28\,
	combout => \adder_inst|Add0~30_combout\,
	cout => \adder_inst|Add0~31\);

-- Location: LCCOMB_X35_Y5_N22
\adder_inst|Add0~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder_inst|Add0~33_combout\ = (\product_reg_inst|product_reg\(43) & ((\multiplicand32_inst|address\(11) & (\adder_inst|Add0~31\ & VCC)) # (!\multiplicand32_inst|address\(11) & (!\adder_inst|Add0~31\)))) # (!\product_reg_inst|product_reg\(43) & 
-- ((\multiplicand32_inst|address\(11) & (!\adder_inst|Add0~31\)) # (!\multiplicand32_inst|address\(11) & ((\adder_inst|Add0~31\) # (GND)))))
-- \adder_inst|Add0~34\ = CARRY((\product_reg_inst|product_reg\(43) & (!\multiplicand32_inst|address\(11) & !\adder_inst|Add0~31\)) # (!\product_reg_inst|product_reg\(43) & ((!\adder_inst|Add0~31\) # (!\multiplicand32_inst|address\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \product_reg_inst|product_reg\(43),
	datab => \multiplicand32_inst|address\(11),
	datad => VCC,
	cin => \adder_inst|Add0~31\,
	combout => \adder_inst|Add0~33_combout\,
	cout => \adder_inst|Add0~34\);

-- Location: LCCOMB_X36_Y5_N30
\adder_inst|Add0~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder_inst|Add0~35_combout\ = (\product_reg_inst|product_reg\(0) & ((\adder_inst|Add0~33_combout\))) # (!\product_reg_inst|product_reg\(0) & (\product_reg_inst|product_reg\(43)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \product_reg_inst|product_reg\(43),
	datab => \adder_inst|Add0~33_combout\,
	datac => \product_reg_inst|product_reg\(0),
	combout => \adder_inst|Add0~35_combout\);

-- Location: IOIBUF_X0_Y3_N15
\multiplicand[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_multiplicand(14),
	o => \multiplicand[14]~input_o\);

-- Location: LCCOMB_X34_Y5_N28
\multiplicand32_inst|address[14]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multiplicand32_inst|address[14]~feeder_combout\ = \multiplicand[14]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \multiplicand[14]~input_o\,
	combout => \multiplicand32_inst|address[14]~feeder_combout\);

-- Location: FF_X34_Y5_N29
\multiplicand32_inst|address[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multiplicand32_inst|address[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplicand32_inst|address\(14));

-- Location: IOIBUF_X31_Y39_N15
\multiplicand[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_multiplicand(13),
	o => \multiplicand[13]~input_o\);

-- Location: LCCOMB_X34_Y5_N26
\multiplicand32_inst|address[13]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multiplicand32_inst|address[13]~feeder_combout\ = \multiplicand[13]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \multiplicand[13]~input_o\,
	combout => \multiplicand32_inst|address[13]~feeder_combout\);

-- Location: FF_X34_Y5_N27
\multiplicand32_inst|address[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multiplicand32_inst|address[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplicand32_inst|address\(13));

-- Location: IOIBUF_X78_Y16_N15
\multiplicand[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_multiplicand(12),
	o => \multiplicand[12]~input_o\);

-- Location: LCCOMB_X34_Y5_N0
\multiplicand32_inst|address[12]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multiplicand32_inst|address[12]~feeder_combout\ = \multiplicand[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \multiplicand[12]~input_o\,
	combout => \multiplicand32_inst|address[12]~feeder_combout\);

-- Location: FF_X34_Y5_N1
\multiplicand32_inst|address[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multiplicand32_inst|address[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplicand32_inst|address\(12));

-- Location: LCCOMB_X35_Y5_N24
\adder_inst|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder_inst|Add0~36_combout\ = ((\multiplicand32_inst|address\(12) $ (\product_reg_inst|product_reg\(44) $ (!\adder_inst|Add0~34\)))) # (GND)
-- \adder_inst|Add0~37\ = CARRY((\multiplicand32_inst|address\(12) & ((\product_reg_inst|product_reg\(44)) # (!\adder_inst|Add0~34\))) # (!\multiplicand32_inst|address\(12) & (\product_reg_inst|product_reg\(44) & !\adder_inst|Add0~34\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multiplicand32_inst|address\(12),
	datab => \product_reg_inst|product_reg\(44),
	datad => VCC,
	cin => \adder_inst|Add0~34\,
	combout => \adder_inst|Add0~36_combout\,
	cout => \adder_inst|Add0~37\);

-- Location: LCCOMB_X35_Y5_N26
\adder_inst|Add0~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder_inst|Add0~39_combout\ = (\product_reg_inst|product_reg\(45) & ((\multiplicand32_inst|address\(13) & (\adder_inst|Add0~37\ & VCC)) # (!\multiplicand32_inst|address\(13) & (!\adder_inst|Add0~37\)))) # (!\product_reg_inst|product_reg\(45) & 
-- ((\multiplicand32_inst|address\(13) & (!\adder_inst|Add0~37\)) # (!\multiplicand32_inst|address\(13) & ((\adder_inst|Add0~37\) # (GND)))))
-- \adder_inst|Add0~40\ = CARRY((\product_reg_inst|product_reg\(45) & (!\multiplicand32_inst|address\(13) & !\adder_inst|Add0~37\)) # (!\product_reg_inst|product_reg\(45) & ((!\adder_inst|Add0~37\) # (!\multiplicand32_inst|address\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \product_reg_inst|product_reg\(45),
	datab => \multiplicand32_inst|address\(13),
	datad => VCC,
	cin => \adder_inst|Add0~37\,
	combout => \adder_inst|Add0~39_combout\,
	cout => \adder_inst|Add0~40\);

-- Location: LCCOMB_X35_Y5_N28
\adder_inst|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder_inst|Add0~42_combout\ = ((\product_reg_inst|product_reg\(46) $ (\multiplicand32_inst|address\(14) $ (!\adder_inst|Add0~40\)))) # (GND)
-- \adder_inst|Add0~43\ = CARRY((\product_reg_inst|product_reg\(46) & ((\multiplicand32_inst|address\(14)) # (!\adder_inst|Add0~40\))) # (!\product_reg_inst|product_reg\(46) & (\multiplicand32_inst|address\(14) & !\adder_inst|Add0~40\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \product_reg_inst|product_reg\(46),
	datab => \multiplicand32_inst|address\(14),
	datad => VCC,
	cin => \adder_inst|Add0~40\,
	combout => \adder_inst|Add0~42_combout\,
	cout => \adder_inst|Add0~43\);

-- Location: LCCOMB_X36_Y5_N12
\adder_inst|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder_inst|Add0~44_combout\ = (\product_reg_inst|product_reg\(0) & ((\adder_inst|Add0~42_combout\))) # (!\product_reg_inst|product_reg\(0) & (\product_reg_inst|product_reg\(46)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \product_reg_inst|product_reg\(46),
	datac => \product_reg_inst|product_reg\(0),
	datad => \adder_inst|Add0~42_combout\,
	combout => \adder_inst|Add0~44_combout\);

-- Location: IOIBUF_X0_Y3_N22
\multiplicand[17]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_multiplicand(17),
	o => \multiplicand[17]~input_o\);

-- Location: LCCOMB_X34_Y4_N18
\multiplicand32_inst|address[17]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multiplicand32_inst|address[17]~feeder_combout\ = \multiplicand[17]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \multiplicand[17]~input_o\,
	combout => \multiplicand32_inst|address[17]~feeder_combout\);

-- Location: FF_X34_Y4_N19
\multiplicand32_inst|address[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multiplicand32_inst|address[17]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplicand32_inst|address\(17));

-- Location: IOIBUF_X38_Y0_N15
\multiplicand[16]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_multiplicand(16),
	o => \multiplicand[16]~input_o\);

-- Location: LCCOMB_X34_Y4_N24
\multiplicand32_inst|address[16]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multiplicand32_inst|address[16]~feeder_combout\ = \multiplicand[16]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \multiplicand[16]~input_o\,
	combout => \multiplicand32_inst|address[16]~feeder_combout\);

-- Location: FF_X34_Y4_N25
\multiplicand32_inst|address[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multiplicand32_inst|address[16]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplicand32_inst|address\(16));

-- Location: IOIBUF_X18_Y0_N15
\multiplicand[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_multiplicand(15),
	o => \multiplicand[15]~input_o\);

-- Location: LCCOMB_X34_Y5_N30
\multiplicand32_inst|address[15]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multiplicand32_inst|address[15]~feeder_combout\ = \multiplicand[15]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \multiplicand[15]~input_o\,
	combout => \multiplicand32_inst|address[15]~feeder_combout\);

-- Location: FF_X34_Y5_N31
\multiplicand32_inst|address[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multiplicand32_inst|address[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplicand32_inst|address\(15));

-- Location: LCCOMB_X35_Y5_N30
\adder_inst|Add0~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder_inst|Add0~45_combout\ = (\product_reg_inst|product_reg\(47) & ((\multiplicand32_inst|address\(15) & (\adder_inst|Add0~43\ & VCC)) # (!\multiplicand32_inst|address\(15) & (!\adder_inst|Add0~43\)))) # (!\product_reg_inst|product_reg\(47) & 
-- ((\multiplicand32_inst|address\(15) & (!\adder_inst|Add0~43\)) # (!\multiplicand32_inst|address\(15) & ((\adder_inst|Add0~43\) # (GND)))))
-- \adder_inst|Add0~46\ = CARRY((\product_reg_inst|product_reg\(47) & (!\multiplicand32_inst|address\(15) & !\adder_inst|Add0~43\)) # (!\product_reg_inst|product_reg\(47) & ((!\adder_inst|Add0~43\) # (!\multiplicand32_inst|address\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \product_reg_inst|product_reg\(47),
	datab => \multiplicand32_inst|address\(15),
	datad => VCC,
	cin => \adder_inst|Add0~43\,
	combout => \adder_inst|Add0~45_combout\,
	cout => \adder_inst|Add0~46\);

-- Location: LCCOMB_X35_Y4_N0
\adder_inst|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder_inst|Add0~48_combout\ = ((\product_reg_inst|product_reg\(48) $ (\multiplicand32_inst|address\(16) $ (!\adder_inst|Add0~46\)))) # (GND)
-- \adder_inst|Add0~49\ = CARRY((\product_reg_inst|product_reg\(48) & ((\multiplicand32_inst|address\(16)) # (!\adder_inst|Add0~46\))) # (!\product_reg_inst|product_reg\(48) & (\multiplicand32_inst|address\(16) & !\adder_inst|Add0~46\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \product_reg_inst|product_reg\(48),
	datab => \multiplicand32_inst|address\(16),
	datad => VCC,
	cin => \adder_inst|Add0~46\,
	combout => \adder_inst|Add0~48_combout\,
	cout => \adder_inst|Add0~49\);

-- Location: LCCOMB_X35_Y4_N2
\adder_inst|Add0~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder_inst|Add0~51_combout\ = (\product_reg_inst|product_reg\(49) & ((\multiplicand32_inst|address\(17) & (\adder_inst|Add0~49\ & VCC)) # (!\multiplicand32_inst|address\(17) & (!\adder_inst|Add0~49\)))) # (!\product_reg_inst|product_reg\(49) & 
-- ((\multiplicand32_inst|address\(17) & (!\adder_inst|Add0~49\)) # (!\multiplicand32_inst|address\(17) & ((\adder_inst|Add0~49\) # (GND)))))
-- \adder_inst|Add0~52\ = CARRY((\product_reg_inst|product_reg\(49) & (!\multiplicand32_inst|address\(17) & !\adder_inst|Add0~49\)) # (!\product_reg_inst|product_reg\(49) & ((!\adder_inst|Add0~49\) # (!\multiplicand32_inst|address\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \product_reg_inst|product_reg\(49),
	datab => \multiplicand32_inst|address\(17),
	datad => VCC,
	cin => \adder_inst|Add0~49\,
	combout => \adder_inst|Add0~51_combout\,
	cout => \adder_inst|Add0~52\);

-- Location: LCCOMB_X31_Y4_N2
\adder_inst|Add0~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder_inst|Add0~53_combout\ = (\product_reg_inst|product_reg\(0) & ((\adder_inst|Add0~51_combout\))) # (!\product_reg_inst|product_reg\(0) & (\product_reg_inst|product_reg\(49)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \product_reg_inst|product_reg\(49),
	datab => \adder_inst|Add0~51_combout\,
	datac => \product_reg_inst|product_reg\(0),
	combout => \adder_inst|Add0~53_combout\);

-- Location: IOIBUF_X29_Y0_N22
\multiplicand[18]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_multiplicand(18),
	o => \multiplicand[18]~input_o\);

-- Location: LCCOMB_X34_Y4_N4
\multiplicand32_inst|address[18]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multiplicand32_inst|address[18]~feeder_combout\ = \multiplicand[18]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \multiplicand[18]~input_o\,
	combout => \multiplicand32_inst|address[18]~feeder_combout\);

-- Location: FF_X34_Y4_N5
\multiplicand32_inst|address[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multiplicand32_inst|address[18]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplicand32_inst|address\(18));

-- Location: LCCOMB_X35_Y4_N4
\adder_inst|Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder_inst|Add0~54_combout\ = ((\product_reg_inst|product_reg\(50) $ (\multiplicand32_inst|address\(18) $ (!\adder_inst|Add0~52\)))) # (GND)
-- \adder_inst|Add0~55\ = CARRY((\product_reg_inst|product_reg\(50) & ((\multiplicand32_inst|address\(18)) # (!\adder_inst|Add0~52\))) # (!\product_reg_inst|product_reg\(50) & (\multiplicand32_inst|address\(18) & !\adder_inst|Add0~52\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \product_reg_inst|product_reg\(50),
	datab => \multiplicand32_inst|address\(18),
	datad => VCC,
	cin => \adder_inst|Add0~52\,
	combout => \adder_inst|Add0~54_combout\,
	cout => \adder_inst|Add0~55\);

-- Location: LCCOMB_X31_Y4_N4
\adder_inst|Add0~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder_inst|Add0~56_combout\ = (\product_reg_inst|product_reg\(0) & ((\adder_inst|Add0~54_combout\))) # (!\product_reg_inst|product_reg\(0) & (\product_reg_inst|product_reg\(50)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \product_reg_inst|product_reg\(50),
	datac => \product_reg_inst|product_reg\(0),
	datad => \adder_inst|Add0~54_combout\,
	combout => \adder_inst|Add0~56_combout\);

-- Location: IOIBUF_X20_Y0_N22
\multiplicand[19]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_multiplicand(19),
	o => \multiplicand[19]~input_o\);

-- Location: LCCOMB_X34_Y4_N6
\multiplicand32_inst|address[19]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multiplicand32_inst|address[19]~feeder_combout\ = \multiplicand[19]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \multiplicand[19]~input_o\,
	combout => \multiplicand32_inst|address[19]~feeder_combout\);

-- Location: FF_X34_Y4_N7
\multiplicand32_inst|address[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multiplicand32_inst|address[19]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplicand32_inst|address\(19));

-- Location: LCCOMB_X35_Y4_N6
\adder_inst|Add0~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder_inst|Add0~57_combout\ = (\product_reg_inst|product_reg\(51) & ((\multiplicand32_inst|address\(19) & (\adder_inst|Add0~55\ & VCC)) # (!\multiplicand32_inst|address\(19) & (!\adder_inst|Add0~55\)))) # (!\product_reg_inst|product_reg\(51) & 
-- ((\multiplicand32_inst|address\(19) & (!\adder_inst|Add0~55\)) # (!\multiplicand32_inst|address\(19) & ((\adder_inst|Add0~55\) # (GND)))))
-- \adder_inst|Add0~58\ = CARRY((\product_reg_inst|product_reg\(51) & (!\multiplicand32_inst|address\(19) & !\adder_inst|Add0~55\)) # (!\product_reg_inst|product_reg\(51) & ((!\adder_inst|Add0~55\) # (!\multiplicand32_inst|address\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \product_reg_inst|product_reg\(51),
	datab => \multiplicand32_inst|address\(19),
	datad => VCC,
	cin => \adder_inst|Add0~55\,
	combout => \adder_inst|Add0~57_combout\,
	cout => \adder_inst|Add0~58\);

-- Location: LCCOMB_X31_Y4_N30
\adder_inst|Add0~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder_inst|Add0~59_combout\ = (\product_reg_inst|product_reg\(0) & ((\adder_inst|Add0~57_combout\))) # (!\product_reg_inst|product_reg\(0) & (\product_reg_inst|product_reg\(51)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \product_reg_inst|product_reg\(51),
	datac => \product_reg_inst|product_reg\(0),
	datad => \adder_inst|Add0~57_combout\,
	combout => \adder_inst|Add0~59_combout\);

-- Location: IOIBUF_X51_Y0_N1
\multiplicand[20]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_multiplicand(20),
	o => \multiplicand[20]~input_o\);

-- Location: LCCOMB_X41_Y4_N8
\multiplicand32_inst|address[20]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multiplicand32_inst|address[20]~feeder_combout\ = \multiplicand[20]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \multiplicand[20]~input_o\,
	combout => \multiplicand32_inst|address[20]~feeder_combout\);

-- Location: FF_X41_Y4_N9
\multiplicand32_inst|address[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multiplicand32_inst|address[20]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplicand32_inst|address\(20));

-- Location: LCCOMB_X35_Y4_N8
\adder_inst|Add0~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder_inst|Add0~60_combout\ = ((\product_reg_inst|product_reg\(52) $ (\multiplicand32_inst|address\(20) $ (!\adder_inst|Add0~58\)))) # (GND)
-- \adder_inst|Add0~61\ = CARRY((\product_reg_inst|product_reg\(52) & ((\multiplicand32_inst|address\(20)) # (!\adder_inst|Add0~58\))) # (!\product_reg_inst|product_reg\(52) & (\multiplicand32_inst|address\(20) & !\adder_inst|Add0~58\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \product_reg_inst|product_reg\(52),
	datab => \multiplicand32_inst|address\(20),
	datad => VCC,
	cin => \adder_inst|Add0~58\,
	combout => \adder_inst|Add0~60_combout\,
	cout => \adder_inst|Add0~61\);

-- Location: LCCOMB_X31_Y4_N16
\adder_inst|Add0~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder_inst|Add0~62_combout\ = (\product_reg_inst|product_reg\(0) & (\adder_inst|Add0~60_combout\)) # (!\product_reg_inst|product_reg\(0) & ((\product_reg_inst|product_reg\(52))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder_inst|Add0~60_combout\,
	datac => \product_reg_inst|product_reg\(0),
	datad => \product_reg_inst|product_reg\(52),
	combout => \adder_inst|Add0~62_combout\);

-- Location: IOIBUF_X31_Y39_N29
\multiplicand[23]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_multiplicand(23),
	o => \multiplicand[23]~input_o\);

-- Location: LCCOMB_X34_Y4_N12
\multiplicand32_inst|address[23]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multiplicand32_inst|address[23]~feeder_combout\ = \multiplicand[23]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \multiplicand[23]~input_o\,
	combout => \multiplicand32_inst|address[23]~feeder_combout\);

-- Location: FF_X34_Y4_N13
\multiplicand32_inst|address[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multiplicand32_inst|address[23]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplicand32_inst|address\(23));

-- Location: IOIBUF_X49_Y0_N8
\multiplicand[22]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_multiplicand(22),
	o => \multiplicand[22]~input_o\);

-- Location: LCCOMB_X34_Y4_N2
\multiplicand32_inst|address[22]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multiplicand32_inst|address[22]~feeder_combout\ = \multiplicand[22]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \multiplicand[22]~input_o\,
	combout => \multiplicand32_inst|address[22]~feeder_combout\);

-- Location: FF_X34_Y4_N3
\multiplicand32_inst|address[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multiplicand32_inst|address[22]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplicand32_inst|address\(22));

-- Location: IOIBUF_X14_Y0_N8
\multiplicand[21]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_multiplicand(21),
	o => \multiplicand[21]~input_o\);

-- Location: LCCOMB_X34_Y4_N16
\multiplicand32_inst|address[21]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multiplicand32_inst|address[21]~feeder_combout\ = \multiplicand[21]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \multiplicand[21]~input_o\,
	combout => \multiplicand32_inst|address[21]~feeder_combout\);

-- Location: FF_X34_Y4_N17
\multiplicand32_inst|address[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multiplicand32_inst|address[21]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplicand32_inst|address\(21));

-- Location: LCCOMB_X35_Y4_N10
\adder_inst|Add0~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder_inst|Add0~63_combout\ = (\multiplicand32_inst|address\(21) & ((\product_reg_inst|product_reg\(53) & (\adder_inst|Add0~61\ & VCC)) # (!\product_reg_inst|product_reg\(53) & (!\adder_inst|Add0~61\)))) # (!\multiplicand32_inst|address\(21) & 
-- ((\product_reg_inst|product_reg\(53) & (!\adder_inst|Add0~61\)) # (!\product_reg_inst|product_reg\(53) & ((\adder_inst|Add0~61\) # (GND)))))
-- \adder_inst|Add0~64\ = CARRY((\multiplicand32_inst|address\(21) & (!\product_reg_inst|product_reg\(53) & !\adder_inst|Add0~61\)) # (!\multiplicand32_inst|address\(21) & ((!\adder_inst|Add0~61\) # (!\product_reg_inst|product_reg\(53)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multiplicand32_inst|address\(21),
	datab => \product_reg_inst|product_reg\(53),
	datad => VCC,
	cin => \adder_inst|Add0~61\,
	combout => \adder_inst|Add0~63_combout\,
	cout => \adder_inst|Add0~64\);

-- Location: LCCOMB_X35_Y4_N12
\adder_inst|Add0~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder_inst|Add0~66_combout\ = ((\multiplicand32_inst|address\(22) $ (\product_reg_inst|product_reg\(54) $ (!\adder_inst|Add0~64\)))) # (GND)
-- \adder_inst|Add0~67\ = CARRY((\multiplicand32_inst|address\(22) & ((\product_reg_inst|product_reg\(54)) # (!\adder_inst|Add0~64\))) # (!\multiplicand32_inst|address\(22) & (\product_reg_inst|product_reg\(54) & !\adder_inst|Add0~64\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multiplicand32_inst|address\(22),
	datab => \product_reg_inst|product_reg\(54),
	datad => VCC,
	cin => \adder_inst|Add0~64\,
	combout => \adder_inst|Add0~66_combout\,
	cout => \adder_inst|Add0~67\);

-- Location: LCCOMB_X35_Y4_N14
\adder_inst|Add0~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder_inst|Add0~69_combout\ = (\multiplicand32_inst|address\(23) & ((\product_reg_inst|product_reg\(55) & (\adder_inst|Add0~67\ & VCC)) # (!\product_reg_inst|product_reg\(55) & (!\adder_inst|Add0~67\)))) # (!\multiplicand32_inst|address\(23) & 
-- ((\product_reg_inst|product_reg\(55) & (!\adder_inst|Add0~67\)) # (!\product_reg_inst|product_reg\(55) & ((\adder_inst|Add0~67\) # (GND)))))
-- \adder_inst|Add0~70\ = CARRY((\multiplicand32_inst|address\(23) & (!\product_reg_inst|product_reg\(55) & !\adder_inst|Add0~67\)) # (!\multiplicand32_inst|address\(23) & ((!\adder_inst|Add0~67\) # (!\product_reg_inst|product_reg\(55)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multiplicand32_inst|address\(23),
	datab => \product_reg_inst|product_reg\(55),
	datad => VCC,
	cin => \adder_inst|Add0~67\,
	combout => \adder_inst|Add0~69_combout\,
	cout => \adder_inst|Add0~70\);

-- Location: LCCOMB_X31_Y4_N22
\adder_inst|Add0~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder_inst|Add0~71_combout\ = (\product_reg_inst|product_reg\(0) & ((\adder_inst|Add0~69_combout\))) # (!\product_reg_inst|product_reg\(0) & (\product_reg_inst|product_reg\(55)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \product_reg_inst|product_reg\(55),
	datac => \product_reg_inst|product_reg\(0),
	datad => \adder_inst|Add0~69_combout\,
	combout => \adder_inst|Add0~71_combout\);

-- Location: IOIBUF_X34_Y0_N22
\multiplicand[25]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_multiplicand(25),
	o => \multiplicand[25]~input_o\);

-- Location: LCCOMB_X34_Y4_N0
\multiplicand32_inst|address[25]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multiplicand32_inst|address[25]~feeder_combout\ = \multiplicand[25]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \multiplicand[25]~input_o\,
	combout => \multiplicand32_inst|address[25]~feeder_combout\);

-- Location: FF_X34_Y4_N1
\multiplicand32_inst|address[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multiplicand32_inst|address[25]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplicand32_inst|address\(25));

-- Location: IOIBUF_X29_Y0_N1
\multiplicand[24]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_multiplicand(24),
	o => \multiplicand[24]~input_o\);

-- Location: LCCOMB_X34_Y4_N14
\multiplicand32_inst|address[24]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multiplicand32_inst|address[24]~feeder_combout\ = \multiplicand[24]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \multiplicand[24]~input_o\,
	combout => \multiplicand32_inst|address[24]~feeder_combout\);

-- Location: FF_X34_Y4_N15
\multiplicand32_inst|address[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multiplicand32_inst|address[24]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplicand32_inst|address\(24));

-- Location: LCCOMB_X35_Y4_N16
\adder_inst|Add0~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder_inst|Add0~72_combout\ = ((\multiplicand32_inst|address\(24) $ (\product_reg_inst|product_reg\(56) $ (!\adder_inst|Add0~70\)))) # (GND)
-- \adder_inst|Add0~73\ = CARRY((\multiplicand32_inst|address\(24) & ((\product_reg_inst|product_reg\(56)) # (!\adder_inst|Add0~70\))) # (!\multiplicand32_inst|address\(24) & (\product_reg_inst|product_reg\(56) & !\adder_inst|Add0~70\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multiplicand32_inst|address\(24),
	datab => \product_reg_inst|product_reg\(56),
	datad => VCC,
	cin => \adder_inst|Add0~70\,
	combout => \adder_inst|Add0~72_combout\,
	cout => \adder_inst|Add0~73\);

-- Location: LCCOMB_X35_Y4_N18
\adder_inst|Add0~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder_inst|Add0~75_combout\ = (\multiplicand32_inst|address\(25) & ((\product_reg_inst|product_reg\(57) & (\adder_inst|Add0~73\ & VCC)) # (!\product_reg_inst|product_reg\(57) & (!\adder_inst|Add0~73\)))) # (!\multiplicand32_inst|address\(25) & 
-- ((\product_reg_inst|product_reg\(57) & (!\adder_inst|Add0~73\)) # (!\product_reg_inst|product_reg\(57) & ((\adder_inst|Add0~73\) # (GND)))))
-- \adder_inst|Add0~76\ = CARRY((\multiplicand32_inst|address\(25) & (!\product_reg_inst|product_reg\(57) & !\adder_inst|Add0~73\)) # (!\multiplicand32_inst|address\(25) & ((!\adder_inst|Add0~73\) # (!\product_reg_inst|product_reg\(57)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multiplicand32_inst|address\(25),
	datab => \product_reg_inst|product_reg\(57),
	datad => VCC,
	cin => \adder_inst|Add0~73\,
	combout => \adder_inst|Add0~75_combout\,
	cout => \adder_inst|Add0~76\);

-- Location: LCCOMB_X32_Y4_N22
\adder_inst|Add0~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder_inst|Add0~77_combout\ = (\product_reg_inst|product_reg\(0) & ((\adder_inst|Add0~75_combout\))) # (!\product_reg_inst|product_reg\(0) & (\product_reg_inst|product_reg\(57)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \product_reg_inst|product_reg\(0),
	datab => \product_reg_inst|product_reg\(57),
	datad => \adder_inst|Add0~75_combout\,
	combout => \adder_inst|Add0~77_combout\);

-- Location: LCCOMB_X36_Y4_N12
\product_reg_inst|product_reg~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \product_reg_inst|product_reg~69_combout\ = (\product_reg_inst|product_reg\(63) & ((\control_unit_inst|curr_state.add_state~q\) # (!\control_unit_inst|curr_state.shift_state~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \product_reg_inst|product_reg\(63),
	datac => \control_unit_inst|curr_state.add_state~q\,
	datad => \control_unit_inst|curr_state.shift_state~q\,
	combout => \product_reg_inst|product_reg~69_combout\);

-- Location: IOIBUF_X16_Y0_N29
\multiplicand[31]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_multiplicand(31),
	o => \multiplicand[31]~input_o\);

-- Location: LCCOMB_X34_Y4_N28
\multiplicand32_inst|address[31]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multiplicand32_inst|address[31]~feeder_combout\ = \multiplicand[31]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \multiplicand[31]~input_o\,
	combout => \multiplicand32_inst|address[31]~feeder_combout\);

-- Location: FF_X34_Y4_N29
\multiplicand32_inst|address[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multiplicand32_inst|address[31]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplicand32_inst|address\(31));

-- Location: IOIBUF_X34_Y0_N15
\multiplicand[30]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_multiplicand(30),
	o => \multiplicand[30]~input_o\);

-- Location: LCCOMB_X34_Y4_N26
\multiplicand32_inst|address[30]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multiplicand32_inst|address[30]~feeder_combout\ = \multiplicand[30]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \multiplicand[30]~input_o\,
	combout => \multiplicand32_inst|address[30]~feeder_combout\);

-- Location: FF_X34_Y4_N27
\multiplicand32_inst|address[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multiplicand32_inst|address[30]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplicand32_inst|address\(30));

-- Location: IOIBUF_X18_Y0_N22
\multiplicand[29]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_multiplicand(29),
	o => \multiplicand[29]~input_o\);

-- Location: LCCOMB_X34_Y4_N8
\multiplicand32_inst|address[29]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multiplicand32_inst|address[29]~feeder_combout\ = \multiplicand[29]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \multiplicand[29]~input_o\,
	combout => \multiplicand32_inst|address[29]~feeder_combout\);

-- Location: FF_X34_Y4_N9
\multiplicand32_inst|address[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multiplicand32_inst|address[29]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplicand32_inst|address\(29));

-- Location: IOIBUF_X31_Y39_N1
\multiplicand[28]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_multiplicand(28),
	o => \multiplicand[28]~input_o\);

-- Location: LCCOMB_X34_Y4_N30
\multiplicand32_inst|address[28]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multiplicand32_inst|address[28]~feeder_combout\ = \multiplicand[28]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \multiplicand[28]~input_o\,
	combout => \multiplicand32_inst|address[28]~feeder_combout\);

-- Location: FF_X34_Y4_N31
\multiplicand32_inst|address[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multiplicand32_inst|address[28]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplicand32_inst|address\(28));

-- Location: IOIBUF_X26_Y0_N15
\multiplicand[27]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_multiplicand(27),
	o => \multiplicand[27]~input_o\);

-- Location: LCCOMB_X34_Y4_N20
\multiplicand32_inst|address[27]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multiplicand32_inst|address[27]~feeder_combout\ = \multiplicand[27]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \multiplicand[27]~input_o\,
	combout => \multiplicand32_inst|address[27]~feeder_combout\);

-- Location: FF_X34_Y4_N21
\multiplicand32_inst|address[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multiplicand32_inst|address[27]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplicand32_inst|address\(27));

-- Location: IOIBUF_X31_Y0_N15
\multiplicand[26]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_multiplicand(26),
	o => \multiplicand[26]~input_o\);

-- Location: LCCOMB_X34_Y4_N10
\multiplicand32_inst|address[26]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multiplicand32_inst|address[26]~feeder_combout\ = \multiplicand[26]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \multiplicand[26]~input_o\,
	combout => \multiplicand32_inst|address[26]~feeder_combout\);

-- Location: FF_X34_Y4_N11
\multiplicand32_inst|address[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \multiplicand32_inst|address[26]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplicand32_inst|address\(26));

-- Location: LCCOMB_X35_Y4_N20
\adder_inst|Add0~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder_inst|Add0~78_combout\ = ((\multiplicand32_inst|address\(26) $ (\product_reg_inst|product_reg\(58) $ (!\adder_inst|Add0~76\)))) # (GND)
-- \adder_inst|Add0~79\ = CARRY((\multiplicand32_inst|address\(26) & ((\product_reg_inst|product_reg\(58)) # (!\adder_inst|Add0~76\))) # (!\multiplicand32_inst|address\(26) & (\product_reg_inst|product_reg\(58) & !\adder_inst|Add0~76\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multiplicand32_inst|address\(26),
	datab => \product_reg_inst|product_reg\(58),
	datad => VCC,
	cin => \adder_inst|Add0~76\,
	combout => \adder_inst|Add0~78_combout\,
	cout => \adder_inst|Add0~79\);

-- Location: LCCOMB_X35_Y4_N22
\adder_inst|Add0~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder_inst|Add0~81_combout\ = (\multiplicand32_inst|address\(27) & ((\product_reg_inst|product_reg\(59) & (\adder_inst|Add0~79\ & VCC)) # (!\product_reg_inst|product_reg\(59) & (!\adder_inst|Add0~79\)))) # (!\multiplicand32_inst|address\(27) & 
-- ((\product_reg_inst|product_reg\(59) & (!\adder_inst|Add0~79\)) # (!\product_reg_inst|product_reg\(59) & ((\adder_inst|Add0~79\) # (GND)))))
-- \adder_inst|Add0~82\ = CARRY((\multiplicand32_inst|address\(27) & (!\product_reg_inst|product_reg\(59) & !\adder_inst|Add0~79\)) # (!\multiplicand32_inst|address\(27) & ((!\adder_inst|Add0~79\) # (!\product_reg_inst|product_reg\(59)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multiplicand32_inst|address\(27),
	datab => \product_reg_inst|product_reg\(59),
	datad => VCC,
	cin => \adder_inst|Add0~79\,
	combout => \adder_inst|Add0~81_combout\,
	cout => \adder_inst|Add0~82\);

-- Location: LCCOMB_X35_Y4_N24
\adder_inst|Add0~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder_inst|Add0~84_combout\ = ((\product_reg_inst|product_reg\(60) $ (\multiplicand32_inst|address\(28) $ (!\adder_inst|Add0~82\)))) # (GND)
-- \adder_inst|Add0~85\ = CARRY((\product_reg_inst|product_reg\(60) & ((\multiplicand32_inst|address\(28)) # (!\adder_inst|Add0~82\))) # (!\product_reg_inst|product_reg\(60) & (\multiplicand32_inst|address\(28) & !\adder_inst|Add0~82\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \product_reg_inst|product_reg\(60),
	datab => \multiplicand32_inst|address\(28),
	datad => VCC,
	cin => \adder_inst|Add0~82\,
	combout => \adder_inst|Add0~84_combout\,
	cout => \adder_inst|Add0~85\);

-- Location: LCCOMB_X35_Y4_N26
\adder_inst|Add0~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder_inst|Add0~87_combout\ = (\multiplicand32_inst|address\(29) & ((\product_reg_inst|product_reg\(61) & (\adder_inst|Add0~85\ & VCC)) # (!\product_reg_inst|product_reg\(61) & (!\adder_inst|Add0~85\)))) # (!\multiplicand32_inst|address\(29) & 
-- ((\product_reg_inst|product_reg\(61) & (!\adder_inst|Add0~85\)) # (!\product_reg_inst|product_reg\(61) & ((\adder_inst|Add0~85\) # (GND)))))
-- \adder_inst|Add0~88\ = CARRY((\multiplicand32_inst|address\(29) & (!\product_reg_inst|product_reg\(61) & !\adder_inst|Add0~85\)) # (!\multiplicand32_inst|address\(29) & ((!\adder_inst|Add0~85\) # (!\product_reg_inst|product_reg\(61)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multiplicand32_inst|address\(29),
	datab => \product_reg_inst|product_reg\(61),
	datad => VCC,
	cin => \adder_inst|Add0~85\,
	combout => \adder_inst|Add0~87_combout\,
	cout => \adder_inst|Add0~88\);

-- Location: LCCOMB_X35_Y4_N28
\adder_inst|Add0~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder_inst|Add0~90_combout\ = ((\multiplicand32_inst|address\(30) $ (\product_reg_inst|product_reg\(62) $ (!\adder_inst|Add0~88\)))) # (GND)
-- \adder_inst|Add0~91\ = CARRY((\multiplicand32_inst|address\(30) & ((\product_reg_inst|product_reg\(62)) # (!\adder_inst|Add0~88\))) # (!\multiplicand32_inst|address\(30) & (\product_reg_inst|product_reg\(62) & !\adder_inst|Add0~88\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multiplicand32_inst|address\(30),
	datab => \product_reg_inst|product_reg\(62),
	datad => VCC,
	cin => \adder_inst|Add0~88\,
	combout => \adder_inst|Add0~90_combout\,
	cout => \adder_inst|Add0~91\);

-- Location: LCCOMB_X35_Y4_N30
\adder_inst|Add0~93\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder_inst|Add0~93_combout\ = \multiplicand32_inst|address\(31) $ (\adder_inst|Add0~91\ $ (\product_reg_inst|product_reg\(63)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \multiplicand32_inst|address\(31),
	datad => \product_reg_inst|product_reg\(63),
	cin => \adder_inst|Add0~91\,
	combout => \adder_inst|Add0~93_combout\);

-- Location: LCCOMB_X36_Y4_N26
\product_reg_inst|product_reg~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \product_reg_inst|product_reg~70_combout\ = (\control_unit_inst|curr_state.add_state~q\ & ((\product_reg_inst|product_reg\(0) & ((\adder_inst|Add0~93_combout\))) # (!\product_reg_inst|product_reg\(0) & (\product_reg_inst|product_reg~69_combout\)))) # 
-- (!\control_unit_inst|curr_state.add_state~q\ & (\product_reg_inst|product_reg~69_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \product_reg_inst|product_reg~69_combout\,
	datab => \adder_inst|Add0~93_combout\,
	datac => \control_unit_inst|curr_state.add_state~q\,
	datad => \product_reg_inst|product_reg\(0),
	combout => \product_reg_inst|product_reg~70_combout\);

-- Location: FF_X36_Y4_N27
\product_reg_inst|product_reg[63]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \product_reg_inst|product_reg~70_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \product_reg_inst|product_reg\(63));

-- Location: LCCOMB_X36_Y4_N10
\product_reg_inst|product_reg~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \product_reg_inst|product_reg~67_combout\ = (\control_unit_inst|curr_state.shift_state~q\ & ((\product_reg_inst|product_reg\(63)))) # (!\control_unit_inst|curr_state.shift_state~q\ & (\product_reg_inst|product_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \product_reg_inst|product_reg\(0),
	datac => \product_reg_inst|product_reg\(63),
	datad => \control_unit_inst|curr_state.shift_state~q\,
	combout => \product_reg_inst|product_reg~67_combout\);

-- Location: LCCOMB_X36_Y4_N8
\product_reg_inst|product_reg~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \product_reg_inst|product_reg~68_combout\ = (\product_reg_inst|product_reg~67_combout\ & ((\adder_inst|Add0~90_combout\) # ((\control_unit_inst|curr_state.shift_state~q\)))) # (!\product_reg_inst|product_reg~67_combout\ & 
-- (((\product_reg_inst|product_reg\(62) & !\control_unit_inst|curr_state.shift_state~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \product_reg_inst|product_reg~67_combout\,
	datab => \adder_inst|Add0~90_combout\,
	datac => \product_reg_inst|product_reg\(62),
	datad => \control_unit_inst|curr_state.shift_state~q\,
	combout => \product_reg_inst|product_reg~68_combout\);

-- Location: LCCOMB_X36_Y4_N24
\product_reg_inst|product_reg[33]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \product_reg_inst|product_reg[33]~34_combout\ = (\control_unit_inst|curr_state.add_state~q\) # ((\reset~input_o\) # (\control_unit_inst|curr_state.shift_state~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_unit_inst|curr_state.add_state~q\,
	datac => \reset~input_o\,
	datad => \control_unit_inst|curr_state.shift_state~q\,
	combout => \product_reg_inst|product_reg[33]~34_combout\);

-- Location: FF_X36_Y4_N9
\product_reg_inst|product_reg[62]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \product_reg_inst|product_reg~68_combout\,
	sclr => \reset~input_o\,
	ena => \product_reg_inst|product_reg[33]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \product_reg_inst|product_reg\(62));

-- Location: LCCOMB_X32_Y4_N12
\product_reg_inst|product_reg~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \product_reg_inst|product_reg~65_combout\ = (\control_unit_inst|curr_state.shift_state~q\ & (\product_reg_inst|product_reg\(62))) # (!\control_unit_inst|curr_state.shift_state~q\ & ((\product_reg_inst|product_reg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \product_reg_inst|product_reg\(62),
	datac => \product_reg_inst|product_reg\(0),
	datad => \control_unit_inst|curr_state.shift_state~q\,
	combout => \product_reg_inst|product_reg~65_combout\);

-- Location: LCCOMB_X32_Y4_N10
\product_reg_inst|product_reg~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \product_reg_inst|product_reg~66_combout\ = (\product_reg_inst|product_reg~65_combout\ & ((\adder_inst|Add0~87_combout\) # ((\control_unit_inst|curr_state.shift_state~q\)))) # (!\product_reg_inst|product_reg~65_combout\ & 
-- (((\product_reg_inst|product_reg\(61) & !\control_unit_inst|curr_state.shift_state~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \product_reg_inst|product_reg~65_combout\,
	datab => \adder_inst|Add0~87_combout\,
	datac => \product_reg_inst|product_reg\(61),
	datad => \control_unit_inst|curr_state.shift_state~q\,
	combout => \product_reg_inst|product_reg~66_combout\);

-- Location: FF_X32_Y4_N11
\product_reg_inst|product_reg[61]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \product_reg_inst|product_reg~66_combout\,
	sclr => \reset~input_o\,
	ena => \product_reg_inst|product_reg[33]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \product_reg_inst|product_reg\(61));

-- Location: LCCOMB_X32_Y4_N26
\product_reg_inst|product_reg~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \product_reg_inst|product_reg~63_combout\ = (\control_unit_inst|curr_state.shift_state~q\ & (\product_reg_inst|product_reg\(61))) # (!\control_unit_inst|curr_state.shift_state~q\ & ((\product_reg_inst|product_reg\(60))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \product_reg_inst|product_reg\(61),
	datab => \product_reg_inst|product_reg\(60),
	datad => \control_unit_inst|curr_state.shift_state~q\,
	combout => \product_reg_inst|product_reg~63_combout\);

-- Location: LCCOMB_X32_Y4_N0
\product_reg_inst|product_reg~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \product_reg_inst|product_reg~64_combout\ = (\product_reg_inst|product_reg\(0) & ((\control_unit_inst|curr_state.shift_state~q\ & (\product_reg_inst|product_reg~63_combout\)) # (!\control_unit_inst|curr_state.shift_state~q\ & 
-- ((\adder_inst|Add0~84_combout\))))) # (!\product_reg_inst|product_reg\(0) & (\product_reg_inst|product_reg~63_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \product_reg_inst|product_reg~63_combout\,
	datab => \adder_inst|Add0~84_combout\,
	datac => \product_reg_inst|product_reg\(0),
	datad => \control_unit_inst|curr_state.shift_state~q\,
	combout => \product_reg_inst|product_reg~64_combout\);

-- Location: FF_X32_Y4_N1
\product_reg_inst|product_reg[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \product_reg_inst|product_reg~64_combout\,
	sclr => \reset~input_o\,
	ena => \product_reg_inst|product_reg[33]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \product_reg_inst|product_reg\(60));

-- Location: LCCOMB_X32_Y4_N16
\product_reg_inst|product_reg~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \product_reg_inst|product_reg~61_combout\ = (\control_unit_inst|curr_state.shift_state~q\ & ((\product_reg_inst|product_reg\(60)))) # (!\control_unit_inst|curr_state.shift_state~q\ & (\product_reg_inst|product_reg\(59)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \product_reg_inst|product_reg\(59),
	datab => \product_reg_inst|product_reg\(60),
	datad => \control_unit_inst|curr_state.shift_state~q\,
	combout => \product_reg_inst|product_reg~61_combout\);

-- Location: LCCOMB_X32_Y4_N6
\product_reg_inst|product_reg~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \product_reg_inst|product_reg~62_combout\ = (\product_reg_inst|product_reg\(0) & ((\control_unit_inst|curr_state.shift_state~q\ & (\product_reg_inst|product_reg~61_combout\)) # (!\control_unit_inst|curr_state.shift_state~q\ & 
-- ((\adder_inst|Add0~81_combout\))))) # (!\product_reg_inst|product_reg\(0) & (\product_reg_inst|product_reg~61_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \product_reg_inst|product_reg\(0),
	datab => \product_reg_inst|product_reg~61_combout\,
	datac => \adder_inst|Add0~81_combout\,
	datad => \control_unit_inst|curr_state.shift_state~q\,
	combout => \product_reg_inst|product_reg~62_combout\);

-- Location: FF_X32_Y4_N7
\product_reg_inst|product_reg[59]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \product_reg_inst|product_reg~62_combout\,
	sclr => \reset~input_o\,
	ena => \product_reg_inst|product_reg[33]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \product_reg_inst|product_reg\(59));

-- Location: LCCOMB_X32_Y4_N8
\adder_inst|Add0~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder_inst|Add0~80_combout\ = (\product_reg_inst|product_reg\(0) & (\adder_inst|Add0~78_combout\)) # (!\product_reg_inst|product_reg\(0) & ((\product_reg_inst|product_reg\(58))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder_inst|Add0~78_combout\,
	datab => \product_reg_inst|product_reg\(58),
	datac => \product_reg_inst|product_reg\(0),
	combout => \adder_inst|Add0~80_combout\);

-- Location: LCCOMB_X32_Y4_N4
\product_reg_inst|product_reg~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \product_reg_inst|product_reg~60_combout\ = (\control_unit_inst|curr_state.shift_state~q\ & (\product_reg_inst|product_reg\(59))) # (!\control_unit_inst|curr_state.shift_state~q\ & ((\adder_inst|Add0~80_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \product_reg_inst|product_reg\(59),
	datac => \adder_inst|Add0~80_combout\,
	datad => \control_unit_inst|curr_state.shift_state~q\,
	combout => \product_reg_inst|product_reg~60_combout\);

-- Location: FF_X32_Y4_N5
\product_reg_inst|product_reg[58]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \product_reg_inst|product_reg~60_combout\,
	sclr => \reset~input_o\,
	ena => \product_reg_inst|product_reg[33]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \product_reg_inst|product_reg\(58));

-- Location: LCCOMB_X32_Y4_N18
\product_reg_inst|product_reg~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \product_reg_inst|product_reg~59_combout\ = (\control_unit_inst|curr_state.shift_state~q\ & ((\product_reg_inst|product_reg\(58)))) # (!\control_unit_inst|curr_state.shift_state~q\ & (\adder_inst|Add0~77_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder_inst|Add0~77_combout\,
	datac => \product_reg_inst|product_reg\(58),
	datad => \control_unit_inst|curr_state.shift_state~q\,
	combout => \product_reg_inst|product_reg~59_combout\);

-- Location: FF_X32_Y4_N19
\product_reg_inst|product_reg[57]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \product_reg_inst|product_reg~59_combout\,
	sclr => \reset~input_o\,
	ena => \product_reg_inst|product_reg[33]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \product_reg_inst|product_reg\(57));

-- Location: LCCOMB_X32_Y4_N20
\adder_inst|Add0~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder_inst|Add0~74_combout\ = (\product_reg_inst|product_reg\(0) & ((\adder_inst|Add0~72_combout\))) # (!\product_reg_inst|product_reg\(0) & (\product_reg_inst|product_reg\(56)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \product_reg_inst|product_reg\(0),
	datab => \product_reg_inst|product_reg\(56),
	datad => \adder_inst|Add0~72_combout\,
	combout => \adder_inst|Add0~74_combout\);

-- Location: LCCOMB_X32_Y4_N24
\product_reg_inst|product_reg~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \product_reg_inst|product_reg~58_combout\ = (\control_unit_inst|curr_state.shift_state~q\ & (\product_reg_inst|product_reg\(57))) # (!\control_unit_inst|curr_state.shift_state~q\ & ((\adder_inst|Add0~74_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_unit_inst|curr_state.shift_state~q\,
	datab => \product_reg_inst|product_reg\(57),
	datac => \adder_inst|Add0~74_combout\,
	combout => \product_reg_inst|product_reg~58_combout\);

-- Location: FF_X32_Y4_N25
\product_reg_inst|product_reg[56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \product_reg_inst|product_reg~58_combout\,
	sclr => \reset~input_o\,
	ena => \product_reg_inst|product_reg[33]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \product_reg_inst|product_reg\(56));

-- Location: LCCOMB_X31_Y4_N6
\product_reg_inst|product_reg~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \product_reg_inst|product_reg~57_combout\ = (\control_unit_inst|curr_state.shift_state~q\ & ((\product_reg_inst|product_reg\(56)))) # (!\control_unit_inst|curr_state.shift_state~q\ & (\adder_inst|Add0~71_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder_inst|Add0~71_combout\,
	datac => \control_unit_inst|curr_state.shift_state~q\,
	datad => \product_reg_inst|product_reg\(56),
	combout => \product_reg_inst|product_reg~57_combout\);

-- Location: FF_X31_Y4_N7
\product_reg_inst|product_reg[55]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \product_reg_inst|product_reg~57_combout\,
	sclr => \reset~input_o\,
	ena => \product_reg_inst|product_reg[33]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \product_reg_inst|product_reg\(55));

-- Location: LCCOMB_X31_Y4_N12
\adder_inst|Add0~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder_inst|Add0~68_combout\ = (\product_reg_inst|product_reg\(0) & ((\adder_inst|Add0~66_combout\))) # (!\product_reg_inst|product_reg\(0) & (\product_reg_inst|product_reg\(54)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \product_reg_inst|product_reg\(0),
	datab => \product_reg_inst|product_reg\(54),
	datac => \adder_inst|Add0~66_combout\,
	combout => \adder_inst|Add0~68_combout\);

-- Location: LCCOMB_X31_Y4_N28
\product_reg_inst|product_reg~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \product_reg_inst|product_reg~56_combout\ = (\control_unit_inst|curr_state.shift_state~q\ & (\product_reg_inst|product_reg\(55))) # (!\control_unit_inst|curr_state.shift_state~q\ & ((\adder_inst|Add0~68_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \product_reg_inst|product_reg\(55),
	datac => \control_unit_inst|curr_state.shift_state~q\,
	datad => \adder_inst|Add0~68_combout\,
	combout => \product_reg_inst|product_reg~56_combout\);

-- Location: FF_X31_Y4_N29
\product_reg_inst|product_reg[54]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \product_reg_inst|product_reg~56_combout\,
	sclr => \reset~input_o\,
	ena => \product_reg_inst|product_reg[33]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \product_reg_inst|product_reg\(54));

-- Location: LCCOMB_X31_Y4_N10
\adder_inst|Add0~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder_inst|Add0~65_combout\ = (\product_reg_inst|product_reg\(0) & (\adder_inst|Add0~63_combout\)) # (!\product_reg_inst|product_reg\(0) & ((\product_reg_inst|product_reg\(53))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adder_inst|Add0~63_combout\,
	datac => \product_reg_inst|product_reg\(0),
	datad => \product_reg_inst|product_reg\(53),
	combout => \adder_inst|Add0~65_combout\);

-- Location: LCCOMB_X31_Y4_N18
\product_reg_inst|product_reg~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \product_reg_inst|product_reg~55_combout\ = (\control_unit_inst|curr_state.shift_state~q\ & (\product_reg_inst|product_reg\(54))) # (!\control_unit_inst|curr_state.shift_state~q\ & ((\adder_inst|Add0~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \product_reg_inst|product_reg\(54),
	datac => \control_unit_inst|curr_state.shift_state~q\,
	datad => \adder_inst|Add0~65_combout\,
	combout => \product_reg_inst|product_reg~55_combout\);

-- Location: FF_X31_Y4_N19
\product_reg_inst|product_reg[53]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \product_reg_inst|product_reg~55_combout\,
	sclr => \reset~input_o\,
	ena => \product_reg_inst|product_reg[33]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \product_reg_inst|product_reg\(53));

-- Location: LCCOMB_X31_Y4_N0
\product_reg_inst|product_reg~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \product_reg_inst|product_reg~54_combout\ = (\control_unit_inst|curr_state.shift_state~q\ & ((\product_reg_inst|product_reg\(53)))) # (!\control_unit_inst|curr_state.shift_state~q\ & (\adder_inst|Add0~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adder_inst|Add0~62_combout\,
	datac => \control_unit_inst|curr_state.shift_state~q\,
	datad => \product_reg_inst|product_reg\(53),
	combout => \product_reg_inst|product_reg~54_combout\);

-- Location: FF_X31_Y4_N1
\product_reg_inst|product_reg[52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \product_reg_inst|product_reg~54_combout\,
	sclr => \reset~input_o\,
	ena => \product_reg_inst|product_reg[33]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \product_reg_inst|product_reg\(52));

-- Location: LCCOMB_X31_Y4_N14
\product_reg_inst|product_reg~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \product_reg_inst|product_reg~53_combout\ = (\control_unit_inst|curr_state.shift_state~q\ & ((\product_reg_inst|product_reg\(52)))) # (!\control_unit_inst|curr_state.shift_state~q\ & (\adder_inst|Add0~59_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder_inst|Add0~59_combout\,
	datac => \control_unit_inst|curr_state.shift_state~q\,
	datad => \product_reg_inst|product_reg\(52),
	combout => \product_reg_inst|product_reg~53_combout\);

-- Location: FF_X31_Y4_N15
\product_reg_inst|product_reg[51]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \product_reg_inst|product_reg~53_combout\,
	sclr => \reset~input_o\,
	ena => \product_reg_inst|product_reg[33]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \product_reg_inst|product_reg\(51));

-- Location: LCCOMB_X31_Y4_N20
\product_reg_inst|product_reg~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \product_reg_inst|product_reg~52_combout\ = (\control_unit_inst|curr_state.shift_state~q\ & ((\product_reg_inst|product_reg\(51)))) # (!\control_unit_inst|curr_state.shift_state~q\ & (\adder_inst|Add0~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adder_inst|Add0~56_combout\,
	datac => \control_unit_inst|curr_state.shift_state~q\,
	datad => \product_reg_inst|product_reg\(51),
	combout => \product_reg_inst|product_reg~52_combout\);

-- Location: FF_X31_Y4_N21
\product_reg_inst|product_reg[50]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \product_reg_inst|product_reg~52_combout\,
	sclr => \reset~input_o\,
	ena => \product_reg_inst|product_reg[33]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \product_reg_inst|product_reg\(50));

-- Location: LCCOMB_X31_Y4_N26
\product_reg_inst|product_reg~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \product_reg_inst|product_reg~51_combout\ = (\control_unit_inst|curr_state.shift_state~q\ & ((\product_reg_inst|product_reg\(50)))) # (!\control_unit_inst|curr_state.shift_state~q\ & (\adder_inst|Add0~53_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder_inst|Add0~53_combout\,
	datac => \control_unit_inst|curr_state.shift_state~q\,
	datad => \product_reg_inst|product_reg\(50),
	combout => \product_reg_inst|product_reg~51_combout\);

-- Location: FF_X31_Y4_N27
\product_reg_inst|product_reg[49]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \product_reg_inst|product_reg~51_combout\,
	sclr => \reset~input_o\,
	ena => \product_reg_inst|product_reg[33]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \product_reg_inst|product_reg\(49));

-- Location: LCCOMB_X31_Y4_N24
\adder_inst|Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder_inst|Add0~50_combout\ = (\product_reg_inst|product_reg\(0) & ((\adder_inst|Add0~48_combout\))) # (!\product_reg_inst|product_reg\(0) & (\product_reg_inst|product_reg\(48)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \product_reg_inst|product_reg\(48),
	datac => \product_reg_inst|product_reg\(0),
	datad => \adder_inst|Add0~48_combout\,
	combout => \adder_inst|Add0~50_combout\);

-- Location: LCCOMB_X31_Y4_N8
\product_reg_inst|product_reg~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \product_reg_inst|product_reg~50_combout\ = (\control_unit_inst|curr_state.shift_state~q\ & (\product_reg_inst|product_reg\(49))) # (!\control_unit_inst|curr_state.shift_state~q\ & ((\adder_inst|Add0~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \product_reg_inst|product_reg\(49),
	datac => \control_unit_inst|curr_state.shift_state~q\,
	datad => \adder_inst|Add0~50_combout\,
	combout => \product_reg_inst|product_reg~50_combout\);

-- Location: FF_X31_Y4_N9
\product_reg_inst|product_reg[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \product_reg_inst|product_reg~50_combout\,
	sclr => \reset~input_o\,
	ena => \product_reg_inst|product_reg[33]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \product_reg_inst|product_reg\(48));

-- Location: LCCOMB_X36_Y5_N14
\adder_inst|Add0~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder_inst|Add0~47_combout\ = (\product_reg_inst|product_reg\(0) & (\adder_inst|Add0~45_combout\)) # (!\product_reg_inst|product_reg\(0) & ((\product_reg_inst|product_reg\(47))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adder_inst|Add0~45_combout\,
	datac => \product_reg_inst|product_reg\(0),
	datad => \product_reg_inst|product_reg\(47),
	combout => \adder_inst|Add0~47_combout\);

-- Location: LCCOMB_X36_Y5_N6
\product_reg_inst|product_reg~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \product_reg_inst|product_reg~49_combout\ = (\control_unit_inst|curr_state.shift_state~q\ & (\product_reg_inst|product_reg\(48))) # (!\control_unit_inst|curr_state.shift_state~q\ & ((\adder_inst|Add0~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \product_reg_inst|product_reg\(48),
	datab => \control_unit_inst|curr_state.shift_state~q\,
	datac => \adder_inst|Add0~47_combout\,
	combout => \product_reg_inst|product_reg~49_combout\);

-- Location: FF_X36_Y5_N7
\product_reg_inst|product_reg[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \product_reg_inst|product_reg~49_combout\,
	sclr => \reset~input_o\,
	ena => \product_reg_inst|product_reg[33]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \product_reg_inst|product_reg\(47));

-- Location: LCCOMB_X36_Y5_N4
\product_reg_inst|product_reg~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \product_reg_inst|product_reg~48_combout\ = (\control_unit_inst|curr_state.shift_state~q\ & ((\product_reg_inst|product_reg\(47)))) # (!\control_unit_inst|curr_state.shift_state~q\ & (\adder_inst|Add0~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder_inst|Add0~44_combout\,
	datac => \control_unit_inst|curr_state.shift_state~q\,
	datad => \product_reg_inst|product_reg\(47),
	combout => \product_reg_inst|product_reg~48_combout\);

-- Location: FF_X36_Y5_N5
\product_reg_inst|product_reg[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \product_reg_inst|product_reg~48_combout\,
	sclr => \reset~input_o\,
	ena => \product_reg_inst|product_reg[33]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \product_reg_inst|product_reg\(46));

-- Location: LCCOMB_X36_Y5_N18
\adder_inst|Add0~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder_inst|Add0~41_combout\ = (\product_reg_inst|product_reg\(0) & (\adder_inst|Add0~39_combout\)) # (!\product_reg_inst|product_reg\(0) & ((\product_reg_inst|product_reg\(45))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder_inst|Add0~39_combout\,
	datab => \product_reg_inst|product_reg\(0),
	datac => \product_reg_inst|product_reg\(45),
	combout => \adder_inst|Add0~41_combout\);

-- Location: LCCOMB_X36_Y5_N26
\product_reg_inst|product_reg~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \product_reg_inst|product_reg~47_combout\ = (\control_unit_inst|curr_state.shift_state~q\ & (\product_reg_inst|product_reg\(46))) # (!\control_unit_inst|curr_state.shift_state~q\ & ((\adder_inst|Add0~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \product_reg_inst|product_reg\(46),
	datac => \control_unit_inst|curr_state.shift_state~q\,
	datad => \adder_inst|Add0~41_combout\,
	combout => \product_reg_inst|product_reg~47_combout\);

-- Location: FF_X36_Y5_N27
\product_reg_inst|product_reg[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \product_reg_inst|product_reg~47_combout\,
	sclr => \reset~input_o\,
	ena => \product_reg_inst|product_reg[33]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \product_reg_inst|product_reg\(45));

-- Location: LCCOMB_X36_Y5_N16
\adder_inst|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder_inst|Add0~38_combout\ = (\product_reg_inst|product_reg\(0) & (\adder_inst|Add0~36_combout\)) # (!\product_reg_inst|product_reg\(0) & ((\product_reg_inst|product_reg\(44))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adder_inst|Add0~36_combout\,
	datac => \product_reg_inst|product_reg\(0),
	datad => \product_reg_inst|product_reg\(44),
	combout => \adder_inst|Add0~38_combout\);

-- Location: LCCOMB_X36_Y5_N24
\product_reg_inst|product_reg~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \product_reg_inst|product_reg~46_combout\ = (\control_unit_inst|curr_state.shift_state~q\ & (\product_reg_inst|product_reg\(45))) # (!\control_unit_inst|curr_state.shift_state~q\ & ((\adder_inst|Add0~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \product_reg_inst|product_reg\(45),
	datab => \adder_inst|Add0~38_combout\,
	datac => \control_unit_inst|curr_state.shift_state~q\,
	combout => \product_reg_inst|product_reg~46_combout\);

-- Location: FF_X36_Y5_N25
\product_reg_inst|product_reg[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \product_reg_inst|product_reg~46_combout\,
	sclr => \reset~input_o\,
	ena => \product_reg_inst|product_reg[33]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \product_reg_inst|product_reg\(44));

-- Location: LCCOMB_X36_Y5_N22
\product_reg_inst|product_reg~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \product_reg_inst|product_reg~45_combout\ = (\control_unit_inst|curr_state.shift_state~q\ & ((\product_reg_inst|product_reg\(44)))) # (!\control_unit_inst|curr_state.shift_state~q\ & (\adder_inst|Add0~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder_inst|Add0~35_combout\,
	datab => \product_reg_inst|product_reg\(44),
	datac => \control_unit_inst|curr_state.shift_state~q\,
	combout => \product_reg_inst|product_reg~45_combout\);

-- Location: FF_X36_Y5_N23
\product_reg_inst|product_reg[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \product_reg_inst|product_reg~45_combout\,
	sclr => \reset~input_o\,
	ena => \product_reg_inst|product_reg[33]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \product_reg_inst|product_reg\(43));

-- Location: LCCOMB_X36_Y5_N28
\adder_inst|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder_inst|Add0~32_combout\ = (\product_reg_inst|product_reg\(0) & (\adder_inst|Add0~30_combout\)) # (!\product_reg_inst|product_reg\(0) & ((\product_reg_inst|product_reg\(42))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adder_inst|Add0~30_combout\,
	datac => \product_reg_inst|product_reg\(0),
	datad => \product_reg_inst|product_reg\(42),
	combout => \adder_inst|Add0~32_combout\);

-- Location: LCCOMB_X36_Y5_N20
\product_reg_inst|product_reg~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \product_reg_inst|product_reg~44_combout\ = (\control_unit_inst|curr_state.shift_state~q\ & (\product_reg_inst|product_reg\(43))) # (!\control_unit_inst|curr_state.shift_state~q\ & ((\adder_inst|Add0~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \product_reg_inst|product_reg\(43),
	datab => \adder_inst|Add0~32_combout\,
	datac => \control_unit_inst|curr_state.shift_state~q\,
	combout => \product_reg_inst|product_reg~44_combout\);

-- Location: FF_X36_Y5_N21
\product_reg_inst|product_reg[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \product_reg_inst|product_reg~44_combout\,
	sclr => \reset~input_o\,
	ena => \product_reg_inst|product_reg[33]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \product_reg_inst|product_reg\(42));

-- Location: LCCOMB_X36_Y5_N2
\product_reg_inst|product_reg~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \product_reg_inst|product_reg~43_combout\ = (\control_unit_inst|curr_state.shift_state~q\ & ((\product_reg_inst|product_reg\(42)))) # (!\control_unit_inst|curr_state.shift_state~q\ & (\adder_inst|Add0~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder_inst|Add0~29_combout\,
	datab => \product_reg_inst|product_reg\(42),
	datac => \control_unit_inst|curr_state.shift_state~q\,
	combout => \product_reg_inst|product_reg~43_combout\);

-- Location: FF_X36_Y5_N3
\product_reg_inst|product_reg[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \product_reg_inst|product_reg~43_combout\,
	sclr => \reset~input_o\,
	ena => \product_reg_inst|product_reg[33]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \product_reg_inst|product_reg\(41));

-- Location: LCCOMB_X36_Y5_N8
\adder_inst|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder_inst|Add0~26_combout\ = (\product_reg_inst|product_reg\(0) & (\adder_inst|Add0~24_combout\)) # (!\product_reg_inst|product_reg\(0) & ((\product_reg_inst|product_reg\(40))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder_inst|Add0~24_combout\,
	datac => \product_reg_inst|product_reg\(0),
	datad => \product_reg_inst|product_reg\(40),
	combout => \adder_inst|Add0~26_combout\);

-- Location: LCCOMB_X36_Y5_N0
\product_reg_inst|product_reg~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \product_reg_inst|product_reg~42_combout\ = (\control_unit_inst|curr_state.shift_state~q\ & (\product_reg_inst|product_reg\(41))) # (!\control_unit_inst|curr_state.shift_state~q\ & ((\adder_inst|Add0~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \product_reg_inst|product_reg\(41),
	datac => \control_unit_inst|curr_state.shift_state~q\,
	datad => \adder_inst|Add0~26_combout\,
	combout => \product_reg_inst|product_reg~42_combout\);

-- Location: FF_X36_Y5_N1
\product_reg_inst|product_reg[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \product_reg_inst|product_reg~42_combout\,
	sclr => \reset~input_o\,
	ena => \product_reg_inst|product_reg[33]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \product_reg_inst|product_reg\(40));

-- Location: LCCOMB_X43_Y4_N30
\product_reg_inst|product_reg~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \product_reg_inst|product_reg~41_combout\ = (\control_unit_inst|curr_state.shift_state~q\ & ((\product_reg_inst|product_reg\(40)))) # (!\control_unit_inst|curr_state.shift_state~q\ & (\adder_inst|Add0~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder_inst|Add0~23_combout\,
	datab => \product_reg_inst|product_reg\(40),
	datac => \control_unit_inst|curr_state.shift_state~q\,
	combout => \product_reg_inst|product_reg~41_combout\);

-- Location: FF_X43_Y4_N31
\product_reg_inst|product_reg[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \product_reg_inst|product_reg~41_combout\,
	sclr => \reset~input_o\,
	ena => \product_reg_inst|product_reg[33]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \product_reg_inst|product_reg\(39));

-- Location: LCCOMB_X43_Y4_N4
\adder_inst|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder_inst|Add0~20_combout\ = (\product_reg_inst|product_reg\(0) & (\adder_inst|Add0~18_combout\)) # (!\product_reg_inst|product_reg\(0) & ((\product_reg_inst|product_reg\(38))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \product_reg_inst|product_reg\(0),
	datac => \adder_inst|Add0~18_combout\,
	datad => \product_reg_inst|product_reg\(38),
	combout => \adder_inst|Add0~20_combout\);

-- Location: LCCOMB_X43_Y4_N28
\product_reg_inst|product_reg~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \product_reg_inst|product_reg~40_combout\ = (\control_unit_inst|curr_state.shift_state~q\ & (\product_reg_inst|product_reg\(39))) # (!\control_unit_inst|curr_state.shift_state~q\ & ((\adder_inst|Add0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \product_reg_inst|product_reg\(39),
	datab => \control_unit_inst|curr_state.shift_state~q\,
	datac => \adder_inst|Add0~20_combout\,
	combout => \product_reg_inst|product_reg~40_combout\);

-- Location: FF_X43_Y4_N29
\product_reg_inst|product_reg[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \product_reg_inst|product_reg~40_combout\,
	sclr => \reset~input_o\,
	ena => \product_reg_inst|product_reg[33]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \product_reg_inst|product_reg\(38));

-- Location: LCCOMB_X43_Y4_N10
\product_reg_inst|product_reg~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \product_reg_inst|product_reg~39_combout\ = (\control_unit_inst|curr_state.shift_state~q\ & ((\product_reg_inst|product_reg\(38)))) # (!\control_unit_inst|curr_state.shift_state~q\ & (\adder_inst|Add0~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder_inst|Add0~17_combout\,
	datab => \product_reg_inst|product_reg\(38),
	datac => \control_unit_inst|curr_state.shift_state~q\,
	combout => \product_reg_inst|product_reg~39_combout\);

-- Location: FF_X43_Y4_N11
\product_reg_inst|product_reg[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \product_reg_inst|product_reg~39_combout\,
	sclr => \reset~input_o\,
	ena => \product_reg_inst|product_reg[33]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \product_reg_inst|product_reg\(37));

-- Location: LCCOMB_X43_Y4_N8
\adder_inst|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder_inst|Add0~14_combout\ = (\product_reg_inst|product_reg\(0) & (\adder_inst|Add0~12_combout\)) # (!\product_reg_inst|product_reg\(0) & ((\product_reg_inst|product_reg\(36))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder_inst|Add0~12_combout\,
	datab => \product_reg_inst|product_reg\(0),
	datad => \product_reg_inst|product_reg\(36),
	combout => \adder_inst|Add0~14_combout\);

-- Location: LCCOMB_X43_Y4_N0
\product_reg_inst|product_reg~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \product_reg_inst|product_reg~38_combout\ = (\control_unit_inst|curr_state.shift_state~q\ & (\product_reg_inst|product_reg\(37))) # (!\control_unit_inst|curr_state.shift_state~q\ & ((\adder_inst|Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \product_reg_inst|product_reg\(37),
	datab => \control_unit_inst|curr_state.shift_state~q\,
	datac => \adder_inst|Add0~14_combout\,
	combout => \product_reg_inst|product_reg~38_combout\);

-- Location: FF_X43_Y4_N1
\product_reg_inst|product_reg[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \product_reg_inst|product_reg~38_combout\,
	sclr => \reset~input_o\,
	ena => \product_reg_inst|product_reg[33]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \product_reg_inst|product_reg\(36));

-- Location: LCCOMB_X36_Y4_N14
\product_reg_inst|product_reg~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \product_reg_inst|product_reg~37_combout\ = (\control_unit_inst|curr_state.shift_state~q\ & ((\product_reg_inst|product_reg\(36)))) # (!\control_unit_inst|curr_state.shift_state~q\ & (\adder_inst|Add0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adder_inst|Add0~11_combout\,
	datac => \product_reg_inst|product_reg\(36),
	datad => \control_unit_inst|curr_state.shift_state~q\,
	combout => \product_reg_inst|product_reg~37_combout\);

-- Location: FF_X36_Y4_N15
\product_reg_inst|product_reg[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \product_reg_inst|product_reg~37_combout\,
	sclr => \reset~input_o\,
	ena => \product_reg_inst|product_reg[33]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \product_reg_inst|product_reg\(35));

-- Location: LCCOMB_X36_Y4_N4
\product_reg_inst|product_reg~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \product_reg_inst|product_reg~36_combout\ = (\control_unit_inst|curr_state.shift_state~q\ & ((\product_reg_inst|product_reg\(35)))) # (!\control_unit_inst|curr_state.shift_state~q\ & (\adder_inst|Add0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adder_inst|Add0~8_combout\,
	datac => \product_reg_inst|product_reg\(35),
	datad => \control_unit_inst|curr_state.shift_state~q\,
	combout => \product_reg_inst|product_reg~36_combout\);

-- Location: FF_X36_Y4_N5
\product_reg_inst|product_reg[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \product_reg_inst|product_reg~36_combout\,
	sclr => \reset~input_o\,
	ena => \product_reg_inst|product_reg[33]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \product_reg_inst|product_reg\(34));

-- Location: LCCOMB_X36_Y4_N18
\product_reg_inst|product_reg~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \product_reg_inst|product_reg~35_combout\ = (\control_unit_inst|curr_state.shift_state~q\ & ((\product_reg_inst|product_reg\(34)))) # (!\control_unit_inst|curr_state.shift_state~q\ & (\adder_inst|Add0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder_inst|Add0~5_combout\,
	datac => \product_reg_inst|product_reg\(34),
	datad => \control_unit_inst|curr_state.shift_state~q\,
	combout => \product_reg_inst|product_reg~35_combout\);

-- Location: FF_X36_Y4_N19
\product_reg_inst|product_reg[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \product_reg_inst|product_reg~35_combout\,
	sclr => \reset~input_o\,
	ena => \product_reg_inst|product_reg[33]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \product_reg_inst|product_reg\(33));

-- Location: LCCOMB_X36_Y4_N16
\product_reg_inst|product_reg~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \product_reg_inst|product_reg~33_combout\ = (\control_unit_inst|curr_state.shift_state~q\ & ((\product_reg_inst|product_reg\(33)))) # (!\control_unit_inst|curr_state.shift_state~q\ & (\adder_inst|Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control_unit_inst|curr_state.shift_state~q\,
	datab => \adder_inst|Add0~2_combout\,
	datad => \product_reg_inst|product_reg\(33),
	combout => \product_reg_inst|product_reg~33_combout\);

-- Location: FF_X36_Y4_N17
\product_reg_inst|product_reg[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \product_reg_inst|product_reg~33_combout\,
	sclr => \reset~input_o\,
	ena => \product_reg_inst|product_reg[33]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \product_reg_inst|product_reg\(32));

-- Location: LCCOMB_X60_Y4_N22
\product_reg_inst|product_reg~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \product_reg_inst|product_reg~32_combout\ = (!\reset~input_o\ & \product_reg_inst|product_reg\(32))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \product_reg_inst|product_reg\(32),
	combout => \product_reg_inst|product_reg~32_combout\);

-- Location: LCCOMB_X60_Y4_N24
\product_reg_inst|product_reg[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \product_reg_inst|product_reg[0]~1_combout\ = (\control_unit_inst|curr_state.shift_state~q\) # (\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \control_unit_inst|curr_state.shift_state~q\,
	datad => \reset~input_o\,
	combout => \product_reg_inst|product_reg[0]~1_combout\);

-- Location: FF_X60_Y4_N23
\product_reg_inst|product_reg[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \product_reg_inst|product_reg~32_combout\,
	ena => \product_reg_inst|product_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \product_reg_inst|product_reg\(31));

-- Location: LCCOMB_X60_Y4_N20
\product_reg_inst|product_reg~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \product_reg_inst|product_reg~31_combout\ = (\product_reg_inst|product_reg\(31) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \product_reg_inst|product_reg\(31),
	datad => \reset~input_o\,
	combout => \product_reg_inst|product_reg~31_combout\);

-- Location: FF_X60_Y4_N21
\product_reg_inst|product_reg[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \product_reg_inst|product_reg~31_combout\,
	ena => \product_reg_inst|product_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \product_reg_inst|product_reg\(30));

-- Location: LCCOMB_X60_Y4_N2
\product_reg_inst|product_reg~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \product_reg_inst|product_reg~30_combout\ = (!\reset~input_o\ & \product_reg_inst|product_reg\(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \product_reg_inst|product_reg\(30),
	combout => \product_reg_inst|product_reg~30_combout\);

-- Location: FF_X60_Y4_N3
\product_reg_inst|product_reg[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \product_reg_inst|product_reg~30_combout\,
	ena => \product_reg_inst|product_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \product_reg_inst|product_reg\(29));

-- Location: LCCOMB_X60_Y4_N0
\product_reg_inst|product_reg~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \product_reg_inst|product_reg~29_combout\ = (!\reset~input_o\ & \product_reg_inst|product_reg\(29))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \product_reg_inst|product_reg\(29),
	combout => \product_reg_inst|product_reg~29_combout\);

-- Location: FF_X60_Y4_N1
\product_reg_inst|product_reg[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \product_reg_inst|product_reg~29_combout\,
	ena => \product_reg_inst|product_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \product_reg_inst|product_reg\(28));

-- Location: LCCOMB_X60_Y4_N6
\product_reg_inst|product_reg~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \product_reg_inst|product_reg~28_combout\ = (!\reset~input_o\ & \product_reg_inst|product_reg\(28))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \product_reg_inst|product_reg\(28),
	combout => \product_reg_inst|product_reg~28_combout\);

-- Location: FF_X60_Y4_N7
\product_reg_inst|product_reg[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \product_reg_inst|product_reg~28_combout\,
	ena => \product_reg_inst|product_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \product_reg_inst|product_reg\(27));

-- Location: LCCOMB_X60_Y4_N28
\product_reg_inst|product_reg~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \product_reg_inst|product_reg~27_combout\ = (!\reset~input_o\ & \product_reg_inst|product_reg\(27))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \product_reg_inst|product_reg\(27),
	combout => \product_reg_inst|product_reg~27_combout\);

-- Location: FF_X60_Y4_N29
\product_reg_inst|product_reg[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \product_reg_inst|product_reg~27_combout\,
	ena => \product_reg_inst|product_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \product_reg_inst|product_reg\(26));

-- Location: LCCOMB_X60_Y4_N10
\product_reg_inst|product_reg~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \product_reg_inst|product_reg~26_combout\ = (!\reset~input_o\ & \product_reg_inst|product_reg\(26))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \product_reg_inst|product_reg\(26),
	combout => \product_reg_inst|product_reg~26_combout\);

-- Location: FF_X60_Y4_N11
\product_reg_inst|product_reg[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \product_reg_inst|product_reg~26_combout\,
	ena => \product_reg_inst|product_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \product_reg_inst|product_reg\(25));

-- Location: LCCOMB_X60_Y4_N16
\product_reg_inst|product_reg~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \product_reg_inst|product_reg~25_combout\ = (!\reset~input_o\ & \product_reg_inst|product_reg\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \product_reg_inst|product_reg\(25),
	combout => \product_reg_inst|product_reg~25_combout\);

-- Location: FF_X60_Y4_N17
\product_reg_inst|product_reg[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \product_reg_inst|product_reg~25_combout\,
	ena => \product_reg_inst|product_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \product_reg_inst|product_reg\(24));

-- Location: LCCOMB_X66_Y4_N22
\product_reg_inst|product_reg~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \product_reg_inst|product_reg~24_combout\ = (!\reset~input_o\ & \product_reg_inst|product_reg\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \product_reg_inst|product_reg\(24),
	combout => \product_reg_inst|product_reg~24_combout\);

-- Location: FF_X66_Y4_N23
\product_reg_inst|product_reg[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \product_reg_inst|product_reg~24_combout\,
	ena => \product_reg_inst|product_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \product_reg_inst|product_reg\(23));

-- Location: LCCOMB_X66_Y4_N20
\product_reg_inst|product_reg~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \product_reg_inst|product_reg~23_combout\ = (!\reset~input_o\ & \product_reg_inst|product_reg\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \product_reg_inst|product_reg\(23),
	combout => \product_reg_inst|product_reg~23_combout\);

-- Location: FF_X66_Y4_N21
\product_reg_inst|product_reg[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \product_reg_inst|product_reg~23_combout\,
	ena => \product_reg_inst|product_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \product_reg_inst|product_reg\(22));

-- Location: LCCOMB_X66_Y4_N2
\product_reg_inst|product_reg~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \product_reg_inst|product_reg~22_combout\ = (\product_reg_inst|product_reg\(22) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \product_reg_inst|product_reg\(22),
	datac => \reset~input_o\,
	combout => \product_reg_inst|product_reg~22_combout\);

-- Location: FF_X66_Y4_N3
\product_reg_inst|product_reg[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \product_reg_inst|product_reg~22_combout\,
	ena => \product_reg_inst|product_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \product_reg_inst|product_reg\(21));

-- Location: LCCOMB_X66_Y4_N16
\product_reg_inst|product_reg~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \product_reg_inst|product_reg~21_combout\ = (\product_reg_inst|product_reg\(21) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \product_reg_inst|product_reg\(21),
	datac => \reset~input_o\,
	combout => \product_reg_inst|product_reg~21_combout\);

-- Location: FF_X66_Y4_N17
\product_reg_inst|product_reg[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \product_reg_inst|product_reg~21_combout\,
	ena => \product_reg_inst|product_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \product_reg_inst|product_reg\(20));

-- Location: LCCOMB_X66_Y4_N6
\product_reg_inst|product_reg~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \product_reg_inst|product_reg~20_combout\ = (\product_reg_inst|product_reg\(20) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \product_reg_inst|product_reg\(20),
	datac => \reset~input_o\,
	combout => \product_reg_inst|product_reg~20_combout\);

-- Location: FF_X66_Y4_N7
\product_reg_inst|product_reg[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \product_reg_inst|product_reg~20_combout\,
	ena => \product_reg_inst|product_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \product_reg_inst|product_reg\(19));

-- Location: LCCOMB_X66_Y4_N12
\product_reg_inst|product_reg~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \product_reg_inst|product_reg~19_combout\ = (!\reset~input_o\ & \product_reg_inst|product_reg\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datad => \product_reg_inst|product_reg\(19),
	combout => \product_reg_inst|product_reg~19_combout\);

-- Location: FF_X66_Y4_N13
\product_reg_inst|product_reg[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \product_reg_inst|product_reg~19_combout\,
	ena => \product_reg_inst|product_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \product_reg_inst|product_reg\(18));

-- Location: LCCOMB_X66_Y4_N18
\product_reg_inst|product_reg~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \product_reg_inst|product_reg~18_combout\ = (\product_reg_inst|product_reg\(18) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \product_reg_inst|product_reg\(18),
	datac => \reset~input_o\,
	combout => \product_reg_inst|product_reg~18_combout\);

-- Location: FF_X66_Y4_N19
\product_reg_inst|product_reg[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \product_reg_inst|product_reg~18_combout\,
	ena => \product_reg_inst|product_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \product_reg_inst|product_reg\(17));

-- Location: LCCOMB_X66_Y4_N8
\product_reg_inst|product_reg~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \product_reg_inst|product_reg~17_combout\ = (\product_reg_inst|product_reg\(17) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \product_reg_inst|product_reg\(17),
	datac => \reset~input_o\,
	combout => \product_reg_inst|product_reg~17_combout\);

-- Location: FF_X66_Y4_N9
\product_reg_inst|product_reg[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \product_reg_inst|product_reg~17_combout\,
	ena => \product_reg_inst|product_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \product_reg_inst|product_reg\(16));

-- Location: LCCOMB_X66_Y4_N14
\product_reg_inst|product_reg~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \product_reg_inst|product_reg~16_combout\ = (!\reset~input_o\ & \product_reg_inst|product_reg\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \product_reg_inst|product_reg\(16),
	combout => \product_reg_inst|product_reg~16_combout\);

-- Location: FF_X66_Y4_N15
\product_reg_inst|product_reg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \product_reg_inst|product_reg~16_combout\,
	ena => \product_reg_inst|product_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \product_reg_inst|product_reg\(15));

-- Location: LCCOMB_X66_Y4_N4
\product_reg_inst|product_reg~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \product_reg_inst|product_reg~15_combout\ = (!\reset~input_o\ & \product_reg_inst|product_reg\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \product_reg_inst|product_reg\(15),
	combout => \product_reg_inst|product_reg~15_combout\);

-- Location: FF_X66_Y4_N5
\product_reg_inst|product_reg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \product_reg_inst|product_reg~15_combout\,
	ena => \product_reg_inst|product_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \product_reg_inst|product_reg\(14));

-- Location: LCCOMB_X66_Y4_N10
\product_reg_inst|product_reg~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \product_reg_inst|product_reg~14_combout\ = (!\reset~input_o\ & \product_reg_inst|product_reg\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \product_reg_inst|product_reg\(14),
	combout => \product_reg_inst|product_reg~14_combout\);

-- Location: FF_X66_Y4_N11
\product_reg_inst|product_reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \product_reg_inst|product_reg~14_combout\,
	ena => \product_reg_inst|product_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \product_reg_inst|product_reg\(13));

-- Location: LCCOMB_X66_Y4_N24
\product_reg_inst|product_reg~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \product_reg_inst|product_reg~13_combout\ = (\product_reg_inst|product_reg\(13) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \product_reg_inst|product_reg\(13),
	datac => \reset~input_o\,
	combout => \product_reg_inst|product_reg~13_combout\);

-- Location: FF_X66_Y4_N25
\product_reg_inst|product_reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \product_reg_inst|product_reg~13_combout\,
	ena => \product_reg_inst|product_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \product_reg_inst|product_reg\(12));

-- Location: LCCOMB_X66_Y4_N30
\product_reg_inst|product_reg~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \product_reg_inst|product_reg~12_combout\ = (\product_reg_inst|product_reg\(12) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \product_reg_inst|product_reg\(12),
	datac => \reset~input_o\,
	combout => \product_reg_inst|product_reg~12_combout\);

-- Location: FF_X66_Y4_N31
\product_reg_inst|product_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \product_reg_inst|product_reg~12_combout\,
	ena => \product_reg_inst|product_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \product_reg_inst|product_reg\(11));

-- Location: LCCOMB_X66_Y4_N28
\product_reg_inst|product_reg~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \product_reg_inst|product_reg~11_combout\ = (\product_reg_inst|product_reg\(11) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \product_reg_inst|product_reg\(11),
	datac => \reset~input_o\,
	combout => \product_reg_inst|product_reg~11_combout\);

-- Location: FF_X66_Y4_N29
\product_reg_inst|product_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \product_reg_inst|product_reg~11_combout\,
	ena => \product_reg_inst|product_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \product_reg_inst|product_reg\(10));

-- Location: LCCOMB_X66_Y4_N26
\product_reg_inst|product_reg~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \product_reg_inst|product_reg~10_combout\ = (\product_reg_inst|product_reg\(10) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \product_reg_inst|product_reg\(10),
	datac => \reset~input_o\,
	combout => \product_reg_inst|product_reg~10_combout\);

-- Location: FF_X66_Y4_N27
\product_reg_inst|product_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \product_reg_inst|product_reg~10_combout\,
	ena => \product_reg_inst|product_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \product_reg_inst|product_reg\(9));

-- Location: LCCOMB_X66_Y4_N0
\product_reg_inst|product_reg~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \product_reg_inst|product_reg~9_combout\ = (!\reset~input_o\ & \product_reg_inst|product_reg\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \product_reg_inst|product_reg\(9),
	combout => \product_reg_inst|product_reg~9_combout\);

-- Location: FF_X66_Y4_N1
\product_reg_inst|product_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \product_reg_inst|product_reg~9_combout\,
	ena => \product_reg_inst|product_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \product_reg_inst|product_reg\(8));

-- Location: LCCOMB_X43_Y4_N22
\product_reg_inst|product_reg~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \product_reg_inst|product_reg~8_combout\ = (\product_reg_inst|product_reg\(8) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \product_reg_inst|product_reg\(8),
	datad => \reset~input_o\,
	combout => \product_reg_inst|product_reg~8_combout\);

-- Location: FF_X43_Y4_N23
\product_reg_inst|product_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \product_reg_inst|product_reg~8_combout\,
	ena => \product_reg_inst|product_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \product_reg_inst|product_reg\(7));

-- Location: LCCOMB_X43_Y4_N20
\product_reg_inst|product_reg~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \product_reg_inst|product_reg~7_combout\ = (\product_reg_inst|product_reg\(7) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \product_reg_inst|product_reg\(7),
	datad => \reset~input_o\,
	combout => \product_reg_inst|product_reg~7_combout\);

-- Location: FF_X43_Y4_N21
\product_reg_inst|product_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \product_reg_inst|product_reg~7_combout\,
	ena => \product_reg_inst|product_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \product_reg_inst|product_reg\(6));

-- Location: LCCOMB_X43_Y4_N18
\product_reg_inst|product_reg~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \product_reg_inst|product_reg~6_combout\ = (!\reset~input_o\ & \product_reg_inst|product_reg\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datad => \product_reg_inst|product_reg\(6),
	combout => \product_reg_inst|product_reg~6_combout\);

-- Location: FF_X43_Y4_N19
\product_reg_inst|product_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \product_reg_inst|product_reg~6_combout\,
	ena => \product_reg_inst|product_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \product_reg_inst|product_reg\(5));

-- Location: LCCOMB_X43_Y4_N24
\product_reg_inst|product_reg~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \product_reg_inst|product_reg~5_combout\ = (!\reset~input_o\ & \product_reg_inst|product_reg\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datad => \product_reg_inst|product_reg\(5),
	combout => \product_reg_inst|product_reg~5_combout\);

-- Location: FF_X43_Y4_N25
\product_reg_inst|product_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \product_reg_inst|product_reg~5_combout\,
	ena => \product_reg_inst|product_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \product_reg_inst|product_reg\(4));

-- Location: LCCOMB_X43_Y4_N14
\product_reg_inst|product_reg~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \product_reg_inst|product_reg~4_combout\ = (!\reset~input_o\ & \product_reg_inst|product_reg\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datad => \product_reg_inst|product_reg\(4),
	combout => \product_reg_inst|product_reg~4_combout\);

-- Location: FF_X43_Y4_N15
\product_reg_inst|product_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \product_reg_inst|product_reg~4_combout\,
	ena => \product_reg_inst|product_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \product_reg_inst|product_reg\(3));

-- Location: LCCOMB_X43_Y4_N12
\product_reg_inst|product_reg~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \product_reg_inst|product_reg~3_combout\ = (\product_reg_inst|product_reg\(3) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \product_reg_inst|product_reg\(3),
	datad => \reset~input_o\,
	combout => \product_reg_inst|product_reg~3_combout\);

-- Location: FF_X43_Y4_N13
\product_reg_inst|product_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \product_reg_inst|product_reg~3_combout\,
	ena => \product_reg_inst|product_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \product_reg_inst|product_reg\(2));

-- Location: LCCOMB_X43_Y4_N2
\product_reg_inst|product_reg~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \product_reg_inst|product_reg~2_combout\ = (!\reset~input_o\ & \product_reg_inst|product_reg\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datad => \product_reg_inst|product_reg\(2),
	combout => \product_reg_inst|product_reg~2_combout\);

-- Location: FF_X43_Y4_N3
\product_reg_inst|product_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \product_reg_inst|product_reg~2_combout\,
	ena => \product_reg_inst|product_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \product_reg_inst|product_reg\(1));

-- Location: LCCOMB_X43_Y4_N16
\product_reg_inst|product_reg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \product_reg_inst|product_reg~0_combout\ = (!\reset~input_o\ & \product_reg_inst|product_reg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datad => \product_reg_inst|product_reg\(1),
	combout => \product_reg_inst|product_reg~0_combout\);

-- Location: FF_X43_Y4_N17
\product_reg_inst|product_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \product_reg_inst|product_reg~0_combout\,
	ena => \product_reg_inst|product_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \product_reg_inst|product_reg\(0));

-- Location: LCCOMB_X32_Y4_N2
\adder_inst|Add0~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder_inst|Add0~83_combout\ = (\product_reg_inst|product_reg\(0) & (\adder_inst|Add0~81_combout\)) # (!\product_reg_inst|product_reg\(0) & ((\product_reg_inst|product_reg\(59))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder_inst|Add0~81_combout\,
	datac => \product_reg_inst|product_reg\(0),
	datad => \product_reg_inst|product_reg\(59),
	combout => \adder_inst|Add0~83_combout\);

-- Location: LCCOMB_X32_Y4_N28
\adder_inst|Add0~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder_inst|Add0~86_combout\ = (\product_reg_inst|product_reg\(0) & ((\adder_inst|Add0~84_combout\))) # (!\product_reg_inst|product_reg\(0) & (\product_reg_inst|product_reg\(60)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \product_reg_inst|product_reg\(0),
	datab => \product_reg_inst|product_reg\(60),
	datad => \adder_inst|Add0~84_combout\,
	combout => \adder_inst|Add0~86_combout\);

-- Location: LCCOMB_X32_Y4_N30
\adder_inst|Add0~89\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder_inst|Add0~89_combout\ = (\product_reg_inst|product_reg\(0) & ((\adder_inst|Add0~87_combout\))) # (!\product_reg_inst|product_reg\(0) & (\product_reg_inst|product_reg\(61)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \product_reg_inst|product_reg\(61),
	datac => \product_reg_inst|product_reg\(0),
	datad => \adder_inst|Add0~87_combout\,
	combout => \adder_inst|Add0~89_combout\);

-- Location: LCCOMB_X36_Y4_N28
\adder_inst|Add0~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder_inst|Add0~92_combout\ = (\product_reg_inst|product_reg\(0) & (\adder_inst|Add0~90_combout\)) # (!\product_reg_inst|product_reg\(0) & ((\product_reg_inst|product_reg\(62))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adder_inst|Add0~90_combout\,
	datac => \product_reg_inst|product_reg\(62),
	datad => \product_reg_inst|product_reg\(0),
	combout => \adder_inst|Add0~92_combout\);

-- Location: LCCOMB_X36_Y4_N6
\adder_inst|Add0~95\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \adder_inst|Add0~95_combout\ = (\product_reg_inst|product_reg\(0) & (\adder_inst|Add0~93_combout\)) # (!\product_reg_inst|product_reg\(0) & ((\product_reg_inst|product_reg\(63))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \adder_inst|Add0~93_combout\,
	datac => \product_reg_inst|product_reg\(63),
	datad => \product_reg_inst|product_reg\(0),
	combout => \adder_inst|Add0~95_combout\);

-- Location: IOIBUF_X51_Y54_N22
\multiplier[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_multiplier(0),
	o => \multiplier[0]~input_o\);

-- Location: IOIBUF_X29_Y39_N15
\multiplier[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_multiplier(1),
	o => \multiplier[1]~input_o\);

-- Location: IOIBUF_X46_Y54_N8
\multiplier[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_multiplier(2),
	o => \multiplier[2]~input_o\);

-- Location: IOIBUF_X78_Y33_N8
\multiplier[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_multiplier(3),
	o => \multiplier[3]~input_o\);

-- Location: IOIBUF_X78_Y40_N1
\multiplier[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_multiplier(4),
	o => \multiplier[4]~input_o\);

-- Location: IOIBUF_X60_Y54_N8
\multiplier[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_multiplier(5),
	o => \multiplier[5]~input_o\);

-- Location: IOIBUF_X0_Y30_N8
\multiplier[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_multiplier(6),
	o => \multiplier[6]~input_o\);

-- Location: IOIBUF_X0_Y35_N22
\multiplier[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_multiplier(7),
	o => \multiplier[7]~input_o\);

-- Location: IOIBUF_X78_Y35_N1
\multiplier[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_multiplier(8),
	o => \multiplier[8]~input_o\);

-- Location: IOIBUF_X22_Y39_N22
\multiplier[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_multiplier(9),
	o => \multiplier[9]~input_o\);

-- Location: IOIBUF_X60_Y54_N29
\multiplier[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_multiplier(10),
	o => \multiplier[10]~input_o\);

-- Location: IOIBUF_X0_Y3_N8
\multiplier[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_multiplier(11),
	o => \multiplier[11]~input_o\);

-- Location: IOIBUF_X78_Y35_N22
\multiplier[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_multiplier(12),
	o => \multiplier[12]~input_o\);

-- Location: IOIBUF_X49_Y54_N29
\multiplier[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_multiplier(13),
	o => \multiplier[13]~input_o\);

-- Location: IOIBUF_X0_Y35_N1
\multiplier[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_multiplier(14),
	o => \multiplier[14]~input_o\);

-- Location: IOIBUF_X58_Y54_N15
\multiplier[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_multiplier(15),
	o => \multiplier[15]~input_o\);

-- Location: IOIBUF_X56_Y54_N8
\multiplier[16]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_multiplier(16),
	o => \multiplier[16]~input_o\);

-- Location: IOIBUF_X46_Y54_N22
\multiplier[17]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_multiplier(17),
	o => \multiplier[17]~input_o\);

-- Location: IOIBUF_X60_Y54_N15
\multiplier[18]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_multiplier(18),
	o => \multiplier[18]~input_o\);

-- Location: IOIBUF_X0_Y23_N8
\multiplier[19]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_multiplier(19),
	o => \multiplier[19]~input_o\);

-- Location: IOIBUF_X78_Y33_N1
\multiplier[20]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_multiplier(20),
	o => \multiplier[20]~input_o\);

-- Location: IOIBUF_X78_Y34_N15
\multiplier[21]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_multiplier(21),
	o => \multiplier[21]~input_o\);

-- Location: IOIBUF_X60_Y54_N1
\multiplier[22]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_multiplier(22),
	o => \multiplier[22]~input_o\);

-- Location: IOIBUF_X78_Y40_N8
\multiplier[23]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_multiplier(23),
	o => \multiplier[23]~input_o\);

-- Location: IOIBUF_X0_Y36_N1
\multiplier[24]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_multiplier(24),
	o => \multiplier[24]~input_o\);

-- Location: IOIBUF_X0_Y27_N8
\multiplier[25]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_multiplier(25),
	o => \multiplier[25]~input_o\);

-- Location: IOIBUF_X26_Y39_N8
\multiplier[26]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_multiplier(26),
	o => \multiplier[26]~input_o\);

-- Location: IOIBUF_X0_Y28_N1
\multiplier[27]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_multiplier(27),
	o => \multiplier[27]~input_o\);

-- Location: IOIBUF_X0_Y27_N22
\multiplier[28]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_multiplier(28),
	o => \multiplier[28]~input_o\);

-- Location: IOIBUF_X51_Y54_N8
\multiplier[29]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_multiplier(29),
	o => \multiplier[29]~input_o\);

-- Location: IOIBUF_X78_Y45_N15
\multiplier[30]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_multiplier(30),
	o => \multiplier[30]~input_o\);

-- Location: IOIBUF_X60_Y54_N22
\multiplier[31]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_multiplier(31),
	o => \multiplier[31]~input_o\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_product(0) <= \product[0]~output_o\;

ww_product(1) <= \product[1]~output_o\;

ww_product(2) <= \product[2]~output_o\;

ww_product(3) <= \product[3]~output_o\;

ww_product(4) <= \product[4]~output_o\;

ww_product(5) <= \product[5]~output_o\;

ww_product(6) <= \product[6]~output_o\;

ww_product(7) <= \product[7]~output_o\;

ww_product(8) <= \product[8]~output_o\;

ww_product(9) <= \product[9]~output_o\;

ww_product(10) <= \product[10]~output_o\;

ww_product(11) <= \product[11]~output_o\;

ww_product(12) <= \product[12]~output_o\;

ww_product(13) <= \product[13]~output_o\;

ww_product(14) <= \product[14]~output_o\;

ww_product(15) <= \product[15]~output_o\;

ww_product(16) <= \product[16]~output_o\;

ww_product(17) <= \product[17]~output_o\;

ww_product(18) <= \product[18]~output_o\;

ww_product(19) <= \product[19]~output_o\;

ww_product(20) <= \product[20]~output_o\;

ww_product(21) <= \product[21]~output_o\;

ww_product(22) <= \product[22]~output_o\;

ww_product(23) <= \product[23]~output_o\;

ww_product(24) <= \product[24]~output_o\;

ww_product(25) <= \product[25]~output_o\;

ww_product(26) <= \product[26]~output_o\;

ww_product(27) <= \product[27]~output_o\;

ww_product(28) <= \product[28]~output_o\;

ww_product(29) <= \product[29]~output_o\;

ww_product(30) <= \product[30]~output_o\;

ww_product(31) <= \product[31]~output_o\;

ww_product(32) <= \product[32]~output_o\;

ww_product(33) <= \product[33]~output_o\;

ww_product(34) <= \product[34]~output_o\;

ww_product(35) <= \product[35]~output_o\;

ww_product(36) <= \product[36]~output_o\;

ww_product(37) <= \product[37]~output_o\;

ww_product(38) <= \product[38]~output_o\;

ww_product(39) <= \product[39]~output_o\;

ww_product(40) <= \product[40]~output_o\;

ww_product(41) <= \product[41]~output_o\;

ww_product(42) <= \product[42]~output_o\;

ww_product(43) <= \product[43]~output_o\;

ww_product(44) <= \product[44]~output_o\;

ww_product(45) <= \product[45]~output_o\;

ww_product(46) <= \product[46]~output_o\;

ww_product(47) <= \product[47]~output_o\;

ww_product(48) <= \product[48]~output_o\;

ww_product(49) <= \product[49]~output_o\;

ww_product(50) <= \product[50]~output_o\;

ww_product(51) <= \product[51]~output_o\;

ww_product(52) <= \product[52]~output_o\;

ww_product(53) <= \product[53]~output_o\;

ww_product(54) <= \product[54]~output_o\;

ww_product(55) <= \product[55]~output_o\;

ww_product(56) <= \product[56]~output_o\;

ww_product(57) <= \product[57]~output_o\;

ww_product(58) <= \product[58]~output_o\;

ww_product(59) <= \product[59]~output_o\;

ww_product(60) <= \product[60]~output_o\;

ww_product(61) <= \product[61]~output_o\;

ww_product(62) <= \product[62]~output_o\;

ww_product(63) <= \product[63]~output_o\;

ww_load_con <= \load_con~output_o\;

ww_add_con <= \add_con~output_o\;

ww_shift_con <= \shift_con~output_o\;

ww_count_out(0) <= \count_out[0]~output_o\;

ww_count_out(1) <= \count_out[1]~output_o\;

ww_count_out(2) <= \count_out[2]~output_o\;

ww_count_out(3) <= \count_out[3]~output_o\;

ww_count_out(4) <= \count_out[4]~output_o\;

ww_count_out(5) <= \count_out[5]~output_o\;

ww_count_out(6) <= \count_out[6]~output_o\;

ww_count_out(7) <= \count_out[7]~output_o\;

ww_count_out(8) <= \count_out[8]~output_o\;

ww_count_out(9) <= \count_out[9]~output_o\;

ww_count_out(10) <= \count_out[10]~output_o\;

ww_count_out(11) <= \count_out[11]~output_o\;

ww_count_out(12) <= \count_out[12]~output_o\;

ww_count_out(13) <= \count_out[13]~output_o\;

ww_count_out(14) <= \count_out[14]~output_o\;

ww_count_out(15) <= \count_out[15]~output_o\;

ww_count_out(16) <= \count_out[16]~output_o\;

ww_count_out(17) <= \count_out[17]~output_o\;

ww_count_out(18) <= \count_out[18]~output_o\;

ww_count_out(19) <= \count_out[19]~output_o\;

ww_count_out(20) <= \count_out[20]~output_o\;

ww_count_out(21) <= \count_out[21]~output_o\;

ww_count_out(22) <= \count_out[22]~output_o\;

ww_count_out(23) <= \count_out[23]~output_o\;

ww_count_out(24) <= \count_out[24]~output_o\;

ww_count_out(25) <= \count_out[25]~output_o\;

ww_count_out(26) <= \count_out[26]~output_o\;

ww_count_out(27) <= \count_out[27]~output_o\;

ww_count_out(28) <= \count_out[28]~output_o\;

ww_count_out(29) <= \count_out[29]~output_o\;

ww_count_out(30) <= \count_out[30]~output_o\;

ww_count_out(31) <= \count_out[31]~output_o\;

ww_adder_result(0) <= \adder_result[0]~output_o\;

ww_adder_result(1) <= \adder_result[1]~output_o\;

ww_adder_result(2) <= \adder_result[2]~output_o\;

ww_adder_result(3) <= \adder_result[3]~output_o\;

ww_adder_result(4) <= \adder_result[4]~output_o\;

ww_adder_result(5) <= \adder_result[5]~output_o\;

ww_adder_result(6) <= \adder_result[6]~output_o\;

ww_adder_result(7) <= \adder_result[7]~output_o\;

ww_adder_result(8) <= \adder_result[8]~output_o\;

ww_adder_result(9) <= \adder_result[9]~output_o\;

ww_adder_result(10) <= \adder_result[10]~output_o\;

ww_adder_result(11) <= \adder_result[11]~output_o\;

ww_adder_result(12) <= \adder_result[12]~output_o\;

ww_adder_result(13) <= \adder_result[13]~output_o\;

ww_adder_result(14) <= \adder_result[14]~output_o\;

ww_adder_result(15) <= \adder_result[15]~output_o\;

ww_adder_result(16) <= \adder_result[16]~output_o\;

ww_adder_result(17) <= \adder_result[17]~output_o\;

ww_adder_result(18) <= \adder_result[18]~output_o\;

ww_adder_result(19) <= \adder_result[19]~output_o\;

ww_adder_result(20) <= \adder_result[20]~output_o\;

ww_adder_result(21) <= \adder_result[21]~output_o\;

ww_adder_result(22) <= \adder_result[22]~output_o\;

ww_adder_result(23) <= \adder_result[23]~output_o\;

ww_adder_result(24) <= \adder_result[24]~output_o\;

ww_adder_result(25) <= \adder_result[25]~output_o\;

ww_adder_result(26) <= \adder_result[26]~output_o\;

ww_adder_result(27) <= \adder_result[27]~output_o\;

ww_adder_result(28) <= \adder_result[28]~output_o\;

ww_adder_result(29) <= \adder_result[29]~output_o\;

ww_adder_result(30) <= \adder_result[30]~output_o\;

ww_adder_result(31) <= \adder_result[31]~output_o\;
END structure;


